; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52006 () Bool)

(assert start!52006)

(declare-fun b!567827 () Bool)

(declare-fun res!358370 () Bool)

(declare-fun e!326734 () Bool)

(assert (=> b!567827 (=> (not res!358370) (not e!326734))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35597 0))(
  ( (array!35598 (arr!17089 (Array (_ BitVec 32) (_ BitVec 64))) (size!17453 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35597)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!567827 (= res!358370 (and (= (size!17453 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17453 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17453 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!567828 () Bool)

(declare-fun res!358369 () Bool)

(declare-fun e!326733 () Bool)

(assert (=> b!567828 (=> (not res!358369) (not e!326733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35597 (_ BitVec 32)) Bool)

(assert (=> b!567828 (= res!358369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567829 () Bool)

(declare-fun res!358363 () Bool)

(assert (=> b!567829 (=> (not res!358363) (not e!326733))))

(declare-datatypes ((List!11222 0))(
  ( (Nil!11219) (Cons!11218 (h!12233 (_ BitVec 64)) (t!17458 List!11222)) )
))
(declare-fun arrayNoDuplicates!0 (array!35597 (_ BitVec 32) List!11222) Bool)

(assert (=> b!567829 (= res!358363 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11219))))

(declare-fun b!567830 () Bool)

(declare-fun e!326732 () Bool)

(declare-datatypes ((SeekEntryResult!5545 0))(
  ( (MissingZero!5545 (index!24407 (_ BitVec 32))) (Found!5545 (index!24408 (_ BitVec 32))) (Intermediate!5545 (undefined!6357 Bool) (index!24409 (_ BitVec 32)) (x!53307 (_ BitVec 32))) (Undefined!5545) (MissingVacant!5545 (index!24410 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35597 (_ BitVec 32)) SeekEntryResult!5545)

(assert (=> b!567830 (= e!326732 (= (seekEntryOrOpen!0 (select (arr!17089 a!3118) j!142) a!3118 mask!3119) (Found!5545 j!142)))))

(declare-fun b!567831 () Bool)

(declare-fun res!358361 () Bool)

(assert (=> b!567831 (=> (not res!358361) (not e!326734))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567831 (= res!358361 (validKeyInArray!0 k0!1914))))

(declare-fun b!567833 () Bool)

(assert (=> b!567833 (= e!326734 e!326733)))

(declare-fun res!358362 () Bool)

(assert (=> b!567833 (=> (not res!358362) (not e!326733))))

(declare-fun lt!258742 () SeekEntryResult!5545)

(assert (=> b!567833 (= res!358362 (or (= lt!258742 (MissingZero!5545 i!1132)) (= lt!258742 (MissingVacant!5545 i!1132))))))

(assert (=> b!567833 (= lt!258742 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!567834 () Bool)

(declare-fun res!358364 () Bool)

(assert (=> b!567834 (=> (not res!358364) (not e!326734))))

(assert (=> b!567834 (= res!358364 (validKeyInArray!0 (select (arr!17089 a!3118) j!142)))))

(declare-fun b!567835 () Bool)

(declare-fun lt!258741 () SeekEntryResult!5545)

(declare-fun e!326731 () Bool)

(get-info :version)

(assert (=> b!567835 (= e!326731 (not (or (not ((_ is Intermediate!5545) lt!258741)) (undefined!6357 lt!258741) (= (select (arr!17089 a!3118) (index!24409 lt!258741)) (select (arr!17089 a!3118) j!142)) (and (bvsge (index!24409 lt!258741) #b00000000000000000000000000000000) (bvslt (index!24409 lt!258741) (size!17453 a!3118))))))))

(assert (=> b!567835 e!326732))

(declare-fun res!358368 () Bool)

(assert (=> b!567835 (=> (not res!358368) (not e!326732))))

(assert (=> b!567835 (= res!358368 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17792 0))(
  ( (Unit!17793) )
))
(declare-fun lt!258739 () Unit!17792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17792)

(assert (=> b!567835 (= lt!258739 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567836 () Bool)

(declare-fun res!358365 () Bool)

(assert (=> b!567836 (=> (not res!358365) (not e!326734))))

(declare-fun arrayContainsKey!0 (array!35597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567836 (= res!358365 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!358366 () Bool)

(assert (=> start!52006 (=> (not res!358366) (not e!326734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52006 (= res!358366 (validMask!0 mask!3119))))

(assert (=> start!52006 e!326734))

(assert (=> start!52006 true))

(declare-fun array_inv!12863 (array!35597) Bool)

(assert (=> start!52006 (array_inv!12863 a!3118)))

(declare-fun b!567832 () Bool)

(assert (=> b!567832 (= e!326733 e!326731)))

(declare-fun res!358367 () Bool)

(assert (=> b!567832 (=> (not res!358367) (not e!326731))))

(declare-fun lt!258743 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35597 (_ BitVec 32)) SeekEntryResult!5545)

(assert (=> b!567832 (= res!358367 (= lt!258741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258743 (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118)) mask!3119)))))

(declare-fun lt!258740 () (_ BitVec 32))

(assert (=> b!567832 (= lt!258741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258740 (select (arr!17089 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567832 (= lt!258743 (toIndex!0 (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!567832 (= lt!258740 (toIndex!0 (select (arr!17089 a!3118) j!142) mask!3119))))

(assert (= (and start!52006 res!358366) b!567827))

(assert (= (and b!567827 res!358370) b!567834))

(assert (= (and b!567834 res!358364) b!567831))

(assert (= (and b!567831 res!358361) b!567836))

(assert (= (and b!567836 res!358365) b!567833))

(assert (= (and b!567833 res!358362) b!567828))

(assert (= (and b!567828 res!358369) b!567829))

(assert (= (and b!567829 res!358363) b!567832))

(assert (= (and b!567832 res!358367) b!567835))

(assert (= (and b!567835 res!358368) b!567830))

(declare-fun m!546453 () Bool)

(assert (=> b!567835 m!546453))

(declare-fun m!546455 () Bool)

(assert (=> b!567835 m!546455))

(declare-fun m!546457 () Bool)

(assert (=> b!567835 m!546457))

(declare-fun m!546459 () Bool)

(assert (=> b!567835 m!546459))

(assert (=> b!567834 m!546455))

(assert (=> b!567834 m!546455))

(declare-fun m!546461 () Bool)

(assert (=> b!567834 m!546461))

(declare-fun m!546463 () Bool)

(assert (=> b!567836 m!546463))

(declare-fun m!546465 () Bool)

(assert (=> b!567829 m!546465))

(declare-fun m!546467 () Bool)

(assert (=> b!567831 m!546467))

(assert (=> b!567830 m!546455))

(assert (=> b!567830 m!546455))

(declare-fun m!546469 () Bool)

(assert (=> b!567830 m!546469))

(declare-fun m!546471 () Bool)

(assert (=> b!567833 m!546471))

(assert (=> b!567832 m!546455))

(declare-fun m!546473 () Bool)

(assert (=> b!567832 m!546473))

(assert (=> b!567832 m!546455))

(declare-fun m!546475 () Bool)

(assert (=> b!567832 m!546475))

(assert (=> b!567832 m!546455))

(declare-fun m!546477 () Bool)

(assert (=> b!567832 m!546477))

(declare-fun m!546479 () Bool)

(assert (=> b!567832 m!546479))

(assert (=> b!567832 m!546475))

(declare-fun m!546481 () Bool)

(assert (=> b!567832 m!546481))

(assert (=> b!567832 m!546475))

(declare-fun m!546483 () Bool)

(assert (=> b!567832 m!546483))

(declare-fun m!546485 () Bool)

(assert (=> start!52006 m!546485))

(declare-fun m!546487 () Bool)

(assert (=> start!52006 m!546487))

(declare-fun m!546489 () Bool)

(assert (=> b!567828 m!546489))

(check-sat (not b!567835) (not b!567830) (not b!567832) (not b!567836) (not b!567828) (not b!567833) (not b!567829) (not b!567834) (not start!52006) (not b!567831))
(check-sat)
(get-model)

(declare-fun b!567877 () Bool)

(declare-fun e!326758 () Bool)

(declare-fun e!326759 () Bool)

(assert (=> b!567877 (= e!326758 e!326759)))

(declare-fun res!358409 () Bool)

(assert (=> b!567877 (=> (not res!358409) (not e!326759))))

(declare-fun e!326760 () Bool)

(assert (=> b!567877 (= res!358409 (not e!326760))))

(declare-fun res!358408 () Bool)

(assert (=> b!567877 (=> (not res!358408) (not e!326760))))

(assert (=> b!567877 (= res!358408 (validKeyInArray!0 (select (arr!17089 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567878 () Bool)

(declare-fun e!326761 () Bool)

(assert (=> b!567878 (= e!326759 e!326761)))

(declare-fun c!65087 () Bool)

(assert (=> b!567878 (= c!65087 (validKeyInArray!0 (select (arr!17089 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!567879 () Bool)

(declare-fun call!32540 () Bool)

(assert (=> b!567879 (= e!326761 call!32540)))

(declare-fun bm!32537 () Bool)

(assert (=> bm!32537 (= call!32540 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65087 (Cons!11218 (select (arr!17089 a!3118) #b00000000000000000000000000000000) Nil!11219) Nil!11219)))))

(declare-fun d!84277 () Bool)

(declare-fun res!358407 () Bool)

(assert (=> d!84277 (=> res!358407 e!326758)))

(assert (=> d!84277 (= res!358407 (bvsge #b00000000000000000000000000000000 (size!17453 a!3118)))))

(assert (=> d!84277 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11219) e!326758)))

(declare-fun b!567880 () Bool)

(assert (=> b!567880 (= e!326761 call!32540)))

(declare-fun b!567881 () Bool)

(declare-fun contains!2876 (List!11222 (_ BitVec 64)) Bool)

(assert (=> b!567881 (= e!326760 (contains!2876 Nil!11219 (select (arr!17089 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84277 (not res!358407)) b!567877))

(assert (= (and b!567877 res!358408) b!567881))

(assert (= (and b!567877 res!358409) b!567878))

(assert (= (and b!567878 c!65087) b!567879))

(assert (= (and b!567878 (not c!65087)) b!567880))

(assert (= (or b!567879 b!567880) bm!32537))

(declare-fun m!546529 () Bool)

(assert (=> b!567877 m!546529))

(assert (=> b!567877 m!546529))

(declare-fun m!546531 () Bool)

(assert (=> b!567877 m!546531))

(assert (=> b!567878 m!546529))

(assert (=> b!567878 m!546529))

(assert (=> b!567878 m!546531))

(assert (=> bm!32537 m!546529))

(declare-fun m!546533 () Bool)

(assert (=> bm!32537 m!546533))

(assert (=> b!567881 m!546529))

(assert (=> b!567881 m!546529))

(declare-fun m!546535 () Bool)

(assert (=> b!567881 m!546535))

(assert (=> b!567829 d!84277))

(declare-fun d!84279 () Bool)

(assert (=> d!84279 (= (validKeyInArray!0 (select (arr!17089 a!3118) j!142)) (and (not (= (select (arr!17089 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17089 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567834 d!84279))

(declare-fun d!84281 () Bool)

(declare-fun res!358414 () Bool)

(declare-fun e!326766 () Bool)

(assert (=> d!84281 (=> res!358414 e!326766)))

(assert (=> d!84281 (= res!358414 (= (select (arr!17089 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!84281 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!326766)))

(declare-fun b!567886 () Bool)

(declare-fun e!326767 () Bool)

(assert (=> b!567886 (= e!326766 e!326767)))

(declare-fun res!358415 () Bool)

(assert (=> b!567886 (=> (not res!358415) (not e!326767))))

(assert (=> b!567886 (= res!358415 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17453 a!3118)))))

(declare-fun b!567887 () Bool)

(assert (=> b!567887 (= e!326767 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84281 (not res!358414)) b!567886))

(assert (= (and b!567886 res!358415) b!567887))

(assert (=> d!84281 m!546529))

(declare-fun m!546537 () Bool)

(assert (=> b!567887 m!546537))

(assert (=> b!567836 d!84281))

(declare-fun d!84283 () Bool)

(declare-fun res!358421 () Bool)

(declare-fun e!326774 () Bool)

(assert (=> d!84283 (=> res!358421 e!326774)))

(assert (=> d!84283 (= res!358421 (bvsge j!142 (size!17453 a!3118)))))

(assert (=> d!84283 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326774)))

(declare-fun bm!32540 () Bool)

(declare-fun call!32543 () Bool)

(assert (=> bm!32540 (= call!32543 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!567896 () Bool)

(declare-fun e!326775 () Bool)

(assert (=> b!567896 (= e!326775 call!32543)))

(declare-fun b!567897 () Bool)

(declare-fun e!326776 () Bool)

(assert (=> b!567897 (= e!326776 call!32543)))

(declare-fun b!567898 () Bool)

(assert (=> b!567898 (= e!326775 e!326776)))

(declare-fun lt!258766 () (_ BitVec 64))

(assert (=> b!567898 (= lt!258766 (select (arr!17089 a!3118) j!142))))

(declare-fun lt!258767 () Unit!17792)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35597 (_ BitVec 64) (_ BitVec 32)) Unit!17792)

(assert (=> b!567898 (= lt!258767 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258766 j!142))))

(assert (=> b!567898 (arrayContainsKey!0 a!3118 lt!258766 #b00000000000000000000000000000000)))

(declare-fun lt!258765 () Unit!17792)

(assert (=> b!567898 (= lt!258765 lt!258767)))

(declare-fun res!358420 () Bool)

(assert (=> b!567898 (= res!358420 (= (seekEntryOrOpen!0 (select (arr!17089 a!3118) j!142) a!3118 mask!3119) (Found!5545 j!142)))))

(assert (=> b!567898 (=> (not res!358420) (not e!326776))))

(declare-fun b!567899 () Bool)

(assert (=> b!567899 (= e!326774 e!326775)))

(declare-fun c!65090 () Bool)

(assert (=> b!567899 (= c!65090 (validKeyInArray!0 (select (arr!17089 a!3118) j!142)))))

(assert (= (and d!84283 (not res!358421)) b!567899))

(assert (= (and b!567899 c!65090) b!567898))

(assert (= (and b!567899 (not c!65090)) b!567896))

(assert (= (and b!567898 res!358420) b!567897))

(assert (= (or b!567897 b!567896) bm!32540))

(declare-fun m!546539 () Bool)

(assert (=> bm!32540 m!546539))

(assert (=> b!567898 m!546455))

(declare-fun m!546541 () Bool)

(assert (=> b!567898 m!546541))

(declare-fun m!546543 () Bool)

(assert (=> b!567898 m!546543))

(assert (=> b!567898 m!546455))

(assert (=> b!567898 m!546469))

(assert (=> b!567899 m!546455))

(assert (=> b!567899 m!546455))

(assert (=> b!567899 m!546461))

(assert (=> b!567835 d!84283))

(declare-fun d!84287 () Bool)

(assert (=> d!84287 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258770 () Unit!17792)

(declare-fun choose!38 (array!35597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17792)

(assert (=> d!84287 (= lt!258770 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84287 (validMask!0 mask!3119)))

(assert (=> d!84287 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258770)))

(declare-fun bs!17625 () Bool)

(assert (= bs!17625 d!84287))

(assert (=> bs!17625 m!546457))

(declare-fun m!546545 () Bool)

(assert (=> bs!17625 m!546545))

(assert (=> bs!17625 m!546485))

(assert (=> b!567835 d!84287))

(declare-fun b!567945 () Bool)

(declare-fun e!326805 () SeekEntryResult!5545)

(declare-fun lt!258786 () SeekEntryResult!5545)

(assert (=> b!567945 (= e!326805 (Found!5545 (index!24409 lt!258786)))))

(declare-fun b!567946 () Bool)

(declare-fun e!326806 () SeekEntryResult!5545)

(assert (=> b!567946 (= e!326806 e!326805)))

(declare-fun lt!258788 () (_ BitVec 64))

(assert (=> b!567946 (= lt!258788 (select (arr!17089 a!3118) (index!24409 lt!258786)))))

(declare-fun c!65110 () Bool)

(assert (=> b!567946 (= c!65110 (= lt!258788 (select (arr!17089 a!3118) j!142)))))

(declare-fun e!326804 () SeekEntryResult!5545)

(declare-fun b!567947 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35597 (_ BitVec 32)) SeekEntryResult!5545)

(assert (=> b!567947 (= e!326804 (seekKeyOrZeroReturnVacant!0 (x!53307 lt!258786) (index!24409 lt!258786) (index!24409 lt!258786) (select (arr!17089 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!567948 () Bool)

(assert (=> b!567948 (= e!326806 Undefined!5545)))

(declare-fun b!567949 () Bool)

(assert (=> b!567949 (= e!326804 (MissingZero!5545 (index!24409 lt!258786)))))

(declare-fun d!84289 () Bool)

(declare-fun lt!258787 () SeekEntryResult!5545)

(assert (=> d!84289 (and (or ((_ is Undefined!5545) lt!258787) (not ((_ is Found!5545) lt!258787)) (and (bvsge (index!24408 lt!258787) #b00000000000000000000000000000000) (bvslt (index!24408 lt!258787) (size!17453 a!3118)))) (or ((_ is Undefined!5545) lt!258787) ((_ is Found!5545) lt!258787) (not ((_ is MissingZero!5545) lt!258787)) (and (bvsge (index!24407 lt!258787) #b00000000000000000000000000000000) (bvslt (index!24407 lt!258787) (size!17453 a!3118)))) (or ((_ is Undefined!5545) lt!258787) ((_ is Found!5545) lt!258787) ((_ is MissingZero!5545) lt!258787) (not ((_ is MissingVacant!5545) lt!258787)) (and (bvsge (index!24410 lt!258787) #b00000000000000000000000000000000) (bvslt (index!24410 lt!258787) (size!17453 a!3118)))) (or ((_ is Undefined!5545) lt!258787) (ite ((_ is Found!5545) lt!258787) (= (select (arr!17089 a!3118) (index!24408 lt!258787)) (select (arr!17089 a!3118) j!142)) (ite ((_ is MissingZero!5545) lt!258787) (= (select (arr!17089 a!3118) (index!24407 lt!258787)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5545) lt!258787) (= (select (arr!17089 a!3118) (index!24410 lt!258787)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84289 (= lt!258787 e!326806)))

(declare-fun c!65109 () Bool)

(assert (=> d!84289 (= c!65109 (and ((_ is Intermediate!5545) lt!258786) (undefined!6357 lt!258786)))))

(assert (=> d!84289 (= lt!258786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17089 a!3118) j!142) mask!3119) (select (arr!17089 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84289 (validMask!0 mask!3119)))

(assert (=> d!84289 (= (seekEntryOrOpen!0 (select (arr!17089 a!3118) j!142) a!3118 mask!3119) lt!258787)))

(declare-fun b!567950 () Bool)

(declare-fun c!65111 () Bool)

(assert (=> b!567950 (= c!65111 (= lt!258788 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!567950 (= e!326805 e!326804)))

(assert (= (and d!84289 c!65109) b!567948))

(assert (= (and d!84289 (not c!65109)) b!567946))

(assert (= (and b!567946 c!65110) b!567945))

(assert (= (and b!567946 (not c!65110)) b!567950))

(assert (= (and b!567950 c!65111) b!567949))

(assert (= (and b!567950 (not c!65111)) b!567947))

(declare-fun m!546567 () Bool)

(assert (=> b!567946 m!546567))

(assert (=> b!567947 m!546455))

(declare-fun m!546569 () Bool)

(assert (=> b!567947 m!546569))

(assert (=> d!84289 m!546485))

(assert (=> d!84289 m!546473))

(assert (=> d!84289 m!546455))

(declare-fun m!546571 () Bool)

(assert (=> d!84289 m!546571))

(assert (=> d!84289 m!546455))

(assert (=> d!84289 m!546473))

(declare-fun m!546573 () Bool)

(assert (=> d!84289 m!546573))

(declare-fun m!546575 () Bool)

(assert (=> d!84289 m!546575))

(declare-fun m!546577 () Bool)

(assert (=> d!84289 m!546577))

(assert (=> b!567830 d!84289))

(declare-fun b!568029 () Bool)

(declare-fun e!326853 () SeekEntryResult!5545)

(assert (=> b!568029 (= e!326853 (Intermediate!5545 true lt!258743 #b00000000000000000000000000000000))))

(declare-fun b!568030 () Bool)

(declare-fun e!326849 () SeekEntryResult!5545)

(assert (=> b!568030 (= e!326853 e!326849)))

(declare-fun lt!258821 () (_ BitVec 64))

(declare-fun c!65143 () Bool)

(assert (=> b!568030 (= c!65143 (or (= lt!258821 (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!258821 lt!258821) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568031 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568031 (= e!326849 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258743 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118)) mask!3119))))

(declare-fun b!568032 () Bool)

(declare-fun lt!258822 () SeekEntryResult!5545)

(assert (=> b!568032 (and (bvsge (index!24409 lt!258822) #b00000000000000000000000000000000) (bvslt (index!24409 lt!258822) (size!17453 (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118)))))))

(declare-fun res!358452 () Bool)

(assert (=> b!568032 (= res!358452 (= (select (arr!17089 (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118))) (index!24409 lt!258822)) (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun e!326850 () Bool)

(assert (=> b!568032 (=> res!358452 e!326850)))

(declare-fun e!326851 () Bool)

(assert (=> b!568032 (= e!326851 e!326850)))

(declare-fun d!84301 () Bool)

(declare-fun e!326852 () Bool)

(assert (=> d!84301 e!326852))

(declare-fun c!65142 () Bool)

(assert (=> d!84301 (= c!65142 (and ((_ is Intermediate!5545) lt!258822) (undefined!6357 lt!258822)))))

(assert (=> d!84301 (= lt!258822 e!326853)))

(declare-fun c!65144 () Bool)

(assert (=> d!84301 (= c!65144 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84301 (= lt!258821 (select (arr!17089 (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118))) lt!258743))))

(assert (=> d!84301 (validMask!0 mask!3119)))

(assert (=> d!84301 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258743 (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118)) mask!3119) lt!258822)))

(declare-fun b!568033 () Bool)

(assert (=> b!568033 (and (bvsge (index!24409 lt!258822) #b00000000000000000000000000000000) (bvslt (index!24409 lt!258822) (size!17453 (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118)))))))

(assert (=> b!568033 (= e!326850 (= (select (arr!17089 (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118))) (index!24409 lt!258822)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!568034 () Bool)

(assert (=> b!568034 (and (bvsge (index!24409 lt!258822) #b00000000000000000000000000000000) (bvslt (index!24409 lt!258822) (size!17453 (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118)))))))

(declare-fun res!358451 () Bool)

(assert (=> b!568034 (= res!358451 (= (select (arr!17089 (array!35598 (store (arr!17089 a!3118) i!1132 k0!1914) (size!17453 a!3118))) (index!24409 lt!258822)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568034 (=> res!358451 e!326850)))

(declare-fun b!568035 () Bool)

(assert (=> b!568035 (= e!326849 (Intermediate!5545 false lt!258743 #b00000000000000000000000000000000))))

(declare-fun b!568036 () Bool)

(assert (=> b!568036 (= e!326852 e!326851)))

(declare-fun res!358450 () Bool)

(assert (=> b!568036 (= res!358450 (and ((_ is Intermediate!5545) lt!258822) (not (undefined!6357 lt!258822)) (bvslt (x!53307 lt!258822) #b01111111111111111111111111111110) (bvsge (x!53307 lt!258822) #b00000000000000000000000000000000) (bvsge (x!53307 lt!258822) #b00000000000000000000000000000000)))))

(assert (=> b!568036 (=> (not res!358450) (not e!326851))))

(declare-fun b!568037 () Bool)

(assert (=> b!568037 (= e!326852 (bvsge (x!53307 lt!258822) #b01111111111111111111111111111110))))

(assert (= (and d!84301 c!65144) b!568029))

(assert (= (and d!84301 (not c!65144)) b!568030))

(assert (= (and b!568030 c!65143) b!568035))

(assert (= (and b!568030 (not c!65143)) b!568031))

(assert (= (and d!84301 c!65142) b!568037))

(assert (= (and d!84301 (not c!65142)) b!568036))

(assert (= (and b!568036 res!358450) b!568032))

(assert (= (and b!568032 (not res!358452)) b!568034))

(assert (= (and b!568034 (not res!358451)) b!568033))

(declare-fun m!546623 () Bool)

(assert (=> b!568032 m!546623))

(declare-fun m!546625 () Bool)

(assert (=> b!568031 m!546625))

(assert (=> b!568031 m!546625))

(assert (=> b!568031 m!546475))

(declare-fun m!546627 () Bool)

(assert (=> b!568031 m!546627))

(declare-fun m!546629 () Bool)

(assert (=> d!84301 m!546629))

(assert (=> d!84301 m!546485))

(assert (=> b!568034 m!546623))

(assert (=> b!568033 m!546623))

(assert (=> b!567832 d!84301))

(declare-fun b!568038 () Bool)

(declare-fun e!326858 () SeekEntryResult!5545)

(assert (=> b!568038 (= e!326858 (Intermediate!5545 true lt!258740 #b00000000000000000000000000000000))))

(declare-fun b!568039 () Bool)

(declare-fun e!326854 () SeekEntryResult!5545)

(assert (=> b!568039 (= e!326858 e!326854)))

(declare-fun c!65146 () Bool)

(declare-fun lt!258823 () (_ BitVec 64))

(assert (=> b!568039 (= c!65146 (or (= lt!258823 (select (arr!17089 a!3118) j!142)) (= (bvadd lt!258823 lt!258823) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568040 () Bool)

(assert (=> b!568040 (= e!326854 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258740 #b00000000000000000000000000000000 mask!3119) (select (arr!17089 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568041 () Bool)

(declare-fun lt!258824 () SeekEntryResult!5545)

(assert (=> b!568041 (and (bvsge (index!24409 lt!258824) #b00000000000000000000000000000000) (bvslt (index!24409 lt!258824) (size!17453 a!3118)))))

(declare-fun res!358455 () Bool)

(assert (=> b!568041 (= res!358455 (= (select (arr!17089 a!3118) (index!24409 lt!258824)) (select (arr!17089 a!3118) j!142)))))

(declare-fun e!326855 () Bool)

(assert (=> b!568041 (=> res!358455 e!326855)))

(declare-fun e!326856 () Bool)

(assert (=> b!568041 (= e!326856 e!326855)))

(declare-fun d!84319 () Bool)

(declare-fun e!326857 () Bool)

(assert (=> d!84319 e!326857))

(declare-fun c!65145 () Bool)

(assert (=> d!84319 (= c!65145 (and ((_ is Intermediate!5545) lt!258824) (undefined!6357 lt!258824)))))

(assert (=> d!84319 (= lt!258824 e!326858)))

(declare-fun c!65147 () Bool)

(assert (=> d!84319 (= c!65147 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84319 (= lt!258823 (select (arr!17089 a!3118) lt!258740))))

(assert (=> d!84319 (validMask!0 mask!3119)))

(assert (=> d!84319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258740 (select (arr!17089 a!3118) j!142) a!3118 mask!3119) lt!258824)))

(declare-fun b!568042 () Bool)

(assert (=> b!568042 (and (bvsge (index!24409 lt!258824) #b00000000000000000000000000000000) (bvslt (index!24409 lt!258824) (size!17453 a!3118)))))

(assert (=> b!568042 (= e!326855 (= (select (arr!17089 a!3118) (index!24409 lt!258824)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!568043 () Bool)

(assert (=> b!568043 (and (bvsge (index!24409 lt!258824) #b00000000000000000000000000000000) (bvslt (index!24409 lt!258824) (size!17453 a!3118)))))

(declare-fun res!358454 () Bool)

(assert (=> b!568043 (= res!358454 (= (select (arr!17089 a!3118) (index!24409 lt!258824)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568043 (=> res!358454 e!326855)))

(declare-fun b!568044 () Bool)

(assert (=> b!568044 (= e!326854 (Intermediate!5545 false lt!258740 #b00000000000000000000000000000000))))

(declare-fun b!568045 () Bool)

(assert (=> b!568045 (= e!326857 e!326856)))

(declare-fun res!358453 () Bool)

(assert (=> b!568045 (= res!358453 (and ((_ is Intermediate!5545) lt!258824) (not (undefined!6357 lt!258824)) (bvslt (x!53307 lt!258824) #b01111111111111111111111111111110) (bvsge (x!53307 lt!258824) #b00000000000000000000000000000000) (bvsge (x!53307 lt!258824) #b00000000000000000000000000000000)))))

(assert (=> b!568045 (=> (not res!358453) (not e!326856))))

(declare-fun b!568046 () Bool)

(assert (=> b!568046 (= e!326857 (bvsge (x!53307 lt!258824) #b01111111111111111111111111111110))))

(assert (= (and d!84319 c!65147) b!568038))

(assert (= (and d!84319 (not c!65147)) b!568039))

(assert (= (and b!568039 c!65146) b!568044))

(assert (= (and b!568039 (not c!65146)) b!568040))

(assert (= (and d!84319 c!65145) b!568046))

(assert (= (and d!84319 (not c!65145)) b!568045))

(assert (= (and b!568045 res!358453) b!568041))

(assert (= (and b!568041 (not res!358455)) b!568043))

(assert (= (and b!568043 (not res!358454)) b!568042))

(declare-fun m!546631 () Bool)

(assert (=> b!568041 m!546631))

(declare-fun m!546633 () Bool)

(assert (=> b!568040 m!546633))

(assert (=> b!568040 m!546633))

(assert (=> b!568040 m!546455))

(declare-fun m!546635 () Bool)

(assert (=> b!568040 m!546635))

(declare-fun m!546637 () Bool)

(assert (=> d!84319 m!546637))

(assert (=> d!84319 m!546485))

(assert (=> b!568043 m!546631))

(assert (=> b!568042 m!546631))

(assert (=> b!567832 d!84319))

(declare-fun d!84321 () Bool)

(declare-fun lt!258830 () (_ BitVec 32))

(declare-fun lt!258829 () (_ BitVec 32))

(assert (=> d!84321 (= lt!258830 (bvmul (bvxor lt!258829 (bvlshr lt!258829 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84321 (= lt!258829 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84321 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358462 (let ((h!12236 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53312 (bvmul (bvxor h!12236 (bvlshr h!12236 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53312 (bvlshr x!53312 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358462 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358462 #b00000000000000000000000000000000))))))

(assert (=> d!84321 (= (toIndex!0 (select (store (arr!17089 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!258830 (bvlshr lt!258830 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567832 d!84321))

(declare-fun d!84325 () Bool)

(declare-fun lt!258832 () (_ BitVec 32))

(declare-fun lt!258831 () (_ BitVec 32))

(assert (=> d!84325 (= lt!258832 (bvmul (bvxor lt!258831 (bvlshr lt!258831 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84325 (= lt!258831 ((_ extract 31 0) (bvand (bvxor (select (arr!17089 a!3118) j!142) (bvlshr (select (arr!17089 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84325 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358462 (let ((h!12236 ((_ extract 31 0) (bvand (bvxor (select (arr!17089 a!3118) j!142) (bvlshr (select (arr!17089 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53312 (bvmul (bvxor h!12236 (bvlshr h!12236 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53312 (bvlshr x!53312 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358462 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358462 #b00000000000000000000000000000000))))))

(assert (=> d!84325 (= (toIndex!0 (select (arr!17089 a!3118) j!142) mask!3119) (bvand (bvxor lt!258832 (bvlshr lt!258832 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!567832 d!84325))

(declare-fun d!84327 () Bool)

(assert (=> d!84327 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52006 d!84327))

(declare-fun d!84331 () Bool)

(assert (=> d!84331 (= (array_inv!12863 a!3118) (bvsge (size!17453 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52006 d!84331))

(declare-fun d!84333 () Bool)

(assert (=> d!84333 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!567831 d!84333))

(declare-fun b!568086 () Bool)

(declare-fun e!326888 () SeekEntryResult!5545)

(declare-fun lt!258837 () SeekEntryResult!5545)

(assert (=> b!568086 (= e!326888 (Found!5545 (index!24409 lt!258837)))))

(declare-fun b!568087 () Bool)

(declare-fun e!326889 () SeekEntryResult!5545)

(assert (=> b!568087 (= e!326889 e!326888)))

(declare-fun lt!258839 () (_ BitVec 64))

(assert (=> b!568087 (= lt!258839 (select (arr!17089 a!3118) (index!24409 lt!258837)))))

(declare-fun c!65158 () Bool)

(assert (=> b!568087 (= c!65158 (= lt!258839 k0!1914))))

(declare-fun e!326887 () SeekEntryResult!5545)

(declare-fun b!568088 () Bool)

(assert (=> b!568088 (= e!326887 (seekKeyOrZeroReturnVacant!0 (x!53307 lt!258837) (index!24409 lt!258837) (index!24409 lt!258837) k0!1914 a!3118 mask!3119))))

(declare-fun b!568089 () Bool)

(assert (=> b!568089 (= e!326889 Undefined!5545)))

(declare-fun b!568090 () Bool)

(assert (=> b!568090 (= e!326887 (MissingZero!5545 (index!24409 lt!258837)))))

(declare-fun d!84335 () Bool)

(declare-fun lt!258838 () SeekEntryResult!5545)

(assert (=> d!84335 (and (or ((_ is Undefined!5545) lt!258838) (not ((_ is Found!5545) lt!258838)) (and (bvsge (index!24408 lt!258838) #b00000000000000000000000000000000) (bvslt (index!24408 lt!258838) (size!17453 a!3118)))) (or ((_ is Undefined!5545) lt!258838) ((_ is Found!5545) lt!258838) (not ((_ is MissingZero!5545) lt!258838)) (and (bvsge (index!24407 lt!258838) #b00000000000000000000000000000000) (bvslt (index!24407 lt!258838) (size!17453 a!3118)))) (or ((_ is Undefined!5545) lt!258838) ((_ is Found!5545) lt!258838) ((_ is MissingZero!5545) lt!258838) (not ((_ is MissingVacant!5545) lt!258838)) (and (bvsge (index!24410 lt!258838) #b00000000000000000000000000000000) (bvslt (index!24410 lt!258838) (size!17453 a!3118)))) (or ((_ is Undefined!5545) lt!258838) (ite ((_ is Found!5545) lt!258838) (= (select (arr!17089 a!3118) (index!24408 lt!258838)) k0!1914) (ite ((_ is MissingZero!5545) lt!258838) (= (select (arr!17089 a!3118) (index!24407 lt!258838)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5545) lt!258838) (= (select (arr!17089 a!3118) (index!24410 lt!258838)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84335 (= lt!258838 e!326889)))

(declare-fun c!65157 () Bool)

(assert (=> d!84335 (= c!65157 (and ((_ is Intermediate!5545) lt!258837) (undefined!6357 lt!258837)))))

(assert (=> d!84335 (= lt!258837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!84335 (validMask!0 mask!3119)))

(assert (=> d!84335 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!258838)))

(declare-fun b!568091 () Bool)

(declare-fun c!65159 () Bool)

(assert (=> b!568091 (= c!65159 (= lt!258839 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568091 (= e!326888 e!326887)))

(assert (= (and d!84335 c!65157) b!568089))

(assert (= (and d!84335 (not c!65157)) b!568087))

(assert (= (and b!568087 c!65158) b!568086))

(assert (= (and b!568087 (not c!65158)) b!568091))

(assert (= (and b!568091 c!65159) b!568090))

(assert (= (and b!568091 (not c!65159)) b!568088))

(declare-fun m!546649 () Bool)

(assert (=> b!568087 m!546649))

(declare-fun m!546651 () Bool)

(assert (=> b!568088 m!546651))

(assert (=> d!84335 m!546485))

(declare-fun m!546653 () Bool)

(assert (=> d!84335 m!546653))

(declare-fun m!546655 () Bool)

(assert (=> d!84335 m!546655))

(assert (=> d!84335 m!546653))

(declare-fun m!546657 () Bool)

(assert (=> d!84335 m!546657))

(declare-fun m!546659 () Bool)

(assert (=> d!84335 m!546659))

(declare-fun m!546661 () Bool)

(assert (=> d!84335 m!546661))

(assert (=> b!567833 d!84335))

(declare-fun d!84337 () Bool)

(declare-fun res!358482 () Bool)

(declare-fun e!326895 () Bool)

(assert (=> d!84337 (=> res!358482 e!326895)))

(assert (=> d!84337 (= res!358482 (bvsge #b00000000000000000000000000000000 (size!17453 a!3118)))))

(assert (=> d!84337 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326895)))

(declare-fun bm!32547 () Bool)

(declare-fun call!32550 () Bool)

(assert (=> bm!32547 (= call!32550 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!568101 () Bool)

(declare-fun e!326896 () Bool)

(assert (=> b!568101 (= e!326896 call!32550)))

(declare-fun b!568102 () Bool)

(declare-fun e!326897 () Bool)

(assert (=> b!568102 (= e!326897 call!32550)))

(declare-fun b!568103 () Bool)

(assert (=> b!568103 (= e!326896 e!326897)))

(declare-fun lt!258843 () (_ BitVec 64))

(assert (=> b!568103 (= lt!258843 (select (arr!17089 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258844 () Unit!17792)

(assert (=> b!568103 (= lt!258844 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258843 #b00000000000000000000000000000000))))

(assert (=> b!568103 (arrayContainsKey!0 a!3118 lt!258843 #b00000000000000000000000000000000)))

(declare-fun lt!258842 () Unit!17792)

(assert (=> b!568103 (= lt!258842 lt!258844)))

(declare-fun res!358481 () Bool)

(assert (=> b!568103 (= res!358481 (= (seekEntryOrOpen!0 (select (arr!17089 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5545 #b00000000000000000000000000000000)))))

(assert (=> b!568103 (=> (not res!358481) (not e!326897))))

(declare-fun b!568104 () Bool)

(assert (=> b!568104 (= e!326895 e!326896)))

(declare-fun c!65163 () Bool)

(assert (=> b!568104 (= c!65163 (validKeyInArray!0 (select (arr!17089 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84337 (not res!358482)) b!568104))

(assert (= (and b!568104 c!65163) b!568103))

(assert (= (and b!568104 (not c!65163)) b!568101))

(assert (= (and b!568103 res!358481) b!568102))

(assert (= (or b!568102 b!568101) bm!32547))

(declare-fun m!546663 () Bool)

(assert (=> bm!32547 m!546663))

(assert (=> b!568103 m!546529))

(declare-fun m!546665 () Bool)

(assert (=> b!568103 m!546665))

(declare-fun m!546667 () Bool)

(assert (=> b!568103 m!546667))

(assert (=> b!568103 m!546529))

(declare-fun m!546669 () Bool)

(assert (=> b!568103 m!546669))

(assert (=> b!568104 m!546529))

(assert (=> b!568104 m!546529))

(assert (=> b!568104 m!546531))

(assert (=> b!567828 d!84337))

(check-sat (not b!567877) (not b!568040) (not b!568031) (not b!567878) (not bm!32547) (not b!568088) (not b!567881) (not d!84287) (not d!84301) (not d!84289) (not bm!32537) (not b!567898) (not bm!32540) (not b!568104) (not b!567947) (not b!567887) (not d!84319) (not b!568103) (not b!567899) (not d!84335))
(check-sat)
