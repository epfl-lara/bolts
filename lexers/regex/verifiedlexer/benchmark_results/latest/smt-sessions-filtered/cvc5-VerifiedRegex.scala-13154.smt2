; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718358 () Bool)

(assert start!718358)

(declare-fun b!7356576 () Bool)

(declare-fun e!4404710 () Bool)

(declare-datatypes ((C!38666 0))(
  ( (C!38667 (val!29693 Int)) )
))
(declare-datatypes ((Regex!19196 0))(
  ( (ElementMatch!19196 (c!1366838 C!38666)) (Concat!28041 (regOne!38904 Regex!19196) (regTwo!38904 Regex!19196)) (EmptyExpr!19196) (Star!19196 (reg!19525 Regex!19196)) (EmptyLang!19196) (Union!19196 (regOne!38905 Regex!19196) (regTwo!38905 Regex!19196)) )
))
(declare-datatypes ((List!71692 0))(
  ( (Nil!71568) (Cons!71568 (h!78016 Regex!19196) (t!386135 List!71692)) )
))
(declare-datatypes ((Context!16272 0))(
  ( (Context!16273 (exprs!8636 List!71692)) )
))
(declare-fun cWitness!61 () Context!16272)

(declare-fun lambda!457074 () Int)

(declare-fun forall!18016 (List!71692 Int) Bool)

(assert (=> b!7356576 (= e!4404710 (not (forall!18016 (exprs!8636 cWitness!61) lambda!457074)))))

(declare-fun b!7356577 () Bool)

(declare-fun e!4404709 () Bool)

(declare-fun r1!2370 () Regex!19196)

(declare-fun nullable!8287 (Regex!19196) Bool)

(assert (=> b!7356577 (= e!4404709 (not (nullable!8287 (regOne!38904 r1!2370))))))

(declare-fun b!7356578 () Bool)

(declare-fun e!4404708 () Bool)

(assert (=> b!7356578 (= e!4404708 e!4404710)))

(declare-fun res!2970483 () Bool)

(assert (=> b!7356578 (=> (not res!2970483) (not e!4404710))))

(declare-fun c!10362 () C!38666)

(assert (=> b!7356578 (= res!2970483 (and (or (not (is-ElementMatch!19196 r1!2370)) (not (= c!10362 (c!1366838 r1!2370)))) (not (is-Union!19196 r1!2370))))))

(declare-fun lt!2613398 () (Set Context!16272))

(declare-fun ct1!282 () Context!16272)

(declare-fun ct2!378 () Context!16272)

(declare-fun derivationStepZipperDown!3022 (Regex!19196 Context!16272 C!38666) (Set Context!16272))

(declare-fun ++!17014 (List!71692 List!71692) List!71692)

