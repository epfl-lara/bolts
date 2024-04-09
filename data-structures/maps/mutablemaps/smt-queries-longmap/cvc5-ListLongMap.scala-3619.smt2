; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49838 () Bool)

(assert start!49838)

(declare-fun res!340819 () Bool)

(declare-fun e!316091 () Bool)

(assert (=> start!49838 (=> (not res!340819) (not e!316091))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49838 (= res!340819 (validMask!0 mask!3119))))

(assert (=> start!49838 e!316091))

(assert (=> start!49838 true))

(declare-datatypes ((array!34497 0))(
  ( (array!34498 (arr!16569 (Array (_ BitVec 32) (_ BitVec 64))) (size!16933 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34497)

(declare-fun array_inv!12343 (array!34497) Bool)

(assert (=> start!49838 (array_inv!12343 a!3118)))

(declare-fun b!547027 () Bool)

(declare-fun res!340823 () Bool)

(assert (=> b!547027 (=> (not res!340823) (not e!316091))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547027 (= res!340823 (validKeyInArray!0 k!1914))))

(declare-fun b!547028 () Bool)

(declare-fun e!316092 () Bool)

(assert (=> b!547028 (= e!316091 e!316092)))

(declare-fun res!340825 () Bool)

(assert (=> b!547028 (=> (not res!340825) (not e!316092))))

(declare-datatypes ((SeekEntryResult!5025 0))(
  ( (MissingZero!5025 (index!22327 (_ BitVec 32))) (Found!5025 (index!22328 (_ BitVec 32))) (Intermediate!5025 (undefined!5837 Bool) (index!22329 (_ BitVec 32)) (x!51304 (_ BitVec 32))) (Undefined!5025) (MissingVacant!5025 (index!22330 (_ BitVec 32))) )
))
(declare-fun lt!249437 () SeekEntryResult!5025)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547028 (= res!340825 (or (= lt!249437 (MissingZero!5025 i!1132)) (= lt!249437 (MissingVacant!5025 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34497 (_ BitVec 32)) SeekEntryResult!5025)

(assert (=> b!547028 (= lt!249437 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547029 () Bool)

(declare-fun res!340821 () Bool)

(assert (=> b!547029 (=> (not res!340821) (not e!316092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34497 (_ BitVec 32)) Bool)

(assert (=> b!547029 (= res!340821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547030 () Bool)

(declare-fun res!340820 () Bool)

(assert (=> b!547030 (=> (not res!340820) (not e!316092))))

(assert (=> b!547030 (= res!340820 (and (bvsle #b00000000000000000000000000000000 (size!16933 a!3118)) (bvslt (size!16933 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!547031 () Bool)

(declare-fun res!340826 () Bool)

(assert (=> b!547031 (=> (not res!340826) (not e!316091))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547031 (= res!340826 (and (= (size!16933 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16933 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16933 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547032 () Bool)

(declare-fun res!340824 () Bool)

(assert (=> b!547032 (=> (not res!340824) (not e!316091))))

(assert (=> b!547032 (= res!340824 (validKeyInArray!0 (select (arr!16569 a!3118) j!142)))))

(declare-fun b!547033 () Bool)

(declare-fun res!340822 () Bool)

(assert (=> b!547033 (=> (not res!340822) (not e!316091))))

(declare-fun arrayContainsKey!0 (array!34497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547033 (= res!340822 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547034 () Bool)

(declare-datatypes ((List!10702 0))(
  ( (Nil!10699) (Cons!10698 (h!11665 (_ BitVec 64)) (t!16938 List!10702)) )
))
(declare-fun noDuplicate!220 (List!10702) Bool)

(assert (=> b!547034 (= e!316092 (not (noDuplicate!220 Nil!10699)))))

(assert (= (and start!49838 res!340819) b!547031))

(assert (= (and b!547031 res!340826) b!547032))

(assert (= (and b!547032 res!340824) b!547027))

(assert (= (and b!547027 res!340823) b!547033))

(assert (= (and b!547033 res!340822) b!547028))

(assert (= (and b!547028 res!340825) b!547029))

(assert (= (and b!547029 res!340821) b!547030))

(assert (= (and b!547030 res!340820) b!547034))

(declare-fun m!524383 () Bool)

(assert (=> b!547034 m!524383))

(declare-fun m!524385 () Bool)

(assert (=> b!547027 m!524385))

(declare-fun m!524387 () Bool)

(assert (=> b!547032 m!524387))

(assert (=> b!547032 m!524387))

(declare-fun m!524389 () Bool)

(assert (=> b!547032 m!524389))

(declare-fun m!524391 () Bool)

(assert (=> start!49838 m!524391))

(declare-fun m!524393 () Bool)

(assert (=> start!49838 m!524393))

(declare-fun m!524395 () Bool)

(assert (=> b!547033 m!524395))

(declare-fun m!524397 () Bool)

(assert (=> b!547029 m!524397))

(declare-fun m!524399 () Bool)

(assert (=> b!547028 m!524399))

(push 1)

(assert (not b!547034))

(assert (not b!547033))

(assert (not b!547029))

(assert (not start!49838))

(assert (not b!547032))

(assert (not b!547027))

(assert (not b!547028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82333 () Bool)

(declare-fun lt!249470 () SeekEntryResult!5025)

(assert (=> d!82333 (and (or (is-Undefined!5025 lt!249470) (not (is-Found!5025 lt!249470)) (and (bvsge (index!22328 lt!249470) #b00000000000000000000000000000000) (bvslt (index!22328 lt!249470) (size!16933 a!3118)))) (or (is-Undefined!5025 lt!249470) (is-Found!5025 lt!249470) (not (is-MissingZero!5025 lt!249470)) (and (bvsge (index!22327 lt!249470) #b00000000000000000000000000000000) (bvslt (index!22327 lt!249470) (size!16933 a!3118)))) (or (is-Undefined!5025 lt!249470) (is-Found!5025 lt!249470) (is-MissingZero!5025 lt!249470) (not (is-MissingVacant!5025 lt!249470)) (and (bvsge (index!22330 lt!249470) #b00000000000000000000000000000000) (bvslt (index!22330 lt!249470) (size!16933 a!3118)))) (or (is-Undefined!5025 lt!249470) (ite (is-Found!5025 lt!249470) (= (select (arr!16569 a!3118) (index!22328 lt!249470)) k!1914) (ite (is-MissingZero!5025 lt!249470) (= (select (arr!16569 a!3118) (index!22327 lt!249470)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5025 lt!249470) (= (select (arr!16569 a!3118) (index!22330 lt!249470)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!316147 () SeekEntryResult!5025)

(assert (=> d!82333 (= lt!249470 e!316147)))

(declare-fun c!63452 () Bool)

(declare-fun lt!249468 () SeekEntryResult!5025)

(assert (=> d!82333 (= c!63452 (and (is-Intermediate!5025 lt!249468) (undefined!5837 lt!249468)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34497 (_ BitVec 32)) SeekEntryResult!5025)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82333 (= lt!249468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82333 (validMask!0 mask!3119)))

(assert (=> d!82333 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249470)))

(declare-fun b!547137 () Bool)

(assert (=> b!547137 (= e!316147 Undefined!5025)))

(declare-fun b!547138 () Bool)

(declare-fun e!316148 () SeekEntryResult!5025)

(assert (=> b!547138 (= e!316147 e!316148)))

(declare-fun lt!249469 () (_ BitVec 64))

(assert (=> b!547138 (= lt!249469 (select (arr!16569 a!3118) (index!22329 lt!249468)))))

(declare-fun c!63454 () Bool)

(assert (=> b!547138 (= c!63454 (= lt!249469 k!1914))))

(declare-fun b!547139 () Bool)

(assert (=> b!547139 (= e!316148 (Found!5025 (index!22329 lt!249468)))))

(declare-fun e!316146 () SeekEntryResult!5025)

(declare-fun b!547140 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34497 (_ BitVec 32)) SeekEntryResult!5025)

(assert (=> b!547140 (= e!316146 (seekKeyOrZeroReturnVacant!0 (x!51304 lt!249468) (index!22329 lt!249468) (index!22329 lt!249468) k!1914 a!3118 mask!3119))))

(declare-fun b!547141 () Bool)

(declare-fun c!63453 () Bool)

(assert (=> b!547141 (= c!63453 (= lt!249469 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!547141 (= e!316148 e!316146)))

(declare-fun b!547142 () Bool)

(assert (=> b!547142 (= e!316146 (MissingZero!5025 (index!22329 lt!249468)))))

(assert (= (and d!82333 c!63452) b!547137))

(assert (= (and d!82333 (not c!63452)) b!547138))

(assert (= (and b!547138 c!63454) b!547139))

(assert (= (and b!547138 (not c!63454)) b!547141))

(assert (= (and b!547141 c!63453) b!547142))

(assert (= (and b!547141 (not c!63453)) b!547140))

(declare-fun m!524465 () Bool)

(assert (=> d!82333 m!524465))

(declare-fun m!524467 () Bool)

(assert (=> d!82333 m!524467))

(assert (=> d!82333 m!524391))

(declare-fun m!524469 () Bool)

(assert (=> d!82333 m!524469))

(declare-fun m!524471 () Bool)

(assert (=> d!82333 m!524471))

(declare-fun m!524473 () Bool)

(assert (=> d!82333 m!524473))

(assert (=> d!82333 m!524471))

(declare-fun m!524475 () Bool)

(assert (=> b!547138 m!524475))

(declare-fun m!524477 () Bool)

(assert (=> b!547140 m!524477))

(assert (=> b!547028 d!82333))

(declare-fun d!82349 () Bool)

(declare-fun res!340897 () Bool)

(declare-fun e!316158 () Bool)

(assert (=> d!82349 (=> res!340897 e!316158)))

(assert (=> d!82349 (= res!340897 (= (select (arr!16569 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82349 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316158)))

(declare-fun b!547153 () Bool)

(declare-fun e!316159 () Bool)

(assert (=> b!547153 (= e!316158 e!316159)))

(declare-fun res!340898 () Bool)

(assert (=> b!547153 (=> (not res!340898) (not e!316159))))

(assert (=> b!547153 (= res!340898 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16933 a!3118)))))

(declare-fun b!547154 () Bool)

(assert (=> b!547154 (= e!316159 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82349 (not res!340897)) b!547153))

(assert (= (and b!547153 res!340898) b!547154))

(declare-fun m!524487 () Bool)

(assert (=> d!82349 m!524487))

(declare-fun m!524489 () Bool)

(assert (=> b!547154 m!524489))

(assert (=> b!547033 d!82349))

(declare-fun d!82351 () Bool)

(assert (=> d!82351 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49838 d!82351))

(declare-fun d!82361 () Bool)

(assert (=> d!82361 (= (array_inv!12343 a!3118) (bvsge (size!16933 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49838 d!82361))

(declare-fun d!82363 () Bool)

(assert (=> d!82363 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547027 d!82363))

(declare-fun d!82365 () Bool)

(assert (=> d!82365 (= (validKeyInArray!0 (select (arr!16569 a!3118) j!142)) (and (not (= (select (arr!16569 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16569 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547032 d!82365))

(declare-fun b!547187 () Bool)

(declare-fun e!316186 () Bool)

(declare-fun call!32162 () Bool)

(assert (=> b!547187 (= e!316186 call!32162)))

(declare-fun b!547188 () Bool)

(declare-fun e!316185 () Bool)

(assert (=> b!547188 (= e!316185 e!316186)))

(declare-fun lt!249494 () (_ BitVec 64))

(assert (=> b!547188 (= lt!249494 (select (arr!16569 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16932 0))(
  ( (Unit!16933) )
))
(declare-fun lt!249492 () Unit!16932)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34497 (_ BitVec 64) (_ BitVec 32)) Unit!16932)

(assert (=> b!547188 (= lt!249492 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249494 #b00000000000000000000000000000000))))

(assert (=> b!547188 (arrayContainsKey!0 a!3118 lt!249494 #b00000000000000000000000000000000)))

(declare-fun lt!249493 () Unit!16932)

(assert (=> b!547188 (= lt!249493 lt!249492)))

(declare-fun res!340915 () Bool)

(assert (=> b!547188 (= res!340915 (= (seekEntryOrOpen!0 (select (arr!16569 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5025 #b00000000000000000000000000000000)))))

(assert (=> b!547188 (=> (not res!340915) (not e!316186))))

(declare-fun b!547189 () Bool)

(assert (=> b!547189 (= e!316185 call!32162)))

(declare-fun b!547190 () Bool)

(declare-fun e!316184 () Bool)

(assert (=> b!547190 (= e!316184 e!316185)))

(declare-fun c!63464 () Bool)

(assert (=> b!547190 (= c!63464 (validKeyInArray!0 (select (arr!16569 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32159 () Bool)

(assert (=> bm!32159 (= call!32162 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!82367 () Bool)

(declare-fun res!340916 () Bool)

(assert (=> d!82367 (=> res!340916 e!316184)))

(assert (=> d!82367 (= res!340916 (bvsge #b00000000000000000000000000000000 (size!16933 a!3118)))))

(assert (=> d!82367 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316184)))

(assert (= (and d!82367 (not res!340916)) b!547190))

(assert (= (and b!547190 c!63464) b!547188))

(assert (= (and b!547190 (not c!63464)) b!547189))

(assert (= (and b!547188 res!340915) b!547187))

(assert (= (or b!547187 b!547189) bm!32159))

(assert (=> b!547188 m!524487))

(declare-fun m!524501 () Bool)

(assert (=> b!547188 m!524501))

(declare-fun m!524503 () Bool)

(assert (=> b!547188 m!524503))

(assert (=> b!547188 m!524487))

(declare-fun m!524505 () Bool)

(assert (=> b!547188 m!524505))

(assert (=> b!547190 m!524487))

(assert (=> b!547190 m!524487))

(declare-fun m!524507 () Bool)

(assert (=> b!547190 m!524507))

(declare-fun m!524509 () Bool)

(assert (=> bm!32159 m!524509))

(assert (=> b!547029 d!82367))

(declare-fun d!82373 () Bool)

(declare-fun res!340921 () Bool)

(declare-fun e!316194 () Bool)

(assert (=> d!82373 (=> res!340921 e!316194)))

(assert (=> d!82373 (= res!340921 (is-Nil!10699 Nil!10699))))

(assert (=> d!82373 (= (noDuplicate!220 Nil!10699) e!316194)))

(declare-fun b!547201 () Bool)

(declare-fun e!316195 () Bool)

(assert (=> b!547201 (= e!316194 e!316195)))

(declare-fun res!340922 () Bool)

(assert (=> b!547201 (=> (not res!340922) (not e!316195))))

(declare-fun contains!2822 (List!10702 (_ BitVec 64)) Bool)

