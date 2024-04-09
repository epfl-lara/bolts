; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47808 () Bool)

(assert start!47808)

(declare-fun b!526363 () Bool)

(declare-fun res!323129 () Bool)

(declare-fun e!306814 () Bool)

(assert (=> b!526363 (=> res!323129 e!306814)))

(declare-datatypes ((SeekEntryResult!4525 0))(
  ( (MissingZero!4525 (index!20312 (_ BitVec 32))) (Found!4525 (index!20313 (_ BitVec 32))) (Intermediate!4525 (undefined!5337 Bool) (index!20314 (_ BitVec 32)) (x!49309 (_ BitVec 32))) (Undefined!4525) (MissingVacant!4525 (index!20315 (_ BitVec 32))) )
))
(declare-fun lt!242157 () SeekEntryResult!4525)

(get-info :version)

(assert (=> b!526363 (= res!323129 (or (undefined!5337 lt!242157) (not ((_ is Intermediate!4525) lt!242157))))))

(declare-fun b!526364 () Bool)

(declare-fun res!323120 () Bool)

(declare-fun e!306817 () Bool)

(assert (=> b!526364 (=> (not res!323120) (not e!306817))))

(declare-datatypes ((array!33405 0))(
  ( (array!33406 (arr!16051 (Array (_ BitVec 32) (_ BitVec 64))) (size!16415 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33405)

(declare-datatypes ((List!10262 0))(
  ( (Nil!10259) (Cons!10258 (h!11189 (_ BitVec 64)) (t!16498 List!10262)) )
))
(declare-fun arrayNoDuplicates!0 (array!33405 (_ BitVec 32) List!10262) Bool)

(assert (=> b!526364 (= res!323120 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10259))))

(declare-fun b!526365 () Bool)

(assert (=> b!526365 (= e!306814 true)))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526365 (= (index!20314 lt!242157) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!242162 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!16566 0))(
  ( (Unit!16567) )
))
(declare-fun lt!242165 () Unit!16566)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16566)

