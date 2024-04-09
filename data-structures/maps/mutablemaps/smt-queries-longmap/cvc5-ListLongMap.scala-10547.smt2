; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124462 () Bool)

(assert start!124462)

(declare-fun b!1439371 () Bool)

(declare-fun res!971915 () Bool)

(declare-fun e!811862 () Bool)

(assert (=> b!1439371 (=> (not res!971915) (not e!811862))))

(declare-datatypes ((array!97827 0))(
  ( (array!97828 (arr!47197 (Array (_ BitVec 32) (_ BitVec 64))) (size!47748 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97827)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97827 (_ BitVec 32)) Bool)

(assert (=> b!1439371 (= res!971915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439372 () Bool)

(declare-fun res!971912 () Bool)

(assert (=> b!1439372 (=> (not res!971912) (not e!811862))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439372 (= res!971912 (validKeyInArray!0 (select (arr!47197 a!2862) j!93)))))

(declare-fun b!1439373 () Bool)

(declare-fun res!971916 () Bool)

(assert (=> b!1439373 (=> (not res!971916) (not e!811862))))

(declare-datatypes ((List!33878 0))(
  ( (Nil!33875) (Cons!33874 (h!35224 (_ BitVec 64)) (t!48579 List!33878)) )
))
(declare-fun arrayNoDuplicates!0 (array!97827 (_ BitVec 32) List!33878) Bool)

(assert (=> b!1439373 (= res!971916 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33875))))

(declare-fun b!1439374 () Bool)

(declare-fun res!971908 () Bool)

(assert (=> b!1439374 (=> (not res!971908) (not e!811862))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439374 (= res!971908 (and (= (size!47748 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47748 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47748 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439375 () Bool)

(declare-fun e!811860 () Bool)

(assert (=> b!1439375 (= e!811862 e!811860)))

(declare-fun res!971911 () Bool)

(assert (=> b!1439375 (=> (not res!971911) (not e!811860))))

(declare-datatypes ((SeekEntryResult!11472 0))(
  ( (MissingZero!11472 (index!48279 (_ BitVec 32))) (Found!11472 (index!48280 (_ BitVec 32))) (Intermediate!11472 (undefined!12284 Bool) (index!48281 (_ BitVec 32)) (x!130020 (_ BitVec 32))) (Undefined!11472) (MissingVacant!11472 (index!48282 (_ BitVec 32))) )
))
(declare-fun lt!632755 () SeekEntryResult!11472)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97827 (_ BitVec 32)) SeekEntryResult!11472)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439375 (= res!971911 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47197 a!2862) j!93) mask!2687) (select (arr!47197 a!2862) j!93) a!2862 mask!2687) lt!632755))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439375 (= lt!632755 (Intermediate!11472 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439376 () Bool)

(declare-fun res!971907 () Bool)

(assert (=> b!1439376 (=> (not res!971907) (not e!811862))))

(assert (=> b!1439376 (= res!971907 (validKeyInArray!0 (select (arr!47197 a!2862) i!1006)))))

(declare-fun res!971913 () Bool)

(assert (=> start!124462 (=> (not res!971913) (not e!811862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124462 (= res!971913 (validMask!0 mask!2687))))

(assert (=> start!124462 e!811862))

(assert (=> start!124462 true))

(declare-fun array_inv!36142 (array!97827) Bool)

(assert (=> start!124462 (array_inv!36142 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1439377 () Bool)

(assert (=> b!1439377 (= e!811860 (and (bvsle x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1439378 () Bool)

(declare-fun res!971910 () Bool)

(assert (=> b!1439378 (=> (not res!971910) (not e!811862))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439378 (= res!971910 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47748 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47748 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47748 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47197 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439379 () Bool)

(declare-fun res!971914 () Bool)

(assert (=> b!1439379 (=> (not res!971914) (not e!811860))))

(assert (=> b!1439379 (= res!971914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47197 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47197 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97828 (store (arr!47197 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47748 a!2862)) mask!2687) (Intermediate!11472 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439380 () Bool)

(declare-fun res!971909 () Bool)

(assert (=> b!1439380 (=> (not res!971909) (not e!811860))))

(assert (=> b!1439380 (= res!971909 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47197 a!2862) j!93) a!2862 mask!2687) lt!632755))))

(assert (= (and start!124462 res!971913) b!1439374))

(assert (= (and b!1439374 res!971908) b!1439376))

(assert (= (and b!1439376 res!971907) b!1439372))

(assert (= (and b!1439372 res!971912) b!1439371))

(assert (= (and b!1439371 res!971915) b!1439373))

(assert (= (and b!1439373 res!971916) b!1439378))

(assert (= (and b!1439378 res!971910) b!1439375))

(assert (= (and b!1439375 res!971911) b!1439380))

(assert (= (and b!1439380 res!971909) b!1439379))

(assert (= (and b!1439379 res!971914) b!1439377))

(declare-fun m!1328505 () Bool)

(assert (=> b!1439375 m!1328505))

(assert (=> b!1439375 m!1328505))

(declare-fun m!1328507 () Bool)

(assert (=> b!1439375 m!1328507))

(assert (=> b!1439375 m!1328507))

(assert (=> b!1439375 m!1328505))

(declare-fun m!1328509 () Bool)

(assert (=> b!1439375 m!1328509))

(declare-fun m!1328511 () Bool)

(assert (=> b!1439371 m!1328511))

(declare-fun m!1328513 () Bool)

(assert (=> b!1439379 m!1328513))

(declare-fun m!1328515 () Bool)

(assert (=> b!1439379 m!1328515))

(assert (=> b!1439379 m!1328515))

(declare-fun m!1328517 () Bool)

(assert (=> b!1439379 m!1328517))

(assert (=> b!1439379 m!1328517))

(assert (=> b!1439379 m!1328515))

(declare-fun m!1328519 () Bool)

(assert (=> b!1439379 m!1328519))

(assert (=> b!1439372 m!1328505))

(assert (=> b!1439372 m!1328505))

(declare-fun m!1328521 () Bool)

(assert (=> b!1439372 m!1328521))

(assert (=> b!1439380 m!1328505))

(assert (=> b!1439380 m!1328505))

(declare-fun m!1328523 () Bool)

(assert (=> b!1439380 m!1328523))

(declare-fun m!1328525 () Bool)

(assert (=> b!1439376 m!1328525))

(assert (=> b!1439376 m!1328525))

(declare-fun m!1328527 () Bool)

(assert (=> b!1439376 m!1328527))

(assert (=> b!1439378 m!1328513))

(declare-fun m!1328529 () Bool)

(assert (=> b!1439378 m!1328529))

(declare-fun m!1328531 () Bool)

(assert (=> start!124462 m!1328531))

(declare-fun m!1328533 () Bool)

(assert (=> start!124462 m!1328533))

(declare-fun m!1328535 () Bool)

(assert (=> b!1439373 m!1328535))

(push 1)

(assert (not b!1439379))

(assert (not b!1439371))

(assert (not start!124462))

(assert (not b!1439380))

