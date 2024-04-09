; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123596 () Bool)

(assert start!123596)

(declare-fun b!1432443 () Bool)

(declare-fun e!808620 () Bool)

(declare-fun e!808622 () Bool)

(assert (=> b!1432443 (= e!808620 e!808622)))

(declare-fun res!966428 () Bool)

(assert (=> b!1432443 (=> (not res!966428) (not e!808622))))

(declare-datatypes ((SeekEntryResult!11347 0))(
  ( (MissingZero!11347 (index!47779 (_ BitVec 32))) (Found!11347 (index!47780 (_ BitVec 32))) (Intermediate!11347 (undefined!12159 Bool) (index!47781 (_ BitVec 32)) (x!129424 (_ BitVec 32))) (Undefined!11347) (MissingVacant!11347 (index!47782 (_ BitVec 32))) )
))
(declare-fun lt!630572 () SeekEntryResult!11347)

(declare-datatypes ((array!97486 0))(
  ( (array!97487 (arr!47046 (Array (_ BitVec 32) (_ BitVec 64))) (size!47597 (_ BitVec 32))) )
))
(declare-fun lt!630569 () array!97486)

(declare-fun lt!630573 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97486 (_ BitVec 32)) SeekEntryResult!11347)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432443 (= res!966428 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630573 mask!2608) lt!630573 lt!630569 mask!2608) lt!630572))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1432443 (= lt!630572 (Intermediate!11347 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun a!2831 () array!97486)

(assert (=> b!1432443 (= lt!630573 (select (store (arr!47046 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432443 (= lt!630569 (array!97487 (store (arr!47046 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47597 a!2831)))))

(declare-fun b!1432444 () Bool)

(declare-fun res!966417 () Bool)

(declare-fun e!808624 () Bool)

(assert (=> b!1432444 (=> (not res!966417) (not e!808624))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432444 (= res!966417 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47597 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47597 a!2831))))))

(declare-fun b!1432445 () Bool)

(declare-fun res!966424 () Bool)

(assert (=> b!1432445 (=> (not res!966424) (not e!808624))))

(declare-datatypes ((List!33736 0))(
  ( (Nil!33733) (Cons!33732 (h!35055 (_ BitVec 64)) (t!48437 List!33736)) )
))
(declare-fun arrayNoDuplicates!0 (array!97486 (_ BitVec 32) List!33736) Bool)

(assert (=> b!1432445 (= res!966424 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33733))))

(declare-fun b!1432446 () Bool)

(declare-fun res!966423 () Bool)

(assert (=> b!1432446 (=> (not res!966423) (not e!808622))))

(declare-fun lt!630571 () SeekEntryResult!11347)

(assert (=> b!1432446 (= res!966423 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47046 a!2831) j!81) a!2831 mask!2608) lt!630571))))

(declare-fun b!1432447 () Bool)

(declare-fun res!966422 () Bool)

(assert (=> b!1432447 (=> (not res!966422) (not e!808624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97486 (_ BitVec 32)) Bool)

(assert (=> b!1432447 (= res!966422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432449 () Bool)

(assert (=> b!1432449 (= e!808624 e!808620)))

(declare-fun res!966420 () Bool)

(assert (=> b!1432449 (=> (not res!966420) (not e!808620))))

(assert (=> b!1432449 (= res!966420 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47046 a!2831) j!81) mask!2608) (select (arr!47046 a!2831) j!81) a!2831 mask!2608) lt!630571))))

