#!/bin/bash
ocamlopt -O3 -w -20 -w -26 -g instance.mli instance.ml common.ml sem_driver.ml -o prog.out
rm -f *.o *.cmi *.cmx
