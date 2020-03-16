#!/bin/bash -x


#Problem Statement :Help user find degF or degC based on their Conversion Selection. Use
                    #Case Statement and ensure that the inputs are within the Freezing Point (
                    # 0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
                    # a. degF = (degC * 9/5) + 32
                    # b. degC = (degF – 32) * 5/9
#Author : Ganesh Ghodke
#Date : 15-03-2020



echo "1:degree to feranide"
echo "2:degree to celcius"

#Ask the user to Enter case
read -p "Enter case 1 or 2 " number

function conversion(){

	choice=$1

	case $choice in

		1)
			read -p "Enter temp in celcius between 0C to 100C " degC
			degF=$(( ( $degC * 9 / 5 ) + 32 ))
			echo $degF ;;
		2)
			read -p "Enter temp in fernaide between 32F to 212F" degF
			degC=$(( ( $degF - 32 ) * 5 / 9 ))
			echo $degC ;;
	esac
}

conversion $number

