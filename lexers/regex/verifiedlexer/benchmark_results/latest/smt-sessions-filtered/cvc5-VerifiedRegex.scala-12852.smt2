; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710016 () Bool)

(assert start!710016)

(declare-fun b!7273271 () Bool)

(assert (=> b!7273271 true))

(declare-fun b!7273268 () Bool)

(declare-fun res!2948320 () Bool)

(declare-fun e!4361513 () Bool)

(assert (=> b!7273268 (=> (not res!2948320) (not e!4361513))))

(declare-datatypes ((C!37898 0))(
  ( (C!37899 (val!28897 Int)) )
))
(declare-datatypes ((Regex!18812 0))(
  ( (ElementMatch!18812 (c!1354212 C!37898)) (Concat!27657 (regOne!38136 Regex!18812) (regTwo!38136 Regex!18812)) (EmptyExpr!18812) (Star!18812 (reg!19141 Regex!18812)) (EmptyLang!18812) (Union!18812 (regOne!38137 Regex!18812) (regTwo!38137 Regex!18812)) )
))
(declare-datatypes ((List!70939 0))(
  ( (Nil!70815) (Cons!70815 (h!77263 Regex!18812) (t!385011 List!70939)) )
))
(declare-datatypes ((Context!15504 0))(
  ( (Context!15505 (exprs!8252 List!70939)) )
))
(declare-fun ct1!250 () Context!15504)

(declare-fun nullableContext!302 (Context!15504) Bool)

(assert (=> b!7273268 (= res!2948320 (nullableContext!302 ct1!250))))

(declare-fun b!7273269 () Bool)

(declare-fun e!4361509 () Bool)

(declare-fun tp!2041435 () Bool)

(assert (=> b!7273269 (= e!4361509 tp!2041435)))

(declare-fun b!7273270 () Bool)

(declare-fun res!2948323 () Bool)

(assert (=> b!7273270 (=> (not res!2948323) (not e!4361513))))

(declare-datatypes ((List!70940 0))(
  ( (Nil!70816) (Cons!70816 (h!77264 C!37898) (t!385012 List!70940)) )
))
(declare-fun s!7854 () List!70940)

(assert (=> b!7273270 (= res!2948323 (is-Cons!70816 s!7854))))

(declare-fun e!4361511 () Bool)

(assert (=> b!7273271 (= e!4361513 (not e!4361511))))

(declare-fun res!2948321 () Bool)

(assert (=> b!7273271 (=> res!2948321 e!4361511)))

(declare-fun lt!2596132 () (Set Context!15504))

(declare-fun lt!2596137 () (Set Context!15504))

(declare-fun derivationStepZipper!3552 ((Set Context!15504) C!37898) (Set Context!15504))

(assert (=> b!7273271 (= res!2948321 (not (= lt!2596137 (derivationStepZipper!3552 lt!2596132 (h!77264 s!7854)))))))

(declare-fun lambda!449226 () Int)

(declare-datatypes ((Unit!164242 0))(
  ( (Unit!164243) )
))
(declare-fun lt!2596134 () Unit!164242)

(declare-fun ct2!346 () Context!15504)

(declare-fun lemmaConcatPreservesForall!1569 (List!70939 List!70939 Int) Unit!164242)

(assert (=> b!7273271 (= lt!2596134 (lemmaConcatPreservesForall!1569 (exprs!8252 ct1!250) (exprs!8252 ct2!346) lambda!449226))))

(declare-fun lambda!449227 () Int)

(declare-fun lt!2596133 () Context!15504)

(declare-fun flatMap!2925 ((Set Context!15504) Int) (Set Context!15504))

(declare-fun derivationStepZipperUp!2582 (Context!15504 C!37898) (Set Context!15504))

(assert (=> b!7273271 (= (flatMap!2925 lt!2596132 lambda!449227) (derivationStepZipperUp!2582 lt!2596133 (h!77264 s!7854)))))

(declare-fun lt!2596138 () Unit!164242)

(declare-fun lemmaFlatMapOnSingletonSet!2325 ((Set Context!15504) Context!15504 Int) Unit!164242)

(assert (=> b!7273271 (= lt!2596138 (lemmaFlatMapOnSingletonSet!2325 lt!2596132 lt!2596133 lambda!449227))))

(assert (=> b!7273271 (= lt!2596132 (set.insert lt!2596133 (as set.empty (Set Context!15504))))))

(declare-fun lt!2596130 () Unit!164242)

(assert (=> b!7273271 (= lt!2596130 (lemmaConcatPreservesForall!1569 (exprs!8252 ct1!250) (exprs!8252 ct2!346) lambda!449226))))

(declare-fun lt!2596136 () Unit!164242)

