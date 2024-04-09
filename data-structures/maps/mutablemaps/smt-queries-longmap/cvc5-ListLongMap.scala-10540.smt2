; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124378 () Bool)

(assert start!124378)

(declare-fun b!1438550 () Bool)

(declare-fun res!971212 () Bool)

(declare-fun e!811517 () Bool)

(assert (=> b!1438550 (=> (not res!971212) (not e!811517))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11451 0))(
  ( (MissingZero!11451 (index!48195 (_ BitVec 32))) (Found!11451 (index!48196 (_ BitVec 32))) (Intermediate!11451 (undefined!12263 Bool) (index!48197 (_ BitVec 32)) (x!129937 (_ BitVec 32))) (Undefined!11451) (MissingVacant!11451 (index!48198 (_ BitVec 32))) )
))
(declare-fun lt!632560 () SeekEntryResult!11451)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97782 0))(
  ( (array!97783 (arr!47176 (Array (_ BitVec 32) (_ BitVec 64))) (size!47727 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97782)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97782 (_ BitVec 32)) SeekEntryResult!11451)

(assert (=> b!1438550 (= res!971212 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47176 a!2862) j!93) a!2862 mask!2687) lt!632560))))

(declare-fun b!1438551 () Bool)

(declare-fun res!971213 () Bool)

(declare-fun e!811516 () Bool)

(assert (=> b!1438551 (=> (not res!971213) (not e!811516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438551 (= res!971213 (validKeyInArray!0 (select (arr!47176 a!2862) j!93)))))

(declare-fun b!1438552 () Bool)

(assert (=> b!1438552 (= e!811517 false)))

(declare-fun lt!632559 () SeekEntryResult!11451)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438552 (= lt!632559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47176 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47176 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97783 (store (arr!47176 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47727 a!2862)) mask!2687))))

(declare-fun b!1438553 () Bool)

(declare-fun res!971214 () Bool)

(assert (=> b!1438553 (=> (not res!971214) (not e!811516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97782 (_ BitVec 32)) Bool)

(assert (=> b!1438553 (= res!971214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438554 () Bool)

(declare-fun res!971210 () Bool)

(assert (=> b!1438554 (=> (not res!971210) (not e!811516))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438554 (= res!971210 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47727 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47727 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47727 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47176 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!971215 () Bool)

(assert (=> start!124378 (=> (not res!971215) (not e!811516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124378 (= res!971215 (validMask!0 mask!2687))))

(assert (=> start!124378 e!811516))

(assert (=> start!124378 true))

(declare-fun array_inv!36121 (array!97782) Bool)

(assert (=> start!124378 (array_inv!36121 a!2862)))

(declare-fun b!1438555 () Bool)

(declare-fun res!971216 () Bool)

(assert (=> b!1438555 (=> (not res!971216) (not e!811516))))

(declare-datatypes ((List!33857 0))(
  ( (Nil!33854) (Cons!33853 (h!35200 (_ BitVec 64)) (t!48558 List!33857)) )
))
(declare-fun arrayNoDuplicates!0 (array!97782 (_ BitVec 32) List!33857) Bool)

(assert (=> b!1438555 (= res!971216 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33854))))

(declare-fun b!1438556 () Bool)

(declare-fun res!971209 () Bool)

(assert (=> b!1438556 (=> (not res!971209) (not e!811516))))

(assert (=> b!1438556 (= res!971209 (validKeyInArray!0 (select (arr!47176 a!2862) i!1006)))))

(declare-fun b!1438557 () Bool)

(declare-fun res!971211 () Bool)

(assert (=> b!1438557 (=> (not res!971211) (not e!811516))))

(assert (=> b!1438557 (= res!971211 (and (= (size!47727 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47727 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47727 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438558 () Bool)

(assert (=> b!1438558 (= e!811516 e!811517)))

(declare-fun res!971217 () Bool)

(assert (=> b!1438558 (=> (not res!971217) (not e!811517))))

(assert (=> b!1438558 (= res!971217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47176 a!2862) j!93) mask!2687) (select (arr!47176 a!2862) j!93) a!2862 mask!2687) lt!632560))))

(assert (=> b!1438558 (= lt!632560 (Intermediate!11451 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124378 res!971215) b!1438557))

(assert (= (and b!1438557 res!971211) b!1438556))

(assert (= (and b!1438556 res!971209) b!1438551))

(assert (= (and b!1438551 res!971213) b!1438553))

(assert (= (and b!1438553 res!971214) b!1438555))

(assert (= (and b!1438555 res!971216) b!1438554))

(assert (= (and b!1438554 res!971210) b!1438558))

(assert (= (and b!1438558 res!971217) b!1438550))

(assert (= (and b!1438550 res!971212) b!1438552))

(declare-fun m!1327707 () Bool)

(assert (=> b!1438558 m!1327707))

(assert (=> b!1438558 m!1327707))

(declare-fun m!1327709 () Bool)

(assert (=> b!1438558 m!1327709))

(assert (=> b!1438558 m!1327709))

(assert (=> b!1438558 m!1327707))

(declare-fun m!1327711 () Bool)

(assert (=> b!1438558 m!1327711))

(assert (=> b!1438550 m!1327707))

(assert (=> b!1438550 m!1327707))

(declare-fun m!1327713 () Bool)

(assert (=> b!1438550 m!1327713))

(declare-fun m!1327715 () Bool)

(assert (=> b!1438555 m!1327715))

(assert (=> b!1438551 m!1327707))

(assert (=> b!1438551 m!1327707))

(declare-fun m!1327717 () Bool)

(assert (=> b!1438551 m!1327717))

(declare-fun m!1327719 () Bool)

(assert (=> b!1438552 m!1327719))

(declare-fun m!1327721 () Bool)

(assert (=> b!1438552 m!1327721))

(assert (=> b!1438552 m!1327721))

(declare-fun m!1327723 () Bool)

(assert (=> b!1438552 m!1327723))

(assert (=> b!1438552 m!1327723))

(assert (=> b!1438552 m!1327721))

(declare-fun m!1327725 () Bool)

(assert (=> b!1438552 m!1327725))

(declare-fun m!1327727 () Bool)

(assert (=> b!1438553 m!1327727))

(declare-fun m!1327729 () Bool)

(assert (=> b!1438556 m!1327729))

(assert (=> b!1438556 m!1327729))

(declare-fun m!1327731 () Bool)

(assert (=> b!1438556 m!1327731))

(assert (=> b!1438554 m!1327719))

(declare-fun m!1327733 () Bool)

(assert (=> b!1438554 m!1327733))

(declare-fun m!1327735 () Bool)

(assert (=> start!124378 m!1327735))

(declare-fun m!1327737 () Bool)

(assert (=> start!124378 m!1327737))

(push 1)

