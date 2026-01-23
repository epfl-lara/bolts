; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!236388 () Bool)

(assert start!236388)

(declare-fun b!2412216 () Bool)

(declare-fun e!1535541 () Bool)

(declare-datatypes ((C!14324 0))(
  ( (C!14325 (val!8404 Int)) )
))
(declare-datatypes ((Regex!7083 0))(
  ( (ElementMatch!7083 (c!384315 C!14324)) (Concat!11719 (regOne!14678 Regex!7083) (regTwo!14678 Regex!7083)) (EmptyExpr!7083) (Star!7083 (reg!7412 Regex!7083)) (EmptyLang!7083) (Union!7083 (regOne!14679 Regex!7083) (regTwo!14679 Regex!7083)) )
))
(declare-fun lt!873786 () Regex!7083)

(declare-datatypes ((List!28404 0))(
  ( (Nil!28306) (Cons!28306 (h!33707 C!14324) (t!208381 List!28404)) )
))
(declare-fun s!9460 () List!28404)

(declare-fun matchR!3200 (Regex!7083 List!28404) Bool)

(assert (=> b!2412216 (= e!1535541 (matchR!3200 lt!873786 s!9460))))

(declare-fun b!2412217 () Bool)

(declare-fun e!1535537 () Bool)

(declare-fun tp!767298 () Bool)

(assert (=> b!2412217 (= e!1535537 tp!767298)))

(declare-fun b!2412218 () Bool)

(declare-fun res!1024496 () Bool)

(declare-fun e!1535540 () Bool)

(assert (=> b!2412218 (=> (not res!1024496) (not e!1535540))))

(declare-fun r!13927 () Regex!7083)

(declare-datatypes ((List!28405 0))(
  ( (Nil!28307) (Cons!28307 (h!33708 Regex!7083) (t!208382 List!28405)) )
))
(declare-fun l!9164 () List!28405)

(declare-fun generalisedConcat!184 (List!28405) Regex!7083)

(assert (=> b!2412218 (= res!1024496 (= r!13927 (generalisedConcat!184 l!9164)))))

(declare-fun b!2412219 () Bool)

(declare-fun e!1535546 () Bool)

(declare-fun e!1535544 () Bool)

(assert (=> b!2412219 (= e!1535546 e!1535544)))

(declare-fun res!1024494 () Bool)

(assert (=> b!2412219 (=> res!1024494 e!1535544)))

(declare-fun lt!873788 () Regex!7083)

(declare-fun validRegex!2805 (Regex!7083) Bool)

(assert (=> b!2412219 (= res!1024494 (not (validRegex!2805 lt!873788)))))

(declare-datatypes ((tuple2!27962 0))(
  ( (tuple2!27963 (_1!16522 List!28404) (_2!16522 List!28404)) )
))
(declare-datatypes ((Option!5592 0))(
  ( (None!5591) (Some!5591 (v!30999 tuple2!27962)) )
))
(declare-fun isDefined!4420 (Option!5592) Bool)

(declare-fun findConcatSeparation!700 (Regex!7083 Regex!7083 List!28404 List!28404 List!28404) Option!5592)

(assert (=> b!2412219 (isDefined!4420 (findConcatSeparation!700 lt!873788 EmptyExpr!7083 Nil!28306 s!9460 s!9460))))

(declare-datatypes ((Unit!41437 0))(
  ( (Unit!41438) )
))
(declare-fun lt!873790 () Unit!41437)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!56 (Regex!7083 Regex!7083 List!28404) Unit!41437)

(assert (=> b!2412219 (= lt!873790 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!56 lt!873788 EmptyExpr!7083 s!9460))))

(assert (=> b!2412219 e!1535541))

(declare-fun res!1024488 () Bool)

(assert (=> b!2412219 (=> (not res!1024488) (not e!1535541))))

(declare-fun ++!7012 (List!28404 List!28404) List!28404)

(assert (=> b!2412219 (= res!1024488 (matchR!3200 lt!873786 (++!7012 s!9460 Nil!28306)))))

(assert (=> b!2412219 (= lt!873786 (Concat!11719 lt!873788 EmptyExpr!7083))))

(declare-fun lt!873785 () Unit!41437)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!82 (Regex!7083 Regex!7083 List!28404 List!28404) Unit!41437)

(assert (=> b!2412219 (= lt!873785 (lemmaTwoRegexMatchThenConcatMatchesConcatString!82 lt!873788 EmptyExpr!7083 s!9460 Nil!28306))))

(declare-fun b!2412220 () Bool)

(declare-fun tp_is_empty!11579 () Bool)

(assert (=> b!2412220 (= e!1535537 tp_is_empty!11579)))

(declare-fun b!2412221 () Bool)

(declare-fun e!1535538 () Bool)

(declare-fun e!1535542 () Bool)

(assert (=> b!2412221 (= e!1535538 e!1535542)))

(declare-fun res!1024487 () Bool)

(assert (=> b!2412221 (=> res!1024487 e!1535542)))

(declare-fun lt!873784 () List!28405)

(declare-fun isEmpty!16313 (List!28405) Bool)

(assert (=> b!2412221 (= res!1024487 (not (isEmpty!16313 lt!873784)))))

(declare-fun tail!3656 (List!28405) List!28405)

(assert (=> b!2412221 (= lt!873784 (tail!3656 l!9164))))

(declare-fun b!2412222 () Bool)

(assert (=> b!2412222 (= e!1535540 (not e!1535538))))

(declare-fun res!1024490 () Bool)

(assert (=> b!2412222 (=> res!1024490 e!1535538)))

(get-info :version)

(assert (=> b!2412222 (= res!1024490 (or ((_ is Concat!11719) r!13927) ((_ is EmptyExpr!7083) r!13927)))))

(declare-fun matchRSpec!932 (Regex!7083 List!28404) Bool)

(assert (=> b!2412222 (= (matchR!3200 r!13927 s!9460) (matchRSpec!932 r!13927 s!9460))))

(declare-fun lt!873787 () Unit!41437)

(declare-fun mainMatchTheorem!932 (Regex!7083 List!28404) Unit!41437)

(assert (=> b!2412222 (= lt!873787 (mainMatchTheorem!932 r!13927 s!9460))))

(declare-fun res!1024491 () Bool)

(assert (=> start!236388 (=> (not res!1024491) (not e!1535540))))

(declare-fun lambda!90805 () Int)

(declare-fun forall!5717 (List!28405 Int) Bool)

(assert (=> start!236388 (= res!1024491 (forall!5717 l!9164 lambda!90805))))

(assert (=> start!236388 e!1535540))

(declare-fun e!1535543 () Bool)

(assert (=> start!236388 e!1535543))

(assert (=> start!236388 e!1535537))

(declare-fun e!1535539 () Bool)

(assert (=> start!236388 e!1535539))

(declare-fun b!2412215 () Bool)

(declare-fun e!1535545 () Bool)

(assert (=> b!2412215 (= e!1535542 e!1535545)))

(declare-fun res!1024489 () Bool)

(assert (=> b!2412215 (=> res!1024489 e!1535545)))

(declare-fun lt!873789 () Regex!7083)

(assert (=> b!2412215 (= res!1024489 (not (= lt!873789 EmptyExpr!7083)))))

(assert (=> b!2412215 (= lt!873789 (generalisedConcat!184 lt!873784))))

(declare-fun b!2412223 () Bool)

(declare-fun tp!767294 () Bool)

(declare-fun tp!767295 () Bool)

(assert (=> b!2412223 (= e!1535543 (and tp!767294 tp!767295))))

(declare-fun b!2412224 () Bool)

(assert (=> b!2412224 (= e!1535545 e!1535546)))

(declare-fun res!1024493 () Bool)

(assert (=> b!2412224 (=> res!1024493 e!1535546)))

(assert (=> b!2412224 (= res!1024493 (not (matchR!3200 lt!873788 s!9460)))))

(declare-fun head!5384 (List!28405) Regex!7083)

(assert (=> b!2412224 (= lt!873788 (head!5384 l!9164))))

(declare-fun b!2412225 () Bool)

(declare-fun tp!767299 () Bool)

(assert (=> b!2412225 (= e!1535539 (and tp_is_empty!11579 tp!767299))))

(declare-fun b!2412226 () Bool)

(declare-fun res!1024495 () Bool)

(assert (=> b!2412226 (=> res!1024495 e!1535538)))

(assert (=> b!2412226 (= res!1024495 (isEmpty!16313 l!9164))))

(declare-fun b!2412227 () Bool)

(declare-fun tp!767300 () Bool)

(declare-fun tp!767297 () Bool)

(assert (=> b!2412227 (= e!1535537 (and tp!767300 tp!767297))))

(declare-fun b!2412228 () Bool)

(assert (=> b!2412228 (= e!1535544 (= (++!7012 Nil!28306 s!9460) s!9460))))

(declare-fun b!2412229 () Bool)

(declare-fun res!1024492 () Bool)

(assert (=> b!2412229 (=> res!1024492 e!1535544)))

(assert (=> b!2412229 (= res!1024492 (not (validRegex!2805 lt!873789)))))

(declare-fun b!2412230 () Bool)

(declare-fun tp!767301 () Bool)

(declare-fun tp!767296 () Bool)

(assert (=> b!2412230 (= e!1535537 (and tp!767301 tp!767296))))

(assert (= (and start!236388 res!1024491) b!2412218))

(assert (= (and b!2412218 res!1024496) b!2412222))

(assert (= (and b!2412222 (not res!1024490)) b!2412226))

(assert (= (and b!2412226 (not res!1024495)) b!2412221))

(assert (= (and b!2412221 (not res!1024487)) b!2412215))

(assert (= (and b!2412215 (not res!1024489)) b!2412224))

(assert (= (and b!2412224 (not res!1024493)) b!2412219))

(assert (= (and b!2412219 res!1024488) b!2412216))

(assert (= (and b!2412219 (not res!1024494)) b!2412229))

(assert (= (and b!2412229 (not res!1024492)) b!2412228))

(assert (= (and start!236388 ((_ is Cons!28307) l!9164)) b!2412223))

(assert (= (and start!236388 ((_ is ElementMatch!7083) r!13927)) b!2412220))

(assert (= (and start!236388 ((_ is Concat!11719) r!13927)) b!2412230))

(assert (= (and start!236388 ((_ is Star!7083) r!13927)) b!2412217))

(assert (= (and start!236388 ((_ is Union!7083) r!13927)) b!2412227))

(assert (= (and start!236388 ((_ is Cons!28306) s!9460)) b!2412225))

(declare-fun m!2802961 () Bool)

(assert (=> b!2412226 m!2802961))

(declare-fun m!2802963 () Bool)

(assert (=> b!2412229 m!2802963))

(declare-fun m!2802965 () Bool)

(assert (=> b!2412219 m!2802965))

(declare-fun m!2802967 () Bool)

(assert (=> b!2412219 m!2802967))

(declare-fun m!2802969 () Bool)

(assert (=> b!2412219 m!2802969))

(declare-fun m!2802971 () Bool)

(assert (=> b!2412219 m!2802971))

(assert (=> b!2412219 m!2802965))

(declare-fun m!2802973 () Bool)

(assert (=> b!2412219 m!2802973))

(assert (=> b!2412219 m!2802969))

(declare-fun m!2802975 () Bool)

(assert (=> b!2412219 m!2802975))

(declare-fun m!2802977 () Bool)

(assert (=> b!2412219 m!2802977))

(declare-fun m!2802979 () Bool)

(assert (=> b!2412228 m!2802979))

(declare-fun m!2802981 () Bool)

(assert (=> b!2412218 m!2802981))

(declare-fun m!2802983 () Bool)

(assert (=> b!2412216 m!2802983))

