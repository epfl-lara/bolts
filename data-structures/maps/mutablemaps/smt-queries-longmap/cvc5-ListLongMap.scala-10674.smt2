; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125224 () Bool)

(assert start!125224)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98589 0))(
  ( (array!98590 (arr!47578 (Array (_ BitVec 32) (_ BitVec 64))) (size!48129 (_ BitVec 32))) )
))
(declare-fun lt!639467 () array!98589)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1459564 () Bool)

(declare-fun e!820834 () Bool)

(declare-datatypes ((SeekEntryResult!11853 0))(
  ( (MissingZero!11853 (index!49803 (_ BitVec 32))) (Found!11853 (index!49804 (_ BitVec 32))) (Intermediate!11853 (undefined!12665 Bool) (index!49805 (_ BitVec 32)) (x!131417 (_ BitVec 32))) (Undefined!11853) (MissingVacant!11853 (index!49806 (_ BitVec 32))) )
))
(declare-fun lt!639472 () SeekEntryResult!11853)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639475 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98589 (_ BitVec 32)) SeekEntryResult!11853)

(assert (=> b!1459564 (= e!820834 (= lt!639472 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639475 lt!639467 mask!2687)))))

(declare-fun b!1459565 () Bool)

(declare-fun e!820830 () Bool)

(declare-fun e!820828 () Bool)

(assert (=> b!1459565 (= e!820830 (not e!820828))))

(declare-fun res!989575 () Bool)

