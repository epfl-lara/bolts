; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128992 () Bool)

(assert start!128992)

(declare-fun b!1511572 () Bool)

(declare-fun e!843898 () Bool)

(declare-fun e!843897 () Bool)

(assert (=> b!1511572 (= e!843898 e!843897)))

(declare-fun res!1031547 () Bool)

(assert (=> b!1511572 (=> (not res!1031547) (not e!843897))))

(declare-datatypes ((SeekEntryResult!12805 0))(
  ( (MissingZero!12805 (index!53614 (_ BitVec 32))) (Found!12805 (index!53615 (_ BitVec 32))) (Intermediate!12805 (undefined!13617 Bool) (index!53616 (_ BitVec 32)) (x!135360 (_ BitVec 32))) (Undefined!12805) (MissingVacant!12805 (index!53617 (_ BitVec 32))) )
))
(declare-fun lt!655448 () SeekEntryResult!12805)

(declare-fun lt!655449 () SeekEntryResult!12805)

(assert (=> b!1511572 (= res!1031547 (= lt!655448 lt!655449))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511572 (= lt!655449 (Intermediate!12805 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100761 0))(
  ( (array!100762 (arr!48613 (Array (_ BitVec 32) (_ BitVec 64))) (size!49164 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100761)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100761 (_ BitVec 32)) SeekEntryResult!12805)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511572 (= lt!655448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48613 a!2804) j!70) mask!2512) (select (arr!48613 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511573 () Bool)

(declare-fun e!843899 () Bool)

(declare-fun e!843895 () Bool)

(assert (=> b!1511573 (= e!843899 e!843895)))

(declare-fun res!1031553 () Bool)

(assert (=> b!1511573 (=> res!1031553 e!843895)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1511573 (= res!1031553 (or (not (= (select (arr!48613 a!2804) j!70) (select (store (arr!48613 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48613 a!2804) index!487) (select (arr!48613 a!2804) j!70)) (not (= (select (arr!48613 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511574 () Bool)

(declare-fun res!1031554 () Bool)

(assert (=> b!1511574 (=> (not res!1031554) (not e!843898))))

(assert (=> b!1511574 (= res!1031554 (and (= (size!49164 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49164 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49164 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511575 () Bool)

(declare-fun res!1031549 () Bool)

(assert (=> b!1511575 (=> (not res!1031549) (not e!843898))))

(declare-datatypes ((List!35276 0))(
  ( (Nil!35273) (Cons!35272 (h!36685 (_ BitVec 64)) (t!49977 List!35276)) )
))
(declare-fun arrayNoDuplicates!0 (array!100761 (_ BitVec 32) List!35276) Bool)

(assert (=> b!1511575 (= res!1031549 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35273))))

(declare-fun b!1511576 () Bool)

(assert (=> b!1511576 (= e!843897 (not true))))

(assert (=> b!1511576 e!843899))

(declare-fun res!1031552 () Bool)

(assert (=> b!1511576 (=> (not res!1031552) (not e!843899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100761 (_ BitVec 32)) Bool)

(assert (=> b!1511576 (= res!1031552 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50434 0))(
  ( (Unit!50435) )
))
(declare-fun lt!655450 () Unit!50434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50434)

(assert (=> b!1511576 (= lt!655450 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511577 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100761 (_ BitVec 32)) SeekEntryResult!12805)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100761 (_ BitVec 32)) SeekEntryResult!12805)

(assert (=> b!1511577 (= e!843895 (= (seekEntryOrOpen!0 (select (arr!48613 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48613 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511578 () Bool)

(declare-fun res!1031559 () Bool)

(assert (=> b!1511578 (=> (not res!1031559) (not e!843898))))

(assert (=> b!1511578 (= res!1031559 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49164 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49164 a!2804))))))

(declare-fun b!1511579 () Bool)

(declare-fun res!1031551 () Bool)

(assert (=> b!1511579 (=> (not res!1031551) (not e!843898))))

(assert (=> b!1511579 (= res!1031551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511581 () Bool)

(declare-fun res!1031556 () Bool)

(assert (=> b!1511581 (=> (not res!1031556) (not e!843898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511581 (= res!1031556 (validKeyInArray!0 (select (arr!48613 a!2804) i!961)))))

(declare-fun b!1511582 () Bool)

(declare-fun res!1031557 () Bool)

(assert (=> b!1511582 (=> (not res!1031557) (not e!843897))))

(assert (=> b!1511582 (= res!1031557 (= lt!655448 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48613 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48613 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100762 (store (arr!48613 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49164 a!2804)) mask!2512)))))

(declare-fun b!1511583 () Bool)

(declare-fun res!1031558 () Bool)

(assert (=> b!1511583 (=> (not res!1031558) (not e!843899))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100761 (_ BitVec 32)) SeekEntryResult!12805)

(assert (=> b!1511583 (= res!1031558 (= (seekEntry!0 (select (arr!48613 a!2804) j!70) a!2804 mask!2512) (Found!12805 j!70)))))

(declare-fun b!1511584 () Bool)

(declare-fun res!1031555 () Bool)

(assert (=> b!1511584 (=> (not res!1031555) (not e!843897))))

(assert (=> b!1511584 (= res!1031555 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48613 a!2804) j!70) a!2804 mask!2512) lt!655449))))

(declare-fun b!1511580 () Bool)

(declare-fun res!1031548 () Bool)

(assert (=> b!1511580 (=> (not res!1031548) (not e!843898))))

(assert (=> b!1511580 (= res!1031548 (validKeyInArray!0 (select (arr!48613 a!2804) j!70)))))

(declare-fun res!1031550 () Bool)

(assert (=> start!128992 (=> (not res!1031550) (not e!843898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128992 (= res!1031550 (validMask!0 mask!2512))))

(assert (=> start!128992 e!843898))

(assert (=> start!128992 true))

(declare-fun array_inv!37558 (array!100761) Bool)

(assert (=> start!128992 (array_inv!37558 a!2804)))

(assert (= (and start!128992 res!1031550) b!1511574))

(assert (= (and b!1511574 res!1031554) b!1511581))

(assert (= (and b!1511581 res!1031556) b!1511580))

(assert (= (and b!1511580 res!1031548) b!1511579))

(assert (= (and b!1511579 res!1031551) b!1511575))

(assert (= (and b!1511575 res!1031549) b!1511578))

(assert (= (and b!1511578 res!1031559) b!1511572))

(assert (= (and b!1511572 res!1031547) b!1511584))

(assert (= (and b!1511584 res!1031555) b!1511582))

(assert (= (and b!1511582 res!1031557) b!1511576))

(assert (= (and b!1511576 res!1031552) b!1511583))

(assert (= (and b!1511583 res!1031558) b!1511573))

(assert (= (and b!1511573 (not res!1031553)) b!1511577))

(declare-fun m!1394337 () Bool)

(assert (=> b!1511579 m!1394337))

(declare-fun m!1394339 () Bool)

(assert (=> b!1511576 m!1394339))

(declare-fun m!1394341 () Bool)

(assert (=> b!1511576 m!1394341))

(declare-fun m!1394343 () Bool)

(assert (=> b!1511580 m!1394343))

(assert (=> b!1511580 m!1394343))

(declare-fun m!1394345 () Bool)

(assert (=> b!1511580 m!1394345))

(assert (=> b!1511573 m!1394343))

(declare-fun m!1394347 () Bool)

(assert (=> b!1511573 m!1394347))

(declare-fun m!1394349 () Bool)

(assert (=> b!1511573 m!1394349))

(declare-fun m!1394351 () Bool)

(assert (=> b!1511573 m!1394351))

(assert (=> b!1511582 m!1394347))

(assert (=> b!1511582 m!1394349))

(assert (=> b!1511582 m!1394349))

(declare-fun m!1394353 () Bool)

(assert (=> b!1511582 m!1394353))

(assert (=> b!1511582 m!1394353))

(assert (=> b!1511582 m!1394349))

(declare-fun m!1394355 () Bool)

(assert (=> b!1511582 m!1394355))

(assert (=> b!1511577 m!1394343))

(assert (=> b!1511577 m!1394343))

(declare-fun m!1394357 () Bool)

(assert (=> b!1511577 m!1394357))

(assert (=> b!1511577 m!1394343))

(declare-fun m!1394359 () Bool)

(assert (=> b!1511577 m!1394359))

(declare-fun m!1394361 () Bool)

(assert (=> b!1511581 m!1394361))

(assert (=> b!1511581 m!1394361))

(declare-fun m!1394363 () Bool)

(assert (=> b!1511581 m!1394363))

(assert (=> b!1511583 m!1394343))

(assert (=> b!1511583 m!1394343))

(declare-fun m!1394365 () Bool)

(assert (=> b!1511583 m!1394365))

(assert (=> b!1511572 m!1394343))

(assert (=> b!1511572 m!1394343))

(declare-fun m!1394367 () Bool)

(assert (=> b!1511572 m!1394367))

(assert (=> b!1511572 m!1394367))

(assert (=> b!1511572 m!1394343))

(declare-fun m!1394369 () Bool)

(assert (=> b!1511572 m!1394369))

(declare-fun m!1394371 () Bool)

(assert (=> start!128992 m!1394371))

(declare-fun m!1394373 () Bool)

(assert (=> start!128992 m!1394373))

(assert (=> b!1511584 m!1394343))

(assert (=> b!1511584 m!1394343))

(declare-fun m!1394375 () Bool)

(assert (=> b!1511584 m!1394375))

(declare-fun m!1394377 () Bool)

(assert (=> b!1511575 m!1394377))

(push 1)

