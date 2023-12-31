filename myurl url "https://www.utsc.utoronto.ca/~butler/c32/soap.txt";

proc import
  datafile=myurl
  out=soap
  dbms=dlm
  replace;
  getnames=yes;
  delimiter=" ";
  
proc means;
  var scrap speed;

ods graphics on / imagename="scatter";

proc sgplot;
  scatter x=speed y=scrap;

