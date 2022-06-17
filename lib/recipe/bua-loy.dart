import 'package:flutter/material.dart';
import '../card/taskcard.dart';
class BuaLoy extends StatefulWidget {
  const BuaLoy({Key? key}) : super(key: key);

  @override
  State<BuaLoy> createState() => _BuaLoyState();
}

class _BuaLoyState extends State<BuaLoy> {
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
                        TaskCardWidget(title: "1", desc: "To make the sweet potato dumplings, mash the steamed sweet potato and add sticky rice flour. Knead until combined into a sandy textured dough. Add water, 1 teaspoon at a time, until the dough comes together with a sheen. This is typically 5-6 teaspoons. Roll into small marble sized balls."),
                        TaskCardWidget(title: "2", desc: "Prepare the pandan bua loy as above by mixing the pandan water with the sticky rice flour. Add more flour if the dough is too thin, or more pandan water if too thick. Roll the dough into marble sized balls."),
                        TaskCardWidget(title: "3", desc: "Make the coconut milk soup by adding the coconut milk, both kinds of sugar, salt, and knotted pandan leaf to a small saucepan and simmer for a few minutes. Do not boil. Discard pandan leaf."),
                        TaskCardWidget(title: "4", desc: "Bring a pot of water to the boil and tip in all of the dumplings. Boil for 30 seconds to a minute, or until all of the balls are floating. Strain with a spider or mesh strainer and divvy up amongst some bowls. Pour the warm sweetened coconut milk over and serve."),
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

