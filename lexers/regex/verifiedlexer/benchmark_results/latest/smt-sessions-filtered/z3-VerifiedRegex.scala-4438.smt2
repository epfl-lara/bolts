; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!236060 () Bool)

(assert start!236060)

(declare-fun b!2408408 () Bool)

(declare-fun e!1533496 () Bool)

(declare-fun tp_is_empty!11551 () Bool)

(declare-fun tp!766375 () Bool)

(assert (=> b!2408408 (= e!1533496 (and tp_is_empty!11551 tp!766375))))

(declare-fun res!1022851 () Bool)

(declare-fun e!1533494 () Bool)

(assert (=> start!236060 (=> (not res!1022851) (not e!1533494))))

(declare-datatypes ((C!14296 0))(
  ( (C!14297 (val!8390 Int)) )
))
(declare-datatypes ((Regex!7069 0))(
  ( (ElementMatch!7069 (c!383631 C!14296)) (Concat!11705 (regOne!14650 Regex!7069) (regTwo!14650 Regex!7069)) (EmptyExpr!7069) (Star!7069 (reg!7398 Regex!7069)) (EmptyLang!7069) (Union!7069 (regOne!14651 Regex!7069) (regTwo!14651 Regex!7069)) )
))
(declare-datatypes ((List!28376 0))(
  ( (Nil!28278) (Cons!28278 (h!33679 Regex!7069) (t!208353 List!28376)) )
))
(declare-fun l!9164 () List!28376)

(declare-fun lambda!90639 () Int)

(declare-fun forall!5703 (List!28376 Int) Bool)

(assert (=> start!236060 (= res!1022851 (forall!5703 l!9164 lambda!90639))))

(assert (=> start!236060 e!1533494))

(declare-fun e!1533495 () Bool)

(assert (=> start!236060 e!1533495))

(declare-fun e!1533490 () Bool)

(assert (=> start!236060 e!1533490))

(assert (=> start!236060 e!1533496))

(declare-fun b!2408409 () Bool)

(declare-fun e!1533491 () Bool)

(declare-fun e!1533493 () Bool)

(assert (=> b!2408409 (= e!1533491 e!1533493)))

(declare-fun res!1022853 () Bool)

(assert (=> b!2408409 (=> res!1022853 e!1533493)))

(declare-fun lt!873212 () List!28376)

(declare-fun isEmpty!16280 (List!28376) Bool)

(assert (=> b!2408409 (= res!1022853 (not (isEmpty!16280 lt!873212)))))

(declare-fun tail!3630 (List!28376) List!28376)

(assert (=> b!2408409 (= lt!873212 (tail!3630 l!9164))))

(declare-fun b!2408410 () Bool)

(declare-fun res!1022852 () Bool)

(assert (=> b!2408410 (=> (not res!1022852) (not e!1533494))))

(declare-fun r!13927 () Regex!7069)

(declare-fun generalisedConcat!170 (List!28376) Regex!7069)

(assert (=> b!2408410 (= res!1022852 (= r!13927 (generalisedConcat!170 l!9164)))))

(declare-fun b!2408411 () Bool)

(declare-fun tp!766376 () Bool)

(declare-fun tp!766374 () Bool)

(assert (=> b!2408411 (= e!1533490 (and tp!766376 tp!766374))))

(declare-fun b!2408412 () Bool)

(declare-fun e!1533492 () Bool)

(assert (=> b!2408412 (= e!1533493 e!1533492)))

(declare-fun res!1022848 () Bool)

(assert (=> b!2408412 (=> res!1022848 e!1533492)))

(declare-fun lt!873215 () Regex!7069)

(declare-datatypes ((List!28377 0))(
  ( (Nil!28279) (Cons!28279 (h!33680 C!14296) (t!208354 List!28377)) )
))
(declare-fun s!9460 () List!28377)

(declare-fun matchR!3186 (Regex!7069 List!28377) Bool)

(assert (=> b!2408412 (= res!1022848 (not (matchR!3186 lt!873215 s!9460)))))

(declare-fun head!5358 (List!28376) Regex!7069)

(assert (=> b!2408412 (= lt!873215 (head!5358 l!9164))))

(declare-fun b!2408413 () Bool)

(declare-fun lt!873213 () Regex!7069)

(declare-fun validRegex!2793 (Regex!7069) Bool)

(assert (=> b!2408413 (= e!1533492 (validRegex!2793 lt!873213))))

(declare-fun ++!6998 (List!28377 List!28377) List!28377)

(assert (=> b!2408413 (matchR!3186 lt!873213 (++!6998 s!9460 Nil!28279))))

(assert (=> b!2408413 (= lt!873213 (Concat!11705 lt!873215 EmptyExpr!7069))))

(declare-datatypes ((Unit!41409 0))(
  ( (Unit!41410) )
))
(declare-fun lt!873216 () Unit!41409)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!68 (Regex!7069 Regex!7069 List!28377 List!28377) Unit!41409)

(assert (=> b!2408413 (= lt!873216 (lemmaTwoRegexMatchThenConcatMatchesConcatString!68 lt!873215 EmptyExpr!7069 s!9460 Nil!28279))))

(declare-fun b!2408414 () Bool)

(assert (=> b!2408414 (= e!1533494 (not e!1533491))))

(declare-fun res!1022854 () Bool)

(assert (=> b!2408414 (=> res!1022854 e!1533491)))

(get-info :version)

(assert (=> b!2408414 (= res!1022854 (or ((_ is Concat!11705) r!13927) ((_ is EmptyExpr!7069) r!13927)))))

(declare-fun matchRSpec!918 (Regex!7069 List!28377) Bool)

(assert (=> b!2408414 (= (matchR!3186 r!13927 s!9460) (matchRSpec!918 r!13927 s!9460))))

(declare-fun lt!873214 () Unit!41409)

(declare-fun mainMatchTheorem!918 (Regex!7069 List!28377) Unit!41409)

(assert (=> b!2408414 (= lt!873214 (mainMatchTheorem!918 r!13927 s!9460))))

(declare-fun b!2408415 () Bool)

(declare-fun res!1022849 () Bool)

(assert (=> b!2408415 (=> res!1022849 e!1533493)))

(assert (=> b!2408415 (= res!1022849 (not (= (generalisedConcat!170 lt!873212) EmptyExpr!7069)))))

(declare-fun b!2408416 () Bool)

(assert (=> b!2408416 (= e!1533490 tp_is_empty!11551)))

(declare-fun b!2408417 () Bool)

(declare-fun tp!766371 () Bool)

(declare-fun tp!766373 () Bool)

(assert (=> b!2408417 (= e!1533495 (and tp!766371 tp!766373))))

(declare-fun b!2408418 () Bool)

(declare-fun tp!766370 () Bool)

(assert (=> b!2408418 (= e!1533490 tp!766370)))

(declare-fun b!2408419 () Bool)

(declare-fun res!1022850 () Bool)

(assert (=> b!2408419 (=> res!1022850 e!1533491)))

(assert (=> b!2408419 (= res!1022850 (isEmpty!16280 l!9164))))

(declare-fun b!2408420 () Bool)

(declare-fun tp!766377 () Bool)

(declare-fun tp!766372 () Bool)

(assert (=> b!2408420 (= e!1533490 (and tp!766377 tp!766372))))

(assert (= (and start!236060 res!1022851) b!2408410))

(assert (= (and b!2408410 res!1022852) b!2408414))

(assert (= (and b!2408414 (not res!1022854)) b!2408419))

(assert (= (and b!2408419 (not res!1022850)) b!2408409))

(assert (= (and b!2408409 (not res!1022853)) b!2408415))

(assert (= (and b!2408415 (not res!1022849)) b!2408412))

(assert (= (and b!2408412 (not res!1022848)) b!2408413))

(assert (= (and start!236060 ((_ is Cons!28278) l!9164)) b!2408417))

(assert (= (and start!236060 ((_ is ElementMatch!7069) r!13927)) b!2408416))

(assert (= (and start!236060 ((_ is Concat!11705) r!13927)) b!2408411))

(assert (= (and start!236060 ((_ is Star!7069) r!13927)) b!2408418))

(assert (= (and start!236060 ((_ is Union!7069) r!13927)) b!2408420))

(assert (= (and start!236060 ((_ is Cons!28279) s!9460)) b!2408408))

(declare-fun m!2800897 () Bool)

(assert (=> b!2408409 m!2800897))

(declare-fun m!2800899 () Bool)

(assert (=> b!2408409 m!2800899))

(declare-fun m!2800901 () Bool)

(assert (=> b!2408419 m!2800901))

(declare-fun m!2800903 () Bool)

(assert (=> b!2408414 m!2800903))

