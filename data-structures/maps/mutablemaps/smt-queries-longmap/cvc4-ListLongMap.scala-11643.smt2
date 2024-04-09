; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135934 () Bool)

(assert start!135934)

(declare-fun res!1076558 () Bool)

(declare-fun e!878681 () Bool)

(assert (=> start!135934 (=> (not res!1076558) (not e!878681))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135934 (= res!1076558 (validMask!0 mask!898))))

(assert (=> start!135934 e!878681))

(assert (=> start!135934 true))

(declare-datatypes ((array!105398 0))(
  ( (array!105399 (arr!50832 (Array (_ BitVec 32) (_ BitVec 64))) (size!51383 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105398)

(declare-fun array_inv!39477 (array!105398) Bool)

(assert (=> start!135934 (array_inv!39477 _keys!605)))

(declare-fun b!1575378 () Bool)

(declare-fun res!1076556 () Bool)

(assert (=> b!1575378 (=> (not res!1076556) (not e!878681))))

(assert (=> b!1575378 (= res!1076556 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51383 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575379 () Bool)

(declare-fun res!1076557 () Bool)

(assert (=> b!1575379 (=> (not res!1076557) (not e!878681))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575379 (= res!1076557 (validKeyInArray!0 k!761))))

(declare-datatypes ((SeekEntryResult!13713 0))(
  ( (MissingZero!13713 (index!57249 (_ BitVec 32))) (Found!13713 (index!57250 (_ BitVec 32))) (Intermediate!13713 (undefined!14525 Bool) (index!57251 (_ BitVec 32)) (x!142210 (_ BitVec 32))) (Undefined!13713) (MissingVacant!13713 (index!57252 (_ BitVec 32))) )
))
(declare-fun lt!675139 () SeekEntryResult!13713)

(declare-fun b!1575380 () Bool)

(assert (=> b!1575380 (= e!878681 (and (is-Intermediate!13713 lt!675139) (not (undefined!14525 lt!675139)) (not (= (select (arr!50832 _keys!605) (index!57251 lt!675139)) k!761)) (= (select (arr!50832 _keys!605) (index!57251 lt!675139)) #b0000000000000000000000000000000000000000000000000000000000000000) (or (bvslt (index!57251 lt!675139) #b00000000000000000000000000000000) (bvsge (index!57251 lt!675139) (size!51383 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105398 (_ BitVec 32)) SeekEntryResult!13713)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575380 (= lt!675139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135934 res!1076558) b!1575378))

(assert (= (and b!1575378 res!1076556) b!1575379))

(assert (= (and b!1575379 res!1076557) b!1575380))

(declare-fun m!1448455 () Bool)

(assert (=> start!135934 m!1448455))

(declare-fun m!1448457 () Bool)

(assert (=> start!135934 m!1448457))

(declare-fun m!1448459 () Bool)

(assert (=> b!1575379 m!1448459))

(declare-fun m!1448461 () Bool)

(assert (=> b!1575380 m!1448461))

(declare-fun m!1448463 () Bool)

(assert (=> b!1575380 m!1448463))

(assert (=> b!1575380 m!1448463))

(declare-fun m!1448465 () Bool)

(assert (=> b!1575380 m!1448465))

(push 1)

(assert (not start!135934))

(assert (not b!1575380))

(assert (not b!1575379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165373 () Bool)

(assert (=> d!165373 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135934 d!165373))

(declare-fun d!165379 () Bool)

(assert (=> d!165379 (= (array_inv!39477 _keys!605) (bvsge (size!51383 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135934 d!165379))

(declare-fun b!1575426 () Bool)

(declare-fun lt!675150 () SeekEntryResult!13713)

(assert (=> b!1575426 (and (bvsge (index!57251 lt!675150) #b00000000000000000000000000000000) (bvslt (index!57251 lt!675150) (size!51383 _keys!605)))))

(declare-fun res!1076576 () Bool)

(assert (=> b!1575426 (= res!1076576 (= (select (arr!50832 _keys!605) (index!57251 lt!675150)) k!761))))

(declare-fun e!878710 () Bool)

(assert (=> b!1575426 (=> res!1076576 e!878710)))

(declare-fun e!878709 () Bool)

(assert (=> b!1575426 (= e!878709 e!878710)))

(declare-fun b!1575427 () Bool)

(assert (=> b!1575427 (and (bvsge (index!57251 lt!675150) #b00000000000000000000000000000000) (bvslt (index!57251 lt!675150) (size!51383 _keys!605)))))

(declare-fun res!1076575 () Bool)

(assert (=> b!1575427 (= res!1076575 (= (select (arr!50832 _keys!605) (index!57251 lt!675150)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575427 (=> res!1076575 e!878710)))

(declare-fun b!1575428 () Bool)

(declare-fun e!878708 () SeekEntryResult!13713)

(assert (=> b!1575428 (= e!878708 (Intermediate!13713 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun e!878712 () SeekEntryResult!13713)

(declare-fun b!1575429 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575429 (= e!878712 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun d!165381 () Bool)

(declare-fun e!878711 () Bool)

(assert (=> d!165381 e!878711))

(declare-fun c!145696 () Bool)

(assert (=> d!165381 (= c!145696 (and (is-Intermediate!13713 lt!675150) (undefined!14525 lt!675150)))))

(assert (=> d!165381 (= lt!675150 e!878708)))

(declare-fun c!145697 () Bool)

(assert (=> d!165381 (= c!145697 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675151 () (_ BitVec 64))

(assert (=> d!165381 (= lt!675151 (select (arr!50832 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165381 (validMask!0 mask!898)))

(assert (=> d!165381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675150)))

(declare-fun b!1575430 () Bool)

(assert (=> b!1575430 (= e!878711 e!878709)))

(declare-fun res!1076577 () Bool)

(assert (=> b!1575430 (= res!1076577 (and (is-Intermediate!13713 lt!675150) (not (undefined!14525 lt!675150)) (bvslt (x!142210 lt!675150) #b01111111111111111111111111111110) (bvsge (x!142210 lt!675150) #b00000000000000000000000000000000) (bvsge (x!142210 lt!675150) #b00000000000000000000000000000000)))))

(assert (=> b!1575430 (=> (not res!1076577) (not e!878709))))

(declare-fun b!1575431 () Bool)

(assert (=> b!1575431 (= e!878712 (Intermediate!13713 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575432 () Bool)

(assert (=> b!1575432 (= e!878708 e!878712)))

(declare-fun c!145698 () Bool)

(assert (=> b!1575432 (= c!145698 (or (= lt!675151 k!761) (= (bvadd lt!675151 lt!675151) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575433 () Bool)

(assert (=> b!1575433 (= e!878711 (bvsge (x!142210 lt!675150) #b01111111111111111111111111111110))))

(declare-fun b!1575434 () Bool)

(assert (=> b!1575434 (and (bvsge (index!57251 lt!675150) #b00000000000000000000000000000000) (bvslt (index!57251 lt!675150) (size!51383 _keys!605)))))

(assert (=> b!1575434 (= e!878710 (= (select (arr!50832 _keys!605) (index!57251 lt!675150)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!165381 c!145697) b!1575428))

(assert (= (and d!165381 (not c!145697)) b!1575432))

(assert (= (and b!1575432 c!145698) b!1575431))

(assert (= (and b!1575432 (not c!145698)) b!1575429))

(assert (= (and d!165381 c!145696) b!1575433))

(assert (= (and d!165381 (not c!145696)) b!1575430))

(assert (= (and b!1575430 res!1076577) b!1575426))

(assert (= (and b!1575426 (not res!1076576)) b!1575427))

(assert (= (and b!1575427 (not res!1076575)) b!1575434))

(assert (=> d!165381 m!1448463))

(declare-fun m!1448475 () Bool)

(assert (=> d!165381 m!1448475))

(assert (=> d!165381 m!1448455))

(declare-fun m!1448477 () Bool)

(assert (=> b!1575434 m!1448477))

(assert (=> b!1575426 m!1448477))

(assert (=> b!1575429 m!1448463))

(declare-fun m!1448479 () Bool)

(assert (=> b!1575429 m!1448479))

(assert (=> b!1575429 m!1448479))

(declare-fun m!1448481 () Bool)

(assert (=> b!1575429 m!1448481))

(assert (=> b!1575427 m!1448477))

(assert (=> b!1575380 d!165381))

(declare-fun d!165389 () Bool)

(declare-fun lt!675169 () (_ BitVec 32))

(declare-fun lt!675168 () (_ BitVec 32))

(assert (=> d!165389 (= lt!675169 (bvmul (bvxor lt!675168 (bvlshr lt!675168 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165389 (= lt!675168 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165389 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076578 (let ((h!38430 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142215 (bvmul (bvxor h!38430 (bvlshr h!38430 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142215 (bvlshr x!142215 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076578 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076578 #b00000000000000000000000000000000))))))

(assert (=> d!165389 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675169 (bvlshr lt!675169 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575380 d!165389))

(declare-fun d!165391 () Bool)

(assert (=> d!165391 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575379 d!165391))

(push 1)

(assert (not b!1575429))

(assert (not d!165381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

