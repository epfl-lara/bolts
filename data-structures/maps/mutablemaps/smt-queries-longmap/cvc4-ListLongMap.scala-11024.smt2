; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129026 () Bool)

(assert start!129026)

(declare-fun b!1512244 () Bool)

(declare-fun res!1032226 () Bool)

(declare-fun e!844162 () Bool)

(assert (=> b!1512244 (=> (not res!1032226) (not e!844162))))

(declare-datatypes ((array!100795 0))(
  ( (array!100796 (arr!48630 (Array (_ BitVec 32) (_ BitVec 64))) (size!49181 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100795)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512244 (= res!1032226 (validKeyInArray!0 (select (arr!48630 a!2804) j!70)))))

(declare-fun b!1512245 () Bool)

(declare-fun res!1032219 () Bool)

(assert (=> b!1512245 (=> (not res!1032219) (not e!844162))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512245 (= res!1032219 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49181 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49181 a!2804))))))

(declare-fun b!1512246 () Bool)

(declare-fun res!1032227 () Bool)

(assert (=> b!1512246 (=> (not res!1032227) (not e!844162))))

(declare-datatypes ((List!35293 0))(
  ( (Nil!35290) (Cons!35289 (h!36702 (_ BitVec 64)) (t!49994 List!35293)) )
))
(declare-fun arrayNoDuplicates!0 (array!100795 (_ BitVec 32) List!35293) Bool)

(assert (=> b!1512246 (= res!1032227 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35290))))

(declare-fun b!1512247 () Bool)

(declare-fun res!1032231 () Bool)

(assert (=> b!1512247 (=> (not res!1032231) (not e!844162))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1512247 (= res!1032231 (validKeyInArray!0 (select (arr!48630 a!2804) i!961)))))

(declare-fun res!1032221 () Bool)

(assert (=> start!129026 (=> (not res!1032221) (not e!844162))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129026 (= res!1032221 (validMask!0 mask!2512))))

(assert (=> start!129026 e!844162))

(assert (=> start!129026 true))

(declare-fun array_inv!37575 (array!100795) Bool)

(assert (=> start!129026 (array_inv!37575 a!2804)))

(declare-fun b!1512248 () Bool)

(declare-fun e!844161 () Bool)

(declare-fun e!844163 () Bool)

(assert (=> b!1512248 (= e!844161 e!844163)))

(declare-fun res!1032230 () Bool)

(assert (=> b!1512248 (=> res!1032230 e!844163)))