(declare-fun m!2800905 () Bool)

(assert (=> b!2408414 m!2800905))

(declare-fun m!2800907 () Bool)

(assert (=> b!2408414 m!2800907))

(declare-fun m!2800909 () Bool)

(assert (=> start!236060 m!2800909))

(declare-fun m!2800911 () Bool)

(assert (=> b!2408412 m!2800911))

(declare-fun m!2800913 () Bool)

(assert (=> b!2408412 m!2800913))

(declare-fun m!2800915 () Bool)

(assert (=> b!2408413 m!2800915))

(declare-fun m!2800917 () Bool)

(assert (=> b!2408413 m!2800917))

(assert (=> b!2408413 m!2800917))

(declare-fun m!2800919 () Bool)

(assert (=> b!2408413 m!2800919))

(declare-fun m!2800921 () Bool)

(assert (=> b!2408413 m!2800921))

(declare-fun m!2800923 () Bool)

(assert (=> b!2408410 m!2800923))

(declare-fun m!2800925 () Bool)

(assert (=> b!2408415 m!2800925))

(check-sat (not b!2408409) (not b!2408410) (not b!2408412) (not b!2408411) (not b!2408419) (not b!2408415) (not b!2408418) tp_is_empty!11551 (not b!2408417) (not start!236060) (not b!2408420) (not b!2408413) (not b!2408414) (not b!2408408))
(check-sat)
(get-model)

(declare-fun b!2408439 () Bool)

(declare-fun res!1022867 () Bool)

(declare-fun e!1533516 () Bool)

(assert (=> b!2408439 (=> res!1022867 e!1533516)))

(assert (=> b!2408439 (= res!1022867 (not ((_ is Concat!11705) lt!873213)))))

(declare-fun e!1533511 () Bool)

(assert (=> b!2408439 (= e!1533511 e!1533516)))

(declare-fun b!2408440 () Bool)

(declare-fun e!1533517 () Bool)

(assert (=> b!2408440 (= e!1533517 e!1533511)))

(declare-fun c!383636 () Bool)

(assert (=> b!2408440 (= c!383636 ((_ is Union!7069) lt!873213))))

(declare-fun b!2408441 () Bool)

(declare-fun e!1533515 () Bool)

(assert (=> b!2408441 (= e!1533515 e!1533517)))

(declare-fun c!383637 () Bool)

(assert (=> b!2408441 (= c!383637 ((_ is Star!7069) lt!873213))))

(declare-fun bm!147106 () Bool)

(declare-fun call!147111 () Bool)

(assert (=> bm!147106 (= call!147111 (validRegex!2793 (ite c!383636 (regTwo!14651 lt!873213) (regOne!14650 lt!873213))))))

(declare-fun bm!147107 () Bool)

(declare-fun call!147113 () Bool)

(assert (=> bm!147107 (= call!147113 (validRegex!2793 (ite c!383637 (reg!7398 lt!873213) (ite c!383636 (regOne!14651 lt!873213) (regTwo!14650 lt!873213)))))))

(declare-fun bm!147108 () Bool)

(declare-fun call!147112 () Bool)

(assert (=> bm!147108 (= call!147112 call!147113)))

(declare-fun b!2408443 () Bool)

(declare-fun e!1533513 () Bool)

(assert (=> b!2408443 (= e!1533513 call!147113)))

(declare-fun b!2408444 () Bool)

(declare-fun res!1022866 () Bool)

(declare-fun e!1533514 () Bool)

(assert (=> b!2408444 (=> (not res!1022866) (not e!1533514))))

(assert (=> b!2408444 (= res!1022866 call!147112)))

(assert (=> b!2408444 (= e!1533511 e!1533514)))

(declare-fun b!2408445 () Bool)

(assert (=> b!2408445 (= e!1533514 call!147111)))

(declare-fun b!2408442 () Bool)

(assert (=> b!2408442 (= e!1533517 e!1533513)))

(declare-fun res!1022865 () Bool)

(declare-fun nullable!2112 (Regex!7069) Bool)

(assert (=> b!2408442 (= res!1022865 (not (nullable!2112 (reg!7398 lt!873213))))))

(assert (=> b!2408442 (=> (not res!1022865) (not e!1533513))))

(declare-fun d!700319 () Bool)

(declare-fun res!1022868 () Bool)

(assert (=> d!700319 (=> res!1022868 e!1533515)))

(assert (=> d!700319 (= res!1022868 ((_ is ElementMatch!7069) lt!873213))))

(assert (=> d!700319 (= (validRegex!2793 lt!873213) e!1533515)))

(declare-fun b!2408446 () Bool)

(declare-fun e!1533512 () Bool)

(assert (=> b!2408446 (= e!1533512 call!147112)))

(declare-fun b!2408447 () Bool)

(assert (=> b!2408447 (= e!1533516 e!1533512)))

(declare-fun res!1022869 () Bool)

(assert (=> b!2408447 (=> (not res!1022869) (not e!1533512))))

(assert (=> b!2408447 (= res!1022869 call!147111)))

(assert (= (and d!700319 (not res!1022868)) b!2408441))

(assert (= (and b!2408441 c!383637) b!2408442))

(assert (= (and b!2408441 (not c!383637)) b!2408440))

(assert (= (and b!2408442 res!1022865) b!2408443))

(assert (= (and b!2408440 c!383636) b!2408444))

(assert (= (and b!2408440 (not c!383636)) b!2408439))

(assert (= (and b!2408444 res!1022866) b!2408445))

(assert (= (and b!2408439 (not res!1022867)) b!2408447))

(assert (= (and b!2408447 res!1022869) b!2408446))

(assert (= (or b!2408444 b!2408446) bm!147108))

(assert (= (or b!2408445 b!2408447) bm!147106))

(assert (= (or b!2408443 bm!147108) bm!147107))

(declare-fun m!2800927 () Bool)

(assert (=> bm!147106 m!2800927))

(declare-fun m!2800929 () Bool)

(assert (=> bm!147107 m!2800929))

(declare-fun m!2800931 () Bool)

(assert (=> b!2408442 m!2800931))

(assert (=> b!2408413 d!700319))

(declare-fun b!2408518 () Bool)

(declare-fun e!1533558 () Bool)

(declare-fun e!1533554 () Bool)

(assert (=> b!2408518 (= e!1533558 e!1533554)))

(declare-fun res!1022917 () Bool)

(assert (=> b!2408518 (=> (not res!1022917) (not e!1533554))))

(declare-fun lt!873222 () Bool)

(assert (=> b!2408518 (= res!1022917 (not lt!873222))))

(declare-fun b!2408519 () Bool)

(declare-fun e!1533555 () Bool)

(declare-fun derivativeStep!1770 (Regex!7069 C!14296) Regex!7069)

(declare-fun head!5360 (List!28377) C!14296)

(declare-fun tail!3632 (List!28377) List!28377)

(assert (=> b!2408519 (= e!1533555 (matchR!3186 (derivativeStep!1770 lt!873213 (head!5360 (++!6998 s!9460 Nil!28279))) (tail!3632 (++!6998 s!9460 Nil!28279))))))

(declare-fun b!2408520 () Bool)

(declare-fun e!1533553 () Bool)

(declare-fun e!1533556 () Bool)

(assert (=> b!2408520 (= e!1533553 e!1533556)))

(declare-fun c!383655 () Bool)

(assert (=> b!2408520 (= c!383655 ((_ is EmptyLang!7069) lt!873213))))

(declare-fun b!2408521 () Bool)

(declare-fun e!1533559 () Bool)

(assert (=> b!2408521 (= e!1533559 (not (= (head!5360 (++!6998 s!9460 Nil!28279)) (c!383631 lt!873213))))))

(declare-fun b!2408522 () Bool)

(assert (=> b!2408522 (= e!1533556 (not lt!873222))))

(declare-fun b!2408523 () Bool)

(assert (=> b!2408523 (= e!1533554 e!1533559)))

(declare-fun res!1022915 () Bool)

(assert (=> b!2408523 (=> res!1022915 e!1533559)))

(declare-fun call!147119 () Bool)

(assert (=> b!2408523 (= res!1022915 call!147119)))

(declare-fun b!2408524 () Bool)

(declare-fun e!1533557 () Bool)

(assert (=> b!2408524 (= e!1533557 (= (head!5360 (++!6998 s!9460 Nil!28279)) (c!383631 lt!873213)))))

(declare-fun b!2408525 () Bool)

(declare-fun res!1022911 () Bool)

(assert (=> b!2408525 (=> (not res!1022911) (not e!1533557))))

(assert (=> b!2408525 (= res!1022911 (not call!147119))))

(declare-fun b!2408526 () Bool)