(assert (=> b!7273271 (= lt!2596136 (lemmaConcatPreservesForall!1569 (exprs!8252 ct1!250) (exprs!8252 ct2!346) lambda!449226))))

(declare-fun lt!2596131 () (Set Context!15504))

(assert (=> b!7273271 (= (flatMap!2925 lt!2596131 lambda!449227) (derivationStepZipperUp!2582 ct1!250 (h!77264 s!7854)))))

(declare-fun lt!2596139 () Unit!164242)

(assert (=> b!7273271 (= lt!2596139 (lemmaFlatMapOnSingletonSet!2325 lt!2596131 ct1!250 lambda!449227))))

(assert (=> b!7273271 (= lt!2596131 (set.insert ct1!250 (as set.empty (Set Context!15504))))))

(assert (=> b!7273271 (= lt!2596137 (derivationStepZipperUp!2582 lt!2596133 (h!77264 s!7854)))))

(declare-fun ++!16712 (List!70939 List!70939) List!70939)

(assert (=> b!7273271 (= lt!2596133 (Context!15505 (++!16712 (exprs!8252 ct1!250) (exprs!8252 ct2!346))))))

(declare-fun lt!2596135 () Unit!164242)

(assert (=> b!7273271 (= lt!2596135 (lemmaConcatPreservesForall!1569 (exprs!8252 ct1!250) (exprs!8252 ct2!346) lambda!449226))))

(declare-fun res!2948318 () Bool)

(assert (=> start!710016 (=> (not res!2948318) (not e!4361513))))

(declare-fun matchZipper!3716 ((Set Context!15504) List!70940) Bool)

(assert (=> start!710016 (= res!2948318 (matchZipper!3716 (set.insert ct2!346 (as set.empty (Set Context!15504))) s!7854))))

(assert (=> start!710016 e!4361513))

(declare-fun e!4361510 () Bool)

(declare-fun inv!90041 (Context!15504) Bool)

(assert (=> start!710016 (and (inv!90041 ct2!346) e!4361510)))

(declare-fun e!4361512 () Bool)

(assert (=> start!710016 e!4361512))

(assert (=> start!710016 (and (inv!90041 ct1!250) e!4361509)))

(declare-fun b!7273272 () Bool)

(declare-fun res!2948322 () Bool)

(assert (=> b!7273272 (=> res!2948322 e!4361511)))

(assert (=> b!7273272 (= res!2948322 (is-Cons!70815 (exprs!8252 ct1!250)))))

(declare-fun b!7273273 () Bool)

(declare-fun e!4361508 () Bool)

(declare-fun forall!17641 (List!70939 Int) Bool)

(assert (=> b!7273273 (= e!4361508 (forall!17641 (exprs!8252 ct1!250) lambda!449226))))

(declare-fun b!7273274 () Bool)

(declare-fun tp!2041434 () Bool)

(assert (=> b!7273274 (= e!4361510 tp!2041434)))

(declare-fun b!7273275 () Bool)

(assert (=> b!7273275 (= e!4361511 e!4361508)))

(declare-fun res!2948319 () Bool)

(assert (=> b!7273275 (=> res!2948319 e!4361508)))

(assert (=> b!7273275 (= res!2948319 (not (matchZipper!3716 lt!2596132 s!7854)))))

(declare-fun lt!2596140 () Unit!164242)

(assert (=> b!7273275 (= lt!2596140 (lemmaConcatPreservesForall!1569 (exprs!8252 ct1!250) (exprs!8252 ct2!346) lambda!449226))))

(declare-fun b!7273276 () Bool)

(declare-fun tp_is_empty!47089 () Bool)

(declare-fun tp!2041433 () Bool)

(assert (=> b!7273276 (= e!4361512 (and tp_is_empty!47089 tp!2041433))))

(assert (= (and start!710016 res!2948318) b!7273268))

(assert (= (and b!7273268 res!2948320) b!7273270))

(assert (= (and b!7273270 res!2948323) b!7273271))

(assert (= (and b!7273271 (not res!2948321)) b!7273272))

(assert (= (and b!7273272 (not res!2948322)) b!7273275))

(assert (= (and b!7273275 (not res!2948319)) b!7273273))

(assert (= start!710016 b!7273274))

(assert (= (and start!710016 (is-Cons!70816 s!7854)) b!7273276))

(assert (= start!710016 b!7273269))

(declare-fun m!7959738 () Bool)

(assert (=> b!7273271 m!7959738))

(declare-fun m!7959740 () Bool)

(assert (=> b!7273271 m!7959740))

(declare-fun m!7959742 () Bool)

(assert (=> b!7273271 m!7959742))

(declare-fun m!7959744 () Bool)

(assert (=> b!7273271 m!7959744))

(declare-fun m!7959746 () Bool)

