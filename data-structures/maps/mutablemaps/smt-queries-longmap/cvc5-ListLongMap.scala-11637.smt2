; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135834 () Bool)

(assert start!135834)

(declare-fun res!1076318 () Bool)

(declare-fun e!878472 () Bool)

(assert (=> start!135834 (=> (not res!1076318) (not e!878472))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135834 (= res!1076318 (validMask!0 mask!898))))

(assert (=> start!135834 e!878472))

(assert (=> start!135834 true))

(declare-datatypes ((array!105352 0))(
  ( (array!105353 (arr!50812 (Array (_ BitVec 32) (_ BitVec 64))) (size!51363 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105352)

(declare-fun array_inv!39457 (array!105352) Bool)

(assert (=> start!135834 (array_inv!39457 _keys!605)))

(declare-fun b!1575036 () Bool)

(declare-fun res!1076316 () Bool)

(assert (=> b!1575036 (=> (not res!1076316) (not e!878472))))

(assert (=> b!1575036 (= res!1076316 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51363 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575037 () Bool)

(declare-fun res!1076317 () Bool)

(assert (=> b!1575037 (=> (not res!1076317) (not e!878472))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575037 (= res!1076317 (validKeyInArray!0 k!761))))

(declare-fun b!1575038 () Bool)

(declare-datatypes ((SeekEntryResult!13693 0))(
  ( (MissingZero!13693 (index!57169 (_ BitVec 32))) (Found!13693 (index!57170 (_ BitVec 32))) (Intermediate!13693 (undefined!14505 Bool) (index!57171 (_ BitVec 32)) (x!142130 (_ BitVec 32))) (Undefined!13693) (MissingVacant!13693 (index!57172 (_ BitVec 32))) )
))
(declare-fun lt!675007 () SeekEntryResult!13693)

(assert (=> b!1575038 (= e!878472 (and (is-Intermediate!13693 lt!675007) (not (undefined!14505 lt!675007)) (or (bvslt (index!57171 lt!675007) #b00000000000000000000000000000000) (bvsge (index!57171 lt!675007) (size!51363 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105352 (_ BitVec 32)) SeekEntryResult!13693)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575038 (= lt!675007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135834 res!1076318) b!1575036))

(assert (= (and b!1575036 res!1076316) b!1575037))

(assert (= (and b!1575037 res!1076317) b!1575038))

(declare-fun m!1448197 () Bool)

(assert (=> start!135834 m!1448197))

(declare-fun m!1448199 () Bool)

(assert (=> start!135834 m!1448199))

(declare-fun m!1448201 () Bool)

(assert (=> b!1575037 m!1448201))

(declare-fun m!1448203 () Bool)

(assert (=> b!1575038 m!1448203))

(assert (=> b!1575038 m!1448203))

(declare-fun m!1448205 () Bool)

(assert (=> b!1575038 m!1448205))

(push 1)

(assert (not b!1575037))

(assert (not start!135834))

(assert (not b!1575038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165299 () Bool)

(assert (=> d!165299 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575037 d!165299))

(declare-fun d!165301 () Bool)

(assert (=> d!165301 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135834 d!165301))

(declare-fun d!165311 () Bool)

(assert (=> d!165311 (= (array_inv!39457 _keys!605) (bvsge (size!51363 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135834 d!165311))

(declare-fun e!878514 () SeekEntryResult!13693)

(declare-fun b!1575110 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575110 (= e!878514 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575111 () Bool)

(assert (=> b!1575111 (= e!878514 (Intermediate!13693 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575112 () Bool)

(declare-fun lt!675028 () SeekEntryResult!13693)

(assert (=> b!1575112 (and (bvsge (index!57171 lt!675028) #b00000000000000000000000000000000) (bvslt (index!57171 lt!675028) (size!51363 _keys!605)))))

(declare-fun res!1076353 () Bool)

(assert (=> b!1575112 (= res!1076353 (= (select (arr!50812 _keys!605) (index!57171 lt!675028)) k!761))))

(declare-fun e!878515 () Bool)

(assert (=> b!1575112 (=> res!1076353 e!878515)))

(declare-fun e!878518 () Bool)

(assert (=> b!1575112 (= e!878518 e!878515)))

(declare-fun d!165313 () Bool)

(declare-fun e!878517 () Bool)

(assert (=> d!165313 e!878517))

(declare-fun c!145646 () Bool)

(assert (=> d!165313 (= c!145646 (and (is-Intermediate!13693 lt!675028) (undefined!14505 lt!675028)))))

(declare-fun e!878516 () SeekEntryResult!13693)

(assert (=> d!165313 (= lt!675028 e!878516)))

(declare-fun c!145647 () Bool)

(assert (=> d!165313 (= c!145647 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675029 () (_ BitVec 64))

(assert (=> d!165313 (= lt!675029 (select (arr!50812 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165313 (validMask!0 mask!898)))

(assert (=> d!165313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675028)))

(declare-fun b!1575113 () Bool)

(assert (=> b!1575113 (and (bvsge (index!57171 lt!675028) #b00000000000000000000000000000000) (bvslt (index!57171 lt!675028) (size!51363 _keys!605)))))

(declare-fun res!1076355 () Bool)

(assert (=> b!1575113 (= res!1076355 (= (select (arr!50812 _keys!605) (index!57171 lt!675028)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575113 (=> res!1076355 e!878515)))

(declare-fun b!1575114 () Bool)

(assert (=> b!1575114 (= e!878517 (bvsge (x!142130 lt!675028) #b01111111111111111111111111111110))))

(declare-fun b!1575115 () Bool)

(assert (=> b!1575115 (and (bvsge (index!57171 lt!675028) #b00000000000000000000000000000000) (bvslt (index!57171 lt!675028) (size!51363 _keys!605)))))

(assert (=> b!1575115 (= e!878515 (= (select (arr!50812 _keys!605) (index!57171 lt!675028)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575116 () Bool)

(assert (=> b!1575116 (= e!878516 (Intermediate!13693 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575117 () Bool)

(assert (=> b!1575117 (= e!878517 e!878518)))

(declare-fun res!1076354 () Bool)

(assert (=> b!1575117 (= res!1076354 (and (is-Intermediate!13693 lt!675028) (not (undefined!14505 lt!675028)) (bvslt (x!142130 lt!675028) #b01111111111111111111111111111110) (bvsge (x!142130 lt!675028) #b00000000000000000000000000000000) (bvsge (x!142130 lt!675028) #b00000000000000000000000000000000)))))

(assert (=> b!1575117 (=> (not res!1076354) (not e!878518))))

(declare-fun b!1575118 () Bool)

(assert (=> b!1575118 (= e!878516 e!878514)))

(declare-fun c!145648 () Bool)

(assert (=> b!1575118 (= c!145648 (or (= lt!675029 k!761) (= (bvadd lt!675029 lt!675029) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!165313 c!145647) b!1575116))

(assert (= (and d!165313 (not c!145647)) b!1575118))

(assert (= (and b!1575118 c!145648) b!1575111))

(assert (= (and b!1575118 (not c!145648)) b!1575110))

(assert (= (and d!165313 c!145646) b!1575114))

(assert (= (and d!165313 (not c!145646)) b!1575117))

(assert (= (and b!1575117 res!1076354) b!1575112))

(assert (= (and b!1575112 (not res!1076353)) b!1575113))

(assert (= (and b!1575113 (not res!1076355)) b!1575115))

(assert (=> b!1575110 m!1448203))

(declare-fun m!1448235 () Bool)

(assert (=> b!1575110 m!1448235))

(assert (=> b!1575110 m!1448235))

(declare-fun m!1448237 () Bool)

(assert (=> b!1575110 m!1448237))

(assert (=> d!165313 m!1448203))

(declare-fun m!1448239 () Bool)

(assert (=> d!165313 m!1448239))

(assert (=> d!165313 m!1448197))

(declare-fun m!1448241 () Bool)

(assert (=> b!1575115 m!1448241))

(assert (=> b!1575112 m!1448241))

(assert (=> b!1575113 m!1448241))

(assert (=> b!1575038 d!165313))

(declare-fun d!165321 () Bool)

(declare-fun lt!675043 () (_ BitVec 32))

(declare-fun lt!675042 () (_ BitVec 32))

(assert (=> d!165321 (= lt!675043 (bvmul (bvxor lt!675042 (bvlshr lt!675042 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165321 (= lt!675042 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165321 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076362 (let ((h!38424 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142137 (bvmul (bvxor h!38424 (bvlshr h!38424 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142137 (bvlshr x!142137 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076362 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076362 #b00000000000000000000000000000000))))))

(assert (=> d!165321 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675043 (bvlshr lt!675043 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575038 d!165321))

(push 1)

(assert (not d!165313))

(assert (not b!1575110))

(check-sat)

(pop 1)

(push 1)

(check-sat)

