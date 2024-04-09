; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125588 () Bool)

(assert start!125588)

(declare-fun b!1468799 () Bool)

(declare-fun res!997448 () Bool)

(declare-fun e!824713 () Bool)

(assert (=> b!1468799 (=> (not res!997448) (not e!824713))))

(declare-datatypes ((array!98953 0))(
  ( (array!98954 (arr!47760 (Array (_ BitVec 32) (_ BitVec 64))) (size!48311 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98953)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468799 (= res!997448 (validKeyInArray!0 (select (arr!47760 a!2862) i!1006)))))

(declare-fun b!1468800 () Bool)

(declare-fun res!997454 () Bool)

(assert (=> b!1468800 (=> (not res!997454) (not e!824713))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1468800 (= res!997454 (and (= (size!48311 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48311 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48311 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!997451 () Bool)

(assert (=> start!125588 (=> (not res!997451) (not e!824713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125588 (= res!997451 (validMask!0 mask!2687))))

(assert (=> start!125588 e!824713))

(assert (=> start!125588 true))

(declare-fun array_inv!36705 (array!98953) Bool)

(assert (=> start!125588 (array_inv!36705 a!2862)))

(declare-fun b!1468801 () Bool)

(declare-fun res!997449 () Bool)

(declare-fun e!824714 () Bool)

(assert (=> b!1468801 (=> (not res!997449) (not e!824714))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12023 0))(
  ( (MissingZero!12023 (index!50483 (_ BitVec 32))) (Found!12023 (index!50484 (_ BitVec 32))) (Intermediate!12023 (undefined!12835 Bool) (index!50485 (_ BitVec 32)) (x!132067 (_ BitVec 32))) (Undefined!12023) (MissingVacant!12023 (index!50486 (_ BitVec 32))) )
))
(declare-fun lt!642328 () SeekEntryResult!12023)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98953 (_ BitVec 32)) SeekEntryResult!12023)

(assert (=> b!1468801 (= res!997449 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47760 a!2862) j!93) a!2862 mask!2687) lt!642328))))

(declare-fun b!1468802 () Bool)

(declare-fun res!997450 () Bool)

(assert (=> b!1468802 (=> (not res!997450) (not e!824713))))

(assert (=> b!1468802 (= res!997450 (validKeyInArray!0 (select (arr!47760 a!2862) j!93)))))

(declare-fun b!1468803 () Bool)

(assert (=> b!1468803 (= e!824714 false)))

(declare-fun lt!642327 () SeekEntryResult!12023)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468803 (= lt!642327 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47760 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47760 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98954 (store (arr!47760 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48311 a!2862)) mask!2687))))

(declare-fun b!1468804 () Bool)

(declare-fun res!997447 () Bool)

(assert (=> b!1468804 (=> (not res!997447) (not e!824713))))

(declare-datatypes ((List!34441 0))(
  ( (Nil!34438) (Cons!34437 (h!35787 (_ BitVec 64)) (t!49142 List!34441)) )
))
(declare-fun arrayNoDuplicates!0 (array!98953 (_ BitVec 32) List!34441) Bool)

(assert (=> b!1468804 (= res!997447 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34438))))

(declare-fun b!1468805 () Bool)

(assert (=> b!1468805 (= e!824713 e!824714)))

(declare-fun res!997452 () Bool)

(assert (=> b!1468805 (=> (not res!997452) (not e!824714))))

(assert (=> b!1468805 (= res!997452 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47760 a!2862) j!93) mask!2687) (select (arr!47760 a!2862) j!93) a!2862 mask!2687) lt!642328))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468805 (= lt!642328 (Intermediate!12023 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468806 () Bool)

(declare-fun res!997453 () Bool)

(assert (=> b!1468806 (=> (not res!997453) (not e!824713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98953 (_ BitVec 32)) Bool)

(assert (=> b!1468806 (= res!997453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468807 () Bool)

(declare-fun res!997455 () Bool)

(assert (=> b!1468807 (=> (not res!997455) (not e!824713))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468807 (= res!997455 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48311 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48311 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48311 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47760 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125588 res!997451) b!1468800))

(assert (= (and b!1468800 res!997454) b!1468799))

(assert (= (and b!1468799 res!997448) b!1468802))

(assert (= (and b!1468802 res!997450) b!1468806))

(assert (= (and b!1468806 res!997453) b!1468804))

(assert (= (and b!1468804 res!997447) b!1468807))

(assert (= (and b!1468807 res!997455) b!1468805))

(assert (= (and b!1468805 res!997452) b!1468801))

(assert (= (and b!1468801 res!997449) b!1468803))

(declare-fun m!1356001 () Bool)

(assert (=> b!1468807 m!1356001))

(declare-fun m!1356003 () Bool)

(assert (=> b!1468807 m!1356003))

(declare-fun m!1356005 () Bool)

(assert (=> b!1468799 m!1356005))

(assert (=> b!1468799 m!1356005))

(declare-fun m!1356007 () Bool)

(assert (=> b!1468799 m!1356007))

(declare-fun m!1356009 () Bool)

(assert (=> b!1468806 m!1356009))

(declare-fun m!1356011 () Bool)

(assert (=> b!1468801 m!1356011))

(assert (=> b!1468801 m!1356011))

(declare-fun m!1356013 () Bool)

(assert (=> b!1468801 m!1356013))

(assert (=> b!1468805 m!1356011))

(assert (=> b!1468805 m!1356011))

(declare-fun m!1356015 () Bool)

(assert (=> b!1468805 m!1356015))

(assert (=> b!1468805 m!1356015))

(assert (=> b!1468805 m!1356011))

(declare-fun m!1356017 () Bool)

(assert (=> b!1468805 m!1356017))

(declare-fun m!1356019 () Bool)

(assert (=> start!125588 m!1356019))

(declare-fun m!1356021 () Bool)

(assert (=> start!125588 m!1356021))

(assert (=> b!1468803 m!1356001))

(declare-fun m!1356023 () Bool)

(assert (=> b!1468803 m!1356023))

(assert (=> b!1468803 m!1356023))

(declare-fun m!1356025 () Bool)

(assert (=> b!1468803 m!1356025))

(assert (=> b!1468803 m!1356025))

(assert (=> b!1468803 m!1356023))

(declare-fun m!1356027 () Bool)

(assert (=> b!1468803 m!1356027))

(declare-fun m!1356029 () Bool)

(assert (=> b!1468804 m!1356029))

(assert (=> b!1468802 m!1356011))

(assert (=> b!1468802 m!1356011))

(declare-fun m!1356031 () Bool)

(assert (=> b!1468802 m!1356031))

(push 1)

(assert (not b!1468801))

(assert (not b!1468803))

(assert (not b!1468805))

(assert (not b!1468804))

(assert (not b!1468799))

(assert (not b!1468806))

(assert (not b!1468802))

(assert (not start!125588))

