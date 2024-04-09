; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126540 () Bool)

(assert start!126540)

(declare-fun b!1483391 () Bool)

(declare-fun res!1008387 () Bool)

(declare-fun e!831801 () Bool)

(assert (=> b!1483391 (=> (not res!1008387) (not e!831801))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483391 (= res!1008387 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!831808 () Bool)

(declare-datatypes ((array!99419 0))(
  ( (array!99420 (arr!47981 (Array (_ BitVec 32) (_ BitVec 64))) (size!48532 (_ BitVec 32))) )
))
(declare-fun lt!647382 () array!99419)

(declare-fun b!1483392 () Bool)

(declare-fun lt!647378 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12244 0))(
  ( (MissingZero!12244 (index!51367 (_ BitVec 32))) (Found!12244 (index!51368 (_ BitVec 32))) (Intermediate!12244 (undefined!13056 Bool) (index!51369 (_ BitVec 32)) (x!132955 (_ BitVec 32))) (Undefined!12244) (MissingVacant!12244 (index!51370 (_ BitVec 32))) )
))
(declare-fun lt!647379 () SeekEntryResult!12244)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99419 (_ BitVec 32)) SeekEntryResult!12244)

(assert (=> b!1483392 (= e!831808 (= lt!647379 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647378 lt!647382 mask!2687)))))

(declare-fun b!1483393 () Bool)

(declare-fun res!1008373 () Bool)

(declare-fun e!831804 () Bool)

(assert (=> b!1483393 (=> (not res!1008373) (not e!831804))))

(declare-fun a!2862 () array!99419)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1483393 (= res!1008373 (or (= (select (arr!47981 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47981 a!2862) intermediateBeforeIndex!19) (select (arr!47981 a!2862) j!93))))))

(declare-fun b!1483394 () Bool)

(declare-fun e!831800 () Bool)

(assert (=> b!1483394 (= e!831801 (not e!831800))))

(declare-fun res!1008379 () Bool)

