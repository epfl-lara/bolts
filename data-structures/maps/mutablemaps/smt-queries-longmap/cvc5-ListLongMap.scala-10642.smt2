; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125032 () Bool)

(assert start!125032)

(declare-fun b!1453260 () Bool)

(declare-fun res!984389 () Bool)

(declare-fun e!818012 () Bool)

(assert (=> b!1453260 (=> (not res!984389) (not e!818012))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!98397 0))(
  ( (array!98398 (arr!47482 (Array (_ BitVec 32) (_ BitVec 64))) (size!48033 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98397)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1453260 (= res!984389 (or (= (select (arr!47482 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47482 a!2862) intermediateBeforeIndex!19) (select (arr!47482 a!2862) j!93))))))

(declare-fun b!1453261 () Bool)

(declare-fun res!984402 () Bool)

(declare-fun e!818017 () Bool)

(assert (=> b!1453261 (=> (not res!984402) (not e!818017))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98397 (_ BitVec 32)) Bool)

(assert (=> b!1453261 (= res!984402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453262 () Bool)

(declare-fun res!984399 () Bool)

(assert (=> b!1453262 (=> (not res!984399) (not e!818012))))

(declare-datatypes ((SeekEntryResult!11757 0))(
  ( (MissingZero!11757 (index!49419 (_ BitVec 32))) (Found!11757 (index!49420 (_ BitVec 32))) (Intermediate!11757 (undefined!12569 Bool) (index!49421 (_ BitVec 32)) (x!131065 (_ BitVec 32))) (Undefined!11757) (MissingVacant!11757 (index!49422 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98397 (_ BitVec 32)) SeekEntryResult!11757)

(assert (=> b!1453262 (= res!984399 (= (seekEntryOrOpen!0 (select (arr!47482 a!2862) j!93) a!2862 mask!2687) (Found!11757 j!93)))))

(declare-fun b!1453263 () Bool)

(declare-fun e!818014 () Bool)

(assert (=> b!1453263 (= e!818017 e!818014)))

(declare-fun res!984391 () Bool)

(assert (=> b!1453263 (=> (not res!984391) (not e!818014))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453263 (= res!984391 (= (select (store (arr!47482 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637153 () array!98397)

(assert (=> b!1453263 (= lt!637153 (array!98398 (store (arr!47482 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48033 a!2862)))))

(declare-fun b!1453264 () Bool)

(declare-fun res!984400 () Bool)

(declare-fun e!818018 () Bool)

(assert (=> b!1453264 (=> (not res!984400) (not e!818018))))

(declare-fun e!818010 () Bool)

(assert (=> b!1453264 (= res!984400 e!818010)))

(declare-fun c!133949 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453264 (= c!133949 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453265 () Bool)

(declare-fun res!984395 () Bool)

(assert (=> b!1453265 (=> (not res!984395) (not e!818017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453265 (= res!984395 (validKeyInArray!0 (select (arr!47482 a!2862) j!93)))))

(declare-fun b!1453266 () Bool)

(declare-fun lt!637151 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!637148 () SeekEntryResult!11757)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98397 (_ BitVec 32)) SeekEntryResult!11757)

(assert (=> b!1453266 (= e!818010 (= lt!637148 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637151 lt!637153 mask!2687)))))

(declare-fun b!1453267 () Bool)

(declare-fun res!984404 () Bool)

(assert (=> b!1453267 (=> (not res!984404) (not e!818017))))

(declare-datatypes ((List!34163 0))(
  ( (Nil!34160) (Cons!34159 (h!35509 (_ BitVec 64)) (t!48864 List!34163)) )
))
(declare-fun arrayNoDuplicates!0 (array!98397 (_ BitVec 32) List!34163) Bool)

(assert (=> b!1453267 (= res!984404 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34160))))

(declare-fun b!1453269 () Bool)

(declare-fun res!984396 () Bool)

(assert (=> b!1453269 (=> (not res!984396) (not e!818018))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1453269 (= res!984396 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453270 () Bool)

(declare-fun res!984392 () Bool)

(assert (=> b!1453270 (=> (not res!984392) (not e!818017))))

(assert (=> b!1453270 (= res!984392 (validKeyInArray!0 (select (arr!47482 a!2862) i!1006)))))

(declare-fun b!1453271 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98397 (_ BitVec 32)) SeekEntryResult!11757)

(assert (=> b!1453271 (= e!818010 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637151 lt!637153 mask!2687) (seekEntryOrOpen!0 lt!637151 lt!637153 mask!2687)))))

(declare-fun b!1453272 () Bool)

(declare-fun res!984393 () Bool)

(assert (=> b!1453272 (=> (not res!984393) (not e!818017))))

(assert (=> b!1453272 (= res!984393 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48033 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48033 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48033 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453273 () Bool)

(declare-fun e!818016 () Bool)

(assert (=> b!1453273 (= e!818016 e!818018)))

(declare-fun res!984397 () Bool)

(assert (=> b!1453273 (=> (not res!984397) (not e!818018))))

(assert (=> b!1453273 (= res!984397 (= lt!637148 (Intermediate!11757 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453273 (= lt!637148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637151 mask!2687) lt!637151 lt!637153 mask!2687))))

(assert (=> b!1453273 (= lt!637151 (select (store (arr!47482 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453274 () Bool)

(declare-fun res!984394 () Bool)

(assert (=> b!1453274 (=> (not res!984394) (not e!818017))))

(assert (=> b!1453274 (= res!984394 (and (= (size!48033 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48033 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48033 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453275 () Bool)

(assert (=> b!1453275 (= e!818018 (not (or (and (= (select (arr!47482 a!2862) index!646) (select (store (arr!47482 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47482 a!2862) index!646) (select (arr!47482 a!2862) j!93))) (= (select (arr!47482 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1453275 e!818012))

(declare-fun res!984390 () Bool)

(assert (=> b!1453275 (=> (not res!984390) (not e!818012))))

(assert (=> b!1453275 (= res!984390 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48958 0))(
  ( (Unit!48959) )
))
(declare-fun lt!637150 () Unit!48958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48958)

(assert (=> b!1453275 (= lt!637150 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!984388 () Bool)

(assert (=> start!125032 (=> (not res!984388) (not e!818017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125032 (= res!984388 (validMask!0 mask!2687))))

(assert (=> start!125032 e!818017))

(assert (=> start!125032 true))

(declare-fun array_inv!36427 (array!98397) Bool)

(assert (=> start!125032 (array_inv!36427 a!2862)))

(declare-fun b!1453268 () Bool)

(declare-fun e!818015 () Bool)

(declare-fun e!818013 () Bool)

(assert (=> b!1453268 (= e!818015 e!818013)))

(declare-fun res!984405 () Bool)

(assert (=> b!1453268 (=> (not res!984405) (not e!818013))))

(declare-fun lt!637149 () (_ BitVec 64))

(assert (=> b!1453268 (= res!984405 (and (= index!646 intermediateAfterIndex!19) (= lt!637149 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1453276 () Bool)

(assert (=> b!1453276 (= e!818013 (= (seekEntryOrOpen!0 lt!637151 lt!637153 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637151 lt!637153 mask!2687)))))

(declare-fun b!1453277 () Bool)

(assert (=> b!1453277 (= e!818012 e!818015)))

(declare-fun res!984401 () Bool)

(assert (=> b!1453277 (=> res!984401 e!818015)))

(assert (=> b!1453277 (= res!984401 (or (and (= (select (arr!47482 a!2862) index!646) lt!637149) (= (select (arr!47482 a!2862) index!646) (select (arr!47482 a!2862) j!93))) (= (select (arr!47482 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453277 (= lt!637149 (select (store (arr!47482 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453278 () Bool)

(declare-fun res!984403 () Bool)

(assert (=> b!1453278 (=> (not res!984403) (not e!818016))))

(declare-fun lt!637152 () SeekEntryResult!11757)

(assert (=> b!1453278 (= res!984403 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47482 a!2862) j!93) a!2862 mask!2687) lt!637152))))

(declare-fun b!1453279 () Bool)

(assert (=> b!1453279 (= e!818014 e!818016)))

(declare-fun res!984398 () Bool)

(assert (=> b!1453279 (=> (not res!984398) (not e!818016))))

(assert (=> b!1453279 (= res!984398 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47482 a!2862) j!93) mask!2687) (select (arr!47482 a!2862) j!93) a!2862 mask!2687) lt!637152))))

(assert (=> b!1453279 (= lt!637152 (Intermediate!11757 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125032 res!984388) b!1453274))

(assert (= (and b!1453274 res!984394) b!1453270))

(assert (= (and b!1453270 res!984392) b!1453265))

(assert (= (and b!1453265 res!984395) b!1453261))

(assert (= (and b!1453261 res!984402) b!1453267))

(assert (= (and b!1453267 res!984404) b!1453272))

(assert (= (and b!1453272 res!984393) b!1453263))

(assert (= (and b!1453263 res!984391) b!1453279))

(assert (= (and b!1453279 res!984398) b!1453278))

(assert (= (and b!1453278 res!984403) b!1453273))

(assert (= (and b!1453273 res!984397) b!1453264))

(assert (= (and b!1453264 c!133949) b!1453266))

(assert (= (and b!1453264 (not c!133949)) b!1453271))

(assert (= (and b!1453264 res!984400) b!1453269))

(assert (= (and b!1453269 res!984396) b!1453275))

(assert (= (and b!1453275 res!984390) b!1453262))

(assert (= (and b!1453262 res!984399) b!1453260))

(assert (= (and b!1453260 res!984389) b!1453277))

(assert (= (and b!1453277 (not res!984401)) b!1453268))

(assert (= (and b!1453268 res!984405) b!1453276))

(declare-fun m!1341813 () Bool)

(assert (=> b!1453270 m!1341813))

(assert (=> b!1453270 m!1341813))

(declare-fun m!1341815 () Bool)

(assert (=> b!1453270 m!1341815))

(declare-fun m!1341817 () Bool)

(assert (=> b!1453278 m!1341817))

(assert (=> b!1453278 m!1341817))

(declare-fun m!1341819 () Bool)

(assert (=> b!1453278 m!1341819))

(declare-fun m!1341821 () Bool)

(assert (=> b!1453271 m!1341821))

(declare-fun m!1341823 () Bool)

(assert (=> b!1453271 m!1341823))

(assert (=> b!1453265 m!1341817))

(assert (=> b!1453265 m!1341817))

(declare-fun m!1341825 () Bool)

(assert (=> b!1453265 m!1341825))

(declare-fun m!1341827 () Bool)

(assert (=> b!1453275 m!1341827))

(declare-fun m!1341829 () Bool)

(assert (=> b!1453275 m!1341829))

(declare-fun m!1341831 () Bool)

(assert (=> b!1453275 m!1341831))

(declare-fun m!1341833 () Bool)

(assert (=> b!1453275 m!1341833))

(declare-fun m!1341835 () Bool)

(assert (=> b!1453275 m!1341835))

(assert (=> b!1453275 m!1341817))

(declare-fun m!1341837 () Bool)

(assert (=> b!1453260 m!1341837))

(assert (=> b!1453260 m!1341817))

(assert (=> b!1453279 m!1341817))

(assert (=> b!1453279 m!1341817))

(declare-fun m!1341839 () Bool)

(assert (=> b!1453279 m!1341839))

(assert (=> b!1453279 m!1341839))

(assert (=> b!1453279 m!1341817))

(declare-fun m!1341841 () Bool)

(assert (=> b!1453279 m!1341841))

(declare-fun m!1341843 () Bool)

(assert (=> b!1453266 m!1341843))

(declare-fun m!1341845 () Bool)

(assert (=> start!125032 m!1341845))

(declare-fun m!1341847 () Bool)

(assert (=> start!125032 m!1341847))

(assert (=> b!1453277 m!1341833))

(assert (=> b!1453277 m!1341817))

(assert (=> b!1453277 m!1341829))

(assert (=> b!1453277 m!1341831))

(declare-fun m!1341849 () Bool)

(assert (=> b!1453267 m!1341849))

(declare-fun m!1341851 () Bool)

(assert (=> b!1453261 m!1341851))

(assert (=> b!1453276 m!1341823))

(assert (=> b!1453276 m!1341821))

(assert (=> b!1453263 m!1341829))

(declare-fun m!1341853 () Bool)

(assert (=> b!1453263 m!1341853))

(assert (=> b!1453262 m!1341817))

(assert (=> b!1453262 m!1341817))

(declare-fun m!1341855 () Bool)

(assert (=> b!1453262 m!1341855))

(declare-fun m!1341857 () Bool)

(assert (=> b!1453273 m!1341857))

(assert (=> b!1453273 m!1341857))

(declare-fun m!1341859 () Bool)

(assert (=> b!1453273 m!1341859))

(assert (=> b!1453273 m!1341829))

(declare-fun m!1341861 () Bool)

(assert (=> b!1453273 m!1341861))

(push 1)

(assert (not b!1453271))

(assert (not b!1453279))

(assert (not b!1453276))

(assert (not b!1453262))

(assert (not b!1453273))

(assert (not b!1453267))

(assert (not b!1453261))

(assert (not b!1453265))

(assert (not b!1453275))

(assert (not b!1453270))

(assert (not b!1453266))

(assert (not start!125032))

(assert (not b!1453278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

