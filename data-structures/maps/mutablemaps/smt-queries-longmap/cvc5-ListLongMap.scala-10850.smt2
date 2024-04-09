; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127054 () Bool)

(assert start!127054)

(declare-fun b!1492649 () Bool)

(declare-fun e!836244 () Bool)

(declare-fun e!836239 () Bool)

(assert (=> b!1492649 (= e!836244 e!836239)))

(declare-fun res!1015558 () Bool)

(assert (=> b!1492649 (=> (not res!1015558) (not e!836239))))

(declare-datatypes ((array!99681 0))(
  ( (array!99682 (arr!48106 (Array (_ BitVec 32) (_ BitVec 64))) (size!48657 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99681)

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12369 0))(
  ( (MissingZero!12369 (index!51867 (_ BitVec 32))) (Found!12369 (index!51868 (_ BitVec 32))) (Intermediate!12369 (undefined!13181 Bool) (index!51869 (_ BitVec 32)) (x!133464 (_ BitVec 32))) (Undefined!12369) (MissingVacant!12369 (index!51870 (_ BitVec 32))) )
))
(declare-fun lt!650688 () SeekEntryResult!12369)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99681 (_ BitVec 32)) SeekEntryResult!12369)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492649 (= res!1015558 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48106 a!2862) j!93) mask!2687) (select (arr!48106 a!2862) j!93) a!2862 mask!2687) lt!650688))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492649 (= lt!650688 (Intermediate!12369 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492650 () Bool)

(declare-fun res!1015556 () Bool)

(declare-fun e!836240 () Bool)

(assert (=> b!1492650 (=> (not res!1015556) (not e!836240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492650 (= res!1015556 (validKeyInArray!0 (select (arr!48106 a!2862) j!93)))))

(declare-fun b!1492651 () Bool)

(declare-fun res!1015564 () Bool)

(assert (=> b!1492651 (=> (not res!1015564) (not e!836240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99681 (_ BitVec 32)) Bool)

(assert (=> b!1492651 (= res!1015564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492652 () Bool)

(declare-fun e!836246 () Bool)

(declare-fun e!836242 () Bool)

(assert (=> b!1492652 (= e!836246 (not e!836242))))

(declare-fun res!1015565 () Bool)

(assert (=> b!1492652 (=> res!1015565 e!836242)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1492652 (= res!1015565 (or (and (= (select (arr!48106 a!2862) index!646) (select (store (arr!48106 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48106 a!2862) index!646) (select (arr!48106 a!2862) j!93))) (= (select (arr!48106 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836245 () Bool)

(assert (=> b!1492652 e!836245))

(declare-fun res!1015552 () Bool)

(assert (=> b!1492652 (=> (not res!1015552) (not e!836245))))

(assert (=> b!1492652 (= res!1015552 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50026 0))(
  ( (Unit!50027) )
))
(declare-fun lt!650689 () Unit!50026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50026)

(assert (=> b!1492652 (= lt!650689 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492653 () Bool)

(declare-fun res!1015555 () Bool)

(assert (=> b!1492653 (=> (not res!1015555) (not e!836239))))

(assert (=> b!1492653 (= res!1015555 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48106 a!2862) j!93) a!2862 mask!2687) lt!650688))))

(declare-fun b!1492654 () Bool)

(declare-fun res!1015560 () Bool)

(assert (=> b!1492654 (=> (not res!1015560) (not e!836240))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1492654 (= res!1015560 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48657 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48657 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48657 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492655 () Bool)

(assert (=> b!1492655 (= e!836242 true)))

(declare-fun lt!650687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492655 (= lt!650687 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492656 () Bool)

(declare-fun res!1015563 () Bool)

(assert (=> b!1492656 (=> (not res!1015563) (not e!836246))))

(assert (=> b!1492656 (= res!1015563 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492657 () Bool)

(assert (=> b!1492657 (= e!836240 e!836244)))

(declare-fun res!1015561 () Bool)

(assert (=> b!1492657 (=> (not res!1015561) (not e!836244))))

(assert (=> b!1492657 (= res!1015561 (= (select (store (arr!48106 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650692 () array!99681)

(assert (=> b!1492657 (= lt!650692 (array!99682 (store (arr!48106 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48657 a!2862)))))

(declare-fun b!1492658 () Bool)

(declare-fun res!1015551 () Bool)

(assert (=> b!1492658 (=> (not res!1015551) (not e!836240))))

(assert (=> b!1492658 (= res!1015551 (and (= (size!48657 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48657 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48657 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!836241 () Bool)

(declare-fun lt!650691 () (_ BitVec 64))

(declare-fun b!1492659 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99681 (_ BitVec 32)) SeekEntryResult!12369)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99681 (_ BitVec 32)) SeekEntryResult!12369)

(assert (=> b!1492659 (= e!836241 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650691 lt!650692 mask!2687) (seekEntryOrOpen!0 lt!650691 lt!650692 mask!2687)))))

(declare-fun b!1492660 () Bool)

(declare-fun res!1015559 () Bool)

(assert (=> b!1492660 (=> (not res!1015559) (not e!836240))))

(assert (=> b!1492660 (= res!1015559 (validKeyInArray!0 (select (arr!48106 a!2862) i!1006)))))

(declare-fun res!1015553 () Bool)

(assert (=> start!127054 (=> (not res!1015553) (not e!836240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127054 (= res!1015553 (validMask!0 mask!2687))))

(assert (=> start!127054 e!836240))

(assert (=> start!127054 true))

(declare-fun array_inv!37051 (array!99681) Bool)

(assert (=> start!127054 (array_inv!37051 a!2862)))

(declare-fun lt!650690 () SeekEntryResult!12369)

(declare-fun b!1492661 () Bool)

(assert (=> b!1492661 (= e!836241 (= lt!650690 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650691 lt!650692 mask!2687)))))

(declare-fun b!1492662 () Bool)

(declare-fun res!1015554 () Bool)

(assert (=> b!1492662 (=> (not res!1015554) (not e!836246))))

(assert (=> b!1492662 (= res!1015554 e!836241)))

(declare-fun c!138080 () Bool)

(assert (=> b!1492662 (= c!138080 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1492663 () Bool)

(assert (=> b!1492663 (= e!836245 (or (= (select (arr!48106 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48106 a!2862) intermediateBeforeIndex!19) (select (arr!48106 a!2862) j!93))))))

(declare-fun b!1492664 () Bool)

(assert (=> b!1492664 (= e!836239 e!836246)))

(declare-fun res!1015557 () Bool)

(assert (=> b!1492664 (=> (not res!1015557) (not e!836246))))

(assert (=> b!1492664 (= res!1015557 (= lt!650690 (Intermediate!12369 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1492664 (= lt!650690 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650691 mask!2687) lt!650691 lt!650692 mask!2687))))

(assert (=> b!1492664 (= lt!650691 (select (store (arr!48106 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492665 () Bool)

(declare-fun res!1015562 () Bool)

(assert (=> b!1492665 (=> (not res!1015562) (not e!836245))))

(assert (=> b!1492665 (= res!1015562 (= (seekEntryOrOpen!0 (select (arr!48106 a!2862) j!93) a!2862 mask!2687) (Found!12369 j!93)))))

(declare-fun b!1492666 () Bool)

(declare-fun res!1015566 () Bool)

(assert (=> b!1492666 (=> (not res!1015566) (not e!836240))))

(declare-datatypes ((List!34787 0))(
  ( (Nil!34784) (Cons!34783 (h!36169 (_ BitVec 64)) (t!49488 List!34787)) )
))
(declare-fun arrayNoDuplicates!0 (array!99681 (_ BitVec 32) List!34787) Bool)

(assert (=> b!1492666 (= res!1015566 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34784))))

(assert (= (and start!127054 res!1015553) b!1492658))

(assert (= (and b!1492658 res!1015551) b!1492660))

(assert (= (and b!1492660 res!1015559) b!1492650))

(assert (= (and b!1492650 res!1015556) b!1492651))

(assert (= (and b!1492651 res!1015564) b!1492666))

(assert (= (and b!1492666 res!1015566) b!1492654))

(assert (= (and b!1492654 res!1015560) b!1492657))

(assert (= (and b!1492657 res!1015561) b!1492649))

(assert (= (and b!1492649 res!1015558) b!1492653))

(assert (= (and b!1492653 res!1015555) b!1492664))

(assert (= (and b!1492664 res!1015557) b!1492662))

(assert (= (and b!1492662 c!138080) b!1492661))

(assert (= (and b!1492662 (not c!138080)) b!1492659))

(assert (= (and b!1492662 res!1015554) b!1492656))

(assert (= (and b!1492656 res!1015563) b!1492652))

(assert (= (and b!1492652 res!1015552) b!1492665))

(assert (= (and b!1492665 res!1015562) b!1492663))

(assert (= (and b!1492652 (not res!1015565)) b!1492655))

(declare-fun m!1376649 () Bool)

(assert (=> b!1492666 m!1376649))

(declare-fun m!1376651 () Bool)

(assert (=> b!1492659 m!1376651))

(declare-fun m!1376653 () Bool)

(assert (=> b!1492659 m!1376653))

(declare-fun m!1376655 () Bool)

(assert (=> b!1492661 m!1376655))

(declare-fun m!1376657 () Bool)

(assert (=> b!1492653 m!1376657))

(assert (=> b!1492653 m!1376657))

(declare-fun m!1376659 () Bool)

(assert (=> b!1492653 m!1376659))

(declare-fun m!1376661 () Bool)

(assert (=> b!1492652 m!1376661))

(declare-fun m!1376663 () Bool)

(assert (=> b!1492652 m!1376663))

(declare-fun m!1376665 () Bool)

(assert (=> b!1492652 m!1376665))

(declare-fun m!1376667 () Bool)

(assert (=> b!1492652 m!1376667))

(declare-fun m!1376669 () Bool)

(assert (=> b!1492652 m!1376669))

(assert (=> b!1492652 m!1376657))

(declare-fun m!1376671 () Bool)

(assert (=> b!1492664 m!1376671))

(assert (=> b!1492664 m!1376671))

(declare-fun m!1376673 () Bool)

(assert (=> b!1492664 m!1376673))

(assert (=> b!1492664 m!1376663))

(declare-fun m!1376675 () Bool)

(assert (=> b!1492664 m!1376675))

(assert (=> b!1492665 m!1376657))

(assert (=> b!1492665 m!1376657))

(declare-fun m!1376677 () Bool)

(assert (=> b!1492665 m!1376677))

(declare-fun m!1376679 () Bool)

(assert (=> start!127054 m!1376679))

(declare-fun m!1376681 () Bool)

(assert (=> start!127054 m!1376681))

(assert (=> b!1492650 m!1376657))

(assert (=> b!1492650 m!1376657))

(declare-fun m!1376683 () Bool)

(assert (=> b!1492650 m!1376683))

(declare-fun m!1376685 () Bool)

(assert (=> b!1492651 m!1376685))

(assert (=> b!1492657 m!1376663))

(declare-fun m!1376687 () Bool)

(assert (=> b!1492657 m!1376687))

(declare-fun m!1376689 () Bool)

(assert (=> b!1492663 m!1376689))

(assert (=> b!1492663 m!1376657))

(declare-fun m!1376691 () Bool)

(assert (=> b!1492660 m!1376691))

(assert (=> b!1492660 m!1376691))

(declare-fun m!1376693 () Bool)

(assert (=> b!1492660 m!1376693))

(assert (=> b!1492649 m!1376657))

(assert (=> b!1492649 m!1376657))

(declare-fun m!1376695 () Bool)

(assert (=> b!1492649 m!1376695))

(assert (=> b!1492649 m!1376695))

(assert (=> b!1492649 m!1376657))

(declare-fun m!1376697 () Bool)

(assert (=> b!1492649 m!1376697))

(declare-fun m!1376699 () Bool)

(assert (=> b!1492655 m!1376699))

(push 1)

