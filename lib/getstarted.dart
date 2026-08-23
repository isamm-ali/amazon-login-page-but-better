import 'package:flutter/material.dart';
import 'package:amazonfix/loginoptions.dart';

class getstarted extends StatelessWidget {
  const getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Center(
              child: Image(
                image: AssetImage("assets/amazonlogomain.png"),
                height: 230,
                width: 280,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => loginoptions(),));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 253, 138, 44),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Center(
                    child: Text("GET STARTED", style: TextStyle(color: Colors.white, fontSize: 16),),
                  ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward, color: Colors.white,)],
                  )
                ]
              ),
          )
            ),
          ),
        ],
      ),
    );
  }
}