(declare-fun res!1022912 () Bool)

(assert (=> b!2408526 (=> res!1022912 e!1533559)))

(declare-fun isEmpty!16282 (List!28377) Bool)

(assert (=> b!2408526 (= res!1022912 (not (isEmpty!16282 (tail!3632 (++!6998 s!9460 Nil!28279)))))))

(declare-fun b!2408527 () Bool)

(declare-fun res!1022913 () Bool)

(assert (=> b!2408527 (=> res!1022913 e!1533558)))

(assert (=> b!2408527 (= res!1022913 e!1533557)))

(declare-fun res!1022914 () Bool)

(assert (=> b!2408527 (=> (not res!1022914) (not e!1533557))))

(assert (=> b!2408527 (= res!1022914 lt!873222)))

(declare-fun b!2408528 () Bool)

(declare-fun res!1022916 () Bool)

(assert (=> b!2408528 (=> res!1022916 e!1533558)))

(assert (=> b!2408528 (= res!1022916 (not ((_ is ElementMatch!7069) lt!873213)))))

(assert (=> b!2408528 (= e!1533556 e!1533558)))

(declare-fun d!700323 () Bool)

(assert (=> d!700323 e!1533553))

(declare-fun c!383653 () Bool)

(assert (=> d!700323 (= c!383653 ((_ is EmptyExpr!7069) lt!873213))))

(assert (=> d!700323 (= lt!873222 e!1533555)))

(declare-fun c!383654 () Bool)

(assert (=> d!700323 (= c!383654 (isEmpty!16282 (++!6998 s!9460 Nil!28279)))))

(assert (=> d!700323 (validRegex!2793 lt!873213)))

(assert (=> d!700323 (= (matchR!3186 lt!873213 (++!6998 s!9460 Nil!28279)) lt!873222)))

(declare-fun b!2408529 () Bool)

(assert (=> b!2408529 (= e!1533555 (nullable!2112 lt!873213))))

(declare-fun b!2408530 () Bool)

(assert (=> b!2408530 (= e!1533553 (= lt!873222 call!147119))))

(declare-fun bm!147114 () Bool)

(assert (=> bm!147114 (= call!147119 (isEmpty!16282 (++!6998 s!9460 Nil!28279)))))

(declare-fun b!2408531 () Bool)

(declare-fun res!1022910 () Bool)

(assert (=> b!2408531 (=> (not res!1022910) (not e!1533557))))

(assert (=> b!2408531 (= res!1022910 (isEmpty!16282 (tail!3632 (++!6998 s!9460 Nil!28279))))))

(assert (= (and d!700323 c!383654) b!2408529))

(assert (= (and d!700323 (not c!383654)) b!2408519))

(assert (= (and d!700323 c!383653) b!2408530))

(assert (= (and d!700323 (not c!383653)) b!2408520))

(assert (= (and b!2408520 c!383655) b!2408522))

(assert (= (and b!2408520 (not c!383655)) b!2408528))

(assert (= (and b!2408528 (not res!1022916)) b!2408527))

(assert (= (and b!2408527 res!1022914) b!2408525))

(assert (= (and b!2408525 res!1022911) b!2408531))

(assert (= (and b!2408531 res!1022910) b!2408524))

(assert (= (and b!2408527 (not res!1022913)) b!2408518))

(assert (= (and b!2408518 res!1022917) b!2408523))

(assert (= (and b!2408523 (not res!1022915)) b!2408526))

(assert (= (and b!2408526 (not res!1022912)) b!2408521))

(assert (= (or b!2408530 b!2408523 b!2408525) bm!147114))

(assert (=> d!700323 m!2800917))

(declare-fun m!2800949 () Bool)

(assert (=> d!700323 m!2800949))

(assert (=> d!700323 m!2800915))

(assert (=> bm!147114 m!2800917))

(assert (=> bm!147114 m!2800949))

(assert (=> b!2408531 m!2800917))

(declare-fun m!2800951 () Bool)

(assert (=> b!2408531 m!2800951))

(assert (=> b!2408531 m!2800951))

(declare-fun m!2800953 () Bool)

(assert (=> b!2408531 m!2800953))

(assert (=> b!2408521 m!2800917))

(declare-fun m!2800955 () Bool)

(assert (=> b!2408521 m!2800955))

(assert (=> b!2408526 m!2800917))

(assert (=> b!2408526 m!2800951))

(assert (=> b!2408526 m!2800951))

(assert (=> b!2408526 m!2800953))

(assert (=> b!2408524 m!2800917))

(assert (=> b!2408524 m!2800955))

(declare-fun m!2800957 () Bool)

(assert (=> b!2408529 m!2800957))

(assert (=> b!2408519 m!2800917))

(assert (=> b!2408519 m!2800955))

(assert (=> b!2408519 m!2800955))

(declare-fun m!2800959 () Bool)

(assert (=> b!2408519 m!2800959))

(assert (=> b!2408519 m!2800917))

(assert (=> b!2408519 m!2800951))

(assert (=> b!2408519 m!2800959))

(assert (=> b!2408519 m!2800951))

(declare-fun m!2800961 () Bool)

(assert (=> b!2408519 m!2800961))

(assert (=> b!2408413 d!700323))

(declare-fun b!2408571 () Bool)

(declare-fun e!1533582 () List!28377)

(assert (=> b!2408571 (= e!1533582 (Cons!28279 (h!33680 s!9460) (++!6998 (t!208354 s!9460) Nil!28279)))))

(declare-fun b!2408572 () Bool)

(declare-fun res!1022929 () Bool)

(declare-fun e!1533583 () Bool)

(assert (=> b!2408572 (=> (not res!1022929) (not e!1533583))))

(declare-fun lt!873228 () List!28377)

(declare-fun size!22208 (List!28377) Int)

(assert (=> b!2408572 (= res!1022929 (= (size!22208 lt!873228) (+ (size!22208 s!9460) (size!22208 Nil!28279))))))

(declare-fun b!2408570 () Bool)

(assert (=> b!2408570 (= e!1533582 Nil!28279)))

(declare-fun b!2408573 () Bool)

(assert (=> b!2408573 (= e!1533583 (or (not (= Nil!28279 Nil!28279)) (= lt!873228 s!9460)))))

(declare-fun d!700329 () Bool)

(assert (=> d!700329 e!1533583))

(declare-fun res!1022928 () Bool)

(assert (=> d!700329 (=> (not res!1022928) (not e!1533583))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3870 (List!28377) (InoxSet C!14296))

(assert (=> d!700329 (= res!1022928 (= (content!3870 lt!873228) ((_ map or) (content!3870 s!9460) (content!3870 Nil!28279))))))

(assert (=> d!700329 (= lt!873228 e!1533582)))

(declare-fun c!383670 () Bool)

(assert (=> d!700329 (= c!383670 ((_ is Nil!28279) s!9460))))

(assert (=> d!700329 (= (++!6998 s!9460 Nil!28279) lt!873228)))

(assert (= (and d!700329 c!383670) b!2408570))

(assert (= (and d!700329 (not c!383670)) b!2408571))

(assert (= (and d!700329 res!1022928) b!2408572))

(assert (= (and b!2408572 res!1022929) b!2408573))

(declare-fun m!2800981 () Bool)

(assert (=> b!2408571 m!2800981))

(declare-fun m!2800983 () Bool)

(assert (=> b!2408572 m!2800983))

(declare-fun m!2800985 () Bool)

(assert (=> b!2408572 m!2800985))

(declare-fun m!2800987 () Bool)

(assert (=> b!2408572 m!2800987))

(declare-fun m!2800989 () Bool)

(assert (=> d!700329 m!2800989))

(declare-fun m!2800991 () Bool)

(assert (=> d!700329 m!2800991))

(declare-fun m!2800993 () Bool)

(assert (=> d!700329 m!2800993))

(assert (=> b!2408413 d!700329))

(declare-fun d!700333 () Bool)

(assert (=> d!700333 (matchR!3186 (Concat!11705 lt!873215 EmptyExpr!7069) (++!6998 s!9460 Nil!28279))))

(declare-fun lt!873232 () Unit!41409)

(declare-fun choose!14239 (Regex!7069 Regex!7069 List!28377 List!28377) Unit!41409)

(assert (=> d!700333 (= lt!873232 (choose!14239 lt!873215 EmptyExpr!7069 s!9460 Nil!28279))))

(declare-fun e!1533599 () Bool)

(assert (=> d!700333 e!1533599))

(declare-fun res!1022946 () Bool)

(assert (=> d!700333 (=> (not res!1022946) (not e!1533599))))

(assert (=> d!700333 (= res!1022946 (validRegex!2793 lt!873215))))

(assert (=> d!700333 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!68 lt!873215 EmptyExpr!7069 s!9460 Nil!28279) lt!873232)))

