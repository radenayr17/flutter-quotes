import 'package:flutter/material.dart';

import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      text:
          'The only limit to our realization of tomorrow will be our doubts of today.',
      author: 'Franklin D. Roosevelt',
    ),
    Quote(
      text:
          'Life is not measured by the number of breaths we take, but by the moments that take our breath away.',
      author: 'Maya Angelou',
    ),
    Quote(
      text:
          'You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose.',
      author: 'Dr. Seuss',
    ),
  ];

  void _deleteQuote(Quote quote) {
    setState(() {
      quotes.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Quotes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map(
              (quote) =>
                  QuoteCard(quote: quote, delete: () => _deleteQuote(quote)),
            )
            .toList(),
      ),
    );
  }
}
