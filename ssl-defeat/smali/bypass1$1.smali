.class Lcom/android/bypass1$1;
.super Landroid/webkit/WebViewClient;
.source "bypass1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bypass1;->byp()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param  p1, "view"
    .param  p2, "handler"
    .param  p3, "error"

    .prologue
    .line 14
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 15
    return-void
.end method