(assert (=> b!526365 (= lt!242165 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242162 #b00000000000000000000000000000000 (index!20314 lt!242157) (x!49309 lt!242157) mask!3524))))

(assert (=> b!526365 (and (or (= (select (arr!16051 a!3235) (index!20314 lt!242157)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16051 a!3235) (index!20314 lt!242157)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16051 a!3235) (index!20314 lt!242157)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16051 a!3235) (index!20314 lt!242157)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242159 () Unit!16566)

(declare-fun e!306813 () Unit!16566)

(assert (=> b!526365 (= lt!242159 e!306813)))

(declare-fun c!61928 () Bool)

(assert (=> b!526365 (= c!61928 (= (select (arr!16051 a!3235) (index!20314 lt!242157)) (select (arr!16051 a!3235) j!176)))))

(assert (=> b!526365 (and (bvslt (x!49309 lt!242157) #b01111111111111111111111111111110) (or (= (select (arr!16051 a!3235) (index!20314 lt!242157)) (select (arr!16051 a!3235) j!176)) (= (select (arr!16051 a!3235) (index!20314 lt!242157)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16051 a!3235) (index!20314 lt!242157)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526366 () Bool)

(declare-fun res!323118 () Bool)

(declare-fun e!306811 () Bool)

(assert (=> b!526366 (=> (not res!323118) (not e!306811))))

(declare-fun arrayContainsKey!0 (array!33405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526366 (= res!323118 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526367 () Bool)

(declare-fun Unit!16568 () Unit!16566)

(assert (=> b!526367 (= e!306813 Unit!16568)))

(declare-fun lt!242160 () Unit!16566)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16566)

(assert (=> b!526367 (= lt!242160 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242162 #b00000000000000000000000000000000 (index!20314 lt!242157) (x!49309 lt!242157) mask!3524))))

(declare-fun lt!242161 () array!33405)

(declare-fun lt!242163 () (_ BitVec 64))

(declare-fun res!323125 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33405 (_ BitVec 32)) SeekEntryResult!4525)

(assert (=> b!526367 (= res!323125 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242162 lt!242163 lt!242161 mask!3524) (Intermediate!4525 false (index!20314 lt!242157) (x!49309 lt!242157))))))

(declare-fun e!306812 () Bool)

(assert (=> b!526367 (=> (not res!323125) (not e!306812))))

(assert (=> b!526367 e!306812))

(declare-fun b!526368 () Bool)

(declare-fun res!323126 () Bool)

(assert (=> b!526368 (=> (not res!323126) (not e!306811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526368 (= res!323126 (validKeyInArray!0 (select (arr!16051 a!3235) j!176)))))

(declare-fun b!526369 () Bool)

(assert (=> b!526369 (= e!306811 e!306817)))

(declare-fun res!323128 () Bool)

(assert (=> b!526369 (=> (not res!323128) (not e!306817))))

(declare-fun lt!242164 () SeekEntryResult!4525)

(assert (=> b!526369 (= res!323128 (or (= lt!242164 (MissingZero!4525 i!1204)) (= lt!242164 (MissingVacant!4525 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33405 (_ BitVec 32)) SeekEntryResult!4525)

(assert (=> b!526369 (= lt!242164 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!526370 () Bool)

(assert (=> b!526370 (= e!306817 (not e!306814))))

(declare-fun res!323124 () Bool)

(assert (=> b!526370 (=> res!323124 e!306814)))

(declare-fun lt!242158 () (_ BitVec 32))

(assert (=> b!526370 (= res!323124 (= lt!242157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242158 lt!242163 lt!242161 mask!3524)))))

(assert (=> b!526370 (= lt!242157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242162 (select (arr!16051 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526370 (= lt!242158 (toIndex!0 lt!242163 mask!3524))))

(assert (=> b!526370 (= lt!242163 (select (store (arr!16051 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!526370 (= lt!242162 (toIndex!0 (select (arr!16051 a!3235) j!176) mask!3524))))

(assert (=> b!526370 (= lt!242161 (array!33406 (store (arr!16051 a!3235) i!1204 k0!2280) (size!16415 a!3235)))))

(declare-fun e!306815 () Bool)

(assert (=> b!526370 e!306815))

(declare-fun res!323123 () Bool)

(assert (=> b!526370 (=> (not res!323123) (not e!306815))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33405 (_ BitVec 32)) Bool)

(assert (=> b!526370 (= res!323123 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!242156 () Unit!16566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16566)

(assert (=> b!526370 (= lt!242156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526371 () Bool)

(assert (=> b!526371 (= e!306812 false)))

(declare-fun res!323121 () Bool)

(assert (=> start!47808 (=> (not res!323121) (not e!306811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47808 (= res!323121 (validMask!0 mask!3524))))

(assert (=> start!47808 e!306811))

(assert (=> start!47808 true))

(declare-fun array_inv!11825 (array!33405) Bool)

(assert (=> start!47808 (array_inv!11825 a!3235)))

(declare-fun b!526372 () Bool)

(declare-fun res!323119 () Bool)

(assert (=> b!526372 (=> (not res!323119) (not e!306811))))

(assert (=> b!526372 (= res!323119 (validKeyInArray!0 k0!2280))))

(declare-fun b!526373 () Bool)

(declare-fun res!323127 () Bool)

(assert (=> b!526373 (=> (not res!323127) (not e!306817))))

(assert (=> b!526373 (= res!323127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526374 () Bool)

(assert (=> b!526374 (= e!306815 (= (seekEntryOrOpen!0 (select (arr!16051 a!3235) j!176) a!3235 mask!3524) (Found!4525 j!176)))))

(declare-fun b!526375 () Bool)

(declare-fun res!323122 () Bool)

(assert (=> b!526375 (=> (not res!323122) (not e!306811))))

(assert (=> b!526375 (= res!323122 (and (= (size!16415 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16415 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16415 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526376 () Bool)

(declare-fun Unit!16569 () Unit!16566)

(assert (=> b!526376 (= e!306813 Unit!16569)))

(assert (= (and start!47808 res!323121) b!526375))

(assert (= (and b!526375 res!323122) b!526368))

(assert (= (and b!526368 res!323126) b!526372))

(assert (= (and b!526372 res!323119) b!526366))

(assert (= (and b!526366 res!323118) b!526369))

(assert (= (and b!526369 res!323128) b!526373))

(assert (= (and b!526373 res!323127) b!526364))

(assert (= (and b!526364 res!323120) b!526370))

(assert (= (and b!526370 res!323123) b!526374))

(assert (= (and b!526370 (not res!323124)) b!526363))

(assert (= (and b!526363 (not res!323129)) b!526365))

(assert (= (and b!526365 c!61928) b!526367))

(assert (= (and b!526365 (not c!61928)) b!526376))

(assert (= (and b!526367 res!323125) b!526371))

(declare-fun m!507111 () Bool)

(assert (=> b!526374 m!507111))

(assert (=> b!526374 m!507111))

(declare-fun m!507113 () Bool)

(assert (=> b!526374 m!507113))

(declare-fun m!507115 () Bool)

(assert (=> start!47808 m!507115))

(declare-fun m!507117 () Bool)

(assert (=> start!47808 m!507117))

(declare-fun m!507119 () Bool)

(assert (=> b!526366 m!507119))

(declare-fun m!507121 () Bool)

(assert (=> b!526364 m!507121))

(assert (=> b!526368 m!507111))

(assert (=> b!526368 m!507111))

(declare-fun m!507123 () Bool)

(assert (=> b!526368 m!507123))

(declare-fun m!507125 () Bool)

(assert (=> b!526367 m!507125))

(declare-fun m!507127 () Bool)

(assert (=> b!526367 m!507127))

(declare-fun m!507129 () Bool)

(assert (=> b!526369 m!507129))

(declare-fun m!507131 () Bool)

(assert (=> b!526365 m!507131))

(declare-fun m!507133 () Bool)

(assert (=> b!526365 m!507133))

(assert (=> b!526365 m!507111))

(declare-fun m!507135 () Bool)

(assert (=> b!526372 m!507135))

(declare-fun m!507137 () Bool)

(assert (=> b!526373 m!507137))

(declare-fun m!507139 () Bool)

(assert (=> b!526370 m!507139))

(declare-fun m!507141 () Bool)

(assert (=> b!526370 m!507141))

(declare-fun m!507143 () Bool)

(assert (=> b!526370 m!507143))

(assert (=> b!526370 m!507111))

(declare-fun m!507145 () Bool)

(assert (=> b!526370 m!507145))

(declare-fun m!507147 () Bool)

(assert (=> b!526370 m!507147))

(assert (=> b!526370 m!507111))

(declare-fun m!507149 () Bool)

(assert (=> b!526370 m!507149))

(assert (=> b!526370 m!507111))

(declare-fun m!507151 () Bool)

(assert (=> b!526370 m!507151))

(declare-fun m!507153 () Bool)

(assert (=> b!526370 m!507153))

(check-sat (not b!526367) (not b!526365) (not b!526366) (not b!526364) (not b!526373) (not b!526369) (not b!526372) (not start!47808) (not b!526374) (not b!526370) (not b!526368))
(check-sat)
