; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124790 () Bool)

(assert start!124790)

(declare-fun b!1446460 () Bool)

(declare-fun res!978321 () Bool)

(declare-fun e!814699 () Bool)

(assert (=> b!1446460 (=> (not res!978321) (not e!814699))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98155 0))(
  ( (array!98156 (arr!47361 (Array (_ BitVec 32) (_ BitVec 64))) (size!47912 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98155)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446460 (= res!978321 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47912 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47912 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47912 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446461 () Bool)

(declare-fun res!978327 () Bool)

(declare-fun e!814701 () Bool)

(assert (=> b!1446461 (=> (not res!978327) (not e!814701))))

(declare-datatypes ((SeekEntryResult!11636 0))(
  ( (MissingZero!11636 (index!48935 (_ BitVec 32))) (Found!11636 (index!48936 (_ BitVec 32))) (Intermediate!11636 (undefined!12448 Bool) (index!48937 (_ BitVec 32)) (x!130616 (_ BitVec 32))) (Undefined!11636) (MissingVacant!11636 (index!48938 (_ BitVec 32))) )
))
(declare-fun lt!634774 () SeekEntryResult!11636)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98155 (_ BitVec 32)) SeekEntryResult!11636)

(assert (=> b!1446461 (= res!978327 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47361 a!2862) j!93) a!2862 mask!2687) lt!634774))))

(declare-fun b!1446462 () Bool)

(declare-fun res!978322 () Bool)

(assert (=> b!1446462 (=> (not res!978322) (not e!814699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446462 (= res!978322 (validKeyInArray!0 (select (arr!47361 a!2862) j!93)))))

(declare-fun b!1446464 () Bool)

(declare-fun e!814700 () Bool)

(assert (=> b!1446464 (= e!814700 e!814701)))

(declare-fun res!978325 () Bool)

(assert (=> b!1446464 (=> (not res!978325) (not e!814701))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446464 (= res!978325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47361 a!2862) j!93) mask!2687) (select (arr!47361 a!2862) j!93) a!2862 mask!2687) lt!634774))))

