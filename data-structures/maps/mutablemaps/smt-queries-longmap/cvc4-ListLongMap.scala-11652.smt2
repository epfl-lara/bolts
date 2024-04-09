; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136222 () Bool)

(assert start!136222)

(declare-fun b!1576451 () Bool)

(declare-fun e!879310 () Bool)

(declare-datatypes ((SeekEntryResult!13740 0))(
  ( (MissingZero!13740 (index!57357 (_ BitVec 32))) (Found!13740 (index!57358 (_ BitVec 32))) (Intermediate!13740 (undefined!14552 Bool) (index!57359 (_ BitVec 32)) (x!142363 (_ BitVec 32))) (Undefined!13740) (MissingVacant!13740 (index!57360 (_ BitVec 32))) )
))
(declare-fun lt!675607 () SeekEntryResult!13740)

(declare-datatypes ((array!105473 0))(
  ( (array!105474 (arr!50859 (Array (_ BitVec 32) (_ BitVec 64))) (size!51410 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105473)

(assert (=> b!1576451 (= e!879310 (and (not (is-Undefined!13740 lt!675607)) (is-Found!13740 lt!675607) (or (bvslt (index!57358 lt!675607) #b00000000000000000000000000000000) (bvsge (index!57358 lt!675607) (size!51410 _keys!605)))))))

(declare-fun err!182 () SeekEntryResult!13740)

(assert (=> b!1576451 (= lt!675607 err!182)))

(assert (=> b!1576451 true))

(declare-fun b!1576450 () Bool)

(declare-fun e!879311 () Bool)

(assert (=> b!1576450 (= e!879311 e!879310)))

(declare-fun res!1077056 () Bool)

(assert (=> b!1576450 (=> (not res!1077056) (not e!879310))))

(declare-fun lt!675606 () Bool)

(declare-fun lt!675605 () SeekEntryResult!13740)

(assert (=> b!1576450 (= res!1077056 (and (or lt!675606 (not (undefined!14552 lt!675605))) (or lt!675606 (undefined!14552 lt!675605))))))

(assert (=> b!1576450 (= lt!675606 (not (is-Intermediate!13740 lt!675605)))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105473 (_ BitVec 32)) SeekEntryResult!13740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576450 (= lt!675605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576448 () Bool)

(declare-fun res!1077055 () Bool)

(assert (=> b!1576448 (=> (not res!1077055) (not e!879311))))

(assert (=> b!1576448 (= res!1077055 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51410 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1077053 () Bool)

(assert (=> start!136222 (=> (not res!1077053) (not e!879311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136222 (= res!1077053 (validMask!0 mask!898))))

(assert (=> start!136222 e!879311))

(assert (=> start!136222 true))

(declare-fun array_inv!39504 (array!105473) Bool)

(assert (=> start!136222 (array_inv!39504 _keys!605)))

(declare-fun b!1576449 () Bool)

(declare-fun res!1077054 () Bool)

(assert (=> b!1576449 (=> (not res!1077054) (not e!879311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576449 (= res!1077054 (validKeyInArray!0 k!761))))

(assert (= (and start!136222 res!1077053) b!1576448))

(assert (= (and b!1576448 res!1077055) b!1576449))

(assert (= (and b!1576449 res!1077054) b!1576450))

(assert (= (and b!1576450 res!1077056) b!1576451))

(declare-fun m!1449055 () Bool)

(assert (=> b!1576450 m!1449055))

(assert (=> b!1576450 m!1449055))

(declare-fun m!1449057 () Bool)

(assert (=> b!1576450 m!1449057))

(declare-fun m!1449059 () Bool)

(assert (=> start!136222 m!1449059))

(declare-fun m!1449061 () Bool)

(assert (=> start!136222 m!1449061))

(declare-fun m!1449063 () Bool)

(assert (=> b!1576449 m!1449063))

(push 1)

(assert (not start!136222))

(assert (not b!1576449))

(assert (not b!1576450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165623 () Bool)

(assert (=> d!165623 (= (validMask!0 mask!898) (and (or (= mask!898 #b00000000000000000000000000000111) (= mask!898 #b00000000000000000000000000001111) (= mask!898 #b00000000000000000000000000011111) (= mask!898 #b00000000000000000000000000111111) (= mask!898 #b00000000000000000000000001111111) (= mask!898 #b00000000000000000000000011111111) (= mask!898 #b00000000000000000000000111111111) (= mask!898 #b00000000000000000000001111111111) (= mask!898 #b00000000000000000000011111111111) (= mask!898 #b00000000000000000000111111111111) (= mask!898 #b00000000000000000001111111111111) (= mask!898 #b00000000000000000011111111111111) (= mask!898 #b00000000000000000111111111111111) (= mask!898 #b00000000000000001111111111111111) (= mask!898 #b00000000000000011111111111111111) (= mask!898 #b00000000000000111111111111111111) (= mask!898 #b00000000000001111111111111111111) (= mask!898 #b00000000000011111111111111111111) (= mask!898 #b00000000000111111111111111111111) (= mask!898 #b00000000001111111111111111111111) (= mask!898 #b00000000011111111111111111111111) (= mask!898 #b00000000111111111111111111111111) (= mask!898 #b00000001111111111111111111111111) (= mask!898 #b00000011111111111111111111111111) (= mask!898 #b00000111111111111111111111111111) (= mask!898 #b00001111111111111111111111111111) (= mask!898 #b00011111111111111111111111111111) (= mask!898 #b00111111111111111111111111111111)) (bvsle mask!898 #b00111111111111111111111111111111)))))

(assert (=> start!136222 d!165623))

(declare-fun d!165637 () Bool)

(assert (=> d!165637 (= (array_inv!39504 _keys!605) (bvsge (size!51410 _keys!605) #b00000000000000000000000000000000))))

(assert (=> start!136222 d!165637))

(declare-fun d!165639 () Bool)

(assert (=> d!165639 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1576449 d!165639))

(declare-fun b!1576524 () Bool)

(declare-fun e!879353 () Bool)

(declare-fun e!879357 () Bool)

(assert (=> b!1576524 (= e!879353 e!879357)))

(declare-fun res!1077084 () Bool)

(declare-fun lt!675625 () SeekEntryResult!13740)

(assert (=> b!1576524 (= res!1077084 (and (is-Intermediate!13740 lt!675625) (not (undefined!14552 lt!675625)) (bvslt (x!142363 lt!675625) #b01111111111111111111111111111110) (bvsge (x!142363 lt!675625) #b00000000000000000000000000000000) (bvsge (x!142363 lt!675625) #b00000000000000000000000000000000)))))

(assert (=> b!1576524 (=> (not res!1077084) (not e!879357))))

(declare-fun b!1576525 () Bool)

(assert (=> b!1576525 (and (bvsge (index!57359 lt!675625) #b00000000000000000000000000000000) (bvslt (index!57359 lt!675625) (size!51410 _keys!605)))))

(declare-fun res!1077083 () Bool)

(assert (=> b!1576525 (= res!1077083 (= (select (arr!50859 _keys!605) (index!57359 lt!675625)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879354 () Bool)

(assert (=> b!1576525 (=> res!1077083 e!879354)))

(declare-fun b!1576526 () Bool)

(assert (=> b!1576526 (and (bvsge (index!57359 lt!675625) #b00000000000000000000000000000000) (bvslt (index!57359 lt!675625) (size!51410 _keys!605)))))

(declare-fun res!1077085 () Bool)

(assert (=> b!1576526 (= res!1077085 (= (select (arr!50859 _keys!605) (index!57359 lt!675625)) k!761))))

(assert (=> b!1576526 (=> res!1077085 e!879354)))

(assert (=> b!1576526 (= e!879357 e!879354)))

(declare-fun b!1576527 () Bool)

(declare-fun e!879355 () SeekEntryResult!13740)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576527 (= e!879355 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576528 () Bool)

(assert (=> b!1576528 (and (bvsge (index!57359 lt!675625) #b00000000000000000000000000000000) (bvslt (index!57359 lt!675625) (size!51410 _keys!605)))))

(assert (=> b!1576528 (= e!879354 (= (select (arr!50859 _keys!605) (index!57359 lt!675625)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!165641 () Bool)

(assert (=> d!165641 e!879353))

(declare-fun c!146003 () Bool)

(assert (=> d!165641 (= c!146003 (and (is-Intermediate!13740 lt!675625) (undefined!14552 lt!675625)))))

(declare-fun e!879356 () SeekEntryResult!13740)

(assert (=> d!165641 (= lt!675625 e!879356)))

(declare-fun c!146004 () Bool)

(assert (=> d!165641 (= c!146004 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675624 () (_ BitVec 64))

(assert (=> d!165641 (= lt!675624 (select (arr!50859 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165641 (validMask!0 mask!898)))

(assert (=> d!165641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675625)))

(declare-fun b!1576529 () Bool)

(assert (=> b!1576529 (= e!879356 e!879355)))

(declare-fun c!146002 () Bool)

(assert (=> b!1576529 (= c!146002 (or (= lt!675624 k!761) (= (bvadd lt!675624 lt!675624) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576530 () Bool)

(assert (=> b!1576530 (= e!879355 (Intermediate!13740 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576531 () Bool)

(assert (=> b!1576531 (= e!879353 (bvsge (x!142363 lt!675625) #b01111111111111111111111111111110))))

(declare-fun b!1576532 () Bool)

(assert (=> b!1576532 (= e!879356 (Intermediate!13740 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(assert (= (and d!165641 c!146004) b!1576532))

(assert (= (and d!165641 (not c!146004)) b!1576529))

(assert (= (and b!1576529 c!146002) b!1576530))

(assert (= (and b!1576529 (not c!146002)) b!1576527))

(assert (= (and d!165641 c!146003) b!1576531))

(assert (= (and d!165641 (not c!146003)) b!1576524))

(assert (= (and b!1576524 res!1077084) b!1576526))

(assert (= (and b!1576526 (not res!1077085)) b!1576525))

(assert (= (and b!1576525 (not res!1077083)) b!1576528))

(declare-fun m!1449081 () Bool)

(assert (=> b!1576528 m!1449081))

(assert (=> b!1576527 m!1449055))

(declare-fun m!1449083 () Bool)

