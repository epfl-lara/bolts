; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45974 () Bool)

(assert start!45974)

(declare-fun b!508617 () Bool)

(declare-fun res!309615 () Bool)

(declare-fun e!297536 () Bool)

(assert (=> b!508617 (=> (not res!309615) (not e!297536))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508617 (= res!309615 (validKeyInArray!0 k!2280))))

(declare-fun b!508618 () Bool)

(declare-fun res!309620 () Bool)

(assert (=> b!508618 (=> (not res!309620) (not e!297536))))

(declare-datatypes ((array!32645 0))(
  ( (array!32646 (arr!15698 (Array (_ BitVec 32) (_ BitVec 64))) (size!16062 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32645)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508618 (= res!309620 (validKeyInArray!0 (select (arr!15698 a!3235) j!176)))))

(declare-fun b!508619 () Bool)

(declare-fun res!309614 () Bool)

(declare-fun e!297535 () Bool)

(assert (=> b!508619 (=> (not res!309614) (not e!297535))))

(declare-datatypes ((List!9909 0))(
  ( (Nil!9906) (Cons!9905 (h!10782 (_ BitVec 64)) (t!16145 List!9909)) )
))
(declare-fun arrayNoDuplicates!0 (array!32645 (_ BitVec 32) List!9909) Bool)

(assert (=> b!508619 (= res!309614 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9906))))

(declare-fun b!508620 () Bool)

(declare-fun res!309617 () Bool)

(assert (=> b!508620 (=> (not res!309617) (not e!297536))))

(declare-fun arrayContainsKey!0 (array!32645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508620 (= res!309617 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!297538 () Bool)

(declare-fun b!508621 () Bool)

(declare-datatypes ((SeekEntryResult!4172 0))(
  ( (MissingZero!4172 (index!18876 (_ BitVec 32))) (Found!4172 (index!18877 (_ BitVec 32))) (Intermediate!4172 (undefined!4984 Bool) (index!18878 (_ BitVec 32)) (x!47880 (_ BitVec 32))) (Undefined!4172) (MissingVacant!4172 (index!18879 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32645 (_ BitVec 32)) SeekEntryResult!4172)

(assert (=> b!508621 (= e!297538 (= (seekEntryOrOpen!0 (select (arr!15698 a!3235) j!176) a!3235 mask!3524) (Found!4172 j!176)))))

(declare-fun res!309616 () Bool)

(assert (=> start!45974 (=> (not res!309616) (not e!297536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45974 (= res!309616 (validMask!0 mask!3524))))

(assert (=> start!45974 e!297536))

(assert (=> start!45974 true))

(declare-fun array_inv!11472 (array!32645) Bool)

(assert (=> start!45974 (array_inv!11472 a!3235)))

(declare-fun b!508622 () Bool)

(declare-fun res!309619 () Bool)

(assert (=> b!508622 (=> (not res!309619) (not e!297536))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508622 (= res!309619 (and (= (size!16062 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16062 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16062 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508623 () Bool)

(assert (=> b!508623 (= e!297535 (not true))))

(declare-fun lt!232327 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508623 (= lt!232327 (toIndex!0 (select (arr!15698 a!3235) j!176) mask!3524))))

(assert (=> b!508623 e!297538))

(declare-fun res!309618 () Bool)

(assert (=> b!508623 (=> (not res!309618) (not e!297538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32645 (_ BitVec 32)) Bool)

(assert (=> b!508623 (= res!309618 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15594 0))(
  ( (Unit!15595) )
))
(declare-fun lt!232326 () Unit!15594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15594)

(assert (=> b!508623 (= lt!232326 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508624 () Bool)

(assert (=> b!508624 (= e!297536 e!297535)))

(declare-fun res!309612 () Bool)

(assert (=> b!508624 (=> (not res!309612) (not e!297535))))

(declare-fun lt!232328 () SeekEntryResult!4172)

(assert (=> b!508624 (= res!309612 (or (= lt!232328 (MissingZero!4172 i!1204)) (= lt!232328 (MissingVacant!4172 i!1204))))))

(assert (=> b!508624 (= lt!232328 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508625 () Bool)

(declare-fun res!309613 () Bool)

(assert (=> b!508625 (=> (not res!309613) (not e!297535))))

(assert (=> b!508625 (= res!309613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45974 res!309616) b!508622))

(assert (= (and b!508622 res!309619) b!508618))

(assert (= (and b!508618 res!309620) b!508617))

(assert (= (and b!508617 res!309615) b!508620))

(assert (= (and b!508620 res!309617) b!508624))

(assert (= (and b!508624 res!309612) b!508625))

(assert (= (and b!508625 res!309613) b!508619))

(assert (= (and b!508619 res!309614) b!508623))

(assert (= (and b!508623 res!309618) b!508621))

(declare-fun m!489395 () Bool)

(assert (=> b!508617 m!489395))

(declare-fun m!489397 () Bool)

(assert (=> b!508625 m!489397))

(declare-fun m!489399 () Bool)

(assert (=> b!508619 m!489399))

(declare-fun m!489401 () Bool)

(assert (=> b!508624 m!489401))

(declare-fun m!489403 () Bool)

(assert (=> b!508620 m!489403))

(declare-fun m!489405 () Bool)

(assert (=> b!508621 m!489405))

(assert (=> b!508621 m!489405))

(declare-fun m!489407 () Bool)

(assert (=> b!508621 m!489407))

(assert (=> b!508618 m!489405))

(assert (=> b!508618 m!489405))

(declare-fun m!489409 () Bool)

(assert (=> b!508618 m!489409))

(declare-fun m!489411 () Bool)

(assert (=> start!45974 m!489411))

(declare-fun m!489413 () Bool)

(assert (=> start!45974 m!489413))

(assert (=> b!508623 m!489405))

(assert (=> b!508623 m!489405))

(declare-fun m!489415 () Bool)

(assert (=> b!508623 m!489415))

(declare-fun m!489417 () Bool)

(assert (=> b!508623 m!489417))

(declare-fun m!489419 () Bool)

(assert (=> b!508623 m!489419))

(push 1)

(assert (not b!508617))

(assert (not b!508624))

