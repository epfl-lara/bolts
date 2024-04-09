; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65550 () Bool)

(assert start!65550)

(declare-fun b!747852 () Bool)

(declare-fun res!504505 () Bool)

(declare-fun e!417504 () Bool)

(assert (=> b!747852 (=> (not res!504505) (not e!417504))))

(declare-datatypes ((array!41676 0))(
  ( (array!41677 (arr!19948 (Array (_ BitVec 32) (_ BitVec 64))) (size!20369 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41676)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!747852 (= res!504505 (and (= (size!20369 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20369 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20369 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!417503 () Bool)

(declare-datatypes ((SeekEntryResult!7555 0))(
  ( (MissingZero!7555 (index!32587 (_ BitVec 32))) (Found!7555 (index!32588 (_ BitVec 32))) (Intermediate!7555 (undefined!8367 Bool) (index!32589 (_ BitVec 32)) (x!63554 (_ BitVec 32))) (Undefined!7555) (MissingVacant!7555 (index!32590 (_ BitVec 32))) )
))
(declare-fun lt!332447 () SeekEntryResult!7555)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!747853 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41676 (_ BitVec 32)) SeekEntryResult!7555)

(assert (=> b!747853 (= e!417503 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19948 a!3186) j!159) a!3186 mask!3328) lt!332447))))

(declare-fun b!747854 () Bool)

(declare-fun res!504519 () Bool)

(assert (=> b!747854 (=> (not res!504519) (not e!417504))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747854 (= res!504519 (validKeyInArray!0 k0!2102))))

(declare-fun b!747855 () Bool)

(declare-fun e!417501 () Bool)

(declare-fun e!417500 () Bool)

(assert (=> b!747855 (= e!417501 e!417500)))

(declare-fun res!504506 () Bool)

(assert (=> b!747855 (=> (not res!504506) (not e!417500))))

(declare-fun lt!332456 () SeekEntryResult!7555)

(declare-fun lt!332453 () SeekEntryResult!7555)

(assert (=> b!747855 (= res!504506 (= lt!332456 lt!332453))))

(declare-fun lt!332452 () (_ BitVec 64))

(declare-fun lt!332454 () array!41676)

(assert (=> b!747855 (= lt!332453 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332452 lt!332454 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747855 (= lt!332456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332452 mask!3328) lt!332452 lt!332454 mask!3328))))

(assert (=> b!747855 (= lt!332452 (select (store (arr!19948 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!747855 (= lt!332454 (array!41677 (store (arr!19948 a!3186) i!1173 k0!2102) (size!20369 a!3186)))))

(declare-fun b!747856 () Bool)

(declare-fun res!504516 () Bool)

(declare-fun e!417502 () Bool)

(assert (=> b!747856 (=> (not res!504516) (not e!417502))))

(declare-datatypes ((List!14003 0))(
  ( (Nil!14000) (Cons!13999 (h!15071 (_ BitVec 64)) (t!20326 List!14003)) )
))
(declare-fun arrayNoDuplicates!0 (array!41676 (_ BitVec 32) List!14003) Bool)

(assert (=> b!747856 (= res!504516 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14000))))

(declare-fun b!747857 () Bool)

(declare-fun res!504504 () Bool)

(assert (=> b!747857 (=> (not res!504504) (not e!417502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41676 (_ BitVec 32)) Bool)

(assert (=> b!747857 (= res!504504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747858 () Bool)

(declare-fun res!504513 () Bool)

(assert (=> b!747858 (=> (not res!504513) (not e!417502))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747858 (= res!504513 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20369 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20369 a!3186))))))

(declare-fun b!747859 () Bool)

(assert (=> b!747859 (= e!417502 e!417501)))

(declare-fun res!504517 () Bool)

(assert (=> b!747859 (=> (not res!504517) (not e!417501))))

(assert (=> b!747859 (= res!504517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19948 a!3186) j!159) mask!3328) (select (arr!19948 a!3186) j!159) a!3186 mask!3328) lt!332447))))

