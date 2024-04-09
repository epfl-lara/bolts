; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52306 () Bool)

(assert start!52306)

(declare-fun b!570361 () Bool)

(declare-fun e!328040 () Bool)

(declare-fun e!328042 () Bool)

(assert (=> b!570361 (= e!328040 e!328042)))

(declare-fun res!360298 () Bool)

(assert (=> b!570361 (=> res!360298 e!328042)))

(declare-datatypes ((SeekEntryResult!5602 0))(
  ( (MissingZero!5602 (index!24635 (_ BitVec 32))) (Found!5602 (index!24636 (_ BitVec 32))) (Intermediate!5602 (undefined!6414 Bool) (index!24637 (_ BitVec 32)) (x!53537 (_ BitVec 32))) (Undefined!5602) (MissingVacant!5602 (index!24638 (_ BitVec 32))) )
))
(declare-fun lt!260061 () SeekEntryResult!5602)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35720 0))(
  ( (array!35721 (arr!17146 (Array (_ BitVec 32) (_ BitVec 64))) (size!17510 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35720)

(get-info :version)

(assert (=> b!570361 (= res!360298 (or (undefined!6414 lt!260061) (not ((_ is Intermediate!5602) lt!260061)) (= (select (arr!17146 a!3118) (index!24637 lt!260061)) (select (arr!17146 a!3118) j!142)) (= (select (arr!17146 a!3118) (index!24637 lt!260061)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570362 () Bool)

(declare-fun res!360294 () Bool)

(declare-fun e!328041 () Bool)

(assert (=> b!570362 (=> (not res!360294) (not e!328041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570362 (= res!360294 (validKeyInArray!0 (select (arr!17146 a!3118) j!142)))))

(declare-fun b!570363 () Bool)

(declare-fun res!360292 () Bool)

(assert (=> b!570363 (=> (not res!360292) (not e!328041))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!570363 (= res!360292 (validKeyInArray!0 k0!1914))))

(declare-fun b!570364 () Bool)

(declare-fun res!360302 () Bool)

(assert (=> b!570364 (=> (not res!360302) (not e!328041))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570364 (= res!360302 (and (= (size!17510 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17510 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17510 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570365 () Bool)

(declare-fun e!328045 () Bool)

(declare-fun e!328043 () Bool)

(assert (=> b!570365 (= e!328045 e!328043)))

(declare-fun res!360293 () Bool)

(assert (=> b!570365 (=> (not res!360293) (not e!328043))))

(declare-fun lt!260060 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35720 (_ BitVec 32)) SeekEntryResult!5602)

(assert (=> b!570365 (= res!360293 (= lt!260061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260060 (select (store (arr!17146 a!3118) i!1132 k0!1914) j!142) (array!35721 (store (arr!17146 a!3118) i!1132 k0!1914) (size!17510 a!3118)) mask!3119)))))

(declare-fun lt!260058 () (_ BitVec 32))

(assert (=> b!570365 (= lt!260061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260058 (select (arr!17146 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570365 (= lt!260060 (toIndex!0 (select (store (arr!17146 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!570365 (= lt!260058 (toIndex!0 (select (arr!17146 a!3118) j!142) mask!3119))))

(declare-fun b!570366 () Bool)

(declare-fun res!360295 () Bool)

(assert (=> b!570366 (=> (not res!360295) (not e!328041))))

(declare-fun arrayContainsKey!0 (array!35720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570366 (= res!360295 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570367 () Bool)

(assert (=> b!570367 (= e!328041 e!328045)))

(declare-fun res!360299 () Bool)

(assert (=> b!570367 (=> (not res!360299) (not e!328045))))

(declare-fun lt!260063 () SeekEntryResult!5602)

(assert (=> b!570367 (= res!360299 (or (= lt!260063 (MissingZero!5602 i!1132)) (= lt!260063 (MissingVacant!5602 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35720 (_ BitVec 32)) SeekEntryResult!5602)

(assert (=> b!570367 (= lt!260063 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!570368 () Bool)

(declare-fun res!360296 () Bool)

(assert (=> b!570368 (=> (not res!360296) (not e!328045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35720 (_ BitVec 32)) Bool)

(assert (=> b!570368 (= res!360296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570370 () Bool)

(assert (=> b!570370 (= e!328043 (not true))))

(assert (=> b!570370 e!328040))

(declare-fun res!360300 () Bool)

(assert (=> b!570370 (=> (not res!360300) (not e!328040))))

(declare-fun lt!260062 () SeekEntryResult!5602)

(assert (=> b!570370 (= res!360300 (= lt!260062 (Found!5602 j!142)))))

(assert (=> b!570370 (= lt!260062 (seekEntryOrOpen!0 (select (arr!17146 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570370 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17906 0))(
  ( (Unit!17907) )
))
(declare-fun lt!260059 () Unit!17906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17906)

(assert (=> b!570370 (= lt!260059 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570371 () Bool)

(declare-fun res!360301 () Bool)

(assert (=> b!570371 (=> (not res!360301) (not e!328045))))

(declare-datatypes ((List!11279 0))(
  ( (Nil!11276) (Cons!11275 (h!12299 (_ BitVec 64)) (t!17515 List!11279)) )
))
(declare-fun arrayNoDuplicates!0 (array!35720 (_ BitVec 32) List!11279) Bool)

(assert (=> b!570371 (= res!360301 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11276))))

(declare-fun res!360297 () Bool)

(assert (=> start!52306 (=> (not res!360297) (not e!328041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52306 (= res!360297 (validMask!0 mask!3119))))

(assert (=> start!52306 e!328041))

(assert (=> start!52306 true))

(declare-fun array_inv!12920 (array!35720) Bool)

(assert (=> start!52306 (array_inv!12920 a!3118)))

(declare-fun b!570369 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35720 (_ BitVec 32)) SeekEntryResult!5602)

(assert (=> b!570369 (= e!328042 (= lt!260062 (seekKeyOrZeroReturnVacant!0 (x!53537 lt!260061) (index!24637 lt!260061) (index!24637 lt!260061) (select (arr!17146 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!52306 res!360297) b!570364))

(assert (= (and b!570364 res!360302) b!570362))

(assert (= (and b!570362 res!360294) b!570363))

(assert (= (and b!570363 res!360292) b!570366))

(assert (= (and b!570366 res!360295) b!570367))

(assert (= (and b!570367 res!360299) b!570368))

(assert (= (and b!570368 res!360296) b!570371))

(assert (= (and b!570371 res!360301) b!570365))

(assert (= (and b!570365 res!360293) b!570370))

(assert (= (and b!570370 res!360300) b!570361))

(assert (= (and b!570361 (not res!360298)) b!570369))

(declare-fun m!549251 () Bool)

(assert (=> b!570361 m!549251))

(declare-fun m!549253 () Bool)

(assert (=> b!570361 m!549253))

(assert (=> b!570362 m!549253))

(assert (=> b!570362 m!549253))

(declare-fun m!549255 () Bool)

(assert (=> b!570362 m!549255))

(declare-fun m!549257 () Bool)

(assert (=> b!570367 m!549257))

(declare-fun m!549259 () Bool)

(assert (=> b!570368 m!549259))

(assert (=> b!570369 m!549253))

(assert (=> b!570369 m!549253))

(declare-fun m!549261 () Bool)

(assert (=> b!570369 m!549261))

(assert (=> b!570370 m!549253))

(assert (=> b!570370 m!549253))

(declare-fun m!549263 () Bool)

(assert (=> b!570370 m!549263))

(declare-fun m!549265 () Bool)

(assert (=> b!570370 m!549265))

(declare-fun m!549267 () Bool)

(assert (=> b!570370 m!549267))

(declare-fun m!549269 () Bool)

(assert (=> b!570366 m!549269))

(declare-fun m!549271 () Bool)

(assert (=> start!52306 m!549271))

(declare-fun m!549273 () Bool)

(assert (=> start!52306 m!549273))

(declare-fun m!549275 () Bool)

(assert (=> b!570371 m!549275))

(declare-fun m!549277 () Bool)

(assert (=> b!570363 m!549277))

(assert (=> b!570365 m!549253))

(declare-fun m!549279 () Bool)

(assert (=> b!570365 m!549279))

(declare-fun m!549281 () Bool)

(assert (=> b!570365 m!549281))

(declare-fun m!549283 () Bool)

(assert (=> b!570365 m!549283))

(assert (=> b!570365 m!549253))

(declare-fun m!549285 () Bool)

(assert (=> b!570365 m!549285))

(assert (=> b!570365 m!549281))

(declare-fun m!549287 () Bool)

(assert (=> b!570365 m!549287))

(assert (=> b!570365 m!549253))

(assert (=> b!570365 m!549281))

(declare-fun m!549289 () Bool)

(assert (=> b!570365 m!549289))

(check-sat (not b!570365) (not b!570369) (not b!570368) (not b!570362) (not b!570367) (not start!52306) (not b!570363) (not b!570366) (not b!570371) (not b!570370))
(check-sat)
