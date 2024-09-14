(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    103350,       2943]
NotebookOptionsPosition[     97892,       2848]
NotebookOutlinePosition[     98234,       2863]
CellTagsIndexPosition[     98191,       2860]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"Define", " ", "maps"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"\[Phi]1", "[", "z_", "]"}], ":=", 
    RowBox[{
     RowBox[{"z", "/", "1000"}], "-", 
     RowBox[{"9", "/", "10"}]}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Phi]2", "[", "z_", "]"}], ":=", 
    RowBox[{
     RowBox[{"19", "/", "20"}], 
     RowBox[{"(", "z", ")"}], "I"}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Phi]3", "[", "z_", "]"}], ":=", 
    RowBox[{"z", "/", 
     RowBox[{"(", 
      RowBox[{"2", 
       RowBox[{"(", 
        RowBox[{"z", "-", 
         RowBox[{"2", "I"}]}], ")"}]}], ")"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "define", " ", "r0", " ", "and", " ", "centre", " ", "of", " ", "ball", 
     " ", "c0"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"c0", "=", "0"}], "\[IndentingNewLine]", 
   RowBox[{"r0", "=", 
    RowBox[{"901", "/", "1000"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"fixed", " ", "points"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"w", "=", 
    RowBox[{"z", "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"\[Phi]1", "[", "z", "]"}], "\[Equal]", "z"}], ",", "z"}], 
       "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}]}]}]}]}]], "Input",
 CellChangeTimes->{{3.783769211578377*^9, 3.783769211891171*^9}, {
  3.7837702653740377`*^9, 3.7837702833021193`*^9}, {3.7839251858506393`*^9, 
  3.7839251953623133`*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"d0fed866-d4fe-49f0-9a31-20ebb5f0cf4a"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{
  3.783769213320108*^9, 3.783770286475526*^9, 3.783779076212152*^9, 
   3.783830565416527*^9, 3.7839251416064863`*^9, {3.78392519120826*^9, 
   3.7839252098877153`*^9}, 3.783925318881158*^9},
 CellLabel->"Out[4]=",ExpressionUUID->"28872b8e-d1cf-4509-9301-3e84b14b4af7"],

Cell[BoxData[
 FractionBox["901", "1000"]], "Output",
 CellChangeTimes->{
  3.783769213320108*^9, 3.783770286475526*^9, 3.783779076212152*^9, 
   3.783830565416527*^9, 3.7839251416064863`*^9, {3.78392519120826*^9, 
   3.7839252098877153`*^9}, 3.783925318885106*^9},
 CellLabel->"Out[5]=",ExpressionUUID->"3c5f5089-b09d-4a11-87e0-275b9c63dbf4"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["100", "111"]}]], "Output",
 CellChangeTimes->{
  3.783769213320108*^9, 3.783770286475526*^9, 3.783779076212152*^9, 
   3.783830565416527*^9, 3.7839251416064863`*^9, {3.78392519120826*^9, 
   3.7839252098877153`*^9}, 3.783925318889295*^9},
 CellLabel->"Out[6]=",ExpressionUUID->"b0a9ebce-a6f9-4c60-a63d-9eabfafc595a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"images", " ", "of", " ", "Omega", " ", "under", " ", "maps"}], 
    ",", " ", 
    RowBox[{"first", " ", "fii_", "1"}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]1", "]"}], "[", 
      RowBox[{"c0", "+", "r0"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]1", "]"}], "[", 
      RowBox[{"c0", "+", 
       RowBox[{"r0", " ", "I"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]1", "]"}], "[", 
      RowBox[{"c0", "-", "r0"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c1", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r1", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7837703205376253`*^9, 3.7837704003465853`*^9}},
 CellLabel->"In[7]:=",ExpressionUUID->"50cb4e1b-2067-4871-8da4-43f125ea11c0"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["9", "10"]}]], "Output",
 CellChangeTimes->{3.783770380930072*^9, 3.7837790799865637`*^9, 
  3.783830573061564*^9, 3.783925145005673*^9, 3.783925215729857*^9, 
  3.783925321547186*^9},
 CellLabel->"Out[10]=",ExpressionUUID->"1f72729f-bc64-4bd9-a849-1e0d5e9eb11f"],

Cell[BoxData[
 FractionBox["901", "1000000"]], "Output",
 CellChangeTimes->{3.783770380930072*^9, 3.7837790799865637`*^9, 
  3.783830573061564*^9, 3.783925145005673*^9, 3.783925215729857*^9, 
  3.783925321549502*^9},
 CellLabel->"Out[11]=",ExpressionUUID->"309574aa-7e23-465c-ba2d-ee4a9dda60b1"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"then", " ", "fii_", "2"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]2", "]"}], "[", 
      RowBox[{"c0", "+", "r0"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]2", "]"}], "[", 
      RowBox[{"c0", "+", 
       RowBox[{"r0", " ", "I"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]2", "]"}], "[", 
      RowBox[{"c0", "-", "r0"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c2", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r2", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7837704087551537`*^9, 3.783770423267308*^9}},
 CellLabel->"In[12]:=",ExpressionUUID->"4c6538d5-afa1-4b01-bd70-8125cc67c87f"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{3.7837704240894136`*^9, 3.7837790832352057`*^9, 
  3.783830586840866*^9, 3.7839251466269627`*^9, 3.783925218419091*^9, 
  3.783925322978874*^9},
 CellLabel->"Out[15]=",ExpressionUUID->"9e5f5290-6555-4fe7-b044-e9357fb4bfba"],

Cell[BoxData[
 FractionBox["17119", "20000"]], "Output",
 CellChangeTimes->{3.7837704240894136`*^9, 3.7837790832352057`*^9, 
  3.783830586840866*^9, 3.7839251466269627`*^9, 3.783925218419091*^9, 
  3.783925322980402*^9},
 CellLabel->"Out[16]=",ExpressionUUID->"b3304f50-61ea-4fec-969f-d45b52745b35"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"then", " ", "fii_", "3"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]3", "]"}], "[", 
      RowBox[{"c0", "+", "r0"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]3", "]"}], "[", 
      RowBox[{"c0", "+", 
       RowBox[{"r0", " ", "I"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]3", "]"}], "[", 
      RowBox[{"c0", "-", "r0"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c3", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r3", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783770444972966*^9, 3.783770459548401*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"5ab37413-d160-491b-8d08-3fe6f60bfaf8"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["811801", "6376398"]}]], "Output",
 CellChangeTimes->{{3.783770451195951*^9, 3.783770460308936*^9}, 
   3.78377908540646*^9, 3.783830636512334*^9, 3.783925148244958*^9, 
   3.783925220545425*^9, 3.7839253243848763`*^9},
 CellLabel->"Out[20]=",ExpressionUUID->"b2fc2fb4-868c-4392-b66e-1abec84396df"],

Cell[BoxData[
 FractionBox["901000", "3188199"]], "Output",
 CellChangeTimes->{{3.783770451195951*^9, 3.783770460308936*^9}, 
   3.78377908540646*^9, 3.783830636512334*^9, 3.783925148244958*^9, 
   3.783925220545425*^9, 3.783925324389062*^9},
 CellLabel->"Out[21]=",ExpressionUUID->"1e3a5b24-1704-4dfc-a1ab-de90275d393a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Calculate", " ", "z1", " ", "and", " ", "z2", " ", "and", " ", "their", 
    " ", "distance"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"q1", "=", 
    RowBox[{
     RowBox[{"Composition", "[", 
      RowBox[{"\[Phi]3", ",", "\[Phi]2"}], "]"}], "[", "w", "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"q2", "=", 
    RowBox[{
     RowBox[{"Composition", "[", 
      RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2"}], 
      "]"}], "[", "w", "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"Abs", "[", 
    RowBox[{"q2", "-", "q1"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.7837705787439013`*^9, 3.783770658929055*^9}, {
  3.7839251607136*^9, 3.783925171109873*^9}, {3.7839252298358517`*^9, 
  3.7839252338017473`*^9}},
 CellLabel->"In[22]:=",ExpressionUUID->"23092241-d3b2-4ec7-ad1c-c4d9d5bd6917"],

Cell[BoxData[
 FractionBox["95", "634"]], "Output",
 CellChangeTimes->{{3.783770619030096*^9, 3.783770659302869*^9}, 
   3.7838308520792847`*^9, 3.783830960007625*^9, 3.783925150103561*^9, {
   3.783925222089075*^9, 3.7839252344179068`*^9}, 3.783925325628133*^9},
 CellLabel->"Out[22]=",ExpressionUUID->"a4c9a5c4-c63e-487c-94f1-4c46021ffa19"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["6859", "21802"]}]], "Output",
 CellChangeTimes->{{3.783770619030096*^9, 3.783770659302869*^9}, 
   3.7838308520792847`*^9, 3.783830960007625*^9, 3.783925150103561*^9, {
   3.783925222089075*^9, 3.7839252344179068`*^9}, 3.783925325630025*^9},
 CellLabel->"Out[23]=",ExpressionUUID->"58cd7842-3572-4b54-8bc8-18c811797324"],

Cell[BoxData[
 FractionBox["1604949", "3455617"]], "Output",
 CellChangeTimes->{{3.783770619030096*^9, 3.783770659302869*^9}, 
   3.7838308520792847`*^9, 3.783830960007625*^9, 3.783925150103561*^9, {
   3.783925222089075*^9, 3.7839252344179068`*^9}, 3.783925325631741*^9},
 CellLabel->"Out[24]=",ExpressionUUID->"22ca1d8b-d2ad-47e2-a603-3719cf63c29c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Now", " ", "calculating", " ", "the", " ", "centres", " ", "and", " ", 
    "radii", " ", "of", " ", "our", " ", "new", " ", 
    RowBox[{"disks", ".", " ", "First"}], " ", "D1"}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]1", "]"}], "[", "w", "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]1", "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]1", "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c1", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r1", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783768546940439*^9, 3.78376856094804*^9}, {
  3.7837707567712307`*^9, 3.78377077860292*^9}, {3.783925240452532*^9, 
  3.783925246531293*^9}},
 CellLabel->"In[25]:=",ExpressionUUID->"ae599ea2-478e-4495-afe5-aba17d183fb2"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["9", "10"]}]], "Output",
 CellChangeTimes->{3.783768561731359*^9, 3.783770748145838*^9, 
  3.783770779619093*^9, 3.7838309788276577`*^9, 3.783831043996789*^9, 
  3.7839252474408627`*^9, 3.7839253270127*^9},
 CellLabel->"Out[28]=",ExpressionUUID->"37de11a0-81fa-4928-b584-cd3ed776cd2e"],

Cell[BoxData[
 FractionBox["1", "1110"]], "Output",
 CellChangeTimes->{3.783768561731359*^9, 3.783770748145838*^9, 
  3.783770779619093*^9, 3.7838309788276577`*^9, 3.783831043996789*^9, 
  3.7839252474408627`*^9, 3.7839253270148573`*^9},
 CellLabel->"Out[29]=",ExpressionUUID->"13f2283d-bf68-4eca-a969-f7e5ef6476eb"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D2", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]2", "]"}], "[", "w", "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]2", "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]2", "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c2", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r2", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783768691444551*^9, 3.7837687028600903`*^9}, {
  3.7839252543651133`*^9, 3.783925258019721*^9}},
 CellLabel->"In[30]:=",ExpressionUUID->"ee7c725a-4035-45b5-9f38-17d10b74b504"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{3.783768703455368*^9, 3.783770749224701*^9, 
  3.78377078127355*^9, 3.783925259559946*^9, 3.783925328615406*^9},
 CellLabel->"Out[33]=",ExpressionUUID->"d9b2847d-d971-494c-87f4-8c2b2c6e5a72"],

Cell[BoxData[
 FractionBox["95", "111"]], "Output",
 CellChangeTimes->{3.783768703455368*^9, 3.783770749224701*^9, 
  3.78377078127355*^9, 3.783925259559946*^9, 3.7839253286176147`*^9},
 CellLabel->"Out[34]=",ExpressionUUID->"74a942cc-e7eb-47fb-8057-57bf8f1627a3"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D3", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]3", "]"}], "[", "w", "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]3", "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", "\[Phi]3", "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c3", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r3", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7837687663334084`*^9, 3.783768775405507*^9}, {
  3.783925264661303*^9, 3.783925270932447*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"460072e3-8b03-491e-ab94-372262837748"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["1250", "9821"]}]], "Output",
 CellChangeTimes->{
  3.783768776003684*^9, 3.783770751314259*^9, 3.783770782495727*^9, {
   3.783925267301001*^9, 3.7839252712903557`*^9}, 3.783925329771099*^9},
 CellLabel->"Out[38]=",ExpressionUUID->"b08da88d-4ffa-4417-8b3f-786f743487ef"],

Cell[BoxData[
 FractionBox["2775", "9821"]], "Output",
 CellChangeTimes->{
  3.783768776003684*^9, 3.783770751314259*^9, 3.783770782495727*^9, {
   3.783925267301001*^9, 3.7839252712903557`*^9}, 3.7839253297730637`*^9},
 CellLabel->"Out[39]=",ExpressionUUID->"05f7aed1-de2d-4ece-a098-5b119c87f78a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D33", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]3"}], "]"}], "[", "w", "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]3"}], "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]3"}], "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c33", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r33", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783765954835867*^9, 3.783766009905265*^9}, {
  3.783925285238702*^9, 3.783925299674404*^9}},
 CellLabel->"In[40]:=",ExpressionUUID->"8b774917-eb48-4528-bdbc-9cd0229cc012"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["625", "77318"]}], "-", 
  FractionBox[
   RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}]], "Output",
 CellChangeTimes->{{3.783765989263714*^9, 3.783766013086681*^9}, 
   3.7837707833031607`*^9, 3.7839253310721693`*^9},
 CellLabel->"Out[43]=",ExpressionUUID->"ea21e80b-b5a8-4756-84e3-f765886c39f0"],

Cell[BoxData[
 FractionBox["2775", "38659"]], "Output",
 CellChangeTimes->{{3.783765989263714*^9, 3.783766013086681*^9}, 
   3.7837707833031607`*^9, 3.7839253310745993`*^9},
 CellLabel->"Out[44]=",ExpressionUUID->"980475fe-8a35-4884-90b4-d8baca23d2e5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D31", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]1"}], "]"}], "[", "w", "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]1"}], "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]1"}], "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c31", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r31", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7837660182540407`*^9, 3.783766028981579*^9}, {
  3.7839252868554*^9, 3.7839252880364237`*^9}},
 CellLabel->"In[45]:=",ExpressionUUID->"f36937c6-74ae-4b85-918e-ca943084b738"],

Cell[BoxData[
 RowBox[{
  FractionBox["2495", "29632"], "-", 
  FractionBox[
   RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}]], "Output",
 CellChangeTimes->{3.783766029600305*^9, 3.78377078408318*^9, 
  3.783925332363439*^9},
 CellLabel->"Out[48]=",ExpressionUUID->"54f3d2f5-57cc-457e-96fe-1843242cb560"],

Cell[BoxData[
 FractionBox["111", "592640"]], "Output",
 CellChangeTimes->{3.783766029600305*^9, 3.78377078408318*^9, 
  3.7839253323654127`*^9},
 CellLabel->"Out[49]=",ExpressionUUID->"65022d4a-d108-4965-b9a2-84579071a147"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D321", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]1"}], "]"}], "[", "w", 
      "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]1"}], "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]1"}], "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c321", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r321", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7837661608096037`*^9, 3.783766176248481*^9}, {
  3.78392528865331*^9, 3.783925289676371*^9}},
 CellLabel->"In[50]:=",ExpressionUUID->"047a849a-12a8-4ab7-9e41-1cd4b6275a37"],

