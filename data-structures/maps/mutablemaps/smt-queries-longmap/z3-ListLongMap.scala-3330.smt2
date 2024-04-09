; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45984 () Bool)

(assert start!45984)

(declare-fun b!508752 () Bool)

(declare-fun res!309752 () Bool)

(declare-fun e!297595 () Bool)

(assert (=> b!508752 (=> (not res!309752) (not e!297595))))

(declare-datatypes ((array!32655 0))(
  ( (array!32656 (arr!15703 (Array (_ BitVec 32) (_ BitVec 64))) (size!16067 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32655)

(declare-datatypes ((List!9914 0))(
  ( (Nil!9911) (Cons!9910 (h!10787 (_ BitVec 64)) (t!16150 List!9914)) )
))
(declare-fun arrayNoDuplicates!0 (array!32655 (_ BitVec 32) List!9914) Bool)

(assert (=> b!508752 (= res!309752 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9911))))

(declare-fun b!508753 () Bool)

(declare-fun res!309751 () Bool)

(declare-fun e!297597 () Bool)

(assert (=> b!508753 (=> (not res!309751) (not e!297597))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508753 (= res!309751 (and (= (size!16067 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16067 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16067 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508754 () Bool)

(declare-fun e!297598 () Bool)

(declare-datatypes ((SeekEntryResult!4177 0))(
  ( (MissingZero!4177 (index!18896 (_ BitVec 32))) (Found!4177 (index!18897 (_ BitVec 32))) (Intermediate!4177 (undefined!4989 Bool) (index!18898 (_ BitVec 32)) (x!47901 (_ BitVec 32))) (Undefined!4177) (MissingVacant!4177 (index!18899 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32655 (_ BitVec 32)) SeekEntryResult!4177)

(assert (=> b!508754 (= e!297598 (= (seekEntryOrOpen!0 (select (arr!15703 a!3235) j!176) a!3235 mask!3524) (Found!4177 j!176)))))

(declare-fun b!508755 () Bool)

(declare-fun res!309753 () Bool)

(assert (=> b!508755 (=> (not res!309753) (not e!297597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508755 (= res!309753 (validKeyInArray!0 (select (arr!15703 a!3235) j!176)))))

(declare-fun b!508756 () Bool)

(declare-fun res!309750 () Bool)

(assert (=> b!508756 (=> (not res!309750) (not e!297597))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!508756 (= res!309750 (validKeyInArray!0 k0!2280))))

(declare-fun b!508757 () Bool)

(assert (=> b!508757 (= e!297595 (not true))))

(declare-fun lt!232362 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508757 (= lt!232362 (toIndex!0 (select (store (arr!15703 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!508757 e!297598))

(declare-fun res!309754 () Bool)

(assert (=> b!508757 (=> (not res!309754) (not e!297598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32655 (_ BitVec 32)) Bool)

(assert (=> b!508757 (= res!309754 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15604 0))(
  ( (Unit!15605) )
))
(declare-fun lt!232364 () Unit!15604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15604)

(assert (=> b!508757 (= lt!232364 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!309755 () Bool)

(assert (=> start!45984 (=> (not res!309755) (not e!297597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45984 (= res!309755 (validMask!0 mask!3524))))

(assert (=> start!45984 e!297597))

(assert (=> start!45984 true))

(declare-fun array_inv!11477 (array!32655) Bool)

(assert (=> start!45984 (array_inv!11477 a!3235)))

(declare-fun b!508758 () Bool)

(declare-fun res!309747 () Bool)

(assert (=> b!508758 (=> (not res!309747) (not e!297595))))

(assert (=> b!508758 (= res!309747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508759 () Bool)

(assert (=> b!508759 (= e!297597 e!297595)))

(declare-fun res!309748 () Bool)

(assert (=> b!508759 (=> (not res!309748) (not e!297595))))

(declare-fun lt!232363 () SeekEntryResult!4177)

(assert (=> b!508759 (= res!309748 (or (= lt!232363 (MissingZero!4177 i!1204)) (= lt!232363 (MissingVacant!4177 i!1204))))))

(assert (=> b!508759 (= lt!232363 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508760 () Bool)

(declare-fun res!309749 () Bool)

(assert (=> b!508760 (=> (not res!309749) (not e!297597))))

(declare-fun arrayContainsKey!0 (array!32655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508760 (= res!309749 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45984 res!309755) b!508753))

(assert (= (and b!508753 res!309751) b!508755))

(assert (= (and b!508755 res!309753) b!508756))

(assert (= (and b!508756 res!309750) b!508760))

(assert (= (and b!508760 res!309749) b!508759))

(assert (= (and b!508759 res!309748) b!508758))

(assert (= (and b!508758 res!309747) b!508752))

(assert (= (and b!508752 res!309752) b!508757))

(assert (= (and b!508757 res!309754) b!508754))

(declare-fun m!489523 () Bool)

(assert (=> b!508755 m!489523))

(assert (=> b!508755 m!489523))

(declare-fun m!489525 () Bool)

(assert (=> b!508755 m!489525))

(declare-fun m!489527 () Bool)

(assert (=> start!45984 m!489527))

(declare-fun m!489529 () Bool)

(assert (=> start!45984 m!489529))

(declare-fun m!489531 () Bool)

(assert (=> b!508752 m!489531))

(declare-fun m!489533 () Bool)

(assert (=> b!508759 m!489533))

(declare-fun m!489535 () Bool)

(assert (=> b!508756 m!489535))

(declare-fun m!489537 () Bool)

(assert (=> b!508760 m!489537))

(declare-fun m!489539 () Bool)

(assert (=> b!508757 m!489539))

(declare-fun m!489541 () Bool)

(assert (=> b!508757 m!489541))

(declare-fun m!489543 () Bool)

(assert (=> b!508757 m!489543))

(declare-fun m!489545 () Bool)

(assert (=> b!508757 m!489545))

(assert (=> b!508757 m!489543))

(declare-fun m!489547 () Bool)

(assert (=> b!508757 m!489547))

(assert (=> b!508754 m!489523))

(assert (=> b!508754 m!489523))

(declare-fun m!489549 () Bool)

(assert (=> b!508754 m!489549))

(declare-fun m!489551 () Bool)

(assert (=> b!508758 m!489551))

(check-sat (not b!508756) (not b!508757) (not b!508754) (not start!45984) (not b!508759) (not b!508755) (not b!508752) (not b!508760) (not b!508758))
(check-sat)
