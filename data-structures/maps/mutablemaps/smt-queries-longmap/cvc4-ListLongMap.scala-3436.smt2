; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47750 () Bool)

(assert start!47750)

(declare-fun b!525145 () Bool)

(declare-fun res!322075 () Bool)

(declare-fun e!306205 () Bool)

(assert (=> b!525145 (=> (not res!322075) (not e!306205))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525145 (= res!322075 (validKeyInArray!0 k!2280))))

(declare-fun b!525146 () Bool)

(declare-fun res!322082 () Bool)

(declare-fun e!306208 () Bool)

(assert (=> b!525146 (=> res!322082 e!306208)))

(declare-datatypes ((SeekEntryResult!4496 0))(
  ( (MissingZero!4496 (index!20196 (_ BitVec 32))) (Found!4496 (index!20197 (_ BitVec 32))) (Intermediate!4496 (undefined!5308 Bool) (index!20198 (_ BitVec 32)) (x!49200 (_ BitVec 32))) (Undefined!4496) (MissingVacant!4496 (index!20199 (_ BitVec 32))) )
))
(declare-fun lt!241292 () SeekEntryResult!4496)

(assert (=> b!525146 (= res!322082 (or (undefined!5308 lt!241292) (not (is-Intermediate!4496 lt!241292))))))

(declare-fun b!525147 () Bool)

(declare-datatypes ((Unit!16450 0))(
  ( (Unit!16451) )
))
(declare-fun e!306207 () Unit!16450)

(declare-fun Unit!16452 () Unit!16450)

(assert (=> b!525147 (= e!306207 Unit!16452)))

(declare-fun b!525148 () Bool)

(assert (=> b!525148 (= e!306208 true)))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525148 (= (index!20198 lt!241292) i!1204)))

