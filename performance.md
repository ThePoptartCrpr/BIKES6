# Improving Performance

_This guide is made to help players getting low FPS while playing the modpack. A lot of these tips may be more or less effective depending on your computer. If you don't understand how to do something or don't know how to revert it if something goes wrong, please do not attempt to do it._

## In-game Tips

* Tinker with the basic video settings (render distance, graphics, smooth lighting, etc.).
  * WARNING: If you have OptiFine, setting _Chunk Loading_ to Smooth or Multi-Core is notorious for causing significant graphical glitches and crashes. We recommend setting it to Default.
* Try disabling VSync.
* In video settings, set Mipmap Levels to 0. (If you don't want to do this in-game, open your `options.txt` file in your modpack's game directory and set `mipmapLevels` to `0`.)

* Try to put things like automated crops and machines that are resource intensive away from your main base and chunk loaded, so that your computer doesn't have to render them all the time.

## Advanced Tips
* OptiFine is installed by default. On some systems, this may cause reduced performance. Try removing it and test.
* Update Java. Generally, Minecraft uses an old version of Java bundled with the launcher. Updating Java can increase performance significantly in many cases. Once you have installed the latest version of Java (and uninstalled old versions, if installed), set your Minecraft installation to use it under _Java Executable_ in its settings (the same place where you set game directory, java arguments, etc.).
* In the `fastcraft.ini` file in the `config` folder in your modpack's game directory, change the value for `disableAnimations` to `true`.
* Make sure enough RAM is allocated. This can be changed in your Java Arguments using the `-Xmx` argument. We recommend allocating anywhere from 1.5 GB to 3 GB. Going too much lower or higher can decrease performance. _For an explanation for how allocating too much RAM can be bad, see [here](https://vazkii.net/#blog/ram-explanation)_.
  * `-Xmx1536M` allocates 1536 MB of RAM (which is equal to 1.5 GB).
  * `-Xmx2G` allocates 2 GB of RAM.
  * `-Xmx3G` allocates 3 GB of RAM.
* Modify your Java Arguments entirely. They do a lot more than simply allocate RAM. This largely depends on your system, and what works best for one system may not work well for another. If you choose to use different arguments, remove all existing default arguments and replace them. Make sure your final arguments always have `-Xmx` somewhere so that you can set the RAM allocation. The Minecraft launcher allows you to reset to the default arguments if your custom ones don't work well. Below are a set of arguments that may help, but your milage may vary:
  * `-Xmx1536M -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:MaxGCPauseMillis=20`