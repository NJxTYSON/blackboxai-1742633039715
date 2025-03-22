.class Lcom/king/pacther/com/DebugActivity$1;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/DebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/king/pacther/com/DebugActivity;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/DebugActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/king/pacther/com/DebugActivity$1;->this$0:Lcom/king/pacther/com/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/king/pacther/com/DebugActivity$1;->this$0:Lcom/king/pacther/com/DebugActivity;

    invoke-virtual {v0}, Lcom/king/pacther/com/DebugActivity;->finish()V

    .line 70
    return-void
.end method
