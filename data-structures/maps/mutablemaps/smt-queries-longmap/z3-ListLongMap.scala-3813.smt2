; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52318 () Bool)

(assert start!52318)

(declare-fun b!570559 () Bool)

(declare-fun res!360496 () Bool)

(declare-fun e!328149 () Bool)

(assert (=> b!570559 (=> (not res!360496) (not e!328149))))

(declare-datatypes ((array!35732 0))(
  ( (array!35733 (arr!17152 (Array (_ BitVec 32) (_ BitVec 64))) (size!17516 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35732)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570559 (= res!360496 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570560 () Bool)

(declare-fun res!360493 () Bool)

(assert (=> b!570560 (=> (not res!360493) (not e!328149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570560 (= res!360493 (validKeyInArray!0 k0!1914))))

(declare-fun b!570561 () Bool)

(declare-fun res!360491 () Bool)

(assert (=> b!570561 (=> (not res!360491) (not e!328149))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570561 (= res!360491 (validKeyInArray!0 (select (arr!17152 a!3118) j!142)))))

(declare-fun b!570562 () Bool)

(declare-fun e!328152 () Bool)

(assert (=> b!570562 (= e!328149 e!328152)))

(declare-fun res!360500 () Bool)

(assert (=> b!570562 (=> (not res!360500) (not e!328152))))

(declare-datatypes ((SeekEntryResult!5608 0))(
  ( (MissingZero!5608 (index!24659 (_ BitVec 32))) (Found!5608 (index!24660 (_ BitVec 32))) (Intermediate!5608 (undefined!6420 Bool) (index!24661 (_ BitVec 32)) (x!53559 (_ BitVec 32))) (Undefined!5608) (MissingVacant!5608 (index!24662 (_ BitVec 32))) )
))
(declare-fun lt!260170 () SeekEntryResult!5608)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570562 (= res!360500 (or (= lt!260170 (MissingZero!5608 i!1132)) (= lt!260170 (MissingVacant!5608 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35732 (_ BitVec 32)) SeekEntryResult!5608)

(assert (=> b!570562 (= lt!260170 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!570563 () Bool)

(declare-fun e!328148 () Bool)

(declare-fun e!328153 () Bool)

(assert (=> b!570563 (= e!328148 e!328153)))

(declare-fun res!360495 () Bool)

(assert (=> b!570563 (=> res!360495 e!328153)))

(declare-fun lt!260171 () SeekEntryResult!5608)

(get-info :version)

(assert (=> b!570563 (= res!360495 (or (undefined!6420 lt!260171) (not ((_ is Intermediate!5608) lt!260171)) (= (select (arr!17152 a!3118) (index!24661 lt!260171)) (select (arr!17152 a!3118) j!142)) (= (select (arr!17152 a!3118) (index!24661 lt!260171)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!360492 () Bool)

(assert (=> start!52318 (=> (not res!360492) (not e!328149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52318 (= res!360492 (validMask!0 mask!3119))))

(assert (=> start!52318 e!328149))

(assert (=> start!52318 true))

(declare-fun array_inv!12926 (array!35732) Bool)

(assert (=> start!52318 (array_inv!12926 a!3118)))

(declare-fun b!570564 () Bool)

(declare-fun e!328150 () Bool)

(assert (=> b!570564 (= e!328150 (not true))))

(assert (=> b!570564 e!328148))

(declare-fun res!360499 () Bool)

(assert (=> b!570564 (=> (not res!360499) (not e!328148))))

(declare-fun lt!260167 () SeekEntryResult!5608)

(assert (=> b!570564 (= res!360499 (= lt!260167 (Found!5608 j!142)))))

(assert (=> b!570564 (= lt!260167 (seekEntryOrOpen!0 (select (arr!17152 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35732 (_ BitVec 32)) Bool)

(assert (=> b!570564 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17918 0))(
  ( (Unit!17919) )
))
(declare-fun lt!260168 () Unit!17918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17918)

(assert (=> b!570564 (= lt!260168 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570565 () Bool)

(assert (=> b!570565 (= e!328152 e!328150)))

(declare-fun res!360490 () Bool)

(assert (=> b!570565 (=> (not res!360490) (not e!328150))))

(declare-fun lt!260166 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35732 (_ BitVec 32)) SeekEntryResult!5608)

(assert (=> b!570565 (= res!360490 (= lt!260171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260166 (select (store (arr!17152 a!3118) i!1132 k0!1914) j!142) (array!35733 (store (arr!17152 a!3118) i!1132 k0!1914) (size!17516 a!3118)) mask!3119)))))

(declare-fun lt!260169 () (_ BitVec 32))

(assert (=> b!570565 (= lt!260171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260169 (select (arr!17152 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570565 (= lt!260166 (toIndex!0 (select (store (arr!17152 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!570565 (= lt!260169 (toIndex!0 (select (arr!17152 a!3118) j!142) mask!3119))))

(declare-fun b!570566 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35732 (_ BitVec 32)) SeekEntryResult!5608)

(assert (=> b!570566 (= e!328153 (= lt!260167 (seekKeyOrZeroReturnVacant!0 (x!53559 lt!260171) (index!24661 lt!260171) (index!24661 lt!260171) (select (arr!17152 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570567 () Bool)

(declare-fun res!360497 () Bool)

(assert (=> b!570567 (=> (not res!360497) (not e!328149))))

(assert (=> b!570567 (= res!360497 (and (= (size!17516 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17516 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17516 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570568 () Bool)

(declare-fun res!360494 () Bool)

(assert (=> b!570568 (=> (not res!360494) (not e!328152))))

(declare-datatypes ((List!11285 0))(
  ( (Nil!11282) (Cons!11281 (h!12305 (_ BitVec 64)) (t!17521 List!11285)) )
))
(declare-fun arrayNoDuplicates!0 (array!35732 (_ BitVec 32) List!11285) Bool)

(assert (=> b!570568 (= res!360494 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11282))))

(declare-fun b!570569 () Bool)

(declare-fun res!360498 () Bool)

(assert (=> b!570569 (=> (not res!360498) (not e!328152))))

(assert (=> b!570569 (= res!360498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!52318 res!360492) b!570567))

(assert (= (and b!570567 res!360497) b!570561))

(assert (= (and b!570561 res!360491) b!570560))

(assert (= (and b!570560 res!360493) b!570559))

(assert (= (and b!570559 res!360496) b!570562))

(assert (= (and b!570562 res!360500) b!570569))

(assert (= (and b!570569 res!360498) b!570568))

(assert (= (and b!570568 res!360494) b!570565))

(assert (= (and b!570565 res!360490) b!570564))

(assert (= (and b!570564 res!360499) b!570563))

(assert (= (and b!570563 (not res!360495)) b!570566))

(declare-fun m!549491 () Bool)

(assert (=> b!570564 m!549491))

(assert (=> b!570564 m!549491))

(declare-fun m!549493 () Bool)

(assert (=> b!570564 m!549493))

(declare-fun m!549495 () Bool)

(assert (=> b!570564 m!549495))

(declare-fun m!549497 () Bool)

(assert (=> b!570564 m!549497))

(declare-fun m!549499 () Bool)

(assert (=> b!570562 m!549499))

(declare-fun m!549501 () Bool)

(assert (=> b!570568 m!549501))

(assert (=> b!570565 m!549491))

(declare-fun m!549503 () Bool)

(assert (=> b!570565 m!549503))

(assert (=> b!570565 m!549491))

(declare-fun m!549505 () Bool)

(assert (=> b!570565 m!549505))

(assert (=> b!570565 m!549491))

(declare-fun m!549507 () Bool)

(assert (=> b!570565 m!549507))

(declare-fun m!549509 () Bool)

(assert (=> b!570565 m!549509))

(assert (=> b!570565 m!549505))

(declare-fun m!549511 () Bool)

(assert (=> b!570565 m!549511))

(assert (=> b!570565 m!549505))

(declare-fun m!549513 () Bool)

(assert (=> b!570565 m!549513))

(assert (=> b!570566 m!549491))

(assert (=> b!570566 m!549491))

(declare-fun m!549515 () Bool)

(assert (=> b!570566 m!549515))

(assert (=> b!570561 m!549491))

(assert (=> b!570561 m!549491))

(declare-fun m!549517 () Bool)

(assert (=> b!570561 m!549517))

(declare-fun m!549519 () Bool)

(assert (=> b!570563 m!549519))

(assert (=> b!570563 m!549491))

(declare-fun m!549521 () Bool)

(assert (=> b!570559 m!549521))

(declare-fun m!549523 () Bool)

(assert (=> b!570560 m!549523))

(declare-fun m!549525 () Bool)

(assert (=> start!52318 m!549525))

(declare-fun m!549527 () Bool)

(assert (=> start!52318 m!549527))

(declare-fun m!549529 () Bool)

(assert (=> b!570569 m!549529))

(check-sat (not b!570569) (not b!570564) (not b!570559) (not b!570561) (not b!570560) (not b!570568) (not start!52318) (not b!570566) (not b!570562) (not b!570565))
(check-sat)
