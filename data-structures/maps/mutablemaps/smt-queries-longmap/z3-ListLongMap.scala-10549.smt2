; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124476 () Bool)

(assert start!124476)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!811924 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1439572 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1439572 (= e!811924 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1439573 () Bool)

(declare-fun res!972113 () Bool)

(declare-fun e!811923 () Bool)

(assert (=> b!1439573 (=> (not res!972113) (not e!811923))))

(declare-datatypes ((array!97841 0))(
  ( (array!97842 (arr!47204 (Array (_ BitVec 32) (_ BitVec 64))) (size!47755 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97841)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97841 (_ BitVec 32)) Bool)

(assert (=> b!1439573 (= res!972113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439574 () Bool)

(declare-fun res!972116 () Bool)

(assert (=> b!1439574 (=> (not res!972116) (not e!811924))))

(declare-datatypes ((SeekEntryResult!11479 0))(
  ( (MissingZero!11479 (index!48307 (_ BitVec 32))) (Found!11479 (index!48308 (_ BitVec 32))) (Intermediate!11479 (undefined!12291 Bool) (index!48309 (_ BitVec 32)) (x!130043 (_ BitVec 32))) (Undefined!11479) (MissingVacant!11479 (index!48310 (_ BitVec 32))) )
))
(declare-fun lt!632785 () SeekEntryResult!11479)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97841 (_ BitVec 32)) SeekEntryResult!11479)

(assert (=> b!1439574 (= res!972116 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47204 a!2862) j!93) a!2862 mask!2687) lt!632785))))

(declare-fun b!1439575 () Bool)

(declare-fun res!972112 () Bool)

(assert (=> b!1439575 (=> (not res!972112) (not e!811923))))

(declare-datatypes ((List!33885 0))(
  ( (Nil!33882) (Cons!33881 (h!35231 (_ BitVec 64)) (t!48586 List!33885)) )
))
(declare-fun arrayNoDuplicates!0 (array!97841 (_ BitVec 32) List!33885) Bool)

(assert (=> b!1439575 (= res!972112 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33882))))

(declare-fun b!1439576 () Bool)

(declare-fun res!972108 () Bool)

(assert (=> b!1439576 (=> (not res!972108) (not e!811923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439576 (= res!972108 (validKeyInArray!0 (select (arr!47204 a!2862) j!93)))))

(declare-fun b!1439577 () Bool)

(declare-fun res!972117 () Bool)

(assert (=> b!1439577 (=> (not res!972117) (not e!811923))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439577 (= res!972117 (and (= (size!47755 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47755 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47755 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439578 () Bool)

(declare-fun res!972111 () Bool)

(assert (=> b!1439578 (=> (not res!972111) (not e!811923))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439578 (= res!972111 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47755 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47755 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47755 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47204 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439579 () Bool)

(assert (=> b!1439579 (= e!811923 e!811924)))

(declare-fun res!972110 () Bool)

(assert (=> b!1439579 (=> (not res!972110) (not e!811924))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439579 (= res!972110 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47204 a!2862) j!93) mask!2687) (select (arr!47204 a!2862) j!93) a!2862 mask!2687) lt!632785))))

(assert (=> b!1439579 (= lt!632785 (Intermediate!11479 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439581 () Bool)

(declare-fun res!972115 () Bool)

(assert (=> b!1439581 (=> (not res!972115) (not e!811924))))

(assert (=> b!1439581 (= res!972115 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47204 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47204 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97842 (store (arr!47204 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47755 a!2862)) mask!2687) (Intermediate!11479 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun res!972114 () Bool)

(assert (=> start!124476 (=> (not res!972114) (not e!811923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124476 (= res!972114 (validMask!0 mask!2687))))

(assert (=> start!124476 e!811923))

(assert (=> start!124476 true))

(declare-fun array_inv!36149 (array!97841) Bool)

(assert (=> start!124476 (array_inv!36149 a!2862)))

(declare-fun b!1439580 () Bool)

(declare-fun res!972109 () Bool)

(assert (=> b!1439580 (=> (not res!972109) (not e!811923))))

(assert (=> b!1439580 (= res!972109 (validKeyInArray!0 (select (arr!47204 a!2862) i!1006)))))

(assert (= (and start!124476 res!972114) b!1439577))

(assert (= (and b!1439577 res!972117) b!1439580))

(assert (= (and b!1439580 res!972109) b!1439576))

(assert (= (and b!1439576 res!972108) b!1439573))

(assert (= (and b!1439573 res!972113) b!1439575))

(assert (= (and b!1439575 res!972112) b!1439578))

(assert (= (and b!1439578 res!972111) b!1439579))

(assert (= (and b!1439579 res!972110) b!1439574))

(assert (= (and b!1439574 res!972116) b!1439581))

(assert (= (and b!1439581 res!972115) b!1439572))

(declare-fun m!1328729 () Bool)

(assert (=> b!1439579 m!1328729))

(assert (=> b!1439579 m!1328729))

(declare-fun m!1328731 () Bool)

(assert (=> b!1439579 m!1328731))

(assert (=> b!1439579 m!1328731))

(assert (=> b!1439579 m!1328729))

(declare-fun m!1328733 () Bool)

(assert (=> b!1439579 m!1328733))

(declare-fun m!1328735 () Bool)

(assert (=> b!1439575 m!1328735))

(declare-fun m!1328737 () Bool)

(assert (=> b!1439573 m!1328737))

(declare-fun m!1328739 () Bool)

(assert (=> b!1439578 m!1328739))

(declare-fun m!1328741 () Bool)

(assert (=> b!1439578 m!1328741))

(declare-fun m!1328743 () Bool)

(assert (=> b!1439580 m!1328743))

(assert (=> b!1439580 m!1328743))

(declare-fun m!1328745 () Bool)

(assert (=> b!1439580 m!1328745))

(assert (=> b!1439576 m!1328729))

(assert (=> b!1439576 m!1328729))

(declare-fun m!1328747 () Bool)

(assert (=> b!1439576 m!1328747))

(declare-fun m!1328749 () Bool)

(assert (=> start!124476 m!1328749))

(declare-fun m!1328751 () Bool)

(assert (=> start!124476 m!1328751))

(assert (=> b!1439574 m!1328729))

(assert (=> b!1439574 m!1328729))

(declare-fun m!1328753 () Bool)

(assert (=> b!1439574 m!1328753))

(assert (=> b!1439581 m!1328739))

(declare-fun m!1328755 () Bool)

(assert (=> b!1439581 m!1328755))

(assert (=> b!1439581 m!1328755))

(declare-fun m!1328757 () Bool)

(assert (=> b!1439581 m!1328757))

(assert (=> b!1439581 m!1328757))

(assert (=> b!1439581 m!1328755))

(declare-fun m!1328759 () Bool)

(assert (=> b!1439581 m!1328759))

(check-sat (not b!1439574) (not b!1439573) (not b!1439579) (not b!1439581) (not b!1439576) (not b!1439580) (not start!124476) (not b!1439575))
(check-sat)
