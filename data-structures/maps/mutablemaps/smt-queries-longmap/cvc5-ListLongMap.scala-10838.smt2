; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126916 () Bool)

(assert start!126916)

(declare-fun lt!649873 () (_ BitVec 64))

(declare-fun b!1490324 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!835154 () Bool)

(declare-datatypes ((array!99606 0))(
  ( (array!99607 (arr!48070 (Array (_ BitVec 32) (_ BitVec 64))) (size!48621 (_ BitVec 32))) )
))
(declare-fun lt!649876 () array!99606)

(declare-datatypes ((SeekEntryResult!12333 0))(
  ( (MissingZero!12333 (index!51723 (_ BitVec 32))) (Found!12333 (index!51724 (_ BitVec 32))) (Intermediate!12333 (undefined!13145 Bool) (index!51725 (_ BitVec 32)) (x!133320 (_ BitVec 32))) (Undefined!12333) (MissingVacant!12333 (index!51726 (_ BitVec 32))) )
))
(declare-fun lt!649875 () SeekEntryResult!12333)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99606 (_ BitVec 32)) SeekEntryResult!12333)

(assert (=> b!1490324 (= e!835154 (= lt!649875 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649873 lt!649876 mask!2687)))))

(declare-fun b!1490325 () Bool)

(declare-fun res!1013719 () Bool)

(declare-fun e!835152 () Bool)

(assert (=> b!1490325 (=> (not res!1013719) (not e!835152))))

(declare-fun a!2862 () array!99606)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490325 (= res!1013719 (validKeyInArray!0 (select (arr!48070 a!2862) i!1006)))))

(declare-fun b!1490326 () Bool)

(declare-fun e!835150 () Bool)

(assert (=> b!1490326 (= e!835150 true)))

