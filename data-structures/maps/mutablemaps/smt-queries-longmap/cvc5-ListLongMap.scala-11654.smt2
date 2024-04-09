; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136290 () Bool)

(assert start!136290)

(declare-fun b!1576659 () Bool)

(declare-fun res!1077162 () Bool)

(declare-fun e!879437 () Bool)

(assert (=> b!1576659 (=> (not res!1077162) (not e!879437))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576659 (= res!1077162 (validKeyInArray!0 k!761))))

(declare-fun b!1576661 () Bool)

(declare-fun e!879436 () Bool)

(declare-datatypes ((SeekEntryResult!13744 0))(
  ( (MissingZero!13744 (index!57373 (_ BitVec 32))) (Found!13744 (index!57374 (_ BitVec 32))) (Intermediate!13744 (undefined!14556 Bool) (index!57375 (_ BitVec 32)) (x!142395 (_ BitVec 32))) (Undefined!13744) (MissingVacant!13744 (index!57376 (_ BitVec 32))) )
))
(declare-fun lt!675715 () SeekEntryResult!13744)

(declare-datatypes ((array!105487 0))(
  ( (array!105488 (arr!50863 (Array (_ BitVec 32) (_ BitVec 64))) (size!51414 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105487)

(assert (=> b!1576661 (= e!879436 (and (not (is-Undefined!13744 lt!675715)) (not (is-Found!13744 lt!675715)) (not (is-MissingZero!13744 lt!675715)) (is-MissingVacant!13744 lt!675715) (or (bvslt (index!57376 lt!675715) #b00000000000000000000000000000000) (bvsge (index!57376 lt!675715) (size!51414 _keys!605)))))))

(declare-fun err!198 () SeekEntryResult!13744)

(assert (=> b!1576661 (= lt!675715 err!198)))

(assert (=> b!1576661 true))

(declare-fun res!1077164 () Bool)

(assert (=> start!136290 (=> (not res!1077164) (not e!879437))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136290 (= res!1077164 (validMask!0 mask!898))))

(assert (=> start!136290 e!879437))

(assert (=> start!136290 true))

(declare-fun array_inv!39508 (array!105487) Bool)

(assert (=> start!136290 (array_inv!39508 _keys!605)))

(declare-fun b!1576658 () Bool)

(declare-fun res!1077161 () Bool)

(assert (=> b!1576658 (=> (not res!1077161) (not e!879437))))

(assert (=> b!1576658 (= res!1077161 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51414 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1576660 () Bool)

(assert (=> b!1576660 (= e!879437 e!879436)))

(declare-fun res!1077163 () Bool)

(assert (=> b!1576660 (=> (not res!1077163) (not e!879436))))

(declare-fun lt!675714 () Bool)

(declare-fun lt!675713 () SeekEntryResult!13744)

(assert (=> b!1576660 (= res!1077163 (and (or lt!675714 (not (undefined!14556 lt!675713))) (or lt!675714 (undefined!14556 lt!675713))))))

(assert (=> b!1576660 (= lt!675714 (not (is-Intermediate!13744 lt!675713)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105487 (_ BitVec 32)) SeekEntryResult!13744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576660 (= lt!675713 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!136290 res!1077164) b!1576658))

(assert (= (and b!1576658 res!1077161) b!1576659))

(assert (= (and b!1576659 res!1077162) b!1576660))

(assert (= (and b!1576660 res!1077163) b!1576661))

(declare-fun m!1449143 () Bool)

(assert (=> b!1576659 m!1449143))

(declare-fun m!1449145 () Bool)

(assert (=> start!136290 m!1449145))

(declare-fun m!1449147 () Bool)

(assert (=> start!136290 m!1449147))

(declare-fun m!1449149 () Bool)

(assert (=> b!1576660 m!1449149))

(assert (=> b!1576660 m!1449149))

(declare-fun m!1449151 () Bool)

(assert (=> b!1576660 m!1449151))

(push 1)

(assert (not b!1576660))

(assert (not b!1576659))

(assert (not start!136290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165685 () Bool)

(declare-fun e!879483 () Bool)

(assert (=> d!165685 e!879483))

(declare-fun c!146049 () Bool)

(declare-fun lt!675745 () SeekEntryResult!13744)

(assert (=> d!165685 (= c!146049 (and (is-Intermediate!13744 lt!675745) (undefined!14556 lt!675745)))))

(declare-fun e!879486 () SeekEntryResult!13744)

(assert (=> d!165685 (= lt!675745 e!879486)))

(declare-fun c!146048 () Bool)

(assert (=> d!165685 (= c!146048 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675744 () (_ BitVec 64))

(assert (=> d!165685 (= lt!675744 (select (arr!50863 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165685 (validMask!0 mask!898)))

(assert (=> d!165685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675745)))

(declare-fun b!1576731 () Bool)

(assert (=> b!1576731 (= e!879486 (Intermediate!13744 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576732 () Bool)

(declare-fun e!879485 () SeekEntryResult!13744)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576732 (= e!879485 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576733 () Bool)

(declare-fun e!879484 () Bool)

(assert (=> b!1576733 (= e!879483 e!879484)))

(declare-fun res!1077207 () Bool)

(assert (=> b!1576733 (= res!1077207 (and (is-Intermediate!13744 lt!675745) (not (undefined!14556 lt!675745)) (bvslt (x!142395 lt!675745) #b01111111111111111111111111111110) (bvsge (x!142395 lt!675745) #b00000000000000000000000000000000) (bvsge (x!142395 lt!675745) #b00000000000000000000000000000000)))))

(assert (=> b!1576733 (=> (not res!1077207) (not e!879484))))

(declare-fun b!1576734 () Bool)

(assert (=> b!1576734 (and (bvsge (index!57375 lt!675745) #b00000000000000000000000000000000) (bvslt (index!57375 lt!675745) (size!51414 _keys!605)))))

(declare-fun res!1077205 () Bool)

(assert (=> b!1576734 (= res!1077205 (= (select (arr!50863 _keys!605) (index!57375 lt!675745)) k!761))))

(declare-fun e!879482 () Bool)

(assert (=> b!1576734 (=> res!1077205 e!879482)))

(assert (=> b!1576734 (= e!879484 e!879482)))

(declare-fun b!1576735 () Bool)

(assert (=> b!1576735 (= e!879485 (Intermediate!13744 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576736 () Bool)

(assert (=> b!1576736 (= e!879486 e!879485)))

(declare-fun c!146047 () Bool)

(assert (=> b!1576736 (= c!146047 (or (= lt!675744 k!761) (= (bvadd lt!675744 lt!675744) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576737 () Bool)

(assert (=> b!1576737 (= e!879483 (bvsge (x!142395 lt!675745) #b01111111111111111111111111111110))))

(declare-fun b!1576738 () Bool)

(assert (=> b!1576738 (and (bvsge (index!57375 lt!675745) #b00000000000000000000000000000000) (bvslt (index!57375 lt!675745) (size!51414 _keys!605)))))

(declare-fun res!1077206 () Bool)

(assert (=> b!1576738 (= res!1077206 (= (select (arr!50863 _keys!605) (index!57375 lt!675745)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1576738 (=> res!1077206 e!879482)))

(declare-fun b!1576739 () Bool)

(assert (=> b!1576739 (and (bvsge (index!57375 lt!675745) #b00000000000000000000000000000000) (bvslt (index!57375 lt!675745) (size!51414 _keys!605)))))

(assert (=> b!1576739 (= e!879482 (= (select (arr!50863 _keys!605) (index!57375 lt!675745)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!165685 c!146048) b!1576731))

(assert (= (and d!165685 (not c!146048)) b!1576736))

(assert (= (and b!1576736 c!146047) b!1576735))

(assert (= (and b!1576736 (not c!146047)) b!1576732))

(assert (= (and d!165685 c!146049) b!1576737))

(assert (= (and d!165685 (not c!146049)) b!1576733))

(assert (= (and b!1576733 res!1077207) b!1576734))

(assert (= (and b!1576734 (not res!1077205)) b!1576738))

(assert (= (and b!1576738 (not res!1077206)) b!1576739))

(assert (=> d!165685 m!1449149))

(declare-fun m!1449181 () Bool)

(assert (=> d!165685 m!1449181))

(assert (=> d!165685 m!1449145))

(declare-fun m!1449183 () Bool)

(assert (=> b!1576734 m!1449183))

(assert (=> b!1576738 m!1449183))

(assert (=> b!1576739 m!1449183))

(assert (=> b!1576732 m!1449149))

(declare-fun m!1449185 () Bool)

(assert (=> b!1576732 m!1449185))

(assert (=> b!1576732 m!1449185))

(declare-fun m!1449187 () Bool)

(assert (=> b!1576732 m!1449187))

(assert (=> b!1576660 d!165685))

(declare-fun d!165697 () Bool)

(declare-fun lt!675757 () (_ BitVec 32))

(declare-fun lt!675756 () (_ BitVec 32))

(assert (=> d!165697 (= lt!675757 (bvmul (bvxor lt!675756 (bvlshr lt!675756 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!165697 (= lt!675756 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!165697 (and (bvsge mask!898 #b00000000000000000000000000000000) (let ((res!1077208 (let ((h!38457 ((_ extract 31 0) (bvand (bvxor k!761 (bvlshr k!761 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!142401 (bvmul (bvxor h!38457 (bvlshr h!38457 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!142401 (bvlshr x!142401 #b00000000000000000000000000001101)) mask!898))))) (and (bvslt res!1077208 (bvadd mask!898 #b00000000000000000000000000000001)) (bvsge res!1077208 #b00000000000000000000000000000000))))))

(assert (=> d!165697 (= (toIndex!0 k!761 mask!898) (bvand (bvxor lt!675757 (bvlshr lt!675757 #b00000000000000000000000000001101)) mask!898))))

(assert (=> b!1576660 d!165697))

(declare-fun d!165703 () Bool)

(assert (=> d!165703 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576659 d!165703))

(declare-fun d!165705 () Bool)

(assert (=> d!165705 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136290 d!165705))

(declare-fun d!165709 () Bool)

(assert (=> d!165709 (= (array_inv!39508 _keys!605) (bvsge (size!51414 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136290 d!165709))

(push 1)

(assert (not b!1576732))

(assert (not d!165685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

