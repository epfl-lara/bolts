; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136566 () Bool)

(assert start!136566)

(declare-fun res!1077871 () Bool)

(declare-fun e!879984 () Bool)

(assert (=> start!136566 (=> (not res!1077871) (not e!879984))))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136566 (= res!1077871 (validMask!0 mask!910))))

(assert (=> start!136566 e!879984))

(assert (=> start!136566 true))

(declare-datatypes ((array!105607 0))(
  ( (array!105608 (arr!50914 (Array (_ BitVec 32) (_ BitVec 64))) (size!51465 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105607)

(declare-fun array_inv!39559 (array!105607) Bool)

(assert (=> start!136566 (array_inv!39559 _keys!610)))

(declare-fun b!1577631 () Bool)

(declare-fun res!1077869 () Bool)

(assert (=> b!1577631 (=> (not res!1077869) (not e!879984))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577631 (= res!1077869 (validKeyInArray!0 k!768))))

(declare-fun b!1577632 () Bool)

(declare-fun res!1077870 () Bool)

(assert (=> b!1577632 (=> (not res!1077870) (not e!879984))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(assert (=> b!1577632 (= res!1077870 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50914 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50914 _keys!610) ee!12) (select (arr!50914 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577633 () Bool)

(declare-datatypes ((SeekEntryResult!13759 0))(
  ( (MissingZero!13759 (index!57433 (_ BitVec 32))) (Found!13759 (index!57434 (_ BitVec 32))) (Intermediate!13759 (undefined!14571 Bool) (index!57435 (_ BitVec 32)) (x!142579 (_ BitVec 32))) (Undefined!13759) (MissingVacant!13759 (index!57436 (_ BitVec 32))) )
))
(declare-fun lt!676015 () SeekEntryResult!13759)

(assert (=> b!1577633 (= e!879984 (ite (and (is-Intermediate!13759 lt!676015) (undefined!14571 lt!676015)) (bvslt (x!142579 lt!676015) #b01111111111111111111111111111110) (or (not (is-Intermediate!13759 lt!676015)) (undefined!14571 lt!676015) (bvsge (x!142579 lt!676015) #b01111111111111111111111111111110) (bvslt (x!142579 lt!676015) #b00000000000000000000000000000000) (bvslt (x!142579 lt!676015) x!458) (and (not (= (select (arr!50914 _keys!610) (index!57435 lt!676015)) k!768)) (not (= (select (arr!50914 _keys!610) (index!57435 lt!676015)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50914 _keys!610) (index!57435 lt!676015)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105607 (_ BitVec 32)) SeekEntryResult!13759)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577633 (= lt!676015 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(declare-fun b!1577630 () Bool)

(declare-fun res!1077872 () Bool)

(assert (=> b!1577630 (=> (not res!1077872) (not e!879984))))

(assert (=> b!1577630 (= res!1077872 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51465 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(assert (= (and start!136566 res!1077871) b!1577630))

(assert (= (and b!1577630 res!1077872) b!1577631))

(assert (= (and b!1577631 res!1077869) b!1577632))

(assert (= (and b!1577632 res!1077870) b!1577633))

(declare-fun m!1449809 () Bool)

(assert (=> start!136566 m!1449809))

(declare-fun m!1449811 () Bool)

(assert (=> start!136566 m!1449811))

(declare-fun m!1449813 () Bool)

(assert (=> b!1577631 m!1449813))

(declare-fun m!1449815 () Bool)

(assert (=> b!1577632 m!1449815))

(declare-fun m!1449817 () Bool)

(assert (=> b!1577633 m!1449817))

(declare-fun m!1449819 () Bool)

(assert (=> b!1577633 m!1449819))

(assert (=> b!1577633 m!1449819))

(declare-fun m!1449821 () Bool)

(assert (=> b!1577633 m!1449821))

(push 1)

(assert (not start!136566))

(assert (not b!1577633))

(assert (not b!1577631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165895 () Bool)

(assert (=> d!165895 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136566 d!165895))

(declare-fun d!165901 () Bool)

(assert (=> d!165901 (= (array_inv!39559 _keys!610) (bvsge (size!51465 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136566 d!165901))

(declare-fun b!1577703 () Bool)

(declare-fun e!880025 () Bool)

(declare-fun lt!676036 () SeekEntryResult!13759)

(assert (=> b!1577703 (= e!880025 (bvsge (x!142579 lt!676036) #b01111111111111111111111111111110))))

(declare-fun b!1577704 () Bool)

(declare-fun e!880024 () Bool)

(assert (=> b!1577704 (= e!880025 e!880024)))

(declare-fun res!1077913 () Bool)

(assert (=> b!1577704 (= res!1077913 (and (is-Intermediate!13759 lt!676036) (not (undefined!14571 lt!676036)) (bvslt (x!142579 lt!676036) #b01111111111111111111111111111110) (bvsge (x!142579 lt!676036) #b00000000000000000000000000000000) (bvsge (x!142579 lt!676036) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577704 (=> (not res!1077913) (not e!880024))))

(declare-fun b!1577705 () Bool)

(assert (=> b!1577705 (and (bvsge (index!57435 lt!676036) #b00000000000000000000000000000000) (bvslt (index!57435 lt!676036) (size!51465 _keys!610)))))

(declare-fun res!1077914 () Bool)

(assert (=> b!1577705 (= res!1077914 (= (select (arr!50914 _keys!610) (index!57435 lt!676036)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!880026 () Bool)

(assert (=> b!1577705 (=> res!1077914 e!880026)))

(declare-fun b!1577706 () Bool)

(assert (=> b!1577706 (and (bvsge (index!57435 lt!676036) #b00000000000000000000000000000000) (bvslt (index!57435 lt!676036) (size!51465 _keys!610)))))

(assert (=> b!1577706 (= e!880026 (= (select (arr!50914 _keys!610) (index!57435 lt!676036)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!880022 () SeekEntryResult!13759)

(declare-fun b!1577707 () Bool)

(assert (=> b!1577707 (= e!880022 (Intermediate!13759 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577709 () Bool)

(assert (=> b!1577709 (and (bvsge (index!57435 lt!676036) #b00000000000000000000000000000000) (bvslt (index!57435 lt!676036) (size!51465 _keys!610)))))

(declare-fun res!1077912 () Bool)

(assert (=> b!1577709 (= res!1077912 (= (select (arr!50914 _keys!610) (index!57435 lt!676036)) k!768))))

(assert (=> b!1577709 (=> res!1077912 e!880026)))

(assert (=> b!1577709 (= e!880024 e!880026)))

(declare-fun b!1577708 () Bool)

(declare-fun e!880023 () SeekEntryResult!13759)

(assert (=> b!1577708 (= e!880023 e!880022)))

(declare-fun c!146182 () Bool)

(declare-fun lt!676035 () (_ BitVec 64))

(assert (=> b!1577708 (= c!146182 (or (= lt!676035 k!768) (= (bvadd lt!676035 lt!676035) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!165903 () Bool)

(assert (=> d!165903 e!880025))

(declare-fun c!146183 () Bool)

(assert (=> d!165903 (= c!146183 (and (is-Intermediate!13759 lt!676036) (undefined!14571 lt!676036)))))

(assert (=> d!165903 (= lt!676036 e!880023)))

(declare-fun c!146184 () Bool)

(assert (=> d!165903 (= c!146184 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165903 (= lt!676035 (select (arr!50914 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165903 (validMask!0 mask!910)))

(assert (=> d!165903 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!676036)))

(declare-fun b!1577710 () Bool)

(assert (=> b!1577710 (= e!880023 (Intermediate!13759 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577711 () Bool)

(assert (=> b!1577711 (= e!880022 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(assert (= (and d!165903 c!146184) b!1577710))

(assert (= (and d!165903 (not c!146184)) b!1577708))

(assert (= (and b!1577708 c!146182) b!1577707))

(assert (= (and b!1577708 (not c!146182)) b!1577711))

(assert (= (and d!165903 c!146183) b!1577703))

(assert (= (and d!165903 (not c!146183)) b!1577704))

(assert (= (and b!1577704 res!1077913) b!1577709))

(assert (= (and b!1577709 (not res!1077912)) b!1577705))

(assert (= (and b!1577705 (not res!1077914)) b!1577706))

(declare-fun m!1449861 () Bool)

(assert (=> b!1577709 m!1449861))

(assert (=> b!1577711 m!1449819))

(declare-fun m!1449863 () Bool)

(assert (=> b!1577711 m!1449863))

(assert (=> b!1577711 m!1449863))

(declare-fun m!1449865 () Bool)

(assert (=> b!1577711 m!1449865))

(assert (=> b!1577706 m!1449861))

(assert (=> b!1577705 m!1449861))

(assert (=> d!165903 m!1449819))

(declare-fun m!1449867 () Bool)

(assert (=> d!165903 m!1449867))

(assert (=> d!165903 m!1449809))

(assert (=> b!1577633 d!165903))

(declare-fun d!165915 () Bool)

(declare-fun lt!676039 () (_ BitVec 32))

(assert (=> d!165915 (and (bvsge lt!676039 #b00000000000000000000000000000000) (bvslt lt!676039 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165915 (= lt!676039 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165915 (validMask!0 mask!910)))

(assert (=> d!165915 (= (nextIndex!0 ee!12 x!458 mask!910) lt!676039)))

(declare-fun bs!45591 () Bool)

(assert (= bs!45591 d!165915))

(declare-fun m!1449869 () Bool)

(assert (=> bs!45591 m!1449869))

(assert (=> bs!45591 m!1449809))

(assert (=> b!1577633 d!165915))

(declare-fun d!165917 () Bool)

(assert (=> d!165917 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577631 d!165917))

(push 1)

(assert (not d!165915))

(assert (not b!1577711))

(assert (not d!165903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