(assert (=> b!7356578 (= lt!2613398 (derivationStepZipperDown!3022 r1!2370 (Context!16273 (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165345 0))(
  ( (Unit!165346) )
))
(declare-fun lt!2613399 () Unit!165345)

(declare-fun lemmaConcatPreservesForall!1871 (List!71692 List!71692 Int) Unit!165345)

(assert (=> b!7356578 (= lt!2613399 (lemmaConcatPreservesForall!1871 (exprs!8636 ct1!282) (exprs!8636 ct2!378) lambda!457074))))

(declare-fun b!7356579 () Bool)

(declare-fun res!2970481 () Bool)

(assert (=> b!7356579 (=> (not res!2970481) (not e!4404710))))

(assert (=> b!7356579 (= res!2970481 (and (not (is-Concat!28041 r1!2370)) (not (is-Star!19196 r1!2370))))))

(declare-fun b!7356580 () Bool)

(declare-fun res!2970480 () Bool)

(assert (=> b!7356580 (=> (not res!2970480) (not e!4404708))))

(assert (=> b!7356580 (= res!2970480 (set.member cWitness!61 (derivationStepZipperDown!3022 r1!2370 ct1!282 c!10362)))))

(declare-fun res!2970482 () Bool)

(assert (=> start!718358 (=> (not res!2970482) (not e!4404708))))

(declare-fun validRegex!9792 (Regex!19196) Bool)

(assert (=> start!718358 (= res!2970482 (validRegex!9792 r1!2370))))

(assert (=> start!718358 e!4404708))

(declare-fun tp_is_empty!48637 () Bool)

(assert (=> start!718358 tp_is_empty!48637))

(declare-fun e!4404711 () Bool)

(declare-fun inv!91331 (Context!16272) Bool)

(assert (=> start!718358 (and (inv!91331 cWitness!61) e!4404711)))

(declare-fun e!4404712 () Bool)

(assert (=> start!718358 (and (inv!91331 ct1!282) e!4404712)))

(declare-fun e!4404707 () Bool)

(assert (=> start!718358 e!4404707))

(declare-fun e!4404713 () Bool)

(assert (=> start!718358 (and (inv!91331 ct2!378) e!4404713)))

(declare-fun b!7356581 () Bool)

(declare-fun tp!2089746 () Bool)

(declare-fun tp!2089751 () Bool)

(assert (=> b!7356581 (= e!4404707 (and tp!2089746 tp!2089751))))

(declare-fun b!7356582 () Bool)

(declare-fun tp!2089750 () Bool)

(assert (=> b!7356582 (= e!4404713 tp!2089750)))

(declare-fun b!7356583 () Bool)

(declare-fun tp!2089749 () Bool)

(assert (=> b!7356583 (= e!4404712 tp!2089749)))

(declare-fun b!7356584 () Bool)

(declare-fun tp!2089745 () Bool)

(assert (=> b!7356584 (= e!4404711 tp!2089745)))

(declare-fun b!7356585 () Bool)

(declare-fun tp!2089744 () Bool)

(assert (=> b!7356585 (= e!4404707 tp!2089744)))

(declare-fun b!7356586 () Bool)

(assert (=> b!7356586 (= e!4404707 tp_is_empty!48637)))

(declare-fun b!7356587 () Bool)

(declare-fun res!2970479 () Bool)

(assert (=> b!7356587 (=> (not res!2970479) (not e!4404710))))

(assert (=> b!7356587 (= res!2970479 e!4404709)))

(declare-fun res!2970484 () Bool)

(assert (=> b!7356587 (=> res!2970484 e!4404709)))

(assert (=> b!7356587 (= res!2970484 (not (is-Concat!28041 r1!2370)))))

(declare-fun b!7356588 () Bool)

(declare-fun tp!2089747 () Bool)

(declare-fun tp!2089748 () Bool)

(assert (=> b!7356588 (= e!4404707 (and tp!2089747 tp!2089748))))

(assert (= (and start!718358 res!2970482) b!7356580))

(assert (= (and b!7356580 res!2970480) b!7356578))

(assert (= (and b!7356578 res!2970483) b!7356587))

(assert (= (and b!7356587 (not res!2970484)) b!7356577))

(assert (= (and b!7356587 res!2970479) b!7356579))

(assert (= (and b!7356579 res!2970481) b!7356576))

(assert (= start!718358 b!7356584))

(assert (= start!718358 b!7356583))

(assert (= (and start!718358 (is-ElementMatch!19196 r1!2370)) b!7356586))

(assert (= (and start!718358 (is-Concat!28041 r1!2370)) b!7356588))

(assert (= (and start!718358 (is-Star!19196 r1!2370)) b!7356585))

(assert (= (and start!718358 (is-Union!19196 r1!2370)) b!7356581))

(assert (= start!718358 b!7356582))

(declare-fun m!8016346 () Bool)

(assert (=> b!7356578 m!8016346))

(declare-fun m!8016348 () Bool)

(assert (=> b!7356578 m!8016348))

(declare-fun m!8016350 () Bool)

(assert (=> b!7356578 m!8016350))

(declare-fun m!8016352 () Bool)

(assert (=> b!7356577 m!8016352))

(declare-fun m!8016354 () Bool)

(assert (=> b!7356580 m!8016354))

(declare-fun m!8016356 () Bool)

(assert (=> b!7356580 m!8016356))

(declare-fun m!8016358 () Bool)

(assert (=> b!7356576 m!8016358))

(declare-fun m!8016360 () Bool)

(assert (=> start!718358 m!8016360))

(declare-fun m!8016362 () Bool)

(assert (=> start!718358 m!8016362))

(declare-fun m!8016364 () Bool)

(assert (=> start!718358 m!8016364))

(declare-fun m!8016366 () Bool)

(assert (=> start!718358 m!8016366))

(push 1)

(assert (not b!7356582))

(assert (not b!7356588))

(assert (not b!7356577))

(assert (not b!7356576))

(assert (not b!7356578))

(assert (not b!7356583))

(assert (not b!7356580))

(assert tp_is_empty!48637)

(assert (not start!718358))

(assert (not b!7356585))

(assert (not b!7356581))

(assert (not b!7356584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2281585 () Bool)

(declare-fun c!1366853 () Bool)

(assert (=> d!2281585 (= c!1366853 (and (is-ElementMatch!19196 r1!2370) (= (c!1366838 r1!2370) c!10362)))))

(declare-fun e!4404747 () (Set Context!16272))

(assert (=> d!2281585 (= (derivationStepZipperDown!3022 r1!2370 ct1!282 c!10362) e!4404747)))

(declare-fun bm!673615 () Bool)

(declare-fun call!673620 () List!71692)

(declare-fun call!673625 () List!71692)

(assert (=> bm!673615 (= call!673620 call!673625)))

(declare-fun b!7356650 () Bool)

(declare-fun e!4404751 () (Set Context!16272))

(declare-fun call!673622 () (Set Context!16272))

(declare-fun call!673621 () (Set Context!16272))

(assert (=> b!7356650 (= e!4404751 (set.union call!673622 call!673621))))

(declare-fun bm!673616 () Bool)

(declare-fun c!1366854 () Bool)

(declare-fun c!1366852 () Bool)

(declare-fun $colon$colon!3193 (List!71692 Regex!19196) List!71692)

(assert (=> bm!673616 (= call!673625 ($colon$colon!3193 (exprs!8636 ct1!282) (ite (or c!1366852 c!1366854) (regTwo!38904 r1!2370) r1!2370)))))

(declare-fun b!7356651 () Bool)

(assert (=> b!7356651 (= e!4404747 (set.insert ct1!282 (as set.empty (Set Context!16272))))))

(declare-fun b!7356652 () Bool)

(declare-fun e!4404752 () Bool)

(assert (=> b!7356652 (= c!1366852 e!4404752)))

(declare-fun res!2970505 () Bool)

(assert (=> b!7356652 (=> (not res!2970505) (not e!4404752))))

(assert (=> b!7356652 (= res!2970505 (is-Concat!28041 r1!2370))))

(declare-fun e!4404750 () (Set Context!16272))

(assert (=> b!7356652 (= e!4404750 e!4404751)))

(declare-fun b!7356653 () Bool)

(declare-fun e!4404749 () (Set Context!16272))

(declare-fun call!673624 () (Set Context!16272))

(assert (=> b!7356653 (= e!4404749 call!673624)))

(declare-fun b!7356654 () Bool)

(declare-fun e!4404748 () (Set Context!16272))

(assert (=> b!7356654 (= e!4404748 call!673624)))

(declare-fun bm!673617 () Bool)

(declare-fun c!1366850 () Bool)

(assert (=> bm!673617 (= call!673622 (derivationStepZipperDown!3022 (ite c!1366850 (regTwo!38905 r1!2370) (regOne!38904 r1!2370)) (ite c!1366850 ct1!282 (Context!16273 call!673625)) c!10362))))

(declare-fun b!7356655 () Bool)

(declare-fun call!673623 () (Set Context!16272))

(assert (=> b!7356655 (= e!4404750 (set.union call!673623 call!673622))))

(declare-fun b!7356656 () Bool)

(assert (=> b!7356656 (= e!4404749 (as set.empty (Set Context!16272)))))

(declare-fun bm!673618 () Bool)

(assert (=> bm!673618 (= call!673623 (derivationStepZipperDown!3022 (ite c!1366850 (regOne!38905 r1!2370) (ite c!1366852 (regTwo!38904 r1!2370) (ite c!1366854 (regOne!38904 r1!2370) (reg!19525 r1!2370)))) (ite (or c!1366850 c!1366852) ct1!282 (Context!16273 call!673620)) c!10362))))

(declare-fun b!7356657 () Bool)

(assert (=> b!7356657 (= e!4404751 e!4404748)))

(assert (=> b!7356657 (= c!1366854 (is-Concat!28041 r1!2370))))

(declare-fun b!7356658 () Bool)

(assert (=> b!7356658 (= e!4404752 (nullable!8287 (regOne!38904 r1!2370)))))

(declare-fun bm!673619 () Bool)

(assert (=> bm!673619 (= call!673621 call!673623)))

(declare-fun b!7356659 () Bool)

(declare-fun c!1366851 () Bool)

(assert (=> b!7356659 (= c!1366851 (is-Star!19196 r1!2370))))

(assert (=> b!7356659 (= e!4404748 e!4404749)))

(declare-fun b!7356660 () Bool)

(assert (=> b!7356660 (= e!4404747 e!4404750)))

(assert (=> b!7356660 (= c!1366850 (is-Union!19196 r1!2370))))

(declare-fun bm!673620 () Bool)

(assert (=> bm!673620 (= call!673624 call!673621)))

(assert (= (and d!2281585 c!1366853) b!7356651))

(assert (= (and d!2281585 (not c!1366853)) b!7356660))

(assert (= (and b!7356660 c!1366850) b!7356655))

(assert (= (and b!7356660 (not c!1366850)) b!7356652))

(assert (= (and b!7356652 res!2970505) b!7356658))

(assert (= (and b!7356652 c!1366852) b!7356650))

(assert (= (and b!7356652 (not c!1366852)) b!7356657))

(assert (= (and b!7356657 c!1366854) b!7356654))

(assert (= (and b!7356657 (not c!1366854)) b!7356659))

(assert (= (and b!7356659 c!1366851) b!7356653))

(assert (= (and b!7356659 (not c!1366851)) b!7356656))

(assert (= (or b!7356654 b!7356653) bm!673615))

(assert (= (or b!7356654 b!7356653) bm!673620))

(assert (= (or b!7356650 bm!673620) bm!673619))

(assert (= (or b!7356650 bm!673615) bm!673616))

(assert (= (or b!7356655 b!7356650) bm!673617))

(assert (= (or b!7356655 bm!673619) bm!673618))

(declare-fun m!8016390 () Bool)

(assert (=> bm!673618 m!8016390))

(declare-fun m!8016392 () Bool)

(assert (=> b!7356651 m!8016392))

(assert (=> b!7356658 m!8016352))

(declare-fun m!8016394 () Bool)

(assert (=> bm!673616 m!8016394))

(declare-fun m!8016396 () Bool)

(assert (=> bm!673617 m!8016396))

(assert (=> b!7356580 d!2281585))

(declare-fun d!2281589 () Bool)

(declare-fun nullableFct!3314 (Regex!19196) Bool)

(assert (=> d!2281589 (= (nullable!8287 (regOne!38904 r1!2370)) (nullableFct!3314 (regOne!38904 r1!2370)))))

(declare-fun bs!1919808 () Bool)

(assert (= bs!1919808 d!2281589))

(declare-fun m!8016398 () Bool)

(assert (=> bs!1919808 m!8016398))

(assert (=> b!7356577 d!2281589))

(declare-fun d!2281591 () Bool)

(declare-fun res!2970510 () Bool)

(declare-fun e!4404757 () Bool)

(assert (=> d!2281591 (=> res!2970510 e!4404757)))

(assert (=> d!2281591 (= res!2970510 (is-Nil!71568 (exprs!8636 cWitness!61)))))

(assert (=> d!2281591 (= (forall!18016 (exprs!8636 cWitness!61) lambda!457074) e!4404757)))

(declare-fun b!7356665 () Bool)

(declare-fun e!4404758 () Bool)

(assert (=> b!7356665 (= e!4404757 e!4404758)))

(declare-fun res!2970511 () Bool)

(assert (=> b!7356665 (=> (not res!2970511) (not e!4404758))))

(declare-fun dynLambda!29513 (Int Regex!19196) Bool)

(assert (=> b!7356665 (= res!2970511 (dynLambda!29513 lambda!457074 (h!78016 (exprs!8636 cWitness!61))))))

(declare-fun b!7356666 () Bool)

(assert (=> b!7356666 (= e!4404758 (forall!18016 (t!386135 (exprs!8636 cWitness!61)) lambda!457074))))

(assert (= (and d!2281591 (not res!2970510)) b!7356665))

(assert (= (and b!7356665 res!2970511) b!7356666))

(declare-fun b_lambda!284267 () Bool)

(assert (=> (not b_lambda!284267) (not b!7356665)))

(declare-fun m!8016400 () Bool)

(assert (=> b!7356665 m!8016400))

(declare-fun m!8016402 () Bool)

(assert (=> b!7356666 m!8016402))

(assert (=> b!7356576 d!2281591))

(declare-fun b!7356707 () Bool)

(declare-fun e!4404789 () Bool)

(declare-fun e!4404791 () Bool)

(assert (=> b!7356707 (= e!4404789 e!4404791)))

(declare-fun res!2970528 () Bool)

(assert (=> b!7356707 (= res!2970528 (not (nullable!8287 (reg!19525 r1!2370))))))

(assert (=> b!7356707 (=> (not res!2970528) (not e!4404791))))

(declare-fun b!7356709 () Bool)

(declare-fun e!4404790 () Bool)

(assert (=> b!7356709 (= e!4404790 e!4404789)))

(declare-fun c!1366870 () Bool)

(assert (=> b!7356709 (= c!1366870 (is-Star!19196 r1!2370))))

(declare-fun bm!673633 () Bool)

(declare-fun call!673640 () Bool)

(declare-fun c!1366869 () Bool)

(assert (=> bm!673633 (= call!673640 (validRegex!9792 (ite c!1366869 (regTwo!38905 r1!2370) (regOne!38904 r1!2370))))))

(declare-fun bm!673634 () Bool)

(declare-fun call!673639 () Bool)

(assert (=> bm!673634 (= call!673639 (validRegex!9792 (ite c!1366870 (reg!19525 r1!2370) (ite c!1366869 (regOne!38905 r1!2370) (regTwo!38904 r1!2370)))))))

(declare-fun b!7356710 () Bool)

(declare-fun e!4404788 () Bool)

(declare-fun call!673638 () Bool)

(assert (=> b!7356710 (= e!4404788 call!673638)))

(declare-fun b!7356711 () Bool)

(declare-fun res!2970527 () Bool)

(declare-fun e!4404787 () Bool)

(assert (=> b!7356711 (=> (not res!2970527) (not e!4404787))))

(assert (=> b!7356711 (= res!2970527 call!673638)))

(declare-fun e!4404785 () Bool)

(assert (=> b!7356711 (= e!4404785 e!4404787)))

(declare-fun b!7356712 () Bool)

(assert (=> b!7356712 (= e!4404787 call!673640)))

(declare-fun d!2281593 () Bool)

(declare-fun res!2970524 () Bool)

(assert (=> d!2281593 (=> res!2970524 e!4404790)))

(assert (=> d!2281593 (= res!2970524 (is-ElementMatch!19196 r1!2370))))

(assert (=> d!2281593 (= (validRegex!9792 r1!2370) e!4404790)))

(declare-fun b!7356708 () Bool)

(assert (=> b!7356708 (= e!4404789 e!4404785)))

(assert (=> b!7356708 (= c!1366869 (is-Union!19196 r1!2370))))

(declare-fun bm!673635 () Bool)

(assert (=> bm!673635 (= call!673638 call!673639)))

(declare-fun b!7356713 () Bool)

(assert (=> b!7356713 (= e!4404791 call!673639)))

(declare-fun b!7356714 () Bool)

(declare-fun e!4404786 () Bool)

(assert (=> b!7356714 (= e!4404786 e!4404788)))

(declare-fun res!2970525 () Bool)

(assert (=> b!7356714 (=> (not res!2970525) (not e!4404788))))

(assert (=> b!7356714 (= res!2970525 call!673640)))

(declare-fun b!7356715 () Bool)

(declare-fun res!2970526 () Bool)

(assert (=> b!7356715 (=> res!2970526 e!4404786)))

(assert (=> b!7356715 (= res!2970526 (not (is-Concat!28041 r1!2370)))))

(assert (=> b!7356715 (= e!4404785 e!4404786)))

(assert (= (and d!2281593 (not res!2970524)) b!7356709))

(assert (= (and b!7356709 c!1366870) b!7356707))

(assert (= (and b!7356709 (not c!1366870)) b!7356708))

(assert (= (and b!7356707 res!2970528) b!7356713))

(assert (= (and b!7356708 c!1366869) b!7356711))

(assert (= (and b!7356708 (not c!1366869)) b!7356715))

(assert (= (and b!7356711 res!2970527) b!7356712))

(assert (= (and b!7356715 (not res!2970526)) b!7356714))

(assert (= (and b!7356714 res!2970525) b!7356710))

(assert (= (or b!7356711 b!7356710) bm!673635))

(assert (= (or b!7356712 b!7356714) bm!673633))

(assert (= (or b!7356713 bm!673635) bm!673634))

(declare-fun m!8016404 () Bool)

(assert (=> b!7356707 m!8016404))

(declare-fun m!8016406 () Bool)

(assert (=> bm!673633 m!8016406))

(declare-fun m!8016408 () Bool)

(assert (=> bm!673634 m!8016408))

(assert (=> start!718358 d!2281593))

(declare-fun bs!1919809 () Bool)

(declare-fun d!2281595 () Bool)

(assert (= bs!1919809 (and d!2281595 b!7356578)))

(declare-fun lambda!457082 () Int)

(assert (=> bs!1919809 (= lambda!457082 lambda!457074)))

(assert (=> d!2281595 (= (inv!91331 cWitness!61) (forall!18016 (exprs!8636 cWitness!61) lambda!457082))))

(declare-fun bs!1919810 () Bool)

(assert (= bs!1919810 d!2281595))

(declare-fun m!8016410 () Bool)

(assert (=> bs!1919810 m!8016410))

(assert (=> start!718358 d!2281595))

(declare-fun bs!1919811 () Bool)

(declare-fun d!2281597 () Bool)

(assert (= bs!1919811 (and d!2281597 b!7356578)))

(declare-fun lambda!457083 () Int)

(assert (=> bs!1919811 (= lambda!457083 lambda!457074)))

(declare-fun bs!1919812 () Bool)

(assert (= bs!1919812 (and d!2281597 d!2281595)))

(assert (=> bs!1919812 (= lambda!457083 lambda!457082)))

(assert (=> d!2281597 (= (inv!91331 ct1!282) (forall!18016 (exprs!8636 ct1!282) lambda!457083))))

(declare-fun bs!1919813 () Bool)

(assert (= bs!1919813 d!2281597))

(declare-fun m!8016412 () Bool)

(assert (=> bs!1919813 m!8016412))

(assert (=> start!718358 d!2281597))

(declare-fun bs!1919814 () Bool)

(declare-fun d!2281599 () Bool)

(assert (= bs!1919814 (and d!2281599 b!7356578)))

(declare-fun lambda!457084 () Int)

(assert (=> bs!1919814 (= lambda!457084 lambda!457074)))

(declare-fun bs!1919815 () Bool)

(assert (= bs!1919815 (and d!2281599 d!2281595)))

(assert (=> bs!1919815 (= lambda!457084 lambda!457082)))

(declare-fun bs!1919816 () Bool)

(assert (= bs!1919816 (and d!2281599 d!2281597)))

(assert (=> bs!1919816 (= lambda!457084 lambda!457083)))

(assert (=> d!2281599 (= (inv!91331 ct2!378) (forall!18016 (exprs!8636 ct2!378) lambda!457084))))

(declare-fun bs!1919817 () Bool)

(assert (= bs!1919817 d!2281599))

(declare-fun m!8016414 () Bool)

(assert (=> bs!1919817 m!8016414))

(assert (=> start!718358 d!2281599))

(declare-fun d!2281601 () Bool)

(declare-fun c!1366874 () Bool)

(assert (=> d!2281601 (= c!1366874 (and (is-ElementMatch!19196 r1!2370) (= (c!1366838 r1!2370) c!10362)))))

(declare-fun e!4404792 () (Set Context!16272))

(assert (=> d!2281601 (= (derivationStepZipperDown!3022 r1!2370 (Context!16273 (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378))) c!10362) e!4404792)))

(declare-fun bm!673642 () Bool)

(declare-fun call!673647 () List!71692)

(declare-fun call!673652 () List!71692)

(assert (=> bm!673642 (= call!673647 call!673652)))

(declare-fun b!7356716 () Bool)

(declare-fun e!4404796 () (Set Context!16272))

(declare-fun call!673649 () (Set Context!16272))

(declare-fun call!673648 () (Set Context!16272))

(assert (=> b!7356716 (= e!4404796 (set.union call!673649 call!673648))))

(declare-fun c!1366875 () Bool)

(declare-fun bm!673643 () Bool)

(declare-fun c!1366873 () Bool)

(assert (=> bm!673643 (= call!673652 ($colon$colon!3193 (exprs!8636 (Context!16273 (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378)))) (ite (or c!1366873 c!1366875) (regTwo!38904 r1!2370) r1!2370)))))

(declare-fun b!7356717 () Bool)

(assert (=> b!7356717 (= e!4404792 (set.insert (Context!16273 (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378))) (as set.empty (Set Context!16272))))))

(declare-fun b!7356718 () Bool)

(declare-fun e!4404797 () Bool)

(assert (=> b!7356718 (= c!1366873 e!4404797)))

(declare-fun res!2970529 () Bool)

(assert (=> b!7356718 (=> (not res!2970529) (not e!4404797))))

(assert (=> b!7356718 (= res!2970529 (is-Concat!28041 r1!2370))))

(declare-fun e!4404795 () (Set Context!16272))

(assert (=> b!7356718 (= e!4404795 e!4404796)))

(declare-fun b!7356719 () Bool)

(declare-fun e!4404794 () (Set Context!16272))

(declare-fun call!673651 () (Set Context!16272))

(assert (=> b!7356719 (= e!4404794 call!673651)))

(declare-fun b!7356720 () Bool)

(declare-fun e!4404793 () (Set Context!16272))

(assert (=> b!7356720 (= e!4404793 call!673651)))

(declare-fun c!1366871 () Bool)

(declare-fun bm!673644 () Bool)

(assert (=> bm!673644 (= call!673649 (derivationStepZipperDown!3022 (ite c!1366871 (regTwo!38905 r1!2370) (regOne!38904 r1!2370)) (ite c!1366871 (Context!16273 (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378))) (Context!16273 call!673652)) c!10362))))

