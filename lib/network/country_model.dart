import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel {
  final Name name;
  final List<String> tld;
  final String cca2;
  final String ccn3;
  final String cca3;
  final String? cioc;
  final bool independent;
  final String status;
  final bool unMember;
  final Map<String, Currency> currencies;
  final Idd idd;
  final List<String> capital;
  final List<String> altSpellings;
  final String region;
  final String subregion;
  final Map<String, dynamic> languages;
  final List<num> latlng;
  final bool landlocked;
  final num area;
  final Map<String, Demonym> demonyms;
  final String flag;
  final int population;
  final List<String> timezones;
  final Flag flags;
  final CoatOfArms coatOfArms;
  final String startOfWeek;
  final List<String> continents;
  final Car car;
  final Map<String, Translation> translations;
  final Maps maps;
  final Map<String, dynamic>? gini;
  final List<String>? borders;

  CountryModel({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.latlng,
    required this.landlocked,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.population,
    required this.timezones,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.continents,
    required this.car,
    required this.translations,
    required this.maps,
    required this.gini,
    required this.borders,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}

@JsonSerializable()
class Name {
  final String common;
  final String official;
  final Map<String, NativeName> nativeName;

  Name(
      {required this.common, required this.official, required this.nativeName});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class NativeName {
  final String common;
  final String official;

  NativeName(
      {required this.common, required this.official});

  factory NativeName.fromJson(Map<String, dynamic> json) => _$NativeNameFromJson(json);

  Map<String, dynamic> toJson() => _$NativeNameToJson(this);
}

@JsonSerializable()
class Currency {
  final String name;
  final String? symbol;

  Currency({required this.name, required this.symbol});

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}

@JsonSerializable()
class Idd {
  final String root;
  final List<String> suffixes;

  Idd({required this.root, required this.suffixes});

  factory Idd.fromJson(Map<String, dynamic> json) => _$IddFromJson(json);

  Map<String, dynamic> toJson() => _$IddToJson(this);
}

@JsonSerializable()
class Flag {
  final String png;
  final String svg;
  final String? alt;

  Flag({required this.png, required this.svg, this.alt});

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);

  Map<String, dynamic> toJson() => _$FlagToJson(this);
}

@JsonSerializable()
class CoatOfArms {
  final String png;
  final String svg;

  CoatOfArms({required this.png, required this.svg});

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => _$CoatOfArmsFromJson(json);

  Map<String, dynamic> toJson() => _$CoatOfArmsToJson(this);
}

@JsonSerializable()
class Car {
  final List<String> signs;
  final String side;

  Car({required this.signs, required this.side});

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}

@JsonSerializable()
class Translation {
  final String official;
  final String common;

  Translation({required this.official, required this.common});

  factory Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);

  Map<String, dynamic> toJson() => _$TranslationToJson(this);
}

@JsonSerializable()
class Demonym {
  final String f;
  final String m;

  Demonym({required this.f, required this.m});

  factory Demonym.fromJson(Map<String, dynamic> json) => _$DemonymFromJson(json);

  Map<String, dynamic> toJson() => _$DemonymToJson(this);
}

@JsonSerializable()
class Maps {
  final String googleMaps;
  final String openStreetMaps;

  Maps({required this.googleMaps, required this.openStreetMaps});

  factory Maps.fromJson(Map<String, dynamic> json) => _$MapsFromJson(json);

  Map<String, dynamic> toJson() => _$MapsToJson(this);
}
