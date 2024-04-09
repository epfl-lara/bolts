; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124564 () Bool)

(assert start!124564)

(declare-fun b!1440862 () Bool)

(declare-fun e!812326 () Bool)

(declare-fun e!812327 () Bool)

(assert (=> b!1440862 (= e!812326 e!812327)))

(declare-fun res!973400 () Bool)

(assert (=> b!1440862 (=> (not res!973400) (not e!812327))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97929 0))(
  ( (array!97930 (arr!47248 (Array (_ BitVec 32) (_ BitVec 64))) (size!47799 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97929)

(assert (=> b!1440862 (= res!973400 (= (select (store (arr!47248 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!632992 () array!97929)

(assert (=> b!1440862 (= lt!632992 (array!97930 (store (arr!47248 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47799 a!2862)))))

(declare-fun lt!632988 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1440863 () Bool)

(declare-fun e!812330 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11523 0))(
  ( (MissingZero!11523 (index!48483 (_ BitVec 32))) (Found!11523 (index!48484 (_ BitVec 32))) (Intermediate!11523 (undefined!12335 Bool) (index!48485 (_ BitVec 32)) (x!130207 (_ BitVec 32))) (Undefined!11523) (MissingVacant!11523 (index!48486 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97929 (_ BitVec 32)) SeekEntryResult!11523)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97929 (_ BitVec 32)) SeekEntryResult!11523)

(assert (=> b!1440863 (= e!812330 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!632988 lt!632992 mask!2687) (seekEntryOrOpen!0 lt!632988 lt!632992 mask!2687))))))

(declare-fun b!1440864 () Bool)

(declare-fun e!812325 () Bool)

(assert (=> b!1440864 (= e!812325 false)))

(declare-fun lt!632989 () Bool)

(assert (=> b!1440864 (= lt!632989 e!812330)))

(declare-fun c!133247 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1440864 (= c!133247 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1440866 () Bool)

(declare-fun res!973396 () Bool)

(assert (=> b!1440866 (=> (not res!973396) (not e!812326))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440866 (= res!973396 (validKeyInArray!0 (select (arr!47248 a!2862) j!93)))))

(declare-fun b!1440867 () Bool)

(declare-fun e!812329 () Bool)

(assert (=> b!1440867 (= e!812329 e!812325)))

(declare-fun res!973403 () Bool)

(assert (=> b!1440867 (=> (not res!973403) (not e!812325))))

(declare-fun lt!632990 () SeekEntryResult!11523)

(assert (=> b!1440867 (= res!973403 (= lt!632990 (Intermediate!11523 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97929 (_ BitVec 32)) SeekEntryResult!11523)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440867 (= lt!632990 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!632988 mask!2687) lt!632988 lt!632992 mask!2687))))

(assert (=> b!1440867 (= lt!632988 (select (store (arr!47248 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1440868 () Bool)

(declare-fun res!973397 () Bool)

(assert (=> b!1440868 (=> (not res!973397) (not e!812326))))

(assert (=> b!1440868 (= res!973397 (and (= (size!47799 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47799 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47799 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440869 () Bool)

(declare-fun res!973394 () Bool)

(assert (=> b!1440869 (=> (not res!973394) (not e!812326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97929 (_ BitVec 32)) Bool)

(assert (=> b!1440869 (= res!973394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440870 () Bool)

(assert (=> b!1440870 (= e!812330 (not (= lt!632990 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!632988 lt!632992 mask!2687))))))

(declare-fun b!1440871 () Bool)

(declare-fun res!973401 () Bool)

(assert (=> b!1440871 (=> (not res!973401) (not e!812326))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440871 (= res!973401 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47799 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47799 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47799 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1440872 () Bool)

(declare-fun res!973398 () Bool)

(assert (=> b!1440872 (=> (not res!973398) (not e!812326))))

(declare-datatypes ((List!33929 0))(
  ( (Nil!33926) (Cons!33925 (h!35275 (_ BitVec 64)) (t!48630 List!33929)) )
))
(declare-fun arrayNoDuplicates!0 (array!97929 (_ BitVec 32) List!33929) Bool)

(assert (=> b!1440872 (= res!973398 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33926))))

(declare-fun b!1440873 () Bool)

(declare-fun res!973395 () Bool)

(assert (=> b!1440873 (=> (not res!973395) (not e!812329))))

(declare-fun lt!632991 () SeekEntryResult!11523)

(assert (=> b!1440873 (= res!973395 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47248 a!2862) j!93) a!2862 mask!2687) lt!632991))))

(declare-fun b!1440874 () Bool)

(assert (=> b!1440874 (= e!812327 e!812329)))

(declare-fun res!973402 () Bool)

(assert (=> b!1440874 (=> (not res!973402) (not e!812329))))

(assert (=> b!1440874 (= res!973402 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47248 a!2862) j!93) mask!2687) (select (arr!47248 a!2862) j!93) a!2862 mask!2687) lt!632991))))

(assert (=> b!1440874 (= lt!632991 (Intermediate!11523 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440865 () Bool)

(declare-fun res!973399 () Bool)

(assert (=> b!1440865 (=> (not res!973399) (not e!812326))))

(assert (=> b!1440865 (= res!973399 (validKeyInArray!0 (select (arr!47248 a!2862) i!1006)))))

(declare-fun res!973404 () Bool)

(assert (=> start!124564 (=> (not res!973404) (not e!812326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124564 (= res!973404 (validMask!0 mask!2687))))

(assert (=> start!124564 e!812326))

(assert (=> start!124564 true))

(declare-fun array_inv!36193 (array!97929) Bool)

(assert (=> start!124564 (array_inv!36193 a!2862)))

(assert (= (and start!124564 res!973404) b!1440868))

(assert (= (and b!1440868 res!973397) b!1440865))

(assert (= (and b!1440865 res!973399) b!1440866))

(assert (= (and b!1440866 res!973396) b!1440869))

(assert (= (and b!1440869 res!973394) b!1440872))

(assert (= (and b!1440872 res!973398) b!1440871))

(assert (= (and b!1440871 res!973401) b!1440862))

(assert (= (and b!1440862 res!973400) b!1440874))

(assert (= (and b!1440874 res!973402) b!1440873))

(assert (= (and b!1440873 res!973395) b!1440867))

(assert (= (and b!1440867 res!973403) b!1440864))

(assert (= (and b!1440864 c!133247) b!1440870))

(assert (= (and b!1440864 (not c!133247)) b!1440863))

(declare-fun m!1330155 () Bool)

(assert (=> b!1440869 m!1330155))

(declare-fun m!1330157 () Bool)

(assert (=> b!1440872 m!1330157))

(declare-fun m!1330159 () Bool)

(assert (=> b!1440874 m!1330159))

(assert (=> b!1440874 m!1330159))

(declare-fun m!1330161 () Bool)

(assert (=> b!1440874 m!1330161))

(assert (=> b!1440874 m!1330161))

(assert (=> b!1440874 m!1330159))

(declare-fun m!1330163 () Bool)

(assert (=> b!1440874 m!1330163))

(declare-fun m!1330165 () Bool)

(assert (=> b!1440865 m!1330165))

(assert (=> b!1440865 m!1330165))

(declare-fun m!1330167 () Bool)

(assert (=> b!1440865 m!1330167))

(assert (=> b!1440866 m!1330159))

(assert (=> b!1440866 m!1330159))

(declare-fun m!1330169 () Bool)

(assert (=> b!1440866 m!1330169))

(assert (=> b!1440873 m!1330159))

(assert (=> b!1440873 m!1330159))

(declare-fun m!1330171 () Bool)

(assert (=> b!1440873 m!1330171))

(declare-fun m!1330173 () Bool)

(assert (=> b!1440867 m!1330173))

(assert (=> b!1440867 m!1330173))

(declare-fun m!1330175 () Bool)

(assert (=> b!1440867 m!1330175))

(declare-fun m!1330177 () Bool)

(assert (=> b!1440867 m!1330177))

(declare-fun m!1330179 () Bool)

(assert (=> b!1440867 m!1330179))

(assert (=> b!1440862 m!1330177))

(declare-fun m!1330181 () Bool)

(assert (=> b!1440862 m!1330181))

(declare-fun m!1330183 () Bool)

(assert (=> b!1440870 m!1330183))

(declare-fun m!1330185 () Bool)

(assert (=> b!1440863 m!1330185))

(declare-fun m!1330187 () Bool)

(assert (=> b!1440863 m!1330187))

(declare-fun m!1330189 () Bool)

(assert (=> start!124564 m!1330189))

(declare-fun m!1330191 () Bool)

(assert (=> start!124564 m!1330191))

(push 1)