(assert (=> b!1432449 (= lt!630571 (Intermediate!11347 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432450 () Bool)

(declare-fun res!966429 () Bool)

(assert (=> b!1432450 (=> (not res!966429) (not e!808624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432450 (= res!966429 (validKeyInArray!0 (select (arr!47046 a!2831) j!81)))))

(declare-fun b!1432451 () Bool)

(declare-fun res!966418 () Bool)

(assert (=> b!1432451 (=> (not res!966418) (not e!808622))))

(assert (=> b!1432451 (= res!966418 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630573 lt!630569 mask!2608) lt!630572))))

(declare-fun b!1432452 () Bool)

(declare-fun e!808623 () Bool)

(assert (=> b!1432452 (= e!808622 (not e!808623))))

(declare-fun res!966426 () Bool)

(assert (=> b!1432452 (=> res!966426 e!808623)))

(assert (=> b!1432452 (= res!966426 (or (= (select (arr!47046 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47046 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47046 a!2831) index!585) (select (arr!47046 a!2831) j!81)) (= (select (store (arr!47046 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808621 () Bool)

(assert (=> b!1432452 e!808621))

(declare-fun res!966421 () Bool)

(assert (=> b!1432452 (=> (not res!966421) (not e!808621))))

(assert (=> b!1432452 (= res!966421 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48388 0))(
  ( (Unit!48389) )
))
(declare-fun lt!630574 () Unit!48388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48388)

(assert (=> b!1432452 (= lt!630574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!966427 () Bool)

(assert (=> start!123596 (=> (not res!966427) (not e!808624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123596 (= res!966427 (validMask!0 mask!2608))))

(assert (=> start!123596 e!808624))

(assert (=> start!123596 true))

(declare-fun array_inv!35991 (array!97486) Bool)

(assert (=> start!123596 (array_inv!35991 a!2831)))

(declare-fun b!1432448 () Bool)

(declare-fun res!966419 () Bool)

(assert (=> b!1432448 (=> (not res!966419) (not e!808624))))

(assert (=> b!1432448 (= res!966419 (and (= (size!47597 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47597 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47597 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432453 () Bool)

(declare-fun res!966425 () Bool)

(assert (=> b!1432453 (=> (not res!966425) (not e!808622))))

(assert (=> b!1432453 (= res!966425 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432454 () Bool)

(assert (=> b!1432454 (= e!808623 true)))

(declare-fun lt!630570 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432454 (= lt!630570 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432455 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97486 (_ BitVec 32)) SeekEntryResult!11347)

(assert (=> b!1432455 (= e!808621 (= (seekEntryOrOpen!0 (select (arr!47046 a!2831) j!81) a!2831 mask!2608) (Found!11347 j!81)))))

(declare-fun b!1432456 () Bool)

(declare-fun res!966416 () Bool)

(assert (=> b!1432456 (=> (not res!966416) (not e!808624))))

(assert (=> b!1432456 (= res!966416 (validKeyInArray!0 (select (arr!47046 a!2831) i!982)))))

(assert (= (and start!123596 res!966427) b!1432448))

(assert (= (and b!1432448 res!966419) b!1432456))

(assert (= (and b!1432456 res!966416) b!1432450))

(assert (= (and b!1432450 res!966429) b!1432447))

(assert (= (and b!1432447 res!966422) b!1432445))

(assert (= (and b!1432445 res!966424) b!1432444))

(assert (= (and b!1432444 res!966417) b!1432449))

(assert (= (and b!1432449 res!966420) b!1432443))

(assert (= (and b!1432443 res!966428) b!1432446))

(assert (= (and b!1432446 res!966423) b!1432451))

(assert (= (and b!1432451 res!966418) b!1432453))

(assert (= (and b!1432453 res!966425) b!1432452))

(assert (= (and b!1432452 res!966421) b!1432455))

(assert (= (and b!1432452 (not res!966426)) b!1432454))

(declare-fun m!1322313 () Bool)

(assert (=> b!1432445 m!1322313))

(declare-fun m!1322315 () Bool)

(assert (=> b!1432446 m!1322315))

(assert (=> b!1432446 m!1322315))

(declare-fun m!1322317 () Bool)

(assert (=> b!1432446 m!1322317))

(declare-fun m!1322319 () Bool)

(assert (=> b!1432451 m!1322319))

(declare-fun m!1322321 () Bool)

(assert (=> b!1432447 m!1322321))

(declare-fun m!1322323 () Bool)

(assert (=> b!1432456 m!1322323))

(assert (=> b!1432456 m!1322323))

(declare-fun m!1322325 () Bool)

(assert (=> b!1432456 m!1322325))

(declare-fun m!1322327 () Bool)

(assert (=> b!1432454 m!1322327))

(assert (=> b!1432449 m!1322315))

(assert (=> b!1432449 m!1322315))

(declare-fun m!1322329 () Bool)

(assert (=> b!1432449 m!1322329))

(assert (=> b!1432449 m!1322329))

(assert (=> b!1432449 m!1322315))

(declare-fun m!1322331 () Bool)

(assert (=> b!1432449 m!1322331))

(assert (=> b!1432455 m!1322315))

(assert (=> b!1432455 m!1322315))

(declare-fun m!1322333 () Bool)

(assert (=> b!1432455 m!1322333))

(declare-fun m!1322335 () Bool)

(assert (=> start!123596 m!1322335))

(declare-fun m!1322337 () Bool)

(assert (=> start!123596 m!1322337))

(assert (=> b!1432450 m!1322315))

(assert (=> b!1432450 m!1322315))

(declare-fun m!1322339 () Bool)

(assert (=> b!1432450 m!1322339))

(declare-fun m!1322341 () Bool)

(assert (=> b!1432452 m!1322341))

(declare-fun m!1322343 () Bool)

(assert (=> b!1432452 m!1322343))

(declare-fun m!1322345 () Bool)

(assert (=> b!1432452 m!1322345))

(declare-fun m!1322347 () Bool)

(assert (=> b!1432452 m!1322347))

(assert (=> b!1432452 m!1322315))

(declare-fun m!1322349 () Bool)

(assert (=> b!1432452 m!1322349))

(declare-fun m!1322351 () Bool)

(assert (=> b!1432443 m!1322351))

(assert (=> b!1432443 m!1322351))

(declare-fun m!1322353 () Bool)

(assert (=> b!1432443 m!1322353))

(assert (=> b!1432443 m!1322341))

(declare-fun m!1322355 () Bool)

(assert (=> b!1432443 m!1322355))

(push 1)

