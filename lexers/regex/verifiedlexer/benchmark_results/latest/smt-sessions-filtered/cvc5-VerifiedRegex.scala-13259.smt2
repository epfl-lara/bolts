; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721300 () Bool)

(assert start!721300)

(declare-fun b!7406776 () Bool)

(assert (=> b!7406776 true))

(declare-fun e!4429962 () Bool)

(declare-datatypes ((C!39058 0))(
  ( (C!39059 (val!29903 Int)) )
))
(declare-datatypes ((Regex!19392 0))(
  ( (ElementMatch!19392 (c!1374744 C!39058)) (Concat!28237 (regOne!39296 Regex!19392) (regTwo!39296 Regex!19392)) (EmptyExpr!19392) (Star!19392 (reg!19721 Regex!19392)) (EmptyLang!19392) (Union!19392 (regOne!39297 Regex!19392) (regTwo!39297 Regex!19392)) )
))
(declare-datatypes ((List!71966 0))(
  ( (Nil!71842) (Cons!71842 (h!78290 Regex!19392) (t!386525 List!71966)) )
))
(declare-datatypes ((Context!16664 0))(
  ( (Context!16665 (exprs!8832 List!71966)) )
))
(declare-fun lt!2618162 () Context!16664)

(declare-fun inv!91842 (Context!16664) Bool)

(assert (=> b!7406776 (= e!4429962 (not (inv!91842 lt!2618162)))))

(declare-fun lambda!459414 () Int)

(declare-fun empty!3515 () Context!16664)

(declare-fun z!3451 () (Set Context!16664))

(declare-fun flatMapPost!199 ((Set Context!16664) Int Context!16664) Context!16664)

(assert (=> b!7406776 (= (flatMapPost!199 z!3451 lambda!459414 lt!2618162) empty!3515)))

(assert (=> b!7406776 true))

(declare-fun e!4429965 () Bool)

(assert (=> b!7406776 (and (inv!91842 empty!3515) e!4429965)))

(declare-fun res!2982080 () Bool)

(declare-fun e!4429961 () Bool)

(assert (=> start!721300 (=> (not res!2982080) (not e!4429961))))

(declare-fun c!10532 () Context!16664)

(assert (=> start!721300 (= res!2982080 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16664)))))))

(assert (=> start!721300 e!4429961))

(declare-fun condSetEmpty!56152 () Bool)

(assert (=> start!721300 (= condSetEmpty!56152 (= z!3451 (as set.empty (Set Context!16664))))))

(declare-fun setRes!56152 () Bool)

(assert (=> start!721300 setRes!56152))

(declare-fun e!4429964 () Bool)

(assert (=> start!721300 (and (inv!91842 c!10532) e!4429964)))

(declare-fun tp_is_empty!49047 () Bool)

(assert (=> start!721300 tp_is_empty!49047))

(declare-fun e!4429963 () Bool)

(assert (=> start!721300 e!4429963))

(declare-fun b!7406777 () Bool)

(assert (=> b!7406777 (= e!4429961 e!4429962)))

(declare-fun res!2982075 () Bool)

(assert (=> b!7406777 (=> (not res!2982075) (not e!4429962))))

(declare-datatypes ((List!71967 0))(
  ( (Nil!71843) (Cons!71843 (h!78291 C!39058) (t!386526 List!71967)) )
))
(declare-fun s!7927 () List!71967)

(declare-fun derivationStepZipperUp!2796 (Context!16664 C!39058) (Set Context!16664))

(declare-fun head!15168 (List!71967) C!39058)

(assert (=> b!7406777 (= res!2982075 (= (derivationStepZipperUp!2796 c!10532 (head!15168 s!7927)) (set.insert lt!2618162 (as set.empty (Set Context!16664)))))))

(assert (=> b!7406777 (= lt!2618162 (Context!16665 Nil!71842))))

(declare-fun b!7406778 () Bool)

(declare-fun tp!2118827 () Bool)

(assert (=> b!7406778 (= e!4429963 (and tp_is_empty!49047 tp!2118827))))

(declare-fun setElem!56152 () Context!16664)

(declare-fun setNonEmpty!56152 () Bool)

(declare-fun tp!2118831 () Bool)

(declare-fun e!4429960 () Bool)

(assert (=> setNonEmpty!56152 (= setRes!56152 (and tp!2118831 (inv!91842 setElem!56152) e!4429960))))

(declare-fun setRest!56152 () (Set Context!16664))

(assert (=> setNonEmpty!56152 (= z!3451 (set.union (set.insert setElem!56152 (as set.empty (Set Context!16664))) setRest!56152))))

(declare-fun b!7406779 () Bool)

(declare-fun res!2982077 () Bool)

(assert (=> b!7406779 (=> (not res!2982077) (not e!4429961))))

(declare-fun a!2228 () C!39058)

(assert (=> b!7406779 (= res!2982077 (and (is-Cons!71843 s!7927) (= (h!78291 s!7927) a!2228)))))

(declare-fun setIsEmpty!56152 () Bool)

(assert (=> setIsEmpty!56152 setRes!56152))

(declare-fun b!7406780 () Bool)

(declare-fun res!2982078 () Bool)

(assert (=> b!7406780 (=> (not res!2982078) (not e!4429961))))

(declare-fun isEmpty!41032 (List!71966) Bool)

(assert (=> b!7406780 (= res!2982078 (not (isEmpty!41032 (exprs!8832 c!10532))))))

(declare-fun b!7406781 () Bool)

(declare-fun tp!2118829 () Bool)

(assert (=> b!7406781 (= e!4429965 tp!2118829)))

(declare-fun b!7406782 () Bool)

(declare-fun res!2982079 () Bool)

(assert (=> b!7406782 (=> (not res!2982079) (not e!4429961))))

(declare-fun head!15169 (List!71966) Regex!19392)

(assert (=> b!7406782 (= res!2982079 (= (head!15169 (exprs!8832 c!10532)) (ElementMatch!19392 a!2228)))))

(declare-fun b!7406783 () Bool)

(declare-fun tp!2118828 () Bool)

(assert (=> b!7406783 (= e!4429964 tp!2118828)))

(declare-fun b!7406784 () Bool)

(declare-fun tp!2118830 () Bool)

(assert (=> b!7406784 (= e!4429960 tp!2118830)))

(declare-fun b!7406785 () Bool)

(declare-fun res!2982076 () Bool)

(assert (=> b!7406785 (=> (not res!2982076) (not e!4429961))))

(declare-fun tail!14799 (List!71966) List!71966)

(assert (=> b!7406785 (= res!2982076 (isEmpty!41032 (tail!14799 (exprs!8832 c!10532))))))

(assert (= (and start!721300 res!2982080) b!7406780))

(assert (= (and b!7406780 res!2982078) b!7406782))

(assert (= (and b!7406782 res!2982079) b!7406785))

(assert (= (and b!7406785 res!2982076) b!7406779))

(assert (= (and b!7406779 res!2982077) b!7406777))

(assert (= (and b!7406777 res!2982075) b!7406776))

