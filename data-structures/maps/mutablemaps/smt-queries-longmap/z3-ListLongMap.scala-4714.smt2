; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65364 () Bool)

(assert start!65364)

(declare-fun b!742518 () Bool)

(declare-fun res!499841 () Bool)

(declare-fun e!414982 () Bool)

(assert (=> b!742518 (=> (not res!499841) (not e!414982))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41490 0))(
  ( (array!41491 (arr!19855 (Array (_ BitVec 32) (_ BitVec 64))) (size!20276 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41490)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742518 (= res!499841 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19855 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742520 () Bool)

(declare-fun res!499842 () Bool)

(declare-fun e!414977 () Bool)

(assert (=> b!742520 (=> (not res!499842) (not e!414977))))

(declare-datatypes ((List!13910 0))(
  ( (Nil!13907) (Cons!13906 (h!14978 (_ BitVec 64)) (t!20233 List!13910)) )
))
(declare-fun arrayNoDuplicates!0 (array!41490 (_ BitVec 32) List!13910) Bool)

(assert (=> b!742520 (= res!499842 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13907))))

(declare-fun b!742521 () Bool)

(declare-fun res!499836 () Bool)

(assert (=> b!742521 (=> (not res!499836) (not e!414982))))

(declare-fun e!414981 () Bool)

(assert (=> b!742521 (= res!499836 e!414981)))

(declare-fun c!81726 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742521 (= c!81726 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742522 () Bool)

(assert (=> b!742522 (= e!414977 e!414982)))

(declare-fun res!499827 () Bool)

(assert (=> b!742522 (=> (not res!499827) (not e!414982))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7462 0))(
  ( (MissingZero!7462 (index!32215 (_ BitVec 32))) (Found!7462 (index!32216 (_ BitVec 32))) (Intermediate!7462 (undefined!8274 Bool) (index!32217 (_ BitVec 32)) (x!63213 (_ BitVec 32))) (Undefined!7462) (MissingVacant!7462 (index!32218 (_ BitVec 32))) )
))
(declare-fun lt!329879 () SeekEntryResult!7462)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41490 (_ BitVec 32)) SeekEntryResult!7462)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742522 (= res!499827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19855 a!3186) j!159) mask!3328) (select (arr!19855 a!3186) j!159) a!3186 mask!3328) lt!329879))))

(assert (=> b!742522 (= lt!329879 (Intermediate!7462 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742523 () Bool)

(declare-fun e!414983 () Bool)

(declare-fun e!414984 () Bool)

(assert (=> b!742523 (= e!414983 e!414984)))

(declare-fun res!499837 () Bool)

(assert (=> b!742523 (=> (not res!499837) (not e!414984))))

(declare-fun lt!329882 () SeekEntryResult!7462)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41490 (_ BitVec 32)) SeekEntryResult!7462)

(assert (=> b!742523 (= res!499837 (= (seekEntryOrOpen!0 (select (arr!19855 a!3186) j!159) a!3186 mask!3328) lt!329882))))

(assert (=> b!742523 (= lt!329882 (Found!7462 j!159))))

(declare-fun b!742524 () Bool)

(declare-fun res!499838 () Bool)

(declare-fun e!414979 () Bool)

(assert (=> b!742524 (=> (not res!499838) (not e!414979))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742524 (= res!499838 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742525 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!742525 (= e!414981 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19855 a!3186) j!159) a!3186 mask!3328) lt!329879))))

(declare-fun b!742526 () Bool)

(declare-fun res!499829 () Bool)

(assert (=> b!742526 (=> (not res!499829) (not e!414979))))

