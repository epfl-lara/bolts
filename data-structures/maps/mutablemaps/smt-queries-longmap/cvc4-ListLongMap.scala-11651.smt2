; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136186 () Bool)

(assert start!136186)

(declare-fun res!1076990 () Bool)

(declare-fun e!879239 () Bool)

(assert (=> start!136186 (=> (not res!1076990) (not e!879239))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136186 (= res!1076990 (validMask!0 mask!898))))

(assert (=> start!136186 e!879239))

(assert (=> start!136186 true))

(declare-datatypes ((array!105464 0))(
  ( (array!105465 (arr!50856 (Array (_ BitVec 32) (_ BitVec 64))) (size!51407 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105464)

(declare-fun array_inv!39501 (array!105464) Bool)

(assert (=> start!136186 (array_inv!39501 _keys!605)))

(declare-fun b!1576332 () Bool)

(declare-fun res!1076989 () Bool)

(assert (=> b!1576332 (=> (not res!1076989) (not e!879239))))

(assert (=> b!1576332 (= res!1076989 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51407 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576333 () Bool)

(declare-fun res!1076988 () Bool)

(assert (=> b!1576333 (=> (not res!1076988) (not e!879239))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576333 (= res!1076988 (validKeyInArray!0 k!761))))

(declare-fun b!1576334 () Bool)

(declare-fun lt!675543 () Bool)

(declare-datatypes ((SeekEntryResult!13737 0))(
  ( (MissingZero!13737 (index!57345 (_ BitVec 32))) (Found!13737 (index!57346 (_ BitVec 32))) (Intermediate!13737 (undefined!14549 Bool) (index!57347 (_ BitVec 32)) (x!142346 (_ BitVec 32))) (Undefined!13737) (MissingVacant!13737 (index!57348 (_ BitVec 32))) )
))
(declare-fun lt!675544 () SeekEntryResult!13737)

(assert (=> b!1576334 (= e!879239 (and (or lt!675543 (not (undefined!14549 lt!675544))) (or lt!675543 (undefined!14549 lt!675544))))))

(assert (=> b!1576334 (= lt!675543 (not (is-Intermediate!13737 lt!675544)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105464 (_ BitVec 32)) SeekEntryResult!13737)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576334 (= lt!675544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!136186 res!1076990) b!1576332))

(assert (= (and b!1576332 res!1076989) b!1576333))

(assert (= (and b!1576333 res!1076988) b!1576334))

(declare-fun m!1449001 () Bool)

(assert (=> start!136186 m!1449001))

(declare-fun m!1449003 () Bool)

(assert (=> start!136186 m!1449003))

(declare-fun m!1449005 () Bool)

(assert (=> b!1576333 m!1449005))

(declare-fun m!1449007 () Bool)

(assert (=> b!1576334 m!1449007))

(assert (=> b!1576334 m!1449007))

(declare-fun m!1449009 () Bool)

(assert (=> b!1576334 m!1449009))

(push 1)

(assert (not start!136186))

(assert (not b!1576333))

(assert (not b!1576334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165595 () Bool)

(assert (=> d!165595 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136186 d!165595))

(declare-fun d!165597 () Bool)

(assert (=> d!165597 (= (array_inv!39501 _keys!605) (bvsge (size!51407 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136186 d!165597))

(declare-fun d!165599 () Bool)

(assert (=> d!165599 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576333 d!165599))

(declare-fun b!1576407 () Bool)

(declare-fun e!879284 () SeekEntryResult!13737)

(declare-fun e!879281 () SeekEntryResult!13737)

(assert (=> b!1576407 (= e!879284 e!879281)))

(declare-fun c!145975 () Bool)

(declare-fun lt!675573 () (_ BitVec 64))

(assert (=> b!1576407 (= c!145975 (or (= lt!675573 k!761) (= (bvadd lt!675573 lt!675573) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576408 () Bool)

(assert (=> b!1576408 (= e!879281 (Intermediate!13737 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576409 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576409 (= e!879281 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576410 () Bool)

(declare-fun lt!675574 () SeekEntryResult!13737)

(assert (=> b!1576410 (and (bvsge (index!57347 lt!675574) #b00000000000000000000000000000000) (bvslt (index!57347 lt!675574) (size!51407 _keys!605)))))

(declare-fun res!1077017 () Bool)

(assert (=> b!1576410 (= res!1077017 (= (select (arr!50856 _keys!605) (index!57347 lt!675574)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879285 () Bool)

(assert (=> b!1576410 (=> res!1077017 e!879285)))

(declare-fun d!165601 () Bool)

(declare-fun e!879283 () Bool)

(assert (=> d!165601 e!879283))

(declare-fun c!145977 () Bool)

(assert (=> d!165601 (= c!145977 (and (is-Intermediate!13737 lt!675574) (undefined!14549 lt!675574)))))

(assert (=> d!165601 (= lt!675574 e!879284)))

(declare-fun c!145976 () Bool)

(assert (=> d!165601 (= c!145976 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165601 (= lt!675573 (select (arr!50856 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165601 (validMask!0 mask!898)))

(assert (=> d!165601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675574)))

(declare-fun b!1576411 () Bool)

(assert (=> b!1576411 (and (bvsge (index!57347 lt!675574) #b00000000000000000000000000000000) (bvslt (index!57347 lt!675574) (size!51407 _keys!605)))))

(declare-fun res!1077019 () Bool)

(assert (=> b!1576411 (= res!1077019 (= (select (arr!50856 _keys!605) (index!57347 lt!675574)) k!761))))

(assert (=> b!1576411 (=> res!1077019 e!879285)))

(declare-fun e!879282 () Bool)

(assert (=> b!1576411 (= e!879282 e!879285)))

(declare-fun b!1576412 () Bool)

(assert (=> b!1576412 (= e!879283 (bvsge (x!142346 lt!675574) #b01111111111111111111111111111110))))

(declare-fun b!1576413 () Bool)

(assert (=> b!1576413 (and (bvsge (index!57347 lt!675574) #b00000000000000000000000000000000) (bvslt (index!57347 lt!675574) (size!51407 _keys!605)))))

(assert (=> b!1576413 (= e!879285 (= (select (arr!50856 _keys!605) (index!57347 lt!675574)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576414 () Bool)

(assert (=> b!1576414 (= e!879283 e!879282)))

(declare-fun res!1077018 () Bool)

(assert (=> b!1576414 (= res!1077018 (and (is-Intermediate!13737 lt!675574) (not (undefined!14549 lt!675574)) (bvslt (x!142346 lt!675574) #b01111111111111111111111111111110) (bvsge (x!142346 lt!675574) #b00000000000000000000000000000000) (bvsge (x!142346 lt!675574) #b00000000000000000000000000000000)))))

(assert (=> b!1576414 (=> (not res!1077018) (not e!879282))))

(declare-fun b!1576415 () Bool)

(assert (=> b!1576415 (= e!879284 (Intermediate!13737 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(assert (= (and d!165601 c!145976) b!1576415))

(assert (= (and d!165601 (not c!145976)) b!1576407))

(assert (= (and b!1576407 c!145975) b!1576408))

(assert (= (and b!1576407 (not c!145975)) b!1576409))

(assert (= (and d!165601 c!145977) b!1576412))

(assert (= (and d!165601 (not c!145977)) b!1576414))

(assert (= (and b!1576414 res!1077018) b!1576411))

(assert (= (and b!1576411 (not res!1077019)) b!1576410))

(assert (= (and b!1576410 (not res!1077017)) b!1576413))

(declare-fun m!1449027 () Bool)

(assert (=> b!1576410 m!1449027))

(assert (=> b!1576411 m!1449027))

(assert (=> b!1576413 m!1449027))

(assert (=> b!1576409 m!1449007))

(declare-fun m!1449029 () Bool)

(assert (=> b!1576409 m!1449029))

(assert (=> b!1576409 m!1449029))

(declare-fun m!1449031 () Bool)

(assert (=> b!1576409 m!1449031))

(assert (=> d!165601 m!1449007))

(declare-fun m!1449033 () Bool)

(assert (=> d!165601 m!1449033))

(assert (=> d!165601 m!1449001))

(assert (=> b!1576334 d!165601))

(declare-fun d!165611 () Bool)

(declare-fun lt!675580 () (_ BitVec 32))

(declare-fun lt!675579 () (_ BitVec 32))

(assert (=> d!165611 (= lt!675580 (bvmul (bvxor lt!675579 (bvlshr lt!675579 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165611 (= lt!675579 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

