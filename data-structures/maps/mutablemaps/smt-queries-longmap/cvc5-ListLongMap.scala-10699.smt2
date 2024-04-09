; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125374 () Bool)

(assert start!125374)

(declare-fun b!1464343 () Bool)

(declare-fun e!822959 () Bool)

(declare-fun e!822960 () Bool)

(assert (=> b!1464343 (= e!822959 e!822960)))

(declare-fun res!993540 () Bool)

(assert (=> b!1464343 (=> (not res!993540) (not e!822960))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11928 0))(
  ( (MissingZero!11928 (index!50103 (_ BitVec 32))) (Found!11928 (index!50104 (_ BitVec 32))) (Intermediate!11928 (undefined!12740 Bool) (index!50105 (_ BitVec 32)) (x!131692 (_ BitVec 32))) (Undefined!11928) (MissingVacant!11928 (index!50106 (_ BitVec 32))) )
))
(declare-fun lt!641023 () SeekEntryResult!11928)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464343 (= res!993540 (= lt!641023 (Intermediate!11928 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!641025 () (_ BitVec 64))

(declare-datatypes ((array!98739 0))(
  ( (array!98740 (arr!47653 (Array (_ BitVec 32) (_ BitVec 64))) (size!48204 (_ BitVec 32))) )
))
(declare-fun lt!641020 () array!98739)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98739 (_ BitVec 32)) SeekEntryResult!11928)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464343 (= lt!641023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641025 mask!2687) lt!641025 lt!641020 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98739)

(assert (=> b!1464343 (= lt!641025 (select (store (arr!47653 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464344 () Bool)

(declare-fun res!993532 () Bool)

(assert (=> b!1464344 (=> (not res!993532) (not e!822960))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1464344 (= res!993532 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464345 () Bool)

(declare-fun res!993537 () Bool)

(declare-fun e!822955 () Bool)

(assert (=> b!1464345 (=> (not res!993537) (not e!822955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98739 (_ BitVec 32)) Bool)

(assert (=> b!1464345 (= res!993537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464346 () Bool)

(declare-fun res!993527 () Bool)

(assert (=> b!1464346 (=> (not res!993527) (not e!822955))))

(declare-datatypes ((List!34334 0))(
  ( (Nil!34331) (Cons!34330 (h!35680 (_ BitVec 64)) (t!49035 List!34334)) )
))
(declare-fun arrayNoDuplicates!0 (array!98739 (_ BitVec 32) List!34334) Bool)

(assert (=> b!1464346 (= res!993527 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34331))))

(declare-fun b!1464347 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!822954 () Bool)

(assert (=> b!1464347 (= e!822954 (= lt!641023 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641025 lt!641020 mask!2687)))))

(declare-fun res!993526 () Bool)

(assert (=> start!125374 (=> (not res!993526) (not e!822955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125374 (= res!993526 (validMask!0 mask!2687))))

(assert (=> start!125374 e!822955))

(assert (=> start!125374 true))

(declare-fun array_inv!36598 (array!98739) Bool)

(assert (=> start!125374 (array_inv!36598 a!2862)))

(declare-fun b!1464348 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98739 (_ BitVec 32)) SeekEntryResult!11928)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98739 (_ BitVec 32)) SeekEntryResult!11928)

(assert (=> b!1464348 (= e!822954 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641025 lt!641020 mask!2687) (seekEntryOrOpen!0 lt!641025 lt!641020 mask!2687)))))

(declare-fun b!1464349 () Bool)

(declare-fun res!993523 () Bool)

(assert (=> b!1464349 (=> (not res!993523) (not e!822959))))

(declare-fun lt!641021 () SeekEntryResult!11928)

(assert (=> b!1464349 (= res!993523 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47653 a!2862) j!93) a!2862 mask!2687) lt!641021))))

(declare-fun b!1464350 () Bool)

(declare-fun e!822956 () Bool)

(assert (=> b!1464350 (= e!822956 e!822959)))

(declare-fun res!993536 () Bool)

(assert (=> b!1464350 (=> (not res!993536) (not e!822959))))

(assert (=> b!1464350 (= res!993536 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47653 a!2862) j!93) mask!2687) (select (arr!47653 a!2862) j!93) a!2862 mask!2687) lt!641021))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1464350 (= lt!641021 (Intermediate!11928 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464351 () Bool)

(declare-fun lt!641022 () (_ BitVec 32))

(declare-fun e!822953 () Bool)

(assert (=> b!1464351 (= e!822953 (not (= lt!641023 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641022 lt!641025 lt!641020 mask!2687))))))

(declare-fun b!1464352 () Bool)

(declare-fun res!993534 () Bool)

