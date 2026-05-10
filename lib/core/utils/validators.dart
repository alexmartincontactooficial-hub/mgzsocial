abstract final class Validators {
  static bool isValidEmail(String value) {
    return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(value);
  }

  static bool isNotBlank(String value) => value.trim().isNotEmpty;
}
