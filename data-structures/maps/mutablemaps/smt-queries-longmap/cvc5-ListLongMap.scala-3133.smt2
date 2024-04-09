; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44104 () Bool)

(assert start!44104)

(declare-fun b!485722 () Bool)

(declare-fun res!289474 () Bool)

(declare-fun e!285940 () Bool)

(assert (=> b!485722 (=> (not res!289474) (not e!285940))))

(declare-datatypes ((array!31432 0))(
  ( (array!31433 (arr!15111 (Array (_ BitVec 32) (_ BitVec 64))) (size!15475 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31432)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485722 (= res!289474 (validKeyInArray!0 (select (arr!15111 a!3235) j!176)))))

(declare-fun res!289477 () Bool)

(assert (=> start!44104 (=> (not res!289477) (not e!285940))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44104 (= res!289477 (validMask!0 mask!3524))))

(assert (=> start!44104 e!285940))

(assert (=> start!44104 true))

(declare-fun array_inv!10885 (array!31432) Bool)

(assert (=> start!44104 (array_inv!10885 a!3235)))

(declare-fun b!485723 () Bool)

(assert (=> b!485723 (= e!285940 false)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3585 0))(
  ( (MissingZero!3585 (index!16519 (_ BitVec 32))) (Found!3585 (index!16520 (_ BitVec 32))) (Intermediate!3585 (undefined!4397 Bool) (index!16521 (_ BitVec 32)) (x!45688 (_ BitVec 32))) (Undefined!3585) (MissingVacant!3585 (index!16522 (_ BitVec 32))) )
))
(declare-fun lt!219557 () SeekEntryResult!3585)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31432 (_ BitVec 32)) SeekEntryResult!3585)

(assert (=> b!485723 (= lt!219557 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485724 () Bool)

(declare-fun res!289476 () Bool)

(assert (=> b!485724 (=> (not res!289476) (not e!285940))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485724 (= res!289476 (and (= (size!15475 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15475 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15475 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485725 () Bool)

(declare-fun res!289475 () Bool)

(assert (=> b!485725 (=> (not res!289475) (not e!285940))))

(assert (=> b!485725 (= res!289475 (validKeyInArray!0 k!2280))))

(declare-fun b!485726 () Bool)

(declare-fun res!289478 () Bool)

(assert (=> b!485726 (=> (not res!289478) (not e!285940))))

(declare-fun arrayContainsKey!0 (array!31432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485726 (= res!289478 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44104 res!289477) b!485724))

(assert (= (and b!485724 res!289476) b!485722))

(assert (= (and b!485722 res!289474) b!485725))

(assert (= (and b!485725 res!289475) b!485726))

(assert (= (and b!485726 res!289478) b!485723))

(declare-fun m!465823 () Bool)

(assert (=> b!485722 m!465823))

(assert (=> b!485722 m!465823))

(declare-fun m!465825 () Bool)

(assert (=> b!485722 m!465825))

(declare-fun m!465827 () Bool)

(assert (=> start!44104 m!465827))

(declare-fun m!465829 () Bool)

(assert (=> start!44104 m!465829))

(declare-fun m!465831 () Bool)

(assert (=> b!485723 m!465831))

(declare-fun m!465833 () Bool)

(assert (=> b!485726 m!465833))

(declare-fun m!465835 () Bool)

(assert (=> b!485725 m!465835))

(push 1)

(assert (not b!485722))

(assert (not start!44104))

(assert (not b!485725))

(assert (not b!485726))

(assert (not b!485723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

