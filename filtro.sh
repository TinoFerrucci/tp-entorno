#!/bin/bash
function filtro {
echo $1 | sed 's/[-,.()?¿]//g'
}
