package com.example.skd_make_review

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar
import android.content.Intent
import android.content.ActivityNotFoundException
import android.net.Uri


class SkdMakeReviewPlugin : MethodCallHandler {


    companion object {
        private var registrarInstance: Registrar? = null

        @JvmStatic
        fun registerWith(registrar: Registrar) {
            this.registrarInstance = registrar
            val channel = MethodChannel(registrar.messenger(), "skd_make_review")
            channel.setMethodCallHandler(SkdMakeReviewPlugin())
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "makeReview") {
            makeReview(call, result)
        } else {
            result.notImplemented()
        }
    }

    private fun makeReview(call: MethodCall, result: Result) {
        var appPackageName = call.argument<String>("android_app_id")

        if (appPackageName == null) {
            appPackageName = registrarInstance?.activity()?.getPackageName()
        }

        try {
            registrarInstance?.activity()?.startActivity(Intent(Intent.ACTION_VIEW,
                    Uri.parse("market://details?id=" + appPackageName!!)))
        } catch (e: ActivityNotFoundException) {
            registrarInstance?.activity()?.startActivity(Intent(Intent.ACTION_VIEW,
                    Uri.parse("https://play.google.com/store/apps/details?id=" + appPackageName!!)))
        }

        result.success(true)
    }
}
