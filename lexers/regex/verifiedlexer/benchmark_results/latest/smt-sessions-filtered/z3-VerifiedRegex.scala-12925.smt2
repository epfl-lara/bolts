; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712674 () Bool)

(assert start!712674)

(declare-fun b_free!134001 () Bool)

(declare-fun b_next!134791 () Bool)

(assert (=> start!712674 (= b_free!134001 (not b_next!134791))))

(declare-fun tp!2075792 () Bool)

(declare-fun b_and!351381 () Bool)

(assert (=> start!712674 (= tp!2075792 b_and!351381)))

(declare-fun b!7314275 () Bool)

(declare-fun e!4378382 () Bool)

(declare-fun tp_is_empty!47491 () Bool)

(declare-fun tp!2075793 () Bool)

(assert (=> b!7314275 (= e!4378382 (and tp_is_empty!47491 tp!2075793))))

(declare-fun b!7314276 () Bool)

(declare-fun e!4378384 () Bool)

(declare-fun e!4378383 () Bool)

(assert (=> b!7314276 (= e!4378384 e!4378383)))

(declare-fun res!2955489 () Bool)

(assert (=> b!7314276 (=> (not res!2955489) (not e!4378383))))

(declare-datatypes ((B!3549 0))(
  ( (B!3550 (val!29105 Int)) )
))
(declare-datatypes ((List!71183 0))(
  ( (Nil!71059) (Cons!71059 (h!77507 B!3549) (t!385388 List!71183)) )
))
(declare-fun lRes!18 () List!71183)

(declare-fun lt!2601434 () List!71183)

(declare-fun subseq!835 (List!71183 List!71183) Bool)

(assert (=> b!7314276 (= res!2955489 (subseq!835 (t!385388 lRes!18) lt!2601434))))

(declare-datatypes ((Unit!164549 0))(
  ( (Unit!164550) )
))
(declare-fun lt!2601435 () Unit!164549)

(declare-fun subseqTail!78 (List!71183 List!71183) Unit!164549)

(assert (=> b!7314276 (= lt!2601435 (subseqTail!78 lRes!18 lt!2601434))))

(declare-fun b!7314277 () Bool)

(declare-fun res!2955487 () Bool)

(assert (=> b!7314277 (=> (not res!2955487) (not e!4378384))))

(get-info :version)

(assert (=> b!7314277 (= res!2955487 ((_ is Cons!71059) lRes!18))))

(declare-fun b!7314278 () Bool)

(declare-fun ListPrimitiveSize!430 (List!71183) Int)

(assert (=> b!7314278 (= e!4378383 (>= (ListPrimitiveSize!430 (t!385388 lRes!18)) (ListPrimitiveSize!430 lRes!18)))))

(declare-fun setIsEmpty!54163 () Bool)

(declare-fun setRes!54163 () Bool)

(assert (=> setIsEmpty!54163 setRes!54163))

(declare-fun b!7314279 () Bool)

(declare-fun e!4378381 () Bool)

(assert (=> b!7314279 (= e!4378381 e!4378384)))

(declare-fun res!2955486 () Bool)

(assert (=> b!7314279 (=> (not res!2955486) (not e!4378384))))

(assert (=> b!7314279 (= res!2955486 (subseq!835 lRes!18 lt!2601434))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!847 0))(
  ( (A!848 (val!29106 Int)) )
))
(declare-fun s!1437 () (InoxSet A!847))

(declare-fun f!883 () Int)

(declare-fun toList!11592 ((InoxSet B!3549)) List!71183)

(declare-fun flatMap!3034 ((InoxSet A!847) Int) (InoxSet B!3549))

(assert (=> b!7314279 (= lt!2601434 (toList!11592 (flatMap!3034 s!1437 f!883)))))

(declare-fun setNonEmpty!54163 () Bool)

(declare-fun tp!2075791 () Bool)

(declare-fun tp_is_empty!47489 () Bool)

(assert (=> setNonEmpty!54163 (= setRes!54163 (and tp!2075791 tp_is_empty!47489))))

(declare-fun setElem!54163 () A!847)

(declare-fun setRest!54163 () (InoxSet A!847))

(assert (=> setNonEmpty!54163 (= s!1437 ((_ map or) (store ((as const (Array A!847 Bool)) false) setElem!54163 true) setRest!54163))))

