; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52894 () Bool)

(assert start!52894)

(declare-fun b!576197 () Bool)

(declare-fun e!331515 () Bool)

(assert (=> b!576197 (= e!331515 (not true))))

(declare-fun e!331513 () Bool)

(assert (=> b!576197 e!331513))

(declare-fun res!364586 () Bool)

(assert (=> b!576197 (=> (not res!364586) (not e!331513))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35936 0))(
  ( (array!35937 (arr!17245 (Array (_ BitVec 32) (_ BitVec 64))) (size!17609 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35936)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35936 (_ BitVec 32)) Bool)

(assert (=> b!576197 (= res!364586 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18104 0))(
  ( (Unit!18105) )
))
(declare-fun lt!263614 () Unit!18104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35936 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18104)

(assert (=> b!576197 (= lt!263614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!576198 () Bool)

(declare-fun res!364580 () Bool)

(assert (=> b!576198 (=> (not res!364580) (not e!331515))))

(assert (=> b!576198 (= res!364580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576199 () Bool)

(declare-fun res!364584 () Bool)

(declare-fun e!331514 () Bool)

(assert (=> b!576199 (=> (not res!364584) (not e!331514))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576199 (= res!364584 (validKeyInArray!0 k0!1914))))

(declare-fun b!576200 () Bool)

(declare-fun res!364581 () Bool)

(assert (=> b!576200 (=> (not res!364581) (not e!331514))))

(declare-fun arrayContainsKey!0 (array!35936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576200 (= res!364581 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!364587 () Bool)

(assert (=> start!52894 (=> (not res!364587) (not e!331514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52894 (= res!364587 (validMask!0 mask!3119))))

(assert (=> start!52894 e!331514))

(assert (=> start!52894 true))

(declare-fun array_inv!13019 (array!35936) Bool)

(assert (=> start!52894 (array_inv!13019 a!3118)))

(declare-fun b!576201 () Bool)

(assert (=> b!576201 (= e!331514 e!331515)))

(declare-fun res!364583 () Bool)

(assert (=> b!576201 (=> (not res!364583) (not e!331515))))

(declare-datatypes ((SeekEntryResult!5701 0))(
  ( (MissingZero!5701 (index!25031 (_ BitVec 32))) (Found!5701 (index!25032 (_ BitVec 32))) (Intermediate!5701 (undefined!6513 Bool) (index!25033 (_ BitVec 32)) (x!53951 (_ BitVec 32))) (Undefined!5701) (MissingVacant!5701 (index!25034 (_ BitVec 32))) )
))
(declare-fun lt!263615 () SeekEntryResult!5701)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!576201 (= res!364583 (or (= lt!263615 (MissingZero!5701 i!1132)) (= lt!263615 (MissingVacant!5701 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35936 (_ BitVec 32)) SeekEntryResult!5701)

(assert (=> b!576201 (= lt!263615 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!576202 () Bool)

(assert (=> b!576202 (= e!331513 (= (seekEntryOrOpen!0 (select (arr!17245 a!3118) j!142) a!3118 mask!3119) (Found!5701 j!142)))))

(declare-fun b!576203 () Bool)

(declare-fun res!364585 () Bool)

(assert (=> b!576203 (=> (not res!364585) (not e!331515))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35936 (_ BitVec 32)) SeekEntryResult!5701)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576203 (= res!364585 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17245 a!3118) j!142) mask!3119) (select (arr!17245 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17245 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17245 a!3118) i!1132 k0!1914) j!142) (array!35937 (store (arr!17245 a!3118) i!1132 k0!1914) (size!17609 a!3118)) mask!3119)))))

(declare-fun b!576204 () Bool)

(declare-fun res!364589 () Bool)

(assert (=> b!576204 (=> (not res!364589) (not e!331515))))

(declare-datatypes ((List!11378 0))(
  ( (Nil!11375) (Cons!11374 (h!12416 (_ BitVec 64)) (t!17614 List!11378)) )
))
(declare-fun arrayNoDuplicates!0 (array!35936 (_ BitVec 32) List!11378) Bool)

(assert (=> b!576204 (= res!364589 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11375))))

(declare-fun b!576205 () Bool)

(declare-fun res!364588 () Bool)

(assert (=> b!576205 (=> (not res!364588) (not e!331514))))

(assert (=> b!576205 (= res!364588 (validKeyInArray!0 (select (arr!17245 a!3118) j!142)))))

(declare-fun b!576206 () Bool)

(declare-fun res!364582 () Bool)

(assert (=> b!576206 (=> (not res!364582) (not e!331514))))

(assert (=> b!576206 (= res!364582 (and (= (size!17609 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17609 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17609 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52894 res!364587) b!576206))

(assert (= (and b!576206 res!364582) b!576205))

(assert (= (and b!576205 res!364588) b!576199))

(assert (= (and b!576199 res!364584) b!576200))

(assert (= (and b!576200 res!364581) b!576201))

(assert (= (and b!576201 res!364583) b!576198))

(assert (= (and b!576198 res!364580) b!576204))

(assert (= (and b!576204 res!364589) b!576203))

(assert (= (and b!576203 res!364585) b!576197))

(assert (= (and b!576197 res!364586) b!576202))

(declare-fun m!555187 () Bool)

(assert (=> start!52894 m!555187))

(declare-fun m!555189 () Bool)

(assert (=> start!52894 m!555189))

(declare-fun m!555191 () Bool)

(assert (=> b!576199 m!555191))

(declare-fun m!555193 () Bool)

(assert (=> b!576201 m!555193))

(declare-fun m!555195 () Bool)

(assert (=> b!576202 m!555195))

(assert (=> b!576202 m!555195))

(declare-fun m!555197 () Bool)

(assert (=> b!576202 m!555197))

(assert (=> b!576205 m!555195))

(assert (=> b!576205 m!555195))

(declare-fun m!555199 () Bool)

(assert (=> b!576205 m!555199))

(assert (=> b!576203 m!555195))

(declare-fun m!555201 () Bool)

(assert (=> b!576203 m!555201))

(assert (=> b!576203 m!555195))

(declare-fun m!555203 () Bool)

(assert (=> b!576203 m!555203))

(declare-fun m!555205 () Bool)

(assert (=> b!576203 m!555205))

(assert (=> b!576203 m!555203))

(declare-fun m!555207 () Bool)

(assert (=> b!576203 m!555207))

(assert (=> b!576203 m!555201))

(assert (=> b!576203 m!555195))

(declare-fun m!555209 () Bool)

(assert (=> b!576203 m!555209))

(declare-fun m!555211 () Bool)

(assert (=> b!576203 m!555211))

(assert (=> b!576203 m!555203))

(assert (=> b!576203 m!555205))

(declare-fun m!555213 () Bool)

(assert (=> b!576200 m!555213))

(declare-fun m!555215 () Bool)

(assert (=> b!576197 m!555215))

(declare-fun m!555217 () Bool)

(assert (=> b!576197 m!555217))

(declare-fun m!555219 () Bool)

(assert (=> b!576204 m!555219))

(declare-fun m!555221 () Bool)

(assert (=> b!576198 m!555221))

(check-sat (not b!576200) (not b!576199) (not b!576204) (not start!52894) (not b!576198) (not b!576202) (not b!576203) (not b!576197) (not b!576205) (not b!576201))
(check-sat)
