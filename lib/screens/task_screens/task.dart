import 'package:flutter/material.dart';

import '../../Components/resusable_multi_line.dart';
import '../../Components/reusable_button.dart';
import '../../Components/reusable_unified_button.dart';
import '../../Components/reusable_icontextformfield.dart';
import '../../constants.dart';

class Task extends StatefulWidget {
  const Task({
    Key? key,
  }) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  TextEditingController taskController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  TextEditingController tasklocationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASK'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReusableIconTextFormField(
                controller: taskController,
                type: TextInputType.name,
                icon: Icons.mic,
                hint: 'Task Title e.g. Moving houses',
              ),
              ReusableMultiLineField(
                controller: taskDescriptionController,
                label: '',
                hint: '',
              ),
              ReusableIconTextFormField(
                  controller: tasklocationController,
                  type: TextInputType.name,
                  hint: 'Task Location',
                  icon: Icons.lightbulb_outlined),
              ReusableUnifiedButton(
                buttonColor: Colors.white,
                label: 'ONLINE',
                onPressed: () {},
                label2: 'IN-PERSON',
              ),
              ReusableElevatedButton(
                buttonColor: kPrimaryColorYellow,
                label: 'Post Task',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
