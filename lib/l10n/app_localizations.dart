class AppLocalizations {
  const AppLocalizations(this.localeName);

  final String localeName;

  String get appTitle => 'NO.SO';
  String get tagline => localeName.startsWith('es')
      ? 'Un sistema social modular, visual y emocional.'
      : 'A modular, visual and emotional social system.';
}
