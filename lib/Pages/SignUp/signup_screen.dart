import 'package:dhpversion2/Pages/SignUp/components/sign_up_form.dart';
import 'package:dhpversion2/components/background.dart';
import 'package:flutter/material.dart';

//import '../../components/background.dart';
import '../../responsive.dart';

//import 'components/login_screen_top_image.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileLoginScreen(),
          desktop: Row(
            children: [
              // const Expanded(
              //   child: LoginScreenTopImage(),
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 450,
                      child: SignUpBody(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // const LoginScreenTopImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(flex: 8, child: SignUpBody()),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
