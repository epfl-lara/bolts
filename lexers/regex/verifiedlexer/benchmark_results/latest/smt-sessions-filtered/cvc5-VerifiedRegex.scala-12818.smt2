; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708060 () Bool)

(assert start!708060)

(declare-fun b!7263214 () Bool)

(assert (=> b!7263214 true))

(declare-fun b!7263208 () Bool)

(declare-fun res!2944781 () Bool)

(declare-fun e!4355566 () Bool)

(assert (=> b!7263208 (=> (not res!2944781) (not e!4355566))))

(declare-datatypes ((C!37762 0))(
  ( (C!37763 (val!28829 Int)) )
))
(declare-datatypes ((List!70803 0))(
  ( (Nil!70679) (Cons!70679 (h!77127 C!37762) (t!384869 List!70803)) )
))
(declare-fun s!7854 () List!70803)

(assert (=> b!7263208 (= res!2944781 (is-Cons!70679 s!7854))))

(declare-fun b!7263209 () Bool)

(declare-fun e!4355568 () Bool)

(declare-fun tp_is_empty!46953 () Bool)

(declare-fun tp!2039893 () Bool)

(assert (=> b!7263209 (= e!4355568 (and tp_is_empty!46953 tp!2039893))))

(declare-fun b!7263210 () Bool)

(declare-fun res!2944778 () Bool)

(assert (=> b!7263210 (=> (not res!2944778) (not e!4355566))))

(declare-datatypes ((Regex!18744 0))(
  ( (ElementMatch!18744 (c!1351244 C!37762)) (Concat!27589 (regOne!38000 Regex!18744) (regTwo!38000 Regex!18744)) (EmptyExpr!18744) (Star!18744 (reg!19073 Regex!18744)) (EmptyLang!18744) (Union!18744 (regOne!38001 Regex!18744) (regTwo!38001 Regex!18744)) )
))
(declare-datatypes ((List!70804 0))(
  ( (Nil!70680) (Cons!70680 (h!77128 Regex!18744) (t!384870 List!70804)) )
))
(declare-datatypes ((Context!15368 0))(
  ( (Context!15369 (exprs!8184 List!70804)) )
))
(declare-fun ct1!250 () Context!15368)

(declare-fun nullableContext!234 (Context!15368) Bool)

(assert (=> b!7263210 (= res!2944778 (nullableContext!234 ct1!250))))

(declare-fun b!7263211 () Bool)

(declare-fun e!4355567 () Bool)

(declare-fun tp!2039895 () Bool)

(assert (=> b!7263211 (= e!4355567 tp!2039895)))

(declare-fun b!7263212 () Bool)

(declare-fun e!4355570 () Bool)

(declare-fun ct2!346 () Context!15368)

(declare-fun lambda!446950 () Int)

(declare-fun forall!17581 (List!70804 Int) Bool)

(assert (=> b!7263212 (= e!4355570 (forall!17581 (exprs!8184 ct2!346) lambda!446950))))

(declare-fun b!7263213 () Bool)

(declare-fun e!4355569 () Bool)

(declare-fun tp!2039894 () Bool)

(assert (=> b!7263213 (= e!4355569 tp!2039894)))

(declare-fun res!2944780 () Bool)

(assert (=> start!708060 (=> (not res!2944780) (not e!4355566))))

(declare-fun matchZipper!3648 ((Set Context!15368) List!70803) Bool)

(assert (=> start!708060 (= res!2944780 (matchZipper!3648 (set.insert ct2!346 (as set.empty (Set Context!15368))) s!7854))))

(assert (=> start!708060 e!4355566))

(declare-fun inv!89871 (Context!15368) Bool)

(assert (=> start!708060 (and (inv!89871 ct2!346) e!4355569)))

(assert (=> start!708060 e!4355568))

(assert (=> start!708060 (and (inv!89871 ct1!250) e!4355567)))

(assert (=> b!7263214 (= e!4355566 (not e!4355570))))

(declare-fun res!2944779 () Bool)

(assert (=> b!7263214 (=> res!2944779 e!4355570)))

