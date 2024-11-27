# Eye-tracking Study : Replay Mode for Depth Extraction

This project supplements the eye-tracking study with a replay mode in which the depth data of the scene is subsequently extracted for each recorded frame.  

Currently, kernels of size $98\times98$ pixels are extracted around the gaze at the corresponding timestep. The settings can be adjusted within Unity's inspector.
This project requires the same virtual scenes as the eye-tracking study and the eye-tracking scripts recorded during that to run appropriately. The extracted depth frames are then stored in 32-bit as binary files, separately for each participant and scene.

---

**Technical requirements:** 
Game Engine: Unity v2022.3.19f1 with C# 9.0   