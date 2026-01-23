; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708960 () Bool)

(assert start!708960)

(declare-fun b!7267768 () Bool)

(assert (=> b!7267768 true))

(declare-fun b!7267762 () Bool)

(declare-fun e!4358281 () Bool)

(declare-fun tp!2040705 () Bool)

(assert (=> b!7267762 (= e!4358281 tp!2040705)))

(declare-fun b!7267763 () Bool)

(declare-fun e!4358282 () Bool)

(declare-fun tp_is_empty!47021 () Bool)

(declare-fun tp!2040707 () Bool)

(assert (=> b!7267763 (= e!4358282 (and tp_is_empty!47021 tp!2040707))))

(declare-fun b!7267764 () Bool)

(declare-fun res!2946407 () Bool)

(declare-fun e!4358284 () Bool)

(assert (=> b!7267764 (=> (not res!2946407) (not e!4358284))))

(declare-datatypes ((C!37830 0))(
  ( (C!37831 (val!28863 Int)) )
))
(declare-datatypes ((Regex!18778 0))(
  ( (ElementMatch!18778 (c!1352520 C!37830)) (Concat!27623 (regOne!38068 Regex!18778) (regTwo!38068 Regex!18778)) (EmptyExpr!18778) (Star!18778 (reg!19107 Regex!18778)) (EmptyLang!18778) (Union!18778 (regOne!38069 Regex!18778) (regTwo!38069 Regex!18778)) )
))
(declare-datatypes ((List!70871 0))(
  ( (Nil!70747) (Cons!70747 (h!77195 Regex!18778) (t!384941 List!70871)) )
))
(declare-datatypes ((Context!15436 0))(
  ( (Context!15437 (exprs!8218 List!70871)) )
))
(declare-fun ct1!250 () Context!15436)

(declare-fun nullableContext!268 (Context!15436) Bool)

(assert (=> b!7267764 (= res!2946407 (nullableContext!268 ct1!250))))

(declare-fun res!2946405 () Bool)

(assert (=> start!708960 (=> (not res!2946405) (not e!4358284))))

(declare-fun ct2!346 () Context!15436)

(declare-datatypes ((List!70872 0))(
  ( (Nil!70748) (Cons!70748 (h!77196 C!37830) (t!384942 List!70872)) )
))
(declare-fun s!7854 () List!70872)

(declare-fun matchZipper!3682 ((Set Context!15436) List!70872) Bool)

(assert (=> start!708960 (= res!2946405 (matchZipper!3682 (set.insert ct2!346 (as set.empty (Set Context!15436))) s!7854))))

(assert (=> start!708960 e!4358284))

(declare-fun inv!89956 (Context!15436) Bool)

(assert (=> start!708960 (and (inv!89956 ct2!346) e!4358281)))

(assert (=> start!708960 e!4358282))

(declare-fun e!4358285 () Bool)

(assert (=> start!708960 (and (inv!89956 ct1!250) e!4358285)))

(declare-fun b!7267765 () Bool)

(declare-fun e!4358280 () Bool)

(declare-fun lambda!447790 () Int)

(declare-fun forall!17609 (List!70871 Int) Bool)

(assert (=> b!7267765 (= e!4358280 (forall!17609 (exprs!8218 ct2!346) lambda!447790))))

(declare-fun b!7267766 () Bool)

(declare-fun e!4358283 () Bool)

(assert (=> b!7267766 (= e!4358283 e!4358280)))

(declare-fun res!2946403 () Bool)

(assert (=> b!7267766 (=> res!2946403 e!4358280)))

(declare-fun lt!2593098 () List!70871)

(assert (=> b!7267766 (= res!2946403 (not (forall!17609 lt!2593098 lambda!447790)))))

(declare-datatypes ((Unit!164174 0))(
  ( (Unit!164175) )
))
(declare-fun lt!2593099 () Unit!164174)

(declare-fun lemmaConcatPreservesForall!1535 (List!70871 List!70871 Int) Unit!164174)

(assert (=> b!7267766 (= lt!2593099 (lemmaConcatPreservesForall!1535 lt!2593098 (exprs!8218 ct2!346) lambda!447790))))

(declare-fun lt!2593092 () Context!15436)

(assert (=> b!7267766 (matchZipper!3682 (set.insert lt!2593092 (as set.empty (Set Context!15436))) s!7854)))

(declare-fun lt!2593093 () Unit!164174)

(assert (=> b!7267766 (= lt!2593093 (lemmaConcatPreservesForall!1535 lt!2593098 (exprs!8218 ct2!346) lambda!447790))))

(declare-fun lt!2593100 () Unit!164174)

(declare-fun lt!2593096 () Context!15436)

(declare-fun lemmaPrependingNullableCtxStillMatches!15 (Context!15436 Context!15436 List!70872) Unit!164174)

(assert (=> b!7267766 (= lt!2593100 (lemmaPrependingNullableCtxStillMatches!15 lt!2593096 ct2!346 s!7854))))

(declare-fun b!7267767 () Bool)

(declare-fun res!2946404 () Bool)

(declare-fun e!4358287 () Bool)

(assert (=> b!7267767 (=> res!2946404 e!4358287)))

(declare-fun isEmpty!40675 (List!70871) Bool)

(assert (=> b!7267767 (= res!2946404 (isEmpty!40675 (exprs!8218 ct1!250)))))

(assert (=> b!7267768 (= e!4358284 (not e!4358287))))

(declare-fun res!2946400 () Bool)

(assert (=> b!7267768 (=> res!2946400 e!4358287)))

(declare-fun lt!2593107 () (Set Context!15436))

(declare-fun lt!2593109 () (Set Context!15436))

(declare-fun derivationStepZipper!3518 ((Set Context!15436) C!37830) (Set Context!15436))

(assert (=> b!7267768 (= res!2946400 (not (= lt!2593107 (derivationStepZipper!3518 lt!2593109 (h!77196 s!7854)))))))

(declare-fun lt!2593103 () Unit!164174)

(assert (=> b!7267768 (= lt!2593103 (lemmaConcatPreservesForall!1535 (exprs!8218 ct1!250) (exprs!8218 ct2!346) lambda!447790))))

(declare-fun lambda!447791 () Int)

(declare-fun lt!2593101 () Context!15436)

(declare-fun flatMap!2891 ((Set Context!15436) Int) (Set Context!15436))

(declare-fun derivationStepZipperUp!2548 (Context!15436 C!37830) (Set Context!15436))

(assert (=> b!7267768 (= (flatMap!2891 lt!2593109 lambda!447791) (derivationStepZipperUp!2548 lt!2593101 (h!77196 s!7854)))))

(declare-fun lt!2593110 () Unit!164174)

(declare-fun lemmaFlatMapOnSingletonSet!2291 ((Set Context!15436) Context!15436 Int) Unit!164174)

(assert (=> b!7267768 (= lt!2593110 (lemmaFlatMapOnSingletonSet!2291 lt!2593109 lt!2593101 lambda!447791))))

(assert (=> b!7267768 (= lt!2593109 (set.insert lt!2593101 (as set.empty (Set Context!15436))))))

(declare-fun lt!2593102 () Unit!164174)

(assert (=> b!7267768 (= lt!2593102 (lemmaConcatPreservesForall!1535 (exprs!8218 ct1!250) (exprs!8218 ct2!346) lambda!447790))))

(declare-fun lt!2593097 () Unit!164174)

(assert (=> b!7267768 (= lt!2593097 (lemmaConcatPreservesForall!1535 (exprs!8218 ct1!250) (exprs!8218 ct2!346) lambda!447790))))

(declare-fun lt!2593095 () (Set Context!15436))

(assert (=> b!7267768 (= (flatMap!2891 lt!2593095 lambda!447791) (derivationStepZipperUp!2548 ct1!250 (h!77196 s!7854)))))

(declare-fun lt!2593105 () Unit!164174)

(assert (=> b!7267768 (= lt!2593105 (lemmaFlatMapOnSingletonSet!2291 lt!2593095 ct1!250 lambda!447791))))

(assert (=> b!7267768 (= lt!2593095 (set.insert ct1!250 (as set.empty (Set Context!15436))))))

(assert (=> b!7267768 (= lt!2593107 (derivationStepZipperUp!2548 lt!2593101 (h!77196 s!7854)))))

(declare-fun ++!16678 (List!70871 List!70871) List!70871)

(assert (=> b!7267768 (= lt!2593101 (Context!15437 (++!16678 (exprs!8218 ct1!250) (exprs!8218 ct2!346))))))

(declare-fun lt!2593104 () Unit!164174)

(assert (=> b!7267768 (= lt!2593104 (lemmaConcatPreservesForall!1535 (exprs!8218 ct1!250) (exprs!8218 ct2!346) lambda!447790))))

(declare-fun b!7267769 () Bool)

(declare-fun res!2946406 () Bool)

(assert (=> b!7267769 (=> res!2946406 e!4358287)))

(assert (=> b!7267769 (= res!2946406 (not (is-Cons!70747 (exprs!8218 ct1!250))))))

