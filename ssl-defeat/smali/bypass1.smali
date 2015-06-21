.class public Lcom/android/bypass1;
.super Ljava/lang/Object;
.source "bypass1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byp()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/android/bypass1$1;

    invoke-direct {v0}, Lcom/android/bypass1$1;-><init>()V

    return-object v0
.end method

.method public static webviewbypass(Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "view"

    .prologue
    .line 21
    invoke-static {}, Lcom/android/bypass1;->byp()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 22
    return-void
.end method
