#Codebook for dataAnalysis output
Number of variables: 	68  
Number of rows:			180  
Class:					Data table  

* subject [Factor, 1-30]
	* Factor from 1-30 indicating which test subject the observation comes from.
* label [Factor, "walking", "walkingUpstairs", "walkingDownstairs", "sitting", "standing", "laying" ]
	* Factor indicating which activity was performed
	
Below are the extracted variables from the original dataset. 
It is a combination of Camel Case and dots, as I thought Camel Case alone proved somewhat hard to read (TimeBodyAccelerationMeanX).
The variables are constructed by the following formatting:
**[Time/Freq].[Body/Gravity].[Measurement].[Mean/StandardDeviation].(Magnitude).[Axis]**

Measurement and axis can take on the following values:

* Measurement:
	* Acceleration
	* Gyro
	* LinearAcceleration
	* AngularAcceleration
* Axis: 
	* X
	* Y
	* Z
	
Each of the variables has been renamed based on the original code book, e.g. Jerk has been translated to acceleration and angular acceleration, depending on the whether the source is the accelerometer or the gyroscope.   
For each of the subjects and each of the activities the mean of each of the variables has been calculated to obtain the 180x68 data table.  
For further explanation refer to the original code book available at [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).
	
## Variables
* subject
* label
* Time.Body.Acceleration.Mean.X (Num: [-1;1])
	* Mean of mean of acceleration measured from accelerometer, separated from gravity, in x-axis.
* Time.Body.Acceleration.Mean.Y (Num: [-1;1])
	* Mean of mean of acceleration measured from accelerometer, separated from gravity, in y-axis.
* Time.Body.Acceleration.Mean.Z (Num: [-1;1])
	* Mean of mean of acceleration measured from accelerometer, separated from gravity, in z-axis.
* Time.Body.Acceleration.StandardDeviation.X (Num: [-1;1])
	* Mean of standard deviation of acceleration measured from accelerometer, separated from gravity, in x-axis.
* Time.Body.Acceleration.StandardDeviation.Y (Num: [-1;1])
	* Mean of standard deviation of acceleration measured from accelerometer, separated from gravity, in y-axis.
* Time.Body.Acceleration.StandardDeviation.Z (Num: [-1;1])
	* Mean of standard deviation of acceleration measured from accelerometer, separated from gravity, in z-axis.
* Time.Gravity.Acceleration.Mean.X (Num: [-1;1])
	* Mean of mean of acceleration measured from accelerometer, separated from body, in x-axis.
* Time.Gravity.Acceleration.Mean.Y (Num: [-1;1])
	* Mean of mean of acceleration measured from accelerometer, separated from body, in x-axis.
* Time.Gravity.Acceleration.Mean.Z (Num: [-1;1])
	* Mean of mean of acceleration measured from accelerometer, separated from body, in x-axis.
* Time.Gravity.Acceleration.StandardDeviation.X (Num: [-1;1])
	* Mean of standard deviation of acceleration measured from accelerometer, separated from body, in x-axis.
* Time.Gravity.Acceleration.StandardDeviation.Y (Num: [-1;1])
	* Mean of standard deviation of acceleration measured from accelerometer, separated from body, in y-axis.
* Time.Gravity.Acceleration.StandardDeviation.Z (Num: [-1;1])
	* Mean of standard deviation of acceleration measured from accelerometer, separated from body, in z-axis.
* Time.Body.LinearAcceleration.Mean.X (Num: [-1;1])
	* Mean of mean of linear acceleration measured from accelerometer, in x-axis.
* Time.Body.LinearAcceleration.Mean.Y (Num: [-1;1])
	* Mean of mean of linear acceleration measured from accelerometer, in y-axis.
* Time.Body.LinearAcceleration.Mean.Z (Num: [-1;1])
	* Mean of mean of linear acceleration measured from accelerometer, in z-axis.
* Time.Body.LinearAcceleration.StandardDeviation.X (Num: [-1;1])
	* Mean of standard deviation of linear acceleration measured from accelerometer, in x-axis.
* Time.Body.LinearAcceleration.StandardDeviation.Y (Num: [-1;1]),
	* Mean of standard deviation of linear acceleration measured from accelerometer, in y-axis.
* Time.Body.LinearAcceleration.StandardDeviation.Z (Num: [-1;1])
	* Mean of standard deviation of linear acceleration measured from accelerometer, in z-axis.
* Time.Body.Gyro.Mean.X (Num: [-1;1])
	* Mean of mean of measurement from gyroscope, in x-axis.
* Time.Body.Gyro.Mean.Y (Num: [-1;1])
	* Mean of mean of measurement from gyroscope, in y-axis.
* Time.Body.Gyro.Mean.Z (Num: [-1;1])
	* Mean of mean of measurement from gyroscope, in z-axis.
* Time.Body.Gyro.StandardDeviation.X (Num: [-1;1])
	* Mean of standard deviation of measurement from gyroscope, in x-axis.
* Time.Body.Gyro.StandardDeviation.Y (Num: [-1;1])
	* Mean of standard deviation of measurement from gyroscope, in y-axis.
* Time.Body.Gyro.StandardDeviation.Z (Num: [-1;1])
	* Mean of standard deviation of measurement from gyroscope, in z-axis.
* Time.Body.AngularAcceleration.Mean.X (Num: [-1;1])
	* Mean of mean of angular acceleration from gyroscope, in x-axis.
* Time.Body.AngularAcceleration.Mean.Y (Num: [-1;1])
	* Mean of mean of angular acceleration from gyroscope, in y-axis.
