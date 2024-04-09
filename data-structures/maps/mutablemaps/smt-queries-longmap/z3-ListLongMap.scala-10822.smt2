; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126690 () Bool)

(assert start!126690)

(declare-fun b!1486418 () Bool)

(declare-fun res!1010874 () Bool)

(declare-fun e!833285 () Bool)

(assert (=> b!1486418 (=> (not res!1010874) (not e!833285))))

(declare-datatypes ((array!99506 0))(
  ( (array!99507 (arr!48023 (Array (_ BitVec 32) (_ BitVec 64))) (size!48574 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99506)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486418 (= res!1010874 (validKeyInArray!0 (select (arr!48023 a!2862) i!1006)))))

(declare-fun b!1486419 () Bool)

(declare-fun e!833292 () Bool)

(assert (=> b!1486419 (= e!833292 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648432 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486419 (= lt!648432 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486421 () Bool)

(declare-fun e!833286 () Bool)

(declare-fun e!833294 () Bool)

(assert (=> b!1486421 (= e!833286 e!833294)))

(declare-fun res!1010876 () Bool)

(assert (=> b!1486421 (=> (not res!1010876) (not e!833294))))

(declare-fun lt!648433 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486421 (= res!1010876 (and (= index!646 intermediateAfterIndex!19) (= lt!648433 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486422 () Bool)

(declare-fun res!1010886 () Bool)

(assert (=> b!1486422 (=> (not res!1010886) (not e!833285))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1486422 (= res!1010886 (and (= (size!48574 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48574 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48574 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486423 () Bool)

(declare-fun e!833289 () Bool)

(declare-fun e!833291 () Bool)

(assert (=> b!1486423 (= e!833289 e!833291)))

(declare-fun res!1010889 () Bool)

(assert (=> b!1486423 (=> (not res!1010889) (not e!833291))))

(declare-datatypes ((SeekEntryResult!12286 0))(
  ( (MissingZero!12286 (index!51535 (_ BitVec 32))) (Found!12286 (index!51536 (_ BitVec 32))) (Intermediate!12286 (undefined!13098 Bool) (index!51537 (_ BitVec 32)) (x!133121 (_ BitVec 32))) (Undefined!12286) (MissingVacant!12286 (index!51538 (_ BitVec 32))) )
))
(declare-fun lt!648431 () SeekEntryResult!12286)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99506 (_ BitVec 32)) SeekEntryResult!12286)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486423 (= res!1010889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48023 a!2862) j!93) mask!2687) (select (arr!48023 a!2862) j!93) a!2862 mask!2687) lt!648431))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486423 (= lt!648431 (Intermediate!12286 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486424 () Bool)

(declare-fun e!833290 () Bool)

(assert (=> b!1486424 (= e!833290 e!833286)))

(declare-fun res!1010873 () Bool)

(assert (=> b!1486424 (=> res!1010873 e!833286)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1486424 (= res!1010873 (or (and (= (select (arr!48023 a!2862) index!646) lt!648433) (= (select (arr!48023 a!2862) index!646) (select (arr!48023 a!2862) j!93))) (= (select (arr!48023 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486424 (= lt!648433 (select (store (arr!48023 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486425 () Bool)

(assert (=> b!1486425 (= e!833285 e!833289)))

(declare-fun res!1010881 () Bool)

(assert (=> b!1486425 (=> (not res!1010881) (not e!833289))))

(assert (=> b!1486425 (= res!1010881 (= (select (store (arr!48023 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!648429 () array!99506)

(assert (=> b!1486425 (= lt!648429 (array!99507 (store (arr!48023 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48574 a!2862)))))

(declare-fun b!1486426 () Bool)

(declare-fun e!833293 () Bool)

(assert (=> b!1486426 (= e!833291 e!833293)))

(declare-fun res!1010877 () Bool)

(assert (=> b!1486426 (=> (not res!1010877) (not e!833293))))

(declare-fun lt!648428 () SeekEntryResult!12286)

(assert (=> b!1486426 (= res!1010877 (= lt!648428 (Intermediate!12286 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!648427 () (_ BitVec 64))

(assert (=> b!1486426 (= lt!648428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648427 mask!2687) lt!648427 lt!648429 mask!2687))))

(assert (=> b!1486426 (= lt!648427 (select (store (arr!48023 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486427 () Bool)

(declare-fun res!1010872 () Bool)

(assert (=> b!1486427 (=> (not res!1010872) (not e!833285))))

(assert (=> b!1486427 (= res!1010872 (validKeyInArray!0 (select (arr!48023 a!2862) j!93)))))

(declare-fun b!1486428 () Bool)

(declare-fun res!1010875 () Bool)

(assert (=> b!1486428 (=> (not res!1010875) (not e!833291))))

(assert (=> b!1486428 (= res!1010875 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48023 a!2862) j!93) a!2862 mask!2687) lt!648431))))

(declare-fun b!1486429 () Bool)

(declare-fun res!1010882 () Bool)

(assert (=> b!1486429 (=> (not res!1010882) (not e!833290))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99506 (_ BitVec 32)) SeekEntryResult!12286)

(assert (=> b!1486429 (= res!1010882 (= (seekEntryOrOpen!0 (select (arr!48023 a!2862) j!93) a!2862 mask!2687) (Found!12286 j!93)))))

(declare-fun b!1486430 () Bool)

(declare-fun res!1010878 () Bool)

(assert (=> b!1486430 (=> (not res!1010878) (not e!833293))))

(assert (=> b!1486430 (= res!1010878 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486431 () Bool)

(declare-fun res!1010887 () Bool)

(assert (=> b!1486431 (=> (not res!1010887) (not e!833293))))

(declare-fun e!833288 () Bool)

(assert (=> b!1486431 (= res!1010887 e!833288)))

(declare-fun c!137300 () Bool)

(assert (=> b!1486431 (= c!137300 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486432 () Bool)

(declare-fun res!1010888 () Bool)

(assert (=> b!1486432 (=> (not res!1010888) (not e!833285))))

(assert (=> b!1486432 (= res!1010888 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48574 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48574 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48574 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486433 () Bool)

(assert (=> b!1486433 (= e!833288 (= lt!648428 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648427 lt!648429 mask!2687)))))

(declare-fun b!1486420 () Bool)

(declare-fun res!1010884 () Bool)

(assert (=> b!1486420 (=> (not res!1010884) (not e!833290))))

(assert (=> b!1486420 (= res!1010884 (or (= (select (arr!48023 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48023 a!2862) intermediateBeforeIndex!19) (select (arr!48023 a!2862) j!93))))))

(declare-fun res!1010880 () Bool)

(assert (=> start!126690 (=> (not res!1010880) (not e!833285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126690 (= res!1010880 (validMask!0 mask!2687))))

(assert (=> start!126690 e!833285))

(assert (=> start!126690 true))

(declare-fun array_inv!36968 (array!99506) Bool)

(assert (=> start!126690 (array_inv!36968 a!2862)))

(declare-fun b!1486434 () Bool)

(declare-fun res!1010883 () Bool)

(assert (=> b!1486434 (=> (not res!1010883) (not e!833285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99506 (_ BitVec 32)) Bool)

(assert (=> b!1486434 (= res!1010883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486435 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99506 (_ BitVec 32)) SeekEntryResult!12286)

(assert (=> b!1486435 (= e!833288 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648427 lt!648429 mask!2687) (seekEntryOrOpen!0 lt!648427 lt!648429 mask!2687)))))

(declare-fun b!1486436 () Bool)

(assert (=> b!1486436 (= e!833294 (= (seekEntryOrOpen!0 lt!648427 lt!648429 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648427 lt!648429 mask!2687)))))

(declare-fun b!1486437 () Bool)

(assert (=> b!1486437 (= e!833293 (not e!833292))))

(declare-fun res!1010871 () Bool)

(assert (=> b!1486437 (=> res!1010871 e!833292)))

(assert (=> b!1486437 (= res!1010871 (or (and (= (select (arr!48023 a!2862) index!646) (select (store (arr!48023 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48023 a!2862) index!646) (select (arr!48023 a!2862) j!93))) (= (select (arr!48023 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486437 e!833290))

(declare-fun res!1010879 () Bool)

(assert (=> b!1486437 (=> (not res!1010879) (not e!833290))))

(assert (=> b!1486437 (= res!1010879 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49860 0))(
  ( (Unit!49861) )
))
(declare-fun lt!648430 () Unit!49860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49860)

(assert (=> b!1486437 (= lt!648430 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486438 () Bool)

(declare-fun res!1010885 () Bool)

(assert (=> b!1486438 (=> (not res!1010885) (not e!833285))))

(declare-datatypes ((List!34704 0))(
  ( (Nil!34701) (Cons!34700 (h!36077 (_ BitVec 64)) (t!49405 List!34704)) )
))
(declare-fun arrayNoDuplicates!0 (array!99506 (_ BitVec 32) List!34704) Bool)

(assert (=> b!1486438 (= res!1010885 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34701))))

(assert (= (and start!126690 res!1010880) b!1486422))

(assert (= (and b!1486422 res!1010886) b!1486418))

(assert (= (and b!1486418 res!1010874) b!1486427))

(assert (= (and b!1486427 res!1010872) b!1486434))

(assert (= (and b!1486434 res!1010883) b!1486438))

(assert (= (and b!1486438 res!1010885) b!1486432))

(assert (= (and b!1486432 res!1010888) b!1486425))

(assert (= (and b!1486425 res!1010881) b!1486423))

(assert (= (and b!1486423 res!1010889) b!1486428))

(assert (= (and b!1486428 res!1010875) b!1486426))

(assert (= (and b!1486426 res!1010877) b!1486431))

(assert (= (and b!1486431 c!137300) b!1486433))

(assert (= (and b!1486431 (not c!137300)) b!1486435))

(assert (= (and b!1486431 res!1010887) b!1486430))

(assert (= (and b!1486430 res!1010878) b!1486437))

(assert (= (and b!1486437 res!1010879) b!1486429))

(assert (= (and b!1486429 res!1010882) b!1486420))

(assert (= (and b!1486420 res!1010884) b!1486424))

(assert (= (and b!1486424 (not res!1010873)) b!1486421))

(assert (= (and b!1486421 res!1010876) b!1486436))

(assert (= (and b!1486437 (not res!1010871)) b!1486419))

(declare-fun m!1371343 () Bool)

(assert (=> b!1486436 m!1371343))

(declare-fun m!1371345 () Bool)

(assert (=> b!1486436 m!1371345))

(declare-fun m!1371347 () Bool)

(assert (=> b!1486427 m!1371347))

(assert (=> b!1486427 m!1371347))

(declare-fun m!1371349 () Bool)

(assert (=> b!1486427 m!1371349))

(declare-fun m!1371351 () Bool)

(assert (=> b!1486424 m!1371351))

(assert (=> b!1486424 m!1371347))

(declare-fun m!1371353 () Bool)

(assert (=> b!1486424 m!1371353))

(declare-fun m!1371355 () Bool)

(assert (=> b!1486424 m!1371355))

(declare-fun m!1371357 () Bool)

(assert (=> start!126690 m!1371357))

(declare-fun m!1371359 () Bool)

(assert (=> start!126690 m!1371359))

(declare-fun m!1371361 () Bool)

(assert (=> b!1486420 m!1371361))

(assert (=> b!1486420 m!1371347))

(assert (=> b!1486423 m!1371347))

(assert (=> b!1486423 m!1371347))

(declare-fun m!1371363 () Bool)

(assert (=> b!1486423 m!1371363))

(assert (=> b!1486423 m!1371363))

(assert (=> b!1486423 m!1371347))

(declare-fun m!1371365 () Bool)

(assert (=> b!1486423 m!1371365))

(declare-fun m!1371367 () Bool)

(assert (=> b!1486433 m!1371367))

(declare-fun m!1371369 () Bool)

(assert (=> b!1486419 m!1371369))

(assert (=> b!1486425 m!1371353))

(declare-fun m!1371371 () Bool)

(assert (=> b!1486425 m!1371371))

(assert (=> b!1486429 m!1371347))

(assert (=> b!1486429 m!1371347))

(declare-fun m!1371373 () Bool)

(assert (=> b!1486429 m!1371373))

(declare-fun m!1371375 () Bool)

(assert (=> b!1486426 m!1371375))

(assert (=> b!1486426 m!1371375))

(declare-fun m!1371377 () Bool)

(assert (=> b!1486426 m!1371377))

(assert (=> b!1486426 m!1371353))

(declare-fun m!1371379 () Bool)

(assert (=> b!1486426 m!1371379))

(declare-fun m!1371381 () Bool)

(assert (=> b!1486437 m!1371381))

(assert (=> b!1486437 m!1371353))

(assert (=> b!1486437 m!1371355))

(assert (=> b!1486437 m!1371351))

(declare-fun m!1371383 () Bool)

(assert (=> b!1486437 m!1371383))

(assert (=> b!1486437 m!1371347))

(assert (=> b!1486428 m!1371347))

(assert (=> b!1486428 m!1371347))

(declare-fun m!1371385 () Bool)

(assert (=> b!1486428 m!1371385))

(declare-fun m!1371387 () Bool)

(assert (=> b!1486434 m!1371387))

(declare-fun m!1371389 () Bool)

(assert (=> b!1486418 m!1371389))

(assert (=> b!1486418 m!1371389))

(declare-fun m!1371391 () Bool)

(assert (=> b!1486418 m!1371391))

(declare-fun m!1371393 () Bool)

(assert (=> b!1486438 m!1371393))

(assert (=> b!1486435 m!1371345))

(assert (=> b!1486435 m!1371343))

(check-sat (not start!126690) (not b!1486419) (not b!1486436) (not b!1486428) (not b!1486418) (not b!1486426) (not b!1486433) (not b!1486438) (not b!1486427) (not b!1486429) (not b!1486437) (not b!1486435) (not b!1486423) (not b!1486434))
(check-sat)
