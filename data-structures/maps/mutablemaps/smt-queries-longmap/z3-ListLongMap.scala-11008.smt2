; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128928 () Bool)

(assert start!128928)

(declare-fun b!1510512 () Bool)

(declare-fun res!1030495 () Bool)

(declare-fun e!843511 () Bool)

(assert (=> b!1510512 (=> (not res!1030495) (not e!843511))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100697 0))(
  ( (array!100698 (arr!48581 (Array (_ BitVec 32) (_ BitVec 64))) (size!49132 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100697)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510512 (= res!1030495 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49132 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49132 a!2804))))))

(declare-fun b!1510513 () Bool)

(declare-fun res!1030488 () Bool)

(assert (=> b!1510513 (=> (not res!1030488) (not e!843511))))

(declare-datatypes ((List!35244 0))(
  ( (Nil!35241) (Cons!35240 (h!36653 (_ BitVec 64)) (t!49945 List!35244)) )
))
(declare-fun arrayNoDuplicates!0 (array!100697 (_ BitVec 32) List!35244) Bool)

(assert (=> b!1510513 (= res!1030488 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35241))))

(declare-fun b!1510514 () Bool)

(declare-fun res!1030497 () Bool)

(assert (=> b!1510514 (=> (not res!1030497) (not e!843511))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510514 (= res!1030497 (validKeyInArray!0 (select (arr!48581 a!2804) i!961)))))

(declare-fun b!1510515 () Bool)

(declare-fun res!1030493 () Bool)

(declare-fun e!843509 () Bool)

(assert (=> b!1510515 (=> (not res!1030493) (not e!843509))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12773 0))(
  ( (MissingZero!12773 (index!53486 (_ BitVec 32))) (Found!12773 (index!53487 (_ BitVec 32))) (Intermediate!12773 (undefined!13585 Bool) (index!53488 (_ BitVec 32)) (x!135240 (_ BitVec 32))) (Undefined!12773) (MissingVacant!12773 (index!53489 (_ BitVec 32))) )
))
(declare-fun lt!655162 () SeekEntryResult!12773)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100697 (_ BitVec 32)) SeekEntryResult!12773)

(assert (=> b!1510515 (= res!1030493 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48581 a!2804) j!70) a!2804 mask!2512) lt!655162))))

(declare-fun res!1030496 () Bool)

