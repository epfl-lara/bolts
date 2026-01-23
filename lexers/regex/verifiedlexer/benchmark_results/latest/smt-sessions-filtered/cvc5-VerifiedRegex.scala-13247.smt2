; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720732 () Bool)

(assert start!720732)

(declare-fun b!7389838 () Bool)

(assert (=> b!7389838 true))

(declare-fun b!7389834 () Bool)

(assert (=> b!7389834 true))

(declare-fun b!7389833 () Bool)

(declare-fun e!4422878 () Bool)

(declare-fun e!4422877 () Bool)

(assert (=> b!7389833 (= e!4422878 e!4422877)))

(declare-fun res!2979404 () Bool)

(assert (=> b!7389833 (=> (not res!2979404) (not e!4422877))))

(declare-datatypes ((C!39010 0))(
  ( (C!39011 (val!29879 Int)) )
))
(declare-datatypes ((Regex!19368 0))(
  ( (ElementMatch!19368 (c!1373308 C!39010)) (Concat!28213 (regOne!39248 Regex!19368) (regTwo!39248 Regex!19368)) (EmptyExpr!19368) (Star!19368 (reg!19697 Regex!19368)) (EmptyLang!19368) (Union!19368 (regOne!39249 Regex!19368) (regTwo!39249 Regex!19368)) )
))
(declare-datatypes ((List!71904 0))(
  ( (Nil!71780) (Cons!71780 (h!78228 Regex!19368) (t!386459 List!71904)) )
))
(declare-datatypes ((Context!16616 0))(
  ( (Context!16617 (exprs!8808 List!71904)) )
))
(declare-fun lt!2617782 () (Set Context!16616))

(declare-fun c!10532 () Context!16616)

(declare-fun lt!2617786 () C!39010)

(declare-fun derivationStepZipperUp!2774 (Context!16616 C!39010) (Set Context!16616))

(assert (=> b!7389833 (= res!2979404 (= (derivationStepZipperUp!2774 c!10532 lt!2617786) lt!2617782))))

(declare-fun lt!2617783 () Context!16616)

(assert (=> b!7389833 (= lt!2617782 (set.insert lt!2617783 (as set.empty (Set Context!16616))))))

(assert (=> b!7389833 (= lt!2617783 (Context!16617 Nil!71780))))

(declare-fun lt!2617784 () (Set Context!16616))

(declare-fun z!3451 () (Set Context!16616))

(declare-fun derivationStepZipper!3652 ((Set Context!16616) C!39010) (Set Context!16616))

(assert (=> b!7389833 (= lt!2617784 (derivationStepZipper!3652 z!3451 lt!2617786))))

(declare-datatypes ((List!71905 0))(
  ( (Nil!71781) (Cons!71781 (h!78229 C!39010) (t!386460 List!71905)) )
))
(declare-fun s!7927 () List!71905)

(declare-fun head!15120 (List!71905) C!39010)

(assert (=> b!7389833 (= lt!2617786 (head!15120 s!7927))))

(declare-fun setRes!55955 () Bool)

(declare-fun e!4422882 () Bool)

(declare-fun setNonEmpty!55955 () Bool)

(declare-fun tp!2104304 () Bool)

(declare-fun setElem!55955 () Context!16616)

(declare-fun inv!91782 (Context!16616) Bool)

(assert (=> setNonEmpty!55955 (= setRes!55955 (and tp!2104304 (inv!91782 setElem!55955) e!4422882))))

(declare-fun setRest!55955 () (Set Context!16616))

(assert (=> setNonEmpty!55955 (= z!3451 (set.union (set.insert setElem!55955 (as set.empty (Set Context!16616))) setRest!55955))))

(declare-fun res!2979409 () Bool)

(declare-fun e!4422883 () Bool)

(assert (=> b!7389834 (=> res!2979409 e!4422883)))

(declare-fun lambda!459034 () Int)

(declare-fun exists!4730 ((Set Context!16616) Int) Bool)

(assert (=> b!7389834 (= res!2979409 (not (exists!4730 lt!2617784 lambda!459034)))))

(declare-fun b!7389835 () Bool)

(declare-fun e!4422881 () Bool)

(declare-fun tp!2104300 () Bool)

(assert (=> b!7389835 (= e!4422881 tp!2104300)))

