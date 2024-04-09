; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45180 () Bool)

(assert start!45180)

(declare-fun b!495433 () Bool)

(declare-fun res!297975 () Bool)

(declare-fun e!290650 () Bool)

(assert (=> b!495433 (=> (not res!297975) (not e!290650))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495433 (= res!297975 (validKeyInArray!0 k0!2280))))

(declare-fun b!495434 () Bool)

(declare-fun res!297977 () Bool)

(declare-fun e!290648 () Bool)

(assert (=> b!495434 (=> (not res!297977) (not e!290648))))

(declare-datatypes ((array!32028 0))(
  ( (array!32029 (arr!15394 (Array (_ BitVec 32) (_ BitVec 64))) (size!15758 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32028)

(declare-datatypes ((List!9605 0))(
  ( (Nil!9602) (Cons!9601 (h!10472 (_ BitVec 64)) (t!15841 List!9605)) )
))
(declare-fun arrayNoDuplicates!0 (array!32028 (_ BitVec 32) List!9605) Bool)

(assert (=> b!495434 (= res!297977 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9602))))

(declare-fun b!495435 () Bool)

(declare-fun e!290646 () Bool)

(assert (=> b!495435 (= e!290648 (not e!290646))))

(declare-fun res!297973 () Bool)

(assert (=> b!495435 (=> res!297973 e!290646)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!224337 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3868 0))(
  ( (MissingZero!3868 (index!17651 (_ BitVec 32))) (Found!3868 (index!17652 (_ BitVec 32))) (Intermediate!3868 (undefined!4680 Bool) (index!17653 (_ BitVec 32)) (x!46747 (_ BitVec 32))) (Undefined!3868) (MissingVacant!3868 (index!17654 (_ BitVec 32))) )
))
(declare-fun lt!224338 () SeekEntryResult!3868)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32028 (_ BitVec 32)) SeekEntryResult!3868)

(assert (=> b!495435 (= res!297973 (= lt!224338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224337 (select (store (arr!15394 a!3235) i!1204 k0!2280) j!176) (array!32029 (store (arr!15394 a!3235) i!1204 k0!2280) (size!15758 a!3235)) mask!3524)))))

(declare-fun lt!224339 () (_ BitVec 32))

