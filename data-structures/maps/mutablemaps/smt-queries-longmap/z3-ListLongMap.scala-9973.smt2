; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117784 () Bool)

(assert start!117784)

(declare-fun res!922821 () Bool)

(declare-fun e!782828 () Bool)

(assert (=> start!117784 (=> (not res!922821) (not e!782828))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94182 0))(
  ( (array!94183 (arr!45476 (Array (_ BitVec 32) (_ BitVec 64))) (size!46027 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94182)

(assert (=> start!117784 (= res!922821 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46027 a!3464)) (bvslt (size!46027 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117784 e!782828))

(assert (=> start!117784 true))

(declare-fun array_inv!34421 (array!94182) Bool)

(assert (=> start!117784 (array_inv!34421 a!3464)))

(declare-fun b!1381011 () Bool)

(declare-fun res!922820 () Bool)

(assert (=> b!1381011 (=> (not res!922820) (not e!782828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381011 (= res!922820 (validKeyInArray!0 (select (arr!45476 a!3464) from!2839)))))

(declare-fun lt!608092 () (_ BitVec 32))

(declare-fun b!1381012 () Bool)

(assert (=> b!1381012 (= e!782828 (or (bvslt lt!608092 #b00000000000000000000000000000000) (bvsgt lt!608092 (bvsub (size!46027 a!3464) from!2839))))))

(declare-fun arrayCountValidKeys!0 (array!94182 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1381012 (= lt!608092 (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94)))))

(assert (= (and start!117784 res!922821) b!1381011))

(assert (= (and b!1381011 res!922820) b!1381012))

(declare-fun m!1266311 () Bool)

(assert (=> start!117784 m!1266311))

(declare-fun m!1266313 () Bool)

(assert (=> b!1381011 m!1266313))

(assert (=> b!1381011 m!1266313))

(declare-fun m!1266315 () Bool)

(assert (=> b!1381011 m!1266315))

(declare-fun m!1266317 () Bool)

(assert (=> b!1381012 m!1266317))

(check-sat (not b!1381011) (not b!1381012) (not start!117784))
(check-sat)
(get-model)

(declare-fun d!148917 () Bool)

(assert (=> d!148917 (= (validKeyInArray!0 (select (arr!45476 a!3464) from!2839)) (and (not (= (select (arr!45476 a!3464) from!2839) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45476 a!3464) from!2839) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381011 d!148917))

(declare-fun b!1381027 () Bool)

(declare-fun e!782839 () (_ BitVec 32))

(declare-fun e!782840 () (_ BitVec 32))

(assert (=> b!1381027 (= e!782839 e!782840)))

(declare-fun c!128543 () Bool)

(assert (=> b!1381027 (= c!128543 (validKeyInArray!0 (select (arr!45476 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun b!1381028 () Bool)

(assert (=> b!1381028 (= e!782839 #b00000000000000000000000000000000)))

(declare-fun d!148919 () Bool)

(declare-fun lt!608098 () (_ BitVec 32))

(assert (=> d!148919 (and (bvsge lt!608098 #b00000000000000000000000000000000) (bvsle lt!608098 (bvsub (size!46027 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(assert (=> d!148919 (= lt!608098 e!782839)))

(declare-fun c!128542 () Bool)

(assert (=> d!148919 (= c!128542 (bvsge (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (=> d!148919 (and (bvsle (bvadd #b00000000000000000000000000000001 from!2839) to!94) (bvsge (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000) (bvsle to!94 (size!46027 a!3464)))))

(assert (=> d!148919 (= (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94) lt!608098)))

(declare-fun b!1381029 () Bool)

(declare-fun call!66501 () (_ BitVec 32))

(assert (=> b!1381029 (= e!782840 (bvadd #b00000000000000000000000000000001 call!66501))))

(declare-fun bm!66498 () Bool)

(assert (=> bm!66498 (= call!66501 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839 #b00000000000000000000000000000001) to!94))))

(declare-fun b!1381030 () Bool)

(assert (=> b!1381030 (= e!782840 call!66501)))

(assert (= (and d!148919 c!128542) b!1381028))

(assert (= (and d!148919 (not c!128542)) b!1381027))

(assert (= (and b!1381027 c!128543) b!1381029))

(assert (= (and b!1381027 (not c!128543)) b!1381030))

(assert (= (or b!1381029 b!1381030) bm!66498))

(declare-fun m!1266327 () Bool)

(assert (=> b!1381027 m!1266327))

(assert (=> b!1381027 m!1266327))

(declare-fun m!1266329 () Bool)

(assert (=> b!1381027 m!1266329))

(declare-fun m!1266331 () Bool)

(assert (=> bm!66498 m!1266331))

(assert (=> b!1381012 d!148919))

(declare-fun d!148925 () Bool)

(assert (=> d!148925 (= (array_inv!34421 a!3464) (bvsge (size!46027 a!3464) #b00000000000000000000000000000000))))

(assert (=> start!117784 d!148925))

(check-sat (not bm!66498) (not b!1381027))
(check-sat)
