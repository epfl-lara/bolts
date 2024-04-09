; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52312 () Bool)

(assert start!52312)

(declare-fun b!570460 () Bool)

(declare-fun e!328095 () Bool)

(declare-fun e!328097 () Bool)

(assert (=> b!570460 (= e!328095 e!328097)))

(declare-fun res!360398 () Bool)

(assert (=> b!570460 (=> res!360398 e!328097)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5605 0))(
  ( (MissingZero!5605 (index!24647 (_ BitVec 32))) (Found!5605 (index!24648 (_ BitVec 32))) (Intermediate!5605 (undefined!6417 Bool) (index!24649 (_ BitVec 32)) (x!53548 (_ BitVec 32))) (Undefined!5605) (MissingVacant!5605 (index!24650 (_ BitVec 32))) )
))
(declare-fun lt!260113 () SeekEntryResult!5605)

(declare-datatypes ((array!35726 0))(
  ( (array!35727 (arr!17149 (Array (_ BitVec 32) (_ BitVec 64))) (size!17513 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35726)

(get-info :version)

(assert (=> b!570460 (= res!360398 (or (undefined!6417 lt!260113) (not ((_ is Intermediate!5605) lt!260113)) (= (select (arr!17149 a!3118) (index!24649 lt!260113)) (select (arr!17149 a!3118) j!142)) (= (select (arr!17149 a!3118) (index!24649 lt!260113)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570461 () Bool)

(declare-fun e!328094 () Bool)

(declare-fun e!328098 () Bool)

(assert (=> b!570461 (= e!328094 e!328098)))

(declare-fun res!360400 () Bool)

(assert (=> b!570461 (=> (not res!360400) (not e!328098))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!260114 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35726 (_ BitVec 32)) SeekEntryResult!5605)

(assert (=> b!570461 (= res!360400 (= lt!260113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260114 (select (store (arr!17149 a!3118) i!1132 k0!1914) j!142) (array!35727 (store (arr!17149 a!3118) i!1132 k0!1914) (size!17513 a!3118)) mask!3119)))))

(declare-fun lt!260116 () (_ BitVec 32))

(assert (=> b!570461 (= lt!260113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260116 (select (arr!17149 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570461 (= lt!260114 (toIndex!0 (select (store (arr!17149 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!570461 (= lt!260116 (toIndex!0 (select (arr!17149 a!3118) j!142) mask!3119))))

(declare-fun b!570462 () Bool)

(declare-fun res!360399 () Bool)

(assert (=> b!570462 (=> (not res!360399) (not e!328094))))

(declare-datatypes ((List!11282 0))(
  ( (Nil!11279) (Cons!11278 (h!12302 (_ BitVec 64)) (t!17518 List!11282)) )
))
(declare-fun arrayNoDuplicates!0 (array!35726 (_ BitVec 32) List!11282) Bool)

(assert (=> b!570462 (= res!360399 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11279))))

(declare-fun b!570463 () Bool)

(declare-fun res!360397 () Bool)

(declare-fun e!328096 () Bool)

(assert (=> b!570463 (=> (not res!360397) (not e!328096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570463 (= res!360397 (validKeyInArray!0 (select (arr!17149 a!3118) j!142)))))

(declare-fun res!360394 () Bool)

(assert (=> start!52312 (=> (not res!360394) (not e!328096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52312 (= res!360394 (validMask!0 mask!3119))))

(assert (=> start!52312 e!328096))

(assert (=> start!52312 true))

(declare-fun array_inv!12923 (array!35726) Bool)

(assert (=> start!52312 (array_inv!12923 a!3118)))

(declare-fun b!570464 () Bool)

(declare-fun res!360392 () Bool)

(assert (=> b!570464 (=> (not res!360392) (not e!328094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35726 (_ BitVec 32)) Bool)

(assert (=> b!570464 (= res!360392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570465 () Bool)

(declare-fun res!360391 () Bool)

(assert (=> b!570465 (=> (not res!360391) (not e!328096))))

(assert (=> b!570465 (= res!360391 (validKeyInArray!0 k0!1914))))

(declare-fun b!570466 () Bool)

(assert (=> b!570466 (= e!328098 (not true))))

(assert (=> b!570466 e!328095))

(declare-fun res!360395 () Bool)

(assert (=> b!570466 (=> (not res!360395) (not e!328095))))

(declare-fun lt!260112 () SeekEntryResult!5605)

(assert (=> b!570466 (= res!360395 (= lt!260112 (Found!5605 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35726 (_ BitVec 32)) SeekEntryResult!5605)

(assert (=> b!570466 (= lt!260112 (seekEntryOrOpen!0 (select (arr!17149 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570466 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17912 0))(
  ( (Unit!17913) )
))
(declare-fun lt!260117 () Unit!17912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17912)

(assert (=> b!570466 (= lt!260117 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570467 () Bool)

(declare-fun res!360401 () Bool)

(assert (=> b!570467 (=> (not res!360401) (not e!328096))))

(assert (=> b!570467 (= res!360401 (and (= (size!17513 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17513 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17513 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570468 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35726 (_ BitVec 32)) SeekEntryResult!5605)

(assert (=> b!570468 (= e!328097 (= lt!260112 (seekKeyOrZeroReturnVacant!0 (x!53548 lt!260113) (index!24649 lt!260113) (index!24649 lt!260113) (select (arr!17149 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570469 () Bool)

(assert (=> b!570469 (= e!328096 e!328094)))

(declare-fun res!360393 () Bool)

(assert (=> b!570469 (=> (not res!360393) (not e!328094))))

(declare-fun lt!260115 () SeekEntryResult!5605)

(assert (=> b!570469 (= res!360393 (or (= lt!260115 (MissingZero!5605 i!1132)) (= lt!260115 (MissingVacant!5605 i!1132))))))

(assert (=> b!570469 (= lt!260115 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!570470 () Bool)

(declare-fun res!360396 () Bool)

(assert (=> b!570470 (=> (not res!360396) (not e!328096))))

(declare-fun arrayContainsKey!0 (array!35726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570470 (= res!360396 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!52312 res!360394) b!570467))

(assert (= (and b!570467 res!360401) b!570463))

(assert (= (and b!570463 res!360397) b!570465))

(assert (= (and b!570465 res!360391) b!570470))

(assert (= (and b!570470 res!360396) b!570469))

(assert (= (and b!570469 res!360393) b!570464))

(assert (= (and b!570464 res!360392) b!570462))

(assert (= (and b!570462 res!360399) b!570461))

(assert (= (and b!570461 res!360400) b!570466))

(assert (= (and b!570466 res!360395) b!570460))

(assert (= (and b!570460 (not res!360398)) b!570468))

(declare-fun m!549371 () Bool)

(assert (=> b!570469 m!549371))

(declare-fun m!549373 () Bool)

(assert (=> b!570462 m!549373))

(declare-fun m!549375 () Bool)

(assert (=> b!570463 m!549375))

(assert (=> b!570463 m!549375))

(declare-fun m!549377 () Bool)

(assert (=> b!570463 m!549377))

(assert (=> b!570461 m!549375))

(declare-fun m!549379 () Bool)

(assert (=> b!570461 m!549379))

(assert (=> b!570461 m!549375))

(declare-fun m!549381 () Bool)

(assert (=> b!570461 m!549381))

(assert (=> b!570461 m!549375))

(declare-fun m!549383 () Bool)

(assert (=> b!570461 m!549383))

(assert (=> b!570461 m!549383))

(declare-fun m!549385 () Bool)

(assert (=> b!570461 m!549385))

(declare-fun m!549387 () Bool)

(assert (=> b!570461 m!549387))

(assert (=> b!570461 m!549383))

(declare-fun m!549389 () Bool)

(assert (=> b!570461 m!549389))

(declare-fun m!549391 () Bool)

(assert (=> b!570465 m!549391))

(declare-fun m!549393 () Bool)

(assert (=> b!570464 m!549393))

(declare-fun m!549395 () Bool)

(assert (=> b!570470 m!549395))

(declare-fun m!549397 () Bool)

(assert (=> start!52312 m!549397))

(declare-fun m!549399 () Bool)

(assert (=> start!52312 m!549399))

(assert (=> b!570468 m!549375))

(assert (=> b!570468 m!549375))

(declare-fun m!549401 () Bool)

(assert (=> b!570468 m!549401))

(declare-fun m!549403 () Bool)

(assert (=> b!570460 m!549403))

(assert (=> b!570460 m!549375))

(assert (=> b!570466 m!549375))

(assert (=> b!570466 m!549375))

(declare-fun m!549405 () Bool)

(assert (=> b!570466 m!549405))

(declare-fun m!549407 () Bool)

(assert (=> b!570466 m!549407))

(declare-fun m!549409 () Bool)

(assert (=> b!570466 m!549409))

(check-sat (not b!570463) (not b!570461) (not b!570470) (not start!52312) (not b!570466) (not b!570462) (not b!570464) (not b!570465) (not b!570469) (not b!570468))
(check-sat)
