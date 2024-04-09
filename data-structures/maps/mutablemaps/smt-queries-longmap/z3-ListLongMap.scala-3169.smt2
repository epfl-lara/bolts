; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44652 () Bool)

(assert start!44652)

(declare-fun b!489564 () Bool)

(declare-fun e!287896 () Bool)

(assert (=> b!489564 (= e!287896 (not true))))

(declare-datatypes ((SeekEntryResult!3694 0))(
  ( (MissingZero!3694 (index!16955 (_ BitVec 32))) (Found!3694 (index!16956 (_ BitVec 32))) (Intermediate!3694 (undefined!4506 Bool) (index!16957 (_ BitVec 32)) (x!46091 (_ BitVec 32))) (Undefined!3694) (MissingVacant!3694 (index!16958 (_ BitVec 32))) )
))
(declare-fun lt!221004 () SeekEntryResult!3694)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31671 0))(
  ( (array!31672 (arr!15220 (Array (_ BitVec 32) (_ BitVec 64))) (size!15584 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31671)

(declare-fun lt!221001 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31671 (_ BitVec 32)) SeekEntryResult!3694)

(assert (=> b!489564 (= lt!221004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221001 (select (store (arr!15220 a!3235) i!1204 k0!2280) j!176) (array!31672 (store (arr!15220 a!3235) i!1204 k0!2280) (size!15584 a!3235)) mask!3524))))

(declare-fun lt!221002 () (_ BitVec 32))

(declare-fun lt!221005 () SeekEntryResult!3694)

(assert (=> b!489564 (= lt!221005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221002 (select (arr!15220 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489564 (= lt!221001 (toIndex!0 (select (store (arr!15220 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489564 (= lt!221002 (toIndex!0 (select (arr!15220 a!3235) j!176) mask!3524))))

(declare-fun e!287899 () Bool)

(assert (=> b!489564 e!287899))

(declare-fun res!292651 () Bool)

(assert (=> b!489564 (=> (not res!292651) (not e!287899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31671 (_ BitVec 32)) Bool)

(assert (=> b!489564 (= res!292651 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14326 0))(
  ( (Unit!14327) )
))
(declare-fun lt!221003 () Unit!14326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31671 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14326)

(assert (=> b!489564 (= lt!221003 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489565 () Bool)

(declare-fun res!292654 () Bool)

(declare-fun e!287897 () Bool)

(assert (=> b!489565 (=> (not res!292654) (not e!287897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489565 (= res!292654 (validKeyInArray!0 (select (arr!15220 a!3235) j!176)))))

(declare-fun b!489566 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31671 (_ BitVec 32)) SeekEntryResult!3694)

(assert (=> b!489566 (= e!287899 (= (seekEntryOrOpen!0 (select (arr!15220 a!3235) j!176) a!3235 mask!3524) (Found!3694 j!176)))))

(declare-fun b!489567 () Bool)

(declare-fun res!292653 () Bool)

(assert (=> b!489567 (=> (not res!292653) (not e!287897))))

(declare-fun arrayContainsKey!0 (array!31671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489567 (= res!292653 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489568 () Bool)

(assert (=> b!489568 (= e!287897 e!287896)))

(declare-fun res!292650 () Bool)

(assert (=> b!489568 (=> (not res!292650) (not e!287896))))

(declare-fun lt!221006 () SeekEntryResult!3694)

(assert (=> b!489568 (= res!292650 (or (= lt!221006 (MissingZero!3694 i!1204)) (= lt!221006 (MissingVacant!3694 i!1204))))))

(assert (=> b!489568 (= lt!221006 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489569 () Bool)

(declare-fun res!292657 () Bool)

(assert (=> b!489569 (=> (not res!292657) (not e!287896))))

(declare-datatypes ((List!9431 0))(
  ( (Nil!9428) (Cons!9427 (h!10289 (_ BitVec 64)) (t!15667 List!9431)) )
))
(declare-fun arrayNoDuplicates!0 (array!31671 (_ BitVec 32) List!9431) Bool)

(assert (=> b!489569 (= res!292657 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9428))))

(declare-fun b!489570 () Bool)

(declare-fun res!292658 () Bool)

(assert (=> b!489570 (=> (not res!292658) (not e!287897))))

(assert (=> b!489570 (= res!292658 (and (= (size!15584 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15584 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15584 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489571 () Bool)

(declare-fun res!292652 () Bool)

(assert (=> b!489571 (=> (not res!292652) (not e!287897))))

(assert (=> b!489571 (= res!292652 (validKeyInArray!0 k0!2280))))

(declare-fun b!489572 () Bool)

(declare-fun res!292656 () Bool)

(assert (=> b!489572 (=> (not res!292656) (not e!287896))))

(assert (=> b!489572 (= res!292656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!292655 () Bool)

(assert (=> start!44652 (=> (not res!292655) (not e!287897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44652 (= res!292655 (validMask!0 mask!3524))))

(assert (=> start!44652 e!287897))

(assert (=> start!44652 true))

(declare-fun array_inv!10994 (array!31671) Bool)

(assert (=> start!44652 (array_inv!10994 a!3235)))

(assert (= (and start!44652 res!292655) b!489570))

(assert (= (and b!489570 res!292658) b!489565))

(assert (= (and b!489565 res!292654) b!489571))

(assert (= (and b!489571 res!292652) b!489567))

(assert (= (and b!489567 res!292653) b!489568))

(assert (= (and b!489568 res!292650) b!489572))

(assert (= (and b!489572 res!292656) b!489569))

(assert (= (and b!489569 res!292657) b!489564))

(assert (= (and b!489564 res!292651) b!489566))

(declare-fun m!469483 () Bool)

(assert (=> b!489565 m!469483))

(assert (=> b!489565 m!469483))

(declare-fun m!469485 () Bool)

(assert (=> b!489565 m!469485))

(assert (=> b!489566 m!469483))

(assert (=> b!489566 m!469483))

(declare-fun m!469487 () Bool)

(assert (=> b!489566 m!469487))

(declare-fun m!469489 () Bool)

(assert (=> b!489567 m!469489))

(declare-fun m!469491 () Bool)

(assert (=> b!489564 m!469491))

(assert (=> b!489564 m!469483))

(declare-fun m!469493 () Bool)

(assert (=> b!489564 m!469493))

(assert (=> b!489564 m!469483))

(declare-fun m!469495 () Bool)

(assert (=> b!489564 m!469495))

(declare-fun m!469497 () Bool)

(assert (=> b!489564 m!469497))

(declare-fun m!469499 () Bool)

(assert (=> b!489564 m!469499))

(assert (=> b!489564 m!469483))

(declare-fun m!469501 () Bool)

(assert (=> b!489564 m!469501))

(declare-fun m!469503 () Bool)

(assert (=> b!489564 m!469503))

(assert (=> b!489564 m!469497))

(assert (=> b!489564 m!469497))

(declare-fun m!469505 () Bool)

(assert (=> b!489564 m!469505))

(declare-fun m!469507 () Bool)

(assert (=> b!489569 m!469507))

(declare-fun m!469509 () Bool)

(assert (=> start!44652 m!469509))

(declare-fun m!469511 () Bool)

(assert (=> start!44652 m!469511))

(declare-fun m!469513 () Bool)

(assert (=> b!489572 m!469513))

(declare-fun m!469515 () Bool)

(assert (=> b!489568 m!469515))

(declare-fun m!469517 () Bool)

(assert (=> b!489571 m!469517))

(check-sat (not b!489571) (not start!44652) (not b!489572) (not b!489568) (not b!489565) (not b!489567) (not b!489569) (not b!489566) (not b!489564))
(check-sat)
