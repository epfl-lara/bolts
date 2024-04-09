; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51844 () Bool)

(assert start!51844)

(declare-fun b!566597 () Bool)

(declare-fun res!357523 () Bool)

(declare-fun e!326083 () Bool)

(assert (=> b!566597 (=> (not res!357523) (not e!326083))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566597 (= res!357523 (validKeyInArray!0 k0!1914))))

(declare-fun b!566598 () Bool)

(declare-fun res!357519 () Bool)

(assert (=> b!566598 (=> (not res!357519) (not e!326083))))

(declare-datatypes ((array!35549 0))(
  ( (array!35550 (arr!17068 (Array (_ BitVec 32) (_ BitVec 64))) (size!17432 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35549)

(declare-fun arrayContainsKey!0 (array!35549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566598 (= res!357519 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566600 () Bool)

(declare-fun e!326080 () Bool)

(declare-datatypes ((SeekEntryResult!5524 0))(
  ( (MissingZero!5524 (index!24323 (_ BitVec 32))) (Found!5524 (index!24324 (_ BitVec 32))) (Intermediate!5524 (undefined!6336 Bool) (index!24325 (_ BitVec 32)) (x!53218 (_ BitVec 32))) (Undefined!5524) (MissingVacant!5524 (index!24326 (_ BitVec 32))) )
))
(declare-fun lt!258267 () SeekEntryResult!5524)

(get-info :version)

(assert (=> b!566600 (= e!326080 (not (or (not ((_ is Intermediate!5524) lt!258267)) (undefined!6336 lt!258267) (and (bvsge (index!24325 lt!258267) #b00000000000000000000000000000000) (bvslt (index!24325 lt!258267) (size!17432 a!3118))))))))

(declare-fun e!326081 () Bool)

(assert (=> b!566600 e!326081))

(declare-fun res!357524 () Bool)

(assert (=> b!566600 (=> (not res!357524) (not e!326081))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35549 (_ BitVec 32)) Bool)

(assert (=> b!566600 (= res!357524 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17750 0))(
  ( (Unit!17751) )
))
(declare-fun lt!258265 () Unit!17750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17750)

(assert (=> b!566600 (= lt!258265 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566601 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35549 (_ BitVec 32)) SeekEntryResult!5524)

(assert (=> b!566601 (= e!326081 (= (seekEntryOrOpen!0 (select (arr!17068 a!3118) j!142) a!3118 mask!3119) (Found!5524 j!142)))))

(declare-fun b!566602 () Bool)

(declare-fun e!326082 () Bool)

(assert (=> b!566602 (= e!326082 e!326080)))

(declare-fun res!357518 () Bool)

(assert (=> b!566602 (=> (not res!357518) (not e!326080))))

(declare-fun lt!258266 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35549 (_ BitVec 32)) SeekEntryResult!5524)

(assert (=> b!566602 (= res!357518 (= lt!258267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258266 (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118)) mask!3119)))))

(declare-fun lt!258269 () (_ BitVec 32))

(assert (=> b!566602 (= lt!258267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258269 (select (arr!17068 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566602 (= lt!258266 (toIndex!0 (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!566602 (= lt!258269 (toIndex!0 (select (arr!17068 a!3118) j!142) mask!3119))))

(declare-fun b!566603 () Bool)

(declare-fun res!357516 () Bool)

(assert (=> b!566603 (=> (not res!357516) (not e!326083))))

(assert (=> b!566603 (= res!357516 (validKeyInArray!0 (select (arr!17068 a!3118) j!142)))))

(declare-fun b!566604 () Bool)

(assert (=> b!566604 (= e!326083 e!326082)))

(declare-fun res!357522 () Bool)

(assert (=> b!566604 (=> (not res!357522) (not e!326082))))

(declare-fun lt!258268 () SeekEntryResult!5524)

(assert (=> b!566604 (= res!357522 (or (= lt!258268 (MissingZero!5524 i!1132)) (= lt!258268 (MissingVacant!5524 i!1132))))))

(assert (=> b!566604 (= lt!258268 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!566605 () Bool)

(declare-fun res!357517 () Bool)

(assert (=> b!566605 (=> (not res!357517) (not e!326082))))

(assert (=> b!566605 (= res!357517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566606 () Bool)

(declare-fun res!357515 () Bool)

(assert (=> b!566606 (=> (not res!357515) (not e!326082))))

(declare-datatypes ((List!11201 0))(
  ( (Nil!11198) (Cons!11197 (h!12206 (_ BitVec 64)) (t!17437 List!11201)) )
))
(declare-fun arrayNoDuplicates!0 (array!35549 (_ BitVec 32) List!11201) Bool)

(assert (=> b!566606 (= res!357515 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11198))))

(declare-fun b!566599 () Bool)

(declare-fun res!357521 () Bool)

(assert (=> b!566599 (=> (not res!357521) (not e!326083))))

(assert (=> b!566599 (= res!357521 (and (= (size!17432 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17432 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17432 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!357520 () Bool)

(assert (=> start!51844 (=> (not res!357520) (not e!326083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51844 (= res!357520 (validMask!0 mask!3119))))

(assert (=> start!51844 e!326083))

(assert (=> start!51844 true))

(declare-fun array_inv!12842 (array!35549) Bool)

(assert (=> start!51844 (array_inv!12842 a!3118)))

(assert (= (and start!51844 res!357520) b!566599))

(assert (= (and b!566599 res!357521) b!566603))

(assert (= (and b!566603 res!357516) b!566597))

(assert (= (and b!566597 res!357523) b!566598))

(assert (= (and b!566598 res!357519) b!566604))

(assert (= (and b!566604 res!357522) b!566605))

(assert (= (and b!566605 res!357517) b!566606))

(assert (= (and b!566606 res!357515) b!566602))

(assert (= (and b!566602 res!357518) b!566600))

(assert (= (and b!566600 res!357524) b!566601))

(declare-fun m!545239 () Bool)

(assert (=> b!566603 m!545239))

(assert (=> b!566603 m!545239))

(declare-fun m!545241 () Bool)

(assert (=> b!566603 m!545241))

(declare-fun m!545243 () Bool)

(assert (=> b!566600 m!545243))

(declare-fun m!545245 () Bool)

(assert (=> b!566600 m!545245))

(declare-fun m!545247 () Bool)

(assert (=> b!566598 m!545247))

(declare-fun m!545249 () Bool)

(assert (=> start!51844 m!545249))

(declare-fun m!545251 () Bool)

(assert (=> start!51844 m!545251))

(declare-fun m!545253 () Bool)

(assert (=> b!566597 m!545253))

(declare-fun m!545255 () Bool)

(assert (=> b!566606 m!545255))

(declare-fun m!545257 () Bool)

(assert (=> b!566605 m!545257))

(assert (=> b!566602 m!545239))

(declare-fun m!545259 () Bool)

(assert (=> b!566602 m!545259))

(assert (=> b!566602 m!545239))

(declare-fun m!545261 () Bool)

(assert (=> b!566602 m!545261))

(declare-fun m!545263 () Bool)

(assert (=> b!566602 m!545263))

(assert (=> b!566602 m!545239))

(declare-fun m!545265 () Bool)

(assert (=> b!566602 m!545265))

(assert (=> b!566602 m!545261))

(declare-fun m!545267 () Bool)

(assert (=> b!566602 m!545267))

(assert (=> b!566602 m!545261))

(declare-fun m!545269 () Bool)

(assert (=> b!566602 m!545269))

(declare-fun m!545271 () Bool)

(assert (=> b!566604 m!545271))

(assert (=> b!566601 m!545239))

(assert (=> b!566601 m!545239))

(declare-fun m!545273 () Bool)

(assert (=> b!566601 m!545273))

(check-sat (not b!566606) (not b!566604) (not b!566597) (not b!566598) (not b!566601) (not b!566603) (not b!566602) (not start!51844) (not b!566600) (not b!566605))
(check-sat)
(get-model)

(declare-fun d!84077 () Bool)

(declare-fun res!357559 () Bool)

(declare-fun e!326103 () Bool)

(assert (=> d!84077 (=> res!357559 e!326103)))

(assert (=> d!84077 (= res!357559 (= (select (arr!17068 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84077 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!326103)))

(declare-fun b!566641 () Bool)

(declare-fun e!326104 () Bool)

(assert (=> b!566641 (= e!326103 e!326104)))

(declare-fun res!357560 () Bool)

(assert (=> b!566641 (=> (not res!357560) (not e!326104))))

(assert (=> b!566641 (= res!357560 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17432 a!3118)))))

(declare-fun b!566642 () Bool)

(assert (=> b!566642 (= e!326104 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84077 (not res!357559)) b!566641))

(assert (= (and b!566641 res!357560) b!566642))

(declare-fun m!545311 () Bool)

(assert (=> d!84077 m!545311))

(declare-fun m!545313 () Bool)

(assert (=> b!566642 m!545313))

(assert (=> b!566598 d!84077))

(declare-fun d!84079 () Bool)

(assert (=> d!84079 (= (validKeyInArray!0 (select (arr!17068 a!3118) j!142)) (and (not (= (select (arr!17068 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17068 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566603 d!84079))

(declare-fun lt!258308 () SeekEntryResult!5524)

(declare-fun b!566685 () Bool)

(declare-fun e!326131 () SeekEntryResult!5524)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35549 (_ BitVec 32)) SeekEntryResult!5524)

(assert (=> b!566685 (= e!326131 (seekKeyOrZeroReturnVacant!0 (x!53218 lt!258308) (index!24325 lt!258308) (index!24325 lt!258308) k0!1914 a!3118 mask!3119))))

(declare-fun b!566686 () Bool)

(declare-fun e!326132 () SeekEntryResult!5524)

(assert (=> b!566686 (= e!326132 (Found!5524 (index!24325 lt!258308)))))

(declare-fun d!84081 () Bool)

(declare-fun lt!258307 () SeekEntryResult!5524)

(assert (=> d!84081 (and (or ((_ is Undefined!5524) lt!258307) (not ((_ is Found!5524) lt!258307)) (and (bvsge (index!24324 lt!258307) #b00000000000000000000000000000000) (bvslt (index!24324 lt!258307) (size!17432 a!3118)))) (or ((_ is Undefined!5524) lt!258307) ((_ is Found!5524) lt!258307) (not ((_ is MissingZero!5524) lt!258307)) (and (bvsge (index!24323 lt!258307) #b00000000000000000000000000000000) (bvslt (index!24323 lt!258307) (size!17432 a!3118)))) (or ((_ is Undefined!5524) lt!258307) ((_ is Found!5524) lt!258307) ((_ is MissingZero!5524) lt!258307) (not ((_ is MissingVacant!5524) lt!258307)) (and (bvsge (index!24326 lt!258307) #b00000000000000000000000000000000) (bvslt (index!24326 lt!258307) (size!17432 a!3118)))) (or ((_ is Undefined!5524) lt!258307) (ite ((_ is Found!5524) lt!258307) (= (select (arr!17068 a!3118) (index!24324 lt!258307)) k0!1914) (ite ((_ is MissingZero!5524) lt!258307) (= (select (arr!17068 a!3118) (index!24323 lt!258307)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5524) lt!258307) (= (select (arr!17068 a!3118) (index!24326 lt!258307)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!326130 () SeekEntryResult!5524)

(assert (=> d!84081 (= lt!258307 e!326130)))

(declare-fun c!64905 () Bool)

(assert (=> d!84081 (= c!64905 (and ((_ is Intermediate!5524) lt!258308) (undefined!6336 lt!258308)))))

(assert (=> d!84081 (= lt!258308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84081 (validMask!0 mask!3119)))

(assert (=> d!84081 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!258307)))

(declare-fun b!566687 () Bool)

(assert (=> b!566687 (= e!326130 Undefined!5524)))

(declare-fun b!566688 () Bool)

(assert (=> b!566688 (= e!326131 (MissingZero!5524 (index!24325 lt!258308)))))

(declare-fun b!566689 () Bool)

(assert (=> b!566689 (= e!326130 e!326132)))

(declare-fun lt!258309 () (_ BitVec 64))

(assert (=> b!566689 (= lt!258309 (select (arr!17068 a!3118) (index!24325 lt!258308)))))

(declare-fun c!64906 () Bool)

(assert (=> b!566689 (= c!64906 (= lt!258309 k0!1914))))

(declare-fun b!566690 () Bool)

(declare-fun c!64907 () Bool)

(assert (=> b!566690 (= c!64907 (= lt!258309 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566690 (= e!326132 e!326131)))

(assert (= (and d!84081 c!64905) b!566687))

(assert (= (and d!84081 (not c!64905)) b!566689))

(assert (= (and b!566689 c!64906) b!566686))

(assert (= (and b!566689 (not c!64906)) b!566690))

(assert (= (and b!566690 c!64907) b!566688))

(assert (= (and b!566690 (not c!64907)) b!566685))

(declare-fun m!545323 () Bool)

(assert (=> b!566685 m!545323))

(assert (=> d!84081 m!545249))

(declare-fun m!545325 () Bool)

(assert (=> d!84081 m!545325))

(declare-fun m!545327 () Bool)

(assert (=> d!84081 m!545327))

(declare-fun m!545329 () Bool)

(assert (=> d!84081 m!545329))

(assert (=> d!84081 m!545327))

(declare-fun m!545331 () Bool)

(assert (=> d!84081 m!545331))

(declare-fun m!545333 () Bool)

(assert (=> d!84081 m!545333))

(declare-fun m!545335 () Bool)

(assert (=> b!566689 m!545335))

(assert (=> b!566604 d!84081))

(declare-fun b!566717 () Bool)

(declare-fun e!326150 () Bool)

(declare-fun call!32501 () Bool)

(assert (=> b!566717 (= e!326150 call!32501)))

(declare-fun bm!32498 () Bool)

(assert (=> bm!32498 (= call!32501 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566718 () Bool)

(declare-fun e!326151 () Bool)

(assert (=> b!566718 (= e!326151 e!326150)))

(declare-fun lt!258326 () (_ BitVec 64))

(assert (=> b!566718 (= lt!258326 (select (arr!17068 a!3118) j!142))))

(declare-fun lt!258325 () Unit!17750)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35549 (_ BitVec 64) (_ BitVec 32)) Unit!17750)

(assert (=> b!566718 (= lt!258325 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258326 j!142))))

(assert (=> b!566718 (arrayContainsKey!0 a!3118 lt!258326 #b00000000000000000000000000000000)))

(declare-fun lt!258324 () Unit!17750)

(assert (=> b!566718 (= lt!258324 lt!258325)))

(declare-fun res!357585 () Bool)

(assert (=> b!566718 (= res!357585 (= (seekEntryOrOpen!0 (select (arr!17068 a!3118) j!142) a!3118 mask!3119) (Found!5524 j!142)))))

(assert (=> b!566718 (=> (not res!357585) (not e!326150))))

(declare-fun b!566719 () Bool)

(declare-fun e!326149 () Bool)

(assert (=> b!566719 (= e!326149 e!326151)))

(declare-fun c!64916 () Bool)

(assert (=> b!566719 (= c!64916 (validKeyInArray!0 (select (arr!17068 a!3118) j!142)))))

(declare-fun b!566720 () Bool)

(assert (=> b!566720 (= e!326151 call!32501)))

(declare-fun d!84091 () Bool)

(declare-fun res!357584 () Bool)

(assert (=> d!84091 (=> res!357584 e!326149)))

(assert (=> d!84091 (= res!357584 (bvsge j!142 (size!17432 a!3118)))))

(assert (=> d!84091 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326149)))

(assert (= (and d!84091 (not res!357584)) b!566719))

(assert (= (and b!566719 c!64916) b!566718))

(assert (= (and b!566719 (not c!64916)) b!566720))

(assert (= (and b!566718 res!357585) b!566717))

(assert (= (or b!566717 b!566720) bm!32498))

(declare-fun m!545353 () Bool)

(assert (=> bm!32498 m!545353))

(assert (=> b!566718 m!545239))

(declare-fun m!545355 () Bool)

(assert (=> b!566718 m!545355))

(declare-fun m!545357 () Bool)

(assert (=> b!566718 m!545357))

(assert (=> b!566718 m!545239))

(assert (=> b!566718 m!545273))

(assert (=> b!566719 m!545239))

(assert (=> b!566719 m!545239))

(assert (=> b!566719 m!545241))

(assert (=> b!566600 d!84091))

(declare-fun d!84101 () Bool)

(assert (=> d!84101 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258333 () Unit!17750)

(declare-fun choose!38 (array!35549 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17750)

(assert (=> d!84101 (= lt!258333 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84101 (validMask!0 mask!3119)))

(assert (=> d!84101 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258333)))

(declare-fun bs!17599 () Bool)

(assert (= bs!17599 d!84101))

(assert (=> bs!17599 m!545243))

(declare-fun m!545359 () Bool)

(assert (=> bs!17599 m!545359))

(assert (=> bs!17599 m!545249))

(assert (=> b!566600 d!84101))

(declare-fun b!566721 () Bool)

(declare-fun e!326153 () Bool)

(declare-fun call!32502 () Bool)

(assert (=> b!566721 (= e!326153 call!32502)))

(declare-fun bm!32499 () Bool)

(assert (=> bm!32499 (= call!32502 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566722 () Bool)

(declare-fun e!326154 () Bool)

(assert (=> b!566722 (= e!326154 e!326153)))

(declare-fun lt!258336 () (_ BitVec 64))

(assert (=> b!566722 (= lt!258336 (select (arr!17068 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258335 () Unit!17750)

(assert (=> b!566722 (= lt!258335 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258336 #b00000000000000000000000000000000))))

(assert (=> b!566722 (arrayContainsKey!0 a!3118 lt!258336 #b00000000000000000000000000000000)))

(declare-fun lt!258334 () Unit!17750)

(assert (=> b!566722 (= lt!258334 lt!258335)))

(declare-fun res!357587 () Bool)

(assert (=> b!566722 (= res!357587 (= (seekEntryOrOpen!0 (select (arr!17068 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5524 #b00000000000000000000000000000000)))))

(assert (=> b!566722 (=> (not res!357587) (not e!326153))))

(declare-fun b!566723 () Bool)

(declare-fun e!326152 () Bool)

(assert (=> b!566723 (= e!326152 e!326154)))

(declare-fun c!64917 () Bool)

(assert (=> b!566723 (= c!64917 (validKeyInArray!0 (select (arr!17068 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566724 () Bool)

(assert (=> b!566724 (= e!326154 call!32502)))

(declare-fun d!84107 () Bool)

(declare-fun res!357586 () Bool)

(assert (=> d!84107 (=> res!357586 e!326152)))

(assert (=> d!84107 (= res!357586 (bvsge #b00000000000000000000000000000000 (size!17432 a!3118)))))

(assert (=> d!84107 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326152)))

(assert (= (and d!84107 (not res!357586)) b!566723))

(assert (= (and b!566723 c!64917) b!566722))

(assert (= (and b!566723 (not c!64917)) b!566724))

(assert (= (and b!566722 res!357587) b!566721))

(assert (= (or b!566721 b!566724) bm!32499))

(declare-fun m!545361 () Bool)

(assert (=> bm!32499 m!545361))

(assert (=> b!566722 m!545311))

(declare-fun m!545363 () Bool)

(assert (=> b!566722 m!545363))

(declare-fun m!545365 () Bool)

(assert (=> b!566722 m!545365))

(assert (=> b!566722 m!545311))

(declare-fun m!545367 () Bool)

(assert (=> b!566722 m!545367))

(assert (=> b!566723 m!545311))

(assert (=> b!566723 m!545311))

(declare-fun m!545369 () Bool)

(assert (=> b!566723 m!545369))

(assert (=> b!566605 d!84107))

(declare-fun d!84109 () Bool)

(declare-fun res!357594 () Bool)

(declare-fun e!326172 () Bool)

(assert (=> d!84109 (=> res!357594 e!326172)))

(assert (=> d!84109 (= res!357594 (bvsge #b00000000000000000000000000000000 (size!17432 a!3118)))))

(assert (=> d!84109 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11198) e!326172)))

(declare-fun b!566753 () Bool)

(declare-fun e!326173 () Bool)

(declare-fun call!32505 () Bool)

(assert (=> b!566753 (= e!326173 call!32505)))

(declare-fun b!566754 () Bool)

(declare-fun e!326175 () Bool)

(declare-fun contains!2871 (List!11201 (_ BitVec 64)) Bool)

(assert (=> b!566754 (= e!326175 (contains!2871 Nil!11198 (select (arr!17068 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32502 () Bool)

(declare-fun c!64929 () Bool)

(assert (=> bm!32502 (= call!32505 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64929 (Cons!11197 (select (arr!17068 a!3118) #b00000000000000000000000000000000) Nil!11198) Nil!11198)))))

(declare-fun b!566755 () Bool)

(assert (=> b!566755 (= e!326173 call!32505)))

(declare-fun b!566756 () Bool)

(declare-fun e!326174 () Bool)

(assert (=> b!566756 (= e!326172 e!326174)))

(declare-fun res!357596 () Bool)

(assert (=> b!566756 (=> (not res!357596) (not e!326174))))

(assert (=> b!566756 (= res!357596 (not e!326175))))

(declare-fun res!357595 () Bool)

(assert (=> b!566756 (=> (not res!357595) (not e!326175))))

(assert (=> b!566756 (= res!357595 (validKeyInArray!0 (select (arr!17068 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566757 () Bool)

(assert (=> b!566757 (= e!326174 e!326173)))

(assert (=> b!566757 (= c!64929 (validKeyInArray!0 (select (arr!17068 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84109 (not res!357594)) b!566756))

(assert (= (and b!566756 res!357595) b!566754))

(assert (= (and b!566756 res!357596) b!566757))

(assert (= (and b!566757 c!64929) b!566755))

(assert (= (and b!566757 (not c!64929)) b!566753))

(assert (= (or b!566755 b!566753) bm!32502))

(assert (=> b!566754 m!545311))

(assert (=> b!566754 m!545311))

(declare-fun m!545383 () Bool)

(assert (=> b!566754 m!545383))

(assert (=> bm!32502 m!545311))

(declare-fun m!545385 () Bool)

(assert (=> bm!32502 m!545385))

(assert (=> b!566756 m!545311))

(assert (=> b!566756 m!545311))

(assert (=> b!566756 m!545369))

(assert (=> b!566757 m!545311))

(assert (=> b!566757 m!545311))

(assert (=> b!566757 m!545369))

(assert (=> b!566606 d!84109))

(declare-fun d!84119 () Bool)

(assert (=> d!84119 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51844 d!84119))

(declare-fun d!84125 () Bool)

(assert (=> d!84125 (= (array_inv!12842 a!3118) (bvsge (size!17432 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51844 d!84125))

(declare-fun e!326196 () SeekEntryResult!5524)

(declare-fun lt!258360 () SeekEntryResult!5524)

(declare-fun b!566784 () Bool)

(assert (=> b!566784 (= e!326196 (seekKeyOrZeroReturnVacant!0 (x!53218 lt!258360) (index!24325 lt!258360) (index!24325 lt!258360) (select (arr!17068 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566785 () Bool)

(declare-fun e!326197 () SeekEntryResult!5524)

(assert (=> b!566785 (= e!326197 (Found!5524 (index!24325 lt!258360)))))

(declare-fun d!84127 () Bool)

(declare-fun lt!258359 () SeekEntryResult!5524)

(assert (=> d!84127 (and (or ((_ is Undefined!5524) lt!258359) (not ((_ is Found!5524) lt!258359)) (and (bvsge (index!24324 lt!258359) #b00000000000000000000000000000000) (bvslt (index!24324 lt!258359) (size!17432 a!3118)))) (or ((_ is Undefined!5524) lt!258359) ((_ is Found!5524) lt!258359) (not ((_ is MissingZero!5524) lt!258359)) (and (bvsge (index!24323 lt!258359) #b00000000000000000000000000000000) (bvslt (index!24323 lt!258359) (size!17432 a!3118)))) (or ((_ is Undefined!5524) lt!258359) ((_ is Found!5524) lt!258359) ((_ is MissingZero!5524) lt!258359) (not ((_ is MissingVacant!5524) lt!258359)) (and (bvsge (index!24326 lt!258359) #b00000000000000000000000000000000) (bvslt (index!24326 lt!258359) (size!17432 a!3118)))) (or ((_ is Undefined!5524) lt!258359) (ite ((_ is Found!5524) lt!258359) (= (select (arr!17068 a!3118) (index!24324 lt!258359)) (select (arr!17068 a!3118) j!142)) (ite ((_ is MissingZero!5524) lt!258359) (= (select (arr!17068 a!3118) (index!24323 lt!258359)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5524) lt!258359) (= (select (arr!17068 a!3118) (index!24326 lt!258359)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!326195 () SeekEntryResult!5524)

(assert (=> d!84127 (= lt!258359 e!326195)))

(declare-fun c!64937 () Bool)

(assert (=> d!84127 (= c!64937 (and ((_ is Intermediate!5524) lt!258360) (undefined!6336 lt!258360)))))

(assert (=> d!84127 (= lt!258360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17068 a!3118) j!142) mask!3119) (select (arr!17068 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84127 (validMask!0 mask!3119)))

(assert (=> d!84127 (= (seekEntryOrOpen!0 (select (arr!17068 a!3118) j!142) a!3118 mask!3119) lt!258359)))

(declare-fun b!566786 () Bool)

(assert (=> b!566786 (= e!326195 Undefined!5524)))

(declare-fun b!566787 () Bool)

(assert (=> b!566787 (= e!326196 (MissingZero!5524 (index!24325 lt!258360)))))

(declare-fun b!566788 () Bool)

(assert (=> b!566788 (= e!326195 e!326197)))

(declare-fun lt!258361 () (_ BitVec 64))

(assert (=> b!566788 (= lt!258361 (select (arr!17068 a!3118) (index!24325 lt!258360)))))

(declare-fun c!64938 () Bool)

(assert (=> b!566788 (= c!64938 (= lt!258361 (select (arr!17068 a!3118) j!142)))))

(declare-fun b!566789 () Bool)

(declare-fun c!64939 () Bool)

(assert (=> b!566789 (= c!64939 (= lt!258361 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566789 (= e!326197 e!326196)))

(assert (= (and d!84127 c!64937) b!566786))

(assert (= (and d!84127 (not c!64937)) b!566788))

(assert (= (and b!566788 c!64938) b!566785))

(assert (= (and b!566788 (not c!64938)) b!566789))

(assert (= (and b!566789 c!64939) b!566787))

(assert (= (and b!566789 (not c!64939)) b!566784))

(assert (=> b!566784 m!545239))

(declare-fun m!545397 () Bool)

(assert (=> b!566784 m!545397))

(assert (=> d!84127 m!545249))

(declare-fun m!545399 () Bool)

(assert (=> d!84127 m!545399))

(assert (=> d!84127 m!545259))

(assert (=> d!84127 m!545239))

(declare-fun m!545401 () Bool)

(assert (=> d!84127 m!545401))

(assert (=> d!84127 m!545239))

(assert (=> d!84127 m!545259))

(declare-fun m!545403 () Bool)

(assert (=> d!84127 m!545403))

(declare-fun m!545405 () Bool)

(assert (=> d!84127 m!545405))

(declare-fun m!545407 () Bool)

(assert (=> b!566788 m!545407))

(assert (=> b!566601 d!84127))

(declare-fun b!566880 () Bool)

(declare-fun e!326259 () Bool)

(declare-fun e!326261 () Bool)

(assert (=> b!566880 (= e!326259 e!326261)))

(declare-fun res!357650 () Bool)

(declare-fun lt!258390 () SeekEntryResult!5524)

(assert (=> b!566880 (= res!357650 (and ((_ is Intermediate!5524) lt!258390) (not (undefined!6336 lt!258390)) (bvslt (x!53218 lt!258390) #b01111111111111111111111111111110) (bvsge (x!53218 lt!258390) #b00000000000000000000000000000000) (bvsge (x!53218 lt!258390) #b00000000000000000000000000000000)))))

(assert (=> b!566880 (=> (not res!357650) (not e!326261))))

(declare-fun b!566881 () Bool)

(declare-fun e!326260 () SeekEntryResult!5524)

(assert (=> b!566881 (= e!326260 (Intermediate!5524 false lt!258266 #b00000000000000000000000000000000))))

(declare-fun b!566882 () Bool)

(assert (=> b!566882 (and (bvsge (index!24325 lt!258390) #b00000000000000000000000000000000) (bvslt (index!24325 lt!258390) (size!17432 (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118)))))))

(declare-fun res!357651 () Bool)

(assert (=> b!566882 (= res!357651 (= (select (arr!17068 (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118))) (index!24325 lt!258390)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326258 () Bool)

(assert (=> b!566882 (=> res!357651 e!326258)))

(declare-fun b!566883 () Bool)

(assert (=> b!566883 (and (bvsge (index!24325 lt!258390) #b00000000000000000000000000000000) (bvslt (index!24325 lt!258390) (size!17432 (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118)))))))

(declare-fun res!357652 () Bool)

(assert (=> b!566883 (= res!357652 (= (select (arr!17068 (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118))) (index!24325 lt!258390)) (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!566883 (=> res!357652 e!326258)))

(assert (=> b!566883 (= e!326261 e!326258)))

(declare-fun b!566884 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566884 (= e!326260 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258266 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118)) mask!3119))))

(declare-fun b!566885 () Bool)

(assert (=> b!566885 (= e!326259 (bvsge (x!53218 lt!258390) #b01111111111111111111111111111110))))

(declare-fun b!566886 () Bool)

(declare-fun e!326257 () SeekEntryResult!5524)

(assert (=> b!566886 (= e!326257 (Intermediate!5524 true lt!258266 #b00000000000000000000000000000000))))

(declare-fun b!566887 () Bool)

(assert (=> b!566887 (= e!326257 e!326260)))

(declare-fun c!64966 () Bool)

(declare-fun lt!258391 () (_ BitVec 64))

(assert (=> b!566887 (= c!64966 (or (= lt!258391 (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!258391 lt!258391) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!84129 () Bool)

(assert (=> d!84129 e!326259))

(declare-fun c!64965 () Bool)

(assert (=> d!84129 (= c!64965 (and ((_ is Intermediate!5524) lt!258390) (undefined!6336 lt!258390)))))

(assert (=> d!84129 (= lt!258390 e!326257)))

(declare-fun c!64967 () Bool)

(assert (=> d!84129 (= c!64967 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84129 (= lt!258391 (select (arr!17068 (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118))) lt!258266))))

(assert (=> d!84129 (validMask!0 mask!3119)))

(assert (=> d!84129 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258266 (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118)) mask!3119) lt!258390)))

(declare-fun b!566888 () Bool)

(assert (=> b!566888 (and (bvsge (index!24325 lt!258390) #b00000000000000000000000000000000) (bvslt (index!24325 lt!258390) (size!17432 (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118)))))))

(assert (=> b!566888 (= e!326258 (= (select (arr!17068 (array!35550 (store (arr!17068 a!3118) i!1132 k0!1914) (size!17432 a!3118))) (index!24325 lt!258390)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84129 c!64967) b!566886))

(assert (= (and d!84129 (not c!64967)) b!566887))

(assert (= (and b!566887 c!64966) b!566881))

(assert (= (and b!566887 (not c!64966)) b!566884))

(assert (= (and d!84129 c!64965) b!566885))

(assert (= (and d!84129 (not c!64965)) b!566880))

(assert (= (and b!566880 res!357650) b!566883))

(assert (= (and b!566883 (not res!357652)) b!566882))

(assert (= (and b!566882 (not res!357651)) b!566888))

(declare-fun m!545471 () Bool)

(assert (=> b!566884 m!545471))

(assert (=> b!566884 m!545471))

(assert (=> b!566884 m!545261))

(declare-fun m!545473 () Bool)

(assert (=> b!566884 m!545473))

(declare-fun m!545475 () Bool)

(assert (=> b!566882 m!545475))

(declare-fun m!545477 () Bool)

(assert (=> d!84129 m!545477))

(assert (=> d!84129 m!545249))

(assert (=> b!566883 m!545475))

(assert (=> b!566888 m!545475))

(assert (=> b!566602 d!84129))

(declare-fun b!566889 () Bool)

(declare-fun e!326264 () Bool)

(declare-fun e!326266 () Bool)

(assert (=> b!566889 (= e!326264 e!326266)))

(declare-fun res!357653 () Bool)

(declare-fun lt!258392 () SeekEntryResult!5524)

(assert (=> b!566889 (= res!357653 (and ((_ is Intermediate!5524) lt!258392) (not (undefined!6336 lt!258392)) (bvslt (x!53218 lt!258392) #b01111111111111111111111111111110) (bvsge (x!53218 lt!258392) #b00000000000000000000000000000000) (bvsge (x!53218 lt!258392) #b00000000000000000000000000000000)))))

(assert (=> b!566889 (=> (not res!357653) (not e!326266))))

(declare-fun b!566890 () Bool)

(declare-fun e!326265 () SeekEntryResult!5524)

(assert (=> b!566890 (= e!326265 (Intermediate!5524 false lt!258269 #b00000000000000000000000000000000))))

(declare-fun b!566891 () Bool)

(assert (=> b!566891 (and (bvsge (index!24325 lt!258392) #b00000000000000000000000000000000) (bvslt (index!24325 lt!258392) (size!17432 a!3118)))))

(declare-fun res!357654 () Bool)

(assert (=> b!566891 (= res!357654 (= (select (arr!17068 a!3118) (index!24325 lt!258392)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326263 () Bool)

(assert (=> b!566891 (=> res!357654 e!326263)))

(declare-fun b!566892 () Bool)

(assert (=> b!566892 (and (bvsge (index!24325 lt!258392) #b00000000000000000000000000000000) (bvslt (index!24325 lt!258392) (size!17432 a!3118)))))

(declare-fun res!357655 () Bool)

(assert (=> b!566892 (= res!357655 (= (select (arr!17068 a!3118) (index!24325 lt!258392)) (select (arr!17068 a!3118) j!142)))))

(assert (=> b!566892 (=> res!357655 e!326263)))

(assert (=> b!566892 (= e!326266 e!326263)))

(declare-fun b!566893 () Bool)

(assert (=> b!566893 (= e!326265 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258269 #b00000000000000000000000000000000 mask!3119) (select (arr!17068 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566894 () Bool)

(assert (=> b!566894 (= e!326264 (bvsge (x!53218 lt!258392) #b01111111111111111111111111111110))))

(declare-fun b!566895 () Bool)

(declare-fun e!326262 () SeekEntryResult!5524)

(assert (=> b!566895 (= e!326262 (Intermediate!5524 true lt!258269 #b00000000000000000000000000000000))))

(declare-fun b!566896 () Bool)

(assert (=> b!566896 (= e!326262 e!326265)))

(declare-fun lt!258393 () (_ BitVec 64))

(declare-fun c!64969 () Bool)

(assert (=> b!566896 (= c!64969 (or (= lt!258393 (select (arr!17068 a!3118) j!142)) (= (bvadd lt!258393 lt!258393) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!84153 () Bool)

(assert (=> d!84153 e!326264))

(declare-fun c!64968 () Bool)

(assert (=> d!84153 (= c!64968 (and ((_ is Intermediate!5524) lt!258392) (undefined!6336 lt!258392)))))

(assert (=> d!84153 (= lt!258392 e!326262)))

(declare-fun c!64970 () Bool)

(assert (=> d!84153 (= c!64970 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84153 (= lt!258393 (select (arr!17068 a!3118) lt!258269))))

(assert (=> d!84153 (validMask!0 mask!3119)))

(assert (=> d!84153 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258269 (select (arr!17068 a!3118) j!142) a!3118 mask!3119) lt!258392)))

(declare-fun b!566897 () Bool)

(assert (=> b!566897 (and (bvsge (index!24325 lt!258392) #b00000000000000000000000000000000) (bvslt (index!24325 lt!258392) (size!17432 a!3118)))))

(assert (=> b!566897 (= e!326263 (= (select (arr!17068 a!3118) (index!24325 lt!258392)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84153 c!64970) b!566895))

(assert (= (and d!84153 (not c!64970)) b!566896))

(assert (= (and b!566896 c!64969) b!566890))

(assert (= (and b!566896 (not c!64969)) b!566893))

(assert (= (and d!84153 c!64968) b!566894))

(assert (= (and d!84153 (not c!64968)) b!566889))

(assert (= (and b!566889 res!357653) b!566892))

(assert (= (and b!566892 (not res!357655)) b!566891))

(assert (= (and b!566891 (not res!357654)) b!566897))

(declare-fun m!545479 () Bool)

(assert (=> b!566893 m!545479))

(assert (=> b!566893 m!545479))

(assert (=> b!566893 m!545239))

(declare-fun m!545481 () Bool)

(assert (=> b!566893 m!545481))

(declare-fun m!545483 () Bool)

(assert (=> b!566891 m!545483))

(declare-fun m!545485 () Bool)

(assert (=> d!84153 m!545485))

(assert (=> d!84153 m!545249))

(assert (=> b!566892 m!545483))

(assert (=> b!566897 m!545483))

(assert (=> b!566602 d!84153))

(declare-fun d!84155 () Bool)

(declare-fun lt!258405 () (_ BitVec 32))

(declare-fun lt!258404 () (_ BitVec 32))

(assert (=> d!84155 (= lt!258405 (bvmul (bvxor lt!258404 (bvlshr lt!258404 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84155 (= lt!258404 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84155 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357656 (let ((h!12210 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53225 (bvmul (bvxor h!12210 (bvlshr h!12210 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53225 (bvlshr x!53225 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357656 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357656 #b00000000000000000000000000000000))))))

(assert (=> d!84155 (= (toIndex!0 (select (store (arr!17068 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!258405 (bvlshr lt!258405 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566602 d!84155))

(declare-fun d!84157 () Bool)

(declare-fun lt!258407 () (_ BitVec 32))

(declare-fun lt!258406 () (_ BitVec 32))

(assert (=> d!84157 (= lt!258407 (bvmul (bvxor lt!258406 (bvlshr lt!258406 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84157 (= lt!258406 ((_ extract 31 0) (bvand (bvxor (select (arr!17068 a!3118) j!142) (bvlshr (select (arr!17068 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84157 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357656 (let ((h!12210 ((_ extract 31 0) (bvand (bvxor (select (arr!17068 a!3118) j!142) (bvlshr (select (arr!17068 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53225 (bvmul (bvxor h!12210 (bvlshr h!12210 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53225 (bvlshr x!53225 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357656 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357656 #b00000000000000000000000000000000))))))

(assert (=> d!84157 (= (toIndex!0 (select (arr!17068 a!3118) j!142) mask!3119) (bvand (bvxor lt!258407 (bvlshr lt!258407 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566602 d!84157))

(declare-fun d!84159 () Bool)

(assert (=> d!84159 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566597 d!84159))

(check-sat (not b!566685) (not b!566719) (not b!566756) (not b!566757) (not d!84153) (not d!84127) (not bm!32499) (not b!566784) (not b!566723) (not d!84129) (not bm!32498) (not bm!32502) (not b!566893) (not b!566642) (not d!84101) (not b!566718) (not b!566722) (not d!84081) (not b!566754) (not b!566884))
(check-sat)
