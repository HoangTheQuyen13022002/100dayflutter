class Categories {
  final int id;
  final String name;
  final bool active;

  const Categories({required this.id, required this.name, required this.active});

  Categories copyWith({int? id, String? name, bool? active}) {
    return Categories(
      id: id ?? this.id,
      name: name ?? this.name,
      active: active ?? this.active,
    );
  }
}