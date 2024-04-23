import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final imageProvider = StateProvider<int>((ref) => 0);

class PopularMeetupWidget extends ConsumerWidget {
  const PopularMeetupWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentIndex = ref.watch(imageProvider);
    final pageController = PageController(initialPage: currentIndex);

    final List<String> imageUrls = [
      "assets/images/img_meetup_1.jpg",
      "assets/images/img_meetup_2.jpg",
      "assets/images/img-meetup_3.jpg",
    ];
    return SizedBox(
      // color: Colors.amber,
      height: 280,
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) => currentIndex = index,
              itemCount: imageUrls.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    SizedBox(
                      height: 240,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imageUrls[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Popular Meetups",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          Text("in India",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                imageUrls.length,
                (index) => InkWell(
                  onTap: () => pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                  ),
                  child: DotsIndicator(
                    dotsCount: 1,
                    position: 0,
                    decorator: DotsDecorator(
                      color: Colors.black,
                      activeColor:
                          index == currentIndex ? Colors.black : Colors.black38,
                      size: const Size.square(10),
                      activeSize: const Size(10, 10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
