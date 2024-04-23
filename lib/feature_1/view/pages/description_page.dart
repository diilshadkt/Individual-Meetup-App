import 'package:flutter/material.dart';
import 'package:individual_meetup_app/core/widget/app_bar_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/description_page/image_slider_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/description_page/ratin_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/description_page/synopsis_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/home_page/bottom_nav_bar_widget.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBarWidget(text: "Description")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              ImageSliderWidget(),
              SizedBox(
                height: 8,
              ),
              RatingRowWidget(),
              SizedBox(
                height: 25,
              ),
              SynopsisWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
