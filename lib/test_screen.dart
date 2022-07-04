import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        toolbarHeight: 70.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                  'https://xsgames.co/randomusers/avatar.php?g=female'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 9.0,
              ),
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[200],
              child: const Icon(
                Icons.camera_alt,
                size: 18.0,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[200],
              child: const Icon(
                Icons.edit,
                size: 18.0,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 4.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(18.0),
                ),
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                    ),
                    Text(
                      "Search",
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
              ),
              Container(
                height: 95.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                  ),
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    buildChatItem(),
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) =>
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          // video call circle
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.grey[200],
            backgroundImage: const NetworkImage(
                'https://xsgames.co/randomusers/assets/avatars/female/67.jpg'),
          ),

          const Padding(
            padding: EdgeInsetsDirectional.only(bottom: 3.0, start: 3.0),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jeffrey Hoffman',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'hello aliana, how are you doing?',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                ),
                const Text('8:27 PM'),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            // video call circle
            CircleAvatar(
              radius: 30.0,
              // backgroundColor: Colors.grey[200],
              backgroundImage: NetworkImage(
                'https://xsgames.co/randomusers/assets/avatars/male/51.jpg',
              ),
            ),

            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 3.0, start: 3.0),
              child: CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        const Text(
          'Eslam Younis',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}