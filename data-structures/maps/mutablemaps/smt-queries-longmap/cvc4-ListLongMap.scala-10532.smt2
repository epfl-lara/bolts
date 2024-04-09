; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124250 () Bool)

(assert start!124250)

(declare-fun b!1437524 () Bool)

(declare-fun res!970418 () Bool)

(declare-fun e!811048 () Bool)

(assert (=> b!1437524 (=> (not res!970418) (not e!811048))))

(declare-datatypes ((array!97732 0))(
  ( (array!97733 (arr!47154 (Array (_ BitVec 32) (_ BitVec 64))) (size!47705 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97732)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437524 (= res!970418 (validKeyInArray!0 (select (arr!47154 a!2862) j!93)))))

(declare-fun b!1437525 () Bool)

(declare-fun res!970411 () Bool)

(assert (=> b!1437525 (=> (not res!970411) (not e!811048))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437525 (= res!970411 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47705 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47705 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47705 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47154 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437526 () Bool)

(declare-fun res!970417 () Bool)

(assert (=> b!1437526 (=> (not res!970417) (not e!811048))))

(assert (=> b!1437526 (= res!970417 (validKeyInArray!0 (select (arr!47154 a!2862) i!1006)))))

(declare-fun b!1437527 () Bool)

(declare-fun e!811049 () Bool)

(assert (=> b!1437527 (= e!811048 e!811049)))

(declare-fun res!970416 () Bool)

(assert (=> b!1437527 (=> (not res!970416) (not e!811049))))

(declare-datatypes ((SeekEntryResult!11429 0))(
  ( (MissingZero!11429 (index!48107 (_ BitVec 32))) (Found!11429 (index!48108 (_ BitVec 32))) (Intermediate!11429 (undefined!12241 Bool) (index!48109 (_ BitVec 32)) (x!129839 (_ BitVec 32))) (Undefined!11429) (MissingVacant!11429 (index!48110 (_ BitVec 32))) )
))
(declare-fun lt!632290 () SeekEntryResult!11429)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97732 (_ BitVec 32)) SeekEntryResult!11429)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437527 (= res!970416 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47154 a!2862) j!93) mask!2687) (select (arr!47154 a!2862) j!93) a!2862 mask!2687) lt!632290))))

(assert (=> b!1437527 (= lt!632290 (Intermediate!11429 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437528 () Bool)

(assert (=> b!1437528 (= e!811049 false)))

(declare-fun lt!632289 () (_ BitVec 32))

(assert (=> b!1437528 (= lt!632289 (toIndex!0 (select (store (arr!47154 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437529 () Bool)

(declare-fun res!970412 () Bool)

(assert (=> b!1437529 (=> (not res!970412) (not e!811049))))

(assert (=> b!1437529 (= res!970412 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47154 a!2862) j!93) a!2862 mask!2687) lt!632290))))

(declare-fun b!1437530 () Bool)

(declare-fun res!970419 () Bool)

(assert (=> b!1437530 (=> (not res!970419) (not e!811048))))

(assert (=> b!1437530 (= res!970419 (and (= (size!47705 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47705 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47705 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!970413 () Bool)

(assert (=> start!124250 (=> (not res!970413) (not e!811048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124250 (= res!970413 (validMask!0 mask!2687))))

(assert (=> start!124250 e!811048))

(assert (=> start!124250 true))

(declare-fun array_inv!36099 (array!97732) Bool)

(assert (=> start!124250 (array_inv!36099 a!2862)))

(declare-fun b!1437531 () Bool)

(declare-fun res!970415 () Bool)

(assert (=> b!1437531 (=> (not res!970415) (not e!811048))))

(declare-datatypes ((List!33835 0))(
  ( (Nil!33832) (Cons!33831 (h!35172 (_ BitVec 64)) (t!48536 List!33835)) )
))
(declare-fun arrayNoDuplicates!0 (array!97732 (_ BitVec 32) List!33835) Bool)

(assert (=> b!1437531 (= res!970415 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33832))))

(declare-fun b!1437532 () Bool)

(declare-fun res!970414 () Bool)

(assert (=> b!1437532 (=> (not res!970414) (not e!811048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97732 (_ BitVec 32)) Bool)

(assert (=> b!1437532 (= res!970414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124250 res!970413) b!1437530))

(assert (= (and b!1437530 res!970419) b!1437526))

(assert (= (and b!1437526 res!970417) b!1437524))

(assert (= (and b!1437524 res!970418) b!1437532))

(assert (= (and b!1437532 res!970414) b!1437531))

(assert (= (and b!1437531 res!970415) b!1437525))

(assert (= (and b!1437525 res!970411) b!1437527))

(assert (= (and b!1437527 res!970416) b!1437529))

(assert (= (and b!1437529 res!970412) b!1437528))

(declare-fun m!1326813 () Bool)

(assert (=> b!1437527 m!1326813))

(assert (=> b!1437527 m!1326813))

(declare-fun m!1326815 () Bool)

(assert (=> b!1437527 m!1326815))

(assert (=> b!1437527 m!1326815))

(assert (=> b!1437527 m!1326813))

(declare-fun m!1326817 () Bool)

(assert (=> b!1437527 m!1326817))

(declare-fun m!1326819 () Bool)

(assert (=> start!124250 m!1326819))

(declare-fun m!1326821 () Bool)

(assert (=> start!124250 m!1326821))

(declare-fun m!1326823 () Bool)

(assert (=> b!1437525 m!1326823))

(declare-fun m!1326825 () Bool)

(assert (=> b!1437525 m!1326825))

(assert (=> b!1437524 m!1326813))

(assert (=> b!1437524 m!1326813))

(declare-fun m!1326827 () Bool)

(assert (=> b!1437524 m!1326827))

(declare-fun m!1326829 () Bool)

(assert (=> b!1437532 m!1326829))

(assert (=> b!1437528 m!1326823))

(declare-fun m!1326831 () Bool)

(assert (=> b!1437528 m!1326831))

(assert (=> b!1437528 m!1326831))

(declare-fun m!1326833 () Bool)

(assert (=> b!1437528 m!1326833))

(declare-fun m!1326835 () Bool)

(assert (=> b!1437531 m!1326835))

(declare-fun m!1326837 () Bool)

(assert (=> b!1437526 m!1326837))

(assert (=> b!1437526 m!1326837))

(declare-fun m!1326839 () Bool)

(assert (=> b!1437526 m!1326839))

(assert (=> b!1437529 m!1326813))

(assert (=> b!1437529 m!1326813))

(declare-fun m!1326841 () Bool)

(assert (=> b!1437529 m!1326841))

(push 1)

(assert (not b!1437529))

(assert (not b!1437532))

(assert (not b!1437527))

(assert (not b!1437531))

(assert (not b!1437526))

(assert (not b!1437528))

(assert (not b!1437524))

(assert (not start!124250))

(check-sat)

