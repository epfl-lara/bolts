; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104496 () Bool)

(assert start!104496)

(declare-fun b!1246511 () Bool)

(declare-fun e!706995 () Bool)

(declare-datatypes ((array!80233 0))(
  ( (array!80234 (arr!38689 (Array (_ BitVec 32) (_ BitVec 64))) (size!39226 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80233)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27670 0))(
  ( (Nil!27667) (Cons!27666 (h!28875 (_ BitVec 64)) (t!41146 List!27670)) )
))
(declare-fun arrayNoDuplicates!0 (array!80233 (_ BitVec 32) List!27670) Bool)

(assert (=> b!1246511 (= e!706995 (not (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27667)))))

(declare-fun res!831916 () Bool)

(declare-fun e!706996 () Bool)

(assert (=> start!104496 (=> (not res!831916) (not e!706996))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104496 (= res!831916 (and (bvslt (size!39226 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39226 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39226 a!3892))))))

(assert (=> start!104496 e!706996))

(declare-fun array_inv!29465 (array!80233) Bool)

(assert (=> start!104496 (array_inv!29465 a!3892)))

(assert (=> start!104496 true))

(declare-fun b!1246512 () Bool)

(declare-fun res!831914 () Bool)

(assert (=> b!1246512 (=> (not res!831914) (not e!706996))))

(assert (=> b!1246512 (= res!831914 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39226 a!3892)) (not (= newFrom!287 (size!39226 a!3892)))))))

(declare-fun b!1246513 () Bool)

(declare-datatypes ((Unit!41383 0))(
  ( (Unit!41384) )
))
(declare-fun e!706994 () Unit!41383)

(declare-fun Unit!41385 () Unit!41383)

(assert (=> b!1246513 (= e!706994 Unit!41385)))

(declare-fun b!1246514 () Bool)

(declare-fun lt!563084 () Unit!41383)

(assert (=> b!1246514 (= e!706994 lt!563084)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80233 List!27670 List!27670 (_ BitVec 32)) Unit!41383)

(assert (=> b!1246514 (= lt!563084 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27666 (select (arr!38689 a!3892) from!3270) Nil!27667) Nil!27667 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246514 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27667)))

(declare-fun b!1246515 () Bool)

(declare-fun res!831913 () Bool)

(assert (=> b!1246515 (=> (not res!831913) (not e!706996))))

(assert (=> b!1246515 (= res!831913 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27667))))

(declare-fun b!1246516 () Bool)

(assert (=> b!1246516 (= e!706996 e!706995)))

(declare-fun res!831915 () Bool)

(assert (=> b!1246516 (=> (not res!831915) (not e!706995))))

(assert (=> b!1246516 (= res!831915 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!563083 () Unit!41383)

(assert (=> b!1246516 (= lt!563083 e!706994)))

(declare-fun c!121986 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246516 (= c!121986 (validKeyInArray!0 (select (arr!38689 a!3892) from!3270)))))

(assert (= (and start!104496 res!831916) b!1246515))

(assert (= (and b!1246515 res!831913) b!1246512))

(assert (= (and b!1246512 res!831914) b!1246516))

(assert (= (and b!1246516 c!121986) b!1246514))

(assert (= (and b!1246516 (not c!121986)) b!1246513))

(assert (= (and b!1246516 res!831915) b!1246511))

(declare-fun m!1148351 () Bool)

(assert (=> b!1246515 m!1148351))

(declare-fun m!1148353 () Bool)

(assert (=> b!1246511 m!1148353))

(declare-fun m!1148355 () Bool)

(assert (=> b!1246516 m!1148355))

(assert (=> b!1246516 m!1148355))

(declare-fun m!1148357 () Bool)

(assert (=> b!1246516 m!1148357))

(declare-fun m!1148359 () Bool)

(assert (=> start!104496 m!1148359))

(assert (=> b!1246514 m!1148355))

(declare-fun m!1148361 () Bool)

(assert (=> b!1246514 m!1148361))

(assert (=> b!1246514 m!1148353))

(check-sat (not b!1246514) (not b!1246515) (not b!1246516) (not start!104496) (not b!1246511))
(check-sat)
(get-model)

(declare-fun b!1246545 () Bool)

(declare-fun e!707019 () Bool)

(declare-fun call!61526 () Bool)

(assert (=> b!1246545 (= e!707019 call!61526)))

(declare-fun d!137571 () Bool)

(declare-fun res!831935 () Bool)

(declare-fun e!707017 () Bool)

(assert (=> d!137571 (=> res!831935 e!707017)))

(assert (=> d!137571 (= res!831935 (bvsge from!3270 (size!39226 a!3892)))))

(assert (=> d!137571 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27667) e!707017)))

