import 'package:wowsinfo/core/data/GameServer.dart';
import 'package:wowsinfo/core/models/WoWs/AccountCreatedAt.dart';
import 'package:wowsinfo/core/parsers/APIParser.dart';

class AccountCreatedAtParser extends APIParser {
  AccountCreatedAtParser(GameServer server, String player) : super(server) {
    this.link += '/wgn/account/list/';
    addAPIKey();
    this.link += '&fields=created_at&search=$player';
  }

  @override
  AccountCreatedAt parse(List<Map<String, dynamic>> json) {
    if (json.length == 0) return null;
    final data = AccountCreatedAt(json[0]['data']);
    return data;
  }
}