(assert (=> b!742526 (= res!499829 (and (= (size!20276 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20276 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20276 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742527 () Bool)

(declare-fun res!499828 () Bool)

(assert (=> b!742527 (=> (not res!499828) (not e!414979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742527 (= res!499828 (validKeyInArray!0 (select (arr!19855 a!3186) j!159)))))

(declare-fun b!742528 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41490 (_ BitVec 32)) SeekEntryResult!7462)

(assert (=> b!742528 (= e!414984 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19855 a!3186) j!159) a!3186 mask!3328) lt!329882))))

(declare-fun b!742529 () Bool)

(declare-fun res!499831 () Bool)

(assert (=> b!742529 (=> (not res!499831) (not e!414977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41490 (_ BitVec 32)) Bool)

(assert (=> b!742529 (= res!499831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!499832 () Bool)

(assert (=> start!65364 (=> (not res!499832) (not e!414979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65364 (= res!499832 (validMask!0 mask!3328))))

(assert (=> start!65364 e!414979))

(assert (=> start!65364 true))

(declare-fun array_inv!15629 (array!41490) Bool)

(assert (=> start!65364 (array_inv!15629 a!3186)))

(declare-fun b!742519 () Bool)

(declare-fun e!414980 () Bool)

(assert (=> b!742519 (= e!414980 true)))

(declare-fun lt!329883 () SeekEntryResult!7462)

(assert (=> b!742519 (= lt!329883 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19855 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!742530 () Bool)

(declare-fun e!414976 () Bool)

(assert (=> b!742530 (= e!414976 (not e!414980))))

(declare-fun res!499840 () Bool)

(assert (=> b!742530 (=> res!499840 e!414980)))

(declare-fun lt!329880 () SeekEntryResult!7462)

(get-info :version)

(assert (=> b!742530 (= res!499840 (or (not ((_ is Intermediate!7462) lt!329880)) (bvslt x!1131 (x!63213 lt!329880)) (not (= x!1131 (x!63213 lt!329880))) (not (= index!1321 (index!32217 lt!329880)))))))

(assert (=> b!742530 e!414983))

(declare-fun res!499834 () Bool)

(assert (=> b!742530 (=> (not res!499834) (not e!414983))))

(assert (=> b!742530 (= res!499834 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25404 0))(
  ( (Unit!25405) )
))
(declare-fun lt!329878 () Unit!25404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25404)

(assert (=> b!742530 (= lt!329878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742531 () Bool)

(assert (=> b!742531 (= e!414982 e!414976)))

(declare-fun res!499839 () Bool)

(assert (=> b!742531 (=> (not res!499839) (not e!414976))))

(declare-fun lt!329885 () SeekEntryResult!7462)

(assert (=> b!742531 (= res!499839 (= lt!329885 lt!329880))))

(declare-fun lt!329881 () array!41490)

(declare-fun lt!329877 () (_ BitVec 64))

(assert (=> b!742531 (= lt!329880 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329877 lt!329881 mask!3328))))

(assert (=> b!742531 (= lt!329885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329877 mask!3328) lt!329877 lt!329881 mask!3328))))

(assert (=> b!742531 (= lt!329877 (select (store (arr!19855 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!742531 (= lt!329881 (array!41491 (store (arr!19855 a!3186) i!1173 k0!2102) (size!20276 a!3186)))))

(declare-fun b!742532 () Bool)

(assert (=> b!742532 (= e!414981 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19855 a!3186) j!159) a!3186 mask!3328) (Found!7462 j!159)))))

(declare-fun b!742533 () Bool)

(assert (=> b!742533 (= e!414979 e!414977)))

(declare-fun res!499830 () Bool)

(assert (=> b!742533 (=> (not res!499830) (not e!414977))))

(declare-fun lt!329884 () SeekEntryResult!7462)

(assert (=> b!742533 (= res!499830 (or (= lt!329884 (MissingZero!7462 i!1173)) (= lt!329884 (MissingVacant!7462 i!1173))))))

(assert (=> b!742533 (= lt!329884 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!742534 () Bool)

(declare-fun res!499833 () Bool)

(assert (=> b!742534 (=> (not res!499833) (not e!414979))))

(assert (=> b!742534 (= res!499833 (validKeyInArray!0 k0!2102))))

(declare-fun b!742535 () Bool)

(declare-fun res!499835 () Bool)

(assert (=> b!742535 (=> (not res!499835) (not e!414977))))

(assert (=> b!742535 (= res!499835 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20276 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20276 a!3186))))))

(assert (= (and start!65364 res!499832) b!742526))

(assert (= (and b!742526 res!499829) b!742527))

(assert (= (and b!742527 res!499828) b!742534))

(assert (= (and b!742534 res!499833) b!742524))

(assert (= (and b!742524 res!499838) b!742533))

(assert (= (and b!742533 res!499830) b!742529))

(assert (= (and b!742529 res!499831) b!742520))

(assert (= (and b!742520 res!499842) b!742535))

(assert (= (and b!742535 res!499835) b!742522))

(assert (= (and b!742522 res!499827) b!742518))

(assert (= (and b!742518 res!499841) b!742521))

(assert (= (and b!742521 c!81726) b!742525))

(assert (= (and b!742521 (not c!81726)) b!742532))

(assert (= (and b!742521 res!499836) b!742531))

(assert (= (and b!742531 res!499839) b!742530))

(assert (= (and b!742530 res!499834) b!742523))

(assert (= (and b!742523 res!499837) b!742528))

(assert (= (and b!742530 (not res!499840)) b!742519))

(declare-fun m!693449 () Bool)

(assert (=> b!742518 m!693449))

(declare-fun m!693451 () Bool)

(assert (=> b!742529 m!693451))

(declare-fun m!693453 () Bool)

(assert (=> b!742527 m!693453))

(assert (=> b!742527 m!693453))

(declare-fun m!693455 () Bool)

(assert (=> b!742527 m!693455))

(declare-fun m!693457 () Bool)

(assert (=> b!742533 m!693457))

(assert (=> b!742522 m!693453))

(assert (=> b!742522 m!693453))

(declare-fun m!693459 () Bool)

(assert (=> b!742522 m!693459))

(assert (=> b!742522 m!693459))

(assert (=> b!742522 m!693453))

(declare-fun m!693461 () Bool)

(assert (=> b!742522 m!693461))

(declare-fun m!693463 () Bool)

(assert (=> b!742524 m!693463))

(declare-fun m!693465 () Bool)

(assert (=> start!65364 m!693465))

(declare-fun m!693467 () Bool)

(assert (=> start!65364 m!693467))

(assert (=> b!742523 m!693453))

(assert (=> b!742523 m!693453))

(declare-fun m!693469 () Bool)

(assert (=> b!742523 m!693469))

(assert (=> b!742519 m!693453))

(assert (=> b!742519 m!693453))

(declare-fun m!693471 () Bool)

(assert (=> b!742519 m!693471))

(declare-fun m!693473 () Bool)

(assert (=> b!742534 m!693473))

(declare-fun m!693475 () Bool)

(assert (=> b!742530 m!693475))

(declare-fun m!693477 () Bool)

(assert (=> b!742530 m!693477))

(assert (=> b!742532 m!693453))

(assert (=> b!742532 m!693453))

(assert (=> b!742532 m!693471))

(assert (=> b!742528 m!693453))

(assert (=> b!742528 m!693453))

(declare-fun m!693479 () Bool)

(assert (=> b!742528 m!693479))

(declare-fun m!693481 () Bool)

(assert (=> b!742520 m!693481))

(declare-fun m!693483 () Bool)

(assert (=> b!742531 m!693483))

(declare-fun m!693485 () Bool)

(assert (=> b!742531 m!693485))

(declare-fun m!693487 () Bool)

(assert (=> b!742531 m!693487))

(declare-fun m!693489 () Bool)

(assert (=> b!742531 m!693489))

(declare-fun m!693491 () Bool)

(assert (=> b!742531 m!693491))

(assert (=> b!742531 m!693485))

(assert (=> b!742525 m!693453))

(assert (=> b!742525 m!693453))

(declare-fun m!693493 () Bool)

(assert (=> b!742525 m!693493))

(check-sat (not b!742534) (not b!742520) (not b!742525) (not b!742529) (not b!742522) (not start!65364) (not b!742530) (not b!742524) (not b!742527) (not b!742523) (not b!742533) (not b!742531) (not b!742532) (not b!742519) (not b!742528))
(check-sat)