(declare-fun m!2802985 () Bool)

(assert (=> start!236388 m!2802985))

(declare-fun m!2802987 () Bool)

(assert (=> b!2412222 m!2802987))

(declare-fun m!2802989 () Bool)

(assert (=> b!2412222 m!2802989))

(declare-fun m!2802991 () Bool)

(assert (=> b!2412222 m!2802991))

(declare-fun m!2802993 () Bool)

(assert (=> b!2412215 m!2802993))

(declare-fun m!2802995 () Bool)

(assert (=> b!2412221 m!2802995))

(declare-fun m!2802997 () Bool)

(assert (=> b!2412221 m!2802997))

(declare-fun m!2802999 () Bool)

(assert (=> b!2412224 m!2802999))

(declare-fun m!2803001 () Bool)

(assert (=> b!2412224 m!2803001))

(check-sat (not b!2412224) (not b!2412223) tp_is_empty!11579 (not b!2412222) (not b!2412230) (not b!2412225) (not b!2412228) (not b!2412227) (not b!2412215) (not b!2412229) (not start!236388) (not b!2412219) (not b!2412217) (not b!2412226) (not b!2412221) (not b!2412216) (not b!2412218))
(check-sat)
(get-model)

(declare-fun d!700778 () Bool)

(declare-fun e!1535589 () Bool)

(assert (=> d!700778 e!1535589))

(declare-fun c!384334 () Bool)

(assert (=> d!700778 (= c!384334 ((_ is EmptyExpr!7083) r!13927))))

(declare-fun lt!873797 () Bool)

(declare-fun e!1535599 () Bool)

(assert (=> d!700778 (= lt!873797 e!1535599)))

(declare-fun c!384335 () Bool)

(declare-fun isEmpty!16315 (List!28404) Bool)

(assert (=> d!700778 (= c!384335 (isEmpty!16315 s!9460))))

(assert (=> d!700778 (validRegex!2805 r!13927)))

(assert (=> d!700778 (= (matchR!3200 r!13927 s!9460) lt!873797)))

(declare-fun b!2412319 () Bool)

(declare-fun e!1535590 () Bool)

(declare-fun e!1535594 () Bool)

(assert (=> b!2412319 (= e!1535590 e!1535594)))

(declare-fun res!1024549 () Bool)

(assert (=> b!2412319 (=> res!1024549 e!1535594)))

(declare-fun call!147313 () Bool)

(assert (=> b!2412319 (= res!1024549 call!147313)))

(declare-fun b!2412320 () Bool)

(declare-fun e!1535595 () Bool)

(assert (=> b!2412320 (= e!1535595 e!1535590)))

(declare-fun res!1024548 () Bool)

(assert (=> b!2412320 (=> (not res!1024548) (not e!1535590))))

(assert (=> b!2412320 (= res!1024548 (not lt!873797))))

(declare-fun b!2412321 () Bool)

(declare-fun e!1535593 () Bool)

(assert (=> b!2412321 (= e!1535593 (not lt!873797))))

(declare-fun b!2412322 () Bool)

(declare-fun head!5386 (List!28404) C!14324)

(assert (=> b!2412322 (= e!1535594 (not (= (head!5386 s!9460) (c!384315 r!13927))))))

(declare-fun b!2412323 () Bool)

(declare-fun res!1024554 () Bool)

(declare-fun e!1535596 () Bool)

(assert (=> b!2412323 (=> (not res!1024554) (not e!1535596))))

(assert (=> b!2412323 (= res!1024554 (not call!147313))))

(declare-fun b!2412324 () Bool)

(declare-fun derivativeStep!1782 (Regex!7083 C!14324) Regex!7083)

(declare-fun tail!3658 (List!28404) List!28404)

(assert (=> b!2412324 (= e!1535599 (matchR!3200 (derivativeStep!1782 r!13927 (head!5386 s!9460)) (tail!3658 s!9460)))))

(declare-fun bm!147308 () Bool)

(assert (=> bm!147308 (= call!147313 (isEmpty!16315 s!9460))))

(declare-fun b!2412325 () Bool)

(declare-fun res!1024555 () Bool)

(assert (=> b!2412325 (=> (not res!1024555) (not e!1535596))))

(assert (=> b!2412325 (= res!1024555 (isEmpty!16315 (tail!3658 s!9460)))))

(declare-fun b!2412326 () Bool)

(assert (=> b!2412326 (= e!1535596 (= (head!5386 s!9460) (c!384315 r!13927)))))

(declare-fun b!2412327 () Bool)

(declare-fun nullable!2125 (Regex!7083) Bool)

(assert (=> b!2412327 (= e!1535599 (nullable!2125 r!13927))))

(declare-fun b!2412328 () Bool)

(declare-fun res!1024550 () Bool)

(assert (=> b!2412328 (=> res!1024550 e!1535595)))

(assert (=> b!2412328 (= res!1024550 e!1535596)))

(declare-fun res!1024545 () Bool)

(assert (=> b!2412328 (=> (not res!1024545) (not e!1535596))))

(assert (=> b!2412328 (= res!1024545 lt!873797)))

(declare-fun b!2412329 () Bool)

(declare-fun res!1024551 () Bool)

(assert (=> b!2412329 (=> res!1024551 e!1535594)))

(assert (=> b!2412329 (= res!1024551 (not (isEmpty!16315 (tail!3658 s!9460))))))

(declare-fun b!2412330 () Bool)

(declare-fun res!1024556 () Bool)

(assert (=> b!2412330 (=> res!1024556 e!1535595)))

(assert (=> b!2412330 (= res!1024556 (not ((_ is ElementMatch!7083) r!13927)))))

(assert (=> b!2412330 (= e!1535593 e!1535595)))

(declare-fun b!2412331 () Bool)

(assert (=> b!2412331 (= e!1535589 (= lt!873797 call!147313))))

(declare-fun b!2412332 () Bool)

(assert (=> b!2412332 (= e!1535589 e!1535593)))

(declare-fun c!384336 () Bool)

(assert (=> b!2412332 (= c!384336 ((_ is EmptyLang!7083) r!13927))))

(assert (= (and d!700778 c!384335) b!2412327))

(assert (= (and d!700778 (not c!384335)) b!2412324))

(assert (= (and d!700778 c!384334) b!2412331))

(assert (= (and d!700778 (not c!384334)) b!2412332))

(assert (= (and b!2412332 c!384336) b!2412321))

(assert (= (and b!2412332 (not c!384336)) b!2412330))

(assert (= (and b!2412330 (not res!1024556)) b!2412328))

(assert (= (and b!2412328 res!1024545) b!2412323))

(assert (= (and b!2412323 res!1024554) b!2412325))

(assert (= (and b!2412325 res!1024555) b!2412326))

(assert (= (and b!2412328 (not res!1024550)) b!2412320))

(assert (= (and b!2412320 res!1024548) b!2412319))

(assert (= (and b!2412319 (not res!1024549)) b!2412329))

(assert (= (and b!2412329 (not res!1024551)) b!2412322))

(assert (= (or b!2412331 b!2412323 b!2412319) bm!147308))

(declare-fun m!2803027 () Bool)

(assert (=> b!2412329 m!2803027))

(assert (=> b!2412329 m!2803027))

(declare-fun m!2803031 () Bool)

(assert (=> b!2412329 m!2803031))

(declare-fun m!2803033 () Bool)

(assert (=> b!2412326 m!2803033))

(declare-fun m!2803035 () Bool)

(assert (=> bm!147308 m!2803035))

(assert (=> b!2412324 m!2803033))

(assert (=> b!2412324 m!2803033))

(declare-fun m!2803037 () Bool)

(assert (=> b!2412324 m!2803037))

(assert (=> b!2412324 m!2803027))

(assert (=> b!2412324 m!2803037))

(assert (=> b!2412324 m!2803027))

(declare-fun m!2803039 () Bool)

(assert (=> b!2412324 m!2803039))

(declare-fun m!2803041 () Bool)

(assert (=> b!2412327 m!2803041))

(assert (=> b!2412325 m!2803027))

(assert (=> b!2412325 m!2803027))

(assert (=> b!2412325 m!2803031))

(assert (=> b!2412322 m!2803033))

(assert (=> d!700778 m!2803035))

(declare-fun m!2803043 () Bool)

(assert (=> d!700778 m!2803043))

(assert (=> b!2412222 d!700778))

(declare-fun b!2412448 () Bool)

(assert (=> b!2412448 true))

(assert (=> b!2412448 true))

(declare-fun bs!463467 () Bool)

(declare-fun b!2412451 () Bool)

(assert (= bs!463467 (and b!2412451 b!2412448)))

(declare-fun lambda!90817 () Int)

(declare-fun lambda!90816 () Int)

(assert (=> bs!463467 (not (= lambda!90817 lambda!90816))))

(assert (=> b!2412451 true))

(assert (=> b!2412451 true))

(declare-fun b!2412446 () Bool)

(declare-fun e!1535672 () Bool)

(assert (=> b!2412446 (= e!1535672 (matchRSpec!932 (regTwo!14679 r!13927) s!9460))))

(declare-fun b!2412447 () Bool)

(declare-fun e!1535669 () Bool)

(declare-fun e!1535671 () Bool)

(assert (=> b!2412447 (= e!1535669 e!1535671)))

(declare-fun c!384365 () Bool)

(assert (=> b!2412447 (= c!384365 ((_ is Star!7083) r!13927))))

(declare-fun bm!147326 () Bool)

(declare-fun call!147332 () Bool)

(assert (=> bm!147326 (= call!147332 (isEmpty!16315 s!9460))))

(declare-fun e!1535666 () Bool)

(declare-fun call!147331 () Bool)

(assert (=> b!2412448 (= e!1535666 call!147331)))

(declare-fun b!2412449 () Bool)

(declare-fun c!384366 () Bool)

(assert (=> b!2412449 (= c!384366 ((_ is ElementMatch!7083) r!13927))))

(declare-fun e!1535668 () Bool)

(declare-fun e!1535670 () Bool)

(assert (=> b!2412449 (= e!1535668 e!1535670)))

(declare-fun b!2412450 () Bool)

(declare-fun res!1024612 () Bool)

(assert (=> b!2412450 (=> res!1024612 e!1535666)))

(assert (=> b!2412450 (= res!1024612 call!147332)))

(assert (=> b!2412450 (= e!1535671 e!1535666)))

(declare-fun bm!147327 () Bool)

(declare-fun Exists!1132 (Int) Bool)

(assert (=> bm!147327 (= call!147331 (Exists!1132 (ite c!384365 lambda!90816 lambda!90817)))))

(declare-fun d!700794 () Bool)

(declare-fun c!384367 () Bool)

(assert (=> d!700794 (= c!384367 ((_ is EmptyExpr!7083) r!13927))))

(declare-fun e!1535667 () Bool)

(assert (=> d!700794 (= (matchRSpec!932 r!13927 s!9460) e!1535667)))

(assert (=> b!2412451 (= e!1535671 call!147331)))

(declare-fun b!2412452 () Bool)

(assert (=> b!2412452 (= e!1535669 e!1535672)))

(declare-fun res!1024613 () Bool)

(assert (=> b!2412452 (= res!1024613 (matchRSpec!932 (regOne!14679 r!13927) s!9460))))

(assert (=> b!2412452 (=> res!1024613 e!1535672)))

(declare-fun b!2412453 () Bool)

(assert (=> b!2412453 (= e!1535667 call!147332)))

(declare-fun b!2412454 () Bool)

(assert (=> b!2412454 (= e!1535670 (= s!9460 (Cons!28306 (c!384315 r!13927) Nil!28306)))))

(declare-fun b!2412455 () Bool)

(assert (=> b!2412455 (= e!1535667 e!1535668)))

