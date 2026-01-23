; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716282 () Bool)

(assert start!716282)

(declare-fun res!2963544 () Bool)

(declare-fun e!4391437 () Bool)

(assert (=> start!716282 (=> (not res!2963544) (not e!4391437))))

(declare-datatypes ((C!38402 0))(
  ( (C!38403 (val!29561 Int)) )
))
(declare-datatypes ((Regex!19064 0))(
  ( (ElementMatch!19064 (c!1361916 C!38402)) (Concat!27909 (regOne!38640 Regex!19064) (regTwo!38640 Regex!19064)) (EmptyExpr!19064) (Star!19064 (reg!19393 Regex!19064)) (EmptyLang!19064) (Union!19064 (regOne!38641 Regex!19064) (regTwo!38641 Regex!19064)) )
))
(declare-datatypes ((List!71560 0))(
  ( (Nil!71436) (Cons!71436 (h!77884 Regex!19064) (t!385951 List!71560)) )
))
(declare-datatypes ((Context!16008 0))(
  ( (Context!16009 (exprs!8504 List!71560)) )
))
(declare-fun cWitness!35 () Context!16008)

(declare-fun lt!2608683 () (Set Context!16008))

(assert (=> start!716282 (= res!2963544 (set.member cWitness!35 lt!2608683))))

(declare-fun ct1!256 () Context!16008)

(declare-fun c!10305 () C!38402)

(declare-fun derivationStepZipperUp!2744 (Context!16008 C!38402) (Set Context!16008))

(assert (=> start!716282 (= lt!2608683 (derivationStepZipperUp!2744 ct1!256 c!10305))))

(assert (=> start!716282 e!4391437))

(declare-fun tp_is_empty!48373 () Bool)

(assert (=> start!716282 tp_is_empty!48373))

(declare-fun e!4391442 () Bool)

(declare-fun inv!91001 (Context!16008) Bool)

(assert (=> start!716282 (and (inv!91001 cWitness!35) e!4391442)))

(declare-fun e!4391441 () Bool)

(assert (=> start!716282 (and (inv!91001 ct1!256) e!4391441)))

(declare-fun ct2!352 () Context!16008)

(declare-fun e!4391438 () Bool)

(assert (=> start!716282 (and (inv!91001 ct2!352) e!4391438)))

(declare-fun b!7333642 () Bool)

(declare-fun tp!2081932 () Bool)

(assert (=> b!7333642 (= e!4391442 tp!2081932)))

(declare-fun b!7333643 () Bool)

(declare-fun res!2963542 () Bool)

(declare-fun e!4391440 () Bool)

(assert (=> b!7333643 (=> (not res!2963542) (not e!4391440))))

(declare-fun lt!2608682 () (Set Context!16008))

(assert (=> b!7333643 (= res!2963542 (and (= lt!2608683 lt!2608682) (set.member cWitness!35 lt!2608682)))))

(declare-fun b!7333644 () Bool)

(declare-fun res!2963541 () Bool)

(declare-fun e!4391439 () Bool)

(assert (=> b!7333644 (=> (not res!2963541) (not e!4391439))))

(declare-fun isEmpty!40976 (List!71560) Bool)

(assert (=> b!7333644 (= res!2963541 (not (isEmpty!40976 (exprs!8504 ct1!256))))))

(declare-fun b!7333645 () Bool)

(assert (=> b!7333645 (= e!4391439 e!4391440)))

(declare-fun res!2963546 () Bool)

(assert (=> b!7333645 (=> (not res!2963546) (not e!4391440))))

(declare-fun nullable!8165 (Regex!19064) Bool)

(assert (=> b!7333645 (= res!2963546 (not (nullable!8165 (h!77884 (exprs!8504 ct1!256)))))))

(declare-fun derivationStepZipperDown!2891 (Regex!19064 Context!16008 C!38402) (Set Context!16008))

(declare-fun tail!14745 (List!71560) List!71560)

(assert (=> b!7333645 (= lt!2608682 (derivationStepZipperDown!2891 (h!77884 (exprs!8504 ct1!256)) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) c!10305))))

(declare-fun b!7333646 () Bool)

(declare-fun tp!2081933 () Bool)

(assert (=> b!7333646 (= e!4391441 tp!2081933)))

(declare-fun b!7333647 () Bool)

(declare-fun lt!2608681 () List!71560)

(assert (=> b!7333647 (= e!4391440 (not (inv!91001 (Context!16009 (tail!14745 lt!2608681)))))))

(declare-fun b!7333648 () Bool)

(declare-fun tp!2081934 () Bool)

(assert (=> b!7333648 (= e!4391438 tp!2081934)))

(declare-fun b!7333649 () Bool)

(assert (=> b!7333649 (= e!4391437 e!4391439)))

(declare-fun res!2963543 () Bool)

(assert (=> b!7333649 (=> (not res!2963543) (not e!4391439))))

(assert (=> b!7333649 (= res!2963543 (is-Cons!71436 (exprs!8504 ct1!256)))))

(declare-fun ++!16886 (List!71560 List!71560) List!71560)

(assert (=> b!7333649 (= lt!2608681 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)))))

(declare-fun lambda!454972 () Int)

(declare-datatypes ((Unit!165089 0))(
  ( (Unit!165090) )
))
(declare-fun lt!2608680 () Unit!165089)

(declare-fun lemmaConcatPreservesForall!1743 (List!71560 List!71560 Int) Unit!165089)

(assert (=> b!7333649 (= lt!2608680 (lemmaConcatPreservesForall!1743 (exprs!8504 ct1!256) (exprs!8504 ct2!352) lambda!454972))))

(declare-fun b!7333650 () Bool)

(declare-fun res!2963545 () Bool)

(assert (=> b!7333650 (=> (not res!2963545) (not e!4391440))))

(assert (=> b!7333650 (= res!2963545 (not (isEmpty!40976 lt!2608681)))))

(assert (= (and start!716282 res!2963544) b!7333649))

(assert (= (and b!7333649 res!2963543) b!7333644))

(assert (= (and b!7333644 res!2963541) b!7333645))

(assert (= (and b!7333645 res!2963546) b!7333643))

(assert (= (and b!7333643 res!2963542) b!7333650))

(assert (= (and b!7333650 res!2963545) b!7333647))

(assert (= start!716282 b!7333642))

(assert (= start!716282 b!7333646))

(assert (= start!716282 b!7333648))

(declare-fun m!7999734 () Bool)

(assert (=> b!7333643 m!7999734))

(declare-fun m!7999736 () Bool)

(assert (=> b!7333645 m!7999736))

(declare-fun m!7999738 () Bool)

(assert (=> b!7333645 m!7999738))

(declare-fun m!7999740 () Bool)

(assert (=> b!7333645 m!7999740))

(declare-fun m!7999742 () Bool)

(assert (=> b!7333649 m!7999742))

(declare-fun m!7999744 () Bool)

(assert (=> b!7333649 m!7999744))

(declare-fun m!7999746 () Bool)

(assert (=> b!7333647 m!7999746))

(declare-fun m!7999748 () Bool)

(assert (=> b!7333647 m!7999748))

(declare-fun m!7999750 () Bool)

(assert (=> b!7333644 m!7999750))

(declare-fun m!7999752 () Bool)

(assert (=> b!7333650 m!7999752))

(declare-fun m!7999754 () Bool)

(assert (=> start!716282 m!7999754))

(declare-fun m!7999756 () Bool)

(assert (=> start!716282 m!7999756))

(declare-fun m!7999758 () Bool)

(assert (=> start!716282 m!7999758))

(declare-fun m!7999760 () Bool)

(assert (=> start!716282 m!7999760))

(declare-fun m!7999762 () Bool)

(assert (=> start!716282 m!7999762))

(push 1)

(assert (not b!7333646))

(assert (not b!7333645))

(assert (not b!7333644))

(assert (not b!7333647))

(assert (not b!7333650))

(assert (not b!7333648))

(assert tp_is_empty!48373)

(assert (not b!7333649))

(assert (not start!716282))

(assert (not b!7333642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277359 () Bool)

(assert (=> d!2277359 (= (isEmpty!40976 (exprs!8504 ct1!256)) (is-Nil!71436 (exprs!8504 ct1!256)))))

(assert (=> b!7333644 d!2277359))

(declare-fun b!7333688 () Bool)

(declare-fun res!2963570 () Bool)

(declare-fun e!4391465 () Bool)

(assert (=> b!7333688 (=> (not res!2963570) (not e!4391465))))

(declare-fun lt!2608698 () List!71560)

(declare-fun size!41970 (List!71560) Int)

(assert (=> b!7333688 (= res!2963570 (= (size!41970 lt!2608698) (+ (size!41970 (exprs!8504 ct1!256)) (size!41970 (exprs!8504 ct2!352)))))))

(declare-fun d!2277361 () Bool)

(assert (=> d!2277361 e!4391465))

(declare-fun res!2963569 () Bool)

(assert (=> d!2277361 (=> (not res!2963569) (not e!4391465))))

(declare-fun content!14991 (List!71560) (Set Regex!19064))

(assert (=> d!2277361 (= res!2963569 (= (content!14991 lt!2608698) (set.union (content!14991 (exprs!8504 ct1!256)) (content!14991 (exprs!8504 ct2!352)))))))

(declare-fun e!4391466 () List!71560)

(assert (=> d!2277361 (= lt!2608698 e!4391466)))

(declare-fun c!1361920 () Bool)

(assert (=> d!2277361 (= c!1361920 (is-Nil!71436 (exprs!8504 ct1!256)))))

(assert (=> d!2277361 (= (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)) lt!2608698)))

(declare-fun b!7333687 () Bool)

(assert (=> b!7333687 (= e!4391466 (Cons!71436 (h!77884 (exprs!8504 ct1!256)) (++!16886 (t!385951 (exprs!8504 ct1!256)) (exprs!8504 ct2!352))))))

(declare-fun b!7333689 () Bool)

(assert (=> b!7333689 (= e!4391465 (or (not (= (exprs!8504 ct2!352) Nil!71436)) (= lt!2608698 (exprs!8504 ct1!256))))))

(declare-fun b!7333686 () Bool)

(assert (=> b!7333686 (= e!4391466 (exprs!8504 ct2!352))))

(assert (= (and d!2277361 c!1361920) b!7333686))

(assert (= (and d!2277361 (not c!1361920)) b!7333687))

(assert (= (and d!2277361 res!2963569) b!7333688))

(assert (= (and b!7333688 res!2963570) b!7333689))

(declare-fun m!7999794 () Bool)

(assert (=> b!7333688 m!7999794))

(declare-fun m!7999796 () Bool)

(assert (=> b!7333688 m!7999796))

(declare-fun m!7999798 () Bool)

(assert (=> b!7333688 m!7999798))

(declare-fun m!7999800 () Bool)

