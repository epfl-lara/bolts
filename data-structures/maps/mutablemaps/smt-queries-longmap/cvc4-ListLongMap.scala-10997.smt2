; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128864 () Bool)

(assert start!128864)

(declare-fun b!1509457 () Bool)

(declare-fun res!1029433 () Bool)

(declare-fun e!843127 () Bool)

(assert (=> b!1509457 (=> (not res!1029433) (not e!843127))))

(declare-datatypes ((array!100633 0))(
  ( (array!100634 (arr!48549 (Array (_ BitVec 32) (_ BitVec 64))) (size!49100 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100633)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100633 (_ BitVec 32)) Bool)

(assert (=> b!1509457 (= res!1029433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509458 () Bool)

(declare-fun res!1029434 () Bool)

(assert (=> b!1509458 (=> (not res!1029434) (not e!843127))))

(declare-datatypes ((List!35212 0))(
  ( (Nil!35209) (Cons!35208 (h!36621 (_ BitVec 64)) (t!49913 List!35212)) )
))
(declare-fun arrayNoDuplicates!0 (array!100633 (_ BitVec 32) List!35212) Bool)

(assert (=> b!1509458 (= res!1029434 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35209))))

(declare-fun b!1509459 () Bool)

(declare-fun e!843128 () Bool)

(assert (=> b!1509459 (= e!843127 e!843128)))

(declare-fun res!1029441 () Bool)

(assert (=> b!1509459 (=> (not res!1029441) (not e!843128))))

(declare-datatypes ((SeekEntryResult!12741 0))(
  ( (MissingZero!12741 (index!53358 (_ BitVec 32))) (Found!12741 (index!53359 (_ BitVec 32))) (Intermediate!12741 (undefined!13553 Bool) (index!53360 (_ BitVec 32)) (x!135120 (_ BitVec 32))) (Undefined!12741) (MissingVacant!12741 (index!53361 (_ BitVec 32))) )
))
(declare-fun lt!654873 () SeekEntryResult!12741)

(declare-fun lt!654874 () SeekEntryResult!12741)

(assert (=> b!1509459 (= res!1029441 (= lt!654873 lt!654874))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509459 (= lt!654874 (Intermediate!12741 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100633 (_ BitVec 32)) SeekEntryResult!12741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509459 (= lt!654873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48549 a!2804) j!70) mask!2512) (select (arr!48549 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509460 () Bool)

(declare-fun res!1029437 () Bool)

(assert (=> b!1509460 (=> (not res!1029437) (not e!843127))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509460 (= res!1029437 (and (= (size!49100 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49100 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49100 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1029435 () Bool)

(assert (=> start!128864 (=> (not res!1029435) (not e!843127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128864 (= res!1029435 (validMask!0 mask!2512))))

(assert (=> start!128864 e!843127))

(assert (=> start!128864 true))

(declare-fun array_inv!37494 (array!100633) Bool)

(assert (=> start!128864 (array_inv!37494 a!2804)))

(declare-fun b!1509461 () Bool)

(declare-fun res!1029432 () Bool)

(assert (=> b!1509461 (=> (not res!1029432) (not e!843128))))

(assert (=> b!1509461 (= res!1029432 (= lt!654873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48549 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48549 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100634 (store (arr!48549 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49100 a!2804)) mask!2512)))))

(declare-fun b!1509462 () Bool)

(declare-fun res!1029436 () Bool)

(assert (=> b!1509462 (=> (not res!1029436) (not e!843128))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1509462 (= res!1029436 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48549 a!2804) j!70) a!2804 mask!2512) lt!654874))))

(declare-fun b!1509463 () Bool)

(assert (=> b!1509463 (= e!843128 (not true))))

(assert (=> b!1509463 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50306 0))(
  ( (Unit!50307) )
))
(declare-fun lt!654872 () Unit!50306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50306)

(assert (=> b!1509463 (= lt!654872 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509464 () Bool)

(declare-fun res!1029438 () Bool)

(assert (=> b!1509464 (=> (not res!1029438) (not e!843127))))

(assert (=> b!1509464 (= res!1029438 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49100 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49100 a!2804))))))

(declare-fun b!1509465 () Bool)

(declare-fun res!1029439 () Bool)

(assert (=> b!1509465 (=> (not res!1029439) (not e!843127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509465 (= res!1029439 (validKeyInArray!0 (select (arr!48549 a!2804) i!961)))))

(declare-fun b!1509466 () Bool)

(declare-fun res!1029440 () Bool)

(assert (=> b!1509466 (=> (not res!1029440) (not e!843127))))

(assert (=> b!1509466 (= res!1029440 (validKeyInArray!0 (select (arr!48549 a!2804) j!70)))))

(assert (= (and start!128864 res!1029435) b!1509460))

(assert (= (and b!1509460 res!1029437) b!1509465))

(assert (= (and b!1509465 res!1029439) b!1509466))

(assert (= (and b!1509466 res!1029440) b!1509457))

(assert (= (and b!1509457 res!1029433) b!1509458))

(assert (= (and b!1509458 res!1029434) b!1509464))

(assert (= (and b!1509464 res!1029438) b!1509459))

(assert (= (and b!1509459 res!1029441) b!1509462))

(assert (= (and b!1509462 res!1029436) b!1509461))

(assert (= (and b!1509461 res!1029432) b!1509463))

(declare-fun m!1391999 () Bool)

(assert (=> b!1509462 m!1391999))

(assert (=> b!1509462 m!1391999))

(declare-fun m!1392001 () Bool)

(assert (=> b!1509462 m!1392001))

(declare-fun m!1392003 () Bool)

(assert (=> b!1509457 m!1392003))

(declare-fun m!1392005 () Bool)

(assert (=> b!1509461 m!1392005))

(declare-fun m!1392007 () Bool)

(assert (=> b!1509461 m!1392007))

(assert (=> b!1509461 m!1392007))

(declare-fun m!1392009 () Bool)

(assert (=> b!1509461 m!1392009))

(assert (=> b!1509461 m!1392009))

(assert (=> b!1509461 m!1392007))

(declare-fun m!1392011 () Bool)

(assert (=> b!1509461 m!1392011))

(declare-fun m!1392013 () Bool)

(assert (=> b!1509458 m!1392013))

(declare-fun m!1392015 () Bool)

(assert (=> b!1509465 m!1392015))

(assert (=> b!1509465 m!1392015))

(declare-fun m!1392017 () Bool)

(assert (=> b!1509465 m!1392017))

(declare-fun m!1392019 () Bool)

(assert (=> start!128864 m!1392019))

(declare-fun m!1392021 () Bool)

(assert (=> start!128864 m!1392021))

(assert (=> b!1509459 m!1391999))

(assert (=> b!1509459 m!1391999))

(declare-fun m!1392023 () Bool)

(assert (=> b!1509459 m!1392023))

(assert (=> b!1509459 m!1392023))

(assert (=> b!1509459 m!1391999))

(declare-fun m!1392025 () Bool)

(assert (=> b!1509459 m!1392025))

(declare-fun m!1392027 () Bool)

(assert (=> b!1509463 m!1392027))

(declare-fun m!1392029 () Bool)

(assert (=> b!1509463 m!1392029))

(assert (=> b!1509466 m!1391999))

(assert (=> b!1509466 m!1391999))

(declare-fun m!1392031 () Bool)

(assert (=> b!1509466 m!1392031))

(push 1)

