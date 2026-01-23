; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721730 () Bool)

(assert start!721730)

(declare-fun b!7409051 () Bool)

(assert (=> b!7409051 true))

(declare-fun b!7409053 () Bool)

(assert (=> b!7409053 true))

(declare-fun lambda!459775 () Int)

(declare-fun lambda!459774 () Int)

(assert (=> b!7409053 (not (= lambda!459775 lambda!459774))))

(assert (=> b!7409053 true))

(assert (=> b!7409053 true))

(declare-fun b!7409050 () Bool)

(declare-fun e!4431271 () Bool)

(declare-fun tp!2119817 () Bool)

(assert (=> b!7409050 (= e!4431271 tp!2119817)))

(declare-fun res!2982768 () Bool)

(declare-fun e!4431266 () Bool)

(assert (=> start!721730 (=> (not res!2982768) (not e!4431266))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!39092 0))(
  ( (C!39093 (val!29920 Int)) )
))
(declare-datatypes ((Regex!19409 0))(
  ( (ElementMatch!19409 (c!1375209 C!39092)) (Concat!28254 (regOne!39330 Regex!19409) (regTwo!39330 Regex!19409)) (EmptyExpr!19409) (Star!19409 (reg!19738 Regex!19409)) (EmptyLang!19409) (Union!19409 (regOne!39331 Regex!19409) (regTwo!39331 Regex!19409)) )
))
(declare-datatypes ((List!72012 0))(
  ( (Nil!71888) (Cons!71888 (h!78336 Regex!19409) (t!386571 List!72012)) )
))
(declare-datatypes ((Context!16698 0))(
  ( (Context!16699 (exprs!8849 List!72012)) )
))
(declare-fun z!3451 () (InoxSet Context!16698))

(declare-fun c!10532 () Context!16698)

(assert (=> start!721730 (= res!2982768 (= z!3451 (store ((as const (Array Context!16698 Bool)) false) c!10532 true)))))

(assert (=> start!721730 e!4431266))

(declare-fun condSetEmpty!56257 () Bool)

(assert (=> start!721730 (= condSetEmpty!56257 (= z!3451 ((as const (Array Context!16698 Bool)) false)))))

(declare-fun setRes!56257 () Bool)

(assert (=> start!721730 setRes!56257))

(declare-fun e!4431265 () Bool)

(declare-fun inv!91883 (Context!16698) Bool)

(assert (=> start!721730 (and (inv!91883 c!10532) e!4431265)))

(declare-fun tp_is_empty!49081 () Bool)

(assert (=> start!721730 tp_is_empty!49081))

(declare-fun e!4431269 () Bool)

(assert (=> start!721730 e!4431269))

(declare-fun e!4431268 () Bool)

(declare-fun e!4431272 () Bool)

(assert (=> b!7409051 (= e!4431268 (not e!4431272))))

(declare-fun res!2982772 () Bool)

(assert (=> b!7409051 (=> res!2982772 e!4431272)))

(declare-fun lt!2618653 () Context!16698)

(declare-fun lt!2618647 () (InoxSet Context!16698))

(assert (=> b!7409051 (= res!2982772 (not (select lt!2618647 lt!2618653)))))

(declare-fun lambda!459773 () Int)

(declare-fun lt!2618655 () Context!16698)

(declare-fun flatMapPost!216 ((InoxSet Context!16698) Int Context!16698) Context!16698)

(assert (=> b!7409051 (= (flatMapPost!216 z!3451 lambda!459773 lt!2618653) lt!2618655)))

(declare-fun empty!3583 () Context!16698)

(assert (=> b!7409051 (= lt!2618655 empty!3583)))

(assert (=> b!7409051 true))

(declare-fun e!4431273 () Bool)

(assert (=> b!7409051 (and (inv!91883 empty!3583) e!4431273)))

(declare-fun b!7409052 () Bool)

(declare-fun tp!2119815 () Bool)

(assert (=> b!7409052 (= e!4431273 tp!2119815)))

(declare-datatypes ((Unit!165704 0))(
  ( (Unit!165705) )
))
(declare-fun e!4431267 () Unit!165704)

(declare-fun Unit!165706 () Unit!165704)

(assert (=> b!7409053 (= e!4431267 Unit!165706)))

(declare-fun lt!2618650 () Context!16698)

(declare-fun getWitness!2450 ((InoxSet Context!16698) Int) Context!16698)

(assert (=> b!7409053 (= lt!2618650 (getWitness!2450 lt!2618647 lambda!459774))))

(assert (=> b!7409053 (= (flatMapPost!216 z!3451 lambda!459773 lt!2618650) lt!2618655)))

(declare-fun lt!2618649 () Context!16698)

(assert (=> b!7409053 (= lt!2618649 (getWitness!2450 z!3451 lambda!459775))))

(assert (=> b!7409053 false))

(declare-fun setIsEmpty!56257 () Bool)

(assert (=> setIsEmpty!56257 setRes!56257))

(declare-fun b!7409054 () Bool)

(declare-fun res!2982769 () Bool)

(assert (=> b!7409054 (=> (not res!2982769) (not e!4431266))))

(declare-fun isEmpty!41052 (List!72012) Bool)

(declare-fun tail!14816 (List!72012) List!72012)

(assert (=> b!7409054 (= res!2982769 (isEmpty!41052 (tail!14816 (exprs!8849 c!10532))))))

(declare-fun b!7409055 () Bool)

(declare-fun res!2982774 () Bool)

(assert (=> b!7409055 (=> (not res!2982774) (not e!4431266))))

(declare-datatypes ((List!72013 0))(
  ( (Nil!71889) (Cons!71889 (h!78337 C!39092) (t!386572 List!72013)) )
))
(declare-fun s!7927 () List!72013)

(declare-fun a!2228 () C!39092)

(get-info :version)

(assert (=> b!7409055 (= res!2982774 (and ((_ is Cons!71889) s!7927) (= (h!78337 s!7927) a!2228)))))

(declare-fun b!7409056 () Bool)

(declare-fun res!2982773 () Bool)

(assert (=> b!7409056 (=> (not res!2982773) (not e!4431266))))

(declare-fun head!15206 (List!72012) Regex!19409)

(assert (=> b!7409056 (= res!2982773 (= (head!15206 (exprs!8849 c!10532)) (ElementMatch!19409 a!2228)))))

(declare-fun b!7409057 () Bool)

(declare-fun e!4431270 () Bool)

(assert (=> b!7409057 (= e!4431272 e!4431270)))

(declare-fun res!2982767 () Bool)

(assert (=> b!7409057 (=> res!2982767 e!4431270)))

(declare-fun isEmpty!41053 (List!72013) Bool)

(assert (=> b!7409057 (= res!2982767 (not (isEmpty!41053 (t!386572 s!7927))))))

(declare-fun lt!2618646 () Bool)

(assert (=> b!7409057 lt!2618646))

(declare-fun lt!2618651 () Unit!165704)

(assert (=> b!7409057 (= lt!2618651 e!4431267)))

(declare-fun c!1375208 () Bool)

(assert (=> b!7409057 (= c!1375208 (not lt!2618646))))

(declare-fun lt!2618652 () (InoxSet Context!16698))

(assert (=> b!7409057 (= lt!2618646 (= lt!2618647 lt!2618652))))

(declare-fun b!7409058 () Bool)

(declare-fun res!2982771 () Bool)

(assert (=> b!7409058 (=> (not res!2982771) (not e!4431266))))

(assert (=> b!7409058 (= res!2982771 (not (isEmpty!41052 (exprs!8849 c!10532))))))

(declare-fun b!7409059 () Bool)

(declare-fun Unit!165707 () Unit!165704)

(assert (=> b!7409059 (= e!4431267 Unit!165707)))

(declare-fun b!7409060 () Bool)

(declare-fun tp!2119814 () Bool)

(assert (=> b!7409060 (= e!4431265 tp!2119814)))

(declare-fun b!7409061 () Bool)

(declare-fun matchZipper!3809 ((InoxSet Context!16698) List!72013) Bool)

(assert (=> b!7409061 (= e!4431270 (matchZipper!3809 z!3451 s!7927))))

(assert (=> b!7409061 (matchZipper!3809 lt!2618652 (t!386572 s!7927))))

(declare-fun lt!2618648 () Unit!165704)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!64 ((InoxSet Context!16698) List!72013) Unit!165704)

(assert (=> b!7409061 (= lt!2618648 (lemmaZipperOfEmptyContextMatchesEmptyString!64 lt!2618652 (t!386572 s!7927)))))

(declare-fun setNonEmpty!56257 () Bool)

(declare-fun tp!2119818 () Bool)

(declare-fun setElem!56257 () Context!16698)

(assert (=> setNonEmpty!56257 (= setRes!56257 (and tp!2119818 (inv!91883 setElem!56257) e!4431271))))

(declare-fun setRest!56257 () (InoxSet Context!16698))

(assert (=> setNonEmpty!56257 (= z!3451 ((_ map or) (store ((as const (Array Context!16698 Bool)) false) setElem!56257 true) setRest!56257))))

(declare-fun b!7409062 () Bool)

(declare-fun tp!2119816 () Bool)

(assert (=> b!7409062 (= e!4431269 (and tp_is_empty!49081 tp!2119816))))

(declare-fun b!7409063 () Bool)

(assert (=> b!7409063 (= e!4431266 e!4431268)))

(declare-fun res!2982770 () Bool)

(assert (=> b!7409063 (=> (not res!2982770) (not e!4431268))))

(declare-fun lt!2618654 () C!39092)

(declare-fun derivationStepZipperUp!2813 (Context!16698 C!39092) (InoxSet Context!16698))

(assert (=> b!7409063 (= res!2982770 (= (derivationStepZipperUp!2813 c!10532 lt!2618654) lt!2618652))))

(assert (=> b!7409063 (= lt!2618652 (store ((as const (Array Context!16698 Bool)) false) lt!2618653 true))))

(assert (=> b!7409063 (= lt!2618653 (Context!16699 Nil!71888))))

(declare-fun derivationStepZipper!3683 ((InoxSet Context!16698) C!39092) (InoxSet Context!16698))

(assert (=> b!7409063 (= lt!2618647 (derivationStepZipper!3683 z!3451 lt!2618654))))

(declare-fun head!15207 (List!72013) C!39092)

(assert (=> b!7409063 (= lt!2618654 (head!15207 s!7927))))

(assert (= (and start!721730 res!2982768) b!7409058))

(assert (= (and b!7409058 res!2982771) b!7409056))

(assert (= (and b!7409056 res!2982773) b!7409054))

(assert (= (and b!7409054 res!2982769) b!7409055))

(assert (= (and b!7409055 res!2982774) b!7409063))

(assert (= (and b!7409063 res!2982770) b!7409051))

(assert (= b!7409051 b!7409052))

(assert (= (and b!7409051 (not res!2982772)) b!7409057))

(assert (= (and b!7409057 c!1375208) b!7409053))

(assert (= (and b!7409057 (not c!1375208)) b!7409059))

(assert (= (and b!7409057 (not res!2982767)) b!7409061))

(assert (= (and start!721730 condSetEmpty!56257) setIsEmpty!56257))

(assert (= (and start!721730 (not condSetEmpty!56257)) setNonEmpty!56257))

(assert (= setNonEmpty!56257 b!7409050))

(assert (= start!721730 b!7409060))

(assert (= (and start!721730 ((_ is Cons!71889) s!7927)) b!7409062))

(declare-fun m!8044302 () Bool)

(assert (=> setNonEmpty!56257 m!8044302))

(declare-fun m!8044304 () Bool)

(assert (=> b!7409051 m!8044304))

(declare-fun m!8044306 () Bool)

(assert (=> b!7409051 m!8044306))

(declare-fun m!8044308 () Bool)

(assert (=> b!7409051 m!8044308))

(declare-fun m!8044310 () Bool)

(assert (=> b!7409061 m!8044310))

(declare-fun m!8044312 () Bool)

(assert (=> b!7409061 m!8044312))

(declare-fun m!8044314 () Bool)

(assert (=> b!7409061 m!8044314))

(declare-fun m!8044316 () Bool)

(assert (=> b!7409056 m!8044316))

(declare-fun m!8044318 () Bool)

(assert (=> b!7409063 m!8044318))

(declare-fun m!8044320 () Bool)

(assert (=> b!7409063 m!8044320))

(declare-fun m!8044322 () Bool)

(assert (=> b!7409063 m!8044322))

(declare-fun m!8044324 () Bool)

(assert (=> b!7409063 m!8044324))

(declare-fun m!8044326 () Bool)

(assert (=> b!7409057 m!8044326))

(declare-fun m!8044328 () Bool)

(assert (=> b!7409053 m!8044328))

(declare-fun m!8044330 () Bool)

(assert (=> b!7409053 m!8044330))

