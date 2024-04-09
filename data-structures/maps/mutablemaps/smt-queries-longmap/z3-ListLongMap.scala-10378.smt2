; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122232 () Bool)

(assert start!122232)

(declare-fun res!953284 () Bool)

(declare-fun e!802231 () Bool)

(assert (=> start!122232 (=> (not res!953284) (not e!802231))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122232 (= res!953284 (validMask!0 mask!2840))))

(assert (=> start!122232 e!802231))

(assert (=> start!122232 true))

(declare-datatypes ((array!96734 0))(
  ( (array!96735 (arr!46691 (Array (_ BitVec 32) (_ BitVec 64))) (size!47242 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96734)

(declare-fun array_inv!35636 (array!96734) Bool)

(assert (=> start!122232 (array_inv!35636 a!2901)))

(declare-fun b!1417444 () Bool)

(assert (=> b!1417444 (= e!802231 (not true))))

(declare-fun e!802232 () Bool)

(assert (=> b!1417444 e!802232))

(declare-fun res!953289 () Bool)

(assert (=> b!1417444 (=> (not res!953289) (not e!802232))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96734 (_ BitVec 32)) Bool)

(assert (=> b!1417444 (= res!953289 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47972 0))(
  ( (Unit!47973) )
))
(declare-fun lt!625335 () Unit!47972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96734 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47972)

(assert (=> b!1417444 (= lt!625335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11024 0))(
  ( (MissingZero!11024 (index!46487 (_ BitVec 32))) (Found!11024 (index!46488 (_ BitVec 32))) (Intermediate!11024 (undefined!11836 Bool) (index!46489 (_ BitVec 32)) (x!128094 (_ BitVec 32))) (Undefined!11024) (MissingVacant!11024 (index!46490 (_ BitVec 32))) )
))
(declare-fun lt!625336 () SeekEntryResult!11024)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96734 (_ BitVec 32)) SeekEntryResult!11024)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417444 (= lt!625336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46691 a!2901) j!112) mask!2840) (select (arr!46691 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417445 () Bool)

(declare-fun res!953288 () Bool)

(assert (=> b!1417445 (=> (not res!953288) (not e!802231))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1417445 (= res!953288 (and (= (size!47242 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47242 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47242 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417446 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96734 (_ BitVec 32)) SeekEntryResult!11024)

(assert (=> b!1417446 (= e!802232 (= (seekEntryOrOpen!0 (select (arr!46691 a!2901) j!112) a!2901 mask!2840) (Found!11024 j!112)))))

(declare-fun b!1417447 () Bool)

(declare-fun res!953283 () Bool)

(assert (=> b!1417447 (=> (not res!953283) (not e!802231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417447 (= res!953283 (validKeyInArray!0 (select (arr!46691 a!2901) i!1037)))))

(declare-fun b!1417448 () Bool)

(declare-fun res!953286 () Bool)

(assert (=> b!1417448 (=> (not res!953286) (not e!802231))))

(assert (=> b!1417448 (= res!953286 (validKeyInArray!0 (select (arr!46691 a!2901) j!112)))))

(declare-fun b!1417449 () Bool)

(declare-fun res!953287 () Bool)

(assert (=> b!1417449 (=> (not res!953287) (not e!802231))))

(assert (=> b!1417449 (= res!953287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417450 () Bool)

(declare-fun res!953285 () Bool)

(assert (=> b!1417450 (=> (not res!953285) (not e!802231))))

(declare-datatypes ((List!33390 0))(
  ( (Nil!33387) (Cons!33386 (h!34679 (_ BitVec 64)) (t!48091 List!33390)) )
))
(declare-fun arrayNoDuplicates!0 (array!96734 (_ BitVec 32) List!33390) Bool)

(assert (=> b!1417450 (= res!953285 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33387))))

(assert (= (and start!122232 res!953284) b!1417445))

(assert (= (and b!1417445 res!953288) b!1417447))

(assert (= (and b!1417447 res!953283) b!1417448))

(assert (= (and b!1417448 res!953286) b!1417449))

(assert (= (and b!1417449 res!953287) b!1417450))

(assert (= (and b!1417450 res!953285) b!1417444))

(assert (= (and b!1417444 res!953289) b!1417446))

(declare-fun m!1308241 () Bool)

(assert (=> b!1417447 m!1308241))

(assert (=> b!1417447 m!1308241))

(declare-fun m!1308243 () Bool)

(assert (=> b!1417447 m!1308243))

(declare-fun m!1308245 () Bool)

(assert (=> b!1417450 m!1308245))

(declare-fun m!1308247 () Bool)

(assert (=> b!1417448 m!1308247))

(assert (=> b!1417448 m!1308247))

(declare-fun m!1308249 () Bool)

(assert (=> b!1417448 m!1308249))

(declare-fun m!1308251 () Bool)

(assert (=> start!122232 m!1308251))

(declare-fun m!1308253 () Bool)

(assert (=> start!122232 m!1308253))

(assert (=> b!1417446 m!1308247))

(assert (=> b!1417446 m!1308247))

(declare-fun m!1308255 () Bool)

(assert (=> b!1417446 m!1308255))

(declare-fun m!1308257 () Bool)

(assert (=> b!1417449 m!1308257))

(assert (=> b!1417444 m!1308247))

(declare-fun m!1308259 () Bool)

(assert (=> b!1417444 m!1308259))

(assert (=> b!1417444 m!1308247))

(declare-fun m!1308261 () Bool)

(assert (=> b!1417444 m!1308261))

(assert (=> b!1417444 m!1308259))

(assert (=> b!1417444 m!1308247))

(declare-fun m!1308263 () Bool)

(assert (=> b!1417444 m!1308263))

(declare-fun m!1308265 () Bool)

(assert (=> b!1417444 m!1308265))

(check-sat (not b!1417448) (not b!1417446) (not b!1417447) (not b!1417449) (not b!1417444) (not start!122232) (not b!1417450))
