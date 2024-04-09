; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50448 () Bool)

(assert start!50448)

(declare-fun b!551378 () Bool)

(declare-fun res!344307 () Bool)

(declare-fun e!318208 () Bool)

(assert (=> b!551378 (=> (not res!344307) (not e!318208))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34741 0))(
  ( (array!34742 (arr!16679 (Array (_ BitVec 32) (_ BitVec 64))) (size!17043 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34741)

(assert (=> b!551378 (= res!344307 (and (= (size!17043 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17043 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17043 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551379 () Bool)

(declare-fun res!344315 () Bool)

(assert (=> b!551379 (=> (not res!344315) (not e!318208))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551379 (= res!344315 (validKeyInArray!0 k!1914))))

(declare-fun b!551380 () Bool)

(declare-fun e!318207 () Bool)

(assert (=> b!551380 (= e!318208 e!318207)))

(declare-fun res!344314 () Bool)

(assert (=> b!551380 (=> (not res!344314) (not e!318207))))

(declare-datatypes ((SeekEntryResult!5135 0))(
  ( (MissingZero!5135 (index!22767 (_ BitVec 32))) (Found!5135 (index!22768 (_ BitVec 32))) (Intermediate!5135 (undefined!5947 Bool) (index!22769 (_ BitVec 32)) (x!51720 (_ BitVec 32))) (Undefined!5135) (MissingVacant!5135 (index!22770 (_ BitVec 32))) )
))
(declare-fun lt!250819 () SeekEntryResult!5135)

(assert (=> b!551380 (= res!344314 (or (= lt!250819 (MissingZero!5135 i!1132)) (= lt!250819 (MissingVacant!5135 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34741 (_ BitVec 32)) SeekEntryResult!5135)

(assert (=> b!551380 (= lt!250819 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551381 () Bool)

(declare-fun res!344310 () Bool)

(assert (=> b!551381 (=> (not res!344310) (not e!318208))))

(assert (=> b!551381 (= res!344310 (validKeyInArray!0 (select (arr!16679 a!3118) j!142)))))

(declare-fun res!344311 () Bool)

(assert (=> start!50448 (=> (not res!344311) (not e!318208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50448 (= res!344311 (validMask!0 mask!3119))))

(assert (=> start!50448 e!318208))

(assert (=> start!50448 true))

(declare-fun array_inv!12453 (array!34741) Bool)

(assert (=> start!50448 (array_inv!12453 a!3118)))

(declare-fun b!551382 () Bool)

(declare-fun res!344312 () Bool)

(assert (=> b!551382 (=> (not res!344312) (not e!318208))))

(declare-fun arrayContainsKey!0 (array!34741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551382 (= res!344312 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551383 () Bool)

(declare-fun e!318206 () Bool)

(assert (=> b!551383 (= e!318206 (= (seekEntryOrOpen!0 (select (arr!16679 a!3118) j!142) a!3118 mask!3119) (Found!5135 j!142)))))

(declare-fun b!551384 () Bool)

(declare-fun res!344309 () Bool)

(assert (=> b!551384 (=> (not res!344309) (not e!318207))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34741 (_ BitVec 32)) SeekEntryResult!5135)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551384 (= res!344309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119) (select (arr!16679 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118)) mask!3119)))))

(declare-fun b!551385 () Bool)

(declare-fun res!344313 () Bool)

(assert (=> b!551385 (=> (not res!344313) (not e!318207))))

(declare-datatypes ((List!10812 0))(
  ( (Nil!10809) (Cons!10808 (h!11787 (_ BitVec 64)) (t!17048 List!10812)) )
))
(declare-fun arrayNoDuplicates!0 (array!34741 (_ BitVec 32) List!10812) Bool)

(assert (=> b!551385 (= res!344313 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10809))))

(declare-fun b!551386 () Bool)

(declare-fun res!344306 () Bool)

(assert (=> b!551386 (=> (not res!344306) (not e!318207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34741 (_ BitVec 32)) Bool)

(assert (=> b!551386 (= res!344306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551387 () Bool)

(assert (=> b!551387 (= e!318207 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvsle mask!3119 #b00111111111111111111111111111111))))))

(assert (=> b!551387 e!318206))

(declare-fun res!344308 () Bool)

(assert (=> b!551387 (=> (not res!344308) (not e!318206))))

(assert (=> b!551387 (= res!344308 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17044 0))(
  ( (Unit!17045) )
))
(declare-fun lt!250820 () Unit!17044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17044)

(assert (=> b!551387 (= lt!250820 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50448 res!344311) b!551378))

(assert (= (and b!551378 res!344307) b!551381))

(assert (= (and b!551381 res!344310) b!551379))

(assert (= (and b!551379 res!344315) b!551382))

(assert (= (and b!551382 res!344312) b!551380))

(assert (= (and b!551380 res!344314) b!551386))

(assert (= (and b!551386 res!344306) b!551385))

(assert (= (and b!551385 res!344313) b!551384))

(assert (= (and b!551384 res!344309) b!551387))

(assert (= (and b!551387 res!344308) b!551383))

(declare-fun m!528427 () Bool)

(assert (=> b!551383 m!528427))

(assert (=> b!551383 m!528427))

(declare-fun m!528429 () Bool)

(assert (=> b!551383 m!528429))

(declare-fun m!528431 () Bool)

(assert (=> b!551385 m!528431))

(assert (=> b!551384 m!528427))

(declare-fun m!528433 () Bool)

(assert (=> b!551384 m!528433))

(assert (=> b!551384 m!528427))

(declare-fun m!528435 () Bool)

(assert (=> b!551384 m!528435))

(declare-fun m!528437 () Bool)

(assert (=> b!551384 m!528437))

(assert (=> b!551384 m!528435))

(declare-fun m!528439 () Bool)

(assert (=> b!551384 m!528439))

(assert (=> b!551384 m!528433))

(assert (=> b!551384 m!528427))

(declare-fun m!528441 () Bool)

(assert (=> b!551384 m!528441))

(declare-fun m!528443 () Bool)

(assert (=> b!551384 m!528443))

(assert (=> b!551384 m!528435))

(assert (=> b!551384 m!528437))

(declare-fun m!528445 () Bool)

(assert (=> b!551380 m!528445))

(assert (=> b!551381 m!528427))

(assert (=> b!551381 m!528427))

(declare-fun m!528447 () Bool)

(assert (=> b!551381 m!528447))

(declare-fun m!528449 () Bool)

(assert (=> start!50448 m!528449))

(declare-fun m!528451 () Bool)

(assert (=> start!50448 m!528451))

(declare-fun m!528453 () Bool)

(assert (=> b!551387 m!528453))

(declare-fun m!528455 () Bool)

(assert (=> b!551387 m!528455))

(declare-fun m!528457 () Bool)

(assert (=> b!551386 m!528457))

(declare-fun m!528459 () Bool)

(assert (=> b!551379 m!528459))

(declare-fun m!528461 () Bool)

(assert (=> b!551382 m!528461))

(push 1)

(assert (not b!551385))

(assert (not b!551383))

(assert (not b!551386))

(assert (not b!551380))

(assert (not b!551379))

(assert (not b!551384))

(assert (not b!551382))

(assert (not b!551387))

(assert (not start!50448))

(assert (not b!551381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82895 () Bool)

(assert (=> d!82895 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551379 d!82895))

(declare-fun b!551398 () Bool)

(declare-fun e!318220 () Bool)

(declare-fun call!32288 () Bool)

(assert (=> b!551398 (= e!318220 call!32288)))

(declare-fun d!82897 () Bool)

(declare-fun res!344324 () Bool)

(declare-fun e!318217 () Bool)

(assert (=> d!82897 (=> res!344324 e!318217)))

(assert (=> d!82897 (= res!344324 (bvsge #b00000000000000000000000000000000 (size!17043 a!3118)))))

(assert (=> d!82897 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10809) e!318217)))

(declare-fun b!551399 () Bool)

(assert (=> b!551399 (= e!318220 call!32288)))

(declare-fun bm!32285 () Bool)

(declare-fun c!63872 () Bool)

(assert (=> bm!32285 (= call!32288 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63872 (Cons!10808 (select (arr!16679 a!3118) #b00000000000000000000000000000000) Nil!10809) Nil!10809)))))

(declare-fun b!551400 () Bool)

(declare-fun e!318219 () Bool)

(assert (=> b!551400 (= e!318219 e!318220)))

(assert (=> b!551400 (= c!63872 (validKeyInArray!0 (select (arr!16679 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!551401 () Bool)

(assert (=> b!551401 (= e!318217 e!318219)))

(declare-fun res!344322 () Bool)

(assert (=> b!551401 (=> (not res!344322) (not e!318219))))

(declare-fun e!318218 () Bool)

(assert (=> b!551401 (= res!344322 (not e!318218))))

(declare-fun res!344323 () Bool)

(assert (=> b!551401 (=> (not res!344323) (not e!318218))))

(assert (=> b!551401 (= res!344323 (validKeyInArray!0 (select (arr!16679 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!551402 () Bool)

(declare-fun contains!2844 (List!10812 (_ BitVec 64)) Bool)

(assert (=> b!551402 (= e!318218 (contains!2844 Nil!10809 (select (arr!16679 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82897 (not res!344324)) b!551401))

(assert (= (and b!551401 res!344323) b!551402))

(assert (= (and b!551401 res!344322) b!551400))

(assert (= (and b!551400 c!63872) b!551399))

(assert (= (and b!551400 (not c!63872)) b!551398))

(assert (= (or b!551399 b!551398) bm!32285))

(declare-fun m!528463 () Bool)

(assert (=> bm!32285 m!528463))

(declare-fun m!528465 () Bool)

(assert (=> bm!32285 m!528465))

(assert (=> b!551400 m!528463))

(assert (=> b!551400 m!528463))

(declare-fun m!528467 () Bool)

(assert (=> b!551400 m!528467))

(assert (=> b!551401 m!528463))

(assert (=> b!551401 m!528463))

(assert (=> b!551401 m!528467))

(assert (=> b!551402 m!528463))

(assert (=> b!551402 m!528463))

(declare-fun m!528469 () Bool)

(assert (=> b!551402 m!528469))

(assert (=> b!551385 d!82897))

(declare-fun b!551474 () Bool)

(declare-fun e!318263 () SeekEntryResult!5135)

(assert (=> b!551474 (= e!318263 Undefined!5135)))

(declare-fun d!82901 () Bool)

(declare-fun lt!250851 () SeekEntryResult!5135)

(assert (=> d!82901 (and (or (is-Undefined!5135 lt!250851) (not (is-Found!5135 lt!250851)) (and (bvsge (index!22768 lt!250851) #b00000000000000000000000000000000) (bvslt (index!22768 lt!250851) (size!17043 a!3118)))) (or (is-Undefined!5135 lt!250851) (is-Found!5135 lt!250851) (not (is-MissingZero!5135 lt!250851)) (and (bvsge (index!22767 lt!250851) #b00000000000000000000000000000000) (bvslt (index!22767 lt!250851) (size!17043 a!3118)))) (or (is-Undefined!5135 lt!250851) (is-Found!5135 lt!250851) (is-MissingZero!5135 lt!250851) (not (is-MissingVacant!5135 lt!250851)) (and (bvsge (index!22770 lt!250851) #b00000000000000000000000000000000) (bvslt (index!22770 lt!250851) (size!17043 a!3118)))) (or (is-Undefined!5135 lt!250851) (ite (is-Found!5135 lt!250851) (= (select (arr!16679 a!3118) (index!22768 lt!250851)) k!1914) (ite (is-MissingZero!5135 lt!250851) (= (select (arr!16679 a!3118) (index!22767 lt!250851)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5135 lt!250851) (= (select (arr!16679 a!3118) (index!22770 lt!250851)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82901 (= lt!250851 e!318263)))

(declare-fun c!63902 () Bool)

(declare-fun lt!250852 () SeekEntryResult!5135)

(assert (=> d!82901 (= c!63902 (and (is-Intermediate!5135 lt!250852) (undefined!5947 lt!250852)))))

(assert (=> d!82901 (= lt!250852 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82901 (validMask!0 mask!3119)))

(assert (=> d!82901 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!250851)))

(declare-fun b!551475 () Bool)

(declare-fun c!63903 () Bool)

(declare-fun lt!250853 () (_ BitVec 64))

(assert (=> b!551475 (= c!63903 (= lt!250853 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318264 () SeekEntryResult!5135)

(declare-fun e!318265 () SeekEntryResult!5135)

(assert (=> b!551475 (= e!318264 e!318265)))

(declare-fun b!551476 () Bool)

(assert (=> b!551476 (= e!318263 e!318264)))

(assert (=> b!551476 (= lt!250853 (select (arr!16679 a!3118) (index!22769 lt!250852)))))

(declare-fun c!63904 () Bool)

(assert (=> b!551476 (= c!63904 (= lt!250853 k!1914))))

(declare-fun b!551477 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34741 (_ BitVec 32)) SeekEntryResult!5135)

(assert (=> b!551477 (= e!318265 (seekKeyOrZeroReturnVacant!0 (x!51720 lt!250852) (index!22769 lt!250852) (index!22769 lt!250852) k!1914 a!3118 mask!3119))))

(declare-fun b!551478 () Bool)

(assert (=> b!551478 (= e!318264 (Found!5135 (index!22769 lt!250852)))))

(declare-fun b!551479 () Bool)

(assert (=> b!551479 (= e!318265 (MissingZero!5135 (index!22769 lt!250852)))))

(assert (= (and d!82901 c!63902) b!551474))

(assert (= (and d!82901 (not c!63902)) b!551476))

(assert (= (and b!551476 c!63904) b!551478))

(assert (= (and b!551476 (not c!63904)) b!551475))

(assert (= (and b!551475 c!63903) b!551479))

(assert (= (and b!551475 (not c!63903)) b!551477))

(declare-fun m!528499 () Bool)

(assert (=> d!82901 m!528499))

(assert (=> d!82901 m!528449))

(declare-fun m!528501 () Bool)

(assert (=> d!82901 m!528501))

(declare-fun m!528503 () Bool)

(assert (=> d!82901 m!528503))

(declare-fun m!528505 () Bool)

(assert (=> d!82901 m!528505))

(assert (=> d!82901 m!528501))

(declare-fun m!528507 () Bool)

(assert (=> d!82901 m!528507))

(declare-fun m!528509 () Bool)

(assert (=> b!551476 m!528509))

(declare-fun m!528511 () Bool)

(assert (=> b!551477 m!528511))

(assert (=> b!551380 d!82901))

(declare-fun b!551496 () Bool)

(declare-fun e!318279 () Bool)

(declare-fun e!318278 () Bool)

(assert (=> b!551496 (= e!318279 e!318278)))

(declare-fun lt!250871 () (_ BitVec 64))

(assert (=> b!551496 (= lt!250871 (select (arr!16679 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250869 () Unit!17044)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34741 (_ BitVec 64) (_ BitVec 32)) Unit!17044)

(assert (=> b!551496 (= lt!250869 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250871 #b00000000000000000000000000000000))))

(assert (=> b!551496 (arrayContainsKey!0 a!3118 lt!250871 #b00000000000000000000000000000000)))

(declare-fun lt!250870 () Unit!17044)

(assert (=> b!551496 (= lt!250870 lt!250869)))

(declare-fun res!344347 () Bool)

(assert (=> b!551496 (= res!344347 (= (seekEntryOrOpen!0 (select (arr!16679 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5135 #b00000000000000000000000000000000)))))

(assert (=> b!551496 (=> (not res!344347) (not e!318278))))

(declare-fun b!551497 () Bool)

(declare-fun call!32298 () Bool)

(assert (=> b!551497 (= e!318278 call!32298)))

(declare-fun d!82911 () Bool)

(declare-fun res!344346 () Bool)

(declare-fun e!318280 () Bool)

(assert (=> d!82911 (=> res!344346 e!318280)))

(assert (=> d!82911 (= res!344346 (bvsge #b00000000000000000000000000000000 (size!17043 a!3118)))))

(assert (=> d!82911 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!318280)))

(declare-fun b!551498 () Bool)

(assert (=> b!551498 (= e!318279 call!32298)))

(declare-fun bm!32295 () Bool)

(assert (=> bm!32295 (= call!32298 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!551499 () Bool)

(assert (=> b!551499 (= e!318280 e!318279)))

(declare-fun c!63909 () Bool)

(assert (=> b!551499 (= c!63909 (validKeyInArray!0 (select (arr!16679 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82911 (not res!344346)) b!551499))

(assert (= (and b!551499 c!63909) b!551496))

(assert (= (and b!551499 (not c!63909)) b!551498))

(assert (= (and b!551496 res!344347) b!551497))

(assert (= (or b!551497 b!551498) bm!32295))

(assert (=> b!551496 m!528463))

(declare-fun m!528529 () Bool)

(assert (=> b!551496 m!528529))

(declare-fun m!528531 () Bool)

(assert (=> b!551496 m!528531))

(assert (=> b!551496 m!528463))

(declare-fun m!528533 () Bool)

(assert (=> b!551496 m!528533))

(declare-fun m!528535 () Bool)

(assert (=> bm!32295 m!528535))

(assert (=> b!551499 m!528463))

(assert (=> b!551499 m!528463))

(assert (=> b!551499 m!528467))

(assert (=> b!551386 d!82911))

(declare-fun d!82919 () Bool)

(assert (=> d!82919 (= (validKeyInArray!0 (select (arr!16679 a!3118) j!142)) (and (not (= (select (arr!16679 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16679 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551381 d!82919))

(declare-fun b!551500 () Bool)

(declare-fun e!318282 () Bool)

(declare-fun e!318281 () Bool)

(assert (=> b!551500 (= e!318282 e!318281)))

(declare-fun lt!250874 () (_ BitVec 64))

(assert (=> b!551500 (= lt!250874 (select (arr!16679 a!3118) j!142))))

(declare-fun lt!250872 () Unit!17044)

(assert (=> b!551500 (= lt!250872 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250874 j!142))))

(assert (=> b!551500 (arrayContainsKey!0 a!3118 lt!250874 #b00000000000000000000000000000000)))

(declare-fun lt!250873 () Unit!17044)

(assert (=> b!551500 (= lt!250873 lt!250872)))

(declare-fun res!344349 () Bool)

(assert (=> b!551500 (= res!344349 (= (seekEntryOrOpen!0 (select (arr!16679 a!3118) j!142) a!3118 mask!3119) (Found!5135 j!142)))))

(assert (=> b!551500 (=> (not res!344349) (not e!318281))))

(declare-fun b!551501 () Bool)

(declare-fun call!32299 () Bool)

(assert (=> b!551501 (= e!318281 call!32299)))

(declare-fun d!82921 () Bool)

(declare-fun res!344348 () Bool)

(declare-fun e!318283 () Bool)

(assert (=> d!82921 (=> res!344348 e!318283)))

(assert (=> d!82921 (= res!344348 (bvsge j!142 (size!17043 a!3118)))))

(assert (=> d!82921 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!318283)))

(declare-fun b!551502 () Bool)

(assert (=> b!551502 (= e!318282 call!32299)))

(declare-fun bm!32296 () Bool)

(assert (=> bm!32296 (= call!32299 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!551503 () Bool)

(assert (=> b!551503 (= e!318283 e!318282)))

(declare-fun c!63910 () Bool)

(assert (=> b!551503 (= c!63910 (validKeyInArray!0 (select (arr!16679 a!3118) j!142)))))

(assert (= (and d!82921 (not res!344348)) b!551503))

(assert (= (and b!551503 c!63910) b!551500))

(assert (= (and b!551503 (not c!63910)) b!551502))

(assert (= (and b!551500 res!344349) b!551501))

(assert (= (or b!551501 b!551502) bm!32296))

(assert (=> b!551500 m!528427))

(declare-fun m!528537 () Bool)

(assert (=> b!551500 m!528537))

(declare-fun m!528539 () Bool)

(assert (=> b!551500 m!528539))

(assert (=> b!551500 m!528427))

(assert (=> b!551500 m!528429))

(declare-fun m!528541 () Bool)

(assert (=> bm!32296 m!528541))

(assert (=> b!551503 m!528427))

(assert (=> b!551503 m!528427))

(assert (=> b!551503 m!528447))

(assert (=> b!551387 d!82921))

(declare-fun d!82923 () Bool)

(assert (=> d!82923 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!250881 () Unit!17044)

(declare-fun choose!38 (array!34741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17044)

(assert (=> d!82923 (= lt!250881 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!82923 (validMask!0 mask!3119)))

(assert (=> d!82923 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!250881)))

(declare-fun bs!17179 () Bool)

(assert (= bs!17179 d!82923))

(assert (=> bs!17179 m!528453))

(declare-fun m!528543 () Bool)

(assert (=> bs!17179 m!528543))

(assert (=> bs!17179 m!528449))

(assert (=> b!551387 d!82923))

(declare-fun d!82925 () Bool)

(declare-fun res!344363 () Bool)

(declare-fun e!318303 () Bool)

(assert (=> d!82925 (=> res!344363 e!318303)))

(assert (=> d!82925 (= res!344363 (= (select (arr!16679 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82925 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!318303)))

(declare-fun b!551535 () Bool)

(declare-fun e!318304 () Bool)

(assert (=> b!551535 (= e!318303 e!318304)))

(declare-fun res!344364 () Bool)

(assert (=> b!551535 (=> (not res!344364) (not e!318304))))

(assert (=> b!551535 (= res!344364 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17043 a!3118)))))

(declare-fun b!551536 () Bool)

(assert (=> b!551536 (= e!318304 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82925 (not res!344363)) b!551535))

(assert (= (and b!551535 res!344364) b!551536))

(assert (=> d!82925 m!528463))

(declare-fun m!528553 () Bool)

(assert (=> b!551536 m!528553))

(assert (=> b!551382 d!82925))

(declare-fun b!551537 () Bool)

(declare-fun e!318305 () SeekEntryResult!5135)

(assert (=> b!551537 (= e!318305 Undefined!5135)))

(declare-fun d!82931 () Bool)

(declare-fun lt!250884 () SeekEntryResult!5135)

(assert (=> d!82931 (and (or (is-Undefined!5135 lt!250884) (not (is-Found!5135 lt!250884)) (and (bvsge (index!22768 lt!250884) #b00000000000000000000000000000000) (bvslt (index!22768 lt!250884) (size!17043 a!3118)))) (or (is-Undefined!5135 lt!250884) (is-Found!5135 lt!250884) (not (is-MissingZero!5135 lt!250884)) (and (bvsge (index!22767 lt!250884) #b00000000000000000000000000000000) (bvslt (index!22767 lt!250884) (size!17043 a!3118)))) (or (is-Undefined!5135 lt!250884) (is-Found!5135 lt!250884) (is-MissingZero!5135 lt!250884) (not (is-MissingVacant!5135 lt!250884)) (and (bvsge (index!22770 lt!250884) #b00000000000000000000000000000000) (bvslt (index!22770 lt!250884) (size!17043 a!3118)))) (or (is-Undefined!5135 lt!250884) (ite (is-Found!5135 lt!250884) (= (select (arr!16679 a!3118) (index!22768 lt!250884)) (select (arr!16679 a!3118) j!142)) (ite (is-MissingZero!5135 lt!250884) (= (select (arr!16679 a!3118) (index!22767 lt!250884)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5135 lt!250884) (= (select (arr!16679 a!3118) (index!22770 lt!250884)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82931 (= lt!250884 e!318305)))

(declare-fun c!63920 () Bool)

(declare-fun lt!250885 () SeekEntryResult!5135)

(assert (=> d!82931 (= c!63920 (and (is-Intermediate!5135 lt!250885) (undefined!5947 lt!250885)))))

(assert (=> d!82931 (= lt!250885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119) (select (arr!16679 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82931 (validMask!0 mask!3119)))

(assert (=> d!82931 (= (seekEntryOrOpen!0 (select (arr!16679 a!3118) j!142) a!3118 mask!3119) lt!250884)))

(declare-fun b!551538 () Bool)

(declare-fun c!63921 () Bool)

(declare-fun lt!250886 () (_ BitVec 64))

(assert (=> b!551538 (= c!63921 (= lt!250886 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318306 () SeekEntryResult!5135)

(declare-fun e!318307 () SeekEntryResult!5135)

(assert (=> b!551538 (= e!318306 e!318307)))

(declare-fun b!551539 () Bool)

(assert (=> b!551539 (= e!318305 e!318306)))

(assert (=> b!551539 (= lt!250886 (select (arr!16679 a!3118) (index!22769 lt!250885)))))

(declare-fun c!63922 () Bool)

(assert (=> b!551539 (= c!63922 (= lt!250886 (select (arr!16679 a!3118) j!142)))))

(declare-fun b!551540 () Bool)

(assert (=> b!551540 (= e!318307 (seekKeyOrZeroReturnVacant!0 (x!51720 lt!250885) (index!22769 lt!250885) (index!22769 lt!250885) (select (arr!16679 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!551541 () Bool)

(assert (=> b!551541 (= e!318306 (Found!5135 (index!22769 lt!250885)))))

(declare-fun b!551542 () Bool)

(assert (=> b!551542 (= e!318307 (MissingZero!5135 (index!22769 lt!250885)))))

(assert (= (and d!82931 c!63920) b!551537))

(assert (= (and d!82931 (not c!63920)) b!551539))

(assert (= (and b!551539 c!63922) b!551541))

(assert (= (and b!551539 (not c!63922)) b!551538))

(assert (= (and b!551538 c!63921) b!551542))

(assert (= (and b!551538 (not c!63921)) b!551540))

(declare-fun m!528555 () Bool)

(assert (=> d!82931 m!528555))

(assert (=> d!82931 m!528449))

(assert (=> d!82931 m!528427))

(assert (=> d!82931 m!528433))

(declare-fun m!528557 () Bool)

(assert (=> d!82931 m!528557))

(declare-fun m!528559 () Bool)

(assert (=> d!82931 m!528559))

(assert (=> d!82931 m!528433))

(assert (=> d!82931 m!528427))

(assert (=> d!82931 m!528441))

(declare-fun m!528561 () Bool)

(assert (=> b!551539 m!528561))

(assert (=> b!551540 m!528427))

(declare-fun m!528563 () Bool)

(assert (=> b!551540 m!528563))

(assert (=> b!551383 d!82931))

(declare-fun d!82935 () Bool)

(assert (=> d!82935 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50448 d!82935))

(declare-fun d!82945 () Bool)

(assert (=> d!82945 (= (array_inv!12453 a!3118) (bvsge (size!17043 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50448 d!82945))

(declare-fun b!551645 () Bool)

(declare-fun e!318377 () SeekEntryResult!5135)

(assert (=> b!551645 (= e!318377 (Intermediate!5135 true (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551646 () Bool)

(declare-fun lt!250923 () SeekEntryResult!5135)

(assert (=> b!551646 (and (bvsge (index!22769 lt!250923) #b00000000000000000000000000000000) (bvslt (index!22769 lt!250923) (size!17043 a!3118)))))

(declare-fun e!318374 () Bool)

(assert (=> b!551646 (= e!318374 (= (select (arr!16679 a!3118) (index!22769 lt!250923)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!82947 () Bool)

(declare-fun e!318375 () Bool)

(assert (=> d!82947 e!318375))

(declare-fun c!63953 () Bool)

(assert (=> d!82947 (= c!63953 (and (is-Intermediate!5135 lt!250923) (undefined!5947 lt!250923)))))

(assert (=> d!82947 (= lt!250923 e!318377)))

(declare-fun c!63954 () Bool)

(assert (=> d!82947 (= c!63954 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250924 () (_ BitVec 64))

(assert (=> d!82947 (= lt!250924 (select (arr!16679 a!3118) (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119)))))

(assert (=> d!82947 (validMask!0 mask!3119)))

(assert (=> d!82947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119) (select (arr!16679 a!3118) j!142) a!3118 mask!3119) lt!250923)))

(declare-fun e!318373 () SeekEntryResult!5135)

(declare-fun b!551647 () Bool)

(assert (=> b!551647 (= e!318373 (Intermediate!5135 false (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551648 () Bool)

(assert (=> b!551648 (and (bvsge (index!22769 lt!250923) #b00000000000000000000000000000000) (bvslt (index!22769 lt!250923) (size!17043 a!3118)))))

(declare-fun res!344411 () Bool)

(assert (=> b!551648 (= res!344411 (= (select (arr!16679 a!3118) (index!22769 lt!250923)) (select (arr!16679 a!3118) j!142)))))

(assert (=> b!551648 (=> res!344411 e!318374)))

(declare-fun e!318376 () Bool)

(assert (=> b!551648 (= e!318376 e!318374)))

(declare-fun b!551649 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551649 (= e!318373 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!16679 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!551650 () Bool)

(assert (=> b!551650 (= e!318377 e!318373)))

(declare-fun c!63955 () Bool)

(assert (=> b!551650 (= c!63955 (or (= lt!250924 (select (arr!16679 a!3118) j!142)) (= (bvadd lt!250924 lt!250924) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!551651 () Bool)

(assert (=> b!551651 (= e!318375 e!318376)))

(declare-fun res!344410 () Bool)

(assert (=> b!551651 (= res!344410 (and (is-Intermediate!5135 lt!250923) (not (undefined!5947 lt!250923)) (bvslt (x!51720 lt!250923) #b01111111111111111111111111111110) (bvsge (x!51720 lt!250923) #b00000000000000000000000000000000) (bvsge (x!51720 lt!250923) #b00000000000000000000000000000000)))))

(assert (=> b!551651 (=> (not res!344410) (not e!318376))))

(declare-fun b!551652 () Bool)

(assert (=> b!551652 (= e!318375 (bvsge (x!51720 lt!250923) #b01111111111111111111111111111110))))

(declare-fun b!551653 () Bool)

(assert (=> b!551653 (and (bvsge (index!22769 lt!250923) #b00000000000000000000000000000000) (bvslt (index!22769 lt!250923) (size!17043 a!3118)))))

(declare-fun res!344409 () Bool)

(assert (=> b!551653 (= res!344409 (= (select (arr!16679 a!3118) (index!22769 lt!250923)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!551653 (=> res!344409 e!318374)))

(assert (= (and d!82947 c!63954) b!551645))

(assert (= (and d!82947 (not c!63954)) b!551650))

(assert (= (and b!551650 c!63955) b!551647))

(assert (= (and b!551650 (not c!63955)) b!551649))

(assert (= (and d!82947 c!63953) b!551652))

(assert (= (and d!82947 (not c!63953)) b!551651))

(assert (= (and b!551651 res!344410) b!551648))

(assert (= (and b!551648 (not res!344411)) b!551653))

(assert (= (and b!551653 (not res!344409)) b!551646))

(declare-fun m!528629 () Bool)

(assert (=> b!551653 m!528629))

(assert (=> b!551648 m!528629))

(assert (=> b!551646 m!528629))

(assert (=> d!82947 m!528433))

(declare-fun m!528631 () Bool)

(assert (=> d!82947 m!528631))

(assert (=> d!82947 m!528449))

(assert (=> b!551649 m!528433))

(declare-fun m!528633 () Bool)

(assert (=> b!551649 m!528633))

(assert (=> b!551649 m!528633))

(assert (=> b!551649 m!528427))

(declare-fun m!528635 () Bool)

(assert (=> b!551649 m!528635))

(assert (=> b!551384 d!82947))

(declare-fun d!82973 () Bool)

(declare-fun lt!250939 () (_ BitVec 32))

(declare-fun lt!250938 () (_ BitVec 32))

(assert (=> d!82973 (= lt!250939 (bvmul (bvxor lt!250938 (bvlshr lt!250938 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82973 (= lt!250938 ((_ extract 31 0) (bvand (bvxor (select (arr!16679 a!3118) j!142) (bvlshr (select (arr!16679 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82973 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344412 (let ((h!11790 ((_ extract 31 0) (bvand (bvxor (select (arr!16679 a!3118) j!142) (bvlshr (select (arr!16679 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51726 (bvmul (bvxor h!11790 (bvlshr h!11790 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51726 (bvlshr x!51726 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344412 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344412 #b00000000000000000000000000000000))))))

(assert (=> d!82973 (= (toIndex!0 (select (arr!16679 a!3118) j!142) mask!3119) (bvand (bvxor lt!250939 (bvlshr lt!250939 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551384 d!82973))

(declare-fun e!318391 () SeekEntryResult!5135)

(declare-fun b!551666 () Bool)

(assert (=> b!551666 (= e!318391 (Intermediate!5135 true (toIndex!0 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551667 () Bool)

(declare-fun lt!250940 () SeekEntryResult!5135)

(assert (=> b!551667 (and (bvsge (index!22769 lt!250940) #b00000000000000000000000000000000) (bvslt (index!22769 lt!250940) (size!17043 (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118)))))))

(declare-fun e!318388 () Bool)

(assert (=> b!551667 (= e!318388 (= (select (arr!16679 (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118))) (index!22769 lt!250940)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!82975 () Bool)

(declare-fun e!318389 () Bool)

(assert (=> d!82975 e!318389))

(declare-fun c!63959 () Bool)

(assert (=> d!82975 (= c!63959 (and (is-Intermediate!5135 lt!250940) (undefined!5947 lt!250940)))))

(assert (=> d!82975 (= lt!250940 e!318391)))

(declare-fun c!63960 () Bool)

(assert (=> d!82975 (= c!63960 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250941 () (_ BitVec 64))

(assert (=> d!82975 (= lt!250941 (select (arr!16679 (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118))) (toIndex!0 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) mask!3119)))))

(assert (=> d!82975 (validMask!0 mask!3119)))

(assert (=> d!82975 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118)) mask!3119) lt!250940)))

(declare-fun b!551668 () Bool)

(declare-fun e!318387 () SeekEntryResult!5135)

(assert (=> b!551668 (= e!318387 (Intermediate!5135 false (toIndex!0 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551669 () Bool)

(assert (=> b!551669 (and (bvsge (index!22769 lt!250940) #b00000000000000000000000000000000) (bvslt (index!22769 lt!250940) (size!17043 (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118)))))))

(declare-fun res!344421 () Bool)

(assert (=> b!551669 (= res!344421 (= (select (arr!16679 (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118))) (index!22769 lt!250940)) (select (store (arr!16679 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!551669 (=> res!344421 e!318388)))

(declare-fun e!318390 () Bool)

(assert (=> b!551669 (= e!318390 e!318388)))

(declare-fun b!551670 () Bool)

(assert (=> b!551670 (= e!318387 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118)) mask!3119))))

(declare-fun b!551671 () Bool)

(assert (=> b!551671 (= e!318391 e!318387)))

(declare-fun c!63961 () Bool)

(assert (=> b!551671 (= c!63961 (or (= lt!250941 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!250941 lt!250941) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!551672 () Bool)

(assert (=> b!551672 (= e!318389 e!318390)))

(declare-fun res!344420 () Bool)

(assert (=> b!551672 (= res!344420 (and (is-Intermediate!5135 lt!250940) (not (undefined!5947 lt!250940)) (bvslt (x!51720 lt!250940) #b01111111111111111111111111111110) (bvsge (x!51720 lt!250940) #b00000000000000000000000000000000) (bvsge (x!51720 lt!250940) #b00000000000000000000000000000000)))))

(assert (=> b!551672 (=> (not res!344420) (not e!318390))))

(declare-fun b!551673 () Bool)

(assert (=> b!551673 (= e!318389 (bvsge (x!51720 lt!250940) #b01111111111111111111111111111110))))

(declare-fun b!551674 () Bool)

(assert (=> b!551674 (and (bvsge (index!22769 lt!250940) #b00000000000000000000000000000000) (bvslt (index!22769 lt!250940) (size!17043 (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118)))))))

(declare-fun res!344419 () Bool)

(assert (=> b!551674 (= res!344419 (= (select (arr!16679 (array!34742 (store (arr!16679 a!3118) i!1132 k!1914) (size!17043 a!3118))) (index!22769 lt!250940)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!551674 (=> res!344419 e!318388)))

(assert (= (and d!82975 c!63960) b!551666))

(assert (= (and d!82975 (not c!63960)) b!551671))

(assert (= (and b!551671 c!63961) b!551668))

(assert (= (and b!551671 (not c!63961)) b!551670))

(assert (= (and d!82975 c!63959) b!551673))

(assert (= (and d!82975 (not c!63959)) b!551672))

(assert (= (and b!551672 res!344420) b!551669))

(assert (= (and b!551669 (not res!344421)) b!551674))

(assert (= (and b!551674 (not res!344419)) b!551667))

(declare-fun m!528651 () Bool)

(assert (=> b!551674 m!528651))

(assert (=> b!551669 m!528651))

(assert (=> b!551667 m!528651))

(assert (=> d!82975 m!528437))

(declare-fun m!528653 () Bool)

(assert (=> d!82975 m!528653))

(assert (=> d!82975 m!528449))

(assert (=> b!551670 m!528437))

(declare-fun m!528655 () Bool)

(assert (=> b!551670 m!528655))

(assert (=> b!551670 m!528655))

(assert (=> b!551670 m!528435))

(declare-fun m!528657 () Bool)

(assert (=> b!551670 m!528657))

(assert (=> b!551384 d!82975))

(declare-fun d!82981 () Bool)

(declare-fun lt!250946 () (_ BitVec 32))

(declare-fun lt!250945 () (_ BitVec 32))

(assert (=> d!82981 (= lt!250946 (bvmul (bvxor lt!250945 (bvlshr lt!250945 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82981 (= lt!250945 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82981 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344412 (let ((h!11790 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51726 (bvmul (bvxor h!11790 (bvlshr h!11790 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51726 (bvlshr x!51726 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344412 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344412 #b00000000000000000000000000000000))))))

(assert (=> d!82981 (= (toIndex!0 (select (store (arr!16679 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!250946 (bvlshr lt!250946 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551384 d!82981))

(push 1)