(assert (=> start!128928 (=> (not res!1030496) (not e!843511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128928 (= res!1030496 (validMask!0 mask!2512))))

(assert (=> start!128928 e!843511))

(assert (=> start!128928 true))

(declare-fun array_inv!37526 (array!100697) Bool)

(assert (=> start!128928 (array_inv!37526 a!2804)))

(declare-fun e!843510 () Bool)

(declare-fun b!1510516 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100697 (_ BitVec 32)) SeekEntryResult!12773)

(assert (=> b!1510516 (= e!843510 (= (seekEntry!0 (select (arr!48581 a!2804) j!70) a!2804 mask!2512) (Found!12773 j!70)))))

(declare-fun b!1510517 () Bool)

(assert (=> b!1510517 (= e!843511 e!843509)))

(declare-fun res!1030487 () Bool)

(assert (=> b!1510517 (=> (not res!1030487) (not e!843509))))

(declare-fun lt!655160 () SeekEntryResult!12773)

(assert (=> b!1510517 (= res!1030487 (= lt!655160 lt!655162))))

(assert (=> b!1510517 (= lt!655162 (Intermediate!12773 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510517 (= lt!655160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48581 a!2804) j!70) mask!2512) (select (arr!48581 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510518 () Bool)

(declare-fun res!1030494 () Bool)

(assert (=> b!1510518 (=> (not res!1030494) (not e!843511))))

(assert (=> b!1510518 (= res!1030494 (and (= (size!49132 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49132 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49132 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510519 () Bool)

(assert (=> b!1510519 (= e!843509 (not (or (not (= (select (arr!48581 a!2804) j!70) (select (store (arr!48581 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48581 a!2804) index!487) (select (arr!48581 a!2804) j!70)) (not (= (select (arr!48581 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1510519 e!843510))

(declare-fun res!1030492 () Bool)

(assert (=> b!1510519 (=> (not res!1030492) (not e!843510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100697 (_ BitVec 32)) Bool)

(assert (=> b!1510519 (= res!1030492 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50370 0))(
  ( (Unit!50371) )
))
(declare-fun lt!655161 () Unit!50370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50370)

(assert (=> b!1510519 (= lt!655161 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510520 () Bool)

(declare-fun res!1030489 () Bool)

(assert (=> b!1510520 (=> (not res!1030489) (not e!843511))))

(assert (=> b!1510520 (= res!1030489 (validKeyInArray!0 (select (arr!48581 a!2804) j!70)))))

(declare-fun b!1510521 () Bool)

(declare-fun res!1030490 () Bool)

(assert (=> b!1510521 (=> (not res!1030490) (not e!843509))))

(assert (=> b!1510521 (= res!1030490 (= lt!655160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48581 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48581 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100698 (store (arr!48581 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49132 a!2804)) mask!2512)))))

(declare-fun b!1510522 () Bool)

(declare-fun res!1030491 () Bool)

(assert (=> b!1510522 (=> (not res!1030491) (not e!843511))))

(assert (=> b!1510522 (= res!1030491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128928 res!1030496) b!1510518))

(assert (= (and b!1510518 res!1030494) b!1510514))

(assert (= (and b!1510514 res!1030497) b!1510520))

(assert (= (and b!1510520 res!1030489) b!1510522))

(assert (= (and b!1510522 res!1030491) b!1510513))

(assert (= (and b!1510513 res!1030488) b!1510512))

(assert (= (and b!1510512 res!1030495) b!1510517))

(assert (= (and b!1510517 res!1030487) b!1510515))

(assert (= (and b!1510515 res!1030493) b!1510521))

(assert (= (and b!1510521 res!1030490) b!1510519))

(assert (= (and b!1510519 res!1030492) b!1510516))

(declare-fun m!1393169 () Bool)

(assert (=> b!1510519 m!1393169))

(declare-fun m!1393171 () Bool)

(assert (=> b!1510519 m!1393171))

(declare-fun m!1393173 () Bool)

(assert (=> b!1510519 m!1393173))

(declare-fun m!1393175 () Bool)

(assert (=> b!1510519 m!1393175))

(declare-fun m!1393177 () Bool)

(assert (=> b!1510519 m!1393177))

(declare-fun m!1393179 () Bool)

(assert (=> b!1510519 m!1393179))

(declare-fun m!1393181 () Bool)

(assert (=> b!1510514 m!1393181))

(assert (=> b!1510514 m!1393181))

(declare-fun m!1393183 () Bool)

(assert (=> b!1510514 m!1393183))

(assert (=> b!1510520 m!1393169))

(assert (=> b!1510520 m!1393169))

(declare-fun m!1393185 () Bool)

(assert (=> b!1510520 m!1393185))

(declare-fun m!1393187 () Bool)

(assert (=> start!128928 m!1393187))

(declare-fun m!1393189 () Bool)

(assert (=> start!128928 m!1393189))

(declare-fun m!1393191 () Bool)

(assert (=> b!1510513 m!1393191))

(assert (=> b!1510517 m!1393169))

(assert (=> b!1510517 m!1393169))

(declare-fun m!1393193 () Bool)

(assert (=> b!1510517 m!1393193))

(assert (=> b!1510517 m!1393193))

(assert (=> b!1510517 m!1393169))

(declare-fun m!1393195 () Bool)

(assert (=> b!1510517 m!1393195))

(assert (=> b!1510515 m!1393169))

(assert (=> b!1510515 m!1393169))

(declare-fun m!1393197 () Bool)

(assert (=> b!1510515 m!1393197))

(assert (=> b!1510521 m!1393173))

(assert (=> b!1510521 m!1393177))

(assert (=> b!1510521 m!1393177))

(declare-fun m!1393199 () Bool)

(assert (=> b!1510521 m!1393199))

(assert (=> b!1510521 m!1393199))

(assert (=> b!1510521 m!1393177))

(declare-fun m!1393201 () Bool)

(assert (=> b!1510521 m!1393201))

(declare-fun m!1393203 () Bool)

(assert (=> b!1510522 m!1393203))

(assert (=> b!1510516 m!1393169))

(assert (=> b!1510516 m!1393169))

(declare-fun m!1393205 () Bool)

(assert (=> b!1510516 m!1393205))

(check-sat (not b!1510516) (not b!1510515) (not b!1510513) (not b!1510521) (not b!1510519) (not b!1510522) (not b!1510517) (not b!1510514) (not start!128928) (not b!1510520))
(check-sat)
