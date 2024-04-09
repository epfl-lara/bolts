; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50362 () Bool)

(assert start!50362)

(declare-fun res!343810 () Bool)

(declare-fun e!317861 () Bool)

(assert (=> start!50362 (=> (not res!343810) (not e!317861))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50362 (= res!343810 (validMask!0 mask!3119))))

(assert (=> start!50362 e!317861))

(assert (=> start!50362 true))

(declare-datatypes ((array!34712 0))(
  ( (array!34713 (arr!16666 (Array (_ BitVec 32) (_ BitVec 64))) (size!17030 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34712)

(declare-fun array_inv!12440 (array!34712) Bool)

(assert (=> start!50362 (array_inv!12440 a!3118)))

(declare-fun b!550697 () Bool)

(declare-fun res!343816 () Bool)

(declare-fun e!317859 () Bool)

(assert (=> b!550697 (=> (not res!343816) (not e!317859))))

(declare-datatypes ((List!10799 0))(
  ( (Nil!10796) (Cons!10795 (h!11771 (_ BitVec 64)) (t!17035 List!10799)) )
))
(declare-fun arrayNoDuplicates!0 (array!34712 (_ BitVec 32) List!10799) Bool)

(assert (=> b!550697 (= res!343816 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10796))))

(declare-fun b!550698 () Bool)

(declare-fun e!317863 () Bool)

(assert (=> b!550698 (= e!317859 e!317863)))

(declare-fun res!343811 () Bool)

(assert (=> b!550698 (=> (not res!343811) (not e!317863))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!250609 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5122 0))(
  ( (MissingZero!5122 (index!22715 (_ BitVec 32))) (Found!5122 (index!22716 (_ BitVec 32))) (Intermediate!5122 (undefined!5934 Bool) (index!22717 (_ BitVec 32)) (x!51669 (_ BitVec 32))) (Undefined!5122) (MissingVacant!5122 (index!22718 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34712 (_ BitVec 32)) SeekEntryResult!5122)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550698 (= res!343811 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250609 (select (arr!16666 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118)) mask!3119)))))

(assert (=> b!550698 (= lt!250609 (toIndex!0 (select (arr!16666 a!3118) j!142) mask!3119))))

(declare-fun b!550699 () Bool)

(declare-fun res!343808 () Bool)

(assert (=> b!550699 (=> (not res!343808) (not e!317861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550699 (= res!343808 (validKeyInArray!0 (select (arr!16666 a!3118) j!142)))))

(declare-fun b!550700 () Bool)

(declare-fun res!343809 () Bool)

(assert (=> b!550700 (=> (not res!343809) (not e!317859))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34712 (_ BitVec 32)) Bool)

(assert (=> b!550700 (= res!343809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!317862 () Bool)

(declare-fun b!550701 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34712 (_ BitVec 32)) SeekEntryResult!5122)

(assert (=> b!550701 (= e!317862 (= (seekEntryOrOpen!0 (select (arr!16666 a!3118) j!142) a!3118 mask!3119) (Found!5122 j!142)))))

(declare-fun b!550702 () Bool)

(assert (=> b!550702 (= e!317863 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge lt!250609 #b00000000000000000000000000000000) (bvslt lt!250609 (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(assert (=> b!550702 e!317862))

(declare-fun res!343813 () Bool)

(assert (=> b!550702 (=> (not res!343813) (not e!317862))))

(assert (=> b!550702 (= res!343813 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17018 0))(
  ( (Unit!17019) )
))
(declare-fun lt!250608 () Unit!17018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17018)

(assert (=> b!550702 (= lt!250608 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550703 () Bool)

(declare-fun res!343812 () Bool)

(assert (=> b!550703 (=> (not res!343812) (not e!317861))))

(declare-fun arrayContainsKey!0 (array!34712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550703 (= res!343812 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550704 () Bool)

(declare-fun res!343815 () Bool)

(assert (=> b!550704 (=> (not res!343815) (not e!317861))))

(assert (=> b!550704 (= res!343815 (validKeyInArray!0 k0!1914))))

(declare-fun b!550705 () Bool)

(declare-fun res!343814 () Bool)

(assert (=> b!550705 (=> (not res!343814) (not e!317861))))

(assert (=> b!550705 (= res!343814 (and (= (size!17030 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17030 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17030 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550706 () Bool)

(assert (=> b!550706 (= e!317861 e!317859)))

(declare-fun res!343817 () Bool)

(assert (=> b!550706 (=> (not res!343817) (not e!317859))))

(declare-fun lt!250610 () SeekEntryResult!5122)

(assert (=> b!550706 (= res!343817 (or (= lt!250610 (MissingZero!5122 i!1132)) (= lt!250610 (MissingVacant!5122 i!1132))))))

(assert (=> b!550706 (= lt!250610 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50362 res!343810) b!550705))

(assert (= (and b!550705 res!343814) b!550699))

(assert (= (and b!550699 res!343808) b!550704))

(assert (= (and b!550704 res!343815) b!550703))

(assert (= (and b!550703 res!343812) b!550706))

(assert (= (and b!550706 res!343817) b!550700))

(assert (= (and b!550700 res!343809) b!550697))

(assert (= (and b!550697 res!343816) b!550698))

(assert (= (and b!550698 res!343811) b!550702))

(assert (= (and b!550702 res!343813) b!550701))

(declare-fun m!527755 () Bool)

(assert (=> b!550703 m!527755))

(declare-fun m!527757 () Bool)

(assert (=> b!550706 m!527757))

(declare-fun m!527759 () Bool)

(assert (=> b!550699 m!527759))

(assert (=> b!550699 m!527759))

(declare-fun m!527761 () Bool)

(assert (=> b!550699 m!527761))

(assert (=> b!550698 m!527759))

(declare-fun m!527763 () Bool)

(assert (=> b!550698 m!527763))

(assert (=> b!550698 m!527759))

(declare-fun m!527765 () Bool)

(assert (=> b!550698 m!527765))

(declare-fun m!527767 () Bool)

(assert (=> b!550698 m!527767))

(assert (=> b!550698 m!527765))

(declare-fun m!527769 () Bool)

(assert (=> b!550698 m!527769))

(declare-fun m!527771 () Bool)

(assert (=> b!550698 m!527771))

(assert (=> b!550698 m!527759))

(declare-fun m!527773 () Bool)

(assert (=> b!550698 m!527773))

(assert (=> b!550698 m!527765))

(assert (=> b!550698 m!527767))

(declare-fun m!527775 () Bool)

(assert (=> b!550702 m!527775))

(declare-fun m!527777 () Bool)

(assert (=> b!550702 m!527777))

(declare-fun m!527779 () Bool)

(assert (=> b!550697 m!527779))

(declare-fun m!527781 () Bool)

(assert (=> start!50362 m!527781))

(declare-fun m!527783 () Bool)

(assert (=> start!50362 m!527783))

(declare-fun m!527785 () Bool)

(assert (=> b!550704 m!527785))

(declare-fun m!527787 () Bool)

(assert (=> b!550700 m!527787))

(assert (=> b!550701 m!527759))

(assert (=> b!550701 m!527759))

(declare-fun m!527789 () Bool)

(assert (=> b!550701 m!527789))

(check-sat (not b!550701) (not b!550698) (not b!550702) (not start!50362) (not b!550697) (not b!550703) (not b!550699) (not b!550700) (not b!550706) (not b!550704))
(check-sat)
(get-model)

(declare-fun bm!32264 () Bool)

(declare-fun call!32267 () Bool)

(assert (=> bm!32264 (= call!32267 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550745 () Bool)

(declare-fun e!317886 () Bool)

(assert (=> b!550745 (= e!317886 call!32267)))

(declare-fun b!550746 () Bool)

(declare-fun e!317885 () Bool)

(assert (=> b!550746 (= e!317885 e!317886)))

(declare-fun lt!250627 () (_ BitVec 64))

(assert (=> b!550746 (= lt!250627 (select (arr!16666 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250628 () Unit!17018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34712 (_ BitVec 64) (_ BitVec 32)) Unit!17018)

(assert (=> b!550746 (= lt!250628 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250627 #b00000000000000000000000000000000))))

(assert (=> b!550746 (arrayContainsKey!0 a!3118 lt!250627 #b00000000000000000000000000000000)))

(declare-fun lt!250626 () Unit!17018)

(assert (=> b!550746 (= lt!250626 lt!250628)))

(declare-fun res!343852 () Bool)

(assert (=> b!550746 (= res!343852 (= (seekEntryOrOpen!0 (select (arr!16666 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5122 #b00000000000000000000000000000000)))))

(assert (=> b!550746 (=> (not res!343852) (not e!317886))))

(declare-fun d!82795 () Bool)

(declare-fun res!343853 () Bool)

(declare-fun e!317887 () Bool)

(assert (=> d!82795 (=> res!343853 e!317887)))

(assert (=> d!82795 (= res!343853 (bvsge #b00000000000000000000000000000000 (size!17030 a!3118)))))

(assert (=> d!82795 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!317887)))

(declare-fun b!550747 () Bool)

(assert (=> b!550747 (= e!317885 call!32267)))

(declare-fun b!550748 () Bool)

(assert (=> b!550748 (= e!317887 e!317885)))

(declare-fun c!63779 () Bool)

(assert (=> b!550748 (= c!63779 (validKeyInArray!0 (select (arr!16666 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82795 (not res!343853)) b!550748))

(assert (= (and b!550748 c!63779) b!550746))

(assert (= (and b!550748 (not c!63779)) b!550747))

(assert (= (and b!550746 res!343852) b!550745))

(assert (= (or b!550745 b!550747) bm!32264))

(declare-fun m!527827 () Bool)

(assert (=> bm!32264 m!527827))

(declare-fun m!527829 () Bool)

(assert (=> b!550746 m!527829))

(declare-fun m!527831 () Bool)

(assert (=> b!550746 m!527831))

(declare-fun m!527833 () Bool)

(assert (=> b!550746 m!527833))

(assert (=> b!550746 m!527829))

(declare-fun m!527835 () Bool)

(assert (=> b!550746 m!527835))

(assert (=> b!550748 m!527829))

(assert (=> b!550748 m!527829))

(declare-fun m!527837 () Bool)

(assert (=> b!550748 m!527837))

(assert (=> b!550700 d!82795))

(declare-fun b!550779 () Bool)

(declare-fun e!317906 () SeekEntryResult!5122)

(assert (=> b!550779 (= e!317906 Undefined!5122)))

(declare-fun b!550780 () Bool)

(declare-fun e!317905 () SeekEntryResult!5122)

(assert (=> b!550780 (= e!317906 e!317905)))

(declare-fun lt!250639 () (_ BitVec 64))

(declare-fun lt!250641 () SeekEntryResult!5122)

(assert (=> b!550780 (= lt!250639 (select (arr!16666 a!3118) (index!22717 lt!250641)))))

(declare-fun c!63793 () Bool)

(assert (=> b!550780 (= c!63793 (= lt!250639 (select (arr!16666 a!3118) j!142)))))

(declare-fun b!550781 () Bool)

(declare-fun e!317904 () SeekEntryResult!5122)

(assert (=> b!550781 (= e!317904 (MissingZero!5122 (index!22717 lt!250641)))))

(declare-fun b!550782 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34712 (_ BitVec 32)) SeekEntryResult!5122)

(assert (=> b!550782 (= e!317904 (seekKeyOrZeroReturnVacant!0 (x!51669 lt!250641) (index!22717 lt!250641) (index!22717 lt!250641) (select (arr!16666 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!82797 () Bool)

(declare-fun lt!250640 () SeekEntryResult!5122)

(get-info :version)

(assert (=> d!82797 (and (or ((_ is Undefined!5122) lt!250640) (not ((_ is Found!5122) lt!250640)) (and (bvsge (index!22716 lt!250640) #b00000000000000000000000000000000) (bvslt (index!22716 lt!250640) (size!17030 a!3118)))) (or ((_ is Undefined!5122) lt!250640) ((_ is Found!5122) lt!250640) (not ((_ is MissingZero!5122) lt!250640)) (and (bvsge (index!22715 lt!250640) #b00000000000000000000000000000000) (bvslt (index!22715 lt!250640) (size!17030 a!3118)))) (or ((_ is Undefined!5122) lt!250640) ((_ is Found!5122) lt!250640) ((_ is MissingZero!5122) lt!250640) (not ((_ is MissingVacant!5122) lt!250640)) (and (bvsge (index!22718 lt!250640) #b00000000000000000000000000000000) (bvslt (index!22718 lt!250640) (size!17030 a!3118)))) (or ((_ is Undefined!5122) lt!250640) (ite ((_ is Found!5122) lt!250640) (= (select (arr!16666 a!3118) (index!22716 lt!250640)) (select (arr!16666 a!3118) j!142)) (ite ((_ is MissingZero!5122) lt!250640) (= (select (arr!16666 a!3118) (index!22715 lt!250640)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5122) lt!250640) (= (select (arr!16666 a!3118) (index!22718 lt!250640)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82797 (= lt!250640 e!317906)))

(declare-fun c!63792 () Bool)

(assert (=> d!82797 (= c!63792 (and ((_ is Intermediate!5122) lt!250641) (undefined!5934 lt!250641)))))

(assert (=> d!82797 (= lt!250641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16666 a!3118) j!142) mask!3119) (select (arr!16666 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82797 (validMask!0 mask!3119)))

(assert (=> d!82797 (= (seekEntryOrOpen!0 (select (arr!16666 a!3118) j!142) a!3118 mask!3119) lt!250640)))

(declare-fun b!550783 () Bool)

(declare-fun c!63794 () Bool)

(assert (=> b!550783 (= c!63794 (= lt!250639 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550783 (= e!317905 e!317904)))

(declare-fun b!550784 () Bool)

(assert (=> b!550784 (= e!317905 (Found!5122 (index!22717 lt!250641)))))

(assert (= (and d!82797 c!63792) b!550779))

(assert (= (and d!82797 (not c!63792)) b!550780))

(assert (= (and b!550780 c!63793) b!550784))

(assert (= (and b!550780 (not c!63793)) b!550783))

(assert (= (and b!550783 c!63794) b!550781))

(assert (= (and b!550783 (not c!63794)) b!550782))

(declare-fun m!527839 () Bool)

(assert (=> b!550780 m!527839))

(assert (=> b!550782 m!527759))

(declare-fun m!527841 () Bool)

(assert (=> b!550782 m!527841))

(declare-fun m!527843 () Bool)

(assert (=> d!82797 m!527843))

(assert (=> d!82797 m!527759))

(assert (=> d!82797 m!527763))

(assert (=> d!82797 m!527781))

(declare-fun m!527845 () Bool)

(assert (=> d!82797 m!527845))

(declare-fun m!527847 () Bool)

(assert (=> d!82797 m!527847))

(assert (=> d!82797 m!527763))

(assert (=> d!82797 m!527759))

(declare-fun m!527849 () Bool)

(assert (=> d!82797 m!527849))

(assert (=> b!550701 d!82797))

(declare-fun b!550794 () Bool)

(declare-fun e!317914 () SeekEntryResult!5122)

(assert (=> b!550794 (= e!317914 Undefined!5122)))

(declare-fun b!550795 () Bool)

(declare-fun e!317913 () SeekEntryResult!5122)

(assert (=> b!550795 (= e!317914 e!317913)))

(declare-fun lt!250644 () (_ BitVec 64))

(declare-fun lt!250646 () SeekEntryResult!5122)

(assert (=> b!550795 (= lt!250644 (select (arr!16666 a!3118) (index!22717 lt!250646)))))

(declare-fun c!63799 () Bool)

(assert (=> b!550795 (= c!63799 (= lt!250644 k0!1914))))

(declare-fun b!550796 () Bool)

(declare-fun e!317912 () SeekEntryResult!5122)

(assert (=> b!550796 (= e!317912 (MissingZero!5122 (index!22717 lt!250646)))))

(declare-fun b!550797 () Bool)

(assert (=> b!550797 (= e!317912 (seekKeyOrZeroReturnVacant!0 (x!51669 lt!250646) (index!22717 lt!250646) (index!22717 lt!250646) k0!1914 a!3118 mask!3119))))

(declare-fun d!82803 () Bool)

(declare-fun lt!250645 () SeekEntryResult!5122)

(assert (=> d!82803 (and (or ((_ is Undefined!5122) lt!250645) (not ((_ is Found!5122) lt!250645)) (and (bvsge (index!22716 lt!250645) #b00000000000000000000000000000000) (bvslt (index!22716 lt!250645) (size!17030 a!3118)))) (or ((_ is Undefined!5122) lt!250645) ((_ is Found!5122) lt!250645) (not ((_ is MissingZero!5122) lt!250645)) (and (bvsge (index!22715 lt!250645) #b00000000000000000000000000000000) (bvslt (index!22715 lt!250645) (size!17030 a!3118)))) (or ((_ is Undefined!5122) lt!250645) ((_ is Found!5122) lt!250645) ((_ is MissingZero!5122) lt!250645) (not ((_ is MissingVacant!5122) lt!250645)) (and (bvsge (index!22718 lt!250645) #b00000000000000000000000000000000) (bvslt (index!22718 lt!250645) (size!17030 a!3118)))) (or ((_ is Undefined!5122) lt!250645) (ite ((_ is Found!5122) lt!250645) (= (select (arr!16666 a!3118) (index!22716 lt!250645)) k0!1914) (ite ((_ is MissingZero!5122) lt!250645) (= (select (arr!16666 a!3118) (index!22715 lt!250645)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5122) lt!250645) (= (select (arr!16666 a!3118) (index!22718 lt!250645)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82803 (= lt!250645 e!317914)))

(declare-fun c!63798 () Bool)

(assert (=> d!82803 (= c!63798 (and ((_ is Intermediate!5122) lt!250646) (undefined!5934 lt!250646)))))

(assert (=> d!82803 (= lt!250646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82803 (validMask!0 mask!3119)))

(assert (=> d!82803 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!250645)))

(declare-fun b!550798 () Bool)

(declare-fun c!63800 () Bool)

(assert (=> b!550798 (= c!63800 (= lt!250644 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550798 (= e!317913 e!317912)))

(declare-fun b!550799 () Bool)

(assert (=> b!550799 (= e!317913 (Found!5122 (index!22717 lt!250646)))))

(assert (= (and d!82803 c!63798) b!550794))

(assert (= (and d!82803 (not c!63798)) b!550795))

(assert (= (and b!550795 c!63799) b!550799))

(assert (= (and b!550795 (not c!63799)) b!550798))

(assert (= (and b!550798 c!63800) b!550796))

(assert (= (and b!550798 (not c!63800)) b!550797))

(declare-fun m!527857 () Bool)

(assert (=> b!550795 m!527857))

(declare-fun m!527859 () Bool)

(assert (=> b!550797 m!527859))

(declare-fun m!527863 () Bool)

(assert (=> d!82803 m!527863))

(declare-fun m!527865 () Bool)

(assert (=> d!82803 m!527865))

(assert (=> d!82803 m!527781))

(declare-fun m!527867 () Bool)

(assert (=> d!82803 m!527867))

(declare-fun m!527869 () Bool)

(assert (=> d!82803 m!527869))

(assert (=> d!82803 m!527865))

(declare-fun m!527871 () Bool)

(assert (=> d!82803 m!527871))

(assert (=> b!550706 d!82803))

(declare-fun d!82807 () Bool)

(declare-fun res!343871 () Bool)

(declare-fun e!317924 () Bool)

(assert (=> d!82807 (=> res!343871 e!317924)))

(assert (=> d!82807 (= res!343871 (= (select (arr!16666 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82807 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!317924)))

(declare-fun b!550813 () Bool)

(declare-fun e!317925 () Bool)

(assert (=> b!550813 (= e!317924 e!317925)))

(declare-fun res!343872 () Bool)

(assert (=> b!550813 (=> (not res!343872) (not e!317925))))

(assert (=> b!550813 (= res!343872 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17030 a!3118)))))

(declare-fun b!550814 () Bool)

(assert (=> b!550814 (= e!317925 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82807 (not res!343871)) b!550813))

(assert (= (and b!550813 res!343872) b!550814))

(assert (=> d!82807 m!527829))

(declare-fun m!527881 () Bool)

(assert (=> b!550814 m!527881))

(assert (=> b!550703 d!82807))

(declare-fun b!550843 () Bool)

(declare-fun e!317945 () Bool)

(declare-fun e!317946 () Bool)

(assert (=> b!550843 (= e!317945 e!317946)))

(declare-fun res!343881 () Bool)

(assert (=> b!550843 (=> (not res!343881) (not e!317946))))

(declare-fun e!317944 () Bool)

(assert (=> b!550843 (= res!343881 (not e!317944))))

(declare-fun res!343879 () Bool)

(assert (=> b!550843 (=> (not res!343879) (not e!317944))))

(assert (=> b!550843 (= res!343879 (validKeyInArray!0 (select (arr!16666 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550844 () Bool)

(declare-fun contains!2840 (List!10799 (_ BitVec 64)) Bool)

(assert (=> b!550844 (= e!317944 (contains!2840 Nil!10796 (select (arr!16666 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82811 () Bool)

(declare-fun res!343880 () Bool)

(assert (=> d!82811 (=> res!343880 e!317945)))

(assert (=> d!82811 (= res!343880 (bvsge #b00000000000000000000000000000000 (size!17030 a!3118)))))

(assert (=> d!82811 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10796) e!317945)))

(declare-fun bm!32267 () Bool)

(declare-fun call!32270 () Bool)

(declare-fun c!63815 () Bool)

(assert (=> bm!32267 (= call!32270 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63815 (Cons!10795 (select (arr!16666 a!3118) #b00000000000000000000000000000000) Nil!10796) Nil!10796)))))

(declare-fun b!550845 () Bool)

(declare-fun e!317943 () Bool)

(assert (=> b!550845 (= e!317946 e!317943)))

(assert (=> b!550845 (= c!63815 (validKeyInArray!0 (select (arr!16666 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550846 () Bool)

(assert (=> b!550846 (= e!317943 call!32270)))

(declare-fun b!550847 () Bool)

(assert (=> b!550847 (= e!317943 call!32270)))

(assert (= (and d!82811 (not res!343880)) b!550843))

(assert (= (and b!550843 res!343879) b!550844))

(assert (= (and b!550843 res!343881) b!550845))

(assert (= (and b!550845 c!63815) b!550847))

(assert (= (and b!550845 (not c!63815)) b!550846))

(assert (= (or b!550847 b!550846) bm!32267))

(assert (=> b!550843 m!527829))

(assert (=> b!550843 m!527829))

(assert (=> b!550843 m!527837))

(assert (=> b!550844 m!527829))

(assert (=> b!550844 m!527829))

(declare-fun m!527895 () Bool)

(assert (=> b!550844 m!527895))

(assert (=> bm!32267 m!527829))

(declare-fun m!527897 () Bool)

(assert (=> bm!32267 m!527897))

(assert (=> b!550845 m!527829))

(assert (=> b!550845 m!527829))

(assert (=> b!550845 m!527837))

(assert (=> b!550697 d!82811))

(declare-fun call!32271 () Bool)

(declare-fun bm!32268 () Bool)

(assert (=> bm!32268 (= call!32271 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550848 () Bool)

(declare-fun e!317948 () Bool)

(assert (=> b!550848 (= e!317948 call!32271)))

(declare-fun b!550849 () Bool)

(declare-fun e!317947 () Bool)

(assert (=> b!550849 (= e!317947 e!317948)))

(declare-fun lt!250667 () (_ BitVec 64))

(assert (=> b!550849 (= lt!250667 (select (arr!16666 a!3118) j!142))))

(declare-fun lt!250668 () Unit!17018)

(assert (=> b!550849 (= lt!250668 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250667 j!142))))

(assert (=> b!550849 (arrayContainsKey!0 a!3118 lt!250667 #b00000000000000000000000000000000)))

(declare-fun lt!250666 () Unit!17018)

(assert (=> b!550849 (= lt!250666 lt!250668)))

(declare-fun res!343882 () Bool)

(assert (=> b!550849 (= res!343882 (= (seekEntryOrOpen!0 (select (arr!16666 a!3118) j!142) a!3118 mask!3119) (Found!5122 j!142)))))

(assert (=> b!550849 (=> (not res!343882) (not e!317948))))

(declare-fun d!82819 () Bool)

(declare-fun res!343883 () Bool)

(declare-fun e!317949 () Bool)

(assert (=> d!82819 (=> res!343883 e!317949)))

(assert (=> d!82819 (= res!343883 (bvsge j!142 (size!17030 a!3118)))))

(assert (=> d!82819 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!317949)))

(declare-fun b!550850 () Bool)

(assert (=> b!550850 (= e!317947 call!32271)))

(declare-fun b!550851 () Bool)

(assert (=> b!550851 (= e!317949 e!317947)))

(declare-fun c!63816 () Bool)

(assert (=> b!550851 (= c!63816 (validKeyInArray!0 (select (arr!16666 a!3118) j!142)))))

(assert (= (and d!82819 (not res!343883)) b!550851))

(assert (= (and b!550851 c!63816) b!550849))

(assert (= (and b!550851 (not c!63816)) b!550850))

(assert (= (and b!550849 res!343882) b!550848))

(assert (= (or b!550848 b!550850) bm!32268))

(declare-fun m!527899 () Bool)

(assert (=> bm!32268 m!527899))

(assert (=> b!550849 m!527759))

(declare-fun m!527901 () Bool)

(assert (=> b!550849 m!527901))

(declare-fun m!527903 () Bool)

(assert (=> b!550849 m!527903))

(assert (=> b!550849 m!527759))

(assert (=> b!550849 m!527789))

(assert (=> b!550851 m!527759))

(assert (=> b!550851 m!527759))

(assert (=> b!550851 m!527761))

(assert (=> b!550702 d!82819))

(declare-fun d!82821 () Bool)

(assert (=> d!82821 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!250677 () Unit!17018)

(declare-fun choose!38 (array!34712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17018)

(assert (=> d!82821 (= lt!250677 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!82821 (validMask!0 mask!3119)))

(assert (=> d!82821 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!250677)))

(declare-fun bs!17163 () Bool)

(assert (= bs!17163 d!82821))

(assert (=> bs!17163 m!527775))

(declare-fun m!527905 () Bool)

(assert (=> bs!17163 m!527905))

(assert (=> bs!17163 m!527781))

(assert (=> b!550702 d!82821))

(declare-fun d!82823 () Bool)

(assert (=> d!82823 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50362 d!82823))

(declare-fun d!82829 () Bool)

(assert (=> d!82829 (= (array_inv!12440 a!3118) (bvsge (size!17030 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50362 d!82829))

(declare-fun d!82831 () Bool)

(assert (=> d!82831 (= (validKeyInArray!0 (select (arr!16666 a!3118) j!142)) (and (not (= (select (arr!16666 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16666 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550699 d!82831))

(declare-fun d!82835 () Bool)

(assert (=> d!82835 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550704 d!82835))

(declare-fun b!550951 () Bool)

(declare-fun e!318013 () SeekEntryResult!5122)

(declare-fun e!318015 () SeekEntryResult!5122)

(assert (=> b!550951 (= e!318013 e!318015)))

(declare-fun lt!250708 () (_ BitVec 64))

(declare-fun c!63848 () Bool)

(assert (=> b!550951 (= c!63848 (or (= lt!250708 (select (arr!16666 a!3118) j!142)) (= (bvadd lt!250708 lt!250708) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!550952 () Bool)

(declare-fun lt!250707 () SeekEntryResult!5122)

(assert (=> b!550952 (and (bvsge (index!22717 lt!250707) #b00000000000000000000000000000000) (bvslt (index!22717 lt!250707) (size!17030 a!3118)))))

(declare-fun res!343926 () Bool)

(assert (=> b!550952 (= res!343926 (= (select (arr!16666 a!3118) (index!22717 lt!250707)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318016 () Bool)

(assert (=> b!550952 (=> res!343926 e!318016)))

(declare-fun b!550953 () Bool)

(assert (=> b!550953 (= e!318015 (Intermediate!5122 false lt!250609 #b00000000000000000000000000000000))))

(declare-fun b!550954 () Bool)

(declare-fun e!318014 () Bool)

(assert (=> b!550954 (= e!318014 (bvsge (x!51669 lt!250707) #b01111111111111111111111111111110))))

(declare-fun b!550955 () Bool)

(assert (=> b!550955 (and (bvsge (index!22717 lt!250707) #b00000000000000000000000000000000) (bvslt (index!22717 lt!250707) (size!17030 a!3118)))))

(declare-fun res!343924 () Bool)

(assert (=> b!550955 (= res!343924 (= (select (arr!16666 a!3118) (index!22717 lt!250707)) (select (arr!16666 a!3118) j!142)))))

(assert (=> b!550955 (=> res!343924 e!318016)))

(declare-fun e!318017 () Bool)

(assert (=> b!550955 (= e!318017 e!318016)))

(declare-fun b!550957 () Bool)

(assert (=> b!550957 (= e!318014 e!318017)))

(declare-fun res!343925 () Bool)

(assert (=> b!550957 (= res!343925 (and ((_ is Intermediate!5122) lt!250707) (not (undefined!5934 lt!250707)) (bvslt (x!51669 lt!250707) #b01111111111111111111111111111110) (bvsge (x!51669 lt!250707) #b00000000000000000000000000000000) (bvsge (x!51669 lt!250707) #b00000000000000000000000000000000)))))

(assert (=> b!550957 (=> (not res!343925) (not e!318017))))

(declare-fun b!550958 () Bool)

(assert (=> b!550958 (= e!318013 (Intermediate!5122 true lt!250609 #b00000000000000000000000000000000))))

(declare-fun b!550959 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550959 (= e!318015 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!250609 #b00000000000000000000000000000000 mask!3119) (select (arr!16666 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!82837 () Bool)

(assert (=> d!82837 e!318014))

(declare-fun c!63849 () Bool)

(assert (=> d!82837 (= c!63849 (and ((_ is Intermediate!5122) lt!250707) (undefined!5934 lt!250707)))))

(assert (=> d!82837 (= lt!250707 e!318013)))

(declare-fun c!63847 () Bool)

(assert (=> d!82837 (= c!63847 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82837 (= lt!250708 (select (arr!16666 a!3118) lt!250609))))

(assert (=> d!82837 (validMask!0 mask!3119)))

(assert (=> d!82837 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250609 (select (arr!16666 a!3118) j!142) a!3118 mask!3119) lt!250707)))

(declare-fun b!550956 () Bool)

(assert (=> b!550956 (and (bvsge (index!22717 lt!250707) #b00000000000000000000000000000000) (bvslt (index!22717 lt!250707) (size!17030 a!3118)))))

(assert (=> b!550956 (= e!318016 (= (select (arr!16666 a!3118) (index!22717 lt!250707)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82837 c!63847) b!550958))

(assert (= (and d!82837 (not c!63847)) b!550951))

(assert (= (and b!550951 c!63848) b!550953))

(assert (= (and b!550951 (not c!63848)) b!550959))

(assert (= (and d!82837 c!63849) b!550954))

(assert (= (and d!82837 (not c!63849)) b!550957))

(assert (= (and b!550957 res!343925) b!550955))

(assert (= (and b!550955 (not res!343924)) b!550952))

(assert (= (and b!550952 (not res!343926)) b!550956))

(declare-fun m!527945 () Bool)

(assert (=> b!550956 m!527945))

(assert (=> b!550955 m!527945))

(assert (=> b!550952 m!527945))

(declare-fun m!527947 () Bool)

(assert (=> b!550959 m!527947))

(assert (=> b!550959 m!527947))

(assert (=> b!550959 m!527759))

(declare-fun m!527949 () Bool)

(assert (=> b!550959 m!527949))

(declare-fun m!527951 () Bool)

(assert (=> d!82837 m!527951))

(assert (=> d!82837 m!527781))

(assert (=> b!550698 d!82837))

(declare-fun b!550960 () Bool)

(declare-fun e!318018 () SeekEntryResult!5122)

(declare-fun e!318020 () SeekEntryResult!5122)

(assert (=> b!550960 (= e!318018 e!318020)))

(declare-fun lt!250710 () (_ BitVec 64))

(declare-fun c!63851 () Bool)

(assert (=> b!550960 (= c!63851 (or (= lt!250710 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!250710 lt!250710) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!250709 () SeekEntryResult!5122)

(declare-fun b!550961 () Bool)

(assert (=> b!550961 (and (bvsge (index!22717 lt!250709) #b00000000000000000000000000000000) (bvslt (index!22717 lt!250709) (size!17030 (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118)))))))

(declare-fun res!343929 () Bool)

(assert (=> b!550961 (= res!343929 (= (select (arr!16666 (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118))) (index!22717 lt!250709)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318021 () Bool)

(assert (=> b!550961 (=> res!343929 e!318021)))

(declare-fun b!550962 () Bool)

(assert (=> b!550962 (= e!318020 (Intermediate!5122 false (toIndex!0 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550963 () Bool)

(declare-fun e!318019 () Bool)

(assert (=> b!550963 (= e!318019 (bvsge (x!51669 lt!250709) #b01111111111111111111111111111110))))

(declare-fun b!550964 () Bool)

(assert (=> b!550964 (and (bvsge (index!22717 lt!250709) #b00000000000000000000000000000000) (bvslt (index!22717 lt!250709) (size!17030 (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118)))))))

(declare-fun res!343927 () Bool)

(assert (=> b!550964 (= res!343927 (= (select (arr!16666 (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118))) (index!22717 lt!250709)) (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!550964 (=> res!343927 e!318021)))

(declare-fun e!318022 () Bool)

(assert (=> b!550964 (= e!318022 e!318021)))

(declare-fun b!550966 () Bool)

(assert (=> b!550966 (= e!318019 e!318022)))

(declare-fun res!343928 () Bool)

(assert (=> b!550966 (= res!343928 (and ((_ is Intermediate!5122) lt!250709) (not (undefined!5934 lt!250709)) (bvslt (x!51669 lt!250709) #b01111111111111111111111111111110) (bvsge (x!51669 lt!250709) #b00000000000000000000000000000000) (bvsge (x!51669 lt!250709) #b00000000000000000000000000000000)))))

(assert (=> b!550966 (=> (not res!343928) (not e!318022))))

(declare-fun b!550967 () Bool)

(assert (=> b!550967 (= e!318018 (Intermediate!5122 true (toIndex!0 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550968 () Bool)

(assert (=> b!550968 (= e!318020 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118)) mask!3119))))

(declare-fun d!82851 () Bool)

(assert (=> d!82851 e!318019))

(declare-fun c!63852 () Bool)

(assert (=> d!82851 (= c!63852 (and ((_ is Intermediate!5122) lt!250709) (undefined!5934 lt!250709)))))

(assert (=> d!82851 (= lt!250709 e!318018)))

(declare-fun c!63850 () Bool)

(assert (=> d!82851 (= c!63850 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82851 (= lt!250710 (select (arr!16666 (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118))) (toIndex!0 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) mask!3119)))))

(assert (=> d!82851 (validMask!0 mask!3119)))

(assert (=> d!82851 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118)) mask!3119) lt!250709)))

(declare-fun b!550965 () Bool)

(assert (=> b!550965 (and (bvsge (index!22717 lt!250709) #b00000000000000000000000000000000) (bvslt (index!22717 lt!250709) (size!17030 (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118)))))))

(assert (=> b!550965 (= e!318021 (= (select (arr!16666 (array!34713 (store (arr!16666 a!3118) i!1132 k0!1914) (size!17030 a!3118))) (index!22717 lt!250709)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82851 c!63850) b!550967))

(assert (= (and d!82851 (not c!63850)) b!550960))

(assert (= (and b!550960 c!63851) b!550962))

(assert (= (and b!550960 (not c!63851)) b!550968))

(assert (= (and d!82851 c!63852) b!550963))

(assert (= (and d!82851 (not c!63852)) b!550966))

(assert (= (and b!550966 res!343928) b!550964))

(assert (= (and b!550964 (not res!343927)) b!550961))

(assert (= (and b!550961 (not res!343929)) b!550965))

(declare-fun m!527953 () Bool)

(assert (=> b!550965 m!527953))

(assert (=> b!550964 m!527953))

(assert (=> b!550961 m!527953))

(assert (=> b!550968 m!527767))

(declare-fun m!527955 () Bool)

(assert (=> b!550968 m!527955))

(assert (=> b!550968 m!527955))

(assert (=> b!550968 m!527765))

(declare-fun m!527957 () Bool)

(assert (=> b!550968 m!527957))

(assert (=> d!82851 m!527767))

(declare-fun m!527959 () Bool)

(assert (=> d!82851 m!527959))

(assert (=> d!82851 m!527781))

(assert (=> b!550698 d!82851))

(declare-fun d!82853 () Bool)

(declare-fun lt!250728 () (_ BitVec 32))

(declare-fun lt!250727 () (_ BitVec 32))

(assert (=> d!82853 (= lt!250728 (bvmul (bvxor lt!250727 (bvlshr lt!250727 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82853 (= lt!250727 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82853 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343930 (let ((h!11775 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51676 (bvmul (bvxor h!11775 (bvlshr h!11775 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51676 (bvlshr x!51676 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343930 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343930 #b00000000000000000000000000000000))))))

(assert (=> d!82853 (= (toIndex!0 (select (store (arr!16666 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!250728 (bvlshr lt!250728 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550698 d!82853))

(declare-fun d!82863 () Bool)

(declare-fun lt!250730 () (_ BitVec 32))

(declare-fun lt!250729 () (_ BitVec 32))

(assert (=> d!82863 (= lt!250730 (bvmul (bvxor lt!250729 (bvlshr lt!250729 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82863 (= lt!250729 ((_ extract 31 0) (bvand (bvxor (select (arr!16666 a!3118) j!142) (bvlshr (select (arr!16666 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82863 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343930 (let ((h!11775 ((_ extract 31 0) (bvand (bvxor (select (arr!16666 a!3118) j!142) (bvlshr (select (arr!16666 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51676 (bvmul (bvxor h!11775 (bvlshr h!11775 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51676 (bvlshr x!51676 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343930 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343930 #b00000000000000000000000000000000))))))

(assert (=> d!82863 (= (toIndex!0 (select (arr!16666 a!3118) j!142) mask!3119) (bvand (bvxor lt!250730 (bvlshr lt!250730 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550698 d!82863))

(check-sat (not b!550814) (not b!550797) (not d!82797) (not b!550851) (not b!550968) (not b!550844) (not b!550845) (not b!550748) (not bm!32268) (not d!82837) (not b!550782) (not b!550843) (not b!550849) (not bm!32264) (not bm!32267) (not b!550746) (not d!82851) (not b!550959) (not d!82821) (not d!82803))
(check-sat)
