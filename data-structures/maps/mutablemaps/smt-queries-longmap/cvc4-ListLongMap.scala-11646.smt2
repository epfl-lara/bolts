; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135982 () Bool)

(assert start!135982)

(declare-fun res!1076669 () Bool)

(declare-fun e!878781 () Bool)

(assert (=> start!135982 (=> (not res!1076669) (not e!878781))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135982 (= res!1076669 (validMask!0 mask!898))))

(assert (=> start!135982 e!878781))

(assert (=> start!135982 true))

(declare-datatypes ((array!105419 0))(
  ( (array!105420 (arr!50841 (Array (_ BitVec 32) (_ BitVec 64))) (size!51392 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105419)

(declare-fun array_inv!39486 (array!105419) Bool)

(assert (=> start!135982 (array_inv!39486 _keys!605)))

(declare-fun b!1575540 () Bool)

(declare-fun res!1076668 () Bool)

(assert (=> b!1575540 (=> (not res!1076668) (not e!878781))))

(assert (=> b!1575540 (= res!1076668 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51392 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575541 () Bool)

(declare-fun res!1076667 () Bool)

(assert (=> b!1575541 (=> (not res!1076667) (not e!878781))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575541 (= res!1076667 (validKeyInArray!0 k!761))))

(declare-fun b!1575542 () Bool)

(declare-datatypes ((SeekEntryResult!13722 0))(
  ( (MissingZero!13722 (index!57285 (_ BitVec 32))) (Found!13722 (index!57286 (_ BitVec 32))) (Intermediate!13722 (undefined!14534 Bool) (index!57287 (_ BitVec 32)) (x!142249 (_ BitVec 32))) (Undefined!13722) (MissingVacant!13722 (index!57288 (_ BitVec 32))) )
))
(declare-fun lt!675202 () SeekEntryResult!13722)

(assert (=> b!1575542 (= e!878781 (and (is-Intermediate!13722 lt!675202) (not (undefined!14534 lt!675202)) (not (= (select (arr!50841 _keys!605) (index!57287 lt!675202)) k!761)) (not (= (select (arr!50841 _keys!605) (index!57287 lt!675202)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!57287 lt!675202) #b00000000000000000000000000000000) (bvsge (index!57287 lt!675202) (size!51392 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105419 (_ BitVec 32)) SeekEntryResult!13722)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575542 (= lt!675202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135982 res!1076669) b!1575540))

(assert (= (and b!1575540 res!1076668) b!1575541))

(assert (= (and b!1575541 res!1076667) b!1575542))

(declare-fun m!1448575 () Bool)

(assert (=> start!135982 m!1448575))

(declare-fun m!1448577 () Bool)

(assert (=> start!135982 m!1448577))

(declare-fun m!1448579 () Bool)

(assert (=> b!1575541 m!1448579))

(declare-fun m!1448581 () Bool)

(assert (=> b!1575542 m!1448581))

(declare-fun m!1448583 () Bool)

(assert (=> b!1575542 m!1448583))

(assert (=> b!1575542 m!1448583))

(declare-fun m!1448585 () Bool)

(assert (=> b!1575542 m!1448585))

(push 1)

(assert (not b!1575541))

(assert (not b!1575542))

(assert (not start!135982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165409 () Bool)

(assert (=> d!165409 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575541 d!165409))

(declare-fun b!1575596 () Bool)

(declare-fun e!878813 () Bool)

(declare-fun lt!675218 () SeekEntryResult!13722)

(assert (=> b!1575596 (= e!878813 (bvsge (x!142249 lt!675218) #b01111111111111111111111111111110))))

(declare-fun b!1575597 () Bool)

(declare-fun e!878815 () Bool)

(assert (=> b!1575597 (= e!878813 e!878815)))

(declare-fun res!1076688 () Bool)

(assert (=> b!1575597 (= res!1076688 (and (is-Intermediate!13722 lt!675218) (not (undefined!14534 lt!675218)) (bvslt (x!142249 lt!675218) #b01111111111111111111111111111110) (bvsge (x!142249 lt!675218) #b00000000000000000000000000000000) (bvsge (x!142249 lt!675218) #b00000000000000000000000000000000)))))

(assert (=> b!1575597 (=> (not res!1076688) (not e!878815))))

(declare-fun b!1575598 () Bool)

(assert (=> b!1575598 (and (bvsge (index!57287 lt!675218) #b00000000000000000000000000000000) (bvslt (index!57287 lt!675218) (size!51392 _keys!605)))))

(declare-fun res!1076686 () Bool)

(assert (=> b!1575598 (= res!1076686 (= (select (arr!50841 _keys!605) (index!57287 lt!675218)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878812 () Bool)

(assert (=> b!1575598 (=> res!1076686 e!878812)))

(declare-fun b!1575599 () Bool)

(declare-fun e!878814 () SeekEntryResult!13722)

(assert (=> b!1575599 (= e!878814 (Intermediate!13722 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165411 () Bool)

(assert (=> d!165411 e!878813))

(declare-fun c!145729 () Bool)

(assert (=> d!165411 (= c!145729 (and (is-Intermediate!13722 lt!675218) (undefined!14534 lt!675218)))))

(assert (=> d!165411 (= lt!675218 e!878814)))

(declare-fun c!145727 () Bool)

(assert (=> d!165411 (= c!145727 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675217 () (_ BitVec 64))

(assert (=> d!165411 (= lt!675217 (select (arr!50841 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165411 (validMask!0 mask!898)))

(assert (=> d!165411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675218)))

(declare-fun b!1575600 () Bool)

(declare-fun e!878811 () SeekEntryResult!13722)

(assert (=> b!1575600 (= e!878811 (Intermediate!13722 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575601 () Bool)

(assert (=> b!1575601 (= e!878814 e!878811)))

(declare-fun c!145728 () Bool)

(assert (=> b!1575601 (= c!145728 (or (= lt!675217 k!761) (= (bvadd lt!675217 lt!675217) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575602 () Bool)

(assert (=> b!1575602 (and (bvsge (index!57287 lt!675218) #b00000000000000000000000000000000) (bvslt (index!57287 lt!675218) (size!51392 _keys!605)))))

(assert (=> b!1575602 (= e!878812 (= (select (arr!50841 _keys!605) (index!57287 lt!675218)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575603 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575603 (= e!878811 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575604 () Bool)

(assert (=> b!1575604 (and (bvsge (index!57287 lt!675218) #b00000000000000000000000000000000) (bvslt (index!57287 lt!675218) (size!51392 _keys!605)))))

(declare-fun res!1076687 () Bool)

(assert (=> b!1575604 (= res!1076687 (= (select (arr!50841 _keys!605) (index!57287 lt!675218)) k!761))))

(assert (=> b!1575604 (=> res!1076687 e!878812)))

(assert (=> b!1575604 (= e!878815 e!878812)))

(assert (= (and d!165411 c!145727) b!1575599))

(assert (= (and d!165411 (not c!145727)) b!1575601))

(assert (= (and b!1575601 c!145728) b!1575600))

(assert (= (and b!1575601 (not c!145728)) b!1575603))

(assert (= (and d!165411 c!145729) b!1575596))

(assert (= (and d!165411 (not c!145729)) b!1575597))

(assert (= (and b!1575597 res!1076688) b!1575604))

(assert (= (and b!1575604 (not res!1076687)) b!1575598))

(assert (= (and b!1575598 (not res!1076686)) b!1575602))

(declare-fun m!1448595 () Bool)

(assert (=> b!1575604 m!1448595))

(assert (=> b!1575602 m!1448595))

(assert (=> d!165411 m!1448583))

(declare-fun m!1448597 () Bool)

(assert (=> d!165411 m!1448597))

(assert (=> d!165411 m!1448575))

(assert (=> b!1575603 m!1448583))

(declare-fun m!1448599 () Bool)

(assert (=> b!1575603 m!1448599))

(assert (=> b!1575603 m!1448599))

(declare-fun m!1448601 () Bool)

(assert (=> b!1575603 m!1448601))

(assert (=> b!1575598 m!1448595))

(assert (=> b!1575542 d!165411))

(declare-fun d!165415 () Bool)

(declare-fun lt!675230 () (_ BitVec 32))

(declare-fun lt!675229 () (_ BitVec 32))

(assert (=> d!165415 (= lt!675230 (bvmul (bvxor lt!675229 (bvlshr lt!675229 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165415 (= lt!675229 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165415 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076695 (let ((h!38433 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142254 (bvmul (bvxor h!38433 (bvlshr h!38433 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142254 (bvlshr x!142254 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076695 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076695 #b00000000000000000000000000000000))))))

(assert (=> d!165415 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675230 (bvlshr lt!675230 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575542 d!165415))

(declare-fun d!165419 () Bool)

(assert (=> d!165419 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135982 d!165419))

(declare-fun d!165427 () Bool)

(assert (=> d!165427 (= (array_inv!39486 _keys!605) (bvsge (size!51392 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135982 d!165427))

(push 1)

(assert (not d!165411))

(assert (not b!1575603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

