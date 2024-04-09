; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125124 () Bool)

(assert start!125124)

(declare-fun b!1456264 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!819382 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98489 0))(
  ( (array!98490 (arr!47528 (Array (_ BitVec 32) (_ BitVec 64))) (size!48079 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98489)

(assert (=> b!1456264 (= e!819382 (and (or (= (select (arr!47528 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47528 a!2862) intermediateBeforeIndex!19) (select (arr!47528 a!2862) j!93))) (let ((bdg!53236 (select (store (arr!47528 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47528 a!2862) index!646) bdg!53236) (= (select (arr!47528 a!2862) index!646) (select (arr!47528 a!2862) j!93))) (= (select (arr!47528 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53236 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456265 () Bool)

(declare-fun e!819379 () Bool)

(declare-fun e!819383 () Bool)

(assert (=> b!1456265 (= e!819379 e!819383)))

(declare-fun res!986878 () Bool)

(assert (=> b!1456265 (=> (not res!986878) (not e!819383))))

(assert (=> b!1456265 (= res!986878 (= (select (store (arr!47528 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!638227 () array!98489)

(assert (=> b!1456265 (= lt!638227 (array!98490 (store (arr!47528 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48079 a!2862)))))

(declare-fun b!1456266 () Bool)

(declare-fun e!819381 () Bool)

(declare-fun e!819374 () Bool)

(assert (=> b!1456266 (= e!819381 e!819374)))

(declare-fun res!986877 () Bool)

(assert (=> b!1456266 (=> res!986877 e!819374)))

(declare-fun lt!638221 () (_ BitVec 32))

(assert (=> b!1456266 (= res!986877 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638221 #b00000000000000000000000000000000) (bvsge lt!638221 (size!48079 a!2862))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456266 (= lt!638221 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-datatypes ((SeekEntryResult!11803 0))(
  ( (MissingZero!11803 (index!49603 (_ BitVec 32))) (Found!11803 (index!49604 (_ BitVec 32))) (Intermediate!11803 (undefined!12615 Bool) (index!49605 (_ BitVec 32)) (x!131231 (_ BitVec 32))) (Undefined!11803) (MissingVacant!11803 (index!49606 (_ BitVec 32))) )
))
(declare-fun lt!638222 () SeekEntryResult!11803)

(declare-fun lt!638225 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98489 (_ BitVec 32)) SeekEntryResult!11803)

(assert (=> b!1456266 (= lt!638222 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638225 lt!638227 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98489 (_ BitVec 32)) SeekEntryResult!11803)

(assert (=> b!1456266 (= lt!638222 (seekEntryOrOpen!0 lt!638225 lt!638227 mask!2687))))

(declare-fun b!1456267 () Bool)

(declare-fun res!986884 () Bool)

(declare-fun e!819378 () Bool)

(assert (=> b!1456267 (=> (not res!986884) (not e!819378))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1456267 (= res!986884 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456268 () Bool)

(assert (=> b!1456268 (= e!819378 (not e!819381))))

(declare-fun res!986875 () Bool)

(assert (=> b!1456268 (=> res!986875 e!819381)))

(assert (=> b!1456268 (= res!986875 (or (and (= (select (arr!47528 a!2862) index!646) (select (store (arr!47528 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47528 a!2862) index!646) (select (arr!47528 a!2862) j!93))) (= (select (arr!47528 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456268 e!819382))

(declare-fun res!986887 () Bool)

(assert (=> b!1456268 (=> (not res!986887) (not e!819382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98489 (_ BitVec 32)) Bool)

(assert (=> b!1456268 (= res!986887 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49050 0))(
  ( (Unit!49051) )
))
(declare-fun lt!638226 () Unit!49050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98489 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49050)

(assert (=> b!1456268 (= lt!638226 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456269 () Bool)

(declare-fun res!986873 () Bool)

(assert (=> b!1456269 (=> (not res!986873) (not e!819379))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456269 (= res!986873 (validKeyInArray!0 (select (arr!47528 a!2862) i!1006)))))

(declare-fun b!1456270 () Bool)

(declare-fun res!986872 () Bool)

(assert (=> b!1456270 (=> (not res!986872) (not e!819379))))

(declare-datatypes ((List!34209 0))(
  ( (Nil!34206) (Cons!34205 (h!35555 (_ BitVec 64)) (t!48910 List!34209)) )
))
(declare-fun arrayNoDuplicates!0 (array!98489 (_ BitVec 32) List!34209) Bool)

(assert (=> b!1456270 (= res!986872 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34206))))

(declare-fun b!1456271 () Bool)

(declare-fun res!986882 () Bool)

(assert (=> b!1456271 (=> res!986882 e!819374)))

(declare-fun lt!638224 () SeekEntryResult!11803)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98489 (_ BitVec 32)) SeekEntryResult!11803)

(assert (=> b!1456271 (= res!986882 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638221 (select (arr!47528 a!2862) j!93) a!2862 mask!2687) lt!638224)))))

(declare-fun res!986876 () Bool)

(assert (=> start!125124 (=> (not res!986876) (not e!819379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125124 (= res!986876 (validMask!0 mask!2687))))

(assert (=> start!125124 e!819379))

(assert (=> start!125124 true))

(declare-fun array_inv!36473 (array!98489) Bool)

(assert (=> start!125124 (array_inv!36473 a!2862)))

(declare-fun b!1456272 () Bool)

(declare-fun e!819376 () Bool)

(assert (=> b!1456272 (= e!819376 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638225 lt!638227 mask!2687) (seekEntryOrOpen!0 lt!638225 lt!638227 mask!2687)))))

(declare-fun b!1456273 () Bool)

(declare-fun res!986881 () Bool)

(assert (=> b!1456273 (=> (not res!986881) (not e!819382))))

(assert (=> b!1456273 (= res!986881 (= (seekEntryOrOpen!0 (select (arr!47528 a!2862) j!93) a!2862 mask!2687) (Found!11803 j!93)))))

(declare-fun b!1456274 () Bool)

(declare-fun res!986874 () Bool)

(assert (=> b!1456274 (=> (not res!986874) (not e!819378))))

(assert (=> b!1456274 (= res!986874 e!819376)))

(declare-fun c!134210 () Bool)

(assert (=> b!1456274 (= c!134210 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456275 () Bool)

(declare-fun res!986886 () Bool)

(assert (=> b!1456275 (=> (not res!986886) (not e!819379))))

(assert (=> b!1456275 (= res!986886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456276 () Bool)

(declare-fun res!986889 () Bool)

(declare-fun e!819377 () Bool)

(assert (=> b!1456276 (=> (not res!986889) (not e!819377))))

(assert (=> b!1456276 (= res!986889 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47528 a!2862) j!93) a!2862 mask!2687) lt!638224))))

(declare-fun b!1456277 () Bool)

(declare-fun res!986879 () Bool)

(assert (=> b!1456277 (=> (not res!986879) (not e!819379))))

(assert (=> b!1456277 (= res!986879 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48079 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48079 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48079 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456278 () Bool)

(assert (=> b!1456278 (= e!819374 true)))

(declare-fun lt!638223 () Bool)

(declare-fun e!819380 () Bool)

(assert (=> b!1456278 (= lt!638223 e!819380)))

(declare-fun c!134209 () Bool)

(assert (=> b!1456278 (= c!134209 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!638220 () SeekEntryResult!11803)

(declare-fun b!1456279 () Bool)

(assert (=> b!1456279 (= e!819376 (= lt!638220 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638225 lt!638227 mask!2687)))))

(declare-fun b!1456280 () Bool)

(declare-fun res!986885 () Bool)

(assert (=> b!1456280 (=> (not res!986885) (not e!819379))))

(assert (=> b!1456280 (= res!986885 (and (= (size!48079 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48079 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48079 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456281 () Bool)

(assert (=> b!1456281 (= e!819380 (not (= lt!638220 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638221 lt!638225 lt!638227 mask!2687))))))

(declare-fun b!1456282 () Bool)

(assert (=> b!1456282 (= e!819380 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638221 intermediateAfterIndex!19 lt!638225 lt!638227 mask!2687) lt!638222)))))

(declare-fun b!1456283 () Bool)

(assert (=> b!1456283 (= e!819383 e!819377)))

(declare-fun res!986880 () Bool)

(assert (=> b!1456283 (=> (not res!986880) (not e!819377))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456283 (= res!986880 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47528 a!2862) j!93) mask!2687) (select (arr!47528 a!2862) j!93) a!2862 mask!2687) lt!638224))))

(assert (=> b!1456283 (= lt!638224 (Intermediate!11803 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456284 () Bool)

(declare-fun res!986888 () Bool)

(assert (=> b!1456284 (=> (not res!986888) (not e!819379))))

(assert (=> b!1456284 (= res!986888 (validKeyInArray!0 (select (arr!47528 a!2862) j!93)))))

(declare-fun b!1456285 () Bool)

(assert (=> b!1456285 (= e!819377 e!819378)))

(declare-fun res!986883 () Bool)

(assert (=> b!1456285 (=> (not res!986883) (not e!819378))))

(assert (=> b!1456285 (= res!986883 (= lt!638220 (Intermediate!11803 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456285 (= lt!638220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638225 mask!2687) lt!638225 lt!638227 mask!2687))))

(assert (=> b!1456285 (= lt!638225 (select (store (arr!47528 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125124 res!986876) b!1456280))

(assert (= (and b!1456280 res!986885) b!1456269))

(assert (= (and b!1456269 res!986873) b!1456284))

(assert (= (and b!1456284 res!986888) b!1456275))

(assert (= (and b!1456275 res!986886) b!1456270))

(assert (= (and b!1456270 res!986872) b!1456277))

(assert (= (and b!1456277 res!986879) b!1456265))

(assert (= (and b!1456265 res!986878) b!1456283))

(assert (= (and b!1456283 res!986880) b!1456276))

(assert (= (and b!1456276 res!986889) b!1456285))

(assert (= (and b!1456285 res!986883) b!1456274))

(assert (= (and b!1456274 c!134210) b!1456279))

(assert (= (and b!1456274 (not c!134210)) b!1456272))

(assert (= (and b!1456274 res!986874) b!1456267))

(assert (= (and b!1456267 res!986884) b!1456268))

(assert (= (and b!1456268 res!986887) b!1456273))

(assert (= (and b!1456273 res!986881) b!1456264))

(assert (= (and b!1456268 (not res!986875)) b!1456266))

(assert (= (and b!1456266 (not res!986877)) b!1456271))

(assert (= (and b!1456271 (not res!986882)) b!1456278))

(assert (= (and b!1456278 c!134209) b!1456281))

(assert (= (and b!1456278 (not c!134209)) b!1456282))

(declare-fun m!1344433 () Bool)

(assert (=> start!125124 m!1344433))

(declare-fun m!1344435 () Bool)

(assert (=> start!125124 m!1344435))

(declare-fun m!1344437 () Bool)

(assert (=> b!1456273 m!1344437))

(assert (=> b!1456273 m!1344437))

(declare-fun m!1344439 () Bool)

(assert (=> b!1456273 m!1344439))

(declare-fun m!1344441 () Bool)

(assert (=> b!1456272 m!1344441))

(declare-fun m!1344443 () Bool)

(assert (=> b!1456272 m!1344443))

(declare-fun m!1344445 () Bool)

(assert (=> b!1456270 m!1344445))

(assert (=> b!1456284 m!1344437))

(assert (=> b!1456284 m!1344437))

(declare-fun m!1344447 () Bool)

(assert (=> b!1456284 m!1344447))

(declare-fun m!1344449 () Bool)

(assert (=> b!1456265 m!1344449))

(declare-fun m!1344451 () Bool)

(assert (=> b!1456265 m!1344451))

(declare-fun m!1344453 () Bool)

(assert (=> b!1456279 m!1344453))

(declare-fun m!1344455 () Bool)

(assert (=> b!1456285 m!1344455))

(assert (=> b!1456285 m!1344455))

(declare-fun m!1344457 () Bool)

(assert (=> b!1456285 m!1344457))

(assert (=> b!1456285 m!1344449))

(declare-fun m!1344459 () Bool)

(assert (=> b!1456285 m!1344459))

(declare-fun m!1344461 () Bool)

(assert (=> b!1456281 m!1344461))

(assert (=> b!1456283 m!1344437))

(assert (=> b!1456283 m!1344437))

(declare-fun m!1344463 () Bool)

(assert (=> b!1456283 m!1344463))

(assert (=> b!1456283 m!1344463))

(assert (=> b!1456283 m!1344437))

(declare-fun m!1344465 () Bool)

(assert (=> b!1456283 m!1344465))

(declare-fun m!1344467 () Bool)

(assert (=> b!1456268 m!1344467))

(assert (=> b!1456268 m!1344449))

(declare-fun m!1344469 () Bool)

(assert (=> b!1456268 m!1344469))

(declare-fun m!1344471 () Bool)

(assert (=> b!1456268 m!1344471))

(declare-fun m!1344473 () Bool)

(assert (=> b!1456268 m!1344473))

(assert (=> b!1456268 m!1344437))

(declare-fun m!1344475 () Bool)

(assert (=> b!1456282 m!1344475))

(assert (=> b!1456271 m!1344437))

(assert (=> b!1456271 m!1344437))

(declare-fun m!1344477 () Bool)

(assert (=> b!1456271 m!1344477))

(assert (=> b!1456276 m!1344437))

(assert (=> b!1456276 m!1344437))

(declare-fun m!1344479 () Bool)

(assert (=> b!1456276 m!1344479))

(declare-fun m!1344481 () Bool)

(assert (=> b!1456269 m!1344481))

(assert (=> b!1456269 m!1344481))

(declare-fun m!1344483 () Bool)

(assert (=> b!1456269 m!1344483))

(assert (=> b!1456264 m!1344449))

(declare-fun m!1344485 () Bool)

(assert (=> b!1456264 m!1344485))

(assert (=> b!1456264 m!1344469))

(assert (=> b!1456264 m!1344471))

(assert (=> b!1456264 m!1344437))

(declare-fun m!1344487 () Bool)

(assert (=> b!1456266 m!1344487))

(assert (=> b!1456266 m!1344441))

(assert (=> b!1456266 m!1344443))

(declare-fun m!1344489 () Bool)

(assert (=> b!1456275 m!1344489))

(check-sat (not b!1456270) (not b!1456283) (not b!1456272) (not b!1456273) (not b!1456282) (not b!1456271) (not b!1456275) (not b!1456268) (not b!1456281) (not start!125124) (not b!1456284) (not b!1456276) (not b!1456269) (not b!1456285) (not b!1456266) (not b!1456279))
(check-sat)
