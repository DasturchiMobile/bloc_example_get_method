
class Failure {
  final String errorMsg;
  Failure({required this.errorMsg});

  @override
  List<Object?> get props => [errorMsg];
}