; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538528 () Bool)

(assert start!538528)

(declare-fun setIsEmpty!29428 () Bool)

(declare-fun setRes!29428 () Bool)

(assert (=> setIsEmpty!29428 setRes!29428))

(declare-fun b!5107244 () Bool)

(declare-fun e!3185369 () Bool)

(declare-fun tp!1424666 () Bool)

(assert (=> b!5107244 (= e!3185369 tp!1424666)))

(declare-fun res!2173896 () Bool)

(declare-fun e!3185366 () Bool)

(assert (=> start!538528 (=> (not res!2173896) (not e!3185366))))

(declare-datatypes ((C!28460 0))(
  ( (C!28461 (val!23882 Int)) )
))
(declare-datatypes ((List!59064 0))(
  ( (Nil!58940) (Cons!58940 (h!65388 C!28460) (t!372065 List!59064)) )
))
(declare-fun returnP!41 () List!59064)

(declare-fun input!5723 () List!59064)

(declare-fun isPrefix!5502 (List!59064 List!59064) Bool)

(assert (=> start!538528 (= res!2173896 (isPrefix!5502 returnP!41 input!5723))))

(assert (=> start!538528 e!3185366))

(declare-fun e!3185365 () Bool)

(assert (=> start!538528 e!3185365))

(declare-fun e!3185368 () Bool)

(assert (=> start!538528 e!3185368))

(declare-fun e!3185363 () Bool)

(assert (=> start!538528 e!3185363))

(declare-fun condSetEmpty!29428 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14097 0))(
  ( (ElementMatch!14097 (c!877331 C!28460)) (Concat!22942 (regOne!28706 Regex!14097) (regTwo!28706 Regex!14097)) (EmptyExpr!14097) (Star!14097 (reg!14426 Regex!14097)) (EmptyLang!14097) (Union!14097 (regOne!28707 Regex!14097) (regTwo!28707 Regex!14097)) )
))
(declare-datatypes ((List!59065 0))(
  ( (Nil!58941) (Cons!58941 (h!65389 Regex!14097) (t!372066 List!59065)) )
))
(declare-datatypes ((Context!6962 0))(
  ( (Context!6963 (exprs!3981 List!59065)) )
))
(declare-fun baseZ!39 () (InoxSet Context!6962))

(assert (=> start!538528 (= condSetEmpty!29428 (= baseZ!39 ((as const (Array Context!6962 Bool)) false)))))

(assert (=> start!538528 setRes!29428))

(declare-fun b!5107245 () Bool)

(declare-fun tp_is_empty!37467 () Bool)

(declare-fun tp!1424664 () Bool)

(assert (=> b!5107245 (= e!3185363 (and tp_is_empty!37467 tp!1424664))))

(declare-fun b!5107246 () Bool)

(declare-fun res!2173895 () Bool)

(declare-fun e!3185367 () Bool)

(assert (=> b!5107246 (=> (not res!2173895) (not e!3185367))))

(declare-fun lt!2102554 () Int)

(declare-fun lt!2102552 () Int)

(assert (=> b!5107246 (= res!2173895 (not (= lt!2102554 lt!2102552)))))

(declare-fun b!5107247 () Bool)

(declare-fun tp!1424663 () Bool)

(assert (=> b!5107247 (= e!3185368 (and tp_is_empty!37467 tp!1424663))))

(declare-fun b!5107248 () Bool)

(declare-fun e!3185364 () Bool)

(assert (=> b!5107248 (= e!3185366 e!3185364)))

(declare-fun res!2173898 () Bool)

(assert (=> b!5107248 (=> (not res!2173898) (not e!3185364))))

(assert (=> b!5107248 (= res!2173898 (>= lt!2102554 lt!2102552))))

(declare-fun size!39403 (List!59064) Int)

(assert (=> b!5107248 (= lt!2102552 (size!39403 returnP!41))))

(declare-fun bigger!41 () List!59064)

(assert (=> b!5107248 (= lt!2102554 (size!39403 bigger!41))))

(declare-fun setElem!29428 () Context!6962)

(declare-fun setNonEmpty!29428 () Bool)

(declare-fun tp!1424667 () Bool)

(declare-fun inv!78423 (Context!6962) Bool)

(assert (=> setNonEmpty!29428 (= setRes!29428 (and tp!1424667 (inv!78423 setElem!29428) e!3185369))))

(declare-fun setRest!29428 () (InoxSet Context!6962))

(assert (=> setNonEmpty!29428 (= baseZ!39 ((_ map or) (store ((as const (Array Context!6962 Bool)) false) setElem!29428 true) setRest!29428))))

(declare-fun b!5107249 () Bool)

(declare-fun tp!1424665 () Bool)

(assert (=> b!5107249 (= e!3185365 (and tp_is_empty!37467 tp!1424665))))

(declare-fun b!5107250 () Bool)

(declare-fun res!2173894 () Bool)

(assert (=> b!5107250 (=> (not res!2173894) (not e!3185366))))

(assert (=> b!5107250 (= res!2173894 (isPrefix!5502 bigger!41 input!5723))))

(declare-fun b!5107251 () Bool)

(declare-fun res!2173893 () Bool)

(assert (=> b!5107251 (=> (not res!2173893) (not e!3185367))))

(declare-fun matchZipper!765 ((InoxSet Context!6962) List!59064) Bool)

(assert (=> b!5107251 (= res!2173893 (matchZipper!765 baseZ!39 bigger!41))))

(declare-fun b!5107252 () Bool)

(assert (=> b!5107252 (= e!3185364 e!3185367)))

(declare-fun res!2173897 () Bool)

(assert (=> b!5107252 (=> (not res!2173897) (not e!3185367))))

(declare-fun lt!2102553 () Int)

(declare-fun lt!2102556 () Int)

(declare-datatypes ((tuple2!63580 0))(
  ( (tuple2!63581 (_1!35093 List!59064) (_2!35093 List!59064)) )
))
(declare-fun findLongestMatchInnerZipper!171 ((InoxSet Context!6962) List!59064 Int List!59064 List!59064 Int) tuple2!63580)

(assert (=> b!5107252 (= res!2173897 (= (_1!35093 (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 lt!2102553 input!5723 input!5723 lt!2102556)) returnP!41))))

(assert (=> b!5107252 (= lt!2102556 (size!39403 input!5723))))

(assert (=> b!5107252 (= lt!2102553 (size!39403 Nil!58940))))

(declare-fun b!5107253 () Bool)

(assert (=> b!5107253 (= e!3185367 (not false))))

(declare-fun getSuffix!3182 (List!59064 List!59064) List!59064)

(assert (=> b!5107253 (>= (size!39403 (_1!35093 (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 lt!2102553 (getSuffix!3182 input!5723 Nil!58940) input!5723 lt!2102556))) lt!2102554)))

(declare-datatypes ((Unit!150003 0))(
  ( (Unit!150004) )
))
(declare-fun lt!2102555 () Unit!150003)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!3 ((InoxSet Context!6962) (InoxSet Context!6962) List!59064 List!59064 List!59064) Unit!150003)

(assert (=> b!5107253 (= lt!2102555 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!3 baseZ!39 baseZ!39 input!5723 Nil!58940 bigger!41))))

(assert (= (and start!538528 res!2173896) b!5107250))

(assert (= (and b!5107250 res!2173894) b!5107248))

(assert (= (and b!5107248 res!2173898) b!5107252))

(assert (= (and b!5107252 res!2173897) b!5107246))

(assert (= (and b!5107246 res!2173895) b!5107251))

(assert (= (and b!5107251 res!2173893) b!5107253))

(get-info :version)

(assert (= (and start!538528 ((_ is Cons!58940) returnP!41)) b!5107249))

(assert (= (and start!538528 ((_ is Cons!58940) input!5723)) b!5107247))

