; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126426 () Bool)

(assert start!126426)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99362 0))(
  ( (array!99363 (arr!47954 (Array (_ BitVec 32) (_ BitVec 64))) (size!48505 (_ BitVec 32))) )
))
(declare-fun lt!646770 () array!99362)

(declare-fun e!830935 () Bool)

(declare-fun lt!646771 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1481532 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12217 0))(
  ( (MissingZero!12217 (index!51259 (_ BitVec 32))) (Found!12217 (index!51260 (_ BitVec 32))) (Intermediate!12217 (undefined!13029 Bool) (index!51261 (_ BitVec 32)) (x!132847 (_ BitVec 32))) (Undefined!12217) (MissingVacant!12217 (index!51262 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99362 (_ BitVec 32)) SeekEntryResult!12217)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99362 (_ BitVec 32)) SeekEntryResult!12217)

(assert (=> b!1481532 (= e!830935 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646771 lt!646770 mask!2687) (seekEntryOrOpen!0 lt!646771 lt!646770 mask!2687)))))

(declare-fun b!1481533 () Bool)

(declare-fun res!1006959 () Bool)

(declare-fun e!830932 () Bool)

(assert (=> b!1481533 (=> (not res!1006959) (not e!830932))))

(declare-fun a!2862 () array!99362)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481533 (= res!1006959 (validKeyInArray!0 (select (arr!47954 a!2862) j!93)))))

(declare-fun b!1481534 () Bool)

(declare-fun res!1006951 () Bool)

(declare-fun e!830930 () Bool)

