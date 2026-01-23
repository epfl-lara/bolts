; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234190 () Bool)

(assert start!234190)

(declare-fun b!2386522 () Bool)

(assert (=> b!2386522 true))

(assert (=> b!2386522 true))

(declare-fun lambda!89158 () Int)

(declare-fun lambda!89157 () Int)

(assert (=> b!2386522 (not (= lambda!89158 lambda!89157))))

(assert (=> b!2386522 true))

(assert (=> b!2386522 true))

(declare-fun res!1013749 () Bool)

(declare-fun e!1521668 () Bool)

(assert (=> start!234190 (=> (not res!1013749) (not e!1521668))))

(declare-datatypes ((C!14150 0))(
  ( (C!14151 (val!8317 Int)) )
))
(declare-datatypes ((Regex!6996 0))(
  ( (ElementMatch!6996 (c!379498 C!14150)) (Concat!11632 (regOne!14504 Regex!6996) (regTwo!14504 Regex!6996)) (EmptyExpr!6996) (Star!6996 (reg!7325 Regex!6996)) (EmptyLang!6996) (Union!6996 (regOne!14505 Regex!6996) (regTwo!14505 Regex!6996)) )
))
(declare-datatypes ((List!28230 0))(
  ( (Nil!28132) (Cons!28132 (h!33533 Regex!6996) (t!208207 List!28230)) )
))
(declare-fun l!9164 () List!28230)

(declare-fun lambda!89156 () Int)

(declare-fun forall!5630 (List!28230 Int) Bool)

(assert (=> start!234190 (= res!1013749 (forall!5630 l!9164 lambda!89156))))

(assert (=> start!234190 e!1521668))

(declare-fun e!1521664 () Bool)

(assert (=> start!234190 e!1521664))

(declare-fun e!1521665 () Bool)

(assert (=> start!234190 e!1521665))

(declare-fun e!1521669 () Bool)

(assert (=> start!234190 e!1521669))

(declare-fun b!2386511 () Bool)

(declare-fun tp!761189 () Bool)

(declare-fun tp!761190 () Bool)

(assert (=> b!2386511 (= e!1521665 (and tp!761189 tp!761190))))

(declare-fun b!2386512 () Bool)

(declare-fun e!1521666 () Bool)

(declare-fun e!1521667 () Bool)

(assert (=> b!2386512 (= e!1521666 e!1521667)))

(declare-fun res!1013747 () Bool)

(assert (=> b!2386512 (=> res!1013747 e!1521667)))

(declare-fun lt!869489 () List!28230)

(declare-fun isEmpty!16097 (List!28230) Bool)

(assert (=> b!2386512 (= res!1013747 (isEmpty!16097 lt!869489))))

(declare-fun tail!3494 (List!28230) List!28230)

(assert (=> b!2386512 (= lt!869489 (tail!3494 l!9164))))

(declare-fun b!2386513 () Bool)

(declare-fun res!1013746 () Bool)

(assert (=> b!2386513 (=> res!1013746 e!1521666)))

(assert (=> b!2386513 (= res!1013746 (isEmpty!16097 l!9164))))

(declare-fun b!2386514 () Bool)

(declare-fun e!1521663 () Bool)

(assert (=> b!2386514 (= e!1521668 (not e!1521663))))

(declare-fun res!1013745 () Bool)

(assert (=> b!2386514 (=> res!1013745 e!1521663)))

(declare-fun r!13927 () Regex!6996)

(assert (=> b!2386514 (= res!1013745 (not (is-Concat!11632 r!13927)))))

(declare-fun lt!869491 () Bool)

(declare-fun lt!869488 () Bool)

(assert (=> b!2386514 (= lt!869491 lt!869488)))

(declare-datatypes ((List!28231 0))(
  ( (Nil!28133) (Cons!28133 (h!33534 C!14150) (t!208208 List!28231)) )
))
(declare-fun s!9460 () List!28231)

(declare-fun matchRSpec!845 (Regex!6996 List!28231) Bool)

(assert (=> b!2386514 (= lt!869488 (matchRSpec!845 r!13927 s!9460))))

(declare-fun matchR!3113 (Regex!6996 List!28231) Bool)

(assert (=> b!2386514 (= lt!869491 (matchR!3113 r!13927 s!9460))))

(declare-datatypes ((Unit!41095 0))(
  ( (Unit!41096) )
))
(declare-fun lt!869490 () Unit!41095)

(declare-fun mainMatchTheorem!845 (Regex!6996 List!28231) Unit!41095)

(assert (=> b!2386514 (= lt!869490 (mainMatchTheorem!845 r!13927 s!9460))))

(declare-fun b!2386515 () Bool)

(declare-fun tp_is_empty!11405 () Bool)

(declare-fun tp!761191 () Bool)

(assert (=> b!2386515 (= e!1521669 (and tp_is_empty!11405 tp!761191))))

(declare-fun b!2386516 () Bool)

(declare-fun tp!761194 () Bool)

(assert (=> b!2386516 (= e!1521665 tp!761194)))

(declare-fun b!2386517 () Bool)

(assert (=> b!2386517 (= e!1521665 tp_is_empty!11405)))

(declare-fun b!2386518 () Bool)

(declare-fun tp!761195 () Bool)

(declare-fun tp!761192 () Bool)

(assert (=> b!2386518 (= e!1521664 (and tp!761195 tp!761192))))

(declare-fun b!2386519 () Bool)

(assert (=> b!2386519 (= e!1521667 (forall!5630 lt!869489 lambda!89156))))

(declare-fun b!2386520 () Bool)

(declare-fun tp!761188 () Bool)

(declare-fun tp!761193 () Bool)

(assert (=> b!2386520 (= e!1521665 (and tp!761188 tp!761193))))

(declare-fun b!2386521 () Bool)

(declare-fun res!1013750 () Bool)

(assert (=> b!2386521 (=> (not res!1013750) (not e!1521668))))

(declare-fun generalisedConcat!97 (List!28230) Regex!6996)

(assert (=> b!2386521 (= res!1013750 (= r!13927 (generalisedConcat!97 l!9164)))))

(assert (=> b!2386522 (= e!1521663 e!1521666)))

(declare-fun res!1013748 () Bool)

(assert (=> b!2386522 (=> res!1013748 e!1521666)))

(declare-fun lt!869493 () Bool)

(assert (=> b!2386522 (= res!1013748 (not (= lt!869488 lt!869493)))))

(declare-fun Exists!1058 (Int) Bool)

(assert (=> b!2386522 (= (Exists!1058 lambda!89157) (Exists!1058 lambda!89158))))

(declare-fun lt!869492 () Unit!41095)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!397 (Regex!6996 Regex!6996 List!28231) Unit!41095)

(assert (=> b!2386522 (= lt!869492 (lemmaExistCutMatchRandMatchRSpecEquivalent!397 (regOne!14504 r!13927) (regTwo!14504 r!13927) s!9460))))

(assert (=> b!2386522 (= lt!869493 (Exists!1058 lambda!89157))))

