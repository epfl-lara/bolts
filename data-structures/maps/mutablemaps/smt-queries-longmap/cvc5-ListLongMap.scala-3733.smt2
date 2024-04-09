; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51410 () Bool)

(assert start!51410)

(declare-fun res!352453 () Bool)

(declare-fun e!323354 () Bool)

(assert (=> start!51410 (=> (not res!352453) (not e!323354))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51410 (= res!352453 (validMask!0 mask!3119))))

(assert (=> start!51410 e!323354))

(assert (=> start!51410 true))

(declare-datatypes ((array!35229 0))(
  ( (array!35230 (arr!16911 (Array (_ BitVec 32) (_ BitVec 64))) (size!17275 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35229)

(declare-fun array_inv!12685 (array!35229) Bool)

(assert (=> start!51410 (array_inv!12685 a!3118)))

(declare-fun b!561140 () Bool)

(declare-fun e!323353 () Bool)

(declare-fun e!323356 () Bool)

(assert (=> b!561140 (= e!323353 e!323356)))

(declare-fun res!352449 () Bool)

(assert (=> b!561140 (=> res!352449 e!323356)))

(declare-datatypes ((SeekEntryResult!5367 0))(
  ( (MissingZero!5367 (index!23695 (_ BitVec 32))) (Found!5367 (index!23696 (_ BitVec 32))) (Intermediate!5367 (undefined!6179 Bool) (index!23697 (_ BitVec 32)) (x!52633 (_ BitVec 32))) (Undefined!5367) (MissingVacant!5367 (index!23698 (_ BitVec 32))) )
))
(declare-fun lt!255406 () SeekEntryResult!5367)

(assert (=> b!561140 (= res!352449 (or (undefined!6179 lt!255406) (not (is-Intermediate!5367 lt!255406))))))

(declare-fun b!561141 () Bool)

(declare-fun e!323350 () Bool)

(assert (=> b!561141 (= e!323354 e!323350)))

(declare-fun res!352446 () Bool)

(assert (=> b!561141 (=> (not res!352446) (not e!323350))))

(declare-fun lt!255401 () SeekEntryResult!5367)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561141 (= res!352446 (or (= lt!255401 (MissingZero!5367 i!1132)) (= lt!255401 (MissingVacant!5367 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35229 (_ BitVec 32)) SeekEntryResult!5367)

(assert (=> b!561141 (= lt!255401 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561142 () Bool)

(declare-fun res!352444 () Bool)

(assert (=> b!561142 (=> (not res!352444) (not e!323354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561142 (= res!352444 (validKeyInArray!0 k!1914))))

(declare-fun b!561143 () Bool)

(declare-fun res!352451 () Bool)

(assert (=> b!561143 (=> (not res!352451) (not e!323354))))

(declare-fun arrayContainsKey!0 (array!35229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561143 (= res!352451 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561144 () Bool)

(declare-fun e!323349 () Bool)

(assert (=> b!561144 (= e!323356 e!323349)))

(declare-fun res!352443 () Bool)

(assert (=> b!561144 (=> res!352443 e!323349)))

(declare-fun lt!255403 () (_ BitVec 64))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!561144 (= res!352443 (or (= lt!255403 (select (arr!16911 a!3118) j!142)) (= lt!255403 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561144 (= lt!255403 (select (arr!16911 a!3118) (index!23697 lt!255406)))))

(declare-fun b!561145 () Bool)

(declare-fun res!352452 () Bool)

(assert (=> b!561145 (=> (not res!352452) (not e!323350))))

(declare-datatypes ((List!11044 0))(
  ( (Nil!11041) (Cons!11040 (h!12043 (_ BitVec 64)) (t!17280 List!11044)) )
))
(declare-fun arrayNoDuplicates!0 (array!35229 (_ BitVec 32) List!11044) Bool)

(assert (=> b!561145 (= res!352452 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11041))))

(declare-fun b!561146 () Bool)

(declare-fun res!352448 () Bool)

(assert (=> b!561146 (=> (not res!352448) (not e!323354))))

(assert (=> b!561146 (= res!352448 (validKeyInArray!0 (select (arr!16911 a!3118) j!142)))))

(declare-fun b!561147 () Bool)

(declare-fun e!323355 () Bool)

(assert (=> b!561147 (= e!323355 (not true))))

(assert (=> b!561147 e!323353))

(declare-fun res!352442 () Bool)

(assert (=> b!561147 (=> (not res!352442) (not e!323353))))

(declare-fun lt!255407 () SeekEntryResult!5367)

(assert (=> b!561147 (= res!352442 (= lt!255407 (Found!5367 j!142)))))

(assert (=> b!561147 (= lt!255407 (seekEntryOrOpen!0 (select (arr!16911 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35229 (_ BitVec 32)) Bool)

(assert (=> b!561147 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17508 0))(
  ( (Unit!17509) )
))
(declare-fun lt!255404 () Unit!17508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35229 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17508)

(assert (=> b!561147 (= lt!255404 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun lt!255402 () (_ BitVec 64))

(declare-fun e!323351 () Bool)

(declare-fun b!561148 () Bool)

(declare-fun lt!255405 () array!35229)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35229 (_ BitVec 32)) SeekEntryResult!5367)

(assert (=> b!561148 (= e!323351 (= (seekEntryOrOpen!0 lt!255402 lt!255405 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52633 lt!255406) (index!23697 lt!255406) (index!23697 lt!255406) lt!255402 lt!255405 mask!3119)))))

(declare-fun b!561149 () Bool)

(assert (=> b!561149 (= e!323350 e!323355)))

(declare-fun res!352450 () Bool)

(assert (=> b!561149 (=> (not res!352450) (not e!323355))))

(declare-fun lt!255400 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35229 (_ BitVec 32)) SeekEntryResult!5367)

(assert (=> b!561149 (= res!352450 (= lt!255406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255400 lt!255402 lt!255405 mask!3119)))))

(declare-fun lt!255399 () (_ BitVec 32))

(assert (=> b!561149 (= lt!255406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255399 (select (arr!16911 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561149 (= lt!255400 (toIndex!0 lt!255402 mask!3119))))

(assert (=> b!561149 (= lt!255402 (select (store (arr!16911 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561149 (= lt!255399 (toIndex!0 (select (arr!16911 a!3118) j!142) mask!3119))))

(assert (=> b!561149 (= lt!255405 (array!35230 (store (arr!16911 a!3118) i!1132 k!1914) (size!17275 a!3118)))))

(declare-fun b!561150 () Bool)

(declare-fun res!352445 () Bool)

(assert (=> b!561150 (=> (not res!352445) (not e!323354))))

(assert (=> b!561150 (= res!352445 (and (= (size!17275 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17275 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17275 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561151 () Bool)

(assert (=> b!561151 (= e!323349 e!323351)))

(declare-fun res!352447 () Bool)

(assert (=> b!561151 (=> (not res!352447) (not e!323351))))

(assert (=> b!561151 (= res!352447 (= lt!255407 (seekKeyOrZeroReturnVacant!0 (x!52633 lt!255406) (index!23697 lt!255406) (index!23697 lt!255406) (select (arr!16911 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561152 () Bool)

(declare-fun res!352454 () Bool)

(assert (=> b!561152 (=> (not res!352454) (not e!323350))))

(assert (=> b!561152 (= res!352454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51410 res!352453) b!561150))

(assert (= (and b!561150 res!352445) b!561146))

(assert (= (and b!561146 res!352448) b!561142))

(assert (= (and b!561142 res!352444) b!561143))

(assert (= (and b!561143 res!352451) b!561141))

(assert (= (and b!561141 res!352446) b!561152))

(assert (= (and b!561152 res!352454) b!561145))

(assert (= (and b!561145 res!352452) b!561149))

(assert (= (and b!561149 res!352450) b!561147))

(assert (= (and b!561147 res!352442) b!561140))

(assert (= (and b!561140 (not res!352449)) b!561144))

(assert (= (and b!561144 (not res!352443)) b!561151))

(assert (= (and b!561151 res!352447) b!561148))

(declare-fun m!539059 () Bool)

(assert (=> b!561148 m!539059))

(declare-fun m!539061 () Bool)

(assert (=> b!561148 m!539061))

(declare-fun m!539063 () Bool)

(assert (=> b!561152 m!539063))

(declare-fun m!539065 () Bool)

(assert (=> start!51410 m!539065))

(declare-fun m!539067 () Bool)

(assert (=> start!51410 m!539067))

(declare-fun m!539069 () Bool)

(assert (=> b!561147 m!539069))

(assert (=> b!561147 m!539069))

(declare-fun m!539071 () Bool)

(assert (=> b!561147 m!539071))

(declare-fun m!539073 () Bool)

(assert (=> b!561147 m!539073))

(declare-fun m!539075 () Bool)

(assert (=> b!561147 m!539075))

(assert (=> b!561149 m!539069))

(declare-fun m!539077 () Bool)

(assert (=> b!561149 m!539077))

(assert (=> b!561149 m!539069))

(declare-fun m!539079 () Bool)

(assert (=> b!561149 m!539079))

(declare-fun m!539081 () Bool)

(assert (=> b!561149 m!539081))

(assert (=> b!561149 m!539069))

(declare-fun m!539083 () Bool)

(assert (=> b!561149 m!539083))

(declare-fun m!539085 () Bool)

(assert (=> b!561149 m!539085))

(declare-fun m!539087 () Bool)

(assert (=> b!561149 m!539087))

(declare-fun m!539089 () Bool)

(assert (=> b!561142 m!539089))

(declare-fun m!539091 () Bool)

(assert (=> b!561141 m!539091))

(assert (=> b!561144 m!539069))

(declare-fun m!539093 () Bool)

(assert (=> b!561144 m!539093))

(assert (=> b!561151 m!539069))

(assert (=> b!561151 m!539069))

(declare-fun m!539095 () Bool)

(assert (=> b!561151 m!539095))

(assert (=> b!561146 m!539069))

(assert (=> b!561146 m!539069))

(declare-fun m!539097 () Bool)

(assert (=> b!561146 m!539097))

(declare-fun m!539099 () Bool)

(assert (=> b!561145 m!539099))

(declare-fun m!539101 () Bool)

(assert (=> b!561143 m!539101))

(push 1)

