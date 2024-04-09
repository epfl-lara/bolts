; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67140 () Bool)

(assert start!67140)

(declare-datatypes ((array!42450 0))(
  ( (array!42451 (arr!20317 (Array (_ BitVec 32) (_ BitVec 64))) (size!20738 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42450)

(declare-fun e!431425 () Bool)

(declare-datatypes ((SeekEntryResult!7924 0))(
  ( (MissingZero!7924 (index!34063 (_ BitVec 32))) (Found!7924 (index!34064 (_ BitVec 32))) (Intermediate!7924 (undefined!8736 Bool) (index!34065 (_ BitVec 32)) (x!65036 (_ BitVec 32))) (Undefined!7924) (MissingVacant!7924 (index!34066 (_ BitVec 32))) )
))
(declare-fun lt!345289 () SeekEntryResult!7924)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!775101 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42450 (_ BitVec 32)) SeekEntryResult!7924)

(assert (=> b!775101 (= e!431425 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345289))))

(declare-fun b!775102 () Bool)

(declare-fun res!524251 () Bool)

(declare-fun e!431432 () Bool)

(assert (=> b!775102 (=> (not res!524251) (not e!431432))))

(declare-datatypes ((List!14372 0))(
  ( (Nil!14369) (Cons!14368 (h!15476 (_ BitVec 64)) (t!20695 List!14372)) )
))
(declare-fun arrayNoDuplicates!0 (array!42450 (_ BitVec 32) List!14372) Bool)

(assert (=> b!775102 (= res!524251 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14369))))

(declare-fun b!775103 () Bool)

(declare-datatypes ((Unit!26732 0))(
  ( (Unit!26733) )
))
(declare-fun e!431426 () Unit!26732)

(declare-fun Unit!26734 () Unit!26732)

(assert (=> b!775103 (= e!431426 Unit!26734)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!345293 () SeekEntryResult!7924)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42450 (_ BitVec 32)) SeekEntryResult!7924)

(assert (=> b!775103 (= lt!345293 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20317 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!345285 () SeekEntryResult!7924)

(declare-fun lt!345295 () (_ BitVec 32))

(assert (=> b!775103 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345295 resIntermediateIndex!5 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345285)))

(declare-fun e!431433 () Bool)

(declare-fun b!775104 () Bool)

(assert (=> b!775104 (= e!431433 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345295 resIntermediateIndex!5 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345285)))))

(declare-fun b!775105 () Bool)

(declare-fun e!431428 () Bool)

(declare-fun e!431434 () Bool)

(assert (=> b!775105 (= e!431428 e!431434)))

(declare-fun res!524261 () Bool)

(assert (=> b!775105 (=> res!524261 e!431434)))

