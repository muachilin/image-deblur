oi = oiCreate;                        
[scene, I] = sceneFromFile('y.jpg', 'rgb');
oi = oiCompute(scene,oi);
oiWindow(oi);

# set f number to be 15
oi2 = oiSet(oi,'optics fnumber',15);
oi2 = oiCompute(scene,oi2);
ieAddObject(oi2);
oiWindow;
oi2 = oiCompute(scene,oi2);
sensor = sensorCompute(sensor,oi2);
sensorWindow(sensor)
ieAddObject(sensor);
ip = ipCompute(ip,sensor);
ipWindow(ip);
