; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46096 () Bool)

(assert start!46096)

(declare-fun b!510264 () Bool)

(declare-fun e!298269 () Bool)

(declare-fun e!298267 () Bool)

(assert (=> b!510264 (= e!298269 e!298267)))

(declare-fun res!311266 () Bool)

(assert (=> b!510264 (=> (not res!311266) (not e!298267))))

(declare-datatypes ((SeekEntryResult!4233 0))(
  ( (MissingZero!4233 (index!19120 (_ BitVec 32))) (Found!4233 (index!19121 (_ BitVec 32))) (Intermediate!4233 (undefined!5045 Bool) (index!19122 (_ BitVec 32)) (x!48109 (_ BitVec 32))) (Undefined!4233) (MissingVacant!4233 (index!19123 (_ BitVec 32))) )
))
(declare-fun lt!233360 () SeekEntryResult!4233)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510264 (= res!311266 (or (= lt!233360 (MissingZero!4233 i!1204)) (= lt!233360 (MissingVacant!4233 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32767 0))(
  ( (array!32768 (arr!15759 (Array (_ BitVec 32) (_ BitVec 64))) (size!16123 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32767)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32767 (_ BitVec 32)) SeekEntryResult!4233)

(assert (=> b!510264 (= lt!233360 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510265 () Bool)

(declare-fun res!311264 () Bool)

(assert (=> b!510265 (=> (not res!311264) (not e!298269))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510265 (= res!311264 (validKeyInArray!0 (select (arr!15759 a!3235) j!176)))))

(declare-fun b!510266 () Bool)

(declare-fun res!311267 () Bool)

(assert (=> b!510266 (=> (not res!311267) (not e!298267))))

(declare-datatypes ((List!9970 0))(
  ( (Nil!9967) (Cons!9966 (h!10843 (_ BitVec 64)) (t!16206 List!9970)) )
))
(declare-fun arrayNoDuplicates!0 (array!32767 (_ BitVec 32) List!9970) Bool)

(assert (=> b!510266 (= res!311267 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9967))))

(declare-fun res!311260 () Bool)

(assert (=> start!46096 (=> (not res!311260) (not e!298269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46096 (= res!311260 (validMask!0 mask!3524))))

(assert (=> start!46096 e!298269))

(assert (=> start!46096 true))

(declare-fun array_inv!11533 (array!32767) Bool)

(assert (=> start!46096 (array_inv!11533 a!3235)))

(declare-fun b!510267 () Bool)

(declare-fun e!298268 () Bool)

(assert (=> b!510267 (= e!298267 (not e!298268))))

(declare-fun res!311259 () Bool)

(assert (=> b!510267 (=> res!311259 e!298268)))

(declare-fun lt!233362 () (_ BitVec 64))

(declare-fun lt!233361 () array!32767)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32767 (_ BitVec 32)) SeekEntryResult!4233)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510267 (= res!311259 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15759 a!3235) j!176) mask!3524) (select (arr!15759 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233362 mask!3524) lt!233362 lt!233361 mask!3524))))))

(assert (=> b!510267 (= lt!233362 (select (store (arr!15759 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510267 (= lt!233361 (array!32768 (store (arr!15759 a!3235) i!1204 k!2280) (size!16123 a!3235)))))

(declare-fun lt!233363 () SeekEntryResult!4233)

(assert (=> b!510267 (= lt!233363 (Found!4233 j!176))))

(assert (=> b!510267 (= lt!233363 (seekEntryOrOpen!0 (select (arr!15759 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32767 (_ BitVec 32)) Bool)

(assert (=> b!510267 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15716 0))(
  ( (Unit!15717) )
))
(declare-fun lt!233359 () Unit!15716)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15716)

(assert (=> b!510267 (= lt!233359 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510268 () Bool)

(declare-fun res!311261 () Bool)

(assert (=> b!510268 (=> (not res!311261) (not e!298269))))

(declare-fun arrayContainsKey!0 (array!32767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510268 (= res!311261 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510269 () Bool)

(declare-fun res!311263 () Bool)

(assert (=> b!510269 (=> (not res!311263) (not e!298269))))

(assert (=> b!510269 (= res!311263 (and (= (size!16123 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16123 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16123 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510270 () Bool)

(declare-fun res!311265 () Bool)

(assert (=> b!510270 (=> (not res!311265) (not e!298269))))

(assert (=> b!510270 (= res!311265 (validKeyInArray!0 k!2280))))

(declare-fun b!510271 () Bool)

(declare-fun res!311262 () Bool)

(assert (=> b!510271 (=> (not res!311262) (not e!298267))))

(assert (=> b!510271 (= res!311262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510272 () Bool)

(assert (=> b!510272 (= e!298268 true)))

(assert (=> b!510272 (= lt!233363 (seekEntryOrOpen!0 lt!233362 lt!233361 mask!3524))))

(declare-fun lt!233358 () Unit!15716)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32767 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15716)

(assert (=> b!510272 (= lt!233358 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(assert (= (and start!46096 res!311260) b!510269))

(assert (= (and b!510269 res!311263) b!510265))

(assert (= (and b!510265 res!311264) b!510270))

(assert (= (and b!510270 res!311265) b!510268))

(assert (= (and b!510268 res!311261) b!510264))

(assert (= (and b!510264 res!311266) b!510271))

(assert (= (and b!510271 res!311262) b!510266))

(assert (= (and b!510266 res!311267) b!510267))

(assert (= (and b!510267 (not res!311259)) b!510272))

(declare-fun m!491575 () Bool)

(assert (=> b!510267 m!491575))

(declare-fun m!491577 () Bool)

(assert (=> b!510267 m!491577))

(declare-fun m!491579 () Bool)

(assert (=> b!510267 m!491579))

(declare-fun m!491581 () Bool)

(assert (=> b!510267 m!491581))

(declare-fun m!491583 () Bool)

(assert (=> b!510267 m!491583))

(assert (=> b!510267 m!491581))

(assert (=> b!510267 m!491579))

(assert (=> b!510267 m!491581))

(declare-fun m!491585 () Bool)

(assert (=> b!510267 m!491585))

(declare-fun m!491587 () Bool)

(assert (=> b!510267 m!491587))

(declare-fun m!491589 () Bool)

(assert (=> b!510267 m!491589))

(declare-fun m!491591 () Bool)

(assert (=> b!510267 m!491591))

(assert (=> b!510267 m!491581))

(declare-fun m!491593 () Bool)

(assert (=> b!510267 m!491593))

(assert (=> b!510267 m!491587))

(declare-fun m!491595 () Bool)

(assert (=> b!510272 m!491595))

(declare-fun m!491597 () Bool)

(assert (=> b!510272 m!491597))

(declare-fun m!491599 () Bool)

(assert (=> b!510266 m!491599))

(declare-fun m!491601 () Bool)

(assert (=> b!510270 m!491601))

(declare-fun m!491603 () Bool)

(assert (=> b!510264 m!491603))

(declare-fun m!491605 () Bool)

(assert (=> b!510268 m!491605))

(declare-fun m!491607 () Bool)

(assert (=> start!46096 m!491607))

(declare-fun m!491609 () Bool)

(assert (=> start!46096 m!491609))

(assert (=> b!510265 m!491581))

(assert (=> b!510265 m!491581))

(declare-fun m!491611 () Bool)

(assert (=> b!510265 m!491611))

(declare-fun m!491613 () Bool)

(assert (=> b!510271 m!491613))

(push 1)

