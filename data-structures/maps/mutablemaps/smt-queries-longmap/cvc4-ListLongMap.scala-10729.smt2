; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125558 () Bool)

(assert start!125558)

(declare-fun res!997045 () Bool)

(declare-fun e!824579 () Bool)

(assert (=> start!125558 (=> (not res!997045) (not e!824579))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125558 (= res!997045 (validMask!0 mask!2687))))

(assert (=> start!125558 e!824579))

(assert (=> start!125558 true))

(declare-datatypes ((array!98923 0))(
  ( (array!98924 (arr!47745 (Array (_ BitVec 32) (_ BitVec 64))) (size!48296 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98923)

(declare-fun array_inv!36690 (array!98923) Bool)

(assert (=> start!125558 (array_inv!36690 a!2862)))

(declare-fun b!1468394 () Bool)

(declare-fun e!824577 () Bool)

(assert (=> b!1468394 (= e!824577 false)))

(declare-datatypes ((SeekEntryResult!12008 0))(
  ( (MissingZero!12008 (index!50423 (_ BitVec 32))) (Found!12008 (index!50424 (_ BitVec 32))) (Intermediate!12008 (undefined!12820 Bool) (index!50425 (_ BitVec 32)) (x!132012 (_ BitVec 32))) (Undefined!12008) (MissingVacant!12008 (index!50426 (_ BitVec 32))) )
))
(declare-fun lt!642237 () SeekEntryResult!12008)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98923 (_ BitVec 32)) SeekEntryResult!12008)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468394 (= lt!642237 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47745 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47745 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98924 (store (arr!47745 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48296 a!2862)) mask!2687))))

(declare-fun b!1468395 () Bool)

(assert (=> b!1468395 (= e!824579 e!824577)))

(declare-fun res!997048 () Bool)

(assert (=> b!1468395 (=> (not res!997048) (not e!824577))))

(declare-fun lt!642238 () SeekEntryResult!12008)

(assert (=> b!1468395 (= res!997048 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47745 a!2862) j!93) mask!2687) (select (arr!47745 a!2862) j!93) a!2862 mask!2687) lt!642238))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468395 (= lt!642238 (Intermediate!12008 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468396 () Bool)

(declare-fun res!997042 () Bool)

(assert (=> b!1468396 (=> (not res!997042) (not e!824579))))

(declare-datatypes ((List!34426 0))(
  ( (Nil!34423) (Cons!34422 (h!35772 (_ BitVec 64)) (t!49127 List!34426)) )
))
(declare-fun arrayNoDuplicates!0 (array!98923 (_ BitVec 32) List!34426) Bool)

(assert (=> b!1468396 (= res!997042 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34423))))

(declare-fun b!1468397 () Bool)

(declare-fun res!997044 () Bool)

(assert (=> b!1468397 (=> (not res!997044) (not e!824579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468397 (= res!997044 (validKeyInArray!0 (select (arr!47745 a!2862) j!93)))))

(declare-fun b!1468398 () Bool)

(declare-fun res!997043 () Bool)

(assert (=> b!1468398 (=> (not res!997043) (not e!824579))))

(assert (=> b!1468398 (= res!997043 (and (= (size!48296 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48296 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48296 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468399 () Bool)

(declare-fun res!997046 () Bool)

(assert (=> b!1468399 (=> (not res!997046) (not e!824577))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468399 (= res!997046 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47745 a!2862) j!93) a!2862 mask!2687) lt!642238))))

(declare-fun b!1468400 () Bool)

(declare-fun res!997047 () Bool)

(assert (=> b!1468400 (=> (not res!997047) (not e!824579))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468400 (= res!997047 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48296 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48296 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48296 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47745 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468401 () Bool)

(declare-fun res!997050 () Bool)

(assert (=> b!1468401 (=> (not res!997050) (not e!824579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98923 (_ BitVec 32)) Bool)

(assert (=> b!1468401 (= res!997050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468402 () Bool)

(declare-fun res!997049 () Bool)

(assert (=> b!1468402 (=> (not res!997049) (not e!824579))))

(assert (=> b!1468402 (= res!997049 (validKeyInArray!0 (select (arr!47745 a!2862) i!1006)))))

(assert (= (and start!125558 res!997045) b!1468398))

(assert (= (and b!1468398 res!997043) b!1468402))

(assert (= (and b!1468402 res!997049) b!1468397))

(assert (= (and b!1468397 res!997044) b!1468401))

(assert (= (and b!1468401 res!997050) b!1468396))

(assert (= (and b!1468396 res!997042) b!1468400))

(assert (= (and b!1468400 res!997047) b!1468395))

(assert (= (and b!1468395 res!997048) b!1468399))

(assert (= (and b!1468399 res!997046) b!1468394))

(declare-fun m!1355521 () Bool)

(assert (=> b!1468401 m!1355521))

(declare-fun m!1355523 () Bool)

(assert (=> b!1468395 m!1355523))

(assert (=> b!1468395 m!1355523))

(declare-fun m!1355525 () Bool)

(assert (=> b!1468395 m!1355525))

(assert (=> b!1468395 m!1355525))

(assert (=> b!1468395 m!1355523))

(declare-fun m!1355527 () Bool)

(assert (=> b!1468395 m!1355527))

(assert (=> b!1468399 m!1355523))

(assert (=> b!1468399 m!1355523))

(declare-fun m!1355529 () Bool)

(assert (=> b!1468399 m!1355529))

(declare-fun m!1355531 () Bool)

(assert (=> b!1468402 m!1355531))

(assert (=> b!1468402 m!1355531))

(declare-fun m!1355533 () Bool)

(assert (=> b!1468402 m!1355533))

(declare-fun m!1355535 () Bool)

(assert (=> b!1468400 m!1355535))

(declare-fun m!1355537 () Bool)

(assert (=> b!1468400 m!1355537))

(assert (=> b!1468394 m!1355535))

(declare-fun m!1355539 () Bool)

(assert (=> b!1468394 m!1355539))

(assert (=> b!1468394 m!1355539))

(declare-fun m!1355541 () Bool)

(assert (=> b!1468394 m!1355541))

(assert (=> b!1468394 m!1355541))

(assert (=> b!1468394 m!1355539))

(declare-fun m!1355543 () Bool)

(assert (=> b!1468394 m!1355543))

(assert (=> b!1468397 m!1355523))

(assert (=> b!1468397 m!1355523))

(declare-fun m!1355545 () Bool)

(assert (=> b!1468397 m!1355545))

(declare-fun m!1355547 () Bool)

(assert (=> start!125558 m!1355547))

(declare-fun m!1355549 () Bool)

(assert (=> start!125558 m!1355549))

(declare-fun m!1355551 () Bool)

(assert (=> b!1468396 m!1355551))

(push 1)

(assert (not b!1468396))

(assert (not b!1468395))

