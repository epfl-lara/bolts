; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44096 () Bool)

(assert start!44096)

(declare-fun b!485662 () Bool)

(declare-fun res!289417 () Bool)

(declare-fun e!285915 () Bool)

(assert (=> b!485662 (=> (not res!289417) (not e!285915))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31424 0))(
  ( (array!31425 (arr!15107 (Array (_ BitVec 32) (_ BitVec 64))) (size!15471 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31424)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485662 (= res!289417 (and (= (size!15471 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15471 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15471 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485663 () Bool)

(declare-fun res!289418 () Bool)

(assert (=> b!485663 (=> (not res!289418) (not e!285915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485663 (= res!289418 (validKeyInArray!0 (select (arr!15107 a!3235) j!176)))))

(declare-fun b!485664 () Bool)

(declare-fun res!289416 () Bool)

(assert (=> b!485664 (=> (not res!289416) (not e!285915))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!485664 (= res!289416 (validKeyInArray!0 k!2280))))

(declare-fun res!289415 () Bool)

(assert (=> start!44096 (=> (not res!289415) (not e!285915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44096 (= res!289415 (validMask!0 mask!3524))))

(assert (=> start!44096 e!285915))

(assert (=> start!44096 true))

(declare-fun array_inv!10881 (array!31424) Bool)

(assert (=> start!44096 (array_inv!10881 a!3235)))

(declare-fun b!485665 () Bool)

(assert (=> b!485665 (= e!285915 false)))

(declare-datatypes ((SeekEntryResult!3581 0))(
  ( (MissingZero!3581 (index!16503 (_ BitVec 32))) (Found!3581 (index!16504 (_ BitVec 32))) (Intermediate!3581 (undefined!4393 Bool) (index!16505 (_ BitVec 32)) (x!45668 (_ BitVec 32))) (Undefined!3581) (MissingVacant!3581 (index!16506 (_ BitVec 32))) )
))
(declare-fun lt!219545 () SeekEntryResult!3581)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31424 (_ BitVec 32)) SeekEntryResult!3581)

(assert (=> b!485665 (= lt!219545 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485666 () Bool)

(declare-fun res!289414 () Bool)

(assert (=> b!485666 (=> (not res!289414) (not e!285915))))

(declare-fun arrayContainsKey!0 (array!31424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485666 (= res!289414 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44096 res!289415) b!485662))

(assert (= (and b!485662 res!289417) b!485663))

(assert (= (and b!485663 res!289418) b!485664))

(assert (= (and b!485664 res!289416) b!485666))

(assert (= (and b!485666 res!289414) b!485665))

(declare-fun m!465767 () Bool)

(assert (=> start!44096 m!465767))

(declare-fun m!465769 () Bool)

(assert (=> start!44096 m!465769))

(declare-fun m!465771 () Bool)

(assert (=> b!485663 m!465771))

(assert (=> b!485663 m!465771))

(declare-fun m!465773 () Bool)

(assert (=> b!485663 m!465773))

(declare-fun m!465775 () Bool)

(assert (=> b!485666 m!465775))

(declare-fun m!465777 () Bool)

(assert (=> b!485664 m!465777))

(declare-fun m!465779 () Bool)

(assert (=> b!485665 m!465779))

(push 1)

(assert (not b!485665))

(assert (not start!44096))

(assert (not b!485663))

(assert (not b!485664))

(assert (not b!485666))

(check-sat)

