; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62920 () Bool)

(assert start!62920)

(declare-fun b!709013 () Bool)

(declare-fun res!472736 () Bool)

(declare-fun e!399053 () Bool)

(assert (=> b!709013 (=> (not res!472736) (not e!399053))))

(declare-datatypes ((List!13411 0))(
  ( (Nil!13408) (Cons!13407 (h!14452 (_ BitVec 64)) (t!19713 List!13411)) )
))
(declare-fun acc!652 () List!13411)

(declare-fun contains!3954 (List!13411 (_ BitVec 64)) Bool)

(assert (=> b!709013 (= res!472736 (not (contains!3954 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709014 () Bool)

(declare-fun res!472731 () Bool)

(declare-fun e!399054 () Bool)

(assert (=> b!709014 (=> (not res!472731) (not e!399054))))

(declare-fun newAcc!49 () List!13411)

(declare-datatypes ((array!40341 0))(
  ( (array!40342 (arr!19317 (Array (_ BitVec 32) (_ BitVec 64))) (size!19710 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40341)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun noDuplicate!1201 (List!13411) Bool)

(declare-fun $colon$colon!508 (List!13411 (_ BitVec 64)) List!13411)

(assert (=> b!709014 (= res!472731 (noDuplicate!1201 ($colon$colon!508 newAcc!49 (select (arr!19317 a!3591) from!2969))))))

(declare-fun b!709015 () Bool)

(declare-fun res!472737 () Bool)

(assert (=> b!709015 (=> (not res!472737) (not e!399054))))

(declare-fun lt!318146 () List!13411)

(assert (=> b!709015 (= res!472737 (not (contains!3954 lt!318146 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709017 () Bool)

(declare-fun res!472740 () Bool)

(assert (=> b!709017 (=> (not res!472740) (not e!399053))))

(assert (=> b!709017 (= res!472740 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19710 a!3591)))))

(declare-fun b!709018 () Bool)

(declare-fun res!472744 () Bool)

(assert (=> b!709018 (=> (not res!472744) (not e!399053))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!363 (List!13411 (_ BitVec 64)) List!13411)

(assert (=> b!709018 (= res!472744 (= (-!363 newAcc!49 k!2824) acc!652))))

(declare-fun b!709019 () Bool)

(declare-fun res!472746 () Bool)

(assert (=> b!709019 (=> (not res!472746) (not e!399053))))

(assert (=> b!709019 (= res!472746 (not (contains!3954 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709020 () Bool)

(declare-fun res!472738 () Bool)

(assert (=> b!709020 (=> (not res!472738) (not e!399054))))

(assert (=> b!709020 (= res!472738 (noDuplicate!1201 lt!318146))))

(declare-fun b!709021 () Bool)

(declare-fun res!472734 () Bool)

(assert (=> b!709021 (=> (not res!472734) (not e!399053))))

(assert (=> b!709021 (= res!472734 (not (contains!3954 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709022 () Bool)

(declare-fun res!472741 () Bool)

(assert (=> b!709022 (=> (not res!472741) (not e!399053))))

(assert (=> b!709022 (= res!472741 (not (contains!3954 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709023 () Bool)

(declare-fun res!472732 () Bool)

(assert (=> b!709023 (=> (not res!472732) (not e!399053))))

(declare-fun arrayNoDuplicates!0 (array!40341 (_ BitVec 32) List!13411) Bool)

(assert (=> b!709023 (= res!472732 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709024 () Bool)

(declare-fun res!472743 () Bool)

(assert (=> b!709024 (=> (not res!472743) (not e!399054))))

(assert (=> b!709024 (= res!472743 (not (contains!3954 lt!318146 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709025 () Bool)

(declare-fun res!472742 () Bool)

(assert (=> b!709025 (=> (not res!472742) (not e!399054))))

(declare-fun arrayContainsKey!0 (array!40341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709025 (= res!472742 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709026 () Bool)

(declare-fun res!472739 () Bool)

(assert (=> b!709026 (=> (not res!472739) (not e!399053))))

(assert (=> b!709026 (= res!472739 (contains!3954 newAcc!49 k!2824))))

(declare-fun b!709027 () Bool)

(declare-fun res!472725 () Bool)

(assert (=> b!709027 (=> (not res!472725) (not e!399053))))

(assert (=> b!709027 (= res!472725 (noDuplicate!1201 newAcc!49))))

(declare-fun b!709028 () Bool)

(declare-fun res!472733 () Bool)

(assert (=> b!709028 (=> (not res!472733) (not e!399053))))

(assert (=> b!709028 (= res!472733 (not (contains!3954 acc!652 k!2824)))))

(declare-fun res!472728 () Bool)

(assert (=> start!62920 (=> (not res!472728) (not e!399053))))

(assert (=> start!62920 (= res!472728 (and (bvslt (size!19710 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19710 a!3591))))))

(assert (=> start!62920 e!399053))

(assert (=> start!62920 true))

(declare-fun array_inv!15091 (array!40341) Bool)

(assert (=> start!62920 (array_inv!15091 a!3591)))

(declare-fun b!709016 () Bool)

(declare-fun res!472729 () Bool)

(assert (=> b!709016 (=> (not res!472729) (not e!399053))))

(declare-fun subseq!398 (List!13411 List!13411) Bool)

(assert (=> b!709016 (= res!472729 (subseq!398 acc!652 newAcc!49))))

(declare-fun b!709029 () Bool)

(declare-fun res!472735 () Bool)

(assert (=> b!709029 (=> (not res!472735) (not e!399053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709029 (= res!472735 (validKeyInArray!0 k!2824))))

(declare-fun b!709030 () Bool)

(assert (=> b!709030 (= e!399054 (contains!3954 lt!318146 k!2824))))

(declare-fun b!709031 () Bool)

(declare-fun res!472730 () Bool)

(assert (=> b!709031 (=> (not res!472730) (not e!399053))))

(assert (=> b!709031 (= res!472730 (noDuplicate!1201 acc!652))))

(declare-fun b!709032 () Bool)

(declare-fun res!472726 () Bool)

(assert (=> b!709032 (=> (not res!472726) (not e!399053))))

(assert (=> b!709032 (= res!472726 (validKeyInArray!0 (select (arr!19317 a!3591) from!2969)))))

(declare-fun b!709033 () Bool)

(declare-fun res!472745 () Bool)

(assert (=> b!709033 (=> (not res!472745) (not e!399053))))

(assert (=> b!709033 (= res!472745 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!709034 () Bool)

(assert (=> b!709034 (= e!399053 e!399054)))

(declare-fun res!472727 () Bool)

(assert (=> b!709034 (=> (not res!472727) (not e!399054))))

(assert (=> b!709034 (= res!472727 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (=> b!709034 (= lt!318146 ($colon$colon!508 acc!652 (select (arr!19317 a!3591) from!2969)))))

(assert (= (and start!62920 res!472728) b!709031))

(assert (= (and b!709031 res!472730) b!709027))

(assert (= (and b!709027 res!472725) b!709013))

(assert (= (and b!709013 res!472736) b!709019))

(assert (= (and b!709019 res!472746) b!709033))

(assert (= (and b!709033 res!472745) b!709028))

(assert (= (and b!709028 res!472733) b!709029))

(assert (= (and b!709029 res!472735) b!709023))

(assert (= (and b!709023 res!472732) b!709016))

(assert (= (and b!709016 res!472729) b!709026))

(assert (= (and b!709026 res!472739) b!709018))

(assert (= (and b!709018 res!472744) b!709021))

(assert (= (and b!709021 res!472734) b!709022))

(assert (= (and b!709022 res!472741) b!709017))

(assert (= (and b!709017 res!472740) b!709032))

(assert (= (and b!709032 res!472726) b!709034))

(assert (= (and b!709034 res!472727) b!709020))

(assert (= (and b!709020 res!472738) b!709014))

(assert (= (and b!709014 res!472731) b!709024))

(assert (= (and b!709024 res!472743) b!709015))

(assert (= (and b!709015 res!472737) b!709025))

(assert (= (and b!709025 res!472742) b!709030))

(declare-fun m!666435 () Bool)

(assert (=> b!709019 m!666435))

(declare-fun m!666437 () Bool)

(assert (=> b!709013 m!666437))

(declare-fun m!666439 () Bool)

(assert (=> b!709022 m!666439))

(declare-fun m!666441 () Bool)

(assert (=> b!709031 m!666441))

(declare-fun m!666443 () Bool)

(assert (=> b!709020 m!666443))

(declare-fun m!666445 () Bool)

(assert (=> b!709025 m!666445))

(declare-fun m!666447 () Bool)

(assert (=> b!709024 m!666447))

(declare-fun m!666449 () Bool)

(assert (=> b!709018 m!666449))

(declare-fun m!666451 () Bool)

(assert (=> b!709021 m!666451))

(declare-fun m!666453 () Bool)

(assert (=> b!709014 m!666453))

(assert (=> b!709014 m!666453))

(declare-fun m!666455 () Bool)

(assert (=> b!709014 m!666455))

(assert (=> b!709014 m!666455))

(declare-fun m!666457 () Bool)

(assert (=> b!709014 m!666457))

(assert (=> b!709034 m!666453))

(assert (=> b!709034 m!666453))

(declare-fun m!666459 () Bool)

(assert (=> b!709034 m!666459))

(declare-fun m!666461 () Bool)

(assert (=> b!709027 m!666461))

(declare-fun m!666463 () Bool)

(assert (=> b!709026 m!666463))

(declare-fun m!666465 () Bool)

(assert (=> b!709028 m!666465))

(assert (=> b!709032 m!666453))

(assert (=> b!709032 m!666453))

(declare-fun m!666467 () Bool)

(assert (=> b!709032 m!666467))

(declare-fun m!666469 () Bool)

(assert (=> b!709015 m!666469))

(declare-fun m!666471 () Bool)

(assert (=> start!62920 m!666471))

(declare-fun m!666473 () Bool)

(assert (=> b!709029 m!666473))

(declare-fun m!666475 () Bool)

(assert (=> b!709033 m!666475))

(declare-fun m!666477 () Bool)

(assert (=> b!709023 m!666477))

(declare-fun m!666479 () Bool)

(assert (=> b!709016 m!666479))

(declare-fun m!666481 () Bool)

(assert (=> b!709030 m!666481))

(push 1)

(assert (not b!709020))

(assert (not b!709016))

(assert (not b!709013))

(assert (not b!709015))

(assert (not start!62920))

(assert (not b!709034))

(assert (not b!709025))

(assert (not b!709033))

(assert (not b!709028))

(assert (not b!709021))

(assert (not b!709022))

(assert (not b!709024))

(assert (not b!709030))

(assert (not b!709026))

(assert (not b!709014))

(assert (not b!709031))

(assert (not b!709019))

(assert (not b!709023))

(assert (not b!709029))

(assert (not b!709027))

(assert (not b!709018))

(assert (not b!709032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!709232 () Bool)

(declare-fun e!399133 () Bool)

(assert (=> b!709232 (= e!399133 (subseq!398 acc!652 (t!19713 newAcc!49)))))

(declare-fun b!709229 () Bool)

(declare-fun e!399134 () Bool)

(declare-fun e!399132 () Bool)

(assert (=> b!709229 (= e!399134 e!399132)))

(declare-fun res!472933 () Bool)

(assert (=> b!709229 (=> (not res!472933) (not e!399132))))

(assert (=> b!709229 (= res!472933 (is-Cons!13407 newAcc!49))))

(declare-fun b!709230 () Bool)

(assert (=> b!709230 (= e!399132 e!399133)))

(declare-fun res!472936 () Bool)

(assert (=> b!709230 (=> res!472936 e!399133)))

(declare-fun e!399135 () Bool)

(assert (=> b!709230 (= res!472936 e!399135)))

(declare-fun res!472935 () Bool)

(assert (=> b!709230 (=> (not res!472935) (not e!399135))))

(assert (=> b!709230 (= res!472935 (= (h!14452 acc!652) (h!14452 newAcc!49)))))

(declare-fun b!709231 () Bool)

(assert (=> b!709231 (= e!399135 (subseq!398 (t!19713 acc!652) (t!19713 newAcc!49)))))

(declare-fun d!96999 () Bool)

(declare-fun res!472934 () Bool)

(assert (=> d!96999 (=> res!472934 e!399134)))

(assert (=> d!96999 (= res!472934 (is-Nil!13408 acc!652))))

(assert (=> d!96999 (= (subseq!398 acc!652 newAcc!49) e!399134)))

(assert (= (and d!96999 (not res!472934)) b!709229))

(assert (= (and b!709229 res!472933) b!709230))

(assert (= (and b!709230 res!472935) b!709231))

(assert (= (and b!709230 (not res!472936)) b!709232))

(declare-fun m!666627 () Bool)

(assert (=> b!709232 m!666627))

(declare-fun m!666629 () Bool)

(assert (=> b!709231 m!666629))

(assert (=> b!709016 d!96999))

(declare-fun d!97009 () Bool)

(declare-fun res!472946 () Bool)

(declare-fun e!399152 () Bool)

(assert (=> d!97009 (=> res!472946 e!399152)))

(assert (=> d!97009 (= res!472946 (is-Nil!13408 newAcc!49))))

(assert (=> d!97009 (= (noDuplicate!1201 newAcc!49) e!399152)))

(declare-fun b!709254 () Bool)

(declare-fun e!399153 () Bool)

(assert (=> b!709254 (= e!399152 e!399153)))

(declare-fun res!472947 () Bool)

(assert (=> b!709254 (=> (not res!472947) (not e!399153))))

(assert (=> b!709254 (= res!472947 (not (contains!3954 (t!19713 newAcc!49) (h!14452 newAcc!49))))))

(declare-fun b!709255 () Bool)

(assert (=> b!709255 (= e!399153 (noDuplicate!1201 (t!19713 newAcc!49)))))

(assert (= (and d!97009 (not res!472946)) b!709254))

(assert (= (and b!709254 res!472947) b!709255))

(declare-fun m!666643 () Bool)

(assert (=> b!709254 m!666643))

(declare-fun m!666645 () Bool)

(assert (=> b!709255 m!666645))

(assert (=> b!709027 d!97009))

(declare-fun d!97013 () Bool)

(declare-fun lt!318174 () Bool)

(declare-fun content!348 (List!13411) (Set (_ BitVec 64)))

(assert (=> d!97013 (= lt!318174 (set.member k!2824 (content!348 acc!652)))))

(declare-fun e!399171 () Bool)

(assert (=> d!97013 (= lt!318174 e!399171)))

(declare-fun res!472964 () Bool)

(assert (=> d!97013 (=> (not res!472964) (not e!399171))))

(assert (=> d!97013 (= res!472964 (is-Cons!13407 acc!652))))

(assert (=> d!97013 (= (contains!3954 acc!652 k!2824) lt!318174)))

(declare-fun b!709275 () Bool)

(declare-fun e!399172 () Bool)

(assert (=> b!709275 (= e!399171 e!399172)))

(declare-fun res!472963 () Bool)

(assert (=> b!709275 (=> res!472963 e!399172)))

(assert (=> b!709275 (= res!472963 (= (h!14452 acc!652) k!2824))))

(declare-fun b!709276 () Bool)

(assert (=> b!709276 (= e!399172 (contains!3954 (t!19713 acc!652) k!2824))))

(assert (= (and d!97013 res!472964) b!709275))

(assert (= (and b!709275 (not res!472963)) b!709276))

(declare-fun m!666669 () Bool)

(assert (=> d!97013 m!666669))

(declare-fun m!666671 () Bool)

(assert (=> d!97013 m!666671))

(declare-fun m!666673 () Bool)

(assert (=> b!709276 m!666673))

(assert (=> b!709028 d!97013))

(declare-fun d!97021 () Bool)

(declare-fun e!399209 () Bool)

(assert (=> d!97021 e!399209))

(declare-fun res!472993 () Bool)

(assert (=> d!97021 (=> (not res!472993) (not e!399209))))

(declare-fun lt!318180 () List!13411)

(declare-fun size!19714 (List!13411) Int)

(assert (=> d!97021 (= res!472993 (<= (size!19714 lt!318180) (size!19714 newAcc!49)))))

(declare-fun e!399210 () List!13411)

(assert (=> d!97021 (= lt!318180 e!399210)))

(declare-fun c!78529 () Bool)

(assert (=> d!97021 (= c!78529 (is-Cons!13407 newAcc!49))))

(assert (=> d!97021 (= (-!363 newAcc!49 k!2824) lt!318180)))

(declare-fun bm!34439 () Bool)

(declare-fun call!34442 () List!13411)

(assert (=> bm!34439 (= call!34442 (-!363 (t!19713 newAcc!49) k!2824))))

(declare-fun b!709317 () Bool)

(assert (=> b!709317 (= e!399210 Nil!13408)))

(declare-fun b!709318 () Bool)

(declare-fun e!399208 () List!13411)

(assert (=> b!709318 (= e!399208 (Cons!13407 (h!14452 newAcc!49) call!34442))))

(declare-fun b!709319 () Bool)

(assert (=> b!709319 (= e!399208 call!34442)))

(declare-fun b!709320 () Bool)

(assert (=> b!709320 (= e!399210 e!399208)))

(declare-fun c!78530 () Bool)

(assert (=> b!709320 (= c!78530 (= k!2824 (h!14452 newAcc!49)))))

(declare-fun b!709321 () Bool)

(assert (=> b!709321 (= e!399209 (= (content!348 lt!318180) (set.minus (content!348 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(assert (= (and d!97021 c!78529) b!709320))

(assert (= (and d!97021 (not c!78529)) b!709317))

(assert (= (and b!709320 c!78530) b!709319))

(assert (= (and b!709320 (not c!78530)) b!709318))

(assert (= (or b!709319 b!709318) bm!34439))

(assert (= (and d!97021 res!472993) b!709321))

(declare-fun m!666705 () Bool)

(assert (=> d!97021 m!666705))

(declare-fun m!666707 () Bool)

(assert (=> d!97021 m!666707))

(declare-fun m!666711 () Bool)

(assert (=> bm!34439 m!666711))

(declare-fun m!666715 () Bool)

(assert (=> b!709321 m!666715))

(declare-fun m!666717 () Bool)

(assert (=> b!709321 m!666717))

(declare-fun m!666719 () Bool)

(assert (=> b!709321 m!666719))

(assert (=> b!709018 d!97021))

(declare-fun d!97049 () Bool)

(assert (=> d!97049 (= (array_inv!15091 a!3591) (bvsge (size!19710 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62920 d!97049))

(declare-fun d!97051 () Bool)

(assert (=> d!97051 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709029 d!97051))

(declare-fun d!97053 () Bool)

(declare-fun lt!318182 () Bool)

(assert (=> d!97053 (= lt!318182 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!348 acc!652)))))

(declare-fun e!399217 () Bool)

(assert (=> d!97053 (= lt!318182 e!399217)))

(declare-fun res!473000 () Bool)

(assert (=> d!97053 (=> (not res!473000) (not e!399217))))

(assert (=> d!97053 (= res!473000 (is-Cons!13407 acc!652))))

(assert (=> d!97053 (= (contains!3954 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318182)))

(declare-fun b!709329 () Bool)

(declare-fun e!399218 () Bool)

(assert (=> b!709329 (= e!399217 e!399218)))

(declare-fun res!472999 () Bool)

(assert (=> b!709329 (=> res!472999 e!399218)))

(assert (=> b!709329 (= res!472999 (= (h!14452 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709330 () Bool)

(assert (=> b!709330 (= e!399218 (contains!3954 (t!19713 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97053 res!473000) b!709329))

(assert (= (and b!709329 (not res!472999)) b!709330))

(assert (=> d!97053 m!666669))

(declare-fun m!666725 () Bool)

(assert (=> d!97053 m!666725))

(declare-fun m!666727 () Bool)

(assert (=> b!709330 m!666727))

(assert (=> b!709019 d!97053))

(declare-fun d!97057 () Bool)

(declare-fun lt!318184 () Bool)

(assert (=> d!97057 (= lt!318184 (set.member k!2824 (content!348 lt!318146)))))

(declare-fun e!399221 () Bool)

(assert (=> d!97057 (= lt!318184 e!399221)))

(declare-fun res!473004 () Bool)

(assert (=> d!97057 (=> (not res!473004) (not e!399221))))

(assert (=> d!97057 (= res!473004 (is-Cons!13407 lt!318146))))

(assert (=> d!97057 (= (contains!3954 lt!318146 k!2824) lt!318184)))

(declare-fun b!709333 () Bool)

(declare-fun e!399222 () Bool)

(assert (=> b!709333 (= e!399221 e!399222)))

(declare-fun res!473003 () Bool)

(assert (=> b!709333 (=> res!473003 e!399222)))

(assert (=> b!709333 (= res!473003 (= (h!14452 lt!318146) k!2824))))

(declare-fun b!709334 () Bool)

(assert (=> b!709334 (= e!399222 (contains!3954 (t!19713 lt!318146) k!2824))))

(assert (= (and d!97057 res!473004) b!709333))

(assert (= (and b!709333 (not res!473003)) b!709334))

(declare-fun m!666733 () Bool)

(assert (=> d!97057 m!666733))

(declare-fun m!666735 () Bool)

(assert (=> d!97057 m!666735))

(declare-fun m!666737 () Bool)

(assert (=> b!709334 m!666737))

(assert (=> b!709030 d!97057))

(declare-fun d!97061 () Bool)

(declare-fun res!473007 () Bool)

(declare-fun e!399225 () Bool)

(assert (=> d!97061 (=> res!473007 e!399225)))

(assert (=> d!97061 (= res!473007 (is-Nil!13408 lt!318146))))

(assert (=> d!97061 (= (noDuplicate!1201 lt!318146) e!399225)))

(declare-fun b!709337 () Bool)

(declare-fun e!399226 () Bool)

(assert (=> b!709337 (= e!399225 e!399226)))

(declare-fun res!473008 () Bool)

(assert (=> b!709337 (=> (not res!473008) (not e!399226))))

(assert (=> b!709337 (= res!473008 (not (contains!3954 (t!19713 lt!318146) (h!14452 lt!318146))))))

(declare-fun b!709338 () Bool)

(assert (=> b!709338 (= e!399226 (noDuplicate!1201 (t!19713 lt!318146)))))

(assert (= (and d!97061 (not res!473007)) b!709337))

(assert (= (and b!709337 res!473008) b!709338))

(declare-fun m!666739 () Bool)

(assert (=> b!709337 m!666739))

(declare-fun m!666743 () Bool)

(assert (=> b!709338 m!666743))

(assert (=> b!709020 d!97061))

(declare-fun d!97063 () Bool)

(declare-fun res!473009 () Bool)

(declare-fun e!399227 () Bool)

(assert (=> d!97063 (=> res!473009 e!399227)))

(assert (=> d!97063 (= res!473009 (is-Nil!13408 acc!652))))

(assert (=> d!97063 (= (noDuplicate!1201 acc!652) e!399227)))

(declare-fun b!709339 () Bool)

(declare-fun e!399228 () Bool)

(assert (=> b!709339 (= e!399227 e!399228)))

(declare-fun res!473010 () Bool)

(assert (=> b!709339 (=> (not res!473010) (not e!399228))))

(assert (=> b!709339 (= res!473010 (not (contains!3954 (t!19713 acc!652) (h!14452 acc!652))))))

(declare-fun b!709340 () Bool)

(assert (=> b!709340 (= e!399228 (noDuplicate!1201 (t!19713 acc!652)))))

(assert (= (and d!97063 (not res!473009)) b!709339))

(assert (= (and b!709339 res!473010) b!709340))

(declare-fun m!666747 () Bool)

(assert (=> b!709339 m!666747))

(declare-fun m!666749 () Bool)

(assert (=> b!709340 m!666749))

(assert (=> b!709031 d!97063))

(declare-fun d!97067 () Bool)

(declare-fun lt!318185 () Bool)

(assert (=> d!97067 (= lt!318185 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!348 newAcc!49)))))

(declare-fun e!399235 () Bool)

(assert (=> d!97067 (= lt!318185 e!399235)))

(declare-fun res!473018 () Bool)

(assert (=> d!97067 (=> (not res!473018) (not e!399235))))

(assert (=> d!97067 (= res!473018 (is-Cons!13407 newAcc!49))))

(assert (=> d!97067 (= (contains!3954 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318185)))

(declare-fun b!709347 () Bool)

(declare-fun e!399236 () Bool)

(assert (=> b!709347 (= e!399235 e!399236)))

(declare-fun res!473017 () Bool)

(assert (=> b!709347 (=> res!473017 e!399236)))

(assert (=> b!709347 (= res!473017 (= (h!14452 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709348 () Bool)

(assert (=> b!709348 (= e!399236 (contains!3954 (t!19713 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97067 res!473018) b!709347))

(assert (= (and b!709347 (not res!473017)) b!709348))

(assert (=> d!97067 m!666717))

(declare-fun m!666751 () Bool)

(assert (=> d!97067 m!666751))

(declare-fun m!666753 () Bool)

(assert (=> b!709348 m!666753))

(assert (=> b!709021 d!97067))

(declare-fun d!97069 () Bool)

(assert (=> d!97069 (= (validKeyInArray!0 (select (arr!19317 a!3591) from!2969)) (and (not (= (select (arr!19317 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19317 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!709032 d!97069))

(declare-fun d!97071 () Bool)

(declare-fun lt!318186 () Bool)

(assert (=> d!97071 (= lt!318186 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!348 newAcc!49)))))

(declare-fun e!399239 () Bool)

(assert (=> d!97071 (= lt!318186 e!399239)))

(declare-fun res!473020 () Bool)

(assert (=> d!97071 (=> (not res!473020) (not e!399239))))

(assert (=> d!97071 (= res!473020 (is-Cons!13407 newAcc!49))))

(assert (=> d!97071 (= (contains!3954 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318186)))

(declare-fun b!709353 () Bool)

(declare-fun e!399240 () Bool)

(assert (=> b!709353 (= e!399239 e!399240)))

(declare-fun res!473019 () Bool)

(assert (=> b!709353 (=> res!473019 e!399240)))

(assert (=> b!709353 (= res!473019 (= (h!14452 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709354 () Bool)

(assert (=> b!709354 (= e!399240 (contains!3954 (t!19713 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97071 res!473020) b!709353))

(assert (= (and b!709353 (not res!473019)) b!709354))

(assert (=> d!97071 m!666717))

(declare-fun m!666755 () Bool)

(assert (=> d!97071 m!666755))

(declare-fun m!666757 () Bool)

(assert (=> b!709354 m!666757))

(assert (=> b!709022 d!97071))

(declare-fun d!97073 () Bool)

(declare-fun res!473032 () Bool)

(declare-fun e!399253 () Bool)

(assert (=> d!97073 (=> res!473032 e!399253)))

(assert (=> d!97073 (= res!473032 (= (select (arr!19317 a!3591) from!2969) k!2824))))

(assert (=> d!97073 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!399253)))

(declare-fun b!709368 () Bool)

(declare-fun e!399254 () Bool)

(assert (=> b!709368 (= e!399253 e!399254)))

(declare-fun res!473033 () Bool)

(assert (=> b!709368 (=> (not res!473033) (not e!399254))))

(assert (=> b!709368 (= res!473033 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19710 a!3591)))))

(declare-fun b!709369 () Bool)

(assert (=> b!709369 (= e!399254 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97073 (not res!473032)) b!709368))

(assert (= (and b!709368 res!473033) b!709369))

(assert (=> d!97073 m!666453))

(declare-fun m!666771 () Bool)

(assert (=> b!709369 m!666771))

(assert (=> b!709033 d!97073))

(declare-fun b!709402 () Bool)

(declare-fun e!399285 () Bool)

(assert (=> b!709402 (= e!399285 (contains!3954 acc!652 (select (arr!19317 a!3591) from!2969)))))

(declare-fun b!709403 () Bool)

(declare-fun e!399287 () Bool)

(declare-fun call!34449 () Bool)

(assert (=> b!709403 (= e!399287 call!34449)))

(declare-fun d!97081 () Bool)

(declare-fun res!473064 () Bool)

(declare-fun e!399286 () Bool)

(assert (=> d!97081 (=> res!473064 e!399286)))

(assert (=> d!97081 (= res!473064 (bvsge from!2969 (size!19710 a!3591)))))

(assert (=> d!97081 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!399286)))

(declare-fun b!709404 () Bool)

(declare-fun e!399288 () Bool)

(assert (=> b!709404 (= e!399288 e!399287)))

(declare-fun c!78537 () Bool)

(assert (=> b!709404 (= c!78537 (validKeyInArray!0 (select (arr!19317 a!3591) from!2969)))))

(declare-fun b!709405 () Bool)

(assert (=> b!709405 (= e!399287 call!34449)))

(declare-fun bm!34446 () Bool)

(assert (=> bm!34446 (= call!34449 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78537 (Cons!13407 (select (arr!19317 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!709406 () Bool)

(assert (=> b!709406 (= e!399286 e!399288)))

(declare-fun res!473062 () Bool)

(assert (=> b!709406 (=> (not res!473062) (not e!399288))))

(assert (=> b!709406 (= res!473062 (not e!399285))))

(declare-fun res!473063 () Bool)

(assert (=> b!709406 (=> (not res!473063) (not e!399285))))

(assert (=> b!709406 (= res!473063 (validKeyInArray!0 (select (arr!19317 a!3591) from!2969)))))

(assert (= (and d!97081 (not res!473064)) b!709406))

(assert (= (and b!709406 res!473063) b!709402))

(assert (= (and b!709406 res!473062) b!709404))

(assert (= (and b!709404 c!78537) b!709403))

(assert (= (and b!709404 (not c!78537)) b!709405))

(assert (= (or b!709403 b!709405) bm!34446))

(assert (=> b!709402 m!666453))

(assert (=> b!709402 m!666453))

(declare-fun m!666797 () Bool)

(assert (=> b!709402 m!666797))

(assert (=> b!709404 m!666453))

(assert (=> b!709404 m!666453))

(assert (=> b!709404 m!666467))

(assert (=> bm!34446 m!666453))

(declare-fun m!666799 () Bool)

(assert (=> bm!34446 m!666799))

(assert (=> b!709406 m!666453))

(assert (=> b!709406 m!666453))

(assert (=> b!709406 m!666467))

(assert (=> b!709023 d!97081))

(declare-fun d!97097 () Bool)

(assert (=> d!97097 (= ($colon$colon!508 acc!652 (select (arr!19317 a!3591) from!2969)) (Cons!13407 (select (arr!19317 a!3591) from!2969) acc!652))))

(assert (=> b!709034 d!97097))

(declare-fun d!97099 () Bool)

(declare-fun lt!318191 () Bool)

(assert (=> d!97099 (= lt!318191 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!348 acc!652)))))

(declare-fun e!399289 () Bool)

(assert (=> d!97099 (= lt!318191 e!399289)))

(declare-fun res!473066 () Bool)

(assert (=> d!97099 (=> (not res!473066) (not e!399289))))

(assert (=> d!97099 (= res!473066 (is-Cons!13407 acc!652))))

(assert (=> d!97099 (= (contains!3954 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318191)))

(declare-fun b!709407 () Bool)

(declare-fun e!399290 () Bool)

(assert (=> b!709407 (= e!399289 e!399290)))

(declare-fun res!473065 () Bool)

(assert (=> b!709407 (=> res!473065 e!399290)))

(assert (=> b!709407 (= res!473065 (= (h!14452 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!709408 () Bool)

(assert (=> b!709408 (= e!399290 (contains!3954 (t!19713 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97099 res!473066) b!709407))

(assert (= (and b!709407 (not res!473065)) b!709408))

(assert (=> d!97099 m!666669))

(declare-fun m!666801 () Bool)

(assert (=> d!97099 m!666801))

(declare-fun m!666803 () Bool)

(assert (=> b!709408 m!666803))

(assert (=> b!709013 d!97099))

(declare-fun d!97101 () Bool)

(declare-fun lt!318192 () Bool)

(assert (=> d!97101 (= lt!318192 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!348 lt!318146)))))

(declare-fun e!399291 () Bool)

(assert (=> d!97101 (= lt!318192 e!399291)))

(declare-fun res!473068 () Bool)

(assert (=> d!97101 (=> (not res!473068) (not e!399291))))

(assert (=> d!97101 (= res!473068 (is-Cons!13407 lt!318146))))

(assert (=> d!97101 (= (contains!3954 lt!318146 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318192)))

(declare-fun b!709409 () Bool)

(declare-fun e!399292 () Bool)

(assert (=> b!709409 (= e!399291 e!399292)))

(declare-fun res!473067 () Bool)

(assert (=> b!709409 (=> res!473067 e!399292)))

