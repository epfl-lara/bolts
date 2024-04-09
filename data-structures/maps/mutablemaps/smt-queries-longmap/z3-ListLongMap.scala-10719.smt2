; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125496 () Bool)

(assert start!125496)

(declare-fun res!996229 () Bool)

(declare-fun e!824321 () Bool)

(assert (=> start!125496 (=> (not res!996229) (not e!824321))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125496 (= res!996229 (validMask!0 mask!2687))))

(assert (=> start!125496 e!824321))

(assert (=> start!125496 true))

(declare-datatypes ((array!98861 0))(
  ( (array!98862 (arr!47714 (Array (_ BitVec 32) (_ BitVec 64))) (size!48265 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98861)

(declare-fun array_inv!36659 (array!98861) Bool)

(assert (=> start!125496 (array_inv!36659 a!2862)))

(declare-fun b!1467579 () Bool)

(assert (=> b!1467579 (= e!824321 false)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11977 0))(
  ( (MissingZero!11977 (index!50299 (_ BitVec 32))) (Found!11977 (index!50300 (_ BitVec 32))) (Intermediate!11977 (undefined!12789 Bool) (index!50301 (_ BitVec 32)) (x!131901 (_ BitVec 32))) (Undefined!11977) (MissingVacant!11977 (index!50302 (_ BitVec 32))) )
))
(declare-fun lt!642073 () SeekEntryResult!11977)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98861 (_ BitVec 32)) SeekEntryResult!11977)

(assert (=> b!1467579 (= lt!642073 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47714 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467580 () Bool)

(declare-fun res!996234 () Bool)

(assert (=> b!1467580 (=> (not res!996234) (not e!824321))))

(declare-datatypes ((List!34395 0))(
  ( (Nil!34392) (Cons!34391 (h!35741 (_ BitVec 64)) (t!49096 List!34395)) )
))
(declare-fun arrayNoDuplicates!0 (array!98861 (_ BitVec 32) List!34395) Bool)

(assert (=> b!1467580 (= res!996234 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34392))))

(declare-fun b!1467581 () Bool)

(declare-fun res!996232 () Bool)

(assert (=> b!1467581 (=> (not res!996232) (not e!824321))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98861 (_ BitVec 32)) Bool)

(assert (=> b!1467581 (= res!996232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467582 () Bool)

(declare-fun res!996233 () Bool)

(assert (=> b!1467582 (=> (not res!996233) (not e!824321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467582 (= res!996233 (validKeyInArray!0 (select (arr!47714 a!2862) j!93)))))

(declare-fun b!1467583 () Bool)

(declare-fun res!996230 () Bool)

(assert (=> b!1467583 (=> (not res!996230) (not e!824321))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467583 (= res!996230 (and (= (size!48265 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48265 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48265 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467584 () Bool)

(declare-fun res!996231 () Bool)

(assert (=> b!1467584 (=> (not res!996231) (not e!824321))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467584 (= res!996231 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48265 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48265 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48265 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47714 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467585 () Bool)

(declare-fun res!996228 () Bool)

(assert (=> b!1467585 (=> (not res!996228) (not e!824321))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467585 (= res!996228 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47714 a!2862) j!93) mask!2687) (select (arr!47714 a!2862) j!93) a!2862 mask!2687) (Intermediate!11977 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1467586 () Bool)

(declare-fun res!996227 () Bool)

(assert (=> b!1467586 (=> (not res!996227) (not e!824321))))

(assert (=> b!1467586 (= res!996227 (validKeyInArray!0 (select (arr!47714 a!2862) i!1006)))))

(assert (= (and start!125496 res!996229) b!1467583))

(assert (= (and b!1467583 res!996230) b!1467586))

(assert (= (and b!1467586 res!996227) b!1467582))

(assert (= (and b!1467582 res!996233) b!1467581))

(assert (= (and b!1467581 res!996232) b!1467580))

(assert (= (and b!1467580 res!996234) b!1467584))

(assert (= (and b!1467584 res!996231) b!1467585))

(assert (= (and b!1467585 res!996228) b!1467579))

(declare-fun m!1354589 () Bool)

(assert (=> b!1467586 m!1354589))

(assert (=> b!1467586 m!1354589))

(declare-fun m!1354591 () Bool)

(assert (=> b!1467586 m!1354591))

(declare-fun m!1354593 () Bool)

(assert (=> b!1467584 m!1354593))

(declare-fun m!1354595 () Bool)

(assert (=> b!1467584 m!1354595))

(declare-fun m!1354597 () Bool)

(assert (=> b!1467581 m!1354597))

(declare-fun m!1354599 () Bool)

(assert (=> b!1467580 m!1354599))

(declare-fun m!1354601 () Bool)

(assert (=> b!1467585 m!1354601))

(assert (=> b!1467585 m!1354601))

(declare-fun m!1354603 () Bool)

(assert (=> b!1467585 m!1354603))

(assert (=> b!1467585 m!1354603))

(assert (=> b!1467585 m!1354601))

(declare-fun m!1354605 () Bool)

(assert (=> b!1467585 m!1354605))

(declare-fun m!1354607 () Bool)

(assert (=> start!125496 m!1354607))

(declare-fun m!1354609 () Bool)

(assert (=> start!125496 m!1354609))

(assert (=> b!1467579 m!1354601))

(assert (=> b!1467579 m!1354601))

(declare-fun m!1354611 () Bool)

(assert (=> b!1467579 m!1354611))

(assert (=> b!1467582 m!1354601))

(assert (=> b!1467582 m!1354601))

(declare-fun m!1354613 () Bool)

(assert (=> b!1467582 m!1354613))

(check-sat (not start!125496) (not b!1467582) (not b!1467579) (not b!1467585) (not b!1467586) (not b!1467580) (not b!1467581))
