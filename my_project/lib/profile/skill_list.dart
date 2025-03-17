import 'package:flutter/material.dart';
import 'package:my_project/models/project.dart';
import 'package:my_project/models/skill.dart';
import 'package:my_project/shared/shared_text.dart';
import 'package:my_project/theme.dart';

class SkillList extends StatefulWidget {
  const SkillList(this.project,{super.key});
final Project project;
  @override
  State<SkillList> createState() => _SkillListState();
}

class _SkillListState extends State<SkillList> {
  late List<Skill>availableSkills;
   late Skill selectedSkill;
  @override
  void initState(){
    availableSkills=allSkills.where((skill){
      return skill.projectCategory==widget.project.category;
    }
    ).toList();
    super.initState();
    if (availableSkills.isNotEmpty) {
    selectedSkill = widget.project.skills.isNotEmpty
        ? widget.project.skills.first
        : availableSkills.first;
  }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
        color: AppColors.secondaryColor.withValues(alpha: 0.5),
        child: Column(
          children: [
           StyledHeading('Choose a skill for your project'),
StyledText('Skills are unique to your project category'),
SizedBox(
  height: 20,
), // SizedBox
Row(
  children: availableSkills.map((skill) {
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(2),
      color: skill == selectedSkill ? Colors.red : Colors.transparent,

      child:GestureDetector(
        onTap:(){
          setState(() {
            widget.project.updateSkill(skill);
            selectedSkill=skill;
          });
        },
      
      child: Image.asset(
        'assets/img/skills/${skill.image}',
        width: 70,
      ), // Image.asset
      ),
    ); // Container
  }).toList(),
), // Row
SizedBox(
  height: 10,
),
StyledText(selectedSkill.name)
],
),
),
);
}
}// SizedBox

