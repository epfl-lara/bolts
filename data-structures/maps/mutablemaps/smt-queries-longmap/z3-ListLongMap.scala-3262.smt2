; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45456 () Bool)

(assert start!45456)

(declare-fun b!499803 () Bool)

(declare-fun res!301847 () Bool)

(declare-fun e!292865 () Bool)

(assert (=> b!499803 (=> (not res!301847) (not e!292865))))

(declare-datatypes ((array!32241 0))(
  ( (array!32242 (arr!15499 (Array (_ BitVec 32) (_ BitVec 64))) (size!15863 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32241)

(declare-datatypes ((List!9710 0))(
  ( (Nil!9707) (Cons!9706 (h!10580 (_ BitVec 64)) (t!15946 List!9710)) )
))
(declare-fun arrayNoDuplicates!0 (array!32241 (_ BitVec 32) List!9710) Bool)

(assert (=> b!499803 (= res!301847 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9707))))

(declare-fun e!292867 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!499804 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3973 0))(
  ( (MissingZero!3973 (index!18074 (_ BitVec 32))) (Found!3973 (index!18075 (_ BitVec 32))) (Intermediate!3973 (undefined!4785 Bool) (index!18076 (_ BitVec 32)) (x!47141 (_ BitVec 32))) (Undefined!3973) (MissingVacant!3973 (index!18077 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32241 (_ BitVec 32)) SeekEntryResult!3973)

(assert (=> b!499804 (= e!292867 (= (seekEntryOrOpen!0 (select (arr!15499 a!3235) j!176) a!3235 mask!3524) (Found!3973 j!176)))))

(declare-fun b!499805 () Bool)

(declare-fun e!292864 () Bool)

(declare-fun e!292862 () Bool)

(assert (=> b!499805 (= e!292864 e!292862)))

(declare-fun res!301845 () Bool)

(assert (=> b!499805 (=> res!301845 e!292862)))

(declare-fun lt!226785 () (_ BitVec 32))

(declare-fun lt!226782 () SeekEntryResult!3973)

(assert (=> b!499805 (= res!301845 (or (bvsgt #b00000000000000000000000000000000 (x!47141 lt!226782)) (bvsgt (x!47141 lt!226782) #b01111111111111111111111111111110) (bvslt lt!226785 #b00000000000000000000000000000000) (bvsge lt!226785 (size!15863 a!3235)) (bvslt (index!18076 lt!226782) #b00000000000000000000000000000000) (bvsge (index!18076 lt!226782) (size!15863 a!3235)) (not (= lt!226782 (Intermediate!3973 false (index!18076 lt!226782) (x!47141 lt!226782))))))))

(assert (=> b!499805 (and (or (= (select (arr!15499 a!3235) (index!18076 lt!226782)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15499 a!3235) (index!18076 lt!226782)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15499 a!3235) (index!18076 lt!226782)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15499 a!3235) (index!18076 lt!226782)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14982 0))(
  ( (Unit!14983) )
))
(declare-fun lt!226783 () Unit!14982)

(declare-fun e!292863 () Unit!14982)

(assert (=> b!499805 (= lt!226783 e!292863)))

(declare-fun c!59258 () Bool)

(assert (=> b!499805 (= c!59258 (= (select (arr!15499 a!3235) (index!18076 lt!226782)) (select (arr!15499 a!3235) j!176)))))

(assert (=> b!499805 (and (bvslt (x!47141 lt!226782) #b01111111111111111111111111111110) (or (= (select (arr!15499 a!3235) (index!18076 lt!226782)) (select (arr!15499 a!3235) j!176)) (= (select (arr!15499 a!3235) (index!18076 lt!226782)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15499 a!3235) (index!18076 lt!226782)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499806 () Bool)

(declare-fun Unit!14984 () Unit!14982)

(assert (=> b!499806 (= e!292863 Unit!14984)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!226784 () Unit!14982)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32241 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14982)

(assert (=> b!499806 (= lt!226784 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226785 #b00000000000000000000000000000000 (index!18076 lt!226782) (x!47141 lt!226782) mask!3524))))

(declare-fun lt!226788 () array!32241)

(declare-fun lt!226786 () (_ BitVec 64))

(declare-fun res!301841 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32241 (_ BitVec 32)) SeekEntryResult!3973)

(assert (=> b!499806 (= res!301841 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226785 lt!226786 lt!226788 mask!3524) (Intermediate!3973 false (index!18076 lt!226782) (x!47141 lt!226782))))))

(declare-fun e!292861 () Bool)

(assert (=> b!499806 (=> (not res!301841) (not e!292861))))

(assert (=> b!499806 e!292861))

(declare-fun b!499807 () Bool)

(declare-fun res!301848 () Bool)

(declare-fun e!292860 () Bool)

(assert (=> b!499807 (=> (not res!301848) (not e!292860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499807 (= res!301848 (validKeyInArray!0 k0!2280))))

(declare-fun b!499808 () Bool)

(declare-fun res!301844 () Bool)

(assert (=> b!499808 (=> (not res!301844) (not e!292865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32241 (_ BitVec 32)) Bool)

(assert (=> b!499808 (= res!301844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499809 () Bool)

(assert (=> b!499809 (= e!292860 e!292865)))

(declare-fun res!301842 () Bool)

(assert (=> b!499809 (=> (not res!301842) (not e!292865))))

(declare-fun lt!226790 () SeekEntryResult!3973)

(assert (=> b!499809 (= res!301842 (or (= lt!226790 (MissingZero!3973 i!1204)) (= lt!226790 (MissingVacant!3973 i!1204))))))

(assert (=> b!499809 (= lt!226790 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!499811 () Bool)

(declare-fun res!301850 () Bool)

(assert (=> b!499811 (=> (not res!301850) (not e!292860))))

(assert (=> b!499811 (= res!301850 (and (= (size!15863 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15863 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15863 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499812 () Bool)

(assert (=> b!499812 (= e!292865 (not e!292864))))

(declare-fun res!301851 () Bool)

(assert (=> b!499812 (=> res!301851 e!292864)))

(declare-fun lt!226787 () (_ BitVec 32))

(assert (=> b!499812 (= res!301851 (= lt!226782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226787 lt!226786 lt!226788 mask!3524)))))

(assert (=> b!499812 (= lt!226782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226785 (select (arr!15499 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499812 (= lt!226787 (toIndex!0 lt!226786 mask!3524))))

(assert (=> b!499812 (= lt!226786 (select (store (arr!15499 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!499812 (= lt!226785 (toIndex!0 (select (arr!15499 a!3235) j!176) mask!3524))))

(assert (=> b!499812 (= lt!226788 (array!32242 (store (arr!15499 a!3235) i!1204 k0!2280) (size!15863 a!3235)))))

(assert (=> b!499812 e!292867))

(declare-fun res!301846 () Bool)

(assert (=> b!499812 (=> (not res!301846) (not e!292867))))

(assert (=> b!499812 (= res!301846 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226789 () Unit!14982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32241 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14982)

(assert (=> b!499812 (= lt!226789 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499813 () Bool)

(assert (=> b!499813 (= e!292861 false)))

(declare-fun b!499814 () Bool)

(declare-fun res!301849 () Bool)

(assert (=> b!499814 (=> res!301849 e!292864)))

(get-info :version)

(assert (=> b!499814 (= res!301849 (or (undefined!4785 lt!226782) (not ((_ is Intermediate!3973) lt!226782))))))

(declare-fun b!499815 () Bool)

(declare-fun res!301853 () Bool)

(assert (=> b!499815 (=> (not res!301853) (not e!292860))))

(assert (=> b!499815 (= res!301853 (validKeyInArray!0 (select (arr!15499 a!3235) j!176)))))

(declare-fun b!499816 () Bool)

(assert (=> b!499816 (= e!292862 true)))

(declare-fun lt!226781 () SeekEntryResult!3973)

(assert (=> b!499816 (= lt!226781 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226785 lt!226786 lt!226788 mask!3524))))

(declare-fun b!499817 () Bool)

(declare-fun res!301852 () Bool)

(assert (=> b!499817 (=> (not res!301852) (not e!292860))))

(declare-fun arrayContainsKey!0 (array!32241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499817 (= res!301852 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499810 () Bool)

(declare-fun Unit!14985 () Unit!14982)

(assert (=> b!499810 (= e!292863 Unit!14985)))

(declare-fun res!301843 () Bool)

(assert (=> start!45456 (=> (not res!301843) (not e!292860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45456 (= res!301843 (validMask!0 mask!3524))))

(assert (=> start!45456 e!292860))

(assert (=> start!45456 true))

(declare-fun array_inv!11273 (array!32241) Bool)

(assert (=> start!45456 (array_inv!11273 a!3235)))

(assert (= (and start!45456 res!301843) b!499811))

(assert (= (and b!499811 res!301850) b!499815))

(assert (= (and b!499815 res!301853) b!499807))

(assert (= (and b!499807 res!301848) b!499817))

(assert (= (and b!499817 res!301852) b!499809))

(assert (= (and b!499809 res!301842) b!499808))

(assert (= (and b!499808 res!301844) b!499803))

(assert (= (and b!499803 res!301847) b!499812))

(assert (= (and b!499812 res!301846) b!499804))

(assert (= (and b!499812 (not res!301851)) b!499814))

(assert (= (and b!499814 (not res!301849)) b!499805))

(assert (= (and b!499805 c!59258) b!499806))

(assert (= (and b!499805 (not c!59258)) b!499810))

(assert (= (and b!499806 res!301841) b!499813))

(assert (= (and b!499805 (not res!301845)) b!499816))

(declare-fun m!481003 () Bool)

(assert (=> b!499807 m!481003))

(declare-fun m!481005 () Bool)

(assert (=> b!499805 m!481005))

(declare-fun m!481007 () Bool)

(assert (=> b!499805 m!481007))

(declare-fun m!481009 () Bool)

(assert (=> b!499809 m!481009))

(assert (=> b!499815 m!481007))

(assert (=> b!499815 m!481007))

(declare-fun m!481011 () Bool)

(assert (=> b!499815 m!481011))

(declare-fun m!481013 () Bool)

(assert (=> b!499817 m!481013))

(declare-fun m!481015 () Bool)

(assert (=> b!499812 m!481015))

(declare-fun m!481017 () Bool)

(assert (=> b!499812 m!481017))

(assert (=> b!499812 m!481007))

(declare-fun m!481019 () Bool)

(assert (=> b!499812 m!481019))

(assert (=> b!499812 m!481007))

(declare-fun m!481021 () Bool)

(assert (=> b!499812 m!481021))

(declare-fun m!481023 () Bool)

(assert (=> b!499812 m!481023))

(declare-fun m!481025 () Bool)

(assert (=> b!499812 m!481025))

(assert (=> b!499812 m!481007))

(declare-fun m!481027 () Bool)

(assert (=> b!499812 m!481027))

(declare-fun m!481029 () Bool)

(assert (=> b!499812 m!481029))

(assert (=> b!499804 m!481007))

(assert (=> b!499804 m!481007))

(declare-fun m!481031 () Bool)

(assert (=> b!499804 m!481031))

(declare-fun m!481033 () Bool)

(assert (=> b!499808 m!481033))

(declare-fun m!481035 () Bool)

(assert (=> b!499803 m!481035))

(declare-fun m!481037 () Bool)

(assert (=> b!499806 m!481037))

(declare-fun m!481039 () Bool)

(assert (=> b!499806 m!481039))

(assert (=> b!499816 m!481039))

(declare-fun m!481041 () Bool)

(assert (=> start!45456 m!481041))

(declare-fun m!481043 () Bool)

(assert (=> start!45456 m!481043))

(check-sat (not b!499812) (not b!499816) (not b!499817) (not b!499803) (not b!499804) (not b!499808) (not b!499807) (not b!499806) (not b!499809) (not start!45456) (not b!499815))
(check-sat)