(assert (=> b!7263214 (= res!2944779 (not (forall!17581 (exprs!8184 ct1!250) lambda!446950)))))

(declare-fun lt!2591487 () (Set Context!15368))

(declare-fun lambda!446951 () Int)

(declare-fun flatMap!2857 ((Set Context!15368) Int) (Set Context!15368))

(declare-fun derivationStepZipperUp!2514 (Context!15368 C!37762) (Set Context!15368))

(assert (=> b!7263214 (= (flatMap!2857 lt!2591487 lambda!446951) (derivationStepZipperUp!2514 ct1!250 (h!77127 s!7854)))))

(declare-datatypes ((Unit!164106 0))(
  ( (Unit!164107) )
))
(declare-fun lt!2591485 () Unit!164106)

(declare-fun lemmaFlatMapOnSingletonSet!2257 ((Set Context!15368) Context!15368 Int) Unit!164106)

(assert (=> b!7263214 (= lt!2591485 (lemmaFlatMapOnSingletonSet!2257 lt!2591487 ct1!250 lambda!446951))))

(assert (=> b!7263214 (= lt!2591487 (set.insert ct1!250 (as set.empty (Set Context!15368))))))

(declare-fun lt!2591486 () (Set Context!15368))

(declare-fun ++!16644 (List!70804 List!70804) List!70804)

(assert (=> b!7263214 (= lt!2591486 (derivationStepZipperUp!2514 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346))) (h!77127 s!7854)))))

(declare-fun lt!2591484 () Unit!164106)

(declare-fun lemmaConcatPreservesForall!1501 (List!70804 List!70804 Int) Unit!164106)

(assert (=> b!7263214 (= lt!2591484 (lemmaConcatPreservesForall!1501 (exprs!8184 ct1!250) (exprs!8184 ct2!346) lambda!446950))))

(assert (= (and start!708060 res!2944780) b!7263210))

(assert (= (and b!7263210 res!2944778) b!7263208))

(assert (= (and b!7263208 res!2944781) b!7263214))

(assert (= (and b!7263214 (not res!2944779)) b!7263212))

(assert (= start!708060 b!7263213))

(assert (= (and start!708060 (is-Cons!70679 s!7854)) b!7263209))

(assert (= start!708060 b!7263211))

(declare-fun m!7947774 () Bool)

(assert (=> b!7263210 m!7947774))

(declare-fun m!7947776 () Bool)

(assert (=> b!7263212 m!7947776))

(declare-fun m!7947778 () Bool)

(assert (=> start!708060 m!7947778))

(assert (=> start!708060 m!7947778))

(declare-fun m!7947780 () Bool)

(assert (=> start!708060 m!7947780))

(declare-fun m!7947782 () Bool)

(assert (=> start!708060 m!7947782))

(declare-fun m!7947784 () Bool)

(assert (=> start!708060 m!7947784))

(declare-fun m!7947786 () Bool)

(assert (=> b!7263214 m!7947786))

(declare-fun m!7947788 () Bool)

(assert (=> b!7263214 m!7947788))

(declare-fun m!7947790 () Bool)

(assert (=> b!7263214 m!7947790))

(declare-fun m!7947792 () Bool)

(assert (=> b!7263214 m!7947792))

(declare-fun m!7947794 () Bool)

(assert (=> b!7263214 m!7947794))

(declare-fun m!7947796 () Bool)

(assert (=> b!7263214 m!7947796))

(declare-fun m!7947798 () Bool)

(assert (=> b!7263214 m!7947798))

(declare-fun m!7947800 () Bool)

(assert (=> b!7263214 m!7947800))

(push 1)

(assert (not b!7263209))

(assert (not b!7263210))

(assert (not start!708060))

(assert (not b!7263214))

(assert tp_is_empty!46953)

(assert (not b!7263211))

(assert (not b!7263213))