(assert (=> b!7273271 m!7959746))

(declare-fun m!7959748 () Bool)

(assert (=> b!7273271 m!7959748))

(assert (=> b!7273271 m!7959738))

(declare-fun m!7959750 () Bool)

(assert (=> b!7273271 m!7959750))

(assert (=> b!7273271 m!7959738))

(declare-fun m!7959752 () Bool)

(assert (=> b!7273271 m!7959752))

(declare-fun m!7959754 () Bool)

(assert (=> b!7273271 m!7959754))

(assert (=> b!7273271 m!7959738))

(declare-fun m!7959756 () Bool)

(assert (=> b!7273271 m!7959756))

(declare-fun m!7959758 () Bool)

(assert (=> b!7273271 m!7959758))

(declare-fun m!7959760 () Bool)

(assert (=> b!7273273 m!7959760))

(declare-fun m!7959762 () Bool)

(assert (=> b!7273268 m!7959762))

(declare-fun m!7959764 () Bool)

(assert (=> start!710016 m!7959764))

(assert (=> start!710016 m!7959764))

(declare-fun m!7959766 () Bool)

(assert (=> start!710016 m!7959766))

(declare-fun m!7959768 () Bool)

(assert (=> start!710016 m!7959768))

(declare-fun m!7959770 () Bool)

(assert (=> start!710016 m!7959770))

(declare-fun m!7959772 () Bool)

(assert (=> b!7273275 m!7959772))

(assert (=> b!7273275 m!7959738))

(push 1)

(assert (not b!7273273))

(assert (not b!7273275))

(assert (not b!7273276))

(assert tp_is_empty!47089)

(assert (not b!7273271))

(assert (not b!7273269))

(assert (not b!7273274))

(assert (not b!7273268))

(assert (not start!710016))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2263693 () Bool)

(declare-fun c!1354220 () Bool)

(declare-fun isEmpty!40734 (List!70940) Bool)

(assert (=> d!2263693 (= c!1354220 (isEmpty!40734 s!7854))))

(declare-fun e!4361534 () Bool)

(assert (=> d!2263693 (= (matchZipper!3716 (set.insert ct2!346 (as set.empty (Set Context!15504))) s!7854) e!4361534)))

(declare-fun b!7273312 () Bool)

(declare-fun nullableZipper!3016 ((Set Context!15504)) Bool)

(assert (=> b!7273312 (= e!4361534 (nullableZipper!3016 (set.insert ct2!346 (as set.empty (Set Context!15504)))))))

(declare-fun b!7273313 () Bool)

(declare-fun head!15014 (List!70940) C!37898)

(declare-fun tail!14521 (List!70940) List!70940)

(assert (=> b!7273313 (= e!4361534 (matchZipper!3716 (derivationStepZipper!3552 (set.insert ct2!346 (as set.empty (Set Context!15504))) (head!15014 s!7854)) (tail!14521 s!7854)))))

(assert (= (and d!2263693 c!1354220) b!7273312))

(assert (= (and d!2263693 (not c!1354220)) b!7273313))

(declare-fun m!7959810 () Bool)

(assert (=> d!2263693 m!7959810))

(assert (=> b!7273312 m!7959764))

(declare-fun m!7959812 () Bool)

(assert (=> b!7273312 m!7959812))

(declare-fun m!7959814 () Bool)

(assert (=> b!7273313 m!7959814))

(assert (=> b!7273313 m!7959764))

(assert (=> b!7273313 m!7959814))

(declare-fun m!7959816 () Bool)

(assert (=> b!7273313 m!7959816))

(declare-fun m!7959818 () Bool)

(assert (=> b!7273313 m!7959818))

(assert (=> b!7273313 m!7959816))

(assert (=> b!7273313 m!7959818))

(declare-fun m!7959820 () Bool)

(assert (=> b!7273313 m!7959820))

(assert (=> start!710016 d!2263693))

(declare-fun bs!1911518 () Bool)

(declare-fun d!2263695 () Bool)

(assert (= bs!1911518 (and d!2263695 b!7273271)))

(declare-fun lambda!449248 () Int)

(assert (=> bs!1911518 (= lambda!449248 lambda!449226)))

(assert (=> d!2263695 (= (inv!90041 ct2!346) (forall!17641 (exprs!8252 ct2!346) lambda!449248))))

(declare-fun bs!1911519 () Bool)

(assert (= bs!1911519 d!2263695))

(declare-fun m!7959822 () Bool)

(assert (=> bs!1911519 m!7959822))

(assert (=> start!710016 d!2263695))

(declare-fun bs!1911520 () Bool)

(declare-fun d!2263697 () Bool)

(assert (= bs!1911520 (and d!2263697 b!7273271)))

(declare-fun lambda!449249 () Int)

