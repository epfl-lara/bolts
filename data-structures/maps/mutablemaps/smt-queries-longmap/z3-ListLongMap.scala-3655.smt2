; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50446 () Bool)

(assert start!50446)

(declare-fun b!551348 () Bool)

(declare-fun e!318194 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!551348 (= e!318194 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvsle mask!3119 #b00111111111111111111111111111111))))))

(declare-fun e!318196 () Bool)

(assert (=> b!551348 e!318196))

(declare-fun res!344278 () Bool)

(assert (=> b!551348 (=> (not res!344278) (not e!318196))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!34739 0))(
  ( (array!34740 (arr!16678 (Array (_ BitVec 32) (_ BitVec 64))) (size!17042 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34739)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34739 (_ BitVec 32)) Bool)

(assert (=> b!551348 (= res!344278 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17042 0))(
  ( (Unit!17043) )
))
(declare-fun lt!250813 () Unit!17042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17042)

(assert (=> b!551348 (= lt!250813 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551350 () Bool)

(declare-fun e!318193 () Bool)

(assert (=> b!551350 (= e!318193 e!318194)))

(declare-fun res!344276 () Bool)

(assert (=> b!551350 (=> (not res!344276) (not e!318194))))

(declare-datatypes ((SeekEntryResult!5134 0))(
  ( (MissingZero!5134 (index!22763 (_ BitVec 32))) (Found!5134 (index!22764 (_ BitVec 32))) (Intermediate!5134 (undefined!5946 Bool) (index!22765 (_ BitVec 32)) (x!51719 (_ BitVec 32))) (Undefined!5134) (MissingVacant!5134 (index!22766 (_ BitVec 32))) )
))
(declare-fun lt!250814 () SeekEntryResult!5134)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551350 (= res!344276 (or (= lt!250814 (MissingZero!5134 i!1132)) (= lt!250814 (MissingVacant!5134 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34739 (_ BitVec 32)) SeekEntryResult!5134)

(assert (=> b!551350 (= lt!250814 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!551351 () Bool)

(declare-fun res!344285 () Bool)

(assert (=> b!551351 (=> (not res!344285) (not e!318193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551351 (= res!344285 (validKeyInArray!0 (select (arr!16678 a!3118) j!142)))))

(declare-fun b!551352 () Bool)

(declare-fun res!344281 () Bool)

(assert (=> b!551352 (=> (not res!344281) (not e!318194))))

(assert (=> b!551352 (= res!344281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551353 () Bool)

(declare-fun res!344284 () Bool)

(assert (=> b!551353 (=> (not res!344284) (not e!318193))))

(assert (=> b!551353 (= res!344284 (and (= (size!17042 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17042 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17042 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551354 () Bool)

(declare-fun res!344280 () Bool)

(assert (=> b!551354 (=> (not res!344280) (not e!318194))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34739 (_ BitVec 32)) SeekEntryResult!5134)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551354 (= res!344280 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119) (select (arr!16678 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118)) mask!3119)))))

(declare-fun b!551355 () Bool)

(declare-fun res!344277 () Bool)

(assert (=> b!551355 (=> (not res!344277) (not e!318193))))

(declare-fun arrayContainsKey!0 (array!34739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551355 (= res!344277 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551349 () Bool)

(declare-fun res!344279 () Bool)

(assert (=> b!551349 (=> (not res!344279) (not e!318193))))

(assert (=> b!551349 (= res!344279 (validKeyInArray!0 k0!1914))))

(declare-fun res!344282 () Bool)

(assert (=> start!50446 (=> (not res!344282) (not e!318193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50446 (= res!344282 (validMask!0 mask!3119))))

(assert (=> start!50446 e!318193))

(assert (=> start!50446 true))

(declare-fun array_inv!12452 (array!34739) Bool)

(assert (=> start!50446 (array_inv!12452 a!3118)))

(declare-fun b!551356 () Bool)

(assert (=> b!551356 (= e!318196 (= (seekEntryOrOpen!0 (select (arr!16678 a!3118) j!142) a!3118 mask!3119) (Found!5134 j!142)))))

(declare-fun b!551357 () Bool)

(declare-fun res!344283 () Bool)

(assert (=> b!551357 (=> (not res!344283) (not e!318194))))

(declare-datatypes ((List!10811 0))(
  ( (Nil!10808) (Cons!10807 (h!11786 (_ BitVec 64)) (t!17047 List!10811)) )
))
(declare-fun arrayNoDuplicates!0 (array!34739 (_ BitVec 32) List!10811) Bool)

(assert (=> b!551357 (= res!344283 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10808))))

(assert (= (and start!50446 res!344282) b!551353))

(assert (= (and b!551353 res!344284) b!551351))

(assert (= (and b!551351 res!344285) b!551349))

(assert (= (and b!551349 res!344279) b!551355))

(assert (= (and b!551355 res!344277) b!551350))

(assert (= (and b!551350 res!344276) b!551352))

(assert (= (and b!551352 res!344281) b!551357))

(assert (= (and b!551357 res!344283) b!551354))

(assert (= (and b!551354 res!344280) b!551348))

(assert (= (and b!551348 res!344278) b!551356))

(declare-fun m!528391 () Bool)

(assert (=> b!551351 m!528391))

(assert (=> b!551351 m!528391))

(declare-fun m!528393 () Bool)

(assert (=> b!551351 m!528393))

(declare-fun m!528395 () Bool)

(assert (=> b!551357 m!528395))

(declare-fun m!528397 () Bool)

(assert (=> b!551355 m!528397))

(declare-fun m!528399 () Bool)

(assert (=> b!551349 m!528399))

(assert (=> b!551354 m!528391))

(declare-fun m!528401 () Bool)

(assert (=> b!551354 m!528401))

(assert (=> b!551354 m!528391))

(declare-fun m!528403 () Bool)

(assert (=> b!551354 m!528403))

(declare-fun m!528405 () Bool)

(assert (=> b!551354 m!528405))

(assert (=> b!551354 m!528403))

(declare-fun m!528407 () Bool)

(assert (=> b!551354 m!528407))

(assert (=> b!551354 m!528401))

(assert (=> b!551354 m!528391))

(declare-fun m!528409 () Bool)

(assert (=> b!551354 m!528409))

(declare-fun m!528411 () Bool)

(assert (=> b!551354 m!528411))

(assert (=> b!551354 m!528403))

(assert (=> b!551354 m!528405))

(declare-fun m!528413 () Bool)

(assert (=> start!50446 m!528413))

(declare-fun m!528415 () Bool)

(assert (=> start!50446 m!528415))

(declare-fun m!528417 () Bool)

(assert (=> b!551350 m!528417))

(declare-fun m!528419 () Bool)

(assert (=> b!551352 m!528419))

(assert (=> b!551356 m!528391))

(assert (=> b!551356 m!528391))

(declare-fun m!528421 () Bool)

(assert (=> b!551356 m!528421))

(declare-fun m!528423 () Bool)

(assert (=> b!551348 m!528423))

(declare-fun m!528425 () Bool)

(assert (=> b!551348 m!528425))

(check-sat (not b!551348) (not b!551350) (not b!551355) (not b!551349) (not b!551354) (not b!551352) (not b!551356) (not b!551357) (not b!551351) (not start!50446))
(check-sat)
(get-model)

(declare-fun b!551415 () Bool)

(declare-fun e!318227 () SeekEntryResult!5134)

(assert (=> b!551415 (= e!318227 Undefined!5134)))

(declare-fun d!82893 () Bool)

(declare-fun lt!250827 () SeekEntryResult!5134)

(get-info :version)

(assert (=> d!82893 (and (or ((_ is Undefined!5134) lt!250827) (not ((_ is Found!5134) lt!250827)) (and (bvsge (index!22764 lt!250827) #b00000000000000000000000000000000) (bvslt (index!22764 lt!250827) (size!17042 a!3118)))) (or ((_ is Undefined!5134) lt!250827) ((_ is Found!5134) lt!250827) (not ((_ is MissingZero!5134) lt!250827)) (and (bvsge (index!22763 lt!250827) #b00000000000000000000000000000000) (bvslt (index!22763 lt!250827) (size!17042 a!3118)))) (or ((_ is Undefined!5134) lt!250827) ((_ is Found!5134) lt!250827) ((_ is MissingZero!5134) lt!250827) (not ((_ is MissingVacant!5134) lt!250827)) (and (bvsge (index!22766 lt!250827) #b00000000000000000000000000000000) (bvslt (index!22766 lt!250827) (size!17042 a!3118)))) (or ((_ is Undefined!5134) lt!250827) (ite ((_ is Found!5134) lt!250827) (= (select (arr!16678 a!3118) (index!22764 lt!250827)) (select (arr!16678 a!3118) j!142)) (ite ((_ is MissingZero!5134) lt!250827) (= (select (arr!16678 a!3118) (index!22763 lt!250827)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5134) lt!250827) (= (select (arr!16678 a!3118) (index!22766 lt!250827)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82893 (= lt!250827 e!318227)))

(declare-fun c!63880 () Bool)

(declare-fun lt!250828 () SeekEntryResult!5134)

(assert (=> d!82893 (= c!63880 (and ((_ is Intermediate!5134) lt!250828) (undefined!5946 lt!250828)))))

(assert (=> d!82893 (= lt!250828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119) (select (arr!16678 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82893 (validMask!0 mask!3119)))

(assert (=> d!82893 (= (seekEntryOrOpen!0 (select (arr!16678 a!3118) j!142) a!3118 mask!3119) lt!250827)))

(declare-fun b!551416 () Bool)

(declare-fun e!318229 () SeekEntryResult!5134)

(assert (=> b!551416 (= e!318229 (MissingZero!5134 (index!22765 lt!250828)))))

(declare-fun b!551417 () Bool)

(declare-fun c!63879 () Bool)

(declare-fun lt!250829 () (_ BitVec 64))

(assert (=> b!551417 (= c!63879 (= lt!250829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318228 () SeekEntryResult!5134)

(assert (=> b!551417 (= e!318228 e!318229)))

(declare-fun b!551418 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34739 (_ BitVec 32)) SeekEntryResult!5134)

(assert (=> b!551418 (= e!318229 (seekKeyOrZeroReturnVacant!0 (x!51719 lt!250828) (index!22765 lt!250828) (index!22765 lt!250828) (select (arr!16678 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!551419 () Bool)

(assert (=> b!551419 (= e!318227 e!318228)))

(assert (=> b!551419 (= lt!250829 (select (arr!16678 a!3118) (index!22765 lt!250828)))))

(declare-fun c!63881 () Bool)

(assert (=> b!551419 (= c!63881 (= lt!250829 (select (arr!16678 a!3118) j!142)))))

(declare-fun b!551420 () Bool)

(assert (=> b!551420 (= e!318228 (Found!5134 (index!22765 lt!250828)))))

(assert (= (and d!82893 c!63880) b!551415))

(assert (= (and d!82893 (not c!63880)) b!551419))

(assert (= (and b!551419 c!63881) b!551420))

(assert (= (and b!551419 (not c!63881)) b!551417))

(assert (= (and b!551417 c!63879) b!551416))

(assert (= (and b!551417 (not c!63879)) b!551418))

(assert (=> d!82893 m!528401))

(assert (=> d!82893 m!528391))

(assert (=> d!82893 m!528409))

(declare-fun m!528471 () Bool)

(assert (=> d!82893 m!528471))

(declare-fun m!528473 () Bool)

(assert (=> d!82893 m!528473))

(assert (=> d!82893 m!528391))

(assert (=> d!82893 m!528401))

(assert (=> d!82893 m!528413))

(declare-fun m!528475 () Bool)

(assert (=> d!82893 m!528475))

(assert (=> b!551418 m!528391))

(declare-fun m!528477 () Bool)

(assert (=> b!551418 m!528477))

(declare-fun m!528479 () Bool)

(assert (=> b!551419 m!528479))

(assert (=> b!551356 d!82893))

(declare-fun d!82903 () Bool)

(assert (=> d!82903 (= (validKeyInArray!0 (select (arr!16678 a!3118) j!142)) (and (not (= (select (arr!16678 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16678 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551351 d!82903))

(declare-fun b!551443 () Bool)

(declare-fun e!318245 () Bool)

(declare-fun call!32291 () Bool)

(assert (=> b!551443 (= e!318245 call!32291)))

(declare-fun b!551444 () Bool)

(assert (=> b!551444 (= e!318245 call!32291)))

(declare-fun bm!32288 () Bool)

(declare-fun c!63890 () Bool)

(assert (=> bm!32288 (= call!32291 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63890 (Cons!10807 (select (arr!16678 a!3118) #b00000000000000000000000000000000) Nil!10808) Nil!10808)))))

(declare-fun b!551445 () Bool)

(declare-fun e!318247 () Bool)

(declare-fun e!318244 () Bool)

(assert (=> b!551445 (= e!318247 e!318244)))

(declare-fun res!344333 () Bool)

(assert (=> b!551445 (=> (not res!344333) (not e!318244))))

(declare-fun e!318246 () Bool)

(assert (=> b!551445 (= res!344333 (not e!318246))))

(declare-fun res!344332 () Bool)

(assert (=> b!551445 (=> (not res!344332) (not e!318246))))

(assert (=> b!551445 (= res!344332 (validKeyInArray!0 (select (arr!16678 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!551446 () Bool)

(assert (=> b!551446 (= e!318244 e!318245)))

(assert (=> b!551446 (= c!63890 (validKeyInArray!0 (select (arr!16678 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82905 () Bool)

(declare-fun res!344331 () Bool)

(assert (=> d!82905 (=> res!344331 e!318247)))

(assert (=> d!82905 (= res!344331 (bvsge #b00000000000000000000000000000000 (size!17042 a!3118)))))

(assert (=> d!82905 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10808) e!318247)))

(declare-fun b!551447 () Bool)

(declare-fun contains!2843 (List!10811 (_ BitVec 64)) Bool)

(assert (=> b!551447 (= e!318246 (contains!2843 Nil!10808 (select (arr!16678 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82905 (not res!344331)) b!551445))

(assert (= (and b!551445 res!344332) b!551447))

(assert (= (and b!551445 res!344333) b!551446))

(assert (= (and b!551446 c!63890) b!551444))

(assert (= (and b!551446 (not c!63890)) b!551443))

(assert (= (or b!551444 b!551443) bm!32288))

(declare-fun m!528481 () Bool)

(assert (=> bm!32288 m!528481))

(declare-fun m!528483 () Bool)

(assert (=> bm!32288 m!528483))

(assert (=> b!551445 m!528481))

(assert (=> b!551445 m!528481))

(declare-fun m!528485 () Bool)

(assert (=> b!551445 m!528485))

(assert (=> b!551446 m!528481))

(assert (=> b!551446 m!528481))

(assert (=> b!551446 m!528485))

(assert (=> b!551447 m!528481))

(assert (=> b!551447 m!528481))

(declare-fun m!528487 () Bool)

(assert (=> b!551447 m!528487))

(assert (=> b!551357 d!82905))

(declare-fun b!551480 () Bool)

(declare-fun e!318267 () Bool)

(declare-fun e!318266 () Bool)

(assert (=> b!551480 (= e!318267 e!318266)))

(declare-fun c!63905 () Bool)

(assert (=> b!551480 (= c!63905 (validKeyInArray!0 (select (arr!16678 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82907 () Bool)

(declare-fun res!344339 () Bool)

(assert (=> d!82907 (=> res!344339 e!318267)))

(assert (=> d!82907 (= res!344339 (bvsge #b00000000000000000000000000000000 (size!17042 a!3118)))))

(assert (=> d!82907 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!318267)))

(declare-fun b!551481 () Bool)

(declare-fun e!318268 () Bool)

(declare-fun call!32294 () Bool)

(assert (=> b!551481 (= e!318268 call!32294)))

(declare-fun b!551482 () Bool)

(assert (=> b!551482 (= e!318266 call!32294)))

(declare-fun b!551483 () Bool)

(assert (=> b!551483 (= e!318266 e!318268)))

(declare-fun lt!250855 () (_ BitVec 64))

(assert (=> b!551483 (= lt!250855 (select (arr!16678 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250854 () Unit!17042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34739 (_ BitVec 64) (_ BitVec 32)) Unit!17042)

(assert (=> b!551483 (= lt!250854 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250855 #b00000000000000000000000000000000))))

(assert (=> b!551483 (arrayContainsKey!0 a!3118 lt!250855 #b00000000000000000000000000000000)))

(declare-fun lt!250856 () Unit!17042)

(assert (=> b!551483 (= lt!250856 lt!250854)))

(declare-fun res!344338 () Bool)

(assert (=> b!551483 (= res!344338 (= (seekEntryOrOpen!0 (select (arr!16678 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5134 #b00000000000000000000000000000000)))))

(assert (=> b!551483 (=> (not res!344338) (not e!318268))))

(declare-fun bm!32291 () Bool)

(assert (=> bm!32291 (= call!32294 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!82907 (not res!344339)) b!551480))

(assert (= (and b!551480 c!63905) b!551483))

(assert (= (and b!551480 (not c!63905)) b!551482))

(assert (= (and b!551483 res!344338) b!551481))

(assert (= (or b!551481 b!551482) bm!32291))

(assert (=> b!551480 m!528481))

(assert (=> b!551480 m!528481))

(assert (=> b!551480 m!528485))

(assert (=> b!551483 m!528481))

(declare-fun m!528513 () Bool)

(assert (=> b!551483 m!528513))

(declare-fun m!528515 () Bool)

(assert (=> b!551483 m!528515))

(assert (=> b!551483 m!528481))

(declare-fun m!528517 () Bool)

(assert (=> b!551483 m!528517))

(declare-fun m!528519 () Bool)

(assert (=> bm!32291 m!528519))

(assert (=> b!551352 d!82907))

(declare-fun b!551484 () Bool)

(declare-fun e!318270 () Bool)

(declare-fun e!318269 () Bool)

(assert (=> b!551484 (= e!318270 e!318269)))

(declare-fun c!63906 () Bool)

(assert (=> b!551484 (= c!63906 (validKeyInArray!0 (select (arr!16678 a!3118) j!142)))))

(declare-fun d!82913 () Bool)

(declare-fun res!344341 () Bool)

(assert (=> d!82913 (=> res!344341 e!318270)))

(assert (=> d!82913 (= res!344341 (bvsge j!142 (size!17042 a!3118)))))

(assert (=> d!82913 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!318270)))

(declare-fun b!551485 () Bool)

(declare-fun e!318271 () Bool)

(declare-fun call!32295 () Bool)

(assert (=> b!551485 (= e!318271 call!32295)))

(declare-fun b!551486 () Bool)

(assert (=> b!551486 (= e!318269 call!32295)))

(declare-fun b!551487 () Bool)

(assert (=> b!551487 (= e!318269 e!318271)))

(declare-fun lt!250858 () (_ BitVec 64))

(assert (=> b!551487 (= lt!250858 (select (arr!16678 a!3118) j!142))))

(declare-fun lt!250857 () Unit!17042)

(assert (=> b!551487 (= lt!250857 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250858 j!142))))

(assert (=> b!551487 (arrayContainsKey!0 a!3118 lt!250858 #b00000000000000000000000000000000)))

(declare-fun lt!250859 () Unit!17042)

(assert (=> b!551487 (= lt!250859 lt!250857)))

(declare-fun res!344340 () Bool)

(assert (=> b!551487 (= res!344340 (= (seekEntryOrOpen!0 (select (arr!16678 a!3118) j!142) a!3118 mask!3119) (Found!5134 j!142)))))

(assert (=> b!551487 (=> (not res!344340) (not e!318271))))

(declare-fun bm!32292 () Bool)

(assert (=> bm!32292 (= call!32295 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!82913 (not res!344341)) b!551484))

(assert (= (and b!551484 c!63906) b!551487))

(assert (= (and b!551484 (not c!63906)) b!551486))

(assert (= (and b!551487 res!344340) b!551485))

(assert (= (or b!551485 b!551486) bm!32292))

(assert (=> b!551484 m!528391))

(assert (=> b!551484 m!528391))

(assert (=> b!551484 m!528393))

(assert (=> b!551487 m!528391))

(declare-fun m!528521 () Bool)

(assert (=> b!551487 m!528521))

(declare-fun m!528523 () Bool)

(assert (=> b!551487 m!528523))

(assert (=> b!551487 m!528391))

(assert (=> b!551487 m!528421))

(declare-fun m!528525 () Bool)

(assert (=> bm!32292 m!528525))

(assert (=> b!551348 d!82913))

(declare-fun d!82915 () Bool)

(assert (=> d!82915 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!250868 () Unit!17042)

(declare-fun choose!38 (array!34739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17042)

(assert (=> d!82915 (= lt!250868 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!82915 (validMask!0 mask!3119)))

(assert (=> d!82915 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!250868)))

(declare-fun bs!17178 () Bool)

(assert (= bs!17178 d!82915))

(assert (=> bs!17178 m!528423))

(declare-fun m!528527 () Bool)

(assert (=> bs!17178 m!528527))

(assert (=> bs!17178 m!528413))

(assert (=> b!551348 d!82915))

(declare-fun d!82917 () Bool)

(assert (=> d!82917 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50446 d!82917))

(declare-fun d!82927 () Bool)

(assert (=> d!82927 (= (array_inv!12452 a!3118) (bvsge (size!17042 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50446 d!82927))

(declare-fun b!551585 () Bool)

(declare-fun e!318336 () SeekEntryResult!5134)

(assert (=> b!551585 (= e!318336 (Intermediate!5134 false (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551586 () Bool)

(declare-fun e!318337 () Bool)

(declare-fun e!318339 () Bool)

(assert (=> b!551586 (= e!318337 e!318339)))

(declare-fun res!344384 () Bool)

(declare-fun lt!250902 () SeekEntryResult!5134)

(assert (=> b!551586 (= res!344384 (and ((_ is Intermediate!5134) lt!250902) (not (undefined!5946 lt!250902)) (bvslt (x!51719 lt!250902) #b01111111111111111111111111111110) (bvsge (x!51719 lt!250902) #b00000000000000000000000000000000) (bvsge (x!51719 lt!250902) #b00000000000000000000000000000000)))))

(assert (=> b!551586 (=> (not res!344384) (not e!318339))))

(declare-fun b!551587 () Bool)

(assert (=> b!551587 (= e!318337 (bvsge (x!51719 lt!250902) #b01111111111111111111111111111110))))

(declare-fun b!551588 () Bool)

(assert (=> b!551588 (and (bvsge (index!22765 lt!250902) #b00000000000000000000000000000000) (bvslt (index!22765 lt!250902) (size!17042 a!3118)))))

(declare-fun res!344385 () Bool)

(assert (=> b!551588 (= res!344385 (= (select (arr!16678 a!3118) (index!22765 lt!250902)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318338 () Bool)

(assert (=> b!551588 (=> res!344385 e!318338)))

(declare-fun b!551589 () Bool)

(assert (=> b!551589 (and (bvsge (index!22765 lt!250902) #b00000000000000000000000000000000) (bvslt (index!22765 lt!250902) (size!17042 a!3118)))))

(declare-fun res!344386 () Bool)

(assert (=> b!551589 (= res!344386 (= (select (arr!16678 a!3118) (index!22765 lt!250902)) (select (arr!16678 a!3118) j!142)))))

(assert (=> b!551589 (=> res!344386 e!318338)))

(assert (=> b!551589 (= e!318339 e!318338)))

(declare-fun b!551590 () Bool)

(declare-fun e!318335 () SeekEntryResult!5134)

(assert (=> b!551590 (= e!318335 e!318336)))

(declare-fun c!63936 () Bool)

(declare-fun lt!250901 () (_ BitVec 64))

(assert (=> b!551590 (= c!63936 (or (= lt!250901 (select (arr!16678 a!3118) j!142)) (= (bvadd lt!250901 lt!250901) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!551591 () Bool)

(assert (=> b!551591 (and (bvsge (index!22765 lt!250902) #b00000000000000000000000000000000) (bvslt (index!22765 lt!250902) (size!17042 a!3118)))))

(assert (=> b!551591 (= e!318338 (= (select (arr!16678 a!3118) (index!22765 lt!250902)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!551592 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551592 (= e!318336 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!16678 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!551593 () Bool)

(assert (=> b!551593 (= e!318335 (Intermediate!5134 true (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun d!82933 () Bool)

(assert (=> d!82933 e!318337))

(declare-fun c!63937 () Bool)

(assert (=> d!82933 (= c!63937 (and ((_ is Intermediate!5134) lt!250902) (undefined!5946 lt!250902)))))

(assert (=> d!82933 (= lt!250902 e!318335)))

(declare-fun c!63935 () Bool)

(assert (=> d!82933 (= c!63935 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82933 (= lt!250901 (select (arr!16678 a!3118) (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119)))))

(assert (=> d!82933 (validMask!0 mask!3119)))

(assert (=> d!82933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119) (select (arr!16678 a!3118) j!142) a!3118 mask!3119) lt!250902)))

(assert (= (and d!82933 c!63935) b!551593))

(assert (= (and d!82933 (not c!63935)) b!551590))

(assert (= (and b!551590 c!63936) b!551585))

(assert (= (and b!551590 (not c!63936)) b!551592))

(assert (= (and d!82933 c!63937) b!551587))

(assert (= (and d!82933 (not c!63937)) b!551586))

(assert (= (and b!551586 res!344384) b!551589))

(assert (= (and b!551589 (not res!344386)) b!551588))

(assert (= (and b!551588 (not res!344385)) b!551591))

(declare-fun m!528581 () Bool)

(assert (=> b!551591 m!528581))

(assert (=> b!551589 m!528581))

(assert (=> b!551588 m!528581))

(assert (=> d!82933 m!528401))

(declare-fun m!528583 () Bool)

(assert (=> d!82933 m!528583))

(assert (=> d!82933 m!528413))

(assert (=> b!551592 m!528401))

(declare-fun m!528585 () Bool)

(assert (=> b!551592 m!528585))

(assert (=> b!551592 m!528585))

(assert (=> b!551592 m!528391))

(declare-fun m!528587 () Bool)

(assert (=> b!551592 m!528587))

(assert (=> b!551354 d!82933))

(declare-fun d!82951 () Bool)

(declare-fun lt!250909 () (_ BitVec 32))

(declare-fun lt!250907 () (_ BitVec 32))

(assert (=> d!82951 (= lt!250909 (bvmul (bvxor lt!250907 (bvlshr lt!250907 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82951 (= lt!250907 ((_ extract 31 0) (bvand (bvxor (select (arr!16678 a!3118) j!142) (bvlshr (select (arr!16678 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82951 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344387 (let ((h!11789 ((_ extract 31 0) (bvand (bvxor (select (arr!16678 a!3118) j!142) (bvlshr (select (arr!16678 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51724 (bvmul (bvxor h!11789 (bvlshr h!11789 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51724 (bvlshr x!51724 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344387 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344387 #b00000000000000000000000000000000))))))

(assert (=> d!82951 (= (toIndex!0 (select (arr!16678 a!3118) j!142) mask!3119) (bvand (bvxor lt!250909 (bvlshr lt!250909 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551354 d!82951))

(declare-fun e!318347 () SeekEntryResult!5134)

(declare-fun b!551604 () Bool)

(assert (=> b!551604 (= e!318347 (Intermediate!5134 false (toIndex!0 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551605 () Bool)

(declare-fun e!318348 () Bool)

(declare-fun e!318350 () Bool)

(assert (=> b!551605 (= e!318348 e!318350)))

(declare-fun res!344390 () Bool)

(declare-fun lt!250914 () SeekEntryResult!5134)

(assert (=> b!551605 (= res!344390 (and ((_ is Intermediate!5134) lt!250914) (not (undefined!5946 lt!250914)) (bvslt (x!51719 lt!250914) #b01111111111111111111111111111110) (bvsge (x!51719 lt!250914) #b00000000000000000000000000000000) (bvsge (x!51719 lt!250914) #b00000000000000000000000000000000)))))

(assert (=> b!551605 (=> (not res!344390) (not e!318350))))

(declare-fun b!551606 () Bool)

(assert (=> b!551606 (= e!318348 (bvsge (x!51719 lt!250914) #b01111111111111111111111111111110))))

(declare-fun b!551607 () Bool)

(assert (=> b!551607 (and (bvsge (index!22765 lt!250914) #b00000000000000000000000000000000) (bvslt (index!22765 lt!250914) (size!17042 (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118)))))))

(declare-fun res!344391 () Bool)

(assert (=> b!551607 (= res!344391 (= (select (arr!16678 (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118))) (index!22765 lt!250914)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318349 () Bool)

(assert (=> b!551607 (=> res!344391 e!318349)))

(declare-fun b!551608 () Bool)

(assert (=> b!551608 (and (bvsge (index!22765 lt!250914) #b00000000000000000000000000000000) (bvslt (index!22765 lt!250914) (size!17042 (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118)))))))

(declare-fun res!344392 () Bool)

(assert (=> b!551608 (= res!344392 (= (select (arr!16678 (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118))) (index!22765 lt!250914)) (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!551608 (=> res!344392 e!318349)))

(assert (=> b!551608 (= e!318350 e!318349)))

(declare-fun b!551609 () Bool)

(declare-fun e!318346 () SeekEntryResult!5134)

(assert (=> b!551609 (= e!318346 e!318347)))

(declare-fun c!63943 () Bool)

(declare-fun lt!250913 () (_ BitVec 64))

(assert (=> b!551609 (= c!63943 (or (= lt!250913 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!250913 lt!250913) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!551610 () Bool)

(assert (=> b!551610 (and (bvsge (index!22765 lt!250914) #b00000000000000000000000000000000) (bvslt (index!22765 lt!250914) (size!17042 (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118)))))))

(assert (=> b!551610 (= e!318349 (= (select (arr!16678 (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118))) (index!22765 lt!250914)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!551611 () Bool)

(assert (=> b!551611 (= e!318347 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118)) mask!3119))))

(declare-fun b!551612 () Bool)

(assert (=> b!551612 (= e!318346 (Intermediate!5134 true (toIndex!0 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun d!82957 () Bool)

(assert (=> d!82957 e!318348))

(declare-fun c!63944 () Bool)

(assert (=> d!82957 (= c!63944 (and ((_ is Intermediate!5134) lt!250914) (undefined!5946 lt!250914)))))

(assert (=> d!82957 (= lt!250914 e!318346)))

(declare-fun c!63942 () Bool)

(assert (=> d!82957 (= c!63942 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82957 (= lt!250913 (select (arr!16678 (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118))) (toIndex!0 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) mask!3119)))))

(assert (=> d!82957 (validMask!0 mask!3119)))

(assert (=> d!82957 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) (array!34740 (store (arr!16678 a!3118) i!1132 k0!1914) (size!17042 a!3118)) mask!3119) lt!250914)))

(assert (= (and d!82957 c!63942) b!551612))

(assert (= (and d!82957 (not c!63942)) b!551609))

(assert (= (and b!551609 c!63943) b!551604))

(assert (= (and b!551609 (not c!63943)) b!551611))

(assert (= (and d!82957 c!63944) b!551606))

(assert (= (and d!82957 (not c!63944)) b!551605))

(assert (= (and b!551605 res!344390) b!551608))

(assert (= (and b!551608 (not res!344392)) b!551607))

(assert (= (and b!551607 (not res!344391)) b!551610))

(declare-fun m!528589 () Bool)

(assert (=> b!551610 m!528589))

(assert (=> b!551608 m!528589))

(assert (=> b!551607 m!528589))

(assert (=> d!82957 m!528405))

(declare-fun m!528591 () Bool)

(assert (=> d!82957 m!528591))

(assert (=> d!82957 m!528413))

(assert (=> b!551611 m!528405))

(declare-fun m!528593 () Bool)

(assert (=> b!551611 m!528593))

(assert (=> b!551611 m!528593))

(assert (=> b!551611 m!528403))

(declare-fun m!528595 () Bool)

(assert (=> b!551611 m!528595))

(assert (=> b!551354 d!82957))

(declare-fun d!82959 () Bool)

(declare-fun lt!250916 () (_ BitVec 32))

(declare-fun lt!250915 () (_ BitVec 32))

(assert (=> d!82959 (= lt!250916 (bvmul (bvxor lt!250915 (bvlshr lt!250915 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82959 (= lt!250915 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82959 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344387 (let ((h!11789 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51724 (bvmul (bvxor h!11789 (bvlshr h!11789 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51724 (bvlshr x!51724 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344387 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344387 #b00000000000000000000000000000000))))))

(assert (=> d!82959 (= (toIndex!0 (select (store (arr!16678 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!250916 (bvlshr lt!250916 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551354 d!82959))

(declare-fun d!82963 () Bool)

(assert (=> d!82963 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551349 d!82963))

(declare-fun d!82965 () Bool)

(declare-fun res!344407 () Bool)

(declare-fun e!318368 () Bool)

(assert (=> d!82965 (=> res!344407 e!318368)))

(assert (=> d!82965 (= res!344407 (= (select (arr!16678 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82965 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!318368)))

(declare-fun b!551637 () Bool)

(declare-fun e!318369 () Bool)

(assert (=> b!551637 (= e!318368 e!318369)))

(declare-fun res!344408 () Bool)

(assert (=> b!551637 (=> (not res!344408) (not e!318369))))

(assert (=> b!551637 (= res!344408 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17042 a!3118)))))

(declare-fun b!551638 () Bool)

(assert (=> b!551638 (= e!318369 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82965 (not res!344407)) b!551637))

(assert (= (and b!551637 res!344408) b!551638))

(assert (=> d!82965 m!528481))

(declare-fun m!528613 () Bool)

(assert (=> b!551638 m!528613))

(assert (=> b!551355 d!82965))

(declare-fun b!551639 () Bool)

(declare-fun e!318370 () SeekEntryResult!5134)

(assert (=> b!551639 (= e!318370 Undefined!5134)))

(declare-fun d!82971 () Bool)

(declare-fun lt!250920 () SeekEntryResult!5134)

(assert (=> d!82971 (and (or ((_ is Undefined!5134) lt!250920) (not ((_ is Found!5134) lt!250920)) (and (bvsge (index!22764 lt!250920) #b00000000000000000000000000000000) (bvslt (index!22764 lt!250920) (size!17042 a!3118)))) (or ((_ is Undefined!5134) lt!250920) ((_ is Found!5134) lt!250920) (not ((_ is MissingZero!5134) lt!250920)) (and (bvsge (index!22763 lt!250920) #b00000000000000000000000000000000) (bvslt (index!22763 lt!250920) (size!17042 a!3118)))) (or ((_ is Undefined!5134) lt!250920) ((_ is Found!5134) lt!250920) ((_ is MissingZero!5134) lt!250920) (not ((_ is MissingVacant!5134) lt!250920)) (and (bvsge (index!22766 lt!250920) #b00000000000000000000000000000000) (bvslt (index!22766 lt!250920) (size!17042 a!3118)))) (or ((_ is Undefined!5134) lt!250920) (ite ((_ is Found!5134) lt!250920) (= (select (arr!16678 a!3118) (index!22764 lt!250920)) k0!1914) (ite ((_ is MissingZero!5134) lt!250920) (= (select (arr!16678 a!3118) (index!22763 lt!250920)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5134) lt!250920) (= (select (arr!16678 a!3118) (index!22766 lt!250920)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82971 (= lt!250920 e!318370)))

(declare-fun c!63951 () Bool)

(declare-fun lt!250921 () SeekEntryResult!5134)

(assert (=> d!82971 (= c!63951 (and ((_ is Intermediate!5134) lt!250921) (undefined!5946 lt!250921)))))

(assert (=> d!82971 (= lt!250921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82971 (validMask!0 mask!3119)))

(assert (=> d!82971 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!250920)))

(declare-fun b!551640 () Bool)

(declare-fun e!318372 () SeekEntryResult!5134)

(assert (=> b!551640 (= e!318372 (MissingZero!5134 (index!22765 lt!250921)))))

(declare-fun b!551641 () Bool)

(declare-fun c!63950 () Bool)

(declare-fun lt!250922 () (_ BitVec 64))

(assert (=> b!551641 (= c!63950 (= lt!250922 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318371 () SeekEntryResult!5134)

(assert (=> b!551641 (= e!318371 e!318372)))

(declare-fun b!551642 () Bool)

(assert (=> b!551642 (= e!318372 (seekKeyOrZeroReturnVacant!0 (x!51719 lt!250921) (index!22765 lt!250921) (index!22765 lt!250921) k0!1914 a!3118 mask!3119))))

(declare-fun b!551643 () Bool)

(assert (=> b!551643 (= e!318370 e!318371)))

(assert (=> b!551643 (= lt!250922 (select (arr!16678 a!3118) (index!22765 lt!250921)))))

(declare-fun c!63952 () Bool)

(assert (=> b!551643 (= c!63952 (= lt!250922 k0!1914))))

(declare-fun b!551644 () Bool)

(assert (=> b!551644 (= e!318371 (Found!5134 (index!22765 lt!250921)))))

(assert (= (and d!82971 c!63951) b!551639))

(assert (= (and d!82971 (not c!63951)) b!551643))

(assert (= (and b!551643 c!63952) b!551644))

(assert (= (and b!551643 (not c!63952)) b!551641))

(assert (= (and b!551641 c!63950) b!551640))

(assert (= (and b!551641 (not c!63950)) b!551642))

(declare-fun m!528615 () Bool)

(assert (=> d!82971 m!528615))

(declare-fun m!528617 () Bool)

(assert (=> d!82971 m!528617))

(declare-fun m!528619 () Bool)

(assert (=> d!82971 m!528619))

(declare-fun m!528621 () Bool)

(assert (=> d!82971 m!528621))

(assert (=> d!82971 m!528615))

(assert (=> d!82971 m!528413))

(declare-fun m!528623 () Bool)

(assert (=> d!82971 m!528623))

(declare-fun m!528625 () Bool)

(assert (=> b!551642 m!528625))

(declare-fun m!528627 () Bool)

(assert (=> b!551643 m!528627))

(assert (=> b!551350 d!82971))

(check-sat (not b!551445) (not b!551480) (not b!551638) (not bm!32292) (not d!82915) (not d!82957) (not d!82893) (not bm!32288) (not d!82971) (not b!551446) (not b!551642) (not b!551447) (not b!551484) (not b!551418) (not b!551483) (not b!551592) (not bm!32291) (not b!551611) (not d!82933) (not b!551487))
(check-sat)
