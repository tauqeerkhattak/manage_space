import 'package:flutter/material.dart';
import 'package:manage_space/manage_space.dart';

import 'ui/from_manage_space.dart';
import 'ui/home.dart';

void main() {
  runApp(const ManageSpaceExample());
}

class ManageSpaceExample extends StatefulWidget {
  const ManageSpaceExample({Key? key}) : super(key: key);

  @override
  State<ManageSpaceExample> createState() => _ManageSpaceExampleState();
}

class _ManageSpaceExampleState extends State<ManageSpaceExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<bool>(
        future: ManageSpace.isFromManageSpaceEvent(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!) {
              return const FromManageSpace();
            }
            else {
              return const Home();
            }
          }
          else {
            return const CircularProgressIndicator.adaptive();
          }
        },
      ),
    );
  }
}
