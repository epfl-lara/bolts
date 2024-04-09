; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118920 () Bool)

(assert start!118920)

(declare-fun b!1388499 () Bool)

(declare-fun e!786578 () Bool)

(declare-datatypes ((array!94916 0))(
  ( (array!94917 (arr!45827 (Array (_ BitVec 32) (_ BitVec 64))) (size!46378 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94916)

(assert (=> b!1388499 (= e!786578 (and (bvsle #b00000000000000000000000000000000 (size!46378 a!2901)) (bvsge (size!46378 a!2901) #b01111111111111111111111111111111)))))

(declare-fun res!928894 () Bool)

(assert (=> start!118920 (=> (not res!928894) (not e!786578))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118920 (= res!928894 (validMask!0 mask!2840))))

(assert (=> start!118920 e!786578))

(assert (=> start!118920 true))

(declare-fun array_inv!34772 (array!94916) Bool)

(assert (=> start!118920 (array_inv!34772 a!2901)))

(declare-fun b!1388500 () Bool)

(declare-fun res!928896 () Bool)

(assert (=> b!1388500 (=> (not res!928896) (not e!786578))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388500 (= res!928896 (validKeyInArray!0 (select (arr!45827 a!2901) i!1037)))))

(declare-fun b!1388501 () Bool)

(declare-fun res!928893 () Bool)

(assert (=> b!1388501 (=> (not res!928893) (not e!786578))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388501 (= res!928893 (validKeyInArray!0 (select (arr!45827 a!2901) j!112)))))

(declare-fun b!1388502 () Bool)

(declare-fun res!928895 () Bool)

(assert (=> b!1388502 (=> (not res!928895) (not e!786578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94916 (_ BitVec 32)) Bool)

(assert (=> b!1388502 (= res!928895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388503 () Bool)

(declare-fun res!928892 () Bool)

(assert (=> b!1388503 (=> (not res!928892) (not e!786578))))

(assert (=> b!1388503 (= res!928892 (and (= (size!46378 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46378 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46378 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!118920 res!928894) b!1388503))

(assert (= (and b!1388503 res!928892) b!1388500))

(assert (= (and b!1388500 res!928896) b!1388501))

(assert (= (and b!1388501 res!928893) b!1388502))

(assert (= (and b!1388502 res!928895) b!1388499))

(declare-fun m!1274305 () Bool)

(assert (=> start!118920 m!1274305))

(declare-fun m!1274307 () Bool)

(assert (=> start!118920 m!1274307))

(declare-fun m!1274309 () Bool)

(assert (=> b!1388500 m!1274309))

(assert (=> b!1388500 m!1274309))

(declare-fun m!1274311 () Bool)

(assert (=> b!1388500 m!1274311))

(declare-fun m!1274313 () Bool)

(assert (=> b!1388501 m!1274313))

(assert (=> b!1388501 m!1274313))

(declare-fun m!1274315 () Bool)

(assert (=> b!1388501 m!1274315))

(declare-fun m!1274317 () Bool)

(assert (=> b!1388502 m!1274317))

(check-sat (not b!1388501) (not b!1388500) (not start!118920) (not b!1388502))
(check-sat)
(get-model)

(declare-fun d!149879 () Bool)

(assert (=> d!149879 (= (validKeyInArray!0 (select (arr!45827 a!2901) j!112)) (and (not (= (select (arr!45827 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45827 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388501 d!149879))

(declare-fun d!149881 () Bool)

(assert (=> d!149881 (= (validKeyInArray!0 (select (arr!45827 a!2901) i!1037)) (and (not (= (select (arr!45827 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45827 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388500 d!149881))

(declare-fun d!149883 () Bool)

(assert (=> d!149883 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118920 d!149883))

(declare-fun d!149893 () Bool)

(assert (=> d!149893 (= (array_inv!34772 a!2901) (bvsge (size!46378 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118920 d!149893))

(declare-fun bm!66636 () Bool)

(declare-fun call!66639 () Bool)

(assert (=> bm!66636 (= call!66639 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1388547 () Bool)

(declare-fun e!786606 () Bool)

(declare-fun e!786608 () Bool)

(assert (=> b!1388547 (= e!786606 e!786608)))

(declare-fun c!129256 () Bool)

(assert (=> b!1388547 (= c!129256 (validKeyInArray!0 (select (arr!45827 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388548 () Bool)

(declare-fun e!786607 () Bool)

(assert (=> b!1388548 (= e!786607 call!66639)))

(declare-fun d!149895 () Bool)

(declare-fun res!928926 () Bool)

(assert (=> d!149895 (=> res!928926 e!786606)))

(assert (=> d!149895 (= res!928926 (bvsge #b00000000000000000000000000000000 (size!46378 a!2901)))))

(assert (=> d!149895 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786606)))

(declare-fun b!1388549 () Bool)

(assert (=> b!1388549 (= e!786608 call!66639)))

(declare-fun b!1388550 () Bool)

(assert (=> b!1388550 (= e!786608 e!786607)))

(declare-fun lt!610316 () (_ BitVec 64))

(assert (=> b!1388550 (= lt!610316 (select (arr!45827 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46356 0))(
  ( (Unit!46357) )
))
(declare-fun lt!610318 () Unit!46356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94916 (_ BitVec 64) (_ BitVec 32)) Unit!46356)

(assert (=> b!1388550 (= lt!610318 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610316 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388550 (arrayContainsKey!0 a!2901 lt!610316 #b00000000000000000000000000000000)))

(declare-fun lt!610317 () Unit!46356)

(assert (=> b!1388550 (= lt!610317 lt!610318)))

(declare-fun res!928927 () Bool)

(declare-datatypes ((SeekEntryResult!10186 0))(
  ( (MissingZero!10186 (index!43114 (_ BitVec 32))) (Found!10186 (index!43115 (_ BitVec 32))) (Intermediate!10186 (undefined!10998 Bool) (index!43116 (_ BitVec 32)) (x!124760 (_ BitVec 32))) (Undefined!10186) (MissingVacant!10186 (index!43117 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94916 (_ BitVec 32)) SeekEntryResult!10186)

(assert (=> b!1388550 (= res!928927 (= (seekEntryOrOpen!0 (select (arr!45827 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10186 #b00000000000000000000000000000000)))))

(assert (=> b!1388550 (=> (not res!928927) (not e!786607))))

(assert (= (and d!149895 (not res!928926)) b!1388547))

(assert (= (and b!1388547 c!129256) b!1388550))

(assert (= (and b!1388547 (not c!129256)) b!1388549))

(assert (= (and b!1388550 res!928927) b!1388548))

(assert (= (or b!1388548 b!1388549) bm!66636))

(declare-fun m!1274345 () Bool)

(assert (=> bm!66636 m!1274345))

(declare-fun m!1274347 () Bool)

(assert (=> b!1388547 m!1274347))

(assert (=> b!1388547 m!1274347))

(declare-fun m!1274349 () Bool)

(assert (=> b!1388547 m!1274349))

(assert (=> b!1388550 m!1274347))

(declare-fun m!1274351 () Bool)

(assert (=> b!1388550 m!1274351))

(declare-fun m!1274353 () Bool)

(assert (=> b!1388550 m!1274353))

(assert (=> b!1388550 m!1274347))

(declare-fun m!1274355 () Bool)

(assert (=> b!1388550 m!1274355))

(assert (=> b!1388502 d!149895))

(check-sat (not b!1388550) (not b!1388547) (not bm!66636))
(check-sat)