(assert (=> b!1464352 (=> (not res!993534) (not e!822955))))

(assert (=> b!1464352 (= res!993534 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48204 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48204 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48204 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464353 () Bool)

(declare-fun e!822962 () Bool)

(declare-fun e!822961 () Bool)

(assert (=> b!1464353 (= e!822962 e!822961)))

(declare-fun res!993533 () Bool)

(assert (=> b!1464353 (=> res!993533 e!822961)))

(assert (=> b!1464353 (= res!993533 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641022 #b00000000000000000000000000000000) (bvsge lt!641022 (size!48204 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464353 (= lt!641022 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464354 () Bool)

(declare-fun res!993530 () Bool)

(assert (=> b!1464354 (=> (not res!993530) (not e!822955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464354 (= res!993530 (validKeyInArray!0 (select (arr!47653 a!2862) i!1006)))))

(declare-fun b!1464355 () Bool)

(assert (=> b!1464355 (= e!822960 (not e!822962))))

(declare-fun res!993524 () Bool)

(assert (=> b!1464355 (=> res!993524 e!822962)))

(assert (=> b!1464355 (= res!993524 (or (and (= (select (arr!47653 a!2862) index!646) (select (store (arr!47653 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47653 a!2862) index!646) (select (arr!47653 a!2862) j!93))) (= (select (arr!47653 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822957 () Bool)

(assert (=> b!1464355 e!822957))

(declare-fun res!993538 () Bool)

(assert (=> b!1464355 (=> (not res!993538) (not e!822957))))

(assert (=> b!1464355 (= res!993538 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49300 0))(
  ( (Unit!49301) )
))
(declare-fun lt!641024 () Unit!49300)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49300)

(assert (=> b!1464355 (= lt!641024 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464356 () Bool)

(declare-fun res!993535 () Bool)

(assert (=> b!1464356 (=> (not res!993535) (not e!822957))))

(assert (=> b!1464356 (= res!993535 (= (seekEntryOrOpen!0 (select (arr!47653 a!2862) j!93) a!2862 mask!2687) (Found!11928 j!93)))))

(declare-fun b!1464357 () Bool)

(declare-fun res!993529 () Bool)

(assert (=> b!1464357 (=> res!993529 e!822961)))

(assert (=> b!1464357 (= res!993529 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641022 (select (arr!47653 a!2862) j!93) a!2862 mask!2687) lt!641021)))))

(declare-fun b!1464358 () Bool)

(declare-fun res!993528 () Bool)

(assert (=> b!1464358 (=> (not res!993528) (not e!822955))))

(assert (=> b!1464358 (= res!993528 (validKeyInArray!0 (select (arr!47653 a!2862) j!93)))))

(declare-fun b!1464359 () Bool)

(declare-fun res!993525 () Bool)

(assert (=> b!1464359 (=> (not res!993525) (not e!822955))))

(assert (=> b!1464359 (= res!993525 (and (= (size!48204 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48204 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48204 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464360 () Bool)

(assert (=> b!1464360 (= e!822961 true)))

(declare-fun lt!641026 () Bool)

(assert (=> b!1464360 (= lt!641026 e!822953)))

(declare-fun c!134923 () Bool)

(assert (=> b!1464360 (= c!134923 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464361 () Bool)

(declare-fun res!993539 () Bool)

(assert (=> b!1464361 (=> (not res!993539) (not e!822960))))

(assert (=> b!1464361 (= res!993539 e!822954)))

(declare-fun c!134924 () Bool)

(assert (=> b!1464361 (= c!134924 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464362 () Bool)

(assert (=> b!1464362 (= e!822957 (or (= (select (arr!47653 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47653 a!2862) intermediateBeforeIndex!19) (select (arr!47653 a!2862) j!93))))))

(declare-fun b!1464363 () Bool)

(assert (=> b!1464363 (= e!822955 e!822956)))

(declare-fun res!993531 () Bool)

(assert (=> b!1464363 (=> (not res!993531) (not e!822956))))

(assert (=> b!1464363 (= res!993531 (= (select (store (arr!47653 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464363 (= lt!641020 (array!98740 (store (arr!47653 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48204 a!2862)))))

(declare-fun b!1464364 () Bool)

(assert (=> b!1464364 (= e!822953 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641022 intermediateAfterIndex!19 lt!641025 lt!641020 mask!2687) (seekEntryOrOpen!0 lt!641025 lt!641020 mask!2687))))))

(assert (= (and start!125374 res!993526) b!1464359))

(assert (= (and b!1464359 res!993525) b!1464354))

(assert (= (and b!1464354 res!993530) b!1464358))

(assert (= (and b!1464358 res!993528) b!1464345))

(assert (= (and b!1464345 res!993537) b!1464346))

(assert (= (and b!1464346 res!993527) b!1464352))

(assert (= (and b!1464352 res!993534) b!1464363))

(assert (= (and b!1464363 res!993531) b!1464350))

(assert (= (and b!1464350 res!993536) b!1464349))

(assert (= (and b!1464349 res!993523) b!1464343))

(assert (= (and b!1464343 res!993540) b!1464361))

(assert (= (and b!1464361 c!134924) b!1464347))

(assert (= (and b!1464361 (not c!134924)) b!1464348))

(assert (= (and b!1464361 res!993539) b!1464344))

(assert (= (and b!1464344 res!993532) b!1464355))

(assert (= (and b!1464355 res!993538) b!1464356))

(assert (= (and b!1464356 res!993535) b!1464362))

(assert (= (and b!1464355 (not res!993524)) b!1464353))

(assert (= (and b!1464353 (not res!993533)) b!1464357))

(assert (= (and b!1464357 (not res!993529)) b!1464360))

(assert (= (and b!1464360 c!134923) b!1464351))

(assert (= (and b!1464360 (not c!134923)) b!1464364))

(declare-fun m!1351617 () Bool)

(assert (=> b!1464351 m!1351617))

(declare-fun m!1351619 () Bool)

(assert (=> b!1464350 m!1351619))

(assert (=> b!1464350 m!1351619))

(declare-fun m!1351621 () Bool)

(assert (=> b!1464350 m!1351621))

(assert (=> b!1464350 m!1351621))

(assert (=> b!1464350 m!1351619))

(declare-fun m!1351623 () Bool)

(assert (=> b!1464350 m!1351623))

(declare-fun m!1351625 () Bool)

(assert (=> b!1464347 m!1351625))

(declare-fun m!1351627 () Bool)

(assert (=> b!1464348 m!1351627))

(declare-fun m!1351629 () Bool)

(assert (=> b!1464348 m!1351629))

(assert (=> b!1464357 m!1351619))

(assert (=> b!1464357 m!1351619))

(declare-fun m!1351631 () Bool)

(assert (=> b!1464357 m!1351631))

(declare-fun m!1351633 () Bool)

(assert (=> b!1464345 m!1351633))

(declare-fun m!1351635 () Bool)

(assert (=> b!1464362 m!1351635))

(assert (=> b!1464362 m!1351619))

(assert (=> b!1464356 m!1351619))

(assert (=> b!1464356 m!1351619))

(declare-fun m!1351637 () Bool)

(assert (=> b!1464356 m!1351637))

(declare-fun m!1351639 () Bool)

(assert (=> b!1464343 m!1351639))

(assert (=> b!1464343 m!1351639))

(declare-fun m!1351641 () Bool)

(assert (=> b!1464343 m!1351641))

(declare-fun m!1351643 () Bool)

(assert (=> b!1464343 m!1351643))

(declare-fun m!1351645 () Bool)

(assert (=> b!1464343 m!1351645))

(declare-fun m!1351647 () Bool)

(assert (=> b!1464355 m!1351647))

(assert (=> b!1464355 m!1351643))

(declare-fun m!1351649 () Bool)

(assert (=> b!1464355 m!1351649))

(declare-fun m!1351651 () Bool)

(assert (=> b!1464355 m!1351651))

(declare-fun m!1351653 () Bool)

(assert (=> b!1464355 m!1351653))

(assert (=> b!1464355 m!1351619))

(declare-fun m!1351655 () Bool)

(assert (=> b!1464353 m!1351655))

(declare-fun m!1351657 () Bool)

(assert (=> b!1464364 m!1351657))

(assert (=> b!1464364 m!1351629))

(assert (=> b!1464349 m!1351619))

(assert (=> b!1464349 m!1351619))

(declare-fun m!1351659 () Bool)

(assert (=> b!1464349 m!1351659))

(assert (=> b!1464363 m!1351643))

(declare-fun m!1351661 () Bool)

(assert (=> b!1464363 m!1351661))

(declare-fun m!1351663 () Bool)

(assert (=> b!1464346 m!1351663))

(declare-fun m!1351665 () Bool)

(assert (=> b!1464354 m!1351665))

(assert (=> b!1464354 m!1351665))

(declare-fun m!1351667 () Bool)

(assert (=> b!1464354 m!1351667))

(assert (=> b!1464358 m!1351619))

(assert (=> b!1464358 m!1351619))

(declare-fun m!1351669 () Bool)

(assert (=> b!1464358 m!1351669))

(declare-fun m!1351671 () Bool)

(assert (=> start!125374 m!1351671))

(declare-fun m!1351673 () Bool)

(assert (=> start!125374 m!1351673))

(push 1)

