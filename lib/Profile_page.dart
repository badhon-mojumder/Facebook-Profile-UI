import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF7FF),

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 1,
        leading: Icon(Icons.menu, color: Colors.black87, size: 30),
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications, color: Colors.black54, size: 30),
          ),
        ],
      ),

      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1681140029773-df986f75cbf2?w=600&auto=format&fit=crop&q=60',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: -40,
                left: 18,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepPurpleAccent,
                              Colors.purpleAccent,
                            ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(100),
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            ),
                          ],
                          //shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.red.shade200,
                            width: 2
                          )
                        ),
                        child: Image.network(
                          'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?w=600&auto=format&fit=crop&q=60',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, StackTrace){
                            return Icon(Icons.person,color: Colors.white,size: 50,);
                          }
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(child: Icon(Icons.camera_alt, size: 30)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
