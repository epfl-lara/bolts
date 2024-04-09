; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52458 () Bool)

(assert start!52458)

(declare-fun b!572348 () Bool)

(declare-fun e!329239 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35809 0))(
  ( (array!35810 (arr!17189 (Array (_ BitVec 32) (_ BitVec 64))) (size!17553 (_ BitVec 32))) )
))
(declare-fun lt!261277 () array!35809)

(declare-fun lt!261278 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5645 0))(
  ( (MissingZero!5645 (index!24807 (_ BitVec 32))) (Found!5645 (index!24808 (_ BitVec 32))) (Intermediate!5645 (undefined!6457 Bool) (index!24809 (_ BitVec 32)) (x!53701 (_ BitVec 32))) (Undefined!5645) (MissingVacant!5645 (index!24810 (_ BitVec 32))) )
))
(declare-fun lt!261271 () SeekEntryResult!5645)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35809 (_ BitVec 32)) SeekEntryResult!5645)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35809 (_ BitVec 32)) SeekEntryResult!5645)

(assert (=> b!572348 (= e!329239 (= (seekEntryOrOpen!0 lt!261278 lt!261277 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53701 lt!261271) (index!24809 lt!261271) (index!24809 lt!261271) lt!261278 lt!261277 mask!3119)))))

(declare-fun b!572349 () Bool)

(declare-fun e!329238 () Bool)

(assert (=> b!572349 (= e!329238 e!329239)))

(declare-fun res!362009 () Bool)

(assert (=> b!572349 (=> (not res!362009) (not e!329239))))

(declare-fun lt!261274 () SeekEntryResult!5645)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun a!3118 () array!35809)

