import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return new LoginState();
      }
    }
    
    class LoginState extends State<Login> {
      final TextEditingController _userController = new TextEditingController();
      final TextEditingController _passwordController = new TextEditingController();
      String _welcome = "";

      void _clear(){
        setState(() {
         _userController.clear();
         _passwordController.clear(); 
        });
      }
      void _showWelcome(){
        setState(() {
         if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
            _welcome = _userController.text;
         } else{
           _welcome = "Nothing!";
         }
        });
      }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
      ),
      
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView( 
          children: <Widget>[
            new Image.asset("images/pic.jpeg", 
            width: 150, 
            height: 150,
            ),

            new Container(
              height: 200.0,
              width: 390.0,
              color: Colors.grey[400],
              
             child: new Column(
               children: <Widget>[
                 new TextField(
                   controller: _userController,
                   decoration: new InputDecoration(
                     hintText: "Username",
                     icon: Icon(Icons.person),
                     labelText: 'Username',
                   ),
                  ),
                  new TextField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                      labelText: 'Passsword',
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(15.0)),
                new Center(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(left: 50.0),
                        child: new RaisedButton(
                          color: Colors.blue,
                          onPressed: _showWelcome,
                          child: new Text("Login",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),),
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.only(left: 100.0),
                        child: new RaisedButton(
                          color: Colors.blue,
                          onPressed: _clear,
                          child: new Text("Clear",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),),
                        ),
                      )
                    ],
                  ),
                )
               ],
             ),             
            ),
            new Padding(padding: EdgeInsets.all(15.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Welcome! $_welcome", 
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}