(declare-fun b!7356721 () Bool)

(declare-fun call!673650 () (Set Context!16272))

(assert (=> b!7356721 (= e!4404795 (set.union call!673650 call!673649))))

(declare-fun b!7356722 () Bool)

(assert (=> b!7356722 (= e!4404794 (as set.empty (Set Context!16272)))))

(declare-fun bm!673645 () Bool)

(assert (=> bm!673645 (= call!673650 (derivationStepZipperDown!3022 (ite c!1366871 (regOne!38905 r1!2370) (ite c!1366873 (regTwo!38904 r1!2370) (ite c!1366875 (regOne!38904 r1!2370) (reg!19525 r1!2370)))) (ite (or c!1366871 c!1366873) (Context!16273 (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378))) (Context!16273 call!673647)) c!10362))))

(declare-fun b!7356723 () Bool)

(assert (=> b!7356723 (= e!4404796 e!4404793)))

(assert (=> b!7356723 (= c!1366875 (is-Concat!28041 r1!2370))))

(declare-fun b!7356724 () Bool)

(assert (=> b!7356724 (= e!4404797 (nullable!8287 (regOne!38904 r1!2370)))))

(declare-fun bm!673646 () Bool)

(assert (=> bm!673646 (= call!673648 call!673650)))

(declare-fun b!7356725 () Bool)

