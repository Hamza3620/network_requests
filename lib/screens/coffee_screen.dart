import 'package:flutter/material.dart';

class CoffeeScreen extends StatefulWidget {
  const CoffeeScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;
  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _callApi(widget.apiLink);
  }

  _callApi(apiLink) {
    try {
      setState(() {
        _isLoading = true;
      });
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
            : Column(
                children: [],
              ));
  }
}
