import 'package:flutter/material.dart';
import 'package:flutter_application_2/widget/Button.dart';
import 'package:flutter_application_2/widget/currency_card.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Hello, Trainer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "welcome back",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Total balance",
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "\$5 194 482",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                    text: "Pokemon Box",
                    bgColor: Colors.amber,
                    textColor: Colors.black),
                Button(
                    text: 'Item Bag',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Balls",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CurrencyCard(
              name: 'Monster Ball',
              code: 'basic',
              amount: '583',
              icon: Icons.catching_pokemon_rounded,
              isInverted: false,
              order: 1,
            ),
            const CurrencyCard(
              name: 'Super Ball',
              code: 'medium',
              amount: '122',
              icon: Icons.catching_pokemon_sharp,
              isInverted: true,
              order: 2,
            ),
            const CurrencyCard(
              name: 'Master Ball',
              code: 'high',
              amount: '66',
              icon: Icons.catching_pokemon_rounded,
              isInverted: false,
              order: 3,
            ),
          ]),
        ),
      ),
    );
  }
}
