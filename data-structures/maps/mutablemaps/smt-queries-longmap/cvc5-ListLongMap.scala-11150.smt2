; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130294 () Bool)

(assert start!130294)

(declare-fun b!1529153 () Bool)

(declare-fun res!1047007 () Bool)

(declare-fun e!852217 () Bool)

(assert (=> b!1529153 (=> (not res!1047007) (not e!852217))))

(declare-datatypes ((array!101571 0))(
  ( (array!101572 (arr!49006 (Array (_ BitVec 32) (_ BitVec 64))) (size!49557 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101571)

(declare-datatypes ((List!35669 0))(
  ( (Nil!35666) (Cons!35665 (h!37102 (_ BitVec 64)) (t!50370 List!35669)) )
))
(declare-fun arrayNoDuplicates!0 (array!101571 (_ BitVec 32) List!35669) Bool)

(assert (=> b!1529153 (= res!1047007 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35666))))

(declare-fun b!1529154 () Bool)

(declare-fun res!1046998 () Bool)

(assert (=> b!1529154 (=> (not res!1046998) (not e!852217))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529154 (= res!1046998 (validKeyInArray!0 (select (arr!49006 a!2804) j!70)))))

(declare-fun b!1529155 () Bool)

(declare-fun res!1047001 () Bool)

(assert (=> b!1529155 (=> (not res!1047001) (not e!852217))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529155 (= res!1047001 (validKeyInArray!0 (select (arr!49006 a!2804) i!961)))))

(declare-fun b!1529157 () Bool)

(declare-fun e!852218 () Bool)

(assert (=> b!1529157 (= e!852218 true)))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!662303 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529157 (= lt!662303 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun e!852220 () Bool)

(declare-fun b!1529158 () Bool)

(declare-datatypes ((SeekEntryResult!13192 0))(
  ( (MissingZero!13192 (index!55162 (_ BitVec 32))) (Found!13192 (index!55163 (_ BitVec 32))) (Intermediate!13192 (undefined!14004 Bool) (index!55164 (_ BitVec 32)) (x!136858 (_ BitVec 32))) (Undefined!13192) (MissingVacant!13192 (index!55165 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101571 (_ BitVec 32)) SeekEntryResult!13192)

(assert (=> b!1529158 (= e!852220 (= (seekEntry!0 (select (arr!49006 a!2804) j!70) a!2804 mask!2512) (Found!13192 j!70)))))

(declare-fun b!1529159 () Bool)

(declare-fun res!1047000 () Bool)

(assert (=> b!1529159 (=> (not res!1047000) (not e!852217))))

(assert (=> b!1529159 (= res!1047000 (and (= (size!49557 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49557 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49557 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529160 () Bool)

(declare-fun e!852219 () Bool)

(assert (=> b!1529160 (= e!852219 (not e!852218))))

(declare-fun res!1047002 () Bool)

(assert (=> b!1529160 (=> res!1047002 e!852218)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529160 (= res!1047002 (or (not (= (select (arr!49006 a!2804) j!70) (select (store (arr!49006 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529160 e!852220))

(declare-fun res!1047003 () Bool)

(assert (=> b!1529160 (=> (not res!1047003) (not e!852220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101571 (_ BitVec 32)) Bool)

(assert (=> b!1529160 (= res!1047003 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51124 0))(
  ( (Unit!51125) )
))
(declare-fun lt!662302 () Unit!51124)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51124)

(assert (=> b!1529160 (= lt!662302 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529161 () Bool)

(declare-fun res!1047009 () Bool)

(assert (=> b!1529161 (=> (not res!1047009) (not e!852217))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529161 (= res!1047009 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49557 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49557 a!2804))))))

(declare-fun res!1047008 () Bool)

(assert (=> start!130294 (=> (not res!1047008) (not e!852217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130294 (= res!1047008 (validMask!0 mask!2512))))

(assert (=> start!130294 e!852217))

(assert (=> start!130294 true))

(declare-fun array_inv!37951 (array!101571) Bool)

(assert (=> start!130294 (array_inv!37951 a!2804)))

(declare-fun b!1529156 () Bool)

(assert (=> b!1529156 (= e!852217 e!852219)))

(declare-fun res!1047004 () Bool)

(assert (=> b!1529156 (=> (not res!1047004) (not e!852219))))

(declare-fun lt!662305 () SeekEntryResult!13192)

(declare-fun lt!662304 () SeekEntryResult!13192)

(assert (=> b!1529156 (= res!1047004 (= lt!662305 lt!662304))))

(assert (=> b!1529156 (= lt!662304 (Intermediate!13192 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101571 (_ BitVec 32)) SeekEntryResult!13192)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529156 (= lt!662305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49006 a!2804) j!70) mask!2512) (select (arr!49006 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529162 () Bool)

(declare-fun res!1047006 () Bool)

(assert (=> b!1529162 (=> (not res!1047006) (not e!852219))))

(assert (=> b!1529162 (= res!1047006 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49006 a!2804) j!70) a!2804 mask!2512) lt!662304))))

(declare-fun b!1529163 () Bool)

(declare-fun res!1047005 () Bool)

(assert (=> b!1529163 (=> (not res!1047005) (not e!852219))))

(assert (=> b!1529163 (= res!1047005 (= lt!662305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49006 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49006 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101572 (store (arr!49006 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49557 a!2804)) mask!2512)))))

(declare-fun b!1529164 () Bool)

(declare-fun res!1046999 () Bool)

(assert (=> b!1529164 (=> (not res!1046999) (not e!852217))))

(assert (=> b!1529164 (= res!1046999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130294 res!1047008) b!1529159))

(assert (= (and b!1529159 res!1047000) b!1529155))

(assert (= (and b!1529155 res!1047001) b!1529154))

(assert (= (and b!1529154 res!1046998) b!1529164))

(assert (= (and b!1529164 res!1046999) b!1529153))

(assert (= (and b!1529153 res!1047007) b!1529161))

(assert (= (and b!1529161 res!1047009) b!1529156))

(assert (= (and b!1529156 res!1047004) b!1529162))

(assert (= (and b!1529162 res!1047006) b!1529163))

(assert (= (and b!1529163 res!1047005) b!1529160))

(assert (= (and b!1529160 res!1047003) b!1529158))

(assert (= (and b!1529160 (not res!1047002)) b!1529157))

(declare-fun m!1412139 () Bool)

(assert (=> b!1529153 m!1412139))

(declare-fun m!1412141 () Bool)

(assert (=> b!1529154 m!1412141))

(assert (=> b!1529154 m!1412141))

(declare-fun m!1412143 () Bool)

(assert (=> b!1529154 m!1412143))

(assert (=> b!1529158 m!1412141))

(assert (=> b!1529158 m!1412141))

(declare-fun m!1412145 () Bool)

(assert (=> b!1529158 m!1412145))

(declare-fun m!1412147 () Bool)

(assert (=> start!130294 m!1412147))

(declare-fun m!1412149 () Bool)

(assert (=> start!130294 m!1412149))

(declare-fun m!1412151 () Bool)

(assert (=> b!1529164 m!1412151))

(assert (=> b!1529162 m!1412141))

(assert (=> b!1529162 m!1412141))

(declare-fun m!1412153 () Bool)

(assert (=> b!1529162 m!1412153))

(assert (=> b!1529160 m!1412141))

(declare-fun m!1412155 () Bool)

(assert (=> b!1529160 m!1412155))

(declare-fun m!1412157 () Bool)

(assert (=> b!1529160 m!1412157))

(declare-fun m!1412159 () Bool)

(assert (=> b!1529160 m!1412159))

(declare-fun m!1412161 () Bool)

(assert (=> b!1529160 m!1412161))

(declare-fun m!1412163 () Bool)

(assert (=> b!1529157 m!1412163))

(declare-fun m!1412165 () Bool)

(assert (=> b!1529155 m!1412165))

(assert (=> b!1529155 m!1412165))

(declare-fun m!1412167 () Bool)

(assert (=> b!1529155 m!1412167))

(assert (=> b!1529156 m!1412141))

(assert (=> b!1529156 m!1412141))

(declare-fun m!1412169 () Bool)

(assert (=> b!1529156 m!1412169))

(assert (=> b!1529156 m!1412169))

(assert (=> b!1529156 m!1412141))

(declare-fun m!1412171 () Bool)

(assert (=> b!1529156 m!1412171))

(assert (=> b!1529163 m!1412157))

(assert (=> b!1529163 m!1412159))

(assert (=> b!1529163 m!1412159))

(declare-fun m!1412173 () Bool)

(assert (=> b!1529163 m!1412173))

(assert (=> b!1529163 m!1412173))

(assert (=> b!1529163 m!1412159))

(declare-fun m!1412175 () Bool)

(assert (=> b!1529163 m!1412175))

(push 1)

