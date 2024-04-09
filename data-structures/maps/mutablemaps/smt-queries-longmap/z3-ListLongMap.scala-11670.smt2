; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136532 () Bool)

(assert start!136532)

(declare-datatypes ((SeekEntryResult!13757 0))(
  ( (MissingZero!13757 (index!57425 (_ BitVec 32))) (Found!13757 (index!57426 (_ BitVec 32))) (Intermediate!13757 (undefined!14569 Bool) (index!57427 (_ BitVec 32)) (x!142563 (_ BitVec 32))) (Undefined!13757) (MissingVacant!13757 (index!57428 (_ BitVec 32))) )
))
(declare-fun lt!675982 () SeekEntryResult!13757)

(declare-fun x!458 () (_ BitVec 32))

(declare-fun k0!768 () (_ BitVec 64))

(declare-datatypes ((array!105600 0))(
  ( (array!105601 (arr!50912 (Array (_ BitVec 32) (_ BitVec 64))) (size!51463 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105600)

(declare-fun e!879926 () Bool)

(declare-fun b!1577528 () Bool)

(get-info :version)

(assert (=> b!1577528 (= e!879926 (and ((_ is Intermediate!13757) lt!675982) (not (undefined!14569 lt!675982)) (bvslt (x!142563 lt!675982) #b01111111111111111111111111111110) (bvsge (x!142563 lt!675982) #b00000000000000000000000000000000) (bvsge (x!142563 lt!675982) x!458) (not (= (select (arr!50912 _keys!610) (index!57427 lt!675982)) k0!768)) (not (= (select (arr!50912 _keys!610) (index!57427 lt!675982)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (bvslt (index!57427 lt!675982) #b00000000000000000000000000000000) (bvsge (index!57427 lt!675982) (size!51463 _keys!610)))))))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105600 (_ BitVec 32)) SeekEntryResult!13757)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577528 (= lt!675982 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910))))

(declare-fun b!1577525 () Bool)

(declare-fun res!1077819 () Bool)

(assert (=> b!1577525 (=> (not res!1077819) (not e!879926))))

(assert (=> b!1577525 (= res!1077819 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51463 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577527 () Bool)

(declare-fun res!1077818 () Bool)

(assert (=> b!1577527 (=> (not res!1077818) (not e!879926))))

(assert (=> b!1577527 (= res!1077818 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50912 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50912 _keys!610) ee!12) (select (arr!50912 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077821 () Bool)

(assert (=> start!136532 (=> (not res!1077821) (not e!879926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136532 (= res!1077821 (validMask!0 mask!910))))

(assert (=> start!136532 e!879926))

(assert (=> start!136532 true))

(declare-fun array_inv!39557 (array!105600) Bool)

(assert (=> start!136532 (array_inv!39557 _keys!610)))

(declare-fun b!1577526 () Bool)

(declare-fun res!1077820 () Bool)

(assert (=> b!1577526 (=> (not res!1077820) (not e!879926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577526 (= res!1077820 (validKeyInArray!0 k0!768))))

(assert (= (and start!136532 res!1077821) b!1577525))

(assert (= (and b!1577525 res!1077819) b!1577526))

(assert (= (and b!1577526 res!1077820) b!1577527))

(assert (= (and b!1577527 res!1077818) b!1577528))

(declare-fun m!1449751 () Bool)

(assert (=> b!1577528 m!1449751))

(declare-fun m!1449753 () Bool)

(assert (=> b!1577528 m!1449753))

(assert (=> b!1577528 m!1449753))

(declare-fun m!1449755 () Bool)

(assert (=> b!1577528 m!1449755))

(declare-fun m!1449757 () Bool)

(assert (=> b!1577527 m!1449757))

(declare-fun m!1449759 () Bool)

(assert (=> start!136532 m!1449759))

(declare-fun m!1449761 () Bool)

(assert (=> start!136532 m!1449761))

(declare-fun m!1449763 () Bool)

(assert (=> b!1577526 m!1449763))

(check-sat (not b!1577526) (not start!136532) (not b!1577528))
(check-sat)
(get-model)

(declare-fun d!165859 () Bool)

(assert (=> d!165859 (= (validKeyInArray!0 k0!768) (and (not (= k0!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577526 d!165859))

(declare-fun d!165861 () Bool)

(assert (=> d!165861 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136532 d!165861))

(declare-fun d!165871 () Bool)

(assert (=> d!165871 (= (array_inv!39557 _keys!610) (bvsge (size!51463 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136532 d!165871))

(declare-fun b!1577577 () Bool)

(declare-fun lt!675994 () SeekEntryResult!13757)

(assert (=> b!1577577 (and (bvsge (index!57427 lt!675994) #b00000000000000000000000000000000) (bvslt (index!57427 lt!675994) (size!51463 _keys!610)))))

(declare-fun res!1077846 () Bool)

(assert (=> b!1577577 (= res!1077846 (= (select (arr!50912 _keys!610) (index!57427 lt!675994)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!879958 () Bool)

(assert (=> b!1577577 (=> res!1077846 e!879958)))

(declare-fun b!1577578 () Bool)

(assert (=> b!1577578 (and (bvsge (index!57427 lt!675994) #b00000000000000000000000000000000) (bvslt (index!57427 lt!675994) (size!51463 _keys!610)))))

(assert (=> b!1577578 (= e!879958 (= (select (arr!50912 _keys!610) (index!57427 lt!675994)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577580 () Bool)

(declare-fun e!879957 () Bool)

(declare-fun e!879954 () Bool)

(assert (=> b!1577580 (= e!879957 e!879954)))

(declare-fun res!1077848 () Bool)

(assert (=> b!1577580 (= res!1077848 (and ((_ is Intermediate!13757) lt!675994) (not (undefined!14569 lt!675994)) (bvslt (x!142563 lt!675994) #b01111111111111111111111111111110) (bvsge (x!142563 lt!675994) #b00000000000000000000000000000000) (bvsge (x!142563 lt!675994) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577580 (=> (not res!1077848) (not e!879954))))

(declare-fun b!1577581 () Bool)

(declare-fun e!879956 () SeekEntryResult!13757)

(assert (=> b!1577581 (= e!879956 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k0!768 _keys!610 mask!910))))

(declare-fun b!1577582 () Bool)

(declare-fun e!879955 () SeekEntryResult!13757)

(assert (=> b!1577582 (= e!879955 (Intermediate!13757 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577583 () Bool)

(assert (=> b!1577583 (= e!879956 (Intermediate!13757 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577584 () Bool)

(assert (=> b!1577584 (= e!879955 e!879956)))

(declare-fun c!146154 () Bool)

(declare-fun lt!675995 () (_ BitVec 64))

(assert (=> b!1577584 (= c!146154 (or (= lt!675995 k0!768) (= (bvadd lt!675995 lt!675995) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577585 () Bool)

(assert (=> b!1577585 (= e!879957 (bvsge (x!142563 lt!675994) #b01111111111111111111111111111110))))

(declare-fun d!165875 () Bool)

(assert (=> d!165875 e!879957))

(declare-fun c!146152 () Bool)

(assert (=> d!165875 (= c!146152 (and ((_ is Intermediate!13757) lt!675994) (undefined!14569 lt!675994)))))

(assert (=> d!165875 (= lt!675994 e!879955)))

(declare-fun c!146153 () Bool)

(assert (=> d!165875 (= c!146153 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165875 (= lt!675995 (select (arr!50912 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165875 (validMask!0 mask!910)))

(assert (=> d!165875 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910) lt!675994)))

(declare-fun b!1577579 () Bool)

(assert (=> b!1577579 (and (bvsge (index!57427 lt!675994) #b00000000000000000000000000000000) (bvslt (index!57427 lt!675994) (size!51463 _keys!610)))))

(declare-fun res!1077847 () Bool)

(assert (=> b!1577579 (= res!1077847 (= (select (arr!50912 _keys!610) (index!57427 lt!675994)) k0!768))))

(assert (=> b!1577579 (=> res!1077847 e!879958)))

(assert (=> b!1577579 (= e!879954 e!879958)))

(assert (= (and d!165875 c!146153) b!1577582))

(assert (= (and d!165875 (not c!146153)) b!1577584))

(assert (= (and b!1577584 c!146154) b!1577583))

(assert (= (and b!1577584 (not c!146154)) b!1577581))

(assert (= (and d!165875 c!146152) b!1577585))

(assert (= (and d!165875 (not c!146152)) b!1577580))

(assert (= (and b!1577580 res!1077848) b!1577579))

(assert (= (and b!1577579 (not res!1077847)) b!1577577))

(assert (= (and b!1577577 (not res!1077846)) b!1577578))

(declare-fun m!1449779 () Bool)

(assert (=> b!1577577 m!1449779))

(assert (=> b!1577581 m!1449753))

(declare-fun m!1449781 () Bool)

(assert (=> b!1577581 m!1449781))

(assert (=> b!1577581 m!1449781))

(declare-fun m!1449783 () Bool)

(assert (=> b!1577581 m!1449783))

(assert (=> b!1577578 m!1449779))

(assert (=> d!165875 m!1449753))

(declare-fun m!1449785 () Bool)

(assert (=> d!165875 m!1449785))

(assert (=> d!165875 m!1449759))

(assert (=> b!1577579 m!1449779))

(assert (=> b!1577528 d!165875))

(declare-fun d!165881 () Bool)

(declare-fun lt!676007 () (_ BitVec 32))

(assert (=> d!165881 (and (bvsge lt!676007 #b00000000000000000000000000000000) (bvslt lt!676007 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165881 (= lt!676007 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165881 (validMask!0 mask!910)))

(assert (=> d!165881 (= (nextIndex!0 ee!12 x!458 mask!910) lt!676007)))

(declare-fun bs!45585 () Bool)

(assert (= bs!45585 d!165881))

(declare-fun m!1449797 () Bool)

(assert (=> bs!45585 m!1449797))

(assert (=> bs!45585 m!1449759))

(assert (=> b!1577528 d!165881))

(check-sat (not b!1577581) (not d!165881) (not d!165875))
(check-sat)