(assert (=> bs!1911520 (= lambda!449249 lambda!449226)))

(declare-fun bs!1911521 () Bool)

(assert (= bs!1911521 (and d!2263697 d!2263695)))

(assert (=> bs!1911521 (= lambda!449249 lambda!449248)))

(assert (=> d!2263697 (= (inv!90041 ct1!250) (forall!17641 (exprs!8252 ct1!250) lambda!449249))))

(declare-fun bs!1911522 () Bool)

(assert (= bs!1911522 d!2263697))

(declare-fun m!7959824 () Bool)

(assert (=> bs!1911522 m!7959824))

(assert (=> start!710016 d!2263697))

(declare-fun d!2263699 () Bool)

(declare-fun choose!56444 ((Set Context!15504) Int) (Set Context!15504))

(assert (=> d!2263699 (= (flatMap!2925 lt!2596132 lambda!449227) (choose!56444 lt!2596132 lambda!449227))))

(declare-fun bs!1911523 () Bool)

(assert (= bs!1911523 d!2263699))

(declare-fun m!7959826 () Bool)

(assert (=> bs!1911523 m!7959826))

(assert (=> b!7273271 d!2263699))

(declare-fun d!2263701 () Bool)

(declare-fun dynLambda!28953 (Int Context!15504) (Set Context!15504))

(assert (=> d!2263701 (= (flatMap!2925 lt!2596131 lambda!449227) (dynLambda!28953 lambda!449227 ct1!250))))

(declare-fun lt!2596176 () Unit!164242)

(declare-fun choose!56445 ((Set Context!15504) Context!15504 Int) Unit!164242)

(assert (=> d!2263701 (= lt!2596176 (choose!56445 lt!2596131 ct1!250 lambda!449227))))

(assert (=> d!2263701 (= lt!2596131 (set.insert ct1!250 (as set.empty (Set Context!15504))))))

(assert (=> d!2263701 (= (lemmaFlatMapOnSingletonSet!2325 lt!2596131 ct1!250 lambda!449227) lt!2596176)))

(declare-fun b_lambda!280565 () Bool)

(assert (=> (not b_lambda!280565) (not d!2263701)))

(declare-fun bs!1911524 () Bool)

(assert (= bs!1911524 d!2263701))

(assert (=> bs!1911524 m!7959744))

(declare-fun m!7959828 () Bool)

(assert (=> bs!1911524 m!7959828))

(declare-fun m!7959830 () Bool)

(assert (=> bs!1911524 m!7959830))

(assert (=> bs!1911524 m!7959758))

(assert (=> b!7273271 d!2263701))

(declare-fun b!7273324 () Bool)

(declare-fun res!2948347 () Bool)

(declare-fun e!4361540 () Bool)

(assert (=> b!7273324 (=> (not res!2948347) (not e!4361540))))

(declare-fun lt!2596179 () List!70939)

(declare-fun size!41833 (List!70939) Int)

(assert (=> b!7273324 (= res!2948347 (= (size!41833 lt!2596179) (+ (size!41833 (exprs!8252 ct1!250)) (size!41833 (exprs!8252 ct2!346)))))))

(declare-fun b!7273323 () Bool)

(declare-fun e!4361539 () List!70939)

(assert (=> b!7273323 (= e!4361539 (Cons!70815 (h!77263 (exprs!8252 ct1!250)) (++!16712 (t!385011 (exprs!8252 ct1!250)) (exprs!8252 ct2!346))))))

(declare-fun b!7273325 () Bool)

(assert (=> b!7273325 (= e!4361540 (or (not (= (exprs!8252 ct2!346) Nil!70815)) (= lt!2596179 (exprs!8252 ct1!250))))))

(declare-fun d!2263703 () Bool)

(assert (=> d!2263703 e!4361540))

(declare-fun res!2948346 () Bool)

(assert (=> d!2263703 (=> (not res!2948346) (not e!4361540))))

(declare-fun content!14785 (List!70939) (Set Regex!18812))

(assert (=> d!2263703 (= res!2948346 (= (content!14785 lt!2596179) (set.union (content!14785 (exprs!8252 ct1!250)) (content!14785 (exprs!8252 ct2!346)))))))

(assert (=> d!2263703 (= lt!2596179 e!4361539)))

(declare-fun c!1354223 () Bool)

(assert (=> d!2263703 (= c!1354223 (is-Nil!70815 (exprs!8252 ct1!250)))))

(assert (=> d!2263703 (= (++!16712 (exprs!8252 ct1!250) (exprs!8252 ct2!346)) lt!2596179)))

(declare-fun b!7273322 () Bool)

(assert (=> b!7273322 (= e!4361539 (exprs!8252 ct2!346))))

(assert (= (and d!2263703 c!1354223) b!7273322))

