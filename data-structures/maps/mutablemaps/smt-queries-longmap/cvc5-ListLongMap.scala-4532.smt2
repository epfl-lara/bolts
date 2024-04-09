; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62730 () Bool)

(assert start!62730)

(declare-fun b!707610 () Bool)

(declare-fun res!471551 () Bool)

(declare-fun e!398205 () Bool)

(assert (=> b!707610 (=> (not res!471551) (not e!398205))))

(declare-datatypes ((array!40314 0))(
  ( (array!40315 (arr!19308 (Array (_ BitVec 32) (_ BitVec 64))) (size!19693 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40314)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13402 0))(
  ( (Nil!13399) (Cons!13398 (h!14443 (_ BitVec 64)) (t!19695 List!13402)) )
))
(declare-fun acc!652 () List!13402)

(declare-fun noDuplicate!1192 (List!13402) Bool)

(declare-fun $colon$colon!499 (List!13402 (_ BitVec 64)) List!13402)

(assert (=> b!707610 (= res!471551 (noDuplicate!1192 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))))))

(declare-fun b!707611 () Bool)

(declare-fun res!471554 () Bool)

(assert (=> b!707611 (=> (not res!471554) (not e!398205))))

(declare-fun newAcc!49 () List!13402)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!354 (List!13402 (_ BitVec 64)) List!13402)

(assert (=> b!707611 (= res!471554 (= (-!354 newAcc!49 k!2824) acc!652))))

(declare-fun res!471545 () Bool)

(assert (=> start!62730 (=> (not res!471545) (not e!398205))))

(assert (=> start!62730 (= res!471545 (and (bvslt (size!19693 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19693 a!3591))))))

(assert (=> start!62730 e!398205))

(assert (=> start!62730 true))

(declare-fun array_inv!15082 (array!40314) Bool)

(assert (=> start!62730 (array_inv!15082 a!3591)))

(declare-fun b!707612 () Bool)

(declare-fun res!471552 () Bool)

(assert (=> b!707612 (=> (not res!471552) (not e!398205))))

