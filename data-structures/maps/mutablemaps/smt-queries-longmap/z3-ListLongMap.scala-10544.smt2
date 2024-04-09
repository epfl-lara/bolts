; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124446 () Bool)

(assert start!124446)

(declare-fun res!971677 () Bool)

(declare-fun e!811781 () Bool)

(assert (=> start!124446 (=> (not res!971677) (not e!811781))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124446 (= res!971677 (validMask!0 mask!2687))))

(assert (=> start!124446 e!811781))

(assert (=> start!124446 true))

(declare-datatypes ((array!97811 0))(
  ( (array!97812 (arr!47189 (Array (_ BitVec 32) (_ BitVec 64))) (size!47740 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97811)

(declare-fun array_inv!36134 (array!97811) Bool)

(assert (=> start!124446 (array_inv!36134 a!2862)))

(declare-fun b!1439135 () Bool)

(declare-fun res!971676 () Bool)

(assert (=> b!1439135 (=> (not res!971676) (not e!811781))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439135 (= res!971676 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47740 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47740 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47740 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47189 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439136 () Bool)

(declare-fun res!971673 () Bool)

(declare-fun e!811780 () Bool)

(assert (=> b!1439136 (=> (not res!971673) (not e!811780))))

(declare-datatypes ((SeekEntryResult!11464 0))(
  ( (MissingZero!11464 (index!48247 (_ BitVec 32))) (Found!11464 (index!48248 (_ BitVec 32))) (Intermediate!11464 (undefined!12276 Bool) (index!48249 (_ BitVec 32)) (x!129988 (_ BitVec 32))) (Undefined!11464) (MissingVacant!11464 (index!48250 (_ BitVec 32))) )
))
(declare-fun lt!632709 () SeekEntryResult!11464)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97811 (_ BitVec 32)) SeekEntryResult!11464)

(assert (=> b!1439136 (= res!971673 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47189 a!2862) j!93) a!2862 mask!2687) lt!632709))))

(declare-fun b!1439137 () Bool)

(declare-fun res!971679 () Bool)

(assert (=> b!1439137 (=> (not res!971679) (not e!811781))))

(declare-datatypes ((List!33870 0))(
  ( (Nil!33867) (Cons!33866 (h!35216 (_ BitVec 64)) (t!48571 List!33870)) )
))
(declare-fun arrayNoDuplicates!0 (array!97811 (_ BitVec 32) List!33870) Bool)

(assert (=> b!1439137 (= res!971679 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33867))))

(declare-fun b!1439138 () Bool)

(assert (=> b!1439138 (= e!811781 e!811780)))

(declare-fun res!971671 () Bool)

(assert (=> b!1439138 (=> (not res!971671) (not e!811780))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439138 (= res!971671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47189 a!2862) j!93) mask!2687) (select (arr!47189 a!2862) j!93) a!2862 mask!2687) lt!632709))))

(assert (=> b!1439138 (= lt!632709 (Intermediate!11464 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439139 () Bool)

(declare-fun res!971674 () Bool)

(assert (=> b!1439139 (=> (not res!971674) (not e!811781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439139 (= res!971674 (validKeyInArray!0 (select (arr!47189 a!2862) j!93)))))

(declare-fun b!1439140 () Bool)

(declare-fun res!971672 () Bool)

(assert (=> b!1439140 (=> (not res!971672) (not e!811781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97811 (_ BitVec 32)) Bool)

(assert (=> b!1439140 (= res!971672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439141 () Bool)

(assert (=> b!1439141 (= e!811780 false)))

(declare-fun lt!632710 () SeekEntryResult!11464)

(assert (=> b!1439141 (= lt!632710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47189 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47189 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97812 (store (arr!47189 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47740 a!2862)) mask!2687))))

(declare-fun b!1439142 () Bool)

(declare-fun res!971678 () Bool)

(assert (=> b!1439142 (=> (not res!971678) (not e!811781))))

(assert (=> b!1439142 (= res!971678 (validKeyInArray!0 (select (arr!47189 a!2862) i!1006)))))

(declare-fun b!1439143 () Bool)

(declare-fun res!971675 () Bool)

(assert (=> b!1439143 (=> (not res!971675) (not e!811781))))

(assert (=> b!1439143 (= res!971675 (and (= (size!47740 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47740 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47740 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124446 res!971677) b!1439143))

(assert (= (and b!1439143 res!971675) b!1439142))

(assert (= (and b!1439142 res!971678) b!1439139))

(assert (= (and b!1439139 res!971674) b!1439140))

(assert (= (and b!1439140 res!971672) b!1439137))

(assert (= (and b!1439137 res!971679) b!1439135))

(assert (= (and b!1439135 res!971676) b!1439138))

(assert (= (and b!1439138 res!971671) b!1439136))

(assert (= (and b!1439136 res!971673) b!1439141))

(declare-fun m!1328243 () Bool)

(assert (=> b!1439135 m!1328243))

(declare-fun m!1328245 () Bool)

(assert (=> b!1439135 m!1328245))

(declare-fun m!1328247 () Bool)

(assert (=> b!1439142 m!1328247))

(assert (=> b!1439142 m!1328247))

(declare-fun m!1328249 () Bool)

(assert (=> b!1439142 m!1328249))

(declare-fun m!1328251 () Bool)

(assert (=> b!1439138 m!1328251))

(assert (=> b!1439138 m!1328251))

(declare-fun m!1328253 () Bool)

(assert (=> b!1439138 m!1328253))

(assert (=> b!1439138 m!1328253))

(assert (=> b!1439138 m!1328251))

(declare-fun m!1328255 () Bool)

(assert (=> b!1439138 m!1328255))

(assert (=> b!1439141 m!1328243))

(declare-fun m!1328257 () Bool)

(assert (=> b!1439141 m!1328257))

(assert (=> b!1439141 m!1328257))

(declare-fun m!1328259 () Bool)

(assert (=> b!1439141 m!1328259))

(assert (=> b!1439141 m!1328259))

(assert (=> b!1439141 m!1328257))

(declare-fun m!1328261 () Bool)

(assert (=> b!1439141 m!1328261))

(declare-fun m!1328263 () Bool)

(assert (=> start!124446 m!1328263))

(declare-fun m!1328265 () Bool)

(assert (=> start!124446 m!1328265))

(declare-fun m!1328267 () Bool)

(assert (=> b!1439140 m!1328267))

(assert (=> b!1439136 m!1328251))

(assert (=> b!1439136 m!1328251))

(declare-fun m!1328269 () Bool)

(assert (=> b!1439136 m!1328269))

(assert (=> b!1439139 m!1328251))

(assert (=> b!1439139 m!1328251))

(declare-fun m!1328271 () Bool)

(assert (=> b!1439139 m!1328271))

(declare-fun m!1328273 () Bool)

(assert (=> b!1439137 m!1328273))

(check-sat (not b!1439140) (not b!1439137) (not b!1439138) (not b!1439136) (not b!1439141) (not start!124446) (not b!1439139) (not b!1439142))
(check-sat)
