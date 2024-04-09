; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125936 () Bool)

(assert start!125936)

(declare-fun b!1473749 () Bool)

(declare-fun e!826996 () Bool)

(declare-fun e!826993 () Bool)

(assert (=> b!1473749 (= e!826996 e!826993)))

(declare-fun res!1001138 () Bool)

(assert (=> b!1473749 (=> (not res!1001138) (not e!826993))))

(declare-datatypes ((SeekEntryResult!12107 0))(
  ( (MissingZero!12107 (index!50819 (_ BitVec 32))) (Found!12107 (index!50820 (_ BitVec 32))) (Intermediate!12107 (undefined!12919 Bool) (index!50821 (_ BitVec 32)) (x!132402 (_ BitVec 32))) (Undefined!12107) (MissingVacant!12107 (index!50822 (_ BitVec 32))) )
))
(declare-fun lt!643997 () SeekEntryResult!12107)

(declare-datatypes ((array!99130 0))(
  ( (array!99131 (arr!47844 (Array (_ BitVec 32) (_ BitVec 64))) (size!48395 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99130)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99130 (_ BitVec 32)) SeekEntryResult!12107)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473749 (= res!1001138 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47844 a!2862) j!93) mask!2687) (select (arr!47844 a!2862) j!93) a!2862 mask!2687) lt!643997))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473749 (= lt!643997 (Intermediate!12107 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!826995 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!644001 () (_ BitVec 64))

(declare-fun b!1473750 () Bool)

(declare-fun lt!643999 () array!99130)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99130 (_ BitVec 32)) SeekEntryResult!12107)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99130 (_ BitVec 32)) SeekEntryResult!12107)

(assert (=> b!1473750 (= e!826995 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644001 lt!643999 mask!2687) (seekEntryOrOpen!0 lt!644001 lt!643999 mask!2687)))))

(declare-fun b!1473751 () Bool)

(declare-fun e!827000 () Bool)

(declare-fun e!826998 () Bool)

(assert (=> b!1473751 (= e!827000 (not e!826998))))

(declare-fun res!1001136 () Bool)

