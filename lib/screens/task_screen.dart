import 'package:flutter/material.dart';
import 'package:todey_app/components/add_task.dart';
import 'package:todey_app/components/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  final Color kWhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              context: context,
              builder: (BuildContext context) {
                return const AddTaskModal();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60, left: 30, right: 20, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: kWhite,
                    child: const Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Todey App",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: kWhite,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "12 Tasks",
                    style: TextStyle(
                      fontSize: 18,
                      color: kWhite,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 30, right: 20, bottom: 20),
                color: kWhite,
                child: const TaskList(),
              ),
            )
          ],
        ));
  }
}
