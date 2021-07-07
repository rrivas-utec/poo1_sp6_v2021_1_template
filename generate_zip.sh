#!/usr/bin/env bash

project_name='poo1_sp7_v2021_1'
source_code='
        p1.h p1.cpp
        p2.h p2.cpp
        p3.h p3.cpp
        p4.h p4.cpp
        p5.h p5.cpp
        test_1_1.cpp
        test_1_2.cpp
        test_2_1.cpp
        test_2_2.cpp
        test_3_1.cpp
        test_3_2.cpp
        test_4_1.cpp
        test_4_2.cpp
        test_5_1.cpp
        test_5_2.cpp
'
rm -f ${project_name}.zip
zip -r -S ${project_name} ${source_code}