(assert (=> b!1483394 (=> res!1008379 e!831800)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483394 (= res!1008379 (or (and (= (select (arr!47981 a!2862) index!646) (select (store (arr!47981 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47981 a!2862) index!646) (select (arr!47981 a!2862) j!93))) (= (select (arr!47981 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483394 e!831804))

(declare-fun res!1008385 () Bool)

(assert (=> b!1483394 (=> (not res!1008385) (not e!831804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99419 (_ BitVec 32)) Bool)

(assert (=> b!1483394 (= res!1008385 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49776 0))(
  ( (Unit!49777) )
))
(declare-fun lt!647380 () Unit!49776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49776)

(assert (=> b!1483394 (= lt!647380 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483395 () Bool)

(declare-fun res!1008380 () Bool)

(declare-fun e!831806 () Bool)

(assert (=> b!1483395 (=> (not res!1008380) (not e!831806))))

(assert (=> b!1483395 (= res!1008380 (and (= (size!48532 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48532 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48532 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483396 () Bool)

(assert (=> b!1483396 (= e!831800 true)))

(declare-fun lt!647383 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483396 (= lt!647383 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483397 () Bool)

(declare-fun res!1008374 () Bool)

(assert (=> b!1483397 (=> (not res!1008374) (not e!831806))))

(assert (=> b!1483397 (= res!1008374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483398 () Bool)

(declare-fun e!831803 () Bool)

(declare-fun e!831809 () Bool)

(assert (=> b!1483398 (= e!831803 e!831809)))

(declare-fun res!1008375 () Bool)

(assert (=> b!1483398 (=> (not res!1008375) (not e!831809))))

(declare-fun lt!647381 () SeekEntryResult!12244)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483398 (= res!1008375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47981 a!2862) j!93) mask!2687) (select (arr!47981 a!2862) j!93) a!2862 mask!2687) lt!647381))))

(assert (=> b!1483398 (= lt!647381 (Intermediate!12244 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!831802 () Bool)

(declare-fun b!1483399 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99419 (_ BitVec 32)) SeekEntryResult!12244)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99419 (_ BitVec 32)) SeekEntryResult!12244)

(assert (=> b!1483399 (= e!831802 (= (seekEntryOrOpen!0 lt!647378 lt!647382 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647378 lt!647382 mask!2687)))))

(declare-fun b!1483401 () Bool)

(declare-fun e!831807 () Bool)

(assert (=> b!1483401 (= e!831807 e!831802)))

(declare-fun res!1008371 () Bool)

(assert (=> b!1483401 (=> (not res!1008371) (not e!831802))))

(declare-fun lt!647377 () (_ BitVec 64))

(assert (=> b!1483401 (= res!1008371 (and (= index!646 intermediateAfterIndex!19) (= lt!647377 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483402 () Bool)

(assert (=> b!1483402 (= e!831804 e!831807)))

(declare-fun res!1008384 () Bool)

(assert (=> b!1483402 (=> res!1008384 e!831807)))

(assert (=> b!1483402 (= res!1008384 (or (and (= (select (arr!47981 a!2862) index!646) lt!647377) (= (select (arr!47981 a!2862) index!646) (select (arr!47981 a!2862) j!93))) (= (select (arr!47981 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483402 (= lt!647377 (select (store (arr!47981 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483403 () Bool)

(assert (=> b!1483403 (= e!831806 e!831803)))

(declare-fun res!1008372 () Bool)

(assert (=> b!1483403 (=> (not res!1008372) (not e!831803))))

(assert (=> b!1483403 (= res!1008372 (= (select (store (arr!47981 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483403 (= lt!647382 (array!99420 (store (arr!47981 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48532 a!2862)))))

(declare-fun b!1483404 () Bool)

(declare-fun res!1008383 () Bool)

(assert (=> b!1483404 (=> (not res!1008383) (not e!831806))))

(assert (=> b!1483404 (= res!1008383 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48532 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48532 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48532 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483405 () Bool)

(declare-fun res!1008377 () Bool)

(assert (=> b!1483405 (=> (not res!1008377) (not e!831809))))

(assert (=> b!1483405 (= res!1008377 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47981 a!2862) j!93) a!2862 mask!2687) lt!647381))))

(declare-fun b!1483406 () Bool)

(declare-fun res!1008386 () Bool)

(assert (=> b!1483406 (=> (not res!1008386) (not e!831801))))

(assert (=> b!1483406 (= res!1008386 e!831808)))

(declare-fun c!137036 () Bool)

(assert (=> b!1483406 (= c!137036 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483407 () Bool)

(declare-fun res!1008376 () Bool)

(assert (=> b!1483407 (=> (not res!1008376) (not e!831806))))

(declare-datatypes ((List!34662 0))(
  ( (Nil!34659) (Cons!34658 (h!36032 (_ BitVec 64)) (t!49363 List!34662)) )
))
(declare-fun arrayNoDuplicates!0 (array!99419 (_ BitVec 32) List!34662) Bool)

(assert (=> b!1483407 (= res!1008376 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34659))))

(declare-fun b!1483408 () Bool)

(declare-fun res!1008378 () Bool)

(assert (=> b!1483408 (=> (not res!1008378) (not e!831806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483408 (= res!1008378 (validKeyInArray!0 (select (arr!47981 a!2862) i!1006)))))

(declare-fun b!1483409 () Bool)

(declare-fun res!1008370 () Bool)

(assert (=> b!1483409 (=> (not res!1008370) (not e!831806))))

(assert (=> b!1483409 (= res!1008370 (validKeyInArray!0 (select (arr!47981 a!2862) j!93)))))

(declare-fun b!1483410 () Bool)

(assert (=> b!1483410 (= e!831809 e!831801)))

(declare-fun res!1008369 () Bool)

(assert (=> b!1483410 (=> (not res!1008369) (not e!831801))))

(assert (=> b!1483410 (= res!1008369 (= lt!647379 (Intermediate!12244 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483410 (= lt!647379 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647378 mask!2687) lt!647378 lt!647382 mask!2687))))

(assert (=> b!1483410 (= lt!647378 (select (store (arr!47981 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483411 () Bool)

(assert (=> b!1483411 (= e!831808 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647378 lt!647382 mask!2687) (seekEntryOrOpen!0 lt!647378 lt!647382 mask!2687)))))

(declare-fun b!1483400 () Bool)

(declare-fun res!1008381 () Bool)

(assert (=> b!1483400 (=> (not res!1008381) (not e!831804))))

(assert (=> b!1483400 (= res!1008381 (= (seekEntryOrOpen!0 (select (arr!47981 a!2862) j!93) a!2862 mask!2687) (Found!12244 j!93)))))

(declare-fun res!1008382 () Bool)

(assert (=> start!126540 (=> (not res!1008382) (not e!831806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126540 (= res!1008382 (validMask!0 mask!2687))))

(assert (=> start!126540 e!831806))

(assert (=> start!126540 true))

(declare-fun array_inv!36926 (array!99419) Bool)

(assert (=> start!126540 (array_inv!36926 a!2862)))

(assert (= (and start!126540 res!1008382) b!1483395))

(assert (= (and b!1483395 res!1008380) b!1483408))

(assert (= (and b!1483408 res!1008378) b!1483409))

(assert (= (and b!1483409 res!1008370) b!1483397))

(assert (= (and b!1483397 res!1008374) b!1483407))

(assert (= (and b!1483407 res!1008376) b!1483404))

(assert (= (and b!1483404 res!1008383) b!1483403))

(assert (= (and b!1483403 res!1008372) b!1483398))

(assert (= (and b!1483398 res!1008375) b!1483405))

(assert (= (and b!1483405 res!1008377) b!1483410))

(assert (= (and b!1483410 res!1008369) b!1483406))

(assert (= (and b!1483406 c!137036) b!1483392))

(assert (= (and b!1483406 (not c!137036)) b!1483411))

(assert (= (and b!1483406 res!1008386) b!1483391))

(assert (= (and b!1483391 res!1008387) b!1483394))

(assert (= (and b!1483394 res!1008385) b!1483400))

(assert (= (and b!1483400 res!1008381) b!1483393))

(assert (= (and b!1483393 res!1008373) b!1483402))

(assert (= (and b!1483402 (not res!1008384)) b!1483401))

(assert (= (and b!1483401 res!1008371) b!1483399))

(assert (= (and b!1483394 (not res!1008379)) b!1483396))

(declare-fun m!1368925 () Bool)

(assert (=> b!1483398 m!1368925))

(assert (=> b!1483398 m!1368925))

(declare-fun m!1368927 () Bool)

(assert (=> b!1483398 m!1368927))

(assert (=> b!1483398 m!1368927))

(assert (=> b!1483398 m!1368925))

(declare-fun m!1368929 () Bool)

(assert (=> b!1483398 m!1368929))

(assert (=> b!1483405 m!1368925))

(assert (=> b!1483405 m!1368925))

(declare-fun m!1368931 () Bool)

(assert (=> b!1483405 m!1368931))

(declare-fun m!1368933 () Bool)

(assert (=> b!1483407 m!1368933))

(declare-fun m!1368935 () Bool)

(assert (=> b!1483393 m!1368935))

(assert (=> b!1483393 m!1368925))

(declare-fun m!1368937 () Bool)

(assert (=> b!1483402 m!1368937))

(assert (=> b!1483402 m!1368925))

(declare-fun m!1368939 () Bool)

(assert (=> b!1483402 m!1368939))

(declare-fun m!1368941 () Bool)

(assert (=> b!1483402 m!1368941))

(declare-fun m!1368943 () Bool)

(assert (=> b!1483394 m!1368943))

(assert (=> b!1483394 m!1368939))

(assert (=> b!1483394 m!1368941))

(assert (=> b!1483394 m!1368937))

(declare-fun m!1368945 () Bool)

(assert (=> b!1483394 m!1368945))

(assert (=> b!1483394 m!1368925))

(declare-fun m!1368947 () Bool)

(assert (=> b!1483392 m!1368947))

(assert (=> b!1483409 m!1368925))

(assert (=> b!1483409 m!1368925))

(declare-fun m!1368949 () Bool)

(assert (=> b!1483409 m!1368949))

(declare-fun m!1368951 () Bool)

(assert (=> b!1483396 m!1368951))

(declare-fun m!1368953 () Bool)

(assert (=> b!1483411 m!1368953))

(declare-fun m!1368955 () Bool)

(assert (=> b!1483411 m!1368955))

(assert (=> b!1483403 m!1368939))

(declare-fun m!1368957 () Bool)

(assert (=> b!1483403 m!1368957))

(declare-fun m!1368959 () Bool)

(assert (=> b!1483397 m!1368959))

(declare-fun m!1368961 () Bool)

(assert (=> start!126540 m!1368961))

(declare-fun m!1368963 () Bool)

(assert (=> start!126540 m!1368963))

(declare-fun m!1368965 () Bool)

(assert (=> b!1483410 m!1368965))

(assert (=> b!1483410 m!1368965))

(declare-fun m!1368967 () Bool)

(assert (=> b!1483410 m!1368967))

(assert (=> b!1483410 m!1368939))

(declare-fun m!1368969 () Bool)

(assert (=> b!1483410 m!1368969))

(assert (=> b!1483400 m!1368925))

(assert (=> b!1483400 m!1368925))

(declare-fun m!1368971 () Bool)

(assert (=> b!1483400 m!1368971))

(assert (=> b!1483399 m!1368955))

(assert (=> b!1483399 m!1368953))

(declare-fun m!1368973 () Bool)

(assert (=> b!1483408 m!1368973))

(assert (=> b!1483408 m!1368973))

(declare-fun m!1368975 () Bool)

(assert (=> b!1483408 m!1368975))

(check-sat (not start!126540) (not b!1483411) (not b!1483405) (not b!1483407) (not b!1483398) (not b!1483394) (not b!1483410) (not b!1483399) (not b!1483400) (not b!1483409) (not b!1483396) (not b!1483397) (not b!1483408) (not b!1483392))
(check-sat)
