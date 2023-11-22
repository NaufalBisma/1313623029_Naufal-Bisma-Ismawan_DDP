module main;
import solver29;
import std.stdio;
import std.conv;
import std.algorithm;
import std.container.array;

void main(){
    int ncase;
    write("total values ; ");
    readf("%d\n",ncase);
    string sval;
    write("values ; ");
    readf("%s\n",sval);
    auto val = new solve29().split(sval, ncase);
    auto index = new solve29().solvercase(val);
    index.each!(x => writef("%d ",x+1)),write("\n");
}