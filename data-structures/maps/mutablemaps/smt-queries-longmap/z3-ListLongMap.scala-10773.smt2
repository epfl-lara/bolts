; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126180 () Bool)

(assert start!126180)

(declare-fun b!1476620 () Bool)

(declare-fun res!1002937 () Bool)

(declare-fun e!828465 () Bool)

(assert (=> b!1476620 (=> (not res!1002937) (not e!828465))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99203 0))(
  ( (array!99204 (arr!47876 (Array (_ BitVec 32) (_ BitVec 64))) (size!48427 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99203)

(assert (=> b!1476620 (= res!1002937 (and (= (size!48427 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48427 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48427 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476621 () Bool)

(declare-fun e!828460 () Bool)

(assert (=> b!1476621 (= e!828465 e!828460)))

(declare-fun res!1002944 () Bool)

(assert (=> b!1476621 (=> (not res!1002944) (not e!828460))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476621 (= res!1002944 (= (select (store (arr!47876 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645045 () array!99203)

(assert (=> b!1476621 (= lt!645045 (array!99204 (store (arr!47876 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48427 a!2862)))))

(declare-fun b!1476622 () Bool)

(declare-fun e!828461 () Bool)

(declare-fun e!828459 () Bool)

(assert (=> b!1476622 (= e!828461 e!828459)))

(declare-fun res!1002940 () Bool)

(assert (=> b!1476622 (=> res!1002940 e!828459)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1476622 (= res!1002940 (or (and (= (select (arr!47876 a!2862) index!646) (select (store (arr!47876 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47876 a!2862) index!646) (select (arr!47876 a!2862) j!93))) (not (= (select (arr!47876 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476623 () Bool)

(declare-fun res!1002938 () Bool)

(declare-fun e!828463 () Bool)

(assert (=> b!1476623 (=> (not res!1002938) (not e!828463))))

(declare-fun e!828467 () Bool)

(assert (=> b!1476623 (= res!1002938 e!828467)))

(declare-fun c!136364 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476623 (= c!136364 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476624 () Bool)

(declare-fun res!1002945 () Bool)

(declare-fun e!828466 () Bool)

(assert (=> b!1476624 (=> (not res!1002945) (not e!828466))))

(declare-datatypes ((SeekEntryResult!12139 0))(
  ( (MissingZero!12139 (index!50947 (_ BitVec 32))) (Found!12139 (index!50948 (_ BitVec 32))) (Intermediate!12139 (undefined!12951 Bool) (index!50949 (_ BitVec 32)) (x!132549 (_ BitVec 32))) (Undefined!12139) (MissingVacant!12139 (index!50950 (_ BitVec 32))) )
))
(declare-fun lt!645043 () SeekEntryResult!12139)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99203 (_ BitVec 32)) SeekEntryResult!12139)

(assert (=> b!1476624 (= res!1002945 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47876 a!2862) j!93) a!2862 mask!2687) lt!645043))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1476625 () Bool)

(declare-fun e!828462 () Bool)

(assert (=> b!1476625 (= e!828462 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476626 () Bool)

(declare-fun res!1002941 () Bool)

(assert (=> b!1476626 (=> (not res!1002941) (not e!828465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476626 (= res!1002941 (validKeyInArray!0 (select (arr!47876 a!2862) j!93)))))

(declare-fun b!1476627 () Bool)

(declare-fun res!1002943 () Bool)

(assert (=> b!1476627 (=> (not res!1002943) (not e!828465))))

(declare-datatypes ((List!34557 0))(
  ( (Nil!34554) (Cons!34553 (h!35921 (_ BitVec 64)) (t!49258 List!34557)) )
))
(declare-fun arrayNoDuplicates!0 (array!99203 (_ BitVec 32) List!34557) Bool)

(assert (=> b!1476627 (= res!1002943 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34554))))

(declare-fun b!1476628 () Bool)

(assert (=> b!1476628 (= e!828463 (not true))))

(assert (=> b!1476628 e!828461))

(declare-fun res!1002939 () Bool)

(assert (=> b!1476628 (=> (not res!1002939) (not e!828461))))

(declare-fun lt!645041 () SeekEntryResult!12139)

(assert (=> b!1476628 (= res!1002939 (and (= lt!645041 (Found!12139 j!93)) (or (= (select (arr!47876 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47876 a!2862) intermediateBeforeIndex!19) (select (arr!47876 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99203 (_ BitVec 32)) SeekEntryResult!12139)

(assert (=> b!1476628 (= lt!645041 (seekEntryOrOpen!0 (select (arr!47876 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99203 (_ BitVec 32)) Bool)

(assert (=> b!1476628 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49566 0))(
  ( (Unit!49567) )
))
(declare-fun lt!645046 () Unit!49566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99203 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49566)

(assert (=> b!1476628 (= lt!645046 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476629 () Bool)

(assert (=> b!1476629 (= e!828459 e!828462)))

(declare-fun res!1002951 () Bool)

(assert (=> b!1476629 (=> (not res!1002951) (not e!828462))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99203 (_ BitVec 32)) SeekEntryResult!12139)

(assert (=> b!1476629 (= res!1002951 (= lt!645041 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47876 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476630 () Bool)

(assert (=> b!1476630 (= e!828460 e!828466)))

(declare-fun res!1002942 () Bool)

(assert (=> b!1476630 (=> (not res!1002942) (not e!828466))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476630 (= res!1002942 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47876 a!2862) j!93) mask!2687) (select (arr!47876 a!2862) j!93) a!2862 mask!2687) lt!645043))))

(assert (=> b!1476630 (= lt!645043 (Intermediate!12139 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!645042 () (_ BitVec 64))

(declare-fun b!1476631 () Bool)

(declare-fun lt!645044 () SeekEntryResult!12139)

(assert (=> b!1476631 (= e!828467 (= lt!645044 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645042 lt!645045 mask!2687)))))

(declare-fun b!1476632 () Bool)

(declare-fun res!1002936 () Bool)

(assert (=> b!1476632 (=> (not res!1002936) (not e!828465))))

(assert (=> b!1476632 (= res!1002936 (validKeyInArray!0 (select (arr!47876 a!2862) i!1006)))))

(declare-fun res!1002947 () Bool)

(assert (=> start!126180 (=> (not res!1002947) (not e!828465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126180 (= res!1002947 (validMask!0 mask!2687))))

(assert (=> start!126180 e!828465))

(assert (=> start!126180 true))

(declare-fun array_inv!36821 (array!99203) Bool)

(assert (=> start!126180 (array_inv!36821 a!2862)))

(declare-fun b!1476633 () Bool)

(assert (=> b!1476633 (= e!828466 e!828463)))

(declare-fun res!1002948 () Bool)

(assert (=> b!1476633 (=> (not res!1002948) (not e!828463))))

(assert (=> b!1476633 (= res!1002948 (= lt!645044 (Intermediate!12139 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1476633 (= lt!645044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645042 mask!2687) lt!645042 lt!645045 mask!2687))))

(assert (=> b!1476633 (= lt!645042 (select (store (arr!47876 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476634 () Bool)

(declare-fun res!1002949 () Bool)

(assert (=> b!1476634 (=> (not res!1002949) (not e!828465))))

(assert (=> b!1476634 (= res!1002949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476635 () Bool)

(assert (=> b!1476635 (= e!828467 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645042 lt!645045 mask!2687) (seekEntryOrOpen!0 lt!645042 lt!645045 mask!2687)))))

(declare-fun b!1476636 () Bool)

(declare-fun res!1002946 () Bool)

(assert (=> b!1476636 (=> (not res!1002946) (not e!828465))))

(assert (=> b!1476636 (= res!1002946 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48427 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48427 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48427 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476637 () Bool)

(declare-fun res!1002950 () Bool)

(assert (=> b!1476637 (=> (not res!1002950) (not e!828463))))

(assert (=> b!1476637 (= res!1002950 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126180 res!1002947) b!1476620))

(assert (= (and b!1476620 res!1002937) b!1476632))

(assert (= (and b!1476632 res!1002936) b!1476626))

(assert (= (and b!1476626 res!1002941) b!1476634))

(assert (= (and b!1476634 res!1002949) b!1476627))

(assert (= (and b!1476627 res!1002943) b!1476636))

(assert (= (and b!1476636 res!1002946) b!1476621))

(assert (= (and b!1476621 res!1002944) b!1476630))

(assert (= (and b!1476630 res!1002942) b!1476624))

(assert (= (and b!1476624 res!1002945) b!1476633))

(assert (= (and b!1476633 res!1002948) b!1476623))

(assert (= (and b!1476623 c!136364) b!1476631))

(assert (= (and b!1476623 (not c!136364)) b!1476635))

(assert (= (and b!1476623 res!1002938) b!1476637))

(assert (= (and b!1476637 res!1002950) b!1476628))

(assert (= (and b!1476628 res!1002939) b!1476622))

(assert (= (and b!1476622 (not res!1002940)) b!1476629))

(assert (= (and b!1476629 res!1002951) b!1476625))

(declare-fun m!1362655 () Bool)

(assert (=> b!1476635 m!1362655))

(declare-fun m!1362657 () Bool)

(assert (=> b!1476635 m!1362657))

(declare-fun m!1362659 () Bool)

(assert (=> b!1476628 m!1362659))

(declare-fun m!1362661 () Bool)

(assert (=> b!1476628 m!1362661))

(declare-fun m!1362663 () Bool)

(assert (=> b!1476628 m!1362663))

(declare-fun m!1362665 () Bool)

(assert (=> b!1476628 m!1362665))

(declare-fun m!1362667 () Bool)

(assert (=> b!1476628 m!1362667))

(assert (=> b!1476628 m!1362663))

(declare-fun m!1362669 () Bool)

(assert (=> b!1476622 m!1362669))

(declare-fun m!1362671 () Bool)

(assert (=> b!1476622 m!1362671))

(declare-fun m!1362673 () Bool)

(assert (=> b!1476622 m!1362673))

(assert (=> b!1476622 m!1362663))

(assert (=> b!1476629 m!1362663))

(assert (=> b!1476629 m!1362663))

(declare-fun m!1362675 () Bool)

(assert (=> b!1476629 m!1362675))

(declare-fun m!1362677 () Bool)

(assert (=> b!1476634 m!1362677))

(declare-fun m!1362679 () Bool)

(assert (=> b!1476632 m!1362679))

(assert (=> b!1476632 m!1362679))

(declare-fun m!1362681 () Bool)

(assert (=> b!1476632 m!1362681))

(assert (=> b!1476630 m!1362663))

(assert (=> b!1476630 m!1362663))

(declare-fun m!1362683 () Bool)

(assert (=> b!1476630 m!1362683))

(assert (=> b!1476630 m!1362683))

(assert (=> b!1476630 m!1362663))

(declare-fun m!1362685 () Bool)

(assert (=> b!1476630 m!1362685))

(declare-fun m!1362687 () Bool)

(assert (=> b!1476627 m!1362687))

(assert (=> b!1476621 m!1362671))

(declare-fun m!1362689 () Bool)

(assert (=> b!1476621 m!1362689))

(assert (=> b!1476626 m!1362663))

(assert (=> b!1476626 m!1362663))

(declare-fun m!1362691 () Bool)

(assert (=> b!1476626 m!1362691))

(declare-fun m!1362693 () Bool)

(assert (=> b!1476631 m!1362693))

(declare-fun m!1362695 () Bool)

(assert (=> b!1476633 m!1362695))

(assert (=> b!1476633 m!1362695))

(declare-fun m!1362697 () Bool)

(assert (=> b!1476633 m!1362697))

(assert (=> b!1476633 m!1362671))

(declare-fun m!1362699 () Bool)

(assert (=> b!1476633 m!1362699))

(declare-fun m!1362701 () Bool)

(assert (=> start!126180 m!1362701))

(declare-fun m!1362703 () Bool)

(assert (=> start!126180 m!1362703))

(assert (=> b!1476624 m!1362663))

(assert (=> b!1476624 m!1362663))

(declare-fun m!1362705 () Bool)

(assert (=> b!1476624 m!1362705))

(check-sat (not b!1476632) (not b!1476627) (not b!1476626) (not b!1476630) (not b!1476633) (not b!1476634) (not b!1476631) (not b!1476628) (not b!1476624) (not b!1476635) (not b!1476629) (not start!126180))