(declare-fun c!1366872 () Bool)

(assert (=> b!7356725 (= c!1366872 (is-Star!19196 r1!2370))))

(assert (=> b!7356725 (= e!4404793 e!4404794)))

(declare-fun b!7356726 () Bool)

(assert (=> b!7356726 (= e!4404792 e!4404795)))

(assert (=> b!7356726 (= c!1366871 (is-Union!19196 r1!2370))))

(declare-fun bm!673647 () Bool)

(assert (=> bm!673647 (= call!673651 call!673648)))

(assert (= (and d!2281601 c!1366874) b!7356717))

(assert (= (and d!2281601 (not c!1366874)) b!7356726))

(assert (= (and b!7356726 c!1366871) b!7356721))

(assert (= (and b!7356726 (not c!1366871)) b!7356718))

(assert (= (and b!7356718 res!2970529) b!7356724))

(assert (= (and b!7356718 c!1366873) b!7356716))

(assert (= (and b!7356718 (not c!1366873)) b!7356723))

(assert (= (and b!7356723 c!1366875) b!7356720))

(assert (= (and b!7356723 (not c!1366875)) b!7356725))

(assert (= (and b!7356725 c!1366872) b!7356719))

(assert (= (and b!7356725 (not c!1366872)) b!7356722))

(assert (= (or b!7356720 b!7356719) bm!673642))

