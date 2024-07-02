// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Item {
  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.imageURL,
    required this.founderId,
    required this.foundAt,
    required this.foundOn,
  });
  factory Item.falso() {
    return Item(
      id: 'id',
      name: 'name',
      description: 'description',
      imageURL: 'imageURL',
      founderId: 'founderId',
      foundAt: 'foundAt',
      foundOn: 'foundOn',
    );
  }

  final String id;
  final String name;
  final String description;
  final String imageURL;
  final String founderId;
  final String foundAt;
  final String foundOn;

  Item copyWith({
    String? id,
    String? name,
    String? description,
    String? imageURL,
    String? founderId,
    String? foundAt,
    String? foundOn,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      founderId: founderId ?? this.founderId,
      foundAt: foundAt ?? this.foundAt,
      foundOn: foundOn ?? this.foundOn,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'imageURL': imageURL,
      'founderId': founderId,
      'foundAt': foundAt,
      'foundOn': foundOn,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      imageURL: map['imageURL'] as String,
      founderId: map['founderId'] as String,
      foundAt: map['foundAt'] as String,
      foundOn: map['foundOn'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, '
        'founderId: $founderId,'
        ' imageURL: $imageURL, foundAt: $foundAt, foundOn: $foundOn)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.imageURL == imageURL &&
        other.founderId == founderId &&
        other.foundAt == foundAt &&
        other.foundOn == foundOn;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        imageURL.hashCode ^
        founderId.hashCode ^
        foundAt.hashCode ^
        foundOn.hashCode;
  }
}
