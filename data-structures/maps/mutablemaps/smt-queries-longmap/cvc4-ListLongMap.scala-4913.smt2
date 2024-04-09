; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67742 () Bool)

(assert start!67742)

(declare-fun b!785588 () Bool)

(declare-datatypes ((Unit!27150 0))(
  ( (Unit!27151) )
))
(declare-fun e!436761 () Unit!27150)

(declare-fun Unit!27152 () Unit!27150)

(assert (=> b!785588 (= e!436761 Unit!27152)))

(declare-datatypes ((array!42737 0))(
  ( (array!42738 (arr!20453 (Array (_ BitVec 32) (_ BitVec 64))) (size!20874 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42737)

(declare-datatypes ((SeekEntryResult!8060 0))(
  ( (MissingZero!8060 (index!34607 (_ BitVec 32))) (Found!8060 (index!34608 (_ BitVec 32))) (Intermediate!8060 (undefined!8872 Bool) (index!34609 (_ BitVec 32)) (x!65577 (_ BitVec 32))) (Undefined!8060) (MissingVacant!8060 (index!34610 (_ BitVec 32))) )
))
(declare-fun lt!350318 () SeekEntryResult!8060)

(declare-fun e!436759 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!785589 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42737 (_ BitVec 32)) SeekEntryResult!8060)

(assert (=> b!785589 (= e!436759 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20453 a!3186) j!159) a!3186 mask!3328) lt!350318))))

(declare-fun b!785591 () Bool)

(declare-fun e!436754 () Bool)

(declare-fun e!436753 () Bool)

(assert (=> b!785591 (= e!436754 (not e!436753))))

(declare-fun res!531940 () Bool)

(assert (=> b!785591 (=> res!531940 e!436753)))

(declare-fun lt!350320 () SeekEntryResult!8060)

(assert (=> b!785591 (= res!531940 (or (not (is-Intermediate!8060 lt!350320)) (bvslt x!1131 (x!65577 lt!350320)) (not (= x!1131 (x!65577 lt!350320))) (not (= index!1321 (index!34609 lt!350320)))))))

(declare-fun e!436762 () Bool)

(assert (=> b!785591 e!436762))

(declare-fun res!531943 () Bool)

(assert (=> b!785591 (=> (not res!531943) (not e!436762))))

(declare-fun lt!350328 () SeekEntryResult!8060)

(declare-fun lt!350329 () SeekEntryResult!8060)

(assert (=> b!785591 (= res!531943 (= lt!350328 lt!350329))))

