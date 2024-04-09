; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125222 () Bool)

(assert start!125222)

(declare-fun b!1459498 () Bool)

(declare-fun res!989523 () Bool)

(declare-fun e!820801 () Bool)

(assert (=> b!1459498 (=> (not res!989523) (not e!820801))))

(declare-datatypes ((array!98587 0))(
  ( (array!98588 (arr!47577 (Array (_ BitVec 32) (_ BitVec 64))) (size!48128 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98587)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459498 (= res!989523 (validKeyInArray!0 (select (arr!47577 a!2862) j!93)))))

(declare-fun res!989529 () Bool)

(assert (=> start!125222 (=> (not res!989529) (not e!820801))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125222 (= res!989529 (validMask!0 mask!2687))))

(assert (=> start!125222 e!820801))

(assert (=> start!125222 true))

(declare-fun array_inv!36522 (array!98587) Bool)

(assert (=> start!125222 (array_inv!36522 a!2862)))

(declare-fun b!1459499 () Bool)

(declare-fun e!820803 () Bool)

(declare-fun e!820807 () Bool)

(assert (=> b!1459499 (= e!820803 e!820807)))

(declare-fun res!989534 () Bool)

(assert (=> b!1459499 (=> (not res!989534) (not e!820807))))

(declare-datatypes ((SeekEntryResult!11852 0))(
  ( (MissingZero!11852 (index!49799 (_ BitVec 32))) (Found!11852 (index!49800 (_ BitVec 32))) (Intermediate!11852 (undefined!12664 Bool) (index!49801 (_ BitVec 32)) (x!131408 (_ BitVec 32))) (Undefined!11852) (MissingVacant!11852 (index!49802 (_ BitVec 32))) )
))
(declare-fun lt!639443 () SeekEntryResult!11852)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98587 (_ BitVec 32)) SeekEntryResult!11852)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459499 (= res!989534 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47577 a!2862) j!93) mask!2687) (select (arr!47577 a!2862) j!93) a!2862 mask!2687) lt!639443))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459499 (= lt!639443 (Intermediate!11852 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!639446 () array!98587)

(declare-fun lt!639445 () (_ BitVec 64))

(declare-fun e!820800 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1459500 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98587 (_ BitVec 32)) SeekEntryResult!11852)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98587 (_ BitVec 32)) SeekEntryResult!11852)

(assert (=> b!1459500 (= e!820800 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639445 lt!639446 mask!2687) (seekEntryOrOpen!0 lt!639445 lt!639446 mask!2687)))))

(declare-fun b!1459501 () Bool)

(declare-fun e!820806 () Bool)

(declare-fun e!820804 () Bool)

(assert (=> b!1459501 (= e!820806 e!820804)))

(declare-fun res!989524 () Bool)

(assert (=> b!1459501 (=> res!989524 e!820804)))

(declare-fun lt!639444 () (_ BitVec 32))

