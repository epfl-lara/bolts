; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44088 () Bool)

(assert start!44088)

(declare-fun b!485602 () Bool)

(declare-fun res!289357 () Bool)

(declare-fun e!285892 () Bool)

(assert (=> b!485602 (=> (not res!289357) (not e!285892))))

(declare-datatypes ((array!31416 0))(
  ( (array!31417 (arr!15103 (Array (_ BitVec 32) (_ BitVec 64))) (size!15467 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31416)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485602 (= res!289357 (validKeyInArray!0 (select (arr!15103 a!3235) j!176)))))

(declare-fun b!485603 () Bool)

(declare-fun res!289356 () Bool)

(assert (=> b!485603 (=> (not res!289356) (not e!285892))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!485603 (= res!289356 (validKeyInArray!0 k0!2280))))

(declare-fun res!289355 () Bool)

(assert (=> start!44088 (=> (not res!289355) (not e!285892))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44088 (= res!289355 (validMask!0 mask!3524))))

(assert (=> start!44088 e!285892))

(assert (=> start!44088 true))

(declare-fun array_inv!10877 (array!31416) Bool)

(assert (=> start!44088 (array_inv!10877 a!3235)))

(declare-fun b!485604 () Bool)

(assert (=> b!485604 (= e!285892 false)))

(declare-datatypes ((SeekEntryResult!3577 0))(
  ( (MissingZero!3577 (index!16487 (_ BitVec 32))) (Found!3577 (index!16488 (_ BitVec 32))) (Intermediate!3577 (undefined!4389 Bool) (index!16489 (_ BitVec 32)) (x!45656 (_ BitVec 32))) (Undefined!3577) (MissingVacant!3577 (index!16490 (_ BitVec 32))) )
))
(declare-fun lt!219533 () SeekEntryResult!3577)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31416 (_ BitVec 32)) SeekEntryResult!3577)

(assert (=> b!485604 (= lt!219533 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!485605 () Bool)

(declare-fun res!289354 () Bool)

(assert (=> b!485605 (=> (not res!289354) (not e!285892))))

(declare-fun arrayContainsKey!0 (array!31416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485605 (= res!289354 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485606 () Bool)

(declare-fun res!289358 () Bool)

(assert (=> b!485606 (=> (not res!289358) (not e!285892))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485606 (= res!289358 (and (= (size!15467 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15467 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15467 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44088 res!289355) b!485606))

(assert (= (and b!485606 res!289358) b!485602))

(assert (= (and b!485602 res!289357) b!485603))

(assert (= (and b!485603 res!289356) b!485605))

(assert (= (and b!485605 res!289354) b!485604))

(declare-fun m!465711 () Bool)

(assert (=> b!485602 m!465711))

(assert (=> b!485602 m!465711))

(declare-fun m!465713 () Bool)

(assert (=> b!485602 m!465713))

(declare-fun m!465715 () Bool)

(assert (=> b!485605 m!465715))

(declare-fun m!465717 () Bool)

(assert (=> b!485604 m!465717))

(declare-fun m!465719 () Bool)

(assert (=> start!44088 m!465719))

(declare-fun m!465721 () Bool)

(assert (=> start!44088 m!465721))

(declare-fun m!465723 () Bool)

(assert (=> b!485603 m!465723))

(check-sat (not b!485604) (not b!485603) (not start!44088) (not b!485602) (not b!485605))
