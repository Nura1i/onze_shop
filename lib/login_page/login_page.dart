import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // const countryPicker = FlCountryCodePicker(
    //     favorites: ['UZ'],
    //     favoritesIcon: Icon(
    //       Icons.star,
    //       color: Colors.orange,
    //     ));

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        //reverse: true,
        //physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              SizedBox(
                height: size.height,
                child: Image.asset(
                  'assets/images/wallpaper.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                              sigmaX: 70,
                              sigmaY: 70,
                              tileMode: TileMode.mirror),
                          child: SizedBox(
                            width: size.width * .9,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.width * .12,
                                    bottom: size.width * .05,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white.withOpacity(.8),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Focus.of(context).unfocus();
                                      });
                                    },
                                    child: component(
                                        Icons.account_circle_outlined,
                                        'Ismingizni kiriting...',
                                        false,
                                        false,
                                        false),
                                  ),
                                ),
                                Container(
                                  height: size.width / 8,
                                  width: size.width / 1.25,
                                  alignment: Alignment.center,
                                  padding:
                                      EdgeInsets.only(right: size.width / 30),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.center,
                                    maxLength: 9,
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(.9),
                                    ),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 6.3),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                  right: 5,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/images/flag_uz.png'),
                                                  height: 36,
                                                ),
                                              ),
                                              Text(
                                                '+998  ',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),

                                      // Icon(
                                      //   Icons.star,
                                      //   color: Colors.white.withOpacity(.8),
                                      // ),
                                      border: InputBorder.none,
                                      hintMaxLines: 1,
                                      hintText: 'Raqamingizni kiriting',
                                      hintStyle: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: size.width * .1),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    HapticFeedback.lightImpact();
                                    // Fluttertoast.showToast(
                                    //   msg: 'Sign-In button pressed',
                                    // );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: size.width * .05,
                                    ),
                                    height: size.width / 8,
                                    width: size.width / 1.25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text(
                                      'Sing-In',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    // Padding(
                    //     padding: EdgeInsets.only(
                    //         bottom: MediaQuery.of(context).viewInsets.bottom))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget component(IconData icon, String hintText, bool isPassword,
      bool isEmail, bool isNumber) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 8,
      width: size.width / 1.25,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.white.withOpacity(.9),
        ),
        keyboardType:
            !isNumber ? TextInputType.emailAddress : TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white.withOpacity(.8),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ),
    );
  }
}

// class MyBehavior extends ScrollBehavior {
//   @override
//   Widget buildViewportChrome(
//     BuildContext context,
//     Widget child,
//     AxisDirection axisDirection,
//   ) {
//     return child;
//   }
// }
