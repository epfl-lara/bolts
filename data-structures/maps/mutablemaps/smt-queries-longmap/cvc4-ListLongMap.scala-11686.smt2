; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136714 () Bool)

(assert start!136714)

(declare-fun b!1578212 () Bool)

(declare-fun res!1078399 () Bool)

(declare-fun e!880310 () Bool)

(assert (=> b!1578212 (=> (not res!1078399) (not e!880310))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105707 0))(
  ( (array!105708 (arr!50961 (Array (_ BitVec 32) (_ BitVec 64))) (size!51512 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105707)

(declare-fun x!466 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1578212 (= res!1078399 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51512 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50961 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578215 () Bool)

(declare-datatypes ((SeekEntryResult!13764 0))(
  ( (MissingZero!13764 (index!57453 (_ BitVec 32))) (Found!13764 (index!57454 (_ BitVec 32))) (Intermediate!13764 (undefined!14576 Bool) (index!57455 (_ BitVec 32)) (x!142713 (_ BitVec 32))) (Undefined!13764) (MissingVacant!13764 (index!57456 (_ BitVec 32))) )
))
(declare-fun lt!676147 () SeekEntryResult!13764)

(assert (=> b!1578215 (= e!880310 (and (not (is-Undefined!13764 lt!676147)) (is-Found!13764 lt!676147) (or (bvslt (index!57454 lt!676147) #b00000000000000000000000000000000) (bvsge (index!57454 lt!676147) (size!51512 _keys!614)))))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105707 (_ BitVec 32)) SeekEntryResult!13764)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578215 (= lt!676147 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578214 () Bool)

(declare-fun res!1078398 () Bool)

(assert (=> b!1578214 (=> (not res!1078398) (not e!880310))))

(assert (=> b!1578214 (= res!1078398 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50961 _keys!614) ee!18) k!772)) (not (= (select (arr!50961 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1078400 () Bool)

(assert (=> start!136714 (=> (not res!1078400) (not e!880310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136714 (= res!1078400 (validMask!0 mask!918))))

(assert (=> start!136714 e!880310))

(assert (=> start!136714 true))

(declare-fun array_inv!39606 (array!105707) Bool)

(assert (=> start!136714 (array_inv!39606 _keys!614)))

(declare-fun b!1578213 () Bool)

(declare-fun res!1078397 () Bool)

(assert (=> b!1578213 (=> (not res!1078397) (not e!880310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578213 (= res!1078397 (validKeyInArray!0 k!772))))

(assert (= (and start!136714 res!1078400) b!1578212))

(assert (= (and b!1578212 res!1078399) b!1578213))

(assert (= (and b!1578213 res!1078397) b!1578214))

(assert (= (and b!1578214 res!1078398) b!1578215))

(declare-fun m!1450359 () Bool)

(assert (=> start!136714 m!1450359))

(declare-fun m!1450361 () Bool)

(assert (=> start!136714 m!1450361))

(declare-fun m!1450363 () Bool)

(assert (=> b!1578215 m!1450363))

(assert (=> b!1578215 m!1450363))

(declare-fun m!1450365 () Bool)

(assert (=> b!1578215 m!1450365))

(declare-fun m!1450367 () Bool)

(assert (=> b!1578214 m!1450367))

(declare-fun m!1450369 () Bool)

(assert (=> b!1578212 m!1450369))

(declare-fun m!1450371 () Bool)

(assert (=> b!1578213 m!1450371))

(push 1)

(assert (not start!136714))

(assert (not b!1578215))

(assert (not b!1578213))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165989 () Bool)

(assert (=> d!165989 (= (validMask!0 mask!918) (and (or (= mask!918 #b00000000000000000000000000000111) (= mask!918 #b00000000000000000000000000001111) (= mask!918 #b00000000000000000000000000011111) (= mask!918 #b00000000000000000000000000111111) (= mask!918 #b00000000000000000000000001111111) (= mask!918 #b00000000000000000000000011111111) (= mask!918 #b00000000000000000000000111111111) (= mask!918 #b00000000000000000000001111111111) (= mask!918 #b00000000000000000000011111111111) (= mask!918 #b00000000000000000000111111111111) (= mask!918 #b00000000000000000001111111111111) (= mask!918 #b00000000000000000011111111111111) (= mask!918 #b00000000000000000111111111111111) (= mask!918 #b00000000000000001111111111111111) (= mask!918 #b00000000000000011111111111111111) (= mask!918 #b00000000000000111111111111111111) (= mask!918 #b00000000000001111111111111111111) (= mask!918 #b00000000000011111111111111111111) (= mask!918 #b00000000000111111111111111111111) (= mask!918 #b00000000001111111111111111111111) (= mask!918 #b00000000011111111111111111111111) (= mask!918 #b00000000111111111111111111111111) (= mask!918 #b00000001111111111111111111111111) (= mask!918 #b00000011111111111111111111111111) (= mask!918 #b00000111111111111111111111111111) (= mask!918 #b00001111111111111111111111111111) (= mask!918 #b00011111111111111111111111111111) (= mask!918 #b00111111111111111111111111111111)) (bvsle mask!918 #b00111111111111111111111111111111)))))

(assert (=> start!136714 d!165989))

(declare-fun d!165997 () Bool)

(assert (=> d!165997 (= (array_inv!39606 _keys!614) (bvsge (size!51512 _keys!614) #b00000000000000000000000000000000))))

(assert (=> start!136714 d!165997))

(declare-fun b!1578264 () Bool)

(declare-fun e!880337 () SeekEntryResult!13764)

(assert (=> b!1578264 (= e!880337 (Found!13764 (nextIndex!0 ee!18 x!466 mask!918)))))

(declare-fun b!1578266 () Bool)

(declare-fun e!880336 () SeekEntryResult!13764)

(assert (=> b!1578266 (= e!880336 Undefined!13764)))

(declare-fun b!1578267 () Bool)

(declare-fun e!880338 () SeekEntryResult!13764)

(assert (=> b!1578267 (= e!880338 (MissingVacant!13764 vacantSpotIndex!10))))

(declare-fun b!1578268 () Bool)

(declare-fun c!146218 () Bool)

(declare-fun lt!676170 () (_ BitVec 64))

(assert (=> b!1578268 (= c!146218 (= lt!676170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1578268 (= e!880337 e!880338)))

(declare-fun b!1578269 () Bool)

(assert (=> b!1578269 (= e!880338 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!18 x!466 mask!918) (bvadd #b00000000000000000000000000000001 x!466) mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578265 () Bool)

(assert (=> b!1578265 (= e!880336 e!880337)))

(declare-fun c!146220 () Bool)

(assert (=> b!1578265 (= c!146220 (= lt!676170 k!772))))

(declare-fun d!165999 () Bool)

(declare-fun lt!676171 () SeekEntryResult!13764)

(assert (=> d!165999 (and (or (is-Undefined!13764 lt!676171) (not (is-Found!13764 lt!676171)) (and (bvsge (index!57454 lt!676171) #b00000000000000000000000000000000) (bvslt (index!57454 lt!676171) (size!51512 _keys!614)))) (or (is-Undefined!13764 lt!676171) (is-Found!13764 lt!676171) (not (is-MissingVacant!13764 lt!676171)) (not (= (index!57456 lt!676171) vacantSpotIndex!10)) (and (bvsge (index!57456 lt!676171) #b00000000000000000000000000000000) (bvslt (index!57456 lt!676171) (size!51512 _keys!614)))) (or (is-Undefined!13764 lt!676171) (ite (is-Found!13764 lt!676171) (= (select (arr!50961 _keys!614) (index!57454 lt!676171)) k!772) (and (is-MissingVacant!13764 lt!676171) (= (index!57456 lt!676171) vacantSpotIndex!10) (= (select (arr!50961 _keys!614) (index!57456 lt!676171)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165999 (= lt!676171 e!880336)))

(declare-fun c!146219 () Bool)

(assert (=> d!165999 (= c!146219 (bvsge (bvadd #b00000000000000000000000000000001 x!466) #b01111111111111111111111111111110))))

(assert (=> d!165999 (= lt!676170 (select (arr!50961 _keys!614) (nextIndex!0 ee!18 x!466 mask!918)))))

(assert (=> d!165999 (validMask!0 mask!918)))

(assert (=> d!165999 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918) lt!676171)))

(assert (= (and d!165999 c!146219) b!1578266))

(assert (= (and d!165999 (not c!146219)) b!1578265))

(assert (= (and b!1578265 c!146220) b!1578264))

(assert (= (and b!1578265 (not c!146220)) b!1578268))

(assert (= (and b!1578268 c!146218) b!1578267))

(assert (= (and b!1578268 (not c!146218)) b!1578269))

(assert (=> b!1578269 m!1450363))

