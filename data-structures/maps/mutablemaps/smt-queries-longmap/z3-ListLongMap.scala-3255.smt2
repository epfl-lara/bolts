; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45414 () Bool)

(assert start!45414)

(declare-fun b!498858 () Bool)

(declare-datatypes ((Unit!14898 0))(
  ( (Unit!14899) )
))
(declare-fun e!292358 () Unit!14898)

(declare-fun Unit!14900 () Unit!14898)

(assert (=> b!498858 (= e!292358 Unit!14900)))

(declare-fun b!498859 () Bool)

(declare-fun e!292360 () Bool)

(declare-fun e!292362 () Bool)

(assert (=> b!498859 (= e!292360 (not e!292362))))

(declare-fun res!301026 () Bool)

(assert (=> b!498859 (=> res!301026 e!292362)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3952 0))(
  ( (MissingZero!3952 (index!17990 (_ BitVec 32))) (Found!3952 (index!17991 (_ BitVec 32))) (Intermediate!3952 (undefined!4764 Bool) (index!17992 (_ BitVec 32)) (x!47064 (_ BitVec 32))) (Undefined!3952) (MissingVacant!3952 (index!17993 (_ BitVec 32))) )
))
(declare-fun lt!226153 () SeekEntryResult!3952)

(declare-datatypes ((array!32199 0))(
  ( (array!32200 (arr!15478 (Array (_ BitVec 32) (_ BitVec 64))) (size!15842 (_ BitVec 32))) )
))
(declare-fun lt!226155 () array!32199)

(declare-fun lt!226159 () (_ BitVec 64))

(declare-fun lt!226156 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32199 (_ BitVec 32)) SeekEntryResult!3952)

(assert (=> b!498859 (= res!301026 (= lt!226153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226156 lt!226159 lt!226155 mask!3524)))))

(declare-fun lt!226154 () (_ BitVec 32))

