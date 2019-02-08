part of flutter_parse_sdk;

/// Checks whether debug is enabled
///
/// Debug can be set in 2 places, one global param in the Parse.initialise, and
/// then can be overidden class by class
bool isDebugEnabled({bool objectLevelDebug}) {
  return objectLevelDebug ?? ParseCoreData().debug ?? false;
}

/// Converts the object to the correct value for JSON,
///
/// Strings are wrapped with "" but ints and others are not
convertValueToCorrectType(dynamic value) {
  if (value is String && !value.contains('__type')) {
    return "\"$value\"";
  } else {
    return value;
  }
}
