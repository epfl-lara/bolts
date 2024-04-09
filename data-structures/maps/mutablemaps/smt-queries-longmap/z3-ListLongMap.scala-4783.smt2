; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65778 () Bool)

(assert start!65778)

(declare-fun b!755504 () Bool)

(declare-datatypes ((Unit!26078 0))(
  ( (Unit!26079) )
))
(declare-fun e!421333 () Unit!26078)

(declare-fun Unit!26080 () Unit!26078)

(assert (=> b!755504 (= e!421333 Unit!26080)))

(assert (=> b!755504 false))

(declare-fun b!755505 () Bool)

(declare-fun e!421337 () Bool)

(declare-fun e!421334 () Bool)

(assert (=> b!755505 (= e!421337 e!421334)))

(declare-fun res!510786 () Bool)

(assert (=> b!755505 (=> res!510786 e!421334)))

(declare-datatypes ((SeekEntryResult!7669 0))(
  ( (MissingZero!7669 (index!33043 (_ BitVec 32))) (Found!7669 (index!33044 (_ BitVec 32))) (Intermediate!7669 (undefined!8481 Bool) (index!33045 (_ BitVec 32)) (x!63972 (_ BitVec 32))) (Undefined!7669) (MissingVacant!7669 (index!33046 (_ BitVec 32))) )
))
(declare-fun lt!336329 () SeekEntryResult!7669)

(declare-fun lt!336334 () SeekEntryResult!7669)

