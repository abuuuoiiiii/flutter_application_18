import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Image.asset(
                "asset/poojahegde.png",
                height: 265,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 170),
            child: CircleAvatar(
              backgroundImage: AssetImage("asset/poojahegde.png"),
              radius: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 270),
            child: Text(
              "3057",
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180, top: 270),
            child: Text(
              "274",
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 295, top: 270),
            child: Text(
              "52",
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 300),
            child: Text(
              "Followers",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 170, top: 300),
            child: Text(
              "Following",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 275, top: 300),
            child: Text(
              "Colloection",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          SizedBox(
            height: 700,
            width: 500,
            child: Divider(
              color: Colors.pink,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 50),
            child: Row(
              children: [
                Icon(
                  Icons.mail_outline,
                  color: Colors.pink,
                  size: 50,
                ),
                SizedBox(width: 20),
                Text(
                  "poojahegde@gmail.com",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 490, left: 50),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.pink,
                  size: 50,
                ),
                SizedBox(width: 20),
                Text(
                  "+91 393 1148 152 ",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 580, left: 50),
            child: Row(
              children: [
                Icon(
                  Icons.near_me_outlined,
                  color: Colors.pink,
                  size: 50,
                ),
                SizedBox(width: 20),
                Text(
                  "www.poojahegde.com",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
