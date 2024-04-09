; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123550 () Bool)

(assert start!123550)

(declare-fun b!1431477 () Bool)

(declare-fun res!965454 () Bool)

(declare-fun e!808206 () Bool)

(assert (=> b!1431477 (=> (not res!965454) (not e!808206))))

(declare-datatypes ((array!97440 0))(
  ( (array!97441 (arr!47023 (Array (_ BitVec 32) (_ BitVec 64))) (size!47574 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97440)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431477 (= res!965454 (validKeyInArray!0 (select (arr!47023 a!2831) i!982)))))

(declare-fun b!1431478 () Bool)

(declare-fun e!808207 () Bool)

(declare-fun e!808208 () Bool)

(assert (=> b!1431478 (= e!808207 (not e!808208))))

(declare-fun res!965451 () Bool)

(assert (=> b!1431478 (=> res!965451 e!808208)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1431478 (= res!965451 (or (= (select (arr!47023 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47023 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47023 a!2831) index!585) (select (arr!47023 a!2831) j!81)) (= (select (store (arr!47023 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808210 () Bool)

(assert (=> b!1431478 e!808210))

(declare-fun res!965455 () Bool)

(assert (=> b!1431478 (=> (not res!965455) (not e!808210))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97440 (_ BitVec 32)) Bool)

(assert (=> b!1431478 (= res!965455 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48342 0))(
  ( (Unit!48343) )
))
(declare-fun lt!630159 () Unit!48342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48342)

(assert (=> b!1431478 (= lt!630159 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431479 () Bool)

(declare-fun res!965457 () Bool)

(assert (=> b!1431479 (=> (not res!965457) (not e!808207))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431479 (= res!965457 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431480 () Bool)

(declare-fun e!808209 () Bool)

(assert (=> b!1431480 (= e!808209 e!808207)))

(declare-fun res!965458 () Bool)

(assert (=> b!1431480 (=> (not res!965458) (not e!808207))))

(declare-datatypes ((SeekEntryResult!11324 0))(
  ( (MissingZero!11324 (index!47687 (_ BitVec 32))) (Found!11324 (index!47688 (_ BitVec 32))) (Intermediate!11324 (undefined!12136 Bool) (index!47689 (_ BitVec 32)) (x!129345 (_ BitVec 32))) (Undefined!11324) (MissingVacant!11324 (index!47690 (_ BitVec 32))) )
))
(declare-fun lt!630158 () SeekEntryResult!11324)

(declare-fun lt!630156 () array!97440)

(declare-fun lt!630155 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97440 (_ BitVec 32)) SeekEntryResult!11324)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431480 (= res!965458 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630155 mask!2608) lt!630155 lt!630156 mask!2608) lt!630158))))

(assert (=> b!1431480 (= lt!630158 (Intermediate!11324 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431480 (= lt!630155 (select (store (arr!47023 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431480 (= lt!630156 (array!97441 (store (arr!47023 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47574 a!2831)))))

(declare-fun b!1431481 () Bool)

(assert (=> b!1431481 (= e!808206 e!808209)))

(declare-fun res!965450 () Bool)

(assert (=> b!1431481 (=> (not res!965450) (not e!808209))))

(declare-fun lt!630157 () SeekEntryResult!11324)

(assert (=> b!1431481 (= res!965450 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47023 a!2831) j!81) mask!2608) (select (arr!47023 a!2831) j!81) a!2831 mask!2608) lt!630157))))

(assert (=> b!1431481 (= lt!630157 (Intermediate!11324 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431482 () Bool)

(assert (=> b!1431482 (= e!808208 true)))

(declare-fun lt!630160 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431482 (= lt!630160 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431483 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97440 (_ BitVec 32)) SeekEntryResult!11324)

(assert (=> b!1431483 (= e!808210 (= (seekEntryOrOpen!0 (select (arr!47023 a!2831) j!81) a!2831 mask!2608) (Found!11324 j!81)))))

(declare-fun b!1431484 () Bool)

(declare-fun res!965453 () Bool)

(assert (=> b!1431484 (=> (not res!965453) (not e!808206))))

(declare-datatypes ((List!33713 0))(
  ( (Nil!33710) (Cons!33709 (h!35032 (_ BitVec 64)) (t!48414 List!33713)) )
))
(declare-fun arrayNoDuplicates!0 (array!97440 (_ BitVec 32) List!33713) Bool)

(assert (=> b!1431484 (= res!965453 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33710))))

(declare-fun b!1431485 () Bool)

(declare-fun res!965461 () Bool)

(assert (=> b!1431485 (=> (not res!965461) (not e!808206))))

(assert (=> b!1431485 (= res!965461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431486 () Bool)

(declare-fun res!965462 () Bool)

(assert (=> b!1431486 (=> (not res!965462) (not e!808206))))

(assert (=> b!1431486 (= res!965462 (and (= (size!47574 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47574 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47574 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!965463 () Bool)

(assert (=> start!123550 (=> (not res!965463) (not e!808206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123550 (= res!965463 (validMask!0 mask!2608))))

(assert (=> start!123550 e!808206))

(assert (=> start!123550 true))

(declare-fun array_inv!35968 (array!97440) Bool)

(assert (=> start!123550 (array_inv!35968 a!2831)))

(declare-fun b!1431487 () Bool)

(declare-fun res!965460 () Bool)

(assert (=> b!1431487 (=> (not res!965460) (not e!808207))))

(assert (=> b!1431487 (= res!965460 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630155 lt!630156 mask!2608) lt!630158))))

(declare-fun b!1431488 () Bool)

(declare-fun res!965452 () Bool)

(assert (=> b!1431488 (=> (not res!965452) (not e!808206))))

(assert (=> b!1431488 (= res!965452 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47574 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47574 a!2831))))))

(declare-fun b!1431489 () Bool)

(declare-fun res!965456 () Bool)

(assert (=> b!1431489 (=> (not res!965456) (not e!808207))))

(assert (=> b!1431489 (= res!965456 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47023 a!2831) j!81) a!2831 mask!2608) lt!630157))))

(declare-fun b!1431490 () Bool)

(declare-fun res!965459 () Bool)

(assert (=> b!1431490 (=> (not res!965459) (not e!808206))))

(assert (=> b!1431490 (= res!965459 (validKeyInArray!0 (select (arr!47023 a!2831) j!81)))))

(assert (= (and start!123550 res!965463) b!1431486))

(assert (= (and b!1431486 res!965462) b!1431477))

(assert (= (and b!1431477 res!965454) b!1431490))

(assert (= (and b!1431490 res!965459) b!1431485))

(assert (= (and b!1431485 res!965461) b!1431484))

(assert (= (and b!1431484 res!965453) b!1431488))

(assert (= (and b!1431488 res!965452) b!1431481))

(assert (= (and b!1431481 res!965450) b!1431480))

(assert (= (and b!1431480 res!965458) b!1431489))

(assert (= (and b!1431489 res!965456) b!1431487))

(assert (= (and b!1431487 res!965460) b!1431479))

(assert (= (and b!1431479 res!965457) b!1431478))

(assert (= (and b!1431478 res!965455) b!1431483))

(assert (= (and b!1431478 (not res!965451)) b!1431482))

(declare-fun m!1321301 () Bool)

(assert (=> b!1431478 m!1321301))

(declare-fun m!1321303 () Bool)

(assert (=> b!1431478 m!1321303))

(declare-fun m!1321305 () Bool)

(assert (=> b!1431478 m!1321305))

(declare-fun m!1321307 () Bool)

(assert (=> b!1431478 m!1321307))

(declare-fun m!1321309 () Bool)

(assert (=> b!1431478 m!1321309))

(declare-fun m!1321311 () Bool)

(assert (=> b!1431478 m!1321311))

(declare-fun m!1321313 () Bool)

(assert (=> b!1431484 m!1321313))

(assert (=> b!1431483 m!1321309))

(assert (=> b!1431483 m!1321309))

(declare-fun m!1321315 () Bool)

(assert (=> b!1431483 m!1321315))

(declare-fun m!1321317 () Bool)

(assert (=> b!1431480 m!1321317))

(assert (=> b!1431480 m!1321317))

(declare-fun m!1321319 () Bool)

(assert (=> b!1431480 m!1321319))

(assert (=> b!1431480 m!1321301))

(declare-fun m!1321321 () Bool)

(assert (=> b!1431480 m!1321321))

(declare-fun m!1321323 () Bool)

(assert (=> b!1431487 m!1321323))

(declare-fun m!1321325 () Bool)

(assert (=> b!1431485 m!1321325))

(declare-fun m!1321327 () Bool)

(assert (=> b!1431482 m!1321327))

(declare-fun m!1321329 () Bool)

(assert (=> b!1431477 m!1321329))

(assert (=> b!1431477 m!1321329))

(declare-fun m!1321331 () Bool)

(assert (=> b!1431477 m!1321331))

(assert (=> b!1431489 m!1321309))

(assert (=> b!1431489 m!1321309))

(declare-fun m!1321333 () Bool)

(assert (=> b!1431489 m!1321333))

(assert (=> b!1431490 m!1321309))

(assert (=> b!1431490 m!1321309))

(declare-fun m!1321335 () Bool)

(assert (=> b!1431490 m!1321335))

(declare-fun m!1321337 () Bool)

(assert (=> start!123550 m!1321337))

(declare-fun m!1321339 () Bool)

(assert (=> start!123550 m!1321339))

(assert (=> b!1431481 m!1321309))

(assert (=> b!1431481 m!1321309))

(declare-fun m!1321341 () Bool)

(assert (=> b!1431481 m!1321341))

(assert (=> b!1431481 m!1321341))

(assert (=> b!1431481 m!1321309))

(declare-fun m!1321343 () Bool)

(assert (=> b!1431481 m!1321343))

(push 1)