(assert (=> b!1459565 (=> res!989575 e!820828)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98589)

(assert (=> b!1459565 (= res!989575 (or (and (= (select (arr!47578 a!2862) index!646) (select (store (arr!47578 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47578 a!2862) index!646) (select (arr!47578 a!2862) j!93))) (= (select (arr!47578 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!639473 () SeekEntryResult!11853)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459565 (and (= lt!639473 (Found!11853 j!93)) (or (= (select (arr!47578 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47578 a!2862) intermediateBeforeIndex!19) (select (arr!47578 a!2862) j!93))) (let ((bdg!53529 (select (store (arr!47578 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47578 a!2862) index!646) bdg!53529) (= (select (arr!47578 a!2862) index!646) (select (arr!47578 a!2862) j!93))) (= (select (arr!47578 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53529 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98589 (_ BitVec 32)) SeekEntryResult!11853)

(assert (=> b!1459565 (= lt!639473 (seekEntryOrOpen!0 (select (arr!47578 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98589 (_ BitVec 32)) Bool)

(assert (=> b!1459565 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49150 0))(
  ( (Unit!49151) )
))
(declare-fun lt!639471 () Unit!49150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49150)

(assert (=> b!1459565 (= lt!639471 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459566 () Bool)

(declare-fun res!989588 () Bool)

(assert (=> b!1459566 (=> (not res!989588) (not e!820830))))

(assert (=> b!1459566 (= res!989588 e!820834)))

(declare-fun c!134509 () Bool)

(assert (=> b!1459566 (= c!134509 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!820833 () Bool)

(declare-fun b!1459567 () Bool)

(declare-fun lt!639474 () SeekEntryResult!11853)

(declare-fun lt!639468 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98589 (_ BitVec 32)) SeekEntryResult!11853)

(assert (=> b!1459567 (= e!820833 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639468 intermediateAfterIndex!19 lt!639475 lt!639467 mask!2687) lt!639474)))))

(declare-fun b!1459568 () Bool)

(declare-fun e!820831 () Bool)

(assert (=> b!1459568 (= e!820828 e!820831)))

(declare-fun res!989587 () Bool)

(assert (=> b!1459568 (=> res!989587 e!820831)))

(assert (=> b!1459568 (= res!989587 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639468 #b00000000000000000000000000000000) (bvsge lt!639468 (size!48129 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459568 (= lt!639468 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1459568 (= lt!639474 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639475 lt!639467 mask!2687))))

(assert (=> b!1459568 (= lt!639474 (seekEntryOrOpen!0 lt!639475 lt!639467 mask!2687))))

(declare-fun b!1459569 () Bool)

(declare-fun res!989580 () Bool)

(declare-fun e!820829 () Bool)

(assert (=> b!1459569 (=> (not res!989580) (not e!820829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459569 (= res!989580 (validKeyInArray!0 (select (arr!47578 a!2862) j!93)))))

(declare-fun b!1459570 () Bool)

(declare-fun res!989574 () Bool)

(assert (=> b!1459570 (=> (not res!989574) (not e!820829))))

(assert (=> b!1459570 (= res!989574 (validKeyInArray!0 (select (arr!47578 a!2862) i!1006)))))

(declare-fun res!989576 () Bool)

(assert (=> start!125224 (=> (not res!989576) (not e!820829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125224 (= res!989576 (validMask!0 mask!2687))))

(assert (=> start!125224 e!820829))

(assert (=> start!125224 true))

(declare-fun array_inv!36523 (array!98589) Bool)

(assert (=> start!125224 (array_inv!36523 a!2862)))

(declare-fun b!1459571 () Bool)

(declare-fun e!820835 () Bool)

(declare-fun e!820832 () Bool)

(assert (=> b!1459571 (= e!820835 e!820832)))

(declare-fun res!989584 () Bool)

(assert (=> b!1459571 (=> (not res!989584) (not e!820832))))

(declare-fun lt!639470 () SeekEntryResult!11853)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459571 (= res!989584 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47578 a!2862) j!93) mask!2687) (select (arr!47578 a!2862) j!93) a!2862 mask!2687) lt!639470))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459571 (= lt!639470 (Intermediate!11853 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459572 () Bool)

(declare-fun res!989583 () Bool)

(assert (=> b!1459572 (=> (not res!989583) (not e!820830))))

(assert (=> b!1459572 (= res!989583 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459573 () Bool)

(declare-fun res!989578 () Bool)

(assert (=> b!1459573 (=> (not res!989578) (not e!820829))))

(assert (=> b!1459573 (= res!989578 (and (= (size!48129 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48129 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48129 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459574 () Bool)

(declare-fun res!989586 () Bool)

(assert (=> b!1459574 (=> res!989586 e!820831)))

(assert (=> b!1459574 (= res!989586 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459575 () Bool)

(assert (=> b!1459575 (= e!820829 e!820835)))

(declare-fun res!989585 () Bool)

(assert (=> b!1459575 (=> (not res!989585) (not e!820835))))

(assert (=> b!1459575 (= res!989585 (= (select (store (arr!47578 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459575 (= lt!639467 (array!98590 (store (arr!47578 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48129 a!2862)))))

(declare-fun b!1459576 () Bool)

(declare-fun res!989572 () Bool)

(assert (=> b!1459576 (=> res!989572 e!820831)))

(assert (=> b!1459576 (= res!989572 e!820833)))

(declare-fun c!134510 () Bool)

(assert (=> b!1459576 (= c!134510 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459577 () Bool)

(declare-fun res!989579 () Bool)

(assert (=> b!1459577 (=> (not res!989579) (not e!820832))))

(assert (=> b!1459577 (= res!989579 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47578 a!2862) j!93) a!2862 mask!2687) lt!639470))))

(declare-fun b!1459578 () Bool)

(assert (=> b!1459578 (= e!820832 e!820830)))

(declare-fun res!989581 () Bool)

(assert (=> b!1459578 (=> (not res!989581) (not e!820830))))

(assert (=> b!1459578 (= res!989581 (= lt!639472 (Intermediate!11853 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1459578 (= lt!639472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639475 mask!2687) lt!639475 lt!639467 mask!2687))))

(assert (=> b!1459578 (= lt!639475 (select (store (arr!47578 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459579 () Bool)

(assert (=> b!1459579 (= e!820833 (not (= lt!639472 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639468 lt!639475 lt!639467 mask!2687))))))

(declare-fun b!1459580 () Bool)

(declare-fun res!989573 () Bool)

(assert (=> b!1459580 (=> (not res!989573) (not e!820829))))

(assert (=> b!1459580 (= res!989573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459581 () Bool)

(declare-fun res!989589 () Bool)

(assert (=> b!1459581 (=> res!989589 e!820831)))

(assert (=> b!1459581 (= res!989589 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639468 (select (arr!47578 a!2862) j!93) a!2862 mask!2687) lt!639470)))))

(declare-fun b!1459582 () Bool)

(declare-fun res!989577 () Bool)

(assert (=> b!1459582 (=> (not res!989577) (not e!820829))))

(assert (=> b!1459582 (= res!989577 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48129 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48129 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48129 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459583 () Bool)

(assert (=> b!1459583 (= e!820831 (bvsge mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1459583 (= lt!639473 lt!639474)))

(declare-fun lt!639469 () Unit!49150)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49150)

(assert (=> b!1459583 (= lt!639469 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639468 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459584 () Bool)

(declare-fun res!989582 () Bool)

(assert (=> b!1459584 (=> (not res!989582) (not e!820829))))

(declare-datatypes ((List!34259 0))(
  ( (Nil!34256) (Cons!34255 (h!35605 (_ BitVec 64)) (t!48960 List!34259)) )
))
(declare-fun arrayNoDuplicates!0 (array!98589 (_ BitVec 32) List!34259) Bool)

(assert (=> b!1459584 (= res!989582 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34256))))

(declare-fun b!1459585 () Bool)

(assert (=> b!1459585 (= e!820834 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639475 lt!639467 mask!2687) (seekEntryOrOpen!0 lt!639475 lt!639467 mask!2687)))))

(assert (= (and start!125224 res!989576) b!1459573))

(assert (= (and b!1459573 res!989578) b!1459570))

(assert (= (and b!1459570 res!989574) b!1459569))

(assert (= (and b!1459569 res!989580) b!1459580))

(assert (= (and b!1459580 res!989573) b!1459584))

(assert (= (and b!1459584 res!989582) b!1459582))

(assert (= (and b!1459582 res!989577) b!1459575))

(assert (= (and b!1459575 res!989585) b!1459571))

(assert (= (and b!1459571 res!989584) b!1459577))

(assert (= (and b!1459577 res!989579) b!1459578))

(assert (= (and b!1459578 res!989581) b!1459566))

(assert (= (and b!1459566 c!134509) b!1459564))

(assert (= (and b!1459566 (not c!134509)) b!1459585))

(assert (= (and b!1459566 res!989588) b!1459572))

(assert (= (and b!1459572 res!989583) b!1459565))

(assert (= (and b!1459565 (not res!989575)) b!1459568))

(assert (= (and b!1459568 (not res!989587)) b!1459581))

(assert (= (and b!1459581 (not res!989589)) b!1459576))

(assert (= (and b!1459576 c!134510) b!1459579))

(assert (= (and b!1459576 (not c!134510)) b!1459567))

(assert (= (and b!1459576 (not res!989572)) b!1459574))

(assert (= (and b!1459574 (not res!989586)) b!1459583))

(declare-fun m!1347363 () Bool)

(assert (=> b!1459567 m!1347363))

(declare-fun m!1347365 () Bool)

(assert (=> b!1459565 m!1347365))

(declare-fun m!1347367 () Bool)

(assert (=> b!1459565 m!1347367))

(declare-fun m!1347369 () Bool)

(assert (=> b!1459565 m!1347369))

(declare-fun m!1347371 () Bool)

(assert (=> b!1459565 m!1347371))

(declare-fun m!1347373 () Bool)

(assert (=> b!1459565 m!1347373))

(declare-fun m!1347375 () Bool)

(assert (=> b!1459565 m!1347375))

(declare-fun m!1347377 () Bool)

(assert (=> b!1459565 m!1347377))

(declare-fun m!1347379 () Bool)

(assert (=> b!1459565 m!1347379))

(assert (=> b!1459565 m!1347375))

(declare-fun m!1347381 () Bool)

(assert (=> start!125224 m!1347381))

(declare-fun m!1347383 () Bool)

(assert (=> start!125224 m!1347383))

(declare-fun m!1347385 () Bool)

(assert (=> b!1459564 m!1347385))

(declare-fun m!1347387 () Bool)

(assert (=> b!1459585 m!1347387))

(declare-fun m!1347389 () Bool)

(assert (=> b!1459585 m!1347389))

(assert (=> b!1459569 m!1347375))

(assert (=> b!1459569 m!1347375))

(declare-fun m!1347391 () Bool)

(assert (=> b!1459569 m!1347391))

(declare-fun m!1347393 () Bool)

(assert (=> b!1459580 m!1347393))

(assert (=> b!1459581 m!1347375))

(assert (=> b!1459581 m!1347375))

(declare-fun m!1347395 () Bool)

(assert (=> b!1459581 m!1347395))

(declare-fun m!1347397 () Bool)

(assert (=> b!1459570 m!1347397))

(assert (=> b!1459570 m!1347397))

(declare-fun m!1347399 () Bool)

(assert (=> b!1459570 m!1347399))

(declare-fun m!1347401 () Bool)

(assert (=> b!1459583 m!1347401))

(declare-fun m!1347403 () Bool)

(assert (=> b!1459578 m!1347403))

(assert (=> b!1459578 m!1347403))

(declare-fun m!1347405 () Bool)

(assert (=> b!1459578 m!1347405))

(assert (=> b!1459578 m!1347367))

(declare-fun m!1347407 () Bool)

(assert (=> b!1459578 m!1347407))

(assert (=> b!1459571 m!1347375))

(assert (=> b!1459571 m!1347375))

(declare-fun m!1347409 () Bool)

(assert (=> b!1459571 m!1347409))

(assert (=> b!1459571 m!1347409))

(assert (=> b!1459571 m!1347375))

(declare-fun m!1347411 () Bool)

(assert (=> b!1459571 m!1347411))

(assert (=> b!1459575 m!1347367))

(declare-fun m!1347413 () Bool)

(assert (=> b!1459575 m!1347413))

(declare-fun m!1347415 () Bool)

(assert (=> b!1459584 m!1347415))

(declare-fun m!1347417 () Bool)

(assert (=> b!1459568 m!1347417))

(assert (=> b!1459568 m!1347387))

(assert (=> b!1459568 m!1347389))

(declare-fun m!1347419 () Bool)

(assert (=> b!1459579 m!1347419))

(assert (=> b!1459577 m!1347375))

(assert (=> b!1459577 m!1347375))

(declare-fun m!1347421 () Bool)

(assert (=> b!1459577 m!1347421))

(push 1)

