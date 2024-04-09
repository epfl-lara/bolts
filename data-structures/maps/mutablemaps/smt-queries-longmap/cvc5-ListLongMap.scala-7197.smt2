; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92250 () Bool)

(assert start!92250)

(declare-fun b!1048221 () Bool)

(declare-fun res!697496 () Bool)

(declare-fun e!594556 () Bool)

(assert (=> b!1048221 (=> (not res!697496) (not e!594556))))

(declare-datatypes ((array!66026 0))(
  ( (array!66027 (arr!31750 (Array (_ BitVec 32) (_ BitVec 64))) (size!32287 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66026)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048221 (= res!697496 (= (select (arr!31750 a!3488) i!1381) k!2747))))

(declare-fun b!1048222 () Bool)

(declare-fun res!697494 () Bool)

(assert (=> b!1048222 (=> (not res!697494) (not e!594556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048222 (= res!697494 (validKeyInArray!0 k!2747))))

(declare-fun b!1048223 () Bool)

(declare-fun res!697493 () Bool)

(assert (=> b!1048223 (=> (not res!697493) (not e!594556))))

(declare-datatypes ((List!22193 0))(
  ( (Nil!22190) (Cons!22189 (h!23398 (_ BitVec 64)) (t!31507 List!22193)) )
))
(declare-fun arrayNoDuplicates!0 (array!66026 (_ BitVec 32) List!22193) Bool)

(assert (=> b!1048223 (= res!697493 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22190))))

(declare-fun res!697497 () Bool)

(assert (=> start!92250 (=> (not res!697497) (not e!594556))))

(assert (=> start!92250 (= res!697497 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32287 a!3488)) (bvslt (size!32287 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92250 e!594556))

(assert (=> start!92250 true))

(declare-fun array_inv!24372 (array!66026) Bool)

(assert (=> start!92250 (array_inv!24372 a!3488)))

(declare-fun b!1048224 () Bool)

(declare-fun e!594555 () Bool)

(assert (=> b!1048224 (= e!594556 e!594555)))

(declare-fun res!697495 () Bool)

(assert (=> b!1048224 (=> (not res!697495) (not e!594555))))

(declare-fun lt!463138 () array!66026)

(declare-fun arrayContainsKey!0 (array!66026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048224 (= res!697495 (arrayContainsKey!0 lt!463138 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048224 (= lt!463138 (array!66027 (store (arr!31750 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32287 a!3488)))))

(declare-fun b!1048225 () Bool)

(declare-fun e!594554 () Bool)

(assert (=> b!1048225 (= e!594555 e!594554)))

(declare-fun res!697492 () Bool)

(assert (=> b!1048225 (=> (not res!697492) (not e!594554))))

(declare-fun lt!463137 () (_ BitVec 32))

(assert (=> b!1048225 (= res!697492 (not (= lt!463137 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66026 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048225 (= lt!463137 (arrayScanForKey!0 lt!463138 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048226 () Bool)

(assert (=> b!1048226 (= e!594554 (not (or (bvsle lt!463137 i!1381) (bvslt lt!463137 #b00000000000000000000000000000000) (bvslt lt!463137 (size!32287 a!3488)))))))

(assert (=> b!1048226 (= (select (store (arr!31750 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463137) k!2747)))

(assert (= (and start!92250 res!697497) b!1048223))

(assert (= (and b!1048223 res!697493) b!1048222))

(assert (= (and b!1048222 res!697494) b!1048221))

(assert (= (and b!1048221 res!697496) b!1048224))

(assert (= (and b!1048224 res!697495) b!1048225))

(assert (= (and b!1048225 res!697492) b!1048226))

(declare-fun m!969375 () Bool)

(assert (=> b!1048225 m!969375))

(declare-fun m!969377 () Bool)

(assert (=> b!1048223 m!969377))

(declare-fun m!969379 () Bool)

(assert (=> start!92250 m!969379))

(declare-fun m!969381 () Bool)

(assert (=> b!1048226 m!969381))

(declare-fun m!969383 () Bool)

(assert (=> b!1048226 m!969383))

(declare-fun m!969385 () Bool)

(assert (=> b!1048222 m!969385))

(declare-fun m!969387 () Bool)

(assert (=> b!1048224 m!969387))

(assert (=> b!1048224 m!969381))

(declare-fun m!969389 () Bool)

(assert (=> b!1048221 m!969389))

(push 1)

(assert (not b!1048222))

(assert (not b!1048223))

(assert (not b!1048224))

(assert (not b!1048225))

(assert (not start!92250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127613 () Bool)

(assert (=> d!127613 (= (array_inv!24372 a!3488) (bvsge (size!32287 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92250 d!127613))

(declare-fun d!127615 () Bool)

(assert (=> d!127615 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1048222 d!127615))

(declare-fun d!127617 () Bool)

(declare-fun res!697547 () Bool)

(declare-fun e!594601 () Bool)

(assert (=> d!127617 (=> res!697547 e!594601)))

(assert (=> d!127617 (= res!697547 (bvsge #b00000000000000000000000000000000 (size!32287 a!3488)))))

(assert (=> d!127617 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22190) e!594601)))

(declare-fun b!1048285 () Bool)

(declare-fun e!594600 () Bool)

(declare-fun call!44717 () Bool)

(assert (=> b!1048285 (= e!594600 call!44717)))

(declare-fun b!1048286 () Bool)

(declare-fun e!594602 () Bool)

(declare-fun contains!6121 (List!22193 (_ BitVec 64)) Bool)

(assert (=> b!1048286 (= e!594602 (contains!6121 Nil!22190 (select (arr!31750 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1048287 () Bool)

(declare-fun e!594599 () Bool)

(assert (=> b!1048287 (= e!594599 e!594600)))

(declare-fun c!106832 () Bool)

(assert (=> b!1048287 (= c!106832 (validKeyInArray!0 (select (arr!31750 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1048288 () Bool)

(assert (=> b!1048288 (= e!594600 call!44717)))

(declare-fun b!1048289 () Bool)

(assert (=> b!1048289 (= e!594601 e!594599)))

(declare-fun res!697546 () Bool)

(assert (=> b!1048289 (=> (not res!697546) (not e!594599))))

(assert (=> b!1048289 (= res!697546 (not e!594602))))

(declare-fun res!697548 () Bool)

(assert (=> b!1048289 (=> (not res!697548) (not e!594602))))

(assert (=> b!1048289 (= res!697548 (validKeyInArray!0 (select (arr!31750 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44714 () Bool)

(assert (=> bm!44714 (= call!44717 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106832 (Cons!22189 (select (arr!31750 a!3488) #b00000000000000000000000000000000) Nil!22190) Nil!22190)))))

(assert (= (and d!127617 (not res!697547)) b!1048289))

(assert (= (and b!1048289 res!697548) b!1048286))

(assert (= (and b!1048289 res!697546) b!1048287))

(assert (= (and b!1048287 c!106832) b!1048285))

(assert (= (and b!1048287 (not c!106832)) b!1048288))

(assert (= (or b!1048285 b!1048288) bm!44714))

(declare-fun m!969431 () Bool)

(assert (=> b!1048286 m!969431))

(assert (=> b!1048286 m!969431))

(declare-fun m!969433 () Bool)

(assert (=> b!1048286 m!969433))

(assert (=> b!1048287 m!969431))

(assert (=> b!1048287 m!969431))

(declare-fun m!969435 () Bool)

(assert (=> b!1048287 m!969435))

(assert (=> b!1048289 m!969431))

(assert (=> b!1048289 m!969431))

(assert (=> b!1048289 m!969435))

(assert (=> bm!44714 m!969431))

(declare-fun m!969437 () Bool)

(assert (=> bm!44714 m!969437))

(assert (=> b!1048223 d!127617))

(declare-fun d!127627 () Bool)

(declare-fun res!697565 () Bool)

(declare-fun e!594623 () Bool)

(assert (=> d!127627 (=> res!697565 e!594623)))

(assert (=> d!127627 (= res!697565 (= (select (arr!31750 lt!463138) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127627 (= (arrayContainsKey!0 lt!463138 k!2747 #b00000000000000000000000000000000) e!594623)))

(declare-fun b!1048314 () Bool)

(declare-fun e!594624 () Bool)

(assert (=> b!1048314 (= e!594623 e!594624)))

(declare-fun res!697566 () Bool)

(assert (=> b!1048314 (=> (not res!697566) (not e!594624))))

(assert (=> b!1048314 (= res!697566 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32287 lt!463138)))))

(declare-fun b!1048315 () Bool)

(assert (=> b!1048315 (= e!594624 (arrayContainsKey!0 lt!463138 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127627 (not res!697565)) b!1048314))

(assert (= (and b!1048314 res!697566) b!1048315))

(declare-fun m!969439 () Bool)

(assert (=> d!127627 m!969439))

(declare-fun m!969441 () Bool)

(assert (=> b!1048315 m!969441))

(assert (=> b!1048224 d!127627))

(declare-fun d!127629 () Bool)

(declare-fun lt!463156 () (_ BitVec 32))

(assert (=> d!127629 (and (or (bvslt lt!463156 #b00000000000000000000000000000000) (bvsge lt!463156 (size!32287 lt!463138)) (and (bvsge lt!463156 #b00000000000000000000000000000000) (bvslt lt!463156 (size!32287 lt!463138)))) (bvsge lt!463156 #b00000000000000000000000000000000) (bvslt lt!463156 (size!32287 lt!463138)) (= (select (arr!31750 lt!463138) lt!463156) k!2747))))

(declare-fun e!594635 () (_ BitVec 32))

(assert (=> d!127629 (= lt!463156 e!594635)))

(declare-fun c!106841 () Bool)

(assert (=> d!127629 (= c!106841 (= (select (arr!31750 lt!463138) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32287 lt!463138)) (bvslt (size!32287 lt!463138) #b01111111111111111111111111111111))))

(assert (=> d!127629 (= (arrayScanForKey!0 lt!463138 k!2747 #b00000000000000000000000000000000) lt!463156)))

(declare-fun b!1048330 () Bool)

(assert (=> b!1048330 (= e!594635 #b00000000000000000000000000000000)))

(declare-fun b!1048331 () Bool)

(assert (=> b!1048331 (= e!594635 (arrayScanForKey!0 lt!463138 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127629 c!106841) b!1048330))

(assert (= (and d!127629 (not c!106841)) b!1048331))

(declare-fun m!969459 () Bool)

(assert (=> d!127629 m!969459))

(assert (=> d!127629 m!969439))

(declare-fun m!969461 () Bool)

(assert (=> b!1048331 m!969461))

(assert (=> b!1048225 d!127629))

(push 1)

(assert (not b!1048315))

(assert (not bm!44714))

(assert (not b!1048287))

(assert (not b!1048331))

(assert (not b!1048289))

(assert (not b!1048286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