(declare-fun res!2979403 () Bool)

(assert (=> start!720732 (=> (not res!2979403) (not e!4422878))))

(assert (=> start!720732 (= res!2979403 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16616)))))))

(assert (=> start!720732 e!4422878))

(declare-fun condSetEmpty!55955 () Bool)

(assert (=> start!720732 (= condSetEmpty!55955 (= z!3451 (as set.empty (Set Context!16616))))))

(assert (=> start!720732 setRes!55955))

(assert (=> start!720732 (and (inv!91782 c!10532) e!4422881)))

(declare-fun tp_is_empty!48999 () Bool)

(assert (=> start!720732 tp_is_empty!48999))

(declare-fun e!4422879 () Bool)

(assert (=> start!720732 e!4422879))

(declare-fun b!7389836 () Bool)

(declare-fun res!2979407 () Bool)

(assert (=> b!7389836 (=> (not res!2979407) (not e!4422878))))

(declare-fun a!2228 () C!39010)

(assert (=> b!7389836 (= res!2979407 (and (is-Cons!71781 s!7927) (= (h!78229 s!7927) a!2228)))))

(declare-fun b!7389837 () Bool)

(declare-fun res!2979405 () Bool)

(assert (=> b!7389837 (=> (not res!2979405) (not e!4422878))))

(declare-fun head!15121 (List!71904) Regex!19368)

(assert (=> b!7389837 (= res!2979405 (= (head!15121 (exprs!8808 c!10532)) (ElementMatch!19368 a!2228)))))

(assert (=> b!7389838 (= e!4422877 (not e!4422883))))

(declare-fun res!2979408 () Bool)

(assert (=> b!7389838 (=> res!2979408 e!4422883)))

(assert (=> b!7389838 (= res!2979408 (or (not (set.member lt!2617783 lt!2617784)) (= lt!2617784 lt!2617782)))))

(declare-fun lt!2617785 () Context!16616)

(declare-fun lambda!459033 () Int)

(declare-fun flatMapPost!187 ((Set Context!16616) Int Context!16616) Context!16616)

(assert (=> b!7389838 (= (flatMapPost!187 z!3451 lambda!459033 lt!2617783) lt!2617785)))

(declare-fun empty!3467 () Context!16616)

(assert (=> b!7389838 (= lt!2617785 empty!3467)))

(assert (=> b!7389838 true))

(declare-fun e!4422880 () Bool)

(assert (=> b!7389838 (and (inv!91782 empty!3467) e!4422880)))

(declare-fun b!7389839 () Bool)

(declare-fun tp!2104301 () Bool)

(assert (=> b!7389839 (= e!4422879 (and tp_is_empty!48999 tp!2104301))))

(declare-fun b!7389840 () Bool)

(declare-fun tp!2104302 () Bool)

(assert (=> b!7389840 (= e!4422882 tp!2104302)))

(declare-fun b!7389841 () Bool)

(declare-fun res!2979406 () Bool)

(assert (=> b!7389841 (=> (not res!2979406) (not e!4422878))))

(declare-fun isEmpty!41008 (List!71904) Bool)

(assert (=> b!7389841 (= res!2979406 (not (isEmpty!41008 (exprs!8808 c!10532))))))

(declare-fun b!7389842 () Bool)

(declare-fun lt!2617787 () Context!16616)

(assert (=> b!7389842 (= e!4422883 (set.member lt!2617787 lt!2617784))))

(assert (=> b!7389842 (= (flatMapPost!187 z!3451 lambda!459033 lt!2617787) lt!2617785)))

(declare-fun getWitness!2423 ((Set Context!16616) Int) Context!16616)

(assert (=> b!7389842 (= lt!2617787 (getWitness!2423 lt!2617784 lambda!459034))))

(declare-fun b!7389843 () Bool)

(declare-fun tp!2104303 () Bool)

(assert (=> b!7389843 (= e!4422880 tp!2104303)))

(declare-fun b!7389844 () Bool)

(declare-fun res!2979410 () Bool)

(assert (=> b!7389844 (=> (not res!2979410) (not e!4422878))))

(declare-fun tail!14775 (List!71904) List!71904)

(assert (=> b!7389844 (= res!2979410 (isEmpty!41008 (tail!14775 (exprs!8808 c!10532))))))

