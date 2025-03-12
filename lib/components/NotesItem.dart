import 'package:flutter/material.dart';

class Customnotes extends StatelessWidget {
  Customnotes({required this.color});
  Color color;
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Flutter Tips",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ],
          ),
          Text("Elsaid"),
          Text("maher Elkhodary"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text("12/2/2024"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
