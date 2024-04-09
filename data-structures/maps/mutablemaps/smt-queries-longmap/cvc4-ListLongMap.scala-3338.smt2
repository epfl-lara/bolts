; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46034 () Bool)

(assert start!46034)

(declare-fun b!509427 () Bool)

(declare-fun res!310423 () Bool)

(declare-fun e!297896 () Bool)

(assert (=> b!509427 (=> (not res!310423) (not e!297896))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509427 (= res!310423 (validKeyInArray!0 k!2280))))

(declare-fun b!509428 () Bool)

(declare-fun e!297897 () Bool)

(assert (=> b!509428 (= e!297896 e!297897)))

(declare-fun res!310424 () Bool)

(assert (=> b!509428 (=> (not res!310424) (not e!297897))))

(declare-datatypes ((SeekEntryResult!4202 0))(
  ( (MissingZero!4202 (index!18996 (_ BitVec 32))) (Found!4202 (index!18997 (_ BitVec 32))) (Intermediate!4202 (undefined!5014 Bool) (index!18998 (_ BitVec 32)) (x!47990 (_ BitVec 32))) (Undefined!4202) (MissingVacant!4202 (index!18999 (_ BitVec 32))) )
))
(declare-fun lt!232800 () SeekEntryResult!4202)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509428 (= res!310424 (or (= lt!232800 (MissingZero!4202 i!1204)) (= lt!232800 (MissingVacant!4202 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32705 0))(
  ( (array!32706 (arr!15728 (Array (_ BitVec 32) (_ BitVec 64))) (size!16092 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32705)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32705 (_ BitVec 32)) SeekEntryResult!4202)

(assert (=> b!509428 (= lt!232800 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509429 () Bool)

(declare-fun res!310426 () Bool)

(assert (=> b!509429 (=> (not res!310426) (not e!297897))))

(declare-datatypes ((List!9939 0))(
  ( (Nil!9936) (Cons!9935 (h!10812 (_ BitVec 64)) (t!16175 List!9939)) )
))
(declare-fun arrayNoDuplicates!0 (array!32705 (_ BitVec 32) List!9939) Bool)

(assert (=> b!509429 (= res!310426 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9936))))

(declare-fun b!509430 () Bool)

(assert (=> b!509430 (= e!297897 (not true))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!232804 () SeekEntryResult!4202)

(declare-fun lt!232801 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32705 (_ BitVec 32)) SeekEntryResult!4202)

(assert (=> b!509430 (= lt!232804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232801 (select (store (arr!15728 a!3235) i!1204 k!2280) j!176) (array!32706 (store (arr!15728 a!3235) i!1204 k!2280) (size!16092 a!3235)) mask!3524))))

(declare-fun lt!232802 () SeekEntryResult!4202)

(declare-fun lt!232803 () (_ BitVec 32))

(assert (=> b!509430 (= lt!232802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232803 (select (arr!15728 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509430 (= lt!232801 (toIndex!0 (select (store (arr!15728 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509430 (= lt!232803 (toIndex!0 (select (arr!15728 a!3235) j!176) mask!3524))))

(declare-fun e!297895 () Bool)

(assert (=> b!509430 e!297895))

(declare-fun res!310430 () Bool)

(assert (=> b!509430 (=> (not res!310430) (not e!297895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32705 (_ BitVec 32)) Bool)

(assert (=> b!509430 (= res!310430 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15654 0))(
  ( (Unit!15655) )
))
(declare-fun lt!232805 () Unit!15654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32705 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15654)

(assert (=> b!509430 (= lt!232805 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509431 () Bool)

(declare-fun res!310429 () Bool)

(assert (=> b!509431 (=> (not res!310429) (not e!297896))))

(assert (=> b!509431 (= res!310429 (and (= (size!16092 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16092 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16092 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509432 () Bool)

(assert (=> b!509432 (= e!297895 (= (seekEntryOrOpen!0 (select (arr!15728 a!3235) j!176) a!3235 mask!3524) (Found!4202 j!176)))))

(declare-fun b!509433 () Bool)

(declare-fun res!310422 () Bool)

(assert (=> b!509433 (=> (not res!310422) (not e!297897))))

(assert (=> b!509433 (= res!310422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!310428 () Bool)

(assert (=> start!46034 (=> (not res!310428) (not e!297896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46034 (= res!310428 (validMask!0 mask!3524))))

(assert (=> start!46034 e!297896))

(assert (=> start!46034 true))

(declare-fun array_inv!11502 (array!32705) Bool)

(assert (=> start!46034 (array_inv!11502 a!3235)))

(declare-fun b!509434 () Bool)

(declare-fun res!310425 () Bool)

(assert (=> b!509434 (=> (not res!310425) (not e!297896))))

(declare-fun arrayContainsKey!0 (array!32705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509434 (= res!310425 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509435 () Bool)

(declare-fun res!310427 () Bool)

(assert (=> b!509435 (=> (not res!310427) (not e!297896))))

(assert (=> b!509435 (= res!310427 (validKeyInArray!0 (select (arr!15728 a!3235) j!176)))))

(assert (= (and start!46034 res!310428) b!509431))

(assert (= (and b!509431 res!310429) b!509435))

(assert (= (and b!509435 res!310427) b!509427))

(assert (= (and b!509427 res!310423) b!509434))

(assert (= (and b!509434 res!310425) b!509428))

(assert (= (and b!509428 res!310424) b!509433))

(assert (= (and b!509433 res!310422) b!509429))

(assert (= (and b!509429 res!310426) b!509430))

(assert (= (and b!509430 res!310430) b!509432))

(declare-fun m!490411 () Bool)

(assert (=> b!509427 m!490411))

(declare-fun m!490413 () Bool)

(assert (=> b!509429 m!490413))

(declare-fun m!490415 () Bool)

(assert (=> start!46034 m!490415))

(declare-fun m!490417 () Bool)

(assert (=> start!46034 m!490417))

(declare-fun m!490419 () Bool)

(assert (=> b!509428 m!490419))

(declare-fun m!490421 () Bool)

(assert (=> b!509430 m!490421))

(declare-fun m!490423 () Bool)

(assert (=> b!509430 m!490423))

(declare-fun m!490425 () Bool)

(assert (=> b!509430 m!490425))

(declare-fun m!490427 () Bool)

(assert (=> b!509430 m!490427))

(assert (=> b!509430 m!490421))

(declare-fun m!490429 () Bool)

(assert (=> b!509430 m!490429))

(assert (=> b!509430 m!490421))

(declare-fun m!490431 () Bool)

(assert (=> b!509430 m!490431))

(assert (=> b!509430 m!490427))

(declare-fun m!490433 () Bool)

(assert (=> b!509430 m!490433))

(assert (=> b!509430 m!490427))

(declare-fun m!490435 () Bool)

(assert (=> b!509430 m!490435))

(declare-fun m!490437 () Bool)

(assert (=> b!509430 m!490437))

(declare-fun m!490439 () Bool)

(assert (=> b!509433 m!490439))

(declare-fun m!490441 () Bool)

(assert (=> b!509434 m!490441))

(assert (=> b!509435 m!490421))

(assert (=> b!509435 m!490421))

(declare-fun m!490443 () Bool)

(assert (=> b!509435 m!490443))

(assert (=> b!509432 m!490421))

(assert (=> b!509432 m!490421))

(declare-fun m!490445 () Bool)

(assert (=> b!509432 m!490445))

(push 1)