(declare-fun m!8044332 () Bool)

(assert (=> b!7409053 m!8044332))

(declare-fun m!8044334 () Bool)

(assert (=> start!721730 m!8044334))

(declare-fun m!8044336 () Bool)

(assert (=> start!721730 m!8044336))

(declare-fun m!8044338 () Bool)

(assert (=> b!7409058 m!8044338))

(declare-fun m!8044340 () Bool)

(assert (=> b!7409054 m!8044340))

(assert (=> b!7409054 m!8044340))

(declare-fun m!8044342 () Bool)

(assert (=> b!7409054 m!8044342))

(check-sat tp_is_empty!49081 (not b!7409053) (not setNonEmpty!56257) (not b!7409058) (not b!7409056) (not start!721730) (not b!7409062) (not b!7409050) (not b!7409061) (not b!7409057) (not b!7409060) (not b!7409063) (not b!7409052) (not b!7409051) (not b!7409054))
(check-sat)
(get-model)

(declare-fun d!2291278 () Bool)

(assert (=> d!2291278 (= (isEmpty!41052 (exprs!8849 c!10532)) ((_ is Nil!71888) (exprs!8849 c!10532)))))

(assert (=> b!7409058 d!2291278))

(declare-fun d!2291280 () Bool)

(declare-fun lambda!459778 () Int)

(declare-fun forall!18193 (List!72012 Int) Bool)

(assert (=> d!2291280 (= (inv!91883 c!10532) (forall!18193 (exprs!8849 c!10532) lambda!459778))))

(declare-fun bs!1924280 () Bool)

(assert (= bs!1924280 d!2291280))

(declare-fun m!8044372 () Bool)

(assert (=> bs!1924280 m!8044372))

(assert (=> start!721730 d!2291280))

(declare-fun d!2291292 () Bool)

(declare-fun e!4431292 () Bool)

(assert (=> d!2291292 e!4431292))

(declare-fun res!2982783 () Bool)

(assert (=> d!2291292 (=> (not res!2982783) (not e!4431292))))

(declare-fun lt!2618666 () Context!16698)

(declare-fun dynLambda!29659 (Int Context!16698) Bool)

(assert (=> d!2291292 (= res!2982783 (dynLambda!29659 lambda!459774 lt!2618666))))

(declare-datatypes ((List!72015 0))(
  ( (Nil!71891) (Cons!71891 (h!78339 Context!16698) (t!386574 List!72015)) )
))
(declare-fun getWitness!2452 (List!72015 Int) Context!16698)

(declare-fun toList!11760 ((InoxSet Context!16698)) List!72015)

(assert (=> d!2291292 (= lt!2618666 (getWitness!2452 (toList!11760 lt!2618647) lambda!459774))))

(declare-fun exists!4775 ((InoxSet Context!16698) Int) Bool)

(assert (=> d!2291292 (exists!4775 lt!2618647 lambda!459774)))

(assert (=> d!2291292 (= (getWitness!2450 lt!2618647 lambda!459774) lt!2618666)))

(declare-fun b!7409099 () Bool)

(assert (=> b!7409099 (= e!4431292 (select lt!2618647 lt!2618666))))

(assert (= (and d!2291292 res!2982783) b!7409099))

(declare-fun b_lambda!286425 () Bool)

(assert (=> (not b_lambda!286425) (not d!2291292)))

(declare-fun m!8044386 () Bool)

(assert (=> d!2291292 m!8044386))

(declare-fun m!8044388 () Bool)

(assert (=> d!2291292 m!8044388))

(assert (=> d!2291292 m!8044388))

(declare-fun m!8044390 () Bool)

(assert (=> d!2291292 m!8044390))

(declare-fun m!8044392 () Bool)

(assert (=> d!2291292 m!8044392))

(declare-fun m!8044394 () Bool)

(assert (=> b!7409099 m!8044394))

(assert (=> b!7409053 d!2291292))

(declare-fun bs!1924296 () Bool)

(declare-fun d!2291304 () Bool)

(assert (= bs!1924296 (and d!2291304 b!7409053)))

(declare-fun lambda!459793 () Int)

(assert (=> bs!1924296 (not (= lambda!459793 lambda!459774))))

(assert (=> bs!1924296 (not (= lambda!459793 lambda!459775))))

(assert (=> d!2291304 true))

(assert (=> d!2291304 true))

(declare-fun order!29527 () Int)

(declare-fun order!29525 () Int)

(declare-fun dynLambda!29660 (Int Int) Int)

(declare-fun dynLambda!29661 (Int Int) Int)

(assert (=> d!2291304 (< (dynLambda!29660 order!29525 lambda!459773) (dynLambda!29661 order!29527 lambda!459793))))

(declare-fun flatMap!3209 ((InoxSet Context!16698) Int) (InoxSet Context!16698))

(assert (=> d!2291304 (= (select (flatMap!3209 z!3451 lambda!459773) lt!2618650) (exists!4775 z!3451 lambda!459793))))

(declare-fun lt!2618672 () Context!16698)

(declare-fun choose!57454 ((InoxSet Context!16698) Int Context!16698) Context!16698)

(assert (=> d!2291304 (= lt!2618672 (choose!57454 z!3451 lambda!459773 lt!2618650))))

(assert (=> d!2291304 (= (flatMapPost!216 z!3451 lambda!459773 lt!2618650) lt!2618672)))

(declare-fun bs!1924297 () Bool)

(assert (= bs!1924297 d!2291304))

(declare-fun m!8044432 () Bool)

(assert (=> bs!1924297 m!8044432))

(declare-fun m!8044434 () Bool)

(assert (=> bs!1924297 m!8044434))

(declare-fun m!8044436 () Bool)

(assert (=> bs!1924297 m!8044436))

(declare-fun m!8044438 () Bool)

(assert (=> bs!1924297 m!8044438))

(assert (=> b!7409053 d!2291304))

(declare-fun d!2291320 () Bool)

(declare-fun e!4431305 () Bool)

(assert (=> d!2291320 e!4431305))

(declare-fun res!2982785 () Bool)

(assert (=> d!2291320 (=> (not res!2982785) (not e!4431305))))

(declare-fun lt!2618673 () Context!16698)

(assert (=> d!2291320 (= res!2982785 (dynLambda!29659 lambda!459775 lt!2618673))))

(assert (=> d!2291320 (= lt!2618673 (getWitness!2452 (toList!11760 z!3451) lambda!459775))))

(assert (=> d!2291320 (exists!4775 z!3451 lambda!459775)))

(assert (=> d!2291320 (= (getWitness!2450 z!3451 lambda!459775) lt!2618673)))

(declare-fun b!7409123 () Bool)

(assert (=> b!7409123 (= e!4431305 (select z!3451 lt!2618673))))

(assert (= (and d!2291320 res!2982785) b!7409123))

(declare-fun b_lambda!286433 () Bool)

(assert (=> (not b_lambda!286433) (not d!2291320)))

(declare-fun m!8044440 () Bool)

(assert (=> d!2291320 m!8044440))

(declare-fun m!8044442 () Bool)

(assert (=> d!2291320 m!8044442))

(assert (=> d!2291320 m!8044442))

(declare-fun m!8044444 () Bool)

(assert (=> d!2291320 m!8044444))

(declare-fun m!8044446 () Bool)

(assert (=> d!2291320 m!8044446))

(declare-fun m!8044448 () Bool)

(assert (=> b!7409123 m!8044448))

(assert (=> b!7409053 d!2291320))

(declare-fun bs!1924298 () Bool)

(declare-fun d!2291322 () Bool)

(assert (= bs!1924298 (and d!2291322 d!2291280)))

(declare-fun lambda!459794 () Int)

(assert (=> bs!1924298 (= lambda!459794 lambda!459778)))

(assert (=> d!2291322 (= (inv!91883 setElem!56257) (forall!18193 (exprs!8849 setElem!56257) lambda!459794))))

(declare-fun bs!1924299 () Bool)

(assert (= bs!1924299 d!2291322))

(declare-fun m!8044450 () Bool)

(assert (=> bs!1924299 m!8044450))

(assert (=> setNonEmpty!56257 d!2291322))

(declare-fun d!2291324 () Bool)

(assert (=> d!2291324 (= (isEmpty!41053 (t!386572 s!7927)) ((_ is Nil!71889) (t!386572 s!7927)))))

(assert (=> b!7409057 d!2291324))

(declare-fun d!2291326 () Bool)

(assert (=> d!2291326 (= (head!15206 (exprs!8849 c!10532)) (h!78336 (exprs!8849 c!10532)))))

(assert (=> b!7409056 d!2291326))

(declare-fun bs!1924300 () Bool)

(declare-fun d!2291328 () Bool)

(assert (= bs!1924300 (and d!2291328 b!7409053)))

(declare-fun lambda!459795 () Int)

(assert (=> bs!1924300 (not (= lambda!459795 lambda!459774))))

(assert (=> bs!1924300 (not (= lambda!459795 lambda!459775))))

(declare-fun bs!1924301 () Bool)

(assert (= bs!1924301 (and d!2291328 d!2291304)))

(assert (=> bs!1924301 (= (= lt!2618653 lt!2618650) (= lambda!459795 lambda!459793))))

(assert (=> d!2291328 true))

(assert (=> d!2291328 true))

(assert (=> d!2291328 (< (dynLambda!29660 order!29525 lambda!459773) (dynLambda!29661 order!29527 lambda!459795))))

(assert (=> d!2291328 (= (select (flatMap!3209 z!3451 lambda!459773) lt!2618653) (exists!4775 z!3451 lambda!459795))))

(declare-fun lt!2618674 () Context!16698)

(assert (=> d!2291328 (= lt!2618674 (choose!57454 z!3451 lambda!459773 lt!2618653))))

(assert (=> d!2291328 (= (flatMapPost!216 z!3451 lambda!459773 lt!2618653) lt!2618674)))

(declare-fun bs!1924302 () Bool)

(assert (= bs!1924302 d!2291328))

(assert (=> bs!1924302 m!8044432))

(declare-fun m!8044452 () Bool)

(assert (=> bs!1924302 m!8044452))

(declare-fun m!8044454 () Bool)

(assert (=> bs!1924302 m!8044454))

(declare-fun m!8044456 () Bool)

(assert (=> bs!1924302 m!8044456))

(assert (=> b!7409051 d!2291328))

(declare-fun bs!1924303 () Bool)

(declare-fun d!2291330 () Bool)

(assert (= bs!1924303 (and d!2291330 d!2291280)))

(declare-fun lambda!459796 () Int)

(assert (=> bs!1924303 (= lambda!459796 lambda!459778)))

(declare-fun bs!1924304 () Bool)

(assert (= bs!1924304 (and d!2291330 d!2291322)))

(assert (=> bs!1924304 (= lambda!459796 lambda!459794)))

(assert (=> d!2291330 (= (inv!91883 empty!3583) (forall!18193 (exprs!8849 empty!3583) lambda!459796))))

(declare-fun bs!1924305 () Bool)

(assert (= bs!1924305 d!2291330))

(declare-fun m!8044458 () Bool)

(assert (=> bs!1924305 m!8044458))

(assert (=> b!7409051 d!2291330))

(declare-fun d!2291332 () Bool)

(declare-fun c!1375224 () Bool)

(assert (=> d!2291332 (= c!1375224 (isEmpty!41053 s!7927))))

(declare-fun e!4431308 () Bool)

(assert (=> d!2291332 (= (matchZipper!3809 z!3451 s!7927) e!4431308)))

(declare-fun b!7409128 () Bool)

(declare-fun nullableZipper!3138 ((InoxSet Context!16698)) Bool)

(assert (=> b!7409128 (= e!4431308 (nullableZipper!3138 z!3451))))

(declare-fun b!7409129 () Bool)

(declare-fun tail!14818 (List!72013) List!72013)

(assert (=> b!7409129 (= e!4431308 (matchZipper!3809 (derivationStepZipper!3683 z!3451 (head!15207 s!7927)) (tail!14818 s!7927)))))

(assert (= (and d!2291332 c!1375224) b!7409128))

(assert (= (and d!2291332 (not c!1375224)) b!7409129))

(declare-fun m!8044460 () Bool)

(assert (=> d!2291332 m!8044460))

(declare-fun m!8044462 () Bool)

(assert (=> b!7409128 m!8044462))

(assert (=> b!7409129 m!8044324))

(assert (=> b!7409129 m!8044324))

(declare-fun m!8044464 () Bool)

(assert (=> b!7409129 m!8044464))

(declare-fun m!8044466 () Bool)

(assert (=> b!7409129 m!8044466))

(assert (=> b!7409129 m!8044464))

(assert (=> b!7409129 m!8044466))

(declare-fun m!8044468 () Bool)

(assert (=> b!7409129 m!8044468))