Cell[BoxData[
 FractionBox["1503793", "10042877"]], "Output",
 CellChangeTimes->{3.783766176857342*^9, 3.783770784847847*^9, 
  3.783925333596635*^9},
 CellLabel->"Out[53]=",ExpressionUUID->"59294729-1b08-4e04-9bc0-2e1f68d4c5c7"],

Cell[BoxData[
 FractionBox["2109", "20085754"]], "Output",
 CellChangeTimes->{3.783766176857342*^9, 3.783770784847847*^9, 
  3.783925333598283*^9},
 CellLabel->"Out[54]=",ExpressionUUID->"6d6b6523-8579-48a2-a7d7-da46ed7bcf9a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D323", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]3"}], "]"}], "[", "w", 
      "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]3"}], "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]3"}], "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c323", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r323", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783766471740479*^9, 3.7837664823395357`*^9}, 
   3.783766609972601*^9, {3.7839252903112907`*^9, 3.783925291222403*^9}},
 CellLabel->"In[55]:=",ExpressionUUID->"1f50833b-7939-4b90-b276-a0bfdc6a4f25"],

Cell[BoxData[
 FractionBox["28975", "1391038"]], "Output",
 CellChangeTimes->{3.78376648296776*^9, 3.7837707855995693`*^9, 
  3.783925334665394*^9},
 CellLabel->"Out[58]=",ExpressionUUID->"409111d2-3d4d-438e-9e14-ae719b85c6bf"],