(assert (not b!7263212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1909823 () Bool)

(declare-fun d!2259639 () Bool)

(assert (= bs!1909823 (and d!2259639 b!7263214)))

(declare-fun lambda!446962 () Int)

(assert (=> bs!1909823 (not (= lambda!446962 lambda!446950))))

(assert (=> d!2259639 (= (nullableContext!234 ct1!250) (forall!17581 (exprs!8184 ct1!250) lambda!446962))))

(declare-fun bs!1909824 () Bool)

(assert (= bs!1909824 d!2259639))

(declare-fun m!7947830 () Bool)

(assert (=> bs!1909824 m!7947830))

(assert (=> b!7263210 d!2259639))

(declare-fun d!2259641 () Bool)

(assert (=> d!2259641 (forall!17581 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346)) lambda!446950)))

(declare-fun lt!2591502 () Unit!164106)

(declare-fun choose!56258 (List!70804 List!70804 Int) Unit!164106)

(assert (=> d!2259641 (= lt!2591502 (choose!56258 (exprs!8184 ct1!250) (exprs!8184 ct2!346) lambda!446950))))

(assert (=> d!2259641 (forall!17581 (exprs!8184 ct1!250) lambda!446950)))

(assert (=> d!2259641 (= (lemmaConcatPreservesForall!1501 (exprs!8184 ct1!250) (exprs!8184 ct2!346) lambda!446950) lt!2591502)))

(declare-fun bs!1909825 () Bool)

(assert (= bs!1909825 d!2259641))

(assert (=> bs!1909825 m!7947796))

(assert (=> bs!1909825 m!7947796))

(declare-fun m!7947832 () Bool)

(assert (=> bs!1909825 m!7947832))

(declare-fun m!7947834 () Bool)

(assert (=> bs!1909825 m!7947834))

(assert (=> bs!1909825 m!7947786))

(assert (=> b!7263214 d!2259641))

(declare-fun bm!661803 () Bool)

(declare-fun call!661808 () (Set Context!15368))

(declare-fun derivationStepZipperDown!2682 (Regex!18744 Context!15368 C!37762) (Set Context!15368))

(assert (=> bm!661803 (= call!661808 (derivationStepZipperDown!2682 (h!77128 (exprs!8184 ct1!250)) (Context!15369 (t!384870 (exprs!8184 ct1!250))) (h!77127 s!7854)))))

(declare-fun b!7263250 () Bool)

(declare-fun e!4355592 () (Set Context!15368))

(declare-fun e!4355594 () (Set Context!15368))

(assert (=> b!7263250 (= e!4355592 e!4355594)))

(declare-fun c!1351254 () Bool)

(assert (=> b!7263250 (= c!1351254 (is-Cons!70680 (exprs!8184 ct1!250)))))

(declare-fun b!7263251 () Bool)

(assert (=> b!7263251 (= e!4355592 (set.union call!661808 (derivationStepZipperUp!2514 (Context!15369 (t!384870 (exprs!8184 ct1!250))) (h!77127 s!7854))))))

(declare-fun b!7263252 () Bool)

(declare-fun e!4355593 () Bool)

(declare-fun nullable!7948 (Regex!18744) Bool)

(assert (=> b!7263252 (= e!4355593 (nullable!7948 (h!77128 (exprs!8184 ct1!250))))))

(declare-fun b!7263253 () Bool)

(assert (=> b!7263253 (= e!4355594 (as set.empty (Set Context!15368)))))

(declare-fun b!7263254 () Bool)

(assert (=> b!7263254 (= e!4355594 call!661808)))

(declare-fun d!2259643 () Bool)

(declare-fun c!1351255 () Bool)

(assert (=> d!2259643 (= c!1351255 e!4355593)))

(declare-fun res!2944796 () Bool)

(assert (=> d!2259643 (=> (not res!2944796) (not e!4355593))))

(assert (=> d!2259643 (= res!2944796 (is-Cons!70680 (exprs!8184 ct1!250)))))

(assert (=> d!2259643 (= (derivationStepZipperUp!2514 ct1!250 (h!77127 s!7854)) e!4355592)))

(assert (= (and d!2259643 res!2944796) b!7263252))

