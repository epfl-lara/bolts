; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45810 () Bool)

(assert start!45810)

(declare-fun b!506788 () Bool)

(declare-fun res!307906 () Bool)

(declare-fun e!296610 () Bool)

(assert (=> b!506788 (=> (not res!307906) (not e!296610))))

(declare-datatypes ((array!32526 0))(
  ( (array!32527 (arr!15640 (Array (_ BitVec 32) (_ BitVec 64))) (size!16004 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32526)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32526 (_ BitVec 32)) Bool)

(assert (=> b!506788 (= res!307906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506789 () Bool)

(declare-fun e!296608 () Bool)

(assert (=> b!506789 (= e!296610 (not e!296608))))

(declare-fun res!307904 () Bool)

(assert (=> b!506789 (=> res!307904 e!296608)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4114 0))(
  ( (MissingZero!4114 (index!18644 (_ BitVec 32))) (Found!4114 (index!18645 (_ BitVec 32))) (Intermediate!4114 (undefined!4926 Bool) (index!18646 (_ BitVec 32)) (x!47670 (_ BitVec 32))) (Undefined!4114) (MissingVacant!4114 (index!18647 (_ BitVec 32))) )
))
(declare-fun lt!231354 () SeekEntryResult!4114)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!231356 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32526 (_ BitVec 32)) SeekEntryResult!4114)

(assert (=> b!506789 (= res!307904 (= lt!231354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231356 (select (store (arr!15640 a!3235) i!1204 k0!2280) j!176) (array!32527 (store (arr!15640 a!3235) i!1204 k0!2280) (size!16004 a!3235)) mask!3524)))))

(declare-fun lt!231353 () (_ BitVec 32))

