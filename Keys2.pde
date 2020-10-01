class Keys2
{
  private boolean upDown = false;
  private boolean leftDown = false;
  private boolean downDown = false;
  private boolean rightDown = false;
  
  public Keys2(){}
  
  public boolean upDown()
  {
    return upDown;
  }
  
  public boolean leftDown()
  {
    return leftDown;
  }
  
  public boolean downDown()
  {
    return downDown;
  }
  
  public boolean rightDown()
  {
    return rightDown;
  }
  
  
  
  void onKeyPressed2(int code)
  {
    if(code == UP)
    {
      upDown = true;
    }
    else if (code == LEFT)
    {
      leftDown = true;
    }
    else if(code == DOWN)
    {
      downDown = true;
    }
    else if(code == RIGHT)
    {
      rightDown = true;
    }
  }
  
  void onKeyReleased2(int code)
  {
    if(code == UP)
    {
      upDown = false;
    }
    else if (code == LEFT)
    {
      leftDown = false;
    }
    else if(code == DOWN)
    {
      downDown = false;
    }
    else if(code == RIGHT)
    {
      rightDown = false;
    }
  }
}
