import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/src/providers/person_info.dart';

import '../providers/pet_info.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final personInfo = Provider.of<PersonInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Consumer<PersonInfo>(
          builder: (BuildContext context, value, Widget? child) {
            return Text('${value.surname} ${value.name}');
          },
        ),
        const SizedBox(
          height: 10.0,
        ),
        Consumer<PetInfo>(
          builder: (BuildContext context, value, Widget? child) {
            return Text('${value.name} ${value.raza}');
          },
        ),
        // Text(personInfo.surname)
      ],
    );
  }
}
