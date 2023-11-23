void main(args) {
  if (args.isEmpty) {
    print('[error] Informe 1 número inteiro positivo.');
  } else if (args.length > 1) {
    print('[error] Deve ser informado somente 1 número inteiro positivo.');
  } else {
    try {
      int number = int.parse(args.first);
    
      if (number > 0) {
        print(sum(number));
      } else {
        print('[error] O valor ${args.first} não é um número inteiro positivo válido.');
      }
    } on FormatException {
      print('[error] O valor ${args.first} não é um número inteiro positivo válido.');
    } 
  }
}

int sum(int number) {
  int sum = 0;

  for (int i = 1; i < number; i++) {
    // testando se o número em questão é divisível por 3 ou 5
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  
  return sum;
}