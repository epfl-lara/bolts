; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136494 () Bool)

(assert start!136494)

(declare-fun b!1577397 () Bool)

(declare-fun res!1077746 () Bool)

(declare-fun e!879858 () Bool)

(assert (=> b!1577397 (=> (not res!1077746) (not e!879858))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577397 (= res!1077746 (validKeyInArray!0 k!768))))

(declare-fun x!458 () (_ BitVec 32))

(declare-datatypes ((array!105589 0))(
  ( (array!105590 (arr!50908 (Array (_ BitVec 32) (_ BitVec 64))) (size!51459 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105589)

(declare-fun b!1577399 () Bool)

(declare-datatypes ((SeekEntryResult!13753 0))(
  ( (MissingZero!13753 (index!57409 (_ BitVec 32))) (Found!13753 (index!57410 (_ BitVec 32))) (Intermediate!13753 (undefined!14565 Bool) (index!57411 (_ BitVec 32)) (x!142545 (_ BitVec 32))) (Undefined!13753) (MissingVacant!13753 (index!57412 (_ BitVec 32))) )
))
(declare-fun lt!675943 () SeekEntryResult!13753)

(assert (=> b!1577399 (= e!879858 (and (is-Intermediate!13753 lt!675943) (not (undefined!14565 lt!675943)) (bvslt (x!142545 lt!675943) #b01111111111111111111111111111110) (bvsge (x!142545 lt!675943) #b00000000000000000000000000000000) (bvsge (x!142545 lt!675943) x!458) (not (= (select (arr!50908 _keys!610) (index!57411 lt!675943)) k!768)) (or (bvslt (index!57411 lt!675943) #b00000000000000000000000000000000) (bvsge (index!57411 lt!675943) (size!51459 _keys!610)))))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105589 (_ BitVec 32)) SeekEntryResult!13753)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577399 (= lt!675943 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(declare-fun res!1077745 () Bool)

(assert (=> start!136494 (=> (not res!1077745) (not e!879858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136494 (= res!1077745 (validMask!0 mask!910))))

(assert (=> start!136494 e!879858))

(assert (=> start!136494 true))

(declare-fun array_inv!39553 (array!105589) Bool)

(assert (=> start!136494 (array_inv!39553 _keys!610)))

(declare-fun b!1577398 () Bool)

(declare-fun res!1077744 () Bool)

(assert (=> b!1577398 (=> (not res!1077744) (not e!879858))))

(assert (=> b!1577398 (= res!1077744 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50908 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50908 _keys!610) ee!12) (select (arr!50908 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577396 () Bool)

(declare-fun res!1077743 () Bool)

(assert (=> b!1577396 (=> (not res!1077743) (not e!879858))))

(assert (=> b!1577396 (= res!1077743 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51459 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(assert (= (and start!136494 res!1077745) b!1577396))

(assert (= (and b!1577396 res!1077743) b!1577397))

(assert (= (and b!1577397 res!1077746) b!1577398))

(assert (= (and b!1577398 res!1077744) b!1577399))

(declare-fun m!1449665 () Bool)

(assert (=> b!1577397 m!1449665))

(declare-fun m!1449667 () Bool)

(assert (=> b!1577399 m!1449667))

(declare-fun m!1449669 () Bool)

(assert (=> b!1577399 m!1449669))

(assert (=> b!1577399 m!1449669))

(declare-fun m!1449671 () Bool)

(assert (=> b!1577399 m!1449671))

(declare-fun m!1449673 () Bool)

(assert (=> start!136494 m!1449673))

(declare-fun m!1449675 () Bool)

(assert (=> start!136494 m!1449675))

(declare-fun m!1449677 () Bool)

(assert (=> b!1577398 m!1449677))

(push 1)

(assert (not b!1577397))

(assert (not b!1577399))

(assert (not start!136494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165829 () Bool)

(assert (=> d!165829 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577397 d!165829))

(declare-fun b!1577442 () Bool)

(declare-fun e!879881 () SeekEntryResult!13753)

(declare-fun e!879882 () SeekEntryResult!13753)

(assert (=> b!1577442 (= e!879881 e!879882)))

(declare-fun c!146120 () Bool)

(declare-fun lt!675955 () (_ BitVec 64))

(assert (=> b!1577442 (= c!146120 (or (= lt!675955 k!768) (= (bvadd lt!675955 lt!675955) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165831 () Bool)

(declare-fun e!879884 () Bool)

(assert (=> d!165831 e!879884))

(declare-fun c!146121 () Bool)

(declare-fun lt!675954 () SeekEntryResult!13753)

(assert (=> d!165831 (= c!146121 (and (is-Intermediate!13753 lt!675954) (undefined!14565 lt!675954)))))

(assert (=> d!165831 (= lt!675954 e!879881)))

(declare-fun c!146119 () Bool)

(assert (=> d!165831 (= c!146119 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165831 (= lt!675955 (select (arr!50908 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165831 (validMask!0 mask!910)))

(assert (=> d!165831 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!675954)))

(declare-fun b!1577443 () Bool)

(declare-fun e!879885 () Bool)

(assert (=> b!1577443 (= e!879884 e!879885)))

(declare-fun res!1077777 () Bool)

(assert (=> b!1577443 (= res!1077777 (and (is-Intermediate!13753 lt!675954) (not (undefined!14565 lt!675954)) (bvslt (x!142545 lt!675954) #b01111111111111111111111111111110) (bvsge (x!142545 lt!675954) #b00000000000000000000000000000000) (bvsge (x!142545 lt!675954) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577443 (=> (not res!1077777) (not e!879885))))

(declare-fun b!1577444 () Bool)

(assert (=> b!1577444 (and (bvsge (index!57411 lt!675954) #b00000000000000000000000000000000) (bvslt (index!57411 lt!675954) (size!51459 _keys!610)))))

(declare-fun e!879883 () Bool)

(assert (=> b!1577444 (= e!879883 (= (select (arr!50908 _keys!610) (index!57411 lt!675954)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577445 () Bool)

(assert (=> b!1577445 (= e!879882 (Intermediate!13753 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577446 () Bool)

(assert (=> b!1577446 (and (bvsge (index!57411 lt!675954) #b00000000000000000000000000000000) (bvslt (index!57411 lt!675954) (size!51459 _keys!610)))))

(declare-fun res!1077778 () Bool)

(assert (=> b!1577446 (= res!1077778 (= (select (arr!50908 _keys!610) (index!57411 lt!675954)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577446 (=> res!1077778 e!879883)))

(declare-fun b!1577447 () Bool)

(assert (=> b!1577447 (= e!879881 (Intermediate!13753 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577448 () Bool)

(assert (=> b!1577448 (= e!879882 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577449 () Bool)

(assert (=> b!1577449 (= e!879884 (bvsge (x!142545 lt!675954) #b01111111111111111111111111111110))))

(declare-fun b!1577450 () Bool)

(assert (=> b!1577450 (and (bvsge (index!57411 lt!675954) #b00000000000000000000000000000000) (bvslt (index!57411 lt!675954) (size!51459 _keys!610)))))

(declare-fun res!1077779 () Bool)

(assert (=> b!1577450 (= res!1077779 (= (select (arr!50908 _keys!610) (index!57411 lt!675954)) k!768))))

(assert (=> b!1577450 (=> res!1077779 e!879883)))

(assert (=> b!1577450 (= e!879885 e!879883)))

(assert (= (and d!165831 c!146119) b!1577447))

(assert (= (and d!165831 (not c!146119)) b!1577442))

(assert (= (and b!1577442 c!146120) b!1577445))

(assert (= (and b!1577442 (not c!146120)) b!1577448))

(assert (= (and d!165831 c!146121) b!1577449))

(assert (= (and d!165831 (not c!146121)) b!1577443))

(assert (= (and b!1577443 res!1077777) b!1577450))

(assert (= (and b!1577450 (not res!1077779)) b!1577446))

(assert (= (and b!1577446 (not res!1077778)) b!1577444))

(declare-fun m!1449707 () Bool)

(assert (=> b!1577444 m!1449707))

(assert (=> d!165831 m!1449669))

(declare-fun m!1449709 () Bool)

(assert (=> d!165831 m!1449709))

(assert (=> d!165831 m!1449673))

(assert (=> b!1577446 m!1449707))

(assert (=> b!1577450 m!1449707))

(assert (=> b!1577448 m!1449669))

(declare-fun m!1449711 () Bool)

(assert (=> b!1577448 m!1449711))

(assert (=> b!1577448 m!1449711))

(declare-fun m!1449713 () Bool)

(assert (=> b!1577448 m!1449713))

(assert (=> b!1577399 d!165831))

(declare-fun d!165841 () Bool)

(declare-fun lt!675958 () (_ BitVec 32))

(assert (=> d!165841 (and (bvsge lt!675958 #b00000000000000000000000000000000) (bvslt lt!675958 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165841 (= lt!675958 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165841 (validMask!0 mask!910)))

(assert (=> d!165841 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675958)))

(declare-fun bs!45578 () Bool)

(assert (= bs!45578 d!165841))

(declare-fun m!1449715 () Bool)

(assert (=> bs!45578 m!1449715))

(assert (=> bs!45578 m!1449673))

(assert (=> b!1577399 d!165841))

(declare-fun d!165843 () Bool)

(assert (=> d!165843 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136494 d!165843))

(declare-fun d!165849 () Bool)

(assert (=> d!165849 (= (array_inv!39553 _keys!610) (bvsge (size!51459 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136494 d!165849))

(push 1)

(assert (not d!165831))

(assert (not b!1577448))

(assert (not d!165841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

