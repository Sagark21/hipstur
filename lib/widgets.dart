import 'package:flutter/material.dart';



Container SocialIconsWidget(Widget widget) {
    return Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff4165ad),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: widget,
                        ),
                      ),
                    );
  }


  Container textfieldWidget(BuildContext context, String? name,
      TextEditingController controller, TextInputType textType, bool obscure) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.75,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: TextField(
          obscureText: obscure,
          autofocus: false,
          cursorColor: Color(0xff505969),
          keyboardType: textType,
          controller: controller,
          style: TextStyle(color: Colors.white,fontSize: 20),
          decoration: InputDecoration(
            
            filled: true,
            fillColor: Colors.transparent,
            labelText: name,
            hintText: name,
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
            labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
            focusColor: Colors.grey[500],
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.0),
            ),
          )),
    );
  }