import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://people.com/thmb/SGTfbP4sDmD7Iy3uBTquutBBI9Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(719x9:721x11)/Scarlett-Johansson-Says-She-Was-Sexualized-at-a-Young-Age-by-Her-Movie-Career-101122-736195af6ffc476a9921b656b9e0c8aa.jpg'),
          ),
        ),
        title: const Text('ChatAPP'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
              },
            )),

            //Caja de texto
            const MessageFielBox()
          ],
        ),
      ),
    );
  }
}
