; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128984 () Bool)

(assert start!128984)

(declare-fun b!1511436 () Bool)

(declare-fun res!1031412 () Bool)

(declare-fun e!843845 () Bool)

(assert (=> b!1511436 (=> (not res!1031412) (not e!843845))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100753 0))(
  ( (array!100754 (arr!48609 (Array (_ BitVec 32) (_ BitVec 64))) (size!49160 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100753)

(assert (=> b!1511436 (= res!1031412 (and (= (size!49160 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49160 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49160 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511437 () Bool)

(declare-fun res!1031421 () Bool)

(assert (=> b!1511437 (=> (not res!1031421) (not e!843845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511437 (= res!1031421 (validKeyInArray!0 (select (arr!48609 a!2804) j!70)))))

(declare-fun b!1511438 () Bool)

(declare-fun res!1031415 () Bool)

(declare-fun e!843847 () Bool)

(assert (=> b!1511438 (=> (not res!1031415) (not e!843847))))

(declare-datatypes ((SeekEntryResult!12801 0))(
  ( (MissingZero!12801 (index!53598 (_ BitVec 32))) (Found!12801 (index!53599 (_ BitVec 32))) (Intermediate!12801 (undefined!13613 Bool) (index!53600 (_ BitVec 32)) (x!135340 (_ BitVec 32))) (Undefined!12801) (MissingVacant!12801 (index!53601 (_ BitVec 32))) )
))
(declare-fun lt!655414 () SeekEntryResult!12801)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100753 (_ BitVec 32)) SeekEntryResult!12801)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511438 (= res!1031415 (= lt!655414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48609 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48609 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100754 (store (arr!48609 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49160 a!2804)) mask!2512)))))

(declare-fun b!1511439 () Bool)

(declare-fun res!1031414 () Bool)

(assert (=> b!1511439 (=> (not res!1031414) (not e!843845))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511439 (= res!1031414 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49160 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49160 a!2804))))))

(declare-fun b!1511440 () Bool)

(declare-fun res!1031418 () Bool)

(assert (=> b!1511440 (=> (not res!1031418) (not e!843847))))

(declare-fun lt!655413 () SeekEntryResult!12801)

(assert (=> b!1511440 (= res!1031418 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48609 a!2804) j!70) a!2804 mask!2512) lt!655413))))

(declare-fun b!1511441 () Bool)

(declare-fun res!1031416 () Bool)

