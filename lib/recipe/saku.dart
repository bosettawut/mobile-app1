import 'package:flutter/material.dart';
import '../card/taskcard.dart';
class Saku extends StatefulWidget {
  const Saku({Key? key}) : super(key: key);

  @override
  State<Saku> createState() => _Saku();
}

class _Saku extends State<Saku> {
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
                        TaskCardWidget(title: "1", desc: "Begin by bringing 450ml of water to the boil. Once the water is boiling, quickly wash 100g of small tapioca pearls to remove their excess flour, then add them to the boiling water."),
                        TaskCardWidget(title: "2", desc: "Lower the heat to a medium heat, and continually stir the tapioca pearls until the outer pearl is transparent, and in the inner part of the pearl is white – this will take a few minutes."),
                        TaskCardWidget(title: "3", desc: "Then add in 125g of sugar, mix the sugar in, then add 50g of shredded coconut. Now lower the heat to a medium low heat, and keep stirring until the tapioca pearls are nearly completely transparent as you can see in the video. Then turn off the heat and set aside."),
                        TaskCardWidget(title: "4", desc: "Now its time to make the topping. Add 50g of coconut cream to a saucepan, along with 1/4 teaspoon of rice flour and 1/8 teaspoon of salt. Heat on a low heat and stir together for a minute or two until everything is nicely mixed."),
                        TaskCardWidget(title: "5", desc: "Finally pour the sweet tapioca into a serving bowl and top with some of the coconut cream, then serve and enjoy!"),
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
