Complete List of Variabels
=================

[1] "subject"
[2] "activity"
[3] "tBodyAccMeanXMean"
[4] "tBodyAccMeanYMean"
[5] "tBodyAccMeanZMean"
[6] "tBodyAccStdXMean"
[7] "tBodyAccStdYMean"
[8] "tBodyAccStdZMean"
[9] "tGravityAccMeanXMean"
[10] "tGravityAccMeanYMean"
[11] "tGravityAccMeanZMean"
[12] "tGravityAccStdXMean"
[13] "tGravityAccStdYMean"
[14] "tGravityAccStdZMean"
[15] "tBodyAccJerkMeanXMean"
[16] "tBodyAccJerkMeanYMean"
[17] "tBodyAccJerkMeanZMean"
[18] "tBodyAccJerkStdXMean"
[19] "tBodyAccJerkStdYMean"
[20] "tBodyAccJerkStdZMean"
[21] "tBodyGyroMeanXMean"
[22] "tBodyGyroMeanYMean"
[23] "tBodyGyroMeanZMean"
[24] "tBodyGyroStdXMean"
[25] "tBodyGyroStdYMean"
[26] "tBodyGyroStdZMean"
[27] "tBodyGyroJerkMeanXMean"
[28] "tBodyGyroJerkMeanYMean"
[29] "tBodyGyroJerkMeanZMean"
[30] "tBodyGyroJerkStdXMean"
[31] "tBodyGyroJerkStdYMean"
[32] "tBodyGyroJerkStdZMean"
[33] "tBodyAccMagMeanMean"
[34] "tBodyAccMagStdMean"
[35] "tGravityAccMagMeanMean"
[36] "tGravityAccMagStdMean"
[37] "tBodyAccJerkMagMeanMean"
[38] "tBodyAccJerkMagStdMean"
[39] "tBodyGyroMagMeanMean"
[40] "tBodyGyroMagStdMean"
[41] "tBodyGyroJerkMagMeanMean"
[42] "tBodyGyroJerkMagStdMean"
[43] "fBodyAccMeanXMean"
[44] "fBodyAccMeanYMean"
[45] "fBodyAccMeanZMean"
[46] "fBodyAccStdXMean"
[47] "fBodyAccStdYMean"
[48] "fBodyAccStdZMean"
[49] "fBodyAccJerkMeanXMean"
[50] "fBodyAccJerkMeanYMean"
[51] "fBodyAccJerkMeanZMean"
[52] "fBodyAccJerkStdXMean"
[53] "fBodyAccJerkStdYMean"
[54] "fBodyAccJerkStdZMean"
[55] "fBodyGyroMeanXMean"
[56] "fBodyGyroMeanYMean"
[57] "fBodyGyroMeanZMean"
[58] "fBodyGyroStdXMean"
[59] "fBodyGyroStdYMean"
[60] "fBodyGyroStdZMean"
[61] "fBodyAccMagMeanMean"
[62] "fBodyAccMagStdMean"
[63] "fBodyBodyAccJerkMagMeanMean" 
[64] "fBodyBodyAccJerkMagStdMean"
[65] "fBodyBodyGyroMagMeanMean"
[66] "fBodyBodyGyroMagStdMean"
[67] "fBodyBodyGyroJerkMagMeanMean"
[68] "fBodyBodyGyroJerkMagStdMean" 


Variabels Explained
=================
[1] "subject": the subject who performed the activity for each window sample. Its range is from 1 to 30.
[2] "activity": activity performed by subject which can be one of 6 values: "walking", "walking-upstairs", "walking-downstairs", "sitting", "standing", "laying"
[3] - [68]: variables based on set of featurs (See Feature Selection). Notice the postfix 'Mean' on all variables. All variables are the average for each activity and each subject


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccXYZ
tGravityAccXYZ
tBodyAccJerkXYZ
tBodyGyroXYZ
tBodyGyroJerkXYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAccXYZ
fBodyAccJerkXYZ
fBodyGyroXYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
mad: Median absolute deviation 
max: Largest value in array
min: Smallest value in array
sma: Signal magnitude area
energy: Energy measure. Sum of the squares divided by the number of values. 
iqr: Interquartile range 
entropy: Signal entropy
arCoeff: Autorregresion coefficients with Burg order equal to 4
correlation: correlation coefficient between two signals
maxInds: index of the frequency component with largest magnitude
meanFreq: Weighted average of the frequency components to obtain a mean frequency
skewness: skewness of the frequency domain signal 
kurtosis: kurtosis of the frequency domain signal 
bandsEnergy: Energy of a frequency interval within the 64 bins of the FFT of each window.
angle: Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean




