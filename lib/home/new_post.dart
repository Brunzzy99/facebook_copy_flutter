import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  const NewPost({Key? key}) : super(key: key);

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.0,
          padding: const EdgeInsets.all(5.0),
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  print('Clicked on new post profile picture');
                },
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://icon-library.com/images/facebook-user-icon/facebook-user-icon-27.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Clicked on "What is on your mind?" text');
                },
                child: const SizedBox(
                  width: 300.0,
                  height: 40.0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('What is on your mind?',
                        style: TextStyle(
                          fontSize: 20.0,
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Clicked on add picture button');
                },
                child: const Icon(
                  Icons.photo,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 10.0,
          color: Colors.grey,
        ),
      ],
    );
  }
}