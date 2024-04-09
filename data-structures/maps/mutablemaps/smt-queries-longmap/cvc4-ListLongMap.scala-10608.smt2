; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124832 () Bool)

(assert start!124832)

(declare-fun b!1447657 () Bool)

(declare-fun res!979394 () Bool)

(declare-fun e!815335 () Bool)

(assert (=> b!1447657 (=> (not res!979394) (not e!815335))))

(declare-datatypes ((array!98197 0))(
  ( (array!98198 (arr!47382 (Array (_ BitVec 32) (_ BitVec 64))) (size!47933 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98197)

(declare-datatypes ((List!34063 0))(
  ( (Nil!34060) (Cons!34059 (h!35409 (_ BitVec 64)) (t!48764 List!34063)) )
))
(declare-fun arrayNoDuplicates!0 (array!98197 (_ BitVec 32) List!34063) Bool)

(assert (=> b!1447657 (= res!979394 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34060))))

(declare-fun b!1447658 () Bool)

(declare-fun res!979387 () Bool)

(assert (=> b!1447658 (=> (not res!979387) (not e!815335))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1447658 (= res!979387 (and (= (size!47933 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47933 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47933 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1447659 () Bool)

(declare-fun e!815334 () Bool)

(declare-fun e!815333 () Bool)

(assert (=> b!1447659 (= e!815334 (not e!815333))))

(declare-fun res!979390 () Bool)

(assert (=> b!1447659 (=> res!979390 e!815333)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1447659 (= res!979390 (or (and (= (select (arr!47382 a!2862) index!646) (select (store (arr!47382 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47382 a!2862) index!646) (select (arr!47382 a!2862) j!93))) (not (= (select (arr!47382 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47382 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815332 () Bool)

(assert (=> b!1447659 e!815332))

(declare-fun res!979396 () Bool)

(assert (=> b!1447659 (=> (not res!979396) (not e!815332))))

(declare-datatypes ((SeekEntryResult!11657 0))(
  ( (MissingZero!11657 (index!49019 (_ BitVec 32))) (Found!11657 (index!49020 (_ BitVec 32))) (Intermediate!11657 (undefined!12469 Bool) (index!49021 (_ BitVec 32)) (x!130693 (_ BitVec 32))) (Undefined!11657) (MissingVacant!11657 (index!49022 (_ BitVec 32))) )
))
(declare-fun lt!635215 () SeekEntryResult!11657)

(assert (=> b!1447659 (= res!979396 (and (= lt!635215 (Found!11657 j!93)) (or (= (select (arr!47382 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47382 a!2862) intermediateBeforeIndex!19) (select (arr!47382 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98197 (_ BitVec 32)) SeekEntryResult!11657)

(assert (=> b!1447659 (= lt!635215 (seekEntryOrOpen!0 (select (arr!47382 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98197 (_ BitVec 32)) Bool)

(assert (=> b!1447659 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48758 0))(
  ( (Unit!48759) )
))
(declare-fun lt!635217 () Unit!48758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98197 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48758)

(assert (=> b!1447659 (= lt!635217 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1447660 () Bool)

(declare-fun e!815328 () Bool)

(declare-fun e!815336 () Bool)

(assert (=> b!1447660 (= e!815328 e!815336)))

(declare-fun res!979386 () Bool)

(assert (=> b!1447660 (=> (not res!979386) (not e!815336))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98197 (_ BitVec 32)) SeekEntryResult!11657)

(assert (=> b!1447660 (= res!979386 (= lt!635215 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47382 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1447661 () Bool)

(declare-fun res!979391 () Bool)

(assert (=> b!1447661 (=> (not res!979391) (not e!815335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1447661 (= res!979391 (validKeyInArray!0 (select (arr!47382 a!2862) i!1006)))))

(declare-fun b!1447662 () Bool)

(declare-fun e!815330 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!635218 () array!98197)

(declare-fun lt!635214 () (_ BitVec 64))

(assert (=> b!1447662 (= e!815330 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635214 lt!635218 mask!2687) (seekEntryOrOpen!0 lt!635214 lt!635218 mask!2687)))))

(declare-fun b!1447663 () Bool)

(declare-fun res!979385 () Bool)

(declare-fun e!815327 () Bool)

(assert (=> b!1447663 (=> (not res!979385) (not e!815327))))

(declare-fun lt!635213 () SeekEntryResult!11657)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98197 (_ BitVec 32)) SeekEntryResult!11657)

(assert (=> b!1447663 (= res!979385 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47382 a!2862) j!93) a!2862 mask!2687) lt!635213))))

(declare-fun b!1447664 () Bool)

(assert (=> b!1447664 (= e!815327 e!815334)))

(declare-fun res!979397 () Bool)

(assert (=> b!1447664 (=> (not res!979397) (not e!815334))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!635212 () SeekEntryResult!11657)

(assert (=> b!1447664 (= res!979397 (= lt!635212 (Intermediate!11657 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1447664 (= lt!635212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635214 mask!2687) lt!635214 lt!635218 mask!2687))))

(assert (=> b!1447664 (= lt!635214 (select (store (arr!47382 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1447665 () Bool)

(declare-fun res!979401 () Bool)

(assert (=> b!1447665 (=> (not res!979401) (not e!815334))))

(assert (=> b!1447665 (= res!979401 e!815330)))

(declare-fun c!133649 () Bool)

(assert (=> b!1447665 (= c!133649 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1447666 () Bool)

(assert (=> b!1447666 (= e!815336 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1447667 () Bool)

(declare-fun res!979398 () Bool)

(assert (=> b!1447667 (=> (not res!979398) (not e!815335))))

(assert (=> b!1447667 (= res!979398 (validKeyInArray!0 (select (arr!47382 a!2862) j!93)))))

(declare-fun b!1447668 () Bool)

(assert (=> b!1447668 (= e!815330 (= lt!635212 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635214 lt!635218 mask!2687)))))

(declare-fun b!1447669 () Bool)

(declare-fun res!979399 () Bool)

(assert (=> b!1447669 (=> (not res!979399) (not e!815335))))

(assert (=> b!1447669 (= res!979399 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47933 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47933 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47933 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1447670 () Bool)

(declare-fun res!979395 () Bool)

(assert (=> b!1447670 (=> (not res!979395) (not e!815335))))

(assert (=> b!1447670 (= res!979395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1447671 () Bool)

(assert (=> b!1447671 (= e!815332 e!815328)))

(declare-fun res!979389 () Bool)

(assert (=> b!1447671 (=> res!979389 e!815328)))

(assert (=> b!1447671 (= res!979389 (or (and (= (select (arr!47382 a!2862) index!646) (select (store (arr!47382 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47382 a!2862) index!646) (select (arr!47382 a!2862) j!93))) (not (= (select (arr!47382 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1447672 () Bool)

(declare-fun e!815331 () Bool)

(assert (=> b!1447672 (= e!815331 e!815327)))

(declare-fun res!979392 () Bool)

(assert (=> b!1447672 (=> (not res!979392) (not e!815327))))

(assert (=> b!1447672 (= res!979392 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47382 a!2862) j!93) mask!2687) (select (arr!47382 a!2862) j!93) a!2862 mask!2687) lt!635213))))

(assert (=> b!1447672 (= lt!635213 (Intermediate!11657 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1447673 () Bool)

(declare-fun res!979393 () Bool)

(assert (=> b!1447673 (=> (not res!979393) (not e!815334))))

(assert (=> b!1447673 (= res!979393 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1447674 () Bool)

(assert (=> b!1447674 (= e!815335 e!815331)))

(declare-fun res!979388 () Bool)

(assert (=> b!1447674 (=> (not res!979388) (not e!815331))))

(assert (=> b!1447674 (= res!979388 (= (select (store (arr!47382 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1447674 (= lt!635218 (array!98198 (store (arr!47382 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47933 a!2862)))))

(declare-fun b!1447675 () Bool)

(assert (=> b!1447675 (= e!815333 true)))

(declare-fun lt!635216 () SeekEntryResult!11657)

(assert (=> b!1447675 (= lt!635216 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47382 a!2862) j!93) a!2862 mask!2687))))

(declare-fun res!979400 () Bool)

(assert (=> start!124832 (=> (not res!979400) (not e!815335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124832 (= res!979400 (validMask!0 mask!2687))))

(assert (=> start!124832 e!815335))

(assert (=> start!124832 true))

(declare-fun array_inv!36327 (array!98197) Bool)

(assert (=> start!124832 (array_inv!36327 a!2862)))

(assert (= (and start!124832 res!979400) b!1447658))

(assert (= (and b!1447658 res!979387) b!1447661))

(assert (= (and b!1447661 res!979391) b!1447667))

(assert (= (and b!1447667 res!979398) b!1447670))

(assert (= (and b!1447670 res!979395) b!1447657))

(assert (= (and b!1447657 res!979394) b!1447669))

(assert (= (and b!1447669 res!979399) b!1447674))

(assert (= (and b!1447674 res!979388) b!1447672))

(assert (= (and b!1447672 res!979392) b!1447663))

(assert (= (and b!1447663 res!979385) b!1447664))

(assert (= (and b!1447664 res!979397) b!1447665))

(assert (= (and b!1447665 c!133649) b!1447668))

(assert (= (and b!1447665 (not c!133649)) b!1447662))

(assert (= (and b!1447665 res!979401) b!1447673))

(assert (= (and b!1447673 res!979393) b!1447659))

(assert (= (and b!1447659 res!979396) b!1447671))

(assert (= (and b!1447671 (not res!979389)) b!1447660))

(assert (= (and b!1447660 res!979386) b!1447666))

(assert (= (and b!1447659 (not res!979390)) b!1447675))

(declare-fun m!1336515 () Bool)

(assert (=> b!1447671 m!1336515))

(declare-fun m!1336517 () Bool)

(assert (=> b!1447671 m!1336517))

(declare-fun m!1336519 () Bool)

(assert (=> b!1447671 m!1336519))

(declare-fun m!1336521 () Bool)

(assert (=> b!1447671 m!1336521))

(assert (=> b!1447660 m!1336521))

(assert (=> b!1447660 m!1336521))

(declare-fun m!1336523 () Bool)

(assert (=> b!1447660 m!1336523))

(declare-fun m!1336525 () Bool)

(assert (=> b!1447657 m!1336525))

(declare-fun m!1336527 () Bool)

(assert (=> b!1447661 m!1336527))

(assert (=> b!1447661 m!1336527))

(declare-fun m!1336529 () Bool)

(assert (=> b!1447661 m!1336529))

(declare-fun m!1336531 () Bool)

(assert (=> b!1447659 m!1336531))

(assert (=> b!1447659 m!1336517))

(declare-fun m!1336533 () Bool)

(assert (=> b!1447659 m!1336533))

(assert (=> b!1447659 m!1336519))

(assert (=> b!1447659 m!1336515))

(assert (=> b!1447659 m!1336521))

(declare-fun m!1336535 () Bool)

(assert (=> b!1447659 m!1336535))

(declare-fun m!1336537 () Bool)

(assert (=> b!1447659 m!1336537))

(assert (=> b!1447659 m!1336521))

(assert (=> b!1447674 m!1336517))

(declare-fun m!1336539 () Bool)

(assert (=> b!1447674 m!1336539))

(declare-fun m!1336541 () Bool)

(assert (=> b!1447664 m!1336541))

(assert (=> b!1447664 m!1336541))

(declare-fun m!1336543 () Bool)

(assert (=> b!1447664 m!1336543))

(assert (=> b!1447664 m!1336517))

(declare-fun m!1336545 () Bool)

(assert (=> b!1447664 m!1336545))

(assert (=> b!1447675 m!1336521))

(assert (=> b!1447675 m!1336521))

(declare-fun m!1336547 () Bool)

(assert (=> b!1447675 m!1336547))

(declare-fun m!1336549 () Bool)

(assert (=> b!1447668 m!1336549))

(declare-fun m!1336551 () Bool)

(assert (=> b!1447670 m!1336551))

(assert (=> b!1447667 m!1336521))

(assert (=> b!1447667 m!1336521))

(declare-fun m!1336553 () Bool)

(assert (=> b!1447667 m!1336553))

(assert (=> b!1447672 m!1336521))

(assert (=> b!1447672 m!1336521))

(declare-fun m!1336555 () Bool)

(assert (=> b!1447672 m!1336555))

(assert (=> b!1447672 m!1336555))

(assert (=> b!1447672 m!1336521))

(declare-fun m!1336557 () Bool)

(assert (=> b!1447672 m!1336557))

(assert (=> b!1447663 m!1336521))

(assert (=> b!1447663 m!1336521))

(declare-fun m!1336559 () Bool)

(assert (=> b!1447663 m!1336559))

(declare-fun m!1336561 () Bool)

(assert (=> start!124832 m!1336561))

(declare-fun m!1336563 () Bool)

(assert (=> start!124832 m!1336563))

(declare-fun m!1336565 () Bool)

(assert (=> b!1447662 m!1336565))

(declare-fun m!1336567 () Bool)

(assert (=> b!1447662 m!1336567))

(push 1)

