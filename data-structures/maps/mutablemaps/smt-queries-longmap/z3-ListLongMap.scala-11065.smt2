; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129270 () Bool)

(assert start!129270)

(declare-fun b!1517092 () Bool)

(declare-fun res!1037079 () Bool)

(declare-fun e!846481 () Bool)

(assert (=> b!1517092 (=> (not res!1037079) (not e!846481))))

(declare-datatypes ((array!101039 0))(
  ( (array!101040 (arr!48752 (Array (_ BitVec 32) (_ BitVec 64))) (size!49303 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101039)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101039 (_ BitVec 32)) Bool)

(assert (=> b!1517092 (= res!1037079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517094 () Bool)

(declare-fun res!1037077 () Bool)

(assert (=> b!1517094 (=> (not res!1037077) (not e!846481))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1517094 (= res!1037077 (and (= (size!49303 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49303 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49303 a!2804)) (not (= i!961 j!70))))))

(declare-fun e!846480 () Bool)

(declare-fun b!1517095 () Bool)

(declare-datatypes ((SeekEntryResult!12944 0))(
  ( (MissingZero!12944 (index!54170 (_ BitVec 32))) (Found!12944 (index!54171 (_ BitVec 32))) (Intermediate!12944 (undefined!13756 Bool) (index!54172 (_ BitVec 32)) (x!135867 (_ BitVec 32))) (Undefined!12944) (MissingVacant!12944 (index!54173 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101039 (_ BitVec 32)) SeekEntryResult!12944)

(assert (=> b!1517095 (= e!846480 (= (seekEntry!0 (select (arr!48752 a!2804) j!70) a!2804 mask!2512) (Found!12944 j!70)))))

(declare-fun b!1517096 () Bool)

(declare-fun e!846484 () Bool)

(declare-fun e!846482 () Bool)

(assert (=> b!1517096 (= e!846484 (not e!846482))))

(declare-fun res!1037069 () Bool)

(assert (=> b!1517096 (=> res!1037069 e!846482)))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517096 (= res!1037069 (or (not (= (select (arr!48752 a!2804) j!70) (select (store (arr!48752 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517096 e!846480))

(declare-fun res!1037076 () Bool)

(assert (=> b!1517096 (=> (not res!1037076) (not e!846480))))

(assert (=> b!1517096 (= res!1037076 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50712 0))(
  ( (Unit!50713) )
))
(declare-fun lt!657630 () Unit!50712)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50712)

(assert (=> b!1517096 (= lt!657630 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517097 () Bool)

(declare-fun res!1037074 () Bool)

(assert (=> b!1517097 (=> (not res!1037074) (not e!846481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517097 (= res!1037074 (validKeyInArray!0 (select (arr!48752 a!2804) j!70)))))

(declare-fun b!1517098 () Bool)

(declare-fun res!1037073 () Bool)

(assert (=> b!1517098 (=> (not res!1037073) (not e!846481))))

(assert (=> b!1517098 (= res!1037073 (validKeyInArray!0 (select (arr!48752 a!2804) i!961)))))

(declare-fun b!1517099 () Bool)

(declare-fun res!1037078 () Bool)

(assert (=> b!1517099 (=> (not res!1037078) (not e!846484))))

(declare-fun lt!657629 () SeekEntryResult!12944)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101039 (_ BitVec 32)) SeekEntryResult!12944)

(assert (=> b!1517099 (= res!1037078 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48752 a!2804) j!70) a!2804 mask!2512) lt!657629))))

(declare-fun b!1517100 () Bool)

(declare-fun e!846485 () Bool)

(assert (=> b!1517100 (= e!846485 true)))

(declare-fun lt!657627 () (_ BitVec 32))

(declare-fun lt!657628 () SeekEntryResult!12944)

(assert (=> b!1517100 (= lt!657628 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657627 (select (arr!48752 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517101 () Bool)

(assert (=> b!1517101 (= e!846482 e!846485)))

(declare-fun res!1037068 () Bool)

(assert (=> b!1517101 (=> res!1037068 e!846485)))

(assert (=> b!1517101 (= res!1037068 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657627 #b00000000000000000000000000000000) (bvsge lt!657627 (size!49303 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517101 (= lt!657627 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517102 () Bool)

(declare-fun res!1037072 () Bool)

(assert (=> b!1517102 (=> (not res!1037072) (not e!846481))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517102 (= res!1037072 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49303 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49303 a!2804))))))

(declare-fun res!1037071 () Bool)

(assert (=> start!129270 (=> (not res!1037071) (not e!846481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129270 (= res!1037071 (validMask!0 mask!2512))))

(assert (=> start!129270 e!846481))

(assert (=> start!129270 true))

(declare-fun array_inv!37697 (array!101039) Bool)

(assert (=> start!129270 (array_inv!37697 a!2804)))

(declare-fun b!1517093 () Bool)

(declare-fun res!1037070 () Bool)

(assert (=> b!1517093 (=> (not res!1037070) (not e!846484))))

(declare-fun lt!657631 () SeekEntryResult!12944)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517093 (= res!1037070 (= lt!657631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48752 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48752 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101040 (store (arr!48752 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49303 a!2804)) mask!2512)))))

(declare-fun b!1517103 () Bool)

(declare-fun res!1037067 () Bool)

(assert (=> b!1517103 (=> (not res!1037067) (not e!846481))))

(declare-datatypes ((List!35415 0))(
  ( (Nil!35412) (Cons!35411 (h!36824 (_ BitVec 64)) (t!50116 List!35415)) )
))
(declare-fun arrayNoDuplicates!0 (array!101039 (_ BitVec 32) List!35415) Bool)

(assert (=> b!1517103 (= res!1037067 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35412))))

(declare-fun b!1517104 () Bool)

(assert (=> b!1517104 (= e!846481 e!846484)))

(declare-fun res!1037075 () Bool)

(assert (=> b!1517104 (=> (not res!1037075) (not e!846484))))

(assert (=> b!1517104 (= res!1037075 (= lt!657631 lt!657629))))

(assert (=> b!1517104 (= lt!657629 (Intermediate!12944 false resIndex!21 resX!21))))

(assert (=> b!1517104 (= lt!657631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48752 a!2804) j!70) mask!2512) (select (arr!48752 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129270 res!1037071) b!1517094))

(assert (= (and b!1517094 res!1037077) b!1517098))

(assert (= (and b!1517098 res!1037073) b!1517097))

(assert (= (and b!1517097 res!1037074) b!1517092))

(assert (= (and b!1517092 res!1037079) b!1517103))

(assert (= (and b!1517103 res!1037067) b!1517102))

(assert (= (and b!1517102 res!1037072) b!1517104))

(assert (= (and b!1517104 res!1037075) b!1517099))

(assert (= (and b!1517099 res!1037078) b!1517093))

(assert (= (and b!1517093 res!1037070) b!1517096))

(assert (= (and b!1517096 res!1037076) b!1517095))

(assert (= (and b!1517096 (not res!1037069)) b!1517101))

(assert (= (and b!1517101 (not res!1037068)) b!1517100))

(declare-fun m!1400431 () Bool)

(assert (=> b!1517098 m!1400431))

(assert (=> b!1517098 m!1400431))

(declare-fun m!1400433 () Bool)

(assert (=> b!1517098 m!1400433))

(declare-fun m!1400435 () Bool)

(assert (=> b!1517095 m!1400435))

(assert (=> b!1517095 m!1400435))

(declare-fun m!1400437 () Bool)

(assert (=> b!1517095 m!1400437))

(assert (=> b!1517104 m!1400435))

(assert (=> b!1517104 m!1400435))

(declare-fun m!1400439 () Bool)

(assert (=> b!1517104 m!1400439))

(assert (=> b!1517104 m!1400439))

(assert (=> b!1517104 m!1400435))

(declare-fun m!1400441 () Bool)

(assert (=> b!1517104 m!1400441))

(declare-fun m!1400443 () Bool)

(assert (=> start!129270 m!1400443))

(declare-fun m!1400445 () Bool)

(assert (=> start!129270 m!1400445))

(declare-fun m!1400447 () Bool)

(assert (=> b!1517103 m!1400447))

(declare-fun m!1400449 () Bool)

(assert (=> b!1517101 m!1400449))

(assert (=> b!1517100 m!1400435))

(assert (=> b!1517100 m!1400435))

(declare-fun m!1400451 () Bool)

(assert (=> b!1517100 m!1400451))

(declare-fun m!1400453 () Bool)

(assert (=> b!1517092 m!1400453))

(assert (=> b!1517099 m!1400435))

(assert (=> b!1517099 m!1400435))

(declare-fun m!1400455 () Bool)

(assert (=> b!1517099 m!1400455))

(assert (=> b!1517096 m!1400435))

(declare-fun m!1400457 () Bool)

(assert (=> b!1517096 m!1400457))

(declare-fun m!1400459 () Bool)

(assert (=> b!1517096 m!1400459))

(declare-fun m!1400461 () Bool)

(assert (=> b!1517096 m!1400461))

(declare-fun m!1400463 () Bool)

(assert (=> b!1517096 m!1400463))

(assert (=> b!1517097 m!1400435))

(assert (=> b!1517097 m!1400435))

(declare-fun m!1400465 () Bool)

(assert (=> b!1517097 m!1400465))

(assert (=> b!1517093 m!1400459))

(assert (=> b!1517093 m!1400461))

(assert (=> b!1517093 m!1400461))

(declare-fun m!1400467 () Bool)

(assert (=> b!1517093 m!1400467))

(assert (=> b!1517093 m!1400467))

(assert (=> b!1517093 m!1400461))

(declare-fun m!1400469 () Bool)

(assert (=> b!1517093 m!1400469))

(check-sat (not b!1517100) (not b!1517098) (not b!1517095) (not b!1517092) (not b!1517099) (not b!1517101) (not b!1517104) (not b!1517103) (not b!1517096) (not b!1517093) (not b!1517097) (not start!129270))
(check-sat)
