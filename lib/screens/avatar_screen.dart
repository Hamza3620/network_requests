import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:network_requests/models.dart/avatar_model.dart';
import 'package:permission_handler/permission_handler.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;
  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _callApi(widget.apiLink);

    _permissionCall();
  }

  _permissionCall() async {
    var status = await Permission.camera.status;

    await Permission.camera.request();
    debugPrint(status.toString());
  }

  List<AvatarInfoModel>? avatarInfo = [];

  _callApi(apiLink) async {
    try {
      setState(() {
        _isLoading = true;
      });

      http.Response response = await http.get(Uri.parse(widget.apiLink));
      Iterable l = json.decode(response.body);
      avatarInfo = List<AvatarInfoModel>.from(
          l.map((model) => AvatarInfoModel.fromJson(model)));
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
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Number of years aired: ${avatarInfo![index].yearsAired}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            '${avatarInfo![index].synopsis}',
                            style: const TextStyle(
                                fontSize: 18, fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: avatarInfo!.length,
                ),
              ));
  }
}
