import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const ProfilePictures(),
          const ProfileName(),
          Divider(
            thickness: 15.0,
            color: Colors.grey.shade300,
          ),
          const ProfileDetails(),
          Divider(
            thickness: 5.0,
            color: Colors.grey.shade300,
          ),
          const FriendsList(),
          Divider(
            thickness: 5.0,
            color: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}

class ProfilePictures extends StatelessWidget {
  const ProfilePictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              height: 180,
              width: 180,
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
        ],
      ),
    );
  }
}

class ProfileName extends StatelessWidget {
  const ProfileName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      height: 50,
      child: const Text(
        'Bruno Mihovilić',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      padding: const EdgeInsets.fromLTRB(26.0, 10.0, 80.0, 10.0),
      child: Column(
        children: [
          Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 40.0,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.house_sharp,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Flexible(
                  child: Text.rich(
                    overflow: TextOverflow.visible,
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: 'Lives in '),
                        TextSpan(
                          text: 'Začretje, Krapinsko-zagorska županija',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Flexible(
                  child: Text.rich(
                    overflow: TextOverflow.visible,
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: 'From '),
                        TextSpan(
                          text: 'Zabok, Krapinsko-zagorska županija',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.school,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Flexible(
                  child: Text.rich(
                    overflow: TextOverflow.visible,
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: 'Finished college at '),
                        TextSpan(
                          text: 'Međimursko veleučilište u Čakovcu',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.work,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Flexible(
                  child: Text.rich(
                    overflow: TextOverflow.visible,
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(text: 'Works at '),
                        TextSpan(
                          text: 'SmartIS d.o.o.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(text: ' as a '),
                        TextSpan(
                          text: 'Junior QA automation engineer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.cake,
                  color: Colors.grey.shade500,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Flexible(
                  child: Text.rich(
                    overflow: TextOverflow.visible,
                    TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: '09.09.1999.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FriendsList extends StatelessWidget {
  const FriendsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.0,
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
            height: 60.0,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Friends',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 135.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 115.0,
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage('https://img.freepik.com/free-icon/user_318-219673.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Stjepan Stjepić',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 115.0,
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage('https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375__340.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Jura Jurić',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 115.0,
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage('https://icon-library.com/images/facebook-user-icon/facebook-user-icon-27.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Anonimus Anonimić',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 5.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 135.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 115.0,
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage('https://cdn2.vectorstock.com/i/1000x1000/54/41/young-and-elegant-woman-avatar-profile-vector-9685441.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Iva Ivić',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 115.0,
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage('https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Robot Robić',
                        textAlign: TextAlign.center,

                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 115.0,
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: NetworkImage('https://img.freepik.com/free-icon/man_318-201475.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        'Josip Jožić',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
