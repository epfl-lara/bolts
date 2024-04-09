; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65814 () Bool)

(assert start!65814)

(declare-fun b!756745 () Bool)

(declare-fun e!421983 () Bool)

(declare-datatypes ((SeekEntryResult!7687 0))(
  ( (MissingZero!7687 (index!33115 (_ BitVec 32))) (Found!7687 (index!33116 (_ BitVec 32))) (Intermediate!7687 (undefined!8499 Bool) (index!33117 (_ BitVec 32)) (x!64038 (_ BitVec 32))) (Undefined!7687) (MissingVacant!7687 (index!33118 (_ BitVec 32))) )
))
(declare-fun lt!336980 () SeekEntryResult!7687)

(declare-fun lt!336983 () SeekEntryResult!7687)

(assert (=> b!756745 (= e!421983 (= lt!336980 lt!336983))))

(declare-fun b!756746 () Bool)

(declare-fun e!421982 () Bool)

(declare-fun e!421979 () Bool)

(assert (=> b!756746 (= e!421982 e!421979)))

(declare-fun res!511812 () Bool)

(assert (=> b!756746 (=> res!511812 e!421979)))

(declare-fun lt!336986 () SeekEntryResult!7687)

(assert (=> b!756746 (= res!511812 (not (= lt!336983 lt!336986)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41940 0))(
  ( (array!41941 (arr!20080 (Array (_ BitVec 32) (_ BitVec 64))) (size!20501 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41940)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41940 (_ BitVec 32)) SeekEntryResult!7687)

(assert (=> b!756746 (= lt!336983 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20080 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756747 () Bool)

(declare-fun e!421976 () Bool)

(declare-fun e!421984 () Bool)

(assert (=> b!756747 (= e!421976 e!421984)))

(declare-fun res!511820 () Bool)

(assert (=> b!756747 (=> (not res!511820) (not e!421984))))

(declare-fun lt!336981 () SeekEntryResult!7687)

(declare-fun lt!336982 () SeekEntryResult!7687)

(assert (=> b!756747 (= res!511820 (= lt!336981 lt!336982))))

(declare-fun lt!336979 () (_ BitVec 64))

(declare-fun lt!336984 () array!41940)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41940 (_ BitVec 32)) SeekEntryResult!7687)

(assert (=> b!756747 (= lt!336982 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336979 lt!336984 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756747 (= lt!336981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336979 mask!3328) lt!336979 lt!336984 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!756747 (= lt!336979 (select (store (arr!20080 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!756747 (= lt!336984 (array!41941 (store (arr!20080 a!3186) i!1173 k0!2102) (size!20501 a!3186)))))

(declare-fun b!756748 () Bool)

(declare-datatypes ((Unit!26150 0))(
  ( (Unit!26151) )
))
(declare-fun e!421980 () Unit!26150)

(declare-fun Unit!26152 () Unit!26150)

(assert (=> b!756748 (= e!421980 Unit!26152)))

(declare-fun b!756750 () Bool)

(declare-fun res!511829 () Bool)

(declare-fun e!421978 () Bool)

(assert (=> b!756750 (=> (not res!511829) (not e!421978))))

(declare-fun arrayContainsKey!0 (array!41940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756750 (= res!511829 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun e!421981 () Bool)

(declare-fun b!756751 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756751 (= e!421981 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20080 a!3186) j!159) a!3186 mask!3328) lt!336986))))

(declare-fun b!756752 () Bool)

(declare-fun e!421975 () Bool)

(assert (=> b!756752 (= e!421975 e!421976)))

(declare-fun res!511821 () Bool)

(assert (=> b!756752 (=> (not res!511821) (not e!421976))))

(declare-fun lt!336975 () SeekEntryResult!7687)

(assert (=> b!756752 (= res!511821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20080 a!3186) j!159) mask!3328) (select (arr!20080 a!3186) j!159) a!3186 mask!3328) lt!336975))))