(assert (=> b!1446464 (= lt!634774 (Intermediate!11636 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446465 () Bool)

(declare-fun e!814706 () Bool)

(declare-fun e!814702 () Bool)

(assert (=> b!1446465 (= e!814706 (not e!814702))))

(declare-fun res!978329 () Bool)

(assert (=> b!1446465 (=> res!978329 e!814702)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1446465 (= res!978329 (or (and (= (select (arr!47361 a!2862) index!646) (select (store (arr!47361 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47361 a!2862) index!646) (select (arr!47361 a!2862) j!93))) (not (= (select (arr!47361 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47361 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814704 () Bool)

(assert (=> b!1446465 e!814704))

(declare-fun res!978320 () Bool)

(assert (=> b!1446465 (=> (not res!978320) (not e!814704))))

(declare-fun lt!634775 () SeekEntryResult!11636)

(assert (=> b!1446465 (= res!978320 (and (= lt!634775 (Found!11636 j!93)) (or (= (select (arr!47361 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47361 a!2862) intermediateBeforeIndex!19) (select (arr!47361 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98155 (_ BitVec 32)) SeekEntryResult!11636)

(assert (=> b!1446465 (= lt!634775 (seekEntryOrOpen!0 (select (arr!47361 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98155 (_ BitVec 32)) Bool)

(assert (=> b!1446465 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48716 0))(
  ( (Unit!48717) )
))
(declare-fun lt!634773 () Unit!48716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48716)

(assert (=> b!1446465 (= lt!634773 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!814698 () Bool)

(declare-fun b!1446466 () Bool)

(assert (=> b!1446466 (= e!814698 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446467 () Bool)

(declare-fun res!978318 () Bool)

(assert (=> b!1446467 (=> (not res!978318) (not e!814706))))

(assert (=> b!1446467 (= res!978318 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446468 () Bool)

(declare-fun res!978328 () Bool)

(assert (=> b!1446468 (=> (not res!978328) (not e!814706))))

(declare-fun e!814697 () Bool)

(assert (=> b!1446468 (= res!978328 e!814697)))

(declare-fun c!133586 () Bool)

(assert (=> b!1446468 (= c!133586 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446469 () Bool)

(declare-fun lt!634771 () (_ BitVec 64))

(declare-fun lt!634772 () SeekEntryResult!11636)

(declare-fun lt!634777 () array!98155)

(assert (=> b!1446469 (= e!814697 (= lt!634772 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634771 lt!634777 mask!2687)))))

(declare-fun b!1446470 () Bool)

(assert (=> b!1446470 (= e!814699 e!814700)))

(declare-fun res!978316 () Bool)

(assert (=> b!1446470 (=> (not res!978316) (not e!814700))))

(assert (=> b!1446470 (= res!978316 (= (select (store (arr!47361 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446470 (= lt!634777 (array!98156 (store (arr!47361 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47912 a!2862)))))

(declare-fun b!1446471 () Bool)

(declare-fun res!978326 () Bool)

(assert (=> b!1446471 (=> (not res!978326) (not e!814699))))

(assert (=> b!1446471 (= res!978326 (validKeyInArray!0 (select (arr!47361 a!2862) i!1006)))))

(declare-fun b!1446472 () Bool)

(declare-fun res!978324 () Bool)

(assert (=> b!1446472 (=> (not res!978324) (not e!814699))))

(declare-datatypes ((List!34042 0))(
  ( (Nil!34039) (Cons!34038 (h!35388 (_ BitVec 64)) (t!48743 List!34042)) )
))
(declare-fun arrayNoDuplicates!0 (array!98155 (_ BitVec 32) List!34042) Bool)

(assert (=> b!1446472 (= res!978324 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34039))))

(declare-fun b!1446473 () Bool)

(declare-fun e!814703 () Bool)

(assert (=> b!1446473 (= e!814704 e!814703)))

(declare-fun res!978317 () Bool)

(assert (=> b!1446473 (=> res!978317 e!814703)))

(assert (=> b!1446473 (= res!978317 (or (and (= (select (arr!47361 a!2862) index!646) (select (store (arr!47361 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47361 a!2862) index!646) (select (arr!47361 a!2862) j!93))) (not (= (select (arr!47361 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446474 () Bool)

(assert (=> b!1446474 (= e!814701 e!814706)))

(declare-fun res!978315 () Bool)

(assert (=> b!1446474 (=> (not res!978315) (not e!814706))))

(assert (=> b!1446474 (= res!978315 (= lt!634772 (Intermediate!11636 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446474 (= lt!634772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634771 mask!2687) lt!634771 lt!634777 mask!2687))))

(assert (=> b!1446474 (= lt!634771 (select (store (arr!47361 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!978323 () Bool)

(assert (=> start!124790 (=> (not res!978323) (not e!814699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124790 (= res!978323 (validMask!0 mask!2687))))

(assert (=> start!124790 e!814699))

(assert (=> start!124790 true))

(declare-fun array_inv!36306 (array!98155) Bool)

(assert (=> start!124790 (array_inv!36306 a!2862)))

(declare-fun b!1446463 () Bool)

(declare-fun res!978314 () Bool)

(assert (=> b!1446463 (=> (not res!978314) (not e!814699))))

(assert (=> b!1446463 (= res!978314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446475 () Bool)

(assert (=> b!1446475 (= e!814703 e!814698)))

(declare-fun res!978330 () Bool)

(assert (=> b!1446475 (=> (not res!978330) (not e!814698))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98155 (_ BitVec 32)) SeekEntryResult!11636)

(assert (=> b!1446475 (= res!978330 (= lt!634775 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47361 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446476 () Bool)

(assert (=> b!1446476 (= e!814697 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634771 lt!634777 mask!2687) (seekEntryOrOpen!0 lt!634771 lt!634777 mask!2687)))))

(declare-fun b!1446477 () Bool)

(assert (=> b!1446477 (= e!814702 true)))

(declare-fun lt!634776 () SeekEntryResult!11636)

(assert (=> b!1446477 (= lt!634776 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47361 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446478 () Bool)

(declare-fun res!978319 () Bool)

(assert (=> b!1446478 (=> (not res!978319) (not e!814699))))

(assert (=> b!1446478 (= res!978319 (and (= (size!47912 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47912 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47912 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124790 res!978323) b!1446478))

(assert (= (and b!1446478 res!978319) b!1446471))

(assert (= (and b!1446471 res!978326) b!1446462))

(assert (= (and b!1446462 res!978322) b!1446463))

(assert (= (and b!1446463 res!978314) b!1446472))

(assert (= (and b!1446472 res!978324) b!1446460))

(assert (= (and b!1446460 res!978321) b!1446470))

(assert (= (and b!1446470 res!978316) b!1446464))

(assert (= (and b!1446464 res!978325) b!1446461))

(assert (= (and b!1446461 res!978327) b!1446474))

(assert (= (and b!1446474 res!978315) b!1446468))

(assert (= (and b!1446468 c!133586) b!1446469))

(assert (= (and b!1446468 (not c!133586)) b!1446476))

(assert (= (and b!1446468 res!978328) b!1446467))

(assert (= (and b!1446467 res!978318) b!1446465))

(assert (= (and b!1446465 res!978320) b!1446473))

(assert (= (and b!1446473 (not res!978317)) b!1446475))

(assert (= (and b!1446475 res!978330) b!1446466))

(assert (= (and b!1446465 (not res!978329)) b!1446477))

(declare-fun m!1335381 () Bool)

(assert (=> start!124790 m!1335381))

(declare-fun m!1335383 () Bool)

(assert (=> start!124790 m!1335383))

(declare-fun m!1335385 () Bool)

(assert (=> b!1446474 m!1335385))

(assert (=> b!1446474 m!1335385))

(declare-fun m!1335387 () Bool)

(assert (=> b!1446474 m!1335387))

(declare-fun m!1335389 () Bool)

(assert (=> b!1446474 m!1335389))

(declare-fun m!1335391 () Bool)

(assert (=> b!1446474 m!1335391))

(declare-fun m!1335393 () Bool)

(assert (=> b!1446472 m!1335393))

(declare-fun m!1335395 () Bool)

(assert (=> b!1446464 m!1335395))

(assert (=> b!1446464 m!1335395))

(declare-fun m!1335397 () Bool)

(assert (=> b!1446464 m!1335397))

(assert (=> b!1446464 m!1335397))

(assert (=> b!1446464 m!1335395))

(declare-fun m!1335399 () Bool)

(assert (=> b!1446464 m!1335399))

(declare-fun m!1335401 () Bool)

(assert (=> b!1446476 m!1335401))

(declare-fun m!1335403 () Bool)

(assert (=> b!1446476 m!1335403))

(declare-fun m!1335405 () Bool)

(assert (=> b!1446469 m!1335405))

(assert (=> b!1446461 m!1335395))

(assert (=> b!1446461 m!1335395))

(declare-fun m!1335407 () Bool)

(assert (=> b!1446461 m!1335407))

(assert (=> b!1446470 m!1335389))

(declare-fun m!1335409 () Bool)

(assert (=> b!1446470 m!1335409))

(declare-fun m!1335411 () Bool)

(assert (=> b!1446473 m!1335411))

(assert (=> b!1446473 m!1335389))

(declare-fun m!1335413 () Bool)

(assert (=> b!1446473 m!1335413))

(assert (=> b!1446473 m!1335395))

(assert (=> b!1446462 m!1335395))

(assert (=> b!1446462 m!1335395))

(declare-fun m!1335415 () Bool)

(assert (=> b!1446462 m!1335415))

(declare-fun m!1335417 () Bool)

(assert (=> b!1446465 m!1335417))

(assert (=> b!1446465 m!1335389))

(declare-fun m!1335419 () Bool)

(assert (=> b!1446465 m!1335419))

(assert (=> b!1446465 m!1335413))

(assert (=> b!1446465 m!1335411))

(assert (=> b!1446465 m!1335395))

(declare-fun m!1335421 () Bool)

(assert (=> b!1446465 m!1335421))

(declare-fun m!1335423 () Bool)

(assert (=> b!1446465 m!1335423))

(assert (=> b!1446465 m!1335395))

(declare-fun m!1335425 () Bool)

(assert (=> b!1446471 m!1335425))

(assert (=> b!1446471 m!1335425))

(declare-fun m!1335427 () Bool)

(assert (=> b!1446471 m!1335427))

(assert (=> b!1446475 m!1335395))

(assert (=> b!1446475 m!1335395))

(declare-fun m!1335429 () Bool)

(assert (=> b!1446475 m!1335429))

(declare-fun m!1335431 () Bool)

(assert (=> b!1446463 m!1335431))

(assert (=> b!1446477 m!1335395))

(assert (=> b!1446477 m!1335395))

(declare-fun m!1335433 () Bool)

(assert (=> b!1446477 m!1335433))

(push 1)

