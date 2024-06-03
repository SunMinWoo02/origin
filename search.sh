#!/bin/bash

# 전화번호부를 변수에 할당
phonebook="phonebook.txt"

# 인수 개수 확인
if [ "$#" -ne 2 ]
then
    echo "인수가 2개가 아닙니다."
    exit 1
fi

# 입력된 이름, 전화번호를 변수에 할당
name=$1
phonenumber=$2

# 전화번호가 숫자인지 확인하기
if ! [ "$phonenumber" == ^[0-9]-[0-9]-[0-9]$ ]
then
    echo "전화번호가 숫자가 아닙니다."
    exit 2
fi



# 지역번호 설정
case $phonenumber
in
    02*) region="서울" ;;
    051*) region="부산" ;;
    031*) region="경기" ;;
    064*) region="제주" ;;
    053*) region="대구" ;;
    *) region="unknown" ;;
esac

# 입력된 이름으로 전화번호부를 검색
found=$(grep -i "$name " "$phonebook")


# 전화번호부에 이름이 존재하는 경우
if [ -n "$found" ]
then
    existing_phonenumber=$(echo "$found" | cut -d ' ' -f2) 
    # 동일한 전화번호가 있는지 확인
    if [ "$phonenumber" == "$existing_phonenumber" ]
    then
        echo "$found"
        exit 3
    fi
fi

# 전화번호부에 이름이 존재하지 않는 경우
if [ -z "$found" ]
then
     # 새로운 전화번호 추가하고 이름순으로 정렬
    echo "$name $phonenumber $region" >> "$phonebook"
    sort -o "$phonebook" "$phonebook"
    exit 4
fi