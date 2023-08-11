import 'package:flutter/material.dart';

Center Story(double height, double width, int index) {
  if (index == 0) {
    return Center(
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://media.istockphoto.com/id/1361394182/photo/funny-british-shorthair-cat-portrait-looking-shocked-or-surprised.webp?b=1&s=612x612&w=0&k=20&c=-niqIUX8Kfiyn50xgUzxxUYX6H2q9BlGc3PX5PVM-iA="),
            child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ))),
      ),
    );
  } else {
    return Center(
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(2),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2023/08/02/14/56/animal-8165466_1280.jpg"),
        ),
      ),
    );
  }
}
