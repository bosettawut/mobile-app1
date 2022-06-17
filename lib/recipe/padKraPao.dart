import 'package:flutter/material.dart';
import '../card/taskcard.dart';
class krapao extends StatefulWidget {
  const krapao({Key? key}) : super(key: key);

  @override
  State<krapao> createState() => _Saku();
}

class _Saku extends State<krapao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 32.0,
            ),
            color: const Color(0xFFF6F6F6),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: ListView(
                      children: [
                        TaskCardWidget(title: "1", desc: "Pound Thai chilies into a fine paste."),
                        TaskCardWidget(title: "2", desc: "Add garlic and spur chilies and pound into a rough paste."),
                        TaskCardWidget(title: "3", desc: "Combine oyster sauce, soy sauce, fish sauce, black soy sauce, water and sugar; stir to dissolve the sugar."),
                        TaskCardWidget(title: "4", desc: "In a wok or a large saute pan, saute the garlic-chili paste in a little vegetable oil over medium high heat until the garlic starts to turn golden."),
                        TaskCardWidget(title: "5", desc: "Add chicken and toss until they're no longer in big clumps. Add the sauce and continue tossing until the chicken is almost done."),
                      ],
                    ))
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}
