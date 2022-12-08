import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tubes_masakan_1/models/recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('tasty.p.rapidapi.com', '/recipes/list',
        {"from": "0", "size": "20", "tags": "under_30_minutes"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "5b6bf6f7b4msh4378742f80f1ccap1eef26jsn1fad7c45794d",
      "x-rapidapi-host": "tasty.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['results']) {
      _temp.add(i);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