(assert (=> d!2277361 m!7999800))

(declare-fun m!7999802 () Bool)

(assert (=> d!2277361 m!7999802))

(declare-fun m!7999804 () Bool)

(assert (=> d!2277361 m!7999804))

(declare-fun m!7999806 () Bool)

(assert (=> b!7333687 m!7999806))

(assert (=> b!7333649 d!2277361))

(declare-fun d!2277363 () Bool)

(declare-fun forall!17900 (List!71560 Int) Bool)

(assert (=> d!2277363 (forall!17900 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)) lambda!454972)))

(declare-fun lt!2608701 () Unit!165089)

(declare-fun choose!57046 (List!71560 List!71560 Int) Unit!165089)

(assert (=> d!2277363 (= lt!2608701 (choose!57046 (exprs!8504 ct1!256) (exprs!8504 ct2!352) lambda!454972))))

(assert (=> d!2277363 (forall!17900 (exprs!8504 ct1!256) lambda!454972)))

(assert (=> d!2277363 (= (lemmaConcatPreservesForall!1743 (exprs!8504 ct1!256) (exprs!8504 ct2!352) lambda!454972) lt!2608701)))

(declare-fun bs!1917726 () Bool)

(assert (= bs!1917726 d!2277363))

(assert (=> bs!1917726 m!7999742))

(assert (=> bs!1917726 m!7999742))

(declare-fun m!7999808 () Bool)

(assert (=> bs!1917726 m!7999808))

(declare-fun m!7999810 () Bool)

(assert (=> bs!1917726 m!7999810))

(declare-fun m!7999812 () Bool)

(assert (=> bs!1917726 m!7999812))

(assert (=> b!7333649 d!2277363))

(declare-fun b!7333700 () Bool)

(declare-fun e!4391475 () (Set Context!16008))

(declare-fun e!4391474 () (Set Context!16008))

(assert (=> b!7333700 (= e!4391475 e!4391474)))

(declare-fun c!1361926 () Bool)

(assert (=> b!7333700 (= c!1361926 (is-Cons!71436 (exprs!8504 ct1!256)))))

(declare-fun b!7333701 () Bool)

(declare-fun call!668402 () (Set Context!16008))

(assert (=> b!7333701 (= e!4391474 call!668402)))

(declare-fun bm!668397 () Bool)

(assert (=> bm!668397 (= call!668402 (derivationStepZipperDown!2891 (h!77884 (exprs!8504 ct1!256)) (Context!16009 (t!385951 (exprs!8504 ct1!256))) c!10305))))

(declare-fun b!7333702 () Bool)

(assert (=> b!7333702 (= e!4391475 (set.union call!668402 (derivationStepZipperUp!2744 (Context!16009 (t!385951 (exprs!8504 ct1!256))) c!10305)))))

(declare-fun d!2277365 () Bool)

(declare-fun c!1361925 () Bool)

(declare-fun e!4391473 () Bool)

(assert (=> d!2277365 (= c!1361925 e!4391473)))

(declare-fun res!2963573 () Bool)

(assert (=> d!2277365 (=> (not res!2963573) (not e!4391473))))

(assert (=> d!2277365 (= res!2963573 (is-Cons!71436 (exprs!8504 ct1!256)))))

(assert (=> d!2277365 (= (derivationStepZipperUp!2744 ct1!256 c!10305) e!4391475)))

(declare-fun b!7333703 () Bool)

(assert (=> b!7333703 (= e!4391474 (as set.empty (Set Context!16008)))))

(declare-fun b!7333704 () Bool)

(assert (=> b!7333704 (= e!4391473 (nullable!8165 (h!77884 (exprs!8504 ct1!256))))))

(assert (= (and d!2277365 res!2963573) b!7333704))

(assert (= (and d!2277365 c!1361925) b!7333702))

(assert (= (and d!2277365 (not c!1361925)) b!7333700))

(assert (= (and b!7333700 c!1361926) b!7333701))

(assert (= (and b!7333700 (not c!1361926)) b!7333703))

(assert (= (or b!7333702 b!7333701) bm!668397))

(declare-fun m!7999814 () Bool)

(assert (=> bm!668397 m!7999814))

(declare-fun m!7999816 () Bool)

(assert (=> b!7333702 m!7999816))

(assert (=> b!7333704 m!7999736))

(assert (=> start!716282 d!2277365))

(declare-fun bs!1917727 () Bool)

(declare-fun d!2277371 () Bool)

(assert (= bs!1917727 (and d!2277371 b!7333649)))

(declare-fun lambda!454980 () Int)

(assert (=> bs!1917727 (= lambda!454980 lambda!454972)))

(assert (=> d!2277371 (= (inv!91001 cWitness!35) (forall!17900 (exprs!8504 cWitness!35) lambda!454980))))

(declare-fun bs!1917728 () Bool)

(assert (= bs!1917728 d!2277371))

(declare-fun m!7999818 () Bool)

(assert (=> bs!1917728 m!7999818))

(assert (=> start!716282 d!2277371))

(declare-fun bs!1917729 () Bool)

(declare-fun d!2277373 () Bool)

(assert (= bs!1917729 (and d!2277373 b!7333649)))

(declare-fun lambda!454981 () Int)

(assert (=> bs!1917729 (= lambda!454981 lambda!454972)))

(declare-fun bs!1917730 () Bool)

(assert (= bs!1917730 (and d!2277373 d!2277371)))

(assert (=> bs!1917730 (= lambda!454981 lambda!454980)))

(assert (=> d!2277373 (= (inv!91001 ct1!256) (forall!17900 (exprs!8504 ct1!256) lambda!454981))))

(declare-fun bs!1917731 () Bool)

(assert (= bs!1917731 d!2277373))

(declare-fun m!7999820 () Bool)

(assert (=> bs!1917731 m!7999820))

(assert (=> start!716282 d!2277373))

(declare-fun bs!1917732 () Bool)

(declare-fun d!2277375 () Bool)

(assert (= bs!1917732 (and d!2277375 b!7333649)))

(declare-fun lambda!454982 () Int)

(assert (=> bs!1917732 (= lambda!454982 lambda!454972)))

(declare-fun bs!1917733 () Bool)

(assert (= bs!1917733 (and d!2277375 d!2277371)))

(assert (=> bs!1917733 (= lambda!454982 lambda!454980)))

(declare-fun bs!1917734 () Bool)

(assert (= bs!1917734 (and d!2277375 d!2277373)))

(assert (=> bs!1917734 (= lambda!454982 lambda!454981)))

(assert (=> d!2277375 (= (inv!91001 ct2!352) (forall!17900 (exprs!8504 ct2!352) lambda!454982))))

(declare-fun bs!1917735 () Bool)

(assert (= bs!1917735 d!2277375))

(declare-fun m!7999822 () Bool)

(assert (=> bs!1917735 m!7999822))

(assert (=> start!716282 d!2277375))

(declare-fun bs!1917736 () Bool)

(declare-fun d!2277377 () Bool)

(assert (= bs!1917736 (and d!2277377 b!7333649)))

(declare-fun lambda!454983 () Int)

(assert (=> bs!1917736 (= lambda!454983 lambda!454972)))

(declare-fun bs!1917737 () Bool)

(assert (= bs!1917737 (and d!2277377 d!2277371)))

(assert (=> bs!1917737 (= lambda!454983 lambda!454980)))

(declare-fun bs!1917738 () Bool)

(assert (= bs!1917738 (and d!2277377 d!2277373)))

(assert (=> bs!1917738 (= lambda!454983 lambda!454981)))

(declare-fun bs!1917739 () Bool)

(assert (= bs!1917739 (and d!2277377 d!2277375)))

(assert (=> bs!1917739 (= lambda!454983 lambda!454982)))

(assert (=> d!2277377 (= (inv!91001 (Context!16009 (tail!14745 lt!2608681))) (forall!17900 (exprs!8504 (Context!16009 (tail!14745 lt!2608681))) lambda!454983))))

(declare-fun bs!1917740 () Bool)

(assert (= bs!1917740 d!2277377))

(declare-fun m!7999824 () Bool)

(assert (=> bs!1917740 m!7999824))

(assert (=> b!7333647 d!2277377))

(declare-fun d!2277379 () Bool)

(assert (=> d!2277379 (= (tail!14745 lt!2608681) (t!385951 lt!2608681))))

(assert (=> b!7333647 d!2277379))

(declare-fun d!2277381 () Bool)

(assert (=> d!2277381 (= (isEmpty!40976 lt!2608681) (is-Nil!71436 lt!2608681))))

(assert (=> b!7333650 d!2277381))

(declare-fun d!2277383 () Bool)

(declare-fun nullableFct!3255 (Regex!19064) Bool)

