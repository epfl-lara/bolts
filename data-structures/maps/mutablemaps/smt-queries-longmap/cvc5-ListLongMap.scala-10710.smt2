; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125440 () Bool)

(assert start!125440)

(declare-fun b!1466521 () Bool)

(declare-fun res!995312 () Bool)

(declare-fun e!823906 () Bool)

(assert (=> b!1466521 (=> res!995312 e!823906)))

(declare-fun e!823911 () Bool)

(assert (=> b!1466521 (= res!995312 e!823911)))

(declare-fun c!135122 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1466521 (= c!135122 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466522 () Bool)

(declare-fun res!995311 () Bool)

(declare-fun e!823912 () Bool)

(assert (=> b!1466522 (=> (not res!995311) (not e!823912))))

(declare-datatypes ((array!98805 0))(
  ( (array!98806 (arr!47686 (Array (_ BitVec 32) (_ BitVec 64))) (size!48237 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98805)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466522 (= res!995311 (validKeyInArray!0 (select (arr!47686 a!2862) i!1006)))))

(declare-fun b!1466523 () Bool)

(declare-fun res!995310 () Bool)

(declare-fun e!823913 () Bool)

(assert (=> b!1466523 (=> (not res!995310) (not e!823913))))

(declare-fun e!823905 () Bool)

(assert (=> b!1466523 (= res!995310 e!823905)))

(declare-fun c!135121 () Bool)

(assert (=> b!1466523 (= c!135121 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466524 () Bool)

(declare-fun res!995313 () Bool)

(assert (=> b!1466524 (=> (not res!995313) (not e!823912))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1466524 (= res!995313 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48237 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48237 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48237 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!641756 () (_ BitVec 64))

(declare-fun b!1466525 () Bool)

(declare-fun lt!641757 () array!98805)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11961 0))(
  ( (MissingZero!11961 (index!50235 (_ BitVec 32))) (Found!11961 (index!50236 (_ BitVec 32))) (Intermediate!11961 (undefined!12773 Bool) (index!50237 (_ BitVec 32)) (x!131813 (_ BitVec 32))) (Undefined!11961) (MissingVacant!11961 (index!50238 (_ BitVec 32))) )
))
(declare-fun lt!641758 () SeekEntryResult!11961)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98805 (_ BitVec 32)) SeekEntryResult!11961)

(assert (=> b!1466525 (= e!823905 (= lt!641758 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641756 lt!641757 mask!2687)))))

(declare-fun b!1466526 () Bool)

(declare-fun res!995314 () Bool)

(assert (=> b!1466526 (=> (not res!995314) (not e!823912))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1466526 (= res!995314 (validKeyInArray!0 (select (arr!47686 a!2862) j!93)))))

(declare-fun b!1466527 () Bool)

(declare-fun res!995305 () Bool)

(assert (=> b!1466527 (=> res!995305 e!823906)))

(declare-fun lt!641754 () (_ BitVec 32))

(declare-fun lt!641753 () SeekEntryResult!11961)

(assert (=> b!1466527 (= res!995305 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641754 (select (arr!47686 a!2862) j!93) a!2862 mask!2687) lt!641753)))))

(declare-fun res!995309 () Bool)

