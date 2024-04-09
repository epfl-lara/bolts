; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104348 () Bool)

(assert start!104348)

(declare-fun b!1245710 () Bool)

(declare-fun e!706444 () Bool)

(declare-datatypes ((List!27650 0))(
  ( (Nil!27647) (Cons!27646 (h!28855 (_ BitVec 64)) (t!41126 List!27650)) )
))
(declare-fun contains!7468 (List!27650 (_ BitVec 64)) Bool)

(assert (=> b!1245710 (= e!706444 (contains!7468 Nil!27647 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245711 () Bool)

(declare-fun res!831262 () Bool)

(declare-fun e!706447 () Bool)

(assert (=> b!1245711 (=> (not res!831262) (not e!706447))))

(declare-datatypes ((array!80184 0))(
  ( (array!80185 (arr!38669 (Array (_ BitVec 32) (_ BitVec 64))) (size!39206 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80184)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1245711 (= res!831262 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39206 a!3892)) (not (= newFrom!287 (size!39206 a!3892)))))))

(declare-fun b!1245712 () Bool)

(declare-fun res!831258 () Bool)

(declare-fun e!706446 () Bool)

(assert (=> b!1245712 (=> (not res!831258) (not e!706446))))

(declare-fun lt!562910 () List!27650)

(declare-fun noDuplicate!2058 (List!27650) Bool)

(assert (=> b!1245712 (= res!831258 (noDuplicate!2058 lt!562910))))

(declare-fun b!1245713 () Bool)

(declare-fun res!831261 () Bool)

(assert (=> b!1245713 (=> (not res!831261) (not e!706446))))

(assert (=> b!1245713 (= res!831261 (not (contains!7468 lt!562910 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245714 () Bool)

(declare-fun res!831255 () Bool)

(assert (=> b!1245714 (=> (not res!831255) (not e!706446))))

(assert (=> b!1245714 (= res!831255 (not (contains!7468 lt!562910 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245715 () Bool)

(assert (=> b!1245715 (= e!706446 e!706444)))

(declare-fun res!831259 () Bool)

(assert (=> b!1245715 (=> res!831259 e!706444)))

(assert (=> b!1245715 (= res!831259 (contains!7468 Nil!27647 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245716 () Bool)

(declare-fun res!831256 () Bool)

(assert (=> b!1245716 (=> (not res!831256) (not e!706447))))

(declare-fun arrayNoDuplicates!0 (array!80184 (_ BitVec 32) List!27650) Bool)

(assert (=> b!1245716 (= res!831256 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27647))))

(declare-fun res!831260 () Bool)

(assert (=> start!104348 (=> (not res!831260) (not e!706447))))

(assert (=> start!104348 (= res!831260 (and (bvslt (size!39206 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39206 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39206 a!3892))))))

(assert (=> start!104348 e!706447))

(declare-fun array_inv!29445 (array!80184) Bool)

(assert (=> start!104348 (array_inv!29445 a!3892)))

(assert (=> start!104348 true))

(declare-fun b!1245717 () Bool)

(declare-fun res!831257 () Bool)

(assert (=> b!1245717 (=> (not res!831257) (not e!706447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245717 (= res!831257 (validKeyInArray!0 (select (arr!38669 a!3892) from!3270)))))

(declare-fun b!1245718 () Bool)

(assert (=> b!1245718 (= e!706447 e!706446)))

(declare-fun res!831254 () Bool)

(assert (=> b!1245718 (=> (not res!831254) (not e!706446))))

(assert (=> b!1245718 (= res!831254 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1245718 (= lt!562910 (Cons!27646 (select (arr!38669 a!3892) from!3270) Nil!27647))))

(assert (= (and start!104348 res!831260) b!1245716))

(assert (= (and b!1245716 res!831256) b!1245711))

(assert (= (and b!1245711 res!831262) b!1245717))

(assert (= (and b!1245717 res!831257) b!1245718))

(assert (= (and b!1245718 res!831254) b!1245712))

(assert (= (and b!1245712 res!831258) b!1245714))

(assert (= (and b!1245714 res!831255) b!1245713))

(assert (= (and b!1245713 res!831261) b!1245715))

(assert (= (and b!1245715 (not res!831259)) b!1245710))

(declare-fun m!1147733 () Bool)

(assert (=> b!1245716 m!1147733))

(declare-fun m!1147735 () Bool)

(assert (=> b!1245718 m!1147735))

(declare-fun m!1147737 () Bool)

(assert (=> b!1245710 m!1147737))

(declare-fun m!1147739 () Bool)

(assert (=> start!104348 m!1147739))

(declare-fun m!1147741 () Bool)

(assert (=> b!1245715 m!1147741))

(declare-fun m!1147743 () Bool)

(assert (=> b!1245713 m!1147743))

(declare-fun m!1147745 () Bool)

(assert (=> b!1245712 m!1147745))

(assert (=> b!1245717 m!1147735))

(assert (=> b!1245717 m!1147735))

(declare-fun m!1147747 () Bool)

(assert (=> b!1245717 m!1147747))

(declare-fun m!1147749 () Bool)

(assert (=> b!1245714 m!1147749))

(push 1)

(assert (not b!1245717))

(assert (not b!1245712))

(assert (not b!1245716))

(assert (not start!104348))

(assert (not b!1245710))

(assert (not b!1245714))

(assert (not b!1245715))

(assert (not b!1245713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1245749 () Bool)

(declare-fun e!706476 () Bool)

(declare-fun e!706477 () Bool)

(assert (=> b!1245749 (= e!706476 e!706477)))

(declare-fun c!121917 () Bool)

(assert (=> b!1245749 (= c!121917 (validKeyInArray!0 (select (arr!38669 a!3892) from!3270)))))

(declare-fun b!1245750 () Bool)

(declare-fun call!61496 () Bool)

(assert (=> b!1245750 (= e!706477 call!61496)))

(declare-fun bm!61493 () Bool)

(assert (=> bm!61493 (= call!61496 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121917 (Cons!27646 (select (arr!38669 a!3892) from!3270) Nil!27647) Nil!27647)))))

(declare-fun b!1245751 () Bool)

(declare-fun e!706478 () Bool)

(assert (=> b!1245751 (= e!706478 (contains!7468 Nil!27647 (select (arr!38669 a!3892) from!3270)))))

(declare-fun b!1245752 () Bool)

(assert (=> b!1245752 (= e!706477 call!61496)))

(declare-fun b!1245753 () Bool)

(declare-fun e!706479 () Bool)

(assert (=> b!1245753 (= e!706479 e!706476)))

(declare-fun res!831290 () Bool)

(assert (=> b!1245753 (=> (not res!831290) (not e!706476))))

(assert (=> b!1245753 (= res!831290 (not e!706478))))

(declare-fun res!831291 () Bool)

(assert (=> b!1245753 (=> (not res!831291) (not e!706478))))

(assert (=> b!1245753 (= res!831291 (validKeyInArray!0 (select (arr!38669 a!3892) from!3270)))))

(declare-fun d!137397 () Bool)

(declare-fun res!831289 () Bool)

(assert (=> d!137397 (=> res!831289 e!706479)))

(assert (=> d!137397 (= res!831289 (bvsge from!3270 (size!39206 a!3892)))))

(assert (=> d!137397 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27647) e!706479)))

(assert (= (and d!137397 (not res!831289)) b!1245753))

(assert (= (and b!1245753 res!831291) b!1245751))

(assert (= (and b!1245753 res!831290) b!1245749))

(assert (= (and b!1245749 c!121917) b!1245752))

(assert (= (and b!1245749 (not c!121917)) b!1245750))

(assert (= (or b!1245752 b!1245750) bm!61493))

(assert (=> b!1245749 m!1147735))

(assert (=> b!1245749 m!1147735))

(assert (=> b!1245749 m!1147747))

(assert (=> bm!61493 m!1147735))

(declare-fun m!1147773 () Bool)

(assert (=> bm!61493 m!1147773))

(assert (=> b!1245751 m!1147735))

(assert (=> b!1245751 m!1147735))

(declare-fun m!1147775 () Bool)

(assert (=> b!1245751 m!1147775))

(assert (=> b!1245753 m!1147735))

(assert (=> b!1245753 m!1147735))

(assert (=> b!1245753 m!1147747))

(assert (=> b!1245716 d!137397))

(declare-fun d!137407 () Bool)

(declare-fun lt!562920 () Bool)

(declare-fun content!632 (List!27650) (Set (_ BitVec 64)))

(assert (=> d!137407 (= lt!562920 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!632 Nil!27647)))))

(declare-fun e!706500 () Bool)

(assert (=> d!137407 (= lt!562920 e!706500)))

(declare-fun res!831308 () Bool)

(assert (=> d!137407 (=> (not res!831308) (not e!706500))))

(assert (=> d!137407 (= res!831308 (is-Cons!27646 Nil!27647))))

(assert (=> d!137407 (= (contains!7468 Nil!27647 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562920)))

(declare-fun b!1245778 () Bool)

(declare-fun e!706501 () Bool)

(assert (=> b!1245778 (= e!706500 e!706501)))

(declare-fun res!831309 () Bool)

(assert (=> b!1245778 (=> res!831309 e!706501)))

(assert (=> b!1245778 (= res!831309 (= (h!28855 Nil!27647) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245779 () Bool)

(assert (=> b!1245779 (= e!706501 (contains!7468 (t!41126 Nil!27647) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137407 res!831308) b!1245778))

(assert (= (and b!1245778 (not res!831309)) b!1245779))

(declare-fun m!1147777 () Bool)

(assert (=> d!137407 m!1147777))

(declare-fun m!1147779 () Bool)

(assert (=> d!137407 m!1147779))

(declare-fun m!1147781 () Bool)

(assert (=> b!1245779 m!1147781))

(assert (=> b!1245710 d!137407))

(declare-fun d!137409 () Bool)

(declare-fun res!831320 () Bool)

(declare-fun e!706514 () Bool)

(assert (=> d!137409 (=> res!831320 e!706514)))

(assert (=> d!137409 (= res!831320 (is-Nil!27647 lt!562910))))

(assert (=> d!137409 (= (noDuplicate!2058 lt!562910) e!706514)))

(declare-fun b!1245794 () Bool)

(declare-fun e!706515 () Bool)

(assert (=> b!1245794 (= e!706514 e!706515)))

(declare-fun res!831321 () Bool)

(assert (=> b!1245794 (=> (not res!831321) (not e!706515))))

(assert (=> b!1245794 (= res!831321 (not (contains!7468 (t!41126 lt!562910) (h!28855 lt!562910))))))

(declare-fun b!1245795 () Bool)

(assert (=> b!1245795 (= e!706515 (noDuplicate!2058 (t!41126 lt!562910)))))

(assert (= (and d!137409 (not res!831320)) b!1245794))

(assert (= (and b!1245794 res!831321) b!1245795))

(declare-fun m!1147787 () Bool)

(assert (=> b!1245794 m!1147787))

(declare-fun m!1147789 () Bool)

(assert (=> b!1245795 m!1147789))

(assert (=> b!1245712 d!137409))

(declare-fun d!137413 () Bool)

(assert (=> d!137413 (= (validKeyInArray!0 (select (arr!38669 a!3892) from!3270)) (and (not (= (select (arr!38669 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38669 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245717 d!137413))

(declare-fun d!137417 () Bool)

(assert (=> d!137417 (= (array_inv!29445 a!3892) (bvsge (size!39206 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104348 d!137417))

(declare-fun d!137421 () Bool)

(declare-fun lt!562924 () Bool)

(assert (=> d!137421 (= lt!562924 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!632 lt!562910)))))

(declare-fun e!706522 () Bool)

(assert (=> d!137421 (= lt!562924 e!706522)))

(declare-fun res!831328 () Bool)

(assert (=> d!137421 (=> (not res!831328) (not e!706522))))

(assert (=> d!137421 (= res!831328 (is-Cons!27646 lt!562910))))

(assert (=> d!137421 (= (contains!7468 lt!562910 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562924)))

(declare-fun b!1245802 () Bool)

(declare-fun e!706523 () Bool)

(assert (=> b!1245802 (= e!706522 e!706523)))

(declare-fun res!831329 () Bool)

(assert (=> b!1245802 (=> res!831329 e!706523)))

(assert (=> b!1245802 (= res!831329 (= (h!28855 lt!562910) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245803 () Bool)

(assert (=> b!1245803 (= e!706523 (contains!7468 (t!41126 lt!562910) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137421 res!831328) b!1245802))

(assert (= (and b!1245802 (not res!831329)) b!1245803))

(declare-fun m!1147809 () Bool)

(assert (=> d!137421 m!1147809))

(declare-fun m!1147811 () Bool)

(assert (=> d!137421 m!1147811))

(declare-fun m!1147813 () Bool)

(assert (=> b!1245803 m!1147813))

(assert (=> b!1245713 d!137421))

(declare-fun d!137425 () Bool)

(declare-fun lt!562925 () Bool)

(assert (=> d!137425 (= lt!562925 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!632 Nil!27647)))))

(declare-fun e!706524 () Bool)

(assert (=> d!137425 (= lt!562925 e!706524)))

(declare-fun res!831330 () Bool)

(assert (=> d!137425 (=> (not res!831330) (not e!706524))))

(assert (=> d!137425 (= res!831330 (is-Cons!27646 Nil!27647))))

(assert (=> d!137425 (= (contains!7468 Nil!27647 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562925)))

(declare-fun b!1245804 () Bool)

(declare-fun e!706525 () Bool)

(assert (=> b!1245804 (= e!706524 e!706525)))

(declare-fun res!831331 () Bool)

(assert (=> b!1245804 (=> res!831331 e!706525)))

(assert (=> b!1245804 (= res!831331 (= (h!28855 Nil!27647) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245805 () Bool)

(assert (=> b!1245805 (= e!706525 (contains!7468 (t!41126 Nil!27647) #b0000000000000000000000000000000000000000000000000000000000000000))))

