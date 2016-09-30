#Code Book
This file describes the variables, the data, and any transformations or work that are performed to clean up the data.

##Variables and data

The tidy data has the following variables:
*activity
	Activity Type
		Values:
			1 WALKING
			2 WALKING_UPSTAIRS
			3 WALKING_DOWNSTAIRS
			4 SITTING
			5 STANDING
			6 LAYING
*subject
	Subject that created the observation
		Values:
			from 1 to 30                                   
*timeBodyAccelerationMeanX
	Mean of time to obtain the body acceleration in the X axis
		Values:
			from -1 to 1        
*timeBodyAccelerationMeanY 
	Mean of time to obtain the body acceleration in the Y axis
		Values:
			from -1 to 1                     
*timeBodyAccelerationMeanZ
	Mean of time to obtain the body acceleration in the Z axis
		Values:
			from -1 to 1                    
*timeGravityAccelerationMeanX   
	Mean of time to obtain the gravity acceleration in the X axis
		Values:
			from -1 to 1           
*timeGravityAccelerationMeanY    
	Mean of time to obtain the gravity acceleration in the Y axis
		Values:
			from -1 to 1        
*timeGravityAccelerationMeanZ   
	Mean of time to obtain the gravity acceleration in the Z axis
		Values:
			from -1 to 1         
*timeBodyAccelerationJerkMeanX   
	Mean of time to obtain the jerk acceleration in the X axis
		Values:
			from -1 to 1                   
*timeBodyAccelerationJerkMeanY    
	Mean of time to obtain the jerk acceleration in the Y axis
		Values:
			from -1 to 1                           
*timeBodyAccelerationJerkMeanZ   
	Mean of time to obtain the jerk acceleration in the Z axis
		Values:
			from -1 to 1                             
*timeBodyGyroscopeMeanX          
	Mean of time to obtain the body gyroscope in the X axis
		Values:
			from -1 to 1                            
*timeBodyGyroscopeMeanY         
	Mean of time to obtain the body gyroscope in the Y axis
		Values:
			from -1 to 1                          
*timeBodyGyroscopeMeanZ      
	Mean of time to obtain the body gyroscope in the Z axis
		Values:
			from -1 to 1                            
*timeBodyGyroscopeJerkMeanX   
	Mean of time to obtain the jerk gyroscope in the X axis
		Values:
			from -1 to 1                            
*timeBodyGyroscopeJerkMeanY   
	Mean of time to obtain the Jerk gyroscope in the Y axis
		Values:
			from -1 to 1                           
*timeBodyGyroscopeJerkMeanZ   
	Mean of time to obtain the Jerk gyroscope in the Z axis
		Values:
			from -1 to 1                            
*timeBodyAccelerationMagnitudeMean 
	Mean of time to obtain the body acceleration magnitude
		Values:
			from -1 to 1                      
*timeGravityAccelerationMagnitudeMean  
	Mean of time to obtain the gravity acceleration magnitude
		Values:
			from -1 to 1                     
*timeBodyAccelerationJerkMagnitudeMean 
	Mean of time to obtain the Jerk acceleration magnitude
		Values:
			from -1 to 1                    
*timeBodyGyroscopeMagnitudeMean 
	Mean of time to obtain the body gyroscope magnitude
		Values:
			from -1 to 1                            
*timeBodyGyroscopeJerkMagnitudeMean   
	Mean of time to obtain the Jerk gyroscope magnitude
		Values:
			from -1 to 1      
*frecuencyBodyAccelerationMeanX  
	Mean of frequency to obtain the body acceleration in the X axis
		Values:
			from -1 to 1            
*frecuencyBodyAccelerationMeanY   
	Mean of frequency to obtain the body acceleration in the Y axis
		Values:
			from -1 to 1                     
*frecuencyBodyAccelerationMeanZ           
	Mean of frequency to obtain the body acceleration in the Z axis
		Values:
			from -1 to 1              
*frecuencyBodyAccelerationJerkMeanX       
	Mean of frequency to obtain the body Jerk acceleration in the X axis
		Values:
			from -1 to 1             
*frecuencyBodyAccelerationJerkMeanY  
	Mean of frequency to obtain the body Jerk acceleration in the Y axis
		Values:
			from -1 to 1                    
*frecuencyBodyAccelerationJerkMeanZ      
	Mean of frequency to obtain the body Jerk acceleration in the Z axis
		Values:
			from -1 to 1               
*frecuencyBodyGyroscopeMeanX      
	Mean of frequency to obtain the body gyroscope in the X axis
		Values:
			from -1 to 1                  
*frecuencyBodyGyroscopeMeanY       
	Mean of frequency to obtain the body gyroscope in the Y axis
		Values:
			from -1 to 1                   
*frecuencyBodyGyroscopeMeanZ     
	Mean of frequency to obtain the body gyroscope in the Z axis
		Values:
			from -1 to 1                      
*frecuencyBodyAccelerationMagnitudeMean    
	Mean of frequency to obtain the body gyroscope magnitude
		Values:
			from -1 to 1           
*frecuencyBodyAccelerationJerkMagnitudeMean   
	Mean of frequency to obtain the body gyroscope magnitude
		Values:
			from -1 to 1     
*frecuencyBodyGyroscopeMagnitudeMean       
*frecuencyBodyGyroscopeJerkMagnitudeMean    
*timeBodyAccelerationStdX                  
*timeBodyAccelerationStdY                   
*timeBodyAccelerationStdZ                  
*timeGravityAccelerationStdX                
*timeGravityAccelerationStdY               
*timeGravityAccelerationStdZ                
*timeBodyAccelerationJerkStdX              
*timeBodyAccelerationJerkStdY               
*timeBodyAccelerationJerkStdZ              
*timeBodyGyroscopeStdX                      
*timeBodyGyroscopeStdY                     
*timeBodyGyroscopeStdZ                      
*timeBodyGyroscopeJerkStdX                 
*timeBodyGyroscopeJerkStdY                  
*timeBodyGyroscopeJerkStdZ                 
*timeBodyAccelerationMagnitudeStd           
*timeGravityAccelerationMagnitudeStd       
*timeBodyAccelerationJerkMagnitudeStd      
*timeBodyGyroscopeMagnitudeStd             
*timeBodyGyroscopeJerkMagnitudeStd          
*frecuencyBodyAccelerationStdX             
*frecuencyBodyAccelerationStdY              
*frecuencyBodyAccelerationStdZ             
*frecuencyBodyAccelerationJerkStdX          
*frecuencyBodyAccelerationJerkStdY         
*frecuencyBodyAccelerationJerkStdZ          
*frecuencyBodyGyroscopeStdX                
*frecuencyBodyGyroscopeStdY                 
*frecuencyBodyGyroscopeStdZ                
*frecuencyBodyAccelerationMagnitudeStd      
*frecuencyBodyAccelerationJerkMagnitudeStd 
*frecuencyBodyGyroscopeMagnitudeStd         
*frecuencyBodyGyroscopeJerkMagnitudeStd  