(assert (=> b!572349 (= res!362009 (= lt!261274 (seekKeyOrZeroReturnVacant!0 (x!53701 lt!261271) (index!24809 lt!261271) (index!24809 lt!261271) (select (arr!17189 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!362018 () Bool)

(declare-fun e!329236 () Bool)

(assert (=> start!52458 (=> (not res!362018) (not e!329236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52458 (= res!362018 (validMask!0 mask!3119))))

(assert (=> start!52458 e!329236))

(assert (=> start!52458 true))

(declare-fun array_inv!12963 (array!35809) Bool)

(assert (=> start!52458 (array_inv!12963 a!3118)))

(declare-fun b!572350 () Bool)

(declare-fun res!362017 () Bool)

(assert (=> b!572350 (=> (not res!362017) (not e!329236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572350 (= res!362017 (validKeyInArray!0 (select (arr!17189 a!3118) j!142)))))

(declare-fun b!572351 () Bool)

(declare-fun e!329234 () Bool)

(assert (=> b!572351 (= e!329234 (not true))))

(declare-fun e!329233 () Bool)

(assert (=> b!572351 e!329233))

(declare-fun res!362013 () Bool)

(assert (=> b!572351 (=> (not res!362013) (not e!329233))))

(assert (=> b!572351 (= res!362013 (= lt!261274 (Found!5645 j!142)))))

(assert (=> b!572351 (= lt!261274 (seekEntryOrOpen!0 (select (arr!17189 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35809 (_ BitVec 32)) Bool)

(assert (=> b!572351 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17992 0))(
  ( (Unit!17993) )
))
(declare-fun lt!261270 () Unit!17992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17992)

(assert (=> b!572351 (= lt!261270 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572352 () Bool)

(declare-fun res!362010 () Bool)

(declare-fun e!329232 () Bool)

(assert (=> b!572352 (=> (not res!362010) (not e!329232))))

(declare-datatypes ((List!11322 0))(
  ( (Nil!11319) (Cons!11318 (h!12345 (_ BitVec 64)) (t!17558 List!11322)) )
))
(declare-fun arrayNoDuplicates!0 (array!35809 (_ BitVec 32) List!11322) Bool)

(assert (=> b!572352 (= res!362010 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11319))))

(declare-fun b!572353 () Bool)

(assert (=> b!572353 (= e!329232 e!329234)))

(declare-fun res!362015 () Bool)

(assert (=> b!572353 (=> (not res!362015) (not e!329234))))

(declare-fun lt!261273 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35809 (_ BitVec 32)) SeekEntryResult!5645)

(assert (=> b!572353 (= res!362015 (= lt!261271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261273 lt!261278 lt!261277 mask!3119)))))

(declare-fun lt!261272 () (_ BitVec 32))

(assert (=> b!572353 (= lt!261271 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261272 (select (arr!17189 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572353 (= lt!261273 (toIndex!0 lt!261278 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572353 (= lt!261278 (select (store (arr!17189 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572353 (= lt!261272 (toIndex!0 (select (arr!17189 a!3118) j!142) mask!3119))))

(assert (=> b!572353 (= lt!261277 (array!35810 (store (arr!17189 a!3118) i!1132 k!1914) (size!17553 a!3118)))))

(declare-fun b!572354 () Bool)

(declare-fun e!329237 () Bool)

(assert (=> b!572354 (= e!329237 e!329238)))

(declare-fun res!362012 () Bool)

(assert (=> b!572354 (=> res!362012 e!329238)))

(declare-fun lt!261275 () (_ BitVec 64))

(assert (=> b!572354 (= res!362012 (or (= lt!261275 (select (arr!17189 a!3118) j!142)) (= lt!261275 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572354 (= lt!261275 (select (arr!17189 a!3118) (index!24809 lt!261271)))))

(declare-fun b!572355 () Bool)

(declare-fun res!362006 () Bool)

(assert (=> b!572355 (=> (not res!362006) (not e!329236))))

(assert (=> b!572355 (= res!362006 (validKeyInArray!0 k!1914))))

(declare-fun b!572356 () Bool)

(declare-fun res!362016 () Bool)

(assert (=> b!572356 (=> (not res!362016) (not e!329236))))

(assert (=> b!572356 (= res!362016 (and (= (size!17553 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17553 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17553 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572357 () Bool)

(declare-fun res!362007 () Bool)

(assert (=> b!572357 (=> (not res!362007) (not e!329236))))

(declare-fun arrayContainsKey!0 (array!35809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572357 (= res!362007 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572358 () Bool)

(assert (=> b!572358 (= e!329236 e!329232)))

(declare-fun res!362011 () Bool)

(assert (=> b!572358 (=> (not res!362011) (not e!329232))))

(declare-fun lt!261276 () SeekEntryResult!5645)

(assert (=> b!572358 (= res!362011 (or (= lt!261276 (MissingZero!5645 i!1132)) (= lt!261276 (MissingVacant!5645 i!1132))))))

(assert (=> b!572358 (= lt!261276 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572359 () Bool)

(assert (=> b!572359 (= e!329233 e!329237)))

(declare-fun res!362008 () Bool)

(assert (=> b!572359 (=> res!362008 e!329237)))

(assert (=> b!572359 (= res!362008 (or (undefined!6457 lt!261271) (not (is-Intermediate!5645 lt!261271))))))

(declare-fun b!572360 () Bool)

(declare-fun res!362014 () Bool)

(assert (=> b!572360 (=> (not res!362014) (not e!329232))))

(assert (=> b!572360 (= res!362014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52458 res!362018) b!572356))

(assert (= (and b!572356 res!362016) b!572350))

(assert (= (and b!572350 res!362017) b!572355))

(assert (= (and b!572355 res!362006) b!572357))

(assert (= (and b!572357 res!362007) b!572358))

(assert (= (and b!572358 res!362011) b!572360))

(assert (= (and b!572360 res!362014) b!572352))

(assert (= (and b!572352 res!362010) b!572353))

(assert (= (and b!572353 res!362015) b!572351))

(assert (= (and b!572351 res!362013) b!572359))

(assert (= (and b!572359 (not res!362008)) b!572354))

(assert (= (and b!572354 (not res!362012)) b!572349))

(assert (= (and b!572349 res!362009) b!572348))

(declare-fun m!551375 () Bool)

(assert (=> b!572354 m!551375))

(declare-fun m!551377 () Bool)

(assert (=> b!572354 m!551377))

(assert (=> b!572349 m!551375))

(assert (=> b!572349 m!551375))

(declare-fun m!551379 () Bool)

(assert (=> b!572349 m!551379))

(assert (=> b!572350 m!551375))

(assert (=> b!572350 m!551375))

(declare-fun m!551381 () Bool)

(assert (=> b!572350 m!551381))

(declare-fun m!551383 () Bool)

(assert (=> b!572355 m!551383))

(declare-fun m!551385 () Bool)

(assert (=> b!572358 m!551385))

(assert (=> b!572353 m!551375))

(declare-fun m!551387 () Bool)

(assert (=> b!572353 m!551387))

(assert (=> b!572353 m!551375))

(declare-fun m!551389 () Bool)

(assert (=> b!572353 m!551389))

(assert (=> b!572353 m!551375))

(declare-fun m!551391 () Bool)

(assert (=> b!572353 m!551391))

(declare-fun m!551393 () Bool)

(assert (=> b!572353 m!551393))

(declare-fun m!551395 () Bool)

(assert (=> b!572353 m!551395))

(declare-fun m!551397 () Bool)

(assert (=> b!572353 m!551397))

(declare-fun m!551399 () Bool)

(assert (=> b!572360 m!551399))

(declare-fun m!551401 () Bool)

(assert (=> start!52458 m!551401))

(declare-fun m!551403 () Bool)

(assert (=> start!52458 m!551403))

(declare-fun m!551405 () Bool)

(assert (=> b!572357 m!551405))

(assert (=> b!572351 m!551375))

(assert (=> b!572351 m!551375))

(declare-fun m!551407 () Bool)

(assert (=> b!572351 m!551407))

(declare-fun m!551409 () Bool)

(assert (=> b!572351 m!551409))

(declare-fun m!551411 () Bool)

(assert (=> b!572351 m!551411))

(declare-fun m!551413 () Bool)

(assert (=> b!572352 m!551413))

(declare-fun m!551415 () Bool)

(assert (=> b!572348 m!551415))

(declare-fun m!551417 () Bool)

(assert (=> b!572348 m!551417))

(push 1)

