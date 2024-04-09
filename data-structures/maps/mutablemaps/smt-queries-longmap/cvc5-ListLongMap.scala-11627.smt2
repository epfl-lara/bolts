; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135684 () Bool)

(assert start!135684)

(declare-fun res!1075958 () Bool)

(declare-fun e!878157 () Bool)

(assert (=> start!135684 (=> (not res!1075958) (not e!878157))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135684 (= res!1075958 (validMask!0 mask!898))))

(assert (=> start!135684 e!878157))

(assert (=> start!135684 true))

(declare-datatypes ((array!105283 0))(
  ( (array!105284 (arr!50782 (Array (_ BitVec 32) (_ BitVec 64))) (size!51333 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105283)

(declare-fun array_inv!39427 (array!105283) Bool)

(assert (=> start!135684 (array_inv!39427 _keys!605)))

(declare-fun b!1574523 () Bool)

(declare-fun res!1075957 () Bool)

(assert (=> b!1574523 (=> (not res!1075957) (not e!878157))))

(assert (=> b!1574523 (= res!1075957 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51333 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574524 () Bool)

(declare-fun res!1075956 () Bool)

(assert (=> b!1574524 (=> (not res!1075956) (not e!878157))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574524 (= res!1075956 (validKeyInArray!0 k!761))))

(declare-fun b!1574525 () Bool)

(declare-datatypes ((SeekEntryResult!13663 0))(
  ( (MissingZero!13663 (index!57049 (_ BitVec 32))) (Found!13663 (index!57050 (_ BitVec 32))) (Intermediate!13663 (undefined!14475 Bool) (index!57051 (_ BitVec 32)) (x!142002 (_ BitVec 32))) (Undefined!13663) (MissingVacant!13663 (index!57052 (_ BitVec 32))) )
))
(declare-fun lt!674809 () SeekEntryResult!13663)

(assert (=> b!1574525 (= e!878157 (and (is-Intermediate!13663 lt!674809) (not (undefined!14475 lt!674809)) (not (= (select (arr!50782 _keys!605) (index!57051 lt!674809)) k!761)) (not (= (select (arr!50782 _keys!605) (index!57051 lt!674809)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50782 _keys!605) (index!57051 lt!674809)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57051 lt!674809) #b00000000000000000000000000000000) (bvslt (index!57051 lt!674809) (bvadd #b00000000000000000000000000000001 mask!898)) (or (bvsgt (x!142002 lt!674809) #b01111111111111111111111111111110) (bvslt (x!142002 lt!674809) #b00000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105283 (_ BitVec 32)) SeekEntryResult!13663)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574525 (= lt!674809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135684 res!1075958) b!1574523))

(assert (= (and b!1574523 res!1075957) b!1574524))

(assert (= (and b!1574524 res!1075956) b!1574525))

(declare-fun m!1447807 () Bool)

(assert (=> start!135684 m!1447807))

(declare-fun m!1447809 () Bool)

(assert (=> start!135684 m!1447809))

(declare-fun m!1447811 () Bool)

(assert (=> b!1574524 m!1447811))

(declare-fun m!1447813 () Bool)

(assert (=> b!1574525 m!1447813))

(declare-fun m!1447815 () Bool)

(assert (=> b!1574525 m!1447815))

(assert (=> b!1574525 m!1447815))

(declare-fun m!1447817 () Bool)

(assert (=> b!1574525 m!1447817))

(push 1)

(assert (not b!1574525))

(assert (not b!1574524))

(assert (not start!135684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1574562 () Bool)

(declare-fun lt!674820 () SeekEntryResult!13663)

(assert (=> b!1574562 (and (bvsge (index!57051 lt!674820) #b00000000000000000000000000000000) (bvslt (index!57051 lt!674820) (size!51333 _keys!605)))))

(declare-fun res!1075983 () Bool)

(assert (=> b!1574562 (= res!1075983 (= (select (arr!50782 _keys!605) (index!57051 lt!674820)) k!761))))

(declare-fun e!878181 () Bool)

(assert (=> b!1574562 (=> res!1075983 e!878181)))

(declare-fun e!878180 () Bool)

(assert (=> b!1574562 (= e!878180 e!878181)))

(declare-fun b!1574563 () Bool)

(declare-fun e!878184 () SeekEntryResult!13663)

(assert (=> b!1574563 (= e!878184 (Intermediate!13663 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574564 () Bool)

(declare-fun e!878183 () SeekEntryResult!13663)

(assert (=> b!1574564 (= e!878183 e!878184)))

(declare-fun c!145553 () Bool)

(declare-fun lt!674821 () (_ BitVec 64))

(assert (=> b!1574564 (= c!145553 (or (= lt!674821 k!761) (= (bvadd lt!674821 lt!674821) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1574565 () Bool)

(assert (=> b!1574565 (and (bvsge (index!57051 lt!674820) #b00000000000000000000000000000000) (bvslt (index!57051 lt!674820) (size!51333 _keys!605)))))

(assert (=> b!1574565 (= e!878181 (= (select (arr!50782 _keys!605) (index!57051 lt!674820)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1574566 () Bool)

(assert (=> b!1574566 (= e!878183 (Intermediate!13663 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1574567 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574567 (= e!878184 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun d!165189 () Bool)

(declare-fun e!878182 () Bool)

(assert (=> d!165189 e!878182))

(declare-fun c!145554 () Bool)

(assert (=> d!165189 (= c!145554 (and (is-Intermediate!13663 lt!674820) (undefined!14475 lt!674820)))))

(assert (=> d!165189 (= lt!674820 e!878183)))

(declare-fun c!145552 () Bool)

(assert (=> d!165189 (= c!145552 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165189 (= lt!674821 (select (arr!50782 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165189 (validMask!0 mask!898)))

(assert (=> d!165189 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!674820)))

(declare-fun b!1574568 () Bool)

(assert (=> b!1574568 (and (bvsge (index!57051 lt!674820) #b00000000000000000000000000000000) (bvslt (index!57051 lt!674820) (size!51333 _keys!605)))))

(declare-fun res!1075985 () Bool)

(assert (=> b!1574568 (= res!1075985 (= (select (arr!50782 _keys!605) (index!57051 lt!674820)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1574568 (=> res!1075985 e!878181)))

(declare-fun b!1574569 () Bool)

(assert (=> b!1574569 (= e!878182 e!878180)))

(declare-fun res!1075984 () Bool)

(assert (=> b!1574569 (= res!1075984 (and (is-Intermediate!13663 lt!674820) (not (undefined!14475 lt!674820)) (bvslt (x!142002 lt!674820) #b01111111111111111111111111111110) (bvsge (x!142002 lt!674820) #b00000000000000000000000000000000) (bvsge (x!142002 lt!674820) #b00000000000000000000000000000000)))))

(assert (=> b!1574569 (=> (not res!1075984) (not e!878180))))

(declare-fun b!1574570 () Bool)

(assert (=> b!1574570 (= e!878182 (bvsge (x!142002 lt!674820) #b01111111111111111111111111111110))))

(assert (= (and d!165189 c!145552) b!1574566))

(assert (= (and d!165189 (not c!145552)) b!1574564))

(assert (= (and b!1574564 c!145553) b!1574563))

(assert (= (and b!1574564 (not c!145553)) b!1574567))

(assert (= (and d!165189 c!145554) b!1574570))

(assert (= (and d!165189 (not c!145554)) b!1574569))

(assert (= (and b!1574569 res!1075984) b!1574562))

(assert (= (and b!1574562 (not res!1075983)) b!1574568))

(assert (= (and b!1574568 (not res!1075985)) b!1574565))

(assert (=> b!1574567 m!1447815))

(declare-fun m!1447843 () Bool)

(assert (=> b!1574567 m!1447843))

(assert (=> b!1574567 m!1447843))

(declare-fun m!1447845 () Bool)

(assert (=> b!1574567 m!1447845))

(declare-fun m!1447847 () Bool)

(assert (=> b!1574565 m!1447847))

(assert (=> d!165189 m!1447815))

(declare-fun m!1447849 () Bool)

(assert (=> d!165189 m!1447849))

(assert (=> d!165189 m!1447807))

(assert (=> b!1574562 m!1447847))

(assert (=> b!1574568 m!1447847))

(assert (=> b!1574525 d!165189))

(declare-fun d!165199 () Bool)

(declare-fun lt!674827 () (_ BitVec 32))

(declare-fun lt!674826 () (_ BitVec 32))

(assert (=> d!165199 (= lt!674827 (bvmul (bvxor lt!674826 (bvlshr lt!674826 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165199 (= lt!674826 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165199 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1075986 (let ((h!38414 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142006 (bvmul (bvxor h!38414 (bvlshr h!38414 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142006 (bvlshr x!142006 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1075986 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1075986 #b00000000000000000000000000000000))))))

(assert (=> d!165199 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!674827 (bvlshr lt!674827 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1574525 d!165199))

(declare-fun d!165205 () Bool)

(assert (=> d!165205 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574524 d!165205))

(declare-fun d!165207 () Bool)

(assert (=> d!165207 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135684 d!165207))

(declare-fun d!165211 () Bool)

(assert (=> d!165211 (= (array_inv!39427 _keys!605) (bvsge (size!51333 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135684 d!165211))

(push 1)

(assert (not b!1574567))

(assert (not d!165189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

