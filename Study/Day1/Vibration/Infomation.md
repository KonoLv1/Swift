# Vibration（振動させる）

```swift
import AudioToolbox

func vibrate() {
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}
```