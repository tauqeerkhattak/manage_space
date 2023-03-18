package com.mania.manage_space;

import android.content.Intent;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/** ManageSpacePlugin */
public class ManageSpacePlugin implements FlutterPlugin, MethodCallHandler, ActivityAware {
  private MethodChannel channel;
  private boolean isFromManageSpace = false;

  @Override
  public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) {
    String action = binding.getActivity().getIntent().getAction();
    if (action.equals(Intent.ACTION_VIEW)) {
      isFromManageSpace = true;
    }
  }

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "manage_space");
    channel.setMethodCallHandler(this);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    if (call.method.equals("isFromManageSpaceEvent")) {
      result.success(isFromManageSpace);
    }
    else {
      result.notImplemented();
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }

  @Override
  public void onDetachedFromActivityForConfigChanges() {
    System.out.println("onDetachedFromActivityForConfigChanges!");
  }

  @Override
  public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) {
    System.out.println("onReattachedToActivityForConfigChanges");
  }

  @Override
  public void onDetachedFromActivity() {
    System.out.println("Detached from activity!");
  }
}
