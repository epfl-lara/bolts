; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136182 () Bool)

(assert start!136182)

(declare-fun res!1076970 () Bool)

(declare-fun e!879227 () Bool)

(assert (=> start!136182 (=> (not res!1076970) (not e!879227))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136182 (= res!1076970 (validMask!0 mask!898))))

(assert (=> start!136182 e!879227))

(assert (=> start!136182 true))

(declare-datatypes ((array!105460 0))(
  ( (array!105461 (arr!50854 (Array (_ BitVec 32) (_ BitVec 64))) (size!51405 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105460)

(declare-fun array_inv!39499 (array!105460) Bool)

(assert (=> start!136182 (array_inv!39499 _keys!605)))

(declare-fun b!1576314 () Bool)

(declare-fun res!1076971 () Bool)

(assert (=> b!1576314 (=> (not res!1076971) (not e!879227))))

(assert (=> b!1576314 (= res!1076971 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51405 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576315 () Bool)

(declare-fun res!1076972 () Bool)

(assert (=> b!1576315 (=> (not res!1076972) (not e!879227))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576315 (= res!1076972 (validKeyInArray!0 k!761))))

(declare-fun b!1576316 () Bool)

(declare-fun lt!675531 () Bool)

(declare-datatypes ((SeekEntryResult!13735 0))(
  ( (MissingZero!13735 (index!57337 (_ BitVec 32))) (Found!13735 (index!57338 (_ BitVec 32))) (Intermediate!13735 (undefined!14547 Bool) (index!57339 (_ BitVec 32)) (x!142344 (_ BitVec 32))) (Undefined!13735) (MissingVacant!13735 (index!57340 (_ BitVec 32))) )
))
(declare-fun lt!675532 () SeekEntryResult!13735)

(assert (=> b!1576316 (= e!879227 (and (or lt!675531 (not (undefined!14547 lt!675532))) (or lt!675531 (undefined!14547 lt!675532))))))

(assert (=> b!1576316 (= lt!675531 (not (is-Intermediate!13735 lt!675532)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105460 (_ BitVec 32)) SeekEntryResult!13735)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576316 (= lt!675532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!136182 res!1076970) b!1576314))

(assert (= (and b!1576314 res!1076971) b!1576315))

(assert (= (and b!1576315 res!1076972) b!1576316))

(declare-fun m!1448981 () Bool)

(assert (=> start!136182 m!1448981))

(declare-fun m!1448983 () Bool)

(assert (=> start!136182 m!1448983))

(declare-fun m!1448985 () Bool)

(assert (=> b!1576315 m!1448985))

(declare-fun m!1448987 () Bool)

(assert (=> b!1576316 m!1448987))

(assert (=> b!1576316 m!1448987))

(declare-fun m!1448989 () Bool)

(assert (=> b!1576316 m!1448989))

(push 1)

(assert (not b!1576315))

(assert (not b!1576316))

(assert (not start!136182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165591 () Bool)

(assert (=> d!165591 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576315 d!165591))

(declare-fun b!1576380 () Bool)

(declare-fun e!879270 () SeekEntryResult!13735)

(declare-fun e!879269 () SeekEntryResult!13735)

(assert (=> b!1576380 (= e!879270 e!879269)))

(declare-fun c!145967 () Bool)

(declare-fun lt!675555 () (_ BitVec 64))

(assert (=> b!1576380 (= c!145967 (or (= lt!675555 k!761) (= (bvadd lt!675555 lt!675555) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165593 () Bool)

(declare-fun e!879266 () Bool)

(assert (=> d!165593 e!879266))

(declare-fun c!145968 () Bool)

(declare-fun lt!675556 () SeekEntryResult!13735)

(assert (=> d!165593 (= c!145968 (and (is-Intermediate!13735 lt!675556) (undefined!14547 lt!675556)))))

(assert (=> d!165593 (= lt!675556 e!879270)))

(declare-fun c!145966 () Bool)

(assert (=> d!165593 (= c!145966 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165593 (= lt!675555 (select (arr!50854 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165593 (validMask!0 mask!898)))

(assert (=> d!165593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675556)))

(declare-fun b!1576381 () Bool)

(assert (=> b!1576381 (and (bvsge (index!57339 lt!675556) #b00000000000000000000000000000000) (bvslt (index!57339 lt!675556) (size!51405 _keys!605)))))

(declare-fun res!1077006 () Bool)

(assert (=> b!1576381 (= res!1077006 (= (select (arr!50854 _keys!605) (index!57339 lt!675556)) k!761))))

(declare-fun e!879268 () Bool)

(assert (=> b!1576381 (=> res!1077006 e!879268)))

(declare-fun e!879267 () Bool)

(assert (=> b!1576381 (= e!879267 e!879268)))

(declare-fun b!1576382 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576382 (= e!879269 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576383 () Bool)

(assert (=> b!1576383 (and (bvsge (index!57339 lt!675556) #b00000000000000000000000000000000) (bvslt (index!57339 lt!675556) (size!51405 _keys!605)))))

(assert (=> b!1576383 (= e!879268 (= (select (arr!50854 _keys!605) (index!57339 lt!675556)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576384 () Bool)

(assert (=> b!1576384 (= e!879269 (Intermediate!13735 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576385 () Bool)

(assert (=> b!1576385 (= e!879266 e!879267)))

(declare-fun res!1077008 () Bool)

(assert (=> b!1576385 (= res!1077008 (and (is-Intermediate!13735 lt!675556) (not (undefined!14547 lt!675556)) (bvslt (x!142344 lt!675556) #b01111111111111111111111111111110) (bvsge (x!142344 lt!675556) #b00000000000000000000000000000000) (bvsge (x!142344 lt!675556) #b00000000000000000000000000000000)))))

(assert (=> b!1576385 (=> (not res!1077008) (not e!879267))))

(declare-fun b!1576386 () Bool)

(assert (=> b!1576386 (and (bvsge (index!57339 lt!675556) #b00000000000000000000000000000000) (bvslt (index!57339 lt!675556) (size!51405 _keys!605)))))

(declare-fun res!1077007 () Bool)

(assert (=> b!1576386 (= res!1077007 (= (select (arr!50854 _keys!605) (index!57339 lt!675556)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576386 (=> res!1077007 e!879268)))

(declare-fun b!1576387 () Bool)

(assert (=> b!1576387 (= e!879270 (Intermediate!13735 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576388 () Bool)

(assert (=> b!1576388 (= e!879266 (bvsge (x!142344 lt!675556) #b01111111111111111111111111111110))))

(assert (= (and d!165593 c!145966) b!1576387))

(assert (= (and d!165593 (not c!145966)) b!1576380))

(assert (= (and b!1576380 c!145967) b!1576384))

(assert (= (and b!1576380 (not c!145967)) b!1576382))

(assert (= (and d!165593 c!145968) b!1576388))

(assert (= (and d!165593 (not c!145968)) b!1576385))

(assert (= (and b!1576385 res!1077008) b!1576381))

(assert (= (and b!1576381 (not res!1077006)) b!1576386))

(assert (= (and b!1576386 (not res!1077007)) b!1576383))

(assert (=> b!1576382 m!1448987))

(declare-fun m!1449019 () Bool)

(assert (=> b!1576382 m!1449019))

(assert (=> b!1576382 m!1449019))

(declare-fun m!1449021 () Bool)

(assert (=> b!1576382 m!1449021))

(assert (=> d!165593 m!1448987))

(declare-fun m!1449023 () Bool)

(assert (=> d!165593 m!1449023))

(assert (=> d!165593 m!1448981))

(declare-fun m!1449025 () Bool)

(assert (=> b!1576383 m!1449025))

(assert (=> b!1576381 m!1449025))

(assert (=> b!1576386 m!1449025))

(assert (=> b!1576316 d!165593))

(declare-fun d!165605 () Bool)

(declare-fun lt!675568 () (_ BitVec 32))

(declare-fun lt!675567 () (_ BitVec 32))

(assert (=> d!165605 (= lt!675568 (bvmul (bvxor lt!675567 (bvlshr lt!675567 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165605 (= lt!675567 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165605 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077010 (let ((h!38448 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142350 (bvmul (bvxor h!38448 (bvlshr h!38448 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142350 (bvlshr x!142350 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077010 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077010 #b00000000000000000000000000000000))))))

(assert (=> d!165605 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675568 (bvlshr lt!675568 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576316 d!165605))

(declare-fun d!165609 () Bool)

(assert (=> d!165609 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136182 d!165609))

(declare-fun d!165615 () Bool)

(assert (=> d!165615 (= (array_inv!39499 _keys!605) (bvsge (size!51405 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136182 d!165615))

(push 1)

(assert (not d!165593))

(assert (not b!1576382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

