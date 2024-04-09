; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136534 () Bool)

(assert start!136534)

(declare-fun b!1577539 () Bool)

(declare-fun res!1077832 () Bool)

(declare-fun e!879932 () Bool)

(assert (=> b!1577539 (=> (not res!1077832) (not e!879932))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun k!768 () (_ BitVec 64))

(declare-datatypes ((array!105602 0))(
  ( (array!105603 (arr!50913 (Array (_ BitVec 32) (_ BitVec 64))) (size!51464 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105602)

(assert (=> b!1577539 (= res!1077832 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50913 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50913 _keys!610) ee!12) (select (arr!50913 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077830 () Bool)

(assert (=> start!136534 (=> (not res!1077830) (not e!879932))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136534 (= res!1077830 (validMask!0 mask!910))))

(assert (=> start!136534 e!879932))

(assert (=> start!136534 true))

(declare-fun array_inv!39558 (array!105602) Bool)

(assert (=> start!136534 (array_inv!39558 _keys!610)))

(declare-datatypes ((SeekEntryResult!13758 0))(
  ( (MissingZero!13758 (index!57429 (_ BitVec 32))) (Found!13758 (index!57430 (_ BitVec 32))) (Intermediate!13758 (undefined!14570 Bool) (index!57431 (_ BitVec 32)) (x!142564 (_ BitVec 32))) (Undefined!13758) (MissingVacant!13758 (index!57432 (_ BitVec 32))) )
))
(declare-fun lt!675985 () SeekEntryResult!13758)

(declare-fun b!1577540 () Bool)

(assert (=> b!1577540 (= e!879932 (and (is-Intermediate!13758 lt!675985) (not (undefined!14570 lt!675985)) (bvslt (x!142564 lt!675985) #b01111111111111111111111111111110) (bvsge (x!142564 lt!675985) #b00000000000000000000000000000000) (bvsge (x!142564 lt!675985) x!458) (not (= (select (arr!50913 _keys!610) (index!57431 lt!675985)) k!768)) (not (= (select (arr!50913 _keys!610) (index!57431 lt!675985)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!57431 lt!675985) #b00000000000000000000000000000000) (bvsge (index!57431 lt!675985) (size!51464 _keys!610)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105602 (_ BitVec 32)) SeekEntryResult!13758)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577540 (= lt!675985 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577538 () Bool)

(declare-fun res!1077833 () Bool)

(assert (=> b!1577538 (=> (not res!1077833) (not e!879932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577538 (= res!1077833 (validKeyInArray!0 k!768))))

(declare-fun b!1577537 () Bool)

(declare-fun res!1077831 () Bool)

(assert (=> b!1577537 (=> (not res!1077831) (not e!879932))))

(assert (=> b!1577537 (= res!1077831 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51464 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(assert (= (and start!136534 res!1077830) b!1577537))

(assert (= (and b!1577537 res!1077831) b!1577538))

(assert (= (and b!1577538 res!1077833) b!1577539))

(assert (= (and b!1577539 res!1077832) b!1577540))

(declare-fun m!1449765 () Bool)

(assert (=> b!1577539 m!1449765))

(declare-fun m!1449767 () Bool)

(assert (=> start!136534 m!1449767))

(declare-fun m!1449769 () Bool)

(assert (=> start!136534 m!1449769))

(declare-fun m!1449771 () Bool)

(assert (=> b!1577540 m!1449771))

(declare-fun m!1449773 () Bool)

(assert (=> b!1577540 m!1449773))

(assert (=> b!1577540 m!1449773))

(declare-fun m!1449775 () Bool)

(assert (=> b!1577540 m!1449775))

(declare-fun m!1449777 () Bool)

(assert (=> b!1577538 m!1449777))

(push 1)

(assert (not start!136534))

(assert (not b!1577540))

(assert (not b!1577538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165867 () Bool)

(assert (=> d!165867 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136534 d!165867))

(declare-fun d!165877 () Bool)

(assert (=> d!165877 (= (array_inv!39558 _keys!610) (bvsge (size!51464 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136534 d!165877))

(declare-fun b!1577613 () Bool)

(declare-fun lt!676009 () SeekEntryResult!13758)

(assert (=> b!1577613 (and (bvsge (index!57431 lt!676009) #b00000000000000000000000000000000) (bvslt (index!57431 lt!676009) (size!51464 _keys!610)))))

(declare-fun e!879974 () Bool)

(assert (=> b!1577613 (= e!879974 (= (select (arr!50913 _keys!610) (index!57431 lt!676009)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577615 () Bool)

(declare-fun e!879977 () SeekEntryResult!13758)

(declare-fun e!879978 () SeekEntryResult!13758)

(assert (=> b!1577615 (= e!879977 e!879978)))

(declare-fun c!146165 () Bool)

(declare-fun lt!676008 () (_ BitVec 64))

(assert (=> b!1577615 (= c!146165 (or (= lt!676008 k!768) (= (bvadd lt!676008 lt!676008) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577616 () Bool)

(assert (=> b!1577616 (and (bvsge (index!57431 lt!676009) #b00000000000000000000000000000000) (bvslt (index!57431 lt!676009) (size!51464 _keys!610)))))

(declare-fun res!1077858 () Bool)

(assert (=> b!1577616 (= res!1077858 (= (select (arr!50913 _keys!610) (index!57431 lt!676009)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577616 (=> res!1077858 e!879974)))

(declare-fun b!1577617 () Bool)

(assert (=> b!1577617 (and (bvsge (index!57431 lt!676009) #b00000000000000000000000000000000) (bvslt (index!57431 lt!676009) (size!51464 _keys!610)))))

(declare-fun res!1077859 () Bool)

(assert (=> b!1577617 (= res!1077859 (= (select (arr!50913 _keys!610) (index!57431 lt!676009)) k!768))))

(assert (=> b!1577617 (=> res!1077859 e!879974)))

(declare-fun e!879975 () Bool)

(assert (=> b!1577617 (= e!879975 e!879974)))

(declare-fun b!1577618 () Bool)

(assert (=> b!1577618 (= e!879977 (Intermediate!13758 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577619 () Bool)

(assert (=> b!1577619 (= e!879978 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(declare-fun d!165879 () Bool)

(declare-fun e!879976 () Bool)

(assert (=> d!165879 e!879976))

(declare-fun c!146166 () Bool)

(assert (=> d!165879 (= c!146166 (and (is-Intermediate!13758 lt!676009) (undefined!14570 lt!676009)))))

(assert (=> d!165879 (= lt!676009 e!879977)))

(declare-fun c!146164 () Bool)

(assert (=> d!165879 (= c!146164 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165879 (= lt!676008 (select (arr!50913 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165879 (validMask!0 mask!910)))

(assert (=> d!165879 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!676009)))

(declare-fun b!1577614 () Bool)

(assert (=> b!1577614 (= e!879978 (Intermediate!13758 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577620 () Bool)

(assert (=> b!1577620 (= e!879976 e!879975)))

(declare-fun res!1077860 () Bool)

(assert (=> b!1577620 (= res!1077860 (and (is-Intermediate!13758 lt!676009) (not (undefined!14570 lt!676009)) (bvslt (x!142564 lt!676009) #b01111111111111111111111111111110) (bvsge (x!142564 lt!676009) #b00000000000000000000000000000000) (bvsge (x!142564 lt!676009) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577620 (=> (not res!1077860) (not e!879975))))

(declare-fun b!1577621 () Bool)

(assert (=> b!1577621 (= e!879976 (bvsge (x!142564 lt!676009) #b01111111111111111111111111111110))))

(assert (= (and d!165879 c!146164) b!1577618))

(assert (= (and d!165879 (not c!146164)) b!1577615))

(assert (= (and b!1577615 c!146165) b!1577614))

(assert (= (and b!1577615 (not c!146165)) b!1577619))

(assert (= (and d!165879 c!146166) b!1577621))

(assert (= (and d!165879 (not c!146166)) b!1577620))

(assert (= (and b!1577620 res!1077860) b!1577617))

(assert (= (and b!1577617 (not res!1077859)) b!1577616))

(assert (= (and b!1577616 (not res!1077858)) b!1577613))

(assert (=> d!165879 m!1449773))

(declare-fun m!1449799 () Bool)

(assert (=> d!165879 m!1449799))

(assert (=> d!165879 m!1449767))

(declare-fun m!1449801 () Bool)

(assert (=> b!1577617 m!1449801))

(assert (=> b!1577619 m!1449773))

(declare-fun m!1449803 () Bool)

(assert (=> b!1577619 m!1449803))

(assert (=> b!1577619 m!1449803))

(declare-fun m!1449805 () Bool)

(assert (=> b!1577619 m!1449805))

(assert (=> b!1577616 m!1449801))

(assert (=> b!1577613 m!1449801))

(assert (=> b!1577540 d!165879))

(declare-fun d!165885 () Bool)

(declare-fun lt!676012 () (_ BitVec 32))

(assert (=> d!165885 (and (bvsge lt!676012 #b00000000000000000000000000000000) (bvslt lt!676012 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165885 (= lt!676012 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165885 (validMask!0 mask!910)))

(assert (=> d!165885 (= (nextIndex!0 ee!12 x!458 mask!910) lt!676012)))

(declare-fun bs!45586 () Bool)

(assert (= bs!45586 d!165885))

(declare-fun m!1449807 () Bool)

(assert (=> bs!45586 m!1449807))

(assert (=> bs!45586 m!1449767))

(assert (=> b!1577540 d!165885))

(declare-fun d!165887 () Bool)

(assert (=> d!165887 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577538 d!165887))

(push 1)

(assert (not b!1577619))

(assert (not d!165885))

(assert (not d!165879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