(declare-fun lt!241288 () Unit!16450)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!241295 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!33347 0))(
  ( (array!33348 (arr!16022 (Array (_ BitVec 32) (_ BitVec 64))) (size!16386 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33347)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16450)

(assert (=> b!525148 (= lt!241288 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!241295 #b00000000000000000000000000000000 (index!20198 lt!241292) (x!49200 lt!241292) mask!3524))))

(assert (=> b!525148 (and (or (= (select (arr!16022 a!3235) (index!20198 lt!241292)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16022 a!3235) (index!20198 lt!241292)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16022 a!3235) (index!20198 lt!241292)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16022 a!3235) (index!20198 lt!241292)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241287 () Unit!16450)

(assert (=> b!525148 (= lt!241287 e!306207)))

(declare-fun c!61841 () Bool)

(assert (=> b!525148 (= c!61841 (= (select (arr!16022 a!3235) (index!20198 lt!241292)) (select (arr!16022 a!3235) j!176)))))

(assert (=> b!525148 (and (bvslt (x!49200 lt!241292) #b01111111111111111111111111111110) (or (= (select (arr!16022 a!3235) (index!20198 lt!241292)) (select (arr!16022 a!3235) j!176)) (= (select (arr!16022 a!3235) (index!20198 lt!241292)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16022 a!3235) (index!20198 lt!241292)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!306204 () Bool)

(declare-fun b!525149 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33347 (_ BitVec 32)) SeekEntryResult!4496)

(assert (=> b!525149 (= e!306204 (= (seekEntryOrOpen!0 (select (arr!16022 a!3235) j!176) a!3235 mask!3524) (Found!4496 j!176)))))

(declare-fun res!322085 () Bool)

(assert (=> start!47750 (=> (not res!322085) (not e!306205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47750 (= res!322085 (validMask!0 mask!3524))))

(assert (=> start!47750 e!306205))

(assert (=> start!47750 true))

(declare-fun array_inv!11796 (array!33347) Bool)

(assert (=> start!47750 (array_inv!11796 a!3235)))

(declare-fun b!525150 () Bool)

(declare-fun e!306206 () Bool)

(assert (=> b!525150 (= e!306206 false)))

(declare-fun b!525151 () Bool)

(declare-fun res!322081 () Bool)

(assert (=> b!525151 (=> (not res!322081) (not e!306205))))

(assert (=> b!525151 (= res!322081 (and (= (size!16386 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16386 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16386 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525152 () Bool)

(declare-fun res!322084 () Bool)

(declare-fun e!306203 () Bool)

(assert (=> b!525152 (=> (not res!322084) (not e!306203))))

(declare-datatypes ((List!10233 0))(
  ( (Nil!10230) (Cons!10229 (h!11160 (_ BitVec 64)) (t!16469 List!10233)) )
))
(declare-fun arrayNoDuplicates!0 (array!33347 (_ BitVec 32) List!10233) Bool)

(assert (=> b!525152 (= res!322084 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10230))))

(declare-fun b!525153 () Bool)

(declare-fun Unit!16453 () Unit!16450)

(assert (=> b!525153 (= e!306207 Unit!16453)))

(declare-fun lt!241286 () Unit!16450)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16450)

(assert (=> b!525153 (= lt!241286 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!241295 #b00000000000000000000000000000000 (index!20198 lt!241292) (x!49200 lt!241292) mask!3524))))

(declare-fun lt!241290 () array!33347)

(declare-fun lt!241291 () (_ BitVec 64))

(declare-fun res!322079 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33347 (_ BitVec 32)) SeekEntryResult!4496)

(assert (=> b!525153 (= res!322079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241295 lt!241291 lt!241290 mask!3524) (Intermediate!4496 false (index!20198 lt!241292) (x!49200 lt!241292))))))

(assert (=> b!525153 (=> (not res!322079) (not e!306206))))

(assert (=> b!525153 e!306206))

(declare-fun b!525154 () Bool)

(declare-fun res!322078 () Bool)

(assert (=> b!525154 (=> (not res!322078) (not e!306205))))

(assert (=> b!525154 (= res!322078 (validKeyInArray!0 (select (arr!16022 a!3235) j!176)))))

(declare-fun b!525155 () Bool)

(declare-fun res!322083 () Bool)

(assert (=> b!525155 (=> (not res!322083) (not e!306203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33347 (_ BitVec 32)) Bool)

(assert (=> b!525155 (= res!322083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525156 () Bool)

(assert (=> b!525156 (= e!306205 e!306203)))

(declare-fun res!322076 () Bool)

(assert (=> b!525156 (=> (not res!322076) (not e!306203))))

(declare-fun lt!241294 () SeekEntryResult!4496)

(assert (=> b!525156 (= res!322076 (or (= lt!241294 (MissingZero!4496 i!1204)) (= lt!241294 (MissingVacant!4496 i!1204))))))

(assert (=> b!525156 (= lt!241294 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!525157 () Bool)

(assert (=> b!525157 (= e!306203 (not e!306208))))

(declare-fun res!322080 () Bool)

(assert (=> b!525157 (=> res!322080 e!306208)))

(declare-fun lt!241289 () (_ BitVec 32))

(assert (=> b!525157 (= res!322080 (= lt!241292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241289 lt!241291 lt!241290 mask!3524)))))

(assert (=> b!525157 (= lt!241292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241295 (select (arr!16022 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525157 (= lt!241289 (toIndex!0 lt!241291 mask!3524))))

(assert (=> b!525157 (= lt!241291 (select (store (arr!16022 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!525157 (= lt!241295 (toIndex!0 (select (arr!16022 a!3235) j!176) mask!3524))))

(assert (=> b!525157 (= lt!241290 (array!33348 (store (arr!16022 a!3235) i!1204 k!2280) (size!16386 a!3235)))))

(assert (=> b!525157 e!306204))

(declare-fun res!322077 () Bool)

(assert (=> b!525157 (=> (not res!322077) (not e!306204))))

(assert (=> b!525157 (= res!322077 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!241293 () Unit!16450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16450)

(assert (=> b!525157 (= lt!241293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525158 () Bool)

(declare-fun res!322074 () Bool)

(assert (=> b!525158 (=> (not res!322074) (not e!306205))))

(declare-fun arrayContainsKey!0 (array!33347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525158 (= res!322074 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47750 res!322085) b!525151))

(assert (= (and b!525151 res!322081) b!525154))

(assert (= (and b!525154 res!322078) b!525145))

(assert (= (and b!525145 res!322075) b!525158))

(assert (= (and b!525158 res!322074) b!525156))

(assert (= (and b!525156 res!322076) b!525155))

(assert (= (and b!525155 res!322083) b!525152))

(assert (= (and b!525152 res!322084) b!525157))

(assert (= (and b!525157 res!322077) b!525149))

(assert (= (and b!525157 (not res!322080)) b!525146))

(assert (= (and b!525146 (not res!322082)) b!525148))

(assert (= (and b!525148 c!61841) b!525153))

(assert (= (and b!525148 (not c!61841)) b!525147))

(assert (= (and b!525153 res!322079) b!525150))

(declare-fun m!505835 () Bool)

(assert (=> b!525154 m!505835))

(assert (=> b!525154 m!505835))

(declare-fun m!505837 () Bool)

(assert (=> b!525154 m!505837))

(declare-fun m!505839 () Bool)

(assert (=> start!47750 m!505839))

(declare-fun m!505841 () Bool)

(assert (=> start!47750 m!505841))

(declare-fun m!505843 () Bool)

(assert (=> b!525148 m!505843))

(declare-fun m!505845 () Bool)

(assert (=> b!525148 m!505845))

(assert (=> b!525148 m!505835))

(declare-fun m!505847 () Bool)

(assert (=> b!525156 m!505847))

(declare-fun m!505849 () Bool)

(assert (=> b!525155 m!505849))

(declare-fun m!505851 () Bool)

(assert (=> b!525158 m!505851))

(declare-fun m!505853 () Bool)

(assert (=> b!525157 m!505853))

(declare-fun m!505855 () Bool)

(assert (=> b!525157 m!505855))

(declare-fun m!505857 () Bool)

(assert (=> b!525157 m!505857))

(declare-fun m!505859 () Bool)

(assert (=> b!525157 m!505859))

(assert (=> b!525157 m!505835))

(declare-fun m!505861 () Bool)

(assert (=> b!525157 m!505861))

(assert (=> b!525157 m!505835))

(declare-fun m!505863 () Bool)

(assert (=> b!525157 m!505863))

(assert (=> b!525157 m!505835))

(declare-fun m!505865 () Bool)

(assert (=> b!525157 m!505865))

(declare-fun m!505867 () Bool)

(assert (=> b!525157 m!505867))

(assert (=> b!525149 m!505835))

(assert (=> b!525149 m!505835))

(declare-fun m!505869 () Bool)

(assert (=> b!525149 m!505869))

(declare-fun m!505871 () Bool)

(assert (=> b!525153 m!505871))

(declare-fun m!505873 () Bool)

(assert (=> b!525153 m!505873))

(declare-fun m!505875 () Bool)

(assert (=> b!525152 m!505875))

(declare-fun m!505877 () Bool)

(assert (=> b!525145 m!505877))

(push 1)

