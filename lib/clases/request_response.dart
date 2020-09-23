// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Pais welcomeFromJson(String str) => Pais.fromJson(json.decode(str));

String welcomeToJson(Pais data) => json.encode(data.toJson());

class Pais {
  Pais({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.gini,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.currencies,
    this.languages,
    this.translations,
    this.flag,
    this.regionalBlocs,
    this.cioc,
  });

  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String region;
  String subregion;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;
  List<Moneda_Nacional> currencies;
  List<Lenguaje> languages;
  Traduccion translations;
  String flag;
  List<Bloque_Regional> regionalBlocs;
  String cioc;

  factory Pais.fromJson(Map<String, dynamic> json) => Pais(
        name: json["name"],
        topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
        capital: json["capital"],
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        population: json["population"],
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        demonym: json["demonym"],
        area: json["area"],
        gini: json["gini"].toDouble(),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        borders: List<String>.from(json["borders"].map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        currencies: List<Moneda_Nacional>.from(
            json["currencies"].map((x) => Moneda_Nacional.fromJson(x))),
        languages: List<Lenguaje>.from(
            json["languages"].map((x) => Lenguaje.fromJson(x))),
        translations: Traduccion.fromJson(json["translations"]),
        flag: json["flag"],
        regionalBlocs: List<Bloque_Regional>.from(
            json["regionalBlocs"].map((x) => Bloque_Regional.fromJson(x))),
        cioc: json["cioc"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "topLevelDomain": List<dynamic>.from(topLevelDomain.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": List<dynamic>.from(callingCodes.map((x) => x)),
        "capital": capital,
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "population": population,
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "demonym": demonym,
        "area": area,
        "gini": gini,
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "currencies": List<dynamic>.from(currencies.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
        "translations": translations.toJson(),
        "flag": flag,
        "regionalBlocs":
            List<dynamic>.from(regionalBlocs.map((x) => x.toJson())),
        "cioc": cioc,
      };
}

class Moneda_Nacional {
  Moneda_Nacional({
    this.code,
    this.name,
    this.symbol,
  });

  String code;
  String name;
  String symbol;

  factory Moneda_Nacional.fromJson(Map<String, dynamic> json) =>
      Moneda_Nacional(
        code: json["code"],
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
      };
}

class Lenguaje {
  Lenguaje({
    this.iso6391,
    this.iso6392,
    this.name,
    this.nativeName,
  });

  String iso6391;
  String iso6392;
  String name;
  String nativeName;

  factory Lenguaje.fromJson(Map<String, dynamic> json) => Lenguaje(
        iso6391: json["iso639_1"],
        iso6392: json["iso639_2"],
        name: json["name"],
        nativeName: json["nativeName"],
      );

  Map<String, dynamic> toJson() => {
        "iso639_1": iso6391,
        "iso639_2": iso6392,
        "name": name,
        "nativeName": nativeName,
      };
}

class Bloque_Regional {
  Bloque_Regional({
    this.acronym,
    this.name,
    this.otherAcronyms,
    this.otherNames,
  });

  String acronym;
  String name;
  List<String> otherAcronyms;
  List<String> otherNames;

  factory Bloque_Regional.fromJson(Map<String, dynamic> json) =>
      Bloque_Regional(
        acronym: json["acronym"],
        name: json["name"],
        otherAcronyms: List<String>.from(json["otherAcronyms"].map((x) => x)),
        otherNames: List<String>.from(json["otherNames"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "name": name,
        "otherAcronyms": List<dynamic>.from(otherAcronyms.map((x) => x)),
        "otherNames": List<dynamic>.from(otherNames.map((x) => x)),
      };
}

class Traduccion {
  Traduccion({
    this.de,
    this.es,
    this.fr,
    this.ja,
    this.it,
    this.br,
    this.pt,
    this.nl,
    this.hr,
    this.fa,
  });

  String de;
  String es;
  String fr;
  String ja;
  String it;
  String br;
  String pt;
  String nl;
  String hr;
  String fa;

  factory Traduccion.fromJson(Map<String, dynamic> json) => Traduccion(
        de: json["de"],
        es: json["es"],
        fr: json["fr"],
        ja: json["ja"],
        it: json["it"],
        br: json["br"],
        pt: json["pt"],
        nl: json["nl"],
        hr: json["hr"],
        fa: json["fa"],
      );

  Map<String, dynamic> toJson() => {
        "de": de,
        "es": es,
        "fr": fr,
        "ja": ja,
        "it": it,
        "br": br,
        "pt": pt,
        "nl": nl,
        "hr": hr,
        "fa": fa,
      };
}
