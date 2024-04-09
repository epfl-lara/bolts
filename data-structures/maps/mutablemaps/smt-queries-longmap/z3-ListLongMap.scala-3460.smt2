; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48042 () Bool)

(assert start!48042)

(declare-fun b!528980 () Bool)

(declare-fun e!308245 () Bool)

(declare-fun e!308250 () Bool)

(assert (=> b!528980 (= e!308245 e!308250)))

(declare-fun res!325040 () Bool)

(assert (=> b!528980 (=> (not res!325040) (not e!308250))))

(declare-datatypes ((SeekEntryResult!4567 0))(
  ( (MissingZero!4567 (index!20492 (_ BitVec 32))) (Found!4567 (index!20493 (_ BitVec 32))) (Intermediate!4567 (undefined!5379 Bool) (index!20494 (_ BitVec 32)) (x!49490 (_ BitVec 32))) (Undefined!4567) (MissingVacant!4567 (index!20495 (_ BitVec 32))) )
))
(declare-fun lt!243894 () SeekEntryResult!4567)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!528980 (= res!325040 (or (= lt!243894 (MissingZero!4567 i!1204)) (= lt!243894 (MissingVacant!4567 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33495 0))(
  ( (array!33496 (arr!16093 (Array (_ BitVec 32) (_ BitVec 64))) (size!16457 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33495)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33495 (_ BitVec 32)) SeekEntryResult!4567)

(assert (=> b!528980 (= lt!243894 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!528981 () Bool)

(declare-fun res!325029 () Bool)

(assert (=> b!528981 (=> (not res!325029) (not e!308245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528981 (= res!325029 (validKeyInArray!0 k0!2280))))

(declare-fun b!528982 () Bool)

(declare-fun res!325027 () Bool)

(assert (=> b!528982 (=> (not res!325027) (not e!308250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33495 (_ BitVec 32)) Bool)

(assert (=> b!528982 (= res!325027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528983 () Bool)

(declare-fun e!308246 () Bool)

(assert (=> b!528983 (= e!308250 (not e!308246))))

(declare-fun res!325035 () Bool)

(assert (=> b!528983 (=> res!325035 e!308246)))

(declare-fun lt!243890 () SeekEntryResult!4567)

(declare-fun lt!243893 () SeekEntryResult!4567)

(get-info :version)

(assert (=> b!528983 (= res!325035 (or (= lt!243890 lt!243893) (undefined!5379 lt!243890) (not ((_ is Intermediate!4567) lt!243890))))))

(declare-fun lt!243888 () (_ BitVec 32))

(declare-fun lt!243895 () array!33495)

(declare-fun lt!243887 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33495 (_ BitVec 32)) SeekEntryResult!4567)

(assert (=> b!528983 (= lt!243893 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243888 lt!243887 lt!243895 mask!3524))))

(declare-fun lt!243884 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!528983 (= lt!243890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243884 (select (arr!16093 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528983 (= lt!243888 (toIndex!0 lt!243887 mask!3524))))

(assert (=> b!528983 (= lt!243887 (select (store (arr!16093 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!528983 (= lt!243884 (toIndex!0 (select (arr!16093 a!3235) j!176) mask!3524))))

(assert (=> b!528983 (= lt!243895 (array!33496 (store (arr!16093 a!3235) i!1204 k0!2280) (size!16457 a!3235)))))

(declare-fun lt!243889 () SeekEntryResult!4567)

(declare-fun lt!243882 () SeekEntryResult!4567)

(assert (=> b!528983 (= lt!243889 lt!243882)))

(assert (=> b!528983 (= lt!243882 (Found!4567 j!176))))

(assert (=> b!528983 (= lt!243889 (seekEntryOrOpen!0 (select (arr!16093 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!528983 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!16734 0))(
  ( (Unit!16735) )
))
(declare-fun lt!243886 () Unit!16734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33495 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16734)

(assert (=> b!528983 (= lt!243886 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528984 () Bool)

(declare-fun e!308244 () Bool)

(assert (=> b!528984 (= e!308246 e!308244)))

(declare-fun res!325039 () Bool)

(assert (=> b!528984 (=> res!325039 e!308244)))

(assert (=> b!528984 (= res!325039 (or (bvsgt (x!49490 lt!243890) #b01111111111111111111111111111110) (bvslt lt!243884 #b00000000000000000000000000000000) (bvsge lt!243884 (size!16457 a!3235)) (bvslt (index!20494 lt!243890) #b00000000000000000000000000000000) (bvsge (index!20494 lt!243890) (size!16457 a!3235)) (not (= lt!243890 (Intermediate!4567 false (index!20494 lt!243890) (x!49490 lt!243890))))))))

(assert (=> b!528984 (= (index!20494 lt!243890) i!1204)))

(declare-fun lt!243891 () Unit!16734)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33495 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16734)

(assert (=> b!528984 (= lt!243891 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243884 #b00000000000000000000000000000000 (index!20494 lt!243890) (x!49490 lt!243890) mask!3524))))

(assert (=> b!528984 (and (or (= (select (arr!16093 a!3235) (index!20494 lt!243890)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16093 a!3235) (index!20494 lt!243890)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16093 a!3235) (index!20494 lt!243890)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16093 a!3235) (index!20494 lt!243890)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243883 () Unit!16734)

(declare-fun e!308247 () Unit!16734)

(assert (=> b!528984 (= lt!243883 e!308247)))

(declare-fun c!62285 () Bool)

(assert (=> b!528984 (= c!62285 (= (select (arr!16093 a!3235) (index!20494 lt!243890)) (select (arr!16093 a!3235) j!176)))))

(assert (=> b!528984 (and (bvslt (x!49490 lt!243890) #b01111111111111111111111111111110) (or (= (select (arr!16093 a!3235) (index!20494 lt!243890)) (select (arr!16093 a!3235) j!176)) (= (select (arr!16093 a!3235) (index!20494 lt!243890)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16093 a!3235) (index!20494 lt!243890)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528985 () Bool)

(declare-fun res!325032 () Bool)

(assert (=> b!528985 (=> (not res!325032) (not e!308245))))

(assert (=> b!528985 (= res!325032 (and (= (size!16457 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16457 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16457 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528986 () Bool)

(declare-fun res!325036 () Bool)

(assert (=> b!528986 (=> (not res!325036) (not e!308250))))

(declare-datatypes ((List!10304 0))(
  ( (Nil!10301) (Cons!10300 (h!11237 (_ BitVec 64)) (t!16540 List!10304)) )
))
(declare-fun arrayNoDuplicates!0 (array!33495 (_ BitVec 32) List!10304) Bool)

(assert (=> b!528986 (= res!325036 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10301))))

(declare-fun b!528987 () Bool)

(declare-fun e!308251 () Bool)

(assert (=> b!528987 (= e!308251 false)))

(declare-fun res!325038 () Bool)

(assert (=> start!48042 (=> (not res!325038) (not e!308245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48042 (= res!325038 (validMask!0 mask!3524))))

(assert (=> start!48042 e!308245))

(assert (=> start!48042 true))

(declare-fun array_inv!11867 (array!33495) Bool)

(assert (=> start!48042 (array_inv!11867 a!3235)))

(declare-fun b!528988 () Bool)

(declare-fun res!325031 () Bool)

(assert (=> b!528988 (=> res!325031 e!308244)))

(declare-fun e!308249 () Bool)

(assert (=> b!528988 (= res!325031 e!308249)))

(declare-fun res!325037 () Bool)

(assert (=> b!528988 (=> (not res!325037) (not e!308249))))

(assert (=> b!528988 (= res!325037 (bvsgt #b00000000000000000000000000000000 (x!49490 lt!243890)))))

(declare-fun b!528989 () Bool)

(declare-fun lt!243896 () SeekEntryResult!4567)

(assert (=> b!528989 (= e!308244 (= lt!243889 lt!243896))))

(assert (=> b!528989 (= lt!243896 lt!243882)))

(assert (=> b!528989 (= lt!243896 (seekEntryOrOpen!0 lt!243887 lt!243895 mask!3524))))

(declare-fun lt!243892 () Unit!16734)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33495 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16734)

(assert (=> b!528989 (= lt!243892 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!243884 #b00000000000000000000000000000000 (index!20494 lt!243890) (x!49490 lt!243890) mask!3524))))

(declare-fun b!528990 () Bool)

(declare-fun Unit!16736 () Unit!16734)

(assert (=> b!528990 (= e!308247 Unit!16736)))

(declare-fun b!528991 () Bool)

(declare-fun res!325033 () Bool)

(assert (=> b!528991 (=> (not res!325033) (not e!308245))))

(assert (=> b!528991 (= res!325033 (validKeyInArray!0 (select (arr!16093 a!3235) j!176)))))

(declare-fun b!528992 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33495 (_ BitVec 32)) SeekEntryResult!4567)

(assert (=> b!528992 (= e!308249 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243884 (index!20494 lt!243890) (select (arr!16093 a!3235) j!176) a!3235 mask!3524) lt!243882)))))

(declare-fun b!528993 () Bool)

(declare-fun Unit!16737 () Unit!16734)

(assert (=> b!528993 (= e!308247 Unit!16737)))

(declare-fun lt!243885 () Unit!16734)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33495 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16734)

(assert (=> b!528993 (= lt!243885 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243884 #b00000000000000000000000000000000 (index!20494 lt!243890) (x!49490 lt!243890) mask!3524))))

(declare-fun res!325034 () Bool)

(assert (=> b!528993 (= res!325034 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243884 lt!243887 lt!243895 mask!3524) (Intermediate!4567 false (index!20494 lt!243890) (x!49490 lt!243890))))))

(assert (=> b!528993 (=> (not res!325034) (not e!308251))))

(assert (=> b!528993 e!308251))

(declare-fun b!528994 () Bool)

(declare-fun res!325030 () Bool)

(assert (=> b!528994 (=> res!325030 e!308244)))

(assert (=> b!528994 (= res!325030 (not (= lt!243893 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243884 lt!243887 lt!243895 mask!3524))))))

(declare-fun b!528995 () Bool)

(declare-fun res!325028 () Bool)

(assert (=> b!528995 (=> (not res!325028) (not e!308245))))

(declare-fun arrayContainsKey!0 (array!33495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528995 (= res!325028 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!48042 res!325038) b!528985))

(assert (= (and b!528985 res!325032) b!528991))

(assert (= (and b!528991 res!325033) b!528981))

(assert (= (and b!528981 res!325029) b!528995))

(assert (= (and b!528995 res!325028) b!528980))

(assert (= (and b!528980 res!325040) b!528982))

(assert (= (and b!528982 res!325027) b!528986))

(assert (= (and b!528986 res!325036) b!528983))

(assert (= (and b!528983 (not res!325035)) b!528984))

(assert (= (and b!528984 c!62285) b!528993))

(assert (= (and b!528984 (not c!62285)) b!528990))

(assert (= (and b!528993 res!325034) b!528987))

(assert (= (and b!528984 (not res!325039)) b!528988))

(assert (= (and b!528988 res!325037) b!528992))

(assert (= (and b!528988 (not res!325031)) b!528994))

(assert (= (and b!528994 (not res!325030)) b!528989))

(declare-fun m!509547 () Bool)

(assert (=> b!528992 m!509547))

(assert (=> b!528992 m!509547))

(declare-fun m!509549 () Bool)

(assert (=> b!528992 m!509549))

(assert (=> b!528991 m!509547))

(assert (=> b!528991 m!509547))

(declare-fun m!509551 () Bool)

(assert (=> b!528991 m!509551))

(declare-fun m!509553 () Bool)

(assert (=> b!528994 m!509553))

(declare-fun m!509555 () Bool)

(assert (=> b!528982 m!509555))

(declare-fun m!509557 () Bool)

(assert (=> b!528986 m!509557))

(declare-fun m!509559 () Bool)

(assert (=> b!528980 m!509559))

(declare-fun m!509561 () Bool)

(assert (=> b!528993 m!509561))

(assert (=> b!528993 m!509553))

(declare-fun m!509563 () Bool)

(assert (=> b!528995 m!509563))

(declare-fun m!509565 () Bool)

(assert (=> b!528983 m!509565))

(declare-fun m!509567 () Bool)

(assert (=> b!528983 m!509567))

(declare-fun m!509569 () Bool)

(assert (=> b!528983 m!509569))

(declare-fun m!509571 () Bool)

(assert (=> b!528983 m!509571))

(assert (=> b!528983 m!509547))

(declare-fun m!509573 () Bool)

(assert (=> b!528983 m!509573))

(assert (=> b!528983 m!509547))

(declare-fun m!509575 () Bool)

(assert (=> b!528983 m!509575))

(assert (=> b!528983 m!509547))

(declare-fun m!509577 () Bool)

(assert (=> b!528983 m!509577))

(declare-fun m!509579 () Bool)

(assert (=> b!528983 m!509579))

(assert (=> b!528983 m!509547))

(declare-fun m!509581 () Bool)

(assert (=> b!528983 m!509581))

(declare-fun m!509583 () Bool)

(assert (=> b!528984 m!509583))

(declare-fun m!509585 () Bool)

(assert (=> b!528984 m!509585))

(assert (=> b!528984 m!509547))

(declare-fun m!509587 () Bool)

(assert (=> start!48042 m!509587))

(declare-fun m!509589 () Bool)

(assert (=> start!48042 m!509589))

(declare-fun m!509591 () Bool)

(assert (=> b!528989 m!509591))

(declare-fun m!509593 () Bool)

(assert (=> b!528989 m!509593))

(declare-fun m!509595 () Bool)

(assert (=> b!528981 m!509595))

(check-sat (not b!528986) (not b!528980) (not b!528993) (not b!528992) (not b!528981) (not b!528984) (not start!48042) (not b!528991) (not b!528994) (not b!528995) (not b!528989) (not b!528983) (not b!528982))
(check-sat)
