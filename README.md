# Datascience KIT - Imagem Docker

[![Build Status](https://travis-ci.org/CodeForCuritiba/datascience-kit.svg?branch=master)](https://travis-ci.org/CodeForCuritiba/datascience-kit)

Imagem docker responsável pelo kit de desenvolvimento de Data Science. Ele é baseado no [Scientific Python Stack](https://developer.fedoraproject.org/tech/languages/python/scipy.html), usando as bibliotecas padrão do Fedora.

Este vem com as seguintes bibliotecas instaladas:

* Pandas
* Numpy
* Scipy
* Matplotlib
* iPython
* Sympy
* Jupyter Notebook (Iniciado por padrão)
* qgrid - Uma ótima ferramenta de grid para o Jupyter Notebook

# Como utilizar essa imagem?

Voce precisa ter, inicialmente, o docker instalado. Entre na pasta onde voce deseja trabalhar e execute o seguinte comando:

    $ docker run -v $(pwd):/app --rm -it -p 8888:8888 code4cwb/datascience-kit

# Roadmap

Este é um trabalho em constante desenvolvimento. Uma boa idéia é tentar utilizar a ferramenta;
Como um esforço para melhorias futuras está a criação de tutoriais de utilização dessa biblioteca, assim como expandir as funcionalidades dessa imagem para abranger uma grande quantidade de bibliotecas e tecnologias.

# Precisa de ajuda?

Neste projeto do GITHUB, favor visite a área de "issues". Veja se já existe algum ticket que fala sobre o que voce gostaria de resolver. Caso não, abra um novo ticket com seu pedido.
