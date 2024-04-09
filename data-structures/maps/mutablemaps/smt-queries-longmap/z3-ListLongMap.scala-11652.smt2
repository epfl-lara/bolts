; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136220 () Bool)

(assert start!136220)

(declare-fun res!1077042 () Bool)

(declare-fun e!879303 () Bool)

(assert (=> start!136220 (=> (not res!1077042) (not e!879303))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136220 (= res!1077042 (validMask!0 mask!898))))

(assert (=> start!136220 e!879303))

(assert (=> start!136220 true))

(declare-datatypes ((array!105471 0))(
  ( (array!105472 (arr!50858 (Array (_ BitVec 32) (_ BitVec 64))) (size!51409 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105471)

(declare-fun array_inv!39503 (array!105471) Bool)

(assert (=> start!136220 (array_inv!39503 _keys!605)))

(declare-fun b!1576437 () Bool)

(declare-fun res!1077043 () Bool)

(assert (=> b!1576437 (=> (not res!1077043) (not e!879303))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576437 (= res!1077043 (validKeyInArray!0 k0!761))))

(declare-fun b!1576438 () Bool)

(declare-fun e!879302 () Bool)

(assert (=> b!1576438 (= e!879303 e!879302)))

(declare-fun res!1077044 () Bool)

(assert (=> b!1576438 (=> (not res!1077044) (not e!879302))))

(declare-fun lt!675597 () Bool)

(declare-datatypes ((SeekEntryResult!13739 0))(
  ( (MissingZero!13739 (index!57353 (_ BitVec 32))) (Found!13739 (index!57354 (_ BitVec 32))) (Intermediate!13739 (undefined!14551 Bool) (index!57355 (_ BitVec 32)) (x!142362 (_ BitVec 32))) (Undefined!13739) (MissingVacant!13739 (index!57356 (_ BitVec 32))) )
))
(declare-fun lt!675598 () SeekEntryResult!13739)

(assert (=> b!1576438 (= res!1077044 (and (or lt!675597 (not (undefined!14551 lt!675598))) (or lt!675597 (undefined!14551 lt!675598))))))

(get-info :version)

(assert (=> b!1576438 (= lt!675597 (not ((_ is Intermediate!13739) lt!675598)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105471 (_ BitVec 32)) SeekEntryResult!13739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576438 (= lt!675598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576436 () Bool)

(declare-fun res!1077041 () Bool)

(assert (=> b!1576436 (=> (not res!1077041) (not e!879303))))

(assert (=> b!1576436 (= res!1077041 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51409 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576439 () Bool)

(declare-fun lt!675596 () SeekEntryResult!13739)

(assert (=> b!1576439 (= e!879302 (and (not ((_ is Undefined!13739) lt!675596)) ((_ is Found!13739) lt!675596) (or (bvslt (index!57354 lt!675596) #b00000000000000000000000000000000) (bvsge (index!57354 lt!675596) (size!51409 _keys!605)))))))

(declare-fun err!178 () SeekEntryResult!13739)

(assert (=> b!1576439 (= lt!675596 err!178)))

(assert (=> b!1576439 true))

(assert (= (and start!136220 res!1077042) b!1576436))

(assert (= (and b!1576436 res!1077041) b!1576437))

(assert (= (and b!1576437 res!1077043) b!1576438))

(assert (= (and b!1576438 res!1077044) b!1576439))

(declare-fun m!1449045 () Bool)

(assert (=> start!136220 m!1449045))

(declare-fun m!1449047 () Bool)

(assert (=> start!136220 m!1449047))

(declare-fun m!1449049 () Bool)

(assert (=> b!1576437 m!1449049))

(declare-fun m!1449051 () Bool)

(assert (=> b!1576438 m!1449051))

(assert (=> b!1576438 m!1449051))

(declare-fun m!1449053 () Bool)

(assert (=> b!1576438 m!1449053))

(check-sat (not start!136220) (not b!1576437) (not b!1576438))
(check-sat)
(get-model)

(declare-fun d!165621 () Bool)

(assert (=> d!165621 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136220 d!165621))

(declare-fun d!165631 () Bool)

(assert (=> d!165631 (= (array_inv!39503 _keys!605) (bvsge (size!51409 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136220 d!165631))

(declare-fun d!165633 () Bool)

(assert (=> d!165633 (= (validKeyInArray!0 k0!761) (and (not (= k0!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576437 d!165633))

(declare-fun b!1576515 () Bool)

(declare-fun e!879350 () SeekEntryResult!13739)

(assert (=> b!1576515 (= e!879350 (Intermediate!13739 true (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576516 () Bool)

(declare-fun e!879352 () SeekEntryResult!13739)

(assert (=> b!1576516 (= e!879352 (Intermediate!13739 false (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576517 () Bool)

(declare-fun e!879349 () Bool)

(declare-fun e!879348 () Bool)

(assert (=> b!1576517 (= e!879349 e!879348)))

(declare-fun res!1077079 () Bool)

(declare-fun lt!675623 () SeekEntryResult!13739)

(assert (=> b!1576517 (= res!1077079 (and ((_ is Intermediate!13739) lt!675623) (not (undefined!14551 lt!675623)) (bvslt (x!142362 lt!675623) #b01111111111111111111111111111110) (bvsge (x!142362 lt!675623) #b00000000000000000000000000000000) (bvsge (x!142362 lt!675623) #b00000000000000000000000000000000)))))

(assert (=> b!1576517 (=> (not res!1077079) (not e!879348))))

(declare-fun b!1576518 () Bool)

(assert (=> b!1576518 (and (bvsge (index!57355 lt!675623) #b00000000000000000000000000000000) (bvslt (index!57355 lt!675623) (size!51409 _keys!605)))))

(declare-fun res!1077080 () Bool)

(assert (=> b!1576518 (= res!1077080 (= (select (arr!50858 _keys!605) (index!57355 lt!675623)) k0!761))))

(declare-fun e!879351 () Bool)

(assert (=> b!1576518 (=> res!1077080 e!879351)))

(assert (=> b!1576518 (= e!879348 e!879351)))

(declare-fun b!1576519 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576519 (= e!879352 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!761 mask!898) #b00000000000000000000000000000000 mask!898) k0!761 _keys!605 mask!898))))

(declare-fun b!1576520 () Bool)

(assert (=> b!1576520 (and (bvsge (index!57355 lt!675623) #b00000000000000000000000000000000) (bvslt (index!57355 lt!675623) (size!51409 _keys!605)))))

(assert (=> b!1576520 (= e!879351 (= (select (arr!50858 _keys!605) (index!57355 lt!675623)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576521 () Bool)

(assert (=> b!1576521 (and (bvsge (index!57355 lt!675623) #b00000000000000000000000000000000) (bvslt (index!57355 lt!675623) (size!51409 _keys!605)))))

(declare-fun res!1077078 () Bool)

(assert (=> b!1576521 (= res!1077078 (= (select (arr!50858 _keys!605) (index!57355 lt!675623)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576521 (=> res!1077078 e!879351)))

(declare-fun b!1576522 () Bool)

(assert (=> b!1576522 (= e!879349 (bvsge (x!142362 lt!675623) #b01111111111111111111111111111110))))

(declare-fun d!165635 () Bool)

(assert (=> d!165635 e!879349))

(declare-fun c!146000 () Bool)

(assert (=> d!165635 (= c!146000 (and ((_ is Intermediate!13739) lt!675623) (undefined!14551 lt!675623)))))

(assert (=> d!165635 (= lt!675623 e!879350)))

(declare-fun c!145999 () Bool)

(assert (=> d!165635 (= c!145999 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675622 () (_ BitVec 64))

(assert (=> d!165635 (= lt!675622 (select (arr!50858 _keys!605) (toIndex!0 k0!761 mask!898)))))

(assert (=> d!165635 (validMask!0 mask!898)))

(assert (=> d!165635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898) lt!675623)))

(declare-fun b!1576523 () Bool)

(assert (=> b!1576523 (= e!879350 e!879352)))

(declare-fun c!146001 () Bool)

(assert (=> b!1576523 (= c!146001 (or (= lt!675622 k0!761) (= (bvadd lt!675622 lt!675622) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!165635 c!145999) b!1576515))

(assert (= (and d!165635 (not c!145999)) b!1576523))

(assert (= (and b!1576523 c!146001) b!1576516))

(assert (= (and b!1576523 (not c!146001)) b!1576519))

(assert (= (and d!165635 c!146000) b!1576522))

(assert (= (and d!165635 (not c!146000)) b!1576517))

(assert (= (and b!1576517 res!1077079) b!1576518))

(assert (= (and b!1576518 (not res!1077080)) b!1576521))

(assert (= (and b!1576521 (not res!1077078)) b!1576520))

(declare-fun m!1449073 () Bool)

(assert (=> b!1576521 m!1449073))

(assert (=> b!1576519 m!1449051))

(declare-fun m!1449075 () Bool)

(assert (=> b!1576519 m!1449075))

(assert (=> b!1576519 m!1449075))

(declare-fun m!1449077 () Bool)

(assert (=> b!1576519 m!1449077))

(assert (=> b!1576520 m!1449073))

(assert (=> d!165635 m!1449051))

(declare-fun m!1449079 () Bool)

(assert (=> d!165635 m!1449079))

(assert (=> d!165635 m!1449045))

(assert (=> b!1576518 m!1449073))

(assert (=> b!1576438 d!165635))

(declare-fun d!165645 () Bool)

(declare-fun lt!675637 () (_ BitVec 32))

(declare-fun lt!675636 () (_ BitVec 32))

(assert (=> d!165645 (= lt!675637 (bvmul (bvxor lt!675636 (bvlshr lt!675636 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165645 (= lt!675636 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165645 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077082 (let ((h!38451 ((_ extract 31 0) (bvand (bvxor k0!761 (bvlshr k0!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142368 (bvmul (bvxor h!38451 (bvlshr h!38451 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142368 (bvlshr x!142368 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077082 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077082 #b00000000000000000000000000000000))))))

(assert (=> d!165645 (= (toIndex!0 k0!761 mask!898) (bvand (bvxor lt!675637 (bvlshr lt!675637 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576438 d!165645))

(check-sat (not d!165635) (not b!1576519))