(assert (=> b!747859 (= lt!332447 (Intermediate!7555 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747860 () Bool)

(declare-datatypes ((Unit!25622 0))(
  ( (Unit!25623) )
))
(declare-fun e!417499 () Unit!25622)

(declare-fun Unit!25624 () Unit!25622)

(assert (=> b!747860 (= e!417499 Unit!25624)))

(assert (=> b!747860 false))

(declare-fun res!504514 () Bool)

(assert (=> start!65550 (=> (not res!504514) (not e!417504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65550 (= res!504514 (validMask!0 mask!3328))))

(assert (=> start!65550 e!417504))

(assert (=> start!65550 true))

(declare-fun array_inv!15722 (array!41676) Bool)

(assert (=> start!65550 (array_inv!15722 a!3186)))

(declare-fun b!747861 () Bool)

(declare-fun res!504507 () Bool)

(assert (=> b!747861 (=> (not res!504507) (not e!417504))))

(declare-fun arrayContainsKey!0 (array!41676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747861 (= res!504507 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747862 () Bool)

(declare-fun e!417496 () Bool)

(assert (=> b!747862 (= e!417496 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!747862 (= (select (store (arr!19948 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332448 () Unit!25622)

(assert (=> b!747862 (= lt!332448 e!417499)))

(declare-fun c!82056 () Bool)

(assert (=> b!747862 (= c!82056 (= (select (store (arr!19948 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747863 () Bool)

(declare-fun e!417497 () Bool)

(declare-fun lt!332451 () SeekEntryResult!7555)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41676 (_ BitVec 32)) SeekEntryResult!7555)

(assert (=> b!747863 (= e!417497 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19948 a!3186) j!159) a!3186 mask!3328) lt!332451))))

(declare-fun b!747864 () Bool)

(assert (=> b!747864 (= e!417503 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19948 a!3186) j!159) a!3186 mask!3328) (Found!7555 j!159)))))

(declare-fun b!747865 () Bool)

(declare-fun res!504512 () Bool)

(assert (=> b!747865 (=> (not res!504512) (not e!417501))))

(assert (=> b!747865 (= res!504512 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19948 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747866 () Bool)

(declare-fun res!504503 () Bool)

(assert (=> b!747866 (=> res!504503 e!417496)))

(assert (=> b!747866 (= res!504503 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19948 a!3186) j!159) a!3186 mask!3328) lt!332451)))))

(declare-fun b!747867 () Bool)

(assert (=> b!747867 (= e!417500 (not e!417496))))

(declare-fun res!504510 () Bool)

(assert (=> b!747867 (=> res!504510 e!417496)))

(get-info :version)

(assert (=> b!747867 (= res!504510 (or (not ((_ is Intermediate!7555) lt!332453)) (bvslt x!1131 (x!63554 lt!332453)) (not (= x!1131 (x!63554 lt!332453))) (not (= index!1321 (index!32589 lt!332453)))))))

(assert (=> b!747867 e!417497))

(declare-fun res!504515 () Bool)

(assert (=> b!747867 (=> (not res!504515) (not e!417497))))

(declare-fun lt!332449 () SeekEntryResult!7555)

(assert (=> b!747867 (= res!504515 (= lt!332449 lt!332451))))

(assert (=> b!747867 (= lt!332451 (Found!7555 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41676 (_ BitVec 32)) SeekEntryResult!7555)

(assert (=> b!747867 (= lt!332449 (seekEntryOrOpen!0 (select (arr!19948 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747867 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332455 () Unit!25622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41676 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25622)

(assert (=> b!747867 (= lt!332455 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747868 () Bool)

(declare-fun res!504518 () Bool)

(assert (=> b!747868 (=> res!504518 e!417496)))

(assert (=> b!747868 (= res!504518 (= (select (store (arr!19948 a!3186) i!1173 k0!2102) index!1321) lt!332452))))

(declare-fun b!747869 () Bool)

(declare-fun res!504509 () Bool)

(assert (=> b!747869 (=> (not res!504509) (not e!417501))))

(assert (=> b!747869 (= res!504509 e!417503)))

(declare-fun c!82055 () Bool)

(assert (=> b!747869 (= c!82055 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747870 () Bool)

(assert (=> b!747870 (= e!417504 e!417502)))

(declare-fun res!504508 () Bool)

(assert (=> b!747870 (=> (not res!504508) (not e!417502))))

(declare-fun lt!332450 () SeekEntryResult!7555)

(assert (=> b!747870 (= res!504508 (or (= lt!332450 (MissingZero!7555 i!1173)) (= lt!332450 (MissingVacant!7555 i!1173))))))

(assert (=> b!747870 (= lt!332450 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!747871 () Bool)

(declare-fun res!504511 () Bool)

(assert (=> b!747871 (=> (not res!504511) (not e!417504))))

(assert (=> b!747871 (= res!504511 (validKeyInArray!0 (select (arr!19948 a!3186) j!159)))))

(declare-fun b!747872 () Bool)

(declare-fun Unit!25625 () Unit!25622)

(assert (=> b!747872 (= e!417499 Unit!25625)))

(assert (= (and start!65550 res!504514) b!747852))

(assert (= (and b!747852 res!504505) b!747871))

(assert (= (and b!747871 res!504511) b!747854))

(assert (= (and b!747854 res!504519) b!747861))

(assert (= (and b!747861 res!504507) b!747870))

(assert (= (and b!747870 res!504508) b!747857))

(assert (= (and b!747857 res!504504) b!747856))

(assert (= (and b!747856 res!504516) b!747858))

(assert (= (and b!747858 res!504513) b!747859))

(assert (= (and b!747859 res!504517) b!747865))

(assert (= (and b!747865 res!504512) b!747869))

(assert (= (and b!747869 c!82055) b!747853))

(assert (= (and b!747869 (not c!82055)) b!747864))

(assert (= (and b!747869 res!504509) b!747855))

(assert (= (and b!747855 res!504506) b!747867))

(assert (= (and b!747867 res!504515) b!747863))

(assert (= (and b!747867 (not res!504510)) b!747866))

(assert (= (and b!747866 (not res!504503)) b!747868))

(assert (= (and b!747868 (not res!504518)) b!747862))

(assert (= (and b!747862 c!82056) b!747860))

(assert (= (and b!747862 (not c!82056)) b!747872))

(declare-fun m!697903 () Bool)

(assert (=> b!747868 m!697903))

(declare-fun m!697905 () Bool)

(assert (=> b!747868 m!697905))

(declare-fun m!697907 () Bool)

(assert (=> b!747854 m!697907))

(declare-fun m!697909 () Bool)

(assert (=> b!747853 m!697909))

(assert (=> b!747853 m!697909))

(declare-fun m!697911 () Bool)

(assert (=> b!747853 m!697911))

(assert (=> b!747866 m!697909))

(assert (=> b!747866 m!697909))

(declare-fun m!697913 () Bool)

(assert (=> b!747866 m!697913))

(declare-fun m!697915 () Bool)

(assert (=> b!747861 m!697915))

(assert (=> b!747859 m!697909))

(assert (=> b!747859 m!697909))

(declare-fun m!697917 () Bool)

(assert (=> b!747859 m!697917))

(assert (=> b!747859 m!697917))

(assert (=> b!747859 m!697909))

(declare-fun m!697919 () Bool)

(assert (=> b!747859 m!697919))

(declare-fun m!697921 () Bool)

(assert (=> b!747856 m!697921))

(assert (=> b!747864 m!697909))

(assert (=> b!747864 m!697909))

(assert (=> b!747864 m!697913))

(assert (=> b!747871 m!697909))

(assert (=> b!747871 m!697909))

(declare-fun m!697923 () Bool)

(assert (=> b!747871 m!697923))

(declare-fun m!697925 () Bool)

(assert (=> start!65550 m!697925))

(declare-fun m!697927 () Bool)

(assert (=> start!65550 m!697927))

(assert (=> b!747863 m!697909))

(assert (=> b!747863 m!697909))

(declare-fun m!697929 () Bool)

(assert (=> b!747863 m!697929))

(declare-fun m!697931 () Bool)

(assert (=> b!747855 m!697931))

(assert (=> b!747855 m!697931))

(declare-fun m!697933 () Bool)

(assert (=> b!747855 m!697933))

(assert (=> b!747855 m!697903))

(declare-fun m!697935 () Bool)

(assert (=> b!747855 m!697935))

(declare-fun m!697937 () Bool)

(assert (=> b!747855 m!697937))

(declare-fun m!697939 () Bool)

(assert (=> b!747870 m!697939))

(declare-fun m!697941 () Bool)

(assert (=> b!747857 m!697941))

(assert (=> b!747862 m!697903))

(assert (=> b!747862 m!697905))

(declare-fun m!697943 () Bool)

(assert (=> b!747865 m!697943))

(assert (=> b!747867 m!697909))

(assert (=> b!747867 m!697909))

(declare-fun m!697945 () Bool)

(assert (=> b!747867 m!697945))

(declare-fun m!697947 () Bool)

(assert (=> b!747867 m!697947))

(declare-fun m!697949 () Bool)

(assert (=> b!747867 m!697949))

(check-sat (not b!747871) (not b!747861) (not start!65550) (not b!747870) (not b!747864) (not b!747859) (not b!747856) (not b!747854) (not b!747855) (not b!747867) (not b!747863) (not b!747857) (not b!747853) (not b!747866))
(check-sat)
