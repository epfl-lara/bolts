; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125368 () Bool)

(assert start!125368)

(declare-fun b!1464145 () Bool)

(declare-fun e!822863 () Bool)

(declare-fun e!822864 () Bool)

(assert (=> b!1464145 (= e!822863 e!822864)))

(declare-fun res!993362 () Bool)

(assert (=> b!1464145 (=> (not res!993362) (not e!822864))))

(declare-datatypes ((SeekEntryResult!11925 0))(
  ( (MissingZero!11925 (index!50091 (_ BitVec 32))) (Found!11925 (index!50092 (_ BitVec 32))) (Intermediate!11925 (undefined!12737 Bool) (index!50093 (_ BitVec 32)) (x!131681 (_ BitVec 32))) (Undefined!11925) (MissingVacant!11925 (index!50094 (_ BitVec 32))) )
))
(declare-fun lt!640960 () SeekEntryResult!11925)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464145 (= res!993362 (= lt!640960 (Intermediate!11925 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!640959 () (_ BitVec 64))

(declare-datatypes ((array!98733 0))(
  ( (array!98734 (arr!47650 (Array (_ BitVec 32) (_ BitVec 64))) (size!48201 (_ BitVec 32))) )
))
(declare-fun lt!640962 () array!98733)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98733 (_ BitVec 32)) SeekEntryResult!11925)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464145 (= lt!640960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640959 mask!2687) lt!640959 lt!640962 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98733)

