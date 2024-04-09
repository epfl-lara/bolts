; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125836 () Bool)

(assert start!125836)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1472331 () Bool)

(declare-datatypes ((array!99087 0))(
  ( (array!99088 (arr!47824 (Array (_ BitVec 32) (_ BitVec 64))) (size!48375 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99087)

(declare-fun e!826322 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1472331 (= e!826322 (or (= (select (arr!47824 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47824 a!2862) intermediateBeforeIndex!19) (select (arr!47824 a!2862) j!93))))))

(declare-fun b!1472332 () Bool)

(declare-fun res!1000108 () Bool)

(declare-fun e!826327 () Bool)

(assert (=> b!1472332 (=> (not res!1000108) (not e!826327))))

(declare-fun e!826323 () Bool)

(assert (=> b!1472332 (= res!1000108 e!826323)))

(declare-fun c!135629 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472332 (= c!135629 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472333 () Bool)

(declare-fun res!1000117 () Bool)

(declare-fun e!826326 () Bool)

(assert (=> b!1472333 (=> (not res!1000117) (not e!826326))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472333 (= res!1000117 (validKeyInArray!0 (select (arr!47824 a!2862) i!1006)))))

(declare-fun res!1000115 () Bool)

(assert (=> start!125836 (=> (not res!1000115) (not e!826326))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125836 (= res!1000115 (validMask!0 mask!2687))))

(assert (=> start!125836 e!826326))

(assert (=> start!125836 true))

(declare-fun array_inv!36769 (array!99087) Bool)

(assert (=> start!125836 (array_inv!36769 a!2862)))

(declare-fun b!1472334 () Bool)

(declare-fun res!1000119 () Bool)

(assert (=> b!1472334 (=> (not res!1000119) (not e!826326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99087 (_ BitVec 32)) Bool)

(assert (=> b!1472334 (= res!1000119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472335 () Bool)

(declare-fun res!1000112 () Bool)

(assert (=> b!1472335 (=> (not res!1000112) (not e!826326))))

(assert (=> b!1472335 (= res!1000112 (and (= (size!48375 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48375 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48375 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!643504 () (_ BitVec 64))

(declare-fun lt!643507 () array!99087)

(declare-fun b!1472336 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12087 0))(
  ( (MissingZero!12087 (index!50739 (_ BitVec 32))) (Found!12087 (index!50740 (_ BitVec 32))) (Intermediate!12087 (undefined!12899 Bool) (index!50741 (_ BitVec 32)) (x!132325 (_ BitVec 32))) (Undefined!12087) (MissingVacant!12087 (index!50742 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99087 (_ BitVec 32)) SeekEntryResult!12087)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99087 (_ BitVec 32)) SeekEntryResult!12087)

(assert (=> b!1472336 (= e!826323 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643504 lt!643507 mask!2687) (seekEntryOrOpen!0 lt!643504 lt!643507 mask!2687)))))

(declare-fun b!1472337 () Bool)

(declare-fun res!1000107 () Bool)

(assert (=> b!1472337 (=> (not res!1000107) (not e!826326))))

(declare-datatypes ((List!34505 0))(
  ( (Nil!34502) (Cons!34501 (h!35857 (_ BitVec 64)) (t!49206 List!34505)) )
))
(declare-fun arrayNoDuplicates!0 (array!99087 (_ BitVec 32) List!34505) Bool)

(assert (=> b!1472337 (= res!1000107 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34502))))

(declare-fun b!1472338 () Bool)

(declare-fun e!826324 () Bool)

(declare-fun e!826325 () Bool)

(assert (=> b!1472338 (= e!826324 e!826325)))

(declare-fun res!1000105 () Bool)

(assert (=> b!1472338 (=> (not res!1000105) (not e!826325))))

(declare-fun lt!643506 () SeekEntryResult!12087)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99087 (_ BitVec 32)) SeekEntryResult!12087)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472338 (= res!1000105 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47824 a!2862) j!93) mask!2687) (select (arr!47824 a!2862) j!93) a!2862 mask!2687) lt!643506))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472338 (= lt!643506 (Intermediate!12087 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472339 () Bool)

(declare-fun res!1000109 () Bool)

(assert (=> b!1472339 (=> (not res!1000109) (not e!826326))))

(assert (=> b!1472339 (= res!1000109 (validKeyInArray!0 (select (arr!47824 a!2862) j!93)))))

(declare-fun b!1472340 () Bool)

(declare-fun res!1000118 () Bool)

(assert (=> b!1472340 (=> (not res!1000118) (not e!826325))))

(assert (=> b!1472340 (= res!1000118 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47824 a!2862) j!93) a!2862 mask!2687) lt!643506))))

(declare-fun b!1472341 () Bool)

(assert (=> b!1472341 (= e!826327 (not true))))

(assert (=> b!1472341 e!826322))

(declare-fun res!1000113 () Bool)

(assert (=> b!1472341 (=> (not res!1000113) (not e!826322))))

(assert (=> b!1472341 (= res!1000113 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49462 0))(
  ( (Unit!49463) )
))
(declare-fun lt!643505 () Unit!49462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49462)