(assert (= (and d!2263703 (not c!1354223)) b!7273323))

(assert (= (and d!2263703 res!2948346) b!7273324))

(assert (= (and b!7273324 res!2948347) b!7273325))

(declare-fun m!7959832 () Bool)

(assert (=> b!7273324 m!7959832))

(declare-fun m!7959834 () Bool)

(assert (=> b!7273324 m!7959834))

(declare-fun m!7959836 () Bool)

(assert (=> b!7273324 m!7959836))

(declare-fun m!7959838 () Bool)

(assert (=> b!7273323 m!7959838))

(declare-fun m!7959840 () Bool)

(assert (=> d!2263703 m!7959840))

(declare-fun m!7959842 () Bool)

(assert (=> d!2263703 m!7959842))

(declare-fun m!7959844 () Bool)

(assert (=> d!2263703 m!7959844))

(assert (=> b!7273271 d!2263703))

(declare-fun e!4361553 () (Set Context!15504))

(declare-fun call!663566 () (Set Context!15504))

(declare-fun b!7273342 () Bool)

(assert (=> b!7273342 (= e!4361553 (set.union call!663566 (derivationStepZipperUp!2582 (Context!15505 (t!385011 (exprs!8252 lt!2596133))) (h!77264 s!7854))))))

(declare-fun b!7273343 () Bool)

(declare-fun e!4361554 () (Set Context!15504))

(assert (=> b!7273343 (= e!4361554 (as set.empty (Set Context!15504)))))

(declare-fun b!7273344 () Bool)

(declare-fun e!4361555 () Bool)

(declare-fun nullable!8011 (Regex!18812) Bool)

(assert (=> b!7273344 (= e!4361555 (nullable!8011 (h!77263 (exprs!8252 lt!2596133))))))

(declare-fun d!2263707 () Bool)

(declare-fun c!1354229 () Bool)

(assert (=> d!2263707 (= c!1354229 e!4361555)))

(declare-fun res!2948356 () Bool)

(assert (=> d!2263707 (=> (not res!2948356) (not e!4361555))))

(assert (=> d!2263707 (= res!2948356 (is-Cons!70815 (exprs!8252 lt!2596133)))))

(assert (=> d!2263707 (= (derivationStepZipperUp!2582 lt!2596133 (h!77264 s!7854)) e!4361553)))

(declare-fun bm!663561 () Bool)

(declare-fun derivationStepZipperDown!2744 (Regex!18812 Context!15504 C!37898) (Set Context!15504))

(assert (=> bm!663561 (= call!663566 (derivationStepZipperDown!2744 (h!77263 (exprs!8252 lt!2596133)) (Context!15505 (t!385011 (exprs!8252 lt!2596133))) (h!77264 s!7854)))))

(declare-fun b!7273345 () Bool)

(assert (=> b!7273345 (= e!4361554 call!663566)))

(declare-fun b!7273346 () Bool)

(assert (=> b!7273346 (= e!4361553 e!4361554)))

(declare-fun c!1354228 () Bool)

(assert (=> b!7273346 (= c!1354228 (is-Cons!70815 (exprs!8252 lt!2596133)))))

(assert (= (and d!2263707 res!2948356) b!7273344))

(assert (= (and d!2263707 c!1354229) b!7273342))

(assert (= (and d!2263707 (not c!1354229)) b!7273346))

(assert (= (and b!7273346 c!1354228) b!7273345))

(assert (= (and b!7273346 (not c!1354228)) b!7273343))

(assert (= (or b!7273342 b!7273345) bm!663561))

(declare-fun m!7959850 () Bool)

(assert (=> b!7273342 m!7959850))

(declare-fun m!7959852 () Bool)

(assert (=> b!7273344 m!7959852))

(declare-fun m!7959854 () Bool)

(assert (=> bm!663561 m!7959854))

(assert (=> b!7273271 d!2263707))

(declare-fun bs!1911526 () Bool)

(declare-fun d!2263711 () Bool)

(assert (= bs!1911526 (and d!2263711 b!7273271)))

(declare-fun lambda!449255 () Int)

(assert (=> bs!1911526 (= lambda!449255 lambda!449227)))

(assert (=> d!2263711 true))

(assert (=> d!2263711 (= (derivationStepZipper!3552 lt!2596132 (h!77264 s!7854)) (flatMap!2925 lt!2596132 lambda!449255))))

(declare-fun bs!1911527 () Bool)

(assert (= bs!1911527 d!2263711))

(declare-fun m!7959856 () Bool)

(assert (=> bs!1911527 m!7959856))

(assert (=> b!7273271 d!2263711))

(declare-fun d!2263713 () Bool)

