; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125956 () Bool)

(assert start!125956)

(declare-fun b!1474278 () Bool)

(declare-fun res!1001603 () Bool)

(declare-fun e!827222 () Bool)

(assert (=> b!1474278 (=> (not res!1001603) (not e!827222))))

(declare-datatypes ((array!99150 0))(
  ( (array!99151 (arr!47854 (Array (_ BitVec 32) (_ BitVec 64))) (size!48405 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99150)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474278 (= res!1001603 (validKeyInArray!0 (select (arr!47854 a!2862) j!93)))))

(declare-fun b!1474279 () Bool)

(declare-fun res!1001610 () Bool)

(assert (=> b!1474279 (=> (not res!1001610) (not e!827222))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474279 (= res!1001610 (validKeyInArray!0 (select (arr!47854 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!644168 () array!99150)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!644166 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!827228 () Bool)

(declare-fun b!1474280 () Bool)

(declare-datatypes ((SeekEntryResult!12117 0))(
  ( (MissingZero!12117 (index!50859 (_ BitVec 32))) (Found!12117 (index!50860 (_ BitVec 32))) (Intermediate!12117 (undefined!12929 Bool) (index!50861 (_ BitVec 32)) (x!132444 (_ BitVec 32))) (Undefined!12117) (MissingVacant!12117 (index!50862 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99150 (_ BitVec 32)) SeekEntryResult!12117)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99150 (_ BitVec 32)) SeekEntryResult!12117)

(assert (=> b!1474280 (= e!827228 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644166 lt!644168 mask!2687) (seekEntryOrOpen!0 lt!644166 lt!644168 mask!2687)))))

(declare-fun b!1474281 () Bool)

(declare-fun res!1001608 () Bool)

(declare-fun e!827226 () Bool)

(assert (=> b!1474281 (=> (not res!1001608) (not e!827226))))

(assert (=> b!1474281 (= res!1001608 (= (seekEntryOrOpen!0 (select (arr!47854 a!2862) j!93) a!2862 mask!2687) (Found!12117 j!93)))))

(declare-fun b!1474282 () Bool)

(declare-fun res!1001609 () Bool)

(declare-fun e!827224 () Bool)

(assert (=> b!1474282 (=> (not res!1001609) (not e!827224))))

(declare-fun lt!644170 () SeekEntryResult!12117)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99150 (_ BitVec 32)) SeekEntryResult!12117)

(assert (=> b!1474282 (= res!1001609 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47854 a!2862) j!93) a!2862 mask!2687) lt!644170))))

(declare-fun b!1474283 () Bool)

(declare-fun e!827225 () Bool)

(assert (=> b!1474283 (= e!827225 (not true))))

(assert (=> b!1474283 e!827226))

(declare-fun res!1001604 () Bool)