(assert (=> start!125440 (=> (not res!995309) (not e!823912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125440 (= res!995309 (validMask!0 mask!2687))))

(assert (=> start!125440 e!823912))

(assert (=> start!125440 true))

(declare-fun array_inv!36631 (array!98805) Bool)

(assert (=> start!125440 (array_inv!36631 a!2862)))

(declare-fun b!1466528 () Bool)

(assert (=> b!1466528 (= e!823911 (not (= lt!641758 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641754 lt!641756 lt!641757 mask!2687))))))

(declare-fun b!1466529 () Bool)

(declare-fun e!823909 () Bool)

(assert (=> b!1466529 (= e!823913 (not e!823909))))

(declare-fun res!995322 () Bool)

(assert (=> b!1466529 (=> res!995322 e!823909)))

(assert (=> b!1466529 (= res!995322 (or (and (= (select (arr!47686 a!2862) index!646) (select (store (arr!47686 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47686 a!2862) index!646) (select (arr!47686 a!2862) j!93))) (= (select (arr!47686 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641755 () SeekEntryResult!11961)

(assert (=> b!1466529 (and (= lt!641755 (Found!11961 j!93)) (or (= (select (arr!47686 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47686 a!2862) intermediateBeforeIndex!19) (select (arr!47686 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98805 (_ BitVec 32)) SeekEntryResult!11961)

(assert (=> b!1466529 (= lt!641755 (seekEntryOrOpen!0 (select (arr!47686 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98805 (_ BitVec 32)) Bool)

(assert (=> b!1466529 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49366 0))(
  ( (Unit!49367) )
))
(declare-fun lt!641752 () Unit!49366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49366)

(assert (=> b!1466529 (= lt!641752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466530 () Bool)

(declare-fun e!823908 () Bool)

(declare-fun e!823910 () Bool)

(assert (=> b!1466530 (= e!823908 e!823910)))

(declare-fun res!995307 () Bool)

(assert (=> b!1466530 (=> (not res!995307) (not e!823910))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466530 (= res!995307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47686 a!2862) j!93) mask!2687) (select (arr!47686 a!2862) j!93) a!2862 mask!2687) lt!641753))))

(assert (=> b!1466530 (= lt!641753 (Intermediate!11961 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466531 () Bool)

(assert (=> b!1466531 (= e!823910 e!823913)))

(declare-fun res!995316 () Bool)

(assert (=> b!1466531 (=> (not res!995316) (not e!823913))))

(assert (=> b!1466531 (= res!995316 (= lt!641758 (Intermediate!11961 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466531 (= lt!641758 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641756 mask!2687) lt!641756 lt!641757 mask!2687))))

(assert (=> b!1466531 (= lt!641756 (select (store (arr!47686 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466532 () Bool)

(assert (=> b!1466532 (= e!823906 true)))

(assert (=> b!1466532 (= lt!641755 (seekEntryOrOpen!0 lt!641756 lt!641757 mask!2687))))

(declare-fun lt!641751 () Unit!49366)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49366)

(assert (=> b!1466532 (= lt!641751 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641754 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466533 () Bool)

(assert (=> b!1466533 (= e!823912 e!823908)))

(declare-fun res!995319 () Bool)

(assert (=> b!1466533 (=> (not res!995319) (not e!823908))))

(assert (=> b!1466533 (= res!995319 (= (select (store (arr!47686 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466533 (= lt!641757 (array!98806 (store (arr!47686 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48237 a!2862)))))

(declare-fun b!1466534 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98805 (_ BitVec 32)) SeekEntryResult!11961)

(assert (=> b!1466534 (= e!823911 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641754 intermediateAfterIndex!19 lt!641756 lt!641757 mask!2687) (seekEntryOrOpen!0 lt!641756 lt!641757 mask!2687))))))

(declare-fun b!1466535 () Bool)

(assert (=> b!1466535 (= e!823909 e!823906)))

(declare-fun res!995306 () Bool)

(assert (=> b!1466535 (=> res!995306 e!823906)))

(assert (=> b!1466535 (= res!995306 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641754 #b00000000000000000000000000000000) (bvsge lt!641754 (size!48237 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466535 (= lt!641754 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466536 () Bool)

(declare-fun res!995320 () Bool)

(assert (=> b!1466536 (=> (not res!995320) (not e!823912))))

(assert (=> b!1466536 (= res!995320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466537 () Bool)

(declare-fun res!995321 () Bool)

(assert (=> b!1466537 (=> (not res!995321) (not e!823913))))

(assert (=> b!1466537 (= res!995321 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466538 () Bool)

(assert (=> b!1466538 (= e!823905 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641756 lt!641757 mask!2687) (seekEntryOrOpen!0 lt!641756 lt!641757 mask!2687)))))

(declare-fun b!1466539 () Bool)

(declare-fun res!995317 () Bool)

(assert (=> b!1466539 (=> (not res!995317) (not e!823910))))

(assert (=> b!1466539 (= res!995317 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47686 a!2862) j!93) a!2862 mask!2687) lt!641753))))

(declare-fun b!1466540 () Bool)

(declare-fun res!995315 () Bool)

(assert (=> b!1466540 (=> (not res!995315) (not e!823912))))

(declare-datatypes ((List!34367 0))(
  ( (Nil!34364) (Cons!34363 (h!35713 (_ BitVec 64)) (t!49068 List!34367)) )
))
(declare-fun arrayNoDuplicates!0 (array!98805 (_ BitVec 32) List!34367) Bool)

(assert (=> b!1466540 (= res!995315 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34364))))

(declare-fun b!1466541 () Bool)

(declare-fun res!995318 () Bool)

(assert (=> b!1466541 (=> res!995318 e!823906)))

(assert (=> b!1466541 (= res!995318 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466542 () Bool)

(declare-fun res!995308 () Bool)

(assert (=> b!1466542 (=> (not res!995308) (not e!823912))))

(assert (=> b!1466542 (= res!995308 (and (= (size!48237 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48237 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48237 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125440 res!995309) b!1466542))

(assert (= (and b!1466542 res!995308) b!1466522))

(assert (= (and b!1466522 res!995311) b!1466526))

(assert (= (and b!1466526 res!995314) b!1466536))

(assert (= (and b!1466536 res!995320) b!1466540))

(assert (= (and b!1466540 res!995315) b!1466524))

(assert (= (and b!1466524 res!995313) b!1466533))

(assert (= (and b!1466533 res!995319) b!1466530))

(assert (= (and b!1466530 res!995307) b!1466539))

(assert (= (and b!1466539 res!995317) b!1466531))

(assert (= (and b!1466531 res!995316) b!1466523))

(assert (= (and b!1466523 c!135121) b!1466525))

(assert (= (and b!1466523 (not c!135121)) b!1466538))

(assert (= (and b!1466523 res!995310) b!1466537))

(assert (= (and b!1466537 res!995321) b!1466529))

(assert (= (and b!1466529 (not res!995322)) b!1466535))

(assert (= (and b!1466535 (not res!995306)) b!1466527))

(assert (= (and b!1466527 (not res!995305)) b!1466521))

(assert (= (and b!1466521 c!135122) b!1466528))

(assert (= (and b!1466521 (not c!135122)) b!1466534))

(assert (= (and b!1466521 (not res!995312)) b!1466541))

(assert (= (and b!1466541 (not res!995318)) b!1466532))

(declare-fun m!1353555 () Bool)

(assert (=> b!1466538 m!1353555))

(declare-fun m!1353557 () Bool)

(assert (=> b!1466538 m!1353557))

(declare-fun m!1353559 () Bool)

(assert (=> b!1466535 m!1353559))

(declare-fun m!1353561 () Bool)

(assert (=> b!1466522 m!1353561))

(assert (=> b!1466522 m!1353561))

(declare-fun m!1353563 () Bool)

(assert (=> b!1466522 m!1353563))

(declare-fun m!1353565 () Bool)

(assert (=> b!1466525 m!1353565))

(declare-fun m!1353567 () Bool)

(assert (=> b!1466526 m!1353567))

(assert (=> b!1466526 m!1353567))

(declare-fun m!1353569 () Bool)

(assert (=> b!1466526 m!1353569))

(declare-fun m!1353571 () Bool)

(assert (=> b!1466536 m!1353571))

(assert (=> b!1466530 m!1353567))

(assert (=> b!1466530 m!1353567))

(declare-fun m!1353573 () Bool)

(assert (=> b!1466530 m!1353573))

(assert (=> b!1466530 m!1353573))

(assert (=> b!1466530 m!1353567))

(declare-fun m!1353575 () Bool)

(assert (=> b!1466530 m!1353575))

(assert (=> b!1466527 m!1353567))

(assert (=> b!1466527 m!1353567))

(declare-fun m!1353577 () Bool)

(assert (=> b!1466527 m!1353577))

(assert (=> b!1466532 m!1353557))

(declare-fun m!1353579 () Bool)

(assert (=> b!1466532 m!1353579))

(assert (=> b!1466539 m!1353567))

(assert (=> b!1466539 m!1353567))

(declare-fun m!1353581 () Bool)

(assert (=> b!1466539 m!1353581))

(declare-fun m!1353583 () Bool)

(assert (=> b!1466534 m!1353583))

(assert (=> b!1466534 m!1353557))

(declare-fun m!1353585 () Bool)

(assert (=> b!1466529 m!1353585))

(declare-fun m!1353587 () Bool)

(assert (=> b!1466529 m!1353587))

(declare-fun m!1353589 () Bool)

(assert (=> b!1466529 m!1353589))

(declare-fun m!1353591 () Bool)

(assert (=> b!1466529 m!1353591))

(declare-fun m!1353593 () Bool)

(assert (=> b!1466529 m!1353593))

(assert (=> b!1466529 m!1353567))

(declare-fun m!1353595 () Bool)

(assert (=> b!1466529 m!1353595))

(declare-fun m!1353597 () Bool)

(assert (=> b!1466529 m!1353597))

(assert (=> b!1466529 m!1353567))

(declare-fun m!1353599 () Bool)

(assert (=> b!1466531 m!1353599))

(assert (=> b!1466531 m!1353599))

(declare-fun m!1353601 () Bool)

(assert (=> b!1466531 m!1353601))

(assert (=> b!1466531 m!1353587))

(declare-fun m!1353603 () Bool)

(assert (=> b!1466531 m!1353603))

(declare-fun m!1353605 () Bool)

(assert (=> b!1466540 m!1353605))

(declare-fun m!1353607 () Bool)

(assert (=> start!125440 m!1353607))

(declare-fun m!1353609 () Bool)

(assert (=> start!125440 m!1353609))

(declare-fun m!1353611 () Bool)

(assert (=> b!1466528 m!1353611))

(assert (=> b!1466533 m!1353587))

(declare-fun m!1353613 () Bool)

(assert (=> b!1466533 m!1353613))

(push 1)

