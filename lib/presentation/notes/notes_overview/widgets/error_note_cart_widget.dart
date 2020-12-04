import 'package:ddd_notes/domain/notes/note.dart';
import 'package:flutter/material.dart';

class ErrorNoteCard extends StatelessWidget {
  final Note note;

  const ErrorNoteCard({
    Key key,
    @required this.note,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Invalid note, please contact support',
            style: Theme.of(context)
                .primaryTextTheme
                .bodyText2
                .copyWith(fontSize: 18),
          ),
          const SizedBox(height: 2),
          Text(
            'Details:',
            style: Theme.of(context).primaryTextTheme.bodyText2,
          ),
          Text(
            note.failureOption.fold(() => '', (f) => f.toString()),
            style: Theme.of(context).primaryTextTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
