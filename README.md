# manage_space

A new Flutter plugin to open a Flutter widget on clicking clear data button on Android.

## Getting Started

To use this plugin, you have to add a new key in application tag of AndroidManifest.xml as follows and pass .MainActivity as follows:
```
<application  
  android:label="manage_space_example"  
  android:name="${applicationName}"  
  android:manageSpaceActivity=".MainActivity"  
  android:icon="@mipmap/ic_launcher">
  ...
</application>
``` 

## Usage

Then, you can directly call a static method called isFromManageSpaceEvent which returns true if application is opened by pressing clear data button.
```
bool isOpenedByClearData = await isFromManageSpaceEvent();
```

Ideally, this method should be called in splash screen and appropriate UI should be opened to clear user selected data.

## Note

This package is only available for android platform.