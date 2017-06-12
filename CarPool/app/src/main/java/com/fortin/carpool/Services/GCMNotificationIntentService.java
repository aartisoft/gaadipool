package com.fortin.carpool.Services;

import android.app.ActivityManager;
import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.util.Log;

import com.fortin.carpool.MainActivity;
import com.fortin.carpool.Model.M;
import com.fortin.carpool.Model.UserPojo;
import com.fortin.carpool.R;
import com.fortin.carpool.WebServices.APIService;
import com.fortin.carpool.WebServices.UserAPI;
import com.google.android.gms.gcm.GoogleCloudMessaging;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.List;

import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;


public class GCMNotificationIntentService extends IntentService {

    Context context;
    public GCMNotificationIntentService() {
        super("GcmIntentService");
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        context = this;
        Bundle extras = intent.getExtras();
        GoogleCloudMessaging gcm = GoogleCloudMessaging.getInstance(this);

        String messageType = gcm.getMessageType(intent);
        System.out.println("message received---"+messageType);
        if (! extras.isEmpty()) {
            if (GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR
                    .equals(messageType)) {

            } else if (GoogleCloudMessaging.MESSAGE_TYPE_DELETED
                    .equals(messageType)) {

            } else if (GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE
                    .equals(messageType)) {
                Log.i("utpal", "Received: " + extras.toString());
                parseRequest(extras);
            }
        }
        GcmBroadcastReceiver.completeWakefulIntent(intent);
    }

    public void parseRequest(Bundle extras) {

        String title = extras.getString("title");
        String type = "";
        String message = extras.getString("message");
        String msg = "";
        try {
            JSONObject json = new JSONObject(message);

            type = json.getString("type");
            msg  = json.getString("message");
        } catch (JSONException e) {
            e.printStackTrace();
        }
            if(M.ispushON(context)) {
                NotificationCompat.Builder builder =
                        new NotificationCompat.Builder(context)
                                .setSmallIcon(R.drawable.notification)
                                .setContentTitle("" + title)
                                .setContentInfo(msg);

                Intent notificationIntent = new Intent(context, MainActivity.class);
                notificationIntent.putExtra("notification", "");
                PendingIntent contentIntent = PendingIntent.getActivity(context, 0, notificationIntent,
                        PendingIntent.FLAG_UPDATE_CURRENT);
                builder.setContentIntent(contentIntent);
                builder.setSound( RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION));
                // Add as notification
                NotificationManager manager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
                manager.notify(0, builder.build());
            }

        }



    public boolean isRunning(String activityName) {
        ActivityManager activityManager = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
        List<ActivityManager.RunningTaskInfo> tasks = activityManager.getRunningTasks(2);
        for (ActivityManager.RunningTaskInfo task : tasks) {
            if ((getPackageName() + ".activities." + activityName).equals(task.topActivity.getClassName())) {
                return true;
            }
        }

        return false;
    }
}
