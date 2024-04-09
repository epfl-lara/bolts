; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50152 () Bool)

(assert start!50152)

(declare-fun b!548884 () Bool)

(declare-fun e!317044 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!249962 () (_ BitVec 32))

(assert (=> b!548884 (= e!317044 (and (bvsge mask!3119 #b00000000000000000000000000000000) (or (bvslt lt!249962 #b00000000000000000000000000000000) (bvsge lt!249962 (bvadd #b00000000000000000000000000000001 mask!3119)))))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34604 0))(
  ( (array!34605 (arr!16615 (Array (_ BitVec 32) (_ BitVec 64))) (size!16979 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34604)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548884 (= lt!249962 (toIndex!0 (select (store (arr!16615 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(declare-fun b!548885 () Bool)

(declare-fun e!317042 () Bool)

(assert (=> b!548885 (= e!317042 e!317044)))

(declare-fun res!342270 () Bool)

(assert (=> b!548885 (=> (not res!342270) (not e!317044))))

(declare-datatypes ((SeekEntryResult!5071 0))(
  ( (MissingZero!5071 (index!22511 (_ BitVec 32))) (Found!5071 (index!22512 (_ BitVec 32))) (Intermediate!5071 (undefined!5883 Bool) (index!22513 (_ BitVec 32)) (x!51473 (_ BitVec 32))) (Undefined!5071) (MissingVacant!5071 (index!22514 (_ BitVec 32))) )
))
(declare-fun lt!249961 () SeekEntryResult!5071)

(assert (=> b!548885 (= res!342270 (or (= lt!249961 (MissingZero!5071 i!1132)) (= lt!249961 (MissingVacant!5071 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34604 (_ BitVec 32)) SeekEntryResult!5071)

(assert (=> b!548885 (= lt!249961 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548886 () Bool)

(declare-fun res!342265 () Bool)

(assert (=> b!548886 (=> (not res!342265) (not e!317042))))

(assert (=> b!548886 (= res!342265 (and (= (size!16979 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16979 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16979 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548887 () Bool)

(declare-fun res!342269 () Bool)

(assert (=> b!548887 (=> (not res!342269) (not e!317044))))

(declare-datatypes ((List!10748 0))(
  ( (Nil!10745) (Cons!10744 (h!11714 (_ BitVec 64)) (t!16984 List!10748)) )
))
(declare-fun arrayNoDuplicates!0 (array!34604 (_ BitVec 32) List!10748) Bool)

(assert (=> b!548887 (= res!342269 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10745))))

(declare-fun b!548889 () Bool)

(declare-fun res!342267 () Bool)

(assert (=> b!548889 (=> (not res!342267) (not e!317042))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548889 (= res!342267 (validKeyInArray!0 (select (arr!16615 a!3118) j!142)))))

(declare-fun b!548890 () Bool)

(declare-fun res!342272 () Bool)

(assert (=> b!548890 (=> (not res!342272) (not e!317042))))

(declare-fun arrayContainsKey!0 (array!34604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548890 (= res!342272 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548891 () Bool)

(declare-fun res!342268 () Bool)

(assert (=> b!548891 (=> (not res!342268) (not e!317042))))

(assert (=> b!548891 (= res!342268 (validKeyInArray!0 k0!1914))))

(declare-fun res!342266 () Bool)

(assert (=> start!50152 (=> (not res!342266) (not e!317042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50152 (= res!342266 (validMask!0 mask!3119))))

(assert (=> start!50152 e!317042))

(assert (=> start!50152 true))

(declare-fun array_inv!12389 (array!34604) Bool)

(assert (=> start!50152 (array_inv!12389 a!3118)))

(declare-fun b!548888 () Bool)

(declare-fun res!342271 () Bool)

(assert (=> b!548888 (=> (not res!342271) (not e!317044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34604 (_ BitVec 32)) Bool)

(assert (=> b!548888 (= res!342271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50152 res!342266) b!548886))

(assert (= (and b!548886 res!342265) b!548889))

(assert (= (and b!548889 res!342267) b!548891))

(assert (= (and b!548891 res!342268) b!548890))

(assert (= (and b!548890 res!342272) b!548885))

(assert (= (and b!548885 res!342270) b!548888))

(assert (= (and b!548888 res!342271) b!548887))

(assert (= (and b!548887 res!342269) b!548884))

(declare-fun m!525829 () Bool)

(assert (=> b!548885 m!525829))

(declare-fun m!525831 () Bool)

(assert (=> start!50152 m!525831))

(declare-fun m!525833 () Bool)

(assert (=> start!50152 m!525833))

(declare-fun m!525835 () Bool)

(assert (=> b!548889 m!525835))

(assert (=> b!548889 m!525835))

(declare-fun m!525837 () Bool)

(assert (=> b!548889 m!525837))

(declare-fun m!525839 () Bool)

(assert (=> b!548891 m!525839))

(declare-fun m!525841 () Bool)

(assert (=> b!548884 m!525841))

(declare-fun m!525843 () Bool)

(assert (=> b!548884 m!525843))

(assert (=> b!548884 m!525843))

(declare-fun m!525845 () Bool)

(assert (=> b!548884 m!525845))

(declare-fun m!525847 () Bool)

(assert (=> b!548887 m!525847))

(declare-fun m!525849 () Bool)

(assert (=> b!548888 m!525849))

(declare-fun m!525851 () Bool)

(assert (=> b!548890 m!525851))

(check-sat (not b!548891) (not b!548884) (not b!548888) (not b!548890) (not start!50152) (not b!548887) (not b!548885) (not b!548889))
(check-sat)
(get-model)

(declare-fun b!548924 () Bool)

(declare-fun e!317061 () Bool)

(declare-fun e!317060 () Bool)

(assert (=> b!548924 (= e!317061 e!317060)))

(declare-fun c!63641 () Bool)

(assert (=> b!548924 (= c!63641 (validKeyInArray!0 (select (arr!16615 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548925 () Bool)

(declare-fun e!317062 () Bool)

(declare-fun call!32228 () Bool)

(assert (=> b!548925 (= e!317062 call!32228)))

(declare-fun bm!32225 () Bool)

(assert (=> bm!32225 (= call!32228 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!548926 () Bool)

(assert (=> b!548926 (= e!317060 e!317062)))

(declare-fun lt!249976 () (_ BitVec 64))

(assert (=> b!548926 (= lt!249976 (select (arr!16615 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16956 0))(
  ( (Unit!16957) )
))
(declare-fun lt!249975 () Unit!16956)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34604 (_ BitVec 64) (_ BitVec 32)) Unit!16956)

(assert (=> b!548926 (= lt!249975 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249976 #b00000000000000000000000000000000))))

(assert (=> b!548926 (arrayContainsKey!0 a!3118 lt!249976 #b00000000000000000000000000000000)))

(declare-fun lt!249977 () Unit!16956)

(assert (=> b!548926 (= lt!249977 lt!249975)))

(declare-fun res!342301 () Bool)

(assert (=> b!548926 (= res!342301 (= (seekEntryOrOpen!0 (select (arr!16615 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5071 #b00000000000000000000000000000000)))))

(assert (=> b!548926 (=> (not res!342301) (not e!317062))))

(declare-fun d!82617 () Bool)

(declare-fun res!342302 () Bool)

(assert (=> d!82617 (=> res!342302 e!317061)))

(assert (=> d!82617 (= res!342302 (bvsge #b00000000000000000000000000000000 (size!16979 a!3118)))))

(assert (=> d!82617 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!317061)))

(declare-fun b!548927 () Bool)

(assert (=> b!548927 (= e!317060 call!32228)))

(assert (= (and d!82617 (not res!342302)) b!548924))

(assert (= (and b!548924 c!63641) b!548926))

(assert (= (and b!548924 (not c!63641)) b!548927))

(assert (= (and b!548926 res!342301) b!548925))

(assert (= (or b!548925 b!548927) bm!32225))

(declare-fun m!525877 () Bool)

(assert (=> b!548924 m!525877))

(assert (=> b!548924 m!525877))

(declare-fun m!525879 () Bool)

(assert (=> b!548924 m!525879))

(declare-fun m!525881 () Bool)

(assert (=> bm!32225 m!525881))

(assert (=> b!548926 m!525877))

(declare-fun m!525883 () Bool)

(assert (=> b!548926 m!525883))

(declare-fun m!525885 () Bool)

(assert (=> b!548926 m!525885))

(assert (=> b!548926 m!525877))

(declare-fun m!525887 () Bool)

(assert (=> b!548926 m!525887))

(assert (=> b!548888 d!82617))

(declare-fun d!82619 () Bool)

(assert (=> d!82619 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50152 d!82619))

(declare-fun d!82629 () Bool)

(assert (=> d!82629 (= (array_inv!12389 a!3118) (bvsge (size!16979 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50152 d!82629))

(declare-fun bm!32231 () Bool)

(declare-fun call!32234 () Bool)

(declare-fun c!63647 () Bool)

(assert (=> bm!32231 (= call!32234 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63647 (Cons!10744 (select (arr!16615 a!3118) #b00000000000000000000000000000000) Nil!10745) Nil!10745)))))

(declare-fun b!548953 () Bool)

(declare-fun e!317083 () Bool)

(assert (=> b!548953 (= e!317083 call!32234)))

(declare-fun b!548954 () Bool)

(declare-fun e!317086 () Bool)

(declare-fun contains!2834 (List!10748 (_ BitVec 64)) Bool)

(assert (=> b!548954 (= e!317086 (contains!2834 Nil!10745 (select (arr!16615 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548955 () Bool)

(declare-fun e!317084 () Bool)

(declare-fun e!317085 () Bool)

(assert (=> b!548955 (= e!317084 e!317085)))

(declare-fun res!342320 () Bool)

(assert (=> b!548955 (=> (not res!342320) (not e!317085))))

(assert (=> b!548955 (= res!342320 (not e!317086))))

(declare-fun res!342319 () Bool)

(assert (=> b!548955 (=> (not res!342319) (not e!317086))))

(assert (=> b!548955 (= res!342319 (validKeyInArray!0 (select (arr!16615 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82631 () Bool)

(declare-fun res!342318 () Bool)

(assert (=> d!82631 (=> res!342318 e!317084)))

(assert (=> d!82631 (= res!342318 (bvsge #b00000000000000000000000000000000 (size!16979 a!3118)))))

(assert (=> d!82631 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10745) e!317084)))

(declare-fun b!548956 () Bool)

(assert (=> b!548956 (= e!317085 e!317083)))

(assert (=> b!548956 (= c!63647 (validKeyInArray!0 (select (arr!16615 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548957 () Bool)

(assert (=> b!548957 (= e!317083 call!32234)))

(assert (= (and d!82631 (not res!342318)) b!548955))

(assert (= (and b!548955 res!342319) b!548954))

(assert (= (and b!548955 res!342320) b!548956))

(assert (= (and b!548956 c!63647) b!548957))

(assert (= (and b!548956 (not c!63647)) b!548953))

(assert (= (or b!548957 b!548953) bm!32231))

(assert (=> bm!32231 m!525877))

(declare-fun m!525897 () Bool)

(assert (=> bm!32231 m!525897))

(assert (=> b!548954 m!525877))

(assert (=> b!548954 m!525877))

(declare-fun m!525899 () Bool)

(assert (=> b!548954 m!525899))

(assert (=> b!548955 m!525877))

(assert (=> b!548955 m!525877))

(assert (=> b!548955 m!525879))

(assert (=> b!548956 m!525877))

(assert (=> b!548956 m!525877))

(assert (=> b!548956 m!525879))

(assert (=> b!548887 d!82631))

(declare-fun d!82633 () Bool)

(assert (=> d!82633 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548891 d!82633))

(declare-fun d!82635 () Bool)

(declare-fun res!342325 () Bool)

(declare-fun e!317091 () Bool)

(assert (=> d!82635 (=> res!342325 e!317091)))

(assert (=> d!82635 (= res!342325 (= (select (arr!16615 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82635 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!317091)))

(declare-fun b!548962 () Bool)

(declare-fun e!317092 () Bool)

(assert (=> b!548962 (= e!317091 e!317092)))

(declare-fun res!342326 () Bool)

(assert (=> b!548962 (=> (not res!342326) (not e!317092))))

(assert (=> b!548962 (= res!342326 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16979 a!3118)))))

(declare-fun b!548963 () Bool)

(assert (=> b!548963 (= e!317092 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82635 (not res!342325)) b!548962))

(assert (= (and b!548962 res!342326) b!548963))

(assert (=> d!82635 m!525877))

(declare-fun m!525901 () Bool)

(assert (=> b!548963 m!525901))

(assert (=> b!548890 d!82635))

(declare-fun b!549018 () Bool)

(declare-fun lt!250008 () SeekEntryResult!5071)

(declare-fun e!317124 () SeekEntryResult!5071)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34604 (_ BitVec 32)) SeekEntryResult!5071)

(assert (=> b!549018 (= e!317124 (seekKeyOrZeroReturnVacant!0 (x!51473 lt!250008) (index!22513 lt!250008) (index!22513 lt!250008) k0!1914 a!3118 mask!3119))))

(declare-fun b!549019 () Bool)

(declare-fun e!317125 () SeekEntryResult!5071)

(assert (=> b!549019 (= e!317125 (Found!5071 (index!22513 lt!250008)))))

(declare-fun b!549020 () Bool)

(declare-fun e!317123 () SeekEntryResult!5071)

(assert (=> b!549020 (= e!317123 Undefined!5071)))

(declare-fun d!82641 () Bool)

(declare-fun lt!250010 () SeekEntryResult!5071)

(get-info :version)

(assert (=> d!82641 (and (or ((_ is Undefined!5071) lt!250010) (not ((_ is Found!5071) lt!250010)) (and (bvsge (index!22512 lt!250010) #b00000000000000000000000000000000) (bvslt (index!22512 lt!250010) (size!16979 a!3118)))) (or ((_ is Undefined!5071) lt!250010) ((_ is Found!5071) lt!250010) (not ((_ is MissingZero!5071) lt!250010)) (and (bvsge (index!22511 lt!250010) #b00000000000000000000000000000000) (bvslt (index!22511 lt!250010) (size!16979 a!3118)))) (or ((_ is Undefined!5071) lt!250010) ((_ is Found!5071) lt!250010) ((_ is MissingZero!5071) lt!250010) (not ((_ is MissingVacant!5071) lt!250010)) (and (bvsge (index!22514 lt!250010) #b00000000000000000000000000000000) (bvslt (index!22514 lt!250010) (size!16979 a!3118)))) (or ((_ is Undefined!5071) lt!250010) (ite ((_ is Found!5071) lt!250010) (= (select (arr!16615 a!3118) (index!22512 lt!250010)) k0!1914) (ite ((_ is MissingZero!5071) lt!250010) (= (select (arr!16615 a!3118) (index!22511 lt!250010)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5071) lt!250010) (= (select (arr!16615 a!3118) (index!22514 lt!250010)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82641 (= lt!250010 e!317123)))

(declare-fun c!63673 () Bool)

(assert (=> d!82641 (= c!63673 (and ((_ is Intermediate!5071) lt!250008) (undefined!5883 lt!250008)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34604 (_ BitVec 32)) SeekEntryResult!5071)

(assert (=> d!82641 (= lt!250008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82641 (validMask!0 mask!3119)))

(assert (=> d!82641 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!250010)))

(declare-fun b!549021 () Bool)

(assert (=> b!549021 (= e!317124 (MissingZero!5071 (index!22513 lt!250008)))))

(declare-fun b!549022 () Bool)

(declare-fun c!63672 () Bool)

(declare-fun lt!250009 () (_ BitVec 64))

(assert (=> b!549022 (= c!63672 (= lt!250009 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!549022 (= e!317125 e!317124)))

(declare-fun b!549023 () Bool)

(assert (=> b!549023 (= e!317123 e!317125)))

(assert (=> b!549023 (= lt!250009 (select (arr!16615 a!3118) (index!22513 lt!250008)))))

(declare-fun c!63674 () Bool)

(assert (=> b!549023 (= c!63674 (= lt!250009 k0!1914))))

(assert (= (and d!82641 c!63673) b!549020))

(assert (= (and d!82641 (not c!63673)) b!549023))

(assert (= (and b!549023 c!63674) b!549019))

(assert (= (and b!549023 (not c!63674)) b!549022))

(assert (= (and b!549022 c!63672) b!549021))

(assert (= (and b!549022 (not c!63672)) b!549018))

(declare-fun m!525935 () Bool)

(assert (=> b!549018 m!525935))

(declare-fun m!525937 () Bool)

(assert (=> d!82641 m!525937))

(declare-fun m!525939 () Bool)

(assert (=> d!82641 m!525939))

(assert (=> d!82641 m!525937))

(declare-fun m!525941 () Bool)

(assert (=> d!82641 m!525941))

(assert (=> d!82641 m!525831))

(declare-fun m!525943 () Bool)

(assert (=> d!82641 m!525943))

(declare-fun m!525945 () Bool)

(assert (=> d!82641 m!525945))

(declare-fun m!525947 () Bool)

(assert (=> b!549023 m!525947))

(assert (=> b!548885 d!82641))

(declare-fun d!82651 () Bool)

(declare-fun lt!250025 () (_ BitVec 32))

(declare-fun lt!250024 () (_ BitVec 32))

(assert (=> d!82651 (= lt!250025 (bvmul (bvxor lt!250024 (bvlshr lt!250024 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82651 (= lt!250024 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16615 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16615 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82651 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!342344 (let ((h!11717 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16615 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16615 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51476 (bvmul (bvxor h!11717 (bvlshr h!11717 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51476 (bvlshr x!51476 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!342344 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!342344 #b00000000000000000000000000000000))))))

(assert (=> d!82651 (= (toIndex!0 (select (store (arr!16615 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!250025 (bvlshr lt!250025 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!548884 d!82651))

(declare-fun d!82657 () Bool)

(assert (=> d!82657 (= (validKeyInArray!0 (select (arr!16615 a!3118) j!142)) (and (not (= (select (arr!16615 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16615 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548889 d!82657))

(check-sat (not b!548963) (not b!548956) (not b!548924) (not b!548926) (not b!549018) (not d!82641) (not b!548954) (not bm!32231) (not bm!32225) (not b!548955))
(check-sat)