(declare-fun b!2408596 () Bool)

(assert (=> b!2408596 (= e!1533599 (validRegex!2793 EmptyExpr!7069))))

(assert (= (and d!700333 res!1022946) b!2408596))

(assert (=> d!700333 m!2800917))

(assert (=> d!700333 m!2800917))

(declare-fun m!2801007 () Bool)

(assert (=> d!700333 m!2801007))

(declare-fun m!2801009 () Bool)

(assert (=> d!700333 m!2801009))

(declare-fun m!2801011 () Bool)

(assert (=> d!700333 m!2801011))

(declare-fun m!2801013 () Bool)

(assert (=> b!2408596 m!2801013))

(assert (=> b!2408413 d!700333))

(declare-fun d!700341 () Bool)

(declare-fun res!1022951 () Bool)

(declare-fun e!1533604 () Bool)

(assert (=> d!700341 (=> res!1022951 e!1533604)))

(assert (=> d!700341 (= res!1022951 ((_ is Nil!28278) l!9164))))

(assert (=> d!700341 (= (forall!5703 l!9164 lambda!90639) e!1533604)))

(declare-fun b!2408601 () Bool)

(declare-fun e!1533605 () Bool)

(assert (=> b!2408601 (= e!1533604 e!1533605)))

(declare-fun res!1022952 () Bool)

(assert (=> b!2408601 (=> (not res!1022952) (not e!1533605))))

(declare-fun dynLambda!12176 (Int Regex!7069) Bool)

(assert (=> b!2408601 (= res!1022952 (dynLambda!12176 lambda!90639 (h!33679 l!9164)))))

(declare-fun b!2408602 () Bool)

(assert (=> b!2408602 (= e!1533605 (forall!5703 (t!208353 l!9164) lambda!90639))))

(assert (= (and d!700341 (not res!1022951)) b!2408601))

(assert (= (and b!2408601 res!1022952) b!2408602))

(declare-fun b_lambda!74461 () Bool)

(assert (=> (not b_lambda!74461) (not b!2408601)))

(declare-fun m!2801015 () Bool)

(assert (=> b!2408601 m!2801015))

(declare-fun m!2801017 () Bool)

(assert (=> b!2408602 m!2801017))

(assert (=> start!236060 d!700341))

(declare-fun d!700343 () Bool)

(assert (=> d!700343 (= (isEmpty!16280 l!9164) ((_ is Nil!28278) l!9164))))

(assert (=> b!2408419 d!700343))

(declare-fun b!2408603 () Bool)

(declare-fun e!1533611 () Bool)

(declare-fun e!1533607 () Bool)

(assert (=> b!2408603 (= e!1533611 e!1533607)))

(declare-fun res!1022960 () Bool)

(assert (=> b!2408603 (=> (not res!1022960) (not e!1533607))))

(declare-fun lt!873233 () Bool)

(assert (=> b!2408603 (= res!1022960 (not lt!873233))))

(declare-fun b!2408604 () Bool)

(declare-fun e!1533608 () Bool)

(assert (=> b!2408604 (= e!1533608 (matchR!3186 (derivativeStep!1770 lt!873215 (head!5360 s!9460)) (tail!3632 s!9460)))))

(declare-fun b!2408605 () Bool)

(declare-fun e!1533606 () Bool)

(declare-fun e!1533609 () Bool)

(assert (=> b!2408605 (= e!1533606 e!1533609)))

(declare-fun c!383676 () Bool)

(assert (=> b!2408605 (= c!383676 ((_ is EmptyLang!7069) lt!873215))))

(declare-fun b!2408606 () Bool)

(declare-fun e!1533612 () Bool)

(assert (=> b!2408606 (= e!1533612 (not (= (head!5360 s!9460) (c!383631 lt!873215))))))

(declare-fun b!2408607 () Bool)

(assert (=> b!2408607 (= e!1533609 (not lt!873233))))

(declare-fun b!2408608 () Bool)

(assert (=> b!2408608 (= e!1533607 e!1533612)))

(declare-fun res!1022958 () Bool)

(assert (=> b!2408608 (=> res!1022958 e!1533612)))

(declare-fun call!147121 () Bool)

(assert (=> b!2408608 (= res!1022958 call!147121)))

(declare-fun b!2408609 () Bool)

(declare-fun e!1533610 () Bool)

(assert (=> b!2408609 (= e!1533610 (= (head!5360 s!9460) (c!383631 lt!873215)))))

(declare-fun b!2408610 () Bool)

(declare-fun res!1022954 () Bool)

(assert (=> b!2408610 (=> (not res!1022954) (not e!1533610))))

(assert (=> b!2408610 (= res!1022954 (not call!147121))))

(declare-fun b!2408611 () Bool)

(declare-fun res!1022955 () Bool)

(assert (=> b!2408611 (=> res!1022955 e!1533612)))

(assert (=> b!2408611 (= res!1022955 (not (isEmpty!16282 (tail!3632 s!9460))))))

(declare-fun b!2408612 () Bool)

(declare-fun res!1022956 () Bool)

(assert (=> b!2408612 (=> res!1022956 e!1533611)))

(assert (=> b!2408612 (= res!1022956 e!1533610)))

(declare-fun res!1022957 () Bool)

(assert (=> b!2408612 (=> (not res!1022957) (not e!1533610))))

(assert (=> b!2408612 (= res!1022957 lt!873233)))

(declare-fun b!2408613 () Bool)

(declare-fun res!1022959 () Bool)

(assert (=> b!2408613 (=> res!1022959 e!1533611)))

(assert (=> b!2408613 (= res!1022959 (not ((_ is ElementMatch!7069) lt!873215)))))

(assert (=> b!2408613 (= e!1533609 e!1533611)))

(declare-fun d!700345 () Bool)

(assert (=> d!700345 e!1533606))

(declare-fun c!383674 () Bool)

(assert (=> d!700345 (= c!383674 ((_ is EmptyExpr!7069) lt!873215))))

(assert (=> d!700345 (= lt!873233 e!1533608)))

(declare-fun c!383675 () Bool)

(assert (=> d!700345 (= c!383675 (isEmpty!16282 s!9460))))

(assert (=> d!700345 (validRegex!2793 lt!873215)))

(assert (=> d!700345 (= (matchR!3186 lt!873215 s!9460) lt!873233)))

(declare-fun b!2408614 () Bool)

(assert (=> b!2408614 (= e!1533608 (nullable!2112 lt!873215))))

(declare-fun b!2408615 () Bool)

(assert (=> b!2408615 (= e!1533606 (= lt!873233 call!147121))))

(declare-fun bm!147116 () Bool)

(assert (=> bm!147116 (= call!147121 (isEmpty!16282 s!9460))))

(declare-fun b!2408616 () Bool)

(declare-fun res!1022953 () Bool)

(assert (=> b!2408616 (=> (not res!1022953) (not e!1533610))))

(assert (=> b!2408616 (= res!1022953 (isEmpty!16282 (tail!3632 s!9460)))))

(assert (= (and d!700345 c!383675) b!2408614))

(assert (= (and d!700345 (not c!383675)) b!2408604))

(assert (= (and d!700345 c!383674) b!2408615))

(assert (= (and d!700345 (not c!383674)) b!2408605))

(assert (= (and b!2408605 c!383676) b!2408607))

(assert (= (and b!2408605 (not c!383676)) b!2408613))

(assert (= (and b!2408613 (not res!1022959)) b!2408612))

(assert (= (and b!2408612 res!1022957) b!2408610))

(assert (= (and b!2408610 res!1022954) b!2408616))

(assert (= (and b!2408616 res!1022953) b!2408609))

(assert (= (and b!2408612 (not res!1022956)) b!2408603))

(assert (= (and b!2408603 res!1022960) b!2408608))

(assert (= (and b!2408608 (not res!1022958)) b!2408611))

(assert (= (and b!2408611 (not res!1022955)) b!2408606))

(assert (= (or b!2408615 b!2408608 b!2408610) bm!147116))

(declare-fun m!2801019 () Bool)

(assert (=> d!700345 m!2801019))

(assert (=> d!700345 m!2801011))

(assert (=> bm!147116 m!2801019))

(declare-fun m!2801021 () Bool)

(assert (=> b!2408616 m!2801021))

(assert (=> b!2408616 m!2801021))

(declare-fun m!2801023 () Bool)

(assert (=> b!2408616 m!2801023))

(declare-fun m!2801025 () Bool)

(assert (=> b!2408606 m!2801025))

(assert (=> b!2408611 m!2801021))

(assert (=> b!2408611 m!2801021))

