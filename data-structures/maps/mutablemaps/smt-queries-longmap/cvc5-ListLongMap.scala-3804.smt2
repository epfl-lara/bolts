; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52196 () Bool)

(assert start!52196)

(declare-fun b!569367 () Bool)

(declare-fun res!359540 () Bool)

(declare-fun e!327527 () Bool)

(assert (=> b!569367 (=> (not res!359540) (not e!327527))))

(declare-datatypes ((array!35673 0))(
  ( (array!35674 (arr!17124 (Array (_ BitVec 32) (_ BitVec 64))) (size!17488 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35673)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569367 (= res!359540 (validKeyInArray!0 (select (arr!17124 a!3118) j!142)))))

(declare-fun b!569368 () Bool)

(declare-fun res!359543 () Bool)

(declare-fun e!327526 () Bool)

(assert (=> b!569368 (=> (not res!359543) (not e!327526))))

(declare-datatypes ((List!11257 0))(
  ( (Nil!11254) (Cons!11253 (h!12274 (_ BitVec 64)) (t!17493 List!11257)) )
))
(declare-fun arrayNoDuplicates!0 (array!35673 (_ BitVec 32) List!11257) Bool)

(assert (=> b!569368 (= res!359543 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11254))))

(declare-fun b!569369 () Bool)

(declare-fun e!327528 () Bool)

(assert (=> b!569369 (= e!327526 e!327528)))

(declare-fun res!359536 () Bool)

(assert (=> b!569369 (=> (not res!359536) (not e!327528))))

(declare-fun lt!259588 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5580 0))(
  ( (MissingZero!5580 (index!24547 (_ BitVec 32))) (Found!5580 (index!24548 (_ BitVec 32))) (Intermediate!5580 (undefined!6392 Bool) (index!24549 (_ BitVec 32)) (x!53450 (_ BitVec 32))) (Undefined!5580) (MissingVacant!5580 (index!24550 (_ BitVec 32))) )
))
(declare-fun lt!259589 () SeekEntryResult!5580)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35673 (_ BitVec 32)) SeekEntryResult!5580)

(assert (=> b!569369 (= res!359536 (= lt!259589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259588 (select (store (arr!17124 a!3118) i!1132 k!1914) j!142) (array!35674 (store (arr!17124 a!3118) i!1132 k!1914) (size!17488 a!3118)) mask!3119)))))

(declare-fun lt!259591 () (_ BitVec 32))

