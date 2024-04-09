; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126576 () Bool)

(assert start!126576)

(declare-fun b!1484525 () Bool)

(declare-fun e!832349 () Bool)

(declare-fun e!832346 () Bool)

(assert (=> b!1484525 (= e!832349 e!832346)))

(declare-fun res!1009399 () Bool)

(assert (=> b!1484525 (=> (not res!1009399) (not e!832346))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99455 0))(
  ( (array!99456 (arr!47999 (Array (_ BitVec 32) (_ BitVec 64))) (size!48550 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99455)

(assert (=> b!1484525 (= res!1009399 (= (select (store (arr!47999 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647761 () array!99455)

(assert (=> b!1484525 (= lt!647761 (array!99456 (store (arr!47999 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48550 a!2862)))))

(declare-fun b!1484526 () Bool)

(declare-fun e!832345 () Bool)

(assert (=> b!1484526 (= e!832346 e!832345)))

(declare-fun res!1009411 () Bool)

(assert (=> b!1484526 (=> (not res!1009411) (not e!832345))))

(declare-datatypes ((SeekEntryResult!12262 0))(
  ( (MissingZero!12262 (index!51439 (_ BitVec 32))) (Found!12262 (index!51440 (_ BitVec 32))) (Intermediate!12262 (undefined!13074 Bool) (index!51441 (_ BitVec 32)) (x!133021 (_ BitVec 32))) (Undefined!12262) (MissingVacant!12262 (index!51442 (_ BitVec 32))) )
))
(declare-fun lt!647755 () SeekEntryResult!12262)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99455 (_ BitVec 32)) SeekEntryResult!12262)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484526 (= res!1009411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47999 a!2862) j!93) mask!2687) (select (arr!47999 a!2862) j!93) a!2862 mask!2687) lt!647755))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484526 (= lt!647755 (Intermediate!12262 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484527 () Bool)

(declare-fun e!832348 () Bool)

(declare-fun e!832344 () Bool)

(assert (=> b!1484527 (= e!832348 e!832344)))

(declare-fun res!1009395 () Bool)

(assert (=> b!1484527 (=> res!1009395 e!832344)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!647759 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1484527 (= res!1009395 (or (and (= (select (arr!47999 a!2862) index!646) lt!647759) (= (select (arr!47999 a!2862) index!646) (select (arr!47999 a!2862) j!93))) (= (select (arr!47999 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484527 (= lt!647759 (select (store (arr!47999 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun lt!647757 () (_ BitVec 64))

(declare-fun b!1484528 () Bool)

(declare-fun e!832342 () Bool)

(declare-fun lt!647758 () SeekEntryResult!12262)

(assert (=> b!1484528 (= e!832342 (= lt!647758 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647757 lt!647761 mask!2687)))))

(declare-fun b!1484529 () Bool)

(declare-fun res!1009400 () Bool)

(assert (=> b!1484529 (=> (not res!1009400) (not e!832349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484529 (= res!1009400 (validKeyInArray!0 (select (arr!47999 a!2862) i!1006)))))

(declare-fun b!1484530 () Bool)

(declare-fun res!1009407 () Bool)

(declare-fun e!832341 () Bool)

(assert (=> b!1484530 (=> (not res!1009407) (not e!832341))))

(assert (=> b!1484530 (= res!1009407 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484531 () Bool)

(declare-fun res!1009403 () Bool)

(assert (=> b!1484531 (=> (not res!1009403) (not e!832349))))

(assert (=> b!1484531 (= res!1009403 (and (= (size!48550 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48550 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48550 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484532 () Bool)

(declare-fun res!1009409 () Bool)

(assert (=> b!1484532 (=> (not res!1009409) (not e!832349))))

(declare-datatypes ((List!34680 0))(
  ( (Nil!34677) (Cons!34676 (h!36050 (_ BitVec 64)) (t!49381 List!34680)) )
))
(declare-fun arrayNoDuplicates!0 (array!99455 (_ BitVec 32) List!34680) Bool)

(assert (=> b!1484532 (= res!1009409 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34677))))

(declare-fun b!1484533 () Bool)

(declare-fun res!1009404 () Bool)

(assert (=> b!1484533 (=> (not res!1009404) (not e!832348))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99455 (_ BitVec 32)) SeekEntryResult!12262)

(assert (=> b!1484533 (= res!1009404 (= (seekEntryOrOpen!0 (select (arr!47999 a!2862) j!93) a!2862 mask!2687) (Found!12262 j!93)))))

(declare-fun b!1484534 () Bool)

(declare-fun e!832340 () Bool)

(assert (=> b!1484534 (= e!832341 (not e!832340))))

(declare-fun res!1009412 () Bool)

(assert (=> b!1484534 (=> res!1009412 e!832340)))

(assert (=> b!1484534 (= res!1009412 (or (and (= (select (arr!47999 a!2862) index!646) (select (store (arr!47999 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47999 a!2862) index!646) (select (arr!47999 a!2862) j!93))) (= (select (arr!47999 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484534 e!832348))

(declare-fun res!1009401 () Bool)

(assert (=> b!1484534 (=> (not res!1009401) (not e!832348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99455 (_ BitVec 32)) Bool)

(assert (=> b!1484534 (= res!1009401 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49812 0))(
  ( (Unit!49813) )
))
(declare-fun lt!647756 () Unit!49812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99455 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49812)

(assert (=> b!1484534 (= lt!647756 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484535 () Bool)

(declare-fun res!1009406 () Bool)

(assert (=> b!1484535 (=> (not res!1009406) (not e!832348))))

(assert (=> b!1484535 (= res!1009406 (or (= (select (arr!47999 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47999 a!2862) intermediateBeforeIndex!19) (select (arr!47999 a!2862) j!93))))))

(declare-fun b!1484536 () Bool)

(declare-fun res!1009413 () Bool)

(assert (=> b!1484536 (=> (not res!1009413) (not e!832345))))

(assert (=> b!1484536 (= res!1009413 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47999 a!2862) j!93) a!2862 mask!2687) lt!647755))))

(declare-fun e!832347 () Bool)

(declare-fun b!1484537 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99455 (_ BitVec 32)) SeekEntryResult!12262)

(assert (=> b!1484537 (= e!832347 (= (seekEntryOrOpen!0 lt!647757 lt!647761 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647757 lt!647761 mask!2687)))))

(declare-fun b!1484538 () Bool)

(assert (=> b!1484538 (= e!832345 e!832341)))

(declare-fun res!1009398 () Bool)

(assert (=> b!1484538 (=> (not res!1009398) (not e!832341))))

(assert (=> b!1484538 (= res!1009398 (= lt!647758 (Intermediate!12262 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1484538 (= lt!647758 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647757 mask!2687) lt!647757 lt!647761 mask!2687))))

(assert (=> b!1484538 (= lt!647757 (select (store (arr!47999 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484539 () Bool)

(declare-fun res!1009405 () Bool)

(assert (=> b!1484539 (=> (not res!1009405) (not e!832349))))

(assert (=> b!1484539 (= res!1009405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484540 () Bool)

(assert (=> b!1484540 (= e!832344 e!832347)))

(declare-fun res!1009410 () Bool)

(assert (=> b!1484540 (=> (not res!1009410) (not e!832347))))

(assert (=> b!1484540 (= res!1009410 (and (= index!646 intermediateAfterIndex!19) (= lt!647759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484541 () Bool)

(assert (=> b!1484541 (= e!832340 true)))

(declare-fun lt!647760 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484541 (= lt!647760 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1009408 () Bool)

(assert (=> start!126576 (=> (not res!1009408) (not e!832349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126576 (= res!1009408 (validMask!0 mask!2687))))

(assert (=> start!126576 e!832349))

(assert (=> start!126576 true))

(declare-fun array_inv!36944 (array!99455) Bool)

(assert (=> start!126576 (array_inv!36944 a!2862)))

(declare-fun b!1484542 () Bool)

(declare-fun res!1009396 () Bool)

(assert (=> b!1484542 (=> (not res!1009396) (not e!832349))))

(assert (=> b!1484542 (= res!1009396 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48550 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48550 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48550 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484543 () Bool)

(declare-fun res!1009397 () Bool)

(assert (=> b!1484543 (=> (not res!1009397) (not e!832349))))

(assert (=> b!1484543 (= res!1009397 (validKeyInArray!0 (select (arr!47999 a!2862) j!93)))))

(declare-fun b!1484544 () Bool)

(assert (=> b!1484544 (= e!832342 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647757 lt!647761 mask!2687) (seekEntryOrOpen!0 lt!647757 lt!647761 mask!2687)))))

(declare-fun b!1484545 () Bool)

(declare-fun res!1009402 () Bool)

(assert (=> b!1484545 (=> (not res!1009402) (not e!832341))))

(assert (=> b!1484545 (= res!1009402 e!832342)))

(declare-fun c!137090 () Bool)

(assert (=> b!1484545 (= c!137090 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126576 res!1009408) b!1484531))

(assert (= (and b!1484531 res!1009403) b!1484529))

(assert (= (and b!1484529 res!1009400) b!1484543))

(assert (= (and b!1484543 res!1009397) b!1484539))

(assert (= (and b!1484539 res!1009405) b!1484532))

(assert (= (and b!1484532 res!1009409) b!1484542))

(assert (= (and b!1484542 res!1009396) b!1484525))

(assert (= (and b!1484525 res!1009399) b!1484526))

(assert (= (and b!1484526 res!1009411) b!1484536))

(assert (= (and b!1484536 res!1009413) b!1484538))

(assert (= (and b!1484538 res!1009398) b!1484545))

(assert (= (and b!1484545 c!137090) b!1484528))

(assert (= (and b!1484545 (not c!137090)) b!1484544))

(assert (= (and b!1484545 res!1009402) b!1484530))

(assert (= (and b!1484530 res!1009407) b!1484534))

(assert (= (and b!1484534 res!1009401) b!1484533))

(assert (= (and b!1484533 res!1009404) b!1484535))

(assert (= (and b!1484535 res!1009406) b!1484527))

(assert (= (and b!1484527 (not res!1009395)) b!1484540))

(assert (= (and b!1484540 res!1009410) b!1484537))

(assert (= (and b!1484534 (not res!1009412)) b!1484541))

(declare-fun m!1369861 () Bool)

(assert (=> b!1484544 m!1369861))

(declare-fun m!1369863 () Bool)

(assert (=> b!1484544 m!1369863))

(declare-fun m!1369865 () Bool)

(assert (=> b!1484538 m!1369865))

(assert (=> b!1484538 m!1369865))

(declare-fun m!1369867 () Bool)

(assert (=> b!1484538 m!1369867))

(declare-fun m!1369869 () Bool)

(assert (=> b!1484538 m!1369869))

(declare-fun m!1369871 () Bool)

(assert (=> b!1484538 m!1369871))

(declare-fun m!1369873 () Bool)

(assert (=> b!1484541 m!1369873))

(declare-fun m!1369875 () Bool)

(assert (=> b!1484535 m!1369875))

(declare-fun m!1369877 () Bool)

(assert (=> b!1484535 m!1369877))

(declare-fun m!1369879 () Bool)

(assert (=> b!1484534 m!1369879))

(assert (=> b!1484534 m!1369869))

(declare-fun m!1369881 () Bool)

(assert (=> b!1484534 m!1369881))

(declare-fun m!1369883 () Bool)

(assert (=> b!1484534 m!1369883))

(declare-fun m!1369885 () Bool)

(assert (=> b!1484534 m!1369885))

(assert (=> b!1484534 m!1369877))

(assert (=> b!1484536 m!1369877))

(assert (=> b!1484536 m!1369877))

(declare-fun m!1369887 () Bool)

(assert (=> b!1484536 m!1369887))

(assert (=> b!1484525 m!1369869))

(declare-fun m!1369889 () Bool)

(assert (=> b!1484525 m!1369889))

(assert (=> b!1484527 m!1369883))

(assert (=> b!1484527 m!1369877))

(assert (=> b!1484527 m!1369869))

(assert (=> b!1484527 m!1369881))

(declare-fun m!1369891 () Bool)

(assert (=> b!1484532 m!1369891))

(assert (=> b!1484526 m!1369877))

(assert (=> b!1484526 m!1369877))

(declare-fun m!1369893 () Bool)

(assert (=> b!1484526 m!1369893))

(assert (=> b!1484526 m!1369893))

(assert (=> b!1484526 m!1369877))

(declare-fun m!1369895 () Bool)

(assert (=> b!1484526 m!1369895))

(assert (=> b!1484533 m!1369877))

(assert (=> b!1484533 m!1369877))

(declare-fun m!1369897 () Bool)

(assert (=> b!1484533 m!1369897))

(declare-fun m!1369899 () Bool)

(assert (=> b!1484539 m!1369899))

(declare-fun m!1369901 () Bool)

(assert (=> start!126576 m!1369901))

(declare-fun m!1369903 () Bool)

(assert (=> start!126576 m!1369903))

(assert (=> b!1484543 m!1369877))

(assert (=> b!1484543 m!1369877))

(declare-fun m!1369905 () Bool)

(assert (=> b!1484543 m!1369905))

(assert (=> b!1484537 m!1369863))

(assert (=> b!1484537 m!1369861))

(declare-fun m!1369907 () Bool)

(assert (=> b!1484528 m!1369907))

(declare-fun m!1369909 () Bool)

(assert (=> b!1484529 m!1369909))

(assert (=> b!1484529 m!1369909))

(declare-fun m!1369911 () Bool)

(assert (=> b!1484529 m!1369911))

(check-sat (not b!1484533) (not b!1484543) (not b!1484526) (not b!1484532) (not b!1484528) (not b!1484538) (not start!126576) (not b!1484544) (not b!1484536) (not b!1484537) (not b!1484529) (not b!1484539) (not b!1484534) (not b!1484541))
(check-sat)