(assert (= (or b!7356720 b!7356719) bm!673647))

(assert (= (or b!7356716 bm!673647) bm!673646))

(assert (= (or b!7356716 bm!673642) bm!673643))

(assert (= (or b!7356721 b!7356716) bm!673644))

(assert (= (or b!7356721 bm!673646) bm!673645))

(declare-fun m!8016416 () Bool)

(assert (=> bm!673645 m!8016416))

(declare-fun m!8016418 () Bool)

(assert (=> b!7356717 m!8016418))

(assert (=> b!7356724 m!8016352))

(declare-fun m!8016420 () Bool)

(assert (=> bm!673643 m!8016420))

(declare-fun m!8016422 () Bool)

(assert (=> bm!673644 m!8016422))

(assert (=> b!7356578 d!2281601))

(declare-fun b!7356736 () Bool)

(declare-fun e!4404802 () List!71692)

(assert (=> b!7356736 (= e!4404802 (Cons!71568 (h!78016 (exprs!8636 ct1!282)) (++!17014 (t!386135 (exprs!8636 ct1!282)) (exprs!8636 ct2!378))))))

(declare-fun b!7356738 () Bool)

(declare-fun lt!2613408 () List!71692)

(declare-fun e!4404803 () Bool)

(assert (=> b!7356738 (= e!4404803 (or (not (= (exprs!8636 ct2!378) Nil!71568)) (= lt!2613408 (exprs!8636 ct1!282))))))

