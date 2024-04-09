; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124482 () Bool)

(assert start!124482)

(declare-fun b!1439657 () Bool)

(declare-fun res!972197 () Bool)

(declare-fun e!811952 () Bool)

(assert (=> b!1439657 (=> (not res!972197) (not e!811952))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97847 0))(
  ( (array!97848 (arr!47207 (Array (_ BitVec 32) (_ BitVec 64))) (size!47758 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97847)

(assert (=> b!1439657 (= res!972197 (and (= (size!47758 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47758 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47758 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439658 () Bool)

(declare-fun e!811951 () Bool)

(assert (=> b!1439658 (= e!811951 false)))

(declare-datatypes ((SeekEntryResult!11482 0))(
  ( (MissingZero!11482 (index!48319 (_ BitVec 32))) (Found!11482 (index!48320 (_ BitVec 32))) (Intermediate!11482 (undefined!12294 Bool) (index!48321 (_ BitVec 32)) (x!130054 (_ BitVec 32))) (Undefined!11482) (MissingVacant!11482 (index!48322 (_ BitVec 32))) )
))
(declare-fun lt!632799 () SeekEntryResult!11482)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97847 (_ BitVec 32)) SeekEntryResult!11482)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439658 (= lt!632799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47207 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47207 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97848 (store (arr!47207 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47758 a!2862)) mask!2687))))

(declare-fun res!972201 () Bool)

(assert (=> start!124482 (=> (not res!972201) (not e!811952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124482 (= res!972201 (validMask!0 mask!2687))))

(assert (=> start!124482 e!811952))

(assert (=> start!124482 true))

(declare-fun array_inv!36152 (array!97847) Bool)

(assert (=> start!124482 (array_inv!36152 a!2862)))

(declare-fun b!1439659 () Bool)

(declare-fun res!972198 () Bool)

(assert (=> b!1439659 (=> (not res!972198) (not e!811952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439659 (= res!972198 (validKeyInArray!0 (select (arr!47207 a!2862) i!1006)))))

(declare-fun b!1439660 () Bool)

(declare-fun res!972199 () Bool)

(assert (=> b!1439660 (=> (not res!972199) (not e!811952))))

(assert (=> b!1439660 (= res!972199 (validKeyInArray!0 (select (arr!47207 a!2862) j!93)))))

(declare-fun b!1439661 () Bool)

(declare-fun res!972200 () Bool)

(assert (=> b!1439661 (=> (not res!972200) (not e!811952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97847 (_ BitVec 32)) Bool)

(assert (=> b!1439661 (= res!972200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439662 () Bool)

(declare-fun res!972196 () Bool)

(assert (=> b!1439662 (=> (not res!972196) (not e!811952))))

(declare-datatypes ((List!33888 0))(
  ( (Nil!33885) (Cons!33884 (h!35234 (_ BitVec 64)) (t!48589 List!33888)) )
))
(declare-fun arrayNoDuplicates!0 (array!97847 (_ BitVec 32) List!33888) Bool)

(assert (=> b!1439662 (= res!972196 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33885))))

(declare-fun b!1439663 () Bool)

(declare-fun res!972194 () Bool)

(assert (=> b!1439663 (=> (not res!972194) (not e!811951))))

(declare-fun lt!632800 () SeekEntryResult!11482)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439663 (= res!972194 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47207 a!2862) j!93) a!2862 mask!2687) lt!632800))))

(declare-fun b!1439664 () Bool)

(assert (=> b!1439664 (= e!811952 e!811951)))

(declare-fun res!972193 () Bool)

(assert (=> b!1439664 (=> (not res!972193) (not e!811951))))

(assert (=> b!1439664 (= res!972193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47207 a!2862) j!93) mask!2687) (select (arr!47207 a!2862) j!93) a!2862 mask!2687) lt!632800))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439664 (= lt!632800 (Intermediate!11482 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439665 () Bool)

(declare-fun res!972195 () Bool)

(assert (=> b!1439665 (=> (not res!972195) (not e!811952))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439665 (= res!972195 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47758 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47758 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47758 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47207 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124482 res!972201) b!1439657))

(assert (= (and b!1439657 res!972197) b!1439659))

(assert (= (and b!1439659 res!972198) b!1439660))

(assert (= (and b!1439660 res!972199) b!1439661))

(assert (= (and b!1439661 res!972200) b!1439662))

(assert (= (and b!1439662 res!972196) b!1439665))

(assert (= (and b!1439665 res!972195) b!1439664))

(assert (= (and b!1439664 res!972193) b!1439663))

(assert (= (and b!1439663 res!972194) b!1439658))

(declare-fun m!1328825 () Bool)

(assert (=> b!1439659 m!1328825))

(assert (=> b!1439659 m!1328825))

(declare-fun m!1328827 () Bool)

(assert (=> b!1439659 m!1328827))

(declare-fun m!1328829 () Bool)

(assert (=> b!1439665 m!1328829))

(declare-fun m!1328831 () Bool)

(assert (=> b!1439665 m!1328831))

(declare-fun m!1328833 () Bool)

(assert (=> start!124482 m!1328833))

(declare-fun m!1328835 () Bool)

(assert (=> start!124482 m!1328835))

(declare-fun m!1328837 () Bool)

(assert (=> b!1439664 m!1328837))

(assert (=> b!1439664 m!1328837))

(declare-fun m!1328839 () Bool)

(assert (=> b!1439664 m!1328839))

(assert (=> b!1439664 m!1328839))

(assert (=> b!1439664 m!1328837))

(declare-fun m!1328841 () Bool)

(assert (=> b!1439664 m!1328841))

(declare-fun m!1328843 () Bool)

(assert (=> b!1439662 m!1328843))

(assert (=> b!1439663 m!1328837))

(assert (=> b!1439663 m!1328837))

(declare-fun m!1328845 () Bool)

(assert (=> b!1439663 m!1328845))

(assert (=> b!1439660 m!1328837))

(assert (=> b!1439660 m!1328837))

(declare-fun m!1328847 () Bool)

(assert (=> b!1439660 m!1328847))

(declare-fun m!1328849 () Bool)

(assert (=> b!1439661 m!1328849))

(assert (=> b!1439658 m!1328829))

(declare-fun m!1328851 () Bool)

(assert (=> b!1439658 m!1328851))

(assert (=> b!1439658 m!1328851))

(declare-fun m!1328853 () Bool)

(assert (=> b!1439658 m!1328853))

(assert (=> b!1439658 m!1328853))

(assert (=> b!1439658 m!1328851))

(declare-fun m!1328855 () Bool)

(assert (=> b!1439658 m!1328855))

(check-sat (not b!1439663) (not b!1439662) (not start!124482) (not b!1439660) (not b!1439664) (not b!1439659) (not b!1439661) (not b!1439658))
(check-sat)
