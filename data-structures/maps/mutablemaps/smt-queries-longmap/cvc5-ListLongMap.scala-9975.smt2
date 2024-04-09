; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117812 () Bool)

(assert start!117812)

(declare-fun res!922851 () Bool)

(declare-fun e!782876 () Bool)

(assert (=> start!117812 (=> (not res!922851) (not e!782876))))

(declare-fun from!2839 () (_ BitVec 32))

(declare-fun to!94 () (_ BitVec 32))

(declare-datatypes ((array!94195 0))(
  ( (array!94196 (arr!45481 (Array (_ BitVec 32) (_ BitVec 64))) (size!46032 (_ BitVec 32))) )
))
(declare-fun a!3464 () array!94195)

(assert (=> start!117812 (= res!922851 (and (bvsle from!2839 to!94) (bvsge from!2839 #b00000000000000000000000000000000) (bvsle to!94 (size!46032 a!3464)) (bvslt (size!46032 a!3464) #b01111111111111111111111111111111) (bvslt from!2839 to!94)))))

(assert (=> start!117812 e!782876))

(assert (=> start!117812 true))

(declare-fun array_inv!34426 (array!94195) Bool)

(assert (=> start!117812 (array_inv!34426 a!3464)))

(declare-fun b!1381077 () Bool)

(declare-fun res!922850 () Bool)

(assert (=> b!1381077 (=> (not res!922850) (not e!782876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381077 (= res!922850 (not (validKeyInArray!0 (select (arr!45481 a!3464) from!2839))))))

(declare-fun b!1381078 () Bool)

(declare-fun lt!608107 () (_ BitVec 32))

(assert (=> b!1381078 (= e!782876 (or (bvslt lt!608107 #b00000000000000000000000000000000) (bvsgt lt!608107 (bvsub (size!46032 a!3464) from!2839))))))

(declare-fun arrayCountValidKeys!0 (array!94195 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1381078 (= lt!608107 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (= (and start!117812 res!922851) b!1381077))

(assert (= (and b!1381077 res!922850) b!1381078))

(declare-fun m!1266363 () Bool)

(assert (=> start!117812 m!1266363))

(declare-fun m!1266365 () Bool)

(assert (=> b!1381077 m!1266365))

(assert (=> b!1381077 m!1266365))

(declare-fun m!1266367 () Bool)

(assert (=> b!1381077 m!1266367))

(declare-fun m!1266369 () Bool)

(assert (=> b!1381078 m!1266369))

(push 1)

(assert (not start!117812))

(assert (not b!1381077))

(assert (not b!1381078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148943 () Bool)

(assert (=> d!148943 (= (array_inv!34426 a!3464) (bvsge (size!46032 a!3464) #b00000000000000000000000000000000))))

(assert (=> start!117812 d!148943))

(declare-fun d!148945 () Bool)

(assert (=> d!148945 (= (validKeyInArray!0 (select (arr!45481 a!3464) from!2839)) (and (not (= (select (arr!45481 a!3464) from!2839) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45481 a!3464) from!2839) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381077 d!148945))

(declare-fun b!1381111 () Bool)

(declare-fun e!782900 () (_ BitVec 32))

(assert (=> b!1381111 (= e!782900 #b00000000000000000000000000000000)))

(declare-fun b!1381112 () Bool)

(declare-fun e!782899 () (_ BitVec 32))

(assert (=> b!1381112 (= e!782900 e!782899)))

(declare-fun c!128566 () Bool)

(assert (=> b!1381112 (= c!128566 (validKeyInArray!0 (select (arr!45481 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(declare-fun d!148947 () Bool)

(declare-fun lt!608119 () (_ BitVec 32))

(assert (=> d!148947 (and (bvsge lt!608119 #b00000000000000000000000000000000) (bvsle lt!608119 (bvsub (size!46032 a!3464) (bvadd #b00000000000000000000000000000001 from!2839))))))

(assert (=> d!148947 (= lt!608119 e!782900)))

(declare-fun c!128567 () Bool)

(assert (=> d!148947 (= c!128567 (bvsge (bvadd #b00000000000000000000000000000001 from!2839) to!94))))

(assert (=> d!148947 (and (bvsle (bvadd #b00000000000000000000000000000001 from!2839) to!94) (bvsge (bvadd #b00000000000000000000000000000001 from!2839) #b00000000000000000000000000000000) (bvsle to!94 (size!46032 a!3464)))))

(assert (=> d!148947 (= (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839) to!94) lt!608119)))

(declare-fun b!1381113 () Bool)

(declare-fun call!66513 () (_ BitVec 32))

(assert (=> b!1381113 (= e!782899 (bvadd #b00000000000000000000000000000001 call!66513))))

(declare-fun bm!66510 () Bool)

(assert (=> bm!66510 (= call!66513 (arrayCountValidKeys!0 a!3464 (bvadd #b00000000000000000000000000000001 from!2839 #b00000000000000000000000000000001) to!94))))

(declare-fun b!1381114 () Bool)

(assert (=> b!1381114 (= e!782899 call!66513)))

(assert (= (and d!148947 c!128567) b!1381111))

(assert (= (and d!148947 (not c!128567)) b!1381112))

(assert (= (and b!1381112 c!128566) b!1381113))

(assert (= (and b!1381112 (not c!128566)) b!1381114))

(assert (= (or b!1381113 b!1381114) bm!66510))

(declare-fun m!1266393 () Bool)

(assert (=> b!1381112 m!1266393))

(assert (=> b!1381112 m!1266393))

(declare-fun m!1266395 () Bool)

(assert (=> b!1381112 m!1266395))

(declare-fun m!1266397 () Bool)

(assert (=> bm!66510 m!1266397))

(assert (=> b!1381078 d!148947))

(push 1)

(assert (not b!1381112))

(assert (not bm!66510))

(check-sat)

