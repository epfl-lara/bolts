; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125590 () Bool)

(assert start!125590)

(declare-fun b!1468826 () Bool)

(declare-fun res!997479 () Bool)

(declare-fun e!824721 () Bool)

(assert (=> b!1468826 (=> (not res!997479) (not e!824721))))

(declare-datatypes ((array!98955 0))(
  ( (array!98956 (arr!47761 (Array (_ BitVec 32) (_ BitVec 64))) (size!48312 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98955)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98955 (_ BitVec 32)) Bool)

(assert (=> b!1468826 (= res!997479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468827 () Bool)

(declare-fun res!997478 () Bool)

(assert (=> b!1468827 (=> (not res!997478) (not e!824721))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468827 (= res!997478 (validKeyInArray!0 (select (arr!47761 a!2862) j!93)))))

(declare-fun b!1468828 () Bool)

(declare-fun e!824722 () Bool)

(assert (=> b!1468828 (= e!824722 false)))

(declare-datatypes ((SeekEntryResult!12024 0))(
  ( (MissingZero!12024 (index!50487 (_ BitVec 32))) (Found!12024 (index!50488 (_ BitVec 32))) (Intermediate!12024 (undefined!12836 Bool) (index!50489 (_ BitVec 32)) (x!132076 (_ BitVec 32))) (Undefined!12024) (MissingVacant!12024 (index!50490 (_ BitVec 32))) )
))
(declare-fun lt!642333 () SeekEntryResult!12024)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98955 (_ BitVec 32)) SeekEntryResult!12024)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468828 (= lt!642333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47761 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47761 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98956 (store (arr!47761 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48312 a!2862)) mask!2687))))

(declare-fun res!997475 () Bool)

(assert (=> start!125590 (=> (not res!997475) (not e!824721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125590 (= res!997475 (validMask!0 mask!2687))))

(assert (=> start!125590 e!824721))

(assert (=> start!125590 true))

(declare-fun array_inv!36706 (array!98955) Bool)

(assert (=> start!125590 (array_inv!36706 a!2862)))

(declare-fun b!1468829 () Bool)

(declare-fun res!997480 () Bool)

(assert (=> b!1468829 (=> (not res!997480) (not e!824721))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468829 (= res!997480 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48312 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48312 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48312 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47761 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468830 () Bool)

(declare-fun res!997482 () Bool)

(assert (=> b!1468830 (=> (not res!997482) (not e!824721))))

(assert (=> b!1468830 (= res!997482 (and (= (size!48312 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48312 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48312 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468831 () Bool)

(declare-fun res!997481 () Bool)

(assert (=> b!1468831 (=> (not res!997481) (not e!824722))))

(declare-fun lt!642334 () SeekEntryResult!12024)

(assert (=> b!1468831 (= res!997481 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47761 a!2862) j!93) a!2862 mask!2687) lt!642334))))

(declare-fun b!1468832 () Bool)

(declare-fun res!997474 () Bool)

(assert (=> b!1468832 (=> (not res!997474) (not e!824721))))

(declare-datatypes ((List!34442 0))(
  ( (Nil!34439) (Cons!34438 (h!35788 (_ BitVec 64)) (t!49143 List!34442)) )
))
(declare-fun arrayNoDuplicates!0 (array!98955 (_ BitVec 32) List!34442) Bool)

(assert (=> b!1468832 (= res!997474 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34439))))

(declare-fun b!1468833 () Bool)

(assert (=> b!1468833 (= e!824721 e!824722)))

(declare-fun res!997477 () Bool)

(assert (=> b!1468833 (=> (not res!997477) (not e!824722))))

(assert (=> b!1468833 (= res!997477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47761 a!2862) j!93) mask!2687) (select (arr!47761 a!2862) j!93) a!2862 mask!2687) lt!642334))))

(assert (=> b!1468833 (= lt!642334 (Intermediate!12024 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468834 () Bool)

(declare-fun res!997476 () Bool)

(assert (=> b!1468834 (=> (not res!997476) (not e!824721))))

(assert (=> b!1468834 (= res!997476 (validKeyInArray!0 (select (arr!47761 a!2862) i!1006)))))

(assert (= (and start!125590 res!997475) b!1468830))

(assert (= (and b!1468830 res!997482) b!1468834))

(assert (= (and b!1468834 res!997476) b!1468827))

(assert (= (and b!1468827 res!997478) b!1468826))

(assert (= (and b!1468826 res!997479) b!1468832))

(assert (= (and b!1468832 res!997474) b!1468829))

(assert (= (and b!1468829 res!997480) b!1468833))

(assert (= (and b!1468833 res!997477) b!1468831))

(assert (= (and b!1468831 res!997481) b!1468828))

(declare-fun m!1356033 () Bool)

(assert (=> b!1468829 m!1356033))

(declare-fun m!1356035 () Bool)

(assert (=> b!1468829 m!1356035))

(declare-fun m!1356037 () Bool)

(assert (=> b!1468834 m!1356037))

(assert (=> b!1468834 m!1356037))

(declare-fun m!1356039 () Bool)

(assert (=> b!1468834 m!1356039))

(declare-fun m!1356041 () Bool)

(assert (=> b!1468832 m!1356041))

(declare-fun m!1356043 () Bool)

(assert (=> start!125590 m!1356043))

(declare-fun m!1356045 () Bool)

(assert (=> start!125590 m!1356045))

(declare-fun m!1356047 () Bool)

(assert (=> b!1468831 m!1356047))

(assert (=> b!1468831 m!1356047))

(declare-fun m!1356049 () Bool)

(assert (=> b!1468831 m!1356049))

(declare-fun m!1356051 () Bool)

(assert (=> b!1468826 m!1356051))

(assert (=> b!1468833 m!1356047))

(assert (=> b!1468833 m!1356047))

(declare-fun m!1356053 () Bool)

(assert (=> b!1468833 m!1356053))

(assert (=> b!1468833 m!1356053))

(assert (=> b!1468833 m!1356047))

(declare-fun m!1356055 () Bool)

(assert (=> b!1468833 m!1356055))

(assert (=> b!1468828 m!1356033))

(declare-fun m!1356057 () Bool)

(assert (=> b!1468828 m!1356057))

(assert (=> b!1468828 m!1356057))

(declare-fun m!1356059 () Bool)

(assert (=> b!1468828 m!1356059))

(assert (=> b!1468828 m!1356059))

(assert (=> b!1468828 m!1356057))

(declare-fun m!1356061 () Bool)

(assert (=> b!1468828 m!1356061))

(assert (=> b!1468827 m!1356047))

(assert (=> b!1468827 m!1356047))

(declare-fun m!1356063 () Bool)

(assert (=> b!1468827 m!1356063))

(push 1)

