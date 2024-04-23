import 'package:flutter/material.dart';
import 'package:individual_meetup_app/core/theme/app_theme.dart';
import 'package:individual_meetup_app/core/widget/app_bar_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/home_page/bottom_nav_bar_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/home_page/popular_meetup_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/home_page/search_textfield_widget.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/home_page/top_trending_meetups.dart';
import 'package:individual_meetup_app/feature_1/view/widgets/home_page/trending_popular_people_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(55), child: AppBarWidget(text: "Individual Meetup")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              SearchTextFieldWidget(),
              SizedBox(
                height: 18,
              ),
              PopularMeetupWidget(),
              Text(
                'Trending Popular People',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppTheme.text),
              ),
              SizedBox(
                height: 8,
              ),
              TrendingPopularPeopleWidget(),
              SizedBox(
                height: 8,
              ),
              Text(
                'Top Trending Meetups',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppTheme.text),
              ),
              SizedBox(
                height: 8,
              ),
              TopTrendingMeetups(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
