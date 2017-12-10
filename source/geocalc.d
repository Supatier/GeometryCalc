/**
* geo.d
* Calculates the volume of an 3d object.
* Licanse = MPL-2.0 + sublicanse
*/
module lib.geocalc;

import std.math;
import std.stdio;

struct VolumeCalc {
        double cone(double radius, double height) {
                double value = pow(radius, 2) * height * PI / 3;
                return value;
        }

        double cube(double length, double width, double height) {
                double value = length * width * height;
                return value;
        }

        double cylinder(double radius, double height) {
                double value = pow(radius, 2) * height * PI;
                return value;
        }

        double sphere(double radius) {
                double value = pow(radius, 3) * PI * 4 / 3;
                return value;
        }

        double pyramid(double length, double width, double height) {
                double value = length * width * height / 3;
                return value;
        }

}

struct SurfaceAreaCalc {
        double cone(double radius, double height) {
                double value = radius * PI * (radius * sqrt(pow(height, 2) * pow(radius, 2)));
                return value;
        }

        double cube(double length, double width, double height) {
                double value = 2 * ((length * width) + (length * height) + (width * height));
                return value;
        }

        double cylinder(double radius, double height) {
                double value = (2 * PI * radius * height) + (2 * PI * pow(radius, 2));
                return value;
        }

        double sphere(double radius) {
                double value = pow(radius, 2) * PI * 4;
                return value;
        }

        double pyramid(double length, double width, double height) {
                double value = (length * width) + (length * sqrt((pow((width / 2),
                                2) + pow(height, 2)))) + (width * sqrt(pow((length / 2),
                                2) + pow(height, 2)));
                return value;
        }
}
