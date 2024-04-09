; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51408 () Bool)

(assert start!51408)

(declare-fun b!561101 () Bool)

(declare-fun e!323325 () Bool)

(declare-fun e!323332 () Bool)

(assert (=> b!561101 (= e!323325 e!323332)))

(declare-fun res!352405 () Bool)

(assert (=> b!561101 (=> (not res!352405) (not e!323332))))

(declare-datatypes ((array!35227 0))(
  ( (array!35228 (arr!16910 (Array (_ BitVec 32) (_ BitVec 64))) (size!17274 (_ BitVec 32))) )
))
(declare-fun lt!255372 () array!35227)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!255376 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5366 0))(
  ( (MissingZero!5366 (index!23691 (_ BitVec 32))) (Found!5366 (index!23692 (_ BitVec 32))) (Intermediate!5366 (undefined!6178 Bool) (index!23693 (_ BitVec 32)) (x!52624 (_ BitVec 32))) (Undefined!5366) (MissingVacant!5366 (index!23694 (_ BitVec 32))) )
))
(declare-fun lt!255373 () SeekEntryResult!5366)

(declare-fun lt!255374 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35227 (_ BitVec 32)) SeekEntryResult!5366)

(assert (=> b!561101 (= res!352405 (= lt!255373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255374 lt!255376 lt!255372 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255375 () (_ BitVec 32))

(declare-fun a!3118 () array!35227)

(assert (=> b!561101 (= lt!255373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255375 (select (arr!16910 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561101 (= lt!255374 (toIndex!0 lt!255376 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561101 (= lt!255376 (select (store (arr!16910 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561101 (= lt!255375 (toIndex!0 (select (arr!16910 a!3118) j!142) mask!3119))))

(assert (=> b!561101 (= lt!255372 (array!35228 (store (arr!16910 a!3118) i!1132 k!1914) (size!17274 a!3118)))))

(declare-fun b!561102 () Bool)

(declare-fun res!352410 () Bool)

(declare-fun e!323327 () Bool)

(assert (=> b!561102 (=> (not res!352410) (not e!323327))))

(assert (=> b!561102 (= res!352410 (and (= (size!17274 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17274 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17274 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561103 () Bool)

(declare-fun res!352408 () Bool)

(assert (=> b!561103 (=> (not res!352408) (not e!323327))))

(declare-fun arrayContainsKey!0 (array!35227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561103 (= res!352408 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561104 () Bool)

(declare-fun e!323328 () Bool)

(declare-fun e!323329 () Bool)

(assert (=> b!561104 (= e!323328 e!323329)))

(declare-fun res!352403 () Bool)

(assert (=> b!561104 (=> (not res!352403) (not e!323329))))

(declare-fun lt!255379 () SeekEntryResult!5366)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35227 (_ BitVec 32)) SeekEntryResult!5366)

(assert (=> b!561104 (= res!352403 (= lt!255379 (seekKeyOrZeroReturnVacant!0 (x!52624 lt!255373) (index!23693 lt!255373) (index!23693 lt!255373) (select (arr!16910 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561105 () Bool)

(declare-fun e!323326 () Bool)

(assert (=> b!561105 (= e!323326 e!323328)))

(declare-fun res!352407 () Bool)

(assert (=> b!561105 (=> res!352407 e!323328)))

(declare-fun lt!255378 () (_ BitVec 64))

(assert (=> b!561105 (= res!352407 (or (= lt!255378 (select (arr!16910 a!3118) j!142)) (= lt!255378 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561105 (= lt!255378 (select (arr!16910 a!3118) (index!23693 lt!255373)))))

(declare-fun res!352406 () Bool)

(assert (=> start!51408 (=> (not res!352406) (not e!323327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51408 (= res!352406 (validMask!0 mask!3119))))

(assert (=> start!51408 e!323327))

(assert (=> start!51408 true))

(declare-fun array_inv!12684 (array!35227) Bool)

(assert (=> start!51408 (array_inv!12684 a!3118)))

(declare-fun b!561106 () Bool)

(assert (=> b!561106 (= e!323332 (not true))))

(declare-fun e!323331 () Bool)

(assert (=> b!561106 e!323331))

(declare-fun res!352412 () Bool)

(assert (=> b!561106 (=> (not res!352412) (not e!323331))))

(assert (=> b!561106 (= res!352412 (= lt!255379 (Found!5366 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35227 (_ BitVec 32)) SeekEntryResult!5366)

(assert (=> b!561106 (= lt!255379 (seekEntryOrOpen!0 (select (arr!16910 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35227 (_ BitVec 32)) Bool)

(assert (=> b!561106 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17506 0))(
  ( (Unit!17507) )
))
(declare-fun lt!255380 () Unit!17506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35227 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17506)

(assert (=> b!561106 (= lt!255380 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561107 () Bool)

(assert (=> b!561107 (= e!323331 e!323326)))

(declare-fun res!352413 () Bool)

(assert (=> b!561107 (=> res!352413 e!323326)))

(assert (=> b!561107 (= res!352413 (or (undefined!6178 lt!255373) (not (is-Intermediate!5366 lt!255373))))))

(declare-fun b!561108 () Bool)

(declare-fun res!352411 () Bool)

(assert (=> b!561108 (=> (not res!352411) (not e!323327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561108 (= res!352411 (validKeyInArray!0 (select (arr!16910 a!3118) j!142)))))

(declare-fun b!561109 () Bool)

(declare-fun res!352414 () Bool)

(assert (=> b!561109 (=> (not res!352414) (not e!323327))))

(assert (=> b!561109 (= res!352414 (validKeyInArray!0 k!1914))))

(declare-fun b!561110 () Bool)

(assert (=> b!561110 (= e!323329 (= (seekEntryOrOpen!0 lt!255376 lt!255372 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52624 lt!255373) (index!23693 lt!255373) (index!23693 lt!255373) lt!255376 lt!255372 mask!3119)))))

(declare-fun b!561111 () Bool)

(declare-fun res!352415 () Bool)

(assert (=> b!561111 (=> (not res!352415) (not e!323325))))

(declare-datatypes ((List!11043 0))(
  ( (Nil!11040) (Cons!11039 (h!12042 (_ BitVec 64)) (t!17279 List!11043)) )
))
(declare-fun arrayNoDuplicates!0 (array!35227 (_ BitVec 32) List!11043) Bool)

(assert (=> b!561111 (= res!352415 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11040))))

(declare-fun b!561112 () Bool)

(declare-fun res!352404 () Bool)

(assert (=> b!561112 (=> (not res!352404) (not e!323325))))

(assert (=> b!561112 (= res!352404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561113 () Bool)

(assert (=> b!561113 (= e!323327 e!323325)))

(declare-fun res!352409 () Bool)

(assert (=> b!561113 (=> (not res!352409) (not e!323325))))

(declare-fun lt!255377 () SeekEntryResult!5366)

(assert (=> b!561113 (= res!352409 (or (= lt!255377 (MissingZero!5366 i!1132)) (= lt!255377 (MissingVacant!5366 i!1132))))))

(assert (=> b!561113 (= lt!255377 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51408 res!352406) b!561102))

(assert (= (and b!561102 res!352410) b!561108))

(assert (= (and b!561108 res!352411) b!561109))

(assert (= (and b!561109 res!352414) b!561103))

(assert (= (and b!561103 res!352408) b!561113))

(assert (= (and b!561113 res!352409) b!561112))

(assert (= (and b!561112 res!352404) b!561111))

(assert (= (and b!561111 res!352415) b!561101))

(assert (= (and b!561101 res!352405) b!561106))

(assert (= (and b!561106 res!352412) b!561107))

(assert (= (and b!561107 (not res!352413)) b!561105))

(assert (= (and b!561105 (not res!352407)) b!561104))

(assert (= (and b!561104 res!352403) b!561110))

(declare-fun m!539015 () Bool)

(assert (=> b!561113 m!539015))

(declare-fun m!539017 () Bool)

(assert (=> b!561110 m!539017))

(declare-fun m!539019 () Bool)

(assert (=> b!561110 m!539019))

(declare-fun m!539021 () Bool)

(assert (=> start!51408 m!539021))

(declare-fun m!539023 () Bool)

(assert (=> start!51408 m!539023))

(declare-fun m!539025 () Bool)

(assert (=> b!561109 m!539025))

(declare-fun m!539027 () Bool)

(assert (=> b!561103 m!539027))

(declare-fun m!539029 () Bool)

(assert (=> b!561108 m!539029))

(assert (=> b!561108 m!539029))

(declare-fun m!539031 () Bool)

(assert (=> b!561108 m!539031))

(declare-fun m!539033 () Bool)

(assert (=> b!561112 m!539033))

(assert (=> b!561104 m!539029))

(assert (=> b!561104 m!539029))

(declare-fun m!539035 () Bool)

(assert (=> b!561104 m!539035))

(assert (=> b!561101 m!539029))

(declare-fun m!539037 () Bool)

(assert (=> b!561101 m!539037))

(declare-fun m!539039 () Bool)

(assert (=> b!561101 m!539039))

(assert (=> b!561101 m!539029))

(declare-fun m!539041 () Bool)

(assert (=> b!561101 m!539041))

(declare-fun m!539043 () Bool)

(assert (=> b!561101 m!539043))

(declare-fun m!539045 () Bool)

(assert (=> b!561101 m!539045))

(assert (=> b!561101 m!539029))

(declare-fun m!539047 () Bool)

(assert (=> b!561101 m!539047))

(assert (=> b!561105 m!539029))

(declare-fun m!539049 () Bool)

(assert (=> b!561105 m!539049))

(assert (=> b!561106 m!539029))

(assert (=> b!561106 m!539029))

(declare-fun m!539051 () Bool)

(assert (=> b!561106 m!539051))

(declare-fun m!539053 () Bool)

(assert (=> b!561106 m!539053))

(declare-fun m!539055 () Bool)

(assert (=> b!561106 m!539055))

(declare-fun m!539057 () Bool)

(assert (=> b!561111 m!539057))

(push 1)