(assert (=> b!495435 (= lt!224338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224339 (select (arr!15394 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495435 (= lt!224337 (toIndex!0 (select (store (arr!15394 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495435 (= lt!224339 (toIndex!0 (select (arr!15394 a!3235) j!176) mask!3524))))

(declare-fun e!290649 () Bool)

(assert (=> b!495435 e!290649))

(declare-fun res!297971 () Bool)

(assert (=> b!495435 (=> (not res!297971) (not e!290649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32028 (_ BitVec 32)) Bool)

(assert (=> b!495435 (= res!297971 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14674 0))(
  ( (Unit!14675) )
))
(declare-fun lt!224335 () Unit!14674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32028 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14674)

(assert (=> b!495435 (= lt!224335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!297974 () Bool)

(assert (=> start!45180 (=> (not res!297974) (not e!290650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45180 (= res!297974 (validMask!0 mask!3524))))

(assert (=> start!45180 e!290650))

(assert (=> start!45180 true))

(declare-fun array_inv!11168 (array!32028) Bool)

(assert (=> start!45180 (array_inv!11168 a!3235)))

(declare-fun b!495436 () Bool)

(declare-fun res!297979 () Bool)

(assert (=> b!495436 (=> res!297979 e!290646)))

(get-info :version)

(assert (=> b!495436 (= res!297979 (or (undefined!4680 lt!224338) (not ((_ is Intermediate!3868) lt!224338))))))

(declare-fun b!495437 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32028 (_ BitVec 32)) SeekEntryResult!3868)

(assert (=> b!495437 (= e!290649 (= (seekEntryOrOpen!0 (select (arr!15394 a!3235) j!176) a!3235 mask!3524) (Found!3868 j!176)))))

(declare-fun b!495438 () Bool)

(declare-fun res!297980 () Bool)

(assert (=> b!495438 (=> (not res!297980) (not e!290650))))

(assert (=> b!495438 (= res!297980 (and (= (size!15758 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15758 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15758 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495439 () Bool)

(declare-fun res!297976 () Bool)

(assert (=> b!495439 (=> (not res!297976) (not e!290650))))

(assert (=> b!495439 (= res!297976 (validKeyInArray!0 (select (arr!15394 a!3235) j!176)))))

(declare-fun b!495440 () Bool)

(assert (=> b!495440 (= e!290650 e!290648)))

(declare-fun res!297978 () Bool)

(assert (=> b!495440 (=> (not res!297978) (not e!290648))))

(declare-fun lt!224336 () SeekEntryResult!3868)

(assert (=> b!495440 (= res!297978 (or (= lt!224336 (MissingZero!3868 i!1204)) (= lt!224336 (MissingVacant!3868 i!1204))))))

(assert (=> b!495440 (= lt!224336 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495441 () Bool)

(declare-fun res!297970 () Bool)

(assert (=> b!495441 (=> (not res!297970) (not e!290648))))

(assert (=> b!495441 (= res!297970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495442 () Bool)

(declare-fun res!297972 () Bool)

(assert (=> b!495442 (=> (not res!297972) (not e!290650))))

(declare-fun arrayContainsKey!0 (array!32028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495442 (= res!297972 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495443 () Bool)

(assert (=> b!495443 (= e!290646 true)))

(assert (=> b!495443 (and (bvslt (x!46747 lt!224338) #b01111111111111111111111111111110) (or (= (select (arr!15394 a!3235) (index!17653 lt!224338)) (select (arr!15394 a!3235) j!176)) (= (select (arr!15394 a!3235) (index!17653 lt!224338)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15394 a!3235) (index!17653 lt!224338)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45180 res!297974) b!495438))

(assert (= (and b!495438 res!297980) b!495439))

(assert (= (and b!495439 res!297976) b!495433))

(assert (= (and b!495433 res!297975) b!495442))

(assert (= (and b!495442 res!297972) b!495440))

(assert (= (and b!495440 res!297978) b!495441))

(assert (= (and b!495441 res!297970) b!495434))

(assert (= (and b!495434 res!297977) b!495435))

(assert (= (and b!495435 res!297971) b!495437))

(assert (= (and b!495435 (not res!297973)) b!495436))

(assert (= (and b!495436 (not res!297979)) b!495443))

(declare-fun m!476583 () Bool)

(assert (=> b!495443 m!476583))

(declare-fun m!476585 () Bool)

(assert (=> b!495443 m!476585))

(declare-fun m!476587 () Bool)

(assert (=> b!495440 m!476587))

(declare-fun m!476589 () Bool)

(assert (=> b!495433 m!476589))

(declare-fun m!476591 () Bool)

(assert (=> b!495442 m!476591))

(declare-fun m!476593 () Bool)

(assert (=> b!495435 m!476593))

(declare-fun m!476595 () Bool)

(assert (=> b!495435 m!476595))

(declare-fun m!476597 () Bool)

(assert (=> b!495435 m!476597))

(assert (=> b!495435 m!476585))

(declare-fun m!476599 () Bool)

(assert (=> b!495435 m!476599))

(declare-fun m!476601 () Bool)

(assert (=> b!495435 m!476601))

(assert (=> b!495435 m!476585))

(declare-fun m!476603 () Bool)

(assert (=> b!495435 m!476603))

(assert (=> b!495435 m!476597))

(declare-fun m!476605 () Bool)

(assert (=> b!495435 m!476605))

(assert (=> b!495435 m!476597))

(declare-fun m!476607 () Bool)

(assert (=> b!495435 m!476607))

(assert (=> b!495435 m!476585))

(declare-fun m!476609 () Bool)

(assert (=> b!495441 m!476609))

(assert (=> b!495437 m!476585))

(assert (=> b!495437 m!476585))

(declare-fun m!476611 () Bool)

(assert (=> b!495437 m!476611))

(declare-fun m!476613 () Bool)

(assert (=> start!45180 m!476613))

(declare-fun m!476615 () Bool)

(assert (=> start!45180 m!476615))

(declare-fun m!476617 () Bool)

(assert (=> b!495434 m!476617))

(assert (=> b!495439 m!476585))

(assert (=> b!495439 m!476585))

(declare-fun m!476619 () Bool)

(assert (=> b!495439 m!476619))

(check-sat (not b!495434) (not b!495437) (not b!495440) (not b!495433) (not b!495441) (not b!495439) (not b!495442) (not start!45180) (not b!495435))
(check-sat)
