; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136060 () Bool)

(assert start!136060)

(declare-fun b!1575830 () Bool)

(declare-fun e!878950 () Bool)

(declare-datatypes ((SeekEntryResult!13728 0))(
  ( (MissingZero!13728 (index!57309 (_ BitVec 32))) (Found!13728 (index!57310 (_ BitVec 32))) (Intermediate!13728 (undefined!14540 Bool) (index!57311 (_ BitVec 32)) (x!142286 (_ BitVec 32))) (Undefined!13728) (MissingVacant!13728 (index!57312 (_ BitVec 32))) )
))
(declare-fun lt!675327 () SeekEntryResult!13728)

(declare-datatypes ((array!105437 0))(
  ( (array!105438 (arr!50847 (Array (_ BitVec 32) (_ BitVec 64))) (size!51398 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105437)

(assert (=> b!1575830 (= e!878950 (and (not (is-Undefined!13728 lt!675327)) (not (is-Found!13728 lt!675327)) (is-MissingZero!13728 lt!675327) (or (bvslt (index!57309 lt!675327) #b00000000000000000000000000000000) (bvsge (index!57309 lt!675327) (size!51398 _keys!605)))))))

(declare-fun lt!675328 () SeekEntryResult!13728)

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105437 (_ BitVec 32)) SeekEntryResult!13728)

(assert (=> b!1575830 (= lt!675327 (seekKeyOrZeroReturnVacant!0 (x!142286 lt!675328) (index!57311 lt!675328) (index!57311 lt!675328) k!761 _keys!605 mask!898))))

(declare-fun b!1575829 () Bool)

(declare-fun e!878951 () Bool)

(assert (=> b!1575829 (= e!878951 e!878950)))

(declare-fun res!1076798 () Bool)

(assert (=> b!1575829 (=> (not res!1076798) (not e!878950))))

(assert (=> b!1575829 (= res!1076798 (and (not (undefined!14540 lt!675328)) (is-Intermediate!13728 lt!675328) (not (= (select (arr!50847 _keys!605) (index!57311 lt!675328)) k!761)) (not (= (select (arr!50847 _keys!605) (index!57311 lt!675328)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50847 _keys!605) (index!57311 lt!675328)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57311 lt!675328) #b00000000000000000000000000000000) (bvslt (index!57311 lt!675328) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105437 (_ BitVec 32)) SeekEntryResult!13728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575829 (= lt!675328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1575828 () Bool)

(declare-fun res!1076800 () Bool)

(assert (=> b!1575828 (=> (not res!1076800) (not e!878951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575828 (= res!1076800 (validKeyInArray!0 k!761))))

(declare-fun b!1575827 () Bool)

(declare-fun res!1076801 () Bool)

(assert (=> b!1575827 (=> (not res!1076801) (not e!878951))))

(assert (=> b!1575827 (= res!1076801 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51398 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun res!1076799 () Bool)

(assert (=> start!136060 (=> (not res!1076799) (not e!878951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136060 (= res!1076799 (validMask!0 mask!898))))

(assert (=> start!136060 e!878951))

(assert (=> start!136060 true))

(declare-fun array_inv!39492 (array!105437) Bool)

(assert (=> start!136060 (array_inv!39492 _keys!605)))

(assert (= (and start!136060 res!1076799) b!1575827))

(assert (= (and b!1575827 res!1076801) b!1575828))

(assert (= (and b!1575828 res!1076800) b!1575829))

(assert (= (and b!1575829 res!1076798) b!1575830))

(declare-fun m!1448729 () Bool)

(assert (=> b!1575830 m!1448729))

(declare-fun m!1448731 () Bool)

(assert (=> b!1575829 m!1448731))

(declare-fun m!1448733 () Bool)

(assert (=> b!1575829 m!1448733))

(assert (=> b!1575829 m!1448733))

(declare-fun m!1448735 () Bool)

(assert (=> b!1575829 m!1448735))

(declare-fun m!1448737 () Bool)

(assert (=> b!1575828 m!1448737))

(declare-fun m!1448739 () Bool)

(assert (=> start!136060 m!1448739))

(declare-fun m!1448741 () Bool)

(assert (=> start!136060 m!1448741))

(push 1)

(assert (not b!1575828))

(assert (not b!1575829))

(assert (not start!136060))

(assert (not b!1575830))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165479 () Bool)

(assert (=> d!165479 (= (validKeyInArray!0 k!761) (and (not (= k!761 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!761 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1575828 d!165479))

(declare-fun b!1575903 () Bool)

(declare-fun lt!675358 () SeekEntryResult!13728)

(assert (=> b!1575903 (and (bvsge (index!57311 lt!675358) #b00000000000000000000000000000000) (bvslt (index!57311 lt!675358) (size!51398 _keys!605)))))

(declare-fun res!1076830 () Bool)

(assert (=> b!1575903 (= res!1076830 (= (select (arr!50847 _keys!605) (index!57311 lt!675358)) k!761))))

(declare-fun e!878997 () Bool)

(assert (=> b!1575903 (=> res!1076830 e!878997)))

(declare-fun e!878994 () Bool)

(assert (=> b!1575903 (= e!878994 e!878997)))

(declare-fun b!1575904 () Bool)

(declare-fun e!878993 () Bool)

(assert (=> b!1575904 (= e!878993 e!878994)))

(declare-fun res!1076829 () Bool)

(assert (=> b!1575904 (= res!1076829 (and (is-Intermediate!13728 lt!675358) (not (undefined!14540 lt!675358)) (bvslt (x!142286 lt!675358) #b01111111111111111111111111111110) (bvsge (x!142286 lt!675358) #b00000000000000000000000000000000) (bvsge (x!142286 lt!675358) #b00000000000000000000000000000000)))))

(assert (=> b!1575904 (=> (not res!1076829) (not e!878994))))

(declare-fun b!1575905 () Bool)

(declare-fun e!878995 () SeekEntryResult!13728)

(declare-fun e!878996 () SeekEntryResult!13728)

(assert (=> b!1575905 (= e!878995 e!878996)))

(declare-fun c!145814 () Bool)

(declare-fun lt!675357 () (_ BitVec 64))

(assert (=> b!1575905 (= c!145814 (or (= lt!675357 k!761) (= (bvadd lt!675357 lt!675357) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1575906 () Bool)

(assert (=> b!1575906 (= e!878996 (Intermediate!13728 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun d!165481 () Bool)

(assert (=> d!165481 e!878993))

(declare-fun c!145813 () Bool)

(assert (=> d!165481 (= c!145813 (and (is-Intermediate!13728 lt!675358) (undefined!14540 lt!675358)))))

(assert (=> d!165481 (= lt!675358 e!878995)))

(declare-fun c!145815 () Bool)

(assert (=> d!165481 (= c!145815 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!165481 (= lt!675357 (select (arr!50847 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165481 (validMask!0 mask!898)))

(assert (=> d!165481 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675358)))

(declare-fun b!1575907 () Bool)

(assert (=> b!1575907 (and (bvsge (index!57311 lt!675358) #b00000000000000000000000000000000) (bvslt (index!57311 lt!675358) (size!51398 _keys!605)))))

(declare-fun res!1076828 () Bool)

(assert (=> b!1575907 (= res!1076828 (= (select (arr!50847 _keys!605) (index!57311 lt!675358)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1575907 (=> res!1076828 e!878997)))

(declare-fun b!1575908 () Bool)

(assert (=> b!1575908 (= e!878993 (bvsge (x!142286 lt!675358) #b01111111111111111111111111111110))))

(declare-fun b!1575909 () Bool)

(assert (=> b!1575909 (and (bvsge (index!57311 lt!675358) #b00000000000000000000000000000000) (bvslt (index!57311 lt!675358) (size!51398 _keys!605)))))

(assert (=> b!1575909 (= e!878997 (= (select (arr!50847 _keys!605) (index!57311 lt!675358)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1575910 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575910 (= e!878996 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

