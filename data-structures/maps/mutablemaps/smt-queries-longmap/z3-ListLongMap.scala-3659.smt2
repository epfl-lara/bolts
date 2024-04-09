; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50530 () Bool)

(assert start!50530)

(declare-fun b!551999 () Bool)

(declare-fun e!318530 () Bool)

(declare-fun e!318531 () Bool)

(assert (=> b!551999 (= e!318530 e!318531)))

(declare-fun res!344748 () Bool)

(assert (=> b!551999 (=> (not res!344748) (not e!318531))))

(declare-fun lt!251027 () (_ BitVec 32))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!251026 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34766 0))(
  ( (array!34767 (arr!16690 (Array (_ BitVec 32) (_ BitVec 64))) (size!17054 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34766)

(declare-datatypes ((SeekEntryResult!5146 0))(
  ( (MissingZero!5146 (index!22811 (_ BitVec 32))) (Found!5146 (index!22812 (_ BitVec 32))) (Intermediate!5146 (undefined!5958 Bool) (index!22813 (_ BitVec 32)) (x!51769 (_ BitVec 32))) (Undefined!5146) (MissingVacant!5146 (index!22814 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34766 (_ BitVec 32)) SeekEntryResult!5146)

(assert (=> b!551999 (= res!344748 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251027 (select (arr!16690 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251026 (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118)) mask!3119)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551999 (= lt!251026 (toIndex!0 (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!551999 (= lt!251027 (toIndex!0 (select (arr!16690 a!3118) j!142) mask!3119))))

(declare-fun b!552000 () Bool)

(declare-fun e!318528 () Bool)

(assert (=> b!552000 (= e!318528 e!318530)))

(declare-fun res!344752 () Bool)

(assert (=> b!552000 (=> (not res!344752) (not e!318530))))

(declare-fun lt!251024 () SeekEntryResult!5146)

(assert (=> b!552000 (= res!344752 (or (= lt!251024 (MissingZero!5146 i!1132)) (= lt!251024 (MissingVacant!5146 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34766 (_ BitVec 32)) SeekEntryResult!5146)

(assert (=> b!552000 (= lt!251024 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!552001 () Bool)

(declare-fun res!344744 () Bool)

(assert (=> b!552001 (=> (not res!344744) (not e!318530))))

(declare-datatypes ((List!10823 0))(
  ( (Nil!10820) (Cons!10819 (h!11801 (_ BitVec 64)) (t!17059 List!10823)) )
))
(declare-fun arrayNoDuplicates!0 (array!34766 (_ BitVec 32) List!10823) Bool)

(assert (=> b!552001 (= res!344744 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10820))))

(declare-fun b!552002 () Bool)

(declare-fun res!344751 () Bool)

(assert (=> b!552002 (=> (not res!344751) (not e!318528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552002 (= res!344751 (validKeyInArray!0 (select (arr!16690 a!3118) j!142)))))

(declare-fun res!344746 () Bool)

(assert (=> start!50530 (=> (not res!344746) (not e!318528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50530 (= res!344746 (validMask!0 mask!3119))))

(assert (=> start!50530 e!318528))

(assert (=> start!50530 true))

(declare-fun array_inv!12464 (array!34766) Bool)

(assert (=> start!50530 (array_inv!12464 a!3118)))

(declare-fun b!552003 () Bool)

(declare-fun res!344750 () Bool)

(assert (=> b!552003 (=> (not res!344750) (not e!318528))))

(assert (=> b!552003 (= res!344750 (validKeyInArray!0 k0!1914))))

(declare-fun b!552004 () Bool)

(declare-fun res!344745 () Bool)

(assert (=> b!552004 (=> (not res!344745) (not e!318528))))

(assert (=> b!552004 (= res!344745 (and (= (size!17054 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17054 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17054 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552005 () Bool)

(assert (=> b!552005 (= e!318531 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge lt!251026 #b00000000000000000000000000000000) (bvslt lt!251026 (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(declare-fun e!318532 () Bool)

(assert (=> b!552005 e!318532))

(declare-fun res!344747 () Bool)

(assert (=> b!552005 (=> (not res!344747) (not e!318532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34766 (_ BitVec 32)) Bool)

(assert (=> b!552005 (= res!344747 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17066 0))(
  ( (Unit!17067) )
))
(declare-fun lt!251025 () Unit!17066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34766 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17066)

(assert (=> b!552005 (= lt!251025 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552006 () Bool)

(declare-fun res!344749 () Bool)

(assert (=> b!552006 (=> (not res!344749) (not e!318528))))

(declare-fun arrayContainsKey!0 (array!34766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552006 (= res!344749 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552007 () Bool)

(declare-fun res!344753 () Bool)

(assert (=> b!552007 (=> (not res!344753) (not e!318530))))

(assert (=> b!552007 (= res!344753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552008 () Bool)

(assert (=> b!552008 (= e!318532 (= (seekEntryOrOpen!0 (select (arr!16690 a!3118) j!142) a!3118 mask!3119) (Found!5146 j!142)))))

(assert (= (and start!50530 res!344746) b!552004))

(assert (= (and b!552004 res!344745) b!552002))

(assert (= (and b!552002 res!344751) b!552003))

(assert (= (and b!552003 res!344750) b!552006))

(assert (= (and b!552006 res!344749) b!552000))

(assert (= (and b!552000 res!344752) b!552007))

(assert (= (and b!552007 res!344753) b!552001))

(assert (= (and b!552001 res!344744) b!551999))

(assert (= (and b!551999 res!344748) b!552005))

(assert (= (and b!552005 res!344747) b!552008))

(declare-fun m!529021 () Bool)

(assert (=> b!551999 m!529021))

(declare-fun m!529023 () Bool)

(assert (=> b!551999 m!529023))

(assert (=> b!551999 m!529021))

(declare-fun m!529025 () Bool)

(assert (=> b!551999 m!529025))

(declare-fun m!529027 () Bool)

(assert (=> b!551999 m!529027))

(assert (=> b!551999 m!529025))

(declare-fun m!529029 () Bool)

(assert (=> b!551999 m!529029))

(assert (=> b!551999 m!529025))

(declare-fun m!529031 () Bool)

(assert (=> b!551999 m!529031))

(assert (=> b!551999 m!529021))

(declare-fun m!529033 () Bool)

(assert (=> b!551999 m!529033))

(declare-fun m!529035 () Bool)

(assert (=> b!552000 m!529035))

(declare-fun m!529037 () Bool)

(assert (=> b!552005 m!529037))

(declare-fun m!529039 () Bool)

(assert (=> b!552005 m!529039))

(assert (=> b!552008 m!529021))

(assert (=> b!552008 m!529021))

(declare-fun m!529041 () Bool)

(assert (=> b!552008 m!529041))

(declare-fun m!529043 () Bool)

(assert (=> b!552001 m!529043))

(declare-fun m!529045 () Bool)

(assert (=> start!50530 m!529045))

(declare-fun m!529047 () Bool)

(assert (=> start!50530 m!529047))

(declare-fun m!529049 () Bool)

(assert (=> b!552003 m!529049))

(declare-fun m!529051 () Bool)

(assert (=> b!552006 m!529051))

(assert (=> b!552002 m!529021))

(assert (=> b!552002 m!529021))

(declare-fun m!529053 () Bool)

(assert (=> b!552002 m!529053))

(declare-fun m!529055 () Bool)

(assert (=> b!552007 m!529055))

(check-sat (not b!552003) (not b!552000) (not b!552002) (not b!552006) (not b!552008) (not b!552005) (not start!50530) (not b!551999) (not b!552007) (not b!552001))
(check-sat)
(get-model)

(declare-fun d!82991 () Bool)

(assert (=> d!82991 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!552003 d!82991))

(declare-fun b!552067 () Bool)

(declare-fun c!63972 () Bool)

(declare-fun lt!251048 () (_ BitVec 64))

(assert (=> b!552067 (= c!63972 (= lt!251048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318570 () SeekEntryResult!5146)

(declare-fun e!318569 () SeekEntryResult!5146)

(assert (=> b!552067 (= e!318570 e!318569)))

(declare-fun b!552068 () Bool)

(declare-fun lt!251046 () SeekEntryResult!5146)

(assert (=> b!552068 (= e!318569 (MissingZero!5146 (index!22813 lt!251046)))))

(declare-fun b!552069 () Bool)

(assert (=> b!552069 (= e!318570 (Found!5146 (index!22813 lt!251046)))))

(declare-fun d!82993 () Bool)

(declare-fun lt!251047 () SeekEntryResult!5146)

(get-info :version)

(assert (=> d!82993 (and (or ((_ is Undefined!5146) lt!251047) (not ((_ is Found!5146) lt!251047)) (and (bvsge (index!22812 lt!251047) #b00000000000000000000000000000000) (bvslt (index!22812 lt!251047) (size!17054 a!3118)))) (or ((_ is Undefined!5146) lt!251047) ((_ is Found!5146) lt!251047) (not ((_ is MissingZero!5146) lt!251047)) (and (bvsge (index!22811 lt!251047) #b00000000000000000000000000000000) (bvslt (index!22811 lt!251047) (size!17054 a!3118)))) (or ((_ is Undefined!5146) lt!251047) ((_ is Found!5146) lt!251047) ((_ is MissingZero!5146) lt!251047) (not ((_ is MissingVacant!5146) lt!251047)) (and (bvsge (index!22814 lt!251047) #b00000000000000000000000000000000) (bvslt (index!22814 lt!251047) (size!17054 a!3118)))) (or ((_ is Undefined!5146) lt!251047) (ite ((_ is Found!5146) lt!251047) (= (select (arr!16690 a!3118) (index!22812 lt!251047)) (select (arr!16690 a!3118) j!142)) (ite ((_ is MissingZero!5146) lt!251047) (= (select (arr!16690 a!3118) (index!22811 lt!251047)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5146) lt!251047) (= (select (arr!16690 a!3118) (index!22814 lt!251047)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!318568 () SeekEntryResult!5146)

(assert (=> d!82993 (= lt!251047 e!318568)))

(declare-fun c!63973 () Bool)

(assert (=> d!82993 (= c!63973 (and ((_ is Intermediate!5146) lt!251046) (undefined!5958 lt!251046)))))

(assert (=> d!82993 (= lt!251046 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16690 a!3118) j!142) mask!3119) (select (arr!16690 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82993 (validMask!0 mask!3119)))

(assert (=> d!82993 (= (seekEntryOrOpen!0 (select (arr!16690 a!3118) j!142) a!3118 mask!3119) lt!251047)))

(declare-fun b!552070 () Bool)

(assert (=> b!552070 (= e!318568 Undefined!5146)))

(declare-fun b!552071 () Bool)

(assert (=> b!552071 (= e!318568 e!318570)))

(assert (=> b!552071 (= lt!251048 (select (arr!16690 a!3118) (index!22813 lt!251046)))))

(declare-fun c!63971 () Bool)

(assert (=> b!552071 (= c!63971 (= lt!251048 (select (arr!16690 a!3118) j!142)))))

(declare-fun b!552072 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34766 (_ BitVec 32)) SeekEntryResult!5146)

(assert (=> b!552072 (= e!318569 (seekKeyOrZeroReturnVacant!0 (x!51769 lt!251046) (index!22813 lt!251046) (index!22813 lt!251046) (select (arr!16690 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!82993 c!63973) b!552070))

(assert (= (and d!82993 (not c!63973)) b!552071))

(assert (= (and b!552071 c!63971) b!552069))

(assert (= (and b!552071 (not c!63971)) b!552067))

(assert (= (and b!552067 c!63972) b!552068))

(assert (= (and b!552067 (not c!63972)) b!552072))

(declare-fun m!529097 () Bool)

(assert (=> d!82993 m!529097))

(assert (=> d!82993 m!529045))

(assert (=> d!82993 m!529023))

(assert (=> d!82993 m!529021))

(declare-fun m!529099 () Bool)

(assert (=> d!82993 m!529099))

(declare-fun m!529101 () Bool)

(assert (=> d!82993 m!529101))

(assert (=> d!82993 m!529021))

(assert (=> d!82993 m!529023))

(declare-fun m!529103 () Bool)

(assert (=> d!82993 m!529103))

(declare-fun m!529105 () Bool)

(assert (=> b!552071 m!529105))

(assert (=> b!552072 m!529021))

(declare-fun m!529107 () Bool)

(assert (=> b!552072 m!529107))

(assert (=> b!552008 d!82993))

(declare-fun b!552086 () Bool)

(declare-fun e!318582 () Bool)

(declare-fun e!318581 () Bool)

(assert (=> b!552086 (= e!318582 e!318581)))

(declare-fun lt!251055 () (_ BitVec 64))

(assert (=> b!552086 (= lt!251055 (select (arr!16690 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!251057 () Unit!17066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34766 (_ BitVec 64) (_ BitVec 32)) Unit!17066)

(assert (=> b!552086 (= lt!251057 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!251055 #b00000000000000000000000000000000))))

(assert (=> b!552086 (arrayContainsKey!0 a!3118 lt!251055 #b00000000000000000000000000000000)))

(declare-fun lt!251056 () Unit!17066)

(assert (=> b!552086 (= lt!251056 lt!251057)))

(declare-fun res!344803 () Bool)

(assert (=> b!552086 (= res!344803 (= (seekEntryOrOpen!0 (select (arr!16690 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5146 #b00000000000000000000000000000000)))))

(assert (=> b!552086 (=> (not res!344803) (not e!318581))))

(declare-fun b!552087 () Bool)

(declare-fun call!32312 () Bool)

(assert (=> b!552087 (= e!318582 call!32312)))

(declare-fun d!83003 () Bool)

(declare-fun res!344804 () Bool)

(declare-fun e!318583 () Bool)

(assert (=> d!83003 (=> res!344804 e!318583)))

(assert (=> d!83003 (= res!344804 (bvsge #b00000000000000000000000000000000 (size!17054 a!3118)))))

(assert (=> d!83003 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!318583)))

(declare-fun b!552088 () Bool)

(assert (=> b!552088 (= e!318581 call!32312)))

(declare-fun b!552089 () Bool)

(assert (=> b!552089 (= e!318583 e!318582)))

(declare-fun c!63977 () Bool)

(assert (=> b!552089 (= c!63977 (validKeyInArray!0 (select (arr!16690 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32309 () Bool)

(assert (=> bm!32309 (= call!32312 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83003 (not res!344804)) b!552089))

(assert (= (and b!552089 c!63977) b!552086))

(assert (= (and b!552089 (not c!63977)) b!552087))

(assert (= (and b!552086 res!344803) b!552088))

(assert (= (or b!552088 b!552087) bm!32309))

(declare-fun m!529117 () Bool)

(assert (=> b!552086 m!529117))

(declare-fun m!529119 () Bool)

(assert (=> b!552086 m!529119))

(declare-fun m!529121 () Bool)

(assert (=> b!552086 m!529121))

(assert (=> b!552086 m!529117))

(declare-fun m!529123 () Bool)

(assert (=> b!552086 m!529123))

(assert (=> b!552089 m!529117))

(assert (=> b!552089 m!529117))

(declare-fun m!529125 () Bool)

(assert (=> b!552089 m!529125))

(declare-fun m!529127 () Bool)

(assert (=> bm!32309 m!529127))

(assert (=> b!552007 d!83003))

(declare-fun d!83011 () Bool)

(assert (=> d!83011 (= (validKeyInArray!0 (select (arr!16690 a!3118) j!142)) (and (not (= (select (arr!16690 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16690 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!552002 d!83011))

(declare-fun b!552090 () Bool)

(declare-fun c!63979 () Bool)

(declare-fun lt!251060 () (_ BitVec 64))

(assert (=> b!552090 (= c!63979 (= lt!251060 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318586 () SeekEntryResult!5146)

(declare-fun e!318585 () SeekEntryResult!5146)

(assert (=> b!552090 (= e!318586 e!318585)))

(declare-fun b!552091 () Bool)

(declare-fun lt!251058 () SeekEntryResult!5146)

(assert (=> b!552091 (= e!318585 (MissingZero!5146 (index!22813 lt!251058)))))

(declare-fun b!552092 () Bool)

(assert (=> b!552092 (= e!318586 (Found!5146 (index!22813 lt!251058)))))

(declare-fun d!83013 () Bool)

(declare-fun lt!251059 () SeekEntryResult!5146)

(assert (=> d!83013 (and (or ((_ is Undefined!5146) lt!251059) (not ((_ is Found!5146) lt!251059)) (and (bvsge (index!22812 lt!251059) #b00000000000000000000000000000000) (bvslt (index!22812 lt!251059) (size!17054 a!3118)))) (or ((_ is Undefined!5146) lt!251059) ((_ is Found!5146) lt!251059) (not ((_ is MissingZero!5146) lt!251059)) (and (bvsge (index!22811 lt!251059) #b00000000000000000000000000000000) (bvslt (index!22811 lt!251059) (size!17054 a!3118)))) (or ((_ is Undefined!5146) lt!251059) ((_ is Found!5146) lt!251059) ((_ is MissingZero!5146) lt!251059) (not ((_ is MissingVacant!5146) lt!251059)) (and (bvsge (index!22814 lt!251059) #b00000000000000000000000000000000) (bvslt (index!22814 lt!251059) (size!17054 a!3118)))) (or ((_ is Undefined!5146) lt!251059) (ite ((_ is Found!5146) lt!251059) (= (select (arr!16690 a!3118) (index!22812 lt!251059)) k0!1914) (ite ((_ is MissingZero!5146) lt!251059) (= (select (arr!16690 a!3118) (index!22811 lt!251059)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5146) lt!251059) (= (select (arr!16690 a!3118) (index!22814 lt!251059)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!318584 () SeekEntryResult!5146)

(assert (=> d!83013 (= lt!251059 e!318584)))

(declare-fun c!63980 () Bool)

(assert (=> d!83013 (= c!63980 (and ((_ is Intermediate!5146) lt!251058) (undefined!5958 lt!251058)))))

(assert (=> d!83013 (= lt!251058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83013 (validMask!0 mask!3119)))

(assert (=> d!83013 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!251059)))

(declare-fun b!552093 () Bool)

(assert (=> b!552093 (= e!318584 Undefined!5146)))

(declare-fun b!552094 () Bool)

(assert (=> b!552094 (= e!318584 e!318586)))

(assert (=> b!552094 (= lt!251060 (select (arr!16690 a!3118) (index!22813 lt!251058)))))

(declare-fun c!63978 () Bool)

(assert (=> b!552094 (= c!63978 (= lt!251060 k0!1914))))

(declare-fun b!552095 () Bool)

(assert (=> b!552095 (= e!318585 (seekKeyOrZeroReturnVacant!0 (x!51769 lt!251058) (index!22813 lt!251058) (index!22813 lt!251058) k0!1914 a!3118 mask!3119))))

(assert (= (and d!83013 c!63980) b!552093))

(assert (= (and d!83013 (not c!63980)) b!552094))

(assert (= (and b!552094 c!63978) b!552092))

(assert (= (and b!552094 (not c!63978)) b!552090))

(assert (= (and b!552090 c!63979) b!552091))

(assert (= (and b!552090 (not c!63979)) b!552095))

(declare-fun m!529129 () Bool)

(assert (=> d!83013 m!529129))

(assert (=> d!83013 m!529045))

(declare-fun m!529131 () Bool)

(assert (=> d!83013 m!529131))

(declare-fun m!529133 () Bool)

(assert (=> d!83013 m!529133))

(declare-fun m!529135 () Bool)

(assert (=> d!83013 m!529135))

(assert (=> d!83013 m!529131))

(declare-fun m!529137 () Bool)

(assert (=> d!83013 m!529137))

(declare-fun m!529139 () Bool)

(assert (=> b!552094 m!529139))

(declare-fun m!529141 () Bool)

(assert (=> b!552095 m!529141))

(assert (=> b!552000 d!83013))

(declare-fun b!552111 () Bool)

(declare-fun e!318599 () Bool)

(declare-fun contains!2847 (List!10823 (_ BitVec 64)) Bool)

(assert (=> b!552111 (= e!318599 (contains!2847 Nil!10820 (select (arr!16690 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!552112 () Bool)

(declare-fun e!318600 () Bool)

(declare-fun e!318598 () Bool)

(assert (=> b!552112 (= e!318600 e!318598)))

(declare-fun res!344813 () Bool)

(assert (=> b!552112 (=> (not res!344813) (not e!318598))))

(assert (=> b!552112 (= res!344813 (not e!318599))))

(declare-fun res!344812 () Bool)

(assert (=> b!552112 (=> (not res!344812) (not e!318599))))

(assert (=> b!552112 (= res!344812 (validKeyInArray!0 (select (arr!16690 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!552113 () Bool)

(declare-fun e!318597 () Bool)

(declare-fun call!32315 () Bool)

(assert (=> b!552113 (= e!318597 call!32315)))

(declare-fun bm!32312 () Bool)

(declare-fun c!63985 () Bool)

(assert (=> bm!32312 (= call!32315 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63985 (Cons!10819 (select (arr!16690 a!3118) #b00000000000000000000000000000000) Nil!10820) Nil!10820)))))

(declare-fun b!552114 () Bool)

(assert (=> b!552114 (= e!318597 call!32315)))

(declare-fun d!83015 () Bool)

(declare-fun res!344811 () Bool)

(assert (=> d!83015 (=> res!344811 e!318600)))

(assert (=> d!83015 (= res!344811 (bvsge #b00000000000000000000000000000000 (size!17054 a!3118)))))

(assert (=> d!83015 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10820) e!318600)))

(declare-fun b!552110 () Bool)

(assert (=> b!552110 (= e!318598 e!318597)))

(assert (=> b!552110 (= c!63985 (validKeyInArray!0 (select (arr!16690 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83015 (not res!344811)) b!552112))

(assert (= (and b!552112 res!344812) b!552111))

(assert (= (and b!552112 res!344813) b!552110))

(assert (= (and b!552110 c!63985) b!552113))

(assert (= (and b!552110 (not c!63985)) b!552114))

(assert (= (or b!552113 b!552114) bm!32312))

(assert (=> b!552111 m!529117))

(assert (=> b!552111 m!529117))

(declare-fun m!529143 () Bool)

(assert (=> b!552111 m!529143))

(assert (=> b!552112 m!529117))

(assert (=> b!552112 m!529117))

(assert (=> b!552112 m!529125))

(assert (=> bm!32312 m!529117))

(declare-fun m!529145 () Bool)

(assert (=> bm!32312 m!529145))

(assert (=> b!552110 m!529117))

(assert (=> b!552110 m!529117))

(assert (=> b!552110 m!529125))

(assert (=> b!552001 d!83015))

(declare-fun d!83017 () Bool)

(assert (=> d!83017 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50530 d!83017))

(declare-fun d!83027 () Bool)

(assert (=> d!83027 (= (array_inv!12464 a!3118) (bvsge (size!17054 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50530 d!83027))

(declare-fun d!83029 () Bool)

(declare-fun res!344835 () Bool)

(declare-fun e!318641 () Bool)

(assert (=> d!83029 (=> res!344835 e!318641)))

(assert (=> d!83029 (= res!344835 (= (select (arr!16690 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83029 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!318641)))

(declare-fun b!552183 () Bool)

(declare-fun e!318642 () Bool)

(assert (=> b!552183 (= e!318641 e!318642)))

(declare-fun res!344836 () Bool)

(assert (=> b!552183 (=> (not res!344836) (not e!318642))))

(assert (=> b!552183 (= res!344836 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17054 a!3118)))))

(declare-fun b!552184 () Bool)

(assert (=> b!552184 (= e!318642 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83029 (not res!344835)) b!552183))

(assert (= (and b!552183 res!344836) b!552184))

(assert (=> d!83029 m!529117))

(declare-fun m!529189 () Bool)

(assert (=> b!552184 m!529189))

(assert (=> b!552006 d!83029))

(declare-fun b!552237 () Bool)

(declare-fun e!318673 () SeekEntryResult!5146)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552237 (= e!318673 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!251027 #b00000000000000000000000000000000 mask!3119) (select (arr!16690 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!552238 () Bool)

(declare-fun lt!251113 () SeekEntryResult!5146)

(assert (=> b!552238 (and (bvsge (index!22813 lt!251113) #b00000000000000000000000000000000) (bvslt (index!22813 lt!251113) (size!17054 a!3118)))))

(declare-fun res!344853 () Bool)

(assert (=> b!552238 (= res!344853 (= (select (arr!16690 a!3118) (index!22813 lt!251113)) (select (arr!16690 a!3118) j!142)))))

(declare-fun e!318674 () Bool)

(assert (=> b!552238 (=> res!344853 e!318674)))

(declare-fun e!318672 () Bool)

(assert (=> b!552238 (= e!318672 e!318674)))

(declare-fun b!552239 () Bool)

(declare-fun e!318675 () Bool)

(assert (=> b!552239 (= e!318675 e!318672)))

(declare-fun res!344851 () Bool)

(assert (=> b!552239 (= res!344851 (and ((_ is Intermediate!5146) lt!251113) (not (undefined!5958 lt!251113)) (bvslt (x!51769 lt!251113) #b01111111111111111111111111111110) (bvsge (x!51769 lt!251113) #b00000000000000000000000000000000) (bvsge (x!51769 lt!251113) #b00000000000000000000000000000000)))))

(assert (=> b!552239 (=> (not res!344851) (not e!318672))))

(declare-fun d!83031 () Bool)

(assert (=> d!83031 e!318675))

(declare-fun c!64030 () Bool)

(assert (=> d!83031 (= c!64030 (and ((_ is Intermediate!5146) lt!251113) (undefined!5958 lt!251113)))))

(declare-fun e!318676 () SeekEntryResult!5146)

(assert (=> d!83031 (= lt!251113 e!318676)))

(declare-fun c!64031 () Bool)

(assert (=> d!83031 (= c!64031 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!251112 () (_ BitVec 64))

(assert (=> d!83031 (= lt!251112 (select (arr!16690 a!3118) lt!251027))))

(assert (=> d!83031 (validMask!0 mask!3119)))

(assert (=> d!83031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251027 (select (arr!16690 a!3118) j!142) a!3118 mask!3119) lt!251113)))

(declare-fun b!552240 () Bool)

(assert (=> b!552240 (and (bvsge (index!22813 lt!251113) #b00000000000000000000000000000000) (bvslt (index!22813 lt!251113) (size!17054 a!3118)))))

(assert (=> b!552240 (= e!318674 (= (select (arr!16690 a!3118) (index!22813 lt!251113)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!552241 () Bool)

(assert (=> b!552241 (and (bvsge (index!22813 lt!251113) #b00000000000000000000000000000000) (bvslt (index!22813 lt!251113) (size!17054 a!3118)))))

(declare-fun res!344852 () Bool)

(assert (=> b!552241 (= res!344852 (= (select (arr!16690 a!3118) (index!22813 lt!251113)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!552241 (=> res!344852 e!318674)))

(declare-fun b!552242 () Bool)

(assert (=> b!552242 (= e!318676 (Intermediate!5146 true lt!251027 #b00000000000000000000000000000000))))

(declare-fun b!552243 () Bool)

(assert (=> b!552243 (= e!318673 (Intermediate!5146 false lt!251027 #b00000000000000000000000000000000))))

(declare-fun b!552244 () Bool)

(assert (=> b!552244 (= e!318676 e!318673)))

(declare-fun c!64029 () Bool)

(assert (=> b!552244 (= c!64029 (or (= lt!251112 (select (arr!16690 a!3118) j!142)) (= (bvadd lt!251112 lt!251112) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!552245 () Bool)

(assert (=> b!552245 (= e!318675 (bvsge (x!51769 lt!251113) #b01111111111111111111111111111110))))

(assert (= (and d!83031 c!64031) b!552242))

(assert (= (and d!83031 (not c!64031)) b!552244))

(assert (= (and b!552244 c!64029) b!552243))

(assert (= (and b!552244 (not c!64029)) b!552237))

(assert (= (and d!83031 c!64030) b!552245))

(assert (= (and d!83031 (not c!64030)) b!552239))

(assert (= (and b!552239 res!344851) b!552238))

(assert (= (and b!552238 (not res!344853)) b!552241))

(assert (= (and b!552241 (not res!344852)) b!552240))

(declare-fun m!529199 () Bool)

(assert (=> b!552241 m!529199))

(assert (=> b!552238 m!529199))

(assert (=> b!552240 m!529199))

(declare-fun m!529201 () Bool)

(assert (=> d!83031 m!529201))

(assert (=> d!83031 m!529045))

(declare-fun m!529203 () Bool)

(assert (=> b!552237 m!529203))

(assert (=> b!552237 m!529203))

(assert (=> b!552237 m!529021))

(declare-fun m!529207 () Bool)

(assert (=> b!552237 m!529207))

(assert (=> b!551999 d!83031))

(declare-fun e!318681 () SeekEntryResult!5146)

(declare-fun b!552252 () Bool)

(assert (=> b!552252 (= e!318681 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!251026 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118)) mask!3119))))

(declare-fun lt!251118 () SeekEntryResult!5146)

(declare-fun b!552253 () Bool)

(assert (=> b!552253 (and (bvsge (index!22813 lt!251118) #b00000000000000000000000000000000) (bvslt (index!22813 lt!251118) (size!17054 (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118)))))))

(declare-fun res!344856 () Bool)

(assert (=> b!552253 (= res!344856 (= (select (arr!16690 (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118))) (index!22813 lt!251118)) (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun e!318682 () Bool)

(assert (=> b!552253 (=> res!344856 e!318682)))

(declare-fun e!318680 () Bool)

(assert (=> b!552253 (= e!318680 e!318682)))

(declare-fun b!552254 () Bool)

(declare-fun e!318683 () Bool)

(assert (=> b!552254 (= e!318683 e!318680)))

(declare-fun res!344854 () Bool)

(assert (=> b!552254 (= res!344854 (and ((_ is Intermediate!5146) lt!251118) (not (undefined!5958 lt!251118)) (bvslt (x!51769 lt!251118) #b01111111111111111111111111111110) (bvsge (x!51769 lt!251118) #b00000000000000000000000000000000) (bvsge (x!51769 lt!251118) #b00000000000000000000000000000000)))))

(assert (=> b!552254 (=> (not res!344854) (not e!318680))))

(declare-fun d!83041 () Bool)

(assert (=> d!83041 e!318683))

(declare-fun c!64036 () Bool)

(assert (=> d!83041 (= c!64036 (and ((_ is Intermediate!5146) lt!251118) (undefined!5958 lt!251118)))))

(declare-fun e!318684 () SeekEntryResult!5146)

(assert (=> d!83041 (= lt!251118 e!318684)))

(declare-fun c!64037 () Bool)

(assert (=> d!83041 (= c!64037 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!251117 () (_ BitVec 64))

(assert (=> d!83041 (= lt!251117 (select (arr!16690 (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118))) lt!251026))))

(assert (=> d!83041 (validMask!0 mask!3119)))

(assert (=> d!83041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251026 (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118)) mask!3119) lt!251118)))

(declare-fun b!552255 () Bool)

(assert (=> b!552255 (and (bvsge (index!22813 lt!251118) #b00000000000000000000000000000000) (bvslt (index!22813 lt!251118) (size!17054 (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118)))))))

(assert (=> b!552255 (= e!318682 (= (select (arr!16690 (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118))) (index!22813 lt!251118)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!552256 () Bool)

(assert (=> b!552256 (and (bvsge (index!22813 lt!251118) #b00000000000000000000000000000000) (bvslt (index!22813 lt!251118) (size!17054 (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118)))))))

(declare-fun res!344855 () Bool)

(assert (=> b!552256 (= res!344855 (= (select (arr!16690 (array!34767 (store (arr!16690 a!3118) i!1132 k0!1914) (size!17054 a!3118))) (index!22813 lt!251118)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!552256 (=> res!344855 e!318682)))

(declare-fun b!552257 () Bool)

(assert (=> b!552257 (= e!318684 (Intermediate!5146 true lt!251026 #b00000000000000000000000000000000))))

(declare-fun b!552258 () Bool)

(assert (=> b!552258 (= e!318681 (Intermediate!5146 false lt!251026 #b00000000000000000000000000000000))))

(declare-fun b!552259 () Bool)

(assert (=> b!552259 (= e!318684 e!318681)))

(declare-fun c!64035 () Bool)

(assert (=> b!552259 (= c!64035 (or (= lt!251117 (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!251117 lt!251117) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!552260 () Bool)

(assert (=> b!552260 (= e!318683 (bvsge (x!51769 lt!251118) #b01111111111111111111111111111110))))

(assert (= (and d!83041 c!64037) b!552257))

(assert (= (and d!83041 (not c!64037)) b!552259))

(assert (= (and b!552259 c!64035) b!552258))

(assert (= (and b!552259 (not c!64035)) b!552252))

(assert (= (and d!83041 c!64036) b!552260))

(assert (= (and d!83041 (not c!64036)) b!552254))

(assert (= (and b!552254 res!344854) b!552253))

(assert (= (and b!552253 (not res!344856)) b!552256))

(assert (= (and b!552256 (not res!344855)) b!552255))

(declare-fun m!529219 () Bool)

(assert (=> b!552256 m!529219))

(assert (=> b!552253 m!529219))

(assert (=> b!552255 m!529219))

(declare-fun m!529221 () Bool)

(assert (=> d!83041 m!529221))

(assert (=> d!83041 m!529045))

(declare-fun m!529223 () Bool)

(assert (=> b!552252 m!529223))

(assert (=> b!552252 m!529223))

(assert (=> b!552252 m!529025))

(declare-fun m!529225 () Bool)

(assert (=> b!552252 m!529225))

(assert (=> b!551999 d!83041))

(declare-fun d!83045 () Bool)

(declare-fun lt!251128 () (_ BitVec 32))

(declare-fun lt!251127 () (_ BitVec 32))

(assert (=> d!83045 (= lt!251128 (bvmul (bvxor lt!251127 (bvlshr lt!251127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83045 (= lt!251127 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83045 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344860 (let ((h!11804 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51775 (bvmul (bvxor h!11804 (bvlshr h!11804 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51775 (bvlshr x!51775 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344860 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344860 #b00000000000000000000000000000000))))))

(assert (=> d!83045 (= (toIndex!0 (select (store (arr!16690 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!251128 (bvlshr lt!251128 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551999 d!83045))

(declare-fun d!83051 () Bool)

(declare-fun lt!251130 () (_ BitVec 32))

(declare-fun lt!251129 () (_ BitVec 32))

(assert (=> d!83051 (= lt!251130 (bvmul (bvxor lt!251129 (bvlshr lt!251129 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83051 (= lt!251129 ((_ extract 31 0) (bvand (bvxor (select (arr!16690 a!3118) j!142) (bvlshr (select (arr!16690 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83051 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344860 (let ((h!11804 ((_ extract 31 0) (bvand (bvxor (select (arr!16690 a!3118) j!142) (bvlshr (select (arr!16690 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51775 (bvmul (bvxor h!11804 (bvlshr h!11804 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51775 (bvlshr x!51775 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344860 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344860 #b00000000000000000000000000000000))))))

(assert (=> d!83051 (= (toIndex!0 (select (arr!16690 a!3118) j!142) mask!3119) (bvand (bvxor lt!251130 (bvlshr lt!251130 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551999 d!83051))

(declare-fun b!552294 () Bool)

(declare-fun e!318708 () Bool)

(declare-fun e!318707 () Bool)

(assert (=> b!552294 (= e!318708 e!318707)))

(declare-fun lt!251131 () (_ BitVec 64))

(assert (=> b!552294 (= lt!251131 (select (arr!16690 a!3118) j!142))))

(declare-fun lt!251133 () Unit!17066)

(assert (=> b!552294 (= lt!251133 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!251131 j!142))))

(assert (=> b!552294 (arrayContainsKey!0 a!3118 lt!251131 #b00000000000000000000000000000000)))

(declare-fun lt!251132 () Unit!17066)

(assert (=> b!552294 (= lt!251132 lt!251133)))

(declare-fun res!344874 () Bool)

(assert (=> b!552294 (= res!344874 (= (seekEntryOrOpen!0 (select (arr!16690 a!3118) j!142) a!3118 mask!3119) (Found!5146 j!142)))))

(assert (=> b!552294 (=> (not res!344874) (not e!318707))))

(declare-fun b!552295 () Bool)

(declare-fun call!32322 () Bool)

(assert (=> b!552295 (= e!318708 call!32322)))

(declare-fun d!83053 () Bool)

(declare-fun res!344875 () Bool)

(declare-fun e!318709 () Bool)

(assert (=> d!83053 (=> res!344875 e!318709)))

(assert (=> d!83053 (= res!344875 (bvsge j!142 (size!17054 a!3118)))))

(assert (=> d!83053 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!318709)))

(declare-fun b!552296 () Bool)

(assert (=> b!552296 (= e!318707 call!32322)))

(declare-fun b!552297 () Bool)

(assert (=> b!552297 (= e!318709 e!318708)))

(declare-fun c!64047 () Bool)

(assert (=> b!552297 (= c!64047 (validKeyInArray!0 (select (arr!16690 a!3118) j!142)))))

(declare-fun bm!32319 () Bool)

(assert (=> bm!32319 (= call!32322 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83053 (not res!344875)) b!552297))

(assert (= (and b!552297 c!64047) b!552294))

(assert (= (and b!552297 (not c!64047)) b!552295))

(assert (= (and b!552294 res!344874) b!552296))

(assert (= (or b!552296 b!552295) bm!32319))

(assert (=> b!552294 m!529021))

(declare-fun m!529247 () Bool)

(assert (=> b!552294 m!529247))

(declare-fun m!529249 () Bool)

(assert (=> b!552294 m!529249))

(assert (=> b!552294 m!529021))

(assert (=> b!552294 m!529041))

(assert (=> b!552297 m!529021))

(assert (=> b!552297 m!529021))

(assert (=> b!552297 m!529053))

(declare-fun m!529253 () Bool)

(assert (=> bm!32319 m!529253))

(assert (=> b!552005 d!83053))

(declare-fun d!83057 () Bool)

(assert (=> d!83057 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!251144 () Unit!17066)

(declare-fun choose!38 (array!34766 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17066)

(assert (=> d!83057 (= lt!251144 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83057 (validMask!0 mask!3119)))

(assert (=> d!83057 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!251144)))

(declare-fun bs!17193 () Bool)

(assert (= bs!17193 d!83057))

(assert (=> bs!17193 m!529037))

(declare-fun m!529255 () Bool)

(assert (=> bs!17193 m!529255))

(assert (=> bs!17193 m!529045))

(assert (=> b!552005 d!83057))

(check-sat (not d!83057) (not b!552111) (not b!552184) (not b!552237) (not b!552112) (not b!552297) (not b!552252) (not d!82993) (not b!552110) (not b!552086) (not bm!32312) (not d!83031) (not b!552095) (not bm!32309) (not b!552072) (not d!83041) (not b!552294) (not d!83013) (not b!552089) (not bm!32319))
(check-sat)
