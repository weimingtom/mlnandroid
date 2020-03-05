package com.example.mlnandroid;

import org.luaj.vm2.Globals;

import android.app.Activity;
import android.os.Bundle;

public class MainActivity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.activity_main);
		
		Globals.setAssetManagerForNative(this.getAssets());
		BridgeTest test = new BridgeTest();
		test.initPath();
		test.testMBit();
		test.onDestroy();
	}
}