(assert (= b!7406776 b!7406781))

(assert (= (and start!721300 condSetEmpty!56152) setIsEmpty!56152))

(assert (= (and start!721300 (not condSetEmpty!56152)) setNonEmpty!56152))

(assert (= setNonEmpty!56152 b!7406784))

(assert (= start!721300 b!7406783))

(assert (= (and start!721300 (is-Cons!71843 s!7927)) b!7406778))

(declare-fun m!8042302 () Bool)

(assert (=> b!7406782 m!8042302))

(declare-fun m!8042304 () Bool)

(assert (=> b!7406785 m!8042304))

(assert (=> b!7406785 m!8042304))

(declare-fun m!8042306 () Bool)

(assert (=> b!7406785 m!8042306))

(declare-fun m!8042308 () Bool)

(assert (=> b!7406776 m!8042308))

(declare-fun m!8042310 () Bool)

(assert (=> b!7406776 m!8042310))

(declare-fun m!8042312 () Bool)

(assert (=> b!7406776 m!8042312))

(declare-fun m!8042314 () Bool)

(assert (=> setNonEmpty!56152 m!8042314))

(declare-fun m!8042316 () Bool)

(assert (=> b!7406780 m!8042316))

(declare-fun m!8042318 () Bool)

(assert (=> start!721300 m!8042318))

(declare-fun m!8042320 () Bool)

(assert (=> start!721300 m!8042320))

(declare-fun m!8042322 () Bool)

(assert (=> b!7406777 m!8042322))

(assert (=> b!7406777 m!8042322))

(declare-fun m!8042324 () Bool)

(assert (=> b!7406777 m!8042324))

(declare-fun m!8042326 () Bool)

(assert (=> b!7406777 m!8042326))

(push 1)

(assert tp_is_empty!49047)

(assert (not setNonEmpty!56152))

(assert (not b!7406777))

(assert (not b!7406780))

(assert (not b!7406783))

(assert (not b!7406778))

(assert (not b!7406782))

(assert (not b!7406776))

(assert (not b!7406784))

(assert (not start!721300))

(assert (not b!7406785))