(declare-fun res!1024614 () Bool)

(assert (=> b!2412455 (= res!1024614 (not ((_ is EmptyLang!7083) r!13927)))))

(assert (=> b!2412455 (=> (not res!1024614) (not e!1535668))))

(declare-fun b!2412456 () Bool)

(declare-fun c!384364 () Bool)

(assert (=> b!2412456 (= c!384364 ((_ is Union!7083) r!13927))))

(assert (=> b!2412456 (= e!1535670 e!1535669)))

(assert (= (and d!700794 c!384367) b!2412453))

(assert (= (and d!700794 (not c!384367)) b!2412455))

(assert (= (and b!2412455 res!1024614) b!2412449))

(assert (= (and b!2412449 c!384366) b!2412454))

(assert (= (and b!2412449 (not c!384366)) b!2412456))

(assert (= (and b!2412456 c!384364) b!2412452))

(assert (= (and b!2412456 (not c!384364)) b!2412447))

(assert (= (and b!2412452 (not res!1024613)) b!2412446))

(assert (= (and b!2412447 c!384365) b!2412450))

(assert (= (and b!2412447 (not c!384365)) b!2412451))

(assert (= (and b!2412450 (not res!1024612)) b!2412448))

(assert (= (or b!2412448 b!2412451) bm!147327))

(assert (= (or b!2412453 b!2412450) bm!147326))

(declare-fun m!2803067 () Bool)

(assert (=> b!2412446 m!2803067))

(assert (=> bm!147326 m!2803035))

(declare-fun m!2803069 () Bool)

(assert (=> bm!147327 m!2803069))

(declare-fun m!2803071 () Bool)

(assert (=> b!2412452 m!2803071))

(assert (=> b!2412222 d!700794))

(declare-fun d!700804 () Bool)

(assert (=> d!700804 (= (matchR!3200 r!13927 s!9460) (matchRSpec!932 r!13927 s!9460))))

(declare-fun lt!873807 () Unit!41437)

(declare-fun choose!14270 (Regex!7083 List!28404) Unit!41437)

(assert (=> d!700804 (= lt!873807 (choose!14270 r!13927 s!9460))))

(assert (=> d!700804 (validRegex!2805 r!13927)))

(assert (=> d!700804 (= (mainMatchTheorem!932 r!13927 s!9460) lt!873807)))

(declare-fun bs!463468 () Bool)

(assert (= bs!463468 d!700804))

(assert (=> bs!463468 m!2802987))

(assert (=> bs!463468 m!2802989))

(declare-fun m!2803087 () Bool)

(assert (=> bs!463468 m!2803087))

(assert (=> bs!463468 m!2803043))

(assert (=> b!2412222 d!700804))

(declare-fun d!700808 () Bool)

(declare-fun res!1024634 () Bool)

(declare-fun e!1535702 () Bool)

(assert (=> d!700808 (=> res!1024634 e!1535702)))

(assert (=> d!700808 (= res!1024634 ((_ is Nil!28307) l!9164))))

(assert (=> d!700808 (= (forall!5717 l!9164 lambda!90805) e!1535702)))

(declare-fun b!2412506 () Bool)

(declare-fun e!1535703 () Bool)

(assert (=> b!2412506 (= e!1535702 e!1535703)))

(declare-fun res!1024635 () Bool)

(assert (=> b!2412506 (=> (not res!1024635) (not e!1535703))))

(declare-fun dynLambda!12187 (Int Regex!7083) Bool)

(assert (=> b!2412506 (= res!1024635 (dynLambda!12187 lambda!90805 (h!33708 l!9164)))))

(declare-fun b!2412507 () Bool)

(assert (=> b!2412507 (= e!1535703 (forall!5717 (t!208382 l!9164) lambda!90805))))

(assert (= (and d!700808 (not res!1024634)) b!2412506))

(assert (= (and b!2412506 res!1024635) b!2412507))

(declare-fun b_lambda!74517 () Bool)

(assert (=> (not b_lambda!74517) (not b!2412506)))

(declare-fun m!2803089 () Bool)

(assert (=> b!2412506 m!2803089))

(declare-fun m!2803091 () Bool)

(assert (=> b!2412507 m!2803091))

(assert (=> start!236388 d!700808))

(declare-fun d!700810 () Bool)

(declare-fun e!1535704 () Bool)

(assert (=> d!700810 e!1535704))

(declare-fun c!384381 () Bool)

(assert (=> d!700810 (= c!384381 ((_ is EmptyExpr!7083) lt!873786))))

(declare-fun lt!873810 () Bool)

(declare-fun e!1535710 () Bool)

(assert (=> d!700810 (= lt!873810 e!1535710)))

(declare-fun c!384382 () Bool)

(assert (=> d!700810 (= c!384382 (isEmpty!16315 s!9460))))

(assert (=> d!700810 (validRegex!2805 lt!873786)))

(assert (=> d!700810 (= (matchR!3200 lt!873786 s!9460) lt!873810)))

(declare-fun b!2412508 () Bool)

(declare-fun e!1535705 () Bool)

(declare-fun e!1535707 () Bool)

(assert (=> b!2412508 (= e!1535705 e!1535707)))

(declare-fun res!1024638 () Bool)

(assert (=> b!2412508 (=> res!1024638 e!1535707)))

(declare-fun call!147336 () Bool)

(assert (=> b!2412508 (= res!1024638 call!147336)))

(declare-fun b!2412509 () Bool)

(declare-fun e!1535708 () Bool)

(assert (=> b!2412509 (= e!1535708 e!1535705)))

(declare-fun res!1024637 () Bool)

(assert (=> b!2412509 (=> (not res!1024637) (not e!1535705))))

(assert (=> b!2412509 (= res!1024637 (not lt!873810))))

(declare-fun b!2412510 () Bool)

(declare-fun e!1535706 () Bool)

(assert (=> b!2412510 (= e!1535706 (not lt!873810))))

(declare-fun b!2412511 () Bool)

(assert (=> b!2412511 (= e!1535707 (not (= (head!5386 s!9460) (c!384315 lt!873786))))))

(declare-fun b!2412512 () Bool)

(declare-fun res!1024641 () Bool)

(declare-fun e!1535709 () Bool)

(assert (=> b!2412512 (=> (not res!1024641) (not e!1535709))))

(assert (=> b!2412512 (= res!1024641 (not call!147336))))

(declare-fun b!2412513 () Bool)

(assert (=> b!2412513 (= e!1535710 (matchR!3200 (derivativeStep!1782 lt!873786 (head!5386 s!9460)) (tail!3658 s!9460)))))

(declare-fun bm!147331 () Bool)

(assert (=> bm!147331 (= call!147336 (isEmpty!16315 s!9460))))

(declare-fun b!2412514 () Bool)

(declare-fun res!1024642 () Bool)

(assert (=> b!2412514 (=> (not res!1024642) (not e!1535709))))

(assert (=> b!2412514 (= res!1024642 (isEmpty!16315 (tail!3658 s!9460)))))

(declare-fun b!2412515 () Bool)

(assert (=> b!2412515 (= e!1535709 (= (head!5386 s!9460) (c!384315 lt!873786)))))

(declare-fun b!2412516 () Bool)

(assert (=> b!2412516 (= e!1535710 (nullable!2125 lt!873786))))

(declare-fun b!2412517 () Bool)

(declare-fun res!1024639 () Bool)

(assert (=> b!2412517 (=> res!1024639 e!1535708)))

(assert (=> b!2412517 (= res!1024639 e!1535709)))

(declare-fun res!1024636 () Bool)

(assert (=> b!2412517 (=> (not res!1024636) (not e!1535709))))

(assert (=> b!2412517 (= res!1024636 lt!873810)))

(declare-fun b!2412518 () Bool)

(declare-fun res!1024640 () Bool)

(assert (=> b!2412518 (=> res!1024640 e!1535707)))

(assert (=> b!2412518 (= res!1024640 (not (isEmpty!16315 (tail!3658 s!9460))))))

(declare-fun b!2412519 () Bool)

(declare-fun res!1024643 () Bool)

(assert (=> b!2412519 (=> res!1024643 e!1535708)))

(assert (=> b!2412519 (= res!1024643 (not ((_ is ElementMatch!7083) lt!873786)))))

(assert (=> b!2412519 (= e!1535706 e!1535708)))

(declare-fun b!2412520 () Bool)

(assert (=> b!2412520 (= e!1535704 (= lt!873810 call!147336))))

(declare-fun b!2412521 () Bool)

(assert (=> b!2412521 (= e!1535704 e!1535706)))

(declare-fun c!384383 () Bool)

(assert (=> b!2412521 (= c!384383 ((_ is EmptyLang!7083) lt!873786))))

(assert (= (and d!700810 c!384382) b!2412516))

(assert (= (and d!700810 (not c!384382)) b!2412513))

(assert (= (and d!700810 c!384381) b!2412520))

(assert (= (and d!700810 (not c!384381)) b!2412521))

(assert (= (and b!2412521 c!384383) b!2412510))

(assert (= (and b!2412521 (not c!384383)) b!2412519))

(assert (= (and b!2412519 (not res!1024643)) b!2412517))

(assert (= (and b!2412517 res!1024636) b!2412512))

(assert (= (and b!2412512 res!1024641) b!2412514))

(assert (= (and b!2412514 res!1024642) b!2412515))

(assert (= (and b!2412517 (not res!1024639)) b!2412509))

(assert (= (and b!2412509 res!1024637) b!2412508))

(assert (= (and b!2412508 (not res!1024638)) b!2412518))

(assert (= (and b!2412518 (not res!1024640)) b!2412511))

(assert (= (or b!2412520 b!2412512 b!2412508) bm!147331))

(assert (=> b!2412518 m!2803027))

(assert (=> b!2412518 m!2803027))

(assert (=> b!2412518 m!2803031))

(assert (=> b!2412515 m!2803033))

(assert (=> bm!147331 m!2803035))

(assert (=> b!2412513 m!2803033))

(assert (=> b!2412513 m!2803033))

(declare-fun m!2803093 () Bool)

(assert (=> b!2412513 m!2803093))

(assert (=> b!2412513 m!2803027))

(assert (=> b!2412513 m!2803093))

(assert (=> b!2412513 m!2803027))

(declare-fun m!2803095 () Bool)

(assert (=> b!2412513 m!2803095))

(declare-fun m!2803099 () Bool)

(assert (=> b!2412516 m!2803099))

(assert (=> b!2412514 m!2803027))

(assert (=> b!2412514 m!2803027))

(assert (=> b!2412514 m!2803031))

(assert (=> b!2412511 m!2803033))

(assert (=> d!700810 m!2803035))

(declare-fun m!2803109 () Bool)

(assert (=> d!700810 m!2803109))

(assert (=> b!2412216 d!700810))

(declare-fun d!700812 () Bool)

(assert (=> d!700812 (= (isEmpty!16313 l!9164) ((_ is Nil!28307) l!9164))))

(assert (=> b!2412226 d!700812))

(declare-fun d!700816 () Bool)

(assert (=> d!700816 (= (isEmpty!16313 lt!873784) ((_ is Nil!28307) lt!873784))))

(assert (=> b!2412221 d!700816))

(declare-fun d!700818 () Bool)

(assert (=> d!700818 (= (tail!3656 l!9164) (t!208382 l!9164))))

(assert (=> b!2412221 d!700818))

(declare-fun bs!463472 () Bool)

(declare-fun d!700822 () Bool)

(assert (= bs!463472 (and d!700822 start!236388)))

(declare-fun lambda!90824 () Int)

(assert (=> bs!463472 (= lambda!90824 lambda!90805)))

(declare-fun b!2412589 () Bool)

