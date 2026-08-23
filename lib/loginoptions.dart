import 'package:flutter/material.dart';

class loginoptions extends StatefulWidget {
  const loginoptions({super.key});

  @override
  State<loginoptions> createState() => _loginoptionsState();
}

class _loginoptionsState extends State<loginoptions> {
  int selected = 0;
  int selectedname = 0;
  int selectedemail = 0;
  int selectedpass = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 235, 241, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 45),
          Center(
            child: Image(
              image: AssetImage("assets/amazonlogomain.png"),
              height: 250,
              width: 310,
            ),
          ),
          Container(
            height: 628,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          selected = 0;
                        });
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          fontSize: 25,
                          color: (selected == 0)
                              ? Color.fromARGB(255, 253, 138, 44)
                              : Colors.black,
                          fontWeight: (selected == 0)
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          selected = 1;
                        });
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 25,
                          color: (selected == 1)
                              ? Color.fromARGB(255, 253, 138, 44)
                              : Colors.black,
                          fontWeight: (selected == 1)
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),

                selected == 0
                    ? Column(
                  children: [
                    SizedBox(height: 70),
                    Text(
                      "Welcome back!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 70),

                    SizedBox(
                      width: 350,
                      child: TextField(
                        onTap: () {
                          setState(() {
                            selectedname = 0;
                            selectedemail = 1;
                            selectedpass = 0;
                          });
                        },
                        style: TextStyle(
                          color: selectedemail == 1
                              ? Color.fromARGB(255, 253, 138, 44)
                              : Colors.black,
                        ),
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintStyle: TextStyle(
                            color: selectedemail == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          hintText: "Enter your email",
                          labelStyle: TextStyle(
                            color: selectedemail == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: selectedemail == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                            BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 138, 44),
                              width: 2,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      width: 350,
                      child: TextField(
                        obscureText: true,
                        onTap: () {
                          setState(() {
                            selectedname = 0;
                            selectedemail = 0;
                            selectedpass = 1;
                          });
                        },
                        style: TextStyle(
                          color: selectedpass == 1
                              ? Color.fromARGB(255, 253, 138, 44)
                              : Colors.black,
                        ),
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintStyle: TextStyle(
                            color: selectedpass == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          hintText: "Enter your password",
                          labelStyle: TextStyle(
                            color: selectedpass == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.lock_sharp,
                            color: selectedpass == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                            BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 138, 44),
                              width: 2,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 70),

                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        height: 45,
                        width: 200,
                      ),
                    ),

                    SizedBox(height: 70),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("English",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Text("हिन्दी", style: TextStyle(fontSize: 15)),
                        Text("বাংলা", style: TextStyle(fontSize: 15)),
                        Text("தமிழ்", style: TextStyle(fontSize: 15)),
                      ],
                    )
                  ],
                )

                    : Column(
                  children: [
                    SizedBox(height: 50),
                    Text(
                      "Welcome to Amazon!",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),

                    SizedBox(
                      width: 350,
                      child: TextField(
                        onTap: () {
                          setState(() {
                            selectedname = 1;
                            selectedemail = 0;
                            selectedpass = 0;
                          });
                        },
                        style: TextStyle(
                          color: selectedname == 1
                              ? Color.fromARGB(255, 253, 138, 44)
                              : Colors.black,
                        ),
                        decoration: InputDecoration(
                          labelText: "Name",
                          hintStyle: TextStyle(
                            color: selectedname == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          hintText: "Enter your full name",
                          labelStyle: TextStyle(
                            color: selectedname == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: selectedname == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                            BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                color:
                                Color.fromARGB(255, 253, 138, 44),
                                width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      width: 350,
                      child: TextField(
                        onTap: () {
                          setState(() {
                            selectedname = 0;
                            selectedemail = 1;
                            selectedpass = 0;
                          });
                        },
                        style: TextStyle(
                          color: selectedemail == 1
                              ? Color.fromARGB(255, 253, 138, 44)
                              : Colors.black,
                        ),
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintStyle: TextStyle(
                            color: selectedemail == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          hintText: "Enter your email",
                          labelStyle: TextStyle(
                            color: selectedemail == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: selectedemail == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                            BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                color:
                                Color.fromARGB(255, 253, 138, 44),
                                width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      width: 350,
                      child: TextField(
                        obscureText: true,
                        onTap: () {
                          setState(() {
                            selectedname = 0;
                            selectedemail = 0;
                            selectedpass = 1;
                          });
                        },
                        style: TextStyle(
                          color: selectedpass == 1
                              ? Color.fromARGB(255, 253, 138, 44)
                              : Colors.black,
                        ),
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintStyle: TextStyle(
                            color: selectedpass == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          hintText: "Create a password",
                          labelStyle: TextStyle(
                            color: selectedpass == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          prefixIcon: Icon(
                            Icons.lock_sharp,
                            color: selectedpass == 1
                                ? Color.fromARGB(255, 253, 138, 44)
                                : Colors.black,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                            BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                                color:
                                Color.fromARGB(255, 253, 138, 44),
                                width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 50),

                    TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(20)),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        height: 45,
                        width: 200,
                      ),
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("English",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Text("हिन्दी", style: TextStyle(fontSize: 15)),
                        Text("বাংলা", style: TextStyle(fontSize: 15)),
                        Text("தமிழ்", style: TextStyle(fontSize: 15)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
