#!/usr/bin/bash

if [ -e w3.css ];then
echo "La hoja de estilos ya existe"
else
wget https://www.w3schools.com/w3css/4/w3.css
fi
if [ $? -ne 0 ];then
echo "La descarga ha fallado"
fi

touch index.html
cat << EOF > index.html
<!DOCTYPE html>
<html>
     <link rel="stylesheet" href="w3.css"> 
    <title>Hola</title>
    <head>
        <meta charset="utf-8"
    </head>
    <body>
        <h1 class = 'w3-blue'>Ejemplo de pagina de incio</h1>
        <p>Esta es la pagina de inicio.</p>
    <ul>
        <li><a href="index.html">Inicio</a></li>
        <li><a href="pagina1.html">Página 1</a></li>
        <li><a href="pagina2.html">Página 2</a></li>
        <li><a href="pagina3.html">Página 3</a></li>
    </ul>
</head>
</html>
EOF

touch pagina1.html

cat << EOF > pagina1.html
<!DOCTYPE html>
<html>
    <title>Hola</title>
    <head>
        <meta charset="utf-8"
    </head>
    <body>
        <h1>Ejemplo de pagina 1</h1>
        <p>Esta es la pagina 1.</p>
</head>
</html>
EOF

touch pagina2.html

cat << EOF > pagina2.html
<!DOCTYPE html>
<html>
    <title>Hola</title>
    <head>
        <meta charset="utf-8"
    </head>
    <body>
        <h1>Ejemplo de pagina 2</h1>
        <p>Esta es la pagina 2.</p>
</head>
</html>
EOF

touch pagina3.html

cat << EOF > pagina3.html
<!DOCTYPE html>
<html>
    <title>Hola</title>
    <head>
        <meta charset="utf-8"
    </head>
    <body>
        <h1>Ejemplo de pagina 3</h1>
        <p>Esta es la pagina 3.</p>
</head>
</html>
EOF