(declare-fun a!3235 () array!32199)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498859 (= lt!226153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226154 (select (arr!15478 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498859 (= lt!226156 (toIndex!0 lt!226159 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498859 (= lt!226159 (select (store (arr!15478 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498859 (= lt!226154 (toIndex!0 (select (arr!15478 a!3235) j!176) mask!3524))))

(assert (=> b!498859 (= lt!226155 (array!32200 (store (arr!15478 a!3235) i!1204 k0!2280) (size!15842 a!3235)))))

(declare-fun e!292356 () Bool)

(assert (=> b!498859 e!292356))

(declare-fun res!301028 () Bool)

(assert (=> b!498859 (=> (not res!301028) (not e!292356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32199 (_ BitVec 32)) Bool)

(assert (=> b!498859 (= res!301028 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226152 () Unit!14898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14898)

(assert (=> b!498859 (= lt!226152 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!301025 () Bool)

(declare-fun e!292357 () Bool)

(assert (=> start!45414 (=> (not res!301025) (not e!292357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45414 (= res!301025 (validMask!0 mask!3524))))

(assert (=> start!45414 e!292357))

(assert (=> start!45414 true))

(declare-fun array_inv!11252 (array!32199) Bool)

(assert (=> start!45414 (array_inv!11252 a!3235)))

(declare-fun b!498860 () Bool)

(declare-fun res!301031 () Bool)

(assert (=> b!498860 (=> (not res!301031) (not e!292360))))

(assert (=> b!498860 (= res!301031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498861 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32199 (_ BitVec 32)) SeekEntryResult!3952)

(assert (=> b!498861 (= e!292356 (= (seekEntryOrOpen!0 (select (arr!15478 a!3235) j!176) a!3235 mask!3524) (Found!3952 j!176)))))

(declare-fun b!498862 () Bool)

(declare-fun res!301029 () Bool)

(assert (=> b!498862 (=> (not res!301029) (not e!292360))))

(declare-datatypes ((List!9689 0))(
  ( (Nil!9686) (Cons!9685 (h!10559 (_ BitVec 64)) (t!15925 List!9689)) )
))
(declare-fun arrayNoDuplicates!0 (array!32199 (_ BitVec 32) List!9689) Bool)

(assert (=> b!498862 (= res!301029 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9686))))

(declare-fun b!498863 () Bool)

(declare-fun res!301022 () Bool)

(assert (=> b!498863 (=> (not res!301022) (not e!292357))))

(declare-fun arrayContainsKey!0 (array!32199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498863 (= res!301022 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498864 () Bool)

(declare-fun res!301032 () Bool)

(assert (=> b!498864 (=> res!301032 e!292362)))

(get-info :version)

(assert (=> b!498864 (= res!301032 (or (undefined!4764 lt!226153) (not ((_ is Intermediate!3952) lt!226153))))))

(declare-fun b!498865 () Bool)

(declare-fun e!292361 () Bool)

(assert (=> b!498865 (= e!292362 e!292361)))

(declare-fun res!301034 () Bool)

(assert (=> b!498865 (=> res!301034 e!292361)))

(assert (=> b!498865 (= res!301034 (or (bvsgt #b00000000000000000000000000000000 (x!47064 lt!226153)) (bvsgt (x!47064 lt!226153) #b01111111111111111111111111111110) (bvslt lt!226154 #b00000000000000000000000000000000) (bvsge lt!226154 (size!15842 a!3235)) (bvslt (index!17992 lt!226153) #b00000000000000000000000000000000) (bvsge (index!17992 lt!226153) (size!15842 a!3235)) (not (= lt!226153 (Intermediate!3952 false (index!17992 lt!226153) (x!47064 lt!226153))))))))

(assert (=> b!498865 (and (or (= (select (arr!15478 a!3235) (index!17992 lt!226153)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15478 a!3235) (index!17992 lt!226153)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15478 a!3235) (index!17992 lt!226153)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15478 a!3235) (index!17992 lt!226153)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226160 () Unit!14898)

(assert (=> b!498865 (= lt!226160 e!292358)))

(declare-fun c!59195 () Bool)

(assert (=> b!498865 (= c!59195 (= (select (arr!15478 a!3235) (index!17992 lt!226153)) (select (arr!15478 a!3235) j!176)))))

(assert (=> b!498865 (and (bvslt (x!47064 lt!226153) #b01111111111111111111111111111110) (or (= (select (arr!15478 a!3235) (index!17992 lt!226153)) (select (arr!15478 a!3235) j!176)) (= (select (arr!15478 a!3235) (index!17992 lt!226153)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15478 a!3235) (index!17992 lt!226153)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498866 () Bool)

(declare-fun res!301030 () Bool)

(assert (=> b!498866 (=> (not res!301030) (not e!292357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498866 (= res!301030 (validKeyInArray!0 (select (arr!15478 a!3235) j!176)))))

(declare-fun b!498867 () Bool)

(declare-fun Unit!14901 () Unit!14898)

(assert (=> b!498867 (= e!292358 Unit!14901)))

(declare-fun lt!226151 () Unit!14898)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32199 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14898)

(assert (=> b!498867 (= lt!226151 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226154 #b00000000000000000000000000000000 (index!17992 lt!226153) (x!47064 lt!226153) mask!3524))))

(declare-fun res!301023 () Bool)

(assert (=> b!498867 (= res!301023 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226154 lt!226159 lt!226155 mask!3524) (Intermediate!3952 false (index!17992 lt!226153) (x!47064 lt!226153))))))

(declare-fun e!292359 () Bool)

(assert (=> b!498867 (=> (not res!301023) (not e!292359))))

(assert (=> b!498867 e!292359))

(declare-fun b!498868 () Bool)

(assert (=> b!498868 (= e!292357 e!292360)))

(declare-fun res!301033 () Bool)

(assert (=> b!498868 (=> (not res!301033) (not e!292360))))

(declare-fun lt!226158 () SeekEntryResult!3952)

(assert (=> b!498868 (= res!301033 (or (= lt!226158 (MissingZero!3952 i!1204)) (= lt!226158 (MissingVacant!3952 i!1204))))))

(assert (=> b!498868 (= lt!226158 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!498869 () Bool)

(assert (=> b!498869 (= e!292361 true)))

(declare-fun lt!226157 () SeekEntryResult!3952)

(assert (=> b!498869 (= lt!226157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226154 lt!226159 lt!226155 mask!3524))))

(declare-fun b!498870 () Bool)

(declare-fun res!301024 () Bool)

(assert (=> b!498870 (=> (not res!301024) (not e!292357))))

(assert (=> b!498870 (= res!301024 (and (= (size!15842 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15842 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15842 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498871 () Bool)

(assert (=> b!498871 (= e!292359 false)))

(declare-fun b!498872 () Bool)

(declare-fun res!301027 () Bool)

(assert (=> b!498872 (=> (not res!301027) (not e!292357))))

(assert (=> b!498872 (= res!301027 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45414 res!301025) b!498870))

(assert (= (and b!498870 res!301024) b!498866))

(assert (= (and b!498866 res!301030) b!498872))

(assert (= (and b!498872 res!301027) b!498863))

(assert (= (and b!498863 res!301022) b!498868))

(assert (= (and b!498868 res!301033) b!498860))

(assert (= (and b!498860 res!301031) b!498862))

(assert (= (and b!498862 res!301029) b!498859))

(assert (= (and b!498859 res!301028) b!498861))

(assert (= (and b!498859 (not res!301026)) b!498864))

(assert (= (and b!498864 (not res!301032)) b!498865))

(assert (= (and b!498865 c!59195) b!498867))

(assert (= (and b!498865 (not c!59195)) b!498858))

(assert (= (and b!498867 res!301023) b!498871))

(assert (= (and b!498865 (not res!301034)) b!498869))

(declare-fun m!480121 () Bool)

(assert (=> b!498867 m!480121))

(declare-fun m!480123 () Bool)

(assert (=> b!498867 m!480123))

(declare-fun m!480125 () Bool)

(assert (=> b!498872 m!480125))

(declare-fun m!480127 () Bool)

(assert (=> b!498868 m!480127))

(declare-fun m!480129 () Bool)

(assert (=> b!498862 m!480129))

(declare-fun m!480131 () Bool)

(assert (=> b!498859 m!480131))

(declare-fun m!480133 () Bool)

(assert (=> b!498859 m!480133))

(declare-fun m!480135 () Bool)

(assert (=> b!498859 m!480135))

(declare-fun m!480137 () Bool)

(assert (=> b!498859 m!480137))

(assert (=> b!498859 m!480135))

(declare-fun m!480139 () Bool)

(assert (=> b!498859 m!480139))

(declare-fun m!480141 () Bool)

(assert (=> b!498859 m!480141))

(declare-fun m!480143 () Bool)

(assert (=> b!498859 m!480143))

(assert (=> b!498859 m!480135))

(declare-fun m!480145 () Bool)

(assert (=> b!498859 m!480145))

(declare-fun m!480147 () Bool)

(assert (=> b!498859 m!480147))

(declare-fun m!480149 () Bool)

(assert (=> b!498863 m!480149))

(assert (=> b!498861 m!480135))

(assert (=> b!498861 m!480135))

(declare-fun m!480151 () Bool)

(assert (=> b!498861 m!480151))

(assert (=> b!498866 m!480135))

(assert (=> b!498866 m!480135))

(declare-fun m!480153 () Bool)

(assert (=> b!498866 m!480153))

(assert (=> b!498869 m!480123))

(declare-fun m!480155 () Bool)

(assert (=> start!45414 m!480155))

(declare-fun m!480157 () Bool)

(assert (=> start!45414 m!480157))

(declare-fun m!480159 () Bool)

(assert (=> b!498865 m!480159))

(assert (=> b!498865 m!480135))

(declare-fun m!480161 () Bool)

(assert (=> b!498860 m!480161))

(check-sat (not b!498868) (not b!498862) (not b!498859) (not start!45414) (not b!498861) (not b!498866) (not b!498863) (not b!498867) (not b!498872) (not b!498869) (not b!498860))
(check-sat)