(declare-fun e!1535750 () Bool)

(declare-fun lt!873824 () Regex!7083)

(declare-fun isConcat!144 (Regex!7083) Bool)

(assert (=> b!2412589 (= e!1535750 (isConcat!144 lt!873824))))

(declare-fun b!2412590 () Bool)

(declare-fun e!1535753 () Bool)

(declare-fun e!1535755 () Bool)

(assert (=> b!2412590 (= e!1535753 e!1535755)))

(declare-fun c!384408 () Bool)

(assert (=> b!2412590 (= c!384408 (isEmpty!16313 lt!873784))))

(declare-fun b!2412591 () Bool)

(declare-fun e!1535752 () Regex!7083)

(assert (=> b!2412591 (= e!1535752 EmptyExpr!7083)))

(declare-fun b!2412592 () Bool)

(declare-fun isEmptyExpr!144 (Regex!7083) Bool)

(assert (=> b!2412592 (= e!1535755 (isEmptyExpr!144 lt!873824))))

(declare-fun b!2412594 () Bool)

(declare-fun e!1535754 () Regex!7083)

(assert (=> b!2412594 (= e!1535754 e!1535752)))

(declare-fun c!384406 () Bool)

(assert (=> b!2412594 (= c!384406 ((_ is Cons!28307) lt!873784))))

(declare-fun b!2412595 () Bool)

(assert (=> b!2412595 (= e!1535754 (h!33708 lt!873784))))

(declare-fun b!2412596 () Bool)

(assert (=> b!2412596 (= e!1535752 (Concat!11719 (h!33708 lt!873784) (generalisedConcat!184 (t!208382 lt!873784))))))

(declare-fun b!2412597 () Bool)

(declare-fun e!1535751 () Bool)

(assert (=> b!2412597 (= e!1535751 (isEmpty!16313 (t!208382 lt!873784)))))

(declare-fun b!2412598 () Bool)

(assert (=> b!2412598 (= e!1535750 (= lt!873824 (head!5384 lt!873784)))))

(declare-fun b!2412593 () Bool)

(assert (=> b!2412593 (= e!1535755 e!1535750)))

(declare-fun c!384407 () Bool)

(assert (=> b!2412593 (= c!384407 (isEmpty!16313 (tail!3656 lt!873784)))))

(assert (=> d!700822 e!1535753))

(declare-fun res!1024668 () Bool)

(assert (=> d!700822 (=> (not res!1024668) (not e!1535753))))

(assert (=> d!700822 (= res!1024668 (validRegex!2805 lt!873824))))

(assert (=> d!700822 (= lt!873824 e!1535754)))

(declare-fun c!384409 () Bool)

(assert (=> d!700822 (= c!384409 e!1535751)))

(declare-fun res!1024667 () Bool)

(assert (=> d!700822 (=> (not res!1024667) (not e!1535751))))

(assert (=> d!700822 (= res!1024667 ((_ is Cons!28307) lt!873784))))

(assert (=> d!700822 (forall!5717 lt!873784 lambda!90824)))

(assert (=> d!700822 (= (generalisedConcat!184 lt!873784) lt!873824)))

(assert (= (and d!700822 res!1024667) b!2412597))

(assert (= (and d!700822 c!384409) b!2412595))

(assert (= (and d!700822 (not c!384409)) b!2412594))

(assert (= (and b!2412594 c!384406) b!2412596))

(assert (= (and b!2412594 (not c!384406)) b!2412591))

(assert (= (and d!700822 res!1024668) b!2412590))

(assert (= (and b!2412590 c!384408) b!2412592))

(assert (= (and b!2412590 (not c!384408)) b!2412593))

(assert (= (and b!2412593 c!384407) b!2412598))

(assert (= (and b!2412593 (not c!384407)) b!2412589))

(declare-fun m!2803155 () Bool)

(assert (=> b!2412592 m!2803155))

(declare-fun m!2803157 () Bool)

(assert (=> b!2412593 m!2803157))

(assert (=> b!2412593 m!2803157))

(declare-fun m!2803159 () Bool)

(assert (=> b!2412593 m!2803159))

(declare-fun m!2803161 () Bool)

(assert (=> b!2412598 m!2803161))

(declare-fun m!2803163 () Bool)

(assert (=> d!700822 m!2803163))

(declare-fun m!2803165 () Bool)

(assert (=> d!700822 m!2803165))

(declare-fun m!2803167 () Bool)

(assert (=> b!2412589 m!2803167))

(declare-fun m!2803169 () Bool)

(assert (=> b!2412596 m!2803169))

(declare-fun m!2803171 () Bool)

(assert (=> b!2412597 m!2803171))

(assert (=> b!2412590 m!2802995))

(assert (=> b!2412215 d!700822))

(declare-fun d!700826 () Bool)

(declare-fun e!1535763 () Bool)

(assert (=> d!700826 e!1535763))

(declare-fun c!384413 () Bool)

(assert (=> d!700826 (= c!384413 ((_ is EmptyExpr!7083) lt!873788))))

(declare-fun lt!873826 () Bool)

(declare-fun e!1535769 () Bool)

(assert (=> d!700826 (= lt!873826 e!1535769)))

(declare-fun c!384414 () Bool)

(assert (=> d!700826 (= c!384414 (isEmpty!16315 s!9460))))

(assert (=> d!700826 (validRegex!2805 lt!873788)))

(assert (=> d!700826 (= (matchR!3200 lt!873788 s!9460) lt!873826)))

(declare-fun b!2412613 () Bool)

(declare-fun e!1535764 () Bool)

(declare-fun e!1535766 () Bool)

(assert (=> b!2412613 (= e!1535764 e!1535766)))

(declare-fun res!1024679 () Bool)

(assert (=> b!2412613 (=> res!1024679 e!1535766)))

(declare-fun call!147338 () Bool)

(assert (=> b!2412613 (= res!1024679 call!147338)))

(declare-fun b!2412614 () Bool)

(declare-fun e!1535767 () Bool)

(assert (=> b!2412614 (= e!1535767 e!1535764)))

(declare-fun res!1024678 () Bool)

(assert (=> b!2412614 (=> (not res!1024678) (not e!1535764))))

(assert (=> b!2412614 (= res!1024678 (not lt!873826))))

(declare-fun b!2412615 () Bool)

(declare-fun e!1535765 () Bool)

(assert (=> b!2412615 (= e!1535765 (not lt!873826))))

(declare-fun b!2412616 () Bool)

(assert (=> b!2412616 (= e!1535766 (not (= (head!5386 s!9460) (c!384315 lt!873788))))))

(declare-fun b!2412617 () Bool)

(declare-fun res!1024682 () Bool)

(declare-fun e!1535768 () Bool)

(assert (=> b!2412617 (=> (not res!1024682) (not e!1535768))))

(assert (=> b!2412617 (= res!1024682 (not call!147338))))

(declare-fun b!2412618 () Bool)

(assert (=> b!2412618 (= e!1535769 (matchR!3200 (derivativeStep!1782 lt!873788 (head!5386 s!9460)) (tail!3658 s!9460)))))

(declare-fun bm!147333 () Bool)

(assert (=> bm!147333 (= call!147338 (isEmpty!16315 s!9460))))

(declare-fun b!2412619 () Bool)

(declare-fun res!1024683 () Bool)

(assert (=> b!2412619 (=> (not res!1024683) (not e!1535768))))

(assert (=> b!2412619 (= res!1024683 (isEmpty!16315 (tail!3658 s!9460)))))

(declare-fun b!2412620 () Bool)

(assert (=> b!2412620 (= e!1535768 (= (head!5386 s!9460) (c!384315 lt!873788)))))

(declare-fun b!2412621 () Bool)

(assert (=> b!2412621 (= e!1535769 (nullable!2125 lt!873788))))

(declare-fun b!2412622 () Bool)

(declare-fun res!1024680 () Bool)

(assert (=> b!2412622 (=> res!1024680 e!1535767)))

(assert (=> b!2412622 (= res!1024680 e!1535768)))

(declare-fun res!1024677 () Bool)

(assert (=> b!2412622 (=> (not res!1024677) (not e!1535768))))

(assert (=> b!2412622 (= res!1024677 lt!873826)))

(declare-fun b!2412623 () Bool)

(declare-fun res!1024681 () Bool)

(assert (=> b!2412623 (=> res!1024681 e!1535766)))

(assert (=> b!2412623 (= res!1024681 (not (isEmpty!16315 (tail!3658 s!9460))))))

(declare-fun b!2412624 () Bool)

(declare-fun res!1024684 () Bool)

(assert (=> b!2412624 (=> res!1024684 e!1535767)))

(assert (=> b!2412624 (= res!1024684 (not ((_ is ElementMatch!7083) lt!873788)))))

(assert (=> b!2412624 (= e!1535765 e!1535767)))

(declare-fun b!2412625 () Bool)

(assert (=> b!2412625 (= e!1535763 (= lt!873826 call!147338))))

(declare-fun b!2412626 () Bool)

(assert (=> b!2412626 (= e!1535763 e!1535765)))

(declare-fun c!384415 () Bool)

(assert (=> b!2412626 (= c!384415 ((_ is EmptyLang!7083) lt!873788))))

(assert (= (and d!700826 c!384414) b!2412621))

(assert (= (and d!700826 (not c!384414)) b!2412618))

(assert (= (and d!700826 c!384413) b!2412625))

(assert (= (and d!700826 (not c!384413)) b!2412626))

(assert (= (and b!2412626 c!384415) b!2412615))

(assert (= (and b!2412626 (not c!384415)) b!2412624))

(assert (= (and b!2412624 (not res!1024684)) b!2412622))

(assert (= (and b!2412622 res!1024677) b!2412617))

(assert (= (and b!2412617 res!1024682) b!2412619))

(assert (= (and b!2412619 res!1024683) b!2412620))

(assert (= (and b!2412622 (not res!1024680)) b!2412614))

(assert (= (and b!2412614 res!1024678) b!2412613))

(assert (= (and b!2412613 (not res!1024679)) b!2412623))

(assert (= (and b!2412623 (not res!1024681)) b!2412616))

(assert (= (or b!2412625 b!2412617 b!2412613) bm!147333))

(assert (=> b!2412623 m!2803027))

(assert (=> b!2412623 m!2803027))

(assert (=> b!2412623 m!2803031))

(assert (=> b!2412620 m!2803033))

(assert (=> bm!147333 m!2803035))

(assert (=> b!2412618 m!2803033))

(assert (=> b!2412618 m!2803033))

(declare-fun m!2803193 () Bool)

(assert (=> b!2412618 m!2803193))

(assert (=> b!2412618 m!2803027))

(assert (=> b!2412618 m!2803193))

(assert (=> b!2412618 m!2803027))

(declare-fun m!2803195 () Bool)

(assert (=> b!2412618 m!2803195))

(declare-fun m!2803197 () Bool)

(assert (=> b!2412621 m!2803197))

(assert (=> b!2412619 m!2803027))

(assert (=> b!2412619 m!2803027))

(assert (=> b!2412619 m!2803031))

(assert (=> b!2412616 m!2803033))

(assert (=> d!700826 m!2803035))

(assert (=> d!700826 m!2802967))

(assert (=> b!2412224 d!700826))

(declare-fun d!700834 () Bool)

(assert (=> d!700834 (= (head!5384 l!9164) (h!33708 l!9164))))

(assert (=> b!2412224 d!700834))

(declare-fun b!2412705 () Bool)

(declare-fun e!1535807 () Bool)

(declare-fun lt!873842 () Option!5592)

(assert (=> b!2412705 (= e!1535807 (not (isDefined!4420 lt!873842)))))

(declare-fun b!2412706 () Bool)

(declare-fun res!1024709 () Bool)