* Time.Body.AngularAcceleration.Mean.Z (Num: [-1;1])
	* Mean of mean of angular acceleration from gyroscope, in z-axis.
* Time.Body.AngularAcceleration.StandardDeviation.X (Num: [-1;1])
	* Mean of standard deviation of angular acceleration from gyroscope, in x-axis.
* Time.Body.AngularAcceleration.StandardDeviation.Y (Num: [-1;1])
	* Mean of standard deviation of angular acceleration from gyroscope, in y-axis.
* Time.Body.AngularAcceleration.StandardDeviation.Z (Num: [-1;1])
	* Mean of standard deviation of angular acceleration from gyroscope, in z-axis.
* Time.Body.Acceleration.Magnitude.Mean (Num: [-1;1])
	* Mean of mean of magnitude of acceleration from body.
* Time.Body.Acceleration.Magnitude.StandardDeviation (Num: [-1;1])
	* Mean of standard deviation of magnitude of acceleration from body.
* Time.Gravity.Acceleration.Magnitude.Mean (Num: [-1;1])
	* Mean of mean of magnitude of acceleration from gravity.
* Time.Gravity.Acceleration.Magnitude.StandardDeviation (Num: [-1;1])
	* Mean of standard deviation of magnitude of acceleration from gravity.
* Time.Body.LinearAcceleration.Magnitude.Mean (Num: [-1;1])
	* Mean of mean of magnitude of linear acceleration from body.
* Time.Body.LinearAcceleration.Magnitude.StandardDeviation (Num: [-1;1])
	* Mean of standard deviation of magnitude of linear acceleration from body.
* Time.Body.Gyro.Magnitude.Mean (Num: [-1;1])
	* Mean of mean of magnitude of measurement from gyroscope.
* Time.Body.Gyro.Magnitude.StandardDeviation (Num: [-1;1])
	* Mean of standard deviation of magnitude of measurement from gyroscope.
* Time.Body.AngularAcceleration.Magnitude.Mean (Num: [-1;1])
	* Mean of mean of magnitude of angular acceleration.
* Time.Body.AngularAcceleration.Magnitude.StandardDeviation (Num: [-1;1])
	* Mean of standard deviation of magnitude of angular acceleration.
* Freq.Body.Acceleration.Mean.X (Num: [-1;1])
	* Mean of mean of a Fast Fourier Transformation (FFT) of acceleration from body, in x-axis.
* Freq.Body.Acceleration.Mean.Y (Num: [-1;1])
	* Mean of mean of a Fast Fourier Transformation (FFT) of acceleration from body, in y-axis.
* Freq.Body.Acceleration.Mean.Z (Num: [-1;1])
	* Mean of mean of a Fast Fourier Transformation (FFT) of acceleration from body, in z-axis.
* Freq.Body.Acceleration.StandardDeviation.X (Num: [-1;1])
	* Mean of standard deviation of a Fast Fourier Transformation (FFT) of acceleration from body, in x-axis.
* Freq.Body.Acceleration.StandardDeviation.Y (Num: [-1;1])
	* Mean of standard deviation of a Fast Fourier Transformation (FFT) of acceleration from body, in y-axis.
* Freq.Body.Acceleration.StandardDeviation.Z (Num: [-1;1])
	* Mean of standard deviation of a Fast Fourier Transformation (FFT) of acceleration from body, in z-axis.
* Freq.Body.LinearAcceleration.Mean.X (Num: [-1;1])
	* Mean of mean of linear acceleration from body, in x-axis.
* Freq.Body.LinearAcceleration.Mean.Y (Num: [-1;1])
	* Mean of mean of linear acceleration from body, in y-axis.
* Freq.Body.LinearAcceleration.Mean.Z (Num: [-1;1])
	* Mean of mean of linear acceleration from body, in z-axis.
* Freq.Body.LinearAcceleration.StandardDeviation.X (Num: [-1;1])
	* Mean of standard deviation of a Fast Fourier Transformation of linear acceleration from body, in x-axis.
* Freq.Body.LinearAcceleration.StandardDeviation.Y (Num: [-1;1])
	* Mean of standard deviation of a Fast Fourier Transformation of linear acceleration from body, in y-axis.
* Freq.Body.LinearAcceleration.StandardDeviation.Z (Num: [-1;1])
	* Mean of standard deviation of a Fast Fourier Transformation of linear acceleration from body, in z-axis.
* Freq.Body.Gyro.Mean.X (Num: [-1;1])
* Freq.Body.Gyro.Mean.Y (Num: [-1;1])
* Freq.Body.Gyro.Mean.Z (Num: [-1;1])
* Freq.Body.Gyro.StandardDeviation.X (Num: [-1;1])
* Freq.Body.Gyro.StandardDeviation.Y (Num: [-1;1])
* Freq.Body.Gyro.StandardDeviation.Z (Num: [-1;1])
* Freq.Body.Acceleration.Magnitude.Mean (Num: [-1;1])
* Freq.Body.Acceleration.Magnitude.StandardDeviation (Num: [-1;1])
* Freq.Body.LinearAcceleration.Magnitude.Mean (Num: [-1;1])
* Freq.Body.LinearAcceleration.Magnitude.StandardDeviation (Num: [-1;1])
* Freq.Body.Gyro.Magnitude.Mean (Num: [-1;1])
* Freq.Body.Gyro.Magnitude.StandardDeviation (Num: [-1;1])
* Freq.Body.AngularAcceleration.Magnitude.Mean (Num: [-1;1])
* Freq.Body.AngularAcceleration.Magnitude.StandardDeviation (Num: [-1;1])