; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62862 () Bool)

(assert start!62862)

(declare-fun b!708639 () Bool)

(declare-fun res!472420 () Bool)

(declare-fun e!398813 () Bool)

(assert (=> b!708639 (=> (not res!472420) (not e!398813))))

(declare-datatypes ((List!13409 0))(
  ( (Nil!13406) (Cons!13405 (h!14450 (_ BitVec 64)) (t!19708 List!13409)) )
))
(declare-fun newAcc!49 () List!13409)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3952 (List!13409 (_ BitVec 64)) Bool)

(assert (=> b!708639 (= res!472420 (contains!3952 newAcc!49 k0!2824))))

(declare-fun b!708640 () Bool)

(declare-fun res!472405 () Bool)

(declare-fun e!398812 () Bool)

(assert (=> b!708640 (=> (not res!472405) (not e!398812))))

(declare-fun lt!318101 () List!13409)

(assert (=> b!708640 (= res!472405 (not (contains!3952 lt!318101 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708641 () Bool)

(declare-fun res!472419 () Bool)

(assert (=> b!708641 (=> (not res!472419) (not e!398813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!708641 (= res!472419 (validKeyInArray!0 k0!2824))))

(declare-fun b!708642 () Bool)

(declare-fun res!472417 () Bool)

(assert (=> b!708642 (=> (not res!472417) (not e!398813))))

(declare-datatypes ((array!40334 0))(
  ( (array!40335 (arr!19315 (Array (_ BitVec 32) (_ BitVec 64))) (size!19705 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40334)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun acc!652 () List!13409)

(declare-fun arrayNoDuplicates!0 (array!40334 (_ BitVec 32) List!13409) Bool)

(assert (=> b!708642 (= res!472417 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!708643 () Bool)

(declare-fun res!472421 () Bool)

(assert (=> b!708643 (=> (not res!472421) (not e!398813))))

(declare-fun -!361 (List!13409 (_ BitVec 64)) List!13409)

(assert (=> b!708643 (= res!472421 (= (-!361 newAcc!49 k0!2824) acc!652))))

(declare-fun b!708644 () Bool)

(assert (=> b!708644 (= e!398813 e!398812)))

(declare-fun res!472415 () Bool)

(assert (=> b!708644 (=> (not res!472415) (not e!398812))))

(assert (=> b!708644 (= res!472415 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!506 (List!13409 (_ BitVec 64)) List!13409)

(assert (=> b!708644 (= lt!318101 ($colon$colon!506 acc!652 (select (arr!19315 a!3591) from!2969)))))

(declare-fun b!708645 () Bool)

(declare-fun res!472407 () Bool)

(assert (=> b!708645 (=> (not res!472407) (not e!398813))))

(assert (=> b!708645 (= res!472407 (not (contains!3952 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708646 () Bool)

(declare-fun res!472410 () Bool)

(assert (=> b!708646 (=> (not res!472410) (not e!398813))))

(declare-fun arrayContainsKey!0 (array!40334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!708646 (= res!472410 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!708647 () Bool)

(declare-fun res!472423 () Bool)

(assert (=> b!708647 (=> (not res!472423) (not e!398813))))

(assert (=> b!708647 (= res!472423 (validKeyInArray!0 (select (arr!19315 a!3591) from!2969)))))

(declare-fun b!708648 () Bool)

(declare-fun res!472411 () Bool)

(assert (=> b!708648 (=> (not res!472411) (not e!398813))))

(assert (=> b!708648 (= res!472411 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19705 a!3591)))))

(declare-fun b!708649 () Bool)

(assert (=> b!708649 (= e!398812 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)))))

(declare-fun b!708650 () Bool)

(declare-fun res!472412 () Bool)

(assert (=> b!708650 (=> (not res!472412) (not e!398813))))

(declare-fun noDuplicate!1199 (List!13409) Bool)

(assert (=> b!708650 (= res!472412 (noDuplicate!1199 acc!652))))

(declare-fun b!708651 () Bool)

(declare-fun res!472422 () Bool)

(assert (=> b!708651 (=> (not res!472422) (not e!398813))))

(assert (=> b!708651 (= res!472422 (not (contains!3952 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708652 () Bool)

(declare-fun res!472414 () Bool)

(assert (=> b!708652 (=> (not res!472414) (not e!398813))))

(assert (=> b!708652 (= res!472414 (noDuplicate!1199 newAcc!49))))

(declare-fun b!708653 () Bool)

(declare-fun res!472416 () Bool)

(assert (=> b!708653 (=> (not res!472416) (not e!398813))))

(assert (=> b!708653 (= res!472416 (not (contains!3952 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708654 () Bool)

(declare-fun res!472406 () Bool)

(assert (=> b!708654 (=> (not res!472406) (not e!398813))))

(declare-fun subseq!396 (List!13409 List!13409) Bool)

(assert (=> b!708654 (= res!472406 (subseq!396 acc!652 newAcc!49))))

(declare-fun b!708655 () Bool)

(declare-fun res!472425 () Bool)

(assert (=> b!708655 (=> (not res!472425) (not e!398812))))

(assert (=> b!708655 (= res!472425 (noDuplicate!1199 ($colon$colon!506 newAcc!49 (select (arr!19315 a!3591) from!2969))))))

(declare-fun b!708656 () Bool)

(declare-fun res!472424 () Bool)

(assert (=> b!708656 (=> (not res!472424) (not e!398813))))

(assert (=> b!708656 (= res!472424 (not (contains!3952 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708657 () Bool)

(declare-fun res!472408 () Bool)

(assert (=> b!708657 (=> (not res!472408) (not e!398812))))

(assert (=> b!708657 (= res!472408 (noDuplicate!1199 lt!318101))))

(declare-fun b!708658 () Bool)

(declare-fun res!472418 () Bool)

(assert (=> b!708658 (=> (not res!472418) (not e!398812))))

(assert (=> b!708658 (= res!472418 (not (contains!3952 lt!318101 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!708659 () Bool)

(declare-fun res!472413 () Bool)

(assert (=> b!708659 (=> (not res!472413) (not e!398813))))

(assert (=> b!708659 (= res!472413 (not (contains!3952 acc!652 k0!2824)))))

(declare-fun res!472409 () Bool)

(assert (=> start!62862 (=> (not res!472409) (not e!398813))))

(assert (=> start!62862 (= res!472409 (and (bvslt (size!19705 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19705 a!3591))))))

(assert (=> start!62862 e!398813))

(assert (=> start!62862 true))

(declare-fun array_inv!15089 (array!40334) Bool)

(assert (=> start!62862 (array_inv!15089 a!3591)))

(assert (= (and start!62862 res!472409) b!708650))

(assert (= (and b!708650 res!472412) b!708652))

(assert (= (and b!708652 res!472414) b!708651))

(assert (= (and b!708651 res!472422) b!708653))

(assert (= (and b!708653 res!472416) b!708646))

(assert (= (and b!708646 res!472410) b!708659))

(assert (= (and b!708659 res!472413) b!708641))

(assert (= (and b!708641 res!472419) b!708642))

(assert (= (and b!708642 res!472417) b!708654))

(assert (= (and b!708654 res!472406) b!708639))

(assert (= (and b!708639 res!472420) b!708643))

(assert (= (and b!708643 res!472421) b!708656))

(assert (= (and b!708656 res!472424) b!708645))

(assert (= (and b!708645 res!472407) b!708648))

(assert (= (and b!708648 res!472411) b!708647))

(assert (= (and b!708647 res!472423) b!708644))

(assert (= (and b!708644 res!472415) b!708657))

(assert (= (and b!708657 res!472408) b!708655))

(assert (= (and b!708655 res!472425) b!708658))

(assert (= (and b!708658 res!472418) b!708640))

(assert (= (and b!708640 res!472405) b!708649))

(declare-fun m!666109 () Bool)

(assert (=> b!708639 m!666109))

(declare-fun m!666111 () Bool)

(assert (=> b!708647 m!666111))

(assert (=> b!708647 m!666111))

(declare-fun m!666113 () Bool)

(assert (=> b!708647 m!666113))

(declare-fun m!666115 () Bool)

(assert (=> b!708656 m!666115))

(declare-fun m!666117 () Bool)

(assert (=> start!62862 m!666117))

(declare-fun m!666119 () Bool)

(assert (=> b!708657 m!666119))

(declare-fun m!666121 () Bool)

(assert (=> b!708650 m!666121))

(declare-fun m!666123 () Bool)

(assert (=> b!708659 m!666123))

(declare-fun m!666125 () Bool)

(assert (=> b!708653 m!666125))

(declare-fun m!666127 () Bool)

(assert (=> b!708652 m!666127))

(declare-fun m!666129 () Bool)

(assert (=> b!708641 m!666129))

(declare-fun m!666131 () Bool)

(assert (=> b!708658 m!666131))

(declare-fun m!666133 () Bool)

(assert (=> b!708651 m!666133))

(declare-fun m!666135 () Bool)

(assert (=> b!708646 m!666135))

(declare-fun m!666137 () Bool)

(assert (=> b!708640 m!666137))

(declare-fun m!666139 () Bool)

(assert (=> b!708654 m!666139))

(assert (=> b!708644 m!666111))

(assert (=> b!708644 m!666111))

(declare-fun m!666141 () Bool)

(assert (=> b!708644 m!666141))

(declare-fun m!666143 () Bool)

(assert (=> b!708643 m!666143))

(declare-fun m!666145 () Bool)

(assert (=> b!708649 m!666145))

(declare-fun m!666147 () Bool)

(assert (=> b!708642 m!666147))

(declare-fun m!666149 () Bool)

(assert (=> b!708645 m!666149))

(assert (=> b!708655 m!666111))

(assert (=> b!708655 m!666111))

(declare-fun m!666151 () Bool)

(assert (=> b!708655 m!666151))

(assert (=> b!708655 m!666151))

(declare-fun m!666153 () Bool)

(assert (=> b!708655 m!666153))

(check-sat (not b!708649) (not b!708643) (not b!708651) (not b!708658) (not b!708656) (not b!708657) (not b!708641) (not start!62862) (not b!708646) (not b!708659) (not b!708650) (not b!708645) (not b!708653) (not b!708654) (not b!708644) (not b!708640) (not b!708639) (not b!708655) (not b!708647) (not b!708652) (not b!708642))
(check-sat)
(get-model)

(declare-fun b!708733 () Bool)

(declare-fun e!398831 () List!13409)

(assert (=> b!708733 (= e!398831 Nil!13406)))

(declare-fun b!708734 () Bool)

(declare-fun e!398832 () List!13409)

(assert (=> b!708734 (= e!398831 e!398832)))

(declare-fun c!78489 () Bool)

(assert (=> b!708734 (= c!78489 (= k0!2824 (h!14450 newAcc!49)))))

(declare-fun b!708735 () Bool)

(declare-fun call!34416 () List!13409)

(assert (=> b!708735 (= e!398832 call!34416)))

(declare-fun b!708736 () Bool)

(assert (=> b!708736 (= e!398832 (Cons!13405 (h!14450 newAcc!49) call!34416))))

(declare-fun bm!34413 () Bool)

(assert (=> bm!34413 (= call!34416 (-!361 (t!19708 newAcc!49) k0!2824))))

(declare-fun lt!318107 () List!13409)

(declare-fun b!708737 () Bool)

(declare-fun e!398833 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!343 (List!13409) (InoxSet (_ BitVec 64)))

(assert (=> b!708737 (= e!398833 (= (content!343 lt!318107) ((_ map and) (content!343 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun d!96841 () Bool)

(assert (=> d!96841 e!398833))

(declare-fun res!472491 () Bool)

(assert (=> d!96841 (=> (not res!472491) (not e!398833))))

(declare-fun size!19707 (List!13409) Int)

(assert (=> d!96841 (= res!472491 (<= (size!19707 lt!318107) (size!19707 newAcc!49)))))

(assert (=> d!96841 (= lt!318107 e!398831)))

(declare-fun c!78488 () Bool)

(get-info :version)

(assert (=> d!96841 (= c!78488 ((_ is Cons!13405) newAcc!49))))

(assert (=> d!96841 (= (-!361 newAcc!49 k0!2824) lt!318107)))

(assert (= (and d!96841 c!78488) b!708734))

(assert (= (and d!96841 (not c!78488)) b!708733))

(assert (= (and b!708734 c!78489) b!708735))

(assert (= (and b!708734 (not c!78489)) b!708736))

(assert (= (or b!708735 b!708736) bm!34413))

(assert (= (and d!96841 res!472491) b!708737))

(declare-fun m!666201 () Bool)

(assert (=> bm!34413 m!666201))

(declare-fun m!666203 () Bool)

(assert (=> b!708737 m!666203))

(declare-fun m!666205 () Bool)

(assert (=> b!708737 m!666205))

(declare-fun m!666207 () Bool)

(assert (=> b!708737 m!666207))

(declare-fun m!666209 () Bool)

(assert (=> d!96841 m!666209))

(declare-fun m!666211 () Bool)

(assert (=> d!96841 m!666211))

(assert (=> b!708643 d!96841))

(declare-fun b!708748 () Bool)

(declare-fun e!398845 () Bool)

(assert (=> b!708748 (= e!398845 (subseq!396 (t!19708 acc!652) (t!19708 newAcc!49)))))

(declare-fun b!708749 () Bool)

(declare-fun e!398843 () Bool)

(assert (=> b!708749 (= e!398843 (subseq!396 acc!652 (t!19708 newAcc!49)))))

(declare-fun d!96843 () Bool)

(declare-fun res!472502 () Bool)

(declare-fun e!398842 () Bool)

(assert (=> d!96843 (=> res!472502 e!398842)))

(assert (=> d!96843 (= res!472502 ((_ is Nil!13406) acc!652))))

(assert (=> d!96843 (= (subseq!396 acc!652 newAcc!49) e!398842)))

(declare-fun b!708746 () Bool)

(declare-fun e!398844 () Bool)

(assert (=> b!708746 (= e!398842 e!398844)))

(declare-fun res!472500 () Bool)

(assert (=> b!708746 (=> (not res!472500) (not e!398844))))

(assert (=> b!708746 (= res!472500 ((_ is Cons!13405) newAcc!49))))

(declare-fun b!708747 () Bool)

(assert (=> b!708747 (= e!398844 e!398843)))

(declare-fun res!472501 () Bool)

(assert (=> b!708747 (=> res!472501 e!398843)))

(assert (=> b!708747 (= res!472501 e!398845)))

(declare-fun res!472503 () Bool)

(assert (=> b!708747 (=> (not res!472503) (not e!398845))))

(assert (=> b!708747 (= res!472503 (= (h!14450 acc!652) (h!14450 newAcc!49)))))

(assert (= (and d!96843 (not res!472502)) b!708746))

(assert (= (and b!708746 res!472500) b!708747))

(assert (= (and b!708747 res!472503) b!708748))

(assert (= (and b!708747 (not res!472501)) b!708749))

(declare-fun m!666213 () Bool)

(assert (=> b!708748 m!666213))

(declare-fun m!666215 () Bool)

(assert (=> b!708749 m!666215))

(assert (=> b!708654 d!96843))

(declare-fun d!96845 () Bool)

(declare-fun lt!318110 () Bool)

(assert (=> d!96845 (= lt!318110 (select (content!343 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398857 () Bool)

(assert (=> d!96845 (= lt!318110 e!398857)))

(declare-fun res!472515 () Bool)

(assert (=> d!96845 (=> (not res!472515) (not e!398857))))

(assert (=> d!96845 (= res!472515 ((_ is Cons!13405) acc!652))))

(assert (=> d!96845 (= (contains!3952 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318110)))

(declare-fun b!708760 () Bool)

(declare-fun e!398856 () Bool)

(assert (=> b!708760 (= e!398857 e!398856)))

(declare-fun res!472514 () Bool)

(assert (=> b!708760 (=> res!472514 e!398856)))

(assert (=> b!708760 (= res!472514 (= (h!14450 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708761 () Bool)

(assert (=> b!708761 (= e!398856 (contains!3952 (t!19708 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96845 res!472515) b!708760))

(assert (= (and b!708760 (not res!472514)) b!708761))

(declare-fun m!666221 () Bool)

(assert (=> d!96845 m!666221))

(declare-fun m!666223 () Bool)

(assert (=> d!96845 m!666223))

(declare-fun m!666225 () Bool)

(assert (=> b!708761 m!666225))

(assert (=> b!708653 d!96845))

(declare-fun d!96853 () Bool)

(declare-fun res!472530 () Bool)

(declare-fun e!398872 () Bool)

(assert (=> d!96853 (=> res!472530 e!398872)))

(assert (=> d!96853 (= res!472530 ((_ is Nil!13406) ($colon$colon!506 newAcc!49 (select (arr!19315 a!3591) from!2969))))))

(assert (=> d!96853 (= (noDuplicate!1199 ($colon$colon!506 newAcc!49 (select (arr!19315 a!3591) from!2969))) e!398872)))

(declare-fun b!708776 () Bool)

(declare-fun e!398873 () Bool)

(assert (=> b!708776 (= e!398872 e!398873)))

(declare-fun res!472531 () Bool)

(assert (=> b!708776 (=> (not res!472531) (not e!398873))))

(assert (=> b!708776 (= res!472531 (not (contains!3952 (t!19708 ($colon$colon!506 newAcc!49 (select (arr!19315 a!3591) from!2969))) (h!14450 ($colon$colon!506 newAcc!49 (select (arr!19315 a!3591) from!2969))))))))

(declare-fun b!708777 () Bool)

(assert (=> b!708777 (= e!398873 (noDuplicate!1199 (t!19708 ($colon$colon!506 newAcc!49 (select (arr!19315 a!3591) from!2969)))))))

(assert (= (and d!96853 (not res!472530)) b!708776))

(assert (= (and b!708776 res!472531) b!708777))

(declare-fun m!666233 () Bool)

(assert (=> b!708776 m!666233))

(declare-fun m!666235 () Bool)

(assert (=> b!708777 m!666235))

(assert (=> b!708655 d!96853))

(declare-fun d!96859 () Bool)

(assert (=> d!96859 (= ($colon$colon!506 newAcc!49 (select (arr!19315 a!3591) from!2969)) (Cons!13405 (select (arr!19315 a!3591) from!2969) newAcc!49))))

(assert (=> b!708655 d!96859))

(declare-fun d!96863 () Bool)

(assert (=> d!96863 (= ($colon$colon!506 acc!652 (select (arr!19315 a!3591) from!2969)) (Cons!13405 (select (arr!19315 a!3591) from!2969) acc!652))))

(assert (=> b!708644 d!96863))

(declare-fun d!96867 () Bool)

(declare-fun res!472550 () Bool)

(declare-fun e!398892 () Bool)

(assert (=> d!96867 (=> res!472550 e!398892)))

(assert (=> d!96867 (= res!472550 (= (select (arr!19315 a!3591) from!2969) k0!2824))))

(assert (=> d!96867 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!398892)))

(declare-fun b!708796 () Bool)

(declare-fun e!398893 () Bool)

(assert (=> b!708796 (= e!398892 e!398893)))

(declare-fun res!472551 () Bool)

(assert (=> b!708796 (=> (not res!472551) (not e!398893))))

(assert (=> b!708796 (= res!472551 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19705 a!3591)))))

(declare-fun b!708797 () Bool)

(assert (=> b!708797 (= e!398893 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96867 (not res!472550)) b!708796))

(assert (= (and b!708796 res!472551) b!708797))

(assert (=> d!96867 m!666111))

(declare-fun m!666247 () Bool)

(assert (=> b!708797 m!666247))

(assert (=> b!708646 d!96867))

(declare-fun d!96871 () Bool)

(declare-fun lt!318117 () Bool)

(assert (=> d!96871 (= lt!318117 (select (content!343 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398895 () Bool)

(assert (=> d!96871 (= lt!318117 e!398895)))

(declare-fun res!472553 () Bool)

(assert (=> d!96871 (=> (not res!472553) (not e!398895))))

(assert (=> d!96871 (= res!472553 ((_ is Cons!13405) newAcc!49))))

(assert (=> d!96871 (= (contains!3952 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318117)))

(declare-fun b!708798 () Bool)

(declare-fun e!398894 () Bool)

(assert (=> b!708798 (= e!398895 e!398894)))

(declare-fun res!472552 () Bool)

(assert (=> b!708798 (=> res!472552 e!398894)))

(assert (=> b!708798 (= res!472552 (= (h!14450 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708799 () Bool)

(assert (=> b!708799 (= e!398894 (contains!3952 (t!19708 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96871 res!472553) b!708798))

(assert (= (and b!708798 (not res!472552)) b!708799))

(assert (=> d!96871 m!666205))

(declare-fun m!666249 () Bool)

(assert (=> d!96871 m!666249))

(declare-fun m!666251 () Bool)

(assert (=> b!708799 m!666251))

(assert (=> b!708645 d!96871))

(declare-fun d!96873 () Bool)

(declare-fun lt!318119 () Bool)

(assert (=> d!96873 (= lt!318119 (select (content!343 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398899 () Bool)

(assert (=> d!96873 (= lt!318119 e!398899)))

(declare-fun res!472557 () Bool)

(assert (=> d!96873 (=> (not res!472557) (not e!398899))))

(assert (=> d!96873 (= res!472557 ((_ is Cons!13405) newAcc!49))))

(assert (=> d!96873 (= (contains!3952 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318119)))

(declare-fun b!708802 () Bool)

(declare-fun e!398898 () Bool)

(assert (=> b!708802 (= e!398899 e!398898)))

(declare-fun res!472556 () Bool)

(assert (=> b!708802 (=> res!472556 e!398898)))

(assert (=> b!708802 (= res!472556 (= (h!14450 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708803 () Bool)

(assert (=> b!708803 (= e!398898 (contains!3952 (t!19708 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96873 res!472557) b!708802))

(assert (= (and b!708802 (not res!472556)) b!708803))

(assert (=> d!96873 m!666205))

(declare-fun m!666259 () Bool)

(assert (=> d!96873 m!666259))

(declare-fun m!666261 () Bool)

(assert (=> b!708803 m!666261))

(assert (=> b!708656 d!96873))

(declare-fun d!96877 () Bool)

(assert (=> d!96877 (= (validKeyInArray!0 (select (arr!19315 a!3591) from!2969)) (and (not (= (select (arr!19315 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19315 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708647 d!96877))

(declare-fun d!96879 () Bool)

(declare-fun lt!318120 () Bool)

(assert (=> d!96879 (= lt!318120 (select (content!343 lt!318101) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398901 () Bool)

(assert (=> d!96879 (= lt!318120 e!398901)))

(declare-fun res!472559 () Bool)

(assert (=> d!96879 (=> (not res!472559) (not e!398901))))

(assert (=> d!96879 (= res!472559 ((_ is Cons!13405) lt!318101))))

(assert (=> d!96879 (= (contains!3952 lt!318101 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318120)))

(declare-fun b!708804 () Bool)

(declare-fun e!398900 () Bool)

(assert (=> b!708804 (= e!398901 e!398900)))

(declare-fun res!472558 () Bool)

(assert (=> b!708804 (=> res!472558 e!398900)))

(assert (=> b!708804 (= res!472558 (= (h!14450 lt!318101) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708805 () Bool)

(assert (=> b!708805 (= e!398900 (contains!3952 (t!19708 lt!318101) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96879 res!472559) b!708804))

(assert (= (and b!708804 (not res!472558)) b!708805))

(declare-fun m!666263 () Bool)

(assert (=> d!96879 m!666263))

(declare-fun m!666265 () Bool)

(assert (=> d!96879 m!666265))

(declare-fun m!666267 () Bool)

(assert (=> b!708805 m!666267))

(assert (=> b!708658 d!96879))

(declare-fun d!96881 () Bool)

(declare-fun res!472568 () Bool)

(declare-fun e!398910 () Bool)

(assert (=> d!96881 (=> res!472568 e!398910)))

(assert (=> d!96881 (= res!472568 ((_ is Nil!13406) lt!318101))))

(assert (=> d!96881 (= (noDuplicate!1199 lt!318101) e!398910)))

(declare-fun b!708814 () Bool)

(declare-fun e!398911 () Bool)

(assert (=> b!708814 (= e!398910 e!398911)))

(declare-fun res!472569 () Bool)

(assert (=> b!708814 (=> (not res!472569) (not e!398911))))

(assert (=> b!708814 (= res!472569 (not (contains!3952 (t!19708 lt!318101) (h!14450 lt!318101))))))

(declare-fun b!708815 () Bool)

(assert (=> b!708815 (= e!398911 (noDuplicate!1199 (t!19708 lt!318101)))))

(assert (= (and d!96881 (not res!472568)) b!708814))

(assert (= (and b!708814 res!472569) b!708815))

(declare-fun m!666269 () Bool)

(assert (=> b!708814 m!666269))

(declare-fun m!666271 () Bool)

(assert (=> b!708815 m!666271))

(assert (=> b!708657 d!96881))

(declare-fun d!96883 () Bool)

(declare-fun lt!318121 () Bool)

(assert (=> d!96883 (= lt!318121 (select (content!343 acc!652) k0!2824))))

(declare-fun e!398913 () Bool)

(assert (=> d!96883 (= lt!318121 e!398913)))

(declare-fun res!472571 () Bool)

(assert (=> d!96883 (=> (not res!472571) (not e!398913))))

(assert (=> d!96883 (= res!472571 ((_ is Cons!13405) acc!652))))

(assert (=> d!96883 (= (contains!3952 acc!652 k0!2824) lt!318121)))

(declare-fun b!708816 () Bool)

(declare-fun e!398912 () Bool)

(assert (=> b!708816 (= e!398913 e!398912)))

(declare-fun res!472570 () Bool)

(assert (=> b!708816 (=> res!472570 e!398912)))

(assert (=> b!708816 (= res!472570 (= (h!14450 acc!652) k0!2824))))

(declare-fun b!708817 () Bool)

(assert (=> b!708817 (= e!398912 (contains!3952 (t!19708 acc!652) k0!2824))))

(assert (= (and d!96883 res!472571) b!708816))

(assert (= (and b!708816 (not res!472570)) b!708817))

(assert (=> d!96883 m!666221))

(declare-fun m!666273 () Bool)

(assert (=> d!96883 m!666273))

(declare-fun m!666275 () Bool)

(assert (=> b!708817 m!666275))

(assert (=> b!708659 d!96883))

(declare-fun d!96885 () Bool)

(declare-fun lt!318122 () Bool)

(assert (=> d!96885 (= lt!318122 (select (content!343 newAcc!49) k0!2824))))

(declare-fun e!398915 () Bool)

(assert (=> d!96885 (= lt!318122 e!398915)))

(declare-fun res!472573 () Bool)

(assert (=> d!96885 (=> (not res!472573) (not e!398915))))

(assert (=> d!96885 (= res!472573 ((_ is Cons!13405) newAcc!49))))

(assert (=> d!96885 (= (contains!3952 newAcc!49 k0!2824) lt!318122)))

(declare-fun b!708818 () Bool)

(declare-fun e!398914 () Bool)

(assert (=> b!708818 (= e!398915 e!398914)))

(declare-fun res!472572 () Bool)

(assert (=> b!708818 (=> res!472572 e!398914)))

(assert (=> b!708818 (= res!472572 (= (h!14450 newAcc!49) k0!2824))))

(declare-fun b!708819 () Bool)

(assert (=> b!708819 (= e!398914 (contains!3952 (t!19708 newAcc!49) k0!2824))))

(assert (= (and d!96885 res!472573) b!708818))

(assert (= (and b!708818 (not res!472572)) b!708819))

(assert (=> d!96885 m!666205))

(declare-fun m!666277 () Bool)

(assert (=> d!96885 m!666277))

(declare-fun m!666279 () Bool)

(assert (=> b!708819 m!666279))

(assert (=> b!708639 d!96885))

(declare-fun d!96887 () Bool)

(declare-fun res!472574 () Bool)

(declare-fun e!398916 () Bool)

(assert (=> d!96887 (=> res!472574 e!398916)))

(assert (=> d!96887 (= res!472574 ((_ is Nil!13406) acc!652))))

(assert (=> d!96887 (= (noDuplicate!1199 acc!652) e!398916)))

(declare-fun b!708820 () Bool)

(declare-fun e!398917 () Bool)

(assert (=> b!708820 (= e!398916 e!398917)))

(declare-fun res!472575 () Bool)

(assert (=> b!708820 (=> (not res!472575) (not e!398917))))

(assert (=> b!708820 (= res!472575 (not (contains!3952 (t!19708 acc!652) (h!14450 acc!652))))))

(declare-fun b!708821 () Bool)

(assert (=> b!708821 (= e!398917 (noDuplicate!1199 (t!19708 acc!652)))))

(assert (= (and d!96887 (not res!472574)) b!708820))

(assert (= (and b!708820 res!472575) b!708821))

(declare-fun m!666281 () Bool)

(assert (=> b!708820 m!666281))

(declare-fun m!666283 () Bool)

(assert (=> b!708821 m!666283))

(assert (=> b!708650 d!96887))

(declare-fun d!96889 () Bool)

(declare-fun res!472580 () Bool)

(declare-fun e!398923 () Bool)

(assert (=> d!96889 (=> res!472580 e!398923)))

(assert (=> d!96889 (= res!472580 (= (select (arr!19315 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!96889 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!398923)))

(declare-fun b!708826 () Bool)

(declare-fun e!398924 () Bool)

(assert (=> b!708826 (= e!398923 e!398924)))

(declare-fun res!472581 () Bool)

(assert (=> b!708826 (=> (not res!472581) (not e!398924))))

(assert (=> b!708826 (= res!472581 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19705 a!3591)))))

(declare-fun b!708827 () Bool)

(assert (=> b!708827 (= e!398924 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96889 (not res!472580)) b!708826))

(assert (= (and b!708826 res!472581) b!708827))

(declare-fun m!666285 () Bool)

(assert (=> d!96889 m!666285))

(declare-fun m!666289 () Bool)

(assert (=> b!708827 m!666289))

(assert (=> b!708649 d!96889))

(declare-fun d!96891 () Bool)

(assert (=> d!96891 (= (array_inv!15089 a!3591) (bvsge (size!19705 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62862 d!96891))

(declare-fun d!96897 () Bool)

(declare-fun lt!318126 () Bool)

(assert (=> d!96897 (= lt!318126 (select (content!343 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398932 () Bool)

(assert (=> d!96897 (= lt!318126 e!398932)))

(declare-fun res!472585 () Bool)

(assert (=> d!96897 (=> (not res!472585) (not e!398932))))

(assert (=> d!96897 (= res!472585 ((_ is Cons!13405) acc!652))))

(assert (=> d!96897 (= (contains!3952 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318126)))

(declare-fun b!708838 () Bool)

(declare-fun e!398931 () Bool)

(assert (=> b!708838 (= e!398932 e!398931)))

(declare-fun res!472584 () Bool)

(assert (=> b!708838 (=> res!472584 e!398931)))

(assert (=> b!708838 (= res!472584 (= (h!14450 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708839 () Bool)

(assert (=> b!708839 (= e!398931 (contains!3952 (t!19708 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96897 res!472585) b!708838))

(assert (= (and b!708838 (not res!472584)) b!708839))

(assert (=> d!96897 m!666221))

(declare-fun m!666299 () Bool)

(assert (=> d!96897 m!666299))

(declare-fun m!666301 () Bool)

(assert (=> b!708839 m!666301))

(assert (=> b!708651 d!96897))

(declare-fun d!96899 () Bool)

(declare-fun lt!318127 () Bool)

(assert (=> d!96899 (= lt!318127 (select (content!343 lt!318101) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398936 () Bool)

(assert (=> d!96899 (= lt!318127 e!398936)))

(declare-fun res!472589 () Bool)

(assert (=> d!96899 (=> (not res!472589) (not e!398936))))

(assert (=> d!96899 (= res!472589 ((_ is Cons!13405) lt!318101))))

(assert (=> d!96899 (= (contains!3952 lt!318101 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318127)))

(declare-fun b!708842 () Bool)

(declare-fun e!398935 () Bool)

(assert (=> b!708842 (= e!398936 e!398935)))

(declare-fun res!472588 () Bool)

(assert (=> b!708842 (=> res!472588 e!398935)))

(assert (=> b!708842 (= res!472588 (= (h!14450 lt!318101) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!708843 () Bool)

(assert (=> b!708843 (= e!398935 (contains!3952 (t!19708 lt!318101) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96899 res!472589) b!708842))

(assert (= (and b!708842 (not res!472588)) b!708843))

(assert (=> d!96899 m!666263))

(declare-fun m!666303 () Bool)

(assert (=> d!96899 m!666303))

(declare-fun m!666307 () Bool)

(assert (=> b!708843 m!666307))

(assert (=> b!708640 d!96899))

(declare-fun d!96903 () Bool)

(declare-fun res!472629 () Bool)

(declare-fun e!398980 () Bool)

(assert (=> d!96903 (=> res!472629 e!398980)))

(assert (=> d!96903 (= res!472629 (bvsge from!2969 (size!19705 a!3591)))))

(assert (=> d!96903 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398980)))

(declare-fun b!708891 () Bool)

(declare-fun e!398983 () Bool)

(declare-fun call!34422 () Bool)

(assert (=> b!708891 (= e!398983 call!34422)))

(declare-fun b!708892 () Bool)

(assert (=> b!708892 (= e!398983 call!34422)))

(declare-fun b!708893 () Bool)

(declare-fun e!398982 () Bool)

(assert (=> b!708893 (= e!398982 e!398983)))

(declare-fun c!78498 () Bool)

(assert (=> b!708893 (= c!78498 (validKeyInArray!0 (select (arr!19315 a!3591) from!2969)))))

(declare-fun b!708894 () Bool)

(declare-fun e!398981 () Bool)

(assert (=> b!708894 (= e!398981 (contains!3952 acc!652 (select (arr!19315 a!3591) from!2969)))))

(declare-fun bm!34419 () Bool)

(assert (=> bm!34419 (= call!34422 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78498 (Cons!13405 (select (arr!19315 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!708895 () Bool)

(assert (=> b!708895 (= e!398980 e!398982)))

(declare-fun res!472631 () Bool)

(assert (=> b!708895 (=> (not res!472631) (not e!398982))))

(assert (=> b!708895 (= res!472631 (not e!398981))))

(declare-fun res!472630 () Bool)

(assert (=> b!708895 (=> (not res!472630) (not e!398981))))

(assert (=> b!708895 (= res!472630 (validKeyInArray!0 (select (arr!19315 a!3591) from!2969)))))

(assert (= (and d!96903 (not res!472629)) b!708895))

(assert (= (and b!708895 res!472630) b!708894))

(assert (= (and b!708895 res!472631) b!708893))

(assert (= (and b!708893 c!78498) b!708892))

(assert (= (and b!708893 (not c!78498)) b!708891))

(assert (= (or b!708892 b!708891) bm!34419))

(assert (=> b!708893 m!666111))

(assert (=> b!708893 m!666111))

(assert (=> b!708893 m!666113))

(assert (=> b!708894 m!666111))

(assert (=> b!708894 m!666111))

(declare-fun m!666377 () Bool)

(assert (=> b!708894 m!666377))

(assert (=> bm!34419 m!666111))

(declare-fun m!666379 () Bool)

(assert (=> bm!34419 m!666379))

(assert (=> b!708895 m!666111))

(assert (=> b!708895 m!666111))

(assert (=> b!708895 m!666113))

(assert (=> b!708642 d!96903))

(declare-fun d!96947 () Bool)

(assert (=> d!96947 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!708641 d!96947))

(declare-fun d!96949 () Bool)

(declare-fun res!472632 () Bool)

(declare-fun e!398984 () Bool)

(assert (=> d!96949 (=> res!472632 e!398984)))

(assert (=> d!96949 (= res!472632 ((_ is Nil!13406) newAcc!49))))

(assert (=> d!96949 (= (noDuplicate!1199 newAcc!49) e!398984)))

(declare-fun b!708896 () Bool)

(declare-fun e!398985 () Bool)

(assert (=> b!708896 (= e!398984 e!398985)))

(declare-fun res!472633 () Bool)

(assert (=> b!708896 (=> (not res!472633) (not e!398985))))

(assert (=> b!708896 (= res!472633 (not (contains!3952 (t!19708 newAcc!49) (h!14450 newAcc!49))))))

(declare-fun b!708897 () Bool)

(assert (=> b!708897 (= e!398985 (noDuplicate!1199 (t!19708 newAcc!49)))))

(assert (= (and d!96949 (not res!472632)) b!708896))

(assert (= (and b!708896 res!472633) b!708897))

(declare-fun m!666381 () Bool)

(assert (=> b!708896 m!666381))

(declare-fun m!666383 () Bool)

(assert (=> b!708897 m!666383))

(assert (=> b!708652 d!96949))

(check-sat (not b!708817) (not b!708761) (not b!708821) (not d!96845) (not b!708896) (not b!708819) (not d!96873) (not d!96883) (not b!708737) (not b!708894) (not d!96897) (not b!708893) (not b!708748) (not b!708897) (not b!708815) (not bm!34413) (not d!96841) (not b!708814) (not b!708827) (not b!708749) (not bm!34419) (not b!708777) (not d!96879) (not b!708799) (not b!708895) (not b!708803) (not b!708820) (not d!96885) (not b!708776) (not b!708797) (not d!96871) (not b!708839) (not d!96899) (not b!708843) (not b!708805))
(check-sat)