(assert (=> b!2408611 m!2801023))

(assert (=> b!2408609 m!2801025))

(declare-fun m!2801027 () Bool)

(assert (=> b!2408614 m!2801027))

(assert (=> b!2408604 m!2801025))

(assert (=> b!2408604 m!2801025))

(declare-fun m!2801029 () Bool)

(assert (=> b!2408604 m!2801029))

(assert (=> b!2408604 m!2801021))

(assert (=> b!2408604 m!2801029))

(assert (=> b!2408604 m!2801021))

(declare-fun m!2801031 () Bool)

(assert (=> b!2408604 m!2801031))

(assert (=> b!2408412 d!700345))

(declare-fun d!700347 () Bool)

(assert (=> d!700347 (= (head!5358 l!9164) (h!33679 l!9164))))

(assert (=> b!2408412 d!700347))

(declare-fun bs!463362 () Bool)

(declare-fun d!700349 () Bool)

(assert (= bs!463362 (and d!700349 start!236060)))

(declare-fun lambda!90649 () Int)

(assert (=> bs!463362 (= lambda!90649 lambda!90639)))

(declare-fun b!2408669 () Bool)

(declare-fun e!1533643 () Bool)

(declare-fun lt!873236 () Regex!7069)

(declare-fun isConcat!132 (Regex!7069) Bool)

(assert (=> b!2408669 (= e!1533643 (isConcat!132 lt!873236))))

(declare-fun b!2408670 () Bool)

(declare-fun e!1533647 () Regex!7069)

(assert (=> b!2408670 (= e!1533647 (h!33679 l!9164))))

(declare-fun b!2408671 () Bool)

(declare-fun e!1533644 () Regex!7069)

(assert (=> b!2408671 (= e!1533644 EmptyExpr!7069)))

(declare-fun b!2408672 () Bool)

(assert (=> b!2408672 (= e!1533644 (Concat!11705 (h!33679 l!9164) (generalisedConcat!170 (t!208353 l!9164))))))

(declare-fun b!2408673 () Bool)

(declare-fun e!1533645 () Bool)

(assert (=> b!2408673 (= e!1533645 e!1533643)))

(declare-fun c!383695 () Bool)

(assert (=> b!2408673 (= c!383695 (isEmpty!16280 (tail!3630 l!9164)))))

(declare-fun b!2408675 () Bool)

(assert (=> b!2408675 (= e!1533647 e!1533644)))

(declare-fun c!383696 () Bool)

(assert (=> b!2408675 (= c!383696 ((_ is Cons!28278) l!9164))))

(declare-fun b!2408676 () Bool)

(assert (=> b!2408676 (= e!1533643 (= lt!873236 (head!5358 l!9164)))))

(declare-fun b!2408677 () Bool)

(declare-fun e!1533646 () Bool)

(assert (=> b!2408677 (= e!1533646 e!1533645)))

(declare-fun c!383693 () Bool)

(assert (=> b!2408677 (= c!383693 (isEmpty!16280 l!9164))))

(declare-fun b!2408678 () Bool)

(declare-fun isEmptyExpr!132 (Regex!7069) Bool)

(assert (=> b!2408678 (= e!1533645 (isEmptyExpr!132 lt!873236))))

(assert (=> d!700349 e!1533646))

(declare-fun res!1022981 () Bool)

(assert (=> d!700349 (=> (not res!1022981) (not e!1533646))))

(assert (=> d!700349 (= res!1022981 (validRegex!2793 lt!873236))))

(assert (=> d!700349 (= lt!873236 e!1533647)))

(declare-fun c!383694 () Bool)

(declare-fun e!1533648 () Bool)

(assert (=> d!700349 (= c!383694 e!1533648)))

(declare-fun res!1022982 () Bool)

(assert (=> d!700349 (=> (not res!1022982) (not e!1533648))))

(assert (=> d!700349 (= res!1022982 ((_ is Cons!28278) l!9164))))

(assert (=> d!700349 (forall!5703 l!9164 lambda!90649)))

(assert (=> d!700349 (= (generalisedConcat!170 l!9164) lt!873236)))

(declare-fun b!2408674 () Bool)

(assert (=> b!2408674 (= e!1533648 (isEmpty!16280 (t!208353 l!9164)))))

(assert (= (and d!700349 res!1022982) b!2408674))

(assert (= (and d!700349 c!383694) b!2408670))

(assert (= (and d!700349 (not c!383694)) b!2408675))

(assert (= (and b!2408675 c!383696) b!2408672))

(assert (= (and b!2408675 (not c!383696)) b!2408671))

(assert (= (and d!700349 res!1022981) b!2408677))

(assert (= (and b!2408677 c!383693) b!2408678))

(assert (= (and b!2408677 (not c!383693)) b!2408673))

(assert (= (and b!2408673 c!383695) b!2408676))

(assert (= (and b!2408673 (not c!383695)) b!2408669))

(assert (=> b!2408676 m!2800913))

(declare-fun m!2801033 () Bool)

(assert (=> d!700349 m!2801033))

(declare-fun m!2801035 () Bool)

(assert (=> d!700349 m!2801035))

(declare-fun m!2801037 () Bool)

(assert (=> b!2408674 m!2801037))

(assert (=> b!2408673 m!2800899))

(assert (=> b!2408673 m!2800899))

(declare-fun m!2801039 () Bool)

(assert (=> b!2408673 m!2801039))

(declare-fun m!2801041 () Bool)

(assert (=> b!2408669 m!2801041))

(assert (=> b!2408677 m!2800901))

(declare-fun m!2801043 () Bool)

(assert (=> b!2408672 m!2801043))

(declare-fun m!2801045 () Bool)

(assert (=> b!2408678 m!2801045))

(assert (=> b!2408410 d!700349))

(declare-fun d!700351 () Bool)

(assert (=> d!700351 (= (isEmpty!16280 lt!873212) ((_ is Nil!28278) lt!873212))))

(assert (=> b!2408409 d!700351))

(declare-fun d!700353 () Bool)

(assert (=> d!700353 (= (tail!3630 l!9164) (t!208353 l!9164))))

(assert (=> b!2408409 d!700353))

(declare-fun b!2408692 () Bool)

(declare-fun e!1533661 () Bool)

(declare-fun e!1533657 () Bool)

(assert (=> b!2408692 (= e!1533661 e!1533657)))

(declare-fun res!1022993 () Bool)

(assert (=> b!2408692 (=> (not res!1022993) (not e!1533657))))

(declare-fun lt!873237 () Bool)

(assert (=> b!2408692 (= res!1022993 (not lt!873237))))

(declare-fun b!2408693 () Bool)

(declare-fun e!1533658 () Bool)

(assert (=> b!2408693 (= e!1533658 (matchR!3186 (derivativeStep!1770 r!13927 (head!5360 s!9460)) (tail!3632 s!9460)))))

(declare-fun b!2408694 () Bool)

(declare-fun e!1533656 () Bool)

(declare-fun e!1533659 () Bool)

(assert (=> b!2408694 (= e!1533656 e!1533659)))

(declare-fun c!383703 () Bool)

(assert (=> b!2408694 (= c!383703 ((_ is EmptyLang!7069) r!13927))))

(declare-fun b!2408695 () Bool)

(declare-fun e!1533662 () Bool)

(assert (=> b!2408695 (= e!1533662 (not (= (head!5360 s!9460) (c!383631 r!13927))))))

(declare-fun b!2408696 () Bool)

(assert (=> b!2408696 (= e!1533659 (not lt!873237))))

(declare-fun b!2408697 () Bool)

(assert (=> b!2408697 (= e!1533657 e!1533662)))

(declare-fun res!1022991 () Bool)

(assert (=> b!2408697 (=> res!1022991 e!1533662)))

(declare-fun call!147128 () Bool)

(assert (=> b!2408697 (= res!1022991 call!147128)))

(declare-fun b!2408698 () Bool)

(declare-fun e!1533660 () Bool)

(assert (=> b!2408698 (= e!1533660 (= (head!5360 s!9460) (c!383631 r!13927)))))

(declare-fun b!2408699 () Bool)

(declare-fun res!1022987 () Bool)

(assert (=> b!2408699 (=> (not res!1022987) (not e!1533660))))

(assert (=> b!2408699 (= res!1022987 (not call!147128))))

(declare-fun b!2408700 () Bool)

(declare-fun res!1022988 () Bool)

(assert (=> b!2408700 (=> res!1022988 e!1533662)))

(assert (=> b!2408700 (= res!1022988 (not (isEmpty!16282 (tail!3632 s!9460))))))

(declare-fun b!2408701 () Bool)

(declare-fun res!1022989 () Bool)

