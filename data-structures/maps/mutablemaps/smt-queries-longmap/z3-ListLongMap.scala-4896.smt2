; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67572 () Bool)

(assert start!67572)

(declare-fun b!781654 () Bool)

(declare-datatypes ((Unit!26942 0))(
  ( (Unit!26943) )
))
(declare-fun e!434739 () Unit!26942)

(declare-fun Unit!26944 () Unit!26942)

(assert (=> b!781654 (= e!434739 Unit!26944)))

(assert (=> b!781654 false))

(declare-fun b!781655 () Bool)

(declare-fun res!528956 () Bool)

(declare-fun e!434741 () Bool)

(assert (=> b!781655 (=> (not res!528956) (not e!434741))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-datatypes ((array!42630 0))(
  ( (array!42631 (arr!20401 (Array (_ BitVec 32) (_ BitVec 64))) (size!20822 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42630)

(assert (=> b!781655 (= res!528956 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20401 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781656 () Bool)

(declare-fun e!434745 () Bool)

(declare-fun e!434742 () Bool)

(assert (=> b!781656 (= e!434745 (not e!434742))))

(declare-fun res!528957 () Bool)

(assert (=> b!781656 (=> res!528957 e!434742)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8008 0))(
  ( (MissingZero!8008 (index!34399 (_ BitVec 32))) (Found!8008 (index!34400 (_ BitVec 32))) (Intermediate!8008 (undefined!8820 Bool) (index!34401 (_ BitVec 32)) (x!65380 (_ BitVec 32))) (Undefined!8008) (MissingVacant!8008 (index!34402 (_ BitVec 32))) )
))
(declare-fun lt!348362 () SeekEntryResult!8008)

(declare-fun index!1321 () (_ BitVec 32))

(get-info :version)

(assert (=> b!781656 (= res!528957 (or (not ((_ is Intermediate!8008) lt!348362)) (bvslt x!1131 (x!65380 lt!348362)) (not (= x!1131 (x!65380 lt!348362))) (not (= index!1321 (index!34401 lt!348362)))))))

(declare-fun e!434744 () Bool)

(assert (=> b!781656 e!434744))

(declare-fun res!528946 () Bool)

(assert (=> b!781656 (=> (not res!528946) (not e!434744))))

(declare-fun lt!348361 () SeekEntryResult!8008)

(declare-fun lt!348364 () SeekEntryResult!8008)

(assert (=> b!781656 (= res!528946 (= lt!348361 lt!348364))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!781656 (= lt!348364 (Found!8008 j!159))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42630 (_ BitVec 32)) SeekEntryResult!8008)

(assert (=> b!781656 (= lt!348361 (seekEntryOrOpen!0 (select (arr!20401 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42630 (_ BitVec 32)) Bool)

(assert (=> b!781656 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348360 () Unit!26942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26942)

(assert (=> b!781656 (= lt!348360 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!528949 () Bool)

(declare-fun e!434740 () Bool)

(assert (=> start!67572 (=> (not res!528949) (not e!434740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67572 (= res!528949 (validMask!0 mask!3328))))

(assert (=> start!67572 e!434740))

(assert (=> start!67572 true))

(declare-fun array_inv!16175 (array!42630) Bool)

(assert (=> start!67572 (array_inv!16175 a!3186)))

(declare-fun b!781657 () Bool)

(declare-fun res!528958 () Bool)

(assert (=> b!781657 (=> (not res!528958) (not e!434740))))

(assert (=> b!781657 (= res!528958 (and (= (size!20822 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20822 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20822 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781658 () Bool)

(declare-fun Unit!26945 () Unit!26942)

(assert (=> b!781658 (= e!434739 Unit!26945)))

(declare-fun b!781659 () Bool)

(declare-fun res!528953 () Bool)

(declare-fun e!434746 () Bool)

(assert (=> b!781659 (=> (not res!528953) (not e!434746))))

(assert (=> b!781659 (= res!528953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!348355 () SeekEntryResult!8008)

(declare-fun e!434738 () Bool)

(declare-fun b!781660 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42630 (_ BitVec 32)) SeekEntryResult!8008)

(assert (=> b!781660 (= e!434738 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20401 a!3186) j!159) a!3186 mask!3328) lt!348355))))

(declare-fun b!781661 () Bool)

(declare-fun res!528955 () Bool)

(assert (=> b!781661 (=> (not res!528955) (not e!434746))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781661 (= res!528955 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20822 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20822 a!3186))))))

(declare-fun b!781662 () Bool)

(declare-fun res!528952 () Bool)

(assert (=> b!781662 (=> res!528952 e!434742)))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lt!348359 () (_ BitVec 64))

(assert (=> b!781662 (= res!528952 (= (select (store (arr!20401 a!3186) i!1173 k0!2102) index!1321) lt!348359))))

(declare-fun b!781663 () Bool)

(assert (=> b!781663 (= e!434742 true)))

(assert (=> b!781663 (= (select (store (arr!20401 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348363 () Unit!26942)

(assert (=> b!781663 (= lt!348363 e!434739)))

(declare-fun c!86762 () Bool)

(assert (=> b!781663 (= c!86762 (= (select (store (arr!20401 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781664 () Bool)

(declare-fun res!528954 () Bool)

(assert (=> b!781664 (=> (not res!528954) (not e!434740))))

(declare-fun arrayContainsKey!0 (array!42630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781664 (= res!528954 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781665 () Bool)

(declare-fun res!528944 () Bool)

(assert (=> b!781665 (=> (not res!528944) (not e!434740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781665 (= res!528944 (validKeyInArray!0 (select (arr!20401 a!3186) j!159)))))

(declare-fun b!781666 () Bool)

(assert (=> b!781666 (= e!434746 e!434741)))

(declare-fun res!528942 () Bool)

(assert (=> b!781666 (=> (not res!528942) (not e!434741))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781666 (= res!528942 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20401 a!3186) j!159) mask!3328) (select (arr!20401 a!3186) j!159) a!3186 mask!3328) lt!348355))))

(assert (=> b!781666 (= lt!348355 (Intermediate!8008 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781667 () Bool)

(assert (=> b!781667 (= e!434741 e!434745)))

(declare-fun res!528943 () Bool)

(assert (=> b!781667 (=> (not res!528943) (not e!434745))))

(declare-fun lt!348357 () SeekEntryResult!8008)

(assert (=> b!781667 (= res!528943 (= lt!348357 lt!348362))))

(declare-fun lt!348358 () array!42630)

(assert (=> b!781667 (= lt!348362 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348359 lt!348358 mask!3328))))

(assert (=> b!781667 (= lt!348357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348359 mask!3328) lt!348359 lt!348358 mask!3328))))

(assert (=> b!781667 (= lt!348359 (select (store (arr!20401 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!781667 (= lt!348358 (array!42631 (store (arr!20401 a!3186) i!1173 k0!2102) (size!20822 a!3186)))))

(declare-fun b!781668 () Bool)

(declare-fun res!528948 () Bool)

(assert (=> b!781668 (=> res!528948 e!434742)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42630 (_ BitVec 32)) SeekEntryResult!8008)

(assert (=> b!781668 (= res!528948 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20401 a!3186) j!159) a!3186 mask!3328) lt!348364)))))

(declare-fun b!781669 () Bool)

(assert (=> b!781669 (= e!434740 e!434746)))

(declare-fun res!528947 () Bool)

(assert (=> b!781669 (=> (not res!528947) (not e!434746))))

(declare-fun lt!348356 () SeekEntryResult!8008)

(assert (=> b!781669 (= res!528947 (or (= lt!348356 (MissingZero!8008 i!1173)) (= lt!348356 (MissingVacant!8008 i!1173))))))

(assert (=> b!781669 (= lt!348356 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!781670 () Bool)

(declare-fun res!528945 () Bool)

(assert (=> b!781670 (=> (not res!528945) (not e!434740))))

(assert (=> b!781670 (= res!528945 (validKeyInArray!0 k0!2102))))

(declare-fun b!781671 () Bool)

(declare-fun res!528951 () Bool)

(assert (=> b!781671 (=> (not res!528951) (not e!434741))))

(assert (=> b!781671 (= res!528951 e!434738)))

(declare-fun c!86763 () Bool)

(assert (=> b!781671 (= c!86763 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781672 () Bool)

(declare-fun res!528950 () Bool)

(assert (=> b!781672 (=> (not res!528950) (not e!434746))))

(declare-datatypes ((List!14456 0))(
  ( (Nil!14453) (Cons!14452 (h!15572 (_ BitVec 64)) (t!20779 List!14456)) )
))
(declare-fun arrayNoDuplicates!0 (array!42630 (_ BitVec 32) List!14456) Bool)

(assert (=> b!781672 (= res!528950 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14453))))

(declare-fun b!781673 () Bool)

(assert (=> b!781673 (= e!434738 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20401 a!3186) j!159) a!3186 mask!3328) (Found!8008 j!159)))))

(declare-fun b!781674 () Bool)

(assert (=> b!781674 (= e!434744 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20401 a!3186) j!159) a!3186 mask!3328) lt!348364))))

(assert (= (and start!67572 res!528949) b!781657))

(assert (= (and b!781657 res!528958) b!781665))

(assert (= (and b!781665 res!528944) b!781670))

(assert (= (and b!781670 res!528945) b!781664))

(assert (= (and b!781664 res!528954) b!781669))

(assert (= (and b!781669 res!528947) b!781659))

(assert (= (and b!781659 res!528953) b!781672))

(assert (= (and b!781672 res!528950) b!781661))

(assert (= (and b!781661 res!528955) b!781666))

(assert (= (and b!781666 res!528942) b!781655))

(assert (= (and b!781655 res!528956) b!781671))

(assert (= (and b!781671 c!86763) b!781660))

(assert (= (and b!781671 (not c!86763)) b!781673))

(assert (= (and b!781671 res!528951) b!781667))

(assert (= (and b!781667 res!528943) b!781656))

(assert (= (and b!781656 res!528946) b!781674))

(assert (= (and b!781656 (not res!528957)) b!781668))

(assert (= (and b!781668 (not res!528948)) b!781662))

(assert (= (and b!781662 (not res!528952)) b!781663))

(assert (= (and b!781663 c!86762) b!781654))

(assert (= (and b!781663 (not c!86762)) b!781658))

(declare-fun m!724675 () Bool)

(assert (=> b!781662 m!724675))

(declare-fun m!724677 () Bool)

(assert (=> b!781662 m!724677))

(declare-fun m!724679 () Bool)

(assert (=> b!781670 m!724679))

(declare-fun m!724681 () Bool)

(assert (=> b!781664 m!724681))

(declare-fun m!724683 () Bool)

(assert (=> b!781665 m!724683))

(assert (=> b!781665 m!724683))

(declare-fun m!724685 () Bool)

(assert (=> b!781665 m!724685))

(assert (=> b!781674 m!724683))

(assert (=> b!781674 m!724683))

(declare-fun m!724687 () Bool)

(assert (=> b!781674 m!724687))

(assert (=> b!781673 m!724683))

(assert (=> b!781673 m!724683))

(declare-fun m!724689 () Bool)

(assert (=> b!781673 m!724689))

(assert (=> b!781666 m!724683))

(assert (=> b!781666 m!724683))

(declare-fun m!724691 () Bool)

(assert (=> b!781666 m!724691))

(assert (=> b!781666 m!724691))

(assert (=> b!781666 m!724683))

(declare-fun m!724693 () Bool)

(assert (=> b!781666 m!724693))

(assert (=> b!781668 m!724683))

(assert (=> b!781668 m!724683))

(assert (=> b!781668 m!724689))

(declare-fun m!724695 () Bool)

(assert (=> b!781655 m!724695))

(assert (=> b!781656 m!724683))

(assert (=> b!781656 m!724683))

(declare-fun m!724697 () Bool)

(assert (=> b!781656 m!724697))

(declare-fun m!724699 () Bool)

(assert (=> b!781656 m!724699))

(declare-fun m!724701 () Bool)

(assert (=> b!781656 m!724701))

(declare-fun m!724703 () Bool)

(assert (=> start!67572 m!724703))

(declare-fun m!724705 () Bool)

(assert (=> start!67572 m!724705))

(assert (=> b!781667 m!724675))

(declare-fun m!724707 () Bool)

(assert (=> b!781667 m!724707))

(declare-fun m!724709 () Bool)

(assert (=> b!781667 m!724709))

(declare-fun m!724711 () Bool)

(assert (=> b!781667 m!724711))

(declare-fun m!724713 () Bool)

(assert (=> b!781667 m!724713))

(assert (=> b!781667 m!724709))

(assert (=> b!781660 m!724683))

(assert (=> b!781660 m!724683))

(declare-fun m!724715 () Bool)

(assert (=> b!781660 m!724715))

(declare-fun m!724717 () Bool)

(assert (=> b!781669 m!724717))

(assert (=> b!781663 m!724675))

(assert (=> b!781663 m!724677))

(declare-fun m!724719 () Bool)

(assert (=> b!781672 m!724719))

(declare-fun m!724721 () Bool)

(assert (=> b!781659 m!724721))

(check-sat (not start!67572) (not b!781668) (not b!781674) (not b!781664) (not b!781669) (not b!781673) (not b!781670) (not b!781665) (not b!781660) (not b!781666) (not b!781656) (not b!781659) (not b!781672) (not b!781667))
(check-sat)
