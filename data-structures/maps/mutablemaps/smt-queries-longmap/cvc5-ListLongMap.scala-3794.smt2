; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52076 () Bool)

(assert start!52076)

(declare-fun b!568266 () Bool)

(declare-fun res!358622 () Bool)

(declare-fun e!326983 () Bool)

(assert (=> b!568266 (=> (not res!358622) (not e!326983))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35610 0))(
  ( (array!35611 (arr!17094 (Array (_ BitVec 32) (_ BitVec 64))) (size!17458 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35610)

(assert (=> b!568266 (= res!358622 (and (= (size!17458 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17458 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17458 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568267 () Bool)

(declare-fun res!358617 () Bool)

(declare-fun e!326982 () Bool)

(assert (=> b!568267 (=> (not res!358617) (not e!326982))))

(declare-datatypes ((List!11227 0))(
  ( (Nil!11224) (Cons!11223 (h!12241 (_ BitVec 64)) (t!17463 List!11227)) )
))
(declare-fun arrayNoDuplicates!0 (array!35610 (_ BitVec 32) List!11227) Bool)

(assert (=> b!568267 (= res!358617 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11224))))

(declare-fun b!568268 () Bool)

(declare-fun e!326980 () Bool)

(assert (=> b!568268 (= e!326982 e!326980)))

(declare-fun res!358620 () Bool)

(assert (=> b!568268 (=> (not res!358620) (not e!326980))))

(declare-datatypes ((SeekEntryResult!5550 0))(
  ( (MissingZero!5550 (index!24427 (_ BitVec 32))) (Found!5550 (index!24428 (_ BitVec 32))) (Intermediate!5550 (undefined!6362 Bool) (index!24429 (_ BitVec 32)) (x!53334 (_ BitVec 32))) (Undefined!5550) (MissingVacant!5550 (index!24430 (_ BitVec 32))) )
))
(declare-fun lt!258920 () SeekEntryResult!5550)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!258923 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35610 (_ BitVec 32)) SeekEntryResult!5550)

(assert (=> b!568268 (= res!358620 (= lt!258920 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258923 (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118)) mask!3119)))))

(declare-fun lt!258919 () (_ BitVec 32))

(assert (=> b!568268 (= lt!258920 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258919 (select (arr!17094 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568268 (= lt!258923 (toIndex!0 (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568268 (= lt!258919 (toIndex!0 (select (arr!17094 a!3118) j!142) mask!3119))))

(declare-fun b!568269 () Bool)

(assert (=> b!568269 (= e!326983 e!326982)))

(declare-fun res!358619 () Bool)

(assert (=> b!568269 (=> (not res!358619) (not e!326982))))

(declare-fun lt!258922 () SeekEntryResult!5550)

(assert (=> b!568269 (= res!358619 (or (= lt!258922 (MissingZero!5550 i!1132)) (= lt!258922 (MissingVacant!5550 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35610 (_ BitVec 32)) SeekEntryResult!5550)

(assert (=> b!568269 (= lt!258922 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568270 () Bool)

(declare-fun res!358618 () Bool)

(assert (=> b!568270 (=> (not res!358618) (not e!326983))))

(declare-fun arrayContainsKey!0 (array!35610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568270 (= res!358618 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568271 () Bool)

(declare-fun res!358623 () Bool)

(assert (=> b!568271 (=> (not res!358623) (not e!326982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35610 (_ BitVec 32)) Bool)

(assert (=> b!568271 (= res!358623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!358624 () Bool)

(assert (=> start!52076 (=> (not res!358624) (not e!326983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52076 (= res!358624 (validMask!0 mask!3119))))

(assert (=> start!52076 e!326983))

(assert (=> start!52076 true))

(declare-fun array_inv!12868 (array!35610) Bool)

(assert (=> start!52076 (array_inv!12868 a!3118)))

(declare-fun b!568272 () Bool)

(declare-fun res!358621 () Bool)

(assert (=> b!568272 (=> (not res!358621) (not e!326983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568272 (= res!358621 (validKeyInArray!0 k!1914))))

(declare-fun b!568273 () Bool)

(declare-fun res!358625 () Bool)

(assert (=> b!568273 (=> (not res!358625) (not e!326983))))

(assert (=> b!568273 (= res!358625 (validKeyInArray!0 (select (arr!17094 a!3118) j!142)))))

(declare-fun b!568274 () Bool)

(declare-fun lt!258921 () SeekEntryResult!5550)

(assert (=> b!568274 (= e!326980 (not (or (not (is-Intermediate!5550 lt!258920)) (undefined!6362 lt!258920) (= (select (arr!17094 a!3118) (index!24429 lt!258920)) (select (arr!17094 a!3118) j!142)) (not (= (select (arr!17094 a!3118) (index!24429 lt!258920)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!258921 (MissingZero!5550 (index!24429 lt!258920))))))))

(assert (=> b!568274 (= lt!258921 (Found!5550 j!142))))

(assert (=> b!568274 (= lt!258921 (seekEntryOrOpen!0 (select (arr!17094 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568274 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17802 0))(
  ( (Unit!17803) )
))
(declare-fun lt!258918 () Unit!17802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17802)

(assert (=> b!568274 (= lt!258918 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52076 res!358624) b!568266))

(assert (= (and b!568266 res!358622) b!568273))

(assert (= (and b!568273 res!358625) b!568272))

(assert (= (and b!568272 res!358621) b!568270))

(assert (= (and b!568270 res!358618) b!568269))

(assert (= (and b!568269 res!358619) b!568271))

(assert (= (and b!568271 res!358623) b!568267))

(assert (= (and b!568267 res!358617) b!568268))

(assert (= (and b!568268 res!358620) b!568274))

(declare-fun m!546841 () Bool)

(assert (=> b!568273 m!546841))

(assert (=> b!568273 m!546841))

(declare-fun m!546843 () Bool)

(assert (=> b!568273 m!546843))

(declare-fun m!546845 () Bool)

(assert (=> b!568270 m!546845))

(assert (=> b!568268 m!546841))

(declare-fun m!546847 () Bool)

(assert (=> b!568268 m!546847))

(assert (=> b!568268 m!546841))

(declare-fun m!546849 () Bool)

(assert (=> b!568268 m!546849))

(assert (=> b!568268 m!546841))

(declare-fun m!546851 () Bool)

(assert (=> b!568268 m!546851))

(declare-fun m!546853 () Bool)

(assert (=> b!568268 m!546853))

(assert (=> b!568268 m!546851))

(declare-fun m!546855 () Bool)

(assert (=> b!568268 m!546855))

(assert (=> b!568268 m!546851))

(declare-fun m!546857 () Bool)

(assert (=> b!568268 m!546857))

(declare-fun m!546859 () Bool)

(assert (=> b!568269 m!546859))

(declare-fun m!546861 () Bool)

(assert (=> b!568267 m!546861))

(declare-fun m!546863 () Bool)

(assert (=> b!568271 m!546863))

(assert (=> b!568274 m!546841))

(declare-fun m!546865 () Bool)

(assert (=> b!568274 m!546865))

(declare-fun m!546867 () Bool)

(assert (=> b!568274 m!546867))

(declare-fun m!546869 () Bool)

(assert (=> b!568274 m!546869))

(assert (=> b!568274 m!546841))

(declare-fun m!546871 () Bool)

(assert (=> b!568274 m!546871))

(declare-fun m!546873 () Bool)

(assert (=> start!52076 m!546873))

(declare-fun m!546875 () Bool)

(assert (=> start!52076 m!546875))

(declare-fun m!546877 () Bool)

(assert (=> b!568272 m!546877))

(push 1)

(assert (not b!568274))

(assert (not start!52076))

(assert (not b!568270))

(assert (not b!568267))

(assert (not b!568268))

(assert (not b!568272))

(assert (not b!568273))

(assert (not b!568271))

(assert (not b!568269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!568337 () Bool)

(declare-fun e!327016 () Bool)

(declare-fun call!32561 () Bool)

(assert (=> b!568337 (= e!327016 call!32561)))

(declare-fun b!568339 () Bool)

(declare-fun e!327015 () Bool)

(assert (=> b!568339 (= e!327015 call!32561)))

(declare-fun bm!32558 () Bool)

(assert (=> bm!32558 (= call!32561 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!568340 () Bool)

(declare-fun e!327014 () Bool)

(assert (=> b!568340 (= e!327014 e!327016)))

(declare-fun c!65180 () Bool)

(assert (=> b!568340 (= c!65180 (validKeyInArray!0 (select (arr!17094 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568338 () Bool)

(assert (=> b!568338 (= e!327016 e!327015)))

(declare-fun lt!258968 () (_ BitVec 64))

(assert (=> b!568338 (= lt!258968 (select (arr!17094 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258967 () Unit!17802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35610 (_ BitVec 64) (_ BitVec 32)) Unit!17802)

(assert (=> b!568338 (= lt!258967 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258968 #b00000000000000000000000000000000))))

(assert (=> b!568338 (arrayContainsKey!0 a!3118 lt!258968 #b00000000000000000000000000000000)))

(declare-fun lt!258966 () Unit!17802)

(assert (=> b!568338 (= lt!258966 lt!258967)))

(declare-fun res!358684 () Bool)

(assert (=> b!568338 (= res!358684 (= (seekEntryOrOpen!0 (select (arr!17094 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5550 #b00000000000000000000000000000000)))))

(assert (=> b!568338 (=> (not res!358684) (not e!327015))))

(declare-fun d!84371 () Bool)

(declare-fun res!358685 () Bool)

(assert (=> d!84371 (=> res!358685 e!327014)))

(assert (=> d!84371 (= res!358685 (bvsge #b00000000000000000000000000000000 (size!17458 a!3118)))))

(assert (=> d!84371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!327014)))

(assert (= (and d!84371 (not res!358685)) b!568340))

(assert (= (and b!568340 c!65180) b!568338))

(assert (= (and b!568340 (not c!65180)) b!568337))

(assert (= (and b!568338 res!358684) b!568339))

(assert (= (or b!568339 b!568337) bm!32558))

(declare-fun m!546955 () Bool)

(assert (=> bm!32558 m!546955))

(declare-fun m!546957 () Bool)

(assert (=> b!568340 m!546957))

(assert (=> b!568340 m!546957))

(declare-fun m!546959 () Bool)

(assert (=> b!568340 m!546959))

(assert (=> b!568338 m!546957))

(declare-fun m!546961 () Bool)

(assert (=> b!568338 m!546961))

(declare-fun m!546963 () Bool)

(assert (=> b!568338 m!546963))

(assert (=> b!568338 m!546957))

(declare-fun m!546965 () Bool)

(assert (=> b!568338 m!546965))

(assert (=> b!568271 d!84371))

(declare-fun d!84377 () Bool)

(assert (=> d!84377 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!568272 d!84377))

(declare-fun b!568359 () Bool)

(declare-fun e!327032 () Bool)

(declare-fun call!32564 () Bool)

(assert (=> b!568359 (= e!327032 call!32564)))

(declare-fun bm!32561 () Bool)

(declare-fun c!65187 () Bool)

(assert (=> bm!32561 (= call!32564 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65187 (Cons!11223 (select (arr!17094 a!3118) #b00000000000000000000000000000000) Nil!11224) Nil!11224)))))

(declare-fun b!568360 () Bool)

(declare-fun e!327030 () Bool)

(declare-fun e!327029 () Bool)

(assert (=> b!568360 (= e!327030 e!327029)))

(declare-fun res!358692 () Bool)

(assert (=> b!568360 (=> (not res!358692) (not e!327029))))

(declare-fun e!327031 () Bool)

(assert (=> b!568360 (= res!358692 (not e!327031))))

(declare-fun res!358694 () Bool)

(assert (=> b!568360 (=> (not res!358694) (not e!327031))))

(assert (=> b!568360 (= res!358694 (validKeyInArray!0 (select (arr!17094 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84379 () Bool)

(declare-fun res!358693 () Bool)

(assert (=> d!84379 (=> res!358693 e!327030)))

(assert (=> d!84379 (= res!358693 (bvsge #b00000000000000000000000000000000 (size!17458 a!3118)))))

(assert (=> d!84379 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11224) e!327030)))

(declare-fun b!568361 () Bool)

(assert (=> b!568361 (= e!327032 call!32564)))

(declare-fun b!568362 () Bool)

(assert (=> b!568362 (= e!327029 e!327032)))

(assert (=> b!568362 (= c!65187 (validKeyInArray!0 (select (arr!17094 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568363 () Bool)

(declare-fun contains!2879 (List!11227 (_ BitVec 64)) Bool)

(assert (=> b!568363 (= e!327031 (contains!2879 Nil!11224 (select (arr!17094 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84379 (not res!358693)) b!568360))

(assert (= (and b!568360 res!358694) b!568363))

(assert (= (and b!568360 res!358692) b!568362))

(assert (= (and b!568362 c!65187) b!568361))

(assert (= (and b!568362 (not c!65187)) b!568359))

(assert (= (or b!568361 b!568359) bm!32561))

(assert (=> bm!32561 m!546957))

(declare-fun m!546967 () Bool)

(assert (=> bm!32561 m!546967))

(assert (=> b!568360 m!546957))

(assert (=> b!568360 m!546957))

(assert (=> b!568360 m!546959))

(assert (=> b!568362 m!546957))

(assert (=> b!568362 m!546957))

(assert (=> b!568362 m!546959))

(assert (=> b!568363 m!546957))

(assert (=> b!568363 m!546957))

(declare-fun m!546969 () Bool)

(assert (=> b!568363 m!546969))

(assert (=> b!568267 d!84379))

(declare-fun d!84381 () Bool)

(assert (=> d!84381 (= (validKeyInArray!0 (select (arr!17094 a!3118) j!142)) (and (not (= (select (arr!17094 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17094 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!568273 d!84381))

(declare-fun lt!258996 () SeekEntryResult!5550)

(declare-fun b!568445 () Bool)

(assert (=> b!568445 (and (bvsge (index!24429 lt!258996) #b00000000000000000000000000000000) (bvslt (index!24429 lt!258996) (size!17458 (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118)))))))

(declare-fun res!358741 () Bool)

(assert (=> b!568445 (= res!358741 (= (select (arr!17094 (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118))) (index!24429 lt!258996)) (select (store (arr!17094 a!3118) i!1132 k!1914) j!142)))))

(declare-fun e!327090 () Bool)

(assert (=> b!568445 (=> res!358741 e!327090)))

(declare-fun e!327089 () Bool)

(assert (=> b!568445 (= e!327089 e!327090)))

(declare-fun b!568446 () Bool)

(declare-fun e!327093 () SeekEntryResult!5550)

(assert (=> b!568446 (= e!327093 (Intermediate!5550 false lt!258923 #b00000000000000000000000000000000))))

(declare-fun b!568447 () Bool)

(declare-fun e!327092 () SeekEntryResult!5550)

(assert (=> b!568447 (= e!327092 e!327093)))

(declare-fun c!65208 () Bool)

(declare-fun lt!258995 () (_ BitVec 64))

(assert (=> b!568447 (= c!65208 (or (= lt!258995 (select (store (arr!17094 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!258995 lt!258995) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568448 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568448 (= e!327093 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258923 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118)) mask!3119))))

(declare-fun b!568449 () Bool)

(assert (=> b!568449 (and (bvsge (index!24429 lt!258996) #b00000000000000000000000000000000) (bvslt (index!24429 lt!258996) (size!17458 (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118)))))))

(assert (=> b!568449 (= e!327090 (= (select (arr!17094 (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118))) (index!24429 lt!258996)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!84383 () Bool)

(declare-fun e!327091 () Bool)

(assert (=> d!84383 e!327091))

(declare-fun c!65207 () Bool)

(assert (=> d!84383 (= c!65207 (and (is-Intermediate!5550 lt!258996) (undefined!6362 lt!258996)))))

(assert (=> d!84383 (= lt!258996 e!327092)))

(declare-fun c!65209 () Bool)

(assert (=> d!84383 (= c!65209 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84383 (= lt!258995 (select (arr!17094 (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118))) lt!258923))))

(assert (=> d!84383 (validMask!0 mask!3119)))

(assert (=> d!84383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258923 (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118)) mask!3119) lt!258996)))

(declare-fun b!568450 () Bool)

(assert (=> b!568450 (= e!327091 (bvsge (x!53334 lt!258996) #b01111111111111111111111111111110))))

(declare-fun b!568451 () Bool)

(assert (=> b!568451 (and (bvsge (index!24429 lt!258996) #b00000000000000000000000000000000) (bvslt (index!24429 lt!258996) (size!17458 (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118)))))))

(declare-fun res!358740 () Bool)

(assert (=> b!568451 (= res!358740 (= (select (arr!17094 (array!35611 (store (arr!17094 a!3118) i!1132 k!1914) (size!17458 a!3118))) (index!24429 lt!258996)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568451 (=> res!358740 e!327090)))

(declare-fun b!568452 () Bool)

(assert (=> b!568452 (= e!327092 (Intermediate!5550 true lt!258923 #b00000000000000000000000000000000))))

(declare-fun b!568453 () Bool)

(assert (=> b!568453 (= e!327091 e!327089)))

(declare-fun res!358739 () Bool)

(assert (=> b!568453 (= res!358739 (and (is-Intermediate!5550 lt!258996) (not (undefined!6362 lt!258996)) (bvslt (x!53334 lt!258996) #b01111111111111111111111111111110) (bvsge (x!53334 lt!258996) #b00000000000000000000000000000000) (bvsge (x!53334 lt!258996) #b00000000000000000000000000000000)))))

(assert (=> b!568453 (=> (not res!358739) (not e!327089))))

(assert (= (and d!84383 c!65209) b!568452))

(assert (= (and d!84383 (not c!65209)) b!568447))

(assert (= (and b!568447 c!65208) b!568446))

(assert (= (and b!568447 (not c!65208)) b!568448))

(assert (= (and d!84383 c!65207) b!568450))

(assert (= (and d!84383 (not c!65207)) b!568453))

(assert (= (and b!568453 res!358739) b!568445))

(assert (= (and b!568445 (not res!358741)) b!568451))

(assert (= (and b!568451 (not res!358740)) b!568449))

(declare-fun m!547001 () Bool)

(assert (=> b!568445 m!547001))

(declare-fun m!547003 () Bool)

(assert (=> b!568448 m!547003))

(assert (=> b!568448 m!547003))

(assert (=> b!568448 m!546851))

(declare-fun m!547005 () Bool)

(assert (=> b!568448 m!547005))

(assert (=> b!568451 m!547001))

(assert (=> b!568449 m!547001))

(declare-fun m!547007 () Bool)

(assert (=> d!84383 m!547007))

(assert (=> d!84383 m!546873))

(assert (=> b!568268 d!84383))

(declare-fun b!568454 () Bool)

(declare-fun lt!258998 () SeekEntryResult!5550)

(assert (=> b!568454 (and (bvsge (index!24429 lt!258998) #b00000000000000000000000000000000) (bvslt (index!24429 lt!258998) (size!17458 a!3118)))))

(declare-fun res!358744 () Bool)

(assert (=> b!568454 (= res!358744 (= (select (arr!17094 a!3118) (index!24429 lt!258998)) (select (arr!17094 a!3118) j!142)))))

(declare-fun e!327095 () Bool)

(assert (=> b!568454 (=> res!358744 e!327095)))

(declare-fun e!327094 () Bool)

(assert (=> b!568454 (= e!327094 e!327095)))

(declare-fun b!568455 () Bool)

(declare-fun e!327098 () SeekEntryResult!5550)

(assert (=> b!568455 (= e!327098 (Intermediate!5550 false lt!258919 #b00000000000000000000000000000000))))

(declare-fun b!568456 () Bool)

(declare-fun e!327097 () SeekEntryResult!5550)

(assert (=> b!568456 (= e!327097 e!327098)))

(declare-fun lt!258997 () (_ BitVec 64))

(declare-fun c!65211 () Bool)

(assert (=> b!568456 (= c!65211 (or (= lt!258997 (select (arr!17094 a!3118) j!142)) (= (bvadd lt!258997 lt!258997) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568457 () Bool)

(assert (=> b!568457 (= e!327098 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258919 #b00000000000000000000000000000000 mask!3119) (select (arr!17094 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568458 () Bool)

(assert (=> b!568458 (and (bvsge (index!24429 lt!258998) #b00000000000000000000000000000000) (bvslt (index!24429 lt!258998) (size!17458 a!3118)))))

(assert (=> b!568458 (= e!327095 (= (select (arr!17094 a!3118) (index!24429 lt!258998)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!84405 () Bool)

(declare-fun e!327096 () Bool)

(assert (=> d!84405 e!327096))

(declare-fun c!65210 () Bool)

(assert (=> d!84405 (= c!65210 (and (is-Intermediate!5550 lt!258998) (undefined!6362 lt!258998)))))

(assert (=> d!84405 (= lt!258998 e!327097)))

(declare-fun c!65212 () Bool)

(assert (=> d!84405 (= c!65212 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84405 (= lt!258997 (select (arr!17094 a!3118) lt!258919))))

(assert (=> d!84405 (validMask!0 mask!3119)))

(assert (=> d!84405 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258919 (select (arr!17094 a!3118) j!142) a!3118 mask!3119) lt!258998)))

(declare-fun b!568459 () Bool)

(assert (=> b!568459 (= e!327096 (bvsge (x!53334 lt!258998) #b01111111111111111111111111111110))))

(declare-fun b!568460 () Bool)

(assert (=> b!568460 (and (bvsge (index!24429 lt!258998) #b00000000000000000000000000000000) (bvslt (index!24429 lt!258998) (size!17458 a!3118)))))

(declare-fun res!358743 () Bool)

(assert (=> b!568460 (= res!358743 (= (select (arr!17094 a!3118) (index!24429 lt!258998)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568460 (=> res!358743 e!327095)))

(declare-fun b!568461 () Bool)

(assert (=> b!568461 (= e!327097 (Intermediate!5550 true lt!258919 #b00000000000000000000000000000000))))

(declare-fun b!568462 () Bool)

(assert (=> b!568462 (= e!327096 e!327094)))

(declare-fun res!358742 () Bool)

(assert (=> b!568462 (= res!358742 (and (is-Intermediate!5550 lt!258998) (not (undefined!6362 lt!258998)) (bvslt (x!53334 lt!258998) #b01111111111111111111111111111110) (bvsge (x!53334 lt!258998) #b00000000000000000000000000000000) (bvsge (x!53334 lt!258998) #b00000000000000000000000000000000)))))

(assert (=> b!568462 (=> (not res!358742) (not e!327094))))

(assert (= (and d!84405 c!65212) b!568461))

(assert (= (and d!84405 (not c!65212)) b!568456))

(assert (= (and b!568456 c!65211) b!568455))

(assert (= (and b!568456 (not c!65211)) b!568457))

(assert (= (and d!84405 c!65210) b!568459))

(assert (= (and d!84405 (not c!65210)) b!568462))

(assert (= (and b!568462 res!358742) b!568454))

(assert (= (and b!568454 (not res!358744)) b!568460))

(assert (= (and b!568460 (not res!358743)) b!568458))

(declare-fun m!547009 () Bool)

(assert (=> b!568454 m!547009))

(declare-fun m!547011 () Bool)

(assert (=> b!568457 m!547011))

(assert (=> b!568457 m!547011))

(assert (=> b!568457 m!546841))

(declare-fun m!547013 () Bool)

(assert (=> b!568457 m!547013))

(assert (=> b!568460 m!547009))

(assert (=> b!568458 m!547009))

(declare-fun m!547015 () Bool)

(assert (=> d!84405 m!547015))

(assert (=> d!84405 m!546873))

(assert (=> b!568268 d!84405))

(declare-fun d!84407 () Bool)

(declare-fun lt!259007 () (_ BitVec 32))

(declare-fun lt!259006 () (_ BitVec 32))

(assert (=> d!84407 (= lt!259007 (bvmul (bvxor lt!259006 (bvlshr lt!259006 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84407 (= lt!259006 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84407 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358747 (let ((h!12245 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53340 (bvmul (bvxor h!12245 (bvlshr h!12245 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53340 (bvlshr x!53340 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358747 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358747 #b00000000000000000000000000000000))))))

(assert (=> d!84407 (= (toIndex!0 (select (store (arr!17094 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!259007 (bvlshr lt!259007 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!568268 d!84407))

(declare-fun d!84411 () Bool)

(declare-fun lt!259009 () (_ BitVec 32))

(declare-fun lt!259008 () (_ BitVec 32))

(assert (=> d!84411 (= lt!259009 (bvmul (bvxor lt!259008 (bvlshr lt!259008 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84411 (= lt!259008 ((_ extract 31 0) (bvand (bvxor (select (arr!17094 a!3118) j!142) (bvlshr (select (arr!17094 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84411 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!358747 (let ((h!12245 ((_ extract 31 0) (bvand (bvxor (select (arr!17094 a!3118) j!142) (bvlshr (select (arr!17094 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53340 (bvmul (bvxor h!12245 (bvlshr h!12245 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53340 (bvlshr x!53340 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!358747 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!358747 #b00000000000000000000000000000000))))))

(assert (=> d!84411 (= (toIndex!0 (select (arr!17094 a!3118) j!142) mask!3119) (bvand (bvxor lt!259009 (bvlshr lt!259009 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!568268 d!84411))

(declare-fun b!568491 () Bool)

(declare-fun e!327114 () SeekEntryResult!5550)

(assert (=> b!568491 (= e!327114 Undefined!5550)))

(declare-fun d!84413 () Bool)

(declare-fun lt!259024 () SeekEntryResult!5550)

(assert (=> d!84413 (and (or (is-Undefined!5550 lt!259024) (not (is-Found!5550 lt!259024)) (and (bvsge (index!24428 lt!259024) #b00000000000000000000000000000000) (bvslt (index!24428 lt!259024) (size!17458 a!3118)))) (or (is-Undefined!5550 lt!259024) (is-Found!5550 lt!259024) (not (is-MissingZero!5550 lt!259024)) (and (bvsge (index!24427 lt!259024) #b00000000000000000000000000000000) (bvslt (index!24427 lt!259024) (size!17458 a!3118)))) (or (is-Undefined!5550 lt!259024) (is-Found!5550 lt!259024) (is-MissingZero!5550 lt!259024) (not (is-MissingVacant!5550 lt!259024)) (and (bvsge (index!24430 lt!259024) #b00000000000000000000000000000000) (bvslt (index!24430 lt!259024) (size!17458 a!3118)))) (or (is-Undefined!5550 lt!259024) (ite (is-Found!5550 lt!259024) (= (select (arr!17094 a!3118) (index!24428 lt!259024)) (select (arr!17094 a!3118) j!142)) (ite (is-MissingZero!5550 lt!259024) (= (select (arr!17094 a!3118) (index!24427 lt!259024)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5550 lt!259024) (= (select (arr!17094 a!3118) (index!24430 lt!259024)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84413 (= lt!259024 e!327114)))

(declare-fun c!65226 () Bool)

(declare-fun lt!259023 () SeekEntryResult!5550)

(assert (=> d!84413 (= c!65226 (and (is-Intermediate!5550 lt!259023) (undefined!6362 lt!259023)))))

(assert (=> d!84413 (= lt!259023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17094 a!3118) j!142) mask!3119) (select (arr!17094 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84413 (validMask!0 mask!3119)))

(assert (=> d!84413 (= (seekEntryOrOpen!0 (select (arr!17094 a!3118) j!142) a!3118 mask!3119) lt!259024)))

(declare-fun b!568492 () Bool)

(declare-fun e!327115 () SeekEntryResult!5550)

(assert (=> b!568492 (= e!327115 (MissingZero!5550 (index!24429 lt!259023)))))

(declare-fun b!568493 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35610 (_ BitVec 32)) SeekEntryResult!5550)

(assert (=> b!568493 (= e!327115 (seekKeyOrZeroReturnVacant!0 (x!53334 lt!259023) (index!24429 lt!259023) (index!24429 lt!259023) (select (arr!17094 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568494 () Bool)

(declare-fun e!327116 () SeekEntryResult!5550)

(assert (=> b!568494 (= e!327116 (Found!5550 (index!24429 lt!259023)))))

(declare-fun b!568495 () Bool)

(declare-fun c!65228 () Bool)

(declare-fun lt!259022 () (_ BitVec 64))

(assert (=> b!568495 (= c!65228 (= lt!259022 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568495 (= e!327116 e!327115)))

(declare-fun b!568496 () Bool)

(assert (=> b!568496 (= e!327114 e!327116)))

(assert (=> b!568496 (= lt!259022 (select (arr!17094 a!3118) (index!24429 lt!259023)))))

(declare-fun c!65227 () Bool)

(assert (=> b!568496 (= c!65227 (= lt!259022 (select (arr!17094 a!3118) j!142)))))

(assert (= (and d!84413 c!65226) b!568491))

(assert (= (and d!84413 (not c!65226)) b!568496))

(assert (= (and b!568496 c!65227) b!568494))

(assert (= (and b!568496 (not c!65227)) b!568495))

(assert (= (and b!568495 c!65228) b!568492))

(assert (= (and b!568495 (not c!65228)) b!568493))

(declare-fun m!547027 () Bool)

(assert (=> d!84413 m!547027))

(declare-fun m!547029 () Bool)

(assert (=> d!84413 m!547029))

(assert (=> d!84413 m!546873))

(declare-fun m!547031 () Bool)

(assert (=> d!84413 m!547031))

(assert (=> d!84413 m!546841))

(assert (=> d!84413 m!546847))

(assert (=> d!84413 m!546847))

(assert (=> d!84413 m!546841))

(declare-fun m!547033 () Bool)

(assert (=> d!84413 m!547033))

(assert (=> b!568493 m!546841))

(declare-fun m!547035 () Bool)

(assert (=> b!568493 m!547035))

(declare-fun m!547037 () Bool)

(assert (=> b!568496 m!547037))

(assert (=> b!568274 d!84413))

(declare-fun b!568497 () Bool)

(declare-fun e!327119 () Bool)

(declare-fun call!32571 () Bool)

(assert (=> b!568497 (= e!327119 call!32571)))

(declare-fun b!568499 () Bool)

(declare-fun e!327118 () Bool)

(assert (=> b!568499 (= e!327118 call!32571)))

(declare-fun bm!32568 () Bool)

(assert (=> bm!32568 (= call!32571 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!568500 () Bool)

(declare-fun e!327117 () Bool)

(assert (=> b!568500 (= e!327117 e!327119)))

(declare-fun c!65229 () Bool)

(assert (=> b!568500 (= c!65229 (validKeyInArray!0 (select (arr!17094 a!3118) j!142)))))

(declare-fun b!568498 () Bool)

(assert (=> b!568498 (= e!327119 e!327118)))

(declare-fun lt!259027 () (_ BitVec 64))

(assert (=> b!568498 (= lt!259027 (select (arr!17094 a!3118) j!142))))

(declare-fun lt!259026 () Unit!17802)

(assert (=> b!568498 (= lt!259026 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259027 j!142))))

(assert (=> b!568498 (arrayContainsKey!0 a!3118 lt!259027 #b00000000000000000000000000000000)))

(declare-fun lt!259025 () Unit!17802)

(assert (=> b!568498 (= lt!259025 lt!259026)))

(declare-fun res!358748 () Bool)

(assert (=> b!568498 (= res!358748 (= (seekEntryOrOpen!0 (select (arr!17094 a!3118) j!142) a!3118 mask!3119) (Found!5550 j!142)))))

(assert (=> b!568498 (=> (not res!358748) (not e!327118))))

(declare-fun d!84423 () Bool)

(declare-fun res!358749 () Bool)

(assert (=> d!84423 (=> res!358749 e!327117)))

(assert (=> d!84423 (= res!358749 (bvsge j!142 (size!17458 a!3118)))))

(assert (=> d!84423 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!327117)))

(assert (= (and d!84423 (not res!358749)) b!568500))

(assert (= (and b!568500 c!65229) b!568498))

(assert (= (and b!568500 (not c!65229)) b!568497))

(assert (= (and b!568498 res!358748) b!568499))

(assert (= (or b!568499 b!568497) bm!32568))

(declare-fun m!547039 () Bool)

(assert (=> bm!32568 m!547039))

(assert (=> b!568500 m!546841))

(assert (=> b!568500 m!546841))

(assert (=> b!568500 m!546843))

(assert (=> b!568498 m!546841))

(declare-fun m!547041 () Bool)

(assert (=> b!568498 m!547041))

(declare-fun m!547043 () Bool)

(assert (=> b!568498 m!547043))

(assert (=> b!568498 m!546841))

(assert (=> b!568498 m!546871))

(assert (=> b!568274 d!84423))

(declare-fun d!84425 () Bool)

(assert (=> d!84425 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!259039 () Unit!17802)

(declare-fun choose!38 (array!35610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17802)

(assert (=> d!84425 (= lt!259039 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84425 (validMask!0 mask!3119)))

(assert (=> d!84425 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!259039)))

(declare-fun bs!17634 () Bool)

(assert (= bs!17634 d!84425))

(assert (=> bs!17634 m!546865))

(declare-fun m!547059 () Bool)

(assert (=> bs!17634 m!547059))

(assert (=> bs!17634 m!546873))

(assert (=> b!568274 d!84425))

(declare-fun b!568525 () Bool)

(declare-fun e!327132 () SeekEntryResult!5550)

(assert (=> b!568525 (= e!327132 Undefined!5550)))

(declare-fun d!84429 () Bool)

(declare-fun lt!259045 () SeekEntryResult!5550)

(assert (=> d!84429 (and (or (is-Undefined!5550 lt!259045) (not (is-Found!5550 lt!259045)) (and (bvsge (index!24428 lt!259045) #b00000000000000000000000000000000) (bvslt (index!24428 lt!259045) (size!17458 a!3118)))) (or (is-Undefined!5550 lt!259045) (is-Found!5550 lt!259045) (not (is-MissingZero!5550 lt!259045)) (and (bvsge (index!24427 lt!259045) #b00000000000000000000000000000000) (bvslt (index!24427 lt!259045) (size!17458 a!3118)))) (or (is-Undefined!5550 lt!259045) (is-Found!5550 lt!259045) (is-MissingZero!5550 lt!259045) (not (is-MissingVacant!5550 lt!259045)) (and (bvsge (index!24430 lt!259045) #b00000000000000000000000000000000) (bvslt (index!24430 lt!259045) (size!17458 a!3118)))) (or (is-Undefined!5550 lt!259045) (ite (is-Found!5550 lt!259045) (= (select (arr!17094 a!3118) (index!24428 lt!259045)) k!1914) (ite (is-MissingZero!5550 lt!259045) (= (select (arr!17094 a!3118) (index!24427 lt!259045)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5550 lt!259045) (= (select (arr!17094 a!3118) (index!24430 lt!259045)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84429 (= lt!259045 e!327132)))

(declare-fun c!65242 () Bool)

(declare-fun lt!259044 () SeekEntryResult!5550)

(assert (=> d!84429 (= c!65242 (and (is-Intermediate!5550 lt!259044) (undefined!6362 lt!259044)))))

(assert (=> d!84429 (= lt!259044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84429 (validMask!0 mask!3119)))

(assert (=> d!84429 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!259045)))

(declare-fun b!568526 () Bool)

(declare-fun e!327133 () SeekEntryResult!5550)

(assert (=> b!568526 (= e!327133 (MissingZero!5550 (index!24429 lt!259044)))))

(declare-fun b!568527 () Bool)

(assert (=> b!568527 (= e!327133 (seekKeyOrZeroReturnVacant!0 (x!53334 lt!259044) (index!24429 lt!259044) (index!24429 lt!259044) k!1914 a!3118 mask!3119))))

(declare-fun b!568528 () Bool)

(declare-fun e!327134 () SeekEntryResult!5550)

(assert (=> b!568528 (= e!327134 (Found!5550 (index!24429 lt!259044)))))

(declare-fun b!568529 () Bool)

(declare-fun c!65244 () Bool)

(declare-fun lt!259043 () (_ BitVec 64))

(assert (=> b!568529 (= c!65244 (= lt!259043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568529 (= e!327134 e!327133)))

(declare-fun b!568530 () Bool)

(assert (=> b!568530 (= e!327132 e!327134)))

(assert (=> b!568530 (= lt!259043 (select (arr!17094 a!3118) (index!24429 lt!259044)))))

(declare-fun c!65243 () Bool)

(assert (=> b!568530 (= c!65243 (= lt!259043 k!1914))))

(assert (= (and d!84429 c!65242) b!568525))

(assert (= (and d!84429 (not c!65242)) b!568530))

(assert (= (and b!568530 c!65243) b!568528))

(assert (= (and b!568530 (not c!65243)) b!568529))

(assert (= (and b!568529 c!65244) b!568526))

(assert (= (and b!568529 (not c!65244)) b!568527))

(declare-fun m!547069 () Bool)

(assert (=> d!84429 m!547069))

(declare-fun m!547071 () Bool)

(assert (=> d!84429 m!547071))

(assert (=> d!84429 m!546873))

(declare-fun m!547075 () Bool)

(assert (=> d!84429 m!547075))

(declare-fun m!547079 () Bool)

(assert (=> d!84429 m!547079))

(assert (=> d!84429 m!547079))

(declare-fun m!547081 () Bool)

(assert (=> d!84429 m!547081))

(declare-fun m!547083 () Bool)

(assert (=> b!568527 m!547083))

(declare-fun m!547085 () Bool)

(assert (=> b!568530 m!547085))

(assert (=> b!568269 d!84429))

(declare-fun d!84433 () Bool)

(declare-fun res!358760 () Bool)

(declare-fun e!327148 () Bool)

(assert (=> d!84433 (=> res!358760 e!327148)))

(assert (=> d!84433 (= res!358760 (= (select (arr!17094 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84433 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!327148)))

(declare-fun b!568547 () Bool)

(declare-fun e!327149 () Bool)

(assert (=> b!568547 (= e!327148 e!327149)))

(declare-fun res!358761 () Bool)

(assert (=> b!568547 (=> (not res!358761) (not e!327149))))

(assert (=> b!568547 (= res!358761 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17458 a!3118)))))

(declare-fun b!568548 () Bool)

(assert (=> b!568548 (= e!327149 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84433 (not res!358760)) b!568547))

(assert (= (and b!568547 res!358761) b!568548))

(assert (=> d!84433 m!546957))

(declare-fun m!547093 () Bool)

(assert (=> b!568548 m!547093))

(assert (=> b!568270 d!84433))

(declare-fun d!84437 () Bool)

(assert (=> d!84437 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52076 d!84437))

(declare-fun d!84451 () Bool)

(assert (=> d!84451 (= (array_inv!12868 a!3118) (bvsge (size!17458 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52076 d!84451))

(push 1)

(assert (not b!568340))

(assert (not b!568360))

(assert (not b!568363))

(assert (not b!568338))

(assert (not d!84383))

(assert (not b!568457))

(assert (not b!568500))

(assert (not bm!32561))

(assert (not b!568448))

(assert (not d!84413))

(assert (not b!568362))

(assert (not b!568548))

(assert (not d!84425))

(assert (not bm!32558))

(assert (not b!568527))

(assert (not b!568498))

(assert (not d!84405))

(assert (not b!568493))

(assert (not bm!32568))

(assert (not d!84429))

(check-sat)

