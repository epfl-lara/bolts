; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124320 () Bool)

(assert start!124320)

(declare-fun b!1438096 () Bool)

(declare-fun res!970879 () Bool)

(declare-fun e!811304 () Bool)

(assert (=> b!1438096 (=> (not res!970879) (not e!811304))))

(declare-datatypes ((array!97763 0))(
  ( (array!97764 (arr!47168 (Array (_ BitVec 32) (_ BitVec 64))) (size!47719 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97763)

(declare-datatypes ((List!33849 0))(
  ( (Nil!33846) (Cons!33845 (h!35189 (_ BitVec 64)) (t!48550 List!33849)) )
))
(declare-fun arrayNoDuplicates!0 (array!97763 (_ BitVec 32) List!33849) Bool)

(assert (=> b!1438096 (= res!970879 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33846))))

(declare-fun res!970886 () Bool)

(assert (=> start!124320 (=> (not res!970886) (not e!811304))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124320 (= res!970886 (validMask!0 mask!2687))))

(assert (=> start!124320 e!811304))

(assert (=> start!124320 true))

(declare-fun array_inv!36113 (array!97763) Bool)

(assert (=> start!124320 (array_inv!36113 a!2862)))

(declare-fun b!1438097 () Bool)

(declare-fun e!811302 () Bool)

(declare-fun e!811303 () Bool)

(assert (=> b!1438097 (= e!811302 e!811303)))

(declare-fun res!970883 () Bool)

(assert (=> b!1438097 (=> (not res!970883) (not e!811303))))

(declare-fun lt!632448 () (_ BitVec 32))

(assert (=> b!1438097 (= res!970883 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge lt!632448 #b00000000000000000000000000000000) (bvslt lt!632448 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438097 (= lt!632448 (toIndex!0 (select (store (arr!47168 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1438098 () Bool)

(assert (=> b!1438098 (= e!811304 e!811302)))

(declare-fun res!970887 () Bool)

(assert (=> b!1438098 (=> (not res!970887) (not e!811302))))

(declare-datatypes ((SeekEntryResult!11443 0))(
  ( (MissingZero!11443 (index!48163 (_ BitVec 32))) (Found!11443 (index!48164 (_ BitVec 32))) (Intermediate!11443 (undefined!12255 Bool) (index!48165 (_ BitVec 32)) (x!129899 (_ BitVec 32))) (Undefined!11443) (MissingVacant!11443 (index!48166 (_ BitVec 32))) )
))
(declare-fun lt!632449 () SeekEntryResult!11443)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97763 (_ BitVec 32)) SeekEntryResult!11443)

(assert (=> b!1438098 (= res!970887 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47168 a!2862) j!93) mask!2687) (select (arr!47168 a!2862) j!93) a!2862 mask!2687) lt!632449))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438098 (= lt!632449 (Intermediate!11443 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438099 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438099 (= e!811303 (not (validKeyInArray!0 (select (store (arr!47168 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1438100 () Bool)

(declare-fun res!970882 () Bool)

(assert (=> b!1438100 (=> (not res!970882) (not e!811304))))

(assert (=> b!1438100 (= res!970882 (validKeyInArray!0 (select (arr!47168 a!2862) i!1006)))))

(declare-fun b!1438101 () Bool)

(declare-fun res!970880 () Bool)

(assert (=> b!1438101 (=> (not res!970880) (not e!811304))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1438101 (= res!970880 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47719 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47719 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47719 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47168 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438102 () Bool)

(declare-fun res!970885 () Bool)

(assert (=> b!1438102 (=> (not res!970885) (not e!811302))))

(assert (=> b!1438102 (= res!970885 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47168 a!2862) j!93) a!2862 mask!2687) lt!632449))))

(declare-fun b!1438103 () Bool)

(declare-fun res!970884 () Bool)

(assert (=> b!1438103 (=> (not res!970884) (not e!811304))))

(assert (=> b!1438103 (= res!970884 (and (= (size!47719 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47719 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47719 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438104 () Bool)

(declare-fun res!970881 () Bool)

(assert (=> b!1438104 (=> (not res!970881) (not e!811304))))

(assert (=> b!1438104 (= res!970881 (validKeyInArray!0 (select (arr!47168 a!2862) j!93)))))

(declare-fun b!1438105 () Bool)

(declare-fun res!970878 () Bool)

(assert (=> b!1438105 (=> (not res!970878) (not e!811304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97763 (_ BitVec 32)) Bool)

(assert (=> b!1438105 (= res!970878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124320 res!970886) b!1438103))

(assert (= (and b!1438103 res!970884) b!1438100))

(assert (= (and b!1438100 res!970882) b!1438104))

(assert (= (and b!1438104 res!970881) b!1438105))

(assert (= (and b!1438105 res!970878) b!1438096))

(assert (= (and b!1438096 res!970879) b!1438101))

(assert (= (and b!1438101 res!970880) b!1438098))

(assert (= (and b!1438098 res!970887) b!1438102))

(assert (= (and b!1438102 res!970885) b!1438097))

(assert (= (and b!1438097 res!970883) b!1438099))

(declare-fun m!1327331 () Bool)

(assert (=> b!1438101 m!1327331))

(declare-fun m!1327333 () Bool)

(assert (=> b!1438101 m!1327333))

(assert (=> b!1438097 m!1327331))

(declare-fun m!1327335 () Bool)

(assert (=> b!1438097 m!1327335))

(assert (=> b!1438097 m!1327335))

(declare-fun m!1327337 () Bool)

(assert (=> b!1438097 m!1327337))

(declare-fun m!1327339 () Bool)

(assert (=> b!1438102 m!1327339))

(assert (=> b!1438102 m!1327339))

(declare-fun m!1327341 () Bool)

(assert (=> b!1438102 m!1327341))

(declare-fun m!1327343 () Bool)

(assert (=> b!1438105 m!1327343))

(assert (=> b!1438098 m!1327339))

(assert (=> b!1438098 m!1327339))

(declare-fun m!1327345 () Bool)

(assert (=> b!1438098 m!1327345))

(assert (=> b!1438098 m!1327345))

(assert (=> b!1438098 m!1327339))

(declare-fun m!1327347 () Bool)

(assert (=> b!1438098 m!1327347))

(declare-fun m!1327349 () Bool)

(assert (=> start!124320 m!1327349))

(declare-fun m!1327351 () Bool)

(assert (=> start!124320 m!1327351))

(assert (=> b!1438099 m!1327331))

(assert (=> b!1438099 m!1327335))

(assert (=> b!1438099 m!1327335))

(declare-fun m!1327353 () Bool)

(assert (=> b!1438099 m!1327353))

(assert (=> b!1438104 m!1327339))

(assert (=> b!1438104 m!1327339))

(declare-fun m!1327355 () Bool)

(assert (=> b!1438104 m!1327355))

(declare-fun m!1327357 () Bool)

(assert (=> b!1438100 m!1327357))

(assert (=> b!1438100 m!1327357))

(declare-fun m!1327359 () Bool)

(assert (=> b!1438100 m!1327359))

(declare-fun m!1327361 () Bool)

(assert (=> b!1438096 m!1327361))

(check-sat (not b!1438099) (not b!1438096) (not b!1438102) (not start!124320) (not b!1438100) (not b!1438104) (not b!1438098) (not b!1438105) (not b!1438097))
(check-sat)
