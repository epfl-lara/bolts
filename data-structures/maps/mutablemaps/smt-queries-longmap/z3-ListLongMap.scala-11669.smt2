; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136496 () Bool)

(assert start!136496)

(declare-fun b!1577408 () Bool)

(declare-fun res!1077756 () Bool)

(declare-fun e!879863 () Bool)

(assert (=> b!1577408 (=> (not res!1077756) (not e!879863))))

(declare-fun x!458 () (_ BitVec 32))

(declare-datatypes ((array!105591 0))(
  ( (array!105592 (arr!50909 (Array (_ BitVec 32) (_ BitVec 64))) (size!51460 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105591)

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577408 (= res!1077756 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51460 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577410 () Bool)

(declare-fun res!1077758 () Bool)

(assert (=> b!1577410 (=> (not res!1077758) (not e!879863))))

(declare-fun k0!768 () (_ BitVec 64))

(assert (=> b!1577410 (= res!1077758 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50909 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50909 _keys!610) ee!12) (select (arr!50909 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((SeekEntryResult!13754 0))(
  ( (MissingZero!13754 (index!57413 (_ BitVec 32))) (Found!13754 (index!57414 (_ BitVec 32))) (Intermediate!13754 (undefined!14566 Bool) (index!57415 (_ BitVec 32)) (x!142546 (_ BitVec 32))) (Undefined!13754) (MissingVacant!13754 (index!57416 (_ BitVec 32))) )
))
(declare-fun lt!675946 () SeekEntryResult!13754)

(declare-fun b!1577411 () Bool)

(get-info :version)

(assert (=> b!1577411 (= e!879863 (and ((_ is Intermediate!13754) lt!675946) (not (undefined!14566 lt!675946)) (bvslt (x!142546 lt!675946) #b01111111111111111111111111111110) (bvsge (x!142546 lt!675946) #b00000000000000000000000000000000) (bvsge (x!142546 lt!675946) x!458) (not (= (select (arr!50909 _keys!610) (index!57415 lt!675946)) k0!768)) (or (bvslt (index!57415 lt!675946) #b00000000000000000000000000000000) (bvsge (index!57415 lt!675946) (size!51460 _keys!610)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105591 (_ BitVec 32)) SeekEntryResult!13754)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577411 (= lt!675946 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910))))

(declare-fun res!1077757 () Bool)

(assert (=> start!136496 (=> (not res!1077757) (not e!879863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136496 (= res!1077757 (validMask!0 mask!910))))

(assert (=> start!136496 e!879863))

(assert (=> start!136496 true))

(declare-fun array_inv!39554 (array!105591) Bool)

(assert (=> start!136496 (array_inv!39554 _keys!610)))

(declare-fun b!1577409 () Bool)

(declare-fun res!1077755 () Bool)

(assert (=> b!1577409 (=> (not res!1077755) (not e!879863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577409 (= res!1077755 (validKeyInArray!0 k0!768))))

(assert (= (and start!136496 res!1077757) b!1577408))

(assert (= (and b!1577408 res!1077756) b!1577409))

(assert (= (and b!1577409 res!1077755) b!1577410))

(assert (= (and b!1577410 res!1077758) b!1577411))

(declare-fun m!1449679 () Bool)

(assert (=> b!1577410 m!1449679))

(declare-fun m!1449681 () Bool)

(assert (=> b!1577411 m!1449681))

(declare-fun m!1449683 () Bool)

(assert (=> b!1577411 m!1449683))

(assert (=> b!1577411 m!1449683))

(declare-fun m!1449685 () Bool)

(assert (=> b!1577411 m!1449685))

(declare-fun m!1449687 () Bool)

(assert (=> start!136496 m!1449687))

(declare-fun m!1449689 () Bool)

(assert (=> start!136496 m!1449689))

(declare-fun m!1449691 () Bool)

(assert (=> b!1577409 m!1449691))

(check-sat (not start!136496) (not b!1577411) (not b!1577409))
(check-sat)
(get-model)

(declare-fun d!165827 () Bool)

(assert (=> d!165827 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136496 d!165827))

(declare-fun d!165837 () Bool)

(assert (=> d!165837 (= (array_inv!39554 _keys!610) (bvsge (size!51460 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136496 d!165837))

(declare-fun b!1577496 () Bool)

(declare-fun e!879911 () Bool)

(declare-fun lt!675972 () SeekEntryResult!13754)

(assert (=> b!1577496 (= e!879911 (bvsge (x!142546 lt!675972) #b01111111111111111111111111111110))))

(declare-fun b!1577497 () Bool)

(assert (=> b!1577497 (and (bvsge (index!57415 lt!675972) #b00000000000000000000000000000000) (bvslt (index!57415 lt!675972) (size!51460 _keys!610)))))

(declare-fun e!879912 () Bool)

(assert (=> b!1577497 (= e!879912 (= (select (arr!50909 _keys!610) (index!57415 lt!675972)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!165839 () Bool)

(assert (=> d!165839 e!879911))

(declare-fun c!146139 () Bool)

(assert (=> d!165839 (= c!146139 (and ((_ is Intermediate!13754) lt!675972) (undefined!14566 lt!675972)))))

(declare-fun e!879913 () SeekEntryResult!13754)

(assert (=> d!165839 (= lt!675972 e!879913)))

(declare-fun c!146137 () Bool)

(assert (=> d!165839 (= c!146137 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(declare-fun lt!675973 () (_ BitVec 64))

(assert (=> d!165839 (= lt!675973 (select (arr!50909 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165839 (validMask!0 mask!910)))

(assert (=> d!165839 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910) lt!675972)))

(declare-fun b!1577498 () Bool)

(assert (=> b!1577498 (= e!879913 (Intermediate!13754 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577499 () Bool)

(declare-fun e!879914 () Bool)

(assert (=> b!1577499 (= e!879911 e!879914)))

(declare-fun res!1077795 () Bool)

(assert (=> b!1577499 (= res!1077795 (and ((_ is Intermediate!13754) lt!675972) (not (undefined!14566 lt!675972)) (bvslt (x!142546 lt!675972) #b01111111111111111111111111111110) (bvsge (x!142546 lt!675972) #b00000000000000000000000000000000) (bvsge (x!142546 lt!675972) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577499 (=> (not res!1077795) (not e!879914))))

(declare-fun e!879915 () SeekEntryResult!13754)

(declare-fun b!1577500 () Bool)

(assert (=> b!1577500 (= e!879915 (Intermediate!13754 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577501 () Bool)

(assert (=> b!1577501 (and (bvsge (index!57415 lt!675972) #b00000000000000000000000000000000) (bvslt (index!57415 lt!675972) (size!51460 _keys!610)))))

(declare-fun res!1077797 () Bool)

(assert (=> b!1577501 (= res!1077797 (= (select (arr!50909 _keys!610) (index!57415 lt!675972)) k0!768))))

(assert (=> b!1577501 (=> res!1077797 e!879912)))

(assert (=> b!1577501 (= e!879914 e!879912)))

(declare-fun b!1577502 () Bool)

(assert (=> b!1577502 (= e!879915 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k0!768 _keys!610 mask!910))))

(declare-fun b!1577503 () Bool)

(assert (=> b!1577503 (and (bvsge (index!57415 lt!675972) #b00000000000000000000000000000000) (bvslt (index!57415 lt!675972) (size!51460 _keys!610)))))

(declare-fun res!1077796 () Bool)

(assert (=> b!1577503 (= res!1077796 (= (select (arr!50909 _keys!610) (index!57415 lt!675972)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577503 (=> res!1077796 e!879912)))

(declare-fun b!1577504 () Bool)

(assert (=> b!1577504 (= e!879913 e!879915)))

(declare-fun c!146138 () Bool)

(assert (=> b!1577504 (= c!146138 (or (= lt!675973 k0!768) (= (bvadd lt!675973 lt!675973) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!165839 c!146137) b!1577498))

(assert (= (and d!165839 (not c!146137)) b!1577504))

(assert (= (and b!1577504 c!146138) b!1577500))

(assert (= (and b!1577504 (not c!146138)) b!1577502))

(assert (= (and d!165839 c!146139) b!1577496))

(assert (= (and d!165839 (not c!146139)) b!1577499))

(assert (= (and b!1577499 res!1077795) b!1577501))

(assert (= (and b!1577501 (not res!1077797)) b!1577503))

(assert (= (and b!1577503 (not res!1077796)) b!1577497))

(assert (=> b!1577502 m!1449683))

(declare-fun m!1449727 () Bool)

(assert (=> b!1577502 m!1449727))

(assert (=> b!1577502 m!1449727))

(declare-fun m!1449729 () Bool)

(assert (=> b!1577502 m!1449729))

(declare-fun m!1449731 () Bool)

(assert (=> b!1577497 m!1449731))

(assert (=> d!165839 m!1449683))

(declare-fun m!1449733 () Bool)

(assert (=> d!165839 m!1449733))

(assert (=> d!165839 m!1449687))

(assert (=> b!1577501 m!1449731))

(assert (=> b!1577503 m!1449731))

(assert (=> b!1577411 d!165839))

(declare-fun d!165851 () Bool)

(declare-fun lt!675976 () (_ BitVec 32))

(assert (=> d!165851 (and (bvsge lt!675976 #b00000000000000000000000000000000) (bvslt lt!675976 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165851 (= lt!675976 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165851 (validMask!0 mask!910)))

(assert (=> d!165851 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675976)))

(declare-fun bs!45580 () Bool)

(assert (= bs!45580 d!165851))

(declare-fun m!1449735 () Bool)

(assert (=> bs!45580 m!1449735))

(assert (=> bs!45580 m!1449687))

(assert (=> b!1577411 d!165851))

(declare-fun d!165853 () Bool)

(assert (=> d!165853 (= (validKeyInArray!0 k0!768) (and (not (= k0!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577409 d!165853))

(check-sat (not b!1577502) (not d!165839) (not d!165851))
(check-sat)
