import 'dart:convert';

import 'item.dart';

class MovieResponse {
	List<Item>? items;
	String? errorMessage;

	MovieResponse({this.items, this.errorMessage});

	@override
	String toString() {
		return 'MovieResponse(items: $items, errorMessage: $errorMessage)';
	}

	factory MovieResponse.fromMap(Map<String, dynamic> data) => MovieResponse(
				items: (data['items'] as List<dynamic>?)
						?.map((e) => Item.fromMap(e as Map<String, dynamic>))
						.toList(),
				errorMessage: data['errorMessage'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'items': items?.map((e) => e.toMap()).toList(),
				'errorMessage': errorMessage,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieResponse].
	factory MovieResponse.fromJson(String data) {
		return MovieResponse.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [MovieResponse] to a JSON string.
	String toJson() => json.encode(toMap());
}
