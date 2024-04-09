; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51778 () Bool)

(assert start!51778)

(declare-fun b!566198 () Bool)

(declare-fun res!357319 () Bool)

(declare-fun e!325839 () Bool)

(assert (=> b!566198 (=> (not res!357319) (not e!325839))))

(declare-datatypes ((array!35540 0))(
  ( (array!35541 (arr!17065 (Array (_ BitVec 32) (_ BitVec 64))) (size!17429 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35540)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566198 (= res!357319 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566200 () Bool)

(declare-fun res!357326 () Bool)

(declare-fun e!325843 () Bool)

(assert (=> b!566200 (=> (not res!357326) (not e!325843))))

(declare-datatypes ((List!11198 0))(
  ( (Nil!11195) (Cons!11194 (h!12200 (_ BitVec 64)) (t!17434 List!11198)) )
))
(declare-fun arrayNoDuplicates!0 (array!35540 (_ BitVec 32) List!11198) Bool)

(assert (=> b!566200 (= res!357326 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11195))))

(declare-fun b!566201 () Bool)

(declare-fun res!357317 () Bool)

(assert (=> b!566201 (=> (not res!357317) (not e!325839))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566201 (= res!357317 (and (= (size!17429 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17429 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17429 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566202 () Bool)

(assert (=> b!566202 (= e!325839 e!325843)))

(declare-fun res!357325 () Bool)

(assert (=> b!566202 (=> (not res!357325) (not e!325843))))

(declare-datatypes ((SeekEntryResult!5521 0))(
  ( (MissingZero!5521 (index!24311 (_ BitVec 32))) (Found!5521 (index!24312 (_ BitVec 32))) (Intermediate!5521 (undefined!6333 Bool) (index!24313 (_ BitVec 32)) (x!53201 (_ BitVec 32))) (Undefined!5521) (MissingVacant!5521 (index!24314 (_ BitVec 32))) )
))
(declare-fun lt!258074 () SeekEntryResult!5521)

(assert (=> b!566202 (= res!357325 (or (= lt!258074 (MissingZero!5521 i!1132)) (= lt!258074 (MissingVacant!5521 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35540 (_ BitVec 32)) SeekEntryResult!5521)

(assert (=> b!566202 (= lt!258074 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun lt!258076 () SeekEntryResult!5521)

(declare-fun lt!258075 () array!35540)

(declare-fun lt!258073 () (_ BitVec 64))

(declare-fun b!566203 () Bool)

(declare-fun e!325842 () Bool)

(assert (=> b!566203 (= e!325842 (= lt!258076 (seekEntryOrOpen!0 lt!258073 lt!258075 mask!3119)))))

(declare-fun b!566204 () Bool)

(declare-fun res!357323 () Bool)

(assert (=> b!566204 (=> (not res!357323) (not e!325839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566204 (= res!357323 (validKeyInArray!0 k0!1914))))

(declare-fun b!566205 () Bool)

(declare-fun e!325841 () Bool)

(assert (=> b!566205 (= e!325843 e!325841)))

(declare-fun res!357324 () Bool)

(assert (=> b!566205 (=> (not res!357324) (not e!325841))))

(declare-fun lt!258071 () SeekEntryResult!5521)

(declare-fun lt!258077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35540 (_ BitVec 32)) SeekEntryResult!5521)

(assert (=> b!566205 (= res!357324 (= lt!258071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258077 lt!258073 lt!258075 mask!3119)))))

(declare-fun lt!258070 () (_ BitVec 32))

(assert (=> b!566205 (= lt!258071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258070 (select (arr!17065 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566205 (= lt!258077 (toIndex!0 lt!258073 mask!3119))))

(assert (=> b!566205 (= lt!258073 (select (store (arr!17065 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!566205 (= lt!258070 (toIndex!0 (select (arr!17065 a!3118) j!142) mask!3119))))

(assert (=> b!566205 (= lt!258075 (array!35541 (store (arr!17065 a!3118) i!1132 k0!1914) (size!17429 a!3118)))))

(declare-fun res!357318 () Bool)

(assert (=> start!51778 (=> (not res!357318) (not e!325839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51778 (= res!357318 (validMask!0 mask!3119))))

(assert (=> start!51778 e!325839))

(assert (=> start!51778 true))

(declare-fun array_inv!12839 (array!35540) Bool)

(assert (=> start!51778 (array_inv!12839 a!3118)))

(declare-fun b!566199 () Bool)

(declare-fun res!357322 () Bool)

(assert (=> b!566199 (=> (not res!357322) (not e!325839))))

(assert (=> b!566199 (= res!357322 (validKeyInArray!0 (select (arr!17065 a!3118) j!142)))))

(declare-fun b!566206 () Bool)

(assert (=> b!566206 (= e!325841 (not e!325842))))

(declare-fun res!357320 () Bool)

(assert (=> b!566206 (=> res!357320 e!325842)))

(get-info :version)

(assert (=> b!566206 (= res!357320 (or (not ((_ is Intermediate!5521) lt!258071)) (not (undefined!6333 lt!258071))))))

(assert (=> b!566206 (= lt!258076 (Found!5521 j!142))))

(assert (=> b!566206 (= lt!258076 (seekEntryOrOpen!0 (select (arr!17065 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35540 (_ BitVec 32)) Bool)

(assert (=> b!566206 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17744 0))(
  ( (Unit!17745) )
))
(declare-fun lt!258072 () Unit!17744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17744)

(assert (=> b!566206 (= lt!258072 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566207 () Bool)

(declare-fun res!357321 () Bool)

(assert (=> b!566207 (=> (not res!357321) (not e!325843))))

(assert (=> b!566207 (= res!357321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51778 res!357318) b!566201))

(assert (= (and b!566201 res!357317) b!566199))

(assert (= (and b!566199 res!357322) b!566204))

(assert (= (and b!566204 res!357323) b!566198))

(assert (= (and b!566198 res!357319) b!566202))

(assert (= (and b!566202 res!357325) b!566207))

(assert (= (and b!566207 res!357321) b!566200))

(assert (= (and b!566200 res!357326) b!566205))

(assert (= (and b!566205 res!357324) b!566206))

(assert (= (and b!566206 (not res!357320)) b!566203))

(declare-fun m!544887 () Bool)

(assert (=> b!566199 m!544887))

(assert (=> b!566199 m!544887))

(declare-fun m!544889 () Bool)

(assert (=> b!566199 m!544889))

(declare-fun m!544891 () Bool)

(assert (=> b!566205 m!544891))

(assert (=> b!566205 m!544887))

(declare-fun m!544893 () Bool)

(assert (=> b!566205 m!544893))

(assert (=> b!566205 m!544887))

(assert (=> b!566205 m!544887))

(declare-fun m!544895 () Bool)

(assert (=> b!566205 m!544895))

(declare-fun m!544897 () Bool)

(assert (=> b!566205 m!544897))

(declare-fun m!544899 () Bool)

(assert (=> b!566205 m!544899))

(declare-fun m!544901 () Bool)

(assert (=> b!566205 m!544901))

(declare-fun m!544903 () Bool)

(assert (=> b!566202 m!544903))

(declare-fun m!544905 () Bool)

(assert (=> start!51778 m!544905))

(declare-fun m!544907 () Bool)

(assert (=> start!51778 m!544907))

(declare-fun m!544909 () Bool)

(assert (=> b!566198 m!544909))

(assert (=> b!566206 m!544887))

(assert (=> b!566206 m!544887))

(declare-fun m!544911 () Bool)

(assert (=> b!566206 m!544911))

(declare-fun m!544913 () Bool)

(assert (=> b!566206 m!544913))

(declare-fun m!544915 () Bool)

(assert (=> b!566206 m!544915))

(declare-fun m!544917 () Bool)

(assert (=> b!566200 m!544917))

(declare-fun m!544919 () Bool)

(assert (=> b!566207 m!544919))

(declare-fun m!544921 () Bool)

(assert (=> b!566203 m!544921))

(declare-fun m!544923 () Bool)

(assert (=> b!566204 m!544923))

(check-sat (not start!51778) (not b!566204) (not b!566200) (not b!566207) (not b!566205) (not b!566203) (not b!566199) (not b!566206) (not b!566202) (not b!566198))
(check-sat)
(get-model)

(declare-fun b!566246 () Bool)

(declare-fun e!325866 () Bool)

(declare-fun e!325867 () Bool)

(assert (=> b!566246 (= e!325866 e!325867)))

(declare-fun lt!258109 () (_ BitVec 64))

(assert (=> b!566246 (= lt!258109 (select (arr!17065 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258110 () Unit!17744)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35540 (_ BitVec 64) (_ BitVec 32)) Unit!17744)

(assert (=> b!566246 (= lt!258110 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258109 #b00000000000000000000000000000000))))

(assert (=> b!566246 (arrayContainsKey!0 a!3118 lt!258109 #b00000000000000000000000000000000)))

(declare-fun lt!258108 () Unit!17744)

(assert (=> b!566246 (= lt!258108 lt!258110)))

(declare-fun res!357361 () Bool)

(assert (=> b!566246 (= res!357361 (= (seekEntryOrOpen!0 (select (arr!17065 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5521 #b00000000000000000000000000000000)))))

(assert (=> b!566246 (=> (not res!357361) (not e!325867))))

(declare-fun b!566247 () Bool)

(declare-fun e!325865 () Bool)

(assert (=> b!566247 (= e!325865 e!325866)))

(declare-fun c!64790 () Bool)

(assert (=> b!566247 (= c!64790 (validKeyInArray!0 (select (arr!17065 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566248 () Bool)

(declare-fun call!32477 () Bool)

(assert (=> b!566248 (= e!325866 call!32477)))

(declare-fun b!566249 () Bool)

(assert (=> b!566249 (= e!325867 call!32477)))

(declare-fun bm!32474 () Bool)

(assert (=> bm!32474 (= call!32477 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83979 () Bool)

(declare-fun res!357362 () Bool)

(assert (=> d!83979 (=> res!357362 e!325865)))

(assert (=> d!83979 (= res!357362 (bvsge #b00000000000000000000000000000000 (size!17429 a!3118)))))

(assert (=> d!83979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!325865)))

(assert (= (and d!83979 (not res!357362)) b!566247))

(assert (= (and b!566247 c!64790) b!566246))

(assert (= (and b!566247 (not c!64790)) b!566248))

(assert (= (and b!566246 res!357361) b!566249))

(assert (= (or b!566249 b!566248) bm!32474))

(declare-fun m!544963 () Bool)

(assert (=> b!566246 m!544963))

(declare-fun m!544965 () Bool)

(assert (=> b!566246 m!544965))

(declare-fun m!544967 () Bool)

(assert (=> b!566246 m!544967))

(assert (=> b!566246 m!544963))

(declare-fun m!544969 () Bool)

(assert (=> b!566246 m!544969))

(assert (=> b!566247 m!544963))

(assert (=> b!566247 m!544963))

(declare-fun m!544971 () Bool)

(assert (=> b!566247 m!544971))

(declare-fun m!544973 () Bool)

(assert (=> bm!32474 m!544973))

(assert (=> b!566207 d!83979))

(declare-fun e!325876 () SeekEntryResult!5521)

(declare-fun lt!258117 () SeekEntryResult!5521)

(declare-fun b!566262 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35540 (_ BitVec 32)) SeekEntryResult!5521)

(assert (=> b!566262 (= e!325876 (seekKeyOrZeroReturnVacant!0 (x!53201 lt!258117) (index!24313 lt!258117) (index!24313 lt!258117) (select (arr!17065 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566263 () Bool)

(declare-fun c!64799 () Bool)

(declare-fun lt!258118 () (_ BitVec 64))

(assert (=> b!566263 (= c!64799 (= lt!258118 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!325874 () SeekEntryResult!5521)

(assert (=> b!566263 (= e!325874 e!325876)))

(declare-fun b!566264 () Bool)

(assert (=> b!566264 (= e!325874 (Found!5521 (index!24313 lt!258117)))))

(declare-fun b!566265 () Bool)

(declare-fun e!325875 () SeekEntryResult!5521)

(assert (=> b!566265 (= e!325875 e!325874)))

(assert (=> b!566265 (= lt!258118 (select (arr!17065 a!3118) (index!24313 lt!258117)))))

(declare-fun c!64798 () Bool)

(assert (=> b!566265 (= c!64798 (= lt!258118 (select (arr!17065 a!3118) j!142)))))

(declare-fun b!566266 () Bool)

(assert (=> b!566266 (= e!325875 Undefined!5521)))

(declare-fun b!566267 () Bool)

(assert (=> b!566267 (= e!325876 (MissingZero!5521 (index!24313 lt!258117)))))

(declare-fun d!83981 () Bool)

(declare-fun lt!258119 () SeekEntryResult!5521)

(assert (=> d!83981 (and (or ((_ is Undefined!5521) lt!258119) (not ((_ is Found!5521) lt!258119)) (and (bvsge (index!24312 lt!258119) #b00000000000000000000000000000000) (bvslt (index!24312 lt!258119) (size!17429 a!3118)))) (or ((_ is Undefined!5521) lt!258119) ((_ is Found!5521) lt!258119) (not ((_ is MissingZero!5521) lt!258119)) (and (bvsge (index!24311 lt!258119) #b00000000000000000000000000000000) (bvslt (index!24311 lt!258119) (size!17429 a!3118)))) (or ((_ is Undefined!5521) lt!258119) ((_ is Found!5521) lt!258119) ((_ is MissingZero!5521) lt!258119) (not ((_ is MissingVacant!5521) lt!258119)) (and (bvsge (index!24314 lt!258119) #b00000000000000000000000000000000) (bvslt (index!24314 lt!258119) (size!17429 a!3118)))) (or ((_ is Undefined!5521) lt!258119) (ite ((_ is Found!5521) lt!258119) (= (select (arr!17065 a!3118) (index!24312 lt!258119)) (select (arr!17065 a!3118) j!142)) (ite ((_ is MissingZero!5521) lt!258119) (= (select (arr!17065 a!3118) (index!24311 lt!258119)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5521) lt!258119) (= (select (arr!17065 a!3118) (index!24314 lt!258119)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83981 (= lt!258119 e!325875)))

(declare-fun c!64797 () Bool)

(assert (=> d!83981 (= c!64797 (and ((_ is Intermediate!5521) lt!258117) (undefined!6333 lt!258117)))))

(assert (=> d!83981 (= lt!258117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17065 a!3118) j!142) mask!3119) (select (arr!17065 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83981 (validMask!0 mask!3119)))

(assert (=> d!83981 (= (seekEntryOrOpen!0 (select (arr!17065 a!3118) j!142) a!3118 mask!3119) lt!258119)))

(assert (= (and d!83981 c!64797) b!566266))

(assert (= (and d!83981 (not c!64797)) b!566265))

(assert (= (and b!566265 c!64798) b!566264))

(assert (= (and b!566265 (not c!64798)) b!566263))

(assert (= (and b!566263 c!64799) b!566267))

(assert (= (and b!566263 (not c!64799)) b!566262))

(assert (=> b!566262 m!544887))

(declare-fun m!544975 () Bool)

(assert (=> b!566262 m!544975))

(declare-fun m!544977 () Bool)

(assert (=> b!566265 m!544977))

(declare-fun m!544979 () Bool)

(assert (=> d!83981 m!544979))

(assert (=> d!83981 m!544893))

(assert (=> d!83981 m!544887))

(declare-fun m!544981 () Bool)

(assert (=> d!83981 m!544981))

(declare-fun m!544983 () Bool)

(assert (=> d!83981 m!544983))

(assert (=> d!83981 m!544905))

(assert (=> d!83981 m!544887))

(assert (=> d!83981 m!544893))

(declare-fun m!544985 () Bool)

(assert (=> d!83981 m!544985))

(assert (=> b!566206 d!83981))

(declare-fun b!566268 () Bool)

(declare-fun e!325878 () Bool)

(declare-fun e!325879 () Bool)

(assert (=> b!566268 (= e!325878 e!325879)))

(declare-fun lt!258121 () (_ BitVec 64))

(assert (=> b!566268 (= lt!258121 (select (arr!17065 a!3118) j!142))))

(declare-fun lt!258122 () Unit!17744)

(assert (=> b!566268 (= lt!258122 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258121 j!142))))

(assert (=> b!566268 (arrayContainsKey!0 a!3118 lt!258121 #b00000000000000000000000000000000)))

(declare-fun lt!258120 () Unit!17744)

(assert (=> b!566268 (= lt!258120 lt!258122)))

(declare-fun res!357363 () Bool)

(assert (=> b!566268 (= res!357363 (= (seekEntryOrOpen!0 (select (arr!17065 a!3118) j!142) a!3118 mask!3119) (Found!5521 j!142)))))

(assert (=> b!566268 (=> (not res!357363) (not e!325879))))

(declare-fun b!566269 () Bool)

(declare-fun e!325877 () Bool)

(assert (=> b!566269 (= e!325877 e!325878)))

(declare-fun c!64800 () Bool)

(assert (=> b!566269 (= c!64800 (validKeyInArray!0 (select (arr!17065 a!3118) j!142)))))

(declare-fun b!566270 () Bool)

(declare-fun call!32478 () Bool)

(assert (=> b!566270 (= e!325878 call!32478)))

(declare-fun b!566271 () Bool)

(assert (=> b!566271 (= e!325879 call!32478)))

(declare-fun bm!32475 () Bool)

(assert (=> bm!32475 (= call!32478 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83987 () Bool)

(declare-fun res!357364 () Bool)

(assert (=> d!83987 (=> res!357364 e!325877)))

(assert (=> d!83987 (= res!357364 (bvsge j!142 (size!17429 a!3118)))))

(assert (=> d!83987 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!325877)))

(assert (= (and d!83987 (not res!357364)) b!566269))

(assert (= (and b!566269 c!64800) b!566268))

(assert (= (and b!566269 (not c!64800)) b!566270))

(assert (= (and b!566268 res!357363) b!566271))

(assert (= (or b!566271 b!566270) bm!32475))

(assert (=> b!566268 m!544887))

(declare-fun m!544987 () Bool)

(assert (=> b!566268 m!544987))

(declare-fun m!544989 () Bool)

(assert (=> b!566268 m!544989))

(assert (=> b!566268 m!544887))

(assert (=> b!566268 m!544911))

(assert (=> b!566269 m!544887))

(assert (=> b!566269 m!544887))

(assert (=> b!566269 m!544889))

(declare-fun m!544991 () Bool)

(assert (=> bm!32475 m!544991))

(assert (=> b!566206 d!83987))

(declare-fun d!83989 () Bool)

(assert (=> d!83989 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258125 () Unit!17744)

(declare-fun choose!38 (array!35540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17744)

(assert (=> d!83989 (= lt!258125 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83989 (validMask!0 mask!3119)))

(assert (=> d!83989 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258125)))

(declare-fun bs!17592 () Bool)

(assert (= bs!17592 d!83989))

(assert (=> bs!17592 m!544913))

(declare-fun m!544993 () Bool)

(assert (=> bs!17592 m!544993))

(assert (=> bs!17592 m!544905))

(assert (=> b!566206 d!83989))

(declare-fun b!566272 () Bool)

(declare-fun lt!258126 () SeekEntryResult!5521)

(declare-fun e!325882 () SeekEntryResult!5521)

(assert (=> b!566272 (= e!325882 (seekKeyOrZeroReturnVacant!0 (x!53201 lt!258126) (index!24313 lt!258126) (index!24313 lt!258126) lt!258073 lt!258075 mask!3119))))

(declare-fun b!566273 () Bool)

(declare-fun c!64803 () Bool)

(declare-fun lt!258127 () (_ BitVec 64))

(assert (=> b!566273 (= c!64803 (= lt!258127 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!325880 () SeekEntryResult!5521)

(assert (=> b!566273 (= e!325880 e!325882)))

(declare-fun b!566274 () Bool)

(assert (=> b!566274 (= e!325880 (Found!5521 (index!24313 lt!258126)))))

(declare-fun b!566275 () Bool)

(declare-fun e!325881 () SeekEntryResult!5521)

(assert (=> b!566275 (= e!325881 e!325880)))

(assert (=> b!566275 (= lt!258127 (select (arr!17065 lt!258075) (index!24313 lt!258126)))))

(declare-fun c!64802 () Bool)

(assert (=> b!566275 (= c!64802 (= lt!258127 lt!258073))))

(declare-fun b!566276 () Bool)

(assert (=> b!566276 (= e!325881 Undefined!5521)))

(declare-fun b!566277 () Bool)

(assert (=> b!566277 (= e!325882 (MissingZero!5521 (index!24313 lt!258126)))))

(declare-fun d!83995 () Bool)

(declare-fun lt!258128 () SeekEntryResult!5521)

(assert (=> d!83995 (and (or ((_ is Undefined!5521) lt!258128) (not ((_ is Found!5521) lt!258128)) (and (bvsge (index!24312 lt!258128) #b00000000000000000000000000000000) (bvslt (index!24312 lt!258128) (size!17429 lt!258075)))) (or ((_ is Undefined!5521) lt!258128) ((_ is Found!5521) lt!258128) (not ((_ is MissingZero!5521) lt!258128)) (and (bvsge (index!24311 lt!258128) #b00000000000000000000000000000000) (bvslt (index!24311 lt!258128) (size!17429 lt!258075)))) (or ((_ is Undefined!5521) lt!258128) ((_ is Found!5521) lt!258128) ((_ is MissingZero!5521) lt!258128) (not ((_ is MissingVacant!5521) lt!258128)) (and (bvsge (index!24314 lt!258128) #b00000000000000000000000000000000) (bvslt (index!24314 lt!258128) (size!17429 lt!258075)))) (or ((_ is Undefined!5521) lt!258128) (ite ((_ is Found!5521) lt!258128) (= (select (arr!17065 lt!258075) (index!24312 lt!258128)) lt!258073) (ite ((_ is MissingZero!5521) lt!258128) (= (select (arr!17065 lt!258075) (index!24311 lt!258128)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5521) lt!258128) (= (select (arr!17065 lt!258075) (index!24314 lt!258128)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83995 (= lt!258128 e!325881)))

(declare-fun c!64801 () Bool)

(assert (=> d!83995 (= c!64801 (and ((_ is Intermediate!5521) lt!258126) (undefined!6333 lt!258126)))))

(assert (=> d!83995 (= lt!258126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!258073 mask!3119) lt!258073 lt!258075 mask!3119))))

(assert (=> d!83995 (validMask!0 mask!3119)))

(assert (=> d!83995 (= (seekEntryOrOpen!0 lt!258073 lt!258075 mask!3119) lt!258128)))

(assert (= (and d!83995 c!64801) b!566276))

(assert (= (and d!83995 (not c!64801)) b!566275))

(assert (= (and b!566275 c!64802) b!566274))

(assert (= (and b!566275 (not c!64802)) b!566273))

(assert (= (and b!566273 c!64803) b!566277))

(assert (= (and b!566273 (not c!64803)) b!566272))

(declare-fun m!544995 () Bool)

(assert (=> b!566272 m!544995))

(declare-fun m!544997 () Bool)

(assert (=> b!566275 m!544997))

(declare-fun m!544999 () Bool)

(assert (=> d!83995 m!544999))

(assert (=> d!83995 m!544891))

(declare-fun m!545001 () Bool)

(assert (=> d!83995 m!545001))

(declare-fun m!545003 () Bool)

(assert (=> d!83995 m!545003))

(assert (=> d!83995 m!544905))

(assert (=> d!83995 m!544891))

(declare-fun m!545005 () Bool)

(assert (=> d!83995 m!545005))

(assert (=> b!566203 d!83995))

(declare-fun b!566278 () Bool)

(declare-fun e!325885 () SeekEntryResult!5521)

(declare-fun lt!258129 () SeekEntryResult!5521)

(assert (=> b!566278 (= e!325885 (seekKeyOrZeroReturnVacant!0 (x!53201 lt!258129) (index!24313 lt!258129) (index!24313 lt!258129) k0!1914 a!3118 mask!3119))))

(declare-fun b!566279 () Bool)

(declare-fun c!64806 () Bool)

(declare-fun lt!258130 () (_ BitVec 64))

(assert (=> b!566279 (= c!64806 (= lt!258130 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!325883 () SeekEntryResult!5521)

(assert (=> b!566279 (= e!325883 e!325885)))

(declare-fun b!566280 () Bool)

(assert (=> b!566280 (= e!325883 (Found!5521 (index!24313 lt!258129)))))

(declare-fun b!566281 () Bool)

(declare-fun e!325884 () SeekEntryResult!5521)

(assert (=> b!566281 (= e!325884 e!325883)))

(assert (=> b!566281 (= lt!258130 (select (arr!17065 a!3118) (index!24313 lt!258129)))))

(declare-fun c!64805 () Bool)

(assert (=> b!566281 (= c!64805 (= lt!258130 k0!1914))))

(declare-fun b!566282 () Bool)

(assert (=> b!566282 (= e!325884 Undefined!5521)))

(declare-fun b!566283 () Bool)

(assert (=> b!566283 (= e!325885 (MissingZero!5521 (index!24313 lt!258129)))))

(declare-fun d!83997 () Bool)

(declare-fun lt!258131 () SeekEntryResult!5521)

(assert (=> d!83997 (and (or ((_ is Undefined!5521) lt!258131) (not ((_ is Found!5521) lt!258131)) (and (bvsge (index!24312 lt!258131) #b00000000000000000000000000000000) (bvslt (index!24312 lt!258131) (size!17429 a!3118)))) (or ((_ is Undefined!5521) lt!258131) ((_ is Found!5521) lt!258131) (not ((_ is MissingZero!5521) lt!258131)) (and (bvsge (index!24311 lt!258131) #b00000000000000000000000000000000) (bvslt (index!24311 lt!258131) (size!17429 a!3118)))) (or ((_ is Undefined!5521) lt!258131) ((_ is Found!5521) lt!258131) ((_ is MissingZero!5521) lt!258131) (not ((_ is MissingVacant!5521) lt!258131)) (and (bvsge (index!24314 lt!258131) #b00000000000000000000000000000000) (bvslt (index!24314 lt!258131) (size!17429 a!3118)))) (or ((_ is Undefined!5521) lt!258131) (ite ((_ is Found!5521) lt!258131) (= (select (arr!17065 a!3118) (index!24312 lt!258131)) k0!1914) (ite ((_ is MissingZero!5521) lt!258131) (= (select (arr!17065 a!3118) (index!24311 lt!258131)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5521) lt!258131) (= (select (arr!17065 a!3118) (index!24314 lt!258131)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83997 (= lt!258131 e!325884)))

(declare-fun c!64804 () Bool)

(assert (=> d!83997 (= c!64804 (and ((_ is Intermediate!5521) lt!258129) (undefined!6333 lt!258129)))))

(assert (=> d!83997 (= lt!258129 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83997 (validMask!0 mask!3119)))

(assert (=> d!83997 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!258131)))

(assert (= (and d!83997 c!64804) b!566282))

(assert (= (and d!83997 (not c!64804)) b!566281))

(assert (= (and b!566281 c!64805) b!566280))

(assert (= (and b!566281 (not c!64805)) b!566279))

(assert (= (and b!566279 c!64806) b!566283))

(assert (= (and b!566279 (not c!64806)) b!566278))

(declare-fun m!545007 () Bool)

(assert (=> b!566278 m!545007))

(declare-fun m!545009 () Bool)

(assert (=> b!566281 m!545009))

(declare-fun m!545011 () Bool)

(assert (=> d!83997 m!545011))

(declare-fun m!545013 () Bool)

(assert (=> d!83997 m!545013))

(declare-fun m!545015 () Bool)

(assert (=> d!83997 m!545015))

(declare-fun m!545017 () Bool)

(assert (=> d!83997 m!545017))

(assert (=> d!83997 m!544905))

(assert (=> d!83997 m!545013))

(declare-fun m!545019 () Bool)

(assert (=> d!83997 m!545019))

(assert (=> b!566202 d!83997))

(declare-fun d!83999 () Bool)

(assert (=> d!83999 (= (validKeyInArray!0 (select (arr!17065 a!3118) j!142)) (and (not (= (select (arr!17065 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17065 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566199 d!83999))

(declare-fun d!84001 () Bool)

(assert (=> d!84001 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566204 d!84001))

(declare-fun d!84003 () Bool)

(assert (=> d!84003 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51778 d!84003))

(declare-fun d!84005 () Bool)

(assert (=> d!84005 (= (array_inv!12839 a!3118) (bvsge (size!17429 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51778 d!84005))

(declare-fun d!84007 () Bool)

(declare-fun res!357375 () Bool)

(declare-fun e!325909 () Bool)

(assert (=> d!84007 (=> res!357375 e!325909)))

(assert (=> d!84007 (= res!357375 (= (select (arr!17065 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84007 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!325909)))

(declare-fun b!566324 () Bool)

(declare-fun e!325910 () Bool)

(assert (=> b!566324 (= e!325909 e!325910)))

(declare-fun res!357376 () Bool)

(assert (=> b!566324 (=> (not res!357376) (not e!325910))))

(assert (=> b!566324 (= res!357376 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17429 a!3118)))))

(declare-fun b!566325 () Bool)

(assert (=> b!566325 (= e!325910 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84007 (not res!357375)) b!566324))

(assert (= (and b!566324 res!357376) b!566325))

(assert (=> d!84007 m!544963))

(declare-fun m!545035 () Bool)

(assert (=> b!566325 m!545035))

(assert (=> b!566198 d!84007))

(declare-fun b!566354 () Bool)

(declare-fun e!325931 () Bool)

(declare-fun e!325929 () Bool)

(assert (=> b!566354 (= e!325931 e!325929)))

(declare-fun res!357392 () Bool)

(assert (=> b!566354 (=> (not res!357392) (not e!325929))))

(declare-fun e!325932 () Bool)

(assert (=> b!566354 (= res!357392 (not e!325932))))

(declare-fun res!357391 () Bool)

(assert (=> b!566354 (=> (not res!357391) (not e!325932))))

(assert (=> b!566354 (= res!357391 (validKeyInArray!0 (select (arr!17065 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566355 () Bool)

(declare-fun contains!2868 (List!11198 (_ BitVec 64)) Bool)

(assert (=> b!566355 (= e!325932 (contains!2868 Nil!11195 (select (arr!17065 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566356 () Bool)

(declare-fun e!325930 () Bool)

(declare-fun call!32481 () Bool)

(assert (=> b!566356 (= e!325930 call!32481)))

(declare-fun d!84013 () Bool)

(declare-fun res!357390 () Bool)

(assert (=> d!84013 (=> res!357390 e!325931)))

(assert (=> d!84013 (= res!357390 (bvsge #b00000000000000000000000000000000 (size!17429 a!3118)))))

(assert (=> d!84013 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11195) e!325931)))

(declare-fun bm!32478 () Bool)

(declare-fun c!64830 () Bool)

(assert (=> bm!32478 (= call!32481 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64830 (Cons!11194 (select (arr!17065 a!3118) #b00000000000000000000000000000000) Nil!11195) Nil!11195)))))

(declare-fun b!566357 () Bool)

(assert (=> b!566357 (= e!325929 e!325930)))

(assert (=> b!566357 (= c!64830 (validKeyInArray!0 (select (arr!17065 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566358 () Bool)

(assert (=> b!566358 (= e!325930 call!32481)))

(assert (= (and d!84013 (not res!357390)) b!566354))

(assert (= (and b!566354 res!357391) b!566355))

(assert (= (and b!566354 res!357392) b!566357))

(assert (= (and b!566357 c!64830) b!566356))

(assert (= (and b!566357 (not c!64830)) b!566358))

(assert (= (or b!566356 b!566358) bm!32478))

(assert (=> b!566354 m!544963))

(assert (=> b!566354 m!544963))

(assert (=> b!566354 m!544971))

(assert (=> b!566355 m!544963))

(assert (=> b!566355 m!544963))

(declare-fun m!545053 () Bool)

(assert (=> b!566355 m!545053))

(assert (=> bm!32478 m!544963))

(declare-fun m!545055 () Bool)

(assert (=> bm!32478 m!545055))

(assert (=> b!566357 m!544963))

(assert (=> b!566357 m!544963))

(assert (=> b!566357 m!544971))

(assert (=> b!566200 d!84013))

(declare-fun b!566422 () Bool)

(declare-fun e!325980 () SeekEntryResult!5521)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566422 (= e!325980 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258077 #b00000000000000000000000000000000 mask!3119) lt!258073 lt!258075 mask!3119))))

(declare-fun b!566423 () Bool)

(declare-fun lt!258173 () SeekEntryResult!5521)

(assert (=> b!566423 (and (bvsge (index!24313 lt!258173) #b00000000000000000000000000000000) (bvslt (index!24313 lt!258173) (size!17429 lt!258075)))))

(declare-fun res!357427 () Bool)

(assert (=> b!566423 (= res!357427 (= (select (arr!17065 lt!258075) (index!24313 lt!258173)) lt!258073))))

(declare-fun e!325979 () Bool)

(assert (=> b!566423 (=> res!357427 e!325979)))

(declare-fun e!325982 () Bool)

(assert (=> b!566423 (= e!325982 e!325979)))

(declare-fun b!566424 () Bool)

(declare-fun e!325983 () Bool)

(assert (=> b!566424 (= e!325983 e!325982)))

(declare-fun res!357426 () Bool)

(assert (=> b!566424 (= res!357426 (and ((_ is Intermediate!5521) lt!258173) (not (undefined!6333 lt!258173)) (bvslt (x!53201 lt!258173) #b01111111111111111111111111111110) (bvsge (x!53201 lt!258173) #b00000000000000000000000000000000) (bvsge (x!53201 lt!258173) #b00000000000000000000000000000000)))))

(assert (=> b!566424 (=> (not res!357426) (not e!325982))))

(declare-fun b!566425 () Bool)

(assert (=> b!566425 (= e!325983 (bvsge (x!53201 lt!258173) #b01111111111111111111111111111110))))

(declare-fun d!84019 () Bool)

(assert (=> d!84019 e!325983))

(declare-fun c!64848 () Bool)

(assert (=> d!84019 (= c!64848 (and ((_ is Intermediate!5521) lt!258173) (undefined!6333 lt!258173)))))

(declare-fun e!325981 () SeekEntryResult!5521)

(assert (=> d!84019 (= lt!258173 e!325981)))

(declare-fun c!64846 () Bool)

(assert (=> d!84019 (= c!64846 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258174 () (_ BitVec 64))

(assert (=> d!84019 (= lt!258174 (select (arr!17065 lt!258075) lt!258077))))

(assert (=> d!84019 (validMask!0 mask!3119)))

(assert (=> d!84019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258077 lt!258073 lt!258075 mask!3119) lt!258173)))

(declare-fun b!566426 () Bool)

(assert (=> b!566426 (= e!325981 e!325980)))

(declare-fun c!64847 () Bool)

(assert (=> b!566426 (= c!64847 (or (= lt!258174 lt!258073) (= (bvadd lt!258174 lt!258174) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566427 () Bool)

(assert (=> b!566427 (= e!325981 (Intermediate!5521 true lt!258077 #b00000000000000000000000000000000))))

(declare-fun b!566428 () Bool)

(assert (=> b!566428 (and (bvsge (index!24313 lt!258173) #b00000000000000000000000000000000) (bvslt (index!24313 lt!258173) (size!17429 lt!258075)))))

(assert (=> b!566428 (= e!325979 (= (select (arr!17065 lt!258075) (index!24313 lt!258173)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566429 () Bool)

(assert (=> b!566429 (and (bvsge (index!24313 lt!258173) #b00000000000000000000000000000000) (bvslt (index!24313 lt!258173) (size!17429 lt!258075)))))

(declare-fun res!357428 () Bool)

(assert (=> b!566429 (= res!357428 (= (select (arr!17065 lt!258075) (index!24313 lt!258173)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566429 (=> res!357428 e!325979)))

(declare-fun b!566430 () Bool)

(assert (=> b!566430 (= e!325980 (Intermediate!5521 false lt!258077 #b00000000000000000000000000000000))))

(assert (= (and d!84019 c!64846) b!566427))

(assert (= (and d!84019 (not c!64846)) b!566426))

(assert (= (and b!566426 c!64847) b!566430))

(assert (= (and b!566426 (not c!64847)) b!566422))

(assert (= (and d!84019 c!64848) b!566425))

(assert (= (and d!84019 (not c!64848)) b!566424))

(assert (= (and b!566424 res!357426) b!566423))

(assert (= (and b!566423 (not res!357427)) b!566429))

(assert (= (and b!566429 (not res!357428)) b!566428))

(declare-fun m!545093 () Bool)

(assert (=> b!566429 m!545093))

(declare-fun m!545095 () Bool)

(assert (=> b!566422 m!545095))

(assert (=> b!566422 m!545095))

(declare-fun m!545097 () Bool)

(assert (=> b!566422 m!545097))

(assert (=> b!566423 m!545093))

(assert (=> b!566428 m!545093))

(declare-fun m!545099 () Bool)

(assert (=> d!84019 m!545099))

(assert (=> d!84019 m!544905))

(assert (=> b!566205 d!84019))

(declare-fun b!566431 () Bool)

(declare-fun e!325985 () SeekEntryResult!5521)

(assert (=> b!566431 (= e!325985 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258070 #b00000000000000000000000000000000 mask!3119) (select (arr!17065 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566432 () Bool)

(declare-fun lt!258175 () SeekEntryResult!5521)

(assert (=> b!566432 (and (bvsge (index!24313 lt!258175) #b00000000000000000000000000000000) (bvslt (index!24313 lt!258175) (size!17429 a!3118)))))

(declare-fun res!357430 () Bool)

(assert (=> b!566432 (= res!357430 (= (select (arr!17065 a!3118) (index!24313 lt!258175)) (select (arr!17065 a!3118) j!142)))))

(declare-fun e!325984 () Bool)

(assert (=> b!566432 (=> res!357430 e!325984)))

(declare-fun e!325987 () Bool)

(assert (=> b!566432 (= e!325987 e!325984)))

(declare-fun b!566433 () Bool)

(declare-fun e!325988 () Bool)

(assert (=> b!566433 (= e!325988 e!325987)))

(declare-fun res!357429 () Bool)

(assert (=> b!566433 (= res!357429 (and ((_ is Intermediate!5521) lt!258175) (not (undefined!6333 lt!258175)) (bvslt (x!53201 lt!258175) #b01111111111111111111111111111110) (bvsge (x!53201 lt!258175) #b00000000000000000000000000000000) (bvsge (x!53201 lt!258175) #b00000000000000000000000000000000)))))

(assert (=> b!566433 (=> (not res!357429) (not e!325987))))

(declare-fun b!566434 () Bool)

(assert (=> b!566434 (= e!325988 (bvsge (x!53201 lt!258175) #b01111111111111111111111111111110))))

(declare-fun d!84039 () Bool)

(assert (=> d!84039 e!325988))

(declare-fun c!64851 () Bool)

(assert (=> d!84039 (= c!64851 (and ((_ is Intermediate!5521) lt!258175) (undefined!6333 lt!258175)))))

(declare-fun e!325986 () SeekEntryResult!5521)

(assert (=> d!84039 (= lt!258175 e!325986)))

(declare-fun c!64849 () Bool)

(assert (=> d!84039 (= c!64849 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258176 () (_ BitVec 64))

(assert (=> d!84039 (= lt!258176 (select (arr!17065 a!3118) lt!258070))))

(assert (=> d!84039 (validMask!0 mask!3119)))

(assert (=> d!84039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258070 (select (arr!17065 a!3118) j!142) a!3118 mask!3119) lt!258175)))

(declare-fun b!566435 () Bool)

(assert (=> b!566435 (= e!325986 e!325985)))

(declare-fun c!64850 () Bool)

(assert (=> b!566435 (= c!64850 (or (= lt!258176 (select (arr!17065 a!3118) j!142)) (= (bvadd lt!258176 lt!258176) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566436 () Bool)

(assert (=> b!566436 (= e!325986 (Intermediate!5521 true lt!258070 #b00000000000000000000000000000000))))

(declare-fun b!566437 () Bool)

(assert (=> b!566437 (and (bvsge (index!24313 lt!258175) #b00000000000000000000000000000000) (bvslt (index!24313 lt!258175) (size!17429 a!3118)))))

(assert (=> b!566437 (= e!325984 (= (select (arr!17065 a!3118) (index!24313 lt!258175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566438 () Bool)

(assert (=> b!566438 (and (bvsge (index!24313 lt!258175) #b00000000000000000000000000000000) (bvslt (index!24313 lt!258175) (size!17429 a!3118)))))

(declare-fun res!357431 () Bool)

(assert (=> b!566438 (= res!357431 (= (select (arr!17065 a!3118) (index!24313 lt!258175)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566438 (=> res!357431 e!325984)))

(declare-fun b!566439 () Bool)

(assert (=> b!566439 (= e!325985 (Intermediate!5521 false lt!258070 #b00000000000000000000000000000000))))

(assert (= (and d!84039 c!64849) b!566436))

(assert (= (and d!84039 (not c!64849)) b!566435))

(assert (= (and b!566435 c!64850) b!566439))

(assert (= (and b!566435 (not c!64850)) b!566431))

(assert (= (and d!84039 c!64851) b!566434))

(assert (= (and d!84039 (not c!64851)) b!566433))

(assert (= (and b!566433 res!357429) b!566432))

(assert (= (and b!566432 (not res!357430)) b!566438))

(assert (= (and b!566438 (not res!357431)) b!566437))

(declare-fun m!545101 () Bool)

(assert (=> b!566438 m!545101))

(declare-fun m!545103 () Bool)

(assert (=> b!566431 m!545103))

(assert (=> b!566431 m!545103))

(assert (=> b!566431 m!544887))

(declare-fun m!545105 () Bool)

(assert (=> b!566431 m!545105))

(assert (=> b!566432 m!545101))

(assert (=> b!566437 m!545101))

(declare-fun m!545107 () Bool)

(assert (=> d!84039 m!545107))

(assert (=> d!84039 m!544905))

(assert (=> b!566205 d!84039))

(declare-fun d!84041 () Bool)

(declare-fun lt!258188 () (_ BitVec 32))

(declare-fun lt!258187 () (_ BitVec 32))

(assert (=> d!84041 (= lt!258188 (bvmul (bvxor lt!258187 (bvlshr lt!258187 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84041 (= lt!258187 ((_ extract 31 0) (bvand (bvxor lt!258073 (bvlshr lt!258073 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84041 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357432 (let ((h!12203 ((_ extract 31 0) (bvand (bvxor lt!258073 (bvlshr lt!258073 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53206 (bvmul (bvxor h!12203 (bvlshr h!12203 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53206 (bvlshr x!53206 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357432 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357432 #b00000000000000000000000000000000))))))

(assert (=> d!84041 (= (toIndex!0 lt!258073 mask!3119) (bvand (bvxor lt!258188 (bvlshr lt!258188 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566205 d!84041))

(declare-fun d!84043 () Bool)

(declare-fun lt!258190 () (_ BitVec 32))

(declare-fun lt!258189 () (_ BitVec 32))

(assert (=> d!84043 (= lt!258190 (bvmul (bvxor lt!258189 (bvlshr lt!258189 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84043 (= lt!258189 ((_ extract 31 0) (bvand (bvxor (select (arr!17065 a!3118) j!142) (bvlshr (select (arr!17065 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84043 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357432 (let ((h!12203 ((_ extract 31 0) (bvand (bvxor (select (arr!17065 a!3118) j!142) (bvlshr (select (arr!17065 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53206 (bvmul (bvxor h!12203 (bvlshr h!12203 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53206 (bvlshr x!53206 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357432 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357432 #b00000000000000000000000000000000))))))

(assert (=> d!84043 (= (toIndex!0 (select (arr!17065 a!3118) j!142) mask!3119) (bvand (bvxor lt!258190 (bvlshr lt!258190 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566205 d!84043))

(check-sat (not d!83995) (not b!566272) (not b!566355) (not b!566269) (not d!84019) (not b!566247) (not bm!32478) (not b!566357) (not b!566422) (not bm!32474) (not b!566246) (not b!566262) (not bm!32475) (not b!566325) (not b!566354) (not b!566431) (not d!83997) (not d!84039) (not d!83981) (not b!566278) (not d!83989) (not b!566268))
(check-sat)
