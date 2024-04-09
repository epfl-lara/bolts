; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136458 () Bool)

(assert start!136458)

(declare-fun b!1577280 () Bool)

(declare-fun res!1077681 () Bool)

(declare-fun e!879795 () Bool)

(assert (=> b!1577280 (=> (not res!1077681) (not e!879795))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577280 (= res!1077681 (validKeyInArray!0 k!768))))

(declare-fun b!1577279 () Bool)

(declare-fun res!1077680 () Bool)

(assert (=> b!1577279 (=> (not res!1077680) (not e!879795))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-datatypes ((array!105580 0))(
  ( (array!105581 (arr!50905 (Array (_ BitVec 32) (_ BitVec 64))) (size!51456 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105580)

(assert (=> b!1577279 (= res!1077680 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51456 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!13750 0))(
  ( (MissingZero!13750 (index!57397 (_ BitVec 32))) (Found!13750 (index!57398 (_ BitVec 32))) (Intermediate!13750 (undefined!14562 Bool) (index!57399 (_ BitVec 32)) (x!142528 (_ BitVec 32))) (Undefined!13750) (MissingVacant!13750 (index!57400 (_ BitVec 32))) )
))
(declare-fun lt!675907 () SeekEntryResult!13750)

(declare-fun b!1577282 () Bool)

(assert (=> b!1577282 (= e!879795 (and (is-Intermediate!13750 lt!675907) (not (undefined!14562 lt!675907)) (bvslt (x!142528 lt!675907) #b01111111111111111111111111111110) (bvsge (x!142528 lt!675907) #b00000000000000000000000000000000) (bvsge (x!142528 lt!675907) x!458) (or (bvslt (index!57399 lt!675907) #b00000000000000000000000000000000) (bvsge (index!57399 lt!675907) (size!51456 _keys!610)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105580 (_ BitVec 32)) SeekEntryResult!13750)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577282 (= lt!675907 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577281 () Bool)

(declare-fun res!1077682 () Bool)

(assert (=> b!1577281 (=> (not res!1077682) (not e!879795))))

(assert (=> b!1577281 (= res!1077682 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50905 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50905 _keys!610) ee!12) (select (arr!50905 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077683 () Bool)

(assert (=> start!136458 (=> (not res!1077683) (not e!879795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136458 (= res!1077683 (validMask!0 mask!910))))

(assert (=> start!136458 e!879795))

(assert (=> start!136458 true))

(declare-fun array_inv!39550 (array!105580) Bool)

(assert (=> start!136458 (array_inv!39550 _keys!610)))

(assert (= (and start!136458 res!1077683) b!1577279))

(assert (= (and b!1577279 res!1077680) b!1577280))

(assert (= (and b!1577280 res!1077681) b!1577281))

(assert (= (and b!1577281 res!1077682) b!1577282))

(declare-fun m!1449599 () Bool)

(assert (=> b!1577280 m!1449599))

(declare-fun m!1449601 () Bool)

(assert (=> b!1577282 m!1449601))

(assert (=> b!1577282 m!1449601))

(declare-fun m!1449603 () Bool)

(assert (=> b!1577282 m!1449603))

(declare-fun m!1449605 () Bool)

(assert (=> b!1577281 m!1449605))

(declare-fun m!1449607 () Bool)

(assert (=> start!136458 m!1449607))

(declare-fun m!1449609 () Bool)

(assert (=> start!136458 m!1449609))

(push 1)

(assert (not b!1577280))

(assert (not b!1577282))

(assert (not start!136458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165797 () Bool)

(assert (=> d!165797 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577280 d!165797))

(declare-fun b!1577344 () Bool)

(declare-fun e!879828 () SeekEntryResult!13750)

(declare-fun e!879829 () SeekEntryResult!13750)

(assert (=> b!1577344 (= e!879828 e!879829)))

(declare-fun c!146099 () Bool)

(declare-fun lt!675923 () (_ BitVec 64))

(assert (=> b!1577344 (= c!146099 (or (= lt!675923 k!768) (= (bvadd lt!675923 lt!675923) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577345 () Bool)

(declare-fun lt!675922 () SeekEntryResult!13750)

(assert (=> b!1577345 (and (bvsge (index!57399 lt!675922) #b00000000000000000000000000000000) (bvslt (index!57399 lt!675922) (size!51456 _keys!610)))))

(declare-fun e!879831 () Bool)

(assert (=> b!1577345 (= e!879831 (= (select (arr!50905 _keys!610) (index!57399 lt!675922)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577346 () Bool)

(assert (=> b!1577346 (and (bvsge (index!57399 lt!675922) #b00000000000000000000000000000000) (bvslt (index!57399 lt!675922) (size!51456 _keys!610)))))

(declare-fun res!1077721 () Bool)

(assert (=> b!1577346 (= res!1077721 (= (select (arr!50905 _keys!610) (index!57399 lt!675922)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577346 (=> res!1077721 e!879831)))

(declare-fun b!1577347 () Bool)

(declare-fun e!879830 () Bool)

(declare-fun e!879832 () Bool)

(assert (=> b!1577347 (= e!879830 e!879832)))

(declare-fun res!1077720 () Bool)

(assert (=> b!1577347 (= res!1077720 (and (is-Intermediate!13750 lt!675922) (not (undefined!14562 lt!675922)) (bvslt (x!142528 lt!675922) #b01111111111111111111111111111110) (bvsge (x!142528 lt!675922) #b00000000000000000000000000000000) (bvsge (x!142528 lt!675922) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577347 (=> (not res!1077720) (not e!879832))))

(declare-fun b!1577348 () Bool)

(assert (=> b!1577348 (= e!879829 (Intermediate!13750 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577349 () Bool)

(assert (=> b!1577349 (and (bvsge (index!57399 lt!675922) #b00000000000000000000000000000000) (bvslt (index!57399 lt!675922) (size!51456 _keys!610)))))

(declare-fun res!1077722 () Bool)

(assert (=> b!1577349 (= res!1077722 (= (select (arr!50905 _keys!610) (index!57399 lt!675922)) k!768))))

(assert (=> b!1577349 (=> res!1077722 e!879831)))

(assert (=> b!1577349 (= e!879832 e!879831)))

(declare-fun b!1577350 () Bool)

(assert (=> b!1577350 (= e!879829 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577351 () Bool)

(assert (=> b!1577351 (= e!879828 (Intermediate!13750 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun d!165801 () Bool)

(assert (=> d!165801 e!879830))

(declare-fun c!146098 () Bool)

(assert (=> d!165801 (= c!146098 (and (is-Intermediate!13750 lt!675922) (undefined!14562 lt!675922)))))

(assert (=> d!165801 (= lt!675922 e!879828)))

(declare-fun c!146100 () Bool)

(assert (=> d!165801 (= c!146100 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165801 (= lt!675923 (select (arr!50905 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165801 (validMask!0 mask!910)))

(assert (=> d!165801 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!675922)))

(declare-fun b!1577343 () Bool)

(assert (=> b!1577343 (= e!879830 (bvsge (x!142528 lt!675922) #b01111111111111111111111111111110))))

(assert (= (and d!165801 c!146100) b!1577351))

(assert (= (and d!165801 (not c!146100)) b!1577344))

(assert (= (and b!1577344 c!146099) b!1577348))

(assert (= (and b!1577344 (not c!146099)) b!1577350))

(assert (= (and d!165801 c!146098) b!1577343))

(assert (= (and d!165801 (not c!146098)) b!1577347))

(assert (= (and b!1577347 res!1077720) b!1577349))

(assert (= (and b!1577349 (not res!1077722)) b!1577346))

(assert (= (and b!1577346 (not res!1077721)) b!1577345))

(declare-fun m!1449635 () Bool)

(assert (=> b!1577349 m!1449635))

(assert (=> d!165801 m!1449601))

(declare-fun m!1449637 () Bool)

(assert (=> d!165801 m!1449637))

(assert (=> d!165801 m!1449607))

(assert (=> b!1577346 m!1449635))

(assert (=> b!1577345 m!1449635))

(assert (=> b!1577350 m!1449601))

(declare-fun m!1449639 () Bool)

(assert (=> b!1577350 m!1449639))

(assert (=> b!1577350 m!1449639))

(declare-fun m!1449641 () Bool)

(assert (=> b!1577350 m!1449641))

(assert (=> b!1577282 d!165801))

(declare-fun d!165807 () Bool)

(declare-fun lt!675932 () (_ BitVec 32))

(assert (=> d!165807 (and (bvsge lt!675932 #b00000000000000000000000000000000) (bvslt lt!675932 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165807 (= lt!675932 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165807 (validMask!0 mask!910)))

(assert (=> d!165807 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675932)))

(declare-fun bs!45572 () Bool)

(assert (= bs!45572 d!165807))

(declare-fun m!1449651 () Bool)

(assert (=> bs!45572 m!1449651))

(assert (=> bs!45572 m!1449607))

(assert (=> b!1577282 d!165807))

(declare-fun d!165811 () Bool)

(assert (=> d!165811 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136458 d!165811))

(declare-fun d!165819 () Bool)

(assert (=> d!165819 (= (array_inv!39550 _keys!610) (bvsge (size!51456 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136458 d!165819))

(push 1)

(assert (not d!165801))

(assert (not b!1577350))

(assert (not d!165807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