(assert (=> b!1474283 (=> (not res!1001604) (not e!827226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99150 (_ BitVec 32)) Bool)

(assert (=> b!1474283 (= res!1001604 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49522 0))(
  ( (Unit!49523) )
))
(declare-fun lt!644167 () Unit!49522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49522)

(assert (=> b!1474283 (= lt!644167 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474284 () Bool)

(assert (=> b!1474284 (= e!827224 e!827225)))

(declare-fun res!1001612 () Bool)

(assert (=> b!1474284 (=> (not res!1001612) (not e!827225))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!644169 () SeekEntryResult!12117)

(assert (=> b!1474284 (= res!1001612 (= lt!644169 (Intermediate!12117 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474284 (= lt!644169 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644166 mask!2687) lt!644166 lt!644168 mask!2687))))

(assert (=> b!1474284 (= lt!644166 (select (store (arr!47854 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474285 () Bool)

(declare-fun res!1001613 () Bool)

(assert (=> b!1474285 (=> (not res!1001613) (not e!827222))))

(declare-datatypes ((List!34535 0))(
  ( (Nil!34532) (Cons!34531 (h!35890 (_ BitVec 64)) (t!49236 List!34535)) )
))
(declare-fun arrayNoDuplicates!0 (array!99150 (_ BitVec 32) List!34535) Bool)

(assert (=> b!1474285 (= res!1001613 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34532))))

(declare-fun b!1474286 () Bool)

(declare-fun res!1001607 () Bool)

(assert (=> b!1474286 (=> (not res!1001607) (not e!827222))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474286 (= res!1001607 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48405 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48405 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48405 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474287 () Bool)

(declare-fun res!1001602 () Bool)

(assert (=> b!1474287 (=> (not res!1001602) (not e!827225))))

(assert (=> b!1474287 (= res!1001602 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474288 () Bool)

(declare-fun e!827227 () Bool)

(assert (=> b!1474288 (= e!827222 e!827227)))

(declare-fun res!1001605 () Bool)

(assert (=> b!1474288 (=> (not res!1001605) (not e!827227))))

(assert (=> b!1474288 (= res!1001605 (= (select (store (arr!47854 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474288 (= lt!644168 (array!99151 (store (arr!47854 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48405 a!2862)))))

(declare-fun b!1474289 () Bool)

(declare-fun res!1001599 () Bool)

(assert (=> b!1474289 (=> (not res!1001599) (not e!827225))))

(assert (=> b!1474289 (= res!1001599 e!827228)))

(declare-fun c!135857 () Bool)

(assert (=> b!1474289 (= c!135857 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474290 () Bool)

(declare-fun res!1001600 () Bool)

(assert (=> b!1474290 (=> (not res!1001600) (not e!827222))))

(assert (=> b!1474290 (= res!1001600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474291 () Bool)

(declare-fun res!1001601 () Bool)

(assert (=> b!1474291 (=> (not res!1001601) (not e!827222))))

(assert (=> b!1474291 (= res!1001601 (and (= (size!48405 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48405 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48405 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474292 () Bool)

(assert (=> b!1474292 (= e!827228 (= lt!644169 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644166 lt!644168 mask!2687)))))

(declare-fun b!1474293 () Bool)

(assert (=> b!1474293 (= e!827226 (or (= (select (arr!47854 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47854 a!2862) intermediateBeforeIndex!19) (select (arr!47854 a!2862) j!93))))))

(declare-fun res!1001611 () Bool)

(assert (=> start!125956 (=> (not res!1001611) (not e!827222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125956 (= res!1001611 (validMask!0 mask!2687))))

(assert (=> start!125956 e!827222))

(assert (=> start!125956 true))

(declare-fun array_inv!36799 (array!99150) Bool)

(assert (=> start!125956 (array_inv!36799 a!2862)))

(declare-fun b!1474294 () Bool)

(assert (=> b!1474294 (= e!827227 e!827224)))

(declare-fun res!1001606 () Bool)

(assert (=> b!1474294 (=> (not res!1001606) (not e!827224))))

(assert (=> b!1474294 (= res!1001606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47854 a!2862) j!93) mask!2687) (select (arr!47854 a!2862) j!93) a!2862 mask!2687) lt!644170))))

(assert (=> b!1474294 (= lt!644170 (Intermediate!12117 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125956 res!1001611) b!1474291))

(assert (= (and b!1474291 res!1001601) b!1474279))

(assert (= (and b!1474279 res!1001610) b!1474278))

(assert (= (and b!1474278 res!1001603) b!1474290))

(assert (= (and b!1474290 res!1001600) b!1474285))

(assert (= (and b!1474285 res!1001613) b!1474286))

(assert (= (and b!1474286 res!1001607) b!1474288))

(assert (= (and b!1474288 res!1001605) b!1474294))

(assert (= (and b!1474294 res!1001606) b!1474282))

(assert (= (and b!1474282 res!1001609) b!1474284))

(assert (= (and b!1474284 res!1001612) b!1474289))

(assert (= (and b!1474289 c!135857) b!1474292))

(assert (= (and b!1474289 (not c!135857)) b!1474280))

(assert (= (and b!1474289 res!1001599) b!1474287))

(assert (= (and b!1474287 res!1001602) b!1474283))

(assert (= (and b!1474283 res!1001604) b!1474281))

(assert (= (and b!1474281 res!1001608) b!1474293))

(declare-fun m!1360791 () Bool)

(assert (=> b!1474294 m!1360791))

(assert (=> b!1474294 m!1360791))

(declare-fun m!1360793 () Bool)

(assert (=> b!1474294 m!1360793))

(assert (=> b!1474294 m!1360793))

(assert (=> b!1474294 m!1360791))

(declare-fun m!1360795 () Bool)

(assert (=> b!1474294 m!1360795))

(declare-fun m!1360797 () Bool)

(assert (=> b!1474285 m!1360797))

(declare-fun m!1360799 () Bool)

(assert (=> b!1474292 m!1360799))

(declare-fun m!1360801 () Bool)

(assert (=> b!1474288 m!1360801))

(declare-fun m!1360803 () Bool)

(assert (=> b!1474288 m!1360803))

(assert (=> b!1474281 m!1360791))

(assert (=> b!1474281 m!1360791))

(declare-fun m!1360805 () Bool)

(assert (=> b!1474281 m!1360805))

(assert (=> b!1474282 m!1360791))

(assert (=> b!1474282 m!1360791))

(declare-fun m!1360807 () Bool)

(assert (=> b!1474282 m!1360807))

(declare-fun m!1360809 () Bool)

(assert (=> b!1474284 m!1360809))

(assert (=> b!1474284 m!1360809))

(declare-fun m!1360811 () Bool)

(assert (=> b!1474284 m!1360811))

(assert (=> b!1474284 m!1360801))

(declare-fun m!1360813 () Bool)

(assert (=> b!1474284 m!1360813))

(declare-fun m!1360815 () Bool)

(assert (=> b!1474279 m!1360815))

(assert (=> b!1474279 m!1360815))

(declare-fun m!1360817 () Bool)

(assert (=> b!1474279 m!1360817))

(declare-fun m!1360819 () Bool)

(assert (=> start!125956 m!1360819))

(declare-fun m!1360821 () Bool)

(assert (=> start!125956 m!1360821))

(declare-fun m!1360823 () Bool)

(assert (=> b!1474290 m!1360823))

(declare-fun m!1360825 () Bool)

(assert (=> b!1474280 m!1360825))

(declare-fun m!1360827 () Bool)

(assert (=> b!1474280 m!1360827))

(assert (=> b!1474278 m!1360791))

(assert (=> b!1474278 m!1360791))

(declare-fun m!1360829 () Bool)

(assert (=> b!1474278 m!1360829))

(declare-fun m!1360831 () Bool)

(assert (=> b!1474293 m!1360831))

(assert (=> b!1474293 m!1360791))

(declare-fun m!1360833 () Bool)

(assert (=> b!1474283 m!1360833))

(declare-fun m!1360835 () Bool)

(assert (=> b!1474283 m!1360835))

(push 1)

