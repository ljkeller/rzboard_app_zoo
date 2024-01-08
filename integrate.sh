#!/bin/bash

echo "Usage (inside rzboard_app_zoo dir): ./integrate.sh"

model_zoo_path="/home/root/model_zoo"
http_demo_path="/home/root/demos"

# Assumes that the passed directory is the c++ app directory, and you can
# simply step pack one directory to see the c++ app and webapp directories
function build_and_install_demos {
    if [ "$#" -ne 2 ]; then
        echo "Usage: make_and_install <app_name> <cpp_src_sir>"
        exit
    fi

    local app_name=$1
    local cpp_src_sir=$2

    make
    cd "../" || exit

    mkdir -p "${model_zoo_path}/${app_name}"
    cp -R "./${cpp_src_sir}/." "${model_zoo_path}/${app_name}"

    mkdir -p "$http_demo_path/${app_name}"
    cp -R "./webapp/." "$http_demo_path/${app_name}"
}

function age_gender_detection {
    (
        echo "Integrating Age and Gender Detection..."
        local app_name="age_gender_detection"

        cd "./${app_name}/app" || exit

        build_and_install_demos "${app_name}" "app"
    )
}

function animal_detection {
    (
        echo "Integrating Animal Detection..."
        local app_name="animal_detection"

        cd "./${app_name}/usbcam_app" || exit
        build_and_install_demos "${app_name}" "usbcam_app"

        local weights_url="https://github.com/Ignitarium-Renesas/RZV2L_AiLibrary/releases/download/v1.2.3/animal_yolov3_weight.dat"
        local weights_destination="${model_zoo_path}/${app_name}/exe/animal_yolov3/"
        echo "Attemping to pull weights from ${weights_url}"
        if [ ! -d "${weights_destination}" ]; then
            echo "Directory ${weights_destination} should exist from build_and_install_demos"
            exit 1
        fi
        wget "${weights_url}" -P "${weights_destination}"
    )
}

function driver_monitoring_system {
    (
        echo "Integrating Driver Monitoring System..."
        local app_name="driver_monitoring_system"

        cd "./${app_name}/app" || exit
        build_and_install_demos "${app_name}" "app"
    )
}

function elderly_fall_detection {
    (
        echo "Integrating Elderly Fall Detection..."
        local app_name="elderly_fall_detection"

        cd "./${app_name}/app" || exit
        build_and_install_demos "${app_name}" "app"
    )
}

function hand_gesture_recognition {
    (
        echo "Integrating Hand Gesture Recognition..."
        local app_name="hand_gesture_recognition"

        cd "./hand_gesture_recognition/app" || exit
        build_and_install_demos "${app_name}" "app"
    )
}

function head_counting {
    (
        echo "Integrating Head Counting..."
        app_name="head_counting"

        cd "./${app_name}/app" || exit
        build_and_install_demos "${app_name}" "app"

        local weights_url="https://github.com/Ignitarium-Renesas/RZV2L_AiLibrary/releases/download/v1.2.2/yolov3_Head_counting_weights.dat"
        local weights_destination="${model_zoo_path}/${app_name}/exe/yolov3_cam/"
        echo "Attemping to pull weights from ${weights_url}"
        if [ ! -d "${weights_destination}" ]; then
            echo "Directory ${weights_destination} should exist from build_and_install_demos"
            exit 1
        fi
        wget "${weights_url}" -P "${weights_destination}"
    )
}

function human_gaze_detection {
    (
        echo "Integrating Human Gaze Detection..."
        local app_name="human_gaze_detection"

        cd "./${app_name}/app" || exit
        build_and_install_demos "${app_name}" "app"
    )
}

function safety_helmet_vest_detection {
    (
        echo "Integrating Safety Helmet and Vest Detection..."
        local app_name="safety_helmet_vest_detection"

        cd "./${app_name}/app" || exit
        build_and_install_demos "${app_name}" "app"

        local weights_url="https://github.com/Ignitarium-Renesas/RZV2L_AiLibrary/releases/download/v1.2.2/yolov3_Helmet_vest_detection_weight.dat"
        local weights_destination="${model_zoo_path}/${app_name}/exe/yolov3_Helmet_vest_detection"
        echo "Attemping to pull weights from ${weights_url}"
        if [ ! -d "${weights_destination}" ]; then
            echo "Directory ${weights_destination} should exist from build_and_install_demos"
            exit 1
        fi
        wget "${weights_url}" -P "${weights_destination}"
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
