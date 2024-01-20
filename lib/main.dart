import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogSign',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  bool obstext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Welcome"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 400,
              child: TextField(
                controller: c1,
                decoration: const InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400,
                child: TextField(
                  obscureText: obstext,
                  controller: c2,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obstext = !obstext;
                          });
                        },
                        icon: (obstext == true)
                            ? const Icon(Icons.remove_red_eye)
                            : const Icon(Icons.visibility_off)),
                    border: const OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sign()));
                    },
                    child: const Text("Sign Up")),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ElevatedButton(
                      onPressed: () {
                        const snackBar = SnackBar(
                          content: Text('Login Successful!'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Text("Login")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c3 = TextEditingController();

  TextEditingController c2 = TextEditingController();
  bool obstext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Create Account",
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
          ),
          SizedBox(
            width: 400,
            child: TextField(
              controller: c1,
              decoration: const InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
                hintText: 'Username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              child: TextField(
                obscureText: obstext,
                controller: c2,
                decoration: InputDecoration(
                  labelText: "Create Password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obstext = !obstext;
                        });
                      },
                      icon: (obstext == true)
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off)),
                  border: const OutlineInputBorder(),
                  hintText: 'Create Password',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              child: TextField(
                obscureText: obstext,
                controller: c3,
                decoration: InputDecoration(
                  labelText: "Re-Enter Password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obstext = !obstext;
                        });
                      },
                      icon: (obstext == true)
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.visibility_off)),
                  border: const OutlineInputBorder(),
                  hintText: 'Re-Enter Password',
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Account Created!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text("Sign Up"))
        ],
      )),
    );
  }
}
