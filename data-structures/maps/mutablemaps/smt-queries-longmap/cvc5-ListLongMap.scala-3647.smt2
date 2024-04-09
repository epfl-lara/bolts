; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50276 () Bool)

(assert start!50276)

(declare-fun b!550016 () Bool)

(declare-fun e!317512 () Bool)

(declare-fun e!317515 () Bool)

(assert (=> b!550016 (= e!317512 e!317515)))

(declare-fun res!343311 () Bool)

(assert (=> b!550016 (=> (not res!343311) (not e!317515))))

(declare-datatypes ((SeekEntryResult!5109 0))(
  ( (MissingZero!5109 (index!22663 (_ BitVec 32))) (Found!5109 (index!22664 (_ BitVec 32))) (Intermediate!5109 (undefined!5921 Bool) (index!22665 (_ BitVec 32)) (x!51618 (_ BitVec 32))) (Undefined!5109) (MissingVacant!5109 (index!22666 (_ BitVec 32))) )
))
(declare-fun lt!250397 () SeekEntryResult!5109)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!550016 (= res!343311 (or (= lt!250397 (MissingZero!5109 i!1132)) (= lt!250397 (MissingVacant!5109 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34683 0))(
  ( (array!34684 (arr!16653 (Array (_ BitVec 32) (_ BitVec 64))) (size!17017 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34683)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34683 (_ BitVec 32)) SeekEntryResult!5109)

(assert (=> b!550016 (= lt!250397 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550017 () Bool)

(declare-fun res!343315 () Bool)

(assert (=> b!550017 (=> (not res!343315) (not e!317515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34683 (_ BitVec 32)) Bool)

(assert (=> b!550017 (= res!343315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550018 () Bool)

(declare-fun res!343313 () Bool)

(assert (=> b!550018 (=> (not res!343313) (not e!317512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550018 (= res!343313 (validKeyInArray!0 k!1914))))

(declare-fun b!550019 () Bool)

(declare-fun res!343314 () Bool)

(assert (=> b!550019 (=> (not res!343314) (not e!317515))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34683 (_ BitVec 32)) SeekEntryResult!5109)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550019 (= res!343314 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119) (select (arr!16653 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118)) mask!3119)))))

(declare-fun b!550020 () Bool)

(declare-fun res!343317 () Bool)

(assert (=> b!550020 (=> (not res!343317) (not e!317512))))

(assert (=> b!550020 (= res!343317 (and (= (size!17017 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17017 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17017 a!3118)) (not (= i!1132 j!142))))))

(declare-fun e!317513 () Bool)

(declare-fun b!550021 () Bool)

(assert (=> b!550021 (= e!317513 (= (seekEntryOrOpen!0 (select (arr!16653 a!3118) j!142) a!3118 mask!3119) (Found!5109 j!142)))))

(declare-fun b!550022 () Bool)

(declare-fun res!343310 () Bool)

(assert (=> b!550022 (=> (not res!343310) (not e!317515))))

(declare-datatypes ((List!10786 0))(
  ( (Nil!10783) (Cons!10782 (h!11755 (_ BitVec 64)) (t!17022 List!10786)) )
))
(declare-fun arrayNoDuplicates!0 (array!34683 (_ BitVec 32) List!10786) Bool)

(assert (=> b!550022 (= res!343310 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10783))))

(declare-fun b!550023 () Bool)

(declare-fun res!343316 () Bool)

(assert (=> b!550023 (=> (not res!343316) (not e!317512))))

(assert (=> b!550023 (= res!343316 (validKeyInArray!0 (select (arr!16653 a!3118) j!142)))))

(declare-fun res!343318 () Bool)

(assert (=> start!50276 (=> (not res!343318) (not e!317512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50276 (= res!343318 (validMask!0 mask!3119))))

(assert (=> start!50276 e!317512))

(assert (=> start!50276 true))

(declare-fun array_inv!12427 (array!34683) Bool)

(assert (=> start!50276 (array_inv!12427 a!3118)))

(declare-fun b!550024 () Bool)

(assert (=> b!550024 (= e!317515 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvsle mask!3119 #b00111111111111111111111111111111))))))

(assert (=> b!550024 e!317513))

(declare-fun res!343312 () Bool)

(assert (=> b!550024 (=> (not res!343312) (not e!317513))))

(assert (=> b!550024 (= res!343312 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!16992 0))(
  ( (Unit!16993) )
))
(declare-fun lt!250396 () Unit!16992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16992)

(assert (=> b!550024 (= lt!250396 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550025 () Bool)

(declare-fun res!343319 () Bool)

(assert (=> b!550025 (=> (not res!343319) (not e!317512))))

(declare-fun arrayContainsKey!0 (array!34683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550025 (= res!343319 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50276 res!343318) b!550020))

(assert (= (and b!550020 res!343317) b!550023))

(assert (= (and b!550023 res!343316) b!550018))

(assert (= (and b!550018 res!343313) b!550025))

(assert (= (and b!550025 res!343319) b!550016))

(assert (= (and b!550016 res!343311) b!550017))

(assert (= (and b!550017 res!343315) b!550022))

(assert (= (and b!550022 res!343310) b!550019))

(assert (= (and b!550019 res!343314) b!550024))

(assert (= (and b!550024 res!343312) b!550021))

(declare-fun m!527089 () Bool)

(assert (=> b!550021 m!527089))

(assert (=> b!550021 m!527089))

(declare-fun m!527091 () Bool)

(assert (=> b!550021 m!527091))

(assert (=> b!550023 m!527089))

(assert (=> b!550023 m!527089))

(declare-fun m!527093 () Bool)

(assert (=> b!550023 m!527093))

(declare-fun m!527095 () Bool)

(assert (=> b!550016 m!527095))

(declare-fun m!527097 () Bool)

(assert (=> b!550018 m!527097))

(assert (=> b!550019 m!527089))

(declare-fun m!527099 () Bool)

(assert (=> b!550019 m!527099))

(assert (=> b!550019 m!527089))

(declare-fun m!527101 () Bool)

(assert (=> b!550019 m!527101))

(declare-fun m!527103 () Bool)

(assert (=> b!550019 m!527103))

(assert (=> b!550019 m!527101))

(declare-fun m!527105 () Bool)

(assert (=> b!550019 m!527105))

(assert (=> b!550019 m!527099))

(assert (=> b!550019 m!527089))

(declare-fun m!527107 () Bool)

(assert (=> b!550019 m!527107))

(declare-fun m!527109 () Bool)

(assert (=> b!550019 m!527109))

(assert (=> b!550019 m!527101))

(assert (=> b!550019 m!527103))

(declare-fun m!527111 () Bool)

(assert (=> b!550024 m!527111))

(declare-fun m!527113 () Bool)

(assert (=> b!550024 m!527113))

(declare-fun m!527115 () Bool)

(assert (=> b!550017 m!527115))

(declare-fun m!527117 () Bool)

(assert (=> b!550025 m!527117))

(declare-fun m!527119 () Bool)

(assert (=> start!50276 m!527119))

(declare-fun m!527121 () Bool)

(assert (=> start!50276 m!527121))

(declare-fun m!527123 () Bool)

(assert (=> b!550022 m!527123))

(push 1)

(assert (not b!550022))

(assert (not b!550019))

(assert (not b!550016))

(assert (not b!550017))

(assert (not b!550021))

(assert (not b!550024))

(assert (not b!550023))

(assert (not start!50276))

(assert (not b!550018))

(assert (not b!550025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82701 () Bool)

(assert (=> d!82701 (= (validKeyInArray!0 (select (arr!16653 a!3118) j!142)) (and (not (= (select (arr!16653 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16653 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550023 d!82701))

(declare-fun bm!32245 () Bool)

(declare-fun call!32248 () Bool)

(assert (=> bm!32245 (= call!32248 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550108 () Bool)

(declare-fun e!317559 () Bool)

(declare-fun e!317560 () Bool)

(assert (=> b!550108 (= e!317559 e!317560)))

(declare-fun lt!250422 () (_ BitVec 64))

(assert (=> b!550108 (= lt!250422 (select (arr!16653 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250423 () Unit!16992)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34683 (_ BitVec 64) (_ BitVec 32)) Unit!16992)

(assert (=> b!550108 (= lt!250423 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250422 #b00000000000000000000000000000000))))

(assert (=> b!550108 (arrayContainsKey!0 a!3118 lt!250422 #b00000000000000000000000000000000)))

(declare-fun lt!250424 () Unit!16992)

(assert (=> b!550108 (= lt!250424 lt!250423)))

(declare-fun res!343395 () Bool)

(assert (=> b!550108 (= res!343395 (= (seekEntryOrOpen!0 (select (arr!16653 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5109 #b00000000000000000000000000000000)))))

(assert (=> b!550108 (=> (not res!343395) (not e!317560))))

(declare-fun b!550109 () Bool)

(assert (=> b!550109 (= e!317559 call!32248)))

(declare-fun b!550110 () Bool)

(assert (=> b!550110 (= e!317560 call!32248)))

(declare-fun d!82705 () Bool)

(declare-fun res!343394 () Bool)

(declare-fun e!317558 () Bool)

(assert (=> d!82705 (=> res!343394 e!317558)))

(assert (=> d!82705 (= res!343394 (bvsge #b00000000000000000000000000000000 (size!17017 a!3118)))))

(assert (=> d!82705 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!317558)))

(declare-fun b!550111 () Bool)

(assert (=> b!550111 (= e!317558 e!317559)))

(declare-fun c!63688 () Bool)

(assert (=> b!550111 (= c!63688 (validKeyInArray!0 (select (arr!16653 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82705 (not res!343394)) b!550111))

(assert (= (and b!550111 c!63688) b!550108))

(assert (= (and b!550111 (not c!63688)) b!550109))

(assert (= (and b!550108 res!343395) b!550110))

(assert (= (or b!550110 b!550109) bm!32245))

(declare-fun m!527201 () Bool)

(assert (=> bm!32245 m!527201))

(declare-fun m!527203 () Bool)

(assert (=> b!550108 m!527203))

(declare-fun m!527205 () Bool)

(assert (=> b!550108 m!527205))

(declare-fun m!527207 () Bool)

(assert (=> b!550108 m!527207))

(assert (=> b!550108 m!527203))

(declare-fun m!527209 () Bool)

(assert (=> b!550108 m!527209))

(assert (=> b!550111 m!527203))

(assert (=> b!550111 m!527203))

(declare-fun m!527211 () Bool)

(assert (=> b!550111 m!527211))

(assert (=> b!550017 d!82705))

(declare-fun b!550126 () Bool)

(declare-fun e!317573 () Bool)

(declare-fun call!32252 () Bool)

(assert (=> b!550126 (= e!317573 call!32252)))

(declare-fun d!82715 () Bool)

(declare-fun res!343404 () Bool)

(declare-fun e!317574 () Bool)

(assert (=> d!82715 (=> res!343404 e!317574)))

(assert (=> d!82715 (= res!343404 (bvsge #b00000000000000000000000000000000 (size!17017 a!3118)))))

(assert (=> d!82715 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10783) e!317574)))

(declare-fun b!550127 () Bool)

(assert (=> b!550127 (= e!317573 call!32252)))

(declare-fun b!550128 () Bool)

(declare-fun e!317572 () Bool)

(assert (=> b!550128 (= e!317574 e!317572)))

(declare-fun res!343406 () Bool)

(assert (=> b!550128 (=> (not res!343406) (not e!317572))))

(declare-fun e!317575 () Bool)

(assert (=> b!550128 (= res!343406 (not e!317575))))

(declare-fun res!343405 () Bool)

(assert (=> b!550128 (=> (not res!343405) (not e!317575))))

(assert (=> b!550128 (= res!343405 (validKeyInArray!0 (select (arr!16653 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32249 () Bool)

(declare-fun c!63692 () Bool)

(assert (=> bm!32249 (= call!32252 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63692 (Cons!10782 (select (arr!16653 a!3118) #b00000000000000000000000000000000) Nil!10783) Nil!10783)))))

(declare-fun b!550129 () Bool)

(assert (=> b!550129 (= e!317572 e!317573)))

(assert (=> b!550129 (= c!63692 (validKeyInArray!0 (select (arr!16653 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550130 () Bool)

(declare-fun contains!2838 (List!10786 (_ BitVec 64)) Bool)

(assert (=> b!550130 (= e!317575 (contains!2838 Nil!10783 (select (arr!16653 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82715 (not res!343404)) b!550128))

(assert (= (and b!550128 res!343405) b!550130))

(assert (= (and b!550128 res!343406) b!550129))

(assert (= (and b!550129 c!63692) b!550126))

(assert (= (and b!550129 (not c!63692)) b!550127))

(assert (= (or b!550126 b!550127) bm!32249))

(assert (=> b!550128 m!527203))

(assert (=> b!550128 m!527203))

(assert (=> b!550128 m!527211))

(assert (=> bm!32249 m!527203))

(declare-fun m!527221 () Bool)

(assert (=> bm!32249 m!527221))

(assert (=> b!550129 m!527203))

(assert (=> b!550129 m!527203))

(assert (=> b!550129 m!527211))

(assert (=> b!550130 m!527203))

(assert (=> b!550130 m!527203))

(declare-fun m!527223 () Bool)

(assert (=> b!550130 m!527223))

(assert (=> b!550022 d!82715))

(declare-fun d!82721 () Bool)

(assert (=> d!82721 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50276 d!82721))

(declare-fun d!82727 () Bool)

(assert (=> d!82727 (= (array_inv!12427 a!3118) (bvsge (size!17017 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50276 d!82727))

(declare-fun b!550231 () Bool)

(declare-fun e!317639 () SeekEntryResult!5109)

(declare-fun lt!250466 () SeekEntryResult!5109)

(assert (=> b!550231 (= e!317639 (MissingZero!5109 (index!22665 lt!250466)))))

(declare-fun d!82729 () Bool)

(declare-fun lt!250465 () SeekEntryResult!5109)

(assert (=> d!82729 (and (or (is-Undefined!5109 lt!250465) (not (is-Found!5109 lt!250465)) (and (bvsge (index!22664 lt!250465) #b00000000000000000000000000000000) (bvslt (index!22664 lt!250465) (size!17017 a!3118)))) (or (is-Undefined!5109 lt!250465) (is-Found!5109 lt!250465) (not (is-MissingZero!5109 lt!250465)) (and (bvsge (index!22663 lt!250465) #b00000000000000000000000000000000) (bvslt (index!22663 lt!250465) (size!17017 a!3118)))) (or (is-Undefined!5109 lt!250465) (is-Found!5109 lt!250465) (is-MissingZero!5109 lt!250465) (not (is-MissingVacant!5109 lt!250465)) (and (bvsge (index!22666 lt!250465) #b00000000000000000000000000000000) (bvslt (index!22666 lt!250465) (size!17017 a!3118)))) (or (is-Undefined!5109 lt!250465) (ite (is-Found!5109 lt!250465) (= (select (arr!16653 a!3118) (index!22664 lt!250465)) k!1914) (ite (is-MissingZero!5109 lt!250465) (= (select (arr!16653 a!3118) (index!22663 lt!250465)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5109 lt!250465) (= (select (arr!16653 a!3118) (index!22666 lt!250465)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!317641 () SeekEntryResult!5109)

(assert (=> d!82729 (= lt!250465 e!317641)))

(declare-fun c!63732 () Bool)

(assert (=> d!82729 (= c!63732 (and (is-Intermediate!5109 lt!250466) (undefined!5921 lt!250466)))))

(assert (=> d!82729 (= lt!250466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82729 (validMask!0 mask!3119)))

(assert (=> d!82729 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!250465)))

(declare-fun b!550232 () Bool)

(declare-fun e!317640 () SeekEntryResult!5109)

(assert (=> b!550232 (= e!317640 (Found!5109 (index!22665 lt!250466)))))

(declare-fun b!550233 () Bool)

(assert (=> b!550233 (= e!317641 e!317640)))

(declare-fun lt!250464 () (_ BitVec 64))

(assert (=> b!550233 (= lt!250464 (select (arr!16653 a!3118) (index!22665 lt!250466)))))

(declare-fun c!63731 () Bool)

(assert (=> b!550233 (= c!63731 (= lt!250464 k!1914))))

(declare-fun b!550234 () Bool)

(assert (=> b!550234 (= e!317641 Undefined!5109)))

(declare-fun b!550235 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34683 (_ BitVec 32)) SeekEntryResult!5109)

(assert (=> b!550235 (= e!317639 (seekKeyOrZeroReturnVacant!0 (x!51618 lt!250466) (index!22665 lt!250466) (index!22665 lt!250466) k!1914 a!3118 mask!3119))))

(declare-fun b!550236 () Bool)

(declare-fun c!63730 () Bool)

(assert (=> b!550236 (= c!63730 (= lt!250464 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550236 (= e!317640 e!317639)))

(assert (= (and d!82729 c!63732) b!550234))

(assert (= (and d!82729 (not c!63732)) b!550233))

(assert (= (and b!550233 c!63731) b!550232))

(assert (= (and b!550233 (not c!63731)) b!550236))

(assert (= (and b!550236 c!63730) b!550231))

(assert (= (and b!550236 (not c!63730)) b!550235))

(declare-fun m!527297 () Bool)

(assert (=> d!82729 m!527297))

(declare-fun m!527299 () Bool)

(assert (=> d!82729 m!527299))

(assert (=> d!82729 m!527297))

(declare-fun m!527301 () Bool)

(assert (=> d!82729 m!527301))

(declare-fun m!527303 () Bool)

(assert (=> d!82729 m!527303))

(assert (=> d!82729 m!527119))

(declare-fun m!527305 () Bool)

(assert (=> d!82729 m!527305))

(declare-fun m!527307 () Bool)

(assert (=> b!550233 m!527307))

(declare-fun m!527309 () Bool)

(assert (=> b!550235 m!527309))

(assert (=> b!550016 d!82729))

(declare-fun b!550237 () Bool)

(declare-fun e!317642 () SeekEntryResult!5109)

(declare-fun lt!250469 () SeekEntryResult!5109)

(assert (=> b!550237 (= e!317642 (MissingZero!5109 (index!22665 lt!250469)))))

(declare-fun d!82747 () Bool)

(declare-fun lt!250468 () SeekEntryResult!5109)

(assert (=> d!82747 (and (or (is-Undefined!5109 lt!250468) (not (is-Found!5109 lt!250468)) (and (bvsge (index!22664 lt!250468) #b00000000000000000000000000000000) (bvslt (index!22664 lt!250468) (size!17017 a!3118)))) (or (is-Undefined!5109 lt!250468) (is-Found!5109 lt!250468) (not (is-MissingZero!5109 lt!250468)) (and (bvsge (index!22663 lt!250468) #b00000000000000000000000000000000) (bvslt (index!22663 lt!250468) (size!17017 a!3118)))) (or (is-Undefined!5109 lt!250468) (is-Found!5109 lt!250468) (is-MissingZero!5109 lt!250468) (not (is-MissingVacant!5109 lt!250468)) (and (bvsge (index!22666 lt!250468) #b00000000000000000000000000000000) (bvslt (index!22666 lt!250468) (size!17017 a!3118)))) (or (is-Undefined!5109 lt!250468) (ite (is-Found!5109 lt!250468) (= (select (arr!16653 a!3118) (index!22664 lt!250468)) (select (arr!16653 a!3118) j!142)) (ite (is-MissingZero!5109 lt!250468) (= (select (arr!16653 a!3118) (index!22663 lt!250468)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5109 lt!250468) (= (select (arr!16653 a!3118) (index!22666 lt!250468)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!317644 () SeekEntryResult!5109)

(assert (=> d!82747 (= lt!250468 e!317644)))

(declare-fun c!63735 () Bool)

(assert (=> d!82747 (= c!63735 (and (is-Intermediate!5109 lt!250469) (undefined!5921 lt!250469)))))

(assert (=> d!82747 (= lt!250469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119) (select (arr!16653 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82747 (validMask!0 mask!3119)))

(assert (=> d!82747 (= (seekEntryOrOpen!0 (select (arr!16653 a!3118) j!142) a!3118 mask!3119) lt!250468)))

(declare-fun b!550238 () Bool)

(declare-fun e!317643 () SeekEntryResult!5109)

(assert (=> b!550238 (= e!317643 (Found!5109 (index!22665 lt!250469)))))

(declare-fun b!550239 () Bool)

(assert (=> b!550239 (= e!317644 e!317643)))

(declare-fun lt!250467 () (_ BitVec 64))

(assert (=> b!550239 (= lt!250467 (select (arr!16653 a!3118) (index!22665 lt!250469)))))

(declare-fun c!63734 () Bool)

(assert (=> b!550239 (= c!63734 (= lt!250467 (select (arr!16653 a!3118) j!142)))))

(declare-fun b!550240 () Bool)

(assert (=> b!550240 (= e!317644 Undefined!5109)))

(declare-fun b!550241 () Bool)

(assert (=> b!550241 (= e!317642 (seekKeyOrZeroReturnVacant!0 (x!51618 lt!250469) (index!22665 lt!250469) (index!22665 lt!250469) (select (arr!16653 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!550242 () Bool)

(declare-fun c!63733 () Bool)

(assert (=> b!550242 (= c!63733 (= lt!250467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550242 (= e!317643 e!317642)))

(assert (= (and d!82747 c!63735) b!550240))

(assert (= (and d!82747 (not c!63735)) b!550239))

(assert (= (and b!550239 c!63734) b!550238))

(assert (= (and b!550239 (not c!63734)) b!550242))

(assert (= (and b!550242 c!63733) b!550237))

(assert (= (and b!550242 (not c!63733)) b!550241))

(assert (=> d!82747 m!527099))

(assert (=> d!82747 m!527089))

(assert (=> d!82747 m!527107))

(assert (=> d!82747 m!527089))

(assert (=> d!82747 m!527099))

(declare-fun m!527311 () Bool)

(assert (=> d!82747 m!527311))

(declare-fun m!527313 () Bool)

(assert (=> d!82747 m!527313))

(assert (=> d!82747 m!527119))

(declare-fun m!527315 () Bool)

(assert (=> d!82747 m!527315))

(declare-fun m!527317 () Bool)

(assert (=> b!550239 m!527317))

(assert (=> b!550241 m!527089))

(declare-fun m!527319 () Bool)

(assert (=> b!550241 m!527319))

(assert (=> b!550021 d!82747))

(declare-fun d!82749 () Bool)

(declare-fun res!343437 () Bool)

(declare-fun e!317649 () Bool)

(assert (=> d!82749 (=> res!343437 e!317649)))

(assert (=> d!82749 (= res!343437 (= (select (arr!16653 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82749 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!317649)))

(declare-fun b!550247 () Bool)

(declare-fun e!317650 () Bool)

(assert (=> b!550247 (= e!317649 e!317650)))

(declare-fun res!343438 () Bool)

(assert (=> b!550247 (=> (not res!343438) (not e!317650))))

(assert (=> b!550247 (= res!343438 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17017 a!3118)))))

(declare-fun b!550248 () Bool)

(assert (=> b!550248 (= e!317650 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82749 (not res!343437)) b!550247))

(assert (= (and b!550247 res!343438) b!550248))

(assert (=> d!82749 m!527203))

(declare-fun m!527321 () Bool)

(assert (=> b!550248 m!527321))

(assert (=> b!550025 d!82749))

(declare-fun b!550330 () Bool)

(declare-fun e!317698 () SeekEntryResult!5109)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550330 (= e!317698 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!16653 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!82751 () Bool)

(declare-fun e!317696 () Bool)

(assert (=> d!82751 e!317696))

(declare-fun c!63763 () Bool)

(declare-fun lt!250501 () SeekEntryResult!5109)

(assert (=> d!82751 (= c!63763 (and (is-Intermediate!5109 lt!250501) (undefined!5921 lt!250501)))))

(declare-fun e!317699 () SeekEntryResult!5109)

(assert (=> d!82751 (= lt!250501 e!317699)))

(declare-fun c!63764 () Bool)

(assert (=> d!82751 (= c!63764 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250500 () (_ BitVec 64))

(assert (=> d!82751 (= lt!250500 (select (arr!16653 a!3118) (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119)))))

(assert (=> d!82751 (validMask!0 mask!3119)))

(assert (=> d!82751 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119) (select (arr!16653 a!3118) j!142) a!3118 mask!3119) lt!250501)))

(declare-fun b!550331 () Bool)

(assert (=> b!550331 (= e!317698 (Intermediate!5109 false (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550332 () Bool)

(assert (=> b!550332 (and (bvsge (index!22665 lt!250501) #b00000000000000000000000000000000) (bvslt (index!22665 lt!250501) (size!17017 a!3118)))))

(declare-fun e!317697 () Bool)

(assert (=> b!550332 (= e!317697 (= (select (arr!16653 a!3118) (index!22665 lt!250501)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550333 () Bool)

(assert (=> b!550333 (= e!317699 (Intermediate!5109 true (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550334 () Bool)

(assert (=> b!550334 (and (bvsge (index!22665 lt!250501) #b00000000000000000000000000000000) (bvslt (index!22665 lt!250501) (size!17017 a!3118)))))

(declare-fun res!343469 () Bool)

(assert (=> b!550334 (= res!343469 (= (select (arr!16653 a!3118) (index!22665 lt!250501)) (select (arr!16653 a!3118) j!142)))))

(assert (=> b!550334 (=> res!343469 e!317697)))

(declare-fun e!317700 () Bool)

(assert (=> b!550334 (= e!317700 e!317697)))

(declare-fun b!550335 () Bool)

(assert (=> b!550335 (and (bvsge (index!22665 lt!250501) #b00000000000000000000000000000000) (bvslt (index!22665 lt!250501) (size!17017 a!3118)))))

(declare-fun res!343470 () Bool)

(assert (=> b!550335 (= res!343470 (= (select (arr!16653 a!3118) (index!22665 lt!250501)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550335 (=> res!343470 e!317697)))

(declare-fun b!550336 () Bool)

(assert (=> b!550336 (= e!317696 e!317700)))

(declare-fun res!343468 () Bool)

(assert (=> b!550336 (= res!343468 (and (is-Intermediate!5109 lt!250501) (not (undefined!5921 lt!250501)) (bvslt (x!51618 lt!250501) #b01111111111111111111111111111110) (bvsge (x!51618 lt!250501) #b00000000000000000000000000000000) (bvsge (x!51618 lt!250501) #b00000000000000000000000000000000)))))

(assert (=> b!550336 (=> (not res!343468) (not e!317700))))

(declare-fun b!550337 () Bool)

(assert (=> b!550337 (= e!317699 e!317698)))

(declare-fun c!63765 () Bool)

(assert (=> b!550337 (= c!63765 (or (= lt!250500 (select (arr!16653 a!3118) j!142)) (= (bvadd lt!250500 lt!250500) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!550338 () Bool)

(assert (=> b!550338 (= e!317696 (bvsge (x!51618 lt!250501) #b01111111111111111111111111111110))))

(assert (= (and d!82751 c!63764) b!550333))

(assert (= (and d!82751 (not c!63764)) b!550337))

(assert (= (and b!550337 c!63765) b!550331))

(assert (= (and b!550337 (not c!63765)) b!550330))

(assert (= (and d!82751 c!63763) b!550338))

(assert (= (and d!82751 (not c!63763)) b!550336))

(assert (= (and b!550336 res!343468) b!550334))

(assert (= (and b!550334 (not res!343469)) b!550335))

(assert (= (and b!550335 (not res!343470)) b!550332))

(declare-fun m!527347 () Bool)

(assert (=> b!550335 m!527347))

(assert (=> b!550334 m!527347))

(assert (=> b!550330 m!527099))

(declare-fun m!527349 () Bool)

(assert (=> b!550330 m!527349))

(assert (=> b!550330 m!527349))

(assert (=> b!550330 m!527089))

(declare-fun m!527351 () Bool)

(assert (=> b!550330 m!527351))

(assert (=> d!82751 m!527099))

(declare-fun m!527353 () Bool)

(assert (=> d!82751 m!527353))

(assert (=> d!82751 m!527119))

(assert (=> b!550332 m!527347))

(assert (=> b!550019 d!82751))

(declare-fun d!82765 () Bool)

(declare-fun lt!250522 () (_ BitVec 32))

(declare-fun lt!250521 () (_ BitVec 32))

(assert (=> d!82765 (= lt!250522 (bvmul (bvxor lt!250521 (bvlshr lt!250521 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82765 (= lt!250521 ((_ extract 31 0) (bvand (bvxor (select (arr!16653 a!3118) j!142) (bvlshr (select (arr!16653 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82765 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343474 (let ((h!11760 ((_ extract 31 0) (bvand (bvxor (select (arr!16653 a!3118) j!142) (bvlshr (select (arr!16653 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51626 (bvmul (bvxor h!11760 (bvlshr h!11760 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51626 (bvlshr x!51626 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343474 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343474 #b00000000000000000000000000000000))))))

(assert (=> d!82765 (= (toIndex!0 (select (arr!16653 a!3118) j!142) mask!3119) (bvand (bvxor lt!250522 (bvlshr lt!250522 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550019 d!82765))

(declare-fun e!317717 () SeekEntryResult!5109)

(declare-fun b!550360 () Bool)

(assert (=> b!550360 (= e!317717 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118)) mask!3119))))

(declare-fun d!82769 () Bool)

(declare-fun e!317715 () Bool)

(assert (=> d!82769 e!317715))

(declare-fun c!63772 () Bool)

(declare-fun lt!250524 () SeekEntryResult!5109)

(assert (=> d!82769 (= c!63772 (and (is-Intermediate!5109 lt!250524) (undefined!5921 lt!250524)))))

(declare-fun e!317718 () SeekEntryResult!5109)

(assert (=> d!82769 (= lt!250524 e!317718)))

(declare-fun c!63773 () Bool)

(assert (=> d!82769 (= c!63773 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250523 () (_ BitVec 64))

(assert (=> d!82769 (= lt!250523 (select (arr!16653 (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118))) (toIndex!0 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) mask!3119)))))

(assert (=> d!82769 (validMask!0 mask!3119)))

(assert (=> d!82769 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118)) mask!3119) lt!250524)))

(declare-fun b!550361 () Bool)

(assert (=> b!550361 (= e!317717 (Intermediate!5109 false (toIndex!0 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550362 () Bool)

(assert (=> b!550362 (and (bvsge (index!22665 lt!250524) #b00000000000000000000000000000000) (bvslt (index!22665 lt!250524) (size!17017 (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118)))))))

(declare-fun e!317716 () Bool)

(assert (=> b!550362 (= e!317716 (= (select (arr!16653 (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118))) (index!22665 lt!250524)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550363 () Bool)

(assert (=> b!550363 (= e!317718 (Intermediate!5109 true (toIndex!0 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550364 () Bool)

(assert (=> b!550364 (and (bvsge (index!22665 lt!250524) #b00000000000000000000000000000000) (bvslt (index!22665 lt!250524) (size!17017 (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118)))))))

(declare-fun res!343482 () Bool)

(assert (=> b!550364 (= res!343482 (= (select (arr!16653 (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118))) (index!22665 lt!250524)) (select (store (arr!16653 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!550364 (=> res!343482 e!317716)))

(declare-fun e!317719 () Bool)

(assert (=> b!550364 (= e!317719 e!317716)))

(declare-fun b!550365 () Bool)

(assert (=> b!550365 (and (bvsge (index!22665 lt!250524) #b00000000000000000000000000000000) (bvslt (index!22665 lt!250524) (size!17017 (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118)))))))

(declare-fun res!343483 () Bool)

(assert (=> b!550365 (= res!343483 (= (select (arr!16653 (array!34684 (store (arr!16653 a!3118) i!1132 k!1914) (size!17017 a!3118))) (index!22665 lt!250524)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550365 (=> res!343483 e!317716)))

(declare-fun b!550366 () Bool)

(assert (=> b!550366 (= e!317715 e!317719)))

(declare-fun res!343481 () Bool)

(assert (=> b!550366 (= res!343481 (and (is-Intermediate!5109 lt!250524) (not (undefined!5921 lt!250524)) (bvslt (x!51618 lt!250524) #b01111111111111111111111111111110) (bvsge (x!51618 lt!250524) #b00000000000000000000000000000000) (bvsge (x!51618 lt!250524) #b00000000000000000000000000000000)))))

(assert (=> b!550366 (=> (not res!343481) (not e!317719))))

(declare-fun b!550367 () Bool)

(assert (=> b!550367 (= e!317718 e!317717)))

(declare-fun c!63774 () Bool)

(assert (=> b!550367 (= c!63774 (or (= lt!250523 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!250523 lt!250523) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!550368 () Bool)

(assert (=> b!550368 (= e!317715 (bvsge (x!51618 lt!250524) #b01111111111111111111111111111110))))

(assert (= (and d!82769 c!63773) b!550363))

(assert (= (and d!82769 (not c!63773)) b!550367))

(assert (= (and b!550367 c!63774) b!550361))

(assert (= (and b!550367 (not c!63774)) b!550360))

(assert (= (and d!82769 c!63772) b!550368))

(assert (= (and d!82769 (not c!63772)) b!550366))

(assert (= (and b!550366 res!343481) b!550364))

(assert (= (and b!550364 (not res!343482)) b!550365))

(assert (= (and b!550365 (not res!343483)) b!550362))

(declare-fun m!527371 () Bool)

(assert (=> b!550365 m!527371))

(assert (=> b!550364 m!527371))

(assert (=> b!550360 m!527103))

(declare-fun m!527373 () Bool)

(assert (=> b!550360 m!527373))

(assert (=> b!550360 m!527373))

(assert (=> b!550360 m!527101))

(declare-fun m!527375 () Bool)

(assert (=> b!550360 m!527375))

(assert (=> d!82769 m!527103))

(declare-fun m!527377 () Bool)

(assert (=> d!82769 m!527377))

(assert (=> d!82769 m!527119))

(assert (=> b!550362 m!527371))

(assert (=> b!550019 d!82769))

(declare-fun d!82773 () Bool)

(declare-fun lt!250526 () (_ BitVec 32))

(declare-fun lt!250525 () (_ BitVec 32))

(assert (=> d!82773 (= lt!250526 (bvmul (bvxor lt!250525 (bvlshr lt!250525 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82773 (= lt!250525 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82773 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343474 (let ((h!11760 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51626 (bvmul (bvxor h!11760 (bvlshr h!11760 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51626 (bvlshr x!51626 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343474 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343474 #b00000000000000000000000000000000))))))

(assert (=> d!82773 (= (toIndex!0 (select (store (arr!16653 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!250526 (bvlshr lt!250526 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550019 d!82773))

(declare-fun call!32263 () Bool)

(declare-fun bm!32260 () Bool)

(assert (=> bm!32260 (= call!32263 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550369 () Bool)

(declare-fun e!317721 () Bool)

(declare-fun e!317722 () Bool)

(assert (=> b!550369 (= e!317721 e!317722)))

(declare-fun lt!250527 () (_ BitVec 64))

(assert (=> b!550369 (= lt!250527 (select (arr!16653 a!3118) j!142))))

(declare-fun lt!250528 () Unit!16992)

(assert (=> b!550369 (= lt!250528 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250527 j!142))))

(assert (=> b!550369 (arrayContainsKey!0 a!3118 lt!250527 #b00000000000000000000000000000000)))

(declare-fun lt!250529 () Unit!16992)

(assert (=> b!550369 (= lt!250529 lt!250528)))

(declare-fun res!343485 () Bool)

(assert (=> b!550369 (= res!343485 (= (seekEntryOrOpen!0 (select (arr!16653 a!3118) j!142) a!3118 mask!3119) (Found!5109 j!142)))))

(assert (=> b!550369 (=> (not res!343485) (not e!317722))))

(declare-fun b!550370 () Bool)

(assert (=> b!550370 (= e!317721 call!32263)))

(declare-fun b!550371 () Bool)

(assert (=> b!550371 (= e!317722 call!32263)))

(declare-fun d!82775 () Bool)

(declare-fun res!343484 () Bool)

(declare-fun e!317720 () Bool)

(assert (=> d!82775 (=> res!343484 e!317720)))

(assert (=> d!82775 (= res!343484 (bvsge j!142 (size!17017 a!3118)))))

(assert (=> d!82775 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!317720)))

(declare-fun b!550372 () Bool)

(assert (=> b!550372 (= e!317720 e!317721)))

(declare-fun c!63775 () Bool)

(assert (=> b!550372 (= c!63775 (validKeyInArray!0 (select (arr!16653 a!3118) j!142)))))

(assert (= (and d!82775 (not res!343484)) b!550372))

(assert (= (and b!550372 c!63775) b!550369))

(assert (= (and b!550372 (not c!63775)) b!550370))

(assert (= (and b!550369 res!343485) b!550371))

(assert (= (or b!550371 b!550370) bm!32260))

(declare-fun m!527379 () Bool)

(assert (=> bm!32260 m!527379))

(assert (=> b!550369 m!527089))

(declare-fun m!527381 () Bool)

(assert (=> b!550369 m!527381))

(declare-fun m!527383 () Bool)

(assert (=> b!550369 m!527383))

(assert (=> b!550369 m!527089))

(assert (=> b!550369 m!527091))

(assert (=> b!550372 m!527089))

(assert (=> b!550372 m!527089))

(assert (=> b!550372 m!527093))

(assert (=> b!550024 d!82775))

(declare-fun d!82777 () Bool)

(assert (=> d!82777 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!250532 () Unit!16992)

(declare-fun choose!38 (array!34683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16992)

(assert (=> d!82777 (= lt!250532 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!82777 (validMask!0 mask!3119)))

(assert (=> d!82777 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!250532)))

(declare-fun bs!17149 () Bool)

(assert (= bs!17149 d!82777))

(assert (=> bs!17149 m!527111))

(declare-fun m!527385 () Bool)

(assert (=> bs!17149 m!527385))

(assert (=> bs!17149 m!527119))

(assert (=> b!550024 d!82777))

(declare-fun d!82779 () Bool)

(assert (=> d!82779 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550018 d!82779))

(push 1)

