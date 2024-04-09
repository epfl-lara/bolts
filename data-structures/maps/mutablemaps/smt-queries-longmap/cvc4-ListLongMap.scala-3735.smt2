; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51426 () Bool)

(assert start!51426)

(declare-fun b!561452 () Bool)

(declare-fun res!352760 () Bool)

(declare-fun e!323541 () Bool)

(assert (=> b!561452 (=> (not res!352760) (not e!323541))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35245 0))(
  ( (array!35246 (arr!16919 (Array (_ BitVec 32) (_ BitVec 64))) (size!17283 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35245)

(assert (=> b!561452 (= res!352760 (and (= (size!17283 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17283 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17283 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561453 () Bool)

(declare-fun e!323546 () Bool)

(declare-fun e!323547 () Bool)

(assert (=> b!561453 (= e!323546 e!323547)))

(declare-fun res!352758 () Bool)

(assert (=> b!561453 (=> (not res!352758) (not e!323547))))

(declare-datatypes ((SeekEntryResult!5375 0))(
  ( (MissingZero!5375 (index!23727 (_ BitVec 32))) (Found!5375 (index!23728 (_ BitVec 32))) (Intermediate!5375 (undefined!6187 Bool) (index!23729 (_ BitVec 32)) (x!52657 (_ BitVec 32))) (Undefined!5375) (MissingVacant!5375 (index!23730 (_ BitVec 32))) )
))
(declare-fun lt!255623 () SeekEntryResult!5375)

(declare-fun lt!255616 () SeekEntryResult!5375)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35245 (_ BitVec 32)) SeekEntryResult!5375)

(assert (=> b!561453 (= res!352758 (= lt!255623 (seekKeyOrZeroReturnVacant!0 (x!52657 lt!255616) (index!23729 lt!255616) (index!23729 lt!255616) (select (arr!16919 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561454 () Bool)

(declare-fun e!323543 () Bool)

(assert (=> b!561454 (= e!323543 (not true))))

(declare-fun e!323545 () Bool)

(assert (=> b!561454 e!323545))

(declare-fun res!352754 () Bool)

(assert (=> b!561454 (=> (not res!352754) (not e!323545))))

(assert (=> b!561454 (= res!352754 (= lt!255623 (Found!5375 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35245 (_ BitVec 32)) SeekEntryResult!5375)

(assert (=> b!561454 (= lt!255623 (seekEntryOrOpen!0 (select (arr!16919 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35245 (_ BitVec 32)) Bool)

(assert (=> b!561454 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17524 0))(
  ( (Unit!17525) )
))
(declare-fun lt!255620 () Unit!17524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35245 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17524)

(assert (=> b!561454 (= lt!255620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561455 () Bool)

(declare-fun res!352763 () Bool)

(assert (=> b!561455 (=> (not res!352763) (not e!323541))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561455 (= res!352763 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561457 () Bool)

(declare-fun res!352759 () Bool)

(assert (=> b!561457 (=> (not res!352759) (not e!323541))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561457 (= res!352759 (validKeyInArray!0 (select (arr!16919 a!3118) j!142)))))

(declare-fun b!561458 () Bool)

(declare-fun e!323548 () Bool)

(assert (=> b!561458 (= e!323541 e!323548)))

(declare-fun res!352765 () Bool)

(assert (=> b!561458 (=> (not res!352765) (not e!323548))))

(declare-fun lt!255621 () SeekEntryResult!5375)

(assert (=> b!561458 (= res!352765 (or (= lt!255621 (MissingZero!5375 i!1132)) (= lt!255621 (MissingVacant!5375 i!1132))))))

(assert (=> b!561458 (= lt!255621 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561459 () Bool)

(declare-fun lt!255615 () (_ BitVec 64))

(declare-fun lt!255618 () array!35245)

(assert (=> b!561459 (= e!323547 (= (seekEntryOrOpen!0 lt!255615 lt!255618 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52657 lt!255616) (index!23729 lt!255616) (index!23729 lt!255616) lt!255615 lt!255618 mask!3119)))))

(declare-fun b!561460 () Bool)

(declare-fun e!323544 () Bool)

(assert (=> b!561460 (= e!323544 e!323546)))

(declare-fun res!352762 () Bool)

(assert (=> b!561460 (=> res!352762 e!323546)))

(declare-fun lt!255622 () (_ BitVec 64))

(assert (=> b!561460 (= res!352762 (or (= lt!255622 (select (arr!16919 a!3118) j!142)) (= lt!255622 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561460 (= lt!255622 (select (arr!16919 a!3118) (index!23729 lt!255616)))))

(declare-fun b!561461 () Bool)

(declare-fun res!352756 () Bool)

(assert (=> b!561461 (=> (not res!352756) (not e!323548))))

(declare-datatypes ((List!11052 0))(
  ( (Nil!11049) (Cons!11048 (h!12051 (_ BitVec 64)) (t!17288 List!11052)) )
))
(declare-fun arrayNoDuplicates!0 (array!35245 (_ BitVec 32) List!11052) Bool)

(assert (=> b!561461 (= res!352756 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11049))))

(declare-fun b!561462 () Bool)

(assert (=> b!561462 (= e!323545 e!323544)))

(declare-fun res!352761 () Bool)

(assert (=> b!561462 (=> res!352761 e!323544)))

(assert (=> b!561462 (= res!352761 (or (undefined!6187 lt!255616) (not (is-Intermediate!5375 lt!255616))))))

(declare-fun b!561463 () Bool)

(declare-fun res!352757 () Bool)

(assert (=> b!561463 (=> (not res!352757) (not e!323541))))

(assert (=> b!561463 (= res!352757 (validKeyInArray!0 k!1914))))

(declare-fun b!561464 () Bool)

(declare-fun res!352766 () Bool)

(assert (=> b!561464 (=> (not res!352766) (not e!323548))))

(assert (=> b!561464 (= res!352766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!352755 () Bool)

(assert (=> start!51426 (=> (not res!352755) (not e!323541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51426 (= res!352755 (validMask!0 mask!3119))))

(assert (=> start!51426 e!323541))

(assert (=> start!51426 true))

(declare-fun array_inv!12693 (array!35245) Bool)

(assert (=> start!51426 (array_inv!12693 a!3118)))

(declare-fun b!561456 () Bool)

(assert (=> b!561456 (= e!323548 e!323543)))

(declare-fun res!352764 () Bool)

(assert (=> b!561456 (=> (not res!352764) (not e!323543))))

(declare-fun lt!255617 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35245 (_ BitVec 32)) SeekEntryResult!5375)

(assert (=> b!561456 (= res!352764 (= lt!255616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255617 lt!255615 lt!255618 mask!3119)))))

(declare-fun lt!255619 () (_ BitVec 32))

(assert (=> b!561456 (= lt!255616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255619 (select (arr!16919 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561456 (= lt!255617 (toIndex!0 lt!255615 mask!3119))))

(assert (=> b!561456 (= lt!255615 (select (store (arr!16919 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561456 (= lt!255619 (toIndex!0 (select (arr!16919 a!3118) j!142) mask!3119))))

(assert (=> b!561456 (= lt!255618 (array!35246 (store (arr!16919 a!3118) i!1132 k!1914) (size!17283 a!3118)))))

(assert (= (and start!51426 res!352755) b!561452))

(assert (= (and b!561452 res!352760) b!561457))

(assert (= (and b!561457 res!352759) b!561463))

(assert (= (and b!561463 res!352757) b!561455))

(assert (= (and b!561455 res!352763) b!561458))

(assert (= (and b!561458 res!352765) b!561464))

(assert (= (and b!561464 res!352766) b!561461))

(assert (= (and b!561461 res!352756) b!561456))

(assert (= (and b!561456 res!352764) b!561454))

(assert (= (and b!561454 res!352754) b!561462))

(assert (= (and b!561462 (not res!352761)) b!561460))

(assert (= (and b!561460 (not res!352762)) b!561453))

(assert (= (and b!561453 res!352758) b!561459))

(declare-fun m!539411 () Bool)

(assert (=> b!561453 m!539411))

(assert (=> b!561453 m!539411))

(declare-fun m!539413 () Bool)

(assert (=> b!561453 m!539413))

(declare-fun m!539415 () Bool)

(assert (=> b!561464 m!539415))

(assert (=> b!561456 m!539411))

(declare-fun m!539417 () Bool)

(assert (=> b!561456 m!539417))

(assert (=> b!561456 m!539411))

(declare-fun m!539419 () Bool)

(assert (=> b!561456 m!539419))

(declare-fun m!539421 () Bool)

(assert (=> b!561456 m!539421))

(assert (=> b!561456 m!539411))

(declare-fun m!539423 () Bool)

(assert (=> b!561456 m!539423))

(declare-fun m!539425 () Bool)

(assert (=> b!561456 m!539425))

(declare-fun m!539427 () Bool)

(assert (=> b!561456 m!539427))

(declare-fun m!539429 () Bool)

(assert (=> b!561463 m!539429))

(declare-fun m!539431 () Bool)

(assert (=> b!561459 m!539431))

(declare-fun m!539433 () Bool)

(assert (=> b!561459 m!539433))

(declare-fun m!539435 () Bool)

(assert (=> b!561455 m!539435))

(assert (=> b!561454 m!539411))

(assert (=> b!561454 m!539411))

(declare-fun m!539437 () Bool)

(assert (=> b!561454 m!539437))

(declare-fun m!539439 () Bool)

(assert (=> b!561454 m!539439))

(declare-fun m!539441 () Bool)

(assert (=> b!561454 m!539441))

(declare-fun m!539443 () Bool)

(assert (=> start!51426 m!539443))

(declare-fun m!539445 () Bool)

(assert (=> start!51426 m!539445))

(declare-fun m!539447 () Bool)

(assert (=> b!561458 m!539447))

(declare-fun m!539449 () Bool)

(assert (=> b!561461 m!539449))

(assert (=> b!561460 m!539411))

(declare-fun m!539451 () Bool)

(assert (=> b!561460 m!539451))

(assert (=> b!561457 m!539411))

(assert (=> b!561457 m!539411))

(declare-fun m!539453 () Bool)

(assert (=> b!561457 m!539453))

(push 1)

