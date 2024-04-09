; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68004 () Bool)

(assert start!68004)

(declare-fun b!790823 () Bool)

(declare-fun res!535797 () Bool)

(declare-fun e!439562 () Bool)

(assert (=> b!790823 (=> (not res!535797) (not e!439562))))

(declare-datatypes ((array!42873 0))(
  ( (array!42874 (arr!20518 (Array (_ BitVec 32) (_ BitVec 64))) (size!20939 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42873)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!790823 (= res!535797 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20518 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790824 () Bool)

(declare-fun e!439559 () Bool)

(declare-fun e!439563 () Bool)

(assert (=> b!790824 (= e!439559 e!439563)))

(declare-fun res!535803 () Bool)

(assert (=> b!790824 (=> (not res!535803) (not e!439563))))

(declare-datatypes ((SeekEntryResult!8125 0))(
  ( (MissingZero!8125 (index!34867 (_ BitVec 32))) (Found!8125 (index!34868 (_ BitVec 32))) (Intermediate!8125 (undefined!8937 Bool) (index!34869 (_ BitVec 32)) (x!65836 (_ BitVec 32))) (Undefined!8125) (MissingVacant!8125 (index!34870 (_ BitVec 32))) )
))
(declare-fun lt!353049 () SeekEntryResult!8125)

(assert (=> b!790824 (= res!535803 (or (= lt!353049 (MissingZero!8125 i!1173)) (= lt!353049 (MissingVacant!8125 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42873 (_ BitVec 32)) SeekEntryResult!8125)

(assert (=> b!790824 (= lt!353049 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!790825 () Bool)

(declare-fun e!439561 () Bool)

(assert (=> b!790825 (= e!439562 e!439561)))

(declare-fun res!535804 () Bool)

(assert (=> b!790825 (=> (not res!535804) (not e!439561))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!353047 () array!42873)

(declare-fun lt!353045 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42873 (_ BitVec 32)) SeekEntryResult!8125)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790825 (= res!535804 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353045 mask!3328) lt!353045 lt!353047 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353045 lt!353047 mask!3328)))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!790825 (= lt!353045 (select (store (arr!20518 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!790825 (= lt!353047 (array!42874 (store (arr!20518 a!3186) i!1173 k0!2102) (size!20939 a!3186)))))

(declare-fun b!790826 () Bool)

(assert (=> b!790826 (= e!439563 e!439562)))

(declare-fun res!535799 () Bool)

(assert (=> b!790826 (=> (not res!535799) (not e!439562))))

(declare-fun lt!353048 () SeekEntryResult!8125)

(assert (=> b!790826 (= res!535799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20518 a!3186) j!159) mask!3328) (select (arr!20518 a!3186) j!159) a!3186 mask!3328) lt!353048))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790826 (= lt!353048 (Intermediate!8125 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790827 () Bool)

(declare-fun e!439564 () Bool)

(declare-fun e!439558 () Bool)

(assert (=> b!790827 (= e!439564 e!439558)))

(declare-fun res!535802 () Bool)

(assert (=> b!790827 (=> (not res!535802) (not e!439558))))

(declare-fun lt!353046 () SeekEntryResult!8125)

(assert (=> b!790827 (= res!535802 (= (seekEntryOrOpen!0 (select (arr!20518 a!3186) j!159) a!3186 mask!3328) lt!353046))))

(assert (=> b!790827 (= lt!353046 (Found!8125 j!159))))

(declare-fun b!790828 () Bool)

(declare-fun res!535800 () Bool)

(assert (=> b!790828 (=> (not res!535800) (not e!439559))))

(declare-fun arrayContainsKey!0 (array!42873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790828 (= res!535800 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790829 () Bool)

(declare-fun res!535796 () Bool)

(assert (=> b!790829 (=> (not res!535796) (not e!439559))))

(assert (=> b!790829 (= res!535796 (and (= (size!20939 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20939 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20939 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!439560 () Bool)

(declare-fun b!790831 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42873 (_ BitVec 32)) SeekEntryResult!8125)

(assert (=> b!790831 (= e!439560 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20518 a!3186) j!159) a!3186 mask!3328) (Found!8125 j!159)))))

(declare-fun b!790832 () Bool)

(assert (=> b!790832 (= e!439561 (not true))))

(assert (=> b!790832 e!439564))

(declare-fun res!535801 () Bool)

(assert (=> b!790832 (=> (not res!535801) (not e!439564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42873 (_ BitVec 32)) Bool)

(assert (=> b!790832 (= res!535801 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27402 0))(
  ( (Unit!27403) )
))
(declare-fun lt!353050 () Unit!27402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42873 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27402)

(assert (=> b!790832 (= lt!353050 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790833 () Bool)

(declare-fun res!535794 () Bool)

(assert (=> b!790833 (=> (not res!535794) (not e!439563))))

(assert (=> b!790833 (= res!535794 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20939 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20939 a!3186))))))

(declare-fun b!790834 () Bool)

(declare-fun res!535793 () Bool)

(assert (=> b!790834 (=> (not res!535793) (not e!439562))))

(assert (=> b!790834 (= res!535793 e!439560)))

(declare-fun c!87927 () Bool)

(assert (=> b!790834 (= c!87927 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790835 () Bool)

(declare-fun res!535798 () Bool)

(assert (=> b!790835 (=> (not res!535798) (not e!439559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790835 (= res!535798 (validKeyInArray!0 k0!2102))))

(declare-fun b!790836 () Bool)

(assert (=> b!790836 (= e!439560 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20518 a!3186) j!159) a!3186 mask!3328) lt!353048))))

(declare-fun b!790837 () Bool)

(declare-fun res!535791 () Bool)

(assert (=> b!790837 (=> (not res!535791) (not e!439563))))

(assert (=> b!790837 (= res!535791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790830 () Bool)

(assert (=> b!790830 (= e!439558 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20518 a!3186) j!159) a!3186 mask!3328) lt!353046))))

(declare-fun res!535792 () Bool)

(assert (=> start!68004 (=> (not res!535792) (not e!439559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68004 (= res!535792 (validMask!0 mask!3328))))

(assert (=> start!68004 e!439559))

(assert (=> start!68004 true))

(declare-fun array_inv!16292 (array!42873) Bool)

(assert (=> start!68004 (array_inv!16292 a!3186)))

(declare-fun b!790838 () Bool)

(declare-fun res!535795 () Bool)

(assert (=> b!790838 (=> (not res!535795) (not e!439563))))

(declare-datatypes ((List!14573 0))(
  ( (Nil!14570) (Cons!14569 (h!15698 (_ BitVec 64)) (t!20896 List!14573)) )
))
(declare-fun arrayNoDuplicates!0 (array!42873 (_ BitVec 32) List!14573) Bool)

(assert (=> b!790838 (= res!535795 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14570))))

(declare-fun b!790839 () Bool)

(declare-fun res!535790 () Bool)

(assert (=> b!790839 (=> (not res!535790) (not e!439559))))

(assert (=> b!790839 (= res!535790 (validKeyInArray!0 (select (arr!20518 a!3186) j!159)))))

(assert (= (and start!68004 res!535792) b!790829))

(assert (= (and b!790829 res!535796) b!790839))

(assert (= (and b!790839 res!535790) b!790835))

(assert (= (and b!790835 res!535798) b!790828))

(assert (= (and b!790828 res!535800) b!790824))

(assert (= (and b!790824 res!535803) b!790837))

(assert (= (and b!790837 res!535791) b!790838))

(assert (= (and b!790838 res!535795) b!790833))

(assert (= (and b!790833 res!535794) b!790826))

(assert (= (and b!790826 res!535799) b!790823))

(assert (= (and b!790823 res!535797) b!790834))

(assert (= (and b!790834 c!87927) b!790836))

(assert (= (and b!790834 (not c!87927)) b!790831))

(assert (= (and b!790834 res!535793) b!790825))

(assert (= (and b!790825 res!535804) b!790832))

(assert (= (and b!790832 res!535801) b!790827))

(assert (= (and b!790827 res!535802) b!790830))

(declare-fun m!731687 () Bool)

(assert (=> b!790837 m!731687))

(declare-fun m!731689 () Bool)

(assert (=> b!790830 m!731689))

(assert (=> b!790830 m!731689))

(declare-fun m!731691 () Bool)

(assert (=> b!790830 m!731691))

(declare-fun m!731693 () Bool)

(assert (=> b!790824 m!731693))

(declare-fun m!731695 () Bool)

(assert (=> b!790832 m!731695))

(declare-fun m!731697 () Bool)

(assert (=> b!790832 m!731697))

(declare-fun m!731699 () Bool)

(assert (=> b!790823 m!731699))

(assert (=> b!790827 m!731689))

(assert (=> b!790827 m!731689))

(declare-fun m!731701 () Bool)

(assert (=> b!790827 m!731701))

(assert (=> b!790836 m!731689))

(assert (=> b!790836 m!731689))

(declare-fun m!731703 () Bool)

(assert (=> b!790836 m!731703))

(declare-fun m!731705 () Bool)

(assert (=> b!790835 m!731705))

(assert (=> b!790831 m!731689))

(assert (=> b!790831 m!731689))

(declare-fun m!731707 () Bool)

(assert (=> b!790831 m!731707))

(assert (=> b!790826 m!731689))

(assert (=> b!790826 m!731689))

(declare-fun m!731709 () Bool)

(assert (=> b!790826 m!731709))

(assert (=> b!790826 m!731709))

(assert (=> b!790826 m!731689))

(declare-fun m!731711 () Bool)

(assert (=> b!790826 m!731711))

(declare-fun m!731713 () Bool)

(assert (=> b!790838 m!731713))

(assert (=> b!790839 m!731689))

(assert (=> b!790839 m!731689))

(declare-fun m!731715 () Bool)

(assert (=> b!790839 m!731715))

(declare-fun m!731717 () Bool)

(assert (=> b!790828 m!731717))

(declare-fun m!731719 () Bool)

(assert (=> b!790825 m!731719))

(declare-fun m!731721 () Bool)

(assert (=> b!790825 m!731721))

(declare-fun m!731723 () Bool)

(assert (=> b!790825 m!731723))

(declare-fun m!731725 () Bool)

(assert (=> b!790825 m!731725))

(declare-fun m!731727 () Bool)

(assert (=> b!790825 m!731727))

(assert (=> b!790825 m!731721))

(declare-fun m!731729 () Bool)

(assert (=> start!68004 m!731729))

(declare-fun m!731731 () Bool)

(assert (=> start!68004 m!731731))

(check-sat (not b!790826) (not b!790824) (not b!790836) (not b!790831) (not b!790828) (not b!790832) (not b!790835) (not b!790827) (not b!790825) (not start!68004) (not b!790837) (not b!790830) (not b!790838) (not b!790839))
(check-sat)
