; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136622 () Bool)

(assert start!136622)

(declare-fun b!1577868 () Bool)

(declare-fun res!1078055 () Bool)

(declare-fun e!880106 () Bool)

(assert (=> b!1577868 (=> (not res!1078055) (not e!880106))))

(declare-fun k0!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577868 (= res!1078055 (validKeyInArray!0 k0!772))))

(declare-fun b!1577870 () Bool)

(declare-fun lt!676081 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577870 (= e!880106 (or (bvslt lt!676081 #b00000000000000000000000000000000) (bvsge lt!676081 (bvadd #b00000000000000000000000000000001 mask!918))))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577870 (= lt!676081 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577867 () Bool)

(declare-fun res!1078052 () Bool)

(assert (=> b!1577867 (=> (not res!1078052) (not e!880106))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-datatypes ((array!105636 0))(
  ( (array!105637 (arr!50927 (Array (_ BitVec 32) (_ BitVec 64))) (size!51478 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105636)

(assert (=> b!1577867 (= res!1078052 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51478 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50927 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577869 () Bool)

(declare-fun res!1078053 () Bool)

(assert (=> b!1577869 (=> (not res!1078053) (not e!880106))))

(assert (=> b!1577869 (= res!1078053 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50927 _keys!614) ee!18) k0!772)) (not (= (select (arr!50927 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1078054 () Bool)

(assert (=> start!136622 (=> (not res!1078054) (not e!880106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136622 (= res!1078054 (validMask!0 mask!918))))

(assert (=> start!136622 e!880106))

(assert (=> start!136622 true))

(declare-fun array_inv!39572 (array!105636) Bool)

(assert (=> start!136622 (array_inv!39572 _keys!614)))

(assert (= (and start!136622 res!1078054) b!1577867))

(assert (= (and b!1577867 res!1078052) b!1577868))

(assert (= (and b!1577868 res!1078055) b!1577869))

(assert (= (and b!1577869 res!1078053) b!1577870))

(declare-fun m!1450001 () Bool)

(assert (=> b!1577869 m!1450001))

(declare-fun m!1450003 () Bool)

(assert (=> b!1577867 m!1450003))

(declare-fun m!1450005 () Bool)

(assert (=> b!1577870 m!1450005))

(declare-fun m!1450007 () Bool)

(assert (=> start!136622 m!1450007))

(declare-fun m!1450009 () Bool)

(assert (=> start!136622 m!1450009))

(declare-fun m!1450011 () Bool)

(assert (=> b!1577868 m!1450011))

(check-sat (not start!136622) (not b!1577868) (not b!1577870))
(check-sat)
(get-model)

(declare-fun d!165929 () Bool)

(assert (=> d!165929 (= (validMask!0 mask!918) (and (or (= mask!918 #b00000000000000000000000000000111) (= mask!918 #b00000000000000000000000000001111) (= mask!918 #b00000000000000000000000000011111) (= mask!918 #b00000000000000000000000000111111) (= mask!918 #b00000000000000000000000001111111) (= mask!918 #b00000000000000000000000011111111) (= mask!918 #b00000000000000000000000111111111) (= mask!918 #b00000000000000000000001111111111) (= mask!918 #b00000000000000000000011111111111) (= mask!918 #b00000000000000000000111111111111) (= mask!918 #b00000000000000000001111111111111) (= mask!918 #b00000000000000000011111111111111) (= mask!918 #b00000000000000000111111111111111) (= mask!918 #b00000000000000001111111111111111) (= mask!918 #b00000000000000011111111111111111) (= mask!918 #b00000000000000111111111111111111) (= mask!918 #b00000000000001111111111111111111) (= mask!918 #b00000000000011111111111111111111) (= mask!918 #b00000000000111111111111111111111) (= mask!918 #b00000000001111111111111111111111) (= mask!918 #b00000000011111111111111111111111) (= mask!918 #b00000000111111111111111111111111) (= mask!918 #b00000001111111111111111111111111) (= mask!918 #b00000011111111111111111111111111) (= mask!918 #b00000111111111111111111111111111) (= mask!918 #b00001111111111111111111111111111) (= mask!918 #b00011111111111111111111111111111) (= mask!918 #b00111111111111111111111111111111)) (bvsle mask!918 #b00111111111111111111111111111111)))))

(assert (=> start!136622 d!165929))

(declare-fun d!165931 () Bool)

(assert (=> d!165931 (= (array_inv!39572 _keys!614) (bvsge (size!51478 _keys!614) #b00000000000000000000000000000000))))

(assert (=> start!136622 d!165931))

(declare-fun d!165933 () Bool)

(assert (=> d!165933 (= (validKeyInArray!0 k0!772) (and (not (= k0!772 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!772 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577868 d!165933))

(declare-fun d!165937 () Bool)

(declare-fun lt!676089 () (_ BitVec 32))

(assert (=> d!165937 (and (bvsge lt!676089 #b00000000000000000000000000000000) (bvslt lt!676089 (bvadd mask!918 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165937 (= lt!676089 (choose!52 ee!18 x!466 mask!918))))

(assert (=> d!165937 (validMask!0 mask!918)))

(assert (=> d!165937 (= (nextIndex!0 ee!18 x!466 mask!918) lt!676089)))

(declare-fun bs!45605 () Bool)

(assert (= bs!45605 d!165937))

(declare-fun m!1450025 () Bool)

(assert (=> bs!45605 m!1450025))

(assert (=> bs!45605 m!1450007))

(assert (=> b!1577870 d!165937))

(check-sat (not d!165937))
(check-sat)
