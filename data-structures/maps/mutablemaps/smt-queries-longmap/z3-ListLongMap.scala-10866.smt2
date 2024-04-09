; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127416 () Bool)

(assert start!127416)

(declare-fun b!1497298 () Bool)

(declare-fun e!838536 () Bool)

(declare-fun e!838532 () Bool)

(assert (=> b!1497298 (= e!838536 e!838532)))

(declare-fun res!1018560 () Bool)

(assert (=> b!1497298 (=> (not res!1018560) (not e!838532))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12418 0))(
  ( (MissingZero!12418 (index!52063 (_ BitVec 32))) (Found!12418 (index!52064 (_ BitVec 32))) (Intermediate!12418 (undefined!13230 Bool) (index!52065 (_ BitVec 32)) (x!133689 (_ BitVec 32))) (Undefined!12418) (MissingVacant!12418 (index!52066 (_ BitVec 32))) )
))
(declare-fun lt!652371 () SeekEntryResult!12418)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1497298 (= res!1018560 (= lt!652371 (Intermediate!12418 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!652366 () (_ BitVec 64))

(declare-datatypes ((array!99791 0))(
  ( (array!99792 (arr!48155 (Array (_ BitVec 32) (_ BitVec 64))) (size!48706 (_ BitVec 32))) )
))
(declare-fun lt!652368 () array!99791)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99791 (_ BitVec 32)) SeekEntryResult!12418)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497298 (= lt!652371 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652366 mask!2687) lt!652366 lt!652368 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99791)

