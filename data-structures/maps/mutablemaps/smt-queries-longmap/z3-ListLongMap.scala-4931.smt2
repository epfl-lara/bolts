; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67914 () Bool)

(assert start!67914)

(declare-fun b!789684 () Bool)

(declare-fun e!438930 () Bool)

(declare-fun e!438939 () Bool)

(assert (=> b!789684 (= e!438930 e!438939)))

(declare-fun res!535069 () Bool)

(assert (=> b!789684 (=> res!535069 e!438939)))

(declare-fun lt!352453 () (_ BitVec 64))

(declare-fun lt!352460 () (_ BitVec 64))

(assert (=> b!789684 (= res!535069 (= lt!352453 lt!352460))))

(declare-datatypes ((array!42846 0))(
  ( (array!42847 (arr!20506 (Array (_ BitVec 32) (_ BitVec 64))) (size!20927 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42846)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!789684 (= lt!352453 (select (store (arr!20506 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!789685 () Bool)

(declare-datatypes ((Unit!27362 0))(
  ( (Unit!27363) )
))
(declare-fun e!438936 () Unit!27362)

(declare-fun Unit!27364 () Unit!27362)

(assert (=> b!789685 (= e!438936 Unit!27364)))

(declare-fun b!789687 () Bool)

(declare-fun res!535074 () Bool)

(declare-fun e!438932 () Bool)

(assert (=> b!789687 (=> (not res!535074) (not e!438932))))

(declare-datatypes ((List!14561 0))(
  ( (Nil!14558) (Cons!14557 (h!15683 (_ BitVec 64)) (t!20884 List!14561)) )
))
(declare-fun arrayNoDuplicates!0 (array!42846 (_ BitVec 32) List!14561) Bool)

(assert (=> b!789687 (= res!535074 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14558))))

(declare-fun b!789688 () Bool)

(declare-fun e!438940 () Bool)

(declare-fun e!438929 () Bool)

(assert (=> b!789688 (= e!438940 e!438929)))

(declare-fun res!535063 () Bool)

(assert (=> b!789688 (=> (not res!535063) (not e!438929))))

(declare-datatypes ((SeekEntryResult!8113 0))(
  ( (MissingZero!8113 (index!34819 (_ BitVec 32))) (Found!8113 (index!34820 (_ BitVec 32))) (Intermediate!8113 (undefined!8925 Bool) (index!34821 (_ BitVec 32)) (x!65783 (_ BitVec 32))) (Undefined!8113) (MissingVacant!8113 (index!34822 (_ BitVec 32))) )
))
(declare-fun lt!352450 () SeekEntryResult!8113)

(declare-fun lt!352452 () SeekEntryResult!8113)

(assert (=> b!789688 (= res!535063 (= lt!352450 lt!352452))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!352459 () array!42846)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42846 (_ BitVec 32)) SeekEntryResult!8113)

(assert (=> b!789688 (= lt!352452 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352460 lt!352459 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789688 (= lt!352450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352460 mask!3328) lt!352460 lt!352459 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!789688 (= lt!352460 (select (store (arr!20506 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!789688 (= lt!352459 (array!42847 (store (arr!20506 a!3186) i!1173 k0!2102) (size!20927 a!3186)))))

(declare-fun b!789689 () Bool)

(declare-fun e!438933 () Bool)

(assert (=> b!789689 (= e!438929 (not e!438933))))

(declare-fun res!535073 () Bool)

(assert (=> b!789689 (=> res!535073 e!438933)))

(get-info :version)

(assert (=> b!789689 (= res!535073 (or (not ((_ is Intermediate!8113) lt!352452)) (bvslt x!1131 (x!65783 lt!352452)) (not (= x!1131 (x!65783 lt!352452))) (not (= index!1321 (index!34821 lt!352452)))))))

(declare-fun e!438937 () Bool)

(assert (=> b!789689 e!438937))

(declare-fun res!535060 () Bool)

(assert (=> b!789689 (=> (not res!535060) (not e!438937))))

(declare-fun lt!352458 () SeekEntryResult!8113)

(declare-fun lt!352456 () SeekEntryResult!8113)

(assert (=> b!789689 (= res!535060 (= lt!352458 lt!352456))))

(assert (=> b!789689 (= lt!352456 (Found!8113 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42846 (_ BitVec 32)) SeekEntryResult!8113)

(assert (=> b!789689 (= lt!352458 (seekEntryOrOpen!0 (select (arr!20506 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42846 (_ BitVec 32)) Bool)

(assert (=> b!789689 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352461 () Unit!27362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27362)

(assert (=> b!789689 (= lt!352461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789690 () Bool)

(declare-fun Unit!27365 () Unit!27362)

(assert (=> b!789690 (= e!438936 Unit!27365)))

(assert (=> b!789690 false))

(declare-fun b!789691 () Bool)

(assert (=> b!789691 (= e!438932 e!438940)))

(declare-fun res!535064 () Bool)

(assert (=> b!789691 (=> (not res!535064) (not e!438940))))

(declare-fun lt!352462 () SeekEntryResult!8113)

(assert (=> b!789691 (= res!535064 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20506 a!3186) j!159) mask!3328) (select (arr!20506 a!3186) j!159) a!3186 mask!3328) lt!352462))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789691 (= lt!352462 (Intermediate!8113 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789692 () Bool)

(assert (=> b!789692 (= e!438933 e!438930)))

(declare-fun res!535059 () Bool)

(assert (=> b!789692 (=> res!535059 e!438930)))

(declare-fun lt!352449 () SeekEntryResult!8113)

(assert (=> b!789692 (= res!535059 (not (= lt!352449 lt!352456)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42846 (_ BitVec 32)) SeekEntryResult!8113)

(assert (=> b!789692 (= lt!352449 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20506 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!438931 () Bool)

(declare-fun b!789693 () Bool)

(assert (=> b!789693 (= e!438931 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20506 a!3186) j!159) a!3186 mask!3328) lt!352462))))

(declare-fun b!789694 () Bool)

(declare-fun e!438935 () Bool)

(assert (=> b!789694 (= e!438939 e!438935)))

(declare-fun res!535068 () Bool)

(assert (=> b!789694 (=> res!535068 e!438935)))

(assert (=> b!789694 (= res!535068 (or (not (= (select (arr!20506 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!352451 () SeekEntryResult!8113)

(declare-fun lt!352448 () SeekEntryResult!8113)

(assert (=> b!789694 (and (= lt!352451 lt!352448) (= lt!352458 lt!352449))))

(assert (=> b!789694 (= lt!352448 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352460 lt!352459 mask!3328))))

(assert (=> b!789694 (= lt!352451 (seekEntryOrOpen!0 lt!352460 lt!352459 mask!3328))))

(assert (=> b!789694 (= lt!352453 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!352454 () Unit!27362)

(assert (=> b!789694 (= lt!352454 e!438936)))

(declare-fun c!87722 () Bool)

(assert (=> b!789694 (= c!87722 (= lt!352453 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789695 () Bool)

(declare-fun res!535072 () Bool)

(declare-fun e!438934 () Bool)

(assert (=> b!789695 (=> (not res!535072) (not e!438934))))

(declare-fun arrayContainsKey!0 (array!42846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789695 (= res!535072 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789696 () Bool)

(assert (=> b!789696 (= e!438937 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20506 a!3186) j!159) a!3186 mask!3328) lt!352456))))

(declare-fun b!789697 () Bool)

(declare-fun res!535075 () Bool)

(assert (=> b!789697 (=> (not res!535075) (not e!438932))))

(assert (=> b!789697 (= res!535075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789698 () Bool)

(declare-fun res!535066 () Bool)

(assert (=> b!789698 (=> (not res!535066) (not e!438934))))

(assert (=> b!789698 (= res!535066 (and (= (size!20927 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20927 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20927 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789699 () Bool)

(declare-fun res!535058 () Bool)

(assert (=> b!789699 (=> (not res!535058) (not e!438934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789699 (= res!535058 (validKeyInArray!0 k0!2102))))

(declare-fun b!789700 () Bool)

(assert (=> b!789700 (= e!438935 true)))

(assert (=> b!789700 (= lt!352448 lt!352449)))

(declare-fun lt!352457 () Unit!27362)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42846 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27362)

(assert (=> b!789700 (= lt!352457 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!789701 () Bool)

(assert (=> b!789701 (= e!438931 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20506 a!3186) j!159) a!3186 mask!3328) (Found!8113 j!159)))))

(declare-fun b!789702 () Bool)

(declare-fun res!535067 () Bool)

(assert (=> b!789702 (=> (not res!535067) (not e!438932))))

(assert (=> b!789702 (= res!535067 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20927 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20927 a!3186))))))

(declare-fun b!789703 () Bool)

(declare-fun res!535070 () Bool)

(assert (=> b!789703 (=> (not res!535070) (not e!438940))))

(assert (=> b!789703 (= res!535070 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20506 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!535062 () Bool)

(assert (=> start!67914 (=> (not res!535062) (not e!438934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67914 (= res!535062 (validMask!0 mask!3328))))

(assert (=> start!67914 e!438934))

(assert (=> start!67914 true))

(declare-fun array_inv!16280 (array!42846) Bool)

(assert (=> start!67914 (array_inv!16280 a!3186)))

(declare-fun b!789686 () Bool)

(declare-fun res!535071 () Bool)

(assert (=> b!789686 (=> (not res!535071) (not e!438940))))

(assert (=> b!789686 (= res!535071 e!438931)))

(declare-fun c!87723 () Bool)

(assert (=> b!789686 (= c!87723 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789704 () Bool)

(assert (=> b!789704 (= e!438934 e!438932)))

(declare-fun res!535065 () Bool)

(assert (=> b!789704 (=> (not res!535065) (not e!438932))))

(declare-fun lt!352455 () SeekEntryResult!8113)

(assert (=> b!789704 (= res!535065 (or (= lt!352455 (MissingZero!8113 i!1173)) (= lt!352455 (MissingVacant!8113 i!1173))))))

(assert (=> b!789704 (= lt!352455 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!789705 () Bool)

(declare-fun res!535061 () Bool)

(assert (=> b!789705 (=> (not res!535061) (not e!438934))))

(assert (=> b!789705 (= res!535061 (validKeyInArray!0 (select (arr!20506 a!3186) j!159)))))

(assert (= (and start!67914 res!535062) b!789698))

(assert (= (and b!789698 res!535066) b!789705))

(assert (= (and b!789705 res!535061) b!789699))

(assert (= (and b!789699 res!535058) b!789695))

(assert (= (and b!789695 res!535072) b!789704))

(assert (= (and b!789704 res!535065) b!789697))

(assert (= (and b!789697 res!535075) b!789687))

(assert (= (and b!789687 res!535074) b!789702))

(assert (= (and b!789702 res!535067) b!789691))

(assert (= (and b!789691 res!535064) b!789703))

(assert (= (and b!789703 res!535070) b!789686))

(assert (= (and b!789686 c!87723) b!789693))

(assert (= (and b!789686 (not c!87723)) b!789701))

(assert (= (and b!789686 res!535071) b!789688))

(assert (= (and b!789688 res!535063) b!789689))

(assert (= (and b!789689 res!535060) b!789696))

(assert (= (and b!789689 (not res!535073)) b!789692))

(assert (= (and b!789692 (not res!535059)) b!789684))

(assert (= (and b!789684 (not res!535069)) b!789694))

(assert (= (and b!789694 c!87722) b!789690))

(assert (= (and b!789694 (not c!87722)) b!789685))

(assert (= (and b!789694 (not res!535068)) b!789700))

(declare-fun m!730773 () Bool)

(assert (=> b!789688 m!730773))

(declare-fun m!730775 () Bool)

(assert (=> b!789688 m!730775))

(declare-fun m!730777 () Bool)

(assert (=> b!789688 m!730777))

(declare-fun m!730779 () Bool)

(assert (=> b!789688 m!730779))

(declare-fun m!730781 () Bool)

(assert (=> b!789688 m!730781))

(assert (=> b!789688 m!730775))

(declare-fun m!730783 () Bool)

(assert (=> b!789691 m!730783))

(assert (=> b!789691 m!730783))

(declare-fun m!730785 () Bool)

(assert (=> b!789691 m!730785))

(assert (=> b!789691 m!730785))

(assert (=> b!789691 m!730783))

(declare-fun m!730787 () Bool)

(assert (=> b!789691 m!730787))

(assert (=> b!789689 m!730783))

(assert (=> b!789689 m!730783))

(declare-fun m!730789 () Bool)

(assert (=> b!789689 m!730789))

(declare-fun m!730791 () Bool)

(assert (=> b!789689 m!730791))

(declare-fun m!730793 () Bool)

(assert (=> b!789689 m!730793))

(declare-fun m!730795 () Bool)

(assert (=> b!789703 m!730795))

(declare-fun m!730797 () Bool)

(assert (=> b!789704 m!730797))

(declare-fun m!730799 () Bool)

(assert (=> b!789697 m!730799))

(declare-fun m!730801 () Bool)

(assert (=> b!789687 m!730801))

(assert (=> b!789696 m!730783))

(assert (=> b!789696 m!730783))

(declare-fun m!730803 () Bool)

(assert (=> b!789696 m!730803))

(declare-fun m!730805 () Bool)

(assert (=> b!789695 m!730805))

(declare-fun m!730807 () Bool)

(assert (=> b!789700 m!730807))

(assert (=> b!789692 m!730783))

(assert (=> b!789692 m!730783))

(declare-fun m!730809 () Bool)

(assert (=> b!789692 m!730809))

(assert (=> b!789693 m!730783))

(assert (=> b!789693 m!730783))

(declare-fun m!730811 () Bool)

(assert (=> b!789693 m!730811))

(assert (=> b!789705 m!730783))

(assert (=> b!789705 m!730783))

(declare-fun m!730813 () Bool)

(assert (=> b!789705 m!730813))

(assert (=> b!789684 m!730773))

(declare-fun m!730815 () Bool)

(assert (=> b!789684 m!730815))

(declare-fun m!730817 () Bool)

(assert (=> start!67914 m!730817))

(declare-fun m!730819 () Bool)

(assert (=> start!67914 m!730819))

(declare-fun m!730821 () Bool)

(assert (=> b!789699 m!730821))

(declare-fun m!730823 () Bool)

(assert (=> b!789694 m!730823))

(declare-fun m!730825 () Bool)

(assert (=> b!789694 m!730825))

(declare-fun m!730827 () Bool)

(assert (=> b!789694 m!730827))

(assert (=> b!789701 m!730783))

(assert (=> b!789701 m!730783))

(assert (=> b!789701 m!730809))

(check-sat (not start!67914) (not b!789701) (not b!789689) (not b!789691) (not b!789692) (not b!789697) (not b!789687) (not b!789700) (not b!789705) (not b!789694) (not b!789696) (not b!789704) (not b!789699) (not b!789693) (not b!789688) (not b!789695))
(check-sat)
