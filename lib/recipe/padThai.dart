import 'package:flutter/material.dart';
import '../card/taskcard.dart';
class PadThai extends StatefulWidget {
  const PadThai({Key? key}) : super(key: key);

  @override
  State<PadThai> createState() => _Saku();
}

class _Saku extends State<PadThai> {
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
                        TaskCardWidget(title: "1", desc: "Stir together fish sauce, soy sauce, brown sugar, rice vinegar (or tamarind paste), Sriracha, and peanut butter, if using. Set aside."),
                        TaskCardWidget(title: "2", desc: "Heat 1½ tablespoons of oil in a large saucepan over medium-high heat. Add the shrimp, chicken or tofu, garlic and bell pepper. Cook until meat is done."),
                        TaskCardWidget(title: "3", desc: "Push everything to the side of the pan. Add a little more oil and add the beaten eggs. Scramble the eggs, breaking them into small pieces with a spatula as they cook."),
                        TaskCardWidget(title: "4", desc: "Add noodles, sauce, bean sprouts and peanuts to the pan (reserving some peanuts for topping at the end). Toss everything to combine."),
                        TaskCardWidget(title: "5", desc: "op with green onions, extra peanuts, cilantro and lime wedges. Serve immediately!"),
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
