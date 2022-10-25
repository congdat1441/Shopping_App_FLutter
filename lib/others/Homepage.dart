import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

const String src1 =
    "https://images.unsplash.com/photo-1662436267762-56fe105cbf6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80";

const String src2 =
    "https://images.unsplash.com/photo-1662411716147-3f6f6cc32399?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Welcome to my class",
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(122, 169, 128, 128),
                    fontWeight: FontWeight.bold),
              ),
              Image.network(src1),
              Image.network(src2),
              Image.asset("assets/images/imgst.jpg"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Xin Chao");
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(child: Icon(Icons.home)),
    );
  }
}
