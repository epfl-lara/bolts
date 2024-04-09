; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117782 () Bool)

(assert start!117782)

(declare-fun res!922814 () Bool)

(declare-fun e!782821 () Bool)

(assert (=> start!117782 (=> (not res!922814) (not e!782821))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94180 0))(
  ( (array!94181 (arr!45475 (Array (_ BitVec 32) (_ BitVec 64))) (size!46026 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94180)

(assert (=> start!117782 (= res!922814 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46026 a!3464)) (bvslt (size!46026 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117782 e!782821))

(assert (=> start!117782 true))

(declare-fun array_inv!34420 (array!94180) Bool)

(assert (=> start!117782 (array_inv!34420 a!3464)))

(declare-fun b!1381005 () Bool)

(declare-fun res!922815 () Bool)

(assert (=> b!1381005 (=> (not res!922815) (not e!782821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381005 (= res!922815 (validKeyInArray!0 (select (arr!45475 a!3464) from!2839)))))

(declare-fun b!1381006 () Bool)

(declare-fun lt!608089 () (_ BitVec 32))

(assert (=> b!1381006 (= e!782821 (or (bvslt lt!608089 #b00000000000000000000000000000000) (bvsgt lt!608089 (bvsub (size!46026 a!3464) from!2839))))))

(declare-fun arrayCountValidKeys!0 (array!94180 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1381006 (= lt!608089 (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94)))))

(assert (= (and start!117782 res!922814) b!1381005))

(assert (= (and b!1381005 res!922815) b!1381006))

(declare-fun m!1266303 () Bool)

(assert (=> start!117782 m!1266303))

(declare-fun m!1266305 () Bool)

(assert (=> b!1381005 m!1266305))

(assert (=> b!1381005 m!1266305))

(declare-fun m!1266307 () Bool)

(assert (=> b!1381005 m!1266307))

(declare-fun m!1266309 () Bool)

(assert (=> b!1381006 m!1266309))

(push 1)

(assert (not b!1381005))

(assert (not b!1381006))

(assert (not start!117782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148921 () Bool)

(assert (=> d!148921 (= (validKeyInArray!0 (select (arr!45475 a!3464) from!2839)) (and (not (= (select (arr!45475 a!3464) from!2839) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45475 a!3464) from!2839) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381005 d!148921))

(declare-fun b!1381039 () Bool)

(declare-fun e!782845 () (_ BitVec 32))

(declare-fun call!66504 () (_ BitVec 32))

(assert (=> b!1381039 (= e!782845 (bvadd #b00000000000000000000000000000001 call!66504))))

(declare-fun bm!66501 () Bool)

(assert (=> bm!66501 (= call!66504 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839 #b00000000000000000000000000000001) to!94))))

(declare-fun b!1381040 () Bool)

(assert (=> b!1381040 (= e!782845 call!66504)))

(declare-fun d!148923 () Bool)

(declare-fun lt!608101 () (_ BitVec 32))

(assert (=> d!148923 (and (bvsge lt!608101 #b00000000000000000000000000000000) (bvsle lt!608101 (bvsub (size!46026 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun e!782846 () (_ BitVec 32))

(assert (=> d!148923 (= lt!608101 e!782846)))

(declare-fun c!128549 () Bool)

(assert (=> d!148923 (= c!128549 (bvsge (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (=> d!148923 (and (bvsle (bvadd #b00000000000000000000000000000001 from!2839) to!94) (bvsge (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000) (bvsle to!94 (size!46026 a!3464)))))

(assert (=> d!148923 (= (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94) lt!608101)))

(declare-fun b!1381041 () Bool)

(assert (=> b!1381041 (= e!782846 e!782845)))

(declare-fun c!128548 () Bool)

(assert (=> b!1381041 (= c!128548 (validKeyInArray!0 (select (arr!45475 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun b!1381042 () Bool)

(assert (=> b!1381042 (= e!782846 #b00000000000000000000000000000000)))

(assert (= (and d!148923 c!128549) b!1381042))

(assert (= (and d!148923 (not c!128549)) b!1381041))

(assert (= (and b!1381041 c!128548) b!1381039))

(assert (= (and b!1381041 (not c!128548)) b!1381040))

(assert (= (or b!1381039 b!1381040) bm!66501))

(declare-fun m!1266333 () Bool)

(assert (=> bm!66501 m!1266333))

(declare-fun m!1266335 () Bool)

(assert (=> b!1381041 m!1266335))

(assert (=> b!1381041 m!1266335))

(declare-fun m!1266337 () Bool)

(assert (=> b!1381041 m!1266337))

(assert (=> b!1381006 d!148923))

(declare-fun d!148929 () Bool)

(assert (=> d!148929 (= (array_inv!34420 a!3464) (bvsge (size!46026 a!3464) #b00000000000000000000000000000000))))

(assert (=> start!117782 d!148929))

(push 1)

(assert (not bm!66501))

(assert (not b!1381041))

(check-sat)

