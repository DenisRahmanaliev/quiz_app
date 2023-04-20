import 'package:quiz_app/models/quze_model/quze_model.dart';

class QuzeData {
  int index = 0;
  List<QuzeModel> surrolorJooptor = [
    QuzeModel(suroo: 'Кыргызыстанда 7 область бар.', joop: true),
    QuzeModel(suroo: 'Кыргызыстан эгемендуу эмес.', joop: false),
    QuzeModel(suroo: 'Баткенде Айгул гулу бар.', joop: true),
    QuzeModel(suroo: 'Баткенде 5 айыл окмот бар.', joop: false),
    QuzeModel(suroo: 'Ч.Айтматов жазуучу болгон.', joop: true),
    QuzeModel(suroo: 'Кыргызыстан 5 олко менен чектешип турат.', joop: false),
    QuzeModel(suroo: 'Кыргызыстанда 12млн адам бар.', joop: false),
    QuzeModel(suroo: 'Ошто Сулайман-Тоо бар.', joop: true),
  ];
  String? suroonuAlipKel() {
    if (index < surrolorJooptor.length) {
      return surrolorJooptor[index].suroo;
    }
    {
      return 'Суроолор бутту!';
    }
  }

  bool? jooptuAlipKel() {
    if (index < surrolorJooptor.length) {
      return surrolorJooptor[index].joop;
    } else {
      return null;
    }
  }

  void otkoz() {
    index = index + 1;
  }

  void restart() {
    index = 0;
  }
}

final QuzeData quzeData = QuzeData();
