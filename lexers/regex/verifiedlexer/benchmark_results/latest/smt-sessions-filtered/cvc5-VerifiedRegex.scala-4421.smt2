; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235482 () Bool)

(assert start!235482)

(declare-fun b!2400415 () Bool)

(declare-fun e!1529311 () Bool)

(declare-fun tp!763962 () Bool)

(declare-fun tp!763964 () Bool)

(assert (=> b!2400415 (= e!1529311 (and tp!763962 tp!763964))))

(declare-fun b!2400416 () Bool)

(declare-fun tp!763969 () Bool)

(declare-fun tp!763968 () Bool)

(assert (=> b!2400416 (= e!1529311 (and tp!763969 tp!763968))))

(declare-fun b!2400417 () Bool)

(declare-fun e!1529316 () Bool)

(declare-fun tp!763967 () Bool)

(declare-fun tp!763966 () Bool)

(assert (=> b!2400417 (= e!1529316 (and tp!763967 tp!763966))))

(declare-fun b!2400418 () Bool)

(declare-fun tp!763965 () Bool)

(assert (=> b!2400418 (= e!1529311 tp!763965)))

(declare-fun b!2400419 () Bool)

(declare-fun tp_is_empty!11481 () Bool)

(assert (=> b!2400419 (= e!1529311 tp_is_empty!11481)))

(declare-fun b!2400420 () Bool)

(declare-fun e!1529313 () Bool)

(declare-fun e!1529315 () Bool)

(assert (=> b!2400420 (= e!1529313 e!1529315)))

(declare-fun res!1019864 () Bool)

(assert (=> b!2400420 (=> res!1019864 e!1529315)))

(declare-datatypes ((C!14226 0))(
  ( (C!14227 (val!8355 Int)) )
))
(declare-datatypes ((Regex!7034 0))(
  ( (ElementMatch!7034 (c!382176 C!14226)) (Concat!11670 (regOne!14580 Regex!7034) (regTwo!14580 Regex!7034)) (EmptyExpr!7034) (Star!7034 (reg!7363 Regex!7034)) (EmptyLang!7034) (Union!7034 (regOne!14581 Regex!7034) (regTwo!14581 Regex!7034)) )
))
(declare-datatypes ((List!28306 0))(
  ( (Nil!28208) (Cons!28208 (h!33609 Regex!7034) (t!208283 List!28306)) )
))
(declare-fun l!9164 () List!28306)

(declare-fun validRegex!2759 (Regex!7034) Bool)

(assert (=> b!2400420 (= res!1019864 (not (validRegex!2759 (h!33609 l!9164))))))

(declare-fun lt!872513 () Regex!7034)

(declare-fun generalisedConcat!135 (List!28306) Regex!7034)

(assert (=> b!2400420 (= lt!872513 (generalisedConcat!135 (t!208283 l!9164)))))

(declare-fun b!2400421 () Bool)

(declare-fun res!1019863 () Bool)

(declare-fun e!1529312 () Bool)

(assert (=> b!2400421 (=> (not res!1019863) (not e!1529312))))

(declare-fun r!13927 () Regex!7034)

(assert (=> b!2400421 (= res!1019863 (= r!13927 (generalisedConcat!135 l!9164)))))

(declare-fun b!2400422 () Bool)

(assert (=> b!2400422 (= e!1529315 (validRegex!2759 lt!872513))))

(declare-fun res!1019862 () Bool)

(assert (=> start!235482 (=> (not res!1019862) (not e!1529312))))

(declare-fun lambda!90214 () Int)

(declare-fun forall!5668 (List!28306 Int) Bool)

(assert (=> start!235482 (= res!1019862 (forall!5668 l!9164 lambda!90214))))

(assert (=> start!235482 e!1529312))

(assert (=> start!235482 e!1529316))

(assert (=> start!235482 e!1529311))

(declare-fun e!1529314 () Bool)

(assert (=> start!235482 e!1529314))

(declare-fun b!2400423 () Bool)

(declare-fun tp!763963 () Bool)

(assert (=> b!2400423 (= e!1529314 (and tp_is_empty!11481 tp!763963))))

(declare-fun b!2400424 () Bool)

(assert (=> b!2400424 (= e!1529312 (not e!1529313))))

(declare-fun res!1019861 () Bool)

(assert (=> b!2400424 (=> res!1019861 e!1529313)))

(assert (=> b!2400424 (= res!1019861 (or (is-Concat!11670 r!13927) (not (is-EmptyExpr!7034 r!13927)) (not (is-Cons!28208 l!9164))))))

(declare-datatypes ((List!28307 0))(
  ( (Nil!28209) (Cons!28209 (h!33610 C!14226) (t!208284 List!28307)) )
))
(declare-fun s!9460 () List!28307)

(declare-fun matchR!3151 (Regex!7034 List!28307) Bool)

(declare-fun matchRSpec!883 (Regex!7034 List!28307) Bool)

(assert (=> b!2400424 (= (matchR!3151 r!13927 s!9460) (matchRSpec!883 r!13927 s!9460))))

(declare-datatypes ((Unit!41339 0))(
  ( (Unit!41340) )
))
(declare-fun lt!872514 () Unit!41339)

(declare-fun mainMatchTheorem!883 (Regex!7034 List!28307) Unit!41339)

(assert (=> b!2400424 (= lt!872514 (mainMatchTheorem!883 r!13927 s!9460))))

(assert (= (and start!235482 res!1019862) b!2400421))

(assert (= (and b!2400421 res!1019863) b!2400424))

(assert (= (and b!2400424 (not res!1019861)) b!2400420))

(assert (= (and b!2400420 (not res!1019864)) b!2400422))

(assert (= (and start!235482 (is-Cons!28208 l!9164)) b!2400417))

(assert (= (and start!235482 (is-ElementMatch!7034 r!13927)) b!2400419))

(assert (= (and start!235482 (is-Concat!11670 r!13927)) b!2400415))

(assert (= (and start!235482 (is-Star!7034 r!13927)) b!2400418))

(assert (= (and start!235482 (is-Union!7034 r!13927)) b!2400416))

(assert (= (and start!235482 (is-Cons!28209 s!9460)) b!2400423))

(declare-fun m!2797707 () Bool)

(assert (=> b!2400420 m!2797707))

(declare-fun m!2797709 () Bool)

(assert (=> b!2400420 m!2797709))

(declare-fun m!2797711 () Bool)

(assert (=> start!235482 m!2797711))

(declare-fun m!2797713 () Bool)

(assert (=> b!2400422 m!2797713))

(declare-fun m!2797715 () Bool)