(assert (=> b!506789 (= lt!231354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231353 (select (arr!15640 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506789 (= lt!231356 (toIndex!0 (select (store (arr!15640 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506789 (= lt!231353 (toIndex!0 (select (arr!15640 a!3235) j!176) mask!3524))))

(declare-fun e!296611 () Bool)

(assert (=> b!506789 e!296611))

(declare-fun res!307907 () Bool)

(assert (=> b!506789 (=> (not res!307907) (not e!296611))))

(assert (=> b!506789 (= res!307907 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15508 0))(
  ( (Unit!15509) )
))
(declare-fun lt!231351 () Unit!15508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32526 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15508)

(assert (=> b!506789 (= lt!231351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506790 () Bool)

(declare-fun res!307900 () Bool)

(declare-fun e!296609 () Bool)

(assert (=> b!506790 (=> (not res!307900) (not e!296609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506790 (= res!307900 (validKeyInArray!0 (select (arr!15640 a!3235) j!176)))))

(declare-fun b!506791 () Bool)

(declare-fun res!307898 () Bool)

(assert (=> b!506791 (=> (not res!307898) (not e!296610))))

(declare-datatypes ((List!9851 0))(
  ( (Nil!9848) (Cons!9847 (h!10724 (_ BitVec 64)) (t!16087 List!9851)) )
))
(declare-fun arrayNoDuplicates!0 (array!32526 (_ BitVec 32) List!9851) Bool)

(assert (=> b!506791 (= res!307898 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9848))))

(declare-fun b!506792 () Bool)

(declare-fun e!296606 () Bool)

(assert (=> b!506792 (= e!296608 e!296606)))

(declare-fun res!307902 () Bool)

(assert (=> b!506792 (=> res!307902 e!296606)))

(declare-fun lt!231355 () Bool)

(assert (=> b!506792 (= res!307902 (or (and (not lt!231355) (undefined!4926 lt!231354)) (and (not lt!231355) (not (undefined!4926 lt!231354)))))))

(get-info :version)

(assert (=> b!506792 (= lt!231355 (not ((_ is Intermediate!4114) lt!231354)))))

(declare-fun b!506793 () Bool)

(assert (=> b!506793 (= e!296606 true)))

(assert (=> b!506793 false))

(declare-fun res!307899 () Bool)

(assert (=> start!45810 (=> (not res!307899) (not e!296609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45810 (= res!307899 (validMask!0 mask!3524))))

(assert (=> start!45810 e!296609))

(assert (=> start!45810 true))

(declare-fun array_inv!11414 (array!32526) Bool)

(assert (=> start!45810 (array_inv!11414 a!3235)))

(declare-fun b!506794 () Bool)

(declare-fun res!307897 () Bool)

(assert (=> b!506794 (=> (not res!307897) (not e!296609))))

(assert (=> b!506794 (= res!307897 (and (= (size!16004 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16004 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16004 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506795 () Bool)

(declare-fun res!307903 () Bool)

(assert (=> b!506795 (=> (not res!307903) (not e!296609))))

(assert (=> b!506795 (= res!307903 (validKeyInArray!0 k0!2280))))

(declare-fun b!506796 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32526 (_ BitVec 32)) SeekEntryResult!4114)

(assert (=> b!506796 (= e!296611 (= (seekEntryOrOpen!0 (select (arr!15640 a!3235) j!176) a!3235 mask!3524) (Found!4114 j!176)))))

(declare-fun b!506797 () Bool)

(assert (=> b!506797 (= e!296609 e!296610)))

(declare-fun res!307905 () Bool)

(assert (=> b!506797 (=> (not res!307905) (not e!296610))))

(declare-fun lt!231352 () SeekEntryResult!4114)

(assert (=> b!506797 (= res!307905 (or (= lt!231352 (MissingZero!4114 i!1204)) (= lt!231352 (MissingVacant!4114 i!1204))))))

(assert (=> b!506797 (= lt!231352 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506798 () Bool)

(declare-fun res!307901 () Bool)

(assert (=> b!506798 (=> (not res!307901) (not e!296609))))

(declare-fun arrayContainsKey!0 (array!32526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506798 (= res!307901 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45810 res!307899) b!506794))

(assert (= (and b!506794 res!307897) b!506790))

(assert (= (and b!506790 res!307900) b!506795))

(assert (= (and b!506795 res!307903) b!506798))

(assert (= (and b!506798 res!307901) b!506797))

(assert (= (and b!506797 res!307905) b!506788))

(assert (= (and b!506788 res!307906) b!506791))

(assert (= (and b!506791 res!307898) b!506789))

(assert (= (and b!506789 res!307907) b!506796))

(assert (= (and b!506789 (not res!307904)) b!506792))

(assert (= (and b!506792 (not res!307902)) b!506793))

(declare-fun m!487537 () Bool)

(assert (=> b!506789 m!487537))

(declare-fun m!487539 () Bool)

(assert (=> b!506789 m!487539))

(declare-fun m!487541 () Bool)

(assert (=> b!506789 m!487541))

(declare-fun m!487543 () Bool)

(assert (=> b!506789 m!487543))

(declare-fun m!487545 () Bool)

(assert (=> b!506789 m!487545))

(assert (=> b!506789 m!487543))

(declare-fun m!487547 () Bool)

(assert (=> b!506789 m!487547))

(declare-fun m!487549 () Bool)

(assert (=> b!506789 m!487549))

(assert (=> b!506789 m!487541))

(declare-fun m!487551 () Bool)

(assert (=> b!506789 m!487551))

(assert (=> b!506789 m!487541))

(declare-fun m!487553 () Bool)

(assert (=> b!506789 m!487553))

(assert (=> b!506789 m!487543))

(declare-fun m!487555 () Bool)

(assert (=> start!45810 m!487555))

(declare-fun m!487557 () Bool)

(assert (=> start!45810 m!487557))

(assert (=> b!506796 m!487543))

(assert (=> b!506796 m!487543))

(declare-fun m!487559 () Bool)

(assert (=> b!506796 m!487559))

(assert (=> b!506790 m!487543))

(assert (=> b!506790 m!487543))

(declare-fun m!487561 () Bool)

(assert (=> b!506790 m!487561))

(declare-fun m!487563 () Bool)

(assert (=> b!506798 m!487563))

(declare-fun m!487565 () Bool)

(assert (=> b!506795 m!487565))

(declare-fun m!487567 () Bool)

(assert (=> b!506791 m!487567))

(declare-fun m!487569 () Bool)

(assert (=> b!506797 m!487569))

(declare-fun m!487571 () Bool)

(assert (=> b!506788 m!487571))

(check-sat (not b!506790) (not b!506788) (not b!506796) (not b!506797) (not b!506789) (not start!45810) (not b!506798) (not b!506791) (not b!506795))
(check-sat)
