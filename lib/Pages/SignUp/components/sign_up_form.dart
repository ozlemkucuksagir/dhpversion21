import 'package:dhpversion2/components/background.dart';
import 'package:flutter/material.dart';

import '../../../const/constant.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  String kullaniciAdi = '';
  String kullaniciTuru = '';
  String sifre = '';
  String sifreTekrar = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //debugShowCheckedModeBanner: false,
      // appBar: AppBar(
      //   backgroundColor: kPrimaryColor,
      //   title: Text("Sign Up"),
      // ),

      body: PageView(
        children: [
          Background(
            child: Form(
              child: ListView(
                children: [
                  const SizedBox(height: 150),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    maxLength: 30,
                    onSaved: (kullaniciTuru) {
                      print("${kullaniciTuru}");
                    },
                    validator: (kullaniciTur) {
                      return (kullaniciTur != null &&
                              kullaniciTur.contains('123456789'))
                          ? 'Do not use the number. '
                          : null;
                    },
                    decoration: InputDecoration(
                      hintText: "Kullanıcı Tür",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.supervised_user_circle_outlined,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    maxLength: 30,
                    onSaved: (kullanciAdi) {},
                    decoration: InputDecoration(
                      hintText: "Kullanıcı Adı",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.person,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    cursorColor: kPrimaryColor,
                    onSaved: (sifre) {},
                    decoration: InputDecoration(
                      hintText: "Şifre",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.lock,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    cursorColor: kPrimaryColor,
                    onSaved: (sifreTekrar) {},
                    decoration: InputDecoration(
                      hintText: "Şifre Tekrar",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.lock,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ),
          Background(
            child: Form(
              child: ListView(
                children: [
                  const SizedBox(height: 150),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    onSaved: (ad) {},
                    decoration: InputDecoration(
                      hintText: "Ad",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.person,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    onSaved: (soyad) {},
                    decoration: InputDecoration(
                      hintText: "Soyad",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.person,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    onSaved: (dogumTarihi) {},
                    decoration: InputDecoration(
                      hintText: "Doğum tarihi",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.date_range,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    onSaved: (cinsiyet) {},
                    decoration: InputDecoration(
                      hintText: "Cinsiyet",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.transgender_rounded,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ),
          Background(
            child: Form(
              child: ListView(
                children: [
                  const SizedBox(height: 150),
                  TextFormField(
                    keyboardType: TextInputType.url,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    onSaved: (linkedinUrl) {},
                    decoration: InputDecoration(
                      hintText: "Linkedin URL",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.link,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    maxLength: 100,
                    onSaved: (email) {},
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.url,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    maxLength: 300,
                    onSaved: (web) {},
                    decoration: InputDecoration(
                      hintText: "WEB",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.web_asset_outlined,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    cursorColor: kPrimaryColor,
                    maxLength: 50,
                    decoration: InputDecoration(
                      hintText: "Telefon",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Icon(
                          Icons.phone,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
