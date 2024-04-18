import 'package:flutter/material.dart';

class OtherLoginMethodWidget extends StatelessWidget {
  const OtherLoginMethodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 47),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ic_google.png"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 15),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ic_linkedin.png"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 20),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage("assets/images/ic_facebook.png"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 15),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ic_instagram.png"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 15),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ic_whatsapp.png"),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