(declare-fun res!2955488 () Bool)

(assert (=> start!712674 (=> (not res!2955488) (not e!4378381))))

(declare-fun elmt!118 () A!847)

(assert (=> start!712674 (= res!2955488 (= s!1437 (store ((as const (Array A!847 Bool)) false) elmt!118 true)))))

(assert (=> start!712674 e!4378381))

(declare-fun condSetEmpty!54163 () Bool)

(assert (=> start!712674 (= condSetEmpty!54163 (= s!1437 ((as const (Array A!847 Bool)) false)))))

(assert (=> start!712674 setRes!54163))

(assert (=> start!712674 tp_is_empty!47489))

(assert (=> start!712674 tp!2075792))

(assert (=> start!712674 e!4378382))

(assert (= (and start!712674 res!2955488) b!7314279))

(assert (= (and b!7314279 res!2955486) b!7314277))

(assert (= (and b!7314277 res!2955487) b!7314276))

(assert (= (and b!7314276 res!2955489) b!7314278))

(assert (= (and start!712674 condSetEmpty!54163) setIsEmpty!54163))

(assert (= (and start!712674 (not condSetEmpty!54163)) setNonEmpty!54163))

(assert (= (and start!712674 ((_ is Cons!71059) lRes!18)) b!7314275))

(declare-fun m!7978388 () Bool)

(assert (=> b!7314276 m!7978388))

(declare-fun m!7978390 () Bool)

(assert (=> b!7314276 m!7978390))

(declare-fun m!7978392 () Bool)

(assert (=> b!7314278 m!7978392))

(declare-fun m!7978394 () Bool)

(assert (=> b!7314278 m!7978394))

(declare-fun m!7978396 () Bool)

(assert (=> b!7314279 m!7978396))

(declare-fun m!7978398 () Bool)

(assert (=> b!7314279 m!7978398))

(assert (=> b!7314279 m!7978398))

(declare-fun m!7978400 () Bool)

(assert (=> b!7314279 m!7978400))

(declare-fun m!7978402 () Bool)

(assert (=> start!712674 m!7978402))

(check-sat b_and!351381 (not b!7314278) (not b!7314279) (not setNonEmpty!54163) (not b!7314275) tp_is_empty!47491 tp_is_empty!47489 (not b!7314276) (not b_next!134791))
(check-sat b_and!351381 (not b_next!134791))
(get-model)

(declare-fun b!7314290 () Bool)

(declare-fun e!4378396 () Bool)

(assert (=> b!7314290 (= e!4378396 (subseq!835 (t!385388 (t!385388 lRes!18)) (t!385388 lt!2601434)))))

(declare-fun b!7314291 () Bool)

(declare-fun e!4378395 () Bool)

(assert (=> b!7314291 (= e!4378395 (subseq!835 (t!385388 lRes!18) (t!385388 lt!2601434)))))

(declare-fun d!2271028 () Bool)

(declare-fun res!2955500 () Bool)

(declare-fun e!4378393 () Bool)

(assert (=> d!2271028 (=> res!2955500 e!4378393)))

(assert (=> d!2271028 (= res!2955500 ((_ is Nil!71059) (t!385388 lRes!18)))))

(assert (=> d!2271028 (= (subseq!835 (t!385388 lRes!18) lt!2601434) e!4378393)))

(declare-fun b!7314289 () Bool)

(declare-fun e!4378394 () Bool)

(assert (=> b!7314289 (= e!4378394 e!4378395)))

(declare-fun res!2955498 () Bool)

(assert (=> b!7314289 (=> res!2955498 e!4378395)))

(assert (=> b!7314289 (= res!2955498 e!4378396)))

(declare-fun res!2955499 () Bool)

(assert (=> b!7314289 (=> (not res!2955499) (not e!4378396))))

(assert (=> b!7314289 (= res!2955499 (= (h!77507 (t!385388 lRes!18)) (h!77507 lt!2601434)))))

(declare-fun b!7314288 () Bool)

(assert (=> b!7314288 (= e!4378393 e!4378394)))

(declare-fun res!2955501 () Bool)

(assert (=> b!7314288 (=> (not res!2955501) (not e!4378394))))

(assert (=> b!7314288 (= res!2955501 ((_ is Cons!71059) lt!2601434))))

(assert (= (and d!2271028 (not res!2955500)) b!7314288))

