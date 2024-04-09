; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65694 () Bool)

(assert start!65694)

(declare-fun b!752605 () Bool)

(declare-fun res!508394 () Bool)

(declare-fun e!419815 () Bool)

(assert (=> b!752605 (=> (not res!508394) (not e!419815))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752605 (= res!508394 (validKeyInArray!0 k0!2102))))

(declare-fun b!752606 () Bool)

(declare-fun res!508406 () Bool)

(declare-fun e!419817 () Bool)

(assert (=> b!752606 (=> (not res!508406) (not e!419817))))

(declare-datatypes ((array!41820 0))(
  ( (array!41821 (arr!20020 (Array (_ BitVec 32) (_ BitVec 64))) (size!20441 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41820)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!752606 (= res!508406 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20441 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20441 a!3186))))))

(declare-fun b!752607 () Bool)

(declare-fun res!508395 () Bool)

(assert (=> b!752607 (=> (not res!508395) (not e!419815))))

(declare-fun arrayContainsKey!0 (array!41820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752607 (= res!508395 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!419818 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!752608 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7627 0))(
  ( (MissingZero!7627 (index!32875 (_ BitVec 32))) (Found!7627 (index!32876 (_ BitVec 32))) (Intermediate!7627 (undefined!8439 Bool) (index!32877 (_ BitVec 32)) (x!63818 (_ BitVec 32))) (Undefined!7627) (MissingVacant!7627 (index!32878 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41820 (_ BitVec 32)) SeekEntryResult!7627)

(assert (=> b!752608 (= e!419818 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20020 a!3186) j!159) a!3186 mask!3328) (Found!7627 j!159)))))

(declare-fun b!752609 () Bool)

(declare-fun e!419825 () Bool)

(declare-fun e!419819 () Bool)

(assert (=> b!752609 (= e!419825 e!419819)))

(declare-fun res!508392 () Bool)

(assert (=> b!752609 (=> res!508392 e!419819)))

(declare-fun lt!334822 () (_ BitVec 64))

(declare-fun lt!334826 () (_ BitVec 64))

