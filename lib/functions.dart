import 'package:flutter/material.dart';

class FunctionsTest extends StatefulWidget {
  const FunctionsTest({Key? key}) : super(key: key);

  @override
  State<FunctionsTest> createState() => _FunctionsTestState();
}

class _FunctionsTestState extends State<FunctionsTest> {
  void printSomething() {
    setState((){
      changeTest = 'Patrick';
    });
  }

  String changeTest = 'Aman';

  @override
  void initState(){
    print("First");
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialButton(
            minWidth: double.infinity,
            color: Colors.green,
            onPressed: printSomething,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                changeTest,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
