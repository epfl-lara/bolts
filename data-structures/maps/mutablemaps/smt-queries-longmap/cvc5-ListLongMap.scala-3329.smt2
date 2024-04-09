; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45976 () Bool)

(assert start!45976)

(declare-fun b!508644 () Bool)

(declare-fun res!309644 () Bool)

(declare-fun e!297550 () Bool)

(assert (=> b!508644 (=> (not res!309644) (not e!297550))))

(declare-datatypes ((array!32647 0))(
  ( (array!32648 (arr!15699 (Array (_ BitVec 32) (_ BitVec 64))) (size!16063 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32647)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508644 (= res!309644 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508645 () Bool)

(declare-fun res!309645 () Bool)

(assert (=> b!508645 (=> (not res!309645) (not e!297550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508645 (= res!309645 (validKeyInArray!0 k!2280))))

(declare-fun b!508646 () Bool)

(declare-fun res!309643 () Bool)

(assert (=> b!508646 (=> (not res!309643) (not e!297550))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508646 (= res!309643 (validKeyInArray!0 (select (arr!15699 a!3235) j!176)))))

(declare-fun e!297547 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!508647 () Bool)

(declare-datatypes ((SeekEntryResult!4173 0))(
  ( (MissingZero!4173 (index!18880 (_ BitVec 32))) (Found!4173 (index!18881 (_ BitVec 32))) (Intermediate!4173 (undefined!4985 Bool) (index!18882 (_ BitVec 32)) (x!47889 (_ BitVec 32))) (Undefined!4173) (MissingVacant!4173 (index!18883 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32647 (_ BitVec 32)) SeekEntryResult!4173)

(assert (=> b!508647 (= e!297547 (= (seekEntryOrOpen!0 (select (arr!15699 a!3235) j!176) a!3235 mask!3524) (Found!4173 j!176)))))

(declare-fun b!508648 () Bool)

(declare-fun res!309647 () Bool)

(declare-fun e!297548 () Bool)

(assert (=> b!508648 (=> (not res!309647) (not e!297548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32647 (_ BitVec 32)) Bool)

(assert (=> b!508648 (= res!309647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!309641 () Bool)

(assert (=> start!45976 (=> (not res!309641) (not e!297550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45976 (= res!309641 (validMask!0 mask!3524))))

(assert (=> start!45976 e!297550))

(assert (=> start!45976 true))

(declare-fun array_inv!11473 (array!32647) Bool)

(assert (=> start!45976 (array_inv!11473 a!3235)))

(declare-fun b!508649 () Bool)

(assert (=> b!508649 (= e!297550 e!297548)))

(declare-fun res!309639 () Bool)

(assert (=> b!508649 (=> (not res!309639) (not e!297548))))

(declare-fun lt!232334 () SeekEntryResult!4173)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508649 (= res!309639 (or (= lt!232334 (MissingZero!4173 i!1204)) (= lt!232334 (MissingVacant!4173 i!1204))))))

(assert (=> b!508649 (= lt!232334 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508650 () Bool)

(assert (=> b!508650 (= e!297548 (not true))))

(assert (=> b!508650 e!297547))

(declare-fun res!309646 () Bool)

(assert (=> b!508650 (=> (not res!309646) (not e!297547))))

(assert (=> b!508650 (= res!309646 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15596 0))(
  ( (Unit!15597) )
))
(declare-fun lt!232333 () Unit!15596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15596)

(assert (=> b!508650 (= lt!232333 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508651 () Bool)

(declare-fun res!309640 () Bool)

(assert (=> b!508651 (=> (not res!309640) (not e!297550))))

(assert (=> b!508651 (= res!309640 (and (= (size!16063 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16063 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16063 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508652 () Bool)

(declare-fun res!309642 () Bool)

(assert (=> b!508652 (=> (not res!309642) (not e!297548))))

(declare-datatypes ((List!9910 0))(
  ( (Nil!9907) (Cons!9906 (h!10783 (_ BitVec 64)) (t!16146 List!9910)) )
))
(declare-fun arrayNoDuplicates!0 (array!32647 (_ BitVec 32) List!9910) Bool)

(assert (=> b!508652 (= res!309642 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9907))))

(assert (= (and start!45976 res!309641) b!508651))

(assert (= (and b!508651 res!309640) b!508646))

(assert (= (and b!508646 res!309643) b!508645))

(assert (= (and b!508645 res!309645) b!508644))

(assert (= (and b!508644 res!309644) b!508649))

(assert (= (and b!508649 res!309639) b!508648))

(assert (= (and b!508648 res!309647) b!508652))

(assert (= (and b!508652 res!309642) b!508650))

(assert (= (and b!508650 res!309646) b!508647))

(declare-fun m!489421 () Bool)

(assert (=> b!508644 m!489421))

(declare-fun m!489423 () Bool)

(assert (=> start!45976 m!489423))

(declare-fun m!489425 () Bool)

(assert (=> start!45976 m!489425))

(declare-fun m!489427 () Bool)

(assert (=> b!508648 m!489427))

(declare-fun m!489429 () Bool)

(assert (=> b!508646 m!489429))

(assert (=> b!508646 m!489429))

(declare-fun m!489431 () Bool)

(assert (=> b!508646 m!489431))

(assert (=> b!508647 m!489429))

(assert (=> b!508647 m!489429))

(declare-fun m!489433 () Bool)

(assert (=> b!508647 m!489433))

(declare-fun m!489435 () Bool)

(assert (=> b!508652 m!489435))

(declare-fun m!489437 () Bool)

(assert (=> b!508649 m!489437))

(declare-fun m!489439 () Bool)

(assert (=> b!508645 m!489439))

(declare-fun m!489441 () Bool)

(assert (=> b!508650 m!489441))

(declare-fun m!489443 () Bool)

(assert (=> b!508650 m!489443))

(push 1)