(assert (=> b!1512248 (= res!1032230 (or (not (= (select (arr!48630 a!2804) j!70) (select (store (arr!48630 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48630 a!2804) index!487) (select (arr!48630 a!2804) j!70)) (not (= (select (arr!48630 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512249 () Bool)

(declare-fun res!1032224 () Bool)

(assert (=> b!1512249 (=> (not res!1032224) (not e!844161))))

(declare-datatypes ((SeekEntryResult!12822 0))(
  ( (MissingZero!12822 (index!53682 (_ BitVec 32))) (Found!12822 (index!53683 (_ BitVec 32))) (Intermediate!12822 (undefined!13634 Bool) (index!53684 (_ BitVec 32)) (x!135417 (_ BitVec 32))) (Undefined!12822) (MissingVacant!12822 (index!53685 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100795 (_ BitVec 32)) SeekEntryResult!12822)

(assert (=> b!1512249 (= res!1032224 (= (seekEntry!0 (select (arr!48630 a!2804) j!70) a!2804 mask!2512) (Found!12822 j!70)))))

(declare-fun b!1512250 () Bool)

(declare-fun res!1032223 () Bool)

(assert (=> b!1512250 (=> (not res!1032223) (not e!844162))))

(assert (=> b!1512250 (= res!1032223 (and (= (size!49181 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49181 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49181 a!2804)) (not (= i!961 j!70))))))

(declare-fun e!844160 () Bool)

(declare-fun b!1512251 () Bool)

(assert (=> b!1512251 (= e!844160 (not (or (not (= (select (arr!48630 a!2804) j!70) (select (store (arr!48630 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48630 a!2804) index!487) (select (arr!48630 a!2804) j!70)) (not (= (select (arr!48630 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1512251 e!844161))

(declare-fun res!1032220 () Bool)

(assert (=> b!1512251 (=> (not res!1032220) (not e!844161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100795 (_ BitVec 32)) Bool)

(assert (=> b!1512251 (= res!1032220 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50468 0))(
  ( (Unit!50469) )
))
(declare-fun lt!655601 () Unit!50468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100795 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50468)

(assert (=> b!1512251 (= lt!655601 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512252 () Bool)

(declare-fun res!1032229 () Bool)

(assert (=> b!1512252 (=> (not res!1032229) (not e!844160))))

(declare-fun lt!655602 () SeekEntryResult!12822)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100795 (_ BitVec 32)) SeekEntryResult!12822)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512252 (= res!1032229 (= lt!655602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48630 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48630 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100796 (store (arr!48630 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49181 a!2804)) mask!2512)))))

(declare-fun b!1512253 () Bool)

(declare-fun res!1032222 () Bool)

(assert (=> b!1512253 (=> (not res!1032222) (not e!844162))))

(assert (=> b!1512253 (= res!1032222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512254 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100795 (_ BitVec 32)) SeekEntryResult!12822)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100795 (_ BitVec 32)) SeekEntryResult!12822)

(assert (=> b!1512254 (= e!844163 (= (seekEntryOrOpen!0 (select (arr!48630 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48630 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512255 () Bool)

(assert (=> b!1512255 (= e!844162 e!844160)))

(declare-fun res!1032228 () Bool)

(assert (=> b!1512255 (=> (not res!1032228) (not e!844160))))

(declare-fun lt!655603 () SeekEntryResult!12822)

(assert (=> b!1512255 (= res!1032228 (= lt!655602 lt!655603))))

(assert (=> b!1512255 (= lt!655603 (Intermediate!12822 false resIndex!21 resX!21))))

(assert (=> b!1512255 (= lt!655602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48630 a!2804) j!70) mask!2512) (select (arr!48630 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512256 () Bool)

(declare-fun res!1032225 () Bool)

(assert (=> b!1512256 (=> (not res!1032225) (not e!844160))))

(assert (=> b!1512256 (= res!1032225 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48630 a!2804) j!70) a!2804 mask!2512) lt!655603))))

(assert (= (and start!129026 res!1032221) b!1512250))

(assert (= (and b!1512250 res!1032223) b!1512247))

(assert (= (and b!1512247 res!1032231) b!1512244))

(assert (= (and b!1512244 res!1032226) b!1512253))

(assert (= (and b!1512253 res!1032222) b!1512246))

(assert (= (and b!1512246 res!1032227) b!1512245))

(assert (= (and b!1512245 res!1032219) b!1512255))

(assert (= (and b!1512255 res!1032228) b!1512256))

(assert (= (and b!1512256 res!1032225) b!1512252))

(assert (= (and b!1512252 res!1032229) b!1512251))

(assert (= (and b!1512251 res!1032220) b!1512249))

(assert (= (and b!1512249 res!1032224) b!1512248))

(assert (= (and b!1512248 (not res!1032230)) b!1512254))

(declare-fun m!1395057 () Bool)

(assert (=> start!129026 m!1395057))

(declare-fun m!1395059 () Bool)

(assert (=> start!129026 m!1395059))

(declare-fun m!1395061 () Bool)

(assert (=> b!1512254 m!1395061))

(assert (=> b!1512254 m!1395061))

(declare-fun m!1395063 () Bool)

(assert (=> b!1512254 m!1395063))

(assert (=> b!1512254 m!1395061))

(declare-fun m!1395065 () Bool)

(assert (=> b!1512254 m!1395065))

(assert (=> b!1512255 m!1395061))

(assert (=> b!1512255 m!1395061))

(declare-fun m!1395067 () Bool)

(assert (=> b!1512255 m!1395067))

(assert (=> b!1512255 m!1395067))

(assert (=> b!1512255 m!1395061))

(declare-fun m!1395069 () Bool)

(assert (=> b!1512255 m!1395069))

(declare-fun m!1395071 () Bool)

(assert (=> b!1512252 m!1395071))

(declare-fun m!1395073 () Bool)

(assert (=> b!1512252 m!1395073))

(assert (=> b!1512252 m!1395073))

(declare-fun m!1395075 () Bool)

(assert (=> b!1512252 m!1395075))

(assert (=> b!1512252 m!1395075))

(assert (=> b!1512252 m!1395073))

(declare-fun m!1395077 () Bool)

(assert (=> b!1512252 m!1395077))

(declare-fun m!1395079 () Bool)

(assert (=> b!1512247 m!1395079))

(assert (=> b!1512247 m!1395079))

(declare-fun m!1395081 () Bool)

(assert (=> b!1512247 m!1395081))

(assert (=> b!1512244 m!1395061))

(assert (=> b!1512244 m!1395061))

(declare-fun m!1395083 () Bool)

(assert (=> b!1512244 m!1395083))

(assert (=> b!1512251 m!1395061))

(declare-fun m!1395085 () Bool)

(assert (=> b!1512251 m!1395085))

(assert (=> b!1512251 m!1395071))

(declare-fun m!1395087 () Bool)

(assert (=> b!1512251 m!1395087))

(assert (=> b!1512251 m!1395073))

(declare-fun m!1395089 () Bool)

(assert (=> b!1512251 m!1395089))

(assert (=> b!1512248 m!1395061))

(assert (=> b!1512248 m!1395071))

(assert (=> b!1512248 m!1395073))

(assert (=> b!1512248 m!1395087))

(assert (=> b!1512249 m!1395061))

(assert (=> b!1512249 m!1395061))

(declare-fun m!1395091 () Bool)

(assert (=> b!1512249 m!1395091))

(declare-fun m!1395093 () Bool)

(assert (=> b!1512246 m!1395093))

(declare-fun m!1395095 () Bool)

(assert (=> b!1512253 m!1395095))

(assert (=> b!1512256 m!1395061))

(assert (=> b!1512256 m!1395061))

(declare-fun m!1395097 () Bool)

(assert (=> b!1512256 m!1395097))

(push 1)

(assert (not b!1512254))

(assert (not b!1512256))

(assert (not b!1512252))

(assert (not b!1512253))

(assert (not b!1512249))

(assert (not b!1512246))

(assert (not b!1512251))

(assert (not start!129026))

(assert (not b!1512255))

(assert (not b!1512247))

(assert (not b!1512244))

(check-sat)

(pop 1)

(push 1)

