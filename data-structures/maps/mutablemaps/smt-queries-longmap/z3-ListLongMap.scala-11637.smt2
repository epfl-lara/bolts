; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135836 () Bool)

(assert start!135836)

(declare-fun res!1076325 () Bool)

(declare-fun e!878478 () Bool)

(assert (=> start!135836 (=> (not res!1076325) (not e!878478))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135836 (= res!1076325 (validMask!0 mask!898))))

(assert (=> start!135836 e!878478))

(assert (=> start!135836 true))

(declare-datatypes ((array!105354 0))(
  ( (array!105355 (arr!50813 (Array (_ BitVec 32) (_ BitVec 64))) (size!51364 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105354)

(declare-fun array_inv!39458 (array!105354) Bool)

(assert (=> start!135836 (array_inv!39458 _keys!605)))

(declare-fun b!1575045 () Bool)

(declare-fun res!1076327 () Bool)

(assert (=> b!1575045 (=> (not res!1076327) (not e!878478))))

(assert (=> b!1575045 (= res!1076327 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51364 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575046 () Bool)

(declare-fun res!1076326 () Bool)

(assert (=> b!1575046 (=> (not res!1076326) (not e!878478))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575046 (= res!1076326 (validKeyInArray!0 k0!761))))

(declare-fun b!1575047 () Bool)

(declare-datatypes ((SeekEntryResult!13694 0))(
  ( (MissingZero!13694 (index!57173 (_ BitVec 32))) (Found!13694 (index!57174 (_ BitVec 32))) (Intermediate!13694 (undefined!14506 Bool) (index!57175 (_ BitVec 32)) (x!142131 (_ BitVec 32))) (Undefined!13694) (MissingVacant!13694 (index!57176 (_ BitVec 32))) )
))
(declare-fun lt!675010 () SeekEntryResult!13694)

(get-info :version)

(assert (=> b!1575047 (= e!878478 (and ((_ is Intermediate!13694) lt!675010) (not (undefined!14506 lt!675010)) (or (bvslt (index!57175 lt!675010) #b00000000000000000000000000000000) (bvsge (index!57175 lt!675010) (size!51364 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105354 (_ BitVec 32)) SeekEntryResult!13694)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575047 (= lt!675010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135836 res!1076325) b!1575045))

(assert (= (and b!1575045 res!1076327) b!1575046))

(assert (= (and b!1575046 res!1076326) b!1575047))

(declare-fun m!1448207 () Bool)

(assert (=> start!135836 m!1448207))

(declare-fun m!1448209 () Bool)

(assert (=> start!135836 m!1448209))

(declare-fun m!1448211 () Bool)

(assert (=> b!1575046 m!1448211))

(declare-fun m!1448213 () Bool)

(assert (=> b!1575047 m!1448213))

(assert (=> b!1575047 m!1448213))

(declare-fun m!1448215 () Bool)

(assert (=> b!1575047 m!1448215))

(check-sat (not b!1575046) (not start!135836) (not b!1575047))
(check-sat)
(get-model)

(declare-fun d!165295 () Bool)

(assert (=> d!165295 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575046 d!165295))

(declare-fun d!165297 () Bool)

(assert (=> d!165297 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135836 d!165297))

(declare-fun d!165307 () Bool)

(assert (=> d!165307 (= (array_inv!39458 _keys!605) (bvsge (size!51364 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135836 d!165307))

(declare-fun b!1575093 () Bool)

(declare-fun e!878507 () SeekEntryResult!13694)

(declare-fun e!878506 () SeekEntryResult!13694)

(assert (=> b!1575093 (= e!878507 e!878506)))

(declare-fun c!145641 () Bool)

(declare-fun lt!675023 () (_ BitVec 64))

(assert (=> b!1575093 (= c!145641 (or (= lt!675023 k0!761) (= (bvadd lt!675023 lt!675023) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575094 () Bool)

(assert (=> b!1575094 (= e!878507 (Intermediate!13694 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575095 () Bool)

(declare-fun lt!675022 () SeekEntryResult!13694)

(assert (=> b!1575095 (and (bvsge (index!57175 lt!675022) #b00000000000000000000000000000000) (bvslt (index!57175 lt!675022) (size!51364 _keys!605)))))

(declare-fun res!1076351 () Bool)

(assert (=> b!1575095 (= res!1076351 (= (select (arr!50813 _keys!605) (index!57175 lt!675022)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!878508 () Bool)

(assert (=> b!1575095 (=> res!1076351 e!878508)))

(declare-fun b!1575096 () Bool)

(assert (=> b!1575096 (and (bvsge (index!57175 lt!675022) #b00000000000000000000000000000000) (bvslt (index!57175 lt!675022) (size!51364 _keys!605)))))

(declare-fun res!1076349 () Bool)

(assert (=> b!1575096 (= res!1076349 (= (select (arr!50813 _keys!605) (index!57175 lt!675022)) k0!761))))

(assert (=> b!1575096 (=> res!1076349 e!878508)))

(declare-fun e!878505 () Bool)

(assert (=> b!1575096 (= e!878505 e!878508)))

(declare-fun b!1575098 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575098 (= e!878506 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1575099 () Bool)

(assert (=> b!1575099 (= e!878506 (Intermediate!13694 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575100 () Bool)

(declare-fun e!878509 () Bool)

(assert (=> b!1575100 (= e!878509 e!878505)))

(declare-fun res!1076350 () Bool)

(assert (=> b!1575100 (= res!1076350 (and ((_ is Intermediate!13694) lt!675022) (not (undefined!14506 lt!675022)) (bvslt (x!142131 lt!675022) #b01111111111111111111111111111110) (bvsge (x!142131 lt!675022) #b00000000000000000000000000000000) (bvsge (x!142131 lt!675022) #b00000000000000000000000000000000)))))

(assert (=> b!1575100 (=> (not res!1076350) (not e!878505))))

(declare-fun b!1575101 () Bool)

(assert (=> b!1575101 (and (bvsge (index!57175 lt!675022) #b00000000000000000000000000000000) (bvslt (index!57175 lt!675022) (size!51364 _keys!605)))))

(assert (=> b!1575101 (= e!878508 (= (select (arr!50813 _keys!605) (index!57175 lt!675022)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575097 () Bool)

(assert (=> b!1575097 (= e!878509 (bvsge (x!142131 lt!675022) #b01111111111111111111111111111110))))

(declare-fun d!165309 () Bool)

(assert (=> d!165309 e!878509))

(declare-fun c!145640 () Bool)

(assert (=> d!165309 (= c!145640 (and ((_ is Intermediate!13694) lt!675022) (undefined!14506 lt!675022)))))

(assert (=> d!165309 (= lt!675022 e!878507)))

(declare-fun c!145639 () Bool)

(assert (=> d!165309 (= c!145639 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165309 (= lt!675023 (select (arr!50813 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165309 (validMask!0 mask!898)))

(assert (=> d!165309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675022)))

(assert (= (and d!165309 c!145639) b!1575094))

(assert (= (and d!165309 (not c!145639)) b!1575093))

(assert (= (and b!1575093 c!145641) b!1575099))

(assert (= (and b!1575093 (not c!145641)) b!1575098))

(assert (= (and d!165309 c!145640) b!1575097))

(assert (= (and d!165309 (not c!145640)) b!1575100))

(assert (= (and b!1575100 res!1076350) b!1575096))

(assert (= (and b!1575096 (not res!1076349)) b!1575095))

(assert (= (and b!1575095 (not res!1076351)) b!1575101))

(declare-fun m!1448227 () Bool)

(assert (=> b!1575095 m!1448227))

(assert (=> b!1575098 m!1448213))

(declare-fun m!1448229 () Bool)

(assert (=> b!1575098 m!1448229))

(assert (=> b!1575098 m!1448229))

(declare-fun m!1448231 () Bool)

(assert (=> b!1575098 m!1448231))

(assert (=> b!1575096 m!1448227))

(assert (=> b!1575101 m!1448227))

(assert (=> d!165309 m!1448213))

(declare-fun m!1448233 () Bool)

(assert (=> d!165309 m!1448233))

(assert (=> d!165309 m!1448207))

(assert (=> b!1575047 d!165309))

(declare-fun d!165319 () Bool)

(declare-fun lt!675035 () (_ BitVec 32))

(declare-fun lt!675034 () (_ BitVec 32))

(assert (=> d!165319 (= lt!675035 (bvmul (bvxor lt!675034 (bvlshr lt!675034 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165319 (= lt!675034 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165319 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076352 (let ((h!38423 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142135 (bvmul (bvxor h!38423 (bvlshr h!38423 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142135 (bvlshr x!142135 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076352 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076352 #b00000000000000000000000000000000))))))

(assert (=> d!165319 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675035 (bvlshr lt!675035 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575047 d!165319))

(check-sat (not d!165309) (not b!1575098))
(check-sat)
