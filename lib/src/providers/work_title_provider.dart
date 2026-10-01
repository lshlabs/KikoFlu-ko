import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/work.dart';
import '../utils/work_title.dart';

export '../utils/work_title.dart';

final workTitleModeProvider =
    StateNotifierProvider<WorkTitleModeNotifier, WorkTitleMode>((ref) {
      return WorkTitleModeNotifier();
    });

final displayedWorkTitleProvider = Provider.family<String, Work>((ref, work) {
  return displayWorkTitle(work, ref.watch(workTitleModeProvider));
});

class WorkTitleModeNotifier extends StateNotifier<WorkTitleMode> {
  static const _key = 'work_title_mode';
  bool _changed = false;

  WorkTitleModeNotifier() : super(WorkTitleMode.metadata) {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    if (mounted && !_changed) state = parseWorkTitleMode(prefs.getString(_key));
  }

  Future<void> setMode(WorkTitleMode mode) async {
    _changed = true;
    state = mode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, mode.name);
  }
}
