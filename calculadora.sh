#!/bin/bash

echo "calculadora simples"
echo "1. adicao"
echo "2.Subtracao"
echo "3. multiplicacao"
echo "4. divisao"

read -p "Escolha a operacao (1-4): "operacao

read -p "digite o primeiro numero: "num1
read -p "digite o segundo numero:"num2 

case $operacao in
	1) resultado=$(echo "$num1 + $num2"| bc);;
	2) resultado=$(echo "$num1 - $num2"| bc);;
	3) resultado=$(echo "$num1 *  $num2"| bc);;
	4) resultado=$(echo "scale=2; $num1  / %num2"| bc);; 

esac
echo "resultado: $resultado"