(assert (=> b!2408701 (=> res!1022989 e!1533661)))

(assert (=> b!2408701 (= res!1022989 e!1533660)))

(declare-fun res!1022990 () Bool)

(assert (=> b!2408701 (=> (not res!1022990) (not e!1533660))))

(assert (=> b!2408701 (= res!1022990 lt!873237)))

(declare-fun b!2408702 () Bool)

(declare-fun res!1022992 () Bool)

(assert (=> b!2408702 (=> res!1022992 e!1533661)))

(assert (=> b!2408702 (= res!1022992 (not ((_ is ElementMatch!7069) r!13927)))))

(assert (=> b!2408702 (= e!1533659 e!1533661)))

(declare-fun d!700355 () Bool)

(assert (=> d!700355 e!1533656))

(declare-fun c!383701 () Bool)

(assert (=> d!700355 (= c!383701 ((_ is EmptyExpr!7069) r!13927))))

(assert (=> d!700355 (= lt!873237 e!1533658)))

(declare-fun c!383702 () Bool)

(assert (=> d!700355 (= c!383702 (isEmpty!16282 s!9460))))

(assert (=> d!700355 (validRegex!2793 r!13927)))

(assert (=> d!700355 (= (matchR!3186 r!13927 s!9460) lt!873237)))

(declare-fun b!2408703 () Bool)

(assert (=> b!2408703 (= e!1533658 (nullable!2112 r!13927))))

(declare-fun b!2408704 () Bool)

(assert (=> b!2408704 (= e!1533656 (= lt!873237 call!147128))))

(declare-fun bm!147123 () Bool)

(assert (=> bm!147123 (= call!147128 (isEmpty!16282 s!9460))))

(declare-fun b!2408705 () Bool)

(declare-fun res!1022986 () Bool)

(assert (=> b!2408705 (=> (not res!1022986) (not e!1533660))))

(assert (=> b!2408705 (= res!1022986 (isEmpty!16282 (tail!3632 s!9460)))))

(assert (= (and d!700355 c!383702) b!2408703))

(assert (= (and d!700355 (not c!383702)) b!2408693))

(assert (= (and d!700355 c!383701) b!2408704))

(assert (= (and d!700355 (not c!383701)) b!2408694))

(assert (= (and b!2408694 c!383703) b!2408696))

(assert (= (and b!2408694 (not c!383703)) b!2408702))

(assert (= (and b!2408702 (not res!1022992)) b!2408701))

(assert (= (and b!2408701 res!1022990) b!2408699))

(assert (= (and b!2408699 res!1022987) b!2408705))

(assert (= (and b!2408705 res!1022986) b!2408698))

(assert (= (and b!2408701 (not res!1022989)) b!2408692))

(assert (= (and b!2408692 res!1022993) b!2408697))

(assert (= (and b!2408697 (not res!1022991)) b!2408700))

(assert (= (and b!2408700 (not res!1022988)) b!2408695))

(assert (= (or b!2408704 b!2408697 b!2408699) bm!147123))

(assert (=> d!700355 m!2801019))

(declare-fun m!2801047 () Bool)

(assert (=> d!700355 m!2801047))

(assert (=> bm!147123 m!2801019))

(assert (=> b!2408705 m!2801021))

(assert (=> b!2408705 m!2801021))

(assert (=> b!2408705 m!2801023))

(assert (=> b!2408695 m!2801025))

(assert (=> b!2408700 m!2801021))

(assert (=> b!2408700 m!2801021))

(assert (=> b!2408700 m!2801023))

(assert (=> b!2408698 m!2801025))

(declare-fun m!2801049 () Bool)

(assert (=> b!2408703 m!2801049))

(assert (=> b!2408693 m!2801025))

(assert (=> b!2408693 m!2801025))

(declare-fun m!2801051 () Bool)

(assert (=> b!2408693 m!2801051))

(assert (=> b!2408693 m!2801021))

(assert (=> b!2408693 m!2801051))

(assert (=> b!2408693 m!2801021))

(declare-fun m!2801053 () Bool)

(assert (=> b!2408693 m!2801053))

(assert (=> b!2408414 d!700355))

(declare-fun b!2408795 () Bool)

(assert (=> b!2408795 true))

(assert (=> b!2408795 true))

(declare-fun bs!463367 () Bool)

(declare-fun b!2408797 () Bool)

(assert (= bs!463367 (and b!2408797 b!2408795)))

(declare-fun lambda!90658 () Int)

(declare-fun lambda!90657 () Int)

(assert (=> bs!463367 (not (= lambda!90658 lambda!90657))))

(assert (=> b!2408797 true))

(assert (=> b!2408797 true))

(declare-fun b!2408791 () Bool)

(declare-fun e!1533719 () Bool)

(declare-fun e!1533720 () Bool)

(assert (=> b!2408791 (= e!1533719 e!1533720)))

(declare-fun c!383728 () Bool)

(assert (=> b!2408791 (= c!383728 ((_ is Star!7069) r!13927))))

(declare-fun b!2408792 () Bool)

(declare-fun res!1023037 () Bool)

(declare-fun e!1533721 () Bool)

(assert (=> b!2408792 (=> res!1023037 e!1533721)))

(declare-fun call!147143 () Bool)

(assert (=> b!2408792 (= res!1023037 call!147143)))

(assert (=> b!2408792 (= e!1533720 e!1533721)))

(declare-fun bm!147138 () Bool)

(declare-fun call!147144 () Bool)

(declare-fun Exists!1122 (Int) Bool)

(assert (=> bm!147138 (= call!147144 (Exists!1122 (ite c!383728 lambda!90657 lambda!90658)))))

(declare-fun b!2408793 () Bool)

(declare-fun e!1533716 () Bool)

(assert (=> b!2408793 (= e!1533716 (matchRSpec!918 (regTwo!14651 r!13927) s!9460))))

(declare-fun b!2408794 () Bool)

(declare-fun e!1533715 () Bool)

(assert (=> b!2408794 (= e!1533715 call!147143)))

(declare-fun b!2408796 () Bool)

(declare-fun c!383726 () Bool)

(assert (=> b!2408796 (= c!383726 ((_ is Union!7069) r!13927))))

(declare-fun e!1533718 () Bool)

(assert (=> b!2408796 (= e!1533718 e!1533719)))

(assert (=> b!2408797 (= e!1533720 call!147144)))

(declare-fun bm!147139 () Bool)

(assert (=> bm!147139 (= call!147143 (isEmpty!16282 s!9460))))

(declare-fun b!2408798 () Bool)

(declare-fun c!383727 () Bool)

(assert (=> b!2408798 (= c!383727 ((_ is ElementMatch!7069) r!13927))))

(declare-fun e!1533717 () Bool)

(assert (=> b!2408798 (= e!1533717 e!1533718)))

(declare-fun b!2408799 () Bool)

(assert (=> b!2408799 (= e!1533719 e!1533716)))

(declare-fun res!1023036 () Bool)

(assert (=> b!2408799 (= res!1023036 (matchRSpec!918 (regOne!14651 r!13927) s!9460))))

(assert (=> b!2408799 (=> res!1023036 e!1533716)))

(declare-fun b!2408800 () Bool)

(assert (=> b!2408800 (= e!1533718 (= s!9460 (Cons!28279 (c!383631 r!13927) Nil!28279)))))

(declare-fun b!2408801 () Bool)

(assert (=> b!2408801 (= e!1533715 e!1533717)))

(declare-fun res!1023035 () Bool)

(assert (=> b!2408801 (= res!1023035 (not ((_ is EmptyLang!7069) r!13927)))))

(assert (=> b!2408801 (=> (not res!1023035) (not e!1533717))))

(declare-fun d!700357 () Bool)

(declare-fun c!383725 () Bool)

(assert (=> d!700357 (= c!383725 ((_ is EmptyExpr!7069) r!13927))))

(assert (=> d!700357 (= (matchRSpec!918 r!13927 s!9460) e!1533715)))

(assert (=> b!2408795 (= e!1533721 call!147144)))

(assert (= (and d!700357 c!383725) b!2408794))

(assert (= (and d!700357 (not c!383725)) b!2408801))

(assert (= (and b!2408801 res!1023035) b!2408798))

(assert (= (and b!2408798 c!383727) b!2408800))

(assert (= (and b!2408798 (not c!383727)) b!2408796))

(assert (= (and b!2408796 c!383726) b!2408799))

(assert (= (and b!2408796 (not c!383726)) b!2408791))

(assert (= (and b!2408799 (not res!1023036)) b!2408793))

(assert (= (and b!2408791 c!383728) b!2408792))

(assert (= (and b!2408791 (not c!383728)) b!2408797))

