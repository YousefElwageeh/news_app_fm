import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget BuildArticals() {
    var imageUrl =
        'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png';
    return ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Image.network(
                imageUrl,
                height: 200,
                width: 150,
              ),
              Expanded(
                child: Column(
                  children: const [
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Text(
                        'اغلي سياره في المملكه العربيه السعوديه',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text('2023/5/8'),
                  ],
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
            height: 3,
          );
        },
        itemCount: 10);
  }
}
