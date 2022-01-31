import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/widgets/super_floatingaction.dart';

import '../providers/person_info.dart';
import '../widgets/super_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final personInfo = Provider.of<PersonInfo>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${personInfo.surname} ${personInfo.name}'),
      ),
      body: const Center(
        child: SuperText(),
      ),
      floatingActionButton: const SuperFloatingAction(),
    );
  }
}