(assert (not b!7406781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290416 () Bool)

(assert (=> d!2290416 (= (isEmpty!41032 (tail!14799 (exprs!8832 c!10532))) (is-Nil!71842 (tail!14799 (exprs!8832 c!10532))))))

(assert (=> b!7406785 d!2290416))

(declare-fun d!2290418 () Bool)

(assert (=> d!2290418 (= (tail!14799 (exprs!8832 c!10532)) (t!386525 (exprs!8832 c!10532)))))

(assert (=> b!7406785 d!2290418))

(declare-fun d!2290420 () Bool)

(declare-fun lambda!459420 () Int)

(declare-fun forall!18177 (List!71966 Int) Bool)

(assert (=> d!2290420 (= (inv!91842 lt!2618162) (forall!18177 (exprs!8832 lt!2618162) lambda!459420))))

(declare-fun bs!1923840 () Bool)

(assert (= bs!1923840 d!2290420))

(declare-fun m!8042354 () Bool)

(assert (=> bs!1923840 m!8042354))

(assert (=> b!7406776 d!2290420))

(declare-fun d!2290422 () Bool)

(assert (=> d!2290422 true))

(assert (=> d!2290422 true))

(declare-fun lambda!459423 () Int)

(declare-fun order!29467 () Int)

(declare-fun order!29465 () Int)

(declare-fun dynLambda!29613 (Int Int) Int)

(declare-fun dynLambda!29614 (Int Int) Int)

(assert (=> d!2290422 (< (dynLambda!29613 order!29465 lambda!459414) (dynLambda!29614 order!29467 lambda!459423))))

(declare-fun flatMap!3194 ((Set Context!16664) Int) (Set Context!16664))

(declare-fun exists!4748 ((Set Context!16664) Int) Bool)

(assert (=> d!2290422 (= (set.member lt!2618162 (flatMap!3194 z!3451 lambda!459414)) (exists!4748 z!3451 lambda!459423))))

(declare-fun lt!2618168 () Context!16664)

(declare-fun choose!57412 ((Set Context!16664) Int Context!16664) Context!16664)

(assert (=> d!2290422 (= lt!2618168 (choose!57412 z!3451 lambda!459414 lt!2618162))))

(assert (=> d!2290422 (= (flatMapPost!199 z!3451 lambda!459414 lt!2618162) lt!2618168)))

(declare-fun bs!1923841 () Bool)

(assert (= bs!1923841 d!2290422))

(declare-fun m!8042356 () Bool)

(assert (=> bs!1923841 m!8042356))

(declare-fun m!8042358 () Bool)

(assert (=> bs!1923841 m!8042358))

(declare-fun m!8042360 () Bool)

(assert (=> bs!1923841 m!8042360))

(declare-fun m!8042362 () Bool)

(assert (=> bs!1923841 m!8042362))

(assert (=> b!7406776 d!2290422))

(declare-fun bs!1923842 () Bool)

(declare-fun d!2290424 () Bool)

(assert (= bs!1923842 (and d!2290424 d!2290420)))

(declare-fun lambda!459424 () Int)

(assert (=> bs!1923842 (= lambda!459424 lambda!459420)))

(assert (=> d!2290424 (= (inv!91842 empty!3515) (forall!18177 (exprs!8832 empty!3515) lambda!459424))))

(declare-fun bs!1923843 () Bool)

(assert (= bs!1923843 d!2290424))

(declare-fun m!8042364 () Bool)

(assert (=> bs!1923843 m!8042364))

(assert (=> b!7406776 d!2290424))

(declare-fun bs!1923844 () Bool)

(declare-fun d!2290426 () Bool)

(assert (= bs!1923844 (and d!2290426 d!2290420)))

(declare-fun lambda!459425 () Int)

(assert (=> bs!1923844 (= lambda!459425 lambda!459420)))

(declare-fun bs!1923845 () Bool)

(assert (= bs!1923845 (and d!2290426 d!2290424)))

(assert (=> bs!1923845 (= lambda!459425 lambda!459424)))

(assert (=> d!2290426 (= (inv!91842 setElem!56152) (forall!18177 (exprs!8832 setElem!56152) lambda!459425))))

(declare-fun bs!1923846 () Bool)

(assert (= bs!1923846 d!2290426))

(declare-fun m!8042366 () Bool)

(assert (=> bs!1923846 m!8042366))

(assert (=> setNonEmpty!56152 d!2290426))

(declare-fun d!2290430 () Bool)

(assert (=> d!2290430 (= (head!15169 (exprs!8832 c!10532)) (h!78290 (exprs!8832 c!10532)))))

(assert (=> b!7406782 d!2290430))

(declare-fun b!7406835 () Bool)

(declare-fun e!4429991 () (Set Context!16664))

(assert (=> b!7406835 (= e!4429991 (as set.empty (Set Context!16664)))))

(declare-fun b!7406836 () Bool)

(declare-fun e!4429992 () (Set Context!16664))

(assert (=> b!7406836 (= e!4429992 e!4429991)))

(declare-fun c!1374752 () Bool)

(assert (=> b!7406836 (= c!1374752 (is-Cons!71842 (exprs!8832 c!10532)))))

(declare-fun bm!681906 () Bool)

(declare-fun call!681911 () (Set Context!16664))

(declare-fun derivationStepZipperDown!3190 (Regex!19392 Context!16664 C!39058) (Set Context!16664))

(assert (=> bm!681906 (= call!681911 (derivationStepZipperDown!3190 (h!78290 (exprs!8832 c!10532)) (Context!16665 (t!386525 (exprs!8832 c!10532))) (head!15168 s!7927)))))

(declare-fun b!7406837 () Bool)

(assert (=> b!7406837 (= e!4429991 call!681911)))

(declare-fun b!7406838 () Bool)

(assert (=> b!7406838 (= e!4429992 (set.union call!681911 (derivationStepZipperUp!2796 (Context!16665 (t!386525 (exprs!8832 c!10532))) (head!15168 s!7927))))))

(declare-fun d!2290432 () Bool)

(declare-fun c!1374753 () Bool)

(declare-fun e!4429990 () Bool)

(assert (=> d!2290432 (= c!1374753 e!4429990)))

(declare-fun res!2982101 () Bool)

(assert (=> d!2290432 (=> (not res!2982101) (not e!4429990))))

(assert (=> d!2290432 (= res!2982101 (is-Cons!71842 (exprs!8832 c!10532)))))

(assert (=> d!2290432 (= (derivationStepZipperUp!2796 c!10532 (head!15168 s!7927)) e!4429992)))

(declare-fun b!7406839 () Bool)

(declare-fun nullable!8438 (Regex!19392) Bool)

(assert (=> b!7406839 (= e!4429990 (nullable!8438 (h!78290 (exprs!8832 c!10532))))))

(assert (= (and d!2290432 res!2982101) b!7406839))

(assert (= (and d!2290432 c!1374753) b!7406838))

(assert (= (and d!2290432 (not c!1374753)) b!7406836))

(assert (= (and b!7406836 c!1374752) b!7406837))

(assert (= (and b!7406836 (not c!1374752)) b!7406835))

(assert (= (or b!7406838 b!7406837) bm!681906))

(assert (=> bm!681906 m!8042322))

(declare-fun m!8042368 () Bool)

(assert (=> bm!681906 m!8042368))

(assert (=> b!7406838 m!8042322))

(declare-fun m!8042370 () Bool)

(assert (=> b!7406838 m!8042370))

(declare-fun m!8042372 () Bool)

(assert (=> b!7406839 m!8042372))

(assert (=> b!7406777 d!2290432))

(declare-fun d!2290438 () Bool)

(assert (=> d!2290438 (= (head!15168 s!7927) (h!78291 s!7927))))

(assert (=> b!7406777 d!2290438))

(declare-fun d!2290440 () Bool)

(assert (=> d!2290440 (= (isEmpty!41032 (exprs!8832 c!10532)) (is-Nil!71842 (exprs!8832 c!10532)))))

(assert (=> b!7406780 d!2290440))

(declare-fun bs!1923847 () Bool)

(declare-fun d!2290442 () Bool)

(assert (= bs!1923847 (and d!2290442 d!2290420)))

(declare-fun lambda!459426 () Int)

(assert (=> bs!1923847 (= lambda!459426 lambda!459420)))

(declare-fun bs!1923848 () Bool)

(assert (= bs!1923848 (and d!2290442 d!2290424)))

(assert (=> bs!1923848 (= lambda!459426 lambda!459424)))

(declare-fun bs!1923849 () Bool)

(assert (= bs!1923849 (and d!2290442 d!2290426)))

(assert (=> bs!1923849 (= lambda!459426 lambda!459425)))

(assert (=> d!2290442 (= (inv!91842 c!10532) (forall!18177 (exprs!8832 c!10532) lambda!459426))))

(declare-fun bs!1923850 () Bool)

(assert (= bs!1923850 d!2290442))

(declare-fun m!8042374 () Bool)

(assert (=> bs!1923850 m!8042374))

(assert (=> start!721300 d!2290442))

(declare-fun b!7406844 () Bool)

(declare-fun e!4429995 () Bool)

(declare-fun tp!2118851 () Bool)

(declare-fun tp!2118852 () Bool)

(assert (=> b!7406844 (= e!4429995 (and tp!2118851 tp!2118852))))

(assert (=> b!7406784 (= tp!2118830 e!4429995)))

(assert (= (and b!7406784 (is-Cons!71842 (exprs!8832 setElem!56152))) b!7406844))

(declare-fun b!7406845 () Bool)

(declare-fun e!4429996 () Bool)

(declare-fun tp!2118853 () Bool)

(declare-fun tp!2118854 () Bool)

(assert (=> b!7406845 (= e!4429996 (and tp!2118853 tp!2118854))))

(assert (=> b!7406783 (= tp!2118828 e!4429996)))

(assert (= (and b!7406783 (is-Cons!71842 (exprs!8832 c!10532))) b!7406845))

(declare-fun b!7406850 () Bool)

(declare-fun e!4429999 () Bool)

(declare-fun tp!2118857 () Bool)

(assert (=> b!7406850 (= e!4429999 (and tp_is_empty!49047 tp!2118857))))

(assert (=> b!7406778 (= tp!2118827 e!4429999)))

(assert (= (and b!7406778 (is-Cons!71843 (t!386526 s!7927))) b!7406850))

(declare-fun condSetEmpty!56158 () Bool)

(assert (=> setNonEmpty!56152 (= condSetEmpty!56158 (= setRest!56152 (as set.empty (Set Context!16664))))))

(declare-fun setRes!56158 () Bool)

(assert (=> setNonEmpty!56152 (= tp!2118831 setRes!56158)))

(declare-fun setIsEmpty!56158 () Bool)

(assert (=> setIsEmpty!56158 setRes!56158))

(declare-fun tp!2118862 () Bool)

(declare-fun setNonEmpty!56158 () Bool)

(declare-fun setElem!56158 () Context!16664)

(declare-fun e!4430002 () Bool)

(assert (=> setNonEmpty!56158 (= setRes!56158 (and tp!2118862 (inv!91842 setElem!56158) e!4430002))))

(declare-fun setRest!56158 () (Set Context!16664))

(assert (=> setNonEmpty!56158 (= setRest!56152 (set.union (set.insert setElem!56158 (as set.empty (Set Context!16664))) setRest!56158))))

(declare-fun b!7406855 () Bool)

(declare-fun tp!2118863 () Bool)

(assert (=> b!7406855 (= e!4430002 tp!2118863)))

(assert (= (and setNonEmpty!56152 condSetEmpty!56158) setIsEmpty!56158))

(assert (= (and setNonEmpty!56152 (not condSetEmpty!56158)) setNonEmpty!56158))

(assert (= setNonEmpty!56158 b!7406855))

(declare-fun m!8042376 () Bool)

(assert (=> setNonEmpty!56158 m!8042376))

(declare-fun b!7406856 () Bool)

(declare-fun e!4430003 () Bool)

(declare-fun tp!2118864 () Bool)

(declare-fun tp!2118865 () Bool)

(assert (=> b!7406856 (= e!4430003 (and tp!2118864 tp!2118865))))

(assert (=> b!7406781 (= tp!2118829 e!4430003)))

(assert (= (and b!7406781 (is-Cons!71842 (exprs!8832 empty!3515))) b!7406856))

(push 1)

(assert (not b!7406838))

(assert tp_is_empty!49047)

(assert (not d!2290442))

(assert (not d!2290424))

(assert (not b!7406855))

(assert (not setNonEmpty!56158))

(assert (not b!7406856))

(assert (not d!2290420))

(assert (not b!7406844))

(assert (not bm!681906))

(assert (not d!2290422))

(assert (not d!2290426))

(assert (not b!7406845))

(assert (not b!7406839))

(assert (not b!7406850))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290460 () Bool)

