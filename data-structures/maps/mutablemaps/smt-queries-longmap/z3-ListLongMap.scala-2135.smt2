; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36094 () Bool)

(assert start!36094)

(declare-fun res!201478 () Bool)

(declare-fun e!221738 () Bool)

(assert (=> start!36094 (=> (not res!201478) (not e!221738))))

(declare-fun i!1487 () (_ BitVec 32))

(declare-datatypes ((array!20387 0))(
  ( (array!20388 (arr!9674 (Array (_ BitVec 32) (_ BitVec 64))) (size!10026 (_ BitVec 32))) )
))
(declare-fun a!4392 () array!20387)

(assert (=> start!36094 (= res!201478 (and (bvsge i!1487 #b00000000000000000000000000000000) (bvslt i!1487 (size!10026 a!4392))))))

(assert (=> start!36094 e!221738))

(assert (=> start!36094 true))

(declare-fun array_inv!7112 (array!20387) Bool)

(assert (=> start!36094 (array_inv!7112 a!4392)))

(declare-fun b!361985 () Bool)

(declare-fun res!201477 () Bool)

(assert (=> b!361985 (=> (not res!201477) (not e!221738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361985 (= res!201477 (validKeyInArray!0 (select (arr!9674 a!4392) i!1487)))))

(declare-fun b!361986 () Bool)

(declare-fun res!201476 () Bool)

(assert (=> b!361986 (=> (not res!201476) (not e!221738))))

(assert (=> b!361986 (= res!201476 (bvslt (size!10026 a!4392) #b01111111111111111111111111111111))))

(declare-fun b!361987 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20387 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!361987 (= e!221738 (not (= (arrayCountValidKeys!0 a!4392 i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) #b00000000000000000000000000000001)))))

(assert (= (and start!36094 res!201478) b!361985))

(assert (= (and b!361985 res!201477) b!361986))

(assert (= (and b!361986 res!201476) b!361987))

(declare-fun m!358563 () Bool)

(assert (=> start!36094 m!358563))

(declare-fun m!358565 () Bool)

(assert (=> b!361985 m!358565))

(assert (=> b!361985 m!358565))

(declare-fun m!358567 () Bool)

(assert (=> b!361985 m!358567))

(declare-fun m!358569 () Bool)

(assert (=> b!361987 m!358569))

(check-sat (not b!361987) (not start!36094) (not b!361985))
(check-sat)
(get-model)

(declare-fun d!71871 () Bool)

(declare-fun lt!166585 () (_ BitVec 32))

(assert (=> d!71871 (and (bvsge lt!166585 #b00000000000000000000000000000000) (bvsle lt!166585 (bvsub (size!10026 a!4392) i!1487)))))

(declare-fun e!221753 () (_ BitVec 32))

(assert (=> d!71871 (= lt!166585 e!221753)))

(declare-fun c!53681 () Bool)

(assert (=> d!71871 (= c!53681 (bvsge i!1487 (bvadd #b00000000000000000000000000000001 i!1487)))))

(assert (=> d!71871 (and (bvsle i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) (bvsge i!1487 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1487) (size!10026 a!4392)))))

(assert (=> d!71871 (= (arrayCountValidKeys!0 a!4392 i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) lt!166585)))

(declare-fun b!362013 () Bool)

(declare-fun e!221754 () (_ BitVec 32))

(assert (=> b!362013 (= e!221753 e!221754)))

(declare-fun c!53682 () Bool)

(assert (=> b!362013 (= c!53682 (validKeyInArray!0 (select (arr!9674 a!4392) i!1487)))))

(declare-fun b!362014 () Bool)

(declare-fun call!27202 () (_ BitVec 32))

(assert (=> b!362014 (= e!221754 (bvadd #b00000000000000000000000000000001 call!27202))))

(declare-fun bm!27199 () Bool)

(assert (=> bm!27199 (= call!27202 (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(declare-fun b!362015 () Bool)

(assert (=> b!362015 (= e!221754 call!27202)))

(declare-fun b!362016 () Bool)

(assert (=> b!362016 (= e!221753 #b00000000000000000000000000000000)))

(assert (= (and d!71871 c!53681) b!362016))

(assert (= (and d!71871 (not c!53681)) b!362013))

(assert (= (and b!362013 c!53682) b!362014))

(assert (= (and b!362013 (not c!53682)) b!362015))

(assert (= (or b!362014 b!362015) bm!27199))

(assert (=> b!362013 m!358565))

(assert (=> b!362013 m!358565))

(assert (=> b!362013 m!358567))

(declare-fun m!358579 () Bool)

(assert (=> bm!27199 m!358579))

(assert (=> b!361987 d!71871))

(declare-fun d!71883 () Bool)

(assert (=> d!71883 (= (array_inv!7112 a!4392) (bvsge (size!10026 a!4392) #b00000000000000000000000000000000))))

(assert (=> start!36094 d!71883))

(declare-fun d!71885 () Bool)

(assert (=> d!71885 (= (validKeyInArray!0 (select (arr!9674 a!4392) i!1487)) (and (not (= (select (arr!9674 a!4392) i!1487) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9674 a!4392) i!1487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!361985 d!71885))

(check-sat (not b!362013) (not bm!27199))
(check-sat)
(get-model)

(assert (=> b!362013 d!71885))

(declare-fun d!71891 () Bool)

(declare-fun lt!166591 () (_ BitVec 32))

(assert (=> d!71891 (and (bvsge lt!166591 #b00000000000000000000000000000000) (bvsle lt!166591 (bvsub (size!10026 a!4392) (bvadd i!1487 #b00000000000000000000000000000001))))))

(declare-fun e!221765 () (_ BitVec 32))

(assert (=> d!71891 (= lt!166591 e!221765)))

(declare-fun c!53693 () Bool)

(assert (=> d!71891 (= c!53693 (bvsge (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(assert (=> d!71891 (and (bvsle (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)) (bvsge (bvadd i!1487 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1487) (size!10026 a!4392)))))

(assert (=> d!71891 (= (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)) lt!166591)))

(declare-fun b!362037 () Bool)

(declare-fun e!221766 () (_ BitVec 32))

(assert (=> b!362037 (= e!221765 e!221766)))

(declare-fun c!53694 () Bool)

(assert (=> b!362037 (= c!53694 (validKeyInArray!0 (select (arr!9674 a!4392) (bvadd i!1487 #b00000000000000000000000000000001))))))

(declare-fun b!362038 () Bool)

(declare-fun call!27208 () (_ BitVec 32))

(assert (=> b!362038 (= e!221766 (bvadd #b00000000000000000000000000000001 call!27208))))

(declare-fun bm!27205 () Bool)

(assert (=> bm!27205 (= call!27208 (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(declare-fun b!362039 () Bool)

(assert (=> b!362039 (= e!221766 call!27208)))

(declare-fun b!362040 () Bool)

(assert (=> b!362040 (= e!221765 #b00000000000000000000000000000000)))

(assert (= (and d!71891 c!53693) b!362040))

(assert (= (and d!71891 (not c!53693)) b!362037))

(assert (= (and b!362037 c!53694) b!362038))

(assert (= (and b!362037 (not c!53694)) b!362039))

(assert (= (or b!362038 b!362039) bm!27205))

(declare-fun m!358591 () Bool)

(assert (=> b!362037 m!358591))

(assert (=> b!362037 m!358591))

(declare-fun m!358593 () Bool)

(assert (=> b!362037 m!358593))

(declare-fun m!358595 () Bool)

(assert (=> bm!27205 m!358595))

(assert (=> bm!27199 d!71891))

(check-sat (not b!362037) (not bm!27205))
(check-sat)
