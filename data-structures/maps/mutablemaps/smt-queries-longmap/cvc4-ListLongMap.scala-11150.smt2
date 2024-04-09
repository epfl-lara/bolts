; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130298 () Bool)

(assert start!130298)

(declare-fun b!1529225 () Bool)

(declare-fun res!1047079 () Bool)

(declare-fun e!852249 () Bool)

(assert (=> b!1529225 (=> (not res!1047079) (not e!852249))))

(declare-datatypes ((array!101575 0))(
  ( (array!101576 (arr!49008 (Array (_ BitVec 32) (_ BitVec 64))) (size!49559 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101575)

(declare-datatypes ((List!35671 0))(
  ( (Nil!35668) (Cons!35667 (h!37104 (_ BitVec 64)) (t!50372 List!35671)) )
))
(declare-fun arrayNoDuplicates!0 (array!101575 (_ BitVec 32) List!35671) Bool)

(assert (=> b!1529225 (= res!1047079 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35668))))

(declare-fun b!1529226 () Bool)

(declare-fun res!1047081 () Bool)

(assert (=> b!1529226 (=> (not res!1047081) (not e!852249))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101575 (_ BitVec 32)) Bool)

(assert (=> b!1529226 (= res!1047081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529227 () Bool)

(declare-fun res!1047078 () Bool)

(assert (=> b!1529227 (=> (not res!1047078) (not e!852249))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529227 (= res!1047078 (validKeyInArray!0 (select (arr!49008 a!2804) j!70)))))

(declare-fun b!1529228 () Bool)

(declare-fun e!852250 () Bool)

(assert (=> b!1529228 (= e!852250 true)))

(declare-fun lt!662329 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529228 (= lt!662329 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529229 () Bool)

(declare-fun res!1047075 () Bool)

(assert (=> b!1529229 (=> (not res!1047075) (not e!852249))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529229 (= res!1047075 (and (= (size!49559 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49559 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49559 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529230 () Bool)

(declare-fun res!1047074 () Bool)

(declare-fun e!852251 () Bool)

(assert (=> b!1529230 (=> (not res!1047074) (not e!852251))))

(declare-datatypes ((SeekEntryResult!13194 0))(
  ( (MissingZero!13194 (index!55170 (_ BitVec 32))) (Found!13194 (index!55171 (_ BitVec 32))) (Intermediate!13194 (undefined!14006 Bool) (index!55172 (_ BitVec 32)) (x!136860 (_ BitVec 32))) (Undefined!13194) (MissingVacant!13194 (index!55173 (_ BitVec 32))) )
))
(declare-fun lt!662327 () SeekEntryResult!13194)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101575 (_ BitVec 32)) SeekEntryResult!13194)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529230 (= res!1047074 (= lt!662327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49008 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49008 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101576 (store (arr!49008 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49559 a!2804)) mask!2512)))))

(declare-fun b!1529231 () Bool)

(declare-fun e!852247 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101575 (_ BitVec 32)) SeekEntryResult!13194)

(assert (=> b!1529231 (= e!852247 (= (seekEntry!0 (select (arr!49008 a!2804) j!70) a!2804 mask!2512) (Found!13194 j!70)))))

(declare-fun res!1047080 () Bool)

(assert (=> start!130298 (=> (not res!1047080) (not e!852249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130298 (= res!1047080 (validMask!0 mask!2512))))

(assert (=> start!130298 e!852249))

(assert (=> start!130298 true))

(declare-fun array_inv!37953 (array!101575) Bool)

(assert (=> start!130298 (array_inv!37953 a!2804)))

(declare-fun b!1529232 () Bool)

(assert (=> b!1529232 (= e!852249 e!852251)))

(declare-fun res!1047071 () Bool)

(assert (=> b!1529232 (=> (not res!1047071) (not e!852251))))

(declare-fun lt!662328 () SeekEntryResult!13194)

(assert (=> b!1529232 (= res!1047071 (= lt!662327 lt!662328))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529232 (= lt!662328 (Intermediate!13194 false resIndex!21 resX!21))))

(assert (=> b!1529232 (= lt!662327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49008 a!2804) j!70) mask!2512) (select (arr!49008 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529233 () Bool)

(assert (=> b!1529233 (= e!852251 (not e!852250))))

(declare-fun res!1047076 () Bool)

(assert (=> b!1529233 (=> res!1047076 e!852250)))

(assert (=> b!1529233 (= res!1047076 (or (not (= (select (arr!49008 a!2804) j!70) (select (store (arr!49008 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529233 e!852247))

(declare-fun res!1047077 () Bool)

(assert (=> b!1529233 (=> (not res!1047077) (not e!852247))))

(assert (=> b!1529233 (= res!1047077 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51128 0))(
  ( (Unit!51129) )
))
(declare-fun lt!662326 () Unit!51128)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51128)

(assert (=> b!1529233 (= lt!662326 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529234 () Bool)

(declare-fun res!1047070 () Bool)

(assert (=> b!1529234 (=> (not res!1047070) (not e!852249))))

(assert (=> b!1529234 (= res!1047070 (validKeyInArray!0 (select (arr!49008 a!2804) i!961)))))

(declare-fun b!1529235 () Bool)

(declare-fun res!1047072 () Bool)

(assert (=> b!1529235 (=> (not res!1047072) (not e!852251))))

(assert (=> b!1529235 (= res!1047072 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49008 a!2804) j!70) a!2804 mask!2512) lt!662328))))

(declare-fun b!1529236 () Bool)

(declare-fun res!1047073 () Bool)

(assert (=> b!1529236 (=> (not res!1047073) (not e!852249))))

(assert (=> b!1529236 (= res!1047073 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49559 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49559 a!2804))))))

(assert (= (and start!130298 res!1047080) b!1529229))

(assert (= (and b!1529229 res!1047075) b!1529234))

(assert (= (and b!1529234 res!1047070) b!1529227))

(assert (= (and b!1529227 res!1047078) b!1529226))

(assert (= (and b!1529226 res!1047081) b!1529225))

(assert (= (and b!1529225 res!1047079) b!1529236))

(assert (= (and b!1529236 res!1047073) b!1529232))

(assert (= (and b!1529232 res!1047071) b!1529235))

(assert (= (and b!1529235 res!1047072) b!1529230))

(assert (= (and b!1529230 res!1047074) b!1529233))

(assert (= (and b!1529233 res!1047077) b!1529231))

(assert (= (and b!1529233 (not res!1047076)) b!1529228))

(declare-fun m!1412215 () Bool)

(assert (=> b!1529232 m!1412215))

(assert (=> b!1529232 m!1412215))

(declare-fun m!1412217 () Bool)

(assert (=> b!1529232 m!1412217))

(assert (=> b!1529232 m!1412217))

(assert (=> b!1529232 m!1412215))

(declare-fun m!1412219 () Bool)

(assert (=> b!1529232 m!1412219))

(declare-fun m!1412221 () Bool)

(assert (=> start!130298 m!1412221))

(declare-fun m!1412223 () Bool)

(assert (=> start!130298 m!1412223))

(assert (=> b!1529233 m!1412215))

(declare-fun m!1412225 () Bool)

(assert (=> b!1529233 m!1412225))

(declare-fun m!1412227 () Bool)

(assert (=> b!1529233 m!1412227))

(declare-fun m!1412229 () Bool)

(assert (=> b!1529233 m!1412229))

(declare-fun m!1412231 () Bool)

(assert (=> b!1529233 m!1412231))

(assert (=> b!1529235 m!1412215))

(assert (=> b!1529235 m!1412215))

(declare-fun m!1412233 () Bool)

(assert (=> b!1529235 m!1412233))

(declare-fun m!1412235 () Bool)

(assert (=> b!1529225 m!1412235))

(declare-fun m!1412237 () Bool)

(assert (=> b!1529228 m!1412237))

(declare-fun m!1412239 () Bool)

(assert (=> b!1529226 m!1412239))

(declare-fun m!1412241 () Bool)

(assert (=> b!1529234 m!1412241))

(assert (=> b!1529234 m!1412241))

(declare-fun m!1412243 () Bool)

(assert (=> b!1529234 m!1412243))

(assert (=> b!1529227 m!1412215))

(assert (=> b!1529227 m!1412215))

(declare-fun m!1412245 () Bool)

(assert (=> b!1529227 m!1412245))

(assert (=> b!1529231 m!1412215))

(assert (=> b!1529231 m!1412215))

(declare-fun m!1412247 () Bool)

(assert (=> b!1529231 m!1412247))

(assert (=> b!1529230 m!1412227))

(assert (=> b!1529230 m!1412229))

(assert (=> b!1529230 m!1412229))

(declare-fun m!1412249 () Bool)

(assert (=> b!1529230 m!1412249))

(assert (=> b!1529230 m!1412249))

(assert (=> b!1529230 m!1412229))

(declare-fun m!1412251 () Bool)

(assert (=> b!1529230 m!1412251))

(push 1)