(assert (=> b!1511441 (=> (not res!1031416) (not e!843845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100753 (_ BitVec 32)) Bool)

(assert (=> b!1511441 (= res!1031416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511442 () Bool)

(declare-fun res!1031411 () Bool)

(assert (=> b!1511442 (=> (not res!1031411) (not e!843845))))

(declare-datatypes ((List!35272 0))(
  ( (Nil!35269) (Cons!35268 (h!36681 (_ BitVec 64)) (t!49973 List!35272)) )
))
(declare-fun arrayNoDuplicates!0 (array!100753 (_ BitVec 32) List!35272) Bool)

(assert (=> b!1511442 (= res!1031411 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35269))))

(declare-fun res!1031420 () Bool)

(assert (=> start!128984 (=> (not res!1031420) (not e!843845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128984 (= res!1031420 (validMask!0 mask!2512))))

(assert (=> start!128984 e!843845))

(assert (=> start!128984 true))

(declare-fun array_inv!37554 (array!100753) Bool)

(assert (=> start!128984 (array_inv!37554 a!2804)))

(declare-fun b!1511443 () Bool)

(assert (=> b!1511443 (= e!843845 e!843847)))

(declare-fun res!1031419 () Bool)

(assert (=> b!1511443 (=> (not res!1031419) (not e!843847))))

(assert (=> b!1511443 (= res!1031419 (= lt!655414 lt!655413))))

(assert (=> b!1511443 (= lt!655413 (Intermediate!12801 false resIndex!21 resX!21))))

(assert (=> b!1511443 (= lt!655414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48609 a!2804) j!70) mask!2512) (select (arr!48609 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511444 () Bool)

(declare-fun res!1031417 () Bool)

(assert (=> b!1511444 (=> (not res!1031417) (not e!843845))))

(assert (=> b!1511444 (= res!1031417 (validKeyInArray!0 (select (arr!48609 a!2804) i!961)))))

(declare-fun e!843846 () Bool)

(declare-fun b!1511445 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100753 (_ BitVec 32)) SeekEntryResult!12801)

(assert (=> b!1511445 (= e!843846 (= (seekEntry!0 (select (arr!48609 a!2804) j!70) a!2804 mask!2512) (Found!12801 j!70)))))

(declare-fun b!1511446 () Bool)

(assert (=> b!1511446 (= e!843847 (not true))))

(assert (=> b!1511446 e!843846))

(declare-fun res!1031413 () Bool)

(assert (=> b!1511446 (=> (not res!1031413) (not e!843846))))

(assert (=> b!1511446 (= res!1031413 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50426 0))(
  ( (Unit!50427) )
))
(declare-fun lt!655412 () Unit!50426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50426)

(assert (=> b!1511446 (= lt!655412 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!128984 res!1031420) b!1511436))

(assert (= (and b!1511436 res!1031412) b!1511444))

(assert (= (and b!1511444 res!1031417) b!1511437))

(assert (= (and b!1511437 res!1031421) b!1511441))

(assert (= (and b!1511441 res!1031416) b!1511442))

(assert (= (and b!1511442 res!1031411) b!1511439))

(assert (= (and b!1511439 res!1031414) b!1511443))

(assert (= (and b!1511443 res!1031419) b!1511440))

(assert (= (and b!1511440 res!1031418) b!1511438))

(assert (= (and b!1511438 res!1031415) b!1511446))

(assert (= (and b!1511446 res!1031413) b!1511445))

(declare-fun m!1394193 () Bool)

(assert (=> b!1511444 m!1394193))

(assert (=> b!1511444 m!1394193))

(declare-fun m!1394195 () Bool)

(assert (=> b!1511444 m!1394195))

(declare-fun m!1394197 () Bool)

(assert (=> b!1511441 m!1394197))

(declare-fun m!1394199 () Bool)

(assert (=> b!1511437 m!1394199))

(assert (=> b!1511437 m!1394199))

(declare-fun m!1394201 () Bool)

(assert (=> b!1511437 m!1394201))

(declare-fun m!1394203 () Bool)

(assert (=> start!128984 m!1394203))

(declare-fun m!1394205 () Bool)

(assert (=> start!128984 m!1394205))

(declare-fun m!1394207 () Bool)

(assert (=> b!1511438 m!1394207))

(declare-fun m!1394209 () Bool)

(assert (=> b!1511438 m!1394209))

(assert (=> b!1511438 m!1394209))

(declare-fun m!1394211 () Bool)

(assert (=> b!1511438 m!1394211))

(assert (=> b!1511438 m!1394211))

(assert (=> b!1511438 m!1394209))

(declare-fun m!1394213 () Bool)

(assert (=> b!1511438 m!1394213))

(declare-fun m!1394215 () Bool)

(assert (=> b!1511446 m!1394215))

(declare-fun m!1394217 () Bool)

(assert (=> b!1511446 m!1394217))

(assert (=> b!1511443 m!1394199))

(assert (=> b!1511443 m!1394199))

(declare-fun m!1394219 () Bool)

(assert (=> b!1511443 m!1394219))

(assert (=> b!1511443 m!1394219))

(assert (=> b!1511443 m!1394199))

(declare-fun m!1394221 () Bool)

(assert (=> b!1511443 m!1394221))

(declare-fun m!1394223 () Bool)

(assert (=> b!1511442 m!1394223))

(assert (=> b!1511440 m!1394199))

(assert (=> b!1511440 m!1394199))

(declare-fun m!1394225 () Bool)

(assert (=> b!1511440 m!1394225))

(assert (=> b!1511445 m!1394199))

(assert (=> b!1511445 m!1394199))

(declare-fun m!1394227 () Bool)

(assert (=> b!1511445 m!1394227))

(push 1)

(assert (not b!1511446))

(assert (not b!1511437))

(assert (not start!128984))

(assert (not b!1511444))

(assert (not b!1511438))

(assert (not b!1511442))

(assert (not b!1511440))

(assert (not b!1511445))

