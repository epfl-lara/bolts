; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45408 () Bool)

(assert start!45408)

(declare-fun b!498723 () Bool)

(declare-fun res!300909 () Bool)

(declare-fun e!292286 () Bool)

(assert (=> b!498723 (=> (not res!300909) (not e!292286))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498723 (= res!300909 (validKeyInArray!0 k0!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!292285 () Bool)

(declare-datatypes ((array!32193 0))(
  ( (array!32194 (arr!15475 (Array (_ BitVec 32) (_ BitVec 64))) (size!15839 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32193)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!498724 () Bool)

(declare-datatypes ((SeekEntryResult!3949 0))(
  ( (MissingZero!3949 (index!17978 (_ BitVec 32))) (Found!3949 (index!17979 (_ BitVec 32))) (Intermediate!3949 (undefined!4761 Bool) (index!17980 (_ BitVec 32)) (x!47053 (_ BitVec 32))) (Undefined!3949) (MissingVacant!3949 (index!17981 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32193 (_ BitVec 32)) SeekEntryResult!3949)

(assert (=> b!498724 (= e!292285 (= (seekEntryOrOpen!0 (select (arr!15475 a!3235) j!176) a!3235 mask!3524) (Found!3949 j!176)))))

(declare-fun b!498725 () Bool)

(declare-datatypes ((Unit!14886 0))(
  ( (Unit!14887) )
))
(declare-fun e!292290 () Unit!14886)

(declare-fun Unit!14888 () Unit!14886)

(assert (=> b!498725 (= e!292290 Unit!14888)))

(declare-fun b!498726 () Bool)

(declare-fun res!300905 () Bool)

(declare-fun e!292291 () Bool)

(assert (=> b!498726 (=> (not res!300905) (not e!292291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32193 (_ BitVec 32)) Bool)

(assert (=> b!498726 (= res!300905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498727 () Bool)

(declare-fun e!292289 () Bool)

(assert (=> b!498727 (= e!292289 true)))

(declare-fun lt!226066 () array!32193)

(declare-fun lt!226064 () (_ BitVec 64))

(declare-fun lt!226068 () (_ BitVec 32))

(declare-fun lt!226062 () SeekEntryResult!3949)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32193 (_ BitVec 32)) SeekEntryResult!3949)

(assert (=> b!498727 (= lt!226062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226068 lt!226064 lt!226066 mask!3524))))

(declare-fun b!498728 () Bool)

(declare-fun res!300915 () Bool)

(declare-fun e!292284 () Bool)

(assert (=> b!498728 (=> res!300915 e!292284)))

(declare-fun lt!226063 () SeekEntryResult!3949)

(get-info :version)

(assert (=> b!498728 (= res!300915 (or (undefined!4761 lt!226063) (not ((_ is Intermediate!3949) lt!226063))))))

(declare-fun b!498729 () Bool)

(declare-fun res!300911 () Bool)

(assert (=> b!498729 (=> (not res!300911) (not e!292286))))

(declare-fun arrayContainsKey!0 (array!32193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498729 (= res!300911 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498730 () Bool)

(declare-fun e!292287 () Bool)

(assert (=> b!498730 (= e!292287 false)))

(declare-fun b!498731 () Bool)

(declare-fun res!300908 () Bool)

(assert (=> b!498731 (=> (not res!300908) (not e!292291))))

(declare-datatypes ((List!9686 0))(
  ( (Nil!9683) (Cons!9682 (h!10556 (_ BitVec 64)) (t!15922 List!9686)) )
))
(declare-fun arrayNoDuplicates!0 (array!32193 (_ BitVec 32) List!9686) Bool)

(assert (=> b!498731 (= res!300908 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9683))))

(declare-fun res!300907 () Bool)

(assert (=> start!45408 (=> (not res!300907) (not e!292286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45408 (= res!300907 (validMask!0 mask!3524))))

(assert (=> start!45408 e!292286))

(assert (=> start!45408 true))

(declare-fun array_inv!11249 (array!32193) Bool)

(assert (=> start!45408 (array_inv!11249 a!3235)))

(declare-fun b!498732 () Bool)

(assert (=> b!498732 (= e!292291 (not e!292284))))

(declare-fun res!300912 () Bool)

(assert (=> b!498732 (=> res!300912 e!292284)))

(declare-fun lt!226069 () (_ BitVec 32))

(assert (=> b!498732 (= res!300912 (= lt!226063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226069 lt!226064 lt!226066 mask!3524)))))

(assert (=> b!498732 (= lt!226063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226068 (select (arr!15475 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498732 (= lt!226069 (toIndex!0 lt!226064 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498732 (= lt!226064 (select (store (arr!15475 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498732 (= lt!226068 (toIndex!0 (select (arr!15475 a!3235) j!176) mask!3524))))

(assert (=> b!498732 (= lt!226066 (array!32194 (store (arr!15475 a!3235) i!1204 k0!2280) (size!15839 a!3235)))))

(assert (=> b!498732 e!292285))

(declare-fun res!300916 () Bool)

(assert (=> b!498732 (=> (not res!300916) (not e!292285))))

(assert (=> b!498732 (= res!300916 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226065 () Unit!14886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14886)

(assert (=> b!498732 (= lt!226065 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498733 () Bool)

(declare-fun res!300917 () Bool)

(assert (=> b!498733 (=> (not res!300917) (not e!292286))))

(assert (=> b!498733 (= res!300917 (and (= (size!15839 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15839 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15839 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498734 () Bool)

(assert (=> b!498734 (= e!292284 e!292289)))

(declare-fun res!300914 () Bool)

(assert (=> b!498734 (=> res!300914 e!292289)))

(assert (=> b!498734 (= res!300914 (or (bvsgt #b00000000000000000000000000000000 (x!47053 lt!226063)) (bvsgt (x!47053 lt!226063) #b01111111111111111111111111111110) (bvslt lt!226068 #b00000000000000000000000000000000) (bvsge lt!226068 (size!15839 a!3235)) (bvslt (index!17980 lt!226063) #b00000000000000000000000000000000) (bvsge (index!17980 lt!226063) (size!15839 a!3235)) (not (= lt!226063 (Intermediate!3949 false (index!17980 lt!226063) (x!47053 lt!226063))))))))

(assert (=> b!498734 (and (or (= (select (arr!15475 a!3235) (index!17980 lt!226063)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15475 a!3235) (index!17980 lt!226063)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15475 a!3235) (index!17980 lt!226063)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15475 a!3235) (index!17980 lt!226063)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226067 () Unit!14886)

(assert (=> b!498734 (= lt!226067 e!292290)))

(declare-fun c!59186 () Bool)

(assert (=> b!498734 (= c!59186 (= (select (arr!15475 a!3235) (index!17980 lt!226063)) (select (arr!15475 a!3235) j!176)))))

(assert (=> b!498734 (and (bvslt (x!47053 lt!226063) #b01111111111111111111111111111110) (or (= (select (arr!15475 a!3235) (index!17980 lt!226063)) (select (arr!15475 a!3235) j!176)) (= (select (arr!15475 a!3235) (index!17980 lt!226063)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15475 a!3235) (index!17980 lt!226063)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498735 () Bool)

(declare-fun res!300910 () Bool)

(assert (=> b!498735 (=> (not res!300910) (not e!292286))))

(assert (=> b!498735 (= res!300910 (validKeyInArray!0 (select (arr!15475 a!3235) j!176)))))

(declare-fun b!498736 () Bool)

(assert (=> b!498736 (= e!292286 e!292291)))

(declare-fun res!300913 () Bool)

(assert (=> b!498736 (=> (not res!300913) (not e!292291))))

(declare-fun lt!226061 () SeekEntryResult!3949)

(assert (=> b!498736 (= res!300913 (or (= lt!226061 (MissingZero!3949 i!1204)) (= lt!226061 (MissingVacant!3949 i!1204))))))

(assert (=> b!498736 (= lt!226061 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!498737 () Bool)

(declare-fun Unit!14889 () Unit!14886)

(assert (=> b!498737 (= e!292290 Unit!14889)))

(declare-fun lt!226070 () Unit!14886)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32193 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14886)

(assert (=> b!498737 (= lt!226070 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226068 #b00000000000000000000000000000000 (index!17980 lt!226063) (x!47053 lt!226063) mask!3524))))

(declare-fun res!300906 () Bool)

(assert (=> b!498737 (= res!300906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226068 lt!226064 lt!226066 mask!3524) (Intermediate!3949 false (index!17980 lt!226063) (x!47053 lt!226063))))))

(assert (=> b!498737 (=> (not res!300906) (not e!292287))))

(assert (=> b!498737 e!292287))

(assert (= (and start!45408 res!300907) b!498733))

(assert (= (and b!498733 res!300917) b!498735))

(assert (= (and b!498735 res!300910) b!498723))

(assert (= (and b!498723 res!300909) b!498729))

(assert (= (and b!498729 res!300911) b!498736))

(assert (= (and b!498736 res!300913) b!498726))

(assert (= (and b!498726 res!300905) b!498731))

(assert (= (and b!498731 res!300908) b!498732))

(assert (= (and b!498732 res!300916) b!498724))

(assert (= (and b!498732 (not res!300912)) b!498728))

(assert (= (and b!498728 (not res!300915)) b!498734))

(assert (= (and b!498734 c!59186) b!498737))

(assert (= (and b!498734 (not c!59186)) b!498725))

(assert (= (and b!498737 res!300906) b!498730))

(assert (= (and b!498734 (not res!300914)) b!498727))

(declare-fun m!479995 () Bool)

(assert (=> b!498723 m!479995))

(declare-fun m!479997 () Bool)

(assert (=> b!498729 m!479997))

(declare-fun m!479999 () Bool)

(assert (=> b!498737 m!479999))

(declare-fun m!480001 () Bool)

(assert (=> b!498737 m!480001))

(declare-fun m!480003 () Bool)

(assert (=> b!498735 m!480003))

(assert (=> b!498735 m!480003))

(declare-fun m!480005 () Bool)

(assert (=> b!498735 m!480005))

(declare-fun m!480007 () Bool)

(assert (=> start!45408 m!480007))

(declare-fun m!480009 () Bool)

(assert (=> start!45408 m!480009))

(declare-fun m!480011 () Bool)

(assert (=> b!498736 m!480011))

(declare-fun m!480013 () Bool)

(assert (=> b!498732 m!480013))

(declare-fun m!480015 () Bool)

(assert (=> b!498732 m!480015))

(declare-fun m!480017 () Bool)

(assert (=> b!498732 m!480017))

(declare-fun m!480019 () Bool)

(assert (=> b!498732 m!480019))

(assert (=> b!498732 m!480003))

(declare-fun m!480021 () Bool)

(assert (=> b!498732 m!480021))

(assert (=> b!498732 m!480003))

(declare-fun m!480023 () Bool)

(assert (=> b!498732 m!480023))

(assert (=> b!498732 m!480003))

(declare-fun m!480025 () Bool)

(assert (=> b!498732 m!480025))

(declare-fun m!480027 () Bool)

(assert (=> b!498732 m!480027))

(declare-fun m!480029 () Bool)

(assert (=> b!498734 m!480029))

(assert (=> b!498734 m!480003))

(declare-fun m!480031 () Bool)

(assert (=> b!498731 m!480031))

(assert (=> b!498727 m!480001))

(declare-fun m!480033 () Bool)

(assert (=> b!498726 m!480033))

(assert (=> b!498724 m!480003))

(assert (=> b!498724 m!480003))

(declare-fun m!480035 () Bool)

(assert (=> b!498724 m!480035))

(check-sat (not b!498727) (not b!498731) (not b!498726) (not b!498737) (not b!498729) (not b!498724) (not start!45408) (not b!498723) (not b!498736) (not b!498735) (not b!498732))
(check-sat)