(declare-fun setIsEmpty!55955 () Bool)

(assert (=> setIsEmpty!55955 setRes!55955))

(assert (= (and start!720732 res!2979403) b!7389841))

(assert (= (and b!7389841 res!2979406) b!7389837))

(assert (= (and b!7389837 res!2979405) b!7389844))

(assert (= (and b!7389844 res!2979410) b!7389836))

(assert (= (and b!7389836 res!2979407) b!7389833))

(assert (= (and b!7389833 res!2979404) b!7389838))

(assert (= b!7389838 b!7389843))

(assert (= (and b!7389838 (not res!2979408)) b!7389834))

(assert (= (and b!7389834 (not res!2979409)) b!7389842))

(assert (= (and start!720732 condSetEmpty!55955) setIsEmpty!55955))

(assert (= (and start!720732 (not condSetEmpty!55955)) setNonEmpty!55955))

(assert (= setNonEmpty!55955 b!7389840))

(assert (= start!720732 b!7389835))

(assert (= (and start!720732 (is-Cons!71781 s!7927)) b!7389839))

(declare-fun m!8036036 () Bool)

(assert (=> b!7389833 m!8036036))

(declare-fun m!8036038 () Bool)

(assert (=> b!7389833 m!8036038))

(declare-fun m!8036040 () Bool)

(assert (=> b!7389833 m!8036040))

(declare-fun m!8036042 () Bool)

(assert (=> b!7389833 m!8036042))

(declare-fun m!8036044 () Bool)

(assert (=> b!7389837 m!8036044))

(declare-fun m!8036046 () Bool)

(assert (=> b!7389844 m!8036046))

(assert (=> b!7389844 m!8036046))

(declare-fun m!8036048 () Bool)

(assert (=> b!7389844 m!8036048))

(declare-fun m!8036050 () Bool)

(assert (=> b!7389841 m!8036050))

(declare-fun m!8036052 () Bool)

(assert (=> setNonEmpty!55955 m!8036052))

(declare-fun m!8036054 () Bool)

(assert (=> b!7389842 m!8036054))

(declare-fun m!8036056 () Bool)

(assert (=> b!7389842 m!8036056))

(declare-fun m!8036058 () Bool)

(assert (=> b!7389842 m!8036058))

(declare-fun m!8036060 () Bool)

(assert (=> start!720732 m!8036060))

(declare-fun m!8036062 () Bool)

(assert (=> start!720732 m!8036062))

(declare-fun m!8036064 () Bool)

(assert (=> b!7389838 m!8036064))

(declare-fun m!8036066 () Bool)

(assert (=> b!7389838 m!8036066))

(declare-fun m!8036068 () Bool)

(assert (=> b!7389838 m!8036068))

(declare-fun m!8036070 () Bool)

(assert (=> b!7389834 m!8036070))

(push 1)

(assert tp_is_empty!48999)

(assert (not b!7389835))

(assert (not setNonEmpty!55955))

(assert (not b!7389840))

(assert (not b!7389834))

(assert (not b!7389833))

(assert (not b!7389842))

(assert (not b!7389839))

(assert (not b!7389837))

(assert (not start!720732))

(assert (not b!7389844))

(assert (not b!7389841))

(assert (not b!7389838))

