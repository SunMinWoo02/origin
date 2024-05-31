#!/bin/bash

# 인수가 3개인지 확인
if [ "$#" -ne 3 ]
then
  echo "입력값 오류"
  exit 1
fi

# 입력된 날짜를 변수에 할당
month="$1"
day="$2"
year="$3"

# 월(month)을 대문자로 변환
case $month 
in
  "jan" | "january" | "1") month="Jan" ;;
  "feb" | "february" | "2") month="Feb" ;;
  "mar" | "march" | "3") month="Mar" ;;
  "apr" | "april" | "4") month="Apr" ;;
  "may" | "5") month="May" ;;
  "jun" | "june" | "6") month="Jun" ;;
  "jul" | "july" | "7") month="Jul" ;;
  "aug" | "august" | "8") month="Aug" ;;
  "sep" | "september" | "9") month="Sep" ;;
  "oct" | "october" | "10") month="Oct" ;;
  "nov" | "november" | "11") month="Nov" ;;
  "dec" | "december" | "12") month="Dec" ;;
  *) echo "월을 올바르게 입력하십시오. $month $day $year은 유효하지 않습니다.";
  exit 2;;
esac

# 윤년인지 판별
leap_year=false
if [ $(( year % 4 )) -eq 0 ]
  then
    if [ $(( year % 100 )) -ne 0 ] || [ $(( year % 400 )) -eq 0 ]
      then
        leap_year=true
      fi
fi

# 각 달의 일(date) 수 설정
case $month
in
  "Jan" | "Mar" | "May" | "Jul" | "Aug" | "Oct" | "Dec") days_in_month=31 ;;
  "Apr" | "Jun" | "Sep" | "Nov") days_in_month=30 ;;
  "Feb")
    if $leap_year
    then
      days_in_month=29
    else
      days_in_month=28
    fi
    ;;
esac

# 입력된 날짜가 유효한지 확인
if [ "$day" -ge 1 ] && [ "$day" -le "$days_in_month" ]
then
  echo "${month} ${day} ${year}"
else
  echo "$year년의 $month는 $days_in_month일까지 있습니다. $month $day $year는 유효하지 않습니다."
fi
