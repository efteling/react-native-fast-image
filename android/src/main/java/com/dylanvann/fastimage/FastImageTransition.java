package com.dylanvann.fastimage;

import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;

public class FastImageTransition {
  final String effect = "cross-dissolve";
  int duration;

  public FastImageTransition(int duration) {
    this.duration = duration;
  }

  public DrawableTransitionOptions transitionOptions() {
    return DrawableTransitionOptions.withCrossFade(this.duration);
  }
}
