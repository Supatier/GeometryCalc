module main;

import lib.geocalc;
import std.getopt;
import std.stdio;

void main(string[] args) {
        bool help, volume, surface, cone, cube, cylinder, sphere, pyramid;
        double length, width, height, radius;

        getopt(args, "h|help", &help, config.stopOnFirstNonOption, "volume",
                        &volume, "surface", &surface, "cone", &cone, "cube", &cube, "cylinder", &cylinder,
                        "sphere", &sphere, "pyramid", &pyramid, "length", &length,
                        "width", &width, "height", &height, "radius", &radius);
        if (help) {
                writeln("wersrfd"); //todo
                return;
        }
        if (volume) {
                auto volumeCalc = new VolumeCalc();
                if (cone) {
                        double val = volumeCalc.cone(radius, height);
                        writeln(val);
                        return;
                }
                if (cube) {
                        double val = volumeCalc.cube(length, width, height);
                        writeln(val);
                }

                if (cylinder) {
                        double val = volumeCalc.cylinder(radius, height);
                        writeln(val);
                        return;
                }

                if (sphere) {
                        double val = volumeCalc.sphere(radius);
                        writeln(val);
                        return;
                }

                if (pyramid) {
                        double val = volumeCalc.pyramid(length, width, height);
                        writeln(val);
                        return;
                }
        }

        if (surface) {
                auto surfaceAreaCalc = new SurfaceAreaCalc();
                if (cone) {
                        double val = surfaceAreaCalc.cone(radius, height);
                        writeln(val);
                        return;
                }
                if (cube) {
                        double val = surfaceAreaCalc.cube(length, width, height);
                        writeln(val);
                }

                if (cylinder) {
                        double val = surfaceAreaCalc.cylinder(radius, height);
                        writeln(val);
                        return;
                }

                if (sphere) {
                        double val = surfaceAreaCalc.sphere(radius);
                        writeln(val);
                        return;
                }

                if (pyramid) {
                        double val = surfaceAreaCalc.pyramid(length, width, height);
                        writeln(val);
                        return;
                }
        }
}
