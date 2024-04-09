; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129228 () Bool)

(assert start!129228)

(declare-fun b!1516281 () Bool)

(declare-fun res!1036259 () Bool)

(declare-fun e!846111 () Bool)

(assert (=> b!1516281 (=> (not res!1036259) (not e!846111))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100997 0))(
  ( (array!100998 (arr!48731 (Array (_ BitVec 32) (_ BitVec 64))) (size!49282 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100997)

(assert (=> b!1516281 (= res!1036259 (and (= (size!49282 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49282 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49282 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516282 () Bool)

(declare-fun res!1036264 () Bool)

(declare-fun e!846113 () Bool)

(assert (=> b!1516282 (=> (not res!1036264) (not e!846113))))

(declare-datatypes ((SeekEntryResult!12923 0))(
  ( (MissingZero!12923 (index!54086 (_ BitVec 32))) (Found!12923 (index!54087 (_ BitVec 32))) (Intermediate!12923 (undefined!13735 Bool) (index!54088 (_ BitVec 32)) (x!135790 (_ BitVec 32))) (Undefined!12923) (MissingVacant!12923 (index!54089 (_ BitVec 32))) )
))
(declare-fun lt!657321 () SeekEntryResult!12923)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100997 (_ BitVec 32)) SeekEntryResult!12923)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516282 (= res!1036264 (= lt!657321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48731 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48731 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100998 (store (arr!48731 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49282 a!2804)) mask!2512)))))

(declare-fun b!1516283 () Bool)

(declare-fun res!1036266 () Bool)

(assert (=> b!1516283 (=> (not res!1036266) (not e!846111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516283 (= res!1036266 (validKeyInArray!0 (select (arr!48731 a!2804) i!961)))))

(declare-fun b!1516284 () Bool)

(declare-fun res!1036263 () Bool)

(assert (=> b!1516284 (=> (not res!1036263) (not e!846113))))

(declare-fun lt!657322 () SeekEntryResult!12923)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1516284 (= res!1036263 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48731 a!2804) j!70) a!2804 mask!2512) lt!657322))))

(declare-fun b!1516285 () Bool)

(declare-fun res!1036258 () Bool)

(assert (=> b!1516285 (=> (not res!1036258) (not e!846111))))

(declare-datatypes ((List!35394 0))(
  ( (Nil!35391) (Cons!35390 (h!36803 (_ BitVec 64)) (t!50095 List!35394)) )
))
(declare-fun arrayNoDuplicates!0 (array!100997 (_ BitVec 32) List!35394) Bool)

(assert (=> b!1516285 (= res!1036258 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35391))))

(declare-fun res!1036265 () Bool)

(assert (=> start!129228 (=> (not res!1036265) (not e!846111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129228 (= res!1036265 (validMask!0 mask!2512))))

(assert (=> start!129228 e!846111))

(assert (=> start!129228 true))

(declare-fun array_inv!37676 (array!100997) Bool)

(assert (=> start!129228 (array_inv!37676 a!2804)))

(declare-fun b!1516286 () Bool)

(declare-fun res!1036261 () Bool)

(assert (=> b!1516286 (=> (not res!1036261) (not e!846111))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516286 (= res!1036261 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49282 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49282 a!2804))))))

(declare-fun b!1516287 () Bool)

(assert (=> b!1516287 (= e!846111 e!846113)))

(declare-fun res!1036260 () Bool)

(assert (=> b!1516287 (=> (not res!1036260) (not e!846113))))

(assert (=> b!1516287 (= res!1036260 (= lt!657321 lt!657322))))

(assert (=> b!1516287 (= lt!657322 (Intermediate!12923 false resIndex!21 resX!21))))