(assert (=> d!2263713 (= (flatMap!2925 lt!2596132 lambda!449227) (dynLambda!28953 lambda!449227 lt!2596133))))

(declare-fun lt!2596180 () Unit!164242)

(assert (=> d!2263713 (= lt!2596180 (choose!56445 lt!2596132 lt!2596133 lambda!449227))))

(assert (=> d!2263713 (= lt!2596132 (set.insert lt!2596133 (as set.empty (Set Context!15504))))))

(assert (=> d!2263713 (= (lemmaFlatMapOnSingletonSet!2325 lt!2596132 lt!2596133 lambda!449227) lt!2596180)))

(declare-fun b_lambda!280569 () Bool)

(assert (=> (not b_lambda!280569) (not d!2263713)))

(declare-fun bs!1911529 () Bool)

(assert (= bs!1911529 d!2263713))

(assert (=> bs!1911529 m!7959754))

(declare-fun m!7959860 () Bool)

(assert (=> bs!1911529 m!7959860))

(declare-fun m!7959862 () Bool)

(assert (=> bs!1911529 m!7959862))

(assert (=> bs!1911529 m!7959752))

(assert (=> b!7273271 d!2263713))

(declare-fun e!4361556 () (Set Context!15504))

(declare-fun b!7273349 () Bool)

(declare-fun call!663567 () (Set Context!15504))

(assert (=> b!7273349 (= e!4361556 (set.union call!663567 (derivationStepZipperUp!2582 (Context!15505 (t!385011 (exprs!8252 ct1!250))) (h!77264 s!7854))))))

(declare-fun b!7273350 () Bool)

(declare-fun e!4361557 () (Set Context!15504))

(assert (=> b!7273350 (= e!4361557 (as set.empty (Set Context!15504)))))

(declare-fun b!7273351 () Bool)

(declare-fun e!4361558 () Bool)

(assert (=> b!7273351 (= e!4361558 (nullable!8011 (h!77263 (exprs!8252 ct1!250))))))

(declare-fun d!2263717 () Bool)

(declare-fun c!1354234 () Bool)

(assert (=> d!2263717 (= c!1354234 e!4361558)))

(declare-fun res!2948357 () Bool)

(assert (=> d!2263717 (=> (not res!2948357) (not e!4361558))))

(assert (=> d!2263717 (= res!2948357 (is-Cons!70815 (exprs!8252 ct1!250)))))

(assert (=> d!2263717 (= (derivationStepZipperUp!2582 ct1!250 (h!77264 s!7854)) e!4361556)))

(declare-fun bm!663562 () Bool)

(assert (=> bm!663562 (= call!663567 (derivationStepZipperDown!2744 (h!77263 (exprs!8252 ct1!250)) (Context!15505 (t!385011 (exprs!8252 ct1!250))) (h!77264 s!7854)))))

(declare-fun b!7273352 () Bool)

(assert (=> b!7273352 (= e!4361557 call!663567)))

(declare-fun b!7273353 () Bool)

(assert (=> b!7273353 (= e!4361556 e!4361557)))

(declare-fun c!1354233 () Bool)

(assert (=> b!7273353 (= c!1354233 (is-Cons!70815 (exprs!8252 ct1!250)))))

(assert (= (and d!2263717 res!2948357) b!7273351))

(assert (= (and d!2263717 c!1354234) b!7273349))

(assert (= (and d!2263717 (not c!1354234)) b!7273353))

(assert (= (and b!7273353 c!1354233) b!7273352))

(assert (= (and b!7273353 (not c!1354233)) b!7273350))

(assert (= (or b!7273349 b!7273352) bm!663562))

(declare-fun m!7959864 () Bool)

(assert (=> b!7273349 m!7959864))

(declare-fun m!7959866 () Bool)

(assert (=> b!7273351 m!7959866))

(declare-fun m!7959868 () Bool)

(assert (=> bm!663562 m!7959868))

(assert (=> b!7273271 d!2263717))

(declare-fun d!2263719 () Bool)

(assert (=> d!2263719 (forall!17641 (++!16712 (exprs!8252 ct1!250) (exprs!8252 ct2!346)) lambda!449226)))

(declare-fun lt!2596183 () Unit!164242)

(declare-fun choose!56446 (List!70939 List!70939 Int) Unit!164242)

(assert (=> d!2263719 (= lt!2596183 (choose!56446 (exprs!8252 ct1!250) (exprs!8252 ct2!346) lambda!449226))))

(assert (=> d!2263719 (forall!17641 (exprs!8252 ct1!250) lambda!449226)))

(assert (=> d!2263719 (= (lemmaConcatPreservesForall!1569 (exprs!8252 ct1!250) (exprs!8252 ct2!346) lambda!449226) lt!2596183)))

(declare-fun bs!1911530 () Bool)

