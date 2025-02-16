import 'package:flutter/material.dart';

class CostumProfileWidget extends StatelessWidget {
  const CostumProfileWidget(
      {super.key, required this.text, required this.icon});
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage('assets/icons/arrow-left.png'),
          color: Colors.black,
        ),
        const Spacer(),
        Row(
          children: [
            Text(' $text',
                style: const TextStyle(
                    color: Colors.black, fontSize: 24, fontFamily: 'Somar')),
            const SizedBox(
              width: 13,
            ),
            Image(
              image: AssetImage(icon),
              color: Colors.black,
            )
          ],
        )
      ],
    );
  }
}