(declare-fun b!7267770 () Bool)

(declare-fun res!2946409 () Bool)

(assert (=> b!7267770 (=> (not res!2946409) (not e!4358284))))

(assert (=> b!7267770 (= res!2946409 (is-Cons!70748 s!7854))))

(declare-fun b!7267771 () Bool)

(declare-fun e!4358286 () Bool)

(assert (=> b!7267771 (= e!4358286 e!4358283)))

(declare-fun res!2946401 () Bool)

(assert (=> b!7267771 (=> res!2946401 e!4358283)))

(declare-fun derivationStepZipperDown!2712 (Regex!18778 Context!15436 C!37830) (Set Context!15436))

(assert (=> b!7267771 (= res!2946401 (not (= lt!2593107 (set.union (derivationStepZipperDown!2712 (h!77195 (exprs!8218 ct1!250)) lt!2593092 (h!77196 s!7854)) (derivationStepZipperUp!2548 lt!2593092 (h!77196 s!7854))))))))

(assert (=> b!7267771 (= lt!2593092 (Context!15437 (++!16678 lt!2593098 (exprs!8218 ct2!346))))))

(declare-fun lt!2593108 () Unit!164174)

(assert (=> b!7267771 (= lt!2593108 (lemmaConcatPreservesForall!1535 lt!2593098 (exprs!8218 ct2!346) lambda!447790))))

(declare-fun lt!2593094 () Unit!164174)

(assert (=> b!7267771 (= lt!2593094 (lemmaConcatPreservesForall!1535 lt!2593098 (exprs!8218 ct2!346) lambda!447790))))

(declare-fun b!7267772 () Bool)

(declare-fun tp!2040706 () Bool)

(assert (=> b!7267772 (= e!4358285 tp!2040706)))

(declare-fun b!7267773 () Bool)

(assert (=> b!7267773 (= e!4358287 e!4358286)))

(declare-fun res!2946408 () Bool)

(assert (=> b!7267773 (=> res!2946408 e!4358286)))

(declare-fun nullable!7978 (Regex!18778) Bool)

(assert (=> b!7267773 (= res!2946408 (not (nullable!7978 (h!77195 (exprs!8218 ct1!250)))))))

(declare-fun lt!2593106 () (Set Context!15436))

(assert (=> b!7267773 (= lt!2593106 (derivationStepZipperUp!2548 ct1!250 (h!77196 s!7854)))))

(assert (=> b!7267773 (= lt!2593096 (Context!15437 lt!2593098))))

(declare-fun tail!14462 (List!70871) List!70871)

(assert (=> b!7267773 (= lt!2593098 (tail!14462 (exprs!8218 ct1!250)))))

(declare-fun b!7267774 () Bool)

(declare-fun res!2946402 () Bool)

(assert (=> b!7267774 (=> res!2946402 e!4358286)))

(assert (=> b!7267774 (= res!2946402 (not (= lt!2593106 (set.union (derivationStepZipperDown!2712 (h!77195 (exprs!8218 ct1!250)) lt!2593096 (h!77196 s!7854)) (derivationStepZipperUp!2548 lt!2593096 (h!77196 s!7854))))))))

(assert (= (and start!708960 res!2946405) b!7267764))

(assert (= (and b!7267764 res!2946407) b!7267770))

(assert (= (and b!7267770 res!2946409) b!7267768))

(assert (= (and b!7267768 (not res!2946400)) b!7267769))

(assert (= (and b!7267769 (not res!2946406)) b!7267767))

(assert (= (and b!7267767 (not res!2946404)) b!7267773))

(assert (= (and b!7267773 (not res!2946408)) b!7267774))

(assert (= (and b!7267774 (not res!2946402)) b!7267771))

(assert (= (and b!7267771 (not res!2946401)) b!7267766))

(assert (= (and b!7267766 (not res!2946403)) b!7267765))

(assert (= start!708960 b!7267762))

(assert (= (and start!708960 (is-Cons!70748 s!7854)) b!7267763))

(assert (= start!708960 b!7267772))

(declare-fun m!7952642 () Bool)

(assert (=> b!7267773 m!7952642))

(declare-fun m!7952644 () Bool)

(assert (=> b!7267773 m!7952644))

(declare-fun m!7952646 () Bool)

(assert (=> b!7267773 m!7952646))

(declare-fun m!7952648 () Bool)

(assert (=> b!7267765 m!7952648))

(declare-fun m!7952650 () Bool)

(assert (=> b!7267768 m!7952650))

(assert (=> b!7267768 m!7952650))

(assert (=> b!7267768 m!7952644))

(declare-fun m!7952652 () Bool)

(assert (=> b!7267768 m!7952652))

(declare-fun m!7952654 () Bool)

(assert (=> b!7267768 m!7952654))

(assert (=> b!7267768 m!7952650))

(declare-fun m!7952656 () Bool)

(assert (=> b!7267768 m!7952656))

(declare-fun m!7952658 () Bool)

(assert (=> b!7267768 m!7952658))

(declare-fun m!7952660 () Bool)

(assert (=> b!7267768 m!7952660))

(declare-fun m!7952662 () Bool)

(assert (=> b!7267768 m!7952662))

(declare-fun m!7952664 () Bool)

(assert (=> b!7267768 m!7952664))

(declare-fun m!7952666 () Bool)

(assert (=> b!7267768 m!7952666))

(assert (=> b!7267768 m!7952650))

(declare-fun m!7952668 () Bool)

(assert (=> b!7267768 m!7952668))

(declare-fun m!7952670 () Bool)

(assert (=> b!7267771 m!7952670))

(declare-fun m!7952672 () Bool)

(assert (=> b!7267771 m!7952672))

(assert (=> b!7267771 m!7952672))

(declare-fun m!7952674 () Bool)

(assert (=> b!7267771 m!7952674))

(declare-fun m!7952676 () Bool)

(assert (=> b!7267771 m!7952676))

(declare-fun m!7952678 () Bool)

(assert (=> b!7267767 m!7952678))

(declare-fun m!7952680 () Bool)

(assert (=> b!7267774 m!7952680))

(declare-fun m!7952682 () Bool)

(assert (=> b!7267774 m!7952682))

(declare-fun m!7952684 () Bool)

(assert (=> b!7267766 m!7952684))

(assert (=> b!7267766 m!7952672))

(declare-fun m!7952686 () Bool)

(assert (=> b!7267766 m!7952686))

(assert (=> b!7267766 m!7952686))

(declare-fun m!7952688 () Bool)

(assert (=> b!7267766 m!7952688))

(declare-fun m!7952690 () Bool)

(assert (=> b!7267766 m!7952690))

(assert (=> b!7267766 m!7952672))

(declare-fun m!7952692 () Bool)

(assert (=> start!708960 m!7952692))

(assert (=> start!708960 m!7952692))

(declare-fun m!7952694 () Bool)

(assert (=> start!708960 m!7952694))

(declare-fun m!7952696 () Bool)

(assert (=> start!708960 m!7952696))

(declare-fun m!7952698 () Bool)

(assert (=> start!708960 m!7952698))

(declare-fun m!7952700 () Bool)

(assert (=> b!7267764 m!7952700))

(push 1)

(assert (not b!7267773))

(assert tp_is_empty!47021)

(assert (not start!708960))

(assert (not b!7267765))

(assert (not b!7267774))

(assert (not b!7267768))

(assert (not b!7267762))

(assert (not b!7267771))

(assert (not b!7267767))

(assert (not b!7267764))

(assert (not b!7267766))

(assert (not b!7267772))

(assert (not b!7267763))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7267852 () Bool)

(declare-fun e!4358330 () (Set Context!15436))

(declare-fun call!662574 () (Set Context!15436))

(declare-fun call!662579 () (Set Context!15436))

(assert (=> b!7267852 (= e!4358330 (set.union call!662574 call!662579))))

(declare-fun b!7267853 () Bool)

(declare-fun e!4358334 () (Set Context!15436))

(assert (=> b!7267853 (= e!4358334 (as set.empty (Set Context!15436)))))

(declare-fun b!7267854 () Bool)

(declare-fun c!1352540 () Bool)