(assert (=> b!7409061 d!2291332))

(declare-fun d!2291334 () Bool)

(declare-fun c!1375225 () Bool)

(assert (=> d!2291334 (= c!1375225 (isEmpty!41053 (t!386572 s!7927)))))

(declare-fun e!4431309 () Bool)

(assert (=> d!2291334 (= (matchZipper!3809 lt!2618652 (t!386572 s!7927)) e!4431309)))

(declare-fun b!7409130 () Bool)

(assert (=> b!7409130 (= e!4431309 (nullableZipper!3138 lt!2618652))))

(declare-fun b!7409131 () Bool)

(assert (=> b!7409131 (= e!4431309 (matchZipper!3809 (derivationStepZipper!3683 lt!2618652 (head!15207 (t!386572 s!7927))) (tail!14818 (t!386572 s!7927))))))

(assert (= (and d!2291334 c!1375225) b!7409130))

(assert (= (and d!2291334 (not c!1375225)) b!7409131))

(assert (=> d!2291334 m!8044326))

(declare-fun m!8044470 () Bool)

(assert (=> b!7409130 m!8044470))

(declare-fun m!8044472 () Bool)

(assert (=> b!7409131 m!8044472))

(assert (=> b!7409131 m!8044472))

(declare-fun m!8044474 () Bool)

(assert (=> b!7409131 m!8044474))

(declare-fun m!8044476 () Bool)

(assert (=> b!7409131 m!8044476))

(assert (=> b!7409131 m!8044474))

(assert (=> b!7409131 m!8044476))

(declare-fun m!8044478 () Bool)

(assert (=> b!7409131 m!8044478))

(assert (=> b!7409061 d!2291334))

(declare-fun d!2291336 () Bool)

(assert (=> d!2291336 (= (matchZipper!3809 lt!2618652 (t!386572 s!7927)) (isEmpty!41053 (t!386572 s!7927)))))

(declare-fun lt!2618677 () Unit!165704)

(declare-fun choose!57455 ((InoxSet Context!16698) List!72013) Unit!165704)

(assert (=> d!2291336 (= lt!2618677 (choose!57455 lt!2618652 (t!386572 s!7927)))))

(assert (=> d!2291336 (= lt!2618652 (store ((as const (Array Context!16698 Bool)) false) (Context!16699 Nil!71888) true))))

(assert (=> d!2291336 (= (lemmaZipperOfEmptyContextMatchesEmptyString!64 lt!2618652 (t!386572 s!7927)) lt!2618677)))

(declare-fun bs!1924306 () Bool)

(assert (= bs!1924306 d!2291336))

(assert (=> bs!1924306 m!8044312))

(assert (=> bs!1924306 m!8044326))

(declare-fun m!8044480 () Bool)

(assert (=> bs!1924306 m!8044480))

(assert (=> b!7409061 d!2291336))

(declare-fun d!2291338 () Bool)

(assert (=> d!2291338 (= (isEmpty!41052 (tail!14816 (exprs!8849 c!10532))) ((_ is Nil!71888) (tail!14816 (exprs!8849 c!10532))))))

(assert (=> b!7409054 d!2291338))

(declare-fun d!2291340 () Bool)

(assert (=> d!2291340 (= (tail!14816 (exprs!8849 c!10532)) (t!386571 (exprs!8849 c!10532)))))

(assert (=> b!7409054 d!2291340))

(declare-fun bm!682145 () Bool)

(declare-fun call!682150 () (InoxSet Context!16698))

(declare-fun derivationStepZipperDown!3205 (Regex!19409 Context!16698 C!39092) (InoxSet Context!16698))

(assert (=> bm!682145 (= call!682150 (derivationStepZipperDown!3205 (h!78336 (exprs!8849 c!10532)) (Context!16699 (t!386571 (exprs!8849 c!10532))) lt!2618654))))

(declare-fun b!7409142 () Bool)

(declare-fun e!4431318 () (InoxSet Context!16698))

(declare-fun e!4431317 () (InoxSet Context!16698))

(assert (=> b!7409142 (= e!4431318 e!4431317)))

(declare-fun c!1375230 () Bool)

(assert (=> b!7409142 (= c!1375230 ((_ is Cons!71888) (exprs!8849 c!10532)))))

(declare-fun b!7409143 () Bool)

(assert (=> b!7409143 (= e!4431317 ((as const (Array Context!16698 Bool)) false))))

(declare-fun b!7409144 () Bool)

(assert (=> b!7409144 (= e!4431317 call!682150)))

(declare-fun b!7409145 () Bool)

(assert (=> b!7409145 (= e!4431318 ((_ map or) call!682150 (derivationStepZipperUp!2813 (Context!16699 (t!386571 (exprs!8849 c!10532))) lt!2618654)))))

(declare-fun d!2291342 () Bool)

(declare-fun c!1375231 () Bool)

(declare-fun e!4431316 () Bool)

(assert (=> d!2291342 (= c!1375231 e!4431316)))

(declare-fun res!2982788 () Bool)

(assert (=> d!2291342 (=> (not res!2982788) (not e!4431316))))

(assert (=> d!2291342 (= res!2982788 ((_ is Cons!71888) (exprs!8849 c!10532)))))

(assert (=> d!2291342 (= (derivationStepZipperUp!2813 c!10532 lt!2618654) e!4431318)))

(declare-fun b!7409146 () Bool)

(declare-fun nullable!8453 (Regex!19409) Bool)

(assert (=> b!7409146 (= e!4431316 (nullable!8453 (h!78336 (exprs!8849 c!10532))))))

(assert (= (and d!2291342 res!2982788) b!7409146))

(assert (= (and d!2291342 c!1375231) b!7409145))

(assert (= (and d!2291342 (not c!1375231)) b!7409142))

(assert (= (and b!7409142 c!1375230) b!7409144))

(assert (= (and b!7409142 (not c!1375230)) b!7409143))

(assert (= (or b!7409145 b!7409144) bm!682145))

(declare-fun m!8044482 () Bool)

(assert (=> bm!682145 m!8044482))

(declare-fun m!8044484 () Bool)

(assert (=> b!7409145 m!8044484))

(declare-fun m!8044486 () Bool)

(assert (=> b!7409146 m!8044486))

(assert (=> b!7409063 d!2291342))

(declare-fun bs!1924307 () Bool)

(declare-fun d!2291344 () Bool)

(assert (= bs!1924307 (and d!2291344 b!7409051)))

(declare-fun lambda!459799 () Int)

(assert (=> bs!1924307 (= (= lt!2618654 a!2228) (= lambda!459799 lambda!459773))))

(assert (=> d!2291344 true))

(assert (=> d!2291344 (= (derivationStepZipper!3683 z!3451 lt!2618654) (flatMap!3209 z!3451 lambda!459799))))

(declare-fun bs!1924308 () Bool)

(assert (= bs!1924308 d!2291344))

(declare-fun m!8044488 () Bool)

(assert (=> bs!1924308 m!8044488))

(assert (=> b!7409063 d!2291344))

(declare-fun d!2291346 () Bool)

(assert (=> d!2291346 (= (head!15207 s!7927) (h!78337 s!7927))))

(assert (=> b!7409063 d!2291346))

(declare-fun b!7409151 () Bool)

(declare-fun e!4431321 () Bool)

(declare-fun tp!2119840 () Bool)

(assert (=> b!7409151 (= e!4431321 (and tp_is_empty!49081 tp!2119840))))

(assert (=> b!7409062 (= tp!2119816 e!4431321)))

(assert (= (and b!7409062 ((_ is Cons!71889) (t!386572 s!7927))) b!7409151))

(declare-fun condSetEmpty!56263 () Bool)

(assert (=> setNonEmpty!56257 (= condSetEmpty!56263 (= setRest!56257 ((as const (Array Context!16698 Bool)) false)))))

(declare-fun setRes!56263 () Bool)

(assert (=> setNonEmpty!56257 (= tp!2119818 setRes!56263)))

(declare-fun setIsEmpty!56263 () Bool)

(assert (=> setIsEmpty!56263 setRes!56263))

(declare-fun setElem!56263 () Context!16698)

(declare-fun setNonEmpty!56263 () Bool)

(declare-fun tp!2119846 () Bool)

(declare-fun e!4431324 () Bool)

(assert (=> setNonEmpty!56263 (= setRes!56263 (and tp!2119846 (inv!91883 setElem!56263) e!4431324))))

(declare-fun setRest!56263 () (InoxSet Context!16698))

(assert (=> setNonEmpty!56263 (= setRest!56257 ((_ map or) (store ((as const (Array Context!16698 Bool)) false) setElem!56263 true) setRest!56263))))

(declare-fun b!7409156 () Bool)

(declare-fun tp!2119845 () Bool)

(assert (=> b!7409156 (= e!4431324 tp!2119845)))

(assert (= (and setNonEmpty!56257 condSetEmpty!56263) setIsEmpty!56263))

(assert (= (and setNonEmpty!56257 (not condSetEmpty!56263)) setNonEmpty!56263))

(assert (= setNonEmpty!56263 b!7409156))

(declare-fun m!8044490 () Bool)

(assert (=> setNonEmpty!56263 m!8044490))

(declare-fun b!7409161 () Bool)

(declare-fun e!4431327 () Bool)

(declare-fun tp!2119851 () Bool)

(declare-fun tp!2119852 () Bool)

(assert (=> b!7409161 (= e!4431327 (and tp!2119851 tp!2119852))))

(assert (=> b!7409052 (= tp!2119815 e!4431327)))

(assert (= (and b!7409052 ((_ is Cons!71888) (exprs!8849 empty!3583))) b!7409161))

(declare-fun b!7409162 () Bool)

(declare-fun e!4431328 () Bool)

(declare-fun tp!2119853 () Bool)

(declare-fun tp!2119854 () Bool)

(assert (=> b!7409162 (= e!4431328 (and tp!2119853 tp!2119854))))

(assert (=> b!7409060 (= tp!2119814 e!4431328)))

(assert (= (and b!7409060 ((_ is Cons!71888) (exprs!8849 c!10532))) b!7409162))

(declare-fun b!7409163 () Bool)

(declare-fun e!4431329 () Bool)

(declare-fun tp!2119855 () Bool)

(declare-fun tp!2119856 () Bool)

(assert (=> b!7409163 (= e!4431329 (and tp!2119855 tp!2119856))))

(assert (=> b!7409050 (= tp!2119817 e!4431329)))

(assert (= (and b!7409050 ((_ is Cons!71888) (exprs!8849 setElem!56257))) b!7409163))

(declare-fun b_lambda!286435 () Bool)

(assert (= b_lambda!286425 (or b!7409053 b_lambda!286435)))

(declare-fun bs!1924309 () Bool)

(declare-fun d!2291348 () Bool)

(assert (= bs!1924309 (and d!2291348 b!7409053)))

(assert (=> bs!1924309 (= (dynLambda!29659 lambda!459774 lt!2618666) (not (= lt!2618666 lt!2618653)))))

(assert (=> d!2291292 d!2291348))

(declare-fun b_lambda!286437 () Bool)

(assert (= b_lambda!286433 (or b!7409053 b_lambda!286437)))

(declare-fun bs!1924310 () Bool)

(declare-fun d!2291350 () Bool)

(assert (= bs!1924310 (and d!2291350 b!7409053)))

(assert (=> bs!1924310 (= (dynLambda!29659 lambda!459775 lt!2618673) (select (derivationStepZipperUp!2813 lt!2618673 lt!2618654) lt!2618650))))

(declare-fun m!8044492 () Bool)

(assert (=> bs!1924310 m!8044492))

(declare-fun m!8044494 () Bool)

(assert (=> bs!1924310 m!8044494))

(assert (=> d!2291320 d!2291350))

(check-sat (not d!2291332) (not b!7409156) (not bs!1924310) (not b!7409162) (not d!2291328) (not b_lambda!286437) (not b!7409146) tp_is_empty!49081 (not d!2291280) (not d!2291330) (not b!7409145) (not d!2291336) (not b!7409163) (not b!7409151) (not d!2291292) (not b_lambda!286435) (not bm!682145) (not b!7409161) (not d!2291344) (not d!2291322) (not b!7409128) (not d!2291304) (not b!7409129) (not setNonEmpty!56263) (not d!2291320) (not b!7409130) (not d!2291334) (not b!7409131))
(check-sat)
(get-model)

(declare-fun d!2291428 () Bool)

(declare-fun c!1375265 () Bool)

(assert (=> d!2291428 (= c!1375265 (isEmpty!41053 (tail!14818 s!7927)))))

(declare-fun e!4431401 () Bool)

(assert (=> d!2291428 (= (matchZipper!3809 (derivationStepZipper!3683 z!3451 (head!15207 s!7927)) (tail!14818 s!7927)) e!4431401)))