(assert (= bs!1911530 d!2263719))

(assert (=> bs!1911530 m!7959748))

(assert (=> bs!1911530 m!7959748))

(declare-fun m!7959870 () Bool)

(assert (=> bs!1911530 m!7959870))

(declare-fun m!7959872 () Bool)

(assert (=> bs!1911530 m!7959872))

(assert (=> bs!1911530 m!7959760))

(assert (=> b!7273271 d!2263719))

(declare-fun d!2263721 () Bool)

(assert (=> d!2263721 (= (flatMap!2925 lt!2596131 lambda!449227) (choose!56444 lt!2596131 lambda!449227))))

(declare-fun bs!1911531 () Bool)

(assert (= bs!1911531 d!2263721))

(declare-fun m!7959874 () Bool)

(assert (=> bs!1911531 m!7959874))

(assert (=> b!7273271 d!2263721))

(declare-fun d!2263723 () Bool)

(declare-fun c!1354235 () Bool)

(assert (=> d!2263723 (= c!1354235 (isEmpty!40734 s!7854))))

(declare-fun e!4361559 () Bool)

(assert (=> d!2263723 (= (matchZipper!3716 lt!2596132 s!7854) e!4361559)))

(declare-fun b!7273354 () Bool)

(assert (=> b!7273354 (= e!4361559 (nullableZipper!3016 lt!2596132))))

(declare-fun b!7273355 () Bool)

(assert (=> b!7273355 (= e!4361559 (matchZipper!3716 (derivationStepZipper!3552 lt!2596132 (head!15014 s!7854)) (tail!14521 s!7854)))))

(assert (= (and d!2263723 c!1354235) b!7273354))

(assert (= (and d!2263723 (not c!1354235)) b!7273355))

(assert (=> d!2263723 m!7959810))

(declare-fun m!7959876 () Bool)

(assert (=> b!7273354 m!7959876))

(assert (=> b!7273355 m!7959814))

(assert (=> b!7273355 m!7959814))

(declare-fun m!7959878 () Bool)

(assert (=> b!7273355 m!7959878))

(assert (=> b!7273355 m!7959818))

(assert (=> b!7273355 m!7959878))

(assert (=> b!7273355 m!7959818))

(declare-fun m!7959880 () Bool)

(assert (=> b!7273355 m!7959880))

(assert (=> b!7273275 d!2263723))

(assert (=> b!7273275 d!2263719))

(declare-fun d!2263725 () Bool)

(declare-fun res!2948362 () Bool)

(declare-fun e!4361564 () Bool)

(assert (=> d!2263725 (=> res!2948362 e!4361564)))

(assert (=> d!2263725 (= res!2948362 (is-Nil!70815 (exprs!8252 ct1!250)))))

(assert (=> d!2263725 (= (forall!17641 (exprs!8252 ct1!250) lambda!449226) e!4361564)))

(declare-fun b!7273360 () Bool)

(declare-fun e!4361565 () Bool)

(assert (=> b!7273360 (= e!4361564 e!4361565)))

(declare-fun res!2948363 () Bool)

(assert (=> b!7273360 (=> (not res!2948363) (not e!4361565))))

(declare-fun dynLambda!28954 (Int Regex!18812) Bool)

(assert (=> b!7273360 (= res!2948363 (dynLambda!28954 lambda!449226 (h!77263 (exprs!8252 ct1!250))))))

(declare-fun b!7273361 () Bool)

(assert (=> b!7273361 (= e!4361565 (forall!17641 (t!385011 (exprs!8252 ct1!250)) lambda!449226))))

(assert (= (and d!2263725 (not res!2948362)) b!7273360))

(assert (= (and b!7273360 res!2948363) b!7273361))

(declare-fun b_lambda!280571 () Bool)

(assert (=> (not b_lambda!280571) (not b!7273360)))

(declare-fun m!7959882 () Bool)

(assert (=> b!7273360 m!7959882))

(declare-fun m!7959884 () Bool)

(assert (=> b!7273361 m!7959884))

(assert (=> b!7273273 d!2263725))

(declare-fun bs!1911532 () Bool)

(declare-fun d!2263727 () Bool)

(assert (= bs!1911532 (and d!2263727 b!7273271)))

(declare-fun lambda!449258 () Int)

(assert (=> bs!1911532 (not (= lambda!449258 lambda!449226))))

(declare-fun bs!1911533 () Bool)

(assert (= bs!1911533 (and d!2263727 d!2263695)))

(assert (=> bs!1911533 (not (= lambda!449258 lambda!449248))))

(declare-fun bs!1911534 () Bool)

(assert (= bs!1911534 (and d!2263727 d!2263697)))

(assert (=> bs!1911534 (not (= lambda!449258 lambda!449249))))

