; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126208 () Bool)

(assert start!126208)

(declare-fun b!1477376 () Bool)

(declare-fun res!1003609 () Bool)

(declare-fun e!828840 () Bool)

(assert (=> b!1477376 (=> (not res!1003609) (not e!828840))))

(declare-datatypes ((array!99231 0))(
  ( (array!99232 (arr!47890 (Array (_ BitVec 32) (_ BitVec 64))) (size!48441 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99231)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99231 (_ BitVec 32)) Bool)

(assert (=> b!1477376 (= res!1003609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1003615 () Bool)

(assert (=> start!126208 (=> (not res!1003615) (not e!828840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126208 (= res!1003615 (validMask!0 mask!2687))))

(assert (=> start!126208 e!828840))

(assert (=> start!126208 true))

(declare-fun array_inv!36835 (array!99231) Bool)

(assert (=> start!126208 (array_inv!36835 a!2862)))

(declare-fun b!1477377 () Bool)

(declare-fun e!828842 () Bool)

(assert (=> b!1477377 (= e!828842 (not true))))

(declare-fun e!828841 () Bool)

(assert (=> b!1477377 e!828841))

(declare-fun res!1003613 () Bool)

(assert (=> b!1477377 (=> (not res!1003613) (not e!828841))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12153 0))(
  ( (MissingZero!12153 (index!51003 (_ BitVec 32))) (Found!12153 (index!51004 (_ BitVec 32))) (Intermediate!12153 (undefined!12965 Bool) (index!51005 (_ BitVec 32)) (x!132603 (_ BitVec 32))) (Undefined!12153) (MissingVacant!12153 (index!51006 (_ BitVec 32))) )
))
(declare-fun lt!645293 () SeekEntryResult!12153)

(assert (=> b!1477377 (= res!1003613 (and (= lt!645293 (Found!12153 j!93)) (or (= (select (arr!47890 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47890 a!2862) intermediateBeforeIndex!19) (select (arr!47890 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99231 (_ BitVec 32)) SeekEntryResult!12153)

(assert (=> b!1477377 (= lt!645293 (seekEntryOrOpen!0 (select (arr!47890 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477377 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49594 0))(
  ( (Unit!49595) )
))
(declare-fun lt!645297 () Unit!49594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99231 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49594)

(assert (=> b!1477377 (= lt!645297 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477378 () Bool)

(declare-fun res!1003618 () Bool)

(assert (=> b!1477378 (=> (not res!1003618) (not e!828840))))

(declare-datatypes ((List!34571 0))(
  ( (Nil!34568) (Cons!34567 (h!35935 (_ BitVec 64)) (t!49272 List!34571)) )
))
(declare-fun arrayNoDuplicates!0 (array!99231 (_ BitVec 32) List!34571) Bool)

(assert (=> b!1477378 (= res!1003618 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34568))))

(declare-fun b!1477379 () Bool)

(declare-fun res!1003622 () Bool)

(assert (=> b!1477379 (=> (not res!1003622) (not e!828840))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477379 (= res!1003622 (and (= (size!48441 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48441 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48441 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477380 () Bool)

(declare-fun res!1003610 () Bool)

(assert (=> b!1477380 (=> (not res!1003610) (not e!828840))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477380 (= res!1003610 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48441 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48441 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48441 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477381 () Bool)

(declare-fun e!828843 () Bool)

(assert (=> b!1477381 (= e!828841 e!828843)))

(declare-fun res!1003616 () Bool)

(assert (=> b!1477381 (=> res!1003616 e!828843)))

(assert (=> b!1477381 (= res!1003616 (or (and (= (select (arr!47890 a!2862) index!646) (select (store (arr!47890 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47890 a!2862) index!646) (select (arr!47890 a!2862) j!93))) (not (= (select (arr!47890 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477382 () Bool)

(declare-fun res!1003619 () Bool)

(assert (=> b!1477382 (=> (not res!1003619) (not e!828842))))

(declare-fun e!828838 () Bool)

(assert (=> b!1477382 (= res!1003619 e!828838)))

(declare-fun c!136406 () Bool)

(assert (=> b!1477382 (= c!136406 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477383 () Bool)

(declare-fun res!1003608 () Bool)

(assert (=> b!1477383 (=> (not res!1003608) (not e!828840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477383 (= res!1003608 (validKeyInArray!0 (select (arr!47890 a!2862) i!1006)))))

(declare-fun b!1477384 () Bool)

(declare-fun res!1003614 () Bool)

(assert (=> b!1477384 (=> (not res!1003614) (not e!828840))))

(assert (=> b!1477384 (= res!1003614 (validKeyInArray!0 (select (arr!47890 a!2862) j!93)))))

(declare-fun b!1477385 () Bool)

(declare-fun e!828839 () Bool)

(assert (=> b!1477385 (= e!828843 e!828839)))

(declare-fun res!1003611 () Bool)

(assert (=> b!1477385 (=> (not res!1003611) (not e!828839))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99231 (_ BitVec 32)) SeekEntryResult!12153)

(assert (=> b!1477385 (= res!1003611 (= lt!645293 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47890 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477386 () Bool)

(assert (=> b!1477386 (= e!828839 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477387 () Bool)

(declare-fun e!828844 () Bool)

(assert (=> b!1477387 (= e!828844 e!828842)))

(declare-fun res!1003612 () Bool)

(assert (=> b!1477387 (=> (not res!1003612) (not e!828842))))

(declare-fun lt!645298 () SeekEntryResult!12153)

(assert (=> b!1477387 (= res!1003612 (= lt!645298 (Intermediate!12153 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645294 () (_ BitVec 64))

(declare-fun lt!645296 () array!99231)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99231 (_ BitVec 32)) SeekEntryResult!12153)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477387 (= lt!645298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645294 mask!2687) lt!645294 lt!645296 mask!2687))))

(assert (=> b!1477387 (= lt!645294 (select (store (arr!47890 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477388 () Bool)

(declare-fun e!828837 () Bool)

(assert (=> b!1477388 (= e!828837 e!828844)))

(declare-fun res!1003621 () Bool)

(assert (=> b!1477388 (=> (not res!1003621) (not e!828844))))

(declare-fun lt!645295 () SeekEntryResult!12153)

(assert (=> b!1477388 (= res!1003621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47890 a!2862) j!93) mask!2687) (select (arr!47890 a!2862) j!93) a!2862 mask!2687) lt!645295))))

(assert (=> b!1477388 (= lt!645295 (Intermediate!12153 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477389 () Bool)

(assert (=> b!1477389 (= e!828838 (= lt!645298 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645294 lt!645296 mask!2687)))))

(declare-fun b!1477390 () Bool)

(assert (=> b!1477390 (= e!828838 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645294 lt!645296 mask!2687) (seekEntryOrOpen!0 lt!645294 lt!645296 mask!2687)))))

(declare-fun b!1477391 () Bool)

(declare-fun res!1003620 () Bool)

(assert (=> b!1477391 (=> (not res!1003620) (not e!828842))))

(assert (=> b!1477391 (= res!1003620 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477392 () Bool)

(assert (=> b!1477392 (= e!828840 e!828837)))

(declare-fun res!1003623 () Bool)

(assert (=> b!1477392 (=> (not res!1003623) (not e!828837))))

(assert (=> b!1477392 (= res!1003623 (= (select (store (arr!47890 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477392 (= lt!645296 (array!99232 (store (arr!47890 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48441 a!2862)))))

(declare-fun b!1477393 () Bool)

(declare-fun res!1003617 () Bool)

(assert (=> b!1477393 (=> (not res!1003617) (not e!828844))))

(assert (=> b!1477393 (= res!1003617 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47890 a!2862) j!93) a!2862 mask!2687) lt!645295))))

(assert (= (and start!126208 res!1003615) b!1477379))

(assert (= (and b!1477379 res!1003622) b!1477383))

(assert (= (and b!1477383 res!1003608) b!1477384))

(assert (= (and b!1477384 res!1003614) b!1477376))

(assert (= (and b!1477376 res!1003609) b!1477378))

(assert (= (and b!1477378 res!1003618) b!1477380))

(assert (= (and b!1477380 res!1003610) b!1477392))

(assert (= (and b!1477392 res!1003623) b!1477388))

(assert (= (and b!1477388 res!1003621) b!1477393))

(assert (= (and b!1477393 res!1003617) b!1477387))

(assert (= (and b!1477387 res!1003612) b!1477382))

(assert (= (and b!1477382 c!136406) b!1477389))

(assert (= (and b!1477382 (not c!136406)) b!1477390))

(assert (= (and b!1477382 res!1003619) b!1477391))

(assert (= (and b!1477391 res!1003620) b!1477377))

(assert (= (and b!1477377 res!1003613) b!1477381))

(assert (= (and b!1477381 (not res!1003616)) b!1477385))

(assert (= (and b!1477385 res!1003611) b!1477386))

(declare-fun m!1363383 () Bool)

(assert (=> b!1477376 m!1363383))

(declare-fun m!1363385 () Bool)

(assert (=> b!1477377 m!1363385))

(declare-fun m!1363387 () Bool)

(assert (=> b!1477377 m!1363387))

(declare-fun m!1363389 () Bool)

(assert (=> b!1477377 m!1363389))

(declare-fun m!1363391 () Bool)

(assert (=> b!1477377 m!1363391))

(declare-fun m!1363393 () Bool)

(assert (=> b!1477377 m!1363393))

(assert (=> b!1477377 m!1363389))

(declare-fun m!1363395 () Bool)

(assert (=> b!1477387 m!1363395))

(assert (=> b!1477387 m!1363395))

(declare-fun m!1363397 () Bool)

(assert (=> b!1477387 m!1363397))

(declare-fun m!1363399 () Bool)

(assert (=> b!1477387 m!1363399))

(declare-fun m!1363401 () Bool)

(assert (=> b!1477387 m!1363401))

(declare-fun m!1363403 () Bool)

(assert (=> start!126208 m!1363403))

(declare-fun m!1363405 () Bool)

(assert (=> start!126208 m!1363405))

(declare-fun m!1363407 () Bool)

(assert (=> b!1477383 m!1363407))

(assert (=> b!1477383 m!1363407))

(declare-fun m!1363409 () Bool)

(assert (=> b!1477383 m!1363409))

(assert (=> b!1477392 m!1363399))

(declare-fun m!1363411 () Bool)

(assert (=> b!1477392 m!1363411))

(declare-fun m!1363413 () Bool)

(assert (=> b!1477381 m!1363413))

(assert (=> b!1477381 m!1363399))

(declare-fun m!1363415 () Bool)

(assert (=> b!1477381 m!1363415))

(assert (=> b!1477381 m!1363389))

(assert (=> b!1477385 m!1363389))

(assert (=> b!1477385 m!1363389))

(declare-fun m!1363417 () Bool)

(assert (=> b!1477385 m!1363417))

(assert (=> b!1477384 m!1363389))

(assert (=> b!1477384 m!1363389))

(declare-fun m!1363419 () Bool)

(assert (=> b!1477384 m!1363419))

(declare-fun m!1363421 () Bool)

(assert (=> b!1477390 m!1363421))

(declare-fun m!1363423 () Bool)

(assert (=> b!1477390 m!1363423))

(declare-fun m!1363425 () Bool)

(assert (=> b!1477378 m!1363425))

(declare-fun m!1363427 () Bool)

(assert (=> b!1477389 m!1363427))

(assert (=> b!1477388 m!1363389))

(assert (=> b!1477388 m!1363389))

(declare-fun m!1363429 () Bool)

(assert (=> b!1477388 m!1363429))

(assert (=> b!1477388 m!1363429))

(assert (=> b!1477388 m!1363389))

(declare-fun m!1363431 () Bool)

(assert (=> b!1477388 m!1363431))

(assert (=> b!1477393 m!1363389))

(assert (=> b!1477393 m!1363389))

(declare-fun m!1363433 () Bool)

(assert (=> b!1477393 m!1363433))

(push 1)

