; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47450 () Bool)

(assert start!47450)

(declare-fun b!522013 () Bool)

(declare-fun res!319853 () Bool)

(declare-fun e!304493 () Bool)

(assert (=> b!522013 (=> (not res!319853) (not e!304493))))

(declare-datatypes ((array!33236 0))(
  ( (array!33237 (arr!15971 (Array (_ BitVec 32) (_ BitVec 64))) (size!16335 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33236)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33236 (_ BitVec 32)) Bool)

(assert (=> b!522013 (= res!319853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522014 () Bool)

(declare-fun res!319858 () Bool)

(declare-fun e!304494 () Bool)

(assert (=> b!522014 (=> (not res!319858) (not e!304494))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522014 (= res!319858 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522015 () Bool)

(declare-fun res!319860 () Bool)

(declare-fun e!304492 () Bool)

(assert (=> b!522015 (=> res!319860 e!304492)))

(declare-datatypes ((SeekEntryResult!4445 0))(
  ( (MissingZero!4445 (index!19983 (_ BitVec 32))) (Found!4445 (index!19984 (_ BitVec 32))) (Intermediate!4445 (undefined!5257 Bool) (index!19985 (_ BitVec 32)) (x!48986 (_ BitVec 32))) (Undefined!4445) (MissingVacant!4445 (index!19986 (_ BitVec 32))) )
))
(declare-fun lt!239423 () SeekEntryResult!4445)

(assert (=> b!522015 (= res!319860 (or (undefined!5257 lt!239423) (not (is-Intermediate!4445 lt!239423))))))

(declare-fun res!319854 () Bool)

(assert (=> start!47450 (=> (not res!319854) (not e!304494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47450 (= res!319854 (validMask!0 mask!3524))))

(assert (=> start!47450 e!304494))

(assert (=> start!47450 true))

(declare-fun array_inv!11745 (array!33236) Bool)

(assert (=> start!47450 (array_inv!11745 a!3235)))

(declare-fun b!522016 () Bool)

(assert (=> b!522016 (= e!304493 (not e!304492))))

(declare-fun res!319857 () Bool)

(assert (=> b!522016 (=> res!319857 e!304492)))

(declare-fun lt!239416 () (_ BitVec 64))

(declare-fun lt!239415 () array!33236)

(declare-fun lt!239421 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33236 (_ BitVec 32)) SeekEntryResult!4445)

(assert (=> b!522016 (= res!319857 (= lt!239423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239421 lt!239416 lt!239415 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239422 () (_ BitVec 32))

(assert (=> b!522016 (= lt!239423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239422 (select (arr!15971 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522016 (= lt!239421 (toIndex!0 lt!239416 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!522016 (= lt!239416 (select (store (arr!15971 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522016 (= lt!239422 (toIndex!0 (select (arr!15971 a!3235) j!176) mask!3524))))

(assert (=> b!522016 (= lt!239415 (array!33237 (store (arr!15971 a!3235) i!1204 k!2280) (size!16335 a!3235)))))

(declare-fun e!304498 () Bool)

(assert (=> b!522016 e!304498))

(declare-fun res!319862 () Bool)

(assert (=> b!522016 (=> (not res!319862) (not e!304498))))

(assert (=> b!522016 (= res!319862 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16246 0))(
  ( (Unit!16247) )
))
(declare-fun lt!239419 () Unit!16246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33236 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16246)

(assert (=> b!522016 (= lt!239419 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522017 () Bool)

(assert (=> b!522017 (= e!304494 e!304493)))

(declare-fun res!319856 () Bool)

(assert (=> b!522017 (=> (not res!319856) (not e!304493))))

(declare-fun lt!239417 () SeekEntryResult!4445)

(assert (=> b!522017 (= res!319856 (or (= lt!239417 (MissingZero!4445 i!1204)) (= lt!239417 (MissingVacant!4445 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33236 (_ BitVec 32)) SeekEntryResult!4445)

(assert (=> b!522017 (= lt!239417 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522018 () Bool)

(declare-fun res!319851 () Bool)

(assert (=> b!522018 (=> (not res!319851) (not e!304494))))

(assert (=> b!522018 (= res!319851 (and (= (size!16335 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16335 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16335 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522019 () Bool)

(declare-fun res!319852 () Bool)

(assert (=> b!522019 (=> (not res!319852) (not e!304494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522019 (= res!319852 (validKeyInArray!0 (select (arr!15971 a!3235) j!176)))))

(declare-fun b!522020 () Bool)

(declare-fun res!319855 () Bool)

(assert (=> b!522020 (=> (not res!319855) (not e!304493))))

(declare-datatypes ((List!10182 0))(
  ( (Nil!10179) (Cons!10178 (h!11100 (_ BitVec 64)) (t!16418 List!10182)) )
))
(declare-fun arrayNoDuplicates!0 (array!33236 (_ BitVec 32) List!10182) Bool)

(assert (=> b!522020 (= res!319855 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10179))))

(declare-fun b!522021 () Bool)

(declare-fun e!304496 () Unit!16246)

(declare-fun Unit!16248 () Unit!16246)

(assert (=> b!522021 (= e!304496 Unit!16248)))

(declare-fun lt!239420 () Unit!16246)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33236 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16246)

(assert (=> b!522021 (= lt!239420 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239422 #b00000000000000000000000000000000 (index!19985 lt!239423) (x!48986 lt!239423) mask!3524))))

(declare-fun res!319861 () Bool)

(assert (=> b!522021 (= res!319861 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239422 lt!239416 lt!239415 mask!3524) (Intermediate!4445 false (index!19985 lt!239423) (x!48986 lt!239423))))))

(declare-fun e!304497 () Bool)

(assert (=> b!522021 (=> (not res!319861) (not e!304497))))

(assert (=> b!522021 e!304497))

(declare-fun b!522022 () Bool)

(assert (=> b!522022 (= e!304498 (= (seekEntryOrOpen!0 (select (arr!15971 a!3235) j!176) a!3235 mask!3524) (Found!4445 j!176)))))

(declare-fun b!522023 () Bool)

(assert (=> b!522023 (= e!304492 true)))

(assert (=> b!522023 (and (or (= (select (arr!15971 a!3235) (index!19985 lt!239423)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15971 a!3235) (index!19985 lt!239423)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15971 a!3235) (index!19985 lt!239423)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15971 a!3235) (index!19985 lt!239423)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239418 () Unit!16246)

(assert (=> b!522023 (= lt!239418 e!304496)))

(declare-fun c!61382 () Bool)

(assert (=> b!522023 (= c!61382 (= (select (arr!15971 a!3235) (index!19985 lt!239423)) (select (arr!15971 a!3235) j!176)))))

(assert (=> b!522023 (and (bvslt (x!48986 lt!239423) #b01111111111111111111111111111110) (or (= (select (arr!15971 a!3235) (index!19985 lt!239423)) (select (arr!15971 a!3235) j!176)) (= (select (arr!15971 a!3235) (index!19985 lt!239423)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15971 a!3235) (index!19985 lt!239423)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522024 () Bool)

(declare-fun Unit!16249 () Unit!16246)

(assert (=> b!522024 (= e!304496 Unit!16249)))

(declare-fun b!522025 () Bool)

(assert (=> b!522025 (= e!304497 false)))

(declare-fun b!522026 () Bool)

(declare-fun res!319859 () Bool)

(assert (=> b!522026 (=> (not res!319859) (not e!304494))))

(assert (=> b!522026 (= res!319859 (validKeyInArray!0 k!2280))))

(assert (= (and start!47450 res!319854) b!522018))

(assert (= (and b!522018 res!319851) b!522019))

(assert (= (and b!522019 res!319852) b!522026))

(assert (= (and b!522026 res!319859) b!522014))

(assert (= (and b!522014 res!319858) b!522017))

(assert (= (and b!522017 res!319856) b!522013))

(assert (= (and b!522013 res!319853) b!522020))

(assert (= (and b!522020 res!319855) b!522016))

(assert (= (and b!522016 res!319862) b!522022))

(assert (= (and b!522016 (not res!319857)) b!522015))

(assert (= (and b!522015 (not res!319860)) b!522023))

(assert (= (and b!522023 c!61382) b!522021))

(assert (= (and b!522023 (not c!61382)) b!522024))

(assert (= (and b!522021 res!319861) b!522025))

(declare-fun m!502963 () Bool)

(assert (=> b!522014 m!502963))

(declare-fun m!502965 () Bool)

(assert (=> b!522016 m!502965))

(declare-fun m!502967 () Bool)

(assert (=> b!522016 m!502967))

(declare-fun m!502969 () Bool)

(assert (=> b!522016 m!502969))

(declare-fun m!502971 () Bool)

(assert (=> b!522016 m!502971))

(declare-fun m!502973 () Bool)

(assert (=> b!522016 m!502973))

(assert (=> b!522016 m!502971))

(declare-fun m!502975 () Bool)

(assert (=> b!522016 m!502975))

(declare-fun m!502977 () Bool)

(assert (=> b!522016 m!502977))

(assert (=> b!522016 m!502971))

(declare-fun m!502979 () Bool)

(assert (=> b!522016 m!502979))

(declare-fun m!502981 () Bool)

(assert (=> b!522016 m!502981))

(assert (=> b!522022 m!502971))

(assert (=> b!522022 m!502971))

(declare-fun m!502983 () Bool)

(assert (=> b!522022 m!502983))

(declare-fun m!502985 () Bool)

(assert (=> start!47450 m!502985))

(declare-fun m!502987 () Bool)

(assert (=> start!47450 m!502987))

(declare-fun m!502989 () Bool)

(assert (=> b!522023 m!502989))

(assert (=> b!522023 m!502971))

(assert (=> b!522019 m!502971))

(assert (=> b!522019 m!502971))

(declare-fun m!502991 () Bool)

(assert (=> b!522019 m!502991))

(declare-fun m!502993 () Bool)

(assert (=> b!522021 m!502993))

(declare-fun m!502995 () Bool)

(assert (=> b!522021 m!502995))

(declare-fun m!502997 () Bool)

(assert (=> b!522020 m!502997))

(declare-fun m!502999 () Bool)

(assert (=> b!522017 m!502999))

(declare-fun m!503001 () Bool)

(assert (=> b!522026 m!503001))

(declare-fun m!503003 () Bool)

(assert (=> b!522013 m!503003))

(push 1)