(assert (=> d!2263727 (= (nullableContext!302 ct1!250) (forall!17641 (exprs!8252 ct1!250) lambda!449258))))

(declare-fun bs!1911535 () Bool)

(assert (= bs!1911535 d!2263727))

(declare-fun m!7959886 () Bool)

(assert (=> bs!1911535 m!7959886))

(assert (=> b!7273268 d!2263727))

(declare-fun b!7273370 () Bool)

(declare-fun e!4361570 () Bool)

(declare-fun tp!2041447 () Bool)

(assert (=> b!7273370 (= e!4361570 (and tp_is_empty!47089 tp!2041447))))

(assert (=> b!7273276 (= tp!2041433 e!4361570)))

(assert (= (and b!7273276 (is-Cons!70816 (t!385012 s!7854))) b!7273370))

(declare-fun b!7273377 () Bool)

(declare-fun e!4361574 () Bool)

(declare-fun tp!2041452 () Bool)

(declare-fun tp!2041453 () Bool)

(assert (=> b!7273377 (= e!4361574 (and tp!2041452 tp!2041453))))

(assert (=> b!7273269 (= tp!2041435 e!4361574)))

(assert (= (and b!7273269 (is-Cons!70815 (exprs!8252 ct1!250))) b!7273377))

(declare-fun b!7273378 () Bool)

(declare-fun e!4361575 () Bool)

(declare-fun tp!2041454 () Bool)

(declare-fun tp!2041455 () Bool)

(assert (=> b!7273378 (= e!4361575 (and tp!2041454 tp!2041455))))

(assert (=> b!7273274 (= tp!2041434 e!4361575)))

(assert (= (and b!7273274 (is-Cons!70815 (exprs!8252 ct2!346))) b!7273378))

(declare-fun b_lambda!280573 () Bool)

(assert (= b_lambda!280569 (or b!7273271 b_lambda!280573)))

(declare-fun bs!1911536 () Bool)

(declare-fun d!2263729 () Bool)

(assert (= bs!1911536 (and d!2263729 b!7273271)))

(assert (=> bs!1911536 (= (dynLambda!28953 lambda!449227 lt!2596133) (derivationStepZipperUp!2582 lt!2596133 (h!77264 s!7854)))))

(assert (=> bs!1911536 m!7959750))

(assert (=> d!2263713 d!2263729))

(declare-fun b_lambda!280575 () Bool)

(assert (= b_lambda!280571 (or b!7273271 b_lambda!280575)))

(declare-fun bs!1911537 () Bool)

(declare-fun d!2263731 () Bool)

(assert (= bs!1911537 (and d!2263731 b!7273271)))

(declare-fun validRegex!9593 (Regex!18812) Bool)

(assert (=> bs!1911537 (= (dynLambda!28954 lambda!449226 (h!77263 (exprs!8252 ct1!250))) (validRegex!9593 (h!77263 (exprs!8252 ct1!250))))))

(declare-fun m!7959892 () Bool)

(assert (=> bs!1911537 m!7959892))

(assert (=> b!7273360 d!2263731))

(declare-fun b_lambda!280577 () Bool)

(assert (= b_lambda!280565 (or b!7273271 b_lambda!280577)))

(declare-fun bs!1911538 () Bool)

(declare-fun d!2263733 () Bool)

(assert (= bs!1911538 (and d!2263733 b!7273271)))

(assert (=> bs!1911538 (= (dynLambda!28953 lambda!449227 ct1!250) (derivationStepZipperUp!2582 ct1!250 (h!77264 s!7854)))))

(assert (=> bs!1911538 m!7959740))

(assert (=> d!2263701 d!2263733))

(push 1)

(assert (not d!2263699))

(assert (not b!7273378))

(assert (not b!7273370))

(assert (not b!7273344))

(assert (not b!7273349))

(assert (not b_lambda!280575))

(assert (not b_lambda!280573))

(assert (not d!2263701))

(assert (not d!2263721))

(assert (not d!2263697))

(assert (not b!7273312))

(assert (not d!2263719))

(assert (not b_lambda!280577))

(assert (not b!7273324))

(assert (not b!7273355))

(assert (not bs!1911537))

(assert (not bs!1911536))

(assert (not d!2263727))

(assert (not d!2263723))

(assert tp_is_empty!47089)

(assert (not b!7273342))

(assert (not d!2263693))

(assert (not b!7273323))

(assert (not bm!663562))

(assert (not d!2263695))

(assert (not b!7273313))

(assert (not b!7273361))

(assert (not d!2263713))

(assert (not bm!663561))

(assert (not b!7273377))

(assert (not d!2263703))

(assert (not b!7273351))

(assert (not d!2263711))

(assert (not bs!1911538))

(assert (not b!7273354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

