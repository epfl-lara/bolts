; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125228 () Bool)

(assert start!125228)

(declare-fun res!989681 () Bool)

(declare-fun e!820884 () Bool)

(assert (=> start!125228 (=> (not res!989681) (not e!820884))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125228 (= res!989681 (validMask!0 mask!2687))))

(assert (=> start!125228 e!820884))

(assert (=> start!125228 true))

(declare-datatypes ((array!98593 0))(
  ( (array!98594 (arr!47580 (Array (_ BitVec 32) (_ BitVec 64))) (size!48131 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98593)

(declare-fun array_inv!36525 (array!98593) Bool)

(assert (=> start!125228 (array_inv!36525 a!2862)))

(declare-fun b!1459696 () Bool)

(declare-fun res!989694 () Bool)

(declare-fun e!820883 () Bool)

(assert (=> b!1459696 (=> res!989694 e!820883)))

(declare-fun e!820881 () Bool)

(assert (=> b!1459696 (= res!989694 e!820881)))

(declare-fun c!134521 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1459696 (= c!134521 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1459697 () Bool)

(declare-fun res!989683 () Bool)

(assert (=> b!1459697 (=> res!989683 e!820883)))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1459697 (= res!989683 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1459698 () Bool)

(declare-fun e!820882 () Bool)

(declare-fun e!820887 () Bool)

(assert (=> b!1459698 (= e!820882 e!820887)))

(declare-fun res!989686 () Bool)

(assert (=> b!1459698 (=> (not res!989686) (not e!820887))))

(declare-datatypes ((SeekEntryResult!11855 0))(
  ( (MissingZero!11855 (index!49811 (_ BitVec 32))) (Found!11855 (index!49812 (_ BitVec 32))) (Intermediate!11855 (undefined!12667 Bool) (index!49813 (_ BitVec 32)) (x!131419 (_ BitVec 32))) (Undefined!11855) (MissingVacant!11855 (index!49814 (_ BitVec 32))) )
))
(declare-fun lt!639526 () SeekEntryResult!11855)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98593 (_ BitVec 32)) SeekEntryResult!11855)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459698 (= res!989686 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47580 a!2862) j!93) mask!2687) (select (arr!47580 a!2862) j!93) a!2862 mask!2687) lt!639526))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1459698 (= lt!639526 (Intermediate!11855 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1459699 () Bool)

(declare-fun res!989687 () Bool)

(assert (=> b!1459699 (=> (not res!989687) (not e!820884))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1459699 (= res!989687 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48131 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48131 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48131 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1459700 () Bool)

(assert (=> b!1459700 (= e!820883 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!639527 () SeekEntryResult!11855)

(declare-fun lt!639522 () SeekEntryResult!11855)

(assert (=> b!1459700 (= lt!639527 lt!639522)))

(declare-datatypes ((Unit!49154 0))(
  ( (Unit!49155) )
))
(declare-fun lt!639524 () Unit!49154)

(declare-fun lt!639528 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49154)

(assert (=> b!1459700 (= lt!639524 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!639528 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1459701 () Bool)

(declare-fun e!820889 () Bool)

(declare-fun e!820888 () Bool)

(assert (=> b!1459701 (= e!820889 (not e!820888))))

(declare-fun res!989682 () Bool)

(assert (=> b!1459701 (=> res!989682 e!820888)))

(assert (=> b!1459701 (= res!989682 (or (and (= (select (arr!47580 a!2862) index!646) (select (store (arr!47580 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47580 a!2862) index!646) (select (arr!47580 a!2862) j!93))) (= (select (arr!47580 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1459701 (and (= lt!639527 (Found!11855 j!93)) (or (= (select (arr!47580 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47580 a!2862) intermediateBeforeIndex!19) (select (arr!47580 a!2862) j!93))) (let ((bdg!53533 (select (store (arr!47580 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47580 a!2862) index!646) bdg!53533) (= (select (arr!47580 a!2862) index!646) (select (arr!47580 a!2862) j!93))) (= (select (arr!47580 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53533 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98593 (_ BitVec 32)) SeekEntryResult!11855)

(assert (=> b!1459701 (= lt!639527 (seekEntryOrOpen!0 (select (arr!47580 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98593 (_ BitVec 32)) Bool)

(assert (=> b!1459701 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!639529 () Unit!49154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49154)

(assert (=> b!1459701 (= lt!639529 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1459702 () Bool)

(declare-fun res!989692 () Bool)

(assert (=> b!1459702 (=> (not res!989692) (not e!820889))))

(assert (=> b!1459702 (= res!989692 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1459703 () Bool)

(declare-fun res!989696 () Bool)

(assert (=> b!1459703 (=> (not res!989696) (not e!820884))))

(assert (=> b!1459703 (= res!989696 (and (= (size!48131 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48131 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48131 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!639523 () SeekEntryResult!11855)

(declare-fun b!1459704 () Bool)

(declare-fun lt!639521 () array!98593)

(declare-fun lt!639525 () (_ BitVec 64))

(assert (=> b!1459704 (= e!820881 (not (= lt!639523 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639528 lt!639525 lt!639521 mask!2687))))))

(declare-fun b!1459705 () Bool)

(declare-fun res!989680 () Bool)

(assert (=> b!1459705 (=> (not res!989680) (not e!820884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1459705 (= res!989680 (validKeyInArray!0 (select (arr!47580 a!2862) j!93)))))

(declare-fun b!1459706 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98593 (_ BitVec 32)) SeekEntryResult!11855)

(assert (=> b!1459706 (= e!820881 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639528 intermediateAfterIndex!19 lt!639525 lt!639521 mask!2687) lt!639522)))))

(declare-fun b!1459707 () Bool)

(declare-fun res!989690 () Bool)

(assert (=> b!1459707 (=> res!989690 e!820883)))

(assert (=> b!1459707 (= res!989690 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639528 (select (arr!47580 a!2862) j!93) a!2862 mask!2687) lt!639526)))))

(declare-fun b!1459708 () Bool)

(declare-fun res!989685 () Bool)

(assert (=> b!1459708 (=> (not res!989685) (not e!820884))))

(assert (=> b!1459708 (= res!989685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1459709 () Bool)

(declare-fun res!989695 () Bool)

(assert (=> b!1459709 (=> (not res!989695) (not e!820889))))

(declare-fun e!820886 () Bool)

(assert (=> b!1459709 (= res!989695 e!820886)))

(declare-fun c!134522 () Bool)

(assert (=> b!1459709 (= c!134522 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1459710 () Bool)

(declare-fun res!989691 () Bool)

(assert (=> b!1459710 (=> (not res!989691) (not e!820884))))

(assert (=> b!1459710 (= res!989691 (validKeyInArray!0 (select (arr!47580 a!2862) i!1006)))))

(declare-fun b!1459711 () Bool)

(declare-fun res!989684 () Bool)

(assert (=> b!1459711 (=> (not res!989684) (not e!820884))))

(declare-datatypes ((List!34261 0))(
  ( (Nil!34258) (Cons!34257 (h!35607 (_ BitVec 64)) (t!48962 List!34261)) )
))
(declare-fun arrayNoDuplicates!0 (array!98593 (_ BitVec 32) List!34261) Bool)

(assert (=> b!1459711 (= res!989684 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34258))))

(declare-fun b!1459712 () Bool)

(assert (=> b!1459712 (= e!820886 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639525 lt!639521 mask!2687) (seekEntryOrOpen!0 lt!639525 lt!639521 mask!2687)))))

(declare-fun b!1459713 () Bool)

(assert (=> b!1459713 (= e!820888 e!820883)))

(declare-fun res!989693 () Bool)

(assert (=> b!1459713 (=> res!989693 e!820883)))

(assert (=> b!1459713 (= res!989693 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639528 #b00000000000000000000000000000000) (bvsge lt!639528 (size!48131 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1459713 (= lt!639528 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1459713 (= lt!639522 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639525 lt!639521 mask!2687))))

(assert (=> b!1459713 (= lt!639522 (seekEntryOrOpen!0 lt!639525 lt!639521 mask!2687))))

(declare-fun b!1459714 () Bool)

(assert (=> b!1459714 (= e!820887 e!820889)))

(declare-fun res!989697 () Bool)

(assert (=> b!1459714 (=> (not res!989697) (not e!820889))))

(assert (=> b!1459714 (= res!989697 (= lt!639523 (Intermediate!11855 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1459714 (= lt!639523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639525 mask!2687) lt!639525 lt!639521 mask!2687))))

(assert (=> b!1459714 (= lt!639525 (select (store (arr!47580 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1459715 () Bool)

(declare-fun res!989688 () Bool)

(assert (=> b!1459715 (=> (not res!989688) (not e!820887))))

(assert (=> b!1459715 (= res!989688 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47580 a!2862) j!93) a!2862 mask!2687) lt!639526))))

(declare-fun b!1459716 () Bool)

(assert (=> b!1459716 (= e!820886 (= lt!639523 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639525 lt!639521 mask!2687)))))

(declare-fun b!1459717 () Bool)

(assert (=> b!1459717 (= e!820884 e!820882)))

(declare-fun res!989689 () Bool)

(assert (=> b!1459717 (=> (not res!989689) (not e!820882))))

(assert (=> b!1459717 (= res!989689 (= (select (store (arr!47580 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1459717 (= lt!639521 (array!98594 (store (arr!47580 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48131 a!2862)))))

(assert (= (and start!125228 res!989681) b!1459703))

(assert (= (and b!1459703 res!989696) b!1459710))

(assert (= (and b!1459710 res!989691) b!1459705))

(assert (= (and b!1459705 res!989680) b!1459708))

(assert (= (and b!1459708 res!989685) b!1459711))

(assert (= (and b!1459711 res!989684) b!1459699))

(assert (= (and b!1459699 res!989687) b!1459717))

(assert (= (and b!1459717 res!989689) b!1459698))

(assert (= (and b!1459698 res!989686) b!1459715))

(assert (= (and b!1459715 res!989688) b!1459714))

(assert (= (and b!1459714 res!989697) b!1459709))

(assert (= (and b!1459709 c!134522) b!1459716))

(assert (= (and b!1459709 (not c!134522)) b!1459712))

(assert (= (and b!1459709 res!989695) b!1459702))

(assert (= (and b!1459702 res!989692) b!1459701))

(assert (= (and b!1459701 (not res!989682)) b!1459713))

(assert (= (and b!1459713 (not res!989693)) b!1459707))

(assert (= (and b!1459707 (not res!989690)) b!1459696))

(assert (= (and b!1459696 c!134521) b!1459704))

(assert (= (and b!1459696 (not c!134521)) b!1459706))

(assert (= (and b!1459696 (not res!989694)) b!1459697))

(assert (= (and b!1459697 (not res!989683)) b!1459700))

(declare-fun m!1347483 () Bool)

(assert (=> b!1459717 m!1347483))

(declare-fun m!1347485 () Bool)

(assert (=> b!1459717 m!1347485))

(declare-fun m!1347487 () Bool)

(assert (=> b!1459700 m!1347487))

(declare-fun m!1347489 () Bool)

(assert (=> b!1459701 m!1347489))

(assert (=> b!1459701 m!1347483))

(declare-fun m!1347491 () Bool)

(assert (=> b!1459701 m!1347491))

(declare-fun m!1347493 () Bool)

(assert (=> b!1459701 m!1347493))

(declare-fun m!1347495 () Bool)

(assert (=> b!1459701 m!1347495))

(declare-fun m!1347497 () Bool)

(assert (=> b!1459701 m!1347497))

(declare-fun m!1347499 () Bool)

(assert (=> b!1459701 m!1347499))

(declare-fun m!1347501 () Bool)

(assert (=> b!1459701 m!1347501))

(assert (=> b!1459701 m!1347497))

(declare-fun m!1347503 () Bool)

(assert (=> b!1459716 m!1347503))

(declare-fun m!1347505 () Bool)

(assert (=> b!1459714 m!1347505))

(assert (=> b!1459714 m!1347505))

(declare-fun m!1347507 () Bool)

(assert (=> b!1459714 m!1347507))

(assert (=> b!1459714 m!1347483))

(declare-fun m!1347509 () Bool)

(assert (=> b!1459714 m!1347509))

(declare-fun m!1347511 () Bool)

(assert (=> b!1459708 m!1347511))

(declare-fun m!1347513 () Bool)

(assert (=> b!1459712 m!1347513))

(declare-fun m!1347515 () Bool)

(assert (=> b!1459712 m!1347515))

(assert (=> b!1459698 m!1347497))

(assert (=> b!1459698 m!1347497))

(declare-fun m!1347517 () Bool)

(assert (=> b!1459698 m!1347517))

(assert (=> b!1459698 m!1347517))

(assert (=> b!1459698 m!1347497))

(declare-fun m!1347519 () Bool)

(assert (=> b!1459698 m!1347519))

(declare-fun m!1347521 () Bool)

(assert (=> start!125228 m!1347521))

(declare-fun m!1347523 () Bool)

(assert (=> start!125228 m!1347523))

(assert (=> b!1459707 m!1347497))

(assert (=> b!1459707 m!1347497))

(declare-fun m!1347525 () Bool)

(assert (=> b!1459707 m!1347525))

(declare-fun m!1347527 () Bool)

(assert (=> b!1459706 m!1347527))

(declare-fun m!1347529 () Bool)

(assert (=> b!1459713 m!1347529))

(assert (=> b!1459713 m!1347513))

(assert (=> b!1459713 m!1347515))

(declare-fun m!1347531 () Bool)

(assert (=> b!1459710 m!1347531))

(assert (=> b!1459710 m!1347531))

(declare-fun m!1347533 () Bool)

(assert (=> b!1459710 m!1347533))

(declare-fun m!1347535 () Bool)

(assert (=> b!1459711 m!1347535))

(declare-fun m!1347537 () Bool)

(assert (=> b!1459704 m!1347537))

(assert (=> b!1459715 m!1347497))

(assert (=> b!1459715 m!1347497))

(declare-fun m!1347539 () Bool)

(assert (=> b!1459715 m!1347539))

(assert (=> b!1459705 m!1347497))

(assert (=> b!1459705 m!1347497))

(declare-fun m!1347541 () Bool)

(assert (=> b!1459705 m!1347541))

(push 1)

(assert (not b!1459708))

(assert (not b!1459712))

(assert (not b!1459698))

(assert (not b!1459704))

