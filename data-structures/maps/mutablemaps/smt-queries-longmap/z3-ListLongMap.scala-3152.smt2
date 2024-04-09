; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44394 () Bool)

(assert start!44394)

(declare-fun b!487629 () Bool)

(declare-fun res!291053 () Bool)

(declare-fun e!286897 () Bool)

(assert (=> b!487629 (=> (not res!291053) (not e!286897))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487629 (= res!291053 (validKeyInArray!0 k0!2280))))

(declare-fun b!487630 () Bool)

(declare-fun res!291058 () Bool)

(declare-fun e!286898 () Bool)

(assert (=> b!487630 (=> (not res!291058) (not e!286898))))

(declare-datatypes ((array!31560 0))(
  ( (array!31561 (arr!15169 (Array (_ BitVec 32) (_ BitVec 64))) (size!15533 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31560)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31560 (_ BitVec 32)) Bool)

(assert (=> b!487630 (= res!291058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487631 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!286899 () Bool)

(declare-datatypes ((SeekEntryResult!3643 0))(
  ( (MissingZero!3643 (index!16751 (_ BitVec 32))) (Found!3643 (index!16752 (_ BitVec 32))) (Intermediate!3643 (undefined!4455 Bool) (index!16753 (_ BitVec 32)) (x!45898 (_ BitVec 32))) (Undefined!3643) (MissingVacant!3643 (index!16754 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31560 (_ BitVec 32)) SeekEntryResult!3643)

(assert (=> b!487631 (= e!286899 (= (seekEntryOrOpen!0 (select (arr!15169 a!3235) j!176) a!3235 mask!3524) (Found!3643 j!176)))))

(declare-fun res!291059 () Bool)

(assert (=> start!44394 (=> (not res!291059) (not e!286897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44394 (= res!291059 (validMask!0 mask!3524))))

(assert (=> start!44394 e!286897))

(assert (=> start!44394 true))

(declare-fun array_inv!10943 (array!31560) Bool)

(assert (=> start!44394 (array_inv!10943 a!3235)))

(declare-fun b!487632 () Bool)

(declare-fun res!291051 () Bool)

(assert (=> b!487632 (=> (not res!291051) (not e!286898))))

(declare-datatypes ((List!9380 0))(
  ( (Nil!9377) (Cons!9376 (h!10232 (_ BitVec 64)) (t!15616 List!9380)) )
))
(declare-fun arrayNoDuplicates!0 (array!31560 (_ BitVec 32) List!9380) Bool)

(assert (=> b!487632 (= res!291051 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9377))))

(declare-fun b!487633 () Bool)

(assert (=> b!487633 (= e!286898 (not true))))

(declare-fun lt!220132 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487633 (= lt!220132 (toIndex!0 (select (arr!15169 a!3235) j!176) mask!3524))))

(assert (=> b!487633 e!286899))

(declare-fun res!291055 () Bool)

(assert (=> b!487633 (=> (not res!291055) (not e!286899))))

(assert (=> b!487633 (= res!291055 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14224 0))(
  ( (Unit!14225) )
))
(declare-fun lt!220133 () Unit!14224)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14224)

(assert (=> b!487633 (= lt!220133 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487634 () Bool)

(assert (=> b!487634 (= e!286897 e!286898)))

(declare-fun res!291057 () Bool)

(assert (=> b!487634 (=> (not res!291057) (not e!286898))))

(declare-fun lt!220131 () SeekEntryResult!3643)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487634 (= res!291057 (or (= lt!220131 (MissingZero!3643 i!1204)) (= lt!220131 (MissingVacant!3643 i!1204))))))

(assert (=> b!487634 (= lt!220131 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!487635 () Bool)

(declare-fun res!291054 () Bool)

(assert (=> b!487635 (=> (not res!291054) (not e!286897))))

(assert (=> b!487635 (= res!291054 (validKeyInArray!0 (select (arr!15169 a!3235) j!176)))))

(declare-fun b!487636 () Bool)

(declare-fun res!291056 () Bool)

(assert (=> b!487636 (=> (not res!291056) (not e!286897))))

(assert (=> b!487636 (= res!291056 (and (= (size!15533 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15533 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15533 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487637 () Bool)

(declare-fun res!291052 () Bool)

(assert (=> b!487637 (=> (not res!291052) (not e!286897))))

(declare-fun arrayContainsKey!0 (array!31560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487637 (= res!291052 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44394 res!291059) b!487636))

(assert (= (and b!487636 res!291056) b!487635))

(assert (= (and b!487635 res!291054) b!487629))

(assert (= (and b!487629 res!291053) b!487637))

(assert (= (and b!487637 res!291052) b!487634))

(assert (= (and b!487634 res!291057) b!487630))

(assert (= (and b!487630 res!291058) b!487632))

(assert (= (and b!487632 res!291051) b!487633))

(assert (= (and b!487633 res!291055) b!487631))

(declare-fun m!467451 () Bool)

(assert (=> b!487637 m!467451))

(declare-fun m!467453 () Bool)

(assert (=> b!487634 m!467453))

(declare-fun m!467455 () Bool)

(assert (=> b!487633 m!467455))

(assert (=> b!487633 m!467455))

(declare-fun m!467457 () Bool)

(assert (=> b!487633 m!467457))

(declare-fun m!467459 () Bool)

(assert (=> b!487633 m!467459))

(declare-fun m!467461 () Bool)

(assert (=> b!487633 m!467461))

(declare-fun m!467463 () Bool)

(assert (=> b!487632 m!467463))

(assert (=> b!487631 m!467455))

(assert (=> b!487631 m!467455))

(declare-fun m!467465 () Bool)

(assert (=> b!487631 m!467465))

(assert (=> b!487635 m!467455))

(assert (=> b!487635 m!467455))

(declare-fun m!467467 () Bool)

(assert (=> b!487635 m!467467))

(declare-fun m!467469 () Bool)

(assert (=> b!487630 m!467469))

(declare-fun m!467471 () Bool)

(assert (=> start!44394 m!467471))

(declare-fun m!467473 () Bool)

(assert (=> start!44394 m!467473))

(declare-fun m!467475 () Bool)

(assert (=> b!487629 m!467475))

(check-sat (not b!487631) (not start!44394) (not b!487633) (not b!487634) (not b!487635) (not b!487629) (not b!487632) (not b!487637) (not b!487630))
(check-sat)
