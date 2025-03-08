import 'package:my_project/models/project_category.dart';

class Skill{
  final String id;
  final String image;
  final String name;
  final ProjectCategory projectCategory;
  Skill(
    {required this.id,
    required this.name,
    required this.image,
    required this.projectCategory}
  );
}
final List<Skill> allSkills=[
  Skill(
    id: '1',
    name: 'Machine Learning Algorithm',
    image: 'Machine_Learning_Algorithm.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '2',
    name: 'Data Processing',
    image: 'Data_Processing.jpgAlgorithm',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '3',
    name: 'Neural Network',
    image: 'nn.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '4',
    name: 'NLP',
    image: 'nlp.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '5',
    name: 'Penetration Testing',
    image: 'pt.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '6',
    name: 'Cryptography',
    image: 'crypt.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '7',
    name: 'Incidence Response',
    image: 'ir.jpg',
    projectCategory: ProjectCategory.ai),
Skill(
    id: '8',
    name: 'Network Security',
    image: 'ns.jpg',
    projectCategory: ProjectCategory.ai),
Skill(
    id: '9',
    name: 'Network Protocols',
    image: 'netp.jpg',
    projectCategory: ProjectCategory.ai),
Skill(
    id: '10',
    name: 'Routing & Switching',
    image: 'rs.jpg',
    projectCategory: ProjectCategory.ai),
Skill(
    id: '11',
    name: 'Signal Processing',
    image: 'sp.jpg',
    projectCategory: ProjectCategory.ai),
    Skill(
    id: '12',
    name: 'Network Simulation ',
    image: 'ns.jpg',
    projectCategory: ProjectCategory.ai),
    Skill(
    id: '13',
    name: 'Robotic Motion Planning',
    image: 'rmp.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '14',
    name: 'Computer Vision',
    image: 'cv.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '15',
    name: 'Embedded Systems',
    image: 'es.jpg',
    projectCategory: ProjectCategory.ai),
  Skill(
    id: '16',
    name: 'Control Systems',
    image: 'cs.jpg',
    projectCategory: ProjectCategory.ai),
];