(assert (=> b!1464145 (= lt!640959 (select (store (arr!47650 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464146 () Bool)

(declare-fun e!822869 () Bool)

(assert (=> b!1464146 (= e!822864 (not e!822869))))

(declare-fun res!993377 () Bool)

(assert (=> b!1464146 (=> res!993377 e!822869)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1464146 (= res!993377 (or (and (= (select (arr!47650 a!2862) index!646) (select (store (arr!47650 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47650 a!2862) index!646) (select (arr!47650 a!2862) j!93))) (= (select (arr!47650 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822868 () Bool)

(assert (=> b!1464146 e!822868))

(declare-fun res!993367 () Bool)

(assert (=> b!1464146 (=> (not res!993367) (not e!822868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98733 (_ BitVec 32)) Bool)

(assert (=> b!1464146 (= res!993367 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49294 0))(
  ( (Unit!49295) )
))
(declare-fun lt!640957 () Unit!49294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49294)

(assert (=> b!1464146 (= lt!640957 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464147 () Bool)

(declare-fun res!993372 () Bool)

(declare-fun e!822870 () Bool)

(assert (=> b!1464147 (=> (not res!993372) (not e!822870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464147 (= res!993372 (validKeyInArray!0 (select (arr!47650 a!2862) i!1006)))))

(declare-fun b!1464148 () Bool)

(declare-fun e!822867 () Bool)

(assert (=> b!1464148 (= e!822867 e!822863)))

(declare-fun res!993365 () Bool)

(assert (=> b!1464148 (=> (not res!993365) (not e!822863))))

(declare-fun lt!640961 () SeekEntryResult!11925)

(assert (=> b!1464148 (= res!993365 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47650 a!2862) j!93) mask!2687) (select (arr!47650 a!2862) j!93) a!2862 mask!2687) lt!640961))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1464148 (= lt!640961 (Intermediate!11925 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464149 () Bool)

(declare-fun res!993374 () Bool)

(assert (=> b!1464149 (=> (not res!993374) (not e!822870))))

(assert (=> b!1464149 (= res!993374 (and (= (size!48201 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48201 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48201 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464150 () Bool)

(declare-fun res!993370 () Bool)

(declare-fun e!822871 () Bool)

(assert (=> b!1464150 (=> res!993370 e!822871)))

(declare-fun lt!640963 () (_ BitVec 32))

(assert (=> b!1464150 (= res!993370 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640963 (select (arr!47650 a!2862) j!93) a!2862 mask!2687) lt!640961)))))

(declare-fun res!993375 () Bool)

(assert (=> start!125368 (=> (not res!993375) (not e!822870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125368 (= res!993375 (validMask!0 mask!2687))))

(assert (=> start!125368 e!822870))

(assert (=> start!125368 true))

(declare-fun array_inv!36595 (array!98733) Bool)

(assert (=> start!125368 (array_inv!36595 a!2862)))

(declare-fun b!1464151 () Bool)

(assert (=> b!1464151 (= e!822869 e!822871)))

(declare-fun res!993371 () Bool)

(assert (=> b!1464151 (=> res!993371 e!822871)))

(assert (=> b!1464151 (= res!993371 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640963 #b00000000000000000000000000000000) (bvsge lt!640963 (size!48201 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464151 (= lt!640963 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464152 () Bool)

(declare-fun res!993378 () Bool)

(assert (=> b!1464152 (=> (not res!993378) (not e!822870))))

(assert (=> b!1464152 (= res!993378 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48201 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48201 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48201 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!822866 () Bool)

(declare-fun b!1464153 () Bool)

(assert (=> b!1464153 (= e!822866 (= lt!640960 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640959 lt!640962 mask!2687)))))

(declare-fun b!1464154 () Bool)

(declare-fun res!993376 () Bool)

(assert (=> b!1464154 (=> (not res!993376) (not e!822864))))

(assert (=> b!1464154 (= res!993376 e!822866)))

(declare-fun c!134906 () Bool)

(assert (=> b!1464154 (= c!134906 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464155 () Bool)

(declare-fun e!822865 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98733 (_ BitVec 32)) SeekEntryResult!11925)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98733 (_ BitVec 32)) SeekEntryResult!11925)

(assert (=> b!1464155 (= e!822865 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640963 intermediateAfterIndex!19 lt!640959 lt!640962 mask!2687) (seekEntryOrOpen!0 lt!640959 lt!640962 mask!2687))))))

(declare-fun b!1464156 () Bool)

(assert (=> b!1464156 (= e!822866 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640959 lt!640962 mask!2687) (seekEntryOrOpen!0 lt!640959 lt!640962 mask!2687)))))

(declare-fun b!1464157 () Bool)

(declare-fun res!993361 () Bool)

(assert (=> b!1464157 (=> (not res!993361) (not e!822864))))

(assert (=> b!1464157 (= res!993361 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464158 () Bool)

(assert (=> b!1464158 (= e!822868 (or (= (select (arr!47650 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47650 a!2862) intermediateBeforeIndex!19) (select (arr!47650 a!2862) j!93))))))

(declare-fun b!1464159 () Bool)

(assert (=> b!1464159 (= e!822870 e!822867)))

(declare-fun res!993368 () Bool)

(assert (=> b!1464159 (=> (not res!993368) (not e!822867))))

(assert (=> b!1464159 (= res!993368 (= (select (store (arr!47650 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464159 (= lt!640962 (array!98734 (store (arr!47650 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48201 a!2862)))))

(declare-fun b!1464160 () Bool)

(assert (=> b!1464160 (= e!822865 (not (= lt!640960 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640963 lt!640959 lt!640962 mask!2687))))))

(declare-fun b!1464161 () Bool)

(declare-fun res!993363 () Bool)

(assert (=> b!1464161 (=> (not res!993363) (not e!822870))))

(assert (=> b!1464161 (= res!993363 (validKeyInArray!0 (select (arr!47650 a!2862) j!93)))))

(declare-fun b!1464162 () Bool)

(declare-fun res!993373 () Bool)

(assert (=> b!1464162 (=> (not res!993373) (not e!822870))))

(assert (=> b!1464162 (= res!993373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464163 () Bool)

(declare-fun res!993369 () Bool)

(assert (=> b!1464163 (=> (not res!993369) (not e!822870))))

(declare-datatypes ((List!34331 0))(
  ( (Nil!34328) (Cons!34327 (h!35677 (_ BitVec 64)) (t!49032 List!34331)) )
))
(declare-fun arrayNoDuplicates!0 (array!98733 (_ BitVec 32) List!34331) Bool)

(assert (=> b!1464163 (= res!993369 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34328))))

(declare-fun b!1464164 () Bool)

(declare-fun res!993364 () Bool)

(assert (=> b!1464164 (=> (not res!993364) (not e!822863))))

(assert (=> b!1464164 (= res!993364 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47650 a!2862) j!93) a!2862 mask!2687) lt!640961))))

(declare-fun b!1464165 () Bool)

(declare-fun res!993366 () Bool)

(assert (=> b!1464165 (=> (not res!993366) (not e!822868))))

(assert (=> b!1464165 (= res!993366 (= (seekEntryOrOpen!0 (select (arr!47650 a!2862) j!93) a!2862 mask!2687) (Found!11925 j!93)))))

(declare-fun b!1464166 () Bool)

(assert (=> b!1464166 (= e!822871 true)))

(declare-fun lt!640958 () Bool)

(assert (=> b!1464166 (= lt!640958 e!822865)))

(declare-fun c!134905 () Bool)

(assert (=> b!1464166 (= c!134905 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125368 res!993375) b!1464149))

(assert (= (and b!1464149 res!993374) b!1464147))

(assert (= (and b!1464147 res!993372) b!1464161))

(assert (= (and b!1464161 res!993363) b!1464162))

(assert (= (and b!1464162 res!993373) b!1464163))

(assert (= (and b!1464163 res!993369) b!1464152))

(assert (= (and b!1464152 res!993378) b!1464159))

(assert (= (and b!1464159 res!993368) b!1464148))

(assert (= (and b!1464148 res!993365) b!1464164))

(assert (= (and b!1464164 res!993364) b!1464145))

(assert (= (and b!1464145 res!993362) b!1464154))

(assert (= (and b!1464154 c!134906) b!1464153))

(assert (= (and b!1464154 (not c!134906)) b!1464156))

(assert (= (and b!1464154 res!993376) b!1464157))

(assert (= (and b!1464157 res!993361) b!1464146))

(assert (= (and b!1464146 res!993367) b!1464165))

(assert (= (and b!1464165 res!993366) b!1464158))

(assert (= (and b!1464146 (not res!993377)) b!1464151))

(assert (= (and b!1464151 (not res!993371)) b!1464150))

(assert (= (and b!1464150 (not res!993370)) b!1464166))

(assert (= (and b!1464166 c!134905) b!1464160))

(assert (= (and b!1464166 (not c!134905)) b!1464155))

(declare-fun m!1351443 () Bool)

(assert (=> b!1464155 m!1351443))

(declare-fun m!1351445 () Bool)

(assert (=> b!1464155 m!1351445))

(declare-fun m!1351447 () Bool)

(assert (=> b!1464159 m!1351447))

(declare-fun m!1351449 () Bool)

(assert (=> b!1464159 m!1351449))

(declare-fun m!1351451 () Bool)

(assert (=> b!1464153 m!1351451))

(declare-fun m!1351453 () Bool)

(assert (=> b!1464165 m!1351453))

(assert (=> b!1464165 m!1351453))

(declare-fun m!1351455 () Bool)

(assert (=> b!1464165 m!1351455))

(declare-fun m!1351457 () Bool)

(assert (=> b!1464163 m!1351457))

(declare-fun m!1351459 () Bool)

(assert (=> b!1464158 m!1351459))

(assert (=> b!1464158 m!1351453))

(declare-fun m!1351461 () Bool)

(assert (=> b!1464160 m!1351461))

(declare-fun m!1351463 () Bool)

(assert (=> b!1464145 m!1351463))

(assert (=> b!1464145 m!1351463))

(declare-fun m!1351465 () Bool)

(assert (=> b!1464145 m!1351465))

(assert (=> b!1464145 m!1351447))

(declare-fun m!1351467 () Bool)

(assert (=> b!1464145 m!1351467))

(assert (=> b!1464150 m!1351453))

(assert (=> b!1464150 m!1351453))

(declare-fun m!1351469 () Bool)

(assert (=> b!1464150 m!1351469))

(declare-fun m!1351471 () Bool)

(assert (=> start!125368 m!1351471))

(declare-fun m!1351473 () Bool)

(assert (=> start!125368 m!1351473))

(assert (=> b!1464164 m!1351453))

(assert (=> b!1464164 m!1351453))

(declare-fun m!1351475 () Bool)

(assert (=> b!1464164 m!1351475))

(declare-fun m!1351477 () Bool)

(assert (=> b!1464147 m!1351477))

(assert (=> b!1464147 m!1351477))

(declare-fun m!1351479 () Bool)

(assert (=> b!1464147 m!1351479))

(assert (=> b!1464161 m!1351453))

(assert (=> b!1464161 m!1351453))

(declare-fun m!1351481 () Bool)

(assert (=> b!1464161 m!1351481))

(declare-fun m!1351483 () Bool)

(assert (=> b!1464162 m!1351483))

(declare-fun m!1351485 () Bool)

(assert (=> b!1464146 m!1351485))

(assert (=> b!1464146 m!1351447))

(declare-fun m!1351487 () Bool)

(assert (=> b!1464146 m!1351487))

(declare-fun m!1351489 () Bool)

(assert (=> b!1464146 m!1351489))

(declare-fun m!1351491 () Bool)

(assert (=> b!1464146 m!1351491))

(assert (=> b!1464146 m!1351453))

(assert (=> b!1464148 m!1351453))

(assert (=> b!1464148 m!1351453))

(declare-fun m!1351493 () Bool)

(assert (=> b!1464148 m!1351493))

(assert (=> b!1464148 m!1351493))

(assert (=> b!1464148 m!1351453))

(declare-fun m!1351495 () Bool)

(assert (=> b!1464148 m!1351495))

(declare-fun m!1351497 () Bool)

(assert (=> b!1464156 m!1351497))

(assert (=> b!1464156 m!1351445))

(declare-fun m!1351499 () Bool)

(assert (=> b!1464151 m!1351499))

(push 1)

