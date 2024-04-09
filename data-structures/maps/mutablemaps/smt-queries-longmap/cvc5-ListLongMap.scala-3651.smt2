; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50360 () Bool)

(assert start!50360)

(declare-fun b!550667 () Bool)

(declare-fun e!317844 () Bool)

(declare-fun e!317846 () Bool)

(assert (=> b!550667 (= e!317844 e!317846)))

(declare-fun res!343783 () Bool)

(assert (=> b!550667 (=> (not res!343783) (not e!317846))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!250600 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34710 0))(
  ( (array!34711 (arr!16665 (Array (_ BitVec 32) (_ BitVec 64))) (size!17029 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34710)

(declare-datatypes ((SeekEntryResult!5121 0))(
  ( (MissingZero!5121 (index!22711 (_ BitVec 32))) (Found!5121 (index!22712 (_ BitVec 32))) (Intermediate!5121 (undefined!5933 Bool) (index!22713 (_ BitVec 32)) (x!51668 (_ BitVec 32))) (Undefined!5121) (MissingVacant!5121 (index!22714 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34710 (_ BitVec 32)) SeekEntryResult!5121)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550667 (= res!343783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250600 (select (arr!16665 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118)) mask!3119)))))

(assert (=> b!550667 (= lt!250600 (toIndex!0 (select (arr!16665 a!3118) j!142) mask!3119))))

(declare-fun b!550668 () Bool)

(declare-fun res!343786 () Bool)

(declare-fun e!317848 () Bool)

(assert (=> b!550668 (=> (not res!343786) (not e!317848))))

(assert (=> b!550668 (= res!343786 (and (= (size!17029 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17029 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17029 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550669 () Bool)

(declare-fun res!343780 () Bool)

(assert (=> b!550669 (=> (not res!343780) (not e!317848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550669 (= res!343780 (validKeyInArray!0 (select (arr!16665 a!3118) j!142)))))

(declare-fun b!550670 () Bool)

(assert (=> b!550670 (= e!317848 e!317844)))

(declare-fun res!343778 () Bool)

(assert (=> b!550670 (=> (not res!343778) (not e!317844))))

(declare-fun lt!250601 () SeekEntryResult!5121)

(assert (=> b!550670 (= res!343778 (or (= lt!250601 (MissingZero!5121 i!1132)) (= lt!250601 (MissingVacant!5121 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34710 (_ BitVec 32)) SeekEntryResult!5121)

(assert (=> b!550670 (= lt!250601 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550671 () Bool)

(declare-fun res!343781 () Bool)

(assert (=> b!550671 (=> (not res!343781) (not e!317844))))

(declare-datatypes ((List!10798 0))(
  ( (Nil!10795) (Cons!10794 (h!11770 (_ BitVec 64)) (t!17034 List!10798)) )
))
(declare-fun arrayNoDuplicates!0 (array!34710 (_ BitVec 32) List!10798) Bool)

(assert (=> b!550671 (= res!343781 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10795))))

(declare-fun b!550672 () Bool)

(declare-fun res!343785 () Bool)

(assert (=> b!550672 (=> (not res!343785) (not e!317844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34710 (_ BitVec 32)) Bool)

(assert (=> b!550672 (= res!343785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550674 () Bool)

(declare-fun res!343779 () Bool)

(assert (=> b!550674 (=> (not res!343779) (not e!317848))))

(assert (=> b!550674 (= res!343779 (validKeyInArray!0 k!1914))))

(declare-fun e!317847 () Bool)

(declare-fun b!550675 () Bool)

(assert (=> b!550675 (= e!317847 (= (seekEntryOrOpen!0 (select (arr!16665 a!3118) j!142) a!3118 mask!3119) (Found!5121 j!142)))))

(declare-fun b!550676 () Bool)

(assert (=> b!550676 (= e!317846 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge lt!250600 #b00000000000000000000000000000000) (bvslt lt!250600 (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(assert (=> b!550676 e!317847))

(declare-fun res!343782 () Bool)

(assert (=> b!550676 (=> (not res!343782) (not e!317847))))

(assert (=> b!550676 (= res!343782 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17016 0))(
  ( (Unit!17017) )
))
(declare-fun lt!250599 () Unit!17016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34710 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17016)

(assert (=> b!550676 (= lt!250599 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!343787 () Bool)

(assert (=> start!50360 (=> (not res!343787) (not e!317848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50360 (= res!343787 (validMask!0 mask!3119))))

(assert (=> start!50360 e!317848))

(assert (=> start!50360 true))

(declare-fun array_inv!12439 (array!34710) Bool)

(assert (=> start!50360 (array_inv!12439 a!3118)))

(declare-fun b!550673 () Bool)

(declare-fun res!343784 () Bool)

(assert (=> b!550673 (=> (not res!343784) (not e!317848))))

(declare-fun arrayContainsKey!0 (array!34710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550673 (= res!343784 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50360 res!343787) b!550668))

(assert (= (and b!550668 res!343786) b!550669))

(assert (= (and b!550669 res!343780) b!550674))

(assert (= (and b!550674 res!343779) b!550673))

(assert (= (and b!550673 res!343784) b!550670))

(assert (= (and b!550670 res!343778) b!550672))

(assert (= (and b!550672 res!343785) b!550671))

(assert (= (and b!550671 res!343781) b!550667))

(assert (= (and b!550667 res!343783) b!550676))

(assert (= (and b!550676 res!343782) b!550675))

(declare-fun m!527719 () Bool)

(assert (=> b!550675 m!527719))

(assert (=> b!550675 m!527719))

(declare-fun m!527721 () Bool)

(assert (=> b!550675 m!527721))

(declare-fun m!527723 () Bool)

(assert (=> b!550676 m!527723))

(declare-fun m!527725 () Bool)

(assert (=> b!550676 m!527725))

(declare-fun m!527727 () Bool)

(assert (=> b!550674 m!527727))

(declare-fun m!527729 () Bool)

(assert (=> b!550673 m!527729))

(assert (=> b!550669 m!527719))

(assert (=> b!550669 m!527719))

(declare-fun m!527731 () Bool)

(assert (=> b!550669 m!527731))

(declare-fun m!527733 () Bool)

(assert (=> b!550670 m!527733))

(assert (=> b!550667 m!527719))

(declare-fun m!527735 () Bool)

(assert (=> b!550667 m!527735))

(assert (=> b!550667 m!527719))

(declare-fun m!527737 () Bool)

(assert (=> b!550667 m!527737))

(declare-fun m!527739 () Bool)

(assert (=> b!550667 m!527739))

(assert (=> b!550667 m!527737))

(declare-fun m!527741 () Bool)

(assert (=> b!550667 m!527741))

(assert (=> b!550667 m!527719))

(declare-fun m!527743 () Bool)

(assert (=> b!550667 m!527743))

(declare-fun m!527745 () Bool)

(assert (=> b!550667 m!527745))

(assert (=> b!550667 m!527737))

(assert (=> b!550667 m!527739))

(declare-fun m!527747 () Bool)

(assert (=> b!550671 m!527747))

(declare-fun m!527749 () Bool)

(assert (=> b!550672 m!527749))

(declare-fun m!527751 () Bool)

(assert (=> start!50360 m!527751))

(declare-fun m!527753 () Bool)

(assert (=> start!50360 m!527753))

(push 1)

(assert (not b!550670))

(assert (not b!550673))

(assert (not b!550672))

(assert (not b!550667))

(assert (not b!550669))

(assert (not start!50360))

(assert (not b!550671))

(assert (not b!550676))

(assert (not b!550674))

(assert (not b!550675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!550785 () Bool)

(declare-fun e!317909 () SeekEntryResult!5121)

(assert (=> b!550785 (= e!317909 (Intermediate!5121 true lt!250600 #b00000000000000000000000000000000))))

(declare-fun b!550786 () Bool)

(declare-fun e!317911 () Bool)

(declare-fun lt!250643 () SeekEntryResult!5121)

(assert (=> b!550786 (= e!317911 (bvsge (x!51668 lt!250643) #b01111111111111111111111111111110))))

(declare-fun b!550787 () Bool)

(declare-fun e!317907 () SeekEntryResult!5121)

(assert (=> b!550787 (= e!317907 (Intermediate!5121 false lt!250600 #b00000000000000000000000000000000))))

(declare-fun b!550788 () Bool)

(assert (=> b!550788 (and (bvsge (index!22713 lt!250643) #b00000000000000000000000000000000) (bvslt (index!22713 lt!250643) (size!17029 a!3118)))))

(declare-fun res!343861 () Bool)

(assert (=> b!550788 (= res!343861 (= (select (arr!16665 a!3118) (index!22713 lt!250643)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!317910 () Bool)

(assert (=> b!550788 (=> res!343861 e!317910)))

(declare-fun b!550789 () Bool)

(assert (=> b!550789 (and (bvsge (index!22713 lt!250643) #b00000000000000000000000000000000) (bvslt (index!22713 lt!250643) (size!17029 a!3118)))))

(assert (=> b!550789 (= e!317910 (= (select (arr!16665 a!3118) (index!22713 lt!250643)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550790 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550790 (= e!317907 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!250600 #b00000000000000000000000000000000 mask!3119) (select (arr!16665 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!82799 () Bool)

(assert (=> d!82799 e!317911))

(declare-fun c!63795 () Bool)

(assert (=> d!82799 (= c!63795 (and (is-Intermediate!5121 lt!250643) (undefined!5933 lt!250643)))))

(assert (=> d!82799 (= lt!250643 e!317909)))

(declare-fun c!63796 () Bool)

(assert (=> d!82799 (= c!63796 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250642 () (_ BitVec 64))

(assert (=> d!82799 (= lt!250642 (select (arr!16665 a!3118) lt!250600))))

(assert (=> d!82799 (validMask!0 mask!3119)))

(assert (=> d!82799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250600 (select (arr!16665 a!3118) j!142) a!3118 mask!3119) lt!250643)))

(declare-fun b!550791 () Bool)

(declare-fun e!317908 () Bool)

(assert (=> b!550791 (= e!317911 e!317908)))

(declare-fun res!343860 () Bool)

(assert (=> b!550791 (= res!343860 (and (is-Intermediate!5121 lt!250643) (not (undefined!5933 lt!250643)) (bvslt (x!51668 lt!250643) #b01111111111111111111111111111110) (bvsge (x!51668 lt!250643) #b00000000000000000000000000000000) (bvsge (x!51668 lt!250643) #b00000000000000000000000000000000)))))

(assert (=> b!550791 (=> (not res!343860) (not e!317908))))

(declare-fun b!550792 () Bool)

(assert (=> b!550792 (and (bvsge (index!22713 lt!250643) #b00000000000000000000000000000000) (bvslt (index!22713 lt!250643) (size!17029 a!3118)))))

(declare-fun res!343862 () Bool)

(assert (=> b!550792 (= res!343862 (= (select (arr!16665 a!3118) (index!22713 lt!250643)) (select (arr!16665 a!3118) j!142)))))

(assert (=> b!550792 (=> res!343862 e!317910)))

(assert (=> b!550792 (= e!317908 e!317910)))

(declare-fun b!550793 () Bool)

(assert (=> b!550793 (= e!317909 e!317907)))

(declare-fun c!63797 () Bool)

(assert (=> b!550793 (= c!63797 (or (= lt!250642 (select (arr!16665 a!3118) j!142)) (= (bvadd lt!250642 lt!250642) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!82799 c!63796) b!550785))

(assert (= (and d!82799 (not c!63796)) b!550793))

(assert (= (and b!550793 c!63797) b!550787))

(assert (= (and b!550793 (not c!63797)) b!550790))

(assert (= (and d!82799 c!63795) b!550786))

(assert (= (and d!82799 (not c!63795)) b!550791))

(assert (= (and b!550791 res!343860) b!550792))

(assert (= (and b!550792 (not res!343862)) b!550788))

(assert (= (and b!550788 (not res!343861)) b!550789))

(declare-fun m!527851 () Bool)

(assert (=> b!550790 m!527851))

(assert (=> b!550790 m!527851))

(assert (=> b!550790 m!527719))

(declare-fun m!527853 () Bool)

(assert (=> b!550790 m!527853))

(declare-fun m!527856 () Bool)

(assert (=> b!550789 m!527856))

(assert (=> b!550792 m!527856))

(assert (=> b!550788 m!527856))

(declare-fun m!527861 () Bool)

(assert (=> d!82799 m!527861))

(assert (=> d!82799 m!527751))

(assert (=> b!550667 d!82799))

(declare-fun e!317917 () SeekEntryResult!5121)

(declare-fun b!550800 () Bool)

(assert (=> b!550800 (= e!317917 (Intermediate!5121 true (toIndex!0 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550801 () Bool)

(declare-fun e!317919 () Bool)

(declare-fun lt!250648 () SeekEntryResult!5121)

(assert (=> b!550801 (= e!317919 (bvsge (x!51668 lt!250648) #b01111111111111111111111111111110))))

(declare-fun b!550802 () Bool)

(declare-fun e!317915 () SeekEntryResult!5121)

(assert (=> b!550802 (= e!317915 (Intermediate!5121 false (toIndex!0 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550803 () Bool)

(assert (=> b!550803 (and (bvsge (index!22713 lt!250648) #b00000000000000000000000000000000) (bvslt (index!22713 lt!250648) (size!17029 (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118)))))))

(declare-fun res!343864 () Bool)

(assert (=> b!550803 (= res!343864 (= (select (arr!16665 (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118))) (index!22713 lt!250648)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!317918 () Bool)

(assert (=> b!550803 (=> res!343864 e!317918)))

(declare-fun b!550804 () Bool)

(assert (=> b!550804 (and (bvsge (index!22713 lt!250648) #b00000000000000000000000000000000) (bvslt (index!22713 lt!250648) (size!17029 (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118)))))))

(assert (=> b!550804 (= e!317918 (= (select (arr!16665 (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118))) (index!22713 lt!250648)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550805 () Bool)

(assert (=> b!550805 (= e!317915 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118)) mask!3119))))

(declare-fun d!82805 () Bool)

(assert (=> d!82805 e!317919))

(declare-fun c!63801 () Bool)

(assert (=> d!82805 (= c!63801 (and (is-Intermediate!5121 lt!250648) (undefined!5933 lt!250648)))))

(assert (=> d!82805 (= lt!250648 e!317917)))

(declare-fun c!63802 () Bool)

(assert (=> d!82805 (= c!63802 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250647 () (_ BitVec 64))

(assert (=> d!82805 (= lt!250647 (select (arr!16665 (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118))) (toIndex!0 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) mask!3119)))))

(assert (=> d!82805 (validMask!0 mask!3119)))

(assert (=> d!82805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118)) mask!3119) lt!250648)))

(declare-fun b!550806 () Bool)

(declare-fun e!317916 () Bool)

(assert (=> b!550806 (= e!317919 e!317916)))

(declare-fun res!343863 () Bool)

(assert (=> b!550806 (= res!343863 (and (is-Intermediate!5121 lt!250648) (not (undefined!5933 lt!250648)) (bvslt (x!51668 lt!250648) #b01111111111111111111111111111110) (bvsge (x!51668 lt!250648) #b00000000000000000000000000000000) (bvsge (x!51668 lt!250648) #b00000000000000000000000000000000)))))

(assert (=> b!550806 (=> (not res!343863) (not e!317916))))

(declare-fun b!550807 () Bool)

(assert (=> b!550807 (and (bvsge (index!22713 lt!250648) #b00000000000000000000000000000000) (bvslt (index!22713 lt!250648) (size!17029 (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118)))))))

(declare-fun res!343865 () Bool)

(assert (=> b!550807 (= res!343865 (= (select (arr!16665 (array!34711 (store (arr!16665 a!3118) i!1132 k!1914) (size!17029 a!3118))) (index!22713 lt!250648)) (select (store (arr!16665 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!550807 (=> res!343865 e!317918)))

(assert (=> b!550807 (= e!317916 e!317918)))

(declare-fun b!550808 () Bool)

(assert (=> b!550808 (= e!317917 e!317915)))

(declare-fun c!63803 () Bool)

(assert (=> b!550808 (= c!63803 (or (= lt!250647 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!250647 lt!250647) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!82805 c!63802) b!550800))

(assert (= (and d!82805 (not c!63802)) b!550808))

(assert (= (and b!550808 c!63803) b!550802))

(assert (= (and b!550808 (not c!63803)) b!550805))

(assert (= (and d!82805 c!63801) b!550801))

(assert (= (and d!82805 (not c!63801)) b!550806))

(assert (= (and b!550806 res!343863) b!550807))

(assert (= (and b!550807 (not res!343865)) b!550803))

(assert (= (and b!550803 (not res!343864)) b!550804))

(assert (=> b!550805 m!527739))

(declare-fun m!527873 () Bool)

(assert (=> b!550805 m!527873))

(assert (=> b!550805 m!527873))

(assert (=> b!550805 m!527737))

(declare-fun m!527875 () Bool)

(assert (=> b!550805 m!527875))

(declare-fun m!527877 () Bool)

(assert (=> b!550804 m!527877))

(assert (=> b!550807 m!527877))

(assert (=> b!550803 m!527877))

(assert (=> d!82805 m!527739))

(declare-fun m!527879 () Bool)

(assert (=> d!82805 m!527879))

(assert (=> d!82805 m!527751))

(assert (=> b!550667 d!82805))

(declare-fun d!82809 () Bool)

(declare-fun lt!250660 () (_ BitVec 32))

(declare-fun lt!250659 () (_ BitVec 32))

(assert (=> d!82809 (= lt!250660 (bvmul (bvxor lt!250659 (bvlshr lt!250659 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82809 (= lt!250659 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82809 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343870 (let ((h!11773 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51672 (bvmul (bvxor h!11773 (bvlshr h!11773 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51672 (bvlshr x!51672 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343870 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343870 #b00000000000000000000000000000000))))))

(assert (=> d!82809 (= (toIndex!0 (select (store (arr!16665 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!250660 (bvlshr lt!250660 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550667 d!82809))

(declare-fun d!82813 () Bool)

(declare-fun lt!250662 () (_ BitVec 32))

(declare-fun lt!250661 () (_ BitVec 32))

(assert (=> d!82813 (= lt!250662 (bvmul (bvxor lt!250661 (bvlshr lt!250661 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82813 (= lt!250661 ((_ extract 31 0) (bvand (bvxor (select (arr!16665 a!3118) j!142) (bvlshr (select (arr!16665 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82813 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343870 (let ((h!11773 ((_ extract 31 0) (bvand (bvxor (select (arr!16665 a!3118) j!142) (bvlshr (select (arr!16665 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51672 (bvmul (bvxor h!11773 (bvlshr h!11773 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51672 (bvlshr x!51672 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343870 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343870 #b00000000000000000000000000000000))))))

(assert (=> d!82813 (= (toIndex!0 (select (arr!16665 a!3118) j!142) mask!3119) (bvand (bvxor lt!250662 (bvlshr lt!250662 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550667 d!82813))

(declare-fun b!550875 () Bool)

(declare-fun e!317968 () Bool)

(declare-fun call!32277 () Bool)

(assert (=> b!550875 (= e!317968 call!32277)))

(declare-fun b!550876 () Bool)

(declare-fun e!317969 () Bool)

(assert (=> b!550876 (= e!317968 e!317969)))

(declare-fun lt!250678 () (_ BitVec 64))

(assert (=> b!550876 (= lt!250678 (select (arr!16665 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250680 () Unit!17016)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34710 (_ BitVec 64) (_ BitVec 32)) Unit!17016)

(assert (=> b!550876 (= lt!250680 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250678 #b00000000000000000000000000000000))))

(assert (=> b!550876 (arrayContainsKey!0 a!3118 lt!250678 #b00000000000000000000000000000000)))

(declare-fun lt!250679 () Unit!17016)

(assert (=> b!550876 (= lt!250679 lt!250680)))

(declare-fun res!343897 () Bool)

(assert (=> b!550876 (= res!343897 (= (seekEntryOrOpen!0 (select (arr!16665 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5121 #b00000000000000000000000000000000)))))

(assert (=> b!550876 (=> (not res!343897) (not e!317969))))

(declare-fun bm!32274 () Bool)

(assert (=> bm!32274 (= call!32277 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550877 () Bool)

(assert (=> b!550877 (= e!317969 call!32277)))

(declare-fun d!82815 () Bool)

(declare-fun res!343898 () Bool)

(declare-fun e!317970 () Bool)

(assert (=> d!82815 (=> res!343898 e!317970)))

(assert (=> d!82815 (= res!343898 (bvsge #b00000000000000000000000000000000 (size!17029 a!3118)))))

(assert (=> d!82815 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!317970)))

(declare-fun b!550878 () Bool)

(assert (=> b!550878 (= e!317970 e!317968)))

(declare-fun c!63822 () Bool)

(assert (=> b!550878 (= c!63822 (validKeyInArray!0 (select (arr!16665 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82815 (not res!343898)) b!550878))

(assert (= (and b!550878 c!63822) b!550876))

(assert (= (and b!550878 (not c!63822)) b!550875))

(assert (= (and b!550876 res!343897) b!550877))

(assert (= (or b!550877 b!550875) bm!32274))

(declare-fun m!527915 () Bool)

(assert (=> b!550876 m!527915))

(declare-fun m!527917 () Bool)

(assert (=> b!550876 m!527917))

(declare-fun m!527919 () Bool)

(assert (=> b!550876 m!527919))

(assert (=> b!550876 m!527915))

(declare-fun m!527921 () Bool)

(assert (=> b!550876 m!527921))

(declare-fun m!527923 () Bool)

(assert (=> bm!32274 m!527923))

(assert (=> b!550878 m!527915))

(assert (=> b!550878 m!527915))

(declare-fun m!527925 () Bool)

(assert (=> b!550878 m!527925))

(assert (=> b!550672 d!82815))

(declare-fun d!82827 () Bool)

(assert (=> d!82827 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50360 d!82827))

(declare-fun d!82833 () Bool)

(assert (=> d!82833 (= (array_inv!12439 a!3118) (bvsge (size!17029 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50360 d!82833))

(declare-fun d!82839 () Bool)

(declare-fun res!343903 () Bool)

(declare-fun e!317975 () Bool)

(assert (=> d!82839 (=> res!343903 e!317975)))

(assert (=> d!82839 (= res!343903 (= (select (arr!16665 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82839 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!317975)))

(declare-fun b!550883 () Bool)

(declare-fun e!317976 () Bool)

(assert (=> b!550883 (= e!317975 e!317976)))

(declare-fun res!343904 () Bool)

(assert (=> b!550883 (=> (not res!343904) (not e!317976))))

(assert (=> b!550883 (= res!343904 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17029 a!3118)))))

(declare-fun b!550884 () Bool)

(assert (=> b!550884 (= e!317976 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82839 (not res!343903)) b!550883))

(assert (= (and b!550883 res!343904) b!550884))

(assert (=> d!82839 m!527915))

(declare-fun m!527927 () Bool)

(assert (=> b!550884 m!527927))

(assert (=> b!550673 d!82839))

(declare-fun d!82841 () Bool)

(declare-fun lt!250711 () SeekEntryResult!5121)

(assert (=> d!82841 (and (or (is-Undefined!5121 lt!250711) (not (is-Found!5121 lt!250711)) (and (bvsge (index!22712 lt!250711) #b00000000000000000000000000000000) (bvslt (index!22712 lt!250711) (size!17029 a!3118)))) (or (is-Undefined!5121 lt!250711) (is-Found!5121 lt!250711) (not (is-MissingZero!5121 lt!250711)) (and (bvsge (index!22711 lt!250711) #b00000000000000000000000000000000) (bvslt (index!22711 lt!250711) (size!17029 a!3118)))) (or (is-Undefined!5121 lt!250711) (is-Found!5121 lt!250711) (is-MissingZero!5121 lt!250711) (not (is-MissingVacant!5121 lt!250711)) (and (bvsge (index!22714 lt!250711) #b00000000000000000000000000000000) (bvslt (index!22714 lt!250711) (size!17029 a!3118)))) (or (is-Undefined!5121 lt!250711) (ite (is-Found!5121 lt!250711) (= (select (arr!16665 a!3118) (index!22712 lt!250711)) (select (arr!16665 a!3118) j!142)) (ite (is-MissingZero!5121 lt!250711) (= (select (arr!16665 a!3118) (index!22711 lt!250711)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5121 lt!250711) (= (select (arr!16665 a!3118) (index!22714 lt!250711)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!318023 () SeekEntryResult!5121)

(assert (=> d!82841 (= lt!250711 e!318023)))

(declare-fun c!63855 () Bool)

(declare-fun lt!250713 () SeekEntryResult!5121)

(assert (=> d!82841 (= c!63855 (and (is-Intermediate!5121 lt!250713) (undefined!5933 lt!250713)))))

(assert (=> d!82841 (= lt!250713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16665 a!3118) j!142) mask!3119) (select (arr!16665 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82841 (validMask!0 mask!3119)))

(assert (=> d!82841 (= (seekEntryOrOpen!0 (select (arr!16665 a!3118) j!142) a!3118 mask!3119) lt!250711)))

(declare-fun b!550969 () Bool)

(assert (=> b!550969 (= e!318023 Undefined!5121)))

(declare-fun b!550970 () Bool)

(declare-fun e!318025 () SeekEntryResult!5121)

(assert (=> b!550970 (= e!318023 e!318025)))

(declare-fun lt!250712 () (_ BitVec 64))

(assert (=> b!550970 (= lt!250712 (select (arr!16665 a!3118) (index!22713 lt!250713)))))

(declare-fun c!63853 () Bool)

(assert (=> b!550970 (= c!63853 (= lt!250712 (select (arr!16665 a!3118) j!142)))))

(declare-fun b!550971 () Bool)

(declare-fun e!318024 () SeekEntryResult!5121)

(assert (=> b!550971 (= e!318024 (MissingZero!5121 (index!22713 lt!250713)))))

(declare-fun b!550972 () Bool)

(declare-fun c!63854 () Bool)

(assert (=> b!550972 (= c!63854 (= lt!250712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550972 (= e!318025 e!318024)))

(declare-fun b!550973 () Bool)

(assert (=> b!550973 (= e!318025 (Found!5121 (index!22713 lt!250713)))))

(declare-fun b!550974 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34710 (_ BitVec 32)) SeekEntryResult!5121)

(assert (=> b!550974 (= e!318024 (seekKeyOrZeroReturnVacant!0 (x!51668 lt!250713) (index!22713 lt!250713) (index!22713 lt!250713) (select (arr!16665 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!82841 c!63855) b!550969))

(assert (= (and d!82841 (not c!63855)) b!550970))

(assert (= (and b!550970 c!63853) b!550973))

(assert (= (and b!550970 (not c!63853)) b!550972))

(assert (= (and b!550972 c!63854) b!550971))

(assert (= (and b!550972 (not c!63854)) b!550974))

(assert (=> d!82841 m!527735))

(assert (=> d!82841 m!527719))

(declare-fun m!527961 () Bool)

(assert (=> d!82841 m!527961))

(declare-fun m!527963 () Bool)

(assert (=> d!82841 m!527963))

(declare-fun m!527965 () Bool)

(assert (=> d!82841 m!527965))

(assert (=> d!82841 m!527751))

(assert (=> d!82841 m!527719))

(assert (=> d!82841 m!527735))

(declare-fun m!527967 () Bool)

(assert (=> d!82841 m!527967))

(declare-fun m!527969 () Bool)

(assert (=> b!550970 m!527969))

(assert (=> b!550974 m!527719))

(declare-fun m!527971 () Bool)

(assert (=> b!550974 m!527971))

(assert (=> b!550675 d!82841))

(declare-fun d!82855 () Bool)

(assert (=> d!82855 (= (validKeyInArray!0 (select (arr!16665 a!3118) j!142)) (and (not (= (select (arr!16665 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16665 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550669 d!82855))

(declare-fun d!82857 () Bool)

(assert (=> d!82857 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550674 d!82857))

(declare-fun b!551001 () Bool)

(declare-fun e!318047 () Bool)

(declare-fun e!318049 () Bool)

(assert (=> b!551001 (= e!318047 e!318049)))

(declare-fun res!343946 () Bool)

(assert (=> b!551001 (=> (not res!343946) (not e!318049))))

(declare-fun e!318048 () Bool)

(assert (=> b!551001 (= res!343946 (not e!318048))))

(declare-fun res!343945 () Bool)

(assert (=> b!551001 (=> (not res!343945) (not e!318048))))

(assert (=> b!551001 (= res!343945 (validKeyInArray!0 (select (arr!16665 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!551002 () Bool)

(declare-fun e!318046 () Bool)

(declare-fun call!32284 () Bool)

(assert (=> b!551002 (= e!318046 call!32284)))

(declare-fun b!551003 () Bool)

(assert (=> b!551003 (= e!318046 call!32284)))

(declare-fun d!82859 () Bool)

(declare-fun res!343947 () Bool)

(assert (=> d!82859 (=> res!343947 e!318047)))

(assert (=> d!82859 (= res!343947 (bvsge #b00000000000000000000000000000000 (size!17029 a!3118)))))

(assert (=> d!82859 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10795) e!318047)))

(declare-fun b!551004 () Bool)

(assert (=> b!551004 (= e!318049 e!318046)))

(declare-fun c!63862 () Bool)

(assert (=> b!551004 (= c!63862 (validKeyInArray!0 (select (arr!16665 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32281 () Bool)

(assert (=> bm!32281 (= call!32284 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63862 (Cons!10794 (select (arr!16665 a!3118) #b00000000000000000000000000000000) Nil!10795) Nil!10795)))))

(declare-fun b!551005 () Bool)

(declare-fun contains!2842 (List!10798 (_ BitVec 64)) Bool)

(assert (=> b!551005 (= e!318048 (contains!2842 Nil!10795 (select (arr!16665 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82859 (not res!343947)) b!551001))

(assert (= (and b!551001 res!343945) b!551005))

(assert (= (and b!551001 res!343946) b!551004))

(assert (= (and b!551004 c!63862) b!551003))

(assert (= (and b!551004 (not c!63862)) b!551002))

(assert (= (or b!551003 b!551002) bm!32281))

(assert (=> b!551001 m!527915))

(assert (=> b!551001 m!527915))

(assert (=> b!551001 m!527925))

(assert (=> b!551004 m!527915))

(assert (=> b!551004 m!527915))

(assert (=> b!551004 m!527925))

(assert (=> bm!32281 m!527915))

(declare-fun m!527987 () Bool)

(assert (=> bm!32281 m!527987))

(assert (=> b!551005 m!527915))

(assert (=> b!551005 m!527915))

(declare-fun m!527989 () Bool)

(assert (=> b!551005 m!527989))

(assert (=> b!550671 d!82859))

(declare-fun b!551006 () Bool)

(declare-fun e!318050 () Bool)

(declare-fun call!32285 () Bool)

(assert (=> b!551006 (= e!318050 call!32285)))

(declare-fun b!551007 () Bool)

(declare-fun e!318051 () Bool)

(assert (=> b!551007 (= e!318050 e!318051)))

(declare-fun lt!250734 () (_ BitVec 64))

(assert (=> b!551007 (= lt!250734 (select (arr!16665 a!3118) j!142))))

(declare-fun lt!250736 () Unit!17016)

(assert (=> b!551007 (= lt!250736 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250734 j!142))))

(assert (=> b!551007 (arrayContainsKey!0 a!3118 lt!250734 #b00000000000000000000000000000000)))

(declare-fun lt!250735 () Unit!17016)

(assert (=> b!551007 (= lt!250735 lt!250736)))

(declare-fun res!343948 () Bool)

(assert (=> b!551007 (= res!343948 (= (seekEntryOrOpen!0 (select (arr!16665 a!3118) j!142) a!3118 mask!3119) (Found!5121 j!142)))))

(assert (=> b!551007 (=> (not res!343948) (not e!318051))))

(declare-fun bm!32282 () Bool)

(assert (=> bm!32282 (= call!32285 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!551008 () Bool)

(assert (=> b!551008 (= e!318051 call!32285)))

(declare-fun d!82869 () Bool)

(declare-fun res!343949 () Bool)

(declare-fun e!318052 () Bool)

(assert (=> d!82869 (=> res!343949 e!318052)))

(assert (=> d!82869 (= res!343949 (bvsge j!142 (size!17029 a!3118)))))

(assert (=> d!82869 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!318052)))

(declare-fun b!551009 () Bool)

(assert (=> b!551009 (= e!318052 e!318050)))

(declare-fun c!63863 () Bool)

(assert (=> b!551009 (= c!63863 (validKeyInArray!0 (select (arr!16665 a!3118) j!142)))))

(assert (= (and d!82869 (not res!343949)) b!551009))

(assert (= (and b!551009 c!63863) b!551007))

(assert (= (and b!551009 (not c!63863)) b!551006))

(assert (= (and b!551007 res!343948) b!551008))

(assert (= (or b!551008 b!551006) bm!32282))

(assert (=> b!551007 m!527719))

(declare-fun m!527991 () Bool)

(assert (=> b!551007 m!527991))

(declare-fun m!527993 () Bool)

(assert (=> b!551007 m!527993))

(assert (=> b!551007 m!527719))

(assert (=> b!551007 m!527721))

(declare-fun m!527995 () Bool)

(assert (=> bm!32282 m!527995))

(assert (=> b!551009 m!527719))

(assert (=> b!551009 m!527719))

(assert (=> b!551009 m!527731))

(assert (=> b!550676 d!82869))

(declare-fun d!82871 () Bool)

(assert (=> d!82871 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!250742 () Unit!17016)

(declare-fun choose!38 (array!34710 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17016)

(assert (=> d!82871 (= lt!250742 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!82871 (validMask!0 mask!3119)))

(assert (=> d!82871 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!250742)))

(declare-fun bs!17165 () Bool)

(assert (= bs!17165 d!82871))

(assert (=> bs!17165 m!527723))

(declare-fun m!528001 () Bool)

(assert (=> bs!17165 m!528001))

(assert (=> bs!17165 m!527751))

(assert (=> b!550676 d!82871))

(declare-fun d!82879 () Bool)

(declare-fun lt!250746 () SeekEntryResult!5121)

(assert (=> d!82879 (and (or (is-Undefined!5121 lt!250746) (not (is-Found!5121 lt!250746)) (and (bvsge (index!22712 lt!250746) #b00000000000000000000000000000000) (bvslt (index!22712 lt!250746) (size!17029 a!3118)))) (or (is-Undefined!5121 lt!250746) (is-Found!5121 lt!250746) (not (is-MissingZero!5121 lt!250746)) (and (bvsge (index!22711 lt!250746) #b00000000000000000000000000000000) (bvslt (index!22711 lt!250746) (size!17029 a!3118)))) (or (is-Undefined!5121 lt!250746) (is-Found!5121 lt!250746) (is-MissingZero!5121 lt!250746) (not (is-MissingVacant!5121 lt!250746)) (and (bvsge (index!22714 lt!250746) #b00000000000000000000000000000000) (bvslt (index!22714 lt!250746) (size!17029 a!3118)))) (or (is-Undefined!5121 lt!250746) (ite (is-Found!5121 lt!250746) (= (select (arr!16665 a!3118) (index!22712 lt!250746)) k!1914) (ite (is-MissingZero!5121 lt!250746) (= (select (arr!16665 a!3118) (index!22711 lt!250746)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5121 lt!250746) (= (select (arr!16665 a!3118) (index!22714 lt!250746)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!318062 () SeekEntryResult!5121)

(assert (=> d!82879 (= lt!250746 e!318062)))

(declare-fun c!63869 () Bool)

(declare-fun lt!250748 () SeekEntryResult!5121)

(assert (=> d!82879 (= c!63869 (and (is-Intermediate!5121 lt!250748) (undefined!5933 lt!250748)))))

(assert (=> d!82879 (= lt!250748 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82879 (validMask!0 mask!3119)))

(assert (=> d!82879 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!250746)))

(declare-fun b!551022 () Bool)

(assert (=> b!551022 (= e!318062 Undefined!5121)))

(declare-fun b!551023 () Bool)

(declare-fun e!318064 () SeekEntryResult!5121)

(assert (=> b!551023 (= e!318062 e!318064)))

(declare-fun lt!250747 () (_ BitVec 64))

(assert (=> b!551023 (= lt!250747 (select (arr!16665 a!3118) (index!22713 lt!250748)))))

(declare-fun c!63867 () Bool)

(assert (=> b!551023 (= c!63867 (= lt!250747 k!1914))))

(declare-fun b!551024 () Bool)

(declare-fun e!318063 () SeekEntryResult!5121)

(assert (=> b!551024 (= e!318063 (MissingZero!5121 (index!22713 lt!250748)))))

(declare-fun b!551025 () Bool)

(declare-fun c!63868 () Bool)

(assert (=> b!551025 (= c!63868 (= lt!250747 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!551025 (= e!318064 e!318063)))

(declare-fun b!551026 () Bool)

(assert (=> b!551026 (= e!318064 (Found!5121 (index!22713 lt!250748)))))

(declare-fun b!551027 () Bool)

(assert (=> b!551027 (= e!318063 (seekKeyOrZeroReturnVacant!0 (x!51668 lt!250748) (index!22713 lt!250748) (index!22713 lt!250748) k!1914 a!3118 mask!3119))))

(assert (= (and d!82879 c!63869) b!551022))

(assert (= (and d!82879 (not c!63869)) b!551023))

(assert (= (and b!551023 c!63867) b!551026))

(assert (= (and b!551023 (not c!63867)) b!551025))

(assert (= (and b!551025 c!63868) b!551024))

(assert (= (and b!551025 (not c!63868)) b!551027))

(declare-fun m!528017 () Bool)

(assert (=> d!82879 m!528017))

(declare-fun m!528019 () Bool)

(assert (=> d!82879 m!528019))

(declare-fun m!528021 () Bool)

(assert (=> d!82879 m!528021))

(declare-fun m!528023 () Bool)

(assert (=> d!82879 m!528023))

(assert (=> d!82879 m!527751))

(assert (=> d!82879 m!528017))

(declare-fun m!528025 () Bool)

(assert (=> d!82879 m!528025))

(declare-fun m!528027 () Bool)

(assert (=> b!551023 m!528027))

(declare-fun m!528029 () Bool)

(assert (=> b!551027 m!528029))

(assert (=> b!550670 d!82879))

(push 1)

(assert (not bm!32281))

(assert (not b!550974))

(assert (not b!551009))

(assert (not b!551004))

(assert (not b!551005))

(assert (not b!550790))

(assert (not b!550884))

(assert (not d!82871))

(assert (not bm!32282))

(assert (not d!82879))

(assert (not bm!32274))

(assert (not b!550878))

(assert (not d!82841))

(assert (not b!550805))

(assert (not b!550876))

(assert (not b!551007))

(assert (not b!551001))

(assert (not d!82799))

(assert (not b!551027))

(assert (not d!82805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