(assert (= (and d!2259643 c!1351255) b!7263251))

(assert (= (and d!2259643 (not c!1351255)) b!7263250))

(assert (= (and b!7263250 c!1351254) b!7263254))

(assert (= (and b!7263250 (not c!1351254)) b!7263253))

(assert (= (or b!7263251 b!7263254) bm!661803))

(declare-fun m!7947838 () Bool)

(assert (=> bm!661803 m!7947838))

(declare-fun m!7947840 () Bool)

(assert (=> b!7263251 m!7947840))

(declare-fun m!7947842 () Bool)

(assert (=> b!7263252 m!7947842))

(assert (=> b!7263214 d!2259643))

(declare-fun d!2259649 () Bool)

(declare-fun choose!56259 ((Set Context!15368) Int) (Set Context!15368))

(assert (=> d!2259649 (= (flatMap!2857 lt!2591487 lambda!446951) (choose!56259 lt!2591487 lambda!446951))))

(declare-fun bs!1909828 () Bool)

(assert (= bs!1909828 d!2259649))

(declare-fun m!7947844 () Bool)

(assert (=> bs!1909828 m!7947844))

(assert (=> b!7263214 d!2259649))

(declare-fun d!2259651 () Bool)

(declare-fun res!2944805 () Bool)

(declare-fun e!4355603 () Bool)

(assert (=> d!2259651 (=> res!2944805 e!4355603)))

(assert (=> d!2259651 (= res!2944805 (is-Nil!70680 (exprs!8184 ct1!250)))))

(assert (=> d!2259651 (= (forall!17581 (exprs!8184 ct1!250) lambda!446950) e!4355603)))

(declare-fun b!7263263 () Bool)

(declare-fun e!4355604 () Bool)

(assert (=> b!7263263 (= e!4355603 e!4355604)))

(declare-fun res!2944806 () Bool)

(assert (=> b!7263263 (=> (not res!2944806) (not e!4355604))))

(declare-fun dynLambda!28849 (Int Regex!18744) Bool)

(assert (=> b!7263263 (= res!2944806 (dynLambda!28849 lambda!446950 (h!77128 (exprs!8184 ct1!250))))))

(declare-fun b!7263264 () Bool)

(assert (=> b!7263264 (= e!4355604 (forall!17581 (t!384870 (exprs!8184 ct1!250)) lambda!446950))))

(assert (= (and d!2259651 (not res!2944805)) b!7263263))

(assert (= (and b!7263263 res!2944806) b!7263264))

(declare-fun b_lambda!279421 () Bool)

(assert (=> (not b_lambda!279421) (not b!7263263)))

(declare-fun m!7947846 () Bool)

(assert (=> b!7263263 m!7947846))

(declare-fun m!7947848 () Bool)

(assert (=> b!7263264 m!7947848))

(assert (=> b!7263214 d!2259651))

(declare-fun bm!661804 () Bool)

(declare-fun call!661809 () (Set Context!15368))

(assert (=> bm!661804 (= call!661809 (derivationStepZipperDown!2682 (h!77128 (exprs!8184 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346))))) (Context!15369 (t!384870 (exprs!8184 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346)))))) (h!77127 s!7854)))))

(declare-fun b!7263265 () Bool)

(declare-fun e!4355605 () (Set Context!15368))

(declare-fun e!4355607 () (Set Context!15368))

(assert (=> b!7263265 (= e!4355605 e!4355607)))

(declare-fun c!1351256 () Bool)

(assert (=> b!7263265 (= c!1351256 (is-Cons!70680 (exprs!8184 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346))))))))

(declare-fun b!7263266 () Bool)

(assert (=> b!7263266 (= e!4355605 (set.union call!661809 (derivationStepZipperUp!2514 (Context!15369 (t!384870 (exprs!8184 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346)))))) (h!77127 s!7854))))))

(declare-fun b!7263267 () Bool)

(declare-fun e!4355606 () Bool)

(assert (=> b!7263267 (= e!4355606 (nullable!7948 (h!77128 (exprs!8184 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346)))))))))

