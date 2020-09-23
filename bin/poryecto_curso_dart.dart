// import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:poryecto_curso_dart/poryecto_curso_dart.dart' as paquetes;
import 'package:poryecto_curso_dart/clases/request_response.dart';

void main(List<String> arguments) {
  final url = 'https://restcountries.eu/rest/v2/alpha/col';
  http.get(url).then((res) {
    final rq = welcomeFromJson(res.body);
    final name = rq.name,
        poblacion = rq.population,
        frontier = rq.borders,
        leng = rq.languages[0].nativeName;
    final lat = rq.latlng[0],
        lon = rq.latlng[1],
        mon = rq.currencies[0].name,
        flag = rq.flag;
    print("""
    ===============================================
    Pais: $name
    Poblacion: $poblacion
    Fronteras:""");
    frontier.forEach((element) => print("\t $element"));
    print("""
    Lenguaje: $leng
    Latitud: $lat
    Longitud: $lon
    Moneda: $mon
    Bandera: $flag
    ===============================================
    """);
    print(rq.translations.es);
  });
}
