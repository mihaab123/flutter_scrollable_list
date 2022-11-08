// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemModel {
  final String id;
  final String name;
  final String description;
  ItemModel({
    required this.id,
    required this.name,
    required this.description,
  });

  ItemModel copyWith({
    String? id,
    String? name,
    String? description,
  }) {
    return ItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source)["data"] as Map<String, dynamic>);

  @override
  String toString() =>
      'ItemModel(id: $id, name: $name, description: $description)';

  @override
  bool operator ==(covariant ItemModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ description.hashCode;
}

String MockData = Uri.decodeComponent(
    '{data: "%7B%0A%20%20%20%20id%3A%20u64%2C%0A%20%20%20%20name%3A%20TestName%2C%0A%20%20%20%20description%3ADescription%20so%20long%20as%20possible%20in%20json%20but%20not%20her...%0A%7D"}');
