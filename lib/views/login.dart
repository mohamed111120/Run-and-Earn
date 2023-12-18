import 'package:flutter/material.dart';
import 'package:run_and_earn/utils.dart';
import 'package:run_and_earn/views/home_screen.dart';
import 'package:run_and_earn/widgets/custom_button.dart';
import 'package:run_and_earn/widgets/custom_text_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);
  static String id = 'login screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff28333F) ,
        elevation: 0,
      ),
      backgroundColor: Color(0xff28333F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/Logo.png',
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 30,),

            Text(
              'Log In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height:10,),

            CustomTextField(),
            SizedBox(height: 5,),

            CustomTextField(),
            Row(
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                    value: true,
                    onChanged: (value) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    fillColor: MaterialStateProperty.all(Constants.primaryColor),


                  ),
                ),
                Text('Remember Me ',style: TextStyle(color: Colors.white),),
                Spacer(

                ),
                Text('Forgot Password ?',style: TextStyle(color: Constants.primaryColor),),
              ],
            ),
            CustomButton(onTap: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },width: double.infinity,hight: 50,text: 'Log In',),
            SizedBox(height: 5,),

            Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(color: Constants.primaryColor,)
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Text("Or continue with",style: TextStyle(color: Colors.grey.withOpacity(.5)),),
                  ),

                  Expanded(
                      child: Divider(color: Constants.primaryColor,)
                  ),
                ]
            ),
            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               CustomLoginContainer(image: 'assets/images/Google-logo.png'),
                CustomLoginContainer(image: 'assets/images/Facebook-logo.png'),
                CustomLoginContainer(image: 'assets/images/twitter.png'),
              ],
            ),
            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New User?',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    ' Sign Up',
                    style: TextStyle(
                      color: Color(0xff7B61FF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class CustomLoginContainer extends StatelessWidget {
  const CustomLoginContainer({Key? key, required this.image}) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Color(0xff2F3C50),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.withOpacity(.2))

      ),
      child: Image.asset(image),
    );
  }
}