(assert (=> b!1481534 (=> (not res!1006951) (not e!830930))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481534 (= res!1006951 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481535 () Bool)

(assert (=> b!1481535 (= e!830930 (not true))))

(declare-fun e!830933 () Bool)

(assert (=> b!1481535 e!830933))

(declare-fun res!1006955 () Bool)

(assert (=> b!1481535 (=> (not res!1006955) (not e!830933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99362 (_ BitVec 32)) Bool)

(assert (=> b!1481535 (= res!1006955 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49722 0))(
  ( (Unit!49723) )
))
(declare-fun lt!646767 () Unit!49722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99362 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49722)

(assert (=> b!1481535 (= lt!646767 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481536 () Bool)

(declare-fun res!1006945 () Bool)

(assert (=> b!1481536 (=> (not res!1006945) (not e!830932))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1481536 (= res!1006945 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48505 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48505 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48505 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481537 () Bool)

(declare-fun res!1006956 () Bool)

(assert (=> b!1481537 (=> (not res!1006956) (not e!830932))))

(assert (=> b!1481537 (= res!1006956 (and (= (size!48505 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48505 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48505 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481538 () Bool)

(declare-fun res!1006950 () Bool)

(assert (=> b!1481538 (=> (not res!1006950) (not e!830932))))

(assert (=> b!1481538 (= res!1006950 (validKeyInArray!0 (select (arr!47954 a!2862) i!1006)))))

(declare-fun b!1481539 () Bool)

(declare-fun res!1006957 () Bool)

(assert (=> b!1481539 (=> (not res!1006957) (not e!830932))))

(declare-datatypes ((List!34635 0))(
  ( (Nil!34632) (Cons!34631 (h!36002 (_ BitVec 64)) (t!49336 List!34635)) )
))
(declare-fun arrayNoDuplicates!0 (array!99362 (_ BitVec 32) List!34635) Bool)

(assert (=> b!1481539 (= res!1006957 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34632))))

(declare-fun b!1481540 () Bool)

(declare-fun e!830936 () Bool)

(assert (=> b!1481540 (= e!830932 e!830936)))

(declare-fun res!1006948 () Bool)

(assert (=> b!1481540 (=> (not res!1006948) (not e!830936))))

(assert (=> b!1481540 (= res!1006948 (= (select (store (arr!47954 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481540 (= lt!646770 (array!99363 (store (arr!47954 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48505 a!2862)))))

(declare-fun b!1481541 () Bool)

(declare-fun e!830934 () Bool)

(assert (=> b!1481541 (= e!830934 e!830930)))

(declare-fun res!1006958 () Bool)

(assert (=> b!1481541 (=> (not res!1006958) (not e!830930))))

(declare-fun lt!646769 () SeekEntryResult!12217)

(assert (=> b!1481541 (= res!1006958 (= lt!646769 (Intermediate!12217 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99362 (_ BitVec 32)) SeekEntryResult!12217)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481541 (= lt!646769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646771 mask!2687) lt!646771 lt!646770 mask!2687))))

(assert (=> b!1481541 (= lt!646771 (select (store (arr!47954 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1006947 () Bool)

(assert (=> start!126426 (=> (not res!1006947) (not e!830932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126426 (= res!1006947 (validMask!0 mask!2687))))

(assert (=> start!126426 e!830932))

(assert (=> start!126426 true))

(declare-fun array_inv!36899 (array!99362) Bool)

(assert (=> start!126426 (array_inv!36899 a!2862)))

(declare-fun b!1481542 () Bool)

(assert (=> b!1481542 (= e!830936 e!830934)))

(declare-fun res!1006949 () Bool)

(assert (=> b!1481542 (=> (not res!1006949) (not e!830934))))

(declare-fun lt!646768 () SeekEntryResult!12217)

(assert (=> b!1481542 (= res!1006949 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47954 a!2862) j!93) mask!2687) (select (arr!47954 a!2862) j!93) a!2862 mask!2687) lt!646768))))

(assert (=> b!1481542 (= lt!646768 (Intermediate!12217 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481543 () Bool)

(declare-fun res!1006952 () Bool)

(assert (=> b!1481543 (=> (not res!1006952) (not e!830933))))

(assert (=> b!1481543 (= res!1006952 (= (seekEntryOrOpen!0 (select (arr!47954 a!2862) j!93) a!2862 mask!2687) (Found!12217 j!93)))))

(declare-fun b!1481544 () Bool)

(declare-fun res!1006946 () Bool)

(assert (=> b!1481544 (=> (not res!1006946) (not e!830932))))

(assert (=> b!1481544 (= res!1006946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481545 () Bool)

(declare-fun res!1006953 () Bool)

(assert (=> b!1481545 (=> (not res!1006953) (not e!830930))))

(assert (=> b!1481545 (= res!1006953 e!830935)))

(declare-fun c!136817 () Bool)

(assert (=> b!1481545 (= c!136817 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481546 () Bool)

(declare-fun res!1006954 () Bool)

(assert (=> b!1481546 (=> (not res!1006954) (not e!830934))))

(assert (=> b!1481546 (= res!1006954 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47954 a!2862) j!93) a!2862 mask!2687) lt!646768))))

(declare-fun b!1481547 () Bool)

(assert (=> b!1481547 (= e!830935 (= lt!646769 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646771 lt!646770 mask!2687)))))

(declare-fun b!1481548 () Bool)

(assert (=> b!1481548 (= e!830933 (and (or (= (select (arr!47954 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47954 a!2862) intermediateBeforeIndex!19) (select (arr!47954 a!2862) j!93))) (or (and (= (select (arr!47954 a!2862) index!646) (select (store (arr!47954 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47954 a!2862) index!646) (select (arr!47954 a!2862) j!93))) (= (select (arr!47954 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47954 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!126426 res!1006947) b!1481537))

(assert (= (and b!1481537 res!1006956) b!1481538))

(assert (= (and b!1481538 res!1006950) b!1481533))

(assert (= (and b!1481533 res!1006959) b!1481544))

(assert (= (and b!1481544 res!1006946) b!1481539))

(assert (= (and b!1481539 res!1006957) b!1481536))

(assert (= (and b!1481536 res!1006945) b!1481540))

(assert (= (and b!1481540 res!1006948) b!1481542))

(assert (= (and b!1481542 res!1006949) b!1481546))

(assert (= (and b!1481546 res!1006954) b!1481541))

(assert (= (and b!1481541 res!1006958) b!1481545))

(assert (= (and b!1481545 c!136817) b!1481547))

(assert (= (and b!1481545 (not c!136817)) b!1481532))

(assert (= (and b!1481545 res!1006953) b!1481534))

(assert (= (and b!1481534 res!1006951) b!1481535))

(assert (= (and b!1481535 res!1006955) b!1481543))

(assert (= (and b!1481543 res!1006952) b!1481548))

(declare-fun m!1367327 () Bool)

(assert (=> b!1481533 m!1367327))

(assert (=> b!1481533 m!1367327))

(declare-fun m!1367329 () Bool)

(assert (=> b!1481533 m!1367329))

(assert (=> b!1481543 m!1367327))

(assert (=> b!1481543 m!1367327))

(declare-fun m!1367331 () Bool)

(assert (=> b!1481543 m!1367331))

(declare-fun m!1367333 () Bool)

(assert (=> b!1481539 m!1367333))

(declare-fun m!1367335 () Bool)

(assert (=> b!1481535 m!1367335))

(declare-fun m!1367337 () Bool)

(assert (=> b!1481535 m!1367337))

(declare-fun m!1367339 () Bool)

(assert (=> b!1481548 m!1367339))

(declare-fun m!1367341 () Bool)

(assert (=> b!1481548 m!1367341))

(declare-fun m!1367343 () Bool)

(assert (=> b!1481548 m!1367343))

(declare-fun m!1367345 () Bool)

(assert (=> b!1481548 m!1367345))

(assert (=> b!1481548 m!1367327))

(declare-fun m!1367347 () Bool)

(assert (=> b!1481544 m!1367347))

(declare-fun m!1367349 () Bool)

(assert (=> b!1481538 m!1367349))

(assert (=> b!1481538 m!1367349))

(declare-fun m!1367351 () Bool)

(assert (=> b!1481538 m!1367351))

(assert (=> b!1481546 m!1367327))

(assert (=> b!1481546 m!1367327))

(declare-fun m!1367353 () Bool)

(assert (=> b!1481546 m!1367353))

(declare-fun m!1367355 () Bool)

(assert (=> b!1481547 m!1367355))

(declare-fun m!1367357 () Bool)

(assert (=> b!1481541 m!1367357))

(assert (=> b!1481541 m!1367357))

(declare-fun m!1367359 () Bool)

(assert (=> b!1481541 m!1367359))

(assert (=> b!1481541 m!1367339))

(declare-fun m!1367361 () Bool)

(assert (=> b!1481541 m!1367361))

(declare-fun m!1367363 () Bool)

(assert (=> start!126426 m!1367363))

(declare-fun m!1367365 () Bool)

(assert (=> start!126426 m!1367365))

(assert (=> b!1481540 m!1367339))

(declare-fun m!1367367 () Bool)

(assert (=> b!1481540 m!1367367))

(declare-fun m!1367369 () Bool)

(assert (=> b!1481532 m!1367369))

(declare-fun m!1367371 () Bool)

(assert (=> b!1481532 m!1367371))

(assert (=> b!1481542 m!1367327))

(assert (=> b!1481542 m!1367327))

(declare-fun m!1367373 () Bool)

(assert (=> b!1481542 m!1367373))

(assert (=> b!1481542 m!1367373))

(assert (=> b!1481542 m!1367327))

(declare-fun m!1367375 () Bool)

(assert (=> b!1481542 m!1367375))

(check-sat (not b!1481538) (not b!1481542) (not start!126426) (not b!1481544) (not b!1481539) (not b!1481533) (not b!1481535) (not b!1481546) (not b!1481532) (not b!1481547) (not b!1481541) (not b!1481543))
(check-sat)
