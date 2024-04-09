; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124530 () Bool)

(assert start!124530)

(declare-fun b!1440350 () Bool)

(declare-fun res!972891 () Bool)

(declare-fun e!812167 () Bool)

(assert (=> b!1440350 (=> (not res!972891) (not e!812167))))

(declare-datatypes ((array!97895 0))(
  ( (array!97896 (arr!47231 (Array (_ BitVec 32) (_ BitVec 64))) (size!47782 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97895)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440350 (= res!972891 (validKeyInArray!0 (select (arr!47231 a!2862) i!1006)))))

(declare-fun b!1440351 () Bool)

(declare-fun res!972887 () Bool)

(declare-fun e!812168 () Bool)

(assert (=> b!1440351 (=> (not res!972887) (not e!812168))))

(declare-datatypes ((SeekEntryResult!11506 0))(
  ( (MissingZero!11506 (index!48415 (_ BitVec 32))) (Found!11506 (index!48416 (_ BitVec 32))) (Intermediate!11506 (undefined!12318 Bool) (index!48417 (_ BitVec 32)) (x!130142 (_ BitVec 32))) (Undefined!11506) (MissingVacant!11506 (index!48418 (_ BitVec 32))) )
))
(declare-fun lt!632908 () SeekEntryResult!11506)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97895 (_ BitVec 32)) SeekEntryResult!11506)

(assert (=> b!1440351 (= res!972887 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47231 a!2862) j!93) a!2862 mask!2687) lt!632908))))

(declare-fun b!1440352 () Bool)

(declare-fun res!972886 () Bool)

(assert (=> b!1440352 (=> (not res!972886) (not e!812167))))

(assert (=> b!1440352 (= res!972886 (and (= (size!47782 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47782 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47782 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440353 () Bool)

(declare-fun res!972892 () Bool)

(assert (=> b!1440353 (=> (not res!972892) (not e!812167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97895 (_ BitVec 32)) Bool)

(assert (=> b!1440353 (= res!972892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440354 () Bool)

(declare-fun res!972894 () Bool)

(assert (=> b!1440354 (=> (not res!972894) (not e!812167))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440354 (= res!972894 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47782 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47782 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47782 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47231 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!972890 () Bool)

(assert (=> start!124530 (=> (not res!972890) (not e!812167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124530 (= res!972890 (validMask!0 mask!2687))))

(assert (=> start!124530 e!812167))

(assert (=> start!124530 true))

(declare-fun array_inv!36176 (array!97895) Bool)

(assert (=> start!124530 (array_inv!36176 a!2862)))

(declare-fun b!1440355 () Bool)

(declare-fun res!972893 () Bool)

(assert (=> b!1440355 (=> (not res!972893) (not e!812167))))

(declare-datatypes ((List!33912 0))(
  ( (Nil!33909) (Cons!33908 (h!35258 (_ BitVec 64)) (t!48613 List!33912)) )
))
(declare-fun arrayNoDuplicates!0 (array!97895 (_ BitVec 32) List!33912) Bool)

(assert (=> b!1440355 (= res!972893 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33909))))

(declare-fun b!1440356 () Bool)

(declare-fun res!972888 () Bool)

(assert (=> b!1440356 (=> (not res!972888) (not e!812167))))

(assert (=> b!1440356 (= res!972888 (validKeyInArray!0 (select (arr!47231 a!2862) j!93)))))

(declare-fun b!1440357 () Bool)

(assert (=> b!1440357 (= e!812167 e!812168)))

(declare-fun res!972889 () Bool)

(assert (=> b!1440357 (=> (not res!972889) (not e!812168))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440357 (= res!972889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47231 a!2862) j!93) mask!2687) (select (arr!47231 a!2862) j!93) a!2862 mask!2687) lt!632908))))

(assert (=> b!1440357 (= lt!632908 (Intermediate!11506 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440358 () Bool)

(assert (=> b!1440358 (= e!812168 false)))

(declare-fun lt!632907 () SeekEntryResult!11506)

(assert (=> b!1440358 (= lt!632907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47231 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47231 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97896 (store (arr!47231 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47782 a!2862)) mask!2687))))

(assert (= (and start!124530 res!972890) b!1440352))

(assert (= (and b!1440352 res!972886) b!1440350))

(assert (= (and b!1440350 res!972891) b!1440356))

(assert (= (and b!1440356 res!972888) b!1440353))

(assert (= (and b!1440353 res!972892) b!1440355))

(assert (= (and b!1440355 res!972893) b!1440354))

(assert (= (and b!1440354 res!972894) b!1440357))

(assert (= (and b!1440357 res!972889) b!1440351))

(assert (= (and b!1440351 res!972887) b!1440358))

(declare-fun m!1329599 () Bool)

(assert (=> b!1440354 m!1329599))

(declare-fun m!1329601 () Bool)

(assert (=> b!1440354 m!1329601))

(declare-fun m!1329603 () Bool)

(assert (=> b!1440350 m!1329603))

(assert (=> b!1440350 m!1329603))

(declare-fun m!1329605 () Bool)

(assert (=> b!1440350 m!1329605))

(declare-fun m!1329607 () Bool)

(assert (=> b!1440353 m!1329607))

(declare-fun m!1329609 () Bool)

(assert (=> b!1440355 m!1329609))

(declare-fun m!1329611 () Bool)

(assert (=> b!1440351 m!1329611))

(assert (=> b!1440351 m!1329611))

(declare-fun m!1329613 () Bool)

(assert (=> b!1440351 m!1329613))

(declare-fun m!1329615 () Bool)

(assert (=> start!124530 m!1329615))

(declare-fun m!1329617 () Bool)

(assert (=> start!124530 m!1329617))

(assert (=> b!1440358 m!1329599))

(declare-fun m!1329619 () Bool)

(assert (=> b!1440358 m!1329619))

(assert (=> b!1440358 m!1329619))

(declare-fun m!1329621 () Bool)

(assert (=> b!1440358 m!1329621))

(assert (=> b!1440358 m!1329621))

(assert (=> b!1440358 m!1329619))

(declare-fun m!1329623 () Bool)

(assert (=> b!1440358 m!1329623))

(assert (=> b!1440356 m!1329611))

(assert (=> b!1440356 m!1329611))

(declare-fun m!1329625 () Bool)

(assert (=> b!1440356 m!1329625))

(assert (=> b!1440357 m!1329611))

(assert (=> b!1440357 m!1329611))

(declare-fun m!1329627 () Bool)

(assert (=> b!1440357 m!1329627))

(assert (=> b!1440357 m!1329627))

(assert (=> b!1440357 m!1329611))

(declare-fun m!1329629 () Bool)

(assert (=> b!1440357 m!1329629))

(check-sat (not b!1440355) (not b!1440350) (not start!124530) (not b!1440358) (not b!1440353) (not b!1440356) (not b!1440357) (not b!1440351))
(check-sat)
