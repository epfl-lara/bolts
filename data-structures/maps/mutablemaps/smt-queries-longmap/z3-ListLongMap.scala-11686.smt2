; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136712 () Bool)

(assert start!136712)

(declare-fun b!1578201 () Bool)

(declare-fun res!1078386 () Bool)

(declare-fun e!880305 () Bool)

(assert (=> b!1578201 (=> (not res!1078386) (not e!880305))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578201 (= res!1078386 (validKeyInArray!0 k0!772))))

(declare-fun b!1578200 () Bool)

(declare-fun res!1078387 () Bool)

(assert (=> b!1578200 (=> (not res!1078387) (not e!880305))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105705 0))(
  ( (array!105706 (arr!50960 (Array (_ BitVec 32) (_ BitVec 64))) (size!51511 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105705)

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1578200 (= res!1078387 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51511 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50960 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578202 () Bool)

(declare-fun res!1078388 () Bool)

(assert (=> b!1578202 (=> (not res!1078388) (not e!880305))))

(assert (=> b!1578202 (= res!1078388 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50960 _keys!614) ee!18) k0!772)) (not (= (select (arr!50960 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578203 () Bool)

(declare-datatypes ((SeekEntryResult!13763 0))(
  ( (MissingZero!13763 (index!57449 (_ BitVec 32))) (Found!13763 (index!57450 (_ BitVec 32))) (Intermediate!13763 (undefined!14575 Bool) (index!57451 (_ BitVec 32)) (x!142712 (_ BitVec 32))) (Undefined!13763) (MissingVacant!13763 (index!57452 (_ BitVec 32))) )
))
(declare-fun lt!676144 () SeekEntryResult!13763)

(get-info :version)

(assert (=> b!1578203 (= e!880305 (and (not ((_ is Undefined!13763) lt!676144)) ((_ is Found!13763) lt!676144) (or (bvslt (index!57450 lt!676144) #b00000000000000000000000000000000) (bvsge (index!57450 lt!676144) (size!51511 _keys!614)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105705 (_ BitVec 32)) SeekEntryResult!13763)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578203 (= lt!676144 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k0!772 _keys!614 mask!918))))

(declare-fun res!1078385 () Bool)

(assert (=> start!136712 (=> (not res!1078385) (not e!880305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136712 (= res!1078385 (validMask!0 mask!918))))

(assert (=> start!136712 e!880305))

(assert (=> start!136712 true))

(declare-fun array_inv!39605 (array!105705) Bool)

(assert (=> start!136712 (array_inv!39605 _keys!614)))

(assert (= (and start!136712 res!1078385) b!1578200))

(assert (= (and b!1578200 res!1078387) b!1578201))

(assert (= (and b!1578201 res!1078386) b!1578202))

(assert (= (and b!1578202 res!1078388) b!1578203))

(declare-fun m!1450345 () Bool)

(assert (=> start!136712 m!1450345))

(declare-fun m!1450347 () Bool)

(assert (=> start!136712 m!1450347))

(declare-fun m!1450349 () Bool)

(assert (=> b!1578200 m!1450349))

(declare-fun m!1450351 () Bool)

(assert (=> b!1578202 m!1450351))

(declare-fun m!1450353 () Bool)

(assert (=> b!1578203 m!1450353))

(assert (=> b!1578203 m!1450353))

(declare-fun m!1450355 () Bool)

(assert (=> b!1578203 m!1450355))

(declare-fun m!1450357 () Bool)

(assert (=> b!1578201 m!1450357))

(check-sat (not b!1578203) (not start!136712) (not b!1578201))
(check-sat)
(get-model)

(declare-fun b!1578228 () Bool)

(declare-fun e!880319 () SeekEntryResult!13763)

(declare-fun e!880320 () SeekEntryResult!13763)

(assert (=> b!1578228 (= e!880319 e!880320)))

(declare-fun c!146200 () Bool)

(declare-fun lt!676152 () (_ BitVec 64))

(assert (=> b!1578228 (= c!146200 (= lt!676152 k0!772))))

(declare-fun b!1578229 () Bool)

(assert (=> b!1578229 (= e!880319 Undefined!13763)))

(declare-fun b!1578230 () Bool)

(declare-fun c!146202 () Bool)

(assert (=> b!1578230 (= c!146202 (= lt!676152 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!880318 () SeekEntryResult!13763)

(assert (=> b!1578230 (= e!880320 e!880318)))

(declare-fun b!1578231 () Bool)

(assert (=> b!1578231 (= e!880320 (Found!13763 (nextIndex!0 ee!18 x!466 mask!918)))))

(declare-fun lt!676153 () SeekEntryResult!13763)

(declare-fun d!165975 () Bool)

(assert (=> d!165975 (and (or ((_ is Undefined!13763) lt!676153) (not ((_ is Found!13763) lt!676153)) (and (bvsge (index!57450 lt!676153) #b00000000000000000000000000000000) (bvslt (index!57450 lt!676153) (size!51511 _keys!614)))) (or ((_ is Undefined!13763) lt!676153) ((_ is Found!13763) lt!676153) (not ((_ is MissingVacant!13763) lt!676153)) (not (= (index!57452 lt!676153) vacantSpotIndex!10)) (and (bvsge (index!57452 lt!676153) #b00000000000000000000000000000000) (bvslt (index!57452 lt!676153) (size!51511 _keys!614)))) (or ((_ is Undefined!13763) lt!676153) (ite ((_ is Found!13763) lt!676153) (= (select (arr!50960 _keys!614) (index!57450 lt!676153)) k0!772) (and ((_ is MissingVacant!13763) lt!676153) (= (index!57452 lt!676153) vacantSpotIndex!10) (= (select (arr!50960 _keys!614) (index!57452 lt!676153)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165975 (= lt!676153 e!880319)))

(declare-fun c!146201 () Bool)

(assert (=> d!165975 (= c!146201 (bvsge (bvadd #b00000000000000000000000000000001 x!466) #b01111111111111111111111111111110))))

(assert (=> d!165975 (= lt!676152 (select (arr!50960 _keys!614) (nextIndex!0 ee!18 x!466 mask!918)))))

(assert (=> d!165975 (validMask!0 mask!918)))

(assert (=> d!165975 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k0!772 _keys!614 mask!918) lt!676153)))

(declare-fun b!1578232 () Bool)

(assert (=> b!1578232 (= e!880318 (MissingVacant!13763 vacantSpotIndex!10))))

(declare-fun b!1578233 () Bool)

(assert (=> b!1578233 (= e!880318 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!18 x!466 mask!918) (bvadd #b00000000000000000000000000000001 x!466) mask!918) vacantSpotIndex!10 k0!772 _keys!614 mask!918))))

(assert (= (and d!165975 c!146201) b!1578229))

(assert (= (and d!165975 (not c!146201)) b!1578228))

(assert (= (and b!1578228 c!146200) b!1578231))

(assert (= (and b!1578228 (not c!146200)) b!1578230))

(assert (= (and b!1578230 c!146202) b!1578232))

(assert (= (and b!1578230 (not c!146202)) b!1578233))

(declare-fun m!1450373 () Bool)

(assert (=> d!165975 m!1450373))

(declare-fun m!1450375 () Bool)

(assert (=> d!165975 m!1450375))

(assert (=> d!165975 m!1450353))

(declare-fun m!1450377 () Bool)

(assert (=> d!165975 m!1450377))

(assert (=> d!165975 m!1450345))

(assert (=> b!1578233 m!1450353))

(declare-fun m!1450379 () Bool)

(assert (=> b!1578233 m!1450379))

(assert (=> b!1578233 m!1450379))

(declare-fun m!1450381 () Bool)

(assert (=> b!1578233 m!1450381))

(assert (=> b!1578203 d!165975))

(declare-fun d!165981 () Bool)

(declare-fun lt!676156 () (_ BitVec 32))

(assert (=> d!165981 (and (bvsge lt!676156 #b00000000000000000000000000000000) (bvslt lt!676156 (bvadd mask!918 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165981 (= lt!676156 (choose!52 ee!18 x!466 mask!918))))

(assert (=> d!165981 (validMask!0 mask!918)))

(assert (=> d!165981 (= (nextIndex!0 ee!18 x!466 mask!918) lt!676156)))

(declare-fun bs!45641 () Bool)

(assert (= bs!45641 d!165981))

(declare-fun m!1450383 () Bool)

(assert (=> bs!45641 m!1450383))

(assert (=> bs!45641 m!1450345))

(assert (=> b!1578203 d!165981))

(declare-fun d!165983 () Bool)

(assert (=> d!165983 (= (validMask!0 mask!918) (and (or (= mask!918 #b00000000000000000000000000000111) (= mask!918 #b00000000000000000000000000001111) (= mask!918 #b00000000000000000000000000011111) (= mask!918 #b00000000000000000000000000111111) (= mask!918 #b00000000000000000000000001111111) (= mask!918 #b00000000000000000000000011111111) (= mask!918 #b00000000000000000000000111111111) (= mask!918 #b00000000000000000000001111111111) (= mask!918 #b00000000000000000000011111111111) (= mask!918 #b00000000000000000000111111111111) (= mask!918 #b00000000000000000001111111111111) (= mask!918 #b00000000000000000011111111111111) (= mask!918 #b00000000000000000111111111111111) (= mask!918 #b00000000000000001111111111111111) (= mask!918 #b00000000000000011111111111111111) (= mask!918 #b00000000000000111111111111111111) (= mask!918 #b00000000000001111111111111111111) (= mask!918 #b00000000000011111111111111111111) (= mask!918 #b00000000000111111111111111111111) (= mask!918 #b00000000001111111111111111111111) (= mask!918 #b00000000011111111111111111111111) (= mask!918 #b00000000111111111111111111111111) (= mask!918 #b00000001111111111111111111111111) (= mask!918 #b00000011111111111111111111111111) (= mask!918 #b00000111111111111111111111111111) (= mask!918 #b00001111111111111111111111111111) (= mask!918 #b00011111111111111111111111111111) (= mask!918 #b00111111111111111111111111111111)) (bvsle mask!918 #b00111111111111111111111111111111)))))

(assert (=> start!136712 d!165983))

(declare-fun d!165991 () Bool)

(assert (=> d!165991 (= (array_inv!39605 _keys!614) (bvsge (size!51511 _keys!614) #b00000000000000000000000000000000))))

(assert (=> start!136712 d!165991))

(declare-fun d!165993 () Bool)

(assert (=> d!165993 (= (validKeyInArray!0 k0!772) (and (not (= k0!772 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!772 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1578201 d!165993))

(check-sat (not d!165981) (not d!165975) (not b!1578233))
(check-sat)
