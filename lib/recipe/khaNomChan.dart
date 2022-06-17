import 'package:flutter/material.dart';
import '../card/taskcard.dart';
class KhaNomChan extends StatefulWidget {
  const KhaNomChan({Key? key}) : super(key: key);

  @override
  State<KhaNomChan> createState() => _BuaLoyState();
}

class _BuaLoyState extends State<KhaNomChan> {
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
                        TaskCardWidget(title: "1", desc: "Squeeze pandanus leaves water by the blender and strain through muslin."),
                        TaskCardWidget(title: "2", desc: "Mix well coconut milk, sugar, and pandanus leaf water. Heat to boiling. Set aside."),
                        TaskCardWidget(title: "3", desc: "Grease the mold with a little drop of coconut milk."),
                        TaskCardWidget(title: "4", desc: "Mix the 2 flours add the coconut milk and knead the mixture. Add all the rest of the ingredients."),
                        TaskCardWidget(title: "5", desc: "Separate the mixture into 2 portions, add the pandanus scented water and green color into one portion, leave the other white."),
                        TaskCardWidget(title: "6", desc: "Grease the mold with the coconut milk, then heat the mold in the steamer. Drop some of the white mixture and steam for 5 to 10 minutes."),
                        TaskCardWidget(title: "7", desc: "Repeat the steps to fill the mold. Finish with the green mixture."),
                        TaskCardWidget(title: "8", desc: "Leave the cooked dessert to completely cool for 3 to 4 hours before removing from the mold."),
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
