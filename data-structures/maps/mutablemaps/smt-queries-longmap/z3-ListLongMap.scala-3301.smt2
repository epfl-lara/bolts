; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45762 () Bool)

(assert start!45762)

(declare-fun res!307056 () Bool)

(declare-fun e!296126 () Bool)

(assert (=> start!45762 (=> (not res!307056) (not e!296126))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45762 (= res!307056 (validMask!0 mask!3524))))

(assert (=> start!45762 e!296126))

(assert (=> start!45762 true))

(declare-datatypes ((array!32478 0))(
  ( (array!32479 (arr!15616 (Array (_ BitVec 32) (_ BitVec 64))) (size!15980 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32478)

(declare-fun array_inv!11390 (array!32478) Bool)

(assert (=> start!45762 (array_inv!11390 a!3235)))

(declare-fun e!296132 () Bool)

(declare-fun lt!230830 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4090 0))(
  ( (MissingZero!4090 (index!18548 (_ BitVec 32))) (Found!4090 (index!18549 (_ BitVec 32))) (Intermediate!4090 (undefined!4902 Bool) (index!18550 (_ BitVec 32)) (x!47582 (_ BitVec 32))) (Undefined!4090) (MissingVacant!4090 (index!18551 (_ BitVec 32))) )
))
(declare-fun lt!230829 () SeekEntryResult!4090)

(declare-fun lt!230828 () SeekEntryResult!4090)

(declare-fun b!505909 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32478 (_ BitVec 32)) SeekEntryResult!4090)

(assert (=> b!505909 (= e!296132 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230830 (index!18550 lt!230829) (select (arr!15616 a!3235) j!176) a!3235 mask!3524) lt!230828)))))

(declare-fun b!505910 () Bool)

(declare-fun e!296131 () Bool)

(assert (=> b!505910 (= e!296131 false)))

(declare-fun b!505911 () Bool)

(declare-fun e!296134 () Bool)

(declare-fun e!296133 () Bool)

(assert (=> b!505911 (= e!296134 e!296133)))

(declare-fun res!307057 () Bool)

(assert (=> b!505911 (=> res!307057 e!296133)))