(declare-fun b!7263268 () Bool)

(assert (=> b!7263268 (= e!4355607 (as set.empty (Set Context!15368)))))

(declare-fun b!7263269 () Bool)

(assert (=> b!7263269 (= e!4355607 call!661809)))

(declare-fun d!2259653 () Bool)

(declare-fun c!1351257 () Bool)

(assert (=> d!2259653 (= c!1351257 e!4355606)))

(declare-fun res!2944807 () Bool)

(assert (=> d!2259653 (=> (not res!2944807) (not e!4355606))))

(assert (=> d!2259653 (= res!2944807 (is-Cons!70680 (exprs!8184 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346))))))))

(assert (=> d!2259653 (= (derivationStepZipperUp!2514 (Context!15369 (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346))) (h!77127 s!7854)) e!4355605)))

(assert (= (and d!2259653 res!2944807) b!7263267))

(assert (= (and d!2259653 c!1351257) b!7263266))

(assert (= (and d!2259653 (not c!1351257)) b!7263265))

(assert (= (and b!7263265 c!1351256) b!7263269))

(assert (= (and b!7263265 (not c!1351256)) b!7263268))

(assert (= (or b!7263266 b!7263269) bm!661804))

(declare-fun m!7947850 () Bool)

(assert (=> bm!661804 m!7947850))

(declare-fun m!7947852 () Bool)

(assert (=> b!7263266 m!7947852))

(declare-fun m!7947854 () Bool)

(assert (=> b!7263267 m!7947854))

(assert (=> b!7263214 d!2259653))

(declare-fun b!7263280 () Bool)

(declare-fun e!4355615 () List!70804)

(assert (=> b!7263280 (= e!4355615 (exprs!8184 ct2!346))))

(declare-fun b!7263281 () Bool)

(assert (=> b!7263281 (= e!4355615 (Cons!70680 (h!77128 (exprs!8184 ct1!250)) (++!16644 (t!384870 (exprs!8184 ct1!250)) (exprs!8184 ct2!346))))))

(declare-fun b!7263283 () Bool)

(declare-fun e!4355614 () Bool)

(declare-fun lt!2591507 () List!70804)

(assert (=> b!7263283 (= e!4355614 (or (not (= (exprs!8184 ct2!346) Nil!70680)) (= lt!2591507 (exprs!8184 ct1!250))))))

(declare-fun d!2259655 () Bool)

(assert (=> d!2259655 e!4355614))

(declare-fun res!2944815 () Bool)

(assert (=> d!2259655 (=> (not res!2944815) (not e!4355614))))

(declare-fun content!14732 (List!70804) (Set Regex!18744))

(assert (=> d!2259655 (= res!2944815 (= (content!14732 lt!2591507) (set.union (content!14732 (exprs!8184 ct1!250)) (content!14732 (exprs!8184 ct2!346)))))))

(assert (=> d!2259655 (= lt!2591507 e!4355615)))

(declare-fun c!1351260 () Bool)

(assert (=> d!2259655 (= c!1351260 (is-Nil!70680 (exprs!8184 ct1!250)))))

(assert (=> d!2259655 (= (++!16644 (exprs!8184 ct1!250) (exprs!8184 ct2!346)) lt!2591507)))

(declare-fun b!7263282 () Bool)

(declare-fun res!2944814 () Bool)

(assert (=> b!7263282 (=> (not res!2944814) (not e!4355614))))

(declare-fun size!41780 (List!70804) Int)

(assert (=> b!7263282 (= res!2944814 (= (size!41780 lt!2591507) (+ (size!41780 (exprs!8184 ct1!250)) (size!41780 (exprs!8184 ct2!346)))))))

(assert (= (and d!2259655 c!1351260) b!7263280))

(assert (= (and d!2259655 (not c!1351260)) b!7263281))

(assert (= (and d!2259655 res!2944815) b!7263282))

(assert (= (and b!7263282 res!2944814) b!7263283))

(declare-fun m!7947860 () Bool)

(assert (=> b!7263281 m!7947860))

