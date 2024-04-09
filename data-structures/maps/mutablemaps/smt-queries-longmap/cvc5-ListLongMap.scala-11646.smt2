; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135978 () Bool)

(assert start!135978)

(declare-fun res!1076649 () Bool)

(declare-fun e!878768 () Bool)

(assert (=> start!135978 (=> (not res!1076649) (not e!878768))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135978 (= res!1076649 (validMask!0 mask!898))))

(assert (=> start!135978 e!878768))

(assert (=> start!135978 true))

(declare-datatypes ((array!105415 0))(
  ( (array!105416 (arr!50839 (Array (_ BitVec 32) (_ BitVec 64))) (size!51390 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105415)

(declare-fun array_inv!39484 (array!105415) Bool)

(assert (=> start!135978 (array_inv!39484 _keys!605)))

(declare-fun b!1575522 () Bool)

(declare-fun res!1076651 () Bool)

(assert (=> b!1575522 (=> (not res!1076651) (not e!878768))))

(assert (=> b!1575522 (= res!1076651 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51390 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575523 () Bool)

(declare-fun res!1076650 () Bool)

(assert (=> b!1575523 (=> (not res!1076650) (not e!878768))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575523 (= res!1076650 (validKeyInArray!0 k!761))))

(declare-datatypes ((SeekEntryResult!13720 0))(
  ( (MissingZero!13720 (index!57277 (_ BitVec 32))) (Found!13720 (index!57278 (_ BitVec 32))) (Intermediate!13720 (undefined!14532 Bool) (index!57279 (_ BitVec 32)) (x!142247 (_ BitVec 32))) (Undefined!13720) (MissingVacant!13720 (index!57280 (_ BitVec 32))) )
))
(declare-fun lt!675196 () SeekEntryResult!13720)

(declare-fun b!1575524 () Bool)

(assert (=> b!1575524 (= e!878768 (and (is-Intermediate!13720 lt!675196) (not (undefined!14532 lt!675196)) (not (= (select (arr!50839 _keys!605) (index!57279 lt!675196)) k!761)) (not (= (select (arr!50839 _keys!605) (index!57279 lt!675196)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!57279 lt!675196) #b00000000000000000000000000000000) (bvsge (index!57279 lt!675196) (size!51390 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105415 (_ BitVec 32)) SeekEntryResult!13720)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575524 (= lt!675196 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135978 res!1076649) b!1575522))

(assert (= (and b!1575522 res!1076651) b!1575523))

(assert (= (and b!1575523 res!1076650) b!1575524))

(declare-fun m!1448551 () Bool)

(assert (=> start!135978 m!1448551))

(declare-fun m!1448553 () Bool)

(assert (=> start!135978 m!1448553))

(declare-fun m!1448555 () Bool)

(assert (=> b!1575523 m!1448555))

(declare-fun m!1448557 () Bool)

(assert (=> b!1575524 m!1448557))

(declare-fun m!1448559 () Bool)

(assert (=> b!1575524 m!1448559))

(assert (=> b!1575524 m!1448559))

(declare-fun m!1448561 () Bool)

(assert (=> b!1575524 m!1448561))

(push 1)

(assert (not b!1575523))

(assert (not b!1575524))

(assert (not start!135978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165403 () Bool)

(assert (=> d!165403 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575523 d!165403))

(declare-fun b!1575569 () Bool)

(declare-fun e!878798 () SeekEntryResult!13720)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575569 (= e!878798 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575570 () Bool)

(declare-fun lt!675212 () SeekEntryResult!13720)

(assert (=> b!1575570 (and (bvsge (index!57279 lt!675212) #b00000000000000000000000000000000) (bvslt (index!57279 lt!675212) (size!51390 _keys!605)))))

(declare-fun e!878800 () Bool)

(assert (=> b!1575570 (= e!878800 (= (select (arr!50839 _keys!605) (index!57279 lt!675212)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575571 () Bool)

(declare-fun e!878797 () SeekEntryResult!13720)

(assert (=> b!1575571 (= e!878797 (Intermediate!13720 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575572 () Bool)

(declare-fun e!878799 () Bool)

(assert (=> b!1575572 (= e!878799 (bvsge (x!142247 lt!675212) #b01111111111111111111111111111110))))

(declare-fun d!165407 () Bool)

(assert (=> d!165407 e!878799))

(declare-fun c!145720 () Bool)

(assert (=> d!165407 (= c!145720 (and (is-Intermediate!13720 lt!675212) (undefined!14532 lt!675212)))))

(assert (=> d!165407 (= lt!675212 e!878797)))

(declare-fun c!145718 () Bool)

(assert (=> d!165407 (= c!145718 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675211 () (_ BitVec 64))

(assert (=> d!165407 (= lt!675211 (select (arr!50839 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165407 (validMask!0 mask!898)))

(assert (=> d!165407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675212)))

(declare-fun b!1575573 () Bool)

(declare-fun e!878796 () Bool)

(assert (=> b!1575573 (= e!878799 e!878796)))

(declare-fun res!1076678 () Bool)

(assert (=> b!1575573 (= res!1076678 (and (is-Intermediate!13720 lt!675212) (not (undefined!14532 lt!675212)) (bvslt (x!142247 lt!675212) #b01111111111111111111111111111110) (bvsge (x!142247 lt!675212) #b00000000000000000000000000000000) (bvsge (x!142247 lt!675212) #b00000000000000000000000000000000)))))

(assert (=> b!1575573 (=> (not res!1076678) (not e!878796))))

(declare-fun b!1575574 () Bool)

(assert (=> b!1575574 (and (bvsge (index!57279 lt!675212) #b00000000000000000000000000000000) (bvslt (index!57279 lt!675212) (size!51390 _keys!605)))))

(declare-fun res!1076676 () Bool)

(assert (=> b!1575574 (= res!1076676 (= (select (arr!50839 _keys!605) (index!57279 lt!675212)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575574 (=> res!1076676 e!878800)))

(declare-fun b!1575575 () Bool)

(assert (=> b!1575575 (= e!878797 e!878798)))

(declare-fun c!145719 () Bool)

(assert (=> b!1575575 (= c!145719 (or (= lt!675211 k!761) (= (bvadd lt!675211 lt!675211) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575576 () Bool)

(assert (=> b!1575576 (and (bvsge (index!57279 lt!675212) #b00000000000000000000000000000000) (bvslt (index!57279 lt!675212) (size!51390 _keys!605)))))

(declare-fun res!1076677 () Bool)

(assert (=> b!1575576 (= res!1076677 (= (select (arr!50839 _keys!605) (index!57279 lt!675212)) k!761))))

(assert (=> b!1575576 (=> res!1076677 e!878800)))

(assert (=> b!1575576 (= e!878796 e!878800)))

(declare-fun b!1575577 () Bool)

(assert (=> b!1575577 (= e!878798 (Intermediate!13720 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(assert (= (and d!165407 c!145718) b!1575571))

(assert (= (and d!165407 (not c!145718)) b!1575575))

(assert (= (and b!1575575 c!145719) b!1575577))

(assert (= (and b!1575575 (not c!145719)) b!1575569))

(assert (= (and d!165407 c!145720) b!1575572))

(assert (= (and d!165407 (not c!145720)) b!1575573))

(assert (= (and b!1575573 res!1076678) b!1575576))

(assert (= (and b!1575576 (not res!1076677)) b!1575574))

(assert (= (and b!1575574 (not res!1076676)) b!1575570))

(assert (=> d!165407 m!1448559))

(declare-fun m!1448587 () Bool)

(assert (=> d!165407 m!1448587))

(assert (=> d!165407 m!1448551))

(declare-fun m!1448589 () Bool)

(assert (=> b!1575576 m!1448589))

(assert (=> b!1575574 m!1448589))

(assert (=> b!1575570 m!1448589))

(assert (=> b!1575569 m!1448559))

(declare-fun m!1448591 () Bool)

(assert (=> b!1575569 m!1448591))

(assert (=> b!1575569 m!1448591))

(declare-fun m!1448593 () Bool)

(assert (=> b!1575569 m!1448593))

(assert (=> b!1575524 d!165407))

(declare-fun d!165413 () Bool)

(declare-fun lt!675224 () (_ BitVec 32))

(declare-fun lt!675223 () (_ BitVec 32))

(assert (=> d!165413 (= lt!675224 (bvmul (bvxor lt!675223 (bvlshr lt!675223 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165413 (= lt!675223 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165413 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076685 (let ((h!38432 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142252 (bvmul (bvxor h!38432 (bvlshr h!38432 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142252 (bvlshr x!142252 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076685 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076685 #b00000000000000000000000000000000))))))

(assert (=> d!165413 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675224 (bvlshr lt!675224 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575524 d!165413))

(declare-fun d!165417 () Bool)

(assert (=> d!165417 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135978 d!165417))

(declare-fun d!165423 () Bool)

(assert (=> d!165423 (= (array_inv!39484 _keys!605) (bvsge (size!51390 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135978 d!165423))

(push 1)

(assert (not b!1575569))

(assert (not d!165407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

