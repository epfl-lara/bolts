; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136752 () Bool)

(assert start!136752)

(declare-fun b!1578314 () Bool)

(declare-fun res!1078446 () Bool)

(declare-fun e!880361 () Bool)

(assert (=> b!1578314 (=> (not res!1078446) (not e!880361))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105718 0))(
  ( (array!105719 (arr!50965 (Array (_ BitVec 32) (_ BitVec 64))) (size!51516 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105718)

(assert (=> b!1578314 (= res!1078446 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51516 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50965 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578316 () Bool)

(declare-fun res!1078448 () Bool)

(assert (=> b!1578316 (=> (not res!1078448) (not e!880361))))

(declare-fun k!772 () (_ BitVec 64))

(assert (=> b!1578316 (= res!1078448 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50965 _keys!614) ee!18) k!772)) (not (= (select (arr!50965 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578317 () Bool)

(declare-datatypes ((SeekEntryResult!13768 0))(
  ( (MissingZero!13768 (index!57469 (_ BitVec 32))) (Found!13768 (index!57470 (_ BitVec 32))) (Intermediate!13768 (undefined!14580 Bool) (index!57471 (_ BitVec 32)) (x!142739 (_ BitVec 32))) (Undefined!13768) (MissingVacant!13768 (index!57472 (_ BitVec 32))) )
))
(declare-fun lt!676186 () SeekEntryResult!13768)

(assert (=> b!1578317 (= e!880361 (and (not (is-Undefined!13768 lt!676186)) (ite (is-Found!13768 lt!676186) (not (= (select (arr!50965 _keys!614) (index!57470 lt!676186)) k!772)) (or (not (is-MissingVacant!13768 lt!676186)) (not (= (index!57472 lt!676186) vacantSpotIndex!10)) (not (= (select (arr!50965 _keys!614) (index!57472 lt!676186)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105718 (_ BitVec 32)) SeekEntryResult!13768)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578317 (= lt!676186 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578315 () Bool)

(declare-fun res!1078447 () Bool)

(assert (=> b!1578315 (=> (not res!1078447) (not e!880361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578315 (= res!1078447 (validKeyInArray!0 k!772))))

(declare-fun res!1078445 () Bool)

(assert (=> start!136752 (=> (not res!1078445) (not e!880361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136752 (= res!1078445 (validMask!0 mask!918))))

(assert (=> start!136752 e!880361))

(assert (=> start!136752 true))

(declare-fun array_inv!39610 (array!105718) Bool)

(assert (=> start!136752 (array_inv!39610 _keys!614)))

(assert (= (and start!136752 res!1078445) b!1578314))

(assert (= (and b!1578314 res!1078446) b!1578315))

(assert (= (and b!1578315 res!1078447) b!1578316))

(assert (= (and b!1578316 res!1078448) b!1578317))

(declare-fun m!1450451 () Bool)

(assert (=> b!1578315 m!1450451))

(declare-fun m!1450453 () Bool)

(assert (=> b!1578314 m!1450453))

(declare-fun m!1450455 () Bool)

(assert (=> start!136752 m!1450455))

(declare-fun m!1450457 () Bool)

(assert (=> start!136752 m!1450457))

(declare-fun m!1450459 () Bool)

(assert (=> b!1578317 m!1450459))

(declare-fun m!1450461 () Bool)

(assert (=> b!1578317 m!1450461))

(declare-fun m!1450463 () Bool)

(assert (=> b!1578317 m!1450463))

(assert (=> b!1578317 m!1450463))

(declare-fun m!1450465 () Bool)

(assert (=> b!1578317 m!1450465))

(declare-fun m!1450467 () Bool)

(assert (=> b!1578316 m!1450467))

(push 1)

(assert (not b!1578317))

(assert (not start!136752))

(assert (not b!1578315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1578372 () Bool)

(declare-fun e!880391 () SeekEntryResult!13768)

(declare-fun e!880392 () SeekEntryResult!13768)

(assert (=> b!1578372 (= e!880391 e!880392)))

(declare-fun c!146238 () Bool)

(declare-fun lt!676204 () (_ BitVec 64))

(assert (=> b!1578372 (= c!146238 (= lt!676204 k!772))))

(declare-fun b!1578373 () Bool)

(declare-fun e!880390 () SeekEntryResult!13768)

(assert (=> b!1578373 (= e!880390 (MissingVacant!13768 vacantSpotIndex!10))))

(declare-fun b!1578374 () Bool)

(assert (=> b!1578374 (= e!880390 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!18 x!466 mask!918) (bvadd #b00000000000000000000000000000001 x!466) mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578376 () Bool)

(assert (=> b!1578376 (= e!880391 Undefined!13768)))

(declare-fun b!1578377 () Bool)

(assert (=> b!1578377 (= e!880392 (Found!13768 (nextIndex!0 ee!18 x!466 mask!918)))))

(declare-fun b!1578375 () Bool)

(declare-fun c!146237 () Bool)

(assert (=> b!1578375 (= c!146237 (= lt!676204 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1578375 (= e!880392 e!880390)))