(assert (=> d!2277383 (= (nullable!8165 (h!77884 (exprs!8504 ct1!256))) (nullableFct!3255 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun bs!1917743 () Bool)

(assert (= bs!1917743 d!2277383))

(declare-fun m!7999828 () Bool)

(assert (=> bs!1917743 m!7999828))

(assert (=> b!7333645 d!2277383))

(declare-fun b!7333737 () Bool)

(declare-fun e!4391494 () (Set Context!16008))

(declare-fun call!668418 () (Set Context!16008))

(declare-fun call!668422 () (Set Context!16008))

(assert (=> b!7333737 (= e!4391494 (set.union call!668418 call!668422))))

(declare-fun b!7333738 () Bool)

(declare-fun e!4391495 () (Set Context!16008))

(assert (=> b!7333738 (= e!4391495 e!4391494)))

(declare-fun c!1361944 () Bool)

(assert (=> b!7333738 (= c!1361944 (is-Union!19064 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun b!7333739 () Bool)

(declare-fun e!4391499 () (Set Context!16008))

(assert (=> b!7333739 (= e!4391499 (as set.empty (Set Context!16008)))))

(declare-fun bm!668412 () Bool)

(declare-fun call!668417 () List!71560)

(declare-fun call!668420 () List!71560)

(assert (=> bm!668412 (= call!668417 call!668420)))

(declare-fun b!7333740 () Bool)

(declare-fun e!4391496 () (Set Context!16008))

(declare-fun e!4391498 () (Set Context!16008))

(assert (=> b!7333740 (= e!4391496 e!4391498)))

(declare-fun c!1361942 () Bool)

(assert (=> b!7333740 (= c!1361942 (is-Concat!27909 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun b!7333741 () Bool)

(declare-fun call!668421 () (Set Context!16008))

(assert (=> b!7333741 (= e!4391496 (set.union call!668418 call!668421))))

(declare-fun bm!668413 () Bool)

(assert (=> bm!668413 (= call!668421 call!668422)))

(declare-fun bm!668414 () Bool)

(declare-fun call!668419 () (Set Context!16008))

(assert (=> bm!668414 (= call!668419 call!668421)))

(declare-fun c!1361941 () Bool)

(declare-fun bm!668415 () Bool)

(declare-fun $colon$colon!3073 (List!71560 Regex!19064) List!71560)

(assert (=> bm!668415 (= call!668420 ($colon$colon!3073 (exprs!8504 (Context!16009 (tail!14745 (exprs!8504 ct1!256)))) (ite (or c!1361941 c!1361942) (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (h!77884 (exprs!8504 ct1!256)))))))

(declare-fun d!2277387 () Bool)

(declare-fun c!1361945 () Bool)

(assert (=> d!2277387 (= c!1361945 (and (is-ElementMatch!19064 (h!77884 (exprs!8504 ct1!256))) (= (c!1361916 (h!77884 (exprs!8504 ct1!256))) c!10305)))))

(assert (=> d!2277387 (= (derivationStepZipperDown!2891 (h!77884 (exprs!8504 ct1!256)) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) c!10305) e!4391495)))

(declare-fun b!7333742 () Bool)

(assert (=> b!7333742 (= e!4391498 call!668419)))

(declare-fun b!7333743 () Bool)

(assert (=> b!7333743 (= e!4391495 (set.insert (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (as set.empty (Set Context!16008))))))

(declare-fun b!7333744 () Bool)

(declare-fun c!1361943 () Bool)

(assert (=> b!7333744 (= c!1361943 (is-Star!19064 (h!77884 (exprs!8504 ct1!256))))))

(assert (=> b!7333744 (= e!4391498 e!4391499)))

(declare-fun bm!668416 () Bool)

(assert (=> bm!668416 (= call!668418 (derivationStepZipperDown!2891 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256)))) (ite c!1361944 (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668420)) c!10305))))

(declare-fun b!7333745 () Bool)

(declare-fun e!4391497 () Bool)

(assert (=> b!7333745 (= e!4391497 (nullable!8165 (regOne!38640 (h!77884 (exprs!8504 ct1!256)))))))

(declare-fun bm!668417 () Bool)

(assert (=> bm!668417 (= call!668422 (derivationStepZipperDown!2891 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256)))))) (ite (or c!1361944 c!1361941) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668417)) c!10305))))

(declare-fun b!7333746 () Bool)

(assert (=> b!7333746 (= c!1361941 e!4391497)))

(declare-fun res!2963578 () Bool)

(assert (=> b!7333746 (=> (not res!2963578) (not e!4391497))))

(assert (=> b!7333746 (= res!2963578 (is-Concat!27909 (h!77884 (exprs!8504 ct1!256))))))

(assert (=> b!7333746 (= e!4391494 e!4391496)))

(declare-fun b!7333747 () Bool)

(assert (=> b!7333747 (= e!4391499 call!668419)))

(assert (= (and d!2277387 c!1361945) b!7333743))

(assert (= (and d!2277387 (not c!1361945)) b!7333738))

(assert (= (and b!7333738 c!1361944) b!7333737))

(assert (= (and b!7333738 (not c!1361944)) b!7333746))

(assert (= (and b!7333746 res!2963578) b!7333745))

(assert (= (and b!7333746 c!1361941) b!7333741))

(assert (= (and b!7333746 (not c!1361941)) b!7333740))

(assert (= (and b!7333740 c!1361942) b!7333742))

(assert (= (and b!7333740 (not c!1361942)) b!7333744))

(assert (= (and b!7333744 c!1361943) b!7333747))

(assert (= (and b!7333744 (not c!1361943)) b!7333739))

(assert (= (or b!7333742 b!7333747) bm!668412))

(assert (= (or b!7333742 b!7333747) bm!668414))

(assert (= (or b!7333741 bm!668414) bm!668413))

(assert (= (or b!7333741 bm!668412) bm!668415))

(assert (= (or b!7333737 bm!668413) bm!668417))

(assert (= (or b!7333737 b!7333741) bm!668416))

(declare-fun m!7999830 () Bool)

(assert (=> bm!668415 m!7999830))

(declare-fun m!7999832 () Bool)

(assert (=> b!7333743 m!7999832))

(declare-fun m!7999834 () Bool)

(assert (=> b!7333745 m!7999834))

(declare-fun m!7999836 () Bool)

(assert (=> bm!668417 m!7999836))

(declare-fun m!7999838 () Bool)

(assert (=> bm!668416 m!7999838))

(assert (=> b!7333645 d!2277387))

(declare-fun d!2277393 () Bool)

(assert (=> d!2277393 (= (tail!14745 (exprs!8504 ct1!256)) (t!385951 (exprs!8504 ct1!256)))))

(assert (=> b!7333645 d!2277393))

(declare-fun b!7333757 () Bool)

(declare-fun e!4391505 () Bool)

(declare-fun tp!2081948 () Bool)

(declare-fun tp!2081949 () Bool)

(assert (=> b!7333757 (= e!4391505 (and tp!2081948 tp!2081949))))

(assert (=> b!7333648 (= tp!2081934 e!4391505)))

(assert (= (and b!7333648 (is-Cons!71436 (exprs!8504 ct2!352))) b!7333757))

(declare-fun b!7333758 () Bool)

(declare-fun e!4391506 () Bool)

(declare-fun tp!2081950 () Bool)

(declare-fun tp!2081951 () Bool)

(assert (=> b!7333758 (= e!4391506 (and tp!2081950 tp!2081951))))

(assert (=> b!7333642 (= tp!2081932 e!4391506)))

(assert (= (and b!7333642 (is-Cons!71436 (exprs!8504 cWitness!35))) b!7333758))

(declare-fun b!7333759 () Bool)

(declare-fun e!4391507 () Bool)

(declare-fun tp!2081952 () Bool)

(declare-fun tp!2081953 () Bool)

(assert (=> b!7333759 (= e!4391507 (and tp!2081952 tp!2081953))))

(assert (=> b!7333646 (= tp!2081933 e!4391507)))

(assert (= (and b!7333646 (is-Cons!71436 (exprs!8504 ct1!256))) b!7333759))

(push 1)

(assert (not bm!668397))

(assert (not d!2277383))

(assert (not d!2277373))

(assert (not bm!668416))

(assert (not b!7333687))

(assert (not d!2277375))

(assert (not d!2277361))

(assert (not b!7333704))

(assert (not d!2277377))

(assert (not b!7333759))

(assert (not bm!668417))

(assert (not d!2277363))

(assert (not b!7333745))

(assert tp_is_empty!48373)

(assert (not b!7333688))

(assert (not bm!668415))

(assert (not b!7333758))

(assert (not b!7333702))

(assert (not b!7333757))

(assert (not d!2277371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277411 () Bool)

(declare-fun res!2963593 () Bool)

(declare-fun e!4391541 () Bool)

(assert (=> d!2277411 (=> res!2963593 e!4391541)))

(assert (=> d!2277411 (= res!2963593 (is-Nil!71436 (exprs!8504 ct1!256)))))

(assert (=> d!2277411 (= (forall!17900 (exprs!8504 ct1!256) lambda!454981) e!4391541)))

(declare-fun b!7333816 () Bool)

(declare-fun e!4391542 () Bool)

(assert (=> b!7333816 (= e!4391541 e!4391542)))

(declare-fun res!2963594 () Bool)

(assert (=> b!7333816 (=> (not res!2963594) (not e!4391542))))

(declare-fun dynLambda!29427 (Int Regex!19064) Bool)

(assert (=> b!7333816 (= res!2963594 (dynLambda!29427 lambda!454981 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun b!7333817 () Bool)

(assert (=> b!7333817 (= e!4391542 (forall!17900 (t!385951 (exprs!8504 ct1!256)) lambda!454981))))

(assert (= (and d!2277411 (not res!2963593)) b!7333816))

(assert (= (and b!7333816 res!2963594) b!7333817))

(declare-fun b_lambda!283627 () Bool)

(assert (=> (not b_lambda!283627) (not b!7333816)))

(declare-fun m!7999882 () Bool)

(assert (=> b!7333816 m!7999882))

(declare-fun m!7999884 () Bool)

(assert (=> b!7333817 m!7999884))

(assert (=> d!2277373 d!2277411))

(declare-fun b!7333818 () Bool)

(declare-fun e!4391543 () (Set Context!16008))

(declare-fun call!668443 () (Set Context!16008))

(declare-fun call!668447 () (Set Context!16008))

(assert (=> b!7333818 (= e!4391543 (set.union call!668443 call!668447))))

(declare-fun b!7333819 () Bool)

(declare-fun e!4391544 () (Set Context!16008))

(assert (=> b!7333819 (= e!4391544 e!4391543)))

(declare-fun c!1361969 () Bool)

(assert (=> b!7333819 (= c!1361969 (is-Union!19064 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))))))

(declare-fun b!7333820 () Bool)

(declare-fun e!4391548 () (Set Context!16008))

(assert (=> b!7333820 (= e!4391548 (as set.empty (Set Context!16008)))))

(declare-fun bm!668437 () Bool)

(declare-fun call!668442 () List!71560)

(declare-fun call!668445 () List!71560)

(assert (=> bm!668437 (= call!668442 call!668445)))

(declare-fun b!7333821 () Bool)

(declare-fun e!4391545 () (Set Context!16008))

(declare-fun e!4391547 () (Set Context!16008))

(assert (=> b!7333821 (= e!4391545 e!4391547)))

(declare-fun c!1361967 () Bool)

(assert (=> b!7333821 (= c!1361967 (is-Concat!27909 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))))))

(declare-fun b!7333822 () Bool)

(declare-fun call!668446 () (Set Context!16008))

(assert (=> b!7333822 (= e!4391545 (set.union call!668443 call!668446))))

(declare-fun bm!668438 () Bool)

(assert (=> bm!668438 (= call!668446 call!668447)))

(declare-fun bm!668439 () Bool)

(declare-fun call!668444 () (Set Context!16008))

(assert (=> bm!668439 (= call!668444 call!668446)))

(declare-fun bm!668440 () Bool)

(declare-fun c!1361966 () Bool)

(assert (=> bm!668440 (= call!668445 ($colon$colon!3073 (exprs!8504 (ite c!1361944 (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668420))) (ite (or c!1361966 c!1361967) (regTwo!38640 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))) (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256)))))))))

(declare-fun d!2277413 () Bool)

(declare-fun c!1361970 () Bool)

(assert (=> d!2277413 (= c!1361970 (and (is-ElementMatch!19064 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))) (= (c!1361916 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))) c!10305)))))

(assert (=> d!2277413 (= (derivationStepZipperDown!2891 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256)))) (ite c!1361944 (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668420)) c!10305) e!4391544)))

(declare-fun b!7333823 () Bool)

(assert (=> b!7333823 (= e!4391547 call!668444)))

(declare-fun b!7333824 () Bool)

