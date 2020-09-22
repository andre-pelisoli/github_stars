import 'package:flutter/material.dart';

void main() {
  runApp(GithubStarsApp());
}

class GithubStarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Stars App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GitHubStarsHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class GitHubStarsHomePage extends StatefulWidget {
  GitHubStarsHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GitHubStarsHomePageSate createState() => _GitHubStarsHomePageSate();
}

class _GitHubStarsHomePageSate extends State<GitHubStarsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