(declare-datatypes ((tuple2!27856 0))(
  ( (tuple2!27857 (_1!16469 List!28231) (_2!16469 List!28231)) )
))
(declare-datatypes ((Option!5539 0))(
  ( (None!5538) (Some!5538 (v!30946 tuple2!27856)) )
))
(declare-fun isDefined!4367 (Option!5539) Bool)

(declare-fun findConcatSeparation!647 (Regex!6996 Regex!6996 List!28231 List!28231 List!28231) Option!5539)

(assert (=> b!2386522 (= lt!869493 (isDefined!4367 (findConcatSeparation!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) Nil!28133 s!9460 s!9460)))))

(declare-fun lt!869487 () Unit!41095)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!647 (Regex!6996 Regex!6996 List!28231) Unit!41095)

(assert (=> b!2386522 (= lt!869487 (lemmaFindConcatSeparationEquivalentToExists!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) s!9460))))

(assert (= (and start!234190 res!1013749) b!2386521))

(assert (= (and b!2386521 res!1013750) b!2386514))

(assert (= (and b!2386514 (not res!1013745)) b!2386522))

(assert (= (and b!2386522 (not res!1013748)) b!2386513))

(assert (= (and b!2386513 (not res!1013746)) b!2386512))

(assert (= (and b!2386512 (not res!1013747)) b!2386519))

(assert (= (and start!234190 (is-Cons!28132 l!9164)) b!2386518))

(assert (= (and start!234190 (is-ElementMatch!6996 r!13927)) b!2386517))

(assert (= (and start!234190 (is-Concat!11632 r!13927)) b!2386511))

(assert (= (and start!234190 (is-Star!6996 r!13927)) b!2386516))

(assert (= (and start!234190 (is-Union!6996 r!13927)) b!2386520))

(assert (= (and start!234190 (is-Cons!28133 s!9460)) b!2386515))

(declare-fun m!2788313 () Bool)

(assert (=> b!2386521 m!2788313))

(declare-fun m!2788315 () Bool)

(assert (=> b!2386514 m!2788315))

(declare-fun m!2788317 () Bool)

(assert (=> b!2386514 m!2788317))

(declare-fun m!2788319 () Bool)

(assert (=> b!2386514 m!2788319))

(declare-fun m!2788321 () Bool)

(assert (=> b!2386512 m!2788321))

(declare-fun m!2788323 () Bool)

(assert (=> b!2386512 m!2788323))

(declare-fun m!2788325 () Bool)

(assert (=> start!234190 m!2788325))

(declare-fun m!2788327 () Bool)

(assert (=> b!2386513 m!2788327))

(declare-fun m!2788329 () Bool)

(assert (=> b!2386522 m!2788329))

(declare-fun m!2788331 () Bool)

(assert (=> b!2386522 m!2788331))

(declare-fun m!2788333 () Bool)

(assert (=> b!2386522 m!2788333))

(declare-fun m!2788335 () Bool)

(assert (=> b!2386522 m!2788335))

(assert (=> b!2386522 m!2788329))

(assert (=> b!2386522 m!2788333))

(declare-fun m!2788337 () Bool)

(assert (=> b!2386522 m!2788337))

(declare-fun m!2788339 () Bool)

(assert (=> b!2386522 m!2788339))

(declare-fun m!2788341 () Bool)

(assert (=> b!2386519 m!2788341))

(push 1)

(assert (not start!234190))

(assert (not b!2386518))

(assert (not b!2386520))

(assert (not b!2386522))

(assert (not b!2386521))

(assert (not b!2386513))

(assert (not b!2386514))

(assert (not b!2386515))

(assert (not b!2386511))

(assert (not b!2386512))

(assert tp_is_empty!11405)

(assert (not b!2386516))

(assert (not b!2386519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!697535 () Bool)

(declare-fun isEmpty!16099 (Option!5539) Bool)

(assert (=> d!697535 (= (isDefined!4367 (findConcatSeparation!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) Nil!28133 s!9460 s!9460)) (not (isEmpty!16099 (findConcatSeparation!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) Nil!28133 s!9460 s!9460))))))

(declare-fun bs!462241 () Bool)

(assert (= bs!462241 d!697535))

(assert (=> bs!462241 m!2788333))

(declare-fun m!2788373 () Bool)

(assert (=> bs!462241 m!2788373))

(assert (=> b!2386522 d!697535))

(declare-fun bs!462242 () Bool)

(declare-fun d!697537 () Bool)

(assert (= bs!462242 (and d!697537 b!2386522)))

(declare-fun lambda!89174 () Int)

(assert (=> bs!462242 (= lambda!89174 lambda!89157)))

(assert (=> bs!462242 (not (= lambda!89174 lambda!89158))))

(assert (=> d!697537 true))

(assert (=> d!697537 true))

(assert (=> d!697537 true))

(assert (=> d!697537 (= (isDefined!4367 (findConcatSeparation!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) Nil!28133 s!9460 s!9460)) (Exists!1058 lambda!89174))))

(declare-fun lt!869517 () Unit!41095)

(declare-fun choose!14013 (Regex!6996 Regex!6996 List!28231) Unit!41095)

(assert (=> d!697537 (= lt!869517 (choose!14013 (regOne!14504 r!13927) (regTwo!14504 r!13927) s!9460))))

(declare-fun validRegex!2721 (Regex!6996) Bool)

(assert (=> d!697537 (validRegex!2721 (regOne!14504 r!13927))))

(assert (=> d!697537 (= (lemmaFindConcatSeparationEquivalentToExists!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) s!9460) lt!869517)))

(declare-fun bs!462243 () Bool)

(assert (= bs!462243 d!697537))

(declare-fun m!2788375 () Bool)

(assert (=> bs!462243 m!2788375))

(assert (=> bs!462243 m!2788333))

(assert (=> bs!462243 m!2788337))

(declare-fun m!2788377 () Bool)

(assert (=> bs!462243 m!2788377))

(declare-fun m!2788379 () Bool)

(assert (=> bs!462243 m!2788379))

(assert (=> bs!462243 m!2788333))

(assert (=> b!2386522 d!697537))

(declare-fun d!697541 () Bool)

(declare-fun choose!14014 (Int) Bool)

(assert (=> d!697541 (= (Exists!1058 lambda!89157) (choose!14014 lambda!89157))))

(declare-fun bs!462244 () Bool)

(assert (= bs!462244 d!697541))

(declare-fun m!2788381 () Bool)

(assert (=> bs!462244 m!2788381))

(assert (=> b!2386522 d!697541))

(declare-fun bs!462245 () Bool)

(declare-fun d!697543 () Bool)

(assert (= bs!462245 (and d!697543 b!2386522)))

(declare-fun lambda!89181 () Int)

(assert (=> bs!462245 (= lambda!89181 lambda!89157)))

(assert (=> bs!462245 (not (= lambda!89181 lambda!89158))))

(declare-fun bs!462246 () Bool)

(assert (= bs!462246 (and d!697543 d!697537)))

(assert (=> bs!462246 (= lambda!89181 lambda!89174)))

(assert (=> d!697543 true))

(assert (=> d!697543 true))

(assert (=> d!697543 true))

(declare-fun lambda!89182 () Int)

(assert (=> bs!462245 (not (= lambda!89182 lambda!89157))))

