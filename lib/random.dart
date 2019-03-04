import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  final _saved = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase);
    return  new Scaffold(
        appBar: new AppBar(
          title: new Text("Random"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list), onPressed: _pushSave)
          ],
        ),
        body: buildSuggest(context));
  }

  Widget buildSuggest(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return new Divider();
          }

          final index = i ~/ 2;

          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair wordPair) {
    final alreadySaved = _saved.contains(wordPair);

    return new ListTile(
      title: new Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }

  void _pushSave() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tile = _saved.map(
            (wordPair) {
              return new ListTile(
                title: new Text(
                  wordPair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );

          final divided =
              ListTile.divideTiles(context: context, tiles: tile).toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saves Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }
}
