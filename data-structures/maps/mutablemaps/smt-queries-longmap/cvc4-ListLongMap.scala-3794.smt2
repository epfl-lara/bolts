; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52080 () Bool)

(assert start!52080)

(declare-fun b!568320 () Bool)

(declare-fun res!358678 () Bool)

(declare-fun e!327006 () Bool)

(assert (=> b!568320 (=> (not res!358678) (not e!327006))))

(declare-datatypes ((array!35614 0))(
  ( (array!35615 (arr!17096 (Array (_ BitVec 32) (_ BitVec 64))) (size!17460 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35614)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35614 (_ BitVec 32)) Bool)

(assert (=> b!568320 (= res!358678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5552 0))(
  ( (MissingZero!5552 (index!24435 (_ BitVec 32))) (Found!5552 (index!24436 (_ BitVec 32))) (Intermediate!5552 (undefined!6364 Bool) (index!24437 (_ BitVec 32)) (x!53336 (_ BitVec 32))) (Undefined!5552) (MissingVacant!5552 (index!24438 (_ BitVec 32))) )
))
(declare-fun lt!258956 () SeekEntryResult!5552)

(declare-fun b!568321 () Bool)

(declare-fun lt!258957 () SeekEntryResult!5552)

(declare-fun e!327005 () Bool)

(assert (=> b!568321 (= e!327005 (not (or (not (is-Intermediate!5552 lt!258956)) (undefined!6364 lt!258956) (= (select (arr!17096 a!3118) (index!24437 lt!258956)) (select (arr!17096 a!3118) j!142)) (not (= (select (arr!17096 a!3118) (index!24437 lt!258956)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!258957 (MissingZero!5552 (index!24437 lt!258956))))))))

(assert (=> b!568321 (= lt!258957 (Found!5552 j!142))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35614 (_ BitVec 32)) SeekEntryResult!5552)

(assert (=> b!568321 (= lt!258957 (seekEntryOrOpen!0 (select (arr!17096 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568321 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17806 0))(
  ( (Unit!17807) )
))
(declare-fun lt!258955 () Unit!17806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17806)

(assert (=> b!568321 (= lt!258955 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568322 () Bool)

(declare-fun res!358675 () Bool)

(declare-fun e!327007 () Bool)

(assert (=> b!568322 (=> (not res!358675) (not e!327007))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568322 (= res!358675 (validKeyInArray!0 k!1914))))

(declare-fun res!358679 () Bool)

(assert (=> start!52080 (=> (not res!358679) (not e!327007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52080 (= res!358679 (validMask!0 mask!3119))))

(assert (=> start!52080 e!327007))

(assert (=> start!52080 true))

(declare-fun array_inv!12870 (array!35614) Bool)

(assert (=> start!52080 (array_inv!12870 a!3118)))

(declare-fun b!568323 () Bool)

(declare-fun res!358677 () Bool)

(assert (=> b!568323 (=> (not res!358677) (not e!327007))))

(assert (=> b!568323 (= res!358677 (validKeyInArray!0 (select (arr!17096 a!3118) j!142)))))

(declare-fun b!568324 () Bool)

(declare-fun res!358674 () Bool)

(assert (=> b!568324 (=> (not res!358674) (not e!327006))))

(declare-datatypes ((List!11229 0))(
  ( (Nil!11226) (Cons!11225 (h!12243 (_ BitVec 64)) (t!17465 List!11229)) )
))
(declare-fun arrayNoDuplicates!0 (array!35614 (_ BitVec 32) List!11229) Bool)

(assert (=> b!568324 (= res!358674 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11226))))

(declare-fun b!568325 () Bool)

(assert (=> b!568325 (= e!327007 e!327006)))

(declare-fun res!358676 () Bool)

(assert (=> b!568325 (=> (not res!358676) (not e!327006))))

(declare-fun lt!258959 () SeekEntryResult!5552)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568325 (= res!358676 (or (= lt!258959 (MissingZero!5552 i!1132)) (= lt!258959 (MissingVacant!5552 i!1132))))))

(assert (=> b!568325 (= lt!258959 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568326 () Bool)

(declare-fun res!358671 () Bool)

(assert (=> b!568326 (=> (not res!358671) (not e!327007))))

(assert (=> b!568326 (= res!358671 (and (= (size!17460 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17460 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17460 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568327 () Bool)

(assert (=> b!568327 (= e!327006 e!327005)))

(declare-fun res!358672 () Bool)

(assert (=> b!568327 (=> (not res!358672) (not e!327005))))

(declare-fun lt!258958 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35614 (_ BitVec 32)) SeekEntryResult!5552)

(assert (=> b!568327 (= res!358672 (= lt!258956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258958 (select (store (arr!17096 a!3118) i!1132 k!1914) j!142) (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118)) mask!3119)))))

(declare-fun lt!258954 () (_ BitVec 32))

(assert (=> b!568327 (= lt!258956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258954 (select (arr!17096 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568327 (= lt!258958 (toIndex!0 (select (store (arr!17096 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568327 (= lt!258954 (toIndex!0 (select (arr!17096 a!3118) j!142) mask!3119))))

(declare-fun b!568328 () Bool)

(declare-fun res!358673 () Bool)

(assert (=> b!568328 (=> (not res!358673) (not e!327007))))

(declare-fun arrayContainsKey!0 (array!35614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568328 (= res!358673 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52080 res!358679) b!568326))

(assert (= (and b!568326 res!358671) b!568323))

(assert (= (and b!568323 res!358677) b!568322))

(assert (= (and b!568322 res!358675) b!568328))

(assert (= (and b!568328 res!358673) b!568325))

(assert (= (and b!568325 res!358676) b!568320))

(assert (= (and b!568320 res!358678) b!568324))

(assert (= (and b!568324 res!358674) b!568327))

(assert (= (and b!568327 res!358672) b!568321))

(declare-fun m!546917 () Bool)

(assert (=> start!52080 m!546917))

(declare-fun m!546919 () Bool)

(assert (=> start!52080 m!546919))

(declare-fun m!546921 () Bool)

(assert (=> b!568328 m!546921))

(declare-fun m!546923 () Bool)

(assert (=> b!568323 m!546923))

(assert (=> b!568323 m!546923))

(declare-fun m!546925 () Bool)

(assert (=> b!568323 m!546925))

(declare-fun m!546927 () Bool)

(assert (=> b!568322 m!546927))

(declare-fun m!546929 () Bool)

(assert (=> b!568325 m!546929))

(assert (=> b!568321 m!546923))

(declare-fun m!546931 () Bool)

(assert (=> b!568321 m!546931))

(declare-fun m!546933 () Bool)

(assert (=> b!568321 m!546933))

(declare-fun m!546935 () Bool)

(assert (=> b!568321 m!546935))

(assert (=> b!568321 m!546923))

(declare-fun m!546937 () Bool)

(assert (=> b!568321 m!546937))

(declare-fun m!546939 () Bool)

(assert (=> b!568320 m!546939))

(declare-fun m!546941 () Bool)

(assert (=> b!568324 m!546941))

(declare-fun m!546943 () Bool)

(assert (=> b!568327 m!546943))

(declare-fun m!546945 () Bool)

(assert (=> b!568327 m!546945))

(assert (=> b!568327 m!546923))

(declare-fun m!546947 () Bool)

(assert (=> b!568327 m!546947))

(assert (=> b!568327 m!546923))

(assert (=> b!568327 m!546943))

(assert (=> b!568327 m!546923))

(declare-fun m!546949 () Bool)

(assert (=> b!568327 m!546949))

(declare-fun m!546951 () Bool)

(assert (=> b!568327 m!546951))

(assert (=> b!568327 m!546943))

(declare-fun m!546953 () Bool)

(assert (=> b!568327 m!546953))

(push 1)

(assert (not b!568322))

(assert (not b!568324))

(assert (not b!568327))

(assert (not b!568328))

(assert (not b!568321))

(assert (not b!568320))

(assert (not start!52080))

(assert (not b!568323))

(assert (not b!568325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84389 () Bool)

(declare-fun res!358712 () Bool)

(declare-fun e!327053 () Bool)

(assert (=> d!84389 (=> res!358712 e!327053)))

(assert (=> d!84389 (= res!358712 (= (select (arr!17096 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84389 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!327053)))

(declare-fun b!568396 () Bool)

(declare-fun e!327054 () Bool)

(assert (=> b!568396 (= e!327053 e!327054)))

(declare-fun res!358713 () Bool)

(assert (=> b!568396 (=> (not res!358713) (not e!327054))))

(assert (=> b!568396 (= res!358713 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17460 a!3118)))))

(declare-fun b!568397 () Bool)

(assert (=> b!568397 (= e!327054 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84389 (not res!358712)) b!568396))

(assert (= (and b!568396 res!358713) b!568397))

(declare-fun m!546987 () Bool)

(assert (=> d!84389 m!546987))

(declare-fun m!546989 () Bool)

(assert (=> b!568397 m!546989))

(assert (=> b!568328 d!84389))

(declare-fun d!84391 () Bool)

(assert (=> d!84391 (= (validKeyInArray!0 (select (arr!17096 a!3118) j!142)) (and (not (= (select (arr!17096 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17096 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!568323 d!84391))

(declare-fun d!84397 () Bool)

(declare-fun res!358732 () Bool)

(declare-fun e!327082 () Bool)

(assert (=> d!84397 (=> res!358732 e!327082)))

(assert (=> d!84397 (= res!358732 (bvsge #b00000000000000000000000000000000 (size!17460 a!3118)))))

(assert (=> d!84397 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11226) e!327082)))

(declare-fun b!568432 () Bool)

(declare-fun e!327080 () Bool)

(declare-fun call!32567 () Bool)

(assert (=> b!568432 (= e!327080 call!32567)))

(declare-fun b!568433 () Bool)

(declare-fun e!327079 () Bool)

(declare-fun contains!2880 (List!11229 (_ BitVec 64)) Bool)

(assert (=> b!568433 (= e!327079 (contains!2880 Nil!11226 (select (arr!17096 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568434 () Bool)

(declare-fun e!327081 () Bool)

(assert (=> b!568434 (= e!327081 e!327080)))

(declare-fun c!65204 () Bool)

(assert (=> b!568434 (= c!65204 (validKeyInArray!0 (select (arr!17096 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568435 () Bool)

(assert (=> b!568435 (= e!327080 call!32567)))

(declare-fun b!568436 () Bool)

(assert (=> b!568436 (= e!327082 e!327081)))

(declare-fun res!358734 () Bool)

(assert (=> b!568436 (=> (not res!358734) (not e!327081))))

(assert (=> b!568436 (= res!358734 (not e!327079))))

(declare-fun res!358733 () Bool)

(assert (=> b!568436 (=> (not res!358733) (not e!327079))))

(assert (=> b!568436 (= res!358733 (validKeyInArray!0 (select (arr!17096 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32564 () Bool)

(assert (=> bm!32564 (= call!32567 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65204 (Cons!11225 (select (arr!17096 a!3118) #b00000000000000000000000000000000) Nil!11226) Nil!11226)))))

(assert (= (and d!84397 (not res!358732)) b!568436))

(assert (= (and b!568436 res!358733) b!568433))

(assert (= (and b!568436 res!358734) b!568434))

(assert (= (and b!568434 c!65204) b!568435))

(assert (= (and b!568434 (not c!65204)) b!568432))

(assert (= (or b!568435 b!568432) bm!32564))

(assert (=> b!568433 m!546987))

(assert (=> b!568433 m!546987))

(declare-fun m!546995 () Bool)

(assert (=> b!568433 m!546995))

(assert (=> b!568434 m!546987))

(assert (=> b!568434 m!546987))

(declare-fun m!546997 () Bool)

(assert (=> b!568434 m!546997))

(assert (=> b!568436 m!546987))

(assert (=> b!568436 m!546987))

(assert (=> b!568436 m!546997))

(assert (=> bm!32564 m!546987))

(declare-fun m!546999 () Bool)

(assert (=> bm!32564 m!546999))

(assert (=> b!568324 d!84397))

(declare-fun d!84403 () Bool)

(assert (=> d!84403 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52080 d!84403))

(declare-fun d!84415 () Bool)

(assert (=> d!84415 (= (array_inv!12870 a!3118) (bvsge (size!17460 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52080 d!84415))

(declare-fun d!84417 () Bool)

(declare-fun lt!259034 () SeekEntryResult!5552)

(assert (=> d!84417 (and (or (is-Undefined!5552 lt!259034) (not (is-Found!5552 lt!259034)) (and (bvsge (index!24436 lt!259034) #b00000000000000000000000000000000) (bvslt (index!24436 lt!259034) (size!17460 a!3118)))) (or (is-Undefined!5552 lt!259034) (is-Found!5552 lt!259034) (not (is-MissingZero!5552 lt!259034)) (and (bvsge (index!24435 lt!259034) #b00000000000000000000000000000000) (bvslt (index!24435 lt!259034) (size!17460 a!3118)))) (or (is-Undefined!5552 lt!259034) (is-Found!5552 lt!259034) (is-MissingZero!5552 lt!259034) (not (is-MissingVacant!5552 lt!259034)) (and (bvsge (index!24438 lt!259034) #b00000000000000000000000000000000) (bvslt (index!24438 lt!259034) (size!17460 a!3118)))) (or (is-Undefined!5552 lt!259034) (ite (is-Found!5552 lt!259034) (= (select (arr!17096 a!3118) (index!24436 lt!259034)) k!1914) (ite (is-MissingZero!5552 lt!259034) (= (select (arr!17096 a!3118) (index!24435 lt!259034)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5552 lt!259034) (= (select (arr!17096 a!3118) (index!24438 lt!259034)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!327124 () SeekEntryResult!5552)

(assert (=> d!84417 (= lt!259034 e!327124)))

(declare-fun c!65232 () Bool)

(declare-fun lt!259032 () SeekEntryResult!5552)

(assert (=> d!84417 (= c!65232 (and (is-Intermediate!5552 lt!259032) (undefined!6364 lt!259032)))))

(assert (=> d!84417 (= lt!259032 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84417 (validMask!0 mask!3119)))

(assert (=> d!84417 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!259034)))

(declare-fun b!568505 () Bool)

(declare-fun e!327122 () SeekEntryResult!5552)

(assert (=> b!568505 (= e!327122 (MissingZero!5552 (index!24437 lt!259032)))))

(declare-fun b!568506 () Bool)

(declare-fun e!327123 () SeekEntryResult!5552)

(assert (=> b!568506 (= e!327124 e!327123)))

(declare-fun lt!259033 () (_ BitVec 64))

(assert (=> b!568506 (= lt!259033 (select (arr!17096 a!3118) (index!24437 lt!259032)))))

(declare-fun c!65234 () Bool)

(assert (=> b!568506 (= c!65234 (= lt!259033 k!1914))))

(declare-fun b!568507 () Bool)

(assert (=> b!568507 (= e!327124 Undefined!5552)))

(declare-fun b!568508 () Bool)

(declare-fun c!65233 () Bool)

(assert (=> b!568508 (= c!65233 (= lt!259033 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568508 (= e!327123 e!327122)))

(declare-fun b!568509 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35614 (_ BitVec 32)) SeekEntryResult!5552)

(assert (=> b!568509 (= e!327122 (seekKeyOrZeroReturnVacant!0 (x!53336 lt!259032) (index!24437 lt!259032) (index!24437 lt!259032) k!1914 a!3118 mask!3119))))

(declare-fun b!568510 () Bool)

(assert (=> b!568510 (= e!327123 (Found!5552 (index!24437 lt!259032)))))

(assert (= (and d!84417 c!65232) b!568507))

(assert (= (and d!84417 (not c!65232)) b!568506))

(assert (= (and b!568506 c!65234) b!568510))

(assert (= (and b!568506 (not c!65234)) b!568508))

(assert (= (and b!568508 c!65233) b!568505))

(assert (= (and b!568508 (not c!65233)) b!568509))

(declare-fun m!547045 () Bool)

(assert (=> d!84417 m!547045))

(assert (=> d!84417 m!546917))

(declare-fun m!547047 () Bool)

(assert (=> d!84417 m!547047))

(declare-fun m!547049 () Bool)

(assert (=> d!84417 m!547049))

(declare-fun m!547051 () Bool)

(assert (=> d!84417 m!547051))

(assert (=> d!84417 m!547047))

(declare-fun m!547053 () Bool)

(assert (=> d!84417 m!547053))

(declare-fun m!547055 () Bool)

(assert (=> b!568506 m!547055))

(declare-fun m!547057 () Bool)

(assert (=> b!568509 m!547057))

(assert (=> b!568325 d!84417))

(declare-fun bm!32572 () Bool)

(declare-fun call!32575 () Bool)

(assert (=> bm!32572 (= call!32575 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!568549 () Bool)

(declare-fun e!327150 () Bool)

(declare-fun e!327151 () Bool)

(assert (=> b!568549 (= e!327150 e!327151)))

(declare-fun c!65248 () Bool)

(assert (=> b!568549 (= c!65248 (validKeyInArray!0 (select (arr!17096 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!568550 () Bool)

(declare-fun e!327152 () Bool)

(assert (=> b!568550 (= e!327151 e!327152)))

(declare-fun lt!259056 () (_ BitVec 64))

(assert (=> b!568550 (= lt!259056 (select (arr!17096 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!259055 () Unit!17806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35614 (_ BitVec 64) (_ BitVec 32)) Unit!17806)

(assert (=> b!568550 (= lt!259055 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259056 #b00000000000000000000000000000000))))

(assert (=> b!568550 (arrayContainsKey!0 a!3118 lt!259056 #b00000000000000000000000000000000)))

(declare-fun lt!259057 () Unit!17806)

(assert (=> b!568550 (= lt!259057 lt!259055)))

(declare-fun res!358763 () Bool)

(assert (=> b!568550 (= res!358763 (= (seekEntryOrOpen!0 (select (arr!17096 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5552 #b00000000000000000000000000000000)))))

(assert (=> b!568550 (=> (not res!358763) (not e!327152))))

(declare-fun b!568551 () Bool)

(assert (=> b!568551 (= e!327151 call!32575)))

(declare-fun d!84427 () Bool)

(declare-fun res!358762 () Bool)

(assert (=> d!84427 (=> res!358762 e!327150)))

(assert (=> d!84427 (= res!358762 (bvsge #b00000000000000000000000000000000 (size!17460 a!3118)))))

(assert (=> d!84427 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!327150)))

(declare-fun b!568552 () Bool)

(assert (=> b!568552 (= e!327152 call!32575)))

(assert (= (and d!84427 (not res!358762)) b!568549))

(assert (= (and b!568549 c!65248) b!568550))

(assert (= (and b!568549 (not c!65248)) b!568551))

(assert (= (and b!568550 res!358763) b!568552))

(assert (= (or b!568552 b!568551) bm!32572))

(declare-fun m!547095 () Bool)

(assert (=> bm!32572 m!547095))

(assert (=> b!568549 m!546987))

(assert (=> b!568549 m!546987))

(assert (=> b!568549 m!546997))

(assert (=> b!568550 m!546987))

(declare-fun m!547097 () Bool)

(assert (=> b!568550 m!547097))

(declare-fun m!547099 () Bool)

(assert (=> b!568550 m!547099))

(assert (=> b!568550 m!546987))

(declare-fun m!547101 () Bool)

(assert (=> b!568550 m!547101))

(assert (=> b!568320 d!84427))

(declare-fun d!84439 () Bool)

(declare-fun lt!259063 () SeekEntryResult!5552)

(assert (=> d!84439 (and (or (is-Undefined!5552 lt!259063) (not (is-Found!5552 lt!259063)) (and (bvsge (index!24436 lt!259063) #b00000000000000000000000000000000) (bvslt (index!24436 lt!259063) (size!17460 a!3118)))) (or (is-Undefined!5552 lt!259063) (is-Found!5552 lt!259063) (not (is-MissingZero!5552 lt!259063)) (and (bvsge (index!24435 lt!259063) #b00000000000000000000000000000000) (bvslt (index!24435 lt!259063) (size!17460 a!3118)))) (or (is-Undefined!5552 lt!259063) (is-Found!5552 lt!259063) (is-MissingZero!5552 lt!259063) (not (is-MissingVacant!5552 lt!259063)) (and (bvsge (index!24438 lt!259063) #b00000000000000000000000000000000) (bvslt (index!24438 lt!259063) (size!17460 a!3118)))) (or (is-Undefined!5552 lt!259063) (ite (is-Found!5552 lt!259063) (= (select (arr!17096 a!3118) (index!24436 lt!259063)) (select (arr!17096 a!3118) j!142)) (ite (is-MissingZero!5552 lt!259063) (= (select (arr!17096 a!3118) (index!24435 lt!259063)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5552 lt!259063) (= (select (arr!17096 a!3118) (index!24438 lt!259063)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!327155 () SeekEntryResult!5552)

(assert (=> d!84439 (= lt!259063 e!327155)))

(declare-fun c!65249 () Bool)

(declare-fun lt!259061 () SeekEntryResult!5552)

(assert (=> d!84439 (= c!65249 (and (is-Intermediate!5552 lt!259061) (undefined!6364 lt!259061)))))

(assert (=> d!84439 (= lt!259061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17096 a!3118) j!142) mask!3119) (select (arr!17096 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84439 (validMask!0 mask!3119)))

(assert (=> d!84439 (= (seekEntryOrOpen!0 (select (arr!17096 a!3118) j!142) a!3118 mask!3119) lt!259063)))

(declare-fun b!568553 () Bool)

(declare-fun e!327153 () SeekEntryResult!5552)

(assert (=> b!568553 (= e!327153 (MissingZero!5552 (index!24437 lt!259061)))))

(declare-fun b!568554 () Bool)

(declare-fun e!327154 () SeekEntryResult!5552)

(assert (=> b!568554 (= e!327155 e!327154)))

(declare-fun lt!259062 () (_ BitVec 64))

(assert (=> b!568554 (= lt!259062 (select (arr!17096 a!3118) (index!24437 lt!259061)))))

(declare-fun c!65251 () Bool)

(assert (=> b!568554 (= c!65251 (= lt!259062 (select (arr!17096 a!3118) j!142)))))

(declare-fun b!568555 () Bool)

(assert (=> b!568555 (= e!327155 Undefined!5552)))

(declare-fun b!568556 () Bool)

(declare-fun c!65250 () Bool)

(assert (=> b!568556 (= c!65250 (= lt!259062 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568556 (= e!327154 e!327153)))

(declare-fun b!568557 () Bool)

(assert (=> b!568557 (= e!327153 (seekKeyOrZeroReturnVacant!0 (x!53336 lt!259061) (index!24437 lt!259061) (index!24437 lt!259061) (select (arr!17096 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!568558 () Bool)

(assert (=> b!568558 (= e!327154 (Found!5552 (index!24437 lt!259061)))))

(assert (= (and d!84439 c!65249) b!568555))

(assert (= (and d!84439 (not c!65249)) b!568554))

(assert (= (and b!568554 c!65251) b!568558))

(assert (= (and b!568554 (not c!65251)) b!568556))

(assert (= (and b!568556 c!65250) b!568553))

(assert (= (and b!568556 (not c!65250)) b!568557))

(declare-fun m!547105 () Bool)

(assert (=> d!84439 m!547105))

(assert (=> d!84439 m!546917))

(assert (=> d!84439 m!546923))

(assert (=> d!84439 m!546947))

(declare-fun m!547109 () Bool)

(assert (=> d!84439 m!547109))

(declare-fun m!547115 () Bool)

(assert (=> d!84439 m!547115))

(assert (=> d!84439 m!546947))

(assert (=> d!84439 m!546923))

(declare-fun m!547119 () Bool)

(assert (=> d!84439 m!547119))

(declare-fun m!547123 () Bool)

(assert (=> b!568554 m!547123))

(assert (=> b!568557 m!546923))

(declare-fun m!547127 () Bool)

(assert (=> b!568557 m!547127))

(assert (=> b!568321 d!84439))

(declare-fun bm!32573 () Bool)

(declare-fun call!32576 () Bool)

(assert (=> bm!32573 (= call!32576 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!568565 () Bool)

(declare-fun e!327159 () Bool)

(declare-fun e!327160 () Bool)

(assert (=> b!568565 (= e!327159 e!327160)))

(declare-fun c!65255 () Bool)

(assert (=> b!568565 (= c!65255 (validKeyInArray!0 (select (arr!17096 a!3118) j!142)))))

(declare-fun b!568566 () Bool)

(declare-fun e!327161 () Bool)

(assert (=> b!568566 (= e!327160 e!327161)))

(declare-fun lt!259068 () (_ BitVec 64))

(assert (=> b!568566 (= lt!259068 (select (arr!17096 a!3118) j!142))))

(declare-fun lt!259067 () Unit!17806)

(assert (=> b!568566 (= lt!259067 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!259068 j!142))))

(assert (=> b!568566 (arrayContainsKey!0 a!3118 lt!259068 #b00000000000000000000000000000000)))

(declare-fun lt!259069 () Unit!17806)

(assert (=> b!568566 (= lt!259069 lt!259067)))

(declare-fun res!358765 () Bool)

(assert (=> b!568566 (= res!358765 (= (seekEntryOrOpen!0 (select (arr!17096 a!3118) j!142) a!3118 mask!3119) (Found!5552 j!142)))))

(assert (=> b!568566 (=> (not res!358765) (not e!327161))))

(declare-fun b!568567 () Bool)

(assert (=> b!568567 (= e!327160 call!32576)))

(declare-fun d!84443 () Bool)

(declare-fun res!358764 () Bool)

(assert (=> d!84443 (=> res!358764 e!327159)))

(assert (=> d!84443 (= res!358764 (bvsge j!142 (size!17460 a!3118)))))

(assert (=> d!84443 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!327159)))

(declare-fun b!568568 () Bool)

(assert (=> b!568568 (= e!327161 call!32576)))

(assert (= (and d!84443 (not res!358764)) b!568565))

(assert (= (and b!568565 c!65255) b!568566))

(assert (= (and b!568565 (not c!65255)) b!568567))

(assert (= (and b!568566 res!358765) b!568568))

(assert (= (or b!568568 b!568567) bm!32573))

(declare-fun m!547131 () Bool)

(assert (=> bm!32573 m!547131))

(assert (=> b!568565 m!546923))

(assert (=> b!568565 m!546923))

(assert (=> b!568565 m!546925))

(assert (=> b!568566 m!546923))

(declare-fun m!547133 () Bool)

(assert (=> b!568566 m!547133))

(declare-fun m!547135 () Bool)

(assert (=> b!568566 m!547135))

(assert (=> b!568566 m!546923))

(assert (=> b!568566 m!546937))

(assert (=> b!568321 d!84443))

(declare-fun d!84447 () Bool)

(assert (=> d!84447 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!259072 () Unit!17806)

(declare-fun choose!38 (array!35614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17806)

(assert (=> d!84447 (= lt!259072 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84447 (validMask!0 mask!3119)))

(assert (=> d!84447 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!259072)))

(declare-fun bs!17636 () Bool)

(assert (= bs!17636 d!84447))

(assert (=> bs!17636 m!546931))

(declare-fun m!547137 () Bool)

(assert (=> bs!17636 m!547137))

(assert (=> bs!17636 m!546917))

(assert (=> b!568321 d!84447))

(declare-fun b!568602 () Bool)

(declare-fun lt!259078 () SeekEntryResult!5552)

(assert (=> b!568602 (and (bvsge (index!24437 lt!259078) #b00000000000000000000000000000000) (bvslt (index!24437 lt!259078) (size!17460 (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118)))))))

(declare-fun res!358781 () Bool)

(assert (=> b!568602 (= res!358781 (= (select (arr!17096 (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118))) (index!24437 lt!259078)) (select (store (arr!17096 a!3118) i!1132 k!1914) j!142)))))

(declare-fun e!327185 () Bool)

(assert (=> b!568602 (=> res!358781 e!327185)))

(declare-fun e!327184 () Bool)

(assert (=> b!568602 (= e!327184 e!327185)))

(declare-fun b!568603 () Bool)

(declare-fun e!327187 () Bool)

(assert (=> b!568603 (= e!327187 (bvsge (x!53336 lt!259078) #b01111111111111111111111111111110))))

(declare-fun b!568604 () Bool)

(declare-fun e!327186 () SeekEntryResult!5552)

(assert (=> b!568604 (= e!327186 (Intermediate!5552 true lt!258958 #b00000000000000000000000000000000))))

(declare-fun b!568605 () Bool)

(declare-fun e!327188 () SeekEntryResult!5552)

(assert (=> b!568605 (= e!327186 e!327188)))

(declare-fun lt!259077 () (_ BitVec 64))

(declare-fun c!65266 () Bool)

(assert (=> b!568605 (= c!65266 (or (= lt!259077 (select (store (arr!17096 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!259077 lt!259077) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!568606 () Bool)

(assert (=> b!568606 (= e!327188 (Intermediate!5552 false lt!258958 #b00000000000000000000000000000000))))

(declare-fun b!568607 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568607 (= e!327188 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258958 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17096 a!3118) i!1132 k!1914) j!142) (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118)) mask!3119))))

(declare-fun d!84449 () Bool)

(assert (=> d!84449 e!327187))

(declare-fun c!65265 () Bool)

(assert (=> d!84449 (= c!65265 (and (is-Intermediate!5552 lt!259078) (undefined!6364 lt!259078)))))

(assert (=> d!84449 (= lt!259078 e!327186)))

(declare-fun c!65267 () Bool)

(assert (=> d!84449 (= c!65267 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84449 (= lt!259077 (select (arr!17096 (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118))) lt!258958))))

(assert (=> d!84449 (validMask!0 mask!3119)))

(assert (=> d!84449 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258958 (select (store (arr!17096 a!3118) i!1132 k!1914) j!142) (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118)) mask!3119) lt!259078)))

(declare-fun b!568608 () Bool)

(assert (=> b!568608 (and (bvsge (index!24437 lt!259078) #b00000000000000000000000000000000) (bvslt (index!24437 lt!259078) (size!17460 (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118)))))))

(declare-fun res!358783 () Bool)

(assert (=> b!568608 (= res!358783 (= (select (arr!17096 (array!35615 (store (arr!17096 a!3118) i!1132 k!1914) (size!17460 a!3118))) (index!24437 lt!259078)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!568608 (=> res!358783 e!327185)))

(declare-fun b!568609 () Bool)

