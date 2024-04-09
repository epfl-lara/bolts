; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44658 () Bool)

(assert start!44658)

(declare-fun res!292738 () Bool)

(declare-fun e!287935 () Bool)

(assert (=> start!44658 (=> (not res!292738) (not e!287935))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44658 (= res!292738 (validMask!0 mask!3524))))

(assert (=> start!44658 e!287935))

(assert (=> start!44658 true))

(declare-datatypes ((array!31677 0))(
  ( (array!31678 (arr!15223 (Array (_ BitVec 32) (_ BitVec 64))) (size!15587 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31677)

(declare-fun array_inv!10997 (array!31677) Bool)

(assert (=> start!44658 (array_inv!10997 a!3235)))

(declare-fun b!489645 () Bool)

(declare-fun e!287932 () Bool)

(assert (=> b!489645 (= e!287932 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3697 0))(
  ( (MissingZero!3697 (index!16967 (_ BitVec 32))) (Found!3697 (index!16968 (_ BitVec 32))) (Intermediate!3697 (undefined!4509 Bool) (index!16969 (_ BitVec 32)) (x!46102 (_ BitVec 32))) (Undefined!3697) (MissingVacant!3697 (index!16970 (_ BitVec 32))) )
))
(declare-fun lt!221059 () SeekEntryResult!3697)

(declare-fun lt!221056 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31677 (_ BitVec 32)) SeekEntryResult!3697)

(assert (=> b!489645 (= lt!221059 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221056 (select (store (arr!15223 a!3235) i!1204 k0!2280) j!176) (array!31678 (store (arr!15223 a!3235) i!1204 k0!2280) (size!15587 a!3235)) mask!3524))))

(declare-fun lt!221058 () (_ BitVec 32))

(declare-fun lt!221057 () SeekEntryResult!3697)

(assert (=> b!489645 (= lt!221057 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221058 (select (arr!15223 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489645 (= lt!221056 (toIndex!0 (select (store (arr!15223 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489645 (= lt!221058 (toIndex!0 (select (arr!15223 a!3235) j!176) mask!3524))))

(declare-fun e!287933 () Bool)

(assert (=> b!489645 e!287933))

(declare-fun res!292733 () Bool)

(assert (=> b!489645 (=> (not res!292733) (not e!287933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31677 (_ BitVec 32)) Bool)

(assert (=> b!489645 (= res!292733 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14332 0))(
  ( (Unit!14333) )
))
(declare-fun lt!221060 () Unit!14332)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14332)

(assert (=> b!489645 (= lt!221060 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489646 () Bool)

(declare-fun res!292739 () Bool)

(assert (=> b!489646 (=> (not res!292739) (not e!287932))))

(assert (=> b!489646 (= res!292739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489647 () Bool)

(declare-fun res!292731 () Bool)

(assert (=> b!489647 (=> (not res!292731) (not e!287935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489647 (= res!292731 (validKeyInArray!0 (select (arr!15223 a!3235) j!176)))))

(declare-fun b!489648 () Bool)

(declare-fun res!292736 () Bool)

(assert (=> b!489648 (=> (not res!292736) (not e!287932))))

(declare-datatypes ((List!9434 0))(
  ( (Nil!9431) (Cons!9430 (h!10292 (_ BitVec 64)) (t!15670 List!9434)) )
))
(declare-fun arrayNoDuplicates!0 (array!31677 (_ BitVec 32) List!9434) Bool)

(assert (=> b!489648 (= res!292736 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9431))))

(declare-fun b!489649 () Bool)

(declare-fun res!292737 () Bool)

(assert (=> b!489649 (=> (not res!292737) (not e!287935))))

(assert (=> b!489649 (= res!292737 (and (= (size!15587 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15587 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15587 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489650 () Bool)

(assert (=> b!489650 (= e!287935 e!287932)))

(declare-fun res!292734 () Bool)

(assert (=> b!489650 (=> (not res!292734) (not e!287932))))

(declare-fun lt!221055 () SeekEntryResult!3697)

(assert (=> b!489650 (= res!292734 (or (= lt!221055 (MissingZero!3697 i!1204)) (= lt!221055 (MissingVacant!3697 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31677 (_ BitVec 32)) SeekEntryResult!3697)

(assert (=> b!489650 (= lt!221055 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!489651 () Bool)

(assert (=> b!489651 (= e!287933 (= (seekEntryOrOpen!0 (select (arr!15223 a!3235) j!176) a!3235 mask!3524) (Found!3697 j!176)))))

(declare-fun b!489652 () Bool)

(declare-fun res!292732 () Bool)

(assert (=> b!489652 (=> (not res!292732) (not e!287935))))

(declare-fun arrayContainsKey!0 (array!31677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489652 (= res!292732 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489653 () Bool)

(declare-fun res!292735 () Bool)

(assert (=> b!489653 (=> (not res!292735) (not e!287935))))

(assert (=> b!489653 (= res!292735 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44658 res!292738) b!489649))

(assert (= (and b!489649 res!292737) b!489647))

(assert (= (and b!489647 res!292731) b!489653))

(assert (= (and b!489653 res!292735) b!489652))

(assert (= (and b!489652 res!292732) b!489650))

(assert (= (and b!489650 res!292734) b!489646))

(assert (= (and b!489646 res!292739) b!489648))

(assert (= (and b!489648 res!292736) b!489645))

(assert (= (and b!489645 res!292733) b!489651))

(declare-fun m!469591 () Bool)

(assert (=> b!489647 m!469591))

(assert (=> b!489647 m!469591))

(declare-fun m!469593 () Bool)

(assert (=> b!489647 m!469593))

(assert (=> b!489645 m!469591))

(declare-fun m!469595 () Bool)

(assert (=> b!489645 m!469595))

(declare-fun m!469597 () Bool)

(assert (=> b!489645 m!469597))

(declare-fun m!469599 () Bool)

(assert (=> b!489645 m!469599))

(declare-fun m!469601 () Bool)

(assert (=> b!489645 m!469601))

(assert (=> b!489645 m!469601))

(declare-fun m!469603 () Bool)

(assert (=> b!489645 m!469603))

(assert (=> b!489645 m!469591))

(declare-fun m!469605 () Bool)

(assert (=> b!489645 m!469605))

(assert (=> b!489645 m!469591))

(declare-fun m!469607 () Bool)

(assert (=> b!489645 m!469607))

(assert (=> b!489645 m!469601))

(declare-fun m!469609 () Bool)

(assert (=> b!489645 m!469609))

(declare-fun m!469611 () Bool)

(assert (=> b!489650 m!469611))

(declare-fun m!469613 () Bool)

(assert (=> b!489648 m!469613))

(assert (=> b!489651 m!469591))

(assert (=> b!489651 m!469591))

(declare-fun m!469615 () Bool)

(assert (=> b!489651 m!469615))

(declare-fun m!469617 () Bool)

(assert (=> b!489653 m!469617))

(declare-fun m!469619 () Bool)

(assert (=> b!489646 m!469619))

(declare-fun m!469621 () Bool)

(assert (=> start!44658 m!469621))

(declare-fun m!469623 () Bool)

(assert (=> start!44658 m!469623))

(declare-fun m!469625 () Bool)

(assert (=> b!489652 m!469625))

(check-sat (not b!489645) (not b!489646) (not b!489651) (not start!44658) (not b!489653) (not b!489652) (not b!489647) (not b!489648) (not b!489650))
(check-sat)