(declare-fun nullableFct!3396 (Regex!19392) Bool)

(assert (=> d!2290460 (= (nullable!8438 (h!78290 (exprs!8832 c!10532))) (nullableFct!3396 (h!78290 (exprs!8832 c!10532))))))

(declare-fun bs!1923862 () Bool)

(assert (= bs!1923862 d!2290460))

(declare-fun m!8042402 () Bool)

(assert (=> bs!1923862 m!8042402))

(assert (=> b!7406839 d!2290460))

(declare-fun d!2290462 () Bool)

(declare-fun choose!57414 ((Set Context!16664) Int) (Set Context!16664))

(assert (=> d!2290462 (= (flatMap!3194 z!3451 lambda!459414) (choose!57414 z!3451 lambda!459414))))

(declare-fun bs!1923863 () Bool)

(assert (= bs!1923863 d!2290462))

(declare-fun m!8042404 () Bool)

(assert (=> bs!1923863 m!8042404))

(assert (=> d!2290422 d!2290462))

(declare-fun d!2290464 () Bool)

(declare-fun lt!2618174 () Bool)

(declare-datatypes ((List!71970 0))(
  ( (Nil!71846) (Cons!71846 (h!78294 Context!16664) (t!386529 List!71970)) )
))
(declare-fun exists!4750 (List!71970 Int) Bool)

(declare-fun toList!11747 ((Set Context!16664)) List!71970)

(assert (=> d!2290464 (= lt!2618174 (exists!4750 (toList!11747 z!3451) lambda!459423))))

(declare-fun choose!57415 ((Set Context!16664) Int) Bool)

(assert (=> d!2290464 (= lt!2618174 (choose!57415 z!3451 lambda!459423))))

(assert (=> d!2290464 (= (exists!4748 z!3451 lambda!459423) lt!2618174)))

(declare-fun bs!1923864 () Bool)

(assert (= bs!1923864 d!2290464))

(declare-fun m!8042406 () Bool)

(assert (=> bs!1923864 m!8042406))

(assert (=> bs!1923864 m!8042406))

(declare-fun m!8042408 () Bool)

(assert (=> bs!1923864 m!8042408))

(declare-fun m!8042410 () Bool)

(assert (=> bs!1923864 m!8042410))

(assert (=> d!2290422 d!2290464))

(declare-fun bs!1923865 () Bool)

(declare-fun d!2290466 () Bool)

(assert (= bs!1923865 (and d!2290466 d!2290422)))

(declare-fun lambda!459438 () Int)

(assert (=> bs!1923865 (= lambda!459438 lambda!459423)))

(assert (=> d!2290466 true))

(assert (=> d!2290466 true))

(assert (=> d!2290466 (< (dynLambda!29613 order!29465 lambda!459414) (dynLambda!29614 order!29467 lambda!459438))))

(assert (=> d!2290466 (= (set.member lt!2618162 (flatMap!3194 z!3451 lambda!459414)) (exists!4748 z!3451 lambda!459438))))

(declare-fun _$3!533 () Context!16664)

(declare-fun e!4430026 () Bool)

(assert (=> d!2290466 (and (inv!91842 _$3!533) e!4430026)))

(assert (=> d!2290466 (= (choose!57412 z!3451 lambda!459414 lt!2618162) _$3!533)))

(declare-fun b!7406897 () Bool)

(declare-fun tp!2118887 () Bool)

(assert (=> b!7406897 (= e!4430026 tp!2118887)))

(assert (= d!2290466 b!7406897))

(assert (=> d!2290466 m!8042356))

(assert (=> d!2290466 m!8042358))

(declare-fun m!8042412 () Bool)

(assert (=> d!2290466 m!8042412))

(declare-fun m!8042414 () Bool)

(assert (=> d!2290466 m!8042414))

(assert (=> d!2290422 d!2290466))

(declare-fun b!7406898 () Bool)

(declare-fun e!4430028 () (Set Context!16664))

(assert (=> b!7406898 (= e!4430028 (as set.empty (Set Context!16664)))))

(declare-fun b!7406899 () Bool)

(declare-fun e!4430029 () (Set Context!16664))

(assert (=> b!7406899 (= e!4430029 e!4430028)))

(declare-fun c!1374760 () Bool)

(assert (=> b!7406899 (= c!1374760 (is-Cons!71842 (exprs!8832 (Context!16665 (t!386525 (exprs!8832 c!10532))))))))

(declare-fun bm!681910 () Bool)

(declare-fun call!681915 () (Set Context!16664))

(assert (=> bm!681910 (= call!681915 (derivationStepZipperDown!3190 (h!78290 (exprs!8832 (Context!16665 (t!386525 (exprs!8832 c!10532))))) (Context!16665 (t!386525 (exprs!8832 (Context!16665 (t!386525 (exprs!8832 c!10532)))))) (head!15168 s!7927)))))

(declare-fun b!7406900 () Bool)

(assert (=> b!7406900 (= e!4430028 call!681915)))

(declare-fun b!7406901 () Bool)

(assert (=> b!7406901 (= e!4430029 (set.union call!681915 (derivationStepZipperUp!2796 (Context!16665 (t!386525 (exprs!8832 (Context!16665 (t!386525 (exprs!8832 c!10532)))))) (head!15168 s!7927))))))

(declare-fun d!2290468 () Bool)

(declare-fun c!1374761 () Bool)

(declare-fun e!4430027 () Bool)

(assert (=> d!2290468 (= c!1374761 e!4430027)))

(declare-fun res!2982105 () Bool)

(assert (=> d!2290468 (=> (not res!2982105) (not e!4430027))))

(assert (=> d!2290468 (= res!2982105 (is-Cons!71842 (exprs!8832 (Context!16665 (t!386525 (exprs!8832 c!10532))))))))

(assert (=> d!2290468 (= (derivationStepZipperUp!2796 (Context!16665 (t!386525 (exprs!8832 c!10532))) (head!15168 s!7927)) e!4430029)))