(assert (=> b!7267854 (= c!1352540 (is-Star!18778 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun e!4358335 () (Set Context!15436))

(assert (=> b!7267854 (= e!4358335 e!4358334)))

(declare-fun bm!662569 () Bool)

(declare-fun call!662578 () List!70871)

(declare-fun call!662575 () List!70871)

(assert (=> bm!662569 (= call!662578 call!662575)))

(declare-fun bm!662570 () Bool)

(declare-fun c!1352543 () Bool)

(declare-fun c!1352542 () Bool)

(declare-fun $colon$colon!2955 (List!70871 Regex!18778) List!70871)

(assert (=> bm!662570 (= call!662575 ($colon$colon!2955 (exprs!8218 lt!2593096) (ite (or c!1352542 c!1352543) (regTwo!38068 (h!77195 (exprs!8218 ct1!250))) (h!77195 (exprs!8218 ct1!250)))))))

(declare-fun bm!662571 () Bool)

(declare-fun call!662576 () (Set Context!15436))

(assert (=> bm!662571 (= call!662576 call!662579)))

(declare-fun b!7267856 () Bool)

(declare-fun e!4358331 () (Set Context!15436))

(assert (=> b!7267856 (= e!4358331 (set.insert lt!2593096 (as set.empty (Set Context!15436))))))

(declare-fun b!7267857 () Bool)

(declare-fun e!4358333 () (Set Context!15436))

(assert (=> b!7267857 (= e!4358331 e!4358333)))

(declare-fun c!1352541 () Bool)

(assert (=> b!7267857 (= c!1352541 (is-Union!18778 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun b!7267858 () Bool)

(assert (=> b!7267858 (= e!4358334 call!662576)))

(declare-fun b!7267859 () Bool)

(assert (=> b!7267859 (= e!4358330 e!4358335)))

(assert (=> b!7267859 (= c!1352543 (is-Concat!27623 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun b!7267860 () Bool)

(declare-fun e!4358332 () Bool)

(assert (=> b!7267860 (= c!1352542 e!4358332)))

(declare-fun res!2946448 () Bool)

(assert (=> b!7267860 (=> (not res!2946448) (not e!4358332))))

(assert (=> b!7267860 (= res!2946448 (is-Concat!27623 (h!77195 (exprs!8218 ct1!250))))))

(assert (=> b!7267860 (= e!4358333 e!4358330)))

(declare-fun bm!662572 () Bool)

(assert (=> bm!662572 (= call!662574 (derivationStepZipperDown!2712 (ite c!1352541 (regOne!38069 (h!77195 (exprs!8218 ct1!250))) (regOne!38068 (h!77195 (exprs!8218 ct1!250)))) (ite c!1352541 lt!2593096 (Context!15437 call!662575)) (h!77196 s!7854)))))

(declare-fun bm!662573 () Bool)

(declare-fun call!662577 () (Set Context!15436))

(assert (=> bm!662573 (= call!662579 call!662577)))

(declare-fun b!7267855 () Bool)

(assert (=> b!7267855 (= e!4358332 (nullable!7978 (regOne!38068 (h!77195 (exprs!8218 ct1!250)))))))

(declare-fun d!2261398 () Bool)

(declare-fun c!1352544 () Bool)

(assert (=> d!2261398 (= c!1352544 (and (is-ElementMatch!18778 (h!77195 (exprs!8218 ct1!250))) (= (c!1352520 (h!77195 (exprs!8218 ct1!250))) (h!77196 s!7854))))))

(assert (=> d!2261398 (= (derivationStepZipperDown!2712 (h!77195 (exprs!8218 ct1!250)) lt!2593096 (h!77196 s!7854)) e!4358331)))

(declare-fun b!7267861 () Bool)

(assert (=> b!7267861 (= e!4358333 (set.union call!662574 call!662577))))

(declare-fun b!7267862 () Bool)

(assert (=> b!7267862 (= e!4358335 call!662576)))

(declare-fun bm!662574 () Bool)

(assert (=> bm!662574 (= call!662577 (derivationStepZipperDown!2712 (ite c!1352541 (regTwo!38069 (h!77195 (exprs!8218 ct1!250))) (ite c!1352542 (regTwo!38068 (h!77195 (exprs!8218 ct1!250))) (ite c!1352543 (regOne!38068 (h!77195 (exprs!8218 ct1!250))) (reg!19107 (h!77195 (exprs!8218 ct1!250)))))) (ite (or c!1352541 c!1352542) lt!2593096 (Context!15437 call!662578)) (h!77196 s!7854)))))

(assert (= (and d!2261398 c!1352544) b!7267856))

(assert (= (and d!2261398 (not c!1352544)) b!7267857))

(assert (= (and b!7267857 c!1352541) b!7267861))

(assert (= (and b!7267857 (not c!1352541)) b!7267860))

(assert (= (and b!7267860 res!2946448) b!7267855))

(assert (= (and b!7267860 c!1352542) b!7267852))

(assert (= (and b!7267860 (not c!1352542)) b!7267859))

(assert (= (and b!7267859 c!1352543) b!7267862))

(assert (= (and b!7267859 (not c!1352543)) b!7267854))

(assert (= (and b!7267854 c!1352540) b!7267858))

(assert (= (and b!7267854 (not c!1352540)) b!7267853))

(assert (= (or b!7267862 b!7267858) bm!662569))

(assert (= (or b!7267862 b!7267858) bm!662571))

(assert (= (or b!7267852 bm!662569) bm!662570))

(assert (= (or b!7267852 bm!662571) bm!662573))

(assert (= (or b!7267861 b!7267852) bm!662572))

(assert (= (or b!7267861 bm!662573) bm!662574))

(declare-fun m!7952782 () Bool)

(assert (=> bm!662572 m!7952782))

(declare-fun m!7952784 () Bool)

(assert (=> b!7267855 m!7952784))

(declare-fun m!7952786 () Bool)

(assert (=> b!7267856 m!7952786))

(declare-fun m!7952788 () Bool)

(assert (=> bm!662574 m!7952788))

(declare-fun m!7952790 () Bool)

(assert (=> bm!662570 m!7952790))

(assert (=> b!7267774 d!2261398))

(declare-fun d!2261402 () Bool)

(declare-fun c!1352554 () Bool)

(declare-fun e!4358350 () Bool)

(assert (=> d!2261402 (= c!1352554 e!4358350)))

(declare-fun res!2946453 () Bool)

(assert (=> d!2261402 (=> (not res!2946453) (not e!4358350))))

(assert (=> d!2261402 (= res!2946453 (is-Cons!70747 (exprs!8218 lt!2593096)))))

(declare-fun e!4358349 () (Set Context!15436))

(assert (=> d!2261402 (= (derivationStepZipperUp!2548 lt!2593096 (h!77196 s!7854)) e!4358349)))

(declare-fun call!662584 () (Set Context!15436))

(declare-fun b!7267883 () Bool)

(assert (=> b!7267883 (= e!4358349 (set.union call!662584 (derivationStepZipperUp!2548 (Context!15437 (t!384941 (exprs!8218 lt!2593096))) (h!77196 s!7854))))))

(declare-fun b!7267884 () Bool)

(declare-fun e!4358348 () (Set Context!15436))

(assert (=> b!7267884 (= e!4358348 (as set.empty (Set Context!15436)))))

(declare-fun b!7267885 () Bool)

(assert (=> b!7267885 (= e!4358349 e!4358348)))

(declare-fun c!1352553 () Bool)

(assert (=> b!7267885 (= c!1352553 (is-Cons!70747 (exprs!8218 lt!2593096)))))

(declare-fun b!7267886 () Bool)

(assert (=> b!7267886 (= e!4358350 (nullable!7978 (h!77195 (exprs!8218 lt!2593096))))))

(declare-fun b!7267887 () Bool)

(assert (=> b!7267887 (= e!4358348 call!662584)))

(declare-fun bm!662579 () Bool)

(assert (=> bm!662579 (= call!662584 (derivationStepZipperDown!2712 (h!77195 (exprs!8218 lt!2593096)) (Context!15437 (t!384941 (exprs!8218 lt!2593096))) (h!77196 s!7854)))))

(assert (= (and d!2261402 res!2946453) b!7267886))

(assert (= (and d!2261402 c!1352554) b!7267883))

(assert (= (and d!2261402 (not c!1352554)) b!7267885))

(assert (= (and b!7267885 c!1352553) b!7267887))

(assert (= (and b!7267885 (not c!1352553)) b!7267884))

(assert (= (or b!7267883 b!7267887) bm!662579))

(declare-fun m!7952792 () Bool)

(assert (=> b!7267883 m!7952792))

(declare-fun m!7952794 () Bool)

(assert (=> b!7267886 m!7952794))

(declare-fun m!7952796 () Bool)

(assert (=> bm!662579 m!7952796))

(assert (=> b!7267774 d!2261402))

(declare-fun bs!1910522 () Bool)

(declare-fun d!2261404 () Bool)

(assert (= bs!1910522 (and d!2261404 b!7267768)))

(declare-fun lambda!447821 () Int)

(assert (=> bs!1910522 (not (= lambda!447821 lambda!447790))))

(assert (=> d!2261404 (= (nullableContext!268 ct1!250) (forall!17609 (exprs!8218 ct1!250) lambda!447821))))

(declare-fun bs!1910523 () Bool)

(assert (= bs!1910523 d!2261404))

(declare-fun m!7952798 () Bool)

(assert (=> bs!1910523 m!7952798))

(assert (=> b!7267764 d!2261404))

(declare-fun d!2261406 () Bool)

(declare-fun res!2946459 () Bool)

(declare-fun e!4358358 () Bool)

(assert (=> d!2261406 (=> res!2946459 e!4358358)))

(assert (=> d!2261406 (= res!2946459 (is-Nil!70747 (exprs!8218 ct2!346)))))

(assert (=> d!2261406 (= (forall!17609 (exprs!8218 ct2!346) lambda!447790) e!4358358)))

(declare-fun b!7267897 () Bool)

(declare-fun e!4358359 () Bool)

(assert (=> b!7267897 (= e!4358358 e!4358359)))

(declare-fun res!2946460 () Bool)

(assert (=> b!7267897 (=> (not res!2946460) (not e!4358359))))

(declare-fun dynLambda!28900 (Int Regex!18778) Bool)

(assert (=> b!7267897 (= res!2946460 (dynLambda!28900 lambda!447790 (h!77195 (exprs!8218 ct2!346))))))

(declare-fun b!7267898 () Bool)

(assert (=> b!7267898 (= e!4358359 (forall!17609 (t!384941 (exprs!8218 ct2!346)) lambda!447790))))

(assert (= (and d!2261406 (not res!2946459)) b!7267897))

(assert (= (and b!7267897 res!2946460) b!7267898))

(declare-fun b_lambda!279957 () Bool)

(assert (=> (not b_lambda!279957) (not b!7267897)))

(declare-fun m!7952802 () Bool)

(assert (=> b!7267897 m!7952802))

(declare-fun m!7952804 () Bool)

(assert (=> b!7267898 m!7952804))

(assert (=> b!7267765 d!2261406))

(declare-fun bs!1910524 () Bool)

(declare-fun d!2261408 () Bool)

(assert (= bs!1910524 (and d!2261408 b!7267768)))

(declare-fun lambda!447824 () Int)

(assert (=> bs!1910524 (= lambda!447824 lambda!447790)))

(declare-fun bs!1910525 () Bool)

(assert (= bs!1910525 (and d!2261408 d!2261404)))

(assert (=> bs!1910525 (not (= lambda!447824 lambda!447821))))

(assert (=> d!2261408 (matchZipper!3682 (set.insert (Context!15437 (++!16678 (exprs!8218 lt!2593096) (exprs!8218 ct2!346))) (as set.empty (Set Context!15436))) s!7854)))

(declare-fun lt!2593179 () Unit!164174)

(assert (=> d!2261408 (= lt!2593179 (lemmaConcatPreservesForall!1535 (exprs!8218 lt!2593096) (exprs!8218 ct2!346) lambda!447824))))

(declare-fun lt!2593178 () Unit!164174)

(declare-fun choose!56341 (Context!15436 Context!15436 List!70872) Unit!164174)

(assert (=> d!2261408 (= lt!2593178 (choose!56341 lt!2593096 ct2!346 s!7854))))

(assert (=> d!2261408 (matchZipper!3682 (set.insert ct2!346 (as set.empty (Set Context!15436))) s!7854)))

(assert (=> d!2261408 (= (lemmaPrependingNullableCtxStillMatches!15 lt!2593096 ct2!346 s!7854) lt!2593178)))

(declare-fun bs!1910526 () Bool)

(assert (= bs!1910526 d!2261408))

(declare-fun m!7952810 () Bool)

(assert (=> bs!1910526 m!7952810))

(declare-fun m!7952812 () Bool)

(assert (=> bs!1910526 m!7952812))

(declare-fun m!7952814 () Bool)

(assert (=> bs!1910526 m!7952814))

(assert (=> bs!1910526 m!7952810))

(assert (=> bs!1910526 m!7952692))

(declare-fun m!7952816 () Bool)

(assert (=> bs!1910526 m!7952816))

(declare-fun m!7952818 () Bool)

(assert (=> bs!1910526 m!7952818))

(assert (=> bs!1910526 m!7952692))

(assert (=> bs!1910526 m!7952694))

(assert (=> b!7267766 d!2261408))

(declare-fun d!2261412 () Bool)

(assert (=> d!2261412 (forall!17609 (++!16678 lt!2593098 (exprs!8218 ct2!346)) lambda!447790)))

(declare-fun lt!2593182 () Unit!164174)

(declare-fun choose!56342 (List!70871 List!70871 Int) Unit!164174)

(assert (=> d!2261412 (= lt!2593182 (choose!56342 lt!2593098 (exprs!8218 ct2!346) lambda!447790))))

(assert (=> d!2261412 (forall!17609 lt!2593098 lambda!447790)))

(assert (=> d!2261412 (= (lemmaConcatPreservesForall!1535 lt!2593098 (exprs!8218 ct2!346) lambda!447790) lt!2593182)))

(declare-fun bs!1910527 () Bool)

(assert (= bs!1910527 d!2261412))

(assert (=> bs!1910527 m!7952670))

(assert (=> bs!1910527 m!7952670))

(declare-fun m!7952820 () Bool)

(assert (=> bs!1910527 m!7952820))

(declare-fun m!7952822 () Bool)

(assert (=> bs!1910527 m!7952822))

(assert (=> bs!1910527 m!7952684))

(assert (=> b!7267766 d!2261412))

(declare-fun d!2261414 () Bool)

(declare-fun res!2946463 () Bool)

(declare-fun e!4358372 () Bool)

(assert (=> d!2261414 (=> res!2946463 e!4358372)))

(assert (=> d!2261414 (= res!2946463 (is-Nil!70747 lt!2593098))))

(assert (=> d!2261414 (= (forall!17609 lt!2593098 lambda!447790) e!4358372)))

(declare-fun b!7267921 () Bool)

(declare-fun e!4358373 () Bool)

(assert (=> b!7267921 (= e!4358372 e!4358373)))

(declare-fun res!2946464 () Bool)

(assert (=> b!7267921 (=> (not res!2946464) (not e!4358373))))

(assert (=> b!7267921 (= res!2946464 (dynLambda!28900 lambda!447790 (h!77195 lt!2593098)))))

(declare-fun b!7267922 () Bool)

(assert (=> b!7267922 (= e!4358373 (forall!17609 (t!384941 lt!2593098) lambda!447790))))

(assert (= (and d!2261414 (not res!2946463)) b!7267921))

(assert (= (and b!7267921 res!2946464) b!7267922))

(declare-fun b_lambda!279959 () Bool)

(assert (=> (not b_lambda!279959) (not b!7267921)))

(declare-fun m!7952824 () Bool)

(assert (=> b!7267921 m!7952824))

(declare-fun m!7952826 () Bool)

(assert (=> b!7267922 m!7952826))

(assert (=> b!7267766 d!2261414))

(declare-fun d!2261416 () Bool)

(declare-fun c!1352570 () Bool)

(declare-fun isEmpty!40677 (List!70872) Bool)

(assert (=> d!2261416 (= c!1352570 (isEmpty!40677 s!7854))))

(declare-fun e!4358376 () Bool)

(assert (=> d!2261416 (= (matchZipper!3682 (set.insert lt!2593092 (as set.empty (Set Context!15436))) s!7854) e!4358376)))

(declare-fun b!7267927 () Bool)

(declare-fun nullableZipper!2987 ((Set Context!15436)) Bool)

(assert (=> b!7267927 (= e!4358376 (nullableZipper!2987 (set.insert lt!2593092 (as set.empty (Set Context!15436)))))))

(declare-fun b!7267928 () Bool)

(declare-fun head!14985 (List!70872) C!37830)

(declare-fun tail!14464 (List!70872) List!70872)

(assert (=> b!7267928 (= e!4358376 (matchZipper!3682 (derivationStepZipper!3518 (set.insert lt!2593092 (as set.empty (Set Context!15436))) (head!14985 s!7854)) (tail!14464 s!7854)))))

(assert (= (and d!2261416 c!1352570) b!7267927))

(assert (= (and d!2261416 (not c!1352570)) b!7267928))

(declare-fun m!7952828 () Bool)

(assert (=> d!2261416 m!7952828))

(assert (=> b!7267927 m!7952686))

(declare-fun m!7952830 () Bool)

(assert (=> b!7267927 m!7952830))

(declare-fun m!7952832 () Bool)

(assert (=> b!7267928 m!7952832))

(assert (=> b!7267928 m!7952686))

(assert (=> b!7267928 m!7952832))

(declare-fun m!7952834 () Bool)

(assert (=> b!7267928 m!7952834))

(declare-fun m!7952836 () Bool)

(assert (=> b!7267928 m!7952836))

(assert (=> b!7267928 m!7952834))

(assert (=> b!7267928 m!7952836))

(declare-fun m!7952838 () Bool)

(assert (=> b!7267928 m!7952838))

(assert (=> b!7267766 d!2261416))

(declare-fun b!7267929 () Bool)

(declare-fun e!4358377 () (Set Context!15436))

(declare-fun call!662596 () (Set Context!15436))

(declare-fun call!662601 () (Set Context!15436))

(assert (=> b!7267929 (= e!4358377 (set.union call!662596 call!662601))))

(declare-fun b!7267930 () Bool)

(declare-fun e!4358381 () (Set Context!15436))

(assert (=> b!7267930 (= e!4358381 (as set.empty (Set Context!15436)))))

(declare-fun b!7267931 () Bool)

(declare-fun c!1352571 () Bool)

(assert (=> b!7267931 (= c!1352571 (is-Star!18778 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun e!4358382 () (Set Context!15436))

(assert (=> b!7267931 (= e!4358382 e!4358381)))

(declare-fun bm!662589 () Bool)

(declare-fun call!662600 () List!70871)

(declare-fun call!662597 () List!70871)

(assert (=> bm!662589 (= call!662600 call!662597)))

(declare-fun c!1352574 () Bool)

(declare-fun c!1352573 () Bool)

(declare-fun bm!662590 () Bool)

(assert (=> bm!662590 (= call!662597 ($colon$colon!2955 (exprs!8218 lt!2593092) (ite (or c!1352573 c!1352574) (regTwo!38068 (h!77195 (exprs!8218 ct1!250))) (h!77195 (exprs!8218 ct1!250)))))))

(declare-fun bm!662591 () Bool)

(declare-fun call!662598 () (Set Context!15436))

(assert (=> bm!662591 (= call!662598 call!662601)))

(declare-fun b!7267933 () Bool)

(declare-fun e!4358378 () (Set Context!15436))

(assert (=> b!7267933 (= e!4358378 (set.insert lt!2593092 (as set.empty (Set Context!15436))))))

(declare-fun b!7267934 () Bool)

(declare-fun e!4358380 () (Set Context!15436))

(assert (=> b!7267934 (= e!4358378 e!4358380)))

(declare-fun c!1352572 () Bool)

(assert (=> b!7267934 (= c!1352572 (is-Union!18778 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun b!7267935 () Bool)

(assert (=> b!7267935 (= e!4358381 call!662598)))

(declare-fun b!7267936 () Bool)

(assert (=> b!7267936 (= e!4358377 e!4358382)))

(assert (=> b!7267936 (= c!1352574 (is-Concat!27623 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun b!7267937 () Bool)

(declare-fun e!4358379 () Bool)

(assert (=> b!7267937 (= c!1352573 e!4358379)))

(declare-fun res!2946465 () Bool)

(assert (=> b!7267937 (=> (not res!2946465) (not e!4358379))))

(assert (=> b!7267937 (= res!2946465 (is-Concat!27623 (h!77195 (exprs!8218 ct1!250))))))

(assert (=> b!7267937 (= e!4358380 e!4358377)))

(declare-fun bm!662592 () Bool)

(assert (=> bm!662592 (= call!662596 (derivationStepZipperDown!2712 (ite c!1352572 (regOne!38069 (h!77195 (exprs!8218 ct1!250))) (regOne!38068 (h!77195 (exprs!8218 ct1!250)))) (ite c!1352572 lt!2593092 (Context!15437 call!662597)) (h!77196 s!7854)))))

(declare-fun bm!662593 () Bool)

(declare-fun call!662599 () (Set Context!15436))

(assert (=> bm!662593 (= call!662601 call!662599)))

(declare-fun b!7267932 () Bool)

(assert (=> b!7267932 (= e!4358379 (nullable!7978 (regOne!38068 (h!77195 (exprs!8218 ct1!250)))))))

(declare-fun d!2261418 () Bool)

(declare-fun c!1352575 () Bool)

(assert (=> d!2261418 (= c!1352575 (and (is-ElementMatch!18778 (h!77195 (exprs!8218 ct1!250))) (= (c!1352520 (h!77195 (exprs!8218 ct1!250))) (h!77196 s!7854))))))

(assert (=> d!2261418 (= (derivationStepZipperDown!2712 (h!77195 (exprs!8218 ct1!250)) lt!2593092 (h!77196 s!7854)) e!4358378)))

(declare-fun b!7267938 () Bool)

(assert (=> b!7267938 (= e!4358380 (set.union call!662596 call!662599))))

(declare-fun b!7267939 () Bool)

(assert (=> b!7267939 (= e!4358382 call!662598)))

(declare-fun bm!662594 () Bool)

(assert (=> bm!662594 (= call!662599 (derivationStepZipperDown!2712 (ite c!1352572 (regTwo!38069 (h!77195 (exprs!8218 ct1!250))) (ite c!1352573 (regTwo!38068 (h!77195 (exprs!8218 ct1!250))) (ite c!1352574 (regOne!38068 (h!77195 (exprs!8218 ct1!250))) (reg!19107 (h!77195 (exprs!8218 ct1!250)))))) (ite (or c!1352572 c!1352573) lt!2593092 (Context!15437 call!662600)) (h!77196 s!7854)))))

(assert (= (and d!2261418 c!1352575) b!7267933))

(assert (= (and d!2261418 (not c!1352575)) b!7267934))

(assert (= (and b!7267934 c!1352572) b!7267938))

(assert (= (and b!7267934 (not c!1352572)) b!7267937))

(assert (= (and b!7267937 res!2946465) b!7267932))

(assert (= (and b!7267937 c!1352573) b!7267929))

(assert (= (and b!7267937 (not c!1352573)) b!7267936))

(assert (= (and b!7267936 c!1352574) b!7267939))

(assert (= (and b!7267936 (not c!1352574)) b!7267931))

(assert (= (and b!7267931 c!1352571) b!7267935))

(assert (= (and b!7267931 (not c!1352571)) b!7267930))

(assert (= (or b!7267939 b!7267935) bm!662589))

(assert (= (or b!7267939 b!7267935) bm!662591))

(assert (= (or b!7267929 bm!662589) bm!662590))

(assert (= (or b!7267929 bm!662591) bm!662593))

(assert (= (or b!7267938 b!7267929) bm!662592))

(assert (= (or b!7267938 bm!662593) bm!662594))

(declare-fun m!7952840 () Bool)

(assert (=> bm!662592 m!7952840))

(assert (=> b!7267932 m!7952784))

(assert (=> b!7267933 m!7952686))

(declare-fun m!7952842 () Bool)

(assert (=> bm!662594 m!7952842))

(declare-fun m!7952844 () Bool)

(assert (=> bm!662590 m!7952844))

(assert (=> b!7267771 d!2261418))

(declare-fun b!7267948 () Bool)

(declare-fun e!4358388 () List!70871)

(assert (=> b!7267948 (= e!4358388 (exprs!8218 ct2!346))))

(declare-fun b!7267950 () Bool)

(declare-fun res!2946470 () Bool)

(declare-fun e!4358387 () Bool)

(assert (=> b!7267950 (=> (not res!2946470) (not e!4358387))))

(declare-fun lt!2593185 () List!70871)

(declare-fun size!41807 (List!70871) Int)

(assert (=> b!7267950 (= res!2946470 (= (size!41807 lt!2593185) (+ (size!41807 lt!2593098) (size!41807 (exprs!8218 ct2!346)))))))

(declare-fun b!7267951 () Bool)

(assert (=> b!7267951 (= e!4358387 (or (not (= (exprs!8218 ct2!346) Nil!70747)) (= lt!2593185 lt!2593098)))))

(declare-fun b!7267949 () Bool)

(assert (=> b!7267949 (= e!4358388 (Cons!70747 (h!77195 lt!2593098) (++!16678 (t!384941 lt!2593098) (exprs!8218 ct2!346))))))

(declare-fun d!2261420 () Bool)

(assert (=> d!2261420 e!4358387))

(declare-fun res!2946471 () Bool)

(assert (=> d!2261420 (=> (not res!2946471) (not e!4358387))))

(declare-fun content!14759 (List!70871) (Set Regex!18778))

(assert (=> d!2261420 (= res!2946471 (= (content!14759 lt!2593185) (set.union (content!14759 lt!2593098) (content!14759 (exprs!8218 ct2!346)))))))

(assert (=> d!2261420 (= lt!2593185 e!4358388)))

(declare-fun c!1352578 () Bool)

(assert (=> d!2261420 (= c!1352578 (is-Nil!70747 lt!2593098))))

(assert (=> d!2261420 (= (++!16678 lt!2593098 (exprs!8218 ct2!346)) lt!2593185)))

(assert (= (and d!2261420 c!1352578) b!7267948))

(assert (= (and d!2261420 (not c!1352578)) b!7267949))

(assert (= (and d!2261420 res!2946471) b!7267950))

(assert (= (and b!7267950 res!2946470) b!7267951))

(declare-fun m!7952846 () Bool)

(assert (=> b!7267950 m!7952846))

(declare-fun m!7952848 () Bool)

(assert (=> b!7267950 m!7952848))

(declare-fun m!7952850 () Bool)

(assert (=> b!7267950 m!7952850))

(declare-fun m!7952852 () Bool)

(assert (=> b!7267949 m!7952852))

(declare-fun m!7952854 () Bool)

(assert (=> d!2261420 m!7952854))

(declare-fun m!7952856 () Bool)

(assert (=> d!2261420 m!7952856))

(declare-fun m!7952858 () Bool)

(assert (=> d!2261420 m!7952858))

(assert (=> b!7267771 d!2261420))

(assert (=> b!7267771 d!2261412))

(declare-fun d!2261422 () Bool)

(declare-fun c!1352580 () Bool)

(declare-fun e!4358391 () Bool)

(assert (=> d!2261422 (= c!1352580 e!4358391)))

(declare-fun res!2946472 () Bool)

(assert (=> d!2261422 (=> (not res!2946472) (not e!4358391))))

(assert (=> d!2261422 (= res!2946472 (is-Cons!70747 (exprs!8218 lt!2593092)))))

(declare-fun e!4358390 () (Set Context!15436))

(assert (=> d!2261422 (= (derivationStepZipperUp!2548 lt!2593092 (h!77196 s!7854)) e!4358390)))

(declare-fun b!7267952 () Bool)

(declare-fun call!662604 () (Set Context!15436))

(assert (=> b!7267952 (= e!4358390 (set.union call!662604 (derivationStepZipperUp!2548 (Context!15437 (t!384941 (exprs!8218 lt!2593092))) (h!77196 s!7854))))))

(declare-fun b!7267953 () Bool)

(declare-fun e!4358389 () (Set Context!15436))

(assert (=> b!7267953 (= e!4358389 (as set.empty (Set Context!15436)))))

(declare-fun b!7267954 () Bool)

(assert (=> b!7267954 (= e!4358390 e!4358389)))

(declare-fun c!1352579 () Bool)

(assert (=> b!7267954 (= c!1352579 (is-Cons!70747 (exprs!8218 lt!2593092)))))

(declare-fun b!7267955 () Bool)

(assert (=> b!7267955 (= e!4358391 (nullable!7978 (h!77195 (exprs!8218 lt!2593092))))))

(declare-fun b!7267956 () Bool)

(assert (=> b!7267956 (= e!4358389 call!662604)))

(declare-fun bm!662599 () Bool)

(assert (=> bm!662599 (= call!662604 (derivationStepZipperDown!2712 (h!77195 (exprs!8218 lt!2593092)) (Context!15437 (t!384941 (exprs!8218 lt!2593092))) (h!77196 s!7854)))))

(assert (= (and d!2261422 res!2946472) b!7267955))

(assert (= (and d!2261422 c!1352580) b!7267952))

(assert (= (and d!2261422 (not c!1352580)) b!7267954))

(assert (= (and b!7267954 c!1352579) b!7267956))

(assert (= (and b!7267954 (not c!1352579)) b!7267953))

(assert (= (or b!7267952 b!7267956) bm!662599))

(declare-fun m!7952860 () Bool)

(assert (=> b!7267952 m!7952860))

(declare-fun m!7952862 () Bool)

(assert (=> b!7267955 m!7952862))

(declare-fun m!7952864 () Bool)

(assert (=> bm!662599 m!7952864))

(assert (=> b!7267771 d!2261422))

(declare-fun d!2261424 () Bool)

(declare-fun c!1352581 () Bool)

(assert (=> d!2261424 (= c!1352581 (isEmpty!40677 s!7854))))

(declare-fun e!4358392 () Bool)

(assert (=> d!2261424 (= (matchZipper!3682 (set.insert ct2!346 (as set.empty (Set Context!15436))) s!7854) e!4358392)))

(declare-fun b!7267957 () Bool)

(assert (=> b!7267957 (= e!4358392 (nullableZipper!2987 (set.insert ct2!346 (as set.empty (Set Context!15436)))))))

(declare-fun b!7267958 () Bool)

(assert (=> b!7267958 (= e!4358392 (matchZipper!3682 (derivationStepZipper!3518 (set.insert ct2!346 (as set.empty (Set Context!15436))) (head!14985 s!7854)) (tail!14464 s!7854)))))

(assert (= (and d!2261424 c!1352581) b!7267957))

(assert (= (and d!2261424 (not c!1352581)) b!7267958))

(assert (=> d!2261424 m!7952828))

(assert (=> b!7267957 m!7952692))

(declare-fun m!7952866 () Bool)

(assert (=> b!7267957 m!7952866))

(assert (=> b!7267958 m!7952832))

(assert (=> b!7267958 m!7952692))

(assert (=> b!7267958 m!7952832))

(declare-fun m!7952868 () Bool)

(assert (=> b!7267958 m!7952868))

(assert (=> b!7267958 m!7952836))

(assert (=> b!7267958 m!7952868))

(assert (=> b!7267958 m!7952836))

(declare-fun m!7952870 () Bool)

(assert (=> b!7267958 m!7952870))

(assert (=> start!708960 d!2261424))

(declare-fun bs!1910528 () Bool)

(declare-fun d!2261426 () Bool)

(assert (= bs!1910528 (and d!2261426 b!7267768)))

(declare-fun lambda!447827 () Int)

(assert (=> bs!1910528 (= lambda!447827 lambda!447790)))

(declare-fun bs!1910529 () Bool)

(assert (= bs!1910529 (and d!2261426 d!2261404)))

(assert (=> bs!1910529 (not (= lambda!447827 lambda!447821))))

(declare-fun bs!1910530 () Bool)

(assert (= bs!1910530 (and d!2261426 d!2261408)))

(assert (=> bs!1910530 (= lambda!447827 lambda!447824)))

(assert (=> d!2261426 (= (inv!89956 ct2!346) (forall!17609 (exprs!8218 ct2!346) lambda!447827))))

(declare-fun bs!1910531 () Bool)

(assert (= bs!1910531 d!2261426))

(declare-fun m!7952872 () Bool)

(assert (=> bs!1910531 m!7952872))

(assert (=> start!708960 d!2261426))

(declare-fun bs!1910532 () Bool)

(declare-fun d!2261428 () Bool)

(assert (= bs!1910532 (and d!2261428 b!7267768)))

(declare-fun lambda!447828 () Int)

(assert (=> bs!1910532 (= lambda!447828 lambda!447790)))

(declare-fun bs!1910533 () Bool)

(assert (= bs!1910533 (and d!2261428 d!2261404)))

(assert (=> bs!1910533 (not (= lambda!447828 lambda!447821))))

(declare-fun bs!1910534 () Bool)

(assert (= bs!1910534 (and d!2261428 d!2261408)))

(assert (=> bs!1910534 (= lambda!447828 lambda!447824)))

(declare-fun bs!1910535 () Bool)

(assert (= bs!1910535 (and d!2261428 d!2261426)))

(assert (=> bs!1910535 (= lambda!447828 lambda!447827)))

(assert (=> d!2261428 (= (inv!89956 ct1!250) (forall!17609 (exprs!8218 ct1!250) lambda!447828))))

(declare-fun bs!1910536 () Bool)

(assert (= bs!1910536 d!2261428))

(declare-fun m!7952874 () Bool)

(assert (=> bs!1910536 m!7952874))

(assert (=> start!708960 d!2261428))

(declare-fun d!2261430 () Bool)

(assert (=> d!2261430 (= (isEmpty!40675 (exprs!8218 ct1!250)) (is-Nil!70747 (exprs!8218 ct1!250)))))

(assert (=> b!7267767 d!2261430))

(declare-fun d!2261432 () Bool)

(declare-fun choose!56344 ((Set Context!15436) Int) (Set Context!15436))

(assert (=> d!2261432 (= (flatMap!2891 lt!2593095 lambda!447791) (choose!56344 lt!2593095 lambda!447791))))

(declare-fun bs!1910537 () Bool)

(assert (= bs!1910537 d!2261432))

(declare-fun m!7952876 () Bool)

(assert (=> bs!1910537 m!7952876))

(assert (=> b!7267768 d!2261432))

(declare-fun bs!1910538 () Bool)

(declare-fun d!2261434 () Bool)

(assert (= bs!1910538 (and d!2261434 b!7267768)))

(declare-fun lambda!447831 () Int)

(assert (=> bs!1910538 (= lambda!447831 lambda!447791)))

(assert (=> d!2261434 true))

(assert (=> d!2261434 (= (derivationStepZipper!3518 lt!2593109 (h!77196 s!7854)) (flatMap!2891 lt!2593109 lambda!447831))))

(declare-fun bs!1910539 () Bool)

(assert (= bs!1910539 d!2261434))

(declare-fun m!7952878 () Bool)

(assert (=> bs!1910539 m!7952878))

(assert (=> b!7267768 d!2261434))

(declare-fun b!7267972 () Bool)

(declare-fun e!4358400 () List!70871)

(assert (=> b!7267972 (= e!4358400 (exprs!8218 ct2!346))))

(declare-fun b!7267974 () Bool)

(declare-fun res!2946474 () Bool)

(declare-fun e!4358399 () Bool)

(assert (=> b!7267974 (=> (not res!2946474) (not e!4358399))))

(declare-fun lt!2593186 () List!70871)

(assert (=> b!7267974 (= res!2946474 (= (size!41807 lt!2593186) (+ (size!41807 (exprs!8218 ct1!250)) (size!41807 (exprs!8218 ct2!346)))))))

(declare-fun b!7267975 () Bool)

(assert (=> b!7267975 (= e!4358399 (or (not (= (exprs!8218 ct2!346) Nil!70747)) (= lt!2593186 (exprs!8218 ct1!250))))))

(declare-fun b!7267973 () Bool)

(assert (=> b!7267973 (= e!4358400 (Cons!70747 (h!77195 (exprs!8218 ct1!250)) (++!16678 (t!384941 (exprs!8218 ct1!250)) (exprs!8218 ct2!346))))))

(declare-fun d!2261436 () Bool)

(assert (=> d!2261436 e!4358399))

(declare-fun res!2946475 () Bool)

(assert (=> d!2261436 (=> (not res!2946475) (not e!4358399))))

(assert (=> d!2261436 (= res!2946475 (= (content!14759 lt!2593186) (set.union (content!14759 (exprs!8218 ct1!250)) (content!14759 (exprs!8218 ct2!346)))))))

(assert (=> d!2261436 (= lt!2593186 e!4358400)))

(declare-fun c!1352589 () Bool)

(assert (=> d!2261436 (= c!1352589 (is-Nil!70747 (exprs!8218 ct1!250)))))

(assert (=> d!2261436 (= (++!16678 (exprs!8218 ct1!250) (exprs!8218 ct2!346)) lt!2593186)))

(assert (= (and d!2261436 c!1352589) b!7267972))

(assert (= (and d!2261436 (not c!1352589)) b!7267973))

(assert (= (and d!2261436 res!2946475) b!7267974))

(assert (= (and b!7267974 res!2946474) b!7267975))

(declare-fun m!7952884 () Bool)

(assert (=> b!7267974 m!7952884))

(declare-fun m!7952886 () Bool)

(assert (=> b!7267974 m!7952886))

(assert (=> b!7267974 m!7952850))

(declare-fun m!7952890 () Bool)

(assert (=> b!7267973 m!7952890))

(declare-fun m!7952892 () Bool)

(assert (=> d!2261436 m!7952892))

(declare-fun m!7952894 () Bool)

(assert (=> d!2261436 m!7952894))

(assert (=> d!2261436 m!7952858))

(assert (=> b!7267768 d!2261436))

(declare-fun d!2261438 () Bool)

(declare-fun dynLambda!28901 (Int Context!15436) (Set Context!15436))

(assert (=> d!2261438 (= (flatMap!2891 lt!2593109 lambda!447791) (dynLambda!28901 lambda!447791 lt!2593101))))

(declare-fun lt!2593189 () Unit!164174)

(declare-fun choose!56345 ((Set Context!15436) Context!15436 Int) Unit!164174)

(assert (=> d!2261438 (= lt!2593189 (choose!56345 lt!2593109 lt!2593101 lambda!447791))))

(assert (=> d!2261438 (= lt!2593109 (set.insert lt!2593101 (as set.empty (Set Context!15436))))))

(assert (=> d!2261438 (= (lemmaFlatMapOnSingletonSet!2291 lt!2593109 lt!2593101 lambda!447791) lt!2593189)))

(declare-fun b_lambda!279961 () Bool)

(assert (=> (not b_lambda!279961) (not d!2261438)))

(declare-fun bs!1910540 () Bool)

(assert (= bs!1910540 d!2261438))

(assert (=> bs!1910540 m!7952652))

(declare-fun m!7952898 () Bool)

(assert (=> bs!1910540 m!7952898))

(declare-fun m!7952900 () Bool)

(assert (=> bs!1910540 m!7952900))

(assert (=> bs!1910540 m!7952664))

(assert (=> b!7267768 d!2261438))

(declare-fun d!2261442 () Bool)

(assert (=> d!2261442 (forall!17609 (++!16678 (exprs!8218 ct1!250) (exprs!8218 ct2!346)) lambda!447790)))

(declare-fun lt!2593190 () Unit!164174)

(assert (=> d!2261442 (= lt!2593190 (choose!56342 (exprs!8218 ct1!250) (exprs!8218 ct2!346) lambda!447790))))

(assert (=> d!2261442 (forall!17609 (exprs!8218 ct1!250) lambda!447790)))

(assert (=> d!2261442 (= (lemmaConcatPreservesForall!1535 (exprs!8218 ct1!250) (exprs!8218 ct2!346) lambda!447790) lt!2593190)))

(declare-fun bs!1910541 () Bool)

(assert (= bs!1910541 d!2261442))

(assert (=> bs!1910541 m!7952662))

(assert (=> bs!1910541 m!7952662))

(declare-fun m!7952902 () Bool)

(assert (=> bs!1910541 m!7952902))

(declare-fun m!7952904 () Bool)

(assert (=> bs!1910541 m!7952904))

(declare-fun m!7952906 () Bool)

(assert (=> bs!1910541 m!7952906))

(assert (=> b!7267768 d!2261442))

(declare-fun d!2261444 () Bool)

(assert (=> d!2261444 (= (flatMap!2891 lt!2593109 lambda!447791) (choose!56344 lt!2593109 lambda!447791))))

(declare-fun bs!1910542 () Bool)

(assert (= bs!1910542 d!2261444))

(declare-fun m!7952908 () Bool)

(assert (=> bs!1910542 m!7952908))

(assert (=> b!7267768 d!2261444))

(declare-fun d!2261446 () Bool)

(assert (=> d!2261446 (= (flatMap!2891 lt!2593095 lambda!447791) (dynLambda!28901 lambda!447791 ct1!250))))

(declare-fun lt!2593191 () Unit!164174)

(assert (=> d!2261446 (= lt!2593191 (choose!56345 lt!2593095 ct1!250 lambda!447791))))

(assert (=> d!2261446 (= lt!2593095 (set.insert ct1!250 (as set.empty (Set Context!15436))))))

(assert (=> d!2261446 (= (lemmaFlatMapOnSingletonSet!2291 lt!2593095 ct1!250 lambda!447791) lt!2593191)))

(declare-fun b_lambda!279963 () Bool)

(assert (=> (not b_lambda!279963) (not d!2261446)))

(declare-fun bs!1910543 () Bool)

(assert (= bs!1910543 d!2261446))

(assert (=> bs!1910543 m!7952668))

(declare-fun m!7952910 () Bool)

(assert (=> bs!1910543 m!7952910))

(declare-fun m!7952912 () Bool)

(assert (=> bs!1910543 m!7952912))

(assert (=> bs!1910543 m!7952658))

(assert (=> b!7267768 d!2261446))

(declare-fun d!2261448 () Bool)

(declare-fun c!1352593 () Bool)

(declare-fun e!4358403 () Bool)

(assert (=> d!2261448 (= c!1352593 e!4358403)))

(declare-fun res!2946476 () Bool)

(assert (=> d!2261448 (=> (not res!2946476) (not e!4358403))))

(assert (=> d!2261448 (= res!2946476 (is-Cons!70747 (exprs!8218 lt!2593101)))))

(declare-fun e!4358402 () (Set Context!15436))

(assert (=> d!2261448 (= (derivationStepZipperUp!2548 lt!2593101 (h!77196 s!7854)) e!4358402)))

(declare-fun call!662611 () (Set Context!15436))

(declare-fun b!7267976 () Bool)

(assert (=> b!7267976 (= e!4358402 (set.union call!662611 (derivationStepZipperUp!2548 (Context!15437 (t!384941 (exprs!8218 lt!2593101))) (h!77196 s!7854))))))

(declare-fun b!7267977 () Bool)

(declare-fun e!4358401 () (Set Context!15436))

(assert (=> b!7267977 (= e!4358401 (as set.empty (Set Context!15436)))))

(declare-fun b!7267978 () Bool)

(assert (=> b!7267978 (= e!4358402 e!4358401)))

(declare-fun c!1352592 () Bool)

(assert (=> b!7267978 (= c!1352592 (is-Cons!70747 (exprs!8218 lt!2593101)))))

(declare-fun b!7267979 () Bool)

(assert (=> b!7267979 (= e!4358403 (nullable!7978 (h!77195 (exprs!8218 lt!2593101))))))

(declare-fun b!7267980 () Bool)

(assert (=> b!7267980 (= e!4358401 call!662611)))

(declare-fun bm!662606 () Bool)

(assert (=> bm!662606 (= call!662611 (derivationStepZipperDown!2712 (h!77195 (exprs!8218 lt!2593101)) (Context!15437 (t!384941 (exprs!8218 lt!2593101))) (h!77196 s!7854)))))

(assert (= (and d!2261448 res!2946476) b!7267979))

(assert (= (and d!2261448 c!1352593) b!7267976))

(assert (= (and d!2261448 (not c!1352593)) b!7267978))

(assert (= (and b!7267978 c!1352592) b!7267980))

(assert (= (and b!7267978 (not c!1352592)) b!7267977))

(assert (= (or b!7267976 b!7267980) bm!662606))

(declare-fun m!7952914 () Bool)

(assert (=> b!7267976 m!7952914))

(declare-fun m!7952916 () Bool)

(assert (=> b!7267979 m!7952916))

(declare-fun m!7952918 () Bool)

(assert (=> bm!662606 m!7952918))

(assert (=> b!7267768 d!2261448))

(declare-fun d!2261450 () Bool)

(declare-fun c!1352595 () Bool)

(declare-fun e!4358406 () Bool)

(assert (=> d!2261450 (= c!1352595 e!4358406)))

(declare-fun res!2946477 () Bool)

(assert (=> d!2261450 (=> (not res!2946477) (not e!4358406))))

(assert (=> d!2261450 (= res!2946477 (is-Cons!70747 (exprs!8218 ct1!250)))))

(declare-fun e!4358405 () (Set Context!15436))

(assert (=> d!2261450 (= (derivationStepZipperUp!2548 ct1!250 (h!77196 s!7854)) e!4358405)))

(declare-fun b!7267981 () Bool)

(declare-fun call!662612 () (Set Context!15436))

(assert (=> b!7267981 (= e!4358405 (set.union call!662612 (derivationStepZipperUp!2548 (Context!15437 (t!384941 (exprs!8218 ct1!250))) (h!77196 s!7854))))))

(declare-fun b!7267982 () Bool)

(declare-fun e!4358404 () (Set Context!15436))

(assert (=> b!7267982 (= e!4358404 (as set.empty (Set Context!15436)))))

(declare-fun b!7267983 () Bool)

(assert (=> b!7267983 (= e!4358405 e!4358404)))

(declare-fun c!1352594 () Bool)

(assert (=> b!7267983 (= c!1352594 (is-Cons!70747 (exprs!8218 ct1!250)))))

(declare-fun b!7267984 () Bool)

(assert (=> b!7267984 (= e!4358406 (nullable!7978 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun b!7267985 () Bool)

(assert (=> b!7267985 (= e!4358404 call!662612)))

(declare-fun bm!662607 () Bool)

(assert (=> bm!662607 (= call!662612 (derivationStepZipperDown!2712 (h!77195 (exprs!8218 ct1!250)) (Context!15437 (t!384941 (exprs!8218 ct1!250))) (h!77196 s!7854)))))

(assert (= (and d!2261450 res!2946477) b!7267984))

(assert (= (and d!2261450 c!1352595) b!7267981))

(assert (= (and d!2261450 (not c!1352595)) b!7267983))

(assert (= (and b!7267983 c!1352594) b!7267985))

(assert (= (and b!7267983 (not c!1352594)) b!7267982))

(assert (= (or b!7267981 b!7267985) bm!662607))

(declare-fun m!7952920 () Bool)

(assert (=> b!7267981 m!7952920))

(assert (=> b!7267984 m!7952642))

(declare-fun m!7952922 () Bool)

(assert (=> bm!662607 m!7952922))

(assert (=> b!7267768 d!2261450))

(declare-fun d!2261452 () Bool)

(declare-fun nullableFct!3140 (Regex!18778) Bool)

(assert (=> d!2261452 (= (nullable!7978 (h!77195 (exprs!8218 ct1!250))) (nullableFct!3140 (h!77195 (exprs!8218 ct1!250))))))

(declare-fun bs!1910544 () Bool)

(assert (= bs!1910544 d!2261452))

(declare-fun m!7952924 () Bool)

(assert (=> bs!1910544 m!7952924))

(assert (=> b!7267773 d!2261452))

(assert (=> b!7267773 d!2261450))

(declare-fun d!2261454 () Bool)

(assert (=> d!2261454 (= (tail!14462 (exprs!8218 ct1!250)) (t!384941 (exprs!8218 ct1!250)))))

(assert (=> b!7267773 d!2261454))

(declare-fun b!7267992 () Bool)

(declare-fun e!4358409 () Bool)

(declare-fun tp!2040719 () Bool)

(assert (=> b!7267992 (= e!4358409 (and tp_is_empty!47021 tp!2040719))))

(assert (=> b!7267763 (= tp!2040707 e!4358409)))

(assert (= (and b!7267763 (is-Cons!70748 (t!384942 s!7854))) b!7267992))

(declare-fun b!7267997 () Bool)

(declare-fun e!4358412 () Bool)

(declare-fun tp!2040724 () Bool)

(declare-fun tp!2040725 () Bool)

(assert (=> b!7267997 (= e!4358412 (and tp!2040724 tp!2040725))))

(assert (=> b!7267772 (= tp!2040706 e!4358412)))

(assert (= (and b!7267772 (is-Cons!70747 (exprs!8218 ct1!250))) b!7267997))

(declare-fun b!7267999 () Bool)

(declare-fun e!4358415 () Bool)

(declare-fun tp!2040726 () Bool)

(declare-fun tp!2040727 () Bool)

(assert (=> b!7267999 (= e!4358415 (and tp!2040726 tp!2040727))))

(assert (=> b!7267762 (= tp!2040705 e!4358415)))

(assert (= (and b!7267762 (is-Cons!70747 (exprs!8218 ct2!346))) b!7267999))

(declare-fun b_lambda!279965 () Bool)

(assert (= b_lambda!279959 (or b!7267768 b_lambda!279965)))

(declare-fun bs!1910548 () Bool)

(declare-fun d!2261460 () Bool)

(assert (= bs!1910548 (and d!2261460 b!7267768)))

(declare-fun validRegex!9576 (Regex!18778) Bool)

(assert (=> bs!1910548 (= (dynLambda!28900 lambda!447790 (h!77195 lt!2593098)) (validRegex!9576 (h!77195 lt!2593098)))))

(declare-fun m!7952934 () Bool)

(assert (=> bs!1910548 m!7952934))

(assert (=> b!7267921 d!2261460))

(declare-fun b_lambda!279967 () Bool)

(assert (= b_lambda!279957 (or b!7267768 b_lambda!279967)))

(declare-fun bs!1910549 () Bool)

(declare-fun d!2261462 () Bool)

(assert (= bs!1910549 (and d!2261462 b!7267768)))

(assert (=> bs!1910549 (= (dynLambda!28900 lambda!447790 (h!77195 (exprs!8218 ct2!346))) (validRegex!9576 (h!77195 (exprs!8218 ct2!346))))))

(declare-fun m!7952936 () Bool)

(assert (=> bs!1910549 m!7952936))

(assert (=> b!7267897 d!2261462))

(declare-fun b_lambda!279969 () Bool)

(assert (= b_lambda!279961 (or b!7267768 b_lambda!279969)))

(declare-fun bs!1910550 () Bool)

(declare-fun d!2261464 () Bool)

(assert (= bs!1910550 (and d!2261464 b!7267768)))

(assert (=> bs!1910550 (= (dynLambda!28901 lambda!447791 lt!2593101) (derivationStepZipperUp!2548 lt!2593101 (h!77196 s!7854)))))

(assert (=> bs!1910550 m!7952666))

(assert (=> d!2261438 d!2261464))

(declare-fun b_lambda!279971 () Bool)

(assert (= b_lambda!279963 (or b!7267768 b_lambda!279971)))

(declare-fun bs!1910551 () Bool)

(declare-fun d!2261466 () Bool)

(assert (= bs!1910551 (and d!2261466 b!7267768)))

(assert (=> bs!1910551 (= (dynLambda!28901 lambda!447791 ct1!250) (derivationStepZipperUp!2548 ct1!250 (h!77196 s!7854)))))

(assert (=> bs!1910551 m!7952644))

(assert (=> d!2261446 d!2261466))

(push 1)

(assert (not b!7267958))

(assert (not bm!662570))

(assert (not bs!1910551))

(assert (not b_lambda!279971))

(assert (not bs!1910549))

(assert (not b!7267992))

(assert (not b_lambda!279969))

(assert (not b!7267957))

(assert tp_is_empty!47021)

(assert (not b!7267922))

(assert (not b!7267898))

(assert (not b!7267973))

(assert (not b!7267928))

(assert (not b!7267855))

(assert (not d!2261412))

(assert (not b!7267950))

(assert (not d!2261434))

(assert (not b!7267999))

(assert (not d!2261436))

(assert (not b!7267981))

(assert (not bm!662572))

(assert (not b!7267949))

(assert (not d!2261426))

(assert (not b!7267883))

(assert (not d!2261404))

(assert (not b!7267976))

(assert (not d!2261432))

(assert (not d!2261452))

(assert (not bm!662607))

(assert (not bm!662574))

(assert (not b_lambda!279965))

(assert (not bm!662592))

(assert (not d!2261438))

(assert (not d!2261408))

(assert (not d!2261444))

(assert (not b!7267974))

(assert (not bm!662590))

(assert (not b!7267952))

(assert (not b!7267997))

(assert (not b!7267932))

(assert (not b!7267927))

(assert (not bm!662594))

(assert (not d!2261442))

(assert (not d!2261420))

(assert (not bs!1910550))

(assert (not d!2261428))

(assert (not d!2261416))

(assert (not b_lambda!279967))

(assert (not b!7267984))

(assert (not b!7267886))

(assert (not d!2261446))

(assert (not b!7267979))

(assert (not bm!662599))

(assert (not bs!1910548))

(assert (not bm!662579))

(assert (not d!2261424))

(assert (not b!7267955))

(assert (not bm!662606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