(declare-fun e!1535806 () Bool)

(assert (=> b!2412706 (=> (not res!1024709) (not e!1535806))))

(declare-fun get!8687 (Option!5592) tuple2!27962)

(assert (=> b!2412706 (= res!1024709 (matchR!3200 EmptyExpr!7083 (_2!16522 (get!8687 lt!873842))))))

(declare-fun b!2412707 () Bool)

(declare-fun res!1024706 () Bool)

(assert (=> b!2412707 (=> (not res!1024706) (not e!1535806))))

(assert (=> b!2412707 (= res!1024706 (matchR!3200 lt!873788 (_1!16522 (get!8687 lt!873842))))))

(declare-fun b!2412708 () Bool)

(declare-fun e!1535810 () Bool)

(assert (=> b!2412708 (= e!1535810 (matchR!3200 EmptyExpr!7083 s!9460))))

(declare-fun b!2412709 () Bool)

(declare-fun e!1535808 () Option!5592)

(assert (=> b!2412709 (= e!1535808 None!5591)))

(declare-fun d!700836 () Bool)

(assert (=> d!700836 e!1535807))

(declare-fun res!1024708 () Bool)

(assert (=> d!700836 (=> res!1024708 e!1535807)))

(assert (=> d!700836 (= res!1024708 e!1535806)))

(declare-fun res!1024705 () Bool)

(assert (=> d!700836 (=> (not res!1024705) (not e!1535806))))

(assert (=> d!700836 (= res!1024705 (isDefined!4420 lt!873842))))

(declare-fun e!1535809 () Option!5592)

(assert (=> d!700836 (= lt!873842 e!1535809)))

(declare-fun c!384424 () Bool)

(assert (=> d!700836 (= c!384424 e!1535810)))

(declare-fun res!1024707 () Bool)

(assert (=> d!700836 (=> (not res!1024707) (not e!1535810))))

(assert (=> d!700836 (= res!1024707 (matchR!3200 lt!873788 Nil!28306))))

(assert (=> d!700836 (validRegex!2805 lt!873788)))

(assert (=> d!700836 (= (findConcatSeparation!700 lt!873788 EmptyExpr!7083 Nil!28306 s!9460 s!9460) lt!873842)))

(declare-fun b!2412710 () Bool)

(assert (=> b!2412710 (= e!1535809 (Some!5591 (tuple2!27963 Nil!28306 s!9460)))))

(declare-fun b!2412711 () Bool)

(assert (=> b!2412711 (= e!1535806 (= (++!7012 (_1!16522 (get!8687 lt!873842)) (_2!16522 (get!8687 lt!873842))) s!9460))))

(declare-fun b!2412712 () Bool)

(assert (=> b!2412712 (= e!1535809 e!1535808)))

(declare-fun c!384423 () Bool)

(assert (=> b!2412712 (= c!384423 ((_ is Nil!28306) s!9460))))

(declare-fun b!2412713 () Bool)

(declare-fun lt!873841 () Unit!41437)

(declare-fun lt!873840 () Unit!41437)

(assert (=> b!2412713 (= lt!873841 lt!873840)))

(assert (=> b!2412713 (= (++!7012 (++!7012 Nil!28306 (Cons!28306 (h!33707 s!9460) Nil!28306)) (t!208381 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!644 (List!28404 C!14324 List!28404 List!28404) Unit!41437)

(assert (=> b!2412713 (= lt!873840 (lemmaMoveElementToOtherListKeepsConcatEq!644 Nil!28306 (h!33707 s!9460) (t!208381 s!9460) s!9460))))

(assert (=> b!2412713 (= e!1535808 (findConcatSeparation!700 lt!873788 EmptyExpr!7083 (++!7012 Nil!28306 (Cons!28306 (h!33707 s!9460) Nil!28306)) (t!208381 s!9460) s!9460))))

(assert (= (and d!700836 res!1024707) b!2412708))

(assert (= (and d!700836 c!384424) b!2412710))

(assert (= (and d!700836 (not c!384424)) b!2412712))

(assert (= (and b!2412712 c!384423) b!2412709))

(assert (= (and b!2412712 (not c!384423)) b!2412713))

(assert (= (and d!700836 res!1024705) b!2412707))

(assert (= (and b!2412707 res!1024706) b!2412706))

(assert (= (and b!2412706 res!1024709) b!2412711))

(assert (= (and d!700836 (not res!1024708)) b!2412705))

(declare-fun m!2803215 () Bool)

(assert (=> b!2412711 m!2803215))

(declare-fun m!2803217 () Bool)

(assert (=> b!2412711 m!2803217))

(assert (=> b!2412706 m!2803215))

(declare-fun m!2803219 () Bool)

(assert (=> b!2412706 m!2803219))

(assert (=> b!2412707 m!2803215))

(declare-fun m!2803221 () Bool)

(assert (=> b!2412707 m!2803221))

(declare-fun m!2803223 () Bool)

(assert (=> b!2412705 m!2803223))

(declare-fun m!2803225 () Bool)

(assert (=> b!2412713 m!2803225))

(assert (=> b!2412713 m!2803225))

(declare-fun m!2803227 () Bool)

(assert (=> b!2412713 m!2803227))

(declare-fun m!2803229 () Bool)

(assert (=> b!2412713 m!2803229))

(assert (=> b!2412713 m!2803225))

(declare-fun m!2803231 () Bool)

(assert (=> b!2412713 m!2803231))

(declare-fun m!2803233 () Bool)

(assert (=> b!2412708 m!2803233))

(assert (=> d!700836 m!2803223))

(declare-fun m!2803235 () Bool)

(assert (=> d!700836 m!2803235))

(assert (=> d!700836 m!2802967))

(assert (=> b!2412219 d!700836))

(declare-fun d!700846 () Bool)

(declare-fun e!1535816 () Bool)

(assert (=> d!700846 e!1535816))

(declare-fun res!1024715 () Bool)

(assert (=> d!700846 (=> (not res!1024715) (not e!1535816))))

(declare-fun lt!873845 () List!28404)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3882 (List!28404) (InoxSet C!14324))

(assert (=> d!700846 (= res!1024715 (= (content!3882 lt!873845) ((_ map or) (content!3882 s!9460) (content!3882 Nil!28306))))))

(declare-fun e!1535815 () List!28404)

(assert (=> d!700846 (= lt!873845 e!1535815)))

(declare-fun c!384427 () Bool)

(assert (=> d!700846 (= c!384427 ((_ is Nil!28306) s!9460))))

(assert (=> d!700846 (= (++!7012 s!9460 Nil!28306) lt!873845)))

(declare-fun b!2412725 () Bool)

(assert (=> b!2412725 (= e!1535816 (or (not (= Nil!28306 Nil!28306)) (= lt!873845 s!9460)))))

(declare-fun b!2412724 () Bool)

(declare-fun res!1024714 () Bool)

(assert (=> b!2412724 (=> (not res!1024714) (not e!1535816))))

(declare-fun size!22220 (List!28404) Int)

(assert (=> b!2412724 (= res!1024714 (= (size!22220 lt!873845) (+ (size!22220 s!9460) (size!22220 Nil!28306))))))

(declare-fun b!2412723 () Bool)

(assert (=> b!2412723 (= e!1535815 (Cons!28306 (h!33707 s!9460) (++!7012 (t!208381 s!9460) Nil!28306)))))

(declare-fun b!2412722 () Bool)

(assert (=> b!2412722 (= e!1535815 Nil!28306)))

(assert (= (and d!700846 c!384427) b!2412722))

(assert (= (and d!700846 (not c!384427)) b!2412723))

(assert (= (and d!700846 res!1024715) b!2412724))

(assert (= (and b!2412724 res!1024714) b!2412725))

(declare-fun m!2803237 () Bool)

(assert (=> d!700846 m!2803237))

(declare-fun m!2803239 () Bool)

(assert (=> d!700846 m!2803239))

(declare-fun m!2803241 () Bool)

(assert (=> d!700846 m!2803241))

(declare-fun m!2803243 () Bool)

(assert (=> b!2412724 m!2803243))

(declare-fun m!2803245 () Bool)

(assert (=> b!2412724 m!2803245))

(declare-fun m!2803247 () Bool)

(assert (=> b!2412724 m!2803247))

(declare-fun m!2803249 () Bool)

(assert (=> b!2412723 m!2803249))

(assert (=> b!2412219 d!700846))

(declare-fun d!700848 () Bool)

(declare-fun e!1535817 () Bool)

(assert (=> d!700848 e!1535817))

(declare-fun c!384428 () Bool)

(assert (=> d!700848 (= c!384428 ((_ is EmptyExpr!7083) lt!873786))))

(declare-fun lt!873846 () Bool)

(declare-fun e!1535823 () Bool)

(assert (=> d!700848 (= lt!873846 e!1535823)))

(declare-fun c!384429 () Bool)

(assert (=> d!700848 (= c!384429 (isEmpty!16315 (++!7012 s!9460 Nil!28306)))))

(assert (=> d!700848 (validRegex!2805 lt!873786)))

(assert (=> d!700848 (= (matchR!3200 lt!873786 (++!7012 s!9460 Nil!28306)) lt!873846)))

(declare-fun b!2412726 () Bool)

(declare-fun e!1535818 () Bool)

(declare-fun e!1535820 () Bool)

(assert (=> b!2412726 (= e!1535818 e!1535820)))

(declare-fun res!1024718 () Bool)

(assert (=> b!2412726 (=> res!1024718 e!1535820)))

(declare-fun call!147342 () Bool)

(assert (=> b!2412726 (= res!1024718 call!147342)))

(declare-fun b!2412727 () Bool)

(declare-fun e!1535821 () Bool)

(assert (=> b!2412727 (= e!1535821 e!1535818)))

(declare-fun res!1024717 () Bool)

(assert (=> b!2412727 (=> (not res!1024717) (not e!1535818))))

(assert (=> b!2412727 (= res!1024717 (not lt!873846))))

(declare-fun b!2412728 () Bool)

(declare-fun e!1535819 () Bool)

(assert (=> b!2412728 (= e!1535819 (not lt!873846))))

(declare-fun b!2412729 () Bool)

(assert (=> b!2412729 (= e!1535820 (not (= (head!5386 (++!7012 s!9460 Nil!28306)) (c!384315 lt!873786))))))

(declare-fun b!2412730 () Bool)

(declare-fun res!1024721 () Bool)

(declare-fun e!1535822 () Bool)

(assert (=> b!2412730 (=> (not res!1024721) (not e!1535822))))

(assert (=> b!2412730 (= res!1024721 (not call!147342))))

(declare-fun b!2412731 () Bool)

(assert (=> b!2412731 (= e!1535823 (matchR!3200 (derivativeStep!1782 lt!873786 (head!5386 (++!7012 s!9460 Nil!28306))) (tail!3658 (++!7012 s!9460 Nil!28306))))))

(declare-fun bm!147337 () Bool)

(assert (=> bm!147337 (= call!147342 (isEmpty!16315 (++!7012 s!9460 Nil!28306)))))

(declare-fun b!2412732 () Bool)

(declare-fun res!1024722 () Bool)

(assert (=> b!2412732 (=> (not res!1024722) (not e!1535822))))

(assert (=> b!2412732 (= res!1024722 (isEmpty!16315 (tail!3658 (++!7012 s!9460 Nil!28306))))))

(declare-fun b!2412733 () Bool)

(assert (=> b!2412733 (= e!1535822 (= (head!5386 (++!7012 s!9460 Nil!28306)) (c!384315 lt!873786)))))

(declare-fun b!2412734 () Bool)

(assert (=> b!2412734 (= e!1535823 (nullable!2125 lt!873786))))

(declare-fun b!2412735 () Bool)

(declare-fun res!1024719 () Bool)

(assert (=> b!2412735 (=> res!1024719 e!1535821)))

(assert (=> b!2412735 (= res!1024719 e!1535822)))

(declare-fun res!1024716 () Bool)

(assert (=> b!2412735 (=> (not res!1024716) (not e!1535822))))

(assert (=> b!2412735 (= res!1024716 lt!873846)))

(declare-fun b!2412736 () Bool)

(declare-fun res!1024720 () Bool)

(assert (=> b!2412736 (=> res!1024720 e!1535820)))

(assert (=> b!2412736 (= res!1024720 (not (isEmpty!16315 (tail!3658 (++!7012 s!9460 Nil!28306)))))))

(declare-fun b!2412737 () Bool)

(declare-fun res!1024723 () Bool)

(assert (=> b!2412737 (=> res!1024723 e!1535821)))

(assert (=> b!2412737 (= res!1024723 (not ((_ is ElementMatch!7083) lt!873786)))))

(assert (=> b!2412737 (= e!1535819 e!1535821)))

(declare-fun b!2412738 () Bool)

(assert (=> b!2412738 (= e!1535817 (= lt!873846 call!147342))))

(declare-fun b!2412739 () Bool)

(assert (=> b!2412739 (= e!1535817 e!1535819)))

(declare-fun c!384430 () Bool)

(assert (=> b!2412739 (= c!384430 ((_ is EmptyLang!7083) lt!873786))))

(assert (= (and d!700848 c!384429) b!2412734))

(assert (= (and d!700848 (not c!384429)) b!2412731))

(assert (= (and d!700848 c!384428) b!2412738))

(assert (= (and d!700848 (not c!384428)) b!2412739))

(assert (= (and b!2412739 c!384430) b!2412728))

(assert (= (and b!2412739 (not c!384430)) b!2412737))

(assert (= (and b!2412737 (not res!1024723)) b!2412735))

(assert (= (and b!2412735 res!1024716) b!2412730))

(assert (= (and b!2412730 res!1024721) b!2412732))

(assert (= (and b!2412732 res!1024722) b!2412733))

(assert (= (and b!2412735 (not res!1024719)) b!2412727))

(assert (= (and b!2412727 res!1024717) b!2412726))

(assert (= (and b!2412726 (not res!1024718)) b!2412736))

(assert (= (and b!2412736 (not res!1024720)) b!2412729))

(assert (= (or b!2412738 b!2412730 b!2412726) bm!147337))

(assert (=> b!2412736 m!2802969))

(declare-fun m!2803251 () Bool)

(assert (=> b!2412736 m!2803251))

(assert (=> b!2412736 m!2803251))

(declare-fun m!2803253 () Bool)

(assert (=> b!2412736 m!2803253))

(assert (=> b!2412733 m!2802969))

(declare-fun m!2803255 () Bool)

(assert (=> b!2412733 m!2803255))

(assert (=> bm!147337 m!2802969))

(declare-fun m!2803257 () Bool)

(assert (=> bm!147337 m!2803257))

(assert (=> b!2412731 m!2802969))

(assert (=> b!2412731 m!2803255))

(assert (=> b!2412731 m!2803255))

(declare-fun m!2803259 () Bool)

(assert (=> b!2412731 m!2803259))

(assert (=> b!2412731 m!2802969))

(assert (=> b!2412731 m!2803251))

(assert (=> b!2412731 m!2803259))

(assert (=> b!2412731 m!2803251))

(declare-fun m!2803261 () Bool)

(assert (=> b!2412731 m!2803261))

(assert (=> b!2412734 m!2803099))

(assert (=> b!2412732 m!2802969))

(assert (=> b!2412732 m!2803251))

(assert (=> b!2412732 m!2803251))

(assert (=> b!2412732 m!2803253))

(assert (=> b!2412729 m!2802969))

(assert (=> b!2412729 m!2803255))

(assert (=> d!700848 m!2802969))

(assert (=> d!700848 m!2803257))

(assert (=> d!700848 m!2803109))

(assert (=> b!2412219 d!700848))

(declare-fun d!700850 () Bool)

(assert (=> d!700850 (isDefined!4420 (findConcatSeparation!700 lt!873788 EmptyExpr!7083 Nil!28306 s!9460 s!9460))))

(declare-fun lt!873849 () Unit!41437)

(declare-fun choose!14273 (Regex!7083 Regex!7083 List!28404) Unit!41437)

(assert (=> d!700850 (= lt!873849 (choose!14273 lt!873788 EmptyExpr!7083 s!9460))))

(assert (=> d!700850 (validRegex!2805 lt!873788)))

(assert (=> d!700850 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!56 lt!873788 EmptyExpr!7083 s!9460) lt!873849)))

(declare-fun bs!463476 () Bool)

(assert (= bs!463476 d!700850))

(assert (=> bs!463476 m!2802965))

(assert (=> bs!463476 m!2802965))

(assert (=> bs!463476 m!2802973))

(declare-fun m!2803263 () Bool)

(assert (=> bs!463476 m!2803263))

(assert (=> bs!463476 m!2802967))

(assert (=> b!2412219 d!700850))

(declare-fun d!700852 () Bool)

(declare-fun isEmpty!16317 (Option!5592) Bool)

(assert (=> d!700852 (= (isDefined!4420 (findConcatSeparation!700 lt!873788 EmptyExpr!7083 Nil!28306 s!9460 s!9460)) (not (isEmpty!16317 (findConcatSeparation!700 lt!873788 EmptyExpr!7083 Nil!28306 s!9460 s!9460))))))

(declare-fun bs!463477 () Bool)

(assert (= bs!463477 d!700852))

(assert (=> bs!463477 m!2802965))

(declare-fun m!2803265 () Bool)

(assert (=> bs!463477 m!2803265))

(assert (=> b!2412219 d!700852))

(declare-fun d!700854 () Bool)

(assert (=> d!700854 (matchR!3200 (Concat!11719 lt!873788 EmptyExpr!7083) (++!7012 s!9460 Nil!28306))))

(declare-fun lt!873852 () Unit!41437)

(declare-fun choose!14274 (Regex!7083 Regex!7083 List!28404 List!28404) Unit!41437)

(assert (=> d!700854 (= lt!873852 (choose!14274 lt!873788 EmptyExpr!7083 s!9460 Nil!28306))))

(declare-fun e!1535826 () Bool)

(assert (=> d!700854 e!1535826))

(declare-fun res!1024726 () Bool)

(assert (=> d!700854 (=> (not res!1024726) (not e!1535826))))

(assert (=> d!700854 (= res!1024726 (validRegex!2805 lt!873788))))

(assert (=> d!700854 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!82 lt!873788 EmptyExpr!7083 s!9460 Nil!28306) lt!873852)))

