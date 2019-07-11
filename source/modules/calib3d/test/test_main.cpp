// This file is part of OpenCV project.
// It is subject to the license terms in the LICENSE file found in the top-level directory
// of this distribution and at http://opencv.org/license.html.
//#include "test_precomp.hpp"

//CV_TEST_MAIN("")

#include "opencv2/core.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include <fstream>

int main()
{
    auto mat_ = cv::imread("D:\\Projects\\Kylin\\YDcv\\ImageProcessing\\pattern.png", 0);
    auto width = 640;
    auto height = 480;
    cv::Mat1b mat(height, width, (uchar)0);
    mat_(cv::Rect(100, 16, mat.cols, mat.rows)).copyTo(mat);

    std::ifstream in("D:\\Projects\\Kylin\\YDcv\\ImageProcessing\\Remap");
    int rows, cols, type;

    cv::Mat map1, map2;
    in >> rows >> cols >> type;
    map1.create(rows, cols, type);
    for (int i = 0; i < rows; i++)
    {
        auto ptr = map1.ptr<short>(i);
        for (int j = 0; j < cols * map1.channels(); j++)
        {
            in >> ptr[j];
        }
    }
    in >> rows >> cols >> type;
    map2.create(rows, cols, type);
    for (int i = 0; i < rows; i++)
    {
        auto ptr = map2.ptr<unsigned short>(i);
        for (int j = 0; j < cols; j++)
        {
            in >> ptr[j];
        }
    }

    cv::Mat cvmap;
    cv::remap(mat, cvmap, map1, map2, cv::INTER_LINEAR);

    cv::imshow("mat", mat);
    cv::imshow("cvmap", cvmap);
    cv::waitKey();
}
