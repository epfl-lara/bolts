; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65574 () Bool)

(assert start!65574)

(declare-fun b!748608 () Bool)

(declare-fun res!505124 () Bool)

(declare-fun e!417828 () Bool)

(assert (=> b!748608 (=> (not res!505124) (not e!417828))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41700 0))(
  ( (array!41701 (arr!19960 (Array (_ BitVec 32) (_ BitVec 64))) (size!20381 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41700)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748608 (= res!505124 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19960 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748609 () Bool)

(declare-fun res!505118 () Bool)

(declare-fun e!417824 () Bool)

(assert (=> b!748609 (=> res!505118 e!417824)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7567 0))(
  ( (MissingZero!7567 (index!32635 (_ BitVec 32))) (Found!7567 (index!32636 (_ BitVec 32))) (Intermediate!7567 (undefined!8379 Bool) (index!32637 (_ BitVec 32)) (x!63598 (_ BitVec 32))) (Undefined!7567) (MissingVacant!7567 (index!32638 (_ BitVec 32))) )
))
(declare-fun lt!332809 () SeekEntryResult!7567)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41700 (_ BitVec 32)) SeekEntryResult!7567)

(assert (=> b!748609 (= res!505118 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19960 a!3186) j!159) a!3186 mask!3328) lt!332809)))))

(declare-fun b!748610 () Bool)

(declare-fun res!505128 () Bool)

(assert (=> b!748610 (=> res!505128 e!417824)))

(declare-fun lt!332807 () (_ BitVec 64))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!748610 (= res!505128 (= (select (store (arr!19960 a!3186) i!1173 k0!2102) index!1321) lt!332807))))

(declare-fun b!748611 () Bool)

(declare-fun e!417820 () Bool)

(declare-fun e!417823 () Bool)

(assert (=> b!748611 (= e!417820 e!417823)))

(declare-fun res!505131 () Bool)

(assert (=> b!748611 (=> (not res!505131) (not e!417823))))

(declare-fun lt!332808 () SeekEntryResult!7567)

(assert (=> b!748611 (= res!505131 (or (= lt!332808 (MissingZero!7567 i!1173)) (= lt!332808 (MissingVacant!7567 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41700 (_ BitVec 32)) SeekEntryResult!7567)

(assert (=> b!748611 (= lt!332808 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!748612 () Bool)

(declare-fun e!417822 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748612 (= e!417822 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19960 a!3186) j!159) a!3186 mask!3328) lt!332809))))

(declare-fun b!748613 () Bool)

(declare-fun e!417827 () Bool)

(assert (=> b!748613 (= e!417827 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19960 a!3186) j!159) a!3186 mask!3328) (Found!7567 j!159)))))

(declare-fun res!505129 () Bool)

(assert (=> start!65574 (=> (not res!505129) (not e!417820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65574 (= res!505129 (validMask!0 mask!3328))))

(assert (=> start!65574 e!417820))

(assert (=> start!65574 true))

(declare-fun array_inv!15734 (array!41700) Bool)

(assert (=> start!65574 (array_inv!15734 a!3186)))

(declare-fun b!748614 () Bool)

(declare-fun res!505123 () Bool)

(assert (=> b!748614 (=> (not res!505123) (not e!417823))))

(assert (=> b!748614 (= res!505123 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20381 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20381 a!3186))))))

(declare-fun b!748615 () Bool)

(assert (=> b!748615 (= e!417823 e!417828)))

(declare-fun res!505121 () Bool)

(assert (=> b!748615 (=> (not res!505121) (not e!417828))))

(declare-fun lt!332814 () SeekEntryResult!7567)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41700 (_ BitVec 32)) SeekEntryResult!7567)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748615 (= res!505121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19960 a!3186) j!159) mask!3328) (select (arr!19960 a!3186) j!159) a!3186 mask!3328) lt!332814))))