(assert (= (and b!2408792 (not res!1023037)) b!2408795))

(assert (= (or b!2408795 b!2408797) bm!147138))

(assert (= (or b!2408794 b!2408792) bm!147139))

(declare-fun m!2801097 () Bool)

(assert (=> bm!147138 m!2801097))

(declare-fun m!2801099 () Bool)

(assert (=> b!2408793 m!2801099))

(assert (=> bm!147139 m!2801019))

(declare-fun m!2801101 () Bool)

(assert (=> b!2408799 m!2801101))

(assert (=> b!2408414 d!700357))

(declare-fun d!700369 () Bool)

(assert (=> d!700369 (= (matchR!3186 r!13927 s!9460) (matchRSpec!918 r!13927 s!9460))))

(declare-fun lt!873248 () Unit!41409)

(declare-fun choose!14241 (Regex!7069 List!28377) Unit!41409)

(assert (=> d!700369 (= lt!873248 (choose!14241 r!13927 s!9460))))

(assert (=> d!700369 (validRegex!2793 r!13927)))

(assert (=> d!700369 (= (mainMatchTheorem!918 r!13927 s!9460) lt!873248)))

(declare-fun bs!463368 () Bool)

(assert (= bs!463368 d!700369))

(assert (=> bs!463368 m!2800903))

(assert (=> bs!463368 m!2800905))

(declare-fun m!2801117 () Bool)

(assert (=> bs!463368 m!2801117))

(assert (=> bs!463368 m!2801047))

(assert (=> b!2408414 d!700369))

(declare-fun bs!463369 () Bool)

(declare-fun d!700373 () Bool)

(assert (= bs!463369 (and d!700373 start!236060)))

(declare-fun lambda!90659 () Int)

(assert (=> bs!463369 (= lambda!90659 lambda!90639)))

(declare-fun bs!463370 () Bool)

(assert (= bs!463370 (and d!700373 d!700349)))

(assert (=> bs!463370 (= lambda!90659 lambda!90649)))

(declare-fun b!2408820 () Bool)

(declare-fun e!1533730 () Bool)

(declare-fun lt!873251 () Regex!7069)

(assert (=> b!2408820 (= e!1533730 (isConcat!132 lt!873251))))

(declare-fun b!2408821 () Bool)

(declare-fun e!1533734 () Regex!7069)

(assert (=> b!2408821 (= e!1533734 (h!33679 lt!873212))))

(declare-fun b!2408822 () Bool)

(declare-fun e!1533731 () Regex!7069)

(assert (=> b!2408822 (= e!1533731 EmptyExpr!7069)))

(declare-fun b!2408823 () Bool)

(assert (=> b!2408823 (= e!1533731 (Concat!11705 (h!33679 lt!873212) (generalisedConcat!170 (t!208353 lt!873212))))))

(declare-fun b!2408824 () Bool)

(declare-fun e!1533732 () Bool)

(assert (=> b!2408824 (= e!1533732 e!1533730)))

(declare-fun c!383734 () Bool)

(assert (=> b!2408824 (= c!383734 (isEmpty!16280 (tail!3630 lt!873212)))))

(declare-fun b!2408826 () Bool)

(assert (=> b!2408826 (= e!1533734 e!1533731)))

(declare-fun c!383735 () Bool)

(assert (=> b!2408826 (= c!383735 ((_ is Cons!28278) lt!873212))))

(declare-fun b!2408827 () Bool)

(assert (=> b!2408827 (= e!1533730 (= lt!873251 (head!5358 lt!873212)))))

(declare-fun b!2408828 () Bool)

(declare-fun e!1533733 () Bool)

(assert (=> b!2408828 (= e!1533733 e!1533732)))

(declare-fun c!383732 () Bool)

(assert (=> b!2408828 (= c!383732 (isEmpty!16280 lt!873212))))

(declare-fun b!2408829 () Bool)

(assert (=> b!2408829 (= e!1533732 (isEmptyExpr!132 lt!873251))))

(assert (=> d!700373 e!1533733))

(declare-fun res!1023046 () Bool)

(assert (=> d!700373 (=> (not res!1023046) (not e!1533733))))

(assert (=> d!700373 (= res!1023046 (validRegex!2793 lt!873251))))

(assert (=> d!700373 (= lt!873251 e!1533734)))

(declare-fun c!383733 () Bool)

(declare-fun e!1533735 () Bool)

(assert (=> d!700373 (= c!383733 e!1533735)))

(declare-fun res!1023047 () Bool)

(assert (=> d!700373 (=> (not res!1023047) (not e!1533735))))

(assert (=> d!700373 (= res!1023047 ((_ is Cons!28278) lt!873212))))

(assert (=> d!700373 (forall!5703 lt!873212 lambda!90659)))

(assert (=> d!700373 (= (generalisedConcat!170 lt!873212) lt!873251)))

(declare-fun b!2408825 () Bool)

(assert (=> b!2408825 (= e!1533735 (isEmpty!16280 (t!208353 lt!873212)))))

(assert (= (and d!700373 res!1023047) b!2408825))

(assert (= (and d!700373 c!383733) b!2408821))

(assert (= (and d!700373 (not c!383733)) b!2408826))

(assert (= (and b!2408826 c!383735) b!2408823))

(assert (= (and b!2408826 (not c!383735)) b!2408822))

(assert (= (and d!700373 res!1023046) b!2408828))

(assert (= (and b!2408828 c!383732) b!2408829))

(assert (= (and b!2408828 (not c!383732)) b!2408824))

(assert (= (and b!2408824 c!383734) b!2408827))

(assert (= (and b!2408824 (not c!383734)) b!2408820))

(declare-fun m!2801119 () Bool)

(assert (=> b!2408827 m!2801119))

(declare-fun m!2801121 () Bool)

(assert (=> d!700373 m!2801121))

(declare-fun m!2801125 () Bool)

(assert (=> d!700373 m!2801125))

(declare-fun m!2801127 () Bool)

(assert (=> b!2408825 m!2801127))

(declare-fun m!2801131 () Bool)

(assert (=> b!2408824 m!2801131))

(assert (=> b!2408824 m!2801131))

(declare-fun m!2801135 () Bool)

(assert (=> b!2408824 m!2801135))

(declare-fun m!2801137 () Bool)

(assert (=> b!2408820 m!2801137))

(assert (=> b!2408828 m!2800897))

(declare-fun m!2801139 () Bool)

(assert (=> b!2408823 m!2801139))

(declare-fun m!2801141 () Bool)

(assert (=> b!2408829 m!2801141))

(assert (=> b!2408415 d!700373))

(declare-fun b!2408851 () Bool)

(declare-fun e!1533741 () Bool)

(assert (=> b!2408851 (= e!1533741 tp_is_empty!11551)))

(declare-fun b!2408852 () Bool)

(declare-fun tp!766402 () Bool)

(declare-fun tp!766399 () Bool)

(assert (=> b!2408852 (= e!1533741 (and tp!766402 tp!766399))))

(declare-fun b!2408854 () Bool)

(declare-fun tp!766400 () Bool)

(declare-fun tp!766398 () Bool)

(assert (=> b!2408854 (= e!1533741 (and tp!766400 tp!766398))))

(declare-fun b!2408853 () Bool)

(declare-fun tp!766401 () Bool)

(assert (=> b!2408853 (= e!1533741 tp!766401)))

(assert (=> b!2408418 (= tp!766370 e!1533741)))

(assert (= (and b!2408418 ((_ is ElementMatch!7069) (reg!7398 r!13927))) b!2408851))

(assert (= (and b!2408418 ((_ is Concat!11705) (reg!7398 r!13927))) b!2408852))

(assert (= (and b!2408418 ((_ is Star!7069) (reg!7398 r!13927))) b!2408853))

(assert (= (and b!2408418 ((_ is Union!7069) (reg!7398 r!13927))) b!2408854))

(declare-fun b!2408864 () Bool)

(declare-fun e!1533745 () Bool)

(declare-fun tp!766410 () Bool)

(assert (=> b!2408864 (= e!1533745 (and tp_is_empty!11551 tp!766410))))

(assert (=> b!2408408 (= tp!766375 e!1533745)))

(assert (= (and b!2408408 ((_ is Cons!28279) (t!208354 s!9460))) b!2408864))

(declare-fun b!2408868 () Bool)

(declare-fun e!1533748 () Bool)

(assert (=> b!2408868 (= e!1533748 tp_is_empty!11551)))

(declare-fun b!2408869 () Bool)

(declare-fun tp!766417 () Bool)

(declare-fun tp!766414 () Bool)

(assert (=> b!2408869 (= e!1533748 (and tp!766417 tp!766414))))

(declare-fun b!2408871 () Bool)

