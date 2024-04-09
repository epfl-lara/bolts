; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67570 () Bool)

(assert start!67570)

(declare-fun b!781591 () Bool)

(declare-fun res!528897 () Bool)

(declare-fun e!434716 () Bool)

(assert (=> b!781591 (=> (not res!528897) (not e!434716))))

(declare-fun e!434717 () Bool)

(assert (=> b!781591 (= res!528897 e!434717)))

(declare-fun c!86757 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!781591 (= c!86757 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!781592 () Bool)

(declare-fun res!528906 () Bool)

(declare-fun e!434715 () Bool)

(assert (=> b!781592 (=> res!528906 e!434715)))

(declare-fun lt!348326 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-datatypes ((array!42628 0))(
  ( (array!42629 (arr!20400 (Array (_ BitVec 32) (_ BitVec 64))) (size!20821 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42628)

(assert (=> b!781592 (= res!528906 (= (select (store (arr!20400 a!3186) i!1173 k!2102) index!1321) lt!348326))))

(declare-fun b!781593 () Bool)

(declare-fun e!434719 () Bool)

(declare-fun e!434714 () Bool)

(assert (=> b!781593 (= e!434719 e!434714)))

(declare-fun res!528894 () Bool)

(assert (=> b!781593 (=> (not res!528894) (not e!434714))))

(declare-datatypes ((SeekEntryResult!8007 0))(
  ( (MissingZero!8007 (index!34395 (_ BitVec 32))) (Found!8007 (index!34396 (_ BitVec 32))) (Intermediate!8007 (undefined!8819 Bool) (index!34397 (_ BitVec 32)) (x!65379 (_ BitVec 32))) (Undefined!8007) (MissingVacant!8007 (index!34398 (_ BitVec 32))) )
))
(declare-fun lt!348328 () SeekEntryResult!8007)

(assert (=> b!781593 (= res!528894 (or (= lt!348328 (MissingZero!8007 i!1173)) (= lt!348328 (MissingVacant!8007 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42628 (_ BitVec 32)) SeekEntryResult!8007)

(assert (=> b!781593 (= lt!348328 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!528899 () Bool)

(assert (=> start!67570 (=> (not res!528899) (not e!434719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67570 (= res!528899 (validMask!0 mask!3328))))

(assert (=> start!67570 e!434719))

(assert (=> start!67570 true))

(declare-fun array_inv!16174 (array!42628) Bool)

(assert (=> start!67570 (array_inv!16174 a!3186)))

(declare-fun b!781594 () Bool)

(declare-fun e!434711 () Bool)

(assert (=> b!781594 (= e!434711 (not e!434715))))

(declare-fun res!528893 () Bool)

(assert (=> b!781594 (=> res!528893 e!434715)))

(declare-fun lt!348330 () SeekEntryResult!8007)

(assert (=> b!781594 (= res!528893 (or (not (is-Intermediate!8007 lt!348330)) (bvslt x!1131 (x!65379 lt!348330)) (not (= x!1131 (x!65379 lt!348330))) (not (= index!1321 (index!34397 lt!348330)))))))

(declare-fun e!434712 () Bool)

(assert (=> b!781594 e!434712))

(declare-fun res!528900 () Bool)

(assert (=> b!781594 (=> (not res!528900) (not e!434712))))

(declare-fun lt!348327 () SeekEntryResult!8007)

(declare-fun lt!348331 () SeekEntryResult!8007)

(assert (=> b!781594 (= res!528900 (= lt!348327 lt!348331))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!781594 (= lt!348331 (Found!8007 j!159))))

(assert (=> b!781594 (= lt!348327 (seekEntryOrOpen!0 (select (arr!20400 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42628 (_ BitVec 32)) Bool)

(assert (=> b!781594 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26938 0))(
  ( (Unit!26939) )
))
(declare-fun lt!348332 () Unit!26938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26938)

(assert (=> b!781594 (= lt!348332 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!781595 () Bool)

(declare-fun res!528905 () Bool)

(assert (=> b!781595 (=> (not res!528905) (not e!434719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!781595 (= res!528905 (validKeyInArray!0 (select (arr!20400 a!3186) j!159)))))

(declare-fun b!781596 () Bool)

(assert (=> b!781596 (= e!434714 e!434716)))

(declare-fun res!528891 () Bool)

(assert (=> b!781596 (=> (not res!528891) (not e!434716))))

(declare-fun lt!348329 () SeekEntryResult!8007)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42628 (_ BitVec 32)) SeekEntryResult!8007)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!781596 (= res!528891 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20400 a!3186) j!159) mask!3328) (select (arr!20400 a!3186) j!159) a!3186 mask!3328) lt!348329))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!781596 (= lt!348329 (Intermediate!8007 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!781597 () Bool)

(declare-fun res!528901 () Bool)

(assert (=> b!781597 (=> (not res!528901) (not e!434714))))

(declare-datatypes ((List!14455 0))(
  ( (Nil!14452) (Cons!14451 (h!15571 (_ BitVec 64)) (t!20778 List!14455)) )
))
(declare-fun arrayNoDuplicates!0 (array!42628 (_ BitVec 32) List!14455) Bool)

(assert (=> b!781597 (= res!528901 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14452))))

(declare-fun b!781598 () Bool)

(declare-fun res!528896 () Bool)

(assert (=> b!781598 (=> (not res!528896) (not e!434716))))

(assert (=> b!781598 (= res!528896 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20400 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!781599 () Bool)

(declare-fun res!528898 () Bool)

(assert (=> b!781599 (=> res!528898 e!434715)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42628 (_ BitVec 32)) SeekEntryResult!8007)

(assert (=> b!781599 (= res!528898 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20400 a!3186) j!159) a!3186 mask!3328) lt!348331)))))

(declare-fun b!781600 () Bool)

(declare-fun res!528903 () Bool)

(assert (=> b!781600 (=> (not res!528903) (not e!434719))))

(declare-fun arrayContainsKey!0 (array!42628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!781600 (= res!528903 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!781601 () Bool)

(assert (=> b!781601 (= e!434717 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20400 a!3186) j!159) a!3186 mask!3328) lt!348329))))

(declare-fun b!781602 () Bool)

(declare-fun res!528892 () Bool)

(assert (=> b!781602 (=> (not res!528892) (not e!434719))))

(assert (=> b!781602 (= res!528892 (validKeyInArray!0 k!2102))))

(declare-fun b!781603 () Bool)

(assert (=> b!781603 (= e!434716 e!434711)))

(declare-fun res!528902 () Bool)

(assert (=> b!781603 (=> (not res!528902) (not e!434711))))

(declare-fun lt!348325 () SeekEntryResult!8007)

(assert (=> b!781603 (= res!528902 (= lt!348325 lt!348330))))

(declare-fun lt!348334 () array!42628)

(assert (=> b!781603 (= lt!348330 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348326 lt!348334 mask!3328))))

(assert (=> b!781603 (= lt!348325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348326 mask!3328) lt!348326 lt!348334 mask!3328))))

(assert (=> b!781603 (= lt!348326 (select (store (arr!20400 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!781603 (= lt!348334 (array!42629 (store (arr!20400 a!3186) i!1173 k!2102) (size!20821 a!3186)))))

(declare-fun b!781604 () Bool)

(declare-fun res!528895 () Bool)

(assert (=> b!781604 (=> (not res!528895) (not e!434714))))

(assert (=> b!781604 (= res!528895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!781605 () Bool)

(assert (=> b!781605 (= e!434715 true)))

(assert (=> b!781605 (= (select (store (arr!20400 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348333 () Unit!26938)

(declare-fun e!434713 () Unit!26938)

(assert (=> b!781605 (= lt!348333 e!434713)))

(declare-fun c!86756 () Bool)

(assert (=> b!781605 (= c!86756 (= (select (store (arr!20400 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!781606 () Bool)

(assert (=> b!781606 (= e!434712 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20400 a!3186) j!159) a!3186 mask!3328) lt!348331))))

(declare-fun b!781607 () Bool)

(declare-fun res!528904 () Bool)

(assert (=> b!781607 (=> (not res!528904) (not e!434714))))

(assert (=> b!781607 (= res!528904 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20821 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20821 a!3186))))))

(declare-fun b!781608 () Bool)

(declare-fun res!528907 () Bool)

(assert (=> b!781608 (=> (not res!528907) (not e!434719))))

(assert (=> b!781608 (= res!528907 (and (= (size!20821 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20821 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20821 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!781609 () Bool)

(declare-fun Unit!26940 () Unit!26938)

(assert (=> b!781609 (= e!434713 Unit!26940)))

(declare-fun b!781610 () Bool)

(assert (=> b!781610 (= e!434717 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20400 a!3186) j!159) a!3186 mask!3328) (Found!8007 j!159)))))

(declare-fun b!781611 () Bool)

(declare-fun Unit!26941 () Unit!26938)

(assert (=> b!781611 (= e!434713 Unit!26941)))

(assert (=> b!781611 false))

(assert (= (and start!67570 res!528899) b!781608))

(assert (= (and b!781608 res!528907) b!781595))

(assert (= (and b!781595 res!528905) b!781602))

(assert (= (and b!781602 res!528892) b!781600))

(assert (= (and b!781600 res!528903) b!781593))

(assert (= (and b!781593 res!528894) b!781604))

(assert (= (and b!781604 res!528895) b!781597))

(assert (= (and b!781597 res!528901) b!781607))

(assert (= (and b!781607 res!528904) b!781596))

(assert (= (and b!781596 res!528891) b!781598))

(assert (= (and b!781598 res!528896) b!781591))

(assert (= (and b!781591 c!86757) b!781601))

(assert (= (and b!781591 (not c!86757)) b!781610))

(assert (= (and b!781591 res!528897) b!781603))

(assert (= (and b!781603 res!528902) b!781594))

(assert (= (and b!781594 res!528900) b!781606))

(assert (= (and b!781594 (not res!528893)) b!781599))

(assert (= (and b!781599 (not res!528898)) b!781592))

(assert (= (and b!781592 (not res!528906)) b!781605))

(assert (= (and b!781605 c!86756) b!781611))

(assert (= (and b!781605 (not c!86756)) b!781609))

(declare-fun m!724627 () Bool)

(assert (=> b!781606 m!724627))

(assert (=> b!781606 m!724627))

(declare-fun m!724629 () Bool)

(assert (=> b!781606 m!724629))

(declare-fun m!724631 () Bool)

(assert (=> b!781592 m!724631))

(declare-fun m!724633 () Bool)

(assert (=> b!781592 m!724633))

(assert (=> b!781595 m!724627))

(assert (=> b!781595 m!724627))

(declare-fun m!724635 () Bool)

(assert (=> b!781595 m!724635))

(assert (=> b!781596 m!724627))

(assert (=> b!781596 m!724627))

(declare-fun m!724637 () Bool)

(assert (=> b!781596 m!724637))

(assert (=> b!781596 m!724637))

(assert (=> b!781596 m!724627))

(declare-fun m!724639 () Bool)

(assert (=> b!781596 m!724639))

(assert (=> b!781601 m!724627))

(assert (=> b!781601 m!724627))

(declare-fun m!724641 () Bool)

(assert (=> b!781601 m!724641))

(assert (=> b!781594 m!724627))

(assert (=> b!781594 m!724627))

(declare-fun m!724643 () Bool)

(assert (=> b!781594 m!724643))

(declare-fun m!724645 () Bool)

(assert (=> b!781594 m!724645))

(declare-fun m!724647 () Bool)

(assert (=> b!781594 m!724647))

(declare-fun m!724649 () Bool)

(assert (=> b!781604 m!724649))

(declare-fun m!724651 () Bool)

(assert (=> b!781598 m!724651))

(assert (=> b!781610 m!724627))

(assert (=> b!781610 m!724627))

(declare-fun m!724653 () Bool)

(assert (=> b!781610 m!724653))

(declare-fun m!724655 () Bool)

(assert (=> b!781600 m!724655))

(declare-fun m!724657 () Bool)

(assert (=> b!781602 m!724657))

(declare-fun m!724659 () Bool)

(assert (=> b!781597 m!724659))

(assert (=> b!781599 m!724627))

(assert (=> b!781599 m!724627))

(assert (=> b!781599 m!724653))

(assert (=> b!781605 m!724631))

(assert (=> b!781605 m!724633))

(declare-fun m!724661 () Bool)

(assert (=> start!67570 m!724661))

(declare-fun m!724663 () Bool)

(assert (=> start!67570 m!724663))

(declare-fun m!724665 () Bool)

(assert (=> b!781603 m!724665))

(declare-fun m!724667 () Bool)

(assert (=> b!781603 m!724667))

(assert (=> b!781603 m!724631))

(declare-fun m!724669 () Bool)

(assert (=> b!781603 m!724669))

(assert (=> b!781603 m!724667))

(declare-fun m!724671 () Bool)

(assert (=> b!781603 m!724671))

(declare-fun m!724673 () Bool)

(assert (=> b!781593 m!724673))

(push 1)

