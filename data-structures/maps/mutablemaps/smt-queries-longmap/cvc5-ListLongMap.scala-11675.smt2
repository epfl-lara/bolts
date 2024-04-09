; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136620 () Bool)

(assert start!136620)

(declare-fun b!1577857 () Bool)

(declare-fun res!1078042 () Bool)

(declare-fun e!880100 () Bool)

(assert (=> b!1577857 (=> (not res!1078042) (not e!880100))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(declare-datatypes ((array!105634 0))(
  ( (array!105635 (arr!50926 (Array (_ BitVec 32) (_ BitVec 64))) (size!51477 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105634)

(assert (=> b!1577857 (= res!1078042 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50926 _keys!614) ee!18) k!772)) (not (= (select (arr!50926 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577855 () Bool)

(declare-fun res!1078043 () Bool)

(assert (=> b!1577855 (=> (not res!1078043) (not e!880100))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(assert (=> b!1577855 (= res!1078043 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51477 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50926 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1078040 () Bool)

(assert (=> start!136620 (=> (not res!1078040) (not e!880100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136620 (= res!1078040 (validMask!0 mask!918))))

(assert (=> start!136620 e!880100))

(assert (=> start!136620 true))

(declare-fun array_inv!39571 (array!105634) Bool)

(assert (=> start!136620 (array_inv!39571 _keys!614)))

(declare-fun b!1577856 () Bool)

(declare-fun res!1078041 () Bool)

(assert (=> b!1577856 (=> (not res!1078041) (not e!880100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577856 (= res!1078041 (validKeyInArray!0 k!772))))

(declare-fun b!1577858 () Bool)

(declare-fun lt!676078 () (_ BitVec 32))

(assert (=> b!1577858 (= e!880100 (or (bvslt lt!676078 #b00000000000000000000000000000000) (bvsge lt!676078 (bvadd #b00000000000000000000000000000001 mask!918))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577858 (= lt!676078 (nextIndex!0 ee!18 x!466 mask!918))))

(assert (= (and start!136620 res!1078040) b!1577855))

(assert (= (and b!1577855 res!1078043) b!1577856))

(assert (= (and b!1577856 res!1078041) b!1577857))

(assert (= (and b!1577857 res!1078042) b!1577858))

(declare-fun m!1449989 () Bool)

(assert (=> b!1577858 m!1449989))

(declare-fun m!1449991 () Bool)

(assert (=> b!1577857 m!1449991))

(declare-fun m!1449993 () Bool)

(assert (=> b!1577855 m!1449993))

(declare-fun m!1449995 () Bool)

(assert (=> start!136620 m!1449995))

(declare-fun m!1449997 () Bool)

(assert (=> start!136620 m!1449997))

(declare-fun m!1449999 () Bool)

(assert (=> b!1577856 m!1449999))

(push 1)

(assert (not b!1577856))

(assert (not b!1577858))

(assert (not start!136620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165935 () Bool)

(assert (=> d!165935 (= (validKeyInArray!0 k!772) (and (not (= k!772 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!772 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577856 d!165935))

(declare-fun d!165939 () Bool)

(declare-fun lt!676090 () (_ BitVec 32))

(assert (=> d!165939 (and (bvsge lt!676090 #b00000000000000000000000000000000) (bvslt lt!676090 (bvadd mask!918 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165939 (= lt!676090 (choose!52 ee!18 x!466 mask!918))))

(assert (=> d!165939 (validMask!0 mask!918)))

(assert (=> d!165939 (= (nextIndex!0 ee!18 x!466 mask!918) lt!676090)))

(declare-fun bs!45606 () Bool)

(assert (= bs!45606 d!165939))

(declare-fun m!1450027 () Bool)

(assert (=> bs!45606 m!1450027))

(assert (=> bs!45606 m!1449995))

(assert (=> b!1577858 d!165939))

(declare-fun d!165941 () Bool)

(assert (=> d!165941 (= (validMask!0 mask!918) (and (or (= mask!918 #b00000000000000000000000000000111) (= mask!918 #b00000000000000000000000000001111) (= mask!918 #b00000000000000000000000000011111) (= mask!918 #b00000000000000000000000000111111) (= mask!918 #b00000000000000000000000001111111) (= mask!918 #b00000000000000000000000011111111) (= mask!918 #b00000000000000000000000111111111) (= mask!918 #b00000000000000000000001111111111) (= mask!918 #b00000000000000000000011111111111) (= mask!918 #b00000000000000000000111111111111) (= mask!918 #b00000000000000000001111111111111) (= mask!918 #b00000000000000000011111111111111) (= mask!918 #b00000000000000000111111111111111) (= mask!918 #b00000000000000001111111111111111) (= mask!918 #b00000000000000011111111111111111) (= mask!918 #b00000000000000111111111111111111) (= mask!918 #b00000000000001111111111111111111) (= mask!918 #b00000000000011111111111111111111) (= mask!918 #b00000000000111111111111111111111) (= mask!918 #b00000000001111111111111111111111) (= mask!918 #b00000000011111111111111111111111) (= mask!918 #b00000000111111111111111111111111) (= mask!918 #b00000001111111111111111111111111) (= mask!918 #b00000011111111111111111111111111) (= mask!918 #b00000111111111111111111111111111) (= mask!918 #b00001111111111111111111111111111) (= mask!918 #b00011111111111111111111111111111) (= mask!918 #b00111111111111111111111111111111)) (bvsle mask!918 #b00111111111111111111111111111111)))))

(assert (=> start!136620 d!165941))

(declare-fun d!165947 () Bool)

(assert (=> d!165947 (= (array_inv!39571 _keys!614) (bvsge (size!51477 _keys!614) #b00000000000000000000000000000000))))

(assert (=> start!136620 d!165947))

(push 1)

(assert (not d!165939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

