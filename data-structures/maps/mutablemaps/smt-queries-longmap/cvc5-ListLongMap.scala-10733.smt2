; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125578 () Bool)

(assert start!125578)

(declare-fun b!1468664 () Bool)

(declare-fun res!997314 () Bool)

(declare-fun e!824669 () Bool)

(assert (=> b!1468664 (=> (not res!997314) (not e!824669))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98943 0))(
  ( (array!98944 (arr!47755 (Array (_ BitVec 32) (_ BitVec 64))) (size!48306 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98943)

(assert (=> b!1468664 (= res!997314 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48306 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48306 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48306 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47755 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468665 () Bool)

(declare-fun res!997316 () Bool)

(assert (=> b!1468665 (=> (not res!997316) (not e!824669))))

(declare-datatypes ((List!34436 0))(
  ( (Nil!34433) (Cons!34432 (h!35782 (_ BitVec 64)) (t!49137 List!34436)) )
))
(declare-fun arrayNoDuplicates!0 (array!98943 (_ BitVec 32) List!34436) Bool)

(assert (=> b!1468665 (= res!997316 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34433))))

(declare-fun b!1468666 () Bool)

(declare-fun res!997317 () Bool)

(assert (=> b!1468666 (=> (not res!997317) (not e!824669))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1468666 (= res!997317 (and (= (size!48306 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48306 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48306 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468667 () Bool)

(declare-fun res!997319 () Bool)

(assert (=> b!1468667 (=> (not res!997319) (not e!824669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98943 (_ BitVec 32)) Bool)

(assert (=> b!1468667 (= res!997319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468668 () Bool)

(declare-fun res!997320 () Bool)

(assert (=> b!1468668 (=> (not res!997320) (not e!824669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468668 (= res!997320 (validKeyInArray!0 (select (arr!47755 a!2862) j!93)))))

(declare-fun res!997315 () Bool)

(assert (=> start!125578 (=> (not res!997315) (not e!824669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125578 (= res!997315 (validMask!0 mask!2687))))

(assert (=> start!125578 e!824669))

(assert (=> start!125578 true))

(declare-fun array_inv!36700 (array!98943) Bool)

(assert (=> start!125578 (array_inv!36700 a!2862)))

(declare-fun b!1468669 () Bool)

(declare-fun res!997312 () Bool)

(assert (=> b!1468669 (=> (not res!997312) (not e!824669))))

(assert (=> b!1468669 (= res!997312 (validKeyInArray!0 (select (arr!47755 a!2862) i!1006)))))

(declare-fun b!1468670 () Bool)

(declare-fun res!997318 () Bool)

(declare-fun e!824667 () Bool)

(assert (=> b!1468670 (=> (not res!997318) (not e!824667))))

(declare-datatypes ((SeekEntryResult!12018 0))(
  ( (MissingZero!12018 (index!50463 (_ BitVec 32))) (Found!12018 (index!50464 (_ BitVec 32))) (Intermediate!12018 (undefined!12830 Bool) (index!50465 (_ BitVec 32)) (x!132054 (_ BitVec 32))) (Undefined!12018) (MissingVacant!12018 (index!50466 (_ BitVec 32))) )
))
(declare-fun lt!642298 () SeekEntryResult!12018)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98943 (_ BitVec 32)) SeekEntryResult!12018)

(assert (=> b!1468670 (= res!997318 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47755 a!2862) j!93) a!2862 mask!2687) lt!642298))))

(declare-fun b!1468671 () Bool)

(assert (=> b!1468671 (= e!824669 e!824667)))

(declare-fun res!997313 () Bool)

(assert (=> b!1468671 (=> (not res!997313) (not e!824667))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468671 (= res!997313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47755 a!2862) j!93) mask!2687) (select (arr!47755 a!2862) j!93) a!2862 mask!2687) lt!642298))))

(assert (=> b!1468671 (= lt!642298 (Intermediate!12018 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468672 () Bool)

(assert (=> b!1468672 (= e!824667 false)))

(declare-fun lt!642297 () SeekEntryResult!12018)

(assert (=> b!1468672 (= lt!642297 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47755 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47755 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98944 (store (arr!47755 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48306 a!2862)) mask!2687))))

(assert (= (and start!125578 res!997315) b!1468666))

(assert (= (and b!1468666 res!997317) b!1468669))

(assert (= (and b!1468669 res!997312) b!1468668))

(assert (= (and b!1468668 res!997320) b!1468667))

(assert (= (and b!1468667 res!997319) b!1468665))

(assert (= (and b!1468665 res!997316) b!1468664))

(assert (= (and b!1468664 res!997314) b!1468671))

(assert (= (and b!1468671 res!997313) b!1468670))

(assert (= (and b!1468670 res!997318) b!1468672))

(declare-fun m!1355841 () Bool)

(assert (=> b!1468664 m!1355841))

(declare-fun m!1355843 () Bool)

(assert (=> b!1468664 m!1355843))

(assert (=> b!1468672 m!1355841))

(declare-fun m!1355845 () Bool)

(assert (=> b!1468672 m!1355845))

(assert (=> b!1468672 m!1355845))

(declare-fun m!1355847 () Bool)

(assert (=> b!1468672 m!1355847))

(assert (=> b!1468672 m!1355847))

(assert (=> b!1468672 m!1355845))

(declare-fun m!1355849 () Bool)

(assert (=> b!1468672 m!1355849))

(declare-fun m!1355851 () Bool)

(assert (=> b!1468671 m!1355851))

(assert (=> b!1468671 m!1355851))

(declare-fun m!1355853 () Bool)

(assert (=> b!1468671 m!1355853))

(assert (=> b!1468671 m!1355853))

(assert (=> b!1468671 m!1355851))

(declare-fun m!1355855 () Bool)

(assert (=> b!1468671 m!1355855))

(declare-fun m!1355857 () Bool)

(assert (=> b!1468669 m!1355857))

(assert (=> b!1468669 m!1355857))

(declare-fun m!1355859 () Bool)

(assert (=> b!1468669 m!1355859))

(declare-fun m!1355861 () Bool)

(assert (=> start!125578 m!1355861))

(declare-fun m!1355863 () Bool)

(assert (=> start!125578 m!1355863))

(declare-fun m!1355865 () Bool)

(assert (=> b!1468667 m!1355865))

(assert (=> b!1468668 m!1355851))

(assert (=> b!1468668 m!1355851))

(declare-fun m!1355867 () Bool)

(assert (=> b!1468668 m!1355867))

(assert (=> b!1468670 m!1355851))

(assert (=> b!1468670 m!1355851))

(declare-fun m!1355869 () Bool)

(assert (=> b!1468670 m!1355869))

(declare-fun m!1355871 () Bool)

(assert (=> b!1468665 m!1355871))

(push 1)