(assert (=> b!1497298 (= lt!652366 (select (store (arr!48155 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1497299 () Bool)

(declare-fun res!1018553 () Bool)

(declare-fun e!838530 () Bool)

(assert (=> b!1497299 (=> (not res!1018553) (not e!838530))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1497299 (= res!1018553 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48706 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48706 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48706 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1497300 () Bool)

(declare-fun e!838531 () Bool)

(assert (=> b!1497300 (= e!838531 e!838536)))

(declare-fun res!1018562 () Bool)

(assert (=> b!1497300 (=> (not res!1018562) (not e!838536))))

(declare-fun lt!652367 () SeekEntryResult!12418)

(assert (=> b!1497300 (= res!1018562 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48155 a!2862) j!93) mask!2687) (select (arr!48155 a!2862) j!93) a!2862 mask!2687) lt!652367))))

(assert (=> b!1497300 (= lt!652367 (Intermediate!12418 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1497301 () Bool)

(declare-fun res!1018565 () Bool)

(declare-fun e!838535 () Bool)

(assert (=> b!1497301 (=> res!1018565 e!838535)))

(declare-fun lt!652370 () (_ BitVec 32))

(assert (=> b!1497301 (= res!1018565 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652370 (select (arr!48155 a!2862) j!93) a!2862 mask!2687) lt!652367)))))

(declare-fun b!1497302 () Bool)

(declare-fun e!838533 () Bool)

(assert (=> b!1497302 (= e!838533 e!838535)))

(declare-fun res!1018564 () Bool)

(assert (=> b!1497302 (=> res!1018564 e!838535)))

(assert (=> b!1497302 (= res!1018564 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652370 #b00000000000000000000000000000000) (bvsge lt!652370 (size!48706 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1497302 (= lt!652370 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1497303 () Bool)

(declare-fun res!1018558 () Bool)

(assert (=> b!1497303 (=> (not res!1018558) (not e!838530))))

(assert (=> b!1497303 (= res!1018558 (and (= (size!48706 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48706 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48706 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1497305 () Bool)

(declare-fun res!1018559 () Bool)

(assert (=> b!1497305 (=> (not res!1018559) (not e!838530))))

(declare-datatypes ((List!34836 0))(
  ( (Nil!34833) (Cons!34832 (h!36230 (_ BitVec 64)) (t!49537 List!34836)) )
))
(declare-fun arrayNoDuplicates!0 (array!99791 (_ BitVec 32) List!34836) Bool)

(assert (=> b!1497305 (= res!1018559 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34833))))

(declare-fun b!1497306 () Bool)

(declare-fun res!1018552 () Bool)

(assert (=> b!1497306 (=> res!1018552 e!838535)))

(assert (=> b!1497306 (= res!1018552 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1497307 () Bool)

(assert (=> b!1497307 (= e!838532 (not e!838533))))

(declare-fun res!1018563 () Bool)

(assert (=> b!1497307 (=> res!1018563 e!838533)))

(assert (=> b!1497307 (= res!1018563 (or (and (= (select (arr!48155 a!2862) index!646) (select (store (arr!48155 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48155 a!2862) index!646) (select (arr!48155 a!2862) j!93))) (= (select (arr!48155 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!652372 () SeekEntryResult!12418)

(assert (=> b!1497307 (and (= lt!652372 (Found!12418 j!93)) (or (= (select (arr!48155 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48155 a!2862) intermediateBeforeIndex!19) (select (arr!48155 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99791 (_ BitVec 32)) SeekEntryResult!12418)

(assert (=> b!1497307 (= lt!652372 (seekEntryOrOpen!0 (select (arr!48155 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99791 (_ BitVec 32)) Bool)

(assert (=> b!1497307 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50124 0))(
  ( (Unit!50125) )
))
(declare-fun lt!652365 () Unit!50124)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50124)

(assert (=> b!1497307 (= lt!652365 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1497308 () Bool)

(declare-fun e!838534 () Bool)

(assert (=> b!1497308 (= e!838534 (not (= lt!652371 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652370 lt!652366 lt!652368 mask!2687))))))

(declare-fun b!1497309 () Bool)

(declare-fun e!838537 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99791 (_ BitVec 32)) SeekEntryResult!12418)

(assert (=> b!1497309 (= e!838537 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652366 lt!652368 mask!2687) (seekEntryOrOpen!0 lt!652366 lt!652368 mask!2687)))))

(declare-fun b!1497310 () Bool)

(declare-fun res!1018555 () Bool)

(assert (=> b!1497310 (=> (not res!1018555) (not e!838530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497310 (= res!1018555 (validKeyInArray!0 (select (arr!48155 a!2862) i!1006)))))

(declare-fun b!1497311 () Bool)

(assert (=> b!1497311 (= e!838530 e!838531)))

(declare-fun res!1018561 () Bool)

(assert (=> b!1497311 (=> (not res!1018561) (not e!838531))))

(assert (=> b!1497311 (= res!1018561 (= (select (store (arr!48155 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1497311 (= lt!652368 (array!99792 (store (arr!48155 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48706 a!2862)))))

(declare-fun b!1497312 () Bool)

(assert (=> b!1497312 (= e!838537 (= lt!652371 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652366 lt!652368 mask!2687)))))

(declare-fun b!1497313 () Bool)

(assert (=> b!1497313 (= e!838534 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652370 intermediateAfterIndex!19 lt!652366 lt!652368 mask!2687) (seekEntryOrOpen!0 lt!652366 lt!652368 mask!2687))))))

(declare-fun b!1497304 () Bool)

(declare-fun res!1018557 () Bool)

(assert (=> b!1497304 (=> (not res!1018557) (not e!838536))))

(assert (=> b!1497304 (= res!1018557 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48155 a!2862) j!93) a!2862 mask!2687) lt!652367))))

(declare-fun res!1018568 () Bool)

(assert (=> start!127416 (=> (not res!1018568) (not e!838530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127416 (= res!1018568 (validMask!0 mask!2687))))

(assert (=> start!127416 e!838530))

(assert (=> start!127416 true))

(declare-fun array_inv!37100 (array!99791) Bool)

(assert (=> start!127416 (array_inv!37100 a!2862)))

(declare-fun b!1497314 () Bool)

(declare-fun res!1018569 () Bool)

(assert (=> b!1497314 (=> (not res!1018569) (not e!838532))))

(assert (=> b!1497314 (= res!1018569 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1497315 () Bool)

(declare-fun res!1018566 () Bool)

(assert (=> b!1497315 (=> (not res!1018566) (not e!838532))))

(assert (=> b!1497315 (= res!1018566 e!838537)))

(declare-fun c!138911 () Bool)

(assert (=> b!1497315 (= c!138911 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1497316 () Bool)

(declare-fun res!1018556 () Bool)

(assert (=> b!1497316 (=> (not res!1018556) (not e!838530))))

(assert (=> b!1497316 (= res!1018556 (validKeyInArray!0 (select (arr!48155 a!2862) j!93)))))

(declare-fun b!1497317 () Bool)

(assert (=> b!1497317 (= e!838535 true)))

(assert (=> b!1497317 (= lt!652372 (seekEntryOrOpen!0 lt!652366 lt!652368 mask!2687))))

(declare-fun lt!652369 () Unit!50124)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50124)

(assert (=> b!1497317 (= lt!652369 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652370 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1497318 () Bool)

(declare-fun res!1018554 () Bool)

(assert (=> b!1497318 (=> res!1018554 e!838535)))

(assert (=> b!1497318 (= res!1018554 e!838534)))

(declare-fun c!138910 () Bool)

(assert (=> b!1497318 (= c!138910 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1497319 () Bool)

(declare-fun res!1018567 () Bool)

(assert (=> b!1497319 (=> (not res!1018567) (not e!838530))))

(assert (=> b!1497319 (= res!1018567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!127416 res!1018568) b!1497303))

(assert (= (and b!1497303 res!1018558) b!1497310))

(assert (= (and b!1497310 res!1018555) b!1497316))

(assert (= (and b!1497316 res!1018556) b!1497319))

(assert (= (and b!1497319 res!1018567) b!1497305))

(assert (= (and b!1497305 res!1018559) b!1497299))

(assert (= (and b!1497299 res!1018553) b!1497311))

(assert (= (and b!1497311 res!1018561) b!1497300))

(assert (= (and b!1497300 res!1018562) b!1497304))

(assert (= (and b!1497304 res!1018557) b!1497298))

(assert (= (and b!1497298 res!1018560) b!1497315))

(assert (= (and b!1497315 c!138911) b!1497312))

(assert (= (and b!1497315 (not c!138911)) b!1497309))

(assert (= (and b!1497315 res!1018566) b!1497314))

(assert (= (and b!1497314 res!1018569) b!1497307))

(assert (= (and b!1497307 (not res!1018563)) b!1497302))

(assert (= (and b!1497302 (not res!1018564)) b!1497301))

(assert (= (and b!1497301 (not res!1018565)) b!1497318))

(assert (= (and b!1497318 c!138910) b!1497308))

(assert (= (and b!1497318 (not c!138910)) b!1497313))

(assert (= (and b!1497318 (not res!1018554)) b!1497306))

(assert (= (and b!1497306 (not res!1018552)) b!1497317))

(declare-fun m!1380441 () Bool)

(assert (=> b!1497319 m!1380441))

(declare-fun m!1380443 () Bool)

(assert (=> b!1497308 m!1380443))

(declare-fun m!1380445 () Bool)

(assert (=> start!127416 m!1380445))

(declare-fun m!1380447 () Bool)

(assert (=> start!127416 m!1380447))

(declare-fun m!1380449 () Bool)

(assert (=> b!1497311 m!1380449))

(declare-fun m!1380451 () Bool)

(assert (=> b!1497311 m!1380451))

(declare-fun m!1380453 () Bool)

(assert (=> b!1497302 m!1380453))

(declare-fun m!1380455 () Bool)

(assert (=> b!1497307 m!1380455))

(assert (=> b!1497307 m!1380449))

(declare-fun m!1380457 () Bool)

(assert (=> b!1497307 m!1380457))

(declare-fun m!1380459 () Bool)

(assert (=> b!1497307 m!1380459))

(declare-fun m!1380461 () Bool)

(assert (=> b!1497307 m!1380461))

(declare-fun m!1380463 () Bool)

(assert (=> b!1497307 m!1380463))

(declare-fun m!1380465 () Bool)

(assert (=> b!1497307 m!1380465))

(declare-fun m!1380467 () Bool)

(assert (=> b!1497307 m!1380467))

(assert (=> b!1497307 m!1380463))

(declare-fun m!1380469 () Bool)

(assert (=> b!1497312 m!1380469))

(declare-fun m!1380471 () Bool)

(assert (=> b!1497310 m!1380471))

(assert (=> b!1497310 m!1380471))

(declare-fun m!1380473 () Bool)

(assert (=> b!1497310 m!1380473))

(declare-fun m!1380475 () Bool)

(assert (=> b!1497313 m!1380475))

(declare-fun m!1380477 () Bool)

(assert (=> b!1497313 m!1380477))

(assert (=> b!1497317 m!1380477))

(declare-fun m!1380479 () Bool)

(assert (=> b!1497317 m!1380479))

(assert (=> b!1497316 m!1380463))

(assert (=> b!1497316 m!1380463))

(declare-fun m!1380481 () Bool)

(assert (=> b!1497316 m!1380481))

(declare-fun m!1380483 () Bool)

(assert (=> b!1497305 m!1380483))

(assert (=> b!1497300 m!1380463))

(assert (=> b!1497300 m!1380463))

(declare-fun m!1380485 () Bool)

(assert (=> b!1497300 m!1380485))

(assert (=> b!1497300 m!1380485))

(assert (=> b!1497300 m!1380463))

(declare-fun m!1380487 () Bool)

(assert (=> b!1497300 m!1380487))

(assert (=> b!1497304 m!1380463))

(assert (=> b!1497304 m!1380463))

(declare-fun m!1380489 () Bool)

(assert (=> b!1497304 m!1380489))

(declare-fun m!1380491 () Bool)

(assert (=> b!1497309 m!1380491))

(assert (=> b!1497309 m!1380477))

(declare-fun m!1380493 () Bool)

(assert (=> b!1497298 m!1380493))

(assert (=> b!1497298 m!1380493))

(declare-fun m!1380495 () Bool)

(assert (=> b!1497298 m!1380495))

(assert (=> b!1497298 m!1380449))

(declare-fun m!1380497 () Bool)

(assert (=> b!1497298 m!1380497))

(assert (=> b!1497301 m!1380463))

(assert (=> b!1497301 m!1380463))

(declare-fun m!1380499 () Bool)

(assert (=> b!1497301 m!1380499))

(check-sat (not b!1497300) (not b!1497309) (not b!1497316) (not start!127416) (not b!1497313) (not b!1497308) (not b!1497305) (not b!1497312) (not b!1497310) (not b!1497298) (not b!1497317) (not b!1497319) (not b!1497304) (not b!1497301) (not b!1497307) (not b!1497302))
(check-sat)