(assert (=> b!7333824 (= e!4391544 (set.insert (ite c!1361944 (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668420)) (as set.empty (Set Context!16008))))))

(declare-fun b!7333825 () Bool)

(declare-fun c!1361968 () Bool)

(assert (=> b!7333825 (= c!1361968 (is-Star!19064 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))))))

(assert (=> b!7333825 (= e!4391547 e!4391548)))

(declare-fun bm!668441 () Bool)

(assert (=> bm!668441 (= call!668443 (derivationStepZipperDown!2891 (ite c!1361969 (regOne!38641 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))) (regOne!38640 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256)))))) (ite c!1361969 (ite c!1361944 (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668420)) (Context!16009 call!668445)) c!10305))))

(declare-fun b!7333826 () Bool)

(declare-fun e!4391546 () Bool)

(assert (=> b!7333826 (= e!4391546 (nullable!8165 (regOne!38640 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256)))))))))

(declare-fun bm!668442 () Bool)

(assert (=> bm!668442 (= call!668447 (derivationStepZipperDown!2891 (ite c!1361969 (regTwo!38641 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))) (ite c!1361966 (regTwo!38640 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))) (ite c!1361967 (regOne!38640 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))) (reg!19393 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256)))))))) (ite (or c!1361969 c!1361966) (ite c!1361944 (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668420)) (Context!16009 call!668442)) c!10305))))

(declare-fun b!7333827 () Bool)

(assert (=> b!7333827 (= c!1361966 e!4391546)))

(declare-fun res!2963595 () Bool)

(assert (=> b!7333827 (=> (not res!2963595) (not e!4391546))))

(assert (=> b!7333827 (= res!2963595 (is-Concat!27909 (ite c!1361944 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))))))

(assert (=> b!7333827 (= e!4391543 e!4391545)))

(declare-fun b!7333828 () Bool)

(assert (=> b!7333828 (= e!4391548 call!668444)))

(assert (= (and d!2277413 c!1361970) b!7333824))

(assert (= (and d!2277413 (not c!1361970)) b!7333819))

(assert (= (and b!7333819 c!1361969) b!7333818))

(assert (= (and b!7333819 (not c!1361969)) b!7333827))

(assert (= (and b!7333827 res!2963595) b!7333826))

(assert (= (and b!7333827 c!1361966) b!7333822))

(assert (= (and b!7333827 (not c!1361966)) b!7333821))

(assert (= (and b!7333821 c!1361967) b!7333823))

(assert (= (and b!7333821 (not c!1361967)) b!7333825))

(assert (= (and b!7333825 c!1361968) b!7333828))

(assert (= (and b!7333825 (not c!1361968)) b!7333820))

(assert (= (or b!7333823 b!7333828) bm!668437))

(assert (= (or b!7333823 b!7333828) bm!668439))

(assert (= (or b!7333822 bm!668439) bm!668438))

(assert (= (or b!7333822 bm!668437) bm!668440))

(assert (= (or b!7333818 bm!668438) bm!668442))

(assert (= (or b!7333818 b!7333822) bm!668441))

(declare-fun m!7999886 () Bool)

(assert (=> bm!668440 m!7999886))

(declare-fun m!7999888 () Bool)

(assert (=> b!7333824 m!7999888))

(declare-fun m!7999890 () Bool)

(assert (=> b!7333826 m!7999890))

(declare-fun m!7999892 () Bool)

(assert (=> bm!668442 m!7999892))

(declare-fun m!7999894 () Bool)

(assert (=> bm!668441 m!7999894))

(assert (=> bm!668416 d!2277413))

(declare-fun d!2277415 () Bool)

(declare-fun res!2963596 () Bool)

(declare-fun e!4391549 () Bool)

(assert (=> d!2277415 (=> res!2963596 e!4391549)))

(assert (=> d!2277415 (= res!2963596 (is-Nil!71436 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352))))))

(assert (=> d!2277415 (= (forall!17900 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)) lambda!454972) e!4391549)))

(declare-fun b!7333829 () Bool)

(declare-fun e!4391550 () Bool)

(assert (=> b!7333829 (= e!4391549 e!4391550)))

(declare-fun res!2963597 () Bool)

(assert (=> b!7333829 (=> (not res!2963597) (not e!4391550))))

(assert (=> b!7333829 (= res!2963597 (dynLambda!29427 lambda!454972 (h!77884 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)))))))

(declare-fun b!7333830 () Bool)

(assert (=> b!7333830 (= e!4391550 (forall!17900 (t!385951 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352))) lambda!454972))))

(assert (= (and d!2277415 (not res!2963596)) b!7333829))

(assert (= (and b!7333829 res!2963597) b!7333830))

(declare-fun b_lambda!283629 () Bool)

(assert (=> (not b_lambda!283629) (not b!7333829)))

(declare-fun m!7999896 () Bool)

(assert (=> b!7333829 m!7999896))

(declare-fun m!7999898 () Bool)

(assert (=> b!7333830 m!7999898))

(assert (=> d!2277363 d!2277415))

(assert (=> d!2277363 d!2277361))

(declare-fun d!2277417 () Bool)

(assert (=> d!2277417 (forall!17900 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)) lambda!454972)))

(assert (=> d!2277417 true))

(declare-fun _$78!912 () Unit!165089)

(assert (=> d!2277417 (= (choose!57046 (exprs!8504 ct1!256) (exprs!8504 ct2!352) lambda!454972) _$78!912)))

(declare-fun bs!1917758 () Bool)

(assert (= bs!1917758 d!2277417))

(assert (=> bs!1917758 m!7999742))

(assert (=> bs!1917758 m!7999742))

(assert (=> bs!1917758 m!7999808))

(assert (=> d!2277363 d!2277417))

(declare-fun d!2277419 () Bool)

(declare-fun res!2963598 () Bool)

(declare-fun e!4391551 () Bool)

(assert (=> d!2277419 (=> res!2963598 e!4391551)))

(assert (=> d!2277419 (= res!2963598 (is-Nil!71436 (exprs!8504 ct1!256)))))

(assert (=> d!2277419 (= (forall!17900 (exprs!8504 ct1!256) lambda!454972) e!4391551)))

(declare-fun b!7333831 () Bool)

(declare-fun e!4391552 () Bool)

(assert (=> b!7333831 (= e!4391551 e!4391552)))

(declare-fun res!2963599 () Bool)

(assert (=> b!7333831 (=> (not res!2963599) (not e!4391552))))