(declare-fun b!7356735 () Bool)

(assert (=> b!7356735 (= e!4404802 (exprs!8636 ct2!378))))

(declare-fun d!2281603 () Bool)

(assert (=> d!2281603 e!4404803))

(declare-fun res!2970535 () Bool)

(assert (=> d!2281603 (=> (not res!2970535) (not e!4404803))))

(declare-fun content!15099 (List!71692) (Set Regex!19196))

(assert (=> d!2281603 (= res!2970535 (= (content!15099 lt!2613408) (set.union (content!15099 (exprs!8636 ct1!282)) (content!15099 (exprs!8636 ct2!378)))))))

(assert (=> d!2281603 (= lt!2613408 e!4404802)))

(declare-fun c!1366878 () Bool)

(assert (=> d!2281603 (= c!1366878 (is-Nil!71568 (exprs!8636 ct1!282)))))

(assert (=> d!2281603 (= (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378)) lt!2613408)))

(declare-fun b!7356737 () Bool)

(declare-fun res!2970534 () Bool)

(assert (=> b!7356737 (=> (not res!2970534) (not e!4404803))))

(declare-fun size!42077 (List!71692) Int)

(assert (=> b!7356737 (= res!2970534 (= (size!42077 lt!2613408) (+ (size!42077 (exprs!8636 ct1!282)) (size!42077 (exprs!8636 ct2!378)))))))

(assert (= (and d!2281603 c!1366878) b!7356735))

(assert (= (and d!2281603 (not c!1366878)) b!7356736))

(assert (= (and d!2281603 res!2970535) b!7356737))

(assert (= (and b!7356737 res!2970534) b!7356738))

(declare-fun m!8016424 () Bool)

(assert (=> b!7356736 m!8016424))

(declare-fun m!8016426 () Bool)

(assert (=> d!2281603 m!8016426))

(declare-fun m!8016428 () Bool)

(assert (=> d!2281603 m!8016428))

(declare-fun m!8016430 () Bool)

(assert (=> d!2281603 m!8016430))

(declare-fun m!8016432 () Bool)

(assert (=> b!7356737 m!8016432))

(declare-fun m!8016434 () Bool)

(assert (=> b!7356737 m!8016434))

(declare-fun m!8016436 () Bool)

(assert (=> b!7356737 m!8016436))

(assert (=> b!7356578 d!2281603))

(declare-fun d!2281605 () Bool)

