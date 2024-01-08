#!/bin/bash

echo "Usage (inside rzboard_app_zoo dir): ./integrate.sh"

MODEL_ZOO_PATH="/home/root/model_zoo"
HTTP_DEMO_PATH="/home/root/demos"
BASE_DIR=$(pwd)

# function visit_and_build {
#     if [ "$#" -ne 1 ]; then
#         echo "Usage: visit_and_build <app_dir>"
#         exit
#     fi

#     if [ ! -d "$1" ]; then
#         echo "Directory $1 does not exist."
#         exit
#     fi

#     cd "$1" || exit
#     echo "make"
#     cd "$1/../" || exit
# }

function age_gender_detection {
    (
        echo "Integrating Age and Gender Detection..."

        cd "./age_gender_detection/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/age_gender_detection"
        cp -R "./app/." "$MODEL_ZOO_PATH/age_gender_detection"
    )
}

function animal_detection {
    (
        echo "Integrating Animal Detection..."

        cd "./animal_detection/usbcam_app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/animal_detection"
        cp -R "./usbcam_app/." "$MODEL_ZOO_PATH/animal_detection"
    )
}

function driver_monitoring_system {
    (
        echo "Integrating Driver Monitoring System..."

        cd "./driver_monitoring_system/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/driver_monitoring_system"
        cp -R "./app/." "$MODEL_ZOO_PATH/driver_monitoring_system"
    )
}

function elderly_fall_detection {
    (
        echo "Integrating Elderly Fall Detection..."

        cd "./elderly_fall_detection/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/elderly_fall_detection"
        cp -R "./app/." "$MODEL_ZOO_PATH/elderly_fall_detection"
    )
}

function hand_gesture_recognition {
    (
        echo "Integrating Hand Gesture Recognition..."

        cd "./hand_gesture_recognition/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/hand_gesture_recognition"
        cp -R "./app/." "$MODEL_ZOO_PATH/hand_gesture_recognition"
    )
}

function head_counting {
    (
        echo "Integrating Head Counting..."

        cd "./head_counting/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/head_counting"
        cp -R "./app/." "$MODEL_ZOO_PATH/head_counting"
    )
}

function human_gaze_detection {
    (
        echo "Integrating Human Gaze Detection..."

        cd "./human_gaze_detection/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/human_gaze_detection"
        cp -R "./app/." "$MODEL_ZOO_PATH/human_gaze_detection"
    )
}

function safety_helmet_vest_detection {
    (
        echo "Integrating Safety Helmet and Vest Detection..."

        cd "./safety_helmet_vest_detection/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$MODEL_ZOO_PATH/safety_helmet_vest_detection"
        cp -R "./app/." "$MODEL_ZOO_PATH/safety_helmet_vest_detection"
    )
}

function integrate_applications {
    echo "Integrating applications..."

    age_gender_detection
    animal_detection
    driver_monitoring_system
    elderly_fall_detection
    hand_gesture_recognition
    head_counting
    human_gaze_detection
    safety_helmet_vest_detection

    echo "Integration complete."
}

integrate_applications