(declare-fun lt!649872 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490326 (= lt!649872 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490327 () Bool)

(declare-fun res!1013728 () Bool)

(assert (=> b!1490327 (=> (not res!1013728) (not e!835152))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1490327 (= res!1013728 (validKeyInArray!0 (select (arr!48070 a!2862) j!93)))))

(declare-fun b!1490328 () Bool)

(declare-fun e!835151 () Bool)

(declare-fun e!835155 () Bool)

(assert (=> b!1490328 (= e!835151 e!835155)))

(declare-fun res!1013721 () Bool)

(assert (=> b!1490328 (=> (not res!1013721) (not e!835155))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490328 (= res!1013721 (= lt!649875 (Intermediate!12333 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490328 (= lt!649875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649873 mask!2687) lt!649873 lt!649876 mask!2687))))

(assert (=> b!1490328 (= lt!649873 (select (store (arr!48070 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490329 () Bool)

(declare-fun res!1013716 () Bool)

(assert (=> b!1490329 (=> (not res!1013716) (not e!835152))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490329 (= res!1013716 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48621 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48621 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48621 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490330 () Bool)

(declare-fun res!1013720 () Bool)

(assert (=> b!1490330 (=> (not res!1013720) (not e!835151))))

(declare-fun lt!649871 () SeekEntryResult!12333)

(assert (=> b!1490330 (= res!1013720 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48070 a!2862) j!93) a!2862 mask!2687) lt!649871))))

(declare-fun b!1490332 () Bool)

(declare-fun res!1013730 () Bool)

(assert (=> b!1490332 (=> (not res!1013730) (not e!835155))))

(assert (=> b!1490332 (= res!1013730 e!835154)))

(declare-fun c!137834 () Bool)

(assert (=> b!1490332 (= c!137834 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490333 () Bool)

(declare-fun res!1013726 () Bool)

(assert (=> b!1490333 (=> (not res!1013726) (not e!835152))))

(assert (=> b!1490333 (= res!1013726 (and (= (size!48621 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48621 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48621 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490334 () Bool)

(declare-fun e!835153 () Bool)

(assert (=> b!1490334 (= e!835153 e!835151)))

(declare-fun res!1013725 () Bool)

(assert (=> b!1490334 (=> (not res!1013725) (not e!835151))))

(assert (=> b!1490334 (= res!1013725 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48070 a!2862) j!93) mask!2687) (select (arr!48070 a!2862) j!93) a!2862 mask!2687) lt!649871))))

(assert (=> b!1490334 (= lt!649871 (Intermediate!12333 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490335 () Bool)

(declare-fun res!1013729 () Bool)

(assert (=> b!1490335 (=> (not res!1013729) (not e!835152))))

(declare-datatypes ((List!34751 0))(
  ( (Nil!34748) (Cons!34747 (h!36130 (_ BitVec 64)) (t!49452 List!34751)) )
))
(declare-fun arrayNoDuplicates!0 (array!99606 (_ BitVec 32) List!34751) Bool)

(assert (=> b!1490335 (= res!1013729 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34748))))

(declare-fun b!1490336 () Bool)

(declare-fun res!1013724 () Bool)

(assert (=> b!1490336 (=> (not res!1013724) (not e!835152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99606 (_ BitVec 32)) Bool)

(assert (=> b!1490336 (= res!1013724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490337 () Bool)

(declare-fun e!835156 () Bool)

(assert (=> b!1490337 (= e!835156 (or (= (select (arr!48070 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48070 a!2862) intermediateBeforeIndex!19) (select (arr!48070 a!2862) j!93))))))

(declare-fun res!1013722 () Bool)

(assert (=> start!126916 (=> (not res!1013722) (not e!835152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126916 (= res!1013722 (validMask!0 mask!2687))))

(assert (=> start!126916 e!835152))

(assert (=> start!126916 true))

(declare-fun array_inv!37015 (array!99606) Bool)

(assert (=> start!126916 (array_inv!37015 a!2862)))

(declare-fun b!1490331 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99606 (_ BitVec 32)) SeekEntryResult!12333)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99606 (_ BitVec 32)) SeekEntryResult!12333)

(assert (=> b!1490331 (= e!835154 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649873 lt!649876 mask!2687) (seekEntryOrOpen!0 lt!649873 lt!649876 mask!2687)))))

(declare-fun b!1490338 () Bool)

(assert (=> b!1490338 (= e!835155 (not e!835150))))

(declare-fun res!1013717 () Bool)

(assert (=> b!1490338 (=> res!1013717 e!835150)))

(assert (=> b!1490338 (= res!1013717 (or (and (= (select (arr!48070 a!2862) index!646) (select (store (arr!48070 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48070 a!2862) index!646) (select (arr!48070 a!2862) j!93))) (= (select (arr!48070 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490338 e!835156))

(declare-fun res!1013718 () Bool)

(assert (=> b!1490338 (=> (not res!1013718) (not e!835156))))

(assert (=> b!1490338 (= res!1013718 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49954 0))(
  ( (Unit!49955) )
))
(declare-fun lt!649874 () Unit!49954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99606 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49954)

(assert (=> b!1490338 (= lt!649874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490339 () Bool)

(declare-fun res!1013727 () Bool)

(assert (=> b!1490339 (=> (not res!1013727) (not e!835156))))

(assert (=> b!1490339 (= res!1013727 (= (seekEntryOrOpen!0 (select (arr!48070 a!2862) j!93) a!2862 mask!2687) (Found!12333 j!93)))))

(declare-fun b!1490340 () Bool)

(declare-fun res!1013715 () Bool)

(assert (=> b!1490340 (=> (not res!1013715) (not e!835155))))

(assert (=> b!1490340 (= res!1013715 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490341 () Bool)

(assert (=> b!1490341 (= e!835152 e!835153)))

(declare-fun res!1013723 () Bool)

(assert (=> b!1490341 (=> (not res!1013723) (not e!835153))))

(assert (=> b!1490341 (= res!1013723 (= (select (store (arr!48070 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490341 (= lt!649876 (array!99607 (store (arr!48070 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48621 a!2862)))))

(assert (= (and start!126916 res!1013722) b!1490333))

(assert (= (and b!1490333 res!1013726) b!1490325))

(assert (= (and b!1490325 res!1013719) b!1490327))

(assert (= (and b!1490327 res!1013728) b!1490336))

(assert (= (and b!1490336 res!1013724) b!1490335))

(assert (= (and b!1490335 res!1013729) b!1490329))

(assert (= (and b!1490329 res!1013716) b!1490341))

(assert (= (and b!1490341 res!1013723) b!1490334))

(assert (= (and b!1490334 res!1013725) b!1490330))

(assert (= (and b!1490330 res!1013720) b!1490328))

(assert (= (and b!1490328 res!1013721) b!1490332))

(assert (= (and b!1490332 c!137834) b!1490324))

(assert (= (and b!1490332 (not c!137834)) b!1490331))

(assert (= (and b!1490332 res!1013730) b!1490340))

(assert (= (and b!1490340 res!1013715) b!1490338))

(assert (= (and b!1490338 res!1013718) b!1490339))

(assert (= (and b!1490339 res!1013727) b!1490337))

(assert (= (and b!1490338 (not res!1013717)) b!1490326))

(declare-fun m!1374543 () Bool)

(assert (=> b!1490331 m!1374543))

(declare-fun m!1374545 () Bool)

(assert (=> b!1490331 m!1374545))

(declare-fun m!1374547 () Bool)

(assert (=> b!1490334 m!1374547))

(assert (=> b!1490334 m!1374547))

(declare-fun m!1374549 () Bool)

(assert (=> b!1490334 m!1374549))

(assert (=> b!1490334 m!1374549))

(assert (=> b!1490334 m!1374547))

(declare-fun m!1374551 () Bool)

(assert (=> b!1490334 m!1374551))

(declare-fun m!1374553 () Bool)

(assert (=> b!1490337 m!1374553))

(assert (=> b!1490337 m!1374547))

(declare-fun m!1374555 () Bool)

(assert (=> b!1490328 m!1374555))

(assert (=> b!1490328 m!1374555))

(declare-fun m!1374557 () Bool)

(assert (=> b!1490328 m!1374557))

(declare-fun m!1374559 () Bool)

(assert (=> b!1490328 m!1374559))

(declare-fun m!1374561 () Bool)

(assert (=> b!1490328 m!1374561))

(assert (=> b!1490341 m!1374559))

(declare-fun m!1374563 () Bool)

(assert (=> b!1490341 m!1374563))

(assert (=> b!1490330 m!1374547))

(assert (=> b!1490330 m!1374547))

(declare-fun m!1374565 () Bool)

(assert (=> b!1490330 m!1374565))

(declare-fun m!1374567 () Bool)

(assert (=> start!126916 m!1374567))

(declare-fun m!1374569 () Bool)

(assert (=> start!126916 m!1374569))

(declare-fun m!1374571 () Bool)

(assert (=> b!1490336 m!1374571))

(declare-fun m!1374573 () Bool)

(assert (=> b!1490335 m!1374573))

(declare-fun m!1374575 () Bool)

(assert (=> b!1490326 m!1374575))

(declare-fun m!1374577 () Bool)

(assert (=> b!1490325 m!1374577))

(assert (=> b!1490325 m!1374577))

(declare-fun m!1374579 () Bool)

(assert (=> b!1490325 m!1374579))

(assert (=> b!1490327 m!1374547))

(assert (=> b!1490327 m!1374547))

(declare-fun m!1374581 () Bool)

(assert (=> b!1490327 m!1374581))

(declare-fun m!1374583 () Bool)

(assert (=> b!1490324 m!1374583))

(assert (=> b!1490339 m!1374547))

(assert (=> b!1490339 m!1374547))

(declare-fun m!1374585 () Bool)

(assert (=> b!1490339 m!1374585))

(declare-fun m!1374587 () Bool)

(assert (=> b!1490338 m!1374587))

(assert (=> b!1490338 m!1374559))

(declare-fun m!1374589 () Bool)

(assert (=> b!1490338 m!1374589))

(declare-fun m!1374591 () Bool)

(assert (=> b!1490338 m!1374591))

(declare-fun m!1374593 () Bool)

(assert (=> b!1490338 m!1374593))

(assert (=> b!1490338 m!1374547))

(push 1)

