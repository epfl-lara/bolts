; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128976 () Bool)

(assert start!128976)

(declare-fun b!1511304 () Bool)

(declare-fun e!843800 () Bool)

(declare-fun e!843797 () Bool)

(assert (=> b!1511304 (= e!843800 e!843797)))

(declare-fun res!1031289 () Bool)

(assert (=> b!1511304 (=> (not res!1031289) (not e!843797))))

(declare-datatypes ((SeekEntryResult!12797 0))(
  ( (MissingZero!12797 (index!53582 (_ BitVec 32))) (Found!12797 (index!53583 (_ BitVec 32))) (Intermediate!12797 (undefined!13609 Bool) (index!53584 (_ BitVec 32)) (x!135328 (_ BitVec 32))) (Undefined!12797) (MissingVacant!12797 (index!53585 (_ BitVec 32))) )
))
(declare-fun lt!655378 () SeekEntryResult!12797)

(declare-fun lt!655376 () SeekEntryResult!12797)

(assert (=> b!1511304 (= res!1031289 (= lt!655378 lt!655376))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511304 (= lt!655376 (Intermediate!12797 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100745 0))(
  ( (array!100746 (arr!48605 (Array (_ BitVec 32) (_ BitVec 64))) (size!49156 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100745)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100745 (_ BitVec 32)) SeekEntryResult!12797)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511304 (= lt!655378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48605 a!2804) j!70) mask!2512) (select (arr!48605 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511305 () Bool)

(declare-fun res!1031284 () Bool)

(assert (=> b!1511305 (=> (not res!1031284) (not e!843800))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1511305 (= res!1031284 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49156 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49156 a!2804))))))

(declare-fun res!1031279 () Bool)

