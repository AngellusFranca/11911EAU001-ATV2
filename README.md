# 11911EAU001-ATV2

Agora que ja criamos o nosso ambiente de desenvolvimento bare metal na ATV1, na ATV2 iremos editar o firmware criando. Agora, invés de iniciar o controlador e deixar o led piscando, iremos configurar a placa para ter um pino de entrada adicional, e será configurado um resistor de pull up nesse pino fazendo com que a frequência de piscada do led mude e dependa do estado do pino de entrada. No nível baixo irá piscar lentamente, e nível alto irá piscar mais rápido.

