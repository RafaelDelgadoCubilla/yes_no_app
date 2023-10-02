import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
          ),
        ),
        title: const Text('Mi amor 💖'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }

}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                
              })
            )
          ],
      
        ),
      ),
    );
  }
}