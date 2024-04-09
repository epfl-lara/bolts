; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121628 () Bool)

(assert start!121628)

(declare-fun b!1412350 () Bool)

(declare-fun e!799282 () Bool)

(declare-fun e!799283 () Bool)

(assert (=> b!1412350 (= e!799282 (not e!799283))))

(declare-fun res!949455 () Bool)

(assert (=> b!1412350 (=> res!949455 e!799283)))

(declare-datatypes ((SeekEntryResult!10908 0))(
  ( (MissingZero!10908 (index!46011 (_ BitVec 32))) (Found!10908 (index!46012 (_ BitVec 32))) (Intermediate!10908 (undefined!11720 Bool) (index!46013 (_ BitVec 32)) (x!127606 (_ BitVec 32))) (Undefined!10908) (MissingVacant!10908 (index!46014 (_ BitVec 32))) )
))
(declare-fun lt!622272 () SeekEntryResult!10908)

(assert (=> b!1412350 (= res!949455 (or (not (is-Intermediate!10908 lt!622272)) (undefined!11720 lt!622272)))))

(declare-fun e!799281 () Bool)

(assert (=> b!1412350 e!799281))

(declare-fun res!949454 () Bool)

(assert (=> b!1412350 (=> (not res!949454) (not e!799281))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96484 0))(
  ( (array!96485 (arr!46575 (Array (_ BitVec 32) (_ BitVec 64))) (size!47126 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96484)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96484 (_ BitVec 32)) Bool)

(assert (=> b!1412350 (= res!949454 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47740 0))(
  ( (Unit!47741) )
))
(declare-fun lt!622270 () Unit!47740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47740)

(assert (=> b!1412350 (= lt!622270 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622273 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96484 (_ BitVec 32)) SeekEntryResult!10908)

(assert (=> b!1412350 (= lt!622272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622273 (select (arr!46575 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412350 (= lt!622273 (toIndex!0 (select (arr!46575 a!2901) j!112) mask!2840))))

(declare-fun b!1412351 () Bool)

(declare-fun res!949450 () Bool)

(assert (=> b!1412351 (=> (not res!949450) (not e!799282))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412351 (= res!949450 (and (= (size!47126 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47126 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47126 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412352 () Bool)

(declare-fun e!799286 () Bool)

(assert (=> b!1412352 (= e!799286 true)))

(declare-fun e!799284 () Bool)

(assert (=> b!1412352 e!799284))

(declare-fun res!949458 () Bool)

(assert (=> b!1412352 (=> (not res!949458) (not e!799284))))

(declare-fun lt!622271 () SeekEntryResult!10908)

(assert (=> b!1412352 (= res!949458 (and (not (undefined!11720 lt!622271)) (= (index!46013 lt!622271) i!1037) (bvslt (x!127606 lt!622271) (x!127606 lt!622272)) (= (select (store (arr!46575 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46013 lt!622271)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622274 () Unit!47740)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47740)

(assert (=> b!1412352 (= lt!622274 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622273 (x!127606 lt!622272) (index!46013 lt!622272) (x!127606 lt!622271) (index!46013 lt!622271) (undefined!11720 lt!622271) mask!2840))))

(declare-fun res!949449 () Bool)

(assert (=> start!121628 (=> (not res!949449) (not e!799282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121628 (= res!949449 (validMask!0 mask!2840))))

(assert (=> start!121628 e!799282))

(assert (=> start!121628 true))

(declare-fun array_inv!35520 (array!96484) Bool)

(assert (=> start!121628 (array_inv!35520 a!2901)))

(declare-fun b!1412353 () Bool)

(declare-fun res!949456 () Bool)

(assert (=> b!1412353 (=> (not res!949456) (not e!799282))))

(declare-datatypes ((List!33274 0))(
  ( (Nil!33271) (Cons!33270 (h!34545 (_ BitVec 64)) (t!47975 List!33274)) )
))
(declare-fun arrayNoDuplicates!0 (array!96484 (_ BitVec 32) List!33274) Bool)

(assert (=> b!1412353 (= res!949456 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33271))))

(declare-fun b!1412354 () Bool)

(declare-fun res!949452 () Bool)

(assert (=> b!1412354 (=> (not res!949452) (not e!799282))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412354 (= res!949452 (validKeyInArray!0 (select (arr!46575 a!2901) j!112)))))

(declare-fun b!1412355 () Bool)

(declare-fun res!949451 () Bool)

(assert (=> b!1412355 (=> (not res!949451) (not e!799282))))

(assert (=> b!1412355 (= res!949451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412356 () Bool)

(declare-fun lt!622276 () array!96484)

(declare-fun lt!622275 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96484 (_ BitVec 32)) SeekEntryResult!10908)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96484 (_ BitVec 32)) SeekEntryResult!10908)

(assert (=> b!1412356 (= e!799284 (= (seekEntryOrOpen!0 lt!622275 lt!622276 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127606 lt!622271) (index!46013 lt!622271) (index!46013 lt!622271) (select (arr!46575 a!2901) j!112) lt!622276 mask!2840)))))

(declare-fun b!1412357 () Bool)

(assert (=> b!1412357 (= e!799283 e!799286)))

(declare-fun res!949453 () Bool)

(assert (=> b!1412357 (=> res!949453 e!799286)))

(assert (=> b!1412357 (= res!949453 (or (= lt!622272 lt!622271) (not (is-Intermediate!10908 lt!622271))))))

(assert (=> b!1412357 (= lt!622271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622275 mask!2840) lt!622275 lt!622276 mask!2840))))

(assert (=> b!1412357 (= lt!622275 (select (store (arr!46575 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412357 (= lt!622276 (array!96485 (store (arr!46575 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47126 a!2901)))))

(declare-fun b!1412358 () Bool)

(assert (=> b!1412358 (= e!799281 (= (seekEntryOrOpen!0 (select (arr!46575 a!2901) j!112) a!2901 mask!2840) (Found!10908 j!112)))))

(declare-fun b!1412359 () Bool)

(declare-fun res!949457 () Bool)

(assert (=> b!1412359 (=> (not res!949457) (not e!799282))))

(assert (=> b!1412359 (= res!949457 (validKeyInArray!0 (select (arr!46575 a!2901) i!1037)))))

(assert (= (and start!121628 res!949449) b!1412351))

(assert (= (and b!1412351 res!949450) b!1412359))

(assert (= (and b!1412359 res!949457) b!1412354))

(assert (= (and b!1412354 res!949452) b!1412355))

(assert (= (and b!1412355 res!949451) b!1412353))

(assert (= (and b!1412353 res!949456) b!1412350))

(assert (= (and b!1412350 res!949454) b!1412358))

(assert (= (and b!1412350 (not res!949455)) b!1412357))

(assert (= (and b!1412357 (not res!949453)) b!1412352))

(assert (= (and b!1412352 res!949458) b!1412356))

(declare-fun m!1302431 () Bool)

(assert (=> b!1412359 m!1302431))

(assert (=> b!1412359 m!1302431))

(declare-fun m!1302433 () Bool)

(assert (=> b!1412359 m!1302433))

(declare-fun m!1302435 () Bool)

(assert (=> b!1412350 m!1302435))

(declare-fun m!1302437 () Bool)

(assert (=> b!1412350 m!1302437))

(assert (=> b!1412350 m!1302435))

(declare-fun m!1302439 () Bool)

(assert (=> b!1412350 m!1302439))

(assert (=> b!1412350 m!1302435))

(declare-fun m!1302441 () Bool)

(assert (=> b!1412350 m!1302441))

(declare-fun m!1302443 () Bool)

(assert (=> b!1412350 m!1302443))

(assert (=> b!1412354 m!1302435))

(assert (=> b!1412354 m!1302435))

(declare-fun m!1302445 () Bool)

(assert (=> b!1412354 m!1302445))

(declare-fun m!1302447 () Bool)

(assert (=> b!1412353 m!1302447))

(assert (=> b!1412358 m!1302435))

(assert (=> b!1412358 m!1302435))

(declare-fun m!1302449 () Bool)

(assert (=> b!1412358 m!1302449))

(declare-fun m!1302451 () Bool)

(assert (=> start!121628 m!1302451))

(declare-fun m!1302453 () Bool)

(assert (=> start!121628 m!1302453))

(declare-fun m!1302455 () Bool)

(assert (=> b!1412355 m!1302455))

(declare-fun m!1302457 () Bool)

(assert (=> b!1412356 m!1302457))

(assert (=> b!1412356 m!1302435))

(assert (=> b!1412356 m!1302435))

(declare-fun m!1302459 () Bool)

(assert (=> b!1412356 m!1302459))

(declare-fun m!1302461 () Bool)

(assert (=> b!1412357 m!1302461))

(assert (=> b!1412357 m!1302461))

(declare-fun m!1302463 () Bool)

(assert (=> b!1412357 m!1302463))

(declare-fun m!1302465 () Bool)

(assert (=> b!1412357 m!1302465))

(declare-fun m!1302467 () Bool)

(assert (=> b!1412357 m!1302467))

(assert (=> b!1412352 m!1302465))

(declare-fun m!1302469 () Bool)

(assert (=> b!1412352 m!1302469))

(declare-fun m!1302471 () Bool)

(assert (=> b!1412352 m!1302471))

(push 1)