(declare-fun b!7406902 () Bool)

(assert (=> b!7406902 (= e!4430027 (nullable!8438 (h!78290 (exprs!8832 (Context!16665 (t!386525 (exprs!8832 c!10532)))))))))

(assert (= (and d!2290468 res!2982105) b!7406902))

(assert (= (and d!2290468 c!1374761) b!7406901))

(assert (= (and d!2290468 (not c!1374761)) b!7406899))

(assert (= (and b!7406899 c!1374760) b!7406900))

(assert (= (and b!7406899 (not c!1374760)) b!7406898))

(assert (= (or b!7406901 b!7406900) bm!681910))

(assert (=> bm!681910 m!8042322))

(declare-fun m!8042416 () Bool)

(assert (=> bm!681910 m!8042416))

(assert (=> b!7406901 m!8042322))

(declare-fun m!8042418 () Bool)

(assert (=> b!7406901 m!8042418))

(declare-fun m!8042420 () Bool)

(assert (=> b!7406902 m!8042420))

(assert (=> b!7406838 d!2290468))

(declare-fun d!2290470 () Bool)

(declare-fun res!2982110 () Bool)

(declare-fun e!4430034 () Bool)

(assert (=> d!2290470 (=> res!2982110 e!4430034)))

(assert (=> d!2290470 (= res!2982110 (is-Nil!71842 (exprs!8832 c!10532)))))

(assert (=> d!2290470 (= (forall!18177 (exprs!8832 c!10532) lambda!459426) e!4430034)))

(declare-fun b!7406907 () Bool)

(declare-fun e!4430035 () Bool)

(assert (=> b!7406907 (= e!4430034 e!4430035)))

(declare-fun res!2982111 () Bool)

(assert (=> b!7406907 (=> (not res!2982111) (not e!4430035))))

(declare-fun dynLambda!29617 (Int Regex!19392) Bool)

(assert (=> b!7406907 (= res!2982111 (dynLambda!29617 lambda!459426 (h!78290 (exprs!8832 c!10532))))))

(declare-fun b!7406908 () Bool)

(assert (=> b!7406908 (= e!4430035 (forall!18177 (t!386525 (exprs!8832 c!10532)) lambda!459426))))

(assert (= (and d!2290470 (not res!2982110)) b!7406907))

(assert (= (and b!7406907 res!2982111) b!7406908))

(declare-fun b_lambda!286139 () Bool)

(assert (=> (not b_lambda!286139) (not b!7406907)))

(declare-fun m!8042422 () Bool)

(assert (=> b!7406907 m!8042422))

(declare-fun m!8042424 () Bool)

(assert (=> b!7406908 m!8042424))

(assert (=> d!2290442 d!2290470))

(declare-fun d!2290472 () Bool)

(declare-fun res!2982112 () Bool)

(declare-fun e!4430036 () Bool)

(assert (=> d!2290472 (=> res!2982112 e!4430036)))

(assert (=> d!2290472 (= res!2982112 (is-Nil!71842 (exprs!8832 lt!2618162)))))

(assert (=> d!2290472 (= (forall!18177 (exprs!8832 lt!2618162) lambda!459420) e!4430036)))

(declare-fun b!7406909 () Bool)

(declare-fun e!4430037 () Bool)

(assert (=> b!7406909 (= e!4430036 e!4430037)))

(declare-fun res!2982113 () Bool)

(assert (=> b!7406909 (=> (not res!2982113) (not e!4430037))))

(assert (=> b!7406909 (= res!2982113 (dynLambda!29617 lambda!459420 (h!78290 (exprs!8832 lt!2618162))))))

(declare-fun b!7406910 () Bool)

(assert (=> b!7406910 (= e!4430037 (forall!18177 (t!386525 (exprs!8832 lt!2618162)) lambda!459420))))

(assert (= (and d!2290472 (not res!2982112)) b!7406909))

(assert (= (and b!7406909 res!2982113) b!7406910))

(declare-fun b_lambda!286141 () Bool)

(assert (=> (not b_lambda!286141) (not b!7406909)))

(declare-fun m!8042426 () Bool)

(assert (=> b!7406909 m!8042426))

(declare-fun m!8042428 () Bool)

(assert (=> b!7406910 m!8042428))

(assert (=> d!2290420 d!2290472))

(declare-fun d!2290474 () Bool)

(declare-fun res!2982114 () Bool)

(declare-fun e!4430038 () Bool)

(assert (=> d!2290474 (=> res!2982114 e!4430038)))

(assert (=> d!2290474 (= res!2982114 (is-Nil!71842 (exprs!8832 empty!3515)))))

(assert (=> d!2290474 (= (forall!18177 (exprs!8832 empty!3515) lambda!459424) e!4430038)))

(declare-fun b!7406911 () Bool)

(declare-fun e!4430039 () Bool)

(assert (=> b!7406911 (= e!4430038 e!4430039)))

(declare-fun res!2982115 () Bool)

(assert (=> b!7406911 (=> (not res!2982115) (not e!4430039))))

(assert (=> b!7406911 (= res!2982115 (dynLambda!29617 lambda!459424 (h!78290 (exprs!8832 empty!3515))))))

(declare-fun b!7406912 () Bool)

(assert (=> b!7406912 (= e!4430039 (forall!18177 (t!386525 (exprs!8832 empty!3515)) lambda!459424))))

(assert (= (and d!2290474 (not res!2982114)) b!7406911))

(assert (= (and b!7406911 res!2982115) b!7406912))

(declare-fun b_lambda!286143 () Bool)

(assert (=> (not b_lambda!286143) (not b!7406911)))

(declare-fun m!8042430 () Bool)

(assert (=> b!7406911 m!8042430))

(declare-fun m!8042432 () Bool)

(assert (=> b!7406912 m!8042432))

(assert (=> d!2290424 d!2290474))

(declare-fun bs!1923866 () Bool)

(declare-fun d!2290476 () Bool)

(assert (= bs!1923866 (and d!2290476 d!2290420)))

(declare-fun lambda!459439 () Int)

(assert (=> bs!1923866 (= lambda!459439 lambda!459420)))

(declare-fun bs!1923867 () Bool)

(assert (= bs!1923867 (and d!2290476 d!2290424)))

(assert (=> bs!1923867 (= lambda!459439 lambda!459424)))

(declare-fun bs!1923868 () Bool)

(assert (= bs!1923868 (and d!2290476 d!2290426)))

(assert (=> bs!1923868 (= lambda!459439 lambda!459425)))

(declare-fun bs!1923869 () Bool)

(assert (= bs!1923869 (and d!2290476 d!2290442)))

(assert (=> bs!1923869 (= lambda!459439 lambda!459426)))

(assert (=> d!2290476 (= (inv!91842 setElem!56158) (forall!18177 (exprs!8832 setElem!56158) lambda!459439))))

(declare-fun bs!1923870 () Bool)

(assert (= bs!1923870 d!2290476))

(declare-fun m!8042434 () Bool)

(assert (=> bs!1923870 m!8042434))

