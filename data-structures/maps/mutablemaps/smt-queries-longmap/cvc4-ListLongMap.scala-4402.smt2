; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60532 () Bool)

(assert start!60532)

(declare-fun b!680232 () Bool)

(declare-fun res!446673 () Bool)

(declare-fun e!387428 () Bool)

(assert (=> b!680232 (=> (not res!446673) (not e!387428))))

(declare-datatypes ((array!39469 0))(
  ( (array!39470 (arr!18920 (Array (_ BitVec 32) (_ BitVec 64))) (size!19284 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39469)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13014 0))(
  ( (Nil!13011) (Cons!13010 (h!14055 (_ BitVec 64)) (t!19250 List!13014)) )
))
(declare-fun acc!681 () List!13014)

(declare-fun arrayNoDuplicates!0 (array!39469 (_ BitVec 32) List!13014) Bool)

(assert (=> b!680232 (= res!446673 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!446662 () Bool)

(assert (=> start!60532 (=> (not res!446662) (not e!387428))))

(assert (=> start!60532 (= res!446662 (and (bvslt (size!19284 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19284 a!3626))))))

(assert (=> start!60532 e!387428))

(assert (=> start!60532 true))

(declare-fun array_inv!14694 (array!39469) Bool)

(assert (=> start!60532 (array_inv!14694 a!3626)))

(declare-fun b!680233 () Bool)

(declare-fun res!446669 () Bool)

(assert (=> b!680233 (=> (not res!446669) (not e!387428))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680233 (= res!446669 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19284 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680234 () Bool)

(declare-fun e!387431 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3557 (List!13014 (_ BitVec 64)) Bool)

(assert (=> b!680234 (= e!387431 (contains!3557 acc!681 k!2843))))

(declare-fun b!680235 () Bool)

(declare-fun e!387430 () Bool)

(declare-fun noDuplicate!804 (List!13014) Bool)

(declare-fun $colon$colon!306 (List!13014 (_ BitVec 64)) List!13014)

(assert (=> b!680235 (= e!387430 (noDuplicate!804 ($colon$colon!306 acc!681 (select (arr!18920 a!3626) from!3004))))))

(declare-fun b!680236 () Bool)

(declare-fun res!446664 () Bool)

(assert (=> b!680236 (=> (not res!446664) (not e!387428))))

(declare-fun arrayContainsKey!0 (array!39469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680236 (= res!446664 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680237 () Bool)

(declare-fun e!387433 () Bool)

(declare-fun e!387426 () Bool)

(assert (=> b!680237 (= e!387433 e!387426)))

(declare-fun res!446661 () Bool)

(assert (=> b!680237 (=> (not res!446661) (not e!387426))))

(assert (=> b!680237 (= res!446661 (bvsle from!3004 i!1382))))

(declare-fun b!680238 () Bool)

(declare-fun e!387429 () Bool)

(assert (=> b!680238 (= e!387428 (not e!387429))))

(declare-fun res!446666 () Bool)

(assert (=> b!680238 (=> res!446666 e!387429)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680238 (= res!446666 (not (validKeyInArray!0 (select (arr!18920 a!3626) from!3004))))))

(declare-datatypes ((Unit!23850 0))(
  ( (Unit!23851) )
))
(declare-fun lt!313026 () Unit!23850)

(declare-fun e!387427 () Unit!23850)

(assert (=> b!680238 (= lt!313026 e!387427)))

(declare-fun c!77153 () Bool)

(assert (=> b!680238 (= c!77153 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680238 (arrayContainsKey!0 (array!39470 (store (arr!18920 a!3626) i!1382 k!2843) (size!19284 a!3626)) k!2843 from!3004)))

(declare-fun b!680239 () Bool)

(declare-fun Unit!23852 () Unit!23850)

(assert (=> b!680239 (= e!387427 Unit!23852)))

(declare-fun lt!313024 () Unit!23850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39469 (_ BitVec 64) (_ BitVec 32)) Unit!23850)

(assert (=> b!680239 (= lt!313024 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!680239 false))

(declare-fun b!680240 () Bool)

(declare-fun Unit!23853 () Unit!23850)

(assert (=> b!680240 (= e!387427 Unit!23853)))

(declare-fun b!680241 () Bool)

(assert (=> b!680241 (= e!387426 (not (contains!3557 acc!681 k!2843)))))

(declare-fun b!680242 () Bool)

(assert (=> b!680242 (= e!387429 e!387430)))

(declare-fun res!446667 () Bool)

(assert (=> b!680242 (=> res!446667 e!387430)))

(assert (=> b!680242 (= res!446667 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun subseq!142 (List!13014 List!13014) Bool)

(assert (=> b!680242 (subseq!142 acc!681 acc!681)))

(declare-fun lt!313025 () Unit!23850)

(declare-fun lemmaListSubSeqRefl!0 (List!13014) Unit!23850)

(assert (=> b!680242 (= lt!313025 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680243 () Bool)

(declare-fun res!446668 () Bool)

(assert (=> b!680243 (=> (not res!446668) (not e!387428))))

(assert (=> b!680243 (= res!446668 e!387433)))

(declare-fun res!446671 () Bool)

(assert (=> b!680243 (=> res!446671 e!387433)))

(assert (=> b!680243 (= res!446671 e!387431)))

(declare-fun res!446670 () Bool)

(assert (=> b!680243 (=> (not res!446670) (not e!387431))))

(assert (=> b!680243 (= res!446670 (bvsgt from!3004 i!1382))))

(declare-fun b!680244 () Bool)

(declare-fun res!446663 () Bool)

(assert (=> b!680244 (=> (not res!446663) (not e!387428))))

(assert (=> b!680244 (= res!446663 (not (contains!3557 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680245 () Bool)

(declare-fun res!446672 () Bool)

(assert (=> b!680245 (=> (not res!446672) (not e!387428))))

(assert (=> b!680245 (= res!446672 (noDuplicate!804 acc!681))))

(declare-fun b!680246 () Bool)

(declare-fun res!446660 () Bool)

(assert (=> b!680246 (=> (not res!446660) (not e!387428))))

(assert (=> b!680246 (= res!446660 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13011))))

(declare-fun b!680247 () Bool)

(declare-fun res!446665 () Bool)

(assert (=> b!680247 (=> (not res!446665) (not e!387428))))

(assert (=> b!680247 (= res!446665 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19284 a!3626))))))

(declare-fun b!680248 () Bool)

(declare-fun res!446674 () Bool)

(assert (=> b!680248 (=> (not res!446674) (not e!387428))))

(assert (=> b!680248 (= res!446674 (not (contains!3557 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680249 () Bool)

(declare-fun res!446675 () Bool)

(assert (=> b!680249 (=> (not res!446675) (not e!387428))))

(assert (=> b!680249 (= res!446675 (validKeyInArray!0 k!2843))))

(assert (= (and start!60532 res!446662) b!680245))

(assert (= (and b!680245 res!446672) b!680244))

(assert (= (and b!680244 res!446663) b!680248))

(assert (= (and b!680248 res!446674) b!680243))

(assert (= (and b!680243 res!446670) b!680234))

(assert (= (and b!680243 (not res!446671)) b!680237))

(assert (= (and b!680237 res!446661) b!680241))

(assert (= (and b!680243 res!446668) b!680246))

(assert (= (and b!680246 res!446660) b!680232))

(assert (= (and b!680232 res!446673) b!680247))

(assert (= (and b!680247 res!446665) b!680249))

(assert (= (and b!680249 res!446675) b!680236))

(assert (= (and b!680236 res!446664) b!680233))

(assert (= (and b!680233 res!446669) b!680238))

(assert (= (and b!680238 c!77153) b!680239))

(assert (= (and b!680238 (not c!77153)) b!680240))

(assert (= (and b!680238 (not res!446666)) b!680242))

(assert (= (and b!680242 (not res!446667)) b!680235))

(declare-fun m!645355 () Bool)

(assert (=> b!680244 m!645355))

(declare-fun m!645357 () Bool)

(assert (=> b!680241 m!645357))

(declare-fun m!645359 () Bool)

(assert (=> b!680238 m!645359))

(declare-fun m!645361 () Bool)

(assert (=> b!680238 m!645361))

(declare-fun m!645363 () Bool)

(assert (=> b!680238 m!645363))

(assert (=> b!680238 m!645359))

(declare-fun m!645365 () Bool)

(assert (=> b!680238 m!645365))

(declare-fun m!645367 () Bool)

(assert (=> b!680238 m!645367))

(declare-fun m!645369 () Bool)

(assert (=> b!680246 m!645369))

(declare-fun m!645371 () Bool)

(assert (=> b!680236 m!645371))

(declare-fun m!645373 () Bool)

(assert (=> b!680242 m!645373))

(declare-fun m!645375 () Bool)

(assert (=> b!680242 m!645375))

(declare-fun m!645377 () Bool)

(assert (=> b!680232 m!645377))

(declare-fun m!645379 () Bool)

(assert (=> b!680239 m!645379))

(assert (=> b!680234 m!645357))

(declare-fun m!645381 () Bool)

(assert (=> start!60532 m!645381))

(declare-fun m!645383 () Bool)

(assert (=> b!680248 m!645383))

(assert (=> b!680235 m!645359))

(assert (=> b!680235 m!645359))

(declare-fun m!645385 () Bool)

(assert (=> b!680235 m!645385))

(assert (=> b!680235 m!645385))

(declare-fun m!645387 () Bool)

(assert (=> b!680235 m!645387))

(declare-fun m!645389 () Bool)

(assert (=> b!680249 m!645389))

(declare-fun m!645391 () Bool)

(assert (=> b!680245 m!645391))

(push 1)

(assert (not b!680244))

(assert (not b!680246))

(assert (not b!680248))

(assert (not b!680245))

(assert (not b!680235))

(assert (not b!680241))

(assert (not b!680232))

(assert (not b!680238))

(assert (not b!680249))

(assert (not b!680234))

(assert (not b!680236))

(assert (not b!680242))

(assert (not b!680239))

(assert (not start!60532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!680291 () Bool)

(declare-fun e!387472 () Bool)

(assert (=> b!680291 (= e!387472 (subseq!142 acc!681 (t!19250 acc!681)))))

(declare-fun b!680290 () Bool)

(declare-fun e!387474 () Bool)

(assert (=> b!680290 (= e!387474 (subseq!142 (t!19250 acc!681) (t!19250 acc!681)))))

(declare-fun b!680289 () Bool)

(declare-fun e!387475 () Bool)

(assert (=> b!680289 (= e!387475 e!387472)))

(declare-fun res!446714 () Bool)

(assert (=> b!680289 (=> res!446714 e!387472)))

(assert (=> b!680289 (= res!446714 e!387474)))

(declare-fun res!446715 () Bool)

(assert (=> b!680289 (=> (not res!446715) (not e!387474))))

(assert (=> b!680289 (= res!446715 (= (h!14055 acc!681) (h!14055 acc!681)))))

(declare-fun d!93459 () Bool)

(declare-fun res!446717 () Bool)

(declare-fun e!387473 () Bool)

(assert (=> d!93459 (=> res!446717 e!387473)))

(assert (=> d!93459 (= res!446717 (is-Nil!13011 acc!681))))

(assert (=> d!93459 (= (subseq!142 acc!681 acc!681) e!387473)))

(declare-fun b!680288 () Bool)

(assert (=> b!680288 (= e!387473 e!387475)))

(declare-fun res!446716 () Bool)

(assert (=> b!680288 (=> (not res!446716) (not e!387475))))

(assert (=> b!680288 (= res!446716 (is-Cons!13010 acc!681))))

(assert (= (and d!93459 (not res!446717)) b!680288))

(assert (= (and b!680288 res!446716) b!680289))

(assert (= (and b!680289 res!446715) b!680290))

(assert (= (and b!680289 (not res!446714)) b!680291))

(declare-fun m!645427 () Bool)

(assert (=> b!680291 m!645427))

(declare-fun m!645429 () Bool)

(assert (=> b!680290 m!645429))

(assert (=> b!680242 d!93459))

(declare-fun d!93479 () Bool)

(assert (=> d!93479 (subseq!142 acc!681 acc!681)))

(declare-fun lt!313041 () Unit!23850)

(declare-fun choose!36 (List!13014) Unit!23850)

(assert (=> d!93479 (= lt!313041 (choose!36 acc!681))))

(assert (=> d!93479 (= (lemmaListSubSeqRefl!0 acc!681) lt!313041)))

(declare-fun bs!19974 () Bool)

(assert (= bs!19974 d!93479))

(assert (=> bs!19974 m!645373))

(declare-fun m!645441 () Bool)

(assert (=> bs!19974 m!645441))

(assert (=> b!680242 d!93479))

(declare-fun d!93487 () Bool)

(declare-fun lt!313045 () Bool)

(declare-fun content!270 (List!13014) (Set (_ BitVec 64)))

(assert (=> d!93487 (= lt!313045 (member k!2843 (content!270 acc!681)))))

(declare-fun e!387505 () Bool)

(assert (=> d!93487 (= lt!313045 e!387505)))

(declare-fun res!446746 () Bool)

(assert (=> d!93487 (=> (not res!446746) (not e!387505))))

(assert (=> d!93487 (= res!446746 (is-Cons!13010 acc!681))))

(assert (=> d!93487 (= (contains!3557 acc!681 k!2843) lt!313045)))

(declare-fun b!680320 () Bool)

(declare-fun e!387504 () Bool)

(assert (=> b!680320 (= e!387505 e!387504)))

(declare-fun res!446747 () Bool)

(assert (=> b!680320 (=> res!446747 e!387504)))

(assert (=> b!680320 (= res!446747 (= (h!14055 acc!681) k!2843))))

(declare-fun b!680321 () Bool)

(assert (=> b!680321 (= e!387504 (contains!3557 (t!19250 acc!681) k!2843))))

(assert (= (and d!93487 res!446746) b!680320))

(assert (= (and b!680320 (not res!446747)) b!680321))

(declare-fun m!645465 () Bool)

(assert (=> d!93487 m!645465))

(declare-fun m!645467 () Bool)

(assert (=> d!93487 m!645467))

(declare-fun m!645469 () Bool)

(assert (=> b!680321 m!645469))

(assert (=> b!680241 d!93487))

(declare-fun d!93501 () Bool)

(declare-fun res!446758 () Bool)

(declare-fun e!387518 () Bool)

(assert (=> d!93501 (=> res!446758 e!387518)))

(assert (=> d!93501 (= res!446758 (is-Nil!13011 acc!681))))

(assert (=> d!93501 (= (noDuplicate!804 acc!681) e!387518)))

(declare-fun b!680336 () Bool)

(declare-fun e!387519 () Bool)

(assert (=> b!680336 (= e!387518 e!387519)))

(declare-fun res!446759 () Bool)

(assert (=> b!680336 (=> (not res!446759) (not e!387519))))

(assert (=> b!680336 (= res!446759 (not (contains!3557 (t!19250 acc!681) (h!14055 acc!681))))))

(declare-fun b!680337 () Bool)

(assert (=> b!680337 (= e!387519 (noDuplicate!804 (t!19250 acc!681)))))

(assert (= (and d!93501 (not res!446758)) b!680336))

(assert (= (and b!680336 res!446759) b!680337))

(declare-fun m!645471 () Bool)

(assert (=> b!680336 m!645471))

(declare-fun m!645473 () Bool)

(assert (=> b!680337 m!645473))

(assert (=> b!680245 d!93501))

(assert (=> b!680234 d!93487))

(declare-fun d!93505 () Bool)

(declare-fun lt!313046 () Bool)

(assert (=> d!93505 (= lt!313046 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!270 acc!681)))))

(declare-fun e!387523 () Bool)

(assert (=> d!93505 (= lt!313046 e!387523)))

(declare-fun res!446762 () Bool)

(assert (=> d!93505 (=> (not res!446762) (not e!387523))))

(assert (=> d!93505 (= res!446762 (is-Cons!13010 acc!681))))

(assert (=> d!93505 (= (contains!3557 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313046)))

(declare-fun b!680340 () Bool)

(declare-fun e!387522 () Bool)

(assert (=> b!680340 (= e!387523 e!387522)))

(declare-fun res!446763 () Bool)

(assert (=> b!680340 (=> res!446763 e!387522)))

(assert (=> b!680340 (= res!446763 (= (h!14055 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680341 () Bool)

(assert (=> b!680341 (= e!387522 (contains!3557 (t!19250 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93505 res!446762) b!680340))

(assert (= (and b!680340 (not res!446763)) b!680341))

(assert (=> d!93505 m!645465))

(declare-fun m!645475 () Bool)

(assert (=> d!93505 m!645475))

(declare-fun m!645477 () Bool)

(assert (=> b!680341 m!645477))

(assert (=> b!680244 d!93505))

(declare-fun call!33941 () Bool)

(declare-fun bm!33938 () Bool)

(declare-fun c!77159 () Bool)

(assert (=> bm!33938 (= call!33941 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77159 (Cons!13010 (select (arr!18920 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!680379 () Bool)

(declare-fun e!387560 () Bool)

(declare-fun e!387559 () Bool)

(assert (=> b!680379 (= e!387560 e!387559)))

(declare-fun res!446796 () Bool)

(assert (=> b!680379 (=> (not res!446796) (not e!387559))))

(declare-fun e!387558 () Bool)

(assert (=> b!680379 (= res!446796 (not e!387558))))

(declare-fun res!446795 () Bool)

(assert (=> b!680379 (=> (not res!446795) (not e!387558))))

(assert (=> b!680379 (= res!446795 (validKeyInArray!0 (select (arr!18920 a!3626) from!3004)))))

(declare-fun b!680380 () Bool)

(declare-fun e!387561 () Bool)

(assert (=> b!680380 (= e!387559 e!387561)))

(assert (=> b!680380 (= c!77159 (validKeyInArray!0 (select (arr!18920 a!3626) from!3004)))))

(declare-fun b!680381 () Bool)

(assert (=> b!680381 (= e!387558 (contains!3557 acc!681 (select (arr!18920 a!3626) from!3004)))))

(declare-fun b!680382 () Bool)

(assert (=> b!680382 (= e!387561 call!33941)))

(declare-fun d!93507 () Bool)

(declare-fun res!446797 () Bool)

(assert (=> d!93507 (=> res!446797 e!387560)))

(assert (=> d!93507 (= res!446797 (bvsge from!3004 (size!19284 a!3626)))))

(assert (=> d!93507 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!387560)))

(declare-fun b!680383 () Bool)

(assert (=> b!680383 (= e!387561 call!33941)))

(assert (= (and d!93507 (not res!446797)) b!680379))

(assert (= (and b!680379 res!446795) b!680381))

(assert (= (and b!680379 res!446796) b!680380))

(assert (= (and b!680380 c!77159) b!680383))

(assert (= (and b!680380 (not c!77159)) b!680382))

(assert (= (or b!680383 b!680382) bm!33938))

(assert (=> bm!33938 m!645359))

(declare-fun m!645499 () Bool)

(assert (=> bm!33938 m!645499))

(assert (=> b!680379 m!645359))

(assert (=> b!680379 m!645359))

(assert (=> b!680379 m!645365))

(assert (=> b!680380 m!645359))

(assert (=> b!680380 m!645359))

(assert (=> b!680380 m!645365))

(assert (=> b!680381 m!645359))

(assert (=> b!680381 m!645359))

(declare-fun m!645501 () Bool)

(assert (=> b!680381 m!645501))

(assert (=> b!680232 d!93507))

(declare-fun d!93519 () Bool)

(declare-fun res!446813 () Bool)

(declare-fun e!387580 () Bool)

(assert (=> d!93519 (=> res!446813 e!387580)))

(assert (=> d!93519 (= res!446813 (= (select (arr!18920 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93519 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!387580)))

(declare-fun b!680405 () Bool)

(declare-fun e!387581 () Bool)

(assert (=> b!680405 (= e!387580 e!387581)))

(declare-fun res!446814 () Bool)

(assert (=> b!680405 (=> (not res!446814) (not e!387581))))

(assert (=> b!680405 (= res!446814 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19284 a!3626)))))

(declare-fun b!680406 () Bool)

(assert (=> b!680406 (= e!387581 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93519 (not res!446813)) b!680405))

(assert (= (and b!680405 res!446814) b!680406))

(declare-fun m!645511 () Bool)

(assert (=> d!93519 m!645511))

(declare-fun m!645513 () Bool)

(assert (=> b!680406 m!645513))

(assert (=> b!680236 d!93519))

(declare-fun bm!33942 () Bool)

(declare-fun call!33945 () Bool)

(declare-fun c!77163 () Bool)

(assert (=> bm!33942 (= call!33945 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77163 (Cons!13010 (select (arr!18920 a!3626) #b00000000000000000000000000000000) Nil!13011) Nil!13011)))))

(declare-fun b!680407 () Bool)

(declare-fun e!387584 () Bool)

(declare-fun e!387583 () Bool)

(assert (=> b!680407 (= e!387584 e!387583)))

(declare-fun res!446816 () Bool)

(assert (=> b!680407 (=> (not res!446816) (not e!387583))))

(declare-fun e!387582 () Bool)

(assert (=> b!680407 (= res!446816 (not e!387582))))

(declare-fun res!446815 () Bool)

(assert (=> b!680407 (=> (not res!446815) (not e!387582))))

(assert (=> b!680407 (= res!446815 (validKeyInArray!0 (select (arr!18920 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680408 () Bool)

(declare-fun e!387585 () Bool)

(assert (=> b!680408 (= e!387583 e!387585)))

