; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51516 () Bool)

(assert start!51516)

(declare-fun b!563120 () Bool)

(declare-fun res!354425 () Bool)

(declare-fun e!324527 () Bool)

(assert (=> b!563120 (=> (not res!354425) (not e!324527))))

(declare-datatypes ((array!35335 0))(
  ( (array!35336 (arr!16964 (Array (_ BitVec 32) (_ BitVec 64))) (size!17328 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35335)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563120 (= res!354425 (validKeyInArray!0 (select (arr!16964 a!3118) j!142)))))

(declare-fun b!563121 () Bool)

(declare-fun res!354428 () Bool)

(assert (=> b!563121 (=> (not res!354428) (not e!324527))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563121 (= res!354428 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563122 () Bool)

(declare-fun res!354423 () Bool)

(assert (=> b!563122 (=> (not res!354423) (not e!324527))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563122 (= res!354423 (and (= (size!17328 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17328 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17328 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563123 () Bool)

(declare-fun res!354422 () Bool)

(declare-fun e!324526 () Bool)

(assert (=> b!563123 (=> (not res!354422) (not e!324526))))

(declare-datatypes ((List!11097 0))(
  ( (Nil!11094) (Cons!11093 (h!12096 (_ BitVec 64)) (t!17333 List!11097)) )
))
(declare-fun arrayNoDuplicates!0 (array!35335 (_ BitVec 32) List!11097) Bool)

(assert (=> b!563123 (= res!354422 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11094))))

(declare-fun b!563124 () Bool)

(declare-fun res!354429 () Bool)

(assert (=> b!563124 (=> (not res!354429) (not e!324526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35335 (_ BitVec 32)) Bool)

(assert (=> b!563124 (= res!354429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!354427 () Bool)

(assert (=> start!51516 (=> (not res!354427) (not e!324527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51516 (= res!354427 (validMask!0 mask!3119))))

(assert (=> start!51516 e!324527))

(assert (=> start!51516 true))

(declare-fun array_inv!12738 (array!35335) Bool)

(assert (=> start!51516 (array_inv!12738 a!3118)))

(declare-fun b!563125 () Bool)

(assert (=> b!563125 (= e!324526 (not true))))

(declare-fun e!324528 () Bool)

(assert (=> b!563125 e!324528))

(declare-fun res!354426 () Bool)

(assert (=> b!563125 (=> (not res!354426) (not e!324528))))

(assert (=> b!563125 (= res!354426 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17614 0))(
  ( (Unit!17615) )
))
(declare-fun lt!257134 () Unit!17614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17614)

(assert (=> b!563125 (= lt!257134 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563126 () Bool)

(declare-fun res!354431 () Bool)

(assert (=> b!563126 (=> (not res!354431) (not e!324527))))

(assert (=> b!563126 (= res!354431 (validKeyInArray!0 k!1914))))

(declare-fun b!563127 () Bool)

(declare-datatypes ((SeekEntryResult!5420 0))(
  ( (MissingZero!5420 (index!23907 (_ BitVec 32))) (Found!5420 (index!23908 (_ BitVec 32))) (Intermediate!5420 (undefined!6232 Bool) (index!23909 (_ BitVec 32)) (x!52822 (_ BitVec 32))) (Undefined!5420) (MissingVacant!5420 (index!23910 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35335 (_ BitVec 32)) SeekEntryResult!5420)

(assert (=> b!563127 (= e!324528 (= (seekEntryOrOpen!0 (select (arr!16964 a!3118) j!142) a!3118 mask!3119) (Found!5420 j!142)))))

(declare-fun b!563128 () Bool)

(declare-fun res!354430 () Bool)

(assert (=> b!563128 (=> (not res!354430) (not e!324526))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35335 (_ BitVec 32)) SeekEntryResult!5420)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563128 (= res!354430 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16964 a!3118) j!142) mask!3119) (select (arr!16964 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16964 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16964 a!3118) i!1132 k!1914) j!142) (array!35336 (store (arr!16964 a!3118) i!1132 k!1914) (size!17328 a!3118)) mask!3119)))))

(declare-fun b!563129 () Bool)

(assert (=> b!563129 (= e!324527 e!324526)))

(declare-fun res!354424 () Bool)

(assert (=> b!563129 (=> (not res!354424) (not e!324526))))

(declare-fun lt!257135 () SeekEntryResult!5420)

(assert (=> b!563129 (= res!354424 (or (= lt!257135 (MissingZero!5420 i!1132)) (= lt!257135 (MissingVacant!5420 i!1132))))))

(assert (=> b!563129 (= lt!257135 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51516 res!354427) b!563122))

(assert (= (and b!563122 res!354423) b!563120))

(assert (= (and b!563120 res!354425) b!563126))

(assert (= (and b!563126 res!354431) b!563121))

(assert (= (and b!563121 res!354428) b!563129))

(assert (= (and b!563129 res!354424) b!563124))

(assert (= (and b!563124 res!354429) b!563123))

(assert (= (and b!563123 res!354422) b!563128))

(assert (= (and b!563128 res!354430) b!563125))

(assert (= (and b!563125 res!354426) b!563127))

(declare-fun m!541477 () Bool)

(assert (=> start!51516 m!541477))

(declare-fun m!541479 () Bool)

(assert (=> start!51516 m!541479))

(declare-fun m!541481 () Bool)

(assert (=> b!563126 m!541481))

(declare-fun m!541483 () Bool)

(assert (=> b!563123 m!541483))

(declare-fun m!541485 () Bool)

(assert (=> b!563128 m!541485))

(declare-fun m!541487 () Bool)

(assert (=> b!563128 m!541487))

(assert (=> b!563128 m!541485))

(declare-fun m!541489 () Bool)

(assert (=> b!563128 m!541489))

(declare-fun m!541491 () Bool)

(assert (=> b!563128 m!541491))

(assert (=> b!563128 m!541489))

(declare-fun m!541493 () Bool)

(assert (=> b!563128 m!541493))

(assert (=> b!563128 m!541487))

(assert (=> b!563128 m!541485))

(declare-fun m!541495 () Bool)

(assert (=> b!563128 m!541495))

(declare-fun m!541497 () Bool)

(assert (=> b!563128 m!541497))

(assert (=> b!563128 m!541489))

(assert (=> b!563128 m!541491))

(declare-fun m!541499 () Bool)

(assert (=> b!563121 m!541499))

(declare-fun m!541501 () Bool)

(assert (=> b!563125 m!541501))

(declare-fun m!541503 () Bool)

(assert (=> b!563125 m!541503))

(assert (=> b!563127 m!541485))

(assert (=> b!563127 m!541485))

(declare-fun m!541505 () Bool)

(assert (=> b!563127 m!541505))

(declare-fun m!541507 () Bool)

(assert (=> b!563129 m!541507))

(assert (=> b!563120 m!541485))

(assert (=> b!563120 m!541485))

(declare-fun m!541509 () Bool)

(assert (=> b!563120 m!541509))

(declare-fun m!541511 () Bool)

(assert (=> b!563124 m!541511))

(push 1)