(assert (= (and b!7314288 res!2955501) b!7314289))

(assert (= (and b!7314289 res!2955499) b!7314290))

(assert (= (and b!7314289 (not res!2955498)) b!7314291))

(declare-fun m!7978404 () Bool)

(assert (=> b!7314290 m!7978404))

(declare-fun m!7978406 () Bool)

(assert (=> b!7314291 m!7978406))

(assert (=> b!7314276 d!2271028))

(declare-fun b!7314320 () Bool)

(declare-fun c!1357817 () Bool)

(declare-fun isEmpty!40856 (List!71183) Bool)

(assert (=> b!7314320 (= c!1357817 (not (isEmpty!40856 (t!385388 lRes!18))))))

(declare-fun e!4378420 () Unit!164549)

(declare-fun e!4378421 () Unit!164549)

(assert (=> b!7314320 (= e!4378420 e!4378421)))

(declare-fun d!2271032 () Bool)

(declare-fun tail!14635 (List!71183) List!71183)

(assert (=> d!2271032 (subseq!835 (tail!14635 lRes!18) lt!2601434)))

(declare-fun lt!2601440 () Unit!164549)

(declare-fun e!4378419 () Unit!164549)

(assert (=> d!2271032 (= lt!2601440 e!4378419)))

(declare-fun c!1357815 () Bool)

(assert (=> d!2271032 (= c!1357815 (and ((_ is Cons!71059) lRes!18) ((_ is Cons!71059) lt!2601434)))))

(declare-fun e!4378422 () Bool)

(assert (=> d!2271032 e!4378422))

(declare-fun res!2955518 () Bool)

(assert (=> d!2271032 (=> (not res!2955518) (not e!4378422))))

(assert (=> d!2271032 (= res!2955518 (not (isEmpty!40856 lRes!18)))))

(assert (=> d!2271032 (= (subseqTail!78 lRes!18 lt!2601434) lt!2601440)))

(declare-fun b!7314321 () Bool)

(declare-fun call!665776 () Unit!164549)

(assert (=> b!7314321 (= e!4378421 call!665776)))

(declare-fun b!7314322 () Bool)

(assert (=> b!7314322 (= e!4378420 call!665776)))

(declare-fun b!7314323 () Bool)

(declare-fun Unit!164551 () Unit!164549)

(assert (=> b!7314323 (= e!4378419 Unit!164551)))

(declare-fun b!7314324 () Bool)

(declare-fun Unit!164552 () Unit!164549)

(assert (=> b!7314324 (= e!4378421 Unit!164552)))

(declare-fun b!7314325 () Bool)

(assert (=> b!7314325 (= e!4378419 e!4378420)))

(declare-fun c!1357816 () Bool)

(assert (=> b!7314325 (= c!1357816 (subseq!835 lRes!18 (t!385388 lt!2601434)))))

(declare-fun b!7314326 () Bool)

(assert (=> b!7314326 (= e!4378422 (subseq!835 lRes!18 lt!2601434))))

(declare-fun bm!665771 () Bool)

(assert (=> bm!665771 (= call!665776 (subseqTail!78 (ite c!1357816 lRes!18 (t!385388 lRes!18)) (t!385388 lt!2601434)))))

(assert (= (and d!2271032 res!2955518) b!7314326))

(assert (= (and d!2271032 c!1357815) b!7314325))

(assert (= (and d!2271032 (not c!1357815)) b!7314323))

(assert (= (and b!7314325 c!1357816) b!7314322))

(assert (= (and b!7314325 (not c!1357816)) b!7314320))

(assert (= (and b!7314320 c!1357817) b!7314321))

(assert (= (and b!7314320 (not c!1357817)) b!7314324))

(assert (= (or b!7314322 b!7314321) bm!665771))

(declare-fun m!7978418 () Bool)

(assert (=> b!7314325 m!7978418))

(declare-fun m!7978420 () Bool)

(assert (=> d!2271032 m!7978420))

(assert (=> d!2271032 m!7978420))

(declare-fun m!7978422 () Bool)

(assert (=> d!2271032 m!7978422))

(declare-fun m!7978424 () Bool)

(assert (=> d!2271032 m!7978424))

(assert (=> b!7314326 m!7978396))

(declare-fun m!7978426 () Bool)

(assert (=> bm!665771 m!7978426))

(declare-fun m!7978428 () Bool)

