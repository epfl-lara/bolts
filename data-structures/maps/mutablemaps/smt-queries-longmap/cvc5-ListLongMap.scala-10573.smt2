; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124618 () Bool)

(assert start!124618)

(declare-fun b!1441995 () Bool)

(declare-fun res!974365 () Bool)

(declare-fun e!812813 () Bool)

(assert (=> b!1441995 (=> (not res!974365) (not e!812813))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97983 0))(
  ( (array!97984 (arr!47275 (Array (_ BitVec 32) (_ BitVec 64))) (size!47826 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97983)

(assert (=> b!1441995 (= res!974365 (and (= (size!47826 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47826 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47826 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441996 () Bool)

(declare-fun res!974368 () Bool)

(declare-fun e!812815 () Bool)

(assert (=> b!1441996 (=> (not res!974368) (not e!812815))))

(declare-fun e!812818 () Bool)

(assert (=> b!1441996 (= res!974368 e!812818)))

(declare-fun c!133328 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441996 (= c!133328 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!812817 () Bool)

(declare-fun b!1441997 () Bool)

(assert (=> b!1441997 (= e!812817 (or (= (select (arr!47275 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47275 a!2862) intermediateBeforeIndex!19) (select (arr!47275 a!2862) j!93))))))

(declare-fun b!1441998 () Bool)

(declare-fun e!812816 () Bool)

(assert (=> b!1441998 (= e!812813 e!812816)))

(declare-fun res!974376 () Bool)

(assert (=> b!1441998 (=> (not res!974376) (not e!812816))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441998 (= res!974376 (= (select (store (arr!47275 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633395 () array!97983)

(assert (=> b!1441998 (= lt!633395 (array!97984 (store (arr!47275 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47826 a!2862)))))

(declare-fun b!1441999 () Bool)

(declare-fun res!974379 () Bool)

(assert (=> b!1441999 (=> (not res!974379) (not e!812813))))

(declare-datatypes ((List!33956 0))(
  ( (Nil!33953) (Cons!33952 (h!35302 (_ BitVec 64)) (t!48657 List!33956)) )
))
(declare-fun arrayNoDuplicates!0 (array!97983 (_ BitVec 32) List!33956) Bool)

(assert (=> b!1441999 (= res!974379 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33953))))

(declare-fun b!1442000 () Bool)

(declare-fun res!974369 () Bool)

(declare-fun e!812814 () Bool)

(assert (=> b!1442000 (=> (not res!974369) (not e!812814))))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11550 0))(
  ( (MissingZero!11550 (index!48591 (_ BitVec 32))) (Found!11550 (index!48592 (_ BitVec 32))) (Intermediate!11550 (undefined!12362 Bool) (index!48593 (_ BitVec 32)) (x!130306 (_ BitVec 32))) (Undefined!11550) (MissingVacant!11550 (index!48594 (_ BitVec 32))) )
))
(declare-fun lt!633397 () SeekEntryResult!11550)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97983 (_ BitVec 32)) SeekEntryResult!11550)

(assert (=> b!1442000 (= res!974369 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47275 a!2862) j!93) a!2862 mask!2687) lt!633397))))

(declare-fun b!1442001 () Bool)

(declare-fun res!974375 () Bool)

(assert (=> b!1442001 (=> (not res!974375) (not e!812817))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97983 (_ BitVec 32)) SeekEntryResult!11550)

(assert (=> b!1442001 (= res!974375 (= (seekEntryOrOpen!0 (select (arr!47275 a!2862) j!93) a!2862 mask!2687) (Found!11550 j!93)))))

(declare-fun b!1442002 () Bool)

(declare-fun res!974378 () Bool)

(assert (=> b!1442002 (=> (not res!974378) (not e!812813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442002 (= res!974378 (validKeyInArray!0 (select (arr!47275 a!2862) j!93)))))

(declare-fun b!1442004 () Bool)

(assert (=> b!1442004 (= e!812816 e!812814)))

(declare-fun res!974366 () Bool)

(assert (=> b!1442004 (=> (not res!974366) (not e!812814))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442004 (= res!974366 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47275 a!2862) j!93) mask!2687) (select (arr!47275 a!2862) j!93) a!2862 mask!2687) lt!633397))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442004 (= lt!633397 (Intermediate!11550 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442005 () Bool)

(declare-fun res!974372 () Bool)

(assert (=> b!1442005 (=> (not res!974372) (not e!812813))))

(assert (=> b!1442005 (= res!974372 (validKeyInArray!0 (select (arr!47275 a!2862) i!1006)))))

(declare-fun lt!633393 () SeekEntryResult!11550)

(declare-fun b!1442006 () Bool)

(declare-fun lt!633394 () (_ BitVec 64))

(assert (=> b!1442006 (= e!812818 (= lt!633393 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633394 lt!633395 mask!2687)))))

(declare-fun b!1442007 () Bool)

(assert (=> b!1442007 (= e!812815 (not true))))

(assert (=> b!1442007 e!812817))

(declare-fun res!974371 () Bool)

(assert (=> b!1442007 (=> (not res!974371) (not e!812817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97983 (_ BitVec 32)) Bool)

(assert (=> b!1442007 (= res!974371 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48544 0))(
  ( (Unit!48545) )
))
(declare-fun lt!633396 () Unit!48544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97983 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48544)

(assert (=> b!1442007 (= lt!633396 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442008 () Bool)

(declare-fun res!974377 () Bool)

(assert (=> b!1442008 (=> (not res!974377) (not e!812813))))

(assert (=> b!1442008 (= res!974377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442009 () Bool)

(assert (=> b!1442009 (= e!812814 e!812815)))

(declare-fun res!974374 () Bool)

(assert (=> b!1442009 (=> (not res!974374) (not e!812815))))

(assert (=> b!1442009 (= res!974374 (= lt!633393 (Intermediate!11550 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442009 (= lt!633393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633394 mask!2687) lt!633394 lt!633395 mask!2687))))

(assert (=> b!1442009 (= lt!633394 (select (store (arr!47275 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442010 () Bool)

(declare-fun res!974373 () Bool)

(assert (=> b!1442010 (=> (not res!974373) (not e!812815))))

(assert (=> b!1442010 (= res!974373 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442011 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97983 (_ BitVec 32)) SeekEntryResult!11550)

(assert (=> b!1442011 (= e!812818 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633394 lt!633395 mask!2687) (seekEntryOrOpen!0 lt!633394 lt!633395 mask!2687)))))

(declare-fun res!974367 () Bool)

(assert (=> start!124618 (=> (not res!974367) (not e!812813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124618 (= res!974367 (validMask!0 mask!2687))))

(assert (=> start!124618 e!812813))

(assert (=> start!124618 true))

(declare-fun array_inv!36220 (array!97983) Bool)

(assert (=> start!124618 (array_inv!36220 a!2862)))

(declare-fun b!1442003 () Bool)

(declare-fun res!974370 () Bool)

(assert (=> b!1442003 (=> (not res!974370) (not e!812813))))

(assert (=> b!1442003 (= res!974370 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47826 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47826 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47826 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124618 res!974367) b!1441995))

(assert (= (and b!1441995 res!974365) b!1442005))

(assert (= (and b!1442005 res!974372) b!1442002))

(assert (= (and b!1442002 res!974378) b!1442008))

(assert (= (and b!1442008 res!974377) b!1441999))

(assert (= (and b!1441999 res!974379) b!1442003))

(assert (= (and b!1442003 res!974370) b!1441998))

(assert (= (and b!1441998 res!974376) b!1442004))

(assert (= (and b!1442004 res!974366) b!1442000))

(assert (= (and b!1442000 res!974369) b!1442009))

(assert (= (and b!1442009 res!974374) b!1441996))

(assert (= (and b!1441996 c!133328) b!1442006))

(assert (= (and b!1441996 (not c!133328)) b!1442011))

(assert (= (and b!1441996 res!974368) b!1442010))

(assert (= (and b!1442010 res!974373) b!1442007))

(assert (= (and b!1442007 res!974371) b!1442001))

(assert (= (and b!1442001 res!974375) b!1441997))

(declare-fun m!1331229 () Bool)

(assert (=> b!1442007 m!1331229))

(declare-fun m!1331231 () Bool)

(assert (=> b!1442007 m!1331231))

(declare-fun m!1331233 () Bool)

(assert (=> b!1442009 m!1331233))

(assert (=> b!1442009 m!1331233))

(declare-fun m!1331235 () Bool)

(assert (=> b!1442009 m!1331235))

(declare-fun m!1331237 () Bool)

(assert (=> b!1442009 m!1331237))

(declare-fun m!1331239 () Bool)

(assert (=> b!1442009 m!1331239))

(assert (=> b!1441998 m!1331237))

(declare-fun m!1331241 () Bool)

(assert (=> b!1441998 m!1331241))

(declare-fun m!1331243 () Bool)

(assert (=> b!1441997 m!1331243))

(declare-fun m!1331245 () Bool)

(assert (=> b!1441997 m!1331245))

(assert (=> b!1442002 m!1331245))

(assert (=> b!1442002 m!1331245))

(declare-fun m!1331247 () Bool)

(assert (=> b!1442002 m!1331247))

(assert (=> b!1442004 m!1331245))

(assert (=> b!1442004 m!1331245))

(declare-fun m!1331249 () Bool)

(assert (=> b!1442004 m!1331249))

(assert (=> b!1442004 m!1331249))

(assert (=> b!1442004 m!1331245))

(declare-fun m!1331251 () Bool)

(assert (=> b!1442004 m!1331251))

(declare-fun m!1331253 () Bool)

(assert (=> b!1442006 m!1331253))

(declare-fun m!1331255 () Bool)

(assert (=> b!1441999 m!1331255))

(declare-fun m!1331257 () Bool)

(assert (=> start!124618 m!1331257))

(declare-fun m!1331259 () Bool)

(assert (=> start!124618 m!1331259))

(declare-fun m!1331261 () Bool)

(assert (=> b!1442005 m!1331261))

(assert (=> b!1442005 m!1331261))

(declare-fun m!1331263 () Bool)

(assert (=> b!1442005 m!1331263))

(declare-fun m!1331265 () Bool)

(assert (=> b!1442011 m!1331265))

(declare-fun m!1331267 () Bool)

(assert (=> b!1442011 m!1331267))

(assert (=> b!1442001 m!1331245))

(assert (=> b!1442001 m!1331245))

(declare-fun m!1331269 () Bool)

(assert (=> b!1442001 m!1331269))

(declare-fun m!1331271 () Bool)

(assert (=> b!1442008 m!1331271))

(assert (=> b!1442000 m!1331245))

(assert (=> b!1442000 m!1331245))

(declare-fun m!1331273 () Bool)

(assert (=> b!1442000 m!1331273))

(push 1)

