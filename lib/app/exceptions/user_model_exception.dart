class UserModelException implements Exception {
  String cause;

  UserModelException(this.cause);

  

  @override
  String toString() {
    return cause;
  }
}