(declare-fun c!121992 () Bool)

(declare-fun bm!61523 () Bool)

(assert (=> bm!61523 (= call!61526 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121992 (Cons!27666 (select (arr!38689 a!3892) from!3270) Nil!27667) Nil!27667)))))

(declare-fun b!1246546 () Bool)

(declare-fun e!707020 () Bool)

(declare-fun contains!7475 (List!27670 (_ BitVec 64)) Bool)

(assert (=> b!1246546 (= e!707020 (contains!7475 Nil!27667 (select (arr!38689 a!3892) from!3270)))))

(declare-fun b!1246547 () Bool)

(assert (=> b!1246547 (= e!707019 call!61526)))

(declare-fun b!1246548 () Bool)

(declare-fun e!707018 () Bool)

(assert (=> b!1246548 (= e!707017 e!707018)))

(declare-fun res!831936 () Bool)

(assert (=> b!1246548 (=> (not res!831936) (not e!707018))))

(assert (=> b!1246548 (= res!831936 (not e!707020))))

(declare-fun res!831937 () Bool)

(assert (=> b!1246548 (=> (not res!831937) (not e!707020))))

(assert (=> b!1246548 (= res!831937 (validKeyInArray!0 (select (arr!38689 a!3892) from!3270)))))

(declare-fun b!1246549 () Bool)

(assert (=> b!1246549 (= e!707018 e!707019)))

(assert (=> b!1246549 (= c!121992 (validKeyInArray!0 (select (arr!38689 a!3892) from!3270)))))

(assert (= (and d!137571 (not res!831935)) b!1246548))

(assert (= (and b!1246548 res!831937) b!1246546))

(assert (= (and b!1246548 res!831936) b!1246549))

(assert (= (and b!1246549 c!121992) b!1246545))

(assert (= (and b!1246549 (not c!121992)) b!1246547))

(assert (= (or b!1246545 b!1246547) bm!61523))

(assert (=> bm!61523 m!1148355))

(declare-fun m!1148377 () Bool)

(assert (=> bm!61523 m!1148377))

(assert (=> b!1246546 m!1148355))

(assert (=> b!1246546 m!1148355))

(declare-fun m!1148379 () Bool)

(assert (=> b!1246546 m!1148379))

(assert (=> b!1246548 m!1148355))

(assert (=> b!1246548 m!1148355))

(assert (=> b!1246548 m!1148357))

(assert (=> b!1246549 m!1148355))

(assert (=> b!1246549 m!1148355))

(assert (=> b!1246549 m!1148357))

(assert (=> b!1246515 d!137571))

(declare-fun d!137581 () Bool)

(assert (=> d!137581 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27667)))

(declare-fun lt!563096 () Unit!41383)

(declare-fun choose!80 (array!80233 List!27670 List!27670 (_ BitVec 32)) Unit!41383)

