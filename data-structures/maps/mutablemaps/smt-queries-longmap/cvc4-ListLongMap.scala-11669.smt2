; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136498 () Bool)

(assert start!136498)

(declare-fun x!458 () (_ BitVec 32))

(declare-fun k!768 () (_ BitVec 64))

(declare-datatypes ((array!105593 0))(
  ( (array!105594 (arr!50910 (Array (_ BitVec 32) (_ BitVec 64))) (size!51461 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105593)

(declare-fun b!1577423 () Bool)

(declare-fun e!879869 () Bool)

(declare-datatypes ((SeekEntryResult!13755 0))(
  ( (MissingZero!13755 (index!57417 (_ BitVec 32))) (Found!13755 (index!57418 (_ BitVec 32))) (Intermediate!13755 (undefined!14567 Bool) (index!57419 (_ BitVec 32)) (x!142547 (_ BitVec 32))) (Undefined!13755) (MissingVacant!13755 (index!57420 (_ BitVec 32))) )
))
(declare-fun lt!675949 () SeekEntryResult!13755)

(assert (=> b!1577423 (= e!879869 (and (is-Intermediate!13755 lt!675949) (not (undefined!14567 lt!675949)) (bvslt (x!142547 lt!675949) #b01111111111111111111111111111110) (bvsge (x!142547 lt!675949) #b00000000000000000000000000000000) (bvsge (x!142547 lt!675949) x!458) (not (= (select (arr!50910 _keys!610) (index!57419 lt!675949)) k!768)) (or (bvslt (index!57419 lt!675949) #b00000000000000000000000000000000) (bvsge (index!57419 lt!675949) (size!51461 _keys!610)))))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105593 (_ BitVec 32)) SeekEntryResult!13755)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577423 (= lt!675949 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577422 () Bool)

(declare-fun res!1077768 () Bool)

(assert (=> b!1577422 (=> (not res!1077768) (not e!879869))))

(assert (=> b!1577422 (= res!1077768 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50910 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50910 _keys!610) ee!12) (select (arr!50910 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077767 () Bool)

(assert (=> start!136498 (=> (not res!1077767) (not e!879869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136498 (= res!1077767 (validMask!0 mask!910))))

(assert (=> start!136498 e!879869))

(assert (=> start!136498 true))

(declare-fun array_inv!39555 (array!105593) Bool)

(assert (=> start!136498 (array_inv!39555 _keys!610)))

(declare-fun b!1577420 () Bool)

(declare-fun res!1077770 () Bool)

(assert (=> b!1577420 (=> (not res!1077770) (not e!879869))))

(assert (=> b!1577420 (= res!1077770 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51461 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577421 () Bool)

(declare-fun res!1077769 () Bool)

(assert (=> b!1577421 (=> (not res!1077769) (not e!879869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577421 (= res!1077769 (validKeyInArray!0 k!768))))

(assert (= (and start!136498 res!1077767) b!1577420))

(assert (= (and b!1577420 res!1077770) b!1577421))

(assert (= (and b!1577421 res!1077769) b!1577422))

(assert (= (and b!1577422 res!1077768) b!1577423))

(declare-fun m!1449693 () Bool)

(assert (=> b!1577423 m!1449693))

(declare-fun m!1449695 () Bool)

(assert (=> b!1577423 m!1449695))

(assert (=> b!1577423 m!1449695))

(declare-fun m!1449697 () Bool)

(assert (=> b!1577423 m!1449697))

(declare-fun m!1449699 () Bool)

(assert (=> b!1577422 m!1449699))

(declare-fun m!1449701 () Bool)

(assert (=> start!136498 m!1449701))

(declare-fun m!1449703 () Bool)

(assert (=> start!136498 m!1449703))

(declare-fun m!1449705 () Bool)

(assert (=> b!1577421 m!1449705))

(push 1)

(assert (not b!1577421))

(assert (not b!1577423))

(assert (not start!136498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165833 () Bool)

(assert (=> d!165833 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577421 d!165833))

(declare-fun b!1577477 () Bool)

(declare-fun lt!675967 () SeekEntryResult!13755)

(assert (=> b!1577477 (and (bvsge (index!57419 lt!675967) #b00000000000000000000000000000000) (bvslt (index!57419 lt!675967) (size!51461 _keys!610)))))

(declare-fun e!879902 () Bool)

(assert (=> b!1577477 (= e!879902 (= (select (arr!50910 _keys!610) (index!57419 lt!675967)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577478 () Bool)

(declare-fun e!879901 () SeekEntryResult!13755)

(assert (=> b!1577478 (= e!879901 (Intermediate!13755 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577479 () Bool)

(assert (=> b!1577479 (and (bvsge (index!57419 lt!675967) #b00000000000000000000000000000000) (bvslt (index!57419 lt!675967) (size!51461 _keys!610)))))

(declare-fun res!1077788 () Bool)

(assert (=> b!1577479 (= res!1077788 (= (select (arr!50910 _keys!610) (index!57419 lt!675967)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577479 (=> res!1077788 e!879902)))

(declare-fun e!879900 () SeekEntryResult!13755)

(declare-fun b!1577480 () Bool)

(assert (=> b!1577480 (= e!879900 (Intermediate!13755 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577481 () Bool)

(declare-fun e!879904 () Bool)

(declare-fun e!879903 () Bool)

(assert (=> b!1577481 (= e!879904 e!879903)))

(declare-fun res!1077786 () Bool)

(assert (=> b!1577481 (= res!1077786 (and (is-Intermediate!13755 lt!675967) (not (undefined!14567 lt!675967)) (bvslt (x!142547 lt!675967) #b01111111111111111111111111111110) (bvsge (x!142547 lt!675967) #b00000000000000000000000000000000) (bvsge (x!142547 lt!675967) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577481 (=> (not res!1077786) (not e!879903))))

(declare-fun b!1577482 () Bool)

(assert (=> b!1577482 (= e!879900 e!879901)))

(declare-fun c!146134 () Bool)

(declare-fun lt!675968 () (_ BitVec 64))

(assert (=> b!1577482 (= c!146134 (or (= lt!675968 k!768) (= (bvadd lt!675968 lt!675968) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577483 () Bool)

(assert (=> b!1577483 (= e!879901 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(declare-fun d!165835 () Bool)

(assert (=> d!165835 e!879904))

(declare-fun c!146132 () Bool)

(assert (=> d!165835 (= c!146132 (and (is-Intermediate!13755 lt!675967) (undefined!14567 lt!675967)))))

(assert (=> d!165835 (= lt!675967 e!879900)))

(declare-fun c!146133 () Bool)

(assert (=> d!165835 (= c!146133 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165835 (= lt!675968 (select (arr!50910 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165835 (validMask!0 mask!910)))

(assert (=> d!165835 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!675967)))

(declare-fun b!1577484 () Bool)

(assert (=> b!1577484 (= e!879904 (bvsge (x!142547 lt!675967) #b01111111111111111111111111111110))))

(declare-fun b!1577485 () Bool)

(assert (=> b!1577485 (and (bvsge (index!57419 lt!675967) #b00000000000000000000000000000000) (bvslt (index!57419 lt!675967) (size!51461 _keys!610)))))

(declare-fun res!1077787 () Bool)

(assert (=> b!1577485 (= res!1077787 (= (select (arr!50910 _keys!610) (index!57419 lt!675967)) k!768))))

(assert (=> b!1577485 (=> res!1077787 e!879902)))

(assert (=> b!1577485 (= e!879903 e!879902)))

(assert (= (and d!165835 c!146133) b!1577480))

(assert (= (and d!165835 (not c!146133)) b!1577482))

(assert (= (and b!1577482 c!146134) b!1577478))

(assert (= (and b!1577482 (not c!146134)) b!1577483))

(assert (= (and d!165835 c!146132) b!1577484))

(assert (= (and d!165835 (not c!146132)) b!1577481))

(assert (= (and b!1577481 res!1077786) b!1577485))

(assert (= (and b!1577485 (not res!1077787)) b!1577479))

(assert (= (and b!1577479 (not res!1077788)) b!1577477))

(declare-fun m!1449717 () Bool)

(assert (=> b!1577485 m!1449717))

(assert (=> d!165835 m!1449695))

(declare-fun m!1449719 () Bool)

(assert (=> d!165835 m!1449719))

(assert (=> d!165835 m!1449701))

(assert (=> b!1577479 m!1449717))

(assert (=> b!1577477 m!1449717))

(assert (=> b!1577483 m!1449695))

(declare-fun m!1449721 () Bool)

(assert (=> b!1577483 m!1449721))

(assert (=> b!1577483 m!1449721))

(declare-fun m!1449723 () Bool)

(assert (=> b!1577483 m!1449723))

(assert (=> b!1577423 d!165835))

(declare-fun d!165845 () Bool)

(declare-fun lt!675971 () (_ BitVec 32))

(assert (=> d!165845 (and (bvsge lt!675971 #b00000000000000000000000000000000) (bvslt lt!675971 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165845 (= lt!675971 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165845 (validMask!0 mask!910)))

(assert (=> d!165845 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675971)))

(declare-fun bs!45579 () Bool)

(assert (= bs!45579 d!165845))

(declare-fun m!1449725 () Bool)

(assert (=> bs!45579 m!1449725))

(assert (=> bs!45579 m!1449701))

(assert (=> b!1577423 d!165845))

(declare-fun d!165847 () Bool)

(assert (=> d!165847 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136498 d!165847))

(declare-fun d!165855 () Bool)

(assert (=> d!165855 (= (array_inv!39555 _keys!610) (bvsge (size!51461 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136498 d!165855))

(push 1)

(assert (not d!165835))

(assert (not d!165845))

(assert (not b!1577483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

