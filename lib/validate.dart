class Validate {

  static final RegExp _nameRegex = RegExp(r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$");

  static String? validateNameAddress(String name) {
    final _hasMatched = _nameRegex.hasMatch(name);
    if (!_hasMatched) {
      return 'Please enter a valid Name.';
    } else {
      return null;
    }
  }

  static final RegExp _emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  static String? validateEmailAddress(String email) {
    final _hasMatched = _emailRegex.hasMatch(email);
    if (!_hasMatched) {
      return 'Please enter a valid Email ID';
    } else {
      return null;
    }
  }

  static final RegExp _mobileRegex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

  static String? validateMobileAddress(String mobile) {
    final _hasMatched = _mobileRegex.hasMatch(mobile);
    if (!_hasMatched) {
      return 'Please enter a valid Mobile no.';
    } else {
      return null;
    }
  }
  static final RegExp _cityRegex = RegExp(r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$");

  static String? validateCityAddress(String city) {
    final _hasMatched = _cityRegex.hasMatch(city);
    if (!_hasMatched) {
      return 'Please enter a valid City.';
    } else {
      return null;
    }
  }
  static final RegExp _passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  static String? validatePasswordAddress(String password) {
    final _hasMatched = _passwordRegex.hasMatch(password);
    if (!_hasMatched) {
      return 'Please enter a valid Password.';
    } else {
      return null;
    }
  }
  static final RegExp _conformpasswordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  static String? validateConformPasswordAddress(String conformpassword) {
    final _hasMatched = _conformpasswordRegex.hasMatch(conformpassword);
    if (!_hasMatched) {
      return 'Please enter a valid Conform Password.';
    } else {
      return null;
    }
  }
}