(assert (= (and start!538528 ((_ is Cons!58940) bigger!41)) b!5107245))

(assert (= (and start!538528 condSetEmpty!29428) setIsEmpty!29428))

(assert (= (and start!538528 (not condSetEmpty!29428)) setNonEmpty!29428))

(assert (= setNonEmpty!29428 b!5107244))

(declare-fun m!6164440 () Bool)

(assert (=> b!5107251 m!6164440))

(declare-fun m!6164442 () Bool)

(assert (=> start!538528 m!6164442))

(declare-fun m!6164444 () Bool)

(assert (=> setNonEmpty!29428 m!6164444))

(declare-fun m!6164446 () Bool)

(assert (=> b!5107248 m!6164446))

(declare-fun m!6164448 () Bool)

(assert (=> b!5107248 m!6164448))

(declare-fun m!6164450 () Bool)

(assert (=> b!5107252 m!6164450))

(declare-fun m!6164452 () Bool)

(assert (=> b!5107252 m!6164452))

(declare-fun m!6164454 () Bool)

(assert (=> b!5107252 m!6164454))

(declare-fun m!6164456 () Bool)

(assert (=> b!5107250 m!6164456))

(declare-fun m!6164458 () Bool)

(assert (=> b!5107253 m!6164458))

(assert (=> b!5107253 m!6164458))

(declare-fun m!6164460 () Bool)

(assert (=> b!5107253 m!6164460))

(declare-fun m!6164462 () Bool)

(assert (=> b!5107253 m!6164462))

(declare-fun m!6164464 () Bool)

(assert (=> b!5107253 m!6164464))

(check-sat (not b!5107252) (not b!5107247) (not b!5107250) (not b!5107253) (not setNonEmpty!29428) (not b!5107248) (not b!5107244) (not start!538528) tp_is_empty!37467 (not b!5107251) (not b!5107249) (not b!5107245))
(check-sat)
(get-model)

(declare-fun b!5107264 () Bool)

(declare-fun e!3185376 () Bool)

(declare-fun tail!10008 (List!59064) List!59064)

(assert (=> b!5107264 (= e!3185376 (isPrefix!5502 (tail!10008 bigger!41) (tail!10008 input!5723)))))

(declare-fun b!5107262 () Bool)

(declare-fun e!3185377 () Bool)

(assert (=> b!5107262 (= e!3185377 e!3185376)))

(declare-fun res!2173909 () Bool)

(assert (=> b!5107262 (=> (not res!2173909) (not e!3185376))))

(assert (=> b!5107262 (= res!2173909 (not ((_ is Nil!58940) input!5723)))))

(declare-fun d!1650890 () Bool)

(declare-fun e!3185378 () Bool)

(assert (=> d!1650890 e!3185378))

(declare-fun res!2173907 () Bool)

(assert (=> d!1650890 (=> res!2173907 e!3185378)))

(declare-fun lt!2102559 () Bool)

(assert (=> d!1650890 (= res!2173907 (not lt!2102559))))

(assert (=> d!1650890 (= lt!2102559 e!3185377)))

(declare-fun res!2173910 () Bool)

(assert (=> d!1650890 (=> res!2173910 e!3185377)))

(assert (=> d!1650890 (= res!2173910 ((_ is Nil!58940) bigger!41))))

(assert (=> d!1650890 (= (isPrefix!5502 bigger!41 input!5723) lt!2102559)))

(declare-fun b!5107265 () Bool)

(assert (=> b!5107265 (= e!3185378 (>= (size!39403 input!5723) (size!39403 bigger!41)))))

(declare-fun b!5107263 () Bool)

(declare-fun res!2173908 () Bool)

(assert (=> b!5107263 (=> (not res!2173908) (not e!3185376))))

(declare-fun head!10853 (List!59064) C!28460)

(assert (=> b!5107263 (= res!2173908 (= (head!10853 bigger!41) (head!10853 input!5723)))))

(assert (= (and d!1650890 (not res!2173910)) b!5107262))

(assert (= (and b!5107262 res!2173909) b!5107263))

(assert (= (and b!5107263 res!2173908) b!5107264))

(assert (= (and d!1650890 (not res!2173907)) b!5107265))

(declare-fun m!6164466 () Bool)

(assert (=> b!5107264 m!6164466))

(declare-fun m!6164468 () Bool)

(assert (=> b!5107264 m!6164468))

(assert (=> b!5107264 m!6164466))

(assert (=> b!5107264 m!6164468))

(declare-fun m!6164470 () Bool)

(assert (=> b!5107264 m!6164470))

(assert (=> b!5107265 m!6164452))

(assert (=> b!5107265 m!6164448))

(declare-fun m!6164472 () Bool)

(assert (=> b!5107263 m!6164472))

(declare-fun m!6164474 () Bool)

(assert (=> b!5107263 m!6164474))

(assert (=> b!5107250 d!1650890))

(declare-fun d!1650892 () Bool)

(declare-fun c!877334 () Bool)

(declare-fun isEmpty!31834 (List!59064) Bool)

(assert (=> d!1650892 (= c!877334 (isEmpty!31834 bigger!41))))

(declare-fun e!3185381 () Bool)

(assert (=> d!1650892 (= (matchZipper!765 baseZ!39 bigger!41) e!3185381)))

(declare-fun b!5107270 () Bool)

(declare-fun nullableZipper!976 ((InoxSet Context!6962)) Bool)

(assert (=> b!5107270 (= e!3185381 (nullableZipper!976 baseZ!39))))

(declare-fun b!5107271 () Bool)

(declare-fun derivationStepZipper!764 ((InoxSet Context!6962) C!28460) (InoxSet Context!6962))

(assert (=> b!5107271 (= e!3185381 (matchZipper!765 (derivationStepZipper!764 baseZ!39 (head!10853 bigger!41)) (tail!10008 bigger!41)))))

(assert (= (and d!1650892 c!877334) b!5107270))

(assert (= (and d!1650892 (not c!877334)) b!5107271))

(declare-fun m!6164476 () Bool)

(assert (=> d!1650892 m!6164476))

(declare-fun m!6164478 () Bool)

(assert (=> b!5107270 m!6164478))

(assert (=> b!5107271 m!6164472))

(assert (=> b!5107271 m!6164472))

(declare-fun m!6164480 () Bool)

(assert (=> b!5107271 m!6164480))

(assert (=> b!5107271 m!6164466))

(assert (=> b!5107271 m!6164480))

(assert (=> b!5107271 m!6164466))

(declare-fun m!6164482 () Bool)

(assert (=> b!5107271 m!6164482))

(assert (=> b!5107251 d!1650892))

(declare-fun d!1650894 () Bool)

(declare-fun lt!2102562 () Int)

(assert (=> d!1650894 (>= lt!2102562 0)))

(declare-fun e!3185384 () Int)

(assert (=> d!1650894 (= lt!2102562 e!3185384)))

(declare-fun c!877337 () Bool)

(assert (=> d!1650894 (= c!877337 ((_ is Nil!58940) (_1!35093 (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 lt!2102553 (getSuffix!3182 input!5723 Nil!58940) input!5723 lt!2102556))))))

(assert (=> d!1650894 (= (size!39403 (_1!35093 (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 lt!2102553 (getSuffix!3182 input!5723 Nil!58940) input!5723 lt!2102556))) lt!2102562)))

(declare-fun b!5107276 () Bool)

(assert (=> b!5107276 (= e!3185384 0)))

(declare-fun b!5107277 () Bool)

(assert (=> b!5107277 (= e!3185384 (+ 1 (size!39403 (t!372065 (_1!35093 (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 lt!2102553 (getSuffix!3182 input!5723 Nil!58940) input!5723 lt!2102556))))))))

(assert (= (and d!1650894 c!877337) b!5107276))

