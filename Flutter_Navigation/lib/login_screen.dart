import 'package:flutter/material.dart';
import './palette.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "SIGN IN",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w800,
                  color: Palette.kToDark,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Enter email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text("Forget Password?"))
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: const LinearGradient(
                      colors: [Colors.red, Colors.orange, Colors.indigo]),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FigureA()),
                    );
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                height: 30,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Register Account"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FigureA extends StatelessWidget {
  const FigureA({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Figure A'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            width: 350,
            height: 150,
            color: Colors.deepOrangeAccent,
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            width: 350,
            height: 150,
            color: Colors.indigo,
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            width: 350,
            height: 150,
            color: Colors.teal,
          ),
          ElevatedButton(
            child: const Text('New Figure'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FigureB()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FigureB extends StatelessWidget {
  const FigureB({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Figure B'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  color: Colors.deepOrangeAccent,
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  color: Colors.indigo,
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            Container(
              height: 435,
            ),
            ElevatedButton(
              child: const Text('New Figure'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FigureC()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FigureC extends StatelessWidget {
  const FigureC({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Figure C'),
        ),
        body: Container(
            child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  color: Colors.deepOrangeAccent,
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  color: Colors.indigo,
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              width: 350,
              height: 150,
              color: Colors.brown,
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              width: 350,
              height: 150,
              color: Colors.yellow,
            )
          ],
        )));
  }
}
