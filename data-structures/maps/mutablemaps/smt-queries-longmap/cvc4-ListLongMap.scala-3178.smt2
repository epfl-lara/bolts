; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44708 () Bool)

(assert start!44708)

(declare-fun b!490320 () Bool)

(declare-fun res!293409 () Bool)

(declare-fun e!288232 () Bool)

(assert (=> b!490320 (=> (not res!293409) (not e!288232))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31727 0))(
  ( (array!31728 (arr!15248 (Array (_ BitVec 32) (_ BitVec 64))) (size!15612 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31727)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!490320 (= res!293409 (and (= (size!15612 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15612 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15612 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490321 () Bool)

(declare-fun res!293406 () Bool)

(declare-fun e!288233 () Bool)

(assert (=> b!490321 (=> (not res!293406) (not e!288233))))

(declare-datatypes ((List!9459 0))(
  ( (Nil!9456) (Cons!9455 (h!10317 (_ BitVec 64)) (t!15695 List!9459)) )
))
(declare-fun arrayNoDuplicates!0 (array!31727 (_ BitVec 32) List!9459) Bool)

(assert (=> b!490321 (= res!293406 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9456))))

(declare-fun b!490322 () Bool)

(declare-fun res!293414 () Bool)

(assert (=> b!490322 (=> (not res!293414) (not e!288232))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490322 (= res!293414 (validKeyInArray!0 k!2280))))

(declare-fun b!490323 () Bool)

(declare-fun res!293410 () Bool)

(assert (=> b!490323 (=> (not res!293410) (not e!288233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31727 (_ BitVec 32)) Bool)

(assert (=> b!490323 (= res!293410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490324 () Bool)

(declare-fun res!293413 () Bool)

(assert (=> b!490324 (=> (not res!293413) (not e!288232))))

(assert (=> b!490324 (= res!293413 (validKeyInArray!0 (select (arr!15248 a!3235) j!176)))))

(declare-fun b!490325 () Bool)

(declare-fun e!288235 () Bool)

(assert (=> b!490325 (= e!288233 (not e!288235))))

(declare-fun res!293411 () Bool)

(assert (=> b!490325 (=> res!293411 e!288235)))

(declare-fun lt!221509 () (_ BitVec 64))

(declare-fun lt!221508 () array!31727)

(declare-datatypes ((SeekEntryResult!3722 0))(
  ( (MissingZero!3722 (index!17067 (_ BitVec 32))) (Found!3722 (index!17068 (_ BitVec 32))) (Intermediate!3722 (undefined!4534 Bool) (index!17069 (_ BitVec 32)) (x!46191 (_ BitVec 32))) (Undefined!3722) (MissingVacant!3722 (index!17070 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31727 (_ BitVec 32)) SeekEntryResult!3722)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490325 (= res!293411 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15248 a!3235) j!176) mask!3524) (select (arr!15248 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221509 mask!3524) lt!221509 lt!221508 mask!3524))))))

(assert (=> b!490325 (= lt!221509 (select (store (arr!15248 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490325 (= lt!221508 (array!31728 (store (arr!15248 a!3235) i!1204 k!2280) (size!15612 a!3235)))))

(declare-fun lt!221505 () SeekEntryResult!3722)

(assert (=> b!490325 (= lt!221505 (Found!3722 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31727 (_ BitVec 32)) SeekEntryResult!3722)

(assert (=> b!490325 (= lt!221505 (seekEntryOrOpen!0 (select (arr!15248 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490325 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14382 0))(
  ( (Unit!14383) )
))
(declare-fun lt!221506 () Unit!14382)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14382)

(assert (=> b!490325 (= lt!221506 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490326 () Bool)

(assert (=> b!490326 (= e!288232 e!288233)))

(declare-fun res!293408 () Bool)

(assert (=> b!490326 (=> (not res!293408) (not e!288233))))

(declare-fun lt!221507 () SeekEntryResult!3722)

(assert (=> b!490326 (= res!293408 (or (= lt!221507 (MissingZero!3722 i!1204)) (= lt!221507 (MissingVacant!3722 i!1204))))))

(assert (=> b!490326 (= lt!221507 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490327 () Bool)

(declare-fun res!293412 () Bool)

(assert (=> b!490327 (=> (not res!293412) (not e!288232))))

(declare-fun arrayContainsKey!0 (array!31727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490327 (= res!293412 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490328 () Bool)

(assert (=> b!490328 (= e!288235 true)))

(assert (=> b!490328 (= lt!221505 (seekEntryOrOpen!0 lt!221509 lt!221508 mask!3524))))

(declare-fun lt!221510 () Unit!14382)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31727 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14382)

(assert (=> b!490328 (= lt!221510 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun res!293407 () Bool)

(assert (=> start!44708 (=> (not res!293407) (not e!288232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44708 (= res!293407 (validMask!0 mask!3524))))

(assert (=> start!44708 e!288232))

(assert (=> start!44708 true))

(declare-fun array_inv!11022 (array!31727) Bool)

(assert (=> start!44708 (array_inv!11022 a!3235)))

(assert (= (and start!44708 res!293407) b!490320))

(assert (= (and b!490320 res!293409) b!490324))

(assert (= (and b!490324 res!293413) b!490322))

(assert (= (and b!490322 res!293414) b!490327))

(assert (= (and b!490327 res!293412) b!490326))

(assert (= (and b!490326 res!293408) b!490323))

(assert (= (and b!490323 res!293410) b!490321))

(assert (= (and b!490321 res!293406) b!490325))

(assert (= (and b!490325 (not res!293411)) b!490328))

(declare-fun m!470499 () Bool)

(assert (=> b!490325 m!470499))

(declare-fun m!470501 () Bool)

(assert (=> b!490325 m!470501))

(declare-fun m!470503 () Bool)

(assert (=> b!490325 m!470503))

(declare-fun m!470505 () Bool)

(assert (=> b!490325 m!470505))

(declare-fun m!470507 () Bool)

(assert (=> b!490325 m!470507))

(declare-fun m!470509 () Bool)

(assert (=> b!490325 m!470509))

(declare-fun m!470511 () Bool)

(assert (=> b!490325 m!470511))

(assert (=> b!490325 m!470499))

(declare-fun m!470513 () Bool)

(assert (=> b!490325 m!470513))

(assert (=> b!490325 m!470509))

(assert (=> b!490325 m!470507))

(assert (=> b!490325 m!470509))

(declare-fun m!470515 () Bool)

(assert (=> b!490325 m!470515))

(assert (=> b!490325 m!470509))

(declare-fun m!470517 () Bool)

(assert (=> b!490325 m!470517))

(declare-fun m!470519 () Bool)

(assert (=> start!44708 m!470519))

(declare-fun m!470521 () Bool)

(assert (=> start!44708 m!470521))

(declare-fun m!470523 () Bool)

(assert (=> b!490323 m!470523))

(declare-fun m!470525 () Bool)

(assert (=> b!490327 m!470525))

(declare-fun m!470527 () Bool)

(assert (=> b!490321 m!470527))

(assert (=> b!490324 m!470509))

(assert (=> b!490324 m!470509))

(declare-fun m!470529 () Bool)

(assert (=> b!490324 m!470529))

(declare-fun m!470531 () Bool)

(assert (=> b!490328 m!470531))

(declare-fun m!470533 () Bool)

(assert (=> b!490328 m!470533))

(declare-fun m!470535 () Bool)

(assert (=> b!490322 m!470535))

(declare-fun m!470537 () Bool)

(assert (=> b!490326 m!470537))

(push 1)

