; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125040 () Bool)

(assert start!125040)

(declare-fun b!1453500 () Bool)

(declare-fun e!818126 () Bool)

(assert (=> b!1453500 (= e!818126 (not true))))

(declare-fun e!818123 () Bool)

(assert (=> b!1453500 e!818123))

(declare-fun res!984605 () Bool)

(assert (=> b!1453500 (=> (not res!984605) (not e!818123))))

(declare-datatypes ((array!98405 0))(
  ( (array!98406 (arr!47486 (Array (_ BitVec 32) (_ BitVec 64))) (size!48037 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98405)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98405 (_ BitVec 32)) Bool)

(assert (=> b!1453500 (= res!984605 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48966 0))(
  ( (Unit!48967) )
))
(declare-fun lt!637221 () Unit!48966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48966)

(assert (=> b!1453500 (= lt!637221 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453501 () Bool)

(declare-fun e!818122 () Bool)

(declare-fun e!818118 () Bool)

(assert (=> b!1453501 (= e!818122 e!818118)))

(declare-fun res!984611 () Bool)

(assert (=> b!1453501 (=> (not res!984611) (not e!818118))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453501 (= res!984611 (= (select (store (arr!47486 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637224 () array!98405)

(assert (=> b!1453501 (= lt!637224 (array!98406 (store (arr!47486 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48037 a!2862)))))

(declare-fun b!1453503 () Bool)

(declare-fun e!818120 () Bool)

(assert (=> b!1453503 (= e!818123 e!818120)))

(declare-fun res!984615 () Bool)

(assert (=> b!1453503 (=> res!984615 e!818120)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!637225 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1453503 (= res!984615 (or (and (= (select (arr!47486 a!2862) index!646) lt!637225) (= (select (arr!47486 a!2862) index!646) (select (arr!47486 a!2862) j!93))) (= (select (arr!47486 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453503 (= lt!637225 (select (store (arr!47486 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453504 () Bool)

(declare-fun e!818121 () Bool)

(assert (=> b!1453504 (= e!818120 e!818121)))

(declare-fun res!984612 () Bool)

(assert (=> b!1453504 (=> (not res!984612) (not e!818121))))

(assert (=> b!1453504 (= res!984612 (and (= index!646 intermediateAfterIndex!19) (= lt!637225 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453505 () Bool)

(declare-fun res!984618 () Bool)

(declare-fun e!818124 () Bool)

(assert (=> b!1453505 (=> (not res!984618) (not e!818124))))

(declare-datatypes ((SeekEntryResult!11761 0))(
  ( (MissingZero!11761 (index!49435 (_ BitVec 32))) (Found!11761 (index!49436 (_ BitVec 32))) (Intermediate!11761 (undefined!12573 Bool) (index!49437 (_ BitVec 32)) (x!131077 (_ BitVec 32))) (Undefined!11761) (MissingVacant!11761 (index!49438 (_ BitVec 32))) )
))
(declare-fun lt!637220 () SeekEntryResult!11761)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98405 (_ BitVec 32)) SeekEntryResult!11761)

(assert (=> b!1453505 (= res!984618 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47486 a!2862) j!93) a!2862 mask!2687) lt!637220))))

(declare-fun b!1453506 () Bool)

(assert (=> b!1453506 (= e!818124 e!818126)))

(declare-fun res!984619 () Bool)

(assert (=> b!1453506 (=> (not res!984619) (not e!818126))))

(declare-fun lt!637223 () SeekEntryResult!11761)

(assert (=> b!1453506 (= res!984619 (= lt!637223 (Intermediate!11761 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!637222 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453506 (= lt!637223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637222 mask!2687) lt!637222 lt!637224 mask!2687))))

(assert (=> b!1453506 (= lt!637222 (select (store (arr!47486 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453507 () Bool)

(declare-fun res!984608 () Bool)

(assert (=> b!1453507 (=> (not res!984608) (not e!818122))))

(assert (=> b!1453507 (= res!984608 (and (= (size!48037 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48037 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48037 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453508 () Bool)

(declare-fun e!818125 () Bool)

(assert (=> b!1453508 (= e!818125 (= lt!637223 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637222 lt!637224 mask!2687)))))

(declare-fun b!1453509 () Bool)

(declare-fun res!984621 () Bool)

(assert (=> b!1453509 (=> (not res!984621) (not e!818122))))

(declare-datatypes ((List!34167 0))(
  ( (Nil!34164) (Cons!34163 (h!35513 (_ BitVec 64)) (t!48868 List!34167)) )
))
(declare-fun arrayNoDuplicates!0 (array!98405 (_ BitVec 32) List!34167) Bool)

(assert (=> b!1453509 (= res!984621 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34164))))

(declare-fun b!1453510 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98405 (_ BitVec 32)) SeekEntryResult!11761)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98405 (_ BitVec 32)) SeekEntryResult!11761)

(assert (=> b!1453510 (= e!818121 (= (seekEntryOrOpen!0 lt!637222 lt!637224 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637222 lt!637224 mask!2687)))))

(declare-fun b!1453511 () Bool)

(declare-fun res!984604 () Bool)

(assert (=> b!1453511 (=> (not res!984604) (not e!818126))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1453511 (= res!984604 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453512 () Bool)

(declare-fun res!984607 () Bool)

(assert (=> b!1453512 (=> (not res!984607) (not e!818123))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1453512 (= res!984607 (or (= (select (arr!47486 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47486 a!2862) intermediateBeforeIndex!19) (select (arr!47486 a!2862) j!93))))))

(declare-fun res!984617 () Bool)

(assert (=> start!125040 (=> (not res!984617) (not e!818122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125040 (= res!984617 (validMask!0 mask!2687))))

(assert (=> start!125040 e!818122))

(assert (=> start!125040 true))

(declare-fun array_inv!36431 (array!98405) Bool)

(assert (=> start!125040 (array_inv!36431 a!2862)))

(declare-fun b!1453502 () Bool)

(declare-fun res!984610 () Bool)

(assert (=> b!1453502 (=> (not res!984610) (not e!818126))))

(assert (=> b!1453502 (= res!984610 e!818125)))

(declare-fun c!133961 () Bool)

(assert (=> b!1453502 (= c!133961 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453513 () Bool)

(declare-fun res!984613 () Bool)

(assert (=> b!1453513 (=> (not res!984613) (not e!818122))))

(assert (=> b!1453513 (= res!984613 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48037 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48037 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48037 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453514 () Bool)

(declare-fun res!984620 () Bool)

(assert (=> b!1453514 (=> (not res!984620) (not e!818122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453514 (= res!984620 (validKeyInArray!0 (select (arr!47486 a!2862) i!1006)))))

(declare-fun b!1453515 () Bool)

(assert (=> b!1453515 (= e!818125 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637222 lt!637224 mask!2687) (seekEntryOrOpen!0 lt!637222 lt!637224 mask!2687)))))

(declare-fun b!1453516 () Bool)

(assert (=> b!1453516 (= e!818118 e!818124)))

(declare-fun res!984614 () Bool)

(assert (=> b!1453516 (=> (not res!984614) (not e!818124))))

(assert (=> b!1453516 (= res!984614 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47486 a!2862) j!93) mask!2687) (select (arr!47486 a!2862) j!93) a!2862 mask!2687) lt!637220))))

(assert (=> b!1453516 (= lt!637220 (Intermediate!11761 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453517 () Bool)

(declare-fun res!984606 () Bool)

(assert (=> b!1453517 (=> (not res!984606) (not e!818122))))

(assert (=> b!1453517 (= res!984606 (validKeyInArray!0 (select (arr!47486 a!2862) j!93)))))

(declare-fun b!1453518 () Bool)

(declare-fun res!984616 () Bool)

(assert (=> b!1453518 (=> (not res!984616) (not e!818122))))

(assert (=> b!1453518 (= res!984616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453519 () Bool)

(declare-fun res!984609 () Bool)

(assert (=> b!1453519 (=> (not res!984609) (not e!818123))))

(assert (=> b!1453519 (= res!984609 (= (seekEntryOrOpen!0 (select (arr!47486 a!2862) j!93) a!2862 mask!2687) (Found!11761 j!93)))))

(assert (= (and start!125040 res!984617) b!1453507))

(assert (= (and b!1453507 res!984608) b!1453514))

(assert (= (and b!1453514 res!984620) b!1453517))

(assert (= (and b!1453517 res!984606) b!1453518))

(assert (= (and b!1453518 res!984616) b!1453509))

(assert (= (and b!1453509 res!984621) b!1453513))

(assert (= (and b!1453513 res!984613) b!1453501))

(assert (= (and b!1453501 res!984611) b!1453516))

(assert (= (and b!1453516 res!984614) b!1453505))

(assert (= (and b!1453505 res!984618) b!1453506))

(assert (= (and b!1453506 res!984619) b!1453502))

(assert (= (and b!1453502 c!133961) b!1453508))

(assert (= (and b!1453502 (not c!133961)) b!1453515))

(assert (= (and b!1453502 res!984610) b!1453511))

(assert (= (and b!1453511 res!984604) b!1453500))

(assert (= (and b!1453500 res!984605) b!1453519))

(assert (= (and b!1453519 res!984609) b!1453512))

(assert (= (and b!1453512 res!984607) b!1453503))

(assert (= (and b!1453503 (not res!984615)) b!1453504))

(assert (= (and b!1453504 res!984612) b!1453510))

(declare-fun m!1342013 () Bool)

(assert (=> b!1453516 m!1342013))

(assert (=> b!1453516 m!1342013))

(declare-fun m!1342015 () Bool)

(assert (=> b!1453516 m!1342015))

(assert (=> b!1453516 m!1342015))

(assert (=> b!1453516 m!1342013))

(declare-fun m!1342017 () Bool)

(assert (=> b!1453516 m!1342017))

(declare-fun m!1342019 () Bool)

(assert (=> b!1453500 m!1342019))

(declare-fun m!1342021 () Bool)

(assert (=> b!1453500 m!1342021))

(assert (=> b!1453517 m!1342013))

(assert (=> b!1453517 m!1342013))

(declare-fun m!1342023 () Bool)

(assert (=> b!1453517 m!1342023))

(assert (=> b!1453519 m!1342013))

(assert (=> b!1453519 m!1342013))

(declare-fun m!1342025 () Bool)

(assert (=> b!1453519 m!1342025))

(declare-fun m!1342027 () Bool)

(assert (=> b!1453518 m!1342027))

(declare-fun m!1342029 () Bool)

(assert (=> b!1453503 m!1342029))

(assert (=> b!1453503 m!1342013))

(declare-fun m!1342031 () Bool)

(assert (=> b!1453503 m!1342031))

(declare-fun m!1342033 () Bool)

(assert (=> b!1453503 m!1342033))

(declare-fun m!1342035 () Bool)

(assert (=> b!1453508 m!1342035))

(declare-fun m!1342037 () Bool)

(assert (=> start!125040 m!1342037))

(declare-fun m!1342039 () Bool)

(assert (=> start!125040 m!1342039))

(declare-fun m!1342041 () Bool)

(assert (=> b!1453509 m!1342041))

(assert (=> b!1453501 m!1342031))

(declare-fun m!1342043 () Bool)

(assert (=> b!1453501 m!1342043))

(declare-fun m!1342045 () Bool)

(assert (=> b!1453512 m!1342045))

(assert (=> b!1453512 m!1342013))

(assert (=> b!1453505 m!1342013))

(assert (=> b!1453505 m!1342013))

(declare-fun m!1342047 () Bool)

(assert (=> b!1453505 m!1342047))

(declare-fun m!1342049 () Bool)

(assert (=> b!1453515 m!1342049))

(declare-fun m!1342051 () Bool)

(assert (=> b!1453515 m!1342051))

(declare-fun m!1342053 () Bool)

(assert (=> b!1453506 m!1342053))

(assert (=> b!1453506 m!1342053))

(declare-fun m!1342055 () Bool)

(assert (=> b!1453506 m!1342055))

(assert (=> b!1453506 m!1342031))

(declare-fun m!1342057 () Bool)

(assert (=> b!1453506 m!1342057))

(assert (=> b!1453510 m!1342051))

(assert (=> b!1453510 m!1342049))

(declare-fun m!1342059 () Bool)

(assert (=> b!1453514 m!1342059))

(assert (=> b!1453514 m!1342059))

(declare-fun m!1342061 () Bool)

(assert (=> b!1453514 m!1342061))

(check-sat (not b!1453510) (not start!125040) (not b!1453508) (not b!1453505) (not b!1453515) (not b!1453500) (not b!1453518) (not b!1453506) (not b!1453514) (not b!1453516) (not b!1453509) (not b!1453517) (not b!1453519))