(assert (=> d!137581 (= lt!563096 (choose!80 a!3892 (Cons!27666 (select (arr!38689 a!3892) from!3270) Nil!27667) Nil!27667 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> d!137581 (bvslt (size!39226 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137581 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27666 (select (arr!38689 a!3892) from!3270) Nil!27667) Nil!27667 (bvadd #b00000000000000000000000000000001 from!3270)) lt!563096)))

(declare-fun bs!35123 () Bool)

(assert (= bs!35123 d!137581))

(assert (=> bs!35123 m!1148353))

(declare-fun m!1148381 () Bool)

(assert (=> bs!35123 m!1148381))

(assert (=> b!1246514 d!137581))

(declare-fun b!1246570 () Bool)

(declare-fun e!707039 () Bool)

(declare-fun call!61531 () Bool)

(assert (=> b!1246570 (= e!707039 call!61531)))

(declare-fun d!137583 () Bool)

(declare-fun res!831950 () Bool)

(declare-fun e!707037 () Bool)

(assert (=> d!137583 (=> res!831950 e!707037)))

(assert (=> d!137583 (= res!831950 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39226 a!3892)))))

(assert (=> d!137583 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27667) e!707037)))

(declare-fun bm!61528 () Bool)

(declare-fun c!121997 () Bool)

(assert (=> bm!61528 (= call!61531 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121997 (Cons!27666 (select (arr!38689 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27667) Nil!27667)))))

(declare-fun b!1246571 () Bool)

(declare-fun e!707040 () Bool)

(assert (=> b!1246571 (= e!707040 (contains!7475 Nil!27667 (select (arr!38689 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246572 () Bool)

(assert (=> b!1246572 (= e!707039 call!61531)))

(declare-fun b!1246573 () Bool)

(declare-fun e!707038 () Bool)

(assert (=> b!1246573 (= e!707037 e!707038)))

(declare-fun res!831951 () Bool)

(assert (=> b!1246573 (=> (not res!831951) (not e!707038))))

(assert (=> b!1246573 (= res!831951 (not e!707040))))

(declare-fun res!831952 () Bool)

(assert (=> b!1246573 (=> (not res!831952) (not e!707040))))

(assert (=> b!1246573 (= res!831952 (validKeyInArray!0 (select (arr!38689 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246574 () Bool)

(assert (=> b!1246574 (= e!707038 e!707039)))

(assert (=> b!1246574 (= c!121997 (validKeyInArray!0 (select (arr!38689 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(assert (= (and d!137583 (not res!831950)) b!1246573))

(assert (= (and b!1246573 res!831952) b!1246571))

(assert (= (and b!1246573 res!831951) b!1246574))

(assert (= (and b!1246574 c!121997) b!1246570))

(assert (= (and b!1246574 (not c!121997)) b!1246572))

(assert (= (or b!1246570 b!1246572) bm!61528))

(declare-fun m!1148383 () Bool)

(assert (=> bm!61528 m!1148383))

(declare-fun m!1148385 () Bool)

(assert (=> bm!61528 m!1148385))

(assert (=> b!1246571 m!1148383))

(assert (=> b!1246571 m!1148383))

(declare-fun m!1148387 () Bool)

(assert (=> b!1246571 m!1148387))

(assert (=> b!1246573 m!1148383))

(assert (=> b!1246573 m!1148383))

(declare-fun m!1148389 () Bool)

(assert (=> b!1246573 m!1148389))

(assert (=> b!1246574 m!1148383))

(assert (=> b!1246574 m!1148383))

(assert (=> b!1246574 m!1148389))

(assert (=> b!1246514 d!137583))

(declare-fun d!137585 () Bool)

(assert (=> d!137585 (= (array_inv!29465 a!3892) (bvsge (size!39226 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104496 d!137585))

(declare-fun d!137587 () Bool)

(assert (=> d!137587 (= (validKeyInArray!0 (select (arr!38689 a!3892) from!3270)) (and (not (= (select (arr!38689 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38689 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1246516 d!137587))

(assert (=> b!1246511 d!137583))

(check-sat (not bm!61523) (not bm!61528) (not b!1246571) (not b!1246548) (not d!137581) (not b!1246573) (not b!1246549) (not b!1246546) (not b!1246574))
(check-sat)
