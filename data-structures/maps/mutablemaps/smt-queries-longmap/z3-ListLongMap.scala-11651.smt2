; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136184 () Bool)

(assert start!136184)

(declare-fun res!1076981 () Bool)

(declare-fun e!879234 () Bool)

(assert (=> start!136184 (=> (not res!1076981) (not e!879234))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136184 (= res!1076981 (validMask!0 mask!898))))

(assert (=> start!136184 e!879234))

(assert (=> start!136184 true))

(declare-datatypes ((array!105462 0))(
  ( (array!105463 (arr!50855 (Array (_ BitVec 32) (_ BitVec 64))) (size!51406 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105462)

(declare-fun array_inv!39500 (array!105462) Bool)

(assert (=> start!136184 (array_inv!39500 _keys!605)))

(declare-fun b!1576323 () Bool)

(declare-fun res!1076979 () Bool)

(assert (=> b!1576323 (=> (not res!1076979) (not e!879234))))

(assert (=> b!1576323 (= res!1076979 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51406 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576324 () Bool)

(declare-fun res!1076980 () Bool)

(assert (=> b!1576324 (=> (not res!1076980) (not e!879234))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576324 (= res!1076980 (validKeyInArray!0 k0!761))))

(declare-fun b!1576325 () Bool)

(declare-fun lt!675537 () Bool)

(declare-datatypes ((SeekEntryResult!13736 0))(
  ( (MissingZero!13736 (index!57341 (_ BitVec 32))) (Found!13736 (index!57342 (_ BitVec 32))) (Intermediate!13736 (undefined!14548 Bool) (index!57343 (_ BitVec 32)) (x!142345 (_ BitVec 32))) (Undefined!13736) (MissingVacant!13736 (index!57344 (_ BitVec 32))) )
))
(declare-fun lt!675538 () SeekEntryResult!13736)

(assert (=> b!1576325 (= e!879234 (and (or lt!675537 (not (undefined!14548 lt!675538))) (or lt!675537 (undefined!14548 lt!675538))))))

(get-info :version)

(assert (=> b!1576325 (= lt!675537 (not ((_ is Intermediate!13736) lt!675538)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105462 (_ BitVec 32)) SeekEntryResult!13736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576325 (= lt!675538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!136184 res!1076981) b!1576323))

(assert (= (and b!1576323 res!1076979) b!1576324))

(assert (= (and b!1576324 res!1076980) b!1576325))

(declare-fun m!1448991 () Bool)

(assert (=> start!136184 m!1448991))

(declare-fun m!1448993 () Bool)

(assert (=> start!136184 m!1448993))

(declare-fun m!1448995 () Bool)

(assert (=> b!1576324 m!1448995))

(declare-fun m!1448997 () Bool)

(assert (=> b!1576325 m!1448997))

(assert (=> b!1576325 m!1448997))

(declare-fun m!1448999 () Bool)

(assert (=> b!1576325 m!1448999))

(check-sat (not b!1576324) (not b!1576325) (not start!136184))
(check-sat)
(get-model)

(declare-fun d!165587 () Bool)

(assert (=> d!165587 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576324 d!165587))

(declare-fun b!1576371 () Bool)

(declare-fun e!879262 () Bool)

(declare-fun lt!675554 () SeekEntryResult!13736)

(assert (=> b!1576371 (= e!879262 (bvsge (x!142345 lt!675554) #b01111111111111111111111111111110))))

(declare-fun b!1576372 () Bool)

(assert (=> b!1576372 (and (bvsge (index!57343 lt!675554) #b00000000000000000000000000000000) (bvslt (index!57343 lt!675554) (size!51406 _keys!605)))))

(declare-fun e!879261 () Bool)

(assert (=> b!1576372 (= e!879261 (= (select (arr!50855 _keys!605) (index!57343 lt!675554)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576373 () Bool)

(assert (=> b!1576373 (and (bvsge (index!57343 lt!675554) #b00000000000000000000000000000000) (bvslt (index!57343 lt!675554) (size!51406 _keys!605)))))

(declare-fun res!1077004 () Bool)

(assert (=> b!1576373 (= res!1077004 (= (select (arr!50855 _keys!605) (index!57343 lt!675554)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576373 (=> res!1077004 e!879261)))

(declare-fun b!1576374 () Bool)

(assert (=> b!1576374 (and (bvsge (index!57343 lt!675554) #b00000000000000000000000000000000) (bvslt (index!57343 lt!675554) (size!51406 _keys!605)))))

(declare-fun res!1077003 () Bool)

(assert (=> b!1576374 (= res!1077003 (= (select (arr!50855 _keys!605) (index!57343 lt!675554)) k0!761))))

(assert (=> b!1576374 (=> res!1077003 e!879261)))

(declare-fun e!879265 () Bool)

(assert (=> b!1576374 (= e!879265 e!879261)))

(declare-fun b!1576375 () Bool)

(declare-fun e!879263 () SeekEntryResult!13736)

(assert (=> b!1576375 (= e!879263 (Intermediate!13736 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576376 () Bool)

(assert (=> b!1576376 (= e!879262 e!879265)))

(declare-fun res!1077005 () Bool)

(assert (=> b!1576376 (= res!1077005 (and ((_ is Intermediate!13736) lt!675554) (not (undefined!14548 lt!675554)) (bvslt (x!142345 lt!675554) #b01111111111111111111111111111110) (bvsge (x!142345 lt!675554) #b00000000000000000000000000000000) (bvsge (x!142345 lt!675554) #b00000000000000000000000000000000)))))

(assert (=> b!1576376 (=> (not res!1077005) (not e!879265))))

(declare-fun b!1576377 () Bool)

(declare-fun e!879264 () SeekEntryResult!13736)

(assert (=> b!1576377 (= e!879264 (Intermediate!13736 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165589 () Bool)

(assert (=> d!165589 e!879262))

(declare-fun c!145963 () Bool)

(assert (=> d!165589 (= c!145963 (and ((_ is Intermediate!13736) lt!675554) (undefined!14548 lt!675554)))))

(assert (=> d!165589 (= lt!675554 e!879264)))

(declare-fun c!145964 () Bool)

(assert (=> d!165589 (= c!145964 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675553 () (_ BitVec 64))

(assert (=> d!165589 (= lt!675553 (select (arr!50855 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165589 (validMask!0 mask!898)))

(assert (=> d!165589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675554)))

(declare-fun b!1576378 () Bool)

(assert (=> b!1576378 (= e!879264 e!879263)))

(declare-fun c!145965 () Bool)

(assert (=> b!1576378 (= c!145965 (or (= lt!675553 k0!761) (= (bvadd lt!675553 lt!675553) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576379 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576379 (= e!879263 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and d!165589 c!145964) b!1576377))

(assert (= (and d!165589 (not c!145964)) b!1576378))

(assert (= (and b!1576378 c!145965) b!1576375))

(assert (= (and b!1576378 (not c!145965)) b!1576379))

(assert (= (and d!165589 c!145963) b!1576371))

(assert (= (and d!165589 (not c!145963)) b!1576376))

(assert (= (and b!1576376 res!1077005) b!1576374))

(assert (= (and b!1576374 (not res!1077003)) b!1576373))

(assert (= (and b!1576373 (not res!1077004)) b!1576372))

(declare-fun m!1449011 () Bool)

(assert (=> b!1576374 m!1449011))

(assert (=> b!1576379 m!1448997))

(declare-fun m!1449013 () Bool)

(assert (=> b!1576379 m!1449013))

(assert (=> b!1576379 m!1449013))

(declare-fun m!1449015 () Bool)

(assert (=> b!1576379 m!1449015))

(assert (=> b!1576372 m!1449011))

(assert (=> d!165589 m!1448997))

(declare-fun m!1449017 () Bool)

(assert (=> d!165589 m!1449017))

(assert (=> d!165589 m!1448991))

(assert (=> b!1576373 m!1449011))

(assert (=> b!1576325 d!165589))

(declare-fun d!165603 () Bool)

(declare-fun lt!675562 () (_ BitVec 32))

(declare-fun lt!675561 () (_ BitVec 32))

(assert (=> d!165603 (= lt!675562 (bvmul (bvxor lt!675561 (bvlshr lt!675561 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165603 (= lt!675561 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165603 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077009 (let ((h!38447 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142349 (bvmul (bvxor h!38447 (bvlshr h!38447 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142349 (bvlshr x!142349 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077009 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077009 #b00000000000000000000000000000000))))))

(assert (=> d!165603 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675562 (bvlshr lt!675562 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576325 d!165603))

(declare-fun d!165607 () Bool)

(assert (=> d!165607 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136184 d!165607))

(declare-fun d!165613 () Bool)

(assert (=> d!165613 (= (array_inv!39500 _keys!605) (bvsge (size!51406 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136184 d!165613))

(check-sat (not d!165589) (not b!1576379))
