import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yes_no_maybe_app/presentation/widgets/chat/contact_message_bubble.dart';
import 'package:yes_no_maybe_app/presentation/widgets/chat/my_message_bubble.dart';

const String avatarImage =
    'https://i.pinimg.com/150x150/b0/59/36/b05936f8b610178415d8b5a9a4b162ba.jpg';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _ChatView(),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(avatarImage),
          ),
        ),
        title: const Text(
          'Contacto',
        ),
        centerTitle: false);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const ContactMessageBubble()
                    : const MyMessageBubble();
              },
            ), //as if it was a recyclerview in android cause of the .builder
          ),
          Text('hola')
        ],
      ),
    ));
  }
}
