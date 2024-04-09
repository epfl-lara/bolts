; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45468 () Bool)

(assert start!45468)

(declare-fun b!500073 () Bool)

(declare-fun res!302077 () Bool)

(declare-fun e!293010 () Bool)

(assert (=> b!500073 (=> (not res!302077) (not e!293010))))

(declare-datatypes ((array!32253 0))(
  ( (array!32254 (arr!15505 (Array (_ BitVec 32) (_ BitVec 64))) (size!15869 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32253)

(declare-datatypes ((List!9716 0))(
  ( (Nil!9713) (Cons!9712 (h!10586 (_ BitVec 64)) (t!15952 List!9716)) )
))
(declare-fun arrayNoDuplicates!0 (array!32253 (_ BitVec 32) List!9716) Bool)

(assert (=> b!500073 (= res!302077 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9713))))

(declare-fun b!500074 () Bool)

(declare-fun e!293004 () Bool)

(assert (=> b!500074 (= e!293004 false)))

(declare-fun b!500075 () Bool)

(declare-fun res!302080 () Bool)

(declare-fun e!293006 () Bool)

(assert (=> b!500075 (=> (not res!302080) (not e!293006))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500075 (= res!302080 (validKeyInArray!0 (select (arr!15505 a!3235) j!176)))))

(declare-fun b!500076 () Bool)

(assert (=> b!500076 (= e!293006 e!293010)))

(declare-fun res!302085 () Bool)

(assert (=> b!500076 (=> (not res!302085) (not e!293010))))

(declare-datatypes ((SeekEntryResult!3979 0))(
  ( (MissingZero!3979 (index!18098 (_ BitVec 32))) (Found!3979 (index!18099 (_ BitVec 32))) (Intermediate!3979 (undefined!4791 Bool) (index!18100 (_ BitVec 32)) (x!47163 (_ BitVec 32))) (Undefined!3979) (MissingVacant!3979 (index!18101 (_ BitVec 32))) )
))
(declare-fun lt!226962 () SeekEntryResult!3979)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500076 (= res!302085 (or (= lt!226962 (MissingZero!3979 i!1204)) (= lt!226962 (MissingVacant!3979 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32253 (_ BitVec 32)) SeekEntryResult!3979)

(assert (=> b!500076 (= lt!226962 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!500077 () Bool)

(declare-fun e!293011 () Bool)

(declare-fun e!293005 () Bool)

(assert (=> b!500077 (= e!293011 e!293005)))

(declare-fun res!302082 () Bool)

(assert (=> b!500077 (=> res!302082 e!293005)))

(declare-fun lt!226961 () SeekEntryResult!3979)

(declare-fun lt!226963 () (_ BitVec 32))

(assert (=> b!500077 (= res!302082 (or (bvsgt #b00000000000000000000000000000000 (x!47163 lt!226961)) (bvsgt (x!47163 lt!226961) #b01111111111111111111111111111110) (bvslt lt!226963 #b00000000000000000000000000000000) (bvsge lt!226963 (size!15869 a!3235)) (bvslt (index!18100 lt!226961) #b00000000000000000000000000000000) (bvsge (index!18100 lt!226961) (size!15869 a!3235)) (not (= lt!226961 (Intermediate!3979 false (index!18100 lt!226961) (x!47163 lt!226961))))))))

(assert (=> b!500077 (and (or (= (select (arr!15505 a!3235) (index!18100 lt!226961)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15505 a!3235) (index!18100 lt!226961)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15505 a!3235) (index!18100 lt!226961)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15505 a!3235) (index!18100 lt!226961)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!15006 0))(
  ( (Unit!15007) )
))
(declare-fun lt!226967 () Unit!15006)

(declare-fun e!293008 () Unit!15006)

(assert (=> b!500077 (= lt!226967 e!293008)))

(declare-fun c!59276 () Bool)

(assert (=> b!500077 (= c!59276 (= (select (arr!15505 a!3235) (index!18100 lt!226961)) (select (arr!15505 a!3235) j!176)))))

(assert (=> b!500077 (and (bvslt (x!47163 lt!226961) #b01111111111111111111111111111110) (or (= (select (arr!15505 a!3235) (index!18100 lt!226961)) (select (arr!15505 a!3235) j!176)) (= (select (arr!15505 a!3235) (index!18100 lt!226961)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15505 a!3235) (index!18100 lt!226961)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500078 () Bool)

(declare-fun Unit!15008 () Unit!15006)

(assert (=> b!500078 (= e!293008 Unit!15008)))

(declare-fun lt!226966 () Unit!15006)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32253 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15006)

(assert (=> b!500078 (= lt!226966 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226963 #b00000000000000000000000000000000 (index!18100 lt!226961) (x!47163 lt!226961) mask!3524))))

(declare-fun res!302083 () Bool)

(declare-fun lt!226965 () (_ BitVec 64))

(declare-fun lt!226968 () array!32253)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32253 (_ BitVec 32)) SeekEntryResult!3979)

(assert (=> b!500078 (= res!302083 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226963 lt!226965 lt!226968 mask!3524) (Intermediate!3979 false (index!18100 lt!226961) (x!47163 lt!226961))))))

(assert (=> b!500078 (=> (not res!302083) (not e!293004))))

(assert (=> b!500078 e!293004))

(declare-fun b!500079 () Bool)

(assert (=> b!500079 (= e!293010 (not e!293011))))

(declare-fun res!302084 () Bool)

(assert (=> b!500079 (=> res!302084 e!293011)))

(declare-fun lt!226969 () (_ BitVec 32))

(assert (=> b!500079 (= res!302084 (= lt!226961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226969 lt!226965 lt!226968 mask!3524)))))

(assert (=> b!500079 (= lt!226961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226963 (select (arr!15505 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500079 (= lt!226969 (toIndex!0 lt!226965 mask!3524))))

(assert (=> b!500079 (= lt!226965 (select (store (arr!15505 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!500079 (= lt!226963 (toIndex!0 (select (arr!15505 a!3235) j!176) mask!3524))))

(assert (=> b!500079 (= lt!226968 (array!32254 (store (arr!15505 a!3235) i!1204 k0!2280) (size!15869 a!3235)))))

(declare-fun e!293009 () Bool)

(assert (=> b!500079 e!293009))

(declare-fun res!302076 () Bool)

(assert (=> b!500079 (=> (not res!302076) (not e!293009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32253 (_ BitVec 32)) Bool)

(assert (=> b!500079 (= res!302076 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226970 () Unit!15006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32253 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15006)

(assert (=> b!500079 (= lt!226970 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500080 () Bool)

(assert (=> b!500080 (= e!293009 (= (seekEntryOrOpen!0 (select (arr!15505 a!3235) j!176) a!3235 mask!3524) (Found!3979 j!176)))))

(declare-fun b!500081 () Bool)

(assert (=> b!500081 (= e!293005 true)))

(declare-fun lt!226964 () SeekEntryResult!3979)

(assert (=> b!500081 (= lt!226964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226963 lt!226965 lt!226968 mask!3524))))

(declare-fun res!302087 () Bool)

(assert (=> start!45468 (=> (not res!302087) (not e!293006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45468 (= res!302087 (validMask!0 mask!3524))))

(assert (=> start!45468 e!293006))

(assert (=> start!45468 true))

(declare-fun array_inv!11279 (array!32253) Bool)

(assert (=> start!45468 (array_inv!11279 a!3235)))

(declare-fun b!500082 () Bool)

(declare-fun Unit!15009 () Unit!15006)

(assert (=> b!500082 (= e!293008 Unit!15009)))

(declare-fun b!500083 () Bool)

(declare-fun res!302081 () Bool)

(assert (=> b!500083 (=> (not res!302081) (not e!293006))))

(declare-fun arrayContainsKey!0 (array!32253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500083 (= res!302081 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500084 () Bool)

(declare-fun res!302078 () Bool)

(assert (=> b!500084 (=> (not res!302078) (not e!293006))))

(assert (=> b!500084 (= res!302078 (and (= (size!15869 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15869 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15869 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500085 () Bool)

(declare-fun res!302086 () Bool)

(assert (=> b!500085 (=> (not res!302086) (not e!293006))))

(assert (=> b!500085 (= res!302086 (validKeyInArray!0 k0!2280))))

(declare-fun b!500086 () Bool)

(declare-fun res!302075 () Bool)

(assert (=> b!500086 (=> res!302075 e!293011)))

(get-info :version)

(assert (=> b!500086 (= res!302075 (or (undefined!4791 lt!226961) (not ((_ is Intermediate!3979) lt!226961))))))

(declare-fun b!500087 () Bool)

(declare-fun res!302079 () Bool)

(assert (=> b!500087 (=> (not res!302079) (not e!293010))))

(assert (=> b!500087 (= res!302079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45468 res!302087) b!500084))

(assert (= (and b!500084 res!302078) b!500075))

(assert (= (and b!500075 res!302080) b!500085))

(assert (= (and b!500085 res!302086) b!500083))

(assert (= (and b!500083 res!302081) b!500076))

(assert (= (and b!500076 res!302085) b!500087))

(assert (= (and b!500087 res!302079) b!500073))

(assert (= (and b!500073 res!302077) b!500079))

(assert (= (and b!500079 res!302076) b!500080))

(assert (= (and b!500079 (not res!302084)) b!500086))

(assert (= (and b!500086 (not res!302075)) b!500077))

(assert (= (and b!500077 c!59276) b!500078))

(assert (= (and b!500077 (not c!59276)) b!500082))

(assert (= (and b!500078 res!302083) b!500074))

(assert (= (and b!500077 (not res!302082)) b!500081))

(declare-fun m!481255 () Bool)

(assert (=> b!500076 m!481255))

(declare-fun m!481257 () Bool)

(assert (=> start!45468 m!481257))

(declare-fun m!481259 () Bool)

(assert (=> start!45468 m!481259))

(declare-fun m!481261 () Bool)

(assert (=> b!500079 m!481261))

(declare-fun m!481263 () Bool)

(assert (=> b!500079 m!481263))

(declare-fun m!481265 () Bool)

(assert (=> b!500079 m!481265))

(declare-fun m!481267 () Bool)

(assert (=> b!500079 m!481267))

(declare-fun m!481269 () Bool)

(assert (=> b!500079 m!481269))

(declare-fun m!481271 () Bool)

(assert (=> b!500079 m!481271))

(assert (=> b!500079 m!481269))

(declare-fun m!481273 () Bool)

(assert (=> b!500079 m!481273))

(declare-fun m!481275 () Bool)

(assert (=> b!500079 m!481275))

(assert (=> b!500079 m!481269))

(declare-fun m!481277 () Bool)

(assert (=> b!500079 m!481277))

(declare-fun m!481279 () Bool)

(assert (=> b!500081 m!481279))

(declare-fun m!481281 () Bool)

(assert (=> b!500087 m!481281))

(declare-fun m!481283 () Bool)

(assert (=> b!500083 m!481283))

(declare-fun m!481285 () Bool)

(assert (=> b!500085 m!481285))

(assert (=> b!500080 m!481269))

(assert (=> b!500080 m!481269))

(declare-fun m!481287 () Bool)

(assert (=> b!500080 m!481287))

(declare-fun m!481289 () Bool)

(assert (=> b!500078 m!481289))

(assert (=> b!500078 m!481279))

(declare-fun m!481291 () Bool)

(assert (=> b!500073 m!481291))

(assert (=> b!500075 m!481269))

(assert (=> b!500075 m!481269))

(declare-fun m!481293 () Bool)

(assert (=> b!500075 m!481293))

(declare-fun m!481295 () Bool)

(assert (=> b!500077 m!481295))

(assert (=> b!500077 m!481269))

(check-sat (not b!500080) (not b!500075) (not b!500087) (not b!500083) (not b!500081) (not b!500078) (not b!500076) (not b!500073) (not start!45468) (not b!500079) (not b!500085))
(check-sat)
