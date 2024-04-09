; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126284 () Bool)

(assert start!126284)

(declare-fun b!1479453 () Bool)

(declare-fun res!1005459 () Bool)

(declare-fun e!829884 () Bool)

(assert (=> b!1479453 (=> (not res!1005459) (not e!829884))))

(declare-fun e!829888 () Bool)

(assert (=> b!1479453 (= res!1005459 e!829888)))

(declare-fun c!136520 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479453 (= c!136520 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479454 () Bool)

(declare-fun res!1005464 () Bool)

(declare-fun e!829883 () Bool)

(assert (=> b!1479454 (=> (not res!1005464) (not e!829883))))

(declare-datatypes ((array!99307 0))(
  ( (array!99308 (arr!47928 (Array (_ BitVec 32) (_ BitVec 64))) (size!48479 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99307)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479454 (= res!1005464 (validKeyInArray!0 (select (arr!47928 a!2862) i!1006)))))

(declare-fun b!1479455 () Bool)

(declare-fun e!829889 () Bool)

(assert (=> b!1479455 (= e!829889 e!829884)))

(declare-fun res!1005458 () Bool)

(assert (=> b!1479455 (=> (not res!1005458) (not e!829884))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12191 0))(
  ( (MissingZero!12191 (index!51155 (_ BitVec 32))) (Found!12191 (index!51156 (_ BitVec 32))) (Intermediate!12191 (undefined!13003 Bool) (index!51157 (_ BitVec 32)) (x!132737 (_ BitVec 32))) (Undefined!12191) (MissingVacant!12191 (index!51158 (_ BitVec 32))) )
))
(declare-fun lt!646004 () SeekEntryResult!12191)

(assert (=> b!1479455 (= res!1005458 (= lt!646004 (Intermediate!12191 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646006 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!646003 () array!99307)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99307 (_ BitVec 32)) SeekEntryResult!12191)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479455 (= lt!646004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646006 mask!2687) lt!646006 lt!646003 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1479455 (= lt!646006 (select (store (arr!47928 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1479456 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!829882 () Bool)

(assert (=> b!1479456 (= e!829882 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479457 () Bool)

(declare-fun e!829881 () Bool)

(assert (=> b!1479457 (= e!829881 true)))

(declare-fun lt!646005 () SeekEntryResult!12191)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99307 (_ BitVec 32)) SeekEntryResult!12191)

(assert (=> b!1479457 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646006 lt!646003 mask!2687) lt!646005)))

(declare-datatypes ((Unit!49670 0))(
  ( (Unit!49671) )
))
(declare-fun lt!646002 () Unit!49670)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49670)

(assert (=> b!1479457 (= lt!646002 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479458 () Bool)

(declare-fun res!1005470 () Bool)

(assert (=> b!1479458 (=> (not res!1005470) (not e!829883))))

(assert (=> b!1479458 (= res!1005470 (and (= (size!48479 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48479 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48479 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1005460 () Bool)

(assert (=> start!126284 (=> (not res!1005460) (not e!829883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126284 (= res!1005460 (validMask!0 mask!2687))))

(assert (=> start!126284 e!829883))

(assert (=> start!126284 true))

(declare-fun array_inv!36873 (array!99307) Bool)

(assert (=> start!126284 (array_inv!36873 a!2862)))

(declare-fun b!1479459 () Bool)

(declare-fun e!829880 () Bool)

(assert (=> b!1479459 (= e!829883 e!829880)))

(declare-fun res!1005465 () Bool)

(assert (=> b!1479459 (=> (not res!1005465) (not e!829880))))

(assert (=> b!1479459 (= res!1005465 (= (select (store (arr!47928 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479459 (= lt!646003 (array!99308 (store (arr!47928 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48479 a!2862)))))

(declare-fun b!1479460 () Bool)

(declare-fun res!1005463 () Bool)

(assert (=> b!1479460 (=> (not res!1005463) (not e!829884))))

(assert (=> b!1479460 (= res!1005463 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479461 () Bool)

(assert (=> b!1479461 (= e!829884 (not e!829881))))

(declare-fun res!1005462 () Bool)

(assert (=> b!1479461 (=> res!1005462 e!829881)))

(assert (=> b!1479461 (= res!1005462 (or (and (= (select (arr!47928 a!2862) index!646) (select (store (arr!47928 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47928 a!2862) index!646) (select (arr!47928 a!2862) j!93))) (not (= (select (arr!47928 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47928 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!829885 () Bool)

(assert (=> b!1479461 e!829885))

(declare-fun res!1005469 () Bool)

(assert (=> b!1479461 (=> (not res!1005469) (not e!829885))))

(declare-fun lt!646009 () SeekEntryResult!12191)

(assert (=> b!1479461 (= res!1005469 (and (= lt!646009 lt!646005) (or (= (select (arr!47928 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47928 a!2862) intermediateBeforeIndex!19) (select (arr!47928 a!2862) j!93)))))))

(assert (=> b!1479461 (= lt!646005 (Found!12191 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99307 (_ BitVec 32)) SeekEntryResult!12191)

(assert (=> b!1479461 (= lt!646009 (seekEntryOrOpen!0 (select (arr!47928 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99307 (_ BitVec 32)) Bool)

(assert (=> b!1479461 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646008 () Unit!49670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49670)

(assert (=> b!1479461 (= lt!646008 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479462 () Bool)

(declare-fun res!1005461 () Bool)

(assert (=> b!1479462 (=> (not res!1005461) (not e!829889))))

(declare-fun lt!646007 () SeekEntryResult!12191)

(assert (=> b!1479462 (= res!1005461 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47928 a!2862) j!93) a!2862 mask!2687) lt!646007))))

(declare-fun b!1479463 () Bool)

(assert (=> b!1479463 (= e!829880 e!829889)))

(declare-fun res!1005474 () Bool)

(assert (=> b!1479463 (=> (not res!1005474) (not e!829889))))

(assert (=> b!1479463 (= res!1005474 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47928 a!2862) j!93) mask!2687) (select (arr!47928 a!2862) j!93) a!2862 mask!2687) lt!646007))))

(assert (=> b!1479463 (= lt!646007 (Intermediate!12191 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479464 () Bool)

(declare-fun res!1005466 () Bool)

(assert (=> b!1479464 (=> (not res!1005466) (not e!829883))))

(declare-datatypes ((List!34609 0))(
  ( (Nil!34606) (Cons!34605 (h!35973 (_ BitVec 64)) (t!49310 List!34609)) )
))
(declare-fun arrayNoDuplicates!0 (array!99307 (_ BitVec 32) List!34609) Bool)

(assert (=> b!1479464 (= res!1005466 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34606))))

(declare-fun b!1479465 () Bool)

(declare-fun res!1005468 () Bool)

(assert (=> b!1479465 (=> (not res!1005468) (not e!829883))))

(assert (=> b!1479465 (= res!1005468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479466 () Bool)

(declare-fun res!1005473 () Bool)

(assert (=> b!1479466 (=> (not res!1005473) (not e!829883))))

(assert (=> b!1479466 (= res!1005473 (validKeyInArray!0 (select (arr!47928 a!2862) j!93)))))

(declare-fun b!1479467 () Bool)

(declare-fun res!1005457 () Bool)

(assert (=> b!1479467 (=> (not res!1005457) (not e!829883))))

(assert (=> b!1479467 (= res!1005457 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48479 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48479 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48479 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479468 () Bool)

(declare-fun res!1005471 () Bool)

(assert (=> b!1479468 (=> res!1005471 e!829881)))

(assert (=> b!1479468 (= res!1005471 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47928 a!2862) j!93) a!2862 mask!2687) lt!646005)))))

(declare-fun b!1479469 () Bool)

(declare-fun e!829887 () Bool)

(assert (=> b!1479469 (= e!829887 e!829882)))

(declare-fun res!1005467 () Bool)

(assert (=> b!1479469 (=> (not res!1005467) (not e!829882))))

(assert (=> b!1479469 (= res!1005467 (= lt!646009 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47928 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479470 () Bool)

(assert (=> b!1479470 (= e!829888 (= lt!646004 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646006 lt!646003 mask!2687)))))

(declare-fun b!1479471 () Bool)

(assert (=> b!1479471 (= e!829888 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646006 lt!646003 mask!2687) (seekEntryOrOpen!0 lt!646006 lt!646003 mask!2687)))))

(declare-fun b!1479472 () Bool)

(assert (=> b!1479472 (= e!829885 e!829887)))

(declare-fun res!1005472 () Bool)

(assert (=> b!1479472 (=> res!1005472 e!829887)))

(assert (=> b!1479472 (= res!1005472 (or (and (= (select (arr!47928 a!2862) index!646) (select (store (arr!47928 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47928 a!2862) index!646) (select (arr!47928 a!2862) j!93))) (not (= (select (arr!47928 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!126284 res!1005460) b!1479458))

(assert (= (and b!1479458 res!1005470) b!1479454))

(assert (= (and b!1479454 res!1005464) b!1479466))

(assert (= (and b!1479466 res!1005473) b!1479465))

(assert (= (and b!1479465 res!1005468) b!1479464))

(assert (= (and b!1479464 res!1005466) b!1479467))

(assert (= (and b!1479467 res!1005457) b!1479459))

(assert (= (and b!1479459 res!1005465) b!1479463))

(assert (= (and b!1479463 res!1005474) b!1479462))

(assert (= (and b!1479462 res!1005461) b!1479455))

(assert (= (and b!1479455 res!1005458) b!1479453))

(assert (= (and b!1479453 c!136520) b!1479470))

(assert (= (and b!1479453 (not c!136520)) b!1479471))

(assert (= (and b!1479453 res!1005459) b!1479460))

(assert (= (and b!1479460 res!1005463) b!1479461))

(assert (= (and b!1479461 res!1005469) b!1479472))

(assert (= (and b!1479472 (not res!1005472)) b!1479469))

(assert (= (and b!1479469 res!1005467) b!1479456))

(assert (= (and b!1479461 (not res!1005462)) b!1479468))

(assert (= (and b!1479468 (not res!1005471)) b!1479457))

(declare-fun m!1365373 () Bool)

(assert (=> b!1479468 m!1365373))

(assert (=> b!1479468 m!1365373))

(declare-fun m!1365375 () Bool)

(assert (=> b!1479468 m!1365375))

(declare-fun m!1365377 () Bool)

(assert (=> b!1479454 m!1365377))

(assert (=> b!1479454 m!1365377))

(declare-fun m!1365379 () Bool)

(assert (=> b!1479454 m!1365379))

(declare-fun m!1365381 () Bool)

(assert (=> b!1479464 m!1365381))

(declare-fun m!1365383 () Bool)

(assert (=> b!1479471 m!1365383))

(declare-fun m!1365385 () Bool)

(assert (=> b!1479471 m!1365385))

(assert (=> b!1479466 m!1365373))

(assert (=> b!1479466 m!1365373))

(declare-fun m!1365387 () Bool)

(assert (=> b!1479466 m!1365387))

(declare-fun m!1365389 () Bool)

(assert (=> b!1479472 m!1365389))

(declare-fun m!1365391 () Bool)

(assert (=> b!1479472 m!1365391))

(declare-fun m!1365393 () Bool)

(assert (=> b!1479472 m!1365393))

(assert (=> b!1479472 m!1365373))

(assert (=> b!1479469 m!1365373))

(assert (=> b!1479469 m!1365373))

(declare-fun m!1365395 () Bool)

(assert (=> b!1479469 m!1365395))

(declare-fun m!1365397 () Bool)

(assert (=> start!126284 m!1365397))

(declare-fun m!1365399 () Bool)

(assert (=> start!126284 m!1365399))

(declare-fun m!1365401 () Bool)

(assert (=> b!1479465 m!1365401))

(assert (=> b!1479457 m!1365383))

(declare-fun m!1365403 () Bool)

(assert (=> b!1479457 m!1365403))

(declare-fun m!1365405 () Bool)

(assert (=> b!1479455 m!1365405))

(assert (=> b!1479455 m!1365405))

(declare-fun m!1365407 () Bool)

(assert (=> b!1479455 m!1365407))

(assert (=> b!1479455 m!1365391))

(declare-fun m!1365409 () Bool)

(assert (=> b!1479455 m!1365409))

(declare-fun m!1365411 () Bool)

(assert (=> b!1479461 m!1365411))

(assert (=> b!1479461 m!1365391))

(declare-fun m!1365413 () Bool)

(assert (=> b!1479461 m!1365413))

(assert (=> b!1479461 m!1365393))

(assert (=> b!1479461 m!1365389))

(assert (=> b!1479461 m!1365373))

(declare-fun m!1365415 () Bool)

(assert (=> b!1479461 m!1365415))

(declare-fun m!1365417 () Bool)

(assert (=> b!1479461 m!1365417))

(assert (=> b!1479461 m!1365373))

(assert (=> b!1479459 m!1365391))

(declare-fun m!1365419 () Bool)

(assert (=> b!1479459 m!1365419))

(declare-fun m!1365421 () Bool)

(assert (=> b!1479470 m!1365421))

(assert (=> b!1479462 m!1365373))

(assert (=> b!1479462 m!1365373))

(declare-fun m!1365423 () Bool)

(assert (=> b!1479462 m!1365423))

(assert (=> b!1479463 m!1365373))

(assert (=> b!1479463 m!1365373))

(declare-fun m!1365425 () Bool)

(assert (=> b!1479463 m!1365425))

(assert (=> b!1479463 m!1365425))

(assert (=> b!1479463 m!1365373))

(declare-fun m!1365427 () Bool)

(assert (=> b!1479463 m!1365427))

(push 1)