(declare-fun b!7409282 () Bool)

(assert (=> b!7409282 (= e!4431401 (nullableZipper!3138 (derivationStepZipper!3683 z!3451 (head!15207 s!7927))))))

(declare-fun b!7409283 () Bool)

(assert (=> b!7409283 (= e!4431401 (matchZipper!3809 (derivationStepZipper!3683 (derivationStepZipper!3683 z!3451 (head!15207 s!7927)) (head!15207 (tail!14818 s!7927))) (tail!14818 (tail!14818 s!7927))))))

(assert (= (and d!2291428 c!1375265) b!7409282))

(assert (= (and d!2291428 (not c!1375265)) b!7409283))

(assert (=> d!2291428 m!8044466))

(declare-fun m!8044642 () Bool)

(assert (=> d!2291428 m!8044642))

(assert (=> b!7409282 m!8044464))

(declare-fun m!8044644 () Bool)

(assert (=> b!7409282 m!8044644))

(assert (=> b!7409283 m!8044466))

(declare-fun m!8044646 () Bool)

(assert (=> b!7409283 m!8044646))

(assert (=> b!7409283 m!8044464))

(assert (=> b!7409283 m!8044646))

(declare-fun m!8044648 () Bool)

(assert (=> b!7409283 m!8044648))

(assert (=> b!7409283 m!8044466))

(declare-fun m!8044650 () Bool)

(assert (=> b!7409283 m!8044650))

(assert (=> b!7409283 m!8044648))

(assert (=> b!7409283 m!8044650))

(declare-fun m!8044652 () Bool)

(assert (=> b!7409283 m!8044652))

(assert (=> b!7409129 d!2291428))

(declare-fun bs!1924357 () Bool)

(declare-fun d!2291430 () Bool)

(assert (= bs!1924357 (and d!2291430 b!7409051)))

(declare-fun lambda!459811 () Int)

(assert (=> bs!1924357 (= (= (head!15207 s!7927) a!2228) (= lambda!459811 lambda!459773))))

(declare-fun bs!1924358 () Bool)

(assert (= bs!1924358 (and d!2291430 d!2291344)))

(assert (=> bs!1924358 (= (= (head!15207 s!7927) lt!2618654) (= lambda!459811 lambda!459799))))

(assert (=> d!2291430 true))

(assert (=> d!2291430 (= (derivationStepZipper!3683 z!3451 (head!15207 s!7927)) (flatMap!3209 z!3451 lambda!459811))))

(declare-fun bs!1924359 () Bool)

(assert (= bs!1924359 d!2291430))

(declare-fun m!8044654 () Bool)

(assert (=> bs!1924359 m!8044654))

(assert (=> b!7409129 d!2291430))

(assert (=> b!7409129 d!2291346))

(declare-fun d!2291432 () Bool)

(assert (=> d!2291432 (= (tail!14818 s!7927) (t!386572 s!7927))))

(assert (=> b!7409129 d!2291432))

(declare-fun bs!1924360 () Bool)

(declare-fun d!2291434 () Bool)

(assert (= bs!1924360 (and d!2291434 b!7409053)))

(declare-fun lambda!459814 () Int)

(assert (=> bs!1924360 (not (= lambda!459814 lambda!459774))))

(assert (=> bs!1924360 (not (= lambda!459814 lambda!459775))))

(declare-fun bs!1924361 () Bool)

(assert (= bs!1924361 (and d!2291434 d!2291304)))

(assert (=> bs!1924361 (not (= lambda!459814 lambda!459793))))

(declare-fun bs!1924362 () Bool)

(assert (= bs!1924362 (and d!2291434 d!2291328)))

(assert (=> bs!1924362 (not (= lambda!459814 lambda!459795))))

(assert (=> d!2291434 (= (nullableZipper!3138 z!3451) (exists!4775 z!3451 lambda!459814))))

(declare-fun bs!1924363 () Bool)

(assert (= bs!1924363 d!2291434))

(declare-fun m!8044656 () Bool)

(assert (=> bs!1924363 m!8044656))

(assert (=> b!7409128 d!2291434))

(declare-fun d!2291436 () Bool)

(declare-fun nullableFct!3405 (Regex!19409) Bool)

(assert (=> d!2291436 (= (nullable!8453 (h!78336 (exprs!8849 c!10532))) (nullableFct!3405 (h!78336 (exprs!8849 c!10532))))))

(declare-fun bs!1924364 () Bool)

(assert (= bs!1924364 d!2291436))

(declare-fun m!8044658 () Bool)

(assert (=> bs!1924364 m!8044658))

(assert (=> b!7409146 d!2291436))

(declare-fun bm!682166 () Bool)

(declare-fun call!682171 () (InoxSet Context!16698))

(assert (=> bm!682166 (= call!682171 (derivationStepZipperDown!3205 (h!78336 (exprs!8849 (Context!16699 (t!386571 (exprs!8849 c!10532))))) (Context!16699 (t!386571 (exprs!8849 (Context!16699 (t!386571 (exprs!8849 c!10532)))))) lt!2618654))))

(declare-fun b!7409284 () Bool)

(declare-fun e!4431404 () (InoxSet Context!16698))

(declare-fun e!4431403 () (InoxSet Context!16698))

(assert (=> b!7409284 (= e!4431404 e!4431403)))

(declare-fun c!1375268 () Bool)

(assert (=> b!7409284 (= c!1375268 ((_ is Cons!71888) (exprs!8849 (Context!16699 (t!386571 (exprs!8849 c!10532))))))))

(declare-fun b!7409285 () Bool)

(assert (=> b!7409285 (= e!4431403 ((as const (Array Context!16698 Bool)) false))))

(declare-fun b!7409286 () Bool)

(assert (=> b!7409286 (= e!4431403 call!682171)))

(declare-fun b!7409287 () Bool)

(assert (=> b!7409287 (= e!4431404 ((_ map or) call!682171 (derivationStepZipperUp!2813 (Context!16699 (t!386571 (exprs!8849 (Context!16699 (t!386571 (exprs!8849 c!10532)))))) lt!2618654)))))

(declare-fun d!2291438 () Bool)

(declare-fun c!1375269 () Bool)

(declare-fun e!4431402 () Bool)

(assert (=> d!2291438 (= c!1375269 e!4431402)))

(declare-fun res!2982816 () Bool)

(assert (=> d!2291438 (=> (not res!2982816) (not e!4431402))))

(assert (=> d!2291438 (= res!2982816 ((_ is Cons!71888) (exprs!8849 (Context!16699 (t!386571 (exprs!8849 c!10532))))))))

(assert (=> d!2291438 (= (derivationStepZipperUp!2813 (Context!16699 (t!386571 (exprs!8849 c!10532))) lt!2618654) e!4431404)))

(declare-fun b!7409288 () Bool)

(assert (=> b!7409288 (= e!4431402 (nullable!8453 (h!78336 (exprs!8849 (Context!16699 (t!386571 (exprs!8849 c!10532)))))))))

(assert (= (and d!2291438 res!2982816) b!7409288))

(assert (= (and d!2291438 c!1375269) b!7409287))

(assert (= (and d!2291438 (not c!1375269)) b!7409284))

(assert (= (and b!7409284 c!1375268) b!7409286))

(assert (= (and b!7409284 (not c!1375268)) b!7409285))

(assert (= (or b!7409287 b!7409286) bm!682166))

(declare-fun m!8044660 () Bool)

(assert (=> bm!682166 m!8044660))

(declare-fun m!8044662 () Bool)

(assert (=> b!7409287 m!8044662))

(declare-fun m!8044664 () Bool)

(assert (=> b!7409288 m!8044664))

(assert (=> b!7409145 d!2291438))

(declare-fun b!7409301 () Bool)

(declare-fun e!4431413 () Context!16698)

(assert (=> b!7409301 (= e!4431413 (getWitness!2452 (t!386574 (toList!11760 z!3451)) lambda!459775))))

(declare-fun d!2291440 () Bool)

(declare-fun e!4431414 () Bool)

(assert (=> d!2291440 e!4431414))

(declare-fun res!2982822 () Bool)

(assert (=> d!2291440 (=> (not res!2982822) (not e!4431414))))

(declare-fun lt!2618700 () Context!16698)

(assert (=> d!2291440 (= res!2982822 (dynLambda!29659 lambda!459775 lt!2618700))))

(declare-fun e!4431415 () Context!16698)

(assert (=> d!2291440 (= lt!2618700 e!4431415)))

(declare-fun c!1375274 () Bool)

(declare-fun e!4431416 () Bool)

(assert (=> d!2291440 (= c!1375274 e!4431416)))

(declare-fun res!2982821 () Bool)

(assert (=> d!2291440 (=> (not res!2982821) (not e!4431416))))

(assert (=> d!2291440 (= res!2982821 ((_ is Cons!71891) (toList!11760 z!3451)))))

(declare-fun exists!4777 (List!72015 Int) Bool)

(assert (=> d!2291440 (exists!4777 (toList!11760 z!3451) lambda!459775)))

(assert (=> d!2291440 (= (getWitness!2452 (toList!11760 z!3451) lambda!459775) lt!2618700)))

(declare-fun b!7409302 () Bool)

(assert (=> b!7409302 (= e!4431415 e!4431413)))

(declare-fun c!1375275 () Bool)

(assert (=> b!7409302 (= c!1375275 ((_ is Cons!71891) (toList!11760 z!3451)))))

(declare-fun b!7409303 () Bool)

(assert (=> b!7409303 (= e!4431415 (h!78339 (toList!11760 z!3451)))))

(declare-fun b!7409304 () Bool)

(declare-fun contains!20848 (List!72015 Context!16698) Bool)

(assert (=> b!7409304 (= e!4431414 (contains!20848 (toList!11760 z!3451) lt!2618700))))

(declare-fun b!7409305 () Bool)

(assert (=> b!7409305 (= e!4431416 (dynLambda!29659 lambda!459775 (h!78339 (toList!11760 z!3451))))))

(declare-fun b!7409306 () Bool)

(declare-fun lt!2618701 () Unit!165704)

(declare-fun Unit!165710 () Unit!165704)

(assert (=> b!7409306 (= lt!2618701 Unit!165710)))

(assert (=> b!7409306 false))

(declare-fun head!15209 (List!72015) Context!16698)

(assert (=> b!7409306 (= e!4431413 (head!15209 (toList!11760 z!3451)))))

(assert (= (and d!2291440 res!2982821) b!7409305))

(assert (= (and d!2291440 c!1375274) b!7409303))

(assert (= (and d!2291440 (not c!1375274)) b!7409302))

(assert (= (and b!7409302 c!1375275) b!7409301))

(assert (= (and b!7409302 (not c!1375275)) b!7409306))

(assert (= (and d!2291440 res!2982822) b!7409304))

(declare-fun b_lambda!286467 () Bool)

(assert (=> (not b_lambda!286467) (not d!2291440)))

(declare-fun b_lambda!286469 () Bool)

(assert (=> (not b_lambda!286469) (not b!7409305)))

(declare-fun m!8044666 () Bool)

(assert (=> d!2291440 m!8044666))

(assert (=> d!2291440 m!8044442))

(declare-fun m!8044668 () Bool)

(assert (=> d!2291440 m!8044668))

(assert (=> b!7409306 m!8044442))

(declare-fun m!8044670 () Bool)

(assert (=> b!7409306 m!8044670))

(declare-fun m!8044672 () Bool)

(assert (=> b!7409301 m!8044672))

(assert (=> b!7409304 m!8044442))

(declare-fun m!8044674 () Bool)

(assert (=> b!7409304 m!8044674))

(declare-fun m!8044676 () Bool)

(assert (=> b!7409305 m!8044676))

(assert (=> d!2291320 d!2291440))

(declare-fun d!2291442 () Bool)

(declare-fun e!4431419 () Bool)

(assert (=> d!2291442 e!4431419))

(declare-fun res!2982825 () Bool)

(assert (=> d!2291442 (=> (not res!2982825) (not e!4431419))))

(declare-fun lt!2618704 () List!72015)

(declare-fun noDuplicate!3107 (List!72015) Bool)

(assert (=> d!2291442 (= res!2982825 (noDuplicate!3107 lt!2618704))))

(declare-fun choose!57459 ((InoxSet Context!16698)) List!72015)

(assert (=> d!2291442 (= lt!2618704 (choose!57459 z!3451))))

(assert (=> d!2291442 (= (toList!11760 z!3451) lt!2618704)))

(declare-fun b!7409309 () Bool)

(declare-fun content!15219 (List!72015) (InoxSet Context!16698))

(assert (=> b!7409309 (= e!4431419 (= (content!15219 lt!2618704) z!3451))))

(assert (= (and d!2291442 res!2982825) b!7409309))

(declare-fun m!8044678 () Bool)

