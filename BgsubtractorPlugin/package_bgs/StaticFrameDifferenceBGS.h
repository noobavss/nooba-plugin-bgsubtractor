#pragma once

#include <iostream>
#include <opencv/cv.h>
#include <opencv/highgui.h>

#include "IBGS.h"
#include "QDir"

class StaticFrameDifferenceBGS : public IBGS
{
private:
  bool firstTime;
  cv::Mat img_background;
  cv::Mat img_foreground;
  bool enableThreshold;
  int threshold;
  bool showOutput;

public:
  StaticFrameDifferenceBGS();
  ~StaticFrameDifferenceBGS();

  /**
   * @brief process
   * @param img_input NOTE Image channel expected to be in RGB format when in colour format. NOT BGR as in
   *                        normal opencv
   * @param img_output
   */
  void process(const cv::Mat &img_input, cv::Mat &img_output);

private:
  void saveConfig();
  void loadConfig();
};
