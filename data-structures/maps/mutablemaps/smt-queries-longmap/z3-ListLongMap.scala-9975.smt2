; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117814 () Bool)

(assert start!117814)

(declare-fun res!922856 () Bool)

(declare-fun e!782881 () Bool)

(assert (=> start!117814 (=> (not res!922856) (not e!782881))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94197 0))(
  ( (array!94198 (arr!45482 (Array (_ BitVec 32) (_ BitVec 64))) (size!46033 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94197)

(assert (=> start!117814 (= res!922856 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46033 a!3464)) (bvslt (size!46033 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117814 e!782881))

(assert (=> start!117814 true))

(declare-fun array_inv!34427 (array!94197) Bool)

(assert (=> start!117814 (array_inv!34427 a!3464)))

(declare-fun b!1381083 () Bool)

(declare-fun res!922857 () Bool)

(assert (=> b!1381083 (=> (not res!922857) (not e!782881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381083 (= res!922857 (not (validKeyInArray!0 (select (arr!45482 a!3464) from!2839))))))

(declare-fun b!1381084 () Bool)

(declare-fun lt!608110 () (_ BitVec 32))

(assert (=> b!1381084 (= e!782881 (or (bvslt lt!608110 #b00000000000000000000000000000000) (bvsgt lt!608110 (bvsub (size!46033 a!3464) from!2839))))))

(declare-fun arrayCountValidKeys!0 (array!94197 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1381084 (= lt!608110 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (= (and start!117814 res!922856) b!1381083))

(assert (= (and b!1381083 res!922857) b!1381084))

(declare-fun m!1266371 () Bool)

(assert (=> start!117814 m!1266371))

(declare-fun m!1266373 () Bool)

(assert (=> b!1381083 m!1266373))

(assert (=> b!1381083 m!1266373))

(declare-fun m!1266375 () Bool)

(assert (=> b!1381083 m!1266375))

(declare-fun m!1266377 () Bool)

(assert (=> b!1381084 m!1266377))

(check-sat (not b!1381083) (not b!1381084) (not start!117814))
(check-sat)
(get-model)

(declare-fun d!148939 () Bool)

(assert (=> d!148939 (= (validKeyInArray!0 (select (arr!45482 a!3464) from!2839)) (and (not (= (select (arr!45482 a!3464) from!2839) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45482 a!3464) from!2839) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381083 d!148939))

(declare-fun b!1381100 () Bool)

(declare-fun e!782894 () (_ BitVec 32))

(declare-fun call!66510 () (_ BitVec 32))

(assert (=> b!1381100 (= e!782894 (bvadd #b00000000000000000000000000000001 call!66510))))

(declare-fun b!1381101 () Bool)

(declare-fun e!782893 () (_ BitVec 32))

(assert (=> b!1381101 (= e!782893 e!782894)))

(declare-fun c!128560 () Bool)

(assert (=> b!1381101 (= c!128560 (validKeyInArray!0 (select (arr!45482 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun bm!66507 () Bool)

(assert (=> bm!66507 (= call!66510 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839 #b00000000000000000000000000000001) to!94))))

(declare-fun b!1381102 () Bool)

(assert (=> b!1381102 (= e!782893 #b00000000000000000000000000000000)))

(declare-fun d!148941 () Bool)

(declare-fun lt!608116 () (_ BitVec 32))

(assert (=> d!148941 (and (bvsge lt!608116 #b00000000000000000000000000000000) (bvsle lt!608116 (bvsub (size!46033 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(assert (=> d!148941 (= lt!608116 e!782893)))

(declare-fun c!128561 () Bool)

(assert (=> d!148941 (= c!128561 (bvsge (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (=> d!148941 (and (bvsle (bvadd #b00000000000000000000000000000001 from!2839) to!94) (bvsge (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000) (bvsle to!94 (size!46033 a!3464)))))

(assert (=> d!148941 (= (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94) lt!608116)))

(declare-fun b!1381099 () Bool)

(assert (=> b!1381099 (= e!782894 call!66510)))

(assert (= (and d!148941 c!128561) b!1381102))

(assert (= (and d!148941 (not c!128561)) b!1381101))

(assert (= (and b!1381101 c!128560) b!1381100))

(assert (= (and b!1381101 (not c!128560)) b!1381099))

(assert (= (or b!1381100 b!1381099) bm!66507))

(declare-fun m!1266387 () Bool)

(assert (=> b!1381101 m!1266387))

(assert (=> b!1381101 m!1266387))

(declare-fun m!1266389 () Bool)

(assert (=> b!1381101 m!1266389))

(declare-fun m!1266391 () Bool)

(assert (=> bm!66507 m!1266391))

(assert (=> b!1381084 d!148941))

(declare-fun d!148949 () Bool)

(assert (=> d!148949 (= (array_inv!34427 a!3464) (bvsge (size!46033 a!3464) #b00000000000000000000000000000000))))

(assert (=> start!117814 d!148949))

(check-sat (not b!1381101) (not bm!66507))
(check-sat)
