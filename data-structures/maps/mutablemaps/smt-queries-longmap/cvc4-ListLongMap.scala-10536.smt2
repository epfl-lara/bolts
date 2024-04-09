; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124316 () Bool)

(assert start!124316)

(declare-fun b!1438037 () Bool)

(declare-fun res!970824 () Bool)

(declare-fun e!811279 () Bool)

(assert (=> b!1438037 (=> (not res!970824) (not e!811279))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97759 0))(
  ( (array!97760 (arr!47166 (Array (_ BitVec 32) (_ BitVec 64))) (size!47717 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97759)

(assert (=> b!1438037 (= res!970824 (and (= (size!47717 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47717 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47717 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438038 () Bool)

(declare-fun e!811280 () Bool)

(assert (=> b!1438038 (= e!811279 e!811280)))

(declare-fun res!970822 () Bool)

(assert (=> b!1438038 (=> (not res!970822) (not e!811280))))

(declare-datatypes ((SeekEntryResult!11441 0))(
  ( (MissingZero!11441 (index!48155 (_ BitVec 32))) (Found!11441 (index!48156 (_ BitVec 32))) (Intermediate!11441 (undefined!12253 Bool) (index!48157 (_ BitVec 32)) (x!129889 (_ BitVec 32))) (Undefined!11441) (MissingVacant!11441 (index!48158 (_ BitVec 32))) )
))
(declare-fun lt!632436 () SeekEntryResult!11441)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97759 (_ BitVec 32)) SeekEntryResult!11441)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438038 (= res!970822 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47166 a!2862) j!93) mask!2687) (select (arr!47166 a!2862) j!93) a!2862 mask!2687) lt!632436))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438038 (= lt!632436 (Intermediate!11441 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438039 () Bool)

(declare-fun res!970827 () Bool)

(assert (=> b!1438039 (=> (not res!970827) (not e!811279))))

(declare-datatypes ((List!33847 0))(
  ( (Nil!33844) (Cons!33843 (h!35187 (_ BitVec 64)) (t!48548 List!33847)) )
))
(declare-fun arrayNoDuplicates!0 (array!97759 (_ BitVec 32) List!33847) Bool)

(assert (=> b!1438039 (= res!970827 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33844))))

(declare-fun b!1438040 () Bool)

(declare-fun res!970819 () Bool)

(assert (=> b!1438040 (=> (not res!970819) (not e!811279))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438040 (= res!970819 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47717 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47717 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47717 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47166 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438041 () Bool)

(declare-fun res!970820 () Bool)

(assert (=> b!1438041 (=> (not res!970820) (not e!811279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438041 (= res!970820 (validKeyInArray!0 (select (arr!47166 a!2862) i!1006)))))

(declare-fun b!1438042 () Bool)

(declare-fun res!970825 () Bool)

(assert (=> b!1438042 (=> (not res!970825) (not e!811279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97759 (_ BitVec 32)) Bool)

(assert (=> b!1438042 (= res!970825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438043 () Bool)

(assert (=> b!1438043 (= e!811280 false)))

(declare-fun lt!632437 () (_ BitVec 32))

(assert (=> b!1438043 (= lt!632437 (toIndex!0 (select (store (arr!47166 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun res!970826 () Bool)

(assert (=> start!124316 (=> (not res!970826) (not e!811279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124316 (= res!970826 (validMask!0 mask!2687))))

(assert (=> start!124316 e!811279))

(assert (=> start!124316 true))

(declare-fun array_inv!36111 (array!97759) Bool)

(assert (=> start!124316 (array_inv!36111 a!2862)))

(declare-fun b!1438044 () Bool)

(declare-fun res!970823 () Bool)

(assert (=> b!1438044 (=> (not res!970823) (not e!811279))))

(assert (=> b!1438044 (= res!970823 (validKeyInArray!0 (select (arr!47166 a!2862) j!93)))))

(declare-fun b!1438045 () Bool)

(declare-fun res!970821 () Bool)

(assert (=> b!1438045 (=> (not res!970821) (not e!811280))))

(assert (=> b!1438045 (= res!970821 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47166 a!2862) j!93) a!2862 mask!2687) lt!632436))))

(assert (= (and start!124316 res!970826) b!1438037))

(assert (= (and b!1438037 res!970824) b!1438041))

(assert (= (and b!1438041 res!970820) b!1438044))

(assert (= (and b!1438044 res!970823) b!1438042))

(assert (= (and b!1438042 res!970825) b!1438039))

(assert (= (and b!1438039 res!970827) b!1438040))

(assert (= (and b!1438040 res!970819) b!1438038))

(assert (= (and b!1438038 res!970822) b!1438045))

(assert (= (and b!1438045 res!970821) b!1438043))

(declare-fun m!1327269 () Bool)

(assert (=> b!1438044 m!1327269))

(assert (=> b!1438044 m!1327269))

(declare-fun m!1327271 () Bool)

(assert (=> b!1438044 m!1327271))

(declare-fun m!1327273 () Bool)

(assert (=> start!124316 m!1327273))

(declare-fun m!1327275 () Bool)

(assert (=> start!124316 m!1327275))

(declare-fun m!1327277 () Bool)

(assert (=> b!1438039 m!1327277))

(assert (=> b!1438045 m!1327269))

(assert (=> b!1438045 m!1327269))

(declare-fun m!1327279 () Bool)

(assert (=> b!1438045 m!1327279))

(declare-fun m!1327281 () Bool)

(assert (=> b!1438040 m!1327281))

(declare-fun m!1327283 () Bool)

(assert (=> b!1438040 m!1327283))

(declare-fun m!1327285 () Bool)

(assert (=> b!1438042 m!1327285))

(assert (=> b!1438038 m!1327269))

(assert (=> b!1438038 m!1327269))

(declare-fun m!1327287 () Bool)

(assert (=> b!1438038 m!1327287))

(assert (=> b!1438038 m!1327287))

(assert (=> b!1438038 m!1327269))

(declare-fun m!1327289 () Bool)

(assert (=> b!1438038 m!1327289))

(assert (=> b!1438043 m!1327281))

(declare-fun m!1327291 () Bool)

(assert (=> b!1438043 m!1327291))

(assert (=> b!1438043 m!1327291))

(declare-fun m!1327293 () Bool)

(assert (=> b!1438043 m!1327293))

(declare-fun m!1327295 () Bool)

(assert (=> b!1438041 m!1327295))

(assert (=> b!1438041 m!1327295))

(declare-fun m!1327297 () Bool)

(assert (=> b!1438041 m!1327297))

(push 1)

