; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52316 () Bool)

(assert start!52316)

(declare-fun b!570526 () Bool)

(declare-fun res!360462 () Bool)

(declare-fun e!328131 () Bool)

(assert (=> b!570526 (=> (not res!360462) (not e!328131))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570526 (= res!360462 (validKeyInArray!0 k!1914))))

(declare-fun b!570527 () Bool)

(declare-fun res!360464 () Bool)

(assert (=> b!570527 (=> (not res!360464) (not e!328131))))

(declare-datatypes ((array!35730 0))(
  ( (array!35731 (arr!17151 (Array (_ BitVec 32) (_ BitVec 64))) (size!17515 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35730)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!570527 (= res!360464 (validKeyInArray!0 (select (arr!17151 a!3118) j!142)))))

(declare-fun b!570528 () Bool)

(declare-fun e!328133 () Bool)

(assert (=> b!570528 (= e!328131 e!328133)))

(declare-fun res!360461 () Bool)

(assert (=> b!570528 (=> (not res!360461) (not e!328133))))

(declare-datatypes ((SeekEntryResult!5607 0))(
  ( (MissingZero!5607 (index!24655 (_ BitVec 32))) (Found!5607 (index!24656 (_ BitVec 32))) (Intermediate!5607 (undefined!6419 Bool) (index!24657 (_ BitVec 32)) (x!53558 (_ BitVec 32))) (Undefined!5607) (MissingVacant!5607 (index!24658 (_ BitVec 32))) )
))
(declare-fun lt!260152 () SeekEntryResult!5607)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570528 (= res!360461 (or (= lt!260152 (MissingZero!5607 i!1132)) (= lt!260152 (MissingVacant!5607 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35730 (_ BitVec 32)) SeekEntryResult!5607)

(assert (=> b!570528 (= lt!260152 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!360460 () Bool)

(assert (=> start!52316 (=> (not res!360460) (not e!328131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52316 (= res!360460 (validMask!0 mask!3119))))

(assert (=> start!52316 e!328131))

(assert (=> start!52316 true))

(declare-fun array_inv!12925 (array!35730) Bool)

(assert (=> start!52316 (array_inv!12925 a!3118)))

(declare-fun b!570529 () Bool)

(declare-fun res!360466 () Bool)

(assert (=> b!570529 (=> (not res!360466) (not e!328133))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35730 (_ BitVec 32)) Bool)

(assert (=> b!570529 (= res!360466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570530 () Bool)

(declare-fun e!328132 () Bool)

(assert (=> b!570530 (= e!328133 e!328132)))

(declare-fun res!360467 () Bool)

(assert (=> b!570530 (=> (not res!360467) (not e!328132))))

(declare-fun lt!260149 () (_ BitVec 32))

(declare-fun lt!260151 () SeekEntryResult!5607)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35730 (_ BitVec 32)) SeekEntryResult!5607)

(assert (=> b!570530 (= res!360467 (= lt!260151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260149 (select (store (arr!17151 a!3118) i!1132 k!1914) j!142) (array!35731 (store (arr!17151 a!3118) i!1132 k!1914) (size!17515 a!3118)) mask!3119)))))

(declare-fun lt!260153 () (_ BitVec 32))

(assert (=> b!570530 (= lt!260151 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260153 (select (arr!17151 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570530 (= lt!260149 (toIndex!0 (select (store (arr!17151 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570530 (= lt!260153 (toIndex!0 (select (arr!17151 a!3118) j!142) mask!3119))))

(declare-fun b!570531 () Bool)

(declare-fun res!360457 () Bool)

(assert (=> b!570531 (=> (not res!360457) (not e!328133))))

(declare-datatypes ((List!11284 0))(
  ( (Nil!11281) (Cons!11280 (h!12304 (_ BitVec 64)) (t!17520 List!11284)) )
))
(declare-fun arrayNoDuplicates!0 (array!35730 (_ BitVec 32) List!11284) Bool)

(assert (=> b!570531 (= res!360457 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11281))))

(declare-fun b!570532 () Bool)

(declare-fun e!328130 () Bool)

(declare-fun e!328135 () Bool)

(assert (=> b!570532 (= e!328130 e!328135)))

(declare-fun res!360465 () Bool)

(assert (=> b!570532 (=> res!360465 e!328135)))

(assert (=> b!570532 (= res!360465 (or (undefined!6419 lt!260151) (not (is-Intermediate!5607 lt!260151)) (= (select (arr!17151 a!3118) (index!24657 lt!260151)) (select (arr!17151 a!3118) j!142)) (= (select (arr!17151 a!3118) (index!24657 lt!260151)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570533 () Bool)

(declare-fun res!360459 () Bool)

(assert (=> b!570533 (=> (not res!360459) (not e!328131))))

(assert (=> b!570533 (= res!360459 (and (= (size!17515 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17515 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17515 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570534 () Bool)

(declare-fun res!360463 () Bool)

(assert (=> b!570534 (=> (not res!360463) (not e!328131))))

(declare-fun arrayContainsKey!0 (array!35730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570534 (= res!360463 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570535 () Bool)

(assert (=> b!570535 (= e!328132 (not true))))

(assert (=> b!570535 e!328130))

(declare-fun res!360458 () Bool)

(assert (=> b!570535 (=> (not res!360458) (not e!328130))))

(declare-fun lt!260150 () SeekEntryResult!5607)

(assert (=> b!570535 (= res!360458 (= lt!260150 (Found!5607 j!142)))))

(assert (=> b!570535 (= lt!260150 (seekEntryOrOpen!0 (select (arr!17151 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570535 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17916 0))(
  ( (Unit!17917) )
))
(declare-fun lt!260148 () Unit!17916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35730 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17916)

(assert (=> b!570535 (= lt!260148 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35730 (_ BitVec 32)) SeekEntryResult!5607)

(assert (=> b!570536 (= e!328135 (= lt!260150 (seekKeyOrZeroReturnVacant!0 (x!53558 lt!260151) (index!24657 lt!260151) (index!24657 lt!260151) (select (arr!17151 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52316 res!360460) b!570533))

(assert (= (and b!570533 res!360459) b!570527))

(assert (= (and b!570527 res!360464) b!570526))

(assert (= (and b!570526 res!360462) b!570534))

(assert (= (and b!570534 res!360463) b!570528))

(assert (= (and b!570528 res!360461) b!570529))

(assert (= (and b!570529 res!360466) b!570531))

(assert (= (and b!570531 res!360457) b!570530))

(assert (= (and b!570530 res!360467) b!570535))

(assert (= (and b!570535 res!360458) b!570532))

(assert (= (and b!570532 (not res!360465)) b!570536))

(declare-fun m!549451 () Bool)

(assert (=> b!570532 m!549451))

(declare-fun m!549453 () Bool)

(assert (=> b!570532 m!549453))

(assert (=> b!570530 m!549453))

(declare-fun m!549455 () Bool)

(assert (=> b!570530 m!549455))

(assert (=> b!570530 m!549453))

(declare-fun m!549457 () Bool)

(assert (=> b!570530 m!549457))

(assert (=> b!570530 m!549453))

(declare-fun m!549459 () Bool)

(assert (=> b!570530 m!549459))

(assert (=> b!570530 m!549459))

(declare-fun m!549461 () Bool)

(assert (=> b!570530 m!549461))

(declare-fun m!549463 () Bool)

(assert (=> b!570530 m!549463))

(assert (=> b!570530 m!549459))

(declare-fun m!549465 () Bool)

(assert (=> b!570530 m!549465))

(declare-fun m!549467 () Bool)

(assert (=> b!570534 m!549467))

(declare-fun m!549469 () Bool)

(assert (=> b!570526 m!549469))

(declare-fun m!549471 () Bool)

(assert (=> b!570529 m!549471))

(declare-fun m!549473 () Bool)

(assert (=> b!570531 m!549473))

(assert (=> b!570527 m!549453))

(assert (=> b!570527 m!549453))

(declare-fun m!549475 () Bool)

(assert (=> b!570527 m!549475))

(assert (=> b!570536 m!549453))

(assert (=> b!570536 m!549453))

(declare-fun m!549477 () Bool)

(assert (=> b!570536 m!549477))

(assert (=> b!570535 m!549453))

(assert (=> b!570535 m!549453))

(declare-fun m!549479 () Bool)

(assert (=> b!570535 m!549479))

(declare-fun m!549481 () Bool)

(assert (=> b!570535 m!549481))

(declare-fun m!549483 () Bool)

(assert (=> b!570535 m!549483))

(declare-fun m!549485 () Bool)

(assert (=> start!52316 m!549485))

(declare-fun m!549487 () Bool)

(assert (=> start!52316 m!549487))

(declare-fun m!549489 () Bool)

(assert (=> b!570528 m!549489))

(push 1)

