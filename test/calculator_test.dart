import 'package:meu_projeto_simples/calculator.dart';

import '../lib/calculator.dart'; 

void main() {
  group('Calculator Tests', () {
    Calculator calculator;

    setUp(() {
      calculator = Calculator();
    });

    test('A função add deve retornar a soma correta de dois números', () {
      expect(calculator.add(2, 3), 5);
    });

    test('A função add deve funcionar com números negativos', () {
      expect(calculator.add(-1, -5), -6);
      expect(calculator.add(-1, 5), 4);
    });

    test('A função add deve funcionar com zero', () {
      expect(calculator.add(0, 0), 0);
      expect(calculator.add(5, 0), 5);
    });

    test('A função subtract deve retornar a subtração correta', () {
      expect(calculator.subtract(5, 3), 2);
    });

    test('A função subtract deve funcionar com números negativos', () {
      expect(calculator.subtract(-1, -5), 4);
      expect(calculator.subtract(1, -5), 6);
    });
  });
}
