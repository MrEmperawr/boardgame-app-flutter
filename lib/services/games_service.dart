import '../clients/http_client.dart';
import '../pages/models/models.dart';

class GameService {
  final HttpClient _httpClient;

  GameService(this._httpClient);

  Future<List<Game>> getGames() async {
    final response =
        await _httpClient.get('http://localhost:3000/api/boardgames');

    if (response is List) {
      return response.map((e) => Game.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load games');
    }
  }
}