(assert (=> b!775105 (= res!524261 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345295 #b00000000000000000000000000000000) (bvsge lt!345295 (size!20738 a!3186))))))

(declare-fun lt!345298 () Unit!26732)

(assert (=> b!775105 (= lt!345298 e!431426)))

(declare-fun c!85829 () Bool)

(declare-fun lt!345294 () Bool)

(assert (=> b!775105 (= c!85829 lt!345294)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!775105 (= lt!345294 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775105 (= lt!345295 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!775107 () Bool)

(declare-fun Unit!26735 () Unit!26732)

(assert (=> b!775107 (= e!431426 Unit!26735)))

(assert (=> b!775107 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345295 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345289)))

(declare-fun b!775108 () Bool)

(declare-fun res!524256 () Bool)

(assert (=> b!775108 (=> (not res!524256) (not e!431432))))

(assert (=> b!775108 (= res!524256 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20738 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20738 a!3186))))))

(declare-fun e!431427 () Bool)

(declare-fun b!775109 () Bool)

(declare-fun lt!345296 () SeekEntryResult!7924)

(assert (=> b!775109 (= e!431427 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345296))))

(declare-fun b!775110 () Bool)

(declare-fun res!524250 () Bool)

(declare-fun e!431424 () Bool)

(assert (=> b!775110 (=> (not res!524250) (not e!431424))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775110 (= res!524250 (validKeyInArray!0 (select (arr!20317 a!3186) j!159)))))

(declare-fun b!775111 () Bool)

(declare-fun e!431423 () Bool)

(assert (=> b!775111 (= e!431423 (not e!431428))))

(declare-fun res!524254 () Bool)

(assert (=> b!775111 (=> res!524254 e!431428)))

(declare-fun lt!345297 () SeekEntryResult!7924)

(get-info :version)

(assert (=> b!775111 (= res!524254 (or (not ((_ is Intermediate!7924) lt!345297)) (bvsge x!1131 (x!65036 lt!345297))))))

(assert (=> b!775111 (= lt!345285 (Found!7924 j!159))))

(declare-fun e!431430 () Bool)

(assert (=> b!775111 e!431430))

(declare-fun res!524257 () Bool)

(assert (=> b!775111 (=> (not res!524257) (not e!431430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42450 (_ BitVec 32)) Bool)

(assert (=> b!775111 (= res!524257 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345286 () Unit!26732)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42450 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26732)

(assert (=> b!775111 (= lt!345286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775112 () Bool)

(declare-fun res!524262 () Bool)

(assert (=> b!775112 (=> (not res!524262) (not e!431424))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775112 (= res!524262 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775113 () Bool)

(declare-fun res!524255 () Bool)

(declare-fun e!431431 () Bool)

(assert (=> b!775113 (=> (not res!524255) (not e!431431))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775113 (= res!524255 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20317 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775114 () Bool)

(assert (=> b!775114 (= e!431424 e!431432)))

(declare-fun res!524252 () Bool)

(assert (=> b!775114 (=> (not res!524252) (not e!431432))))

(declare-fun lt!345287 () SeekEntryResult!7924)

(assert (=> b!775114 (= res!524252 (or (= lt!345287 (MissingZero!7924 i!1173)) (= lt!345287 (MissingVacant!7924 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42450 (_ BitVec 32)) SeekEntryResult!7924)

(assert (=> b!775114 (= lt!345287 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!775115 () Bool)

(declare-fun res!524249 () Bool)

(assert (=> b!775115 (=> res!524249 e!431434)))

(assert (=> b!775115 (= res!524249 e!431433)))

(declare-fun c!85828 () Bool)

(assert (=> b!775115 (= c!85828 lt!345294)))

(declare-fun b!775116 () Bool)

(assert (=> b!775116 (= e!431431 e!431423)))

(declare-fun res!524260 () Bool)

(assert (=> b!775116 (=> (not res!524260) (not e!431423))))

(declare-fun lt!345291 () SeekEntryResult!7924)

(assert (=> b!775116 (= res!524260 (= lt!345291 lt!345297))))

(declare-fun lt!345288 () (_ BitVec 64))

(declare-fun lt!345292 () array!42450)

(assert (=> b!775116 (= lt!345297 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345288 lt!345292 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775116 (= lt!345291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345288 mask!3328) lt!345288 lt!345292 mask!3328))))

(assert (=> b!775116 (= lt!345288 (select (store (arr!20317 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!775116 (= lt!345292 (array!42451 (store (arr!20317 a!3186) i!1173 k0!2102) (size!20738 a!3186)))))

(declare-fun b!775117 () Bool)

(declare-fun res!524253 () Bool)

(assert (=> b!775117 (=> res!524253 e!431434)))

(assert (=> b!775117 (= res!524253 (not (= lt!345291 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345295 lt!345288 lt!345292 mask!3328))))))

(declare-fun b!775118 () Bool)

(assert (=> b!775118 (= e!431434 true)))

(assert (=> b!775118 (= (seekEntryOrOpen!0 lt!345288 lt!345292 mask!3328) lt!345285)))

(declare-fun lt!345290 () Unit!26732)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26732)

(assert (=> b!775118 (= lt!345290 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!345295 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!775119 () Bool)

(assert (=> b!775119 (= e!431433 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345295 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345289)))))

(declare-fun b!775106 () Bool)

(declare-fun res!524245 () Bool)

(assert (=> b!775106 (=> (not res!524245) (not e!431432))))

(assert (=> b!775106 (= res!524245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!524263 () Bool)

(assert (=> start!67140 (=> (not res!524263) (not e!431424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67140 (= res!524263 (validMask!0 mask!3328))))

(assert (=> start!67140 e!431424))

(assert (=> start!67140 true))

(declare-fun array_inv!16091 (array!42450) Bool)

(assert (=> start!67140 (array_inv!16091 a!3186)))

(declare-fun b!775120 () Bool)

(assert (=> b!775120 (= e!431430 e!431427)))

(declare-fun res!524246 () Bool)

(assert (=> b!775120 (=> (not res!524246) (not e!431427))))

(assert (=> b!775120 (= res!524246 (= (seekEntryOrOpen!0 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345296))))

(assert (=> b!775120 (= lt!345296 (Found!7924 j!159))))

(declare-fun b!775121 () Bool)

(assert (=> b!775121 (= e!431432 e!431431)))

(declare-fun res!524258 () Bool)

(assert (=> b!775121 (=> (not res!524258) (not e!431431))))

(assert (=> b!775121 (= res!524258 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20317 a!3186) j!159) mask!3328) (select (arr!20317 a!3186) j!159) a!3186 mask!3328) lt!345289))))

(assert (=> b!775121 (= lt!345289 (Intermediate!7924 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775122 () Bool)

(declare-fun res!524259 () Bool)

(assert (=> b!775122 (=> (not res!524259) (not e!431424))))

(assert (=> b!775122 (= res!524259 (validKeyInArray!0 k0!2102))))

(declare-fun b!775123 () Bool)

(assert (=> b!775123 (= e!431425 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20317 a!3186) j!159) a!3186 mask!3328) (Found!7924 j!159)))))

(declare-fun b!775124 () Bool)

(declare-fun res!524247 () Bool)

(assert (=> b!775124 (=> (not res!524247) (not e!431431))))

(assert (=> b!775124 (= res!524247 e!431425)))

(declare-fun c!85830 () Bool)

(assert (=> b!775124 (= c!85830 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775125 () Bool)

(declare-fun res!524248 () Bool)

(assert (=> b!775125 (=> (not res!524248) (not e!431424))))

(assert (=> b!775125 (= res!524248 (and (= (size!20738 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20738 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20738 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67140 res!524263) b!775125))

(assert (= (and b!775125 res!524248) b!775110))

(assert (= (and b!775110 res!524250) b!775122))

(assert (= (and b!775122 res!524259) b!775112))

(assert (= (and b!775112 res!524262) b!775114))

(assert (= (and b!775114 res!524252) b!775106))

(assert (= (and b!775106 res!524245) b!775102))

(assert (= (and b!775102 res!524251) b!775108))

(assert (= (and b!775108 res!524256) b!775121))

(assert (= (and b!775121 res!524258) b!775113))

(assert (= (and b!775113 res!524255) b!775124))

(assert (= (and b!775124 c!85830) b!775101))

(assert (= (and b!775124 (not c!85830)) b!775123))

(assert (= (and b!775124 res!524247) b!775116))

(assert (= (and b!775116 res!524260) b!775111))

(assert (= (and b!775111 res!524257) b!775120))

(assert (= (and b!775120 res!524246) b!775109))

(assert (= (and b!775111 (not res!524254)) b!775105))

(assert (= (and b!775105 c!85829) b!775107))

(assert (= (and b!775105 (not c!85829)) b!775103))

(assert (= (and b!775105 (not res!524261)) b!775115))

(assert (= (and b!775115 c!85828) b!775119))

(assert (= (and b!775115 (not c!85828)) b!775104))

(assert (= (and b!775115 (not res!524249)) b!775117))

(assert (= (and b!775117 (not res!524253)) b!775118))

(declare-fun m!719447 () Bool)

(assert (=> b!775120 m!719447))

(assert (=> b!775120 m!719447))

(declare-fun m!719449 () Bool)

(assert (=> b!775120 m!719449))

(declare-fun m!719451 () Bool)

(assert (=> b!775114 m!719451))

(assert (=> b!775110 m!719447))

(assert (=> b!775110 m!719447))

(declare-fun m!719453 () Bool)

(assert (=> b!775110 m!719453))

(declare-fun m!719455 () Bool)

(assert (=> b!775118 m!719455))

(declare-fun m!719457 () Bool)

(assert (=> b!775118 m!719457))

(assert (=> b!775123 m!719447))

(assert (=> b!775123 m!719447))

(declare-fun m!719459 () Bool)

(assert (=> b!775123 m!719459))

(declare-fun m!719461 () Bool)

(assert (=> b!775122 m!719461))

(declare-fun m!719463 () Bool)

(assert (=> b!775117 m!719463))

(assert (=> b!775119 m!719447))

(assert (=> b!775119 m!719447))

(declare-fun m!719465 () Bool)

(assert (=> b!775119 m!719465))

(declare-fun m!719467 () Bool)

(assert (=> b!775105 m!719467))

(assert (=> b!775109 m!719447))

(assert (=> b!775109 m!719447))

(declare-fun m!719469 () Bool)

(assert (=> b!775109 m!719469))

(declare-fun m!719471 () Bool)

(assert (=> b!775111 m!719471))

(declare-fun m!719473 () Bool)

(assert (=> b!775111 m!719473))

(declare-fun m!719475 () Bool)

(assert (=> b!775112 m!719475))

(assert (=> b!775104 m!719447))

(assert (=> b!775104 m!719447))

(declare-fun m!719477 () Bool)

(assert (=> b!775104 m!719477))

(assert (=> b!775121 m!719447))

(assert (=> b!775121 m!719447))

(declare-fun m!719479 () Bool)

(assert (=> b!775121 m!719479))

(assert (=> b!775121 m!719479))

(assert (=> b!775121 m!719447))

(declare-fun m!719481 () Bool)

(assert (=> b!775121 m!719481))

(declare-fun m!719483 () Bool)

(assert (=> b!775102 m!719483))

(declare-fun m!719485 () Bool)

(assert (=> b!775106 m!719485))

(declare-fun m!719487 () Bool)

(assert (=> b!775113 m!719487))

(assert (=> b!775107 m!719447))

(assert (=> b!775107 m!719447))

(assert (=> b!775107 m!719465))

(assert (=> b!775103 m!719447))

(assert (=> b!775103 m!719447))

(assert (=> b!775103 m!719459))

(assert (=> b!775103 m!719447))

(assert (=> b!775103 m!719477))

(assert (=> b!775101 m!719447))

(assert (=> b!775101 m!719447))

(declare-fun m!719489 () Bool)

(assert (=> b!775101 m!719489))

(declare-fun m!719491 () Bool)

(assert (=> b!775116 m!719491))

(assert (=> b!775116 m!719491))

(declare-fun m!719493 () Bool)

(assert (=> b!775116 m!719493))

(declare-fun m!719495 () Bool)

(assert (=> b!775116 m!719495))

(declare-fun m!719497 () Bool)

(assert (=> b!775116 m!719497))

(declare-fun m!719499 () Bool)

(assert (=> b!775116 m!719499))

(declare-fun m!719501 () Bool)

(assert (=> start!67140 m!719501))

(declare-fun m!719503 () Bool)

(assert (=> start!67140 m!719503))

(check-sat (not b!775120) (not b!775110) (not b!775107) (not b!775101) (not start!67140) (not b!775112) (not b!775116) (not b!775103) (not b!775111) (not b!775104) (not b!775102) (not b!775123) (not b!775114) (not b!775118) (not b!775119) (not b!775109) (not b!775106) (not b!775122) (not b!775105) (not b!775121) (not b!775117))
(check-sat)