(assert (=> b!7314320 m!7978428))

(assert (=> b!7314276 d!2271032))

(declare-fun d!2271038 () Bool)

(declare-fun lt!2601444 () Int)

(assert (=> d!2271038 (>= lt!2601444 0)))

(declare-fun e!4378430 () Int)

(assert (=> d!2271038 (= lt!2601444 e!4378430)))

(declare-fun c!1357820 () Bool)

(assert (=> d!2271038 (= c!1357820 ((_ is Nil!71059) (t!385388 lRes!18)))))

(assert (=> d!2271038 (= (ListPrimitiveSize!430 (t!385388 lRes!18)) lt!2601444)))

(declare-fun b!7314336 () Bool)

(assert (=> b!7314336 (= e!4378430 0)))

(declare-fun b!7314337 () Bool)

(assert (=> b!7314337 (= e!4378430 (+ 1 (ListPrimitiveSize!430 (t!385388 (t!385388 lRes!18)))))))

(assert (= (and d!2271038 c!1357820) b!7314336))

(assert (= (and d!2271038 (not c!1357820)) b!7314337))

(declare-fun m!7978434 () Bool)

(assert (=> b!7314337 m!7978434))

(assert (=> b!7314278 d!2271038))

(declare-fun d!2271044 () Bool)

(declare-fun lt!2601445 () Int)

(assert (=> d!2271044 (>= lt!2601445 0)))

(declare-fun e!4378431 () Int)

(assert (=> d!2271044 (= lt!2601445 e!4378431)))

(declare-fun c!1357821 () Bool)

(assert (=> d!2271044 (= c!1357821 ((_ is Nil!71059) lRes!18))))

(assert (=> d!2271044 (= (ListPrimitiveSize!430 lRes!18) lt!2601445)))

(declare-fun b!7314338 () Bool)

(assert (=> b!7314338 (= e!4378431 0)))

(declare-fun b!7314339 () Bool)

(assert (=> b!7314339 (= e!4378431 (+ 1 (ListPrimitiveSize!430 (t!385388 lRes!18))))))

(assert (= (and d!2271044 c!1357821) b!7314338))

(assert (= (and d!2271044 (not c!1357821)) b!7314339))

(assert (=> b!7314339 m!7978392))

(assert (=> b!7314278 d!2271044))

(declare-fun b!7314342 () Bool)

(declare-fun e!4378435 () Bool)

(assert (=> b!7314342 (= e!4378435 (subseq!835 (t!385388 lRes!18) (t!385388 lt!2601434)))))

(declare-fun b!7314343 () Bool)

(declare-fun e!4378434 () Bool)

(assert (=> b!7314343 (= e!4378434 (subseq!835 lRes!18 (t!385388 lt!2601434)))))

(declare-fun d!2271046 () Bool)

(declare-fun res!2955526 () Bool)

(declare-fun e!4378432 () Bool)

(assert (=> d!2271046 (=> res!2955526 e!4378432)))

(assert (=> d!2271046 (= res!2955526 ((_ is Nil!71059) lRes!18))))

(assert (=> d!2271046 (= (subseq!835 lRes!18 lt!2601434) e!4378432)))

(declare-fun b!7314341 () Bool)

(declare-fun e!4378433 () Bool)

(assert (=> b!7314341 (= e!4378433 e!4378434)))

(declare-fun res!2955524 () Bool)

(assert (=> b!7314341 (=> res!2955524 e!4378434)))

(assert (=> b!7314341 (= res!2955524 e!4378435)))

(declare-fun res!2955525 () Bool)

(assert (=> b!7314341 (=> (not res!2955525) (not e!4378435))))

(assert (=> b!7314341 (= res!2955525 (= (h!77507 lRes!18) (h!77507 lt!2601434)))))

(declare-fun b!7314340 () Bool)

(assert (=> b!7314340 (= e!4378432 e!4378433)))

(declare-fun res!2955527 () Bool)

(assert (=> b!7314340 (=> (not res!2955527) (not e!4378433))))

(assert (=> b!7314340 (= res!2955527 ((_ is Cons!71059) lt!2601434))))

(assert (= (and d!2271046 (not res!2955526)) b!7314340))

(assert (= (and b!7314340 res!2955527) b!7314341))

(assert (= (and b!7314341 res!2955525) b!7314342))