(declare-fun b!2412742 () Bool)

(assert (=> b!2412742 (= e!1535826 (validRegex!2805 EmptyExpr!7083))))

(assert (= (and d!700854 res!1024726) b!2412742))

(assert (=> d!700854 m!2802969))

(assert (=> d!700854 m!2802969))

(declare-fun m!2803267 () Bool)

(assert (=> d!700854 m!2803267))

(declare-fun m!2803269 () Bool)

(assert (=> d!700854 m!2803269))

(assert (=> d!700854 m!2802967))

(declare-fun m!2803271 () Bool)

(assert (=> b!2412742 m!2803271))

(assert (=> b!2412219 d!700854))

(declare-fun d!700856 () Bool)

(declare-fun res!1024738 () Bool)

(declare-fun e!1535846 () Bool)

(assert (=> d!700856 (=> res!1024738 e!1535846)))

(assert (=> d!700856 (= res!1024738 ((_ is ElementMatch!7083) lt!873788))))

(assert (=> d!700856 (= (validRegex!2805 lt!873788) e!1535846)))

(declare-fun b!2412761 () Bool)

(declare-fun e!1535843 () Bool)

(declare-fun e!1535844 () Bool)

(assert (=> b!2412761 (= e!1535843 e!1535844)))

(declare-fun res!1024739 () Bool)

(assert (=> b!2412761 (=> (not res!1024739) (not e!1535844))))

(declare-fun call!147349 () Bool)

(assert (=> b!2412761 (= res!1024739 call!147349)))

(declare-fun b!2412762 () Bool)

(declare-fun e!1535845 () Bool)

(assert (=> b!2412762 (= e!1535846 e!1535845)))

(declare-fun c!384435 () Bool)

(assert (=> b!2412762 (= c!384435 ((_ is Star!7083) lt!873788))))

(declare-fun b!2412763 () Bool)

(declare-fun res!1024741 () Bool)

(assert (=> b!2412763 (=> res!1024741 e!1535843)))

(assert (=> b!2412763 (= res!1024741 (not ((_ is Concat!11719) lt!873788)))))

(declare-fun e!1535842 () Bool)

(assert (=> b!2412763 (= e!1535842 e!1535843)))

(declare-fun b!2412764 () Bool)

(declare-fun e!1535847 () Bool)

(assert (=> b!2412764 (= e!1535845 e!1535847)))

(declare-fun res!1024740 () Bool)

(assert (=> b!2412764 (= res!1024740 (not (nullable!2125 (reg!7412 lt!873788))))))

(assert (=> b!2412764 (=> (not res!1024740) (not e!1535847))))

(declare-fun b!2412765 () Bool)

(declare-fun e!1535841 () Bool)

(assert (=> b!2412765 (= e!1535841 call!147349)))

(declare-fun bm!147344 () Bool)

(declare-fun call!147351 () Bool)

(declare-fun c!384436 () Bool)

(assert (=> bm!147344 (= call!147351 (validRegex!2805 (ite c!384436 (regOne!14679 lt!873788) (regTwo!14678 lt!873788))))))

(declare-fun call!147350 () Bool)

(declare-fun bm!147345 () Bool)

(assert (=> bm!147345 (= call!147350 (validRegex!2805 (ite c!384435 (reg!7412 lt!873788) (ite c!384436 (regTwo!14679 lt!873788) (regOne!14678 lt!873788)))))))

(declare-fun b!2412766 () Bool)

(assert (=> b!2412766 (= e!1535844 call!147351)))

(declare-fun bm!147346 () Bool)

(assert (=> bm!147346 (= call!147349 call!147350)))

(declare-fun b!2412767 () Bool)

(declare-fun res!1024737 () Bool)

(assert (=> b!2412767 (=> (not res!1024737) (not e!1535841))))

(assert (=> b!2412767 (= res!1024737 call!147351)))

(assert (=> b!2412767 (= e!1535842 e!1535841)))

(declare-fun b!2412768 () Bool)

(assert (=> b!2412768 (= e!1535847 call!147350)))

(declare-fun b!2412769 () Bool)

(assert (=> b!2412769 (= e!1535845 e!1535842)))

(assert (=> b!2412769 (= c!384436 ((_ is Union!7083) lt!873788))))

(assert (= (and d!700856 (not res!1024738)) b!2412762))

(assert (= (and b!2412762 c!384435) b!2412764))

(assert (= (and b!2412762 (not c!384435)) b!2412769))

(assert (= (and b!2412764 res!1024740) b!2412768))

(assert (= (and b!2412769 c!384436) b!2412767))

(assert (= (and b!2412769 (not c!384436)) b!2412763))

(assert (= (and b!2412767 res!1024737) b!2412765))

(assert (= (and b!2412763 (not res!1024741)) b!2412761))

(assert (= (and b!2412761 res!1024739) b!2412766))

(assert (= (or b!2412767 b!2412766) bm!147344))

(assert (= (or b!2412765 b!2412761) bm!147346))

(assert (= (or b!2412768 bm!147346) bm!147345))

(declare-fun m!2803273 () Bool)

