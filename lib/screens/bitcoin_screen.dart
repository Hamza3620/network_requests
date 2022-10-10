import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:network_requests/models.dart/bitcoin_model.dart';

class BitCoinScreen extends StatefulWidget {
  const BitCoinScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;
  @override
  State<BitCoinScreen> createState() => _BitCoinScreenState();
}

class _BitCoinScreenState extends State<BitCoinScreen> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _callApi(widget.apiLink);
  }

  List<BitCoinHistory>? bitcoinHistoryList = [];
  _callApi(apiLink) async {
    try {
      setState(() {
        _isLoading = true;
      });
      var url = Uri.parse(widget.apiLink);
      http.Response response = await http.get(url);

      Iterable I = json.decode(response.body);

      bitcoinHistoryList = List<BitCoinHistory>.from(
          I.map((model) => BitCoinHistory.fromJson(model)));
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: bitcoinHistoryList!.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Text('${bitcoinHistoryList![index].date}'),
                  );
                }));
  }
}