(assert (=> b!569369 (= lt!259589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259591 (select (arr!17124 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569369 (= lt!259588 (toIndex!0 (select (store (arr!17124 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569369 (= lt!259591 (toIndex!0 (select (arr!17124 a!3118) j!142) mask!3119))))

(declare-fun b!569371 () Bool)

(assert (=> b!569371 (= e!327527 e!327526)))

(declare-fun res!359538 () Bool)

(assert (=> b!569371 (=> (not res!359538) (not e!327526))))

(declare-fun lt!259590 () SeekEntryResult!5580)

(assert (=> b!569371 (= res!359538 (or (= lt!259590 (MissingZero!5580 i!1132)) (= lt!259590 (MissingVacant!5580 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35673 (_ BitVec 32)) SeekEntryResult!5580)

(assert (=> b!569371 (= lt!259590 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569372 () Bool)

(assert (=> b!569372 (= e!327528 (not true))))

(declare-fun lt!259592 () SeekEntryResult!5580)

(assert (=> b!569372 (and (= lt!259592 (Found!5580 j!142)) (or (undefined!6392 lt!259589) (not (is-Intermediate!5580 lt!259589)) (= (select (arr!17124 a!3118) (index!24549 lt!259589)) (select (arr!17124 a!3118) j!142)) (not (= (select (arr!17124 a!3118) (index!24549 lt!259589)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259592 (MissingZero!5580 (index!24549 lt!259589)))))))

(assert (=> b!569372 (= lt!259592 (seekEntryOrOpen!0 (select (arr!17124 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35673 (_ BitVec 32)) Bool)

(assert (=> b!569372 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17862 0))(
  ( (Unit!17863) )
))
(declare-fun lt!259587 () Unit!17862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17862)

(assert (=> b!569372 (= lt!259587 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569373 () Bool)

(declare-fun res!359542 () Bool)

(assert (=> b!569373 (=> (not res!359542) (not e!327526))))

(assert (=> b!569373 (= res!359542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569374 () Bool)

(declare-fun res!359541 () Bool)

(assert (=> b!569374 (=> (not res!359541) (not e!327527))))

(assert (=> b!569374 (= res!359541 (and (= (size!17488 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17488 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17488 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569375 () Bool)

(declare-fun res!359535 () Bool)

(assert (=> b!569375 (=> (not res!359535) (not e!327527))))

(assert (=> b!569375 (= res!359535 (validKeyInArray!0 k!1914))))

(declare-fun res!359539 () Bool)

(assert (=> start!52196 (=> (not res!359539) (not e!327527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52196 (= res!359539 (validMask!0 mask!3119))))

(assert (=> start!52196 e!327527))

(assert (=> start!52196 true))

(declare-fun array_inv!12898 (array!35673) Bool)

(assert (=> start!52196 (array_inv!12898 a!3118)))

(declare-fun b!569370 () Bool)

(declare-fun res!359537 () Bool)

(assert (=> b!569370 (=> (not res!359537) (not e!327527))))

(declare-fun arrayContainsKey!0 (array!35673 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569370 (= res!359537 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52196 res!359539) b!569374))

(assert (= (and b!569374 res!359541) b!569367))

(assert (= (and b!569367 res!359540) b!569375))

(assert (= (and b!569375 res!359535) b!569370))

(assert (= (and b!569370 res!359537) b!569371))

(assert (= (and b!569371 res!359538) b!569373))

(assert (= (and b!569373 res!359542) b!569368))

(assert (= (and b!569368 res!359543) b!569369))

(assert (= (and b!569369 res!359536) b!569372))

(declare-fun m!548185 () Bool)

(assert (=> b!569375 m!548185))

(declare-fun m!548187 () Bool)

(assert (=> b!569368 m!548187))

(declare-fun m!548189 () Bool)

(assert (=> b!569371 m!548189))

(declare-fun m!548191 () Bool)

(assert (=> start!52196 m!548191))

(declare-fun m!548193 () Bool)

(assert (=> start!52196 m!548193))

(declare-fun m!548195 () Bool)

(assert (=> b!569369 m!548195))

(declare-fun m!548197 () Bool)

(assert (=> b!569369 m!548197))

(assert (=> b!569369 m!548195))

(declare-fun m!548199 () Bool)

(assert (=> b!569369 m!548199))

(assert (=> b!569369 m!548195))

(declare-fun m!548201 () Bool)

(assert (=> b!569369 m!548201))

(assert (=> b!569369 m!548201))

(declare-fun m!548203 () Bool)

(assert (=> b!569369 m!548203))

(declare-fun m!548205 () Bool)

(assert (=> b!569369 m!548205))

(assert (=> b!569369 m!548201))

(declare-fun m!548207 () Bool)

(assert (=> b!569369 m!548207))

(assert (=> b!569367 m!548195))

(assert (=> b!569367 m!548195))

(declare-fun m!548209 () Bool)

(assert (=> b!569367 m!548209))

(declare-fun m!548211 () Bool)

(assert (=> b!569373 m!548211))

(declare-fun m!548213 () Bool)

(assert (=> b!569370 m!548213))

(assert (=> b!569372 m!548195))

(declare-fun m!548215 () Bool)

(assert (=> b!569372 m!548215))

(assert (=> b!569372 m!548195))

(declare-fun m!548217 () Bool)

(assert (=> b!569372 m!548217))

(declare-fun m!548219 () Bool)

(assert (=> b!569372 m!548219))

(declare-fun m!548221 () Bool)

(assert (=> b!569372 m!548221))

(push 1)

