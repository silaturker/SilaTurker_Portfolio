import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:silaturker/config.dart';
import 'package:silaturker/widgets/head.dart';
import 'package:flutter/widgets.dart';


class LargeAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Head(about: false),
          _core(context),
          _aboutme(context),
          _aboutthings(context),
          _aboutwebsite(context),
        ],
      ),
    );
  }

  Widget _core(BuildContext context) {
    var heigth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.08, vertical: heigth * 0.1),
      child: Row(
        mainAxisAlignment: width > Config.widthLimit
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        crossAxisAlignment: width > Config.widthLimit
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [_text(context), SizedBox(width: 10), _image(context)],
      ),
    );
  }


  Widget _text(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Flexible(
      child: Container(
          padding: width > Config.widthLimit
              ? EdgeInsets.symmetric(horizontal: width * 0.08, vertical: 10)
              : EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child:
                Text(
                  'Hello, I am Sıla TÜRKER 👋\n',
                  style:
                  DefaultTextStyle.of(context).style.copyWith(fontSize: 25, color: Colors.white),

                ),

                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  color: Colors.indigo,
                  border: Border.all(width: 1, color: Colors.blueAccent),
                  borderRadius: const BorderRadius.all(const Radius.circular(30))
                ),

              ),


              SizedBox(height: 15),
              Container(
                child: Text(
                  "I'm a Computer Engineer, 💻\nI am interested in mobile development" ,

                  style: DefaultTextStyle.of(context).style.copyWith(
                      fontSize: 35, fontWeight: FontWeight.bold, height: 1.5, color: Colors.white),
                ),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                    color: Colors.indigo,
                    border: Border.all(width: 1, color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(const Radius.circular(30))
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: RichText(
                  text: TextSpan(
                      text: 'Student',
                      style: DefaultTextStyle.of(context)
                          .style
                          .copyWith(fontSize: 25, color: Colors.white),
                      children: [
                        TextSpan(text: ' @ ', style: TextStyle(fontSize: 20, color: Colors.white),),
                        TextSpan(
                          text: width > 1150
                              ? 'ATILIM UNIVERSITY 🎓'
                              : 'AU',
                          style: DefaultTextStyle.of(context)
                              .style
                              .copyWith(fontSize: 25, color: Colors.white),

                        ),

                      ]
                  ),
                ),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(

                        color: Colors.black12.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                    color: Colors.indigo,
                    border: Border.all(width: 1, color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(const Radius.circular(30))

                ),

              ),


            ],
          )

      ),

    );
  }

  Widget _image(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigth = MediaQuery.of(context).size.height;
    return width > 1000
        ? Container(
      width: 215,
      height: 290,
      decoration:  BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.indigo.withOpacity(0.8),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 7), // changes position of shadow
            ),
          ],
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('silaaa.jpg'),
            fit: BoxFit.fill,
          )

      ),
    ): Container();
  }

  Widget _aboutme(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var date = DateTime.now();
    var birthday = DateTime(1998, 3, 12);
    var years = (date.difference(birthday).inHours ~/ 8760).toInt();
    return Container(
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'About me',
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(fontSize: 35, fontWeight: FontWeight.bold, height: 2),
            ),

          ),
          SizedBox(height: 30),
          Text(
            "Let me introduce myself.\nMy name is Sıla, I'm $years years old and I'm a computer engineering graduate.\nI like learning new things.\nI work in the front-end field.\nI'm interested in mobile programming.",
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 18, height: 2),
          )
        ],
      ),
    );
  }

  Widget _aboutthings(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'About the things I am doing',
              style: DefaultTextStyle.of(context)
                  .style
                  .copyWith(fontSize: 35, fontWeight: FontWeight.bold, height: 2),
            ),

          ),
          SizedBox(height: 30),
          Text(
            "Currently, I am doing an Erasmus internship as a Computer Engineer at Poznan University of Technology in Poland.",
            style: DefaultTextStyle.of(context)
                .style
                .copyWith(fontSize: 18, height: 2),
          )
        ],
      ),
    );
  }

  Widget _aboutwebsite(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      margin: EdgeInsets.only(bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

          ),
          SizedBox(height: 30),

        ],
      ),
    );
  }
}
