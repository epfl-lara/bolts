; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47800 () Bool)

(assert start!47800)

(declare-fun b!526195 () Bool)

(declare-fun e!306733 () Bool)

(declare-fun e!306732 () Bool)

(assert (=> b!526195 (= e!306733 (not e!306732))))

(declare-fun res!322984 () Bool)

(assert (=> b!526195 (=> res!322984 e!306732)))

(declare-datatypes ((array!33397 0))(
  ( (array!33398 (arr!16047 (Array (_ BitVec 32) (_ BitVec 64))) (size!16411 (_ BitVec 32))) )
))
(declare-fun lt!242039 () array!33397)

(declare-fun lt!242042 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!242037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4521 0))(
  ( (MissingZero!4521 (index!20296 (_ BitVec 32))) (Found!4521 (index!20297 (_ BitVec 32))) (Intermediate!4521 (undefined!5333 Bool) (index!20298 (_ BitVec 32)) (x!49297 (_ BitVec 32))) (Undefined!4521) (MissingVacant!4521 (index!20299 (_ BitVec 32))) )
))
(declare-fun lt!242038 () SeekEntryResult!4521)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33397 (_ BitVec 32)) SeekEntryResult!4521)

(assert (=> b!526195 (= res!322984 (= lt!242038 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242037 lt!242042 lt!242039 mask!3524)))))

(declare-fun lt!242044 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun a!3235 () array!33397)

