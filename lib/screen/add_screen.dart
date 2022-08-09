import 'package:flutter/material.dart';
class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[600],
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Text(
                'Task Name',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30.0,
                ),
              ),
              const TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    primary: Colors.teal,
                    side: const BorderSide(width: 2.0, color: Colors.teal),
                    //fixedSize: Size(20.0,20.0),
                    minimumSize: Size(200.0, 40.0)),
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}