; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124262 () Bool)

(assert start!124262)

(declare-fun b!1437686 () Bool)

(declare-fun res!970580 () Bool)

(declare-fun e!811102 () Bool)

(assert (=> b!1437686 (=> (not res!970580) (not e!811102))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97744 0))(
  ( (array!97745 (arr!47160 (Array (_ BitVec 32) (_ BitVec 64))) (size!47711 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97744)

(assert (=> b!1437686 (= res!970580 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47711 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47711 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47711 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47160 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437687 () Bool)

(declare-fun res!970581 () Bool)

(assert (=> b!1437687 (=> (not res!970581) (not e!811102))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437687 (= res!970581 (validKeyInArray!0 (select (arr!47160 a!2862) j!93)))))

(declare-fun b!1437688 () Bool)

(declare-fun res!970576 () Bool)

(assert (=> b!1437688 (=> (not res!970576) (not e!811102))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97744 (_ BitVec 32)) Bool)

(assert (=> b!1437688 (= res!970576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437689 () Bool)

(declare-fun e!811101 () Bool)

(assert (=> b!1437689 (= e!811101 false)))

(declare-fun lt!632325 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437689 (= lt!632325 (toIndex!0 (select (store (arr!47160 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437690 () Bool)

(declare-fun res!970574 () Bool)

(assert (=> b!1437690 (=> (not res!970574) (not e!811102))))

(assert (=> b!1437690 (= res!970574 (and (= (size!47711 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47711 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47711 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!970579 () Bool)

(assert (=> start!124262 (=> (not res!970579) (not e!811102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124262 (= res!970579 (validMask!0 mask!2687))))

(assert (=> start!124262 e!811102))

(assert (=> start!124262 true))

(declare-fun array_inv!36105 (array!97744) Bool)

(assert (=> start!124262 (array_inv!36105 a!2862)))

(declare-fun b!1437691 () Bool)

(declare-fun res!970573 () Bool)

(assert (=> b!1437691 (=> (not res!970573) (not e!811101))))

(declare-datatypes ((SeekEntryResult!11435 0))(
  ( (MissingZero!11435 (index!48131 (_ BitVec 32))) (Found!11435 (index!48132 (_ BitVec 32))) (Intermediate!11435 (undefined!12247 Bool) (index!48133 (_ BitVec 32)) (x!129861 (_ BitVec 32))) (Undefined!11435) (MissingVacant!11435 (index!48134 (_ BitVec 32))) )
))
(declare-fun lt!632326 () SeekEntryResult!11435)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97744 (_ BitVec 32)) SeekEntryResult!11435)

(assert (=> b!1437691 (= res!970573 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47160 a!2862) j!93) a!2862 mask!2687) lt!632326))))

(declare-fun b!1437692 () Bool)

(declare-fun res!970577 () Bool)

(assert (=> b!1437692 (=> (not res!970577) (not e!811102))))

(assert (=> b!1437692 (= res!970577 (validKeyInArray!0 (select (arr!47160 a!2862) i!1006)))))

(declare-fun b!1437693 () Bool)

(declare-fun res!970575 () Bool)

(assert (=> b!1437693 (=> (not res!970575) (not e!811102))))

(declare-datatypes ((List!33841 0))(
  ( (Nil!33838) (Cons!33837 (h!35178 (_ BitVec 64)) (t!48542 List!33841)) )
))
(declare-fun arrayNoDuplicates!0 (array!97744 (_ BitVec 32) List!33841) Bool)

(assert (=> b!1437693 (= res!970575 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33838))))

(declare-fun b!1437694 () Bool)

(assert (=> b!1437694 (= e!811102 e!811101)))

(declare-fun res!970578 () Bool)

(assert (=> b!1437694 (=> (not res!970578) (not e!811101))))

(assert (=> b!1437694 (= res!970578 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47160 a!2862) j!93) mask!2687) (select (arr!47160 a!2862) j!93) a!2862 mask!2687) lt!632326))))

(assert (=> b!1437694 (= lt!632326 (Intermediate!11435 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124262 res!970579) b!1437690))

(assert (= (and b!1437690 res!970574) b!1437692))

(assert (= (and b!1437692 res!970577) b!1437687))

(assert (= (and b!1437687 res!970581) b!1437688))

(assert (= (and b!1437688 res!970576) b!1437693))

(assert (= (and b!1437693 res!970575) b!1437686))

(assert (= (and b!1437686 res!970580) b!1437694))

(assert (= (and b!1437694 res!970578) b!1437691))

(assert (= (and b!1437691 res!970573) b!1437689))

(declare-fun m!1326993 () Bool)

(assert (=> b!1437687 m!1326993))

(assert (=> b!1437687 m!1326993))

(declare-fun m!1326995 () Bool)

(assert (=> b!1437687 m!1326995))

(declare-fun m!1326997 () Bool)

(assert (=> b!1437686 m!1326997))

(declare-fun m!1326999 () Bool)

(assert (=> b!1437686 m!1326999))

(assert (=> b!1437691 m!1326993))

(assert (=> b!1437691 m!1326993))

(declare-fun m!1327001 () Bool)

(assert (=> b!1437691 m!1327001))

(declare-fun m!1327003 () Bool)

(assert (=> b!1437688 m!1327003))

(declare-fun m!1327005 () Bool)

(assert (=> b!1437693 m!1327005))

(declare-fun m!1327007 () Bool)

(assert (=> b!1437692 m!1327007))

(assert (=> b!1437692 m!1327007))

(declare-fun m!1327009 () Bool)

(assert (=> b!1437692 m!1327009))

(assert (=> b!1437694 m!1326993))

(assert (=> b!1437694 m!1326993))

(declare-fun m!1327011 () Bool)

(assert (=> b!1437694 m!1327011))

(assert (=> b!1437694 m!1327011))

(assert (=> b!1437694 m!1326993))

(declare-fun m!1327013 () Bool)

(assert (=> b!1437694 m!1327013))

(assert (=> b!1437689 m!1326997))

(declare-fun m!1327015 () Bool)

(assert (=> b!1437689 m!1327015))

(assert (=> b!1437689 m!1327015))

(declare-fun m!1327017 () Bool)

(assert (=> b!1437689 m!1327017))

(declare-fun m!1327019 () Bool)

(assert (=> start!124262 m!1327019))

(declare-fun m!1327021 () Bool)

(assert (=> start!124262 m!1327021))

(push 1)

(assert (not start!124262))

(assert (not b!1437694))

(assert (not b!1437692))

(assert (not b!1437693))

(assert (not b!1437687))

(assert (not b!1437689))

(assert (not b!1437688))

(assert (not b!1437691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

