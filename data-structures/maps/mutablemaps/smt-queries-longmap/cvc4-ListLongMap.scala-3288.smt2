; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45686 () Bool)

(assert start!45686)

(declare-fun b!503971 () Bool)

(declare-fun res!305338 () Bool)

(declare-fun e!295100 () Bool)

(assert (=> b!503971 (=> res!305338 e!295100)))

(declare-fun e!295103 () Bool)

(assert (=> b!503971 (= res!305338 e!295103)))

(declare-fun res!305341 () Bool)

(assert (=> b!503971 (=> (not res!305341) (not e!295103))))

(declare-datatypes ((SeekEntryResult!4052 0))(
  ( (MissingZero!4052 (index!18396 (_ BitVec 32))) (Found!4052 (index!18397 (_ BitVec 32))) (Intermediate!4052 (undefined!4864 Bool) (index!18398 (_ BitVec 32)) (x!47440 (_ BitVec 32))) (Undefined!4052) (MissingVacant!4052 (index!18399 (_ BitVec 32))) )
))
(declare-fun lt!229457 () SeekEntryResult!4052)

(assert (=> b!503971 (= res!305341 (bvsgt #b00000000000000000000000000000000 (x!47440 lt!229457)))))

(declare-fun b!503972 () Bool)

(declare-fun e!295104 () Bool)

(declare-fun e!295102 () Bool)

(assert (=> b!503972 (= e!295104 e!295102)))

(declare-fun res!305335 () Bool)

(assert (=> b!503972 (=> (not res!305335) (not e!295102))))

(declare-fun lt!229464 () SeekEntryResult!4052)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503972 (= res!305335 (or (= lt!229464 (MissingZero!4052 i!1204)) (= lt!229464 (MissingVacant!4052 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32402 0))(
  ( (array!32403 (arr!15578 (Array (_ BitVec 32) (_ BitVec 64))) (size!15942 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32402)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32402 (_ BitVec 32)) SeekEntryResult!4052)

(assert (=> b!503972 (= lt!229464 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503973 () Bool)

(declare-fun lt!229461 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32402 (_ BitVec 32)) SeekEntryResult!4052)

(assert (=> b!503973 (= e!295103 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229461 (index!18398 lt!229457) (select (arr!15578 a!3235) j!176) a!3235 mask!3524) (Found!4052 j!176))))))

(declare-fun b!503975 () Bool)

(declare-fun res!305343 () Bool)

(declare-fun e!295106 () Bool)

(assert (=> b!503975 (=> res!305343 e!295106)))

(assert (=> b!503975 (= res!305343 (or (undefined!4864 lt!229457) (not (is-Intermediate!4052 lt!229457))))))

(declare-fun b!503976 () Bool)

(assert (=> b!503976 (= e!295106 e!295100)))

(declare-fun res!305346 () Bool)

(assert (=> b!503976 (=> res!305346 e!295100)))

(assert (=> b!503976 (= res!305346 (or (bvsgt (x!47440 lt!229457) #b01111111111111111111111111111110) (bvslt lt!229461 #b00000000000000000000000000000000) (bvsge lt!229461 (size!15942 a!3235)) (bvslt (index!18398 lt!229457) #b00000000000000000000000000000000) (bvsge (index!18398 lt!229457) (size!15942 a!3235)) (not (= lt!229457 (Intermediate!4052 false (index!18398 lt!229457) (x!47440 lt!229457))))))))

(assert (=> b!503976 (= (index!18398 lt!229457) i!1204)))

(declare-datatypes ((Unit!15298 0))(
  ( (Unit!15299) )
))
(declare-fun lt!229456 () Unit!15298)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32402 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15298)

(assert (=> b!503976 (= lt!229456 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229461 #b00000000000000000000000000000000 (index!18398 lt!229457) (x!47440 lt!229457) mask!3524))))

(assert (=> b!503976 (and (or (= (select (arr!15578 a!3235) (index!18398 lt!229457)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15578 a!3235) (index!18398 lt!229457)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15578 a!3235) (index!18398 lt!229457)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15578 a!3235) (index!18398 lt!229457)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229458 () Unit!15298)

(declare-fun e!295101 () Unit!15298)

(assert (=> b!503976 (= lt!229458 e!295101)))

(declare-fun c!59597 () Bool)

(assert (=> b!503976 (= c!59597 (= (select (arr!15578 a!3235) (index!18398 lt!229457)) (select (arr!15578 a!3235) j!176)))))

(assert (=> b!503976 (and (bvslt (x!47440 lt!229457) #b01111111111111111111111111111110) (or (= (select (arr!15578 a!3235) (index!18398 lt!229457)) (select (arr!15578 a!3235) j!176)) (= (select (arr!15578 a!3235) (index!18398 lt!229457)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15578 a!3235) (index!18398 lt!229457)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503977 () Bool)

(assert (=> b!503977 (= e!295100 true)))

(declare-fun lt!229463 () (_ BitVec 64))

(declare-fun lt!229466 () array!32402)

(declare-fun lt!229460 () SeekEntryResult!4052)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32402 (_ BitVec 32)) SeekEntryResult!4052)

(assert (=> b!503977 (= lt!229460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229461 lt!229463 lt!229466 mask!3524))))

(declare-fun b!503978 () Bool)

(declare-fun res!305344 () Bool)

(assert (=> b!503978 (=> (not res!305344) (not e!295104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503978 (= res!305344 (validKeyInArray!0 k!2280))))

(declare-fun b!503979 () Bool)

(declare-fun res!305336 () Bool)

(assert (=> b!503979 (=> (not res!305336) (not e!295104))))

(assert (=> b!503979 (= res!305336 (validKeyInArray!0 (select (arr!15578 a!3235) j!176)))))

(declare-fun b!503980 () Bool)

(declare-fun e!295108 () Bool)

(assert (=> b!503980 (= e!295108 false)))

(declare-fun b!503981 () Bool)

(declare-fun res!305348 () Bool)

(assert (=> b!503981 (=> (not res!305348) (not e!295104))))

(assert (=> b!503981 (= res!305348 (and (= (size!15942 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15942 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15942 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503982 () Bool)

(declare-fun res!305337 () Bool)

(assert (=> b!503982 (=> (not res!305337) (not e!295104))))

(declare-fun arrayContainsKey!0 (array!32402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503982 (= res!305337 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503983 () Bool)

(declare-fun Unit!15300 () Unit!15298)

(assert (=> b!503983 (= e!295101 Unit!15300)))

(declare-fun b!503984 () Bool)

(declare-fun Unit!15301 () Unit!15298)

(assert (=> b!503984 (= e!295101 Unit!15301)))

(declare-fun lt!229465 () Unit!15298)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32402 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15298)

(assert (=> b!503984 (= lt!229465 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229461 #b00000000000000000000000000000000 (index!18398 lt!229457) (x!47440 lt!229457) mask!3524))))

(declare-fun res!305340 () Bool)

(assert (=> b!503984 (= res!305340 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229461 lt!229463 lt!229466 mask!3524) (Intermediate!4052 false (index!18398 lt!229457) (x!47440 lt!229457))))))

(assert (=> b!503984 (=> (not res!305340) (not e!295108))))

(assert (=> b!503984 e!295108))

(declare-fun b!503985 () Bool)

(assert (=> b!503985 (= e!295102 (not e!295106))))

(declare-fun res!305345 () Bool)

(assert (=> b!503985 (=> res!305345 e!295106)))

(declare-fun lt!229459 () (_ BitVec 32))

(assert (=> b!503985 (= res!305345 (= lt!229457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229459 lt!229463 lt!229466 mask!3524)))))

(assert (=> b!503985 (= lt!229457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229461 (select (arr!15578 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503985 (= lt!229459 (toIndex!0 lt!229463 mask!3524))))

(assert (=> b!503985 (= lt!229463 (select (store (arr!15578 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503985 (= lt!229461 (toIndex!0 (select (arr!15578 a!3235) j!176) mask!3524))))

(assert (=> b!503985 (= lt!229466 (array!32403 (store (arr!15578 a!3235) i!1204 k!2280) (size!15942 a!3235)))))

(declare-fun e!295105 () Bool)

(assert (=> b!503985 e!295105))

(declare-fun res!305339 () Bool)

(assert (=> b!503985 (=> (not res!305339) (not e!295105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32402 (_ BitVec 32)) Bool)

(assert (=> b!503985 (= res!305339 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229462 () Unit!15298)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32402 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15298)

(assert (=> b!503985 (= lt!229462 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!305334 () Bool)

(assert (=> start!45686 (=> (not res!305334) (not e!295104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45686 (= res!305334 (validMask!0 mask!3524))))

(assert (=> start!45686 e!295104))

(assert (=> start!45686 true))

(declare-fun array_inv!11352 (array!32402) Bool)

(assert (=> start!45686 (array_inv!11352 a!3235)))

(declare-fun b!503974 () Bool)

(declare-fun res!305342 () Bool)

(assert (=> b!503974 (=> (not res!305342) (not e!295102))))

(assert (=> b!503974 (= res!305342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503986 () Bool)

(declare-fun res!305347 () Bool)

(assert (=> b!503986 (=> (not res!305347) (not e!295102))))

(declare-datatypes ((List!9789 0))(
  ( (Nil!9786) (Cons!9785 (h!10662 (_ BitVec 64)) (t!16025 List!9789)) )
))
(declare-fun arrayNoDuplicates!0 (array!32402 (_ BitVec 32) List!9789) Bool)

(assert (=> b!503986 (= res!305347 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9786))))

(declare-fun b!503987 () Bool)

(assert (=> b!503987 (= e!295105 (= (seekEntryOrOpen!0 (select (arr!15578 a!3235) j!176) a!3235 mask!3524) (Found!4052 j!176)))))

(assert (= (and start!45686 res!305334) b!503981))

(assert (= (and b!503981 res!305348) b!503979))

(assert (= (and b!503979 res!305336) b!503978))

(assert (= (and b!503978 res!305344) b!503982))

(assert (= (and b!503982 res!305337) b!503972))

(assert (= (and b!503972 res!305335) b!503974))

(assert (= (and b!503974 res!305342) b!503986))

(assert (= (and b!503986 res!305347) b!503985))

(assert (= (and b!503985 res!305339) b!503987))

(assert (= (and b!503985 (not res!305345)) b!503975))

(assert (= (and b!503975 (not res!305343)) b!503976))

(assert (= (and b!503976 c!59597) b!503984))

(assert (= (and b!503976 (not c!59597)) b!503983))

(assert (= (and b!503984 res!305340) b!503980))

(assert (= (and b!503976 (not res!305346)) b!503971))

(assert (= (and b!503971 res!305341) b!503973))

(assert (= (and b!503971 (not res!305338)) b!503977))

(declare-fun m!484773 () Bool)

(assert (=> b!503984 m!484773))

(declare-fun m!484775 () Bool)

(assert (=> b!503984 m!484775))

(declare-fun m!484777 () Bool)

(assert (=> b!503972 m!484777))

(declare-fun m!484779 () Bool)

(assert (=> b!503986 m!484779))

(assert (=> b!503977 m!484775))

(declare-fun m!484781 () Bool)

(assert (=> b!503974 m!484781))

(declare-fun m!484783 () Bool)

(assert (=> b!503976 m!484783))

(declare-fun m!484785 () Bool)

(assert (=> b!503976 m!484785))

(declare-fun m!484787 () Bool)

(assert (=> b!503976 m!484787))

(assert (=> b!503973 m!484787))

(assert (=> b!503973 m!484787))

(declare-fun m!484789 () Bool)

(assert (=> b!503973 m!484789))

(assert (=> b!503987 m!484787))

(assert (=> b!503987 m!484787))

(declare-fun m!484791 () Bool)

(assert (=> b!503987 m!484791))

(declare-fun m!484793 () Bool)

(assert (=> b!503978 m!484793))

(declare-fun m!484795 () Bool)

(assert (=> start!45686 m!484795))

(declare-fun m!484797 () Bool)

(assert (=> start!45686 m!484797))

(assert (=> b!503979 m!484787))

(assert (=> b!503979 m!484787))

(declare-fun m!484799 () Bool)

(assert (=> b!503979 m!484799))

(declare-fun m!484801 () Bool)

(assert (=> b!503982 m!484801))

(declare-fun m!484803 () Bool)

(assert (=> b!503985 m!484803))

(declare-fun m!484805 () Bool)

(assert (=> b!503985 m!484805))

(declare-fun m!484807 () Bool)

(assert (=> b!503985 m!484807))

(declare-fun m!484809 () Bool)

(assert (=> b!503985 m!484809))

(assert (=> b!503985 m!484787))

(declare-fun m!484811 () Bool)

(assert (=> b!503985 m!484811))

(assert (=> b!503985 m!484787))

(declare-fun m!484813 () Bool)

(assert (=> b!503985 m!484813))

(assert (=> b!503985 m!484787))

(declare-fun m!484815 () Bool)

(assert (=> b!503985 m!484815))

(declare-fun m!484817 () Bool)

(assert (=> b!503985 m!484817))

(push 1)

