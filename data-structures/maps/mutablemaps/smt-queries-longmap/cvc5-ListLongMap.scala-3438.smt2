; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47758 () Bool)

(assert start!47758)

(declare-fun b!525313 () Bool)

(declare-fun res!322223 () Bool)

(declare-fun e!306288 () Bool)

(assert (=> b!525313 (=> (not res!322223) (not e!306288))))

(declare-datatypes ((array!33355 0))(
  ( (array!33356 (arr!16026 (Array (_ BitVec 32) (_ BitVec 64))) (size!16390 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33355)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525313 (= res!322223 (validKeyInArray!0 (select (arr!16026 a!3235) j!176)))))

(declare-fun b!525314 () Bool)

(declare-fun res!322224 () Bool)

(declare-fun e!306291 () Bool)

(assert (=> b!525314 (=> (not res!322224) (not e!306291))))

(declare-datatypes ((List!10237 0))(
  ( (Nil!10234) (Cons!10233 (h!11164 (_ BitVec 64)) (t!16473 List!10237)) )
))
(declare-fun arrayNoDuplicates!0 (array!33355 (_ BitVec 32) List!10237) Bool)

(assert (=> b!525314 (= res!322224 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10234))))

(declare-fun b!525315 () Bool)

(declare-datatypes ((Unit!16466 0))(
  ( (Unit!16467) )
))
(declare-fun e!306286 () Unit!16466)

(declare-fun Unit!16468 () Unit!16466)

(assert (=> b!525315 (= e!306286 Unit!16468)))

(declare-fun b!525317 () Bool)

(assert (=> b!525317 (= e!306288 e!306291)))

(declare-fun res!322229 () Bool)

(assert (=> b!525317 (=> (not res!322229) (not e!306291))))

(declare-datatypes ((SeekEntryResult!4500 0))(
  ( (MissingZero!4500 (index!20212 (_ BitVec 32))) (Found!4500 (index!20213 (_ BitVec 32))) (Intermediate!4500 (undefined!5312 Bool) (index!20214 (_ BitVec 32)) (x!49220 (_ BitVec 32))) (Undefined!4500) (MissingVacant!4500 (index!20215 (_ BitVec 32))) )
))
(declare-fun lt!241412 () SeekEntryResult!4500)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525317 (= res!322229 (or (= lt!241412 (MissingZero!4500 i!1204)) (= lt!241412 (MissingVacant!4500 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33355 (_ BitVec 32)) SeekEntryResult!4500)

(assert (=> b!525317 (= lt!241412 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525318 () Bool)

(declare-fun res!322219 () Bool)

(assert (=> b!525318 (=> (not res!322219) (not e!306288))))

(assert (=> b!525318 (= res!322219 (validKeyInArray!0 k!2280))))

(declare-fun b!525319 () Bool)

(declare-fun res!322228 () Bool)

(assert (=> b!525319 (=> (not res!322228) (not e!306288))))

(declare-fun arrayContainsKey!0 (array!33355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525319 (= res!322228 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525320 () Bool)

(declare-fun e!306287 () Bool)

(assert (=> b!525320 (= e!306287 (= (seekEntryOrOpen!0 (select (arr!16026 a!3235) j!176) a!3235 mask!3524) (Found!4500 j!176)))))

(declare-fun b!525321 () Bool)

(declare-fun res!322226 () Bool)

(declare-fun e!306292 () Bool)

(assert (=> b!525321 (=> res!322226 e!306292)))

(declare-fun lt!241415 () SeekEntryResult!4500)

(assert (=> b!525321 (= res!322226 (or (undefined!5312 lt!241415) (not (is-Intermediate!4500 lt!241415))))))

(declare-fun b!525322 () Bool)

(declare-fun res!322220 () Bool)

(assert (=> b!525322 (=> (not res!322220) (not e!306291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33355 (_ BitVec 32)) Bool)

(assert (=> b!525322 (= res!322220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525323 () Bool)

(assert (=> b!525323 (= e!306291 (not e!306292))))

(declare-fun res!322222 () Bool)

(assert (=> b!525323 (=> res!322222 e!306292)))

(declare-fun lt!241410 () (_ BitVec 64))

(declare-fun lt!241408 () array!33355)

(declare-fun lt!241413 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33355 (_ BitVec 32)) SeekEntryResult!4500)

(assert (=> b!525323 (= res!322222 (= lt!241415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241413 lt!241410 lt!241408 mask!3524)))))

(declare-fun lt!241407 () (_ BitVec 32))

(assert (=> b!525323 (= lt!241415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241407 (select (arr!16026 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525323 (= lt!241413 (toIndex!0 lt!241410 mask!3524))))

(assert (=> b!525323 (= lt!241410 (select (store (arr!16026 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525323 (= lt!241407 (toIndex!0 (select (arr!16026 a!3235) j!176) mask!3524))))

(assert (=> b!525323 (= lt!241408 (array!33356 (store (arr!16026 a!3235) i!1204 k!2280) (size!16390 a!3235)))))

(assert (=> b!525323 e!306287))

(declare-fun res!322221 () Bool)

(assert (=> b!525323 (=> (not res!322221) (not e!306287))))

(assert (=> b!525323 (= res!322221 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241406 () Unit!16466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16466)

(assert (=> b!525323 (= lt!241406 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525324 () Bool)

(assert (=> b!525324 (= e!306292 true)))

(assert (=> b!525324 (= (index!20214 lt!241415) i!1204)))

(declare-fun lt!241409 () Unit!16466)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16466)

(assert (=> b!525324 (= lt!241409 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241407 #b00000000000000000000000000000000 (index!20214 lt!241415) (x!49220 lt!241415) mask!3524))))

(assert (=> b!525324 (and (or (= (select (arr!16026 a!3235) (index!20214 lt!241415)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16026 a!3235) (index!20214 lt!241415)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16026 a!3235) (index!20214 lt!241415)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16026 a!3235) (index!20214 lt!241415)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241411 () Unit!16466)

(assert (=> b!525324 (= lt!241411 e!306286)))

(declare-fun c!61853 () Bool)

(assert (=> b!525324 (= c!61853 (= (select (arr!16026 a!3235) (index!20214 lt!241415)) (select (arr!16026 a!3235) j!176)))))

(assert (=> b!525324 (and (bvslt (x!49220 lt!241415) #b01111111111111111111111111111110) (or (= (select (arr!16026 a!3235) (index!20214 lt!241415)) (select (arr!16026 a!3235) j!176)) (= (select (arr!16026 a!3235) (index!20214 lt!241415)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16026 a!3235) (index!20214 lt!241415)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!322227 () Bool)

(assert (=> start!47758 (=> (not res!322227) (not e!306288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47758 (= res!322227 (validMask!0 mask!3524))))

(assert (=> start!47758 e!306288))

(assert (=> start!47758 true))

(declare-fun array_inv!11800 (array!33355) Bool)

(assert (=> start!47758 (array_inv!11800 a!3235)))

(declare-fun b!525316 () Bool)

(declare-fun Unit!16469 () Unit!16466)

(assert (=> b!525316 (= e!306286 Unit!16469)))

(declare-fun lt!241414 () Unit!16466)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16466)

(assert (=> b!525316 (= lt!241414 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241407 #b00000000000000000000000000000000 (index!20214 lt!241415) (x!49220 lt!241415) mask!3524))))

(declare-fun res!322218 () Bool)

(assert (=> b!525316 (= res!322218 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241407 lt!241410 lt!241408 mask!3524) (Intermediate!4500 false (index!20214 lt!241415) (x!49220 lt!241415))))))

(declare-fun e!306290 () Bool)

(assert (=> b!525316 (=> (not res!322218) (not e!306290))))

(assert (=> b!525316 e!306290))

(declare-fun b!525325 () Bool)

(assert (=> b!525325 (= e!306290 false)))

(declare-fun b!525326 () Bool)

(declare-fun res!322225 () Bool)

(assert (=> b!525326 (=> (not res!322225) (not e!306288))))

(assert (=> b!525326 (= res!322225 (and (= (size!16390 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16390 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16390 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47758 res!322227) b!525326))

(assert (= (and b!525326 res!322225) b!525313))

(assert (= (and b!525313 res!322223) b!525318))

(assert (= (and b!525318 res!322219) b!525319))

(assert (= (and b!525319 res!322228) b!525317))

(assert (= (and b!525317 res!322229) b!525322))

(assert (= (and b!525322 res!322220) b!525314))

(assert (= (and b!525314 res!322224) b!525323))

(assert (= (and b!525323 res!322221) b!525320))

(assert (= (and b!525323 (not res!322222)) b!525321))

(assert (= (and b!525321 (not res!322226)) b!525324))

(assert (= (and b!525324 c!61853) b!525316))

(assert (= (and b!525324 (not c!61853)) b!525315))

(assert (= (and b!525316 res!322218) b!525325))

(declare-fun m!506011 () Bool)

(assert (=> start!47758 m!506011))

(declare-fun m!506013 () Bool)

(assert (=> start!47758 m!506013))

(declare-fun m!506015 () Bool)

(assert (=> b!525317 m!506015))

(declare-fun m!506017 () Bool)

(assert (=> b!525320 m!506017))

(assert (=> b!525320 m!506017))

(declare-fun m!506019 () Bool)

(assert (=> b!525320 m!506019))

(declare-fun m!506021 () Bool)

(assert (=> b!525322 m!506021))

(declare-fun m!506023 () Bool)

(assert (=> b!525324 m!506023))

(declare-fun m!506025 () Bool)

(assert (=> b!525324 m!506025))

(assert (=> b!525324 m!506017))

(declare-fun m!506027 () Bool)

(assert (=> b!525323 m!506027))

(declare-fun m!506029 () Bool)

(assert (=> b!525323 m!506029))

(declare-fun m!506031 () Bool)

(assert (=> b!525323 m!506031))

(assert (=> b!525323 m!506017))

(declare-fun m!506033 () Bool)

(assert (=> b!525323 m!506033))

(declare-fun m!506035 () Bool)

(assert (=> b!525323 m!506035))

(assert (=> b!525323 m!506017))

(declare-fun m!506037 () Bool)

(assert (=> b!525323 m!506037))

(assert (=> b!525323 m!506017))

(declare-fun m!506039 () Bool)

(assert (=> b!525323 m!506039))

(declare-fun m!506041 () Bool)

(assert (=> b!525323 m!506041))

(declare-fun m!506043 () Bool)

(assert (=> b!525316 m!506043))

(declare-fun m!506045 () Bool)

(assert (=> b!525316 m!506045))

(declare-fun m!506047 () Bool)

(assert (=> b!525314 m!506047))

(declare-fun m!506049 () Bool)

(assert (=> b!525318 m!506049))

(declare-fun m!506051 () Bool)

(assert (=> b!525319 m!506051))

(assert (=> b!525313 m!506017))

(assert (=> b!525313 m!506017))

(declare-fun m!506053 () Bool)

(assert (=> b!525313 m!506053))

(push 1)