(assert (=> start!128976 (=> (not res!1031279) (not e!843800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128976 (= res!1031279 (validMask!0 mask!2512))))

(assert (=> start!128976 e!843800))

(assert (=> start!128976 true))

(declare-fun array_inv!37550 (array!100745) Bool)

(assert (=> start!128976 (array_inv!37550 a!2804)))

(declare-fun b!1511306 () Bool)

(declare-fun res!1031282 () Bool)

(assert (=> b!1511306 (=> (not res!1031282) (not e!843800))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511306 (= res!1031282 (and (= (size!49156 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49156 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49156 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511307 () Bool)

(declare-fun res!1031283 () Bool)

(assert (=> b!1511307 (=> (not res!1031283) (not e!843800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511307 (= res!1031283 (validKeyInArray!0 (select (arr!48605 a!2804) i!961)))))

(declare-fun b!1511308 () Bool)

(assert (=> b!1511308 (= e!843797 (not true))))

(declare-fun e!843798 () Bool)

(assert (=> b!1511308 e!843798))

(declare-fun res!1031285 () Bool)

(assert (=> b!1511308 (=> (not res!1031285) (not e!843798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100745 (_ BitVec 32)) Bool)

(assert (=> b!1511308 (= res!1031285 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50418 0))(
  ( (Unit!50419) )
))
(declare-fun lt!655377 () Unit!50418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50418)

(assert (=> b!1511308 (= lt!655377 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511309 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100745 (_ BitVec 32)) SeekEntryResult!12797)

(assert (=> b!1511309 (= e!843798 (= (seekEntry!0 (select (arr!48605 a!2804) j!70) a!2804 mask!2512) (Found!12797 j!70)))))

(declare-fun b!1511310 () Bool)

(declare-fun res!1031280 () Bool)

(assert (=> b!1511310 (=> (not res!1031280) (not e!843800))))

(declare-datatypes ((List!35268 0))(
  ( (Nil!35265) (Cons!35264 (h!36677 (_ BitVec 64)) (t!49969 List!35268)) )
))
(declare-fun arrayNoDuplicates!0 (array!100745 (_ BitVec 32) List!35268) Bool)

(assert (=> b!1511310 (= res!1031280 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35265))))

(declare-fun b!1511311 () Bool)

(declare-fun res!1031281 () Bool)

(assert (=> b!1511311 (=> (not res!1031281) (not e!843797))))

(assert (=> b!1511311 (= res!1031281 (= lt!655378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48605 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48605 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100746 (store (arr!48605 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49156 a!2804)) mask!2512)))))

(declare-fun b!1511312 () Bool)

(declare-fun res!1031286 () Bool)

(assert (=> b!1511312 (=> (not res!1031286) (not e!843800))))

(assert (=> b!1511312 (= res!1031286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511313 () Bool)

(declare-fun res!1031288 () Bool)

(assert (=> b!1511313 (=> (not res!1031288) (not e!843800))))

(assert (=> b!1511313 (= res!1031288 (validKeyInArray!0 (select (arr!48605 a!2804) j!70)))))

(declare-fun b!1511314 () Bool)

(declare-fun res!1031287 () Bool)

(assert (=> b!1511314 (=> (not res!1031287) (not e!843797))))

(assert (=> b!1511314 (= res!1031287 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48605 a!2804) j!70) a!2804 mask!2512) lt!655376))))

(assert (= (and start!128976 res!1031279) b!1511306))

(assert (= (and b!1511306 res!1031282) b!1511307))

(assert (= (and b!1511307 res!1031283) b!1511313))

(assert (= (and b!1511313 res!1031288) b!1511312))

(assert (= (and b!1511312 res!1031286) b!1511310))

(assert (= (and b!1511310 res!1031280) b!1511305))

(assert (= (and b!1511305 res!1031284) b!1511304))

(assert (= (and b!1511304 res!1031289) b!1511314))

(assert (= (and b!1511314 res!1031287) b!1511311))

(assert (= (and b!1511311 res!1031281) b!1511308))

(assert (= (and b!1511308 res!1031285) b!1511309))

(declare-fun m!1394049 () Bool)

(assert (=> start!128976 m!1394049))

(declare-fun m!1394051 () Bool)

(assert (=> start!128976 m!1394051))

(declare-fun m!1394053 () Bool)

(assert (=> b!1511304 m!1394053))

(assert (=> b!1511304 m!1394053))

(declare-fun m!1394055 () Bool)

(assert (=> b!1511304 m!1394055))

(assert (=> b!1511304 m!1394055))

(assert (=> b!1511304 m!1394053))

(declare-fun m!1394057 () Bool)

(assert (=> b!1511304 m!1394057))

(assert (=> b!1511313 m!1394053))

(assert (=> b!1511313 m!1394053))

(declare-fun m!1394059 () Bool)

(assert (=> b!1511313 m!1394059))

(assert (=> b!1511314 m!1394053))

(assert (=> b!1511314 m!1394053))

(declare-fun m!1394061 () Bool)

(assert (=> b!1511314 m!1394061))

(declare-fun m!1394063 () Bool)

(assert (=> b!1511310 m!1394063))

(declare-fun m!1394065 () Bool)

(assert (=> b!1511308 m!1394065))

(declare-fun m!1394067 () Bool)

(assert (=> b!1511308 m!1394067))

(assert (=> b!1511309 m!1394053))

(assert (=> b!1511309 m!1394053))

(declare-fun m!1394069 () Bool)

(assert (=> b!1511309 m!1394069))

(declare-fun m!1394071 () Bool)

(assert (=> b!1511307 m!1394071))

(assert (=> b!1511307 m!1394071))

(declare-fun m!1394073 () Bool)

(assert (=> b!1511307 m!1394073))

(declare-fun m!1394075 () Bool)

(assert (=> b!1511312 m!1394075))

(declare-fun m!1394077 () Bool)

(assert (=> b!1511311 m!1394077))

(declare-fun m!1394079 () Bool)

(assert (=> b!1511311 m!1394079))

(assert (=> b!1511311 m!1394079))

(declare-fun m!1394081 () Bool)

(assert (=> b!1511311 m!1394081))

(assert (=> b!1511311 m!1394081))

(assert (=> b!1511311 m!1394079))

(declare-fun m!1394083 () Bool)

(assert (=> b!1511311 m!1394083))

(check-sat (not start!128976) (not b!1511307) (not b!1511313) (not b!1511312) (not b!1511308) (not b!1511311) (not b!1511310) (not b!1511309) (not b!1511304) (not b!1511314))
(check-sat)
