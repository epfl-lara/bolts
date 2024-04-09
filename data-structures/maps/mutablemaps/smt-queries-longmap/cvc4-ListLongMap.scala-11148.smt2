; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130286 () Bool)

(assert start!130286)

(declare-fun b!1529010 () Bool)

(declare-fun e!852160 () Bool)

(assert (=> b!1529010 (= e!852160 true)))

(declare-fun lt!662254 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529010 (= lt!662254 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529011 () Bool)

(declare-fun res!1046856 () Bool)

(declare-fun e!852158 () Bool)

(assert (=> b!1529011 (=> (not res!1046856) (not e!852158))))

(declare-datatypes ((array!101563 0))(
  ( (array!101564 (arr!49002 (Array (_ BitVec 32) (_ BitVec 64))) (size!49553 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101563)

(declare-datatypes ((List!35665 0))(
  ( (Nil!35662) (Cons!35661 (h!37098 (_ BitVec 64)) (t!50366 List!35665)) )
))
(declare-fun arrayNoDuplicates!0 (array!101563 (_ BitVec 32) List!35665) Bool)

(assert (=> b!1529011 (= res!1046856 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35662))))

(declare-fun b!1529012 () Bool)

(declare-fun e!852159 () Bool)

(assert (=> b!1529012 (= e!852158 e!852159)))

(declare-fun res!1046862 () Bool)

(assert (=> b!1529012 (=> (not res!1046862) (not e!852159))))

(declare-datatypes ((SeekEntryResult!13188 0))(
  ( (MissingZero!13188 (index!55146 (_ BitVec 32))) (Found!13188 (index!55147 (_ BitVec 32))) (Intermediate!13188 (undefined!14000 Bool) (index!55148 (_ BitVec 32)) (x!136838 (_ BitVec 32))) (Undefined!13188) (MissingVacant!13188 (index!55149 (_ BitVec 32))) )
))
(declare-fun lt!662256 () SeekEntryResult!13188)

(declare-fun lt!662255 () SeekEntryResult!13188)

(assert (=> b!1529012 (= res!1046862 (= lt!662256 lt!662255))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529012 (= lt!662255 (Intermediate!13188 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101563 (_ BitVec 32)) SeekEntryResult!13188)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529012 (= lt!662256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49002 a!2804) j!70) mask!2512) (select (arr!49002 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529013 () Bool)

(declare-fun res!1046860 () Bool)

(assert (=> b!1529013 (=> (not res!1046860) (not e!852159))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529013 (= res!1046860 (= lt!662256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49002 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49002 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101564 (store (arr!49002 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49553 a!2804)) mask!2512)))))

(declare-fun b!1529014 () Bool)

(declare-fun e!852157 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101563 (_ BitVec 32)) SeekEntryResult!13188)

(assert (=> b!1529014 (= e!852157 (= (seekEntry!0 (select (arr!49002 a!2804) j!70) a!2804 mask!2512) (Found!13188 j!70)))))

(declare-fun b!1529015 () Bool)

(declare-fun res!1046865 () Bool)

(assert (=> b!1529015 (=> (not res!1046865) (not e!852158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529015 (= res!1046865 (validKeyInArray!0 (select (arr!49002 a!2804) i!961)))))

(declare-fun b!1529016 () Bool)

(declare-fun res!1046864 () Bool)

(assert (=> b!1529016 (=> (not res!1046864) (not e!852159))))

(assert (=> b!1529016 (= res!1046864 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49002 a!2804) j!70) a!2804 mask!2512) lt!662255))))

(declare-fun b!1529017 () Bool)

(declare-fun res!1046854 () Bool)

(assert (=> b!1529017 (=> (not res!1046854) (not e!852158))))

(assert (=> b!1529017 (= res!1046854 (validKeyInArray!0 (select (arr!49002 a!2804) j!70)))))

(declare-fun b!1529018 () Bool)

(declare-fun res!1046855 () Bool)

(assert (=> b!1529018 (=> (not res!1046855) (not e!852158))))

(assert (=> b!1529018 (= res!1046855 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49553 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49553 a!2804))))))

(declare-fun res!1046863 () Bool)

