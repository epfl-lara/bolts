; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124488 () Bool)

(assert start!124488)

(declare-fun b!1439748 () Bool)

(declare-fun res!972294 () Bool)

(declare-fun e!811977 () Bool)

(assert (=> b!1439748 (=> (not res!972294) (not e!811977))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1439748 (= res!972294 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1439749 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97853 0))(
  ( (array!97854 (arr!47210 (Array (_ BitVec 32) (_ BitVec 64))) (size!47761 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97853)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439749 (= e!811977 (not (validKeyInArray!0 (select (store (arr!47210 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1439750 () Bool)

(declare-fun res!972293 () Bool)

(declare-fun e!811978 () Bool)

(assert (=> b!1439750 (=> (not res!972293) (not e!811978))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439750 (= res!972293 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47761 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47761 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47761 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47210 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439751 () Bool)

(declare-fun res!972291 () Bool)

(assert (=> b!1439751 (=> (not res!972291) (not e!811977))))

(declare-datatypes ((SeekEntryResult!11485 0))(
  ( (MissingZero!11485 (index!48331 (_ BitVec 32))) (Found!11485 (index!48332 (_ BitVec 32))) (Intermediate!11485 (undefined!12297 Bool) (index!48333 (_ BitVec 32)) (x!130065 (_ BitVec 32))) (Undefined!11485) (MissingVacant!11485 (index!48334 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97853 (_ BitVec 32)) SeekEntryResult!11485)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439751 (= res!972291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47210 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47210 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97854 (store (arr!47210 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47761 a!2862)) mask!2687) (Intermediate!11485 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun res!972285 () Bool)

(assert (=> start!124488 (=> (not res!972285) (not e!811978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124488 (= res!972285 (validMask!0 mask!2687))))

(assert (=> start!124488 e!811978))

(assert (=> start!124488 true))

(declare-fun array_inv!36155 (array!97853) Bool)

(assert (=> start!124488 (array_inv!36155 a!2862)))

(declare-fun b!1439752 () Bool)

(assert (=> b!1439752 (= e!811978 e!811977)))

(declare-fun res!972292 () Bool)

(assert (=> b!1439752 (=> (not res!972292) (not e!811977))))

(declare-fun lt!632812 () SeekEntryResult!11485)

(assert (=> b!1439752 (= res!972292 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47210 a!2862) j!93) mask!2687) (select (arr!47210 a!2862) j!93) a!2862 mask!2687) lt!632812))))

(assert (=> b!1439752 (= lt!632812 (Intermediate!11485 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439753 () Bool)

(declare-fun res!972286 () Bool)

(assert (=> b!1439753 (=> (not res!972286) (not e!811977))))

(assert (=> b!1439753 (= res!972286 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47210 a!2862) j!93) a!2862 mask!2687) lt!632812))))

(declare-fun b!1439754 () Bool)

(declare-fun res!972290 () Bool)

(assert (=> b!1439754 (=> (not res!972290) (not e!811978))))

(assert (=> b!1439754 (= res!972290 (validKeyInArray!0 (select (arr!47210 a!2862) j!93)))))

(declare-fun b!1439755 () Bool)

(declare-fun res!972289 () Bool)

(assert (=> b!1439755 (=> (not res!972289) (not e!811978))))

(assert (=> b!1439755 (= res!972289 (and (= (size!47761 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47761 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47761 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439756 () Bool)

(declare-fun res!972287 () Bool)

(assert (=> b!1439756 (=> (not res!972287) (not e!811978))))

(assert (=> b!1439756 (= res!972287 (validKeyInArray!0 (select (arr!47210 a!2862) i!1006)))))

(declare-fun b!1439757 () Bool)

(declare-fun res!972284 () Bool)

(assert (=> b!1439757 (=> (not res!972284) (not e!811978))))

(declare-datatypes ((List!33891 0))(
  ( (Nil!33888) (Cons!33887 (h!35237 (_ BitVec 64)) (t!48592 List!33891)) )
))
(declare-fun arrayNoDuplicates!0 (array!97853 (_ BitVec 32) List!33891) Bool)

(assert (=> b!1439757 (= res!972284 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33888))))

(declare-fun b!1439758 () Bool)

(declare-fun res!972288 () Bool)

(assert (=> b!1439758 (=> (not res!972288) (not e!811978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97853 (_ BitVec 32)) Bool)

(assert (=> b!1439758 (= res!972288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124488 res!972285) b!1439755))

(assert (= (and b!1439755 res!972289) b!1439756))

(assert (= (and b!1439756 res!972287) b!1439754))

(assert (= (and b!1439754 res!972290) b!1439758))

(assert (= (and b!1439758 res!972288) b!1439757))

(assert (= (and b!1439757 res!972284) b!1439750))

(assert (= (and b!1439750 res!972293) b!1439752))

(assert (= (and b!1439752 res!972292) b!1439753))

(assert (= (and b!1439753 res!972286) b!1439751))

(assert (= (and b!1439751 res!972291) b!1439748))

(assert (= (and b!1439748 res!972294) b!1439749))

(declare-fun m!1328923 () Bool)

(assert (=> b!1439758 m!1328923))

(declare-fun m!1328925 () Bool)

(assert (=> start!124488 m!1328925))

(declare-fun m!1328927 () Bool)

(assert (=> start!124488 m!1328927))

(declare-fun m!1328929 () Bool)

(assert (=> b!1439757 m!1328929))

(declare-fun m!1328931 () Bool)

(assert (=> b!1439751 m!1328931))

(declare-fun m!1328933 () Bool)

(assert (=> b!1439751 m!1328933))

(assert (=> b!1439751 m!1328933))

(declare-fun m!1328935 () Bool)

(assert (=> b!1439751 m!1328935))

(assert (=> b!1439751 m!1328935))

(assert (=> b!1439751 m!1328933))

(declare-fun m!1328937 () Bool)

(assert (=> b!1439751 m!1328937))

(declare-fun m!1328939 () Bool)

(assert (=> b!1439756 m!1328939))

(assert (=> b!1439756 m!1328939))

(declare-fun m!1328941 () Bool)

(assert (=> b!1439756 m!1328941))

(declare-fun m!1328943 () Bool)

(assert (=> b!1439752 m!1328943))

(assert (=> b!1439752 m!1328943))

(declare-fun m!1328945 () Bool)

(assert (=> b!1439752 m!1328945))

(assert (=> b!1439752 m!1328945))

(assert (=> b!1439752 m!1328943))

(declare-fun m!1328947 () Bool)

(assert (=> b!1439752 m!1328947))

(assert (=> b!1439750 m!1328931))

(declare-fun m!1328949 () Bool)

(assert (=> b!1439750 m!1328949))

(assert (=> b!1439753 m!1328943))

(assert (=> b!1439753 m!1328943))

(declare-fun m!1328951 () Bool)

(assert (=> b!1439753 m!1328951))

(assert (=> b!1439749 m!1328931))

(assert (=> b!1439749 m!1328933))

(assert (=> b!1439749 m!1328933))

(declare-fun m!1328953 () Bool)

(assert (=> b!1439749 m!1328953))

(assert (=> b!1439754 m!1328943))

(assert (=> b!1439754 m!1328943))

(declare-fun m!1328955 () Bool)

(assert (=> b!1439754 m!1328955))

(check-sat (not b!1439758) (not b!1439752) (not b!1439751) (not b!1439756) (not b!1439749) (not b!1439753) (not start!124488) (not b!1439757) (not b!1439754))
