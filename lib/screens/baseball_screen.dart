import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:network_requests/models.dart/baseball_model.dart';

class BaseballScreen extends StatefulWidget {
  const BaseballScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;
  @override
  State<BaseballScreen> createState() => _BaseballScreenState();
}

class _BaseballScreenState extends State<BaseballScreen> {
  bool _isLoading = false;

  List<BaseBallModel>? baseballInfo = [];

  @override
  void initState() {
    super.initState();
    _callApi(widget.apiLink);
  }

  _callApi(apiLink) async {
    try {
      setState(() {
        _isLoading = true;
      });

      http.Response response = await http.get(Uri.parse(widget.apiLink));
      Iterable l = json.decode(response.body);
      baseballInfo = List<BaseBallModel>.from(
          l.map((model) => BaseBallModel.fromJson(model)));
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
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: baseballInfo!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        '${baseballInfo![index].id} - ${baseballInfo![index].player}'),
                  );
                }));
  }
}
