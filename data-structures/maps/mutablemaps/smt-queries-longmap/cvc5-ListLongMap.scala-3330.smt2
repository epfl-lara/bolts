; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45982 () Bool)

(assert start!45982)

(declare-fun b!508725 () Bool)

(declare-fun res!309721 () Bool)

(declare-fun e!297586 () Bool)

(assert (=> b!508725 (=> (not res!309721) (not e!297586))))

(declare-datatypes ((array!32653 0))(
  ( (array!32654 (arr!15702 (Array (_ BitVec 32) (_ BitVec 64))) (size!16066 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32653)

(declare-datatypes ((List!9913 0))(
  ( (Nil!9910) (Cons!9909 (h!10786 (_ BitVec 64)) (t!16149 List!9913)) )
))
(declare-fun arrayNoDuplicates!0 (array!32653 (_ BitVec 32) List!9913) Bool)

(assert (=> b!508725 (= res!309721 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9910))))

(declare-fun b!508726 () Bool)

(declare-fun e!297583 () Bool)

(assert (=> b!508726 (= e!297583 e!297586)))

(declare-fun res!309724 () Bool)

(assert (=> b!508726 (=> (not res!309724) (not e!297586))))

(declare-datatypes ((SeekEntryResult!4176 0))(
  ( (MissingZero!4176 (index!18892 (_ BitVec 32))) (Found!4176 (index!18893 (_ BitVec 32))) (Intermediate!4176 (undefined!4988 Bool) (index!18894 (_ BitVec 32)) (x!47900 (_ BitVec 32))) (Undefined!4176) (MissingVacant!4176 (index!18895 (_ BitVec 32))) )
))
(declare-fun lt!232353 () SeekEntryResult!4176)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508726 (= res!309724 (or (= lt!232353 (MissingZero!4176 i!1204)) (= lt!232353 (MissingVacant!4176 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32653 (_ BitVec 32)) SeekEntryResult!4176)

(assert (=> b!508726 (= lt!232353 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508727 () Bool)

(declare-fun res!309722 () Bool)

(assert (=> b!508727 (=> (not res!309722) (not e!297586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32653 (_ BitVec 32)) Bool)

(assert (=> b!508727 (= res!309722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508728 () Bool)

(declare-fun res!309726 () Bool)

(assert (=> b!508728 (=> (not res!309726) (not e!297583))))

(declare-fun arrayContainsKey!0 (array!32653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508728 (= res!309726 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun e!297584 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!508729 () Bool)

(assert (=> b!508729 (= e!297584 (= (seekEntryOrOpen!0 (select (arr!15702 a!3235) j!176) a!3235 mask!3524) (Found!4176 j!176)))))

(declare-fun b!508730 () Bool)

(declare-fun res!309723 () Bool)

(assert (=> b!508730 (=> (not res!309723) (not e!297583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508730 (= res!309723 (validKeyInArray!0 (select (arr!15702 a!3235) j!176)))))

(declare-fun b!508731 () Bool)

(declare-fun res!309720 () Bool)

(assert (=> b!508731 (=> (not res!309720) (not e!297583))))

(assert (=> b!508731 (= res!309720 (validKeyInArray!0 k!2280))))

(declare-fun res!309728 () Bool)

(assert (=> start!45982 (=> (not res!309728) (not e!297583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45982 (= res!309728 (validMask!0 mask!3524))))

(assert (=> start!45982 e!297583))

(assert (=> start!45982 true))

(declare-fun array_inv!11476 (array!32653) Bool)

(assert (=> start!45982 (array_inv!11476 a!3235)))

(declare-fun b!508732 () Bool)

(declare-fun res!309725 () Bool)

(assert (=> b!508732 (=> (not res!309725) (not e!297583))))

(assert (=> b!508732 (= res!309725 (and (= (size!16066 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16066 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16066 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508733 () Bool)

(assert (=> b!508733 (= e!297586 (not true))))

(declare-fun lt!232354 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508733 (= lt!232354 (toIndex!0 (select (store (arr!15702 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!508733 e!297584))

(declare-fun res!309727 () Bool)

(assert (=> b!508733 (=> (not res!309727) (not e!297584))))

(assert (=> b!508733 (= res!309727 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15602 0))(
  ( (Unit!15603) )
))
(declare-fun lt!232355 () Unit!15602)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15602)

(assert (=> b!508733 (= lt!232355 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45982 res!309728) b!508732))

(assert (= (and b!508732 res!309725) b!508730))

(assert (= (and b!508730 res!309723) b!508731))

(assert (= (and b!508731 res!309720) b!508728))

(assert (= (and b!508728 res!309726) b!508726))

(assert (= (and b!508726 res!309724) b!508727))

(assert (= (and b!508727 res!309722) b!508725))

(assert (= (and b!508725 res!309721) b!508733))

(assert (= (and b!508733 res!309727) b!508729))

(declare-fun m!489493 () Bool)

(assert (=> b!508733 m!489493))

(declare-fun m!489495 () Bool)

(assert (=> b!508733 m!489495))

(declare-fun m!489497 () Bool)

(assert (=> b!508733 m!489497))

(declare-fun m!489499 () Bool)

(assert (=> b!508733 m!489499))

(assert (=> b!508733 m!489497))

(declare-fun m!489501 () Bool)

(assert (=> b!508733 m!489501))

(declare-fun m!489503 () Bool)

(assert (=> start!45982 m!489503))

(declare-fun m!489505 () Bool)

(assert (=> start!45982 m!489505))

(declare-fun m!489507 () Bool)

(assert (=> b!508728 m!489507))

(declare-fun m!489509 () Bool)

(assert (=> b!508727 m!489509))

(declare-fun m!489511 () Bool)

(assert (=> b!508730 m!489511))

(assert (=> b!508730 m!489511))

(declare-fun m!489513 () Bool)

(assert (=> b!508730 m!489513))

(declare-fun m!489515 () Bool)

(assert (=> b!508725 m!489515))

(declare-fun m!489517 () Bool)

(assert (=> b!508731 m!489517))

(declare-fun m!489519 () Bool)

(assert (=> b!508726 m!489519))

(assert (=> b!508729 m!489511))

(assert (=> b!508729 m!489511))

(declare-fun m!489521 () Bool)

(assert (=> b!508729 m!489521))

(push 1)

