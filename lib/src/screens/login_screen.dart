import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'list_screen.dart';
class LoginScreen extends StatefulWidget {
  createState() {
   return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen>{

  final _formKey = GlobalKey<FormState>();

 
        
  Widget build(context){
    return Container(    
      margin: new EdgeInsets.all(20.0),
      child: Form(
         key: _formKey,
          child: Column(
              children: [
              emailField(),
              passwordField(),
              loginButton(),
            ]
            ),
      ),
    );
  }
 Widget emailField(){
  
  return TextFormField(
     validator: (mail) {
              if (mail == null || mail.isEmpty) {
                return 'Email is required';
              } else if(mail!=null&&!EmailValidator.validate(mail)){
                return 'Please enter valid email';
              }
              return null;
            },
   
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(

      labelText: 'Email',
      hintText: 'Enter your email',
      // enabledBorder: OutlineInputBorder(
      //   borderSide: BorderSide(
      //     color: Colors.grey
      //   )
      // ),
       ),
  );

  }
   RegExp pass_valid =  RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9]).{8,}$');
  bool passValidate(String pass){
    String _password=pass.trim();
    if (pass_valid.hasMatch(_password)){
      return true;
    } else {
      return false;
    }
  }
  Widget passwordField(){
    
    return TextFormField( 
       validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              }
              else {
                bool result = passValidate(value);
                if(result){
                  return null;
                } else {
                  backgroundColor: Colors.grey;
                  return 'Password should contain min 8 symbols, \nmust have one digit and one capital letter.';
                }
              }
              return null;
            },
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText:'Enter your password',
      //   borderSide: BorderSide(
      //     color: Colors.grey
      //   )
      // ),
      ),  
      
    );
  }
  Widget loginButton(){
    

    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        
        minimumSize: const Size.fromHeight(40)),
        
      child: Text('LOGIN'),
      onPressed: (){
          if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductList()));

        }
      },  
    );     
  }
 }