# RZBoard Model Zoo
https://github.com/ljkeller/rzboard_app_zoo/assets/44109284/52b23467-6a2a-47ec-9dff-7fd6632e0693

## Overview

This Library has API functions for leveraging AI applications that will run on Avnet RZBoard V2L. Currently this library has following sample applications: 

1. Human Head Counter
2. Elderly People Fall Detection
3. Safety Helmet and Vest Detection
4. Human Age and Gender Detection
5. Animal Detection
6. Hand Gesture Recognition
7. Human Gaze Recognition
8. Driver Monitoring System

**The zoo is in active development**; open an issue if you run into problems!

> [!NOTE]
> This repository uses [git-lfs](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-git-large-file-storage) to expedite the dev/test iteration cycle. If you're building from source, you'll need it.
> 
>See: [Collaboration with Git Large File Storage](https://docs.github.com/en/repositories/working-with-files/managing-large-files/collaboration-with-git-large-file-storage)

> [!WARNING]
> [ERROR] Failed to open: /_weight.dat error=2. [ERROR] Failed to load data from memory: /_weight.dat Failed to load DRP-AI object files - This error suggests that the model weight file is not available in the exe folder. Assuming you have git lfs, `git lfs fetch` should resolve your issue

### Library Goals

The primary goal of this repository is to integrate the Renesas RZV2L model zoo with RZBoard. This includes integrating the demos with RZBoard's demo launcher.
