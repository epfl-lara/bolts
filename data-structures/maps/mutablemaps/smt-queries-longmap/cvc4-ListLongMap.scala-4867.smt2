; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67136 () Bool)

(assert start!67136)

(declare-fun b!774951 () Bool)

(declare-fun e!431360 () Bool)

(declare-fun e!431361 () Bool)

(assert (=> b!774951 (= e!431360 e!431361)))

(declare-fun res!524132 () Bool)

(assert (=> b!774951 (=> (not res!524132) (not e!431361))))

(declare-datatypes ((array!42446 0))(
  ( (array!42447 (arr!20315 (Array (_ BitVec 32) (_ BitVec 64))) (size!20736 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42446)

(declare-datatypes ((SeekEntryResult!7922 0))(
  ( (MissingZero!7922 (index!34055 (_ BitVec 32))) (Found!7922 (index!34056 (_ BitVec 32))) (Intermediate!7922 (undefined!8734 Bool) (index!34057 (_ BitVec 32)) (x!65026 (_ BitVec 32))) (Undefined!7922) (MissingVacant!7922 (index!34058 (_ BitVec 32))) )
))
(declare-fun lt!345206 () SeekEntryResult!7922)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42446 (_ BitVec 32)) SeekEntryResult!7922)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774951 (= res!524132 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20315 a!3186) j!159) mask!3328) (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345206))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!774951 (= lt!345206 (Intermediate!7922 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!431357 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!774952 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42446 (_ BitVec 32)) SeekEntryResult!7922)

(assert (=> b!774952 (= e!431357 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) (Found!7922 j!159)))))

(declare-fun b!774953 () Bool)

(declare-fun res!524139 () Bool)

(declare-fun e!431358 () Bool)

