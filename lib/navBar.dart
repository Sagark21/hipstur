import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hipstur/widgets.dart';


class Navbar extends StatefulWidget {
  const Navbar({ Key? key }) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with TickerProviderStateMixin  {
   bool login=true;
   bool signup =false;
   var LoginemailIDController = TextEditingController();
   var LoginpasswordController = TextEditingController();
    var RegisteremailIDController = TextEditingController();
   var RegisterpasswordController = TextEditingController();
   var RegisternameController = TextEditingController();
   bool checkbox = false;
   String? type ="Sign In";
   Color ScreenColor =Color(0xff444b5d);
   Color selectedColor =Color(0xff343b4d);
   Color unselectedColor =Color(0xff565c6e);
   Color widgetColor =Color(0xff505969);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: ScreenColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Image(
                  image: AssetImage("images/hipstur.png"),
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xff565c6e),),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              login=true;
                              signup=false;
                              type ="Sign In";
                            });
                          },
                          child: Container(
                            width: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: login
                                    ? selectedColor
                                    : unselectedColor,),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              signup=true;
                              login=false;
                              type="Register";
                            });
                          },
                          child: Container(
                            width: 112,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color:
                                    signup ? selectedColor
                                    : unselectedColor),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Registration",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: widgetColor,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                login?BuildLogin(context):BuildRegistration(context),
                
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff4b8dec),
                      ),
                      height: 60,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(type.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff80aef3),
                            child: FaIcon(
                              FontAwesomeIcons.arrowRight,
                              color: Colors.white,
                              size: 18,
                              
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: widgetColor,
                        indent: 25,
                        endIndent: 10,
                      ),
                    ),
                    Text( "$type via",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500,
                            fontSize: 15)),
                    Expanded(
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        indent: 10,
                        color: widgetColor,
                        endIndent: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialIconsWidget(FaIcon(FontAwesomeIcons.facebook, color: Colors.white),),
                      SocialIconsWidget(FaIcon(FontAwesomeIcons.vk, color: Colors.white)),
                      
                     
                      Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.blue[900],
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("images/g.png",height: 20,width: 20,)
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }


  Column BuildRegistration(BuildContext context) {
    return Column(
                children: [
                  textfieldWidget(context, 'Name', RegisternameController,
                      TextInputType.name, false),
                  SizedBox(height: 20),
                  textfieldWidget(context, 'Email', RegisteremailIDController,
                      TextInputType.emailAddress, false),
                  SizedBox(height: 20),
              textfieldWidget(context, 'Password', RegisterpasswordController,
                  TextInputType.visiblePassword, true),

                ],
              );
  }



  Column BuildLogin(BuildContext context) {
    return Column(
                children: [
                  textfieldWidget(context, 'Email', LoginemailIDController,
                      TextInputType.emailAddress, false),
                  SizedBox(height: 20),
              textfieldWidget(context, 'Password', LoginpasswordController,
                  TextInputType.visiblePassword, true),
              // SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Row(
                  children: [
                    Theme(
                       data: ThemeData(
              unselectedWidgetColor: widgetColor
          ), 
                      child: Transform.scale(scale: 1.25 ,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                          
                        ),
                          focusColor:widgetColor,
                          activeColor: widgetColor,
                          hoverColor: widgetColor,
                            value: checkbox,
                            onChanged: (value) {
                              setState(() {
                                checkbox = value!;
                              });
                            }),
                      ),
                    ),
                    // SizedBox(width:02),
                    Text(
                      "Remember Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                          color: Color(0xff3289eb),
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )
                  ],
                ),
              ),    
                ],
              );
  }

  
}