(assert (=> b!785591 (= lt!350329 (Found!8060 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42737 (_ BitVec 32)) SeekEntryResult!8060)

(assert (=> b!785591 (= lt!350328 (seekEntryOrOpen!0 (select (arr!20453 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42737 (_ BitVec 32)) Bool)

(assert (=> b!785591 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350319 () Unit!27150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27150)

(assert (=> b!785591 (= lt!350319 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785592 () Bool)

(declare-fun res!531929 () Bool)

(declare-fun e!436758 () Bool)

(assert (=> b!785592 (=> (not res!531929) (not e!436758))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785592 (= res!531929 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20453 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785593 () Bool)

(declare-fun res!531933 () Bool)

(declare-fun e!436752 () Bool)

(assert (=> b!785593 (=> (not res!531933) (not e!436752))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785593 (= res!531933 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785594 () Bool)

(declare-fun res!531926 () Bool)

(declare-fun e!436756 () Bool)

(assert (=> b!785594 (=> (not res!531926) (not e!436756))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785594 (= res!531926 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20874 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20874 a!3186))))))

(declare-fun b!785595 () Bool)

(declare-fun res!531931 () Bool)

(assert (=> b!785595 (=> (not res!531931) (not e!436752))))

(assert (=> b!785595 (= res!531931 (and (= (size!20874 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20874 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20874 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785596 () Bool)

(declare-fun e!436751 () Bool)

(declare-fun lt!350327 () SeekEntryResult!8060)

(assert (=> b!785596 (= e!436751 (= lt!350328 lt!350327))))

(declare-fun b!785597 () Bool)

(declare-fun res!531942 () Bool)

(assert (=> b!785597 (=> (not res!531942) (not e!436756))))

(assert (=> b!785597 (= res!531942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785598 () Bool)

(declare-fun Unit!27153 () Unit!27150)

(assert (=> b!785598 (= e!436761 Unit!27153)))

(assert (=> b!785598 false))

(declare-fun b!785590 () Bool)

(declare-fun e!436755 () Bool)

(declare-fun e!436757 () Bool)

(assert (=> b!785590 (= e!436755 e!436757)))

(declare-fun res!531937 () Bool)

(assert (=> b!785590 (=> res!531937 e!436757)))

(declare-fun lt!350323 () (_ BitVec 64))

(declare-fun lt!350325 () (_ BitVec 64))

(assert (=> b!785590 (= res!531937 (= lt!350323 lt!350325))))

(assert (=> b!785590 (= lt!350323 (select (store (arr!20453 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!531925 () Bool)

(assert (=> start!67742 (=> (not res!531925) (not e!436752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67742 (= res!531925 (validMask!0 mask!3328))))

(assert (=> start!67742 e!436752))

(assert (=> start!67742 true))

(declare-fun array_inv!16227 (array!42737) Bool)

(assert (=> start!67742 (array_inv!16227 a!3186)))

(declare-fun b!785599 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42737 (_ BitVec 32)) SeekEntryResult!8060)

(assert (=> b!785599 (= e!436759 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20453 a!3186) j!159) a!3186 mask!3328) (Found!8060 j!159)))))

(declare-fun b!785600 () Bool)

(declare-fun res!531939 () Bool)

(assert (=> b!785600 (=> (not res!531939) (not e!436758))))

(assert (=> b!785600 (= res!531939 e!436759)))

(declare-fun c!87240 () Bool)

(assert (=> b!785600 (= c!87240 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785601 () Bool)

(assert (=> b!785601 (= e!436757 true)))

(assert (=> b!785601 e!436751))

(declare-fun res!531932 () Bool)

(assert (=> b!785601 (=> (not res!531932) (not e!436751))))

(assert (=> b!785601 (= res!531932 (= lt!350323 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350321 () Unit!27150)

(assert (=> b!785601 (= lt!350321 e!436761)))

(declare-fun c!87239 () Bool)

(assert (=> b!785601 (= c!87239 (= lt!350323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!785602 () Bool)

(assert (=> b!785602 (= e!436752 e!436756)))

(declare-fun res!531938 () Bool)

(assert (=> b!785602 (=> (not res!531938) (not e!436756))))

(declare-fun lt!350322 () SeekEntryResult!8060)

(assert (=> b!785602 (= res!531938 (or (= lt!350322 (MissingZero!8060 i!1173)) (= lt!350322 (MissingVacant!8060 i!1173))))))

(assert (=> b!785602 (= lt!350322 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785603 () Bool)

(declare-fun res!531941 () Bool)

(assert (=> b!785603 (=> (not res!531941) (not e!436752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785603 (= res!531941 (validKeyInArray!0 k!2102))))

(declare-fun b!785604 () Bool)

(assert (=> b!785604 (= e!436753 e!436755)))

(declare-fun res!531930 () Bool)

(assert (=> b!785604 (=> res!531930 e!436755)))

(assert (=> b!785604 (= res!531930 (not (= lt!350327 lt!350329)))))

(assert (=> b!785604 (= lt!350327 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20453 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785605 () Bool)

(assert (=> b!785605 (= e!436762 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20453 a!3186) j!159) a!3186 mask!3328) lt!350329))))

(declare-fun b!785606 () Bool)

(declare-fun res!531928 () Bool)

(assert (=> b!785606 (=> (not res!531928) (not e!436752))))

(assert (=> b!785606 (= res!531928 (validKeyInArray!0 (select (arr!20453 a!3186) j!159)))))

(declare-fun b!785607 () Bool)

(assert (=> b!785607 (= e!436756 e!436758)))

(declare-fun res!531936 () Bool)

(assert (=> b!785607 (=> (not res!531936) (not e!436758))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785607 (= res!531936 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20453 a!3186) j!159) mask!3328) (select (arr!20453 a!3186) j!159) a!3186 mask!3328) lt!350318))))

(assert (=> b!785607 (= lt!350318 (Intermediate!8060 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785608 () Bool)

(declare-fun res!531927 () Bool)

(assert (=> b!785608 (=> (not res!531927) (not e!436751))))

(declare-fun lt!350326 () array!42737)

(assert (=> b!785608 (= res!531927 (= (seekEntryOrOpen!0 lt!350325 lt!350326 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350325 lt!350326 mask!3328)))))

(declare-fun b!785609 () Bool)

(declare-fun res!531935 () Bool)

(assert (=> b!785609 (=> (not res!531935) (not e!436756))))

(declare-datatypes ((List!14508 0))(
  ( (Nil!14505) (Cons!14504 (h!15627 (_ BitVec 64)) (t!20831 List!14508)) )
))
(declare-fun arrayNoDuplicates!0 (array!42737 (_ BitVec 32) List!14508) Bool)

(assert (=> b!785609 (= res!531935 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14505))))

(declare-fun b!785610 () Bool)

(assert (=> b!785610 (= e!436758 e!436754)))

(declare-fun res!531934 () Bool)

(assert (=> b!785610 (=> (not res!531934) (not e!436754))))

(declare-fun lt!350324 () SeekEntryResult!8060)

(assert (=> b!785610 (= res!531934 (= lt!350324 lt!350320))))

(assert (=> b!785610 (= lt!350320 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350325 lt!350326 mask!3328))))

(assert (=> b!785610 (= lt!350324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350325 mask!3328) lt!350325 lt!350326 mask!3328))))

(assert (=> b!785610 (= lt!350325 (select (store (arr!20453 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785610 (= lt!350326 (array!42738 (store (arr!20453 a!3186) i!1173 k!2102) (size!20874 a!3186)))))

(assert (= (and start!67742 res!531925) b!785595))

(assert (= (and b!785595 res!531931) b!785606))

(assert (= (and b!785606 res!531928) b!785603))

(assert (= (and b!785603 res!531941) b!785593))

(assert (= (and b!785593 res!531933) b!785602))

(assert (= (and b!785602 res!531938) b!785597))

(assert (= (and b!785597 res!531942) b!785609))

(assert (= (and b!785609 res!531935) b!785594))

(assert (= (and b!785594 res!531926) b!785607))

(assert (= (and b!785607 res!531936) b!785592))

(assert (= (and b!785592 res!531929) b!785600))

(assert (= (and b!785600 c!87240) b!785589))

(assert (= (and b!785600 (not c!87240)) b!785599))

(assert (= (and b!785600 res!531939) b!785610))

(assert (= (and b!785610 res!531934) b!785591))

(assert (= (and b!785591 res!531943) b!785605))

(assert (= (and b!785591 (not res!531940)) b!785604))

(assert (= (and b!785604 (not res!531930)) b!785590))

(assert (= (and b!785590 (not res!531937)) b!785601))

(assert (= (and b!785601 c!87239) b!785598))

(assert (= (and b!785601 (not c!87239)) b!785588))

(assert (= (and b!785601 res!531932) b!785608))

(assert (= (and b!785608 res!531927) b!785596))

(declare-fun m!727665 () Bool)

(assert (=> b!785607 m!727665))

(assert (=> b!785607 m!727665))

(declare-fun m!727667 () Bool)

(assert (=> b!785607 m!727667))

(assert (=> b!785607 m!727667))

(assert (=> b!785607 m!727665))

(declare-fun m!727669 () Bool)

(assert (=> b!785607 m!727669))

(assert (=> b!785591 m!727665))

(assert (=> b!785591 m!727665))

(declare-fun m!727671 () Bool)

(assert (=> b!785591 m!727671))

(declare-fun m!727673 () Bool)

(assert (=> b!785591 m!727673))

(declare-fun m!727675 () Bool)

(assert (=> b!785591 m!727675))

(declare-fun m!727677 () Bool)

(assert (=> b!785593 m!727677))

(declare-fun m!727679 () Bool)

(assert (=> b!785609 m!727679))

(declare-fun m!727681 () Bool)

(assert (=> b!785608 m!727681))

(declare-fun m!727683 () Bool)

(assert (=> b!785608 m!727683))

(declare-fun m!727685 () Bool)

(assert (=> b!785592 m!727685))

(declare-fun m!727687 () Bool)

(assert (=> b!785590 m!727687))

(declare-fun m!727689 () Bool)

(assert (=> b!785590 m!727689))

(assert (=> b!785599 m!727665))

(assert (=> b!785599 m!727665))

(declare-fun m!727691 () Bool)

(assert (=> b!785599 m!727691))

(declare-fun m!727693 () Bool)

(assert (=> b!785597 m!727693))

(assert (=> b!785606 m!727665))

(assert (=> b!785606 m!727665))

(declare-fun m!727695 () Bool)

(assert (=> b!785606 m!727695))

(declare-fun m!727697 () Bool)

(assert (=> b!785602 m!727697))

(declare-fun m!727699 () Bool)

(assert (=> start!67742 m!727699))

(declare-fun m!727701 () Bool)

(assert (=> start!67742 m!727701))

(assert (=> b!785589 m!727665))

(assert (=> b!785589 m!727665))

(declare-fun m!727703 () Bool)

(assert (=> b!785589 m!727703))

(assert (=> b!785605 m!727665))

(assert (=> b!785605 m!727665))

(declare-fun m!727705 () Bool)

(assert (=> b!785605 m!727705))

(declare-fun m!727707 () Bool)

(assert (=> b!785603 m!727707))

(declare-fun m!727709 () Bool)

(assert (=> b!785610 m!727709))

(assert (=> b!785610 m!727709))

(declare-fun m!727711 () Bool)

(assert (=> b!785610 m!727711))

(assert (=> b!785610 m!727687))

(declare-fun m!727713 () Bool)

(assert (=> b!785610 m!727713))

(declare-fun m!727715 () Bool)

(assert (=> b!785610 m!727715))

(assert (=> b!785604 m!727665))

(assert (=> b!785604 m!727665))

(assert (=> b!785604 m!727691))

(push 1)

