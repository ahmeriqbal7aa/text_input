import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO Variables
  String fname, lname, email;
  String myName = "", myEmail = "", d1 = "", d2 = "";
  String display1 = "Name is ";
  String display2 = "Email is ";
  //TODO Function
  void ShowText() {
    setState(() {
      myName = fname + lname;
      d1 = display1;
      myEmail = email;
      d2 = display2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // resizeToAvoidBottomPadding: false,
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLogoImage(),
            Container(height: 20.0),
            _buildTextFields(),
            Container(height: 20.0),
            _buildButton(),
            Container(height: 20.0),
            _buildOutput(),
          ],
        ),
      ),
    );
  }

  _buildLogoImage() {
    return Image(
      width: 175.0,
      height: 175.0,
      image: AssetImage('images/logo.png'),
    );
  }

  _buildTextFields() {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: [
          TextField(
            minLines: 1,
            maxLength: 20,
            cursorColor: Colors.black,
            onChanged: (text) {
              fname = text;
            },
            decoration: InputDecoration(
              // hintText: 'First Name',
              // helperText: 'First Name',
              labelText: 'First Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              prefixIcon: Icon(Icons.account_box),
            ),
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          TextField(
            minLines: 1,
            maxLength: 20,
            cursorColor: Colors.black,
            onChanged: (text) {
              lname = text;
            },
            decoration: InputDecoration(
              // hintText: 'Last name',
              // helperText: 'Last name',
              labelText: 'Last name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              prefixIcon: Icon(Icons.account_box),
            ),
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          TextField(
            minLines: 1,
            maxLength: 20,
            cursorColor: Colors.black,
            onChanged: (text) {
              email = text;
            },
            decoration: InputDecoration(
              // hintText: 'Email',
              // helperText: 'Email',
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              prefixIcon: Icon(Icons.email),
            ),
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  _buildButton() {
    return MaterialButton(
      // shape: Border.all(color: Colors.black, style: BorderStyle.solid),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      minWidth: 100.0,
      elevation: 5.0,
      color: Colors.black,
      onPressed: ShowText,
      child: Text('Press'),
    );
  }

  _buildOutput() {
    return Text('$d1' + '$myName' + '\n' + '$d2' + '$myEmail');
  }
}
