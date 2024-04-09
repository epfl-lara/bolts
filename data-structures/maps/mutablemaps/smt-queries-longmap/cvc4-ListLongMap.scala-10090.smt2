; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118922 () Bool)

(assert start!118922)

(declare-fun b!1388514 () Bool)

(declare-fun res!928910 () Bool)

(declare-fun e!786584 () Bool)

(assert (=> b!1388514 (=> (not res!928910) (not e!786584))))

(declare-datatypes ((array!94918 0))(
  ( (array!94919 (arr!45828 (Array (_ BitVec 32) (_ BitVec 64))) (size!46379 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94918)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388514 (= res!928910 (validKeyInArray!0 (select (arr!45828 a!2901) j!112)))))

(declare-fun res!928911 () Bool)

(assert (=> start!118922 (=> (not res!928911) (not e!786584))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118922 (= res!928911 (validMask!0 mask!2840))))

(assert (=> start!118922 e!786584))

(assert (=> start!118922 true))

(declare-fun array_inv!34773 (array!94918) Bool)

(assert (=> start!118922 (array_inv!34773 a!2901)))

(declare-fun b!1388515 () Bool)

(assert (=> b!1388515 (= e!786584 (and (bvsle #b00000000000000000000000000000000 (size!46379 a!2901)) (bvsge (size!46379 a!2901) #b01111111111111111111111111111111)))))

(declare-fun b!1388516 () Bool)

(declare-fun res!928907 () Bool)

(assert (=> b!1388516 (=> (not res!928907) (not e!786584))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1388516 (= res!928907 (and (= (size!46379 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46379 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46379 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388517 () Bool)

(declare-fun res!928908 () Bool)

(assert (=> b!1388517 (=> (not res!928908) (not e!786584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94918 (_ BitVec 32)) Bool)

(assert (=> b!1388517 (= res!928908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388518 () Bool)

(declare-fun res!928909 () Bool)

(assert (=> b!1388518 (=> (not res!928909) (not e!786584))))

(assert (=> b!1388518 (= res!928909 (validKeyInArray!0 (select (arr!45828 a!2901) i!1037)))))

(assert (= (and start!118922 res!928911) b!1388516))

(assert (= (and b!1388516 res!928907) b!1388518))

(assert (= (and b!1388518 res!928909) b!1388514))

(assert (= (and b!1388514 res!928910) b!1388517))

(assert (= (and b!1388517 res!928908) b!1388515))

(declare-fun m!1274319 () Bool)

(assert (=> b!1388514 m!1274319))

(assert (=> b!1388514 m!1274319))

(declare-fun m!1274321 () Bool)

(assert (=> b!1388514 m!1274321))

(declare-fun m!1274323 () Bool)

(assert (=> start!118922 m!1274323))

(declare-fun m!1274325 () Bool)

(assert (=> start!118922 m!1274325))

(declare-fun m!1274327 () Bool)

(assert (=> b!1388517 m!1274327))

(declare-fun m!1274329 () Bool)

(assert (=> b!1388518 m!1274329))

(assert (=> b!1388518 m!1274329))

(declare-fun m!1274331 () Bool)

(assert (=> b!1388518 m!1274331))

(push 1)

(assert (not b!1388518))

(assert (not b!1388517))

(assert (not start!118922))

(assert (not b!1388514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149889 () Bool)

(assert (=> d!149889 (= (validKeyInArray!0 (select (arr!45828 a!2901) i!1037)) (and (not (= (select (arr!45828 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45828 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388518 d!149889))

(declare-fun bm!66633 () Bool)

(declare-fun call!66636 () Bool)

(assert (=> bm!66633 (= call!66636 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1388527 () Bool)

(declare-fun e!786592 () Bool)

(assert (=> b!1388527 (= e!786592 call!66636)))

(declare-fun b!1388528 () Bool)

(declare-fun e!786593 () Bool)

(assert (=> b!1388528 (= e!786593 e!786592)))

(declare-fun lt!610301 () (_ BitVec 64))

(assert (=> b!1388528 (= lt!610301 (select (arr!45828 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46354 0))(
  ( (Unit!46355) )
))
(declare-fun lt!610302 () Unit!46354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94918 (_ BitVec 64) (_ BitVec 32)) Unit!46354)

(assert (=> b!1388528 (= lt!610302 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610301 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388528 (arrayContainsKey!0 a!2901 lt!610301 #b00000000000000000000000000000000)))

(declare-fun lt!610303 () Unit!46354)

(assert (=> b!1388528 (= lt!610303 lt!610302)))

(declare-fun res!928917 () Bool)

(declare-datatypes ((SeekEntryResult!10185 0))(
  ( (MissingZero!10185 (index!43110 (_ BitVec 32))) (Found!10185 (index!43111 (_ BitVec 32))) (Intermediate!10185 (undefined!10997 Bool) (index!43112 (_ BitVec 32)) (x!124759 (_ BitVec 32))) (Undefined!10185) (MissingVacant!10185 (index!43113 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94918 (_ BitVec 32)) SeekEntryResult!10185)

(assert (=> b!1388528 (= res!928917 (= (seekEntryOrOpen!0 (select (arr!45828 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10185 #b00000000000000000000000000000000)))))

(assert (=> b!1388528 (=> (not res!928917) (not e!786592))))

(declare-fun d!149891 () Bool)

(declare-fun res!928916 () Bool)

(declare-fun e!786591 () Bool)

(assert (=> d!149891 (=> res!928916 e!786591)))

(assert (=> d!149891 (= res!928916 (bvsge #b00000000000000000000000000000000 (size!46379 a!2901)))))

(assert (=> d!149891 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786591)))

(declare-fun b!1388529 () Bool)

(assert (=> b!1388529 (= e!786593 call!66636)))

(declare-fun b!1388530 () Bool)

(assert (=> b!1388530 (= e!786591 e!786593)))

(declare-fun c!129251 () Bool)

(assert (=> b!1388530 (= c!129251 (validKeyInArray!0 (select (arr!45828 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!149891 (not res!928916)) b!1388530))

(assert (= (and b!1388530 c!129251) b!1388528))

(assert (= (and b!1388530 (not c!129251)) b!1388529))

(assert (= (and b!1388528 res!928917) b!1388527))

(assert (= (or b!1388527 b!1388529) bm!66633))

(declare-fun m!1274333 () Bool)

(assert (=> bm!66633 m!1274333))

(declare-fun m!1274335 () Bool)

(assert (=> b!1388528 m!1274335))

(declare-fun m!1274337 () Bool)

(assert (=> b!1388528 m!1274337))

(declare-fun m!1274339 () Bool)

(assert (=> b!1388528 m!1274339))

(assert (=> b!1388528 m!1274335))

(declare-fun m!1274341 () Bool)

(assert (=> b!1388528 m!1274341))

(assert (=> b!1388530 m!1274335))

(assert (=> b!1388530 m!1274335))

(declare-fun m!1274343 () Bool)

(assert (=> b!1388530 m!1274343))

(assert (=> b!1388517 d!149891))

(declare-fun d!149897 () Bool)

(assert (=> d!149897 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118922 d!149897))

(declare-fun d!149905 () Bool)

(assert (=> d!149905 (= (array_inv!34773 a!2901) (bvsge (size!46379 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118922 d!149905))

(declare-fun d!149907 () Bool)

(assert (=> d!149907 (= (validKeyInArray!0 (select (arr!45828 a!2901) j!112)) (and (not (= (select (arr!45828 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45828 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388514 d!149907))

(push 1)