(assert (=> b!7333831 (= res!2963599 (dynLambda!29427 lambda!454972 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun b!7333832 () Bool)

(assert (=> b!7333832 (= e!4391552 (forall!17900 (t!385951 (exprs!8504 ct1!256)) lambda!454972))))

(assert (= (and d!2277419 (not res!2963598)) b!7333831))

(assert (= (and b!7333831 res!2963599) b!7333832))

(declare-fun b_lambda!283631 () Bool)

(assert (=> (not b_lambda!283631) (not b!7333831)))

(declare-fun m!7999900 () Bool)

(assert (=> b!7333831 m!7999900))

(declare-fun m!7999902 () Bool)

(assert (=> b!7333832 m!7999902))

(assert (=> d!2277363 d!2277419))

(declare-fun d!2277421 () Bool)

(declare-fun c!1361973 () Bool)

(assert (=> d!2277421 (= c!1361973 (is-Nil!71436 lt!2608698))))

(declare-fun e!4391555 () (Set Regex!19064))

(assert (=> d!2277421 (= (content!14991 lt!2608698) e!4391555)))

(declare-fun b!7333837 () Bool)

(assert (=> b!7333837 (= e!4391555 (as set.empty (Set Regex!19064)))))

(declare-fun b!7333838 () Bool)

(assert (=> b!7333838 (= e!4391555 (set.union (set.insert (h!77884 lt!2608698) (as set.empty (Set Regex!19064))) (content!14991 (t!385951 lt!2608698))))))

(assert (= (and d!2277421 c!1361973) b!7333837))

(assert (= (and d!2277421 (not c!1361973)) b!7333838))

(declare-fun m!7999904 () Bool)

(assert (=> b!7333838 m!7999904))

(declare-fun m!7999906 () Bool)

(assert (=> b!7333838 m!7999906))

(assert (=> d!2277361 d!2277421))

(declare-fun d!2277423 () Bool)

(declare-fun c!1361974 () Bool)

(assert (=> d!2277423 (= c!1361974 (is-Nil!71436 (exprs!8504 ct1!256)))))

(declare-fun e!4391556 () (Set Regex!19064))

(assert (=> d!2277423 (= (content!14991 (exprs!8504 ct1!256)) e!4391556)))

(declare-fun b!7333839 () Bool)

(assert (=> b!7333839 (= e!4391556 (as set.empty (Set Regex!19064)))))

(declare-fun b!7333840 () Bool)

(assert (=> b!7333840 (= e!4391556 (set.union (set.insert (h!77884 (exprs!8504 ct1!256)) (as set.empty (Set Regex!19064))) (content!14991 (t!385951 (exprs!8504 ct1!256)))))))

(assert (= (and d!2277423 c!1361974) b!7333839))

(assert (= (and d!2277423 (not c!1361974)) b!7333840))

(declare-fun m!7999908 () Bool)

(assert (=> b!7333840 m!7999908))

(declare-fun m!7999910 () Bool)

(assert (=> b!7333840 m!7999910))

(assert (=> d!2277361 d!2277423))

(declare-fun d!2277425 () Bool)

(declare-fun c!1361975 () Bool)

(assert (=> d!2277425 (= c!1361975 (is-Nil!71436 (exprs!8504 ct2!352)))))

(declare-fun e!4391557 () (Set Regex!19064))

(assert (=> d!2277425 (= (content!14991 (exprs!8504 ct2!352)) e!4391557)))

(declare-fun b!7333841 () Bool)

(assert (=> b!7333841 (= e!4391557 (as set.empty (Set Regex!19064)))))

(declare-fun b!7333842 () Bool)

(assert (=> b!7333842 (= e!4391557 (set.union (set.insert (h!77884 (exprs!8504 ct2!352)) (as set.empty (Set Regex!19064))) (content!14991 (t!385951 (exprs!8504 ct2!352)))))))

(assert (= (and d!2277425 c!1361975) b!7333841))

(assert (= (and d!2277425 (not c!1361975)) b!7333842))

(declare-fun m!7999912 () Bool)

(assert (=> b!7333842 m!7999912))

(declare-fun m!7999914 () Bool)

(assert (=> b!7333842 m!7999914))

(assert (=> d!2277361 d!2277425))

(declare-fun d!2277427 () Bool)

(declare-fun res!2963600 () Bool)

(declare-fun e!4391558 () Bool)

(assert (=> d!2277427 (=> res!2963600 e!4391558)))

(assert (=> d!2277427 (= res!2963600 (is-Nil!71436 (exprs!8504 ct2!352)))))

(assert (=> d!2277427 (= (forall!17900 (exprs!8504 ct2!352) lambda!454982) e!4391558)))

(declare-fun b!7333843 () Bool)

(declare-fun e!4391559 () Bool)

(assert (=> b!7333843 (= e!4391558 e!4391559)))

(declare-fun res!2963601 () Bool)

(assert (=> b!7333843 (=> (not res!2963601) (not e!4391559))))

(assert (=> b!7333843 (= res!2963601 (dynLambda!29427 lambda!454982 (h!77884 (exprs!8504 ct2!352))))))

(declare-fun b!7333844 () Bool)

(assert (=> b!7333844 (= e!4391559 (forall!17900 (t!385951 (exprs!8504 ct2!352)) lambda!454982))))

(assert (= (and d!2277427 (not res!2963600)) b!7333843))

(assert (= (and b!7333843 res!2963601) b!7333844))

(declare-fun b_lambda!283633 () Bool)

(assert (=> (not b_lambda!283633) (not b!7333843)))

(declare-fun m!7999916 () Bool)

(assert (=> b!7333843 m!7999916))

(declare-fun m!7999918 () Bool)

(assert (=> b!7333844 m!7999918))

(assert (=> d!2277375 d!2277427))

(declare-fun d!2277429 () Bool)

(declare-fun res!2963602 () Bool)

(declare-fun e!4391560 () Bool)

(assert (=> d!2277429 (=> res!2963602 e!4391560)))

(assert (=> d!2277429 (= res!2963602 (is-Nil!71436 (exprs!8504 (Context!16009 (tail!14745 lt!2608681)))))))

(assert (=> d!2277429 (= (forall!17900 (exprs!8504 (Context!16009 (tail!14745 lt!2608681))) lambda!454983) e!4391560)))

(declare-fun b!7333845 () Bool)

(declare-fun e!4391561 () Bool)

(assert (=> b!7333845 (= e!4391560 e!4391561)))

(declare-fun res!2963603 () Bool)

(assert (=> b!7333845 (=> (not res!2963603) (not e!4391561))))

(assert (=> b!7333845 (= res!2963603 (dynLambda!29427 lambda!454983 (h!77884 (exprs!8504 (Context!16009 (tail!14745 lt!2608681))))))))

(declare-fun b!7333846 () Bool)

(assert (=> b!7333846 (= e!4391561 (forall!17900 (t!385951 (exprs!8504 (Context!16009 (tail!14745 lt!2608681)))) lambda!454983))))

(assert (= (and d!2277429 (not res!2963602)) b!7333845))

(assert (= (and b!7333845 res!2963603) b!7333846))

(declare-fun b_lambda!283635 () Bool)

(assert (=> (not b_lambda!283635) (not b!7333845)))

(declare-fun m!7999920 () Bool)

(assert (=> b!7333845 m!7999920))

(declare-fun m!7999922 () Bool)

(assert (=> b!7333846 m!7999922))

(assert (=> d!2277377 d!2277429))

(declare-fun d!2277431 () Bool)

(assert (=> d!2277431 (= ($colon$colon!3073 (exprs!8504 (Context!16009 (tail!14745 (exprs!8504 ct1!256)))) (ite (or c!1361941 c!1361942) (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (h!77884 (exprs!8504 ct1!256)))) (Cons!71436 (ite (or c!1361941 c!1361942) (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (h!77884 (exprs!8504 ct1!256))) (exprs!8504 (Context!16009 (tail!14745 (exprs!8504 ct1!256))))))))

(assert (=> bm!668415 d!2277431))

(assert (=> b!7333704 d!2277383))

(declare-fun d!2277433 () Bool)

(declare-fun res!2963616 () Bool)

(declare-fun e!4391579 () Bool)

(assert (=> d!2277433 (=> res!2963616 e!4391579)))

(assert (=> d!2277433 (= res!2963616 (is-EmptyExpr!19064 (h!77884 (exprs!8504 ct1!256))))))

(assert (=> d!2277433 (= (nullableFct!3255 (h!77884 (exprs!8504 ct1!256))) e!4391579)))

(declare-fun b!7333861 () Bool)

(declare-fun e!4391575 () Bool)

(declare-fun call!668453 () Bool)

(assert (=> b!7333861 (= e!4391575 call!668453)))

(declare-fun b!7333862 () Bool)

(declare-fun e!4391577 () Bool)

(declare-fun e!4391576 () Bool)

(assert (=> b!7333862 (= e!4391577 e!4391576)))

(declare-fun res!2963614 () Bool)

(assert (=> b!7333862 (=> res!2963614 e!4391576)))

(assert (=> b!7333862 (= res!2963614 (is-Star!19064 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun b!7333863 () Bool)

(declare-fun e!4391578 () Bool)

(assert (=> b!7333863 (= e!4391578 e!4391575)))

(declare-fun res!2963615 () Bool)

(declare-fun call!668452 () Bool)

(assert (=> b!7333863 (= res!2963615 call!668452)))

(assert (=> b!7333863 (=> res!2963615 e!4391575)))

(declare-fun b!7333864 () Bool)

(declare-fun e!4391574 () Bool)

(assert (=> b!7333864 (= e!4391578 e!4391574)))

(declare-fun res!2963617 () Bool)

(assert (=> b!7333864 (= res!2963617 call!668453)))

(assert (=> b!7333864 (=> (not res!2963617) (not e!4391574))))

(declare-fun b!7333865 () Bool)

(assert (=> b!7333865 (= e!4391576 e!4391578)))

(declare-fun c!1361978 () Bool)

(assert (=> b!7333865 (= c!1361978 (is-Union!19064 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun bm!668447 () Bool)

(assert (=> bm!668447 (= call!668452 (nullable!8165 (ite c!1361978 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regTwo!38640 (h!77884 (exprs!8504 ct1!256))))))))

(declare-fun bm!668448 () Bool)

(assert (=> bm!668448 (= call!668453 (nullable!8165 (ite c!1361978 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256))))))))

(declare-fun b!7333866 () Bool)

(assert (=> b!7333866 (= e!4391574 call!668452)))

(declare-fun b!7333867 () Bool)

(assert (=> b!7333867 (= e!4391579 e!4391577)))

(declare-fun res!2963618 () Bool)

(assert (=> b!7333867 (=> (not res!2963618) (not e!4391577))))

(assert (=> b!7333867 (= res!2963618 (and (not (is-EmptyLang!19064 (h!77884 (exprs!8504 ct1!256)))) (not (is-ElementMatch!19064 (h!77884 (exprs!8504 ct1!256))))))))

(assert (= (and d!2277433 (not res!2963616)) b!7333867))

(assert (= (and b!7333867 res!2963618) b!7333862))

(assert (= (and b!7333862 (not res!2963614)) b!7333865))

(assert (= (and b!7333865 c!1361978) b!7333863))

(assert (= (and b!7333865 (not c!1361978)) b!7333864))

(assert (= (and b!7333863 (not res!2963615)) b!7333861))

(assert (= (and b!7333864 res!2963617) b!7333866))

(assert (= (or b!7333863 b!7333866) bm!668447))

(assert (= (or b!7333861 b!7333864) bm!668448))

(declare-fun m!7999924 () Bool)

(assert (=> bm!668447 m!7999924))

(declare-fun m!7999926 () Bool)

(assert (=> bm!668448 m!7999926))

(assert (=> d!2277383 d!2277433))

(declare-fun b!7333868 () Bool)

(declare-fun e!4391582 () (Set Context!16008))

(declare-fun e!4391581 () (Set Context!16008))

(assert (=> b!7333868 (= e!4391582 e!4391581)))

(declare-fun c!1361980 () Bool)

(assert (=> b!7333868 (= c!1361980 (is-Cons!71436 (exprs!8504 (Context!16009 (t!385951 (exprs!8504 ct1!256))))))))

(declare-fun b!7333869 () Bool)

(declare-fun call!668454 () (Set Context!16008))

(assert (=> b!7333869 (= e!4391581 call!668454)))

(declare-fun bm!668449 () Bool)

(assert (=> bm!668449 (= call!668454 (derivationStepZipperDown!2891 (h!77884 (exprs!8504 (Context!16009 (t!385951 (exprs!8504 ct1!256))))) (Context!16009 (t!385951 (exprs!8504 (Context!16009 (t!385951 (exprs!8504 ct1!256)))))) c!10305))))

(declare-fun b!7333870 () Bool)

(assert (=> b!7333870 (= e!4391582 (set.union call!668454 (derivationStepZipperUp!2744 (Context!16009 (t!385951 (exprs!8504 (Context!16009 (t!385951 (exprs!8504 ct1!256)))))) c!10305)))))

(declare-fun d!2277435 () Bool)

(declare-fun c!1361979 () Bool)

(declare-fun e!4391580 () Bool)

(assert (=> d!2277435 (= c!1361979 e!4391580)))

(declare-fun res!2963619 () Bool)

(assert (=> d!2277435 (=> (not res!2963619) (not e!4391580))))

(assert (=> d!2277435 (= res!2963619 (is-Cons!71436 (exprs!8504 (Context!16009 (t!385951 (exprs!8504 ct1!256))))))))

(assert (=> d!2277435 (= (derivationStepZipperUp!2744 (Context!16009 (t!385951 (exprs!8504 ct1!256))) c!10305) e!4391582)))

(declare-fun b!7333871 () Bool)

(assert (=> b!7333871 (= e!4391581 (as set.empty (Set Context!16008)))))

(declare-fun b!7333872 () Bool)

(assert (=> b!7333872 (= e!4391580 (nullable!8165 (h!77884 (exprs!8504 (Context!16009 (t!385951 (exprs!8504 ct1!256)))))))))

(assert (= (and d!2277435 res!2963619) b!7333872))

(assert (= (and d!2277435 c!1361979) b!7333870))

(assert (= (and d!2277435 (not c!1361979)) b!7333868))

(assert (= (and b!7333868 c!1361980) b!7333869))

(assert (= (and b!7333868 (not c!1361980)) b!7333871))

(assert (= (or b!7333870 b!7333869) bm!668449))

(declare-fun m!7999928 () Bool)

(assert (=> bm!668449 m!7999928))

(declare-fun m!7999930 () Bool)

(assert (=> b!7333870 m!7999930))

(declare-fun m!7999932 () Bool)

(assert (=> b!7333872 m!7999932))

(assert (=> b!7333702 d!2277435))

(declare-fun d!2277437 () Bool)

(declare-fun lt!2608710 () Int)

(assert (=> d!2277437 (>= lt!2608710 0)))

(declare-fun e!4391585 () Int)

(assert (=> d!2277437 (= lt!2608710 e!4391585)))

(declare-fun c!1361983 () Bool)

(assert (=> d!2277437 (= c!1361983 (is-Nil!71436 lt!2608698))))

(assert (=> d!2277437 (= (size!41970 lt!2608698) lt!2608710)))

(declare-fun b!7333877 () Bool)

(assert (=> b!7333877 (= e!4391585 0)))

(declare-fun b!7333878 () Bool)

(assert (=> b!7333878 (= e!4391585 (+ 1 (size!41970 (t!385951 lt!2608698))))))

(assert (= (and d!2277437 c!1361983) b!7333877))

(assert (= (and d!2277437 (not c!1361983)) b!7333878))

(declare-fun m!7999934 () Bool)

(assert (=> b!7333878 m!7999934))

(assert (=> b!7333688 d!2277437))

(declare-fun d!2277439 () Bool)

(declare-fun lt!2608711 () Int)

(assert (=> d!2277439 (>= lt!2608711 0)))

(declare-fun e!4391586 () Int)

(assert (=> d!2277439 (= lt!2608711 e!4391586)))

(declare-fun c!1361984 () Bool)

(assert (=> d!2277439 (= c!1361984 (is-Nil!71436 (exprs!8504 ct1!256)))))

(assert (=> d!2277439 (= (size!41970 (exprs!8504 ct1!256)) lt!2608711)))

(declare-fun b!7333879 () Bool)

(assert (=> b!7333879 (= e!4391586 0)))

(declare-fun b!7333880 () Bool)

(assert (=> b!7333880 (= e!4391586 (+ 1 (size!41970 (t!385951 (exprs!8504 ct1!256)))))))

(assert (= (and d!2277439 c!1361984) b!7333879))

(assert (= (and d!2277439 (not c!1361984)) b!7333880))

(declare-fun m!7999936 () Bool)

(assert (=> b!7333880 m!7999936))

(assert (=> b!7333688 d!2277439))

(declare-fun d!2277441 () Bool)

(declare-fun lt!2608712 () Int)

(assert (=> d!2277441 (>= lt!2608712 0)))

(declare-fun e!4391587 () Int)

(assert (=> d!2277441 (= lt!2608712 e!4391587)))

(declare-fun c!1361985 () Bool)

(assert (=> d!2277441 (= c!1361985 (is-Nil!71436 (exprs!8504 ct2!352)))))

(assert (=> d!2277441 (= (size!41970 (exprs!8504 ct2!352)) lt!2608712)))

(declare-fun b!7333881 () Bool)

(assert (=> b!7333881 (= e!4391587 0)))

(declare-fun b!7333882 () Bool)

(assert (=> b!7333882 (= e!4391587 (+ 1 (size!41970 (t!385951 (exprs!8504 ct2!352)))))))

(assert (= (and d!2277441 c!1361985) b!7333881))

(assert (= (and d!2277441 (not c!1361985)) b!7333882))

(declare-fun m!7999938 () Bool)

(assert (=> b!7333882 m!7999938))

(assert (=> b!7333688 d!2277441))

(declare-fun b!7333883 () Bool)

(declare-fun e!4391588 () (Set Context!16008))

(declare-fun call!668456 () (Set Context!16008))

(declare-fun call!668460 () (Set Context!16008))

(assert (=> b!7333883 (= e!4391588 (set.union call!668456 call!668460))))

(declare-fun b!7333884 () Bool)

(declare-fun e!4391589 () (Set Context!16008))

(assert (=> b!7333884 (= e!4391589 e!4391588)))

(declare-fun c!1361989 () Bool)

(assert (=> b!7333884 (= c!1361989 (is-Union!19064 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))))))

(declare-fun b!7333885 () Bool)

(declare-fun e!4391593 () (Set Context!16008))

(assert (=> b!7333885 (= e!4391593 (as set.empty (Set Context!16008)))))

(declare-fun bm!668450 () Bool)

(declare-fun call!668455 () List!71560)

(declare-fun call!668458 () List!71560)

(assert (=> bm!668450 (= call!668455 call!668458)))

(declare-fun b!7333886 () Bool)

(declare-fun e!4391590 () (Set Context!16008))

(declare-fun e!4391592 () (Set Context!16008))

(assert (=> b!7333886 (= e!4391590 e!4391592)))

(declare-fun c!1361987 () Bool)

(assert (=> b!7333886 (= c!1361987 (is-Concat!27909 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))))))

(declare-fun b!7333887 () Bool)

(declare-fun call!668459 () (Set Context!16008))

(assert (=> b!7333887 (= e!4391590 (set.union call!668456 call!668459))))

(declare-fun bm!668451 () Bool)

(assert (=> bm!668451 (= call!668459 call!668460)))

(declare-fun bm!668452 () Bool)

(declare-fun call!668457 () (Set Context!16008))

(assert (=> bm!668452 (= call!668457 call!668459)))

(declare-fun bm!668453 () Bool)

(declare-fun c!1361986 () Bool)

(assert (=> bm!668453 (= call!668458 ($colon$colon!3073 (exprs!8504 (ite (or c!1361944 c!1361941) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668417))) (ite (or c!1361986 c!1361987) (regTwo!38640 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))) (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256)))))))))))

