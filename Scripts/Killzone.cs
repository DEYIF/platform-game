using Godot;
using System;

public partial class Killzone : Area2D
{
	[Export] public Timer RespawnTimer;

	public override void _Ready()
	{
		Connect("body_entered", new Callable(this, nameof(_on_body_entered)));
		RespawnTimer.Timeout += OnTimerTimeout; // += 表示给信号添加一个订阅者，也就是说当信号触发时，会执行 OnTimerTimeout() 方法。
	}


	public void _on_body_entered(Node body)
	{
		GD.Print("You died");
		RespawnTimer.Start();
	}

	public void OnTimerTimeout()
	{
		GetTree().ReloadCurrentScene();
	}

}
