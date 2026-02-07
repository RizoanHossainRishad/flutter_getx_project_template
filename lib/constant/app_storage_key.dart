class AppStorageKey {
  AppStorageKey._privateConstructor();
  static final AppStorageKey _instance = AppStorageKey._privateConstructor();
  static AppStorageKey get instance => _instance;
  String accessToken = "accessToken";
  String refreshToken = "refreshToken";
  String onboard = "onboard";
  String suggestion = "suggestion";
  String userData = "userData";
  String userRole = "userRole";
  String language = "language";
  String country = "country";
}
