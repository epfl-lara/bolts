; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125574 () Bool)

(assert start!125574)

(declare-fun b!1468610 () Bool)

(declare-fun res!997263 () Bool)

(declare-fun e!824649 () Bool)

(assert (=> b!1468610 (=> (not res!997263) (not e!824649))))

(declare-datatypes ((array!98939 0))(
  ( (array!98940 (arr!47753 (Array (_ BitVec 32) (_ BitVec 64))) (size!48304 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98939)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468610 (= res!997263 (validKeyInArray!0 (select (arr!47753 a!2862) i!1006)))))

(declare-fun b!1468611 () Bool)

(declare-fun res!997258 () Bool)

(assert (=> b!1468611 (=> (not res!997258) (not e!824649))))

(declare-datatypes ((List!34434 0))(
  ( (Nil!34431) (Cons!34430 (h!35780 (_ BitVec 64)) (t!49135 List!34434)) )
))
(declare-fun arrayNoDuplicates!0 (array!98939 (_ BitVec 32) List!34434) Bool)

(assert (=> b!1468611 (= res!997258 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34431))))

(declare-fun b!1468613 () Bool)

(declare-fun e!824651 () Bool)

(assert (=> b!1468613 (= e!824649 e!824651)))

(declare-fun res!997262 () Bool)

(assert (=> b!1468613 (=> (not res!997262) (not e!824651))))

(declare-datatypes ((SeekEntryResult!12016 0))(
  ( (MissingZero!12016 (index!50455 (_ BitVec 32))) (Found!12016 (index!50456 (_ BitVec 32))) (Intermediate!12016 (undefined!12828 Bool) (index!50457 (_ BitVec 32)) (x!132044 (_ BitVec 32))) (Undefined!12016) (MissingVacant!12016 (index!50458 (_ BitVec 32))) )
))
(declare-fun lt!642285 () SeekEntryResult!12016)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98939 (_ BitVec 32)) SeekEntryResult!12016)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468613 (= res!997262 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47753 a!2862) j!93) mask!2687) (select (arr!47753 a!2862) j!93) a!2862 mask!2687) lt!642285))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468613 (= lt!642285 (Intermediate!12016 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468614 () Bool)

(declare-fun res!997261 () Bool)

(assert (=> b!1468614 (=> (not res!997261) (not e!824649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98939 (_ BitVec 32)) Bool)

(assert (=> b!1468614 (= res!997261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468615 () Bool)

(declare-fun res!997259 () Bool)

(assert (=> b!1468615 (=> (not res!997259) (not e!824649))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468615 (= res!997259 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48304 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48304 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48304 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47753 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468616 () Bool)

(assert (=> b!1468616 (= e!824651 false)))

(declare-fun lt!642286 () SeekEntryResult!12016)

(assert (=> b!1468616 (= lt!642286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47753 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47753 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98940 (store (arr!47753 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48304 a!2862)) mask!2687))))

(declare-fun b!1468617 () Bool)

(declare-fun res!997265 () Bool)

(assert (=> b!1468617 (=> (not res!997265) (not e!824649))))

(assert (=> b!1468617 (= res!997265 (and (= (size!48304 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48304 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48304 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468618 () Bool)

(declare-fun res!997264 () Bool)

(assert (=> b!1468618 (=> (not res!997264) (not e!824649))))

(assert (=> b!1468618 (= res!997264 (validKeyInArray!0 (select (arr!47753 a!2862) j!93)))))

(declare-fun b!1468612 () Bool)

(declare-fun res!997266 () Bool)

(assert (=> b!1468612 (=> (not res!997266) (not e!824651))))

(assert (=> b!1468612 (= res!997266 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47753 a!2862) j!93) a!2862 mask!2687) lt!642285))))

(declare-fun res!997260 () Bool)

(assert (=> start!125574 (=> (not res!997260) (not e!824649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125574 (= res!997260 (validMask!0 mask!2687))))

(assert (=> start!125574 e!824649))

(assert (=> start!125574 true))

(declare-fun array_inv!36698 (array!98939) Bool)

(assert (=> start!125574 (array_inv!36698 a!2862)))

(assert (= (and start!125574 res!997260) b!1468617))

(assert (= (and b!1468617 res!997265) b!1468610))

(assert (= (and b!1468610 res!997263) b!1468618))

(assert (= (and b!1468618 res!997264) b!1468614))

(assert (= (and b!1468614 res!997261) b!1468611))

(assert (= (and b!1468611 res!997258) b!1468615))

(assert (= (and b!1468615 res!997259) b!1468613))

(assert (= (and b!1468613 res!997262) b!1468612))

(assert (= (and b!1468612 res!997266) b!1468616))

(declare-fun m!1355777 () Bool)

(assert (=> b!1468615 m!1355777))

(declare-fun m!1355779 () Bool)

(assert (=> b!1468615 m!1355779))

(declare-fun m!1355781 () Bool)

(assert (=> b!1468614 m!1355781))

(declare-fun m!1355783 () Bool)

(assert (=> b!1468612 m!1355783))

(assert (=> b!1468612 m!1355783))

(declare-fun m!1355785 () Bool)

(assert (=> b!1468612 m!1355785))

(assert (=> b!1468613 m!1355783))

(assert (=> b!1468613 m!1355783))

(declare-fun m!1355787 () Bool)

(assert (=> b!1468613 m!1355787))

(assert (=> b!1468613 m!1355787))

(assert (=> b!1468613 m!1355783))

(declare-fun m!1355789 () Bool)

(assert (=> b!1468613 m!1355789))

(assert (=> b!1468616 m!1355777))

(declare-fun m!1355791 () Bool)

(assert (=> b!1468616 m!1355791))

(assert (=> b!1468616 m!1355791))

(declare-fun m!1355793 () Bool)

(assert (=> b!1468616 m!1355793))

(assert (=> b!1468616 m!1355793))

(assert (=> b!1468616 m!1355791))

(declare-fun m!1355795 () Bool)

(assert (=> b!1468616 m!1355795))

(assert (=> b!1468618 m!1355783))

(assert (=> b!1468618 m!1355783))

(declare-fun m!1355797 () Bool)

(assert (=> b!1468618 m!1355797))

(declare-fun m!1355799 () Bool)

(assert (=> start!125574 m!1355799))

(declare-fun m!1355801 () Bool)

(assert (=> start!125574 m!1355801))

(declare-fun m!1355803 () Bool)

(assert (=> b!1468610 m!1355803))

(assert (=> b!1468610 m!1355803))

(declare-fun m!1355805 () Bool)

(assert (=> b!1468610 m!1355805))

(declare-fun m!1355807 () Bool)

(assert (=> b!1468611 m!1355807))

(check-sat (not b!1468614) (not b!1468611) (not b!1468616) (not b!1468618) (not b!1468612) (not start!125574) (not b!1468610) (not b!1468613))
(check-sat)
