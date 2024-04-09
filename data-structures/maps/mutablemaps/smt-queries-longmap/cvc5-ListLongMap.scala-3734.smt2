; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51416 () Bool)

(assert start!51416)

(declare-fun b!561258 () Bool)

(declare-fun res!352561 () Bool)

(declare-fun e!323425 () Bool)

(assert (=> b!561258 (=> (not res!352561) (not e!323425))))

(declare-datatypes ((array!35235 0))(
  ( (array!35236 (arr!16914 (Array (_ BitVec 32) (_ BitVec 64))) (size!17278 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35235)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35235 (_ BitVec 32)) Bool)

(assert (=> b!561258 (= res!352561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun lt!255482 () array!35235)

(declare-fun b!561259 () Bool)

(declare-datatypes ((SeekEntryResult!5370 0))(
  ( (MissingZero!5370 (index!23707 (_ BitVec 32))) (Found!5370 (index!23708 (_ BitVec 32))) (Intermediate!5370 (undefined!6182 Bool) (index!23709 (_ BitVec 32)) (x!52644 (_ BitVec 32))) (Undefined!5370) (MissingVacant!5370 (index!23710 (_ BitVec 32))) )
))
(declare-fun lt!255488 () SeekEntryResult!5370)

(declare-fun e!323423 () Bool)

(declare-fun lt!255486 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35235 (_ BitVec 32)) SeekEntryResult!5370)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35235 (_ BitVec 32)) SeekEntryResult!5370)

(assert (=> b!561259 (= e!323423 (= (seekEntryOrOpen!0 lt!255486 lt!255482 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52644 lt!255488) (index!23709 lt!255488) (index!23709 lt!255488) lt!255486 lt!255482 mask!3119)))))

(declare-fun b!561260 () Bool)

(declare-fun res!352559 () Bool)

(declare-fun e!323421 () Bool)

