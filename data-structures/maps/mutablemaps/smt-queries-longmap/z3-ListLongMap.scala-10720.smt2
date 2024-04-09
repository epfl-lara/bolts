; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125502 () Bool)

(assert start!125502)

(declare-fun b!1467651 () Bool)

(declare-fun res!996306 () Bool)

(declare-fun e!824338 () Bool)

(assert (=> b!1467651 (=> (not res!996306) (not e!824338))))

(declare-datatypes ((array!98867 0))(
  ( (array!98868 (arr!47717 (Array (_ BitVec 32) (_ BitVec 64))) (size!48268 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98867)

(declare-datatypes ((List!34398 0))(
  ( (Nil!34395) (Cons!34394 (h!35744 (_ BitVec 64)) (t!49099 List!34398)) )
))
(declare-fun arrayNoDuplicates!0 (array!98867 (_ BitVec 32) List!34398) Bool)

(assert (=> b!1467651 (= res!996306 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34395))))

(declare-fun b!1467652 () Bool)

(declare-fun res!996302 () Bool)

(assert (=> b!1467652 (=> (not res!996302) (not e!824338))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467652 (= res!996302 (validKeyInArray!0 (select (arr!47717 a!2862) j!93)))))

(declare-fun b!1467653 () Bool)

(assert (=> b!1467653 (= e!824338 false)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11980 0))(
  ( (MissingZero!11980 (index!50311 (_ BitVec 32))) (Found!11980 (index!50312 (_ BitVec 32))) (Intermediate!11980 (undefined!12792 Bool) (index!50313 (_ BitVec 32)) (x!131912 (_ BitVec 32))) (Undefined!11980) (MissingVacant!11980 (index!50314 (_ BitVec 32))) )
))
(declare-fun lt!642082 () SeekEntryResult!11980)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98867 (_ BitVec 32)) SeekEntryResult!11980)

(assert (=> b!1467653 (= lt!642082 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47717 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467654 () Bool)

(declare-fun res!996301 () Bool)

(assert (=> b!1467654 (=> (not res!996301) (not e!824338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98867 (_ BitVec 32)) Bool)

(assert (=> b!1467654 (= res!996301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467655 () Bool)

(declare-fun res!996303 () Bool)

(assert (=> b!1467655 (=> (not res!996303) (not e!824338))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467655 (= res!996303 (and (= (size!48268 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48268 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48268 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467656 () Bool)

(declare-fun res!996304 () Bool)

(assert (=> b!1467656 (=> (not res!996304) (not e!824338))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467656 (= res!996304 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47717 a!2862) j!93) mask!2687) (select (arr!47717 a!2862) j!93) a!2862 mask!2687) (Intermediate!11980 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun res!996299 () Bool)

(assert (=> start!125502 (=> (not res!996299) (not e!824338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125502 (= res!996299 (validMask!0 mask!2687))))

(assert (=> start!125502 e!824338))

(assert (=> start!125502 true))

(declare-fun array_inv!36662 (array!98867) Bool)

(assert (=> start!125502 (array_inv!36662 a!2862)))

(declare-fun b!1467657 () Bool)

(declare-fun res!996305 () Bool)

(assert (=> b!1467657 (=> (not res!996305) (not e!824338))))

(assert (=> b!1467657 (= res!996305 (validKeyInArray!0 (select (arr!47717 a!2862) i!1006)))))

(declare-fun b!1467658 () Bool)

(declare-fun res!996300 () Bool)

(assert (=> b!1467658 (=> (not res!996300) (not e!824338))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467658 (= res!996300 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48268 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48268 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48268 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47717 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125502 res!996299) b!1467655))

(assert (= (and b!1467655 res!996303) b!1467657))

(assert (= (and b!1467657 res!996305) b!1467652))

(assert (= (and b!1467652 res!996302) b!1467654))

(assert (= (and b!1467654 res!996301) b!1467651))

(assert (= (and b!1467651 res!996306) b!1467658))

(assert (= (and b!1467658 res!996300) b!1467656))

(assert (= (and b!1467656 res!996304) b!1467653))

(declare-fun m!1354667 () Bool)

(assert (=> b!1467658 m!1354667))

(declare-fun m!1354669 () Bool)

(assert (=> b!1467658 m!1354669))

(declare-fun m!1354671 () Bool)

(assert (=> b!1467652 m!1354671))

(assert (=> b!1467652 m!1354671))

(declare-fun m!1354673 () Bool)

(assert (=> b!1467652 m!1354673))

(declare-fun m!1354675 () Bool)

(assert (=> b!1467657 m!1354675))

(assert (=> b!1467657 m!1354675))

(declare-fun m!1354677 () Bool)

(assert (=> b!1467657 m!1354677))

(declare-fun m!1354679 () Bool)

(assert (=> b!1467651 m!1354679))

(declare-fun m!1354681 () Bool)

(assert (=> b!1467654 m!1354681))

(assert (=> b!1467653 m!1354671))

(assert (=> b!1467653 m!1354671))

(declare-fun m!1354683 () Bool)

(assert (=> b!1467653 m!1354683))

(declare-fun m!1354685 () Bool)

(assert (=> start!125502 m!1354685))

(declare-fun m!1354687 () Bool)

(assert (=> start!125502 m!1354687))

(assert (=> b!1467656 m!1354671))

(assert (=> b!1467656 m!1354671))

(declare-fun m!1354689 () Bool)

(assert (=> b!1467656 m!1354689))

(assert (=> b!1467656 m!1354689))

(assert (=> b!1467656 m!1354671))

(declare-fun m!1354691 () Bool)

(assert (=> b!1467656 m!1354691))

(check-sat (not b!1467653) (not b!1467656) (not b!1467657) (not start!125502) (not b!1467654) (not b!1467651) (not b!1467652))