(declare-fun d!2277443 () Bool)

(declare-fun c!1361990 () Bool)

(assert (=> d!2277443 (= c!1361990 (and (is-ElementMatch!19064 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))) (= (c!1361916 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))) c!10305)))))

(assert (=> d!2277443 (= (derivationStepZipperDown!2891 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256)))))) (ite (or c!1361944 c!1361941) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668417)) c!10305) e!4391589)))

(declare-fun b!7333888 () Bool)

(assert (=> b!7333888 (= e!4391592 call!668457)))

(declare-fun b!7333889 () Bool)

(assert (=> b!7333889 (= e!4391589 (set.insert (ite (or c!1361944 c!1361941) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668417)) (as set.empty (Set Context!16008))))))

(declare-fun b!7333890 () Bool)

(declare-fun c!1361988 () Bool)

(assert (=> b!7333890 (= c!1361988 (is-Star!19064 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))))))

(assert (=> b!7333890 (= e!4391592 e!4391593)))

(declare-fun bm!668454 () Bool)

(assert (=> bm!668454 (= call!668456 (derivationStepZipperDown!2891 (ite c!1361989 (regOne!38641 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))) (regOne!38640 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256)))))))) (ite c!1361989 (ite (or c!1361944 c!1361941) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668417)) (Context!16009 call!668458)) c!10305))))

(declare-fun e!4391591 () Bool)

(declare-fun b!7333891 () Bool)

(assert (=> b!7333891 (= e!4391591 (nullable!8165 (regOne!38640 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256)))))))))))

(declare-fun bm!668455 () Bool)

(assert (=> bm!668455 (= call!668460 (derivationStepZipperDown!2891 (ite c!1361989 (regTwo!38641 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))) (ite c!1361986 (regTwo!38640 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))) (ite c!1361987 (regOne!38640 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))) (reg!19393 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256)))))))))) (ite (or c!1361989 c!1361986) (ite (or c!1361944 c!1361941) (Context!16009 (tail!14745 (exprs!8504 ct1!256))) (Context!16009 call!668417)) (Context!16009 call!668455)) c!10305))))

(declare-fun b!7333892 () Bool)

(assert (=> b!7333892 (= c!1361986 e!4391591)))

(declare-fun res!2963620 () Bool)

(assert (=> b!7333892 (=> (not res!2963620) (not e!4391591))))

(assert (=> b!7333892 (= res!2963620 (is-Concat!27909 (ite c!1361944 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361941 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361942 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256))))))))))

(assert (=> b!7333892 (= e!4391588 e!4391590)))

(declare-fun b!7333893 () Bool)

(assert (=> b!7333893 (= e!4391593 call!668457)))

(assert (= (and d!2277443 c!1361990) b!7333889))

(assert (= (and d!2277443 (not c!1361990)) b!7333884))

(assert (= (and b!7333884 c!1361989) b!7333883))

(assert (= (and b!7333884 (not c!1361989)) b!7333892))

(assert (= (and b!7333892 res!2963620) b!7333891))

(assert (= (and b!7333892 c!1361986) b!7333887))

(assert (= (and b!7333892 (not c!1361986)) b!7333886))

(assert (= (and b!7333886 c!1361987) b!7333888))

(assert (= (and b!7333886 (not c!1361987)) b!7333890))

(assert (= (and b!7333890 c!1361988) b!7333893))

(assert (= (and b!7333890 (not c!1361988)) b!7333885))

(assert (= (or b!7333888 b!7333893) bm!668450))

(assert (= (or b!7333888 b!7333893) bm!668452))

(assert (= (or b!7333887 bm!668452) bm!668451))

(assert (= (or b!7333887 bm!668450) bm!668453))

(assert (= (or b!7333883 bm!668451) bm!668455))

(assert (= (or b!7333883 b!7333887) bm!668454))

(declare-fun m!7999940 () Bool)

(assert (=> bm!668453 m!7999940))

(declare-fun m!7999942 () Bool)

(assert (=> b!7333889 m!7999942))

(declare-fun m!7999944 () Bool)

(assert (=> b!7333891 m!7999944))

(declare-fun m!7999946 () Bool)

(assert (=> bm!668455 m!7999946))

(declare-fun m!7999948 () Bool)

(assert (=> bm!668454 m!7999948))

(assert (=> bm!668417 d!2277443))

(declare-fun b!7333894 () Bool)

(declare-fun e!4391594 () (Set Context!16008))

(declare-fun call!668462 () (Set Context!16008))

(declare-fun call!668466 () (Set Context!16008))

(assert (=> b!7333894 (= e!4391594 (set.union call!668462 call!668466))))

(declare-fun b!7333895 () Bool)

(declare-fun e!4391595 () (Set Context!16008))

(assert (=> b!7333895 (= e!4391595 e!4391594)))

(declare-fun c!1361994 () Bool)

