import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled6/login.dart';
import 'package:untitled6/shared.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final List<PageViewModel> pages = [
    PageViewModel(
        title: "Choose Your Product",
        body:
            "There are more than 1,000 brands of men's and women's clothes, shoes and accessories in the catalog",
        image: Center(
          child: Image.asset(
            "assets/Lovepik_com-450134153-flat illustration design of select product.jpg",
          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(
            fontSize: 15,
          )
        )
    ),
    PageViewModel(
        title: "Add To Cart",
        body: "Just 2 clicks and you can buy all fashion news with home delivery",
        image: Image.asset(
          "assets/Lovepik_com-400831944-cartoon-flat-double-eleven-shopping-cart-elements.png",
        ),
        decoration: const PageDecoration(
            titleTextStyle:
            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(
              fontSize: 15,
            )
        )
    ),
    PageViewModel(
        title: "Fast Delivery",
        body: "It is the fastest form of shipping. The customer pays an extra shipping cost for this type of delivery, as the shipment will get transported to him anywhere between 24 to 72 hours.",
        image: Center(
          child: Image.asset("assets/Fast-Delivery-Vector-Illustration.png"),
        ),
        decoration: const PageDecoration(
            titleTextStyle:
            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(
              fontSize: 15,
            )
        )
    ),
  ];

  AuthServices auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: DotsDecorator(
            size: const Size(10, 10),
            color: Colors.grey.shade300,
            activeSize: const Size.square(15),
            activeColor: Colors.blue,
          ),
          showDoneButton: true,
          done: const Text(
            "Done",
            style: TextStyle(fontSize: 18,
                color: Colors.black87
            ),
          ),
          showSkipButton: true,
          skip: const Text(
            "Skip",
            style: TextStyle(fontSize: 17,
            color: Colors.black
            ),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
              color: Colors.black38
          ),
          onDone: () {
            auth.onBoarding();
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          curve: Curves.bounceInOut,
        ),
      ),
    );
  }
}
