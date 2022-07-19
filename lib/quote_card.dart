import 'package:flutter/material.dart';
import 'quote.dart';

class QuodeCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  const QuodeCard({
    Key? key,
    required this.quote,
    required this.delete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              onPressed: delete,
              label: const Text('Delete quote'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
