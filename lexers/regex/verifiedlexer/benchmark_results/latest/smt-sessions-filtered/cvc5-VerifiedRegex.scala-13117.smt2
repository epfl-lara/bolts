; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717134 () Bool)

(assert start!717134)

(declare-fun b!7342640 () Bool)

(declare-fun res!2966108 () Bool)

(declare-fun e!4396728 () Bool)

(assert (=> b!7342640 (=> (not res!2966108) (not e!4396728))))

(declare-datatypes ((C!38518 0))(
  ( (C!38519 (val!29619 Int)) )
))
(declare-datatypes ((Regex!19122 0))(
  ( (ElementMatch!19122 (c!1363886 C!38518)) (Concat!27967 (regOne!38756 Regex!19122) (regTwo!38756 Regex!19122)) (EmptyExpr!19122) (Star!19122 (reg!19451 Regex!19122)) (EmptyLang!19122) (Union!19122 (regOne!38757 Regex!19122) (regTwo!38757 Regex!19122)) )
))
(declare-datatypes ((List!71618 0))(
  ( (Nil!71494) (Cons!71494 (h!77942 Regex!19122) (t!386013 List!71618)) )
))
(declare-datatypes ((Context!16124 0))(
  ( (Context!16125 (exprs!8562 List!71618)) )
))
(declare-fun cWitness!61 () Context!16124)

(declare-fun lt!2610425 () (Set Context!16124))

(assert (=> b!7342640 (= res!2966108 (not (set.member cWitness!61 lt!2610425)))))

(declare-fun b!7342641 () Bool)

(declare-fun e!4396724 () Bool)

(declare-fun tp_is_empty!48489 () Bool)

(assert (=> b!7342641 (= e!4396724 tp_is_empty!48489)))

(declare-fun b!7342642 () Bool)

(declare-fun tp!2085088 () Bool)

(declare-fun tp!2085095 () Bool)

(assert (=> b!7342642 (= e!4396724 (and tp!2085088 tp!2085095))))

(declare-fun b!7342643 () Bool)

(declare-fun e!4396726 () Bool)

(declare-fun ct2!378 () Context!16124)

(declare-fun lambda!455778 () Int)

(declare-fun forall!17952 (List!71618 Int) Bool)

(assert (=> b!7342643 (= e!4396726 (forall!17952 (exprs!8562 ct2!378) lambda!455778))))

(declare-fun b!7342644 () Bool)

(declare-fun tp!2085091 () Bool)

(declare-fun tp!2085090 () Bool)

(assert (=> b!7342644 (= e!4396724 (and tp!2085091 tp!2085090))))

(declare-fun b!7342645 () Bool)

(declare-fun e!4396729 () Bool)

(assert (=> b!7342645 (= e!4396729 e!4396728)))

(declare-fun res!2966106 () Bool)

(assert (=> b!7342645 (=> (not res!2966106) (not e!4396728))))

(declare-fun r1!2370 () Regex!19122)

(declare-fun c!10362 () C!38518)

(declare-fun lt!2610421 () (Set Context!16124))

(declare-fun ct1!282 () Context!16124)

(declare-fun derivationStepZipperDown!2948 (Regex!19122 Context!16124 C!38518) (Set Context!16124))

