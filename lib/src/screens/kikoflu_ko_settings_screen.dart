import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/auth_provider.dart';
import '../providers/kikoflu_ko_settings_provider.dart';
import '../providers/work_title_provider.dart';
import '../utils/snackbar_util.dart';
import '../widgets/settings_section.dart';
import '../widgets/settings_option_dialog.dart';
import '../widgets/radio_option_group.dart';
import '../widgets/liquid_glass_layout.dart';

class KikoFluKoSettingsScreen extends ConsumerStatefulWidget {
  const KikoFluKoSettingsScreen({super.key});

  @override
  ConsumerState<KikoFluKoSettingsScreen> createState() =>
      _KikoFluKoSettingsScreenState();
}

class _KikoFluKoSettingsScreenState
    extends ConsumerState<KikoFluKoSettingsScreen> {
  bool _savingLanguage = false;
  bool _reloading = false;

  Future<void> _setKoreanMetadata(bool enabled) async {
    setState(() => _savingLanguage = true);
    try {
      // Turning off Korean restores DLsite's Japanese collection language.
      await ref
          .read(kikoeruApiServiceProvider)
          .setMetadataLanguage(enabled ? 'ko-kr' : 'ja-jp');
      ref.invalidate(metadataLanguageProvider);
      await ref.read(metadataLanguageProvider.future);
      if (mounted) {
        SnackBarUtil.showSuccess(
          context,
          '수집 언어를 저장했습니다. 기존 작품은 서버에서 메타데이터를 갱신해 주세요.',
        );
      }
    } catch (_) {
      if (mounted) {
        SnackBarUtil.showError(context, '수집 언어를 저장하지 못했습니다. 서버 연결을 확인해 주세요.');
      }
    } finally {
      if (mounted) setState(() => _savingLanguage = false);
    }
  }

  void _showTitleMode() {
    showDialog<void>(
      context: context,
      builder: (context) => CommonOptionDialog<WorkTitleMode>(
        title: '작품목록 표시 방식',
        icon: Icons.title,
        value: ref.read(workTitleModeProvider),
        options: [
          for (final mode in WorkTitleMode.values)
            RadioOption(value: mode, title: Text(_titleModeLabel(mode))),
        ],
        onChanged: (mode) async {
          await ref.read(workTitleModeProvider.notifier).setMode(mode);
          return true;
        },
      ),
    );
  }

  String _titleModeLabel(WorkTitleMode mode) => switch (mode) {
    WorkTitleMode.metadata => 'DLsite 제목',
    WorkTitleMode.folder => '폴더명',
    WorkTitleMode.custom => '직접 지정한 제목',
  };

  Future<void> _reload() async {
    setState(() => _reloading = true);
    try {
      await ref.read(kikoeruDataReloadProvider)();
      if (mounted) {
        SnackBarUtil.showSuccess(context, 'Kikoeru에서 작품 데이터를 다시 불러왔습니다.');
      }
    } catch (_) {
      if (mounted) {
        SnackBarUtil.showError(context, '데이터를 불러오지 못했습니다. 서버 연결을 확인해 주세요.');
      }
    } finally {
      if (mounted) setState(() => _reloading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final official = ref.watch(kikoeruApiServiceProvider).isOfficialServer;
    final language = official ? null : ref.watch(metadataLanguageProvider);
    final titleMode = ref.watch(workTitleModeProvider);
    return SettingsSubpageScaffold(
      title: 'KikoFlu-ko 설정',
      body: ListView(
        padding: EdgeInsets.fromLTRB(
          16,
          16,
          16,
          16 + LiquidGlassDockScope.extentOf(context),
        ),
        children: [
          SettingsSectionList(
            children: [
              if (official)
                const SettingsListTile(
                  icon: Icons.translate,
                  title: '한국어 메타데이터 수집',
                  subtitle: '공식 서버에서는 수집 언어를 변경할 수 없습니다.',
                  enabled: false,
                )
              else
                language!.when(
                  data: (value) => SettingsSwitchTile(
                    icon: Icons.translate,
                    title: '한국어 메타데이터 수집',
                    subtitle: _savingLanguage
                        ? '저장 중…'
                        : '서버 공통 설정 · 끄면 일본어로 수집합니다. 기존 작품은 서버에서 메타데이터 갱신이 필요합니다.',
                    value: value == 'ko-kr',
                    enabled: !_savingLanguage && !_reloading,
                    onChanged: (enabled) => _setKoreanMetadata(enabled),
                  ),
                  loading: () => const SettingsListTile(
                    icon: Icons.translate,
                    title: '한국어 메타데이터 수집',
                    subtitle: '설정 불러오는 중…',
                    enabled: false,
                  ),
                  error: (_, _) => SettingsNavigationTile(
                    icon: Icons.translate,
                    title: '한국어 메타데이터 수집',
                    subtitle: '설정을 불러오지 못했습니다. 눌러서 다시 시도하세요.',
                    onTap: () => ref.invalidate(metadataLanguageProvider),
                  ),
                ),
              SettingsNavigationTile(
                icon: Icons.title,
                title: '작품목록 표시 방식',
                subtitle: _titleModeLabel(titleMode),
                onTap: _showTitleMode,
              ),
            ],
          ),
          const SizedBox(height: 16),
          SettingsSectionList(
            children: [
              SettingsListTile(
                icon: Icons.sync,
                title: 'Kikoeru에서 데이터 다시 불러오기',
                subtitle: _reloading
                    ? '불러오는 중…'
                    : '작품목록을 새로고침하고 저장된 작품 정보와 파일 목록을 갱신합니다.',
                enabled: !_reloading && !_savingLanguage,
                trailing: _reloading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.refresh),
                onTap: _reload,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