(assert (=> b!505911 (= res!307057 (or (bvsgt (x!47582 lt!230829) #b01111111111111111111111111111110) (bvslt lt!230830 #b00000000000000000000000000000000) (bvsge lt!230830 (size!15980 a!3235)) (bvslt (index!18550 lt!230829) #b00000000000000000000000000000000) (bvsge (index!18550 lt!230829) (size!15980 a!3235)) (not (= lt!230829 (Intermediate!4090 false (index!18550 lt!230829) (x!47582 lt!230829))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505911 (= (index!18550 lt!230829) i!1204)))

(declare-datatypes ((Unit!15450 0))(
  ( (Unit!15451) )
))
(declare-fun lt!230838 () Unit!15450)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32478 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15450)

(assert (=> b!505911 (= lt!230838 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230830 #b00000000000000000000000000000000 (index!18550 lt!230829) (x!47582 lt!230829) mask!3524))))

(assert (=> b!505911 (and (or (= (select (arr!15616 a!3235) (index!18550 lt!230829)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15616 a!3235) (index!18550 lt!230829)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15616 a!3235) (index!18550 lt!230829)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15616 a!3235) (index!18550 lt!230829)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230839 () Unit!15450)

(declare-fun e!296129 () Unit!15450)

(assert (=> b!505911 (= lt!230839 e!296129)))

(declare-fun c!59711 () Bool)

(assert (=> b!505911 (= c!59711 (= (select (arr!15616 a!3235) (index!18550 lt!230829)) (select (arr!15616 a!3235) j!176)))))

(assert (=> b!505911 (and (bvslt (x!47582 lt!230829) #b01111111111111111111111111111110) (or (= (select (arr!15616 a!3235) (index!18550 lt!230829)) (select (arr!15616 a!3235) j!176)) (= (select (arr!15616 a!3235) (index!18550 lt!230829)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15616 a!3235) (index!18550 lt!230829)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505912 () Bool)

(declare-fun res!307052 () Bool)

(declare-fun e!296130 () Bool)

(assert (=> b!505912 (=> (not res!307052) (not e!296130))))

(declare-datatypes ((List!9827 0))(
  ( (Nil!9824) (Cons!9823 (h!10700 (_ BitVec 64)) (t!16063 List!9827)) )
))
(declare-fun arrayNoDuplicates!0 (array!32478 (_ BitVec 32) List!9827) Bool)

(assert (=> b!505912 (= res!307052 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9824))))

(declare-fun b!505913 () Bool)

(declare-fun res!307053 () Bool)

(assert (=> b!505913 (=> res!307053 e!296133)))

(assert (=> b!505913 (= res!307053 e!296132)))

(declare-fun res!307055 () Bool)

(assert (=> b!505913 (=> (not res!307055) (not e!296132))))

(assert (=> b!505913 (= res!307055 (bvsgt #b00000000000000000000000000000000 (x!47582 lt!230829)))))

(declare-fun b!505914 () Bool)

(declare-fun Unit!15452 () Unit!15450)

(assert (=> b!505914 (= e!296129 Unit!15452)))

(declare-fun lt!230833 () Unit!15450)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32478 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15450)

(assert (=> b!505914 (= lt!230833 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230830 #b00000000000000000000000000000000 (index!18550 lt!230829) (x!47582 lt!230829) mask!3524))))

(declare-fun lt!230836 () array!32478)

(declare-fun lt!230834 () (_ BitVec 64))

(declare-fun res!307046 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32478 (_ BitVec 32)) SeekEntryResult!4090)

(assert (=> b!505914 (= res!307046 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230830 lt!230834 lt!230836 mask!3524) (Intermediate!4090 false (index!18550 lt!230829) (x!47582 lt!230829))))))

(assert (=> b!505914 (=> (not res!307046) (not e!296131))))

(assert (=> b!505914 e!296131))

(declare-fun b!505915 () Bool)

(assert (=> b!505915 (= e!296130 (not e!296134))))

(declare-fun res!307050 () Bool)

(assert (=> b!505915 (=> res!307050 e!296134)))

(declare-fun lt!230832 () SeekEntryResult!4090)

(get-info :version)

(assert (=> b!505915 (= res!307050 (or (= lt!230829 lt!230832) (undefined!4902 lt!230829) (not ((_ is Intermediate!4090) lt!230829))))))

(declare-fun lt!230831 () (_ BitVec 32))

(assert (=> b!505915 (= lt!230832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230831 lt!230834 lt!230836 mask!3524))))

(assert (=> b!505915 (= lt!230829 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230830 (select (arr!15616 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505915 (= lt!230831 (toIndex!0 lt!230834 mask!3524))))

(assert (=> b!505915 (= lt!230834 (select (store (arr!15616 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!505915 (= lt!230830 (toIndex!0 (select (arr!15616 a!3235) j!176) mask!3524))))

(assert (=> b!505915 (= lt!230836 (array!32479 (store (arr!15616 a!3235) i!1204 k0!2280) (size!15980 a!3235)))))

(assert (=> b!505915 (= lt!230828 (Found!4090 j!176))))

(declare-fun e!296127 () Bool)

(assert (=> b!505915 e!296127))

(declare-fun res!307047 () Bool)

(assert (=> b!505915 (=> (not res!307047) (not e!296127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32478 (_ BitVec 32)) Bool)

(assert (=> b!505915 (= res!307047 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230837 () Unit!15450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15450)

(assert (=> b!505915 (= lt!230837 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505916 () Bool)

(declare-fun res!307044 () Bool)

(assert (=> b!505916 (=> (not res!307044) (not e!296126))))

(declare-fun arrayContainsKey!0 (array!32478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505916 (= res!307044 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505917 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32478 (_ BitVec 32)) SeekEntryResult!4090)

(assert (=> b!505917 (= e!296127 (= (seekEntryOrOpen!0 (select (arr!15616 a!3235) j!176) a!3235 mask!3524) (Found!4090 j!176)))))

(declare-fun b!505918 () Bool)

(declare-fun res!307058 () Bool)

(assert (=> b!505918 (=> (not res!307058) (not e!296126))))

(assert (=> b!505918 (= res!307058 (and (= (size!15980 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15980 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15980 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505919 () Bool)

(declare-fun res!307045 () Bool)

(assert (=> b!505919 (=> res!307045 e!296133)))

(assert (=> b!505919 (= res!307045 (not (= lt!230832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230830 lt!230834 lt!230836 mask!3524))))))

(declare-fun b!505920 () Bool)

(declare-fun Unit!15453 () Unit!15450)

(assert (=> b!505920 (= e!296129 Unit!15453)))

(declare-fun b!505921 () Bool)

(assert (=> b!505921 (= e!296133 true)))

(assert (=> b!505921 (= (seekEntryOrOpen!0 lt!230834 lt!230836 mask!3524) lt!230828)))

(declare-fun lt!230840 () Unit!15450)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32478 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15450)

(assert (=> b!505921 (= lt!230840 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230830 #b00000000000000000000000000000000 (index!18550 lt!230829) (x!47582 lt!230829) mask!3524))))

(declare-fun b!505922 () Bool)

(declare-fun res!307049 () Bool)

(assert (=> b!505922 (=> (not res!307049) (not e!296126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505922 (= res!307049 (validKeyInArray!0 k0!2280))))

(declare-fun b!505923 () Bool)

(declare-fun res!307048 () Bool)

(assert (=> b!505923 (=> (not res!307048) (not e!296126))))

(assert (=> b!505923 (= res!307048 (validKeyInArray!0 (select (arr!15616 a!3235) j!176)))))

(declare-fun b!505924 () Bool)

(declare-fun res!307054 () Bool)

(assert (=> b!505924 (=> (not res!307054) (not e!296130))))

(assert (=> b!505924 (= res!307054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505925 () Bool)

(assert (=> b!505925 (= e!296126 e!296130)))

(declare-fun res!307051 () Bool)

(assert (=> b!505925 (=> (not res!307051) (not e!296130))))

(declare-fun lt!230835 () SeekEntryResult!4090)

(assert (=> b!505925 (= res!307051 (or (= lt!230835 (MissingZero!4090 i!1204)) (= lt!230835 (MissingVacant!4090 i!1204))))))

(assert (=> b!505925 (= lt!230835 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45762 res!307056) b!505918))

(assert (= (and b!505918 res!307058) b!505923))

(assert (= (and b!505923 res!307048) b!505922))

(assert (= (and b!505922 res!307049) b!505916))

(assert (= (and b!505916 res!307044) b!505925))

(assert (= (and b!505925 res!307051) b!505924))

(assert (= (and b!505924 res!307054) b!505912))

(assert (= (and b!505912 res!307052) b!505915))

(assert (= (and b!505915 res!307047) b!505917))

(assert (= (and b!505915 (not res!307050)) b!505911))

(assert (= (and b!505911 c!59711) b!505914))

(assert (= (and b!505911 (not c!59711)) b!505920))

(assert (= (and b!505914 res!307046) b!505910))

(assert (= (and b!505911 (not res!307057)) b!505913))

(assert (= (and b!505913 res!307055) b!505909))

(assert (= (and b!505913 (not res!307053)) b!505919))

(assert (= (and b!505919 (not res!307045)) b!505921))

(declare-fun m!486597 () Bool)

(assert (=> b!505919 m!486597))

(declare-fun m!486599 () Bool)

(assert (=> b!505911 m!486599))

(declare-fun m!486601 () Bool)

(assert (=> b!505911 m!486601))

(declare-fun m!486603 () Bool)

(assert (=> b!505911 m!486603))

(declare-fun m!486605 () Bool)

(assert (=> b!505916 m!486605))

(assert (=> b!505915 m!486603))

(declare-fun m!486607 () Bool)

(assert (=> b!505915 m!486607))

(declare-fun m!486609 () Bool)

(assert (=> b!505915 m!486609))

(declare-fun m!486611 () Bool)

(assert (=> b!505915 m!486611))

(declare-fun m!486613 () Bool)

(assert (=> b!505915 m!486613))

(declare-fun m!486615 () Bool)

(assert (=> b!505915 m!486615))

(assert (=> b!505915 m!486603))

(declare-fun m!486617 () Bool)

(assert (=> b!505915 m!486617))

(assert (=> b!505915 m!486603))

(declare-fun m!486619 () Bool)

(assert (=> b!505915 m!486619))

(declare-fun m!486621 () Bool)

(assert (=> b!505915 m!486621))

(assert (=> b!505909 m!486603))

(assert (=> b!505909 m!486603))

(declare-fun m!486623 () Bool)

(assert (=> b!505909 m!486623))

(declare-fun m!486625 () Bool)

(assert (=> b!505912 m!486625))

(declare-fun m!486627 () Bool)

(assert (=> start!45762 m!486627))

(declare-fun m!486629 () Bool)

(assert (=> start!45762 m!486629))

(declare-fun m!486631 () Bool)

(assert (=> b!505921 m!486631))

(declare-fun m!486633 () Bool)

(assert (=> b!505921 m!486633))

(assert (=> b!505923 m!486603))

(assert (=> b!505923 m!486603))

(declare-fun m!486635 () Bool)

(assert (=> b!505923 m!486635))

(declare-fun m!486637 () Bool)

(assert (=> b!505914 m!486637))

(assert (=> b!505914 m!486597))

(assert (=> b!505917 m!486603))

(assert (=> b!505917 m!486603))

(declare-fun m!486639 () Bool)

(assert (=> b!505917 m!486639))

(declare-fun m!486641 () Bool)

(assert (=> b!505925 m!486641))

(declare-fun m!486643 () Bool)

(assert (=> b!505924 m!486643))

(declare-fun m!486645 () Bool)

(assert (=> b!505922 m!486645))

(check-sat (not start!45762) (not b!505909) (not b!505923) (not b!505925) (not b!505916) (not b!505917) (not b!505922) (not b!505911) (not b!505912) (not b!505924) (not b!505915) (not b!505919) (not b!505921) (not b!505914))
(check-sat)