(assert (=> d!2291442 m!8044678))

(declare-fun m!8044680 () Bool)

(assert (=> d!2291442 m!8044680))

(declare-fun m!8044682 () Bool)

(assert (=> b!7409309 m!8044682))

(assert (=> d!2291320 d!2291442))

(declare-fun d!2291444 () Bool)

(declare-fun lt!2618707 () Bool)

(assert (=> d!2291444 (= lt!2618707 (exists!4777 (toList!11760 z!3451) lambda!459775))))

(declare-fun choose!57460 ((InoxSet Context!16698) Int) Bool)

(assert (=> d!2291444 (= lt!2618707 (choose!57460 z!3451 lambda!459775))))

(assert (=> d!2291444 (= (exists!4775 z!3451 lambda!459775) lt!2618707)))

(declare-fun bs!1924365 () Bool)

(assert (= bs!1924365 d!2291444))

(assert (=> bs!1924365 m!8044442))

(assert (=> bs!1924365 m!8044442))

(assert (=> bs!1924365 m!8044668))

(declare-fun m!8044684 () Bool)

(assert (=> bs!1924365 m!8044684))

(assert (=> d!2291320 d!2291444))

(declare-fun d!2291446 () Bool)

(declare-fun choose!57461 ((InoxSet Context!16698) Int) (InoxSet Context!16698))

(assert (=> d!2291446 (= (flatMap!3209 z!3451 lambda!459773) (choose!57461 z!3451 lambda!459773))))

(declare-fun bs!1924366 () Bool)

(assert (= bs!1924366 d!2291446))

(declare-fun m!8044686 () Bool)

(assert (=> bs!1924366 m!8044686))

(assert (=> d!2291304 d!2291446))

(declare-fun d!2291448 () Bool)

(declare-fun lt!2618708 () Bool)

(assert (=> d!2291448 (= lt!2618708 (exists!4777 (toList!11760 z!3451) lambda!459793))))

(assert (=> d!2291448 (= lt!2618708 (choose!57460 z!3451 lambda!459793))))

(assert (=> d!2291448 (= (exists!4775 z!3451 lambda!459793) lt!2618708)))

(declare-fun bs!1924367 () Bool)

(assert (= bs!1924367 d!2291448))

(assert (=> bs!1924367 m!8044442))

(assert (=> bs!1924367 m!8044442))

(declare-fun m!8044688 () Bool)

(assert (=> bs!1924367 m!8044688))

(declare-fun m!8044690 () Bool)

(assert (=> bs!1924367 m!8044690))

(assert (=> d!2291304 d!2291448))

(declare-fun bs!1924368 () Bool)

(declare-fun d!2291450 () Bool)

(assert (= bs!1924368 (and d!2291450 d!2291304)))

(declare-fun lambda!459817 () Int)

(assert (=> bs!1924368 (= lambda!459817 lambda!459793)))

(declare-fun bs!1924369 () Bool)

(assert (= bs!1924369 (and d!2291450 b!7409053)))

(assert (=> bs!1924369 (not (= lambda!459817 lambda!459775))))

(declare-fun bs!1924370 () Bool)

(assert (= bs!1924370 (and d!2291450 d!2291328)))

(assert (=> bs!1924370 (= (= lt!2618650 lt!2618653) (= lambda!459817 lambda!459795))))

(assert (=> bs!1924369 (not (= lambda!459817 lambda!459774))))

(declare-fun bs!1924371 () Bool)

(assert (= bs!1924371 (and d!2291450 d!2291434)))

(assert (=> bs!1924371 (not (= lambda!459817 lambda!459814))))

(assert (=> d!2291450 true))

(assert (=> d!2291450 true))

(assert (=> d!2291450 (< (dynLambda!29660 order!29525 lambda!459773) (dynLambda!29661 order!29527 lambda!459817))))

(assert (=> d!2291450 (= (select (flatMap!3209 z!3451 lambda!459773) lt!2618650) (exists!4775 z!3451 lambda!459817))))

(declare-fun _$3!571 () Context!16698)

(declare-fun e!4431422 () Bool)

(assert (=> d!2291450 (and (inv!91883 _$3!571) e!4431422)))

(assert (=> d!2291450 (= (choose!57454 z!3451 lambda!459773 lt!2618650) _$3!571)))

(declare-fun b!7409313 () Bool)

(declare-fun tp!2119899 () Bool)

(assert (=> b!7409313 (= e!4431422 tp!2119899)))

(assert (= d!2291450 b!7409313))

(assert (=> d!2291450 m!8044432))

(assert (=> d!2291450 m!8044434))

(declare-fun m!8044692 () Bool)

(assert (=> d!2291450 m!8044692))

(declare-fun m!8044694 () Bool)

(assert (=> d!2291450 m!8044694))

(assert (=> d!2291304 d!2291450))

(assert (=> d!2291336 d!2291334))

(assert (=> d!2291336 d!2291324))

(declare-fun d!2291452 () Bool)

(assert (=> d!2291452 (= (matchZipper!3809 lt!2618652 (t!386572 s!7927)) (isEmpty!41053 (t!386572 s!7927)))))

(assert (=> d!2291452 true))

(declare-fun _$63!1331 () Unit!165704)

(assert (=> d!2291452 (= (choose!57455 lt!2618652 (t!386572 s!7927)) _$63!1331)))

(declare-fun bs!1924372 () Bool)

(assert (= bs!1924372 d!2291452))

(assert (=> bs!1924372 m!8044312))

(assert (=> bs!1924372 m!8044326))

(assert (=> d!2291336 d!2291452))

(declare-fun bm!682167 () Bool)

(declare-fun call!682172 () (InoxSet Context!16698))

(assert (=> bm!682167 (= call!682172 (derivationStepZipperDown!3205 (h!78336 (exprs!8849 lt!2618673)) (Context!16699 (t!386571 (exprs!8849 lt!2618673))) lt!2618654))))

(declare-fun b!7409314 () Bool)

(declare-fun e!4431425 () (InoxSet Context!16698))

(declare-fun e!4431424 () (InoxSet Context!16698))

(assert (=> b!7409314 (= e!4431425 e!4431424)))

(declare-fun c!1375276 () Bool)

(assert (=> b!7409314 (= c!1375276 ((_ is Cons!71888) (exprs!8849 lt!2618673)))))

(declare-fun b!7409315 () Bool)

(assert (=> b!7409315 (= e!4431424 ((as const (Array Context!16698 Bool)) false))))

(declare-fun b!7409316 () Bool)

(assert (=> b!7409316 (= e!4431424 call!682172)))

(declare-fun b!7409317 () Bool)

(assert (=> b!7409317 (= e!4431425 ((_ map or) call!682172 (derivationStepZipperUp!2813 (Context!16699 (t!386571 (exprs!8849 lt!2618673))) lt!2618654)))))

(declare-fun d!2291454 () Bool)

(declare-fun c!1375277 () Bool)

(declare-fun e!4431423 () Bool)

(assert (=> d!2291454 (= c!1375277 e!4431423)))

(declare-fun res!2982826 () Bool)

(assert (=> d!2291454 (=> (not res!2982826) (not e!4431423))))

(assert (=> d!2291454 (= res!2982826 ((_ is Cons!71888) (exprs!8849 lt!2618673)))))

(assert (=> d!2291454 (= (derivationStepZipperUp!2813 lt!2618673 lt!2618654) e!4431425)))

(declare-fun b!7409318 () Bool)

(assert (=> b!7409318 (= e!4431423 (nullable!8453 (h!78336 (exprs!8849 lt!2618673))))))

(assert (= (and d!2291454 res!2982826) b!7409318))

(assert (= (and d!2291454 c!1375277) b!7409317))

(assert (= (and d!2291454 (not c!1375277)) b!7409314))

(assert (= (and b!7409314 c!1375276) b!7409316))

(assert (= (and b!7409314 (not c!1375276)) b!7409315))

(assert (= (or b!7409317 b!7409316) bm!682167))

(declare-fun m!8044696 () Bool)

(assert (=> bm!682167 m!8044696))

(declare-fun m!8044698 () Bool)

(assert (=> b!7409317 m!8044698))

(declare-fun m!8044700 () Bool)

(assert (=> b!7409318 m!8044700))

(assert (=> bs!1924310 d!2291454))

(declare-fun d!2291456 () Bool)

(assert (=> d!2291456 (= (isEmpty!41053 s!7927) ((_ is Nil!71889) s!7927))))

(assert (=> d!2291332 d!2291456))

(assert (=> d!2291328 d!2291446))

(declare-fun d!2291458 () Bool)

(declare-fun lt!2618709 () Bool)

(assert (=> d!2291458 (= lt!2618709 (exists!4777 (toList!11760 z!3451) lambda!459795))))

(assert (=> d!2291458 (= lt!2618709 (choose!57460 z!3451 lambda!459795))))

(assert (=> d!2291458 (= (exists!4775 z!3451 lambda!459795) lt!2618709)))

(declare-fun bs!1924373 () Bool)

(assert (= bs!1924373 d!2291458))

(assert (=> bs!1924373 m!8044442))

(assert (=> bs!1924373 m!8044442))

(declare-fun m!8044702 () Bool)

(assert (=> bs!1924373 m!8044702))

(declare-fun m!8044704 () Bool)

(assert (=> bs!1924373 m!8044704))

(assert (=> d!2291328 d!2291458))

(declare-fun bs!1924374 () Bool)

(declare-fun d!2291460 () Bool)

(assert (= bs!1924374 (and d!2291460 d!2291450)))

(declare-fun lambda!459818 () Int)

(assert (=> bs!1924374 (= (= lt!2618653 lt!2618650) (= lambda!459818 lambda!459817))))

(declare-fun bs!1924375 () Bool)

(assert (= bs!1924375 (and d!2291460 d!2291304)))

(assert (=> bs!1924375 (= (= lt!2618653 lt!2618650) (= lambda!459818 lambda!459793))))

(declare-fun bs!1924376 () Bool)

(assert (= bs!1924376 (and d!2291460 b!7409053)))

(assert (=> bs!1924376 (not (= lambda!459818 lambda!459775))))

(declare-fun bs!1924377 () Bool)

(assert (= bs!1924377 (and d!2291460 d!2291328)))

(assert (=> bs!1924377 (= lambda!459818 lambda!459795)))

(assert (=> bs!1924376 (not (= lambda!459818 lambda!459774))))

(declare-fun bs!1924378 () Bool)

(assert (= bs!1924378 (and d!2291460 d!2291434)))

(assert (=> bs!1924378 (not (= lambda!459818 lambda!459814))))

(assert (=> d!2291460 true))

(assert (=> d!2291460 true))

(assert (=> d!2291460 (< (dynLambda!29660 order!29525 lambda!459773) (dynLambda!29661 order!29527 lambda!459818))))

(assert (=> d!2291460 (= (select (flatMap!3209 z!3451 lambda!459773) lt!2618653) (exists!4775 z!3451 lambda!459818))))

(declare-fun _$3!572 () Context!16698)

(declare-fun e!4431426 () Bool)

(assert (=> d!2291460 (and (inv!91883 _$3!572) e!4431426)))

(assert (=> d!2291460 (= (choose!57454 z!3451 lambda!459773 lt!2618653) _$3!572)))

(declare-fun b!7409319 () Bool)

(declare-fun tp!2119900 () Bool)

(assert (=> b!7409319 (= e!4431426 tp!2119900)))

(assert (= d!2291460 b!7409319))

(assert (=> d!2291460 m!8044432))

(assert (=> d!2291460 m!8044452))

(declare-fun m!8044706 () Bool)

(assert (=> d!2291460 m!8044706))

(declare-fun m!8044708 () Bool)

(assert (=> d!2291460 m!8044708))

(assert (=> d!2291328 d!2291460))

(declare-fun bs!1924379 () Bool)

(declare-fun d!2291462 () Bool)

(assert (= bs!1924379 (and d!2291462 d!2291280)))

(declare-fun lambda!459819 () Int)

(assert (=> bs!1924379 (= lambda!459819 lambda!459778)))

(declare-fun bs!1924380 () Bool)

(assert (= bs!1924380 (and d!2291462 d!2291322)))

(assert (=> bs!1924380 (= lambda!459819 lambda!459794)))

(declare-fun bs!1924381 () Bool)

(assert (= bs!1924381 (and d!2291462 d!2291330)))

(assert (=> bs!1924381 (= lambda!459819 lambda!459796)))

(assert (=> d!2291462 (= (inv!91883 setElem!56263) (forall!18193 (exprs!8849 setElem!56263) lambda!459819))))

(declare-fun bs!1924382 () Bool)

(assert (= bs!1924382 d!2291462))

(declare-fun m!8044710 () Bool)

(assert (=> bs!1924382 m!8044710))