(assert (=> b!2412764 m!2803273))

(declare-fun m!2803275 () Bool)

(assert (=> bm!147344 m!2803275))

(declare-fun m!2803277 () Bool)

(assert (=> bm!147345 m!2803277))

(assert (=> b!2412219 d!700856))

(declare-fun bs!463478 () Bool)

(declare-fun d!700858 () Bool)

(assert (= bs!463478 (and d!700858 start!236388)))

(declare-fun lambda!90825 () Int)

(assert (=> bs!463478 (= lambda!90825 lambda!90805)))

(declare-fun bs!463479 () Bool)

(assert (= bs!463479 (and d!700858 d!700822)))

(assert (=> bs!463479 (= lambda!90825 lambda!90824)))

(declare-fun b!2412770 () Bool)

(declare-fun e!1535848 () Bool)

(declare-fun lt!873853 () Regex!7083)

(assert (=> b!2412770 (= e!1535848 (isConcat!144 lt!873853))))

(declare-fun b!2412771 () Bool)

(declare-fun e!1535851 () Bool)

(declare-fun e!1535853 () Bool)

(assert (=> b!2412771 (= e!1535851 e!1535853)))

(declare-fun c!384439 () Bool)

(assert (=> b!2412771 (= c!384439 (isEmpty!16313 l!9164))))

(declare-fun b!2412772 () Bool)

(declare-fun e!1535850 () Regex!7083)

(assert (=> b!2412772 (= e!1535850 EmptyExpr!7083)))

(declare-fun b!2412773 () Bool)

(assert (=> b!2412773 (= e!1535853 (isEmptyExpr!144 lt!873853))))

(declare-fun b!2412775 () Bool)

(declare-fun e!1535852 () Regex!7083)

(assert (=> b!2412775 (= e!1535852 e!1535850)))

(declare-fun c!384437 () Bool)

(assert (=> b!2412775 (= c!384437 ((_ is Cons!28307) l!9164))))

(declare-fun b!2412776 () Bool)

(assert (=> b!2412776 (= e!1535852 (h!33708 l!9164))))

(declare-fun b!2412777 () Bool)

(assert (=> b!2412777 (= e!1535850 (Concat!11719 (h!33708 l!9164) (generalisedConcat!184 (t!208382 l!9164))))))

(declare-fun b!2412778 () Bool)

(declare-fun e!1535849 () Bool)

(assert (=> b!2412778 (= e!1535849 (isEmpty!16313 (t!208382 l!9164)))))

(declare-fun b!2412779 () Bool)

(assert (=> b!2412779 (= e!1535848 (= lt!873853 (head!5384 l!9164)))))

(declare-fun b!2412774 () Bool)

(assert (=> b!2412774 (= e!1535853 e!1535848)))

(declare-fun c!384438 () Bool)

(assert (=> b!2412774 (= c!384438 (isEmpty!16313 (tail!3656 l!9164)))))

(assert (=> d!700858 e!1535851))

(declare-fun res!1024743 () Bool)

(assert (=> d!700858 (=> (not res!1024743) (not e!1535851))))

(assert (=> d!700858 (= res!1024743 (validRegex!2805 lt!873853))))

(assert (=> d!700858 (= lt!873853 e!1535852)))

(declare-fun c!384440 () Bool)

(assert (=> d!700858 (= c!384440 e!1535849)))

(declare-fun res!1024742 () Bool)

(assert (=> d!700858 (=> (not res!1024742) (not e!1535849))))

(assert (=> d!700858 (= res!1024742 ((_ is Cons!28307) l!9164))))

(assert (=> d!700858 (forall!5717 l!9164 lambda!90825)))

(assert (=> d!700858 (= (generalisedConcat!184 l!9164) lt!873853)))

(assert (= (and d!700858 res!1024742) b!2412778))

(assert (= (and d!700858 c!384440) b!2412776))

(assert (= (and d!700858 (not c!384440)) b!2412775))

(assert (= (and b!2412775 c!384437) b!2412777))

(assert (= (and b!2412775 (not c!384437)) b!2412772))

(assert (= (and d!700858 res!1024743) b!2412771))

(assert (= (and b!2412771 c!384439) b!2412773))

(assert (= (and b!2412771 (not c!384439)) b!2412774))

(assert (= (and b!2412774 c!384438) b!2412779))

(assert (= (and b!2412774 (not c!384438)) b!2412770))

(declare-fun m!2803279 () Bool)

(assert (=> b!2412773 m!2803279))

(assert (=> b!2412774 m!2802997))

(assert (=> b!2412774 m!2802997))

(declare-fun m!2803281 () Bool)

(assert (=> b!2412774 m!2803281))

(assert (=> b!2412779 m!2803001))

(declare-fun m!2803283 () Bool)

(assert (=> d!700858 m!2803283))

(declare-fun m!2803285 () Bool)

(assert (=> d!700858 m!2803285))

(declare-fun m!2803287 () Bool)

(assert (=> b!2412770 m!2803287))

(declare-fun m!2803289 () Bool)

(assert (=> b!2412777 m!2803289))

(declare-fun m!2803291 () Bool)

(assert (=> b!2412778 m!2803291))

(assert (=> b!2412771 m!2802961))

(assert (=> b!2412218 d!700858))

(declare-fun d!700860 () Bool)

(declare-fun res!1024745 () Bool)

(declare-fun e!1535859 () Bool)

(assert (=> d!700860 (=> res!1024745 e!1535859)))

(assert (=> d!700860 (= res!1024745 ((_ is ElementMatch!7083) lt!873789))))

(assert (=> d!700860 (= (validRegex!2805 lt!873789) e!1535859)))

(declare-fun b!2412780 () Bool)

(declare-fun e!1535856 () Bool)

(declare-fun e!1535857 () Bool)

(assert (=> b!2412780 (= e!1535856 e!1535857)))

(declare-fun res!1024746 () Bool)

(assert (=> b!2412780 (=> (not res!1024746) (not e!1535857))))

(declare-fun call!147352 () Bool)

(assert (=> b!2412780 (= res!1024746 call!147352)))

(declare-fun b!2412781 () Bool)

(declare-fun e!1535858 () Bool)

(assert (=> b!2412781 (= e!1535859 e!1535858)))

(declare-fun c!384441 () Bool)

(assert (=> b!2412781 (= c!384441 ((_ is Star!7083) lt!873789))))

(declare-fun b!2412782 () Bool)

(declare-fun res!1024748 () Bool)

(assert (=> b!2412782 (=> res!1024748 e!1535856)))

(assert (=> b!2412782 (= res!1024748 (not ((_ is Concat!11719) lt!873789)))))

(declare-fun e!1535855 () Bool)

(assert (=> b!2412782 (= e!1535855 e!1535856)))

(declare-fun b!2412783 () Bool)

(declare-fun e!1535860 () Bool)

(assert (=> b!2412783 (= e!1535858 e!1535860)))

(declare-fun res!1024747 () Bool)

(assert (=> b!2412783 (= res!1024747 (not (nullable!2125 (reg!7412 lt!873789))))))

(assert (=> b!2412783 (=> (not res!1024747) (not e!1535860))))

(declare-fun b!2412784 () Bool)

(declare-fun e!1535854 () Bool)

(assert (=> b!2412784 (= e!1535854 call!147352)))

(declare-fun bm!147347 () Bool)

(declare-fun call!147354 () Bool)

(declare-fun c!384442 () Bool)

(assert (=> bm!147347 (= call!147354 (validRegex!2805 (ite c!384442 (regOne!14679 lt!873789) (regTwo!14678 lt!873789))))))

(declare-fun bm!147348 () Bool)

(declare-fun call!147353 () Bool)

(assert (=> bm!147348 (= call!147353 (validRegex!2805 (ite c!384441 (reg!7412 lt!873789) (ite c!384442 (regTwo!14679 lt!873789) (regOne!14678 lt!873789)))))))

(declare-fun b!2412785 () Bool)

(assert (=> b!2412785 (= e!1535857 call!147354)))

(declare-fun bm!147349 () Bool)

(assert (=> bm!147349 (= call!147352 call!147353)))

(declare-fun b!2412786 () Bool)

(declare-fun res!1024744 () Bool)

(assert (=> b!2412786 (=> (not res!1024744) (not e!1535854))))

(assert (=> b!2412786 (= res!1024744 call!147354)))

(assert (=> b!2412786 (= e!1535855 e!1535854)))

(declare-fun b!2412787 () Bool)

(assert (=> b!2412787 (= e!1535860 call!147353)))

(declare-fun b!2412788 () Bool)

(assert (=> b!2412788 (= e!1535858 e!1535855)))

(assert (=> b!2412788 (= c!384442 ((_ is Union!7083) lt!873789))))

(assert (= (and d!700860 (not res!1024745)) b!2412781))

(assert (= (and b!2412781 c!384441) b!2412783))

(assert (= (and b!2412781 (not c!384441)) b!2412788))

(assert (= (and b!2412783 res!1024747) b!2412787))

(assert (= (and b!2412788 c!384442) b!2412786))

(assert (= (and b!2412788 (not c!384442)) b!2412782))

(assert (= (and b!2412786 res!1024744) b!2412784))

(assert (= (and b!2412782 (not res!1024748)) b!2412780))

(assert (= (and b!2412780 res!1024746) b!2412785))

(assert (= (or b!2412786 b!2412785) bm!147347))

(assert (= (or b!2412784 b!2412780) bm!147349))

(assert (= (or b!2412787 bm!147349) bm!147348))

(declare-fun m!2803293 () Bool)

(assert (=> b!2412783 m!2803293))

(declare-fun m!2803295 () Bool)

(assert (=> bm!147347 m!2803295))

(declare-fun m!2803297 () Bool)

(assert (=> bm!147348 m!2803297))

(assert (=> b!2412229 d!700860))

(declare-fun d!700862 () Bool)

(declare-fun e!1535862 () Bool)

(assert (=> d!700862 e!1535862))

(declare-fun res!1024750 () Bool)

(assert (=> d!700862 (=> (not res!1024750) (not e!1535862))))

(declare-fun lt!873854 () List!28404)

(assert (=> d!700862 (= res!1024750 (= (content!3882 lt!873854) ((_ map or) (content!3882 Nil!28306) (content!3882 s!9460))))))

(declare-fun e!1535861 () List!28404)

(assert (=> d!700862 (= lt!873854 e!1535861)))

(declare-fun c!384443 () Bool)

(assert (=> d!700862 (= c!384443 ((_ is Nil!28306) Nil!28306))))

(assert (=> d!700862 (= (++!7012 Nil!28306 s!9460) lt!873854)))

(declare-fun b!2412792 () Bool)

(assert (=> b!2412792 (= e!1535862 (or (not (= s!9460 Nil!28306)) (= lt!873854 Nil!28306)))))

(declare-fun b!2412791 () Bool)

(declare-fun res!1024749 () Bool)

(assert (=> b!2412791 (=> (not res!1024749) (not e!1535862))))

(assert (=> b!2412791 (= res!1024749 (= (size!22220 lt!873854) (+ (size!22220 Nil!28306) (size!22220 s!9460))))))

(declare-fun b!2412790 () Bool)

(assert (=> b!2412790 (= e!1535861 (Cons!28306 (h!33707 Nil!28306) (++!7012 (t!208381 Nil!28306) s!9460)))))

(declare-fun b!2412789 () Bool)

(assert (=> b!2412789 (= e!1535861 s!9460)))

(assert (= (and d!700862 c!384443) b!2412789))

(assert (= (and d!700862 (not c!384443)) b!2412790))

(assert (= (and d!700862 res!1024750) b!2412791))

(assert (= (and b!2412791 res!1024749) b!2412792))

