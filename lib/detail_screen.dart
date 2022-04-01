import 'package:flutter/material.dart';
import 'constants.dart';
import 'custom_tile.dart';

class DetailScreen extends StatelessWidget {
  final _imageUrl;

  const DetailScreen(this._imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 2 + 40,
            width: MediaQuery.of(context).size.width,
            child: Hero(
              tag: _imageUrl,
              child: Image.asset(
                _imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff61688B),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    color: const Color(0xffFFD073),
                    child: const Text(
                      'BESTSELLER',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'DESIGN THINKING',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(
                        Icons.people,
                        color: Color(0xff61688B),
                      ),
                      Text(
                        '18k',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff61688B),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xff61688B),
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff61688B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        '\$50',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2 + 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Course Content',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: courseContent.map((content) {
                          return CustomTile(content['number'], content['title'],
                              content['time']);
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: const Color(0xffFFEDEE),
                      child: const Icon(
                        Icons.shop,
                        color: Color(0xffFF6670),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: const Color(0xff6E8AFA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 90),
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
