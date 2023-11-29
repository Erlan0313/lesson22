import 'dart:io';


// На основе пройденного материала, вам нужно будет создать программу
//которая конвертирует курс валют.

// Пример работы программы:
// В терминал выводится Курс доллара на сегодня:

// Доллар: 87 сом
// Евро: 110 сом
// Российский рубль: 0.9сом
// Тенге: 0.212321 сом

// 1) Хотите обменять другую валюту на сом?
// 2) Хотите обменять сом на другую валюту?
// Ввод: Пользоатель вводит 1 или 2. Пример: 2

// Дальше снова пользователю предоставляется выбор
// Выберите валюту:
// USD
// EUR
// RUB
// KZT
// Ввод: Пользователь вводит нужную ему валюту. Пример: EUR

// Сколько Евро хотите купить?
// Ввод: 50
// Обмен: 5500 сом на 50 EUR

void main(List<String> args) {
  Convert converter = Convert();
  converter.infoCourse();
  converter.changeMoney();
}

class Convert {
  double dollar = 87;
  double euro = 110;
  double rubl = 0.9;
  double tenge = 0.212;


  void infoCourse() {
    print('Курс валют к сому на сегодня:');
    print(
        'Доллар: 87 сом \nЕвро: 110 сом \nРоссийский рубль: 0.9сом \nТенге: 0.212321 сом ');
  }

  dollarChangeSom() {
    stdout.write('Введите сумму в сомах: ');
    int userNum = int.parse(stdin.readLineSync()!);
    double sum = userNum / dollar;
    print('Сумма в долларах: \$${sum.toStringAsFixed(2)}');
  }

  euroChangeSom() {
    stdout.write('Введите сумму в сомах: ');
    int userNum = int.parse(stdin.readLineSync()!);
    double sum = userNum / euro;
    print('Сумма в долларах: €${sum.toStringAsFixed(2)}');
  }

  rublChangeSom() {
    stdout.write('Введите сумму в сомах: ');
    int userNum = int.parse(stdin.readLineSync()!);
    double sum = userNum / rubl;
    print('Сумма в долларах: ₽${sum.toStringAsFixed(2)}');
  }

  tengeChangeSom() {
    stdout.write('Введите сумму в сомах: ');
    int userNum = int.parse(stdin.readLineSync()!);
    double sum = userNum / rubl;
    print('Сумма в долларах:  ₸${sum.toStringAsFixed(2)}');
  }



  void somChangeDollar() {
    stdout.write('Введите сумму в долларах: ');
    double userNum = double.parse(stdin.readLineSync()!);
    double sum = userNum * dollar;
    print('Сумма в сомах: ${sum.toStringAsFixed(2)} сом');
  }


  void somChangeEuro() {
    stdout.write('Введите сумму в евро: ');
    double userNum = double.parse(stdin.readLineSync()!);
    double sum = userNum * euro;
    print('Сумма в сомах: ${sum.toStringAsFixed(2)} сом');
  }


  void somChangeRubl() {
    stdout.write('Введите сумму в рублях: ');
    double userNum = double.parse(stdin.readLineSync()!);
    double sum = userNum * rubl;
    print('Сумма в сомах: ${sum.toStringAsFixed(2)} сом');
  }


  void somChangeTenge() {
    stdout.write('Введите сумму в тенге: ');
    double userNum = double.parse(stdin.readLineSync()!);
    double sum = userNum * tenge;
    print('Сумма в сомах:  ${sum.toStringAsFixed(2)} сом');
  }


  sellSom() {
        stdout.write('Выберите валюту: \n1: USD \n2: EUR \n3: RUB \n4: KZT \n');
        int userNum = int.parse(stdin.readLineSync()!);
        if (userNum <= 4 && userNum.runtimeType == int) {
          if (userNum == 1) {
            dollarChangeSom();
          } else if (userNum == 2) {
            euroChangeSom();
          } else if (userNum == 3) {
            rublChangeSom();
          } else if (userNum == 4) {
            tengeChangeSom();
          }
        } else {
          changeMoney();
        }
      }



  changeSom() {
        stdout.write('Выберите валюту: \n1: USD \n2: EUR \n3: RUB \n4: KZT \n');
        int userNum = int.parse(stdin.readLineSync()!);
        if (userNum <= 4 && userNum.runtimeType == int) {
          if (userNum == 1) {
            somChangeDollar();
          } else if (userNum == 2) {
            somChangeEuro();
          } else if (userNum == 3) {
            somChangeRubl();
          } else if (userNum == 4) {
            somChangeTenge();
          }
        } else {
          changeMoney();
        }
      }


  changeMoney() {
    print('1: Хотите обменять другую валюту на сом?');
    print('2: Хотите обменять сом на другую валюту?');
    stdout.write('--');
    int userNum = int.parse(stdin.readLineSync()!);
    if (userNum <= 2) {
      if (userNum == 1) {
        changeSom();
      }
      else if(userNum ==2){
        sellSom();
      }
    } else {
      sellSom();
    }
  }
}
