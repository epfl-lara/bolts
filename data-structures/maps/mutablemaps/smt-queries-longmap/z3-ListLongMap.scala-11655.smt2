; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136328 () Bool)

(assert start!136328)

(declare-fun b!1576788 () Bool)

(declare-fun res!1077239 () Bool)

(declare-fun e!879517 () Bool)

(assert (=> b!1576788 (=> (not res!1077239) (not e!879517))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576788 (= res!1077239 (validKeyInArray!0 k0!761))))

(declare-fun b!1576787 () Bool)

(declare-fun res!1077240 () Bool)

(assert (=> b!1576787 (=> (not res!1077240) (not e!879517))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-datatypes ((array!105498 0))(
  ( (array!105499 (arr!50867 (Array (_ BitVec 32) (_ BitVec 64))) (size!51418 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105498)

(assert (=> b!1576787 (= res!1077240 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51418 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1077242 () Bool)

(assert (=> start!136328 (=> (not res!1077242) (not e!879517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136328 (= res!1077242 (validMask!0 mask!898))))

(assert (=> start!136328 e!879517))

(assert (=> start!136328 true))

(declare-fun array_inv!39512 (array!105498) Bool)

(assert (=> start!136328 (array_inv!39512 _keys!605)))

(declare-fun e!879518 () Bool)

(declare-datatypes ((SeekEntryResult!13748 0))(
  ( (MissingZero!13748 (index!57389 (_ BitVec 32))) (Found!13748 (index!57390 (_ BitVec 32))) (Intermediate!13748 (undefined!14560 Bool) (index!57391 (_ BitVec 32)) (x!142413 (_ BitVec 32))) (Undefined!13748) (MissingVacant!13748 (index!57392 (_ BitVec 32))) )
))
(declare-fun lt!675786 () SeekEntryResult!13748)

(declare-fun b!1576790 () Bool)

(get-info :version)

(assert (=> b!1576790 (= e!879518 (and (not ((_ is Undefined!13748) lt!675786)) (ite ((_ is Found!13748) lt!675786) (not (= (select (arr!50867 _keys!605) (index!57390 lt!675786)) k0!761)) (ite ((_ is MissingZero!13748) lt!675786) (not (= (select (arr!50867 _keys!605) (index!57389 lt!675786)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (not ((_ is MissingVacant!13748) lt!675786)) (not (= (select (arr!50867 _keys!605) (index!57392 lt!675786)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun err!214 () SeekEntryResult!13748)

(assert (=> b!1576790 (= lt!675786 err!214)))

(assert (=> b!1576790 true))

(declare-fun b!1576789 () Bool)

(assert (=> b!1576789 (= e!879517 e!879518)))

(declare-fun res!1077241 () Bool)

(assert (=> b!1576789 (=> (not res!1077241) (not e!879518))))

(declare-fun lt!675787 () Bool)

(declare-fun lt!675785 () SeekEntryResult!13748)

(assert (=> b!1576789 (= res!1077241 (and (or lt!675787 (not (undefined!14560 lt!675785))) (or lt!675787 (undefined!14560 lt!675785))))))

(assert (=> b!1576789 (= lt!675787 (not ((_ is Intermediate!13748) lt!675785)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105498 (_ BitVec 32)) SeekEntryResult!13748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576789 (= lt!675785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!136328 res!1077242) b!1576787))

(assert (= (and b!1576787 res!1077240) b!1576788))

(assert (= (and b!1576788 res!1077239) b!1576789))

(assert (= (and b!1576789 res!1077241) b!1576790))

(declare-fun m!1449213 () Bool)

(assert (=> b!1576788 m!1449213))

(declare-fun m!1449215 () Bool)

(assert (=> start!136328 m!1449215))

(declare-fun m!1449217 () Bool)

(assert (=> start!136328 m!1449217))

(declare-fun m!1449219 () Bool)

(assert (=> b!1576790 m!1449219))

(declare-fun m!1449221 () Bool)

(assert (=> b!1576790 m!1449221))

(declare-fun m!1449223 () Bool)

(assert (=> b!1576790 m!1449223))

(declare-fun m!1449225 () Bool)

(assert (=> b!1576789 m!1449225))

(assert (=> b!1576789 m!1449225))

(declare-fun m!1449227 () Bool)

(assert (=> b!1576789 m!1449227))

(check-sat (not start!136328) (not b!1576788) (not b!1576789))
(check-sat)
(get-model)

(declare-fun d!165715 () Bool)

(assert (=> d!165715 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136328 d!165715))

(declare-fun d!165721 () Bool)

(assert (=> d!165721 (= (array_inv!39512 _keys!605) (bvsge (size!51418 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136328 d!165721))

(declare-fun d!165723 () Bool)

(assert (=> d!165723 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576788 d!165723))

(declare-fun d!165725 () Bool)

(declare-fun e!879569 () Bool)

(assert (=> d!165725 e!879569))

(declare-fun c!146084 () Bool)

(declare-fun lt!675826 () SeekEntryResult!13748)

(assert (=> d!165725 (= c!146084 (and ((_ is Intermediate!13748) lt!675826) (undefined!14560 lt!675826)))))

(declare-fun e!879573 () SeekEntryResult!13748)

(assert (=> d!165725 (= lt!675826 e!879573)))

(declare-fun c!146085 () Bool)

(assert (=> d!165725 (= c!146085 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675825 () (_ BitVec 64))

(assert (=> d!165725 (= lt!675825 (select (arr!50867 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165725 (validMask!0 mask!898)))

(assert (=> d!165725 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675826)))

(declare-fun b!1576875 () Bool)

(declare-fun e!879571 () Bool)

(assert (=> b!1576875 (= e!879569 e!879571)))

(declare-fun res!1077283 () Bool)

(assert (=> b!1576875 (= res!1077283 (and ((_ is Intermediate!13748) lt!675826) (not (undefined!14560 lt!675826)) (bvslt (x!142413 lt!675826) #b01111111111111111111111111111110) (bvsge (x!142413 lt!675826) #b00000000000000000000000000000000) (bvsge (x!142413 lt!675826) #b00000000000000000000000000000000)))))

(assert (=> b!1576875 (=> (not res!1077283) (not e!879571))))

(declare-fun b!1576876 () Bool)

(declare-fun e!879572 () SeekEntryResult!13748)

(assert (=> b!1576876 (= e!879572 (Intermediate!13748 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576877 () Bool)

(assert (=> b!1576877 (and (bvsge (index!57391 lt!675826) #b00000000000000000000000000000000) (bvslt (index!57391 lt!675826) (size!51418 _keys!605)))))

(declare-fun res!1077282 () Bool)

(assert (=> b!1576877 (= res!1077282 (= (select (arr!50867 _keys!605) (index!57391 lt!675826)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879570 () Bool)

(assert (=> b!1576877 (=> res!1077282 e!879570)))

(declare-fun b!1576878 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576878 (= e!879572 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576879 () Bool)

(assert (=> b!1576879 (and (bvsge (index!57391 lt!675826) #b00000000000000000000000000000000) (bvslt (index!57391 lt!675826) (size!51418 _keys!605)))))

(declare-fun res!1077281 () Bool)

(assert (=> b!1576879 (= res!1077281 (= (select (arr!50867 _keys!605) (index!57391 lt!675826)) k0!761))))

(assert (=> b!1576879 (=> res!1077281 e!879570)))

(assert (=> b!1576879 (= e!879571 e!879570)))

(declare-fun b!1576880 () Bool)

(assert (=> b!1576880 (= e!879573 e!879572)))

(declare-fun c!146083 () Bool)

(assert (=> b!1576880 (= c!146083 (or (= lt!675825 k0!761) (= (bvadd lt!675825 lt!675825) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576881 () Bool)

(assert (=> b!1576881 (and (bvsge (index!57391 lt!675826) #b00000000000000000000000000000000) (bvslt (index!57391 lt!675826) (size!51418 _keys!605)))))

(assert (=> b!1576881 (= e!879570 (= (select (arr!50867 _keys!605) (index!57391 lt!675826)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576882 () Bool)

(assert (=> b!1576882 (= e!879573 (Intermediate!13748 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576883 () Bool)

(assert (=> b!1576883 (= e!879569 (bvsge (x!142413 lt!675826) #b01111111111111111111111111111110))))

(assert (= (and d!165725 c!146085) b!1576882))

(assert (= (and d!165725 (not c!146085)) b!1576880))

(assert (= (and b!1576880 c!146083) b!1576876))

(assert (= (and b!1576880 (not c!146083)) b!1576878))

(assert (= (and d!165725 c!146084) b!1576883))

(assert (= (and d!165725 (not c!146084)) b!1576875))

(assert (= (and b!1576875 res!1077283) b!1576879))

(assert (= (and b!1576879 (not res!1077281)) b!1576877))

(assert (= (and b!1576877 (not res!1077282)) b!1576881))

(declare-fun m!1449261 () Bool)

(assert (=> b!1576881 m!1449261))

(assert (=> b!1576878 m!1449225))

(declare-fun m!1449263 () Bool)

(assert (=> b!1576878 m!1449263))

(assert (=> b!1576878 m!1449263))

(declare-fun m!1449265 () Bool)

(assert (=> b!1576878 m!1449265))

(assert (=> d!165725 m!1449225))

(declare-fun m!1449267 () Bool)

(assert (=> d!165725 m!1449267))

(assert (=> d!165725 m!1449215))

(assert (=> b!1576879 m!1449261))

(assert (=> b!1576877 m!1449261))

(assert (=> b!1576789 d!165725))

(declare-fun d!165739 () Bool)

(declare-fun lt!675832 () (_ BitVec 32))

(declare-fun lt!675831 () (_ BitVec 32))

(assert (=> d!165739 (= lt!675832 (bvmul (bvxor lt!675831 (bvlshr lt!675831 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165739 (= lt!675831 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165739 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077284 (let ((h!38461 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142420 (bvmul (bvxor h!38461 (bvlshr h!38461 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142420 (bvlshr x!142420 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077284 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077284 #b00000000000000000000000000000000))))))

(assert (=> d!165739 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675832 (bvlshr lt!675832 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576789 d!165739))

(check-sat (not d!165725) (not b!1576878))
