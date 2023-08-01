import 'package:flutter/material.dart';
import 'main.dart';
import 'notepage.dart'; 

class HomeNotePage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
   
   return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Note")),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: 
          List.generate(
            noteList.length,
           (index){
            return
               Card(
              child: ListTile(
                leading: Icon(Icons.note),
                title: Text(
              noteList.elementAt(index),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 30,
              ),
              ),
              trailing: IconButton(
                onPressed: (){
                  showDialog(
                    context: context,
                   builder: (contex){
                    return   AlertDialog(
                      title: Text("Delete"),
                      content: Text("Do you want to delete"),
                      actions: [
                        ElevatedButton(
                          onPressed: (){
                            noteList.removeAt(index);
                            Navigator.pop(context);
                          },
                         child: Text("Yes"),
                         ),
                         ElevatedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                         child: Text("No"),
                         ),
                      ],
                    );
                   }
                   );
                 // noteList.removeAt(index);
                },
               icon: Icon(Icons.delete)
               ),
            ),
               );
            // Text(
             // noteList.elementAt(index),
              //style: TextStyle(
               // fontSize: 40
             // ),
             //);
          }
          ),
          //children: [
          //  Card(
             // child: ListTile(
               // leading: Icon(Icons.note),
                //title: Text("Note Detailes"),
             // ),
           // ),
            //Card(
              //child: ListTile(
               // leading: Icon(Icons.note),
               // title: Text("Note Detailes"),
             // ),
            //),
            //Card(
             // child: ListTile(
               // leading: Icon(Icons.note),
                //title: Text("Note Detailes"),
             // ),
           // ),
         // ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed:() {
         print(noteList.length);
          Navigator.push(
            context,
            MaterialPageRoute(
             builder: (_) {
            return NoteAddPage();
           }
           ) 
          );
        },
        child: Icon(Icons.note_add),
        ),
   );
  }
}
