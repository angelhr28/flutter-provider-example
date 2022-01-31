import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/person_info.dart';
import '../providers/pet_info.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final personInfo = Provider.of<PersonInfo>(context);
    final petInfo = Provider.of<PetInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () {
            personInfo.name = 'Angel';
            personInfo.surname = 'Robles';
            petInfo.name = 'Brandon';
            petInfo.raza = 'Pitbul';
          },
        ),
        const SizedBox(height: 10.0),
        FloatingActionButton(
          child: const Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: () {
            personInfo.name = "Newton";
            personInfo.surname = "Huamanñahui";
            petInfo.name = 'Chems';
            petInfo.raza = 'Cuzado';
          },
        )
      ],
    );
  }
}
