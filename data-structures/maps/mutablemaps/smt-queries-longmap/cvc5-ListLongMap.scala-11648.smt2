; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136056 () Bool)

(assert start!136056)

(declare-fun b!1575806 () Bool)

(declare-fun e!878932 () Bool)

(declare-datatypes ((SeekEntryResult!13726 0))(
  ( (MissingZero!13726 (index!57301 (_ BitVec 32))) (Found!13726 (index!57302 (_ BitVec 32))) (Intermediate!13726 (undefined!14538 Bool) (index!57303 (_ BitVec 32)) (x!142284 (_ BitVec 32))) (Undefined!13726) (MissingVacant!13726 (index!57304 (_ BitVec 32))) )
))
(declare-fun lt!675316 () SeekEntryResult!13726)

(declare-datatypes ((array!105433 0))(
  ( (array!105434 (arr!50845 (Array (_ BitVec 32) (_ BitVec 64))) (size!51396 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105433)

(assert (=> b!1575806 (= e!878932 (and (not (is-Undefined!13726 lt!675316)) (not (is-Found!13726 lt!675316)) (is-MissingZero!13726 lt!675316) (or (bvslt (index!57301 lt!675316) #b00000000000000000000000000000000) (bvsge (index!57301 lt!675316) (size!51396 _keys!605)))))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun lt!675315 () SeekEntryResult!13726)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105433 (_ BitVec 32)) SeekEntryResult!13726)

(assert (=> b!1575806 (= lt!675316 (seekKeyOrZeroReturnVacant!0 (x!142284 lt!675315) (index!57303 lt!675315) (index!57303 lt!675315) k!761 _keys!605 mask!898))))

(declare-fun b!1575803 () Bool)

(declare-fun res!1076774 () Bool)

(declare-fun e!878934 () Bool)

(assert (=> b!1575803 (=> (not res!1076774) (not e!878934))))

(assert (=> b!1575803 (= res!1076774 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51396 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1076775 () Bool)

(assert (=> start!136056 (=> (not res!1076775) (not e!878934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136056 (= res!1076775 (validMask!0 mask!898))))

(assert (=> start!136056 e!878934))

(assert (=> start!136056 true))

(declare-fun array_inv!39490 (array!105433) Bool)

(assert (=> start!136056 (array_inv!39490 _keys!605)))

(declare-fun b!1575805 () Bool)

(assert (=> b!1575805 (= e!878934 e!878932)))

(declare-fun res!1076776 () Bool)

(assert (=> b!1575805 (=> (not res!1076776) (not e!878932))))

(assert (=> b!1575805 (= res!1076776 (and (not (undefined!14538 lt!675315)) (is-Intermediate!13726 lt!675315) (not (= (select (arr!50845 _keys!605) (index!57303 lt!675315)) k!761)) (not (= (select (arr!50845 _keys!605) (index!57303 lt!675315)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50845 _keys!605) (index!57303 lt!675315)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57303 lt!675315) #b00000000000000000000000000000000) (bvslt (index!57303 lt!675315) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105433 (_ BitVec 32)) SeekEntryResult!13726)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575805 (= lt!675315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575804 () Bool)

(declare-fun res!1076777 () Bool)

(assert (=> b!1575804 (=> (not res!1076777) (not e!878934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575804 (= res!1076777 (validKeyInArray!0 k!761))))

(assert (= (and start!136056 res!1076775) b!1575803))

(assert (= (and b!1575803 res!1076774) b!1575804))

(assert (= (and b!1575804 res!1076777) b!1575805))

(assert (= (and b!1575805 res!1076776) b!1575806))

(declare-fun m!1448701 () Bool)

(assert (=> b!1575806 m!1448701))

(declare-fun m!1448703 () Bool)

(assert (=> start!136056 m!1448703))

(declare-fun m!1448705 () Bool)

(assert (=> start!136056 m!1448705))

(declare-fun m!1448707 () Bool)

(assert (=> b!1575805 m!1448707))

(declare-fun m!1448709 () Bool)

(assert (=> b!1575805 m!1448709))

(assert (=> b!1575805 m!1448709))

(declare-fun m!1448711 () Bool)

(assert (=> b!1575805 m!1448711))

(declare-fun m!1448713 () Bool)

(assert (=> b!1575804 m!1448713))

(push 1)

(assert (not b!1575804))

(assert (not b!1575805))

(assert (not start!136056))

(assert (not b!1575806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165475 () Bool)

(assert (=> d!165475 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575804 d!165475))

(declare-fun d!165477 () Bool)

(declare-fun e!878980 () Bool)

(assert (=> d!165477 e!878980))

(declare-fun c!145804 () Bool)

(declare-fun lt!675346 () SeekEntryResult!13726)

(assert (=> d!165477 (= c!145804 (and (is-Intermediate!13726 lt!675346) (undefined!14538 lt!675346)))))

(declare-fun e!878978 () SeekEntryResult!13726)

(assert (=> d!165477 (= lt!675346 e!878978)))

(declare-fun c!145806 () Bool)

(assert (=> d!165477 (= c!145806 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675345 () (_ BitVec 64))

(assert (=> d!165477 (= lt!675345 (select (arr!50845 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165477 (validMask!0 mask!898)))

(assert (=> d!165477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675346)))

(declare-fun b!1575876 () Bool)

(declare-fun e!878982 () Bool)

(assert (=> b!1575876 (= e!878980 e!878982)))

(declare-fun res!1076820 () Bool)

(assert (=> b!1575876 (= res!1076820 (and (is-Intermediate!13726 lt!675346) (not (undefined!14538 lt!675346)) (bvslt (x!142284 lt!675346) #b01111111111111111111111111111110) (bvsge (x!142284 lt!675346) #b00000000000000000000000000000000) (bvsge (x!142284 lt!675346) #b00000000000000000000000000000000)))))

(assert (=> b!1575876 (=> (not res!1076820) (not e!878982))))

(declare-fun b!1575877 () Bool)

(assert (=> b!1575877 (and (bvsge (index!57303 lt!675346) #b00000000000000000000000000000000) (bvslt (index!57303 lt!675346) (size!51396 _keys!605)))))

(declare-fun res!1076819 () Bool)

(assert (=> b!1575877 (= res!1076819 (= (select (arr!50845 _keys!605) (index!57303 lt!675346)) k!761))))

(declare-fun e!878981 () Bool)

(assert (=> b!1575877 (=> res!1076819 e!878981)))

(assert (=> b!1575877 (= e!878982 e!878981)))

(declare-fun b!1575878 () Bool)

(assert (=> b!1575878 (= e!878980 (bvsge (x!142284 lt!675346) #b01111111111111111111111111111110))))

(declare-fun b!1575879 () Bool)

(assert (=> b!1575879 (and (bvsge (index!57303 lt!675346) #b00000000000000000000000000000000) (bvslt (index!57303 lt!675346) (size!51396 _keys!605)))))

(declare-fun res!1076818 () Bool)

(assert (=> b!1575879 (= res!1076818 (= (select (arr!50845 _keys!605) (index!57303 lt!675346)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575879 (=> res!1076818 e!878981)))

(declare-fun b!1575880 () Bool)

(declare-fun e!878979 () SeekEntryResult!13726)

(assert (=> b!1575880 (= e!878978 e!878979)))

(declare-fun c!145805 () Bool)

(assert (=> b!1575880 (= c!145805 (or (= lt!675345 k!761) (= (bvadd lt!675345 lt!675345) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575881 () Bool)

(assert (=> b!1575881 (and (bvsge (index!57303 lt!675346) #b00000000000000000000000000000000) (bvslt (index!57303 lt!675346) (size!51396 _keys!605)))))

(assert (=> b!1575881 (= e!878981 (= (select (arr!50845 _keys!605) (index!57303 lt!675346)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575882 () Bool)

(assert (=> b!1575882 (= e!878978 (Intermediate!13726 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575883 () Bool)

(assert (=> b!1575883 (= e!878979 (Intermediate!13726 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1575884 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575884 (= e!878979 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and d!165477 c!145806) b!1575882))

(assert (= (and d!165477 (not c!145806)) b!1575880))

(assert (= (and b!1575880 c!145805) b!1575883))

(assert (= (and b!1575880 (not c!145805)) b!1575884))

(assert (= (and d!165477 c!145804) b!1575878))

(assert (= (and d!165477 (not c!145804)) b!1575876))

(assert (= (and b!1575876 res!1076820) b!1575877))

(assert (= (and b!1575877 (not res!1076819)) b!1575879))

(assert (= (and b!1575879 (not res!1076818)) b!1575881))

(assert (=> b!1575884 m!1448709))

(declare-fun m!1448751 () Bool)

(assert (=> b!1575884 m!1448751))

(assert (=> b!1575884 m!1448751))

(declare-fun m!1448753 () Bool)

(assert (=> b!1575884 m!1448753))

(declare-fun m!1448755 () Bool)

(assert (=> b!1575879 m!1448755))

(assert (=> b!1575877 m!1448755))

(assert (=> d!165477 m!1448709))

(declare-fun m!1448757 () Bool)

(assert (=> d!165477 m!1448757))

(assert (=> d!165477 m!1448703))

(assert (=> b!1575881 m!1448755))

(assert (=> b!1575805 d!165477))

(declare-fun d!165487 () Bool)

(declare-fun lt!675352 () (_ BitVec 32))

(declare-fun lt!675351 () (_ BitVec 32))

(assert (=> d!165487 (= lt!675352 (bvmul (bvxor lt!675351 (bvlshr lt!675351 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165487 (= lt!675351 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165487 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076821 (let ((h!38439 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142290 (bvmul (bvxor h!38439 (bvlshr h!38439 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142290 (bvlshr x!142290 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076821 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076821 #b00000000000000000000000000000000))))))

(assert (=> d!165487 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675352 (bvlshr lt!675352 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575805 d!165487))

(declare-fun d!165489 () Bool)

(assert (=> d!165489 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136056 d!165489))

(declare-fun d!165497 () Bool)

(assert (=> d!165497 (= (array_inv!39490 _keys!605) (bvsge (size!51396 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136056 d!165497))

(declare-fun b!1575942 () Bool)

(declare-fun e!879015 () SeekEntryResult!13726)

(declare-fun e!879014 () SeekEntryResult!13726)

(assert (=> b!1575942 (= e!879015 e!879014)))

(declare-fun c!145832 () Bool)

(declare-fun lt!675376 () (_ BitVec 64))

(assert (=> b!1575942 (= c!145832 (= lt!675376 k!761))))

(declare-fun b!1575943 () Bool)

(declare-fun c!145831 () Bool)

(assert (=> b!1575943 (= c!145831 (= lt!675376 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879013 () SeekEntryResult!13726)

(assert (=> b!1575943 (= e!879014 e!879013)))

(declare-fun lt!675375 () SeekEntryResult!13726)

(declare-fun d!165499 () Bool)

(assert (=> d!165499 (and (or (is-Undefined!13726 lt!675375) (not (is-Found!13726 lt!675375)) (and (bvsge (index!57302 lt!675375) #b00000000000000000000000000000000) (bvslt (index!57302 lt!675375) (size!51396 _keys!605)))) (or (is-Undefined!13726 lt!675375) (is-Found!13726 lt!675375) (not (is-MissingVacant!13726 lt!675375)) (not (= (index!57304 lt!675375) (index!57303 lt!675315))) (and (bvsge (index!57304 lt!675375) #b00000000000000000000000000000000) (bvslt (index!57304 lt!675375) (size!51396 _keys!605)))) (or (is-Undefined!13726 lt!675375) (ite (is-Found!13726 lt!675375) (= (select (arr!50845 _keys!605) (index!57302 lt!675375)) k!761) (and (is-MissingVacant!13726 lt!675375) (= (index!57304 lt!675375) (index!57303 lt!675315)) (= (select (arr!50845 _keys!605) (index!57304 lt!675375)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!165499 (= lt!675375 e!879015)))

(declare-fun c!145833 () Bool)

(assert (=> d!165499 (= c!145833 (bvsge (x!142284 lt!675315) #b01111111111111111111111111111110))))

(assert (=> d!165499 (= lt!675376 (select (arr!50845 _keys!605) (index!57303 lt!675315)))))

(assert (=> d!165499 (validMask!0 mask!898)))

(assert (=> d!165499 (= (seekKeyOrZeroReturnVacant!0 (x!142284 lt!675315) (index!57303 lt!675315) (index!57303 lt!675315) k!761 _keys!605 mask!898) lt!675375)))

(declare-fun b!1575944 () Bool)

(assert (=> b!1575944 (= e!879013 (MissingVacant!13726 (index!57303 lt!675315)))))

(declare-fun b!1575945 () Bool)

(assert (=> b!1575945 (= e!879013 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142284 lt!675315) #b00000000000000000000000000000001) (nextIndex!0 (index!57303 lt!675315) (x!142284 lt!675315) mask!898) (index!57303 lt!675315) k!761 _keys!605 mask!898))))

(declare-fun b!1575946 () Bool)

(assert (=> b!1575946 (= e!879015 Undefined!13726)))

(declare-fun b!1575947 () Bool)

(assert (=> b!1575947 (= e!879014 (Found!13726 (index!57303 lt!675315)))))

(assert (= (and d!165499 c!145833) b!1575946))

(assert (= (and d!165499 (not c!145833)) b!1575942))

(assert (= (and b!1575942 c!145832) b!1575947))

(assert (= (and b!1575942 (not c!145832)) b!1575943))

(assert (= (and b!1575943 c!145831) b!1575944))

(assert (= (and b!1575943 (not c!145831)) b!1575945))

(declare-fun m!1448775 () Bool)

(assert (=> d!165499 m!1448775))

(declare-fun m!1448777 () Bool)

(assert (=> d!165499 m!1448777))

(assert (=> d!165499 m!1448707))

(assert (=> d!165499 m!1448703))

(declare-fun m!1448779 () Bool)

(assert (=> b!1575945 m!1448779))

(assert (=> b!1575945 m!1448779))

(declare-fun m!1448781 () Bool)

(assert (=> b!1575945 m!1448781))

(assert (=> b!1575806 d!165499))

(push 1)