(assert (= (and d!1650894 (not c!877337)) b!5107277))

(declare-fun m!6164484 () Bool)

(assert (=> b!5107277 m!6164484))

(assert (=> b!5107253 d!1650894))

(declare-fun b!5107306 () Bool)

(declare-fun e!3185406 () Unit!150003)

(declare-fun Unit!150010 () Unit!150003)

(assert (=> b!5107306 (= e!3185406 Unit!150010)))

(declare-fun lt!2102616 () Unit!150003)

(declare-fun call!356067 () Unit!150003)

(assert (=> b!5107306 (= lt!2102616 call!356067)))

(declare-fun call!356066 () Bool)

(assert (=> b!5107306 call!356066))

(declare-fun lt!2102628 () Unit!150003)

(assert (=> b!5107306 (= lt!2102628 lt!2102616)))

(declare-fun lt!2102635 () Unit!150003)

(declare-fun call!356073 () Unit!150003)

(assert (=> b!5107306 (= lt!2102635 call!356073)))

(assert (=> b!5107306 (= input!5723 Nil!58940)))

(declare-fun lt!2102619 () Unit!150003)

(assert (=> b!5107306 (= lt!2102619 lt!2102635)))

(assert (=> b!5107306 false))

(declare-fun b!5107307 () Bool)

(declare-fun e!3185402 () tuple2!63580)

(declare-fun lt!2102632 () tuple2!63580)

(assert (=> b!5107307 (= e!3185402 lt!2102632)))

(declare-fun b!5107309 () Bool)

(declare-fun e!3185407 () tuple2!63580)

(declare-fun e!3185404 () tuple2!63580)

(assert (=> b!5107309 (= e!3185407 e!3185404)))

(declare-fun c!877354 () Bool)

(assert (=> b!5107309 (= c!877354 (= lt!2102553 lt!2102556))))

(declare-fun b!5107310 () Bool)

(declare-fun e!3185401 () tuple2!63580)

(assert (=> b!5107310 (= e!3185401 (tuple2!63581 Nil!58940 input!5723))))

(declare-fun b!5107311 () Bool)

(assert (=> b!5107311 (= e!3185407 (tuple2!63581 Nil!58940 input!5723))))

(declare-fun b!5107312 () Bool)

(assert (=> b!5107312 (= e!3185401 (tuple2!63581 Nil!58940 Nil!58940))))

(declare-fun bm!356061 () Bool)

(declare-fun call!356072 () (InoxSet Context!6962))

(declare-fun call!356071 () C!28460)

(assert (=> bm!356061 (= call!356072 (derivationStepZipper!764 baseZ!39 call!356071))))

(declare-fun bm!356062 () Bool)

(declare-fun call!356070 () Bool)

(assert (=> bm!356062 (= call!356070 (nullableZipper!976 baseZ!39))))

(declare-fun b!5107313 () Bool)

(declare-fun e!3185405 () tuple2!63580)

(assert (=> b!5107313 (= e!3185405 e!3185402)))

(declare-fun call!356068 () tuple2!63580)

(assert (=> b!5107313 (= lt!2102632 call!356068)))

(declare-fun c!877355 () Bool)

(assert (=> b!5107313 (= c!877355 (isEmpty!31834 (_1!35093 lt!2102632)))))

(declare-fun b!5107314 () Bool)

(declare-fun c!877353 () Bool)

(assert (=> b!5107314 (= c!877353 call!356070)))

(declare-fun lt!2102639 () Unit!150003)

(declare-fun lt!2102636 () Unit!150003)

(assert (=> b!5107314 (= lt!2102639 lt!2102636)))

(assert (=> b!5107314 (= input!5723 Nil!58940)))

(assert (=> b!5107314 (= lt!2102636 call!356073)))

(declare-fun lt!2102621 () Unit!150003)

(declare-fun lt!2102638 () Unit!150003)

(assert (=> b!5107314 (= lt!2102621 lt!2102638)))

(assert (=> b!5107314 call!356066))

(assert (=> b!5107314 (= lt!2102638 call!356067)))

(assert (=> b!5107314 (= e!3185404 e!3185401)))

(declare-fun d!1650896 () Bool)

(declare-fun e!3185408 () Bool)

(assert (=> d!1650896 e!3185408))

(declare-fun res!2173916 () Bool)

(assert (=> d!1650896 (=> (not res!2173916) (not e!3185408))))

(declare-fun lt!2102617 () tuple2!63580)

(declare-fun ++!12942 (List!59064 List!59064) List!59064)

(assert (=> d!1650896 (= res!2173916 (= (++!12942 (_1!35093 lt!2102617) (_2!35093 lt!2102617)) input!5723))))

(assert (=> d!1650896 (= lt!2102617 e!3185407)))

(declare-fun c!877350 () Bool)

(declare-fun lostCauseZipper!991 ((InoxSet Context!6962)) Bool)

(assert (=> d!1650896 (= c!877350 (lostCauseZipper!991 baseZ!39))))

(declare-fun lt!2102634 () Unit!150003)

(declare-fun Unit!150012 () Unit!150003)

(assert (=> d!1650896 (= lt!2102634 Unit!150012)))

(assert (=> d!1650896 (= (getSuffix!3182 input!5723 Nil!58940) (getSuffix!3182 input!5723 Nil!58940))))

(declare-fun lt!2102623 () Unit!150003)

(declare-fun lt!2102633 () Unit!150003)

(assert (=> d!1650896 (= lt!2102623 lt!2102633)))

(declare-fun lt!2102631 () List!59064)

(assert (=> d!1650896 (= (getSuffix!3182 input!5723 Nil!58940) lt!2102631)))

(declare-fun lemmaSamePrefixThenSameSuffix!2598 (List!59064 List!59064 List!59064 List!59064 List!59064) Unit!150003)

(assert (=> d!1650896 (= lt!2102633 (lemmaSamePrefixThenSameSuffix!2598 Nil!58940 (getSuffix!3182 input!5723 Nil!58940) Nil!58940 lt!2102631 input!5723))))

(assert (=> d!1650896 (= lt!2102631 (getSuffix!3182 input!5723 Nil!58940))))

(declare-fun lt!2102622 () Unit!150003)

(declare-fun lt!2102630 () Unit!150003)

(assert (=> d!1650896 (= lt!2102622 lt!2102630)))