(assert (=> b!1472341 (= lt!643505 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472342 () Bool)

(assert (=> b!1472342 (= e!826325 e!826327)))

(declare-fun res!1000106 () Bool)

(assert (=> b!1472342 (=> (not res!1000106) (not e!826327))))

(declare-fun lt!643503 () SeekEntryResult!12087)

(assert (=> b!1472342 (= res!1000106 (= lt!643503 (Intermediate!12087 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472342 (= lt!643503 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643504 mask!2687) lt!643504 lt!643507 mask!2687))))

(assert (=> b!1472342 (= lt!643504 (select (store (arr!47824 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472343 () Bool)

(declare-fun res!1000111 () Bool)

(assert (=> b!1472343 (=> (not res!1000111) (not e!826326))))

(assert (=> b!1472343 (= res!1000111 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48375 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48375 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48375 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472344 () Bool)

(assert (=> b!1472344 (= e!826326 e!826324)))

(declare-fun res!1000116 () Bool)

(assert (=> b!1472344 (=> (not res!1000116) (not e!826324))))

(assert (=> b!1472344 (= res!1000116 (= (select (store (arr!47824 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472344 (= lt!643507 (array!99088 (store (arr!47824 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48375 a!2862)))))

(declare-fun b!1472345 () Bool)

(declare-fun res!1000114 () Bool)

(assert (=> b!1472345 (=> (not res!1000114) (not e!826327))))

(assert (=> b!1472345 (= res!1000114 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472346 () Bool)

(assert (=> b!1472346 (= e!826323 (= lt!643503 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643504 lt!643507 mask!2687)))))

(declare-fun b!1472347 () Bool)

(declare-fun res!1000110 () Bool)

(assert (=> b!1472347 (=> (not res!1000110) (not e!826322))))

(assert (=> b!1472347 (= res!1000110 (= (seekEntryOrOpen!0 (select (arr!47824 a!2862) j!93) a!2862 mask!2687) (Found!12087 j!93)))))

(assert (= (and start!125836 res!1000115) b!1472335))

(assert (= (and b!1472335 res!1000112) b!1472333))

(assert (= (and b!1472333 res!1000117) b!1472339))

(assert (= (and b!1472339 res!1000109) b!1472334))

(assert (= (and b!1472334 res!1000119) b!1472337))

(assert (= (and b!1472337 res!1000107) b!1472343))

(assert (= (and b!1472343 res!1000111) b!1472344))

(assert (= (and b!1472344 res!1000116) b!1472338))

(assert (= (and b!1472338 res!1000105) b!1472340))

(assert (= (and b!1472340 res!1000118) b!1472342))

(assert (= (and b!1472342 res!1000106) b!1472332))

(assert (= (and b!1472332 c!135629) b!1472346))

(assert (= (and b!1472332 (not c!135629)) b!1472336))

(assert (= (and b!1472332 res!1000108) b!1472345))

(assert (= (and b!1472345 res!1000114) b!1472341))

(assert (= (and b!1472341 res!1000113) b!1472347))

(assert (= (and b!1472347 res!1000110) b!1472331))

(declare-fun m!1359105 () Bool)

(assert (=> b!1472339 m!1359105))

(assert (=> b!1472339 m!1359105))

(declare-fun m!1359107 () Bool)

(assert (=> b!1472339 m!1359107))

(declare-fun m!1359109 () Bool)

(assert (=> b!1472341 m!1359109))

(declare-fun m!1359111 () Bool)

(assert (=> b!1472341 m!1359111))

(assert (=> b!1472338 m!1359105))

(assert (=> b!1472338 m!1359105))

(declare-fun m!1359113 () Bool)

(assert (=> b!1472338 m!1359113))

(assert (=> b!1472338 m!1359113))

(assert (=> b!1472338 m!1359105))

(declare-fun m!1359115 () Bool)

(assert (=> b!1472338 m!1359115))

(declare-fun m!1359117 () Bool)

(assert (=> b!1472342 m!1359117))

(assert (=> b!1472342 m!1359117))

(declare-fun m!1359119 () Bool)

(assert (=> b!1472342 m!1359119))

(declare-fun m!1359121 () Bool)

(assert (=> b!1472342 m!1359121))

(declare-fun m!1359123 () Bool)

(assert (=> b!1472342 m!1359123))

(declare-fun m!1359125 () Bool)

(assert (=> b!1472331 m!1359125))

(assert (=> b!1472331 m!1359105))

(declare-fun m!1359127 () Bool)

(assert (=> start!125836 m!1359127))

(declare-fun m!1359129 () Bool)

(assert (=> start!125836 m!1359129))

(declare-fun m!1359131 () Bool)

(assert (=> b!1472337 m!1359131))

(declare-fun m!1359133 () Bool)

(assert (=> b!1472333 m!1359133))

(assert (=> b!1472333 m!1359133))

(declare-fun m!1359135 () Bool)

(assert (=> b!1472333 m!1359135))

(assert (=> b!1472347 m!1359105))

(assert (=> b!1472347 m!1359105))

(declare-fun m!1359137 () Bool)

(assert (=> b!1472347 m!1359137))

(assert (=> b!1472340 m!1359105))

(assert (=> b!1472340 m!1359105))

(declare-fun m!1359139 () Bool)

(assert (=> b!1472340 m!1359139))

(declare-fun m!1359141 () Bool)

(assert (=> b!1472346 m!1359141))

(assert (=> b!1472344 m!1359121))

(declare-fun m!1359143 () Bool)

(assert (=> b!1472344 m!1359143))

(declare-fun m!1359145 () Bool)

(assert (=> b!1472334 m!1359145))

(declare-fun m!1359147 () Bool)

(assert (=> b!1472336 m!1359147))

(declare-fun m!1359149 () Bool)

(assert (=> b!1472336 m!1359149))

(push 1)

