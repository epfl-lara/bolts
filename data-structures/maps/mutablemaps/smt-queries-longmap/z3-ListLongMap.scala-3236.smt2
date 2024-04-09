; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45234 () Bool)

(assert start!45234)

(declare-fun b!496325 () Bool)

(declare-fun e!291055 () Bool)

(assert (=> b!496325 (= e!291055 true)))

(declare-datatypes ((SeekEntryResult!3895 0))(
  ( (MissingZero!3895 (index!17759 (_ BitVec 32))) (Found!3895 (index!17760 (_ BitVec 32))) (Intermediate!3895 (undefined!4707 Bool) (index!17761 (_ BitVec 32)) (x!46846 (_ BitVec 32))) (Undefined!3895) (MissingVacant!3895 (index!17762 (_ BitVec 32))) )
))
(declare-fun lt!224742 () SeekEntryResult!3895)

(declare-datatypes ((array!32082 0))(
  ( (array!32083 (arr!15421 (Array (_ BitVec 32) (_ BitVec 64))) (size!15785 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32082)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496325 (and (bvslt (x!46846 lt!224742) #b01111111111111111111111111111110) (or (= (select (arr!15421 a!3235) (index!17761 lt!224742)) (select (arr!15421 a!3235) j!176)) (= (select (arr!15421 a!3235) (index!17761 lt!224742)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15421 a!3235) (index!17761 lt!224742)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496326 () Bool)

(declare-fun res!298865 () Bool)

(declare-fun e!291053 () Bool)

(assert (=> b!496326 (=> (not res!298865) (not e!291053))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496326 (= res!298865 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496327 () Bool)

(declare-fun res!298864 () Bool)

(assert (=> b!496327 (=> (not res!298864) (not e!291053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496327 (= res!298864 (validKeyInArray!0 k0!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!291051 () Bool)

(declare-fun b!496328 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32082 (_ BitVec 32)) SeekEntryResult!3895)

(assert (=> b!496328 (= e!291051 (= (seekEntryOrOpen!0 (select (arr!15421 a!3235) j!176) a!3235 mask!3524) (Found!3895 j!176)))))

(declare-fun b!496329 () Bool)

(declare-fun res!298867 () Bool)

(declare-fun e!291052 () Bool)

(assert (=> b!496329 (=> (not res!298867) (not e!291052))))

(declare-datatypes ((List!9632 0))(
  ( (Nil!9629) (Cons!9628 (h!10499 (_ BitVec 64)) (t!15868 List!9632)) )
))
(declare-fun arrayNoDuplicates!0 (array!32082 (_ BitVec 32) List!9632) Bool)

(assert (=> b!496329 (= res!298867 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9629))))

(declare-fun b!496330 () Bool)

(assert (=> b!496330 (= e!291052 (not e!291055))))

(declare-fun res!298870 () Bool)

(assert (=> b!496330 (=> res!298870 e!291055)))

(declare-fun lt!224744 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32082 (_ BitVec 32)) SeekEntryResult!3895)

(assert (=> b!496330 (= res!298870 (= lt!224742 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224744 (select (store (arr!15421 a!3235) i!1204 k0!2280) j!176) (array!32083 (store (arr!15421 a!3235) i!1204 k0!2280) (size!15785 a!3235)) mask!3524)))))

(declare-fun lt!224740 () (_ BitVec 32))

(assert (=> b!496330 (= lt!224742 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224740 (select (arr!15421 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496330 (= lt!224744 (toIndex!0 (select (store (arr!15421 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496330 (= lt!224740 (toIndex!0 (select (arr!15421 a!3235) j!176) mask!3524))))

(assert (=> b!496330 e!291051))

(declare-fun res!298862 () Bool)

(assert (=> b!496330 (=> (not res!298862) (not e!291051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32082 (_ BitVec 32)) Bool)

(assert (=> b!496330 (= res!298862 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14728 0))(
  ( (Unit!14729) )
))
(declare-fun lt!224741 () Unit!14728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32082 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14728)

(assert (=> b!496330 (= lt!224741 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496331 () Bool)

(declare-fun res!298868 () Bool)

(assert (=> b!496331 (=> (not res!298868) (not e!291053))))

(assert (=> b!496331 (= res!298868 (and (= (size!15785 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15785 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15785 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496332 () Bool)

(declare-fun res!298861 () Bool)

(assert (=> b!496332 (=> (not res!298861) (not e!291053))))

(assert (=> b!496332 (= res!298861 (validKeyInArray!0 (select (arr!15421 a!3235) j!176)))))

(declare-fun b!496333 () Bool)

(declare-fun res!298871 () Bool)

(assert (=> b!496333 (=> (not res!298871) (not e!291052))))

(assert (=> b!496333 (= res!298871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496334 () Bool)

(assert (=> b!496334 (= e!291053 e!291052)))

(declare-fun res!298866 () Bool)

(assert (=> b!496334 (=> (not res!298866) (not e!291052))))

(declare-fun lt!224743 () SeekEntryResult!3895)

(assert (=> b!496334 (= res!298866 (or (= lt!224743 (MissingZero!3895 i!1204)) (= lt!224743 (MissingVacant!3895 i!1204))))))

(assert (=> b!496334 (= lt!224743 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496324 () Bool)

(declare-fun res!298869 () Bool)

(assert (=> b!496324 (=> res!298869 e!291055)))

(get-info :version)

(assert (=> b!496324 (= res!298869 (or (undefined!4707 lt!224742) (not ((_ is Intermediate!3895) lt!224742))))))

(declare-fun res!298863 () Bool)

(assert (=> start!45234 (=> (not res!298863) (not e!291053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45234 (= res!298863 (validMask!0 mask!3524))))

(assert (=> start!45234 e!291053))

(assert (=> start!45234 true))

(declare-fun array_inv!11195 (array!32082) Bool)

(assert (=> start!45234 (array_inv!11195 a!3235)))

(assert (= (and start!45234 res!298863) b!496331))

(assert (= (and b!496331 res!298868) b!496332))

(assert (= (and b!496332 res!298861) b!496327))

(assert (= (and b!496327 res!298864) b!496326))

(assert (= (and b!496326 res!298865) b!496334))

(assert (= (and b!496334 res!298866) b!496333))

(assert (= (and b!496333 res!298871) b!496329))

(assert (= (and b!496329 res!298867) b!496330))

(assert (= (and b!496330 res!298862) b!496328))

(assert (= (and b!496330 (not res!298870)) b!496324))

(assert (= (and b!496324 (not res!298869)) b!496325))

(declare-fun m!477609 () Bool)

(assert (=> b!496333 m!477609))

(declare-fun m!477611 () Bool)

(assert (=> b!496326 m!477611))

(declare-fun m!477613 () Bool)

(assert (=> b!496332 m!477613))

(assert (=> b!496332 m!477613))

(declare-fun m!477615 () Bool)

(assert (=> b!496332 m!477615))

(declare-fun m!477617 () Bool)

(assert (=> b!496334 m!477617))

(declare-fun m!477619 () Bool)

(assert (=> start!45234 m!477619))

(declare-fun m!477621 () Bool)

(assert (=> start!45234 m!477621))

(declare-fun m!477623 () Bool)

(assert (=> b!496327 m!477623))

(declare-fun m!477625 () Bool)

(assert (=> b!496330 m!477625))

(declare-fun m!477627 () Bool)

(assert (=> b!496330 m!477627))

(assert (=> b!496330 m!477613))

(declare-fun m!477629 () Bool)

(assert (=> b!496330 m!477629))

(assert (=> b!496330 m!477613))

(declare-fun m!477631 () Bool)

(assert (=> b!496330 m!477631))

(assert (=> b!496330 m!477627))

(declare-fun m!477633 () Bool)

(assert (=> b!496330 m!477633))

(declare-fun m!477635 () Bool)

(assert (=> b!496330 m!477635))

(assert (=> b!496330 m!477627))

(declare-fun m!477637 () Bool)

(assert (=> b!496330 m!477637))

(assert (=> b!496330 m!477613))

(declare-fun m!477639 () Bool)

(assert (=> b!496330 m!477639))

(declare-fun m!477641 () Bool)

(assert (=> b!496325 m!477641))

(assert (=> b!496325 m!477613))

(declare-fun m!477643 () Bool)

(assert (=> b!496329 m!477643))

(assert (=> b!496328 m!477613))

(assert (=> b!496328 m!477613))

(declare-fun m!477645 () Bool)

(assert (=> b!496328 m!477645))

(check-sat (not b!496333) (not b!496327) (not b!496330) (not b!496329) (not b!496334) (not start!45234) (not b!496332) (not b!496328) (not b!496326))
(check-sat)
