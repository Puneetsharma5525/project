class ChatData {
  int id;
  String name;
  String date;
  String subtitle;
  List message1;
  int number;
  ChatData(
      {required this.id,
      required this.name,
      required this.date,
      required this.subtitle,required this.message1,
      required this.number});
}

List<ChatData> Users = [
  ChatData(
      id: 101,
      name: 'Minnie D. Smith',
      date: 'Yesterday.',
      subtitle: 'online',
      message1: [],
      number: 9786978697),
  ChatData(
      id: 101,
      name: 'Tony J. Geiger',
      date: '01/02/23',
      subtitle: 'online',
      message1: [],
      number: 6786788697),
  ChatData(
      id: 101,
      name: 'Mack S. Payne',
      date: '28/01/23',
      subtitle: 'online',
      message1: [],
      number: 7897878697),
  ChatData(
      id: 101,
      name: 'Jill J. Gray',
      date: '27/01/23',
      subtitle: 'online',
      message1: [],
      number: 8908078697),
  ChatData(
      id: 101,
      name: 'Christy H. Harris',
      date: '26/01/23',
      subtitle: 'online',message1: [],

      number: 7898798697),
  ChatData(
      id: 101,
      name: 'Harmony C. Johnson',
      date: '25/01/23',
      subtitle: 'online',
      message1: [],
      number: 9897898697),
  ChatData(
      id: 101,
      name: 'Barbara C. Herrera',
      date: '24/01/23',
      subtitle: 'online',
      message1: [],
      number: 8707978697),
  ChatData(
      id: 101,
      name: 'Michelle J. Mayfield',
      date: '23/01/23',
      subtitle: 'online',
      message1: [],
      number: 7897978697),
];