(assert (=> setNonEmpty!56158 d!2290476))

(declare-fun d!2290478 () Bool)

(declare-fun res!2982116 () Bool)

(declare-fun e!4430040 () Bool)

(assert (=> d!2290478 (=> res!2982116 e!4430040)))

(assert (=> d!2290478 (= res!2982116 (is-Nil!71842 (exprs!8832 setElem!56152)))))

(assert (=> d!2290478 (= (forall!18177 (exprs!8832 setElem!56152) lambda!459425) e!4430040)))

(declare-fun b!7406913 () Bool)

(declare-fun e!4430041 () Bool)

(assert (=> b!7406913 (= e!4430040 e!4430041)))

(declare-fun res!2982117 () Bool)

(assert (=> b!7406913 (=> (not res!2982117) (not e!4430041))))

(assert (=> b!7406913 (= res!2982117 (dynLambda!29617 lambda!459425 (h!78290 (exprs!8832 setElem!56152))))))

(declare-fun b!7406914 () Bool)

(assert (=> b!7406914 (= e!4430041 (forall!18177 (t!386525 (exprs!8832 setElem!56152)) lambda!459425))))

(assert (= (and d!2290478 (not res!2982116)) b!7406913))

(assert (= (and b!7406913 res!2982117) b!7406914))

(declare-fun b_lambda!286145 () Bool)

(assert (=> (not b_lambda!286145) (not b!7406913)))

(declare-fun m!8042436 () Bool)

(assert (=> b!7406913 m!8042436))

(declare-fun m!8042438 () Bool)

(assert (=> b!7406914 m!8042438))

(assert (=> d!2290426 d!2290478))

(declare-fun b!7406937 () Bool)

(declare-fun e!4430059 () (Set Context!16664))

(assert (=> b!7406937 (= e!4430059 (set.insert (Context!16665 (t!386525 (exprs!8832 c!10532))) (as set.empty (Set Context!16664))))))

(declare-fun b!7406938 () Bool)

(declare-fun e!4430056 () Bool)

(assert (=> b!7406938 (= e!4430056 (nullable!8438 (regOne!39296 (h!78290 (exprs!8832 c!10532)))))))

(declare-fun c!1374773 () Bool)

(declare-fun call!681929 () (Set Context!16664))

(declare-fun c!1374774 () Bool)

(declare-fun c!1374772 () Bool)

(declare-fun call!681932 () List!71966)

(declare-fun bm!681923 () Bool)

(assert (=> bm!681923 (= call!681929 (derivationStepZipperDown!3190 (ite c!1374774 (regOne!39297 (h!78290 (exprs!8832 c!10532))) (ite c!1374772 (regTwo!39296 (h!78290 (exprs!8832 c!10532))) (ite c!1374773 (regOne!39296 (h!78290 (exprs!8832 c!10532))) (reg!19721 (h!78290 (exprs!8832 c!10532)))))) (ite (or c!1374774 c!1374772) (Context!16665 (t!386525 (exprs!8832 c!10532))) (Context!16665 call!681932)) (head!15168 s!7927)))))

(declare-fun bm!681924 () Bool)

(declare-fun call!681931 () List!71966)

(assert (=> bm!681924 (= call!681932 call!681931)))

(declare-fun bm!681925 () Bool)

(declare-fun call!681930 () (Set Context!16664))

(assert (=> bm!681925 (= call!681930 call!681929)))

(declare-fun b!7406939 () Bool)

(declare-fun e!4430058 () (Set Context!16664))

(assert (=> b!7406939 (= e!4430059 e!4430058)))

(assert (=> b!7406939 (= c!1374774 (is-Union!19392 (h!78290 (exprs!8832 c!10532))))))

(declare-fun b!7406940 () Bool)

(declare-fun e!4430054 () (Set Context!16664))

(declare-fun call!681933 () (Set Context!16664))

(assert (=> b!7406940 (= e!4430054 call!681933)))

(declare-fun b!7406941 () Bool)

(declare-fun c!1374775 () Bool)

(assert (=> b!7406941 (= c!1374775 (is-Star!19392 (h!78290 (exprs!8832 c!10532))))))

(declare-fun e!4430055 () (Set Context!16664))

(assert (=> b!7406941 (= e!4430055 e!4430054)))

(declare-fun b!7406942 () Bool)

(assert (=> b!7406942 (= c!1374772 e!4430056)))

(declare-fun res!2982120 () Bool)

(assert (=> b!7406942 (=> (not res!2982120) (not e!4430056))))

(assert (=> b!7406942 (= res!2982120 (is-Concat!28237 (h!78290 (exprs!8832 c!10532))))))

(declare-fun e!4430057 () (Set Context!16664))

(assert (=> b!7406942 (= e!4430058 e!4430057)))

(declare-fun b!7406943 () Bool)

(declare-fun call!681928 () (Set Context!16664))

(assert (=> b!7406943 (= e!4430057 (set.union call!681928 call!681930))))

(declare-fun b!7406944 () Bool)

(assert (=> b!7406944 (= e!4430055 call!681933)))

(declare-fun d!2290480 () Bool)

(declare-fun c!1374776 () Bool)

(assert (=> d!2290480 (= c!1374776 (and (is-ElementMatch!19392 (h!78290 (exprs!8832 c!10532))) (= (c!1374744 (h!78290 (exprs!8832 c!10532))) (head!15168 s!7927))))))

(assert (=> d!2290480 (= (derivationStepZipperDown!3190 (h!78290 (exprs!8832 c!10532)) (Context!16665 (t!386525 (exprs!8832 c!10532))) (head!15168 s!7927)) e!4430059)))

(declare-fun bm!681926 () Bool)

(declare-fun $colon$colon!3335 (List!71966 Regex!19392) List!71966)

(assert (=> bm!681926 (= call!681931 ($colon$colon!3335 (exprs!8832 (Context!16665 (t!386525 (exprs!8832 c!10532)))) (ite (or c!1374772 c!1374773) (regTwo!39296 (h!78290 (exprs!8832 c!10532))) (h!78290 (exprs!8832 c!10532)))))))

(declare-fun bm!681927 () Bool)

(assert (=> bm!681927 (= call!681928 (derivationStepZipperDown!3190 (ite c!1374774 (regTwo!39297 (h!78290 (exprs!8832 c!10532))) (regOne!39296 (h!78290 (exprs!8832 c!10532)))) (ite c!1374774 (Context!16665 (t!386525 (exprs!8832 c!10532))) (Context!16665 call!681931)) (head!15168 s!7927)))))

(declare-fun bm!681928 () Bool)

(assert (=> bm!681928 (= call!681933 call!681930)))

(declare-fun b!7406945 () Bool)

(assert (=> b!7406945 (= e!4430058 (set.union call!681929 call!681928))))

(declare-fun b!7406946 () Bool)

(assert (=> b!7406946 (= e!4430057 e!4430055)))

(assert (=> b!7406946 (= c!1374773 (is-Concat!28237 (h!78290 (exprs!8832 c!10532))))))

