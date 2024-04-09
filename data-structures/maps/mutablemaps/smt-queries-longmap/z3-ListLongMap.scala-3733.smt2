; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51412 () Bool)

(assert start!51412)

(declare-fun b!561179 () Bool)

(declare-fun res!352483 () Bool)

(declare-fun e!323380 () Bool)

(assert (=> b!561179 (=> (not res!352483) (not e!323380))))

(declare-datatypes ((array!35231 0))(
  ( (array!35232 (arr!16912 (Array (_ BitVec 32) (_ BitVec 64))) (size!17276 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35231)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561179 (= res!352483 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561180 () Bool)

(declare-fun e!323377 () Bool)

(declare-fun e!323375 () Bool)

(assert (=> b!561180 (= e!323377 e!323375)))

(declare-fun res!352486 () Bool)

(assert (=> b!561180 (=> res!352486 e!323375)))

(declare-datatypes ((SeekEntryResult!5368 0))(
  ( (MissingZero!5368 (index!23699 (_ BitVec 32))) (Found!5368 (index!23700 (_ BitVec 32))) (Intermediate!5368 (undefined!6180 Bool) (index!23701 (_ BitVec 32)) (x!52634 (_ BitVec 32))) (Undefined!5368) (MissingVacant!5368 (index!23702 (_ BitVec 32))) )
))
(declare-fun lt!255430 () SeekEntryResult!5368)

(get-info :version)

(assert (=> b!561180 (= res!352486 (or (undefined!6180 lt!255430) (not ((_ is Intermediate!5368) lt!255430))))))

(declare-fun b!561181 () Bool)

(declare-fun e!323378 () Bool)

(assert (=> b!561181 (= e!323375 e!323378)))

(declare-fun res!352490 () Bool)

(assert (=> b!561181 (=> res!352490 e!323378)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255432 () (_ BitVec 64))

(assert (=> b!561181 (= res!352490 (or (= lt!255432 (select (arr!16912 a!3118) j!142)) (= lt!255432 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561181 (= lt!255432 (select (arr!16912 a!3118) (index!23701 lt!255430)))))

(declare-fun b!561182 () Bool)

(declare-fun res!352491 () Bool)

(assert (=> b!561182 (=> (not res!352491) (not e!323380))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561182 (= res!352491 (and (= (size!17276 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17276 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17276 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561183 () Bool)

(declare-fun res!352492 () Bool)

(declare-fun e!323374 () Bool)

(assert (=> b!561183 (=> (not res!352492) (not e!323374))))

(declare-datatypes ((List!11045 0))(
  ( (Nil!11042) (Cons!11041 (h!12044 (_ BitVec 64)) (t!17281 List!11045)) )
))
(declare-fun arrayNoDuplicates!0 (array!35231 (_ BitVec 32) List!11045) Bool)

(assert (=> b!561183 (= res!352492 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11042))))

(declare-fun b!561184 () Bool)

(declare-fun e!323376 () Bool)

(assert (=> b!561184 (= e!323378 e!323376)))

(declare-fun res!352482 () Bool)

(assert (=> b!561184 (=> (not res!352482) (not e!323376))))

(declare-fun lt!255426 () SeekEntryResult!5368)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35231 (_ BitVec 32)) SeekEntryResult!5368)

(assert (=> b!561184 (= res!352482 (= lt!255426 (seekKeyOrZeroReturnVacant!0 (x!52634 lt!255430) (index!23701 lt!255430) (index!23701 lt!255430) (select (arr!16912 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561185 () Bool)

(declare-fun res!352484 () Bool)

(assert (=> b!561185 (=> (not res!352484) (not e!323380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561185 (= res!352484 (validKeyInArray!0 k0!1914))))

(declare-fun b!561186 () Bool)

(declare-fun e!323379 () Bool)

(assert (=> b!561186 (= e!323374 e!323379)))

(declare-fun res!352493 () Bool)

(assert (=> b!561186 (=> (not res!352493) (not e!323379))))

(declare-fun lt!255429 () array!35231)

(declare-fun lt!255427 () (_ BitVec 64))

(declare-fun lt!255431 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35231 (_ BitVec 32)) SeekEntryResult!5368)

(assert (=> b!561186 (= res!352493 (= lt!255430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255431 lt!255427 lt!255429 mask!3119)))))

(declare-fun lt!255434 () (_ BitVec 32))

(assert (=> b!561186 (= lt!255430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255434 (select (arr!16912 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561186 (= lt!255431 (toIndex!0 lt!255427 mask!3119))))

(assert (=> b!561186 (= lt!255427 (select (store (arr!16912 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561186 (= lt!255434 (toIndex!0 (select (arr!16912 a!3118) j!142) mask!3119))))

(assert (=> b!561186 (= lt!255429 (array!35232 (store (arr!16912 a!3118) i!1132 k0!1914) (size!17276 a!3118)))))

(declare-fun b!561187 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35231 (_ BitVec 32)) SeekEntryResult!5368)

(assert (=> b!561187 (= e!323376 (= (seekEntryOrOpen!0 lt!255427 lt!255429 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52634 lt!255430) (index!23701 lt!255430) (index!23701 lt!255430) lt!255427 lt!255429 mask!3119)))))

(declare-fun b!561188 () Bool)

(declare-fun res!352487 () Bool)

(assert (=> b!561188 (=> (not res!352487) (not e!323374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35231 (_ BitVec 32)) Bool)

(assert (=> b!561188 (= res!352487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!352488 () Bool)

(assert (=> start!51412 (=> (not res!352488) (not e!323380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51412 (= res!352488 (validMask!0 mask!3119))))

(assert (=> start!51412 e!323380))

(assert (=> start!51412 true))

(declare-fun array_inv!12686 (array!35231) Bool)

(assert (=> start!51412 (array_inv!12686 a!3118)))

(declare-fun b!561189 () Bool)

(assert (=> b!561189 (= e!323379 (not true))))

(assert (=> b!561189 e!323377))

(declare-fun res!352481 () Bool)

(assert (=> b!561189 (=> (not res!352481) (not e!323377))))

(assert (=> b!561189 (= res!352481 (= lt!255426 (Found!5368 j!142)))))

(assert (=> b!561189 (= lt!255426 (seekEntryOrOpen!0 (select (arr!16912 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561189 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17510 0))(
  ( (Unit!17511) )
))
(declare-fun lt!255428 () Unit!17510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35231 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17510)

(assert (=> b!561189 (= lt!255428 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561190 () Bool)

(declare-fun res!352485 () Bool)

(assert (=> b!561190 (=> (not res!352485) (not e!323380))))

(assert (=> b!561190 (= res!352485 (validKeyInArray!0 (select (arr!16912 a!3118) j!142)))))

(declare-fun b!561191 () Bool)

(assert (=> b!561191 (= e!323380 e!323374)))

(declare-fun res!352489 () Bool)

(assert (=> b!561191 (=> (not res!352489) (not e!323374))))

(declare-fun lt!255433 () SeekEntryResult!5368)

(assert (=> b!561191 (= res!352489 (or (= lt!255433 (MissingZero!5368 i!1132)) (= lt!255433 (MissingVacant!5368 i!1132))))))

(assert (=> b!561191 (= lt!255433 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!51412 res!352488) b!561182))

(assert (= (and b!561182 res!352491) b!561190))

(assert (= (and b!561190 res!352485) b!561185))

(assert (= (and b!561185 res!352484) b!561179))

(assert (= (and b!561179 res!352483) b!561191))

(assert (= (and b!561191 res!352489) b!561188))

(assert (= (and b!561188 res!352487) b!561183))

(assert (= (and b!561183 res!352492) b!561186))

(assert (= (and b!561186 res!352493) b!561189))

(assert (= (and b!561189 res!352481) b!561180))

(assert (= (and b!561180 (not res!352486)) b!561181))

(assert (= (and b!561181 (not res!352490)) b!561184))

(assert (= (and b!561184 res!352482) b!561187))

(declare-fun m!539103 () Bool)

(assert (=> b!561184 m!539103))

(assert (=> b!561184 m!539103))

(declare-fun m!539105 () Bool)

(assert (=> b!561184 m!539105))

(declare-fun m!539107 () Bool)

(assert (=> b!561185 m!539107))

(declare-fun m!539109 () Bool)

(assert (=> start!51412 m!539109))

(declare-fun m!539111 () Bool)

(assert (=> start!51412 m!539111))

(assert (=> b!561181 m!539103))

(declare-fun m!539113 () Bool)

(assert (=> b!561181 m!539113))

(declare-fun m!539115 () Bool)

(assert (=> b!561179 m!539115))

(assert (=> b!561190 m!539103))

(assert (=> b!561190 m!539103))

(declare-fun m!539117 () Bool)

(assert (=> b!561190 m!539117))

(declare-fun m!539119 () Bool)

(assert (=> b!561187 m!539119))

(declare-fun m!539121 () Bool)

(assert (=> b!561187 m!539121))

(declare-fun m!539123 () Bool)

(assert (=> b!561188 m!539123))

(declare-fun m!539125 () Bool)

(assert (=> b!561183 m!539125))

(declare-fun m!539127 () Bool)

(assert (=> b!561191 m!539127))

(assert (=> b!561189 m!539103))

(assert (=> b!561189 m!539103))

(declare-fun m!539129 () Bool)

(assert (=> b!561189 m!539129))

(declare-fun m!539131 () Bool)

(assert (=> b!561189 m!539131))

(declare-fun m!539133 () Bool)

(assert (=> b!561189 m!539133))

(assert (=> b!561186 m!539103))

(declare-fun m!539135 () Bool)

(assert (=> b!561186 m!539135))

(assert (=> b!561186 m!539103))

(declare-fun m!539137 () Bool)

(assert (=> b!561186 m!539137))

(declare-fun m!539139 () Bool)

(assert (=> b!561186 m!539139))

(assert (=> b!561186 m!539103))

(declare-fun m!539141 () Bool)

(assert (=> b!561186 m!539141))

(declare-fun m!539143 () Bool)

(assert (=> b!561186 m!539143))

(declare-fun m!539145 () Bool)

(assert (=> b!561186 m!539145))

(check-sat (not b!561183) (not b!561190) (not b!561191) (not b!561187) (not b!561185) (not b!561179) (not b!561186) (not b!561184) (not b!561189) (not b!561188) (not start!51412))
(check-sat)