(assert (=> setNonEmpty!56263 d!2291462))

(assert (=> d!2291334 d!2291324))

(declare-fun d!2291464 () Bool)

(declare-fun res!2982831 () Bool)

(declare-fun e!4431431 () Bool)

(assert (=> d!2291464 (=> res!2982831 e!4431431)))

(assert (=> d!2291464 (= res!2982831 ((_ is Nil!71888) (exprs!8849 empty!3583)))))

(assert (=> d!2291464 (= (forall!18193 (exprs!8849 empty!3583) lambda!459796) e!4431431)))

(declare-fun b!7409324 () Bool)

(declare-fun e!4431432 () Bool)

(assert (=> b!7409324 (= e!4431431 e!4431432)))

(declare-fun res!2982832 () Bool)

(assert (=> b!7409324 (=> (not res!2982832) (not e!4431432))))

(declare-fun dynLambda!29663 (Int Regex!19409) Bool)

(assert (=> b!7409324 (= res!2982832 (dynLambda!29663 lambda!459796 (h!78336 (exprs!8849 empty!3583))))))

(declare-fun b!7409325 () Bool)

(assert (=> b!7409325 (= e!4431432 (forall!18193 (t!386571 (exprs!8849 empty!3583)) lambda!459796))))

(assert (= (and d!2291464 (not res!2982831)) b!7409324))

(assert (= (and b!7409324 res!2982832) b!7409325))

(declare-fun b_lambda!286471 () Bool)

(assert (=> (not b_lambda!286471) (not b!7409324)))

(declare-fun m!8044712 () Bool)

(assert (=> b!7409324 m!8044712))

(declare-fun m!8044714 () Bool)

(assert (=> b!7409325 m!8044714))

(assert (=> d!2291330 d!2291464))

(declare-fun d!2291466 () Bool)

(declare-fun c!1375290 () Bool)

(assert (=> d!2291466 (= c!1375290 (and ((_ is ElementMatch!19409) (h!78336 (exprs!8849 c!10532))) (= (c!1375209 (h!78336 (exprs!8849 c!10532))) lt!2618654)))))

(declare-fun e!4431445 () (InoxSet Context!16698))

(assert (=> d!2291466 (= (derivationStepZipperDown!3205 (h!78336 (exprs!8849 c!10532)) (Context!16699 (t!386571 (exprs!8849 c!10532))) lt!2618654) e!4431445)))

(declare-fun b!7409348 () Bool)

(declare-fun c!1375292 () Bool)

(declare-fun e!4431449 () Bool)

(assert (=> b!7409348 (= c!1375292 e!4431449)))

(declare-fun res!2982835 () Bool)

(assert (=> b!7409348 (=> (not res!2982835) (not e!4431449))))

(assert (=> b!7409348 (= res!2982835 ((_ is Concat!28254) (h!78336 (exprs!8849 c!10532))))))

(declare-fun e!4431446 () (InoxSet Context!16698))

(declare-fun e!4431447 () (InoxSet Context!16698))

(assert (=> b!7409348 (= e!4431446 e!4431447)))

(declare-fun b!7409349 () Bool)

(declare-fun c!1375289 () Bool)

(assert (=> b!7409349 (= c!1375289 ((_ is Star!19409) (h!78336 (exprs!8849 c!10532))))))

(declare-fun e!4431448 () (InoxSet Context!16698))

(declare-fun e!4431450 () (InoxSet Context!16698))

(assert (=> b!7409349 (= e!4431448 e!4431450)))

(declare-fun b!7409350 () Bool)

(assert (=> b!7409350 (= e!4431449 (nullable!8453 (regOne!39330 (h!78336 (exprs!8849 c!10532)))))))

(declare-fun b!7409351 () Bool)

(declare-fun call!682188 () (InoxSet Context!16698))

(assert (=> b!7409351 (= e!4431448 call!682188)))

(declare-fun b!7409352 () Bool)

(declare-fun call!682189 () (InoxSet Context!16698))

(declare-fun call!682186 () (InoxSet Context!16698))

(assert (=> b!7409352 (= e!4431447 ((_ map or) call!682189 call!682186))))

(declare-fun b!7409353 () Bool)

(assert (=> b!7409353 (= e!4431445 (store ((as const (Array Context!16698 Bool)) false) (Context!16699 (t!386571 (exprs!8849 c!10532))) true))))

(declare-fun bm!682180 () Bool)

(declare-fun c!1375288 () Bool)

(declare-fun call!682190 () List!72012)

(assert (=> bm!682180 (= call!682189 (derivationStepZipperDown!3205 (ite c!1375288 (regOne!39331 (h!78336 (exprs!8849 c!10532))) (regOne!39330 (h!78336 (exprs!8849 c!10532)))) (ite c!1375288 (Context!16699 (t!386571 (exprs!8849 c!10532))) (Context!16699 call!682190)) lt!2618654))))

(declare-fun call!682185 () List!72012)

(declare-fun c!1375291 () Bool)

(declare-fun call!682187 () (InoxSet Context!16698))

(declare-fun bm!682181 () Bool)

(assert (=> bm!682181 (= call!682187 (derivationStepZipperDown!3205 (ite c!1375288 (regTwo!39331 (h!78336 (exprs!8849 c!10532))) (ite c!1375292 (regTwo!39330 (h!78336 (exprs!8849 c!10532))) (ite c!1375291 (regOne!39330 (h!78336 (exprs!8849 c!10532))) (reg!19738 (h!78336 (exprs!8849 c!10532)))))) (ite (or c!1375288 c!1375292) (Context!16699 (t!386571 (exprs!8849 c!10532))) (Context!16699 call!682185)) lt!2618654))))

(declare-fun b!7409354 () Bool)

(assert (=> b!7409354 (= e!4431445 e!4431446)))

(assert (=> b!7409354 (= c!1375288 ((_ is Union!19409) (h!78336 (exprs!8849 c!10532))))))

(declare-fun bm!682182 () Bool)

(assert (=> bm!682182 (= call!682188 call!682186)))

(declare-fun b!7409355 () Bool)

(assert (=> b!7409355 (= e!4431446 ((_ map or) call!682189 call!682187))))

(declare-fun b!7409356 () Bool)

(assert (=> b!7409356 (= e!4431450 ((as const (Array Context!16698 Bool)) false))))

(declare-fun bm!682183 () Bool)

(assert (=> bm!682183 (= call!682186 call!682187)))

(declare-fun bm!682184 () Bool)

(assert (=> bm!682184 (= call!682185 call!682190)))

(declare-fun b!7409357 () Bool)

(assert (=> b!7409357 (= e!4431447 e!4431448)))

(assert (=> b!7409357 (= c!1375291 ((_ is Concat!28254) (h!78336 (exprs!8849 c!10532))))))

(declare-fun bm!682185 () Bool)

(declare-fun $colon$colon!3344 (List!72012 Regex!19409) List!72012)

(assert (=> bm!682185 (= call!682190 ($colon$colon!3344 (exprs!8849 (Context!16699 (t!386571 (exprs!8849 c!10532)))) (ite (or c!1375292 c!1375291) (regTwo!39330 (h!78336 (exprs!8849 c!10532))) (h!78336 (exprs!8849 c!10532)))))))

(declare-fun b!7409358 () Bool)

(assert (=> b!7409358 (= e!4431450 call!682188)))

(assert (= (and d!2291466 c!1375290) b!7409353))

(assert (= (and d!2291466 (not c!1375290)) b!7409354))

(assert (= (and b!7409354 c!1375288) b!7409355))

(assert (= (and b!7409354 (not c!1375288)) b!7409348))

(assert (= (and b!7409348 res!2982835) b!7409350))

(assert (= (and b!7409348 c!1375292) b!7409352))

(assert (= (and b!7409348 (not c!1375292)) b!7409357))

(assert (= (and b!7409357 c!1375291) b!7409351))

(assert (= (and b!7409357 (not c!1375291)) b!7409349))

(assert (= (and b!7409349 c!1375289) b!7409358))

(assert (= (and b!7409349 (not c!1375289)) b!7409356))

(assert (= (or b!7409351 b!7409358) bm!682184))

(assert (= (or b!7409351 b!7409358) bm!682182))

(assert (= (or b!7409352 bm!682184) bm!682185))

(assert (= (or b!7409352 bm!682182) bm!682183))

(assert (= (or b!7409355 b!7409352) bm!682180))

(assert (= (or b!7409355 bm!682183) bm!682181))

(declare-fun m!8044716 () Bool)

(assert (=> b!7409353 m!8044716))

(declare-fun m!8044718 () Bool)

(assert (=> bm!682180 m!8044718))

(declare-fun m!8044720 () Bool)

(assert (=> bm!682185 m!8044720))

(declare-fun m!8044722 () Bool)

(assert (=> b!7409350 m!8044722))

(declare-fun m!8044724 () Bool)

(assert (=> bm!682181 m!8044724))

(assert (=> bm!682145 d!2291466))

(declare-fun d!2291468 () Bool)

(declare-fun c!1375293 () Bool)

(assert (=> d!2291468 (= c!1375293 (isEmpty!41053 (tail!14818 (t!386572 s!7927))))))

(declare-fun e!4431451 () Bool)

(assert (=> d!2291468 (= (matchZipper!3809 (derivationStepZipper!3683 lt!2618652 (head!15207 (t!386572 s!7927))) (tail!14818 (t!386572 s!7927))) e!4431451)))

(declare-fun b!7409359 () Bool)

(assert (=> b!7409359 (= e!4431451 (nullableZipper!3138 (derivationStepZipper!3683 lt!2618652 (head!15207 (t!386572 s!7927)))))))

(declare-fun b!7409360 () Bool)

(assert (=> b!7409360 (= e!4431451 (matchZipper!3809 (derivationStepZipper!3683 (derivationStepZipper!3683 lt!2618652 (head!15207 (t!386572 s!7927))) (head!15207 (tail!14818 (t!386572 s!7927)))) (tail!14818 (tail!14818 (t!386572 s!7927)))))))

(assert (= (and d!2291468 c!1375293) b!7409359))

(assert (= (and d!2291468 (not c!1375293)) b!7409360))

(assert (=> d!2291468 m!8044476))

(declare-fun m!8044726 () Bool)

(assert (=> d!2291468 m!8044726))

(assert (=> b!7409359 m!8044474))

(declare-fun m!8044728 () Bool)

(assert (=> b!7409359 m!8044728))

(assert (=> b!7409360 m!8044476))

(declare-fun m!8044730 () Bool)

(assert (=> b!7409360 m!8044730))

(assert (=> b!7409360 m!8044474))

(assert (=> b!7409360 m!8044730))

(declare-fun m!8044732 () Bool)

(assert (=> b!7409360 m!8044732))

(assert (=> b!7409360 m!8044476))

(declare-fun m!8044734 () Bool)

(assert (=> b!7409360 m!8044734))

(assert (=> b!7409360 m!8044732))

(assert (=> b!7409360 m!8044734))

(declare-fun m!8044736 () Bool)

(assert (=> b!7409360 m!8044736))

(assert (=> b!7409131 d!2291468))

(declare-fun bs!1924383 () Bool)

(declare-fun d!2291470 () Bool)

(assert (= bs!1924383 (and d!2291470 b!7409051)))

(declare-fun lambda!459820 () Int)

(assert (=> bs!1924383 (= (= (head!15207 (t!386572 s!7927)) a!2228) (= lambda!459820 lambda!459773))))

(declare-fun bs!1924384 () Bool)

(assert (= bs!1924384 (and d!2291470 d!2291344)))

(assert (=> bs!1924384 (= (= (head!15207 (t!386572 s!7927)) lt!2618654) (= lambda!459820 lambda!459799))))

(declare-fun bs!1924385 () Bool)

(assert (= bs!1924385 (and d!2291470 d!2291430)))

(assert (=> bs!1924385 (= (= (head!15207 (t!386572 s!7927)) (head!15207 s!7927)) (= lambda!459820 lambda!459811))))

(assert (=> d!2291470 true))

(assert (=> d!2291470 (= (derivationStepZipper!3683 lt!2618652 (head!15207 (t!386572 s!7927))) (flatMap!3209 lt!2618652 lambda!459820))))

(declare-fun bs!1924386 () Bool)

(assert (= bs!1924386 d!2291470))

(declare-fun m!8044738 () Bool)

(assert (=> bs!1924386 m!8044738))

(assert (=> b!7409131 d!2291470))

(declare-fun d!2291472 () Bool)

(assert (=> d!2291472 (= (head!15207 (t!386572 s!7927)) (h!78337 (t!386572 s!7927)))))

(assert (=> b!7409131 d!2291472))

(declare-fun d!2291474 () Bool)

(assert (=> d!2291474 (= (tail!14818 (t!386572 s!7927)) (t!386572 (t!386572 s!7927)))))

