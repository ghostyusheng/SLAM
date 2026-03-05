# Autonomous Search & Rescue Robotics System (SLAM)

Multi-robot autonomous navigation system combining **aerial search** and **ground robot navigation** using **SLAM**.

Developed during the **MSc Intelligent Robotics programme at the University of York**.

The system simulates a **search-and-rescue scenario** where a drone locates a target and a ground robot autonomously navigates to the detected position using **SLAM-based mapping and path planning**.

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

# System Overview

The system integrates **aerial perception** and **ground robot navigation**.

```
Drone (Tello)
   │
   │ ArUco marker detection
   ▼
Target coordinate estimation
   │
   │ communication
   ▼
Ground robot navigation
(SLAM + path planning)
```

### Workflow

1. Drone performs autonomous scanning of the environment  
2. ArUco marker is detected using the onboard camera  
3. Target coordinates are estimated  
4. Ground robot performs autonomous navigation using SLAM  

---

# Project Objectives

This project explores **collaborative robotics for search and rescue missions**, focusing on:

- Autonomous navigation
- Simultaneous Localization and Mapping (SLAM)
- Drone–robot collaboration
- Target detection and localisation

The scenario simulates a **rescue mission where robots must locate and retrieve a target in a constrained environment**.

---

# Key Features

- Multi-robot collaboration (Drone + Ground robot)
- Autonomous navigation using SLAM
- LiDAR-based mapping
- Visual marker detection using **ArUco**
- Autonomous search algorithms
- SLAM algorithm benchmarking

---

# SLAM Algorithms Evaluated

Four SLAM algorithms were evaluated and compared.

| Algorithm | Characteristics |
|-----------|----------------|
| **Gmapping** | Accurate mapping and localisation |
| **Hector SLAM** | Robust in dynamic environments |
| **Karto SLAM** | Efficient map generation |
| **Cartographer** | High-precision 2D/3D mapping |

### Evaluation Metrics

Each algorithm was evaluated based on:

- Mapping efficiency
- Localisation accuracy
- Real-time performance
- Computational cost

---

# SLAM Optimisation

Several parameters were tuned to improve SLAM performance.

### Example optimisation (Gmapping)

| Parameter | Before | After |
|----------|-------|------|
| Map Resolution | 0.05 m | 0.02 m |
| Map Update Rate | 5 Hz | 10 Hz |

### Results

- Mapping accuracy improved by **~15%**
- Real-time mapping performance improved by **~30%**

Additional improvements included:

- Customised motion models
- Improved odometry estimation
- Loop closure optimisation

---

# Autonomous Drone Search Strategy

Multiple search strategies were explored for efficient target detection:

- Diamond search path
- Triangle search path
- Cross search
- Comprehensive scan

The drone divides the environment into a **grid-based search space**, scanning each region sequentially to maximise **coverage and detection probability**.

---

# Simulation Environment

Testing was conducted in a **simulated indoor environment** representing a laboratory scenario.

The environment includes:

- Walls
- Obstacles
- Objects
- Target marker

The system was evaluated using:

- SLAM mapping performance
- Autonomous navigation accuracy

Simulation tools used:

- **Gazebo**
- **RViz**

---

# Example Results

Example SLAM mapping outputs include:

- Gmapping map
- Hector SLAM map
- Karto SLAM map
- Cartographer map

The generated maps accurately captured environmental structures such as:

- Walls
- Obstacles
- Objects

---

# Robot Collaboration

Once the drone detects the target:

1. Target coordinates are transmitted to the ground robot
2. The robot performs path planning
3. The robot autonomously navigates to the target

This demonstrates a **basic multi-robot coordination architecture**.

---

# Tech Stack

### Robotics Framework

- ROS1
- SLAM (Gmapping / Hector / Karto / Cartographer)
- LiDAR Mapping
- OpenCV
- ArUco Marker Detection

### Hardware

- DJI Tello Drone
- Ground Robot Platform
- LiDAR Sensor

### Simulation

- ROS
- Gazebo
- RViz

### Programming Languages

- Python
- C++

---

# Academic Context

This project was developed as part of the **MSc Intelligent Robotics programme at the University of York**.

The focus of the work includes:

- SLAM algorithm evaluation
- Multi-robot collaboration
- Autonomous navigation for search-and-rescue scenarios

---

# Future Work

Potential improvements include:

- ROS2 migration
- Real-time multi-robot communication
- Improved exploration algorithms
- Sensor fusion (IMU + LiDAR + Visual SLAM)
- Reinforcement learning for search optimisation

---

# Author

**Yusheng Zhang**

MSc Intelligent Robotics  
University of York

---