(assert (=> b!755505 (= res!510786 (not (= lt!336329 lt!336334)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41904 0))(
  ( (array!41905 (arr!20062 (Array (_ BitVec 32) (_ BitVec 64))) (size!20483 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41904)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41904 (_ BitVec 32)) SeekEntryResult!7669)

(assert (=> b!755505 (= lt!336329 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20062 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755506 () Bool)

(declare-fun res!510803 () Bool)

(declare-fun e!421329 () Bool)

(assert (=> b!755506 (=> (not res!510803) (not e!421329))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755506 (= res!510803 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755507 () Bool)

(declare-fun res!510796 () Bool)

(declare-fun e!421335 () Bool)

(assert (=> b!755507 (=> (not res!510796) (not e!421335))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755507 (= res!510796 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20062 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755508 () Bool)

(declare-fun e!421331 () Bool)

(assert (=> b!755508 (= e!421329 e!421331)))

(declare-fun res!510802 () Bool)

(assert (=> b!755508 (=> (not res!510802) (not e!421331))))

(declare-fun lt!336338 () SeekEntryResult!7669)

(assert (=> b!755508 (= res!510802 (or (= lt!336338 (MissingZero!7669 i!1173)) (= lt!336338 (MissingVacant!7669 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41904 (_ BitVec 32)) SeekEntryResult!7669)

(assert (=> b!755508 (= lt!336338 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!755509 () Bool)

(declare-fun res!510788 () Bool)

(assert (=> b!755509 (=> (not res!510788) (not e!421331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41904 (_ BitVec 32)) Bool)

(assert (=> b!755509 (= res!510788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755510 () Bool)

(declare-fun e!421328 () Bool)

(assert (=> b!755510 (= e!421334 e!421328)))

(declare-fun res!510794 () Bool)

(assert (=> b!755510 (=> res!510794 e!421328)))

(declare-fun lt!336337 () (_ BitVec 64))

(declare-fun lt!336331 () (_ BitVec 64))

(assert (=> b!755510 (= res!510794 (= lt!336337 lt!336331))))

(assert (=> b!755510 (= lt!336337 (select (store (arr!20062 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!755511 () Bool)

(declare-fun Unit!26081 () Unit!26078)

(assert (=> b!755511 (= e!421333 Unit!26081)))

(declare-fun b!755512 () Bool)

(declare-fun e!421336 () Bool)

(declare-fun lt!336330 () SeekEntryResult!7669)

(assert (=> b!755512 (= e!421336 (= lt!336330 lt!336329))))

(declare-fun b!755513 () Bool)

(declare-fun res!510804 () Bool)

(assert (=> b!755513 (=> (not res!510804) (not e!421331))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755513 (= res!510804 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20483 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20483 a!3186))))))

(declare-fun b!755514 () Bool)

(declare-fun e!421332 () Bool)

(assert (=> b!755514 (= e!421332 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20062 a!3186) j!159) a!3186 mask!3328) lt!336334))))

(declare-fun b!755515 () Bool)

(declare-fun e!421327 () Bool)

(assert (=> b!755515 (= e!421335 e!421327)))

(declare-fun res!510795 () Bool)

(assert (=> b!755515 (=> (not res!510795) (not e!421327))))

(declare-fun lt!336333 () SeekEntryResult!7669)

(declare-fun lt!336336 () SeekEntryResult!7669)

(assert (=> b!755515 (= res!510795 (= lt!336333 lt!336336))))

(declare-fun lt!336327 () array!41904)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41904 (_ BitVec 32)) SeekEntryResult!7669)

(assert (=> b!755515 (= lt!336336 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336331 lt!336327 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755515 (= lt!336333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336331 mask!3328) lt!336331 lt!336327 mask!3328))))

(assert (=> b!755515 (= lt!336331 (select (store (arr!20062 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!755515 (= lt!336327 (array!41905 (store (arr!20062 a!3186) i!1173 k0!2102) (size!20483 a!3186)))))

(declare-fun b!755516 () Bool)

(declare-fun res!510798 () Bool)

(assert (=> b!755516 (=> (not res!510798) (not e!421331))))

(declare-datatypes ((List!14117 0))(
  ( (Nil!14114) (Cons!14113 (h!15185 (_ BitVec 64)) (t!20440 List!14117)) )
))
(declare-fun arrayNoDuplicates!0 (array!41904 (_ BitVec 32) List!14117) Bool)

(assert (=> b!755516 (= res!510798 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14114))))

(declare-fun res!510791 () Bool)

(assert (=> start!65778 (=> (not res!510791) (not e!421329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65778 (= res!510791 (validMask!0 mask!3328))))

(assert (=> start!65778 e!421329))

(assert (=> start!65778 true))

(declare-fun array_inv!15836 (array!41904) Bool)

(assert (=> start!65778 (array_inv!15836 a!3186)))

(declare-fun b!755503 () Bool)

(assert (=> b!755503 (= e!421327 (not e!421337))))

(declare-fun res!510801 () Bool)

(assert (=> b!755503 (=> res!510801 e!421337)))

(get-info :version)

(assert (=> b!755503 (= res!510801 (or (not ((_ is Intermediate!7669) lt!336336)) (bvslt x!1131 (x!63972 lt!336336)) (not (= x!1131 (x!63972 lt!336336))) (not (= index!1321 (index!33045 lt!336336)))))))

(assert (=> b!755503 e!421332))

(declare-fun res!510789 () Bool)

(assert (=> b!755503 (=> (not res!510789) (not e!421332))))

(assert (=> b!755503 (= res!510789 (= lt!336330 lt!336334))))

(assert (=> b!755503 (= lt!336334 (Found!7669 j!159))))

(assert (=> b!755503 (= lt!336330 (seekEntryOrOpen!0 (select (arr!20062 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755503 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336328 () Unit!26078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26078)

(assert (=> b!755503 (= lt!336328 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755517 () Bool)

(declare-fun res!510793 () Bool)

(assert (=> b!755517 (=> (not res!510793) (not e!421329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755517 (= res!510793 (validKeyInArray!0 (select (arr!20062 a!3186) j!159)))))

(declare-fun e!421338 () Bool)

(declare-fun lt!336332 () SeekEntryResult!7669)

(declare-fun b!755518 () Bool)

(assert (=> b!755518 (= e!421338 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20062 a!3186) j!159) a!3186 mask!3328) lt!336332))))

(declare-fun b!755519 () Bool)

(declare-fun res!510797 () Bool)

(assert (=> b!755519 (=> (not res!510797) (not e!421329))))

(assert (=> b!755519 (= res!510797 (validKeyInArray!0 k0!2102))))

(declare-fun b!755520 () Bool)

(declare-fun res!510790 () Bool)

(assert (=> b!755520 (=> (not res!510790) (not e!421335))))

(assert (=> b!755520 (= res!510790 e!421338)))

(declare-fun c!82740 () Bool)

(assert (=> b!755520 (= c!82740 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755521 () Bool)

(assert (=> b!755521 (= e!421328 true)))

(assert (=> b!755521 e!421336))

(declare-fun res!510800 () Bool)

(assert (=> b!755521 (=> (not res!510800) (not e!421336))))

(assert (=> b!755521 (= res!510800 (= lt!336337 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336335 () Unit!26078)

(assert (=> b!755521 (= lt!336335 e!421333)))

(declare-fun c!82739 () Bool)

(assert (=> b!755521 (= c!82739 (= lt!336337 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755522 () Bool)

(declare-fun res!510799 () Bool)

(assert (=> b!755522 (=> (not res!510799) (not e!421336))))

(assert (=> b!755522 (= res!510799 (= (seekEntryOrOpen!0 lt!336331 lt!336327 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336331 lt!336327 mask!3328)))))

(declare-fun b!755523 () Bool)

(assert (=> b!755523 (= e!421331 e!421335)))

(declare-fun res!510787 () Bool)

(assert (=> b!755523 (=> (not res!510787) (not e!421335))))

(assert (=> b!755523 (= res!510787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20062 a!3186) j!159) mask!3328) (select (arr!20062 a!3186) j!159) a!3186 mask!3328) lt!336332))))

(assert (=> b!755523 (= lt!336332 (Intermediate!7669 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755524 () Bool)

(assert (=> b!755524 (= e!421338 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20062 a!3186) j!159) a!3186 mask!3328) (Found!7669 j!159)))))

(declare-fun b!755525 () Bool)

(declare-fun res!510792 () Bool)

(assert (=> b!755525 (=> (not res!510792) (not e!421329))))

(assert (=> b!755525 (= res!510792 (and (= (size!20483 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20483 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20483 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65778 res!510791) b!755525))

(assert (= (and b!755525 res!510792) b!755517))

(assert (= (and b!755517 res!510793) b!755519))

(assert (= (and b!755519 res!510797) b!755506))

(assert (= (and b!755506 res!510803) b!755508))

(assert (= (and b!755508 res!510802) b!755509))

(assert (= (and b!755509 res!510788) b!755516))

(assert (= (and b!755516 res!510798) b!755513))

(assert (= (and b!755513 res!510804) b!755523))

(assert (= (and b!755523 res!510787) b!755507))

(assert (= (and b!755507 res!510796) b!755520))

(assert (= (and b!755520 c!82740) b!755518))

(assert (= (and b!755520 (not c!82740)) b!755524))

(assert (= (and b!755520 res!510790) b!755515))

(assert (= (and b!755515 res!510795) b!755503))

(assert (= (and b!755503 res!510789) b!755514))

(assert (= (and b!755503 (not res!510801)) b!755505))

(assert (= (and b!755505 (not res!510786)) b!755510))

(assert (= (and b!755510 (not res!510794)) b!755521))

(assert (= (and b!755521 c!82739) b!755504))

(assert (= (and b!755521 (not c!82739)) b!755511))

(assert (= (and b!755521 res!510800) b!755522))

(assert (= (and b!755522 res!510799) b!755512))

(declare-fun m!703757 () Bool)

(assert (=> b!755510 m!703757))

(declare-fun m!703759 () Bool)

(assert (=> b!755510 m!703759))

(declare-fun m!703761 () Bool)

(assert (=> b!755517 m!703761))

(assert (=> b!755517 m!703761))

(declare-fun m!703763 () Bool)

(assert (=> b!755517 m!703763))

(assert (=> b!755523 m!703761))

(assert (=> b!755523 m!703761))

(declare-fun m!703765 () Bool)

(assert (=> b!755523 m!703765))

(assert (=> b!755523 m!703765))

(assert (=> b!755523 m!703761))

(declare-fun m!703767 () Bool)

(assert (=> b!755523 m!703767))

(declare-fun m!703769 () Bool)

(assert (=> b!755507 m!703769))

(assert (=> b!755503 m!703761))

(assert (=> b!755503 m!703761))

(declare-fun m!703771 () Bool)

(assert (=> b!755503 m!703771))

(declare-fun m!703773 () Bool)

(assert (=> b!755503 m!703773))

(declare-fun m!703775 () Bool)

(assert (=> b!755503 m!703775))

(assert (=> b!755505 m!703761))

(assert (=> b!755505 m!703761))

(declare-fun m!703777 () Bool)

(assert (=> b!755505 m!703777))

(declare-fun m!703779 () Bool)

(assert (=> b!755509 m!703779))

(declare-fun m!703781 () Bool)

(assert (=> start!65778 m!703781))

(declare-fun m!703783 () Bool)

(assert (=> start!65778 m!703783))

(assert (=> b!755514 m!703761))

(assert (=> b!755514 m!703761))

(declare-fun m!703785 () Bool)

(assert (=> b!755514 m!703785))

(declare-fun m!703787 () Bool)

(assert (=> b!755522 m!703787))

(declare-fun m!703789 () Bool)

(assert (=> b!755522 m!703789))

(declare-fun m!703791 () Bool)

(assert (=> b!755519 m!703791))

(assert (=> b!755524 m!703761))

(assert (=> b!755524 m!703761))

(assert (=> b!755524 m!703777))

(assert (=> b!755518 m!703761))

(assert (=> b!755518 m!703761))

(declare-fun m!703793 () Bool)

(assert (=> b!755518 m!703793))

(declare-fun m!703795 () Bool)

(assert (=> b!755508 m!703795))

(declare-fun m!703797 () Bool)

(assert (=> b!755506 m!703797))

(declare-fun m!703799 () Bool)

(assert (=> b!755516 m!703799))

(declare-fun m!703801 () Bool)

(assert (=> b!755515 m!703801))

(declare-fun m!703803 () Bool)

(assert (=> b!755515 m!703803))

(declare-fun m!703805 () Bool)

(assert (=> b!755515 m!703805))

(assert (=> b!755515 m!703757))

(declare-fun m!703807 () Bool)

(assert (=> b!755515 m!703807))

(assert (=> b!755515 m!703803))

(check-sat (not b!755509) (not b!755522) (not b!755515) (not b!755505) (not b!755503) (not b!755519) (not b!755523) (not start!65778) (not b!755506) (not b!755518) (not b!755517) (not b!755524) (not b!755516) (not b!755514) (not b!755508))
(check-sat)
