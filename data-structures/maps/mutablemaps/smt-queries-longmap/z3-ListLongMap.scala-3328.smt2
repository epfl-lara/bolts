; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45972 () Bool)

(assert start!45972)

(declare-fun b!508590 () Bool)

(declare-fun e!297526 () Bool)

(declare-fun e!297523 () Bool)

(assert (=> b!508590 (= e!297526 e!297523)))

(declare-fun res!309593 () Bool)

(assert (=> b!508590 (=> (not res!309593) (not e!297523))))

(declare-datatypes ((SeekEntryResult!4171 0))(
  ( (MissingZero!4171 (index!18872 (_ BitVec 32))) (Found!4171 (index!18873 (_ BitVec 32))) (Intermediate!4171 (undefined!4983 Bool) (index!18874 (_ BitVec 32)) (x!47879 (_ BitVec 32))) (Undefined!4171) (MissingVacant!4171 (index!18875 (_ BitVec 32))) )
))
(declare-fun lt!232318 () SeekEntryResult!4171)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508590 (= res!309593 (or (= lt!232318 (MissingZero!4171 i!1204)) (= lt!232318 (MissingVacant!4171 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32643 0))(
  ( (array!32644 (arr!15697 (Array (_ BitVec 32) (_ BitVec 64))) (size!16061 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32643)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32643 (_ BitVec 32)) SeekEntryResult!4171)

(assert (=> b!508590 (= lt!232318 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!297524 () Bool)

(declare-fun b!508591 () Bool)

(assert (=> b!508591 (= e!297524 (= (seekEntryOrOpen!0 (select (arr!15697 a!3235) j!176) a!3235 mask!3524) (Found!4171 j!176)))))

(declare-fun b!508592 () Bool)

(declare-fun res!309585 () Bool)

(assert (=> b!508592 (=> (not res!309585) (not e!297526))))

(assert (=> b!508592 (= res!309585 (and (= (size!16061 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16061 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16061 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508593 () Bool)

(declare-fun res!309589 () Bool)

(assert (=> b!508593 (=> (not res!309589) (not e!297526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508593 (= res!309589 (validKeyInArray!0 (select (arr!15697 a!3235) j!176)))))

(declare-fun res!309588 () Bool)

(assert (=> start!45972 (=> (not res!309588) (not e!297526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45972 (= res!309588 (validMask!0 mask!3524))))

(assert (=> start!45972 e!297526))

(assert (=> start!45972 true))

(declare-fun array_inv!11471 (array!32643) Bool)

(assert (=> start!45972 (array_inv!11471 a!3235)))

(declare-fun b!508594 () Bool)

(declare-fun res!309592 () Bool)

(assert (=> b!508594 (=> (not res!309592) (not e!297526))))

(declare-fun arrayContainsKey!0 (array!32643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508594 (= res!309592 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508595 () Bool)

(declare-fun res!309590 () Bool)

(assert (=> b!508595 (=> (not res!309590) (not e!297526))))

(assert (=> b!508595 (= res!309590 (validKeyInArray!0 k0!2280))))

(declare-fun b!508596 () Bool)

(declare-fun res!309587 () Bool)

(assert (=> b!508596 (=> (not res!309587) (not e!297523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32643 (_ BitVec 32)) Bool)

(assert (=> b!508596 (= res!309587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508597 () Bool)

(declare-fun res!309586 () Bool)

(assert (=> b!508597 (=> (not res!309586) (not e!297523))))

(declare-datatypes ((List!9908 0))(
  ( (Nil!9905) (Cons!9904 (h!10781 (_ BitVec 64)) (t!16144 List!9908)) )
))
(declare-fun arrayNoDuplicates!0 (array!32643 (_ BitVec 32) List!9908) Bool)

(assert (=> b!508597 (= res!309586 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9905))))

(declare-fun b!508598 () Bool)

(assert (=> b!508598 (= e!297523 (not true))))

(declare-fun lt!232319 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508598 (= lt!232319 (toIndex!0 (select (arr!15697 a!3235) j!176) mask!3524))))

(assert (=> b!508598 e!297524))

(declare-fun res!309591 () Bool)

(assert (=> b!508598 (=> (not res!309591) (not e!297524))))

(assert (=> b!508598 (= res!309591 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15592 0))(
  ( (Unit!15593) )
))
(declare-fun lt!232317 () Unit!15592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15592)

(assert (=> b!508598 (= lt!232317 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45972 res!309588) b!508592))

(assert (= (and b!508592 res!309585) b!508593))

(assert (= (and b!508593 res!309589) b!508595))

(assert (= (and b!508595 res!309590) b!508594))

(assert (= (and b!508594 res!309592) b!508590))

(assert (= (and b!508590 res!309593) b!508596))

(assert (= (and b!508596 res!309587) b!508597))

(assert (= (and b!508597 res!309586) b!508598))

(assert (= (and b!508598 res!309591) b!508591))

(declare-fun m!489369 () Bool)

(assert (=> b!508595 m!489369))

(declare-fun m!489371 () Bool)

(assert (=> b!508594 m!489371))

(declare-fun m!489373 () Bool)

(assert (=> b!508598 m!489373))

(assert (=> b!508598 m!489373))

(declare-fun m!489375 () Bool)

(assert (=> b!508598 m!489375))

(declare-fun m!489377 () Bool)

(assert (=> b!508598 m!489377))

(declare-fun m!489379 () Bool)

(assert (=> b!508598 m!489379))

(declare-fun m!489381 () Bool)

(assert (=> b!508590 m!489381))

(assert (=> b!508593 m!489373))

(assert (=> b!508593 m!489373))

(declare-fun m!489383 () Bool)

(assert (=> b!508593 m!489383))

(declare-fun m!489385 () Bool)

(assert (=> start!45972 m!489385))

(declare-fun m!489387 () Bool)

(assert (=> start!45972 m!489387))

(declare-fun m!489389 () Bool)

(assert (=> b!508596 m!489389))

(declare-fun m!489391 () Bool)

(assert (=> b!508597 m!489391))

(assert (=> b!508591 m!489373))

(assert (=> b!508591 m!489373))

(declare-fun m!489393 () Bool)

(assert (=> b!508591 m!489393))

(check-sat (not b!508593) (not b!508597) (not b!508596) (not b!508598) (not b!508595) (not start!45972) (not b!508590) (not b!508591) (not b!508594))
(check-sat)