(assert (not b!7389843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!680392 () Bool)

(declare-fun call!680397 () (Set Context!16616))

(declare-fun derivationStepZipperDown!3174 (Regex!19368 Context!16616 C!39010) (Set Context!16616))

(assert (=> bm!680392 (= call!680397 (derivationStepZipperDown!3174 (h!78228 (exprs!8808 c!10532)) (Context!16617 (t!386459 (exprs!8808 c!10532))) lt!2617786))))

(declare-fun b!7389899 () Bool)

(declare-fun e!4422912 () (Set Context!16616))

(assert (=> b!7389899 (= e!4422912 call!680397)))

(declare-fun b!7389900 () Bool)

(declare-fun e!4422913 () Bool)

(declare-fun nullable!8422 (Regex!19368) Bool)

(assert (=> b!7389900 (= e!4422913 (nullable!8422 (h!78228 (exprs!8808 c!10532))))))

(declare-fun e!4422911 () (Set Context!16616))

(declare-fun b!7389901 () Bool)

(assert (=> b!7389901 (= e!4422911 (set.union call!680397 (derivationStepZipperUp!2774 (Context!16617 (t!386459 (exprs!8808 c!10532))) lt!2617786)))))

(declare-fun b!7389902 () Bool)

(assert (=> b!7389902 (= e!4422911 e!4422912)))

(declare-fun c!1373323 () Bool)

(assert (=> b!7389902 (= c!1373323 (is-Cons!71780 (exprs!8808 c!10532)))))

(declare-fun d!2287458 () Bool)

(declare-fun c!1373322 () Bool)

(assert (=> d!2287458 (= c!1373322 e!4422913)))

(declare-fun res!2979437 () Bool)

(assert (=> d!2287458 (=> (not res!2979437) (not e!4422913))))

(assert (=> d!2287458 (= res!2979437 (is-Cons!71780 (exprs!8808 c!10532)))))

(assert (=> d!2287458 (= (derivationStepZipperUp!2774 c!10532 lt!2617786) e!4422911)))

(declare-fun b!7389903 () Bool)

(assert (=> b!7389903 (= e!4422912 (as set.empty (Set Context!16616)))))

(assert (= (and d!2287458 res!2979437) b!7389900))

(assert (= (and d!2287458 c!1373322) b!7389901))

(assert (= (and d!2287458 (not c!1373322)) b!7389902))

(assert (= (and b!7389902 c!1373323) b!7389899))

(assert (= (and b!7389902 (not c!1373323)) b!7389903))

(assert (= (or b!7389901 b!7389899) bm!680392))

(declare-fun m!8036108 () Bool)

(assert (=> bm!680392 m!8036108))

(declare-fun m!8036110 () Bool)

(assert (=> b!7389900 m!8036110))

(declare-fun m!8036112 () Bool)

(assert (=> b!7389901 m!8036112))

(assert (=> b!7389833 d!2287458))

(declare-fun bs!1922362 () Bool)

(declare-fun d!2287462 () Bool)

(assert (= bs!1922362 (and d!2287462 b!7389838)))

(declare-fun lambda!459047 () Int)

(assert (=> bs!1922362 (= (= lt!2617786 a!2228) (= lambda!459047 lambda!459033))))

(assert (=> d!2287462 true))

(declare-fun flatMap!3180 ((Set Context!16616) Int) (Set Context!16616))

(assert (=> d!2287462 (= (derivationStepZipper!3652 z!3451 lt!2617786) (flatMap!3180 z!3451 lambda!459047))))

(declare-fun bs!1922363 () Bool)

(assert (= bs!1922363 d!2287462))

(declare-fun m!8036114 () Bool)

(assert (=> bs!1922363 m!8036114))

(assert (=> b!7389833 d!2287462))

(declare-fun d!2287464 () Bool)

(assert (=> d!2287464 (= (head!15120 s!7927) (h!78229 s!7927))))

(assert (=> b!7389833 d!2287464))

(declare-fun d!2287466 () Bool)

(assert (=> d!2287466 (= (head!15121 (exprs!8808 c!10532)) (h!78228 (exprs!8808 c!10532)))))

(assert (=> b!7389837 d!2287466))

(declare-fun bs!1922364 () Bool)

(declare-fun d!2287468 () Bool)

(assert (= bs!1922364 (and d!2287468 b!7389834)))

(declare-fun lambda!459052 () Int)

(assert (=> bs!1922364 (not (= lambda!459052 lambda!459034))))

(assert (=> d!2287468 true))

(assert (=> d!2287468 true))

(declare-fun order!29435 () Int)

(declare-fun order!29433 () Int)

(declare-fun dynLambda!29573 (Int Int) Int)

(declare-fun dynLambda!29574 (Int Int) Int)

(assert (=> d!2287468 (< (dynLambda!29573 order!29433 lambda!459033) (dynLambda!29574 order!29435 lambda!459052))))

(assert (=> d!2287468 (= (set.member lt!2617787 (flatMap!3180 z!3451 lambda!459033)) (exists!4730 z!3451 lambda!459052))))

(declare-fun lt!2617810 () Context!16616)

(declare-fun choose!57382 ((Set Context!16616) Int Context!16616) Context!16616)

(assert (=> d!2287468 (= lt!2617810 (choose!57382 z!3451 lambda!459033 lt!2617787))))

(assert (=> d!2287468 (= (flatMapPost!187 z!3451 lambda!459033 lt!2617787) lt!2617810)))

(declare-fun bs!1922365 () Bool)

(assert (= bs!1922365 d!2287468))

(declare-fun m!8036116 () Bool)

(assert (=> bs!1922365 m!8036116))

(declare-fun m!8036118 () Bool)

(assert (=> bs!1922365 m!8036118))

(declare-fun m!8036120 () Bool)

(assert (=> bs!1922365 m!8036120))

(declare-fun m!8036122 () Bool)

(assert (=> bs!1922365 m!8036122))

(assert (=> b!7389842 d!2287468))

(declare-fun d!2287470 () Bool)

(declare-fun e!4422916 () Bool)

(assert (=> d!2287470 e!4422916))

(declare-fun res!2979440 () Bool)

(assert (=> d!2287470 (=> (not res!2979440) (not e!4422916))))

(declare-fun lt!2617814 () Context!16616)

(declare-fun dynLambda!29575 (Int Context!16616) Bool)

(assert (=> d!2287470 (= res!2979440 (dynLambda!29575 lambda!459034 lt!2617814))))

(declare-datatypes ((List!71908 0))(
  ( (Nil!71784) (Cons!71784 (h!78232 Context!16616) (t!386463 List!71908)) )
))
(declare-fun getWitness!2425 (List!71908 Int) Context!16616)

(declare-fun toList!11731 ((Set Context!16616)) List!71908)

(assert (=> d!2287470 (= lt!2617814 (getWitness!2425 (toList!11731 lt!2617784) lambda!459034))))

(assert (=> d!2287470 (exists!4730 lt!2617784 lambda!459034)))

(assert (=> d!2287470 (= (getWitness!2423 lt!2617784 lambda!459034) lt!2617814)))

(declare-fun b!7389912 () Bool)

(assert (=> b!7389912 (= e!4422916 (set.member lt!2617814 lt!2617784))))

(assert (= (and d!2287470 res!2979440) b!7389912))

(declare-fun b_lambda!285239 () Bool)

(assert (=> (not b_lambda!285239) (not d!2287470)))

(declare-fun m!8036132 () Bool)

(assert (=> d!2287470 m!8036132))

(declare-fun m!8036134 () Bool)

(assert (=> d!2287470 m!8036134))

(assert (=> d!2287470 m!8036134))

(declare-fun m!8036136 () Bool)

(assert (=> d!2287470 m!8036136))

(assert (=> d!2287470 m!8036070))

(declare-fun m!8036138 () Bool)

(assert (=> b!7389912 m!8036138))

(assert (=> b!7389842 d!2287470))

(declare-fun d!2287474 () Bool)

(assert (=> d!2287474 (= (isEmpty!41008 (tail!14775 (exprs!8808 c!10532))) (is-Nil!71780 (tail!14775 (exprs!8808 c!10532))))))

(assert (=> b!7389844 d!2287474))

(declare-fun d!2287476 () Bool)

(assert (=> d!2287476 (= (tail!14775 (exprs!8808 c!10532)) (t!386459 (exprs!8808 c!10532)))))

(assert (=> b!7389844 d!2287476))

(declare-fun d!2287478 () Bool)

(declare-fun lambda!459056 () Int)

(declare-fun forall!18154 (List!71904 Int) Bool)

(assert (=> d!2287478 (= (inv!91782 setElem!55955) (forall!18154 (exprs!8808 setElem!55955) lambda!459056))))

(declare-fun bs!1922368 () Bool)

(assert (= bs!1922368 d!2287478))

(declare-fun m!8036140 () Bool)

(assert (=> bs!1922368 m!8036140))

(assert (=> setNonEmpty!55955 d!2287478))

(declare-fun bs!1922369 () Bool)

(declare-fun d!2287480 () Bool)

(assert (= bs!1922369 (and d!2287480 b!7389834)))

(declare-fun lambda!459057 () Int)

(assert (=> bs!1922369 (not (= lambda!459057 lambda!459034))))

(declare-fun bs!1922370 () Bool)

(assert (= bs!1922370 (and d!2287480 d!2287468)))

(assert (=> bs!1922370 (= (= lt!2617783 lt!2617787) (= lambda!459057 lambda!459052))))

(assert (=> d!2287480 true))

(assert (=> d!2287480 true))

(assert (=> d!2287480 (< (dynLambda!29573 order!29433 lambda!459033) (dynLambda!29574 order!29435 lambda!459057))))

(assert (=> d!2287480 (= (set.member lt!2617783 (flatMap!3180 z!3451 lambda!459033)) (exists!4730 z!3451 lambda!459057))))

(declare-fun lt!2617815 () Context!16616)

(assert (=> d!2287480 (= lt!2617815 (choose!57382 z!3451 lambda!459033 lt!2617783))))

(assert (=> d!2287480 (= (flatMapPost!187 z!3451 lambda!459033 lt!2617783) lt!2617815)))

(declare-fun bs!1922371 () Bool)

(assert (= bs!1922371 d!2287480))

(assert (=> bs!1922371 m!8036116))

(declare-fun m!8036142 () Bool)

(assert (=> bs!1922371 m!8036142))

(declare-fun m!8036144 () Bool)

(assert (=> bs!1922371 m!8036144))

(declare-fun m!8036146 () Bool)

(assert (=> bs!1922371 m!8036146))

(assert (=> b!7389838 d!2287480))

(declare-fun bs!1922372 () Bool)

(declare-fun d!2287482 () Bool)

(assert (= bs!1922372 (and d!2287482 d!2287478)))

(declare-fun lambda!459058 () Int)

(assert (=> bs!1922372 (= lambda!459058 lambda!459056)))

(assert (=> d!2287482 (= (inv!91782 empty!3467) (forall!18154 (exprs!8808 empty!3467) lambda!459058))))

(declare-fun bs!1922373 () Bool)

(assert (= bs!1922373 d!2287482))

(declare-fun m!8036148 () Bool)

(assert (=> bs!1922373 m!8036148))

(assert (=> b!7389838 d!2287482))

(declare-fun bs!1922374 () Bool)

(declare-fun d!2287484 () Bool)

(assert (= bs!1922374 (and d!2287484 d!2287478)))

(declare-fun lambda!459061 () Int)

(assert (=> bs!1922374 (= lambda!459061 lambda!459056)))

(declare-fun bs!1922375 () Bool)

(assert (= bs!1922375 (and d!2287484 d!2287482)))

(assert (=> bs!1922375 (= lambda!459061 lambda!459058)))

(assert (=> d!2287484 (= (inv!91782 c!10532) (forall!18154 (exprs!8808 c!10532) lambda!459061))))

(declare-fun bs!1922376 () Bool)

(assert (= bs!1922376 d!2287484))

(declare-fun m!8036150 () Bool)

(assert (=> bs!1922376 m!8036150))

(assert (=> start!720732 d!2287484))

(declare-fun d!2287486 () Bool)

(declare-fun lt!2617819 () Bool)

(declare-fun exists!4732 (List!71908 Int) Bool)

(assert (=> d!2287486 (= lt!2617819 (exists!4732 (toList!11731 lt!2617784) lambda!459034))))

(declare-fun choose!57383 ((Set Context!16616) Int) Bool)

(assert (=> d!2287486 (= lt!2617819 (choose!57383 lt!2617784 lambda!459034))))

(assert (=> d!2287486 (= (exists!4730 lt!2617784 lambda!459034) lt!2617819)))

(declare-fun bs!1922378 () Bool)

(assert (= bs!1922378 d!2287486))

(assert (=> bs!1922378 m!8036134))

(assert (=> bs!1922378 m!8036134))

(declare-fun m!8036154 () Bool)

(assert (=> bs!1922378 m!8036154))

(declare-fun m!8036156 () Bool)

(assert (=> bs!1922378 m!8036156))

(assert (=> b!7389834 d!2287486))

(declare-fun d!2287490 () Bool)

(assert (=> d!2287490 (= (isEmpty!41008 (exprs!8808 c!10532)) (is-Nil!71780 (exprs!8808 c!10532)))))

(assert (=> b!7389841 d!2287490))

(declare-fun b!7389917 () Bool)

(declare-fun e!4422919 () Bool)

(declare-fun tp!2104324 () Bool)

(declare-fun tp!2104325 () Bool)

(assert (=> b!7389917 (= e!4422919 (and tp!2104324 tp!2104325))))

(assert (=> b!7389843 (= tp!2104303 e!4422919)))

(assert (= (and b!7389843 (is-Cons!71780 (exprs!8808 empty!3467))) b!7389917))

(declare-fun b!7389922 () Bool)

(declare-fun e!4422922 () Bool)

(declare-fun tp!2104328 () Bool)

(assert (=> b!7389922 (= e!4422922 (and tp_is_empty!48999 tp!2104328))))

(assert (=> b!7389839 (= tp!2104301 e!4422922)))

(assert (= (and b!7389839 (is-Cons!71781 (t!386460 s!7927))) b!7389922))

(declare-fun condSetEmpty!55961 () Bool)

(assert (=> setNonEmpty!55955 (= condSetEmpty!55961 (= setRest!55955 (as set.empty (Set Context!16616))))))

(declare-fun setRes!55961 () Bool)

(assert (=> setNonEmpty!55955 (= tp!2104304 setRes!55961)))

(declare-fun setIsEmpty!55961 () Bool)

(assert (=> setIsEmpty!55961 setRes!55961))

(declare-fun tp!2104334 () Bool)

(declare-fun setNonEmpty!55961 () Bool)

(declare-fun e!4422925 () Bool)

(declare-fun setElem!55961 () Context!16616)

(assert (=> setNonEmpty!55961 (= setRes!55961 (and tp!2104334 (inv!91782 setElem!55961) e!4422925))))

(declare-fun setRest!55961 () (Set Context!16616))

(assert (=> setNonEmpty!55961 (= setRest!55955 (set.union (set.insert setElem!55961 (as set.empty (Set Context!16616))) setRest!55961))))

(declare-fun b!7389927 () Bool)

(declare-fun tp!2104333 () Bool)

(assert (=> b!7389927 (= e!4422925 tp!2104333)))

(assert (= (and setNonEmpty!55955 condSetEmpty!55961) setIsEmpty!55961))

(assert (= (and setNonEmpty!55955 (not condSetEmpty!55961)) setNonEmpty!55961))

(assert (= setNonEmpty!55961 b!7389927))

(declare-fun m!8036164 () Bool)

(assert (=> setNonEmpty!55961 m!8036164))

(declare-fun b!7389928 () Bool)

(declare-fun e!4422926 () Bool)

(declare-fun tp!2104335 () Bool)

(declare-fun tp!2104336 () Bool)

(assert (=> b!7389928 (= e!4422926 (and tp!2104335 tp!2104336))))

(assert (=> b!7389835 (= tp!2104300 e!4422926)))

(assert (= (and b!7389835 (is-Cons!71780 (exprs!8808 c!10532))) b!7389928))

(declare-fun b!7389929 () Bool)

(declare-fun e!4422927 () Bool)

(declare-fun tp!2104337 () Bool)

(declare-fun tp!2104338 () Bool)

(assert (=> b!7389929 (= e!4422927 (and tp!2104337 tp!2104338))))

(assert (=> b!7389840 (= tp!2104302 e!4422927)))

(assert (= (and b!7389840 (is-Cons!71780 (exprs!8808 setElem!55955))) b!7389929))

(declare-fun b_lambda!285241 () Bool)

(assert (= b_lambda!285239 (or b!7389834 b_lambda!285241)))

(declare-fun bs!1922382 () Bool)

(declare-fun d!2287494 () Bool)

(assert (= bs!1922382 (and d!2287494 b!7389834)))

(assert (=> bs!1922382 (= (dynLambda!29575 lambda!459034 lt!2617814) (not (= lt!2617814 lt!2617783)))))

(assert (=> d!2287470 d!2287494))

(push 1)

(assert tp_is_empty!48999)

(assert (not b!7389901))

(assert (not d!2287486))

(assert (not b!7389927))

(assert (not d!2287480))

(assert (not bm!680392))

(assert (not b!7389929))

(assert (not b!7389922))

(assert (not d!2287468))

(assert (not d!2287484))

(assert (not b_lambda!285241))

(assert (not d!2287470))

(assert (not b!7389928))

(assert (not d!2287482))

(assert (not d!2287478))

(assert (not b!7389900))

(assert (not setNonEmpty!55961))

(assert (not b!7389917))

(assert (not d!2287462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

