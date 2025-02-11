import 'dart:convert';

import 'package:taxi_driver/utils/Extensions/app_common.dart';

extension StringExtension on String? {
  static String urlPattern =
      r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';

  static String phonePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

  static String emailPattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  /// Check email validation
  bool validateEmail() => hasMatch(this, emailPattern);

  /// Check phone validation
  bool validatePhone() => hasMatch(this, phonePattern);

  /// Check URL validation
  bool validateURL() => hasMatch(this, urlPattern);

  /// Returns true if given String is null or isEmpty
  bool get isEmptyOrNull => this == null || (this != null && this!.isEmpty) || (this != null && this! == 'null');

  /// Capitalize given String
  String capitalizeFirstLetterOld() => (validate().length >= 1) ? (this!.substring(0, 1).toUpperCase() + this!.substring(1).toLowerCase()) : validate();
  // String capitalizeFirstLetter2() =>
  //     // this.split(" ")
  //     (validate().length >= 1) ? (this!.substring(0, 1).toUpperCase() + this!.substring(1).toLowerCase()) : validate();
  // this function capitalize every word after space
  String capitalizeFirstLetter() {
    final String str = validate();

    // Split the string into words, capitalize each word, and join them back together
    return str.split(' ')
        .map((word) => word.isNotEmpty
        ? word[0].toUpperCase() + word.substring(1).toLowerCase()
        : '')
        .join(' ');
  }

  // Check null string, return given value if null
  String validate({String value = ''}) {
    if (this.isEmptyOrNull) {
      return value;
    } else {
      return this!;
    }
  }

  bool isJson() {
    try {
      json.decode(this.validate());
    } catch (e) {
      return false;
    }
    return true;
  }
  String splitBefore(Pattern pattern) {
    ArgumentError.checkNotNull(pattern, 'pattern');
    var matchIterator = pattern.allMatches(this.validate()).iterator;

    Match? match;
    while (matchIterator.moveNext()) {
      match = matchIterator.current;
    }

    if (match != null) {
      return this.validate().substring(0, match.start);
    }
    return '';
  }

  String splitAfter(Pattern pattern) {
    ArgumentError.checkNotNull(pattern, 'pattern');
    var matchIterator = pattern.allMatches(this!).iterator;

    if (matchIterator.moveNext()) {
      var match = matchIterator.current;
      var length = match.end - match.start;
      return this.validate().substring(match.start + length);
    }
    return '';
  }

  /// Return double value of given string
  double toDouble({double defaultValue = 0.0}) {
    if (this == null) return defaultValue;

    try {
      return double.parse(this!);
    } catch (e) {
      return defaultValue;
    }
  }
}
