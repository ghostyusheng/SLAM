

# Visual SLAM System for Indoor Robotic Navigation

A robotics research project implementing a Visual SLAM pipeline for real-time indoor robot localisation and mapping.

This project explores how a mobile robotic platform can estimate its trajectory and reconstruct an environment using visual sensor input. The system was developed as part of a Master's thesis focusing on autonomous perception and spatial understanding.

---
<img width="550" height="408" alt="image" src="https://github.com/user-attachments/assets/f8a08f17-c144-4359-ac84-1504f354d5df" />
<img width="353" height="589" alt="image" src="https://github.com/user-attachments/assets/0ad90f74-5c69-4e6b-a41a-fc1ec094e48e" />
<img width="358" height="329" alt="image" src="https://github.com/user-attachments/assets/79891f05-b90e-4e7a-a918-02747b6d082e" />
<img width="375" height="304" alt="image" src="https://github.com/user-attachments/assets/6e8959e0-c5cf-4e3a-87b0-719b2f81264f" />
<img width="368" height="164" alt="image" src="https://github.com/user-attachments/assets/4edf6fb1-e52a-4a95-b476-ae97fde3494d" />
<img width="649" height="620" alt="image" src="https://github.com/user-attachments/assets/26363e6c-a5cf-4a44-a51e-0fe11650da84" />
<img width="464" height="397" alt="image" src="https://github.com/user-attachments/assets/f60f141c-5a06-4bd0-a2b5-9c61a613f077" />
<img width="467" height="283" alt="image" src="https://github.com/user-attachments/assets/bacfa693-66fd-409f-a331-850b467a1fce" />








---

## Project Overview

Autonomous robots must continuously estimate their position while navigating unknown environments. This project implements a **Visual SLAM (Simultaneous Localization and Mapping)** system that allows a robot to:

- estimate camera pose over time
- reconstruct a sparse map of the environment
- maintain localisation under continuous motion

The system processes camera frames sequentially and estimates relative motion between frames using computer vision techniques.

This enables real-time localisation for robotic navigation in indoor environments.

---

## System Architecture

The SLAM system is organised as a modular perception pipeline.

```text
Camera Stream
    |
    v
Feature Extraction (ORB / SIFT)
    |
    v
Feature Matching
    |
    v
Motion Estimation
(Epipolar Geometry / Essential Matrix)
    |
    v
Pose Estimation
    |
    v
Map Construction
```

### Feature Extraction
Detects robust visual features from incoming camera frames.

### Feature Matching
Associates features across frames to estimate motion.

### Motion Estimation
Computes relative camera transformation between frames using epipolar geometry.

### Pose Tracking
Maintains robot trajectory over time.

### Map Reconstruction
Builds a sparse representation of the environment from tracked feature points.

---

## Technologies

Core technologies used in this project:

- Python
- ROS (Robot Operating System)
- OpenCV
- Computer Vision
- Visual SLAM algorithms
- Sensor data processing

---

## Experiment Setup

The system was tested in indoor environments using a camera-equipped robotic platform.

Typical evaluation setup includes:

- monocular camera input
- frame-by-frame visual processing
- trajectory estimation
- environment reconstruction

Experiments focused on evaluating:

- pose estimation accuracy
- robustness under motion
- feature matching stability

---

## Results

The system successfully demonstrates:

- continuous pose estimation
- stable feature tracking across frames
- sparse map reconstruction

These results validate the feasibility of using visual SLAM techniques for indoor robotic navigation.

Example outputs include:

- estimated camera trajectory
- feature tracking visualisation
- sparse environment map

---

## Repository Structure

```text
SLAM/
├── src/
│   ├── feature_extraction/
│   ├── feature_matching/
│   ├── pose_estimation/
│   └── mapping/
├── data/
├── experiments/
├── scripts/
└── README.md
```

---

## Future Improvements

Potential directions for extending the system include:

- loop closure detection
- bundle adjustment optimisation
- integration with LiDAR or IMU sensors
- ROS-based real-time robotic deployment
- testing on larger-scale environments

---

## Author

Yusheng Zhang  
Robotics / AI Software Engineer

GitHub: https://github.com/ghostyusheng
