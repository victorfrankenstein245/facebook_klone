import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    @required this.currentUser,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "What\'s on your mind",
                  ),
                ),
              )
            ],
          ),
          const Divider(height: 10, thickness: 0.5),
          // ignore: deprecated_member_use
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => print("Live"),
                  icon: const Icon(Icons.videocam, color: Colors.red),
                  label: Text("Live"),
                ),
                const VerticalDivider(width: 8),
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => print("photo"),
                  icon: const Icon(Icons.photo_library, color: Colors.green),
                  label: Text("Photo"),
                ),
                const VerticalDivider(width: 8),
                // ignore: deprecated_member_use
                FlatButton.icon(
                  onPressed: () => print("Room"),
                  icon:
                      const Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: Text("Room"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
