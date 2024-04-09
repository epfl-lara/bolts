; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125542 () Bool)

(assert start!125542)

(declare-fun b!1468178 () Bool)

(declare-fun res!996832 () Bool)

(declare-fun e!824505 () Bool)

(assert (=> b!1468178 (=> (not res!996832) (not e!824505))))

(declare-datatypes ((array!98907 0))(
  ( (array!98908 (arr!47737 (Array (_ BitVec 32) (_ BitVec 64))) (size!48288 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98907)

(declare-datatypes ((List!34418 0))(
  ( (Nil!34415) (Cons!34414 (h!35764 (_ BitVec 64)) (t!49119 List!34418)) )
))
(declare-fun arrayNoDuplicates!0 (array!98907 (_ BitVec 32) List!34418) Bool)

(assert (=> b!1468178 (= res!996832 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34415))))

(declare-fun b!1468179 () Bool)

(declare-fun res!996828 () Bool)

(assert (=> b!1468179 (=> (not res!996828) (not e!824505))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1468179 (= res!996828 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48288 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48288 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48288 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47737 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468180 () Bool)

(declare-fun e!824506 () Bool)

(assert (=> b!1468180 (= e!824506 false)))

(declare-datatypes ((SeekEntryResult!12000 0))(
  ( (MissingZero!12000 (index!50391 (_ BitVec 32))) (Found!12000 (index!50392 (_ BitVec 32))) (Intermediate!12000 (undefined!12812 Bool) (index!50393 (_ BitVec 32)) (x!131988 (_ BitVec 32))) (Undefined!12000) (MissingVacant!12000 (index!50394 (_ BitVec 32))) )
))
(declare-fun lt!642190 () SeekEntryResult!12000)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98907 (_ BitVec 32)) SeekEntryResult!12000)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468180 (= lt!642190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47737 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47737 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98908 (store (arr!47737 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48288 a!2862)) mask!2687))))

(declare-fun b!1468181 () Bool)

(declare-fun res!996826 () Bool)

(assert (=> b!1468181 (=> (not res!996826) (not e!824505))))

(assert (=> b!1468181 (= res!996826 (and (= (size!48288 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48288 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48288 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468182 () Bool)

(declare-fun res!996834 () Bool)

(assert (=> b!1468182 (=> (not res!996834) (not e!824506))))

(declare-fun lt!642189 () SeekEntryResult!12000)

(assert (=> b!1468182 (= res!996834 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47737 a!2862) j!93) a!2862 mask!2687) lt!642189))))

(declare-fun b!1468184 () Bool)

(assert (=> b!1468184 (= e!824505 e!824506)))

(declare-fun res!996829 () Bool)

(assert (=> b!1468184 (=> (not res!996829) (not e!824506))))

(assert (=> b!1468184 (= res!996829 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47737 a!2862) j!93) mask!2687) (select (arr!47737 a!2862) j!93) a!2862 mask!2687) lt!642189))))

(assert (=> b!1468184 (= lt!642189 (Intermediate!12000 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468185 () Bool)

(declare-fun res!996831 () Bool)

(assert (=> b!1468185 (=> (not res!996831) (not e!824505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98907 (_ BitVec 32)) Bool)

(assert (=> b!1468185 (= res!996831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468186 () Bool)

(declare-fun res!996827 () Bool)

(assert (=> b!1468186 (=> (not res!996827) (not e!824505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468186 (= res!996827 (validKeyInArray!0 (select (arr!47737 a!2862) j!93)))))

(declare-fun res!996830 () Bool)

(assert (=> start!125542 (=> (not res!996830) (not e!824505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125542 (= res!996830 (validMask!0 mask!2687))))

(assert (=> start!125542 e!824505))

(assert (=> start!125542 true))

(declare-fun array_inv!36682 (array!98907) Bool)

(assert (=> start!125542 (array_inv!36682 a!2862)))

(declare-fun b!1468183 () Bool)

(declare-fun res!996833 () Bool)

(assert (=> b!1468183 (=> (not res!996833) (not e!824505))))

(assert (=> b!1468183 (= res!996833 (validKeyInArray!0 (select (arr!47737 a!2862) i!1006)))))

(assert (= (and start!125542 res!996830) b!1468181))

(assert (= (and b!1468181 res!996826) b!1468183))

(assert (= (and b!1468183 res!996833) b!1468186))

(assert (= (and b!1468186 res!996827) b!1468185))

(assert (= (and b!1468185 res!996831) b!1468178))

(assert (= (and b!1468178 res!996832) b!1468179))

(assert (= (and b!1468179 res!996828) b!1468184))

(assert (= (and b!1468184 res!996829) b!1468182))

(assert (= (and b!1468182 res!996834) b!1468180))

(declare-fun m!1355265 () Bool)

(assert (=> b!1468178 m!1355265))

(declare-fun m!1355267 () Bool)

(assert (=> b!1468180 m!1355267))

(declare-fun m!1355269 () Bool)

(assert (=> b!1468180 m!1355269))

(assert (=> b!1468180 m!1355269))

(declare-fun m!1355271 () Bool)

(assert (=> b!1468180 m!1355271))

(assert (=> b!1468180 m!1355271))

(assert (=> b!1468180 m!1355269))

(declare-fun m!1355273 () Bool)

(assert (=> b!1468180 m!1355273))

(declare-fun m!1355275 () Bool)

(assert (=> b!1468185 m!1355275))

(declare-fun m!1355277 () Bool)

(assert (=> b!1468182 m!1355277))

(assert (=> b!1468182 m!1355277))

(declare-fun m!1355279 () Bool)

(assert (=> b!1468182 m!1355279))

(assert (=> b!1468186 m!1355277))

(assert (=> b!1468186 m!1355277))

(declare-fun m!1355281 () Bool)

(assert (=> b!1468186 m!1355281))

(declare-fun m!1355283 () Bool)

(assert (=> start!125542 m!1355283))

(declare-fun m!1355285 () Bool)

(assert (=> start!125542 m!1355285))

(assert (=> b!1468179 m!1355267))

(declare-fun m!1355287 () Bool)

(assert (=> b!1468179 m!1355287))

(assert (=> b!1468184 m!1355277))

(assert (=> b!1468184 m!1355277))

(declare-fun m!1355289 () Bool)

(assert (=> b!1468184 m!1355289))

(assert (=> b!1468184 m!1355289))

(assert (=> b!1468184 m!1355277))

(declare-fun m!1355291 () Bool)

(assert (=> b!1468184 m!1355291))

(declare-fun m!1355293 () Bool)

(assert (=> b!1468183 m!1355293))

(assert (=> b!1468183 m!1355293))

(declare-fun m!1355295 () Bool)

(assert (=> b!1468183 m!1355295))

(push 1)

