
global.cameraWidth = 640;
global.cameraHeight = 320;
global.windowScale = 2;

window_set_size(global.cameraWidth * global.windowScale, global.cameraHeight * global.windowScale);

surface_resize(application_surface, global.cameraWidth, global.cameraHeight);
display_set_gui_size(global.cameraWidth, global.cameraHeight);