; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125066 () Bool)

(assert start!125066)

(declare-fun b!1454350 () Bool)

(declare-fun res!985309 () Bool)

(declare-fun e!818505 () Bool)

(assert (=> b!1454350 (=> (not res!985309) (not e!818505))))

(declare-datatypes ((array!98431 0))(
  ( (array!98432 (arr!47499 (Array (_ BitVec 32) (_ BitVec 64))) (size!48050 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98431)

(declare-datatypes ((List!34180 0))(
  ( (Nil!34177) (Cons!34176 (h!35526 (_ BitVec 64)) (t!48881 List!34180)) )
))
(declare-fun arrayNoDuplicates!0 (array!98431 (_ BitVec 32) List!34180) Bool)

(assert (=> b!1454350 (= res!985309 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34177))))

(declare-fun b!1454351 () Bool)

(declare-fun res!985319 () Bool)

(assert (=> b!1454351 (=> (not res!985319) (not e!818505))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454351 (= res!985319 (validKeyInArray!0 (select (arr!47499 a!2862) i!1006)))))

(declare-fun b!1454353 () Bool)

(declare-fun res!985316 () Bool)

(assert (=> b!1454353 (=> (not res!985316) (not e!818505))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1454353 (= res!985316 (validKeyInArray!0 (select (arr!47499 a!2862) j!93)))))

(declare-fun b!1454354 () Bool)

(declare-fun res!985323 () Bool)

(declare-fun e!818507 () Bool)

(assert (=> b!1454354 (=> res!985323 e!818507)))

(declare-fun lt!637525 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11774 0))(
  ( (MissingZero!11774 (index!49487 (_ BitVec 32))) (Found!11774 (index!49488 (_ BitVec 32))) (Intermediate!11774 (undefined!12586 Bool) (index!49489 (_ BitVec 32)) (x!131122 (_ BitVec 32))) (Undefined!11774) (MissingVacant!11774 (index!49490 (_ BitVec 32))) )
))
(declare-fun lt!637530 () SeekEntryResult!11774)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98431 (_ BitVec 32)) SeekEntryResult!11774)

