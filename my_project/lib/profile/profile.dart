import 'package:flutter/material.dart';
import 'package:my_project/profile/stats_table.dart';
import 'package:my_project/shared/shared_text.dart';
import 'package:my_project/models/project.dart';
import 'package:my_project/theme.dart';
class Profile extends StatelessWidget {
  const Profile({super.key,required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle(project.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: AppColors.secondaryColor.withValues(alpha: 0.3),
              child:Row(
                children: [
                  Image.asset(
                    'assets/img/category/${project.category.image}',
                    width: 140,
                    height: 140,),
                    SizedBox(width: 20,),
                    Expanded(child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledHeading(project.category.title),
                        StyledText(project.category.description)
                      ],
                    )
                    )
                ],)
            ),
            Center(
                      child: Icon(Icons.code,
                      color:AppColors.primaryColor,)
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          StatsTable(project),SkillList(project),
                        ],
                      )                    )
          ],
        ),
      ),
    );
  }
}