(assert (=> d!1650896 (isPrefix!5502 Nil!58940 (++!12942 Nil!58940 (getSuffix!3182 input!5723 Nil!58940)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3548 (List!59064 List!59064) Unit!150003)

(assert (=> d!1650896 (= lt!2102630 (lemmaConcatTwoListThenFirstIsPrefix!3548 Nil!58940 (getSuffix!3182 input!5723 Nil!58940)))))

(assert (=> d!1650896 (= (++!12942 Nil!58940 (getSuffix!3182 input!5723 Nil!58940)) input!5723)))

(assert (=> d!1650896 (= (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 lt!2102553 (getSuffix!3182 input!5723 Nil!58940) input!5723 lt!2102556) lt!2102617)))

(declare-fun b!5107308 () Bool)

(declare-fun c!877352 () Bool)

(assert (=> b!5107308 (= c!877352 call!356070)))

(declare-fun lt!2102640 () Unit!150003)

(declare-fun lt!2102620 () Unit!150003)

(assert (=> b!5107308 (= lt!2102640 lt!2102620)))

(declare-fun lt!2102624 () C!28460)

(declare-fun lt!2102618 () List!59064)

(assert (=> b!5107308 (= (++!12942 (++!12942 Nil!58940 (Cons!58940 lt!2102624 Nil!58940)) lt!2102618) input!5723)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1535 (List!59064 C!28460 List!59064 List!59064) Unit!150003)

(assert (=> b!5107308 (= lt!2102620 (lemmaMoveElementToOtherListKeepsConcatEq!1535 Nil!58940 lt!2102624 lt!2102618 input!5723))))

(assert (=> b!5107308 (= lt!2102618 (tail!10008 (getSuffix!3182 input!5723 Nil!58940)))))

(assert (=> b!5107308 (= lt!2102624 (head!10853 (getSuffix!3182 input!5723 Nil!58940)))))

(declare-fun lt!2102625 () Unit!150003)

(declare-fun lt!2102637 () Unit!150003)

(assert (=> b!5107308 (= lt!2102625 lt!2102637)))

(assert (=> b!5107308 (isPrefix!5502 (++!12942 Nil!58940 (Cons!58940 (head!10853 (getSuffix!3182 input!5723 Nil!58940)) Nil!58940)) input!5723)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!924 (List!59064 List!59064) Unit!150003)

(assert (=> b!5107308 (= lt!2102637 (lemmaAddHeadSuffixToPrefixStillPrefix!924 Nil!58940 input!5723))))

(declare-fun lt!2102615 () List!59064)

(assert (=> b!5107308 (= lt!2102615 (++!12942 Nil!58940 (Cons!58940 (head!10853 (getSuffix!3182 input!5723 Nil!58940)) Nil!58940)))))

(declare-fun lt!2102627 () Unit!150003)

(assert (=> b!5107308 (= lt!2102627 e!3185406)))

(declare-fun c!877351 () Bool)

(assert (=> b!5107308 (= c!877351 (= (size!39403 Nil!58940) (size!39403 input!5723)))))

(declare-fun lt!2102626 () Unit!150003)

(declare-fun lt!2102629 () Unit!150003)

(assert (=> b!5107308 (= lt!2102626 lt!2102629)))

(assert (=> b!5107308 (<= (size!39403 Nil!58940) (size!39403 input!5723))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!850 (List!59064 List!59064) Unit!150003)

(assert (=> b!5107308 (= lt!2102629 (lemmaIsPrefixThenSmallerEqSize!850 Nil!58940 input!5723))))

(assert (=> b!5107308 (= e!3185404 e!3185405)))

(declare-fun bm!356063 () Bool)

(assert (=> bm!356063 (= call!356066 (isPrefix!5502 input!5723 input!5723))))

(declare-fun bm!356064 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1326 (List!59064 List!59064 List!59064) Unit!150003)

(assert (=> bm!356064 (= call!356073 (lemmaIsPrefixSameLengthThenSameList!1326 input!5723 Nil!58940 input!5723))))

(declare-fun b!5107315 () Bool)

(assert (=> b!5107315 (= e!3185402 (tuple2!63581 Nil!58940 (getSuffix!3182 input!5723 Nil!58940)))))

(declare-fun b!5107316 () Bool)

(assert (=> b!5107316 (= e!3185405 call!356068)))

(declare-fun bm!356065 () Bool)

(declare-fun lemmaIsPrefixRefl!3696 (List!59064 List!59064) Unit!150003)

(assert (=> bm!356065 (= call!356067 (lemmaIsPrefixRefl!3696 input!5723 input!5723))))

(declare-fun bm!356066 () Bool)

(declare-fun call!356069 () List!59064)

(assert (=> bm!356066 (= call!356069 (tail!10008 (getSuffix!3182 input!5723 Nil!58940)))))

(declare-fun b!5107317 () Bool)

(declare-fun Unit!150013 () Unit!150003)

(assert (=> b!5107317 (= e!3185406 Unit!150013)))

(declare-fun b!5107318 () Bool)

(declare-fun e!3185403 () Bool)

(assert (=> b!5107318 (= e!3185408 e!3185403)))

(declare-fun res!2173915 () Bool)

(assert (=> b!5107318 (=> res!2173915 e!3185403)))

(assert (=> b!5107318 (= res!2173915 (isEmpty!31834 (_1!35093 lt!2102617)))))

(declare-fun bm!356067 () Bool)

(assert (=> bm!356067 (= call!356071 (head!10853 (getSuffix!3182 input!5723 Nil!58940)))))

(declare-fun b!5107319 () Bool)

(assert (=> b!5107319 (= e!3185403 (>= (size!39403 (_1!35093 lt!2102617)) (size!39403 Nil!58940)))))

(declare-fun bm!356068 () Bool)

(assert (=> bm!356068 (= call!356068 (findLongestMatchInnerZipper!171 call!356072 lt!2102615 (+ lt!2102553 1) call!356069 input!5723 lt!2102556))))

(assert (= (and d!1650896 c!877350) b!5107311))

(assert (= (and d!1650896 (not c!877350)) b!5107309))

(assert (= (and b!5107309 c!877354) b!5107314))

(assert (= (and b!5107309 (not c!877354)) b!5107308))

(assert (= (and b!5107314 c!877353) b!5107312))

(assert (= (and b!5107314 (not c!877353)) b!5107310))

(assert (= (and b!5107308 c!877351) b!5107306))

(assert (= (and b!5107308 (not c!877351)) b!5107317))

(assert (= (and b!5107308 c!877352) b!5107313))

(assert (= (and b!5107308 (not c!877352)) b!5107316))

(assert (= (and b!5107313 c!877355) b!5107315))

(assert (= (and b!5107313 (not c!877355)) b!5107307))

(assert (= (or b!5107313 b!5107316) bm!356067))

(assert (= (or b!5107313 b!5107316) bm!356066))

(assert (= (or b!5107313 b!5107316) bm!356061))

(assert (= (or b!5107313 b!5107316) bm!356068))

(assert (= (or b!5107314 b!5107308) bm!356062))

(assert (= (or b!5107314 b!5107306) bm!356065))

(assert (= (or b!5107314 b!5107306) bm!356063))

(assert (= (or b!5107314 b!5107306) bm!356064))

(assert (= (and d!1650896 res!2173916) b!5107318))

(assert (= (and b!5107318 (not res!2173915)) b!5107319))

(assert (=> d!1650896 m!6164458))

(declare-fun m!6164486 () Bool)

(assert (=> d!1650896 m!6164486))

(assert (=> d!1650896 m!6164458))

(declare-fun m!6164488 () Bool)

(assert (=> d!1650896 m!6164488))

(declare-fun m!6164490 () Bool)

(assert (=> d!1650896 m!6164490))

(declare-fun m!6164492 () Bool)

(assert (=> d!1650896 m!6164492))

(assert (=> d!1650896 m!6164458))

(assert (=> d!1650896 m!6164488))

(declare-fun m!6164494 () Bool)

(assert (=> d!1650896 m!6164494))

(assert (=> d!1650896 m!6164458))

(declare-fun m!6164496 () Bool)

(assert (=> d!1650896 m!6164496))

(declare-fun m!6164498 () Bool)

(assert (=> bm!356068 m!6164498))

(assert (=> bm!356062 m!6164478))

(declare-fun m!6164500 () Bool)

(assert (=> b!5107318 m!6164500))

(declare-fun m!6164502 () Bool)

(assert (=> b!5107313 m!6164502))

(declare-fun m!6164504 () Bool)

(assert (=> bm!356065 m!6164504))

(assert (=> bm!356066 m!6164458))

(declare-fun m!6164506 () Bool)

(assert (=> bm!356066 m!6164506))

(declare-fun m!6164508 () Bool)

(assert (=> b!5107308 m!6164508))

(declare-fun m!6164510 () Bool)

(assert (=> b!5107308 m!6164510))

(declare-fun m!6164512 () Bool)

(assert (=> b!5107308 m!6164512))

(declare-fun m!6164514 () Bool)

(assert (=> b!5107308 m!6164514))

(assert (=> b!5107308 m!6164452))

(declare-fun m!6164516 () Bool)

(assert (=> b!5107308 m!6164516))

(declare-fun m!6164518 () Bool)

(assert (=> b!5107308 m!6164518))

(assert (=> b!5107308 m!6164458))

(declare-fun m!6164520 () Bool)

(assert (=> b!5107308 m!6164520))

(assert (=> b!5107308 m!6164454))

(assert (=> b!5107308 m!6164458))

(assert (=> b!5107308 m!6164520))

(declare-fun m!6164522 () Bool)

(assert (=> b!5107308 m!6164522))

(assert (=> b!5107308 m!6164458))

(assert (=> b!5107308 m!6164458))

(assert (=> b!5107308 m!6164506))

(assert (=> b!5107308 m!6164512))

(assert (=> b!5107308 m!6164508))

(assert (=> b!5107308 m!6164508))

(declare-fun m!6164524 () Bool)

(assert (=> bm!356063 m!6164524))

(declare-fun m!6164526 () Bool)

(assert (=> b!5107319 m!6164526))

(assert (=> b!5107319 m!6164454))

(declare-fun m!6164528 () Bool)

(assert (=> bm!356064 m!6164528))

(declare-fun m!6164530 () Bool)

(assert (=> bm!356061 m!6164530))

(assert (=> bm!356067 m!6164458))

(assert (=> bm!356067 m!6164520))

(assert (=> b!5107253 d!1650896))

(declare-fun d!1650898 () Bool)

(declare-fun lt!2102643 () List!59064)

(assert (=> d!1650898 (= (++!12942 Nil!58940 lt!2102643) input!5723)))

(declare-fun e!3185411 () List!59064)

(assert (=> d!1650898 (= lt!2102643 e!3185411)))

(declare-fun c!877358 () Bool)

(assert (=> d!1650898 (= c!877358 ((_ is Cons!58940) Nil!58940))))

(assert (=> d!1650898 (>= (size!39403 input!5723) (size!39403 Nil!58940))))

(assert (=> d!1650898 (= (getSuffix!3182 input!5723 Nil!58940) lt!2102643)))

(declare-fun b!5107324 () Bool)

(assert (=> b!5107324 (= e!3185411 (getSuffix!3182 (tail!10008 input!5723) (t!372065 Nil!58940)))))

(declare-fun b!5107325 () Bool)

(assert (=> b!5107325 (= e!3185411 input!5723)))

(assert (= (and d!1650898 c!877358) b!5107324))

(assert (= (and d!1650898 (not c!877358)) b!5107325))

(declare-fun m!6164532 () Bool)

(assert (=> d!1650898 m!6164532))

(assert (=> d!1650898 m!6164452))

(assert (=> d!1650898 m!6164454))

(assert (=> b!5107324 m!6164468))

(assert (=> b!5107324 m!6164468))

(declare-fun m!6164534 () Bool)

(assert (=> b!5107324 m!6164534))

(assert (=> b!5107253 d!1650898))

(declare-fun d!1650900 () Bool)

(assert (=> d!1650900 (>= (size!39403 (_1!35093 (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 (size!39403 Nil!58940) (getSuffix!3182 input!5723 Nil!58940) input!5723 (size!39403 input!5723)))) (size!39403 bigger!41))))

(declare-fun lt!2102646 () Unit!150003)

(declare-fun choose!37418 ((InoxSet Context!6962) (InoxSet Context!6962) List!59064 List!59064 List!59064) Unit!150003)

(assert (=> d!1650900 (= lt!2102646 (choose!37418 baseZ!39 baseZ!39 input!5723 Nil!58940 bigger!41))))

(assert (=> d!1650900 (isPrefix!5502 Nil!58940 input!5723)))

(assert (=> d!1650900 (= (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!3 baseZ!39 baseZ!39 input!5723 Nil!58940 bigger!41) lt!2102646)))

(declare-fun bs!1191666 () Bool)

(assert (= bs!1191666 d!1650900))

(declare-fun m!6164536 () Bool)

(assert (=> bs!1191666 m!6164536))

(declare-fun m!6164538 () Bool)

(assert (=> bs!1191666 m!6164538))

(assert (=> bs!1191666 m!6164448))

(assert (=> bs!1191666 m!6164458))

(assert (=> bs!1191666 m!6164452))

(assert (=> bs!1191666 m!6164454))

(declare-fun m!6164540 () Bool)

(assert (=> bs!1191666 m!6164540))

(assert (=> bs!1191666 m!6164454))

(assert (=> bs!1191666 m!6164458))

(assert (=> bs!1191666 m!6164452))

(declare-fun m!6164542 () Bool)

(assert (=> bs!1191666 m!6164542))

(assert (=> b!5107253 d!1650900))

(declare-fun d!1650902 () Bool)

(declare-fun lambda!250014 () Int)

(declare-fun forall!13505 (List!59065 Int) Bool)

(assert (=> d!1650902 (= (inv!78423 setElem!29428) (forall!13505 (exprs!3981 setElem!29428) lambda!250014))))

(declare-fun bs!1191669 () Bool)

(assert (= bs!1191669 d!1650902))

(declare-fun m!6164668 () Bool)

(assert (=> bs!1191669 m!6164668))

(assert (=> setNonEmpty!29428 d!1650902))

(declare-fun b!5107443 () Bool)

(declare-fun e!3185480 () Bool)

(assert (=> b!5107443 (= e!3185480 (isPrefix!5502 (tail!10008 returnP!41) (tail!10008 input!5723)))))

(declare-fun b!5107441 () Bool)

(declare-fun e!3185481 () Bool)

(assert (=> b!5107441 (= e!3185481 e!3185480)))

(declare-fun res!2173943 () Bool)

(assert (=> b!5107441 (=> (not res!2173943) (not e!3185480))))

(assert (=> b!5107441 (= res!2173943 (not ((_ is Nil!58940) input!5723)))))

(declare-fun d!1650928 () Bool)

(declare-fun e!3185482 () Bool)

(assert (=> d!1650928 e!3185482))

(declare-fun res!2173941 () Bool)

(assert (=> d!1650928 (=> res!2173941 e!3185482)))

(declare-fun lt!2102768 () Bool)

(assert (=> d!1650928 (= res!2173941 (not lt!2102768))))

(assert (=> d!1650928 (= lt!2102768 e!3185481)))

(declare-fun res!2173944 () Bool)

(assert (=> d!1650928 (=> res!2173944 e!3185481)))

(assert (=> d!1650928 (= res!2173944 ((_ is Nil!58940) returnP!41))))

(assert (=> d!1650928 (= (isPrefix!5502 returnP!41 input!5723) lt!2102768)))

(declare-fun b!5107444 () Bool)

(assert (=> b!5107444 (= e!3185482 (>= (size!39403 input!5723) (size!39403 returnP!41)))))

(declare-fun b!5107442 () Bool)

(declare-fun res!2173942 () Bool)

(assert (=> b!5107442 (=> (not res!2173942) (not e!3185480))))

(assert (=> b!5107442 (= res!2173942 (= (head!10853 returnP!41) (head!10853 input!5723)))))

(assert (= (and d!1650928 (not res!2173944)) b!5107441))

(assert (= (and b!5107441 res!2173943) b!5107442))

(assert (= (and b!5107442 res!2173942) b!5107443))

(assert (= (and d!1650928 (not res!2173941)) b!5107444))

(declare-fun m!6164670 () Bool)

(assert (=> b!5107443 m!6164670))

(assert (=> b!5107443 m!6164468))

(assert (=> b!5107443 m!6164670))

(assert (=> b!5107443 m!6164468))

(declare-fun m!6164672 () Bool)

(assert (=> b!5107443 m!6164672))

(assert (=> b!5107444 m!6164452))

(assert (=> b!5107444 m!6164446))

(declare-fun m!6164674 () Bool)

(assert (=> b!5107442 m!6164674))

(assert (=> b!5107442 m!6164474))

(assert (=> start!538528 d!1650928))

(declare-fun b!5107445 () Bool)

(declare-fun e!3185488 () Unit!150003)

(declare-fun Unit!150014 () Unit!150003)

(assert (=> b!5107445 (= e!3185488 Unit!150014)))

(declare-fun lt!2102770 () Unit!150003)

(declare-fun call!356107 () Unit!150003)

(assert (=> b!5107445 (= lt!2102770 call!356107)))

(declare-fun call!356106 () Bool)

(assert (=> b!5107445 call!356106))

(declare-fun lt!2102782 () Unit!150003)

(assert (=> b!5107445 (= lt!2102782 lt!2102770)))

(declare-fun lt!2102789 () Unit!150003)

(declare-fun call!356113 () Unit!150003)

(assert (=> b!5107445 (= lt!2102789 call!356113)))

(assert (=> b!5107445 (= input!5723 Nil!58940)))

(declare-fun lt!2102773 () Unit!150003)

(assert (=> b!5107445 (= lt!2102773 lt!2102789)))

(assert (=> b!5107445 false))

(declare-fun b!5107446 () Bool)

(declare-fun e!3185484 () tuple2!63580)

(declare-fun lt!2102786 () tuple2!63580)

(assert (=> b!5107446 (= e!3185484 lt!2102786)))

(declare-fun b!5107448 () Bool)

(declare-fun e!3185489 () tuple2!63580)

(declare-fun e!3185486 () tuple2!63580)

(assert (=> b!5107448 (= e!3185489 e!3185486)))

(declare-fun c!877400 () Bool)

(assert (=> b!5107448 (= c!877400 (= lt!2102553 lt!2102556))))

(declare-fun b!5107449 () Bool)

(declare-fun e!3185483 () tuple2!63580)

(assert (=> b!5107449 (= e!3185483 (tuple2!63581 Nil!58940 input!5723))))

(declare-fun b!5107450 () Bool)

(assert (=> b!5107450 (= e!3185489 (tuple2!63581 Nil!58940 input!5723))))

(declare-fun b!5107451 () Bool)

(assert (=> b!5107451 (= e!3185483 (tuple2!63581 Nil!58940 Nil!58940))))

(declare-fun bm!356101 () Bool)

(declare-fun call!356112 () (InoxSet Context!6962))

(declare-fun call!356111 () C!28460)

(assert (=> bm!356101 (= call!356112 (derivationStepZipper!764 baseZ!39 call!356111))))

(declare-fun bm!356102 () Bool)

(declare-fun call!356110 () Bool)

(assert (=> bm!356102 (= call!356110 (nullableZipper!976 baseZ!39))))

(declare-fun b!5107452 () Bool)

(declare-fun e!3185487 () tuple2!63580)

(assert (=> b!5107452 (= e!3185487 e!3185484)))

(declare-fun call!356108 () tuple2!63580)

(assert (=> b!5107452 (= lt!2102786 call!356108)))

(declare-fun c!877401 () Bool)

(assert (=> b!5107452 (= c!877401 (isEmpty!31834 (_1!35093 lt!2102786)))))

(declare-fun b!5107453 () Bool)

(declare-fun c!877399 () Bool)

(assert (=> b!5107453 (= c!877399 call!356110)))

(declare-fun lt!2102793 () Unit!150003)

(declare-fun lt!2102790 () Unit!150003)

(assert (=> b!5107453 (= lt!2102793 lt!2102790)))

(assert (=> b!5107453 (= input!5723 Nil!58940)))

(assert (=> b!5107453 (= lt!2102790 call!356113)))

(declare-fun lt!2102775 () Unit!150003)

(declare-fun lt!2102792 () Unit!150003)

(assert (=> b!5107453 (= lt!2102775 lt!2102792)))

(assert (=> b!5107453 call!356106))

(assert (=> b!5107453 (= lt!2102792 call!356107)))

(assert (=> b!5107453 (= e!3185486 e!3185483)))

(declare-fun d!1650930 () Bool)

(declare-fun e!3185490 () Bool)

(assert (=> d!1650930 e!3185490))

(declare-fun res!2173946 () Bool)

(assert (=> d!1650930 (=> (not res!2173946) (not e!3185490))))

(declare-fun lt!2102771 () tuple2!63580)

(assert (=> d!1650930 (= res!2173946 (= (++!12942 (_1!35093 lt!2102771) (_2!35093 lt!2102771)) input!5723))))

(assert (=> d!1650930 (= lt!2102771 e!3185489)))

(declare-fun c!877396 () Bool)

(assert (=> d!1650930 (= c!877396 (lostCauseZipper!991 baseZ!39))))

(declare-fun lt!2102788 () Unit!150003)

(declare-fun Unit!150015 () Unit!150003)

(assert (=> d!1650930 (= lt!2102788 Unit!150015)))

(assert (=> d!1650930 (= (getSuffix!3182 input!5723 Nil!58940) input!5723)))

(declare-fun lt!2102777 () Unit!150003)

(declare-fun lt!2102787 () Unit!150003)

(assert (=> d!1650930 (= lt!2102777 lt!2102787)))

(declare-fun lt!2102785 () List!59064)

(assert (=> d!1650930 (= input!5723 lt!2102785)))

(assert (=> d!1650930 (= lt!2102787 (lemmaSamePrefixThenSameSuffix!2598 Nil!58940 input!5723 Nil!58940 lt!2102785 input!5723))))

(assert (=> d!1650930 (= lt!2102785 (getSuffix!3182 input!5723 Nil!58940))))

(declare-fun lt!2102776 () Unit!150003)

(declare-fun lt!2102784 () Unit!150003)

(assert (=> d!1650930 (= lt!2102776 lt!2102784)))

(assert (=> d!1650930 (isPrefix!5502 Nil!58940 (++!12942 Nil!58940 input!5723))))

(assert (=> d!1650930 (= lt!2102784 (lemmaConcatTwoListThenFirstIsPrefix!3548 Nil!58940 input!5723))))

(assert (=> d!1650930 (= (++!12942 Nil!58940 input!5723) input!5723)))

(assert (=> d!1650930 (= (findLongestMatchInnerZipper!171 baseZ!39 Nil!58940 lt!2102553 input!5723 input!5723 lt!2102556) lt!2102771)))

(declare-fun b!5107447 () Bool)

(declare-fun c!877398 () Bool)

(assert (=> b!5107447 (= c!877398 call!356110)))

(declare-fun lt!2102794 () Unit!150003)

(declare-fun lt!2102774 () Unit!150003)

(assert (=> b!5107447 (= lt!2102794 lt!2102774)))

(declare-fun lt!2102778 () C!28460)

(declare-fun lt!2102772 () List!59064)

(assert (=> b!5107447 (= (++!12942 (++!12942 Nil!58940 (Cons!58940 lt!2102778 Nil!58940)) lt!2102772) input!5723)))

(assert (=> b!5107447 (= lt!2102774 (lemmaMoveElementToOtherListKeepsConcatEq!1535 Nil!58940 lt!2102778 lt!2102772 input!5723))))

(assert (=> b!5107447 (= lt!2102772 (tail!10008 input!5723))))

(assert (=> b!5107447 (= lt!2102778 (head!10853 input!5723))))

(declare-fun lt!2102779 () Unit!150003)

(declare-fun lt!2102791 () Unit!150003)

(assert (=> b!5107447 (= lt!2102779 lt!2102791)))

(assert (=> b!5107447 (isPrefix!5502 (++!12942 Nil!58940 (Cons!58940 (head!10853 (getSuffix!3182 input!5723 Nil!58940)) Nil!58940)) input!5723)))

(assert (=> b!5107447 (= lt!2102791 (lemmaAddHeadSuffixToPrefixStillPrefix!924 Nil!58940 input!5723))))

(declare-fun lt!2102769 () List!59064)

(assert (=> b!5107447 (= lt!2102769 (++!12942 Nil!58940 (Cons!58940 (head!10853 input!5723) Nil!58940)))))

(declare-fun lt!2102781 () Unit!150003)

(assert (=> b!5107447 (= lt!2102781 e!3185488)))

(declare-fun c!877397 () Bool)

(assert (=> b!5107447 (= c!877397 (= (size!39403 Nil!58940) (size!39403 input!5723)))))

(declare-fun lt!2102780 () Unit!150003)

(declare-fun lt!2102783 () Unit!150003)

(assert (=> b!5107447 (= lt!2102780 lt!2102783)))

(assert (=> b!5107447 (<= (size!39403 Nil!58940) (size!39403 input!5723))))

(assert (=> b!5107447 (= lt!2102783 (lemmaIsPrefixThenSmallerEqSize!850 Nil!58940 input!5723))))

(assert (=> b!5107447 (= e!3185486 e!3185487)))

(declare-fun bm!356103 () Bool)

(assert (=> bm!356103 (= call!356106 (isPrefix!5502 input!5723 input!5723))))

(declare-fun bm!356104 () Bool)

(assert (=> bm!356104 (= call!356113 (lemmaIsPrefixSameLengthThenSameList!1326 input!5723 Nil!58940 input!5723))))

(declare-fun b!5107454 () Bool)

(assert (=> b!5107454 (= e!3185484 (tuple2!63581 Nil!58940 input!5723))))

(declare-fun b!5107455 () Bool)

(assert (=> b!5107455 (= e!3185487 call!356108)))

(declare-fun bm!356105 () Bool)

(assert (=> bm!356105 (= call!356107 (lemmaIsPrefixRefl!3696 input!5723 input!5723))))

(declare-fun bm!356106 () Bool)

(declare-fun call!356109 () List!59064)

(assert (=> bm!356106 (= call!356109 (tail!10008 input!5723))))

(declare-fun b!5107456 () Bool)

(declare-fun Unit!150016 () Unit!150003)

(assert (=> b!5107456 (= e!3185488 Unit!150016)))

(declare-fun b!5107457 () Bool)

(declare-fun e!3185485 () Bool)

(assert (=> b!5107457 (= e!3185490 e!3185485)))

(declare-fun res!2173945 () Bool)

(assert (=> b!5107457 (=> res!2173945 e!3185485)))

(assert (=> b!5107457 (= res!2173945 (isEmpty!31834 (_1!35093 lt!2102771)))))

(declare-fun bm!356107 () Bool)

(assert (=> bm!356107 (= call!356111 (head!10853 input!5723))))

(declare-fun b!5107458 () Bool)

(assert (=> b!5107458 (= e!3185485 (>= (size!39403 (_1!35093 lt!2102771)) (size!39403 Nil!58940)))))

(declare-fun bm!356108 () Bool)

(assert (=> bm!356108 (= call!356108 (findLongestMatchInnerZipper!171 call!356112 lt!2102769 (+ lt!2102553 1) call!356109 input!5723 lt!2102556))))

(assert (= (and d!1650930 c!877396) b!5107450))

(assert (= (and d!1650930 (not c!877396)) b!5107448))

(assert (= (and b!5107448 c!877400) b!5107453))

(assert (= (and b!5107448 (not c!877400)) b!5107447))

(assert (= (and b!5107453 c!877399) b!5107451))

(assert (= (and b!5107453 (not c!877399)) b!5107449))

(assert (= (and b!5107447 c!877397) b!5107445))

(assert (= (and b!5107447 (not c!877397)) b!5107456))

(assert (= (and b!5107447 c!877398) b!5107452))

(assert (= (and b!5107447 (not c!877398)) b!5107455))

(assert (= (and b!5107452 c!877401) b!5107454))

(assert (= (and b!5107452 (not c!877401)) b!5107446))

(assert (= (or b!5107452 b!5107455) bm!356107))

(assert (= (or b!5107452 b!5107455) bm!356106))

(assert (= (or b!5107452 b!5107455) bm!356101))

(assert (= (or b!5107452 b!5107455) bm!356108))

(assert (= (or b!5107453 b!5107447) bm!356102))

(assert (= (or b!5107453 b!5107445) bm!356105))

(assert (= (or b!5107453 b!5107445) bm!356103))

(assert (= (or b!5107453 b!5107445) bm!356104))

(assert (= (and d!1650930 res!2173946) b!5107457))

(assert (= (and b!5107457 (not res!2173945)) b!5107458))

(declare-fun m!6164676 () Bool)

(assert (=> d!1650930 m!6164676))

(assert (=> d!1650930 m!6164458))

(declare-fun m!6164678 () Bool)

(assert (=> d!1650930 m!6164678))

(declare-fun m!6164680 () Bool)

(assert (=> d!1650930 m!6164680))

(declare-fun m!6164682 () Bool)

(assert (=> d!1650930 m!6164682))

(assert (=> d!1650930 m!6164678))

(assert (=> d!1650930 m!6164494))

(declare-fun m!6164684 () Bool)

(assert (=> d!1650930 m!6164684))

(declare-fun m!6164686 () Bool)

(assert (=> bm!356108 m!6164686))

(assert (=> bm!356102 m!6164478))

(declare-fun m!6164688 () Bool)

(assert (=> b!5107457 m!6164688))

(declare-fun m!6164690 () Bool)

(assert (=> b!5107452 m!6164690))

(assert (=> bm!356105 m!6164504))

(assert (=> bm!356106 m!6164468))

(assert (=> b!5107447 m!6164508))

(assert (=> b!5107447 m!6164510))

(declare-fun m!6164692 () Bool)

(assert (=> b!5107447 m!6164692))

(declare-fun m!6164694 () Bool)

(assert (=> b!5107447 m!6164694))

(assert (=> b!5107447 m!6164452))

(assert (=> b!5107447 m!6164516))

(assert (=> b!5107447 m!6164518))

(assert (=> b!5107447 m!6164458))

(assert (=> b!5107447 m!6164520))

(assert (=> b!5107447 m!6164454))

(assert (=> b!5107447 m!6164474))

(declare-fun m!6164696 () Bool)

(assert (=> b!5107447 m!6164696))

(assert (=> b!5107447 m!6164458))

(assert (=> b!5107447 m!6164468))

(assert (=> b!5107447 m!6164692))

(declare-fun m!6164698 () Bool)

(assert (=> b!5107447 m!6164698))

(assert (=> b!5107447 m!6164508))

(assert (=> bm!356103 m!6164524))

(declare-fun m!6164700 () Bool)

(assert (=> b!5107458 m!6164700))

(assert (=> b!5107458 m!6164454))

(assert (=> bm!356104 m!6164528))

(declare-fun m!6164702 () Bool)

(assert (=> bm!356101 m!6164702))

(assert (=> bm!356107 m!6164474))

(assert (=> b!5107252 d!1650930))

(declare-fun d!1650932 () Bool)

(declare-fun lt!2102795 () Int)

(assert (=> d!1650932 (>= lt!2102795 0)))

(declare-fun e!3185491 () Int)

(assert (=> d!1650932 (= lt!2102795 e!3185491)))

(declare-fun c!877402 () Bool)

(assert (=> d!1650932 (= c!877402 ((_ is Nil!58940) input!5723))))

(assert (=> d!1650932 (= (size!39403 input!5723) lt!2102795)))

(declare-fun b!5107459 () Bool)

(assert (=> b!5107459 (= e!3185491 0)))

(declare-fun b!5107460 () Bool)

(assert (=> b!5107460 (= e!3185491 (+ 1 (size!39403 (t!372065 input!5723))))))

(assert (= (and d!1650932 c!877402) b!5107459))

(assert (= (and d!1650932 (not c!877402)) b!5107460))

(declare-fun m!6164704 () Bool)

(assert (=> b!5107460 m!6164704))

(assert (=> b!5107252 d!1650932))

(declare-fun d!1650934 () Bool)

(declare-fun lt!2102796 () Int)

(assert (=> d!1650934 (>= lt!2102796 0)))

(declare-fun e!3185492 () Int)

(assert (=> d!1650934 (= lt!2102796 e!3185492)))

(declare-fun c!877403 () Bool)

(assert (=> d!1650934 (= c!877403 ((_ is Nil!58940) Nil!58940))))

(assert (=> d!1650934 (= (size!39403 Nil!58940) lt!2102796)))

(declare-fun b!5107461 () Bool)

(assert (=> b!5107461 (= e!3185492 0)))

(declare-fun b!5107462 () Bool)

(assert (=> b!5107462 (= e!3185492 (+ 1 (size!39403 (t!372065 Nil!58940))))))

(assert (= (and d!1650934 c!877403) b!5107461))

(assert (= (and d!1650934 (not c!877403)) b!5107462))

(declare-fun m!6164706 () Bool)

(assert (=> b!5107462 m!6164706))

(assert (=> b!5107252 d!1650934))

(declare-fun d!1650936 () Bool)

(declare-fun lt!2102797 () Int)

(assert (=> d!1650936 (>= lt!2102797 0)))

(declare-fun e!3185493 () Int)

(assert (=> d!1650936 (= lt!2102797 e!3185493)))

(declare-fun c!877404 () Bool)

(assert (=> d!1650936 (= c!877404 ((_ is Nil!58940) returnP!41))))

(assert (=> d!1650936 (= (size!39403 returnP!41) lt!2102797)))

(declare-fun b!5107463 () Bool)

(assert (=> b!5107463 (= e!3185493 0)))

(declare-fun b!5107464 () Bool)

(assert (=> b!5107464 (= e!3185493 (+ 1 (size!39403 (t!372065 returnP!41))))))

(assert (= (and d!1650936 c!877404) b!5107463))

(assert (= (and d!1650936 (not c!877404)) b!5107464))

(declare-fun m!6164708 () Bool)

(assert (=> b!5107464 m!6164708))

(assert (=> b!5107248 d!1650936))

(declare-fun d!1650938 () Bool)

(declare-fun lt!2102798 () Int)

(assert (=> d!1650938 (>= lt!2102798 0)))

(declare-fun e!3185494 () Int)

(assert (=> d!1650938 (= lt!2102798 e!3185494)))

(declare-fun c!877405 () Bool)

(assert (=> d!1650938 (= c!877405 ((_ is Nil!58940) bigger!41))))

(assert (=> d!1650938 (= (size!39403 bigger!41) lt!2102798)))

(declare-fun b!5107465 () Bool)

(assert (=> b!5107465 (= e!3185494 0)))

(declare-fun b!5107466 () Bool)

(assert (=> b!5107466 (= e!3185494 (+ 1 (size!39403 (t!372065 bigger!41))))))

(assert (= (and d!1650938 c!877405) b!5107465))

(assert (= (and d!1650938 (not c!877405)) b!5107466))

(declare-fun m!6164710 () Bool)

(assert (=> b!5107466 m!6164710))

(assert (=> b!5107248 d!1650938))

(declare-fun b!5107471 () Bool)

(declare-fun e!3185497 () Bool)

(declare-fun tp!1424687 () Bool)

(assert (=> b!5107471 (= e!3185497 (and tp_is_empty!37467 tp!1424687))))

(assert (=> b!5107249 (= tp!1424665 e!3185497)))

(assert (= (and b!5107249 ((_ is Cons!58940) (t!372065 returnP!41))) b!5107471))

(declare-fun b!5107472 () Bool)

(declare-fun e!3185498 () Bool)

(declare-fun tp!1424688 () Bool)

(assert (=> b!5107472 (= e!3185498 (and tp_is_empty!37467 tp!1424688))))

(assert (=> b!5107245 (= tp!1424664 e!3185498)))

(assert (= (and b!5107245 ((_ is Cons!58940) (t!372065 bigger!41))) b!5107472))

(declare-fun condSetEmpty!29434 () Bool)

(assert (=> setNonEmpty!29428 (= condSetEmpty!29434 (= setRest!29428 ((as const (Array Context!6962 Bool)) false)))))

(declare-fun setRes!29434 () Bool)

(assert (=> setNonEmpty!29428 (= tp!1424667 setRes!29434)))

(declare-fun setIsEmpty!29434 () Bool)

(assert (=> setIsEmpty!29434 setRes!29434))

(declare-fun setElem!29434 () Context!6962)

(declare-fun tp!1424694 () Bool)

(declare-fun setNonEmpty!29434 () Bool)

(declare-fun e!3185501 () Bool)

(assert (=> setNonEmpty!29434 (= setRes!29434 (and tp!1424694 (inv!78423 setElem!29434) e!3185501))))

(declare-fun setRest!29434 () (InoxSet Context!6962))

(assert (=> setNonEmpty!29434 (= setRest!29428 ((_ map or) (store ((as const (Array Context!6962 Bool)) false) setElem!29434 true) setRest!29434))))

(declare-fun b!5107477 () Bool)

(declare-fun tp!1424693 () Bool)

(assert (=> b!5107477 (= e!3185501 tp!1424693)))

(assert (= (and setNonEmpty!29428 condSetEmpty!29434) setIsEmpty!29434))

(assert (= (and setNonEmpty!29428 (not condSetEmpty!29434)) setNonEmpty!29434))

(assert (= setNonEmpty!29434 b!5107477))

(declare-fun m!6164712 () Bool)

(assert (=> setNonEmpty!29434 m!6164712))

(declare-fun b!5107482 () Bool)

(declare-fun e!3185504 () Bool)

(declare-fun tp!1424699 () Bool)

(declare-fun tp!1424700 () Bool)

(assert (=> b!5107482 (= e!3185504 (and tp!1424699 tp!1424700))))

(assert (=> b!5107244 (= tp!1424666 e!3185504)))

(assert (= (and b!5107244 ((_ is Cons!58941) (exprs!3981 setElem!29428))) b!5107482))

(declare-fun b!5107483 () Bool)

(declare-fun e!3185505 () Bool)

(declare-fun tp!1424701 () Bool)

(assert (=> b!5107483 (= e!3185505 (and tp_is_empty!37467 tp!1424701))))

(assert (=> b!5107247 (= tp!1424663 e!3185505)))

(assert (= (and b!5107247 ((_ is Cons!58940) (t!372065 input!5723))) b!5107483))

(check-sat (not b!5107477) (not bm!356101) (not bm!356068) (not b!5107457) (not bm!356061) (not b!5107464) (not b!5107460) (not bm!356108) (not b!5107313) (not d!1650930) (not d!1650896) (not bm!356063) (not b!5107447) (not b!5107442) (not d!1650902) (not b!5107319) (not bm!356067) (not bm!356062) (not bm!356105) (not b!5107462) (not b!5107458) (not b!5107270) (not b!5107443) (not bm!356064) (not b!5107472) (not b!5107264) (not b!5107318) (not bm!356066) (not d!1650892) (not b!5107452) (not b!5107324) (not d!1650900) (not bm!356103) (not bm!356107) (not b!5107444) (not b!5107265) (not setNonEmpty!29434) (not b!5107271) (not bm!356102) (not b!5107482) (not b!5107466) (not b!5107263) (not bm!356104) (not b!5107277) (not b!5107483) (not b!5107308) (not b!5107471) tp_is_empty!37467 (not bm!356065) (not d!1650898) (not bm!356106))
(check-sat)