(declare-fun m!7947862 () Bool)

(assert (=> d!2259655 m!7947862))

(declare-fun m!7947864 () Bool)

(assert (=> d!2259655 m!7947864))

(declare-fun m!7947866 () Bool)

(assert (=> d!2259655 m!7947866))

(declare-fun m!7947868 () Bool)

(assert (=> b!7263282 m!7947868))

(declare-fun m!7947870 () Bool)

(assert (=> b!7263282 m!7947870))

(declare-fun m!7947872 () Bool)

(assert (=> b!7263282 m!7947872))

(assert (=> b!7263214 d!2259655))

(declare-fun d!2259659 () Bool)

(declare-fun dynLambda!28850 (Int Context!15368) (Set Context!15368))

(assert (=> d!2259659 (= (flatMap!2857 lt!2591487 lambda!446951) (dynLambda!28850 lambda!446951 ct1!250))))

(declare-fun lt!2591511 () Unit!164106)

(declare-fun choose!56260 ((Set Context!15368) Context!15368 Int) Unit!164106)

(assert (=> d!2259659 (= lt!2591511 (choose!56260 lt!2591487 ct1!250 lambda!446951))))

(assert (=> d!2259659 (= lt!2591487 (set.insert ct1!250 (as set.empty (Set Context!15368))))))

(assert (=> d!2259659 (= (lemmaFlatMapOnSingletonSet!2257 lt!2591487 ct1!250 lambda!446951) lt!2591511)))

(declare-fun b_lambda!279429 () Bool)

(assert (=> (not b_lambda!279429) (not d!2259659)))

(declare-fun bs!1909830 () Bool)

(assert (= bs!1909830 d!2259659))

(assert (=> bs!1909830 m!7947790))

(declare-fun m!7947882 () Bool)

(assert (=> bs!1909830 m!7947882))

(declare-fun m!7947884 () Bool)

(assert (=> bs!1909830 m!7947884))

(assert (=> bs!1909830 m!7947800))

(assert (=> b!7263214 d!2259659))

(declare-fun d!2259665 () Bool)

(declare-fun res!2944818 () Bool)

(declare-fun e!4355618 () Bool)

(assert (=> d!2259665 (=> res!2944818 e!4355618)))

(assert (=> d!2259665 (= res!2944818 (is-Nil!70680 (exprs!8184 ct2!346)))))

(assert (=> d!2259665 (= (forall!17581 (exprs!8184 ct2!346) lambda!446950) e!4355618)))

(declare-fun b!7263286 () Bool)

(declare-fun e!4355619 () Bool)

(assert (=> b!7263286 (= e!4355618 e!4355619)))

(declare-fun res!2944819 () Bool)

(assert (=> b!7263286 (=> (not res!2944819) (not e!4355619))))

(assert (=> b!7263286 (= res!2944819 (dynLambda!28849 lambda!446950 (h!77128 (exprs!8184 ct2!346))))))

(declare-fun b!7263287 () Bool)

(assert (=> b!7263287 (= e!4355619 (forall!17581 (t!384870 (exprs!8184 ct2!346)) lambda!446950))))

(assert (= (and d!2259665 (not res!2944818)) b!7263286))

(assert (= (and b!7263286 res!2944819) b!7263287))

(declare-fun b_lambda!279431 () Bool)

(assert (=> (not b_lambda!279431) (not b!7263286)))

(declare-fun m!7947886 () Bool)

(assert (=> b!7263286 m!7947886))

(declare-fun m!7947888 () Bool)

(assert (=> b!7263287 m!7947888))

(assert (=> b!7263212 d!2259665))

(declare-fun d!2259667 () Bool)

(declare-fun c!1351263 () Bool)

(declare-fun isEmpty!40630 (List!70803) Bool)

(assert (=> d!2259667 (= c!1351263 (isEmpty!40630 s!7854))))

(declare-fun e!4355622 () Bool)

(assert (=> d!2259667 (= (matchZipper!3648 (set.insert ct2!346 (as set.empty (Set Context!15368))) s!7854) e!4355622)))