(assert (=> b!1459501 (= res!989524 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639444 #b00000000000000000000000000000000) (bvsge lt!639444 (size!48128 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459501 (= lt!639444 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639440 () SeekEntryResult!11852)

(assert (=> b!1459501 (= lt!639440 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639445 lt!639446 mask!2687))))

(assert (=> b!1459501 (= lt!639440 (seekEntryOrOpen!0 lt!639445 lt!639446 mask!2687))))

(declare-fun b!1459502 () Bool)

(declare-fun res!989528 () Bool)

(assert (=> b!1459502 (=> (not res!989528) (not e!820801))))

(declare-datatypes ((List!34258 0))(
  ( (Nil!34255) (Cons!34254 (h!35604 (_ BitVec 64)) (t!48959 List!34258)) )
))
(declare-fun arrayNoDuplicates!0 (array!98587 (_ BitVec 32) List!34258) Bool)

(assert (=> b!1459502 (= res!989528 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34255))))

(declare-fun b!1459503 () Bool)

(declare-fun res!989519 () Bool)

(declare-fun e!820808 () Bool)

(assert (=> b!1459503 (=> (not res!989519) (not e!820808))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1459503 (= res!989519 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!639447 () SeekEntryResult!11852)

(declare-fun b!1459504 () Bool)

(declare-fun e!820805 () Bool)

(assert (=> b!1459504 (= e!820805 (not (= lt!639447 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639444 lt!639445 lt!639446 mask!2687))))))

(declare-fun b!1459505 () Bool)

(declare-fun res!989526 () Bool)

(assert (=> b!1459505 (=> res!989526 e!820804)))

(assert (=> b!1459505 (= res!989526 e!820805)))

(declare-fun c!134504 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1459505 (= c!134504 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459506 () Bool)

(assert (=> b!1459506 (= e!820808 (not e!820806))))

(declare-fun res!989522 () Bool)

(assert (=> b!1459506 (=> res!989522 e!820806)))

(assert (=> b!1459506 (= res!989522 (or (and (= (select (arr!47577 a!2862) index!646) (select (store (arr!47577 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47577 a!2862) index!646) (select (arr!47577 a!2862) j!93))) (= (select (arr!47577 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun lt!639442 () SeekEntryResult!11852)

(assert (=> b!1459506 (and (= lt!639442 (Found!11852 j!93)) (or (= (select (arr!47577 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47577 a!2862) intermediateBeforeIndex!19) (select (arr!47577 a!2862) j!93))) (let ((bdg!53517 (select (store (arr!47577 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47577 a!2862) index!646) bdg!53517) (= (select (arr!47577 a!2862) index!646) (select (arr!47577 a!2862) j!93))) (= (select (arr!47577 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53517 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1459506 (= lt!639442 (seekEntryOrOpen!0 (select (arr!47577 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98587 (_ BitVec 32)) Bool)

(assert (=> b!1459506 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49148 0))(
  ( (Unit!49149) )
))
(declare-fun lt!639448 () Unit!49148)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49148)

(assert (=> b!1459506 (= lt!639448 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459507 () Bool)

(declare-fun res!989535 () Bool)

(assert (=> b!1459507 (=> res!989535 e!820804)))

(assert (=> b!1459507 (= res!989535 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639444 (select (arr!47577 a!2862) j!93) a!2862 mask!2687) lt!639443)))))

(declare-fun b!1459508 () Bool)

(assert (=> b!1459508 (= e!820801 e!820803)))

(declare-fun res!989530 () Bool)

(assert (=> b!1459508 (=> (not res!989530) (not e!820803))))

(assert (=> b!1459508 (= res!989530 (= (select (store (arr!47577 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459508 (= lt!639446 (array!98588 (store (arr!47577 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48128 a!2862)))))

(declare-fun b!1459509 () Bool)

(declare-fun res!989533 () Bool)

(assert (=> b!1459509 (=> (not res!989533) (not e!820801))))

(assert (=> b!1459509 (= res!989533 (validKeyInArray!0 (select (arr!47577 a!2862) i!1006)))))

(declare-fun b!1459510 () Bool)

(declare-fun res!989527 () Bool)

(assert (=> b!1459510 (=> (not res!989527) (not e!820801))))

(assert (=> b!1459510 (= res!989527 (and (= (size!48128 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48128 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48128 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1459511 () Bool)

(declare-fun res!989525 () Bool)

(assert (=> b!1459511 (=> (not res!989525) (not e!820801))))

(assert (=> b!1459511 (= res!989525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459512 () Bool)

(assert (=> b!1459512 (= e!820807 e!820808)))

(declare-fun res!989531 () Bool)

(assert (=> b!1459512 (=> (not res!989531) (not e!820808))))

(assert (=> b!1459512 (= res!989531 (= lt!639447 (Intermediate!11852 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1459512 (= lt!639447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639445 mask!2687) lt!639445 lt!639446 mask!2687))))

(assert (=> b!1459512 (= lt!639445 (select (store (arr!47577 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459513 () Bool)

(assert (=> b!1459513 (= e!820805 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639444 intermediateAfterIndex!19 lt!639445 lt!639446 mask!2687) lt!639440)))))

(declare-fun b!1459514 () Bool)

(declare-fun res!989521 () Bool)

(assert (=> b!1459514 (=> res!989521 e!820804)))

(assert (=> b!1459514 (= res!989521 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459515 () Bool)

(declare-fun res!989518 () Bool)

(assert (=> b!1459515 (=> (not res!989518) (not e!820807))))

(assert (=> b!1459515 (= res!989518 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47577 a!2862) j!93) a!2862 mask!2687) lt!639443))))

(declare-fun b!1459516 () Bool)

(declare-fun res!989532 () Bool)

(assert (=> b!1459516 (=> (not res!989532) (not e!820801))))

(assert (=> b!1459516 (= res!989532 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48128 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48128 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48128 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459517 () Bool)

(assert (=> b!1459517 (= e!820800 (= lt!639447 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639445 lt!639446 mask!2687)))))

(declare-fun b!1459518 () Bool)

(declare-fun res!989520 () Bool)

(assert (=> b!1459518 (=> (not res!989520) (not e!820808))))

(assert (=> b!1459518 (= res!989520 e!820800)))

(declare-fun c!134503 () Bool)

(assert (=> b!1459518 (= c!134503 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459519 () Bool)

(assert (=> b!1459519 (= e!820804 true)))

(assert (=> b!1459519 (= lt!639442 lt!639440)))

(declare-fun lt!639441 () Unit!49148)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98587 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49148)

(assert (=> b!1459519 (= lt!639441 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639444 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(assert (= (and start!125222 res!989529) b!1459510))

(assert (= (and b!1459510 res!989527) b!1459509))

(assert (= (and b!1459509 res!989533) b!1459498))

(assert (= (and b!1459498 res!989523) b!1459511))

(assert (= (and b!1459511 res!989525) b!1459502))

(assert (= (and b!1459502 res!989528) b!1459516))

(assert (= (and b!1459516 res!989532) b!1459508))

(assert (= (and b!1459508 res!989530) b!1459499))

(assert (= (and b!1459499 res!989534) b!1459515))

(assert (= (and b!1459515 res!989518) b!1459512))

(assert (= (and b!1459512 res!989531) b!1459518))

(assert (= (and b!1459518 c!134503) b!1459517))

(assert (= (and b!1459518 (not c!134503)) b!1459500))

(assert (= (and b!1459518 res!989520) b!1459503))

(assert (= (and b!1459503 res!989519) b!1459506))

(assert (= (and b!1459506 (not res!989522)) b!1459501))

(assert (= (and b!1459501 (not res!989524)) b!1459507))

(assert (= (and b!1459507 (not res!989535)) b!1459505))

(assert (= (and b!1459505 c!134504) b!1459504))

(assert (= (and b!1459505 (not c!134504)) b!1459513))

(assert (= (and b!1459505 (not res!989526)) b!1459514))

(assert (= (and b!1459514 (not res!989521)) b!1459519))

(declare-fun m!1347303 () Bool)

(assert (=> b!1459504 m!1347303))

(declare-fun m!1347305 () Bool)

(assert (=> b!1459499 m!1347305))

(assert (=> b!1459499 m!1347305))

(declare-fun m!1347307 () Bool)

(assert (=> b!1459499 m!1347307))

(assert (=> b!1459499 m!1347307))

(assert (=> b!1459499 m!1347305))

(declare-fun m!1347309 () Bool)

(assert (=> b!1459499 m!1347309))

(assert (=> b!1459498 m!1347305))

(assert (=> b!1459498 m!1347305))

(declare-fun m!1347311 () Bool)

(assert (=> b!1459498 m!1347311))

(declare-fun m!1347313 () Bool)

(assert (=> b!1459500 m!1347313))

(declare-fun m!1347315 () Bool)

(assert (=> b!1459500 m!1347315))

(declare-fun m!1347317 () Bool)

(assert (=> b!1459513 m!1347317))

(declare-fun m!1347319 () Bool)

(assert (=> b!1459508 m!1347319))

(declare-fun m!1347321 () Bool)

(assert (=> b!1459508 m!1347321))

(declare-fun m!1347323 () Bool)

(assert (=> start!125222 m!1347323))

(declare-fun m!1347325 () Bool)

(assert (=> start!125222 m!1347325))

(declare-fun m!1347327 () Bool)

(assert (=> b!1459506 m!1347327))

(assert (=> b!1459506 m!1347319))

(declare-fun m!1347329 () Bool)

(assert (=> b!1459506 m!1347329))

(declare-fun m!1347331 () Bool)

(assert (=> b!1459506 m!1347331))

(declare-fun m!1347333 () Bool)

(assert (=> b!1459506 m!1347333))

(assert (=> b!1459506 m!1347305))

(declare-fun m!1347335 () Bool)

(assert (=> b!1459506 m!1347335))

(declare-fun m!1347337 () Bool)

(assert (=> b!1459506 m!1347337))

(assert (=> b!1459506 m!1347305))

(declare-fun m!1347339 () Bool)

(assert (=> b!1459512 m!1347339))

(assert (=> b!1459512 m!1347339))

(declare-fun m!1347341 () Bool)

(assert (=> b!1459512 m!1347341))

(assert (=> b!1459512 m!1347319))

(declare-fun m!1347343 () Bool)

(assert (=> b!1459512 m!1347343))

(declare-fun m!1347345 () Bool)

(assert (=> b!1459509 m!1347345))

(assert (=> b!1459509 m!1347345))

(declare-fun m!1347347 () Bool)

(assert (=> b!1459509 m!1347347))

(declare-fun m!1347349 () Bool)

(assert (=> b!1459501 m!1347349))

(assert (=> b!1459501 m!1347313))

(assert (=> b!1459501 m!1347315))

(assert (=> b!1459515 m!1347305))

(assert (=> b!1459515 m!1347305))

(declare-fun m!1347351 () Bool)

(assert (=> b!1459515 m!1347351))

(declare-fun m!1347353 () Bool)

(assert (=> b!1459517 m!1347353))

(assert (=> b!1459507 m!1347305))

(assert (=> b!1459507 m!1347305))

(declare-fun m!1347355 () Bool)

(assert (=> b!1459507 m!1347355))

(declare-fun m!1347357 () Bool)

(assert (=> b!1459519 m!1347357))

(declare-fun m!1347359 () Bool)

(assert (=> b!1459502 m!1347359))

(declare-fun m!1347361 () Bool)

(assert (=> b!1459511 m!1347361))

(push 1)

