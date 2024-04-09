; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135870 () Bool)

(assert start!135870)

(declare-fun res!1076373 () Bool)

(declare-fun e!878534 () Bool)

(assert (=> start!135870 (=> (not res!1076373) (not e!878534))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135870 (= res!1076373 (validMask!0 mask!898))))

(assert (=> start!135870 e!878534))

(assert (=> start!135870 true))

(declare-datatypes ((array!105361 0))(
  ( (array!105362 (arr!50815 (Array (_ BitVec 32) (_ BitVec 64))) (size!51366 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105361)

(declare-fun array_inv!39460 (array!105361) Bool)

(assert (=> start!135870 (array_inv!39460 _keys!605)))

(declare-fun b!1575144 () Bool)

(declare-fun res!1076374 () Bool)

(assert (=> b!1575144 (=> (not res!1076374) (not e!878534))))

(assert (=> b!1575144 (= res!1076374 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51366 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575145 () Bool)

(declare-fun res!1076375 () Bool)

(assert (=> b!1575145 (=> (not res!1076375) (not e!878534))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575145 (= res!1076375 (validKeyInArray!0 k!761))))

(declare-datatypes ((SeekEntryResult!13696 0))(
  ( (MissingZero!13696 (index!57181 (_ BitVec 32))) (Found!13696 (index!57182 (_ BitVec 32))) (Intermediate!13696 (undefined!14508 Bool) (index!57183 (_ BitVec 32)) (x!142147 (_ BitVec 32))) (Undefined!13696) (MissingVacant!13696 (index!57184 (_ BitVec 32))) )
))
(declare-fun lt!675052 () SeekEntryResult!13696)

(declare-fun b!1575146 () Bool)

(assert (=> b!1575146 (= e!878534 (and (is-Intermediate!13696 lt!675052) (not (undefined!14508 lt!675052)) (= (select (arr!50815 _keys!605) (index!57183 lt!675052)) k!761) (or (bvslt (index!57183 lt!675052) #b00000000000000000000000000000000) (bvsge (index!57183 lt!675052) (size!51366 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105361 (_ BitVec 32)) SeekEntryResult!13696)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575146 (= lt!675052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135870 res!1076373) b!1575144))

(assert (= (and b!1575144 res!1076374) b!1575145))

(assert (= (and b!1575145 res!1076375) b!1575146))

(declare-fun m!1448251 () Bool)

(assert (=> start!135870 m!1448251))

(declare-fun m!1448253 () Bool)

(assert (=> start!135870 m!1448253))

(declare-fun m!1448255 () Bool)

(assert (=> b!1575145 m!1448255))

(declare-fun m!1448257 () Bool)

(assert (=> b!1575146 m!1448257))

(declare-fun m!1448259 () Bool)

(assert (=> b!1575146 m!1448259))

(assert (=> b!1575146 m!1448259))

(declare-fun m!1448261 () Bool)

(assert (=> b!1575146 m!1448261))

(push 1)

(assert (not b!1575145))

(assert (not start!135870))

(assert (not b!1575146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165331 () Bool)

(assert (=> d!165331 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575145 d!165331))

(declare-fun d!165333 () Bool)

(assert (=> d!165333 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135870 d!165333))

(declare-fun d!165343 () Bool)

(assert (=> d!165343 (= (array_inv!39460 _keys!605) (bvsge (size!51366 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135870 d!165343))

(declare-fun b!1575228 () Bool)

(declare-fun e!878586 () SeekEntryResult!13696)

(assert (=> b!1575228 (= e!878586 (Intermediate!13696 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575229 () Bool)

(declare-fun lt!675080 () SeekEntryResult!13696)

(assert (=> b!1575229 (and (bvsge (index!57183 lt!675080) #b00000000000000000000000000000000) (bvslt (index!57183 lt!675080) (size!51366 _keys!605)))))

(declare-fun res!1076416 () Bool)

(assert (=> b!1575229 (= res!1076416 (= (select (arr!50815 _keys!605) (index!57183 lt!675080)) k!761))))

(declare-fun e!878583 () Bool)

(assert (=> b!1575229 (=> res!1076416 e!878583)))

(declare-fun e!878584 () Bool)

(assert (=> b!1575229 (= e!878584 e!878583)))

(declare-fun b!1575230 () Bool)

(declare-fun e!878587 () SeekEntryResult!13696)

(assert (=> b!1575230 (= e!878587 e!878586)))

(declare-fun c!145675 () Bool)

(declare-fun lt!675079 () (_ BitVec 64))

(assert (=> b!1575230 (= c!145675 (or (= lt!675079 k!761) (= (bvadd lt!675079 lt!675079) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575231 () Bool)

(declare-fun e!878585 () Bool)

(assert (=> b!1575231 (= e!878585 e!878584)))

(declare-fun res!1076417 () Bool)

(assert (=> b!1575231 (= res!1076417 (and (is-Intermediate!13696 lt!675080) (not (undefined!14508 lt!675080)) (bvslt (x!142147 lt!675080) #b01111111111111111111111111111110) (bvsge (x!142147 lt!675080) #b00000000000000000000000000000000) (bvsge (x!142147 lt!675080) #b00000000000000000000000000000000)))))

(assert (=> b!1575231 (=> (not res!1076417) (not e!878584))))

(declare-fun b!1575232 () Bool)

(assert (=> b!1575232 (and (bvsge (index!57183 lt!675080) #b00000000000000000000000000000000) (bvslt (index!57183 lt!675080) (size!51366 _keys!605)))))

(declare-fun res!1076418 () Bool)

(assert (=> b!1575232 (= res!1076418 (= (select (arr!50815 _keys!605) (index!57183 lt!675080)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575232 (=> res!1076418 e!878583)))

(declare-fun d!165345 () Bool)

(assert (=> d!165345 e!878585))

(declare-fun c!145676 () Bool)

(assert (=> d!165345 (= c!145676 (and (is-Intermediate!13696 lt!675080) (undefined!14508 lt!675080)))))

(assert (=> d!165345 (= lt!675080 e!878587)))

(declare-fun c!145677 () Bool)

(assert (=> d!165345 (= c!145677 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165345 (= lt!675079 (select (arr!50815 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165345 (validMask!0 mask!898)))

(assert (=> d!165345 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675080)))

(declare-fun b!1575233 () Bool)

(assert (=> b!1575233 (= e!878587 (Intermediate!13696 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575234 () Bool)

(assert (=> b!1575234 (= e!878585 (bvsge (x!142147 lt!675080) #b01111111111111111111111111111110))))

(declare-fun b!1575235 () Bool)

(assert (=> b!1575235 (and (bvsge (index!57183 lt!675080) #b00000000000000000000000000000000) (bvslt (index!57183 lt!675080) (size!51366 _keys!605)))))

(assert (=> b!1575235 (= e!878583 (= (select (arr!50815 _keys!605) (index!57183 lt!675080)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575236 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575236 (= e!878586 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and d!165345 c!145677) b!1575233))

(assert (= (and d!165345 (not c!145677)) b!1575230))

(assert (= (and b!1575230 c!145675) b!1575228))

(assert (= (and b!1575230 (not c!145675)) b!1575236))

(assert (= (and d!165345 c!145676) b!1575234))

(assert (= (and d!165345 (not c!145676)) b!1575231))

(assert (= (and b!1575231 res!1076417) b!1575229))

(assert (= (and b!1575229 (not res!1076416)) b!1575232))

(assert (= (and b!1575232 (not res!1076418)) b!1575235))

(assert (=> d!165345 m!1448259))

(declare-fun m!1448295 () Bool)

(assert (=> d!165345 m!1448295))

(assert (=> d!165345 m!1448251))

(declare-fun m!1448297 () Bool)

(assert (=> b!1575229 m!1448297))

(assert (=> b!1575235 m!1448297))

(assert (=> b!1575232 m!1448297))

(assert (=> b!1575236 m!1448259))

(declare-fun m!1448299 () Bool)

(assert (=> b!1575236 m!1448299))

(assert (=> b!1575236 m!1448299))

(declare-fun m!1448301 () Bool)

(assert (=> b!1575236 m!1448301))

(assert (=> b!1575146 d!165345))

(declare-fun d!165353 () Bool)

(declare-fun lt!675088 () (_ BitVec 32))

(declare-fun lt!675087 () (_ BitVec 32))

(assert (=> d!165353 (= lt!675088 (bvmul (bvxor lt!675087 (bvlshr lt!675087 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165353 (= lt!675087 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165353 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076422 (let ((h!38427 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142154 (bvmul (bvxor h!38427 (bvlshr h!38427 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142154 (bvlshr x!142154 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076422 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076422 #b00000000000000000000000000000000))))))

(assert (=> d!165353 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675088 (bvlshr lt!675088 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575146 d!165353))

(push 1)

(assert (not b!1575236))

(assert (not d!165345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