(assert (=> bs!462245 (= lambda!89182 lambda!89158)))

(assert (=> bs!462246 (not (= lambda!89182 lambda!89174))))

(declare-fun bs!462247 () Bool)

(assert (= bs!462247 d!697543))

(assert (=> bs!462247 (not (= lambda!89182 lambda!89181))))

(assert (=> d!697543 true))

(assert (=> d!697543 true))

(assert (=> d!697543 true))

(assert (=> d!697543 (= (Exists!1058 lambda!89181) (Exists!1058 lambda!89182))))

(declare-fun lt!869520 () Unit!41095)

(declare-fun choose!14015 (Regex!6996 Regex!6996 List!28231) Unit!41095)

(assert (=> d!697543 (= lt!869520 (choose!14015 (regOne!14504 r!13927) (regTwo!14504 r!13927) s!9460))))

(assert (=> d!697543 (validRegex!2721 (regOne!14504 r!13927))))

(assert (=> d!697543 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!397 (regOne!14504 r!13927) (regTwo!14504 r!13927) s!9460) lt!869520)))

(declare-fun m!2788383 () Bool)

(assert (=> bs!462247 m!2788383))

(declare-fun m!2788385 () Bool)

(assert (=> bs!462247 m!2788385))

(declare-fun m!2788387 () Bool)

(assert (=> bs!462247 m!2788387))

(assert (=> bs!462247 m!2788377))

(assert (=> b!2386522 d!697543))

(declare-fun d!697545 () Bool)

(assert (=> d!697545 (= (Exists!1058 lambda!89158) (choose!14014 lambda!89158))))

(declare-fun bs!462248 () Bool)

(assert (= bs!462248 d!697545))

(declare-fun m!2788389 () Bool)

(assert (=> bs!462248 m!2788389))

(assert (=> b!2386522 d!697545))

(declare-fun b!2386641 () Bool)

(declare-fun e!1521733 () Option!5539)

(assert (=> b!2386641 (= e!1521733 (Some!5538 (tuple2!27857 Nil!28133 s!9460)))))

(declare-fun d!697547 () Bool)

(declare-fun e!1521731 () Bool)

(assert (=> d!697547 e!1521731))

(declare-fun res!1013822 () Bool)

(assert (=> d!697547 (=> res!1013822 e!1521731)))

(declare-fun e!1521734 () Bool)

(assert (=> d!697547 (= res!1013822 e!1521734)))

(declare-fun res!1013821 () Bool)

(assert (=> d!697547 (=> (not res!1013821) (not e!1521734))))

(declare-fun lt!869529 () Option!5539)

(assert (=> d!697547 (= res!1013821 (isDefined!4367 lt!869529))))

(assert (=> d!697547 (= lt!869529 e!1521733)))

(declare-fun c!379513 () Bool)

(declare-fun e!1521732 () Bool)

(assert (=> d!697547 (= c!379513 e!1521732)))

(declare-fun res!1013823 () Bool)

(assert (=> d!697547 (=> (not res!1013823) (not e!1521732))))

(assert (=> d!697547 (= res!1013823 (matchR!3113 (regOne!14504 r!13927) Nil!28133))))

(assert (=> d!697547 (validRegex!2721 (regOne!14504 r!13927))))

(assert (=> d!697547 (= (findConcatSeparation!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) Nil!28133 s!9460 s!9460) lt!869529)))

(declare-fun b!2386642 () Bool)

(declare-fun res!1013819 () Bool)

(assert (=> b!2386642 (=> (not res!1013819) (not e!1521734))))

(declare-fun get!8592 (Option!5539) tuple2!27856)

(assert (=> b!2386642 (= res!1013819 (matchR!3113 (regTwo!14504 r!13927) (_2!16469 (get!8592 lt!869529))))))

(declare-fun b!2386643 () Bool)

(declare-fun e!1521735 () Option!5539)

(assert (=> b!2386643 (= e!1521733 e!1521735)))

(declare-fun c!379512 () Bool)

(assert (=> b!2386643 (= c!379512 (is-Nil!28133 s!9460))))

(declare-fun b!2386644 () Bool)

(declare-fun res!1013820 () Bool)

(assert (=> b!2386644 (=> (not res!1013820) (not e!1521734))))

(assert (=> b!2386644 (= res!1013820 (matchR!3113 (regOne!14504 r!13927) (_1!16469 (get!8592 lt!869529))))))

(declare-fun b!2386645 () Bool)

(assert (=> b!2386645 (= e!1521731 (not (isDefined!4367 lt!869529)))))

(declare-fun b!2386646 () Bool)

(assert (=> b!2386646 (= e!1521732 (matchR!3113 (regTwo!14504 r!13927) s!9460))))

(declare-fun b!2386647 () Bool)

(assert (=> b!2386647 (= e!1521735 None!5538)))

(declare-fun b!2386648 () Bool)

(declare-fun ++!6950 (List!28231 List!28231) List!28231)

(assert (=> b!2386648 (= e!1521734 (= (++!6950 (_1!16469 (get!8592 lt!869529)) (_2!16469 (get!8592 lt!869529))) s!9460))))

(declare-fun b!2386649 () Bool)

(declare-fun lt!869528 () Unit!41095)

(declare-fun lt!869527 () Unit!41095)

(assert (=> b!2386649 (= lt!869528 lt!869527)))

