import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('FEED'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // Sample Post
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Info
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/user_avatar.png'), // Replace with your asset
                      radius: 20,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'User Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Post Image
                Container(
                  height: 200,
                  color: Colors.grey[300], // Placeholder for image
                  child: const Center(
                    child: Icon(Icons.image, size: 50, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 8),
                // Post Description
                const Text(
                  'This is a sample post description. It might be a bit longer to show text wrapping.',
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                // Post Actions
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.thumb_up_alt_outlined),
                      onPressed: () {
                        // Add like functionality here
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.comment_outlined),
                      onPressed: () {
                        // Add comment functionality here
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share_outlined),
                      onPressed: () {
                        // Add share functionality here
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          // Add more posts here
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // Set Feed as the default selected item
        onTap: (int index) {
          // Add logic to switch between Feed, Post, and Profile
          // You can use Navigator to navigate to different pages
          // For example:
          // if (index == 1) {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage()));
          // } else if (index == 2) {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
          // }
        },
      ),
    );
  }
}
