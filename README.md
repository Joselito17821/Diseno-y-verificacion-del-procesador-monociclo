# 🧠 Procesador Monociclo MIPS – Laboratorio 3

Este proyecto implementa un **procesador monociclo** compatible con un subconjunto de 14 instrucciones de la arquitectura **MIPS32**, desarrollado en **Logisim Evolution**. Además, se incluye un programa en lenguaje ensamblador MIPS que analiza una **matriz de 4x4 números enteros**, identificando máximos y mínimos por filas y columnas.

---

## ▶ Ejecución

Este diseño está diseñado para ser ejecutado en **Logisim Evolution** (procesador) y en **MARS** (programa en ensamblador MIPS).

## 🧪 Lógica del programa

Se define una matriz fija 4x4 directamente con instrucciones `addi`. Luego, se ejecuta una serie de comparaciones usando instrucciones tipo R e I (`add`, `slt`, `beq`) para determinar:

- Valor **máximo** y **mínimo** de cada **fila**
- Valor **máximo** y **mínimo** de cada **columna**

Este enfoque permite visualizar el flujo de datos directamente en el banco de registros, sin utilizar memoria adicional.

---

## 📚 Archivos del repositorio

| Archivo | Descripción |
|--------|-------------|
| `Informe de laboratorio No3.pdf` | Informe completo con explicaciones técnicas |
| `codigoMIPS.asm` | Código ensamblador del programa |
| `pseudocodigo.txt` | Lógica del algoritmo en pseudocódigo |
| `codigoMaquina.txt` | Instrucciones MIPS en formato hexadecimal |

---

## 🧠 Nota

Para efectos del laboratorio, se cargarán los datos de la matriz directamente en la memoria de instrucciones (ROM) para evitar usar la memoria de datos. Esto facilita la depuración y permite visualizar resultados directamente en los registros.

---

## 📚 Requisitos técnicos

- [Logisim Evolution](https://github.com/logisim-evolution/logisim-evolution) (para el procesador)
- [MARS IDE](http://courses.missouristate.edu/KenVollmar/MARS/) (para código MIPS)

---

## ✍ Autores

- [@Joselito17821](https://github.com/Joselito17821)
- [@dipper319-dev](https://github.com/dipper319-dev)

Universidad de Antioquia  
Arquitectura de Computadores y Laboratorio  
Fredy Alexander Rivera Vélez
Semestre 2025-1
