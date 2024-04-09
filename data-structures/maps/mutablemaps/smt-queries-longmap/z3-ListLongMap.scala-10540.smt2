; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124380 () Bool)

(assert start!124380)

(declare-fun b!1438578 () Bool)

(declare-fun res!971243 () Bool)

(declare-fun e!811526 () Bool)

(assert (=> b!1438578 (=> (not res!971243) (not e!811526))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97784 0))(
  ( (array!97785 (arr!47177 (Array (_ BitVec 32) (_ BitVec 64))) (size!47728 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97784)

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1438578 (= res!971243 (and (= (size!47728 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47728 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47728 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438579 () Bool)

(declare-fun res!971237 () Bool)

(declare-fun e!811525 () Bool)

(assert (=> b!1438579 (=> (not res!971237) (not e!811525))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11452 0))(
  ( (MissingZero!11452 (index!48199 (_ BitVec 32))) (Found!11452 (index!48200 (_ BitVec 32))) (Intermediate!11452 (undefined!12264 Bool) (index!48201 (_ BitVec 32)) (x!129938 (_ BitVec 32))) (Undefined!11452) (MissingVacant!11452 (index!48202 (_ BitVec 32))) )
))
(declare-fun lt!632565 () SeekEntryResult!11452)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97784 (_ BitVec 32)) SeekEntryResult!11452)

(assert (=> b!1438579 (= res!971237 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47177 a!2862) j!93) a!2862 mask!2687) lt!632565))))

(declare-fun b!1438580 () Bool)

(declare-fun res!971244 () Bool)

(assert (=> b!1438580 (=> (not res!971244) (not e!811526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97784 (_ BitVec 32)) Bool)

(assert (=> b!1438580 (= res!971244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438581 () Bool)

(assert (=> b!1438581 (= e!811525 false)))

(declare-fun lt!632566 () SeekEntryResult!11452)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438581 (= lt!632566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47177 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47177 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97785 (store (arr!47177 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47728 a!2862)) mask!2687))))

(declare-fun b!1438577 () Bool)

(declare-fun res!971236 () Bool)

(assert (=> b!1438577 (=> (not res!971236) (not e!811526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438577 (= res!971236 (validKeyInArray!0 (select (arr!47177 a!2862) i!1006)))))

(declare-fun res!971240 () Bool)

(assert (=> start!124380 (=> (not res!971240) (not e!811526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124380 (= res!971240 (validMask!0 mask!2687))))

(assert (=> start!124380 e!811526))

(assert (=> start!124380 true))

(declare-fun array_inv!36122 (array!97784) Bool)

(assert (=> start!124380 (array_inv!36122 a!2862)))

(declare-fun b!1438582 () Bool)

(declare-fun res!971242 () Bool)

(assert (=> b!1438582 (=> (not res!971242) (not e!811526))))

(declare-datatypes ((List!33858 0))(
  ( (Nil!33855) (Cons!33854 (h!35201 (_ BitVec 64)) (t!48559 List!33858)) )
))
(declare-fun arrayNoDuplicates!0 (array!97784 (_ BitVec 32) List!33858) Bool)

(assert (=> b!1438582 (= res!971242 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33855))))

(declare-fun b!1438583 () Bool)

(assert (=> b!1438583 (= e!811526 e!811525)))

(declare-fun res!971238 () Bool)

(assert (=> b!1438583 (=> (not res!971238) (not e!811525))))

(assert (=> b!1438583 (= res!971238 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47177 a!2862) j!93) mask!2687) (select (arr!47177 a!2862) j!93) a!2862 mask!2687) lt!632565))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438583 (= lt!632565 (Intermediate!11452 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438584 () Bool)

(declare-fun res!971241 () Bool)

(assert (=> b!1438584 (=> (not res!971241) (not e!811526))))

(assert (=> b!1438584 (= res!971241 (validKeyInArray!0 (select (arr!47177 a!2862) j!93)))))

(declare-fun b!1438585 () Bool)

(declare-fun res!971239 () Bool)

(assert (=> b!1438585 (=> (not res!971239) (not e!811526))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438585 (= res!971239 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47728 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47728 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47728 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47177 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124380 res!971240) b!1438578))

(assert (= (and b!1438578 res!971243) b!1438577))

(assert (= (and b!1438577 res!971236) b!1438584))

(assert (= (and b!1438584 res!971241) b!1438580))

(assert (= (and b!1438580 res!971244) b!1438582))

(assert (= (and b!1438582 res!971242) b!1438585))

(assert (= (and b!1438585 res!971239) b!1438583))

(assert (= (and b!1438583 res!971238) b!1438579))

(assert (= (and b!1438579 res!971237) b!1438581))

(declare-fun m!1327739 () Bool)

(assert (=> b!1438584 m!1327739))

(assert (=> b!1438584 m!1327739))

(declare-fun m!1327741 () Bool)

(assert (=> b!1438584 m!1327741))

(declare-fun m!1327743 () Bool)

(assert (=> b!1438581 m!1327743))

(declare-fun m!1327745 () Bool)

(assert (=> b!1438581 m!1327745))

(assert (=> b!1438581 m!1327745))

(declare-fun m!1327747 () Bool)

(assert (=> b!1438581 m!1327747))

(assert (=> b!1438581 m!1327747))

(assert (=> b!1438581 m!1327745))

(declare-fun m!1327749 () Bool)

(assert (=> b!1438581 m!1327749))

(assert (=> b!1438583 m!1327739))

(assert (=> b!1438583 m!1327739))

(declare-fun m!1327751 () Bool)

(assert (=> b!1438583 m!1327751))

(assert (=> b!1438583 m!1327751))

(assert (=> b!1438583 m!1327739))

(declare-fun m!1327753 () Bool)

(assert (=> b!1438583 m!1327753))

(declare-fun m!1327755 () Bool)

(assert (=> start!124380 m!1327755))

(declare-fun m!1327757 () Bool)

(assert (=> start!124380 m!1327757))

(assert (=> b!1438585 m!1327743))

(declare-fun m!1327759 () Bool)

(assert (=> b!1438585 m!1327759))

(declare-fun m!1327761 () Bool)

(assert (=> b!1438577 m!1327761))

(assert (=> b!1438577 m!1327761))

(declare-fun m!1327763 () Bool)

(assert (=> b!1438577 m!1327763))

(assert (=> b!1438579 m!1327739))

(assert (=> b!1438579 m!1327739))

(declare-fun m!1327765 () Bool)

(assert (=> b!1438579 m!1327765))

(declare-fun m!1327767 () Bool)

(assert (=> b!1438580 m!1327767))

(declare-fun m!1327769 () Bool)

(assert (=> b!1438582 m!1327769))

(check-sat (not b!1438583) (not b!1438581) (not b!1438584) (not b!1438577) (not b!1438580) (not start!124380) (not b!1438582) (not b!1438579))
(check-sat)
