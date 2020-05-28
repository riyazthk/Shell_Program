#! /bin/bash -x

var=42
var=$(( $var / 12 )) 
echo $var "ft"

length=60
width=40
var=$(( $length * $width ))
var=$(( $var / 3 ))
echo $var "meters"

acres=25
var=$(( $acres * 4047 ))
echo $var "area"
