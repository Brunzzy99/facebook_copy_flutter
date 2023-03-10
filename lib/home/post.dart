import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String profilePictureUrl;
  final String name;
  final String text;
  final String pictureUrl;

  const Post({
    super.key,
    required this.profilePictureUrl,
    required this.name,
    required this.text,
    required this.pictureUrl,
  });

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Publisher(
                publisherProfilePictureUrl: widget.profilePictureUrl,
                publisherName: widget.name,
              ),
              checkIfTextIsEmpty(
                widget.text,
              ),
              checkIfPictureUrlIsEmpty(
                widget.pictureUrl,
              ),
              const PostInteractionButtons(),
            ],
          ),
        ),
        Divider(
          thickness: 15.0,
          color: Colors.grey.shade300,
        ),
      ],
    );
  }
}

class Publisher extends StatelessWidget {
  final String publisherProfilePictureUrl;
  final String publisherName;

  const Publisher({
    super.key,
    required this.publisherProfilePictureUrl,
    required this.publisherName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print('Clicked on profile picture of $publisherName');
            },
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(publisherProfilePictureUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Clicked on name of $publisherName');
            },
            child: SizedBox(
              width: 300.0,
              height: 40.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(publisherName,
                    style: const TextStyle(
                      fontSize: 20.0,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget checkIfTextIsEmpty(String text) {
  if (text == '') {
    return Container();
  } else {
    return PostText(
      postText: text,
    );
  }
}

class PostText extends StatelessWidget {
  final String postText;

  const PostText({
    super.key,
    required this.postText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          alignment: Alignment.centerLeft,
          child: Text(
            postText,
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}

Widget checkIfPictureUrlIsEmpty(String url) {
  if (url == '') {
    return Container();
  } else {
    return PostPicture(
      postPictureUrl: url,
    );
  }
}

class PostPicture extends StatelessWidget {
  final String postPictureUrl;

  const PostPicture({
    super.key,
    required this.postPictureUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(5.0),
      child: Image.network(postPictureUrl),
    );
  }
}

class PostInteractionButtons extends StatefulWidget {
  const PostInteractionButtons({Key? key}) : super(key: key);

  @override
  State<PostInteractionButtons> createState() => _PostInteractionButtonsState();
}

class _PostInteractionButtonsState extends State<PostInteractionButtons> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: Icon(
              isLiked
                  ? Icons.thumb_up_alt_rounded
                  : Icons.thumb_up_alt_outlined,
              color: Colors.blue,
            ),
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            label: Text(
              isLiked ? 'I like it' : 'Like it',
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: const Icon(Icons.comment,
              color: Colors.blue,),
            onPressed: () {
              setState(() {});
            },
            label: const Text('Comment',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: const Icon(Icons.share,
              color: Colors.blue,),
            onPressed: () {
              setState(() {});
            },
            label: const Text('Share',
              style: TextStyle(
                color: Colors.blue,
              ),),
          ),
        ],
      ),
    );
  }
}
