; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135874 () Bool)

(assert start!135874)

(declare-fun res!1076391 () Bool)

(declare-fun e!878546 () Bool)

(assert (=> start!135874 (=> (not res!1076391) (not e!878546))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135874 (= res!1076391 (validMask!0 mask!898))))

(assert (=> start!135874 e!878546))

(assert (=> start!135874 true))

(declare-datatypes ((array!105365 0))(
  ( (array!105366 (arr!50817 (Array (_ BitVec 32) (_ BitVec 64))) (size!51368 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105365)

(declare-fun array_inv!39462 (array!105365) Bool)

(assert (=> start!135874 (array_inv!39462 _keys!605)))

(declare-fun b!1575162 () Bool)

(declare-fun res!1076392 () Bool)

(assert (=> b!1575162 (=> (not res!1076392) (not e!878546))))

(assert (=> b!1575162 (= res!1076392 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51368 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575163 () Bool)

(declare-fun res!1076393 () Bool)

(assert (=> b!1575163 (=> (not res!1076393) (not e!878546))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575163 (= res!1076393 (validKeyInArray!0 k!761))))

(declare-datatypes ((SeekEntryResult!13698 0))(
  ( (MissingZero!13698 (index!57189 (_ BitVec 32))) (Found!13698 (index!57190 (_ BitVec 32))) (Intermediate!13698 (undefined!14510 Bool) (index!57191 (_ BitVec 32)) (x!142149 (_ BitVec 32))) (Undefined!13698) (MissingVacant!13698 (index!57192 (_ BitVec 32))) )
))
(declare-fun lt!675058 () SeekEntryResult!13698)

(declare-fun b!1575164 () Bool)

(assert (=> b!1575164 (= e!878546 (and (is-Intermediate!13698 lt!675058) (not (undefined!14510 lt!675058)) (= (select (arr!50817 _keys!605) (index!57191 lt!675058)) k!761) (or (bvslt (index!57191 lt!675058) #b00000000000000000000000000000000) (bvsge (index!57191 lt!675058) (size!51368 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105365 (_ BitVec 32)) SeekEntryResult!13698)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575164 (= lt!675058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135874 res!1076391) b!1575162))

(assert (= (and b!1575162 res!1076392) b!1575163))

(assert (= (and b!1575163 res!1076393) b!1575164))

(declare-fun m!1448275 () Bool)

(assert (=> start!135874 m!1448275))

(declare-fun m!1448277 () Bool)

(assert (=> start!135874 m!1448277))

(declare-fun m!1448279 () Bool)

(assert (=> b!1575163 m!1448279))

(declare-fun m!1448281 () Bool)

(assert (=> b!1575164 m!1448281))

(declare-fun m!1448283 () Bool)

(assert (=> b!1575164 m!1448283))

(assert (=> b!1575164 m!1448283))

(declare-fun m!1448285 () Bool)

(assert (=> b!1575164 m!1448285))

(push 1)

(assert (not b!1575163))

(assert (not start!135874))

(assert (not b!1575164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165335 () Bool)

(assert (=> d!165335 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575163 d!165335))

(declare-fun d!165337 () Bool)

(assert (=> d!165337 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135874 d!165337))

(declare-fun d!165347 () Bool)

(assert (=> d!165347 (= (array_inv!39462 _keys!605) (bvsge (size!51368 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135874 d!165347))

(declare-fun b!1575237 () Bool)

(declare-fun e!878592 () SeekEntryResult!13698)

(assert (=> b!1575237 (= e!878592 (Intermediate!13698 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575238 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575238 (= e!878592 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575239 () Bool)

(declare-fun e!878590 () Bool)

(declare-fun e!878591 () Bool)

(assert (=> b!1575239 (= e!878590 e!878591)))

(declare-fun res!1076419 () Bool)

(declare-fun lt!675082 () SeekEntryResult!13698)

(assert (=> b!1575239 (= res!1076419 (and (is-Intermediate!13698 lt!675082) (not (undefined!14510 lt!675082)) (bvslt (x!142149 lt!675082) #b01111111111111111111111111111110) (bvsge (x!142149 lt!675082) #b00000000000000000000000000000000) (bvsge (x!142149 lt!675082) #b00000000000000000000000000000000)))))

(assert (=> b!1575239 (=> (not res!1076419) (not e!878591))))

(declare-fun b!1575240 () Bool)

(assert (=> b!1575240 (and (bvsge (index!57191 lt!675082) #b00000000000000000000000000000000) (bvslt (index!57191 lt!675082) (size!51368 _keys!605)))))

(declare-fun res!1076420 () Bool)

(assert (=> b!1575240 (= res!1076420 (= (select (arr!50817 _keys!605) (index!57191 lt!675082)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878588 () Bool)

(assert (=> b!1575240 (=> res!1076420 e!878588)))

(declare-fun b!1575241 () Bool)

(declare-fun e!878589 () SeekEntryResult!13698)

(assert (=> b!1575241 (= e!878589 e!878592)))

(declare-fun c!145680 () Bool)

(declare-fun lt!675081 () (_ BitVec 64))

(assert (=> b!1575241 (= c!145680 (or (= lt!675081 k!761) (= (bvadd lt!675081 lt!675081) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165349 () Bool)

(assert (=> d!165349 e!878590))

(declare-fun c!145679 () Bool)

(assert (=> d!165349 (= c!145679 (and (is-Intermediate!13698 lt!675082) (undefined!14510 lt!675082)))))

(assert (=> d!165349 (= lt!675082 e!878589)))

(declare-fun c!145678 () Bool)

(assert (=> d!165349 (= c!145678 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165349 (= lt!675081 (select (arr!50817 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165349 (validMask!0 mask!898)))

(assert (=> d!165349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675082)))

(declare-fun b!1575242 () Bool)

(assert (=> b!1575242 (and (bvsge (index!57191 lt!675082) #b00000000000000000000000000000000) (bvslt (index!57191 lt!675082) (size!51368 _keys!605)))))

(assert (=> b!1575242 (= e!878588 (= (select (arr!50817 _keys!605) (index!57191 lt!675082)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575243 () Bool)

(assert (=> b!1575243 (and (bvsge (index!57191 lt!675082) #b00000000000000000000000000000000) (bvslt (index!57191 lt!675082) (size!51368 _keys!605)))))

(declare-fun res!1076421 () Bool)

(assert (=> b!1575243 (= res!1076421 (= (select (arr!50817 _keys!605) (index!57191 lt!675082)) k!761))))

(assert (=> b!1575243 (=> res!1076421 e!878588)))

(assert (=> b!1575243 (= e!878591 e!878588)))

(declare-fun b!1575244 () Bool)

(assert (=> b!1575244 (= e!878589 (Intermediate!13698 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575245 () Bool)

(assert (=> b!1575245 (= e!878590 (bvsge (x!142149 lt!675082) #b01111111111111111111111111111110))))

(assert (= (and d!165349 c!145678) b!1575244))

(assert (= (and d!165349 (not c!145678)) b!1575241))

(assert (= (and b!1575241 c!145680) b!1575237))

(assert (= (and b!1575241 (not c!145680)) b!1575238))

(assert (= (and d!165349 c!145679) b!1575245))

(assert (= (and d!165349 (not c!145679)) b!1575239))

(assert (= (and b!1575239 res!1076419) b!1575243))

(assert (= (and b!1575243 (not res!1076421)) b!1575240))

(assert (= (and b!1575240 (not res!1076420)) b!1575242))

(assert (=> d!165349 m!1448283))

(declare-fun m!1448303 () Bool)

(assert (=> d!165349 m!1448303))

(assert (=> d!165349 m!1448275))

(declare-fun m!1448305 () Bool)

(assert (=> b!1575243 m!1448305))

(assert (=> b!1575242 m!1448305))

(assert (=> b!1575240 m!1448305))

(assert (=> b!1575238 m!1448283))

(declare-fun m!1448307 () Bool)

(assert (=> b!1575238 m!1448307))

(assert (=> b!1575238 m!1448307))

(declare-fun m!1448309 () Bool)

(assert (=> b!1575238 m!1448309))

(assert (=> b!1575164 d!165349))

(declare-fun d!165355 () Bool)

(declare-fun lt!675094 () (_ BitVec 32))

(declare-fun lt!675093 () (_ BitVec 32))

(assert (=> d!165355 (= lt!675094 (bvmul (bvxor lt!675093 (bvlshr lt!675093 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165355 (= lt!675093 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165355 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076423 (let ((h!38428 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142155 (bvmul (bvxor h!38428 (bvlshr h!38428 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142155 (bvlshr x!142155 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076423 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076423 #b00000000000000000000000000000000))))))

(assert (=> d!165355 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675094 (bvlshr lt!675094 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575164 d!165355))

(push 1)

(assert (not d!165349))

(assert (not b!1575238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

