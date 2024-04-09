; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125508 () Bool)

(assert start!125508)

(declare-fun b!1467723 () Bool)

(declare-fun res!996371 () Bool)

(declare-fun e!824356 () Bool)

(assert (=> b!1467723 (=> (not res!996371) (not e!824356))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98873 0))(
  ( (array!98874 (arr!47720 (Array (_ BitVec 32) (_ BitVec 64))) (size!48271 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98873)

(assert (=> b!1467723 (= res!996371 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48271 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48271 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48271 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47720 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467724 () Bool)

(declare-fun res!996372 () Bool)

(assert (=> b!1467724 (=> (not res!996372) (not e!824356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467724 (= res!996372 (validKeyInArray!0 (select (arr!47720 a!2862) i!1006)))))

(declare-fun b!1467725 () Bool)

(declare-fun res!996377 () Bool)

(assert (=> b!1467725 (=> (not res!996377) (not e!824356))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1467725 (= res!996377 (and (= (size!48271 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48271 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48271 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467726 () Bool)

(declare-fun res!996375 () Bool)

(assert (=> b!1467726 (=> (not res!996375) (not e!824356))))

(assert (=> b!1467726 (= res!996375 (validKeyInArray!0 (select (arr!47720 a!2862) j!93)))))

(declare-fun res!996376 () Bool)

(assert (=> start!125508 (=> (not res!996376) (not e!824356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125508 (= res!996376 (validMask!0 mask!2687))))

(assert (=> start!125508 e!824356))

(assert (=> start!125508 true))

(declare-fun array_inv!36665 (array!98873) Bool)

(assert (=> start!125508 (array_inv!36665 a!2862)))

(declare-fun b!1467727 () Bool)

(assert (=> b!1467727 (= e!824356 false)))

(declare-datatypes ((SeekEntryResult!11983 0))(
  ( (MissingZero!11983 (index!50323 (_ BitVec 32))) (Found!11983 (index!50324 (_ BitVec 32))) (Intermediate!11983 (undefined!12795 Bool) (index!50325 (_ BitVec 32)) (x!131923 (_ BitVec 32))) (Undefined!11983) (MissingVacant!11983 (index!50326 (_ BitVec 32))) )
))
(declare-fun lt!642091 () SeekEntryResult!11983)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98873 (_ BitVec 32)) SeekEntryResult!11983)

(assert (=> b!1467727 (= lt!642091 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47720 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467728 () Bool)

(declare-fun res!996378 () Bool)

(assert (=> b!1467728 (=> (not res!996378) (not e!824356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98873 (_ BitVec 32)) Bool)

(assert (=> b!1467728 (= res!996378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467729 () Bool)

(declare-fun res!996374 () Bool)

(assert (=> b!1467729 (=> (not res!996374) (not e!824356))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467729 (= res!996374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47720 a!2862) j!93) mask!2687) (select (arr!47720 a!2862) j!93) a!2862 mask!2687) (Intermediate!11983 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1467730 () Bool)

(declare-fun res!996373 () Bool)

(assert (=> b!1467730 (=> (not res!996373) (not e!824356))))

(declare-datatypes ((List!34401 0))(
  ( (Nil!34398) (Cons!34397 (h!35747 (_ BitVec 64)) (t!49102 List!34401)) )
))
(declare-fun arrayNoDuplicates!0 (array!98873 (_ BitVec 32) List!34401) Bool)

(assert (=> b!1467730 (= res!996373 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34398))))

(assert (= (and start!125508 res!996376) b!1467725))

(assert (= (and b!1467725 res!996377) b!1467724))

(assert (= (and b!1467724 res!996372) b!1467726))

(assert (= (and b!1467726 res!996375) b!1467728))

(assert (= (and b!1467728 res!996378) b!1467730))

(assert (= (and b!1467730 res!996373) b!1467723))

(assert (= (and b!1467723 res!996371) b!1467729))

(assert (= (and b!1467729 res!996374) b!1467727))

(declare-fun m!1354745 () Bool)

(assert (=> b!1467724 m!1354745))

(assert (=> b!1467724 m!1354745))

(declare-fun m!1354747 () Bool)

(assert (=> b!1467724 m!1354747))

(declare-fun m!1354749 () Bool)

(assert (=> b!1467727 m!1354749))

(assert (=> b!1467727 m!1354749))

(declare-fun m!1354751 () Bool)

(assert (=> b!1467727 m!1354751))

(declare-fun m!1354753 () Bool)

(assert (=> b!1467728 m!1354753))

(declare-fun m!1354755 () Bool)

(assert (=> b!1467730 m!1354755))

(assert (=> b!1467726 m!1354749))

(assert (=> b!1467726 m!1354749))

(declare-fun m!1354757 () Bool)

(assert (=> b!1467726 m!1354757))

(declare-fun m!1354759 () Bool)

(assert (=> start!125508 m!1354759))

(declare-fun m!1354761 () Bool)

(assert (=> start!125508 m!1354761))

(declare-fun m!1354763 () Bool)

(assert (=> b!1467723 m!1354763))

(declare-fun m!1354765 () Bool)

(assert (=> b!1467723 m!1354765))

(assert (=> b!1467729 m!1354749))

(assert (=> b!1467729 m!1354749))

(declare-fun m!1354767 () Bool)

(assert (=> b!1467729 m!1354767))

(assert (=> b!1467729 m!1354767))

(assert (=> b!1467729 m!1354749))

(declare-fun m!1354769 () Bool)

(assert (=> b!1467729 m!1354769))

(check-sat (not start!125508) (not b!1467730) (not b!1467727) (not b!1467728) (not b!1467726) (not b!1467729) (not b!1467724))