(assert (=> b!752609 (= res!508392 (= lt!334822 lt!334826))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752609 (= lt!334822 (select (store (arr!20020 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!752610 () Bool)

(declare-fun e!419823 () Bool)

(declare-fun e!419821 () Bool)

(assert (=> b!752610 (= e!419823 e!419821)))

(declare-fun res!508407 () Bool)

(assert (=> b!752610 (=> (not res!508407) (not e!419821))))

(declare-fun lt!334823 () SeekEntryResult!7627)

(declare-fun lt!334815 () SeekEntryResult!7627)

(assert (=> b!752610 (= res!508407 (= lt!334823 lt!334815))))

(declare-fun lt!334824 () array!41820)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41820 (_ BitVec 32)) SeekEntryResult!7627)

(assert (=> b!752610 (= lt!334815 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334826 lt!334824 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752610 (= lt!334823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334826 mask!3328) lt!334826 lt!334824 mask!3328))))

(assert (=> b!752610 (= lt!334826 (select (store (arr!20020 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!752610 (= lt!334824 (array!41821 (store (arr!20020 a!3186) i!1173 k0!2102) (size!20441 a!3186)))))

(declare-fun b!752611 () Bool)

(declare-fun res!508403 () Bool)

(assert (=> b!752611 (=> (not res!508403) (not e!419823))))

(assert (=> b!752611 (= res!508403 e!419818)))

(declare-fun c!82488 () Bool)

(assert (=> b!752611 (= c!82488 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752612 () Bool)

(declare-fun e!419824 () Bool)

(declare-fun lt!334816 () SeekEntryResult!7627)

(declare-fun lt!334817 () SeekEntryResult!7627)

(assert (=> b!752612 (= e!419824 (= lt!334816 lt!334817))))

(declare-fun b!752613 () Bool)

(declare-datatypes ((Unit!25910 0))(
  ( (Unit!25911) )
))
(declare-fun e!419822 () Unit!25910)

(declare-fun Unit!25912 () Unit!25910)

(assert (=> b!752613 (= e!419822 Unit!25912)))

(assert (=> b!752613 false))

(declare-fun b!752614 () Bool)

(declare-fun res!508399 () Bool)

(assert (=> b!752614 (=> (not res!508399) (not e!419824))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41820 (_ BitVec 32)) SeekEntryResult!7627)

(assert (=> b!752614 (= res!508399 (= (seekEntryOrOpen!0 lt!334826 lt!334824 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334826 lt!334824 mask!3328)))))

(declare-fun b!752615 () Bool)

(assert (=> b!752615 (= e!419815 e!419817)))

(declare-fun res!508410 () Bool)

(assert (=> b!752615 (=> (not res!508410) (not e!419817))))

(declare-fun lt!334821 () SeekEntryResult!7627)

(assert (=> b!752615 (= res!508410 (or (= lt!334821 (MissingZero!7627 i!1173)) (= lt!334821 (MissingVacant!7627 i!1173))))))

(assert (=> b!752615 (= lt!334821 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!752616 () Bool)

(declare-fun lt!334819 () SeekEntryResult!7627)

(assert (=> b!752616 (= e!419818 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20020 a!3186) j!159) a!3186 mask!3328) lt!334819))))

(declare-fun b!752617 () Bool)

(declare-fun res!508397 () Bool)

(assert (=> b!752617 (=> (not res!508397) (not e!419823))))

(assert (=> b!752617 (= res!508397 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20020 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752618 () Bool)

(assert (=> b!752618 (= e!419819 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!752618 e!419824))

(declare-fun res!508396 () Bool)

(assert (=> b!752618 (=> (not res!508396) (not e!419824))))

(assert (=> b!752618 (= res!508396 (= lt!334822 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334818 () Unit!25910)

(assert (=> b!752618 (= lt!334818 e!419822)))

(declare-fun c!82487 () Bool)

(assert (=> b!752618 (= c!82487 (= lt!334822 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!508400 () Bool)

(assert (=> start!65694 (=> (not res!508400) (not e!419815))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65694 (= res!508400 (validMask!0 mask!3328))))

(assert (=> start!65694 e!419815))

(assert (=> start!65694 true))

(declare-fun array_inv!15794 (array!41820) Bool)

(assert (=> start!65694 (array_inv!15794 a!3186)))

(declare-fun b!752619 () Bool)

(declare-fun e!419820 () Bool)

(assert (=> b!752619 (= e!419821 (not e!419820))))

(declare-fun res!508393 () Bool)

(assert (=> b!752619 (=> res!508393 e!419820)))

(get-info :version)

(assert (=> b!752619 (= res!508393 (or (not ((_ is Intermediate!7627) lt!334815)) (bvslt x!1131 (x!63818 lt!334815)) (not (= x!1131 (x!63818 lt!334815))) (not (= index!1321 (index!32877 lt!334815)))))))

(declare-fun e!419826 () Bool)

(assert (=> b!752619 e!419826))

(declare-fun res!508405 () Bool)

(assert (=> b!752619 (=> (not res!508405) (not e!419826))))

(declare-fun lt!334820 () SeekEntryResult!7627)

(assert (=> b!752619 (= res!508405 (= lt!334816 lt!334820))))

(assert (=> b!752619 (= lt!334820 (Found!7627 j!159))))

(assert (=> b!752619 (= lt!334816 (seekEntryOrOpen!0 (select (arr!20020 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41820 (_ BitVec 32)) Bool)

(assert (=> b!752619 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334825 () Unit!25910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25910)

(assert (=> b!752619 (= lt!334825 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752620 () Bool)

(declare-fun res!508402 () Bool)

(assert (=> b!752620 (=> (not res!508402) (not e!419815))))

(assert (=> b!752620 (= res!508402 (and (= (size!20441 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20441 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20441 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752621 () Bool)

(declare-fun res!508408 () Bool)

(assert (=> b!752621 (=> (not res!508408) (not e!419817))))

(assert (=> b!752621 (= res!508408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752622 () Bool)

(declare-fun res!508398 () Bool)

(assert (=> b!752622 (=> (not res!508398) (not e!419817))))

(declare-datatypes ((List!14075 0))(
  ( (Nil!14072) (Cons!14071 (h!15143 (_ BitVec 64)) (t!20398 List!14075)) )
))
(declare-fun arrayNoDuplicates!0 (array!41820 (_ BitVec 32) List!14075) Bool)

(assert (=> b!752622 (= res!508398 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14072))))

(declare-fun b!752623 () Bool)

(declare-fun res!508409 () Bool)

(assert (=> b!752623 (=> (not res!508409) (not e!419815))))

(assert (=> b!752623 (= res!508409 (validKeyInArray!0 (select (arr!20020 a!3186) j!159)))))

(declare-fun b!752624 () Bool)

(assert (=> b!752624 (= e!419820 e!419825)))

(declare-fun res!508401 () Bool)

(assert (=> b!752624 (=> res!508401 e!419825)))

(assert (=> b!752624 (= res!508401 (not (= lt!334817 lt!334820)))))

(assert (=> b!752624 (= lt!334817 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20020 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752625 () Bool)

(assert (=> b!752625 (= e!419817 e!419823)))

(declare-fun res!508404 () Bool)

(assert (=> b!752625 (=> (not res!508404) (not e!419823))))

(assert (=> b!752625 (= res!508404 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20020 a!3186) j!159) mask!3328) (select (arr!20020 a!3186) j!159) a!3186 mask!3328) lt!334819))))

(assert (=> b!752625 (= lt!334819 (Intermediate!7627 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752626 () Bool)

(declare-fun Unit!25913 () Unit!25910)

(assert (=> b!752626 (= e!419822 Unit!25913)))

(declare-fun b!752627 () Bool)

(assert (=> b!752627 (= e!419826 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20020 a!3186) j!159) a!3186 mask!3328) lt!334820))))

(assert (= (and start!65694 res!508400) b!752620))

(assert (= (and b!752620 res!508402) b!752623))

(assert (= (and b!752623 res!508409) b!752605))

(assert (= (and b!752605 res!508394) b!752607))

(assert (= (and b!752607 res!508395) b!752615))

(assert (= (and b!752615 res!508410) b!752621))

(assert (= (and b!752621 res!508408) b!752622))

(assert (= (and b!752622 res!508398) b!752606))

(assert (= (and b!752606 res!508406) b!752625))

(assert (= (and b!752625 res!508404) b!752617))

(assert (= (and b!752617 res!508397) b!752611))

(assert (= (and b!752611 c!82488) b!752616))

(assert (= (and b!752611 (not c!82488)) b!752608))

(assert (= (and b!752611 res!508403) b!752610))

(assert (= (and b!752610 res!508407) b!752619))

(assert (= (and b!752619 res!508405) b!752627))

(assert (= (and b!752619 (not res!508393)) b!752624))

(assert (= (and b!752624 (not res!508401)) b!752609))

(assert (= (and b!752609 (not res!508392)) b!752618))

(assert (= (and b!752618 c!82487) b!752613))

(assert (= (and b!752618 (not c!82487)) b!752626))

(assert (= (and b!752618 res!508396) b!752614))

(assert (= (and b!752614 res!508399) b!752612))

(declare-fun m!701573 () Bool)

(assert (=> b!752615 m!701573))

(declare-fun m!701575 () Bool)

(assert (=> b!752607 m!701575))

(declare-fun m!701577 () Bool)

(assert (=> b!752609 m!701577))

(declare-fun m!701579 () Bool)

(assert (=> b!752609 m!701579))

(declare-fun m!701581 () Bool)

(assert (=> start!65694 m!701581))

(declare-fun m!701583 () Bool)

(assert (=> start!65694 m!701583))

(declare-fun m!701585 () Bool)

(assert (=> b!752622 m!701585))

(declare-fun m!701587 () Bool)

(assert (=> b!752625 m!701587))

(assert (=> b!752625 m!701587))

(declare-fun m!701589 () Bool)

(assert (=> b!752625 m!701589))

(assert (=> b!752625 m!701589))

(assert (=> b!752625 m!701587))

(declare-fun m!701591 () Bool)

(assert (=> b!752625 m!701591))

(declare-fun m!701593 () Bool)

(assert (=> b!752621 m!701593))

(declare-fun m!701595 () Bool)

(assert (=> b!752617 m!701595))

(assert (=> b!752619 m!701587))

(assert (=> b!752619 m!701587))

(declare-fun m!701597 () Bool)

(assert (=> b!752619 m!701597))

(declare-fun m!701599 () Bool)

(assert (=> b!752619 m!701599))

(declare-fun m!701601 () Bool)

(assert (=> b!752619 m!701601))

(declare-fun m!701603 () Bool)

(assert (=> b!752610 m!701603))

(declare-fun m!701605 () Bool)

(assert (=> b!752610 m!701605))

(assert (=> b!752610 m!701577))

(declare-fun m!701607 () Bool)

(assert (=> b!752610 m!701607))

(assert (=> b!752610 m!701603))

(declare-fun m!701609 () Bool)

(assert (=> b!752610 m!701609))

(assert (=> b!752624 m!701587))

(assert (=> b!752624 m!701587))

(declare-fun m!701611 () Bool)

(assert (=> b!752624 m!701611))

(declare-fun m!701613 () Bool)

(assert (=> b!752614 m!701613))

(declare-fun m!701615 () Bool)

(assert (=> b!752614 m!701615))

(assert (=> b!752616 m!701587))

(assert (=> b!752616 m!701587))

(declare-fun m!701617 () Bool)

(assert (=> b!752616 m!701617))

(declare-fun m!701619 () Bool)

(assert (=> b!752605 m!701619))

(assert (=> b!752608 m!701587))

(assert (=> b!752608 m!701587))

(assert (=> b!752608 m!701611))

(assert (=> b!752627 m!701587))

(assert (=> b!752627 m!701587))

(declare-fun m!701621 () Bool)

(assert (=> b!752627 m!701621))

(assert (=> b!752623 m!701587))

(assert (=> b!752623 m!701587))

(declare-fun m!701623 () Bool)

(assert (=> b!752623 m!701623))

(check-sat (not b!752614) (not b!752605) (not b!752619) (not b!752624) (not b!752627) (not b!752625) (not b!752610) (not b!752615) (not b!752616) (not b!752621) (not start!65694) (not b!752623) (not b!752608) (not b!752607) (not b!752622))
(check-sat)
