import 'package:flutter/material.dart';
import 'home_page.dart';

// class LoginPage extends StatelessWidget {
//   String username = "";
//   String password = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Login Page"),
//         ),
//         body: Column(
//           children: [
//             _usernameField(),
//             _passwordField(),
//             _loginButton(context)
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _usernameField(){
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       child: TextFormField(
//         enabled: true,
//         onChanged: (value){
//           username = value;
//         },
//         decoration: const InputDecoration(
//           hintText: "username",
//           contentPadding: EdgeInsets.all(8),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(8)),
//             borderSide: BorderSide(color: Colors.blue)
//           )
//         ),
//       ),
//     );
//   }
//
//   Widget _passwordField(){
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       child: TextFormField(
//         enabled: true,
//         onChanged: (value){
//           password = value;
//         },
//         obscureText: true,
//         decoration: const InputDecoration(
//             hintText: "password",
//             contentPadding: EdgeInsets.all(8),
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(8)),
//                 borderSide: BorderSide(color: Colors.blue)
//             )
//         ),
//       ),
//     );
//   }
//
//   Widget _loginButton(BuildContext context){
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       width: MediaQuery.of(context).size.width,
//       child: ElevatedButton(
//         onPressed: (){
//           String status = "";
//           if(username == "flutter" && password == "123"){
//             status = "login success";
//           } else {
//             status = "login failed";
//           }
//
//           SnackBar snackBar = SnackBar(content: Text(status));
//
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: Text("Login"),
//       ),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          children: [_usernameField(), _passwordField(), _loginButton(context)],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: "username",
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                  color: (isLoginSuccess) ? Colors.blue : Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.blue)),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
          hintText: "password",
          contentPadding: EdgeInsets.all(8),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                  color: (isLoginSuccess) ? Colors.blue : Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.green)),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: (isLoginSuccess) ? Colors.blue : Colors.red,
            onPrimary: Colors.white),
        onPressed: () {
          String status = "";
          if (password == "123") {
            setState(() {
              status = "login success";
              isLoginSuccess = true;
            });

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return HomePage(username: username);
            }));
          } else {
            setState(() {
              status = "login failed";
              isLoginSuccess = false;
            });
          }

          SnackBar snackBar = SnackBar(content: Text(status));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login"),
      ),
    );
  }
}
