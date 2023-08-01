class Number {
  final int count;
  Number({required this.count});
  Number copyWith({
    int? count,
  }) {
    return Number(
      count: count ?? this.count,
    );
  }

}
