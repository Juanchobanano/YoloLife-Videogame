package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;

import com.yoyogames.runner.RunnerJNILib;

import android.app.Activity;
import android.widget.Toast;

import android.util.Log;

//import AdBuddiz SDK
import com.purplebrain.adbuddiz.sdk.AdBuddiz;
import com.purplebrain.adbuddiz.sdk.AdBuddizLogLevel;

public class AdBuddizClass extends Activity {
    
public void AdBuddiz_SetLogLevel(String lvl)
{
    if ("Info".equals(lvl)) {
        AdBuddiz.setLogLevel(AdBuddizLogLevel.Info);
    } else if ("Error".equals(lvl)) {
        AdBuddiz.setLogLevel(AdBuddizLogLevel.Error);
    } else if ("Silent".equals(lvl)) {
        AdBuddiz.setLogLevel(AdBuddizLogLevel.Silent);
    }
}
    
public void AdBuddiz_SetPublisherKey(String key)
{
    AdBuddiz.setPublisherKey(key);
}
    
public void AdBuddiz_SetTestModeActive()
{
    AdBuddiz.setTestModeActive();
}
		
public void AdBuddiz_CacheAds()
{
    AdBuddiz.cacheAds(RunnerActivity.CurrentActivity);
}

public void AdBuddiz_ShowAd()
{
	AdBuddiz.showAd(RunnerActivity.CurrentActivity);
}

public double AdBuddiz_IsReadyToShowAd()
{
    if (AdBuddiz.isReadyToShowAd(RunnerActivity.CurrentActivity)) {
        return(1);
    } else {
        return(0);
    }
}

}
