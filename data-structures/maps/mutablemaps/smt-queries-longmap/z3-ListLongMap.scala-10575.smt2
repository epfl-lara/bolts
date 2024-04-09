; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124632 () Bool)

(assert start!124632)

(declare-fun b!1442352 () Bool)

(declare-fun res!974687 () Bool)

(declare-fun e!812963 () Bool)

(assert (=> b!1442352 (=> (not res!974687) (not e!812963))))

(declare-datatypes ((array!97997 0))(
  ( (array!97998 (arr!47282 (Array (_ BitVec 32) (_ BitVec 64))) (size!47833 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97997)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97997 (_ BitVec 32)) Bool)

(assert (=> b!1442352 (= res!974687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!974690 () Bool)

(assert (=> start!124632 (=> (not res!974690) (not e!812963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124632 (= res!974690 (validMask!0 mask!2687))))

(assert (=> start!124632 e!812963))

(assert (=> start!124632 true))

(declare-fun array_inv!36227 (array!97997) Bool)

(assert (=> start!124632 (array_inv!36227 a!2862)))

(declare-fun b!1442353 () Bool)

(declare-fun e!812960 () Bool)

(assert (=> b!1442353 (= e!812960 (not true))))

(declare-fun e!812965 () Bool)

(assert (=> b!1442353 e!812965))

(declare-fun res!974691 () Bool)

(assert (=> b!1442353 (=> (not res!974691) (not e!812965))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1442353 (= res!974691 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48558 0))(
  ( (Unit!48559) )
))
(declare-fun lt!633499 () Unit!48558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48558)

(assert (=> b!1442353 (= lt!633499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442354 () Bool)

(declare-fun res!974692 () Bool)

(assert (=> b!1442354 (=> (not res!974692) (not e!812963))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442354 (= res!974692 (and (= (size!47833 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47833 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47833 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442355 () Bool)

(declare-fun e!812964 () Bool)

(assert (=> b!1442355 (= e!812963 e!812964)))

(declare-fun res!974688 () Bool)

(assert (=> b!1442355 (=> (not res!974688) (not e!812964))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442355 (= res!974688 (= (select (store (arr!47282 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633498 () array!97997)

(assert (=> b!1442355 (= lt!633498 (array!97998 (store (arr!47282 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47833 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633501 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!812966 () Bool)

(declare-fun b!1442356 () Bool)

(declare-datatypes ((SeekEntryResult!11557 0))(
  ( (MissingZero!11557 (index!48619 (_ BitVec 32))) (Found!11557 (index!48620 (_ BitVec 32))) (Intermediate!11557 (undefined!12369 Bool) (index!48621 (_ BitVec 32)) (x!130329 (_ BitVec 32))) (Undefined!11557) (MissingVacant!11557 (index!48622 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97997 (_ BitVec 32)) SeekEntryResult!11557)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97997 (_ BitVec 32)) SeekEntryResult!11557)

(assert (=> b!1442356 (= e!812966 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633501 lt!633498 mask!2687) (seekEntryOrOpen!0 lt!633501 lt!633498 mask!2687)))))

(declare-fun b!1442357 () Bool)

(declare-fun res!974684 () Bool)

(assert (=> b!1442357 (=> (not res!974684) (not e!812960))))

(assert (=> b!1442357 (= res!974684 e!812966)))

(declare-fun c!133349 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442357 (= c!133349 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442358 () Bool)

(declare-fun res!974685 () Bool)

(assert (=> b!1442358 (=> (not res!974685) (not e!812963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442358 (= res!974685 (validKeyInArray!0 (select (arr!47282 a!2862) i!1006)))))

(declare-fun b!1442359 () Bool)

(declare-fun res!974693 () Bool)

(assert (=> b!1442359 (=> (not res!974693) (not e!812963))))

(declare-datatypes ((List!33963 0))(
  ( (Nil!33960) (Cons!33959 (h!35309 (_ BitVec 64)) (t!48664 List!33963)) )
))
(declare-fun arrayNoDuplicates!0 (array!97997 (_ BitVec 32) List!33963) Bool)

(assert (=> b!1442359 (= res!974693 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33960))))

(declare-fun b!1442360 () Bool)

(declare-fun lt!633502 () SeekEntryResult!11557)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97997 (_ BitVec 32)) SeekEntryResult!11557)

(assert (=> b!1442360 (= e!812966 (= lt!633502 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633501 lt!633498 mask!2687)))))

(declare-fun b!1442361 () Bool)

(declare-fun res!974680 () Bool)

(assert (=> b!1442361 (=> (not res!974680) (not e!812963))))

(assert (=> b!1442361 (= res!974680 (validKeyInArray!0 (select (arr!47282 a!2862) j!93)))))

(declare-fun b!1442362 () Bool)

(declare-fun e!812961 () Bool)

(assert (=> b!1442362 (= e!812961 e!812960)))

(declare-fun res!974689 () Bool)

(assert (=> b!1442362 (=> (not res!974689) (not e!812960))))

(assert (=> b!1442362 (= res!974689 (= lt!633502 (Intermediate!11557 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442362 (= lt!633502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633501 mask!2687) lt!633501 lt!633498 mask!2687))))

(assert (=> b!1442362 (= lt!633501 (select (store (arr!47282 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442363 () Bool)

(declare-fun res!974682 () Bool)

(assert (=> b!1442363 (=> (not res!974682) (not e!812960))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442363 (= res!974682 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442364 () Bool)

(declare-fun res!974683 () Bool)

(assert (=> b!1442364 (=> (not res!974683) (not e!812961))))

(declare-fun lt!633500 () SeekEntryResult!11557)

(assert (=> b!1442364 (= res!974683 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47282 a!2862) j!93) a!2862 mask!2687) lt!633500))))

(declare-fun b!1442365 () Bool)

(declare-fun res!974694 () Bool)

(assert (=> b!1442365 (=> (not res!974694) (not e!812965))))

(assert (=> b!1442365 (= res!974694 (= (seekEntryOrOpen!0 (select (arr!47282 a!2862) j!93) a!2862 mask!2687) (Found!11557 j!93)))))

(declare-fun b!1442366 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1442366 (= e!812965 (or (= (select (arr!47282 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47282 a!2862) intermediateBeforeIndex!19) (select (arr!47282 a!2862) j!93))))))

(declare-fun b!1442367 () Bool)

(declare-fun res!974686 () Bool)

(assert (=> b!1442367 (=> (not res!974686) (not e!812963))))

(assert (=> b!1442367 (= res!974686 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47833 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47833 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47833 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442368 () Bool)

(assert (=> b!1442368 (= e!812964 e!812961)))

(declare-fun res!974681 () Bool)

(assert (=> b!1442368 (=> (not res!974681) (not e!812961))))

(assert (=> b!1442368 (= res!974681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47282 a!2862) j!93) mask!2687) (select (arr!47282 a!2862) j!93) a!2862 mask!2687) lt!633500))))

(assert (=> b!1442368 (= lt!633500 (Intermediate!11557 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124632 res!974690) b!1442354))

(assert (= (and b!1442354 res!974692) b!1442358))

(assert (= (and b!1442358 res!974685) b!1442361))

(assert (= (and b!1442361 res!974680) b!1442352))

(assert (= (and b!1442352 res!974687) b!1442359))

(assert (= (and b!1442359 res!974693) b!1442367))

(assert (= (and b!1442367 res!974686) b!1442355))

(assert (= (and b!1442355 res!974688) b!1442368))

(assert (= (and b!1442368 res!974681) b!1442364))

(assert (= (and b!1442364 res!974683) b!1442362))

(assert (= (and b!1442362 res!974689) b!1442357))

(assert (= (and b!1442357 c!133349) b!1442360))

(assert (= (and b!1442357 (not c!133349)) b!1442356))

(assert (= (and b!1442357 res!974684) b!1442363))

(assert (= (and b!1442363 res!974682) b!1442353))

(assert (= (and b!1442353 res!974691) b!1442365))

(assert (= (and b!1442365 res!974694) b!1442366))

(declare-fun m!1331563 () Bool)

(assert (=> b!1442356 m!1331563))

(declare-fun m!1331565 () Bool)

(assert (=> b!1442356 m!1331565))

(declare-fun m!1331567 () Bool)

(assert (=> b!1442365 m!1331567))

(assert (=> b!1442365 m!1331567))

(declare-fun m!1331569 () Bool)

(assert (=> b!1442365 m!1331569))

(declare-fun m!1331571 () Bool)

(assert (=> start!124632 m!1331571))

(declare-fun m!1331573 () Bool)

(assert (=> start!124632 m!1331573))

(declare-fun m!1331575 () Bool)

(assert (=> b!1442362 m!1331575))

(assert (=> b!1442362 m!1331575))

(declare-fun m!1331577 () Bool)

(assert (=> b!1442362 m!1331577))

(declare-fun m!1331579 () Bool)

(assert (=> b!1442362 m!1331579))

(declare-fun m!1331581 () Bool)

(assert (=> b!1442362 m!1331581))

(declare-fun m!1331583 () Bool)

(assert (=> b!1442366 m!1331583))

(assert (=> b!1442366 m!1331567))

(declare-fun m!1331585 () Bool)

(assert (=> b!1442352 m!1331585))

(assert (=> b!1442364 m!1331567))

(assert (=> b!1442364 m!1331567))

(declare-fun m!1331587 () Bool)

(assert (=> b!1442364 m!1331587))

(declare-fun m!1331589 () Bool)

(assert (=> b!1442359 m!1331589))

(declare-fun m!1331591 () Bool)

(assert (=> b!1442360 m!1331591))

(declare-fun m!1331593 () Bool)

(assert (=> b!1442353 m!1331593))

(declare-fun m!1331595 () Bool)

(assert (=> b!1442353 m!1331595))

(assert (=> b!1442355 m!1331579))

(declare-fun m!1331597 () Bool)

(assert (=> b!1442355 m!1331597))

(assert (=> b!1442361 m!1331567))

(assert (=> b!1442361 m!1331567))

(declare-fun m!1331599 () Bool)

(assert (=> b!1442361 m!1331599))

(assert (=> b!1442368 m!1331567))

(assert (=> b!1442368 m!1331567))

(declare-fun m!1331601 () Bool)

(assert (=> b!1442368 m!1331601))

(assert (=> b!1442368 m!1331601))

(assert (=> b!1442368 m!1331567))

(declare-fun m!1331603 () Bool)

(assert (=> b!1442368 m!1331603))

(declare-fun m!1331605 () Bool)

(assert (=> b!1442358 m!1331605))

(assert (=> b!1442358 m!1331605))

(declare-fun m!1331607 () Bool)

(assert (=> b!1442358 m!1331607))

(check-sat (not b!1442362) (not start!124632) (not b!1442365) (not b!1442364) (not b!1442356) (not b!1442352) (not b!1442368) (not b!1442361) (not b!1442353) (not b!1442359) (not b!1442360) (not b!1442358))
