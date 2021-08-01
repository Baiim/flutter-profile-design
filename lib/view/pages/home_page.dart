import 'package:flutter/material.dart';
import 'package:test/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text('Profile Picture', style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/primary.png',
              width: 140,
            ),
            SizedBox(
              height: 16,
            ),
            Text('Anne Margaritha',style: TextStyle(
              fontSize: 18,
              color: primaryColor,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(
              height: 4,
            ),
            Text('UX Designer',style: TextStyle(
              fontSize: 16,
              color: greyColor,
              fontWeight: FontWeight.w400,
            ),),
            SizedBox(
              height: 70,
            ),
            Wrap(
              spacing: 38,
              runSpacing: 30,
              children: [
                Image.asset(
                  'assets/images/item-1.png',
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item-2.png',
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item-3.png',
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item-4.png',
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item-5.png',
                  width: 80,
                ),
                Image.asset(
                  'assets/images/item-6.png',
                  width: 80,
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 224,
              height: 55,
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  primary: orangeColor,
                  onPrimary: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
                
                onPressed: (){
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ), 
                    builder: (context){
                      return Container(
                        height: 290,
                        padding: EdgeInsets.symmetric(
                          vertical: 50
                        ),
                        color: whiteColor,
                        child: Column(
                          children: [
                            Text('Update Photo',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),),
                            Text('You are only able to change\nthe picture profile once',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: greyColor,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 224,
                              height: 55,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: orangeColor,
                                  onPrimary: whiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)
                                  )
                                ),
                                onPressed: (){},
                                child: Text('Continue',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400
                                ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
                },
                child: Text('Update Profile',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
        ),
        ),
      ),
    );
  }
}
