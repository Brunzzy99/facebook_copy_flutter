import 'package:facebook_copy/home/new_post.dart';
import 'package:facebook_copy/home/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          NewPost(),
          Post(
            name: 'Jura Jurić',
            pictureUrl: '',
            profilePictureUrl: 'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375__340.png',
            text: 'Kako se služi s fejsbukom?',
          ),
          Post(
            name: 'Iva Ivić',
            pictureUrl: 'https://img.24sata.hr/pVRkkIFbhKeWCiv8T6phlbR6RRk=/1243x700/smart/media/images/src/20080416/83869.jpg',
            profilePictureUrl: 'https://cdn2.vectorstock.com/i/1000x1000/54/41/young-and-elegant-woman-avatar-profile-vector-9685441.jpg',
            text: 'Opal mi kotač s traktora.',
          ),
          Post(
            name: 'Stjepan Stjepić',
            pictureUrl: 'https://www.bug.hr/img/kemicar-u-kuci-2-kako-napraviti-dobar-gemist_4VF_eg.jpg',
            profilePictureUrl: 'https://img.freepik.com/free-icon/user_318-219673.jpg',
            text: 'Vino je moja terapija.',
          ),
          Post(
            name: 'Josip Jožić',
            pictureUrl: '',
            profilePictureUrl: 'https://img.freepik.com/free-icon/man_318-201475.jpg',
            text: 'Ljudi me zovu Jozo.',
          ),
          Post(
            name: 'Anonimus Anonimić',
            pictureUrl: '',
            profilePictureUrl: 'https://icon-library.com/images/facebook-user-icon/facebook-user-icon-27.jpg',
            text: 'Ne bi volio diskutirati svoj status.',
          ),
          Post(
            name: 'Robot Robić',
            pictureUrl: '',
            profilePictureUrl: 'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            text: '01001001 00100000 01110111 01101001 01101100 01101100 00100000 01100011 01101111 01101110 01110001 01110101 01110010 01100101 00100000 01110100 01101000 01100101 00100000 01110111 01101111 01110010 01101100 01100100 00100001',
          ),
        ],
      ),
    );
  }
}