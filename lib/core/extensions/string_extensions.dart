extension StringExtensions on String {
  String namedRoute() {
    return replaceFirst('/', '');
  }
}
