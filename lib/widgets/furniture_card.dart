import 'package:flutter/material.dart';

import '../models/furniture.dart';
import '../pages/detail_page.dart';
import '../themes.dart';

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final Furniture items = furnitureList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(furniture: items),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          items.imageAsset,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Text(
                        items.name,
                        style: blackTextStyle.copyWith(fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\$${items.price}',
                            style: blackTextStyle.copyWith(fontSize: 16),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 255, 217, 0),
                              ),
                              Text(
                                '${items.rating}',
                                style: greyTextStyle.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: furnitureList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 3),
      ),
    );
  }
}
