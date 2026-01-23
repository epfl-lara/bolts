; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727432 () Bool)

(assert start!727432)

(declare-fun b!7509364 () Bool)

(declare-fun e!4477790 () Bool)

(declare-datatypes ((C!39810 0))(
  ( (C!39811 (val!30303 Int)) )
))
(declare-datatypes ((Regex!19742 0))(
  ( (ElementMatch!19742 (c!1386727 C!39810)) (Concat!28587 (regOne!39996 Regex!19742) (regTwo!39996 Regex!19742)) (EmptyExpr!19742) (Star!19742 (reg!20071 Regex!19742)) (EmptyLang!19742) (Union!19742 (regOne!39997 Regex!19742) (regTwo!39997 Regex!19742)) )
))
(declare-datatypes ((List!72593 0))(
  ( (Nil!72469) (Cons!72469 (h!78917 Regex!19742) (t!387162 List!72593)) )
))
(declare-datatypes ((Context!16988 0))(
  ( (Context!16989 (exprs!8994 List!72593)) )
))
(declare-fun z!563 () (Set Context!16988))

(declare-fun lambda!466066 () Int)

(declare-datatypes ((List!72594 0))(
  ( (Nil!72470) (Cons!72470 (h!78918 C!39810) (t!387163 List!72594)) )
))
(declare-datatypes ((Option!17241 0))(
  ( (None!17240) (Some!17240 (v!54369 List!72594)) )
))
(declare-fun isDefined!13915 (Option!17241) Bool)

(declare-fun getLanguageWitness!1076 (Context!16988) Option!17241)

(declare-fun getWitness!2488 ((Set Context!16988) Int) Context!16988)

(declare-fun exists!4900 ((Set Context!16988) Int) Bool)

(assert (=> b!7509364 (= e!4477790 (not (= (isDefined!13915 (getLanguageWitness!1076 (getWitness!2488 z!563 lambda!466066))) (exists!4900 z!563 lambda!466066))))))

(declare-fun setRes!57192 () Bool)

(declare-fun setElem!57192 () Context!16988)

(declare-fun e!4477789 () Bool)

(declare-fun setNonEmpty!57192 () Bool)

(declare-fun tp!2179692 () Bool)

(declare-fun inv!92586 (Context!16988) Bool)

(assert (=> setNonEmpty!57192 (= setRes!57192 (and tp!2179692 (inv!92586 setElem!57192) e!4477789))))

(declare-fun setRest!57192 () (Set Context!16988))

(assert (=> setNonEmpty!57192 (= z!563 (set.union (set.insert setElem!57192 (as set.empty (Set Context!16988))) setRest!57192))))

(declare-fun b!7509365 () Bool)

(declare-fun tp!2179691 () Bool)

(assert (=> b!7509365 (= e!4477789 tp!2179691)))

(declare-fun setIsEmpty!57192 () Bool)

(assert (=> setIsEmpty!57192 setRes!57192))

(declare-fun res!3012690 () Bool)

(assert (=> start!727432 (=> (not res!3012690) (not e!4477790))))

(assert (=> start!727432 (= res!3012690 (exists!4900 z!563 lambda!466066))))

(assert (=> start!727432 e!4477790))

(declare-fun condSetEmpty!57192 () Bool)

(assert (=> start!727432 (= condSetEmpty!57192 (= z!563 (as set.empty (Set Context!16988))))))

(assert (=> start!727432 setRes!57192))

(assert (= (and start!727432 res!3012690) b!7509364))

(assert (= (and start!727432 condSetEmpty!57192) setIsEmpty!57192))

(assert (= (and start!727432 (not condSetEmpty!57192)) setNonEmpty!57192))

(assert (= setNonEmpty!57192 b!7509365))

(declare-fun m!8093472 () Bool)

(assert (=> b!7509364 m!8093472))

(assert (=> b!7509364 m!8093472))

(declare-fun m!8093474 () Bool)

(assert (=> b!7509364 m!8093474))

(assert (=> b!7509364 m!8093474))

(declare-fun m!8093476 () Bool)

(assert (=> b!7509364 m!8093476))

(declare-fun m!8093478 () Bool)

(assert (=> b!7509364 m!8093478))

(declare-fun m!8093480 () Bool)

(assert (=> setNonEmpty!57192 m!8093480))

(assert (=> start!727432 m!8093478))

(push 1)

(assert (not setNonEmpty!57192))

(assert (not start!727432))

(assert (not b!7509364))