(assert (= (and b!7314341 (not res!2955524)) b!7314343))

(assert (=> b!7314342 m!7978406))

(assert (=> b!7314343 m!7978418))

(assert (=> b!7314279 d!2271046))

(declare-fun d!2271048 () Bool)

(declare-fun e!4378438 () Bool)

(assert (=> d!2271048 e!4378438))

(declare-fun res!2955530 () Bool)

(assert (=> d!2271048 (=> (not res!2955530) (not e!4378438))))

(declare-fun lt!2601448 () List!71183)

(declare-fun noDuplicate!3051 (List!71183) Bool)

(assert (=> d!2271048 (= res!2955530 (noDuplicate!3051 lt!2601448))))

(declare-fun choose!56697 ((InoxSet B!3549)) List!71183)

(assert (=> d!2271048 (= lt!2601448 (choose!56697 (flatMap!3034 s!1437 f!883)))))

(assert (=> d!2271048 (= (toList!11592 (flatMap!3034 s!1437 f!883)) lt!2601448)))

(declare-fun b!7314346 () Bool)

(declare-fun content!14870 (List!71183) (InoxSet B!3549))

(assert (=> b!7314346 (= e!4378438 (= (content!14870 lt!2601448) (flatMap!3034 s!1437 f!883)))))

(assert (= (and d!2271048 res!2955530) b!7314346))

(declare-fun m!7978436 () Bool)

(assert (=> d!2271048 m!7978436))

(assert (=> d!2271048 m!7978398))

(declare-fun m!7978438 () Bool)

(assert (=> d!2271048 m!7978438))

(declare-fun m!7978440 () Bool)

(assert (=> b!7314346 m!7978440))

(assert (=> b!7314279 d!2271048))

(declare-fun d!2271050 () Bool)

(declare-fun choose!56699 ((InoxSet A!847) Int) (InoxSet B!3549))

(assert (=> d!2271050 (= (flatMap!3034 s!1437 f!883) (choose!56699 s!1437 f!883))))

(declare-fun bs!1914672 () Bool)

(assert (= bs!1914672 d!2271050))

(declare-fun m!7978442 () Bool)

(assert (=> bs!1914672 m!7978442))

(assert (=> b!7314279 d!2271050))

(declare-fun b!7314365 () Bool)

(declare-fun e!4378449 () Bool)

(declare-fun tp!2075796 () Bool)

(assert (=> b!7314365 (= e!4378449 (and tp_is_empty!47491 tp!2075796))))

(assert (=> b!7314275 (= tp!2075793 e!4378449)))

(assert (= (and b!7314275 ((_ is Cons!71059) (t!385388 lRes!18))) b!7314365))

(declare-fun condSetEmpty!54166 () Bool)

(assert (=> setNonEmpty!54163 (= condSetEmpty!54166 (= setRest!54163 ((as const (Array A!847 Bool)) false)))))

(declare-fun setRes!54166 () Bool)

(assert (=> setNonEmpty!54163 (= tp!2075791 setRes!54166)))

(declare-fun setIsEmpty!54166 () Bool)

(assert (=> setIsEmpty!54166 setRes!54166))

(declare-fun setNonEmpty!54166 () Bool)

(declare-fun tp!2075799 () Bool)

(assert (=> setNonEmpty!54166 (= setRes!54166 (and tp!2075799 tp_is_empty!47489))))

(declare-fun setElem!54166 () A!847)

(declare-fun setRest!54166 () (InoxSet A!847))

(assert (=> setNonEmpty!54166 (= setRest!54163 ((_ map or) (store ((as const (Array A!847 Bool)) false) setElem!54166 true) setRest!54166))))

(assert (= (and setNonEmpty!54163 condSetEmpty!54166) setIsEmpty!54166))

(assert (= (and setNonEmpty!54163 (not condSetEmpty!54166)) setNonEmpty!54166))

(check-sat (not b!7314365) (not b!7314339) (not b!7314343) (not b!7314290) (not bm!665771) (not b!7314291) (not d!2271032) (not d!2271050) (not b!7314337) (not b!7314342) (not b!7314320) (not b_next!134791) (not b!7314346) b_and!351381 (not b!7314326) tp_is_empty!47491 (not b!7314325) tp_is_empty!47489 (not setNonEmpty!54166) (not d!2271048))
(check-sat b_and!351381 (not b_next!134791))
