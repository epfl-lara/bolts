; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46256 () Bool)

(assert start!46256)

(declare-fun res!312804 () Bool)

(declare-fun e!299053 () Bool)

(assert (=> start!46256 (=> (not res!312804) (not e!299053))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46256 (= res!312804 (validMask!0 mask!3524))))

(assert (=> start!46256 e!299053))

(assert (=> start!46256 true))

(declare-datatypes ((array!32870 0))(
  ( (array!32871 (arr!15809 (Array (_ BitVec 32) (_ BitVec 64))) (size!16173 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32870)

(declare-fun array_inv!11583 (array!32870) Bool)

(assert (=> start!46256 (array_inv!11583 a!3235)))

(declare-fun b!511985 () Bool)

(declare-fun res!312798 () Bool)

(declare-fun e!299056 () Bool)

(assert (=> b!511985 (=> (not res!312798) (not e!299056))))

(declare-datatypes ((List!10020 0))(
  ( (Nil!10017) (Cons!10016 (h!10896 (_ BitVec 64)) (t!16256 List!10020)) )
))
(declare-fun arrayNoDuplicates!0 (array!32870 (_ BitVec 32) List!10020) Bool)

(assert (=> b!511985 (= res!312798 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10017))))

(declare-fun b!511986 () Bool)

(declare-fun res!312800 () Bool)

(declare-fun e!299055 () Bool)

(assert (=> b!511986 (=> res!312800 e!299055)))

(declare-datatypes ((SeekEntryResult!4283 0))(
  ( (MissingZero!4283 (index!19320 (_ BitVec 32))) (Found!4283 (index!19321 (_ BitVec 32))) (Intermediate!4283 (undefined!5095 Bool) (index!19322 (_ BitVec 32)) (x!48293 (_ BitVec 32))) (Undefined!4283) (MissingVacant!4283 (index!19323 (_ BitVec 32))) )
))
(declare-fun lt!234389 () SeekEntryResult!4283)

(assert (=> b!511986 (= res!312800 (or (not (is-Intermediate!4283 lt!234389)) (not (undefined!5095 lt!234389))))))

(declare-fun b!511987 () Bool)

(declare-fun res!312803 () Bool)

(assert (=> b!511987 (=> (not res!312803) (not e!299053))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511987 (= res!312803 (and (= (size!16173 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16173 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16173 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511988 () Bool)

(assert (=> b!511988 (= e!299055 true)))

(declare-fun lt!234388 () SeekEntryResult!4283)

(assert (=> b!511988 (= lt!234388 Undefined!4283)))

(declare-fun b!511989 () Bool)

(declare-fun res!312799 () Bool)

(assert (=> b!511989 (=> (not res!312799) (not e!299056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32870 (_ BitVec 32)) Bool)

(assert (=> b!511989 (= res!312799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511990 () Bool)

(assert (=> b!511990 (= e!299053 e!299056)))

(declare-fun res!312797 () Bool)

(assert (=> b!511990 (=> (not res!312797) (not e!299056))))

(declare-fun lt!234390 () SeekEntryResult!4283)

(assert (=> b!511990 (= res!312797 (or (= lt!234390 (MissingZero!4283 i!1204)) (= lt!234390 (MissingVacant!4283 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32870 (_ BitVec 32)) SeekEntryResult!4283)

(assert (=> b!511990 (= lt!234390 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511991 () Bool)

(declare-fun res!312802 () Bool)

(assert (=> b!511991 (=> (not res!312802) (not e!299053))))

(declare-fun arrayContainsKey!0 (array!32870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511991 (= res!312802 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511992 () Bool)

(assert (=> b!511992 (= e!299056 (not e!299055))))

(declare-fun res!312801 () Bool)

(assert (=> b!511992 (=> res!312801 e!299055)))

(declare-fun lt!234391 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32870 (_ BitVec 32)) SeekEntryResult!4283)

(assert (=> b!511992 (= res!312801 (= lt!234389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234391 (select (store (arr!15809 a!3235) i!1204 k!2280) j!176) (array!32871 (store (arr!15809 a!3235) i!1204 k!2280) (size!16173 a!3235)) mask!3524)))))

(declare-fun lt!234392 () (_ BitVec 32))

(assert (=> b!511992 (= lt!234389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234392 (select (arr!15809 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511992 (= lt!234391 (toIndex!0 (select (store (arr!15809 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511992 (= lt!234392 (toIndex!0 (select (arr!15809 a!3235) j!176) mask!3524))))

(assert (=> b!511992 (= lt!234388 (Found!4283 j!176))))

(assert (=> b!511992 (= lt!234388 (seekEntryOrOpen!0 (select (arr!15809 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511992 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15816 0))(
  ( (Unit!15817) )
))
(declare-fun lt!234387 () Unit!15816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32870 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15816)

(assert (=> b!511992 (= lt!234387 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511993 () Bool)

(declare-fun res!312805 () Bool)

(assert (=> b!511993 (=> (not res!312805) (not e!299053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511993 (= res!312805 (validKeyInArray!0 (select (arr!15809 a!3235) j!176)))))

(declare-fun b!511994 () Bool)

(declare-fun res!312806 () Bool)

(assert (=> b!511994 (=> (not res!312806) (not e!299053))))

(assert (=> b!511994 (= res!312806 (validKeyInArray!0 k!2280))))

(assert (= (and start!46256 res!312804) b!511987))

(assert (= (and b!511987 res!312803) b!511993))

(assert (= (and b!511993 res!312805) b!511994))

(assert (= (and b!511994 res!312806) b!511991))

(assert (= (and b!511991 res!312802) b!511990))

(assert (= (and b!511990 res!312797) b!511989))

(assert (= (and b!511989 res!312799) b!511985))

(assert (= (and b!511985 res!312798) b!511992))

(assert (= (and b!511992 (not res!312801)) b!511986))

(assert (= (and b!511986 (not res!312800)) b!511988))

(declare-fun m!493627 () Bool)

(assert (=> b!511985 m!493627))

(declare-fun m!493629 () Bool)

(assert (=> b!511992 m!493629))

(declare-fun m!493631 () Bool)

(assert (=> b!511992 m!493631))

(declare-fun m!493633 () Bool)

(assert (=> b!511992 m!493633))

(assert (=> b!511992 m!493633))

(declare-fun m!493635 () Bool)

(assert (=> b!511992 m!493635))

(declare-fun m!493637 () Bool)

(assert (=> b!511992 m!493637))

(declare-fun m!493639 () Bool)

(assert (=> b!511992 m!493639))

(assert (=> b!511992 m!493637))

(assert (=> b!511992 m!493637))

(declare-fun m!493641 () Bool)

(assert (=> b!511992 m!493641))

(assert (=> b!511992 m!493633))

(declare-fun m!493643 () Bool)

(assert (=> b!511992 m!493643))

(assert (=> b!511992 m!493637))

(declare-fun m!493645 () Bool)

(assert (=> b!511992 m!493645))

(declare-fun m!493647 () Bool)

(assert (=> b!511992 m!493647))

(declare-fun m!493649 () Bool)

(assert (=> b!511990 m!493649))

(declare-fun m!493651 () Bool)

(assert (=> b!511994 m!493651))

(declare-fun m!493653 () Bool)

(assert (=> b!511989 m!493653))

(declare-fun m!493655 () Bool)

(assert (=> b!511991 m!493655))

(declare-fun m!493657 () Bool)

(assert (=> start!46256 m!493657))

(declare-fun m!493659 () Bool)

(assert (=> start!46256 m!493659))

(assert (=> b!511993 m!493637))

(assert (=> b!511993 m!493637))

(declare-fun m!493661 () Bool)

(assert (=> b!511993 m!493661))

(push 1)

