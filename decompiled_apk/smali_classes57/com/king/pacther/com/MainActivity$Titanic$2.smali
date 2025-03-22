.class Lcom/king/pacther/com/MainActivity$Titanic$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/MainActivity$Titanic;->start(Lcom/king/pacther/com/MainActivity$TitanicTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/king/pacther/com/MainActivity$Titanic;

.field private final synthetic val$animate:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity$Titanic;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$Titanic$2;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    iput-object p2, p0, Lcom/king/pacther/com/MainActivity$Titanic$2;->val$animate:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupAnimation(Lcom/king/pacther/com/MainActivity$TitanicTextView;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$2;->val$animate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 437
    return-void
.end method
