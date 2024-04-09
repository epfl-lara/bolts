; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136100 () Bool)

(assert start!136100)

(declare-fun b!1575989 () Bool)

(declare-fun e!879042 () Bool)

(declare-datatypes ((SeekEntryResult!13730 0))(
  ( (MissingZero!13730 (index!57317 (_ BitVec 32))) (Found!13730 (index!57318 (_ BitVec 32))) (Intermediate!13730 (undefined!14542 Bool) (index!57319 (_ BitVec 32)) (x!142305 (_ BitVec 32))) (Undefined!13730) (MissingVacant!13730 (index!57320 (_ BitVec 32))) )
))
(declare-fun lt!675394 () SeekEntryResult!13730)

(declare-datatypes ((array!105444 0))(
  ( (array!105445 (arr!50849 (Array (_ BitVec 32) (_ BitVec 64))) (size!51400 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105444)

(get-info :version)

(assert (=> b!1575989 (= e!879042 (and (not ((_ is Undefined!13730) lt!675394)) (not ((_ is Found!13730) lt!675394)) (not ((_ is MissingZero!13730) lt!675394)) ((_ is MissingVacant!13730) lt!675394) (or (bvslt (index!57320 lt!675394) #b00000000000000000000000000000000) (bvsge (index!57320 lt!675394) (size!51400 _keys!605)))))))

(declare-fun lt!675393 () SeekEntryResult!13730)

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105444 (_ BitVec 32)) SeekEntryResult!13730)

(assert (=> b!1575989 (= lt!675394 (seekKeyOrZeroReturnVacant!0 (x!142305 lt!675393) (index!57319 lt!675393) (index!57319 lt!675393) k0!761 _keys!605 mask!898))))

(declare-fun b!1575986 () Bool)

(declare-fun res!1076853 () Bool)

(declare-fun e!879041 () Bool)

(assert (=> b!1575986 (=> (not res!1076853) (not e!879041))))

(assert (=> b!1575986 (= res!1076853 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51400 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575987 () Bool)

(declare-fun res!1076854 () Bool)

(assert (=> b!1575987 (=> (not res!1076854) (not e!879041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575987 (= res!1076854 (validKeyInArray!0 k0!761))))

(declare-fun res!1076852 () Bool)

(assert (=> start!136100 (=> (not res!1076852) (not e!879041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136100 (= res!1076852 (validMask!0 mask!898))))

(assert (=> start!136100 e!879041))

(assert (=> start!136100 true))

(declare-fun array_inv!39494 (array!105444) Bool)

(assert (=> start!136100 (array_inv!39494 _keys!605)))

(declare-fun b!1575988 () Bool)

(assert (=> b!1575988 (= e!879041 e!879042)))

(declare-fun res!1076855 () Bool)

(assert (=> b!1575988 (=> (not res!1076855) (not e!879042))))

(assert (=> b!1575988 (= res!1076855 (and (not (undefined!14542 lt!675393)) ((_ is Intermediate!13730) lt!675393) (not (= (select (arr!50849 _keys!605) (index!57319 lt!675393)) k0!761)) (not (= (select (arr!50849 _keys!605) (index!57319 lt!675393)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50849 _keys!605) (index!57319 lt!675393)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57319 lt!675393) #b00000000000000000000000000000000) (bvslt (index!57319 lt!675393) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105444 (_ BitVec 32)) SeekEntryResult!13730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575988 (= lt!675393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!136100 res!1076852) b!1575986))

(assert (= (and b!1575986 res!1076853) b!1575987))

(assert (= (and b!1575987 res!1076854) b!1575988))

(assert (= (and b!1575988 res!1076855) b!1575989))

(declare-fun m!1448805 () Bool)

(assert (=> b!1575989 m!1448805))

(declare-fun m!1448807 () Bool)

(assert (=> b!1575987 m!1448807))

(declare-fun m!1448809 () Bool)

(assert (=> start!136100 m!1448809))

(declare-fun m!1448811 () Bool)

(assert (=> start!136100 m!1448811))

(declare-fun m!1448813 () Bool)

(assert (=> b!1575988 m!1448813))

(declare-fun m!1448815 () Bool)

(assert (=> b!1575988 m!1448815))

(assert (=> b!1575988 m!1448815))

(declare-fun m!1448817 () Bool)

(assert (=> b!1575988 m!1448817))

(check-sat (not start!136100) (not b!1575987) (not b!1575988) (not b!1575989))
(check-sat)
(get-model)

(declare-fun d!165511 () Bool)

(assert (=> d!165511 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136100 d!165511))

(declare-fun d!165515 () Bool)

(assert (=> d!165515 (= (array_inv!39494 _keys!605) (bvsge (size!51400 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136100 d!165515))

(declare-fun d!165517 () Bool)

(assert (=> d!165517 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575987 d!165517))

(declare-fun b!1576050 () Bool)

(declare-fun e!879081 () SeekEntryResult!13730)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576050 (= e!879081 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576051 () Bool)

(declare-fun lt!675416 () SeekEntryResult!13730)

(assert (=> b!1576051 (and (bvsge (index!57319 lt!675416) #b00000000000000000000000000000000) (bvslt (index!57319 lt!675416) (size!51400 _keys!605)))))

(declare-fun res!1076874 () Bool)

(assert (=> b!1576051 (= res!1076874 (= (select (arr!50849 _keys!605) (index!57319 lt!675416)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879077 () Bool)

(assert (=> b!1576051 (=> res!1076874 e!879077)))

(declare-fun b!1576052 () Bool)

(declare-fun e!879080 () Bool)

(declare-fun e!879078 () Bool)

(assert (=> b!1576052 (= e!879080 e!879078)))

(declare-fun res!1076875 () Bool)

(assert (=> b!1576052 (= res!1076875 (and ((_ is Intermediate!13730) lt!675416) (not (undefined!14542 lt!675416)) (bvslt (x!142305 lt!675416) #b01111111111111111111111111111110) (bvsge (x!142305 lt!675416) #b00000000000000000000000000000000) (bvsge (x!142305 lt!675416) #b00000000000000000000000000000000)))))

(assert (=> b!1576052 (=> (not res!1076875) (not e!879078))))

(declare-fun b!1576053 () Bool)

(assert (=> b!1576053 (= e!879081 (Intermediate!13730 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576054 () Bool)

(assert (=> b!1576054 (= e!879080 (bvsge (x!142305 lt!675416) #b01111111111111111111111111111110))))

(declare-fun b!1576055 () Bool)

(assert (=> b!1576055 (and (bvsge (index!57319 lt!675416) #b00000000000000000000000000000000) (bvslt (index!57319 lt!675416) (size!51400 _keys!605)))))

(assert (=> b!1576055 (= e!879077 (= (select (arr!50849 _keys!605) (index!57319 lt!675416)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!165519 () Bool)

(assert (=> d!165519 e!879080))

(declare-fun c!145864 () Bool)

(assert (=> d!165519 (= c!145864 (and ((_ is Intermediate!13730) lt!675416) (undefined!14542 lt!675416)))))

(declare-fun e!879079 () SeekEntryResult!13730)

(assert (=> d!165519 (= lt!675416 e!879079)))

(declare-fun c!145866 () Bool)

(assert (=> d!165519 (= c!145866 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675415 () (_ BitVec 64))

(assert (=> d!165519 (= lt!675415 (select (arr!50849 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165519 (validMask!0 mask!898)))

(assert (=> d!165519 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675416)))

(declare-fun b!1576056 () Bool)

(assert (=> b!1576056 (and (bvsge (index!57319 lt!675416) #b00000000000000000000000000000000) (bvslt (index!57319 lt!675416) (size!51400 _keys!605)))))

(declare-fun res!1076876 () Bool)

(assert (=> b!1576056 (= res!1076876 (= (select (arr!50849 _keys!605) (index!57319 lt!675416)) k0!761))))

(assert (=> b!1576056 (=> res!1076876 e!879077)))

(assert (=> b!1576056 (= e!879078 e!879077)))

(declare-fun b!1576057 () Bool)

(assert (=> b!1576057 (= e!879079 e!879081)))

(declare-fun c!145865 () Bool)

(assert (=> b!1576057 (= c!145865 (or (= lt!675415 k0!761) (= (bvadd lt!675415 lt!675415) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576058 () Bool)

(assert (=> b!1576058 (= e!879079 (Intermediate!13730 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(assert (= (and d!165519 c!145866) b!1576058))

(assert (= (and d!165519 (not c!145866)) b!1576057))

(assert (= (and b!1576057 c!145865) b!1576053))

(assert (= (and b!1576057 (not c!145865)) b!1576050))

(assert (= (and d!165519 c!145864) b!1576054))

(assert (= (and d!165519 (not c!145864)) b!1576052))

(assert (= (and b!1576052 res!1076875) b!1576056))

(assert (= (and b!1576056 (not res!1076876)) b!1576051))

(assert (= (and b!1576051 (not res!1076874)) b!1576055))

(declare-fun m!1448841 () Bool)

(assert (=> b!1576056 m!1448841))

(assert (=> b!1576050 m!1448815))

(declare-fun m!1448843 () Bool)

(assert (=> b!1576050 m!1448843))

(assert (=> b!1576050 m!1448843))

(declare-fun m!1448845 () Bool)

(assert (=> b!1576050 m!1448845))

(assert (=> d!165519 m!1448815))

(declare-fun m!1448847 () Bool)

(assert (=> d!165519 m!1448847))

(assert (=> d!165519 m!1448809))

(assert (=> b!1576055 m!1448841))

(assert (=> b!1576051 m!1448841))

(assert (=> b!1575988 d!165519))

(declare-fun d!165525 () Bool)

(declare-fun lt!675424 () (_ BitVec 32))

(declare-fun lt!675423 () (_ BitVec 32))

(assert (=> d!165525 (= lt!675424 (bvmul (bvxor lt!675423 (bvlshr lt!675423 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165525 (= lt!675423 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165525 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1076877 (let ((h!38441 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142310 (bvmul (bvxor h!38441 (bvlshr h!38441 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142310 (bvlshr x!142310 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1076877 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1076877 #b00000000000000000000000000000000))))))

(assert (=> d!165525 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675424 (bvlshr lt!675424 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1575988 d!165525))

(declare-fun b!1576077 () Bool)

(declare-fun e!879093 () SeekEntryResult!13730)

(assert (=> b!1576077 (= e!879093 (MissingVacant!13730 (index!57319 lt!675393)))))

(declare-fun b!1576078 () Bool)

(declare-fun e!879091 () SeekEntryResult!13730)

(assert (=> b!1576078 (= e!879091 (Found!13730 (index!57319 lt!675393)))))

(declare-fun lt!675430 () SeekEntryResult!13730)

(declare-fun d!165529 () Bool)

(assert (=> d!165529 (and (or ((_ is Undefined!13730) lt!675430) (not ((_ is Found!13730) lt!675430)) (and (bvsge (index!57318 lt!675430) #b00000000000000000000000000000000) (bvslt (index!57318 lt!675430) (size!51400 _keys!605)))) (or ((_ is Undefined!13730) lt!675430) ((_ is Found!13730) lt!675430) (not ((_ is MissingVacant!13730) lt!675430)) (not (= (index!57320 lt!675430) (index!57319 lt!675393))) (and (bvsge (index!57320 lt!675430) #b00000000000000000000000000000000) (bvslt (index!57320 lt!675430) (size!51400 _keys!605)))) (or ((_ is Undefined!13730) lt!675430) (ite ((_ is Found!13730) lt!675430) (= (select (arr!50849 _keys!605) (index!57318 lt!675430)) k0!761) (and ((_ is MissingVacant!13730) lt!675430) (= (index!57320 lt!675430) (index!57319 lt!675393)) (= (select (arr!50849 _keys!605) (index!57320 lt!675430)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!879092 () SeekEntryResult!13730)

(assert (=> d!165529 (= lt!675430 e!879092)))

(declare-fun c!145877 () Bool)

(assert (=> d!165529 (= c!145877 (bvsge (x!142305 lt!675393) #b01111111111111111111111111111110))))

(declare-fun lt!675429 () (_ BitVec 64))

(assert (=> d!165529 (= lt!675429 (select (arr!50849 _keys!605) (index!57319 lt!675393)))))

(assert (=> d!165529 (validMask!0 mask!898)))

(assert (=> d!165529 (= (seekKeyOrZeroReturnVacant!0 (x!142305 lt!675393) (index!57319 lt!675393) (index!57319 lt!675393) k0!761 _keys!605 mask!898) lt!675430)))

(declare-fun b!1576079 () Bool)

(assert (=> b!1576079 (= e!879092 e!879091)))

(declare-fun c!145878 () Bool)

(assert (=> b!1576079 (= c!145878 (= lt!675429 k0!761))))

(declare-fun b!1576080 () Bool)

(assert (=> b!1576080 (= e!879093 (seekKeyOrZeroReturnVacant!0 (bvadd (x!142305 lt!675393) #b00000000000000000000000000000001) (nextIndex!0 (index!57319 lt!675393) (x!142305 lt!675393) mask!898) (index!57319 lt!675393) k0!761 _keys!605 mask!898))))

(declare-fun b!1576081 () Bool)

(declare-fun c!145876 () Bool)

(assert (=> b!1576081 (= c!145876 (= lt!675429 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576081 (= e!879091 e!879093)))

(declare-fun b!1576082 () Bool)

(assert (=> b!1576082 (= e!879092 Undefined!13730)))

(assert (= (and d!165529 c!145877) b!1576082))

(assert (= (and d!165529 (not c!145877)) b!1576079))

(assert (= (and b!1576079 c!145878) b!1576078))

(assert (= (and b!1576079 (not c!145878)) b!1576081))

(assert (= (and b!1576081 c!145876) b!1576077))

(assert (= (and b!1576081 (not c!145876)) b!1576080))

(declare-fun m!1448857 () Bool)

(assert (=> d!165529 m!1448857))

(declare-fun m!1448859 () Bool)

(assert (=> d!165529 m!1448859))

(assert (=> d!165529 m!1448813))

(assert (=> d!165529 m!1448809))

(declare-fun m!1448861 () Bool)

(assert (=> b!1576080 m!1448861))

(assert (=> b!1576080 m!1448861))

(declare-fun m!1448863 () Bool)

(assert (=> b!1576080 m!1448863))

(assert (=> b!1575989 d!165529))

(check-sat (not b!1576080) (not d!165529) (not b!1576050) (not d!165519))
(check-sat)
