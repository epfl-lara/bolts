; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128972 () Bool)

(assert start!128972)

(declare-fun b!1511238 () Bool)

(declare-fun e!843776 () Bool)

(assert (=> b!1511238 (= e!843776 (not true))))

(declare-fun e!843773 () Bool)

(assert (=> b!1511238 e!843773))

(declare-fun res!1031220 () Bool)

(assert (=> b!1511238 (=> (not res!1031220) (not e!843773))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100741 0))(
  ( (array!100742 (arr!48603 (Array (_ BitVec 32) (_ BitVec 64))) (size!49154 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100741)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100741 (_ BitVec 32)) Bool)

(assert (=> b!1511238 (= res!1031220 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50414 0))(
  ( (Unit!50415) )
))
(declare-fun lt!655358 () Unit!50414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50414)

(assert (=> b!1511238 (= lt!655358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511239 () Bool)

(declare-fun res!1031217 () Bool)

(declare-fun e!843774 () Bool)

(assert (=> b!1511239 (=> (not res!1031217) (not e!843774))))

(assert (=> b!1511239 (= res!1031217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511240 () Bool)

(declare-fun res!1031219 () Bool)

(assert (=> b!1511240 (=> (not res!1031219) (not e!843774))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511240 (= res!1031219 (validKeyInArray!0 (select (arr!48603 a!2804) i!961)))))

(declare-fun b!1511241 () Bool)

(declare-fun res!1031215 () Bool)

(assert (=> b!1511241 (=> (not res!1031215) (not e!843774))))

(assert (=> b!1511241 (= res!1031215 (validKeyInArray!0 (select (arr!48603 a!2804) j!70)))))

(declare-fun b!1511242 () Bool)

(declare-fun res!1031221 () Bool)

(assert (=> b!1511242 (=> (not res!1031221) (not e!843774))))

(assert (=> b!1511242 (= res!1031221 (and (= (size!49154 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49154 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49154 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511244 () Bool)

(declare-fun res!1031223 () Bool)

(assert (=> b!1511244 (=> (not res!1031223) (not e!843776))))

(declare-datatypes ((SeekEntryResult!12795 0))(
  ( (MissingZero!12795 (index!53574 (_ BitVec 32))) (Found!12795 (index!53575 (_ BitVec 32))) (Intermediate!12795 (undefined!13607 Bool) (index!53576 (_ BitVec 32)) (x!135318 (_ BitVec 32))) (Undefined!12795) (MissingVacant!12795 (index!53577 (_ BitVec 32))) )
))
(declare-fun lt!655359 () SeekEntryResult!12795)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100741 (_ BitVec 32)) SeekEntryResult!12795)

(assert (=> b!1511244 (= res!1031223 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48603 a!2804) j!70) a!2804 mask!2512) lt!655359))))

(declare-fun b!1511245 () Bool)

(declare-fun res!1031216 () Bool)

(assert (=> b!1511245 (=> (not res!1031216) (not e!843776))))

(declare-fun lt!655360 () SeekEntryResult!12795)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511245 (= res!1031216 (= lt!655360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48603 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48603 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100742 (store (arr!48603 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49154 a!2804)) mask!2512)))))

(declare-fun b!1511246 () Bool)

(declare-fun res!1031218 () Bool)

(assert (=> b!1511246 (=> (not res!1031218) (not e!843774))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511246 (= res!1031218 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49154 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49154 a!2804))))))

(declare-fun b!1511247 () Bool)

(declare-fun res!1031214 () Bool)

(assert (=> b!1511247 (=> (not res!1031214) (not e!843774))))

(declare-datatypes ((List!35266 0))(
  ( (Nil!35263) (Cons!35262 (h!36675 (_ BitVec 64)) (t!49967 List!35266)) )
))
(declare-fun arrayNoDuplicates!0 (array!100741 (_ BitVec 32) List!35266) Bool)

(assert (=> b!1511247 (= res!1031214 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35263))))

(declare-fun b!1511248 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100741 (_ BitVec 32)) SeekEntryResult!12795)