(declare-fun b!7406947 () Bool)

(assert (=> b!7406947 (= e!4430054 (as set.empty (Set Context!16664)))))

(assert (= (and d!2290480 c!1374776) b!7406937))

(assert (= (and d!2290480 (not c!1374776)) b!7406939))

(assert (= (and b!7406939 c!1374774) b!7406945))

(assert (= (and b!7406939 (not c!1374774)) b!7406942))

(assert (= (and b!7406942 res!2982120) b!7406938))

(assert (= (and b!7406942 c!1374772) b!7406943))

(assert (= (and b!7406942 (not c!1374772)) b!7406946))

(assert (= (and b!7406946 c!1374773) b!7406944))

(assert (= (and b!7406946 (not c!1374773)) b!7406941))

(assert (= (and b!7406941 c!1374775) b!7406940))

(assert (= (and b!7406941 (not c!1374775)) b!7406947))

(assert (= (or b!7406944 b!7406940) bm!681924))

(assert (= (or b!7406944 b!7406940) bm!681928))

(assert (= (or b!7406943 bm!681924) bm!681926))

(assert (= (or b!7406943 bm!681928) bm!681925))

(assert (= (or b!7406945 bm!681925) bm!681923))

(assert (= (or b!7406945 b!7406943) bm!681927))

(assert (=> bm!681927 m!8042322))

(declare-fun m!8042440 () Bool)

(assert (=> bm!681927 m!8042440))

(declare-fun m!8042442 () Bool)

(assert (=> bm!681926 m!8042442))

(declare-fun m!8042444 () Bool)

(assert (=> b!7406937 m!8042444))

(declare-fun m!8042446 () Bool)

(assert (=> b!7406938 m!8042446))

(assert (=> bm!681923 m!8042322))

(declare-fun m!8042448 () Bool)

(assert (=> bm!681923 m!8042448))

(assert (=> bm!681906 d!2290480))

(declare-fun b!7406948 () Bool)

(declare-fun e!4430060 () Bool)

(declare-fun tp!2118888 () Bool)

(assert (=> b!7406948 (= e!4430060 (and tp_is_empty!49047 tp!2118888))))

(assert (=> b!7406850 (= tp!2118857 e!4430060)))

(assert (= (and b!7406850 (is-Cons!71843 (t!386526 (t!386526 s!7927)))) b!7406948))

(declare-fun b!7406949 () Bool)

(declare-fun e!4430061 () Bool)

(declare-fun tp!2118889 () Bool)

(declare-fun tp!2118890 () Bool)

(assert (=> b!7406949 (= e!4430061 (and tp!2118889 tp!2118890))))

(assert (=> b!7406855 (= tp!2118863 e!4430061)))

(assert (= (and b!7406855 (is-Cons!71842 (exprs!8832 setElem!56158))) b!7406949))

(declare-fun b!7406962 () Bool)

(declare-fun e!4430064 () Bool)

(declare-fun tp!2118905 () Bool)

(assert (=> b!7406962 (= e!4430064 tp!2118905)))

(declare-fun b!7406961 () Bool)

(declare-fun tp!2118903 () Bool)

(declare-fun tp!2118904 () Bool)

(assert (=> b!7406961 (= e!4430064 (and tp!2118903 tp!2118904))))

(assert (=> b!7406856 (= tp!2118864 e!4430064)))

(declare-fun b!7406960 () Bool)

(assert (=> b!7406960 (= e!4430064 tp_is_empty!49047)))

(declare-fun b!7406963 () Bool)

(declare-fun tp!2118902 () Bool)

(declare-fun tp!2118901 () Bool)

(assert (=> b!7406963 (= e!4430064 (and tp!2118902 tp!2118901))))

(assert (= (and b!7406856 (is-ElementMatch!19392 (h!78290 (exprs!8832 empty!3515)))) b!7406960))

(assert (= (and b!7406856 (is-Concat!28237 (h!78290 (exprs!8832 empty!3515)))) b!7406961))

(assert (= (and b!7406856 (is-Star!19392 (h!78290 (exprs!8832 empty!3515)))) b!7406962))

(assert (= (and b!7406856 (is-Union!19392 (h!78290 (exprs!8832 empty!3515)))) b!7406963))

(declare-fun b!7406964 () Bool)

(declare-fun e!4430065 () Bool)

(declare-fun tp!2118906 () Bool)

(declare-fun tp!2118907 () Bool)

(assert (=> b!7406964 (= e!4430065 (and tp!2118906 tp!2118907))))

(assert (=> b!7406856 (= tp!2118865 e!4430065)))

(assert (= (and b!7406856 (is-Cons!71842 (t!386525 (exprs!8832 empty!3515)))) b!7406964))

(declare-fun b!7406967 () Bool)

(declare-fun e!4430066 () Bool)

(declare-fun tp!2118912 () Bool)

(assert (=> b!7406967 (= e!4430066 tp!2118912)))

(declare-fun b!7406966 () Bool)

(declare-fun tp!2118910 () Bool)

(declare-fun tp!2118911 () Bool)

(assert (=> b!7406966 (= e!4430066 (and tp!2118910 tp!2118911))))

(assert (=> b!7406844 (= tp!2118851 e!4430066)))

(declare-fun b!7406965 () Bool)

(assert (=> b!7406965 (= e!4430066 tp_is_empty!49047)))

(declare-fun b!7406968 () Bool)

(declare-fun tp!2118909 () Bool)

(declare-fun tp!2118908 () Bool)

(assert (=> b!7406968 (= e!4430066 (and tp!2118909 tp!2118908))))

(assert (= (and b!7406844 (is-ElementMatch!19392 (h!78290 (exprs!8832 setElem!56152)))) b!7406965))

(assert (= (and b!7406844 (is-Concat!28237 (h!78290 (exprs!8832 setElem!56152)))) b!7406966))

(assert (= (and b!7406844 (is-Star!19392 (h!78290 (exprs!8832 setElem!56152)))) b!7406967))

(assert (= (and b!7406844 (is-Union!19392 (h!78290 (exprs!8832 setElem!56152)))) b!7406968))

(declare-fun b!7406969 () Bool)

(declare-fun e!4430067 () Bool)

(declare-fun tp!2118913 () Bool)

(declare-fun tp!2118914 () Bool)

(assert (=> b!7406969 (= e!4430067 (and tp!2118913 tp!2118914))))

(assert (=> b!7406844 (= tp!2118852 e!4430067)))

(assert (= (and b!7406844 (is-Cons!71842 (t!386525 (exprs!8832 setElem!56152)))) b!7406969))

(declare-fun condSetEmpty!56162 () Bool)

(assert (=> setNonEmpty!56158 (= condSetEmpty!56162 (= setRest!56158 (as set.empty (Set Context!16664))))))

(declare-fun setRes!56162 () Bool)

(assert (=> setNonEmpty!56158 (= tp!2118862 setRes!56162)))

(declare-fun setIsEmpty!56162 () Bool)

(assert (=> setIsEmpty!56162 setRes!56162))

