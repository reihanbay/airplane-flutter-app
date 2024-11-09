import 'package:airplane/styles/theme/theme.dart';
import 'package:airplane/ui/widgets/button.dart';
import 'package:airplane/ui/widgets/custom_inputformfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text('Join us and get\nyour next journey',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5)),
      );
    }

    Widget inputSection() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(defRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputField(label: "Full Name", hintText: 'Input your fullname'),
            const SizedBox(height: 20),
            InputField(label: "Email Address", hintText: 'Input your email'),
            const SizedBox(height: 20),
            InputField(label: "Password", hintText: 'Input your password', obsecureText: true,),
            const SizedBox(height: 20),
            InputField(label: "Hobby", hintText: 'Input your hobby'),
            const SizedBox(height: 30),
            Button(textBtn: "Get Started", onPress: () {})
          ],
        ),
      );
    }

    Widget tacBtn() {
      return InkWell(
        onTap: () {},
        child: Text(
          "Term and Conditions",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: const Color.fromARGB(255, 143, 143, 143),
            decoration: TextDecoration.underline,
            
            decorationColor: const Color.fromARGB(255, 143, 143, 143)
          ),
          textAlign: TextAlign.center,
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defMargin),
          children: [
            title(), 
            inputSection(),
            const SizedBox(height: 50),
            tacBtn()
            ],
        ),
      ),
    );
  }
}