Cell[BoxData[
 FractionBox["42180", "695519"]], "Output",
 CellChangeTimes->{3.78376648296776*^9, 3.7837707855995693`*^9, 
  3.7839253346679373`*^9},
 CellLabel->"Out[59]=",ExpressionUUID->"0f501d38-d71d-4c6b-85f0-b3f3b49a2e05"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D3221", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]1"}], 
       "]"}], "[", "w", "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]1"}], 
       "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]1"}], 
       "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c3221", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r3221", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7837666140366793`*^9, 3.7837666423921423`*^9}, {
  3.783925291817401*^9, 3.783925292744463*^9}},
 CellLabel->"In[60]:=",ExpressionUUID->"c4e65cee-8530-408f-aa35-9231815449b5"],

Cell[BoxData[
 RowBox[{
  FractionBox["65030179", "918604358"], "+", 
  FractionBox[
   RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}]], "Output",
 CellChangeTimes->{3.7837666429732523`*^9, 3.783770786530693*^9, 
  3.783925335547825*^9},
 CellLabel->"Out[63]=",ExpressionUUID->"bd8c3209-0e40-482f-89ee-cdc2de100aa9"],

Cell[BoxData[
 FractionBox["80142", "459302179"]], "Output",
 CellChangeTimes->{3.7837666429732523`*^9, 3.783770786530693*^9, 
  3.783925335549439*^9},
 CellLabel->"Out[64]=",ExpressionUUID->"4e2bf688-d9d1-4bdd-b170-1f1d6a352e7c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D3223", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]3"}], 
       "]"}], "[", "w", "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]3"}], 
       "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{"\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]3"}], 
       "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c3223", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r3223", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783766650719121*^9, 3.783766660744588*^9}, {
  3.783925293395426*^9, 3.783925294258588*^9}},
 CellLabel->"In[65]:=",ExpressionUUID->"77a9c042-f2f1-4a1d-b575-4d4127aab77d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox["130321", "19852766"]}], "+", 
  FractionBox[
   RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}]], "Output",
 CellChangeTimes->{3.783766661335697*^9, 3.7837707872682247`*^9, 
  3.783925336411848*^9},
 CellLabel->"Out[68]=",ExpressionUUID->"6676c10a-c0de-4c6d-bac6-425c74cc0b60"],

Cell[BoxData[
 FractionBox["641136", "9926383"]], "Output",
 CellChangeTimes->{3.783766661335697*^9, 3.7837707872682247`*^9, 
  3.78392533641368*^9},
 CellLabel->"Out[69]=",ExpressionUUID->"747fde73-7927-47e5-982f-d3c245e2e8a5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D32221", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]1"}], "]"}], "[", "w", "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]1"}], "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]1"}], "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c32221", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r32221", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783766676625327*^9, 3.783766691978191*^9}, {
  3.783925294941155*^9, 3.7839252958204412`*^9}},
 CellLabel->"In[70]:=",ExpressionUUID->"33f47b6d-9b68-4d27-bdd6-90900a2b44ea"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["37371117461", "118981340918"]}]], "Output",
 CellChangeTimes->{3.783766692705099*^9, 3.783770788018139*^9, 
  3.783925337241776*^9},
 CellLabel->"Out[73]=",ExpressionUUID->"f3a62c8a-a70a-46ce-8c4d-04492d4265c9"],

Cell[BoxData[
 FractionBox["30453960", "59490670459"]], "Output",
 CellChangeTimes->{3.783766692705099*^9, 3.783770788018139*^9, 
  3.783925337244246*^9},
 CellLabel->"Out[74]=",ExpressionUUID->"3a0d66ef-b221-443f-8575-b769fcd9e046"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D32222", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]2"}], "]"}], "[", "w", "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]2"}], "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]2"}], "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c32222", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r32222", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7837666986984377`*^9, 3.7837667072817717`*^9}, {
  3.7839252964317093`*^9, 3.7839252972465487`*^9}},
 CellLabel->"In[75]:=",ExpressionUUID->"a1ce69b0-a5b3-4524-b0de-36c13b3458b3"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["16983563041", "218366953918"]}]], "Output",
 CellChangeTimes->{3.7837667078457327`*^9, 3.7837707887208757`*^9, 
  3.783925338084303*^9},
 CellLabel->"Out[78]=",ExpressionUUID->"516e7421-66a5-4650-a802-25b9bd458766"],

Cell[BoxData[
 FractionBox["23145009600", "109183476959"]], "Output",
 CellChangeTimes->{3.7837667078457327`*^9, 3.7837707887208757`*^9, 
  3.78392533808593*^9},
 CellLabel->"Out[79]=",ExpressionUUID->"1b851c2b-c469-4ecb-90ea-d0959cd7afee"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "D32223", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"temp1", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]3"}], "]"}], "[", "w", "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp2", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]3"}], "]"}], "[", 
      RowBox[{"w", " ", "I"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"temp3", "=", 
     RowBox[{
      RowBox[{"Composition", "[", 
       RowBox[{
       "\[Phi]3", ",", "\[Phi]2", ",", "\[Phi]2", ",", "\[Phi]2", ",", 
        "\[Phi]3"}], "]"}], "[", 
      RowBox[{"-", "w"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"c32223", "=", 
    RowBox[{
     RowBox[{"a", "+", 
      RowBox[{"b", " ", "I"}]}], "/.", 
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp1"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp1", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp2"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp2", "]"}]}], ")"}]}], "==", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"a", "+", 
           RowBox[{"b", " ", "I"}], "-", "temp3"}], ")"}], 
         RowBox[{"(", 
          RowBox[{"a", "-", 
           RowBox[{"b", " ", "I"}], "-", 
           RowBox[{"Conjugate", "[", "temp3", "]"}]}], ")"}]}]}], "]"}], "[", 
      
      RowBox[{"[", "1", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
   RowBox[{"r32223", "=", 
    RowBox[{"Abs", "[", 
     RowBox[{"%", "-", "temp1"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.783766714643053*^9, 3.783766723186338*^9}, {
  3.783925297849779*^9, 3.783925298584543*^9}},
 CellLabel->"In[80]:=",ExpressionUUID->"88e82eca-2927-4fdf-b97c-e308c5df5721"],

Cell[BoxData[
 RowBox[{"-", 
  FractionBox["88844627", "2357773146"]}]], "Output",
 CellChangeTimes->{3.783766723790365*^9, 3.7837707895311403`*^9, 
  3.783925338939423*^9},
 CellLabel->"Out[83]=",ExpressionUUID->"a9471067-6550-49a6-b089-095813216f7e"],