(assert (=> b!1473751 (=> res!1001136 e!826998)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473751 (= res!1001136 (or (not (= (select (arr!47844 a!2862) index!646) (select (store (arr!47844 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47844 a!2862) index!646) (select (arr!47844 a!2862) j!93)))))))

(declare-fun e!826999 () Bool)

(assert (=> b!1473751 e!826999))

(declare-fun res!1001134 () Bool)

(assert (=> b!1473751 (=> (not res!1001134) (not e!826999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99130 (_ BitVec 32)) Bool)

(assert (=> b!1473751 (= res!1001134 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49502 0))(
  ( (Unit!49503) )
))
(declare-fun lt!644000 () Unit!49502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49502)

(assert (=> b!1473751 (= lt!644000 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473752 () Bool)

(declare-fun res!1001143 () Bool)

(assert (=> b!1473752 (=> (not res!1001143) (not e!826999))))

(assert (=> b!1473752 (= res!1001143 (= (seekEntryOrOpen!0 (select (arr!47844 a!2862) j!93) a!2862 mask!2687) (Found!12107 j!93)))))

(declare-fun b!1473753 () Bool)

(declare-fun res!1001140 () Bool)

(declare-fun e!826997 () Bool)

(assert (=> b!1473753 (=> (not res!1001140) (not e!826997))))

(assert (=> b!1473753 (= res!1001140 (and (= (size!48395 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48395 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48395 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473755 () Bool)

(declare-fun res!1001139 () Bool)

(assert (=> b!1473755 (=> (not res!1001139) (not e!826997))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1473755 (= res!1001139 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48395 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48395 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48395 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473756 () Bool)

(assert (=> b!1473756 (= e!826993 e!827000)))

(declare-fun res!1001141 () Bool)

(assert (=> b!1473756 (=> (not res!1001141) (not e!827000))))

(declare-fun lt!644002 () SeekEntryResult!12107)

(assert (=> b!1473756 (= res!1001141 (= lt!644002 (Intermediate!12107 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1473756 (= lt!644002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644001 mask!2687) lt!644001 lt!643999 mask!2687))))

(assert (=> b!1473756 (= lt!644001 (select (store (arr!47844 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473757 () Bool)

(assert (=> b!1473757 (= e!826997 e!826996)))

(declare-fun res!1001131 () Bool)

(assert (=> b!1473757 (=> (not res!1001131) (not e!826996))))

(assert (=> b!1473757 (= res!1001131 (= (select (store (arr!47844 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473757 (= lt!643999 (array!99131 (store (arr!47844 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48395 a!2862)))))

(declare-fun b!1473758 () Bool)

(declare-fun res!1001135 () Bool)

(assert (=> b!1473758 (=> (not res!1001135) (not e!827000))))

(assert (=> b!1473758 (= res!1001135 e!826995)))

(declare-fun c!135827 () Bool)

(assert (=> b!1473758 (= c!135827 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473759 () Bool)

(declare-fun res!1001142 () Bool)

(assert (=> b!1473759 (=> (not res!1001142) (not e!826993))))

(assert (=> b!1473759 (= res!1001142 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47844 a!2862) j!93) a!2862 mask!2687) lt!643997))))

(declare-fun b!1473760 () Bool)

(declare-fun res!1001145 () Bool)

(assert (=> b!1473760 (=> (not res!1001145) (not e!826997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473760 (= res!1001145 (validKeyInArray!0 (select (arr!47844 a!2862) j!93)))))

(declare-fun res!1001130 () Bool)

(assert (=> start!125936 (=> (not res!1001130) (not e!826997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125936 (= res!1001130 (validMask!0 mask!2687))))

(assert (=> start!125936 e!826997))

(assert (=> start!125936 true))

(declare-fun array_inv!36789 (array!99130) Bool)

(assert (=> start!125936 (array_inv!36789 a!2862)))

(declare-fun b!1473754 () Bool)

(assert (=> b!1473754 (= e!826998 true)))

(declare-fun lt!643998 () SeekEntryResult!12107)

(assert (=> b!1473754 (= lt!643998 (seekEntryOrOpen!0 lt!644001 lt!643999 mask!2687))))

(declare-fun b!1473761 () Bool)

(assert (=> b!1473761 (= e!826995 (= lt!644002 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644001 lt!643999 mask!2687)))))

(declare-fun b!1473762 () Bool)

(assert (=> b!1473762 (= e!826999 (or (= (select (arr!47844 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47844 a!2862) intermediateBeforeIndex!19) (select (arr!47844 a!2862) j!93))))))

(declare-fun b!1473763 () Bool)

(declare-fun res!1001133 () Bool)

(assert (=> b!1473763 (=> (not res!1001133) (not e!826997))))

(assert (=> b!1473763 (= res!1001133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473764 () Bool)

(declare-fun res!1001144 () Bool)

(assert (=> b!1473764 (=> (not res!1001144) (not e!826997))))

(declare-datatypes ((List!34525 0))(
  ( (Nil!34522) (Cons!34521 (h!35880 (_ BitVec 64)) (t!49226 List!34525)) )
))
(declare-fun arrayNoDuplicates!0 (array!99130 (_ BitVec 32) List!34525) Bool)

(assert (=> b!1473764 (= res!1001144 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34522))))

(declare-fun b!1473765 () Bool)

(declare-fun res!1001137 () Bool)

(assert (=> b!1473765 (=> (not res!1001137) (not e!826997))))

(assert (=> b!1473765 (= res!1001137 (validKeyInArray!0 (select (arr!47844 a!2862) i!1006)))))

(declare-fun b!1473766 () Bool)

(declare-fun res!1001132 () Bool)

(assert (=> b!1473766 (=> (not res!1001132) (not e!827000))))

(assert (=> b!1473766 (= res!1001132 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125936 res!1001130) b!1473753))

(assert (= (and b!1473753 res!1001140) b!1473765))

(assert (= (and b!1473765 res!1001137) b!1473760))

(assert (= (and b!1473760 res!1001145) b!1473763))

(assert (= (and b!1473763 res!1001133) b!1473764))

(assert (= (and b!1473764 res!1001144) b!1473755))

(assert (= (and b!1473755 res!1001139) b!1473757))

(assert (= (and b!1473757 res!1001131) b!1473749))

(assert (= (and b!1473749 res!1001138) b!1473759))

(assert (= (and b!1473759 res!1001142) b!1473756))

(assert (= (and b!1473756 res!1001141) b!1473758))

(assert (= (and b!1473758 c!135827) b!1473761))

(assert (= (and b!1473758 (not c!135827)) b!1473750))

(assert (= (and b!1473758 res!1001135) b!1473766))

(assert (= (and b!1473766 res!1001132) b!1473751))

(assert (= (and b!1473751 res!1001134) b!1473752))

(assert (= (and b!1473752 res!1001143) b!1473762))

(assert (= (and b!1473751 (not res!1001136)) b!1473754))

(declare-fun m!1360303 () Bool)

(assert (=> b!1473752 m!1360303))

(assert (=> b!1473752 m!1360303))

(declare-fun m!1360305 () Bool)

(assert (=> b!1473752 m!1360305))

(declare-fun m!1360307 () Bool)

(assert (=> b!1473763 m!1360307))

(declare-fun m!1360309 () Bool)

(assert (=> b!1473751 m!1360309))

(declare-fun m!1360311 () Bool)

(assert (=> b!1473751 m!1360311))

(declare-fun m!1360313 () Bool)

(assert (=> b!1473751 m!1360313))

(declare-fun m!1360315 () Bool)

(assert (=> b!1473751 m!1360315))

(declare-fun m!1360317 () Bool)

(assert (=> b!1473751 m!1360317))

(assert (=> b!1473751 m!1360303))

(assert (=> b!1473760 m!1360303))

(assert (=> b!1473760 m!1360303))

(declare-fun m!1360319 () Bool)

(assert (=> b!1473760 m!1360319))

(declare-fun m!1360321 () Bool)

(assert (=> b!1473756 m!1360321))

(assert (=> b!1473756 m!1360321))

(declare-fun m!1360323 () Bool)

(assert (=> b!1473756 m!1360323))

(assert (=> b!1473756 m!1360311))

(declare-fun m!1360325 () Bool)

(assert (=> b!1473756 m!1360325))

(assert (=> b!1473759 m!1360303))

(assert (=> b!1473759 m!1360303))

(declare-fun m!1360327 () Bool)

(assert (=> b!1473759 m!1360327))

(declare-fun m!1360329 () Bool)

(assert (=> b!1473750 m!1360329))

(declare-fun m!1360331 () Bool)

(assert (=> b!1473750 m!1360331))

(assert (=> b!1473757 m!1360311))

(declare-fun m!1360333 () Bool)

(assert (=> b!1473757 m!1360333))

(declare-fun m!1360335 () Bool)

(assert (=> b!1473764 m!1360335))

(declare-fun m!1360337 () Bool)

(assert (=> start!125936 m!1360337))

(declare-fun m!1360339 () Bool)

(assert (=> start!125936 m!1360339))

(declare-fun m!1360341 () Bool)

(assert (=> b!1473761 m!1360341))

(declare-fun m!1360343 () Bool)

(assert (=> b!1473762 m!1360343))

(assert (=> b!1473762 m!1360303))

(assert (=> b!1473754 m!1360331))

(declare-fun m!1360345 () Bool)

(assert (=> b!1473765 m!1360345))

(assert (=> b!1473765 m!1360345))

(declare-fun m!1360347 () Bool)

(assert (=> b!1473765 m!1360347))

(assert (=> b!1473749 m!1360303))

(assert (=> b!1473749 m!1360303))

(declare-fun m!1360349 () Bool)

(assert (=> b!1473749 m!1360349))

(assert (=> b!1473749 m!1360349))

(assert (=> b!1473749 m!1360303))

(declare-fun m!1360351 () Bool)

(assert (=> b!1473749 m!1360351))

(push 1)

