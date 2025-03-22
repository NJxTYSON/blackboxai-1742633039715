.class Lcom/king/pacther/com/MainActivity$5;
.super Landroid/graphics/drawable/GradientDrawable;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/MainActivity;->_exip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/king/pacther/com/MainActivity;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$5;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIns(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 310
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/king/pacther/com/MainActivity$5;->setCornerRadius(F)V

    invoke-virtual {p0, p2}, Lcom/king/pacther/com/MainActivity$5;->setColor(I)V

    return-object p0
.end method
