; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126692 () Bool)

(assert start!126692)

(declare-fun b!1486481 () Bool)

(declare-fun res!1010928 () Bool)

(declare-fun e!833324 () Bool)

(assert (=> b!1486481 (=> (not res!1010928) (not e!833324))))

(declare-datatypes ((array!99508 0))(
  ( (array!99509 (arr!48024 (Array (_ BitVec 32) (_ BitVec 64))) (size!48575 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99508)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99508 (_ BitVec 32)) Bool)

(assert (=> b!1486481 (= res!1010928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486482 () Bool)

(declare-fun res!1010942 () Bool)

(assert (=> b!1486482 (=> (not res!1010942) (not e!833324))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1486482 (= res!1010942 (and (= (size!48575 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48575 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48575 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486483 () Bool)

(declare-fun res!1010944 () Bool)

(assert (=> b!1486483 (=> (not res!1010944) (not e!833324))))

(declare-datatypes ((List!34705 0))(
  ( (Nil!34702) (Cons!34701 (h!36078 (_ BitVec 64)) (t!49406 List!34705)) )
))
(declare-fun arrayNoDuplicates!0 (array!99508 (_ BitVec 32) List!34705) Bool)

(assert (=> b!1486483 (= res!1010944 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34702))))

(declare-fun b!1486485 () Bool)

(declare-fun res!1010934 () Bool)

(assert (=> b!1486485 (=> (not res!1010934) (not e!833324))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486485 (= res!1010934 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48575 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48575 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48575 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486486 () Bool)

(declare-fun res!1010940 () Bool)

(declare-fun e!833318 () Bool)

(assert (=> b!1486486 (=> (not res!1010940) (not e!833318))))

(assert (=> b!1486486 (= res!1010940 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486487 () Bool)

(declare-fun lt!648452 () (_ BitVec 64))

(declare-fun lt!648450 () array!99508)

(declare-fun e!833315 () Bool)

(declare-datatypes ((SeekEntryResult!12287 0))(
  ( (MissingZero!12287 (index!51539 (_ BitVec 32))) (Found!12287 (index!51540 (_ BitVec 32))) (Intermediate!12287 (undefined!13099 Bool) (index!51541 (_ BitVec 32)) (x!133122 (_ BitVec 32))) (Undefined!12287) (MissingVacant!12287 (index!51542 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99508 (_ BitVec 32)) SeekEntryResult!12287)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99508 (_ BitVec 32)) SeekEntryResult!12287)

(assert (=> b!1486487 (= e!833315 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648452 lt!648450 mask!2687) (seekEntryOrOpen!0 lt!648452 lt!648450 mask!2687)))))

(declare-fun b!1486488 () Bool)

(declare-fun e!833316 () Bool)

(assert (=> b!1486488 (= e!833318 (not e!833316))))

(declare-fun res!1010941 () Bool)

(assert (=> b!1486488 (=> res!1010941 e!833316)))

(assert (=> b!1486488 (= res!1010941 (or (and (= (select (arr!48024 a!2862) index!646) (select (store (arr!48024 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48024 a!2862) index!646) (select (arr!48024 a!2862) j!93))) (= (select (arr!48024 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!833321 () Bool)

(assert (=> b!1486488 e!833321))

(declare-fun res!1010933 () Bool)

(assert (=> b!1486488 (=> (not res!1010933) (not e!833321))))

(assert (=> b!1486488 (= res!1010933 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49862 0))(
  ( (Unit!49863) )
))
(declare-fun lt!648453 () Unit!49862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49862)

(assert (=> b!1486488 (= lt!648453 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!648449 () SeekEntryResult!12287)

(declare-fun b!1486489 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99508 (_ BitVec 32)) SeekEntryResult!12287)

(assert (=> b!1486489 (= e!833315 (= lt!648449 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648452 lt!648450 mask!2687)))))

(declare-fun b!1486490 () Bool)

(declare-fun res!1010937 () Bool)

(declare-fun e!833317 () Bool)

(assert (=> b!1486490 (=> (not res!1010937) (not e!833317))))

(declare-fun lt!648451 () SeekEntryResult!12287)

(assert (=> b!1486490 (= res!1010937 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48024 a!2862) j!93) a!2862 mask!2687) lt!648451))))

(declare-fun b!1486491 () Bool)

(declare-fun res!1010945 () Bool)

(assert (=> b!1486491 (=> (not res!1010945) (not e!833324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486491 (= res!1010945 (validKeyInArray!0 (select (arr!48024 a!2862) j!93)))))

(declare-fun b!1486492 () Bool)

(assert (=> b!1486492 (= e!833316 true)))

(declare-fun lt!648454 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486492 (= lt!648454 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun e!833319 () Bool)

(declare-fun b!1486493 () Bool)

(assert (=> b!1486493 (= e!833319 (= (seekEntryOrOpen!0 lt!648452 lt!648450 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648452 lt!648450 mask!2687)))))

(declare-fun b!1486494 () Bool)

(declare-fun res!1010943 () Bool)

(assert (=> b!1486494 (=> (not res!1010943) (not e!833318))))

(assert (=> b!1486494 (= res!1010943 e!833315)))

(declare-fun c!137303 () Bool)

(assert (=> b!1486494 (= c!137303 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486495 () Bool)

(declare-fun res!1010932 () Bool)

(assert (=> b!1486495 (=> (not res!1010932) (not e!833321))))

(assert (=> b!1486495 (= res!1010932 (= (seekEntryOrOpen!0 (select (arr!48024 a!2862) j!93) a!2862 mask!2687) (Found!12287 j!93)))))

(declare-fun b!1486496 () Bool)

(declare-fun res!1010929 () Bool)

(assert (=> b!1486496 (=> (not res!1010929) (not e!833324))))

(assert (=> b!1486496 (= res!1010929 (validKeyInArray!0 (select (arr!48024 a!2862) i!1006)))))

(declare-fun b!1486484 () Bool)

(declare-fun e!833320 () Bool)

(assert (=> b!1486484 (= e!833320 e!833317)))

(declare-fun res!1010931 () Bool)

(assert (=> b!1486484 (=> (not res!1010931) (not e!833317))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486484 (= res!1010931 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48024 a!2862) j!93) mask!2687) (select (arr!48024 a!2862) j!93) a!2862 mask!2687) lt!648451))))

(assert (=> b!1486484 (= lt!648451 (Intermediate!12287 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1010939 () Bool)

(assert (=> start!126692 (=> (not res!1010939) (not e!833324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126692 (= res!1010939 (validMask!0 mask!2687))))

(assert (=> start!126692 e!833324))

(assert (=> start!126692 true))

(declare-fun array_inv!36969 (array!99508) Bool)

(assert (=> start!126692 (array_inv!36969 a!2862)))

(declare-fun b!1486497 () Bool)

(assert (=> b!1486497 (= e!833324 e!833320)))

(declare-fun res!1010938 () Bool)

(assert (=> b!1486497 (=> (not res!1010938) (not e!833320))))

(assert (=> b!1486497 (= res!1010938 (= (select (store (arr!48024 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486497 (= lt!648450 (array!99509 (store (arr!48024 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48575 a!2862)))))

(declare-fun b!1486498 () Bool)

(assert (=> b!1486498 (= e!833317 e!833318)))

(declare-fun res!1010946 () Bool)

(assert (=> b!1486498 (=> (not res!1010946) (not e!833318))))

(assert (=> b!1486498 (= res!1010946 (= lt!648449 (Intermediate!12287 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1486498 (= lt!648449 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648452 mask!2687) lt!648452 lt!648450 mask!2687))))

(assert (=> b!1486498 (= lt!648452 (select (store (arr!48024 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486499 () Bool)

(declare-fun e!833323 () Bool)

(assert (=> b!1486499 (= e!833321 e!833323)))

(declare-fun res!1010930 () Bool)

(assert (=> b!1486499 (=> res!1010930 e!833323)))

(declare-fun lt!648448 () (_ BitVec 64))

(assert (=> b!1486499 (= res!1010930 (or (and (= (select (arr!48024 a!2862) index!646) lt!648448) (= (select (arr!48024 a!2862) index!646) (select (arr!48024 a!2862) j!93))) (= (select (arr!48024 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486499 (= lt!648448 (select (store (arr!48024 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486500 () Bool)

(assert (=> b!1486500 (= e!833323 e!833319)))

(declare-fun res!1010936 () Bool)

(assert (=> b!1486500 (=> (not res!1010936) (not e!833319))))

(assert (=> b!1486500 (= res!1010936 (and (= index!646 intermediateAfterIndex!19) (= lt!648448 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486501 () Bool)

(declare-fun res!1010935 () Bool)

(assert (=> b!1486501 (=> (not res!1010935) (not e!833321))))

(assert (=> b!1486501 (= res!1010935 (or (= (select (arr!48024 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48024 a!2862) intermediateBeforeIndex!19) (select (arr!48024 a!2862) j!93))))))

(assert (= (and start!126692 res!1010939) b!1486482))

(assert (= (and b!1486482 res!1010942) b!1486496))

(assert (= (and b!1486496 res!1010929) b!1486491))

(assert (= (and b!1486491 res!1010945) b!1486481))

(assert (= (and b!1486481 res!1010928) b!1486483))

(assert (= (and b!1486483 res!1010944) b!1486485))

(assert (= (and b!1486485 res!1010934) b!1486497))

(assert (= (and b!1486497 res!1010938) b!1486484))

(assert (= (and b!1486484 res!1010931) b!1486490))

(assert (= (and b!1486490 res!1010937) b!1486498))

(assert (= (and b!1486498 res!1010946) b!1486494))

(assert (= (and b!1486494 c!137303) b!1486489))

(assert (= (and b!1486494 (not c!137303)) b!1486487))

(assert (= (and b!1486494 res!1010943) b!1486486))

(assert (= (and b!1486486 res!1010940) b!1486488))

(assert (= (and b!1486488 res!1010933) b!1486495))

(assert (= (and b!1486495 res!1010932) b!1486501))

(assert (= (and b!1486501 res!1010935) b!1486499))

(assert (= (and b!1486499 (not res!1010930)) b!1486500))

(assert (= (and b!1486500 res!1010936) b!1486493))

(assert (= (and b!1486488 (not res!1010941)) b!1486492))

(declare-fun m!1371395 () Bool)

(assert (=> b!1486484 m!1371395))

(assert (=> b!1486484 m!1371395))

(declare-fun m!1371397 () Bool)

(assert (=> b!1486484 m!1371397))

(assert (=> b!1486484 m!1371397))

(assert (=> b!1486484 m!1371395))

(declare-fun m!1371399 () Bool)

(assert (=> b!1486484 m!1371399))

(declare-fun m!1371401 () Bool)

(assert (=> b!1486487 m!1371401))

(declare-fun m!1371403 () Bool)

(assert (=> b!1486487 m!1371403))

(declare-fun m!1371405 () Bool)

(assert (=> b!1486489 m!1371405))

(assert (=> b!1486491 m!1371395))

(assert (=> b!1486491 m!1371395))

(declare-fun m!1371407 () Bool)

(assert (=> b!1486491 m!1371407))

(assert (=> b!1486493 m!1371403))

(assert (=> b!1486493 m!1371401))

(declare-fun m!1371409 () Bool)

(assert (=> b!1486483 m!1371409))

(declare-fun m!1371411 () Bool)

(assert (=> b!1486497 m!1371411))

(declare-fun m!1371413 () Bool)

(assert (=> b!1486497 m!1371413))

(declare-fun m!1371415 () Bool)

(assert (=> b!1486481 m!1371415))

(declare-fun m!1371417 () Bool)

(assert (=> start!126692 m!1371417))

(declare-fun m!1371419 () Bool)

(assert (=> start!126692 m!1371419))

(assert (=> b!1486495 m!1371395))

(assert (=> b!1486495 m!1371395))

(declare-fun m!1371421 () Bool)

(assert (=> b!1486495 m!1371421))

(declare-fun m!1371423 () Bool)

(assert (=> b!1486496 m!1371423))

(assert (=> b!1486496 m!1371423))

(declare-fun m!1371425 () Bool)

(assert (=> b!1486496 m!1371425))

(declare-fun m!1371427 () Bool)

(assert (=> b!1486492 m!1371427))

(declare-fun m!1371429 () Bool)

(assert (=> b!1486499 m!1371429))

(assert (=> b!1486499 m!1371395))

(assert (=> b!1486499 m!1371411))

(declare-fun m!1371431 () Bool)

(assert (=> b!1486499 m!1371431))

(assert (=> b!1486490 m!1371395))

(assert (=> b!1486490 m!1371395))

(declare-fun m!1371433 () Bool)

(assert (=> b!1486490 m!1371433))

(declare-fun m!1371435 () Bool)

(assert (=> b!1486501 m!1371435))

(assert (=> b!1486501 m!1371395))

(declare-fun m!1371437 () Bool)

(assert (=> b!1486498 m!1371437))

(assert (=> b!1486498 m!1371437))

(declare-fun m!1371439 () Bool)

(assert (=> b!1486498 m!1371439))

(assert (=> b!1486498 m!1371411))

(declare-fun m!1371441 () Bool)

(assert (=> b!1486498 m!1371441))

(declare-fun m!1371443 () Bool)

(assert (=> b!1486488 m!1371443))

(assert (=> b!1486488 m!1371411))

(assert (=> b!1486488 m!1371431))

(assert (=> b!1486488 m!1371429))

(declare-fun m!1371445 () Bool)

(assert (=> b!1486488 m!1371445))

(assert (=> b!1486488 m!1371395))

(push 1)