(assert (=> b!1516287 (= lt!657321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48731 a!2804) j!70) mask!2512) (select (arr!48731 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516288 () Bool)

(declare-fun res!1036262 () Bool)

(assert (=> b!1516288 (=> (not res!1036262) (not e!846111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100997 (_ BitVec 32)) Bool)

(assert (=> b!1516288 (= res!1036262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!846112 () Bool)

(declare-fun b!1516289 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100997 (_ BitVec 32)) SeekEntryResult!12923)

(assert (=> b!1516289 (= e!846112 (= (seekEntry!0 (select (arr!48731 a!2804) j!70) a!2804 mask!2512) (Found!12923 j!70)))))

(declare-fun b!1516290 () Bool)

(declare-fun res!1036256 () Bool)

(assert (=> b!1516290 (=> (not res!1036256) (not e!846111))))

(assert (=> b!1516290 (= res!1036256 (validKeyInArray!0 (select (arr!48731 a!2804) j!70)))))

(declare-fun b!1516291 () Bool)

(assert (=> b!1516291 (= e!846113 (not true))))

(assert (=> b!1516291 e!846112))

(declare-fun res!1036257 () Bool)

(assert (=> b!1516291 (=> (not res!1036257) (not e!846112))))

(assert (=> b!1516291 (= res!1036257 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50670 0))(
  ( (Unit!50671) )
))
(declare-fun lt!657320 () Unit!50670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50670)

(assert (=> b!1516291 (= lt!657320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129228 res!1036265) b!1516281))

(assert (= (and b!1516281 res!1036259) b!1516283))

(assert (= (and b!1516283 res!1036266) b!1516290))

(assert (= (and b!1516290 res!1036256) b!1516288))

(assert (= (and b!1516288 res!1036262) b!1516285))

(assert (= (and b!1516285 res!1036258) b!1516286))

(assert (= (and b!1516286 res!1036261) b!1516287))

(assert (= (and b!1516287 res!1036260) b!1516284))

(assert (= (and b!1516284 res!1036263) b!1516282))

(assert (= (and b!1516282 res!1036264) b!1516291))

(assert (= (and b!1516291 res!1036257) b!1516289))

(declare-fun m!1399599 () Bool)

(assert (=> b!1516284 m!1399599))

(assert (=> b!1516284 m!1399599))

(declare-fun m!1399601 () Bool)

(assert (=> b!1516284 m!1399601))

(assert (=> b!1516290 m!1399599))

(assert (=> b!1516290 m!1399599))

(declare-fun m!1399603 () Bool)

(assert (=> b!1516290 m!1399603))

(assert (=> b!1516287 m!1399599))

(assert (=> b!1516287 m!1399599))

(declare-fun m!1399605 () Bool)

(assert (=> b!1516287 m!1399605))

(assert (=> b!1516287 m!1399605))

(assert (=> b!1516287 m!1399599))

(declare-fun m!1399607 () Bool)

(assert (=> b!1516287 m!1399607))

(assert (=> b!1516289 m!1399599))

(assert (=> b!1516289 m!1399599))

(declare-fun m!1399609 () Bool)

(assert (=> b!1516289 m!1399609))

(declare-fun m!1399611 () Bool)

(assert (=> b!1516285 m!1399611))

(declare-fun m!1399613 () Bool)

(assert (=> start!129228 m!1399613))

(declare-fun m!1399615 () Bool)

(assert (=> start!129228 m!1399615))

(declare-fun m!1399617 () Bool)

(assert (=> b!1516291 m!1399617))

(declare-fun m!1399619 () Bool)

(assert (=> b!1516291 m!1399619))

(declare-fun m!1399621 () Bool)

(assert (=> b!1516283 m!1399621))

(assert (=> b!1516283 m!1399621))

(declare-fun m!1399623 () Bool)

(assert (=> b!1516283 m!1399623))

(declare-fun m!1399625 () Bool)

(assert (=> b!1516282 m!1399625))

(declare-fun m!1399627 () Bool)

(assert (=> b!1516282 m!1399627))

(assert (=> b!1516282 m!1399627))

(declare-fun m!1399629 () Bool)

(assert (=> b!1516282 m!1399629))

(assert (=> b!1516282 m!1399629))

(assert (=> b!1516282 m!1399627))

(declare-fun m!1399631 () Bool)

(assert (=> b!1516282 m!1399631))

(declare-fun m!1399633 () Bool)

(assert (=> b!1516288 m!1399633))

(check-sat (not b!1516291) (not b!1516284) (not b!1516289) (not b!1516288) (not start!129228) (not b!1516282) (not b!1516283) (not b!1516287) (not b!1516285) (not b!1516290))
(check-sat)
