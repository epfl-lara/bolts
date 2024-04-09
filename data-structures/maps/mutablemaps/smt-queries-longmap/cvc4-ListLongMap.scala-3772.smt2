; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51648 () Bool)

(assert start!51648)

(declare-fun b!564858 () Bool)

(declare-fun res!356166 () Bool)

(declare-fun e!325230 () Bool)

(assert (=> b!564858 (=> (not res!356166) (not e!325230))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564858 (= res!356166 (validKeyInArray!0 k!1914))))

(declare-fun b!564859 () Bool)

(declare-fun res!356164 () Bool)

(declare-fun e!325229 () Bool)

(assert (=> b!564859 (=> (not res!356164) (not e!325229))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35467 0))(
  ( (array!35468 (arr!17030 (Array (_ BitVec 32) (_ BitVec 64))) (size!17394 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35467)

(declare-datatypes ((SeekEntryResult!5486 0))(
  ( (MissingZero!5486 (index!24171 (_ BitVec 32))) (Found!5486 (index!24172 (_ BitVec 32))) (Intermediate!5486 (undefined!6298 Bool) (index!24173 (_ BitVec 32)) (x!53064 (_ BitVec 32))) (Undefined!5486) (MissingVacant!5486 (index!24174 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35467 (_ BitVec 32)) SeekEntryResult!5486)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564859 (= res!356164 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17030 a!3118) j!142) mask!3119) (select (arr!17030 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118)) mask!3119)))))

(declare-fun b!564860 () Bool)

(declare-fun res!356161 () Bool)

(assert (=> b!564860 (=> (not res!356161) (not e!325230))))

(assert (=> b!564860 (= res!356161 (validKeyInArray!0 (select (arr!17030 a!3118) j!142)))))

(declare-fun b!564861 () Bool)

(declare-fun res!356160 () Bool)

(assert (=> b!564861 (=> (not res!356160) (not e!325229))))

(declare-datatypes ((List!11163 0))(
  ( (Nil!11160) (Cons!11159 (h!12162 (_ BitVec 64)) (t!17399 List!11163)) )
))
(declare-fun arrayNoDuplicates!0 (array!35467 (_ BitVec 32) List!11163) Bool)

(assert (=> b!564861 (= res!356160 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11160))))

(declare-fun res!356167 () Bool)

