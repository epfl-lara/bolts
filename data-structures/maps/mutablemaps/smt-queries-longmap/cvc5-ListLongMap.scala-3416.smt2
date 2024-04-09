; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47428 () Bool)

(assert start!47428)

(declare-fun b!521551 () Bool)

(declare-fun res!319463 () Bool)

(declare-fun e!304263 () Bool)

(assert (=> b!521551 (=> (not res!319463) (not e!304263))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521551 (= res!319463 (validKeyInArray!0 k!2280))))

(declare-fun e!304265 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33214 0))(
  ( (array!33215 (arr!15960 (Array (_ BitVec 32) (_ BitVec 64))) (size!16324 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33214)

(declare-fun b!521552 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4434 0))(
  ( (MissingZero!4434 (index!19939 (_ BitVec 32))) (Found!4434 (index!19940 (_ BitVec 32))) (Intermediate!4434 (undefined!5246 Bool) (index!19941 (_ BitVec 32)) (x!48951 (_ BitVec 32))) (Undefined!4434) (MissingVacant!4434 (index!19942 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33214 (_ BitVec 32)) SeekEntryResult!4434)

(assert (=> b!521552 (= e!304265 (= (seekEntryOrOpen!0 (select (arr!15960 a!3235) j!176) a!3235 mask!3524) (Found!4434 j!176)))))

(declare-fun b!521553 () Bool)

(declare-datatypes ((Unit!16202 0))(
  ( (Unit!16203) )
))
(declare-fun e!304261 () Unit!16202)

(declare-fun Unit!16204 () Unit!16202)

(assert (=> b!521553 (= e!304261 Unit!16204)))

(declare-fun lt!239125 () SeekEntryResult!4434)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!239126 () Unit!16202)

(declare-fun lt!239118 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33214 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16202)

(assert (=> b!521553 (= lt!239126 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239118 #b00000000000000000000000000000000 (index!19941 lt!239125) (x!48951 lt!239125) mask!3524))))

(declare-fun lt!239124 () array!33214)

(declare-fun lt!239122 () (_ BitVec 64))

(declare-fun res!319458 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33214 (_ BitVec 32)) SeekEntryResult!4434)

(assert (=> b!521553 (= res!319458 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239118 lt!239122 lt!239124 mask!3524) (Intermediate!4434 false (index!19941 lt!239125) (x!48951 lt!239125))))))

(declare-fun e!304262 () Bool)

(assert (=> b!521553 (=> (not res!319458) (not e!304262))))

(assert (=> b!521553 e!304262))

(declare-fun b!521554 () Bool)

(declare-fun res!319464 () Bool)

(assert (=> b!521554 (=> (not res!319464) (not e!304263))))

(assert (=> b!521554 (= res!319464 (validKeyInArray!0 (select (arr!15960 a!3235) j!176)))))

(declare-fun b!521555 () Bool)

(declare-fun e!304264 () Bool)

(assert (=> b!521555 (= e!304263 e!304264)))

(declare-fun res!319462 () Bool)

(assert (=> b!521555 (=> (not res!319462) (not e!304264))))

(declare-fun lt!239121 () SeekEntryResult!4434)

(assert (=> b!521555 (= res!319462 (or (= lt!239121 (MissingZero!4434 i!1204)) (= lt!239121 (MissingVacant!4434 i!1204))))))

(assert (=> b!521555 (= lt!239121 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!319461 () Bool)

(assert (=> start!47428 (=> (not res!319461) (not e!304263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47428 (= res!319461 (validMask!0 mask!3524))))

(assert (=> start!47428 e!304263))

(assert (=> start!47428 true))

(declare-fun array_inv!11734 (array!33214) Bool)

(assert (=> start!47428 (array_inv!11734 a!3235)))

(declare-fun b!521556 () Bool)

(declare-fun res!319465 () Bool)

(assert (=> b!521556 (=> (not res!319465) (not e!304264))))

(declare-datatypes ((List!10171 0))(
  ( (Nil!10168) (Cons!10167 (h!11089 (_ BitVec 64)) (t!16407 List!10171)) )
))
(declare-fun arrayNoDuplicates!0 (array!33214 (_ BitVec 32) List!10171) Bool)

(assert (=> b!521556 (= res!319465 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10168))))

(declare-fun b!521557 () Bool)

(declare-fun res!319459 () Bool)

(assert (=> b!521557 (=> (not res!319459) (not e!304263))))

(assert (=> b!521557 (= res!319459 (and (= (size!16324 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16324 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16324 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521558 () Bool)

(assert (=> b!521558 (= e!304262 false)))

(declare-fun b!521559 () Bool)

(declare-fun res!319457 () Bool)

(declare-fun e!304267 () Bool)

(assert (=> b!521559 (=> res!319457 e!304267)))

(assert (=> b!521559 (= res!319457 (or (undefined!5246 lt!239125) (not (is-Intermediate!4434 lt!239125))))))

(declare-fun b!521560 () Bool)

(assert (=> b!521560 (= e!304267 true)))

(assert (=> b!521560 (and (or (= (select (arr!15960 a!3235) (index!19941 lt!239125)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15960 a!3235) (index!19941 lt!239125)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15960 a!3235) (index!19941 lt!239125)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15960 a!3235) (index!19941 lt!239125)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239123 () Unit!16202)

(assert (=> b!521560 (= lt!239123 e!304261)))

(declare-fun c!61349 () Bool)

(assert (=> b!521560 (= c!61349 (= (select (arr!15960 a!3235) (index!19941 lt!239125)) (select (arr!15960 a!3235) j!176)))))

(assert (=> b!521560 (and (bvslt (x!48951 lt!239125) #b01111111111111111111111111111110) (or (= (select (arr!15960 a!3235) (index!19941 lt!239125)) (select (arr!15960 a!3235) j!176)) (= (select (arr!15960 a!3235) (index!19941 lt!239125)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15960 a!3235) (index!19941 lt!239125)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521561 () Bool)

(declare-fun res!319466 () Bool)

(assert (=> b!521561 (=> (not res!319466) (not e!304263))))

(declare-fun arrayContainsKey!0 (array!33214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521561 (= res!319466 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521562 () Bool)

(declare-fun Unit!16205 () Unit!16202)

(assert (=> b!521562 (= e!304261 Unit!16205)))

(declare-fun b!521563 () Bool)

(assert (=> b!521563 (= e!304264 (not e!304267))))

(declare-fun res!319455 () Bool)

(assert (=> b!521563 (=> res!319455 e!304267)))

(declare-fun lt!239120 () (_ BitVec 32))

(assert (=> b!521563 (= res!319455 (= lt!239125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239120 lt!239122 lt!239124 mask!3524)))))

(assert (=> b!521563 (= lt!239125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239118 (select (arr!15960 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521563 (= lt!239120 (toIndex!0 lt!239122 mask!3524))))

(assert (=> b!521563 (= lt!239122 (select (store (arr!15960 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521563 (= lt!239118 (toIndex!0 (select (arr!15960 a!3235) j!176) mask!3524))))

(assert (=> b!521563 (= lt!239124 (array!33215 (store (arr!15960 a!3235) i!1204 k!2280) (size!16324 a!3235)))))

(assert (=> b!521563 e!304265))

(declare-fun res!319456 () Bool)

(assert (=> b!521563 (=> (not res!319456) (not e!304265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33214 (_ BitVec 32)) Bool)

(assert (=> b!521563 (= res!319456 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239119 () Unit!16202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33214 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16202)

(assert (=> b!521563 (= lt!239119 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521564 () Bool)

(declare-fun res!319460 () Bool)

(assert (=> b!521564 (=> (not res!319460) (not e!304264))))

(assert (=> b!521564 (= res!319460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47428 res!319461) b!521557))

(assert (= (and b!521557 res!319459) b!521554))

(assert (= (and b!521554 res!319464) b!521551))

(assert (= (and b!521551 res!319463) b!521561))

(assert (= (and b!521561 res!319466) b!521555))

(assert (= (and b!521555 res!319462) b!521564))

(assert (= (and b!521564 res!319460) b!521556))

(assert (= (and b!521556 res!319465) b!521563))

(assert (= (and b!521563 res!319456) b!521552))

(assert (= (and b!521563 (not res!319455)) b!521559))

(assert (= (and b!521559 (not res!319457)) b!521560))

(assert (= (and b!521560 c!61349) b!521553))

(assert (= (and b!521560 (not c!61349)) b!521562))

(assert (= (and b!521553 res!319458) b!521558))

(declare-fun m!502501 () Bool)

(assert (=> b!521561 m!502501))

(declare-fun m!502503 () Bool)

(assert (=> b!521563 m!502503))

(declare-fun m!502505 () Bool)

(assert (=> b!521563 m!502505))

(declare-fun m!502507 () Bool)

(assert (=> b!521563 m!502507))

(declare-fun m!502509 () Bool)

(assert (=> b!521563 m!502509))

(declare-fun m!502511 () Bool)

(assert (=> b!521563 m!502511))

(declare-fun m!502513 () Bool)

(assert (=> b!521563 m!502513))

(declare-fun m!502515 () Bool)

(assert (=> b!521563 m!502515))

(assert (=> b!521563 m!502513))

(declare-fun m!502517 () Bool)

(assert (=> b!521563 m!502517))

(assert (=> b!521563 m!502513))

(declare-fun m!502519 () Bool)

(assert (=> b!521563 m!502519))

(assert (=> b!521554 m!502513))

(assert (=> b!521554 m!502513))

(declare-fun m!502521 () Bool)

(assert (=> b!521554 m!502521))

(declare-fun m!502523 () Bool)

(assert (=> start!47428 m!502523))

(declare-fun m!502525 () Bool)

(assert (=> start!47428 m!502525))

(declare-fun m!502527 () Bool)

(assert (=> b!521555 m!502527))

(declare-fun m!502529 () Bool)

(assert (=> b!521564 m!502529))

(declare-fun m!502531 () Bool)

(assert (=> b!521560 m!502531))

(assert (=> b!521560 m!502513))

(declare-fun m!502533 () Bool)

(assert (=> b!521556 m!502533))

(declare-fun m!502535 () Bool)

(assert (=> b!521551 m!502535))

(assert (=> b!521552 m!502513))

(assert (=> b!521552 m!502513))

(declare-fun m!502537 () Bool)

(assert (=> b!521552 m!502537))

(declare-fun m!502539 () Bool)

(assert (=> b!521553 m!502539))

(declare-fun m!502541 () Bool)

(assert (=> b!521553 m!502541))

(push 1)