(assert (=> d!2281605 (forall!18016 (++!17014 (exprs!8636 ct1!282) (exprs!8636 ct2!378)) lambda!457074)))

(declare-fun lt!2613411 () Unit!165345)

(declare-fun choose!57228 (List!71692 List!71692 Int) Unit!165345)

(assert (=> d!2281605 (= lt!2613411 (choose!57228 (exprs!8636 ct1!282) (exprs!8636 ct2!378) lambda!457074))))

(assert (=> d!2281605 (forall!18016 (exprs!8636 ct1!282) lambda!457074)))

(assert (=> d!2281605 (= (lemmaConcatPreservesForall!1871 (exprs!8636 ct1!282) (exprs!8636 ct2!378) lambda!457074) lt!2613411)))

(declare-fun bs!1919818 () Bool)

(assert (= bs!1919818 d!2281605))

(assert (=> bs!1919818 m!8016346))

(assert (=> bs!1919818 m!8016346))

(declare-fun m!8016438 () Bool)

(assert (=> bs!1919818 m!8016438))

(declare-fun m!8016440 () Bool)

(assert (=> bs!1919818 m!8016440))

(declare-fun m!8016442 () Bool)

(assert (=> bs!1919818 m!8016442))

(assert (=> b!7356578 d!2281605))

(declare-fun b!7356760 () Bool)

(declare-fun e!4404812 () Bool)

(assert (=> b!7356760 (= e!4404812 tp_is_empty!48637)))

(assert (=> b!7356585 (= tp!2089744 e!4404812)))

(declare-fun b!7356763 () Bool)

(declare-fun tp!2089789 () Bool)

(declare-fun tp!2089786 () Bool)

(assert (=> b!7356763 (= e!4404812 (and tp!2089789 tp!2089786))))

(declare-fun b!7356762 () Bool)

(declare-fun tp!2089790 () Bool)

(assert (=> b!7356762 (= e!4404812 tp!2089790)))

(declare-fun b!7356761 () Bool)

(declare-fun tp!2089787 () Bool)

(declare-fun tp!2089788 () Bool)

(assert (=> b!7356761 (= e!4404812 (and tp!2089787 tp!2089788))))

(assert (= (and b!7356585 (is-ElementMatch!19196 (reg!19525 r1!2370))) b!7356760))

(assert (= (and b!7356585 (is-Concat!28041 (reg!19525 r1!2370))) b!7356761))

(assert (= (and b!7356585 (is-Star!19196 (reg!19525 r1!2370))) b!7356762))

(assert (= (and b!7356585 (is-Union!19196 (reg!19525 r1!2370))) b!7356763))

(declare-fun b!7356768 () Bool)

(declare-fun e!4404815 () Bool)

(declare-fun tp!2089795 () Bool)

(declare-fun tp!2089796 () Bool)

(assert (=> b!7356768 (= e!4404815 (and tp!2089795 tp!2089796))))

(assert (=> b!7356584 (= tp!2089745 e!4404815)))

(assert (= (and b!7356584 (is-Cons!71568 (exprs!8636 cWitness!61))) b!7356768))

(declare-fun b!7356769 () Bool)

(declare-fun e!4404816 () Bool)

(assert (=> b!7356769 (= e!4404816 tp_is_empty!48637)))

(assert (=> b!7356581 (= tp!2089746 e!4404816)))

(declare-fun b!7356772 () Bool)

(declare-fun tp!2089800 () Bool)

(declare-fun tp!2089797 () Bool)

(assert (=> b!7356772 (= e!4404816 (and tp!2089800 tp!2089797))))

(declare-fun b!7356771 () Bool)

(declare-fun tp!2089801 () Bool)

(assert (=> b!7356771 (= e!4404816 tp!2089801)))

(declare-fun b!7356770 () Bool)

(declare-fun tp!2089798 () Bool)

(declare-fun tp!2089799 () Bool)

(assert (=> b!7356770 (= e!4404816 (and tp!2089798 tp!2089799))))

(assert (= (and b!7356581 (is-ElementMatch!19196 (regOne!38905 r1!2370))) b!7356769))

(assert (= (and b!7356581 (is-Concat!28041 (regOne!38905 r1!2370))) b!7356770))

(assert (= (and b!7356581 (is-Star!19196 (regOne!38905 r1!2370))) b!7356771))

(assert (= (and b!7356581 (is-Union!19196 (regOne!38905 r1!2370))) b!7356772))

(declare-fun b!7356773 () Bool)

(declare-fun e!4404817 () Bool)

(assert (=> b!7356773 (= e!4404817 tp_is_empty!48637)))

(assert (=> b!7356581 (= tp!2089751 e!4404817)))

(declare-fun b!7356776 () Bool)

(declare-fun tp!2089805 () Bool)

(declare-fun tp!2089802 () Bool)

(assert (=> b!7356776 (= e!4404817 (and tp!2089805 tp!2089802))))

(declare-fun b!7356775 () Bool)

(declare-fun tp!2089806 () Bool)

(assert (=> b!7356775 (= e!4404817 tp!2089806)))

(declare-fun b!7356774 () Bool)

(declare-fun tp!2089803 () Bool)

(declare-fun tp!2089804 () Bool)

(assert (=> b!7356774 (= e!4404817 (and tp!2089803 tp!2089804))))

(assert (= (and b!7356581 (is-ElementMatch!19196 (regTwo!38905 r1!2370))) b!7356773))

(assert (= (and b!7356581 (is-Concat!28041 (regTwo!38905 r1!2370))) b!7356774))

(assert (= (and b!7356581 (is-Star!19196 (regTwo!38905 r1!2370))) b!7356775))