(assert (=> b!7409131 d!2291474))

(declare-fun bs!1924387 () Bool)

(declare-fun d!2291476 () Bool)

(assert (= bs!1924387 (and d!2291476 d!2291450)))

(declare-fun lambda!459821 () Int)

(assert (=> bs!1924387 (not (= lambda!459821 lambda!459817))))

(declare-fun bs!1924388 () Bool)

(assert (= bs!1924388 (and d!2291476 d!2291304)))

(assert (=> bs!1924388 (not (= lambda!459821 lambda!459793))))

(declare-fun bs!1924389 () Bool)

(assert (= bs!1924389 (and d!2291476 b!7409053)))

(assert (=> bs!1924389 (not (= lambda!459821 lambda!459775))))

(declare-fun bs!1924390 () Bool)

(assert (= bs!1924390 (and d!2291476 d!2291460)))

(assert (=> bs!1924390 (not (= lambda!459821 lambda!459818))))

(declare-fun bs!1924391 () Bool)

(assert (= bs!1924391 (and d!2291476 d!2291328)))

(assert (=> bs!1924391 (not (= lambda!459821 lambda!459795))))

(assert (=> bs!1924389 (not (= lambda!459821 lambda!459774))))

(declare-fun bs!1924392 () Bool)

(assert (= bs!1924392 (and d!2291476 d!2291434)))

(assert (=> bs!1924392 (= lambda!459821 lambda!459814)))

(assert (=> d!2291476 (= (nullableZipper!3138 lt!2618652) (exists!4775 lt!2618652 lambda!459821))))

(declare-fun bs!1924393 () Bool)

(assert (= bs!1924393 d!2291476))

(declare-fun m!8044740 () Bool)

(assert (=> bs!1924393 m!8044740))

(assert (=> b!7409130 d!2291476))

(declare-fun d!2291478 () Bool)

(declare-fun res!2982836 () Bool)

(declare-fun e!4431452 () Bool)

(assert (=> d!2291478 (=> res!2982836 e!4431452)))

(assert (=> d!2291478 (= res!2982836 ((_ is Nil!71888) (exprs!8849 c!10532)))))

(assert (=> d!2291478 (= (forall!18193 (exprs!8849 c!10532) lambda!459778) e!4431452)))

(declare-fun b!7409361 () Bool)

(declare-fun e!4431453 () Bool)

(assert (=> b!7409361 (= e!4431452 e!4431453)))

(declare-fun res!2982837 () Bool)

(assert (=> b!7409361 (=> (not res!2982837) (not e!4431453))))

(assert (=> b!7409361 (= res!2982837 (dynLambda!29663 lambda!459778 (h!78336 (exprs!8849 c!10532))))))

(declare-fun b!7409362 () Bool)

(assert (=> b!7409362 (= e!4431453 (forall!18193 (t!386571 (exprs!8849 c!10532)) lambda!459778))))

(assert (= (and d!2291478 (not res!2982836)) b!7409361))

(assert (= (and b!7409361 res!2982837) b!7409362))

(declare-fun b_lambda!286473 () Bool)

(assert (=> (not b_lambda!286473) (not b!7409361)))

(declare-fun m!8044742 () Bool)

(assert (=> b!7409361 m!8044742))

(declare-fun m!8044744 () Bool)

(assert (=> b!7409362 m!8044744))

(assert (=> d!2291280 d!2291478))

(declare-fun b!7409363 () Bool)

(declare-fun e!4431454 () Context!16698)

(assert (=> b!7409363 (= e!4431454 (getWitness!2452 (t!386574 (toList!11760 lt!2618647)) lambda!459774))))

(declare-fun d!2291480 () Bool)

(declare-fun e!4431455 () Bool)

(assert (=> d!2291480 e!4431455))

(declare-fun res!2982839 () Bool)

(assert (=> d!2291480 (=> (not res!2982839) (not e!4431455))))

(declare-fun lt!2618710 () Context!16698)

(assert (=> d!2291480 (= res!2982839 (dynLambda!29659 lambda!459774 lt!2618710))))

(declare-fun e!4431456 () Context!16698)

(assert (=> d!2291480 (= lt!2618710 e!4431456)))

(declare-fun c!1375294 () Bool)

(declare-fun e!4431457 () Bool)

(assert (=> d!2291480 (= c!1375294 e!4431457)))

(declare-fun res!2982838 () Bool)

(assert (=> d!2291480 (=> (not res!2982838) (not e!4431457))))

(assert (=> d!2291480 (= res!2982838 ((_ is Cons!71891) (toList!11760 lt!2618647)))))

(assert (=> d!2291480 (exists!4777 (toList!11760 lt!2618647) lambda!459774)))

(assert (=> d!2291480 (= (getWitness!2452 (toList!11760 lt!2618647) lambda!459774) lt!2618710)))

(declare-fun b!7409364 () Bool)

(assert (=> b!7409364 (= e!4431456 e!4431454)))

(declare-fun c!1375295 () Bool)

(assert (=> b!7409364 (= c!1375295 ((_ is Cons!71891) (toList!11760 lt!2618647)))))

(declare-fun b!7409365 () Bool)

(assert (=> b!7409365 (= e!4431456 (h!78339 (toList!11760 lt!2618647)))))

(declare-fun b!7409366 () Bool)

(assert (=> b!7409366 (= e!4431455 (contains!20848 (toList!11760 lt!2618647) lt!2618710))))

(declare-fun b!7409367 () Bool)

(assert (=> b!7409367 (= e!4431457 (dynLambda!29659 lambda!459774 (h!78339 (toList!11760 lt!2618647))))))

(declare-fun b!7409368 () Bool)

(declare-fun lt!2618711 () Unit!165704)

(declare-fun Unit!165711 () Unit!165704)

(assert (=> b!7409368 (= lt!2618711 Unit!165711)))

(assert (=> b!7409368 false))

(assert (=> b!7409368 (= e!4431454 (head!15209 (toList!11760 lt!2618647)))))

(assert (= (and d!2291480 res!2982838) b!7409367))

(assert (= (and d!2291480 c!1375294) b!7409365))

(assert (= (and d!2291480 (not c!1375294)) b!7409364))

(assert (= (and b!7409364 c!1375295) b!7409363))

(assert (= (and b!7409364 (not c!1375295)) b!7409368))

(assert (= (and d!2291480 res!2982839) b!7409366))

(declare-fun b_lambda!286475 () Bool)

(assert (=> (not b_lambda!286475) (not d!2291480)))

(declare-fun b_lambda!286477 () Bool)

(assert (=> (not b_lambda!286477) (not b!7409367)))

(declare-fun m!8044746 () Bool)

(assert (=> d!2291480 m!8044746))

(assert (=> d!2291480 m!8044388))

(declare-fun m!8044748 () Bool)

(assert (=> d!2291480 m!8044748))

(assert (=> b!7409368 m!8044388))

(declare-fun m!8044750 () Bool)

(assert (=> b!7409368 m!8044750))

(declare-fun m!8044752 () Bool)

(assert (=> b!7409363 m!8044752))

(assert (=> b!7409366 m!8044388))

(declare-fun m!8044754 () Bool)

(assert (=> b!7409366 m!8044754))

(declare-fun m!8044756 () Bool)

(assert (=> b!7409367 m!8044756))

(assert (=> d!2291292 d!2291480))

(declare-fun d!2291482 () Bool)

(declare-fun e!4431458 () Bool)

(assert (=> d!2291482 e!4431458))

(declare-fun res!2982840 () Bool)

(assert (=> d!2291482 (=> (not res!2982840) (not e!4431458))))

(declare-fun lt!2618712 () List!72015)

(assert (=> d!2291482 (= res!2982840 (noDuplicate!3107 lt!2618712))))

(assert (=> d!2291482 (= lt!2618712 (choose!57459 lt!2618647))))

(assert (=> d!2291482 (= (toList!11760 lt!2618647) lt!2618712)))

(declare-fun b!7409369 () Bool)

(assert (=> b!7409369 (= e!4431458 (= (content!15219 lt!2618712) lt!2618647))))

(assert (= (and d!2291482 res!2982840) b!7409369))

(declare-fun m!8044758 () Bool)

(assert (=> d!2291482 m!8044758))

(declare-fun m!8044760 () Bool)

(assert (=> d!2291482 m!8044760))

(declare-fun m!8044762 () Bool)

(assert (=> b!7409369 m!8044762))

(assert (=> d!2291292 d!2291482))

(declare-fun d!2291484 () Bool)

(declare-fun lt!2618713 () Bool)

(assert (=> d!2291484 (= lt!2618713 (exists!4777 (toList!11760 lt!2618647) lambda!459774))))

(assert (=> d!2291484 (= lt!2618713 (choose!57460 lt!2618647 lambda!459774))))

(assert (=> d!2291484 (= (exists!4775 lt!2618647 lambda!459774) lt!2618713)))

(declare-fun bs!1924394 () Bool)

(assert (= bs!1924394 d!2291484))

(assert (=> bs!1924394 m!8044388))

(assert (=> bs!1924394 m!8044388))

(assert (=> bs!1924394 m!8044748))

(declare-fun m!8044764 () Bool)

(assert (=> bs!1924394 m!8044764))

(assert (=> d!2291292 d!2291484))

(declare-fun d!2291486 () Bool)

(assert (=> d!2291486 (= (flatMap!3209 z!3451 lambda!459799) (choose!57461 z!3451 lambda!459799))))

(declare-fun bs!1924395 () Bool)

(assert (= bs!1924395 d!2291486))

(declare-fun m!8044766 () Bool)

(assert (=> bs!1924395 m!8044766))

(assert (=> d!2291344 d!2291486))

(declare-fun d!2291488 () Bool)

(declare-fun res!2982841 () Bool)

(declare-fun e!4431459 () Bool)

(assert (=> d!2291488 (=> res!2982841 e!4431459)))

(assert (=> d!2291488 (= res!2982841 ((_ is Nil!71888) (exprs!8849 setElem!56257)))))

(assert (=> d!2291488 (= (forall!18193 (exprs!8849 setElem!56257) lambda!459794) e!4431459)))

(declare-fun b!7409370 () Bool)

(declare-fun e!4431460 () Bool)

(assert (=> b!7409370 (= e!4431459 e!4431460)))

(declare-fun res!2982842 () Bool)

(assert (=> b!7409370 (=> (not res!2982842) (not e!4431460))))

(assert (=> b!7409370 (= res!2982842 (dynLambda!29663 lambda!459794 (h!78336 (exprs!8849 setElem!56257))))))

(declare-fun b!7409371 () Bool)

(assert (=> b!7409371 (= e!4431460 (forall!18193 (t!386571 (exprs!8849 setElem!56257)) lambda!459794))))

(assert (= (and d!2291488 (not res!2982841)) b!7409370))

(assert (= (and b!7409370 res!2982842) b!7409371))

(declare-fun b_lambda!286479 () Bool)

(assert (=> (not b_lambda!286479) (not b!7409370)))

(declare-fun m!8044768 () Bool)

(assert (=> b!7409370 m!8044768))

(declare-fun m!8044770 () Bool)

(assert (=> b!7409371 m!8044770))

(assert (=> d!2291322 d!2291488))

(declare-fun e!4431463 () Bool)

(assert (=> b!7409162 (= tp!2119853 e!4431463)))

(declare-fun b!7409384 () Bool)

(declare-fun tp!2119911 () Bool)

(assert (=> b!7409384 (= e!4431463 tp!2119911)))

(declare-fun b!7409383 () Bool)

(declare-fun tp!2119914 () Bool)

(declare-fun tp!2119912 () Bool)

(assert (=> b!7409383 (= e!4431463 (and tp!2119914 tp!2119912))))

(declare-fun b!7409382 () Bool)

(assert (=> b!7409382 (= e!4431463 tp_is_empty!49081)))

(declare-fun b!7409385 () Bool)

(declare-fun tp!2119913 () Bool)

(declare-fun tp!2119915 () Bool)

(assert (=> b!7409385 (= e!4431463 (and tp!2119913 tp!2119915))))

(assert (= (and b!7409162 ((_ is ElementMatch!19409) (h!78336 (exprs!8849 c!10532)))) b!7409382))

(assert (= (and b!7409162 ((_ is Concat!28254) (h!78336 (exprs!8849 c!10532)))) b!7409383))

(assert (= (and b!7409162 ((_ is Star!19409) (h!78336 (exprs!8849 c!10532)))) b!7409384))

(assert (= (and b!7409162 ((_ is Union!19409) (h!78336 (exprs!8849 c!10532)))) b!7409385))

(declare-fun b!7409386 () Bool)

(declare-fun e!4431464 () Bool)

(declare-fun tp!2119916 () Bool)

(declare-fun tp!2119917 () Bool)

