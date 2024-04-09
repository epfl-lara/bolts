; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125568 () Bool)

(assert start!125568)

(declare-fun res!997182 () Bool)

(declare-fun e!824622 () Bool)

(assert (=> start!125568 (=> (not res!997182) (not e!824622))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125568 (= res!997182 (validMask!0 mask!2687))))

(assert (=> start!125568 e!824622))

(assert (=> start!125568 true))

(declare-datatypes ((array!98933 0))(
  ( (array!98934 (arr!47750 (Array (_ BitVec 32) (_ BitVec 64))) (size!48301 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98933)

(declare-fun array_inv!36695 (array!98933) Bool)

(assert (=> start!125568 (array_inv!36695 a!2862)))

(declare-fun b!1468529 () Bool)

(declare-fun res!997179 () Bool)

(assert (=> b!1468529 (=> (not res!997179) (not e!824622))))

(declare-datatypes ((List!34431 0))(
  ( (Nil!34428) (Cons!34427 (h!35777 (_ BitVec 64)) (t!49132 List!34431)) )
))
(declare-fun arrayNoDuplicates!0 (array!98933 (_ BitVec 32) List!34431) Bool)

(assert (=> b!1468529 (= res!997179 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34428))))

(declare-fun b!1468530 () Bool)

(declare-fun res!997178 () Bool)

(assert (=> b!1468530 (=> (not res!997178) (not e!824622))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468530 (= res!997178 (validKeyInArray!0 (select (arr!47750 a!2862) j!93)))))

(declare-fun b!1468531 () Bool)

(declare-fun res!997180 () Bool)

(declare-fun e!824623 () Bool)

(assert (=> b!1468531 (=> (not res!997180) (not e!824623))))

(declare-datatypes ((SeekEntryResult!12013 0))(
  ( (MissingZero!12013 (index!50443 (_ BitVec 32))) (Found!12013 (index!50444 (_ BitVec 32))) (Intermediate!12013 (undefined!12825 Bool) (index!50445 (_ BitVec 32)) (x!132033 (_ BitVec 32))) (Undefined!12013) (MissingVacant!12013 (index!50446 (_ BitVec 32))) )
))
(declare-fun lt!642267 () SeekEntryResult!12013)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98933 (_ BitVec 32)) SeekEntryResult!12013)

(assert (=> b!1468531 (= res!997180 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47750 a!2862) j!93) a!2862 mask!2687) lt!642267))))

(declare-fun b!1468532 () Bool)

(assert (=> b!1468532 (= e!824623 false)))

(declare-fun lt!642268 () SeekEntryResult!12013)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468532 (= lt!642268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47750 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47750 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98934 (store (arr!47750 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48301 a!2862)) mask!2687))))

(declare-fun b!1468533 () Bool)

(declare-fun res!997181 () Bool)

(assert (=> b!1468533 (=> (not res!997181) (not e!824622))))

(assert (=> b!1468533 (= res!997181 (and (= (size!48301 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48301 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48301 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468534 () Bool)

(declare-fun res!997177 () Bool)

(assert (=> b!1468534 (=> (not res!997177) (not e!824622))))

(assert (=> b!1468534 (= res!997177 (validKeyInArray!0 (select (arr!47750 a!2862) i!1006)))))

(declare-fun b!1468535 () Bool)

(assert (=> b!1468535 (= e!824622 e!824623)))

(declare-fun res!997185 () Bool)

(assert (=> b!1468535 (=> (not res!997185) (not e!824623))))

(assert (=> b!1468535 (= res!997185 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47750 a!2862) j!93) mask!2687) (select (arr!47750 a!2862) j!93) a!2862 mask!2687) lt!642267))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468535 (= lt!642267 (Intermediate!12013 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468536 () Bool)

(declare-fun res!997184 () Bool)

(assert (=> b!1468536 (=> (not res!997184) (not e!824622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98933 (_ BitVec 32)) Bool)

(assert (=> b!1468536 (= res!997184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468537 () Bool)

(declare-fun res!997183 () Bool)

(assert (=> b!1468537 (=> (not res!997183) (not e!824622))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468537 (= res!997183 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48301 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48301 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48301 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47750 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125568 res!997182) b!1468533))

(assert (= (and b!1468533 res!997181) b!1468534))

(assert (= (and b!1468534 res!997177) b!1468530))

(assert (= (and b!1468530 res!997178) b!1468536))

(assert (= (and b!1468536 res!997184) b!1468529))

(assert (= (and b!1468529 res!997179) b!1468537))

(assert (= (and b!1468537 res!997183) b!1468535))

(assert (= (and b!1468535 res!997185) b!1468531))

(assert (= (and b!1468531 res!997180) b!1468532))

(declare-fun m!1355681 () Bool)

(assert (=> b!1468534 m!1355681))

(assert (=> b!1468534 m!1355681))

(declare-fun m!1355683 () Bool)

(assert (=> b!1468534 m!1355683))

(declare-fun m!1355685 () Bool)

(assert (=> b!1468530 m!1355685))

(assert (=> b!1468530 m!1355685))

(declare-fun m!1355687 () Bool)

(assert (=> b!1468530 m!1355687))

(declare-fun m!1355689 () Bool)

(assert (=> b!1468537 m!1355689))

(declare-fun m!1355691 () Bool)

(assert (=> b!1468537 m!1355691))

(declare-fun m!1355693 () Bool)

(assert (=> start!125568 m!1355693))

(declare-fun m!1355695 () Bool)

(assert (=> start!125568 m!1355695))

(assert (=> b!1468532 m!1355689))

(declare-fun m!1355697 () Bool)

(assert (=> b!1468532 m!1355697))

(assert (=> b!1468532 m!1355697))

(declare-fun m!1355699 () Bool)

(assert (=> b!1468532 m!1355699))

(assert (=> b!1468532 m!1355699))

(assert (=> b!1468532 m!1355697))

(declare-fun m!1355701 () Bool)

(assert (=> b!1468532 m!1355701))

(assert (=> b!1468531 m!1355685))

(assert (=> b!1468531 m!1355685))

(declare-fun m!1355703 () Bool)

(assert (=> b!1468531 m!1355703))

(assert (=> b!1468535 m!1355685))

(assert (=> b!1468535 m!1355685))

(declare-fun m!1355705 () Bool)

(assert (=> b!1468535 m!1355705))

(assert (=> b!1468535 m!1355705))

(assert (=> b!1468535 m!1355685))

(declare-fun m!1355707 () Bool)

(assert (=> b!1468535 m!1355707))

(declare-fun m!1355709 () Bool)

(assert (=> b!1468529 m!1355709))

(declare-fun m!1355711 () Bool)

(assert (=> b!1468536 m!1355711))

(check-sat (not start!125568) (not b!1468535) (not b!1468530) (not b!1468532) (not b!1468531) (not b!1468536) (not b!1468534) (not b!1468529))
