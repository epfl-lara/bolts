; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135838 () Bool)

(assert start!135838)

(declare-fun res!1076335 () Bool)

(declare-fun e!878483 () Bool)

(assert (=> start!135838 (=> (not res!1076335) (not e!878483))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135838 (= res!1076335 (validMask!0 mask!898))))

(assert (=> start!135838 e!878483))

(assert (=> start!135838 true))

(declare-datatypes ((array!105356 0))(
  ( (array!105357 (arr!50814 (Array (_ BitVec 32) (_ BitVec 64))) (size!51365 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105356)

(declare-fun array_inv!39459 (array!105356) Bool)

(assert (=> start!135838 (array_inv!39459 _keys!605)))

(declare-fun b!1575054 () Bool)

(declare-fun res!1076334 () Bool)

(assert (=> b!1575054 (=> (not res!1076334) (not e!878483))))

(assert (=> b!1575054 (= res!1076334 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51365 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575055 () Bool)

(declare-fun res!1076336 () Bool)

(assert (=> b!1575055 (=> (not res!1076336) (not e!878483))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575055 (= res!1076336 (validKeyInArray!0 k!761))))

(declare-fun b!1575056 () Bool)

(declare-datatypes ((SeekEntryResult!13695 0))(
  ( (MissingZero!13695 (index!57177 (_ BitVec 32))) (Found!13695 (index!57178 (_ BitVec 32))) (Intermediate!13695 (undefined!14507 Bool) (index!57179 (_ BitVec 32)) (x!142132 (_ BitVec 32))) (Undefined!13695) (MissingVacant!13695 (index!57180 (_ BitVec 32))) )
))
(declare-fun lt!675013 () SeekEntryResult!13695)

(assert (=> b!1575056 (= e!878483 (and (is-Intermediate!13695 lt!675013) (not (undefined!14507 lt!675013)) (or (bvslt (index!57179 lt!675013) #b00000000000000000000000000000000) (bvsge (index!57179 lt!675013) (size!51365 _keys!605)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105356 (_ BitVec 32)) SeekEntryResult!13695)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575056 (= lt!675013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135838 res!1076335) b!1575054))

(assert (= (and b!1575054 res!1076334) b!1575055))

(assert (= (and b!1575055 res!1076336) b!1575056))

(declare-fun m!1448217 () Bool)

(assert (=> start!135838 m!1448217))

(declare-fun m!1448219 () Bool)

(assert (=> start!135838 m!1448219))

(declare-fun m!1448221 () Bool)

(assert (=> b!1575055 m!1448221))

(declare-fun m!1448223 () Bool)

(assert (=> b!1575056 m!1448223))

(assert (=> b!1575056 m!1448223))

(declare-fun m!1448225 () Bool)

(assert (=> b!1575056 m!1448225))

(push 1)

(assert (not b!1575055))

(assert (not start!135838))

(assert (not b!1575056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165303 () Bool)

(assert (=> d!165303 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575055 d!165303))

(declare-fun d!165305 () Bool)

(assert (=> d!165305 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!135838 d!165305))

(declare-fun d!165315 () Bool)

(assert (=> d!165315 (= (array_inv!39459 _keys!605) (bvsge (size!51365 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!135838 d!165315))

(declare-fun b!1575129 () Bool)

(declare-fun e!878527 () SeekEntryResult!13695)

(assert (=> b!1575129 (= e!878527 (Intermediate!13695 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575130 () Bool)

(declare-fun lt!675040 () SeekEntryResult!13695)

(assert (=> b!1575130 (and (bvsge (index!57179 lt!675040) #b00000000000000000000000000000000) (bvslt (index!57179 lt!675040) (size!51365 _keys!605)))))

(declare-fun e!878529 () Bool)

(assert (=> b!1575130 (= e!878529 (= (select (arr!50814 _keys!605) (index!57179 lt!675040)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575131 () Bool)

(declare-fun e!878525 () Bool)

(assert (=> b!1575131 (= e!878525 (bvsge (x!142132 lt!675040) #b01111111111111111111111111111110))))

(declare-fun b!1575132 () Bool)

(declare-fun e!878528 () SeekEntryResult!13695)

(assert (=> b!1575132 (= e!878528 (Intermediate!13695 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165317 () Bool)

(assert (=> d!165317 e!878525))

(declare-fun c!145651 () Bool)

(assert (=> d!165317 (= c!145651 (and (is-Intermediate!13695 lt!675040) (undefined!14507 lt!675040)))))

(assert (=> d!165317 (= lt!675040 e!878528)))

(declare-fun c!145653 () Bool)

(assert (=> d!165317 (= c!145653 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675041 () (_ BitVec 64))

(assert (=> d!165317 (= lt!675041 (select (arr!50814 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165317 (validMask!0 mask!898)))

(assert (=> d!165317 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675040)))

(declare-fun b!1575133 () Bool)

(declare-fun e!878526 () Bool)

(assert (=> b!1575133 (= e!878525 e!878526)))

(declare-fun res!1076363 () Bool)

(assert (=> b!1575133 (= res!1076363 (and (is-Intermediate!13695 lt!675040) (not (undefined!14507 lt!675040)) (bvslt (x!142132 lt!675040) #b01111111111111111111111111111110) (bvsge (x!142132 lt!675040) #b00000000000000000000000000000000) (bvsge (x!142132 lt!675040) #b00000000000000000000000000000000)))))

(assert (=> b!1575133 (=> (not res!1076363) (not e!878526))))

(declare-fun b!1575134 () Bool)

(assert (=> b!1575134 (and (bvsge (index!57179 lt!675040) #b00000000000000000000000000000000) (bvslt (index!57179 lt!675040) (size!51365 _keys!605)))))

(declare-fun res!1076364 () Bool)

(assert (=> b!1575134 (= res!1076364 (= (select (arr!50814 _keys!605) (index!57179 lt!675040)) k!761))))

(assert (=> b!1575134 (=> res!1076364 e!878529)))

(assert (=> b!1575134 (= e!878526 e!878529)))

(declare-fun b!1575135 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575135 (= e!878527 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575136 () Bool)

(assert (=> b!1575136 (= e!878528 e!878527)))

(declare-fun c!145652 () Bool)

(assert (=> b!1575136 (= c!145652 (or (= lt!675041 k!761) (= (bvadd lt!675041 lt!675041) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575137 () Bool)

(assert (=> b!1575137 (and (bvsge (index!57179 lt!675040) #b00000000000000000000000000000000) (bvslt (index!57179 lt!675040) (size!51365 _keys!605)))))

(declare-fun res!1076365 () Bool)

(assert (=> b!1575137 (= res!1076365 (= (select (arr!50814 _keys!605) (index!57179 lt!675040)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575137 (=> res!1076365 e!878529)))

(assert (= (and d!165317 c!145653) b!1575132))

(assert (= (and d!165317 (not c!145653)) b!1575136))

(assert (= (and b!1575136 c!145652) b!1575129))

(assert (= (and b!1575136 (not c!145652)) b!1575135))

(assert (= (and d!165317 c!145651) b!1575131))

(assert (= (and d!165317 (not c!145651)) b!1575133))

(assert (= (and b!1575133 res!1076363) b!1575134))

(assert (= (and b!1575134 (not res!1076364)) b!1575137))

(assert (= (and b!1575137 (not res!1076365)) b!1575130))

(assert (=> b!1575135 m!1448223))

(declare-fun m!1448243 () Bool)

(assert (=> b!1575135 m!1448243))

(assert (=> b!1575135 m!1448243))

(declare-fun m!1448245 () Bool)

(assert (=> b!1575135 m!1448245))

(declare-fun m!1448247 () Bool)

(assert (=> b!1575134 m!1448247))

(assert (=> b!1575137 m!1448247))

(assert (=> d!165317 m!1448223))

(declare-fun m!1448249 () Bool)

(assert (=> d!165317 m!1448249))

(assert (=> d!165317 m!1448217))

(assert (=> b!1575130 m!1448247))

(assert (=> b!1575056 d!165317))

(declare-fun d!165323 () Bool)

(declare-fun lt!675049 () (_ BitVec 32))

(declare-fun lt!675048 () (_ BitVec 32))

(assert (=> d!165323 (= lt!675049 (bvmul (bvxor lt!675048 (bvlshr lt!675048 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165323 (= lt!675048 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165323 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076366 (let ((h!38425 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142138 (bvmul (bvxor h!38425 (bvlshr h!38425 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142138 (bvlshr x!142138 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076366 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076366 #b00000000000000000000000000000000))))))

(assert (=> d!165323 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675049 (bvlshr lt!675049 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575056 d!165323))

(push 1)

(assert (not b!1575135))

(assert (not d!165317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

