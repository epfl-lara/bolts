; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136098 () Bool)

(assert start!136098)

(declare-fun b!1575977 () Bool)

(declare-fun e!879031 () Bool)

(declare-datatypes ((SeekEntryResult!13729 0))(
  ( (MissingZero!13729 (index!57313 (_ BitVec 32))) (Found!13729 (index!57314 (_ BitVec 32))) (Intermediate!13729 (undefined!14541 Bool) (index!57315 (_ BitVec 32)) (x!142304 (_ BitVec 32))) (Undefined!13729) (MissingVacant!13729 (index!57316 (_ BitVec 32))) )
))
(declare-fun lt!675388 () SeekEntryResult!13729)

(declare-datatypes ((array!105442 0))(
  ( (array!105443 (arr!50848 (Array (_ BitVec 32) (_ BitVec 64))) (size!51399 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105442)

(assert (=> b!1575977 (= e!879031 (and (not (is-Undefined!13729 lt!675388)) (not (is-Found!13729 lt!675388)) (not (is-MissingZero!13729 lt!675388)) (is-MissingVacant!13729 lt!675388) (or (bvslt (index!57316 lt!675388) #b00000000000000000000000000000000) (bvsge (index!57316 lt!675388) (size!51399 _keys!605)))))))

(declare-fun lt!675387 () SeekEntryResult!13729)

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105442 (_ BitVec 32)) SeekEntryResult!13729)

(assert (=> b!1575977 (= lt!675388 (seekKeyOrZeroReturnVacant!0 (x!142304 lt!675387) (index!57315 lt!675387) (index!57315 lt!675387) k!761 _keys!605 mask!898))))

(declare-fun res!1076841 () Bool)

(declare-fun e!879032 () Bool)

(assert (=> start!136098 (=> (not res!1076841) (not e!879032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136098 (= res!1076841 (validMask!0 mask!898))))

(assert (=> start!136098 e!879032))

(assert (=> start!136098 true))

(declare-fun array_inv!39493 (array!105442) Bool)

(assert (=> start!136098 (array_inv!39493 _keys!605)))

(declare-fun b!1575975 () Bool)

(declare-fun res!1076842 () Bool)

(assert (=> b!1575975 (=> (not res!1076842) (not e!879032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575975 (= res!1076842 (validKeyInArray!0 k!761))))

(declare-fun b!1575976 () Bool)

(assert (=> b!1575976 (= e!879032 e!879031)))

(declare-fun res!1076840 () Bool)

(assert (=> b!1575976 (=> (not res!1076840) (not e!879031))))

(assert (=> b!1575976 (= res!1076840 (and (not (undefined!14541 lt!675387)) (is-Intermediate!13729 lt!675387) (not (= (select (arr!50848 _keys!605) (index!57315 lt!675387)) k!761)) (not (= (select (arr!50848 _keys!605) (index!57315 lt!675387)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50848 _keys!605) (index!57315 lt!675387)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57315 lt!675387) #b00000000000000000000000000000000) (bvslt (index!57315 lt!675387) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105442 (_ BitVec 32)) SeekEntryResult!13729)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575976 (= lt!675387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575974 () Bool)

(declare-fun res!1076843 () Bool)

(assert (=> b!1575974 (=> (not res!1076843) (not e!879032))))

(assert (=> b!1575974 (= res!1076843 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51399 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(assert (= (and start!136098 res!1076841) b!1575974))

(assert (= (and b!1575974 res!1076843) b!1575975))

(assert (= (and b!1575975 res!1076842) b!1575976))

(assert (= (and b!1575976 res!1076840) b!1575977))

(declare-fun m!1448791 () Bool)

(assert (=> b!1575977 m!1448791))

(declare-fun m!1448793 () Bool)

(assert (=> start!136098 m!1448793))

(declare-fun m!1448795 () Bool)

(assert (=> start!136098 m!1448795))

(declare-fun m!1448797 () Bool)

(assert (=> b!1575975 m!1448797))

(declare-fun m!1448799 () Bool)

(assert (=> b!1575976 m!1448799))

(declare-fun m!1448801 () Bool)

(assert (=> b!1575976 m!1448801))

(assert (=> b!1575976 m!1448801))

(declare-fun m!1448803 () Bool)

(assert (=> b!1575976 m!1448803))

(push 1)

(assert (not b!1575977))

(assert (not start!136098))

(assert (not b!1575975))

(assert (not b!1575976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1576059 () Bool)

(declare-fun e!879084 () SeekEntryResult!13729)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576059 (= e!879084 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142304 lt!675387) #b00000000000000000000000000000001) (nextIndex!0 (index!57315 lt!675387) (x!142304 lt!675387) mask!898) (index!57315 lt!675387) k!761 _keys!605 mask!898))))

(declare-fun b!1576060 () Bool)

(assert (=> b!1576060 (= e!879084 (MissingVacant!13729 (index!57315 lt!675387)))))

(declare-fun b!1576061 () Bool)

(declare-fun c!145869 () Bool)

(declare-fun lt!675417 () (_ BitVec 64))

(assert (=> b!1576061 (= c!145869 (= lt!675417 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879083 () SeekEntryResult!13729)

(assert (=> b!1576061 (= e!879083 e!879084)))

(declare-fun b!1576062 () Bool)

(assert (=> b!1576062 (= e!879083 (Found!13729 (index!57315 lt!675387)))))

(declare-fun d!165513 () Bool)

(declare-fun lt!675418 () SeekEntryResult!13729)

(assert (=> d!165513 (and (or (is-Undefined!13729 lt!675418) (not (is-Found!13729 lt!675418)) (and (bvsge (index!57314 lt!675418) #b00000000000000000000000000000000) (bvslt (index!57314 lt!675418) (size!51399 _keys!605)))) (or (is-Undefined!13729 lt!675418) (is-Found!13729 lt!675418) (not (is-MissingVacant!13729 lt!675418)) (not (= (index!57316 lt!675418) (index!57315 lt!675387))) (and (bvsge (index!57316 lt!675418) #b00000000000000000000000000000000) (bvslt (index!57316 lt!675418) (size!51399 _keys!605)))) (or (is-Undefined!13729 lt!675418) (ite (is-Found!13729 lt!675418) (= (select (arr!50848 _keys!605) (index!57314 lt!675418)) k!761) (and (is-MissingVacant!13729 lt!675418) (= (index!57316 lt!675418) (index!57315 lt!675387)) (= (select (arr!50848 _keys!605) (index!57316 lt!675418)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!879082 () SeekEntryResult!13729)

(assert (=> d!165513 (= lt!675418 e!879082)))

(declare-fun c!145867 () Bool)

(assert (=> d!165513 (= c!145867 (bvsge (x!142304 lt!675387) #b01111111111111111111111111111110))))

(assert (=> d!165513 (= lt!675417 (select (arr!50848 _keys!605) (index!57315 lt!675387)))))

(assert (=> d!165513 (validMask!0 mask!898)))

(assert (=> d!165513 (= (seekKeyOrZeroReturnVacant!0 (x!142304 lt!675387) (index!57315 lt!675387) (index!57315 lt!675387) k!761 _keys!605 mask!898) lt!675418)))

(declare-fun b!1576063 () Bool)

(assert (=> b!1576063 (= e!879082 e!879083)))

(declare-fun c!145868 () Bool)

(assert (=> b!1576063 (= c!145868 (= lt!675417 k!761))))

(declare-fun b!1576064 () Bool)

(assert (=> b!1576064 (= e!879082 Undefined!13729)))

(assert (= (and d!165513 c!145867) b!1576064))

(assert (= (and d!165513 (not c!145867)) b!1576063))

(assert (= (and b!1576063 c!145868) b!1576062))

(assert (= (and b!1576063 (not c!145868)) b!1576061))

(assert (= (and b!1576061 c!145869) b!1576060))

(assert (= (and b!1576061 (not c!145869)) b!1576059))

(declare-fun m!1448849 () Bool)

(assert (=> b!1576059 m!1448849))

(assert (=> b!1576059 m!1448849))

(declare-fun m!1448851 () Bool)

(assert (=> b!1576059 m!1448851))

(declare-fun m!1448853 () Bool)

(assert (=> d!165513 m!1448853))

(declare-fun m!1448855 () Bool)

(assert (=> d!165513 m!1448855))

(assert (=> d!165513 m!1448799))

(assert (=> d!165513 m!1448793))

(assert (=> b!1575977 d!165513))

(declare-fun d!165527 () Bool)

(assert (=> d!165527 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136098 d!165527))

(declare-fun d!165537 () Bool)

(assert (=> d!165537 (= (array_inv!39493 _keys!605) (bvsge (size!51399 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136098 d!165537))

(declare-fun d!165539 () Bool)

(assert (=> d!165539 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575975 d!165539))

(declare-fun b!1576128 () Bool)

(declare-fun e!879122 () SeekEntryResult!13729)

(assert (=> b!1576128 (= e!879122 (Intermediate!13729 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576129 () Bool)

(declare-fun e!879120 () SeekEntryResult!13729)

(assert (=> b!1576129 (= e!879120 e!879122)))

(declare-fun c!145896 () Bool)

(declare-fun lt!675448 () (_ BitVec 64))

(assert (=> b!1576129 (= c!145896 (or (= lt!675448 k!761) (= (bvadd lt!675448 lt!675448) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576130 () Bool)

(assert (=> b!1576130 (= e!879122 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576131 () Bool)

(declare-fun lt!675447 () SeekEntryResult!13729)

(assert (=> b!1576131 (and (bvsge (index!57315 lt!675447) #b00000000000000000000000000000000) (bvslt (index!57315 lt!675447) (size!51399 _keys!605)))))

(declare-fun res!1076894 () Bool)

(assert (=> b!1576131 (= res!1076894 (= (select (arr!50848 _keys!605) (index!57315 lt!675447)) k!761))))

(declare-fun e!879119 () Bool)

(assert (=> b!1576131 (=> res!1076894 e!879119)))

(declare-fun e!879121 () Bool)

(assert (=> b!1576131 (= e!879121 e!879119)))

(declare-fun b!1576132 () Bool)

(declare-fun e!879123 () Bool)

(assert (=> b!1576132 (= e!879123 e!879121)))

(declare-fun res!1076896 () Bool)

(assert (=> b!1576132 (= res!1076896 (and (is-Intermediate!13729 lt!675447) (not (undefined!14541 lt!675447)) (bvslt (x!142304 lt!675447) #b01111111111111111111111111111110) (bvsge (x!142304 lt!675447) #b00000000000000000000000000000000) (bvsge (x!142304 lt!675447) #b00000000000000000000000000000000)))))

(assert (=> b!1576132 (=> (not res!1076896) (not e!879121))))

(declare-fun b!1576133 () Bool)

(assert (=> b!1576133 (and (bvsge (index!57315 lt!675447) #b00000000000000000000000000000000) (bvslt (index!57315 lt!675447) (size!51399 _keys!605)))))

(declare-fun res!1076895 () Bool)

(assert (=> b!1576133 (= res!1076895 (= (select (arr!50848 _keys!605) (index!57315 lt!675447)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576133 (=> res!1076895 e!879119)))

(declare-fun b!1576134 () Bool)

(assert (=> b!1576134 (= e!879123 (bvsge (x!142304 lt!675447) #b01111111111111111111111111111110))))

(declare-fun d!165541 () Bool)

(assert (=> d!165541 e!879123))

(declare-fun c!145894 () Bool)

(assert (=> d!165541 (= c!145894 (and (is-Intermediate!13729 lt!675447) (undefined!14541 lt!675447)))))

(assert (=> d!165541 (= lt!675447 e!879120)))

(declare-fun c!145895 () Bool)

(assert (=> d!165541 (= c!145895 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165541 (= lt!675448 (select (arr!50848 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165541 (validMask!0 mask!898)))

(assert (=> d!165541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675447)))

(declare-fun b!1576135 () Bool)

(assert (=> b!1576135 (and (bvsge (index!57315 lt!675447) #b00000000000000000000000000000000) (bvslt (index!57315 lt!675447) (size!51399 _keys!605)))))

(assert (=> b!1576135 (= e!879119 (= (select (arr!50848 _keys!605) (index!57315 lt!675447)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576136 () Bool)

(assert (=> b!1576136 (= e!879120 (Intermediate!13729 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(assert (= (and d!165541 c!145895) b!1576136))

(assert (= (and d!165541 (not c!145895)) b!1576129))

(assert (= (and b!1576129 c!145896) b!1576128))

(assert (= (and b!1576129 (not c!145896)) b!1576130))

(assert (= (and d!165541 c!145894) b!1576134))

(assert (= (and d!165541 (not c!145894)) b!1576132))

(assert (= (and b!1576132 res!1076896) b!1576131))

(assert (= (and b!1576131 (not res!1076894)) b!1576133))

(assert (= (and b!1576133 (not res!1076895)) b!1576135))

(assert (=> b!1576130 m!1448801))

(declare-fun m!1448873 () Bool)

(assert (=> b!1576130 m!1448873))

(assert (=> b!1576130 m!1448873))

(declare-fun m!1448875 () Bool)

(assert (=> b!1576130 m!1448875))

(declare-fun m!1448877 () Bool)

(assert (=> b!1576133 m!1448877))

(assert (=> b!1576131 m!1448877))

(assert (=> d!165541 m!1448801))

(declare-fun m!1448879 () Bool)

(assert (=> d!165541 m!1448879))

(assert (=> d!165541 m!1448793))

(assert (=> b!1576135 m!1448877))

(assert (=> b!1575976 d!165541))

(declare-fun d!165545 () Bool)

(declare-fun lt!675454 () (_ BitVec 32))

(declare-fun lt!675453 () (_ BitVec 32))

(assert (=> d!165545 (= lt!675454 (bvmul (bvxor lt!675453 (bvlshr lt!675453 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165545 (= lt!675453 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165545 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076897 (let ((h!38443 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142315 (bvmul (bvxor h!38443 (bvlshr h!38443 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142315 (bvlshr x!142315 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076897 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076897 #b00000000000000000000000000000000))))))

(assert (=> d!165545 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675454 (bvlshr lt!675454 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575976 d!165545))

(push 1)

(assert (not d!165513))

(assert (not b!1576059))

(assert (not d!165541))

(assert (not b!1576130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

