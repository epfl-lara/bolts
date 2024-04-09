; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123598 () Bool)

(assert start!123598)

(declare-fun e!808641 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97488 0))(
  ( (array!97489 (arr!47047 (Array (_ BitVec 32) (_ BitVec 64))) (size!47598 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97488)

(declare-fun b!1432485 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11348 0))(
  ( (MissingZero!11348 (index!47783 (_ BitVec 32))) (Found!11348 (index!47784 (_ BitVec 32))) (Intermediate!11348 (undefined!12160 Bool) (index!47785 (_ BitVec 32)) (x!129433 (_ BitVec 32))) (Undefined!11348) (MissingVacant!11348 (index!47786 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97488 (_ BitVec 32)) SeekEntryResult!11348)

(assert (=> b!1432485 (= e!808641 (= (seekEntryOrOpen!0 (select (arr!47047 a!2831) j!81) a!2831 mask!2608) (Found!11348 j!81)))))

(declare-fun b!1432486 () Bool)

(declare-fun res!966463 () Bool)

(declare-fun e!808640 () Bool)

(assert (=> b!1432486 (=> (not res!966463) (not e!808640))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432486 (= res!966463 (validKeyInArray!0 (select (arr!47047 a!2831) i!982)))))

(declare-fun res!966462 () Bool)

(assert (=> start!123598 (=> (not res!966462) (not e!808640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123598 (= res!966462 (validMask!0 mask!2608))))

(assert (=> start!123598 e!808640))

(assert (=> start!123598 true))

(declare-fun array_inv!35992 (array!97488) Bool)

(assert (=> start!123598 (array_inv!35992 a!2831)))

(declare-fun b!1432487 () Bool)

(declare-fun res!966469 () Bool)

(assert (=> b!1432487 (=> (not res!966469) (not e!808640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97488 (_ BitVec 32)) Bool)

(assert (=> b!1432487 (= res!966469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432488 () Bool)

(declare-fun e!808638 () Bool)

(assert (=> b!1432488 (= e!808640 e!808638)))

(declare-fun res!966470 () Bool)

(assert (=> b!1432488 (=> (not res!966470) (not e!808638))))

(declare-fun lt!630590 () SeekEntryResult!11348)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97488 (_ BitVec 32)) SeekEntryResult!11348)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432488 (= res!966470 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47047 a!2831) j!81) mask!2608) (select (arr!47047 a!2831) j!81) a!2831 mask!2608) lt!630590))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1432488 (= lt!630590 (Intermediate!11348 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432489 () Bool)

(declare-fun e!808639 () Bool)

(assert (=> b!1432489 (= e!808639 true)))

(declare-fun lt!630589 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432489 (= lt!630589 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432490 () Bool)

(declare-fun e!808643 () Bool)

(assert (=> b!1432490 (= e!808638 e!808643)))

(declare-fun res!966467 () Bool)

(assert (=> b!1432490 (=> (not res!966467) (not e!808643))))

(declare-fun lt!630592 () array!97488)

(declare-fun lt!630588 () SeekEntryResult!11348)

(declare-fun lt!630587 () (_ BitVec 64))

(assert (=> b!1432490 (= res!966467 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630587 mask!2608) lt!630587 lt!630592 mask!2608) lt!630588))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432490 (= lt!630588 (Intermediate!11348 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432490 (= lt!630587 (select (store (arr!47047 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432490 (= lt!630592 (array!97489 (store (arr!47047 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47598 a!2831)))))

(declare-fun b!1432491 () Bool)

(declare-fun res!966458 () Bool)

(assert (=> b!1432491 (=> (not res!966458) (not e!808640))))

(assert (=> b!1432491 (= res!966458 (validKeyInArray!0 (select (arr!47047 a!2831) j!81)))))

(declare-fun b!1432492 () Bool)

(declare-fun res!966464 () Bool)

(assert (=> b!1432492 (=> (not res!966464) (not e!808640))))

(assert (=> b!1432492 (= res!966464 (and (= (size!47598 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47598 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47598 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432493 () Bool)

(declare-fun res!966468 () Bool)

(assert (=> b!1432493 (=> (not res!966468) (not e!808640))))

(declare-datatypes ((List!33737 0))(
  ( (Nil!33734) (Cons!33733 (h!35056 (_ BitVec 64)) (t!48438 List!33737)) )
))
(declare-fun arrayNoDuplicates!0 (array!97488 (_ BitVec 32) List!33737) Bool)

(assert (=> b!1432493 (= res!966468 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33734))))

(declare-fun b!1432494 () Bool)

(declare-fun res!966465 () Bool)

(assert (=> b!1432494 (=> (not res!966465) (not e!808643))))

(assert (=> b!1432494 (= res!966465 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47047 a!2831) j!81) a!2831 mask!2608) lt!630590))))

(declare-fun b!1432495 () Bool)

(declare-fun res!966460 () Bool)

(assert (=> b!1432495 (=> (not res!966460) (not e!808640))))

(assert (=> b!1432495 (= res!966460 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47598 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47598 a!2831))))))

(declare-fun b!1432496 () Bool)

(declare-fun res!966459 () Bool)

(assert (=> b!1432496 (=> (not res!966459) (not e!808643))))

(assert (=> b!1432496 (= res!966459 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630587 lt!630592 mask!2608) lt!630588))))

(declare-fun b!1432497 () Bool)

(assert (=> b!1432497 (= e!808643 (not e!808639))))

(declare-fun res!966471 () Bool)

(assert (=> b!1432497 (=> res!966471 e!808639)))

(assert (=> b!1432497 (= res!966471 (or (= (select (arr!47047 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47047 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47047 a!2831) index!585) (select (arr!47047 a!2831) j!81)) (= (select (store (arr!47047 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432497 e!808641))

(declare-fun res!966461 () Bool)

(assert (=> b!1432497 (=> (not res!966461) (not e!808641))))

(assert (=> b!1432497 (= res!966461 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48390 0))(
  ( (Unit!48391) )
))
(declare-fun lt!630591 () Unit!48390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48390)

(assert (=> b!1432497 (= lt!630591 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432498 () Bool)

(declare-fun res!966466 () Bool)

(assert (=> b!1432498 (=> (not res!966466) (not e!808643))))

(assert (=> b!1432498 (= res!966466 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!123598 res!966462) b!1432492))

(assert (= (and b!1432492 res!966464) b!1432486))

(assert (= (and b!1432486 res!966463) b!1432491))

(assert (= (and b!1432491 res!966458) b!1432487))

(assert (= (and b!1432487 res!966469) b!1432493))

(assert (= (and b!1432493 res!966468) b!1432495))

(assert (= (and b!1432495 res!966460) b!1432488))

(assert (= (and b!1432488 res!966470) b!1432490))

(assert (= (and b!1432490 res!966467) b!1432494))

(assert (= (and b!1432494 res!966465) b!1432496))

(assert (= (and b!1432496 res!966459) b!1432498))

(assert (= (and b!1432498 res!966466) b!1432497))

(assert (= (and b!1432497 res!966461) b!1432485))

(assert (= (and b!1432497 (not res!966471)) b!1432489))

(declare-fun m!1322357 () Bool)

(assert (=> b!1432493 m!1322357))

(declare-fun m!1322359 () Bool)

(assert (=> b!1432490 m!1322359))

(assert (=> b!1432490 m!1322359))

(declare-fun m!1322361 () Bool)

(assert (=> b!1432490 m!1322361))

(declare-fun m!1322363 () Bool)

(assert (=> b!1432490 m!1322363))

(declare-fun m!1322365 () Bool)

(assert (=> b!1432490 m!1322365))

(declare-fun m!1322367 () Bool)

(assert (=> b!1432486 m!1322367))

(assert (=> b!1432486 m!1322367))

(declare-fun m!1322369 () Bool)

(assert (=> b!1432486 m!1322369))

(declare-fun m!1322371 () Bool)

(assert (=> b!1432494 m!1322371))

(assert (=> b!1432494 m!1322371))

(declare-fun m!1322373 () Bool)

(assert (=> b!1432494 m!1322373))

(declare-fun m!1322375 () Bool)

(assert (=> b!1432487 m!1322375))

(assert (=> b!1432491 m!1322371))

(assert (=> b!1432491 m!1322371))

(declare-fun m!1322377 () Bool)

(assert (=> b!1432491 m!1322377))

(assert (=> b!1432497 m!1322363))

(declare-fun m!1322379 () Bool)

(assert (=> b!1432497 m!1322379))

(declare-fun m!1322381 () Bool)

(assert (=> b!1432497 m!1322381))

(declare-fun m!1322383 () Bool)

(assert (=> b!1432497 m!1322383))

(assert (=> b!1432497 m!1322371))

(declare-fun m!1322385 () Bool)

(assert (=> b!1432497 m!1322385))

(declare-fun m!1322387 () Bool)

(assert (=> b!1432489 m!1322387))

(assert (=> b!1432485 m!1322371))

(assert (=> b!1432485 m!1322371))

(declare-fun m!1322389 () Bool)

(assert (=> b!1432485 m!1322389))

(assert (=> b!1432488 m!1322371))

(assert (=> b!1432488 m!1322371))

(declare-fun m!1322391 () Bool)

(assert (=> b!1432488 m!1322391))

(assert (=> b!1432488 m!1322391))

(assert (=> b!1432488 m!1322371))

(declare-fun m!1322393 () Bool)

(assert (=> b!1432488 m!1322393))

(declare-fun m!1322395 () Bool)

(assert (=> b!1432496 m!1322395))

(declare-fun m!1322397 () Bool)

(assert (=> start!123598 m!1322397))

(declare-fun m!1322399 () Bool)

(assert (=> start!123598 m!1322399))

(push 1)