(assert (=> b!1454354 (= res!985323 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637525 (select (arr!47499 a!2862) j!93) a!2862 mask!2687) lt!637530)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1454355 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!818504 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1454355 (= e!818504 (and (or (= (select (arr!47499 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47499 a!2862) intermediateBeforeIndex!19) (select (arr!47499 a!2862) j!93))) (let ((bdg!53059 (select (store (arr!47499 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47499 a!2862) index!646) bdg!53059) (= (select (arr!47499 a!2862) index!646) (select (arr!47499 a!2862) j!93))) (= (select (arr!47499 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53059 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454356 () Bool)

(declare-fun e!818506 () Bool)

(declare-fun e!818509 () Bool)

(assert (=> b!1454356 (= e!818506 e!818509)))

(declare-fun res!985314 () Bool)

(assert (=> b!1454356 (=> (not res!985314) (not e!818509))))

(declare-fun lt!637528 () SeekEntryResult!11774)

(assert (=> b!1454356 (= res!985314 (= lt!637528 (Intermediate!11774 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!637527 () array!98431)

(declare-fun lt!637526 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454356 (= lt!637528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637526 mask!2687) lt!637526 lt!637527 mask!2687))))

(assert (=> b!1454356 (= lt!637526 (select (store (arr!47499 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454357 () Bool)

(declare-fun e!818508 () Bool)

(assert (=> b!1454357 (= e!818508 (= lt!637528 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637526 lt!637527 mask!2687)))))

(declare-fun b!1454358 () Bool)

(declare-fun res!985322 () Bool)

(assert (=> b!1454358 (=> (not res!985322) (not e!818505))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1454358 (= res!985322 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48050 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48050 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48050 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454359 () Bool)

(assert (=> b!1454359 (= e!818507 true)))

(declare-fun lt!637529 () Bool)

(declare-fun e!818511 () Bool)

(assert (=> b!1454359 (= lt!637529 e!818511)))

(declare-fun c!134035 () Bool)

(assert (=> b!1454359 (= c!134035 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454360 () Bool)

(declare-fun res!985307 () Bool)

(assert (=> b!1454360 (=> (not res!985307) (not e!818509))))

(assert (=> b!1454360 (= res!985307 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454361 () Bool)

(declare-fun lt!637531 () SeekEntryResult!11774)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98431 (_ BitVec 32)) SeekEntryResult!11774)

(assert (=> b!1454361 (= e!818511 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637525 intermediateAfterIndex!19 lt!637526 lt!637527 mask!2687) lt!637531)))))

(declare-fun b!1454362 () Bool)

(declare-fun res!985318 () Bool)

(assert (=> b!1454362 (=> (not res!985318) (not e!818506))))

(assert (=> b!1454362 (= res!985318 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47499 a!2862) j!93) a!2862 mask!2687) lt!637530))))

(declare-fun b!1454363 () Bool)

(declare-fun e!818510 () Bool)

(assert (=> b!1454363 (= e!818509 (not e!818510))))

(declare-fun res!985320 () Bool)

(assert (=> b!1454363 (=> res!985320 e!818510)))

(assert (=> b!1454363 (= res!985320 (or (and (= (select (arr!47499 a!2862) index!646) (select (store (arr!47499 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47499 a!2862) index!646) (select (arr!47499 a!2862) j!93))) (= (select (arr!47499 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454363 e!818504))

(declare-fun res!985317 () Bool)

(assert (=> b!1454363 (=> (not res!985317) (not e!818504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98431 (_ BitVec 32)) Bool)

(assert (=> b!1454363 (= res!985317 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48992 0))(
  ( (Unit!48993) )
))
(declare-fun lt!637524 () Unit!48992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48992)

(assert (=> b!1454363 (= lt!637524 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454364 () Bool)

(declare-fun res!985308 () Bool)

(assert (=> b!1454364 (=> (not res!985308) (not e!818505))))

(assert (=> b!1454364 (= res!985308 (and (= (size!48050 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48050 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48050 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454365 () Bool)

(declare-fun e!818513 () Bool)

(assert (=> b!1454365 (= e!818505 e!818513)))

(declare-fun res!985321 () Bool)

(assert (=> b!1454365 (=> (not res!985321) (not e!818513))))

(assert (=> b!1454365 (= res!985321 (= (select (store (arr!47499 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454365 (= lt!637527 (array!98432 (store (arr!47499 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48050 a!2862)))))

(declare-fun b!1454366 () Bool)

(assert (=> b!1454366 (= e!818513 e!818506)))

(declare-fun res!985313 () Bool)

(assert (=> b!1454366 (=> (not res!985313) (not e!818506))))

(assert (=> b!1454366 (= res!985313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47499 a!2862) j!93) mask!2687) (select (arr!47499 a!2862) j!93) a!2862 mask!2687) lt!637530))))

(assert (=> b!1454366 (= lt!637530 (Intermediate!11774 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!985306 () Bool)

(assert (=> start!125066 (=> (not res!985306) (not e!818505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125066 (= res!985306 (validMask!0 mask!2687))))

(assert (=> start!125066 e!818505))

(assert (=> start!125066 true))

(declare-fun array_inv!36444 (array!98431) Bool)

(assert (=> start!125066 (array_inv!36444 a!2862)))

(declare-fun b!1454352 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98431 (_ BitVec 32)) SeekEntryResult!11774)

(assert (=> b!1454352 (= e!818508 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637526 lt!637527 mask!2687) (seekEntryOrOpen!0 lt!637526 lt!637527 mask!2687)))))

(declare-fun b!1454367 () Bool)

(assert (=> b!1454367 (= e!818510 e!818507)))

(declare-fun res!985312 () Bool)

(assert (=> b!1454367 (=> res!985312 e!818507)))

(assert (=> b!1454367 (= res!985312 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637525 #b00000000000000000000000000000000) (bvsge lt!637525 (size!48050 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454367 (= lt!637525 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454367 (= lt!637531 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637526 lt!637527 mask!2687))))

(assert (=> b!1454367 (= lt!637531 (seekEntryOrOpen!0 lt!637526 lt!637527 mask!2687))))

(declare-fun b!1454368 () Bool)

(declare-fun res!985311 () Bool)

(assert (=> b!1454368 (=> (not res!985311) (not e!818505))))

(assert (=> b!1454368 (= res!985311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454369 () Bool)

(declare-fun res!985310 () Bool)

(assert (=> b!1454369 (=> (not res!985310) (not e!818509))))

(assert (=> b!1454369 (= res!985310 e!818508)))

(declare-fun c!134036 () Bool)

(assert (=> b!1454369 (= c!134036 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1454370 () Bool)

(declare-fun res!985315 () Bool)

(assert (=> b!1454370 (=> (not res!985315) (not e!818504))))

(assert (=> b!1454370 (= res!985315 (= (seekEntryOrOpen!0 (select (arr!47499 a!2862) j!93) a!2862 mask!2687) (Found!11774 j!93)))))

(declare-fun b!1454371 () Bool)

(assert (=> b!1454371 (= e!818511 (not (= lt!637528 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637525 lt!637526 lt!637527 mask!2687))))))

(assert (= (and start!125066 res!985306) b!1454364))

(assert (= (and b!1454364 res!985308) b!1454351))

(assert (= (and b!1454351 res!985319) b!1454353))

(assert (= (and b!1454353 res!985316) b!1454368))

(assert (= (and b!1454368 res!985311) b!1454350))

(assert (= (and b!1454350 res!985309) b!1454358))

(assert (= (and b!1454358 res!985322) b!1454365))

(assert (= (and b!1454365 res!985321) b!1454366))

(assert (= (and b!1454366 res!985313) b!1454362))

(assert (= (and b!1454362 res!985318) b!1454356))

(assert (= (and b!1454356 res!985314) b!1454369))

(assert (= (and b!1454369 c!134036) b!1454357))

(assert (= (and b!1454369 (not c!134036)) b!1454352))

(assert (= (and b!1454369 res!985310) b!1454360))

(assert (= (and b!1454360 res!985307) b!1454363))

(assert (= (and b!1454363 res!985317) b!1454370))

(assert (= (and b!1454370 res!985315) b!1454355))

(assert (= (and b!1454363 (not res!985320)) b!1454367))

(assert (= (and b!1454367 (not res!985312)) b!1454354))

(assert (= (and b!1454354 (not res!985323)) b!1454359))

(assert (= (and b!1454359 c!134035) b!1454371))

(assert (= (and b!1454359 (not c!134035)) b!1454361))

(declare-fun m!1342751 () Bool)

(assert (=> b!1454354 m!1342751))

(assert (=> b!1454354 m!1342751))

(declare-fun m!1342753 () Bool)

(assert (=> b!1454354 m!1342753))

(assert (=> b!1454353 m!1342751))

(assert (=> b!1454353 m!1342751))

(declare-fun m!1342755 () Bool)

(assert (=> b!1454353 m!1342755))

(declare-fun m!1342757 () Bool)

(assert (=> b!1454365 m!1342757))

(declare-fun m!1342759 () Bool)

(assert (=> b!1454365 m!1342759))

(declare-fun m!1342761 () Bool)

(assert (=> b!1454351 m!1342761))

(assert (=> b!1454351 m!1342761))

(declare-fun m!1342763 () Bool)

(assert (=> b!1454351 m!1342763))

(declare-fun m!1342765 () Bool)

(assert (=> b!1454363 m!1342765))

(assert (=> b!1454363 m!1342757))

(declare-fun m!1342767 () Bool)

(assert (=> b!1454363 m!1342767))

(declare-fun m!1342769 () Bool)

(assert (=> b!1454363 m!1342769))

(declare-fun m!1342771 () Bool)

(assert (=> b!1454363 m!1342771))

(assert (=> b!1454363 m!1342751))

(assert (=> b!1454370 m!1342751))

(assert (=> b!1454370 m!1342751))

(declare-fun m!1342773 () Bool)

(assert (=> b!1454370 m!1342773))

(assert (=> b!1454366 m!1342751))

(assert (=> b!1454366 m!1342751))

(declare-fun m!1342775 () Bool)

(assert (=> b!1454366 m!1342775))

(assert (=> b!1454366 m!1342775))

(assert (=> b!1454366 m!1342751))

(declare-fun m!1342777 () Bool)

(assert (=> b!1454366 m!1342777))

(declare-fun m!1342779 () Bool)

(assert (=> start!125066 m!1342779))

(declare-fun m!1342781 () Bool)

(assert (=> start!125066 m!1342781))

(declare-fun m!1342783 () Bool)

(assert (=> b!1454367 m!1342783))

(declare-fun m!1342785 () Bool)

(assert (=> b!1454367 m!1342785))

(declare-fun m!1342787 () Bool)

(assert (=> b!1454367 m!1342787))

(assert (=> b!1454362 m!1342751))

(assert (=> b!1454362 m!1342751))

(declare-fun m!1342789 () Bool)

(assert (=> b!1454362 m!1342789))

(declare-fun m!1342791 () Bool)

(assert (=> b!1454368 m!1342791))

(declare-fun m!1342793 () Bool)

(assert (=> b!1454357 m!1342793))

(declare-fun m!1342795 () Bool)

(assert (=> b!1454371 m!1342795))

(assert (=> b!1454352 m!1342785))

(assert (=> b!1454352 m!1342787))

(declare-fun m!1342797 () Bool)

(assert (=> b!1454356 m!1342797))

(assert (=> b!1454356 m!1342797))

(declare-fun m!1342799 () Bool)

(assert (=> b!1454356 m!1342799))

(assert (=> b!1454356 m!1342757))

(declare-fun m!1342801 () Bool)

(assert (=> b!1454356 m!1342801))

(declare-fun m!1342803 () Bool)

(assert (=> b!1454361 m!1342803))

(assert (=> b!1454355 m!1342757))

(declare-fun m!1342805 () Bool)

(assert (=> b!1454355 m!1342805))

(assert (=> b!1454355 m!1342767))

(assert (=> b!1454355 m!1342769))

(assert (=> b!1454355 m!1342751))

(declare-fun m!1342807 () Bool)

(assert (=> b!1454350 m!1342807))

(push 1)

