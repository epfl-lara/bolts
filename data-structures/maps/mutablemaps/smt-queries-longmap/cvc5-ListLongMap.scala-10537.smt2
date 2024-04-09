; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124318 () Bool)

(assert start!124318)

(declare-fun b!1438066 () Bool)

(declare-fun res!970852 () Bool)

(declare-fun e!811290 () Bool)

(assert (=> b!1438066 (=> (not res!970852) (not e!811290))))

(declare-datatypes ((array!97761 0))(
  ( (array!97762 (arr!47167 (Array (_ BitVec 32) (_ BitVec 64))) (size!47718 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97761)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438066 (= res!970852 (validKeyInArray!0 (select (arr!47167 a!2862) j!93)))))

(declare-fun b!1438067 () Bool)

(declare-fun e!811289 () Bool)

(assert (=> b!1438067 (= e!811290 e!811289)))

(declare-fun res!970850 () Bool)

(assert (=> b!1438067 (=> (not res!970850) (not e!811289))))

(declare-datatypes ((SeekEntryResult!11442 0))(
  ( (MissingZero!11442 (index!48159 (_ BitVec 32))) (Found!11442 (index!48160 (_ BitVec 32))) (Intermediate!11442 (undefined!12254 Bool) (index!48161 (_ BitVec 32)) (x!129898 (_ BitVec 32))) (Undefined!11442) (MissingVacant!11442 (index!48162 (_ BitVec 32))) )
))
(declare-fun lt!632443 () SeekEntryResult!11442)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97761 (_ BitVec 32)) SeekEntryResult!11442)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438067 (= res!970850 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47167 a!2862) j!93) mask!2687) (select (arr!47167 a!2862) j!93) a!2862 mask!2687) lt!632443))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438067 (= lt!632443 (Intermediate!11442 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438068 () Bool)

(declare-fun res!970854 () Bool)

(assert (=> b!1438068 (=> (not res!970854) (not e!811290))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1438068 (= res!970854 (and (= (size!47718 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47718 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47718 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438069 () Bool)

(declare-fun res!970856 () Bool)

(assert (=> b!1438069 (=> (not res!970856) (not e!811290))))

(declare-datatypes ((List!33848 0))(
  ( (Nil!33845) (Cons!33844 (h!35188 (_ BitVec 64)) (t!48549 List!33848)) )
))
(declare-fun arrayNoDuplicates!0 (array!97761 (_ BitVec 32) List!33848) Bool)

(assert (=> b!1438069 (= res!970856 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33845))))

(declare-fun res!970848 () Bool)

(assert (=> start!124318 (=> (not res!970848) (not e!811290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124318 (= res!970848 (validMask!0 mask!2687))))

(assert (=> start!124318 e!811290))

(assert (=> start!124318 true))

(declare-fun array_inv!36112 (array!97761) Bool)

(assert (=> start!124318 (array_inv!36112 a!2862)))

(declare-fun b!1438070 () Bool)

(declare-fun res!970851 () Bool)

(assert (=> b!1438070 (=> (not res!970851) (not e!811290))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438070 (= res!970851 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47718 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47718 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47718 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47167 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438071 () Bool)

(declare-fun res!970849 () Bool)

(assert (=> b!1438071 (=> (not res!970849) (not e!811290))))

(assert (=> b!1438071 (= res!970849 (validKeyInArray!0 (select (arr!47167 a!2862) i!1006)))))

(declare-fun b!1438072 () Bool)

(declare-fun e!811291 () Bool)

(assert (=> b!1438072 (= e!811289 e!811291)))

(declare-fun res!970855 () Bool)

(assert (=> b!1438072 (=> (not res!970855) (not e!811291))))

(declare-fun lt!632442 () (_ BitVec 32))

(assert (=> b!1438072 (= res!970855 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge lt!632442 #b00000000000000000000000000000000) (bvslt lt!632442 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(assert (=> b!1438072 (= lt!632442 (toIndex!0 (select (store (arr!47167 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1438073 () Bool)

(declare-fun res!970857 () Bool)

(assert (=> b!1438073 (=> (not res!970857) (not e!811289))))

(assert (=> b!1438073 (= res!970857 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47167 a!2862) j!93) a!2862 mask!2687) lt!632443))))

(declare-fun b!1438074 () Bool)

(assert (=> b!1438074 (= e!811291 (not (validKeyInArray!0 (select (store (arr!47167 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1438075 () Bool)

(declare-fun res!970853 () Bool)

(assert (=> b!1438075 (=> (not res!970853) (not e!811290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97761 (_ BitVec 32)) Bool)

(assert (=> b!1438075 (= res!970853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124318 res!970848) b!1438068))

(assert (= (and b!1438068 res!970854) b!1438071))

(assert (= (and b!1438071 res!970849) b!1438066))

(assert (= (and b!1438066 res!970852) b!1438075))

(assert (= (and b!1438075 res!970853) b!1438069))

(assert (= (and b!1438069 res!970856) b!1438070))

(assert (= (and b!1438070 res!970851) b!1438067))

(assert (= (and b!1438067 res!970850) b!1438073))

(assert (= (and b!1438073 res!970857) b!1438072))

(assert (= (and b!1438072 res!970855) b!1438074))

(declare-fun m!1327299 () Bool)

(assert (=> b!1438075 m!1327299))

(declare-fun m!1327301 () Bool)

(assert (=> b!1438070 m!1327301))

(declare-fun m!1327303 () Bool)

(assert (=> b!1438070 m!1327303))

(declare-fun m!1327305 () Bool)

(assert (=> b!1438066 m!1327305))

(assert (=> b!1438066 m!1327305))

(declare-fun m!1327307 () Bool)

(assert (=> b!1438066 m!1327307))

(declare-fun m!1327309 () Bool)

(assert (=> start!124318 m!1327309))

(declare-fun m!1327311 () Bool)

(assert (=> start!124318 m!1327311))

(assert (=> b!1438073 m!1327305))

(assert (=> b!1438073 m!1327305))

(declare-fun m!1327313 () Bool)

(assert (=> b!1438073 m!1327313))

(assert (=> b!1438074 m!1327301))

(declare-fun m!1327315 () Bool)

(assert (=> b!1438074 m!1327315))

(assert (=> b!1438074 m!1327315))

(declare-fun m!1327317 () Bool)

(assert (=> b!1438074 m!1327317))

(assert (=> b!1438067 m!1327305))

(assert (=> b!1438067 m!1327305))

(declare-fun m!1327319 () Bool)

(assert (=> b!1438067 m!1327319))

(assert (=> b!1438067 m!1327319))

(assert (=> b!1438067 m!1327305))

(declare-fun m!1327321 () Bool)

(assert (=> b!1438067 m!1327321))

(declare-fun m!1327323 () Bool)

(assert (=> b!1438069 m!1327323))

(declare-fun m!1327325 () Bool)

(assert (=> b!1438071 m!1327325))

(assert (=> b!1438071 m!1327325))

(declare-fun m!1327327 () Bool)

(assert (=> b!1438071 m!1327327))

(assert (=> b!1438072 m!1327301))

(assert (=> b!1438072 m!1327315))

(assert (=> b!1438072 m!1327315))

(declare-fun m!1327329 () Bool)

(assert (=> b!1438072 m!1327329))

(push 1)