(declare-fun tp!766415 () Bool)

(declare-fun tp!766413 () Bool)

(assert (=> b!2408871 (= e!1533748 (and tp!766415 tp!766413))))

(declare-fun b!2408870 () Bool)

(declare-fun tp!766416 () Bool)

(assert (=> b!2408870 (= e!1533748 tp!766416)))

(assert (=> b!2408417 (= tp!766371 e!1533748)))

(assert (= (and b!2408417 ((_ is ElementMatch!7069) (h!33679 l!9164))) b!2408868))

(assert (= (and b!2408417 ((_ is Concat!11705) (h!33679 l!9164))) b!2408869))

(assert (= (and b!2408417 ((_ is Star!7069) (h!33679 l!9164))) b!2408870))

(assert (= (and b!2408417 ((_ is Union!7069) (h!33679 l!9164))) b!2408871))

(declare-fun b!2408885 () Bool)

(declare-fun e!1533755 () Bool)

(declare-fun tp!766428 () Bool)

(declare-fun tp!766429 () Bool)

(assert (=> b!2408885 (= e!1533755 (and tp!766428 tp!766429))))

(assert (=> b!2408417 (= tp!766373 e!1533755)))

(assert (= (and b!2408417 ((_ is Cons!28278) (t!208353 l!9164))) b!2408885))

(declare-fun b!2408886 () Bool)

(declare-fun e!1533756 () Bool)

(assert (=> b!2408886 (= e!1533756 tp_is_empty!11551)))

(declare-fun b!2408887 () Bool)

(declare-fun tp!766438 () Bool)

(declare-fun tp!766435 () Bool)

(assert (=> b!2408887 (= e!1533756 (and tp!766438 tp!766435))))

(declare-fun b!2408889 () Bool)

(declare-fun tp!766436 () Bool)

(declare-fun tp!766434 () Bool)

(assert (=> b!2408889 (= e!1533756 (and tp!766436 tp!766434))))

(declare-fun b!2408888 () Bool)

(declare-fun tp!766437 () Bool)

(assert (=> b!2408888 (= e!1533756 tp!766437)))

(assert (=> b!2408411 (= tp!766376 e!1533756)))

(assert (= (and b!2408411 ((_ is ElementMatch!7069) (regOne!14650 r!13927))) b!2408886))

(assert (= (and b!2408411 ((_ is Concat!11705) (regOne!14650 r!13927))) b!2408887))

(assert (= (and b!2408411 ((_ is Star!7069) (regOne!14650 r!13927))) b!2408888))

(assert (= (and b!2408411 ((_ is Union!7069) (regOne!14650 r!13927))) b!2408889))

(declare-fun b!2408890 () Bool)

(declare-fun e!1533757 () Bool)

(assert (=> b!2408890 (= e!1533757 tp_is_empty!11551)))

(declare-fun b!2408891 () Bool)

(declare-fun tp!766443 () Bool)

(declare-fun tp!766440 () Bool)

(assert (=> b!2408891 (= e!1533757 (and tp!766443 tp!766440))))

(declare-fun b!2408893 () Bool)

(declare-fun tp!766441 () Bool)

(declare-fun tp!766439 () Bool)

(assert (=> b!2408893 (= e!1533757 (and tp!766441 tp!766439))))

(declare-fun b!2408892 () Bool)

(declare-fun tp!766442 () Bool)

(assert (=> b!2408892 (= e!1533757 tp!766442)))

(assert (=> b!2408411 (= tp!766374 e!1533757)))

(assert (= (and b!2408411 ((_ is ElementMatch!7069) (regTwo!14650 r!13927))) b!2408890))

(assert (= (and b!2408411 ((_ is Concat!11705) (regTwo!14650 r!13927))) b!2408891))

(assert (= (and b!2408411 ((_ is Star!7069) (regTwo!14650 r!13927))) b!2408892))

(assert (= (and b!2408411 ((_ is Union!7069) (regTwo!14650 r!13927))) b!2408893))

(declare-fun b!2408899 () Bool)

(declare-fun e!1533760 () Bool)

(assert (=> b!2408899 (= e!1533760 tp_is_empty!11551)))

(declare-fun b!2408900 () Bool)

(declare-fun tp!766455 () Bool)

(declare-fun tp!766452 () Bool)

(assert (=> b!2408900 (= e!1533760 (and tp!766455 tp!766452))))

(declare-fun b!2408902 () Bool)

(declare-fun tp!766453 () Bool)

(declare-fun tp!766451 () Bool)

(assert (=> b!2408902 (= e!1533760 (and tp!766453 tp!766451))))

(declare-fun b!2408901 () Bool)

(declare-fun tp!766454 () Bool)

(assert (=> b!2408901 (= e!1533760 tp!766454)))

(assert (=> b!2408420 (= tp!766377 e!1533760)))

(assert (= (and b!2408420 ((_ is ElementMatch!7069) (regOne!14651 r!13927))) b!2408899))

(assert (= (and b!2408420 ((_ is Concat!11705) (regOne!14651 r!13927))) b!2408900))

(assert (= (and b!2408420 ((_ is Star!7069) (regOne!14651 r!13927))) b!2408901))

(assert (= (and b!2408420 ((_ is Union!7069) (regOne!14651 r!13927))) b!2408902))

(declare-fun b!2408905 () Bool)

(declare-fun e!1533761 () Bool)

(assert (=> b!2408905 (= e!1533761 tp_is_empty!11551)))

(declare-fun b!2408907 () Bool)

(declare-fun tp!766465 () Bool)

(declare-fun tp!766461 () Bool)

(assert (=> b!2408907 (= e!1533761 (and tp!766465 tp!766461))))

(declare-fun b!2408910 () Bool)

(declare-fun tp!766462 () Bool)

(declare-fun tp!766458 () Bool)

(assert (=> b!2408910 (= e!1533761 (and tp!766462 tp!766458))))

(declare-fun b!2408909 () Bool)

(declare-fun tp!766464 () Bool)

(assert (=> b!2408909 (= e!1533761 tp!766464)))

(assert (=> b!2408420 (= tp!766372 e!1533761)))

(assert (= (and b!2408420 ((_ is ElementMatch!7069) (regTwo!14651 r!13927))) b!2408905))

(assert (= (and b!2408420 ((_ is Concat!11705) (regTwo!14651 r!13927))) b!2408907))

(assert (= (and b!2408420 ((_ is Star!7069) (regTwo!14651 r!13927))) b!2408909))

(assert (= (and b!2408420 ((_ is Union!7069) (regTwo!14651 r!13927))) b!2408910))

(declare-fun b_lambda!74463 () Bool)

(assert (= b_lambda!74461 (or start!236060 b_lambda!74463)))

(declare-fun bs!463371 () Bool)

(declare-fun d!700379 () Bool)

(assert (= bs!463371 (and d!700379 start!236060)))

(assert (=> bs!463371 (= (dynLambda!12176 lambda!90639 (h!33679 l!9164)) (validRegex!2793 (h!33679 l!9164)))))

(declare-fun m!2801143 () Bool)

(assert (=> bs!463371 m!2801143))

(assert (=> b!2408601 d!700379))

(check-sat (not b!2408673) (not b!2408677) (not b!2408820) (not bm!147114) (not bm!147116) (not b!2408616) (not bm!147107) (not b!2408703) (not b!2408572) (not b!2408900) (not b_lambda!74463) (not b!2408909) (not bm!147138) (not d!700369) (not b!2408705) (not b!2408678) (not bm!147139) (not b!2408885) (not b!2408901) (not bm!147106) (not b!2408854) (not b!2408693) (not b!2408442) (not b!2408852) (not b!2408889) (not b!2408524) (not b!2408531) (not b!2408853) (not b!2408604) (not b!2408870) (not b!2408828) (not b!2408571) (not d!700345) (not b!2408669) (not b!2408529) (not b!2408825) (not b!2408700) (not b!2408893) (not b!2408695) (not b!2408609) (not b!2408829) (not b!2408823) (not b!2408606) (not b!2408888) (not b!2408521) (not b!2408864) (not b!2408602) (not b!2408902) (not b!2408698) (not b!2408827) (not b!2408824) (not b!2408799) (not b!2408793) (not b!2408887) (not b!2408892) (not b!2408871) (not bs!463371) (not b!2408672) (not b!2408611) (not bm!147123) (not d!700355) (not d!700333) (not b!2408596) (not b!2408891) (not b!2408676) (not d!700329) (not b!2408910) (not b!2408907) (not d!700373) (not b!2408519) (not b!2408869) (not d!700323) (not b!2408674) (not b!2408526) (not d!700349) tp_is_empty!11551 (not b!2408614))
(check-sat)
