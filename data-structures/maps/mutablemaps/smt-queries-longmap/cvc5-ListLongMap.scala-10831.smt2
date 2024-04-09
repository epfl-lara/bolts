; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126874 () Bool)

(assert start!126874)

(declare-fun b!1488975 () Bool)

(declare-fun e!834592 () Bool)

(declare-fun e!834593 () Bool)

(assert (=> b!1488975 (= e!834592 e!834593)))

(declare-fun res!1012604 () Bool)

(assert (=> b!1488975 (=> (not res!1012604) (not e!834593))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99564 0))(
  ( (array!99565 (arr!48049 (Array (_ BitVec 32) (_ BitVec 64))) (size!48600 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99564)

(assert (=> b!1488975 (= res!1012604 (= (select (store (arr!48049 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!649351 () array!99564)

(assert (=> b!1488975 (= lt!649351 (array!99565 (store (arr!48049 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48600 a!2862)))))

(declare-fun b!1488976 () Bool)

(declare-fun res!1012609 () Bool)

(declare-fun e!834589 () Bool)

(assert (=> b!1488976 (=> (not res!1012609) (not e!834589))))

(declare-fun e!834587 () Bool)

(assert (=> b!1488976 (= res!1012609 e!834587)))

(declare-fun c!137719 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1488976 (= c!137719 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1488977 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun e!834596 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1488977 (= e!834596 (and (or (= (select (arr!48049 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48049 a!2862) intermediateBeforeIndex!19) (select (arr!48049 a!2862) j!93))) (let ((bdg!54688 (select (store (arr!48049 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48049 a!2862) index!646) bdg!54688) (= (select (arr!48049 a!2862) index!646) (select (arr!48049 a!2862) j!93))) (= (select (arr!48049 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54688 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1488978 () Bool)

(declare-fun e!834595 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1488978 (= e!834595 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!665)) (bvsub #b01111111111111111111111111111110 x!665))))))

(declare-fun b!1488979 () Bool)

(declare-fun res!1012613 () Bool)

(assert (=> b!1488979 (=> res!1012613 e!834595)))

(declare-fun e!834591 () Bool)

(assert (=> b!1488979 (= res!1012613 e!834591)))

(declare-fun c!137720 () Bool)

(assert (=> b!1488979 (= c!137720 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun lt!649355 () (_ BitVec 64))

(declare-fun b!1488980 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12312 0))(
  ( (MissingZero!12312 (index!51639 (_ BitVec 32))) (Found!12312 (index!51640 (_ BitVec 32))) (Intermediate!12312 (undefined!13124 Bool) (index!51641 (_ BitVec 32)) (x!133243 (_ BitVec 32))) (Undefined!12312) (MissingVacant!12312 (index!51642 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99564 (_ BitVec 32)) SeekEntryResult!12312)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99564 (_ BitVec 32)) SeekEntryResult!12312)

(assert (=> b!1488980 (= e!834587 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649355 lt!649351 mask!2687) (seekEntryOrOpen!0 lt!649355 lt!649351 mask!2687)))))

(declare-fun b!1488981 () Bool)

(declare-fun lt!649353 () SeekEntryResult!12312)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99564 (_ BitVec 32)) SeekEntryResult!12312)

(assert (=> b!1488981 (= e!834587 (= lt!649353 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649355 lt!649351 mask!2687)))))

(declare-fun lt!649357 () (_ BitVec 32))

(declare-fun lt!649352 () SeekEntryResult!12312)

(declare-fun b!1488982 () Bool)

(assert (=> b!1488982 (= e!834591 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649357 intermediateAfterIndex!19 lt!649355 lt!649351 mask!2687) lt!649352)))))

(declare-fun b!1488983 () Bool)

(declare-fun res!1012605 () Bool)

(declare-fun e!834588 () Bool)

(assert (=> b!1488983 (=> (not res!1012605) (not e!834588))))

(declare-fun lt!649354 () SeekEntryResult!12312)

(assert (=> b!1488983 (= res!1012605 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48049 a!2862) j!93) a!2862 mask!2687) lt!649354))))

(declare-fun b!1488984 () Bool)

(declare-fun e!834594 () Bool)

(assert (=> b!1488984 (= e!834589 (not e!834594))))

(declare-fun res!1012601 () Bool)

(assert (=> b!1488984 (=> res!1012601 e!834594)))

(assert (=> b!1488984 (= res!1012601 (or (and (= (select (arr!48049 a!2862) index!646) (select (store (arr!48049 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48049 a!2862) index!646) (select (arr!48049 a!2862) j!93))) (= (select (arr!48049 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1488984 e!834596))

(declare-fun res!1012602 () Bool)

(assert (=> b!1488984 (=> (not res!1012602) (not e!834596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99564 (_ BitVec 32)) Bool)

(assert (=> b!1488984 (= res!1012602 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49912 0))(
  ( (Unit!49913) )
))
(declare-fun lt!649356 () Unit!49912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49912)

(assert (=> b!1488984 (= lt!649356 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1488985 () Bool)

(declare-fun res!1012608 () Bool)

(assert (=> b!1488985 (=> (not res!1012608) (not e!834592))))

(declare-datatypes ((List!34730 0))(
  ( (Nil!34727) (Cons!34726 (h!36109 (_ BitVec 64)) (t!49431 List!34730)) )
))
(declare-fun arrayNoDuplicates!0 (array!99564 (_ BitVec 32) List!34730) Bool)

(assert (=> b!1488985 (= res!1012608 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34727))))

(declare-fun b!1488986 () Bool)

(declare-fun res!1012596 () Bool)

(assert (=> b!1488986 (=> res!1012596 e!834595)))

(assert (=> b!1488986 (= res!1012596 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649357 (select (arr!48049 a!2862) j!93) a!2862 mask!2687) lt!649354)))))

(declare-fun res!1012607 () Bool)

(assert (=> start!126874 (=> (not res!1012607) (not e!834592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126874 (= res!1012607 (validMask!0 mask!2687))))

(assert (=> start!126874 e!834592))

(assert (=> start!126874 true))

(declare-fun array_inv!36994 (array!99564) Bool)

(assert (=> start!126874 (array_inv!36994 a!2862)))

(declare-fun b!1488987 () Bool)

(assert (=> b!1488987 (= e!834593 e!834588)))

(declare-fun res!1012614 () Bool)

(assert (=> b!1488987 (=> (not res!1012614) (not e!834588))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488987 (= res!1012614 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48049 a!2862) j!93) mask!2687) (select (arr!48049 a!2862) j!93) a!2862 mask!2687) lt!649354))))

(assert (=> b!1488987 (= lt!649354 (Intermediate!12312 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1488988 () Bool)

(declare-fun res!1012598 () Bool)

(assert (=> b!1488988 (=> (not res!1012598) (not e!834592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488988 (= res!1012598 (validKeyInArray!0 (select (arr!48049 a!2862) i!1006)))))

(declare-fun b!1488989 () Bool)

(assert (=> b!1488989 (= e!834591 (not (= lt!649353 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649357 lt!649355 lt!649351 mask!2687))))))

(declare-fun b!1488990 () Bool)

(assert (=> b!1488990 (= e!834588 e!834589)))

(declare-fun res!1012610 () Bool)

(assert (=> b!1488990 (=> (not res!1012610) (not e!834589))))

(assert (=> b!1488990 (= res!1012610 (= lt!649353 (Intermediate!12312 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1488990 (= lt!649353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649355 mask!2687) lt!649355 lt!649351 mask!2687))))

(assert (=> b!1488990 (= lt!649355 (select (store (arr!48049 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1488991 () Bool)

(declare-fun res!1012611 () Bool)

(assert (=> b!1488991 (=> (not res!1012611) (not e!834589))))

(assert (=> b!1488991 (= res!1012611 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1488992 () Bool)

(declare-fun res!1012606 () Bool)

(assert (=> b!1488992 (=> (not res!1012606) (not e!834596))))

(assert (=> b!1488992 (= res!1012606 (= (seekEntryOrOpen!0 (select (arr!48049 a!2862) j!93) a!2862 mask!2687) (Found!12312 j!93)))))

(declare-fun b!1488993 () Bool)

(assert (=> b!1488993 (= e!834594 e!834595)))

(declare-fun res!1012612 () Bool)

(assert (=> b!1488993 (=> res!1012612 e!834595)))

(assert (=> b!1488993 (= res!1012612 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649357 #b00000000000000000000000000000000) (bvsge lt!649357 (size!48600 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488993 (= lt!649357 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1488993 (= lt!649352 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649355 lt!649351 mask!2687))))

(assert (=> b!1488993 (= lt!649352 (seekEntryOrOpen!0 lt!649355 lt!649351 mask!2687))))

(declare-fun b!1488994 () Bool)

(declare-fun res!1012603 () Bool)

(assert (=> b!1488994 (=> (not res!1012603) (not e!834592))))

(assert (=> b!1488994 (= res!1012603 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48600 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48600 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48600 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1488995 () Bool)

(declare-fun res!1012600 () Bool)

(assert (=> b!1488995 (=> (not res!1012600) (not e!834592))))

(assert (=> b!1488995 (= res!1012600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488996 () Bool)

(declare-fun res!1012599 () Bool)

(assert (=> b!1488996 (=> (not res!1012599) (not e!834592))))

(assert (=> b!1488996 (= res!1012599 (and (= (size!48600 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48600 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48600 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1488997 () Bool)

(declare-fun res!1012597 () Bool)

(assert (=> b!1488997 (=> (not res!1012597) (not e!834592))))

(assert (=> b!1488997 (= res!1012597 (validKeyInArray!0 (select (arr!48049 a!2862) j!93)))))

(assert (= (and start!126874 res!1012607) b!1488996))

(assert (= (and b!1488996 res!1012599) b!1488988))

(assert (= (and b!1488988 res!1012598) b!1488997))

(assert (= (and b!1488997 res!1012597) b!1488995))

(assert (= (and b!1488995 res!1012600) b!1488985))

(assert (= (and b!1488985 res!1012608) b!1488994))

(assert (= (and b!1488994 res!1012603) b!1488975))

(assert (= (and b!1488975 res!1012604) b!1488987))

(assert (= (and b!1488987 res!1012614) b!1488983))

(assert (= (and b!1488983 res!1012605) b!1488990))

(assert (= (and b!1488990 res!1012610) b!1488976))

(assert (= (and b!1488976 c!137719) b!1488981))

(assert (= (and b!1488976 (not c!137719)) b!1488980))

(assert (= (and b!1488976 res!1012609) b!1488991))

(assert (= (and b!1488991 res!1012611) b!1488984))

(assert (= (and b!1488984 res!1012602) b!1488992))

(assert (= (and b!1488992 res!1012606) b!1488977))

(assert (= (and b!1488984 (not res!1012601)) b!1488993))

(assert (= (and b!1488993 (not res!1012612)) b!1488986))

(assert (= (and b!1488986 (not res!1012596)) b!1488979))

(assert (= (and b!1488979 c!137720) b!1488989))

(assert (= (and b!1488979 (not c!137720)) b!1488982))

(assert (= (and b!1488979 (not res!1012613)) b!1488978))

(declare-fun m!1373313 () Bool)

(assert (=> b!1488989 m!1373313))

(declare-fun m!1373315 () Bool)

(assert (=> b!1488981 m!1373315))

(declare-fun m!1373317 () Bool)

(assert (=> start!126874 m!1373317))

(declare-fun m!1373319 () Bool)

(assert (=> start!126874 m!1373319))

(declare-fun m!1373321 () Bool)

(assert (=> b!1488985 m!1373321))

(declare-fun m!1373323 () Bool)

(assert (=> b!1488995 m!1373323))

(declare-fun m!1373325 () Bool)

(assert (=> b!1488993 m!1373325))

(declare-fun m!1373327 () Bool)

(assert (=> b!1488993 m!1373327))

(declare-fun m!1373329 () Bool)

(assert (=> b!1488993 m!1373329))

(declare-fun m!1373331 () Bool)

(assert (=> b!1488997 m!1373331))

(assert (=> b!1488997 m!1373331))

(declare-fun m!1373333 () Bool)

(assert (=> b!1488997 m!1373333))

(assert (=> b!1488986 m!1373331))

(assert (=> b!1488986 m!1373331))

(declare-fun m!1373335 () Bool)

(assert (=> b!1488986 m!1373335))

(assert (=> b!1488980 m!1373327))

(assert (=> b!1488980 m!1373329))

(declare-fun m!1373337 () Bool)

(assert (=> b!1488975 m!1373337))

(declare-fun m!1373339 () Bool)

(assert (=> b!1488975 m!1373339))

(assert (=> b!1488983 m!1373331))

(assert (=> b!1488983 m!1373331))

(declare-fun m!1373341 () Bool)

(assert (=> b!1488983 m!1373341))

(assert (=> b!1488992 m!1373331))

(assert (=> b!1488992 m!1373331))

(declare-fun m!1373343 () Bool)

(assert (=> b!1488992 m!1373343))

(assert (=> b!1488977 m!1373337))

(declare-fun m!1373345 () Bool)

(assert (=> b!1488977 m!1373345))

(declare-fun m!1373347 () Bool)

(assert (=> b!1488977 m!1373347))

(declare-fun m!1373349 () Bool)

(assert (=> b!1488977 m!1373349))

(assert (=> b!1488977 m!1373331))

(declare-fun m!1373351 () Bool)

(assert (=> b!1488990 m!1373351))

(assert (=> b!1488990 m!1373351))

(declare-fun m!1373353 () Bool)

(assert (=> b!1488990 m!1373353))

(assert (=> b!1488990 m!1373337))

(declare-fun m!1373355 () Bool)

(assert (=> b!1488990 m!1373355))

(declare-fun m!1373357 () Bool)

(assert (=> b!1488982 m!1373357))

(declare-fun m!1373359 () Bool)

(assert (=> b!1488988 m!1373359))

(assert (=> b!1488988 m!1373359))

(declare-fun m!1373361 () Bool)

(assert (=> b!1488988 m!1373361))

(declare-fun m!1373363 () Bool)

(assert (=> b!1488984 m!1373363))

(assert (=> b!1488984 m!1373337))

(assert (=> b!1488984 m!1373347))

(assert (=> b!1488984 m!1373349))

(declare-fun m!1373365 () Bool)

(assert (=> b!1488984 m!1373365))

(assert (=> b!1488984 m!1373331))

(assert (=> b!1488987 m!1373331))

(assert (=> b!1488987 m!1373331))

(declare-fun m!1373367 () Bool)

(assert (=> b!1488987 m!1373367))

(assert (=> b!1488987 m!1373367))

(assert (=> b!1488987 m!1373331))

(declare-fun m!1373369 () Bool)

(assert (=> b!1488987 m!1373369))

(push 1)

(assert (not b!1488981))

(assert (not b!1488993))

(assert (not b!1488982))

(assert (not b!1488987))

(assert (not b!1488985))

(assert (not b!1488983))

(assert (not b!1488986))

(assert (not b!1488989))

(assert (not b!1488995))

(assert (not b!1488997))

(assert (not b!1488990))

(assert (not b!1488984))

(assert (not b!1488992))

(assert (not b!1488980))

(assert (not start!126874))

(assert (not b!1488988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

