import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/model/item_popular.dart';
import 'package:movie_app/views/details_screen.dart';

class PopularView extends StatefulWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  State<PopularView> createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.62,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 20),
      itemCount: 6,
      itemBuilder: (context, index) {
        return _itemPopular(
          listItemPopular[index],
        );
      },
    );
  }

  Widget _itemPopular(ItemPopular itemPopular) {
    return GestureDetector(
      onTap: () {
        var route =
            MaterialPageRoute(builder: (context) => const DetailsScreen());
        Navigator.push(context, route);
      },
      child: Column(children: [
        Expanded(
          flex: 5,
          child: Stack(children: [
            Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(itemPopular.urlPhoto))),
            ),
            Positioned(
              bottom: 17,
              right: 15,
              child: SizedBox(
                height: 15,
                width: 76,
                child: Text(
                  itemPopular.releaseDate,
                  style: const TextStyle(
                    fontFamily: "Comfortaa",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]),
        ),

        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              itemPopular.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: "Comfortaa",
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
        ),
        // ),
      ]),
    );
  }
}
