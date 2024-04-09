; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124450 () Bool)

(assert start!124450)

(declare-fun b!1439193 () Bool)

(declare-fun res!971736 () Bool)

(declare-fun e!811801 () Bool)

(assert (=> b!1439193 (=> (not res!971736) (not e!811801))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!632722 () (_ BitVec 32))

(assert (=> b!1439193 (= res!971736 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge lt!632722 #b00000000000000000000000000000000) (bvslt lt!632722 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1439194 () Bool)

(declare-fun res!971734 () Bool)

(declare-fun e!811799 () Bool)

(assert (=> b!1439194 (=> (not res!971734) (not e!811799))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97815 0))(
  ( (array!97816 (arr!47191 (Array (_ BitVec 32) (_ BitVec 64))) (size!47742 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97815)

(assert (=> b!1439194 (= res!971734 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47742 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47742 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47742 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47191 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439195 () Bool)

(declare-fun res!971732 () Bool)

(assert (=> b!1439195 (=> (not res!971732) (not e!811799))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439195 (= res!971732 (validKeyInArray!0 (select (arr!47191 a!2862) j!93)))))

(declare-fun res!971737 () Bool)

(assert (=> start!124450 (=> (not res!971737) (not e!811799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124450 (= res!971737 (validMask!0 mask!2687))))

(assert (=> start!124450 e!811799))

(assert (=> start!124450 true))

(declare-fun array_inv!36136 (array!97815) Bool)

(assert (=> start!124450 (array_inv!36136 a!2862)))

(declare-fun b!1439196 () Bool)

(declare-fun res!971738 () Bool)

(assert (=> b!1439196 (=> (not res!971738) (not e!811799))))

(assert (=> b!1439196 (= res!971738 (validKeyInArray!0 (select (arr!47191 a!2862) i!1006)))))

(declare-fun b!1439197 () Bool)

(declare-fun e!811802 () Bool)

(assert (=> b!1439197 (= e!811802 e!811801)))

(declare-fun res!971733 () Bool)

(assert (=> b!1439197 (=> (not res!971733) (not e!811801))))

(declare-datatypes ((SeekEntryResult!11466 0))(
  ( (MissingZero!11466 (index!48255 (_ BitVec 32))) (Found!11466 (index!48256 (_ BitVec 32))) (Intermediate!11466 (undefined!12278 Bool) (index!48257 (_ BitVec 32)) (x!129998 (_ BitVec 32))) (Undefined!11466) (MissingVacant!11466 (index!48258 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97815 (_ BitVec 32)) SeekEntryResult!11466)

(assert (=> b!1439197 (= res!971733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632722 (select (store (arr!47191 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97816 (store (arr!47191 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47742 a!2862)) mask!2687) (Intermediate!11466 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439197 (= lt!632722 (toIndex!0 (select (store (arr!47191 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1439198 () Bool)

(declare-fun res!971735 () Bool)

(assert (=> b!1439198 (=> (not res!971735) (not e!811802))))

(declare-fun lt!632721 () SeekEntryResult!11466)

(assert (=> b!1439198 (= res!971735 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47191 a!2862) j!93) a!2862 mask!2687) lt!632721))))

(declare-fun b!1439199 () Bool)

(declare-fun res!971731 () Bool)

(assert (=> b!1439199 (=> (not res!971731) (not e!811799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97815 (_ BitVec 32)) Bool)

(assert (=> b!1439199 (= res!971731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439200 () Bool)

(declare-fun res!971729 () Bool)

(assert (=> b!1439200 (=> (not res!971729) (not e!811799))))

(declare-datatypes ((List!33872 0))(
  ( (Nil!33869) (Cons!33868 (h!35218 (_ BitVec 64)) (t!48573 List!33872)) )
))
(declare-fun arrayNoDuplicates!0 (array!97815 (_ BitVec 32) List!33872) Bool)

(assert (=> b!1439200 (= res!971729 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33869))))

(declare-fun b!1439201 () Bool)

(assert (=> b!1439201 (= e!811801 (not (validKeyInArray!0 (select (store (arr!47191 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1439202 () Bool)

(assert (=> b!1439202 (= e!811799 e!811802)))

(declare-fun res!971739 () Bool)

(assert (=> b!1439202 (=> (not res!971739) (not e!811802))))

(assert (=> b!1439202 (= res!971739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47191 a!2862) j!93) mask!2687) (select (arr!47191 a!2862) j!93) a!2862 mask!2687) lt!632721))))

(assert (=> b!1439202 (= lt!632721 (Intermediate!11466 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439203 () Bool)

(declare-fun res!971730 () Bool)

(assert (=> b!1439203 (=> (not res!971730) (not e!811799))))

(assert (=> b!1439203 (= res!971730 (and (= (size!47742 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47742 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47742 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124450 res!971737) b!1439203))

(assert (= (and b!1439203 res!971730) b!1439196))

(assert (= (and b!1439196 res!971738) b!1439195))

(assert (= (and b!1439195 res!971732) b!1439199))

(assert (= (and b!1439199 res!971731) b!1439200))

(assert (= (and b!1439200 res!971729) b!1439194))

(assert (= (and b!1439194 res!971734) b!1439202))

(assert (= (and b!1439202 res!971739) b!1439198))

(assert (= (and b!1439198 res!971735) b!1439197))

(assert (= (and b!1439197 res!971733) b!1439193))

(assert (= (and b!1439193 res!971736) b!1439201))

(declare-fun m!1328307 () Bool)

(assert (=> b!1439198 m!1328307))

(assert (=> b!1439198 m!1328307))

(declare-fun m!1328309 () Bool)

(assert (=> b!1439198 m!1328309))

(declare-fun m!1328311 () Bool)

(assert (=> b!1439201 m!1328311))

(declare-fun m!1328313 () Bool)

(assert (=> b!1439201 m!1328313))

(assert (=> b!1439201 m!1328313))

(declare-fun m!1328315 () Bool)

(assert (=> b!1439201 m!1328315))

(declare-fun m!1328317 () Bool)

(assert (=> b!1439199 m!1328317))

(declare-fun m!1328319 () Bool)

(assert (=> b!1439196 m!1328319))

(assert (=> b!1439196 m!1328319))

(declare-fun m!1328321 () Bool)

(assert (=> b!1439196 m!1328321))

(declare-fun m!1328323 () Bool)

(assert (=> start!124450 m!1328323))

(declare-fun m!1328325 () Bool)

(assert (=> start!124450 m!1328325))

(assert (=> b!1439194 m!1328311))

(declare-fun m!1328327 () Bool)

(assert (=> b!1439194 m!1328327))

(assert (=> b!1439197 m!1328311))

(assert (=> b!1439197 m!1328313))

(assert (=> b!1439197 m!1328313))

(declare-fun m!1328329 () Bool)

(assert (=> b!1439197 m!1328329))

(assert (=> b!1439197 m!1328313))

(declare-fun m!1328331 () Bool)

(assert (=> b!1439197 m!1328331))

(assert (=> b!1439195 m!1328307))

(assert (=> b!1439195 m!1328307))

(declare-fun m!1328333 () Bool)

(assert (=> b!1439195 m!1328333))

(declare-fun m!1328335 () Bool)

(assert (=> b!1439200 m!1328335))

(assert (=> b!1439202 m!1328307))

(assert (=> b!1439202 m!1328307))

(declare-fun m!1328337 () Bool)

(assert (=> b!1439202 m!1328337))

(assert (=> b!1439202 m!1328337))

(assert (=> b!1439202 m!1328307))

(declare-fun m!1328339 () Bool)

(assert (=> b!1439202 m!1328339))

(push 1)

