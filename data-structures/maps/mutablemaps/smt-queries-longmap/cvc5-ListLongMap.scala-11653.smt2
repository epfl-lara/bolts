; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136254 () Bool)

(assert start!136254)

(declare-fun res!1077096 () Bool)

(declare-fun e!879366 () Bool)

(assert (=> start!136254 (=> (not res!1077096) (not e!879366))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136254 (= res!1077096 (validMask!0 mask!898))))

(assert (=> start!136254 e!879366))

(assert (=> start!136254 true))

(declare-datatypes ((array!105478 0))(
  ( (array!105479 (arr!50860 (Array (_ BitVec 32) (_ BitVec 64))) (size!51411 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105478)

(declare-fun array_inv!39505 (array!105478) Bool)

(assert (=> start!136254 (array_inv!39505 _keys!605)))

(declare-fun b!1576544 () Bool)

(declare-fun e!879365 () Bool)

(declare-datatypes ((SeekEntryResult!13741 0))(
  ( (MissingZero!13741 (index!57361 (_ BitVec 32))) (Found!13741 (index!57362 (_ BitVec 32))) (Intermediate!13741 (undefined!14553 Bool) (index!57363 (_ BitVec 32)) (x!142378 (_ BitVec 32))) (Undefined!13741) (MissingVacant!13741 (index!57364 (_ BitVec 32))) )
))
(declare-fun lt!675652 () SeekEntryResult!13741)

(assert (=> b!1576544 (= e!879365 (and (not (is-Undefined!13741 lt!675652)) (not (is-Found!13741 lt!675652)) (is-MissingZero!13741 lt!675652) (or (bvslt (index!57361 lt!675652) #b00000000000000000000000000000000) (bvsge (index!57361 lt!675652) (size!51411 _keys!605)))))))

(declare-fun err!186 () SeekEntryResult!13741)

(assert (=> b!1576544 (= lt!675652 err!186)))

(assert (=> b!1576544 true))

(declare-fun b!1576543 () Bool)

(assert (=> b!1576543 (= e!879366 e!879365)))

(declare-fun res!1077098 () Bool)

(assert (=> b!1576543 (=> (not res!1077098) (not e!879365))))

(declare-fun lt!675651 () Bool)

(declare-fun lt!675650 () SeekEntryResult!13741)

(assert (=> b!1576543 (= res!1077098 (and (or lt!675651 (not (undefined!14553 lt!675650))) (or lt!675651 (undefined!14553 lt!675650))))))

(assert (=> b!1576543 (= lt!675651 (not (is-Intermediate!13741 lt!675650)))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105478 (_ BitVec 32)) SeekEntryResult!13741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576543 (= lt!675650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576541 () Bool)

(declare-fun res!1077097 () Bool)

(assert (=> b!1576541 (=> (not res!1077097) (not e!879366))))

(assert (=> b!1576541 (= res!1077097 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51411 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576542 () Bool)

(declare-fun res!1077095 () Bool)

(assert (=> b!1576542 (=> (not res!1077095) (not e!879366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576542 (= res!1077095 (validKeyInArray!0 k!761))))

(assert (= (and start!136254 res!1077096) b!1576541))

(assert (= (and b!1576541 res!1077097) b!1576542))

(assert (= (and b!1576542 res!1077095) b!1576543))

(assert (= (and b!1576543 res!1077098) b!1576544))

(declare-fun m!1449089 () Bool)

(assert (=> start!136254 m!1449089))

(declare-fun m!1449091 () Bool)

(assert (=> start!136254 m!1449091))

(declare-fun m!1449093 () Bool)

(assert (=> b!1576543 m!1449093))

(assert (=> b!1576543 m!1449093))

(declare-fun m!1449095 () Bool)

(assert (=> b!1576543 m!1449095))

(declare-fun m!1449097 () Bool)

(assert (=> b!1576542 m!1449097))

(push 1)

(assert (not start!136254))

(assert (not b!1576542))

(assert (not b!1576543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165653 () Bool)

(assert (=> d!165653 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136254 d!165653))

(declare-fun d!165663 () Bool)

(assert (=> d!165663 (= (array_inv!39505 _keys!605) (bvsge (size!51411 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136254 d!165663))

(declare-fun d!165665 () Bool)

(assert (=> d!165665 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576542 d!165665))

(declare-fun b!1576630 () Bool)

(declare-fun e!879424 () SeekEntryResult!13741)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576630 (= e!879424 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576631 () Bool)

(assert (=> b!1576631 (= e!879424 (Intermediate!13741 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576632 () Bool)

(declare-fun e!879421 () Bool)

(declare-fun lt!675692 () SeekEntryResult!13741)

(assert (=> b!1576632 (= e!879421 (bvsge (x!142378 lt!675692) #b01111111111111111111111111111110))))

(declare-fun b!1576633 () Bool)

(declare-fun e!879420 () Bool)

(assert (=> b!1576633 (= e!879421 e!879420)))

(declare-fun res!1077147 () Bool)

(assert (=> b!1576633 (= res!1077147 (and (is-Intermediate!13741 lt!675692) (not (undefined!14553 lt!675692)) (bvslt (x!142378 lt!675692) #b01111111111111111111111111111110) (bvsge (x!142378 lt!675692) #b00000000000000000000000000000000) (bvsge (x!142378 lt!675692) #b00000000000000000000000000000000)))))

(assert (=> b!1576633 (=> (not res!1077147) (not e!879420))))

(declare-fun d!165667 () Bool)

(assert (=> d!165667 e!879421))

(declare-fun c!146028 () Bool)

(assert (=> d!165667 (= c!146028 (and (is-Intermediate!13741 lt!675692) (undefined!14553 lt!675692)))))

(declare-fun e!879423 () SeekEntryResult!13741)

(assert (=> d!165667 (= lt!675692 e!879423)))

(declare-fun c!146027 () Bool)

(assert (=> d!165667 (= c!146027 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675691 () (_ BitVec 64))

(assert (=> d!165667 (= lt!675691 (select (arr!50860 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165667 (validMask!0 mask!898)))

(assert (=> d!165667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675692)))

(declare-fun b!1576634 () Bool)

(assert (=> b!1576634 (and (bvsge (index!57363 lt!675692) #b00000000000000000000000000000000) (bvslt (index!57363 lt!675692) (size!51411 _keys!605)))))

(declare-fun e!879422 () Bool)

(assert (=> b!1576634 (= e!879422 (= (select (arr!50860 _keys!605) (index!57363 lt!675692)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576635 () Bool)

(assert (=> b!1576635 (and (bvsge (index!57363 lt!675692) #b00000000000000000000000000000000) (bvslt (index!57363 lt!675692) (size!51411 _keys!605)))))

(declare-fun res!1077146 () Bool)

(assert (=> b!1576635 (= res!1077146 (= (select (arr!50860 _keys!605) (index!57363 lt!675692)) k!761))))

(assert (=> b!1576635 (=> res!1077146 e!879422)))

(assert (=> b!1576635 (= e!879420 e!879422)))

(declare-fun b!1576636 () Bool)

(assert (=> b!1576636 (and (bvsge (index!57363 lt!675692) #b00000000000000000000000000000000) (bvslt (index!57363 lt!675692) (size!51411 _keys!605)))))

(declare-fun res!1077145 () Bool)

(assert (=> b!1576636 (= res!1077145 (= (select (arr!50860 _keys!605) (index!57363 lt!675692)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576636 (=> res!1077145 e!879422)))

(declare-fun b!1576637 () Bool)

(assert (=> b!1576637 (= e!879423 e!879424)))

(declare-fun c!146026 () Bool)

(assert (=> b!1576637 (= c!146026 (or (= lt!675691 k!761) (= (bvadd lt!675691 lt!675691) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576638 () Bool)

(assert (=> b!1576638 (= e!879423 (Intermediate!13741 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(assert (= (and d!165667 c!146027) b!1576638))

(assert (= (and d!165667 (not c!146027)) b!1576637))

(assert (= (and b!1576637 c!146026) b!1576631))

(assert (= (and b!1576637 (not c!146026)) b!1576630))

(assert (= (and d!165667 c!146028) b!1576632))

(assert (= (and d!165667 (not c!146028)) b!1576633))

(assert (= (and b!1576633 res!1077147) b!1576635))

(assert (= (and b!1576635 (not res!1077146)) b!1576636))

(assert (= (and b!1576636 (not res!1077145)) b!1576634))

(assert (=> b!1576630 m!1449093))

(declare-fun m!1449127 () Bool)

(assert (=> b!1576630 m!1449127))

(assert (=> b!1576630 m!1449127))

(declare-fun m!1449129 () Bool)

(assert (=> b!1576630 m!1449129))

(declare-fun m!1449131 () Bool)

(assert (=> b!1576635 m!1449131))

(assert (=> b!1576636 m!1449131))

(assert (=> d!165667 m!1449093))

(declare-fun m!1449133 () Bool)

(assert (=> d!165667 m!1449133))

(assert (=> d!165667 m!1449089))

(assert (=> b!1576634 m!1449131))

(assert (=> b!1576543 d!165667))

(declare-fun d!165677 () Bool)

(declare-fun lt!675698 () (_ BitVec 32))

(declare-fun lt!675697 () (_ BitVec 32))

(assert (=> d!165677 (= lt!675698 (bvmul (bvxor lt!675697 (bvlshr lt!675697 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165677 (= lt!675697 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165677 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077148 (let ((h!38454 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142385 (bvmul (bvxor h!38454 (bvlshr h!38454 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142385 (bvlshr x!142385 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077148 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077148 #b00000000000000000000000000000000))))))

(assert (=> d!165677 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675698 (bvlshr lt!675698 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576543 d!165677))

(push 1)

