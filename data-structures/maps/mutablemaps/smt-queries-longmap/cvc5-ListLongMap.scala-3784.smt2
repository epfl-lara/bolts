; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51776 () Bool)

(assert start!51776)

(declare-fun b!566168 () Bool)

(declare-fun res!357293 () Bool)

(declare-fun e!325824 () Bool)

(assert (=> b!566168 (=> (not res!357293) (not e!325824))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566168 (= res!357293 (validKeyInArray!0 k!1914))))

(declare-fun b!566169 () Bool)

(declare-fun e!325826 () Bool)

(assert (=> b!566169 (= e!325824 e!325826)))

(declare-fun res!357287 () Bool)

(assert (=> b!566169 (=> (not res!357287) (not e!325826))))

(declare-datatypes ((SeekEntryResult!5520 0))(
  ( (MissingZero!5520 (index!24307 (_ BitVec 32))) (Found!5520 (index!24308 (_ BitVec 32))) (Intermediate!5520 (undefined!6332 Bool) (index!24309 (_ BitVec 32)) (x!53200 (_ BitVec 32))) (Undefined!5520) (MissingVacant!5520 (index!24310 (_ BitVec 32))) )
))
(declare-fun lt!258049 () SeekEntryResult!5520)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566169 (= res!357287 (or (= lt!258049 (MissingZero!5520 i!1132)) (= lt!258049 (MissingVacant!5520 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35538 0))(
  ( (array!35539 (arr!17064 (Array (_ BitVec 32) (_ BitVec 64))) (size!17428 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35538)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35538 (_ BitVec 32)) SeekEntryResult!5520)

(assert (=> b!566169 (= lt!258049 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!566170 () Bool)

(declare-fun res!357291 () Bool)

(assert (=> b!566170 (=> (not res!357291) (not e!325826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35538 (_ BitVec 32)) Bool)

(assert (=> b!566170 (= res!357291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566171 () Bool)

(declare-fun res!357289 () Bool)

(assert (=> b!566171 (=> (not res!357289) (not e!325826))))

(declare-datatypes ((List!11197 0))(
  ( (Nil!11194) (Cons!11193 (h!12199 (_ BitVec 64)) (t!17433 List!11197)) )
))
(declare-fun arrayNoDuplicates!0 (array!35538 (_ BitVec 32) List!11197) Bool)

(assert (=> b!566171 (= res!357289 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11194))))

(declare-fun b!566172 () Bool)

(declare-fun e!325828 () Bool)

(assert (=> b!566172 (= e!325826 e!325828)))

(declare-fun res!357292 () Bool)

(assert (=> b!566172 (=> (not res!357292) (not e!325828))))

(declare-fun lt!258053 () array!35538)

(declare-fun lt!258047 () SeekEntryResult!5520)

(declare-fun lt!258048 () (_ BitVec 32))

(declare-fun lt!258046 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35538 (_ BitVec 32)) SeekEntryResult!5520)

(assert (=> b!566172 (= res!357292 (= lt!258047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258048 lt!258046 lt!258053 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!258051 () (_ BitVec 32))

(assert (=> b!566172 (= lt!258047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258051 (select (arr!17064 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566172 (= lt!258048 (toIndex!0 lt!258046 mask!3119))))

(assert (=> b!566172 (= lt!258046 (select (store (arr!17064 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!566172 (= lt!258051 (toIndex!0 (select (arr!17064 a!3118) j!142) mask!3119))))

(assert (=> b!566172 (= lt!258053 (array!35539 (store (arr!17064 a!3118) i!1132 k!1914) (size!17428 a!3118)))))

(declare-fun b!566173 () Bool)

(declare-fun res!357295 () Bool)

(assert (=> b!566173 (=> (not res!357295) (not e!325824))))

(assert (=> b!566173 (= res!357295 (and (= (size!17428 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17428 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17428 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!357290 () Bool)

(assert (=> start!51776 (=> (not res!357290) (not e!325824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51776 (= res!357290 (validMask!0 mask!3119))))

(assert (=> start!51776 e!325824))

(assert (=> start!51776 true))

(declare-fun array_inv!12838 (array!35538) Bool)

(assert (=> start!51776 (array_inv!12838 a!3118)))

(declare-fun b!566174 () Bool)

(declare-fun res!357296 () Bool)

(assert (=> b!566174 (=> (not res!357296) (not e!325824))))

(assert (=> b!566174 (= res!357296 (validKeyInArray!0 (select (arr!17064 a!3118) j!142)))))

(declare-fun b!566175 () Bool)

(declare-fun lt!258050 () SeekEntryResult!5520)

(declare-fun e!325827 () Bool)

(assert (=> b!566175 (= e!325827 (= lt!258050 (seekEntryOrOpen!0 lt!258046 lt!258053 mask!3119)))))

(declare-fun b!566176 () Bool)

(declare-fun res!357294 () Bool)

(assert (=> b!566176 (=> (not res!357294) (not e!325824))))

(declare-fun arrayContainsKey!0 (array!35538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566176 (= res!357294 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566177 () Bool)

(assert (=> b!566177 (= e!325828 (not e!325827))))

(declare-fun res!357288 () Bool)

(assert (=> b!566177 (=> res!357288 e!325827)))

(assert (=> b!566177 (= res!357288 (or (not (is-Intermediate!5520 lt!258047)) (not (undefined!6332 lt!258047))))))

(assert (=> b!566177 (= lt!258050 (Found!5520 j!142))))

(assert (=> b!566177 (= lt!258050 (seekEntryOrOpen!0 (select (arr!17064 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!566177 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17742 0))(
  ( (Unit!17743) )
))
(declare-fun lt!258052 () Unit!17742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17742)

(assert (=> b!566177 (= lt!258052 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51776 res!357290) b!566173))

(assert (= (and b!566173 res!357295) b!566174))

(assert (= (and b!566174 res!357296) b!566168))

(assert (= (and b!566168 res!357293) b!566176))

(assert (= (and b!566176 res!357294) b!566169))

(assert (= (and b!566169 res!357287) b!566170))

(assert (= (and b!566170 res!357291) b!566171))

(assert (= (and b!566171 res!357289) b!566172))

(assert (= (and b!566172 res!357292) b!566177))

(assert (= (and b!566177 (not res!357288)) b!566175))

(declare-fun m!544849 () Bool)

(assert (=> b!566171 m!544849))

(declare-fun m!544851 () Bool)

(assert (=> b!566175 m!544851))

(declare-fun m!544853 () Bool)

(assert (=> b!566174 m!544853))

(assert (=> b!566174 m!544853))

(declare-fun m!544855 () Bool)

(assert (=> b!566174 m!544855))

(assert (=> b!566172 m!544853))

(declare-fun m!544857 () Bool)

(assert (=> b!566172 m!544857))

(assert (=> b!566172 m!544853))

(assert (=> b!566172 m!544853))

(declare-fun m!544859 () Bool)

(assert (=> b!566172 m!544859))

(declare-fun m!544861 () Bool)

(assert (=> b!566172 m!544861))

(declare-fun m!544863 () Bool)

(assert (=> b!566172 m!544863))

(declare-fun m!544865 () Bool)

(assert (=> b!566172 m!544865))

(declare-fun m!544867 () Bool)

(assert (=> b!566172 m!544867))

(declare-fun m!544869 () Bool)

(assert (=> b!566170 m!544869))

(declare-fun m!544871 () Bool)

(assert (=> b!566168 m!544871))

(declare-fun m!544873 () Bool)

(assert (=> start!51776 m!544873))

(declare-fun m!544875 () Bool)

(assert (=> start!51776 m!544875))

(assert (=> b!566177 m!544853))

(assert (=> b!566177 m!544853))

(declare-fun m!544877 () Bool)

(assert (=> b!566177 m!544877))

(declare-fun m!544879 () Bool)

(assert (=> b!566177 m!544879))

(declare-fun m!544881 () Bool)

(assert (=> b!566177 m!544881))

(declare-fun m!544883 () Bool)

(assert (=> b!566176 m!544883))

(declare-fun m!544885 () Bool)

(assert (=> b!566169 m!544885))

(push 1)

(assert (not start!51776))

(assert (not b!566177))

(assert (not b!566171))

(assert (not b!566175))

(assert (not b!566174))

(assert (not b!566172))

(assert (not b!566170))

(assert (not b!566176))

(assert (not b!566168))

(assert (not b!566169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!566312 () Bool)

(declare-fun e!325902 () SeekEntryResult!5520)

(assert (=> b!566312 (= e!325902 Undefined!5520)))

(declare-fun b!566313 () Bool)

(declare-fun e!325904 () SeekEntryResult!5520)

(declare-fun lt!258142 () SeekEntryResult!5520)

(assert (=> b!566313 (= e!325904 (Found!5520 (index!24309 lt!258142)))))

(declare-fun b!566314 () Bool)

(assert (=> b!566314 (= e!325902 e!325904)))

(declare-fun lt!258143 () (_ BitVec 64))

(assert (=> b!566314 (= lt!258143 (select (arr!17064 a!3118) (index!24309 lt!258142)))))

(declare-fun c!64821 () Bool)

(assert (=> b!566314 (= c!64821 (= lt!258143 k!1914))))

(declare-fun b!566315 () Bool)

(declare-fun e!325903 () SeekEntryResult!5520)

(assert (=> b!566315 (= e!325903 (MissingZero!5520 (index!24309 lt!258142)))))

(declare-fun b!566316 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35538 (_ BitVec 32)) SeekEntryResult!5520)

(assert (=> b!566316 (= e!325903 (seekKeyOrZeroReturnVacant!0 (x!53200 lt!258142) (index!24309 lt!258142) (index!24309 lt!258142) k!1914 a!3118 mask!3119))))

(declare-fun d!83985 () Bool)

(declare-fun lt!258144 () SeekEntryResult!5520)

(assert (=> d!83985 (and (or (is-Undefined!5520 lt!258144) (not (is-Found!5520 lt!258144)) (and (bvsge (index!24308 lt!258144) #b00000000000000000000000000000000) (bvslt (index!24308 lt!258144) (size!17428 a!3118)))) (or (is-Undefined!5520 lt!258144) (is-Found!5520 lt!258144) (not (is-MissingZero!5520 lt!258144)) (and (bvsge (index!24307 lt!258144) #b00000000000000000000000000000000) (bvslt (index!24307 lt!258144) (size!17428 a!3118)))) (or (is-Undefined!5520 lt!258144) (is-Found!5520 lt!258144) (is-MissingZero!5520 lt!258144) (not (is-MissingVacant!5520 lt!258144)) (and (bvsge (index!24310 lt!258144) #b00000000000000000000000000000000) (bvslt (index!24310 lt!258144) (size!17428 a!3118)))) (or (is-Undefined!5520 lt!258144) (ite (is-Found!5520 lt!258144) (= (select (arr!17064 a!3118) (index!24308 lt!258144)) k!1914) (ite (is-MissingZero!5520 lt!258144) (= (select (arr!17064 a!3118) (index!24307 lt!258144)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5520 lt!258144) (= (select (arr!17064 a!3118) (index!24310 lt!258144)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83985 (= lt!258144 e!325902)))

(declare-fun c!64819 () Bool)

(assert (=> d!83985 (= c!64819 (and (is-Intermediate!5520 lt!258142) (undefined!6332 lt!258142)))))

(assert (=> d!83985 (= lt!258142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83985 (validMask!0 mask!3119)))

(assert (=> d!83985 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258144)))

(declare-fun b!566317 () Bool)

(declare-fun c!64820 () Bool)

(assert (=> b!566317 (= c!64820 (= lt!258143 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566317 (= e!325904 e!325903)))

(assert (= (and d!83985 c!64819) b!566312))

(assert (= (and d!83985 (not c!64819)) b!566314))

(assert (= (and b!566314 c!64821) b!566313))

(assert (= (and b!566314 (not c!64821)) b!566317))

(assert (= (and b!566317 c!64820) b!566315))

(assert (= (and b!566317 (not c!64820)) b!566316))

(declare-fun m!545021 () Bool)

(assert (=> b!566314 m!545021))

(declare-fun m!545023 () Bool)

(assert (=> b!566316 m!545023))

(declare-fun m!545025 () Bool)

(assert (=> d!83985 m!545025))

(declare-fun m!545027 () Bool)

(assert (=> d!83985 m!545027))

(declare-fun m!545029 () Bool)

(assert (=> d!83985 m!545029))

(declare-fun m!545031 () Bool)

(assert (=> d!83985 m!545031))

(assert (=> d!83985 m!545025))

(assert (=> d!83985 m!544873))

(declare-fun m!545033 () Bool)

(assert (=> d!83985 m!545033))

(assert (=> b!566169 d!83985))

(declare-fun d!84009 () Bool)

(assert (=> d!84009 (= (validKeyInArray!0 (select (arr!17064 a!3118) j!142)) (and (not (= (select (arr!17064 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17064 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566174 d!84009))

(declare-fun d!84011 () Bool)

(assert (=> d!84011 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51776 d!84011))

(declare-fun d!84025 () Bool)

(assert (=> d!84025 (= (array_inv!12838 a!3118) (bvsge (size!17428 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51776 d!84025))

(declare-fun d!84027 () Bool)

(declare-fun res!357403 () Bool)

(declare-fun e!325943 () Bool)

(assert (=> d!84027 (=> res!357403 e!325943)))

(assert (=> d!84027 (= res!357403 (= (select (arr!17064 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84027 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!325943)))

(declare-fun b!566369 () Bool)

(declare-fun e!325944 () Bool)

(assert (=> b!566369 (= e!325943 e!325944)))

(declare-fun res!357404 () Bool)

(assert (=> b!566369 (=> (not res!357404) (not e!325944))))

(assert (=> b!566369 (= res!357404 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17428 a!3118)))))

(declare-fun b!566370 () Bool)

(assert (=> b!566370 (= e!325944 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84027 (not res!357403)) b!566369))

(assert (= (and b!566369 res!357404) b!566370))

(declare-fun m!545061 () Bool)

(assert (=> d!84027 m!545061))

(declare-fun m!545063 () Bool)

(assert (=> b!566370 m!545063))

(assert (=> b!566176 d!84027))

(declare-fun b!566406 () Bool)

(declare-fun e!325969 () Bool)

(declare-fun call!32487 () Bool)

(assert (=> b!566406 (= e!325969 call!32487)))

(declare-fun b!566407 () Bool)

(declare-fun e!325971 () Bool)

(assert (=> b!566407 (= e!325971 e!325969)))

(declare-fun c!64842 () Bool)

(assert (=> b!566407 (= c!64842 (validKeyInArray!0 (select (arr!17064 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566408 () Bool)

(declare-fun e!325970 () Bool)

(assert (=> b!566408 (= e!325969 e!325970)))

(declare-fun lt!258168 () (_ BitVec 64))

(assert (=> b!566408 (= lt!258168 (select (arr!17064 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258169 () Unit!17742)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35538 (_ BitVec 64) (_ BitVec 32)) Unit!17742)

(assert (=> b!566408 (= lt!258169 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258168 #b00000000000000000000000000000000))))

(assert (=> b!566408 (arrayContainsKey!0 a!3118 lt!258168 #b00000000000000000000000000000000)))

(declare-fun lt!258167 () Unit!17742)

(assert (=> b!566408 (= lt!258167 lt!258169)))

(declare-fun res!357418 () Bool)

(assert (=> b!566408 (= res!357418 (= (seekEntryOrOpen!0 (select (arr!17064 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5520 #b00000000000000000000000000000000)))))

(assert (=> b!566408 (=> (not res!357418) (not e!325970))))

(declare-fun b!566409 () Bool)

(assert (=> b!566409 (= e!325970 call!32487)))

(declare-fun bm!32484 () Bool)

(assert (=> bm!32484 (= call!32487 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84031 () Bool)

(declare-fun res!357419 () Bool)

(assert (=> d!84031 (=> res!357419 e!325971)))

(assert (=> d!84031 (= res!357419 (bvsge #b00000000000000000000000000000000 (size!17428 a!3118)))))

(assert (=> d!84031 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!325971)))

(assert (= (and d!84031 (not res!357419)) b!566407))

(assert (= (and b!566407 c!64842) b!566408))

(assert (= (and b!566407 (not c!64842)) b!566406))

(assert (= (and b!566408 res!357418) b!566409))

(assert (= (or b!566409 b!566406) bm!32484))

(assert (=> b!566407 m!545061))

(assert (=> b!566407 m!545061))

(declare-fun m!545071 () Bool)

(assert (=> b!566407 m!545071))

(assert (=> b!566408 m!545061))

(declare-fun m!545073 () Bool)

(assert (=> b!566408 m!545073))

(declare-fun m!545075 () Bool)

(assert (=> b!566408 m!545075))

(assert (=> b!566408 m!545061))

(declare-fun m!545077 () Bool)

(assert (=> b!566408 m!545077))

(declare-fun m!545079 () Bool)

(assert (=> bm!32484 m!545079))

(assert (=> b!566170 d!84031))

(declare-fun b!566416 () Bool)

(declare-fun e!325976 () SeekEntryResult!5520)

(assert (=> b!566416 (= e!325976 Undefined!5520)))

(declare-fun b!566417 () Bool)

(declare-fun e!325978 () SeekEntryResult!5520)

(declare-fun lt!258170 () SeekEntryResult!5520)

(assert (=> b!566417 (= e!325978 (Found!5520 (index!24309 lt!258170)))))

(declare-fun b!566418 () Bool)

(assert (=> b!566418 (= e!325976 e!325978)))

(declare-fun lt!258171 () (_ BitVec 64))

(assert (=> b!566418 (= lt!258171 (select (arr!17064 lt!258053) (index!24309 lt!258170)))))

(declare-fun c!64845 () Bool)

(assert (=> b!566418 (= c!64845 (= lt!258171 lt!258046))))

(declare-fun b!566419 () Bool)

(declare-fun e!325977 () SeekEntryResult!5520)

(assert (=> b!566419 (= e!325977 (MissingZero!5520 (index!24309 lt!258170)))))

(declare-fun b!566420 () Bool)

(assert (=> b!566420 (= e!325977 (seekKeyOrZeroReturnVacant!0 (x!53200 lt!258170) (index!24309 lt!258170) (index!24309 lt!258170) lt!258046 lt!258053 mask!3119))))

(declare-fun d!84035 () Bool)

(declare-fun lt!258172 () SeekEntryResult!5520)

(assert (=> d!84035 (and (or (is-Undefined!5520 lt!258172) (not (is-Found!5520 lt!258172)) (and (bvsge (index!24308 lt!258172) #b00000000000000000000000000000000) (bvslt (index!24308 lt!258172) (size!17428 lt!258053)))) (or (is-Undefined!5520 lt!258172) (is-Found!5520 lt!258172) (not (is-MissingZero!5520 lt!258172)) (and (bvsge (index!24307 lt!258172) #b00000000000000000000000000000000) (bvslt (index!24307 lt!258172) (size!17428 lt!258053)))) (or (is-Undefined!5520 lt!258172) (is-Found!5520 lt!258172) (is-MissingZero!5520 lt!258172) (not (is-MissingVacant!5520 lt!258172)) (and (bvsge (index!24310 lt!258172) #b00000000000000000000000000000000) (bvslt (index!24310 lt!258172) (size!17428 lt!258053)))) (or (is-Undefined!5520 lt!258172) (ite (is-Found!5520 lt!258172) (= (select (arr!17064 lt!258053) (index!24308 lt!258172)) lt!258046) (ite (is-MissingZero!5520 lt!258172) (= (select (arr!17064 lt!258053) (index!24307 lt!258172)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5520 lt!258172) (= (select (arr!17064 lt!258053) (index!24310 lt!258172)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84035 (= lt!258172 e!325976)))

(declare-fun c!64843 () Bool)

(assert (=> d!84035 (= c!64843 (and (is-Intermediate!5520 lt!258170) (undefined!6332 lt!258170)))))

(assert (=> d!84035 (= lt!258170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!258046 mask!3119) lt!258046 lt!258053 mask!3119))))

(assert (=> d!84035 (validMask!0 mask!3119)))

(assert (=> d!84035 (= (seekEntryOrOpen!0 lt!258046 lt!258053 mask!3119) lt!258172)))

(declare-fun b!566421 () Bool)

(declare-fun c!64844 () Bool)

(assert (=> b!566421 (= c!64844 (= lt!258171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566421 (= e!325978 e!325977)))

(assert (= (and d!84035 c!64843) b!566416))

(assert (= (and d!84035 (not c!64843)) b!566418))

(assert (= (and b!566418 c!64845) b!566417))

(assert (= (and b!566418 (not c!64845)) b!566421))

(assert (= (and b!566421 c!64844) b!566419))

(assert (= (and b!566421 (not c!64844)) b!566420))

(declare-fun m!545081 () Bool)

(assert (=> b!566418 m!545081))

(declare-fun m!545083 () Bool)

(assert (=> b!566420 m!545083))

(assert (=> d!84035 m!544867))

(declare-fun m!545085 () Bool)

(assert (=> d!84035 m!545085))

(declare-fun m!545087 () Bool)

(assert (=> d!84035 m!545087))

(declare-fun m!545089 () Bool)

(assert (=> d!84035 m!545089))

(assert (=> d!84035 m!544867))

(assert (=> d!84035 m!544873))

(declare-fun m!545091 () Bool)

(assert (=> d!84035 m!545091))

(assert (=> b!566175 d!84035))

(declare-fun b!566476 () Bool)

(declare-fun e!326009 () SeekEntryResult!5520)

(assert (=> b!566476 (= e!326009 (Intermediate!5520 false lt!258048 #b00000000000000000000000000000000))))

(declare-fun b!566477 () Bool)

(declare-fun lt!258198 () SeekEntryResult!5520)

(assert (=> b!566477 (and (bvsge (index!24309 lt!258198) #b00000000000000000000000000000000) (bvslt (index!24309 lt!258198) (size!17428 lt!258053)))))

(declare-fun res!357439 () Bool)

(assert (=> b!566477 (= res!357439 (= (select (arr!17064 lt!258053) (index!24309 lt!258198)) lt!258046))))

(declare-fun e!326010 () Bool)

(assert (=> b!566477 (=> res!357439 e!326010)))

(declare-fun e!326012 () Bool)

(assert (=> b!566477 (= e!326012 e!326010)))

(declare-fun b!566478 () Bool)

(declare-fun e!326008 () SeekEntryResult!5520)

(assert (=> b!566478 (= e!326008 e!326009)))

(declare-fun c!64868 () Bool)

(declare-fun lt!258199 () (_ BitVec 64))

(assert (=> b!566478 (= c!64868 (or (= lt!258199 lt!258046) (= (bvadd lt!258199 lt!258199) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566479 () Bool)

(assert (=> b!566479 (and (bvsge (index!24309 lt!258198) #b00000000000000000000000000000000) (bvslt (index!24309 lt!258198) (size!17428 lt!258053)))))

(declare-fun res!357440 () Bool)

(assert (=> b!566479 (= res!357440 (= (select (arr!17064 lt!258053) (index!24309 lt!258198)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566479 (=> res!357440 e!326010)))

(declare-fun b!566480 () Bool)

(declare-fun e!326011 () Bool)

(assert (=> b!566480 (= e!326011 (bvsge (x!53200 lt!258198) #b01111111111111111111111111111110))))

(declare-fun b!566481 () Bool)

(assert (=> b!566481 (= e!326011 e!326012)))

(declare-fun res!357441 () Bool)

(assert (=> b!566481 (= res!357441 (and (is-Intermediate!5520 lt!258198) (not (undefined!6332 lt!258198)) (bvslt (x!53200 lt!258198) #b01111111111111111111111111111110) (bvsge (x!53200 lt!258198) #b00000000000000000000000000000000) (bvsge (x!53200 lt!258198) #b00000000000000000000000000000000)))))

(assert (=> b!566481 (=> (not res!357441) (not e!326012))))

(declare-fun b!566482 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566482 (= e!326009 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258048 #b00000000000000000000000000000000 mask!3119) lt!258046 lt!258053 mask!3119))))

(declare-fun d!84037 () Bool)

(assert (=> d!84037 e!326011))

(declare-fun c!64867 () Bool)

(assert (=> d!84037 (= c!64867 (and (is-Intermediate!5520 lt!258198) (undefined!6332 lt!258198)))))

(assert (=> d!84037 (= lt!258198 e!326008)))

(declare-fun c!64869 () Bool)

(assert (=> d!84037 (= c!64869 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84037 (= lt!258199 (select (arr!17064 lt!258053) lt!258048))))

(assert (=> d!84037 (validMask!0 mask!3119)))

(assert (=> d!84037 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258048 lt!258046 lt!258053 mask!3119) lt!258198)))

(declare-fun b!566483 () Bool)

(assert (=> b!566483 (= e!326008 (Intermediate!5520 true lt!258048 #b00000000000000000000000000000000))))

(declare-fun b!566484 () Bool)

(assert (=> b!566484 (and (bvsge (index!24309 lt!258198) #b00000000000000000000000000000000) (bvslt (index!24309 lt!258198) (size!17428 lt!258053)))))

(assert (=> b!566484 (= e!326010 (= (select (arr!17064 lt!258053) (index!24309 lt!258198)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84037 c!64869) b!566483))

(assert (= (and d!84037 (not c!64869)) b!566478))

(assert (= (and b!566478 c!64868) b!566476))

(assert (= (and b!566478 (not c!64868)) b!566482))

(assert (= (and d!84037 c!64867) b!566480))

(assert (= (and d!84037 (not c!64867)) b!566481))

(assert (= (and b!566481 res!357441) b!566477))

(assert (= (and b!566477 (not res!357439)) b!566479))

(assert (= (and b!566479 (not res!357440)) b!566484))

(declare-fun m!545121 () Bool)

(assert (=> b!566482 m!545121))

(assert (=> b!566482 m!545121))

(declare-fun m!545123 () Bool)

(assert (=> b!566482 m!545123))

(declare-fun m!545125 () Bool)

(assert (=> b!566477 m!545125))

(declare-fun m!545127 () Bool)

(assert (=> d!84037 m!545127))

(assert (=> d!84037 m!544873))

(assert (=> b!566479 m!545125))

(assert (=> b!566484 m!545125))

(assert (=> b!566172 d!84037))

(declare-fun b!566491 () Bool)

(declare-fun e!326018 () SeekEntryResult!5520)

(assert (=> b!566491 (= e!326018 (Intermediate!5520 false lt!258051 #b00000000000000000000000000000000))))

(declare-fun b!566492 () Bool)

(declare-fun lt!258206 () SeekEntryResult!5520)

(assert (=> b!566492 (and (bvsge (index!24309 lt!258206) #b00000000000000000000000000000000) (bvslt (index!24309 lt!258206) (size!17428 a!3118)))))

(declare-fun res!357444 () Bool)

(assert (=> b!566492 (= res!357444 (= (select (arr!17064 a!3118) (index!24309 lt!258206)) (select (arr!17064 a!3118) j!142)))))

(declare-fun e!326019 () Bool)

(assert (=> b!566492 (=> res!357444 e!326019)))

(declare-fun e!326021 () Bool)

(assert (=> b!566492 (= e!326021 e!326019)))

(declare-fun b!566493 () Bool)

(declare-fun e!326017 () SeekEntryResult!5520)

(assert (=> b!566493 (= e!326017 e!326018)))

(declare-fun c!64873 () Bool)

(declare-fun lt!258207 () (_ BitVec 64))

(assert (=> b!566493 (= c!64873 (or (= lt!258207 (select (arr!17064 a!3118) j!142)) (= (bvadd lt!258207 lt!258207) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566494 () Bool)

(assert (=> b!566494 (and (bvsge (index!24309 lt!258206) #b00000000000000000000000000000000) (bvslt (index!24309 lt!258206) (size!17428 a!3118)))))

(declare-fun res!357445 () Bool)

(assert (=> b!566494 (= res!357445 (= (select (arr!17064 a!3118) (index!24309 lt!258206)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566494 (=> res!357445 e!326019)))

(declare-fun b!566495 () Bool)

(declare-fun e!326020 () Bool)

(assert (=> b!566495 (= e!326020 (bvsge (x!53200 lt!258206) #b01111111111111111111111111111110))))

(declare-fun b!566496 () Bool)

(assert (=> b!566496 (= e!326020 e!326021)))

(declare-fun res!357446 () Bool)

(assert (=> b!566496 (= res!357446 (and (is-Intermediate!5520 lt!258206) (not (undefined!6332 lt!258206)) (bvslt (x!53200 lt!258206) #b01111111111111111111111111111110) (bvsge (x!53200 lt!258206) #b00000000000000000000000000000000) (bvsge (x!53200 lt!258206) #b00000000000000000000000000000000)))))

(assert (=> b!566496 (=> (not res!357446) (not e!326021))))

(declare-fun b!566497 () Bool)

(assert (=> b!566497 (= e!326018 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258051 #b00000000000000000000000000000000 mask!3119) (select (arr!17064 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!84047 () Bool)

(assert (=> d!84047 e!326020))

(declare-fun c!64872 () Bool)

(assert (=> d!84047 (= c!64872 (and (is-Intermediate!5520 lt!258206) (undefined!6332 lt!258206)))))

(assert (=> d!84047 (= lt!258206 e!326017)))

(declare-fun c!64874 () Bool)

(assert (=> d!84047 (= c!64874 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84047 (= lt!258207 (select (arr!17064 a!3118) lt!258051))))

(assert (=> d!84047 (validMask!0 mask!3119)))

(assert (=> d!84047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258051 (select (arr!17064 a!3118) j!142) a!3118 mask!3119) lt!258206)))

(declare-fun b!566498 () Bool)

(assert (=> b!566498 (= e!326017 (Intermediate!5520 true lt!258051 #b00000000000000000000000000000000))))

(declare-fun b!566499 () Bool)

(assert (=> b!566499 (and (bvsge (index!24309 lt!258206) #b00000000000000000000000000000000) (bvslt (index!24309 lt!258206) (size!17428 a!3118)))))

(assert (=> b!566499 (= e!326019 (= (select (arr!17064 a!3118) (index!24309 lt!258206)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!84047 c!64874) b!566498))

(assert (= (and d!84047 (not c!64874)) b!566493))

(assert (= (and b!566493 c!64873) b!566491))

(assert (= (and b!566493 (not c!64873)) b!566497))

(assert (= (and d!84047 c!64872) b!566495))

(assert (= (and d!84047 (not c!64872)) b!566496))

(assert (= (and b!566496 res!357446) b!566492))

(assert (= (and b!566492 (not res!357444)) b!566494))

(assert (= (and b!566494 (not res!357445)) b!566499))

(declare-fun m!545129 () Bool)

(assert (=> b!566497 m!545129))

(assert (=> b!566497 m!545129))

(assert (=> b!566497 m!544853))

(declare-fun m!545131 () Bool)

(assert (=> b!566497 m!545131))

(declare-fun m!545133 () Bool)

(assert (=> b!566492 m!545133))

(declare-fun m!545135 () Bool)

(assert (=> d!84047 m!545135))

(assert (=> d!84047 m!544873))

(assert (=> b!566494 m!545133))

(assert (=> b!566499 m!545133))

(assert (=> b!566172 d!84047))

(declare-fun d!84049 () Bool)

(declare-fun lt!258216 () (_ BitVec 32))

(declare-fun lt!258215 () (_ BitVec 32))

(assert (=> d!84049 (= lt!258216 (bvmul (bvxor lt!258215 (bvlshr lt!258215 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84049 (= lt!258215 ((_ extract 31 0) (bvand (bvxor lt!258046 (bvlshr lt!258046 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84049 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357449 (let ((h!12204 ((_ extract 31 0) (bvand (bvxor lt!258046 (bvlshr lt!258046 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53208 (bvmul (bvxor h!12204 (bvlshr h!12204 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53208 (bvlshr x!53208 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357449 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357449 #b00000000000000000000000000000000))))))

(assert (=> d!84049 (= (toIndex!0 lt!258046 mask!3119) (bvand (bvxor lt!258216 (bvlshr lt!258216 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566172 d!84049))

(declare-fun d!84053 () Bool)

(declare-fun lt!258218 () (_ BitVec 32))

(declare-fun lt!258217 () (_ BitVec 32))

(assert (=> d!84053 (= lt!258218 (bvmul (bvxor lt!258217 (bvlshr lt!258217 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84053 (= lt!258217 ((_ extract 31 0) (bvand (bvxor (select (arr!17064 a!3118) j!142) (bvlshr (select (arr!17064 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84053 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357449 (let ((h!12204 ((_ extract 31 0) (bvand (bvxor (select (arr!17064 a!3118) j!142) (bvlshr (select (arr!17064 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53208 (bvmul (bvxor h!12204 (bvlshr h!12204 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53208 (bvlshr x!53208 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357449 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357449 #b00000000000000000000000000000000))))))

(assert (=> d!84053 (= (toIndex!0 (select (arr!17064 a!3118) j!142) mask!3119) (bvand (bvxor lt!258218 (bvlshr lt!258218 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566172 d!84053))

(declare-fun b!566506 () Bool)

(declare-fun e!326027 () SeekEntryResult!5520)

(assert (=> b!566506 (= e!326027 Undefined!5520)))

(declare-fun b!566507 () Bool)

(declare-fun e!326029 () SeekEntryResult!5520)

(declare-fun lt!258219 () SeekEntryResult!5520)

(assert (=> b!566507 (= e!326029 (Found!5520 (index!24309 lt!258219)))))

(declare-fun b!566508 () Bool)

(assert (=> b!566508 (= e!326027 e!326029)))

(declare-fun lt!258220 () (_ BitVec 64))

(assert (=> b!566508 (= lt!258220 (select (arr!17064 a!3118) (index!24309 lt!258219)))))

(declare-fun c!64878 () Bool)

(assert (=> b!566508 (= c!64878 (= lt!258220 (select (arr!17064 a!3118) j!142)))))

(declare-fun b!566509 () Bool)

(declare-fun e!326028 () SeekEntryResult!5520)

(assert (=> b!566509 (= e!326028 (MissingZero!5520 (index!24309 lt!258219)))))

(declare-fun b!566510 () Bool)

(assert (=> b!566510 (= e!326028 (seekKeyOrZeroReturnVacant!0 (x!53200 lt!258219) (index!24309 lt!258219) (index!24309 lt!258219) (select (arr!17064 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!84055 () Bool)

(declare-fun lt!258221 () SeekEntryResult!5520)

(assert (=> d!84055 (and (or (is-Undefined!5520 lt!258221) (not (is-Found!5520 lt!258221)) (and (bvsge (index!24308 lt!258221) #b00000000000000000000000000000000) (bvslt (index!24308 lt!258221) (size!17428 a!3118)))) (or (is-Undefined!5520 lt!258221) (is-Found!5520 lt!258221) (not (is-MissingZero!5520 lt!258221)) (and (bvsge (index!24307 lt!258221) #b00000000000000000000000000000000) (bvslt (index!24307 lt!258221) (size!17428 a!3118)))) (or (is-Undefined!5520 lt!258221) (is-Found!5520 lt!258221) (is-MissingZero!5520 lt!258221) (not (is-MissingVacant!5520 lt!258221)) (and (bvsge (index!24310 lt!258221) #b00000000000000000000000000000000) (bvslt (index!24310 lt!258221) (size!17428 a!3118)))) (or (is-Undefined!5520 lt!258221) (ite (is-Found!5520 lt!258221) (= (select (arr!17064 a!3118) (index!24308 lt!258221)) (select (arr!17064 a!3118) j!142)) (ite (is-MissingZero!5520 lt!258221) (= (select (arr!17064 a!3118) (index!24307 lt!258221)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5520 lt!258221) (= (select (arr!17064 a!3118) (index!24310 lt!258221)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84055 (= lt!258221 e!326027)))

(declare-fun c!64876 () Bool)

(assert (=> d!84055 (= c!64876 (and (is-Intermediate!5520 lt!258219) (undefined!6332 lt!258219)))))

(assert (=> d!84055 (= lt!258219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17064 a!3118) j!142) mask!3119) (select (arr!17064 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84055 (validMask!0 mask!3119)))

(assert (=> d!84055 (= (seekEntryOrOpen!0 (select (arr!17064 a!3118) j!142) a!3118 mask!3119) lt!258221)))

(declare-fun b!566511 () Bool)

(declare-fun c!64877 () Bool)

(assert (=> b!566511 (= c!64877 (= lt!258220 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566511 (= e!326029 e!326028)))

(assert (= (and d!84055 c!64876) b!566506))

(assert (= (and d!84055 (not c!64876)) b!566508))

(assert (= (and b!566508 c!64878) b!566507))

(assert (= (and b!566508 (not c!64878)) b!566511))

(assert (= (and b!566511 c!64877) b!566509))

(assert (= (and b!566511 (not c!64877)) b!566510))

(declare-fun m!545143 () Bool)

(assert (=> b!566508 m!545143))

(assert (=> b!566510 m!544853))

(declare-fun m!545145 () Bool)

(assert (=> b!566510 m!545145))

(assert (=> d!84055 m!544857))

(assert (=> d!84055 m!544853))

(declare-fun m!545147 () Bool)

(assert (=> d!84055 m!545147))

(declare-fun m!545149 () Bool)

(assert (=> d!84055 m!545149))

(declare-fun m!545151 () Bool)

(assert (=> d!84055 m!545151))

(assert (=> d!84055 m!544853))

(assert (=> d!84055 m!544857))

(assert (=> d!84055 m!544873))

(declare-fun m!545153 () Bool)

(assert (=> d!84055 m!545153))

(assert (=> b!566177 d!84055))

(declare-fun b!566512 () Bool)

(declare-fun e!326030 () Bool)

(declare-fun call!32491 () Bool)

(assert (=> b!566512 (= e!326030 call!32491)))

(declare-fun b!566513 () Bool)

(declare-fun e!326032 () Bool)

(assert (=> b!566513 (= e!326032 e!326030)))

(declare-fun c!64879 () Bool)

(assert (=> b!566513 (= c!64879 (validKeyInArray!0 (select (arr!17064 a!3118) j!142)))))

(declare-fun b!566514 () Bool)

(declare-fun e!326031 () Bool)

(assert (=> b!566514 (= e!326030 e!326031)))

(declare-fun lt!258223 () (_ BitVec 64))

(assert (=> b!566514 (= lt!258223 (select (arr!17064 a!3118) j!142))))

(declare-fun lt!258224 () Unit!17742)

(assert (=> b!566514 (= lt!258224 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258223 j!142))))

(assert (=> b!566514 (arrayContainsKey!0 a!3118 lt!258223 #b00000000000000000000000000000000)))

(declare-fun lt!258222 () Unit!17742)

(assert (=> b!566514 (= lt!258222 lt!258224)))

(declare-fun res!357452 () Bool)

(assert (=> b!566514 (= res!357452 (= (seekEntryOrOpen!0 (select (arr!17064 a!3118) j!142) a!3118 mask!3119) (Found!5520 j!142)))))

(assert (=> b!566514 (=> (not res!357452) (not e!326031))))

(declare-fun b!566515 () Bool)

(assert (=> b!566515 (= e!326031 call!32491)))

(declare-fun bm!32488 () Bool)

(assert (=> bm!32488 (= call!32491 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!84057 () Bool)

(declare-fun res!357453 () Bool)

(assert (=> d!84057 (=> res!357453 e!326032)))

(assert (=> d!84057 (= res!357453 (bvsge j!142 (size!17428 a!3118)))))

(assert (=> d!84057 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326032)))

(assert (= (and d!84057 (not res!357453)) b!566513))

(assert (= (and b!566513 c!64879) b!566514))

(assert (= (and b!566513 (not c!64879)) b!566512))

(assert (= (and b!566514 res!357452) b!566515))

(assert (= (or b!566515 b!566512) bm!32488))

(assert (=> b!566513 m!544853))

(assert (=> b!566513 m!544853))

(assert (=> b!566513 m!544855))

(assert (=> b!566514 m!544853))

(declare-fun m!545155 () Bool)

(assert (=> b!566514 m!545155))

(declare-fun m!545157 () Bool)

(assert (=> b!566514 m!545157))

(assert (=> b!566514 m!544853))

(assert (=> b!566514 m!544877))

(declare-fun m!545159 () Bool)

(assert (=> bm!32488 m!545159))

(assert (=> b!566177 d!84057))

(declare-fun d!84059 () Bool)

(assert (=> d!84059 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258239 () Unit!17742)

(declare-fun choose!38 (array!35538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17742)

(assert (=> d!84059 (= lt!258239 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84059 (validMask!0 mask!3119)))

(assert (=> d!84059 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258239)))

(declare-fun bs!17594 () Bool)

(assert (= bs!17594 d!84059))

(assert (=> bs!17594 m!544879))

(declare-fun m!545185 () Bool)

(assert (=> bs!17594 m!545185))

(assert (=> bs!17594 m!544873))

(assert (=> b!566177 d!84059))

(declare-fun b!566542 () Bool)

(declare-fun e!326051 () Bool)

(declare-fun e!326050 () Bool)

(assert (=> b!566542 (= e!326051 e!326050)))

(declare-fun res!357464 () Bool)

(assert (=> b!566542 (=> (not res!357464) (not e!326050))))

(declare-fun e!326053 () Bool)

(assert (=> b!566542 (= res!357464 (not e!326053))))

(declare-fun res!357462 () Bool)

(assert (=> b!566542 (=> (not res!357462) (not e!326053))))

(assert (=> b!566542 (= res!357462 (validKeyInArray!0 (select (arr!17064 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566543 () Bool)

(declare-fun e!326052 () Bool)

(declare-fun call!32495 () Bool)

(assert (=> b!566543 (= e!326052 call!32495)))

(declare-fun bm!32492 () Bool)

(declare-fun c!64889 () Bool)

(assert (=> bm!32492 (= call!32495 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64889 (Cons!11193 (select (arr!17064 a!3118) #b00000000000000000000000000000000) Nil!11194) Nil!11194)))))

(declare-fun b!566544 () Bool)

(declare-fun contains!2870 (List!11197 (_ BitVec 64)) Bool)

(assert (=> b!566544 (= e!326053 (contains!2870 Nil!11194 (select (arr!17064 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84067 () Bool)

(declare-fun res!357463 () Bool)

(assert (=> d!84067 (=> res!357463 e!326051)))

(assert (=> d!84067 (= res!357463 (bvsge #b00000000000000000000000000000000 (size!17428 a!3118)))))

(assert (=> d!84067 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11194) e!326051)))

(declare-fun b!566545 () Bool)

(assert (=> b!566545 (= e!326050 e!326052)))

(assert (=> b!566545 (= c!64889 (validKeyInArray!0 (select (arr!17064 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566546 () Bool)

(assert (=> b!566546 (= e!326052 call!32495)))

(assert (= (and d!84067 (not res!357463)) b!566542))

(assert (= (and b!566542 res!357462) b!566544))

(assert (= (and b!566542 res!357464) b!566545))

(assert (= (and b!566545 c!64889) b!566546))

(assert (= (and b!566545 (not c!64889)) b!566543))

(assert (= (or b!566546 b!566543) bm!32492))

(assert (=> b!566542 m!545061))

(assert (=> b!566542 m!545061))

(assert (=> b!566542 m!545071))

(assert (=> bm!32492 m!545061))

(declare-fun m!545199 () Bool)

(assert (=> bm!32492 m!545199))

(assert (=> b!566544 m!545061))

(assert (=> b!566544 m!545061))

(declare-fun m!545201 () Bool)

(assert (=> b!566544 m!545201))

(assert (=> b!566545 m!545061))

(assert (=> b!566545 m!545061))

(assert (=> b!566545 m!545071))

(assert (=> b!566171 d!84067))

(declare-fun d!84073 () Bool)

(assert (=> d!84073 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566168 d!84073))

(push 1)

