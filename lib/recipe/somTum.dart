import 'package:flutter/material.dart';
import '../card/stopwatch.dart';
import '../card/taskcard.dart';
class SomTum extends StatefulWidget {
  const SomTum({Key? key}) : super(key: key);

  @override
  State<SomTum> createState() => _Saku();
}

class _Saku extends State<SomTum> {
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
                        TaskCardWidget(title: "1", desc: "Drain the soaked papaya well and place in a bowl lined with 2 layers of paper towel to absorb excess water. You want to have as little water on the papaya as possible so as to not dilute the dressing."),
                        TaskCardWidget(title: "2", desc: "In a large mortar and pestle, pound garlic and chilies until there are no more big chunks (pieces of chili skin are fine)."),
                        TaskCardWidget(title: "3", desc: "Add palm sugar and mash with the pestle until it turns into a wet paste and all the chunks are dissolved."),
                        TaskCardWidget(title: "4", desc: "Add long beans and pound just until they're broken."),
                        TaskCardWidget(title: "5", desc: "Add dried shrimp and peanuts and pound to break the peanuts up slightly."),
                        const StopWatch(),
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
