import 'package:flutter/material.dart';
import 'package:notesapp/components/Bottomsheetcomponen.dart';
import 'package:notesapp/components/ItemBulider.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,

        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: Colors.grey[900],
            context: context,
            builder: (context) {
              // prefering using make stless widgit  extenernal
              return const Bottomsheet();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Notes APP", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white, size: 30),
          ),
        ],
      ),
      body: NoteBUlider(),
    );
  }
}
