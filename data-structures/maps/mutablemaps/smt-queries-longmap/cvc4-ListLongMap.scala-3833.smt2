; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52638 () Bool)

(assert start!52638)

(declare-fun b!574046 () Bool)

(declare-fun e!330275 () Bool)

(declare-fun e!330274 () Bool)

(assert (=> b!574046 (= e!330275 e!330274)))

(declare-fun res!363162 () Bool)

(assert (=> b!574046 (=> (not res!363162) (not e!330274))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5669 0))(
  ( (MissingZero!5669 (index!24903 (_ BitVec 32))) (Found!5669 (index!24904 (_ BitVec 32))) (Intermediate!5669 (undefined!6481 Bool) (index!24905 (_ BitVec 32)) (x!53807 (_ BitVec 32))) (Undefined!5669) (MissingVacant!5669 (index!24906 (_ BitVec 32))) )
))
(declare-fun lt!262247 () SeekEntryResult!5669)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!262248 () SeekEntryResult!5669)

(declare-datatypes ((array!35863 0))(
  ( (array!35864 (arr!17213 (Array (_ BitVec 32) (_ BitVec 64))) (size!17577 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35863)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35863 (_ BitVec 32)) SeekEntryResult!5669)

(assert (=> b!574046 (= res!363162 (= lt!262248 (seekKeyOrZeroReturnVacant!0 (x!53807 lt!262247) (index!24905 lt!262247) (index!24905 lt!262247) (select (arr!17213 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!574047 () Bool)

(declare-fun e!330271 () Bool)

(declare-fun e!330276 () Bool)

(assert (=> b!574047 (= e!330271 e!330276)))

(declare-fun res!363164 () Bool)

(assert (=> b!574047 (=> (not res!363164) (not e!330276))))

(declare-fun lt!262250 () SeekEntryResult!5669)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!574047 (= res!363164 (or (= lt!262250 (MissingZero!5669 i!1132)) (= lt!262250 (MissingVacant!5669 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35863 (_ BitVec 32)) SeekEntryResult!5669)

(assert (=> b!574047 (= lt!262250 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun e!330270 () Bool)

(declare-fun b!574048 () Bool)

(assert (=> b!574048 (= e!330270 (not (or (undefined!6481 lt!262247) (not (is-Intermediate!5669 lt!262247)) (let ((bdg!18009 (select (arr!17213 a!3118) (index!24905 lt!262247)))) (or (= bdg!18009 (select (arr!17213 a!3118) j!142)) (= bdg!18009 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24905 lt!262247) #b00000000000000000000000000000000) (bvsge (index!24905 lt!262247) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53807 lt!262247) #b01111111111111111111111111111110) (bvslt (x!53807 lt!262247) #b00000000000000000000000000000000) (= bdg!18009 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330277 () Bool)

(assert (=> b!574048 e!330277))

(declare-fun res!363159 () Bool)

(assert (=> b!574048 (=> (not res!363159) (not e!330277))))

(assert (=> b!574048 (= res!363159 (= lt!262248 (Found!5669 j!142)))))

(assert (=> b!574048 (= lt!262248 (seekEntryOrOpen!0 (select (arr!17213 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35863 (_ BitVec 32)) Bool)

(assert (=> b!574048 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18040 0))(
  ( (Unit!18041) )
))
(declare-fun lt!262246 () Unit!18040)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35863 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18040)

(assert (=> b!574048 (= lt!262246 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!574049 () Bool)

(declare-fun res!363168 () Bool)

(assert (=> b!574049 (=> (not res!363168) (not e!330271))))

(declare-fun arrayContainsKey!0 (array!35863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!574049 (= res!363168 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!574050 () Bool)

(declare-fun res!363166 () Bool)

(assert (=> b!574050 (=> (not res!363166) (not e!330276))))

(declare-datatypes ((List!11346 0))(
  ( (Nil!11343) (Cons!11342 (h!12375 (_ BitVec 64)) (t!17582 List!11346)) )
))
(declare-fun arrayNoDuplicates!0 (array!35863 (_ BitVec 32) List!11346) Bool)

(assert (=> b!574050 (= res!363166 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11343))))

(declare-fun b!574052 () Bool)

(declare-fun e!330272 () Bool)

(assert (=> b!574052 (= e!330272 e!330275)))

(declare-fun res!363165 () Bool)

(assert (=> b!574052 (=> res!363165 e!330275)))

(declare-fun lt!262244 () (_ BitVec 64))

(assert (=> b!574052 (= res!363165 (or (= lt!262244 (select (arr!17213 a!3118) j!142)) (= lt!262244 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!574052 (= lt!262244 (select (arr!17213 a!3118) (index!24905 lt!262247)))))

(declare-fun b!574053 () Bool)

(declare-fun res!363161 () Bool)

(assert (=> b!574053 (=> (not res!363161) (not e!330271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!574053 (= res!363161 (validKeyInArray!0 k!1914))))

(declare-fun lt!262242 () array!35863)

(declare-fun b!574054 () Bool)

(declare-fun lt!262245 () (_ BitVec 64))

(assert (=> b!574054 (= e!330274 (= (seekEntryOrOpen!0 lt!262245 lt!262242 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53807 lt!262247) (index!24905 lt!262247) (index!24905 lt!262247) lt!262245 lt!262242 mask!3119)))))

(declare-fun b!574055 () Bool)

(assert (=> b!574055 (= e!330277 e!330272)))

(declare-fun res!363158 () Bool)

(assert (=> b!574055 (=> res!363158 e!330272)))

(assert (=> b!574055 (= res!363158 (or (undefined!6481 lt!262247) (not (is-Intermediate!5669 lt!262247))))))

(declare-fun b!574056 () Bool)

(assert (=> b!574056 (= e!330276 e!330270)))

(declare-fun res!363163 () Bool)

(assert (=> b!574056 (=> (not res!363163) (not e!330270))))

(declare-fun lt!262243 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35863 (_ BitVec 32)) SeekEntryResult!5669)

(assert (=> b!574056 (= res!363163 (= lt!262247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262243 lt!262245 lt!262242 mask!3119)))))

(declare-fun lt!262249 () (_ BitVec 32))

(assert (=> b!574056 (= lt!262247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262249 (select (arr!17213 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574056 (= lt!262243 (toIndex!0 lt!262245 mask!3119))))

(assert (=> b!574056 (= lt!262245 (select (store (arr!17213 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!574056 (= lt!262249 (toIndex!0 (select (arr!17213 a!3118) j!142) mask!3119))))

(assert (=> b!574056 (= lt!262242 (array!35864 (store (arr!17213 a!3118) i!1132 k!1914) (size!17577 a!3118)))))

(declare-fun res!363167 () Bool)

(assert (=> start!52638 (=> (not res!363167) (not e!330271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52638 (= res!363167 (validMask!0 mask!3119))))

(assert (=> start!52638 e!330271))

(assert (=> start!52638 true))

(declare-fun array_inv!12987 (array!35863) Bool)

(assert (=> start!52638 (array_inv!12987 a!3118)))

(declare-fun b!574051 () Bool)

(declare-fun res!363169 () Bool)

(assert (=> b!574051 (=> (not res!363169) (not e!330271))))

(assert (=> b!574051 (= res!363169 (validKeyInArray!0 (select (arr!17213 a!3118) j!142)))))

(declare-fun b!574057 () Bool)

(declare-fun res!363170 () Bool)

(assert (=> b!574057 (=> (not res!363170) (not e!330276))))

(assert (=> b!574057 (= res!363170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!574058 () Bool)

(declare-fun res!363160 () Bool)

(assert (=> b!574058 (=> (not res!363160) (not e!330271))))

(assert (=> b!574058 (= res!363160 (and (= (size!17577 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17577 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17577 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52638 res!363167) b!574058))

(assert (= (and b!574058 res!363160) b!574051))

(assert (= (and b!574051 res!363169) b!574053))

(assert (= (and b!574053 res!363161) b!574049))

(assert (= (and b!574049 res!363168) b!574047))

(assert (= (and b!574047 res!363164) b!574057))

(assert (= (and b!574057 res!363170) b!574050))

(assert (= (and b!574050 res!363166) b!574056))

(assert (= (and b!574056 res!363163) b!574048))

(assert (= (and b!574048 res!363159) b!574055))

(assert (= (and b!574055 (not res!363158)) b!574052))

(assert (= (and b!574052 (not res!363165)) b!574046))

(assert (= (and b!574046 res!363162) b!574054))

(declare-fun m!553007 () Bool)

(assert (=> b!574054 m!553007))

(declare-fun m!553009 () Bool)

(assert (=> b!574054 m!553009))

(declare-fun m!553011 () Bool)

(assert (=> b!574053 m!553011))

(declare-fun m!553013 () Bool)

(assert (=> b!574049 m!553013))

(declare-fun m!553015 () Bool)

(assert (=> b!574047 m!553015))

(declare-fun m!553017 () Bool)

(assert (=> start!52638 m!553017))

(declare-fun m!553019 () Bool)

(assert (=> start!52638 m!553019))

(declare-fun m!553021 () Bool)

(assert (=> b!574050 m!553021))

(declare-fun m!553023 () Bool)

(assert (=> b!574046 m!553023))

(assert (=> b!574046 m!553023))

(declare-fun m!553025 () Bool)

(assert (=> b!574046 m!553025))

(assert (=> b!574052 m!553023))

(declare-fun m!553027 () Bool)

(assert (=> b!574052 m!553027))

(assert (=> b!574051 m!553023))

(assert (=> b!574051 m!553023))

(declare-fun m!553029 () Bool)

(assert (=> b!574051 m!553029))

(declare-fun m!553031 () Bool)

(assert (=> b!574057 m!553031))

(assert (=> b!574048 m!553027))

(assert (=> b!574048 m!553023))

(declare-fun m!553033 () Bool)

(assert (=> b!574048 m!553033))

(declare-fun m!553035 () Bool)

(assert (=> b!574048 m!553035))

(assert (=> b!574048 m!553023))

(declare-fun m!553037 () Bool)

(assert (=> b!574048 m!553037))

(assert (=> b!574056 m!553023))

(declare-fun m!553039 () Bool)

(assert (=> b!574056 m!553039))

(declare-fun m!553041 () Bool)

(assert (=> b!574056 m!553041))

(assert (=> b!574056 m!553023))

(declare-fun m!553043 () Bool)

(assert (=> b!574056 m!553043))

(assert (=> b!574056 m!553023))

(declare-fun m!553045 () Bool)

(assert (=> b!574056 m!553045))

(declare-fun m!553047 () Bool)

(assert (=> b!574056 m!553047))

(declare-fun m!553049 () Bool)

(assert (=> b!574056 m!553049))

(push 1)

(assert (not b!574049))

(assert (not b!574053))

(assert (not b!574050))

(assert (not b!574054))

(assert (not b!574056))

(assert (not start!52638))

(assert (not b!574051))

(assert (not b!574048))

(assert (not b!574047))

(assert (not b!574057))

(assert (not b!574046))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!574107 () Bool)

(declare-fun e!330304 () SeekEntryResult!5669)

(assert (=> b!574107 (= e!330304 Undefined!5669)))

(declare-fun b!574108 () Bool)

(declare-fun e!330302 () SeekEntryResult!5669)

(declare-fun lt!262273 () SeekEntryResult!5669)

(assert (=> b!574108 (= e!330302 (MissingZero!5669 (index!24905 lt!262273)))))

(declare-fun d!84963 () Bool)

(declare-fun lt!262272 () SeekEntryResult!5669)

(assert (=> d!84963 (and (or (is-Undefined!5669 lt!262272) (not (is-Found!5669 lt!262272)) (and (bvsge (index!24904 lt!262272) #b00000000000000000000000000000000) (bvslt (index!24904 lt!262272) (size!17577 a!3118)))) (or (is-Undefined!5669 lt!262272) (is-Found!5669 lt!262272) (not (is-MissingZero!5669 lt!262272)) (and (bvsge (index!24903 lt!262272) #b00000000000000000000000000000000) (bvslt (index!24903 lt!262272) (size!17577 a!3118)))) (or (is-Undefined!5669 lt!262272) (is-Found!5669 lt!262272) (is-MissingZero!5669 lt!262272) (not (is-MissingVacant!5669 lt!262272)) (and (bvsge (index!24906 lt!262272) #b00000000000000000000000000000000) (bvslt (index!24906 lt!262272) (size!17577 a!3118)))) (or (is-Undefined!5669 lt!262272) (ite (is-Found!5669 lt!262272) (= (select (arr!17213 a!3118) (index!24904 lt!262272)) (select (arr!17213 a!3118) j!142)) (ite (is-MissingZero!5669 lt!262272) (= (select (arr!17213 a!3118) (index!24903 lt!262272)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5669 lt!262272) (= (select (arr!17213 a!3118) (index!24906 lt!262272)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84963 (= lt!262272 e!330304)))

(declare-fun c!65830 () Bool)

(assert (=> d!84963 (= c!65830 (and (is-Intermediate!5669 lt!262273) (undefined!6481 lt!262273)))))

(assert (=> d!84963 (= lt!262273 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17213 a!3118) j!142) mask!3119) (select (arr!17213 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84963 (validMask!0 mask!3119)))

(assert (=> d!84963 (= (seekEntryOrOpen!0 (select (arr!17213 a!3118) j!142) a!3118 mask!3119) lt!262272)))

(declare-fun b!574109 () Bool)

(declare-fun e!330303 () SeekEntryResult!5669)

(assert (=> b!574109 (= e!330304 e!330303)))

(declare-fun lt!262274 () (_ BitVec 64))

(assert (=> b!574109 (= lt!262274 (select (arr!17213 a!3118) (index!24905 lt!262273)))))

(declare-fun c!65831 () Bool)

(assert (=> b!574109 (= c!65831 (= lt!262274 (select (arr!17213 a!3118) j!142)))))

(declare-fun b!574110 () Bool)

(declare-fun c!65829 () Bool)

(assert (=> b!574110 (= c!65829 (= lt!262274 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574110 (= e!330303 e!330302)))

(declare-fun b!574111 () Bool)

(assert (=> b!574111 (= e!330303 (Found!5669 (index!24905 lt!262273)))))

(declare-fun b!574112 () Bool)

(assert (=> b!574112 (= e!330302 (seekKeyOrZeroReturnVacant!0 (x!53807 lt!262273) (index!24905 lt!262273) (index!24905 lt!262273) (select (arr!17213 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84963 c!65830) b!574107))

(assert (= (and d!84963 (not c!65830)) b!574109))

(assert (= (and b!574109 c!65831) b!574111))

(assert (= (and b!574109 (not c!65831)) b!574110))

(assert (= (and b!574110 c!65829) b!574108))

(assert (= (and b!574110 (not c!65829)) b!574112))

(assert (=> d!84963 m!553017))

(declare-fun m!553073 () Bool)

(assert (=> d!84963 m!553073))

(declare-fun m!553075 () Bool)

(assert (=> d!84963 m!553075))

(assert (=> d!84963 m!553039))

(assert (=> d!84963 m!553023))

(declare-fun m!553077 () Bool)

(assert (=> d!84963 m!553077))

(declare-fun m!553079 () Bool)

(assert (=> d!84963 m!553079))

(assert (=> d!84963 m!553023))

(assert (=> d!84963 m!553039))

(declare-fun m!553081 () Bool)

(assert (=> b!574109 m!553081))

(assert (=> b!574112 m!553023))

(declare-fun m!553083 () Bool)

(assert (=> b!574112 m!553083))

(assert (=> b!574048 d!84963))

(declare-fun b!574167 () Bool)

(declare-fun e!330339 () Bool)

(declare-fun e!330340 () Bool)

(assert (=> b!574167 (= e!330339 e!330340)))

(declare-fun lt!262304 () (_ BitVec 64))

(assert (=> b!574167 (= lt!262304 (select (arr!17213 a!3118) j!142))))

(declare-fun lt!262305 () Unit!18040)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35863 (_ BitVec 64) (_ BitVec 32)) Unit!18040)

(assert (=> b!574167 (= lt!262305 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262304 j!142))))

(assert (=> b!574167 (arrayContainsKey!0 a!3118 lt!262304 #b00000000000000000000000000000000)))

(declare-fun lt!262306 () Unit!18040)

(assert (=> b!574167 (= lt!262306 lt!262305)))

(declare-fun res!363184 () Bool)

(assert (=> b!574167 (= res!363184 (= (seekEntryOrOpen!0 (select (arr!17213 a!3118) j!142) a!3118 mask!3119) (Found!5669 j!142)))))

(assert (=> b!574167 (=> (not res!363184) (not e!330340))))

(declare-fun d!84969 () Bool)

(declare-fun res!363183 () Bool)

(declare-fun e!330338 () Bool)

(assert (=> d!84969 (=> res!363183 e!330338)))

(assert (=> d!84969 (= res!363183 (bvsge j!142 (size!17577 a!3118)))))

(assert (=> d!84969 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!330338)))

(declare-fun b!574168 () Bool)

(declare-fun call!32670 () Bool)

(assert (=> b!574168 (= e!330340 call!32670)))

(declare-fun b!574169 () Bool)

(assert (=> b!574169 (= e!330338 e!330339)))

(declare-fun c!65853 () Bool)

(assert (=> b!574169 (= c!65853 (validKeyInArray!0 (select (arr!17213 a!3118) j!142)))))

(declare-fun bm!32667 () Bool)

(assert (=> bm!32667 (= call!32670 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574170 () Bool)

(assert (=> b!574170 (= e!330339 call!32670)))

(assert (= (and d!84969 (not res!363183)) b!574169))

(assert (= (and b!574169 c!65853) b!574167))

(assert (= (and b!574169 (not c!65853)) b!574170))

(assert (= (and b!574167 res!363184) b!574168))

(assert (= (or b!574168 b!574170) bm!32667))

(assert (=> b!574167 m!553023))

(declare-fun m!553129 () Bool)

(assert (=> b!574167 m!553129))

(declare-fun m!553131 () Bool)

(assert (=> b!574167 m!553131))

(assert (=> b!574167 m!553023))

(assert (=> b!574167 m!553037))

(assert (=> b!574169 m!553023))

(assert (=> b!574169 m!553023))

(assert (=> b!574169 m!553029))

(declare-fun m!553133 () Bool)

(assert (=> bm!32667 m!553133))

(assert (=> b!574048 d!84969))

(declare-fun d!84981 () Bool)

(assert (=> d!84981 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262315 () Unit!18040)

(declare-fun choose!38 (array!35863 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18040)

(assert (=> d!84981 (= lt!262315 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84981 (validMask!0 mask!3119)))

(assert (=> d!84981 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!262315)))

(declare-fun bs!17767 () Bool)

(assert (= bs!17767 d!84981))

(assert (=> bs!17767 m!553033))

(declare-fun m!553151 () Bool)

(assert (=> bs!17767 m!553151))

(assert (=> bs!17767 m!553017))

(assert (=> b!574048 d!84981))

(declare-fun b!574187 () Bool)

(declare-fun e!330354 () SeekEntryResult!5669)

(assert (=> b!574187 (= e!330354 Undefined!5669)))

(declare-fun b!574188 () Bool)

(declare-fun e!330352 () SeekEntryResult!5669)

(declare-fun lt!262317 () SeekEntryResult!5669)

(assert (=> b!574188 (= e!330352 (MissingZero!5669 (index!24905 lt!262317)))))

(declare-fun d!84991 () Bool)

(declare-fun lt!262316 () SeekEntryResult!5669)

(assert (=> d!84991 (and (or (is-Undefined!5669 lt!262316) (not (is-Found!5669 lt!262316)) (and (bvsge (index!24904 lt!262316) #b00000000000000000000000000000000) (bvslt (index!24904 lt!262316) (size!17577 lt!262242)))) (or (is-Undefined!5669 lt!262316) (is-Found!5669 lt!262316) (not (is-MissingZero!5669 lt!262316)) (and (bvsge (index!24903 lt!262316) #b00000000000000000000000000000000) (bvslt (index!24903 lt!262316) (size!17577 lt!262242)))) (or (is-Undefined!5669 lt!262316) (is-Found!5669 lt!262316) (is-MissingZero!5669 lt!262316) (not (is-MissingVacant!5669 lt!262316)) (and (bvsge (index!24906 lt!262316) #b00000000000000000000000000000000) (bvslt (index!24906 lt!262316) (size!17577 lt!262242)))) (or (is-Undefined!5669 lt!262316) (ite (is-Found!5669 lt!262316) (= (select (arr!17213 lt!262242) (index!24904 lt!262316)) lt!262245) (ite (is-MissingZero!5669 lt!262316) (= (select (arr!17213 lt!262242) (index!24903 lt!262316)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5669 lt!262316) (= (select (arr!17213 lt!262242) (index!24906 lt!262316)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84991 (= lt!262316 e!330354)))

(declare-fun c!65860 () Bool)

(assert (=> d!84991 (= c!65860 (and (is-Intermediate!5669 lt!262317) (undefined!6481 lt!262317)))))

(assert (=> d!84991 (= lt!262317 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!262245 mask!3119) lt!262245 lt!262242 mask!3119))))

(assert (=> d!84991 (validMask!0 mask!3119)))

(assert (=> d!84991 (= (seekEntryOrOpen!0 lt!262245 lt!262242 mask!3119) lt!262316)))

(declare-fun b!574189 () Bool)

(declare-fun e!330353 () SeekEntryResult!5669)

(assert (=> b!574189 (= e!330354 e!330353)))

(declare-fun lt!262318 () (_ BitVec 64))

(assert (=> b!574189 (= lt!262318 (select (arr!17213 lt!262242) (index!24905 lt!262317)))))

(declare-fun c!65861 () Bool)

(assert (=> b!574189 (= c!65861 (= lt!262318 lt!262245))))

(declare-fun b!574190 () Bool)

(declare-fun c!65859 () Bool)

(assert (=> b!574190 (= c!65859 (= lt!262318 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574190 (= e!330353 e!330352)))

(declare-fun b!574191 () Bool)

(assert (=> b!574191 (= e!330353 (Found!5669 (index!24905 lt!262317)))))

(declare-fun b!574192 () Bool)

(assert (=> b!574192 (= e!330352 (seekKeyOrZeroReturnVacant!0 (x!53807 lt!262317) (index!24905 lt!262317) (index!24905 lt!262317) lt!262245 lt!262242 mask!3119))))

(assert (= (and d!84991 c!65860) b!574187))

(assert (= (and d!84991 (not c!65860)) b!574189))

(assert (= (and b!574189 c!65861) b!574191))

(assert (= (and b!574189 (not c!65861)) b!574190))

(assert (= (and b!574190 c!65859) b!574188))

(assert (= (and b!574190 (not c!65859)) b!574192))

(assert (=> d!84991 m!553017))

(declare-fun m!553153 () Bool)

(assert (=> d!84991 m!553153))

(declare-fun m!553155 () Bool)

(assert (=> d!84991 m!553155))

(assert (=> d!84991 m!553049))

(declare-fun m!553157 () Bool)

(assert (=> d!84991 m!553157))

(declare-fun m!553159 () Bool)

(assert (=> d!84991 m!553159))

(assert (=> d!84991 m!553049))

(declare-fun m!553161 () Bool)

(assert (=> b!574189 m!553161))

(declare-fun m!553163 () Bool)

(assert (=> b!574192 m!553163))

(assert (=> b!574054 d!84991))

(declare-fun b!574214 () Bool)

(declare-fun e!330369 () SeekEntryResult!5669)

(assert (=> b!574214 (= e!330369 Undefined!5669)))

(declare-fun b!574215 () Bool)

(declare-fun e!330368 () SeekEntryResult!5669)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574215 (= e!330368 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53807 lt!262247) #b00000000000000000000000000000001) (nextIndex!0 (index!24905 lt!262247) (x!53807 lt!262247) mask!3119) (index!24905 lt!262247) lt!262245 lt!262242 mask!3119))))

(declare-fun b!574216 () Bool)

(declare-fun e!330367 () SeekEntryResult!5669)

(assert (=> b!574216 (= e!330369 e!330367)))

(declare-fun c!65873 () Bool)

(declare-fun lt!262328 () (_ BitVec 64))

(assert (=> b!574216 (= c!65873 (= lt!262328 lt!262245))))

(declare-fun b!574217 () Bool)

(declare-fun c!65872 () Bool)

(assert (=> b!574217 (= c!65872 (= lt!262328 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574217 (= e!330367 e!330368)))

(declare-fun d!84993 () Bool)

(declare-fun lt!262327 () SeekEntryResult!5669)

(assert (=> d!84993 (and (or (is-Undefined!5669 lt!262327) (not (is-Found!5669 lt!262327)) (and (bvsge (index!24904 lt!262327) #b00000000000000000000000000000000) (bvslt (index!24904 lt!262327) (size!17577 lt!262242)))) (or (is-Undefined!5669 lt!262327) (is-Found!5669 lt!262327) (not (is-MissingVacant!5669 lt!262327)) (not (= (index!24906 lt!262327) (index!24905 lt!262247))) (and (bvsge (index!24906 lt!262327) #b00000000000000000000000000000000) (bvslt (index!24906 lt!262327) (size!17577 lt!262242)))) (or (is-Undefined!5669 lt!262327) (ite (is-Found!5669 lt!262327) (= (select (arr!17213 lt!262242) (index!24904 lt!262327)) lt!262245) (and (is-MissingVacant!5669 lt!262327) (= (index!24906 lt!262327) (index!24905 lt!262247)) (= (select (arr!17213 lt!262242) (index!24906 lt!262327)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84993 (= lt!262327 e!330369)))

(declare-fun c!65871 () Bool)

(assert (=> d!84993 (= c!65871 (bvsge (x!53807 lt!262247) #b01111111111111111111111111111110))))

(assert (=> d!84993 (= lt!262328 (select (arr!17213 lt!262242) (index!24905 lt!262247)))))

(assert (=> d!84993 (validMask!0 mask!3119)))

(assert (=> d!84993 (= (seekKeyOrZeroReturnVacant!0 (x!53807 lt!262247) (index!24905 lt!262247) (index!24905 lt!262247) lt!262245 lt!262242 mask!3119) lt!262327)))

(declare-fun b!574218 () Bool)

(assert (=> b!574218 (= e!330367 (Found!5669 (index!24905 lt!262247)))))

(declare-fun b!574219 () Bool)

(assert (=> b!574219 (= e!330368 (MissingVacant!5669 (index!24905 lt!262247)))))

(assert (= (and d!84993 c!65871) b!574214))

(assert (= (and d!84993 (not c!65871)) b!574216))

(assert (= (and b!574216 c!65873) b!574218))

(assert (= (and b!574216 (not c!65873)) b!574217))

(assert (= (and b!574217 c!65872) b!574219))

(assert (= (and b!574217 (not c!65872)) b!574215))

(declare-fun m!553173 () Bool)

(assert (=> b!574215 m!553173))

(assert (=> b!574215 m!553173))

(declare-fun m!553175 () Bool)

(assert (=> b!574215 m!553175))

(declare-fun m!553177 () Bool)

(assert (=> d!84993 m!553177))

(declare-fun m!553179 () Bool)

(assert (=> d!84993 m!553179))

(declare-fun m!553181 () Bool)

(assert (=> d!84993 m!553181))

(assert (=> d!84993 m!553017))

(assert (=> b!574054 d!84993))

(declare-fun d!85001 () Bool)

(declare-fun res!363198 () Bool)

(declare-fun e!330378 () Bool)

(assert (=> d!85001 (=> res!363198 e!330378)))

(assert (=> d!85001 (= res!363198 (= (select (arr!17213 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!85001 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!330378)))

(declare-fun b!574232 () Bool)

(declare-fun e!330379 () Bool)

(assert (=> b!574232 (= e!330378 e!330379)))

(declare-fun res!363199 () Bool)

(assert (=> b!574232 (=> (not res!363199) (not e!330379))))

(assert (=> b!574232 (= res!363199 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17577 a!3118)))))

(declare-fun b!574233 () Bool)

(assert (=> b!574233 (= e!330379 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85001 (not res!363198)) b!574232))

(assert (= (and b!574232 res!363199) b!574233))

(declare-fun m!553183 () Bool)

(assert (=> d!85001 m!553183))

(declare-fun m!553185 () Bool)

(assert (=> b!574233 m!553185))

(assert (=> b!574049 d!85001))

(declare-fun d!85003 () Bool)

(assert (=> d!85003 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52638 d!85003))

(declare-fun d!85007 () Bool)

(assert (=> d!85007 (= (array_inv!12987 a!3118) (bvsge (size!17577 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52638 d!85007))

(declare-fun b!574298 () Bool)

(declare-fun e!330421 () Bool)

(declare-fun e!330423 () Bool)

(assert (=> b!574298 (= e!330421 e!330423)))

(declare-fun res!363227 () Bool)

(assert (=> b!574298 (=> (not res!363227) (not e!330423))))

(declare-fun e!330422 () Bool)

(assert (=> b!574298 (= res!363227 (not e!330422))))

(declare-fun res!363225 () Bool)

(assert (=> b!574298 (=> (not res!363225) (not e!330422))))

(assert (=> b!574298 (= res!363225 (validKeyInArray!0 (select (arr!17213 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574299 () Bool)

(declare-fun e!330420 () Bool)

(declare-fun call!32679 () Bool)

(assert (=> b!574299 (= e!330420 call!32679)))

(declare-fun b!574300 () Bool)

(assert (=> b!574300 (= e!330423 e!330420)))

(declare-fun c!65898 () Bool)

(assert (=> b!574300 (= c!65898 (validKeyInArray!0 (select (arr!17213 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574301 () Bool)

(declare-fun contains!2894 (List!11346 (_ BitVec 64)) Bool)

(assert (=> b!574301 (= e!330422 (contains!2894 Nil!11343 (select (arr!17213 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!85011 () Bool)

(declare-fun res!363226 () Bool)

(assert (=> d!85011 (=> res!363226 e!330421)))

(assert (=> d!85011 (= res!363226 (bvsge #b00000000000000000000000000000000 (size!17577 a!3118)))))

(assert (=> d!85011 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11343) e!330421)))

(declare-fun b!574302 () Bool)

(assert (=> b!574302 (= e!330420 call!32679)))

(declare-fun bm!32676 () Bool)

(assert (=> bm!32676 (= call!32679 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65898 (Cons!11342 (select (arr!17213 a!3118) #b00000000000000000000000000000000) Nil!11343) Nil!11343)))))

(assert (= (and d!85011 (not res!363226)) b!574298))

(assert (= (and b!574298 res!363225) b!574301))

(assert (= (and b!574298 res!363227) b!574300))

(assert (= (and b!574300 c!65898) b!574299))

(assert (= (and b!574300 (not c!65898)) b!574302))

(assert (= (or b!574299 b!574302) bm!32676))

(assert (=> b!574298 m!553183))

(assert (=> b!574298 m!553183))

(declare-fun m!553223 () Bool)

(assert (=> b!574298 m!553223))

(assert (=> b!574300 m!553183))

(assert (=> b!574300 m!553183))

(assert (=> b!574300 m!553223))

(assert (=> b!574301 m!553183))

(assert (=> b!574301 m!553183))

(declare-fun m!553225 () Bool)

(assert (=> b!574301 m!553225))

(assert (=> bm!32676 m!553183))

(declare-fun m!553227 () Bool)

(assert (=> bm!32676 m!553227))

(assert (=> b!574050 d!85011))

(declare-fun b!574378 () Bool)

(declare-fun lt!262375 () SeekEntryResult!5669)

(assert (=> b!574378 (and (bvsge (index!24905 lt!262375) #b00000000000000000000000000000000) (bvslt (index!24905 lt!262375) (size!17577 lt!262242)))))

(declare-fun res!363264 () Bool)

(assert (=> b!574378 (= res!363264 (= (select (arr!17213 lt!262242) (index!24905 lt!262375)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330474 () Bool)

(assert (=> b!574378 (=> res!363264 e!330474)))

(declare-fun b!574379 () Bool)

(assert (=> b!574379 (and (bvsge (index!24905 lt!262375) #b00000000000000000000000000000000) (bvslt (index!24905 lt!262375) (size!17577 lt!262242)))))

(declare-fun res!363262 () Bool)

(assert (=> b!574379 (= res!363262 (= (select (arr!17213 lt!262242) (index!24905 lt!262375)) lt!262245))))

(assert (=> b!574379 (=> res!363262 e!330474)))

(declare-fun e!330476 () Bool)

(assert (=> b!574379 (= e!330476 e!330474)))

(declare-fun b!574380 () Bool)

(declare-fun e!330472 () Bool)

(assert (=> b!574380 (= e!330472 (bvsge (x!53807 lt!262375) #b01111111111111111111111111111110))))

(declare-fun b!574381 () Bool)

(declare-fun e!330473 () SeekEntryResult!5669)

(assert (=> b!574381 (= e!330473 (Intermediate!5669 true lt!262243 #b00000000000000000000000000000000))))

(declare-fun b!574382 () Bool)

(declare-fun e!330475 () SeekEntryResult!5669)

(assert (=> b!574382 (= e!330475 (Intermediate!5669 false lt!262243 #b00000000000000000000000000000000))))

(declare-fun b!574383 () Bool)

(assert (=> b!574383 (and (bvsge (index!24905 lt!262375) #b00000000000000000000000000000000) (bvslt (index!24905 lt!262375) (size!17577 lt!262242)))))

(assert (=> b!574383 (= e!330474 (= (select (arr!17213 lt!262242) (index!24905 lt!262375)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574384 () Bool)

(assert (=> b!574384 (= e!330472 e!330476)))

(declare-fun res!363263 () Bool)

(assert (=> b!574384 (= res!363263 (and (is-Intermediate!5669 lt!262375) (not (undefined!6481 lt!262375)) (bvslt (x!53807 lt!262375) #b01111111111111111111111111111110) (bvsge (x!53807 lt!262375) #b00000000000000000000000000000000) (bvsge (x!53807 lt!262375) #b00000000000000000000000000000000)))))

(assert (=> b!574384 (=> (not res!363263) (not e!330476))))

(declare-fun b!574385 () Bool)

(assert (=> b!574385 (= e!330473 e!330475)))

(declare-fun c!65922 () Bool)

(declare-fun lt!262374 () (_ BitVec 64))

(assert (=> b!574385 (= c!65922 (or (= lt!262374 lt!262245) (= (bvadd lt!262374 lt!262374) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!85023 () Bool)

(assert (=> d!85023 e!330472))

(declare-fun c!65921 () Bool)

(assert (=> d!85023 (= c!65921 (and (is-Intermediate!5669 lt!262375) (undefined!6481 lt!262375)))))

(assert (=> d!85023 (= lt!262375 e!330473)))

(declare-fun c!65920 () Bool)

(assert (=> d!85023 (= c!65920 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85023 (= lt!262374 (select (arr!17213 lt!262242) lt!262243))))

(assert (=> d!85023 (validMask!0 mask!3119)))

(assert (=> d!85023 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262243 lt!262245 lt!262242 mask!3119) lt!262375)))

(declare-fun b!574386 () Bool)

(assert (=> b!574386 (= e!330475 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262243 #b00000000000000000000000000000000 mask!3119) lt!262245 lt!262242 mask!3119))))

(assert (= (and d!85023 c!65920) b!574381))

(assert (= (and d!85023 (not c!65920)) b!574385))

(assert (= (and b!574385 c!65922) b!574382))

(assert (= (and b!574385 (not c!65922)) b!574386))

(assert (= (and d!85023 c!65921) b!574380))

(assert (= (and d!85023 (not c!65921)) b!574384))

(assert (= (and b!574384 res!363263) b!574379))

(assert (= (and b!574379 (not res!363262)) b!574378))

(assert (= (and b!574378 (not res!363264)) b!574383))

(declare-fun m!553251 () Bool)

(assert (=> b!574383 m!553251))

(assert (=> b!574378 m!553251))

(assert (=> b!574379 m!553251))

(declare-fun m!553253 () Bool)

(assert (=> d!85023 m!553253))

(assert (=> d!85023 m!553017))

(declare-fun m!553255 () Bool)

(assert (=> b!574386 m!553255))

(assert (=> b!574386 m!553255))

(declare-fun m!553257 () Bool)

(assert (=> b!574386 m!553257))

(assert (=> b!574056 d!85023))

(declare-fun b!574387 () Bool)

(declare-fun lt!262377 () SeekEntryResult!5669)

(assert (=> b!574387 (and (bvsge (index!24905 lt!262377) #b00000000000000000000000000000000) (bvslt (index!24905 lt!262377) (size!17577 a!3118)))))

(declare-fun res!363267 () Bool)

(assert (=> b!574387 (= res!363267 (= (select (arr!17213 a!3118) (index!24905 lt!262377)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330479 () Bool)

(assert (=> b!574387 (=> res!363267 e!330479)))

(declare-fun b!574388 () Bool)

(assert (=> b!574388 (and (bvsge (index!24905 lt!262377) #b00000000000000000000000000000000) (bvslt (index!24905 lt!262377) (size!17577 a!3118)))))

(declare-fun res!363265 () Bool)

(assert (=> b!574388 (= res!363265 (= (select (arr!17213 a!3118) (index!24905 lt!262377)) (select (arr!17213 a!3118) j!142)))))

(assert (=> b!574388 (=> res!363265 e!330479)))

(declare-fun e!330481 () Bool)

(assert (=> b!574388 (= e!330481 e!330479)))

(declare-fun b!574389 () Bool)

(declare-fun e!330477 () Bool)

(assert (=> b!574389 (= e!330477 (bvsge (x!53807 lt!262377) #b01111111111111111111111111111110))))

(declare-fun b!574390 () Bool)

(declare-fun e!330478 () SeekEntryResult!5669)

(assert (=> b!574390 (= e!330478 (Intermediate!5669 true lt!262249 #b00000000000000000000000000000000))))

(declare-fun b!574391 () Bool)

(declare-fun e!330480 () SeekEntryResult!5669)

(assert (=> b!574391 (= e!330480 (Intermediate!5669 false lt!262249 #b00000000000000000000000000000000))))

(declare-fun b!574392 () Bool)

(assert (=> b!574392 (and (bvsge (index!24905 lt!262377) #b00000000000000000000000000000000) (bvslt (index!24905 lt!262377) (size!17577 a!3118)))))

(assert (=> b!574392 (= e!330479 (= (select (arr!17213 a!3118) (index!24905 lt!262377)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574393 () Bool)

(assert (=> b!574393 (= e!330477 e!330481)))

(declare-fun res!363266 () Bool)

(assert (=> b!574393 (= res!363266 (and (is-Intermediate!5669 lt!262377) (not (undefined!6481 lt!262377)) (bvslt (x!53807 lt!262377) #b01111111111111111111111111111110) (bvsge (x!53807 lt!262377) #b00000000000000000000000000000000) (bvsge (x!53807 lt!262377) #b00000000000000000000000000000000)))))

(assert (=> b!574393 (=> (not res!363266) (not e!330481))))

(declare-fun b!574394 () Bool)

(assert (=> b!574394 (= e!330478 e!330480)))

(declare-fun lt!262376 () (_ BitVec 64))

(declare-fun c!65925 () Bool)

(assert (=> b!574394 (= c!65925 (or (= lt!262376 (select (arr!17213 a!3118) j!142)) (= (bvadd lt!262376 lt!262376) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!85031 () Bool)

(assert (=> d!85031 e!330477))

(declare-fun c!65924 () Bool)

(assert (=> d!85031 (= c!65924 (and (is-Intermediate!5669 lt!262377) (undefined!6481 lt!262377)))))

(assert (=> d!85031 (= lt!262377 e!330478)))

(declare-fun c!65923 () Bool)

(assert (=> d!85031 (= c!65923 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85031 (= lt!262376 (select (arr!17213 a!3118) lt!262249))))

(assert (=> d!85031 (validMask!0 mask!3119)))

(assert (=> d!85031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262249 (select (arr!17213 a!3118) j!142) a!3118 mask!3119) lt!262377)))

(declare-fun b!574395 () Bool)

(assert (=> b!574395 (= e!330480 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262249 #b00000000000000000000000000000000 mask!3119) (select (arr!17213 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!85031 c!65923) b!574390))

(assert (= (and d!85031 (not c!65923)) b!574394))

(assert (= (and b!574394 c!65925) b!574391))

(assert (= (and b!574394 (not c!65925)) b!574395))

(assert (= (and d!85031 c!65924) b!574389))

(assert (= (and d!85031 (not c!65924)) b!574393))

(assert (= (and b!574393 res!363266) b!574388))

(assert (= (and b!574388 (not res!363265)) b!574387))

(assert (= (and b!574387 (not res!363267)) b!574392))

(declare-fun m!553259 () Bool)

(assert (=> b!574392 m!553259))

(assert (=> b!574387 m!553259))

(assert (=> b!574388 m!553259))

(declare-fun m!553261 () Bool)

(assert (=> d!85031 m!553261))

(assert (=> d!85031 m!553017))

(declare-fun m!553263 () Bool)

(assert (=> b!574395 m!553263))

(assert (=> b!574395 m!553263))

(assert (=> b!574395 m!553023))

(declare-fun m!553265 () Bool)

(assert (=> b!574395 m!553265))

(assert (=> b!574056 d!85031))

(declare-fun d!85033 () Bool)

(declare-fun lt!262397 () (_ BitVec 32))

(declare-fun lt!262396 () (_ BitVec 32))

(assert (=> d!85033 (= lt!262397 (bvmul (bvxor lt!262396 (bvlshr lt!262396 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85033 (= lt!262396 ((_ extract 31 0) (bvand (bvxor lt!262245 (bvlshr lt!262245 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85033 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363268 (let ((h!12378 ((_ extract 31 0) (bvand (bvxor lt!262245 (bvlshr lt!262245 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53816 (bvmul (bvxor h!12378 (bvlshr h!12378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53816 (bvlshr x!53816 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363268 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363268 #b00000000000000000000000000000000))))))

(assert (=> d!85033 (= (toIndex!0 lt!262245 mask!3119) (bvand (bvxor lt!262397 (bvlshr lt!262397 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574056 d!85033))

(declare-fun d!85045 () Bool)

(declare-fun lt!262402 () (_ BitVec 32))

(declare-fun lt!262401 () (_ BitVec 32))

(assert (=> d!85045 (= lt!262402 (bvmul (bvxor lt!262401 (bvlshr lt!262401 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85045 (= lt!262401 ((_ extract 31 0) (bvand (bvxor (select (arr!17213 a!3118) j!142) (bvlshr (select (arr!17213 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

