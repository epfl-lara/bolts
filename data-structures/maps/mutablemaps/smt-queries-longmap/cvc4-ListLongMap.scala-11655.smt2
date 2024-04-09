; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136330 () Bool)

(assert start!136330)

(declare-fun b!1576801 () Bool)

(declare-fun e!879527 () Bool)

(declare-fun e!879528 () Bool)

(assert (=> b!1576801 (= e!879527 e!879528)))

(declare-fun res!1077252 () Bool)

(assert (=> b!1576801 (=> (not res!1077252) (not e!879528))))

(declare-fun lt!675795 () Bool)

(declare-datatypes ((SeekEntryResult!13749 0))(
  ( (MissingZero!13749 (index!57393 (_ BitVec 32))) (Found!13749 (index!57394 (_ BitVec 32))) (Intermediate!13749 (undefined!14561 Bool) (index!57395 (_ BitVec 32)) (x!142414 (_ BitVec 32))) (Undefined!13749) (MissingVacant!13749 (index!57396 (_ BitVec 32))) )
))
(declare-fun lt!675794 () SeekEntryResult!13749)

(assert (=> b!1576801 (= res!1077252 (and (or lt!675795 (not (undefined!14561 lt!675794))) (or lt!675795 (undefined!14561 lt!675794))))))

