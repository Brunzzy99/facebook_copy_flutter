import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          FacebookNotificationWidget(
            name: 'Jura Jurić',
            time: '1h ago',
            image:
                'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375__340.png',
            notificationText: 'liked your post',
          ),
          FacebookNotificationWidget(
            name: 'Facebook',
            time: '1 day ago',
            image:
                'https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png',
            notificationText: 'suggests blocking Robor Robić as his content seems harmful and can be described as spam.',
          ),
          FacebookNotificationWidget(
            name: 'Robot Robić',
            time: '1 day ago',
            image:
            'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            notificationText: 'create a event: "World domination"',
          ),
          FacebookNotificationWidget(
            name: 'Robot Robić',
            time: '2 day ago',
            image:
            'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            notificationText: 'create a event: "World domination"',
          ),
          FacebookNotificationWidget(
            name: 'Robot Robić',
            time: '3 day ago',
            image:
            'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            notificationText: 'create a event: "World domination"',
          ),
          FacebookNotificationWidget(
            name: 'Robot Robić',
            time: '4 day ago',
            image:
            'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            notificationText: 'create a event: "World domination"',
          ),
          FacebookNotificationWidget(
            name: 'Robot Robić',
            time: '5 day ago',
            image:
            'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            notificationText: 'create a event: "World domination"',
          ),
          FacebookNotificationWidget(
            name: 'Robot Robić',
            time: '6 day ago',
            image:
            'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            notificationText: 'create a event: "World domination"',
          ),
          FacebookNotificationWidget(
            name: 'Robot Robić',
            time: '7 day ago',
            image:
            'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Free-Download.png',
            notificationText: 'create a event: "World domination"',
          ),
          FacebookNotificationWidget(
            name: 'Iva Ivić',
            time: '1 month ago',
            image:
            'https://cdn2.vectorstock.com/i/1000x1000/54/41/young-and-elegant-woman-avatar-profile-vector-9685441.jpg',
            notificationText: 'is your new friend. Say hello',
          ),
        ],
      ),
    );
  }
}

class FacebookNotificationWidget extends StatelessWidget {
  final String name;
  final String time;
  final String image;
  final String notificationText;

  const FacebookNotificationWidget({
    super.key,
    required this.name,
    required this.time,
    required this.image,
    required this.notificationText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 2, color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(image),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$name $notificationText',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '$time ago',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}