(assert (=> start!130286 (=> (not res!1046863) (not e!852158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130286 (= res!1046863 (validMask!0 mask!2512))))

(assert (=> start!130286 e!852158))

(assert (=> start!130286 true))

(declare-fun array_inv!37947 (array!101563) Bool)

(assert (=> start!130286 (array_inv!37947 a!2804)))

(declare-fun b!1529009 () Bool)

(declare-fun res!1046858 () Bool)

(assert (=> b!1529009 (=> (not res!1046858) (not e!852158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101563 (_ BitVec 32)) Bool)

(assert (=> b!1529009 (= res!1046858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529019 () Bool)

(declare-fun res!1046859 () Bool)

(assert (=> b!1529019 (=> (not res!1046859) (not e!852158))))

(assert (=> b!1529019 (= res!1046859 (and (= (size!49553 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49553 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49553 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529020 () Bool)

(assert (=> b!1529020 (= e!852159 (not e!852160))))

(declare-fun res!1046861 () Bool)

(assert (=> b!1529020 (=> res!1046861 e!852160)))

(assert (=> b!1529020 (= res!1046861 (or (not (= (select (arr!49002 a!2804) j!70) (select (store (arr!49002 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529020 e!852157))

(declare-fun res!1046857 () Bool)

(assert (=> b!1529020 (=> (not res!1046857) (not e!852157))))

(assert (=> b!1529020 (= res!1046857 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51116 0))(
  ( (Unit!51117) )
))
(declare-fun lt!662257 () Unit!51116)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51116)

(assert (=> b!1529020 (= lt!662257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130286 res!1046863) b!1529019))

(assert (= (and b!1529019 res!1046859) b!1529015))

(assert (= (and b!1529015 res!1046865) b!1529017))

(assert (= (and b!1529017 res!1046854) b!1529009))

(assert (= (and b!1529009 res!1046858) b!1529011))

(assert (= (and b!1529011 res!1046856) b!1529018))

(assert (= (and b!1529018 res!1046855) b!1529012))

(assert (= (and b!1529012 res!1046862) b!1529016))

(assert (= (and b!1529016 res!1046864) b!1529013))

(assert (= (and b!1529013 res!1046860) b!1529020))

(assert (= (and b!1529020 res!1046857) b!1529014))

(assert (= (and b!1529020 (not res!1046861)) b!1529010))

(declare-fun m!1411987 () Bool)

(assert (=> b!1529020 m!1411987))

(declare-fun m!1411989 () Bool)

(assert (=> b!1529020 m!1411989))

(declare-fun m!1411991 () Bool)

(assert (=> b!1529020 m!1411991))

(declare-fun m!1411993 () Bool)

(assert (=> b!1529020 m!1411993))

(declare-fun m!1411995 () Bool)

(assert (=> b!1529020 m!1411995))

(declare-fun m!1411997 () Bool)

(assert (=> b!1529009 m!1411997))

(declare-fun m!1411999 () Bool)

(assert (=> b!1529015 m!1411999))

(assert (=> b!1529015 m!1411999))

(declare-fun m!1412001 () Bool)

(assert (=> b!1529015 m!1412001))

(declare-fun m!1412003 () Bool)

(assert (=> b!1529010 m!1412003))

(declare-fun m!1412005 () Bool)

(assert (=> b!1529011 m!1412005))

(assert (=> b!1529014 m!1411987))

(assert (=> b!1529014 m!1411987))

(declare-fun m!1412007 () Bool)

(assert (=> b!1529014 m!1412007))

(assert (=> b!1529017 m!1411987))

(assert (=> b!1529017 m!1411987))

(declare-fun m!1412009 () Bool)

(assert (=> b!1529017 m!1412009))

(declare-fun m!1412011 () Bool)

(assert (=> start!130286 m!1412011))

(declare-fun m!1412013 () Bool)

(assert (=> start!130286 m!1412013))

(assert (=> b!1529012 m!1411987))

(assert (=> b!1529012 m!1411987))

(declare-fun m!1412015 () Bool)

(assert (=> b!1529012 m!1412015))

(assert (=> b!1529012 m!1412015))

(assert (=> b!1529012 m!1411987))

(declare-fun m!1412017 () Bool)

(assert (=> b!1529012 m!1412017))

(assert (=> b!1529016 m!1411987))

(assert (=> b!1529016 m!1411987))

(declare-fun m!1412019 () Bool)

(assert (=> b!1529016 m!1412019))

(assert (=> b!1529013 m!1411991))

(assert (=> b!1529013 m!1411993))

(assert (=> b!1529013 m!1411993))

(declare-fun m!1412021 () Bool)

(assert (=> b!1529013 m!1412021))

(assert (=> b!1529013 m!1412021))

(assert (=> b!1529013 m!1411993))

(declare-fun m!1412023 () Bool)

(assert (=> b!1529013 m!1412023))

(push 1)

(assert (not b!1529017))

(assert (not start!130286))

(assert (not b!1529012))

(assert (not b!1529013))

(assert (not b!1529014))

(assert (not b!1529016))

(assert (not b!1529015))

(assert (not b!1529011))

(assert (not b!1529009))

(assert (not b!1529020))

(assert (not b!1529010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

