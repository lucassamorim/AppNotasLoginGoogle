import 'package:flutter/material.dart';

class NoteWidget extends StatelessWidget {
  final String note;
  final int index;
  final Function(int) editNote;
  final Function(int) removeNote;
  const NoteWidget(
      {Key? key,
      required this.note,
      required this.index,
      required this.editNote,
      required this.removeNote})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ListTile(
          title: Text(note),
          onTap: () {
            editNote(index);
          },
          trailing: ElevatedButton(
            onPressed: () {
              removeNote(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}