(assert (= (and b!7356581 (is-Union!19196 (regTwo!38905 r1!2370))) b!7356776))

(declare-fun b!7356777 () Bool)

(declare-fun e!4404818 () Bool)

(declare-fun tp!2089807 () Bool)

(declare-fun tp!2089808 () Bool)

(assert (=> b!7356777 (= e!4404818 (and tp!2089807 tp!2089808))))

(assert (=> b!7356582 (= tp!2089750 e!4404818)))

(assert (= (and b!7356582 (is-Cons!71568 (exprs!8636 ct2!378))) b!7356777))

(declare-fun b!7356778 () Bool)

(declare-fun e!4404819 () Bool)

(declare-fun tp!2089809 () Bool)

(declare-fun tp!2089810 () Bool)

(assert (=> b!7356778 (= e!4404819 (and tp!2089809 tp!2089810))))

(assert (=> b!7356583 (= tp!2089749 e!4404819)))

(assert (= (and b!7356583 (is-Cons!71568 (exprs!8636 ct1!282))) b!7356778))

(declare-fun b!7356779 () Bool)

(declare-fun e!4404820 () Bool)

(assert (=> b!7356779 (= e!4404820 tp_is_empty!48637)))

(assert (=> b!7356588 (= tp!2089747 e!4404820)))

(declare-fun b!7356782 () Bool)

(declare-fun tp!2089814 () Bool)

(declare-fun tp!2089811 () Bool)

(assert (=> b!7356782 (= e!4404820 (and tp!2089814 tp!2089811))))

(declare-fun b!7356781 () Bool)

(declare-fun tp!2089815 () Bool)

(assert (=> b!7356781 (= e!4404820 tp!2089815)))

(declare-fun b!7356780 () Bool)

(declare-fun tp!2089812 () Bool)

(declare-fun tp!2089813 () Bool)

(assert (=> b!7356780 (= e!4404820 (and tp!2089812 tp!2089813))))

(assert (= (and b!7356588 (is-ElementMatch!19196 (regOne!38904 r1!2370))) b!7356779))

(assert (= (and b!7356588 (is-Concat!28041 (regOne!38904 r1!2370))) b!7356780))

(assert (= (and b!7356588 (is-Star!19196 (regOne!38904 r1!2370))) b!7356781))

(assert (= (and b!7356588 (is-Union!19196 (regOne!38904 r1!2370))) b!7356782))

(declare-fun b!7356783 () Bool)

(declare-fun e!4404821 () Bool)

(assert (=> b!7356783 (= e!4404821 tp_is_empty!48637)))

(assert (=> b!7356588 (= tp!2089748 e!4404821)))

(declare-fun b!7356786 () Bool)

(declare-fun tp!2089819 () Bool)

(declare-fun tp!2089816 () Bool)

(assert (=> b!7356786 (= e!4404821 (and tp!2089819 tp!2089816))))

(declare-fun b!7356785 () Bool)

(declare-fun tp!2089820 () Bool)

(assert (=> b!7356785 (= e!4404821 tp!2089820)))

(declare-fun b!7356784 () Bool)

(declare-fun tp!2089817 () Bool)

(declare-fun tp!2089818 () Bool)

(assert (=> b!7356784 (= e!4404821 (and tp!2089817 tp!2089818))))

(assert (= (and b!7356588 (is-ElementMatch!19196 (regTwo!38904 r1!2370))) b!7356783))

(assert (= (and b!7356588 (is-Concat!28041 (regTwo!38904 r1!2370))) b!7356784))

(assert (= (and b!7356588 (is-Star!19196 (regTwo!38904 r1!2370))) b!7356785))

(assert (= (and b!7356588 (is-Union!19196 (regTwo!38904 r1!2370))) b!7356786))

(declare-fun b_lambda!284269 () Bool)

(assert (= b_lambda!284267 (or b!7356578 b_lambda!284269)))

(declare-fun bs!1919819 () Bool)

(declare-fun d!2281609 () Bool)

(assert (= bs!1919819 (and d!2281609 b!7356578)))

(assert (=> bs!1919819 (= (dynLambda!29513 lambda!457074 (h!78016 (exprs!8636 cWitness!61))) (validRegex!9792 (h!78016 (exprs!8636 cWitness!61))))))

(declare-fun m!8016452 () Bool)

(assert (=> bs!1919819 m!8016452))

(assert (=> b!7356665 d!2281609))

(push 1)

(assert (not b!7356770))

(assert (not b!7356762))

(assert (not b!7356784))

(assert (not b!7356782))

(assert (not b!7356658))

(assert (not b!7356772))

(assert (not b!7356761))

(assert (not b!7356666))

(assert (not d!2281589))

(assert (not b!7356763))

(assert (not bm!673633))

(assert (not b!7356707))

(assert (not bm!673645))

(assert (not bm!673617))

(assert (not b!7356724))

(assert (not b!7356785))

(assert (not b!7356786))

(assert (not b!7356774))

(assert (not b!7356781))

(assert (not b!7356780))

(assert (not b!7356778))

(assert tp_is_empty!48637)

(assert (not bm!673616))

(assert (not b!7356775))

(assert (not d!2281605))

(assert (not bm!673618))

(assert (not b!7356771))

(assert (not b_lambda!284269))

(assert (not b!7356777))

(assert (not bm!673643))

(assert (not d!2281599))

(assert (not b!7356776))

(assert (not bm!673644))

(assert (not bm!673634))

(assert (not b!7356768))

(assert (not d!2281597))

(assert (not d!2281595))

(assert (not b!7356737))

(assert (not bs!1919819))

(assert (not b!7356736))

(assert (not d!2281603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