(assert (=> b!526195 (= lt!242038 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242044 (select (arr!16047 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!526195 (= lt!242037 (toIndex!0 lt!242042 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!526195 (= lt!242042 (select (store (arr!16047 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!526195 (= lt!242044 (toIndex!0 (select (arr!16047 a!3235) j!176) mask!3524))))

(assert (=> b!526195 (= lt!242039 (array!33398 (store (arr!16047 a!3235) i!1204 k!2280) (size!16411 a!3235)))))

(declare-fun e!306729 () Bool)

(assert (=> b!526195 e!306729))

(declare-fun res!322981 () Bool)

(assert (=> b!526195 (=> (not res!322981) (not e!306729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33397 (_ BitVec 32)) Bool)

(assert (=> b!526195 (= res!322981 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16550 0))(
  ( (Unit!16551) )
))
(declare-fun lt!242040 () Unit!16550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33397 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16550)

(assert (=> b!526195 (= lt!242040 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!526196 () Bool)

(declare-fun res!322974 () Bool)

(declare-fun e!306731 () Bool)

(assert (=> b!526196 (=> (not res!322974) (not e!306731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!526196 (= res!322974 (validKeyInArray!0 k!2280))))

(declare-fun b!526197 () Bool)

(declare-fun res!322985 () Bool)

(assert (=> b!526197 (=> res!322985 e!306732)))

(assert (=> b!526197 (= res!322985 (or (undefined!5333 lt!242038) (not (is-Intermediate!4521 lt!242038))))))

(declare-fun b!526198 () Bool)

(declare-fun res!322977 () Bool)

(assert (=> b!526198 (=> (not res!322977) (not e!306731))))

(assert (=> b!526198 (= res!322977 (and (= (size!16411 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16411 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16411 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!526199 () Bool)

(declare-fun res!322976 () Bool)

(assert (=> b!526199 (=> (not res!322976) (not e!306731))))

(assert (=> b!526199 (= res!322976 (validKeyInArray!0 (select (arr!16047 a!3235) j!176)))))

(declare-fun b!526200 () Bool)

(declare-fun e!306728 () Unit!16550)

(declare-fun Unit!16552 () Unit!16550)

(assert (=> b!526200 (= e!306728 Unit!16552)))

(declare-fun res!322978 () Bool)

(assert (=> start!47800 (=> (not res!322978) (not e!306731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47800 (= res!322978 (validMask!0 mask!3524))))

(assert (=> start!47800 e!306731))

(assert (=> start!47800 true))

(declare-fun array_inv!11821 (array!33397) Bool)

(assert (=> start!47800 (array_inv!11821 a!3235)))

(declare-fun b!526201 () Bool)

(assert (=> b!526201 (= e!306731 e!306733)))

(declare-fun res!322979 () Bool)

(assert (=> b!526201 (=> (not res!322979) (not e!306733))))

(declare-fun lt!242036 () SeekEntryResult!4521)

(assert (=> b!526201 (= res!322979 (or (= lt!242036 (MissingZero!4521 i!1204)) (= lt!242036 (MissingVacant!4521 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33397 (_ BitVec 32)) SeekEntryResult!4521)

(assert (=> b!526201 (= lt!242036 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!526202 () Bool)

(assert (=> b!526202 (= e!306729 (= (seekEntryOrOpen!0 (select (arr!16047 a!3235) j!176) a!3235 mask!3524) (Found!4521 j!176)))))

(declare-fun b!526203 () Bool)

(declare-fun e!306730 () Bool)

(assert (=> b!526203 (= e!306730 false)))

(declare-fun b!526204 () Bool)

(declare-fun Unit!16553 () Unit!16550)

(assert (=> b!526204 (= e!306728 Unit!16553)))

(declare-fun lt!242043 () Unit!16550)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16550)

(assert (=> b!526204 (= lt!242043 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!242044 #b00000000000000000000000000000000 (index!20298 lt!242038) (x!49297 lt!242038) mask!3524))))

(declare-fun res!322983 () Bool)

(assert (=> b!526204 (= res!322983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242044 lt!242042 lt!242039 mask!3524) (Intermediate!4521 false (index!20298 lt!242038) (x!49297 lt!242038))))))

(assert (=> b!526204 (=> (not res!322983) (not e!306730))))

(assert (=> b!526204 e!306730))

(declare-fun b!526205 () Bool)

(declare-fun res!322980 () Bool)

(assert (=> b!526205 (=> (not res!322980) (not e!306731))))

(declare-fun arrayContainsKey!0 (array!33397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!526205 (= res!322980 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!526206 () Bool)

(assert (=> b!526206 (= e!306732 true)))

(assert (=> b!526206 (= (index!20298 lt!242038) i!1204)))

(declare-fun lt!242045 () Unit!16550)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16550)

(assert (=> b!526206 (= lt!242045 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!242044 #b00000000000000000000000000000000 (index!20298 lt!242038) (x!49297 lt!242038) mask!3524))))

(assert (=> b!526206 (and (or (= (select (arr!16047 a!3235) (index!20298 lt!242038)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16047 a!3235) (index!20298 lt!242038)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16047 a!3235) (index!20298 lt!242038)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16047 a!3235) (index!20298 lt!242038)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242041 () Unit!16550)

(assert (=> b!526206 (= lt!242041 e!306728)))

(declare-fun c!61916 () Bool)

(assert (=> b!526206 (= c!61916 (= (select (arr!16047 a!3235) (index!20298 lt!242038)) (select (arr!16047 a!3235) j!176)))))

(assert (=> b!526206 (and (bvslt (x!49297 lt!242038) #b01111111111111111111111111111110) (or (= (select (arr!16047 a!3235) (index!20298 lt!242038)) (select (arr!16047 a!3235) j!176)) (= (select (arr!16047 a!3235) (index!20298 lt!242038)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16047 a!3235) (index!20298 lt!242038)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!526207 () Bool)

(declare-fun res!322975 () Bool)

(assert (=> b!526207 (=> (not res!322975) (not e!306733))))

(assert (=> b!526207 (= res!322975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!526208 () Bool)

(declare-fun res!322982 () Bool)

(assert (=> b!526208 (=> (not res!322982) (not e!306733))))

(declare-datatypes ((List!10258 0))(
  ( (Nil!10255) (Cons!10254 (h!11185 (_ BitVec 64)) (t!16494 List!10258)) )
))
(declare-fun arrayNoDuplicates!0 (array!33397 (_ BitVec 32) List!10258) Bool)

(assert (=> b!526208 (= res!322982 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10255))))

(assert (= (and start!47800 res!322978) b!526198))

(assert (= (and b!526198 res!322977) b!526199))

(assert (= (and b!526199 res!322976) b!526196))

(assert (= (and b!526196 res!322974) b!526205))

(assert (= (and b!526205 res!322980) b!526201))

(assert (= (and b!526201 res!322979) b!526207))

(assert (= (and b!526207 res!322975) b!526208))

(assert (= (and b!526208 res!322982) b!526195))

(assert (= (and b!526195 res!322981) b!526202))

(assert (= (and b!526195 (not res!322984)) b!526197))

(assert (= (and b!526197 (not res!322985)) b!526206))

(assert (= (and b!526206 c!61916) b!526204))

(assert (= (and b!526206 (not c!61916)) b!526200))

(assert (= (and b!526204 res!322983) b!526203))

(declare-fun m!506935 () Bool)

(assert (=> b!526196 m!506935))

(declare-fun m!506937 () Bool)

(assert (=> b!526204 m!506937))

(declare-fun m!506939 () Bool)

(assert (=> b!526204 m!506939))

(declare-fun m!506941 () Bool)

(assert (=> b!526202 m!506941))

(assert (=> b!526202 m!506941))

(declare-fun m!506943 () Bool)

(assert (=> b!526202 m!506943))

(assert (=> b!526199 m!506941))

(assert (=> b!526199 m!506941))

(declare-fun m!506945 () Bool)

(assert (=> b!526199 m!506945))

(declare-fun m!506947 () Bool)

(assert (=> b!526205 m!506947))

(declare-fun m!506949 () Bool)

(assert (=> b!526206 m!506949))

(declare-fun m!506951 () Bool)

(assert (=> b!526206 m!506951))

(assert (=> b!526206 m!506941))

(declare-fun m!506953 () Bool)

(assert (=> b!526195 m!506953))

(declare-fun m!506955 () Bool)

(assert (=> b!526195 m!506955))

(declare-fun m!506957 () Bool)

(assert (=> b!526195 m!506957))

(declare-fun m!506959 () Bool)

(assert (=> b!526195 m!506959))

(declare-fun m!506961 () Bool)

(assert (=> b!526195 m!506961))

(assert (=> b!526195 m!506941))

(declare-fun m!506963 () Bool)

(assert (=> b!526195 m!506963))

(assert (=> b!526195 m!506941))

(declare-fun m!506965 () Bool)

(assert (=> b!526195 m!506965))

(assert (=> b!526195 m!506941))

(declare-fun m!506967 () Bool)

(assert (=> b!526195 m!506967))

(declare-fun m!506969 () Bool)

(assert (=> b!526208 m!506969))

(declare-fun m!506971 () Bool)

(assert (=> b!526201 m!506971))

(declare-fun m!506973 () Bool)

(assert (=> b!526207 m!506973))

(declare-fun m!506975 () Bool)

(assert (=> start!47800 m!506975))

(declare-fun m!506977 () Bool)

(assert (=> start!47800 m!506977))

(push 1)

