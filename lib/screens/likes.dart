import 'package:flutter/material.dart';
import 'package:instagram_clone/common/font.dart';

class Likes extends StatelessWidget {
  const Likes({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Notifications",
          style: fontstyle(),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              padding: const EdgeInsets.all(12),
              width: width * 0.12,
              height: height * 0.12,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(Icons.person_add),
              ),
            ),
            title: Text(
              "Follow requests",
              style: fontstyle(),
            ),
            subtitle: Text(
              "Approve or ignore request",
              style: fontstyle(),
            ),
          ),
          ListTile(
            leading: Container(
              padding: const EdgeInsets.all(2),
              width: width * 0.12,
              height: height * 0.12,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: Container(
                width: width * 0.11,
                height: height * 0.11,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check_box),
              )),
            ),
            title: Text(
              "Your are all cauht up",
              style: fontstyle(),
            ),
            subtitle: Text(
              "See new activity",
              style: fontstyle(colors: Colors.blue),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Text(
                "Last 30 days",
                style: fontstyle(fw: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(2),
                    width: width * 0.12,
                    height: height * 0.12,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        width: width * 0.11,
                        height: height * 0.11,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2023/07/04/10/35/sheep-8106018_640.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    "Malik Zohaib ",
                    style: fontstyle(),
                  ),
                  subtitle: Text(
                    "Likes your photo\n2w",
                    style: fontstyle(),
                  ),
                  isThreeLine: true,
                  trailing: Container(
                    width: width * 0.09,
                    height: height * 0.05,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2023/04/13/11/27/hedgehog-7922370_640.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
