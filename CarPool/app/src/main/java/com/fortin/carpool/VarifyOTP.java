package com.fortin.carpool;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.fortin.carpool.Model.M;
import com.fortin.carpool.Model.UserPojo;
import com.fortin.carpool.WebServices.APIService;
import com.fortin.carpool.WebServices.UserAPI;
import com.fortin.carpool.helper.ConnectionDetector;
import com.fortin.carpool.helper.NoInternetDialogue;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.iid.InstanceID;

import java.io.IOException;

import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

public class VarifyOTP extends AppCompatActivity implements View.OnClickListener{

    ConnectionDetector connectionDetector;
    Button btnvarify;
    String mobileNumber,country,userid="",TAG="Varify",gcmid="";
    EditText etotp;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_varify_otp);
        connectionDetector = new ConnectionDetector(this);

        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setTitle(R.string.confirm);
        if(!connectionDetector.isConnectingToInternet())
        {
            Toast.makeText(VarifyOTP.this, getString(R.string.nointdesc), Toast.LENGTH_SHORT).show();
            finish();
        }else {

            mobileNumber = getIntent().getStringExtra(getString(R.string.phone));
            country = getIntent().getStringExtra(getString(R.string.country));
            //M.savePreferences(getString(R.string.country), country, VarifyOTP.this);
            System.out.println("111country--" + country);
            etotp = (EditText) findViewById(R.id.etotp);
            btnvarify = (Button) findViewById(R.id.btnvarify);

            btnvarify.setOnClickListener(this);

            etotp.addTextChangedListener(new TextWatcher() {
                @Override
                public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

                }

                @Override
                public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {

                    if (charSequence.length() == 6) {
                     //   register();
                    }
                }

                @Override
                public void afterTextChanged(Editable editable) {

                }
            });
        }
    }

    @Override
    public void onClick(View v) {

        if(v==btnvarify)
        {
            if(NoInternetDialogue.isconnection(VarifyOTP.this)) {
              register();
            }
        }
    }


    public void register() {
        M.showLoadingDialog(VarifyOTP.this);
        String verificationcode = etotp.getText().toString();
        if(verificationcode.length()==6) {
        Log.d(TAG,"data:"+mobileNumber+" "+verificationcode+" "+country+" "+gcmid);
            UserAPI mUsersAPI = APIService.createService(UserAPI.class, M.getToken(VarifyOTP.this));
            mUsersAPI.register(mobileNumber, verificationcode,country,"android",gcmid, new Callback<UserPojo>() {
                @Override
                public void success(UserPojo userItems, Response response) {
                    if(userItems.getUser_id()!=null && !userItems.getUser_id().isEmpty()) {
                        if (userItems.getUser_id().equals("-1")) {
                            Toast.makeText(VarifyOTP.this, "Mobile No and OTP did not match", Toast.LENGTH_SHORT).show();
                        } else {
                            userid = userItems.getUser_id();
                            if (userid.length() > 0) {

                                M.setID(userid, VarifyOTP.this);
                                M.savePreferences(getString(R.string.mobile), userItems.getUser_mobile(), VarifyOTP.this);
                                M.savePreferences(getString(R.string.country), userItems.getUser_country(), VarifyOTP.this);
                                String userstatus = userItems.getUserstatus();
                                if (userstatus.equalsIgnoreCase("olduser")) {
                                    String usernm = userItems.getUser_name();
                                    if (userItems.getUser_name() != null) {
                                        M.setUsername(usernm, VarifyOTP.this);
                                    }
                                    loginNow();
                                } else {
                                    Intent intent = new Intent(VarifyOTP.this, UserRegistration.class);
                                    finish();
                                    startActivity(intent);
                                }
                            } else {

                                M.showToast(VarifyOTP.this, "Server Problem");
                            }
                        }
                    }else {

                        M.showToast(VarifyOTP.this, "Server Problem");
                    }
                }

                @Override
                public void failure(RetrofitError error) {
                    M.hideLoadingDialog();
                    Log.d("VarifyOTP","error:"+error.getMessage());
                }
            });
        }
        else
        {
            M.showToast(VarifyOTP.this, getString(R.string.otpalert));
            M.hideLoadingDialog();
        }
        M.hideLoadingDialog();

    }

    public void recivedSms(String message)
    {
        try
        {
            String otp = message.substring(0, Math.min(message.length(), 6));
            etotp.setText(otp);
        }
        catch (Exception e)
        {
        }
    }

    public void loginNow() {

        Intent i = new Intent(VarifyOTP.this, MainActivity.class);
        finish();
        startActivity(i);
        overridePendingTransition(0,0);

    }


    @Override
    public void onBackPressed() {
            Intent i = new Intent(this, Login.class);
            finish();
            startActivity(i);
            overridePendingTransition(0,0);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                Intent i = new Intent(this, Login.class);
                finish();
                startActivity(i);
                overridePendingTransition(0, 0);
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
