; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136754 () Bool)

(assert start!136754)

(declare-fun res!1078459 () Bool)

(declare-fun e!880367 () Bool)

(assert (=> start!136754 (=> (not res!1078459) (not e!880367))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136754 (= res!1078459 (validMask!0 mask!918))))

(assert (=> start!136754 e!880367))

(assert (=> start!136754 true))

(declare-datatypes ((array!105720 0))(
  ( (array!105721 (arr!50966 (Array (_ BitVec 32) (_ BitVec 64))) (size!51517 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105720)

(declare-fun array_inv!39611 (array!105720) Bool)

(assert (=> start!136754 (array_inv!39611 _keys!614)))

(declare-fun b!1578327 () Bool)

(declare-fun res!1078457 () Bool)

(assert (=> b!1578327 (=> (not res!1078457) (not e!880367))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578327 (= res!1078457 (validKeyInArray!0 k0!772))))

(declare-fun b!1578328 () Bool)

(declare-fun res!1078458 () Bool)

(assert (=> b!1578328 (=> (not res!1078458) (not e!880367))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578328 (= res!1078458 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50966 _keys!614) ee!18) k0!772)) (not (= (select (arr!50966 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun b!1578329 () Bool)

(declare-datatypes ((SeekEntryResult!13769 0))(
  ( (MissingZero!13769 (index!57473 (_ BitVec 32))) (Found!13769 (index!57474 (_ BitVec 32))) (Intermediate!13769 (undefined!14581 Bool) (index!57475 (_ BitVec 32)) (x!142740 (_ BitVec 32))) (Undefined!13769) (MissingVacant!13769 (index!57476 (_ BitVec 32))) )
))
(declare-fun lt!676189 () SeekEntryResult!13769)

(get-info :version)

(assert (=> b!1578329 (= e!880367 (and (not ((_ is Undefined!13769) lt!676189)) (ite ((_ is Found!13769) lt!676189) (not (= (select (arr!50966 _keys!614) (index!57474 lt!676189)) k0!772)) (or (not ((_ is MissingVacant!13769) lt!676189)) (not (= (index!57476 lt!676189) vacantSpotIndex!10)) (not (= (select (arr!50966 _keys!614) (index!57476 lt!676189)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105720 (_ BitVec 32)) SeekEntryResult!13769)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578329 (= lt!676189 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k0!772 _keys!614 mask!918))))

(declare-fun b!1578326 () Bool)

(declare-fun res!1078460 () Bool)

(assert (=> b!1578326 (=> (not res!1078460) (not e!880367))))

(assert (=> b!1578326 (= res!1078460 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51517 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50966 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!136754 res!1078459) b!1578326))

(assert (= (and b!1578326 res!1078460) b!1578327))

(assert (= (and b!1578327 res!1078457) b!1578328))

(assert (= (and b!1578328 res!1078458) b!1578329))

(declare-fun m!1450469 () Bool)

(assert (=> start!136754 m!1450469))

(declare-fun m!1450471 () Bool)

(assert (=> start!136754 m!1450471))

(declare-fun m!1450473 () Bool)

(assert (=> b!1578329 m!1450473))

(declare-fun m!1450475 () Bool)

(assert (=> b!1578329 m!1450475))

(declare-fun m!1450477 () Bool)

(assert (=> b!1578329 m!1450477))

(assert (=> b!1578329 m!1450477))

(declare-fun m!1450479 () Bool)

(assert (=> b!1578329 m!1450479))

(declare-fun m!1450481 () Bool)

(assert (=> b!1578327 m!1450481))

(declare-fun m!1450483 () Bool)

(assert (=> b!1578328 m!1450483))

(declare-fun m!1450485 () Bool)

(assert (=> b!1578326 m!1450485))

(check-sat (not b!1578327) (not start!136754) (not b!1578329))
(check-sat)
(get-model)

(declare-fun d!166009 () Bool)

(assert (=> d!166009 (= (validKeyInArray!0 k0!772) (and (not (= k0!772 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!772 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1578327 d!166009))

(declare-fun d!166011 () Bool)

(assert (=> d!166011 (= (validMask!0 mask!918) (and (or (= mask!918 #b00000000000000000000000000000111) (= mask!918 #b00000000000000000000000000001111) (= mask!918 #b00000000000000000000000000011111) (= mask!918 #b00000000000000000000000000111111) (= mask!918 #b00000000000000000000000001111111) (= mask!918 #b00000000000000000000000011111111) (= mask!918 #b00000000000000000000000111111111) (= mask!918 #b00000000000000000000001111111111) (= mask!918 #b00000000000000000000011111111111) (= mask!918 #b00000000000000000000111111111111) (= mask!918 #b00000000000000000001111111111111) (= mask!918 #b00000000000000000011111111111111) (= mask!918 #b00000000000000000111111111111111) (= mask!918 #b00000000000000001111111111111111) (= mask!918 #b00000000000000011111111111111111) (= mask!918 #b00000000000000111111111111111111) (= mask!918 #b00000000000001111111111111111111) (= mask!918 #b00000000000011111111111111111111) (= mask!918 #b00000000000111111111111111111111) (= mask!918 #b00000000001111111111111111111111) (= mask!918 #b00000000011111111111111111111111) (= mask!918 #b00000000111111111111111111111111) (= mask!918 #b00000001111111111111111111111111) (= mask!918 #b00000011111111111111111111111111) (= mask!918 #b00000111111111111111111111111111) (= mask!918 #b00001111111111111111111111111111) (= mask!918 #b00011111111111111111111111111111) (= mask!918 #b00111111111111111111111111111111)) (bvsle mask!918 #b00111111111111111111111111111111)))))

(assert (=> start!136754 d!166011))

(declare-fun d!166013 () Bool)

(assert (=> d!166013 (= (array_inv!39611 _keys!614) (bvsge (size!51517 _keys!614) #b00000000000000000000000000000000))))

(assert (=> start!136754 d!166013))

(declare-fun b!1578366 () Bool)

(declare-fun e!880387 () SeekEntryResult!13769)

(declare-fun e!880389 () SeekEntryResult!13769)

(assert (=> b!1578366 (= e!880387 e!880389)))

(declare-fun c!146235 () Bool)

(declare-fun lt!676201 () (_ BitVec 64))

(assert (=> b!1578366 (= c!146235 (= lt!676201 k0!772))))

(declare-fun b!1578367 () Bool)

(declare-fun e!880388 () SeekEntryResult!13769)

(assert (=> b!1578367 (= e!880388 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!18 x!466 mask!918) (bvadd #b00000000000000000000000000000001 x!466) mask!918) vacantSpotIndex!10 k0!772 _keys!614 mask!918))))

(declare-fun b!1578368 () Bool)

(assert (=> b!1578368 (= e!880388 (MissingVacant!13769 vacantSpotIndex!10))))

(declare-fun b!1578369 () Bool)

(declare-fun c!146233 () Bool)

(assert (=> b!1578369 (= c!146233 (= lt!676201 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1578369 (= e!880389 e!880388)))

(declare-fun lt!676202 () SeekEntryResult!13769)

(declare-fun d!166015 () Bool)

(assert (=> d!166015 (and (or ((_ is Undefined!13769) lt!676202) (not ((_ is Found!13769) lt!676202)) (and (bvsge (index!57474 lt!676202) #b00000000000000000000000000000000) (bvslt (index!57474 lt!676202) (size!51517 _keys!614)))) (or ((_ is Undefined!13769) lt!676202) ((_ is Found!13769) lt!676202) (not ((_ is MissingVacant!13769) lt!676202)) (not (= (index!57476 lt!676202) vacantSpotIndex!10)) (and (bvsge (index!57476 lt!676202) #b00000000000000000000000000000000) (bvslt (index!57476 lt!676202) (size!51517 _keys!614)))) (or ((_ is Undefined!13769) lt!676202) (ite ((_ is Found!13769) lt!676202) (= (select (arr!50966 _keys!614) (index!57474 lt!676202)) k0!772) (and ((_ is MissingVacant!13769) lt!676202) (= (index!57476 lt!676202) vacantSpotIndex!10) (= (select (arr!50966 _keys!614) (index!57476 lt!676202)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!166015 (= lt!676202 e!880387)))

(declare-fun c!146234 () Bool)

(assert (=> d!166015 (= c!146234 (bvsge (bvadd #b00000000000000000000000000000001 x!466) #b01111111111111111111111111111110))))

(assert (=> d!166015 (= lt!676201 (select (arr!50966 _keys!614) (nextIndex!0 ee!18 x!466 mask!918)))))

(assert (=> d!166015 (validMask!0 mask!918)))

(assert (=> d!166015 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k0!772 _keys!614 mask!918) lt!676202)))

(declare-fun b!1578370 () Bool)

(assert (=> b!1578370 (= e!880389 (Found!13769 (nextIndex!0 ee!18 x!466 mask!918)))))

(declare-fun b!1578371 () Bool)

(assert (=> b!1578371 (= e!880387 Undefined!13769)))

(assert (= (and d!166015 c!146234) b!1578371))

(assert (= (and d!166015 (not c!146234)) b!1578366))

(assert (= (and b!1578366 c!146235) b!1578370))

(assert (= (and b!1578366 (not c!146235)) b!1578369))

(assert (= (and b!1578369 c!146233) b!1578368))

(assert (= (and b!1578369 (not c!146233)) b!1578367))

(assert (=> b!1578367 m!1450477))

(declare-fun m!1450505 () Bool)

(assert (=> b!1578367 m!1450505))

(assert (=> b!1578367 m!1450505))

(declare-fun m!1450507 () Bool)

(assert (=> b!1578367 m!1450507))

(declare-fun m!1450509 () Bool)

(assert (=> d!166015 m!1450509))

(declare-fun m!1450511 () Bool)

(assert (=> d!166015 m!1450511))

(assert (=> d!166015 m!1450477))

(declare-fun m!1450513 () Bool)

(assert (=> d!166015 m!1450513))

(assert (=> d!166015 m!1450469))

(assert (=> b!1578329 d!166015))

(declare-fun d!166023 () Bool)

(declare-fun lt!676209 () (_ BitVec 32))

(assert (=> d!166023 (and (bvsge lt!676209 #b00000000000000000000000000000000) (bvslt lt!676209 (bvadd mask!918 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!166023 (= lt!676209 (choose!52 ee!18 x!466 mask!918))))

(assert (=> d!166023 (validMask!0 mask!918)))

(assert (=> d!166023 (= (nextIndex!0 ee!18 x!466 mask!918) lt!676209)))

(declare-fun bs!45650 () Bool)

(assert (= bs!45650 d!166023))

(declare-fun m!1450525 () Bool)

(assert (=> bs!45650 m!1450525))

(assert (=> bs!45650 m!1450469))

(assert (=> b!1578329 d!166023))

(check-sat (not d!166023) (not b!1578367) (not d!166015))
(check-sat)
