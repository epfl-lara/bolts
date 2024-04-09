; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45690 () Bool)

(assert start!45690)

(declare-fun b!504073 () Bool)

(declare-fun e!295159 () Bool)

(assert (=> b!504073 (= e!295159 false)))

(declare-fun b!504074 () Bool)

(declare-datatypes ((Unit!15306 0))(
  ( (Unit!15307) )
))
(declare-fun e!295157 () Unit!15306)

(declare-fun Unit!15308 () Unit!15306)

(assert (=> b!504074 (= e!295157 Unit!15308)))

(declare-fun b!504075 () Bool)

(declare-fun e!295161 () Bool)

(declare-fun e!295162 () Bool)

(assert (=> b!504075 (= e!295161 e!295162)))

(declare-fun res!305430 () Bool)

(assert (=> b!504075 (=> (not res!305430) (not e!295162))))

(declare-datatypes ((SeekEntryResult!4054 0))(
  ( (MissingZero!4054 (index!18404 (_ BitVec 32))) (Found!4054 (index!18405 (_ BitVec 32))) (Intermediate!4054 (undefined!4866 Bool) (index!18406 (_ BitVec 32)) (x!47450 (_ BitVec 32))) (Undefined!4054) (MissingVacant!4054 (index!18407 (_ BitVec 32))) )
))
(declare-fun lt!229526 () SeekEntryResult!4054)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504075 (= res!305430 (or (= lt!229526 (MissingZero!4054 i!1204)) (= lt!229526 (MissingVacant!4054 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32406 0))(
  ( (array!32407 (arr!15580 (Array (_ BitVec 32) (_ BitVec 64))) (size!15944 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32406)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32406 (_ BitVec 32)) SeekEntryResult!4054)

(assert (=> b!504075 (= lt!229526 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!504076 () Bool)

(declare-fun res!305428 () Bool)

(assert (=> b!504076 (=> (not res!305428) (not e!295161))))

(declare-fun arrayContainsKey!0 (array!32406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504076 (= res!305428 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504077 () Bool)

(declare-fun res!305433 () Bool)

(assert (=> b!504077 (=> (not res!305433) (not e!295161))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!504077 (= res!305433 (and (= (size!15944 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15944 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15944 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504078 () Bool)

(declare-fun res!305435 () Bool)

(declare-fun e!295155 () Bool)

(assert (=> b!504078 (=> res!305435 e!295155)))

(declare-fun lt!229524 () SeekEntryResult!4054)

(get-info :version)

(assert (=> b!504078 (= res!305435 (or (undefined!4866 lt!229524) (not ((_ is Intermediate!4054) lt!229524))))))

(declare-fun b!504079 () Bool)

(declare-fun res!305436 () Bool)

(assert (=> b!504079 (=> (not res!305436) (not e!295162))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32406 (_ BitVec 32)) Bool)

(assert (=> b!504079 (= res!305436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504080 () Bool)

(declare-fun res!305431 () Bool)

(assert (=> b!504080 (=> (not res!305431) (not e!295161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504080 (= res!305431 (validKeyInArray!0 (select (arr!15580 a!3235) j!176)))))

(declare-fun b!504081 () Bool)

(declare-fun res!305434 () Bool)

(declare-fun e!295156 () Bool)

(assert (=> b!504081 (=> res!305434 e!295156)))

(declare-fun e!295160 () Bool)

(assert (=> b!504081 (= res!305434 e!295160)))

(declare-fun res!305427 () Bool)

(assert (=> b!504081 (=> (not res!305427) (not e!295160))))

(assert (=> b!504081 (= res!305427 (bvsgt #b00000000000000000000000000000000 (x!47450 lt!229524)))))

(declare-fun b!504082 () Bool)

(assert (=> b!504082 (= e!295156 true)))

(declare-fun lt!229530 () array!32406)

(declare-fun lt!229522 () (_ BitVec 64))

(declare-fun lt!229531 () SeekEntryResult!4054)

(declare-fun lt!229532 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32406 (_ BitVec 32)) SeekEntryResult!4054)

(assert (=> b!504082 (= lt!229531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229532 lt!229522 lt!229530 mask!3524))))

(declare-fun b!504083 () Bool)

(declare-fun Unit!15309 () Unit!15306)

(assert (=> b!504083 (= e!295157 Unit!15309)))

(declare-fun lt!229523 () Unit!15306)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32406 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15306)

(assert (=> b!504083 (= lt!229523 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229532 #b00000000000000000000000000000000 (index!18406 lt!229524) (x!47450 lt!229524) mask!3524))))

(declare-fun res!305425 () Bool)

(assert (=> b!504083 (= res!305425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229532 lt!229522 lt!229530 mask!3524) (Intermediate!4054 false (index!18406 lt!229524) (x!47450 lt!229524))))))

(assert (=> b!504083 (=> (not res!305425) (not e!295159))))

(assert (=> b!504083 e!295159))

(declare-fun b!504084 () Bool)

(assert (=> b!504084 (= e!295155 e!295156)))

(declare-fun res!305432 () Bool)

(assert (=> b!504084 (=> res!305432 e!295156)))

(assert (=> b!504084 (= res!305432 (or (bvsgt (x!47450 lt!229524) #b01111111111111111111111111111110) (bvslt lt!229532 #b00000000000000000000000000000000) (bvsge lt!229532 (size!15944 a!3235)) (bvslt (index!18406 lt!229524) #b00000000000000000000000000000000) (bvsge (index!18406 lt!229524) (size!15944 a!3235)) (not (= lt!229524 (Intermediate!4054 false (index!18406 lt!229524) (x!47450 lt!229524))))))))

(assert (=> b!504084 (= (index!18406 lt!229524) i!1204)))

(declare-fun lt!229529 () Unit!15306)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32406 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15306)

(assert (=> b!504084 (= lt!229529 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229532 #b00000000000000000000000000000000 (index!18406 lt!229524) (x!47450 lt!229524) mask!3524))))

(assert (=> b!504084 (and (or (= (select (arr!15580 a!3235) (index!18406 lt!229524)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15580 a!3235) (index!18406 lt!229524)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15580 a!3235) (index!18406 lt!229524)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15580 a!3235) (index!18406 lt!229524)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229528 () Unit!15306)

(assert (=> b!504084 (= lt!229528 e!295157)))

(declare-fun c!59603 () Bool)

(assert (=> b!504084 (= c!59603 (= (select (arr!15580 a!3235) (index!18406 lt!229524)) (select (arr!15580 a!3235) j!176)))))

(assert (=> b!504084 (and (bvslt (x!47450 lt!229524) #b01111111111111111111111111111110) (or (= (select (arr!15580 a!3235) (index!18406 lt!229524)) (select (arr!15580 a!3235) j!176)) (= (select (arr!15580 a!3235) (index!18406 lt!229524)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15580 a!3235) (index!18406 lt!229524)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504085 () Bool)

(assert (=> b!504085 (= e!295162 (not e!295155))))

(declare-fun res!305424 () Bool)

(assert (=> b!504085 (=> res!305424 e!295155)))

(declare-fun lt!229527 () (_ BitVec 32))

(assert (=> b!504085 (= res!305424 (= lt!229524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229527 lt!229522 lt!229530 mask!3524)))))

(assert (=> b!504085 (= lt!229524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229532 (select (arr!15580 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504085 (= lt!229527 (toIndex!0 lt!229522 mask!3524))))

(assert (=> b!504085 (= lt!229522 (select (store (arr!15580 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!504085 (= lt!229532 (toIndex!0 (select (arr!15580 a!3235) j!176) mask!3524))))

(assert (=> b!504085 (= lt!229530 (array!32407 (store (arr!15580 a!3235) i!1204 k0!2280) (size!15944 a!3235)))))

(declare-fun e!295154 () Bool)

(assert (=> b!504085 e!295154))

(declare-fun res!305429 () Bool)

(assert (=> b!504085 (=> (not res!305429) (not e!295154))))

(assert (=> b!504085 (= res!305429 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229525 () Unit!15306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32406 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15306)

(assert (=> b!504085 (= lt!229525 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504086 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32406 (_ BitVec 32)) SeekEntryResult!4054)

(assert (=> b!504086 (= e!295160 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229532 (index!18406 lt!229524) (select (arr!15580 a!3235) j!176) a!3235 mask!3524) (Found!4054 j!176))))))

(declare-fun b!504087 () Bool)

(assert (=> b!504087 (= e!295154 (= (seekEntryOrOpen!0 (select (arr!15580 a!3235) j!176) a!3235 mask!3524) (Found!4054 j!176)))))

(declare-fun b!504088 () Bool)

(declare-fun res!305438 () Bool)

(assert (=> b!504088 (=> (not res!305438) (not e!295161))))

(assert (=> b!504088 (= res!305438 (validKeyInArray!0 k0!2280))))

(declare-fun b!504089 () Bool)

(declare-fun res!305437 () Bool)

(assert (=> b!504089 (=> (not res!305437) (not e!295162))))

(declare-datatypes ((List!9791 0))(
  ( (Nil!9788) (Cons!9787 (h!10664 (_ BitVec 64)) (t!16027 List!9791)) )
))
(declare-fun arrayNoDuplicates!0 (array!32406 (_ BitVec 32) List!9791) Bool)

(assert (=> b!504089 (= res!305437 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9788))))

(declare-fun res!305426 () Bool)

(assert (=> start!45690 (=> (not res!305426) (not e!295161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45690 (= res!305426 (validMask!0 mask!3524))))

(assert (=> start!45690 e!295161))

(assert (=> start!45690 true))

(declare-fun array_inv!11354 (array!32406) Bool)

(assert (=> start!45690 (array_inv!11354 a!3235)))

(assert (= (and start!45690 res!305426) b!504077))

(assert (= (and b!504077 res!305433) b!504080))

(assert (= (and b!504080 res!305431) b!504088))

(assert (= (and b!504088 res!305438) b!504076))

(assert (= (and b!504076 res!305428) b!504075))

(assert (= (and b!504075 res!305430) b!504079))

(assert (= (and b!504079 res!305436) b!504089))

(assert (= (and b!504089 res!305437) b!504085))

(assert (= (and b!504085 res!305429) b!504087))

(assert (= (and b!504085 (not res!305424)) b!504078))

(assert (= (and b!504078 (not res!305435)) b!504084))

(assert (= (and b!504084 c!59603) b!504083))

(assert (= (and b!504084 (not c!59603)) b!504074))

(assert (= (and b!504083 res!305425) b!504073))

(assert (= (and b!504084 (not res!305432)) b!504081))

(assert (= (and b!504081 res!305427) b!504086))

(assert (= (and b!504081 (not res!305434)) b!504082))

(declare-fun m!484865 () Bool)

(assert (=> b!504083 m!484865))

(declare-fun m!484867 () Bool)

(assert (=> b!504083 m!484867))

(declare-fun m!484869 () Bool)

(assert (=> b!504087 m!484869))

(assert (=> b!504087 m!484869))

(declare-fun m!484871 () Bool)

(assert (=> b!504087 m!484871))

(declare-fun m!484873 () Bool)

(assert (=> b!504089 m!484873))

(declare-fun m!484875 () Bool)

(assert (=> b!504075 m!484875))

(assert (=> b!504082 m!484867))

(assert (=> b!504080 m!484869))

(assert (=> b!504080 m!484869))

(declare-fun m!484877 () Bool)

(assert (=> b!504080 m!484877))

(declare-fun m!484879 () Bool)

(assert (=> b!504085 m!484879))

(declare-fun m!484881 () Bool)

(assert (=> b!504085 m!484881))

(declare-fun m!484883 () Bool)

(assert (=> b!504085 m!484883))

(declare-fun m!484885 () Bool)

(assert (=> b!504085 m!484885))

(assert (=> b!504085 m!484869))

(declare-fun m!484887 () Bool)

(assert (=> b!504085 m!484887))

(assert (=> b!504085 m!484869))

(declare-fun m!484889 () Bool)

(assert (=> b!504085 m!484889))

(declare-fun m!484891 () Bool)

(assert (=> b!504085 m!484891))

(assert (=> b!504085 m!484869))

(declare-fun m!484893 () Bool)

(assert (=> b!504085 m!484893))

(declare-fun m!484895 () Bool)

(assert (=> b!504079 m!484895))

(declare-fun m!484897 () Bool)

(assert (=> b!504084 m!484897))

(declare-fun m!484899 () Bool)

(assert (=> b!504084 m!484899))

(assert (=> b!504084 m!484869))

(assert (=> b!504086 m!484869))

(assert (=> b!504086 m!484869))

(declare-fun m!484901 () Bool)

(assert (=> b!504086 m!484901))

(declare-fun m!484903 () Bool)

(assert (=> b!504088 m!484903))

(declare-fun m!484905 () Bool)

(assert (=> b!504076 m!484905))

(declare-fun m!484907 () Bool)

(assert (=> start!45690 m!484907))

(declare-fun m!484909 () Bool)

(assert (=> start!45690 m!484909))

(check-sat (not b!504076) (not b!504086) (not b!504088) (not b!504075) (not b!504083) (not b!504079) (not b!504082) (not start!45690) (not b!504084) (not b!504080) (not b!504087) (not b!504085) (not b!504089))
(check-sat)