(assert (=> b!561260 (=> (not res!352559) (not e!323421))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561260 (= res!352559 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561261 () Bool)

(declare-fun res!352560 () Bool)

(assert (=> b!561261 (=> (not res!352560) (not e!323421))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561261 (= res!352560 (validKeyInArray!0 (select (arr!16914 a!3118) j!142)))))

(declare-fun b!561262 () Bool)

(declare-fun e!323426 () Bool)

(assert (=> b!561262 (= e!323426 e!323423)))

(declare-fun res!352564 () Bool)

(assert (=> b!561262 (=> (not res!352564) (not e!323423))))

(declare-fun lt!255484 () SeekEntryResult!5370)

(assert (=> b!561262 (= res!352564 (= lt!255484 (seekKeyOrZeroReturnVacant!0 (x!52644 lt!255488) (index!23709 lt!255488) (index!23709 lt!255488) (select (arr!16914 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561263 () Bool)

(declare-fun res!352569 () Bool)

(assert (=> b!561263 (=> (not res!352569) (not e!323421))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561263 (= res!352569 (and (= (size!17278 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17278 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17278 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561257 () Bool)

(declare-fun e!323428 () Bool)

(declare-fun e!323424 () Bool)

(assert (=> b!561257 (= e!323428 e!323424)))

(declare-fun res!352563 () Bool)

(assert (=> b!561257 (=> res!352563 e!323424)))

(assert (=> b!561257 (= res!352563 (or (undefined!6182 lt!255488) (not (is-Intermediate!5370 lt!255488))))))

(declare-fun res!352568 () Bool)

(assert (=> start!51416 (=> (not res!352568) (not e!323421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51416 (= res!352568 (validMask!0 mask!3119))))

(assert (=> start!51416 e!323421))

(assert (=> start!51416 true))

(declare-fun array_inv!12688 (array!35235) Bool)

(assert (=> start!51416 (array_inv!12688 a!3118)))

(declare-fun b!561264 () Bool)

(declare-fun res!352570 () Bool)

(assert (=> b!561264 (=> (not res!352570) (not e!323421))))

(assert (=> b!561264 (= res!352570 (validKeyInArray!0 k!1914))))

(declare-fun b!561265 () Bool)

(declare-fun res!352567 () Bool)

(assert (=> b!561265 (=> (not res!352567) (not e!323425))))

(declare-datatypes ((List!11047 0))(
  ( (Nil!11044) (Cons!11043 (h!12046 (_ BitVec 64)) (t!17283 List!11047)) )
))
(declare-fun arrayNoDuplicates!0 (array!35235 (_ BitVec 32) List!11047) Bool)

(assert (=> b!561265 (= res!352567 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11044))))

(declare-fun b!561266 () Bool)

(declare-fun e!323427 () Bool)

(assert (=> b!561266 (= e!323427 (not true))))

(assert (=> b!561266 e!323428))

(declare-fun res!352566 () Bool)

(assert (=> b!561266 (=> (not res!352566) (not e!323428))))

(assert (=> b!561266 (= res!352566 (= lt!255484 (Found!5370 j!142)))))

(assert (=> b!561266 (= lt!255484 (seekEntryOrOpen!0 (select (arr!16914 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561266 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17514 0))(
  ( (Unit!17515) )
))
(declare-fun lt!255483 () Unit!17514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17514)

(assert (=> b!561266 (= lt!255483 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561267 () Bool)

(assert (=> b!561267 (= e!323424 e!323426)))

(declare-fun res!352571 () Bool)

(assert (=> b!561267 (=> res!352571 e!323426)))

(declare-fun lt!255487 () (_ BitVec 64))

(assert (=> b!561267 (= res!352571 (or (= lt!255487 (select (arr!16914 a!3118) j!142)) (= lt!255487 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561267 (= lt!255487 (select (arr!16914 a!3118) (index!23709 lt!255488)))))

(declare-fun b!561268 () Bool)

(assert (=> b!561268 (= e!323421 e!323425)))

(declare-fun res!352565 () Bool)

(assert (=> b!561268 (=> (not res!352565) (not e!323425))))

(declare-fun lt!255481 () SeekEntryResult!5370)

(assert (=> b!561268 (= res!352565 (or (= lt!255481 (MissingZero!5370 i!1132)) (= lt!255481 (MissingVacant!5370 i!1132))))))

(assert (=> b!561268 (= lt!255481 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561269 () Bool)

(assert (=> b!561269 (= e!323425 e!323427)))

(declare-fun res!352562 () Bool)

(assert (=> b!561269 (=> (not res!352562) (not e!323427))))

(declare-fun lt!255480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35235 (_ BitVec 32)) SeekEntryResult!5370)

(assert (=> b!561269 (= res!352562 (= lt!255488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255480 lt!255486 lt!255482 mask!3119)))))

(declare-fun lt!255485 () (_ BitVec 32))

(assert (=> b!561269 (= lt!255488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255485 (select (arr!16914 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561269 (= lt!255480 (toIndex!0 lt!255486 mask!3119))))

(assert (=> b!561269 (= lt!255486 (select (store (arr!16914 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561269 (= lt!255485 (toIndex!0 (select (arr!16914 a!3118) j!142) mask!3119))))

(assert (=> b!561269 (= lt!255482 (array!35236 (store (arr!16914 a!3118) i!1132 k!1914) (size!17278 a!3118)))))

(assert (= (and start!51416 res!352568) b!561263))

(assert (= (and b!561263 res!352569) b!561261))

(assert (= (and b!561261 res!352560) b!561264))

(assert (= (and b!561264 res!352570) b!561260))

(assert (= (and b!561260 res!352559) b!561268))

(assert (= (and b!561268 res!352565) b!561258))

(assert (= (and b!561258 res!352561) b!561265))

(assert (= (and b!561265 res!352567) b!561269))

(assert (= (and b!561269 res!352562) b!561266))

(assert (= (and b!561266 res!352566) b!561257))

(assert (= (and b!561257 (not res!352563)) b!561267))

(assert (= (and b!561267 (not res!352571)) b!561262))

(assert (= (and b!561262 res!352564) b!561259))

(declare-fun m!539191 () Bool)

(assert (=> b!561258 m!539191))

(declare-fun m!539193 () Bool)

(assert (=> b!561264 m!539193))

(declare-fun m!539195 () Bool)

(assert (=> b!561269 m!539195))

(declare-fun m!539197 () Bool)

(assert (=> b!561269 m!539197))

(assert (=> b!561269 m!539195))

(declare-fun m!539199 () Bool)

(assert (=> b!561269 m!539199))

(declare-fun m!539201 () Bool)

(assert (=> b!561269 m!539201))

(declare-fun m!539203 () Bool)

(assert (=> b!561269 m!539203))

(assert (=> b!561269 m!539195))

(declare-fun m!539205 () Bool)

(assert (=> b!561269 m!539205))

(declare-fun m!539207 () Bool)

(assert (=> b!561269 m!539207))

(assert (=> b!561266 m!539195))

(assert (=> b!561266 m!539195))

(declare-fun m!539209 () Bool)

(assert (=> b!561266 m!539209))

(declare-fun m!539211 () Bool)

(assert (=> b!561266 m!539211))

(declare-fun m!539213 () Bool)

(assert (=> b!561266 m!539213))

(declare-fun m!539215 () Bool)

(assert (=> start!51416 m!539215))

(declare-fun m!539217 () Bool)

(assert (=> start!51416 m!539217))

(declare-fun m!539219 () Bool)

(assert (=> b!561260 m!539219))

(declare-fun m!539221 () Bool)

(assert (=> b!561259 m!539221))

(declare-fun m!539223 () Bool)

(assert (=> b!561259 m!539223))

(assert (=> b!561262 m!539195))

(assert (=> b!561262 m!539195))

(declare-fun m!539225 () Bool)

(assert (=> b!561262 m!539225))

(declare-fun m!539227 () Bool)

(assert (=> b!561268 m!539227))

(assert (=> b!561261 m!539195))

(assert (=> b!561261 m!539195))

(declare-fun m!539229 () Bool)

(assert (=> b!561261 m!539229))

(declare-fun m!539231 () Bool)

(assert (=> b!561265 m!539231))

(assert (=> b!561267 m!539195))

(declare-fun m!539233 () Bool)

(assert (=> b!561267 m!539233))

(push 1)

