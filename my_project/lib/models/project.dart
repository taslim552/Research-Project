import 'package:my_project/models/stats.dart';
import 'package:my_project/models/project_category.dart';
import 'package:my_project/models/skill.dart';

class Project with Stats{

  Project({required this.title,
          required this.description, 
          required this.category,
          required this.id});
  final Set<Skill>skills={};       
  final ProjectCategory category;        
  final String title;
  final String description;
  final String id;
  bool _isFeatured=false;

  bool get isFeatured =>_isFeatured;
  
  void toggleisFeatured(){
    _isFeatured=!_isFeatured;
}

void updateSkill(Skill skill){
  skills.clear();
  skills.add(skill);
}
}
List<Project> projects=[
  Project(
    id: '1',
    title: 'Image recognition',
    description: 'Recognise number plates',
    category: ProjectCategory.ai),
  Project(
    id: '2',
    title: 'Server security',
    description: 'Securing servers',
    category: ProjectCategory.cybersecurity),
  Project(
    id: '3',
    title: 'Adhoc Network',
    description: 'Vehicular Adhoc Network',
    category: ProjectCategory.wn),
  Project(
    id: '4',
    title: 'UAV',
    description: 'Autonomous UAV',
    category: ProjectCategory.robotics),
    
 
  
];