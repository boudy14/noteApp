import 'package:flutter/material.dart';
import 'package:note/main.dart';

class NoteAddPage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   TextEditingController note = TextEditingController();
   return Scaffold(
    appBar: AppBar(
      title: Text("Note Add "),
    ),
    body:Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text("Enter Your Note ",
        style: 
        TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold
        ),
        ),
         SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: note,
            maxLines: 6,
            minLines:6,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              
            ),
          ),
        ),
      ],
    ) ,
   
   
   floatingActionButton: FloatingActionButton(
    onPressed: (){
      noteList.add(note.text);
      //print(note.text);
    },
    child: Icon(Icons.note_add),
    ),
   );
  }
}
