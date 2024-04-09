; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126252 () Bool)

(assert start!126252)

(declare-fun b!1478564 () Bool)

(declare-fun e!829437 () Bool)

(declare-fun e!829431 () Bool)

(assert (=> b!1478564 (= e!829437 e!829431)))

(declare-fun res!1004677 () Bool)

(assert (=> b!1478564 (=> (not res!1004677) (not e!829431))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12175 0))(
  ( (MissingZero!12175 (index!51091 (_ BitVec 32))) (Found!12175 (index!51092 (_ BitVec 32))) (Intermediate!12175 (undefined!12987 Bool) (index!51093 (_ BitVec 32)) (x!132681 (_ BitVec 32))) (Undefined!12175) (MissingVacant!12175 (index!51094 (_ BitVec 32))) )
))
(declare-fun lt!645693 () SeekEntryResult!12175)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1478564 (= res!1004677 (= lt!645693 (Intermediate!12175 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645689 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!99275 0))(
  ( (array!99276 (arr!47912 (Array (_ BitVec 32) (_ BitVec 64))) (size!48463 (_ BitVec 32))) )
))
(declare-fun lt!645694 () array!99275)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99275 (_ BitVec 32)) SeekEntryResult!12175)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478564 (= lt!645693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645689 mask!2687) lt!645689 lt!645694 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99275)