(assert (not b!7509365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2306038 () Bool)

(declare-fun lambda!466076 () Int)

(declare-fun forall!18356 (List!72593 Int) Bool)

(assert (=> d!2306038 (= (inv!92586 setElem!57192) (forall!18356 (exprs!8994 setElem!57192) lambda!466076))))

(declare-fun bs!1938999 () Bool)

(assert (= bs!1938999 d!2306038))

(declare-fun m!8093492 () Bool)

(assert (=> bs!1938999 m!8093492))

(assert (=> setNonEmpty!57192 d!2306038))

(declare-fun d!2306040 () Bool)

(declare-fun lt!2637190 () Bool)

(declare-datatypes ((List!72597 0))(
  ( (Nil!72473) (Cons!72473 (h!78921 Context!16988) (t!387166 List!72597)) )
))
(declare-fun exists!4902 (List!72597 Int) Bool)

(declare-fun toList!11857 ((Set Context!16988)) List!72597)

(assert (=> d!2306040 (= lt!2637190 (exists!4902 (toList!11857 z!563) lambda!466066))))

(declare-fun choose!58244 ((Set Context!16988) Int) Bool)

(assert (=> d!2306040 (= lt!2637190 (choose!58244 z!563 lambda!466066))))

(assert (=> d!2306040 (= (exists!4900 z!563 lambda!466066) lt!2637190)))

(declare-fun bs!1939000 () Bool)

(assert (= bs!1939000 d!2306040))

(declare-fun m!8093494 () Bool)

(assert (=> bs!1939000 m!8093494))

(assert (=> bs!1939000 m!8093494))

(declare-fun m!8093496 () Bool)

(assert (=> bs!1939000 m!8093496))

(declare-fun m!8093498 () Bool)

(assert (=> bs!1939000 m!8093498))

(assert (=> start!727432 d!2306040))

(declare-fun d!2306042 () Bool)

(declare-fun isEmpty!41328 (Option!17241) Bool)

(assert (=> d!2306042 (= (isDefined!13915 (getLanguageWitness!1076 (getWitness!2488 z!563 lambda!466066))) (not (isEmpty!41328 (getLanguageWitness!1076 (getWitness!2488 z!563 lambda!466066)))))))

(declare-fun bs!1939001 () Bool)

(assert (= bs!1939001 d!2306042))

(assert (=> bs!1939001 m!8093474))

(declare-fun m!8093500 () Bool)

(assert (=> bs!1939001 m!8093500))

(assert (=> b!7509364 d!2306042))

(declare-fun bs!1939003 () Bool)

(declare-fun d!2306044 () Bool)

(assert (= bs!1939003 (and d!2306044 d!2306038)))

(declare-fun lambda!466079 () Int)

(assert (=> bs!1939003 (not (= lambda!466079 lambda!466076))))

(declare-fun b!7509384 () Bool)

(declare-fun e!4477804 () Option!17241)

(declare-fun lt!2637199 () Option!17241)

(declare-fun lt!2637198 () Option!17241)

(declare-fun ++!17350 (List!72594 List!72594) List!72594)

(assert (=> b!7509384 (= e!4477804 (Some!17240 (++!17350 (v!54369 lt!2637199) (v!54369 lt!2637198))))))

(declare-fun b!7509385 () Bool)

(declare-fun e!4477803 () Option!17241)

(declare-fun e!4477805 () Option!17241)

(assert (=> b!7509385 (= e!4477803 e!4477805)))

(declare-fun getLanguageWitness!1078 (Regex!19742) Option!17241)

(assert (=> b!7509385 (= lt!2637199 (getLanguageWitness!1078 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))

(declare-fun c!1386744 () Bool)

(assert (=> b!7509385 (= c!1386744 (is-Some!17240 lt!2637199))))

(declare-fun b!7509386 () Bool)

(assert (=> b!7509386 (= e!4477805 None!17240)))

(declare-fun b!7509387 () Bool)

(assert (=> b!7509387 (= e!4477803 (Some!17240 Nil!72470))))

(declare-fun b!7509389 () Bool)

(declare-fun c!1386742 () Bool)

(assert (=> b!7509389 (= c!1386742 (is-Some!17240 lt!2637198))))

(assert (=> b!7509389 (= lt!2637198 (getLanguageWitness!1076 (Context!16989 (t!387162 (exprs!8994 (getWitness!2488 z!563 lambda!466066))))))))

(assert (=> b!7509389 (= e!4477805 e!4477804)))

(declare-fun b!7509388 () Bool)

(assert (=> b!7509388 (= e!4477804 None!17240)))

(declare-fun lt!2637197 () Option!17241)

(declare-fun exists!4903 (List!72593 Int) Bool)

(assert (=> d!2306044 (= (isEmpty!41328 lt!2637197) (exists!4903 (exprs!8994 (getWitness!2488 z!563 lambda!466066)) lambda!466079))))

(assert (=> d!2306044 (= lt!2637197 e!4477803)))

(declare-fun c!1386743 () Bool)

(assert (=> d!2306044 (= c!1386743 (is-Cons!72469 (exprs!8994 (getWitness!2488 z!563 lambda!466066))))))

(assert (=> d!2306044 (= (getLanguageWitness!1076 (getWitness!2488 z!563 lambda!466066)) lt!2637197)))

(assert (= (and d!2306044 c!1386743) b!7509385))

(assert (= (and d!2306044 (not c!1386743)) b!7509387))

(assert (= (and b!7509385 c!1386744) b!7509389))

(assert (= (and b!7509385 (not c!1386744)) b!7509386))

(assert (= (and b!7509389 c!1386742) b!7509384))

(assert (= (and b!7509389 (not c!1386742)) b!7509388))

(declare-fun m!8093504 () Bool)

(assert (=> b!7509384 m!8093504))

(declare-fun m!8093506 () Bool)

(assert (=> b!7509385 m!8093506))

(declare-fun m!8093508 () Bool)

(assert (=> b!7509389 m!8093508))

(declare-fun m!8093510 () Bool)

(assert (=> d!2306044 m!8093510))

(declare-fun m!8093512 () Bool)

(assert (=> d!2306044 m!8093512))

(assert (=> b!7509364 d!2306044))

(declare-fun d!2306050 () Bool)

(declare-fun e!4477808 () Bool)

(assert (=> d!2306050 e!4477808))

(declare-fun res!3012696 () Bool)

(assert (=> d!2306050 (=> (not res!3012696) (not e!4477808))))

(declare-fun lt!2637202 () Context!16988)

(declare-fun dynLambda!29802 (Int Context!16988) Bool)

(assert (=> d!2306050 (= res!3012696 (dynLambda!29802 lambda!466066 lt!2637202))))

(declare-fun getWitness!2490 (List!72597 Int) Context!16988)

(assert (=> d!2306050 (= lt!2637202 (getWitness!2490 (toList!11857 z!563) lambda!466066))))

(assert (=> d!2306050 (exists!4900 z!563 lambda!466066)))

(assert (=> d!2306050 (= (getWitness!2488 z!563 lambda!466066) lt!2637202)))

(declare-fun b!7509392 () Bool)

(assert (=> b!7509392 (= e!4477808 (set.member lt!2637202 z!563))))

(assert (= (and d!2306050 res!3012696) b!7509392))

(declare-fun b_lambda!287929 () Bool)

(assert (=> (not b_lambda!287929) (not d!2306050)))

(declare-fun m!8093514 () Bool)

(assert (=> d!2306050 m!8093514))

(assert (=> d!2306050 m!8093494))

(assert (=> d!2306050 m!8093494))

(declare-fun m!8093516 () Bool)

(assert (=> d!2306050 m!8093516))

(assert (=> d!2306050 m!8093478))

(declare-fun m!8093518 () Bool)

(assert (=> b!7509392 m!8093518))

(assert (=> b!7509364 d!2306050))

(assert (=> b!7509364 d!2306040))

(declare-fun b!7509397 () Bool)

(declare-fun e!4477811 () Bool)

(declare-fun tp!2179703 () Bool)

(declare-fun tp!2179704 () Bool)

(assert (=> b!7509397 (= e!4477811 (and tp!2179703 tp!2179704))))

(assert (=> b!7509365 (= tp!2179691 e!4477811)))

(assert (= (and b!7509365 (is-Cons!72469 (exprs!8994 setElem!57192))) b!7509397))

(declare-fun condSetEmpty!57198 () Bool)

(assert (=> setNonEmpty!57192 (= condSetEmpty!57198 (= setRest!57192 (as set.empty (Set Context!16988))))))

(declare-fun setRes!57198 () Bool)

(assert (=> setNonEmpty!57192 (= tp!2179692 setRes!57198)))

(declare-fun setIsEmpty!57198 () Bool)

(assert (=> setIsEmpty!57198 setRes!57198))

(declare-fun setElem!57198 () Context!16988)

(declare-fun e!4477814 () Bool)

(declare-fun tp!2179710 () Bool)

(declare-fun setNonEmpty!57198 () Bool)

(assert (=> setNonEmpty!57198 (= setRes!57198 (and tp!2179710 (inv!92586 setElem!57198) e!4477814))))

(declare-fun setRest!57198 () (Set Context!16988))

(assert (=> setNonEmpty!57198 (= setRest!57192 (set.union (set.insert setElem!57198 (as set.empty (Set Context!16988))) setRest!57198))))

(declare-fun b!7509402 () Bool)

(declare-fun tp!2179709 () Bool)

(assert (=> b!7509402 (= e!4477814 tp!2179709)))

(assert (= (and setNonEmpty!57192 condSetEmpty!57198) setIsEmpty!57198))

(assert (= (and setNonEmpty!57192 (not condSetEmpty!57198)) setNonEmpty!57198))

(assert (= setNonEmpty!57198 b!7509402))

(declare-fun m!8093520 () Bool)

(assert (=> setNonEmpty!57198 m!8093520))

(declare-fun b_lambda!287931 () Bool)

(assert (= b_lambda!287929 (or start!727432 b_lambda!287931)))

(declare-fun bs!1939004 () Bool)

(declare-fun d!2306052 () Bool)

(assert (= bs!1939004 (and d!2306052 start!727432)))

(declare-fun lostCause!1623 (Context!16988) Bool)

(assert (=> bs!1939004 (= (dynLambda!29802 lambda!466066 lt!2637202) (not (lostCause!1623 lt!2637202)))))

(declare-fun m!8093522 () Bool)

(assert (=> bs!1939004 m!8093522))

(assert (=> d!2306050 d!2306052))

(push 1)

(assert (not b!7509389))

(assert (not b!7509384))

(assert (not bs!1939004))

(assert (not d!2306050))

(assert (not d!2306038))

(assert (not d!2306044))

(assert (not b!7509385))

(assert (not setNonEmpty!57198))

(assert (not d!2306042))

(assert (not b_lambda!287931))

(assert (not b!7509402))

(assert (not b!7509397))

(assert (not d!2306040))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2306060 () Bool)

(assert (=> d!2306060 (= (isEmpty!41328 (getLanguageWitness!1076 (getWitness!2488 z!563 lambda!466066))) (not (is-Some!17240 (getLanguageWitness!1076 (getWitness!2488 z!563 lambda!466066)))))))

(assert (=> d!2306042 d!2306060))

(declare-fun bs!1939006 () Bool)

(declare-fun d!2306062 () Bool)

(assert (= bs!1939006 (and d!2306062 start!727432)))

(declare-fun lambda!466085 () Int)

(assert (=> bs!1939006 (not (= lambda!466085 lambda!466066))))

(assert (=> d!2306062 true))

(declare-fun order!29681 () Int)

(declare-fun dynLambda!29804 (Int Int) Int)

(assert (=> d!2306062 (< (dynLambda!29804 order!29681 lambda!466066) (dynLambda!29804 order!29681 lambda!466085))))

(declare-fun forall!18358 (List!72597 Int) Bool)

(assert (=> d!2306062 (= (exists!4902 (toList!11857 z!563) lambda!466066) (not (forall!18358 (toList!11857 z!563) lambda!466085)))))

(declare-fun bs!1939007 () Bool)

(assert (= bs!1939007 d!2306062))

(assert (=> bs!1939007 m!8093494))

(declare-fun m!8093546 () Bool)

(assert (=> bs!1939007 m!8093546))

(assert (=> d!2306040 d!2306062))

(declare-fun d!2306064 () Bool)

(declare-fun e!4477829 () Bool)

(assert (=> d!2306064 e!4477829))

(declare-fun res!3012702 () Bool)

(assert (=> d!2306064 (=> (not res!3012702) (not e!4477829))))

(declare-fun lt!2637220 () List!72597)

(declare-fun noDuplicate!3158 (List!72597) Bool)

(assert (=> d!2306064 (= res!3012702 (noDuplicate!3158 lt!2637220))))

(declare-fun choose!58246 ((Set Context!16988)) List!72597)

(assert (=> d!2306064 (= lt!2637220 (choose!58246 z!563))))

(assert (=> d!2306064 (= (toList!11857 z!563) lt!2637220)))

(declare-fun b!7509428 () Bool)

(declare-fun content!15327 (List!72597) (Set Context!16988))

(assert (=> b!7509428 (= e!4477829 (= (content!15327 lt!2637220) z!563))))

(assert (= (and d!2306064 res!3012702) b!7509428))

(declare-fun m!8093548 () Bool)

(assert (=> d!2306064 m!8093548))

(declare-fun m!8093550 () Bool)

(assert (=> d!2306064 m!8093550))

(declare-fun m!8093552 () Bool)

(assert (=> b!7509428 m!8093552))

(assert (=> d!2306040 d!2306064))

(declare-fun d!2306066 () Bool)

(declare-fun res!3012705 () Bool)

(assert (=> d!2306066 (= res!3012705 (exists!4902 (toList!11857 z!563) lambda!466066))))

(assert (=> d!2306066 true))

(assert (=> d!2306066 (= (choose!58244 z!563 lambda!466066) res!3012705)))

(declare-fun bs!1939008 () Bool)

(assert (= bs!1939008 d!2306066))

(assert (=> bs!1939008 m!8093494))

(assert (=> bs!1939008 m!8093494))

(assert (=> bs!1939008 m!8093496))

(assert (=> d!2306040 d!2306066))

(declare-fun b!7509471 () Bool)

(declare-fun e!4477857 () Option!17241)

(assert (=> b!7509471 (= e!4477857 None!17240)))

(declare-fun b!7509472 () Bool)

(declare-fun e!4477856 () Option!17241)

(declare-fun e!4477852 () Option!17241)

(assert (=> b!7509472 (= e!4477856 e!4477852)))

(declare-fun c!1386776 () Bool)

(assert (=> b!7509472 (= c!1386776 (is-Star!19742 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))

(declare-fun d!2306068 () Bool)

(declare-fun c!1386771 () Bool)

(assert (=> d!2306068 (= c!1386771 (is-EmptyExpr!19742 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))

(declare-fun e!4477854 () Option!17241)

(assert (=> d!2306068 (= (getLanguageWitness!1078 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))) e!4477854)))

(declare-fun b!7509473 () Bool)

(declare-fun e!4477855 () Option!17241)

(assert (=> b!7509473 (= e!4477855 None!17240)))

(declare-fun b!7509474 () Bool)

(assert (=> b!7509474 (= e!4477854 (Some!17240 Nil!72470))))

(declare-fun b!7509475 () Bool)

(declare-fun c!1386773 () Bool)

(assert (=> b!7509475 (= c!1386773 (is-ElementMatch!19742 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))

(assert (=> b!7509475 (= e!4477855 e!4477856)))

(declare-fun b!7509476 () Bool)

(declare-fun e!4477858 () Option!17241)

(declare-fun e!4477859 () Option!17241)

(assert (=> b!7509476 (= e!4477858 e!4477859)))

(declare-fun lt!2637228 () Option!17241)

(declare-fun call!688917 () Option!17241)

(assert (=> b!7509476 (= lt!2637228 call!688917)))

(declare-fun c!1386775 () Bool)

(assert (=> b!7509476 (= c!1386775 (is-Some!17240 lt!2637228))))

(declare-fun c!1386777 () Bool)

(declare-fun bm!688912 () Bool)

(assert (=> bm!688912 (= call!688917 (getLanguageWitness!1078 (ite c!1386777 (regOne!39997 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))) (regOne!39996 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))))

(declare-fun b!7509477 () Bool)

(assert (=> b!7509477 (= c!1386777 (is-Union!19742 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))

(assert (=> b!7509477 (= e!4477852 e!4477858)))

(declare-fun b!7509478 () Bool)

(assert (=> b!7509478 (= e!4477852 (Some!17240 Nil!72470))))

(declare-fun b!7509479 () Bool)

(declare-fun call!688918 () Option!17241)

(assert (=> b!7509479 (= e!4477859 call!688918)))

(declare-fun b!7509480 () Bool)

(assert (=> b!7509480 (= e!4477858 e!4477857)))

(declare-fun lt!2637229 () Option!17241)

(assert (=> b!7509480 (= lt!2637229 call!688917)))

(declare-fun c!1386774 () Bool)

(assert (=> b!7509480 (= c!1386774 (is-Some!17240 lt!2637229))))

(declare-fun b!7509481 () Bool)

(assert (=> b!7509481 (= e!4477854 e!4477855)))

(declare-fun c!1386772 () Bool)

(assert (=> b!7509481 (= c!1386772 (is-EmptyLang!19742 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))

(declare-fun b!7509482 () Bool)

(declare-fun e!4477853 () Option!17241)

(declare-fun lt!2637227 () Option!17241)

(assert (=> b!7509482 (= e!4477853 (Some!17240 (++!17350 (v!54369 lt!2637229) (v!54369 lt!2637227))))))

(declare-fun b!7509483 () Bool)

(assert (=> b!7509483 (= e!4477853 None!17240)))

(declare-fun b!7509484 () Bool)

(declare-fun c!1386778 () Bool)

(assert (=> b!7509484 (= c!1386778 (is-Some!17240 lt!2637227))))

(assert (=> b!7509484 (= lt!2637227 call!688918)))

(assert (=> b!7509484 (= e!4477857 e!4477853)))

(declare-fun bm!688913 () Bool)

(assert (=> bm!688913 (= call!688918 (getLanguageWitness!1078 (ite c!1386777 (regTwo!39997 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))) (regTwo!39996 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))))

(declare-fun b!7509485 () Bool)

(assert (=> b!7509485 (= e!4477859 lt!2637228)))

(declare-fun b!7509486 () Bool)

(assert (=> b!7509486 (= e!4477856 (Some!17240 (Cons!72470 (c!1386727 (h!78917 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))) Nil!72470)))))

(assert (= (and d!2306068 c!1386771) b!7509474))

(assert (= (and d!2306068 (not c!1386771)) b!7509481))

(assert (= (and b!7509481 c!1386772) b!7509473))

(assert (= (and b!7509481 (not c!1386772)) b!7509475))

(assert (= (and b!7509475 c!1386773) b!7509486))

(assert (= (and b!7509475 (not c!1386773)) b!7509472))

(assert (= (and b!7509472 c!1386776) b!7509478))

(assert (= (and b!7509472 (not c!1386776)) b!7509477))

(assert (= (and b!7509477 c!1386777) b!7509476))

(assert (= (and b!7509477 (not c!1386777)) b!7509480))

(assert (= (and b!7509476 c!1386775) b!7509485))

(assert (= (and b!7509476 (not c!1386775)) b!7509479))

(assert (= (and b!7509480 c!1386774) b!7509484))

(assert (= (and b!7509480 (not c!1386774)) b!7509471))

(assert (= (and b!7509484 c!1386778) b!7509482))

(assert (= (and b!7509484 (not c!1386778)) b!7509483))

(assert (= (or b!7509479 b!7509484) bm!688913))

(assert (= (or b!7509476 b!7509480) bm!688912))

(declare-fun m!8093560 () Bool)

(assert (=> bm!688912 m!8093560))

(declare-fun m!8093562 () Bool)

(assert (=> b!7509482 m!8093562))

(declare-fun m!8093564 () Bool)

(assert (=> bm!688913 m!8093564))

(assert (=> b!7509385 d!2306068))

(declare-fun d!2306072 () Bool)

(declare-fun res!3012710 () Bool)

(declare-fun e!4477864 () Bool)

(assert (=> d!2306072 (=> res!3012710 e!4477864)))

(assert (=> d!2306072 (= res!3012710 (is-Nil!72469 (exprs!8994 setElem!57192)))))

(assert (=> d!2306072 (= (forall!18356 (exprs!8994 setElem!57192) lambda!466076) e!4477864)))

(declare-fun b!7509491 () Bool)

(declare-fun e!4477865 () Bool)

(assert (=> b!7509491 (= e!4477864 e!4477865)))

(declare-fun res!3012711 () Bool)

(assert (=> b!7509491 (=> (not res!3012711) (not e!4477865))))

(declare-fun dynLambda!29805 (Int Regex!19742) Bool)

(assert (=> b!7509491 (= res!3012711 (dynLambda!29805 lambda!466076 (h!78917 (exprs!8994 setElem!57192))))))

(declare-fun b!7509492 () Bool)

(assert (=> b!7509492 (= e!4477865 (forall!18356 (t!387162 (exprs!8994 setElem!57192)) lambda!466076))))

(assert (= (and d!2306072 (not res!3012710)) b!7509491))

(assert (= (and b!7509491 res!3012711) b!7509492))

(declare-fun b_lambda!287937 () Bool)

(assert (=> (not b_lambda!287937) (not b!7509491)))

(declare-fun m!8093566 () Bool)

(assert (=> b!7509491 m!8093566))

(declare-fun m!8093568 () Bool)

(assert (=> b!7509492 m!8093568))

(assert (=> d!2306038 d!2306072))

(declare-fun bs!1939012 () Bool)

(declare-fun d!2306074 () Bool)

(assert (= bs!1939012 (and d!2306074 d!2306038)))

(declare-fun lambda!466089 () Int)

(assert (=> bs!1939012 (= lambda!466089 lambda!466076)))

(declare-fun bs!1939013 () Bool)

(assert (= bs!1939013 (and d!2306074 d!2306044)))

(assert (=> bs!1939013 (not (= lambda!466089 lambda!466079))))

(assert (=> d!2306074 (= (inv!92586 setElem!57198) (forall!18356 (exprs!8994 setElem!57198) lambda!466089))))

(declare-fun bs!1939014 () Bool)

(assert (= bs!1939014 d!2306074))

(declare-fun m!8093570 () Bool)

(assert (=> bs!1939014 m!8093570))

(assert (=> setNonEmpty!57198 d!2306074))

(declare-fun b!7509503 () Bool)

(declare-fun res!3012716 () Bool)

(declare-fun e!4477870 () Bool)

(assert (=> b!7509503 (=> (not res!3012716) (not e!4477870))))

(declare-fun lt!2637232 () List!72594)

(declare-fun size!42291 (List!72594) Int)

(assert (=> b!7509503 (= res!3012716 (= (size!42291 lt!2637232) (+ (size!42291 (v!54369 lt!2637199)) (size!42291 (v!54369 lt!2637198)))))))

(declare-fun b!7509501 () Bool)

(declare-fun e!4477871 () List!72594)

(assert (=> b!7509501 (= e!4477871 (v!54369 lt!2637198))))

(declare-fun b!7509504 () Bool)

(assert (=> b!7509504 (= e!4477870 (or (not (= (v!54369 lt!2637198) Nil!72470)) (= lt!2637232 (v!54369 lt!2637199))))))

(declare-fun b!7509502 () Bool)

(assert (=> b!7509502 (= e!4477871 (Cons!72470 (h!78918 (v!54369 lt!2637199)) (++!17350 (t!387163 (v!54369 lt!2637199)) (v!54369 lt!2637198))))))

(declare-fun d!2306076 () Bool)

(assert (=> d!2306076 e!4477870))

(declare-fun res!3012717 () Bool)

(assert (=> d!2306076 (=> (not res!3012717) (not e!4477870))))

(declare-fun content!15328 (List!72594) (Set C!39810))

(assert (=> d!2306076 (= res!3012717 (= (content!15328 lt!2637232) (set.union (content!15328 (v!54369 lt!2637199)) (content!15328 (v!54369 lt!2637198)))))))

(assert (=> d!2306076 (= lt!2637232 e!4477871)))

(declare-fun c!1386781 () Bool)

(assert (=> d!2306076 (= c!1386781 (is-Nil!72470 (v!54369 lt!2637199)))))

(assert (=> d!2306076 (= (++!17350 (v!54369 lt!2637199) (v!54369 lt!2637198)) lt!2637232)))

(assert (= (and d!2306076 c!1386781) b!7509501))

(assert (= (and d!2306076 (not c!1386781)) b!7509502))

(assert (= (and d!2306076 res!3012717) b!7509503))

(assert (= (and b!7509503 res!3012716) b!7509504))

(declare-fun m!8093572 () Bool)

(assert (=> b!7509503 m!8093572))

(declare-fun m!8093574 () Bool)

(assert (=> b!7509503 m!8093574))

(declare-fun m!8093576 () Bool)

(assert (=> b!7509503 m!8093576))

(declare-fun m!8093578 () Bool)

(assert (=> b!7509502 m!8093578))

(declare-fun m!8093580 () Bool)

(assert (=> d!2306076 m!8093580))

(declare-fun m!8093582 () Bool)

(assert (=> d!2306076 m!8093582))

(declare-fun m!8093584 () Bool)

(assert (=> d!2306076 m!8093584))

(assert (=> b!7509384 d!2306076))

(declare-fun bs!1939015 () Bool)

(declare-fun d!2306078 () Bool)

(assert (= bs!1939015 (and d!2306078 d!2306038)))

(declare-fun lambda!466090 () Int)

(assert (=> bs!1939015 (not (= lambda!466090 lambda!466076))))

(declare-fun bs!1939016 () Bool)

(assert (= bs!1939016 (and d!2306078 d!2306044)))

(assert (=> bs!1939016 (= lambda!466090 lambda!466079)))

(declare-fun bs!1939017 () Bool)

(assert (= bs!1939017 (and d!2306078 d!2306074)))

(assert (=> bs!1939017 (not (= lambda!466090 lambda!466089))))

(declare-fun b!7509505 () Bool)

(declare-fun e!4477873 () Option!17241)

(declare-fun lt!2637235 () Option!17241)

(declare-fun lt!2637234 () Option!17241)

(assert (=> b!7509505 (= e!4477873 (Some!17240 (++!17350 (v!54369 lt!2637235) (v!54369 lt!2637234))))))

(declare-fun b!7509506 () Bool)

(declare-fun e!4477872 () Option!17241)

(declare-fun e!4477874 () Option!17241)

(assert (=> b!7509506 (= e!4477872 e!4477874)))

(assert (=> b!7509506 (= lt!2637235 (getLanguageWitness!1078 (h!78917 (exprs!8994 (Context!16989 (t!387162 (exprs!8994 (getWitness!2488 z!563 lambda!466066))))))))))

(declare-fun c!1386784 () Bool)

(assert (=> b!7509506 (= c!1386784 (is-Some!17240 lt!2637235))))

(declare-fun b!7509507 () Bool)

(assert (=> b!7509507 (= e!4477874 None!17240)))

(declare-fun b!7509508 () Bool)

(assert (=> b!7509508 (= e!4477872 (Some!17240 Nil!72470))))

(declare-fun b!7509510 () Bool)

(declare-fun c!1386782 () Bool)

(assert (=> b!7509510 (= c!1386782 (is-Some!17240 lt!2637234))))

(assert (=> b!7509510 (= lt!2637234 (getLanguageWitness!1076 (Context!16989 (t!387162 (exprs!8994 (Context!16989 (t!387162 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))))))

(assert (=> b!7509510 (= e!4477874 e!4477873)))

(declare-fun b!7509509 () Bool)

(assert (=> b!7509509 (= e!4477873 None!17240)))

(declare-fun lt!2637233 () Option!17241)

(assert (=> d!2306078 (= (isEmpty!41328 lt!2637233) (exists!4903 (exprs!8994 (Context!16989 (t!387162 (exprs!8994 (getWitness!2488 z!563 lambda!466066))))) lambda!466090))))

(assert (=> d!2306078 (= lt!2637233 e!4477872)))

(declare-fun c!1386783 () Bool)

(assert (=> d!2306078 (= c!1386783 (is-Cons!72469 (exprs!8994 (Context!16989 (t!387162 (exprs!8994 (getWitness!2488 z!563 lambda!466066)))))))))

(assert (=> d!2306078 (= (getLanguageWitness!1076 (Context!16989 (t!387162 (exprs!8994 (getWitness!2488 z!563 lambda!466066))))) lt!2637233)))

(assert (= (and d!2306078 c!1386783) b!7509506))

(assert (= (and d!2306078 (not c!1386783)) b!7509508))

(assert (= (and b!7509506 c!1386784) b!7509510))

(assert (= (and b!7509506 (not c!1386784)) b!7509507))

(assert (= (and b!7509510 c!1386782) b!7509505))

(assert (= (and b!7509510 (not c!1386782)) b!7509509))

(declare-fun m!8093586 () Bool)

(assert (=> b!7509505 m!8093586))

(declare-fun m!8093588 () Bool)

(assert (=> b!7509506 m!8093588))

(declare-fun m!8093590 () Bool)

(assert (=> b!7509510 m!8093590))

(declare-fun m!8093592 () Bool)

(assert (=> d!2306078 m!8093592))

(declare-fun m!8093594 () Bool)

(assert (=> d!2306078 m!8093594))

(assert (=> b!7509389 d!2306078))

(declare-fun b!7509523 () Bool)

(declare-datatypes ((Unit!166502 0))(
  ( (Unit!166503) )
))
(declare-fun lt!2637241 () Unit!166502)

(declare-fun Unit!166504 () Unit!166502)

(assert (=> b!7509523 (= lt!2637241 Unit!166504)))

(assert (=> b!7509523 false))

(declare-fun e!4477883 () Context!16988)

(declare-fun head!15437 (List!72597) Context!16988)

(assert (=> b!7509523 (= e!4477883 (head!15437 (toList!11857 z!563)))))

(declare-fun d!2306080 () Bool)

(declare-fun e!4477885 () Bool)

(assert (=> d!2306080 e!4477885))

(declare-fun res!3012722 () Bool)

(assert (=> d!2306080 (=> (not res!3012722) (not e!4477885))))

(declare-fun lt!2637240 () Context!16988)

(assert (=> d!2306080 (= res!3012722 (dynLambda!29802 lambda!466066 lt!2637240))))

(declare-fun e!4477884 () Context!16988)

(assert (=> d!2306080 (= lt!2637240 e!4477884)))

(declare-fun c!1386790 () Bool)

(declare-fun e!4477886 () Bool)

(assert (=> d!2306080 (= c!1386790 e!4477886)))

(declare-fun res!3012723 () Bool)

(assert (=> d!2306080 (=> (not res!3012723) (not e!4477886))))

(assert (=> d!2306080 (= res!3012723 (is-Cons!72473 (toList!11857 z!563)))))

(assert (=> d!2306080 (exists!4902 (toList!11857 z!563) lambda!466066)))

(assert (=> d!2306080 (= (getWitness!2490 (toList!11857 z!563) lambda!466066) lt!2637240)))

(declare-fun b!7509524 () Bool)

(declare-fun contains!20872 (List!72597 Context!16988) Bool)

(assert (=> b!7509524 (= e!4477885 (contains!20872 (toList!11857 z!563) lt!2637240))))

(declare-fun b!7509525 () Bool)

(assert (=> b!7509525 (= e!4477884 e!4477883)))

(declare-fun c!1386789 () Bool)

(assert (=> b!7509525 (= c!1386789 (is-Cons!72473 (toList!11857 z!563)))))

(declare-fun b!7509526 () Bool)

(assert (=> b!7509526 (= e!4477884 (h!78921 (toList!11857 z!563)))))

(declare-fun b!7509527 () Bool)

(assert (=> b!7509527 (= e!4477886 (dynLambda!29802 lambda!466066 (h!78921 (toList!11857 z!563))))))

(declare-fun b!7509528 () Bool)

(assert (=> b!7509528 (= e!4477883 (getWitness!2490 (t!387166 (toList!11857 z!563)) lambda!466066))))

(assert (= (and d!2306080 res!3012723) b!7509527))

(assert (= (and d!2306080 c!1386790) b!7509526))

(assert (= (and d!2306080 (not c!1386790)) b!7509525))

(assert (= (and b!7509525 c!1386789) b!7509528))

(assert (= (and b!7509525 (not c!1386789)) b!7509523))

(assert (= (and d!2306080 res!3012722) b!7509524))

(declare-fun b_lambda!287939 () Bool)

(assert (=> (not b_lambda!287939) (not d!2306080)))

(declare-fun b_lambda!287941 () Bool)

(assert (=> (not b_lambda!287941) (not b!7509527)))

(declare-fun m!8093596 () Bool)

(assert (=> b!7509527 m!8093596))

(declare-fun m!8093598 () Bool)

(assert (=> b!7509528 m!8093598))

(declare-fun m!8093600 () Bool)

(assert (=> d!2306080 m!8093600))

(assert (=> d!2306080 m!8093494))

(assert (=> d!2306080 m!8093496))

(assert (=> b!7509524 m!8093494))

(declare-fun m!8093602 () Bool)

(assert (=> b!7509524 m!8093602))

(assert (=> b!7509523 m!8093494))

(declare-fun m!8093604 () Bool)

(assert (=> b!7509523 m!8093604))

(assert (=> d!2306050 d!2306080))

(assert (=> d!2306050 d!2306064))

(assert (=> d!2306050 d!2306040))

(declare-fun d!2306082 () Bool)

(assert (=> d!2306082 (= (isEmpty!41328 lt!2637197) (not (is-Some!17240 lt!2637197)))))

(assert (=> d!2306044 d!2306082))

(declare-fun bs!1939018 () Bool)

(declare-fun d!2306084 () Bool)

(assert (= bs!1939018 (and d!2306084 d!2306038)))

(declare-fun lambda!466093 () Int)

(assert (=> bs!1939018 (not (= lambda!466093 lambda!466076))))

(declare-fun bs!1939019 () Bool)

(assert (= bs!1939019 (and d!2306084 d!2306044)))

(assert (=> bs!1939019 (not (= lambda!466093 lambda!466079))))

(declare-fun bs!1939020 () Bool)

(assert (= bs!1939020 (and d!2306084 d!2306074)))

(assert (=> bs!1939020 (not (= lambda!466093 lambda!466089))))

(declare-fun bs!1939021 () Bool)

(assert (= bs!1939021 (and d!2306084 d!2306078)))

(assert (=> bs!1939021 (not (= lambda!466093 lambda!466090))))

(assert (=> d!2306084 true))

(declare-fun order!29683 () Int)

(declare-fun dynLambda!29806 (Int Int) Int)

(assert (=> d!2306084 (< (dynLambda!29806 order!29683 lambda!466079) (dynLambda!29806 order!29683 lambda!466093))))

(assert (=> d!2306084 (= (exists!4903 (exprs!8994 (getWitness!2488 z!563 lambda!466066)) lambda!466079) (not (forall!18356 (exprs!8994 (getWitness!2488 z!563 lambda!466066)) lambda!466093)))))

(declare-fun bs!1939022 () Bool)

(assert (= bs!1939022 d!2306084))

(declare-fun m!8093606 () Bool)

(assert (=> bs!1939022 m!8093606))

(assert (=> d!2306044 d!2306084))

(declare-fun bs!1939023 () Bool)

(declare-fun d!2306086 () Bool)

(assert (= bs!1939023 (and d!2306086 d!2306044)))

(declare-fun lambda!466096 () Int)

(assert (=> bs!1939023 (= lambda!466096 lambda!466079)))

(declare-fun bs!1939024 () Bool)

(assert (= bs!1939024 (and d!2306086 d!2306074)))

(assert (=> bs!1939024 (not (= lambda!466096 lambda!466089))))

(declare-fun bs!1939025 () Bool)

(assert (= bs!1939025 (and d!2306086 d!2306084)))

(assert (=> bs!1939025 (not (= lambda!466096 lambda!466093))))

(declare-fun bs!1939026 () Bool)

(assert (= bs!1939026 (and d!2306086 d!2306078)))

(assert (=> bs!1939026 (= lambda!466096 lambda!466090)))

(declare-fun bs!1939027 () Bool)

(assert (= bs!1939027 (and d!2306086 d!2306038)))

(assert (=> bs!1939027 (not (= lambda!466096 lambda!466076))))

(assert (=> d!2306086 (= (lostCause!1623 lt!2637202) (exists!4903 (exprs!8994 lt!2637202) lambda!466096))))

(declare-fun bs!1939028 () Bool)

(assert (= bs!1939028 d!2306086))

(declare-fun m!8093608 () Bool)

(assert (=> bs!1939028 m!8093608))

(assert (=> bs!1939004 d!2306086))

(declare-fun b!7509531 () Bool)

(declare-fun e!4477887 () Bool)

(declare-fun tp!2179723 () Bool)

(declare-fun tp!2179724 () Bool)

(assert (=> b!7509531 (= e!4477887 (and tp!2179723 tp!2179724))))

(assert (=> b!7509402 (= tp!2179709 e!4477887)))

(assert (= (and b!7509402 (is-Cons!72469 (exprs!8994 setElem!57198))) b!7509531))

(declare-fun condSetEmpty!57202 () Bool)

(assert (=> setNonEmpty!57198 (= condSetEmpty!57202 (= setRest!57198 (as set.empty (Set Context!16988))))))

(declare-fun setRes!57202 () Bool)

(assert (=> setNonEmpty!57198 (= tp!2179710 setRes!57202)))

(declare-fun setIsEmpty!57202 () Bool)

(assert (=> setIsEmpty!57202 setRes!57202))

(declare-fun setNonEmpty!57202 () Bool)

(declare-fun e!4477888 () Bool)

(declare-fun setElem!57202 () Context!16988)

(declare-fun tp!2179726 () Bool)

(assert (=> setNonEmpty!57202 (= setRes!57202 (and tp!2179726 (inv!92586 setElem!57202) e!4477888))))

(declare-fun setRest!57202 () (Set Context!16988))

(assert (=> setNonEmpty!57202 (= setRest!57198 (set.union (set.insert setElem!57202 (as set.empty (Set Context!16988))) setRest!57202))))

(declare-fun b!7509532 () Bool)

(declare-fun tp!2179725 () Bool)

(assert (=> b!7509532 (= e!4477888 tp!2179725)))

(assert (= (and setNonEmpty!57198 condSetEmpty!57202) setIsEmpty!57202))

(assert (= (and setNonEmpty!57198 (not condSetEmpty!57202)) setNonEmpty!57202))

(assert (= setNonEmpty!57202 b!7509532))

(declare-fun m!8093610 () Bool)

(assert (=> setNonEmpty!57202 m!8093610))

(declare-fun e!4477891 () Bool)

(assert (=> b!7509397 (= tp!2179703 e!4477891)))

(declare-fun b!7509546 () Bool)

(declare-fun tp!2179739 () Bool)

(declare-fun tp!2179741 () Bool)

(assert (=> b!7509546 (= e!4477891 (and tp!2179739 tp!2179741))))

(declare-fun b!7509545 () Bool)

(declare-fun tp!2179740 () Bool)

(assert (=> b!7509545 (= e!4477891 tp!2179740)))

(declare-fun b!7509544 () Bool)

(declare-fun tp!2179738 () Bool)

(declare-fun tp!2179737 () Bool)

(assert (=> b!7509544 (= e!4477891 (and tp!2179738 tp!2179737))))

(declare-fun b!7509543 () Bool)

(declare-fun tp_is_empty!49783 () Bool)

(assert (=> b!7509543 (= e!4477891 tp_is_empty!49783)))

(assert (= (and b!7509397 (is-ElementMatch!19742 (h!78917 (exprs!8994 setElem!57192)))) b!7509543))

(assert (= (and b!7509397 (is-Concat!28587 (h!78917 (exprs!8994 setElem!57192)))) b!7509544))

(assert (= (and b!7509397 (is-Star!19742 (h!78917 (exprs!8994 setElem!57192)))) b!7509545))

(assert (= (and b!7509397 (is-Union!19742 (h!78917 (exprs!8994 setElem!57192)))) b!7509546))

(declare-fun b!7509547 () Bool)

(declare-fun e!4477892 () Bool)

(declare-fun tp!2179742 () Bool)

(declare-fun tp!2179743 () Bool)

(assert (=> b!7509547 (= e!4477892 (and tp!2179742 tp!2179743))))

(assert (=> b!7509397 (= tp!2179704 e!4477892)))

(assert (= (and b!7509397 (is-Cons!72469 (t!387162 (exprs!8994 setElem!57192)))) b!7509547))

(declare-fun b_lambda!287943 () Bool)

(assert (= b_lambda!287937 (or d!2306038 b_lambda!287943)))

(declare-fun bs!1939029 () Bool)

(declare-fun d!2306088 () Bool)

(assert (= bs!1939029 (and d!2306088 d!2306038)))

(declare-fun validRegex!10186 (Regex!19742) Bool)

(assert (=> bs!1939029 (= (dynLambda!29805 lambda!466076 (h!78917 (exprs!8994 setElem!57192))) (validRegex!10186 (h!78917 (exprs!8994 setElem!57192))))))

(declare-fun m!8093612 () Bool)

(assert (=> bs!1939029 m!8093612))

(assert (=> b!7509491 d!2306088))

(declare-fun b_lambda!287945 () Bool)

(assert (= b_lambda!287941 (or start!727432 b_lambda!287945)))

(declare-fun bs!1939030 () Bool)

(declare-fun d!2306090 () Bool)

(assert (= bs!1939030 (and d!2306090 start!727432)))

(assert (=> bs!1939030 (= (dynLambda!29802 lambda!466066 (h!78921 (toList!11857 z!563))) (not (lostCause!1623 (h!78921 (toList!11857 z!563)))))))

(declare-fun m!8093614 () Bool)

(assert (=> bs!1939030 m!8093614))

(assert (=> b!7509527 d!2306090))

(declare-fun b_lambda!287947 () Bool)

(assert (= b_lambda!287939 (or start!727432 b_lambda!287947)))

(declare-fun bs!1939031 () Bool)

(declare-fun d!2306092 () Bool)

(assert (= bs!1939031 (and d!2306092 start!727432)))

(assert (=> bs!1939031 (= (dynLambda!29802 lambda!466066 lt!2637240) (not (lostCause!1623 lt!2637240)))))

(declare-fun m!8093616 () Bool)

(assert (=> bs!1939031 m!8093616))

(assert (=> d!2306080 d!2306092))

(push 1)

(assert (not b!7509531))

(assert (not d!2306074))

(assert (not d!2306064))

(assert (not d!2306076))

(assert (not b!7509547))

(assert (not d!2306062))

(assert (not b!7509503))

(assert (not b!7509505))

(assert (not b!7509492))

(assert (not b!7509502))

(assert (not b!7509506))

(assert (not bm!688912))

(assert (not b!7509482))

(assert (not b_lambda!287931))

(assert (not b!7509545))

(assert (not d!2306066))

(assert (not b!7509523))

(assert (not b!7509428))

(assert (not b!7509510))

(assert (not d!2306080))

(assert (not b!7509528))

(assert (not b!7509546))

(assert (not b!7509544))

(assert (not d!2306078))

(assert (not setNonEmpty!57202))

(assert (not b!7509532))

(assert (not b!7509524))

(assert (not b_lambda!287945))

(assert (not d!2306086))

(assert (not bs!1939030))

(assert (not b_lambda!287943))

(assert (not d!2306084))

(assert (not b_lambda!287947))

(assert tp_is_empty!49783)

(assert (not bs!1939029))

(assert (not bs!1939031))

(assert (not bm!688913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