(declare-fun b!7263292 () Bool)

(declare-fun nullableZipper!2964 ((Set Context!15368)) Bool)

(assert (=> b!7263292 (= e!4355622 (nullableZipper!2964 (set.insert ct2!346 (as set.empty (Set Context!15368)))))))

(declare-fun b!7263293 () Bool)

(declare-fun derivationStepZipper!3490 ((Set Context!15368) C!37762) (Set Context!15368))

(declare-fun head!14963 (List!70803) C!37762)

(declare-fun tail!14422 (List!70803) List!70803)

(assert (=> b!7263293 (= e!4355622 (matchZipper!3648 (derivationStepZipper!3490 (set.insert ct2!346 (as set.empty (Set Context!15368))) (head!14963 s!7854)) (tail!14422 s!7854)))))

(assert (= (and d!2259667 c!1351263) b!7263292))

(assert (= (and d!2259667 (not c!1351263)) b!7263293))

(declare-fun m!7947890 () Bool)

(assert (=> d!2259667 m!7947890))

(assert (=> b!7263292 m!7947778))

(declare-fun m!7947892 () Bool)

(assert (=> b!7263292 m!7947892))

(declare-fun m!7947894 () Bool)

(assert (=> b!7263293 m!7947894))

(assert (=> b!7263293 m!7947778))

(assert (=> b!7263293 m!7947894))

(declare-fun m!7947896 () Bool)

(assert (=> b!7263293 m!7947896))

(declare-fun m!7947898 () Bool)

(assert (=> b!7263293 m!7947898))

(assert (=> b!7263293 m!7947896))

(assert (=> b!7263293 m!7947898))

(declare-fun m!7947900 () Bool)

(assert (=> b!7263293 m!7947900))

(assert (=> start!708060 d!2259667))

(declare-fun bs!1909831 () Bool)

(declare-fun d!2259669 () Bool)

(assert (= bs!1909831 (and d!2259669 b!7263214)))

(declare-fun lambda!446968 () Int)

(assert (=> bs!1909831 (= lambda!446968 lambda!446950)))

(declare-fun bs!1909832 () Bool)

(assert (= bs!1909832 (and d!2259669 d!2259639)))

(assert (=> bs!1909832 (not (= lambda!446968 lambda!446962))))

(assert (=> d!2259669 (= (inv!89871 ct2!346) (forall!17581 (exprs!8184 ct2!346) lambda!446968))))

(declare-fun bs!1909833 () Bool)

(assert (= bs!1909833 d!2259669))

(declare-fun m!7947902 () Bool)

(assert (=> bs!1909833 m!7947902))

(assert (=> start!708060 d!2259669))

(declare-fun bs!1909834 () Bool)

(declare-fun d!2259671 () Bool)

(assert (= bs!1909834 (and d!2259671 b!7263214)))

(declare-fun lambda!446969 () Int)

(assert (=> bs!1909834 (= lambda!446969 lambda!446950)))

(declare-fun bs!1909835 () Bool)

(assert (= bs!1909835 (and d!2259671 d!2259639)))

(assert (=> bs!1909835 (not (= lambda!446969 lambda!446962))))

(declare-fun bs!1909836 () Bool)

(assert (= bs!1909836 (and d!2259671 d!2259669)))

(assert (=> bs!1909836 (= lambda!446969 lambda!446968)))

(assert (=> d!2259671 (= (inv!89871 ct1!250) (forall!17581 (exprs!8184 ct1!250) lambda!446969))))

(declare-fun bs!1909837 () Bool)

(assert (= bs!1909837 d!2259671))

(declare-fun m!7947904 () Bool)

(assert (=> bs!1909837 m!7947904))

(assert (=> start!708060 d!2259671))

(declare-fun b!7263308 () Bool)

(declare-fun e!4355631 () Bool)

(declare-fun tp!2039907 () Bool)

(assert (=> b!7263308 (= e!4355631 (and tp_is_empty!46953 tp!2039907))))

