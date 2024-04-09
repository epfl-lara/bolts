; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124622 () Bool)

(assert start!124622)

(declare-fun res!974469 () Bool)

(declare-fun e!812859 () Bool)

(assert (=> start!124622 (=> (not res!974469) (not e!812859))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124622 (= res!974469 (validMask!0 mask!2687))))

(assert (=> start!124622 e!812859))

(assert (=> start!124622 true))

(declare-datatypes ((array!97987 0))(
  ( (array!97988 (arr!47277 (Array (_ BitVec 32) (_ BitVec 64))) (size!47828 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97987)

(declare-fun array_inv!36222 (array!97987) Bool)

(assert (=> start!124622 (array_inv!36222 a!2862)))

(declare-fun b!1442097 () Bool)

(declare-fun res!974459 () Bool)

(declare-fun e!812860 () Bool)

(assert (=> b!1442097 (=> (not res!974459) (not e!812860))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11552 0))(
  ( (MissingZero!11552 (index!48599 (_ BitVec 32))) (Found!11552 (index!48600 (_ BitVec 32))) (Intermediate!11552 (undefined!12364 Bool) (index!48601 (_ BitVec 32)) (x!130308 (_ BitVec 32))) (Undefined!11552) (MissingVacant!11552 (index!48602 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97987 (_ BitVec 32)) SeekEntryResult!11552)

(assert (=> b!1442097 (= res!974459 (= (seekEntryOrOpen!0 (select (arr!47277 a!2862) j!93) a!2862 mask!2687) (Found!11552 j!93)))))

(declare-fun b!1442098 () Bool)

(declare-fun res!974460 () Bool)

(assert (=> b!1442098 (=> (not res!974460) (not e!812859))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442098 (= res!974460 (validKeyInArray!0 (select (arr!47277 a!2862) i!1006)))))

(declare-fun b!1442099 () Bool)

(declare-fun res!974462 () Bool)

(assert (=> b!1442099 (=> (not res!974462) (not e!812859))))

(assert (=> b!1442099 (= res!974462 (validKeyInArray!0 (select (arr!47277 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1442100 () Bool)

(declare-fun lt!633424 () (_ BitVec 64))

(declare-fun e!812856 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!633426 () array!97987)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97987 (_ BitVec 32)) SeekEntryResult!11552)

(assert (=> b!1442100 (= e!812856 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633424 lt!633426 mask!2687) (seekEntryOrOpen!0 lt!633424 lt!633426 mask!2687)))))

(declare-fun b!1442101 () Bool)

(declare-fun e!812861 () Bool)

(assert (=> b!1442101 (= e!812859 e!812861)))

(declare-fun res!974465 () Bool)

(assert (=> b!1442101 (=> (not res!974465) (not e!812861))))

(assert (=> b!1442101 (= res!974465 (= (select (store (arr!47277 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442101 (= lt!633426 (array!97988 (store (arr!47277 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47828 a!2862)))))

(declare-fun b!1442102 () Bool)

(declare-fun e!812857 () Bool)

(assert (=> b!1442102 (= e!812861 e!812857)))

(declare-fun res!974466 () Bool)

(assert (=> b!1442102 (=> (not res!974466) (not e!812857))))

(declare-fun lt!633423 () SeekEntryResult!11552)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97987 (_ BitVec 32)) SeekEntryResult!11552)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442102 (= res!974466 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47277 a!2862) j!93) mask!2687) (select (arr!47277 a!2862) j!93) a!2862 mask!2687) lt!633423))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442102 (= lt!633423 (Intermediate!11552 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442103 () Bool)

(declare-fun e!812855 () Bool)

(assert (=> b!1442103 (= e!812855 (not true))))

(assert (=> b!1442103 e!812860))

(declare-fun res!974468 () Bool)

(assert (=> b!1442103 (=> (not res!974468) (not e!812860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97987 (_ BitVec 32)) Bool)

(assert (=> b!1442103 (= res!974468 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48548 0))(
  ( (Unit!48549) )
))
(declare-fun lt!633425 () Unit!48548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97987 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48548)

(assert (=> b!1442103 (= lt!633425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442104 () Bool)

(declare-fun lt!633427 () SeekEntryResult!11552)

(assert (=> b!1442104 (= e!812856 (= lt!633427 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633424 lt!633426 mask!2687)))))

(declare-fun b!1442105 () Bool)

(declare-fun res!974457 () Bool)

(assert (=> b!1442105 (=> (not res!974457) (not e!812855))))

(assert (=> b!1442105 (= res!974457 e!812856)))

(declare-fun c!133334 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442105 (= c!133334 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442106 () Bool)

(assert (=> b!1442106 (= e!812857 e!812855)))

(declare-fun res!974464 () Bool)

(assert (=> b!1442106 (=> (not res!974464) (not e!812855))))

(assert (=> b!1442106 (= res!974464 (= lt!633427 (Intermediate!11552 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442106 (= lt!633427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633424 mask!2687) lt!633424 lt!633426 mask!2687))))

(assert (=> b!1442106 (= lt!633424 (select (store (arr!47277 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442107 () Bool)

(declare-fun res!974461 () Bool)

(assert (=> b!1442107 (=> (not res!974461) (not e!812859))))

(assert (=> b!1442107 (= res!974461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442108 () Bool)

(declare-fun res!974456 () Bool)

(assert (=> b!1442108 (=> (not res!974456) (not e!812857))))

(assert (=> b!1442108 (= res!974456 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47277 a!2862) j!93) a!2862 mask!2687) lt!633423))))

(declare-fun b!1442109 () Bool)

(declare-fun res!974463 () Bool)

(assert (=> b!1442109 (=> (not res!974463) (not e!812855))))

(assert (=> b!1442109 (= res!974463 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442110 () Bool)

(declare-fun res!974458 () Bool)

(assert (=> b!1442110 (=> (not res!974458) (not e!812859))))

(assert (=> b!1442110 (= res!974458 (and (= (size!47828 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47828 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47828 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442111 () Bool)

(declare-fun res!974455 () Bool)

(assert (=> b!1442111 (=> (not res!974455) (not e!812859))))

(assert (=> b!1442111 (= res!974455 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47828 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47828 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47828 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442112 () Bool)

(declare-fun res!974467 () Bool)

(assert (=> b!1442112 (=> (not res!974467) (not e!812859))))

(declare-datatypes ((List!33958 0))(
  ( (Nil!33955) (Cons!33954 (h!35304 (_ BitVec 64)) (t!48659 List!33958)) )
))
(declare-fun arrayNoDuplicates!0 (array!97987 (_ BitVec 32) List!33958) Bool)

(assert (=> b!1442112 (= res!974467 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33955))))

(declare-fun b!1442113 () Bool)

(assert (=> b!1442113 (= e!812860 (or (= (select (arr!47277 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47277 a!2862) intermediateBeforeIndex!19) (select (arr!47277 a!2862) j!93))))))

(assert (= (and start!124622 res!974469) b!1442110))

(assert (= (and b!1442110 res!974458) b!1442098))

(assert (= (and b!1442098 res!974460) b!1442099))

(assert (= (and b!1442099 res!974462) b!1442107))

(assert (= (and b!1442107 res!974461) b!1442112))

(assert (= (and b!1442112 res!974467) b!1442111))

(assert (= (and b!1442111 res!974455) b!1442101))

(assert (= (and b!1442101 res!974465) b!1442102))

(assert (= (and b!1442102 res!974466) b!1442108))

(assert (= (and b!1442108 res!974456) b!1442106))

(assert (= (and b!1442106 res!974464) b!1442105))

(assert (= (and b!1442105 c!133334) b!1442104))

(assert (= (and b!1442105 (not c!133334)) b!1442100))

(assert (= (and b!1442105 res!974457) b!1442109))

(assert (= (and b!1442109 res!974463) b!1442103))

(assert (= (and b!1442103 res!974468) b!1442097))

(assert (= (and b!1442097 res!974459) b!1442113))

(declare-fun m!1331321 () Bool)

(assert (=> b!1442102 m!1331321))

(assert (=> b!1442102 m!1331321))

(declare-fun m!1331323 () Bool)

(assert (=> b!1442102 m!1331323))

(assert (=> b!1442102 m!1331323))

(assert (=> b!1442102 m!1331321))

(declare-fun m!1331325 () Bool)

(assert (=> b!1442102 m!1331325))

(declare-fun m!1331327 () Bool)

(assert (=> b!1442106 m!1331327))

(assert (=> b!1442106 m!1331327))

(declare-fun m!1331329 () Bool)

(assert (=> b!1442106 m!1331329))

(declare-fun m!1331331 () Bool)

(assert (=> b!1442106 m!1331331))

(declare-fun m!1331333 () Bool)

(assert (=> b!1442106 m!1331333))

(assert (=> b!1442101 m!1331331))

(declare-fun m!1331335 () Bool)

(assert (=> b!1442101 m!1331335))

(declare-fun m!1331337 () Bool)

(assert (=> start!124622 m!1331337))

(declare-fun m!1331339 () Bool)

(assert (=> start!124622 m!1331339))

(assert (=> b!1442097 m!1331321))

(assert (=> b!1442097 m!1331321))

(declare-fun m!1331341 () Bool)

(assert (=> b!1442097 m!1331341))

(declare-fun m!1331343 () Bool)

(assert (=> b!1442107 m!1331343))

(assert (=> b!1442108 m!1331321))

(assert (=> b!1442108 m!1331321))

(declare-fun m!1331345 () Bool)

(assert (=> b!1442108 m!1331345))

(declare-fun m!1331347 () Bool)

(assert (=> b!1442104 m!1331347))

(assert (=> b!1442099 m!1331321))

(assert (=> b!1442099 m!1331321))

(declare-fun m!1331349 () Bool)

(assert (=> b!1442099 m!1331349))

(declare-fun m!1331351 () Bool)

(assert (=> b!1442103 m!1331351))

(declare-fun m!1331353 () Bool)

(assert (=> b!1442103 m!1331353))

(declare-fun m!1331355 () Bool)

(assert (=> b!1442100 m!1331355))

(declare-fun m!1331357 () Bool)

(assert (=> b!1442100 m!1331357))

(declare-fun m!1331359 () Bool)

(assert (=> b!1442112 m!1331359))

(declare-fun m!1331361 () Bool)

(assert (=> b!1442098 m!1331361))

(assert (=> b!1442098 m!1331361))

(declare-fun m!1331363 () Bool)

(assert (=> b!1442098 m!1331363))

(declare-fun m!1331365 () Bool)

(assert (=> b!1442113 m!1331365))

(assert (=> b!1442113 m!1331321))

(push 1)

