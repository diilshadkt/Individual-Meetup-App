import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:individual_meetup_app/core/theme/app_theme.dart';
import 'package:share_plus/share_plus.dart';

final pageIndexProvider = StateProvider<int>((ref) => 0);

class ImageSliderWidget extends ConsumerWidget {
  const ImageSliderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentIndex = ref.read(pageIndexProvider);
    final pageController = PageController(initialPage: currentIndex);

    final imageList = [
      'https://t4.ftcdn.net/jpg/01/18/18/23/360_F_118182313_W6MDZ18sYvq3LnWTuqzJNBe2WeSgS7hp.jpg',
      // 'https://www.shutterstock.com/image-photo/beachside-tourism-landscape-luxurious-beach-600nw-2104948745.jpg',
      // 'https://www.shutterstock.com/image-photo/pair-sun-loungers-beach-umbrella-600nw-323287880.jpg',
      // 'https://www.shutterstock.com/image-photo/beachside-tourism-landscape-luxurious-beach-600nw-2104948745.jpg',
      // 'https://www.shutterstock.com/image-photo/pair-sun-loungers-beach-umbrella-600nw-323287880.jpg',
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqm9nqFlOOCIUx6FmKJmFdrYzepDTXLfraLfOESybPnCw1rrNSo9rMl6AxjAaxCQ_sQqo&usqp=CAU",
      "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?cs=srgb&dl=pexels-fabianwiktor-994605.jpg&fm=jpg",
      "https://static.vecteezy.com/system/resources/previews/017/186/175/non_2x/tranquil-beach-scene-exotic-panorama-in-tropical-island-resort-palm-trees-white-sand-blue-sky-and-sea-honeymoon-destination-summer-vacation-or-holiday-conceptual-scenery-panoramic-landscape-photo.jpg"
    ];
    return Container(
      height: 400,
      padding: const EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 209, 209, 209),
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(16), bottom: Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                PageView.builder(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      height: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(imageList[index]),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              onTap: () {
                                pageController.animateToPage(index,
                                    duration: const Duration(milliseconds: 100),
                                    curve: Curves.linear);
                              },
                              child: DotsIndicator(
                                dotsCount: 1,
                                position: 0,
                                decorator: DotsDecorator(
                                  color: AppTheme.text,
                                  spacing: const EdgeInsets.all(4),
                                  activeColor: index == currentIndex
                                      ? Colors.white
                                      : Colors.grey,
                                  size: const Size.square(10),
                                  activeSize: const Size(10, 10),
                                ),
                              ),
                            )),
                      );
                    }))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.file_download_outlined,
                size: 28,
                color: Colors.grey.shade700,
              ),
              Icon(
                Icons.bookmark_outline,
                size: 28,
                color: Colors.grey.shade700,
              ),
              Icon(
                Icons.favorite_outline,
                size: 28,
                color: Colors.grey.shade700,
              ),
              const Icon(
                Icons.filter_center_focus_outlined,
                size: 28,
                color: Colors.black,
              ),
              const Icon(
                Icons.star_outline,
                size: 28,
                color: Colors.black,
              ),
              InkWell(
                onTap: () async {
                  await Share.share(
                    'Share',
                  );
                },
                child: const Icon(
                  Icons.share_outlined,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
