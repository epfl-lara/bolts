; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136530 () Bool)

(assert start!136530)

(declare-fun k!768 () (_ BitVec 64))

(declare-datatypes ((array!105598 0))(
  ( (array!105599 (arr!50911 (Array (_ BitVec 32) (_ BitVec 64))) (size!51462 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105598)

(declare-fun e!879921 () Bool)

(declare-fun b!1577516 () Bool)

(declare-fun x!458 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13756 0))(
  ( (MissingZero!13756 (index!57421 (_ BitVec 32))) (Found!13756 (index!57422 (_ BitVec 32))) (Intermediate!13756 (undefined!14568 Bool) (index!57423 (_ BitVec 32)) (x!142562 (_ BitVec 32))) (Undefined!13756) (MissingVacant!13756 (index!57424 (_ BitVec 32))) )
))
(declare-fun lt!675979 () SeekEntryResult!13756)

(assert (=> b!1577516 (= e!879921 (and (is-Intermediate!13756 lt!675979) (not (undefined!14568 lt!675979)) (bvslt (x!142562 lt!675979) #b01111111111111111111111111111110) (bvsge (x!142562 lt!675979) #b00000000000000000000000000000000) (bvsge (x!142562 lt!675979) x!458) (not (= (select (arr!50911 _keys!610) (index!57423 lt!675979)) k!768)) (not (= (select (arr!50911 _keys!610) (index!57423 lt!675979)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!57423 lt!675979) #b00000000000000000000000000000000) (bvsge (index!57423 lt!675979) (size!51462 _keys!610)))))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105598 (_ BitVec 32)) SeekEntryResult!13756)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577516 (= lt!675979 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577515 () Bool)

(declare-fun res!1077809 () Bool)

(assert (=> b!1577515 (=> (not res!1077809) (not e!879921))))

(assert (=> b!1577515 (= res!1077809 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50911 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50911 _keys!610) ee!12) (select (arr!50911 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077807 () Bool)

(assert (=> start!136530 (=> (not res!1077807) (not e!879921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136530 (= res!1077807 (validMask!0 mask!910))))

(assert (=> start!136530 e!879921))

(assert (=> start!136530 true))

(declare-fun array_inv!39556 (array!105598) Bool)

(assert (=> start!136530 (array_inv!39556 _keys!610)))

(declare-fun b!1577513 () Bool)

(declare-fun res!1077808 () Bool)

(assert (=> b!1577513 (=> (not res!1077808) (not e!879921))))

(assert (=> b!1577513 (= res!1077808 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51462 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577514 () Bool)

(declare-fun res!1077806 () Bool)

(assert (=> b!1577514 (=> (not res!1077806) (not e!879921))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577514 (= res!1077806 (validKeyInArray!0 k!768))))

(assert (= (and start!136530 res!1077807) b!1577513))

(assert (= (and b!1577513 res!1077808) b!1577514))

(assert (= (and b!1577514 res!1077806) b!1577515))

(assert (= (and b!1577515 res!1077809) b!1577516))

(declare-fun m!1449737 () Bool)

(assert (=> b!1577516 m!1449737))

(declare-fun m!1449739 () Bool)

(assert (=> b!1577516 m!1449739))

(assert (=> b!1577516 m!1449739))

(declare-fun m!1449741 () Bool)

(assert (=> b!1577516 m!1449741))

(declare-fun m!1449743 () Bool)

(assert (=> b!1577515 m!1449743))

(declare-fun m!1449745 () Bool)

(assert (=> start!136530 m!1449745))

(declare-fun m!1449747 () Bool)

(assert (=> start!136530 m!1449747))

(declare-fun m!1449749 () Bool)

(assert (=> b!1577514 m!1449749))

(push 1)

(assert (not b!1577514))

(assert (not start!136530))

(assert (not b!1577516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165863 () Bool)

(assert (=> d!165863 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577514 d!165863))

(declare-fun d!165865 () Bool)

(assert (=> d!165865 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136530 d!165865))

(declare-fun d!165869 () Bool)

(assert (=> d!165869 (= (array_inv!39556 _keys!610) (bvsge (size!51462 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136530 d!165869))

(declare-fun b!1577586 () Bool)

(declare-fun e!879960 () Bool)

(declare-fun lt!675997 () SeekEntryResult!13756)

(assert (=> b!1577586 (= e!879960 (bvsge (x!142562 lt!675997) #b01111111111111111111111111111110))))

(declare-fun b!1577587 () Bool)

(declare-fun e!879961 () SeekEntryResult!13756)

(assert (=> b!1577587 (= e!879961 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577588 () Bool)

(assert (=> b!1577588 (= e!879961 (Intermediate!13756 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun e!879963 () SeekEntryResult!13756)

(declare-fun b!1577589 () Bool)

(assert (=> b!1577589 (= e!879963 (Intermediate!13756 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577590 () Bool)

(assert (=> b!1577590 (= e!879963 e!879961)))

(declare-fun c!146155 () Bool)

(declare-fun lt!675996 () (_ BitVec 64))

(assert (=> b!1577590 (= c!146155 (or (= lt!675996 k!768) (= (bvadd lt!675996 lt!675996) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577591 () Bool)

(assert (=> b!1577591 (and (bvsge (index!57423 lt!675997) #b00000000000000000000000000000000) (bvslt (index!57423 lt!675997) (size!51462 _keys!610)))))

(declare-fun res!1077850 () Bool)

(assert (=> b!1577591 (= res!1077850 (= (select (arr!50911 _keys!610) (index!57423 lt!675997)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879959 () Bool)

(assert (=> b!1577591 (=> res!1077850 e!879959)))

(declare-fun b!1577592 () Bool)

(assert (=> b!1577592 (and (bvsge (index!57423 lt!675997) #b00000000000000000000000000000000) (bvslt (index!57423 lt!675997) (size!51462 _keys!610)))))

(assert (=> b!1577592 (= e!879959 (= (select (arr!50911 _keys!610) (index!57423 lt!675997)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!165873 () Bool)

(assert (=> d!165873 e!879960))

(declare-fun c!146156 () Bool)

(assert (=> d!165873 (= c!146156 (and (is-Intermediate!13756 lt!675997) (undefined!14568 lt!675997)))))

(assert (=> d!165873 (= lt!675997 e!879963)))

(declare-fun c!146157 () Bool)

(assert (=> d!165873 (= c!146157 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165873 (= lt!675996 (select (arr!50911 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165873 (validMask!0 mask!910)))

(assert (=> d!165873 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!675997)))

(declare-fun b!1577593 () Bool)

(declare-fun e!879962 () Bool)

(assert (=> b!1577593 (= e!879960 e!879962)))

(declare-fun res!1077849 () Bool)

(assert (=> b!1577593 (= res!1077849 (and (is-Intermediate!13756 lt!675997) (not (undefined!14568 lt!675997)) (bvslt (x!142562 lt!675997) #b01111111111111111111111111111110) (bvsge (x!142562 lt!675997) #b00000000000000000000000000000000) (bvsge (x!142562 lt!675997) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577593 (=> (not res!1077849) (not e!879962))))

(declare-fun b!1577594 () Bool)

(assert (=> b!1577594 (and (bvsge (index!57423 lt!675997) #b00000000000000000000000000000000) (bvslt (index!57423 lt!675997) (size!51462 _keys!610)))))

(declare-fun res!1077851 () Bool)

(assert (=> b!1577594 (= res!1077851 (= (select (arr!50911 _keys!610) (index!57423 lt!675997)) k!768))))

(assert (=> b!1577594 (=> res!1077851 e!879959)))

(assert (=> b!1577594 (= e!879962 e!879959)))

(assert (= (and d!165873 c!146157) b!1577589))

(assert (= (and d!165873 (not c!146157)) b!1577590))

(assert (= (and b!1577590 c!146155) b!1577588))

(assert (= (and b!1577590 (not c!146155)) b!1577587))

(assert (= (and d!165873 c!146156) b!1577586))

(assert (= (and d!165873 (not c!146156)) b!1577593))

(assert (= (and b!1577593 res!1077849) b!1577594))

(assert (= (and b!1577594 (not res!1077851)) b!1577591))

(assert (= (and b!1577591 (not res!1077850)) b!1577592))

(assert (=> b!1577587 m!1449739))

(declare-fun m!1449787 () Bool)

(assert (=> b!1577587 m!1449787))

(assert (=> b!1577587 m!1449787))

(declare-fun m!1449789 () Bool)

(assert (=> b!1577587 m!1449789))

(declare-fun m!1449791 () Bool)

(assert (=> b!1577594 m!1449791))

(assert (=> b!1577592 m!1449791))

(assert (=> d!165873 m!1449739))

(declare-fun m!1449793 () Bool)

(assert (=> d!165873 m!1449793))

(assert (=> d!165873 m!1449745))

(assert (=> b!1577591 m!1449791))

(assert (=> b!1577516 d!165873))

(declare-fun d!165883 () Bool)

(declare-fun lt!676006 () (_ BitVec 32))

(assert (=> d!165883 (and (bvsge lt!676006 #b00000000000000000000000000000000) (bvslt lt!676006 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165883 (= lt!676006 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165883 (validMask!0 mask!910)))

(assert (=> d!165883 (= (nextIndex!0 ee!12 x!458 mask!910) lt!676006)))

(declare-fun bs!45584 () Bool)

(assert (= bs!45584 d!165883))

(declare-fun m!1449795 () Bool)

(assert (=> bs!45584 m!1449795))

(assert (=> bs!45584 m!1449745))

(assert (=> b!1577516 d!165883))

(push 1)

(assert (not b!1577587))

(assert (not d!165873))

(assert (not d!165883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

