; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52228 () Bool)

(assert start!52228)

(declare-fun res!359998 () Bool)

(declare-fun e!327727 () Bool)

(assert (=> start!52228 (=> (not res!359998) (not e!327727))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52228 (= res!359998 (validMask!0 mask!3119))))

(assert (=> start!52228 e!327727))

(assert (=> start!52228 true))

(declare-datatypes ((array!35705 0))(
  ( (array!35706 (arr!17140 (Array (_ BitVec 32) (_ BitVec 64))) (size!17504 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35705)

(declare-fun array_inv!12914 (array!35705) Bool)

(assert (=> start!52228 (array_inv!12914 a!3118)))

(declare-fun b!569822 () Bool)

(declare-fun e!327725 () Bool)

(assert (=> b!569822 (= e!327727 e!327725)))

(declare-fun res!359993 () Bool)

(assert (=> b!569822 (=> (not res!359993) (not e!327725))))

(declare-datatypes ((SeekEntryResult!5596 0))(
  ( (MissingZero!5596 (index!24611 (_ BitVec 32))) (Found!5596 (index!24612 (_ BitVec 32))) (Intermediate!5596 (undefined!6408 Bool) (index!24613 (_ BitVec 32)) (x!53506 (_ BitVec 32))) (Undefined!5596) (MissingVacant!5596 (index!24614 (_ BitVec 32))) )
))
(declare-fun lt!259806 () SeekEntryResult!5596)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569822 (= res!359993 (or (= lt!259806 (MissingZero!5596 i!1132)) (= lt!259806 (MissingVacant!5596 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35705 (_ BitVec 32)) SeekEntryResult!5596)

(assert (=> b!569822 (= lt!259806 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!569823 () Bool)

(declare-fun e!327723 () Bool)

(declare-fun e!327726 () Bool)

(assert (=> b!569823 (= e!327723 (not e!327726))))

(declare-fun res!359992 () Bool)

(assert (=> b!569823 (=> res!359992 e!327726)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259803 () SeekEntryResult!5596)

(get-info :version)

(assert (=> b!569823 (= res!359992 (or (undefined!6408 lt!259803) (not ((_ is Intermediate!5596) lt!259803)) (= (select (arr!17140 a!3118) (index!24613 lt!259803)) (select (arr!17140 a!3118) j!142)) (= (select (arr!17140 a!3118) (index!24613 lt!259803)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!259807 () SeekEntryResult!5596)

(assert (=> b!569823 (= lt!259807 (Found!5596 j!142))))

(assert (=> b!569823 (= lt!259807 (seekEntryOrOpen!0 (select (arr!17140 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35705 (_ BitVec 32)) Bool)

(assert (=> b!569823 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17894 0))(
  ( (Unit!17895) )
))
(declare-fun lt!259805 () Unit!17894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17894)

(assert (=> b!569823 (= lt!259805 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569824 () Bool)

(declare-fun res!359996 () Bool)

(assert (=> b!569824 (=> (not res!359996) (not e!327725))))

(declare-datatypes ((List!11273 0))(
  ( (Nil!11270) (Cons!11269 (h!12290 (_ BitVec 64)) (t!17509 List!11273)) )
))
(declare-fun arrayNoDuplicates!0 (array!35705 (_ BitVec 32) List!11273) Bool)

(assert (=> b!569824 (= res!359996 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11270))))

(declare-fun b!569825 () Bool)

(declare-fun res!359994 () Bool)

(assert (=> b!569825 (=> (not res!359994) (not e!327727))))

(assert (=> b!569825 (= res!359994 (and (= (size!17504 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17504 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17504 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569826 () Bool)

(declare-fun res!359991 () Bool)

(assert (=> b!569826 (=> (not res!359991) (not e!327727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569826 (= res!359991 (validKeyInArray!0 k0!1914))))

(declare-fun b!569827 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35705 (_ BitVec 32)) SeekEntryResult!5596)

(assert (=> b!569827 (= e!327726 (= lt!259807 (seekKeyOrZeroReturnVacant!0 (x!53506 lt!259803) (index!24613 lt!259803) (index!24613 lt!259803) (select (arr!17140 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!569828 () Bool)

(declare-fun res!359997 () Bool)

(assert (=> b!569828 (=> (not res!359997) (not e!327725))))

(assert (=> b!569828 (= res!359997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569829 () Bool)

(declare-fun res!359990 () Bool)

(assert (=> b!569829 (=> (not res!359990) (not e!327727))))

(assert (=> b!569829 (= res!359990 (validKeyInArray!0 (select (arr!17140 a!3118) j!142)))))

(declare-fun b!569830 () Bool)

(declare-fun res!359995 () Bool)

(assert (=> b!569830 (=> (not res!359995) (not e!327727))))

(declare-fun arrayContainsKey!0 (array!35705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569830 (= res!359995 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569831 () Bool)

(assert (=> b!569831 (= e!327725 e!327723)))

(declare-fun res!359999 () Bool)

(assert (=> b!569831 (=> (not res!359999) (not e!327723))))

(declare-fun lt!259804 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35705 (_ BitVec 32)) SeekEntryResult!5596)

(assert (=> b!569831 (= res!359999 (= lt!259803 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259804 (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118)) mask!3119)))))

(declare-fun lt!259808 () (_ BitVec 32))

(assert (=> b!569831 (= lt!259803 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259808 (select (arr!17140 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569831 (= lt!259804 (toIndex!0 (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569831 (= lt!259808 (toIndex!0 (select (arr!17140 a!3118) j!142) mask!3119))))

(assert (= (and start!52228 res!359998) b!569825))

(assert (= (and b!569825 res!359994) b!569829))

(assert (= (and b!569829 res!359990) b!569826))

(assert (= (and b!569826 res!359991) b!569830))

(assert (= (and b!569830 res!359995) b!569822))

(assert (= (and b!569822 res!359993) b!569828))

(assert (= (and b!569828 res!359997) b!569824))

(assert (= (and b!569824 res!359996) b!569831))

(assert (= (and b!569831 res!359999) b!569823))

(assert (= (and b!569823 (not res!359992)) b!569827))

(declare-fun m!548783 () Bool)

(assert (=> b!569829 m!548783))

(assert (=> b!569829 m!548783))

(declare-fun m!548785 () Bool)

(assert (=> b!569829 m!548785))

(declare-fun m!548787 () Bool)

(assert (=> b!569826 m!548787))

(assert (=> b!569823 m!548783))

(declare-fun m!548789 () Bool)

(assert (=> b!569823 m!548789))

(declare-fun m!548791 () Bool)

(assert (=> b!569823 m!548791))

(declare-fun m!548793 () Bool)

(assert (=> b!569823 m!548793))

(assert (=> b!569823 m!548783))

(declare-fun m!548795 () Bool)

(assert (=> b!569823 m!548795))

(declare-fun m!548797 () Bool)

(assert (=> b!569830 m!548797))

(declare-fun m!548799 () Bool)

(assert (=> b!569822 m!548799))

(declare-fun m!548801 () Bool)

(assert (=> start!52228 m!548801))

(declare-fun m!548803 () Bool)

(assert (=> start!52228 m!548803))

(assert (=> b!569827 m!548783))

(assert (=> b!569827 m!548783))

(declare-fun m!548805 () Bool)

(assert (=> b!569827 m!548805))

(assert (=> b!569831 m!548783))

(declare-fun m!548807 () Bool)

(assert (=> b!569831 m!548807))

(assert (=> b!569831 m!548783))

(declare-fun m!548809 () Bool)

(assert (=> b!569831 m!548809))

(assert (=> b!569831 m!548783))

(declare-fun m!548811 () Bool)

(assert (=> b!569831 m!548811))

(declare-fun m!548813 () Bool)

(assert (=> b!569831 m!548813))

(assert (=> b!569831 m!548809))

(declare-fun m!548815 () Bool)

(assert (=> b!569831 m!548815))

(assert (=> b!569831 m!548809))

(declare-fun m!548817 () Bool)

(assert (=> b!569831 m!548817))

(declare-fun m!548819 () Bool)

(assert (=> b!569828 m!548819))

(declare-fun m!548821 () Bool)

(assert (=> b!569824 m!548821))

(check-sat (not b!569831) (not b!569824) (not b!569823) (not start!52228) (not b!569827) (not b!569829) (not b!569822) (not b!569828) (not b!569826) (not b!569830))
(check-sat)
(get-model)

(declare-fun d!84491 () Bool)

(assert (=> d!84491 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!569826 d!84491))

(declare-fun b!569886 () Bool)

(declare-fun lt!259832 () SeekEntryResult!5596)

(assert (=> b!569886 (and (bvsge (index!24613 lt!259832) #b00000000000000000000000000000000) (bvslt (index!24613 lt!259832) (size!17504 (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118)))))))

(declare-fun res!360044 () Bool)

(assert (=> b!569886 (= res!360044 (= (select (arr!17140 (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118))) (index!24613 lt!259832)) (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun e!327760 () Bool)

(assert (=> b!569886 (=> res!360044 e!327760)))

(declare-fun e!327761 () Bool)

(assert (=> b!569886 (= e!327761 e!327760)))

(declare-fun b!569887 () Bool)

(declare-fun e!327759 () SeekEntryResult!5596)

(assert (=> b!569887 (= e!327759 (Intermediate!5596 true lt!259804 #b00000000000000000000000000000000))))

(declare-fun b!569888 () Bool)

(declare-fun e!327763 () SeekEntryResult!5596)

(assert (=> b!569888 (= e!327759 e!327763)))

(declare-fun lt!259831 () (_ BitVec 64))

(declare-fun c!65277 () Bool)

(assert (=> b!569888 (= c!65277 (or (= lt!259831 (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!259831 lt!259831) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!569889 () Bool)

(declare-fun e!327762 () Bool)

(assert (=> b!569889 (= e!327762 (bvsge (x!53506 lt!259832) #b01111111111111111111111111111110))))

(declare-fun b!569890 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569890 (= e!327763 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!259804 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118)) mask!3119))))

(declare-fun b!569891 () Bool)

(assert (=> b!569891 (= e!327763 (Intermediate!5596 false lt!259804 #b00000000000000000000000000000000))))

(declare-fun b!569893 () Bool)

(assert (=> b!569893 (and (bvsge (index!24613 lt!259832) #b00000000000000000000000000000000) (bvslt (index!24613 lt!259832) (size!17504 (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118)))))))

(declare-fun res!360042 () Bool)

(assert (=> b!569893 (= res!360042 (= (select (arr!17140 (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118))) (index!24613 lt!259832)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!569893 (=> res!360042 e!327760)))

(declare-fun b!569894 () Bool)

(assert (=> b!569894 (= e!327762 e!327761)))

(declare-fun res!360043 () Bool)

(assert (=> b!569894 (= res!360043 (and ((_ is Intermediate!5596) lt!259832) (not (undefined!6408 lt!259832)) (bvslt (x!53506 lt!259832) #b01111111111111111111111111111110) (bvsge (x!53506 lt!259832) #b00000000000000000000000000000000) (bvsge (x!53506 lt!259832) #b00000000000000000000000000000000)))))

(assert (=> b!569894 (=> (not res!360043) (not e!327761))))

(declare-fun d!84493 () Bool)

(assert (=> d!84493 e!327762))

(declare-fun c!65279 () Bool)

(assert (=> d!84493 (= c!65279 (and ((_ is Intermediate!5596) lt!259832) (undefined!6408 lt!259832)))))

(assert (=> d!84493 (= lt!259832 e!327759)))

(declare-fun c!65278 () Bool)

(assert (=> d!84493 (= c!65278 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84493 (= lt!259831 (select (arr!17140 (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118))) lt!259804))))

(assert (=> d!84493 (validMask!0 mask!3119)))

(assert (=> d!84493 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259804 (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118)) mask!3119) lt!259832)))

(declare-fun b!569892 () Bool)

(assert (=> b!569892 (and (bvsge (index!24613 lt!259832) #b00000000000000000000000000000000) (bvslt (index!24613 lt!259832) (size!17504 (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118)))))))

(assert (=> b!569892 (= e!327760 (= (select (arr!17140 (array!35706 (store (arr!17140 a!3118) i!1132 k0!1914) (size!17504 a!3118))) (index!24613 lt!259832)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84493 c!65278) b!569887))

(assert (= (and d!84493 (not c!65278)) b!569888))

(assert (= (and b!569888 c!65277) b!569891))

(assert (= (and b!569888 (not c!65277)) b!569890))

(assert (= (and d!84493 c!65279) b!569889))

(assert (= (and d!84493 (not c!65279)) b!569894))

(assert (= (and b!569894 res!360043) b!569886))

(assert (= (and b!569886 (not res!360044)) b!569893))

(assert (= (and b!569893 (not res!360042)) b!569892))

(declare-fun m!548867 () Bool)

(assert (=> b!569892 m!548867))

(assert (=> b!569893 m!548867))

(assert (=> b!569886 m!548867))

(declare-fun m!548869 () Bool)

(assert (=> d!84493 m!548869))

(assert (=> d!84493 m!548801))

(declare-fun m!548871 () Bool)

(assert (=> b!569890 m!548871))

(assert (=> b!569890 m!548871))

(assert (=> b!569890 m!548809))

(declare-fun m!548873 () Bool)

(assert (=> b!569890 m!548873))

(assert (=> b!569831 d!84493))

(declare-fun b!569895 () Bool)

(declare-fun lt!259834 () SeekEntryResult!5596)

(assert (=> b!569895 (and (bvsge (index!24613 lt!259834) #b00000000000000000000000000000000) (bvslt (index!24613 lt!259834) (size!17504 a!3118)))))

(declare-fun res!360047 () Bool)

(assert (=> b!569895 (= res!360047 (= (select (arr!17140 a!3118) (index!24613 lt!259834)) (select (arr!17140 a!3118) j!142)))))

(declare-fun e!327765 () Bool)

(assert (=> b!569895 (=> res!360047 e!327765)))

(declare-fun e!327766 () Bool)

(assert (=> b!569895 (= e!327766 e!327765)))

(declare-fun b!569896 () Bool)

(declare-fun e!327764 () SeekEntryResult!5596)

(assert (=> b!569896 (= e!327764 (Intermediate!5596 true lt!259808 #b00000000000000000000000000000000))))

(declare-fun b!569897 () Bool)

(declare-fun e!327768 () SeekEntryResult!5596)

(assert (=> b!569897 (= e!327764 e!327768)))

(declare-fun c!65280 () Bool)

(declare-fun lt!259833 () (_ BitVec 64))

(assert (=> b!569897 (= c!65280 (or (= lt!259833 (select (arr!17140 a!3118) j!142)) (= (bvadd lt!259833 lt!259833) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!569898 () Bool)

(declare-fun e!327767 () Bool)

(assert (=> b!569898 (= e!327767 (bvsge (x!53506 lt!259834) #b01111111111111111111111111111110))))

(declare-fun b!569899 () Bool)

(assert (=> b!569899 (= e!327768 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!259808 #b00000000000000000000000000000000 mask!3119) (select (arr!17140 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!569900 () Bool)

(assert (=> b!569900 (= e!327768 (Intermediate!5596 false lt!259808 #b00000000000000000000000000000000))))

(declare-fun b!569902 () Bool)

(assert (=> b!569902 (and (bvsge (index!24613 lt!259834) #b00000000000000000000000000000000) (bvslt (index!24613 lt!259834) (size!17504 a!3118)))))

(declare-fun res!360045 () Bool)

(assert (=> b!569902 (= res!360045 (= (select (arr!17140 a!3118) (index!24613 lt!259834)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!569902 (=> res!360045 e!327765)))

(declare-fun b!569903 () Bool)

(assert (=> b!569903 (= e!327767 e!327766)))

(declare-fun res!360046 () Bool)

(assert (=> b!569903 (= res!360046 (and ((_ is Intermediate!5596) lt!259834) (not (undefined!6408 lt!259834)) (bvslt (x!53506 lt!259834) #b01111111111111111111111111111110) (bvsge (x!53506 lt!259834) #b00000000000000000000000000000000) (bvsge (x!53506 lt!259834) #b00000000000000000000000000000000)))))

(assert (=> b!569903 (=> (not res!360046) (not e!327766))))

(declare-fun d!84499 () Bool)

(assert (=> d!84499 e!327767))

(declare-fun c!65282 () Bool)

(assert (=> d!84499 (= c!65282 (and ((_ is Intermediate!5596) lt!259834) (undefined!6408 lt!259834)))))

(assert (=> d!84499 (= lt!259834 e!327764)))

(declare-fun c!65281 () Bool)

(assert (=> d!84499 (= c!65281 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84499 (= lt!259833 (select (arr!17140 a!3118) lt!259808))))

(assert (=> d!84499 (validMask!0 mask!3119)))

(assert (=> d!84499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259808 (select (arr!17140 a!3118) j!142) a!3118 mask!3119) lt!259834)))

(declare-fun b!569901 () Bool)

(assert (=> b!569901 (and (bvsge (index!24613 lt!259834) #b00000000000000000000000000000000) (bvslt (index!24613 lt!259834) (size!17504 a!3118)))))

(assert (=> b!569901 (= e!327765 (= (select (arr!17140 a!3118) (index!24613 lt!259834)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84499 c!65281) b!569896))

(assert (= (and d!84499 (not c!65281)) b!569897))

(assert (= (and b!569897 c!65280) b!569900))

(assert (= (and b!569897 (not c!65280)) b!569899))

(assert (= (and d!84499 c!65282) b!569898))

(assert (= (and d!84499 (not c!65282)) b!569903))

(assert (= (and b!569903 res!360046) b!569895))

(assert (= (and b!569895 (not res!360047)) b!569902))

(assert (= (and b!569902 (not res!360045)) b!569901))

(declare-fun m!548875 () Bool)

(assert (=> b!569901 m!548875))

(assert (=> b!569902 m!548875))

(assert (=> b!569895 m!548875))

(declare-fun m!548877 () Bool)

(assert (=> d!84499 m!548877))

(assert (=> d!84499 m!548801))

(declare-fun m!548879 () Bool)

(assert (=> b!569899 m!548879))

(assert (=> b!569899 m!548879))

(assert (=> b!569899 m!548783))

(declare-fun m!548881 () Bool)

(assert (=> b!569899 m!548881))

(assert (=> b!569831 d!84499))

(declare-fun d!84501 () Bool)

(declare-fun lt!259840 () (_ BitVec 32))

(declare-fun lt!259839 () (_ BitVec 32))

(assert (=> d!84501 (= lt!259840 (bvmul (bvxor lt!259839 (bvlshr lt!259839 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84501 (= lt!259839 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84501 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360048 (let ((h!12292 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53509 (bvmul (bvxor h!12292 (bvlshr h!12292 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53509 (bvlshr x!53509 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360048 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360048 #b00000000000000000000000000000000))))))

(assert (=> d!84501 (= (toIndex!0 (select (store (arr!17140 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!259840 (bvlshr lt!259840 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!569831 d!84501))

(declare-fun d!84505 () Bool)

(declare-fun lt!259842 () (_ BitVec 32))

(declare-fun lt!259841 () (_ BitVec 32))

(assert (=> d!84505 (= lt!259842 (bvmul (bvxor lt!259841 (bvlshr lt!259841 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84505 (= lt!259841 ((_ extract 31 0) (bvand (bvxor (select (arr!17140 a!3118) j!142) (bvlshr (select (arr!17140 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84505 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360048 (let ((h!12292 ((_ extract 31 0) (bvand (bvxor (select (arr!17140 a!3118) j!142) (bvlshr (select (arr!17140 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53509 (bvmul (bvxor h!12292 (bvlshr h!12292 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53509 (bvlshr x!53509 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360048 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360048 #b00000000000000000000000000000000))))))

(assert (=> d!84505 (= (toIndex!0 (select (arr!17140 a!3118) j!142) mask!3119) (bvand (bvxor lt!259842 (bvlshr lt!259842 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!569831 d!84505))

(declare-fun d!84507 () Bool)

(declare-fun res!360053 () Bool)

(declare-fun e!327777 () Bool)

(assert (=> d!84507 (=> res!360053 e!327777)))

(assert (=> d!84507 (= res!360053 (= (select (arr!17140 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84507 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!327777)))

(declare-fun b!569916 () Bool)

(declare-fun e!327778 () Bool)

(assert (=> b!569916 (= e!327777 e!327778)))

(declare-fun res!360054 () Bool)

(assert (=> b!569916 (=> (not res!360054) (not e!327778))))

(assert (=> b!569916 (= res!360054 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17504 a!3118)))))

(declare-fun b!569917 () Bool)

(assert (=> b!569917 (= e!327778 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84507 (not res!360053)) b!569916))

(assert (= (and b!569916 res!360054) b!569917))

(declare-fun m!548883 () Bool)

(assert (=> d!84507 m!548883))

(declare-fun m!548885 () Bool)

(assert (=> b!569917 m!548885))

(assert (=> b!569830 d!84507))

(declare-fun bm!32579 () Bool)

(declare-fun call!32582 () Bool)

(declare-fun c!65297 () Bool)

(assert (=> bm!32579 (= call!32582 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65297 (Cons!11269 (select (arr!17140 a!3118) #b00000000000000000000000000000000) Nil!11270) Nil!11270)))))

(declare-fun b!569956 () Bool)

(declare-fun e!327804 () Bool)

(declare-fun contains!2882 (List!11273 (_ BitVec 64)) Bool)

(assert (=> b!569956 (= e!327804 (contains!2882 Nil!11270 (select (arr!17140 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84509 () Bool)

(declare-fun res!360074 () Bool)

(declare-fun e!327805 () Bool)

(assert (=> d!84509 (=> res!360074 e!327805)))

(assert (=> d!84509 (= res!360074 (bvsge #b00000000000000000000000000000000 (size!17504 a!3118)))))

(assert (=> d!84509 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11270) e!327805)))

(declare-fun b!569957 () Bool)

(declare-fun e!327803 () Bool)

(declare-fun e!327806 () Bool)

(assert (=> b!569957 (= e!327803 e!327806)))

(assert (=> b!569957 (= c!65297 (validKeyInArray!0 (select (arr!17140 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!569958 () Bool)

(assert (=> b!569958 (= e!327805 e!327803)))

(declare-fun res!360073 () Bool)

(assert (=> b!569958 (=> (not res!360073) (not e!327803))))

(assert (=> b!569958 (= res!360073 (not e!327804))))

(declare-fun res!360075 () Bool)

(assert (=> b!569958 (=> (not res!360075) (not e!327804))))

(assert (=> b!569958 (= res!360075 (validKeyInArray!0 (select (arr!17140 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!569959 () Bool)

(assert (=> b!569959 (= e!327806 call!32582)))

(declare-fun b!569960 () Bool)

(assert (=> b!569960 (= e!327806 call!32582)))

(assert (= (and d!84509 (not res!360074)) b!569958))

(assert (= (and b!569958 res!360075) b!569956))

(assert (= (and b!569958 res!360073) b!569957))

(assert (= (and b!569957 c!65297) b!569960))

(assert (= (and b!569957 (not c!65297)) b!569959))

(assert (= (or b!569960 b!569959) bm!32579))

(assert (=> bm!32579 m!548883))

(declare-fun m!548897 () Bool)

(assert (=> bm!32579 m!548897))

(assert (=> b!569956 m!548883))

(assert (=> b!569956 m!548883))

(declare-fun m!548901 () Bool)

(assert (=> b!569956 m!548901))

(assert (=> b!569957 m!548883))

(assert (=> b!569957 m!548883))

(declare-fun m!548907 () Bool)

(assert (=> b!569957 m!548907))

(assert (=> b!569958 m!548883))

(assert (=> b!569958 m!548883))

(assert (=> b!569958 m!548907))

(assert (=> b!569824 d!84509))

(declare-fun d!84515 () Bool)

(assert (=> d!84515 (= (validKeyInArray!0 (select (arr!17140 a!3118) j!142)) (and (not (= (select (arr!17140 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17140 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!569829 d!84515))

(declare-fun d!84517 () Bool)

(assert (=> d!84517 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52228 d!84517))

(declare-fun d!84525 () Bool)

(assert (=> d!84525 (= (array_inv!12914 a!3118) (bvsge (size!17504 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52228 d!84525))

(declare-fun d!84527 () Bool)

(declare-fun lt!259897 () SeekEntryResult!5596)

(assert (=> d!84527 (and (or ((_ is Undefined!5596) lt!259897) (not ((_ is Found!5596) lt!259897)) (and (bvsge (index!24612 lt!259897) #b00000000000000000000000000000000) (bvslt (index!24612 lt!259897) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259897) ((_ is Found!5596) lt!259897) (not ((_ is MissingZero!5596) lt!259897)) (and (bvsge (index!24611 lt!259897) #b00000000000000000000000000000000) (bvslt (index!24611 lt!259897) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259897) ((_ is Found!5596) lt!259897) ((_ is MissingZero!5596) lt!259897) (not ((_ is MissingVacant!5596) lt!259897)) (and (bvsge (index!24614 lt!259897) #b00000000000000000000000000000000) (bvslt (index!24614 lt!259897) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259897) (ite ((_ is Found!5596) lt!259897) (= (select (arr!17140 a!3118) (index!24612 lt!259897)) (select (arr!17140 a!3118) j!142)) (ite ((_ is MissingZero!5596) lt!259897) (= (select (arr!17140 a!3118) (index!24611 lt!259897)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5596) lt!259897) (= (select (arr!17140 a!3118) (index!24614 lt!259897)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!327847 () SeekEntryResult!5596)

(assert (=> d!84527 (= lt!259897 e!327847)))

(declare-fun c!65331 () Bool)

(declare-fun lt!259895 () SeekEntryResult!5596)

(assert (=> d!84527 (= c!65331 (and ((_ is Intermediate!5596) lt!259895) (undefined!6408 lt!259895)))))

(assert (=> d!84527 (= lt!259895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17140 a!3118) j!142) mask!3119) (select (arr!17140 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84527 (validMask!0 mask!3119)))

(assert (=> d!84527 (= (seekEntryOrOpen!0 (select (arr!17140 a!3118) j!142) a!3118 mask!3119) lt!259897)))

(declare-fun b!570033 () Bool)

(assert (=> b!570033 (= e!327847 Undefined!5596)))

(declare-fun b!570034 () Bool)

(declare-fun e!327848 () SeekEntryResult!5596)

(assert (=> b!570034 (= e!327848 (Found!5596 (index!24613 lt!259895)))))

(declare-fun b!570035 () Bool)

(declare-fun e!327846 () SeekEntryResult!5596)

(assert (=> b!570035 (= e!327846 (MissingZero!5596 (index!24613 lt!259895)))))

(declare-fun b!570036 () Bool)

(declare-fun c!65333 () Bool)

(declare-fun lt!259896 () (_ BitVec 64))

(assert (=> b!570036 (= c!65333 (= lt!259896 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!570036 (= e!327848 e!327846)))

(declare-fun b!570037 () Bool)

(assert (=> b!570037 (= e!327846 (seekKeyOrZeroReturnVacant!0 (x!53506 lt!259895) (index!24613 lt!259895) (index!24613 lt!259895) (select (arr!17140 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!570038 () Bool)

(assert (=> b!570038 (= e!327847 e!327848)))

(assert (=> b!570038 (= lt!259896 (select (arr!17140 a!3118) (index!24613 lt!259895)))))

(declare-fun c!65332 () Bool)

(assert (=> b!570038 (= c!65332 (= lt!259896 (select (arr!17140 a!3118) j!142)))))

(assert (= (and d!84527 c!65331) b!570033))

(assert (= (and d!84527 (not c!65331)) b!570038))

(assert (= (and b!570038 c!65332) b!570034))

(assert (= (and b!570038 (not c!65332)) b!570036))

(assert (= (and b!570036 c!65333) b!570035))

(assert (= (and b!570036 (not c!65333)) b!570037))

(assert (=> d!84527 m!548807))

(assert (=> d!84527 m!548783))

(declare-fun m!548941 () Bool)

(assert (=> d!84527 m!548941))

(declare-fun m!548943 () Bool)

(assert (=> d!84527 m!548943))

(assert (=> d!84527 m!548783))

(assert (=> d!84527 m!548807))

(assert (=> d!84527 m!548801))

(declare-fun m!548945 () Bool)

(assert (=> d!84527 m!548945))

(declare-fun m!548947 () Bool)

(assert (=> d!84527 m!548947))

(assert (=> b!570037 m!548783))

(declare-fun m!548949 () Bool)

(assert (=> b!570037 m!548949))

(declare-fun m!548951 () Bool)

(assert (=> b!570038 m!548951))

(assert (=> b!569823 d!84527))

(declare-fun b!570069 () Bool)

(declare-fun e!327872 () Bool)

(declare-fun call!32592 () Bool)

(assert (=> b!570069 (= e!327872 call!32592)))

(declare-fun bm!32589 () Bool)

(assert (=> bm!32589 (= call!32592 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!570070 () Bool)

(declare-fun e!327871 () Bool)

(assert (=> b!570070 (= e!327871 call!32592)))

(declare-fun d!84533 () Bool)

(declare-fun res!360095 () Bool)

(declare-fun e!327870 () Bool)

(assert (=> d!84533 (=> res!360095 e!327870)))

(assert (=> d!84533 (= res!360095 (bvsge j!142 (size!17504 a!3118)))))

(assert (=> d!84533 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!327870)))

(declare-fun b!570071 () Bool)

(assert (=> b!570071 (= e!327870 e!327871)))

(declare-fun c!65343 () Bool)

(assert (=> b!570071 (= c!65343 (validKeyInArray!0 (select (arr!17140 a!3118) j!142)))))

(declare-fun b!570072 () Bool)

(assert (=> b!570072 (= e!327871 e!327872)))

(declare-fun lt!259923 () (_ BitVec 64))

(assert (=> b!570072 (= lt!259923 (select (arr!17140 a!3118) j!142))))

(declare-fun lt!259922 () Unit!17894)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35705 (_ BitVec 64) (_ BitVec 32)) Unit!17894)

(assert (=> b!570072 (= lt!259922 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259923 j!142))))

(assert (=> b!570072 (arrayContainsKey!0 a!3118 lt!259923 #b00000000000000000000000000000000)))

(declare-fun lt!259924 () Unit!17894)

(assert (=> b!570072 (= lt!259924 lt!259922)))

(declare-fun res!360096 () Bool)

(assert (=> b!570072 (= res!360096 (= (seekEntryOrOpen!0 (select (arr!17140 a!3118) j!142) a!3118 mask!3119) (Found!5596 j!142)))))

(assert (=> b!570072 (=> (not res!360096) (not e!327872))))

(assert (= (and d!84533 (not res!360095)) b!570071))

(assert (= (and b!570071 c!65343) b!570072))

(assert (= (and b!570071 (not c!65343)) b!570070))

(assert (= (and b!570072 res!360096) b!570069))

(assert (= (or b!570069 b!570070) bm!32589))

(declare-fun m!548979 () Bool)

(assert (=> bm!32589 m!548979))

(assert (=> b!570071 m!548783))

(assert (=> b!570071 m!548783))

(assert (=> b!570071 m!548785))

(assert (=> b!570072 m!548783))

(declare-fun m!548981 () Bool)

(assert (=> b!570072 m!548981))

(declare-fun m!548983 () Bool)

(assert (=> b!570072 m!548983))

(assert (=> b!570072 m!548783))

(assert (=> b!570072 m!548795))

(assert (=> b!569823 d!84533))

(declare-fun d!84543 () Bool)

(assert (=> d!84543 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!259930 () Unit!17894)

(declare-fun choose!38 (array!35705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17894)

(assert (=> d!84543 (= lt!259930 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84543 (validMask!0 mask!3119)))

(assert (=> d!84543 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!259930)))

(declare-fun bs!17684 () Bool)

(assert (= bs!17684 d!84543))

(assert (=> bs!17684 m!548789))

(declare-fun m!548989 () Bool)

(assert (=> bs!17684 m!548989))

(assert (=> bs!17684 m!548801))

(assert (=> b!569823 d!84543))

(declare-fun b!570079 () Bool)

(declare-fun e!327881 () Bool)

(declare-fun call!32593 () Bool)

(assert (=> b!570079 (= e!327881 call!32593)))

(declare-fun bm!32590 () Bool)

(assert (=> bm!32590 (= call!32593 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!570080 () Bool)

(declare-fun e!327880 () Bool)

(assert (=> b!570080 (= e!327880 call!32593)))

(declare-fun d!84551 () Bool)

(declare-fun res!360103 () Bool)

(declare-fun e!327879 () Bool)

(assert (=> d!84551 (=> res!360103 e!327879)))

(assert (=> d!84551 (= res!360103 (bvsge #b00000000000000000000000000000000 (size!17504 a!3118)))))

(assert (=> d!84551 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!327879)))

(declare-fun b!570081 () Bool)

(assert (=> b!570081 (= e!327879 e!327880)))

(declare-fun c!65344 () Bool)

(assert (=> b!570081 (= c!65344 (validKeyInArray!0 (select (arr!17140 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!570082 () Bool)

(assert (=> b!570082 (= e!327880 e!327881)))

(declare-fun lt!259932 () (_ BitVec 64))

(assert (=> b!570082 (= lt!259932 (select (arr!17140 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!259931 () Unit!17894)

(assert (=> b!570082 (= lt!259931 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259932 #b00000000000000000000000000000000))))

(assert (=> b!570082 (arrayContainsKey!0 a!3118 lt!259932 #b00000000000000000000000000000000)))

(declare-fun lt!259933 () Unit!17894)

(assert (=> b!570082 (= lt!259933 lt!259931)))

(declare-fun res!360104 () Bool)

(assert (=> b!570082 (= res!360104 (= (seekEntryOrOpen!0 (select (arr!17140 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5596 #b00000000000000000000000000000000)))))

(assert (=> b!570082 (=> (not res!360104) (not e!327881))))

(assert (= (and d!84551 (not res!360103)) b!570081))

(assert (= (and b!570081 c!65344) b!570082))

(assert (= (and b!570081 (not c!65344)) b!570080))

(assert (= (and b!570082 res!360104) b!570079))

(assert (= (or b!570079 b!570080) bm!32590))

(declare-fun m!548991 () Bool)

(assert (=> bm!32590 m!548991))

(assert (=> b!570081 m!548883))

(assert (=> b!570081 m!548883))

(assert (=> b!570081 m!548907))

(assert (=> b!570082 m!548883))

(declare-fun m!548993 () Bool)

(assert (=> b!570082 m!548993))

(declare-fun m!548995 () Bool)

(assert (=> b!570082 m!548995))

(assert (=> b!570082 m!548883))

(declare-fun m!548997 () Bool)

(assert (=> b!570082 m!548997))

(assert (=> b!569828 d!84551))

(declare-fun d!84553 () Bool)

(declare-fun lt!259936 () SeekEntryResult!5596)

(assert (=> d!84553 (and (or ((_ is Undefined!5596) lt!259936) (not ((_ is Found!5596) lt!259936)) (and (bvsge (index!24612 lt!259936) #b00000000000000000000000000000000) (bvslt (index!24612 lt!259936) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259936) ((_ is Found!5596) lt!259936) (not ((_ is MissingZero!5596) lt!259936)) (and (bvsge (index!24611 lt!259936) #b00000000000000000000000000000000) (bvslt (index!24611 lt!259936) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259936) ((_ is Found!5596) lt!259936) ((_ is MissingZero!5596) lt!259936) (not ((_ is MissingVacant!5596) lt!259936)) (and (bvsge (index!24614 lt!259936) #b00000000000000000000000000000000) (bvslt (index!24614 lt!259936) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259936) (ite ((_ is Found!5596) lt!259936) (= (select (arr!17140 a!3118) (index!24612 lt!259936)) k0!1914) (ite ((_ is MissingZero!5596) lt!259936) (= (select (arr!17140 a!3118) (index!24611 lt!259936)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5596) lt!259936) (= (select (arr!17140 a!3118) (index!24614 lt!259936)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!327885 () SeekEntryResult!5596)

(assert (=> d!84553 (= lt!259936 e!327885)))

(declare-fun c!65345 () Bool)

(declare-fun lt!259934 () SeekEntryResult!5596)

(assert (=> d!84553 (= c!65345 (and ((_ is Intermediate!5596) lt!259934) (undefined!6408 lt!259934)))))

(assert (=> d!84553 (= lt!259934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84553 (validMask!0 mask!3119)))

(assert (=> d!84553 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!259936)))

(declare-fun b!570085 () Bool)

(assert (=> b!570085 (= e!327885 Undefined!5596)))

(declare-fun b!570086 () Bool)

(declare-fun e!327886 () SeekEntryResult!5596)

(assert (=> b!570086 (= e!327886 (Found!5596 (index!24613 lt!259934)))))

(declare-fun b!570087 () Bool)

(declare-fun e!327884 () SeekEntryResult!5596)

(assert (=> b!570087 (= e!327884 (MissingZero!5596 (index!24613 lt!259934)))))

(declare-fun b!570088 () Bool)

(declare-fun c!65347 () Bool)

(declare-fun lt!259935 () (_ BitVec 64))

(assert (=> b!570088 (= c!65347 (= lt!259935 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!570088 (= e!327886 e!327884)))

(declare-fun b!570089 () Bool)

(assert (=> b!570089 (= e!327884 (seekKeyOrZeroReturnVacant!0 (x!53506 lt!259934) (index!24613 lt!259934) (index!24613 lt!259934) k0!1914 a!3118 mask!3119))))

(declare-fun b!570090 () Bool)

(assert (=> b!570090 (= e!327885 e!327886)))

(assert (=> b!570090 (= lt!259935 (select (arr!17140 a!3118) (index!24613 lt!259934)))))

(declare-fun c!65346 () Bool)

(assert (=> b!570090 (= c!65346 (= lt!259935 k0!1914))))

(assert (= (and d!84553 c!65345) b!570085))

(assert (= (and d!84553 (not c!65345)) b!570090))

(assert (= (and b!570090 c!65346) b!570086))

(assert (= (and b!570090 (not c!65346)) b!570088))

(assert (= (and b!570088 c!65347) b!570087))

(assert (= (and b!570088 (not c!65347)) b!570089))

(declare-fun m!548999 () Bool)

(assert (=> d!84553 m!548999))

(declare-fun m!549001 () Bool)

(assert (=> d!84553 m!549001))

(declare-fun m!549003 () Bool)

(assert (=> d!84553 m!549003))

(assert (=> d!84553 m!548999))

(assert (=> d!84553 m!548801))

(declare-fun m!549005 () Bool)

(assert (=> d!84553 m!549005))

(declare-fun m!549007 () Bool)

(assert (=> d!84553 m!549007))

(declare-fun m!549009 () Bool)

(assert (=> b!570089 m!549009))

(declare-fun m!549011 () Bool)

(assert (=> b!570090 m!549011))

(assert (=> b!569822 d!84553))

(declare-fun b!570137 () Bool)

(declare-fun e!327920 () SeekEntryResult!5596)

(assert (=> b!570137 (= e!327920 (MissingVacant!5596 (index!24613 lt!259803)))))

(declare-fun d!84555 () Bool)

(declare-fun lt!259944 () SeekEntryResult!5596)

(assert (=> d!84555 (and (or ((_ is Undefined!5596) lt!259944) (not ((_ is Found!5596) lt!259944)) (and (bvsge (index!24612 lt!259944) #b00000000000000000000000000000000) (bvslt (index!24612 lt!259944) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259944) ((_ is Found!5596) lt!259944) (not ((_ is MissingVacant!5596) lt!259944)) (not (= (index!24614 lt!259944) (index!24613 lt!259803))) (and (bvsge (index!24614 lt!259944) #b00000000000000000000000000000000) (bvslt (index!24614 lt!259944) (size!17504 a!3118)))) (or ((_ is Undefined!5596) lt!259944) (ite ((_ is Found!5596) lt!259944) (= (select (arr!17140 a!3118) (index!24612 lt!259944)) (select (arr!17140 a!3118) j!142)) (and ((_ is MissingVacant!5596) lt!259944) (= (index!24614 lt!259944) (index!24613 lt!259803)) (= (select (arr!17140 a!3118) (index!24614 lt!259944)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!327919 () SeekEntryResult!5596)

(assert (=> d!84555 (= lt!259944 e!327919)))

(declare-fun c!65363 () Bool)

(assert (=> d!84555 (= c!65363 (bvsge (x!53506 lt!259803) #b01111111111111111111111111111110))))

(declare-fun lt!259945 () (_ BitVec 64))

(assert (=> d!84555 (= lt!259945 (select (arr!17140 a!3118) (index!24613 lt!259803)))))

(assert (=> d!84555 (validMask!0 mask!3119)))

(assert (=> d!84555 (= (seekKeyOrZeroReturnVacant!0 (x!53506 lt!259803) (index!24613 lt!259803) (index!24613 lt!259803) (select (arr!17140 a!3118) j!142) a!3118 mask!3119) lt!259944)))

(declare-fun b!570138 () Bool)

(declare-fun c!65364 () Bool)

(assert (=> b!570138 (= c!65364 (= lt!259945 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!327918 () SeekEntryResult!5596)

(assert (=> b!570138 (= e!327918 e!327920)))

(declare-fun b!570139 () Bool)

(assert (=> b!570139 (= e!327920 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53506 lt!259803) #b00000000000000000000000000000001) (nextIndex!0 (index!24613 lt!259803) (x!53506 lt!259803) mask!3119) (index!24613 lt!259803) (select (arr!17140 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!570140 () Bool)

(assert (=> b!570140 (= e!327919 Undefined!5596)))

(declare-fun b!570141 () Bool)

(assert (=> b!570141 (= e!327919 e!327918)))

(declare-fun c!65365 () Bool)

(assert (=> b!570141 (= c!65365 (= lt!259945 (select (arr!17140 a!3118) j!142)))))

(declare-fun b!570142 () Bool)

(assert (=> b!570142 (= e!327918 (Found!5596 (index!24613 lt!259803)))))

(assert (= (and d!84555 c!65363) b!570140))

(assert (= (and d!84555 (not c!65363)) b!570141))

(assert (= (and b!570141 c!65365) b!570142))

(assert (= (and b!570141 (not c!65365)) b!570138))

(assert (= (and b!570138 c!65364) b!570137))

(assert (= (and b!570138 (not c!65364)) b!570139))

(declare-fun m!549037 () Bool)

(assert (=> d!84555 m!549037))

(declare-fun m!549039 () Bool)

(assert (=> d!84555 m!549039))

(assert (=> d!84555 m!548791))

(assert (=> d!84555 m!548801))

(declare-fun m!549041 () Bool)

(assert (=> b!570139 m!549041))

(assert (=> b!570139 m!549041))

(assert (=> b!570139 m!548783))

(declare-fun m!549043 () Bool)

(assert (=> b!570139 m!549043))

(assert (=> b!569827 d!84555))

(check-sat (not b!569899) (not b!570071) (not b!570139) (not b!570082) (not bm!32590) (not b!570081) (not d!84499) (not b!569917) (not b!569957) (not d!84543) (not bm!32579) (not bm!32589) (not d!84527) (not b!569890) (not d!84553) (not b!570037) (not d!84555) (not b!570089) (not b!569958) (not d!84493) (not b!570072) (not b!569956))
(check-sat)