(assert (=> b!2386649 (= (++!6950 (++!6950 Nil!28133 (Cons!28133 (h!33534 s!9460) Nil!28133)) (t!208208 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!592 (List!28231 C!14150 List!28231 List!28231) Unit!41095)

(assert (=> b!2386649 (= lt!869527 (lemmaMoveElementToOtherListKeepsConcatEq!592 Nil!28133 (h!33534 s!9460) (t!208208 s!9460) s!9460))))

(assert (=> b!2386649 (= e!1521735 (findConcatSeparation!647 (regOne!14504 r!13927) (regTwo!14504 r!13927) (++!6950 Nil!28133 (Cons!28133 (h!33534 s!9460) Nil!28133)) (t!208208 s!9460) s!9460))))

(assert (= (and d!697547 res!1013823) b!2386646))

(assert (= (and d!697547 c!379513) b!2386641))

(assert (= (and d!697547 (not c!379513)) b!2386643))

(assert (= (and b!2386643 c!379512) b!2386647))

(assert (= (and b!2386643 (not c!379512)) b!2386649))

(assert (= (and d!697547 res!1013821) b!2386644))

(assert (= (and b!2386644 res!1013820) b!2386642))

(assert (= (and b!2386642 res!1013819) b!2386648))

(assert (= (and d!697547 (not res!1013822)) b!2386645))

(declare-fun m!2788391 () Bool)

(assert (=> b!2386645 m!2788391))

(declare-fun m!2788393 () Bool)

(assert (=> b!2386649 m!2788393))

(assert (=> b!2386649 m!2788393))

(declare-fun m!2788395 () Bool)

(assert (=> b!2386649 m!2788395))

(declare-fun m!2788397 () Bool)

(assert (=> b!2386649 m!2788397))

(assert (=> b!2386649 m!2788393))

(declare-fun m!2788399 () Bool)

(assert (=> b!2386649 m!2788399))

(declare-fun m!2788401 () Bool)

(assert (=> b!2386644 m!2788401))

(declare-fun m!2788403 () Bool)

(assert (=> b!2386644 m!2788403))

(assert (=> b!2386642 m!2788401))

(declare-fun m!2788405 () Bool)

(assert (=> b!2386642 m!2788405))

(declare-fun m!2788407 () Bool)

(assert (=> b!2386646 m!2788407))

(assert (=> b!2386648 m!2788401))

(declare-fun m!2788409 () Bool)

(assert (=> b!2386648 m!2788409))

(assert (=> d!697547 m!2788391))

(declare-fun m!2788411 () Bool)

(assert (=> d!697547 m!2788411))

(assert (=> d!697547 m!2788377))

(assert (=> b!2386522 d!697547))

(declare-fun bs!462252 () Bool)

(declare-fun d!697549 () Bool)

(assert (= bs!462252 (and d!697549 start!234190)))

(declare-fun lambda!89189 () Int)

(assert (=> bs!462252 (= lambda!89189 lambda!89156)))

(declare-fun b!2386681 () Bool)

(declare-fun e!1521758 () Bool)

(declare-fun lt!869532 () Regex!6996)

(declare-fun head!5224 (List!28230) Regex!6996)

(assert (=> b!2386681 (= e!1521758 (= lt!869532 (head!5224 l!9164)))))

(declare-fun b!2386682 () Bool)

(declare-fun e!1521759 () Regex!6996)

(assert (=> b!2386682 (= e!1521759 (h!33533 l!9164))))

(declare-fun b!2386683 () Bool)

(declare-fun e!1521756 () Bool)

(assert (=> b!2386683 (= e!1521756 e!1521758)))

(declare-fun c!379529 () Bool)

(assert (=> b!2386683 (= c!379529 (isEmpty!16097 (tail!3494 l!9164)))))

(declare-fun b!2386684 () Bool)

(declare-fun isEmptyExpr!66 (Regex!6996) Bool)

(assert (=> b!2386684 (= e!1521756 (isEmptyExpr!66 lt!869532))))

(declare-fun b!2386685 () Bool)

(declare-fun e!1521760 () Regex!6996)

(assert (=> b!2386685 (= e!1521759 e!1521760)))

(declare-fun c!379528 () Bool)

(assert (=> b!2386685 (= c!379528 (is-Cons!28132 l!9164))))

(declare-fun b!2386686 () Bool)

(declare-fun e!1521757 () Bool)

(assert (=> b!2386686 (= e!1521757 e!1521756)))

(declare-fun c!379527 () Bool)

(assert (=> b!2386686 (= c!379527 (isEmpty!16097 l!9164))))

(declare-fun b!2386687 () Bool)

(assert (=> b!2386687 (= e!1521760 EmptyExpr!6996)))

(declare-fun b!2386688 () Bool)

(declare-fun isConcat!66 (Regex!6996) Bool)

(assert (=> b!2386688 (= e!1521758 (isConcat!66 lt!869532))))

(declare-fun b!2386690 () Bool)

(assert (=> b!2386690 (= e!1521760 (Concat!11632 (h!33533 l!9164) (generalisedConcat!97 (t!208207 l!9164))))))

(assert (=> d!697549 e!1521757))

(declare-fun res!1013831 () Bool)

(assert (=> d!697549 (=> (not res!1013831) (not e!1521757))))

(assert (=> d!697549 (= res!1013831 (validRegex!2721 lt!869532))))

(assert (=> d!697549 (= lt!869532 e!1521759)))

(declare-fun c!379526 () Bool)

(declare-fun e!1521755 () Bool)

(assert (=> d!697549 (= c!379526 e!1521755)))

(declare-fun res!1013832 () Bool)

(assert (=> d!697549 (=> (not res!1013832) (not e!1521755))))

(assert (=> d!697549 (= res!1013832 (is-Cons!28132 l!9164))))

(assert (=> d!697549 (forall!5630 l!9164 lambda!89189)))

(assert (=> d!697549 (= (generalisedConcat!97 l!9164) lt!869532)))

(declare-fun b!2386689 () Bool)

(assert (=> b!2386689 (= e!1521755 (isEmpty!16097 (t!208207 l!9164)))))

(assert (= (and d!697549 res!1013832) b!2386689))

(assert (= (and d!697549 c!379526) b!2386682))

(assert (= (and d!697549 (not c!379526)) b!2386685))

(assert (= (and b!2386685 c!379528) b!2386690))

(assert (= (and b!2386685 (not c!379528)) b!2386687))

(assert (= (and d!697549 res!1013831) b!2386686))

(assert (= (and b!2386686 c!379527) b!2386684))

(assert (= (and b!2386686 (not c!379527)) b!2386683))

(assert (= (and b!2386683 c!379529) b!2386681))

(assert (= (and b!2386683 (not c!379529)) b!2386688))

(declare-fun m!2788421 () Bool)

(assert (=> b!2386681 m!2788421))

(declare-fun m!2788423 () Bool)

(assert (=> b!2386684 m!2788423))

(declare-fun m!2788425 () Bool)

(assert (=> b!2386690 m!2788425))

(declare-fun m!2788427 () Bool)

(assert (=> b!2386689 m!2788427))

(assert (=> b!2386683 m!2788323))

(assert (=> b!2386683 m!2788323))

(declare-fun m!2788429 () Bool)

(assert (=> b!2386683 m!2788429))

(assert (=> b!2386686 m!2788327))

(declare-fun m!2788431 () Bool)

(assert (=> b!2386688 m!2788431))

(declare-fun m!2788433 () Bool)

(assert (=> d!697549 m!2788433))

(declare-fun m!2788435 () Bool)

(assert (=> d!697549 m!2788435))

(assert (=> b!2386521 d!697549))

(declare-fun d!697553 () Bool)

(declare-fun res!1013837 () Bool)

(declare-fun e!1521765 () Bool)

(assert (=> d!697553 (=> res!1013837 e!1521765)))

(assert (=> d!697553 (= res!1013837 (is-Nil!28132 lt!869489))))

(assert (=> d!697553 (= (forall!5630 lt!869489 lambda!89156) e!1521765)))

(declare-fun b!2386695 () Bool)

(declare-fun e!1521766 () Bool)

(assert (=> b!2386695 (= e!1521765 e!1521766)))

(declare-fun res!1013838 () Bool)

(assert (=> b!2386695 (=> (not res!1013838) (not e!1521766))))

(declare-fun dynLambda!12113 (Int Regex!6996) Bool)

(assert (=> b!2386695 (= res!1013838 (dynLambda!12113 lambda!89156 (h!33533 lt!869489)))))

(declare-fun b!2386696 () Bool)

(assert (=> b!2386696 (= e!1521766 (forall!5630 (t!208207 lt!869489) lambda!89156))))

(assert (= (and d!697553 (not res!1013837)) b!2386695))

(assert (= (and b!2386695 res!1013838) b!2386696))

(declare-fun b_lambda!74131 () Bool)

(assert (=> (not b_lambda!74131) (not b!2386695)))

(declare-fun m!2788437 () Bool)

(assert (=> b!2386695 m!2788437))

(declare-fun m!2788439 () Bool)

(assert (=> b!2386696 m!2788439))

(assert (=> b!2386519 d!697553))

(declare-fun d!697555 () Bool)

(declare-fun res!1013839 () Bool)

(declare-fun e!1521767 () Bool)

(assert (=> d!697555 (=> res!1013839 e!1521767)))

(assert (=> d!697555 (= res!1013839 (is-Nil!28132 l!9164))))

(assert (=> d!697555 (= (forall!5630 l!9164 lambda!89156) e!1521767)))

(declare-fun b!2386697 () Bool)

(declare-fun e!1521768 () Bool)

(assert (=> b!2386697 (= e!1521767 e!1521768)))

(declare-fun res!1013840 () Bool)

(assert (=> b!2386697 (=> (not res!1013840) (not e!1521768))))

(assert (=> b!2386697 (= res!1013840 (dynLambda!12113 lambda!89156 (h!33533 l!9164)))))

(declare-fun b!2386698 () Bool)

(assert (=> b!2386698 (= e!1521768 (forall!5630 (t!208207 l!9164) lambda!89156))))

(assert (= (and d!697555 (not res!1013839)) b!2386697))

(assert (= (and b!2386697 res!1013840) b!2386698))

(declare-fun b_lambda!74133 () Bool)

(assert (=> (not b_lambda!74133) (not b!2386697)))

(declare-fun m!2788441 () Bool)

(assert (=> b!2386697 m!2788441))

(declare-fun m!2788443 () Bool)

(assert (=> b!2386698 m!2788443))

(assert (=> start!234190 d!697555))

(declare-fun bs!462253 () Bool)

(declare-fun b!2386765 () Bool)

(assert (= bs!462253 (and b!2386765 d!697543)))

(declare-fun lambda!89194 () Int)

(assert (=> bs!462253 (not (= lambda!89194 lambda!89182))))

(declare-fun bs!462254 () Bool)

(assert (= bs!462254 (and b!2386765 b!2386522)))

(assert (=> bs!462254 (not (= lambda!89194 lambda!89157))))

(assert (=> bs!462254 (not (= lambda!89194 lambda!89158))))

(declare-fun bs!462255 () Bool)

(assert (= bs!462255 (and b!2386765 d!697537)))

(assert (=> bs!462255 (not (= lambda!89194 lambda!89174))))

(assert (=> bs!462253 (not (= lambda!89194 lambda!89181))))

(assert (=> b!2386765 true))

(assert (=> b!2386765 true))

(declare-fun bs!462256 () Bool)

(declare-fun b!2386768 () Bool)

(assert (= bs!462256 (and b!2386768 d!697543)))

(declare-fun lambda!89195 () Int)

(assert (=> bs!462256 (= lambda!89195 lambda!89182)))

(declare-fun bs!462257 () Bool)

(assert (= bs!462257 (and b!2386768 b!2386522)))

(assert (=> bs!462257 (not (= lambda!89195 lambda!89157))))

(declare-fun bs!462258 () Bool)

(assert (= bs!462258 (and b!2386768 b!2386765)))

(assert (=> bs!462258 (not (= lambda!89195 lambda!89194))))

(assert (=> bs!462257 (= lambda!89195 lambda!89158)))

(declare-fun bs!462259 () Bool)

(assert (= bs!462259 (and b!2386768 d!697537)))

(assert (=> bs!462259 (not (= lambda!89195 lambda!89174))))

(assert (=> bs!462256 (not (= lambda!89195 lambda!89181))))

(assert (=> b!2386768 true))

(assert (=> b!2386768 true))

(declare-fun c!379547 () Bool)

(declare-fun bm!145120 () Bool)

(declare-fun call!145126 () Bool)

(assert (=> bm!145120 (= call!145126 (Exists!1058 (ite c!379547 lambda!89194 lambda!89195)))))

(declare-fun b!2386759 () Bool)

(declare-fun res!1013873 () Bool)

(declare-fun e!1521804 () Bool)

(assert (=> b!2386759 (=> res!1013873 e!1521804)))

(declare-fun call!145125 () Bool)

(assert (=> b!2386759 (= res!1013873 call!145125)))

(declare-fun e!1521801 () Bool)

(assert (=> b!2386759 (= e!1521801 e!1521804)))

(declare-fun b!2386760 () Bool)

(declare-fun e!1521805 () Bool)

(declare-fun e!1521807 () Bool)

(assert (=> b!2386760 (= e!1521805 e!1521807)))

(declare-fun res!1013874 () Bool)

(assert (=> b!2386760 (= res!1013874 (not (is-EmptyLang!6996 r!13927)))))

(assert (=> b!2386760 (=> (not res!1013874) (not e!1521807))))

(declare-fun b!2386761 () Bool)

(declare-fun e!1521806 () Bool)

(assert (=> b!2386761 (= e!1521806 (matchRSpec!845 (regTwo!14505 r!13927) s!9460))))

(declare-fun d!697557 () Bool)

(declare-fun c!379545 () Bool)

(assert (=> d!697557 (= c!379545 (is-EmptyExpr!6996 r!13927))))

(assert (=> d!697557 (= (matchRSpec!845 r!13927 s!9460) e!1521805)))

(declare-fun b!2386762 () Bool)

(declare-fun e!1521803 () Bool)

(assert (=> b!2386762 (= e!1521803 e!1521806)))

(declare-fun res!1013875 () Bool)

(assert (=> b!2386762 (= res!1013875 (matchRSpec!845 (regOne!14505 r!13927) s!9460))))

(assert (=> b!2386762 (=> res!1013875 e!1521806)))

(declare-fun bm!145121 () Bool)

(declare-fun isEmpty!16100 (List!28231) Bool)

(assert (=> bm!145121 (= call!145125 (isEmpty!16100 s!9460))))

(declare-fun b!2386763 () Bool)

(declare-fun e!1521802 () Bool)

(assert (=> b!2386763 (= e!1521802 (= s!9460 (Cons!28133 (c!379498 r!13927) Nil!28133)))))

(declare-fun b!2386764 () Bool)

(declare-fun c!379544 () Bool)

(assert (=> b!2386764 (= c!379544 (is-Union!6996 r!13927))))

(assert (=> b!2386764 (= e!1521802 e!1521803)))

(assert (=> b!2386765 (= e!1521804 call!145126)))

(declare-fun b!2386766 () Bool)

(assert (=> b!2386766 (= e!1521803 e!1521801)))

(assert (=> b!2386766 (= c!379547 (is-Star!6996 r!13927))))

(declare-fun b!2386767 () Bool)

(assert (=> b!2386767 (= e!1521805 call!145125)))

(assert (=> b!2386768 (= e!1521801 call!145126)))

(declare-fun b!2386769 () Bool)

(declare-fun c!379546 () Bool)

(assert (=> b!2386769 (= c!379546 (is-ElementMatch!6996 r!13927))))

(assert (=> b!2386769 (= e!1521807 e!1521802)))

(assert (= (and d!697557 c!379545) b!2386767))

(assert (= (and d!697557 (not c!379545)) b!2386760))

(assert (= (and b!2386760 res!1013874) b!2386769))

(assert (= (and b!2386769 c!379546) b!2386763))

(assert (= (and b!2386769 (not c!379546)) b!2386764))

(assert (= (and b!2386764 c!379544) b!2386762))

(assert (= (and b!2386764 (not c!379544)) b!2386766))

(assert (= (and b!2386762 (not res!1013875)) b!2386761))

(assert (= (and b!2386766 c!379547) b!2386759))

(assert (= (and b!2386766 (not c!379547)) b!2386768))

(assert (= (and b!2386759 (not res!1013873)) b!2386765))

(assert (= (or b!2386765 b!2386768) bm!145120))

(assert (= (or b!2386767 b!2386759) bm!145121))

(declare-fun m!2788445 () Bool)

(assert (=> bm!145120 m!2788445))

(declare-fun m!2788447 () Bool)

(assert (=> b!2386761 m!2788447))

(declare-fun m!2788449 () Bool)

(assert (=> b!2386762 m!2788449))

(declare-fun m!2788451 () Bool)

(assert (=> bm!145121 m!2788451))

(assert (=> b!2386514 d!697557))

(declare-fun b!2386812 () Bool)

(declare-fun e!1521831 () Bool)

(declare-fun e!1521834 () Bool)

(assert (=> b!2386812 (= e!1521831 e!1521834)))

(declare-fun res!1013906 () Bool)

(assert (=> b!2386812 (=> res!1013906 e!1521834)))

(declare-fun call!145130 () Bool)

(assert (=> b!2386812 (= res!1013906 call!145130)))

(declare-fun b!2386813 () Bool)

(declare-fun e!1521830 () Bool)

(declare-fun lt!869540 () Bool)

(assert (=> b!2386813 (= e!1521830 (= lt!869540 call!145130))))

(declare-fun b!2386815 () Bool)

(declare-fun head!5225 (List!28231) C!14150)

(assert (=> b!2386815 (= e!1521834 (not (= (head!5225 s!9460) (c!379498 r!13927))))))

(declare-fun b!2386816 () Bool)

(declare-fun e!1521832 () Bool)

(declare-fun derivativeStep!1703 (Regex!6996 C!14150) Regex!6996)

(declare-fun tail!3496 (List!28231) List!28231)

(assert (=> b!2386816 (= e!1521832 (matchR!3113 (derivativeStep!1703 r!13927 (head!5225 s!9460)) (tail!3496 s!9460)))))

(declare-fun b!2386817 () Bool)

(declare-fun e!1521829 () Bool)

(assert (=> b!2386817 (= e!1521829 (not lt!869540))))

(declare-fun b!2386818 () Bool)

(assert (=> b!2386818 (= e!1521830 e!1521829)))

(declare-fun c!379559 () Bool)

(assert (=> b!2386818 (= c!379559 (is-EmptyLang!6996 r!13927))))

(declare-fun b!2386819 () Bool)

(declare-fun e!1521833 () Bool)

(assert (=> b!2386819 (= e!1521833 e!1521831)))

(declare-fun res!1013904 () Bool)

(assert (=> b!2386819 (=> (not res!1013904) (not e!1521831))))

(assert (=> b!2386819 (= res!1013904 (not lt!869540))))

(declare-fun b!2386820 () Bool)

(declare-fun res!1013903 () Bool)

(assert (=> b!2386820 (=> res!1013903 e!1521833)))

(assert (=> b!2386820 (= res!1013903 (not (is-ElementMatch!6996 r!13927)))))

(assert (=> b!2386820 (= e!1521829 e!1521833)))

(declare-fun b!2386821 () Bool)

(declare-fun e!1521835 () Bool)

(assert (=> b!2386821 (= e!1521835 (= (head!5225 s!9460) (c!379498 r!13927)))))

(declare-fun b!2386822 () Bool)

(declare-fun res!1013900 () Bool)

(assert (=> b!2386822 (=> (not res!1013900) (not e!1521835))))

(assert (=> b!2386822 (= res!1013900 (isEmpty!16100 (tail!3496 s!9460)))))

(declare-fun d!697559 () Bool)

(assert (=> d!697559 e!1521830))

(declare-fun c!379557 () Bool)

(assert (=> d!697559 (= c!379557 (is-EmptyExpr!6996 r!13927))))

(assert (=> d!697559 (= lt!869540 e!1521832)))

(declare-fun c!379558 () Bool)

(assert (=> d!697559 (= c!379558 (isEmpty!16100 s!9460))))

(assert (=> d!697559 (validRegex!2721 r!13927)))

(assert (=> d!697559 (= (matchR!3113 r!13927 s!9460) lt!869540)))

(declare-fun b!2386814 () Bool)

(declare-fun res!1013902 () Bool)

(assert (=> b!2386814 (=> (not res!1013902) (not e!1521835))))

(assert (=> b!2386814 (= res!1013902 (not call!145130))))

(declare-fun b!2386823 () Bool)

(declare-fun res!1013901 () Bool)

(assert (=> b!2386823 (=> res!1013901 e!1521833)))

(assert (=> b!2386823 (= res!1013901 e!1521835)))

(declare-fun res!1013907 () Bool)

(assert (=> b!2386823 (=> (not res!1013907) (not e!1521835))))

(assert (=> b!2386823 (= res!1013907 lt!869540)))

(declare-fun bm!145125 () Bool)

(assert (=> bm!145125 (= call!145130 (isEmpty!16100 s!9460))))

(declare-fun b!2386824 () Bool)

(declare-fun res!1013905 () Bool)

(assert (=> b!2386824 (=> res!1013905 e!1521834)))

(assert (=> b!2386824 (= res!1013905 (not (isEmpty!16100 (tail!3496 s!9460))))))

(declare-fun b!2386825 () Bool)

(declare-fun nullable!2045 (Regex!6996) Bool)

(assert (=> b!2386825 (= e!1521832 (nullable!2045 r!13927))))

(assert (= (and d!697559 c!379558) b!2386825))

(assert (= (and d!697559 (not c!379558)) b!2386816))

(assert (= (and d!697559 c!379557) b!2386813))

(assert (= (and d!697559 (not c!379557)) b!2386818))

(assert (= (and b!2386818 c!379559) b!2386817))

(assert (= (and b!2386818 (not c!379559)) b!2386820))

(assert (= (and b!2386820 (not res!1013903)) b!2386823))

(assert (= (and b!2386823 res!1013907) b!2386814))

(assert (= (and b!2386814 res!1013902) b!2386822))

(assert (= (and b!2386822 res!1013900) b!2386821))

(assert (= (and b!2386823 (not res!1013901)) b!2386819))

(assert (= (and b!2386819 res!1013904) b!2386812))

(assert (= (and b!2386812 (not res!1013906)) b!2386824))

(assert (= (and b!2386824 (not res!1013905)) b!2386815))

(assert (= (or b!2386813 b!2386812 b!2386814) bm!145125))

(declare-fun m!2788469 () Bool)

(assert (=> b!2386824 m!2788469))

(assert (=> b!2386824 m!2788469))

(declare-fun m!2788471 () Bool)

(assert (=> b!2386824 m!2788471))

(assert (=> bm!145125 m!2788451))

(declare-fun m!2788473 () Bool)

(assert (=> b!2386815 m!2788473))

(assert (=> b!2386821 m!2788473))

(declare-fun m!2788475 () Bool)

(assert (=> b!2386825 m!2788475))

(assert (=> b!2386816 m!2788473))

(assert (=> b!2386816 m!2788473))

(declare-fun m!2788477 () Bool)

(assert (=> b!2386816 m!2788477))

(assert (=> b!2386816 m!2788469))

(assert (=> b!2386816 m!2788477))

(assert (=> b!2386816 m!2788469))

(declare-fun m!2788479 () Bool)

(assert (=> b!2386816 m!2788479))

(assert (=> d!697559 m!2788451))

(declare-fun m!2788481 () Bool)

(assert (=> d!697559 m!2788481))

(assert (=> b!2386822 m!2788469))

(assert (=> b!2386822 m!2788469))

(assert (=> b!2386822 m!2788471))

(assert (=> b!2386514 d!697559))

(declare-fun d!697565 () Bool)

(assert (=> d!697565 (= (matchR!3113 r!13927 s!9460) (matchRSpec!845 r!13927 s!9460))))

(declare-fun lt!869544 () Unit!41095)

(declare-fun choose!14016 (Regex!6996 List!28231) Unit!41095)

(assert (=> d!697565 (= lt!869544 (choose!14016 r!13927 s!9460))))

(assert (=> d!697565 (validRegex!2721 r!13927)))

(assert (=> d!697565 (= (mainMatchTheorem!845 r!13927 s!9460) lt!869544)))

(declare-fun bs!462261 () Bool)

(assert (= bs!462261 d!697565))

(assert (=> bs!462261 m!2788317))

(assert (=> bs!462261 m!2788315))

(declare-fun m!2788483 () Bool)

(assert (=> bs!462261 m!2788483))

(assert (=> bs!462261 m!2788481))

(assert (=> b!2386514 d!697565))

(declare-fun d!697567 () Bool)

(assert (=> d!697567 (= (isEmpty!16097 lt!869489) (is-Nil!28132 lt!869489))))

(assert (=> b!2386512 d!697567))

(declare-fun d!697569 () Bool)

(assert (=> d!697569 (= (tail!3494 l!9164) (t!208207 l!9164))))

(assert (=> b!2386512 d!697569))

(declare-fun d!697571 () Bool)

(assert (=> d!697571 (= (isEmpty!16097 l!9164) (is-Nil!28132 l!9164))))

(assert (=> b!2386513 d!697571))

(declare-fun b!2386843 () Bool)

(declare-fun e!1521844 () Bool)

(declare-fun tp!761230 () Bool)

(declare-fun tp!761234 () Bool)

(assert (=> b!2386843 (= e!1521844 (and tp!761230 tp!761234))))

(declare-fun b!2386844 () Bool)

(declare-fun tp!761233 () Bool)

(assert (=> b!2386844 (= e!1521844 tp!761233)))

(assert (=> b!2386516 (= tp!761194 e!1521844)))

(declare-fun b!2386845 () Bool)

(declare-fun tp!761231 () Bool)

(declare-fun tp!761232 () Bool)

(assert (=> b!2386845 (= e!1521844 (and tp!761231 tp!761232))))

(declare-fun b!2386842 () Bool)

(assert (=> b!2386842 (= e!1521844 tp_is_empty!11405)))

(assert (= (and b!2386516 (is-ElementMatch!6996 (reg!7325 r!13927))) b!2386842))

(assert (= (and b!2386516 (is-Concat!11632 (reg!7325 r!13927))) b!2386843))

(assert (= (and b!2386516 (is-Star!6996 (reg!7325 r!13927))) b!2386844))

(assert (= (and b!2386516 (is-Union!6996 (reg!7325 r!13927))) b!2386845))

(declare-fun b!2386847 () Bool)

(declare-fun e!1521845 () Bool)

(declare-fun tp!761235 () Bool)

(declare-fun tp!761239 () Bool)

(assert (=> b!2386847 (= e!1521845 (and tp!761235 tp!761239))))

(declare-fun b!2386848 () Bool)

(declare-fun tp!761238 () Bool)

(assert (=> b!2386848 (= e!1521845 tp!761238)))

(assert (=> b!2386511 (= tp!761189 e!1521845)))

(declare-fun b!2386849 () Bool)

(declare-fun tp!761236 () Bool)

(declare-fun tp!761237 () Bool)

(assert (=> b!2386849 (= e!1521845 (and tp!761236 tp!761237))))

(declare-fun b!2386846 () Bool)

(assert (=> b!2386846 (= e!1521845 tp_is_empty!11405)))

(assert (= (and b!2386511 (is-ElementMatch!6996 (regOne!14504 r!13927))) b!2386846))

(assert (= (and b!2386511 (is-Concat!11632 (regOne!14504 r!13927))) b!2386847))

(assert (= (and b!2386511 (is-Star!6996 (regOne!14504 r!13927))) b!2386848))

(assert (= (and b!2386511 (is-Union!6996 (regOne!14504 r!13927))) b!2386849))

(declare-fun b!2386851 () Bool)

(declare-fun e!1521846 () Bool)

(declare-fun tp!761240 () Bool)

(declare-fun tp!761244 () Bool)

(assert (=> b!2386851 (= e!1521846 (and tp!761240 tp!761244))))

(declare-fun b!2386852 () Bool)

(declare-fun tp!761243 () Bool)

(assert (=> b!2386852 (= e!1521846 tp!761243)))

(assert (=> b!2386511 (= tp!761190 e!1521846)))

(declare-fun b!2386853 () Bool)

(declare-fun tp!761241 () Bool)

(declare-fun tp!761242 () Bool)

(assert (=> b!2386853 (= e!1521846 (and tp!761241 tp!761242))))

(declare-fun b!2386850 () Bool)

(assert (=> b!2386850 (= e!1521846 tp_is_empty!11405)))

(assert (= (and b!2386511 (is-ElementMatch!6996 (regTwo!14504 r!13927))) b!2386850))

(assert (= (and b!2386511 (is-Concat!11632 (regTwo!14504 r!13927))) b!2386851))

(assert (= (and b!2386511 (is-Star!6996 (regTwo!14504 r!13927))) b!2386852))

(assert (= (and b!2386511 (is-Union!6996 (regTwo!14504 r!13927))) b!2386853))

(declare-fun b!2386855 () Bool)

(declare-fun e!1521847 () Bool)

(declare-fun tp!761245 () Bool)

(declare-fun tp!761249 () Bool)

(assert (=> b!2386855 (= e!1521847 (and tp!761245 tp!761249))))

(declare-fun b!2386856 () Bool)

(declare-fun tp!761248 () Bool)

(assert (=> b!2386856 (= e!1521847 tp!761248)))

(assert (=> b!2386520 (= tp!761188 e!1521847)))

(declare-fun b!2386857 () Bool)

(declare-fun tp!761246 () Bool)

(declare-fun tp!761247 () Bool)

(assert (=> b!2386857 (= e!1521847 (and tp!761246 tp!761247))))

(declare-fun b!2386854 () Bool)

(assert (=> b!2386854 (= e!1521847 tp_is_empty!11405)))

(assert (= (and b!2386520 (is-ElementMatch!6996 (regOne!14505 r!13927))) b!2386854))

(assert (= (and b!2386520 (is-Concat!11632 (regOne!14505 r!13927))) b!2386855))

(assert (= (and b!2386520 (is-Star!6996 (regOne!14505 r!13927))) b!2386856))

(assert (= (and b!2386520 (is-Union!6996 (regOne!14505 r!13927))) b!2386857))

(declare-fun b!2386859 () Bool)

(declare-fun e!1521848 () Bool)

(declare-fun tp!761250 () Bool)

(declare-fun tp!761254 () Bool)

(assert (=> b!2386859 (= e!1521848 (and tp!761250 tp!761254))))

(declare-fun b!2386860 () Bool)

(declare-fun tp!761253 () Bool)

(assert (=> b!2386860 (= e!1521848 tp!761253)))

(assert (=> b!2386520 (= tp!761193 e!1521848)))

(declare-fun b!2386861 () Bool)

(declare-fun tp!761251 () Bool)

(declare-fun tp!761252 () Bool)

(assert (=> b!2386861 (= e!1521848 (and tp!761251 tp!761252))))

(declare-fun b!2386858 () Bool)

(assert (=> b!2386858 (= e!1521848 tp_is_empty!11405)))

(assert (= (and b!2386520 (is-ElementMatch!6996 (regTwo!14505 r!13927))) b!2386858))

(assert (= (and b!2386520 (is-Concat!11632 (regTwo!14505 r!13927))) b!2386859))

(assert (= (and b!2386520 (is-Star!6996 (regTwo!14505 r!13927))) b!2386860))

(assert (= (and b!2386520 (is-Union!6996 (regTwo!14505 r!13927))) b!2386861))

(declare-fun b!2386866 () Bool)

(declare-fun e!1521851 () Bool)

(declare-fun tp!761257 () Bool)

(assert (=> b!2386866 (= e!1521851 (and tp_is_empty!11405 tp!761257))))

(assert (=> b!2386515 (= tp!761191 e!1521851)))

(assert (= (and b!2386515 (is-Cons!28133 (t!208208 s!9460))) b!2386866))

(declare-fun b!2386868 () Bool)

(declare-fun e!1521852 () Bool)

(declare-fun tp!761258 () Bool)

(declare-fun tp!761262 () Bool)

(assert (=> b!2386868 (= e!1521852 (and tp!761258 tp!761262))))

(declare-fun b!2386869 () Bool)

(declare-fun tp!761261 () Bool)

(assert (=> b!2386869 (= e!1521852 tp!761261)))

(assert (=> b!2386518 (= tp!761195 e!1521852)))

(declare-fun b!2386870 () Bool)

(declare-fun tp!761259 () Bool)

(declare-fun tp!761260 () Bool)

(assert (=> b!2386870 (= e!1521852 (and tp!761259 tp!761260))))

(declare-fun b!2386867 () Bool)

(assert (=> b!2386867 (= e!1521852 tp_is_empty!11405)))

(assert (= (and b!2386518 (is-ElementMatch!6996 (h!33533 l!9164))) b!2386867))

(assert (= (and b!2386518 (is-Concat!11632 (h!33533 l!9164))) b!2386868))

(assert (= (and b!2386518 (is-Star!6996 (h!33533 l!9164))) b!2386869))

(assert (= (and b!2386518 (is-Union!6996 (h!33533 l!9164))) b!2386870))

(declare-fun b!2386875 () Bool)

(declare-fun e!1521855 () Bool)

(declare-fun tp!761267 () Bool)

(declare-fun tp!761268 () Bool)

(assert (=> b!2386875 (= e!1521855 (and tp!761267 tp!761268))))

(assert (=> b!2386518 (= tp!761192 e!1521855)))

(assert (= (and b!2386518 (is-Cons!28132 (t!208207 l!9164))) b!2386875))

(declare-fun b_lambda!74137 () Bool)

(assert (= b_lambda!74133 (or start!234190 b_lambda!74137)))

(declare-fun bs!462263 () Bool)

(declare-fun d!697579 () Bool)

(assert (= bs!462263 (and d!697579 start!234190)))

(assert (=> bs!462263 (= (dynLambda!12113 lambda!89156 (h!33533 l!9164)) (validRegex!2721 (h!33533 l!9164)))))

(declare-fun m!2788491 () Bool)

(assert (=> bs!462263 m!2788491))

(assert (=> b!2386697 d!697579))

(declare-fun b_lambda!74139 () Bool)

(assert (= b_lambda!74131 (or start!234190 b_lambda!74139)))

(declare-fun bs!462264 () Bool)

(declare-fun d!697581 () Bool)

(assert (= bs!462264 (and d!697581 start!234190)))

(assert (=> bs!462264 (= (dynLambda!12113 lambda!89156 (h!33533 lt!869489)) (validRegex!2721 (h!33533 lt!869489)))))

(declare-fun m!2788493 () Bool)

(assert (=> bs!462264 m!2788493))

(assert (=> b!2386695 d!697581))

(push 1)

(assert (not b!2386649))

(assert (not b!2386761))

(assert (not b!2386852))

(assert (not b!2386646))

(assert (not b!2386816))

(assert (not b!2386824))

(assert (not b!2386686))

(assert (not b_lambda!74139))

(assert (not b!2386645))

(assert (not b!2386853))

(assert (not d!697535))

(assert (not b!2386845))

(assert (not b!2386855))

(assert (not b!2386875))

(assert (not bm!145121))

(assert (not b!2386688))

(assert (not b!2386762))

(assert (not b_lambda!74137))

(assert (not bs!462263))

(assert (not b!2386825))

(assert (not bm!145125))

(assert (not b!2386844))

(assert (not b!2386847))

(assert (not d!697549))

(assert (not b!2386642))

(assert (not d!697543))

(assert (not b!2386856))

(assert (not b!2386848))

(assert (not b!2386689))

(assert tp_is_empty!11405)

(assert (not d!697547))

(assert (not b!2386860))

(assert (not b!2386859))

(assert (not b!2386683))

(assert (not d!697545))

(assert (not b!2386821))

(assert (not d!697537))

(assert (not bm!145120))

(assert (not b!2386690))

(assert (not d!697541))

(assert (not b!2386849))

(assert (not b!2386869))

(assert (not b!2386861))

(assert (not b!2386644))

(assert (not b!2386843))

(assert (not b!2386857))

(assert (not b!2386868))

(assert (not b!2386684))

(assert (not b!2386681))

(assert (not b!2386698))

(assert (not b!2386648))

(assert (not d!697565))

(assert (not b!2386870))

(assert (not bs!462264))

(assert (not b!2386866))

(assert (not b!2386851))

(assert (not b!2386696))

(assert (not d!697559))

(assert (not b!2386822))

(assert (not b!2386815))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

