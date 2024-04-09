; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49798 () Bool)

(assert start!49798)

(declare-fun b!546875 () Bool)

(declare-fun e!316001 () Bool)

(declare-fun e!316002 () Bool)

(assert (=> b!546875 (= e!316001 e!316002)))

(declare-fun res!340740 () Bool)

(assert (=> b!546875 (=> (not res!340740) (not e!316002))))

(declare-datatypes ((SeekEntryResult!5023 0))(
  ( (MissingZero!5023 (index!22319 (_ BitVec 32))) (Found!5023 (index!22320 (_ BitVec 32))) (Intermediate!5023 (undefined!5835 Bool) (index!22321 (_ BitVec 32)) (x!51294 (_ BitVec 32))) (Undefined!5023) (MissingVacant!5023 (index!22322 (_ BitVec 32))) )
))
(declare-fun lt!249377 () SeekEntryResult!5023)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!546875 (= res!340740 (or (= lt!249377 (MissingZero!5023 i!1132)) (= lt!249377 (MissingVacant!5023 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34490 0))(
  ( (array!34491 (arr!16567 (Array (_ BitVec 32) (_ BitVec 64))) (size!16931 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34490)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34490 (_ BitVec 32)) SeekEntryResult!5023)

(assert (=> b!546875 (= lt!249377 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!546876 () Bool)

(assert (=> b!546876 (= e!316002 (and (bvsle #b00000000000000000000000000000000 (size!16931 a!3118)) (bvsge (size!16931 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!546877 () Bool)

(declare-fun res!340742 () Bool)

(assert (=> b!546877 (=> (not res!340742) (not e!316001))))

(declare-fun arrayContainsKey!0 (array!34490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!546877 (= res!340742 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!546878 () Bool)

(declare-fun res!340745 () Bool)

(assert (=> b!546878 (=> (not res!340745) (not e!316001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!546878 (= res!340745 (validKeyInArray!0 k0!1914))))

(declare-fun b!546879 () Bool)

(declare-fun res!340741 () Bool)

(assert (=> b!546879 (=> (not res!340741) (not e!316001))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!546879 (= res!340741 (and (= (size!16931 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16931 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16931 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!546880 () Bool)

(declare-fun res!340743 () Bool)

(assert (=> b!546880 (=> (not res!340743) (not e!316002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34490 (_ BitVec 32)) Bool)

(assert (=> b!546880 (= res!340743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!340739 () Bool)

(assert (=> start!49798 (=> (not res!340739) (not e!316001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49798 (= res!340739 (validMask!0 mask!3119))))

(assert (=> start!49798 e!316001))

(assert (=> start!49798 true))

(declare-fun array_inv!12341 (array!34490) Bool)

(assert (=> start!49798 (array_inv!12341 a!3118)))

(declare-fun b!546881 () Bool)

(declare-fun res!340744 () Bool)

(assert (=> b!546881 (=> (not res!340744) (not e!316001))))

(assert (=> b!546881 (= res!340744 (validKeyInArray!0 (select (arr!16567 a!3118) j!142)))))

(assert (= (and start!49798 res!340739) b!546879))

(assert (= (and b!546879 res!340741) b!546881))

(assert (= (and b!546881 res!340744) b!546878))

(assert (= (and b!546878 res!340745) b!546877))

(assert (= (and b!546877 res!340742) b!546875))

(assert (= (and b!546875 res!340740) b!546880))

(assert (= (and b!546880 res!340743) b!546876))

(declare-fun m!524267 () Bool)

(assert (=> b!546878 m!524267))

(declare-fun m!524269 () Bool)

(assert (=> b!546880 m!524269))

(declare-fun m!524271 () Bool)

(assert (=> start!49798 m!524271))

(declare-fun m!524273 () Bool)

(assert (=> start!49798 m!524273))

(declare-fun m!524275 () Bool)

(assert (=> b!546875 m!524275))

(declare-fun m!524277 () Bool)

(assert (=> b!546877 m!524277))

(declare-fun m!524279 () Bool)

(assert (=> b!546881 m!524279))

(assert (=> b!546881 m!524279))

(declare-fun m!524281 () Bool)

(assert (=> b!546881 m!524281))

(check-sat (not b!546880) (not start!49798) (not b!546881) (not b!546878) (not b!546877) (not b!546875))
(check-sat)
(get-model)

(declare-fun d!82285 () Bool)

(declare-fun res!340771 () Bool)

(declare-fun e!316017 () Bool)

(assert (=> d!82285 (=> res!340771 e!316017)))

(assert (=> d!82285 (= res!340771 (= (select (arr!16567 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82285 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!316017)))

(declare-fun b!546907 () Bool)

(declare-fun e!316018 () Bool)

(assert (=> b!546907 (= e!316017 e!316018)))

(declare-fun res!340772 () Bool)

(assert (=> b!546907 (=> (not res!340772) (not e!316018))))

(assert (=> b!546907 (= res!340772 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16931 a!3118)))))

(declare-fun b!546908 () Bool)

(assert (=> b!546908 (= e!316018 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82285 (not res!340771)) b!546907))

(assert (= (and b!546907 res!340772) b!546908))

(declare-fun m!524299 () Bool)

(assert (=> d!82285 m!524299))

(declare-fun m!524301 () Bool)

(assert (=> b!546908 m!524301))

(assert (=> b!546877 d!82285))

(declare-fun d!82287 () Bool)

(assert (=> d!82287 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!546878 d!82287))

(declare-fun b!546923 () Bool)

(declare-fun e!316031 () Bool)

(declare-fun call!32147 () Bool)

(assert (=> b!546923 (= e!316031 call!32147)))

(declare-fun b!546924 () Bool)

(declare-fun e!316033 () Bool)

(assert (=> b!546924 (= e!316031 e!316033)))

(declare-fun lt!249389 () (_ BitVec 64))

(assert (=> b!546924 (= lt!249389 (select (arr!16567 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16922 0))(
  ( (Unit!16923) )
))
(declare-fun lt!249388 () Unit!16922)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34490 (_ BitVec 64) (_ BitVec 32)) Unit!16922)

(assert (=> b!546924 (= lt!249388 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249389 #b00000000000000000000000000000000))))

(assert (=> b!546924 (arrayContainsKey!0 a!3118 lt!249389 #b00000000000000000000000000000000)))

(declare-fun lt!249387 () Unit!16922)

(assert (=> b!546924 (= lt!249387 lt!249388)))

(declare-fun res!340783 () Bool)

(assert (=> b!546924 (= res!340783 (= (seekEntryOrOpen!0 (select (arr!16567 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5023 #b00000000000000000000000000000000)))))

(assert (=> b!546924 (=> (not res!340783) (not e!316033))))

(declare-fun d!82289 () Bool)

(declare-fun res!340784 () Bool)

(declare-fun e!316032 () Bool)

(assert (=> d!82289 (=> res!340784 e!316032)))

(assert (=> d!82289 (= res!340784 (bvsge #b00000000000000000000000000000000 (size!16931 a!3118)))))

(assert (=> d!82289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316032)))

(declare-fun b!546925 () Bool)

(assert (=> b!546925 (= e!316032 e!316031)))

(declare-fun c!63398 () Bool)

(assert (=> b!546925 (= c!63398 (validKeyInArray!0 (select (arr!16567 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32144 () Bool)

(assert (=> bm!32144 (= call!32147 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!546926 () Bool)

(assert (=> b!546926 (= e!316033 call!32147)))

(assert (= (and d!82289 (not res!340784)) b!546925))

(assert (= (and b!546925 c!63398) b!546924))

(assert (= (and b!546925 (not c!63398)) b!546923))

(assert (= (and b!546924 res!340783) b!546926))

(assert (= (or b!546926 b!546923) bm!32144))

(assert (=> b!546924 m!524299))

(declare-fun m!524307 () Bool)

(assert (=> b!546924 m!524307))

(declare-fun m!524309 () Bool)

(assert (=> b!546924 m!524309))

(assert (=> b!546924 m!524299))

(declare-fun m!524311 () Bool)

(assert (=> b!546924 m!524311))

(assert (=> b!546925 m!524299))

(assert (=> b!546925 m!524299))

(declare-fun m!524313 () Bool)

(assert (=> b!546925 m!524313))

(declare-fun m!524315 () Bool)

(assert (=> bm!32144 m!524315))

(assert (=> b!546880 d!82289))

(declare-fun b!546969 () Bool)

(declare-fun e!316064 () SeekEntryResult!5023)

(declare-fun lt!249416 () SeekEntryResult!5023)

(assert (=> b!546969 (= e!316064 (Found!5023 (index!22321 lt!249416)))))

(declare-fun b!546971 () Bool)

(declare-fun e!316065 () SeekEntryResult!5023)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34490 (_ BitVec 32)) SeekEntryResult!5023)

(assert (=> b!546971 (= e!316065 (seekKeyOrZeroReturnVacant!0 (x!51294 lt!249416) (index!22321 lt!249416) (index!22321 lt!249416) k0!1914 a!3118 mask!3119))))

(declare-fun b!546972 () Bool)

(declare-fun c!63413 () Bool)

(declare-fun lt!249414 () (_ BitVec 64))

(assert (=> b!546972 (= c!63413 (= lt!249414 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546972 (= e!316064 e!316065)))

(declare-fun b!546973 () Bool)

(declare-fun e!316066 () SeekEntryResult!5023)

(assert (=> b!546973 (= e!316066 e!316064)))

(assert (=> b!546973 (= lt!249414 (select (arr!16567 a!3118) (index!22321 lt!249416)))))

(declare-fun c!63412 () Bool)

(assert (=> b!546973 (= c!63412 (= lt!249414 k0!1914))))

(declare-fun b!546974 () Bool)

(assert (=> b!546974 (= e!316066 Undefined!5023)))

(declare-fun d!82295 () Bool)

(declare-fun lt!249415 () SeekEntryResult!5023)

(get-info :version)

(assert (=> d!82295 (and (or ((_ is Undefined!5023) lt!249415) (not ((_ is Found!5023) lt!249415)) (and (bvsge (index!22320 lt!249415) #b00000000000000000000000000000000) (bvslt (index!22320 lt!249415) (size!16931 a!3118)))) (or ((_ is Undefined!5023) lt!249415) ((_ is Found!5023) lt!249415) (not ((_ is MissingZero!5023) lt!249415)) (and (bvsge (index!22319 lt!249415) #b00000000000000000000000000000000) (bvslt (index!22319 lt!249415) (size!16931 a!3118)))) (or ((_ is Undefined!5023) lt!249415) ((_ is Found!5023) lt!249415) ((_ is MissingZero!5023) lt!249415) (not ((_ is MissingVacant!5023) lt!249415)) (and (bvsge (index!22322 lt!249415) #b00000000000000000000000000000000) (bvslt (index!22322 lt!249415) (size!16931 a!3118)))) (or ((_ is Undefined!5023) lt!249415) (ite ((_ is Found!5023) lt!249415) (= (select (arr!16567 a!3118) (index!22320 lt!249415)) k0!1914) (ite ((_ is MissingZero!5023) lt!249415) (= (select (arr!16567 a!3118) (index!22319 lt!249415)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5023) lt!249415) (= (select (arr!16567 a!3118) (index!22322 lt!249415)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82295 (= lt!249415 e!316066)))

(declare-fun c!63411 () Bool)

(assert (=> d!82295 (= c!63411 (and ((_ is Intermediate!5023) lt!249416) (undefined!5835 lt!249416)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34490 (_ BitVec 32)) SeekEntryResult!5023)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82295 (= lt!249416 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82295 (validMask!0 mask!3119)))

(assert (=> d!82295 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!249415)))

(declare-fun b!546970 () Bool)

(assert (=> b!546970 (= e!316065 (MissingZero!5023 (index!22321 lt!249416)))))

(assert (= (and d!82295 c!63411) b!546974))

(assert (= (and d!82295 (not c!63411)) b!546973))

(assert (= (and b!546973 c!63412) b!546969))

(assert (= (and b!546973 (not c!63412)) b!546972))

(assert (= (and b!546972 c!63413) b!546970))

(assert (= (and b!546972 (not c!63413)) b!546971))

(declare-fun m!524341 () Bool)

(assert (=> b!546971 m!524341))

(declare-fun m!524343 () Bool)

(assert (=> b!546973 m!524343))

(declare-fun m!524345 () Bool)

(assert (=> d!82295 m!524345))

(declare-fun m!524347 () Bool)

(assert (=> d!82295 m!524347))

(assert (=> d!82295 m!524271))

(declare-fun m!524349 () Bool)

(assert (=> d!82295 m!524349))

(assert (=> d!82295 m!524345))

(declare-fun m!524351 () Bool)

(assert (=> d!82295 m!524351))

(declare-fun m!524353 () Bool)

(assert (=> d!82295 m!524353))

(assert (=> b!546875 d!82295))

(declare-fun d!82305 () Bool)

(assert (=> d!82305 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49798 d!82305))

(declare-fun d!82321 () Bool)

(assert (=> d!82321 (= (array_inv!12341 a!3118) (bvsge (size!16931 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49798 d!82321))

(declare-fun d!82323 () Bool)

(assert (=> d!82323 (= (validKeyInArray!0 (select (arr!16567 a!3118) j!142)) (and (not (= (select (arr!16567 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16567 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!546881 d!82323))

(check-sat (not d!82295) (not b!546971) (not bm!32144) (not b!546925) (not b!546908) (not b!546924))
(check-sat)