(declare-fun setElem!56162 () Context!16664)

(declare-fun e!4430068 () Bool)

(declare-fun tp!2118915 () Bool)

(declare-fun setNonEmpty!56162 () Bool)

(assert (=> setNonEmpty!56162 (= setRes!56162 (and tp!2118915 (inv!91842 setElem!56162) e!4430068))))

(declare-fun setRest!56162 () (Set Context!16664))

(assert (=> setNonEmpty!56162 (= setRest!56158 (set.union (set.insert setElem!56162 (as set.empty (Set Context!16664))) setRest!56162))))

(declare-fun b!7406970 () Bool)

(declare-fun tp!2118916 () Bool)

(assert (=> b!7406970 (= e!4430068 tp!2118916)))

(assert (= (and setNonEmpty!56158 condSetEmpty!56162) setIsEmpty!56162))

(assert (= (and setNonEmpty!56158 (not condSetEmpty!56162)) setNonEmpty!56162))

(assert (= setNonEmpty!56162 b!7406970))

(declare-fun m!8042450 () Bool)

(assert (=> setNonEmpty!56162 m!8042450))

(declare-fun b!7406973 () Bool)

(declare-fun e!4430069 () Bool)

(declare-fun tp!2118921 () Bool)

(assert (=> b!7406973 (= e!4430069 tp!2118921)))

(declare-fun b!7406972 () Bool)

(declare-fun tp!2118919 () Bool)

(declare-fun tp!2118920 () Bool)

(assert (=> b!7406972 (= e!4430069 (and tp!2118919 tp!2118920))))

(assert (=> b!7406845 (= tp!2118853 e!4430069)))

(declare-fun b!7406971 () Bool)

(assert (=> b!7406971 (= e!4430069 tp_is_empty!49047)))

(declare-fun b!7406974 () Bool)

(declare-fun tp!2118918 () Bool)

(declare-fun tp!2118917 () Bool)

(assert (=> b!7406974 (= e!4430069 (and tp!2118918 tp!2118917))))

(assert (= (and b!7406845 (is-ElementMatch!19392 (h!78290 (exprs!8832 c!10532)))) b!7406971))

(assert (= (and b!7406845 (is-Concat!28237 (h!78290 (exprs!8832 c!10532)))) b!7406972))

(assert (= (and b!7406845 (is-Star!19392 (h!78290 (exprs!8832 c!10532)))) b!7406973))

(assert (= (and b!7406845 (is-Union!19392 (h!78290 (exprs!8832 c!10532)))) b!7406974))

(declare-fun b!7406975 () Bool)

(declare-fun e!4430070 () Bool)

(declare-fun tp!2118922 () Bool)

(declare-fun tp!2118923 () Bool)

(assert (=> b!7406975 (= e!4430070 (and tp!2118922 tp!2118923))))

(assert (=> b!7406845 (= tp!2118854 e!4430070)))

(assert (= (and b!7406845 (is-Cons!71842 (t!386525 (exprs!8832 c!10532)))) b!7406975))

(declare-fun b_lambda!286147 () Bool)

(assert (= b_lambda!286141 (or d!2290420 b_lambda!286147)))

(declare-fun bs!1923871 () Bool)

(declare-fun d!2290482 () Bool)

(assert (= bs!1923871 (and d!2290482 d!2290420)))

(declare-fun validRegex!9955 (Regex!19392) Bool)

(assert (=> bs!1923871 (= (dynLambda!29617 lambda!459420 (h!78290 (exprs!8832 lt!2618162))) (validRegex!9955 (h!78290 (exprs!8832 lt!2618162))))))

(declare-fun m!8042452 () Bool)

(assert (=> bs!1923871 m!8042452))

(assert (=> b!7406909 d!2290482))

(declare-fun b_lambda!286149 () Bool)

(assert (= b_lambda!286139 (or d!2290442 b_lambda!286149)))

(declare-fun bs!1923872 () Bool)

(declare-fun d!2290484 () Bool)

(assert (= bs!1923872 (and d!2290484 d!2290442)))

(assert (=> bs!1923872 (= (dynLambda!29617 lambda!459426 (h!78290 (exprs!8832 c!10532))) (validRegex!9955 (h!78290 (exprs!8832 c!10532))))))

(declare-fun m!8042454 () Bool)

(assert (=> bs!1923872 m!8042454))

(assert (=> b!7406907 d!2290484))

(declare-fun b_lambda!286151 () Bool)

(assert (= b_lambda!286145 (or d!2290426 b_lambda!286151)))

(declare-fun bs!1923873 () Bool)

(declare-fun d!2290486 () Bool)

(assert (= bs!1923873 (and d!2290486 d!2290426)))

(assert (=> bs!1923873 (= (dynLambda!29617 lambda!459425 (h!78290 (exprs!8832 setElem!56152))) (validRegex!9955 (h!78290 (exprs!8832 setElem!56152))))))

(declare-fun m!8042456 () Bool)

(assert (=> bs!1923873 m!8042456))

(assert (=> b!7406913 d!2290486))

(declare-fun b_lambda!286153 () Bool)

(assert (= b_lambda!286143 (or d!2290424 b_lambda!286153)))

(declare-fun bs!1923874 () Bool)

(declare-fun d!2290488 () Bool)

(assert (= bs!1923874 (and d!2290488 d!2290424)))

(assert (=> bs!1923874 (= (dynLambda!29617 lambda!459424 (h!78290 (exprs!8832 empty!3515))) (validRegex!9955 (h!78290 (exprs!8832 empty!3515))))))

(declare-fun m!8042458 () Bool)

(assert (=> bs!1923874 m!8042458))

(assert (=> b!7406911 d!2290488))

(push 1)

(assert (not d!2290466))

(assert (not bm!681923))

(assert (not setNonEmpty!56162))

(assert (not b!7406902))

(assert (not b!7406963))

(assert (not b!7406964))

(assert (not b!7406969))

(assert (not b!7406901))

(assert (not d!2290464))

(assert (not b!7406970))

(assert tp_is_empty!49047)

(assert (not b!7406973))

(assert (not b!7406897))

(assert (not b!7406914))

(assert (not b!7406910))

(assert (not d!2290476))

(assert (not b_lambda!286151))

(assert (not bs!1923873))

(assert (not bm!681926))

(assert (not b!7406968))

(assert (not d!2290460))

(assert (not b!7406912))

(assert (not b!7406974))

(assert (not b_lambda!286153))

(assert (not b!7406972))

(assert (not b!7406938))

(assert (not b!7406962))

(assert (not bm!681927))

(assert (not d!2290462))

(assert (not bs!1923872))

(assert (not b!7406967))

(assert (not b!7406966))

(assert (not b_lambda!286149))

(assert (not bm!681910))

(assert (not bs!1923874))

(assert (not b!7406948))

(assert (not bs!1923871))

(assert (not b!7406908))

(assert (not b!7406961))

(assert (not b_lambda!286147))

(assert (not b!7406975))

(assert (not b!7406949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

