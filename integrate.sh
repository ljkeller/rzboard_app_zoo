#!/bin/bash

echo "Usage (inside rzboard_app_zoo dir): ./integrate.sh"

DEMO_DIR="/home/root/demos"
BASE_DIR=$(pwd)

function age_gender_detection {
    (
        echo "Integrating Age and Gender Detection..."

        cd "./age_gender_detection/app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$DEMO_DIR/age_gender_detection"
        cp -R "./app/." "$DEMO_DIR/age_gender_detection"
    )
}

function animal_detection {
    (
        echo "Integrating Animal Detection..."

        cd "./animal_detection/usbcam_app" || exit
        echo "make"
        cd "../" || exit

        mkdir -p "$DEMO_DIR/animal_detection"
        cp -R "./usbcam_app/." "$DEMO_DIR/animal_detection"
    )
}

function driver_monitoring_system {
    echo "Integrating Driver Monitoring System..."
}

function elderly_fall_detection {
    echo "Integrating Elderly Fall Detection..."
}

function hand_gesture_recognition {
    echo "Integrating Hand Gesture Recognition..."
}

function head_counting {
    echo "Integrating Head Counting..."
}

function human_gaze_detection {
    echo "Integrating Human Gaze Detection..."
}

function safety_helmet_vest_detection {
    echo "Integrating Safety Helmet and Vest Detection..."
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
