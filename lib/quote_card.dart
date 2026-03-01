import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '"${quote.text}"',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
              ),
              onPressed: delete,
              icon: Icon(Icons.delete, size: 16),
              label: Text('Delete Quote'),
            ),
          ],
        ),
      ),
    );
  }
}
