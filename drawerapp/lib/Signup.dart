import 'package:drawerapp/HomePage.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String name, email;
  GlobalKey<FormState> _key = GlobalKey();

  _moveToNext() {
    if (_key.currentState!.validate()) {
      _key.currentState!.save();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    name: name,
                    email: email,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Center(
              child: Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    ListTile(
                        leading: Icon(Icons.person),
                        title: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) return "Invalid Name";
                          },
                          decoration: InputDecoration(labelText: 'Enter Name'),
                          onSaved: (input) => {name = input!},
                        )),
                    ListTile(
                        leading: Icon(Icons.email),
                        title: TextFormField(
                          decoration: InputDecoration(labelText: 'Enter Email'),
                          onSaved: (input) => {email = input!},
                        )),
                    Padding(padding: EdgeInsets.all(10)),
                    MaterialButton(
                        onPressed: _moveToNext,
                        color: Colors.black,
                        child: Text("Save"),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
