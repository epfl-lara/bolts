; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136624 () Bool)

(assert start!136624)

(declare-fun b!1577879 () Bool)

(declare-fun res!1078065 () Bool)

(declare-fun e!880112 () Bool)

(assert (=> b!1577879 (=> (not res!1078065) (not e!880112))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105638 0))(
  ( (array!105639 (arr!50928 (Array (_ BitVec 32) (_ BitVec 64))) (size!51479 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105638)

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577879 (= res!1078065 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51479 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50928 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577880 () Bool)

(declare-fun res!1078064 () Bool)

(assert (=> b!1577880 (=> (not res!1078064) (not e!880112))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577880 (= res!1078064 (validKeyInArray!0 k!772))))

(declare-fun res!1078066 () Bool)

(assert (=> start!136624 (=> (not res!1078066) (not e!880112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136624 (= res!1078066 (validMask!0 mask!918))))

(assert (=> start!136624 e!880112))

(assert (=> start!136624 true))

(declare-fun array_inv!39573 (array!105638) Bool)

(assert (=> start!136624 (array_inv!39573 _keys!614)))

(declare-fun b!1577882 () Bool)

(declare-fun lt!676084 () (_ BitVec 32))

(assert (=> b!1577882 (= e!880112 (or (bvslt lt!676084 #b00000000000000000000000000000000) (bvsge lt!676084 (bvadd #b00000000000000000000000000000001 mask!918))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577882 (= lt!676084 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1577881 () Bool)

(declare-fun res!1078067 () Bool)

(assert (=> b!1577881 (=> (not res!1078067) (not e!880112))))

(assert (=> b!1577881 (= res!1078067 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50928 _keys!614) ee!18) k!772)) (not (= (select (arr!50928 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136624 res!1078066) b!1577879))

(assert (= (and b!1577879 res!1078065) b!1577880))

(assert (= (and b!1577880 res!1078064) b!1577881))

(assert (= (and b!1577881 res!1078067) b!1577882))

(declare-fun m!1450013 () Bool)

(assert (=> b!1577880 m!1450013))

(declare-fun m!1450015 () Bool)

(assert (=> b!1577879 m!1450015))

(declare-fun m!1450017 () Bool)

(assert (=> b!1577881 m!1450017))

(declare-fun m!1450019 () Bool)

(assert (=> start!136624 m!1450019))

(declare-fun m!1450021 () Bool)

(assert (=> start!136624 m!1450021))

(declare-fun m!1450023 () Bool)

(assert (=> b!1577882 m!1450023))

(push 1)

(assert (not b!1577882))

(assert (not start!136624))

(assert (not b!1577880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165943 () Bool)

(declare-fun lt!676093 () (_ BitVec 32))

(assert (=> d!165943 (and (bvsge lt!676093 #b00000000000000000000000000000000) (bvslt lt!676093 (bvadd mask!918 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165943 (= lt!676093 (choose!52 ee!18 x!466 mask!918))))

(assert (=> d!165943 (validMask!0 mask!918)))

(assert (=> d!165943 (= (nextIndex!0 ee!18 x!466 mask!918) lt!676093)))

(declare-fun bs!45607 () Bool)

(assert (= bs!45607 d!165943))

(declare-fun m!1450029 () Bool)

(assert (=> bs!45607 m!1450029))

(assert (=> bs!45607 m!1450019))

(assert (=> b!1577882 d!165943))

(declare-fun d!165945 () Bool)

(assert (=> d!165945 (= (validMask!0 mask!918) (and (or (= mask!918 #b00000000000000000000000000000111) (= mask!918 #b00000000000000000000000000001111) (= mask!918 #b00000000000000000000000000011111) (= mask!918 #b00000000000000000000000000111111) (= mask!918 #b00000000000000000000000001111111) (= mask!918 #b00000000000000000000000011111111) (= mask!918 #b00000000000000000000000111111111) (= mask!918 #b00000000000000000000001111111111) (= mask!918 #b00000000000000000000011111111111) (= mask!918 #b00000000000000000000111111111111) (= mask!918 #b00000000000000000001111111111111) (= mask!918 #b00000000000000000011111111111111) (= mask!918 #b00000000000000000111111111111111) (= mask!918 #b00000000000000001111111111111111) (= mask!918 #b00000000000000011111111111111111) (= mask!918 #b00000000000000111111111111111111) (= mask!918 #b00000000000001111111111111111111) (= mask!918 #b00000000000011111111111111111111) (= mask!918 #b00000000000111111111111111111111) (= mask!918 #b00000000001111111111111111111111) (= mask!918 #b00000000011111111111111111111111) (= mask!918 #b00000000111111111111111111111111) (= mask!918 #b00000001111111111111111111111111) (= mask!918 #b00000011111111111111111111111111) (= mask!918 #b00000111111111111111111111111111) (= mask!918 #b00001111111111111111111111111111) (= mask!918 #b00011111111111111111111111111111) (= mask!918 #b00111111111111111111111111111111)) (bvsle mask!918 #b00111111111111111111111111111111)))))

(assert (=> start!136624 d!165945))

(declare-fun d!165949 () Bool)

(assert (=> d!165949 (= (array_inv!39573 _keys!614) (bvsge (size!51479 _keys!614) #b00000000000000000000000000000000))))

(assert (=> start!136624 d!165949))

(declare-fun d!165951 () Bool)

(assert (=> d!165951 (= (validKeyInArray!0 k!772) (and (not (= k!772 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!772 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577880 d!165951))

(push 1)

(assert (not d!165943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

