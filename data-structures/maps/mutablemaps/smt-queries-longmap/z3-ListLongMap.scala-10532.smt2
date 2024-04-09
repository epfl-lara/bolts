; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124248 () Bool)

(assert start!124248)

(declare-fun b!1437497 () Bool)

(declare-fun res!970387 () Bool)

(declare-fun e!811040 () Bool)

(assert (=> b!1437497 (=> (not res!970387) (not e!811040))))

(declare-datatypes ((array!97730 0))(
  ( (array!97731 (arr!47153 (Array (_ BitVec 32) (_ BitVec 64))) (size!47704 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97730)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97730 (_ BitVec 32)) Bool)

(assert (=> b!1437497 (= res!970387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437499 () Bool)

(declare-fun res!970389 () Bool)

(assert (=> b!1437499 (=> (not res!970389) (not e!811040))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437499 (= res!970389 (validKeyInArray!0 (select (arr!47153 a!2862) j!93)))))

(declare-fun b!1437500 () Bool)

(declare-fun res!970386 () Bool)

(assert (=> b!1437500 (=> (not res!970386) (not e!811040))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437500 (= res!970386 (and (= (size!47704 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47704 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47704 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437501 () Bool)

(declare-fun res!970390 () Bool)

(assert (=> b!1437501 (=> (not res!970390) (not e!811040))))

(declare-datatypes ((List!33834 0))(
  ( (Nil!33831) (Cons!33830 (h!35171 (_ BitVec 64)) (t!48535 List!33834)) )
))
(declare-fun arrayNoDuplicates!0 (array!97730 (_ BitVec 32) List!33834) Bool)

(assert (=> b!1437501 (= res!970390 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33831))))

(declare-fun b!1437502 () Bool)

(declare-fun e!811038 () Bool)

(assert (=> b!1437502 (= e!811038 false)))

(declare-fun lt!632283 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437502 (= lt!632283 (toIndex!0 (select (store (arr!47153 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437503 () Bool)

(declare-fun res!970392 () Bool)

(assert (=> b!1437503 (=> (not res!970392) (not e!811040))))

(assert (=> b!1437503 (= res!970392 (validKeyInArray!0 (select (arr!47153 a!2862) i!1006)))))

(declare-fun res!970384 () Bool)

(assert (=> start!124248 (=> (not res!970384) (not e!811040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124248 (= res!970384 (validMask!0 mask!2687))))

(assert (=> start!124248 e!811040))

(assert (=> start!124248 true))

(declare-fun array_inv!36098 (array!97730) Bool)

(assert (=> start!124248 (array_inv!36098 a!2862)))

(declare-fun b!1437498 () Bool)

(declare-fun res!970385 () Bool)

(assert (=> b!1437498 (=> (not res!970385) (not e!811040))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437498 (= res!970385 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47704 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47704 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47704 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47153 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437504 () Bool)

(assert (=> b!1437504 (= e!811040 e!811038)))

(declare-fun res!970388 () Bool)

(assert (=> b!1437504 (=> (not res!970388) (not e!811038))))

(declare-datatypes ((SeekEntryResult!11428 0))(
  ( (MissingZero!11428 (index!48103 (_ BitVec 32))) (Found!11428 (index!48104 (_ BitVec 32))) (Intermediate!11428 (undefined!12240 Bool) (index!48105 (_ BitVec 32)) (x!129838 (_ BitVec 32))) (Undefined!11428) (MissingVacant!11428 (index!48106 (_ BitVec 32))) )
))
(declare-fun lt!632284 () SeekEntryResult!11428)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97730 (_ BitVec 32)) SeekEntryResult!11428)

(assert (=> b!1437504 (= res!970388 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47153 a!2862) j!93) mask!2687) (select (arr!47153 a!2862) j!93) a!2862 mask!2687) lt!632284))))

(assert (=> b!1437504 (= lt!632284 (Intermediate!11428 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437505 () Bool)

(declare-fun res!970391 () Bool)

(assert (=> b!1437505 (=> (not res!970391) (not e!811038))))

(assert (=> b!1437505 (= res!970391 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47153 a!2862) j!93) a!2862 mask!2687) lt!632284))))

(assert (= (and start!124248 res!970384) b!1437500))

(assert (= (and b!1437500 res!970386) b!1437503))

(assert (= (and b!1437503 res!970392) b!1437499))

(assert (= (and b!1437499 res!970389) b!1437497))

(assert (= (and b!1437497 res!970387) b!1437501))

(assert (= (and b!1437501 res!970390) b!1437498))

(assert (= (and b!1437498 res!970385) b!1437504))

(assert (= (and b!1437504 res!970388) b!1437505))

(assert (= (and b!1437505 res!970391) b!1437502))

(declare-fun m!1326783 () Bool)

(assert (=> b!1437503 m!1326783))

(assert (=> b!1437503 m!1326783))

(declare-fun m!1326785 () Bool)

(assert (=> b!1437503 m!1326785))

(declare-fun m!1326787 () Bool)

(assert (=> b!1437505 m!1326787))

(assert (=> b!1437505 m!1326787))

(declare-fun m!1326789 () Bool)

(assert (=> b!1437505 m!1326789))

(declare-fun m!1326791 () Bool)

(assert (=> start!124248 m!1326791))

(declare-fun m!1326793 () Bool)

(assert (=> start!124248 m!1326793))

(declare-fun m!1326795 () Bool)

(assert (=> b!1437502 m!1326795))

(declare-fun m!1326797 () Bool)

(assert (=> b!1437502 m!1326797))

(assert (=> b!1437502 m!1326797))

(declare-fun m!1326799 () Bool)

(assert (=> b!1437502 m!1326799))

(assert (=> b!1437498 m!1326795))

(declare-fun m!1326801 () Bool)

(assert (=> b!1437498 m!1326801))

(assert (=> b!1437504 m!1326787))

(assert (=> b!1437504 m!1326787))

(declare-fun m!1326803 () Bool)

(assert (=> b!1437504 m!1326803))

(assert (=> b!1437504 m!1326803))

(assert (=> b!1437504 m!1326787))

(declare-fun m!1326805 () Bool)

(assert (=> b!1437504 m!1326805))

(declare-fun m!1326807 () Bool)

(assert (=> b!1437497 m!1326807))

(declare-fun m!1326809 () Bool)

(assert (=> b!1437501 m!1326809))

(assert (=> b!1437499 m!1326787))

(assert (=> b!1437499 m!1326787))

(declare-fun m!1326811 () Bool)

(assert (=> b!1437499 m!1326811))

(check-sat (not b!1437504) (not b!1437503) (not b!1437499) (not start!124248) (not b!1437501) (not b!1437505) (not b!1437497) (not b!1437502))
(check-sat)
