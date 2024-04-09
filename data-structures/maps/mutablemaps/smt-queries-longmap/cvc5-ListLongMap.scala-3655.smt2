; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50444 () Bool)

(assert start!50444)

(declare-fun b!551318 () Bool)

(declare-fun res!344252 () Bool)

(declare-fun e!318182 () Bool)

(assert (=> b!551318 (=> (not res!344252) (not e!318182))))

(declare-datatypes ((array!34737 0))(
  ( (array!34738 (arr!16677 (Array (_ BitVec 32) (_ BitVec 64))) (size!17041 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34737)

(declare-datatypes ((List!10810 0))(
  ( (Nil!10807) (Cons!10806 (h!11785 (_ BitVec 64)) (t!17046 List!10810)) )
))
(declare-fun arrayNoDuplicates!0 (array!34737 (_ BitVec 32) List!10810) Bool)

(assert (=> b!551318 (= res!344252 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10807))))

(declare-fun b!551319 () Bool)

(declare-fun e!318184 () Bool)

(assert (=> b!551319 (= e!318184 e!318182)))

(declare-fun res!344254 () Bool)

(assert (=> b!551319 (=> (not res!344254) (not e!318182))))

(declare-datatypes ((SeekEntryResult!5133 0))(
  ( (MissingZero!5133 (index!22759 (_ BitVec 32))) (Found!5133 (index!22760 (_ BitVec 32))) (Intermediate!5133 (undefined!5945 Bool) (index!22761 (_ BitVec 32)) (x!51718 (_ BitVec 32))) (Undefined!5133) (MissingVacant!5133 (index!22762 (_ BitVec 32))) )
))
(declare-fun lt!250807 () SeekEntryResult!5133)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551319 (= res!344254 (or (= lt!250807 (MissingZero!5133 i!1132)) (= lt!250807 (MissingVacant!5133 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34737 (_ BitVec 32)) SeekEntryResult!5133)

(assert (=> b!551319 (= lt!250807 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551320 () Bool)

(declare-fun res!344251 () Bool)

(assert (=> b!551320 (=> (not res!344251) (not e!318182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34737 (_ BitVec 32)) Bool)

(assert (=> b!551320 (= res!344251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551321 () Bool)

(assert (=> b!551321 (= e!318182 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvsle mask!3119 #b00111111111111111111111111111111))))))

(declare-fun e!318183 () Bool)

(assert (=> b!551321 e!318183))

(declare-fun res!344247 () Bool)

(assert (=> b!551321 (=> (not res!344247) (not e!318183))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!551321 (= res!344247 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17040 0))(
  ( (Unit!17041) )
))
(declare-fun lt!250808 () Unit!17040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17040)

(assert (=> b!551321 (= lt!250808 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551322 () Bool)

(declare-fun res!344255 () Bool)

(assert (=> b!551322 (=> (not res!344255) (not e!318182))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34737 (_ BitVec 32)) SeekEntryResult!5133)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551322 (= res!344255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119) (select (arr!16677 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118)) mask!3119)))))

(declare-fun b!551323 () Bool)

(declare-fun res!344250 () Bool)

(assert (=> b!551323 (=> (not res!344250) (not e!318184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551323 (= res!344250 (validKeyInArray!0 k!1914))))

(declare-fun res!344246 () Bool)

(assert (=> start!50444 (=> (not res!344246) (not e!318184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50444 (= res!344246 (validMask!0 mask!3119))))

(assert (=> start!50444 e!318184))

(assert (=> start!50444 true))

(declare-fun array_inv!12451 (array!34737) Bool)

(assert (=> start!50444 (array_inv!12451 a!3118)))

(declare-fun b!551324 () Bool)

(declare-fun res!344248 () Bool)

(assert (=> b!551324 (=> (not res!344248) (not e!318184))))

(declare-fun arrayContainsKey!0 (array!34737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551324 (= res!344248 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551325 () Bool)

(declare-fun res!344249 () Bool)

(assert (=> b!551325 (=> (not res!344249) (not e!318184))))

(assert (=> b!551325 (= res!344249 (validKeyInArray!0 (select (arr!16677 a!3118) j!142)))))

(declare-fun b!551326 () Bool)

(declare-fun res!344253 () Bool)

(assert (=> b!551326 (=> (not res!344253) (not e!318184))))

(assert (=> b!551326 (= res!344253 (and (= (size!17041 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17041 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17041 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551327 () Bool)

(assert (=> b!551327 (= e!318183 (= (seekEntryOrOpen!0 (select (arr!16677 a!3118) j!142) a!3118 mask!3119) (Found!5133 j!142)))))

(assert (= (and start!50444 res!344246) b!551326))

(assert (= (and b!551326 res!344253) b!551325))

(assert (= (and b!551325 res!344249) b!551323))

(assert (= (and b!551323 res!344250) b!551324))

(assert (= (and b!551324 res!344248) b!551319))

(assert (= (and b!551319 res!344254) b!551320))

(assert (= (and b!551320 res!344251) b!551318))

(assert (= (and b!551318 res!344252) b!551322))

(assert (= (and b!551322 res!344255) b!551321))

(assert (= (and b!551321 res!344247) b!551327))

(declare-fun m!528355 () Bool)

(assert (=> b!551321 m!528355))

(declare-fun m!528357 () Bool)

(assert (=> b!551321 m!528357))

(declare-fun m!528359 () Bool)

(assert (=> start!50444 m!528359))

(declare-fun m!528361 () Bool)

(assert (=> start!50444 m!528361))

(declare-fun m!528363 () Bool)

(assert (=> b!551322 m!528363))

(declare-fun m!528365 () Bool)

(assert (=> b!551322 m!528365))

(assert (=> b!551322 m!528363))

(declare-fun m!528367 () Bool)

(assert (=> b!551322 m!528367))

(declare-fun m!528369 () Bool)

(assert (=> b!551322 m!528369))

(assert (=> b!551322 m!528367))

(declare-fun m!528371 () Bool)

(assert (=> b!551322 m!528371))

(assert (=> b!551322 m!528365))

(assert (=> b!551322 m!528363))

(declare-fun m!528373 () Bool)

(assert (=> b!551322 m!528373))

(declare-fun m!528375 () Bool)

(assert (=> b!551322 m!528375))

(assert (=> b!551322 m!528367))

(assert (=> b!551322 m!528369))

(declare-fun m!528377 () Bool)

(assert (=> b!551324 m!528377))

(declare-fun m!528379 () Bool)

(assert (=> b!551323 m!528379))

(declare-fun m!528381 () Bool)

(assert (=> b!551319 m!528381))

(declare-fun m!528383 () Bool)

(assert (=> b!551320 m!528383))

(assert (=> b!551325 m!528363))

(assert (=> b!551325 m!528363))

(declare-fun m!528385 () Bool)

(assert (=> b!551325 m!528385))

(declare-fun m!528387 () Bool)

(assert (=> b!551318 m!528387))

(assert (=> b!551327 m!528363))

(assert (=> b!551327 m!528363))

(declare-fun m!528389 () Bool)

(assert (=> b!551327 m!528389))

(push 1)

(assert (not b!551327))

(assert (not b!551319))

(assert (not b!551322))

(assert (not start!50444))

(assert (not b!551324))

(assert (not b!551323))

(assert (not b!551320))

(assert (not b!551321))

(assert (not b!551325))

(assert (not b!551318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!551460 () Bool)

(declare-fun c!63898 () Bool)

(declare-fun lt!250843 () (_ BitVec 64))

(assert (=> b!551460 (= c!63898 (= lt!250843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318255 () SeekEntryResult!5133)

(declare-fun e!318254 () SeekEntryResult!5133)

(assert (=> b!551460 (= e!318255 e!318254)))

(declare-fun b!551461 () Bool)

(declare-fun lt!250844 () SeekEntryResult!5133)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34737 (_ BitVec 32)) SeekEntryResult!5133)

(assert (=> b!551461 (= e!318254 (seekKeyOrZeroReturnVacant!0 (x!51718 lt!250844) (index!22761 lt!250844) (index!22761 lt!250844) (select (arr!16677 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!551462 () Bool)

(assert (=> b!551462 (= e!318254 (MissingZero!5133 (index!22761 lt!250844)))))

(declare-fun b!551463 () Bool)

(declare-fun e!318256 () SeekEntryResult!5133)

(assert (=> b!551463 (= e!318256 e!318255)))

(assert (=> b!551463 (= lt!250843 (select (arr!16677 a!3118) (index!22761 lt!250844)))))

(declare-fun c!63897 () Bool)

(assert (=> b!551463 (= c!63897 (= lt!250843 (select (arr!16677 a!3118) j!142)))))

(declare-fun b!551464 () Bool)

(assert (=> b!551464 (= e!318255 (Found!5133 (index!22761 lt!250844)))))

(declare-fun b!551465 () Bool)

(assert (=> b!551465 (= e!318256 Undefined!5133)))

(declare-fun d!82899 () Bool)

(declare-fun lt!250842 () SeekEntryResult!5133)

(assert (=> d!82899 (and (or (is-Undefined!5133 lt!250842) (not (is-Found!5133 lt!250842)) (and (bvsge (index!22760 lt!250842) #b00000000000000000000000000000000) (bvslt (index!22760 lt!250842) (size!17041 a!3118)))) (or (is-Undefined!5133 lt!250842) (is-Found!5133 lt!250842) (not (is-MissingZero!5133 lt!250842)) (and (bvsge (index!22759 lt!250842) #b00000000000000000000000000000000) (bvslt (index!22759 lt!250842) (size!17041 a!3118)))) (or (is-Undefined!5133 lt!250842) (is-Found!5133 lt!250842) (is-MissingZero!5133 lt!250842) (not (is-MissingVacant!5133 lt!250842)) (and (bvsge (index!22762 lt!250842) #b00000000000000000000000000000000) (bvslt (index!22762 lt!250842) (size!17041 a!3118)))) (or (is-Undefined!5133 lt!250842) (ite (is-Found!5133 lt!250842) (= (select (arr!16677 a!3118) (index!22760 lt!250842)) (select (arr!16677 a!3118) j!142)) (ite (is-MissingZero!5133 lt!250842) (= (select (arr!16677 a!3118) (index!22759 lt!250842)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5133 lt!250842) (= (select (arr!16677 a!3118) (index!22762 lt!250842)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82899 (= lt!250842 e!318256)))

(declare-fun c!63899 () Bool)

(assert (=> d!82899 (= c!63899 (and (is-Intermediate!5133 lt!250844) (undefined!5945 lt!250844)))))

(assert (=> d!82899 (= lt!250844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119) (select (arr!16677 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82899 (validMask!0 mask!3119)))

(assert (=> d!82899 (= (seekEntryOrOpen!0 (select (arr!16677 a!3118) j!142) a!3118 mask!3119) lt!250842)))

(assert (= (and d!82899 c!63899) b!551465))

(assert (= (and d!82899 (not c!63899)) b!551463))

(assert (= (and b!551463 c!63897) b!551464))

(assert (= (and b!551463 (not c!63897)) b!551460))

(assert (= (and b!551460 c!63898) b!551462))

(assert (= (and b!551460 (not c!63898)) b!551461))

(assert (=> b!551461 m!528363))

(declare-fun m!528489 () Bool)

(assert (=> b!551461 m!528489))

(declare-fun m!528491 () Bool)

(assert (=> b!551463 m!528491))

(assert (=> d!82899 m!528363))

(assert (=> d!82899 m!528365))

(assert (=> d!82899 m!528359))

(declare-fun m!528493 () Bool)

(assert (=> d!82899 m!528493))

(declare-fun m!528495 () Bool)

(assert (=> d!82899 m!528495))

(assert (=> d!82899 m!528365))

(assert (=> d!82899 m!528363))

(assert (=> d!82899 m!528373))

(declare-fun m!528497 () Bool)

(assert (=> d!82899 m!528497))

(assert (=> b!551327 d!82899))

(declare-fun b!551526 () Bool)

(declare-fun e!318300 () SeekEntryResult!5133)

(declare-fun e!318301 () SeekEntryResult!5133)

(assert (=> b!551526 (= e!318300 e!318301)))

(declare-fun lt!250883 () (_ BitVec 64))

(declare-fun c!63917 () Bool)

(assert (=> b!551526 (= c!63917 (or (= lt!250883 (select (arr!16677 a!3118) j!142)) (= (bvadd lt!250883 lt!250883) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!551527 () Bool)

(declare-fun lt!250882 () SeekEntryResult!5133)

(assert (=> b!551527 (and (bvsge (index!22761 lt!250882) #b00000000000000000000000000000000) (bvslt (index!22761 lt!250882) (size!17041 a!3118)))))

(declare-fun res!344362 () Bool)

(assert (=> b!551527 (= res!344362 (= (select (arr!16677 a!3118) (index!22761 lt!250882)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318302 () Bool)

(assert (=> b!551527 (=> res!344362 e!318302)))

(declare-fun b!551528 () Bool)

(declare-fun e!318299 () Bool)

(declare-fun e!318298 () Bool)

(assert (=> b!551528 (= e!318299 e!318298)))

(declare-fun res!344360 () Bool)

(assert (=> b!551528 (= res!344360 (and (is-Intermediate!5133 lt!250882) (not (undefined!5945 lt!250882)) (bvslt (x!51718 lt!250882) #b01111111111111111111111111111110) (bvsge (x!51718 lt!250882) #b00000000000000000000000000000000) (bvsge (x!51718 lt!250882) #b00000000000000000000000000000000)))))

(assert (=> b!551528 (=> (not res!344360) (not e!318298))))

(declare-fun d!82909 () Bool)

(assert (=> d!82909 e!318299))

(declare-fun c!63919 () Bool)

(assert (=> d!82909 (= c!63919 (and (is-Intermediate!5133 lt!250882) (undefined!5945 lt!250882)))))

(assert (=> d!82909 (= lt!250882 e!318300)))

(declare-fun c!63918 () Bool)

(assert (=> d!82909 (= c!63918 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82909 (= lt!250883 (select (arr!16677 a!3118) (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119)))))

(assert (=> d!82909 (validMask!0 mask!3119)))

(assert (=> d!82909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119) (select (arr!16677 a!3118) j!142) a!3118 mask!3119) lt!250882)))

(declare-fun b!551529 () Bool)

(assert (=> b!551529 (= e!318299 (bvsge (x!51718 lt!250882) #b01111111111111111111111111111110))))

(declare-fun b!551530 () Bool)

(assert (=> b!551530 (and (bvsge (index!22761 lt!250882) #b00000000000000000000000000000000) (bvslt (index!22761 lt!250882) (size!17041 a!3118)))))

(assert (=> b!551530 (= e!318302 (= (select (arr!16677 a!3118) (index!22761 lt!250882)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!551531 () Bool)

(assert (=> b!551531 (= e!318300 (Intermediate!5133 true (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551532 () Bool)

(assert (=> b!551532 (and (bvsge (index!22761 lt!250882) #b00000000000000000000000000000000) (bvslt (index!22761 lt!250882) (size!17041 a!3118)))))

(declare-fun res!344361 () Bool)

(assert (=> b!551532 (= res!344361 (= (select (arr!16677 a!3118) (index!22761 lt!250882)) (select (arr!16677 a!3118) j!142)))))

(assert (=> b!551532 (=> res!344361 e!318302)))

(assert (=> b!551532 (= e!318298 e!318302)))

(declare-fun b!551533 () Bool)

(assert (=> b!551533 (= e!318301 (Intermediate!5133 false (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551534 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551534 (= e!318301 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!16677 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!82909 c!63918) b!551531))

(assert (= (and d!82909 (not c!63918)) b!551526))

(assert (= (and b!551526 c!63917) b!551533))

(assert (= (and b!551526 (not c!63917)) b!551534))

(assert (= (and d!82909 c!63919) b!551529))

(assert (= (and d!82909 (not c!63919)) b!551528))

(assert (= (and b!551528 res!344360) b!551532))

(assert (= (and b!551532 (not res!344361)) b!551527))

(assert (= (and b!551527 (not res!344362)) b!551530))

(assert (=> b!551534 m!528365))

(declare-fun m!528545 () Bool)

(assert (=> b!551534 m!528545))

(assert (=> b!551534 m!528545))

(assert (=> b!551534 m!528363))

(declare-fun m!528547 () Bool)

(assert (=> b!551534 m!528547))

(assert (=> d!82909 m!528365))

(declare-fun m!528549 () Bool)

(assert (=> d!82909 m!528549))

(assert (=> d!82909 m!528359))

(declare-fun m!528551 () Bool)

(assert (=> b!551527 m!528551))

(assert (=> b!551532 m!528551))

(assert (=> b!551530 m!528551))

(assert (=> b!551322 d!82909))

(declare-fun d!82929 () Bool)

(declare-fun lt!250892 () (_ BitVec 32))

(declare-fun lt!250891 () (_ BitVec 32))

(assert (=> d!82929 (= lt!250892 (bvmul (bvxor lt!250891 (bvlshr lt!250891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82929 (= lt!250891 ((_ extract 31 0) (bvand (bvxor (select (arr!16677 a!3118) j!142) (bvlshr (select (arr!16677 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82929 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344365 (let ((h!11788 ((_ extract 31 0) (bvand (bvxor (select (arr!16677 a!3118) j!142) (bvlshr (select (arr!16677 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51722 (bvmul (bvxor h!11788 (bvlshr h!11788 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51722 (bvlshr x!51722 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344365 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344365 #b00000000000000000000000000000000))))))

(assert (=> d!82929 (= (toIndex!0 (select (arr!16677 a!3118) j!142) mask!3119) (bvand (bvxor lt!250892 (bvlshr lt!250892 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551322 d!82929))

(declare-fun b!551543 () Bool)

(declare-fun e!318310 () SeekEntryResult!5133)

(declare-fun e!318311 () SeekEntryResult!5133)

(assert (=> b!551543 (= e!318310 e!318311)))

(declare-fun lt!250894 () (_ BitVec 64))

(declare-fun c!63923 () Bool)

(assert (=> b!551543 (= c!63923 (or (= lt!250894 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!250894 lt!250894) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!551544 () Bool)

(declare-fun lt!250893 () SeekEntryResult!5133)

(assert (=> b!551544 (and (bvsge (index!22761 lt!250893) #b00000000000000000000000000000000) (bvslt (index!22761 lt!250893) (size!17041 (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118)))))))

(declare-fun res!344368 () Bool)

(assert (=> b!551544 (= res!344368 (= (select (arr!16677 (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118))) (index!22761 lt!250893)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318312 () Bool)

(assert (=> b!551544 (=> res!344368 e!318312)))

(declare-fun b!551545 () Bool)

(declare-fun e!318309 () Bool)

(declare-fun e!318308 () Bool)

(assert (=> b!551545 (= e!318309 e!318308)))

(declare-fun res!344366 () Bool)

(assert (=> b!551545 (= res!344366 (and (is-Intermediate!5133 lt!250893) (not (undefined!5945 lt!250893)) (bvslt (x!51718 lt!250893) #b01111111111111111111111111111110) (bvsge (x!51718 lt!250893) #b00000000000000000000000000000000) (bvsge (x!51718 lt!250893) #b00000000000000000000000000000000)))))

(assert (=> b!551545 (=> (not res!344366) (not e!318308))))

(declare-fun d!82937 () Bool)

(assert (=> d!82937 e!318309))

(declare-fun c!63925 () Bool)

(assert (=> d!82937 (= c!63925 (and (is-Intermediate!5133 lt!250893) (undefined!5945 lt!250893)))))

(assert (=> d!82937 (= lt!250893 e!318310)))

(declare-fun c!63924 () Bool)

(assert (=> d!82937 (= c!63924 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82937 (= lt!250894 (select (arr!16677 (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118))) (toIndex!0 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) mask!3119)))))

(assert (=> d!82937 (validMask!0 mask!3119)))

(assert (=> d!82937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118)) mask!3119) lt!250893)))

(declare-fun b!551546 () Bool)

(assert (=> b!551546 (= e!318309 (bvsge (x!51718 lt!250893) #b01111111111111111111111111111110))))

(declare-fun b!551547 () Bool)

(assert (=> b!551547 (and (bvsge (index!22761 lt!250893) #b00000000000000000000000000000000) (bvslt (index!22761 lt!250893) (size!17041 (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118)))))))

(assert (=> b!551547 (= e!318312 (= (select (arr!16677 (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118))) (index!22761 lt!250893)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!551548 () Bool)

(assert (=> b!551548 (= e!318310 (Intermediate!5133 true (toIndex!0 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551549 () Bool)

(assert (=> b!551549 (and (bvsge (index!22761 lt!250893) #b00000000000000000000000000000000) (bvslt (index!22761 lt!250893) (size!17041 (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118)))))))

(declare-fun res!344367 () Bool)

(assert (=> b!551549 (= res!344367 (= (select (arr!16677 (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118))) (index!22761 lt!250893)) (select (store (arr!16677 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!551549 (=> res!344367 e!318312)))

(assert (=> b!551549 (= e!318308 e!318312)))

(declare-fun b!551550 () Bool)

(assert (=> b!551550 (= e!318311 (Intermediate!5133 false (toIndex!0 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!551551 () Bool)

(assert (=> b!551551 (= e!318311 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) (array!34738 (store (arr!16677 a!3118) i!1132 k!1914) (size!17041 a!3118)) mask!3119))))

(assert (= (and d!82937 c!63924) b!551548))

(assert (= (and d!82937 (not c!63924)) b!551543))

(assert (= (and b!551543 c!63923) b!551550))

(assert (= (and b!551543 (not c!63923)) b!551551))

(assert (= (and d!82937 c!63925) b!551546))

(assert (= (and d!82937 (not c!63925)) b!551545))

(assert (= (and b!551545 res!344366) b!551549))

(assert (= (and b!551549 (not res!344367)) b!551544))

(assert (= (and b!551544 (not res!344368)) b!551547))

(assert (=> b!551551 m!528369))

(declare-fun m!528565 () Bool)

(assert (=> b!551551 m!528565))

(assert (=> b!551551 m!528565))

(assert (=> b!551551 m!528367))

(declare-fun m!528567 () Bool)

(assert (=> b!551551 m!528567))

(assert (=> d!82937 m!528369))

(declare-fun m!528569 () Bool)

(assert (=> d!82937 m!528569))

(assert (=> d!82937 m!528359))

(declare-fun m!528571 () Bool)

(assert (=> b!551544 m!528571))

(assert (=> b!551549 m!528571))

(assert (=> b!551547 m!528571))

(assert (=> b!551322 d!82937))

(declare-fun d!82939 () Bool)

(declare-fun lt!250896 () (_ BitVec 32))

(declare-fun lt!250895 () (_ BitVec 32))

(assert (=> d!82939 (= lt!250896 (bvmul (bvxor lt!250895 (bvlshr lt!250895 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82939 (= lt!250895 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82939 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344365 (let ((h!11788 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51722 (bvmul (bvxor h!11788 (bvlshr h!11788 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51722 (bvlshr x!51722 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344365 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344365 #b00000000000000000000000000000000))))))

(assert (=> d!82939 (= (toIndex!0 (select (store (arr!16677 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!250896 (bvlshr lt!250896 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551322 d!82939))

(declare-fun d!82941 () Bool)

(assert (=> d!82941 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551323 d!82941))

(declare-fun b!551562 () Bool)

(declare-fun e!318322 () Bool)

(declare-fun contains!2845 (List!10810 (_ BitVec 64)) Bool)

(assert (=> b!551562 (= e!318322 (contains!2845 Nil!10807 (select (arr!16677 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!551563 () Bool)

(declare-fun e!318321 () Bool)

(declare-fun call!32302 () Bool)

(assert (=> b!551563 (= e!318321 call!32302)))

(declare-fun bm!32299 () Bool)

(declare-fun c!63928 () Bool)

(assert (=> bm!32299 (= call!32302 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63928 (Cons!10806 (select (arr!16677 a!3118) #b00000000000000000000000000000000) Nil!10807) Nil!10807)))))

(declare-fun b!551564 () Bool)

(assert (=> b!551564 (= e!318321 call!32302)))

(declare-fun d!82943 () Bool)

(declare-fun res!344375 () Bool)

(declare-fun e!318323 () Bool)

(assert (=> d!82943 (=> res!344375 e!318323)))

(assert (=> d!82943 (= res!344375 (bvsge #b00000000000000000000000000000000 (size!17041 a!3118)))))

(assert (=> d!82943 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10807) e!318323)))

(declare-fun b!551565 () Bool)

(declare-fun e!318324 () Bool)

(assert (=> b!551565 (= e!318324 e!318321)))

(assert (=> b!551565 (= c!63928 (validKeyInArray!0 (select (arr!16677 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!551566 () Bool)

(assert (=> b!551566 (= e!318323 e!318324)))

(declare-fun res!344377 () Bool)

(assert (=> b!551566 (=> (not res!344377) (not e!318324))))

(assert (=> b!551566 (= res!344377 (not e!318322))))

(declare-fun res!344376 () Bool)

(assert (=> b!551566 (=> (not res!344376) (not e!318322))))

(assert (=> b!551566 (= res!344376 (validKeyInArray!0 (select (arr!16677 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82943 (not res!344375)) b!551566))

(assert (= (and b!551566 res!344376) b!551562))

(assert (= (and b!551566 res!344377) b!551565))

(assert (= (and b!551565 c!63928) b!551564))

(assert (= (and b!551565 (not c!63928)) b!551563))

(assert (= (or b!551564 b!551563) bm!32299))

(declare-fun m!528573 () Bool)

(assert (=> b!551562 m!528573))

(assert (=> b!551562 m!528573))

(declare-fun m!528575 () Bool)

(assert (=> b!551562 m!528575))

(assert (=> bm!32299 m!528573))

(declare-fun m!528577 () Bool)

(assert (=> bm!32299 m!528577))

(assert (=> b!551565 m!528573))

(assert (=> b!551565 m!528573))

(declare-fun m!528579 () Bool)

(assert (=> b!551565 m!528579))

(assert (=> b!551566 m!528573))

(assert (=> b!551566 m!528573))

(assert (=> b!551566 m!528579))

(assert (=> b!551318 d!82943))

(declare-fun d!82949 () Bool)

(assert (=> d!82949 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50444 d!82949))

(declare-fun d!82953 () Bool)

(assert (=> d!82953 (= (array_inv!12451 a!3118) (bvsge (size!17041 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50444 d!82953))

(declare-fun d!82955 () Bool)

(declare-fun res!344395 () Bool)

(declare-fun e!318355 () Bool)

(assert (=> d!82955 (=> res!344395 e!318355)))

(assert (=> d!82955 (= res!344395 (= (select (arr!16677 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82955 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!318355)))

(declare-fun b!551619 () Bool)

(declare-fun e!318356 () Bool)

(assert (=> b!551619 (= e!318355 e!318356)))

(declare-fun res!344396 () Bool)

(assert (=> b!551619 (=> (not res!344396) (not e!318356))))

(assert (=> b!551619 (= res!344396 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17041 a!3118)))))

(declare-fun b!551620 () Bool)

(assert (=> b!551620 (= e!318356 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82955 (not res!344395)) b!551619))

(assert (= (and b!551619 res!344396) b!551620))

(assert (=> d!82955 m!528573))

(declare-fun m!528597 () Bool)

(assert (=> b!551620 m!528597))

(assert (=> b!551324 d!82955))

(declare-fun b!551627 () Bool)

(declare-fun c!63948 () Bool)

(declare-fun lt!250918 () (_ BitVec 64))

(assert (=> b!551627 (= c!63948 (= lt!250918 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318362 () SeekEntryResult!5133)

(declare-fun e!318361 () SeekEntryResult!5133)

(assert (=> b!551627 (= e!318362 e!318361)))

(declare-fun b!551628 () Bool)

(declare-fun lt!250919 () SeekEntryResult!5133)

(assert (=> b!551628 (= e!318361 (seekKeyOrZeroReturnVacant!0 (x!51718 lt!250919) (index!22761 lt!250919) (index!22761 lt!250919) k!1914 a!3118 mask!3119))))

(declare-fun b!551629 () Bool)

(assert (=> b!551629 (= e!318361 (MissingZero!5133 (index!22761 lt!250919)))))

(declare-fun b!551630 () Bool)

(declare-fun e!318363 () SeekEntryResult!5133)

(assert (=> b!551630 (= e!318363 e!318362)))

(assert (=> b!551630 (= lt!250918 (select (arr!16677 a!3118) (index!22761 lt!250919)))))

(declare-fun c!63947 () Bool)

(assert (=> b!551630 (= c!63947 (= lt!250918 k!1914))))

(declare-fun b!551631 () Bool)

(assert (=> b!551631 (= e!318362 (Found!5133 (index!22761 lt!250919)))))

(declare-fun b!551632 () Bool)

(assert (=> b!551632 (= e!318363 Undefined!5133)))

(declare-fun d!82961 () Bool)

(declare-fun lt!250917 () SeekEntryResult!5133)

(assert (=> d!82961 (and (or (is-Undefined!5133 lt!250917) (not (is-Found!5133 lt!250917)) (and (bvsge (index!22760 lt!250917) #b00000000000000000000000000000000) (bvslt (index!22760 lt!250917) (size!17041 a!3118)))) (or (is-Undefined!5133 lt!250917) (is-Found!5133 lt!250917) (not (is-MissingZero!5133 lt!250917)) (and (bvsge (index!22759 lt!250917) #b00000000000000000000000000000000) (bvslt (index!22759 lt!250917) (size!17041 a!3118)))) (or (is-Undefined!5133 lt!250917) (is-Found!5133 lt!250917) (is-MissingZero!5133 lt!250917) (not (is-MissingVacant!5133 lt!250917)) (and (bvsge (index!22762 lt!250917) #b00000000000000000000000000000000) (bvslt (index!22762 lt!250917) (size!17041 a!3118)))) (or (is-Undefined!5133 lt!250917) (ite (is-Found!5133 lt!250917) (= (select (arr!16677 a!3118) (index!22760 lt!250917)) k!1914) (ite (is-MissingZero!5133 lt!250917) (= (select (arr!16677 a!3118) (index!22759 lt!250917)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5133 lt!250917) (= (select (arr!16677 a!3118) (index!22762 lt!250917)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82961 (= lt!250917 e!318363)))

(declare-fun c!63949 () Bool)

(assert (=> d!82961 (= c!63949 (and (is-Intermediate!5133 lt!250919) (undefined!5945 lt!250919)))))

(assert (=> d!82961 (= lt!250919 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82961 (validMask!0 mask!3119)))

(assert (=> d!82961 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!250917)))

(assert (= (and d!82961 c!63949) b!551632))

(assert (= (and d!82961 (not c!63949)) b!551630))

(assert (= (and b!551630 c!63947) b!551631))

(assert (= (and b!551630 (not c!63947)) b!551627))

(assert (= (and b!551627 c!63948) b!551629))

(assert (= (and b!551627 (not c!63948)) b!551628))

(declare-fun m!528599 () Bool)

(assert (=> b!551628 m!528599))

(declare-fun m!528601 () Bool)

(assert (=> b!551630 m!528601))

(declare-fun m!528603 () Bool)

(assert (=> d!82961 m!528603))

(assert (=> d!82961 m!528359))

(declare-fun m!528605 () Bool)

(assert (=> d!82961 m!528605))

(declare-fun m!528607 () Bool)

(assert (=> d!82961 m!528607))

(assert (=> d!82961 m!528603))

(declare-fun m!528609 () Bool)

(assert (=> d!82961 m!528609))

(declare-fun m!528611 () Bool)

(assert (=> d!82961 m!528611))

(assert (=> b!551319 d!82961))

(declare-fun d!82967 () Bool)

(assert (=> d!82967 (= (validKeyInArray!0 (select (arr!16677 a!3118) j!142)) (and (not (= (select (arr!16677 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16677 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551325 d!82967))

(declare-fun b!551662 () Bool)

(declare-fun e!318385 () Bool)

(declare-fun call!32305 () Bool)

(assert (=> b!551662 (= e!318385 call!32305)))

(declare-fun b!551663 () Bool)

(declare-fun e!318384 () Bool)

(assert (=> b!551663 (= e!318384 call!32305)))

(declare-fun d!82969 () Bool)

(declare-fun res!344418 () Bool)

(declare-fun e!318386 () Bool)

(assert (=> d!82969 (=> res!344418 e!318386)))

(assert (=> d!82969 (= res!344418 (bvsge #b00000000000000000000000000000000 (size!17041 a!3118)))))

(assert (=> d!82969 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!318386)))

(declare-fun bm!32302 () Bool)

(assert (=> bm!32302 (= call!32305 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!551664 () Bool)

(assert (=> b!551664 (= e!318386 e!318384)))

(declare-fun c!63958 () Bool)

(assert (=> b!551664 (= c!63958 (validKeyInArray!0 (select (arr!16677 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!551665 () Bool)

(assert (=> b!551665 (= e!318384 e!318385)))

(declare-fun lt!250936 () (_ BitVec 64))

(assert (=> b!551665 (= lt!250936 (select (arr!16677 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250937 () Unit!17040)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34737 (_ BitVec 64) (_ BitVec 32)) Unit!17040)

(assert (=> b!551665 (= lt!250937 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250936 #b00000000000000000000000000000000))))

(assert (=> b!551665 (arrayContainsKey!0 a!3118 lt!250936 #b00000000000000000000000000000000)))

(declare-fun lt!250935 () Unit!17040)

(assert (=> b!551665 (= lt!250935 lt!250937)))

(declare-fun res!344417 () Bool)

(assert (=> b!551665 (= res!344417 (= (seekEntryOrOpen!0 (select (arr!16677 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5133 #b00000000000000000000000000000000)))))

(assert (=> b!551665 (=> (not res!344417) (not e!318385))))

(assert (= (and d!82969 (not res!344418)) b!551664))

(assert (= (and b!551664 c!63958) b!551665))

(assert (= (and b!551664 (not c!63958)) b!551663))

(assert (= (and b!551665 res!344417) b!551662))

(assert (= (or b!551662 b!551663) bm!32302))

(declare-fun m!528637 () Bool)

(assert (=> bm!32302 m!528637))

(assert (=> b!551664 m!528573))

(assert (=> b!551664 m!528573))

(assert (=> b!551664 m!528579))

(assert (=> b!551665 m!528573))

(declare-fun m!528639 () Bool)

(assert (=> b!551665 m!528639))

(declare-fun m!528641 () Bool)

(assert (=> b!551665 m!528641))

(assert (=> b!551665 m!528573))

(declare-fun m!528643 () Bool)

(assert (=> b!551665 m!528643))

(assert (=> b!551320 d!82969))

(declare-fun b!551675 () Bool)

(declare-fun e!318393 () Bool)

(declare-fun call!32306 () Bool)

(assert (=> b!551675 (= e!318393 call!32306)))

(declare-fun b!551676 () Bool)

(declare-fun e!318392 () Bool)

(assert (=> b!551676 (= e!318392 call!32306)))

(declare-fun d!82977 () Bool)

(declare-fun res!344423 () Bool)

(declare-fun e!318394 () Bool)

(assert (=> d!82977 (=> res!344423 e!318394)))

(assert (=> d!82977 (= res!344423 (bvsge j!142 (size!17041 a!3118)))))

(assert (=> d!82977 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!318394)))

(declare-fun bm!32303 () Bool)

(assert (=> bm!32303 (= call!32306 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!551677 () Bool)

(assert (=> b!551677 (= e!318394 e!318392)))

(declare-fun c!63962 () Bool)

(assert (=> b!551677 (= c!63962 (validKeyInArray!0 (select (arr!16677 a!3118) j!142)))))

(declare-fun b!551678 () Bool)

(assert (=> b!551678 (= e!318392 e!318393)))

(declare-fun lt!250943 () (_ BitVec 64))

(assert (=> b!551678 (= lt!250943 (select (arr!16677 a!3118) j!142))))

(declare-fun lt!250944 () Unit!17040)

(assert (=> b!551678 (= lt!250944 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250943 j!142))))

(assert (=> b!551678 (arrayContainsKey!0 a!3118 lt!250943 #b00000000000000000000000000000000)))

(declare-fun lt!250942 () Unit!17040)

(assert (=> b!551678 (= lt!250942 lt!250944)))

(declare-fun res!344422 () Bool)

(assert (=> b!551678 (= res!344422 (= (seekEntryOrOpen!0 (select (arr!16677 a!3118) j!142) a!3118 mask!3119) (Found!5133 j!142)))))

(assert (=> b!551678 (=> (not res!344422) (not e!318393))))

(assert (= (and d!82977 (not res!344423)) b!551677))

(assert (= (and b!551677 c!63962) b!551678))

(assert (= (and b!551677 (not c!63962)) b!551676))

(assert (= (and b!551678 res!344422) b!551675))

(assert (= (or b!551675 b!551676) bm!32303))

(declare-fun m!528645 () Bool)

(assert (=> bm!32303 m!528645))

(assert (=> b!551677 m!528363))

(assert (=> b!551677 m!528363))

(assert (=> b!551677 m!528385))

(assert (=> b!551678 m!528363))

(declare-fun m!528647 () Bool)

(assert (=> b!551678 m!528647))

(declare-fun m!528649 () Bool)

(assert (=> b!551678 m!528649))

(assert (=> b!551678 m!528363))

(assert (=> b!551678 m!528389))

(assert (=> b!551321 d!82977))

(declare-fun d!82979 () Bool)

(assert (=> d!82979 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!250949 () Unit!17040)

(declare-fun choose!38 (array!34737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17040)

(assert (=> d!82979 (= lt!250949 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!82979 (validMask!0 mask!3119)))

(assert (=> d!82979 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!250949)))

(declare-fun bs!17180 () Bool)

(assert (= bs!17180 d!82979))

(assert (=> bs!17180 m!528355))

(declare-fun m!528659 () Bool)

(assert (=> bs!17180 m!528659))

(assert (=> bs!17180 m!528359))

(assert (=> b!551321 d!82979))

(push 1)