(assert (=> b!1511248 (= e!843773 (= (seekEntry!0 (select (arr!48603 a!2804) j!70) a!2804 mask!2512) (Found!12795 j!70)))))

(declare-fun res!1031213 () Bool)

(assert (=> start!128972 (=> (not res!1031213) (not e!843774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128972 (= res!1031213 (validMask!0 mask!2512))))

(assert (=> start!128972 e!843774))

(assert (=> start!128972 true))

(declare-fun array_inv!37548 (array!100741) Bool)

(assert (=> start!128972 (array_inv!37548 a!2804)))

(declare-fun b!1511243 () Bool)

(assert (=> b!1511243 (= e!843774 e!843776)))

(declare-fun res!1031222 () Bool)

(assert (=> b!1511243 (=> (not res!1031222) (not e!843776))))

(assert (=> b!1511243 (= res!1031222 (= lt!655360 lt!655359))))

(assert (=> b!1511243 (= lt!655359 (Intermediate!12795 false resIndex!21 resX!21))))

(assert (=> b!1511243 (= lt!655360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48603 a!2804) j!70) mask!2512) (select (arr!48603 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!128972 res!1031213) b!1511242))

(assert (= (and b!1511242 res!1031221) b!1511240))

(assert (= (and b!1511240 res!1031219) b!1511241))

(assert (= (and b!1511241 res!1031215) b!1511239))

(assert (= (and b!1511239 res!1031217) b!1511247))

(assert (= (and b!1511247 res!1031214) b!1511246))

(assert (= (and b!1511246 res!1031218) b!1511243))

(assert (= (and b!1511243 res!1031222) b!1511244))

(assert (= (and b!1511244 res!1031223) b!1511245))

(assert (= (and b!1511245 res!1031216) b!1511238))

(assert (= (and b!1511238 res!1031220) b!1511248))

(declare-fun m!1393977 () Bool)

(assert (=> b!1511245 m!1393977))

(declare-fun m!1393979 () Bool)

(assert (=> b!1511245 m!1393979))

(assert (=> b!1511245 m!1393979))

(declare-fun m!1393981 () Bool)

(assert (=> b!1511245 m!1393981))

(assert (=> b!1511245 m!1393981))

(assert (=> b!1511245 m!1393979))

(declare-fun m!1393983 () Bool)

(assert (=> b!1511245 m!1393983))

(declare-fun m!1393985 () Bool)

(assert (=> b!1511248 m!1393985))

(assert (=> b!1511248 m!1393985))

(declare-fun m!1393987 () Bool)

(assert (=> b!1511248 m!1393987))

(declare-fun m!1393989 () Bool)

(assert (=> b!1511239 m!1393989))

(declare-fun m!1393991 () Bool)

(assert (=> start!128972 m!1393991))

(declare-fun m!1393993 () Bool)

(assert (=> start!128972 m!1393993))

(assert (=> b!1511244 m!1393985))

(assert (=> b!1511244 m!1393985))

(declare-fun m!1393995 () Bool)

(assert (=> b!1511244 m!1393995))

(declare-fun m!1393997 () Bool)

(assert (=> b!1511247 m!1393997))

(assert (=> b!1511243 m!1393985))

(assert (=> b!1511243 m!1393985))

(declare-fun m!1393999 () Bool)

(assert (=> b!1511243 m!1393999))

(assert (=> b!1511243 m!1393999))

(assert (=> b!1511243 m!1393985))

(declare-fun m!1394001 () Bool)

(assert (=> b!1511243 m!1394001))

(declare-fun m!1394003 () Bool)

(assert (=> b!1511238 m!1394003))

(declare-fun m!1394005 () Bool)

(assert (=> b!1511238 m!1394005))

(declare-fun m!1394007 () Bool)

(assert (=> b!1511240 m!1394007))

(assert (=> b!1511240 m!1394007))

(declare-fun m!1394009 () Bool)

(assert (=> b!1511240 m!1394009))

(assert (=> b!1511241 m!1393985))

(assert (=> b!1511241 m!1393985))

(declare-fun m!1394011 () Bool)

(assert (=> b!1511241 m!1394011))

(push 1)