(assert (=> b!748615 (= lt!332814 (Intermediate!7567 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748616 () Bool)

(declare-fun res!505130 () Bool)

(assert (=> b!748616 (=> (not res!505130) (not e!417820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748616 (= res!505130 (validKeyInArray!0 (select (arr!19960 a!3186) j!159)))))

(declare-fun b!748617 () Bool)

(declare-fun e!417825 () Bool)

(assert (=> b!748617 (= e!417825 (not e!417824))))

(declare-fun res!505126 () Bool)

(assert (=> b!748617 (=> res!505126 e!417824)))

(declare-fun lt!332811 () SeekEntryResult!7567)

(get-info :version)

(assert (=> b!748617 (= res!505126 (or (not ((_ is Intermediate!7567) lt!332811)) (bvslt x!1131 (x!63598 lt!332811)) (not (= x!1131 (x!63598 lt!332811))) (not (= index!1321 (index!32637 lt!332811)))))))

(assert (=> b!748617 e!417822))

(declare-fun res!505122 () Bool)

(assert (=> b!748617 (=> (not res!505122) (not e!417822))))

(declare-fun lt!332816 () SeekEntryResult!7567)

(assert (=> b!748617 (= res!505122 (= lt!332816 lt!332809))))

(assert (=> b!748617 (= lt!332809 (Found!7567 j!159))))

(assert (=> b!748617 (= lt!332816 (seekEntryOrOpen!0 (select (arr!19960 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41700 (_ BitVec 32)) Bool)

(assert (=> b!748617 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25670 0))(
  ( (Unit!25671) )
))
(declare-fun lt!332812 () Unit!25670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25670)

(assert (=> b!748617 (= lt!332812 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748618 () Bool)

(declare-fun res!505119 () Bool)

(assert (=> b!748618 (=> (not res!505119) (not e!417823))))

(declare-datatypes ((List!14015 0))(
  ( (Nil!14012) (Cons!14011 (h!15083 (_ BitVec 64)) (t!20338 List!14015)) )
))
(declare-fun arrayNoDuplicates!0 (array!41700 (_ BitVec 32) List!14015) Bool)

(assert (=> b!748618 (= res!505119 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14012))))

(declare-fun b!748619 () Bool)

(assert (=> b!748619 (= e!417827 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19960 a!3186) j!159) a!3186 mask!3328) lt!332814))))

(declare-fun b!748620 () Bool)

(declare-fun res!505117 () Bool)

(assert (=> b!748620 (=> (not res!505117) (not e!417828))))

(assert (=> b!748620 (= res!505117 e!417827)))

(declare-fun c!82127 () Bool)

(assert (=> b!748620 (= c!82127 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748621 () Bool)

(declare-fun e!417826 () Unit!25670)

(declare-fun Unit!25672 () Unit!25670)

(assert (=> b!748621 (= e!417826 Unit!25672)))

(declare-fun b!748622 () Bool)

(declare-fun Unit!25673 () Unit!25670)

(assert (=> b!748622 (= e!417826 Unit!25673)))

(assert (=> b!748622 false))

(declare-fun b!748623 () Bool)

(declare-fun res!505116 () Bool)

(assert (=> b!748623 (=> (not res!505116) (not e!417820))))

(assert (=> b!748623 (= res!505116 (and (= (size!20381 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20381 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20381 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748624 () Bool)

(declare-fun res!505125 () Bool)

(assert (=> b!748624 (=> (not res!505125) (not e!417823))))

(assert (=> b!748624 (= res!505125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748625 () Bool)

(declare-fun res!505120 () Bool)

(assert (=> b!748625 (=> (not res!505120) (not e!417820))))

(assert (=> b!748625 (= res!505120 (validKeyInArray!0 k0!2102))))

(declare-fun b!748626 () Bool)

(assert (=> b!748626 (= e!417824 true)))

(assert (=> b!748626 (= (select (store (arr!19960 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332813 () Unit!25670)

(assert (=> b!748626 (= lt!332813 e!417826)))

(declare-fun c!82128 () Bool)

(assert (=> b!748626 (= c!82128 (= (select (store (arr!19960 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748627 () Bool)

(assert (=> b!748627 (= e!417828 e!417825)))

(declare-fun res!505115 () Bool)

(assert (=> b!748627 (=> (not res!505115) (not e!417825))))

(declare-fun lt!332815 () SeekEntryResult!7567)

(assert (=> b!748627 (= res!505115 (= lt!332815 lt!332811))))

(declare-fun lt!332810 () array!41700)

(assert (=> b!748627 (= lt!332811 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332807 lt!332810 mask!3328))))

(assert (=> b!748627 (= lt!332815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332807 mask!3328) lt!332807 lt!332810 mask!3328))))

(assert (=> b!748627 (= lt!332807 (select (store (arr!19960 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!748627 (= lt!332810 (array!41701 (store (arr!19960 a!3186) i!1173 k0!2102) (size!20381 a!3186)))))

(declare-fun b!748628 () Bool)

(declare-fun res!505127 () Bool)

(assert (=> b!748628 (=> (not res!505127) (not e!417820))))

(declare-fun arrayContainsKey!0 (array!41700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748628 (= res!505127 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65574 res!505129) b!748623))

(assert (= (and b!748623 res!505116) b!748616))

(assert (= (and b!748616 res!505130) b!748625))

(assert (= (and b!748625 res!505120) b!748628))

(assert (= (and b!748628 res!505127) b!748611))

(assert (= (and b!748611 res!505131) b!748624))

(assert (= (and b!748624 res!505125) b!748618))

(assert (= (and b!748618 res!505119) b!748614))

(assert (= (and b!748614 res!505123) b!748615))

(assert (= (and b!748615 res!505121) b!748608))

(assert (= (and b!748608 res!505124) b!748620))

(assert (= (and b!748620 c!82127) b!748619))

(assert (= (and b!748620 (not c!82127)) b!748613))

(assert (= (and b!748620 res!505117) b!748627))

(assert (= (and b!748627 res!505115) b!748617))

(assert (= (and b!748617 res!505122) b!748612))

(assert (= (and b!748617 (not res!505126)) b!748609))

(assert (= (and b!748609 (not res!505118)) b!748610))

(assert (= (and b!748610 (not res!505128)) b!748626))

(assert (= (and b!748626 c!82128) b!748622))

(assert (= (and b!748626 (not c!82128)) b!748621))

(declare-fun m!698479 () Bool)

(assert (=> start!65574 m!698479))

(declare-fun m!698481 () Bool)

(assert (=> start!65574 m!698481))

(declare-fun m!698483 () Bool)

(assert (=> b!748624 m!698483))

(declare-fun m!698485 () Bool)

(assert (=> b!748613 m!698485))

(assert (=> b!748613 m!698485))

(declare-fun m!698487 () Bool)

(assert (=> b!748613 m!698487))

(declare-fun m!698489 () Bool)

(assert (=> b!748626 m!698489))

(declare-fun m!698491 () Bool)

(assert (=> b!748626 m!698491))

(declare-fun m!698493 () Bool)

(assert (=> b!748608 m!698493))

(assert (=> b!748619 m!698485))

(assert (=> b!748619 m!698485))

(declare-fun m!698495 () Bool)

(assert (=> b!748619 m!698495))

(declare-fun m!698497 () Bool)

(assert (=> b!748611 m!698497))

(assert (=> b!748615 m!698485))

(assert (=> b!748615 m!698485))

(declare-fun m!698499 () Bool)

(assert (=> b!748615 m!698499))

(assert (=> b!748615 m!698499))

(assert (=> b!748615 m!698485))

(declare-fun m!698501 () Bool)

(assert (=> b!748615 m!698501))

(declare-fun m!698503 () Bool)

(assert (=> b!748618 m!698503))

(declare-fun m!698505 () Bool)

(assert (=> b!748628 m!698505))

(assert (=> b!748617 m!698485))

(assert (=> b!748617 m!698485))

(declare-fun m!698507 () Bool)

(assert (=> b!748617 m!698507))

(declare-fun m!698509 () Bool)

(assert (=> b!748617 m!698509))

(declare-fun m!698511 () Bool)

(assert (=> b!748617 m!698511))

(assert (=> b!748609 m!698485))

(assert (=> b!748609 m!698485))

(assert (=> b!748609 m!698487))

(assert (=> b!748612 m!698485))

(assert (=> b!748612 m!698485))

(declare-fun m!698513 () Bool)

(assert (=> b!748612 m!698513))

(assert (=> b!748610 m!698489))

(assert (=> b!748610 m!698491))

(declare-fun m!698515 () Bool)

(assert (=> b!748627 m!698515))

(declare-fun m!698517 () Bool)

(assert (=> b!748627 m!698517))

(declare-fun m!698519 () Bool)

(assert (=> b!748627 m!698519))

(declare-fun m!698521 () Bool)

(assert (=> b!748627 m!698521))

(assert (=> b!748627 m!698489))

(assert (=> b!748627 m!698515))

(declare-fun m!698523 () Bool)

(assert (=> b!748625 m!698523))

(assert (=> b!748616 m!698485))

(assert (=> b!748616 m!698485))

(declare-fun m!698525 () Bool)

(assert (=> b!748616 m!698525))

(check-sat (not b!748611) (not b!748624) (not b!748613) (not b!748616) (not b!748617) (not start!65574) (not b!748625) (not b!748609) (not b!748612) (not b!748627) (not b!748619) (not b!748628) (not b!748618) (not b!748615))
(check-sat)