(declare-fun m!2803299 () Bool)

(assert (=> d!700862 m!2803299))

(assert (=> d!700862 m!2803241))

(assert (=> d!700862 m!2803239))

(declare-fun m!2803301 () Bool)

(assert (=> b!2412791 m!2803301))

(assert (=> b!2412791 m!2803247))

(assert (=> b!2412791 m!2803245))

(declare-fun m!2803303 () Bool)

(assert (=> b!2412790 m!2803303))

(assert (=> b!2412228 d!700862))

(declare-fun e!1535865 () Bool)

(assert (=> b!2412217 (= tp!767298 e!1535865)))

(declare-fun b!2412804 () Bool)

(declare-fun tp!767363 () Bool)

(declare-fun tp!767365 () Bool)

(assert (=> b!2412804 (= e!1535865 (and tp!767363 tp!767365))))

(declare-fun b!2412803 () Bool)

(assert (=> b!2412803 (= e!1535865 tp_is_empty!11579)))

(declare-fun b!2412806 () Bool)

(declare-fun tp!767364 () Bool)

(declare-fun tp!767362 () Bool)

(assert (=> b!2412806 (= e!1535865 (and tp!767364 tp!767362))))

(declare-fun b!2412805 () Bool)

(declare-fun tp!767361 () Bool)

(assert (=> b!2412805 (= e!1535865 tp!767361)))

(assert (= (and b!2412217 ((_ is ElementMatch!7083) (reg!7412 r!13927))) b!2412803))

(assert (= (and b!2412217 ((_ is Concat!11719) (reg!7412 r!13927))) b!2412804))

(assert (= (and b!2412217 ((_ is Star!7083) (reg!7412 r!13927))) b!2412805))

(assert (= (and b!2412217 ((_ is Union!7083) (reg!7412 r!13927))) b!2412806))

(declare-fun e!1535866 () Bool)

(assert (=> b!2412227 (= tp!767300 e!1535866)))

(declare-fun b!2412808 () Bool)

(declare-fun tp!767368 () Bool)

(declare-fun tp!767370 () Bool)

(assert (=> b!2412808 (= e!1535866 (and tp!767368 tp!767370))))

(declare-fun b!2412807 () Bool)

(assert (=> b!2412807 (= e!1535866 tp_is_empty!11579)))

(declare-fun b!2412810 () Bool)

(declare-fun tp!767369 () Bool)

(declare-fun tp!767367 () Bool)

(assert (=> b!2412810 (= e!1535866 (and tp!767369 tp!767367))))

(declare-fun b!2412809 () Bool)

(declare-fun tp!767366 () Bool)

(assert (=> b!2412809 (= e!1535866 tp!767366)))

(assert (= (and b!2412227 ((_ is ElementMatch!7083) (regOne!14679 r!13927))) b!2412807))

(assert (= (and b!2412227 ((_ is Concat!11719) (regOne!14679 r!13927))) b!2412808))

(assert (= (and b!2412227 ((_ is Star!7083) (regOne!14679 r!13927))) b!2412809))

(assert (= (and b!2412227 ((_ is Union!7083) (regOne!14679 r!13927))) b!2412810))

(declare-fun e!1535867 () Bool)

(assert (=> b!2412227 (= tp!767297 e!1535867)))

(declare-fun b!2412812 () Bool)

(declare-fun tp!767373 () Bool)

(declare-fun tp!767375 () Bool)

(assert (=> b!2412812 (= e!1535867 (and tp!767373 tp!767375))))

(declare-fun b!2412811 () Bool)

(assert (=> b!2412811 (= e!1535867 tp_is_empty!11579)))

(declare-fun b!2412814 () Bool)

(declare-fun tp!767374 () Bool)

(declare-fun tp!767372 () Bool)

(assert (=> b!2412814 (= e!1535867 (and tp!767374 tp!767372))))

(declare-fun b!2412813 () Bool)

(declare-fun tp!767371 () Bool)

(assert (=> b!2412813 (= e!1535867 tp!767371)))

(assert (= (and b!2412227 ((_ is ElementMatch!7083) (regTwo!14679 r!13927))) b!2412811))

(assert (= (and b!2412227 ((_ is Concat!11719) (regTwo!14679 r!13927))) b!2412812))

(assert (= (and b!2412227 ((_ is Star!7083) (regTwo!14679 r!13927))) b!2412813))

(assert (= (and b!2412227 ((_ is Union!7083) (regTwo!14679 r!13927))) b!2412814))

(declare-fun e!1535868 () Bool)

(assert (=> b!2412230 (= tp!767301 e!1535868)))

(declare-fun b!2412816 () Bool)

(declare-fun tp!767378 () Bool)

(declare-fun tp!767380 () Bool)

(assert (=> b!2412816 (= e!1535868 (and tp!767378 tp!767380))))

(declare-fun b!2412815 () Bool)

(assert (=> b!2412815 (= e!1535868 tp_is_empty!11579)))

(declare-fun b!2412818 () Bool)

(declare-fun tp!767379 () Bool)

(declare-fun tp!767377 () Bool)

(assert (=> b!2412818 (= e!1535868 (and tp!767379 tp!767377))))

(declare-fun b!2412817 () Bool)

(declare-fun tp!767376 () Bool)

(assert (=> b!2412817 (= e!1535868 tp!767376)))

(assert (= (and b!2412230 ((_ is ElementMatch!7083) (regOne!14678 r!13927))) b!2412815))

(assert (= (and b!2412230 ((_ is Concat!11719) (regOne!14678 r!13927))) b!2412816))

(assert (= (and b!2412230 ((_ is Star!7083) (regOne!14678 r!13927))) b!2412817))

(assert (= (and b!2412230 ((_ is Union!7083) (regOne!14678 r!13927))) b!2412818))

(declare-fun e!1535869 () Bool)

(assert (=> b!2412230 (= tp!767296 e!1535869)))

(declare-fun b!2412820 () Bool)

(declare-fun tp!767383 () Bool)

(declare-fun tp!767385 () Bool)

(assert (=> b!2412820 (= e!1535869 (and tp!767383 tp!767385))))

(declare-fun b!2412819 () Bool)

(assert (=> b!2412819 (= e!1535869 tp_is_empty!11579)))

(declare-fun b!2412822 () Bool)

(declare-fun tp!767384 () Bool)

(declare-fun tp!767382 () Bool)

(assert (=> b!2412822 (= e!1535869 (and tp!767384 tp!767382))))

(declare-fun b!2412821 () Bool)

(declare-fun tp!767381 () Bool)

(assert (=> b!2412821 (= e!1535869 tp!767381)))

(assert (= (and b!2412230 ((_ is ElementMatch!7083) (regTwo!14678 r!13927))) b!2412819))

(assert (= (and b!2412230 ((_ is Concat!11719) (regTwo!14678 r!13927))) b!2412820))

(assert (= (and b!2412230 ((_ is Star!7083) (regTwo!14678 r!13927))) b!2412821))

(assert (= (and b!2412230 ((_ is Union!7083) (regTwo!14678 r!13927))) b!2412822))

(declare-fun b!2412827 () Bool)

(declare-fun e!1535872 () Bool)

(declare-fun tp!767388 () Bool)

(assert (=> b!2412827 (= e!1535872 (and tp_is_empty!11579 tp!767388))))

(assert (=> b!2412225 (= tp!767299 e!1535872)))

(assert (= (and b!2412225 ((_ is Cons!28306) (t!208381 s!9460))) b!2412827))

(declare-fun e!1535873 () Bool)

(assert (=> b!2412223 (= tp!767294 e!1535873)))

(declare-fun b!2412829 () Bool)

(declare-fun tp!767391 () Bool)

(declare-fun tp!767393 () Bool)

(assert (=> b!2412829 (= e!1535873 (and tp!767391 tp!767393))))

(declare-fun b!2412828 () Bool)

(assert (=> b!2412828 (= e!1535873 tp_is_empty!11579)))

(declare-fun b!2412831 () Bool)

(declare-fun tp!767392 () Bool)

(declare-fun tp!767390 () Bool)

(assert (=> b!2412831 (= e!1535873 (and tp!767392 tp!767390))))

(declare-fun b!2412830 () Bool)

(declare-fun tp!767389 () Bool)

(assert (=> b!2412830 (= e!1535873 tp!767389)))

(assert (= (and b!2412223 ((_ is ElementMatch!7083) (h!33708 l!9164))) b!2412828))

(assert (= (and b!2412223 ((_ is Concat!11719) (h!33708 l!9164))) b!2412829))

(assert (= (and b!2412223 ((_ is Star!7083) (h!33708 l!9164))) b!2412830))

(assert (= (and b!2412223 ((_ is Union!7083) (h!33708 l!9164))) b!2412831))

(declare-fun b!2412836 () Bool)

(declare-fun e!1535876 () Bool)

(declare-fun tp!767398 () Bool)

(declare-fun tp!767399 () Bool)

(assert (=> b!2412836 (= e!1535876 (and tp!767398 tp!767399))))

(assert (=> b!2412223 (= tp!767295 e!1535876)))

(assert (= (and b!2412223 ((_ is Cons!28307) (t!208382 l!9164))) b!2412836))

(declare-fun b_lambda!74521 () Bool)

(assert (= b_lambda!74517 (or start!236388 b_lambda!74521)))

(declare-fun bs!463480 () Bool)

(declare-fun d!700864 () Bool)

(assert (= bs!463480 (and d!700864 start!236388)))

(assert (=> bs!463480 (= (dynLambda!12187 lambda!90805 (h!33708 l!9164)) (validRegex!2805 (h!33708 l!9164)))))

(declare-fun m!2803305 () Bool)

(assert (=> bs!463480 m!2803305))

(assert (=> b!2412506 d!700864))

(check-sat tp_is_empty!11579 (not b!2412618) (not b!2412446) (not bm!147348) (not b!2412773) (not d!700778) (not b!2412616) (not d!700862) (not b!2412771) (not b!2412821) (not b!2412806) (not b!2412597) (not d!700852) (not b!2412783) (not d!700826) (not b!2412621) (not bm!147308) (not b!2412816) (not b!2412734) (not b!2412590) (not b!2412713) (not b!2412810) (not b!2412729) (not b!2412779) (not b!2412831) (not b!2412723) (not d!700804) (not b!2412327) (not b!2412322) (not b!2412329) (not d!700846) (not b!2412778) (not b!2412732) (not b!2412708) (not bm!147347) (not b!2412511) (not d!700836) (not bm!147331) (not b!2412808) (not b!2412513) (not b!2412325) (not b!2412623) (not b!2412452) (not b!2412774) (not b!2412326) (not d!700854) (not b!2412813) (not b!2412817) (not b!2412814) (not b!2412711) (not b!2412516) (not b!2412518) (not b!2412324) (not b!2412515) (not b!2412724) (not b!2412790) (not b!2412812) (not b!2412620) (not b!2412791) (not b!2412829) (not b!2412804) (not b!2412507) (not b!2412818) (not b!2412589) (not b!2412736) (not bs!463480) (not b!2412820) (not d!700858) (not d!700810) (not bm!147345) (not b!2412770) (not b!2412822) (not bm!147326) (not bm!147344) (not b!2412836) (not b!2412619) (not d!700850) (not b!2412809) (not b!2412707) (not b!2412764) (not bm!147327) (not b!2412514) (not b!2412733) (not bm!147337) (not b!2412805) (not b!2412706) (not b!2412731) (not b!2412742) (not b!2412598) (not b!2412596) (not d!700822) (not b!2412592) (not b!2412830) (not b!2412827) (not bm!147333) (not b_lambda!74521) (not d!700848) (not b!2412705) (not b!2412777) (not b!2412593))
(check-sat)
