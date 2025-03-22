.class public Lcom/king/pacther/com/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;,
        Lcom/king/pacther/com/MainActivity$Titanic;,
        Lcom/king/pacther/com/MainActivity$TitanicTextView;,
        Lcom/king/pacther/com/MainActivity$1;
    }
.end annotation

# Inner class for click listener
.class Lcom/king/pacther/com/MainActivity$1;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

# instance fields
.field final synthetic this$0:Lcom/king/pacther/com/MainActivity;

.method constructor <init>(Lcom/king/pacther/com/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/king/pacther/com/MainActivity;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v0

    sparse-switch v0, :sswitch_data_0
    goto :goto_0

    :sswitch_0  # floating_button1
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;
    const-string v2, "Button 1 clicked"
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_1  # floating_button2
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;
    const-string v2, "Button 2 clicked"
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_2  # floating_button3
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;
    const-string v2, "Button 3 clicked"
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_3  # floating_button4
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;
    const-string v2, "Button 4 clicked"
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_4  # floating_button5
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;
    const-string v2, "Button 5 clicked"
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_5  # floating_button6
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;
    const-string v2, "Button 6 clicked"
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0800a1 -> :sswitch_0  # floating_button1
        0x7f0800a2 -> :sswitch_1  # floating_button2
        0x7f0800a3 -> :sswitch_2  # floating_button3
        0x7f0800a4 -> :sswitch_3  # floating_button4
        0x7f0800a5 -> :sswitch_4  # floating_button5
        0x7f0800a6 -> :sswitch_5  # floating_button6
    .end sparse-switch
.end method

# instance fields
.field private _timer:Ljava/util/Timer;
.field private viewCache:Landroid/util/SparseArray;
.field private windowManager:Landroid/view/WindowManager;
.field private handler:Landroid/os/Handler;

# direct methods
.method public constructor <init>()V
    .locals 1
    
    .prologue
    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V
    
    # Initialize view cache
    new-instance v0, Landroid/util/SparseArray;
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
    iput-object v0, p0, Lcom/king/pacther/com/MainActivity;->viewCache:Landroid/util/SparseArray;
    
    # Initialize handler on main thread
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    iput-object v0, p0, Lcom/king/pacther/com/MainActivity;->handler:Landroid/os/Handler;
    
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    
    .prologue
    .line 83
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    
    # Enable hardware acceleration
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/high16 v1, 0x1000000
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    
    const v0, 0x7f0b0034
    invoke-virtual {p0, v0}, Lcom/king/pacther/com/MainActivity;->setContentView(I)V
    
    # Get window manager once
    const-string v0, "window"
    invoke-virtual {p0, v0}, Lcom/king/pacther/com/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/view/WindowManager;
    iput-object v0, p0, Lcom/king/pacther/com/MainActivity;->windowManager:Landroid/view/WindowManager;
    
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity;->initializeViews()V
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity;->setupFloatingMenu()V
    
    return-void
.end method

.method private setupFloatingMenu()V
    .locals 7

    const v1, 0x7f0800a1  # floating_button1
    const v2, 0x7f0800a2  # floating_button2
    const v3, 0x7f0800a3  # floating_button3
    const v4, 0x7f0800a4  # floating_button4
    const v5, 0x7f0800a5  # floating_button5
    const v6, 0x7f0800a6  # floating_button6

    invoke-virtual {p0, v1}, Lcom/king/pacther/com/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-direct {p0, v0}, Lcom/king/pacther/com/MainActivity;->setupFloatingButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {p0, v2}, Lcom/king/pacther/com/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-direct {p0, v0}, Lcom/king/pacther/com/MainActivity;->setupFloatingButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {p0, v3}, Lcom/king/pacther/com/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-direct {p0, v0}, Lcom/king/pacther/com/MainActivity;->setupFloatingButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {p0, v4}, Lcom/king/pacther/com/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-direct {p0, v0}, Lcom/king/pacther/com/MainActivity;->setupFloatingButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {p0, v5}, Lcom/king/pacther/com/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-direct {p0, v0}, Lcom/king/pacther/com/MainActivity;->setupFloatingButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {p0, v6}, Lcom/king/pacther/com/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-direct {p0, v0}, Lcom/king/pacther/com/MainActivity;->setupFloatingButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private setupFloatingButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "button"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v0, Lcom/king/pacther/com/MainActivity$1;
    invoke-direct {v0, p0}, Lcom/king/pacther/com/MainActivity$1;-><init>(Lcom/king/pacther/com/MainActivity;)V
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeViews()V
    .locals 2
    
    # Use ViewBinding or cached findViewById
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity;->viewCache:Landroid/util/SparseArray;
    const v1, 0x7f080105
    invoke-virtual {p0, v1}, Lcom/king/pacther/com/MainActivity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    
    # Initialize other views similarly...
    
    return-void
.end method

.method protected onDestroy()V
    .locals 1
    
    .prologue
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V
    
    # Cleanup timer
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity;->_timer:Ljava/util/Timer;
    if-eqz v0, :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    const/4 v0, 0x0
    iput-object v0, p0, Lcom/king/pacther/com/MainActivity;->_timer:Ljava/util/Timer;
    :cond_0
    
    return-void
.end method

# Inner class for button click listener
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I
    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0  # floating_button1
    const-string v1, "Button 1 clicked"
    invoke-static {p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_1  # floating_button2
    const-string v1, "Button 2 clicked"
    invoke-static {p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_2  # floating_button3
    const-string v1, "Button 3 clicked"
    invoke-static {p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_3  # floating_button4
    const-string v1, "Button 4 clicked"
    invoke-static {p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_4  # floating_button5
    const-string v1, "Button 5 clicked"
    invoke-static {p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_5  # floating_button6
    const-string v1, "Button 6 clicked"
    invoke-static {p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0800a1 -> :sswitch_0  # floating_button1
        0x7f0800a2 -> :sswitch_1  # floating_button2
        0x7f0800a3 -> :sswitch_2  # floating_button3
        0x7f0800a4 -> :sswitch_3  # floating_button4
        0x7f0800a5 -> :sswitch_4  # floating_button5
        0x7f0800a6 -> :sswitch_5  # floating_button6
    .end sparse-switch
.end method
