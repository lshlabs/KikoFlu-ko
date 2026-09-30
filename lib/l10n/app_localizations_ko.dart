// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class SKo extends S {
  SKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'KikoFlu';

  @override
  String get navHome => '홈';

  @override
  String get navSearch => '검색';

  @override
  String get navMy => '내 콘텐츠';

  @override
  String get navSettings => '설정';

  @override
  String get offlineModeMessage =>
      '네트워크에 연결할 수 없어 오프라인 모드로 시작했습니다. 다운로드한 콘텐츠만 이용할 수 있습니다.';

  @override
  String get retry => '다시 시도';

  @override
  String get searchTypeKeyword => '키워드';

  @override
  String get searchTypeTag => '태그';

  @override
  String get searchTypeVa => '성우';

  @override
  String get searchTypeCircle => '서클';

  @override
  String get searchTypeRjNumber => 'RJ 번호';

  @override
  String get searchHintKeyword => '작품명이나 키워드 입력...';

  @override
  String get searchHintTag => '태그 입력...';

  @override
  String get searchHintVa => '성우 이름 입력...';

  @override
  String get searchHintCircle => '서클 이름 입력...';

  @override
  String get searchHintRjNumber => '번호 입력...';

  @override
  String get ageRatingAll => '전체';

  @override
  String get ageRatingGeneral => '전연령';

  @override
  String get ageRatingR15 => 'R-15';

  @override
  String get ageRatingAdult => '성인';

  @override
  String get salesRangeAll => '전체';

  @override
  String get sortRelease => '발매일';

  @override
  String get sortCreateAt => '추가일';

  @override
  String get sortCreateDate => '등록일';

  @override
  String get sortRating => '평점';

  @override
  String get sortReviewCount => '리뷰 수';

  @override
  String get sortRandom => '무작위';

  @override
  String get sortDlCount => '판매량';

  @override
  String get sortPrice => '가격';

  @override
  String get sortNsfw => '전연령';

  @override
  String get sortUpdatedAt => '표시일';

  @override
  String get sortAsc => '오름차순';

  @override
  String get sortDesc => '내림차순';

  @override
  String get sortOptions => '정렬 옵션';

  @override
  String get sortField => '정렬 기준';

  @override
  String get sortDirection => '정렬 순서';

  @override
  String get displayModeAll => '전체';

  @override
  String get displayModePopular => '인기';

  @override
  String get displayModeRecommended => '추천';

  @override
  String get subtitlePriorityHighest => '우선';

  @override
  String get subtitlePriorityLowest => '나중';

  @override
  String get translationSourceGoogle => 'Google 번역';

  @override
  String get translationSourceYoudao => 'Youdao 번역';

  @override
  String get translationSourceMicrosoft => 'Microsoft 번역';

  @override
  String get translationSourceLlm => 'LLM 번역';

  @override
  String get progressMarked => '표시함';

  @override
  String get progressListening => '듣는 중';

  @override
  String get progressListened => '들음';

  @override
  String get progressReplay => '다시 듣기';

  @override
  String get progressPostponed => '나중에 듣기';

  @override
  String get loginTitle => '로그인';

  @override
  String get register => '가입';

  @override
  String get addAccount => '계정 추가';

  @override
  String get registerAccount => '계정 등록';

  @override
  String get username => '사용자 이름';

  @override
  String get password => '비밀번호';

  @override
  String get serverAddress => '서버 주소';

  @override
  String get serverCookie => '서버 쿠키';

  @override
  String get login => '로그인';

  @override
  String get loginSuccess => '로그인했습니다';

  @override
  String get loginFailed => '로그인에 실패했습니다';

  @override
  String get registerFailed => '가입에 실패했습니다';

  @override
  String get usernameMinLength => '사용자 이름은 5자 이상이어야 합니다';

  @override
  String get passwordMinLength => '비밀번호는 5자 이상이어야 합니다';

  @override
  String accountAdded(String username) {
    return '계정 \"$username\"을(를) 추가했습니다';
  }

  @override
  String get testConnection => '연결 테스트';

  @override
  String get testing => '테스트 중...';

  @override
  String get enterServerAddressToTest => '연결을 테스트할 서버 주소를 입력하세요';

  @override
  String latencyMs(String ms) {
    return '${ms}ms';
  }

  @override
  String get connectionFailed => '연결에 실패했습니다';

  @override
  String get guestModeTitle => '게스트 모드 확인';

  @override
  String get guestModeMessage =>
      '게스트 모드에서는 일부 기능을 사용할 수 없습니다:\n\n• 작품 표시 및 평점 등록 불가\n• 플레이리스트 생성 불가\n• 재생 진행 상황 동기화 불가\n\n게스트 모드는 데모 계정으로 서버에 연결하며, 연결이 불안정할 수 있습니다.';

  @override
  String get continueGuestMode => '게스트 모드로 계속';

  @override
  String get guestAccountAdded => '게스트 계정을 추가했습니다';

  @override
  String get guestLoginFailed => '게스트 로그인에 실패했습니다';

  @override
  String get guestMode => '게스트 모드';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get close => '닫기';

  @override
  String get delete => '삭제';

  @override
  String get save => '저장';

  @override
  String get edit => '수정';

  @override
  String get add => '추가';

  @override
  String get create => '만들기';

  @override
  String get ok => '확인';

  @override
  String get search => '검색';

  @override
  String get filter => '필터';

  @override
  String get advancedFilter => '상세 필터';

  @override
  String get enterSearchContent => '검색어를 입력하세요';

  @override
  String get searchTag => '태그 검색...';

  @override
  String get minRating => '최저 평점';

  @override
  String minRatingStars(String stars) {
    return '별 $stars개';
  }

  @override
  String get searchHistory => '검색 기록';

  @override
  String get clearSearchHistory => '검색 기록 삭제';

  @override
  String get clearSearchHistoryConfirm => '검색 기록을 모두 삭제할까요?';

  @override
  String get clear => '지우기';

  @override
  String get searchHistoryCleared => '검색 기록을 삭제했습니다';

  @override
  String get noSearchHistory => '검색 기록이 없습니다';

  @override
  String get excludeMode => '제외';

  @override
  String get includeMode => '포함';

  @override
  String includeModeTapAgainHint(String searchType) {
    return '포함: $searchType (다시 누르면 제외로 전환)';
  }

  @override
  String get noResults => '검색 결과가 없습니다';

  @override
  String get loadFailed => '불러오지 못했습니다';

  @override
  String loadFailedWithError(String error) {
    return '불러오지 못했습니다: $error';
  }

  @override
  String get loading => '불러오는 중...';

  @override
  String get calculating => '계산 중...';

  @override
  String get getFailed => '가져오지 못했습니다';

  @override
  String get settingsTitle => '설정';

  @override
  String get accountManagement => '계정 관리';

  @override
  String get accountManagementSubtitle => '여러 계정을 관리하고 전환합니다';

  @override
  String get privacyMode => '프라이버시 모드';

  @override
  String get privacyModeEnabled => '사용 중 - 재생 정보가 숨겨집니다';

  @override
  String get privacyModeDisabled => '사용 안 함';

  @override
  String get permissionManagement => '권한 관리';

  @override
  String get permissionManagementSubtitle => '알림 및 백그라운드 실행 권한';

  @override
  String get desktopFloatingLyric => '데스크톱 플로팅 가사';

  @override
  String get floatingLyricEnabled => '사용 중 - 데스크톱에 가사가 표시됩니다';

  @override
  String get floatingLyricDisabled => '사용 안 함';

  @override
  String get floatingLyricTouch => '플로팅 가사 잠금';

  @override
  String get floatingLyricTouchEnabled => '잠금 해제 - 가사를 드래그하고 길게 눌러 잠급니다';

  @override
  String get floatingLyricTouchDisabled => '잠김 - 플로팅 가사를 길게 눌러 잠금을 해제합니다';

  @override
  String get floatingLyricClickThrough => '플로팅 가사 클릭 통과';

  @override
  String get floatingLyricClickThroughEnabled => '사용 중 - 플로팅 가사가 마우스 입력을 무시합니다';

  @override
  String get floatingLyricClickThroughDisabled =>
      '사용 안 함 - 플로팅 가사를 드래그할 수 있습니다';

  @override
  String get floatingFPS => 'FPS 표시';

  @override
  String get floatingFPSEnabled => '사용 중 - 플로팅 창 왼쪽 아래에 FPS가 표시됩니다';

  @override
  String get floatingFPSDisabled => '사용 안 함';

  @override
  String get floatingNetworkSpeed => '네트워크 속도 표시';

  @override
  String get floatingNetworkSpeedEnabled => '사용 중 - 플로팅 창 오른쪽 아래에 속도가 표시됩니다';

  @override
  String get floatingNetworkSpeedDisabled => '사용 안 함';

  @override
  String get styleSettings => '스타일 설정';

  @override
  String get styleSettingsSubtitle => '글꼴, 색상, 투명도 등을 설정합니다';

  @override
  String get downloadPath => '다운로드 경로';

  @override
  String get downloadPathSubtitle => '파일을 저장할 위치를 설정합니다';

  @override
  String get maxConcurrentDownloads => '동시 다운로드 수';

  @override
  String get maxConcurrentDownloadsSubtitle => '동시에 진행할 다운로드 수를 제한합니다';

  @override
  String get cacheManagement => '캐시 관리';

  @override
  String currentCache(String size) {
    return '현재 캐시: $size';
  }

  @override
  String get themeSettings => '테마 설정';

  @override
  String get themeSettingsSubtitle => '다크 모드, 테마 색상 등을 설정합니다';

  @override
  String get uiSettings => '화면 설정';

  @override
  String get uiSettingsSubtitle => '플레이어, 상세 페이지, 카드 등을 설정합니다';

  @override
  String get liquidGlassNavigation => '리퀴드 글래스 탐색 바';

  @override
  String get liquidGlassNavigationDesc =>
      '글래스 탐색 바와 미니 플레이어입니다. Apple OS 26 이상에서는 기본으로 사용합니다.';

  @override
  String get fallbackGlassTransparency => '리퀴드 글래스 투명도';

  @override
  String get fallbackGlassTransparencyDesc => '앱에서 표현하는 글래스 효과의 투명도를 조절합니다.';

  @override
  String get preferenceSettings => '환경 설정';

  @override
  String get preferenceSettingsSubtitle => '번역, 재생 및 네트워크 설정';

  @override
  String get aboutTitle => '정보';

  @override
  String get unknownVersion => '알 수 없음';

  @override
  String get licenseLoadFailed => 'LICENSE 파일을 불러오지 못했습니다';

  @override
  String get licenseEmpty => 'LICENSE 파일이 비어 있습니다';

  @override
  String get failedToLoadAbout => '앱 정보를 불러오지 못했습니다';

  @override
  String get newVersionFound => '새 버전 발견';

  @override
  String newVersionAvailable(String version, String current) {
    return '새 버전 $version을(를) 사용할 수 있습니다 (현재: $current)';
  }

  @override
  String get versionInfo => '버전 정보';

  @override
  String currentVersion(String version) {
    return '현재 버전: $version';
  }

  @override
  String get checkUpdate => '업데이트 확인';

  @override
  String get author => '개발자';

  @override
  String get projectRepo => '프로젝트 저장소';

  @override
  String get openSourceLicense => '오픈 소스 라이선스';

  @override
  String get cannotOpenLink => '링크를 열 수 없습니다';

  @override
  String openLinkFailed(String error) {
    return '링크를 열지 못했습니다: $error';
  }

  @override
  String foundNewVersion(String version) {
    return '새 버전 $version을(를) 찾았습니다';
  }

  @override
  String get view => '보기';

  @override
  String get alreadyLatestVersion => '최신 버전을 사용 중입니다';

  @override
  String get checkUpdateFailed => '업데이트를 확인하지 못했습니다. 네트워크 연결을 확인하세요';

  @override
  String get onlineMarks => '온라인 표시';

  @override
  String get historyRecord => '기록';

  @override
  String get playlists => '플레이리스트';

  @override
  String get downloaded => '다운로드됨';

  @override
  String get downloadTasks => '다운로드 작업';

  @override
  String get subtitleLibrary => '자막 보관함';

  @override
  String get all => '전체';

  @override
  String get marked => '표시함';

  @override
  String get listening => '듣는 중';

  @override
  String get listened => '들음';

  @override
  String get replayMark => '다시 듣기';

  @override
  String get postponed => '나중에 듣기';

  @override
  String get switchToSmallGrid => '작은 격자로 보기';

  @override
  String get switchToList => '목록으로 보기';

  @override
  String get switchToLargeGrid => '큰 격자로 보기';

  @override
  String get sort => '정렬';

  @override
  String get noPlayHistory => '재생 기록이 없습니다';

  @override
  String get clearHistory => '기록 삭제';

  @override
  String get clearHistoryTitle => '기록 삭제';

  @override
  String get clearHistoryConfirm => '재생 기록을 모두 삭제할까요? 이 작업은 되돌릴 수 없습니다.';

  @override
  String get popularNoSort => '인기 모드에서는 정렬할 수 없습니다';

  @override
  String get recommendedNoSort => '추천 모드에서는 정렬할 수 없습니다';

  @override
  String get showAllWorks => '모든 작품 표시';

  @override
  String get showOnlySubtitled => '자막이 있는 작품만 표시';

  @override
  String selectedCount(int count) {
    return '$count개 선택';
  }

  @override
  String get selectAll => '모두 선택';

  @override
  String get deselectAll => '선택 해제';

  @override
  String get select => '선택';

  @override
  String get noDownloadTasks => '다운로드 작업이 없습니다';

  @override
  String nFiles(int count) {
    return '파일 $count개';
  }

  @override
  String errorWithMessage(String error) {
    return '오류: $error';
  }

  @override
  String get pause => '일시 정지';

  @override
  String get resume => '계속';

  @override
  String get deletionConfirmTitle => '삭제 확인';

  @override
  String deletionConfirmMessage(int count) {
    return '선택한 다운로드 작업 $count개를 삭제할까요? 다운로드한 파일도 함께 삭제됩니다.';
  }

  @override
  String deletedNFiles(int count) {
    return '파일 $count개를 삭제했습니다';
  }

  @override
  String get downloadStatusPending => '대기 중';

  @override
  String get downloadStatusDownloading => '다운로드 중';

  @override
  String get downloadStatusCompleted => '완료';

  @override
  String get downloadStatusFailed => '실패';

  @override
  String get downloadStatusPaused => '일시 정지';

  @override
  String translationFailed(String error) {
    return '번역에 실패했습니다: $error';
  }

  @override
  String copiedToClipboard(String label, String text) {
    return '$label 복사됨: $text';
  }

  @override
  String get loadingFileList => '파일 목록을 불러오는 중...';

  @override
  String loadFileListFailed(String error) {
    return '파일 목록을 불러오지 못했습니다: $error';
  }

  @override
  String get playlistTitle => '플레이리스트';

  @override
  String get noAudioPlaying => '재생 중인 오디오가 없습니다';

  @override
  String get playbackSpeed => '재생 속도';

  @override
  String get backward10s => '10초 뒤로';

  @override
  String get forward10s => '10초 앞으로';

  @override
  String get sleepTimer => '취침 타이머';

  @override
  String get repeatMode => '반복 모드';

  @override
  String get repeatOff => '사용 안 함';

  @override
  String get repeatOne => '한 곡 반복';

  @override
  String get repeatAll => '전체 반복';

  @override
  String get addMark => '표시 추가';

  @override
  String get viewDetail => '상세 정보';

  @override
  String get volume => '음량';

  @override
  String get sleepTimerTitle => '취침 타이머';

  @override
  String get aboutToStop => '종료 예정';

  @override
  String get remainingTime => '남은 시간';

  @override
  String get finishCurrentTrack => '현재 트랙이 끝나면 정지';

  @override
  String addMinutes(int min) {
    return '+$min분';
  }

  @override
  String get cancelTimer => '타이머 취소';

  @override
  String get duration => '재생 시간';

  @override
  String get specifyTime => '시간 지정';

  @override
  String get selectTimerDuration => '타이머 시간을 선택하세요';

  @override
  String get selectStopTime => '재생을 멈출 시간을 선택하세요';

  @override
  String get markWork => '작품 표시';

  @override
  String get addToPlaylist => '플레이리스트에 추가';

  @override
  String get remove => '삭제';

  @override
  String get createPlaylist => '플레이리스트 만들기';

  @override
  String get addPlaylist => '플레이리스트 추가';

  @override
  String get playlistName => '플레이리스트 이름';

  @override
  String get enterPlaylistName => '이름 입력';

  @override
  String get privacySetting => '공개 범위';

  @override
  String get playlistDescription => '설명 (선택 사항)';

  @override
  String get addDescription => '설명 추가';

  @override
  String get enterPlaylistNameWarning => '플레이리스트 이름을 입력하세요';

  @override
  String get enterPlaylistLink => '플레이리스트 링크를 입력하세요';

  @override
  String get switchAccountTitle => '계정 전환';

  @override
  String switchAccountConfirm(String username) {
    return '계정 \"$username\"으로 전환할까요?';
  }

  @override
  String switchedToAccount(String username) {
    return '계정 \"$username\"으로 전환했습니다';
  }

  @override
  String get switchFailed => '계정 정보를 확인하세요. 계정 전환에 실패했습니다';

  @override
  String switchFailedWithError(String error) {
    return '계정 전환에 실패했습니다: $error';
  }

  @override
  String get noAccounts => '계정이 없습니다';

  @override
  String get tapToAddAccount => '오른쪽 아래 버튼을 눌러 계정을 추가하세요';

  @override
  String get currentAccount => '현재 계정';

  @override
  String get switchAction => '전환';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String deleteAccountConfirm(String username) {
    return '계정 \"$username\"을(를) 삭제할까요? 이 작업은 되돌릴 수 없습니다.';
  }

  @override
  String get accountDeleted => '계정을 삭제했습니다';

  @override
  String deletionFailedWithError(String error) {
    return '삭제에 실패했습니다: $error';
  }

  @override
  String get subtitleLibraryPriority => '자막 보관함 우선순위';

  @override
  String get selectSubtitlePriority => '자동으로 불러올 자막의 우선순위를 선택하세요:';

  @override
  String get subtitlePriorityHighestDesc =>
      '자막 보관함을 먼저 검색한 다음 온라인 및 다운로드 항목을 검색합니다';

  @override
  String get subtitlePriorityLowestDesc =>
      '온라인 및 다운로드 항목을 먼저 검색한 다음 자막 보관함을 검색합니다';

  @override
  String get defaultSortSettings => '기본 정렬 설정';

  @override
  String get defaultSortUpdated => '기본 정렬을 업데이트했습니다';

  @override
  String get translationSourceSettings => '번역 서비스 설정';

  @override
  String get selectTranslationProvider => '번역 서비스를 선택하세요:';

  @override
  String get translationTargetLanguage => '번역 대상 언어';

  @override
  String get autoSaveTranslatedLyrics => '번역한 가사 자동 저장';

  @override
  String get autoSaveTranslatedLyricsDesc =>
      '번역을 자막 보관함에 저장합니다. 끄면 현재 재생 중에만 표시됩니다.';

  @override
  String get selectTranslationTargetLanguage => '번역할 언어를 선택하세요:';

  @override
  String get translationLanguageFollowApp => '앱 언어 따르기';

  @override
  String get translationLanguageZhHans => '중국어 간체';

  @override
  String get translationLanguageZhHant => '중국어 번체';

  @override
  String get translationLanguageEnglish => '영어';

  @override
  String get translationLanguageJapanese => '일본어';

  @override
  String get translationLanguageRussian => '러시아어';

  @override
  String get translationLanguageCustom => '직접 입력';

  @override
  String get translationCustomTargetLanguage => '번역 대상 언어 직접 입력';

  @override
  String get translationCustomLanguageHint => '언어 이름 (예: Korean)';

  @override
  String translationCustomLanguageLabel(String value) {
    return '직접 입력: $value';
  }

  @override
  String get translationCustomTargetRequiresLlm => 'LLM 번역에서만 사용할 수 있습니다';

  @override
  String get needsConfiguration => '설정 필요';

  @override
  String get llmTranslation => 'LLM 번역';

  @override
  String get goToConfigure => '설정하기';

  @override
  String get subtitlePrioritySettingSubtitle => '자막 보관함 우선순위';

  @override
  String get defaultSortSettingTitle => '홈 화면 기본 정렬';

  @override
  String get translationSource => '번역 서비스';

  @override
  String get llmSettings => 'LLM 설정';

  @override
  String get llmSettingsSubtitle => 'API URL, 프로토콜, 키 및 모델';

  @override
  String get audioFormatPreference => '오디오 형식 우선순위';

  @override
  String get audioFormatSubtitle => '오디오 형식별 우선순위';

  @override
  String get audioTapPlaylistMode => '오디오 추가 방식';

  @override
  String get selectAudioTapPlaylistMode => '오디오를 눌렀을 때 플레이리스트에 추가할 방식을 선택하세요:';

  @override
  String get audioTapPlaylistModeReplace => '바꾸기';

  @override
  String get audioTapPlaylistModeReplaceDescription =>
      '현재 플레이리스트를 선택한 파일이 있는 폴더의 재생 가능한 오디오 파일로 바꿉니다.';

  @override
  String get audioTapPlaylistModeAppendDirectory => '이어 붙이기';

  @override
  String get audioTapPlaylistModeAppendDirectoryDescription =>
      '선택한 파일이 있는 폴더의 재생 가능한 오디오 파일을 추가합니다. 이미 있는 트랙은 중복으로 추가하지 않습니다.';

  @override
  String get audioTapPlaylistModeAppendSingle => '오디오 한 곡 추가';

  @override
  String get audioTapPlaylistModeAppendSingleDescription =>
      '선택한 오디오 파일만 추가합니다. 이미 있는 트랙은 중복으로 추가하지 않습니다.';

  @override
  String get audioTapPlaylistModeAppendChip => '이어 붙이기';

  @override
  String get audioTapPlaylistModeAppendSingleChip => '오디오 한 곡 추가';

  @override
  String get preloadNextTitle => '다음 트랙 미리 불러오기';

  @override
  String get preloadNextSubtitle =>
      '현재 트랙이 끝나기 전에 다음 트랙을 캐시에 미리 불러와 재생이 끊기지 않도록 합니다';

  @override
  String get selectPreloadThreshold => '현재 트랙의 남은 시간이 다음 기준보다 짧아지면 미리 불러옵니다:';

  @override
  String get preloadOptionOff => '사용 안 함';

  @override
  String preloadOptionSeconds(int seconds) {
    return '$seconds초';
  }

  @override
  String get preloadOptionCustom => '사용자 지정';

  @override
  String get preloadCustomInputTitle => '미리 불러올 시간 설정';

  @override
  String get preloadCustomInputHint => '초 (1~300)';

  @override
  String get preloadCustomInputRangeError => '1에서 300 사이의 숫자를 입력하세요';

  @override
  String preloadCustomValueLabel(int value) {
    return '$value초';
  }

  @override
  String get keepScreenAwake => '화면 켜짐 유지';

  @override
  String get keepScreenAwakeDesc => '재생 중 화면이 꺼지지 않도록 합니다';

  @override
  String get audioHaptics => '오디오 햅틱 (베타)';

  @override
  String get audioHapticsDesc => '앱이 열린 동안 다운로드한 오디오에 맞춰 진동합니다';

  @override
  String get audioHapticsIntensity => '강도';

  @override
  String get audioGain => '전체 오디오 증폭';

  @override
  String get audioGainDesc =>
      '0 dB는 원본 음량입니다. 지나치게 높이면 소리가 왜곡되거나 청력이 손상될 수 있습니다';

  @override
  String get audioGainAttenuationDesc => '모든 오디오 음량을 낮춥니다. 0 dB는 원본 음량입니다';

  @override
  String get audioGainPassthroughDesc => '오디오 패스스루를 사용 중일 때는 사용할 수 없습니다';

  @override
  String get blockingSettings => '차단 설정';

  @override
  String get blockingSettingsSubtitle => '차단한 태그, 성우, 서클을 관리합니다';

  @override
  String get audioPassthrough => '오디오 패스스루 (베타)';

  @override
  String get audioPassthroughDescWindows => 'WASAPI 독점 출력을 사용합니다 (재시작 필요)';

  @override
  String get audioPassthroughDescMac => 'CoreAudio 독점 출력을 사용합니다';

  @override
  String get audioPassthroughDisableDesc => '오디오 패스스루 모드를 끕니다';

  @override
  String get warning => '주의';

  @override
  String get audioPassthroughWarning =>
      '이 기능은 충분히 테스트되지 않아 오디오가 예상과 다르게 출력될 수 있습니다. 사용 설정할까요?';

  @override
  String get exclusiveModeEnabled => '독점 모드를 사용 설정했습니다 (재시작 필요)';

  @override
  String get audioPassthroughEnabled => '오디오 패스스루 모드를 사용 설정했습니다';

  @override
  String get audioPassthroughDisabled => '오디오 패스스루 모드를 사용 중지했습니다';

  @override
  String get tagVoteSupport => '찬성';

  @override
  String get tagVoteOppose => '반대';

  @override
  String get tagVoted => '투표함';

  @override
  String get votedSupport => '찬성에 투표함';

  @override
  String get votedOppose => '반대에 투표함';

  @override
  String get voteCancelled => '투표를 취소했습니다';

  @override
  String voteFailed(String error) {
    return '투표에 실패했습니다: $error';
  }

  @override
  String get blockThisTag => '이 태그 차단';

  @override
  String get copyTag => '태그 복사';

  @override
  String get addTag => '태그 추가';

  @override
  String loadTagsFailed(String error) {
    return '태그를 불러오지 못했습니다: $error';
  }

  @override
  String get selectAtLeastOneTag => '태그를 하나 이상 선택하세요';

  @override
  String get tagSubmitSuccess => '태그를 제출했습니다. 서버에서 처리 중입니다';

  @override
  String get bindEmailFirst => '먼저 www.asmr.one에서 이메일을 연동하세요';

  @override
  String selectedNTags(int count) {
    return '태그 $count개 선택:';
  }

  @override
  String get noMatchingTags => '일치하는 태그가 없습니다';

  @override
  String get loadFailedRetry => '불러오지 못했습니다. 눌러서 다시 시도하세요';

  @override
  String get refresh => '새로고침';

  @override
  String get playlistPrivacyPrivate => '비공개';

  @override
  String get playlistPrivacyUnlisted => '링크 공개';

  @override
  String get playlistPrivacyPublic => '전체 공개';

  @override
  String get systemPlaylistMarked => '내가 표시한 작품';

  @override
  String get systemPlaylistLiked => '내가 좋아요한 작품';

  @override
  String totalNWorks(int count) {
    return '작품 $count개';
  }

  @override
  String pageNOfTotal(int current, int total) {
    return '$current/$total페이지';
  }

  @override
  String get translateTitle => '번역';

  @override
  String get translateDescription => '설명 번역';

  @override
  String get translating => '번역 중...';

  @override
  String translationFallbackNotice(String source) {
    return '번역에 실패해 $source 서비스로 자동 전환했습니다';
  }

  @override
  String get tagLabel => '태그';

  @override
  String get vaLabel => '성우';

  @override
  String get circleLabel => '서클';

  @override
  String get releaseDate => '발매일';

  @override
  String get ratingLabel => '평점';

  @override
  String get salesLabel => '판매량';

  @override
  String get priceLabel => '가격';

  @override
  String get durationLabel => '재생 시간';

  @override
  String get ageRatingLabel => '연령 등급';

  @override
  String get hasSubtitle => '자막 있음';

  @override
  String get noSubtitle => '자막 없음';

  @override
  String get description => '설명';

  @override
  String get fileList => '파일 목록';

  @override
  String get series => '시리즈';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsLanguageSubtitle => '앱 표시 언어를 변경합니다';

  @override
  String get languageSystem => '시스템 설정 따르기';

  @override
  String get languageZh => '简体中文';

  @override
  String get languageZhTw => '繁體中文';

  @override
  String get languageEn => 'English';

  @override
  String get languageJa => '日本語';

  @override
  String get languageRu => 'Русский';

  @override
  String get languageKo => '한국어';

  @override
  String get themeModeDark => '다크 모드';

  @override
  String get themeModeLight => '라이트 모드';

  @override
  String get themeModeSystem => '시스템 설정 따르기';

  @override
  String get colorSchemeOceanBlue => '바다색';

  @override
  String get colorSchemeForestGreen => '숲속 초록';

  @override
  String get colorSchemeSunsetOrange => '노을 주황';

  @override
  String get colorSchemeLavenderPurple => '라벤더 보라';

  @override
  String get colorSchemeSakuraPink => '벚꽃 분홍';

  @override
  String get colorSchemeDynamic => '동적 색상';

  @override
  String get noData => '데이터가 없습니다';

  @override
  String get unknownError => '알 수 없는 오류';

  @override
  String get networkError => '네트워크 오류';

  @override
  String get timeout => '요청 시간 초과';

  @override
  String get playAll => '모두 재생';

  @override
  String get download => '다운로드';

  @override
  String get downloadAll => '모두 다운로드';

  @override
  String get downloading => '다운로드 중';

  @override
  String get downloadComplete => '다운로드 완료';

  @override
  String get downloadFailed => '다운로드에 실패했습니다';

  @override
  String get startDownload => '다운로드 시작 중';

  @override
  String get confirmDeleteDownload => '이 다운로드를 삭제할까요? 다운로드한 파일도 함께 삭제됩니다.';

  @override
  String get deletedSuccessfully => '삭제했습니다';

  @override
  String get scanSubtitleLibrary => '자막 보관함 검색';

  @override
  String get scanning => '검색 중...';

  @override
  String get scanComplete => '검색 완료';

  @override
  String get noSubtitleFiles => '자막 파일이 없습니다';

  @override
  String subtitleFilesFound(int count) {
    return '자막 파일 $count개를 찾았습니다';
  }

  @override
  String get selectDirectory => '폴더 선택';

  @override
  String get privacyModeSettings => '프라이버시 모드 설정';

  @override
  String get blurCover => '표지 흐리게 하기';

  @override
  String get maskTitle => '제목 가리기';

  @override
  String get customTitle => '사용자 지정 제목';

  @override
  String get privacyModeDesc => '시스템 알림과 미디어 컨트롤에서 재생 정보를 숨깁니다';

  @override
  String get audioFormatSettingsTitle => '오디오 형식 설정';

  @override
  String get preferredFormat => '선호하는 형식';

  @override
  String get cacheSizeLimit => '캐시 용량 제한';

  @override
  String get llmApiUrl => 'API URL';

  @override
  String get llmApiKey => 'API 키';

  @override
  String get llmModel => '모델';

  @override
  String get llmPrompt => '시스템 프롬프트';

  @override
  String get llmConcurrency => '동시 요청 수';

  @override
  String get llmTestTranslation => '번역 테스트';

  @override
  String get llmTestSuccess => '테스트에 성공했습니다';

  @override
  String get llmTestFailed => '테스트에 실패했습니다';

  @override
  String get subtitleTimingAdjustment => '자막 싱크 조정';

  @override
  String get playerLyricStyle => '플레이어 가사 스타일';

  @override
  String get floatingLyricStyle => '플로팅 가사 스타일';

  @override
  String get fontSize => '글자 크기';

  @override
  String get fontColor => '글자 색상';

  @override
  String get backgroundColor => '배경색';

  @override
  String get transparency => '투명도';

  @override
  String get windowSize => '창 크기';

  @override
  String get playerButtonSettings => '플레이어 버튼 설정';

  @override
  String get showButton => '버튼 표시';

  @override
  String get buttonOrder => '버튼 순서';

  @override
  String get workCardDisplaySettings => '작품 카드 표시 설정';

  @override
  String get showTags => '태그 표시';

  @override
  String get showVa => '성우 표시';

  @override
  String get showRating => '평점 표시';

  @override
  String get showPrice => '가격 표시';

  @override
  String get cardSize => '카드 크기';

  @override
  String get compact => '작게';

  @override
  String get medium => '보통';

  @override
  String get full => '전체';

  @override
  String get workDetailDisplaySettings => '작품 상세 정보 표시 설정';

  @override
  String get infoSectionVisibility => '정보 항목 표시';

  @override
  String get imageSize => '이미지 크기';

  @override
  String get showMetadata => '메타데이터 표시';

  @override
  String get relatedRecommendations => '관련 작품';

  @override
  String get myTabsDisplaySettings => '내 정보 탭 설정';

  @override
  String get showTab => '탭 표시';

  @override
  String get tabOrder => '탭 순서';

  @override
  String get blockedItems => '차단 항목';

  @override
  String get blockedTags => '차단한 태그';

  @override
  String get blockedVas => '차단한 성우';

  @override
  String get blockedCircles => '차단한 서클';

  @override
  String get unblock => '차단 해제';

  @override
  String get noBlockedItems => '차단 항목이 없습니다';

  @override
  String get clearCache => '캐시 삭제';

  @override
  String get clearCacheConfirm => '캐시를 모두 삭제할까요?';

  @override
  String get cacheCleared => '캐시를 삭제했습니다';

  @override
  String get imagePreview => '이미지 미리보기';

  @override
  String get saveImage => '이미지 저장';

  @override
  String get imageSaved => '이미지를 저장했습니다';

  @override
  String get saveImageFailed => '저장에 실패했습니다';

  @override
  String get logout => '로그아웃';

  @override
  String get logoutConfirm => '로그아웃할까요?';

  @override
  String get openInBrowser => '브라우저에서 열기';

  @override
  String get copyLink => '링크 복사';

  @override
  String get linkCopied => '링크를 복사했습니다';

  @override
  String get ratingDistribution => '평점 분포';

  @override
  String reviewsCount(int count) {
    return '리뷰 $count개';
  }

  @override
  String ratingsCount(int count) {
    return '평점 $count개';
  }

  @override
  String get myReviews => '내 리뷰';

  @override
  String get noReviews => '리뷰가 없습니다';

  @override
  String get writeReview => '리뷰 작성';

  @override
  String get editReview => '리뷰 수정';

  @override
  String get deleteReview => '리뷰 삭제';

  @override
  String get deleteReviewConfirm => '이 리뷰를 삭제할까요?';

  @override
  String get reviewDeleted => '리뷰를 삭제했습니다';

  @override
  String get reviewContent => '리뷰 내용';

  @override
  String get enterReviewContent => '리뷰 내용을 입력하세요...';

  @override
  String get submitReview => '제출';

  @override
  String get reviewSubmitted => '리뷰를 제출했습니다';

  @override
  String reviewFailed(String error) {
    return '리뷰 제출에 실패했습니다: $error';
  }

  @override
  String get notificationPermission => '알림 권한';

  @override
  String get mediaPermission => '미디어 라이브러리 권한';

  @override
  String get storagePermission => '저장소 권한';

  @override
  String get granted => '허용됨';

  @override
  String get denied => '거부됨';

  @override
  String get requestPermission => '요청';

  @override
  String get localDownloads => '로컬 다운로드';

  @override
  String get offlinePlayback => '오프라인 재생';

  @override
  String get noDownloadedWorks => '다운로드한 작품이 없습니다';

  @override
  String get updateAvailable => '업데이트 있음';

  @override
  String get ignoreThisVersion => '이번 버전 건너뛰기';

  @override
  String get remindLater => '나중에 알림';

  @override
  String get updateNow => '지금 업데이트';

  @override
  String get fetchFailed => '가져오지 못했습니다';

  @override
  String operationFailedWithError(String error) {
    return '작업에 실패했습니다: $error';
  }

  @override
  String get aboutSubtitle => '업데이트와 라이선스 등을 확인합니다';

  @override
  String get currentCacheSize => '현재 캐시 용량';

  @override
  String cacheLimitLabelMB(int size) {
    return '한도: ${size}MB';
  }

  @override
  String get cacheUsagePercent => '사용량';

  @override
  String get autoCleanTitle => '자동 정리 안내';

  @override
  String get autoCleanDescription =>
      '• 캐시가 한도를 초과하면 자동으로 정리합니다\n• 캐시가 한도의 80%가 될 때까지 삭제합니다\n• 최근에 사용하지 않은 항목부터 삭제합니다 (LRU)';

  @override
  String get autoCleanDescriptionShort =>
      '• 캐시가 한도를 초과하면 자동으로 정리합니다\n• 캐시가 한도의 80%가 될 때까지 삭제합니다';

  @override
  String get confirmClear => '삭제 확인';

  @override
  String get confirmClearCacheMessage => '캐시를 모두 삭제할까요? 이 작업은 되돌릴 수 없습니다.';

  @override
  String clearCacheFailedWithError(String error) {
    return '캐시를 삭제하지 못했습니다: $error';
  }

  @override
  String get hasNewVersion => '새 버전';

  @override
  String get themeMode => '테마 모드';

  @override
  String get colorTheme => '테마 색상';

  @override
  String get themePreview => '테마 미리보기';

  @override
  String get themeModeSystemDesc => '시스템의 다크 모드 설정을 따릅니다';

  @override
  String get themeModeLightDesc => '항상 라이트 테마를 사용합니다';

  @override
  String get themeModeDarkDesc => '항상 다크 테마를 사용합니다';

  @override
  String get colorSchemeOceanBlueDesc => '파랑, 파랑, 또 파랑!';

  @override
  String get colorSchemeSakuraPinkDesc => '( ゜- ゜)つロ 건배~';

  @override
  String get colorSchemeSunsetOrangeDesc => '테마 색상은 필수 ✍🏻✍🏻✍🏻';

  @override
  String get colorSchemeLavenderPurpleDesc => '친구, 친구...';

  @override
  String get colorSchemeForestGreenDesc => '초록, 초록, 또 초록';

  @override
  String get colorSchemeDynamicDesc => '시스템 배경화면 색상을 사용합니다 (Android 12 이상)';

  @override
  String get primaryContainer => '기본 컨테이너';

  @override
  String get secondaryContainer => '보조 컨테이너';

  @override
  String get tertiaryContainer => '세 번째 컨테이너';

  @override
  String get surfaceColor => '표면 색상';

  @override
  String get playerButtonSettingsSubtitle => '플레이어 버튼 순서';

  @override
  String get playerLyricStyleSubtitle => '미니 및 전체 화면 가사 스타일';

  @override
  String get workDetailDisplaySubtitle => '상세 페이지 콘텐츠';

  @override
  String get workCardDisplaySubtitle => '작품 카드 콘텐츠';

  @override
  String get myTabsDisplaySubtitle => '내 정보에 표시할 탭';

  @override
  String get pageSizeSettings => '페이지당 항목 수';

  @override
  String pageSizeCurrent(int size) {
    return '페이지당 $size개';
  }

  @override
  String currentSettingLabel(String value) {
    return '현재 설정: $value';
  }

  @override
  String setToValue(String value) {
    return '설정값: $value';
  }

  @override
  String get llmConfigRequiredMessage =>
      'LLM 번역을 사용하려면 API 키가 필요합니다. 먼저 설정에서 입력하세요.';

  @override
  String get autoSwitchedToLlm => 'LLM 번역으로 자동 전환했습니다';

  @override
  String get translationDescGoogle => 'Google 서비스를 사용합니다';

  @override
  String get translationDescYoudao => '현재 네트워크를 사용합니다';

  @override
  String get translationDescMicrosoft => '현재 네트워크를 사용합니다';

  @override
  String get translationDescLlm => 'OpenAI 호환 API가 필요합니다';

  @override
  String get audioPassthroughDescAndroid => 'AC3/DTS 오디오 원본을 외부 디코더로 전송합니다';

  @override
  String get permissionExplanation => '권한 안내';

  @override
  String get backgroundRunningPermission => '백그라운드 실행 권한';

  @override
  String get notificationPermissionDesc =>
      '미디어 재생 알림을 표시하고 잠금 화면과 알림 창에서 재생을 제어하는 데 사용합니다.';

  @override
  String get backgroundRunningPermissionDesc =>
      '백그라운드에서 오디오가 계속 재생되도록 배터리 최적화 대상에서 제외합니다.';

  @override
  String get notificationGrantedStatus => '허용됨 - 재생 알림과 제어 버튼을 표시할 수 있습니다';

  @override
  String get notificationDeniedStatus => '허용되지 않음 - 눌러서 권한을 요청하세요';

  @override
  String get backgroundGrantedStatus => '허용됨 - 앱이 백그라운드에서 계속 실행됩니다';

  @override
  String get backgroundDeniedStatus => '허용되지 않음 - 눌러서 권한을 요청하세요';

  @override
  String get notificationPermissionGranted => '알림 권한을 허용했습니다';

  @override
  String get notificationPermissionDenied => '알림 권한이 거부되었습니다';

  @override
  String requestNotificationFailed(String error) {
    return '알림 권한을 요청하지 못했습니다: $error';
  }

  @override
  String get backgroundPermissionGranted => '백그라운드 실행 권한을 허용했습니다';

  @override
  String get backgroundPermissionDenied => '백그라운드 실행 권한이 거부되었습니다';

  @override
  String requestBackgroundFailed(String error) {
    return '백그라운드 실행 권한을 요청하지 못했습니다: $error';
  }

  @override
  String permissionRequired(String permission) {
    return '$permission 필요';
  }

  @override
  String permissionPermanentlyDenied(String permission) {
    return '$permission이(가) 영구적으로 거부되었습니다. 시스템 설정에서 직접 허용하세요.';
  }

  @override
  String get openSettings => '설정 열기';

  @override
  String get permissionsAndroidOnly => '권한 관리는 Android에서만 사용할 수 있습니다';

  @override
  String get permissionsNotNeeded => '다른 플랫폼에서는 권한을 직접 관리할 필요가 없습니다';

  @override
  String get refreshPermissionStatus => '권한 상태 새로고침';

  @override
  String deleteFileConfirm(String fileName) {
    return '\"$fileName\" 파일을 삭제할까요?';
  }

  @override
  String deleteSelectedFilesConfirm(int count) {
    return '선택한 파일 $count개를 삭제할까요?';
  }

  @override
  String get deleted => '삭제됨';

  @override
  String cannotOpenFolder(String path) {
    return '폴더를 열 수 없습니다: $path';
  }

  @override
  String openFolderFailed(String error) {
    return '폴더를 열지 못했습니다: $error';
  }

  @override
  String get reloadingFromDisk => '디스크에서 다시 불러오는 중...';

  @override
  String get refreshComplete => '새로고침 완료';

  @override
  String refreshFailed(String error) {
    return '새로고침에 실패했습니다: $error';
  }

  @override
  String deleteSelectedWorksConfirm(int count) {
    return '선택한 작품 $count개를 삭제할까요?';
  }

  @override
  String partialDeleteFailed(String error) {
    return '일부 항목을 삭제하지 못했습니다: $error';
  }

  @override
  String deletedNOfTotal(int success, int total) {
    return '작업 $total개 중 $success개를 삭제했습니다';
  }

  @override
  String deleteFailedWithError(String error) {
    return '삭제에 실패했습니다: $error';
  }

  @override
  String get noWorkMetadataForOffline => '저장된 작품 정보가 없어 오프라인에서 볼 수 없습니다';

  @override
  String openWorkDetailFailed(String error) {
    return '작품 상세 정보를 열지 못했습니다: $error';
  }

  @override
  String get noLocalDownloads => '로컬 다운로드 항목이 없습니다';

  @override
  String get exitSelection => '선택 모드 종료';

  @override
  String get reload => '다시 불러오기';

  @override
  String get openFolder => '폴더 열기';

  @override
  String get playlistLink => '플레이리스트 링크';

  @override
  String get playlistLinkHint =>
      '플레이리스트 링크를 붙여 넣으세요. 예:\nhttps://www.asmr.one/playlist?id=...';

  @override
  String get unrecognizedPlaylistLink => '플레이리스트 링크 또는 ID를 인식할 수 없습니다';

  @override
  String get addingPlaylist => '플레이리스트 추가 중...';

  @override
  String get playlistAddedSuccess => '플레이리스트를 추가했습니다';

  @override
  String get addFailed => '추가하지 못했습니다';

  @override
  String get playlistNotFound => '플레이리스트가 없거나 삭제되었습니다';

  @override
  String get noPermissionToAccessPlaylist => '이 플레이리스트에 접근할 권한이 없습니다';

  @override
  String get networkConnectionFailed => '네트워크에 연결할 수 없습니다. 네트워크를 확인하세요';

  @override
  String addFailedWithError(String error) {
    return '추가에 실패했습니다: $error';
  }

  @override
  String get creatingPlaylist => '플레이리스트 만드는 중...';

  @override
  String playlistCreatedSuccess(String name) {
    return '플레이리스트 \"$name\"을(를) 만들었습니다';
  }

  @override
  String createFailedWithError(String error) {
    return '만들지 못했습니다: $error';
  }

  @override
  String get noPlaylists => '플레이리스트가 없습니다';

  @override
  String get noPlaylistsDescription => '아직 만든 플레이리스트나 즐겨찾기에 추가한 플레이리스트가 없습니다';

  @override
  String get myPlaylists => '내 플레이리스트';

  @override
  String totalNItems(int count) {
    return '총 $count개 항목';
  }

  @override
  String get systemPlaylistCannotDelete => '시스템 플레이리스트는 삭제할 수 없습니다';

  @override
  String get deletePlaylist => '플레이리스트 삭제';

  @override
  String get unfavoritePlaylist => '즐겨찾기 해제';

  @override
  String get deletePlaylistConfirm =>
      '삭제하면 되돌릴 수 없습니다. 이 플레이리스트를 즐겨찾기한 사용자도 더 이상 이용할 수 없습니다. 삭제할까요?';

  @override
  String unfavoritePlaylistConfirm(String name) {
    return '\"$name\"을(를) 즐겨찾기에서 삭제할까요?';
  }

  @override
  String get unfavorite => '즐겨찾기 해제';

  @override
  String get deleting => '삭제 중...';

  @override
  String get deleteSuccess => '삭제했습니다';

  @override
  String get onlyOwnerCanEdit => '플레이리스트 소유자만 수정할 수 있습니다';

  @override
  String get editPlaylist => '플레이리스트 수정';

  @override
  String get playlistNameRequired => '플레이리스트 이름을 입력하세요';

  @override
  String get privacyDescPrivate => '나만 볼 수 있습니다';

  @override
  String get privacyDescUnlisted => '링크가 있는 사람만 볼 수 있습니다';

  @override
  String get privacyDescPublic => '누구나 볼 수 있습니다';

  @override
  String get addWorks => '작품 추가';

  @override
  String get addWorksInputHint => '작품 ID가 포함된 텍스트를 입력하세요. RJ 번호는 자동으로 찾습니다';

  @override
  String get workId => '작품 ID';

  @override
  String get workIdHint => '예: RJ123456\nrj233333';

  @override
  String detectedNWorkIds(int count) {
    return '작품 ID $count개를 찾았습니다';
  }

  @override
  String addNWorks(int count) {
    return '$count개 추가';
  }

  @override
  String get noValidWorkIds => '유효한 작품 ID가 없습니다 (RJ로 시작해야 합니다)';

  @override
  String addingNWorks(int count) {
    return '작품 $count개 추가 중...';
  }

  @override
  String addedNWorksSuccess(int count) {
    return '작품 $count개를 추가했습니다';
  }

  @override
  String get removeWork => '작품 제거';

  @override
  String removeWorkConfirm(String title) {
    return '플레이리스트에서 \"$title\"을(를) 제거할까요?';
  }

  @override
  String get removeSuccess => '제거했습니다';

  @override
  String removeFailedWithError(String error) {
    return '제거에 실패했습니다: $error';
  }

  @override
  String get saving => '저장 중...';

  @override
  String get saveSuccess => '저장했습니다';

  @override
  String saveFailedWithError(String error) {
    return '저장에 실패했습니다: $error';
  }

  @override
  String get noWorks => '작품이 없습니다';

  @override
  String get playlistNoWorksDescription => '아직 이 플레이리스트에 추가된 작품이 없습니다';

  @override
  String get lastUpdated => '최근 수정';

  @override
  String get createdTime => '만든 날짜';

  @override
  String nWorksCount(int count) {
    return '작품 $count개';
  }

  @override
  String nPlaysCount(int count) {
    return '재생 $count회';
  }

  @override
  String get removeFromPlaylist => '플레이리스트에서 제거';

  @override
  String get checkNetworkOrRetry => '네트워크 연결을 확인하거나 나중에 다시 시도하세요';

  @override
  String get reachedEnd => '마지막 항목입니다~';

  @override
  String excludedNWorks(int count) {
    return '작품 $count개 제외됨';
  }

  @override
  String pageExcludedNWorks(int count) {
    return '이 페이지에서 작품 $count개 제외됨';
  }

  @override
  String get noSubtitlesAvailable => '사용할 수 있는 자막이 없습니다';

  @override
  String get translateLyrics => '가사 번역';

  @override
  String get fullscreenLyrics => '전체 화면 가사';

  @override
  String get showOriginalLyrics => '원문 표시';

  @override
  String get showTranslatedLyrics => '번역문 표시';

  @override
  String get translatingLyrics => '가사 번역 중...';

  @override
  String get lyricTranslationFailed => '가사 번역에 실패했습니다';

  @override
  String get lyricTranslationConfirmMessage =>
      '현재 재생 중인 가사를 번역해 바로 표시합니다. 자동 저장을 켜면 자막 보관함의 같은 이름을 가진 .lrc 파일을 덮어씁니다. 번역 중 트랙을 바꾸면 결과가 폐기됩니다.';

  @override
  String get unlock => '잠금 해제';

  @override
  String get backToCover => '표지로 돌아가기';

  @override
  String get lyricHintTapCover => '표지나 제목을 눌러 자막 화면으로 이동합니다';

  @override
  String get floatingSubtitle => '플로팅 자막';

  @override
  String get playlistEmpty => '플레이리스트가 비어 있습니다';

  @override
  String get gotIt => '확인';

  @override
  String nMinutes(int count) {
    return '$count분';
  }

  @override
  String nHours(int count) {
    return '$count시간';
  }

  @override
  String get titleLabel => '제목';

  @override
  String get rjNumberLabel => 'RJ 번호';

  @override
  String get workIdLabel => '작품 ID';

  @override
  String get tapToViewRatingDetail => '눌러서 평점 상세 정보 보기';

  @override
  String priceInYen(int price) {
    return '$price엔';
  }

  @override
  String soldCount(String count) {
    return '판매: $count';
  }

  @override
  String get circleAndVaSection => '서클 | 성우';

  @override
  String get subtitleBadge => '자막';

  @override
  String get otherEditions => '다른 에디션';

  @override
  String tenThousandSuffix(String count) {
    return '$count만';
  }

  @override
  String get packingWork => '작품을 압축하는 중...';

  @override
  String get workDirectoryNotExist => '작품 폴더가 없습니다';

  @override
  String get packingFailed => '압축하지 못했습니다';

  @override
  String exportSuccess(String path) {
    return '내보냈습니다: $path';
  }

  @override
  String exportFailed(String error) {
    return '내보내지 못했습니다: $error';
  }

  @override
  String get exportAsZip => 'ZIP으로 내보내기';

  @override
  String get offlineBadge => '오프라인';

  @override
  String loadFilesFailed(String error) {
    return '파일을 불러오지 못했습니다: $error';
  }

  @override
  String get unknown => '알 수 없음';

  @override
  String get noPlayableAudioFiles => '재생할 수 있는 오디오 파일이 없습니다';

  @override
  String cannotFindAudioFile(String title) {
    return '오디오 파일을 찾을 수 없습니다: $title';
  }

  @override
  String nowPlayingNOfTotal(String title, int current, int total) {
    return '재생 중: $title ($current/$total)';
  }

  @override
  String get noAudioCannotLoadSubtitle => '재생 중인 오디오가 없어 자막을 불러올 수 없습니다';

  @override
  String get loadSubtitle => '자막 불러오기';

  @override
  String get loadSubtitleConfirm => '현재 오디오의 자막으로 이 파일을 불러올까요?';

  @override
  String get subtitleFile => '자막 파일';

  @override
  String get currentAudio => '현재 오디오';

  @override
  String get subtitleAutoRestoreNote => '오디오를 바꾸면 자막이 기본 자동 매칭으로 돌아갑니다';

  @override
  String get confirmLoad => '불러오기 확인';

  @override
  String get loadingSubtitle => '자막 불러오는 중...';

  @override
  String subtitleLoadSuccess(String title) {
    return '자막을 불러왔습니다: $title';
  }

  @override
  String subtitleLoadFailed(String error) {
    return '자막을 불러오지 못했습니다: $error';
  }

  @override
  String get cannotPreviewImageMissingInfo => '이미지를 미리 볼 수 없습니다: 필수 정보가 없습니다';

  @override
  String get cannotFindImageFile => '이미지 파일을 찾을 수 없습니다';

  @override
  String get cannotPreviewTextMissingInfo => '텍스트를 미리 볼 수 없습니다: 필수 정보가 없습니다';

  @override
  String get cannotPreviewPdfMissingInfo => 'PDF를 미리 볼 수 없습니다: 필수 정보가 없습니다';

  @override
  String get cannotPlayVideoMissingId => '동영상을 재생할 수 없습니다: 파일 ID가 없습니다';

  @override
  String get cannotPlayVideoMissingParams => '동영상을 재생할 수 없습니다: 필수 매개변수가 없습니다';

  @override
  String get cannotPlayDirectly => '바로 재생할 수 없습니다';

  @override
  String get noVideoPlayerFound => '이 기기에서 사용할 수 있는 동영상 플레이어가 없습니다.';

  @override
  String get youCan => '다음 방법을 사용할 수 있습니다:';

  @override
  String get copyLinkToExternalPlayer =>
      '1. 링크를 복사해 외부 플레이어에서 엽니다 (예: MX Player, VLC)';

  @override
  String get openInBrowserOption => '2. 브라우저에서 엽니다';

  @override
  String playVideoError(String error) {
    return '동영상 재생 오류: $error';
  }

  @override
  String get noFiles => '파일이 없습니다';

  @override
  String get resourceFiles => '리소스 파일';

  @override
  String resourceFilesTranslated(int count) {
    return '리소스 파일 (항목 $count개 번역됨)';
  }

  @override
  String get translationOriginal => '원문';

  @override
  String get translationTranslated => '번역';

  @override
  String copiedName(String title) {
    return '이름을 복사했습니다: $title';
  }

  @override
  String translationComplete(int count) {
    return '번역 완료: 항목 $count개';
  }

  @override
  String get noContentToTranslate => '번역할 내용이 없습니다';

  @override
  String get preparingTranslation => '번역 준비 중...';

  @override
  String translatingProgress(int current, int total) {
    return '번역 중 $current/$total';
  }

  @override
  String nItems(int count) {
    return '항목 $count개';
  }

  @override
  String get loadAsSubtitle => '자막으로 불러오기';

  @override
  String get preview => '미리보기';

  @override
  String openVideoFileError(String error) {
    return '동영상 파일을 여는 중 오류가 발생했습니다: $error';
  }

  @override
  String cannotOpenVideoFile(String message) {
    return '동영상 파일을 열 수 없습니다: $message';
  }

  @override
  String get noFileTreeInfo => '파일 목록 정보가 없습니다';

  @override
  String get workFolderNotExist => '작품 폴더가 없습니다';

  @override
  String get cannotPlayAudioMissingId => '오디오를 재생할 수 없습니다: 파일 ID가 없습니다';

  @override
  String get audioFileNotExist => '오디오 파일이 없습니다';

  @override
  String get noPreviewableImages => '미리 볼 수 있는 이미지가 없습니다';

  @override
  String get cannotPreviewTextMissingId => '텍스트를 미리 볼 수 없습니다: 파일 ID가 없습니다';

  @override
  String get cannotFindFilePath => '파일 경로를 찾을 수 없습니다';

  @override
  String fileNotExist(String title) {
    return '파일이 없습니다: $title';
  }

  @override
  String get cannotPreviewPdfMissingId => 'PDF를 미리 볼 수 없습니다: 파일 ID가 없습니다';

  @override
  String get videoFileNotExist => '동영상 파일이 없습니다';

  @override
  String get cannotOpenVideo => '동영상을 열 수 없습니다';

  @override
  String errorInfo(String message) {
    return '오류: $message';
  }

  @override
  String get installVideoPlayerApp => '동영상 플레이어 앱을 설치하세요 (예: VLC, MX Player)';

  @override
  String get filePathLabel => '파일 경로:';

  @override
  String get noDownloadedFiles => '다운로드한 파일이 없습니다';

  @override
  String get offlineFiles => '오프라인 파일';

  @override
  String unsupportedFileType(String title) {
    return '지원하지 않는 파일 형식입니다: $title';
  }

  @override
  String get deleteFilePrompt => '이 파일을 삭제할까요?';

  @override
  String deletedItem(String title) {
    return '삭제했습니다: $title';
  }

  @override
  String get selectAtLeastOneFile => '파일을 하나 이상 선택하세요';

  @override
  String addedNFilesToDownloadQueue(int count) {
    return '파일 $count개를 다운로드 대기열에 추가했습니다';
  }

  @override
  String downloadedAndSelected(int downloaded, int selected) {
    return '다운로드 $downloaded개 · 선택 $selected개';
  }

  @override
  String downloadN(int count) {
    return '다운로드 ($count)';
  }

  @override
  String get checkingDownloadedFiles => '다운로드한 파일 확인 중...';

  @override
  String get noDownloadableFiles => '다운로드할 수 있는 파일이 없습니다';

  @override
  String get selectFilesToDownload => '다운로드할 파일 선택';

  @override
  String downloadedNCount(int count) {
    return '다운로드 $count개';
  }

  @override
  String selectedNCount(int count) {
    return '$count개 선택';
  }

  @override
  String get pleaseEnterServerAddress => '서버 주소를 입력하세요';

  @override
  String get pleaseEnterUsername => '사용자 이름을 입력하세요';

  @override
  String get pleaseEnterPassword => '비밀번호를 입력하세요';

  @override
  String get notTestedYet => '아직 테스트하지 않았습니다';

  @override
  String latencyResultDetail(String latency, String status) {
    return '응답 시간 $latency ($status)';
  }

  @override
  String connectionFailedWithDetail(String error) {
    return '연결에 실패했습니다: $error';
  }

  @override
  String get noAccountTapToRegister => '계정이 없나요? 눌러서 가입하세요';

  @override
  String get haveAccountTapToLogin => '계정이 있나요? 눌러서 로그인하세요';

  @override
  String get cannotDeleteActiveAccount => '현재 사용 중인 계정은 삭제할 수 없습니다';

  @override
  String get selectAccount => '계정 선택';

  @override
  String get noSavedAccounts => '저장된 계정이 없습니다';

  @override
  String get addAccountToGetStarted => '계정을 추가해 시작하세요';

  @override
  String get unknownHost => '알 수 없는 호스트';

  @override
  String lastUsedTime(String time) {
    return '최근 사용: $time';
  }

  @override
  String daysAgo(int count) {
    return '$count일 전';
  }

  @override
  String hoursAgo(int count) {
    return '$count시간 전';
  }

  @override
  String minutesAgo(int count) {
    return '$count분 전';
  }

  @override
  String get justNow => '방금';

  @override
  String get confirmDelete => '삭제 확인';

  @override
  String deleteSelectedConfirm(int count) {
    return '선택한 항목 $count개를 삭제할까요?';
  }

  @override
  String deletedNOfTotalItems(int success, int total) {
    return '항목 $total개 중 $success개를 삭제했습니다';
  }

  @override
  String get importingSubtitleFile => '자막 파일 가져오는 중...';

  @override
  String get preparingImport => '가져오기 준비 중...';

  @override
  String get preparingExtract => '압축 풀기 준비 중...';

  @override
  String get importSubtitleFile => '자막 파일 가져오기';

  @override
  String get supportedSubtitleFormats => '.srt, .vtt, .lrc 및 기타 자막 형식을 지원합니다';

  @override
  String get importFolder => '폴더 가져오기';

  @override
  String get importFolderDesc => '폴더 구조를 유지하고 자막 파일만 가져옵니다';

  @override
  String get importArchive => '압축 파일 가져오기';

  @override
  String get importArchiveDesc =>
      '암호가 없는 ZIP 압축 파일을 지원합니다.\n여러 파일을 한 번에 가져오려면 하나의 압축 파일로 묶으세요.';

  @override
  String get subtitleLibraryGuide => '자막 보관함 사용 안내';

  @override
  String get subtitleLibraryFunction => '자막 보관함 기능';

  @override
  String get subtitleLibraryFunctionDesc =>
      '가져오거나 저장한 자막 파일을 보관하며 재생 중 자동 또는 수동으로 불러올 수 있습니다';

  @override
  String get subtitleAutoLoad => '자막 자동 불러오기';

  @override
  String get subtitleAutoLoadDesc => '오디오를 재생하면 일치하는 자막을 자동으로 검색합니다:';

  @override
  String get smartCategoryAndMark => '자동 분류 및 표시';

  @override
  String get open => '열기';

  @override
  String get moveTo => '이동';

  @override
  String get rename => '이름 변경';

  @override
  String get newName => '새 이름';

  @override
  String get renameSuccess => '이름을 변경했습니다';

  @override
  String get renameFailed => '이름을 변경하지 못했습니다';

  @override
  String deleteItemConfirm(String title) {
    return '\"$title\"을(를) 삭제할까요?';
  }

  @override
  String get deleteFolderContentsWarning => '폴더 안의 모든 항목이 삭제됩니다.';

  @override
  String get deleteFailed => '삭제하지 못했습니다';

  @override
  String subtitleLoaded(String title) {
    return '자막을 불러왔습니다: $title';
  }

  @override
  String get moveSuccess => '이동했습니다';

  @override
  String get moveFailed => '이동하지 못했습니다';

  @override
  String previewFailed(String error) {
    return '미리보기에 실패했습니다: $error';
  }

  @override
  String openFailed(String error) {
    return '열지 못했습니다: $error';
  }

  @override
  String get back => '뒤로';

  @override
  String get subtitleLibraryEmpty => '자막 보관함이 비어 있습니다';

  @override
  String get tapToImportSubtitle => '+ 버튼을 눌러 자막을 가져오세요';

  @override
  String get importSubtitle => '자막 가져오기';

  @override
  String get sampleSubtitleContent => '♪ 샘플 자막 내용 ♪';

  @override
  String get presetStyles => '미리 설정된 스타일';

  @override
  String get backgroundOpacity => '배경 투명도';

  @override
  String get colorSettings => '색상 설정';

  @override
  String get shapeSettings => '모양 설정';

  @override
  String get cornerRadius => '모서리 둥글기';

  @override
  String get horizontalPadding => '가로 여백';

  @override
  String get verticalPadding => '세로 여백';

  @override
  String get resetStyle => '스타일 초기화';

  @override
  String get resetStyleConfirm => '기본 스타일로 되돌릴까요?';

  @override
  String get restoreDefaultStyle => '기본 스타일 복원';

  @override
  String get reset => '초기화';

  @override
  String noBlockedItemsOfType(String type) {
    return '차단 목록에 $type이(가) 없습니다';
  }

  @override
  String unblockedItem(String item) {
    return '차단 해제: $item';
  }

  @override
  String addBlockedItem(String type) {
    return '차단할 $type 추가';
  }

  @override
  String blockedItemName(String type) {
    return '$type 이름';
  }

  @override
  String enterBlockedItemHint(String type) {
    return '차단할 $type 입력';
  }

  @override
  String blockedItemAdded(String item) {
    return '차단됨: $item';
  }

  @override
  String workCountLabel(int count) {
    return '작품: $count';
  }

  @override
  String get miniPlayer => '미니 플레이어';

  @override
  String get lineHeight => '줄 간격';

  @override
  String get portraitPlayerBelowCover => '세로형 플레이어 (표지 아래)';

  @override
  String get fullscreenSubtitleMode => '전체 화면 자막 (세로/가로)';

  @override
  String get activeSubtitleFontSize => '현재 자막 글자 크기';

  @override
  String get inactiveSubtitleFontSize => '이전 자막 글자 크기';

  @override
  String get restoreDefaultSettings => '기본 설정 복원';

  @override
  String get confirmRestoreDefaultSettings => '기본 설정을 복원할까요?';

  @override
  String get guideInPrefix => '폴더 안의 ';

  @override
  String get guideParsedFolder => '<Parsed>';

  @override
  String get guideFindWorkDesc => '에서 일치하는 작품 찾기\n지원하는 폴더 형식: RJ123456';

  @override
  String get guideSavedFolder => '<Saved>';

  @override
  String get guideFindSubtitleDesc => '에서 개별 자막 파일 찾기';

  @override
  String get guideMatchRule =>
      '매칭 규칙: 자막 파일 이름이 오디오 파일 이름과 일치해야 합니다 (오디오 확장자 포함 여부 무관)';

  @override
  String get guideRecognizedWorkPrefix => '인식된 작품에는 초록색 ';

  @override
  String get guideTagSuffix => ' 태그가 표시되고, 오디오 파일 아이콘에는 ';

  @override
  String get guideSubtitleMatchSuffix => ' 표시가 나타나 자막 보관함에서 일치 항목을 찾았음을 알립니다';

  @override
  String get guideAutoRecognizeRJ => '가져올 때 RJ 형식을 자동으로 인식해 <Parsed>에 분류합니다';

  @override
  String get guideAutoAddRJPrefix =>
      '숫자로만 된 폴더 이름에는 RJ가 자동으로 붙습니다 (예: 123456 → RJ123456)';

  @override
  String get unknownFile => '알 수 없는 파일';

  @override
  String deleteWithCount(int count) {
    return '삭제 ($count)';
  }

  @override
  String get searchSubtitles => '자막 검색...';

  @override
  String nFilesWithSize(int count, String size) {
    return '파일 $count개 • $size';
  }

  @override
  String get rootDirectory => '루트 폴더';

  @override
  String get goToParent => '상위 폴더로 이동';

  @override
  String moveToTarget(String name) {
    return '이동 위치: $name';
  }

  @override
  String get noSubfoldersHere => '이 폴더에 하위 폴더가 없습니다';

  @override
  String addedToPlaylist(String name) {
    return '플레이리스트 \"$name\"에 추가했습니다';
  }

  @override
  String removedFromPlaylist(String name) {
    return '플레이리스트 \"$name\"에서 제거했습니다';
  }

  @override
  String get alreadyFavorited => '즐겨찾기에 추가됨';

  @override
  String loadImageFailedWithError(String error) {
    return '이미지를 불러오지 못했습니다\n$error';
  }

  @override
  String get noImageAvailable => '사용할 수 있는 이미지가 없습니다';

  @override
  String get storagePermissionRequiredForImage => '이미지를 저장하려면 저장소 권한이 필요합니다';

  @override
  String get savedToGallery => '갤러리에 저장했습니다';

  @override
  String get saveCoverImage => '표지 이미지 저장';

  @override
  String savedToPath(String path) {
    return '저장 위치: $path';
  }

  @override
  String get doubleTapToZoom => '두 번 눌러 확대 · 핀치하여 크기 조절';

  @override
  String getStatusFailed(String error) {
    return '상태를 가져오지 못했습니다: $error';
  }

  @override
  String get deleteRecord => '기록 삭제';

  @override
  String deletePlayRecordConfirm(String title) {
    return '\"$title\"의 재생 기록을 삭제할까요?';
  }

  @override
  String get notPlayedYet => '아직 재생하지 않았습니다';

  @override
  String playbackFailed(String error) {
    return '재생에 실패했습니다: $error';
  }

  @override
  String get storagePermissionRequired => '저장소 권한 필요';

  @override
  String get storagePermissionForGalleryDesc =>
      '이미지를 저장하려면 사진 갤러리 접근 권한이 필요합니다. 설정에서 권한을 허용하세요.';

  @override
  String get goToSettings => '설정으로 이동';

  @override
  String get imageSavedToGallery => '이미지를 갤러리에 저장했습니다';

  @override
  String imageSavedToPath(String path) {
    return '이미지 저장 위치: $path';
  }

  @override
  String get pullDownForNextPage => '아래로 당겨 다음 페이지로 이동';

  @override
  String get releaseForNextPage => '손을 떼면 다음 페이지로 이동';

  @override
  String get jumpTo => '이동';

  @override
  String get goToPageTitle => '페이지 이동';

  @override
  String pageNumberRange(int max) {
    return '페이지 (1~$max)';
  }

  @override
  String get enterPageNumber => '페이지 번호 입력';

  @override
  String enterValidPageNumber(int max) {
    return '올바른 페이지 번호를 입력하세요 (1~$max)';
  }

  @override
  String get previousPage => '이전';

  @override
  String get nextPage => '다음';

  @override
  String get localPdfNotExist => '로컬 PDF 파일이 없습니다';

  @override
  String get cannotOpenPdf => 'PDF 파일을 열 수 없습니다';

  @override
  String loadPdfFailed(String error) {
    return 'PDF를 불러오지 못했습니다: $error';
  }

  @override
  String pdfPageOfTotal(int current, int total) {
    return '$current/$total페이지';
  }

  @override
  String get loadingPdf => 'PDF 불러오는 중...';

  @override
  String get pdfPathInvalid => 'PDF 파일 경로가 올바르지 않습니다';

  @override
  String get desktopPdfPreviewNotSupported => '데스크톱에서는 아직 PDF 미리보기를 지원하지 않습니다';

  @override
  String get openWithSystemApp => '기본 시스템 앱으로 열기';

  @override
  String renderPdfFailed(String error) {
    return 'PDF를 표시하지 못했습니다: $error';
  }

  @override
  String get ratingDetails => '평점 상세 정보';

  @override
  String get selectSaveDirectory => '저장 폴더 선택';

  @override
  String get noSubtitleContentToSave => '저장할 자막 내용이 없습니다';

  @override
  String get savedToSubtitleLibrary => '자막 보관함에 저장했습니다';

  @override
  String get translatedLyricsNotSaved => '번역이 완료되었습니다. 현재 재생 중에만 표시됩니다.';

  @override
  String get saveToLocal => '기기에 저장';

  @override
  String get selectDirectoryToSaveFile => '파일을 저장할 폴더를 선택하세요';

  @override
  String get saveToSubtitleLibrary => '자막 보관함에 저장';

  @override
  String get saveToSubtitleLibraryDesc => '자막 보관함의 \"Saved\" 폴더에 저장합니다';

  @override
  String get saveToFile => '파일로 저장';

  @override
  String get noContentToSave => '저장할 내용이 없습니다';

  @override
  String fileSavedToPath(String path) {
    return '파일 저장 위치: $path';
  }

  @override
  String get localFileNotExist => '로컬 파일이 없습니다. 다시 불러오세요';

  @override
  String loadTextFailed(String error) {
    return '텍스트를 불러오지 못했습니다: $error';
  }

  @override
  String get previewMode => '미리보기 모드';

  @override
  String get editMode => '편집 모드';

  @override
  String get showOriginal => '원문 표시';

  @override
  String get translateContent => '내용 번역';

  @override
  String get editTextContentHint => '텍스트 내용 수정...';

  @override
  String get markButton => '표시';

  @override
  String get bookmarkRemoved => '북마크를 삭제했습니다';

  @override
  String setProgressAndRating(String progress, int rating) {
    return '$progress(으)로 설정, 평점 $rating점';
  }

  @override
  String setProgressTo(String progress) {
    return '$progress(으)로 설정';
  }

  @override
  String ratingSetTo(int rating) {
    return '평점을 $rating점으로 설정했습니다';
  }

  @override
  String get updated => '업데이트됨';

  @override
  String addTagFailed(String error) {
    return '태그를 추가하지 못했습니다: $error';
  }

  @override
  String addWithCount(int count) {
    return '추가 ($count)';
  }

  @override
  String get undo => '실행 취소';

  @override
  String nStars(int count) {
    return '별 $count개';
  }

  @override
  String get voteRemoved => '투표를 취소했습니다';

  @override
  String get votedUp => '찬성에 투표함';

  @override
  String get votedDown => '반대에 투표함';

  @override
  String voteFailedWithError(String error) {
    return '투표에 실패했습니다: $error';
  }

  @override
  String get voteFor => '찬성';

  @override
  String get voteAgainst => '반대';

  @override
  String get voted => '투표함';

  @override
  String tagBlockedWithName(String name) {
    return '태그 차단됨: $name';
  }

  @override
  String get subtitleParseFailedUnsupportedFormat => '지원하지 않는 형식이라 파싱하지 못했습니다';

  @override
  String get lyricPresetDynamic => '동적';

  @override
  String get lyricPresetClassic => '클래식';

  @override
  String get lyricPresetModern => '모던';

  @override
  String get lyricPresetMinimal => '미니멀';

  @override
  String get lyricPresetVibrant => '생동감';

  @override
  String get lyricPresetElegant => '우아함';

  @override
  String get lyricPresetDynamicDesc => '시스템 테마와 색상을 따릅니다';

  @override
  String get lyricPresetClassicDesc => '검은 배경과 흰 글자의 클래식 스타일';

  @override
  String get lyricPresetModernDesc => '그라데이션 배경의 세련된 모던 스타일';

  @override
  String get lyricPresetMinimalDesc => '밝고 투명한 간결한 스타일';

  @override
  String get lyricPresetVibrantDesc => '선명하고 활기찬 색상';

  @override
  String get lyricPresetElegantDesc => '짙은 파란색의 세련된 스타일';

  @override
  String get floatingLyricLoading => '♪ 자막 불러오는 중 ♪';

  @override
  String get subtitleFileNotExist => '파일이 없습니다';

  @override
  String get subtitleMissingInfo => '필수 정보가 없습니다';

  @override
  String get privacyDefaultTitle => '오디오 재생 중';

  @override
  String get offlineModeStartup => '네트워크에 연결할 수 없어 오프라인 모드로 시작합니다';

  @override
  String get playlistInfoNotLoaded => '플레이리스트 정보를 불러오지 못했습니다';

  @override
  String get encodingUnrecognized => '파일 인코딩을 인식할 수 없어 내용을 올바르게 표시할 수 없습니다';

  @override
  String editPlaylistFailed(String error) {
    return '플레이리스트를 수정하지 못했습니다: $error';
  }

  @override
  String unsupportedFileTypeWithTitle(String title) {
    return '이 파일 형식은 열 수 없습니다: $title';
  }

  @override
  String get settingsSaved => '설정을 저장했습니다';

  @override
  String get restoredToDefault => '기본 설정으로 복원했습니다';

  @override
  String get restoreDefault => '기본값 복원';

  @override
  String get saveSettings => '설정 저장';

  @override
  String get addAtLeastOneSearchCondition => '검색 조건을 하나 이상 추가하세요';

  @override
  String get privacyModeSettingsTitle => '프라이버시 모드 설정';

  @override
  String get whatIsPrivacyMode => '프라이버시 모드란?';

  @override
  String get privacyModeDescription =>
      '사용 설정하면 시스템 알림, 잠금 화면 등에 표시되는 재생 정보를 흐리게 처리해 개인정보를 보호합니다.';

  @override
  String get enablePrivacyMode => '프라이버시 모드 사용';

  @override
  String get privacyModeEnabledSubtitle => '사용 중 - 재생 정보가 숨겨집니다';

  @override
  String get privacyModeDisabledSubtitle => '사용 안 함 - 재생 정보가 그대로 표시됩니다';

  @override
  String get blurOptions => '흐리게 표시할 항목';

  @override
  String get blurNotificationCover => '알림 표지 흐리게 하기';

  @override
  String get blurNotificationCoverSubtitle =>
      '시스템 알림, 잠금 화면 또는 컨트롤 센터의 표지를 흐리게 표시합니다';

  @override
  String get blurInAppCover => '앱 내 표지 흐리게 하기';

  @override
  String get blurInAppCoverSubtitle => '플레이어와 목록 등 앱 화면의 표지를 흐리게 표시합니다';

  @override
  String get replaceTitle => '제목 바꾸기';

  @override
  String get replaceTitleSubtitle => '실제 제목 대신 다른 제목을 표시합니다';

  @override
  String get replaceTitleContent => '대체할 제목';

  @override
  String get setReplaceTitle => '대체 제목 설정';

  @override
  String get enterDisplayTitle => '표시할 제목 입력';

  @override
  String get replaceTitleSaved => '대체 제목을 저장했습니다';

  @override
  String get effectExample => '예시';

  @override
  String get downloadPathSettings => '다운로드 경로 설정';

  @override
  String loadPathFailedWithError(String error) {
    return '경로를 불러오지 못했습니다: $error';
  }

  @override
  String get platformNotSupportCustomPath => '이 플랫폼에서는 다운로드 경로를 직접 지정할 수 없습니다';

  @override
  String activeDownloadsWarning(int count) {
    return '다운로드 작업 $count개가 진행 중입니다. 경로를 바꾸려면 작업을 취소하거나 완료하세요';
  }

  @override
  String setPathFailedWithError(String error) {
    return '경로를 설정하지 못했습니다: $error';
  }

  @override
  String get confirmMigrateFiles => '파일 이동 확인';

  @override
  String get migrateFilesToNewDir => '기존 다운로드 파일을 새 폴더로 옮깁니다:\n';

  @override
  String get migrationMayTakeTime => '파일 수와 용량에 따라 시간이 걸릴 수 있습니다.';

  @override
  String get confirmMigrate => '파일 이동';

  @override
  String get restoreDefaultPath => '기본 경로 복원';

  @override
  String get restoreDefaultPathConfirm =>
      '다운로드 경로를 기본 위치로 되돌리고 파일을 모두 이동합니다.\n\n계속할까요?';

  @override
  String get defaultPathRestored => '기본 경로로 복원했습니다';

  @override
  String resetPathFailedWithError(String error) {
    return '기본 경로로 복원하지 못했습니다: $error';
  }

  @override
  String get migratingFiles => '파일 이동 중...';

  @override
  String get doNotCloseApp => '작업 중 앱을 종료하지 마세요';

  @override
  String get currentDownloadPath => '현재 다운로드 경로';

  @override
  String get customPath => '사용자 지정 경로';

  @override
  String get defaultPath => '기본 경로';

  @override
  String get changeCustomPath => '사용자 지정 경로 변경';

  @override
  String get setCustomPath => '사용자 지정 경로 설정';

  @override
  String get usageInstructions => '사용 방법';

  @override
  String get downloadPathUsageDesc =>
      '• 경로를 바꾸면 기존 파일을 새 위치로 자동 이동합니다\n• 파일을 옮기는 동안 앱을 종료하지 마세요\n• 저장 공간이 충분한 폴더를 선택하세요\n• 기본 경로로 복원하면 파일도 자동으로 돌아갑니다';

  @override
  String get llmTranslationSettings => 'LLM 번역 설정';

  @override
  String get apiEndpointUrl => 'API 엔드포인트 URL';

  @override
  String get apiBaseUrl => 'API 기본 URL';

  @override
  String get apiProtocol => 'API 프로토콜';

  @override
  String get chatCompletionsProtocol => 'Chat Completions (/chat/completions)';

  @override
  String get responsesProtocol => 'Responses (/responses)';

  @override
  String get anthropicProtocol => 'Anthropic Messages (/messages)';

  @override
  String get openaiCompatibleEndpoint => '선택한 프로토콜의 경로가 자동으로 추가됩니다';

  @override
  String get pleaseEnterApiUrl => 'API 엔드포인트 URL을 입력하세요';

  @override
  String get pleaseEnterValidUrl => '올바른 URL을 입력하세요';

  @override
  String get pleaseEnterApiKey => 'API 키를 입력하세요';

  @override
  String get modelName => '모델 이름';

  @override
  String get pleaseEnterModelName => '모델 이름을 입력하세요';

  @override
  String get concurrencyCount => '동시 요청 수';

  @override
  String get concurrencyDescription => '동시에 보낼 번역 요청 수입니다. 3~5개를 권장합니다.';

  @override
  String get promptSection => '프롬프트';

  @override
  String get promptDescription =>
      '번역은 여러 부분으로 나누어 진행됩니다. 설명을 덧붙이지 말고 번역 결과만 출력하도록 프롬프트에 명확히 지정하세요.';

  @override
  String get enterSystemPrompt => '시스템 프롬프트 입력...';

  @override
  String get pleaseEnterPrompt => '프롬프트를 입력하세요';

  @override
  String get restoreDefaultPrompt => '기본 프롬프트 복원';

  @override
  String get confirmRestoreButtonOrder => '버튼 순서를 기본값으로 복원할까요?';

  @override
  String get buttonDisplayRules => '버튼 표시 규칙';

  @override
  String buttonDisplayRulesDesc(int maxVisible) {
    return '• 플레이어 아래쪽에 처음 $maxVisible개 버튼을 표시합니다\n• 나머지 버튼은 \"더보기\" 메뉴에 표시합니다';
  }

  @override
  String get shownInPlayer => '플레이어에 표시';

  @override
  String get shownInMoreMenu => '더보기 메뉴에 표시';

  @override
  String get audioFormatPriority => '오디오 형식 우선순위';

  @override
  String get confirmRestoreAudioFormat => '오디오 형식 우선순위를 기본값으로 복원할까요?';

  @override
  String get priorityDescription => '우선순위 안내';

  @override
  String get audioFormatPriorityDesc =>
      '• 작품 상세 페이지를 열면 우선순위가 가장 높은 오디오 형식의 폴더를 먼저 펼칩니다';

  @override
  String get ratingInfo => '평점 정보';

  @override
  String get showRatingAndReviewCount => '작품 평점과 리뷰 수 표시';

  @override
  String get priceInfo => '가격 정보';

  @override
  String get showWorkPrice => '작품 가격 표시';

  @override
  String get durationInfo => '재생 시간 정보';

  @override
  String get showWorkDuration => '작품 재생 시간 표시';

  @override
  String get showWorkTotalDuration => '전체 작품 재생 시간 표시';

  @override
  String get salesInfo => '판매 정보';

  @override
  String get showWorkSalesCount => '작품 판매량 표시';

  @override
  String get externalLinkInfo => '외부 링크';

  @override
  String get showExternalLinks => 'DLsite, 공식 웹사이트 등의 외부 링크 표시';

  @override
  String get releaseDateInfo => '발매일 정보';

  @override
  String get showWorkReleaseDate => '작품 발매일 표시';

  @override
  String get translateButtonLabel => '번역 버튼';

  @override
  String get showTranslateButton => '작품 제목 번역 버튼 표시';

  @override
  String get subtitleTagLabel => '자막 태그';

  @override
  String get showSubtitleTagOnCover => '표지에 자막 태그 표시';

  @override
  String get showAgeRatingOnDetail => '작품 상세 페이지에 연령 등급 표시';

  @override
  String get recommendationsLabel => '관련 작품 추천';

  @override
  String get showRecommendations => '작품 상세 페이지에 관련 작품 추천 표시';

  @override
  String get circleInfo => '서클 정보';

  @override
  String get showWorkCircle => '작품 서클 표시';

  @override
  String get workCardSizeSubtitle => '격자 밀도를 조절해 표지 크기를 바꿉니다';

  @override
  String get workCardFontSize => '카드 글자 크기';

  @override
  String get workCardFontSizeSubtitle => '작품 카드 제목과 메타데이터 글자 크기를 조절합니다';

  @override
  String get cardSizeNormal => '보통';

  @override
  String get cardSizeLarge => '큼';

  @override
  String get cardSizeExtraLarge => '아주 큼';

  @override
  String get fontSizeNormal => '보통';

  @override
  String get fontSizeLarge => '큼';

  @override
  String get fontSizeExtraLarge => '아주 큼';

  @override
  String get showSubtitleTagOnCard => '작품 카드에 자막 태그 표시';

  @override
  String get showAgeRatingOnCard => '작품 카드에 연령 등급 표시';

  @override
  String get showOnlineMarks => '온라인 표시 작품 보기';

  @override
  String get cannotBeDisabled => '사용 중지할 수 없음';

  @override
  String get showPlaylists => '만든 플레이리스트 표시';

  @override
  String get showSubtitleLibrary => '자막 보관함 관리 표시';

  @override
  String get playlistPrivacyPrivateDesc => '나만 볼 수 있습니다';

  @override
  String get playlistPrivacyUnlistedDesc => '링크가 있는 사람만 볼 수 있습니다';

  @override
  String get playlistPrivacyPublicDesc => '누구나 볼 수 있습니다';

  @override
  String get clearTranslationCache => '번역 캐시 삭제';

  @override
  String get translationCacheCleared => '번역 캐시를 삭제했습니다';

  @override
  String get platformHintAndroid =>
      'Android: 시스템 파일 선택기를 사용합니다. 저장소 권한이 필요할 수 있습니다';

  @override
  String get platformHintIOS =>
      'iOS: 시스템 제한으로 기본 경로를 사용합니다. 파일 앱에서 파일에 접근할 수 있습니다';

  @override
  String get platformHintWindows => 'Windows: 접근 가능한 폴더를 선택할 수 있습니다';

  @override
  String get platformHintMacOS => 'macOS: 접근 가능한 폴더를 선택할 수 있습니다';

  @override
  String get platformHintLinux => 'Linux: 접근 가능한 폴더를 선택할 수 있습니다';

  @override
  String get platformHintDefault => '다운로드 파일을 저장할 폴더를 선택하세요';

  @override
  String get subtitleFolderParsed => '분류됨';

  @override
  String get subtitleFolderSaved => '저장됨';

  @override
  String get subtitleFolderUnknown => '알 수 없는 작품';

  @override
  String get sortDownloadDate => '다운로드 날짜';

  @override
  String get sortWorkId => 'ID';

  @override
  String get searchDownloads => '다운로드한 작품 검색...';

  @override
  String get logTitle => '앱 로그';

  @override
  String get logSubtitle => '앱 로그를 확인하고 내보냅니다';

  @override
  String get logSearchHint => '로그 검색...';

  @override
  String get logFilterAll => '전체';

  @override
  String get logCopy => '로그 복사';

  @override
  String get logExport => '로그 파일 내보내기';

  @override
  String get logClear => '로그 삭제';

  @override
  String get logCopied => '로그를 클립보드에 복사했습니다';

  @override
  String logExported(String path) {
    return '로그를 내보냈습니다: $path';
  }

  @override
  String logCount(int count) {
    return '항목 $count개';
  }

  @override
  String get logAutoScroll => '자동 스크롤';

  @override
  String get logEmpty => '로그가 없습니다';

  @override
  String get proxySettingsOptional => '프록시';

  @override
  String get loginAdvancedSettings => '고급 설정';

  @override
  String proxyEnabled(String address) {
    return '사용 중: $address';
  }

  @override
  String get proxyAddressNotSet => '설정 안 됨 (직접 연결)';

  @override
  String get proxyHttpDescription => 'HTTP 프록시를 통해 연결합니다';

  @override
  String get useProxy => '프록시 사용';

  @override
  String get proxyAddress => '프록시 주소';

  @override
  String get proxyAddressFormat => '형식: host:port (예: 127.0.0.1:7890)';

  @override
  String get applyProxyAddress => '프록시 주소 적용';

  @override
  String get invalidProxyAddress => '올바른 HTTP 프록시 주소와 포트를 입력하세요';

  @override
  String get proxyModeDirect => '직접 연결';

  @override
  String get proxyModeSystem => '시스템 프록시';

  @override
  String get proxyModeManual => '수동 프록시';

  @override
  String get proxyModeDirectDescription => '프록시 없이 연결합니다';

  @override
  String get proxyModeSystemDescription => '운영 체제의 프록시 설정을 사용합니다';

  @override
  String get proxyModeManualDescription => '아래에 설정한 HTTP 프록시를 사용합니다';

  @override
  String get playlistDisplayFormat => '플레이리스트 레이아웃';

  @override
  String get playlistDisplayFormatMasonry => '벽돌형';

  @override
  String get playlistDisplayFormatList => '목록';
}