(assert (=> b!1478564 (= lt!645689 (select (store (arr!47912 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478565 () Bool)

(declare-fun e!829435 () Bool)

(declare-fun e!829434 () Bool)

(assert (=> b!1478565 (= e!829435 e!829434)))

(declare-fun res!1004678 () Bool)

(assert (=> b!1478565 (=> res!1004678 e!829434)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1478565 (= res!1004678 (or (and (= (select (arr!47912 a!2862) index!646) (select (store (arr!47912 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47912 a!2862) index!646) (select (arr!47912 a!2862) j!93))) (not (= (select (arr!47912 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478566 () Bool)

(declare-fun res!1004673 () Bool)

(declare-fun e!829436 () Bool)

(assert (=> b!1478566 (=> (not res!1004673) (not e!829436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478566 (= res!1004673 (validKeyInArray!0 (select (arr!47912 a!2862) j!93)))))

(declare-fun res!1004675 () Bool)

(assert (=> start!126252 (=> (not res!1004675) (not e!829436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126252 (= res!1004675 (validMask!0 mask!2687))))

(assert (=> start!126252 e!829436))

(assert (=> start!126252 true))

(declare-fun array_inv!36857 (array!99275) Bool)

(assert (=> start!126252 (array_inv!36857 a!2862)))

(declare-fun b!1478567 () Bool)

(declare-fun res!1004665 () Bool)

(assert (=> b!1478567 (=> (not res!1004665) (not e!829436))))

(assert (=> b!1478567 (= res!1004665 (and (= (size!48463 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48463 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48463 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478568 () Bool)

(declare-fun e!829433 () Bool)

(assert (=> b!1478568 (= e!829436 e!829433)))

(declare-fun res!1004674 () Bool)

(assert (=> b!1478568 (=> (not res!1004674) (not e!829433))))

(assert (=> b!1478568 (= res!1004674 (= (select (store (arr!47912 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478568 (= lt!645694 (array!99276 (store (arr!47912 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48463 a!2862)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1478569 () Bool)

(assert (=> b!1478569 (= e!829431 (not (or (and (= (select (arr!47912 a!2862) index!646) (select (store (arr!47912 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47912 a!2862) index!646) (select (arr!47912 a!2862) j!93))) (not (= (select (arr!47912 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!47912 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1478569 e!829435))

(declare-fun res!1004672 () Bool)

(assert (=> b!1478569 (=> (not res!1004672) (not e!829435))))

(declare-fun lt!645692 () SeekEntryResult!12175)

(assert (=> b!1478569 (= res!1004672 (and (= lt!645692 (Found!12175 j!93)) (or (= (select (arr!47912 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47912 a!2862) intermediateBeforeIndex!19) (select (arr!47912 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99275 (_ BitVec 32)) SeekEntryResult!12175)

(assert (=> b!1478569 (= lt!645692 (seekEntryOrOpen!0 (select (arr!47912 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99275 (_ BitVec 32)) Bool)

(assert (=> b!1478569 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49638 0))(
  ( (Unit!49639) )
))
(declare-fun lt!645690 () Unit!49638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49638)

(assert (=> b!1478569 (= lt!645690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1478570 () Bool)

(declare-fun res!1004671 () Bool)

(assert (=> b!1478570 (=> (not res!1004671) (not e!829431))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1478570 (= res!1004671 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1478571 () Bool)

(declare-fun res!1004679 () Bool)

(assert (=> b!1478571 (=> (not res!1004679) (not e!829431))))

(declare-fun e!829439 () Bool)

(assert (=> b!1478571 (= res!1004679 e!829439)))

(declare-fun c!136472 () Bool)

(assert (=> b!1478571 (= c!136472 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478572 () Bool)

(assert (=> b!1478572 (= e!829439 (= lt!645693 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645689 lt!645694 mask!2687)))))

(declare-fun b!1478573 () Bool)

(declare-fun res!1004667 () Bool)

(assert (=> b!1478573 (=> (not res!1004667) (not e!829436))))

(assert (=> b!1478573 (= res!1004667 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48463 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48463 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48463 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478574 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99275 (_ BitVec 32)) SeekEntryResult!12175)

(assert (=> b!1478574 (= e!829439 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645689 lt!645694 mask!2687) (seekEntryOrOpen!0 lt!645689 lt!645694 mask!2687)))))

(declare-fun e!829438 () Bool)

(declare-fun b!1478575 () Bool)

(assert (=> b!1478575 (= e!829438 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478576 () Bool)

(declare-fun res!1004670 () Bool)

(assert (=> b!1478576 (=> (not res!1004670) (not e!829436))))

(assert (=> b!1478576 (= res!1004670 (validKeyInArray!0 (select (arr!47912 a!2862) i!1006)))))

(declare-fun b!1478577 () Bool)

(declare-fun res!1004664 () Bool)

(assert (=> b!1478577 (=> (not res!1004664) (not e!829436))))

(declare-datatypes ((List!34593 0))(
  ( (Nil!34590) (Cons!34589 (h!35957 (_ BitVec 64)) (t!49294 List!34593)) )
))
(declare-fun arrayNoDuplicates!0 (array!99275 (_ BitVec 32) List!34593) Bool)

(assert (=> b!1478577 (= res!1004664 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34590))))

(declare-fun b!1478578 () Bool)

(declare-fun res!1004668 () Bool)

(assert (=> b!1478578 (=> (not res!1004668) (not e!829436))))

(assert (=> b!1478578 (= res!1004668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478579 () Bool)

(assert (=> b!1478579 (= e!829434 e!829438)))

(declare-fun res!1004669 () Bool)

(assert (=> b!1478579 (=> (not res!1004669) (not e!829438))))

(assert (=> b!1478579 (= res!1004669 (= lt!645692 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47912 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478580 () Bool)

(assert (=> b!1478580 (= e!829433 e!829437)))

(declare-fun res!1004666 () Bool)

(assert (=> b!1478580 (=> (not res!1004666) (not e!829437))))

(declare-fun lt!645691 () SeekEntryResult!12175)

(assert (=> b!1478580 (= res!1004666 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47912 a!2862) j!93) mask!2687) (select (arr!47912 a!2862) j!93) a!2862 mask!2687) lt!645691))))

(assert (=> b!1478580 (= lt!645691 (Intermediate!12175 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1478581 () Bool)

(declare-fun res!1004676 () Bool)

(assert (=> b!1478581 (=> (not res!1004676) (not e!829437))))

(assert (=> b!1478581 (= res!1004676 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47912 a!2862) j!93) a!2862 mask!2687) lt!645691))))

(assert (= (and start!126252 res!1004675) b!1478567))

(assert (= (and b!1478567 res!1004665) b!1478576))

(assert (= (and b!1478576 res!1004670) b!1478566))

(assert (= (and b!1478566 res!1004673) b!1478578))

(assert (= (and b!1478578 res!1004668) b!1478577))

(assert (= (and b!1478577 res!1004664) b!1478573))

(assert (= (and b!1478573 res!1004667) b!1478568))

(assert (= (and b!1478568 res!1004674) b!1478580))

(assert (= (and b!1478580 res!1004666) b!1478581))

(assert (= (and b!1478581 res!1004676) b!1478564))

(assert (= (and b!1478564 res!1004677) b!1478571))

(assert (= (and b!1478571 c!136472) b!1478572))

(assert (= (and b!1478571 (not c!136472)) b!1478574))

(assert (= (and b!1478571 res!1004679) b!1478570))

(assert (= (and b!1478570 res!1004671) b!1478569))

(assert (= (and b!1478569 res!1004672) b!1478565))

(assert (= (and b!1478565 (not res!1004678)) b!1478579))

(assert (= (and b!1478579 res!1004669) b!1478575))

(declare-fun m!1364527 () Bool)

(assert (=> b!1478578 m!1364527))

(declare-fun m!1364529 () Bool)

(assert (=> b!1478579 m!1364529))

(assert (=> b!1478579 m!1364529))

(declare-fun m!1364531 () Bool)

(assert (=> b!1478579 m!1364531))

(declare-fun m!1364533 () Bool)

(assert (=> b!1478576 m!1364533))

(assert (=> b!1478576 m!1364533))

(declare-fun m!1364535 () Bool)

(assert (=> b!1478576 m!1364535))

(declare-fun m!1364537 () Bool)

(assert (=> b!1478569 m!1364537))

(declare-fun m!1364539 () Bool)

(assert (=> b!1478569 m!1364539))

(declare-fun m!1364541 () Bool)

(assert (=> b!1478569 m!1364541))

(declare-fun m!1364543 () Bool)

(assert (=> b!1478569 m!1364543))

(declare-fun m!1364545 () Bool)

(assert (=> b!1478569 m!1364545))

(assert (=> b!1478569 m!1364529))

(declare-fun m!1364547 () Bool)

(assert (=> b!1478569 m!1364547))

(declare-fun m!1364549 () Bool)

(assert (=> b!1478569 m!1364549))

(assert (=> b!1478569 m!1364529))

(assert (=> b!1478566 m!1364529))

(assert (=> b!1478566 m!1364529))

(declare-fun m!1364551 () Bool)

(assert (=> b!1478566 m!1364551))

(declare-fun m!1364553 () Bool)

(assert (=> b!1478564 m!1364553))

(assert (=> b!1478564 m!1364553))

(declare-fun m!1364555 () Bool)

(assert (=> b!1478564 m!1364555))

(assert (=> b!1478564 m!1364539))

(declare-fun m!1364557 () Bool)

(assert (=> b!1478564 m!1364557))

(declare-fun m!1364559 () Bool)

(assert (=> b!1478572 m!1364559))

(declare-fun m!1364561 () Bool)

(assert (=> b!1478574 m!1364561))

(declare-fun m!1364563 () Bool)

(assert (=> b!1478574 m!1364563))

(assert (=> b!1478565 m!1364545))

(assert (=> b!1478565 m!1364539))

(assert (=> b!1478565 m!1364543))

(assert (=> b!1478565 m!1364529))

(assert (=> b!1478568 m!1364539))

(declare-fun m!1364565 () Bool)

(assert (=> b!1478568 m!1364565))

(assert (=> b!1478581 m!1364529))

(assert (=> b!1478581 m!1364529))

(declare-fun m!1364567 () Bool)

(assert (=> b!1478581 m!1364567))

(assert (=> b!1478580 m!1364529))

(assert (=> b!1478580 m!1364529))

(declare-fun m!1364569 () Bool)

(assert (=> b!1478580 m!1364569))

(assert (=> b!1478580 m!1364569))

(assert (=> b!1478580 m!1364529))

(declare-fun m!1364571 () Bool)

(assert (=> b!1478580 m!1364571))

(declare-fun m!1364573 () Bool)

(assert (=> b!1478577 m!1364573))

(declare-fun m!1364575 () Bool)

(assert (=> start!126252 m!1364575))

(declare-fun m!1364577 () Bool)

(assert (=> start!126252 m!1364577))

(check-sat (not b!1478579) (not b!1478572) (not b!1478576) (not start!126252) (not b!1478566) (not b!1478574) (not b!1478577) (not b!1478578) (not b!1478580) (not b!1478569) (not b!1478581) (not b!1478564))
(check-sat)
