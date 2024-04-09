; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47556 () Bool)

(assert start!47556)

(declare-fun b!523180 () Bool)

(declare-fun res!320702 () Bool)

(declare-fun e!305126 () Bool)

(assert (=> b!523180 (=> (not res!320702) (not e!305126))))

(declare-datatypes ((array!33279 0))(
  ( (array!33280 (arr!15991 (Array (_ BitVec 32) (_ BitVec 64))) (size!16355 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33279)

(declare-datatypes ((List!10202 0))(
  ( (Nil!10199) (Cons!10198 (h!11123 (_ BitVec 64)) (t!16438 List!10202)) )
))
(declare-fun arrayNoDuplicates!0 (array!33279 (_ BitVec 32) List!10202) Bool)

(assert (=> b!523180 (= res!320702 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10199))))

(declare-fun lt!240104 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4465 0))(
  ( (MissingZero!4465 (index!20066 (_ BitVec 32))) (Found!4465 (index!20067 (_ BitVec 32))) (Intermediate!4465 (undefined!5277 Bool) (index!20068 (_ BitVec 32)) (x!49071 (_ BitVec 32))) (Undefined!4465) (MissingVacant!4465 (index!20069 (_ BitVec 32))) )
))
(declare-fun lt!240105 () SeekEntryResult!4465)

(declare-fun e!305128 () Bool)

(declare-fun b!523181 () Bool)

(assert (=> b!523181 (= e!305128 (or (bvsgt #b00000000000000000000000000000000 (x!49071 lt!240105)) (bvsgt (x!49071 lt!240105) #b01111111111111111111111111111110) (and (bvsge lt!240104 #b00000000000000000000000000000000) (bvslt lt!240104 (size!16355 a!3235)))))))

(assert (=> b!523181 (and (or (= (select (arr!15991 a!3235) (index!20068 lt!240105)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15991 a!3235) (index!20068 lt!240105)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15991 a!3235) (index!20068 lt!240105)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15991 a!3235) (index!20068 lt!240105)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16326 0))(
  ( (Unit!16327) )
))
(declare-fun lt!240103 () Unit!16326)

(declare-fun e!305122 () Unit!16326)

(assert (=> b!523181 (= lt!240103 e!305122)))

(declare-fun c!61544 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!523181 (= c!61544 (= (select (arr!15991 a!3235) (index!20068 lt!240105)) (select (arr!15991 a!3235) j!176)))))

(assert (=> b!523181 (and (bvslt (x!49071 lt!240105) #b01111111111111111111111111111110) (or (= (select (arr!15991 a!3235) (index!20068 lt!240105)) (select (arr!15991 a!3235) j!176)) (= (select (arr!15991 a!3235) (index!20068 lt!240105)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15991 a!3235) (index!20068 lt!240105)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523182 () Bool)

(declare-fun Unit!16328 () Unit!16326)

(assert (=> b!523182 (= e!305122 Unit!16328)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!240099 () Unit!16326)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33279 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16326)

(assert (=> b!523182 (= lt!240099 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240104 #b00000000000000000000000000000000 (index!20068 lt!240105) (x!49071 lt!240105) mask!3524))))

(declare-fun lt!240101 () (_ BitVec 64))

(declare-fun lt!240100 () array!33279)

(declare-fun res!320705 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33279 (_ BitVec 32)) SeekEntryResult!4465)

(assert (=> b!523182 (= res!320705 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240104 lt!240101 lt!240100 mask!3524) (Intermediate!4465 false (index!20068 lt!240105) (x!49071 lt!240105))))))

(declare-fun e!305123 () Bool)

(assert (=> b!523182 (=> (not res!320705) (not e!305123))))

(assert (=> b!523182 e!305123))

(declare-fun res!320701 () Bool)

(declare-fun e!305127 () Bool)

(assert (=> start!47556 (=> (not res!320701) (not e!305127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47556 (= res!320701 (validMask!0 mask!3524))))

(assert (=> start!47556 e!305127))

(assert (=> start!47556 true))

(declare-fun array_inv!11765 (array!33279) Bool)

(assert (=> start!47556 (array_inv!11765 a!3235)))

(declare-fun b!523183 () Bool)

(declare-fun res!320698 () Bool)

(assert (=> b!523183 (=> (not res!320698) (not e!305127))))

(assert (=> b!523183 (= res!320698 (and (= (size!16355 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16355 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16355 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523184 () Bool)

(assert (=> b!523184 (= e!305126 (not e!305128))))

(declare-fun res!320707 () Bool)

(assert (=> b!523184 (=> res!320707 e!305128)))

(declare-fun lt!240107 () (_ BitVec 32))

(assert (=> b!523184 (= res!320707 (= lt!240105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240107 lt!240101 lt!240100 mask!3524)))))

(assert (=> b!523184 (= lt!240105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240104 (select (arr!15991 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523184 (= lt!240107 (toIndex!0 lt!240101 mask!3524))))

(assert (=> b!523184 (= lt!240101 (select (store (arr!15991 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!523184 (= lt!240104 (toIndex!0 (select (arr!15991 a!3235) j!176) mask!3524))))

(assert (=> b!523184 (= lt!240100 (array!33280 (store (arr!15991 a!3235) i!1204 k0!2280) (size!16355 a!3235)))))

(declare-fun e!305124 () Bool)

(assert (=> b!523184 e!305124))

(declare-fun res!320703 () Bool)

(assert (=> b!523184 (=> (not res!320703) (not e!305124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33279 (_ BitVec 32)) Bool)

(assert (=> b!523184 (= res!320703 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240102 () Unit!16326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16326)

(assert (=> b!523184 (= lt!240102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!523185 () Bool)

(assert (=> b!523185 (= e!305127 e!305126)))

(declare-fun res!320700 () Bool)

(assert (=> b!523185 (=> (not res!320700) (not e!305126))))

(declare-fun lt!240106 () SeekEntryResult!4465)

(assert (=> b!523185 (= res!320700 (or (= lt!240106 (MissingZero!4465 i!1204)) (= lt!240106 (MissingVacant!4465 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33279 (_ BitVec 32)) SeekEntryResult!4465)

(assert (=> b!523185 (= lt!240106 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!523186 () Bool)

(declare-fun res!320708 () Bool)

(assert (=> b!523186 (=> (not res!320708) (not e!305127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523186 (= res!320708 (validKeyInArray!0 k0!2280))))

(declare-fun b!523187 () Bool)

(declare-fun res!320699 () Bool)

(assert (=> b!523187 (=> res!320699 e!305128)))

(get-info :version)

(assert (=> b!523187 (= res!320699 (or (undefined!5277 lt!240105) (not ((_ is Intermediate!4465) lt!240105))))))

(declare-fun b!523188 () Bool)

(declare-fun res!320704 () Bool)

(assert (=> b!523188 (=> (not res!320704) (not e!305127))))

(assert (=> b!523188 (= res!320704 (validKeyInArray!0 (select (arr!15991 a!3235) j!176)))))

(declare-fun b!523189 () Bool)

(assert (=> b!523189 (= e!305124 (= (seekEntryOrOpen!0 (select (arr!15991 a!3235) j!176) a!3235 mask!3524) (Found!4465 j!176)))))

(declare-fun b!523190 () Bool)

(declare-fun res!320706 () Bool)

(assert (=> b!523190 (=> (not res!320706) (not e!305127))))

(declare-fun arrayContainsKey!0 (array!33279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523190 (= res!320706 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!523191 () Bool)

(assert (=> b!523191 (= e!305123 false)))

(declare-fun b!523192 () Bool)

(declare-fun Unit!16329 () Unit!16326)

(assert (=> b!523192 (= e!305122 Unit!16329)))

(declare-fun b!523193 () Bool)

(declare-fun res!320697 () Bool)

(assert (=> b!523193 (=> (not res!320697) (not e!305126))))

(assert (=> b!523193 (= res!320697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47556 res!320701) b!523183))

(assert (= (and b!523183 res!320698) b!523188))

(assert (= (and b!523188 res!320704) b!523186))

(assert (= (and b!523186 res!320708) b!523190))

(assert (= (and b!523190 res!320706) b!523185))

(assert (= (and b!523185 res!320700) b!523193))

(assert (= (and b!523193 res!320697) b!523180))

(assert (= (and b!523180 res!320702) b!523184))

(assert (= (and b!523184 res!320703) b!523189))

(assert (= (and b!523184 (not res!320707)) b!523187))

(assert (= (and b!523187 (not res!320699)) b!523181))

(assert (= (and b!523181 c!61544) b!523182))

(assert (= (and b!523181 (not c!61544)) b!523192))

(assert (= (and b!523182 res!320705) b!523191))

(declare-fun m!504037 () Bool)

(assert (=> start!47556 m!504037))

(declare-fun m!504039 () Bool)

(assert (=> start!47556 m!504039))

(declare-fun m!504041 () Bool)

(assert (=> b!523186 m!504041))

(declare-fun m!504043 () Bool)

(assert (=> b!523189 m!504043))

(assert (=> b!523189 m!504043))

(declare-fun m!504045 () Bool)

(assert (=> b!523189 m!504045))

(declare-fun m!504047 () Bool)

(assert (=> b!523185 m!504047))

(declare-fun m!504049 () Bool)

(assert (=> b!523181 m!504049))

(assert (=> b!523181 m!504043))

(declare-fun m!504051 () Bool)

(assert (=> b!523190 m!504051))

(declare-fun m!504053 () Bool)

(assert (=> b!523193 m!504053))

(assert (=> b!523184 m!504043))

(declare-fun m!504055 () Bool)

(assert (=> b!523184 m!504055))

(declare-fun m!504057 () Bool)

(assert (=> b!523184 m!504057))

(declare-fun m!504059 () Bool)

(assert (=> b!523184 m!504059))

(declare-fun m!504061 () Bool)

(assert (=> b!523184 m!504061))

(assert (=> b!523184 m!504043))

(declare-fun m!504063 () Bool)

(assert (=> b!523184 m!504063))

(declare-fun m!504065 () Bool)

(assert (=> b!523184 m!504065))

(assert (=> b!523184 m!504043))

(declare-fun m!504067 () Bool)

(assert (=> b!523184 m!504067))

(declare-fun m!504069 () Bool)

(assert (=> b!523184 m!504069))

(declare-fun m!504071 () Bool)

(assert (=> b!523182 m!504071))

(declare-fun m!504073 () Bool)

(assert (=> b!523182 m!504073))

(declare-fun m!504075 () Bool)

(assert (=> b!523180 m!504075))

(assert (=> b!523188 m!504043))

(assert (=> b!523188 m!504043))

(declare-fun m!504077 () Bool)

(assert (=> b!523188 m!504077))

(check-sat (not b!523186) (not b!523188) (not b!523184) (not b!523182) (not start!47556) (not b!523185) (not b!523193) (not b!523180) (not b!523190) (not b!523189))
(check-sat)
(get-model)

(declare-fun b!523248 () Bool)

(declare-fun c!61554 () Bool)

(declare-fun lt!240141 () (_ BitVec 64))

(assert (=> b!523248 (= c!61554 (= lt!240141 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305156 () SeekEntryResult!4465)

(declare-fun e!305158 () SeekEntryResult!4465)

(assert (=> b!523248 (= e!305156 e!305158)))

(declare-fun b!523249 () Bool)

(declare-fun lt!240142 () SeekEntryResult!4465)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33279 (_ BitVec 32)) SeekEntryResult!4465)

(assert (=> b!523249 (= e!305158 (seekKeyOrZeroReturnVacant!0 (x!49071 lt!240142) (index!20068 lt!240142) (index!20068 lt!240142) (select (arr!15991 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523250 () Bool)

(assert (=> b!523250 (= e!305158 (MissingZero!4465 (index!20068 lt!240142)))))

(declare-fun b!523251 () Bool)

(assert (=> b!523251 (= e!305156 (Found!4465 (index!20068 lt!240142)))))

(declare-fun d!80397 () Bool)

(declare-fun lt!240143 () SeekEntryResult!4465)

(assert (=> d!80397 (and (or ((_ is Undefined!4465) lt!240143) (not ((_ is Found!4465) lt!240143)) (and (bvsge (index!20067 lt!240143) #b00000000000000000000000000000000) (bvslt (index!20067 lt!240143) (size!16355 a!3235)))) (or ((_ is Undefined!4465) lt!240143) ((_ is Found!4465) lt!240143) (not ((_ is MissingZero!4465) lt!240143)) (and (bvsge (index!20066 lt!240143) #b00000000000000000000000000000000) (bvslt (index!20066 lt!240143) (size!16355 a!3235)))) (or ((_ is Undefined!4465) lt!240143) ((_ is Found!4465) lt!240143) ((_ is MissingZero!4465) lt!240143) (not ((_ is MissingVacant!4465) lt!240143)) (and (bvsge (index!20069 lt!240143) #b00000000000000000000000000000000) (bvslt (index!20069 lt!240143) (size!16355 a!3235)))) (or ((_ is Undefined!4465) lt!240143) (ite ((_ is Found!4465) lt!240143) (= (select (arr!15991 a!3235) (index!20067 lt!240143)) (select (arr!15991 a!3235) j!176)) (ite ((_ is MissingZero!4465) lt!240143) (= (select (arr!15991 a!3235) (index!20066 lt!240143)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4465) lt!240143) (= (select (arr!15991 a!3235) (index!20069 lt!240143)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!305157 () SeekEntryResult!4465)

(assert (=> d!80397 (= lt!240143 e!305157)))

(declare-fun c!61556 () Bool)

(assert (=> d!80397 (= c!61556 (and ((_ is Intermediate!4465) lt!240142) (undefined!5277 lt!240142)))))

(assert (=> d!80397 (= lt!240142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15991 a!3235) j!176) mask!3524) (select (arr!15991 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80397 (validMask!0 mask!3524)))

(assert (=> d!80397 (= (seekEntryOrOpen!0 (select (arr!15991 a!3235) j!176) a!3235 mask!3524) lt!240143)))

(declare-fun b!523252 () Bool)

(assert (=> b!523252 (= e!305157 e!305156)))

(assert (=> b!523252 (= lt!240141 (select (arr!15991 a!3235) (index!20068 lt!240142)))))

(declare-fun c!61555 () Bool)

(assert (=> b!523252 (= c!61555 (= lt!240141 (select (arr!15991 a!3235) j!176)))))

(declare-fun b!523253 () Bool)

(assert (=> b!523253 (= e!305157 Undefined!4465)))

(assert (= (and d!80397 c!61556) b!523253))

(assert (= (and d!80397 (not c!61556)) b!523252))

(assert (= (and b!523252 c!61555) b!523251))

(assert (= (and b!523252 (not c!61555)) b!523248))

(assert (= (and b!523248 c!61554) b!523250))

(assert (= (and b!523248 (not c!61554)) b!523249))

(assert (=> b!523249 m!504043))

(declare-fun m!504121 () Bool)

(assert (=> b!523249 m!504121))

(assert (=> d!80397 m!504037))

(assert (=> d!80397 m!504067))

(assert (=> d!80397 m!504043))

(declare-fun m!504123 () Bool)

(assert (=> d!80397 m!504123))

(assert (=> d!80397 m!504043))

(assert (=> d!80397 m!504067))

(declare-fun m!504125 () Bool)

(assert (=> d!80397 m!504125))

(declare-fun m!504127 () Bool)

(assert (=> d!80397 m!504127))

(declare-fun m!504129 () Bool)

(assert (=> d!80397 m!504129))

(declare-fun m!504131 () Bool)

(assert (=> b!523252 m!504131))

(assert (=> b!523189 d!80397))

(declare-fun d!80399 () Bool)

(assert (=> d!80399 (= (validKeyInArray!0 (select (arr!15991 a!3235) j!176)) (and (not (= (select (arr!15991 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15991 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523188 d!80399))

(declare-fun b!523254 () Bool)

(declare-fun c!61557 () Bool)

(declare-fun lt!240144 () (_ BitVec 64))

(assert (=> b!523254 (= c!61557 (= lt!240144 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305159 () SeekEntryResult!4465)

(declare-fun e!305161 () SeekEntryResult!4465)

(assert (=> b!523254 (= e!305159 e!305161)))

(declare-fun b!523255 () Bool)

(declare-fun lt!240145 () SeekEntryResult!4465)

(assert (=> b!523255 (= e!305161 (seekKeyOrZeroReturnVacant!0 (x!49071 lt!240145) (index!20068 lt!240145) (index!20068 lt!240145) k0!2280 a!3235 mask!3524))))

(declare-fun b!523256 () Bool)

(assert (=> b!523256 (= e!305161 (MissingZero!4465 (index!20068 lt!240145)))))

(declare-fun b!523257 () Bool)

(assert (=> b!523257 (= e!305159 (Found!4465 (index!20068 lt!240145)))))

(declare-fun d!80401 () Bool)

(declare-fun lt!240146 () SeekEntryResult!4465)

(assert (=> d!80401 (and (or ((_ is Undefined!4465) lt!240146) (not ((_ is Found!4465) lt!240146)) (and (bvsge (index!20067 lt!240146) #b00000000000000000000000000000000) (bvslt (index!20067 lt!240146) (size!16355 a!3235)))) (or ((_ is Undefined!4465) lt!240146) ((_ is Found!4465) lt!240146) (not ((_ is MissingZero!4465) lt!240146)) (and (bvsge (index!20066 lt!240146) #b00000000000000000000000000000000) (bvslt (index!20066 lt!240146) (size!16355 a!3235)))) (or ((_ is Undefined!4465) lt!240146) ((_ is Found!4465) lt!240146) ((_ is MissingZero!4465) lt!240146) (not ((_ is MissingVacant!4465) lt!240146)) (and (bvsge (index!20069 lt!240146) #b00000000000000000000000000000000) (bvslt (index!20069 lt!240146) (size!16355 a!3235)))) (or ((_ is Undefined!4465) lt!240146) (ite ((_ is Found!4465) lt!240146) (= (select (arr!15991 a!3235) (index!20067 lt!240146)) k0!2280) (ite ((_ is MissingZero!4465) lt!240146) (= (select (arr!15991 a!3235) (index!20066 lt!240146)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4465) lt!240146) (= (select (arr!15991 a!3235) (index!20069 lt!240146)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!305160 () SeekEntryResult!4465)

(assert (=> d!80401 (= lt!240146 e!305160)))

(declare-fun c!61559 () Bool)

(assert (=> d!80401 (= c!61559 (and ((_ is Intermediate!4465) lt!240145) (undefined!5277 lt!240145)))))

(assert (=> d!80401 (= lt!240145 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80401 (validMask!0 mask!3524)))

(assert (=> d!80401 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!240146)))

(declare-fun b!523258 () Bool)

(assert (=> b!523258 (= e!305160 e!305159)))

(assert (=> b!523258 (= lt!240144 (select (arr!15991 a!3235) (index!20068 lt!240145)))))

(declare-fun c!61558 () Bool)

(assert (=> b!523258 (= c!61558 (= lt!240144 k0!2280))))

(declare-fun b!523259 () Bool)

(assert (=> b!523259 (= e!305160 Undefined!4465)))

(assert (= (and d!80401 c!61559) b!523259))

(assert (= (and d!80401 (not c!61559)) b!523258))

(assert (= (and b!523258 c!61558) b!523257))

(assert (= (and b!523258 (not c!61558)) b!523254))

(assert (= (and b!523254 c!61557) b!523256))

(assert (= (and b!523254 (not c!61557)) b!523255))

(declare-fun m!504133 () Bool)

(assert (=> b!523255 m!504133))

(assert (=> d!80401 m!504037))

(declare-fun m!504135 () Bool)

(assert (=> d!80401 m!504135))

(declare-fun m!504137 () Bool)

(assert (=> d!80401 m!504137))

(assert (=> d!80401 m!504135))

(declare-fun m!504139 () Bool)

(assert (=> d!80401 m!504139))

(declare-fun m!504141 () Bool)

(assert (=> d!80401 m!504141))

(declare-fun m!504143 () Bool)

(assert (=> d!80401 m!504143))

(declare-fun m!504145 () Bool)

(assert (=> b!523258 m!504145))

(assert (=> b!523185 d!80401))

(declare-fun d!80403 () Bool)

(declare-fun res!320749 () Bool)

(declare-fun e!305166 () Bool)

(assert (=> d!80403 (=> res!320749 e!305166)))

(assert (=> d!80403 (= res!320749 (= (select (arr!15991 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80403 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!305166)))

(declare-fun b!523264 () Bool)

(declare-fun e!305167 () Bool)

(assert (=> b!523264 (= e!305166 e!305167)))

(declare-fun res!320750 () Bool)

(assert (=> b!523264 (=> (not res!320750) (not e!305167))))

(assert (=> b!523264 (= res!320750 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16355 a!3235)))))

(declare-fun b!523265 () Bool)

(assert (=> b!523265 (= e!305167 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80403 (not res!320749)) b!523264))

(assert (= (and b!523264 res!320750) b!523265))

(declare-fun m!504147 () Bool)

(assert (=> d!80403 m!504147))

(declare-fun m!504149 () Bool)

(assert (=> b!523265 m!504149))

(assert (=> b!523190 d!80403))

(declare-fun d!80405 () Bool)

(declare-fun lt!240152 () (_ BitVec 32))

(declare-fun lt!240151 () (_ BitVec 32))

(assert (=> d!80405 (= lt!240152 (bvmul (bvxor lt!240151 (bvlshr lt!240151 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80405 (= lt!240151 ((_ extract 31 0) (bvand (bvxor (select (arr!15991 a!3235) j!176) (bvlshr (select (arr!15991 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80405 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320751 (let ((h!11125 ((_ extract 31 0) (bvand (bvxor (select (arr!15991 a!3235) j!176) (bvlshr (select (arr!15991 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49073 (bvmul (bvxor h!11125 (bvlshr h!11125 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49073 (bvlshr x!49073 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320751 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320751 #b00000000000000000000000000000000))))))

(assert (=> d!80405 (= (toIndex!0 (select (arr!15991 a!3235) j!176) mask!3524) (bvand (bvxor lt!240152 (bvlshr lt!240152 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523184 d!80405))

(declare-fun d!80407 () Bool)

(declare-fun lt!240154 () (_ BitVec 32))

(declare-fun lt!240153 () (_ BitVec 32))

(assert (=> d!80407 (= lt!240154 (bvmul (bvxor lt!240153 (bvlshr lt!240153 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80407 (= lt!240153 ((_ extract 31 0) (bvand (bvxor lt!240101 (bvlshr lt!240101 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80407 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320751 (let ((h!11125 ((_ extract 31 0) (bvand (bvxor lt!240101 (bvlshr lt!240101 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49073 (bvmul (bvxor h!11125 (bvlshr h!11125 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49073 (bvlshr x!49073 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320751 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320751 #b00000000000000000000000000000000))))))

(assert (=> d!80407 (= (toIndex!0 lt!240101 mask!3524) (bvand (bvxor lt!240154 (bvlshr lt!240154 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523184 d!80407))

(declare-fun d!80409 () Bool)

(assert (=> d!80409 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!240157 () Unit!16326)

(declare-fun choose!38 (array!33279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16326)

(assert (=> d!80409 (= lt!240157 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80409 (validMask!0 mask!3524)))

(assert (=> d!80409 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!240157)))

(declare-fun bs!16446 () Bool)

(assert (= bs!16446 d!80409))

(assert (=> bs!16446 m!504063))

(declare-fun m!504151 () Bool)

(assert (=> bs!16446 m!504151))

(assert (=> bs!16446 m!504037))

(assert (=> b!523184 d!80409))

(declare-fun b!523309 () Bool)

(declare-fun lt!240175 () SeekEntryResult!4465)

(assert (=> b!523309 (and (bvsge (index!20068 lt!240175) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240175) (size!16355 a!3235)))))

(declare-fun res!320758 () Bool)

(assert (=> b!523309 (= res!320758 (= (select (arr!15991 a!3235) (index!20068 lt!240175)) (select (arr!15991 a!3235) j!176)))))

(declare-fun e!305193 () Bool)

(assert (=> b!523309 (=> res!320758 e!305193)))

(declare-fun e!305191 () Bool)

(assert (=> b!523309 (= e!305191 e!305193)))

(declare-fun b!523310 () Bool)

(declare-fun e!305194 () SeekEntryResult!4465)

(declare-fun e!305190 () SeekEntryResult!4465)

(assert (=> b!523310 (= e!305194 e!305190)))

(declare-fun lt!240174 () (_ BitVec 64))

(declare-fun c!61578 () Bool)

(assert (=> b!523310 (= c!61578 (or (= lt!240174 (select (arr!15991 a!3235) j!176)) (= (bvadd lt!240174 lt!240174) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523311 () Bool)

(assert (=> b!523311 (= e!305190 (Intermediate!4465 false lt!240104 #b00000000000000000000000000000000))))

(declare-fun b!523312 () Bool)

(assert (=> b!523312 (= e!305194 (Intermediate!4465 true lt!240104 #b00000000000000000000000000000000))))

(declare-fun b!523313 () Bool)

(assert (=> b!523313 (and (bvsge (index!20068 lt!240175) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240175) (size!16355 a!3235)))))

(assert (=> b!523313 (= e!305193 (= (select (arr!15991 a!3235) (index!20068 lt!240175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523314 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523314 (= e!305190 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240104 #b00000000000000000000000000000000 mask!3524) (select (arr!15991 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523308 () Bool)

(declare-fun e!305192 () Bool)

(assert (=> b!523308 (= e!305192 (bvsge (x!49071 lt!240175) #b01111111111111111111111111111110))))

(declare-fun d!80411 () Bool)

(assert (=> d!80411 e!305192))

(declare-fun c!61579 () Bool)

(assert (=> d!80411 (= c!61579 (and ((_ is Intermediate!4465) lt!240175) (undefined!5277 lt!240175)))))

(assert (=> d!80411 (= lt!240175 e!305194)))

(declare-fun c!61580 () Bool)

(assert (=> d!80411 (= c!61580 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80411 (= lt!240174 (select (arr!15991 a!3235) lt!240104))))

(assert (=> d!80411 (validMask!0 mask!3524)))

(assert (=> d!80411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240104 (select (arr!15991 a!3235) j!176) a!3235 mask!3524) lt!240175)))

(declare-fun b!523315 () Bool)

(assert (=> b!523315 (= e!305192 e!305191)))

(declare-fun res!320760 () Bool)

(assert (=> b!523315 (= res!320760 (and ((_ is Intermediate!4465) lt!240175) (not (undefined!5277 lt!240175)) (bvslt (x!49071 lt!240175) #b01111111111111111111111111111110) (bvsge (x!49071 lt!240175) #b00000000000000000000000000000000) (bvsge (x!49071 lt!240175) #b00000000000000000000000000000000)))))

(assert (=> b!523315 (=> (not res!320760) (not e!305191))))

(declare-fun b!523316 () Bool)

(assert (=> b!523316 (and (bvsge (index!20068 lt!240175) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240175) (size!16355 a!3235)))))

(declare-fun res!320759 () Bool)

(assert (=> b!523316 (= res!320759 (= (select (arr!15991 a!3235) (index!20068 lt!240175)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523316 (=> res!320759 e!305193)))

(assert (= (and d!80411 c!61580) b!523312))

(assert (= (and d!80411 (not c!61580)) b!523310))

(assert (= (and b!523310 c!61578) b!523311))

(assert (= (and b!523310 (not c!61578)) b!523314))

(assert (= (and d!80411 c!61579) b!523308))

(assert (= (and d!80411 (not c!61579)) b!523315))

(assert (= (and b!523315 res!320760) b!523309))

(assert (= (and b!523309 (not res!320758)) b!523316))

(assert (= (and b!523316 (not res!320759)) b!523313))

(declare-fun m!504153 () Bool)

(assert (=> d!80411 m!504153))

(assert (=> d!80411 m!504037))

(declare-fun m!504155 () Bool)

(assert (=> b!523316 m!504155))

(declare-fun m!504157 () Bool)

(assert (=> b!523314 m!504157))

(assert (=> b!523314 m!504157))

(assert (=> b!523314 m!504043))

(declare-fun m!504159 () Bool)

(assert (=> b!523314 m!504159))

(assert (=> b!523309 m!504155))

(assert (=> b!523313 m!504155))

(assert (=> b!523184 d!80411))

(declare-fun b!523351 () Bool)

(declare-fun e!305218 () Bool)

(declare-fun call!31831 () Bool)

(assert (=> b!523351 (= e!305218 call!31831)))

(declare-fun b!523352 () Bool)

(declare-fun e!305217 () Bool)

(assert (=> b!523352 (= e!305218 e!305217)))

(declare-fun lt!240197 () (_ BitVec 64))

(assert (=> b!523352 (= lt!240197 (select (arr!15991 a!3235) j!176))))

(declare-fun lt!240199 () Unit!16326)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33279 (_ BitVec 64) (_ BitVec 32)) Unit!16326)

(assert (=> b!523352 (= lt!240199 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240197 j!176))))

(assert (=> b!523352 (arrayContainsKey!0 a!3235 lt!240197 #b00000000000000000000000000000000)))

(declare-fun lt!240198 () Unit!16326)

(assert (=> b!523352 (= lt!240198 lt!240199)))

(declare-fun res!320769 () Bool)

(assert (=> b!523352 (= res!320769 (= (seekEntryOrOpen!0 (select (arr!15991 a!3235) j!176) a!3235 mask!3524) (Found!4465 j!176)))))

(assert (=> b!523352 (=> (not res!320769) (not e!305217))))

(declare-fun bm!31828 () Bool)

(assert (=> bm!31828 (= call!31831 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523354 () Bool)

(declare-fun e!305216 () Bool)

(assert (=> b!523354 (= e!305216 e!305218)))

(declare-fun c!61594 () Bool)

(assert (=> b!523354 (= c!61594 (validKeyInArray!0 (select (arr!15991 a!3235) j!176)))))

(declare-fun d!80417 () Bool)

(declare-fun res!320770 () Bool)

(assert (=> d!80417 (=> res!320770 e!305216)))

(assert (=> d!80417 (= res!320770 (bvsge j!176 (size!16355 a!3235)))))

(assert (=> d!80417 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!305216)))

(declare-fun b!523353 () Bool)

(assert (=> b!523353 (= e!305217 call!31831)))

(assert (= (and d!80417 (not res!320770)) b!523354))

(assert (= (and b!523354 c!61594) b!523352))

(assert (= (and b!523354 (not c!61594)) b!523351))

(assert (= (and b!523352 res!320769) b!523353))

(assert (= (or b!523353 b!523351) bm!31828))

(assert (=> b!523352 m!504043))

(declare-fun m!504199 () Bool)

(assert (=> b!523352 m!504199))

(declare-fun m!504201 () Bool)

(assert (=> b!523352 m!504201))

(assert (=> b!523352 m!504043))

(assert (=> b!523352 m!504045))

(declare-fun m!504203 () Bool)

(assert (=> bm!31828 m!504203))

(assert (=> b!523354 m!504043))

(assert (=> b!523354 m!504043))

(assert (=> b!523354 m!504077))

(assert (=> b!523184 d!80417))

(declare-fun b!523356 () Bool)

(declare-fun lt!240201 () SeekEntryResult!4465)

(assert (=> b!523356 (and (bvsge (index!20068 lt!240201) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240201) (size!16355 lt!240100)))))

(declare-fun res!320771 () Bool)

(assert (=> b!523356 (= res!320771 (= (select (arr!15991 lt!240100) (index!20068 lt!240201)) lt!240101))))

(declare-fun e!305222 () Bool)

(assert (=> b!523356 (=> res!320771 e!305222)))

(declare-fun e!305220 () Bool)

(assert (=> b!523356 (= e!305220 e!305222)))

(declare-fun b!523357 () Bool)

(declare-fun e!305223 () SeekEntryResult!4465)

(declare-fun e!305219 () SeekEntryResult!4465)

(assert (=> b!523357 (= e!305223 e!305219)))

(declare-fun c!61595 () Bool)

(declare-fun lt!240200 () (_ BitVec 64))

(assert (=> b!523357 (= c!61595 (or (= lt!240200 lt!240101) (= (bvadd lt!240200 lt!240200) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523358 () Bool)

(assert (=> b!523358 (= e!305219 (Intermediate!4465 false lt!240107 #b00000000000000000000000000000000))))

(declare-fun b!523359 () Bool)

(assert (=> b!523359 (= e!305223 (Intermediate!4465 true lt!240107 #b00000000000000000000000000000000))))

(declare-fun b!523360 () Bool)

(assert (=> b!523360 (and (bvsge (index!20068 lt!240201) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240201) (size!16355 lt!240100)))))

(assert (=> b!523360 (= e!305222 (= (select (arr!15991 lt!240100) (index!20068 lt!240201)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523361 () Bool)

(assert (=> b!523361 (= e!305219 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240107 #b00000000000000000000000000000000 mask!3524) lt!240101 lt!240100 mask!3524))))

(declare-fun b!523355 () Bool)

(declare-fun e!305221 () Bool)

(assert (=> b!523355 (= e!305221 (bvsge (x!49071 lt!240201) #b01111111111111111111111111111110))))

(declare-fun d!80425 () Bool)

(assert (=> d!80425 e!305221))

(declare-fun c!61596 () Bool)

(assert (=> d!80425 (= c!61596 (and ((_ is Intermediate!4465) lt!240201) (undefined!5277 lt!240201)))))

(assert (=> d!80425 (= lt!240201 e!305223)))

(declare-fun c!61597 () Bool)

(assert (=> d!80425 (= c!61597 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80425 (= lt!240200 (select (arr!15991 lt!240100) lt!240107))))

(assert (=> d!80425 (validMask!0 mask!3524)))

(assert (=> d!80425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240107 lt!240101 lt!240100 mask!3524) lt!240201)))

(declare-fun b!523362 () Bool)

(assert (=> b!523362 (= e!305221 e!305220)))

(declare-fun res!320773 () Bool)

(assert (=> b!523362 (= res!320773 (and ((_ is Intermediate!4465) lt!240201) (not (undefined!5277 lt!240201)) (bvslt (x!49071 lt!240201) #b01111111111111111111111111111110) (bvsge (x!49071 lt!240201) #b00000000000000000000000000000000) (bvsge (x!49071 lt!240201) #b00000000000000000000000000000000)))))

(assert (=> b!523362 (=> (not res!320773) (not e!305220))))

(declare-fun b!523363 () Bool)

(assert (=> b!523363 (and (bvsge (index!20068 lt!240201) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240201) (size!16355 lt!240100)))))

(declare-fun res!320772 () Bool)

(assert (=> b!523363 (= res!320772 (= (select (arr!15991 lt!240100) (index!20068 lt!240201)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523363 (=> res!320772 e!305222)))

(assert (= (and d!80425 c!61597) b!523359))

(assert (= (and d!80425 (not c!61597)) b!523357))

(assert (= (and b!523357 c!61595) b!523358))

(assert (= (and b!523357 (not c!61595)) b!523361))

(assert (= (and d!80425 c!61596) b!523355))

(assert (= (and d!80425 (not c!61596)) b!523362))

(assert (= (and b!523362 res!320773) b!523356))

(assert (= (and b!523356 (not res!320771)) b!523363))

(assert (= (and b!523363 (not res!320772)) b!523360))

(declare-fun m!504205 () Bool)

(assert (=> d!80425 m!504205))

(assert (=> d!80425 m!504037))

(declare-fun m!504207 () Bool)

(assert (=> b!523363 m!504207))

(declare-fun m!504209 () Bool)

(assert (=> b!523361 m!504209))

(assert (=> b!523361 m!504209))

(declare-fun m!504211 () Bool)

(assert (=> b!523361 m!504211))

(assert (=> b!523356 m!504207))

(assert (=> b!523360 m!504207))

(assert (=> b!523184 d!80425))

(declare-fun d!80427 () Bool)

(assert (=> d!80427 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523186 d!80427))

(declare-fun d!80429 () Bool)

(assert (=> d!80429 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47556 d!80429))

(declare-fun d!80437 () Bool)

(assert (=> d!80437 (= (array_inv!11765 a!3235) (bvsge (size!16355 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47556 d!80437))

(declare-fun b!523391 () Bool)

(declare-fun e!305249 () Bool)

(declare-fun e!305247 () Bool)

(assert (=> b!523391 (= e!305249 e!305247)))

(declare-fun res!320792 () Bool)

(assert (=> b!523391 (=> (not res!320792) (not e!305247))))

(declare-fun e!305246 () Bool)

(assert (=> b!523391 (= res!320792 (not e!305246))))

(declare-fun res!320793 () Bool)

(assert (=> b!523391 (=> (not res!320793) (not e!305246))))

(assert (=> b!523391 (= res!320793 (validKeyInArray!0 (select (arr!15991 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523392 () Bool)

(declare-fun e!305248 () Bool)

(declare-fun call!31837 () Bool)

(assert (=> b!523392 (= e!305248 call!31837)))

(declare-fun bm!31834 () Bool)

(declare-fun c!61603 () Bool)

(assert (=> bm!31834 (= call!31837 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61603 (Cons!10198 (select (arr!15991 a!3235) #b00000000000000000000000000000000) Nil!10199) Nil!10199)))))

(declare-fun b!523393 () Bool)

(declare-fun contains!2772 (List!10202 (_ BitVec 64)) Bool)

(assert (=> b!523393 (= e!305246 (contains!2772 Nil!10199 (select (arr!15991 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523394 () Bool)

(assert (=> b!523394 (= e!305247 e!305248)))

(assert (=> b!523394 (= c!61603 (validKeyInArray!0 (select (arr!15991 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523395 () Bool)

(assert (=> b!523395 (= e!305248 call!31837)))

(declare-fun d!80439 () Bool)

(declare-fun res!320791 () Bool)

(assert (=> d!80439 (=> res!320791 e!305249)))

(assert (=> d!80439 (= res!320791 (bvsge #b00000000000000000000000000000000 (size!16355 a!3235)))))

(assert (=> d!80439 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10199) e!305249)))

(assert (= (and d!80439 (not res!320791)) b!523391))

(assert (= (and b!523391 res!320793) b!523393))

(assert (= (and b!523391 res!320792) b!523394))

(assert (= (and b!523394 c!61603) b!523395))

(assert (= (and b!523394 (not c!61603)) b!523392))

(assert (= (or b!523395 b!523392) bm!31834))

(assert (=> b!523391 m!504147))

(assert (=> b!523391 m!504147))

(declare-fun m!504229 () Bool)

(assert (=> b!523391 m!504229))

(assert (=> bm!31834 m!504147))

(declare-fun m!504231 () Bool)

(assert (=> bm!31834 m!504231))

(assert (=> b!523393 m!504147))

(assert (=> b!523393 m!504147))

(declare-fun m!504233 () Bool)

(assert (=> b!523393 m!504233))

(assert (=> b!523394 m!504147))

(assert (=> b!523394 m!504147))

(assert (=> b!523394 m!504229))

(assert (=> b!523180 d!80439))

(declare-fun b!523396 () Bool)

(declare-fun e!305252 () Bool)

(declare-fun call!31838 () Bool)

(assert (=> b!523396 (= e!305252 call!31838)))

(declare-fun b!523397 () Bool)

(declare-fun e!305251 () Bool)

(assert (=> b!523397 (= e!305252 e!305251)))

(declare-fun lt!240208 () (_ BitVec 64))

(assert (=> b!523397 (= lt!240208 (select (arr!15991 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!240210 () Unit!16326)

(assert (=> b!523397 (= lt!240210 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240208 #b00000000000000000000000000000000))))

(assert (=> b!523397 (arrayContainsKey!0 a!3235 lt!240208 #b00000000000000000000000000000000)))

(declare-fun lt!240209 () Unit!16326)

(assert (=> b!523397 (= lt!240209 lt!240210)))

(declare-fun res!320794 () Bool)

(assert (=> b!523397 (= res!320794 (= (seekEntryOrOpen!0 (select (arr!15991 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4465 #b00000000000000000000000000000000)))))

(assert (=> b!523397 (=> (not res!320794) (not e!305251))))

(declare-fun bm!31835 () Bool)

(assert (=> bm!31835 (= call!31838 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523399 () Bool)

(declare-fun e!305250 () Bool)

(assert (=> b!523399 (= e!305250 e!305252)))

(declare-fun c!61604 () Bool)

(assert (=> b!523399 (= c!61604 (validKeyInArray!0 (select (arr!15991 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80447 () Bool)

(declare-fun res!320795 () Bool)

(assert (=> d!80447 (=> res!320795 e!305250)))

(assert (=> d!80447 (= res!320795 (bvsge #b00000000000000000000000000000000 (size!16355 a!3235)))))

(assert (=> d!80447 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!305250)))

(declare-fun b!523398 () Bool)

(assert (=> b!523398 (= e!305251 call!31838)))

(assert (= (and d!80447 (not res!320795)) b!523399))

(assert (= (and b!523399 c!61604) b!523397))

(assert (= (and b!523399 (not c!61604)) b!523396))

(assert (= (and b!523397 res!320794) b!523398))

(assert (= (or b!523398 b!523396) bm!31835))

(assert (=> b!523397 m!504147))

(declare-fun m!504235 () Bool)

(assert (=> b!523397 m!504235))

(declare-fun m!504237 () Bool)

(assert (=> b!523397 m!504237))

(assert (=> b!523397 m!504147))

(declare-fun m!504239 () Bool)

(assert (=> b!523397 m!504239))

(declare-fun m!504241 () Bool)

(assert (=> bm!31835 m!504241))

(assert (=> b!523399 m!504147))

(assert (=> b!523399 m!504147))

(assert (=> b!523399 m!504229))

(assert (=> b!523193 d!80447))

(declare-fun d!80449 () Bool)

(declare-fun e!305272 () Bool)

(assert (=> d!80449 e!305272))

(declare-fun res!320807 () Bool)

(assert (=> d!80449 (=> (not res!320807) (not e!305272))))

(assert (=> d!80449 (= res!320807 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16355 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16355 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16355 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16355 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16355 a!3235))))))

(declare-fun lt!240220 () Unit!16326)

(declare-fun choose!47 (array!33279 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16326)

(assert (=> d!80449 (= lt!240220 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!240104 #b00000000000000000000000000000000 (index!20068 lt!240105) (x!49071 lt!240105) mask!3524))))

(assert (=> d!80449 (validMask!0 mask!3524)))

(assert (=> d!80449 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240104 #b00000000000000000000000000000000 (index!20068 lt!240105) (x!49071 lt!240105) mask!3524) lt!240220)))

(declare-fun b!523427 () Bool)

(assert (=> b!523427 (= e!305272 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240104 (select (store (arr!15991 a!3235) i!1204 k0!2280) j!176) (array!33280 (store (arr!15991 a!3235) i!1204 k0!2280) (size!16355 a!3235)) mask!3524) (Intermediate!4465 false (index!20068 lt!240105) (x!49071 lt!240105))))))

(assert (= (and d!80449 res!320807) b!523427))

(declare-fun m!504263 () Bool)

(assert (=> d!80449 m!504263))

(assert (=> d!80449 m!504037))

(assert (=> b!523427 m!504057))

(assert (=> b!523427 m!504061))

(assert (=> b!523427 m!504061))

(declare-fun m!504265 () Bool)

(assert (=> b!523427 m!504265))

(assert (=> b!523182 d!80449))

(declare-fun b!523435 () Bool)

(declare-fun lt!240222 () SeekEntryResult!4465)

(assert (=> b!523435 (and (bvsge (index!20068 lt!240222) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240222) (size!16355 lt!240100)))))

(declare-fun res!320810 () Bool)

(assert (=> b!523435 (= res!320810 (= (select (arr!15991 lt!240100) (index!20068 lt!240222)) lt!240101))))

(declare-fun e!305280 () Bool)

(assert (=> b!523435 (=> res!320810 e!305280)))

(declare-fun e!305278 () Bool)

(assert (=> b!523435 (= e!305278 e!305280)))

(declare-fun b!523436 () Bool)

(declare-fun e!305283 () SeekEntryResult!4465)

(declare-fun e!305277 () SeekEntryResult!4465)

(assert (=> b!523436 (= e!305283 e!305277)))

(declare-fun c!61615 () Bool)

(declare-fun lt!240221 () (_ BitVec 64))

(assert (=> b!523436 (= c!61615 (or (= lt!240221 lt!240101) (= (bvadd lt!240221 lt!240221) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523437 () Bool)

(assert (=> b!523437 (= e!305277 (Intermediate!4465 false lt!240104 #b00000000000000000000000000000000))))

(declare-fun b!523438 () Bool)

(assert (=> b!523438 (= e!305283 (Intermediate!4465 true lt!240104 #b00000000000000000000000000000000))))

(declare-fun b!523439 () Bool)

(assert (=> b!523439 (and (bvsge (index!20068 lt!240222) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240222) (size!16355 lt!240100)))))

(assert (=> b!523439 (= e!305280 (= (select (arr!15991 lt!240100) (index!20068 lt!240222)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523440 () Bool)

(assert (=> b!523440 (= e!305277 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240104 #b00000000000000000000000000000000 mask!3524) lt!240101 lt!240100 mask!3524))))

(declare-fun b!523434 () Bool)

(declare-fun e!305279 () Bool)

(assert (=> b!523434 (= e!305279 (bvsge (x!49071 lt!240222) #b01111111111111111111111111111110))))

(declare-fun d!80459 () Bool)

(assert (=> d!80459 e!305279))

(declare-fun c!61616 () Bool)

(assert (=> d!80459 (= c!61616 (and ((_ is Intermediate!4465) lt!240222) (undefined!5277 lt!240222)))))

(assert (=> d!80459 (= lt!240222 e!305283)))

(declare-fun c!61617 () Bool)

(assert (=> d!80459 (= c!61617 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80459 (= lt!240221 (select (arr!15991 lt!240100) lt!240104))))

(assert (=> d!80459 (validMask!0 mask!3524)))

(assert (=> d!80459 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240104 lt!240101 lt!240100 mask!3524) lt!240222)))

(declare-fun b!523441 () Bool)

(assert (=> b!523441 (= e!305279 e!305278)))

(declare-fun res!320812 () Bool)

(assert (=> b!523441 (= res!320812 (and ((_ is Intermediate!4465) lt!240222) (not (undefined!5277 lt!240222)) (bvslt (x!49071 lt!240222) #b01111111111111111111111111111110) (bvsge (x!49071 lt!240222) #b00000000000000000000000000000000) (bvsge (x!49071 lt!240222) #b00000000000000000000000000000000)))))

(assert (=> b!523441 (=> (not res!320812) (not e!305278))))

(declare-fun b!523442 () Bool)

(assert (=> b!523442 (and (bvsge (index!20068 lt!240222) #b00000000000000000000000000000000) (bvslt (index!20068 lt!240222) (size!16355 lt!240100)))))

(declare-fun res!320811 () Bool)

(assert (=> b!523442 (= res!320811 (= (select (arr!15991 lt!240100) (index!20068 lt!240222)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!523442 (=> res!320811 e!305280)))

(assert (= (and d!80459 c!61617) b!523438))

(assert (= (and d!80459 (not c!61617)) b!523436))

(assert (= (and b!523436 c!61615) b!523437))

(assert (= (and b!523436 (not c!61615)) b!523440))

(assert (= (and d!80459 c!61616) b!523434))

(assert (= (and d!80459 (not c!61616)) b!523441))

(assert (= (and b!523441 res!320812) b!523435))

(assert (= (and b!523435 (not res!320810)) b!523442))

(assert (= (and b!523442 (not res!320811)) b!523439))

(declare-fun m!504267 () Bool)

(assert (=> d!80459 m!504267))

(assert (=> d!80459 m!504037))

(declare-fun m!504269 () Bool)

(assert (=> b!523442 m!504269))

(assert (=> b!523440 m!504157))

(assert (=> b!523440 m!504157))

(declare-fun m!504271 () Bool)

(assert (=> b!523440 m!504271))

(assert (=> b!523435 m!504269))

(assert (=> b!523439 m!504269))

(assert (=> b!523182 d!80459))

(check-sat (not b!523393) (not bm!31835) (not b!523314) (not b!523440) (not b!523427) (not b!523391) (not b!523361) (not d!80411) (not d!80397) (not d!80425) (not b!523265) (not b!523397) (not b!523394) (not bm!31828) (not b!523352) (not b!523354) (not d!80401) (not b!523255) (not bm!31834) (not d!80409) (not b!523249) (not d!80449) (not d!80459) (not b!523399))
(check-sat)
