; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124454 () Bool)

(assert start!124454)

(declare-fun b!1439259 () Bool)

(declare-fun res!971801 () Bool)

(declare-fun e!811825 () Bool)

(assert (=> b!1439259 (=> (not res!971801) (not e!811825))))

(declare-datatypes ((array!97819 0))(
  ( (array!97820 (arr!47193 (Array (_ BitVec 32) (_ BitVec 64))) (size!47744 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97819)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97819 (_ BitVec 32)) Bool)

(assert (=> b!1439259 (= res!971801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439260 () Bool)

(declare-fun res!971799 () Bool)

(declare-fun e!811823 () Bool)

(assert (=> b!1439260 (=> (not res!971799) (not e!811823))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!632734 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1439260 (= res!971799 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge lt!632734 #b00000000000000000000000000000000) (bvslt lt!632734 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun res!971800 () Bool)

(assert (=> start!124454 (=> (not res!971800) (not e!811825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124454 (= res!971800 (validMask!0 mask!2687))))

(assert (=> start!124454 e!811825))

(assert (=> start!124454 true))

(declare-fun array_inv!36138 (array!97819) Bool)

(assert (=> start!124454 (array_inv!36138 a!2862)))

(declare-fun b!1439261 () Bool)

(declare-fun res!971795 () Bool)

(assert (=> b!1439261 (=> (not res!971795) (not e!811825))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439261 (= res!971795 (validKeyInArray!0 (select (arr!47193 a!2862) j!93)))))

(declare-fun b!1439262 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439262 (= e!811823 (not (validKeyInArray!0 (select (store (arr!47193 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1439263 () Bool)

(declare-fun e!811824 () Bool)

(assert (=> b!1439263 (= e!811825 e!811824)))

(declare-fun res!971802 () Bool)

(assert (=> b!1439263 (=> (not res!971802) (not e!811824))))

(declare-datatypes ((SeekEntryResult!11468 0))(
  ( (MissingZero!11468 (index!48263 (_ BitVec 32))) (Found!11468 (index!48264 (_ BitVec 32))) (Intermediate!11468 (undefined!12280 Bool) (index!48265 (_ BitVec 32)) (x!130000 (_ BitVec 32))) (Undefined!11468) (MissingVacant!11468 (index!48266 (_ BitVec 32))) )
))
(declare-fun lt!632733 () SeekEntryResult!11468)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97819 (_ BitVec 32)) SeekEntryResult!11468)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439263 (= res!971802 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47193 a!2862) j!93) mask!2687) (select (arr!47193 a!2862) j!93) a!2862 mask!2687) lt!632733))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439263 (= lt!632733 (Intermediate!11468 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439264 () Bool)

(declare-fun res!971797 () Bool)

(assert (=> b!1439264 (=> (not res!971797) (not e!811825))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439264 (= res!971797 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47744 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47744 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47744 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47193 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439265 () Bool)

(declare-fun res!971804 () Bool)

(assert (=> b!1439265 (=> (not res!971804) (not e!811825))))

(assert (=> b!1439265 (= res!971804 (and (= (size!47744 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47744 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47744 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439266 () Bool)

(assert (=> b!1439266 (= e!811824 e!811823)))

(declare-fun res!971803 () Bool)

(assert (=> b!1439266 (=> (not res!971803) (not e!811823))))

(assert (=> b!1439266 (= res!971803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632734 (select (store (arr!47193 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97820 (store (arr!47193 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47744 a!2862)) mask!2687) (Intermediate!11468 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1439266 (= lt!632734 (toIndex!0 (select (store (arr!47193 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1439267 () Bool)

(declare-fun res!971796 () Bool)

(assert (=> b!1439267 (=> (not res!971796) (not e!811825))))

(assert (=> b!1439267 (= res!971796 (validKeyInArray!0 (select (arr!47193 a!2862) i!1006)))))

(declare-fun b!1439268 () Bool)

(declare-fun res!971798 () Bool)

(assert (=> b!1439268 (=> (not res!971798) (not e!811824))))

(assert (=> b!1439268 (= res!971798 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47193 a!2862) j!93) a!2862 mask!2687) lt!632733))))

(declare-fun b!1439269 () Bool)

(declare-fun res!971805 () Bool)

(assert (=> b!1439269 (=> (not res!971805) (not e!811825))))

(declare-datatypes ((List!33874 0))(
  ( (Nil!33871) (Cons!33870 (h!35220 (_ BitVec 64)) (t!48575 List!33874)) )
))
(declare-fun arrayNoDuplicates!0 (array!97819 (_ BitVec 32) List!33874) Bool)

(assert (=> b!1439269 (= res!971805 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33871))))

(assert (= (and start!124454 res!971800) b!1439265))

(assert (= (and b!1439265 res!971804) b!1439267))

(assert (= (and b!1439267 res!971796) b!1439261))

(assert (= (and b!1439261 res!971795) b!1439259))

(assert (= (and b!1439259 res!971801) b!1439269))

(assert (= (and b!1439269 res!971805) b!1439264))

(assert (= (and b!1439264 res!971797) b!1439263))

(assert (= (and b!1439263 res!971802) b!1439268))

(assert (= (and b!1439268 res!971798) b!1439266))

(assert (= (and b!1439266 res!971803) b!1439260))

(assert (= (and b!1439260 res!971799) b!1439262))

(declare-fun m!1328375 () Bool)

(assert (=> b!1439267 m!1328375))

(assert (=> b!1439267 m!1328375))

(declare-fun m!1328377 () Bool)

(assert (=> b!1439267 m!1328377))

(declare-fun m!1328379 () Bool)

(assert (=> b!1439269 m!1328379))

(declare-fun m!1328381 () Bool)

(assert (=> b!1439261 m!1328381))

(assert (=> b!1439261 m!1328381))

(declare-fun m!1328383 () Bool)

(assert (=> b!1439261 m!1328383))

(declare-fun m!1328385 () Bool)

(assert (=> b!1439266 m!1328385))

(declare-fun m!1328387 () Bool)

(assert (=> b!1439266 m!1328387))

(assert (=> b!1439266 m!1328387))

(declare-fun m!1328389 () Bool)

(assert (=> b!1439266 m!1328389))

(assert (=> b!1439266 m!1328387))

(declare-fun m!1328391 () Bool)

(assert (=> b!1439266 m!1328391))

(assert (=> b!1439264 m!1328385))

(declare-fun m!1328393 () Bool)

(assert (=> b!1439264 m!1328393))

(assert (=> b!1439263 m!1328381))

(assert (=> b!1439263 m!1328381))

(declare-fun m!1328395 () Bool)

(assert (=> b!1439263 m!1328395))

(assert (=> b!1439263 m!1328395))

(assert (=> b!1439263 m!1328381))

(declare-fun m!1328397 () Bool)

(assert (=> b!1439263 m!1328397))

(declare-fun m!1328399 () Bool)

(assert (=> start!124454 m!1328399))

(declare-fun m!1328401 () Bool)

(assert (=> start!124454 m!1328401))

(assert (=> b!1439268 m!1328381))

(assert (=> b!1439268 m!1328381))

(declare-fun m!1328403 () Bool)

(assert (=> b!1439268 m!1328403))

(assert (=> b!1439262 m!1328385))

(assert (=> b!1439262 m!1328387))

(assert (=> b!1439262 m!1328387))

(declare-fun m!1328405 () Bool)

(assert (=> b!1439262 m!1328405))

(declare-fun m!1328407 () Bool)

(assert (=> b!1439259 m!1328407))

(push 1)

(assert (not start!124454))

(assert (not b!1439269))

(assert (not b!1439267))

(assert (not b!1439262))

(assert (not b!1439263))