(declare-fun arrayContainsKey!0 (array!40314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707612 (= res!471552 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!707613 () Bool)

(declare-fun res!471549 () Bool)

(assert (=> b!707613 (=> (not res!471549) (not e!398205))))

(declare-fun contains!3945 (List!13402 (_ BitVec 64)) Bool)

(assert (=> b!707613 (= res!471549 (not (contains!3945 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707614 () Bool)

(declare-fun res!471546 () Bool)

(assert (=> b!707614 (=> (not res!471546) (not e!398205))))

(assert (=> b!707614 (= res!471546 (contains!3945 newAcc!49 k!2824))))

(declare-fun b!707615 () Bool)

(declare-fun res!471557 () Bool)

(assert (=> b!707615 (=> (not res!471557) (not e!398205))))

(assert (=> b!707615 (= res!471557 (not (contains!3945 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707616 () Bool)

(declare-fun res!471553 () Bool)

(assert (=> b!707616 (=> (not res!471553) (not e!398205))))

(assert (=> b!707616 (= res!471553 (noDuplicate!1192 newAcc!49))))

(declare-fun b!707617 () Bool)

(declare-fun res!471547 () Bool)

(assert (=> b!707617 (=> (not res!471547) (not e!398205))))

(assert (=> b!707617 (= res!471547 (noDuplicate!1192 acc!652))))

(declare-fun b!707618 () Bool)

(declare-fun res!471548 () Bool)

(assert (=> b!707618 (=> (not res!471548) (not e!398205))))

(assert (=> b!707618 (= res!471548 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707619 () Bool)

(declare-fun res!471541 () Bool)

(assert (=> b!707619 (=> (not res!471541) (not e!398205))))

(assert (=> b!707619 (= res!471541 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19693 a!3591)))))

(declare-fun b!707620 () Bool)

(declare-fun res!471550 () Bool)

(assert (=> b!707620 (=> (not res!471550) (not e!398205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707620 (= res!471550 (validKeyInArray!0 k!2824))))

(declare-fun b!707621 () Bool)

(assert (=> b!707621 (= e!398205 (not (noDuplicate!1192 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))))))

(declare-fun b!707622 () Bool)

(declare-fun res!471555 () Bool)

(assert (=> b!707622 (=> (not res!471555) (not e!398205))))

(declare-fun arrayNoDuplicates!0 (array!40314 (_ BitVec 32) List!13402) Bool)

(assert (=> b!707622 (= res!471555 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707623 () Bool)

(declare-fun res!471542 () Bool)

(assert (=> b!707623 (=> (not res!471542) (not e!398205))))

(assert (=> b!707623 (= res!471542 (not (contains!3945 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707624 () Bool)

(declare-fun res!471544 () Bool)

(assert (=> b!707624 (=> (not res!471544) (not e!398205))))

(declare-fun subseq!389 (List!13402 List!13402) Bool)

(assert (=> b!707624 (= res!471544 (subseq!389 acc!652 newAcc!49))))

(declare-fun b!707625 () Bool)

(declare-fun res!471543 () Bool)

(assert (=> b!707625 (=> (not res!471543) (not e!398205))))

(assert (=> b!707625 (= res!471543 (validKeyInArray!0 (select (arr!19308 a!3591) from!2969)))))

(declare-fun b!707626 () Bool)

(declare-fun res!471556 () Bool)

(assert (=> b!707626 (=> (not res!471556) (not e!398205))))

(assert (=> b!707626 (= res!471556 (not (contains!3945 acc!652 k!2824)))))

(declare-fun b!707627 () Bool)

(declare-fun res!471540 () Bool)

(assert (=> b!707627 (=> (not res!471540) (not e!398205))))

(assert (=> b!707627 (= res!471540 (not (contains!3945 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62730 res!471545) b!707617))

(assert (= (and b!707617 res!471547) b!707616))

(assert (= (and b!707616 res!471553) b!707613))

(assert (= (and b!707613 res!471549) b!707623))

(assert (= (and b!707623 res!471542) b!707612))

(assert (= (and b!707612 res!471552) b!707626))

(assert (= (and b!707626 res!471556) b!707620))

(assert (= (and b!707620 res!471550) b!707622))

(assert (= (and b!707622 res!471555) b!707624))

(assert (= (and b!707624 res!471544) b!707614))

(assert (= (and b!707614 res!471546) b!707611))

(assert (= (and b!707611 res!471554) b!707615))

(assert (= (and b!707615 res!471557) b!707627))

(assert (= (and b!707627 res!471540) b!707619))

(assert (= (and b!707619 res!471541) b!707625))

(assert (= (and b!707625 res!471543) b!707618))

(assert (= (and b!707618 res!471548) b!707610))

(assert (= (and b!707610 res!471551) b!707621))

(declare-fun m!665175 () Bool)

(assert (=> b!707620 m!665175))

(declare-fun m!665177 () Bool)

(assert (=> b!707617 m!665177))

(declare-fun m!665179 () Bool)

(assert (=> b!707627 m!665179))

(declare-fun m!665181 () Bool)

(assert (=> b!707613 m!665181))

(declare-fun m!665183 () Bool)

(assert (=> b!707623 m!665183))

(declare-fun m!665185 () Bool)

(assert (=> b!707615 m!665185))

(declare-fun m!665187 () Bool)

(assert (=> start!62730 m!665187))

(declare-fun m!665189 () Bool)

(assert (=> b!707624 m!665189))

(declare-fun m!665191 () Bool)

(assert (=> b!707622 m!665191))

(declare-fun m!665193 () Bool)

(assert (=> b!707626 m!665193))

(declare-fun m!665195 () Bool)

(assert (=> b!707614 m!665195))

(declare-fun m!665197 () Bool)

(assert (=> b!707611 m!665197))

(declare-fun m!665199 () Bool)

(assert (=> b!707621 m!665199))

(assert (=> b!707621 m!665199))

(declare-fun m!665201 () Bool)

(assert (=> b!707621 m!665201))

(assert (=> b!707621 m!665201))

(declare-fun m!665203 () Bool)

(assert (=> b!707621 m!665203))

(assert (=> b!707610 m!665199))

(assert (=> b!707610 m!665199))

(declare-fun m!665205 () Bool)

(assert (=> b!707610 m!665205))

(assert (=> b!707610 m!665205))

(declare-fun m!665207 () Bool)

(assert (=> b!707610 m!665207))

(declare-fun m!665209 () Bool)

(assert (=> b!707612 m!665209))

(assert (=> b!707625 m!665199))

(assert (=> b!707625 m!665199))

(declare-fun m!665211 () Bool)

(assert (=> b!707625 m!665211))

(declare-fun m!665213 () Bool)

(assert (=> b!707616 m!665213))

(push 1)

(assert (not b!707627))

(assert (not b!707614))

(assert (not b!707612))

(assert (not b!707616))

(assert (not start!62730))

(assert (not b!707613))

(assert (not b!707622))

(assert (not b!707626))

(assert (not b!707624))

(assert (not b!707610))

(assert (not b!707623))

(assert (not b!707621))

(assert (not b!707620))

(assert (not b!707625))

(assert (not b!707611))

(assert (not b!707615))

(assert (not b!707617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96493 () Bool)

(declare-fun res!471692 () Bool)

(declare-fun e!398246 () Bool)

(assert (=> d!96493 (=> res!471692 e!398246)))

(assert (=> d!96493 (= res!471692 (bvsge from!2969 (size!19693 a!3591)))))

(assert (=> d!96493 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398246)))

(declare-fun b!707766 () Bool)

(declare-fun e!398249 () Bool)

(declare-fun e!398250 () Bool)

(assert (=> b!707766 (= e!398249 e!398250)))

(declare-fun c!78404 () Bool)

(assert (=> b!707766 (= c!78404 (validKeyInArray!0 (select (arr!19308 a!3591) from!2969)))))

(declare-fun b!707767 () Bool)

(declare-fun call!34376 () Bool)

(assert (=> b!707767 (= e!398250 call!34376)))

(declare-fun b!707768 () Bool)

(assert (=> b!707768 (= e!398250 call!34376)))

(declare-fun e!398248 () Bool)

(declare-fun b!707769 () Bool)

(assert (=> b!707769 (= e!398248 (contains!3945 acc!652 (select (arr!19308 a!3591) from!2969)))))

(declare-fun bm!34373 () Bool)

(assert (=> bm!34373 (= call!34376 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78404 (Cons!13398 (select (arr!19308 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!707770 () Bool)

(assert (=> b!707770 (= e!398246 e!398249)))

(declare-fun res!471693 () Bool)

(assert (=> b!707770 (=> (not res!471693) (not e!398249))))

(assert (=> b!707770 (= res!471693 (not e!398248))))

(declare-fun res!471694 () Bool)

(assert (=> b!707770 (=> (not res!471694) (not e!398248))))

(assert (=> b!707770 (= res!471694 (validKeyInArray!0 (select (arr!19308 a!3591) from!2969)))))

(assert (= (and d!96493 (not res!471692)) b!707770))

(assert (= (and b!707770 res!471694) b!707769))

(assert (= (and b!707770 res!471693) b!707766))

(assert (= (and b!707766 c!78404) b!707768))

(assert (= (and b!707766 (not c!78404)) b!707767))

(assert (= (or b!707768 b!707767) bm!34373))

(assert (=> b!707766 m!665199))

(assert (=> b!707766 m!665199))

(assert (=> b!707766 m!665211))

(assert (=> b!707769 m!665199))

(assert (=> b!707769 m!665199))

(declare-fun m!665311 () Bool)

(assert (=> b!707769 m!665311))

(assert (=> bm!34373 m!665199))

(declare-fun m!665315 () Bool)

(assert (=> bm!34373 m!665315))

(assert (=> b!707770 m!665199))

(assert (=> b!707770 m!665199))

(assert (=> b!707770 m!665211))

(assert (=> b!707622 d!96493))

(declare-fun b!707811 () Bool)

(declare-fun e!398288 () List!13402)

(declare-fun call!34381 () List!13402)

(assert (=> b!707811 (= e!398288 (Cons!13398 (h!14443 newAcc!49) call!34381))))

(declare-fun b!707812 () Bool)

(declare-fun e!398287 () List!13402)

(assert (=> b!707812 (= e!398287 Nil!13399)))

(declare-fun e!398286 () Bool)

(declare-fun lt!317991 () List!13402)

(declare-fun b!707813 () Bool)

(declare-fun content!339 (List!13402) (Set (_ BitVec 64)))

(assert (=> b!707813 (= e!398286 (= (content!339 lt!317991) (set.minus (content!339 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun d!96511 () Bool)

(assert (=> d!96511 e!398286))

(declare-fun res!471723 () Bool)

(assert (=> d!96511 (=> (not res!471723) (not e!398286))))

(declare-fun size!19696 (List!13402) Int)

(assert (=> d!96511 (= res!471723 (<= (size!19696 lt!317991) (size!19696 newAcc!49)))))

(assert (=> d!96511 (= lt!317991 e!398287)))

(declare-fun c!78412 () Bool)

(assert (=> d!96511 (= c!78412 (is-Cons!13398 newAcc!49))))

(assert (=> d!96511 (= (-!354 newAcc!49 k!2824) lt!317991)))

(declare-fun bm!34378 () Bool)

(assert (=> bm!34378 (= call!34381 (-!354 (t!19695 newAcc!49) k!2824))))

(declare-fun b!707814 () Bool)

(assert (=> b!707814 (= e!398288 call!34381)))

(declare-fun b!707815 () Bool)

(assert (=> b!707815 (= e!398287 e!398288)))

(declare-fun c!78411 () Bool)

(assert (=> b!707815 (= c!78411 (= k!2824 (h!14443 newAcc!49)))))

(assert (= (and d!96511 c!78412) b!707815))

(assert (= (and d!96511 (not c!78412)) b!707812))

(assert (= (and b!707815 c!78411) b!707814))

(assert (= (and b!707815 (not c!78411)) b!707811))

(assert (= (or b!707814 b!707811) bm!34378))

(assert (= (and d!96511 res!471723) b!707813))

(declare-fun m!665341 () Bool)

(assert (=> b!707813 m!665341))

(declare-fun m!665343 () Bool)

(assert (=> b!707813 m!665343))

(declare-fun m!665345 () Bool)

(assert (=> b!707813 m!665345))

(declare-fun m!665347 () Bool)

(assert (=> d!96511 m!665347))

(declare-fun m!665349 () Bool)

(assert (=> d!96511 m!665349))

(declare-fun m!665351 () Bool)

(assert (=> bm!34378 m!665351))

(assert (=> b!707611 d!96511))

(declare-fun d!96529 () Bool)

(declare-fun res!471747 () Bool)

(declare-fun e!398313 () Bool)

(assert (=> d!96529 (=> res!471747 e!398313)))

(assert (=> d!96529 (= res!471747 (is-Nil!13399 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))))))

(assert (=> d!96529 (= (noDuplicate!1192 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))) e!398313)))

(declare-fun b!707841 () Bool)

(declare-fun e!398314 () Bool)

(assert (=> b!707841 (= e!398313 e!398314)))

(declare-fun res!471748 () Bool)

(assert (=> b!707841 (=> (not res!471748) (not e!398314))))

(assert (=> b!707841 (= res!471748 (not (contains!3945 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))) (h!14443 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))))))))

(declare-fun b!707842 () Bool)

(assert (=> b!707842 (= e!398314 (noDuplicate!1192 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))))))

(assert (= (and d!96529 (not res!471747)) b!707841))

(assert (= (and b!707841 res!471748) b!707842))

(declare-fun m!665381 () Bool)

(assert (=> b!707841 m!665381))

(declare-fun m!665383 () Bool)

(assert (=> b!707842 m!665383))

(assert (=> b!707610 d!96529))

(declare-fun d!96545 () Bool)

(assert (=> d!96545 (= ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)) (Cons!13398 (select (arr!19308 a!3591) from!2969) acc!652))))

(assert (=> b!707610 d!96545))

(declare-fun d!96549 () Bool)

(declare-fun res!471749 () Bool)

(declare-fun e!398315 () Bool)

(assert (=> d!96549 (=> res!471749 e!398315)))

(assert (=> d!96549 (= res!471749 (is-Nil!13399 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969))))))

(assert (=> d!96549 (= (noDuplicate!1192 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969))) e!398315)))

(declare-fun b!707843 () Bool)

(declare-fun e!398316 () Bool)

(assert (=> b!707843 (= e!398315 e!398316)))

(declare-fun res!471750 () Bool)

(assert (=> b!707843 (=> (not res!471750) (not e!398316))))

(assert (=> b!707843 (= res!471750 (not (contains!3945 (t!19695 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969))) (h!14443 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969))))))))

(declare-fun b!707844 () Bool)

(assert (=> b!707844 (= e!398316 (noDuplicate!1192 (t!19695 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))))))

(assert (= (and d!96549 (not res!471749)) b!707843))

(assert (= (and b!707843 res!471750) b!707844))

(declare-fun m!665385 () Bool)

(assert (=> b!707843 m!665385))

(declare-fun m!665387 () Bool)

(assert (=> b!707844 m!665387))

(assert (=> b!707621 d!96549))

(declare-fun d!96551 () Bool)

(assert (=> d!96551 (= ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)) (Cons!13398 (select (arr!19308 a!3591) from!2969) newAcc!49))))

(assert (=> b!707621 d!96551))

(declare-fun d!96553 () Bool)

(assert (=> d!96553 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707620 d!96553))

(declare-fun d!96555 () Bool)

(declare-fun lt!317998 () Bool)

(assert (=> d!96555 (= lt!317998 (set.member k!2824 (content!339 newAcc!49)))))

(declare-fun e!398340 () Bool)

(assert (=> d!96555 (= lt!317998 e!398340)))

(declare-fun res!471769 () Bool)

(assert (=> d!96555 (=> (not res!471769) (not e!398340))))

(assert (=> d!96555 (= res!471769 (is-Cons!13398 newAcc!49))))

(assert (=> d!96555 (= (contains!3945 newAcc!49 k!2824) lt!317998)))

(declare-fun b!707871 () Bool)

(declare-fun e!398341 () Bool)

(assert (=> b!707871 (= e!398340 e!398341)))

(declare-fun res!471770 () Bool)

(assert (=> b!707871 (=> res!471770 e!398341)))

(assert (=> b!707871 (= res!471770 (= (h!14443 newAcc!49) k!2824))))

(declare-fun b!707872 () Bool)

(assert (=> b!707872 (= e!398341 (contains!3945 (t!19695 newAcc!49) k!2824))))

(assert (= (and d!96555 res!471769) b!707871))

(assert (= (and b!707871 (not res!471770)) b!707872))

(assert (=> d!96555 m!665343))

(declare-fun m!665393 () Bool)

(assert (=> d!96555 m!665393))

(declare-fun m!665395 () Bool)

(assert (=> b!707872 m!665395))

(assert (=> b!707614 d!96555))

(declare-fun d!96559 () Bool)

(assert (=> d!96559 (= (validKeyInArray!0 (select (arr!19308 a!3591) from!2969)) (and (not (= (select (arr!19308 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19308 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707625 d!96559))

(declare-fun d!96561 () Bool)

(declare-fun res!471790 () Bool)

(declare-fun e!398370 () Bool)

(assert (=> d!96561 (=> res!471790 e!398370)))

(assert (=> d!96561 (= res!471790 (is-Nil!13399 acc!652))))

(assert (=> d!96561 (= (subseq!389 acc!652 newAcc!49) e!398370)))

(declare-fun b!707905 () Bool)

(declare-fun e!398371 () Bool)

(declare-fun e!398369 () Bool)

(assert (=> b!707905 (= e!398371 e!398369)))

(declare-fun res!471793 () Bool)

(assert (=> b!707905 (=> res!471793 e!398369)))

(declare-fun e!398368 () Bool)

(assert (=> b!707905 (= res!471793 e!398368)))

(declare-fun res!471791 () Bool)

(assert (=> b!707905 (=> (not res!471791) (not e!398368))))

(assert (=> b!707905 (= res!471791 (= (h!14443 acc!652) (h!14443 newAcc!49)))))

(declare-fun b!707904 () Bool)

(assert (=> b!707904 (= e!398370 e!398371)))

(declare-fun res!471792 () Bool)

(assert (=> b!707904 (=> (not res!471792) (not e!398371))))

(assert (=> b!707904 (= res!471792 (is-Cons!13398 newAcc!49))))

(declare-fun b!707907 () Bool)

(assert (=> b!707907 (= e!398369 (subseq!389 acc!652 (t!19695 newAcc!49)))))

(declare-fun b!707906 () Bool)

(assert (=> b!707906 (= e!398368 (subseq!389 (t!19695 acc!652) (t!19695 newAcc!49)))))

(assert (= (and d!96561 (not res!471790)) b!707904))

(assert (= (and b!707904 res!471792) b!707905))

(assert (= (and b!707905 res!471791) b!707906))

(assert (= (and b!707905 (not res!471793)) b!707907))

(declare-fun m!665407 () Bool)

(assert (=> b!707907 m!665407))

(declare-fun m!665409 () Bool)

(assert (=> b!707906 m!665409))

(assert (=> b!707624 d!96561))

(declare-fun d!96565 () Bool)

(declare-fun lt!318002 () Bool)

(assert (=> d!96565 (= lt!318002 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!339 acc!652)))))

(declare-fun e!398376 () Bool)

(assert (=> d!96565 (= lt!318002 e!398376)))

(declare-fun res!471798 () Bool)

(assert (=> d!96565 (=> (not res!471798) (not e!398376))))

(assert (=> d!96565 (= res!471798 (is-Cons!13398 acc!652))))

(assert (=> d!96565 (= (contains!3945 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318002)))

(declare-fun b!707912 () Bool)

(declare-fun e!398377 () Bool)

(assert (=> b!707912 (= e!398376 e!398377)))

(declare-fun res!471799 () Bool)

(assert (=> b!707912 (=> res!471799 e!398377)))

(assert (=> b!707912 (= res!471799 (= (h!14443 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707913 () Bool)

(assert (=> b!707913 (= e!398377 (contains!3945 (t!19695 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96565 res!471798) b!707912))

(assert (= (and b!707912 (not res!471799)) b!707913))

(declare-fun m!665411 () Bool)

(assert (=> d!96565 m!665411))

(declare-fun m!665415 () Bool)

(assert (=> d!96565 m!665415))

(declare-fun m!665419 () Bool)

(assert (=> b!707913 m!665419))

(assert (=> b!707613 d!96565))

(declare-fun d!96569 () Bool)

(declare-fun res!471807 () Bool)

(declare-fun e!398387 () Bool)

(assert (=> d!96569 (=> res!471807 e!398387)))

(assert (=> d!96569 (= res!471807 (= (select (arr!19308 a!3591) from!2969) k!2824))))

(assert (=> d!96569 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!398387)))

(declare-fun b!707925 () Bool)

(declare-fun e!398388 () Bool)

(assert (=> b!707925 (= e!398387 e!398388)))

(declare-fun res!471808 () Bool)

(assert (=> b!707925 (=> (not res!471808) (not e!398388))))

(assert (=> b!707925 (= res!471808 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19693 a!3591)))))

(declare-fun b!707926 () Bool)

(assert (=> b!707926 (= e!398388 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96569 (not res!471807)) b!707925))

(assert (= (and b!707925 res!471808) b!707926))

(assert (=> d!96569 m!665199))

(declare-fun m!665437 () Bool)

(assert (=> b!707926 m!665437))

(assert (=> b!707612 d!96569))

(declare-fun d!96573 () Bool)

(declare-fun lt!318005 () Bool)

(assert (=> d!96573 (= lt!318005 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!339 acc!652)))))

(declare-fun e!398389 () Bool)

(assert (=> d!96573 (= lt!318005 e!398389)))

(declare-fun res!471809 () Bool)

(assert (=> d!96573 (=> (not res!471809) (not e!398389))))

(assert (=> d!96573 (= res!471809 (is-Cons!13398 acc!652))))

(assert (=> d!96573 (= (contains!3945 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318005)))

(declare-fun b!707927 () Bool)

(declare-fun e!398390 () Bool)

(assert (=> b!707927 (= e!398389 e!398390)))

(declare-fun res!471810 () Bool)

(assert (=> b!707927 (=> res!471810 e!398390)))

(assert (=> b!707927 (= res!471810 (= (h!14443 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707928 () Bool)

(assert (=> b!707928 (= e!398390 (contains!3945 (t!19695 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96573 res!471809) b!707927))

(assert (= (and b!707927 (not res!471810)) b!707928))

(assert (=> d!96573 m!665411))

(declare-fun m!665439 () Bool)

(assert (=> d!96573 m!665439))

(declare-fun m!665441 () Bool)

(assert (=> b!707928 m!665441))

(assert (=> b!707623 d!96573))

(declare-fun d!96575 () Bool)

(declare-fun res!471811 () Bool)

(declare-fun e!398391 () Bool)

(assert (=> d!96575 (=> res!471811 e!398391)))

(assert (=> d!96575 (= res!471811 (is-Nil!13399 acc!652))))

(assert (=> d!96575 (= (noDuplicate!1192 acc!652) e!398391)))

(declare-fun b!707929 () Bool)

(declare-fun e!398392 () Bool)

(assert (=> b!707929 (= e!398391 e!398392)))

(declare-fun res!471812 () Bool)

(assert (=> b!707929 (=> (not res!471812) (not e!398392))))

(assert (=> b!707929 (= res!471812 (not (contains!3945 (t!19695 acc!652) (h!14443 acc!652))))))

(declare-fun b!707930 () Bool)

(assert (=> b!707930 (= e!398392 (noDuplicate!1192 (t!19695 acc!652)))))

(assert (= (and d!96575 (not res!471811)) b!707929))

(assert (= (and b!707929 res!471812) b!707930))

(declare-fun m!665443 () Bool)

(assert (=> b!707929 m!665443))

(declare-fun m!665445 () Bool)

(assert (=> b!707930 m!665445))

(assert (=> b!707617 d!96575))

(declare-fun d!96577 () Bool)

(declare-fun res!471813 () Bool)

(declare-fun e!398393 () Bool)

(assert (=> d!96577 (=> res!471813 e!398393)))

(assert (=> d!96577 (= res!471813 (is-Nil!13399 newAcc!49))))

(assert (=> d!96577 (= (noDuplicate!1192 newAcc!49) e!398393)))

(declare-fun b!707931 () Bool)

(declare-fun e!398394 () Bool)

(assert (=> b!707931 (= e!398393 e!398394)))

(declare-fun res!471814 () Bool)

(assert (=> b!707931 (=> (not res!471814) (not e!398394))))

(assert (=> b!707931 (= res!471814 (not (contains!3945 (t!19695 newAcc!49) (h!14443 newAcc!49))))))

(declare-fun b!707932 () Bool)

(assert (=> b!707932 (= e!398394 (noDuplicate!1192 (t!19695 newAcc!49)))))

(assert (= (and d!96577 (not res!471813)) b!707931))

(assert (= (and b!707931 res!471814) b!707932))

(declare-fun m!665447 () Bool)

(assert (=> b!707931 m!665447))

(declare-fun m!665449 () Bool)

(assert (=> b!707932 m!665449))

(assert (=> b!707616 d!96577))

(declare-fun d!96579 () Bool)

(declare-fun lt!318006 () Bool)

(assert (=> d!96579 (= lt!318006 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!339 newAcc!49)))))

(declare-fun e!398395 () Bool)

(assert (=> d!96579 (= lt!318006 e!398395)))

(declare-fun res!471815 () Bool)

(assert (=> d!96579 (=> (not res!471815) (not e!398395))))

(assert (=> d!96579 (= res!471815 (is-Cons!13398 newAcc!49))))

(assert (=> d!96579 (= (contains!3945 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318006)))

(declare-fun b!707933 () Bool)

(declare-fun e!398396 () Bool)

(assert (=> b!707933 (= e!398395 e!398396)))

(declare-fun res!471816 () Bool)

(assert (=> b!707933 (=> res!471816 e!398396)))

(assert (=> b!707933 (= res!471816 (= (h!14443 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707934 () Bool)

(assert (=> b!707934 (= e!398396 (contains!3945 (t!19695 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96579 res!471815) b!707933))

(assert (= (and b!707933 (not res!471816)) b!707934))

(assert (=> d!96579 m!665343))

(declare-fun m!665451 () Bool)

(assert (=> d!96579 m!665451))

(declare-fun m!665453 () Bool)

(assert (=> b!707934 m!665453))

(assert (=> b!707627 d!96579))

(declare-fun d!96581 () Bool)

(declare-fun lt!318007 () Bool)

(assert (=> d!96581 (= lt!318007 (set.member k!2824 (content!339 acc!652)))))

(declare-fun e!398399 () Bool)

(assert (=> d!96581 (= lt!318007 e!398399)))

(declare-fun res!471819 () Bool)

(assert (=> d!96581 (=> (not res!471819) (not e!398399))))

(assert (=> d!96581 (= res!471819 (is-Cons!13398 acc!652))))

(assert (=> d!96581 (= (contains!3945 acc!652 k!2824) lt!318007)))

(declare-fun b!707937 () Bool)

(declare-fun e!398400 () Bool)

(assert (=> b!707937 (= e!398399 e!398400)))

(declare-fun res!471820 () Bool)

(assert (=> b!707937 (=> res!471820 e!398400)))

(assert (=> b!707937 (= res!471820 (= (h!14443 acc!652) k!2824))))

(declare-fun b!707938 () Bool)

(assert (=> b!707938 (= e!398400 (contains!3945 (t!19695 acc!652) k!2824))))

(assert (= (and d!96581 res!471819) b!707937))

(assert (= (and b!707937 (not res!471820)) b!707938))

(assert (=> d!96581 m!665411))

(declare-fun m!665455 () Bool)

(assert (=> d!96581 m!665455))

(declare-fun m!665457 () Bool)

(assert (=> b!707938 m!665457))

(assert (=> b!707626 d!96581))

(declare-fun d!96583 () Bool)

(declare-fun lt!318008 () Bool)

(assert (=> d!96583 (= lt!318008 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!339 newAcc!49)))))

(declare-fun e!398407 () Bool)

(assert (=> d!96583 (= lt!318008 e!398407)))

(declare-fun res!471825 () Bool)

(assert (=> d!96583 (=> (not res!471825) (not e!398407))))

(assert (=> d!96583 (= res!471825 (is-Cons!13398 newAcc!49))))

(assert (=> d!96583 (= (contains!3945 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318008)))

(declare-fun b!707947 () Bool)

(declare-fun e!398408 () Bool)

(assert (=> b!707947 (= e!398407 e!398408)))

(declare-fun res!471826 () Bool)

(assert (=> b!707947 (=> res!471826 e!398408)))

(assert (=> b!707947 (= res!471826 (= (h!14443 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707948 () Bool)

(assert (=> b!707948 (= e!398408 (contains!3945 (t!19695 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96583 res!471825) b!707947))

(assert (= (and b!707947 (not res!471826)) b!707948))

(assert (=> d!96583 m!665343))

(declare-fun m!665459 () Bool)

(assert (=> d!96583 m!665459))

(declare-fun m!665461 () Bool)

(assert (=> b!707948 m!665461))

(assert (=> b!707615 d!96583))

(declare-fun d!96585 () Bool)

(assert (=> d!96585 (= (array_inv!15082 a!3591) (bvsge (size!19693 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62730 d!96585))

(push 1)

(assert (not b!707934))

(assert (not b!707841))

(assert (not b!707928))

(assert (not d!96581))

(assert (not b!707938))

(assert (not b!707932))

(assert (not b!707931))

(assert (not b!707907))

(assert (not b!707948))

(assert (not d!96511))

(assert (not bm!34378))

(assert (not b!707930))

(assert (not b!707843))

(assert (not b!707872))

(assert (not b!707770))

(assert (not b!707842))

(assert (not b!707926))

(assert (not b!707906))

(assert (not d!96565))

(assert (not b!707844))

(assert (not d!96555))

(assert (not bm!34373))

(assert (not b!707913))

(assert (not d!96579))

(assert (not d!96573))

(assert (not b!707769))

(assert (not b!707929))

(assert (not b!707766))

(assert (not b!707813))

(assert (not d!96583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!96651 () Bool)

(declare-fun lt!318031 () Int)

(assert (=> d!96651 (>= lt!318031 0)))

(declare-fun e!398481 () Int)

(assert (=> d!96651 (= lt!318031 e!398481)))

(declare-fun c!78443 () Bool)

(assert (=> d!96651 (= c!78443 (is-Nil!13399 lt!317991))))

(assert (=> d!96651 (= (size!19696 lt!317991) lt!318031)))

(declare-fun b!708036 () Bool)

(assert (=> b!708036 (= e!398481 0)))

(declare-fun b!708037 () Bool)

(assert (=> b!708037 (= e!398481 (+ 1 (size!19696 (t!19695 lt!317991))))))

(assert (= (and d!96651 c!78443) b!708036))

(assert (= (and d!96651 (not c!78443)) b!708037))

(declare-fun m!665589 () Bool)

(assert (=> b!708037 m!665589))

(assert (=> d!96511 d!96651))

(declare-fun d!96653 () Bool)

(declare-fun lt!318032 () Int)

(assert (=> d!96653 (>= lt!318032 0)))

(declare-fun e!398482 () Int)

(assert (=> d!96653 (= lt!318032 e!398482)))

(declare-fun c!78444 () Bool)

(assert (=> d!96653 (= c!78444 (is-Nil!13399 newAcc!49))))

(assert (=> d!96653 (= (size!19696 newAcc!49) lt!318032)))

(declare-fun b!708038 () Bool)

(assert (=> b!708038 (= e!398482 0)))

(declare-fun b!708039 () Bool)

(assert (=> b!708039 (= e!398482 (+ 1 (size!19696 (t!19695 newAcc!49))))))

(assert (= (and d!96653 c!78444) b!708038))

(assert (= (and d!96653 (not c!78444)) b!708039))

(declare-fun m!665591 () Bool)

(assert (=> b!708039 m!665591))

(assert (=> d!96511 d!96653))

(declare-fun d!96655 () Bool)

(declare-fun res!471884 () Bool)

(declare-fun e!398485 () Bool)

(assert (=> d!96655 (=> res!471884 e!398485)))

(assert (=> d!96655 (= res!471884 (is-Nil!13399 (t!19695 acc!652)))))

(assert (=> d!96655 (= (subseq!389 (t!19695 acc!652) (t!19695 newAcc!49)) e!398485)))

(declare-fun b!708041 () Bool)

(declare-fun e!398486 () Bool)

(declare-fun e!398484 () Bool)

(assert (=> b!708041 (= e!398486 e!398484)))

(declare-fun res!471887 () Bool)

(assert (=> b!708041 (=> res!471887 e!398484)))

(declare-fun e!398483 () Bool)

(assert (=> b!708041 (= res!471887 e!398483)))

(declare-fun res!471885 () Bool)

(assert (=> b!708041 (=> (not res!471885) (not e!398483))))

(assert (=> b!708041 (= res!471885 (= (h!14443 (t!19695 acc!652)) (h!14443 (t!19695 newAcc!49))))))

(declare-fun b!708040 () Bool)

(assert (=> b!708040 (= e!398485 e!398486)))

(declare-fun res!471886 () Bool)

(assert (=> b!708040 (=> (not res!471886) (not e!398486))))

(assert (=> b!708040 (= res!471886 (is-Cons!13398 (t!19695 newAcc!49)))))

(declare-fun b!708043 () Bool)

(assert (=> b!708043 (= e!398484 (subseq!389 (t!19695 acc!652) (t!19695 (t!19695 newAcc!49))))))

(declare-fun b!708042 () Bool)

(assert (=> b!708042 (= e!398483 (subseq!389 (t!19695 (t!19695 acc!652)) (t!19695 (t!19695 newAcc!49))))))

(assert (= (and d!96655 (not res!471884)) b!708040))

(assert (= (and b!708040 res!471886) b!708041))

(assert (= (and b!708041 res!471885) b!708042))

(assert (= (and b!708041 (not res!471887)) b!708043))

(declare-fun m!665593 () Bool)

(assert (=> b!708043 m!665593))

(declare-fun m!665595 () Bool)

(assert (=> b!708042 m!665595))

(assert (=> b!707906 d!96655))

(declare-fun d!96657 () Bool)

(declare-fun lt!318033 () Bool)

(assert (=> d!96657 (= lt!318033 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!339 (t!19695 newAcc!49))))))

(declare-fun e!398487 () Bool)

(assert (=> d!96657 (= lt!318033 e!398487)))

(declare-fun res!471888 () Bool)

(assert (=> d!96657 (=> (not res!471888) (not e!398487))))

(assert (=> d!96657 (= res!471888 (is-Cons!13398 (t!19695 newAcc!49)))))

(assert (=> d!96657 (= (contains!3945 (t!19695 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000) lt!318033)))

(declare-fun b!708044 () Bool)

(declare-fun e!398488 () Bool)

(assert (=> b!708044 (= e!398487 e!398488)))

(declare-fun res!471889 () Bool)

(assert (=> b!708044 (=> res!471889 e!398488)))

(assert (=> b!708044 (= res!471889 (= (h!14443 (t!19695 newAcc!49)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708045 () Bool)

(assert (=> b!708045 (= e!398488 (contains!3945 (t!19695 (t!19695 newAcc!49)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96657 res!471888) b!708044))

(assert (= (and b!708044 (not res!471889)) b!708045))

(declare-fun m!665597 () Bool)

(assert (=> d!96657 m!665597))

(declare-fun m!665599 () Bool)

(assert (=> d!96657 m!665599))

(declare-fun m!665601 () Bool)

(assert (=> b!708045 m!665601))

(assert (=> b!707934 d!96657))

(declare-fun d!96659 () Bool)

(declare-fun lt!318034 () Bool)

(assert (=> d!96659 (= lt!318034 (set.member (select (arr!19308 a!3591) from!2969) (content!339 acc!652)))))

(declare-fun e!398489 () Bool)

(assert (=> d!96659 (= lt!318034 e!398489)))

(declare-fun res!471890 () Bool)

(assert (=> d!96659 (=> (not res!471890) (not e!398489))))

(assert (=> d!96659 (= res!471890 (is-Cons!13398 acc!652))))

(assert (=> d!96659 (= (contains!3945 acc!652 (select (arr!19308 a!3591) from!2969)) lt!318034)))

(declare-fun b!708046 () Bool)

(declare-fun e!398490 () Bool)

(assert (=> b!708046 (= e!398489 e!398490)))

(declare-fun res!471891 () Bool)

(assert (=> b!708046 (=> res!471891 e!398490)))

(assert (=> b!708046 (= res!471891 (= (h!14443 acc!652) (select (arr!19308 a!3591) from!2969)))))

(declare-fun b!708047 () Bool)

(assert (=> b!708047 (= e!398490 (contains!3945 (t!19695 acc!652) (select (arr!19308 a!3591) from!2969)))))

(assert (= (and d!96659 res!471890) b!708046))

(assert (= (and b!708046 (not res!471891)) b!708047))

(assert (=> d!96659 m!665411))

(assert (=> d!96659 m!665199))

(declare-fun m!665603 () Bool)

(assert (=> d!96659 m!665603))

(assert (=> b!708047 m!665199))

(declare-fun m!665605 () Bool)

(assert (=> b!708047 m!665605))

(assert (=> b!707769 d!96659))

(declare-fun d!96661 () Bool)

(declare-fun res!471892 () Bool)

(declare-fun e!398491 () Bool)

(assert (=> d!96661 (=> res!471892 e!398491)))

(assert (=> d!96661 (= res!471892 (is-Nil!13399 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))))))

(assert (=> d!96661 (= (noDuplicate!1192 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))) e!398491)))

(declare-fun b!708048 () Bool)

(declare-fun e!398492 () Bool)

(assert (=> b!708048 (= e!398491 e!398492)))

(declare-fun res!471893 () Bool)

(assert (=> b!708048 (=> (not res!471893) (not e!398492))))

(assert (=> b!708048 (= res!471893 (not (contains!3945 (t!19695 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))) (h!14443 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))))))))

(declare-fun b!708049 () Bool)

(assert (=> b!708049 (= e!398492 (noDuplicate!1192 (t!19695 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))))))))

(assert (= (and d!96661 (not res!471892)) b!708048))

(assert (= (and b!708048 res!471893) b!708049))

(declare-fun m!665607 () Bool)

(assert (=> b!708048 m!665607))

(declare-fun m!665609 () Bool)

(assert (=> b!708049 m!665609))

(assert (=> b!707842 d!96661))

(declare-fun d!96663 () Bool)

(declare-fun c!78447 () Bool)

(assert (=> d!96663 (= c!78447 (is-Nil!13399 acc!652))))

(declare-fun e!398495 () (Set (_ BitVec 64)))

(assert (=> d!96663 (= (content!339 acc!652) e!398495)))

(declare-fun b!708054 () Bool)

(assert (=> b!708054 (= e!398495 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!708055 () Bool)

(assert (=> b!708055 (= e!398495 (set.union (set.insert (h!14443 acc!652) (as set.empty (Set (_ BitVec 64)))) (content!339 (t!19695 acc!652))))))

(assert (= (and d!96663 c!78447) b!708054))

(assert (= (and d!96663 (not c!78447)) b!708055))

(declare-fun m!665611 () Bool)

(assert (=> b!708055 m!665611))

(declare-fun m!665613 () Bool)

(assert (=> b!708055 m!665613))

(assert (=> d!96573 d!96663))

(declare-fun d!96665 () Bool)

(declare-fun lt!318035 () Bool)

(assert (=> d!96665 (= lt!318035 (set.member k!2824 (content!339 (t!19695 acc!652))))))

(declare-fun e!398496 () Bool)

(assert (=> d!96665 (= lt!318035 e!398496)))

(declare-fun res!471894 () Bool)

(assert (=> d!96665 (=> (not res!471894) (not e!398496))))

(assert (=> d!96665 (= res!471894 (is-Cons!13398 (t!19695 acc!652)))))

(assert (=> d!96665 (= (contains!3945 (t!19695 acc!652) k!2824) lt!318035)))

(declare-fun b!708056 () Bool)

(declare-fun e!398497 () Bool)

(assert (=> b!708056 (= e!398496 e!398497)))

(declare-fun res!471895 () Bool)

(assert (=> b!708056 (=> res!471895 e!398497)))

(assert (=> b!708056 (= res!471895 (= (h!14443 (t!19695 acc!652)) k!2824))))

(declare-fun b!708057 () Bool)

(assert (=> b!708057 (= e!398497 (contains!3945 (t!19695 (t!19695 acc!652)) k!2824))))

(assert (= (and d!96665 res!471894) b!708056))

(assert (= (and b!708056 (not res!471895)) b!708057))

(assert (=> d!96665 m!665613))

(declare-fun m!665615 () Bool)

(assert (=> d!96665 m!665615))

(declare-fun m!665617 () Bool)

(assert (=> b!708057 m!665617))

(assert (=> b!707938 d!96665))

(assert (=> b!707770 d!96559))

(declare-fun d!96667 () Bool)

(declare-fun res!471896 () Bool)

(declare-fun e!398500 () Bool)

(assert (=> d!96667 (=> res!471896 e!398500)))

(assert (=> d!96667 (= res!471896 (is-Nil!13399 acc!652))))

(assert (=> d!96667 (= (subseq!389 acc!652 (t!19695 newAcc!49)) e!398500)))

(declare-fun b!708059 () Bool)

(declare-fun e!398501 () Bool)

(declare-fun e!398499 () Bool)

(assert (=> b!708059 (= e!398501 e!398499)))

(declare-fun res!471899 () Bool)

(assert (=> b!708059 (=> res!471899 e!398499)))

(declare-fun e!398498 () Bool)

(assert (=> b!708059 (= res!471899 e!398498)))

(declare-fun res!471897 () Bool)

(assert (=> b!708059 (=> (not res!471897) (not e!398498))))

(assert (=> b!708059 (= res!471897 (= (h!14443 acc!652) (h!14443 (t!19695 newAcc!49))))))

(declare-fun b!708058 () Bool)

(assert (=> b!708058 (= e!398500 e!398501)))

(declare-fun res!471898 () Bool)

(assert (=> b!708058 (=> (not res!471898) (not e!398501))))

(assert (=> b!708058 (= res!471898 (is-Cons!13398 (t!19695 newAcc!49)))))

(declare-fun b!708061 () Bool)

(assert (=> b!708061 (= e!398499 (subseq!389 acc!652 (t!19695 (t!19695 newAcc!49))))))

(declare-fun b!708060 () Bool)

(assert (=> b!708060 (= e!398498 (subseq!389 (t!19695 acc!652) (t!19695 (t!19695 newAcc!49))))))

(assert (= (and d!96667 (not res!471896)) b!708058))

(assert (= (and b!708058 res!471898) b!708059))

(assert (= (and b!708059 res!471897) b!708060))

(assert (= (and b!708059 (not res!471899)) b!708061))

(declare-fun m!665619 () Bool)

(assert (=> b!708061 m!665619))

(assert (=> b!708060 m!665593))

(assert (=> b!707907 d!96667))

(declare-fun d!96669 () Bool)

(declare-fun res!471900 () Bool)

(declare-fun e!398502 () Bool)

(assert (=> d!96669 (=> res!471900 e!398502)))

(assert (=> d!96669 (= res!471900 (bvsge (bvadd from!2969 #b00000000000000000000000000000001) (size!19693 a!3591)))))

(assert (=> d!96669 (= (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78404 (Cons!13398 (select (arr!19308 a!3591) from!2969) acc!652) acc!652)) e!398502)))

(declare-fun b!708062 () Bool)

(declare-fun e!398504 () Bool)

(declare-fun e!398505 () Bool)

(assert (=> b!708062 (= e!398504 e!398505)))

(declare-fun c!78448 () Bool)

(assert (=> b!708062 (= c!78448 (validKeyInArray!0 (select (arr!19308 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun b!708063 () Bool)

(declare-fun call!34394 () Bool)

(assert (=> b!708063 (= e!398505 call!34394)))

(declare-fun b!708064 () Bool)

(assert (=> b!708064 (= e!398505 call!34394)))

(declare-fun e!398503 () Bool)

(declare-fun b!708065 () Bool)

(assert (=> b!708065 (= e!398503 (contains!3945 (ite c!78404 (Cons!13398 (select (arr!19308 a!3591) from!2969) acc!652) acc!652) (select (arr!19308 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun bm!34391 () Bool)

(assert (=> bm!34391 (= call!34394 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!78448 (Cons!13398 (select (arr!19308 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) (ite c!78404 (Cons!13398 (select (arr!19308 a!3591) from!2969) acc!652) acc!652)) (ite c!78404 (Cons!13398 (select (arr!19308 a!3591) from!2969) acc!652) acc!652))))))

(declare-fun b!708066 () Bool)

(assert (=> b!708066 (= e!398502 e!398504)))

(declare-fun res!471901 () Bool)

(assert (=> b!708066 (=> (not res!471901) (not e!398504))))

(assert (=> b!708066 (= res!471901 (not e!398503))))

(declare-fun res!471902 () Bool)

(assert (=> b!708066 (=> (not res!471902) (not e!398503))))

(assert (=> b!708066 (= res!471902 (validKeyInArray!0 (select (arr!19308 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(assert (= (and d!96669 (not res!471900)) b!708066))

(assert (= (and b!708066 res!471902) b!708065))

(assert (= (and b!708066 res!471901) b!708062))

(assert (= (and b!708062 c!78448) b!708064))

(assert (= (and b!708062 (not c!78448)) b!708063))

(assert (= (or b!708064 b!708063) bm!34391))

(declare-fun m!665621 () Bool)

(assert (=> b!708062 m!665621))

(assert (=> b!708062 m!665621))

(declare-fun m!665623 () Bool)

(assert (=> b!708062 m!665623))

(assert (=> b!708065 m!665621))

(assert (=> b!708065 m!665621))

(declare-fun m!665625 () Bool)

(assert (=> b!708065 m!665625))

(assert (=> bm!34391 m!665621))

(declare-fun m!665627 () Bool)

(assert (=> bm!34391 m!665627))

(assert (=> b!708066 m!665621))

(assert (=> b!708066 m!665621))

(assert (=> b!708066 m!665623))

(assert (=> bm!34373 d!96669))

(declare-fun d!96671 () Bool)

(declare-fun res!471903 () Bool)

(declare-fun e!398506 () Bool)

(assert (=> d!96671 (=> res!471903 e!398506)))

(assert (=> d!96671 (= res!471903 (= (select (arr!19308 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) k!2824))))

(assert (=> d!96671 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)) e!398506)))

(declare-fun b!708067 () Bool)

(declare-fun e!398507 () Bool)

(assert (=> b!708067 (= e!398506 e!398507)))

(declare-fun res!471904 () Bool)

(assert (=> b!708067 (=> (not res!471904) (not e!398507))))

(assert (=> b!708067 (= res!471904 (bvslt (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!19693 a!3591)))))

(declare-fun b!708068 () Bool)

(assert (=> b!708068 (= e!398507 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!96671 (not res!471903)) b!708067))

(assert (= (and b!708067 res!471904) b!708068))

(assert (=> d!96671 m!665621))

(declare-fun m!665629 () Bool)

(assert (=> b!708068 m!665629))

(assert (=> b!707926 d!96671))

(declare-fun d!96673 () Bool)

(declare-fun lt!318036 () Bool)

(assert (=> d!96673 (= lt!318036 (set.member k!2824 (content!339 (t!19695 newAcc!49))))))

(declare-fun e!398508 () Bool)

(assert (=> d!96673 (= lt!318036 e!398508)))

(declare-fun res!471905 () Bool)

(assert (=> d!96673 (=> (not res!471905) (not e!398508))))

(assert (=> d!96673 (= res!471905 (is-Cons!13398 (t!19695 newAcc!49)))))

(assert (=> d!96673 (= (contains!3945 (t!19695 newAcc!49) k!2824) lt!318036)))

(declare-fun b!708069 () Bool)

(declare-fun e!398509 () Bool)

(assert (=> b!708069 (= e!398508 e!398509)))

(declare-fun res!471906 () Bool)

(assert (=> b!708069 (=> res!471906 e!398509)))

(assert (=> b!708069 (= res!471906 (= (h!14443 (t!19695 newAcc!49)) k!2824))))

(declare-fun b!708070 () Bool)

(assert (=> b!708070 (= e!398509 (contains!3945 (t!19695 (t!19695 newAcc!49)) k!2824))))

(assert (= (and d!96673 res!471905) b!708069))

(assert (= (and b!708069 (not res!471906)) b!708070))

(assert (=> d!96673 m!665597))

(declare-fun m!665631 () Bool)

(assert (=> d!96673 m!665631))

(declare-fun m!665633 () Bool)

(assert (=> b!708070 m!665633))

(assert (=> b!707872 d!96673))

(declare-fun d!96675 () Bool)

(declare-fun lt!318037 () Bool)

(assert (=> d!96675 (= lt!318037 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!339 (t!19695 newAcc!49))))))

(declare-fun e!398510 () Bool)

(assert (=> d!96675 (= lt!318037 e!398510)))

(declare-fun res!471907 () Bool)

(assert (=> d!96675 (=> (not res!471907) (not e!398510))))

(assert (=> d!96675 (= res!471907 (is-Cons!13398 (t!19695 newAcc!49)))))

(assert (=> d!96675 (= (contains!3945 (t!19695 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000) lt!318037)))

(declare-fun b!708071 () Bool)

(declare-fun e!398511 () Bool)

(assert (=> b!708071 (= e!398510 e!398511)))

(declare-fun res!471908 () Bool)

(assert (=> b!708071 (=> res!471908 e!398511)))

(assert (=> b!708071 (= res!471908 (= (h!14443 (t!19695 newAcc!49)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708072 () Bool)

(assert (=> b!708072 (= e!398511 (contains!3945 (t!19695 (t!19695 newAcc!49)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96675 res!471907) b!708071))

(assert (= (and b!708071 (not res!471908)) b!708072))

(assert (=> d!96675 m!665597))

(declare-fun m!665635 () Bool)

(assert (=> d!96675 m!665635))

(declare-fun m!665637 () Bool)

(assert (=> b!708072 m!665637))

(assert (=> b!707948 d!96675))

(declare-fun d!96677 () Bool)

(declare-fun c!78449 () Bool)

(assert (=> d!96677 (= c!78449 (is-Nil!13399 newAcc!49))))

(declare-fun e!398512 () (Set (_ BitVec 64)))

(assert (=> d!96677 (= (content!339 newAcc!49) e!398512)))

(declare-fun b!708073 () Bool)

(assert (=> b!708073 (= e!398512 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!708074 () Bool)

(assert (=> b!708074 (= e!398512 (set.union (set.insert (h!14443 newAcc!49) (as set.empty (Set (_ BitVec 64)))) (content!339 (t!19695 newAcc!49))))))

(assert (= (and d!96677 c!78449) b!708073))

(assert (= (and d!96677 (not c!78449)) b!708074))

(declare-fun m!665639 () Bool)

(assert (=> b!708074 m!665639))

(assert (=> b!708074 m!665597))

(assert (=> d!96579 d!96677))

(declare-fun lt!318038 () Bool)

(declare-fun d!96679 () Bool)

(assert (=> d!96679 (= lt!318038 (set.member (h!14443 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))) (content!339 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))))))))

(declare-fun e!398513 () Bool)

(assert (=> d!96679 (= lt!318038 e!398513)))

(declare-fun res!471909 () Bool)

(assert (=> d!96679 (=> (not res!471909) (not e!398513))))

(assert (=> d!96679 (= res!471909 (is-Cons!13398 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))))))

(assert (=> d!96679 (= (contains!3945 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969))) (h!14443 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))) lt!318038)))

(declare-fun b!708075 () Bool)

(declare-fun e!398514 () Bool)

(assert (=> b!708075 (= e!398513 e!398514)))

(declare-fun res!471910 () Bool)

(assert (=> b!708075 (=> res!471910 e!398514)))

(assert (=> b!708075 (= res!471910 (= (h!14443 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))) (h!14443 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))))))

(declare-fun b!708076 () Bool)

(assert (=> b!708076 (= e!398514 (contains!3945 (t!19695 (t!19695 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))) (h!14443 ($colon$colon!499 acc!652 (select (arr!19308 a!3591) from!2969)))))))

(assert (= (and d!96679 res!471909) b!708075))

(assert (= (and b!708075 (not res!471910)) b!708076))

(declare-fun m!665641 () Bool)

(assert (=> d!96679 m!665641))

(declare-fun m!665643 () Bool)

(assert (=> d!96679 m!665643))

(declare-fun m!665645 () Bool)

(assert (=> b!708076 m!665645))

(assert (=> b!707841 d!96679))

(declare-fun d!96681 () Bool)

(declare-fun res!471911 () Bool)

(declare-fun e!398515 () Bool)

(assert (=> d!96681 (=> res!471911 e!398515)))

(assert (=> d!96681 (= res!471911 (is-Nil!13399 (t!19695 acc!652)))))

(assert (=> d!96681 (= (noDuplicate!1192 (t!19695 acc!652)) e!398515)))

(declare-fun b!708077 () Bool)

(declare-fun e!398516 () Bool)

(assert (=> b!708077 (= e!398515 e!398516)))

(declare-fun res!471912 () Bool)

(assert (=> b!708077 (=> (not res!471912) (not e!398516))))

(assert (=> b!708077 (= res!471912 (not (contains!3945 (t!19695 (t!19695 acc!652)) (h!14443 (t!19695 acc!652)))))))

(declare-fun b!708078 () Bool)

(assert (=> b!708078 (= e!398516 (noDuplicate!1192 (t!19695 (t!19695 acc!652))))))

(assert (= (and d!96681 (not res!471911)) b!708077))

(assert (= (and b!708077 res!471912) b!708078))

(declare-fun m!665647 () Bool)

(assert (=> b!708077 m!665647))

(declare-fun m!665649 () Bool)

(assert (=> b!708078 m!665649))

(assert (=> b!707930 d!96681))

(assert (=> b!707766 d!96559))

(declare-fun d!96683 () Bool)

(declare-fun lt!318039 () Bool)

(assert (=> d!96683 (= lt!318039 (set.member (h!14443 acc!652) (content!339 (t!19695 acc!652))))))

(declare-fun e!398517 () Bool)

(assert (=> d!96683 (= lt!318039 e!398517)))

(declare-fun res!471913 () Bool)

(assert (=> d!96683 (=> (not res!471913) (not e!398517))))

(assert (=> d!96683 (= res!471913 (is-Cons!13398 (t!19695 acc!652)))))

(assert (=> d!96683 (= (contains!3945 (t!19695 acc!652) (h!14443 acc!652)) lt!318039)))

(declare-fun b!708079 () Bool)

(declare-fun e!398518 () Bool)

(assert (=> b!708079 (= e!398517 e!398518)))

(declare-fun res!471914 () Bool)

(assert (=> b!708079 (=> res!471914 e!398518)))

(assert (=> b!708079 (= res!471914 (= (h!14443 (t!19695 acc!652)) (h!14443 acc!652)))))

(declare-fun b!708080 () Bool)

(assert (=> b!708080 (= e!398518 (contains!3945 (t!19695 (t!19695 acc!652)) (h!14443 acc!652)))))

(assert (= (and d!96683 res!471913) b!708079))

(assert (= (and b!708079 (not res!471914)) b!708080))

(assert (=> d!96683 m!665613))

(declare-fun m!665651 () Bool)

(assert (=> d!96683 m!665651))

(declare-fun m!665653 () Bool)

(assert (=> b!708080 m!665653))

(assert (=> b!707929 d!96683))

(assert (=> d!96565 d!96663))

(assert (=> d!96581 d!96663))

(declare-fun d!96685 () Bool)

(declare-fun res!471915 () Bool)

(declare-fun e!398519 () Bool)

(assert (=> d!96685 (=> res!471915 e!398519)))

(assert (=> d!96685 (= res!471915 (is-Nil!13399 (t!19695 newAcc!49)))))

(assert (=> d!96685 (= (noDuplicate!1192 (t!19695 newAcc!49)) e!398519)))

(declare-fun b!708081 () Bool)

(declare-fun e!398520 () Bool)

(assert (=> b!708081 (= e!398519 e!398520)))

(declare-fun res!471916 () Bool)

(assert (=> b!708081 (=> (not res!471916) (not e!398520))))

(assert (=> b!708081 (= res!471916 (not (contains!3945 (t!19695 (t!19695 newAcc!49)) (h!14443 (t!19695 newAcc!49)))))))

(declare-fun b!708082 () Bool)

(assert (=> b!708082 (= e!398520 (noDuplicate!1192 (t!19695 (t!19695 newAcc!49))))))

(assert (= (and d!96685 (not res!471915)) b!708081))

(assert (= (and b!708081 res!471916) b!708082))

(declare-fun m!665655 () Bool)

(assert (=> b!708081 m!665655))

(declare-fun m!665657 () Bool)

(assert (=> b!708082 m!665657))

(assert (=> b!707932 d!96685))

(declare-fun lt!318040 () Bool)

(declare-fun d!96687 () Bool)

(assert (=> d!96687 (= lt!318040 (set.member (h!14443 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969))) (content!339 (t!19695 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969))))))))

(declare-fun e!398521 () Bool)

(assert (=> d!96687 (= lt!318040 e!398521)))

(declare-fun res!471917 () Bool)

(assert (=> d!96687 (=> (not res!471917) (not e!398521))))

(assert (=> d!96687 (= res!471917 (is-Cons!13398 (t!19695 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))))))

(assert (=> d!96687 (= (contains!3945 (t!19695 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969))) (h!14443 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))) lt!318040)))

(declare-fun b!708083 () Bool)

(declare-fun e!398522 () Bool)

(assert (=> b!708083 (= e!398521 e!398522)))

(declare-fun res!471918 () Bool)

(assert (=> b!708083 (=> res!471918 e!398522)))

(assert (=> b!708083 (= res!471918 (= (h!14443 (t!19695 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))) (h!14443 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))))))

(declare-fun b!708084 () Bool)

(assert (=> b!708084 (= e!398522 (contains!3945 (t!19695 (t!19695 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))) (h!14443 ($colon$colon!499 newAcc!49 (select (arr!19308 a!3591) from!2969)))))))

(assert (= (and d!96687 res!471917) b!708083))

(assert (= (and b!708083 (not res!471918)) b!708084))

(declare-fun m!665659 () Bool)

(assert (=> d!96687 m!665659))

(declare-fun m!665661 () Bool)

(assert (=> d!96687 m!665661))

(declare-fun m!665663 () Bool)

(assert (=> b!708084 m!665663))

(assert (=> b!707843 d!96687))

(declare-fun d!96689 () Bool)

(declare-fun c!78450 () Bool)

(assert (=> d!96689 (= c!78450 (is-Nil!13399 lt!317991))))

(declare-fun e!398523 () (Set (_ BitVec 64)))

(assert (=> d!96689 (= (content!339 lt!317991) e!398523)))

(declare-fun b!708085 () Bool)

(assert (=> b!708085 (= e!398523 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!708086 () Bool)

(assert (=> b!708086 (= e!398523 (set.union (set.insert (h!14443 lt!317991) (as set.empty (Set (_ BitVec 64)))) (content!339 (t!19695 lt!317991))))))

(assert (= (and d!96689 c!78450) b!708085))

(assert (= (and d!96689 (not c!78450)) b!708086))

(declare-fun m!665665 () Bool)

(assert (=> b!708086 m!665665))

(declare-fun m!665667 () Bool)

(assert (=> b!708086 m!665667))

(assert (=> b!707813 d!96689))

(assert (=> b!707813 d!96677))

(declare-fun d!96691 () Bool)

(declare-fun lt!318041 () Bool)

(assert (=> d!96691 (= lt!318041 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!339 (t!19695 acc!652))))))

(declare-fun e!398524 () Bool)

(assert (=> d!96691 (= lt!318041 e!398524)))

(declare-fun res!471919 () Bool)

(assert (=> d!96691 (=> (not res!471919) (not e!398524))))

(assert (=> d!96691 (= res!471919 (is-Cons!13398 (t!19695 acc!652)))))

(assert (=> d!96691 (= (contains!3945 (t!19695 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000) lt!318041)))

(declare-fun b!708087 () Bool)

(declare-fun e!398525 () Bool)

(assert (=> b!708087 (= e!398524 e!398525)))

(declare-fun res!471920 () Bool)

(assert (=> b!708087 (=> res!471920 e!398525)))

(assert (=> b!708087 (= res!471920 (= (h!14443 (t!19695 acc!652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708088 () Bool)

(assert (=> b!708088 (= e!398525 (contains!3945 (t!19695 (t!19695 acc!652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96691 res!471919) b!708087))

(assert (= (and b!708087 (not res!471920)) b!708088))

(assert (=> d!96691 m!665613))

(declare-fun m!665669 () Bool)

(assert (=> d!96691 m!665669))

(declare-fun m!665671 () Bool)

(assert (=> b!708088 m!665671))

(assert (=> b!707913 d!96691))

(assert (=> d!96583 d!96677))

(declare-fun d!96693 () Bool)

(declare-fun lt!318042 () Bool)

(assert (=> d!96693 (= lt!318042 (set.member (h!14443 newAcc!49) (content!339 (t!19695 newAcc!49))))))

(declare-fun e!398526 () Bool)

(assert (=> d!96693 (= lt!318042 e!398526)))

(declare-fun res!471921 () Bool)

(assert (=> d!96693 (=> (not res!471921) (not e!398526))))

(assert (=> d!96693 (= res!471921 (is-Cons!13398 (t!19695 newAcc!49)))))

(assert (=> d!96693 (= (contains!3945 (t!19695 newAcc!49) (h!14443 newAcc!49)) lt!318042)))

(declare-fun b!708089 () Bool)

(declare-fun e!398527 () Bool)

(assert (=> b!708089 (= e!398526 e!398527)))

(declare-fun res!471922 () Bool)

(assert (=> b!708089 (=> res!471922 e!398527)))

(assert (=> b!708089 (= res!471922 (= (h!14443 (t!19695 newAcc!49)) (h!14443 newAcc!49)))))

(declare-fun b!708090 () Bool)

(assert (=> b!708090 (= e!398527 (contains!3945 (t!19695 (t!19695 newAcc!49)) (h!14443 newAcc!49)))))

(assert (= (and d!96693 res!471921) b!708089))

(assert (= (and b!708089 (not res!471922)) b!708090))

(assert (=> d!96693 m!665597))

