.class public Lcom/android/bypass;
.super Ljava/lang/Object;
.source "bypass.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpsurlconnectionbypass(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1
    .param  p0, "https"

    .prologue
    .line 11
    invoke-static {}, Lcom/android/httpsurlbypass;->hostname()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 12
    return-void
.end method
