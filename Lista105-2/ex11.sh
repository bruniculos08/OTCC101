#! /usr/bin/bash

function potato
{
        if [ $1 -eq 1 ]; then
                echo "opcao para gerar erro"
                exit 1
        else
                echo "opcao para nao gerar erro"
                exit 0
        fi
}

echo "Executando potato..."
potato $1 &

# $! é PID do processo mais recente aberto em segundo plano.
wait $!
echo "Feito."

# $? é o valor do último código de retorno gerado em primeiro plano.
if [ $? -eq 0 ]; then
        echo "potato executado com sucesso"
else
        echo "potato executado com erro"
fi
exit 0