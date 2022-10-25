import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String? _password;
    return SafeArea(
      child: Scaffold(
        body: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/EVN.png"),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return "Vui lòng nhập vào tên đăng nhập";
                        else if (value.length < 5)
                          return "Tên đăng nhập quá ngắn";
                        return null;
                      },
                      decoration: new InputDecoration(
                        label: Text("Tên đăng nhập"),
                        hintText: "Vui lòng nhập tên đăng nhập",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 111, 111, 111),
                            width: 2.0,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextFormField(
                    decoration: new InputDecoration(
                      label: Text("Tên đăng nhập"),
                      hintText: "Vui lòng nhập tên đăng nhập",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 111, 111, 111),
                          width: 2.0,
                        ),
                      ),
                    ),
                    validator: (value) =>
                        value!.length < 6 ? 'Mật khẩu quá ngắn' : null,
                    onSaved: (val) => _password = val,
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //Form Oke
                      } else {
                        //form not oke
                      }
                    },
                    child: Text("Đăng nhập"))
              ],
            )),
      ),
    );
  }
}
