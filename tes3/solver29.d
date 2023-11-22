module solver29;
import std.stdio;
import std.range;
import std.algorithm.sorting;
import std.algorithm;
import std.conv;
import std.container.array;

class solve29 {
    Array!int solvercase(Array!int x) {
        auto index = iota(0, x.length).array;
        sort!((i, j) => x[i] < x[j])(index);
        return Array!int(index.map!(to!int).array);
    }

    Array!int split(string y, int ncase) {
        int x;
        Array!int val;
        
        for (int i; i < y.length; i++) {
            if (y[i] == ' ') {
                val.insertBack(to!int(y[x..i]));
                x = i + 1;
            }
            
            if (val.length == ncase - 1) {
                val.insertBack(to!int(y[x..$]));
                break;
            }
        }
        
        return val;
    }
}