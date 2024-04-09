; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125536 () Bool)

(assert start!125536)

(declare-fun b!1468097 () Bool)

(declare-fun res!996751 () Bool)

(declare-fun e!824478 () Bool)

(assert (=> b!1468097 (=> (not res!996751) (not e!824478))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98901 0))(
  ( (array!98902 (arr!47734 (Array (_ BitVec 32) (_ BitVec 64))) (size!48285 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98901)

(assert (=> b!1468097 (= res!996751 (and (= (size!48285 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48285 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48285 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468098 () Bool)

(declare-fun res!996752 () Bool)

(declare-fun e!824480 () Bool)

(assert (=> b!1468098 (=> (not res!996752) (not e!824480))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11997 0))(
  ( (MissingZero!11997 (index!50379 (_ BitVec 32))) (Found!11997 (index!50380 (_ BitVec 32))) (Intermediate!11997 (undefined!12809 Bool) (index!50381 (_ BitVec 32)) (x!131977 (_ BitVec 32))) (Undefined!11997) (MissingVacant!11997 (index!50382 (_ BitVec 32))) )
))
(declare-fun lt!642172 () SeekEntryResult!11997)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98901 (_ BitVec 32)) SeekEntryResult!11997)

(assert (=> b!1468098 (= res!996752 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47734 a!2862) j!93) a!2862 mask!2687) lt!642172))))

(declare-fun b!1468099 () Bool)

(declare-fun res!996746 () Bool)

(assert (=> b!1468099 (=> (not res!996746) (not e!824478))))

(declare-datatypes ((List!34415 0))(
  ( (Nil!34412) (Cons!34411 (h!35761 (_ BitVec 64)) (t!49116 List!34415)) )
))
(declare-fun arrayNoDuplicates!0 (array!98901 (_ BitVec 32) List!34415) Bool)

(assert (=> b!1468099 (= res!996746 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34412))))

(declare-fun b!1468100 () Bool)

(declare-fun res!996750 () Bool)

(assert (=> b!1468100 (=> (not res!996750) (not e!824478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468100 (= res!996750 (validKeyInArray!0 (select (arr!47734 a!2862) j!93)))))

(declare-fun b!1468101 () Bool)

(assert (=> b!1468101 (= e!824478 e!824480)))

(declare-fun res!996747 () Bool)

(assert (=> b!1468101 (=> (not res!996747) (not e!824480))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468101 (= res!996747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47734 a!2862) j!93) mask!2687) (select (arr!47734 a!2862) j!93) a!2862 mask!2687) lt!642172))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468101 (= lt!642172 (Intermediate!11997 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468102 () Bool)

(declare-fun res!996745 () Bool)

(assert (=> b!1468102 (=> (not res!996745) (not e!824478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98901 (_ BitVec 32)) Bool)

(assert (=> b!1468102 (= res!996745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468103 () Bool)

(declare-fun res!996749 () Bool)

(assert (=> b!1468103 (=> (not res!996749) (not e!824478))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468103 (= res!996749 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48285 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48285 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48285 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47734 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!996748 () Bool)

(assert (=> start!125536 (=> (not res!996748) (not e!824478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125536 (= res!996748 (validMask!0 mask!2687))))

(assert (=> start!125536 e!824478))

(assert (=> start!125536 true))

(declare-fun array_inv!36679 (array!98901) Bool)

(assert (=> start!125536 (array_inv!36679 a!2862)))

(declare-fun b!1468104 () Bool)

(declare-fun res!996753 () Bool)

(assert (=> b!1468104 (=> (not res!996753) (not e!824478))))

(assert (=> b!1468104 (= res!996753 (validKeyInArray!0 (select (arr!47734 a!2862) i!1006)))))

(declare-fun b!1468105 () Bool)

(assert (=> b!1468105 (= e!824480 false)))

(declare-fun lt!642171 () SeekEntryResult!11997)

(assert (=> b!1468105 (= lt!642171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47734 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47734 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98902 (store (arr!47734 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48285 a!2862)) mask!2687))))

(assert (= (and start!125536 res!996748) b!1468097))

(assert (= (and b!1468097 res!996751) b!1468104))

(assert (= (and b!1468104 res!996753) b!1468100))

(assert (= (and b!1468100 res!996750) b!1468102))

(assert (= (and b!1468102 res!996745) b!1468099))

(assert (= (and b!1468099 res!996746) b!1468103))

(assert (= (and b!1468103 res!996749) b!1468101))

(assert (= (and b!1468101 res!996747) b!1468098))

(assert (= (and b!1468098 res!996752) b!1468105))

(declare-fun m!1355169 () Bool)

(assert (=> b!1468102 m!1355169))

(declare-fun m!1355171 () Bool)

(assert (=> b!1468099 m!1355171))

(declare-fun m!1355173 () Bool)

(assert (=> b!1468103 m!1355173))

(declare-fun m!1355175 () Bool)

(assert (=> b!1468103 m!1355175))

(assert (=> b!1468105 m!1355173))

(declare-fun m!1355177 () Bool)

(assert (=> b!1468105 m!1355177))

(assert (=> b!1468105 m!1355177))

(declare-fun m!1355179 () Bool)

(assert (=> b!1468105 m!1355179))

(assert (=> b!1468105 m!1355179))

(assert (=> b!1468105 m!1355177))

(declare-fun m!1355181 () Bool)

(assert (=> b!1468105 m!1355181))

(declare-fun m!1355183 () Bool)

(assert (=> b!1468101 m!1355183))

(assert (=> b!1468101 m!1355183))

(declare-fun m!1355185 () Bool)

(assert (=> b!1468101 m!1355185))

(assert (=> b!1468101 m!1355185))

(assert (=> b!1468101 m!1355183))

(declare-fun m!1355187 () Bool)

(assert (=> b!1468101 m!1355187))

(declare-fun m!1355189 () Bool)

(assert (=> b!1468104 m!1355189))

(assert (=> b!1468104 m!1355189))

(declare-fun m!1355191 () Bool)

(assert (=> b!1468104 m!1355191))

(declare-fun m!1355193 () Bool)

(assert (=> start!125536 m!1355193))

(declare-fun m!1355195 () Bool)

(assert (=> start!125536 m!1355195))

(assert (=> b!1468100 m!1355183))

(assert (=> b!1468100 m!1355183))

(declare-fun m!1355197 () Bool)

(assert (=> b!1468100 m!1355197))

(assert (=> b!1468098 m!1355183))

(assert (=> b!1468098 m!1355183))

(declare-fun m!1355199 () Bool)

(assert (=> b!1468098 m!1355199))

(push 1)

