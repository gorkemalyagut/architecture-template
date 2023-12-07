import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
part 'attributes.g.dart';

@JsonSerializable()
@immutable

/// This model will use X api response
final class Attributes with EquatableMixin {
  /// The `const Attributes({ ... })` is a constructor for the `Attributes` class. It allows you to create
  /// an instance of the `Attributes` class with the specified parameters: `title`, `body`, `created`, and
  /// `updated`.
  const Attributes({
    this.title,
    this.body,
    this.created,
    this.updated,
  });

  /// The above code is a factory constructor in Dart that converts
  /// a JSON object into an instance of the
  /// Attributes class.
  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);
  final String? title;
  final String? body;
  final DateTime? created;
  final DateTime? updated;

  /// The function converts an object of type Attributes to a JSON map.
  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  @override
  List<Object?> get props => [title, body, created, updated];

  /// The `copyWith` method in the `Attributes` class is a convenient way to
  /// create a new instance of the
  /// `Attributes` class with updated values for specific properties.
  Attributes copyWith({
    String? title,
    String? body,
    DateTime? created,
    DateTime? updated,
  }) {
    return Attributes(
      title: title ?? this.title,
      body: body ?? this.body,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}
