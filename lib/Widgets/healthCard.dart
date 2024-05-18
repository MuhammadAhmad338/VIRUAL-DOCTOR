import 'package:flutter/material.dart';
import 'package:wellnow/Helper/widthHeight.dart';

class HealthCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageurl;
  HealthCard(
      {super.key,
      required this.title,
      required this.content,
      required this.imageurl});

  final WidthHeight _widthHeight = WidthHeight();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _widthHeight.screenHeight(
          context, 0.190), // Set your desired height here
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        margin: EdgeInsets.symmetric(
            horizontal: _widthHeight.screenWidth(context, 0.035),
            vertical: _widthHeight.screenHeight(context, 0.008)),
        child: ListTile(
          title: Text(title),
          subtitle: Text(content),
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
                imageurl), // Assuming TipsResponse has an imageUrl field
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
