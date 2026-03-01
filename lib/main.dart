import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'This is my first quote',
    'This is my second quote',
    'This is my third quote',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return Center(
            child: Card(
              margin: EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(quote, style: TextStyle(fontSize: 18)),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
