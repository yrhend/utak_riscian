// enum position left & right
enum AlignPos { left, right }

class Researcher {
  final AlignPos align;
  final String name;
  final String avatar;
  final String section;
  final String position;

  Researcher({
    required this.align,
    required this.name,
    required this.avatar,
    required this.section,
    required this.position,
  });
}

List<Researcher> researchers = [
  // copy paste lng to
  Researcher(
    align: AlignPos.left,
    name: 'Christian Josef Bolivar',
    avatar: 'assets/avatars/josef.png',
    section: 'Aristotle',
    position: 'Research Leader',
  ),
  // hanggang dito tas palitan yung nakalagay
  Researcher(
    align: AlignPos.right,
    name: 'Yrhen Dedoro',
    avatar: 'assets/avatars/yrhen.png',
    section: 'Archimedes',
    position: 'Research Member',
  ),
  Researcher(
    align: AlignPos.left,
    name: 'Ralph Ellis Vasquez',
    avatar: 'assets/avatars/ralph.png',
    section: 'Aristotle',
    position: 'Research Paper,Head',
  ),
  Researcher(
    align: AlignPos.right,
    name: 'Shania Buenaventura',
    avatar: 'assets/avatars/shania.png',
    section: 'Aristotle',
    position: 'Research Paper,Member',
  ),
  Researcher(
    align: AlignPos.left,
    name: 'Micka Ella Porto',
    avatar: 'assets/avatars/micka.png',
    section: 'Aristotle',
    position: 'Research Paper,Member',
  ),
  Researcher(
      align: AlignPos.right,
      name: 'Mr.Marlon Sta.Catalina',
      avatar: 'assets/avatars/marlon.png',
      section: 'Research Mentor',
      position: 'Capstone'),
];