(assert (=> b!774953 (=> (not res!524139) (not e!431358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774953 (= res!524139 (validKeyInArray!0 (select (arr!20315 a!3186) j!159)))))

(declare-fun b!774954 () Bool)

(declare-fun res!524147 () Bool)

(assert (=> b!774954 (=> (not res!524147) (not e!431361))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774954 (= res!524147 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20315 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774955 () Bool)

(declare-fun e!431356 () Bool)

(declare-fun e!431355 () Bool)

(assert (=> b!774955 (= e!431356 (not e!431355))))

(declare-fun res!524144 () Bool)

(assert (=> b!774955 (=> res!524144 e!431355)))

(declare-fun lt!345207 () SeekEntryResult!7922)

(assert (=> b!774955 (= res!524144 (or (not (is-Intermediate!7922 lt!345207)) (bvsge x!1131 (x!65026 lt!345207))))))

(declare-fun lt!345201 () SeekEntryResult!7922)

(assert (=> b!774955 (= lt!345201 (Found!7922 j!159))))

(declare-fun e!431362 () Bool)

(assert (=> b!774955 e!431362))

(declare-fun res!524138 () Bool)

(assert (=> b!774955 (=> (not res!524138) (not e!431362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42446 (_ BitVec 32)) Bool)

(assert (=> b!774955 (= res!524138 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26724 0))(
  ( (Unit!26725) )
))
(declare-fun lt!345205 () Unit!26724)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26724)

(assert (=> b!774955 (= lt!345205 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774956 () Bool)

(declare-fun e!431353 () Bool)

(declare-fun lt!345208 () (_ BitVec 32))

(assert (=> b!774956 (= e!431353 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345208 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345206)))))

(declare-fun b!774957 () Bool)

(declare-fun e!431351 () Bool)

(assert (=> b!774957 (= e!431351 true)))

(declare-fun lt!345204 () array!42446)

(declare-fun lt!345214 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42446 (_ BitVec 32)) SeekEntryResult!7922)

(assert (=> b!774957 (= (seekEntryOrOpen!0 lt!345214 lt!345204 mask!3328) lt!345201)))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!345209 () Unit!26724)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42446 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26724)

(assert (=> b!774957 (= lt!345209 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!345208 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!774958 () Bool)

(declare-fun res!524136 () Bool)

(assert (=> b!774958 (=> (not res!524136) (not e!431361))))

(assert (=> b!774958 (= res!524136 e!431357)))

(declare-fun c!85812 () Bool)

(assert (=> b!774958 (= c!85812 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774959 () Bool)

(declare-fun res!524143 () Bool)

(assert (=> b!774959 (=> (not res!524143) (not e!431360))))

(assert (=> b!774959 (= res!524143 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20736 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20736 a!3186))))))

(declare-fun b!774960 () Bool)

(declare-fun res!524149 () Bool)

(assert (=> b!774960 (=> res!524149 e!431351)))

(assert (=> b!774960 (= res!524149 e!431353)))

(declare-fun c!85811 () Bool)

(declare-fun lt!345202 () Bool)

(assert (=> b!774960 (= c!85811 lt!345202)))

(declare-fun b!774961 () Bool)

(declare-fun res!524142 () Bool)

(assert (=> b!774961 (=> (not res!524142) (not e!431360))))

(assert (=> b!774961 (= res!524142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774962 () Bool)

(declare-fun res!524141 () Bool)

(assert (=> b!774962 (=> (not res!524141) (not e!431358))))

(assert (=> b!774962 (= res!524141 (and (= (size!20736 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20736 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20736 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774963 () Bool)

(declare-fun e!431359 () Bool)

(assert (=> b!774963 (= e!431362 e!431359)))

(declare-fun res!524137 () Bool)

(assert (=> b!774963 (=> (not res!524137) (not e!431359))))

(declare-fun lt!345203 () SeekEntryResult!7922)

(assert (=> b!774963 (= res!524137 (= (seekEntryOrOpen!0 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345203))))

(assert (=> b!774963 (= lt!345203 (Found!7922 j!159))))

(declare-fun b!774964 () Bool)

(assert (=> b!774964 (= e!431355 e!431351)))

(declare-fun res!524133 () Bool)

(assert (=> b!774964 (=> res!524133 e!431351)))

(assert (=> b!774964 (= res!524133 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345208 #b00000000000000000000000000000000) (bvsge lt!345208 (size!20736 a!3186))))))

(declare-fun lt!345210 () Unit!26724)

(declare-fun e!431354 () Unit!26724)

(assert (=> b!774964 (= lt!345210 e!431354)))

(declare-fun c!85810 () Bool)

(assert (=> b!774964 (= c!85810 lt!345202)))

(assert (=> b!774964 (= lt!345202 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774964 (= lt!345208 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774965 () Bool)

(declare-fun Unit!26726 () Unit!26724)

(assert (=> b!774965 (= e!431354 Unit!26726)))

(declare-fun lt!345213 () SeekEntryResult!7922)

(assert (=> b!774965 (= lt!345213 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20315 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!774965 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345208 resIntermediateIndex!5 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345201)))

(declare-fun b!774966 () Bool)

(assert (=> b!774966 (= e!431361 e!431356)))

(declare-fun res!524145 () Bool)

(assert (=> b!774966 (=> (not res!524145) (not e!431356))))

(declare-fun lt!345211 () SeekEntryResult!7922)

(assert (=> b!774966 (= res!524145 (= lt!345211 lt!345207))))

(assert (=> b!774966 (= lt!345207 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345214 lt!345204 mask!3328))))

(assert (=> b!774966 (= lt!345211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345214 mask!3328) lt!345214 lt!345204 mask!3328))))

(assert (=> b!774966 (= lt!345214 (select (store (arr!20315 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!774966 (= lt!345204 (array!42447 (store (arr!20315 a!3186) i!1173 k!2102) (size!20736 a!3186)))))

(declare-fun b!774967 () Bool)

(declare-fun res!524134 () Bool)

(assert (=> b!774967 (=> (not res!524134) (not e!431360))))

(declare-datatypes ((List!14370 0))(
  ( (Nil!14367) (Cons!14366 (h!15474 (_ BitVec 64)) (t!20693 List!14370)) )
))
(declare-fun arrayNoDuplicates!0 (array!42446 (_ BitVec 32) List!14370) Bool)

(assert (=> b!774967 (= res!524134 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14367))))

(declare-fun b!774968 () Bool)

(declare-fun res!524146 () Bool)

(assert (=> b!774968 (=> (not res!524146) (not e!431358))))

(declare-fun arrayContainsKey!0 (array!42446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774968 (= res!524146 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774969 () Bool)

(assert (=> b!774969 (= e!431359 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345203))))

(declare-fun res!524140 () Bool)

(assert (=> start!67136 (=> (not res!524140) (not e!431358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67136 (= res!524140 (validMask!0 mask!3328))))

(assert (=> start!67136 e!431358))

(assert (=> start!67136 true))

(declare-fun array_inv!16089 (array!42446) Bool)

(assert (=> start!67136 (array_inv!16089 a!3186)))

(declare-fun b!774970 () Bool)

(assert (=> b!774970 (= e!431353 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345208 resIntermediateIndex!5 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345201)))))

(declare-fun b!774971 () Bool)

(assert (=> b!774971 (= e!431357 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345206))))

(declare-fun b!774972 () Bool)

(declare-fun Unit!26727 () Unit!26724)

(assert (=> b!774972 (= e!431354 Unit!26727)))

(assert (=> b!774972 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345208 (select (arr!20315 a!3186) j!159) a!3186 mask!3328) lt!345206)))

(declare-fun b!774973 () Bool)

(declare-fun res!524148 () Bool)

(assert (=> b!774973 (=> res!524148 e!431351)))

(assert (=> b!774973 (= res!524148 (not (= lt!345211 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345208 lt!345214 lt!345204 mask!3328))))))

(declare-fun b!774974 () Bool)

(assert (=> b!774974 (= e!431358 e!431360)))

(declare-fun res!524131 () Bool)

(assert (=> b!774974 (=> (not res!524131) (not e!431360))))

(declare-fun lt!345212 () SeekEntryResult!7922)

(assert (=> b!774974 (= res!524131 (or (= lt!345212 (MissingZero!7922 i!1173)) (= lt!345212 (MissingVacant!7922 i!1173))))))

(assert (=> b!774974 (= lt!345212 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!774975 () Bool)

(declare-fun res!524135 () Bool)

(assert (=> b!774975 (=> (not res!524135) (not e!431358))))

(assert (=> b!774975 (= res!524135 (validKeyInArray!0 k!2102))))

(assert (= (and start!67136 res!524140) b!774962))

(assert (= (and b!774962 res!524141) b!774953))

(assert (= (and b!774953 res!524139) b!774975))

(assert (= (and b!774975 res!524135) b!774968))

(assert (= (and b!774968 res!524146) b!774974))

(assert (= (and b!774974 res!524131) b!774961))

(assert (= (and b!774961 res!524142) b!774967))

(assert (= (and b!774967 res!524134) b!774959))

(assert (= (and b!774959 res!524143) b!774951))

(assert (= (and b!774951 res!524132) b!774954))

(assert (= (and b!774954 res!524147) b!774958))

(assert (= (and b!774958 c!85812) b!774971))

(assert (= (and b!774958 (not c!85812)) b!774952))

(assert (= (and b!774958 res!524136) b!774966))

(assert (= (and b!774966 res!524145) b!774955))

(assert (= (and b!774955 res!524138) b!774963))

(assert (= (and b!774963 res!524137) b!774969))

(assert (= (and b!774955 (not res!524144)) b!774964))

(assert (= (and b!774964 c!85810) b!774972))

(assert (= (and b!774964 (not c!85810)) b!774965))

(assert (= (and b!774964 (not res!524133)) b!774960))

(assert (= (and b!774960 c!85811) b!774956))

(assert (= (and b!774960 (not c!85811)) b!774970))

(assert (= (and b!774960 (not res!524149)) b!774973))

(assert (= (and b!774973 (not res!524148)) b!774957))

(declare-fun m!719331 () Bool)

(assert (=> b!774963 m!719331))

(assert (=> b!774963 m!719331))

(declare-fun m!719333 () Bool)

(assert (=> b!774963 m!719333))

(assert (=> b!774953 m!719331))

(assert (=> b!774953 m!719331))

(declare-fun m!719335 () Bool)

(assert (=> b!774953 m!719335))

(declare-fun m!719337 () Bool)

(assert (=> start!67136 m!719337))

(declare-fun m!719339 () Bool)

(assert (=> start!67136 m!719339))

(declare-fun m!719341 () Bool)

(assert (=> b!774954 m!719341))

(assert (=> b!774965 m!719331))

(assert (=> b!774965 m!719331))

(declare-fun m!719343 () Bool)

(assert (=> b!774965 m!719343))

(assert (=> b!774965 m!719331))

(declare-fun m!719345 () Bool)

(assert (=> b!774965 m!719345))

(assert (=> b!774969 m!719331))

(assert (=> b!774969 m!719331))

(declare-fun m!719347 () Bool)

(assert (=> b!774969 m!719347))

(assert (=> b!774970 m!719331))

(assert (=> b!774970 m!719331))

(assert (=> b!774970 m!719345))

(assert (=> b!774951 m!719331))

(assert (=> b!774951 m!719331))

(declare-fun m!719349 () Bool)

(assert (=> b!774951 m!719349))

(assert (=> b!774951 m!719349))

(assert (=> b!774951 m!719331))

(declare-fun m!719351 () Bool)

(assert (=> b!774951 m!719351))

(assert (=> b!774956 m!719331))

(assert (=> b!774956 m!719331))

(declare-fun m!719353 () Bool)

(assert (=> b!774956 m!719353))

(declare-fun m!719355 () Bool)

(assert (=> b!774973 m!719355))

(declare-fun m!719357 () Bool)

(assert (=> b!774975 m!719357))

(declare-fun m!719359 () Bool)

(assert (=> b!774957 m!719359))

(declare-fun m!719361 () Bool)

(assert (=> b!774957 m!719361))

(declare-fun m!719363 () Bool)

(assert (=> b!774961 m!719363))

(declare-fun m!719365 () Bool)

(assert (=> b!774964 m!719365))

(declare-fun m!719367 () Bool)

(assert (=> b!774967 m!719367))

(assert (=> b!774971 m!719331))

(assert (=> b!774971 m!719331))

(declare-fun m!719369 () Bool)

(assert (=> b!774971 m!719369))

(declare-fun m!719371 () Bool)

(assert (=> b!774966 m!719371))

(declare-fun m!719373 () Bool)

(assert (=> b!774966 m!719373))

(declare-fun m!719375 () Bool)

(assert (=> b!774966 m!719375))

(declare-fun m!719377 () Bool)

(assert (=> b!774966 m!719377))

(declare-fun m!719379 () Bool)

(assert (=> b!774966 m!719379))

(assert (=> b!774966 m!719375))

(declare-fun m!719381 () Bool)

(assert (=> b!774974 m!719381))

(assert (=> b!774952 m!719331))

(assert (=> b!774952 m!719331))

(assert (=> b!774952 m!719343))

(declare-fun m!719383 () Bool)

(assert (=> b!774968 m!719383))

(declare-fun m!719385 () Bool)

(assert (=> b!774955 m!719385))

(declare-fun m!719387 () Bool)

(assert (=> b!774955 m!719387))

(assert (=> b!774972 m!719331))

(assert (=> b!774972 m!719331))

(assert (=> b!774972 m!719353))

(push 1)

(assert (not b!774970))

(assert (not b!774967))

(assert (not b!774963))

(assert (not b!774968))

(assert (not start!67136))

(assert (not b!774964))

(assert (not b!774974))

(assert (not b!774975))

(assert (not b!774953))

(assert (not b!774973))

(assert (not b!774961))

(assert (not b!774955))

(assert (not b!774971))

(assert (not b!774969))

(assert (not b!774965))

(assert (not b!774956))

(assert (not b!774957))

(assert (not b!774972))

(assert (not b!774966))

(assert (not b!774952))

(assert (not b!774951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