(assert (=> b!7342645 (= res!2966106 (= lt!2610421 (set.union lt!2610425 (derivationStepZipperDown!2948 (regTwo!38757 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7342645 (= lt!2610425 (derivationStepZipperDown!2948 (regOne!38757 r1!2370) ct1!282 c!10362))))

(declare-fun b!7342646 () Bool)

(declare-fun e!4396725 () Bool)

(declare-fun tp!2085092 () Bool)

(assert (=> b!7342646 (= e!4396725 tp!2085092)))

(declare-fun b!7342647 () Bool)

(declare-fun tp!2085089 () Bool)

(assert (=> b!7342647 (= e!4396724 tp!2085089)))

(declare-fun b!7342648 () Bool)

(declare-fun e!4396730 () Bool)

(declare-fun tp!2085094 () Bool)

(assert (=> b!7342648 (= e!4396730 tp!2085094)))

(declare-fun b!7342649 () Bool)

(declare-fun e!4396731 () Bool)

(assert (=> b!7342649 (= e!4396731 e!4396729)))

(declare-fun res!2966109 () Bool)

(assert (=> b!7342649 (=> (not res!2966109) (not e!4396729))))

(assert (=> b!7342649 (= res!2966109 (and (or (not (is-ElementMatch!19122 r1!2370)) (not (= c!10362 (c!1363886 r1!2370)))) (is-Union!19122 r1!2370)))))

(declare-fun lt!2610423 () (Set Context!16124))

(declare-fun lt!2610427 () Context!16124)

(assert (=> b!7342649 (= lt!2610423 (derivationStepZipperDown!2948 r1!2370 lt!2610427 c!10362))))

(declare-fun ++!16940 (List!71618 List!71618) List!71618)

(assert (=> b!7342649 (= lt!2610427 (Context!16125 (++!16940 (exprs!8562 ct1!282) (exprs!8562 ct2!378))))))

(declare-datatypes ((Unit!165197 0))(
  ( (Unit!165198) )
))
(declare-fun lt!2610422 () Unit!165197)

(declare-fun lemmaConcatPreservesForall!1797 (List!71618 List!71618 Int) Unit!165197)

(assert (=> b!7342649 (= lt!2610422 (lemmaConcatPreservesForall!1797 (exprs!8562 ct1!282) (exprs!8562 ct2!378) lambda!455778))))

(declare-fun b!7342650 () Bool)

(declare-fun e!4396723 () Bool)

(declare-fun tp!2085093 () Bool)

(assert (=> b!7342650 (= e!4396723 tp!2085093)))

(declare-fun res!2966105 () Bool)

(declare-fun e!4396727 () Bool)

(assert (=> start!717134 (=> (not res!2966105) (not e!4396727))))

(declare-fun validRegex!9718 (Regex!19122) Bool)

(assert (=> start!717134 (= res!2966105 (validRegex!9718 r1!2370))))

(assert (=> start!717134 e!4396727))

(assert (=> start!717134 tp_is_empty!48489))

(declare-fun inv!91146 (Context!16124) Bool)

(assert (=> start!717134 (and (inv!91146 cWitness!61) e!4396723)))

(assert (=> start!717134 (and (inv!91146 ct1!282) e!4396725)))

(assert (=> start!717134 e!4396724))

(assert (=> start!717134 (and (inv!91146 ct2!378) e!4396730)))

(declare-fun b!7342651 () Bool)

(assert (=> b!7342651 (= e!4396727 e!4396731)))

(declare-fun res!2966107 () Bool)

(assert (=> b!7342651 (=> (not res!2966107) (not e!4396731))))

(assert (=> b!7342651 (= res!2966107 (set.member cWitness!61 lt!2610421))))

(assert (=> b!7342651 (= lt!2610421 (derivationStepZipperDown!2948 r1!2370 ct1!282 c!10362))))

(declare-fun b!7342652 () Bool)

(assert (=> b!7342652 (= e!4396728 (not e!4396726))))

(declare-fun res!2966110 () Bool)

(assert (=> b!7342652 (=> res!2966110 e!4396726)))

(assert (=> b!7342652 (= res!2966110 (not (forall!17952 (exprs!8562 cWitness!61) lambda!455778)))))

(assert (=> b!7342652 (set.member (Context!16125 (++!16940 (exprs!8562 cWitness!61) (exprs!8562 ct2!378))) (derivationStepZipperDown!2948 (regTwo!38757 r1!2370) lt!2610427 c!10362))))

(declare-fun lt!2610424 () Unit!165197)

(assert (=> b!7342652 (= lt!2610424 (lemmaConcatPreservesForall!1797 (exprs!8562 ct1!282) (exprs!8562 ct2!378) lambda!455778))))

(declare-fun lt!2610426 () Unit!165197)

(assert (=> b!7342652 (= lt!2610426 (lemmaConcatPreservesForall!1797 (exprs!8562 cWitness!61) (exprs!8562 ct2!378) lambda!455778))))

(declare-fun lt!2610420 () Unit!165197)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!55 (Regex!19122 Context!16124 Context!16124 Context!16124 C!38518) Unit!165197)

(assert (=> b!7342652 (= lt!2610420 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!55 (regTwo!38757 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (= (and start!717134 res!2966105) b!7342651))

(assert (= (and b!7342651 res!2966107) b!7342649))

(assert (= (and b!7342649 res!2966109) b!7342645))

(assert (= (and b!7342645 res!2966106) b!7342640))

(assert (= (and b!7342640 res!2966108) b!7342652))

(assert (= (and b!7342652 (not res!2966110)) b!7342643))

(assert (= start!717134 b!7342650))

(assert (= start!717134 b!7342646))

(assert (= (and start!717134 (is-ElementMatch!19122 r1!2370)) b!7342641))

(assert (= (and start!717134 (is-Concat!27967 r1!2370)) b!7342644))

(assert (= (and start!717134 (is-Star!19122 r1!2370)) b!7342647))

(assert (= (and start!717134 (is-Union!19122 r1!2370)) b!7342642))

(assert (= start!717134 b!7342648))

(declare-fun m!8005914 () Bool)

(assert (=> b!7342651 m!8005914))

(declare-fun m!8005916 () Bool)

(assert (=> b!7342651 m!8005916))

(declare-fun m!8005918 () Bool)

(assert (=> b!7342645 m!8005918))

(declare-fun m!8005920 () Bool)

(assert (=> b!7342645 m!8005920))

(declare-fun m!8005922 () Bool)

(assert (=> start!717134 m!8005922))

(declare-fun m!8005924 () Bool)

(assert (=> start!717134 m!8005924))

(declare-fun m!8005926 () Bool)

(assert (=> start!717134 m!8005926))

(declare-fun m!8005928 () Bool)

(assert (=> start!717134 m!8005928))

(declare-fun m!8005930 () Bool)

(assert (=> b!7342643 m!8005930))

(declare-fun m!8005932 () Bool)

(assert (=> b!7342649 m!8005932))

(declare-fun m!8005934 () Bool)

(assert (=> b!7342649 m!8005934))

(declare-fun m!8005936 () Bool)

(assert (=> b!7342649 m!8005936))

(declare-fun m!8005938 () Bool)

(assert (=> b!7342640 m!8005938))

(declare-fun m!8005940 () Bool)

(assert (=> b!7342652 m!8005940))

(declare-fun m!8005942 () Bool)

(assert (=> b!7342652 m!8005942))

(declare-fun m!8005944 () Bool)

(assert (=> b!7342652 m!8005944))

(declare-fun m!8005946 () Bool)

(assert (=> b!7342652 m!8005946))

(declare-fun m!8005948 () Bool)

(assert (=> b!7342652 m!8005948))

(declare-fun m!8005950 () Bool)

(assert (=> b!7342652 m!8005950))

(assert (=> b!7342652 m!8005936))

(push 1)

(assert (not b!7342651))

(assert (not b!7342649))

(assert (not b!7342652))

(assert (not b!7342644))

(assert (not b!7342646))

(assert (not b!7342647))

(assert (not b!7342648))

(assert (not b!7342642))

(assert (not start!717134))

(assert (not b!7342650))

(assert (not b!7342645))

(assert (not b!7342643))

(assert tp_is_empty!48489)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2279056 () Bool)

(declare-fun res!2966133 () Bool)

(declare-fun e!4396763 () Bool)

(assert (=> d!2279056 (=> res!2966133 e!4396763)))

(assert (=> d!2279056 (= res!2966133 (is-Nil!71494 (exprs!8562 ct2!378)))))

(assert (=> d!2279056 (= (forall!17952 (exprs!8562 ct2!378) lambda!455778) e!4396763)))

(declare-fun b!7342696 () Bool)

(declare-fun e!4396764 () Bool)

(assert (=> b!7342696 (= e!4396763 e!4396764)))

(declare-fun res!2966134 () Bool)

(assert (=> b!7342696 (=> (not res!2966134) (not e!4396764))))

(declare-fun dynLambda!29459 (Int Regex!19122) Bool)

(assert (=> b!7342696 (= res!2966134 (dynLambda!29459 lambda!455778 (h!77942 (exprs!8562 ct2!378))))))

(declare-fun b!7342697 () Bool)

(assert (=> b!7342697 (= e!4396764 (forall!17952 (t!386013 (exprs!8562 ct2!378)) lambda!455778))))

(assert (= (and d!2279056 (not res!2966133)) b!7342696))

(assert (= (and b!7342696 res!2966134) b!7342697))

(declare-fun b_lambda!283915 () Bool)

(assert (=> (not b_lambda!283915) (not b!7342696)))

(declare-fun m!8005990 () Bool)

(assert (=> b!7342696 m!8005990))

(declare-fun m!8005992 () Bool)

(assert (=> b!7342697 m!8005992))

(assert (=> b!7342643 d!2279056))

(declare-fun b!7342742 () Bool)

(declare-fun c!1363911 () Bool)

(declare-fun e!4396791 () Bool)

(assert (=> b!7342742 (= c!1363911 e!4396791)))

(declare-fun res!2966139 () Bool)

(assert (=> b!7342742 (=> (not res!2966139) (not e!4396791))))

(assert (=> b!7342742 (= res!2966139 (is-Concat!27967 r1!2370))))

(declare-fun e!4396794 () (Set Context!16124))

(declare-fun e!4396792 () (Set Context!16124))

(assert (=> b!7342742 (= e!4396794 e!4396792)))

(declare-fun b!7342743 () Bool)

(declare-fun e!4396790 () (Set Context!16124))

(declare-fun call!670437 () (Set Context!16124))

(assert (=> b!7342743 (= e!4396790 call!670437)))

(declare-fun b!7342744 () Bool)

(declare-fun c!1363910 () Bool)

(assert (=> b!7342744 (= c!1363910 (is-Star!19122 r1!2370))))

(declare-fun e!4396793 () (Set Context!16124))

(assert (=> b!7342744 (= e!4396790 e!4396793)))

(declare-fun b!7342745 () Bool)

(declare-fun nullable!8215 (Regex!19122) Bool)

(assert (=> b!7342745 (= e!4396791 (nullable!8215 (regOne!38756 r1!2370)))))

(declare-fun b!7342746 () Bool)

(declare-fun call!670433 () (Set Context!16124))

(declare-fun call!670434 () (Set Context!16124))

(assert (=> b!7342746 (= e!4396792 (set.union call!670433 call!670434))))

(declare-fun b!7342747 () Bool)

(assert (=> b!7342747 (= e!4396793 (as set.empty (Set Context!16124)))))

(declare-fun bm!670427 () Bool)

(assert (=> bm!670427 (= call!670437 call!670434)))

(declare-fun bm!670428 () Bool)

(declare-fun call!670435 () List!71618)

(declare-fun call!670432 () List!71618)

(assert (=> bm!670428 (= call!670435 call!670432)))

(declare-fun b!7342748 () Bool)

(declare-fun call!670436 () (Set Context!16124))

(assert (=> b!7342748 (= e!4396794 (set.union call!670436 call!670433))))

(declare-fun bm!670429 () Bool)

(declare-fun c!1363909 () Bool)

(declare-fun $colon$colon!3122 (List!71618 Regex!19122) List!71618)

(assert (=> bm!670429 (= call!670432 ($colon$colon!3122 (exprs!8562 lt!2610427) (ite (or c!1363911 c!1363909) (regTwo!38756 r1!2370) r1!2370)))))

(declare-fun c!1363912 () Bool)

(declare-fun bm!670430 () Bool)

(assert (=> bm!670430 (= call!670433 (derivationStepZipperDown!2948 (ite c!1363912 (regTwo!38757 r1!2370) (regOne!38756 r1!2370)) (ite c!1363912 lt!2610427 (Context!16125 call!670432)) c!10362))))

(declare-fun d!2279060 () Bool)

(declare-fun c!1363908 () Bool)

(assert (=> d!2279060 (= c!1363908 (and (is-ElementMatch!19122 r1!2370) (= (c!1363886 r1!2370) c!10362)))))

(declare-fun e!4396789 () (Set Context!16124))

(assert (=> d!2279060 (= (derivationStepZipperDown!2948 r1!2370 lt!2610427 c!10362) e!4396789)))

(declare-fun bm!670431 () Bool)

(assert (=> bm!670431 (= call!670434 call!670436)))

(declare-fun b!7342749 () Bool)

(assert (=> b!7342749 (= e!4396789 e!4396794)))

(assert (=> b!7342749 (= c!1363912 (is-Union!19122 r1!2370))))

(declare-fun b!7342750 () Bool)

(assert (=> b!7342750 (= e!4396789 (set.insert lt!2610427 (as set.empty (Set Context!16124))))))

(declare-fun b!7342751 () Bool)

(assert (=> b!7342751 (= e!4396792 e!4396790)))

(assert (=> b!7342751 (= c!1363909 (is-Concat!27967 r1!2370))))

(declare-fun bm!670432 () Bool)

(assert (=> bm!670432 (= call!670436 (derivationStepZipperDown!2948 (ite c!1363912 (regOne!38757 r1!2370) (ite c!1363911 (regTwo!38756 r1!2370) (ite c!1363909 (regOne!38756 r1!2370) (reg!19451 r1!2370)))) (ite (or c!1363912 c!1363911) lt!2610427 (Context!16125 call!670435)) c!10362))))

(declare-fun b!7342752 () Bool)

(assert (=> b!7342752 (= e!4396793 call!670437)))

(assert (= (and d!2279060 c!1363908) b!7342750))

(assert (= (and d!2279060 (not c!1363908)) b!7342749))

(assert (= (and b!7342749 c!1363912) b!7342748))

(assert (= (and b!7342749 (not c!1363912)) b!7342742))

(assert (= (and b!7342742 res!2966139) b!7342745))

(assert (= (and b!7342742 c!1363911) b!7342746))

(assert (= (and b!7342742 (not c!1363911)) b!7342751))

(assert (= (and b!7342751 c!1363909) b!7342743))

(assert (= (and b!7342751 (not c!1363909)) b!7342744))

(assert (= (and b!7342744 c!1363910) b!7342752))

(assert (= (and b!7342744 (not c!1363910)) b!7342747))

(assert (= (or b!7342743 b!7342752) bm!670428))

(assert (= (or b!7342743 b!7342752) bm!670427))

(assert (= (or b!7342746 bm!670427) bm!670431))

(assert (= (or b!7342746 bm!670428) bm!670429))

(assert (= (or b!7342748 b!7342746) bm!670430))

(assert (= (or b!7342748 bm!670431) bm!670432))

(declare-fun m!8005994 () Bool)

(assert (=> b!7342750 m!8005994))

(declare-fun m!8005996 () Bool)

(assert (=> b!7342745 m!8005996))

(declare-fun m!8005998 () Bool)

(assert (=> bm!670432 m!8005998))

(declare-fun m!8006000 () Bool)

(assert (=> bm!670429 m!8006000))

(declare-fun m!8006002 () Bool)

(assert (=> bm!670430 m!8006002))

(assert (=> b!7342649 d!2279060))

(declare-fun b!7342762 () Bool)

(declare-fun e!4396799 () List!71618)

(assert (=> b!7342762 (= e!4396799 (Cons!71494 (h!77942 (exprs!8562 ct1!282)) (++!16940 (t!386013 (exprs!8562 ct1!282)) (exprs!8562 ct2!378))))))

(declare-fun b!7342763 () Bool)

(declare-fun res!2966145 () Bool)

(declare-fun e!4396800 () Bool)

(assert (=> b!7342763 (=> (not res!2966145) (not e!4396800))))

(declare-fun lt!2610454 () List!71618)

(declare-fun size!42016 (List!71618) Int)

(assert (=> b!7342763 (= res!2966145 (= (size!42016 lt!2610454) (+ (size!42016 (exprs!8562 ct1!282)) (size!42016 (exprs!8562 ct2!378)))))))

(declare-fun b!7342761 () Bool)

(assert (=> b!7342761 (= e!4396799 (exprs!8562 ct2!378))))

(declare-fun b!7342764 () Bool)

(assert (=> b!7342764 (= e!4396800 (or (not (= (exprs!8562 ct2!378) Nil!71494)) (= lt!2610454 (exprs!8562 ct1!282))))))

(declare-fun d!2279062 () Bool)

(assert (=> d!2279062 e!4396800))

(declare-fun res!2966144 () Bool)

(assert (=> d!2279062 (=> (not res!2966144) (not e!4396800))))

(declare-fun content!15037 (List!71618) (Set Regex!19122))

(assert (=> d!2279062 (= res!2966144 (= (content!15037 lt!2610454) (set.union (content!15037 (exprs!8562 ct1!282)) (content!15037 (exprs!8562 ct2!378)))))))

(assert (=> d!2279062 (= lt!2610454 e!4396799)))

(declare-fun c!1363915 () Bool)

(assert (=> d!2279062 (= c!1363915 (is-Nil!71494 (exprs!8562 ct1!282)))))

(assert (=> d!2279062 (= (++!16940 (exprs!8562 ct1!282) (exprs!8562 ct2!378)) lt!2610454)))

(assert (= (and d!2279062 c!1363915) b!7342761))

(assert (= (and d!2279062 (not c!1363915)) b!7342762))

(assert (= (and d!2279062 res!2966144) b!7342763))

(assert (= (and b!7342763 res!2966145) b!7342764))

(declare-fun m!8006004 () Bool)

(assert (=> b!7342762 m!8006004))

(declare-fun m!8006006 () Bool)

(assert (=> b!7342763 m!8006006))

(declare-fun m!8006008 () Bool)

(assert (=> b!7342763 m!8006008))

(declare-fun m!8006010 () Bool)

(assert (=> b!7342763 m!8006010))

(declare-fun m!8006012 () Bool)

(assert (=> d!2279062 m!8006012))

(declare-fun m!8006014 () Bool)

(assert (=> d!2279062 m!8006014))

(declare-fun m!8006016 () Bool)

(assert (=> d!2279062 m!8006016))

(assert (=> b!7342649 d!2279062))

(declare-fun d!2279064 () Bool)

(assert (=> d!2279064 (forall!17952 (++!16940 (exprs!8562 ct1!282) (exprs!8562 ct2!378)) lambda!455778)))

(declare-fun lt!2610457 () Unit!165197)

(declare-fun choose!57113 (List!71618 List!71618 Int) Unit!165197)

(assert (=> d!2279064 (= lt!2610457 (choose!57113 (exprs!8562 ct1!282) (exprs!8562 ct2!378) lambda!455778))))

(assert (=> d!2279064 (forall!17952 (exprs!8562 ct1!282) lambda!455778)))

(assert (=> d!2279064 (= (lemmaConcatPreservesForall!1797 (exprs!8562 ct1!282) (exprs!8562 ct2!378) lambda!455778) lt!2610457)))

(declare-fun bs!1918568 () Bool)

(assert (= bs!1918568 d!2279064))

(assert (=> bs!1918568 m!8005934))

(assert (=> bs!1918568 m!8005934))

(declare-fun m!8006018 () Bool)

(assert (=> bs!1918568 m!8006018))

(declare-fun m!8006020 () Bool)

(assert (=> bs!1918568 m!8006020))

(declare-fun m!8006022 () Bool)

(assert (=> bs!1918568 m!8006022))

(assert (=> b!7342649 d!2279064))

(declare-fun b!7342794 () Bool)

(declare-fun e!4396821 () Bool)

(declare-fun call!670459 () Bool)

(assert (=> b!7342794 (= e!4396821 call!670459)))

(declare-fun bm!670453 () Bool)

(declare-fun call!670458 () Bool)

(assert (=> bm!670453 (= call!670458 call!670459)))

(declare-fun b!7342795 () Bool)

(declare-fun e!4396823 () Bool)

(declare-fun e!4396822 () Bool)

(assert (=> b!7342795 (= e!4396823 e!4396822)))

(declare-fun c!1363925 () Bool)

(assert (=> b!7342795 (= c!1363925 (is-Union!19122 r1!2370))))

(declare-fun c!1363926 () Bool)

(declare-fun bm!670454 () Bool)

(assert (=> bm!670454 (= call!670459 (validRegex!9718 (ite c!1363926 (reg!19451 r1!2370) (ite c!1363925 (regOne!38757 r1!2370) (regTwo!38756 r1!2370)))))))

(declare-fun b!7342796 () Bool)

(declare-fun e!4396827 () Bool)

(declare-fun call!670460 () Bool)

(assert (=> b!7342796 (= e!4396827 call!670460)))

(declare-fun d!2279066 () Bool)

(declare-fun res!2966158 () Bool)

(declare-fun e!4396824 () Bool)

(assert (=> d!2279066 (=> res!2966158 e!4396824)))

(assert (=> d!2279066 (= res!2966158 (is-ElementMatch!19122 r1!2370))))

(assert (=> d!2279066 (= (validRegex!9718 r1!2370) e!4396824)))

(declare-fun b!7342797 () Bool)

(assert (=> b!7342797 (= e!4396823 e!4396821)))

(declare-fun res!2966157 () Bool)

(assert (=> b!7342797 (= res!2966157 (not (nullable!8215 (reg!19451 r1!2370))))))

(assert (=> b!7342797 (=> (not res!2966157) (not e!4396821))))

(declare-fun b!7342798 () Bool)

(declare-fun e!4396826 () Bool)

(declare-fun e!4396825 () Bool)

(assert (=> b!7342798 (= e!4396826 e!4396825)))

(declare-fun res!2966160 () Bool)

(assert (=> b!7342798 (=> (not res!2966160) (not e!4396825))))

(assert (=> b!7342798 (= res!2966160 call!670460)))

(declare-fun b!7342799 () Bool)

(assert (=> b!7342799 (= e!4396825 call!670458)))

(declare-fun b!7342800 () Bool)

(declare-fun res!2966159 () Bool)

(assert (=> b!7342800 (=> res!2966159 e!4396826)))

(assert (=> b!7342800 (= res!2966159 (not (is-Concat!27967 r1!2370)))))

(assert (=> b!7342800 (= e!4396822 e!4396826)))

(declare-fun b!7342801 () Bool)

(assert (=> b!7342801 (= e!4396824 e!4396823)))

(assert (=> b!7342801 (= c!1363926 (is-Star!19122 r1!2370))))

(declare-fun b!7342802 () Bool)

(declare-fun res!2966161 () Bool)

(assert (=> b!7342802 (=> (not res!2966161) (not e!4396827))))

(assert (=> b!7342802 (= res!2966161 call!670458)))

(assert (=> b!7342802 (= e!4396822 e!4396827)))

(declare-fun bm!670455 () Bool)

(assert (=> bm!670455 (= call!670460 (validRegex!9718 (ite c!1363925 (regTwo!38757 r1!2370) (regOne!38756 r1!2370))))))

(assert (= (and d!2279066 (not res!2966158)) b!7342801))

(assert (= (and b!7342801 c!1363926) b!7342797))

(assert (= (and b!7342801 (not c!1363926)) b!7342795))

(assert (= (and b!7342797 res!2966157) b!7342794))

(assert (= (and b!7342795 c!1363925) b!7342802))

(assert (= (and b!7342795 (not c!1363925)) b!7342800))

(assert (= (and b!7342802 res!2966161) b!7342796))

(assert (= (and b!7342800 (not res!2966159)) b!7342798))

(assert (= (and b!7342798 res!2966160) b!7342799))

(assert (= (or b!7342802 b!7342799) bm!670453))

(assert (= (or b!7342796 b!7342798) bm!670455))

(assert (= (or b!7342794 bm!670453) bm!670454))

(declare-fun m!8006024 () Bool)

(assert (=> bm!670454 m!8006024))

(declare-fun m!8006026 () Bool)

(assert (=> b!7342797 m!8006026))

(declare-fun m!8006028 () Bool)

(assert (=> bm!670455 m!8006028))

(assert (=> start!717134 d!2279066))

(declare-fun bs!1918569 () Bool)

(declare-fun d!2279068 () Bool)

(assert (= bs!1918569 (and d!2279068 b!7342649)))

(declare-fun lambda!455790 () Int)

(assert (=> bs!1918569 (= lambda!455790 lambda!455778)))

(assert (=> d!2279068 (= (inv!91146 cWitness!61) (forall!17952 (exprs!8562 cWitness!61) lambda!455790))))

(declare-fun bs!1918570 () Bool)

(assert (= bs!1918570 d!2279068))

(declare-fun m!8006040 () Bool)

(assert (=> bs!1918570 m!8006040))

(assert (=> start!717134 d!2279068))

(declare-fun bs!1918571 () Bool)

(declare-fun d!2279072 () Bool)

(assert (= bs!1918571 (and d!2279072 b!7342649)))

(declare-fun lambda!455791 () Int)

(assert (=> bs!1918571 (= lambda!455791 lambda!455778)))

(declare-fun bs!1918572 () Bool)

(assert (= bs!1918572 (and d!2279072 d!2279068)))

(assert (=> bs!1918572 (= lambda!455791 lambda!455790)))

(assert (=> d!2279072 (= (inv!91146 ct1!282) (forall!17952 (exprs!8562 ct1!282) lambda!455791))))

(declare-fun bs!1918573 () Bool)

(assert (= bs!1918573 d!2279072))

(declare-fun m!8006042 () Bool)

(assert (=> bs!1918573 m!8006042))

(assert (=> start!717134 d!2279072))

(declare-fun bs!1918574 () Bool)

(declare-fun d!2279074 () Bool)

(assert (= bs!1918574 (and d!2279074 b!7342649)))

(declare-fun lambda!455792 () Int)

(assert (=> bs!1918574 (= lambda!455792 lambda!455778)))

(declare-fun bs!1918575 () Bool)

(assert (= bs!1918575 (and d!2279074 d!2279068)))

(assert (=> bs!1918575 (= lambda!455792 lambda!455790)))

(declare-fun bs!1918576 () Bool)

(assert (= bs!1918576 (and d!2279074 d!2279072)))

(assert (=> bs!1918576 (= lambda!455792 lambda!455791)))

(assert (=> d!2279074 (= (inv!91146 ct2!378) (forall!17952 (exprs!8562 ct2!378) lambda!455792))))

(declare-fun bs!1918577 () Bool)

(assert (= bs!1918577 d!2279074))

(declare-fun m!8006044 () Bool)

(assert (=> bs!1918577 m!8006044))

(assert (=> start!717134 d!2279074))

(declare-fun b!7342803 () Bool)

(declare-fun c!1363930 () Bool)

(declare-fun e!4396830 () Bool)

(assert (=> b!7342803 (= c!1363930 e!4396830)))

(declare-fun res!2966162 () Bool)

(assert (=> b!7342803 (=> (not res!2966162) (not e!4396830))))

(assert (=> b!7342803 (= res!2966162 (is-Concat!27967 r1!2370))))

(declare-fun e!4396833 () (Set Context!16124))

(declare-fun e!4396831 () (Set Context!16124))

(assert (=> b!7342803 (= e!4396833 e!4396831)))

(declare-fun b!7342804 () Bool)

(declare-fun e!4396829 () (Set Context!16124))

(declare-fun call!670466 () (Set Context!16124))

(assert (=> b!7342804 (= e!4396829 call!670466)))

(declare-fun b!7342805 () Bool)

(declare-fun c!1363929 () Bool)

(assert (=> b!7342805 (= c!1363929 (is-Star!19122 r1!2370))))

(declare-fun e!4396832 () (Set Context!16124))

(assert (=> b!7342805 (= e!4396829 e!4396832)))

(declare-fun b!7342806 () Bool)

(assert (=> b!7342806 (= e!4396830 (nullable!8215 (regOne!38756 r1!2370)))))

(declare-fun b!7342807 () Bool)

(declare-fun call!670462 () (Set Context!16124))

(declare-fun call!670463 () (Set Context!16124))

(assert (=> b!7342807 (= e!4396831 (set.union call!670462 call!670463))))

(declare-fun b!7342808 () Bool)

(assert (=> b!7342808 (= e!4396832 (as set.empty (Set Context!16124)))))

(declare-fun bm!670456 () Bool)

(assert (=> bm!670456 (= call!670466 call!670463)))

(declare-fun bm!670457 () Bool)

(declare-fun call!670464 () List!71618)

(declare-fun call!670461 () List!71618)

(assert (=> bm!670457 (= call!670464 call!670461)))

(declare-fun b!7342809 () Bool)

(declare-fun call!670465 () (Set Context!16124))

(assert (=> b!7342809 (= e!4396833 (set.union call!670465 call!670462))))

(declare-fun bm!670458 () Bool)

(declare-fun c!1363928 () Bool)

(assert (=> bm!670458 (= call!670461 ($colon$colon!3122 (exprs!8562 ct1!282) (ite (or c!1363930 c!1363928) (regTwo!38756 r1!2370) r1!2370)))))

(declare-fun c!1363931 () Bool)

(declare-fun bm!670459 () Bool)

(assert (=> bm!670459 (= call!670462 (derivationStepZipperDown!2948 (ite c!1363931 (regTwo!38757 r1!2370) (regOne!38756 r1!2370)) (ite c!1363931 ct1!282 (Context!16125 call!670461)) c!10362))))

(declare-fun d!2279076 () Bool)

(declare-fun c!1363927 () Bool)

(assert (=> d!2279076 (= c!1363927 (and (is-ElementMatch!19122 r1!2370) (= (c!1363886 r1!2370) c!10362)))))

(declare-fun e!4396828 () (Set Context!16124))

(assert (=> d!2279076 (= (derivationStepZipperDown!2948 r1!2370 ct1!282 c!10362) e!4396828)))

(declare-fun bm!670460 () Bool)

(assert (=> bm!670460 (= call!670463 call!670465)))

(declare-fun b!7342810 () Bool)

(assert (=> b!7342810 (= e!4396828 e!4396833)))

(assert (=> b!7342810 (= c!1363931 (is-Union!19122 r1!2370))))

(declare-fun b!7342811 () Bool)

(assert (=> b!7342811 (= e!4396828 (set.insert ct1!282 (as set.empty (Set Context!16124))))))

(declare-fun b!7342812 () Bool)

(assert (=> b!7342812 (= e!4396831 e!4396829)))

(assert (=> b!7342812 (= c!1363928 (is-Concat!27967 r1!2370))))

(declare-fun bm!670461 () Bool)

(assert (=> bm!670461 (= call!670465 (derivationStepZipperDown!2948 (ite c!1363931 (regOne!38757 r1!2370) (ite c!1363930 (regTwo!38756 r1!2370) (ite c!1363928 (regOne!38756 r1!2370) (reg!19451 r1!2370)))) (ite (or c!1363931 c!1363930) ct1!282 (Context!16125 call!670464)) c!10362))))

(declare-fun b!7342813 () Bool)

(assert (=> b!7342813 (= e!4396832 call!670466)))

(assert (= (and d!2279076 c!1363927) b!7342811))

(assert (= (and d!2279076 (not c!1363927)) b!7342810))

(assert (= (and b!7342810 c!1363931) b!7342809))

(assert (= (and b!7342810 (not c!1363931)) b!7342803))

(assert (= (and b!7342803 res!2966162) b!7342806))

(assert (= (and b!7342803 c!1363930) b!7342807))

(assert (= (and b!7342803 (not c!1363930)) b!7342812))

(assert (= (and b!7342812 c!1363928) b!7342804))

(assert (= (and b!7342812 (not c!1363928)) b!7342805))

(assert (= (and b!7342805 c!1363929) b!7342813))

(assert (= (and b!7342805 (not c!1363929)) b!7342808))

(assert (= (or b!7342804 b!7342813) bm!670457))

(assert (= (or b!7342804 b!7342813) bm!670456))

(assert (= (or b!7342807 bm!670456) bm!670460))

(assert (= (or b!7342807 bm!670457) bm!670458))

(assert (= (or b!7342809 b!7342807) bm!670459))

(assert (= (or b!7342809 bm!670460) bm!670461))

(declare-fun m!8006046 () Bool)

(assert (=> b!7342811 m!8006046))

(assert (=> b!7342806 m!8005996))

(declare-fun m!8006048 () Bool)

(assert (=> bm!670461 m!8006048))

(declare-fun m!8006050 () Bool)

(assert (=> bm!670458 m!8006050))

(declare-fun m!8006052 () Bool)

(assert (=> bm!670459 m!8006052))

(assert (=> b!7342651 d!2279076))

(declare-fun bs!1918578 () Bool)

(declare-fun d!2279078 () Bool)

(assert (= bs!1918578 (and d!2279078 b!7342649)))

(declare-fun lambda!455797 () Int)

(assert (=> bs!1918578 (= lambda!455797 lambda!455778)))

(declare-fun bs!1918579 () Bool)

(assert (= bs!1918579 (and d!2279078 d!2279068)))

(assert (=> bs!1918579 (= lambda!455797 lambda!455790)))

(declare-fun bs!1918580 () Bool)

(assert (= bs!1918580 (and d!2279078 d!2279072)))

(assert (=> bs!1918580 (= lambda!455797 lambda!455791)))

(declare-fun bs!1918581 () Bool)

(assert (= bs!1918581 (and d!2279078 d!2279074)))

(assert (=> bs!1918581 (= lambda!455797 lambda!455792)))

(assert (=> d!2279078 (set.member (Context!16125 (++!16940 (exprs!8562 cWitness!61) (exprs!8562 ct2!378))) (derivationStepZipperDown!2948 (regTwo!38757 r1!2370) (Context!16125 (++!16940 (exprs!8562 ct1!282) (exprs!8562 ct2!378))) c!10362))))

(declare-fun lt!2610466 () Unit!165197)

(assert (=> d!2279078 (= lt!2610466 (lemmaConcatPreservesForall!1797 (exprs!8562 ct1!282) (exprs!8562 ct2!378) lambda!455797))))

(declare-fun lt!2610465 () Unit!165197)

(assert (=> d!2279078 (= lt!2610465 (lemmaConcatPreservesForall!1797 (exprs!8562 cWitness!61) (exprs!8562 ct2!378) lambda!455797))))

(declare-fun lt!2610464 () Unit!165197)

(declare-fun choose!57114 (Regex!19122 Context!16124 Context!16124 Context!16124 C!38518) Unit!165197)

(assert (=> d!2279078 (= lt!2610464 (choose!57114 (regTwo!38757 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279078 (validRegex!9718 (regTwo!38757 r1!2370))))

(assert (=> d!2279078 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!55 (regTwo!38757 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610464)))

(declare-fun bs!1918582 () Bool)

(assert (= bs!1918582 d!2279078))

(declare-fun m!8006054 () Bool)

(assert (=> bs!1918582 m!8006054))

(declare-fun m!8006056 () Bool)

(assert (=> bs!1918582 m!8006056))

(declare-fun m!8006058 () Bool)

(assert (=> bs!1918582 m!8006058))

(declare-fun m!8006060 () Bool)

(assert (=> bs!1918582 m!8006060))

(declare-fun m!8006062 () Bool)

(assert (=> bs!1918582 m!8006062))

(declare-fun m!8006064 () Bool)

(assert (=> bs!1918582 m!8006064))

(assert (=> bs!1918582 m!8005944))

(assert (=> bs!1918582 m!8005934))

(assert (=> b!7342652 d!2279078))

(declare-fun d!2279080 () Bool)

(assert (=> d!2279080 (forall!17952 (++!16940 (exprs!8562 cWitness!61) (exprs!8562 ct2!378)) lambda!455778)))

(declare-fun lt!2610471 () Unit!165197)

(assert (=> d!2279080 (= lt!2610471 (choose!57113 (exprs!8562 cWitness!61) (exprs!8562 ct2!378) lambda!455778))))

(assert (=> d!2279080 (forall!17952 (exprs!8562 cWitness!61) lambda!455778)))

(assert (=> d!2279080 (= (lemmaConcatPreservesForall!1797 (exprs!8562 cWitness!61) (exprs!8562 ct2!378) lambda!455778) lt!2610471)))

(declare-fun bs!1918583 () Bool)

(assert (= bs!1918583 d!2279080))

(assert (=> bs!1918583 m!8005944))

(assert (=> bs!1918583 m!8005944))

(declare-fun m!8006066 () Bool)

(assert (=> bs!1918583 m!8006066))

(declare-fun m!8006068 () Bool)

(assert (=> bs!1918583 m!8006068))

(assert (=> bs!1918583 m!8005948))

(assert (=> b!7342652 d!2279080))

(assert (=> b!7342652 d!2279064))

(declare-fun b!7342815 () Bool)

(declare-fun e!4396834 () List!71618)

(assert (=> b!7342815 (= e!4396834 (Cons!71494 (h!77942 (exprs!8562 cWitness!61)) (++!16940 (t!386013 (exprs!8562 cWitness!61)) (exprs!8562 ct2!378))))))

(declare-fun b!7342816 () Bool)

(declare-fun res!2966164 () Bool)

(declare-fun e!4396835 () Bool)

(assert (=> b!7342816 (=> (not res!2966164) (not e!4396835))))

(declare-fun lt!2610472 () List!71618)

(assert (=> b!7342816 (= res!2966164 (= (size!42016 lt!2610472) (+ (size!42016 (exprs!8562 cWitness!61)) (size!42016 (exprs!8562 ct2!378)))))))

(declare-fun b!7342814 () Bool)

(assert (=> b!7342814 (= e!4396834 (exprs!8562 ct2!378))))

(declare-fun b!7342817 () Bool)

(assert (=> b!7342817 (= e!4396835 (or (not (= (exprs!8562 ct2!378) Nil!71494)) (= lt!2610472 (exprs!8562 cWitness!61))))))

(declare-fun d!2279082 () Bool)

(assert (=> d!2279082 e!4396835))

(declare-fun res!2966163 () Bool)

(assert (=> d!2279082 (=> (not res!2966163) (not e!4396835))))

(assert (=> d!2279082 (= res!2966163 (= (content!15037 lt!2610472) (set.union (content!15037 (exprs!8562 cWitness!61)) (content!15037 (exprs!8562 ct2!378)))))))

(assert (=> d!2279082 (= lt!2610472 e!4396834)))

(declare-fun c!1363934 () Bool)

(assert (=> d!2279082 (= c!1363934 (is-Nil!71494 (exprs!8562 cWitness!61)))))

(assert (=> d!2279082 (= (++!16940 (exprs!8562 cWitness!61) (exprs!8562 ct2!378)) lt!2610472)))

(assert (= (and d!2279082 c!1363934) b!7342814))

(assert (= (and d!2279082 (not c!1363934)) b!7342815))

(assert (= (and d!2279082 res!2966163) b!7342816))

(assert (= (and b!7342816 res!2966164) b!7342817))

(declare-fun m!8006070 () Bool)

(assert (=> b!7342815 m!8006070))

(declare-fun m!8006072 () Bool)

(assert (=> b!7342816 m!8006072))

(declare-fun m!8006074 () Bool)

(assert (=> b!7342816 m!8006074))

(assert (=> b!7342816 m!8006010))

(declare-fun m!8006076 () Bool)

(assert (=> d!2279082 m!8006076))

(declare-fun m!8006078 () Bool)

(assert (=> d!2279082 m!8006078))

(assert (=> d!2279082 m!8006016))

(assert (=> b!7342652 d!2279082))

(declare-fun b!7342818 () Bool)

(declare-fun c!1363938 () Bool)

(declare-fun e!4396838 () Bool)

(assert (=> b!7342818 (= c!1363938 e!4396838)))

(declare-fun res!2966165 () Bool)

(assert (=> b!7342818 (=> (not res!2966165) (not e!4396838))))

(assert (=> b!7342818 (= res!2966165 (is-Concat!27967 (regTwo!38757 r1!2370)))))

(declare-fun e!4396841 () (Set Context!16124))

(declare-fun e!4396839 () (Set Context!16124))

(assert (=> b!7342818 (= e!4396841 e!4396839)))

(declare-fun b!7342819 () Bool)

(declare-fun e!4396837 () (Set Context!16124))

(declare-fun call!670472 () (Set Context!16124))

(assert (=> b!7342819 (= e!4396837 call!670472)))

(declare-fun b!7342820 () Bool)

(declare-fun c!1363937 () Bool)

(assert (=> b!7342820 (= c!1363937 (is-Star!19122 (regTwo!38757 r1!2370)))))

(declare-fun e!4396840 () (Set Context!16124))

(assert (=> b!7342820 (= e!4396837 e!4396840)))

(declare-fun b!7342821 () Bool)

(assert (=> b!7342821 (= e!4396838 (nullable!8215 (regOne!38756 (regTwo!38757 r1!2370))))))

(declare-fun b!7342822 () Bool)

(declare-fun call!670468 () (Set Context!16124))

(declare-fun call!670469 () (Set Context!16124))

(assert (=> b!7342822 (= e!4396839 (set.union call!670468 call!670469))))

(declare-fun b!7342823 () Bool)

(assert (=> b!7342823 (= e!4396840 (as set.empty (Set Context!16124)))))

(declare-fun bm!670462 () Bool)

(assert (=> bm!670462 (= call!670472 call!670469)))

(declare-fun bm!670463 () Bool)

(declare-fun call!670470 () List!71618)

(declare-fun call!670467 () List!71618)

(assert (=> bm!670463 (= call!670470 call!670467)))

(declare-fun b!7342824 () Bool)

(declare-fun call!670471 () (Set Context!16124))

(assert (=> b!7342824 (= e!4396841 (set.union call!670471 call!670468))))

(declare-fun bm!670464 () Bool)

(declare-fun c!1363936 () Bool)

(assert (=> bm!670464 (= call!670467 ($colon$colon!3122 (exprs!8562 lt!2610427) (ite (or c!1363938 c!1363936) (regTwo!38756 (regTwo!38757 r1!2370)) (regTwo!38757 r1!2370))))))

(declare-fun bm!670465 () Bool)

(declare-fun c!1363939 () Bool)

(assert (=> bm!670465 (= call!670468 (derivationStepZipperDown!2948 (ite c!1363939 (regTwo!38757 (regTwo!38757 r1!2370)) (regOne!38756 (regTwo!38757 r1!2370))) (ite c!1363939 lt!2610427 (Context!16125 call!670467)) c!10362))))

(declare-fun d!2279084 () Bool)

(declare-fun c!1363935 () Bool)

(assert (=> d!2279084 (= c!1363935 (and (is-ElementMatch!19122 (regTwo!38757 r1!2370)) (= (c!1363886 (regTwo!38757 r1!2370)) c!10362)))))

(declare-fun e!4396836 () (Set Context!16124))

(assert (=> d!2279084 (= (derivationStepZipperDown!2948 (regTwo!38757 r1!2370) lt!2610427 c!10362) e!4396836)))

(declare-fun bm!670466 () Bool)

(assert (=> bm!670466 (= call!670469 call!670471)))

(declare-fun b!7342825 () Bool)

(assert (=> b!7342825 (= e!4396836 e!4396841)))

(assert (=> b!7342825 (= c!1363939 (is-Union!19122 (regTwo!38757 r1!2370)))))

(declare-fun b!7342826 () Bool)

(assert (=> b!7342826 (= e!4396836 (set.insert lt!2610427 (as set.empty (Set Context!16124))))))

(declare-fun b!7342827 () Bool)

(assert (=> b!7342827 (= e!4396839 e!4396837)))

(assert (=> b!7342827 (= c!1363936 (is-Concat!27967 (regTwo!38757 r1!2370)))))

(declare-fun bm!670467 () Bool)

(assert (=> bm!670467 (= call!670471 (derivationStepZipperDown!2948 (ite c!1363939 (regOne!38757 (regTwo!38757 r1!2370)) (ite c!1363938 (regTwo!38756 (regTwo!38757 r1!2370)) (ite c!1363936 (regOne!38756 (regTwo!38757 r1!2370)) (reg!19451 (regTwo!38757 r1!2370))))) (ite (or c!1363939 c!1363938) lt!2610427 (Context!16125 call!670470)) c!10362))))

(declare-fun b!7342828 () Bool)

(assert (=> b!7342828 (= e!4396840 call!670472)))

(assert (= (and d!2279084 c!1363935) b!7342826))

(assert (= (and d!2279084 (not c!1363935)) b!7342825))

(assert (= (and b!7342825 c!1363939) b!7342824))

(assert (= (and b!7342825 (not c!1363939)) b!7342818))

(assert (= (and b!7342818 res!2966165) b!7342821))

(assert (= (and b!7342818 c!1363938) b!7342822))

(assert (= (and b!7342818 (not c!1363938)) b!7342827))

(assert (= (and b!7342827 c!1363936) b!7342819))

(assert (= (and b!7342827 (not c!1363936)) b!7342820))

(assert (= (and b!7342820 c!1363937) b!7342828))

(assert (= (and b!7342820 (not c!1363937)) b!7342823))

(assert (= (or b!7342819 b!7342828) bm!670463))

(assert (= (or b!7342819 b!7342828) bm!670462))

(assert (= (or b!7342822 bm!670462) bm!670466))

(assert (= (or b!7342822 bm!670463) bm!670464))

(assert (= (or b!7342824 b!7342822) bm!670465))

(assert (= (or b!7342824 bm!670466) bm!670467))

(assert (=> b!7342826 m!8005994))

(declare-fun m!8006080 () Bool)

(assert (=> b!7342821 m!8006080))

(declare-fun m!8006082 () Bool)

(assert (=> bm!670467 m!8006082))

(declare-fun m!8006084 () Bool)

(assert (=> bm!670464 m!8006084))

(declare-fun m!8006086 () Bool)

(assert (=> bm!670465 m!8006086))

(assert (=> b!7342652 d!2279084))

(declare-fun d!2279086 () Bool)

(declare-fun res!2966166 () Bool)

(declare-fun e!4396842 () Bool)

(assert (=> d!2279086 (=> res!2966166 e!4396842)))

(assert (=> d!2279086 (= res!2966166 (is-Nil!71494 (exprs!8562 cWitness!61)))))

(assert (=> d!2279086 (= (forall!17952 (exprs!8562 cWitness!61) lambda!455778) e!4396842)))

(declare-fun b!7342829 () Bool)

(declare-fun e!4396843 () Bool)

(assert (=> b!7342829 (= e!4396842 e!4396843)))

(declare-fun res!2966167 () Bool)

(assert (=> b!7342829 (=> (not res!2966167) (not e!4396843))))

(assert (=> b!7342829 (= res!2966167 (dynLambda!29459 lambda!455778 (h!77942 (exprs!8562 cWitness!61))))))

(declare-fun b!7342830 () Bool)

(assert (=> b!7342830 (= e!4396843 (forall!17952 (t!386013 (exprs!8562 cWitness!61)) lambda!455778))))

(assert (= (and d!2279086 (not res!2966166)) b!7342829))

(assert (= (and b!7342829 res!2966167) b!7342830))

(declare-fun b_lambda!283917 () Bool)

(assert (=> (not b_lambda!283917) (not b!7342829)))

(declare-fun m!8006088 () Bool)

(assert (=> b!7342829 m!8006088))

(declare-fun m!8006090 () Bool)

(assert (=> b!7342830 m!8006090))

(assert (=> b!7342652 d!2279086))

(declare-fun b!7342831 () Bool)

(declare-fun c!1363943 () Bool)

(declare-fun e!4396846 () Bool)

(assert (=> b!7342831 (= c!1363943 e!4396846)))

(declare-fun res!2966168 () Bool)

(assert (=> b!7342831 (=> (not res!2966168) (not e!4396846))))

(assert (=> b!7342831 (= res!2966168 (is-Concat!27967 (regTwo!38757 r1!2370)))))

(declare-fun e!4396849 () (Set Context!16124))

(declare-fun e!4396847 () (Set Context!16124))

(assert (=> b!7342831 (= e!4396849 e!4396847)))

(declare-fun b!7342832 () Bool)

(declare-fun e!4396845 () (Set Context!16124))

(declare-fun call!670478 () (Set Context!16124))

(assert (=> b!7342832 (= e!4396845 call!670478)))

(declare-fun b!7342833 () Bool)

(declare-fun c!1363942 () Bool)

(assert (=> b!7342833 (= c!1363942 (is-Star!19122 (regTwo!38757 r1!2370)))))

(declare-fun e!4396848 () (Set Context!16124))

(assert (=> b!7342833 (= e!4396845 e!4396848)))

(declare-fun b!7342834 () Bool)

(assert (=> b!7342834 (= e!4396846 (nullable!8215 (regOne!38756 (regTwo!38757 r1!2370))))))

(declare-fun b!7342835 () Bool)

(declare-fun call!670474 () (Set Context!16124))

(declare-fun call!670475 () (Set Context!16124))

(assert (=> b!7342835 (= e!4396847 (set.union call!670474 call!670475))))

(declare-fun b!7342836 () Bool)

(assert (=> b!7342836 (= e!4396848 (as set.empty (Set Context!16124)))))

(declare-fun bm!670468 () Bool)

(assert (=> bm!670468 (= call!670478 call!670475)))

(declare-fun bm!670469 () Bool)

(declare-fun call!670476 () List!71618)

(declare-fun call!670473 () List!71618)

(assert (=> bm!670469 (= call!670476 call!670473)))

(declare-fun b!7342837 () Bool)

(declare-fun call!670477 () (Set Context!16124))

(assert (=> b!7342837 (= e!4396849 (set.union call!670477 call!670474))))

(declare-fun bm!670470 () Bool)

(declare-fun c!1363941 () Bool)

(assert (=> bm!670470 (= call!670473 ($colon$colon!3122 (exprs!8562 ct1!282) (ite (or c!1363943 c!1363941) (regTwo!38756 (regTwo!38757 r1!2370)) (regTwo!38757 r1!2370))))))

(declare-fun bm!670471 () Bool)

(declare-fun c!1363944 () Bool)

(assert (=> bm!670471 (= call!670474 (derivationStepZipperDown!2948 (ite c!1363944 (regTwo!38757 (regTwo!38757 r1!2370)) (regOne!38756 (regTwo!38757 r1!2370))) (ite c!1363944 ct1!282 (Context!16125 call!670473)) c!10362))))

(declare-fun d!2279088 () Bool)

(declare-fun c!1363940 () Bool)

(assert (=> d!2279088 (= c!1363940 (and (is-ElementMatch!19122 (regTwo!38757 r1!2370)) (= (c!1363886 (regTwo!38757 r1!2370)) c!10362)))))

(declare-fun e!4396844 () (Set Context!16124))

(assert (=> d!2279088 (= (derivationStepZipperDown!2948 (regTwo!38757 r1!2370) ct1!282 c!10362) e!4396844)))

(declare-fun bm!670472 () Bool)

(assert (=> bm!670472 (= call!670475 call!670477)))

(declare-fun b!7342838 () Bool)

(assert (=> b!7342838 (= e!4396844 e!4396849)))

(assert (=> b!7342838 (= c!1363944 (is-Union!19122 (regTwo!38757 r1!2370)))))

(declare-fun b!7342839 () Bool)

(assert (=> b!7342839 (= e!4396844 (set.insert ct1!282 (as set.empty (Set Context!16124))))))

(declare-fun b!7342840 () Bool)

(assert (=> b!7342840 (= e!4396847 e!4396845)))

(assert (=> b!7342840 (= c!1363941 (is-Concat!27967 (regTwo!38757 r1!2370)))))

(declare-fun bm!670473 () Bool)

(assert (=> bm!670473 (= call!670477 (derivationStepZipperDown!2948 (ite c!1363944 (regOne!38757 (regTwo!38757 r1!2370)) (ite c!1363943 (regTwo!38756 (regTwo!38757 r1!2370)) (ite c!1363941 (regOne!38756 (regTwo!38757 r1!2370)) (reg!19451 (regTwo!38757 r1!2370))))) (ite (or c!1363944 c!1363943) ct1!282 (Context!16125 call!670476)) c!10362))))

(declare-fun b!7342841 () Bool)

(assert (=> b!7342841 (= e!4396848 call!670478)))

(assert (= (and d!2279088 c!1363940) b!7342839))

(assert (= (and d!2279088 (not c!1363940)) b!7342838))

(assert (= (and b!7342838 c!1363944) b!7342837))

(assert (= (and b!7342838 (not c!1363944)) b!7342831))

(assert (= (and b!7342831 res!2966168) b!7342834))

(assert (= (and b!7342831 c!1363943) b!7342835))

(assert (= (and b!7342831 (not c!1363943)) b!7342840))

(assert (= (and b!7342840 c!1363941) b!7342832))

(assert (= (and b!7342840 (not c!1363941)) b!7342833))

(assert (= (and b!7342833 c!1363942) b!7342841))

(assert (= (and b!7342833 (not c!1363942)) b!7342836))

(assert (= (or b!7342832 b!7342841) bm!670469))

(assert (= (or b!7342832 b!7342841) bm!670468))

(assert (= (or b!7342835 bm!670468) bm!670472))

(assert (= (or b!7342835 bm!670469) bm!670470))

(assert (= (or b!7342837 b!7342835) bm!670471))

(assert (= (or b!7342837 bm!670472) bm!670473))

(assert (=> b!7342839 m!8006046))

(assert (=> b!7342834 m!8006080))

(declare-fun m!8006092 () Bool)

(assert (=> bm!670473 m!8006092))

(declare-fun m!8006094 () Bool)

(assert (=> bm!670470 m!8006094))

(declare-fun m!8006096 () Bool)

(assert (=> bm!670471 m!8006096))

(assert (=> b!7342645 d!2279088))

(declare-fun b!7342842 () Bool)

(declare-fun c!1363948 () Bool)

(declare-fun e!4396852 () Bool)

(assert (=> b!7342842 (= c!1363948 e!4396852)))

(declare-fun res!2966169 () Bool)

(assert (=> b!7342842 (=> (not res!2966169) (not e!4396852))))

(assert (=> b!7342842 (= res!2966169 (is-Concat!27967 (regOne!38757 r1!2370)))))

(declare-fun e!4396855 () (Set Context!16124))

(declare-fun e!4396853 () (Set Context!16124))

(assert (=> b!7342842 (= e!4396855 e!4396853)))

(declare-fun b!7342843 () Bool)

(declare-fun e!4396851 () (Set Context!16124))

(declare-fun call!670484 () (Set Context!16124))

(assert (=> b!7342843 (= e!4396851 call!670484)))

(declare-fun b!7342844 () Bool)

(declare-fun c!1363947 () Bool)

(assert (=> b!7342844 (= c!1363947 (is-Star!19122 (regOne!38757 r1!2370)))))

(declare-fun e!4396854 () (Set Context!16124))

(assert (=> b!7342844 (= e!4396851 e!4396854)))

(declare-fun b!7342845 () Bool)

(assert (=> b!7342845 (= e!4396852 (nullable!8215 (regOne!38756 (regOne!38757 r1!2370))))))

(declare-fun b!7342846 () Bool)

(declare-fun call!670480 () (Set Context!16124))

(declare-fun call!670481 () (Set Context!16124))

(assert (=> b!7342846 (= e!4396853 (set.union call!670480 call!670481))))

(declare-fun b!7342847 () Bool)

(assert (=> b!7342847 (= e!4396854 (as set.empty (Set Context!16124)))))

(declare-fun bm!670474 () Bool)

(assert (=> bm!670474 (= call!670484 call!670481)))

(declare-fun bm!670475 () Bool)

(declare-fun call!670482 () List!71618)

(declare-fun call!670479 () List!71618)

(assert (=> bm!670475 (= call!670482 call!670479)))

(declare-fun b!7342848 () Bool)

(declare-fun call!670483 () (Set Context!16124))

(assert (=> b!7342848 (= e!4396855 (set.union call!670483 call!670480))))

(declare-fun bm!670476 () Bool)

(declare-fun c!1363946 () Bool)

(assert (=> bm!670476 (= call!670479 ($colon$colon!3122 (exprs!8562 ct1!282) (ite (or c!1363948 c!1363946) (regTwo!38756 (regOne!38757 r1!2370)) (regOne!38757 r1!2370))))))

(declare-fun c!1363949 () Bool)

(declare-fun bm!670477 () Bool)

(assert (=> bm!670477 (= call!670480 (derivationStepZipperDown!2948 (ite c!1363949 (regTwo!38757 (regOne!38757 r1!2370)) (regOne!38756 (regOne!38757 r1!2370))) (ite c!1363949 ct1!282 (Context!16125 call!670479)) c!10362))))

(declare-fun d!2279090 () Bool)

(declare-fun c!1363945 () Bool)

(assert (=> d!2279090 (= c!1363945 (and (is-ElementMatch!19122 (regOne!38757 r1!2370)) (= (c!1363886 (regOne!38757 r1!2370)) c!10362)))))

(declare-fun e!4396850 () (Set Context!16124))

(assert (=> d!2279090 (= (derivationStepZipperDown!2948 (regOne!38757 r1!2370) ct1!282 c!10362) e!4396850)))

(declare-fun bm!670478 () Bool)

(assert (=> bm!670478 (= call!670481 call!670483)))

(declare-fun b!7342849 () Bool)

(assert (=> b!7342849 (= e!4396850 e!4396855)))

(assert (=> b!7342849 (= c!1363949 (is-Union!19122 (regOne!38757 r1!2370)))))

(declare-fun b!7342850 () Bool)

(assert (=> b!7342850 (= e!4396850 (set.insert ct1!282 (as set.empty (Set Context!16124))))))

(declare-fun b!7342851 () Bool)

(assert (=> b!7342851 (= e!4396853 e!4396851)))

(assert (=> b!7342851 (= c!1363946 (is-Concat!27967 (regOne!38757 r1!2370)))))

(declare-fun bm!670479 () Bool)

(assert (=> bm!670479 (= call!670483 (derivationStepZipperDown!2948 (ite c!1363949 (regOne!38757 (regOne!38757 r1!2370)) (ite c!1363948 (regTwo!38756 (regOne!38757 r1!2370)) (ite c!1363946 (regOne!38756 (regOne!38757 r1!2370)) (reg!19451 (regOne!38757 r1!2370))))) (ite (or c!1363949 c!1363948) ct1!282 (Context!16125 call!670482)) c!10362))))

(declare-fun b!7342852 () Bool)

(assert (=> b!7342852 (= e!4396854 call!670484)))

(assert (= (and d!2279090 c!1363945) b!7342850))

(assert (= (and d!2279090 (not c!1363945)) b!7342849))

(assert (= (and b!7342849 c!1363949) b!7342848))

(assert (= (and b!7342849 (not c!1363949)) b!7342842))

(assert (= (and b!7342842 res!2966169) b!7342845))

(assert (= (and b!7342842 c!1363948) b!7342846))

(assert (= (and b!7342842 (not c!1363948)) b!7342851))

(assert (= (and b!7342851 c!1363946) b!7342843))

(assert (= (and b!7342851 (not c!1363946)) b!7342844))

(assert (= (and b!7342844 c!1363947) b!7342852))

(assert (= (and b!7342844 (not c!1363947)) b!7342847))

(assert (= (or b!7342843 b!7342852) bm!670475))

(assert (= (or b!7342843 b!7342852) bm!670474))

(assert (= (or b!7342846 bm!670474) bm!670478))

(assert (= (or b!7342846 bm!670475) bm!670476))

(assert (= (or b!7342848 b!7342846) bm!670477))

(assert (= (or b!7342848 bm!670478) bm!670479))

(assert (=> b!7342850 m!8006046))

(declare-fun m!8006098 () Bool)

(assert (=> b!7342845 m!8006098))

(declare-fun m!8006100 () Bool)

(assert (=> bm!670479 m!8006100))

(declare-fun m!8006102 () Bool)

(assert (=> bm!670476 m!8006102))

(declare-fun m!8006104 () Bool)

(assert (=> bm!670477 m!8006104))

(assert (=> b!7342645 d!2279090))

(declare-fun b!7342865 () Bool)

(declare-fun e!4396858 () Bool)

(declare-fun tp!2085134 () Bool)

(assert (=> b!7342865 (= e!4396858 tp!2085134)))

(declare-fun b!7342864 () Bool)

(declare-fun tp!2085130 () Bool)

(declare-fun tp!2085133 () Bool)

(assert (=> b!7342864 (= e!4396858 (and tp!2085130 tp!2085133))))

(declare-fun b!7342863 () Bool)

(assert (=> b!7342863 (= e!4396858 tp_is_empty!48489)))

(declare-fun b!7342866 () Bool)

(declare-fun tp!2085131 () Bool)

(declare-fun tp!2085132 () Bool)

(assert (=> b!7342866 (= e!4396858 (and tp!2085131 tp!2085132))))

(assert (=> b!7342644 (= tp!2085091 e!4396858)))

(assert (= (and b!7342644 (is-ElementMatch!19122 (regOne!38756 r1!2370))) b!7342863))

(assert (= (and b!7342644 (is-Concat!27967 (regOne!38756 r1!2370))) b!7342864))

(assert (= (and b!7342644 (is-Star!19122 (regOne!38756 r1!2370))) b!7342865))

(assert (= (and b!7342644 (is-Union!19122 (regOne!38756 r1!2370))) b!7342866))

(declare-fun b!7342869 () Bool)

(declare-fun e!4396859 () Bool)

(declare-fun tp!2085139 () Bool)

(assert (=> b!7342869 (= e!4396859 tp!2085139)))

(declare-fun b!7342868 () Bool)

(declare-fun tp!2085135 () Bool)

(declare-fun tp!2085138 () Bool)

(assert (=> b!7342868 (= e!4396859 (and tp!2085135 tp!2085138))))

(declare-fun b!7342867 () Bool)

(assert (=> b!7342867 (= e!4396859 tp_is_empty!48489)))

(declare-fun b!7342870 () Bool)

(declare-fun tp!2085136 () Bool)

(declare-fun tp!2085137 () Bool)

(assert (=> b!7342870 (= e!4396859 (and tp!2085136 tp!2085137))))

(assert (=> b!7342644 (= tp!2085090 e!4396859)))

(assert (= (and b!7342644 (is-ElementMatch!19122 (regTwo!38756 r1!2370))) b!7342867))

(assert (= (and b!7342644 (is-Concat!27967 (regTwo!38756 r1!2370))) b!7342868))

(assert (= (and b!7342644 (is-Star!19122 (regTwo!38756 r1!2370))) b!7342869))

(assert (= (and b!7342644 (is-Union!19122 (regTwo!38756 r1!2370))) b!7342870))

(declare-fun b!7342873 () Bool)

(declare-fun e!4396860 () Bool)

(declare-fun tp!2085144 () Bool)

(assert (=> b!7342873 (= e!4396860 tp!2085144)))

(declare-fun b!7342872 () Bool)

(declare-fun tp!2085140 () Bool)

(declare-fun tp!2085143 () Bool)

(assert (=> b!7342872 (= e!4396860 (and tp!2085140 tp!2085143))))

(declare-fun b!7342871 () Bool)

(assert (=> b!7342871 (= e!4396860 tp_is_empty!48489)))

(declare-fun b!7342874 () Bool)

(declare-fun tp!2085141 () Bool)

(declare-fun tp!2085142 () Bool)

(assert (=> b!7342874 (= e!4396860 (and tp!2085141 tp!2085142))))

(assert (=> b!7342647 (= tp!2085089 e!4396860)))

(assert (= (and b!7342647 (is-ElementMatch!19122 (reg!19451 r1!2370))) b!7342871))

(assert (= (and b!7342647 (is-Concat!27967 (reg!19451 r1!2370))) b!7342872))

(assert (= (and b!7342647 (is-Star!19122 (reg!19451 r1!2370))) b!7342873))

(assert (= (and b!7342647 (is-Union!19122 (reg!19451 r1!2370))) b!7342874))

(declare-fun b!7342877 () Bool)

(declare-fun e!4396861 () Bool)

(declare-fun tp!2085149 () Bool)

(assert (=> b!7342877 (= e!4396861 tp!2085149)))

(declare-fun b!7342876 () Bool)

(declare-fun tp!2085145 () Bool)

(declare-fun tp!2085148 () Bool)

(assert (=> b!7342876 (= e!4396861 (and tp!2085145 tp!2085148))))

(declare-fun b!7342875 () Bool)

(assert (=> b!7342875 (= e!4396861 tp_is_empty!48489)))

(declare-fun b!7342878 () Bool)

(declare-fun tp!2085146 () Bool)

(declare-fun tp!2085147 () Bool)

(assert (=> b!7342878 (= e!4396861 (and tp!2085146 tp!2085147))))

(assert (=> b!7342642 (= tp!2085088 e!4396861)))

(assert (= (and b!7342642 (is-ElementMatch!19122 (regOne!38757 r1!2370))) b!7342875))

(assert (= (and b!7342642 (is-Concat!27967 (regOne!38757 r1!2370))) b!7342876))

(assert (= (and b!7342642 (is-Star!19122 (regOne!38757 r1!2370))) b!7342877))

(assert (= (and b!7342642 (is-Union!19122 (regOne!38757 r1!2370))) b!7342878))

(declare-fun b!7342881 () Bool)

(declare-fun e!4396862 () Bool)

(declare-fun tp!2085154 () Bool)

(assert (=> b!7342881 (= e!4396862 tp!2085154)))

(declare-fun b!7342880 () Bool)

(declare-fun tp!2085150 () Bool)

(declare-fun tp!2085153 () Bool)

(assert (=> b!7342880 (= e!4396862 (and tp!2085150 tp!2085153))))

(declare-fun b!7342879 () Bool)

(assert (=> b!7342879 (= e!4396862 tp_is_empty!48489)))

(declare-fun b!7342882 () Bool)

(declare-fun tp!2085151 () Bool)

(declare-fun tp!2085152 () Bool)

(assert (=> b!7342882 (= e!4396862 (and tp!2085151 tp!2085152))))

(assert (=> b!7342642 (= tp!2085095 e!4396862)))

(assert (= (and b!7342642 (is-ElementMatch!19122 (regTwo!38757 r1!2370))) b!7342879))

(assert (= (and b!7342642 (is-Concat!27967 (regTwo!38757 r1!2370))) b!7342880))

(assert (= (and b!7342642 (is-Star!19122 (regTwo!38757 r1!2370))) b!7342881))

(assert (= (and b!7342642 (is-Union!19122 (regTwo!38757 r1!2370))) b!7342882))

(declare-fun b!7342887 () Bool)

(declare-fun e!4396865 () Bool)

(declare-fun tp!2085159 () Bool)

(declare-fun tp!2085160 () Bool)

(assert (=> b!7342887 (= e!4396865 (and tp!2085159 tp!2085160))))

(assert (=> b!7342648 (= tp!2085094 e!4396865)))

(assert (= (and b!7342648 (is-Cons!71494 (exprs!8562 ct2!378))) b!7342887))

(declare-fun b!7342888 () Bool)

(declare-fun e!4396866 () Bool)

(declare-fun tp!2085161 () Bool)

(declare-fun tp!2085162 () Bool)

(assert (=> b!7342888 (= e!4396866 (and tp!2085161 tp!2085162))))

(assert (=> b!7342646 (= tp!2085092 e!4396866)))

(assert (= (and b!7342646 (is-Cons!71494 (exprs!8562 ct1!282))) b!7342888))

(declare-fun b!7342889 () Bool)

(declare-fun e!4396867 () Bool)

(declare-fun tp!2085163 () Bool)

(declare-fun tp!2085164 () Bool)

(assert (=> b!7342889 (= e!4396867 (and tp!2085163 tp!2085164))))

(assert (=> b!7342650 (= tp!2085093 e!4396867)))

(assert (= (and b!7342650 (is-Cons!71494 (exprs!8562 cWitness!61))) b!7342889))

(declare-fun b_lambda!283919 () Bool)

(assert (= b_lambda!283917 (or b!7342649 b_lambda!283919)))

(declare-fun bs!1918584 () Bool)

(declare-fun d!2279092 () Bool)

(assert (= bs!1918584 (and d!2279092 b!7342649)))

(assert (=> bs!1918584 (= (dynLambda!29459 lambda!455778 (h!77942 (exprs!8562 cWitness!61))) (validRegex!9718 (h!77942 (exprs!8562 cWitness!61))))))

(declare-fun m!8006106 () Bool)

(assert (=> bs!1918584 m!8006106))

(assert (=> b!7342829 d!2279092))

(declare-fun b_lambda!283921 () Bool)

(assert (= b_lambda!283915 (or b!7342649 b_lambda!283921)))

(declare-fun bs!1918585 () Bool)

(declare-fun d!2279094 () Bool)

(assert (= bs!1918585 (and d!2279094 b!7342649)))

(assert (=> bs!1918585 (= (dynLambda!29459 lambda!455778 (h!77942 (exprs!8562 ct2!378))) (validRegex!9718 (h!77942 (exprs!8562 ct2!378))))))

(declare-fun m!8006108 () Bool)

(assert (=> bs!1918585 m!8006108))

(assert (=> b!7342696 d!2279094))

(push 1)

(assert (not bm!670479))

(assert (not d!2279082))

(assert (not b!7342830))

(assert (not b!7342874))

(assert (not b!7342762))

(assert (not b!7342881))

(assert (not b!7342763))

(assert (not b!7342816))

(assert (not bm!670464))

(assert tp_is_empty!48489)

(assert (not b!7342866))

(assert (not bs!1918585))

(assert (not d!2279072))

(assert (not b!7342797))

(assert (not bm!670461))

(assert (not bm!670477))

(assert (not b!7342834))

(assert (not bm!670467))

(assert (not bm!670476))

(assert (not b!7342697))

(assert (not bm!670432))

(assert (not b!7342745))

(assert (not b!7342865))

(assert (not bm!670470))

(assert (not b!7342873))

(assert (not b!7342872))

(assert (not b!7342880))

(assert (not d!2279068))

(assert (not b!7342864))

(assert (not b!7342806))

(assert (not b!7342877))

(assert (not b_lambda!283919))

(assert (not b!7342878))

(assert (not d!2279064))

(assert (not bm!670473))

(assert (not d!2279080))

(assert (not bm!670430))

(assert (not b!7342868))

(assert (not b!7342882))

(assert (not d!2279074))

(assert (not b!7342845))

(assert (not b!7342870))

(assert (not bm!670465))

(assert (not bm!670471))

(assert (not b_lambda!283921))

(assert (not bm!670459))

(assert (not bs!1918584))

(assert (not b!7342821))

(assert (not b!7342869))

(assert (not b!7342887))

(assert (not bm!670455))

(assert (not bm!670458))

(assert (not b!7342815))

(assert (not d!2279078))

(assert (not b!7342889))

(assert (not b!7342888))

(assert (not d!2279062))

(assert (not bm!670429))

(assert (not bm!670454))

(assert (not b!7342876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