(assert (=> start!51648 (=> (not res!356167) (not e!325230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51648 (= res!356167 (validMask!0 mask!3119))))

(assert (=> start!51648 e!325230))

(assert (=> start!51648 true))

(declare-fun array_inv!12804 (array!35467) Bool)

(assert (=> start!51648 (array_inv!12804 a!3118)))

(declare-fun b!564862 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35467 (_ BitVec 32)) SeekEntryResult!5486)

(assert (=> b!564862 (= e!325229 (not (= (seekEntryOrOpen!0 (select (arr!17030 a!3118) j!142) a!3118 mask!3119) (Found!5486 j!142))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35467 (_ BitVec 32)) Bool)

(assert (=> b!564862 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17674 0))(
  ( (Unit!17675) )
))
(declare-fun lt!257701 () Unit!17674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17674)

(assert (=> b!564862 (= lt!257701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!564863 () Bool)

(declare-fun res!356165 () Bool)

(assert (=> b!564863 (=> (not res!356165) (not e!325230))))

(assert (=> b!564863 (= res!356165 (and (= (size!17394 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17394 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17394 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564864 () Bool)

(assert (=> b!564864 (= e!325230 e!325229)))

(declare-fun res!356168 () Bool)

(assert (=> b!564864 (=> (not res!356168) (not e!325229))))

(declare-fun lt!257702 () SeekEntryResult!5486)

(assert (=> b!564864 (= res!356168 (or (= lt!257702 (MissingZero!5486 i!1132)) (= lt!257702 (MissingVacant!5486 i!1132))))))

(assert (=> b!564864 (= lt!257702 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564865 () Bool)

(declare-fun res!356162 () Bool)

(assert (=> b!564865 (=> (not res!356162) (not e!325230))))

(declare-fun arrayContainsKey!0 (array!35467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564865 (= res!356162 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564866 () Bool)

(declare-fun res!356163 () Bool)

(assert (=> b!564866 (=> (not res!356163) (not e!325229))))

(assert (=> b!564866 (= res!356163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51648 res!356167) b!564863))

(assert (= (and b!564863 res!356165) b!564860))

(assert (= (and b!564860 res!356161) b!564858))

(assert (= (and b!564858 res!356166) b!564865))

(assert (= (and b!564865 res!356162) b!564864))

(assert (= (and b!564864 res!356168) b!564866))

(assert (= (and b!564866 res!356163) b!564861))

(assert (= (and b!564861 res!356160) b!564859))

(assert (= (and b!564859 res!356164) b!564862))

(declare-fun m!543427 () Bool)

(assert (=> b!564858 m!543427))

(declare-fun m!543429 () Bool)

(assert (=> b!564860 m!543429))

(assert (=> b!564860 m!543429))

(declare-fun m!543431 () Bool)

(assert (=> b!564860 m!543431))

(declare-fun m!543433 () Bool)

(assert (=> start!51648 m!543433))

(declare-fun m!543435 () Bool)

(assert (=> start!51648 m!543435))

(declare-fun m!543437 () Bool)

(assert (=> b!564864 m!543437))

(declare-fun m!543439 () Bool)

(assert (=> b!564861 m!543439))

(assert (=> b!564859 m!543429))

(declare-fun m!543441 () Bool)

(assert (=> b!564859 m!543441))

(assert (=> b!564859 m!543429))

(declare-fun m!543443 () Bool)

(assert (=> b!564859 m!543443))

(declare-fun m!543445 () Bool)

(assert (=> b!564859 m!543445))

(assert (=> b!564859 m!543443))

(declare-fun m!543447 () Bool)

(assert (=> b!564859 m!543447))

(assert (=> b!564859 m!543441))

(assert (=> b!564859 m!543429))

(declare-fun m!543449 () Bool)

(assert (=> b!564859 m!543449))

(declare-fun m!543451 () Bool)

(assert (=> b!564859 m!543451))

(assert (=> b!564859 m!543443))

(assert (=> b!564859 m!543445))

(declare-fun m!543453 () Bool)

(assert (=> b!564865 m!543453))

(assert (=> b!564862 m!543429))

(assert (=> b!564862 m!543429))

(declare-fun m!543455 () Bool)

(assert (=> b!564862 m!543455))

(declare-fun m!543457 () Bool)

(assert (=> b!564862 m!543457))

(declare-fun m!543459 () Bool)

(assert (=> b!564862 m!543459))

(declare-fun m!543461 () Bool)

(assert (=> b!564866 m!543461))

(push 1)

(assert (not b!564861))

(assert (not b!564860))

(assert (not b!564859))

(assert (not b!564866))

(assert (not start!51648))

(assert (not b!564862))

(assert (not b!564864))

(assert (not b!564858))

(assert (not b!564865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83875 () Bool)

(assert (=> d!83875 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!564858 d!83875))

(declare-fun b!564968 () Bool)

(declare-fun lt!257750 () SeekEntryResult!5486)

(assert (=> b!564968 (and (bvsge (index!24173 lt!257750) #b00000000000000000000000000000000) (bvslt (index!24173 lt!257750) (size!17394 a!3118)))))

(declare-fun e!325297 () Bool)

(assert (=> b!564968 (= e!325297 (= (select (arr!17030 a!3118) (index!24173 lt!257750)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!564969 () Bool)

(assert (=> b!564969 (and (bvsge (index!24173 lt!257750) #b00000000000000000000000000000000) (bvslt (index!24173 lt!257750) (size!17394 a!3118)))))

(declare-fun res!356194 () Bool)

(assert (=> b!564969 (= res!356194 (= (select (arr!17030 a!3118) (index!24173 lt!257750)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!564969 (=> res!356194 e!325297)))

(declare-fun b!564970 () Bool)

(declare-fun e!325293 () Bool)

(declare-fun e!325295 () Bool)

(assert (=> b!564970 (= e!325293 e!325295)))

(declare-fun res!356195 () Bool)

(assert (=> b!564970 (= res!356195 (and (is-Intermediate!5486 lt!257750) (not (undefined!6298 lt!257750)) (bvslt (x!53064 lt!257750) #b01111111111111111111111111111110) (bvsge (x!53064 lt!257750) #b00000000000000000000000000000000) (bvsge (x!53064 lt!257750) #b00000000000000000000000000000000)))))

(assert (=> b!564970 (=> (not res!356195) (not e!325295))))

(declare-fun b!564971 () Bool)

(declare-fun e!325296 () SeekEntryResult!5486)

(assert (=> b!564971 (= e!325296 (Intermediate!5486 false (toIndex!0 (select (arr!17030 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun d!83877 () Bool)

(assert (=> d!83877 e!325293))

(declare-fun c!64734 () Bool)

(assert (=> d!83877 (= c!64734 (and (is-Intermediate!5486 lt!257750) (undefined!6298 lt!257750)))))

(declare-fun e!325294 () SeekEntryResult!5486)

(assert (=> d!83877 (= lt!257750 e!325294)))

(declare-fun c!64735 () Bool)

(assert (=> d!83877 (= c!64735 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!257749 () (_ BitVec 64))

(assert (=> d!83877 (= lt!257749 (select (arr!17030 a!3118) (toIndex!0 (select (arr!17030 a!3118) j!142) mask!3119)))))

(assert (=> d!83877 (validMask!0 mask!3119)))

(assert (=> d!83877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17030 a!3118) j!142) mask!3119) (select (arr!17030 a!3118) j!142) a!3118 mask!3119) lt!257750)))

(declare-fun b!564972 () Bool)

(assert (=> b!564972 (= e!325294 e!325296)))

(declare-fun c!64733 () Bool)

(assert (=> b!564972 (= c!64733 (or (= lt!257749 (select (arr!17030 a!3118) j!142)) (= (bvadd lt!257749 lt!257749) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!564973 () Bool)

(assert (=> b!564973 (= e!325294 (Intermediate!5486 true (toIndex!0 (select (arr!17030 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!564974 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564974 (= e!325296 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!17030 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!17030 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!564975 () Bool)

(assert (=> b!564975 (= e!325293 (bvsge (x!53064 lt!257750) #b01111111111111111111111111111110))))

(declare-fun b!564976 () Bool)

(assert (=> b!564976 (and (bvsge (index!24173 lt!257750) #b00000000000000000000000000000000) (bvslt (index!24173 lt!257750) (size!17394 a!3118)))))

(declare-fun res!356196 () Bool)

(assert (=> b!564976 (= res!356196 (= (select (arr!17030 a!3118) (index!24173 lt!257750)) (select (arr!17030 a!3118) j!142)))))

(assert (=> b!564976 (=> res!356196 e!325297)))

(assert (=> b!564976 (= e!325295 e!325297)))

(assert (= (and d!83877 c!64735) b!564973))

(assert (= (and d!83877 (not c!64735)) b!564972))

(assert (= (and b!564972 c!64733) b!564971))

(assert (= (and b!564972 (not c!64733)) b!564974))

(assert (= (and d!83877 c!64734) b!564975))

(assert (= (and d!83877 (not c!64734)) b!564970))

(assert (= (and b!564970 res!356195) b!564976))

(assert (= (and b!564976 (not res!356196)) b!564969))

(assert (= (and b!564969 (not res!356194)) b!564968))

(declare-fun m!543527 () Bool)

(assert (=> b!564976 m!543527))

(assert (=> b!564974 m!543441))

(declare-fun m!543529 () Bool)

(assert (=> b!564974 m!543529))

(assert (=> b!564974 m!543529))

(assert (=> b!564974 m!543429))

(declare-fun m!543531 () Bool)

(assert (=> b!564974 m!543531))

(assert (=> b!564968 m!543527))

(assert (=> b!564969 m!543527))

(assert (=> d!83877 m!543441))

(declare-fun m!543533 () Bool)

(assert (=> d!83877 m!543533))

(assert (=> d!83877 m!543433))

(assert (=> b!564859 d!83877))

(declare-fun d!83895 () Bool)

(declare-fun lt!257763 () (_ BitVec 32))

(declare-fun lt!257762 () (_ BitVec 32))

(assert (=> d!83895 (= lt!257763 (bvmul (bvxor lt!257762 (bvlshr lt!257762 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83895 (= lt!257762 ((_ extract 31 0) (bvand (bvxor (select (arr!17030 a!3118) j!142) (bvlshr (select (arr!17030 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83895 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!356197 (let ((h!12163 ((_ extract 31 0) (bvand (bvxor (select (arr!17030 a!3118) j!142) (bvlshr (select (arr!17030 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53066 (bvmul (bvxor h!12163 (bvlshr h!12163 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53066 (bvlshr x!53066 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!356197 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!356197 #b00000000000000000000000000000000))))))

(assert (=> d!83895 (= (toIndex!0 (select (arr!17030 a!3118) j!142) mask!3119) (bvand (bvxor lt!257763 (bvlshr lt!257763 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!564859 d!83895))

(declare-fun b!564999 () Bool)

(declare-fun lt!257765 () SeekEntryResult!5486)

(assert (=> b!564999 (and (bvsge (index!24173 lt!257765) #b00000000000000000000000000000000) (bvslt (index!24173 lt!257765) (size!17394 (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118)))))))

(declare-fun e!325315 () Bool)

(assert (=> b!564999 (= e!325315 (= (select (arr!17030 (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118))) (index!24173 lt!257765)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!565000 () Bool)

(assert (=> b!565000 (and (bvsge (index!24173 lt!257765) #b00000000000000000000000000000000) (bvslt (index!24173 lt!257765) (size!17394 (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118)))))))

(declare-fun res!356206 () Bool)

(assert (=> b!565000 (= res!356206 (= (select (arr!17030 (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118))) (index!24173 lt!257765)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!565000 (=> res!356206 e!325315)))

(declare-fun b!565001 () Bool)

(declare-fun e!325311 () Bool)

(declare-fun e!325313 () Bool)

(assert (=> b!565001 (= e!325311 e!325313)))

(declare-fun res!356207 () Bool)

(assert (=> b!565001 (= res!356207 (and (is-Intermediate!5486 lt!257765) (not (undefined!6298 lt!257765)) (bvslt (x!53064 lt!257765) #b01111111111111111111111111111110) (bvsge (x!53064 lt!257765) #b00000000000000000000000000000000) (bvsge (x!53064 lt!257765) #b00000000000000000000000000000000)))))

(assert (=> b!565001 (=> (not res!356207) (not e!325313))))

(declare-fun b!565002 () Bool)

(declare-fun e!325314 () SeekEntryResult!5486)

(assert (=> b!565002 (= e!325314 (Intermediate!5486 false (toIndex!0 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun d!83899 () Bool)

(assert (=> d!83899 e!325311))

(declare-fun c!64744 () Bool)

(assert (=> d!83899 (= c!64744 (and (is-Intermediate!5486 lt!257765) (undefined!6298 lt!257765)))))

(declare-fun e!325312 () SeekEntryResult!5486)

(assert (=> d!83899 (= lt!257765 e!325312)))

(declare-fun c!64745 () Bool)

(assert (=> d!83899 (= c!64745 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!257764 () (_ BitVec 64))

(assert (=> d!83899 (= lt!257764 (select (arr!17030 (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118))) (toIndex!0 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) mask!3119)))))

(assert (=> d!83899 (validMask!0 mask!3119)))

(assert (=> d!83899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118)) mask!3119) lt!257765)))

(declare-fun b!565003 () Bool)

(assert (=> b!565003 (= e!325312 e!325314)))

(declare-fun c!64743 () Bool)

(assert (=> b!565003 (= c!64743 (or (= lt!257764 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!257764 lt!257764) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!565004 () Bool)

(assert (=> b!565004 (= e!325312 (Intermediate!5486 true (toIndex!0 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565005 () Bool)

(assert (=> b!565005 (= e!325314 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118)) mask!3119))))

(declare-fun b!565006 () Bool)

(assert (=> b!565006 (= e!325311 (bvsge (x!53064 lt!257765) #b01111111111111111111111111111110))))

(declare-fun b!565007 () Bool)

(assert (=> b!565007 (and (bvsge (index!24173 lt!257765) #b00000000000000000000000000000000) (bvslt (index!24173 lt!257765) (size!17394 (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118)))))))

(declare-fun res!356208 () Bool)

(assert (=> b!565007 (= res!356208 (= (select (arr!17030 (array!35468 (store (arr!17030 a!3118) i!1132 k!1914) (size!17394 a!3118))) (index!24173 lt!257765)) (select (store (arr!17030 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!565007 (=> res!356208 e!325315)))

(assert (=> b!565007 (= e!325313 e!325315)))

(assert (= (and d!83899 c!64745) b!565004))

(assert (= (and d!83899 (not c!64745)) b!565003))

(assert (= (and b!565003 c!64743) b!565002))

(assert (= (and b!565003 (not c!64743)) b!565005))

(assert (= (and d!83899 c!64744) b!565006))

(assert (= (and d!83899 (not c!64744)) b!565001))

(assert (= (and b!565001 res!356207) b!565007))

(assert (= (and b!565007 (not res!356208)) b!565000))

(assert (= (and b!565000 (not res!356206)) b!564999))

(declare-fun m!543543 () Bool)

(assert (=> b!565007 m!543543))

(assert (=> b!565005 m!543445))

(declare-fun m!543545 () Bool)

(assert (=> b!565005 m!543545))

(assert (=> b!565005 m!543545))

(assert (=> b!565005 m!543443))

(declare-fun m!543547 () Bool)

(assert (=> b!565005 m!543547))

(assert (=> b!564999 m!543543))

(assert (=> b!565000 m!543543))

(assert (=> d!83899 m!543445))

(declare-fun m!543549 () Bool)

(assert (=> d!83899 m!543549))

(assert (=> d!83899 m!543433))

(assert (=> b!564859 d!83899))

(declare-fun d!83903 () Bool)

(declare-fun lt!257770 () (_ BitVec 32))

(declare-fun lt!257769 () (_ BitVec 32))

(assert (=> d!83903 (= lt!257770 (bvmul (bvxor lt!257769 (bvlshr lt!257769 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83903 (= lt!257769 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83903 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!356197 (let ((h!12163 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53066 (bvmul (bvxor h!12163 (bvlshr h!12163 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53066 (bvlshr x!53066 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!356197 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!356197 #b00000000000000000000000000000000))))))

(assert (=> d!83903 (= (toIndex!0 (select (store (arr!17030 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!257770 (bvlshr lt!257770 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!564859 d!83903))

(declare-fun b!565086 () Bool)

(declare-fun e!325367 () SeekEntryResult!5486)

(declare-fun e!325366 () SeekEntryResult!5486)

(assert (=> b!565086 (= e!325367 e!325366)))

(declare-fun lt!257797 () (_ BitVec 64))

(declare-fun lt!257795 () SeekEntryResult!5486)

(assert (=> b!565086 (= lt!257797 (select (arr!17030 a!3118) (index!24173 lt!257795)))))

(declare-fun c!64771 () Bool)

(assert (=> b!565086 (= c!64771 (= lt!257797 k!1914))))

(declare-fun b!565087 () Bool)

(assert (=> b!565087 (= e!325366 (Found!5486 (index!24173 lt!257795)))))

(declare-fun b!565088 () Bool)

(declare-fun e!325365 () SeekEntryResult!5486)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35467 (_ BitVec 32)) SeekEntryResult!5486)

(assert (=> b!565088 (= e!325365 (seekKeyOrZeroReturnVacant!0 (x!53064 lt!257795) (index!24173 lt!257795) (index!24173 lt!257795) k!1914 a!3118 mask!3119))))

(declare-fun b!565089 () Bool)

(assert (=> b!565089 (= e!325367 Undefined!5486)))

(declare-fun d!83905 () Bool)

(declare-fun lt!257796 () SeekEntryResult!5486)

(assert (=> d!83905 (and (or (is-Undefined!5486 lt!257796) (not (is-Found!5486 lt!257796)) (and (bvsge (index!24172 lt!257796) #b00000000000000000000000000000000) (bvslt (index!24172 lt!257796) (size!17394 a!3118)))) (or (is-Undefined!5486 lt!257796) (is-Found!5486 lt!257796) (not (is-MissingZero!5486 lt!257796)) (and (bvsge (index!24171 lt!257796) #b00000000000000000000000000000000) (bvslt (index!24171 lt!257796) (size!17394 a!3118)))) (or (is-Undefined!5486 lt!257796) (is-Found!5486 lt!257796) (is-MissingZero!5486 lt!257796) (not (is-MissingVacant!5486 lt!257796)) (and (bvsge (index!24174 lt!257796) #b00000000000000000000000000000000) (bvslt (index!24174 lt!257796) (size!17394 a!3118)))) (or (is-Undefined!5486 lt!257796) (ite (is-Found!5486 lt!257796) (= (select (arr!17030 a!3118) (index!24172 lt!257796)) k!1914) (ite (is-MissingZero!5486 lt!257796) (= (select (arr!17030 a!3118) (index!24171 lt!257796)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5486 lt!257796) (= (select (arr!17030 a!3118) (index!24174 lt!257796)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83905 (= lt!257796 e!325367)))

(declare-fun c!64772 () Bool)

(assert (=> d!83905 (= c!64772 (and (is-Intermediate!5486 lt!257795) (undefined!6298 lt!257795)))))

(assert (=> d!83905 (= lt!257795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83905 (validMask!0 mask!3119)))

(assert (=> d!83905 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!257796)))

(declare-fun b!565090 () Bool)

(assert (=> b!565090 (= e!325365 (MissingZero!5486 (index!24173 lt!257795)))))

(declare-fun b!565091 () Bool)

(declare-fun c!64770 () Bool)

(assert (=> b!565091 (= c!64770 (= lt!257797 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!565091 (= e!325366 e!325365)))

(assert (= (and d!83905 c!64772) b!565089))

(assert (= (and d!83905 (not c!64772)) b!565086))

(assert (= (and b!565086 c!64771) b!565087))

(assert (= (and b!565086 (not c!64771)) b!565091))

(assert (= (and b!565091 c!64770) b!565090))

(assert (= (and b!565091 (not c!64770)) b!565088))

(declare-fun m!543583 () Bool)

(assert (=> b!565086 m!543583))

(declare-fun m!543585 () Bool)

(assert (=> b!565088 m!543585))

(declare-fun m!543589 () Bool)

(assert (=> d!83905 m!543589))

(assert (=> d!83905 m!543433))

(declare-fun m!543591 () Bool)

(assert (=> d!83905 m!543591))

(declare-fun m!543593 () Bool)

(assert (=> d!83905 m!543593))

(assert (=> d!83905 m!543593))

(declare-fun m!543595 () Bool)

(assert (=> d!83905 m!543595))

(declare-fun m!543597 () Bool)

(assert (=> d!83905 m!543597))

(assert (=> b!564864 d!83905))

(declare-fun bm!32466 () Bool)

(declare-fun call!32469 () Bool)

(assert (=> bm!32466 (= call!32469 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!565118 () Bool)

(declare-fun e!325386 () Bool)

(declare-fun e!325388 () Bool)

(assert (=> b!565118 (= e!325386 e!325388)))

(declare-fun c!64779 () Bool)

(assert (=> b!565118 (= c!64779 (validKeyInArray!0 (select (arr!17030 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!565119 () Bool)

(declare-fun e!325387 () Bool)

(assert (=> b!565119 (= e!325387 call!32469)))

(declare-fun b!565120 () Bool)

(assert (=> b!565120 (= e!325388 e!325387)))

(declare-fun lt!257818 () (_ BitVec 64))

(assert (=> b!565120 (= lt!257818 (select (arr!17030 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!257817 () Unit!17674)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35467 (_ BitVec 64) (_ BitVec 32)) Unit!17674)

(assert (=> b!565120 (= lt!257817 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!257818 #b00000000000000000000000000000000))))

(assert (=> b!565120 (arrayContainsKey!0 a!3118 lt!257818 #b00000000000000000000000000000000)))

(declare-fun lt!257819 () Unit!17674)

(assert (=> b!565120 (= lt!257819 lt!257817)))

(declare-fun res!356254 () Bool)

(assert (=> b!565120 (= res!356254 (= (seekEntryOrOpen!0 (select (arr!17030 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5486 #b00000000000000000000000000000000)))))

(assert (=> b!565120 (=> (not res!356254) (not e!325387))))

(declare-fun b!565117 () Bool)

(assert (=> b!565117 (= e!325388 call!32469)))

(declare-fun d!83921 () Bool)

(declare-fun res!356255 () Bool)

(assert (=> d!83921 (=> res!356255 e!325386)))

(assert (=> d!83921 (= res!356255 (bvsge #b00000000000000000000000000000000 (size!17394 a!3118)))))

(assert (=> d!83921 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!325386)))

(assert (= (and d!83921 (not res!356255)) b!565118))

(assert (= (and b!565118 c!64779) b!565120))

(assert (= (and b!565118 (not c!64779)) b!565117))

(assert (= (and b!565120 res!356254) b!565119))

(assert (= (or b!565119 b!565117) bm!32466))

(declare-fun m!543615 () Bool)

(assert (=> bm!32466 m!543615))

(declare-fun m!543617 () Bool)

(assert (=> b!565118 m!543617))

(assert (=> b!565118 m!543617))

(declare-fun m!543619 () Bool)

(assert (=> b!565118 m!543619))

(assert (=> b!565120 m!543617))

(declare-fun m!543621 () Bool)

(assert (=> b!565120 m!543621))

(declare-fun m!543623 () Bool)

(assert (=> b!565120 m!543623))

(assert (=> b!565120 m!543617))

(declare-fun m!543625 () Bool)

(assert (=> b!565120 m!543625))

(assert (=> b!564866 d!83921))

(declare-fun d!83935 () Bool)

(declare-fun res!356264 () Bool)

(declare-fun e!325398 () Bool)

(assert (=> d!83935 (=> res!356264 e!325398)))

(assert (=> d!83935 (= res!356264 (= (select (arr!17030 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83935 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!325398)))

(declare-fun b!565131 () Bool)

(declare-fun e!325399 () Bool)

(assert (=> b!565131 (= e!325398 e!325399)))

(declare-fun res!356265 () Bool)

(assert (=> b!565131 (=> (not res!356265) (not e!325399))))

(assert (=> b!565131 (= res!356265 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17394 a!3118)))))

(declare-fun b!565132 () Bool)

(assert (=> b!565132 (= e!325399 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83935 (not res!356264)) b!565131))

(assert (= (and b!565131 res!356265) b!565132))

(assert (=> d!83935 m!543617))

(declare-fun m!543637 () Bool)

(assert (=> b!565132 m!543637))

(assert (=> b!564865 d!83935))

(declare-fun d!83941 () Bool)

(assert (=> d!83941 (= (validKeyInArray!0 (select (arr!17030 a!3118) j!142)) (and (not (= (select (arr!17030 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17030 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!564860 d!83941))

(declare-fun b!565133 () Bool)

(declare-fun e!325402 () SeekEntryResult!5486)

(declare-fun e!325401 () SeekEntryResult!5486)

(assert (=> b!565133 (= e!325402 e!325401)))

(declare-fun lt!257825 () (_ BitVec 64))

(declare-fun lt!257823 () SeekEntryResult!5486)

(assert (=> b!565133 (= lt!257825 (select (arr!17030 a!3118) (index!24173 lt!257823)))))

(declare-fun c!64782 () Bool)

(assert (=> b!565133 (= c!64782 (= lt!257825 (select (arr!17030 a!3118) j!142)))))

(declare-fun b!565134 () Bool)

(assert (=> b!565134 (= e!325401 (Found!5486 (index!24173 lt!257823)))))

(declare-fun b!565135 () Bool)

(declare-fun e!325400 () SeekEntryResult!5486)

(assert (=> b!565135 (= e!325400 (seekKeyOrZeroReturnVacant!0 (x!53064 lt!257823) (index!24173 lt!257823) (index!24173 lt!257823) (select (arr!17030 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!565136 () Bool)

(assert (=> b!565136 (= e!325402 Undefined!5486)))

(declare-fun d!83943 () Bool)

(declare-fun lt!257824 () SeekEntryResult!5486)

(assert (=> d!83943 (and (or (is-Undefined!5486 lt!257824) (not (is-Found!5486 lt!257824)) (and (bvsge (index!24172 lt!257824) #b00000000000000000000000000000000) (bvslt (index!24172 lt!257824) (size!17394 a!3118)))) (or (is-Undefined!5486 lt!257824) (is-Found!5486 lt!257824) (not (is-MissingZero!5486 lt!257824)) (and (bvsge (index!24171 lt!257824) #b00000000000000000000000000000000) (bvslt (index!24171 lt!257824) (size!17394 a!3118)))) (or (is-Undefined!5486 lt!257824) (is-Found!5486 lt!257824) (is-MissingZero!5486 lt!257824) (not (is-MissingVacant!5486 lt!257824)) (and (bvsge (index!24174 lt!257824) #b00000000000000000000000000000000) (bvslt (