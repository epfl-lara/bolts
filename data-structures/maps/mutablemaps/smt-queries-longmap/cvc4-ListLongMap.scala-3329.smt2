; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45980 () Bool)

(assert start!45980)

(declare-fun b!508698 () Bool)

(declare-fun res!309695 () Bool)

(declare-fun e!297574 () Bool)

(assert (=> b!508698 (=> (not res!309695) (not e!297574))))

(declare-datatypes ((array!32651 0))(
  ( (array!32652 (arr!15701 (Array (_ BitVec 32) (_ BitVec 64))) (size!16065 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32651)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508698 (= res!309695 (validKeyInArray!0 (select (arr!15701 a!3235) j!176)))))

(declare-fun b!508699 () Bool)

(declare-fun e!297572 () Bool)

(assert (=> b!508699 (= e!297574 e!297572)))

(declare-fun res!309697 () Bool)

(assert (=> b!508699 (=> (not res!309697) (not e!297572))))

(declare-datatypes ((SeekEntryResult!4175 0))(
  ( (MissingZero!4175 (index!18888 (_ BitVec 32))) (Found!4175 (index!18889 (_ BitVec 32))) (Intermediate!4175 (undefined!4987 Bool) (index!18890 (_ BitVec 32)) (x!47891 (_ BitVec 32))) (Undefined!4175) (MissingVacant!4175 (index!18891 (_ BitVec 32))) )
))
(declare-fun lt!232346 () SeekEntryResult!4175)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508699 (= res!309697 (or (= lt!232346 (MissingZero!4175 i!1204)) (= lt!232346 (MissingVacant!4175 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32651 (_ BitVec 32)) SeekEntryResult!4175)

(assert (=> b!508699 (= lt!232346 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508700 () Bool)

(declare-fun res!309699 () Bool)

(assert (=> b!508700 (=> (not res!309699) (not e!297574))))

(declare-fun arrayContainsKey!0 (array!32651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508700 (= res!309699 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508701 () Bool)

(declare-fun res!309693 () Bool)

(assert (=> b!508701 (=> (not res!309693) (not e!297572))))

(declare-datatypes ((List!9912 0))(
  ( (Nil!9909) (Cons!9908 (h!10785 (_ BitVec 64)) (t!16148 List!9912)) )
))
(declare-fun arrayNoDuplicates!0 (array!32651 (_ BitVec 32) List!9912) Bool)

(assert (=> b!508701 (= res!309693 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9909))))

(declare-fun b!508702 () Bool)

(assert (=> b!508702 (= e!297572 (not true))))

(declare-fun e!297573 () Bool)

(assert (=> b!508702 e!297573))

(declare-fun res!309694 () Bool)

(assert (=> b!508702 (=> (not res!309694) (not e!297573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32651 (_ BitVec 32)) Bool)

(assert (=> b!508702 (= res!309694 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15600 0))(
  ( (Unit!15601) )
))
(declare-fun lt!232345 () Unit!15600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15600)

(assert (=> b!508702 (= lt!232345 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508703 () Bool)

(declare-fun res!309696 () Bool)

(assert (=> b!508703 (=> (not res!309696) (not e!297572))))

(assert (=> b!508703 (= res!309696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508704 () Bool)

(declare-fun res!309701 () Bool)

(assert (=> b!508704 (=> (not res!309701) (not e!297574))))

(assert (=> b!508704 (= res!309701 (and (= (size!16065 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16065 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16065 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!309700 () Bool)

(assert (=> start!45980 (=> (not res!309700) (not e!297574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45980 (= res!309700 (validMask!0 mask!3524))))

(assert (=> start!45980 e!297574))

(assert (=> start!45980 true))

(declare-fun array_inv!11475 (array!32651) Bool)

(assert (=> start!45980 (array_inv!11475 a!3235)))

(declare-fun b!508705 () Bool)

(assert (=> b!508705 (= e!297573 (= (seekEntryOrOpen!0 (select (arr!15701 a!3235) j!176) a!3235 mask!3524) (Found!4175 j!176)))))

(declare-fun b!508706 () Bool)

(declare-fun res!309698 () Bool)

(assert (=> b!508706 (=> (not res!309698) (not e!297574))))

(assert (=> b!508706 (= res!309698 (validKeyInArray!0 k!2280))))

(assert (= (and start!45980 res!309700) b!508704))

(assert (= (and b!508704 res!309701) b!508698))

(assert (= (and b!508698 res!309695) b!508706))

(assert (= (and b!508706 res!309698) b!508700))

(assert (= (and b!508700 res!309699) b!508699))

(assert (= (and b!508699 res!309697) b!508703))

(assert (= (and b!508703 res!309696) b!508701))

(assert (= (and b!508701 res!309693) b!508702))

(assert (= (and b!508702 res!309694) b!508705))

(declare-fun m!489469 () Bool)

(assert (=> b!508701 m!489469))

(declare-fun m!489471 () Bool)

(assert (=> b!508706 m!489471))

(declare-fun m!489473 () Bool)

(assert (=> b!508698 m!489473))

(assert (=> b!508698 m!489473))

(declare-fun m!489475 () Bool)

(assert (=> b!508698 m!489475))

(declare-fun m!489477 () Bool)

(assert (=> start!45980 m!489477))

(declare-fun m!489479 () Bool)

(assert (=> start!45980 m!489479))

(declare-fun m!489481 () Bool)

(assert (=> b!508702 m!489481))

(declare-fun m!489483 () Bool)

(assert (=> b!508702 m!489483))

(declare-fun m!489485 () Bool)

(assert (=> b!508703 m!489485))

(assert (=> b!508705 m!489473))

(assert (=> b!508705 m!489473))

(declare-fun m!489487 () Bool)

(assert (=> b!508705 m!489487))

(declare-fun m!489489 () Bool)

(assert (=> b!508699 m!489489))

(declare-fun m!489491 () Bool)

(assert (=> b!508700 m!489491))

(push 1)

(assert (not b!508698))