Cell[BoxData[
 FractionBox["81210560", "1178886573"]], "Output",
 CellChangeTimes->{3.783766723790365*^9, 3.7837707895311403`*^9, 
  3.783925338941074*^9},
 CellLabel->"Out[84]=",ExpressionUUID->"3bb59811-cc14-4a25-9d1c-eeacc8d73914"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
    "Create", " ", "all", " ", "possible", " ", "pairs", " ", "between", " ", 
     "them", " ", "and", " ", "then", " ", "caluclate"}], " ", "|", 
    RowBox[{"c1", "-", "c2"}], "|", 
    RowBox[{
     RowBox[{"+", "r1"}], "+", 
     RowBox[{"r2", " ", "and", " ", "find", " ", "the", " ", "maximal", " ", 
      RowBox[{"value", ".", " ", "These"}], " ", "are", " ", "all", " ", 
      "convex", " ", "combinations"}]}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"tups", "=", 
   RowBox[{"Tuples", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"c31", ",", "r31"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c33", ",", "r33"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c321", ",", "r321"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c323", ",", "r323"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c3221", ",", "r3221"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c3223", ",", "r3223"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c32221", ",", "r32221"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c32222", ",", "r32222"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c32223", ",", "r32223"}], "}"}]}], "}"}], ",", "2"}], 
    "]"}]}]}]], "Input",
 CellChangeTimes->{{3.783766735051309*^9, 3.783766740858873*^9}, {
  3.783767039094516*^9, 3.783767082657402*^9}},
 CellLabel->"In[85]:=",ExpressionUUID->"90574995-eeaf-4314-b22e-3778602442fa"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["2495", "29632"], "-", 
        FractionBox[
         RowBox[{"110889", " ", "\[ImaginaryI]"}], "592640"]}], ",", 
       FractionBox["111", "592640"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["625", "77318"]}], "-", 
        FractionBox[
         RowBox[{"1250", " ", "\[ImaginaryI]"}], "38659"]}], ",", 
       FractionBox["2775", "38659"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1503793", "10042877"], ",", 
       FractionBox["2109", "20085754"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["28975", "1391038"], ",", 
       FractionBox["42180", "695519"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        FractionBox["65030179", "918604358"], "+", 
        FractionBox[
         RowBox[{"80061858", " ", "\[ImaginaryI]"}], "459302179"]}], ",", 
       FractionBox["80142", "459302179"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         FractionBox["130321", "19852766"]}], "+", 
        FractionBox[
         RowBox[{"288800", " ", "\[ImaginaryI]"}], "9926383"]}], ",", 
       FractionBox["641136", "9926383"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["37371117461", "118981340918"]}], ",", 
       FractionBox["30453960", "59490670459"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["16983563041", "218366953918"]}], ",", 
       FractionBox["23145009600", "109183476959"]}], "}"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["88844627", "2357773146"]}], ",", 
       FractionBox["81210560", "1178886573"]}], "}"}]}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{3.7837670868243628`*^9, 3.7837707903497334`*^9, 
  3.7839253397642384`*^9},
 CellLabel->"Out[85]=",ExpressionUUID->"1bc9cbf6-3901-4034-bc7f-126b8bc76cf1"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"differences", "[", "x_", "]"}], ":=", 
  RowBox[{
   RowBox[{"Abs", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"x", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}], "-", 
     RowBox[{
      RowBox[{"x", "[", 
       RowBox[{"[", "2", "]"}], "]"}], "[", 
      RowBox[{"[", "1", "]"}], "]"}]}], "]"}], "+", 
   RowBox[{
    RowBox[{"x", "[", 
     RowBox[{"[", "1", "]"}], "]"}], "[", 
    RowBox[{"[", "2", "]"}], "]"}], "+", 
   RowBox[{
    RowBox[{"x", "[", 
     RowBox[{"[", "2", "]"}], "]"}], "[", 
    RowBox[{"[", "2", "]"}], "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{"differences", "/@", "tups"}], "\[IndentingNewLine]", 
 RowBox[{"Max", "[", "%", "]"}]}], "Input",
 CellChangeTimes->{{3.7837671072006397`*^9, 3.783767114223597*^9}},
 CellLabel->"In[86]:=",ExpressionUUID->"2ae7b49c-fad3-4beb-9f06-81a6590e0a0e"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox["111", "296320"], ",", 
   RowBox[{
    FractionBox["1648867149", "22910869760"], "+", 
    FractionBox[
     SqrtBox["17044723538151548201"], "22910869760"]}], ",", 
   RowBox[{
    FractionBox["1739698227", "5951810625280"], "+", 
    FractionBox[
     RowBox[{"36963", " ", 
      SqrtBox["1019098948577761"]}], "5951810625280"]}], ",", 
   RowBox[{
    FractionBox["25074757809", "412192380160"], "+", 
    FractionBox[
     SqrtBox["6630610194717684854881"], "412192380160"]}], ",", 
   RowBox[{
    FractionBox["98477896749", "272200843362560"], "+", 
    FractionBox[
     RowBox[{"28128843", " ", 
      SqrtBox["12249037934449"]}], "272200843362560"]}], ",", 
   RowBox[{
    FractionBox["381064667553", "5882771621120"], "+", 
    FractionBox[
     SqrtBox["1902776947787562876597569"], "5882771621120"]}], ",", 
   RowBox[{
    FractionBox["24651699275349", "35256550940821760"], "+", 
    FractionBox[
     RowBox[{"110889", " ", 
      SqrtBox["19575484223414917687081"]}], "35256550940821760"]}], ",", 
   RowBox[{
    FractionBox["13728777855286449", "64706495784981760"], "+", 
    FractionBox[
     RowBox[{"36963", " ", 
      SqrtBox["187689369472216033552729"]}], "64706495784981760"]}], ",", 
   RowBox[{
    FractionBox["48259482688003", "698655338622720"], "+", 
    FractionBox[
     SqrtBox["24340183207080694961017715209"], "698655338622720"]}], ",", 
   RowBox[{
    FractionBox["1648867149", "22910869760"], "+", 
    FractionBox[
     SqrtBox["17044723538151548201"], "22910869760"]}], ",", 
   FractionBox["5550", "38659"], ",", 
   RowBox[{
    FractionBox["55819499181", "776495163886"], "+", 
    FractionBox[
     SqrtBox["15648154328629426209401"], "776495163886"]}], ",", 
   RowBox[{
    FractionBox["3560701845", "26888069021"], "+", 
    FractionBox[
     RowBox[{"50", " ", 
      SqrtBox["544095629937346"]}], "26888069021"]}], ",", 
   RowBox[{
    FractionBox["1277661756303", "17756162937961"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["3856201892985945378105077"]}], "17756162937961"]}], ",", 
   RowBox[{
    FractionBox["52331389449", "383744040397"], "+", 
    FractionBox[
     RowBox[{"1522", " ", 
      SqrtBox["240024073154986"]}], "383744040397"]}], ",", 
   RowBox[{
    FractionBox["166263930163365", "2299849829274481"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["125207000777260305389965329986"]}], "2299849829274481"]}], ",", 
   RowBox[{
    FractionBox["1197747074687625", "4220924035757981"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["26289759656165255777061077546"]}], "4220924035757981"]}], ",", 
   
   RowBox[{
    FractionBox["6410929279115", "45574576025607"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["997776695647025016857914"]}], "45574576025607"]}], ",", 
   RowBox[{
    FractionBox["1739698227", "5951810625280"], "+", 
    FractionBox[
     RowBox[{"36963", " ", 
      SqrtBox["1019098948577761"]}], "5951810625280"]}], ",", 
   RowBox[{
    FractionBox["55819499181", "776495163886"], "+", 
    FractionBox[
     SqrtBox["15648154328629426209401"], "776495163886"]}], ",", 
   FractionBox["2109", "10042877"], ",", 
   FractionBox["71725", "378181"], ",", 
   RowBox[{
    FractionBox["2578380792579", "9225430579057966"], "+", 
    FractionBox[
     RowBox[{"702297", " ", 
      SqrtBox["6318498228448629505"]}], "9225430579057966"]}], ",", 
   RowBox[{
    FractionBox["12898634718291", "199378887047782"], "+", 
    FractionBox[
     RowBox[{"95", " ", 
      SqrtBox["111334839765789105064121"]}], "199378887047782"]}], ",", 
   FractionBox["1604949", "3455617"], ",", 
   FractionBox["31337631", "71286643"], ",", 
   FractionBox["2615749", "10201377"], ",", 
   RowBox[{
    FractionBox["25074757809", "412192380160"], "+", 
    FractionBox[
     SqrtBox["6630610194717684854881"], "412192380160"]}], ",", 
   RowBox[{
    FractionBox["3560701845", "26888069021"], "+", 
    FractionBox[
     RowBox[{"50", " ", 
      SqrtBox["544095629937346"]}], "26888069021"]}], ",", 
   FractionBox["71725", "378181"], ",", 
   FractionBox["84360", "695519"], ",", 
   RowBox[{
    FractionBox["19429106193918", "319453392235901"], "+", 
    FractionBox[
     RowBox[{"38", " ", 
      SqrtBox["2323762485391717936019017"]}], "319453392235901"]}], ",", 
   RowBox[{
    FractionBox["864617104524", "6903987977777"], "+", 
    FractionBox[
     RowBox[{"152", " ", 
      SqrtBox["3294530063010689761"]}], "6903987977777"]}], ",", 
   FractionBox["228836", "577753"], ",", 
   FractionBox["918308", "2473669"], ",", 
   FractionBox["3527996", "18761523"], ",", 
   RowBox[{
    FractionBox["98477896749", "272200843362560"], "+", 
    FractionBox[
     RowBox[{"28128843", " ", 
      SqrtBox["12249037934449"]}], "272200843362560"]}], ",", 
   RowBox[{
    FractionBox["1277661756303", "17756162937961"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["3856201892985945378105077"]}], "17756162937961"]}], ",", 
   RowBox[{
    FractionBox["2578380792579", "9225430579057966"], "+", 
    FractionBox[
     RowBox[{"702297", " ", 
      SqrtBox["6318498228448629505"]}], "9225430579057966"]}], ",", 
   RowBox[{
    FractionBox["19429106193918", "319453392235901"], "+", 
    FractionBox[
     RowBox[{"38", " ", 
      SqrtBox["2323762485391717936019017"]}], "319453392235901"]}], ",", 
   FractionBox["160284", "459302179"], ",", 
   RowBox[{
    FractionBox["295270682021730", "4559209341488557"], "+", 
    FractionBox[
     RowBox[{"12274", " ", 
      SqrtBox["3735351117707834585585"]}], "4559209341488557"]}], ",", 
   RowBox[{
    FractionBox["18755271499104018", "27324194571989630161"], "+", 
    FractionBox[
     RowBox[{"26687286", " ", 
      SqrtBox["187143527732161025599729"]}], "27324194571989630161"]}], ",", 
   RowBox[{
    FractionBox["10639303524466366578", "50148208878064993661"], "+", 
    FractionBox[
     RowBox[{"26687286", " ", 
      SqrtBox["185227572314803970989129"]}], "50148208878064993661"]}], ",", 
   RowBox[{
    FractionBox["37394665493543606", "541465171772742567"], "+", 
    FractionBox[
     RowBox[{"722", " ", 
      SqrtBox["23707030574980734706683439609"]}], "541465171772742567"]}], 
   ",", 
   RowBox[{
    FractionBox["381064667553", "5882771621120"], "+", 
    FractionBox[
     SqrtBox["1902776947787562876597569"], "5882771621120"]}], ",", 
   RowBox[{
    FractionBox["52331389449", "383744040397"], "+", 
    FractionBox[
     RowBox[{"1522", " ", 
      SqrtBox["240024073154986"]}], "383744040397"]}], ",", 
   RowBox[{
    FractionBox["12898634718291", "199378887047782"], "+", 
    FractionBox[
     RowBox[{"95", " ", 
      SqrtBox["111334839765789105064121"]}], "199378887047782"]}], ",", 
   RowBox[{
    FractionBox["864617104524", "6903987977777"], "+", 
    FractionBox[
     RowBox[{"152", " ", 
      SqrtBox["3294530063010689761"]}], "6903987977777"]}], ",", 
   RowBox[{
    FractionBox["295270682021730", "4559209341488557"], "+", 
    FractionBox[
     RowBox[{"12274", " ", 
      SqrtBox["3735351117707834585585"]}], "4559209341488557"]}], ",", 
   FractionBox["1282272", "9926383"], ",", 
   RowBox[{
    FractionBox["38443908166228104", "590527179902819797"], "+", 
    FractionBox[
     RowBox[{"2888", " ", 
      SqrtBox["3989552768688759603950176001"]}], "590527179902819797"]}], ",", 
   RowBox[{
    FractionBox["299747687511862224", "1083797009566709297"], "+", 
    FractionBox[
     RowBox[{"11552", " ", 
      SqrtBox["52085612033719432699138481"]}], "1083797009566709297"]}], ",", 
   
   RowBox[{
    FractionBox["1561953744071408", "11702079637155459"], "+", 
    FractionBox[
     RowBox[{"11552", " ", 
      SqrtBox["1862211745976354161129"]}], "11702079637155459"]}], ",", 
   RowBox[{
    FractionBox["24651699275349", "35256550940821760"], "+", 
    FractionBox[
     RowBox[{"110889", " ", 
      SqrtBox["19575484223414917687081"]}], "35256550940821760"]}], ",", 
   RowBox[{
    FractionBox["166263930163365", "2299849829274481"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["125207000777260305389965329986"]}], "2299849829274481"]}], ",", 
   FractionBox["1604949", "3455617"], ",", 
   FractionBox["228836", "577753"], ",", 
   RowBox[{
    FractionBox["18755271499104018", "27324194571989630161"], "+", 
    FractionBox[
     RowBox[{"26687286", " ", 
      SqrtBox["187143527732161025599729"]}], "27324194571989630161"]}], ",", 
   RowBox[{
    FractionBox["38443908166228104", "590527179902819797"], "+", 
    FractionBox[
     RowBox[{"2888", " ", 
      SqrtBox["3989552768688759603950176001"]}], "590527179902819797"]}], ",", 
   FractionBox["60907920", "59490670459"], ",", 
   FractionBox["2375408880", "5292664421"], ",", 
   FractionBox["414283600", "1198008999"], ",", 
   RowBox[{
    FractionBox["13728777855286449", "64706495784981760"], "+", 
    FractionBox[
     RowBox[{"36963", " ", 
      SqrtBox["187689369472216033552729"]}], "64706495784981760"]}], ",", 
   RowBox[{
    FractionBox["1197747074687625", "4220924035757981"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["26289759656165255777061077546"]}], "4220924035757981"]}], ",", 
   
   FractionBox["31337631", "71286643"], ",", 
   FractionBox["918308", "2473669"], ",", 
   RowBox[{
    FractionBox["10639303524466366578", "50148208878064993661"], "+", 
    FractionBox[
     RowBox[{"26687286", " ", 
      SqrtBox["185227572314803970989129"]}], "50148208878064993661"]}], ",", 
   RowBox[{
    FractionBox["299747687511862224", "1083797009566709297"], "+", 
    FractionBox[
     RowBox[{"11552", " ", 
      SqrtBox["52085612033719432699138481"]}], "1083797009566709297"]}], ",", 
   
   FractionBox["2375408880", "5292664421"], ",", 
   FractionBox["46290019200", "109183476959"], ",", 
   FractionBox["7932296320", "24713977221"], ",", 
   RowBox[{
    FractionBox["48259482688003", "698655338622720"], "+", 
    FractionBox[
     SqrtBox["24340183207080694961017715209"], "698655338622720"]}], ",", 
   RowBox[{
    FractionBox["6410929279115", "45574576025607"], "+", 
    FractionBox[
     RowBox[{"2", " ", 
      SqrtBox["997776695647025016857914"]}], "45574576025607"]}], ",", 
   FractionBox["2615749", "10201377"], ",", 
   FractionBox["3527996", "18761523"], ",", 
   RowBox[{
    FractionBox["37394665493543606", "541465171772742567"], "+", 
    FractionBox[
     RowBox[{"722", " ", 
      SqrtBox["23707030574980734706683439609"]}], "541465171772742567"]}], 
   ",", 
   RowBox[{
    FractionBox["1561953744071408", "11702079637155459"], "+", 
    FractionBox[
     RowBox[{"11552", " ", 
      SqrtBox["1862211745976354161129"]}], "11702079637155459"]}], ",", 
   FractionBox["414283600", "1198008999"], ",", 
   FractionBox["7932296320", "24713977221"], ",", 
   FractionBox["162421120", "1178886573"]}], "}"}]], "Output",
 CellChangeTimes->{3.7837671148586493`*^9, 3.783770816867167*^9, 
  3.7839253436274347`*^9},
 CellLabel->"Out[87]=",ExpressionUUID->"7f84e007-2aeb-41e8-a3c4-722f1046f6b9"],

Cell[BoxData[
 FractionBox["1604949", "3455617"]], "Output",
 CellChangeTimes->{3.7837671148586493`*^9, 3.783770816867167*^9, 
  3.783925343637134*^9},
 CellLabel->"Out[88]=",ExpressionUUID->"7995d7f4-b107-4248-b55e-5aa50b1e8de5"]
}, Open  ]]
},
WindowSize->{808, 601},
WindowMargins->{{-1263, Automatic}, {Automatic, -814}},
FrontEndVersion->"12.0 for Mac OS X x86 (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 1611, 44, 199, "Input",ExpressionUUID->"d0fed866-d4fe-49f0-9a31-20ebb5f0cf4a"],
Cell[3124, 81, 318, 5, 34, "Output",ExpressionUUID->"28872b8e-d1cf-4509-9301-3e84b14b4af7"],
Cell[3445, 88, 343, 6, 51, "Output",ExpressionUUID->"3c5f5089-b09d-4a11-87e0-275b9c63dbf4"],
Cell[3791, 96, 360, 7, 50, "Output",ExpressionUUID->"b0a9ebce-a6f9-4c60-a63d-9eabfafc595a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4188, 108, 2185, 61, 220, "Input",ExpressionUUID->"50cb4e1b-2067-4871-8da4-43f125ea11c0"],
Cell[6376, 171, 306, 6, 51, "Output",ExpressionUUID->"1f72729f-bc64-4bd9-a849-1e0d5e9eb11f"],
Cell[6685, 179, 295, 5, 51, "Output",ExpressionUUID->"309574aa-7e23-465c-ba2d-ee4a9dda60b1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7017, 189, 2076, 58, 220, "Input",ExpressionUUID->"4c6538d5-afa1-4b01-bd70-8125cc67c87f"],
Cell[9096, 249, 271, 4, 34, "Output",ExpressionUUID->"9e5f5290-6555-4fe7-b044-e9357fb4bfba"],
Cell[9370, 255, 299, 5, 51, "Output",ExpressionUUID->"b3304f50-61ea-4fec-969f-d45b52745b35"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9706, 265, 2074, 58, 220, "Input",ExpressionUUID->"5ab37413-d160-491b-8d08-3fe6f60bfaf8"],
Cell[11783, 325, 341, 6, 51, "Output",ExpressionUUID->"b2fc2fb4-868c-4392-b66e-1abec84396df"],
Cell[12127, 333, 321, 5, 51, "Output",ExpressionUUID->"1e3a5b24-1704-4dfc-a1ab-de90275d393a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12485, 343, 887, 22, 94, "Input",ExpressionUUID->"23092241-d3b2-4ec7-ad1c-c4d9d5bd6917"],
Cell[13375, 367, 342, 5, 51, "Output",ExpressionUUID->"a4c9a5c4-c63e-487c-94f1-4c46021ffa19"],
Cell[13720, 374, 364, 6, 51, "Output",ExpressionUUID->"58cd7842-3572-4b54-8bc8-18c811797324"],
Cell[14087, 382, 351, 5, 51, "Output",ExpressionUUID->"22ca1d8b-d2ad-47e2-a603-3719cf63c29c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14475, 392, 2271, 63, 220, "Input",ExpressionUUID->"ae599ea2-478e-4495-afe5-aba17d183fb2"],
Cell[16749, 457, 328, 6, 51, "Output",ExpressionUUID->"37de11a0-81fa-4928-b584-cd3ed776cd2e"],
Cell[17080, 465, 316, 5, 51, "Output",ExpressionUUID->"13f2283d-bf68-4eca-a969-f7e5ef6476eb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17433, 475, 2031, 57, 220, "Input",ExpressionUUID->"ee7c725a-4035-45b5-9f38-17d10b74b504"],
Cell[19467, 534, 239, 3, 34, "Output",ExpressionUUID->"d9b2847d-d971-494c-87f4-8c2b2c6e5a72"],
Cell[19709, 539, 264, 4, 50, "Output",ExpressionUUID->"74a942cc-e7eb-47fb-8057-57bf8f1627a3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20010, 548, 2029, 57, 220, "Input",ExpressionUUID->"460072e3-8b03-491e-ab94-372262837748"],
Cell[22042, 607, 314, 6, 51, "Output",ExpressionUUID->"b08da88d-4ffa-4417-8b3f-786f743487ef"],
Cell[22359, 615, 298, 5, 51, "Output",ExpressionUUID->"05f7aed1-de2d-4ece-a098-5b119c87f78a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[22694, 625, 2132, 60, 220, "Input",ExpressionUUID->"8b774917-eb48-4528-bdbc-9cd0229cc012"],
Cell[24829, 687, 357, 8, 51, "Output",ExpressionUUID->"ea21e80b-b5a8-4756-84e3-f765886c39f0"],
Cell[25189, 697, 252, 4, 51, "Output",ExpressionUUID->"980475fe-8a35-4884-90b4-d8baca23d2e5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25478, 706, 2134, 60, 220, "Input",ExpressionUUID->"f36937c6-74ae-4b85-918e-ca943084b738"],
Cell[27615, 768, 312, 7, 51, "Output",ExpressionUUID->"54f3d2f5-57cc-457e-96fe-1843242cb560"],
Cell[27930, 777, 224, 4, 51, "Output",ExpressionUUID->"65022d4a-d108-4965-b9a2-84579071a147"]
}, Open  ]],
Cell[CellGroupData[{
Cell[28191, 786, 2187, 60, 220, "Input",ExpressionUUID->"047a849a-12a8-4ab7-9e41-1cd4b6275a37"],
Cell[30381, 848, 229, 4, 51, "Output",ExpressionUUID->"59294729-1b08-4e04-9bc0-2e1f68d4c5c7"],
Cell[30613, 854, 226, 4, 51, "Output",ExpressionUUID->"6d6b6523-8579-48a2-a7d7-da46ed7bcf9a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[30876, 863, 2213, 60, 220, "Input",ExpressionUUID->"1f50833b-7939-4b90-b276-a0bfdc6a4f25"],
Cell[33092, 925, 227, 4, 51, "Output",ExpressionUUID->"409111d2-3d4d-438e-9e14-ae719b85c6bf"],
Cell[33322, 931, 228, 4, 51, "Output",ExpressionUUID->"0f501d38-d71d-4c6b-85f0-b3f3b49a2e05"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33587, 940, 2258, 62, 220, "Input",ExpressionUUID->"c4e65cee-8530-408f-aa35-9231815449b5"],
Cell[35848, 1004, 328, 7, 51, "Output",ExpressionUUID->"bd8c3209-0e40-482f-89ee-cdc2de100aa9"],
Cell[36179, 1013, 230, 4, 51, "Output",ExpressionUUID->"4e2bf688-d9d1-4bdd-b170-1f1d6a352e7c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36446, 1022, 2254, 62, 220, "Input",ExpressionUUID->"77a9c042-f2f1-4a1d-b575-4d4127aab77d"],
Cell[38703, 1086, 340, 8, 51, "Output",ExpressionUUID->"6676c10a-c0de-4c6d-bac6-425c74cc0b60"],
Cell[39046, 1096, 228, 4, 51, "Output",ExpressionUUID->"747fde73-7927-47e5-982f-d3c245e2e8a5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[39311, 1105, 2334, 65, 220, "Input",ExpressionUUID->"33f47b6d-9b68-4d27-bdd6-90900a2b44ea"],
Cell[41648, 1172, 255, 5, 51, "Output",ExpressionUUID->"f3a62c8a-a70a-46ce-8c4d-04492d4265c9"],
Cell[41906, 1179, 233, 4, 51, "Output",ExpressionUUID->"3a0d66ef-b221-443f-8575-b769fcd9e046"]
}, Open  ]],
Cell[CellGroupData[{
Cell[42176, 1188, 2340, 65, 220, "Input",ExpressionUUID->"a1ce69b0-a5b3-4524-b0de-36c13b3458b3"],
Cell[44519, 1255, 259, 5, 51, "Output",ExpressionUUID->"516e7421-66a5-4650-a802-25b9bd458766"],
Cell[44781, 1262, 240, 4, 51, "Output",ExpressionUUID->"1b851c2b-c469-4ecb-90ea-d0959cd7afee"]
}, Open  ]],
Cell[CellGroupData[{
Cell[45058, 1271, 2332, 65, 220, "Input",ExpressionUUID->"88e82eca-2927-4fdf-b97c-e308c5df5721"],
Cell[47393, 1338, 252, 5, 51, "Output",ExpressionUUID->"a9471067-6550-49a6-b089-095813216f7e"],
Cell[47648, 1345, 234, 4, 51, "Output",ExpressionUUID->"3bb59811-cc14-4a25-9d1c-eeacc8d73914"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47919, 1354, 1524, 39, 94, "Input",ExpressionUUID->"90574995-eeaf-4314-b22e-3778602442fa"],
Cell[49446, 1395, 36203, 1122, 3171, "Output",ExpressionUUID->"1bc9cbf6-3901-4034-bc7f-126b8bc76cf1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[85686, 2522, 904, 25, 73, "Input",ExpressionUUID->"2ae7b49c-fad3-4beb-9f06-81a6590e0a0e"],
Cell[86593, 2549, 11050, 290, 2162, "Output",ExpressionUUID->"7f84e007-2aeb-41e8-a3c4-722f1046f6b9"],
Cell[97646, 2841, 230, 4, 51, "Output",ExpressionUUID->"7995d7f4-b107-4248-b55e-5aa50b1e8de5"]
}, Open  ]]
}
]
*)

(* NotebookSignature Vv0BM6DeiTPnkAKhcwcY6rln *)
