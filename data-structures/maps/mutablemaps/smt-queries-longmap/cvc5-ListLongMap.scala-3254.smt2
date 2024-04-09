; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45406 () Bool)

(assert start!45406)

(declare-fun b!498678 () Bool)

(declare-fun res!300877 () Bool)

(declare-fun e!292263 () Bool)

(assert (=> b!498678 (=> (not res!300877) (not e!292263))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32191 0))(
  ( (array!32192 (arr!15474 (Array (_ BitVec 32) (_ BitVec 64))) (size!15838 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32191)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498678 (= res!300877 (and (= (size!15838 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15838 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15838 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498680 () Bool)

(declare-fun e!292265 () Bool)

(declare-fun e!292266 () Bool)

(assert (=> b!498680 (= e!292265 e!292266)))

(declare-fun res!300870 () Bool)

(assert (=> b!498680 (=> res!300870 e!292266)))

(declare-fun lt!226034 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3948 0))(
  ( (MissingZero!3948 (index!17974 (_ BitVec 32))) (Found!3948 (index!17975 (_ BitVec 32))) (Intermediate!3948 (undefined!4760 Bool) (index!17976 (_ BitVec 32)) (x!47052 (_ BitVec 32))) (Undefined!3948) (MissingVacant!3948 (index!17977 (_ BitVec 32))) )
))
(declare-fun lt!226031 () SeekEntryResult!3948)

(assert (=> b!498680 (= res!300870 (or (bvsgt #b00000000000000000000000000000000 (x!47052 lt!226031)) (bvsgt (x!47052 lt!226031) #b01111111111111111111111111111110) (bvslt lt!226034 #b00000000000000000000000000000000) (bvsge lt!226034 (size!15838 a!3235)) (bvslt (index!17976 lt!226031) #b00000000000000000000000000000000) (bvsge (index!17976 lt!226031) (size!15838 a!3235)) (not (= lt!226031 (Intermediate!3948 false (index!17976 lt!226031) (x!47052 lt!226031))))))))

(assert (=> b!498680 (and (or (= (select (arr!15474 a!3235) (index!17976 lt!226031)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15474 a!3235) (index!17976 lt!226031)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15474 a!3235) (index!17976 lt!226031)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15474 a!3235) (index!17976 lt!226031)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14882 0))(
  ( (Unit!14883) )
))
(declare-fun lt!226035 () Unit!14882)

(declare-fun e!292260 () Unit!14882)

(assert (=> b!498680 (= lt!226035 e!292260)))

(declare-fun c!59183 () Bool)

(assert (=> b!498680 (= c!59183 (= (select (arr!15474 a!3235) (index!17976 lt!226031)) (select (arr!15474 a!3235) j!176)))))

(assert (=> b!498680 (and (bvslt (x!47052 lt!226031) #b01111111111111111111111111111110) (or (= (select (arr!15474 a!3235) (index!17976 lt!226031)) (select (arr!15474 a!3235) j!176)) (= (select (arr!15474 a!3235) (index!17976 lt!226031)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15474 a!3235) (index!17976 lt!226031)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498681 () Bool)

(declare-fun res!300871 () Bool)

(declare-fun e!292261 () Bool)

(assert (=> b!498681 (=> (not res!300871) (not e!292261))))

(declare-datatypes ((List!9685 0))(
  ( (Nil!9682) (Cons!9681 (h!10555 (_ BitVec 64)) (t!15921 List!9685)) )
))
(declare-fun arrayNoDuplicates!0 (array!32191 (_ BitVec 32) List!9685) Bool)

(assert (=> b!498681 (= res!300871 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9682))))

(declare-fun b!498682 () Bool)

(declare-fun res!300878 () Bool)

(assert (=> b!498682 (=> (not res!300878) (not e!292263))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498682 (= res!300878 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498683 () Bool)

(declare-fun e!292264 () Bool)

(assert (=> b!498683 (= e!292264 false)))

(declare-fun b!498684 () Bool)

(declare-fun res!300867 () Bool)

(assert (=> b!498684 (=> (not res!300867) (not e!292263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498684 (= res!300867 (validKeyInArray!0 (select (arr!15474 a!3235) j!176)))))

(declare-fun b!498685 () Bool)

(assert (=> b!498685 (= e!292263 e!292261)))

(declare-fun res!300872 () Bool)

(assert (=> b!498685 (=> (not res!300872) (not e!292261))))

(declare-fun lt!226033 () SeekEntryResult!3948)

(assert (=> b!498685 (= res!300872 (or (= lt!226033 (MissingZero!3948 i!1204)) (= lt!226033 (MissingVacant!3948 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32191 (_ BitVec 32)) SeekEntryResult!3948)

(assert (=> b!498685 (= lt!226033 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498686 () Bool)

(declare-fun res!300876 () Bool)

(assert (=> b!498686 (=> res!300876 e!292265)))

(assert (=> b!498686 (= res!300876 (or (undefined!4760 lt!226031) (not (is-Intermediate!3948 lt!226031))))))

(declare-fun e!292267 () Bool)

(declare-fun b!498687 () Bool)

(assert (=> b!498687 (= e!292267 (= (seekEntryOrOpen!0 (select (arr!15474 a!3235) j!176) a!3235 mask!3524) (Found!3948 j!176)))))

(declare-fun b!498679 () Bool)

(declare-fun Unit!14884 () Unit!14882)

(assert (=> b!498679 (= e!292260 Unit!14884)))

(declare-fun lt!226039 () Unit!14882)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32191 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14882)

(assert (=> b!498679 (= lt!226039 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226034 #b00000000000000000000000000000000 (index!17976 lt!226031) (x!47052 lt!226031) mask!3524))))

(declare-fun lt!226038 () (_ BitVec 64))

(declare-fun lt!226032 () array!32191)

(declare-fun res!300875 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32191 (_ BitVec 32)) SeekEntryResult!3948)

(assert (=> b!498679 (= res!300875 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226034 lt!226038 lt!226032 mask!3524) (Intermediate!3948 false (index!17976 lt!226031) (x!47052 lt!226031))))))

(assert (=> b!498679 (=> (not res!300875) (not e!292264))))

(assert (=> b!498679 e!292264))

(declare-fun res!300873 () Bool)

(assert (=> start!45406 (=> (not res!300873) (not e!292263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45406 (= res!300873 (validMask!0 mask!3524))))

(assert (=> start!45406 e!292263))

(assert (=> start!45406 true))

(declare-fun array_inv!11248 (array!32191) Bool)

(assert (=> start!45406 (array_inv!11248 a!3235)))

(declare-fun b!498688 () Bool)

(assert (=> b!498688 (= e!292261 (not e!292265))))

(declare-fun res!300866 () Bool)

(assert (=> b!498688 (=> res!300866 e!292265)))

(declare-fun lt!226037 () (_ BitVec 32))

(assert (=> b!498688 (= res!300866 (= lt!226031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226037 lt!226038 lt!226032 mask!3524)))))

(assert (=> b!498688 (= lt!226031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226034 (select (arr!15474 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498688 (= lt!226037 (toIndex!0 lt!226038 mask!3524))))

(assert (=> b!498688 (= lt!226038 (select (store (arr!15474 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498688 (= lt!226034 (toIndex!0 (select (arr!15474 a!3235) j!176) mask!3524))))

(assert (=> b!498688 (= lt!226032 (array!32192 (store (arr!15474 a!3235) i!1204 k!2280) (size!15838 a!3235)))))

(assert (=> b!498688 e!292267))

(declare-fun res!300868 () Bool)

(assert (=> b!498688 (=> (not res!300868) (not e!292267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32191 (_ BitVec 32)) Bool)

(assert (=> b!498688 (= res!300868 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226040 () Unit!14882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32191 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14882)

(assert (=> b!498688 (= lt!226040 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498689 () Bool)

(assert (=> b!498689 (= e!292266 true)))

(declare-fun lt!226036 () SeekEntryResult!3948)

(assert (=> b!498689 (= lt!226036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226034 lt!226038 lt!226032 mask!3524))))

(declare-fun b!498690 () Bool)

(declare-fun res!300869 () Bool)

(assert (=> b!498690 (=> (not res!300869) (not e!292261))))

(assert (=> b!498690 (= res!300869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498691 () Bool)

(declare-fun Unit!14885 () Unit!14882)

(assert (=> b!498691 (= e!292260 Unit!14885)))

(declare-fun b!498692 () Bool)

(declare-fun res!300874 () Bool)

(assert (=> b!498692 (=> (not res!300874) (not e!292263))))

(assert (=> b!498692 (= res!300874 (validKeyInArray!0 k!2280))))

(assert (= (and start!45406 res!300873) b!498678))

(assert (= (and b!498678 res!300877) b!498684))

(assert (= (and b!498684 res!300867) b!498692))

(assert (= (and b!498692 res!300874) b!498682))

(assert (= (and b!498682 res!300878) b!498685))

(assert (= (and b!498685 res!300872) b!498690))

(assert (= (and b!498690 res!300869) b!498681))

(assert (= (and b!498681 res!300871) b!498688))

(assert (= (and b!498688 res!300868) b!498687))

(assert (= (and b!498688 (not res!300866)) b!498686))

(assert (= (and b!498686 (not res!300876)) b!498680))

(assert (= (and b!498680 c!59183) b!498679))

(assert (= (and b!498680 (not c!59183)) b!498691))

(assert (= (and b!498679 res!300875) b!498683))

(assert (= (and b!498680 (not res!300870)) b!498689))

(declare-fun m!479953 () Bool)

(assert (=> b!498692 m!479953))

(declare-fun m!479955 () Bool)

(assert (=> b!498688 m!479955))

(declare-fun m!479957 () Bool)

(assert (=> b!498688 m!479957))

(declare-fun m!479959 () Bool)

(assert (=> b!498688 m!479959))

(declare-fun m!479961 () Bool)

(assert (=> b!498688 m!479961))

(declare-fun m!479963 () Bool)

(assert (=> b!498688 m!479963))

(declare-fun m!479965 () Bool)

(assert (=> b!498688 m!479965))

(declare-fun m!479967 () Bool)

(assert (=> b!498688 m!479967))

(assert (=> b!498688 m!479963))

(declare-fun m!479969 () Bool)

(assert (=> b!498688 m!479969))

(assert (=> b!498688 m!479963))

(declare-fun m!479971 () Bool)

(assert (=> b!498688 m!479971))

(assert (=> b!498687 m!479963))

(assert (=> b!498687 m!479963))

(declare-fun m!479973 () Bool)

(assert (=> b!498687 m!479973))

(declare-fun m!479975 () Bool)

(assert (=> b!498690 m!479975))

(declare-fun m!479977 () Bool)

(assert (=> b!498681 m!479977))

(assert (=> b!498684 m!479963))

(assert (=> b!498684 m!479963))

(declare-fun m!479979 () Bool)

(assert (=> b!498684 m!479979))

(declare-fun m!479981 () Bool)

(assert (=> b!498679 m!479981))

(declare-fun m!479983 () Bool)

(assert (=> b!498679 m!479983))

(declare-fun m!479985 () Bool)

(assert (=> b!498685 m!479985))

(assert (=> b!498689 m!479983))

(declare-fun m!479987 () Bool)

(assert (=> b!498682 m!479987))

(declare-fun m!479989 () Bool)

(assert (=> b!498680 m!479989))

(assert (=> b!498680 m!479963))

(declare-fun m!479991 () Bool)

(assert (=> start!45406 m!479991))

(declare-fun m!479993 () Bool)

(assert (=> start!45406 m!479993))

(push 1)

