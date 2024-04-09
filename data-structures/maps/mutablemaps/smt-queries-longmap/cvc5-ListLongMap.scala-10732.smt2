; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125572 () Bool)

(assert start!125572)

(declare-fun b!1468583 () Bool)

(declare-fun e!824642 () Bool)

(declare-fun e!824640 () Bool)

(assert (=> b!1468583 (= e!824642 e!824640)))

(declare-fun res!997234 () Bool)

(assert (=> b!1468583 (=> (not res!997234) (not e!824640))))

(declare-datatypes ((SeekEntryResult!12015 0))(
  ( (MissingZero!12015 (index!50451 (_ BitVec 32))) (Found!12015 (index!50452 (_ BitVec 32))) (Intermediate!12015 (undefined!12827 Bool) (index!50453 (_ BitVec 32)) (x!132043 (_ BitVec 32))) (Undefined!12015) (MissingVacant!12015 (index!50454 (_ BitVec 32))) )
))
(declare-fun lt!642279 () SeekEntryResult!12015)

(declare-datatypes ((array!98937 0))(
  ( (array!98938 (arr!47752 (Array (_ BitVec 32) (_ BitVec 64))) (size!48303 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98937)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98937 (_ BitVec 32)) SeekEntryResult!12015)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468583 (= res!997234 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47752 a!2862) j!93) mask!2687) (select (arr!47752 a!2862) j!93) a!2862 mask!2687) lt!642279))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468583 (= lt!642279 (Intermediate!12015 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468584 () Bool)

(declare-fun res!997236 () Bool)

(assert (=> b!1468584 (=> (not res!997236) (not e!824642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98937 (_ BitVec 32)) Bool)

(assert (=> b!1468584 (= res!997236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468585 () Bool)

(declare-fun res!997231 () Bool)

(assert (=> b!1468585 (=> (not res!997231) (not e!824640))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1468585 (= res!997231 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47752 a!2862) j!93) a!2862 mask!2687) lt!642279))))

(declare-fun res!997239 () Bool)

(assert (=> start!125572 (=> (not res!997239) (not e!824642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125572 (= res!997239 (validMask!0 mask!2687))))

(assert (=> start!125572 e!824642))

(assert (=> start!125572 true))

(declare-fun array_inv!36697 (array!98937) Bool)

(assert (=> start!125572 (array_inv!36697 a!2862)))

(declare-fun b!1468586 () Bool)

(declare-fun res!997238 () Bool)

(assert (=> b!1468586 (=> (not res!997238) (not e!824642))))

(declare-datatypes ((List!34433 0))(
  ( (Nil!34430) (Cons!34429 (h!35779 (_ BitVec 64)) (t!49134 List!34433)) )
))
(declare-fun arrayNoDuplicates!0 (array!98937 (_ BitVec 32) List!34433) Bool)

(assert (=> b!1468586 (= res!997238 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34430))))

(declare-fun b!1468587 () Bool)

(declare-fun res!997235 () Bool)

(assert (=> b!1468587 (=> (not res!997235) (not e!824642))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468587 (= res!997235 (validKeyInArray!0 (select (arr!47752 a!2862) i!1006)))))

(declare-fun b!1468588 () Bool)

(declare-fun res!997233 () Bool)

(assert (=> b!1468588 (=> (not res!997233) (not e!824642))))

(assert (=> b!1468588 (= res!997233 (validKeyInArray!0 (select (arr!47752 a!2862) j!93)))))

(declare-fun b!1468589 () Bool)

(declare-fun res!997237 () Bool)

(assert (=> b!1468589 (=> (not res!997237) (not e!824642))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468589 (= res!997237 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48303 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48303 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48303 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47752 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468590 () Bool)

(assert (=> b!1468590 (= e!824640 false)))

(declare-fun lt!642280 () SeekEntryResult!12015)

(assert (=> b!1468590 (= lt!642280 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47752 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47752 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98938 (store (arr!47752 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48303 a!2862)) mask!2687))))

(declare-fun b!1468591 () Bool)

(declare-fun res!997232 () Bool)

(assert (=> b!1468591 (=> (not res!997232) (not e!824642))))

(assert (=> b!1468591 (= res!997232 (and (= (size!48303 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48303 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48303 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125572 res!997239) b!1468591))

(assert (= (and b!1468591 res!997232) b!1468587))

(assert (= (and b!1468587 res!997235) b!1468588))

(assert (= (and b!1468588 res!997233) b!1468584))

(assert (= (and b!1468584 res!997236) b!1468586))

(assert (= (and b!1468586 res!997238) b!1468589))

(assert (= (and b!1468589 res!997237) b!1468583))

(assert (= (and b!1468583 res!997234) b!1468585))

(assert (= (and b!1468585 res!997231) b!1468590))

(declare-fun m!1355745 () Bool)

(assert (=> b!1468589 m!1355745))

(declare-fun m!1355747 () Bool)

(assert (=> b!1468589 m!1355747))

(declare-fun m!1355749 () Bool)

(assert (=> b!1468586 m!1355749))

(declare-fun m!1355751 () Bool)

(assert (=> b!1468585 m!1355751))

(assert (=> b!1468585 m!1355751))

(declare-fun m!1355753 () Bool)

(assert (=> b!1468585 m!1355753))

(declare-fun m!1355755 () Bool)

(assert (=> b!1468587 m!1355755))

(assert (=> b!1468587 m!1355755))

(declare-fun m!1355757 () Bool)

(assert (=> b!1468587 m!1355757))

(assert (=> b!1468590 m!1355745))

(declare-fun m!1355759 () Bool)

(assert (=> b!1468590 m!1355759))

(assert (=> b!1468590 m!1355759))

(declare-fun m!1355761 () Bool)

(assert (=> b!1468590 m!1355761))

(assert (=> b!1468590 m!1355761))

(assert (=> b!1468590 m!1355759))

(declare-fun m!1355763 () Bool)

(assert (=> b!1468590 m!1355763))

(declare-fun m!1355765 () Bool)

(assert (=> b!1468584 m!1355765))

(assert (=> b!1468588 m!1355751))

(assert (=> b!1468588 m!1355751))

(declare-fun m!1355767 () Bool)

(assert (=> b!1468588 m!1355767))

(assert (=> b!1468583 m!1355751))

(assert (=> b!1468583 m!1355751))

(declare-fun m!1355769 () Bool)

(assert (=> b!1468583 m!1355769))

(assert (=> b!1468583 m!1355769))

(assert (=> b!1468583 m!1355751))

(declare-fun m!1355771 () Bool)

(assert (=> b!1468583 m!1355771))

(declare-fun m!1355773 () Bool)

(assert (=> start!125572 m!1355773))

(declare-fun m!1355775 () Bool)

(assert (=> start!125572 m!1355775))

(push 1)

