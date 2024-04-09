; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124502 () Bool)

(assert start!124502)

(declare-fun b!1439953 () Bool)

(declare-fun res!972495 () Bool)

(declare-fun e!812042 () Bool)

(assert (=> b!1439953 (=> (not res!972495) (not e!812042))))

(declare-datatypes ((array!97867 0))(
  ( (array!97868 (arr!47217 (Array (_ BitVec 32) (_ BitVec 64))) (size!47768 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97867)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439953 (= res!972495 (validKeyInArray!0 (select (arr!47217 a!2862) i!1006)))))

(declare-fun b!1439954 () Bool)

(declare-fun res!972490 () Bool)

(assert (=> b!1439954 (=> (not res!972490) (not e!812042))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97867 (_ BitVec 32)) Bool)

(assert (=> b!1439954 (= res!972490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!972491 () Bool)

(assert (=> start!124502 (=> (not res!972491) (not e!812042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124502 (= res!972491 (validMask!0 mask!2687))))

(assert (=> start!124502 e!812042))

(assert (=> start!124502 true))

(declare-fun array_inv!36162 (array!97867) Bool)

(assert (=> start!124502 (array_inv!36162 a!2862)))

(declare-fun b!1439955 () Bool)

(declare-fun res!972496 () Bool)

(assert (=> b!1439955 (=> (not res!972496) (not e!812042))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439955 (= res!972496 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47768 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47768 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47768 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47217 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439956 () Bool)

(declare-fun res!972492 () Bool)

(declare-fun e!812040 () Bool)

(assert (=> b!1439956 (=> (not res!972492) (not e!812040))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11492 0))(
  ( (MissingZero!11492 (index!48359 (_ BitVec 32))) (Found!11492 (index!48360 (_ BitVec 32))) (Intermediate!11492 (undefined!12304 Bool) (index!48361 (_ BitVec 32)) (x!130088 (_ BitVec 32))) (Undefined!11492) (MissingVacant!11492 (index!48362 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97867 (_ BitVec 32)) SeekEntryResult!11492)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439956 (= res!972492 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47217 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47217 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97868 (store (arr!47217 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47768 a!2862)) mask!2687) (Intermediate!11492 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439957 () Bool)

(declare-fun res!972493 () Bool)

(assert (=> b!1439957 (=> (not res!972493) (not e!812042))))

(assert (=> b!1439957 (= res!972493 (and (= (size!47768 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47768 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47768 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439958 () Bool)

(assert (=> b!1439958 (= e!812042 e!812040)))

(declare-fun res!972494 () Bool)

(assert (=> b!1439958 (=> (not res!972494) (not e!812040))))

(declare-fun lt!632842 () SeekEntryResult!11492)

(assert (=> b!1439958 (= res!972494 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47217 a!2862) j!93) mask!2687) (select (arr!47217 a!2862) j!93) a!2862 mask!2687) lt!632842))))

(assert (=> b!1439958 (= lt!632842 (Intermediate!11492 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439959 () Bool)

(declare-fun res!972498 () Bool)

(assert (=> b!1439959 (=> (not res!972498) (not e!812042))))

(assert (=> b!1439959 (= res!972498 (validKeyInArray!0 (select (arr!47217 a!2862) j!93)))))

(declare-fun b!1439960 () Bool)

(assert (=> b!1439960 (= e!812040 (and (bvsgt x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1439961 () Bool)

(declare-fun res!972497 () Bool)

(assert (=> b!1439961 (=> (not res!972497) (not e!812042))))

(declare-datatypes ((List!33898 0))(
  ( (Nil!33895) (Cons!33894 (h!35244 (_ BitVec 64)) (t!48599 List!33898)) )
))
(declare-fun arrayNoDuplicates!0 (array!97867 (_ BitVec 32) List!33898) Bool)

(assert (=> b!1439961 (= res!972497 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33895))))

(declare-fun b!1439962 () Bool)

(declare-fun res!972489 () Bool)

(assert (=> b!1439962 (=> (not res!972489) (not e!812040))))

(assert (=> b!1439962 (= res!972489 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47217 a!2862) j!93) a!2862 mask!2687) lt!632842))))

(assert (= (and start!124502 res!972491) b!1439957))

(assert (= (and b!1439957 res!972493) b!1439953))

(assert (= (and b!1439953 res!972495) b!1439959))

(assert (= (and b!1439959 res!972498) b!1439954))

(assert (= (and b!1439954 res!972490) b!1439961))

(assert (= (and b!1439961 res!972497) b!1439955))

(assert (= (and b!1439955 res!972496) b!1439958))

(assert (= (and b!1439958 res!972494) b!1439962))

(assert (= (and b!1439962 res!972489) b!1439956))

(assert (= (and b!1439956 res!972492) b!1439960))

(declare-fun m!1329151 () Bool)

(assert (=> b!1439958 m!1329151))

(assert (=> b!1439958 m!1329151))

(declare-fun m!1329153 () Bool)

(assert (=> b!1439958 m!1329153))

(assert (=> b!1439958 m!1329153))

(assert (=> b!1439958 m!1329151))

(declare-fun m!1329155 () Bool)

(assert (=> b!1439958 m!1329155))

(assert (=> b!1439959 m!1329151))

(assert (=> b!1439959 m!1329151))

(declare-fun m!1329157 () Bool)

(assert (=> b!1439959 m!1329157))

(declare-fun m!1329159 () Bool)

(assert (=> start!124502 m!1329159))

(declare-fun m!1329161 () Bool)

(assert (=> start!124502 m!1329161))

(declare-fun m!1329163 () Bool)

(assert (=> b!1439953 m!1329163))

(assert (=> b!1439953 m!1329163))

(declare-fun m!1329165 () Bool)

(assert (=> b!1439953 m!1329165))

(declare-fun m!1329167 () Bool)

(assert (=> b!1439961 m!1329167))

(declare-fun m!1329169 () Bool)

(assert (=> b!1439956 m!1329169))

(declare-fun m!1329171 () Bool)

(assert (=> b!1439956 m!1329171))

(assert (=> b!1439956 m!1329171))

(declare-fun m!1329173 () Bool)

(assert (=> b!1439956 m!1329173))

(assert (=> b!1439956 m!1329173))

(assert (=> b!1439956 m!1329171))

(declare-fun m!1329175 () Bool)

(assert (=> b!1439956 m!1329175))

(assert (=> b!1439955 m!1329169))

(declare-fun m!1329177 () Bool)

(assert (=> b!1439955 m!1329177))

(assert (=> b!1439962 m!1329151))

(assert (=> b!1439962 m!1329151))

(declare-fun m!1329179 () Bool)

(assert (=> b!1439962 m!1329179))

(declare-fun m!1329181 () Bool)

(assert (=> b!1439954 m!1329181))

(push 1)

(assert (not b!1439958))

(assert (not b!1439961))

(assert (not b!1439959))

(assert (not b!1439956))

(assert (not b!1439962))

(assert (not b!1439954))

(assert (not start!124502))

(assert (not b!1439953))

(check-sat)

