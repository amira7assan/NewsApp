import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subTitle;
  final String? outhor;
  final String? content;

  const EmptyPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.outhor, this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('more details', style: TextStyle( color: Colors.grey ,fontSize: 30) ,),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
            children: [
            if (imageUrl != null)
              Image.network(
              imageUrl!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
             // const SizedBox(height: 200),
              Text(
                title ?? 'No Title Available',
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                // textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                content ?? 'No content Available',
                style: const TextStyle(fontSize: 20,color: Colors.blueGrey),
                // textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),

              Text(
              subTitle ?? 'No Subtitle Available',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              outhor ?? 'No outher Available',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.normal,color: Colors.blueGrey),
            )
            ,
          ],
        ),
      ),
    );
  }
}