(assert (=> b!7333895 (= c!1361994 (is-Union!19064 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun b!7333896 () Bool)

(declare-fun e!4391599 () (Set Context!16008))

(assert (=> b!7333896 (= e!4391599 (as set.empty (Set Context!16008)))))

(declare-fun bm!668456 () Bool)

(declare-fun call!668461 () List!71560)

(declare-fun call!668464 () List!71560)

(assert (=> bm!668456 (= call!668461 call!668464)))

(declare-fun b!7333897 () Bool)

(declare-fun e!4391596 () (Set Context!16008))

(declare-fun e!4391598 () (Set Context!16008))

(assert (=> b!7333897 (= e!4391596 e!4391598)))

(declare-fun c!1361992 () Bool)

(assert (=> b!7333897 (= c!1361992 (is-Concat!27909 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun b!7333898 () Bool)

(declare-fun call!668465 () (Set Context!16008))

(assert (=> b!7333898 (= e!4391596 (set.union call!668462 call!668465))))

(declare-fun bm!668457 () Bool)

(assert (=> bm!668457 (= call!668465 call!668466)))

(declare-fun bm!668458 () Bool)

(declare-fun call!668463 () (Set Context!16008))

(assert (=> bm!668458 (= call!668463 call!668465)))

(declare-fun bm!668459 () Bool)

(declare-fun c!1361991 () Bool)

(assert (=> bm!668459 (= call!668464 ($colon$colon!3073 (exprs!8504 (Context!16009 (t!385951 (exprs!8504 ct1!256)))) (ite (or c!1361991 c!1361992) (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (h!77884 (exprs!8504 ct1!256)))))))

(declare-fun d!2277445 () Bool)

(declare-fun c!1361995 () Bool)

(assert (=> d!2277445 (= c!1361995 (and (is-ElementMatch!19064 (h!77884 (exprs!8504 ct1!256))) (= (c!1361916 (h!77884 (exprs!8504 ct1!256))) c!10305)))))

(assert (=> d!2277445 (= (derivationStepZipperDown!2891 (h!77884 (exprs!8504 ct1!256)) (Context!16009 (t!385951 (exprs!8504 ct1!256))) c!10305) e!4391595)))

(declare-fun b!7333899 () Bool)

(assert (=> b!7333899 (= e!4391598 call!668463)))

(declare-fun b!7333900 () Bool)

(assert (=> b!7333900 (= e!4391595 (set.insert (Context!16009 (t!385951 (exprs!8504 ct1!256))) (as set.empty (Set Context!16008))))))

(declare-fun b!7333901 () Bool)

(declare-fun c!1361993 () Bool)

(assert (=> b!7333901 (= c!1361993 (is-Star!19064 (h!77884 (exprs!8504 ct1!256))))))

(assert (=> b!7333901 (= e!4391598 e!4391599)))

(declare-fun bm!668460 () Bool)

(assert (=> bm!668460 (= call!668462 (derivationStepZipperDown!2891 (ite c!1361994 (regOne!38641 (h!77884 (exprs!8504 ct1!256))) (regOne!38640 (h!77884 (exprs!8504 ct1!256)))) (ite c!1361994 (Context!16009 (t!385951 (exprs!8504 ct1!256))) (Context!16009 call!668464)) c!10305))))

(declare-fun b!7333902 () Bool)

(declare-fun e!4391597 () Bool)

(assert (=> b!7333902 (= e!4391597 (nullable!8165 (regOne!38640 (h!77884 (exprs!8504 ct1!256)))))))

(declare-fun bm!668461 () Bool)

(assert (=> bm!668461 (= call!668466 (derivationStepZipperDown!2891 (ite c!1361994 (regTwo!38641 (h!77884 (exprs!8504 ct1!256))) (ite c!1361991 (regTwo!38640 (h!77884 (exprs!8504 ct1!256))) (ite c!1361992 (regOne!38640 (h!77884 (exprs!8504 ct1!256))) (reg!19393 (h!77884 (exprs!8504 ct1!256)))))) (ite (or c!1361994 c!1361991) (Context!16009 (t!385951 (exprs!8504 ct1!256))) (Context!16009 call!668461)) c!10305))))

(declare-fun b!7333903 () Bool)

(assert (=> b!7333903 (= c!1361991 e!4391597)))

(declare-fun res!2963621 () Bool)

(assert (=> b!7333903 (=> (not res!2963621) (not e!4391597))))

(assert (=> b!7333903 (= res!2963621 (is-Concat!27909 (h!77884 (exprs!8504 ct1!256))))))

(assert (=> b!7333903 (= e!4391594 e!4391596)))

(declare-fun b!7333904 () Bool)

(assert (=> b!7333904 (= e!4391599 call!668463)))

(assert (= (and d!2277445 c!1361995) b!7333900))

(assert (= (and d!2277445 (not c!1361995)) b!7333895))

(assert (= (and b!7333895 c!1361994) b!7333894))

(assert (= (and b!7333895 (not c!1361994)) b!7333903))

(assert (= (and b!7333903 res!2963621) b!7333902))

(assert (= (and b!7333903 c!1361991) b!7333898))

(assert (= (and b!7333903 (not c!1361991)) b!7333897))

(assert (= (and b!7333897 c!1361992) b!7333899))

(assert (= (and b!7333897 (not c!1361992)) b!7333901))

(assert (= (and b!7333901 c!1361993) b!7333904))

(assert (= (and b!7333901 (not c!1361993)) b!7333896))

(assert (= (or b!7333899 b!7333904) bm!668456))

(assert (= (or b!7333899 b!7333904) bm!668458))

(assert (= (or b!7333898 bm!668458) bm!668457))

(assert (= (or b!7333898 bm!668456) bm!668459))

(assert (= (or b!7333894 bm!668457) bm!668461))

(assert (= (or b!7333894 b!7333898) bm!668460))

(declare-fun m!7999950 () Bool)

(assert (=> bm!668459 m!7999950))

(declare-fun m!7999952 () Bool)

(assert (=> b!7333900 m!7999952))

(assert (=> b!7333902 m!7999834))

(declare-fun m!7999954 () Bool)

(assert (=> bm!668461 m!7999954))

(declare-fun m!7999956 () Bool)

(assert (=> bm!668460 m!7999956))

(assert (=> bm!668397 d!2277445))

(declare-fun b!7333907 () Bool)

(declare-fun res!2963623 () Bool)

(declare-fun e!4391600 () Bool)

(assert (=> b!7333907 (=> (not res!2963623) (not e!4391600))))

(declare-fun lt!2608713 () List!71560)

(assert (=> b!7333907 (= res!2963623 (= (size!41970 lt!2608713) (+ (size!41970 (t!385951 (exprs!8504 ct1!256))) (size!41970 (exprs!8504 ct2!352)))))))

(declare-fun d!2277447 () Bool)

(assert (=> d!2277447 e!4391600))

(declare-fun res!2963622 () Bool)

(assert (=> d!2277447 (=> (not res!2963622) (not e!4391600))))

(assert (=> d!2277447 (= res!2963622 (= (content!14991 lt!2608713) (set.union (content!14991 (t!385951 (exprs!8504 ct1!256))) (content!14991 (exprs!8504 ct2!352)))))))

(declare-fun e!4391601 () List!71560)

(assert (=> d!2277447 (= lt!2608713 e!4391601)))

(declare-fun c!1361996 () Bool)

(assert (=> d!2277447 (= c!1361996 (is-Nil!71436 (t!385951 (exprs!8504 ct1!256))))))

(assert (=> d!2277447 (= (++!16886 (t!385951 (exprs!8504 ct1!256)) (exprs!8504 ct2!352)) lt!2608713)))

(declare-fun b!7333906 () Bool)

(assert (=> b!7333906 (= e!4391601 (Cons!71436 (h!77884 (t!385951 (exprs!8504 ct1!256))) (++!16886 (t!385951 (t!385951 (exprs!8504 ct1!256))) (exprs!8504 ct2!352))))))

(declare-fun b!7333908 () Bool)

(assert (=> b!7333908 (= e!4391600 (or (not (= (exprs!8504 ct2!352) Nil!71436)) (= lt!2608713 (t!385951 (exprs!8504 ct1!256)))))))

(declare-fun b!7333905 () Bool)

(assert (=> b!7333905 (= e!4391601 (exprs!8504 ct2!352))))

(assert (= (and d!2277447 c!1361996) b!7333905))

(assert (= (and d!2277447 (not c!1361996)) b!7333906))

(assert (= (and d!2277447 res!2963622) b!7333907))

(assert (= (and b!7333907 res!2963623) b!7333908))

(declare-fun m!7999958 () Bool)

(assert (=> b!7333907 m!7999958))

(assert (=> b!7333907 m!7999936))

(assert (=> b!7333907 m!7999798))

(declare-fun m!7999960 () Bool)

(assert (=> d!2277447 m!7999960))

(assert (=> d!2277447 m!7999910))

(assert (=> d!2277447 m!7999804))

(declare-fun m!7999962 () Bool)

(assert (=> b!7333906 m!7999962))

(assert (=> b!7333687 d!2277447))

(declare-fun d!2277449 () Bool)

(declare-fun res!2963624 () Bool)

(declare-fun e!4391602 () Bool)

(assert (=> d!2277449 (=> res!2963624 e!4391602)))

(assert (=> d!2277449 (= res!2963624 (is-Nil!71436 (exprs!8504 cWitness!35)))))

(assert (=> d!2277449 (= (forall!17900 (exprs!8504 cWitness!35) lambda!454980) e!4391602)))

(declare-fun b!7333909 () Bool)

(declare-fun e!4391603 () Bool)

(assert (=> b!7333909 (= e!4391602 e!4391603)))

(declare-fun res!2963625 () Bool)

(assert (=> b!7333909 (=> (not res!2963625) (not e!4391603))))

(assert (=> b!7333909 (= res!2963625 (dynLambda!29427 lambda!454980 (h!77884 (exprs!8504 cWitness!35))))))

(declare-fun b!7333910 () Bool)

(assert (=> b!7333910 (= e!4391603 (forall!17900 (t!385951 (exprs!8504 cWitness!35)) lambda!454980))))

(assert (= (and d!2277449 (not res!2963624)) b!7333909))

(assert (= (and b!7333909 res!2963625) b!7333910))

(declare-fun b_lambda!283637 () Bool)

(assert (=> (not b_lambda!283637) (not b!7333909)))

(declare-fun m!7999964 () Bool)

(assert (=> b!7333909 m!7999964))

(declare-fun m!7999966 () Bool)

(assert (=> b!7333910 m!7999966))

(assert (=> d!2277371 d!2277449))

(declare-fun d!2277451 () Bool)

(assert (=> d!2277451 (= (nullable!8165 (regOne!38640 (h!77884 (exprs!8504 ct1!256)))) (nullableFct!3255 (regOne!38640 (h!77884 (exprs!8504 ct1!256)))))))

(declare-fun bs!1917759 () Bool)

(assert (= bs!1917759 d!2277451))

(declare-fun m!7999968 () Bool)

(assert (=> bs!1917759 m!7999968))

(assert (=> b!7333745 d!2277451))

(declare-fun b!7333921 () Bool)

(declare-fun e!4391606 () Bool)

(assert (=> b!7333921 (= e!4391606 tp_is_empty!48373)))

(assert (=> b!7333759 (= tp!2081952 e!4391606)))

(declare-fun b!7333923 () Bool)

(declare-fun tp!2081974 () Bool)

(assert (=> b!7333923 (= e!4391606 tp!2081974)))

(declare-fun b!7333924 () Bool)

(declare-fun tp!2081977 () Bool)

(declare-fun tp!2081975 () Bool)

(assert (=> b!7333924 (= e!4391606 (and tp!2081977 tp!2081975))))

(declare-fun b!7333922 () Bool)

(declare-fun tp!2081978 () Bool)

(declare-fun tp!2081976 () Bool)

(assert (=> b!7333922 (= e!4391606 (and tp!2081978 tp!2081976))))

(assert (= (and b!7333759 (is-ElementMatch!19064 (h!77884 (exprs!8504 ct1!256)))) b!7333921))

(assert (= (and b!7333759 (is-Concat!27909 (h!77884 (exprs!8504 ct1!256)))) b!7333922))

(assert (= (and b!7333759 (is-Star!19064 (h!77884 (exprs!8504 ct1!256)))) b!7333923))

(assert (= (and b!7333759 (is-Union!19064 (h!77884 (exprs!8504 ct1!256)))) b!7333924))

(declare-fun b!7333925 () Bool)

(declare-fun e!4391607 () Bool)

(declare-fun tp!2081979 () Bool)

(declare-fun tp!2081980 () Bool)

(assert (=> b!7333925 (= e!4391607 (and tp!2081979 tp!2081980))))

(assert (=> b!7333759 (= tp!2081953 e!4391607)))

(assert (= (and b!7333759 (is-Cons!71436 (t!385951 (exprs!8504 ct1!256)))) b!7333925))

(declare-fun b!7333926 () Bool)

(declare-fun e!4391608 () Bool)

(assert (=> b!7333926 (= e!4391608 tp_is_empty!48373)))

(assert (=> b!7333757 (= tp!2081948 e!4391608)))

(declare-fun b!7333928 () Bool)

(declare-fun tp!2081981 () Bool)

(assert (=> b!7333928 (= e!4391608 tp!2081981)))

(declare-fun b!7333929 () Bool)

(declare-fun tp!2081984 () Bool)

(declare-fun tp!2081982 () Bool)

(assert (=> b!7333929 (= e!4391608 (and tp!2081984 tp!2081982))))

(declare-fun b!7333927 () Bool)

(declare-fun tp!2081985 () Bool)

(declare-fun tp!2081983 () Bool)

(assert (=> b!7333927 (= e!4391608 (and tp!2081985 tp!2081983))))

(assert (= (and b!7333757 (is-ElementMatch!19064 (h!77884 (exprs!8504 ct2!352)))) b!7333926))

(assert (= (and b!7333757 (is-Concat!27909 (h!77884 (exprs!8504 ct2!352)))) b!7333927))

(assert (= (and b!7333757 (is-Star!19064 (h!77884 (exprs!8504 ct2!352)))) b!7333928))

(assert (= (and b!7333757 (is-Union!19064 (h!77884 (exprs!8504 ct2!352)))) b!7333929))

(declare-fun b!7333930 () Bool)

(declare-fun e!4391609 () Bool)

(declare-fun tp!2081986 () Bool)

(declare-fun tp!2081987 () Bool)

(assert (=> b!7333930 (= e!4391609 (and tp!2081986 tp!2081987))))

(assert (=> b!7333757 (= tp!2081949 e!4391609)))

(assert (= (and b!7333757 (is-Cons!71436 (t!385951 (exprs!8504 ct2!352)))) b!7333930))

(declare-fun b!7333931 () Bool)

(declare-fun e!4391610 () Bool)

(assert (=> b!7333931 (= e!4391610 tp_is_empty!48373)))

(assert (=> b!7333758 (= tp!2081950 e!4391610)))

(declare-fun b!7333933 () Bool)

(declare-fun tp!2081988 () Bool)

(assert (=> b!7333933 (= e!4391610 tp!2081988)))

(declare-fun b!7333934 () Bool)

(declare-fun tp!2081991 () Bool)

(declare-fun tp!2081989 () Bool)

(assert (=> b!7333934 (= e!4391610 (and tp!2081991 tp!2081989))))

(declare-fun b!7333932 () Bool)

(declare-fun tp!2081992 () Bool)

(declare-fun tp!2081990 () Bool)

(assert (=> b!7333932 (= e!4391610 (and tp!2081992 tp!2081990))))

(assert (= (and b!7333758 (is-ElementMatch!19064 (h!77884 (exprs!8504 cWitness!35)))) b!7333931))

(assert (= (and b!7333758 (is-Concat!27909 (h!77884 (exprs!8504 cWitness!35)))) b!7333932))

(assert (= (and b!7333758 (is-Star!19064 (h!77884 (exprs!8504 cWitness!35)))) b!7333933))

(assert (= (and b!7333758 (is-Union!19064 (h!77884 (exprs!8504 cWitness!35)))) b!7333934))

(declare-fun b!7333935 () Bool)

(declare-fun e!4391611 () Bool)

(declare-fun tp!2081993 () Bool)

(declare-fun tp!2081994 () Bool)

(assert (=> b!7333935 (= e!4391611 (and tp!2081993 tp!2081994))))

(assert (=> b!7333758 (= tp!2081951 e!4391611)))

(assert (= (and b!7333758 (is-Cons!71436 (t!385951 (exprs!8504 cWitness!35)))) b!7333935))

(declare-fun b_lambda!283639 () Bool)

(assert (= b_lambda!283633 (or d!2277375 b_lambda!283639)))

(declare-fun bs!1917760 () Bool)

(declare-fun d!2277453 () Bool)

(assert (= bs!1917760 (and d!2277453 d!2277375)))

(declare-fun validRegex!9664 (Regex!19064) Bool)

(assert (=> bs!1917760 (= (dynLambda!29427 lambda!454982 (h!77884 (exprs!8504 ct2!352))) (validRegex!9664 (h!77884 (exprs!8504 ct2!352))))))

(declare-fun m!7999970 () Bool)

(assert (=> bs!1917760 m!7999970))

(assert (=> b!7333843 d!2277453))

(declare-fun b_lambda!283641 () Bool)

(assert (= b_lambda!283631 (or b!7333649 b_lambda!283641)))

(declare-fun bs!1917761 () Bool)

(declare-fun d!2277455 () Bool)

(assert (= bs!1917761 (and d!2277455 b!7333649)))

(assert (=> bs!1917761 (= (dynLambda!29427 lambda!454972 (h!77884 (exprs!8504 ct1!256))) (validRegex!9664 (h!77884 (exprs!8504 ct1!256))))))

(declare-fun m!7999972 () Bool)

(assert (=> bs!1917761 m!7999972))

(assert (=> b!7333831 d!2277455))

(declare-fun b_lambda!283643 () Bool)

(assert (= b_lambda!283627 (or d!2277373 b_lambda!283643)))

(declare-fun bs!1917762 () Bool)

(declare-fun d!2277457 () Bool)

(assert (= bs!1917762 (and d!2277457 d!2277373)))

(assert (=> bs!1917762 (= (dynLambda!29427 lambda!454981 (h!77884 (exprs!8504 ct1!256))) (validRegex!9664 (h!77884 (exprs!8504 ct1!256))))))

(assert (=> bs!1917762 m!7999972))

(assert (=> b!7333816 d!2277457))

(declare-fun b_lambda!283645 () Bool)

(assert (= b_lambda!283629 (or b!7333649 b_lambda!283645)))

(declare-fun bs!1917763 () Bool)

(declare-fun d!2277459 () Bool)

(assert (= bs!1917763 (and d!2277459 b!7333649)))

(assert (=> bs!1917763 (= (dynLambda!29427 lambda!454972 (h!77884 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)))) (validRegex!9664 (h!77884 (++!16886 (exprs!8504 ct1!256) (exprs!8504 ct2!352)))))))

(declare-fun m!7999974 () Bool)

(assert (=> bs!1917763 m!7999974))

(assert (=> b!7333829 d!2277459))

(declare-fun b_lambda!283647 () Bool)

(assert (= b_lambda!283635 (or d!2277377 b_lambda!283647)))

(declare-fun bs!1917764 () Bool)

(declare-fun d!2277461 () Bool)

(assert (= bs!1917764 (and d!2277461 d!2277377)))

(assert (=> bs!1917764 (= (dynLambda!29427 lambda!454983 (h!77884 (exprs!8504 (Context!16009 (tail!14745 lt!2608681))))) (validRegex!9664 (h!77884 (exprs!8504 (Context!16009 (tail!14745 lt!2608681))))))))

(declare-fun m!7999976 () Bool)

(assert (=> bs!1917764 m!7999976))

(assert (=> b!7333845 d!2277461))

(declare-fun b_lambda!283649 () Bool)

(assert (= b_lambda!283637 (or d!2277371 b_lambda!283649)))

(declare-fun bs!1917765 () Bool)

(declare-fun d!2277463 () Bool)

(assert (= bs!1917765 (and d!2277463 d!2277371)))

(assert (=> bs!1917765 (= (dynLambda!29427 lambda!454980 (h!77884 (exprs!8504 cWitness!35))) (validRegex!9664 (h!77884 (exprs!8504 cWitness!35))))))

(declare-fun m!7999978 () Bool)

(assert (=> bs!1917765 m!7999978))

(assert (=> b!7333909 d!2277463))

(push 1)

(assert (not b!7333817))

(assert (not b!7333832))

(assert (not bm!668449))

(assert (not b!7333872))

(assert (not b!7333924))

(assert (not b!7333882))

(assert (not b!7333933))

(assert (not bm!668455))

(assert (not b!7333907))

(assert (not bs!1917761))

(assert (not bs!1917762))

(assert (not b!7333910))

(assert (not b!7333844))

(assert (not b!7333840))

(assert (not bm!668460))

(assert (not b!7333846))

(assert (not bs!1917765))

(assert (not bs!1917764))

(assert (not b!7333925))

(assert (not bm!668454))

(assert (not b!7333928))

(assert (not bm!668461))

(assert (not b!7333923))

(assert (not b!7333870))

(assert (not b!7333826))

(assert tp_is_empty!48373)

(assert (not b!7333902))

(assert (not bm!668459))

(assert (not b!7333927))

(assert (not b!7333830))

(assert (not bm!668448))

(assert (not b_lambda!283645))

(assert (not b!7333838))

(assert (not bm!668440))

(assert (not d!2277447))

(assert (not b_lambda!283643))

(assert (not bm!668453))

(assert (not b!7333929))

(assert (not b!7333922))

(assert (not bm!668447))

(assert (not b!7333930))

(assert (not b!7333878))

(assert (not b!7333842))

(assert (not b!7333935))

(assert (not bm!668441))

(assert (not bs!1917760))

(assert (not b_lambda!283647))

(assert (not b!7333906))

(assert (not b!7333880))

(assert (not b_lambda!283639))

(assert (not bs!1917763))

(assert (not d!2277417))

(assert (not d!2277451))

(assert (not b!7333891))

(assert (not b_lambda!283649))

(assert (not b!7333934))

(assert (not b_lambda!283641))

(assert (not b!7333932))

(assert (not bm!668442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

