// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      tld: (json['tld'] as List<dynamic>).map((e) => e as String).toList(),
      cca2: json['cca2'] as String,
      ccn3: json['ccn3'] as String,
      cca3: json['cca3'] as String,
      cioc: json['cioc'] as String?,
      independent: json['independent'] as bool,
      status: json['status'] as String,
      unMember: json['unMember'] as bool,
      currencies: (json['currencies'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Currency.fromJson(e as Map<String, dynamic>)),
      ),
      idd: Idd.fromJson(json['idd'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      altSpellings: (json['altSpellings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      region: json['region'] as String,
      subregion: json['subregion'] as String,
      languages: json['languages'] as Map<String, dynamic>,
      latlng: (json['latlng'] as List<dynamic>).map((e) => e as num).toList(),
      landlocked: json['landlocked'] as bool,
      area: json['area'] as num,
      demonyms: (json['demonyms'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Demonym.fromJson(e as Map<String, dynamic>)),
      ),
      flag: json['flag'] as String,
      population: json['population'] as int,
      timezones:
          (json['timezones'] as List<dynamic>).map((e) => e as String).toList(),
      flags: Flag.fromJson(json['flags'] as Map<String, dynamic>),
      coatOfArms:
          CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>),
      startOfWeek: json['startOfWeek'] as String,
      continents: (json['continents'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      translations: (json['translations'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Translation.fromJson(e as Map<String, dynamic>)),
      ),
      maps: Maps.fromJson(json['maps'] as Map<String, dynamic>),
      gini: json['gini'] as Map<String, dynamic>?,
      borders:
          (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'tld': instance.tld,
      'cca2': instance.cca2,
      'ccn3': instance.ccn3,
      'cca3': instance.cca3,
      'cioc': instance.cioc,
      'independent': instance.independent,
      'status': instance.status,
      'unMember': instance.unMember,
      'currencies': instance.currencies,
      'idd': instance.idd,
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'region': instance.region,
      'subregion': instance.subregion,
      'languages': instance.languages,
      'latlng': instance.latlng,
      'landlocked': instance.landlocked,
      'area': instance.area,
      'demonyms': instance.demonyms,
      'flag': instance.flag,
      'population': instance.population,
      'timezones': instance.timezones,
      'flags': instance.flags,
      'coatOfArms': instance.coatOfArms,
      'startOfWeek': instance.startOfWeek,
      'continents': instance.continents,
      'car': instance.car,
      'translations': instance.translations,
      'maps': instance.maps,
      'gini': instance.gini,
      'borders': instance.borders,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      common: json['common'] as String,
      official: json['official'] as String,
      nativeName: (json['nativeName'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, NativeName.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
      'nativeName': instance.nativeName,
    };

NativeName _$NativeNameFromJson(Map<String, dynamic> json) => NativeName(
      common: json['common'] as String,
      official: json['official'] as String,
    );

Map<String, dynamic> _$NativeNameToJson(NativeName instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
    };

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      name: json['name'] as String,
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
    };

Idd _$IddFromJson(Map<String, dynamic> json) => Idd(
      root: json['root'] as String,
      suffixes:
          (json['suffixes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IddToJson(Idd instance) => <String, dynamic>{
      'root': instance.root,
      'suffixes': instance.suffixes,
    };

Flag _$FlagFromJson(Map<String, dynamic> json) => Flag(
      png: json['png'] as String,
      svg: json['svg'] as String,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$FlagToJson(Flag instance) => <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
      'alt': instance.alt,
    };

CoatOfArms _$CoatOfArmsFromJson(Map<String, dynamic> json) => CoatOfArms(
      png: json['png'] as String,
      svg: json['svg'] as String,
    );

Map<String, dynamic> _$CoatOfArmsToJson(CoatOfArms instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
    };

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      signs: (json['signs'] as List<dynamic>).map((e) => e as String).toList(),
      side: json['side'] as String,
    );

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'signs': instance.signs,
      'side': instance.side,
    };

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
      official: json['official'] as String,
      common: json['common'] as String,
    );

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
    <String, dynamic>{
      'official': instance.official,
      'common': instance.common,
    };

Demonym _$DemonymFromJson(Map<String, dynamic> json) => Demonym(
      f: json['f'] as String,
      m: json['m'] as String,
    );

Map<String, dynamic> _$DemonymToJson(Demonym instance) => <String, dynamic>{
      'f': instance.f,
      'm': instance.m,
    };

Maps _$MapsFromJson(Map<String, dynamic> json) => Maps(
      googleMaps: json['googleMaps'] as String,
      openStreetMaps: json['openStreetMaps'] as String,
    );

Map<String, dynamic> _$MapsToJson(Maps instance) => <String, dynamic>{
      'googleMaps': instance.googleMaps,
      'openStreetMaps': instance.openStreetMaps,
    };