(assert (=> b!1576801 (= lt!675795 (not (is-Intermediate!13749 lt!675794)))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k!761 () (_ BitVec 64))

(declare-datatypes ((array!105500 0))(
  ( (array!105501 (arr!50868 (Array (_ BitVec 32) (_ BitVec 64))) (size!51419 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105500)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105500 (_ BitVec 32)) SeekEntryResult!13749)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576801 (= lt!675794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576799 () Bool)

(declare-fun res!1077254 () Bool)

(assert (=> b!1576799 (=> (not res!1077254) (not e!879527))))

(assert (=> b!1576799 (= res!1077254 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51419 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576802 () Bool)

(declare-fun lt!675796 () SeekEntryResult!13749)

(assert (=> b!1576802 (= e!879528 (and (not (is-Undefined!13749 lt!675796)) (ite (is-Found!13749 lt!675796) (not (= (select (arr!50868 _keys!605) (index!57394 lt!675796)) k!761)) (ite (is-MissingZero!13749 lt!675796) (not (= (select (arr!50868 _keys!605) (index!57393 lt!675796)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (not (is-MissingVacant!13749 lt!675796)) (not (= (select (arr!50868 _keys!605) (index!57396 lt!675796)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun err!218 () SeekEntryResult!13749)

(assert (=> b!1576802 (= lt!675796 err!218)))

(assert (=> b!1576802 true))

(declare-fun res!1077251 () Bool)

(assert (=> start!136330 (=> (not res!1077251) (not e!879527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136330 (= res!1077251 (validMask!0 mask!898))))

(assert (=> start!136330 e!879527))

(assert (=> start!136330 true))

(declare-fun array_inv!39513 (array!105500) Bool)

(assert (=> start!136330 (array_inv!39513 _keys!605)))

(declare-fun b!1576800 () Bool)

(declare-fun res!1077253 () Bool)

(assert (=> b!1576800 (=> (not res!1077253) (not e!879527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576800 (= res!1077253 (validKeyInArray!0 k!761))))

(assert (= (and start!136330 res!1077251) b!1576799))

(assert (= (and b!1576799 res!1077254) b!1576800))

(assert (= (and b!1576800 res!1077253) b!1576801))

(assert (= (and b!1576801 res!1077252) b!1576802))

(declare-fun m!1449229 () Bool)

(assert (=> b!1576801 m!1449229))

(assert (=> b!1576801 m!1449229))

(declare-fun m!1449231 () Bool)

(assert (=> b!1576801 m!1449231))

(declare-fun m!1449233 () Bool)

(assert (=> b!1576802 m!1449233))

(declare-fun m!1449235 () Bool)

(assert (=> b!1576802 m!1449235))

(declare-fun m!1449237 () Bool)

(assert (=> b!1576802 m!1449237))

(declare-fun m!1449239 () Bool)

(assert (=> start!136330 m!1449239))

(declare-fun m!1449241 () Bool)

(assert (=> start!136330 m!1449241))

(declare-fun m!1449243 () Bool)

(assert (=> b!1576800 m!1449243))

(push 1)

(assert (not b!1576801))

(assert (not start!136330))

(assert (not b!1576800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1576848 () Bool)

(declare-fun e!879557 () SeekEntryResult!13749)

(assert (=> b!1576848 (= e!879557 (Intermediate!13749 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576849 () Bool)

(declare-fun e!879554 () Bool)

(declare-fun lt!675811 () SeekEntryResult!13749)

(assert (=> b!1576849 (= e!879554 (bvsge (x!142414 lt!675811) #b01111111111111111111111111111110))))

(declare-fun e!879558 () SeekEntryResult!13749)

(declare-fun b!1576850 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576850 (= e!879558 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576851 () Bool)

(assert (=> b!1576851 (and (bvsge (index!57395 lt!675811) #b00000000000000000000000000000000) (bvslt (index!57395 lt!675811) (size!51419 _keys!605)))))

(declare-fun res!1077273 () Bool)

(assert (=> b!1576851 (= res!1077273 (= (select (arr!50868 _keys!605) (index!57395 lt!675811)) k!761))))

(declare-fun e!879556 () Bool)

(assert (=> b!1576851 (=> res!1077273 e!879556)))

(declare-fun e!879555 () Bool)

(assert (=> b!1576851 (= e!879555 e!879556)))

(declare-fun b!1576852 () Bool)

(assert (=> b!1576852 (and (bvsge (index!57395 lt!675811) #b00000000000000000000000000000000) (bvslt (index!57395 lt!675811) (size!51419 _keys!605)))))

(declare-fun res!1077271 () Bool)

(assert (=> b!1576852 (= res!1077271 (= (select (arr!50868 _keys!605) (index!57395 lt!675811)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576852 (=> res!1077271 e!879556)))

(declare-fun b!1576853 () Bool)

(assert (=> b!1576853 (= e!879554 e!879555)))

(declare-fun res!1077272 () Bool)

(assert (=> b!1576853 (= res!1077272 (and (is-Intermediate!13749 lt!675811) (not (undefined!14561 lt!675811)) (bvslt (x!142414 lt!675811) #b01111111111111111111111111111110) (bvsge (x!142414 lt!675811) #b00000000000000000000000000000000) (bvsge (x!142414 lt!675811) #b00000000000000000000000000000000)))))

(assert (=> b!1576853 (=> (not res!1077272) (not e!879555))))

(declare-fun d!165719 () Bool)

(assert (=> d!165719 e!879554))

(declare-fun c!146076 () Bool)

(assert (=> d!165719 (= c!146076 (and (is-Intermediate!13749 lt!675811) (undefined!14561 lt!675811)))))

(assert (=> d!165719 (= lt!675811 e!879557)))

(declare-fun c!146074 () Bool)

(assert (=> d!165719 (= c!146074 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675812 () (_ BitVec 64))

(assert (=> d!165719 (= lt!675812 (select (arr!50868 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165719 (validMask!0 mask!898)))

(assert (=> d!165719 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675811)))

(declare-fun b!1576854 () Bool)

(assert (=> b!1576854 (= e!879558 (Intermediate!13749 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576855 () Bool)

(assert (=> b!1576855 (and (bvsge (index!57395 lt!675811) #b00000000000000000000000000000000) (bvslt (index!57395 lt!675811) (size!51419 _keys!605)))))

(assert (=> b!1576855 (= e!879556 (= (select (arr!50868 _keys!605) (index!57395 lt!675811)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576856 () Bool)

(assert (=> b!1576856 (= e!879557 e!879558)))

(declare-fun c!146075 () Bool)

(assert (=> b!1576856 (= c!146075 (or (= lt!675812 k!761) (= (bvadd lt!675812 lt!675812) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!165719 c!146074) b!1576848))

(assert (= (and d!165719 (not c!146074)) b!1576856))

(assert (= (and b!1576856 c!146075) b!1576854))

(assert (= (and b!1576856 (not c!146075)) b!1576850))

(assert (= (and d!165719 c!146076) b!1576849))

(assert (= (and d!165719 (not c!146076)) b!1576853))

(assert (= (and b!1576853 res!1077272) b!1576851))

(assert (= (and b!1576851 (not res!1077273)) b!1576852))

(assert (= (and b!1576852 (not res!1077271)) b!1576855))

(assert (=> d!165719 m!1449229))

(declare-fun m!1449253 () Bool)

(assert (=> d!165719 m!1449253))

(assert (=> d!165719 m!1449239))

(declare-fun m!1449255 () Bool)

(assert (=> b!1576852 m!1449255))

(assert (=> b!1576855 m!1449255))

(assert (=> b!1576850 m!1449229))

(declare-fun m!1449257 () Bool)

(assert (=> b!1576850 m!1449257))

(assert (=> b!1576850 m!1449257))

(declare-fun m!1449259 () Bool)

(assert (=> b!1576850 m!1449259))

(assert (=> b!1576851 m!1449255))

(assert (=> b!1576801 d!165719))

(declare-fun d!165731 () Bool)

(declare-fun lt!675824 () (_ BitVec 32))

(declare-fun lt!675823 () (_ BitVec 32))

(assert (=> d!165731 (= lt!675824 (bvmul (bvxor lt!675823 (bvlshr lt!675823 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165731 (= lt!675823 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165731 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077274 (let ((h!38460 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142418 (bvmul (bvxor h!38460 (bvlshr h!38460 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142418 (bvlshr x!142418 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077274 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077274 #b00000000000000000000000000000000))))))

(assert (=> d!165731 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675824 (bvlshr lt!675824 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576801 d!165731))

(declare-fun d!165733 () Bool)

(assert (=> d!165733 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136330 d!165733))

(declare-fun d!165741 () Bool)

(assert (=> d!165741 (= (array_inv!39513 _keys!605) (bvsge (size!51419 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136330 d!165741))

(declare-fun d!165743 () Bool)

(assert (=> d!165743 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576800 d!165743))

(push 1)

