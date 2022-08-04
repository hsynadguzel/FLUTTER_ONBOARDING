import 'package:flutter/material.dart';
import 'package:flutter_on_boarding/screens/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<PageViewModel> pages = [
    // first
    PageViewModel(
      title: 'Fist Page',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lacinia dignissim arcu. Praesent consequat urna tortor, et aliquam nibh posuere a. Aliquam at felis pharetra, interdum velit eget, interdum erat. Nullam non odio aliquam, posuere sapien sit amet, varius erat. Vivamus volutpat venenatis quam, non commodo ipsum.',
      /*footer: ElevatedButton(
        onPressed: () {},
        child: const Text('Let\'s Go'),
      ),*/
      image: Center(
          child: Image.network(
              'https://icon-library.com/images/app-icon-png/app-icon-png-17.jpg')),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
    ),

    // second
    PageViewModel(
      title: 'Second Page',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lacinia dignissim arcu. Praesent consequat urna tortor, et aliquam nibh posuere a. Aliquam at felis pharetra, interdum velit eget, interdum erat. Nullam non odio aliquam, posuere sapien sit amet, varius erat. Vivamus volutpat venenatis quam, non commodo ipsum.',
      /*footer: ElevatedButton(
        onPressed: () {},
        child: const Text('Let\'s Go'),
      ),*/
      image: Center(
          child: Image.network(
              'https://icon-library.com/images/app-icon-png/app-icon-png-17.jpg')),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
    ),

    // third
    PageViewModel(
      title: 'Third Page',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque lacinia dignissim arcu. Praesent consequat urna tortor, et aliquam nibh posuere a. Aliquam at felis pharetra, interdum velit eget, interdum erat. Nullam non odio aliquam, posuere sapien sit amet, varius erat. Vivamus volutpat venenatis quam, non commodo ipsum.',
      /*footer: ElevatedButton(
        onPressed: () {},
        child: const Text('Let\'s Go'),
      ),*/
      image: Center(
          child: Image.network(
              'https://icon-library.com/images/app-icon-png/app-icon-png-17.jpg')),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OnBoarding',
          style: TextStyle(color: Colors.lightBlue),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Colors.lightBlue,
          activeSize: Size.square(15),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(fontSize: 20.0),
        ),
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontSize: 20.0),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 20,
        ),
        onDone: () => onDone(context),
      ),
    );
  }

  void onDone(context) async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