(assert (=> b!7263209 (= tp!2039893 e!4355631)))

(assert (= (and b!7263209 (is-Cons!70679 (t!384869 s!7854))) b!7263308))

(declare-fun b!7263313 () Bool)

(declare-fun e!4355634 () Bool)

(declare-fun tp!2039912 () Bool)

(declare-fun tp!2039913 () Bool)

(assert (=> b!7263313 (= e!4355634 (and tp!2039912 tp!2039913))))

(assert (=> b!7263213 (= tp!2039894 e!4355634)))

(assert (= (and b!7263213 (is-Cons!70680 (exprs!8184 ct2!346))) b!7263313))

(declare-fun b!7263314 () Bool)

(declare-fun e!4355635 () Bool)

(declare-fun tp!2039914 () Bool)

(declare-fun tp!2039915 () Bool)

(assert (=> b!7263314 (= e!4355635 (and tp!2039914 tp!2039915))))

(assert (=> b!7263211 (= tp!2039895 e!4355635)))

(assert (= (and b!7263211 (is-Cons!70680 (exprs!8184 ct1!250))) b!7263314))

(declare-fun b_lambda!279433 () Bool)

(assert (= b_lambda!279429 (or b!7263214 b_lambda!279433)))

(declare-fun bs!1909838 () Bool)

(declare-fun d!2259673 () Bool)

(assert (= bs!1909838 (and d!2259673 b!7263214)))

(assert (=> bs!1909838 (= (dynLambda!28850 lambda!446951 ct1!250) (derivationStepZipperUp!2514 ct1!250 (h!77127 s!7854)))))

(assert (=> bs!1909838 m!7947792))

(assert (=> d!2259659 d!2259673))

(declare-fun b_lambda!279435 () Bool)

(assert (= b_lambda!279431 (or b!7263214 b_lambda!279435)))

(declare-fun bs!1909839 () Bool)

(declare-fun d!2259675 () Bool)

(assert (= bs!1909839 (and d!2259675 b!7263214)))

(declare-fun validRegex!9558 (Regex!18744) Bool)

(assert (=> bs!1909839 (= (dynLambda!28849 lambda!446950 (h!77128 (exprs!8184 ct2!346))) (validRegex!9558 (h!77128 (exprs!8184 ct2!346))))))

(declare-fun m!7947906 () Bool)

(assert (=> bs!1909839 m!7947906))

(assert (=> b!7263286 d!2259675))

(declare-fun b_lambda!279437 () Bool)

(assert (= b_lambda!279421 (or b!7263214 b_lambda!279437)))

(declare-fun bs!1909840 () Bool)

(declare-fun d!2259677 () Bool)

(assert (= bs!1909840 (and d!2259677 b!7263214)))

(assert (=> bs!1909840 (= (dynLambda!28849 lambda!446950 (h!77128 (exprs!8184 ct1!250))) (validRegex!9558 (h!77128 (exprs!8184 ct1!250))))))

(declare-fun m!7947908 () Bool)

(assert (=> bs!1909840 m!7947908))

(assert (=> b!7263263 d!2259677))

(push 1)

(assert (not d!2259639))

(assert (not d!2259671))

(assert (not b!7263282))

(assert (not bm!661803))

(assert (not b!7263281))

(assert (not d!2259669))

(assert (not b!7263313))

(assert tp_is_empty!46953)

(assert (not b!7263292))

(assert (not d!2259641))

(assert (not b!7263252))

(assert (not bs!1909840))

(assert (not bs!1909839))

(assert (not b!7263251))

(assert (not b!7263266))

(assert (not b!7263287))

(assert (not d!2259649))

(assert (not bs!1909838))

(assert (not b!7263267))

(assert (not b!7263293))

(assert (not b_lambda!279433))

(assert (not d!2259667))

(assert (not d!2259659))

(assert (not b!7263308))

(assert (not b!7263264))

(assert (not b!7263314))

(assert (not b_lambda!279435))

(assert (not b_lambda!279437))

(assert (not d!2259655))

(assert (not bm!661804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

