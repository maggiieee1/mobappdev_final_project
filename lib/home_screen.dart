import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'sproutly',
          style: TextStyle(
            color: Colors.green,
            fontSize: screenWidth * 0.06, 
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning, Brian!',
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Text(
                'All plants are thriving! Keep up the great care.',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                'My Plants',
                style: TextStyle(
                  fontSize: screenWidth * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              SizedBox( 
                height: screenHeight * 0.22,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildPlantCard('Monstera', 'Indoor', 'assets/plant1.png', screenWidth, screenHeight),
                    _buildPlantCard('Cactus', 'Indoor', 'assets/plant2.png', screenWidth, screenHeight),
                    _buildPlantCard('Howea', 'Indoor', 'assets/plant3.png', screenWidth, screenHeight),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                'Community',
                style: TextStyle(
                  fontSize: screenWidth * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              _buildCommunityPost('@plantita_ng_chicago', 'Best soil mix for succulents?', 'assets/user1.png', screenWidth),
              _buildCommunityPost('@urAklanonPlantito', 'Anyone up for a plant swap?', 'assets/user2.png', screenWidth),
              _buildCommunityPost('@AuntieNiyongGreenThumbed', 'Suggest what to plant next?', 'assets/user3.png', screenWidth),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget _buildPlantCard(String name, String type, String imagePath, double screenWidth, double screenHeight) {
    return Container(
      margin: EdgeInsets.only(right: screenWidth * 0.03),
      width: screenWidth * 0.3,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: screenWidth * 0.25,
              height: screenHeight * 0.12,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: screenHeight * 0.005),
          Text(name, style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold)),
          Text(type, style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildCommunityPost(String username, String message, String avatarPath, double screenWidth) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatarPath),
        radius: screenWidth * 0.06,
      ),
      title: Text(
        username,
        style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(message, style: TextStyle(fontSize: screenWidth * 0.035)),
      trailing: Icon(Icons.chat_bubble_outline, color: Colors.grey),
    );
  }
}