(assert (=> b!756752 (= lt!336975 (Intermediate!7687 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756753 () Bool)

(declare-fun e!421985 () Bool)

(assert (=> b!756753 (= e!421985 true)))

(assert (=> b!756753 e!421983))

(declare-fun res!511816 () Bool)

(assert (=> b!756753 (=> (not res!511816) (not e!421983))))

(declare-fun lt!336978 () (_ BitVec 64))

(assert (=> b!756753 (= res!511816 (= lt!336978 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336985 () Unit!26150)

(assert (=> b!756753 (= lt!336985 e!421980)))

(declare-fun c!82847 () Bool)

(assert (=> b!756753 (= c!82847 (= lt!336978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756754 () Bool)

(declare-fun res!511819 () Bool)

(assert (=> b!756754 (=> (not res!511819) (not e!421975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41940 (_ BitVec 32)) Bool)

(assert (=> b!756754 (= res!511819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756755 () Bool)

(assert (=> b!756755 (= e!421984 (not e!421982))))

(declare-fun res!511827 () Bool)

(assert (=> b!756755 (=> res!511827 e!421982)))

(get-info :version)

(assert (=> b!756755 (= res!511827 (or (not ((_ is Intermediate!7687) lt!336982)) (bvslt x!1131 (x!64038 lt!336982)) (not (= x!1131 (x!64038 lt!336982))) (not (= index!1321 (index!33117 lt!336982)))))))

(assert (=> b!756755 e!421981))

(declare-fun res!511815 () Bool)

(assert (=> b!756755 (=> (not res!511815) (not e!421981))))

(assert (=> b!756755 (= res!511815 (= lt!336980 lt!336986))))

(assert (=> b!756755 (= lt!336986 (Found!7687 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41940 (_ BitVec 32)) SeekEntryResult!7687)

(assert (=> b!756755 (= lt!336980 (seekEntryOrOpen!0 (select (arr!20080 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756755 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336977 () Unit!26150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26150)

(assert (=> b!756755 (= lt!336977 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756756 () Bool)

(declare-fun e!421977 () Bool)

(assert (=> b!756756 (= e!421977 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20080 a!3186) j!159) a!3186 mask!3328) (Found!7687 j!159)))))

(declare-fun b!756757 () Bool)

(declare-fun res!511822 () Bool)

(assert (=> b!756757 (=> (not res!511822) (not e!421975))))

(assert (=> b!756757 (= res!511822 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20501 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20501 a!3186))))))

(declare-fun b!756758 () Bool)

(declare-fun res!511813 () Bool)

(assert (=> b!756758 (=> (not res!511813) (not e!421978))))

(assert (=> b!756758 (= res!511813 (and (= (size!20501 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20501 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20501 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!511825 () Bool)

(assert (=> start!65814 (=> (not res!511825) (not e!421978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65814 (= res!511825 (validMask!0 mask!3328))))

(assert (=> start!65814 e!421978))

(assert (=> start!65814 true))

(declare-fun array_inv!15854 (array!41940) Bool)

(assert (=> start!65814 (array_inv!15854 a!3186)))

(declare-fun b!756749 () Bool)

(assert (=> b!756749 (= e!421978 e!421975)))

(declare-fun res!511824 () Bool)

(assert (=> b!756749 (=> (not res!511824) (not e!421975))))

(declare-fun lt!336976 () SeekEntryResult!7687)

(assert (=> b!756749 (= res!511824 (or (= lt!336976 (MissingZero!7687 i!1173)) (= lt!336976 (MissingVacant!7687 i!1173))))))

(assert (=> b!756749 (= lt!336976 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!756759 () Bool)

(declare-fun res!511818 () Bool)

(assert (=> b!756759 (=> (not res!511818) (not e!421976))))

(assert (=> b!756759 (= res!511818 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20080 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756760 () Bool)

(declare-fun res!511814 () Bool)

(assert (=> b!756760 (=> (not res!511814) (not e!421978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756760 (= res!511814 (validKeyInArray!0 (select (arr!20080 a!3186) j!159)))))

(declare-fun b!756761 () Bool)

(assert (=> b!756761 (= e!421979 e!421985)))

(declare-fun res!511830 () Bool)

(assert (=> b!756761 (=> res!511830 e!421985)))

(assert (=> b!756761 (= res!511830 (= lt!336978 lt!336979))))

(assert (=> b!756761 (= lt!336978 (select (store (arr!20080 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!756762 () Bool)

(declare-fun res!511826 () Bool)

(assert (=> b!756762 (=> (not res!511826) (not e!421975))))

(declare-datatypes ((List!14135 0))(
  ( (Nil!14132) (Cons!14131 (h!15203 (_ BitVec 64)) (t!20458 List!14135)) )
))
(declare-fun arrayNoDuplicates!0 (array!41940 (_ BitVec 32) List!14135) Bool)

(assert (=> b!756762 (= res!511826 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14132))))

(declare-fun b!756763 () Bool)

(assert (=> b!756763 (= e!421977 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20080 a!3186) j!159) a!3186 mask!3328) lt!336975))))

(declare-fun b!756764 () Bool)

(declare-fun res!511817 () Bool)

(assert (=> b!756764 (=> (not res!511817) (not e!421978))))

(assert (=> b!756764 (= res!511817 (validKeyInArray!0 k0!2102))))

(declare-fun b!756765 () Bool)

(declare-fun res!511823 () Bool)

(assert (=> b!756765 (=> (not res!511823) (not e!421976))))

(assert (=> b!756765 (= res!511823 e!421977)))

(declare-fun c!82848 () Bool)

(assert (=> b!756765 (= c!82848 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756766 () Bool)

(declare-fun res!511828 () Bool)

(assert (=> b!756766 (=> (not res!511828) (not e!421983))))

(assert (=> b!756766 (= res!511828 (= (seekEntryOrOpen!0 lt!336979 lt!336984 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336979 lt!336984 mask!3328)))))

(declare-fun b!756767 () Bool)

(declare-fun Unit!26153 () Unit!26150)

(assert (=> b!756767 (= e!421980 Unit!26153)))

(assert (=> b!756767 false))

(assert (= (and start!65814 res!511825) b!756758))

(assert (= (and b!756758 res!511813) b!756760))

(assert (= (and b!756760 res!511814) b!756764))

(assert (= (and b!756764 res!511817) b!756750))

(assert (= (and b!756750 res!511829) b!756749))

(assert (= (and b!756749 res!511824) b!756754))

(assert (= (and b!756754 res!511819) b!756762))

(assert (= (and b!756762 res!511826) b!756757))

(assert (= (and b!756757 res!511822) b!756752))

(assert (= (and b!756752 res!511821) b!756759))

(assert (= (and b!756759 res!511818) b!756765))

(assert (= (and b!756765 c!82848) b!756763))

(assert (= (and b!756765 (not c!82848)) b!756756))

(assert (= (and b!756765 res!511823) b!756747))

(assert (= (and b!756747 res!511820) b!756755))

(assert (= (and b!756755 res!511815) b!756751))

(assert (= (and b!756755 (not res!511827)) b!756746))

(assert (= (and b!756746 (not res!511812)) b!756761))

(assert (= (and b!756761 (not res!511830)) b!756753))

(assert (= (and b!756753 c!82847) b!756767))

(assert (= (and b!756753 (not c!82847)) b!756748))

(assert (= (and b!756753 res!511816) b!756766))

(assert (= (and b!756766 res!511828) b!756745))

(declare-fun m!704693 () Bool)

(assert (=> b!756749 m!704693))

(declare-fun m!704695 () Bool)

(assert (=> b!756761 m!704695))

(declare-fun m!704697 () Bool)

(assert (=> b!756761 m!704697))

(declare-fun m!704699 () Bool)

(assert (=> b!756750 m!704699))

(declare-fun m!704701 () Bool)

(assert (=> b!756754 m!704701))

(declare-fun m!704703 () Bool)

(assert (=> b!756746 m!704703))

(assert (=> b!756746 m!704703))

(declare-fun m!704705 () Bool)

(assert (=> b!756746 m!704705))

(assert (=> b!756760 m!704703))

(assert (=> b!756760 m!704703))

(declare-fun m!704707 () Bool)

(assert (=> b!756760 m!704707))

(declare-fun m!704709 () Bool)

(assert (=> b!756747 m!704709))

(assert (=> b!756747 m!704695))

(declare-fun m!704711 () Bool)

(assert (=> b!756747 m!704711))

(declare-fun m!704713 () Bool)

(assert (=> b!756747 m!704713))

(declare-fun m!704715 () Bool)

(assert (=> b!756747 m!704715))

(assert (=> b!756747 m!704713))

(assert (=> b!756751 m!704703))

(assert (=> b!756751 m!704703))

(declare-fun m!704717 () Bool)

(assert (=> b!756751 m!704717))

(assert (=> b!756763 m!704703))

(assert (=> b!756763 m!704703))

(declare-fun m!704719 () Bool)

(assert (=> b!756763 m!704719))

(assert (=> b!756756 m!704703))

(assert (=> b!756756 m!704703))

(assert (=> b!756756 m!704705))

(assert (=> b!756755 m!704703))

(assert (=> b!756755 m!704703))

(declare-fun m!704721 () Bool)

(assert (=> b!756755 m!704721))

(declare-fun m!704723 () Bool)

(assert (=> b!756755 m!704723))

(declare-fun m!704725 () Bool)

(assert (=> b!756755 m!704725))

(assert (=> b!756752 m!704703))

(assert (=> b!756752 m!704703))

(declare-fun m!704727 () Bool)

(assert (=> b!756752 m!704727))

(assert (=> b!756752 m!704727))

(assert (=> b!756752 m!704703))

(declare-fun m!704729 () Bool)

(assert (=> b!756752 m!704729))

(declare-fun m!704731 () Bool)

(assert (=> b!756759 m!704731))

(declare-fun m!704733 () Bool)

(assert (=> b!756766 m!704733))

(declare-fun m!704735 () Bool)

(assert (=> b!756766 m!704735))

(declare-fun m!704737 () Bool)

(assert (=> b!756762 m!704737))

(declare-fun m!704739 () Bool)

(assert (=> b!756764 m!704739))

(declare-fun m!704741 () Bool)

(assert (=> start!65814 m!704741))

(declare-fun m!704743 () Bool)

(assert (=> start!65814 m!704743))

(check-sat (not b!756750) (not b!756764) (not b!756760) (not b!756763) (not start!65814) (not b!756754) (not b!756766) (not b!756749) (not b!756747) (not b!756752) (not b!756755) (not b!756746) (not b!756762) (not b!756756) (not b!756751))
(check-sat)
