import 'package:flutter/material.dart';
import 'package:notesapp/components/Bottomsheetcomponen.dart';
import 'package:notesapp/components/ItemBulider.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        backgroundColor: Colors.blueGrey,

        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.grey[900],
            context: context,
            builder: (context) {
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
