import 'package:flutter/material.dart';
import 'package:instagram_clone/common/font.dart';
import 'package:instagram_clone/common/icon_button.dart';
import 'package:instagram_clone/screens/Login.dart';
import 'package:instagram_clone/screens/likes.dart';
import 'package:instagram_clone/screens/messages.dart';
import 'package:instagram_clone/screens/stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: fontstyle(fw: FontWeight.w200, family: font, size: 26),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Likes()));
            },
            icon: const Icon(Icons.favorite),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Messages()));
            },
            icon: const Icon(Icons.message),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: height * 0.14,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 100,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: width * 0.01,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Story(height * 0.14, width * 0.14, index);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: height * 0.61,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/1361394182/photo/funny-british-shorthair-cat-portrait-looking-shocked-or-surprised.webp?b=1&s=612x612&w=0&k=20&c=-niqIUX8Kfiyn50xgUzxxUYX6H2q9BlGc3PX5PVM-iA="),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              width: width * 0.13,
                              height: height * 0.13,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_640.jpg"),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Text(
                              "Title of page",
                              style: fontstyle(
                                  colors: Colors.black,
                                  fw: FontWeight.w700,
                                  size: 18),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Follow",
                                  style: fontstyle(colors: Colors.white),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        iconsButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            ontap: () {}),
                        iconsButton(
                            icon: const Icon(
                              Icons.comment,
                              color: Colors.white,
                            ),
                            ontap: () {}),
                        iconsButton(
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                          ontap: () {},
                        ),
                        const Spacer(),
                        iconsButton(
                          icon: const Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.white,
                          ),
                          ontap: () {},
                        ),
                        SizedBox(
                          width: width * 0.04,
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "123 likes",
                        style: fontstyle(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "View all 1234 comments ",
                        style: fontstyle(colors: Colors.grey),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
