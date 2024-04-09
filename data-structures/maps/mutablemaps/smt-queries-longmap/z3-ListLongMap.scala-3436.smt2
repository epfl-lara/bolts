; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47748 () Bool)

(assert start!47748)

(declare-fun b!525103 () Bool)

(declare-fun res!322041 () Bool)

(declare-fun e!306181 () Bool)

(assert (=> b!525103 (=> (not res!322041) (not e!306181))))

(declare-datatypes ((array!33345 0))(
  ( (array!33346 (arr!16021 (Array (_ BitVec 32) (_ BitVec 64))) (size!16385 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33345)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33345 (_ BitVec 32)) Bool)

(assert (=> b!525103 (= res!322041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!525104 () Bool)

(declare-fun res!322045 () Bool)

(assert (=> b!525104 (=> (not res!322045) (not e!306181))))

(declare-datatypes ((List!10232 0))(
  ( (Nil!10229) (Cons!10228 (h!11159 (_ BitVec 64)) (t!16468 List!10232)) )
))
(declare-fun arrayNoDuplicates!0 (array!33345 (_ BitVec 32) List!10232) Bool)

(assert (=> b!525104 (= res!322045 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10229))))

(declare-fun e!306183 () Bool)

(declare-fun b!525105 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4495 0))(
  ( (MissingZero!4495 (index!20192 (_ BitVec 32))) (Found!4495 (index!20193 (_ BitVec 32))) (Intermediate!4495 (undefined!5307 Bool) (index!20194 (_ BitVec 32)) (x!49199 (_ BitVec 32))) (Undefined!4495) (MissingVacant!4495 (index!20195 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33345 (_ BitVec 32)) SeekEntryResult!4495)

(assert (=> b!525105 (= e!306183 (= (seekEntryOrOpen!0 (select (arr!16021 a!3235) j!176) a!3235 mask!3524) (Found!4495 j!176)))))

(declare-fun b!525106 () Bool)

(declare-fun e!306187 () Bool)

(assert (=> b!525106 (= e!306187 e!306181)))

(declare-fun res!322040 () Bool)

(assert (=> b!525106 (=> (not res!322040) (not e!306181))))

(declare-fun lt!241257 () SeekEntryResult!4495)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!525106 (= res!322040 (or (= lt!241257 (MissingZero!4495 i!1204)) (= lt!241257 (MissingVacant!4495 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!525106 (= lt!241257 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!525107 () Bool)

(declare-fun res!322043 () Bool)

(assert (=> b!525107 (=> (not res!322043) (not e!306187))))

(assert (=> b!525107 (= res!322043 (and (= (size!16385 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16385 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16385 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!525108 () Bool)

(declare-fun e!306184 () Bool)

(assert (=> b!525108 (= e!306184 false)))

(declare-fun b!525109 () Bool)

(declare-fun e!306185 () Bool)

(assert (=> b!525109 (= e!306181 (not e!306185))))

(declare-fun res!322047 () Bool)

(assert (=> b!525109 (=> res!322047 e!306185)))

(declare-fun lt!241265 () (_ BitVec 32))

(declare-fun lt!241261 () SeekEntryResult!4495)

(declare-fun lt!241256 () (_ BitVec 64))

(declare-fun lt!241263 () array!33345)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33345 (_ BitVec 32)) SeekEntryResult!4495)

(assert (=> b!525109 (= res!322047 (= lt!241261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241265 lt!241256 lt!241263 mask!3524)))))

(declare-fun lt!241262 () (_ BitVec 32))

(assert (=> b!525109 (= lt!241261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241262 (select (arr!16021 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!525109 (= lt!241265 (toIndex!0 lt!241256 mask!3524))))

(assert (=> b!525109 (= lt!241256 (select (store (arr!16021 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!525109 (= lt!241262 (toIndex!0 (select (arr!16021 a!3235) j!176) mask!3524))))

(assert (=> b!525109 (= lt!241263 (array!33346 (store (arr!16021 a!3235) i!1204 k0!2280) (size!16385 a!3235)))))

(assert (=> b!525109 e!306183))

(declare-fun res!322044 () Bool)

(assert (=> b!525109 (=> (not res!322044) (not e!306183))))

(assert (=> b!525109 (= res!322044 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16446 0))(
  ( (Unit!16447) )
))
(declare-fun lt!241258 () Unit!16446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33345 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16446)

(assert (=> b!525109 (= lt!241258 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!525110 () Bool)

(declare-fun e!306186 () Unit!16446)

(declare-fun Unit!16448 () Unit!16446)

(assert (=> b!525110 (= e!306186 Unit!16448)))

(declare-fun res!322042 () Bool)

(assert (=> start!47748 (=> (not res!322042) (not e!306187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47748 (= res!322042 (validMask!0 mask!3524))))

(assert (=> start!47748 e!306187))

(assert (=> start!47748 true))

(declare-fun array_inv!11795 (array!33345) Bool)

(assert (=> start!47748 (array_inv!11795 a!3235)))

(declare-fun b!525111 () Bool)

(declare-fun res!322038 () Bool)

(assert (=> b!525111 (=> (not res!322038) (not e!306187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!525111 (= res!322038 (validKeyInArray!0 (select (arr!16021 a!3235) j!176)))))

(declare-fun b!525112 () Bool)

(declare-fun res!322046 () Bool)

(assert (=> b!525112 (=> (not res!322046) (not e!306187))))

(declare-fun arrayContainsKey!0 (array!33345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!525112 (= res!322046 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!525113 () Bool)

(declare-fun res!322048 () Bool)

(assert (=> b!525113 (=> res!322048 e!306185)))

(get-info :version)

(assert (=> b!525113 (= res!322048 (or (undefined!5307 lt!241261) (not ((_ is Intermediate!4495) lt!241261))))))

(declare-fun b!525114 () Bool)

(declare-fun res!322039 () Bool)

(assert (=> b!525114 (=> (not res!322039) (not e!306187))))

(assert (=> b!525114 (= res!322039 (validKeyInArray!0 k0!2280))))

(declare-fun b!525115 () Bool)

(declare-fun Unit!16449 () Unit!16446)

(assert (=> b!525115 (= e!306186 Unit!16449)))

(declare-fun lt!241259 () Unit!16446)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33345 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16446)

(assert (=> b!525115 (= lt!241259 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!241262 #b00000000000000000000000000000000 (index!20194 lt!241261) (x!49199 lt!241261) mask!3524))))

(declare-fun res!322049 () Bool)

(assert (=> b!525115 (= res!322049 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!241262 lt!241256 lt!241263 mask!3524) (Intermediate!4495 false (index!20194 lt!241261) (x!49199 lt!241261))))))

(assert (=> b!525115 (=> (not res!322049) (not e!306184))))

(assert (=> b!525115 e!306184))

(declare-fun b!525116 () Bool)

(assert (=> b!525116 (= e!306185 true)))

(assert (=> b!525116 (= (index!20194 lt!241261) i!1204)))

(declare-fun lt!241264 () Unit!16446)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33345 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16446)

(assert (=> b!525116 (= lt!241264 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!241262 #b00000000000000000000000000000000 (index!20194 lt!241261) (x!49199 lt!241261) mask!3524))))

(assert (=> b!525116 (and (or (= (select (arr!16021 a!3235) (index!20194 lt!241261)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16021 a!3235) (index!20194 lt!241261)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16021 a!3235) (index!20194 lt!241261)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16021 a!3235) (index!20194 lt!241261)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!241260 () Unit!16446)

(assert (=> b!525116 (= lt!241260 e!306186)))

(declare-fun c!61838 () Bool)

(assert (=> b!525116 (= c!61838 (= (select (arr!16021 a!3235) (index!20194 lt!241261)) (select (arr!16021 a!3235) j!176)))))

(assert (=> b!525116 (and (bvslt (x!49199 lt!241261) #b01111111111111111111111111111110) (or (= (select (arr!16021 a!3235) (index!20194 lt!241261)) (select (arr!16021 a!3235) j!176)) (= (select (arr!16021 a!3235) (index!20194 lt!241261)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16021 a!3235) (index!20194 lt!241261)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47748 res!322042) b!525107))

(assert (= (and b!525107 res!322043) b!525111))

(assert (= (and b!525111 res!322038) b!525114))

(assert (= (and b!525114 res!322039) b!525112))

(assert (= (and b!525112 res!322046) b!525106))

(assert (= (and b!525106 res!322040) b!525103))

(assert (= (and b!525103 res!322041) b!525104))

(assert (= (and b!525104 res!322045) b!525109))

(assert (= (and b!525109 res!322044) b!525105))

(assert (= (and b!525109 (not res!322047)) b!525113))

(assert (= (and b!525113 (not res!322048)) b!525116))

(assert (= (and b!525116 c!61838) b!525115))

(assert (= (and b!525116 (not c!61838)) b!525110))

(assert (= (and b!525115 res!322049) b!525108))

(declare-fun m!505791 () Bool)

(assert (=> b!525105 m!505791))

(assert (=> b!525105 m!505791))

(declare-fun m!505793 () Bool)

(assert (=> b!525105 m!505793))

(declare-fun m!505795 () Bool)

(assert (=> b!525116 m!505795))

(declare-fun m!505797 () Bool)

(assert (=> b!525116 m!505797))

(assert (=> b!525116 m!505791))

(declare-fun m!505799 () Bool)

(assert (=> b!525115 m!505799))

(declare-fun m!505801 () Bool)

(assert (=> b!525115 m!505801))

(declare-fun m!505803 () Bool)

(assert (=> start!47748 m!505803))

(declare-fun m!505805 () Bool)

(assert (=> start!47748 m!505805))

(declare-fun m!505807 () Bool)

(assert (=> b!525109 m!505807))

(declare-fun m!505809 () Bool)

(assert (=> b!525109 m!505809))

(declare-fun m!505811 () Bool)

(assert (=> b!525109 m!505811))

(declare-fun m!505813 () Bool)

(assert (=> b!525109 m!505813))

(assert (=> b!525109 m!505791))

(declare-fun m!505815 () Bool)

(assert (=> b!525109 m!505815))

(assert (=> b!525109 m!505791))

(declare-fun m!505817 () Bool)

(assert (=> b!525109 m!505817))

(assert (=> b!525109 m!505791))

(declare-fun m!505819 () Bool)

(assert (=> b!525109 m!505819))

(declare-fun m!505821 () Bool)

(assert (=> b!525109 m!505821))

(declare-fun m!505823 () Bool)

(assert (=> b!525104 m!505823))

(declare-fun m!505825 () Bool)

(assert (=> b!525103 m!505825))

(assert (=> b!525111 m!505791))

(assert (=> b!525111 m!505791))

(declare-fun m!505827 () Bool)

(assert (=> b!525111 m!505827))

(declare-fun m!505829 () Bool)

(assert (=> b!525106 m!505829))

(declare-fun m!505831 () Bool)

(assert (=> b!525114 m!505831))

(declare-fun m!505833 () Bool)

(assert (=> b!525112 m!505833))

(check-sat (not b!525112) (not b!525111) (not start!47748) (not b!525109) (not b!525103) (not b!525105) (not b!525116) (not b!525114) (not b!525115) (not b!525106) (not b!525104))
(check-sat)
