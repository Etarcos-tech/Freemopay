import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freemopay/screen/dashboard/dashboard.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignIn extends StatefulWidget{
  const SignIn({super.key});

  @override

  State<SignIn> createState() => SignInState();
}


class SignInState extends State<SignIn>{

  final RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
  );

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (isValid!) {
      Navigator.push( context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => Dashbord(),
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
        ),
      );
    }
    _formKey.currentState?.save();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 60,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Skip >',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Container(
              width: MediaQuery.of(context).size.width*.5,
              height: 65,
              padding: EdgeInsets.only(
                  top: 20,
              ),
              child: Image.asset(
                'assets/logo/logo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Text(
                  'S\'inscrire',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'Creer un compte',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mobile No',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  InternationalPhoneNumberInput(
                    inputDecoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                    onInputChanged: (PhoneNumber number){
                      print(number.phoneNumber);
                    },
                    onInputValidated: (bool value){
                      print(value);
                    },
                    onFieldSubmitted: (value){

                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Entrer un numero valide';
                      }
                        return null;
                      },

                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your password'
                    ),
                    onFieldSubmitted: (value){

                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Entrer un numero valide';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10,),
                  Text(
                    ' Confirm Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm your password',
                    ),
                    onFieldSubmitted: (value){

                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Entrer un numero valide';
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 9,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30)
              ),
              child: TextButton(
                onPressed: (){
                  _submit();
                },
                child: Text(
                  'S\'inscrire',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Allready have account,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextButton(
                    onPressed: null,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}