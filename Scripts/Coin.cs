using Godot;
using System;

public partial class Coin : Area2D
{
	public override void _Ready()
	{
		Connect("body_entered", new Callable(this, nameof(_on_body_entered)));
	}


	public void _on_body_entered(Node body)
	{
		GD.Print("I'm a coin");
		QueueFree();
	}


}
