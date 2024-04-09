; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44116 () Bool)

(assert start!44116)

(declare-fun b!485816 () Bool)

(declare-fun e!285977 () Bool)

(declare-fun e!285979 () Bool)

(assert (=> b!485816 (= e!285977 e!285979)))

(declare-fun res!289568 () Bool)

(assert (=> b!485816 (=> (not res!289568) (not e!285979))))

(declare-datatypes ((SeekEntryResult!3591 0))(
  ( (MissingZero!3591 (index!16543 (_ BitVec 32))) (Found!3591 (index!16544 (_ BitVec 32))) (Intermediate!3591 (undefined!4403 Bool) (index!16545 (_ BitVec 32)) (x!45710 (_ BitVec 32))) (Undefined!3591) (MissingVacant!3591 (index!16546 (_ BitVec 32))) )
))
(declare-fun lt!219575 () SeekEntryResult!3591)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485816 (= res!289568 (or (= lt!219575 (MissingZero!3591 i!1204)) (= lt!219575 (MissingVacant!3591 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31444 0))(
  ( (array!31445 (arr!15117 (Array (_ BitVec 32) (_ BitVec 64))) (size!15481 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31444)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31444 (_ BitVec 32)) SeekEntryResult!3591)

(assert (=> b!485816 (= lt!219575 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485817 () Bool)

(declare-fun res!289573 () Bool)

(assert (=> b!485817 (=> (not res!289573) (not e!285979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31444 (_ BitVec 32)) Bool)

(assert (=> b!485817 (= res!289573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!485818 () Bool)

(declare-fun res!289574 () Bool)

(assert (=> b!485818 (=> (not res!289574) (not e!285977))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!485818 (= res!289574 (and (= (size!15481 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15481 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15481 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!289572 () Bool)

(assert (=> start!44116 (=> (not res!289572) (not e!285977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44116 (= res!289572 (validMask!0 mask!3524))))

(assert (=> start!44116 e!285977))

(assert (=> start!44116 true))

(declare-fun array_inv!10891 (array!31444) Bool)

(assert (=> start!44116 (array_inv!10891 a!3235)))

(declare-fun b!485819 () Bool)

(assert (=> b!485819 (= e!285979 (bvsgt #b00000000000000000000000000000000 (size!15481 a!3235)))))

(declare-fun b!485820 () Bool)

(declare-fun res!289571 () Bool)

(assert (=> b!485820 (=> (not res!289571) (not e!285977))))

(declare-fun arrayContainsKey!0 (array!31444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485820 (= res!289571 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!485821 () Bool)

(declare-fun res!289569 () Bool)

(assert (=> b!485821 (=> (not res!289569) (not e!285977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485821 (= res!289569 (validKeyInArray!0 k!2280))))

(declare-fun b!485822 () Bool)

(declare-fun res!289570 () Bool)

(assert (=> b!485822 (=> (not res!289570) (not e!285977))))

(assert (=> b!485822 (= res!289570 (validKeyInArray!0 (select (arr!15117 a!3235) j!176)))))

(assert (= (and start!44116 res!289572) b!485818))

(assert (= (and b!485818 res!289574) b!485822))

(assert (= (and b!485822 res!289570) b!485821))

(assert (= (and b!485821 res!289569) b!485820))

(assert (= (and b!485820 res!289571) b!485816))

(assert (= (and b!485816 res!289568) b!485817))

(assert (= (and b!485817 res!289573) b!485819))

(declare-fun m!465907 () Bool)

(assert (=> start!44116 m!465907))

(declare-fun m!465909 () Bool)

(assert (=> start!44116 m!465909))

(declare-fun m!465911 () Bool)

(assert (=> b!485821 m!465911))

(declare-fun m!465913 () Bool)

(assert (=> b!485820 m!465913))

(declare-fun m!465915 () Bool)

(assert (=> b!485822 m!465915))

(assert (=> b!485822 m!465915))

(declare-fun m!465917 () Bool)

(assert (=> b!485822 m!465917))

(declare-fun m!465919 () Bool)

(assert (=> b!485816 m!465919))

(declare-fun m!465921 () Bool)

(assert (=> b!485817 m!465921))

(push 1)