(assert (=> b!2400421 m!2797715))

(declare-fun m!2797717 () Bool)

(assert (=> b!2400424 m!2797717))

(declare-fun m!2797719 () Bool)

(assert (=> b!2400424 m!2797719))

(declare-fun m!2797721 () Bool)

(assert (=> b!2400424 m!2797721))

(push 1)

(assert (not b!2400416))

(assert (not b!2400417))

(assert (not start!235482))

(assert (not b!2400421))

(assert (not b!2400415))

(assert (not b!2400420))

(assert (not b!2400423))

(assert (not b!2400424))

(assert (not b!2400418))

(assert tp_is_empty!11481)

(assert (not b!2400422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2400489 () Bool)

(declare-fun res!1019903 () Bool)

(declare-fun e!1529356 () Bool)

(assert (=> b!2400489 (=> (not res!1019903) (not e!1529356))))

(declare-fun isEmpty!16204 (List!28307) Bool)

(declare-fun tail!3569 (List!28307) List!28307)

(assert (=> b!2400489 (= res!1019903 (isEmpty!16204 (tail!3569 s!9460)))))

(declare-fun b!2400490 () Bool)

(declare-fun res!1019899 () Bool)

(declare-fun e!1529360 () Bool)

(assert (=> b!2400490 (=> res!1019899 e!1529360)))

(assert (=> b!2400490 (= res!1019899 (not (isEmpty!16204 (tail!3569 s!9460))))))

(declare-fun b!2400491 () Bool)

(declare-fun res!1019904 () Bool)

(declare-fun e!1529355 () Bool)

(assert (=> b!2400491 (=> res!1019904 e!1529355)))

(assert (=> b!2400491 (= res!1019904 e!1529356)))

(declare-fun res!1019901 () Bool)

(assert (=> b!2400491 (=> (not res!1019901) (not e!1529356))))

(declare-fun lt!872523 () Bool)

(assert (=> b!2400491 (= res!1019901 lt!872523)))

(declare-fun b!2400492 () Bool)

(declare-fun e!1529359 () Bool)

(declare-fun e!1529358 () Bool)

(assert (=> b!2400492 (= e!1529359 e!1529358)))

(declare-fun c!382184 () Bool)

(assert (=> b!2400492 (= c!382184 (is-EmptyLang!7034 r!13927))))

(declare-fun d!699618 () Bool)

(assert (=> d!699618 e!1529359))

(declare-fun c!382185 () Bool)

(assert (=> d!699618 (= c!382185 (is-EmptyExpr!7034 r!13927))))

(declare-fun e!1529361 () Bool)

(assert (=> d!699618 (= lt!872523 e!1529361)))

(declare-fun c!382186 () Bool)

(assert (=> d!699618 (= c!382186 (isEmpty!16204 s!9460))))

(assert (=> d!699618 (validRegex!2759 r!13927)))

(assert (=> d!699618 (= (matchR!3151 r!13927 s!9460) lt!872523)))

(declare-fun b!2400493 () Bool)

(declare-fun e!1529357 () Bool)

(assert (=> b!2400493 (= e!1529357 e!1529360)))

(declare-fun res!1019905 () Bool)

(assert (=> b!2400493 (=> res!1019905 e!1529360)))

(declare-fun call!146627 () Bool)

(assert (=> b!2400493 (= res!1019905 call!146627)))

(declare-fun b!2400494 () Bool)

(declare-fun head!5299 (List!28307) C!14226)

(assert (=> b!2400494 (= e!1529356 (= (head!5299 s!9460) (c!382176 r!13927)))))

(declare-fun b!2400495 () Bool)

(declare-fun derivativeStep!1741 (Regex!7034 C!14226) Regex!7034)

(assert (=> b!2400495 (= e!1529361 (matchR!3151 (derivativeStep!1741 r!13927 (head!5299 s!9460)) (tail!3569 s!9460)))))

(declare-fun bm!146622 () Bool)

(assert (=> bm!146622 (= call!146627 (isEmpty!16204 s!9460))))

(declare-fun b!2400496 () Bool)

(assert (=> b!2400496 (= e!1529358 (not lt!872523))))

(declare-fun b!2400497 () Bool)

(declare-fun res!1019900 () Bool)

(assert (=> b!2400497 (=> res!1019900 e!1529355)))

(assert (=> b!2400497 (= res!1019900 (not (is-ElementMatch!7034 r!13927)))))

(assert (=> b!2400497 (= e!1529358 e!1529355)))

(declare-fun b!2400498 () Bool)

(declare-fun res!1019902 () Bool)

(assert (=> b!2400498 (=> (not res!1019902) (not e!1529356))))

(assert (=> b!2400498 (= res!1019902 (not call!146627))))

(declare-fun b!2400499 () Bool)

(assert (=> b!2400499 (= e!1529359 (= lt!872523 call!146627))))

(declare-fun b!2400500 () Bool)

(assert (=> b!2400500 (= e!1529360 (not (= (head!5299 s!9460) (c!382176 r!13927))))))

(declare-fun b!2400501 () Bool)

(declare-fun nullable!2083 (Regex!7034) Bool)

(assert (=> b!2400501 (= e!1529361 (nullable!2083 r!13927))))

(declare-fun b!2400502 () Bool)

(assert (=> b!2400502 (= e!1529355 e!1529357)))

(declare-fun res!1019906 () Bool)

(assert (=> b!2400502 (=> (not res!1019906) (not e!1529357))))

(assert (=> b!2400502 (= res!1019906 (not lt!872523))))

(assert (= (and d!699618 c!382186) b!2400501))

(assert (= (and d!699618 (not c!382186)) b!2400495))

(assert (= (and d!699618 c!382185) b!2400499))

(assert (= (and d!699618 (not c!382185)) b!2400492))

(assert (= (and b!2400492 c!382184) b!2400496))

(assert (= (and b!2400492 (not c!382184)) b!2400497))

(assert (= (and b!2400497 (not res!1019900)) b!2400491))

(assert (= (and b!2400491 res!1019901) b!2400498))

(assert (= (and b!2400498 res!1019902) b!2400489))

(assert (= (and b!2400489 res!1019903) b!2400494))

(assert (= (and b!2400491 (not res!1019904)) b!2400502))

(assert (= (and b!2400502 res!1019906) b!2400493))

(assert (= (and b!2400493 (not res!1019905)) b!2400490))

(assert (= (and b!2400490 (not res!1019899)) b!2400500))

(assert (= (or b!2400499 b!2400493 b!2400498) bm!146622))

(declare-fun m!2797743 () Bool)

(assert (=> bm!146622 m!2797743))

(declare-fun m!2797745 () Bool)

(assert (=> b!2400489 m!2797745))

(assert (=> b!2400489 m!2797745))

(declare-fun m!2797747 () Bool)

(assert (=> b!2400489 m!2797747))

(declare-fun m!2797749 () Bool)

(assert (=> b!2400500 m!2797749))

(assert (=> b!2400495 m!2797749))

(assert (=> b!2400495 m!2797749))

(declare-fun m!2797751 () Bool)

(assert (=> b!2400495 m!2797751))

(assert (=> b!2400495 m!2797745))

(assert (=> b!2400495 m!2797751))

(assert (=> b!2400495 m!2797745))

(declare-fun m!2797753 () Bool)

(assert (=> b!2400495 m!2797753))

(assert (=> b!2400490 m!2797745))

(assert (=> b!2400490 m!2797745))

(assert (=> b!2400490 m!2797747))

(declare-fun m!2797755 () Bool)

(assert (=> b!2400501 m!2797755))

(assert (=> d!699618 m!2797743))

(declare-fun m!2797757 () Bool)

(assert (=> d!699618 m!2797757))

(assert (=> b!2400494 m!2797749))

(assert (=> b!2400424 d!699618))

(declare-fun b!2400572 () Bool)

(assert (=> b!2400572 true))

(assert (=> b!2400572 true))

(declare-fun bs!463137 () Bool)

(declare-fun b!2400570 () Bool)

(assert (= bs!463137 (and b!2400570 b!2400572)))

(declare-fun lambda!90223 () Int)

(declare-fun lambda!90222 () Int)

(assert (=> bs!463137 (not (= lambda!90223 lambda!90222))))

(assert (=> b!2400570 true))

(assert (=> b!2400570 true))

(declare-fun b!2400563 () Bool)

(declare-fun c!382201 () Bool)

(assert (=> b!2400563 (= c!382201 (is-ElementMatch!7034 r!13927))))

(declare-fun e!1529404 () Bool)

(declare-fun e!1529401 () Bool)

(assert (=> b!2400563 (= e!1529404 e!1529401)))

(declare-fun b!2400564 () Bool)

(declare-fun res!1019938 () Bool)

(declare-fun e!1529403 () Bool)

(assert (=> b!2400564 (=> res!1019938 e!1529403)))

(declare-fun call!146641 () Bool)

(assert (=> b!2400564 (= res!1019938 call!146641)))

(declare-fun e!1529406 () Bool)

(assert (=> b!2400564 (= e!1529406 e!1529403)))

(declare-fun b!2400565 () Bool)

(declare-fun e!1529407 () Bool)

(assert (=> b!2400565 (= e!1529407 (matchRSpec!883 (regTwo!14581 r!13927) s!9460))))

(declare-fun b!2400566 () Bool)

(declare-fun e!1529402 () Bool)

(assert (=> b!2400566 (= e!1529402 e!1529406)))

(declare-fun c!382203 () Bool)

(assert (=> b!2400566 (= c!382203 (is-Star!7034 r!13927))))

(declare-fun b!2400567 () Bool)

(assert (=> b!2400567 (= e!1529401 (= s!9460 (Cons!28209 (c!382176 r!13927) Nil!28209)))))

(declare-fun bm!146636 () Bool)

(assert (=> bm!146636 (= call!146641 (isEmpty!16204 s!9460))))

(declare-fun call!146642 () Bool)

(declare-fun bm!146637 () Bool)

(declare-fun Exists!1095 (Int) Bool)

(assert (=> bm!146637 (= call!146642 (Exists!1095 (ite c!382203 lambda!90222 lambda!90223)))))

(declare-fun b!2400568 () Bool)

(declare-fun e!1529405 () Bool)

(assert (=> b!2400568 (= e!1529405 call!146641)))

(declare-fun b!2400569 () Bool)

(declare-fun c!382202 () Bool)

(assert (=> b!2400569 (= c!382202 (is-Union!7034 r!13927))))

(assert (=> b!2400569 (= e!1529401 e!1529402)))

(assert (=> b!2400570 (= e!1529406 call!146642)))

(declare-fun d!699624 () Bool)

(declare-fun c!382204 () Bool)

(assert (=> d!699624 (= c!382204 (is-EmptyExpr!7034 r!13927))))

(assert (=> d!699624 (= (matchRSpec!883 r!13927 s!9460) e!1529405)))

(declare-fun b!2400562 () Bool)

(assert (=> b!2400562 (= e!1529402 e!1529407)))

(declare-fun res!1019939 () Bool)

(assert (=> b!2400562 (= res!1019939 (matchRSpec!883 (regOne!14581 r!13927) s!9460))))

(assert (=> b!2400562 (=> res!1019939 e!1529407)))

(declare-fun b!2400571 () Bool)

(assert (=> b!2400571 (= e!1529405 e!1529404)))

(declare-fun res!1019940 () Bool)

(assert (=> b!2400571 (= res!1019940 (not (is-EmptyLang!7034 r!13927)))))

(assert (=> b!2400571 (=> (not res!1019940) (not e!1529404))))

(assert (=> b!2400572 (= e!1529403 call!146642)))

(assert (= (and d!699624 c!382204) b!2400568))

(assert (= (and d!699624 (not c!382204)) b!2400571))

(assert (= (and b!2400571 res!1019940) b!2400563))

(assert (= (and b!2400563 c!382201) b!2400567))

(assert (= (and b!2400563 (not c!382201)) b!2400569))

(assert (= (and b!2400569 c!382202) b!2400562))

(assert (= (and b!2400569 (not c!382202)) b!2400566))

(assert (= (and b!2400562 (not res!1019939)) b!2400565))

(assert (= (and b!2400566 c!382203) b!2400564))

(assert (= (and b!2400566 (not c!382203)) b!2400570))

(assert (= (and b!2400564 (not res!1019938)) b!2400572))

(assert (= (or b!2400572 b!2400570) bm!146637))

(assert (= (or b!2400568 b!2400564) bm!146636))

(declare-fun m!2797765 () Bool)

(assert (=> b!2400565 m!2797765))

(assert (=> bm!146636 m!2797743))

(declare-fun m!2797767 () Bool)

(assert (=> bm!146637 m!2797767))

(declare-fun m!2797769 () Bool)

(assert (=> b!2400562 m!2797769))

(assert (=> b!2400424 d!699624))

(declare-fun d!699628 () Bool)

(assert (=> d!699628 (= (matchR!3151 r!13927 s!9460) (matchRSpec!883 r!13927 s!9460))))

(declare-fun lt!872526 () Unit!41339)

(declare-fun choose!14213 (Regex!7034 List!28307) Unit!41339)

(assert (=> d!699628 (= lt!872526 (choose!14213 r!13927 s!9460))))

(assert (=> d!699628 (validRegex!2759 r!13927)))

(assert (=> d!699628 (= (mainMatchTheorem!883 r!13927 s!9460) lt!872526)))

(declare-fun bs!463138 () Bool)

(assert (= bs!463138 d!699628))

(assert (=> bs!463138 m!2797717))

(assert (=> bs!463138 m!2797719))

(declare-fun m!2797771 () Bool)

(assert (=> bs!463138 m!2797771))

(assert (=> bs!463138 m!2797757))

(assert (=> b!2400424 d!699628))

(declare-fun bs!463139 () Bool)

(declare-fun d!699630 () Bool)

(assert (= bs!463139 (and d!699630 start!235482)))

(declare-fun lambda!90226 () Int)

(assert (=> bs!463139 (= lambda!90226 lambda!90214)))

(declare-fun b!2400625 () Bool)

(declare-fun e!1529439 () Regex!7034)

(assert (=> b!2400625 (= e!1529439 EmptyExpr!7034)))

(declare-fun b!2400626 () Bool)

(declare-fun e!1529434 () Bool)

(declare-fun lt!872531 () Regex!7034)

(declare-fun isConcat!103 (Regex!7034) Bool)

(assert (=> b!2400626 (= e!1529434 (isConcat!103 lt!872531))))

(declare-fun b!2400627 () Bool)

(declare-fun e!1529437 () Regex!7034)

(assert (=> b!2400627 (= e!1529437 e!1529439)))

(declare-fun c!382220 () Bool)

(assert (=> b!2400627 (= c!382220 (is-Cons!28208 l!9164))))

(declare-fun b!2400628 () Bool)

(declare-fun e!1529438 () Bool)

(assert (=> b!2400628 (= e!1529438 e!1529434)))

(declare-fun c!382222 () Bool)

(declare-fun isEmpty!16205 (List!28306) Bool)

(declare-fun tail!3570 (List!28306) List!28306)

(assert (=> b!2400628 (= c!382222 (isEmpty!16205 (tail!3570 l!9164)))))

(declare-fun b!2400629 () Bool)

(declare-fun head!5300 (List!28306) Regex!7034)

(assert (=> b!2400629 (= e!1529434 (= lt!872531 (head!5300 l!9164)))))

(declare-fun b!2400630 () Bool)

(declare-fun e!1529436 () Bool)

(assert (=> b!2400630 (= e!1529436 e!1529438)))

(declare-fun c!382219 () Bool)

(assert (=> b!2400630 (= c!382219 (isEmpty!16205 l!9164))))

(declare-fun b!2400631 () Bool)

(assert (=> b!2400631 (= e!1529437 (h!33609 l!9164))))

(declare-fun b!2400632 () Bool)

(declare-fun e!1529435 () Bool)

(assert (=> b!2400632 (= e!1529435 (isEmpty!16205 (t!208283 l!9164)))))

(assert (=> d!699630 e!1529436))

(declare-fun res!1019961 () Bool)

(assert (=> d!699630 (=> (not res!1019961) (not e!1529436))))

(assert (=> d!699630 (= res!1019961 (validRegex!2759 lt!872531))))

(assert (=> d!699630 (= lt!872531 e!1529437)))

(declare-fun c!382221 () Bool)

(assert (=> d!699630 (= c!382221 e!1529435)))

(declare-fun res!1019962 () Bool)

(assert (=> d!699630 (=> (not res!1019962) (not e!1529435))))

(assert (=> d!699630 (= res!1019962 (is-Cons!28208 l!9164))))

(assert (=> d!699630 (forall!5668 l!9164 lambda!90226)))

(assert (=> d!699630 (= (generalisedConcat!135 l!9164) lt!872531)))

(declare-fun b!2400633 () Bool)

(declare-fun isEmptyExpr!103 (Regex!7034) Bool)

(assert (=> b!2400633 (= e!1529438 (isEmptyExpr!103 lt!872531))))

(declare-fun b!2400634 () Bool)

(assert (=> b!2400634 (= e!1529439 (Concat!11670 (h!33609 l!9164) (generalisedConcat!135 (t!208283 l!9164))))))

(assert (= (and d!699630 res!1019962) b!2400632))

(assert (= (and d!699630 c!382221) b!2400631))

(assert (= (and d!699630 (not c!382221)) b!2400627))

(assert (= (and b!2400627 c!382220) b!2400634))

(assert (= (and b!2400627 (not c!382220)) b!2400625))

(assert (= (and d!699630 res!1019961) b!2400630))

(assert (= (and b!2400630 c!382219) b!2400633))

(assert (= (and b!2400630 (not c!382219)) b!2400628))

(assert (= (and b!2400628 c!382222) b!2400629))

(assert (= (and b!2400628 (not c!382222)) b!2400626))

(declare-fun m!2797773 () Bool)

(assert (=> b!2400626 m!2797773))

(declare-fun m!2797775 () Bool)

(assert (=> b!2400632 m!2797775))

(declare-fun m!2797777 () Bool)

(assert (=> b!2400630 m!2797777))

(declare-fun m!2797779 () Bool)

(assert (=> d!699630 m!2797779))

(declare-fun m!2797781 () Bool)

(assert (=> d!699630 m!2797781))

(declare-fun m!2797783 () Bool)

(assert (=> b!2400629 m!2797783))

(assert (=> b!2400634 m!2797709))

(declare-fun m!2797785 () Bool)

(assert (=> b!2400628 m!2797785))

(assert (=> b!2400628 m!2797785))

(declare-fun m!2797787 () Bool)

(assert (=> b!2400628 m!2797787))

(declare-fun m!2797789 () Bool)

(assert (=> b!2400633 m!2797789))

(assert (=> b!2400421 d!699630))

(declare-fun d!699632 () Bool)

(declare-fun res!1019976 () Bool)

(declare-fun e!1529459 () Bool)

(assert (=> d!699632 (=> res!1019976 e!1529459)))

(assert (=> d!699632 (= res!1019976 (is-ElementMatch!7034 (h!33609 l!9164)))))

(assert (=> d!699632 (= (validRegex!2759 (h!33609 l!9164)) e!1529459)))

(declare-fun b!2400653 () Bool)

(declare-fun e!1529455 () Bool)

(declare-fun call!146653 () Bool)

(assert (=> b!2400653 (= e!1529455 call!146653)))

(declare-fun b!2400654 () Bool)

(declare-fun e!1529460 () Bool)

(declare-fun call!146651 () Bool)

(assert (=> b!2400654 (= e!1529460 call!146651)))

(declare-fun b!2400655 () Bool)

(declare-fun e!1529454 () Bool)

(declare-fun e!1529458 () Bool)

(assert (=> b!2400655 (= e!1529454 e!1529458)))

(declare-fun res!1019974 () Bool)

(assert (=> b!2400655 (= res!1019974 (not (nullable!2083 (reg!7363 (h!33609 l!9164)))))))

(assert (=> b!2400655 (=> (not res!1019974) (not e!1529458))))

(declare-fun b!2400656 () Bool)

(declare-fun res!1019977 () Bool)

(assert (=> b!2400656 (=> (not res!1019977) (not e!1529455))))

(assert (=> b!2400656 (= res!1019977 call!146651)))

(declare-fun e!1529457 () Bool)

(assert (=> b!2400656 (= e!1529457 e!1529455)))

(declare-fun bm!146646 () Bool)

(declare-fun call!146652 () Bool)

(assert (=> bm!146646 (= call!146653 call!146652)))

(declare-fun bm!146647 () Bool)

(declare-fun c!382227 () Bool)

(assert (=> bm!146647 (= call!146651 (validRegex!2759 (ite c!382227 (regOne!14581 (h!33609 l!9164)) (regTwo!14580 (h!33609 l!9164)))))))

(declare-fun b!2400657 () Bool)

(declare-fun e!1529456 () Bool)

(assert (=> b!2400657 (= e!1529456 e!1529460)))

(declare-fun res!1019973 () Bool)

(assert (=> b!2400657 (=> (not res!1019973) (not e!1529460))))

(assert (=> b!2400657 (= res!1019973 call!146653)))

(declare-fun b!2400658 () Bool)

(assert (=> b!2400658 (= e!1529454 e!1529457)))

(assert (=> b!2400658 (= c!382227 (is-Union!7034 (h!33609 l!9164)))))

(declare-fun bm!146648 () Bool)

(declare-fun c!382228 () Bool)

(assert (=> bm!146648 (= call!146652 (validRegex!2759 (ite c!382228 (reg!7363 (h!33609 l!9164)) (ite c!382227 (regTwo!14581 (h!33609 l!9164)) (regOne!14580 (h!33609 l!9164))))))))

(declare-fun b!2400659 () Bool)

(assert (=> b!2400659 (= e!1529459 e!1529454)))

(assert (=> b!2400659 (= c!382228 (is-Star!7034 (h!33609 l!9164)))))

(declare-fun b!2400660 () Bool)

(declare-fun res!1019975 () Bool)

(assert (=> b!2400660 (=> res!1019975 e!1529456)))

(assert (=> b!2400660 (= res!1019975 (not (is-Concat!11670 (h!33609 l!9164))))))

(assert (=> b!2400660 (= e!1529457 e!1529456)))

(declare-fun b!2400661 () Bool)

(assert (=> b!2400661 (= e!1529458 call!146652)))

(assert (= (and d!699632 (not res!1019976)) b!2400659))

(assert (= (and b!2400659 c!382228) b!2400655))

(assert (= (and b!2400659 (not c!382228)) b!2400658))

(assert (= (and b!2400655 res!1019974) b!2400661))

(assert (= (and b!2400658 c!382227) b!2400656))

(assert (= (and b!2400658 (not c!382227)) b!2400660))

(assert (= (and b!2400656 res!1019977) b!2400653))

(assert (= (and b!2400660 (not res!1019975)) b!2400657))

(assert (= (and b!2400657 res!1019973) b!2400654))

(assert (= (or b!2400656 b!2400654) bm!146647))

(assert (= (or b!2400653 b!2400657) bm!146646))

(assert (= (or b!2400661 bm!146646) bm!146648))

(declare-fun m!2797791 () Bool)

(assert (=> b!2400655 m!2797791))

(declare-fun m!2797793 () Bool)

(assert (=> bm!146647 m!2797793))

(declare-fun m!2797795 () Bool)

(assert (=> bm!146648 m!2797795))

(assert (=> b!2400420 d!699632))

(declare-fun bs!463140 () Bool)

(declare-fun d!699634 () Bool)

(assert (= bs!463140 (and d!699634 start!235482)))

(declare-fun lambda!90227 () Int)

(assert (=> bs!463140 (= lambda!90227 lambda!90214)))

(declare-fun bs!463141 () Bool)

(assert (= bs!463141 (and d!699634 d!699630)))

(assert (=> bs!463141 (= lambda!90227 lambda!90226)))

(declare-fun b!2400662 () Bool)

(declare-fun e!1529466 () Regex!7034)

(assert (=> b!2400662 (= e!1529466 EmptyExpr!7034)))

(declare-fun b!2400663 () Bool)

(declare-fun e!1529461 () Bool)

(declare-fun lt!872532 () Regex!7034)

(assert (=> b!2400663 (= e!1529461 (isConcat!103 lt!872532))))

(declare-fun b!2400664 () Bool)

(declare-fun e!1529464 () Regex!7034)

(assert (=> b!2400664 (= e!1529464 e!1529466)))

(declare-fun c!382230 () Bool)

(assert (=> b!2400664 (= c!382230 (is-Cons!28208 (t!208283 l!9164)))))

(declare-fun b!2400665 () Bool)

(declare-fun e!1529465 () Bool)

(assert (=> b!2400665 (= e!1529465 e!1529461)))

(declare-fun c!382232 () Bool)

(assert (=> b!2400665 (= c!382232 (isEmpty!16205 (tail!3570 (t!208283 l!9164))))))

(declare-fun b!2400666 () Bool)

(assert (=> b!2400666 (= e!1529461 (= lt!872532 (head!5300 (t!208283 l!9164))))))

(declare-fun b!2400667 () Bool)

(declare-fun e!1529463 () Bool)

(assert (=> b!2400667 (= e!1529463 e!1529465)))

(declare-fun c!382229 () Bool)

(assert (=> b!2400667 (= c!382229 (isEmpty!16205 (t!208283 l!9164)))))

(declare-fun b!2400668 () Bool)

(assert (=> b!2400668 (= e!1529464 (h!33609 (t!208283 l!9164)))))

(declare-fun b!2400669 () Bool)

(declare-fun e!1529462 () Bool)

(assert (=> b!2400669 (= e!1529462 (isEmpty!16205 (t!208283 (t!208283 l!9164))))))

(assert (=> d!699634 e!1529463))

(declare-fun res!1019978 () Bool)

(assert (=> d!699634 (=> (not res!1019978) (not e!1529463))))

(assert (=> d!699634 (= res!1019978 (validRegex!2759 lt!872532))))

(assert (=> d!699634 (= lt!872532 e!1529464)))

(declare-fun c!382231 () Bool)

(assert (=> d!699634 (= c!382231 e!1529462)))

(declare-fun res!1019979 () Bool)

(assert (=> d!699634 (=> (not res!1019979) (not e!1529462))))

(assert (=> d!699634 (= res!1019979 (is-Cons!28208 (t!208283 l!9164)))))

(assert (=> d!699634 (forall!5668 (t!208283 l!9164) lambda!90227)))

(assert (=> d!699634 (= (generalisedConcat!135 (t!208283 l!9164)) lt!872532)))

(declare-fun b!2400670 () Bool)

(assert (=> b!2400670 (= e!1529465 (isEmptyExpr!103 lt!872532))))

(declare-fun b!2400671 () Bool)

(assert (=> b!2400671 (= e!1529466 (Concat!11670 (h!33609 (t!208283 l!9164)) (generalisedConcat!135 (t!208283 (t!208283 l!9164)))))))

(assert (= (and d!699634 res!1019979) b!2400669))

(assert (= (and d!699634 c!382231) b!2400668))

(assert (= (and d!699634 (not c!382231)) b!2400664))

(assert (= (and b!2400664 c!382230) b!2400671))

(assert (= (and b!2400664 (not c!382230)) b!2400662))

(assert (= (and d!699634 res!1019978) b!2400667))

(assert (= (and b!2400667 c!382229) b!2400670))

(assert (= (and b!2400667 (not c!382229)) b!2400665))

(assert (= (and b!2400665 c!382232) b!2400666))

(assert (= (and b!2400665 (not c!382232)) b!2400663))

(declare-fun m!2797797 () Bool)

(assert (=> b!2400663 m!2797797))

(declare-fun m!2797799 () Bool)

(assert (=> b!2400669 m!2797799))

(assert (=> b!2400667 m!2797775))

(declare-fun m!2797801 () Bool)

(assert (=> d!699634 m!2797801))

(declare-fun m!2797803 () Bool)

(assert (=> d!699634 m!2797803))

(declare-fun m!2797805 () Bool)

(assert (=> b!2400666 m!2797805))

(declare-fun m!2797807 () Bool)

(assert (=> b!2400671 m!2797807))

(declare-fun m!2797809 () Bool)

(assert (=> b!2400665 m!2797809))

(assert (=> b!2400665 m!2797809))

(declare-fun m!2797811 () Bool)

(assert (=> b!2400665 m!2797811))

(declare-fun m!2797813 () Bool)

(assert (=> b!2400670 m!2797813))

(assert (=> b!2400420 d!699634))

(declare-fun d!699636 () Bool)

(declare-fun res!1019992 () Bool)

(declare-fun e!1529478 () Bool)

(assert (=> d!699636 (=> res!1019992 e!1529478)))

(assert (=> d!699636 (= res!1019992 (is-Nil!28208 l!9164))))

(assert (=> d!699636 (= (forall!5668 l!9164 lambda!90214) e!1529478)))

(declare-fun b!2400690 () Bool)

(declare-fun e!1529479 () Bool)

(assert (=> b!2400690 (= e!1529478 e!1529479)))

(declare-fun res!1019993 () Bool)

(assert (=> b!2400690 (=> (not res!1019993) (not e!1529479))))

(declare-fun dynLambda!12148 (Int Regex!7034) Bool)

(assert (=> b!2400690 (= res!1019993 (dynLambda!12148 lambda!90214 (h!33609 l!9164)))))

(declare-fun b!2400691 () Bool)

(assert (=> b!2400691 (= e!1529479 (forall!5668 (t!208283 l!9164) lambda!90214))))

(assert (= (and d!699636 (not res!1019992)) b!2400690))

(assert (= (and b!2400690 res!1019993) b!2400691))

(declare-fun b_lambda!74317 () Bool)

(assert (=> (not b_lambda!74317) (not b!2400690)))

(declare-fun m!2797815 () Bool)

(assert (=> b!2400690 m!2797815))

(declare-fun m!2797817 () Bool)

(assert (=> b!2400691 m!2797817))

(assert (=> start!235482 d!699636))

(declare-fun d!699638 () Bool)

(declare-fun res!1019997 () Bool)

(declare-fun e!1529485 () Bool)

(assert (=> d!699638 (=> res!1019997 e!1529485)))

(assert (=> d!699638 (= res!1019997 (is-ElementMatch!7034 lt!872513))))

(assert (=> d!699638 (= (validRegex!2759 lt!872513) e!1529485)))

(declare-fun b!2400692 () Bool)

(declare-fun e!1529481 () Bool)

(declare-fun call!146657 () Bool)

(assert (=> b!2400692 (= e!1529481 call!146657)))

(declare-fun b!2400693 () Bool)

(declare-fun e!1529486 () Bool)

(declare-fun call!146655 () Bool)

(assert (=> b!2400693 (= e!1529486 call!146655)))

(declare-fun b!2400694 () Bool)

(declare-fun e!1529480 () Bool)

(declare-fun e!1529484 () Bool)

(assert (=> b!2400694 (= e!1529480 e!1529484)))

(declare-fun res!1019995 () Bool)

(assert (=> b!2400694 (= res!1019995 (not (nullable!2083 (reg!7363 lt!872513))))))

(assert (=> b!2400694 (=> (not res!1019995) (not e!1529484))))

(declare-fun b!2400695 () Bool)

(declare-fun res!1019998 () Bool)

(assert (=> b!2400695 (=> (not res!1019998) (not e!1529481))))

(assert (=> b!2400695 (= res!1019998 call!146655)))

(declare-fun e!1529483 () Bool)

(assert (=> b!2400695 (= e!1529483 e!1529481)))

(declare-fun bm!146650 () Bool)

(declare-fun call!146656 () Bool)

(assert (=> bm!146650 (= call!146657 call!146656)))

(declare-fun bm!146651 () Bool)

(declare-fun c!382236 () Bool)

(assert (=> bm!146651 (= call!146655 (validRegex!2759 (ite c!382236 (regOne!14581 lt!872513) (regTwo!14580 lt!872513))))))

(declare-fun b!2400696 () Bool)

(declare-fun e!1529482 () Bool)

(assert (=> b!2400696 (= e!1529482 e!1529486)))

(declare-fun res!1019994 () Bool)

(assert (=> b!2400696 (=> (not res!1019994) (not e!1529486))))

(assert (=> b!2400696 (= res!1019994 call!146657)))

(declare-fun b!2400697 () Bool)

(assert (=> b!2400697 (= e!1529480 e!1529483)))

(assert (=> b!2400697 (= c!382236 (is-Union!7034 lt!872513))))

(declare-fun c!382237 () Bool)

(declare-fun bm!146652 () Bool)

(assert (=> bm!146652 (= call!146656 (validRegex!2759 (ite c!382237 (reg!7363 lt!872513) (ite c!382236 (regTwo!14581 lt!872513) (regOne!14580 lt!872513)))))))

(declare-fun b!2400698 () Bool)

(assert (=> b!2400698 (= e!1529485 e!1529480)))

(assert (=> b!2400698 (= c!382237 (is-Star!7034 lt!872513))))

(declare-fun b!2400699 () Bool)

(declare-fun res!1019996 () Bool)

(assert (=> b!2400699 (=> res!1019996 e!1529482)))

(assert (=> b!2400699 (= res!1019996 (not (is-Concat!11670 lt!872513)))))

(assert (=> b!2400699 (= e!1529483 e!1529482)))

(declare-fun b!2400700 () Bool)

(assert (=> b!2400700 (= e!1529484 call!146656)))

(assert (= (and d!699638 (not res!1019997)) b!2400698))

(assert (= (and b!2400698 c!382237) b!2400694))

(assert (= (and b!2400698 (not c!382237)) b!2400697))

(assert (= (and b!2400694 res!1019995) b!2400700))

(assert (= (and b!2400697 c!382236) b!2400695))

(assert (= (and b!2400697 (not c!382236)) b!2400699))

(assert (= (and b!2400695 res!1019998) b!2400692))

(assert (= (and b!2400699 (not res!1019996)) b!2400696))

(assert (= (and b!2400696 res!1019994) b!2400693))

(assert (= (or b!2400695 b!2400693) bm!146651))

(assert (= (or b!2400692 b!2400696) bm!146650))

(assert (= (or b!2400700 bm!146650) bm!146652))

(declare-fun m!2797819 () Bool)

(assert (=> b!2400694 m!2797819))

(declare-fun m!2797821 () Bool)

(assert (=> bm!146651 m!2797821))

(declare-fun m!2797823 () Bool)

(assert (=> bm!146652 m!2797823))

(assert (=> b!2400422 d!699638))

(declare-fun b!2400714 () Bool)

(declare-fun e!1529489 () Bool)

(declare-fun tp!764007 () Bool)

(declare-fun tp!764006 () Bool)

(assert (=> b!2400714 (= e!1529489 (and tp!764007 tp!764006))))

(declare-fun b!2400711 () Bool)

(assert (=> b!2400711 (= e!1529489 tp_is_empty!11481)))

(declare-fun b!2400713 () Bool)

(declare-fun tp!764008 () Bool)

(assert (=> b!2400713 (= e!1529489 tp!764008)))

(declare-fun b!2400712 () Bool)

(declare-fun tp!764005 () Bool)

(declare-fun tp!764004 () Bool)

(assert (=> b!2400712 (= e!1529489 (and tp!764005 tp!764004))))

(assert (=> b!2400418 (= tp!763965 e!1529489)))

(assert (= (and b!2400418 (is-ElementMatch!7034 (reg!7363 r!13927))) b!2400711))

(assert (= (and b!2400418 (is-Concat!11670 (reg!7363 r!13927))) b!2400712))

(assert (= (and b!2400418 (is-Star!7034 (reg!7363 r!13927))) b!2400713))

(assert (= (and b!2400418 (is-Union!7034 (reg!7363 r!13927))) b!2400714))

(declare-fun b!2400719 () Bool)

(declare-fun e!1529492 () Bool)

(declare-fun tp!764011 () Bool)

(assert (=> b!2400719 (= e!1529492 (and tp_is_empty!11481 tp!764011))))

(assert (=> b!2400423 (= tp!763963 e!1529492)))

(assert (= (and b!2400423 (is-Cons!28209 (t!208284 s!9460))) b!2400719))

(declare-fun b!2400723 () Bool)

(declare-fun e!1529493 () Bool)

(declare-fun tp!764015 () Bool)

(declare-fun tp!764014 () Bool)

(assert (=> b!2400723 (= e!1529493 (and tp!764015 tp!764014))))

(declare-fun b!2400720 () Bool)

(assert (=> b!2400720 (= e!1529493 tp_is_empty!11481)))

(declare-fun b!2400722 () Bool)

(declare-fun tp!764016 () Bool)

(assert (=> b!2400722 (= e!1529493 tp!764016)))

(declare-fun b!2400721 () Bool)

(declare-fun tp!764013 () Bool)

(declare-fun tp!764012 () Bool)

(assert (=> b!2400721 (= e!1529493 (and tp!764013 tp!764012))))

(assert (=> b!2400415 (= tp!763962 e!1529493)))

(assert (= (and b!2400415 (is-ElementMatch!7034 (regOne!14580 r!13927))) b!2400720))

(assert (= (and b!2400415 (is-Concat!11670 (regOne!14580 r!13927))) b!2400721))

(assert (= (and b!2400415 (is-Star!7034 (regOne!14580 r!13927))) b!2400722))

(assert (= (and b!2400415 (is-Union!7034 (regOne!14580 r!13927))) b!2400723))

(declare-fun b!2400727 () Bool)

(declare-fun e!1529494 () Bool)

(declare-fun tp!764020 () Bool)

(declare-fun tp!764019 () Bool)

(assert (=> b!2400727 (= e!1529494 (and tp!764020 tp!764019))))

(declare-fun b!2400724 () Bool)

(assert (=> b!2400724 (= e!1529494 tp_is_empty!11481)))

(declare-fun b!2400726 () Bool)

(declare-fun tp!764021 () Bool)

(assert (=> b!2400726 (= e!1529494 tp!764021)))

(declare-fun b!2400725 () Bool)

(declare-fun tp!764018 () Bool)

(declare-fun tp!764017 () Bool)

(assert (=> b!2400725 (= e!1529494 (and tp!764018 tp!764017))))

(assert (=> b!2400415 (= tp!763964 e!1529494)))

(assert (= (and b!2400415 (is-ElementMatch!7034 (regTwo!14580 r!13927))) b!2400724))

(assert (= (and b!2400415 (is-Concat!11670 (regTwo!14580 r!13927))) b!2400725))

(assert (= (and b!2400415 (is-Star!7034 (regTwo!14580 r!13927))) b!2400726))

(assert (= (and b!2400415 (is-Union!7034 (regTwo!14580 r!13927))) b!2400727))

(declare-fun b!2400731 () Bool)

(declare-fun e!1529495 () Bool)

(declare-fun tp!764025 () Bool)

(declare-fun tp!764024 () Bool)

(assert (=> b!2400731 (= e!1529495 (and tp!764025 tp!764024))))

(declare-fun b!2400728 () Bool)

(assert (=> b!2400728 (= e!1529495 tp_is_empty!11481)))

(declare-fun b!2400730 () Bool)

(declare-fun tp!764026 () Bool)

(assert (=> b!2400730 (= e!1529495 tp!764026)))

(declare-fun b!2400729 () Bool)

(declare-fun tp!764023 () Bool)

(declare-fun tp!764022 () Bool)

(assert (=> b!2400729 (= e!1529495 (and tp!764023 tp!764022))))

(assert (=> b!2400417 (= tp!763967 e!1529495)))

(assert (= (and b!2400417 (is-ElementMatch!7034 (h!33609 l!9164))) b!2400728))

(assert (= (and b!2400417 (is-Concat!11670 (h!33609 l!9164))) b!2400729))

(assert (= (and b!2400417 (is-Star!7034 (h!33609 l!9164))) b!2400730))

(assert (= (and b!2400417 (is-Union!7034 (h!33609 l!9164))) b!2400731))

(declare-fun b!2400736 () Bool)

(declare-fun e!1529498 () Bool)

(declare-fun tp!764031 () Bool)

(declare-fun tp!764032 () Bool)

(assert (=> b!2400736 (= e!1529498 (and tp!764031 tp!764032))))

(assert (=> b!2400417 (= tp!763966 e!1529498)))

(assert (= (and b!2400417 (is-Cons!28208 (t!208283 l!9164))) b!2400736))

(declare-fun b!2400740 () Bool)

(declare-fun e!1529499 () Bool)

(declare-fun tp!764036 () Bool)

(declare-fun tp!764035 () Bool)

(assert (=> b!2400740 (= e!1529499 (and tp!764036 tp!764035))))

(declare-fun b!2400737 () Bool)

(assert (=> b!2400737 (= e!1529499 tp_is_empty!11481)))

(declare-fun b!2400739 () Bool)

(declare-fun tp!764037 () Bool)

(assert (=> b!2400739 (= e!1529499 tp!764037)))

(declare-fun b!2400738 () Bool)

(declare-fun tp!764034 () Bool)

(declare-fun tp!764033 () Bool)

(assert (=> b!2400738 (= e!1529499 (and tp!764034 tp!764033))))

(assert (=> b!2400416 (= tp!763969 e!1529499)))

(assert (= (and b!2400416 (is-ElementMatch!7034 (regOne!14581 r!13927))) b!2400737))

(assert (= (and b!2400416 (is-Concat!11670 (regOne!14581 r!13927))) b!2400738))

(assert (= (and b!2400416 (is-Star!7034 (regOne!14581 r!13927))) b!2400739))

(assert (= (and b!2400416 (is-Union!7034 (regOne!14581 r!13927))) b!2400740))

(declare-fun b!2400744 () Bool)

(declare-fun e!1529500 () Bool)

(declare-fun tp!764041 () Bool)

(declare-fun tp!764040 () Bool)

(assert (=> b!2400744 (= e!1529500 (and tp!764041 tp!764040))))

(declare-fun b!2400741 () Bool)

(assert (=> b!2400741 (= e!1529500 tp_is_empty!11481)))

(declare-fun b!2400743 () Bool)

(declare-fun tp!764042 () Bool)

(assert (=> b!2400743 (= e!1529500 tp!764042)))

(declare-fun b!2400742 () Bool)

(declare-fun tp!764039 () Bool)

(declare-fun tp!764038 () Bool)

(assert (=> b!2400742 (= e!1529500 (and tp!764039 tp!764038))))

(assert (=> b!2400416 (= tp!763968 e!1529500)))

(assert (= (and b!2400416 (is-ElementMatch!7034 (regTwo!14581 r!13927))) b!2400741))

(assert (= (and b!2400416 (is-Concat!11670 (regTwo!14581 r!13927))) b!2400742))

(assert (= (and b!2400416 (is-Star!7034 (regTwo!14581 r!13927))) b!2400743))

(assert (= (and b!2400416 (is-Union!7034 (regTwo!14581 r!13927))) b!2400744))

(declare-fun b_lambda!74319 () Bool)

(assert (= b_lambda!74317 (or start!235482 b_lambda!74319)))

(declare-fun bs!463142 () Bool)

(declare-fun d!699642 () Bool)

(assert (= bs!463142 (and d!699642 start!235482)))

(assert (=> bs!463142 (= (dynLambda!12148 lambda!90214 (h!33609 l!9164)) (validRegex!2759 (h!33609 l!9164)))))

(assert (=> bs!463142 m!2797707))

(assert (=> b!2400690 d!699642))

(push 1)

(assert (not b!2400669))

(assert (not b!2400744))

(assert (not b!2400663))

(assert (not bm!146636))

(assert (not b!2400727))

(assert (not b!2400495))

(assert (not b!2400666))

(assert (not b!2400489))

(assert (not b!2400731))

(assert (not bm!146637))

(assert (not d!699634))

(assert (not b!2400628))

(assert (not b!2400721))

(assert (not b!2400500))

(assert (not d!699628))

(assert (not b!2400725))

(assert (not b!2400722))

(assert (not b!2400565))

(assert (not b!2400723))

(assert (not bm!146647))

(assert (not b!2400667))

(assert (not b!2400629))

(assert (not bm!146652))

(assert (not b!2400691))

(assert (not b!2400494))

(assert (not b_lambda!74319))

(assert (not b!2400742))

(assert (not b!2400730))

(assert (not b!2400655))

(assert (not b!2400633))

(assert (not b!2400694))

(assert (not b!2400743))

(assert (not b!2400630))

(assert (not bm!146651))

(assert (not b!2400670))

(assert (not b!2400712))

(assert (not b!2400719))

(assert (not b!2400714))

(assert (not d!699618))

(assert (not b!2400501))

(assert (not b!2400713))

(assert (not b!2400626))

(assert (not b!2400665))

(assert (not b!2400634))

(assert (not b!2400729))

(assert (not bm!146648))

(assert (not d!699630))

(assert (not b!2400490))

(assert tp_is_empty!11481)

(assert (not b!2400738))

(assert (not b!2400736))

(assert (not b!2400671))

(assert (not b!2400632))

(assert (not b!2400740))

(assert (not bs!463142))

(assert (not b!2400562))

(assert (not b!2400739))

(assert (not bm!146622))

(assert (not b!2400726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