(assert (=> b!7409386 (= e!4431464 (and tp!2119916 tp!2119917))))

(assert (=> b!7409162 (= tp!2119854 e!4431464)))

(assert (= (and b!7409162 ((_ is Cons!71888) (t!386571 (exprs!8849 c!10532)))) b!7409386))

(declare-fun b!7409387 () Bool)

(declare-fun e!4431465 () Bool)

(declare-fun tp!2119918 () Bool)

(assert (=> b!7409387 (= e!4431465 (and tp_is_empty!49081 tp!2119918))))

(assert (=> b!7409151 (= tp!2119840 e!4431465)))

(assert (= (and b!7409151 ((_ is Cons!71889) (t!386572 (t!386572 s!7927)))) b!7409387))

(declare-fun e!4431466 () Bool)

(assert (=> b!7409163 (= tp!2119855 e!4431466)))

(declare-fun b!7409390 () Bool)

(declare-fun tp!2119919 () Bool)

(assert (=> b!7409390 (= e!4431466 tp!2119919)))

(declare-fun b!7409389 () Bool)

(declare-fun tp!2119922 () Bool)

(declare-fun tp!2119920 () Bool)

(assert (=> b!7409389 (= e!4431466 (and tp!2119922 tp!2119920))))

(declare-fun b!7409388 () Bool)

(assert (=> b!7409388 (= e!4431466 tp_is_empty!49081)))

(declare-fun b!7409391 () Bool)

(declare-fun tp!2119921 () Bool)

(declare-fun tp!2119923 () Bool)

(assert (=> b!7409391 (= e!4431466 (and tp!2119921 tp!2119923))))

(assert (= (and b!7409163 ((_ is ElementMatch!19409) (h!78336 (exprs!8849 setElem!56257)))) b!7409388))

(assert (= (and b!7409163 ((_ is Concat!28254) (h!78336 (exprs!8849 setElem!56257)))) b!7409389))

(assert (= (and b!7409163 ((_ is Star!19409) (h!78336 (exprs!8849 setElem!56257)))) b!7409390))

(assert (= (and b!7409163 ((_ is Union!19409) (h!78336 (exprs!8849 setElem!56257)))) b!7409391))

(declare-fun b!7409392 () Bool)

(declare-fun e!4431467 () Bool)

(declare-fun tp!2119924 () Bool)

(declare-fun tp!2119925 () Bool)

(assert (=> b!7409392 (= e!4431467 (and tp!2119924 tp!2119925))))

(assert (=> b!7409163 (= tp!2119856 e!4431467)))

(assert (= (and b!7409163 ((_ is Cons!71888) (t!386571 (exprs!8849 setElem!56257)))) b!7409392))

(declare-fun b!7409393 () Bool)

(declare-fun e!4431468 () Bool)

(declare-fun tp!2119926 () Bool)

(declare-fun tp!2119927 () Bool)

(assert (=> b!7409393 (= e!4431468 (and tp!2119926 tp!2119927))))

(assert (=> b!7409156 (= tp!2119845 e!4431468)))

(assert (= (and b!7409156 ((_ is Cons!71888) (exprs!8849 setElem!56263))) b!7409393))

(declare-fun condSetEmpty!56265 () Bool)

(assert (=> setNonEmpty!56263 (= condSetEmpty!56265 (= setRest!56263 ((as const (Array Context!16698 Bool)) false)))))

(declare-fun setRes!56265 () Bool)

(assert (=> setNonEmpty!56263 (= tp!2119846 setRes!56265)))

(declare-fun setIsEmpty!56265 () Bool)

(assert (=> setIsEmpty!56265 setRes!56265))

(declare-fun setElem!56265 () Context!16698)

(declare-fun e!4431469 () Bool)

(declare-fun tp!2119929 () Bool)

(declare-fun setNonEmpty!56265 () Bool)

(assert (=> setNonEmpty!56265 (= setRes!56265 (and tp!2119929 (inv!91883 setElem!56265) e!4431469))))

(declare-fun setRest!56265 () (InoxSet Context!16698))

(assert (=> setNonEmpty!56265 (= setRest!56263 ((_ map or) (store ((as const (Array Context!16698 Bool)) false) setElem!56265 true) setRest!56265))))

(declare-fun b!7409394 () Bool)

(declare-fun tp!2119928 () Bool)

(assert (=> b!7409394 (= e!4431469 tp!2119928)))

(assert (= (and setNonEmpty!56263 condSetEmpty!56265) setIsEmpty!56265))

(assert (= (and setNonEmpty!56263 (not condSetEmpty!56265)) setNonEmpty!56265))

(assert (= setNonEmpty!56265 b!7409394))

(declare-fun m!8044772 () Bool)

(assert (=> setNonEmpty!56265 m!8044772))

(declare-fun e!4431470 () Bool)

(assert (=> b!7409161 (= tp!2119851 e!4431470)))

(declare-fun b!7409397 () Bool)

(declare-fun tp!2119930 () Bool)

(assert (=> b!7409397 (= e!4431470 tp!2119930)))

(declare-fun b!7409396 () Bool)

(declare-fun tp!2119933 () Bool)

(declare-fun tp!2119931 () Bool)

(assert (=> b!7409396 (= e!4431470 (and tp!2119933 tp!2119931))))

(declare-fun b!7409395 () Bool)

(assert (=> b!7409395 (= e!4431470 tp_is_empty!49081)))

(declare-fun b!7409398 () Bool)

(declare-fun tp!2119932 () Bool)

(declare-fun tp!2119934 () Bool)

(assert (=> b!7409398 (= e!4431470 (and tp!2119932 tp!2119934))))

(assert (= (and b!7409161 ((_ is ElementMatch!19409) (h!78336 (exprs!8849 empty!3583)))) b!7409395))

(assert (= (and b!7409161 ((_ is Concat!28254) (h!78336 (exprs!8849 empty!3583)))) b!7409396))

(assert (= (and b!7409161 ((_ is Star!19409) (h!78336 (exprs!8849 empty!3583)))) b!7409397))

(assert (= (and b!7409161 ((_ is Union!19409) (h!78336 (exprs!8849 empty!3583)))) b!7409398))

(declare-fun b!7409399 () Bool)

(declare-fun e!4431471 () Bool)

(declare-fun tp!2119935 () Bool)

(declare-fun tp!2119936 () Bool)

(assert (=> b!7409399 (= e!4431471 (and tp!2119935 tp!2119936))))

(assert (=> b!7409161 (= tp!2119852 e!4431471)))

(assert (= (and b!7409161 ((_ is Cons!71888) (t!386571 (exprs!8849 empty!3583)))) b!7409399))

(declare-fun b_lambda!286481 () Bool)

(assert (= b_lambda!286477 (or b!7409053 b_lambda!286481)))

(declare-fun bs!1924396 () Bool)

(declare-fun d!2291490 () Bool)

(assert (= bs!1924396 (and d!2291490 b!7409053)))

(assert (=> bs!1924396 (= (dynLambda!29659 lambda!459774 (h!78339 (toList!11760 lt!2618647))) (not (= (h!78339 (toList!11760 lt!2618647)) lt!2618653)))))

(assert (=> b!7409367 d!2291490))

(declare-fun b_lambda!286483 () Bool)

(assert (= b_lambda!286469 (or b!7409053 b_lambda!286483)))

(declare-fun bs!1924397 () Bool)

(declare-fun d!2291492 () Bool)

(assert (= bs!1924397 (and d!2291492 b!7409053)))

(assert (=> bs!1924397 (= (dynLambda!29659 lambda!459775 (h!78339 (toList!11760 z!3451))) (select (derivationStepZipperUp!2813 (h!78339 (toList!11760 z!3451)) lt!2618654) lt!2618650))))

(declare-fun m!8044774 () Bool)

(assert (=> bs!1924397 m!8044774))

(declare-fun m!8044776 () Bool)

(assert (=> bs!1924397 m!8044776))

(assert (=> b!7409305 d!2291492))

(declare-fun b_lambda!286485 () Bool)

(assert (= b_lambda!286467 (or b!7409053 b_lambda!286485)))

(declare-fun bs!1924398 () Bool)

(declare-fun d!2291494 () Bool)

(assert (= bs!1924398 (and d!2291494 b!7409053)))

(assert (=> bs!1924398 (= (dynLambda!29659 lambda!459775 lt!2618700) (select (derivationStepZipperUp!2813 lt!2618700 lt!2618654) lt!2618650))))

(declare-fun m!8044778 () Bool)

(assert (=> bs!1924398 m!8044778))

(declare-fun m!8044780 () Bool)

(assert (=> bs!1924398 m!8044780))

(assert (=> d!2291440 d!2291494))

(declare-fun b_lambda!286487 () Bool)

(assert (= b_lambda!286473 (or d!2291280 b_lambda!286487)))

(declare-fun bs!1924399 () Bool)

(declare-fun d!2291496 () Bool)

(assert (= bs!1924399 (and d!2291496 d!2291280)))

(declare-fun validRegex!9963 (Regex!19409) Bool)

(assert (=> bs!1924399 (= (dynLambda!29663 lambda!459778 (h!78336 (exprs!8849 c!10532))) (validRegex!9963 (h!78336 (exprs!8849 c!10532))))))

(declare-fun m!8044782 () Bool)

(assert (=> bs!1924399 m!8044782))

(assert (=> b!7409361 d!2291496))

(declare-fun b_lambda!286489 () Bool)

(assert (= b_lambda!286471 (or d!2291330 b_lambda!286489)))

(declare-fun bs!1924400 () Bool)

(declare-fun d!2291498 () Bool)

(assert (= bs!1924400 (and d!2291498 d!2291330)))

(assert (=> bs!1924400 (= (dynLambda!29663 lambda!459796 (h!78336 (exprs!8849 empty!3583))) (validRegex!9963 (h!78336 (exprs!8849 empty!3583))))))

(declare-fun m!8044784 () Bool)

(assert (=> bs!1924400 m!8044784))

(assert (=> b!7409324 d!2291498))

(declare-fun b_lambda!286491 () Bool)

(assert (= b_lambda!286475 (or b!7409053 b_lambda!286491)))

(declare-fun bs!1924401 () Bool)

(declare-fun d!2291500 () Bool)

(assert (= bs!1924401 (and d!2291500 b!7409053)))

(assert (=> bs!1924401 (= (dynLambda!29659 lambda!459774 lt!2618710) (not (= lt!2618710 lt!2618653)))))

(assert (=> d!2291480 d!2291500))

(declare-fun b_lambda!286493 () Bool)

(assert (= b_lambda!286479 (or d!2291322 b_lambda!286493)))

(declare-fun bs!1924402 () Bool)

(declare-fun d!2291502 () Bool)

(assert (= bs!1924402 (and d!2291502 d!2291322)))

(assert (=> bs!1924402 (= (dynLambda!29663 lambda!459794 (h!78336 (exprs!8849 setElem!56257))) (validRegex!9963 (h!78336 (exprs!8849 setElem!56257))))))

(declare-fun m!8044786 () Bool)

(assert (=> bs!1924402 m!8044786))

(assert (=> b!7409370 d!2291502))

(check-sat (not b!7409319) (not b!7409368) (not d!2291448) (not b!7409384) (not bs!1924398) (not b!7409389) (not b!7409283) (not b!7409325) (not bm!682181) (not b!7409392) (not d!2291442) tp_is_empty!49081 (not d!2291458) (not bm!682185) (not d!2291482) (not b!7409350) (not bm!682167) (not b_lambda!286485) (not d!2291460) (not b!7409317) (not d!2291480) (not b_lambda!286481) (not d!2291470) (not b_lambda!286487) (not b!7409306) (not b!7409385) (not b_lambda!286489) (not b!7409304) (not b!7409399) (not d!2291440) (not b_lambda!286491) (not b!7409394) (not bs!1924397) (not bm!682180) (not d!2291462) (not b!7409386) (not b!7409360) (not b_lambda!286435) (not b!7409288) (not d!2291428) (not b!7409398) (not b_lambda!286483) (not b!7409371) (not bs!1924402) (not b!7409287) (not setNonEmpty!56265) (not b!7409393) (not d!2291446) (not b!7409363) (not d!2291436) (not b!7409396) (not d!2291434) (not b!7409359) (not b!7409369) (not b!7409362) (not b!7409309) (not b!7409383) (not b_lambda!286493) (not bs!1924400) (not d!2291452) (not b!7409318) (not d!2291468) (not b!7409366) (not d!2291444) (not b!7409301) (not b_lambda!286437) (not b!7409397) (not b!7409282) (not d!2291484) (not d!2291430) (not b!7409391) (not d!2291450) (not b!7409313) (not bm!682166) (not b!7409390) (not d!2291486) (not bs!1924399) (not d!2291476) (not b!7409387))
(check-sat)
