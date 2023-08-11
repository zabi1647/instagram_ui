import 'package:flutter/material.dart';
import 'package:instagram_clone/common/font.dart';
import 'package:instagram_clone/common/icon_button.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Page name ",
          style: fontstyle(),
        ),
        actions: [
          const Icon(
            Icons.video_call_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: width * 0.03,
          ),
          const Icon(
            Icons.note_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: width * 0.02,
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                " Messages",
                style: fontstyle(size: 18),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Requests",
                  style: fontstyle(colors: Colors.blue, size: 18),
                ),
              ),
              SizedBox(
                width: width * 0.02,
              )
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    width: width * 0.12,
                    height: height * 0.12,
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2023/07/29/14/31/deer-8157052_640.png"))),
                  ),
                  title: Text(
                    "Username",
                    style: fontstyle(),
                  ),
                  subtitle: Text(
                    "sent 10m ago",
                    style: fontstyle(),
                  ),
                  trailing: iconsButton(
                      icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
