; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!516876 () Bool)

(assert start!516876)

(declare-fun b!4922453 () Bool)

(declare-fun e!3075976 () Bool)

(declare-fun lt!2024322 () Int)

(declare-fun lt!2024326 () Int)

(assert (=> b!4922453 (= e!3075976 (and (<= 0 lt!2024322) (<= lt!2024322 lt!2024326)))))

(declare-fun b!4922454 () Bool)

(declare-fun e!3075974 () Bool)

(declare-fun tp!1383235 () Bool)

(assert (=> b!4922454 (= e!3075974 tp!1383235)))

(declare-fun setIsEmpty!27520 () Bool)

(declare-fun setRes!27520 () Bool)

(assert (=> setIsEmpty!27520 setRes!27520))

(declare-fun res!2101438 () Bool)

(assert (=> start!516876 (=> res!2101438 e!3075976)))

(declare-datatypes ((C!26956 0))(
  ( (C!26957 (val!22812 Int)) )
))
(declare-datatypes ((List!56809 0))(
  ( (Nil!56685) (Cons!56685 (h!63133 C!26956) (t!367249 List!56809)) )
))
(declare-datatypes ((IArray!29805 0))(
  ( (IArray!29806 (innerList!14960 List!56809)) )
))
(declare-datatypes ((Conc!14872 0))(
  ( (Node!14872 (left!41330 Conc!14872) (right!41660 Conc!14872) (csize!29974 Int) (cheight!15083 Int)) (Leaf!24741 (xs!18192 IArray!29805) (csize!29975 Int)) (Empty!14872) )
))
(declare-datatypes ((BalanceConc!29174 0))(
  ( (BalanceConc!29175 (c!837809 Conc!14872)) )
))
(declare-fun input!5492 () BalanceConc!29174)

(declare-fun isBalanced!4085 (Conc!14872) Bool)

(assert (=> start!516876 (= res!2101438 (not (isBalanced!4085 (c!837809 input!5492))))))

(declare-fun lt!2024329 () List!56809)

(declare-datatypes ((tuple2!61168 0))(
  ( (tuple2!61169 (_1!33887 List!56809) (_2!33887 List!56809)) )
))
(declare-fun lt!2024327 () tuple2!61168)

(declare-fun lt!2024323 () List!56809)

(assert (=> start!516876 (and (= lt!2024329 (_1!33887 lt!2024327)) (= lt!2024323 (_2!33887 lt!2024327)))))

(declare-datatypes ((Unit!147131 0))(
  ( (Unit!147132) )
))
(declare-fun lt!2024325 () Unit!147131)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!657 (List!56809 List!56809 List!56809 List!56809) Unit!147131)

(assert (=> start!516876 (= lt!2024325 (lemmaConcatSameAndSameSizesThenSameLists!657 lt!2024329 lt!2024323 (_1!33887 lt!2024327) (_2!33887 lt!2024327)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13373 0))(
  ( (ElementMatch!13373 (c!837810 C!26956)) (Concat!21946 (regOne!27258 Regex!13373) (regTwo!27258 Regex!13373)) (EmptyExpr!13373) (Star!13373 (reg!13702 Regex!13373)) (EmptyLang!13373) (Union!13373 (regOne!27259 Regex!13373) (regTwo!27259 Regex!13373)) )
))
(declare-datatypes ((List!56810 0))(
  ( (Nil!56686) (Cons!56686 (h!63134 Regex!13373) (t!367250 List!56810)) )
))
(declare-datatypes ((Context!6030 0))(
  ( (Context!6031 (exprs!3515 List!56810)) )
))
(declare-fun z!3559 () (InoxSet Context!6030))

(declare-fun lt!2024324 () List!56809)

(declare-fun findLongestMatchInnerZipper!58 ((InoxSet Context!6030) List!56809 Int List!56809 List!56809 Int) tuple2!61168)

(assert (=> start!516876 (= lt!2024327 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 lt!2024324 lt!2024326))))

(declare-datatypes ((tuple2!61170 0))(
  ( (tuple2!61171 (_1!33888 BalanceConc!29174) (_2!33888 BalanceConc!29174)) )
))
(declare-fun lt!2024328 () tuple2!61170)

(declare-fun list!17947 (BalanceConc!29174) List!56809)

(assert (=> start!516876 (= lt!2024323 (list!17947 (_2!33888 lt!2024328)))))

(assert (=> start!516876 (= lt!2024329 (list!17947 (_1!33888 lt!2024328)))))

(declare-fun splitAt!269 (BalanceConc!29174 Int) tuple2!61170)

(assert (=> start!516876 (= lt!2024328 (splitAt!269 input!5492 lt!2024322))))

(declare-fun findLongestMatchInnerZipperFast!85 ((InoxSet Context!6030) List!56809 Int List!56809 BalanceConc!29174 Int) Int)

(assert (=> start!516876 (= lt!2024322 (findLongestMatchInnerZipperFast!85 z!3559 Nil!56685 0 lt!2024324 input!5492 lt!2024326))))

(declare-fun size!37474 (BalanceConc!29174) Int)

(assert (=> start!516876 (= lt!2024326 (size!37474 input!5492))))

(assert (=> start!516876 (= lt!2024324 (list!17947 input!5492))))

(assert (=> start!516876 (not e!3075976)))

(declare-fun e!3075975 () Bool)

(declare-fun inv!73462 (BalanceConc!29174) Bool)

(assert (=> start!516876 (and (inv!73462 input!5492) e!3075975)))

(declare-fun condSetEmpty!27520 () Bool)

(assert (=> start!516876 (= condSetEmpty!27520 (= z!3559 ((as const (Array Context!6030 Bool)) false)))))

(assert (=> start!516876 setRes!27520))

(declare-fun setNonEmpty!27520 () Bool)

(declare-fun tp!1383236 () Bool)

(declare-fun setElem!27520 () Context!6030)

(declare-fun inv!73463 (Context!6030) Bool)

(assert (=> setNonEmpty!27520 (= setRes!27520 (and tp!1383236 (inv!73463 setElem!27520) e!3075974))))

(declare-fun setRest!27520 () (InoxSet Context!6030))

(assert (=> setNonEmpty!27520 (= z!3559 ((_ map or) (store ((as const (Array Context!6030 Bool)) false) setElem!27520 true) setRest!27520))))

(declare-fun b!4922455 () Bool)

(declare-fun tp!1383237 () Bool)

(declare-fun inv!73464 (Conc!14872) Bool)

(assert (=> b!4922455 (= e!3075975 (and (inv!73464 (c!837809 input!5492)) tp!1383237))))

(assert (= (and start!516876 (not res!2101438)) b!4922453))

(assert (= start!516876 b!4922455))

(assert (= (and start!516876 condSetEmpty!27520) setIsEmpty!27520))

(assert (= (and start!516876 (not condSetEmpty!27520)) setNonEmpty!27520))

(assert (= setNonEmpty!27520 b!4922454))

(declare-fun m!5937544 () Bool)

(assert (=> start!516876 m!5937544))

(declare-fun m!5937546 () Bool)

(assert (=> start!516876 m!5937546))

(declare-fun m!5937548 () Bool)

(assert (=> start!516876 m!5937548))

(declare-fun m!5937550 () Bool)

(assert (=> start!516876 m!5937550))

(declare-fun m!5937552 () Bool)

(assert (=> start!516876 m!5937552))

(declare-fun m!5937554 () Bool)

(assert (=> start!516876 m!5937554))

(declare-fun m!5937556 () Bool)

(assert (=> start!516876 m!5937556))

(declare-fun m!5937558 () Bool)

(assert (=> start!516876 m!5937558))

(declare-fun m!5937560 () Bool)

(assert (=> start!516876 m!5937560))

(declare-fun m!5937562 () Bool)

(assert (=> start!516876 m!5937562))

(declare-fun m!5937564 () Bool)

(assert (=> setNonEmpty!27520 m!5937564))

(declare-fun m!5937566 () Bool)

(assert (=> b!4922455 m!5937566))

(check-sat (not start!516876) (not setNonEmpty!27520) (not b!4922455) (not b!4922454))
(check-sat)
(get-model)

(declare-fun bm!342895 () Bool)

(declare-fun call!342903 () Unit!147131)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1119 (List!56809 List!56809 List!56809) Unit!147131)

(assert (=> bm!342895 (= call!342903 (lemmaIsPrefixSameLengthThenSameList!1119 lt!2024324 Nil!56685 lt!2024324))))

(declare-fun b!4922493 () Bool)

(declare-fun c!837829 () Bool)

(declare-fun call!342901 () Bool)

(assert (=> b!4922493 (= c!837829 call!342901)))

(declare-fun lt!2024388 () Unit!147131)

(declare-fun lt!2024407 () Unit!147131)

(assert (=> b!4922493 (= lt!2024388 lt!2024407)))

(declare-fun lt!2024400 () C!26956)

(declare-fun lt!2024403 () List!56809)

(declare-fun ++!12322 (List!56809 List!56809) List!56809)

(assert (=> b!4922493 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)) lt!2024403) lt!2024324)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1391 (List!56809 C!26956 List!56809 List!56809) Unit!147131)

(assert (=> b!4922493 (= lt!2024407 (lemmaMoveElementToOtherListKeepsConcatEq!1391 Nil!56685 lt!2024400 lt!2024403 lt!2024324))))

(declare-fun tail!9667 (List!56809) List!56809)

(assert (=> b!4922493 (= lt!2024403 (tail!9667 lt!2024324))))

(declare-fun head!10520 (List!56809) C!26956)

(assert (=> b!4922493 (= lt!2024400 (head!10520 lt!2024324))))

(declare-fun lt!2024392 () Unit!147131)

(declare-fun lt!2024394 () Unit!147131)

(assert (=> b!4922493 (= lt!2024392 lt!2024394)))

(declare-fun isPrefix!4961 (List!56809 List!56809) Bool)

(declare-fun getSuffix!2949 (List!56809 List!56809) List!56809)

(assert (=> b!4922493 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) lt!2024324)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!773 (List!56809 List!56809) Unit!147131)

(assert (=> b!4922493 (= lt!2024394 (lemmaAddHeadSuffixToPrefixStillPrefix!773 Nil!56685 lt!2024324))))

(declare-fun lt!2024382 () List!56809)

(assert (=> b!4922493 (= lt!2024382 (++!12322 Nil!56685 (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))

(declare-fun lt!2024395 () Unit!147131)

(declare-fun e!3076001 () Unit!147131)

(assert (=> b!4922493 (= lt!2024395 e!3076001)))

(declare-fun c!837827 () Bool)

(declare-fun size!37476 (List!56809) Int)

(assert (=> b!4922493 (= c!837827 (= (size!37476 Nil!56685) (size!37476 lt!2024324)))))

(declare-fun lt!2024402 () Unit!147131)

(declare-fun lt!2024386 () Unit!147131)

(assert (=> b!4922493 (= lt!2024402 lt!2024386)))

(assert (=> b!4922493 (<= (size!37476 Nil!56685) (size!37476 lt!2024324))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!685 (List!56809 List!56809) Unit!147131)

(assert (=> b!4922493 (= lt!2024386 (lemmaIsPrefixThenSmallerEqSize!685 Nil!56685 lt!2024324))))

(declare-fun e!3076000 () tuple2!61168)

(declare-fun e!3076004 () tuple2!61168)

(assert (=> b!4922493 (= e!3076000 e!3076004)))

(declare-fun b!4922494 () Bool)

(declare-fun e!3076003 () tuple2!61168)

(assert (=> b!4922494 (= e!3076003 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun b!4922495 () Bool)

(declare-fun e!3076006 () tuple2!61168)

(declare-fun lt!2024404 () tuple2!61168)

(assert (=> b!4922495 (= e!3076006 lt!2024404)))

(declare-fun bm!342896 () Bool)

(declare-fun call!342904 () (InoxSet Context!6030))

(declare-fun call!342905 () C!26956)

(declare-fun derivationStepZipper!588 ((InoxSet Context!6030) C!26956) (InoxSet Context!6030))

(assert (=> bm!342896 (= call!342904 (derivationStepZipper!588 z!3559 call!342905))))

(declare-fun bm!342897 () Bool)

(declare-fun call!342899 () tuple2!61168)

(declare-fun call!342906 () List!56809)

(assert (=> bm!342897 (= call!342899 (findLongestMatchInnerZipper!58 call!342904 lt!2024382 (+ 0 1) call!342906 lt!2024324 lt!2024326))))

(declare-fun bm!342898 () Bool)

(assert (=> bm!342898 (= call!342905 (head!10520 lt!2024324))))

(declare-fun b!4922496 () Bool)

(declare-fun e!3076005 () Bool)

(declare-fun e!3076002 () Bool)

(assert (=> b!4922496 (= e!3076005 e!3076002)))

(declare-fun res!2101447 () Bool)

(assert (=> b!4922496 (=> res!2101447 e!3076002)))

(declare-fun lt!2024389 () tuple2!61168)

(declare-fun isEmpty!30566 (List!56809) Bool)

(assert (=> b!4922496 (= res!2101447 (isEmpty!30566 (_1!33887 lt!2024389)))))

(declare-fun bm!342899 () Bool)

(declare-fun call!342902 () Unit!147131)

(declare-fun lemmaIsPrefixRefl!3357 (List!56809 List!56809) Unit!147131)

(assert (=> bm!342899 (= call!342902 (lemmaIsPrefixRefl!3357 lt!2024324 lt!2024324))))

(declare-fun b!4922497 () Bool)

(declare-fun Unit!147138 () Unit!147131)

(assert (=> b!4922497 (= e!3076001 Unit!147138)))

(declare-fun lt!2024384 () Unit!147131)

(assert (=> b!4922497 (= lt!2024384 call!342902)))

(declare-fun call!342900 () Bool)

(assert (=> b!4922497 call!342900))

(declare-fun lt!2024385 () Unit!147131)

(assert (=> b!4922497 (= lt!2024385 lt!2024384)))

(declare-fun lt!2024383 () Unit!147131)

(assert (=> b!4922497 (= lt!2024383 call!342903)))

(assert (=> b!4922497 (= lt!2024324 Nil!56685)))

(declare-fun lt!2024391 () Unit!147131)

(assert (=> b!4922497 (= lt!2024391 lt!2024383)))

(assert (=> b!4922497 false))

(declare-fun b!4922498 () Bool)

(assert (=> b!4922498 (= e!3076004 call!342899)))

(declare-fun b!4922499 () Bool)

(assert (=> b!4922499 (= e!3076004 e!3076006)))

(assert (=> b!4922499 (= lt!2024404 call!342899)))

(declare-fun c!837830 () Bool)

(assert (=> b!4922499 (= c!837830 (isEmpty!30566 (_1!33887 lt!2024404)))))

(declare-fun b!4922500 () Bool)

(declare-fun Unit!147139 () Unit!147131)

(assert (=> b!4922500 (= e!3076001 Unit!147139)))

(declare-fun b!4922501 () Bool)

(assert (=> b!4922501 (= e!3076003 e!3076000)))

(declare-fun c!837828 () Bool)

(assert (=> b!4922501 (= c!837828 (= 0 lt!2024326))))

(declare-fun bm!342900 () Bool)

(assert (=> bm!342900 (= call!342900 (isPrefix!4961 lt!2024324 lt!2024324))))

(declare-fun b!4922502 () Bool)

(declare-fun e!3075999 () tuple2!61168)

(assert (=> b!4922502 (= e!3075999 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun bm!342901 () Bool)

(assert (=> bm!342901 (= call!342906 (tail!9667 lt!2024324))))

(declare-fun d!1583341 () Bool)

(assert (=> d!1583341 e!3076005))

(declare-fun res!2101446 () Bool)

(assert (=> d!1583341 (=> (not res!2101446) (not e!3076005))))

(assert (=> d!1583341 (= res!2101446 (= (++!12322 (_1!33887 lt!2024389) (_2!33887 lt!2024389)) lt!2024324))))

(assert (=> d!1583341 (= lt!2024389 e!3076003)))

(declare-fun c!837826 () Bool)

(declare-fun lostCauseZipper!691 ((InoxSet Context!6030)) Bool)

(assert (=> d!1583341 (= c!837826 (lostCauseZipper!691 z!3559))))

(declare-fun lt!2024390 () Unit!147131)

(declare-fun Unit!147141 () Unit!147131)

(assert (=> d!1583341 (= lt!2024390 Unit!147141)))

(assert (=> d!1583341 (= (getSuffix!2949 lt!2024324 Nil!56685) lt!2024324)))

(declare-fun lt!2024397 () Unit!147131)

(declare-fun lt!2024398 () Unit!147131)

(assert (=> d!1583341 (= lt!2024397 lt!2024398)))

(declare-fun lt!2024396 () List!56809)

(assert (=> d!1583341 (= lt!2024324 lt!2024396)))

(declare-fun lemmaSamePrefixThenSameSuffix!2365 (List!56809 List!56809 List!56809 List!56809 List!56809) Unit!147131)

(assert (=> d!1583341 (= lt!2024398 (lemmaSamePrefixThenSameSuffix!2365 Nil!56685 lt!2024324 Nil!56685 lt!2024396 lt!2024324))))

(assert (=> d!1583341 (= lt!2024396 (getSuffix!2949 lt!2024324 Nil!56685))))

(declare-fun lt!2024387 () Unit!147131)

(declare-fun lt!2024399 () Unit!147131)

(assert (=> d!1583341 (= lt!2024387 lt!2024399)))

(assert (=> d!1583341 (isPrefix!4961 Nil!56685 (++!12322 Nil!56685 lt!2024324))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3185 (List!56809 List!56809) Unit!147131)

(assert (=> d!1583341 (= lt!2024399 (lemmaConcatTwoListThenFirstIsPrefix!3185 Nil!56685 lt!2024324))))

(assert (=> d!1583341 (= (++!12322 Nil!56685 lt!2024324) lt!2024324)))

(assert (=> d!1583341 (= (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 lt!2024324 lt!2024326) lt!2024389)))

(declare-fun bm!342894 () Bool)

(declare-fun nullableZipper!810 ((InoxSet Context!6030)) Bool)

(assert (=> bm!342894 (= call!342901 (nullableZipper!810 z!3559))))

(declare-fun b!4922503 () Bool)

(assert (=> b!4922503 (= e!3076006 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun b!4922504 () Bool)

(assert (=> b!4922504 (= e!3076002 (>= (size!37476 (_1!33887 lt!2024389)) (size!37476 Nil!56685)))))

(declare-fun b!4922505 () Bool)

(assert (=> b!4922505 (= e!3075999 (tuple2!61169 Nil!56685 Nil!56685))))

(declare-fun b!4922506 () Bool)

(declare-fun c!837831 () Bool)

(assert (=> b!4922506 (= c!837831 call!342901)))

(declare-fun lt!2024406 () Unit!147131)

(declare-fun lt!2024401 () Unit!147131)

(assert (=> b!4922506 (= lt!2024406 lt!2024401)))

(assert (=> b!4922506 (= lt!2024324 Nil!56685)))

(assert (=> b!4922506 (= lt!2024401 call!342903)))

(declare-fun lt!2024393 () Unit!147131)

(declare-fun lt!2024405 () Unit!147131)

(assert (=> b!4922506 (= lt!2024393 lt!2024405)))

(assert (=> b!4922506 call!342900))

(assert (=> b!4922506 (= lt!2024405 call!342902)))

(assert (=> b!4922506 (= e!3076000 e!3075999)))

(assert (= (and d!1583341 c!837826) b!4922494))

(assert (= (and d!1583341 (not c!837826)) b!4922501))

(assert (= (and b!4922501 c!837828) b!4922506))

(assert (= (and b!4922501 (not c!837828)) b!4922493))

(assert (= (and b!4922506 c!837831) b!4922505))

(assert (= (and b!4922506 (not c!837831)) b!4922502))

(assert (= (and b!4922493 c!837827) b!4922497))

(assert (= (and b!4922493 (not c!837827)) b!4922500))

(assert (= (and b!4922493 c!837829) b!4922499))

(assert (= (and b!4922493 (not c!837829)) b!4922498))

(assert (= (and b!4922499 c!837830) b!4922503))

(assert (= (and b!4922499 (not c!837830)) b!4922495))

(assert (= (or b!4922499 b!4922498) bm!342901))

(assert (= (or b!4922499 b!4922498) bm!342898))

(assert (= (or b!4922499 b!4922498) bm!342896))

(assert (= (or b!4922499 b!4922498) bm!342897))

(assert (= (or b!4922506 b!4922497) bm!342900))

(assert (= (or b!4922506 b!4922497) bm!342899))

(assert (= (or b!4922506 b!4922497) bm!342895))

(assert (= (or b!4922506 b!4922493) bm!342894))

(assert (= (and d!1583341 res!2101446) b!4922496))

(assert (= (and b!4922496 (not res!2101447)) b!4922504))

(declare-fun m!5937574 () Bool)

(assert (=> bm!342895 m!5937574))

(declare-fun m!5937576 () Bool)

(assert (=> b!4922499 m!5937576))

(declare-fun m!5937578 () Bool)

(assert (=> bm!342894 m!5937578))

(declare-fun m!5937580 () Bool)

(assert (=> bm!342901 m!5937580))

(declare-fun m!5937582 () Bool)

(assert (=> b!4922493 m!5937582))

(declare-fun m!5937584 () Bool)

(assert (=> b!4922493 m!5937584))

(declare-fun m!5937586 () Bool)

(assert (=> b!4922493 m!5937586))

(declare-fun m!5937588 () Bool)

(assert (=> b!4922493 m!5937588))

(declare-fun m!5937590 () Bool)

(assert (=> b!4922493 m!5937590))

(declare-fun m!5937592 () Bool)

(assert (=> b!4922493 m!5937592))

(declare-fun m!5937594 () Bool)

(assert (=> b!4922493 m!5937594))

(declare-fun m!5937596 () Bool)

(assert (=> b!4922493 m!5937596))

(declare-fun m!5937598 () Bool)

(assert (=> b!4922493 m!5937598))

(assert (=> b!4922493 m!5937582))

(declare-fun m!5937600 () Bool)

(assert (=> b!4922493 m!5937600))

(assert (=> b!4922493 m!5937580))

(declare-fun m!5937602 () Bool)

(assert (=> b!4922493 m!5937602))

(assert (=> b!4922493 m!5937588))

(declare-fun m!5937604 () Bool)

(assert (=> b!4922493 m!5937604))

(assert (=> b!4922493 m!5937586))

(declare-fun m!5937606 () Bool)

(assert (=> b!4922493 m!5937606))

(declare-fun m!5937608 () Bool)

(assert (=> d!1583341 m!5937608))

(declare-fun m!5937610 () Bool)

(assert (=> d!1583341 m!5937610))

(declare-fun m!5937612 () Bool)

(assert (=> d!1583341 m!5937612))

(declare-fun m!5937614 () Bool)

(assert (=> d!1583341 m!5937614))

(declare-fun m!5937616 () Bool)

(assert (=> d!1583341 m!5937616))

(assert (=> d!1583341 m!5937582))

(assert (=> d!1583341 m!5937616))

(declare-fun m!5937618 () Bool)

(assert (=> d!1583341 m!5937618))

(assert (=> bm!342898 m!5937604))

(declare-fun m!5937620 () Bool)

(assert (=> bm!342897 m!5937620))

(declare-fun m!5937622 () Bool)

(assert (=> b!4922504 m!5937622))

(assert (=> b!4922504 m!5937598))

(declare-fun m!5937624 () Bool)

(assert (=> bm!342899 m!5937624))

(declare-fun m!5937626 () Bool)

(assert (=> b!4922496 m!5937626))

(declare-fun m!5937628 () Bool)

(assert (=> bm!342896 m!5937628))

(declare-fun m!5937630 () Bool)

(assert (=> bm!342900 m!5937630))

(assert (=> start!516876 d!1583341))

(declare-fun b!4922519 () Bool)

(declare-fun res!2101463 () Bool)

(declare-fun e!3076011 () Bool)

(assert (=> b!4922519 (=> (not res!2101463) (not e!3076011))))

(assert (=> b!4922519 (= res!2101463 (isBalanced!4085 (right!41660 (c!837809 input!5492))))))

(declare-fun b!4922520 () Bool)

(declare-fun isEmpty!30568 (Conc!14872) Bool)

(assert (=> b!4922520 (= e!3076011 (not (isEmpty!30568 (right!41660 (c!837809 input!5492)))))))

(declare-fun d!1583349 () Bool)

(declare-fun res!2101462 () Bool)

(declare-fun e!3076012 () Bool)

(assert (=> d!1583349 (=> res!2101462 e!3076012)))

(get-info :version)

(assert (=> d!1583349 (= res!2101462 (not ((_ is Node!14872) (c!837809 input!5492))))))

(assert (=> d!1583349 (= (isBalanced!4085 (c!837809 input!5492)) e!3076012)))

(declare-fun b!4922521 () Bool)

(declare-fun res!2101464 () Bool)

(assert (=> b!4922521 (=> (not res!2101464) (not e!3076011))))

(declare-fun height!1982 (Conc!14872) Int)

(assert (=> b!4922521 (= res!2101464 (<= (- (height!1982 (left!41330 (c!837809 input!5492))) (height!1982 (right!41660 (c!837809 input!5492)))) 1))))

(declare-fun b!4922522 () Bool)

(declare-fun res!2101465 () Bool)

(assert (=> b!4922522 (=> (not res!2101465) (not e!3076011))))

(assert (=> b!4922522 (= res!2101465 (not (isEmpty!30568 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4922523 () Bool)

(declare-fun res!2101461 () Bool)

(assert (=> b!4922523 (=> (not res!2101461) (not e!3076011))))

(assert (=> b!4922523 (= res!2101461 (isBalanced!4085 (left!41330 (c!837809 input!5492))))))

(declare-fun b!4922524 () Bool)

(assert (=> b!4922524 (= e!3076012 e!3076011)))

(declare-fun res!2101460 () Bool)

(assert (=> b!4922524 (=> (not res!2101460) (not e!3076011))))

(assert (=> b!4922524 (= res!2101460 (<= (- 1) (- (height!1982 (left!41330 (c!837809 input!5492))) (height!1982 (right!41660 (c!837809 input!5492))))))))

(assert (= (and d!1583349 (not res!2101462)) b!4922524))

(assert (= (and b!4922524 res!2101460) b!4922521))

(assert (= (and b!4922521 res!2101464) b!4922523))

(assert (= (and b!4922523 res!2101461) b!4922519))

(assert (= (and b!4922519 res!2101463) b!4922522))

(assert (= (and b!4922522 res!2101465) b!4922520))

(declare-fun m!5937632 () Bool)

(assert (=> b!4922520 m!5937632))

(declare-fun m!5937634 () Bool)

(assert (=> b!4922524 m!5937634))

(declare-fun m!5937636 () Bool)

(assert (=> b!4922524 m!5937636))

(assert (=> b!4922521 m!5937634))

(assert (=> b!4922521 m!5937636))

(declare-fun m!5937638 () Bool)

(assert (=> b!4922522 m!5937638))

(declare-fun m!5937640 () Bool)

(assert (=> b!4922523 m!5937640))

(declare-fun m!5937642 () Bool)

(assert (=> b!4922519 m!5937642))

(assert (=> start!516876 d!1583349))

(declare-fun d!1583351 () Bool)

(declare-fun lt!2024468 () Int)

(assert (=> d!1583351 (= lt!2024468 (size!37476 (list!17947 input!5492)))))

(declare-fun size!37478 (Conc!14872) Int)

(assert (=> d!1583351 (= lt!2024468 (size!37478 (c!837809 input!5492)))))

(assert (=> d!1583351 (= (size!37474 input!5492) lt!2024468)))

(declare-fun bs!1179222 () Bool)

(assert (= bs!1179222 d!1583351))

(assert (=> bs!1179222 m!5937560))

(assert (=> bs!1179222 m!5937560))

(declare-fun m!5937644 () Bool)

(assert (=> bs!1179222 m!5937644))

(declare-fun m!5937646 () Bool)

(assert (=> bs!1179222 m!5937646))

(assert (=> start!516876 d!1583351))

(declare-fun d!1583353 () Bool)

(declare-fun list!17949 (Conc!14872) List!56809)

(assert (=> d!1583353 (= (list!17947 (_1!33888 lt!2024328)) (list!17949 (c!837809 (_1!33888 lt!2024328))))))

(declare-fun bs!1179223 () Bool)

(assert (= bs!1179223 d!1583353))

(declare-fun m!5937648 () Bool)

(assert (=> bs!1179223 m!5937648))

(assert (=> start!516876 d!1583353))

(declare-fun b!4922651 () Bool)

(declare-fun e!3076081 () Int)

(declare-fun e!3076076 () Int)

(assert (=> b!4922651 (= e!3076081 e!3076076)))

(declare-fun c!837884 () Bool)

(assert (=> b!4922651 (= c!837884 (= 0 lt!2024326))))

(declare-fun bm!342976 () Bool)

(declare-fun c!837881 () Bool)

(assert (=> bm!342976 (= c!837881 c!837884)))

(declare-fun e!3076079 () List!56809)

(declare-fun lt!2024738 () List!56809)

(declare-fun call!342989 () Unit!147131)

(declare-fun lt!2024732 () List!56809)

(assert (=> bm!342976 (= call!342989 (lemmaIsPrefixSameLengthThenSameList!1119 (ite c!837884 lt!2024732 lt!2024738) Nil!56685 e!3076079))))

(declare-fun bm!342977 () Bool)

(declare-fun call!342985 () C!26956)

(declare-fun apply!13655 (BalanceConc!29174 Int) C!26956)

(assert (=> bm!342977 (= call!342985 (apply!13655 input!5492 0))))

(declare-fun bm!342978 () Bool)

(declare-fun call!342986 () List!56809)

(assert (=> bm!342978 (= call!342986 (++!12322 Nil!56685 (Cons!56685 call!342985 Nil!56685)))))

(declare-fun bm!342979 () Bool)

(declare-fun call!342984 () Bool)

(assert (=> bm!342979 (= call!342984 (nullableZipper!810 z!3559))))

(declare-fun b!4922652 () Bool)

(declare-fun e!3076077 () Unit!147131)

(declare-fun Unit!147142 () Unit!147131)

(assert (=> b!4922652 (= e!3076077 Unit!147142)))

(declare-fun b!4922653 () Bool)

(declare-fun e!3076078 () Int)

(declare-fun call!342987 () Int)

(assert (=> b!4922653 (= e!3076078 call!342987)))

(declare-fun b!4922654 () Bool)

(declare-fun call!342983 () List!56809)

(assert (=> b!4922654 (= e!3076079 call!342983)))

(declare-fun b!4922655 () Bool)

(declare-fun Unit!147143 () Unit!147131)

(assert (=> b!4922655 (= e!3076077 Unit!147143)))

(declare-fun lt!2024713 () List!56809)

(assert (=> b!4922655 (= lt!2024713 (list!17947 input!5492))))

(declare-fun lt!2024750 () List!56809)

(assert (=> b!4922655 (= lt!2024750 (list!17947 input!5492))))

(declare-fun lt!2024711 () Unit!147131)

(declare-fun call!342988 () Unit!147131)

(assert (=> b!4922655 (= lt!2024711 call!342988)))

(declare-fun call!342981 () Bool)

(assert (=> b!4922655 call!342981))

(declare-fun lt!2024737 () Unit!147131)

(assert (=> b!4922655 (= lt!2024737 lt!2024711)))

(assert (=> b!4922655 (= lt!2024738 (list!17947 input!5492))))

(declare-fun lt!2024722 () Unit!147131)

(assert (=> b!4922655 (= lt!2024722 call!342989)))

(assert (=> b!4922655 (= lt!2024738 Nil!56685)))

(declare-fun lt!2024719 () Unit!147131)

(assert (=> b!4922655 (= lt!2024719 lt!2024722)))

(assert (=> b!4922655 false))

(declare-fun bm!342980 () Bool)

(declare-fun call!342990 () List!56809)

(assert (=> bm!342980 (= call!342990 (tail!9667 lt!2024324))))

(declare-fun d!1583355 () Bool)

(declare-fun lt!2024721 () Int)

(assert (=> d!1583355 (= (size!37476 (_1!33887 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326))) lt!2024721)))

(assert (=> d!1583355 (= lt!2024721 e!3076081)))

(declare-fun c!837880 () Bool)

(assert (=> d!1583355 (= c!837880 (lostCauseZipper!691 z!3559))))

(declare-fun lt!2024752 () Unit!147131)

(declare-fun Unit!147144 () Unit!147131)

(assert (=> d!1583355 (= lt!2024752 Unit!147144)))

(assert (=> d!1583355 (= (getSuffix!2949 (list!17947 input!5492) Nil!56685) lt!2024324)))

(declare-fun lt!2024727 () Unit!147131)

(declare-fun lt!2024740 () Unit!147131)

(assert (=> d!1583355 (= lt!2024727 lt!2024740)))

(declare-fun lt!2024720 () List!56809)

(assert (=> d!1583355 (= lt!2024324 lt!2024720)))

(assert (=> d!1583355 (= lt!2024740 (lemmaSamePrefixThenSameSuffix!2365 Nil!56685 lt!2024324 Nil!56685 lt!2024720 (list!17947 input!5492)))))

(assert (=> d!1583355 (= lt!2024720 (getSuffix!2949 (list!17947 input!5492) Nil!56685))))

(declare-fun lt!2024728 () Unit!147131)

(declare-fun lt!2024715 () Unit!147131)

(assert (=> d!1583355 (= lt!2024728 lt!2024715)))

(assert (=> d!1583355 (isPrefix!4961 Nil!56685 (++!12322 Nil!56685 lt!2024324))))

(assert (=> d!1583355 (= lt!2024715 (lemmaConcatTwoListThenFirstIsPrefix!3185 Nil!56685 lt!2024324))))

(assert (=> d!1583355 (= (++!12322 Nil!56685 lt!2024324) (list!17947 input!5492))))

(assert (=> d!1583355 (= (findLongestMatchInnerZipperFast!85 z!3559 Nil!56685 0 lt!2024324 input!5492 lt!2024326) lt!2024721)))

(declare-fun b!4922656 () Bool)

(declare-fun lt!2024734 () Int)

(assert (=> b!4922656 (= e!3076078 (ite (= lt!2024734 0) 0 lt!2024734))))

(assert (=> b!4922656 (= lt!2024734 call!342987)))

(declare-fun bm!342981 () Bool)

(declare-fun call!342982 () (InoxSet Context!6030))

(assert (=> bm!342981 (= call!342987 (findLongestMatchInnerZipperFast!85 call!342982 call!342986 (+ 0 1) call!342990 input!5492 lt!2024326))))

(declare-fun b!4922657 () Bool)

(declare-fun e!3076080 () Int)

(assert (=> b!4922657 (= e!3076080 0)))

(declare-fun bm!342982 () Bool)

(assert (=> bm!342982 (= call!342982 (derivationStepZipper!588 z!3559 call!342985))))

(declare-fun lt!2024748 () tuple2!61170)

(declare-fun bm!342983 () Bool)

(assert (=> bm!342983 (= call!342983 (list!17947 (ite c!837884 input!5492 (_1!33888 lt!2024748))))))

(declare-fun b!4922658 () Bool)

(assert (=> b!4922658 (= e!3076080 0)))

(declare-fun b!4922659 () Bool)

(declare-fun c!837885 () Bool)

(assert (=> b!4922659 (= c!837885 call!342984)))

(declare-fun lt!2024725 () Unit!147131)

(declare-fun lt!2024749 () Unit!147131)

(assert (=> b!4922659 (= lt!2024725 lt!2024749)))

(assert (=> b!4922659 (= lt!2024732 Nil!56685)))

(assert (=> b!4922659 (= lt!2024749 call!342989)))

(assert (=> b!4922659 (= lt!2024732 call!342983)))

(declare-fun lt!2024714 () Unit!147131)

(declare-fun lt!2024745 () Unit!147131)

(assert (=> b!4922659 (= lt!2024714 lt!2024745)))

(assert (=> b!4922659 call!342981))

(assert (=> b!4922659 (= lt!2024745 call!342988)))

(declare-fun lt!2024744 () List!56809)

(assert (=> b!4922659 (= lt!2024744 call!342983)))

(declare-fun lt!2024726 () List!56809)

(assert (=> b!4922659 (= lt!2024726 call!342983)))

(assert (=> b!4922659 (= e!3076076 e!3076080)))

(declare-fun b!4922660 () Bool)

(declare-fun c!837883 () Bool)

(assert (=> b!4922660 (= c!837883 call!342984)))

(declare-fun lt!2024742 () Unit!147131)

(declare-fun lt!2024735 () Unit!147131)

(assert (=> b!4922660 (= lt!2024742 lt!2024735)))

(declare-fun lt!2024743 () C!26956)

(declare-fun lt!2024741 () List!56809)

(declare-fun lt!2024733 () List!56809)

(assert (=> b!4922660 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)) lt!2024741) lt!2024733)))

(assert (=> b!4922660 (= lt!2024735 (lemmaMoveElementToOtherListKeepsConcatEq!1391 Nil!56685 lt!2024743 lt!2024741 lt!2024733))))

(assert (=> b!4922660 (= lt!2024733 (list!17947 input!5492))))

(assert (=> b!4922660 (= lt!2024741 (tail!9667 lt!2024324))))

(assert (=> b!4922660 (= lt!2024743 (apply!13655 input!5492 0))))

(declare-fun lt!2024730 () Unit!147131)

(declare-fun lt!2024746 () Unit!147131)

(assert (=> b!4922660 (= lt!2024730 lt!2024746)))

(declare-fun lt!2024736 () List!56809)

(assert (=> b!4922660 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) lt!2024736)))

(assert (=> b!4922660 (= lt!2024746 (lemmaAddHeadSuffixToPrefixStillPrefix!773 Nil!56685 lt!2024736))))

(assert (=> b!4922660 (= lt!2024736 (list!17947 input!5492))))

(declare-fun lt!2024729 () Unit!147131)

(assert (=> b!4922660 (= lt!2024729 e!3076077)))

(declare-fun c!837882 () Bool)

(assert (=> b!4922660 (= c!837882 (= (size!37476 Nil!56685) (size!37474 input!5492)))))

(declare-fun lt!2024716 () Unit!147131)

(declare-fun lt!2024731 () Unit!147131)

(assert (=> b!4922660 (= lt!2024716 lt!2024731)))

(declare-fun lt!2024751 () List!56809)

(assert (=> b!4922660 (<= (size!37476 Nil!56685) (size!37476 lt!2024751))))

(assert (=> b!4922660 (= lt!2024731 (lemmaIsPrefixThenSmallerEqSize!685 Nil!56685 lt!2024751))))

(assert (=> b!4922660 (= lt!2024751 (list!17947 input!5492))))

(declare-fun lt!2024747 () Unit!147131)

(declare-fun lt!2024723 () Unit!147131)

(assert (=> b!4922660 (= lt!2024747 lt!2024723)))

(declare-fun lt!2024717 () List!56809)

(declare-fun drop!2224 (List!56809 Int) List!56809)

(declare-fun apply!13656 (List!56809 Int) C!26956)

(assert (=> b!4922660 (= (head!10520 (drop!2224 lt!2024717 0)) (apply!13656 lt!2024717 0))))

(declare-fun lemmaDropApply!1282 (List!56809 Int) Unit!147131)

(assert (=> b!4922660 (= lt!2024723 (lemmaDropApply!1282 lt!2024717 0))))

(assert (=> b!4922660 (= lt!2024717 (list!17947 input!5492))))

(declare-fun lt!2024724 () Unit!147131)

(declare-fun lt!2024739 () Unit!147131)

(assert (=> b!4922660 (= lt!2024724 lt!2024739)))

(declare-fun lt!2024712 () List!56809)

(declare-fun lt!2024718 () List!56809)

(assert (=> b!4922660 (and (= lt!2024712 Nil!56685) (= lt!2024718 lt!2024324))))

(assert (=> b!4922660 (= lt!2024739 (lemmaConcatSameAndSameSizesThenSameLists!657 lt!2024712 lt!2024718 Nil!56685 lt!2024324))))

(assert (=> b!4922660 (= lt!2024718 (list!17947 (_2!33888 lt!2024748)))))

(assert (=> b!4922660 (= lt!2024712 call!342983)))

(assert (=> b!4922660 (= lt!2024748 (splitAt!269 input!5492 0))))

(assert (=> b!4922660 (= e!3076076 e!3076078)))

(declare-fun bm!342984 () Bool)

(assert (=> bm!342984 (= call!342981 (isPrefix!4961 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750)))))

(declare-fun b!4922661 () Bool)

(assert (=> b!4922661 (= e!3076079 (list!17947 input!5492))))

(declare-fun bm!342985 () Bool)

(assert (=> bm!342985 (= call!342988 (lemmaIsPrefixRefl!3357 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750)))))

(declare-fun b!4922662 () Bool)

(assert (=> b!4922662 (= e!3076081 0)))

(assert (= (and d!1583355 c!837880) b!4922662))

(assert (= (and d!1583355 (not c!837880)) b!4922651))

(assert (= (and b!4922651 c!837884) b!4922659))

(assert (= (and b!4922651 (not c!837884)) b!4922660))

(assert (= (and b!4922659 c!837885) b!4922657))

(assert (= (and b!4922659 (not c!837885)) b!4922658))

(assert (= (and b!4922660 c!837882) b!4922655))

(assert (= (and b!4922660 (not c!837882)) b!4922652))

(assert (= (and b!4922660 c!837883) b!4922656))

(assert (= (and b!4922660 (not c!837883)) b!4922653))

(assert (= (or b!4922656 b!4922653) bm!342980))

(assert (= (or b!4922656 b!4922653) bm!342977))

(assert (= (or b!4922656 b!4922653) bm!342978))

(assert (= (or b!4922656 b!4922653) bm!342982))

(assert (= (or b!4922656 b!4922653) bm!342981))

(assert (= (or b!4922659 b!4922660) bm!342983))

(assert (= (or b!4922659 b!4922655) bm!342985))

(assert (= (or b!4922659 b!4922660) bm!342979))

(assert (= (or b!4922659 b!4922655) bm!342984))

(assert (= (or b!4922659 b!4922655) bm!342976))

(assert (= (and bm!342976 c!837881) b!4922654))

(assert (= (and bm!342976 (not c!837881)) b!4922661))

(assert (=> b!4922661 m!5937560))

(assert (=> b!4922660 m!5937580))

(declare-fun m!5937804 () Bool)

(assert (=> b!4922660 m!5937804))

(assert (=> b!4922660 m!5937598))

(declare-fun m!5937806 () Bool)

(assert (=> b!4922660 m!5937806))

(declare-fun m!5937808 () Bool)

(assert (=> b!4922660 m!5937808))

(declare-fun m!5937810 () Bool)

(assert (=> b!4922660 m!5937810))

(declare-fun m!5937812 () Bool)

(assert (=> b!4922660 m!5937812))

(declare-fun m!5937814 () Bool)

(assert (=> b!4922660 m!5937814))

(declare-fun m!5937816 () Bool)

(assert (=> b!4922660 m!5937816))

(assert (=> b!4922660 m!5937806))

(declare-fun m!5937818 () Bool)

(assert (=> b!4922660 m!5937818))

(declare-fun m!5937820 () Bool)

(assert (=> b!4922660 m!5937820))

(declare-fun m!5937822 () Bool)

(assert (=> b!4922660 m!5937822))

(declare-fun m!5937824 () Bool)

(assert (=> b!4922660 m!5937824))

(declare-fun m!5937826 () Bool)

(assert (=> b!4922660 m!5937826))

(declare-fun m!5937828 () Bool)

(assert (=> b!4922660 m!5937828))

(assert (=> b!4922660 m!5937822))

(declare-fun m!5937830 () Bool)

(assert (=> b!4922660 m!5937830))

(declare-fun m!5937832 () Bool)

(assert (=> b!4922660 m!5937832))

(assert (=> b!4922660 m!5937814))

(declare-fun m!5937834 () Bool)

(assert (=> b!4922660 m!5937834))

(assert (=> b!4922660 m!5937562))

(assert (=> b!4922660 m!5937560))

(assert (=> b!4922660 m!5937834))

(declare-fun m!5937836 () Bool)

(assert (=> b!4922660 m!5937836))

(declare-fun m!5937838 () Bool)

(assert (=> b!4922660 m!5937838))

(assert (=> bm!342977 m!5937820))

(declare-fun m!5937840 () Bool)

(assert (=> bm!342978 m!5937840))

(assert (=> b!4922655 m!5937560))

(declare-fun m!5937842 () Bool)

(assert (=> bm!342981 m!5937842))

(declare-fun m!5937844 () Bool)

(assert (=> bm!342983 m!5937844))

(declare-fun m!5937846 () Bool)

(assert (=> bm!342976 m!5937846))

(assert (=> bm!342980 m!5937580))

(declare-fun m!5937848 () Bool)

(assert (=> bm!342982 m!5937848))

(declare-fun m!5937850 () Bool)

(assert (=> bm!342984 m!5937850))

(declare-fun m!5937852 () Bool)

(assert (=> bm!342985 m!5937852))

(assert (=> d!1583355 m!5937560))

(assert (=> d!1583355 m!5937616))

(assert (=> d!1583355 m!5937608))

(assert (=> d!1583355 m!5937616))

(assert (=> d!1583355 m!5937618))

(declare-fun m!5937854 () Bool)

(assert (=> d!1583355 m!5937854))

(assert (=> d!1583355 m!5937560))

(declare-fun m!5937856 () Bool)

(assert (=> d!1583355 m!5937856))

(assert (=> d!1583355 m!5937560))

(declare-fun m!5937858 () Bool)

(assert (=> d!1583355 m!5937858))

(assert (=> d!1583355 m!5937612))

(assert (=> d!1583355 m!5937560))

(declare-fun m!5937860 () Bool)

(assert (=> d!1583355 m!5937860))

(assert (=> bm!342979 m!5937578))

(assert (=> start!516876 d!1583355))

(declare-fun d!1583375 () Bool)

(assert (=> d!1583375 (= (list!17947 (_2!33888 lt!2024328)) (list!17949 (c!837809 (_2!33888 lt!2024328))))))

(declare-fun bs!1179229 () Bool)

(assert (= bs!1179229 d!1583375))

(declare-fun m!5937862 () Bool)

(assert (=> bs!1179229 m!5937862))

(assert (=> start!516876 d!1583375))

(declare-fun d!1583377 () Bool)

(assert (=> d!1583377 (= (list!17947 input!5492) (list!17949 (c!837809 input!5492)))))

(declare-fun bs!1179230 () Bool)

(assert (= bs!1179230 d!1583377))

(declare-fun m!5937864 () Bool)

(assert (=> bs!1179230 m!5937864))

(assert (=> start!516876 d!1583377))

(declare-fun d!1583379 () Bool)

(assert (=> d!1583379 (= (inv!73462 input!5492) (isBalanced!4085 (c!837809 input!5492)))))

(declare-fun bs!1179231 () Bool)

(assert (= bs!1179231 d!1583379))

(assert (=> bs!1179231 m!5937556))

(assert (=> start!516876 d!1583379))

(declare-fun d!1583381 () Bool)

(declare-fun e!3076084 () Bool)

(assert (=> d!1583381 e!3076084))

(declare-fun res!2101501 () Bool)

(assert (=> d!1583381 (=> (not res!2101501) (not e!3076084))))

(declare-fun lt!2024758 () tuple2!61170)

(assert (=> d!1583381 (= res!2101501 (isBalanced!4085 (c!837809 (_1!33888 lt!2024758))))))

(declare-datatypes ((tuple2!61174 0))(
  ( (tuple2!61175 (_1!33890 Conc!14872) (_2!33890 Conc!14872)) )
))
(declare-fun lt!2024757 () tuple2!61174)

(assert (=> d!1583381 (= lt!2024758 (tuple2!61171 (BalanceConc!29175 (_1!33890 lt!2024757)) (BalanceConc!29175 (_2!33890 lt!2024757))))))

(declare-fun splitAt!271 (Conc!14872 Int) tuple2!61174)

(assert (=> d!1583381 (= lt!2024757 (splitAt!271 (c!837809 input!5492) lt!2024322))))

(assert (=> d!1583381 (isBalanced!4085 (c!837809 input!5492))))

(assert (=> d!1583381 (= (splitAt!269 input!5492 lt!2024322) lt!2024758)))

(declare-fun b!4922667 () Bool)

(declare-fun res!2101500 () Bool)

(assert (=> b!4922667 (=> (not res!2101500) (not e!3076084))))

(assert (=> b!4922667 (= res!2101500 (isBalanced!4085 (c!837809 (_2!33888 lt!2024758))))))

(declare-fun b!4922668 () Bool)

(declare-fun splitAtIndex!101 (List!56809 Int) tuple2!61168)

(assert (=> b!4922668 (= e!3076084 (= (tuple2!61169 (list!17947 (_1!33888 lt!2024758)) (list!17947 (_2!33888 lt!2024758))) (splitAtIndex!101 (list!17947 input!5492) lt!2024322)))))

(assert (= (and d!1583381 res!2101501) b!4922667))

(assert (= (and b!4922667 res!2101500) b!4922668))

(declare-fun m!5937866 () Bool)

(assert (=> d!1583381 m!5937866))

(declare-fun m!5937868 () Bool)

(assert (=> d!1583381 m!5937868))

(assert (=> d!1583381 m!5937556))

(declare-fun m!5937870 () Bool)

(assert (=> b!4922667 m!5937870))

(declare-fun m!5937872 () Bool)

(assert (=> b!4922668 m!5937872))

(declare-fun m!5937874 () Bool)

(assert (=> b!4922668 m!5937874))

(assert (=> b!4922668 m!5937560))

(assert (=> b!4922668 m!5937560))

(declare-fun m!5937876 () Bool)

(assert (=> b!4922668 m!5937876))

(assert (=> start!516876 d!1583381))

(declare-fun d!1583383 () Bool)

(assert (=> d!1583383 (and (= lt!2024329 (_1!33887 lt!2024327)) (= lt!2024323 (_2!33887 lt!2024327)))))

(declare-fun lt!2024761 () Unit!147131)

(declare-fun choose!36031 (List!56809 List!56809 List!56809 List!56809) Unit!147131)

(assert (=> d!1583383 (= lt!2024761 (choose!36031 lt!2024329 lt!2024323 (_1!33887 lt!2024327) (_2!33887 lt!2024327)))))

(assert (=> d!1583383 (= (++!12322 lt!2024329 lt!2024323) (++!12322 (_1!33887 lt!2024327) (_2!33887 lt!2024327)))))

(assert (=> d!1583383 (= (lemmaConcatSameAndSameSizesThenSameLists!657 lt!2024329 lt!2024323 (_1!33887 lt!2024327) (_2!33887 lt!2024327)) lt!2024761)))

(declare-fun bs!1179232 () Bool)

(assert (= bs!1179232 d!1583383))

(declare-fun m!5937878 () Bool)

(assert (=> bs!1179232 m!5937878))

(declare-fun m!5937880 () Bool)

(assert (=> bs!1179232 m!5937880))

(declare-fun m!5937882 () Bool)

(assert (=> bs!1179232 m!5937882))

(assert (=> start!516876 d!1583383))

(declare-fun d!1583385 () Bool)

(declare-fun lambda!245124 () Int)

(declare-fun forall!13131 (List!56810 Int) Bool)

(assert (=> d!1583385 (= (inv!73463 setElem!27520) (forall!13131 (exprs!3515 setElem!27520) lambda!245124))))

(declare-fun bs!1179234 () Bool)

(assert (= bs!1179234 d!1583385))

(declare-fun m!5937894 () Bool)

(assert (=> bs!1179234 m!5937894))

(assert (=> setNonEmpty!27520 d!1583385))

(declare-fun d!1583387 () Bool)

(declare-fun c!837888 () Bool)

(assert (=> d!1583387 (= c!837888 ((_ is Node!14872) (c!837809 input!5492)))))

(declare-fun e!3076101 () Bool)

(assert (=> d!1583387 (= (inv!73464 (c!837809 input!5492)) e!3076101)))

(declare-fun b!4922696 () Bool)

(declare-fun inv!73468 (Conc!14872) Bool)

(assert (=> b!4922696 (= e!3076101 (inv!73468 (c!837809 input!5492)))))

(declare-fun b!4922697 () Bool)

(declare-fun e!3076102 () Bool)

(assert (=> b!4922697 (= e!3076101 e!3076102)))

(declare-fun res!2101504 () Bool)

(assert (=> b!4922697 (= res!2101504 (not ((_ is Leaf!24741) (c!837809 input!5492))))))

(assert (=> b!4922697 (=> res!2101504 e!3076102)))

(declare-fun b!4922698 () Bool)

(declare-fun inv!73469 (Conc!14872) Bool)

(assert (=> b!4922698 (= e!3076102 (inv!73469 (c!837809 input!5492)))))

(assert (= (and d!1583387 c!837888) b!4922696))

(assert (= (and d!1583387 (not c!837888)) b!4922697))

(assert (= (and b!4922697 (not res!2101504)) b!4922698))

(declare-fun m!5937896 () Bool)

(assert (=> b!4922696 m!5937896))

(declare-fun m!5937898 () Bool)

(assert (=> b!4922698 m!5937898))

(assert (=> b!4922455 d!1583387))

(declare-fun b!4922703 () Bool)

(declare-fun e!3076105 () Bool)

(declare-fun tp!1383263 () Bool)

(declare-fun tp!1383264 () Bool)

(assert (=> b!4922703 (= e!3076105 (and tp!1383263 tp!1383264))))

(assert (=> b!4922454 (= tp!1383235 e!3076105)))

(assert (= (and b!4922454 ((_ is Cons!56686) (exprs!3515 setElem!27520))) b!4922703))

(declare-fun condSetEmpty!27526 () Bool)

(assert (=> setNonEmpty!27520 (= condSetEmpty!27526 (= setRest!27520 ((as const (Array Context!6030 Bool)) false)))))

(declare-fun setRes!27526 () Bool)

(assert (=> setNonEmpty!27520 (= tp!1383236 setRes!27526)))

(declare-fun setIsEmpty!27526 () Bool)

(assert (=> setIsEmpty!27526 setRes!27526))

(declare-fun setNonEmpty!27526 () Bool)

(declare-fun e!3076108 () Bool)

(declare-fun setElem!27526 () Context!6030)

(declare-fun tp!1383270 () Bool)

(assert (=> setNonEmpty!27526 (= setRes!27526 (and tp!1383270 (inv!73463 setElem!27526) e!3076108))))

(declare-fun setRest!27526 () (InoxSet Context!6030))

(assert (=> setNonEmpty!27526 (= setRest!27520 ((_ map or) (store ((as const (Array Context!6030 Bool)) false) setElem!27526 true) setRest!27526))))

(declare-fun b!4922708 () Bool)

(declare-fun tp!1383269 () Bool)

(assert (=> b!4922708 (= e!3076108 tp!1383269)))

(assert (= (and setNonEmpty!27520 condSetEmpty!27526) setIsEmpty!27526))

(assert (= (and setNonEmpty!27520 (not condSetEmpty!27526)) setNonEmpty!27526))

(assert (= setNonEmpty!27526 b!4922708))

(declare-fun m!5937900 () Bool)

(assert (=> setNonEmpty!27526 m!5937900))

(declare-fun tp!1383278 () Bool)

(declare-fun e!3076114 () Bool)

(declare-fun tp!1383277 () Bool)

(declare-fun b!4922717 () Bool)

(assert (=> b!4922717 (= e!3076114 (and (inv!73464 (left!41330 (c!837809 input!5492))) tp!1383277 (inv!73464 (right!41660 (c!837809 input!5492))) tp!1383278))))

(declare-fun b!4922719 () Bool)

(declare-fun e!3076113 () Bool)

(declare-fun tp!1383279 () Bool)

(assert (=> b!4922719 (= e!3076113 tp!1383279)))

(declare-fun b!4922718 () Bool)

(declare-fun inv!73470 (IArray!29805) Bool)

(assert (=> b!4922718 (= e!3076114 (and (inv!73470 (xs!18192 (c!837809 input!5492))) e!3076113))))

(assert (=> b!4922455 (= tp!1383237 (and (inv!73464 (c!837809 input!5492)) e!3076114))))

(assert (= (and b!4922455 ((_ is Node!14872) (c!837809 input!5492))) b!4922717))

(assert (= b!4922718 b!4922719))

(assert (= (and b!4922455 ((_ is Leaf!24741) (c!837809 input!5492))) b!4922718))

(declare-fun m!5937902 () Bool)

(assert (=> b!4922717 m!5937902))

(declare-fun m!5937904 () Bool)

(assert (=> b!4922717 m!5937904))

(declare-fun m!5937906 () Bool)

(assert (=> b!4922718 m!5937906))

(assert (=> b!4922455 m!5937566))

(check-sat (not b!4922455) (not b!4922698) (not bm!342899) (not bm!342895) (not d!1583377) (not b!4922520) (not bm!342980) (not setNonEmpty!27526) (not d!1583379) (not b!4922708) (not b!4922660) (not bm!342979) (not bm!342985) (not b!4922519) (not b!4922523) (not bm!342982) (not b!4922504) (not b!4922499) (not b!4922493) (not b!4922496) (not bm!342901) (not bm!342981) (not b!4922717) (not d!1583351) (not d!1583381) (not bm!342894) (not bm!342977) (not d!1583341) (not d!1583355) (not b!4922522) (not d!1583375) (not d!1583353) (not d!1583383) (not bm!342983) (not b!4922703) (not b!4922655) (not d!1583385) (not bm!342896) (not bm!342976) (not b!4922718) (not bm!342897) (not bm!342900) (not b!4922668) (not b!4922524) (not b!4922661) (not b!4922696) (not bm!342984) (not bm!342978) (not b!4922521) (not bm!342898) (not b!4922667) (not b!4922719))
(check-sat)
(get-model)

(declare-fun d!1583397 () Bool)

(declare-fun lt!2024793 () Bool)

(assert (=> d!1583397 (= lt!2024793 (isEmpty!30566 (list!17949 (right!41660 (c!837809 input!5492)))))))

(assert (=> d!1583397 (= lt!2024793 (= (size!37478 (right!41660 (c!837809 input!5492))) 0))))

(assert (=> d!1583397 (= (isEmpty!30568 (right!41660 (c!837809 input!5492))) lt!2024793)))

(declare-fun bs!1179236 () Bool)

(assert (= bs!1179236 d!1583397))

(declare-fun m!5937958 () Bool)

(assert (=> bs!1179236 m!5937958))

(assert (=> bs!1179236 m!5937958))

(declare-fun m!5937960 () Bool)

(assert (=> bs!1179236 m!5937960))

(declare-fun m!5937962 () Bool)

(assert (=> bs!1179236 m!5937962))

(assert (=> b!4922520 d!1583397))

(declare-fun d!1583401 () Bool)

(assert (=> d!1583401 (= (ite c!837884 lt!2024732 lt!2024738) Nil!56685)))

(declare-fun lt!2024799 () Unit!147131)

(declare-fun choose!36032 (List!56809 List!56809 List!56809) Unit!147131)

(assert (=> d!1583401 (= lt!2024799 (choose!36032 (ite c!837884 lt!2024732 lt!2024738) Nil!56685 e!3076079))))

(assert (=> d!1583401 (isPrefix!4961 (ite c!837884 lt!2024732 lt!2024738) e!3076079)))

(assert (=> d!1583401 (= (lemmaIsPrefixSameLengthThenSameList!1119 (ite c!837884 lt!2024732 lt!2024738) Nil!56685 e!3076079) lt!2024799)))

(declare-fun bs!1179237 () Bool)

(assert (= bs!1179237 d!1583401))

(declare-fun m!5937970 () Bool)

(assert (=> bs!1179237 m!5937970))

(declare-fun m!5937972 () Bool)

(assert (=> bs!1179237 m!5937972))

(assert (=> bm!342976 d!1583401))

(declare-fun d!1583405 () Bool)

(declare-fun e!3076143 () Bool)

(assert (=> d!1583405 e!3076143))

(declare-fun res!2101529 () Bool)

(assert (=> d!1583405 (=> res!2101529 e!3076143)))

(declare-fun lt!2024808 () Bool)

(assert (=> d!1583405 (= res!2101529 (not lt!2024808))))

(declare-fun e!3076144 () Bool)

(assert (=> d!1583405 (= lt!2024808 e!3076144)))

(declare-fun res!2101528 () Bool)

(assert (=> d!1583405 (=> res!2101528 e!3076144)))

(assert (=> d!1583405 (= res!2101528 ((_ is Nil!56685) lt!2024324))))

(assert (=> d!1583405 (= (isPrefix!4961 lt!2024324 lt!2024324) lt!2024808)))

(declare-fun b!4922774 () Bool)

(declare-fun e!3076145 () Bool)

(assert (=> b!4922774 (= e!3076145 (isPrefix!4961 (tail!9667 lt!2024324) (tail!9667 lt!2024324)))))

(declare-fun b!4922773 () Bool)

(declare-fun res!2101530 () Bool)

(assert (=> b!4922773 (=> (not res!2101530) (not e!3076145))))

(assert (=> b!4922773 (= res!2101530 (= (head!10520 lt!2024324) (head!10520 lt!2024324)))))

(declare-fun b!4922772 () Bool)

(assert (=> b!4922772 (= e!3076144 e!3076145)))

(declare-fun res!2101527 () Bool)

(assert (=> b!4922772 (=> (not res!2101527) (not e!3076145))))

(assert (=> b!4922772 (= res!2101527 (not ((_ is Nil!56685) lt!2024324)))))

(declare-fun b!4922775 () Bool)

(assert (=> b!4922775 (= e!3076143 (>= (size!37476 lt!2024324) (size!37476 lt!2024324)))))

(assert (= (and d!1583405 (not res!2101528)) b!4922772))

(assert (= (and b!4922772 res!2101527) b!4922773))

(assert (= (and b!4922773 res!2101530) b!4922774))

(assert (= (and d!1583405 (not res!2101529)) b!4922775))

(assert (=> b!4922774 m!5937580))

(assert (=> b!4922774 m!5937580))

(assert (=> b!4922774 m!5937580))

(assert (=> b!4922774 m!5937580))

(declare-fun m!5937986 () Bool)

(assert (=> b!4922774 m!5937986))

(assert (=> b!4922773 m!5937604))

(assert (=> b!4922773 m!5937604))

(assert (=> b!4922775 m!5937596))

(assert (=> b!4922775 m!5937596))

(assert (=> bm!342900 d!1583405))

(declare-fun bs!1179239 () Bool)

(declare-fun b!4922796 () Bool)

(declare-fun d!1583411 () Bool)

(assert (= bs!1179239 (and b!4922796 d!1583411)))

(declare-fun lambda!245144 () Int)

(declare-fun lambda!245141 () Int)

(assert (=> bs!1179239 (not (= lambda!245144 lambda!245141))))

(declare-fun bs!1179240 () Bool)

(declare-fun b!4922797 () Bool)

(assert (= bs!1179240 (and b!4922797 d!1583411)))

(declare-fun lambda!245145 () Int)

(assert (=> bs!1179240 (not (= lambda!245145 lambda!245141))))

(declare-fun bs!1179241 () Bool)

(assert (= bs!1179241 (and b!4922797 b!4922796)))

(assert (=> bs!1179241 (= lambda!245145 lambda!245144)))

(declare-fun bm!342998 () Bool)

(declare-datatypes ((List!56811 0))(
  ( (Nil!56687) (Cons!56687 (h!63135 Context!6030) (t!367263 List!56811)) )
))
(declare-fun lt!2024847 () List!56811)

(declare-fun lt!2024841 () List!56811)

(declare-fun call!343004 () Bool)

(declare-fun c!837920 () Bool)

(declare-fun exists!1242 (List!56811 Int) Bool)

(assert (=> bm!342998 (= call!343004 (exists!1242 (ite c!837920 lt!2024847 lt!2024841) (ite c!837920 lambda!245144 lambda!245145)))))

(declare-fun e!3076163 () Unit!147131)

(declare-fun Unit!147146 () Unit!147131)

(assert (=> b!4922796 (= e!3076163 Unit!147146)))

(declare-fun call!343003 () List!56811)

(assert (=> b!4922796 (= lt!2024847 call!343003)))

(declare-fun lt!2024846 () Unit!147131)

(declare-fun lemmaNotForallThenExists!179 (List!56811 Int) Unit!147131)

(assert (=> b!4922796 (= lt!2024846 (lemmaNotForallThenExists!179 lt!2024847 lambda!245141))))

(assert (=> b!4922796 call!343004))

(declare-fun lt!2024845 () Unit!147131)

(assert (=> b!4922796 (= lt!2024845 lt!2024846)))

(declare-fun lt!2024844 () Bool)

(declare-datatypes ((Option!14159 0))(
  ( (None!14158) (Some!14158 (v!50124 List!56809)) )
))
(declare-fun isEmpty!30570 (Option!14159) Bool)

(declare-fun getLanguageWitness!613 ((InoxSet Context!6030)) Option!14159)

(assert (=> d!1583411 (= lt!2024844 (isEmpty!30570 (getLanguageWitness!613 z!3559)))))

(declare-fun forall!13132 ((InoxSet Context!6030) Int) Bool)

(assert (=> d!1583411 (= lt!2024844 (forall!13132 z!3559 lambda!245141))))

(declare-fun lt!2024842 () Unit!147131)

(assert (=> d!1583411 (= lt!2024842 e!3076163)))

(assert (=> d!1583411 (= c!837920 (not (forall!13132 z!3559 lambda!245141)))))

(assert (=> d!1583411 (= (lostCauseZipper!691 z!3559) lt!2024844)))

(declare-fun bm!342999 () Bool)

(declare-fun toList!7941 ((InoxSet Context!6030)) List!56811)

(assert (=> bm!342999 (= call!343003 (toList!7941 z!3559))))

(declare-fun Unit!147147 () Unit!147131)

(assert (=> b!4922797 (= e!3076163 Unit!147147)))

(assert (=> b!4922797 (= lt!2024841 call!343003)))

(declare-fun lt!2024848 () Unit!147131)

(declare-fun lemmaForallThenNotExists!162 (List!56811 Int) Unit!147131)

(assert (=> b!4922797 (= lt!2024848 (lemmaForallThenNotExists!162 lt!2024841 lambda!245141))))

(assert (=> b!4922797 (not call!343004)))

(declare-fun lt!2024843 () Unit!147131)

(assert (=> b!4922797 (= lt!2024843 lt!2024848)))

(assert (= (and d!1583411 c!837920) b!4922796))

(assert (= (and d!1583411 (not c!837920)) b!4922797))

(assert (= (or b!4922796 b!4922797) bm!342998))

(assert (= (or b!4922796 b!4922797) bm!342999))

(declare-fun m!5938004 () Bool)

(assert (=> b!4922796 m!5938004))

(declare-fun m!5938006 () Bool)

(assert (=> bm!342998 m!5938006))

(declare-fun m!5938008 () Bool)

(assert (=> d!1583411 m!5938008))

(assert (=> d!1583411 m!5938008))

(declare-fun m!5938010 () Bool)

(assert (=> d!1583411 m!5938010))

(declare-fun m!5938012 () Bool)

(assert (=> d!1583411 m!5938012))

(assert (=> d!1583411 m!5938012))

(declare-fun m!5938014 () Bool)

(assert (=> bm!342999 m!5938014))

(declare-fun m!5938016 () Bool)

(assert (=> b!4922797 m!5938016))

(assert (=> d!1583341 d!1583411))

(declare-fun b!4922810 () Bool)

(declare-fun res!2101547 () Bool)

(declare-fun e!3076173 () Bool)

(assert (=> b!4922810 (=> (not res!2101547) (not e!3076173))))

(declare-fun lt!2024865 () List!56809)

(assert (=> b!4922810 (= res!2101547 (= (size!37476 lt!2024865) (+ (size!37476 Nil!56685) (size!37476 lt!2024324))))))

(declare-fun b!4922808 () Bool)

(declare-fun e!3076174 () List!56809)

(assert (=> b!4922808 (= e!3076174 lt!2024324)))

(declare-fun b!4922809 () Bool)

(assert (=> b!4922809 (= e!3076174 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) lt!2024324)))))

(declare-fun d!1583417 () Bool)

(assert (=> d!1583417 e!3076173))

(declare-fun res!2101548 () Bool)

(assert (=> d!1583417 (=> (not res!2101548) (not e!3076173))))

(declare-fun content!10066 (List!56809) (InoxSet C!26956))

(assert (=> d!1583417 (= res!2101548 (= (content!10066 lt!2024865) ((_ map or) (content!10066 Nil!56685) (content!10066 lt!2024324))))))

(assert (=> d!1583417 (= lt!2024865 e!3076174)))

(declare-fun c!837928 () Bool)

(assert (=> d!1583417 (= c!837928 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583417 (= (++!12322 Nil!56685 lt!2024324) lt!2024865)))

(declare-fun b!4922811 () Bool)

(assert (=> b!4922811 (= e!3076173 (or (not (= lt!2024324 Nil!56685)) (= lt!2024865 Nil!56685)))))

(assert (= (and d!1583417 c!837928) b!4922808))

(assert (= (and d!1583417 (not c!837928)) b!4922809))

(assert (= (and d!1583417 res!2101548) b!4922810))

(assert (= (and b!4922810 res!2101547) b!4922811))

(declare-fun m!5938022 () Bool)

(assert (=> b!4922810 m!5938022))

(assert (=> b!4922810 m!5937598))

(assert (=> b!4922810 m!5937596))

(declare-fun m!5938030 () Bool)

(assert (=> b!4922809 m!5938030))

(declare-fun m!5938034 () Bool)

(assert (=> d!1583417 m!5938034))

(declare-fun m!5938038 () Bool)

(assert (=> d!1583417 m!5938038))

(declare-fun m!5938040 () Bool)

(assert (=> d!1583417 m!5938040))

(assert (=> d!1583341 d!1583417))

(declare-fun d!1583419 () Bool)

(declare-fun lt!2024871 () List!56809)

(assert (=> d!1583419 (= (++!12322 Nil!56685 lt!2024871) lt!2024324)))

(declare-fun e!3076177 () List!56809)

(assert (=> d!1583419 (= lt!2024871 e!3076177)))

(declare-fun c!837931 () Bool)

(assert (=> d!1583419 (= c!837931 ((_ is Cons!56685) Nil!56685))))

(assert (=> d!1583419 (>= (size!37476 lt!2024324) (size!37476 Nil!56685))))

(assert (=> d!1583419 (= (getSuffix!2949 lt!2024324 Nil!56685) lt!2024871)))

(declare-fun b!4922816 () Bool)

(assert (=> b!4922816 (= e!3076177 (getSuffix!2949 (tail!9667 lt!2024324) (t!367249 Nil!56685)))))

(declare-fun b!4922817 () Bool)

(assert (=> b!4922817 (= e!3076177 lt!2024324)))

(assert (= (and d!1583419 c!837931) b!4922816))

(assert (= (and d!1583419 (not c!837931)) b!4922817))

(declare-fun m!5938046 () Bool)

(assert (=> d!1583419 m!5938046))

(assert (=> d!1583419 m!5937596))

(assert (=> d!1583419 m!5937598))

(assert (=> b!4922816 m!5937580))

(assert (=> b!4922816 m!5937580))

(declare-fun m!5938048 () Bool)

(assert (=> b!4922816 m!5938048))

(assert (=> d!1583341 d!1583419))

(declare-fun d!1583427 () Bool)

(assert (=> d!1583427 (isPrefix!4961 Nil!56685 (++!12322 Nil!56685 lt!2024324))))

(declare-fun lt!2024874 () Unit!147131)

(declare-fun choose!36034 (List!56809 List!56809) Unit!147131)

(assert (=> d!1583427 (= lt!2024874 (choose!36034 Nil!56685 lt!2024324))))

(assert (=> d!1583427 (= (lemmaConcatTwoListThenFirstIsPrefix!3185 Nil!56685 lt!2024324) lt!2024874)))

(declare-fun bs!1179251 () Bool)

(assert (= bs!1179251 d!1583427))

(assert (=> bs!1179251 m!5937616))

(assert (=> bs!1179251 m!5937616))

(assert (=> bs!1179251 m!5937618))

(declare-fun m!5938060 () Bool)

(assert (=> bs!1179251 m!5938060))

(assert (=> d!1583341 d!1583427))

(declare-fun b!4922826 () Bool)

(declare-fun res!2101551 () Bool)

(declare-fun e!3076182 () Bool)

(assert (=> b!4922826 (=> (not res!2101551) (not e!3076182))))

(declare-fun lt!2024875 () List!56809)

(assert (=> b!4922826 (= res!2101551 (= (size!37476 lt!2024875) (+ (size!37476 (_1!33887 lt!2024389)) (size!37476 (_2!33887 lt!2024389)))))))

(declare-fun b!4922824 () Bool)

(declare-fun e!3076183 () List!56809)

(assert (=> b!4922824 (= e!3076183 (_2!33887 lt!2024389))))

(declare-fun b!4922825 () Bool)

(assert (=> b!4922825 (= e!3076183 (Cons!56685 (h!63133 (_1!33887 lt!2024389)) (++!12322 (t!367249 (_1!33887 lt!2024389)) (_2!33887 lt!2024389))))))

(declare-fun d!1583435 () Bool)

(assert (=> d!1583435 e!3076182))

(declare-fun res!2101552 () Bool)

(assert (=> d!1583435 (=> (not res!2101552) (not e!3076182))))

(assert (=> d!1583435 (= res!2101552 (= (content!10066 lt!2024875) ((_ map or) (content!10066 (_1!33887 lt!2024389)) (content!10066 (_2!33887 lt!2024389)))))))

(assert (=> d!1583435 (= lt!2024875 e!3076183)))

(declare-fun c!837936 () Bool)

(assert (=> d!1583435 (= c!837936 ((_ is Nil!56685) (_1!33887 lt!2024389)))))

(assert (=> d!1583435 (= (++!12322 (_1!33887 lt!2024389) (_2!33887 lt!2024389)) lt!2024875)))

(declare-fun b!4922827 () Bool)

(assert (=> b!4922827 (= e!3076182 (or (not (= (_2!33887 lt!2024389) Nil!56685)) (= lt!2024875 (_1!33887 lt!2024389))))))

(assert (= (and d!1583435 c!837936) b!4922824))

(assert (= (and d!1583435 (not c!837936)) b!4922825))

(assert (= (and d!1583435 res!2101552) b!4922826))

(assert (= (and b!4922826 res!2101551) b!4922827))

(declare-fun m!5938062 () Bool)

(assert (=> b!4922826 m!5938062))

(assert (=> b!4922826 m!5937622))

(declare-fun m!5938064 () Bool)

(assert (=> b!4922826 m!5938064))

(declare-fun m!5938066 () Bool)

(assert (=> b!4922825 m!5938066))

(declare-fun m!5938068 () Bool)

(assert (=> d!1583435 m!5938068))

(declare-fun m!5938070 () Bool)

(assert (=> d!1583435 m!5938070))

(declare-fun m!5938072 () Bool)

(assert (=> d!1583435 m!5938072))

(assert (=> d!1583341 d!1583435))

(declare-fun d!1583437 () Bool)

(declare-fun e!3076184 () Bool)

(assert (=> d!1583437 e!3076184))

(declare-fun res!2101555 () Bool)

(assert (=> d!1583437 (=> res!2101555 e!3076184)))

(declare-fun lt!2024876 () Bool)

(assert (=> d!1583437 (= res!2101555 (not lt!2024876))))

(declare-fun e!3076185 () Bool)

(assert (=> d!1583437 (= lt!2024876 e!3076185)))

(declare-fun res!2101554 () Bool)

(assert (=> d!1583437 (=> res!2101554 e!3076185)))

(assert (=> d!1583437 (= res!2101554 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583437 (= (isPrefix!4961 Nil!56685 (++!12322 Nil!56685 lt!2024324)) lt!2024876)))

(declare-fun b!4922830 () Bool)

(declare-fun e!3076186 () Bool)

(assert (=> b!4922830 (= e!3076186 (isPrefix!4961 (tail!9667 Nil!56685) (tail!9667 (++!12322 Nil!56685 lt!2024324))))))

(declare-fun b!4922829 () Bool)

(declare-fun res!2101556 () Bool)

(assert (=> b!4922829 (=> (not res!2101556) (not e!3076186))))

(assert (=> b!4922829 (= res!2101556 (= (head!10520 Nil!56685) (head!10520 (++!12322 Nil!56685 lt!2024324))))))

(declare-fun b!4922828 () Bool)

(assert (=> b!4922828 (= e!3076185 e!3076186)))

(declare-fun res!2101553 () Bool)

(assert (=> b!4922828 (=> (not res!2101553) (not e!3076186))))

(assert (=> b!4922828 (= res!2101553 (not ((_ is Nil!56685) (++!12322 Nil!56685 lt!2024324))))))

(declare-fun b!4922831 () Bool)

(assert (=> b!4922831 (= e!3076184 (>= (size!37476 (++!12322 Nil!56685 lt!2024324)) (size!37476 Nil!56685)))))

(assert (= (and d!1583437 (not res!2101554)) b!4922828))

(assert (= (and b!4922828 res!2101553) b!4922829))

(assert (= (and b!4922829 res!2101556) b!4922830))

(assert (= (and d!1583437 (not res!2101555)) b!4922831))

(declare-fun m!5938074 () Bool)

(assert (=> b!4922830 m!5938074))

(assert (=> b!4922830 m!5937616))

(declare-fun m!5938076 () Bool)

(assert (=> b!4922830 m!5938076))

(assert (=> b!4922830 m!5938074))

(assert (=> b!4922830 m!5938076))

(declare-fun m!5938078 () Bool)

(assert (=> b!4922830 m!5938078))

(declare-fun m!5938080 () Bool)

(assert (=> b!4922829 m!5938080))

(assert (=> b!4922829 m!5937616))

(declare-fun m!5938082 () Bool)

(assert (=> b!4922829 m!5938082))

(assert (=> b!4922831 m!5937616))

(declare-fun m!5938084 () Bool)

(assert (=> b!4922831 m!5938084))

(assert (=> b!4922831 m!5937598))

(assert (=> d!1583341 d!1583437))

(declare-fun d!1583439 () Bool)

(assert (=> d!1583439 (= lt!2024324 lt!2024396)))

(declare-fun lt!2024883 () Unit!147131)

(declare-fun choose!36035 (List!56809 List!56809 List!56809 List!56809 List!56809) Unit!147131)

(assert (=> d!1583439 (= lt!2024883 (choose!36035 Nil!56685 lt!2024324 Nil!56685 lt!2024396 lt!2024324))))

(assert (=> d!1583439 (isPrefix!4961 Nil!56685 lt!2024324)))

(assert (=> d!1583439 (= (lemmaSamePrefixThenSameSuffix!2365 Nil!56685 lt!2024324 Nil!56685 lt!2024396 lt!2024324) lt!2024883)))

(declare-fun bs!1179253 () Bool)

(assert (= bs!1179253 d!1583439))

(declare-fun m!5938114 () Bool)

(assert (=> bs!1179253 m!5938114))

(declare-fun m!5938116 () Bool)

(assert (=> bs!1179253 m!5938116))

(assert (=> d!1583341 d!1583439))

(declare-fun d!1583449 () Bool)

(assert (=> d!1583449 (isPrefix!4961 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750))))

(declare-fun lt!2024888 () Unit!147131)

(declare-fun choose!36036 (List!56809 List!56809) Unit!147131)

(assert (=> d!1583449 (= lt!2024888 (choose!36036 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750)))))

(assert (=> d!1583449 (= (lemmaIsPrefixRefl!3357 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750)) lt!2024888)))

(declare-fun bs!1179254 () Bool)

(assert (= bs!1179254 d!1583449))

(assert (=> bs!1179254 m!5937850))

(declare-fun m!5938120 () Bool)

(assert (=> bs!1179254 m!5938120))

(assert (=> bm!342985 d!1583449))

(assert (=> d!1583355 d!1583411))

(assert (=> d!1583355 d!1583417))

(declare-fun d!1583451 () Bool)

(declare-fun lt!2024892 () Int)

(assert (=> d!1583451 (>= lt!2024892 0)))

(declare-fun e!3076198 () Int)

(assert (=> d!1583451 (= lt!2024892 e!3076198)))

(declare-fun c!837943 () Bool)

(assert (=> d!1583451 (= c!837943 ((_ is Nil!56685) (_1!33887 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326))))))

(assert (=> d!1583451 (= (size!37476 (_1!33887 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326))) lt!2024892)))

(declare-fun b!4922854 () Bool)

(assert (=> b!4922854 (= e!3076198 0)))

(declare-fun b!4922855 () Bool)

(assert (=> b!4922855 (= e!3076198 (+ 1 (size!37476 (t!367249 (_1!33887 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326))))))))

(assert (= (and d!1583451 c!837943) b!4922854))

(assert (= (and d!1583451 (not c!837943)) b!4922855))

(declare-fun m!5938126 () Bool)

(assert (=> b!4922855 m!5938126))

(assert (=> d!1583355 d!1583451))

(declare-fun bm!343007 () Bool)

(declare-fun call!343015 () Unit!147131)

(assert (=> bm!343007 (= call!343015 (lemmaIsPrefixSameLengthThenSameList!1119 (list!17947 input!5492) Nil!56685 (list!17947 input!5492)))))

(declare-fun b!4922856 () Bool)

(declare-fun c!837947 () Bool)

(declare-fun call!343013 () Bool)

(assert (=> b!4922856 (= c!837947 call!343013)))

(declare-fun lt!2024899 () Unit!147131)

(declare-fun lt!2024918 () Unit!147131)

(assert (=> b!4922856 (= lt!2024899 lt!2024918)))

(declare-fun lt!2024911 () C!26956)

(declare-fun lt!2024914 () List!56809)

(assert (=> b!4922856 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685)) lt!2024914) (list!17947 input!5492))))

(assert (=> b!4922856 (= lt!2024918 (lemmaMoveElementToOtherListKeepsConcatEq!1391 Nil!56685 lt!2024911 lt!2024914 (list!17947 input!5492)))))

(assert (=> b!4922856 (= lt!2024914 (tail!9667 lt!2024324))))

(assert (=> b!4922856 (= lt!2024911 (head!10520 lt!2024324))))

(declare-fun lt!2024903 () Unit!147131)

(declare-fun lt!2024905 () Unit!147131)

(assert (=> b!4922856 (= lt!2024903 lt!2024905)))

(assert (=> b!4922856 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685)) (list!17947 input!5492))))

(assert (=> b!4922856 (= lt!2024905 (lemmaAddHeadSuffixToPrefixStillPrefix!773 Nil!56685 (list!17947 input!5492)))))

(declare-fun lt!2024893 () List!56809)

(assert (=> b!4922856 (= lt!2024893 (++!12322 Nil!56685 (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))

(declare-fun lt!2024906 () Unit!147131)

(declare-fun e!3076201 () Unit!147131)

(assert (=> b!4922856 (= lt!2024906 e!3076201)))

(declare-fun c!837945 () Bool)

(assert (=> b!4922856 (= c!837945 (= (size!37476 Nil!56685) (size!37476 (list!17947 input!5492))))))

(declare-fun lt!2024913 () Unit!147131)

(declare-fun lt!2024897 () Unit!147131)

(assert (=> b!4922856 (= lt!2024913 lt!2024897)))

(assert (=> b!4922856 (<= (size!37476 Nil!56685) (size!37476 (list!17947 input!5492)))))

(assert (=> b!4922856 (= lt!2024897 (lemmaIsPrefixThenSmallerEqSize!685 Nil!56685 (list!17947 input!5492)))))

(declare-fun e!3076200 () tuple2!61168)

(declare-fun e!3076204 () tuple2!61168)

(assert (=> b!4922856 (= e!3076200 e!3076204)))

(declare-fun b!4922857 () Bool)

(declare-fun e!3076203 () tuple2!61168)

(assert (=> b!4922857 (= e!3076203 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun b!4922858 () Bool)

(declare-fun e!3076206 () tuple2!61168)

(declare-fun lt!2024915 () tuple2!61168)

(assert (=> b!4922858 (= e!3076206 lt!2024915)))

(declare-fun bm!343008 () Bool)

(declare-fun call!343016 () (InoxSet Context!6030))

(declare-fun call!343017 () C!26956)

(assert (=> bm!343008 (= call!343016 (derivationStepZipper!588 z!3559 call!343017))))

(declare-fun call!343018 () List!56809)

(declare-fun call!343011 () tuple2!61168)

(declare-fun bm!343009 () Bool)

(assert (=> bm!343009 (= call!343011 (findLongestMatchInnerZipper!58 call!343016 lt!2024893 (+ 0 1) call!343018 (list!17947 input!5492) lt!2024326))))

(declare-fun bm!343010 () Bool)

(assert (=> bm!343010 (= call!343017 (head!10520 lt!2024324))))

(declare-fun b!4922859 () Bool)

(declare-fun e!3076205 () Bool)

(declare-fun e!3076202 () Bool)

(assert (=> b!4922859 (= e!3076205 e!3076202)))

(declare-fun res!2101568 () Bool)

(assert (=> b!4922859 (=> res!2101568 e!3076202)))

(declare-fun lt!2024900 () tuple2!61168)

(assert (=> b!4922859 (= res!2101568 (isEmpty!30566 (_1!33887 lt!2024900)))))

(declare-fun bm!343011 () Bool)

(declare-fun call!343014 () Unit!147131)

(assert (=> bm!343011 (= call!343014 (lemmaIsPrefixRefl!3357 (list!17947 input!5492) (list!17947 input!5492)))))

(declare-fun b!4922860 () Bool)

(declare-fun Unit!147150 () Unit!147131)

(assert (=> b!4922860 (= e!3076201 Unit!147150)))

(declare-fun lt!2024895 () Unit!147131)

(assert (=> b!4922860 (= lt!2024895 call!343014)))

(declare-fun call!343012 () Bool)

(assert (=> b!4922860 call!343012))

(declare-fun lt!2024896 () Unit!147131)

(assert (=> b!4922860 (= lt!2024896 lt!2024895)))

(declare-fun lt!2024894 () Unit!147131)

(assert (=> b!4922860 (= lt!2024894 call!343015)))

(assert (=> b!4922860 (= (list!17947 input!5492) Nil!56685)))

(declare-fun lt!2024902 () Unit!147131)

(assert (=> b!4922860 (= lt!2024902 lt!2024894)))

(assert (=> b!4922860 false))

(declare-fun b!4922861 () Bool)

(assert (=> b!4922861 (= e!3076204 call!343011)))

(declare-fun b!4922862 () Bool)

(assert (=> b!4922862 (= e!3076204 e!3076206)))

(assert (=> b!4922862 (= lt!2024915 call!343011)))

(declare-fun c!837948 () Bool)

(assert (=> b!4922862 (= c!837948 (isEmpty!30566 (_1!33887 lt!2024915)))))

(declare-fun b!4922863 () Bool)

(declare-fun Unit!147151 () Unit!147131)

(assert (=> b!4922863 (= e!3076201 Unit!147151)))

(declare-fun b!4922864 () Bool)

(assert (=> b!4922864 (= e!3076203 e!3076200)))

(declare-fun c!837946 () Bool)

(assert (=> b!4922864 (= c!837946 (= 0 lt!2024326))))

(declare-fun bm!343012 () Bool)

(assert (=> bm!343012 (= call!343012 (isPrefix!4961 (list!17947 input!5492) (list!17947 input!5492)))))

(declare-fun b!4922865 () Bool)

(declare-fun e!3076199 () tuple2!61168)

(assert (=> b!4922865 (= e!3076199 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun bm!343013 () Bool)

(assert (=> bm!343013 (= call!343018 (tail!9667 lt!2024324))))

(declare-fun d!1583455 () Bool)

(assert (=> d!1583455 e!3076205))

(declare-fun res!2101567 () Bool)

(assert (=> d!1583455 (=> (not res!2101567) (not e!3076205))))

(assert (=> d!1583455 (= res!2101567 (= (++!12322 (_1!33887 lt!2024900) (_2!33887 lt!2024900)) (list!17947 input!5492)))))

(assert (=> d!1583455 (= lt!2024900 e!3076203)))

(declare-fun c!837944 () Bool)

(assert (=> d!1583455 (= c!837944 (lostCauseZipper!691 z!3559))))

(declare-fun lt!2024901 () Unit!147131)

(declare-fun Unit!147152 () Unit!147131)

(assert (=> d!1583455 (= lt!2024901 Unit!147152)))

(assert (=> d!1583455 (= (getSuffix!2949 (list!17947 input!5492) Nil!56685) lt!2024324)))

(declare-fun lt!2024908 () Unit!147131)

(declare-fun lt!2024909 () Unit!147131)

(assert (=> d!1583455 (= lt!2024908 lt!2024909)))

(declare-fun lt!2024907 () List!56809)

(assert (=> d!1583455 (= lt!2024324 lt!2024907)))

(assert (=> d!1583455 (= lt!2024909 (lemmaSamePrefixThenSameSuffix!2365 Nil!56685 lt!2024324 Nil!56685 lt!2024907 (list!17947 input!5492)))))

(assert (=> d!1583455 (= lt!2024907 (getSuffix!2949 (list!17947 input!5492) Nil!56685))))

(declare-fun lt!2024898 () Unit!147131)

(declare-fun lt!2024910 () Unit!147131)

(assert (=> d!1583455 (= lt!2024898 lt!2024910)))

(assert (=> d!1583455 (isPrefix!4961 Nil!56685 (++!12322 Nil!56685 lt!2024324))))

(assert (=> d!1583455 (= lt!2024910 (lemmaConcatTwoListThenFirstIsPrefix!3185 Nil!56685 lt!2024324))))

(assert (=> d!1583455 (= (++!12322 Nil!56685 lt!2024324) (list!17947 input!5492))))

(assert (=> d!1583455 (= (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326) lt!2024900)))

(declare-fun bm!343006 () Bool)

(assert (=> bm!343006 (= call!343013 (nullableZipper!810 z!3559))))

(declare-fun b!4922866 () Bool)

(assert (=> b!4922866 (= e!3076206 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun b!4922867 () Bool)

(assert (=> b!4922867 (= e!3076202 (>= (size!37476 (_1!33887 lt!2024900)) (size!37476 Nil!56685)))))

(declare-fun b!4922868 () Bool)

(assert (=> b!4922868 (= e!3076199 (tuple2!61169 Nil!56685 Nil!56685))))

(declare-fun b!4922869 () Bool)

(declare-fun c!837949 () Bool)

(assert (=> b!4922869 (= c!837949 call!343013)))

(declare-fun lt!2024917 () Unit!147131)

(declare-fun lt!2024912 () Unit!147131)

(assert (=> b!4922869 (= lt!2024917 lt!2024912)))

(assert (=> b!4922869 (= (list!17947 input!5492) Nil!56685)))

(assert (=> b!4922869 (= lt!2024912 call!343015)))

(declare-fun lt!2024904 () Unit!147131)

(declare-fun lt!2024916 () Unit!147131)

(assert (=> b!4922869 (= lt!2024904 lt!2024916)))

(assert (=> b!4922869 call!343012))

(assert (=> b!4922869 (= lt!2024916 call!343014)))

(assert (=> b!4922869 (= e!3076200 e!3076199)))

(assert (= (and d!1583455 c!837944) b!4922857))

(assert (= (and d!1583455 (not c!837944)) b!4922864))

(assert (= (and b!4922864 c!837946) b!4922869))

(assert (= (and b!4922864 (not c!837946)) b!4922856))

(assert (= (and b!4922869 c!837949) b!4922868))

(assert (= (and b!4922869 (not c!837949)) b!4922865))

(assert (= (and b!4922856 c!837945) b!4922860))

(assert (= (and b!4922856 (not c!837945)) b!4922863))

(assert (= (and b!4922856 c!837947) b!4922862))

(assert (= (and b!4922856 (not c!837947)) b!4922861))

(assert (= (and b!4922862 c!837948) b!4922866))

(assert (= (and b!4922862 (not c!837948)) b!4922858))

(assert (= (or b!4922862 b!4922861) bm!343013))

(assert (= (or b!4922862 b!4922861) bm!343010))

(assert (= (or b!4922862 b!4922861) bm!343008))

(assert (= (or b!4922862 b!4922861) bm!343009))

(assert (= (or b!4922869 b!4922860) bm!343012))

(assert (= (or b!4922869 b!4922860) bm!343011))

(assert (= (or b!4922869 b!4922860) bm!343007))

(assert (= (or b!4922869 b!4922856) bm!343006))

(assert (= (and d!1583455 res!2101567) b!4922859))

(assert (= (and b!4922859 (not res!2101568)) b!4922867))

(assert (=> bm!343007 m!5937560))

(assert (=> bm!343007 m!5937560))

(declare-fun m!5938140 () Bool)

(assert (=> bm!343007 m!5938140))

(declare-fun m!5938142 () Bool)

(assert (=> b!4922862 m!5938142))

(assert (=> bm!343006 m!5937578))

(assert (=> bm!343013 m!5937580))

(assert (=> b!4922856 m!5937858))

(declare-fun m!5938144 () Bool)

(assert (=> b!4922856 m!5938144))

(declare-fun m!5938146 () Bool)

(assert (=> b!4922856 m!5938146))

(declare-fun m!5938148 () Bool)

(assert (=> b!4922856 m!5938148))

(declare-fun m!5938150 () Bool)

(assert (=> b!4922856 m!5938150))

(assert (=> b!4922856 m!5937560))

(declare-fun m!5938152 () Bool)

(assert (=> b!4922856 m!5938152))

(assert (=> b!4922856 m!5937594))

(assert (=> b!4922856 m!5937560))

(assert (=> b!4922856 m!5937644))

(assert (=> b!4922856 m!5937598))

(assert (=> b!4922856 m!5937560))

(assert (=> b!4922856 m!5937858))

(assert (=> b!4922856 m!5937560))

(declare-fun m!5938154 () Bool)

(assert (=> b!4922856 m!5938154))

(assert (=> b!4922856 m!5937580))

(assert (=> b!4922856 m!5937560))

(declare-fun m!5938156 () Bool)

(assert (=> b!4922856 m!5938156))

(assert (=> b!4922856 m!5938148))

(assert (=> b!4922856 m!5937604))

(assert (=> b!4922856 m!5938146))

(assert (=> b!4922856 m!5937560))

(declare-fun m!5938158 () Bool)

(assert (=> b!4922856 m!5938158))

(assert (=> d!1583455 m!5937608))

(declare-fun m!5938160 () Bool)

(assert (=> d!1583455 m!5938160))

(assert (=> d!1583455 m!5937612))

(assert (=> d!1583455 m!5937560))

(declare-fun m!5938162 () Bool)

(assert (=> d!1583455 m!5938162))

(assert (=> d!1583455 m!5937616))

(assert (=> d!1583455 m!5937560))

(assert (=> d!1583455 m!5937858))

(assert (=> d!1583455 m!5937616))

(assert (=> d!1583455 m!5937618))

(assert (=> bm!343010 m!5937604))

(assert (=> bm!343009 m!5937560))

(declare-fun m!5938164 () Bool)

(assert (=> bm!343009 m!5938164))

(declare-fun m!5938166 () Bool)

(assert (=> b!4922867 m!5938166))

(assert (=> b!4922867 m!5937598))

(assert (=> bm!343011 m!5937560))

(assert (=> bm!343011 m!5937560))

(declare-fun m!5938168 () Bool)

(assert (=> bm!343011 m!5938168))

(declare-fun m!5938170 () Bool)

(assert (=> b!4922859 m!5938170))

(declare-fun m!5938172 () Bool)

(assert (=> bm!343008 m!5938172))

(assert (=> bm!343012 m!5937560))

(assert (=> bm!343012 m!5937560))

(declare-fun m!5938174 () Bool)

(assert (=> bm!343012 m!5938174))

(assert (=> d!1583355 d!1583455))

(declare-fun d!1583465 () Bool)

(declare-fun lt!2024963 () List!56809)

(assert (=> d!1583465 (= (++!12322 Nil!56685 lt!2024963) (list!17947 input!5492))))

(declare-fun e!3076217 () List!56809)

(assert (=> d!1583465 (= lt!2024963 e!3076217)))

(declare-fun c!837960 () Bool)

(assert (=> d!1583465 (= c!837960 ((_ is Cons!56685) Nil!56685))))

(assert (=> d!1583465 (>= (size!37476 (list!17947 input!5492)) (size!37476 Nil!56685))))

(assert (=> d!1583465 (= (getSuffix!2949 (list!17947 input!5492) Nil!56685) lt!2024963)))

(declare-fun b!4922890 () Bool)

(assert (=> b!4922890 (= e!3076217 (getSuffix!2949 (tail!9667 (list!17947 input!5492)) (t!367249 Nil!56685)))))

(declare-fun b!4922891 () Bool)

(assert (=> b!4922891 (= e!3076217 (list!17947 input!5492))))

(assert (= (and d!1583465 c!837960) b!4922890))

(assert (= (and d!1583465 (not c!837960)) b!4922891))

(declare-fun m!5938176 () Bool)

(assert (=> d!1583465 m!5938176))

(assert (=> d!1583465 m!5937560))

(assert (=> d!1583465 m!5937644))

(assert (=> d!1583465 m!5937598))

(assert (=> b!4922890 m!5937560))

(declare-fun m!5938178 () Bool)

(assert (=> b!4922890 m!5938178))

(assert (=> b!4922890 m!5938178))

(declare-fun m!5938180 () Bool)

(assert (=> b!4922890 m!5938180))

(assert (=> d!1583355 d!1583465))

(declare-fun d!1583467 () Bool)

(assert (=> d!1583467 (= lt!2024324 lt!2024720)))

(declare-fun lt!2024964 () Unit!147131)

(assert (=> d!1583467 (= lt!2024964 (choose!36035 Nil!56685 lt!2024324 Nil!56685 lt!2024720 (list!17947 input!5492)))))

(assert (=> d!1583467 (isPrefix!4961 Nil!56685 (list!17947 input!5492))))

(assert (=> d!1583467 (= (lemmaSamePrefixThenSameSuffix!2365 Nil!56685 lt!2024324 Nil!56685 lt!2024720 (list!17947 input!5492)) lt!2024964)))

(declare-fun bs!1179256 () Bool)

(assert (= bs!1179256 d!1583467))

(assert (=> bs!1179256 m!5937560))

(declare-fun m!5938182 () Bool)

(assert (=> bs!1179256 m!5938182))

(assert (=> bs!1179256 m!5937560))

(declare-fun m!5938184 () Bool)

(assert (=> bs!1179256 m!5938184))

(assert (=> d!1583355 d!1583467))

(assert (=> d!1583355 d!1583427))

(assert (=> d!1583355 d!1583377))

(assert (=> d!1583355 d!1583437))

(declare-fun d!1583469 () Bool)

(declare-fun e!3076218 () Bool)

(assert (=> d!1583469 e!3076218))

(declare-fun res!2101571 () Bool)

(assert (=> d!1583469 (=> res!2101571 e!3076218)))

(declare-fun lt!2024965 () Bool)

(assert (=> d!1583469 (= res!2101571 (not lt!2024965))))

(declare-fun e!3076219 () Bool)

(assert (=> d!1583469 (= lt!2024965 e!3076219)))

(declare-fun res!2101570 () Bool)

(assert (=> d!1583469 (=> res!2101570 e!3076219)))

(assert (=> d!1583469 (= res!2101570 ((_ is Nil!56685) (ite c!837884 lt!2024726 lt!2024713)))))

(assert (=> d!1583469 (= (isPrefix!4961 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750)) lt!2024965)))

(declare-fun b!4922894 () Bool)

(declare-fun e!3076220 () Bool)

(assert (=> b!4922894 (= e!3076220 (isPrefix!4961 (tail!9667 (ite c!837884 lt!2024726 lt!2024713)) (tail!9667 (ite c!837884 lt!2024744 lt!2024750))))))

(declare-fun b!4922893 () Bool)

(declare-fun res!2101572 () Bool)

(assert (=> b!4922893 (=> (not res!2101572) (not e!3076220))))

(assert (=> b!4922893 (= res!2101572 (= (head!10520 (ite c!837884 lt!2024726 lt!2024713)) (head!10520 (ite c!837884 lt!2024744 lt!2024750))))))

(declare-fun b!4922892 () Bool)

(assert (=> b!4922892 (= e!3076219 e!3076220)))

(declare-fun res!2101569 () Bool)

(assert (=> b!4922892 (=> (not res!2101569) (not e!3076220))))

(assert (=> b!4922892 (= res!2101569 (not ((_ is Nil!56685) (ite c!837884 lt!2024744 lt!2024750))))))

(declare-fun b!4922895 () Bool)

(assert (=> b!4922895 (= e!3076218 (>= (size!37476 (ite c!837884 lt!2024744 lt!2024750)) (size!37476 (ite c!837884 lt!2024726 lt!2024713))))))

(assert (= (and d!1583469 (not res!2101570)) b!4922892))

(assert (= (and b!4922892 res!2101569) b!4922893))

(assert (= (and b!4922893 res!2101572) b!4922894))

(assert (= (and d!1583469 (not res!2101571)) b!4922895))

(declare-fun m!5938186 () Bool)

(assert (=> b!4922894 m!5938186))

(declare-fun m!5938188 () Bool)

(assert (=> b!4922894 m!5938188))

(assert (=> b!4922894 m!5938186))

(assert (=> b!4922894 m!5938188))

(declare-fun m!5938190 () Bool)

(assert (=> b!4922894 m!5938190))

(declare-fun m!5938192 () Bool)

(assert (=> b!4922893 m!5938192))

(declare-fun m!5938194 () Bool)

(assert (=> b!4922893 m!5938194))

(declare-fun m!5938196 () Bool)

(assert (=> b!4922895 m!5938196))

(declare-fun m!5938198 () Bool)

(assert (=> b!4922895 m!5938198))

(assert (=> bm!342984 d!1583469))

(assert (=> d!1583379 d!1583349))

(declare-fun d!1583471 () Bool)

(assert (=> d!1583471 (= (inv!73470 (xs!18192 (c!837809 input!5492))) (<= (size!37476 (innerList!14960 (xs!18192 (c!837809 input!5492)))) 2147483647))))

(declare-fun bs!1179257 () Bool)

(assert (= bs!1179257 d!1583471))

(declare-fun m!5938244 () Bool)

(assert (=> bs!1179257 m!5938244))

(assert (=> b!4922718 d!1583471))

(declare-fun d!1583473 () Bool)

(declare-fun res!2101579 () Bool)

(declare-fun e!3076233 () Bool)

(assert (=> d!1583473 (=> res!2101579 e!3076233)))

(assert (=> d!1583473 (= res!2101579 ((_ is Nil!56686) (exprs!3515 setElem!27520)))))

(assert (=> d!1583473 (= (forall!13131 (exprs!3515 setElem!27520) lambda!245124) e!3076233)))

(declare-fun b!4922914 () Bool)

(declare-fun e!3076234 () Bool)

(assert (=> b!4922914 (= e!3076233 e!3076234)))

(declare-fun res!2101580 () Bool)

(assert (=> b!4922914 (=> (not res!2101580) (not e!3076234))))

(declare-fun dynLambda!23005 (Int Regex!13373) Bool)

(assert (=> b!4922914 (= res!2101580 (dynLambda!23005 lambda!245124 (h!63134 (exprs!3515 setElem!27520))))))

(declare-fun b!4922915 () Bool)

(assert (=> b!4922915 (= e!3076234 (forall!13131 (t!367250 (exprs!3515 setElem!27520)) lambda!245124))))

(assert (= (and d!1583473 (not res!2101579)) b!4922914))

(assert (= (and b!4922914 res!2101580) b!4922915))

(declare-fun b_lambda!196265 () Bool)

(assert (=> (not b_lambda!196265) (not b!4922914)))

(declare-fun m!5938274 () Bool)

(assert (=> b!4922914 m!5938274))

(declare-fun m!5938276 () Bool)

(assert (=> b!4922915 m!5938276))

(assert (=> d!1583385 d!1583473))

(declare-fun d!1583481 () Bool)

(assert (=> d!1583481 (= (height!1982 (left!41330 (c!837809 input!5492))) (ite ((_ is Empty!14872) (left!41330 (c!837809 input!5492))) 0 (ite ((_ is Leaf!24741) (left!41330 (c!837809 input!5492))) 1 (cheight!15083 (left!41330 (c!837809 input!5492))))))))

(assert (=> b!4922524 d!1583481))

(declare-fun d!1583483 () Bool)

(assert (=> d!1583483 (= (height!1982 (right!41660 (c!837809 input!5492))) (ite ((_ is Empty!14872) (right!41660 (c!837809 input!5492))) 0 (ite ((_ is Leaf!24741) (right!41660 (c!837809 input!5492))) 1 (cheight!15083 (right!41660 (c!837809 input!5492))))))))

(assert (=> b!4922524 d!1583483))

(declare-fun d!1583485 () Bool)

(declare-fun lt!2024992 () Int)

(assert (=> d!1583485 (>= lt!2024992 0)))

(declare-fun e!3076235 () Int)

(assert (=> d!1583485 (= lt!2024992 e!3076235)))

(declare-fun c!837967 () Bool)

(assert (=> d!1583485 (= c!837967 ((_ is Nil!56685) (_1!33887 lt!2024389)))))

(assert (=> d!1583485 (= (size!37476 (_1!33887 lt!2024389)) lt!2024992)))

(declare-fun b!4922916 () Bool)

(assert (=> b!4922916 (= e!3076235 0)))

(declare-fun b!4922917 () Bool)

(assert (=> b!4922917 (= e!3076235 (+ 1 (size!37476 (t!367249 (_1!33887 lt!2024389)))))))

(assert (= (and d!1583485 c!837967) b!4922916))

(assert (= (and d!1583485 (not c!837967)) b!4922917))

(declare-fun m!5938278 () Bool)

(assert (=> b!4922917 m!5938278))

(assert (=> b!4922504 d!1583485))

(declare-fun d!1583487 () Bool)

(declare-fun lt!2024993 () Int)

(assert (=> d!1583487 (>= lt!2024993 0)))

(declare-fun e!3076236 () Int)

(assert (=> d!1583487 (= lt!2024993 e!3076236)))

(declare-fun c!837968 () Bool)

(assert (=> d!1583487 (= c!837968 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583487 (= (size!37476 Nil!56685) lt!2024993)))

(declare-fun b!4922918 () Bool)

(assert (=> b!4922918 (= e!3076236 0)))

(declare-fun b!4922919 () Bool)

(assert (=> b!4922919 (= e!3076236 (+ 1 (size!37476 (t!367249 Nil!56685))))))

(assert (= (and d!1583487 c!837968) b!4922918))

(assert (= (and d!1583487 (not c!837968)) b!4922919))

(declare-fun m!5938286 () Bool)

(assert (=> b!4922919 m!5938286))

(assert (=> b!4922504 d!1583487))

(declare-fun d!1583489 () Bool)

(declare-fun lt!2024994 () Bool)

(assert (=> d!1583489 (= lt!2024994 (isEmpty!30566 (list!17949 (left!41330 (c!837809 input!5492)))))))

(assert (=> d!1583489 (= lt!2024994 (= (size!37478 (left!41330 (c!837809 input!5492))) 0))))

(assert (=> d!1583489 (= (isEmpty!30568 (left!41330 (c!837809 input!5492))) lt!2024994)))

(declare-fun bs!1179258 () Bool)

(assert (= bs!1179258 d!1583489))

(declare-fun m!5938300 () Bool)

(assert (=> bs!1179258 m!5938300))

(assert (=> bs!1179258 m!5938300))

(declare-fun m!5938306 () Bool)

(assert (=> bs!1179258 m!5938306))

(declare-fun m!5938310 () Bool)

(assert (=> bs!1179258 m!5938310))

(assert (=> b!4922522 d!1583489))

(declare-fun b!4922922 () Bool)

(declare-fun res!2101581 () Bool)

(declare-fun e!3076237 () Bool)

(assert (=> b!4922922 (=> (not res!2101581) (not e!3076237))))

(declare-fun lt!2024995 () List!56809)

(assert (=> b!4922922 (= res!2101581 (= (size!37476 lt!2024995) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 call!342985 Nil!56685)))))))

(declare-fun b!4922920 () Bool)

(declare-fun e!3076238 () List!56809)

(assert (=> b!4922920 (= e!3076238 (Cons!56685 call!342985 Nil!56685))))

(declare-fun b!4922921 () Bool)

(assert (=> b!4922921 (= e!3076238 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 call!342985 Nil!56685))))))

(declare-fun d!1583491 () Bool)

(assert (=> d!1583491 e!3076237))

(declare-fun res!2101582 () Bool)

(assert (=> d!1583491 (=> (not res!2101582) (not e!3076237))))

(assert (=> d!1583491 (= res!2101582 (= (content!10066 lt!2024995) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 call!342985 Nil!56685)))))))

(assert (=> d!1583491 (= lt!2024995 e!3076238)))

(declare-fun c!837969 () Bool)

(assert (=> d!1583491 (= c!837969 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583491 (= (++!12322 Nil!56685 (Cons!56685 call!342985 Nil!56685)) lt!2024995)))

(declare-fun b!4922923 () Bool)

(assert (=> b!4922923 (= e!3076237 (or (not (= (Cons!56685 call!342985 Nil!56685) Nil!56685)) (= lt!2024995 Nil!56685)))))

(assert (= (and d!1583491 c!837969) b!4922920))

(assert (= (and d!1583491 (not c!837969)) b!4922921))

(assert (= (and d!1583491 res!2101582) b!4922922))

(assert (= (and b!4922922 res!2101581) b!4922923))

(declare-fun m!5938334 () Bool)

(assert (=> b!4922922 m!5938334))

(assert (=> b!4922922 m!5937598))

(declare-fun m!5938340 () Bool)

(assert (=> b!4922922 m!5938340))

(declare-fun m!5938344 () Bool)

(assert (=> b!4922921 m!5938344))

(declare-fun m!5938346 () Bool)

(assert (=> d!1583491 m!5938346))

(assert (=> d!1583491 m!5938038))

(declare-fun m!5938348 () Bool)

(assert (=> d!1583491 m!5938348))

(assert (=> bm!342978 d!1583491))

(declare-fun d!1583495 () Bool)

(assert (=> d!1583495 (= (tail!9667 lt!2024324) (t!367249 lt!2024324))))

(assert (=> bm!342901 d!1583495))

(declare-fun b!4922938 () Bool)

(declare-fun e!3076246 () List!56809)

(declare-fun list!17950 (IArray!29805) List!56809)

(assert (=> b!4922938 (= e!3076246 (list!17950 (xs!18192 (c!837809 (_1!33888 lt!2024328)))))))

(declare-fun b!4922936 () Bool)

(declare-fun e!3076245 () List!56809)

(assert (=> b!4922936 (= e!3076245 Nil!56685)))

(declare-fun d!1583497 () Bool)

(declare-fun c!837976 () Bool)

(assert (=> d!1583497 (= c!837976 ((_ is Empty!14872) (c!837809 (_1!33888 lt!2024328))))))

(assert (=> d!1583497 (= (list!17949 (c!837809 (_1!33888 lt!2024328))) e!3076245)))

(declare-fun b!4922939 () Bool)

(assert (=> b!4922939 (= e!3076246 (++!12322 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328)))) (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328))))))))

(declare-fun b!4922937 () Bool)

(assert (=> b!4922937 (= e!3076245 e!3076246)))

(declare-fun c!837977 () Bool)

(assert (=> b!4922937 (= c!837977 ((_ is Leaf!24741) (c!837809 (_1!33888 lt!2024328))))))

(assert (= (and d!1583497 c!837976) b!4922936))

(assert (= (and d!1583497 (not c!837976)) b!4922937))

(assert (= (and b!4922937 c!837977) b!4922938))

(assert (= (and b!4922937 (not c!837977)) b!4922939))

(declare-fun m!5938362 () Bool)

(assert (=> b!4922938 m!5938362))

(declare-fun m!5938364 () Bool)

(assert (=> b!4922939 m!5938364))

(declare-fun m!5938366 () Bool)

(assert (=> b!4922939 m!5938366))

(assert (=> b!4922939 m!5938364))

(assert (=> b!4922939 m!5938366))

(declare-fun m!5938368 () Bool)

(assert (=> b!4922939 m!5938368))

(assert (=> d!1583353 d!1583497))

(declare-fun d!1583505 () Bool)

(assert (=> d!1583505 (= lt!2024324 Nil!56685)))

(declare-fun lt!2024996 () Unit!147131)

(assert (=> d!1583505 (= lt!2024996 (choose!36032 lt!2024324 Nil!56685 lt!2024324))))

(assert (=> d!1583505 (isPrefix!4961 lt!2024324 lt!2024324)))

(assert (=> d!1583505 (= (lemmaIsPrefixSameLengthThenSameList!1119 lt!2024324 Nil!56685 lt!2024324) lt!2024996)))

(declare-fun bs!1179261 () Bool)

(assert (= bs!1179261 d!1583505))

(declare-fun m!5938370 () Bool)

(assert (=> bs!1179261 m!5938370))

(assert (=> bs!1179261 m!5937630))

(assert (=> bm!342895 d!1583505))

(assert (=> b!4922655 d!1583377))

(declare-fun d!1583507 () Bool)

(assert (=> d!1583507 (and (= lt!2024329 (_1!33887 lt!2024327)) (= lt!2024323 (_2!33887 lt!2024327)))))

(assert (=> d!1583507 true))

(declare-fun _$50!399 () Unit!147131)

(assert (=> d!1583507 (= (choose!36031 lt!2024329 lt!2024323 (_1!33887 lt!2024327) (_2!33887 lt!2024327)) _$50!399)))

(assert (=> d!1583383 d!1583507))

(declare-fun b!4922946 () Bool)

(declare-fun res!2101583 () Bool)

(declare-fun e!3076249 () Bool)

(assert (=> b!4922946 (=> (not res!2101583) (not e!3076249))))

(declare-fun lt!2024999 () List!56809)

(assert (=> b!4922946 (= res!2101583 (= (size!37476 lt!2024999) (+ (size!37476 lt!2024329) (size!37476 lt!2024323))))))

(declare-fun b!4922944 () Bool)

(declare-fun e!3076250 () List!56809)

(assert (=> b!4922944 (= e!3076250 lt!2024323)))

(declare-fun b!4922945 () Bool)

(assert (=> b!4922945 (= e!3076250 (Cons!56685 (h!63133 lt!2024329) (++!12322 (t!367249 lt!2024329) lt!2024323)))))

(declare-fun d!1583509 () Bool)

(assert (=> d!1583509 e!3076249))

(declare-fun res!2101584 () Bool)

(assert (=> d!1583509 (=> (not res!2101584) (not e!3076249))))

(assert (=> d!1583509 (= res!2101584 (= (content!10066 lt!2024999) ((_ map or) (content!10066 lt!2024329) (content!10066 lt!2024323))))))

(assert (=> d!1583509 (= lt!2024999 e!3076250)))

(declare-fun c!837980 () Bool)

(assert (=> d!1583509 (= c!837980 ((_ is Nil!56685) lt!2024329))))

(assert (=> d!1583509 (= (++!12322 lt!2024329 lt!2024323) lt!2024999)))

(declare-fun b!4922947 () Bool)

(assert (=> b!4922947 (= e!3076249 (or (not (= lt!2024323 Nil!56685)) (= lt!2024999 lt!2024329)))))

(assert (= (and d!1583509 c!837980) b!4922944))

(assert (= (and d!1583509 (not c!837980)) b!4922945))

(assert (= (and d!1583509 res!2101584) b!4922946))

(assert (= (and b!4922946 res!2101583) b!4922947))

(declare-fun m!5938372 () Bool)

(assert (=> b!4922946 m!5938372))

(declare-fun m!5938374 () Bool)

(assert (=> b!4922946 m!5938374))

(declare-fun m!5938376 () Bool)

(assert (=> b!4922946 m!5938376))

(declare-fun m!5938378 () Bool)

(assert (=> b!4922945 m!5938378))

(declare-fun m!5938380 () Bool)

(assert (=> d!1583509 m!5938380))

(declare-fun m!5938382 () Bool)

(assert (=> d!1583509 m!5938382))

(declare-fun m!5938384 () Bool)

(assert (=> d!1583509 m!5938384))

(assert (=> d!1583383 d!1583509))

(declare-fun b!4922954 () Bool)

(declare-fun res!2101585 () Bool)

(declare-fun e!3076253 () Bool)

(assert (=> b!4922954 (=> (not res!2101585) (not e!3076253))))

(declare-fun lt!2025002 () List!56809)

(assert (=> b!4922954 (= res!2101585 (= (size!37476 lt!2025002) (+ (size!37476 (_1!33887 lt!2024327)) (size!37476 (_2!33887 lt!2024327)))))))

(declare-fun b!4922952 () Bool)

(declare-fun e!3076254 () List!56809)

(assert (=> b!4922952 (= e!3076254 (_2!33887 lt!2024327))))

(declare-fun b!4922953 () Bool)

(assert (=> b!4922953 (= e!3076254 (Cons!56685 (h!63133 (_1!33887 lt!2024327)) (++!12322 (t!367249 (_1!33887 lt!2024327)) (_2!33887 lt!2024327))))))

(declare-fun d!1583511 () Bool)

(assert (=> d!1583511 e!3076253))

(declare-fun res!2101586 () Bool)

(assert (=> d!1583511 (=> (not res!2101586) (not e!3076253))))

(assert (=> d!1583511 (= res!2101586 (= (content!10066 lt!2025002) ((_ map or) (content!10066 (_1!33887 lt!2024327)) (content!10066 (_2!33887 lt!2024327)))))))

(assert (=> d!1583511 (= lt!2025002 e!3076254)))

(declare-fun c!837983 () Bool)

(assert (=> d!1583511 (= c!837983 ((_ is Nil!56685) (_1!33887 lt!2024327)))))

(assert (=> d!1583511 (= (++!12322 (_1!33887 lt!2024327) (_2!33887 lt!2024327)) lt!2025002)))

(declare-fun b!4922955 () Bool)

(assert (=> b!4922955 (= e!3076253 (or (not (= (_2!33887 lt!2024327) Nil!56685)) (= lt!2025002 (_1!33887 lt!2024327))))))

(assert (= (and d!1583511 c!837983) b!4922952))

(assert (= (and d!1583511 (not c!837983)) b!4922953))

(assert (= (and d!1583511 res!2101586) b!4922954))

(assert (= (and b!4922954 res!2101585) b!4922955))

(declare-fun m!5938386 () Bool)

(assert (=> b!4922954 m!5938386))

(declare-fun m!5938388 () Bool)

(assert (=> b!4922954 m!5938388))

(declare-fun m!5938390 () Bool)

(assert (=> b!4922954 m!5938390))

(declare-fun m!5938392 () Bool)

(assert (=> b!4922953 m!5938392))

(declare-fun m!5938394 () Bool)

(assert (=> d!1583511 m!5938394))

(declare-fun m!5938396 () Bool)

(assert (=> d!1583511 m!5938396))

(declare-fun m!5938398 () Bool)

(assert (=> d!1583511 m!5938398))

(assert (=> d!1583383 d!1583511))

(declare-fun d!1583513 () Bool)

(assert (=> d!1583513 (isPrefix!4961 lt!2024324 lt!2024324)))

(declare-fun lt!2025003 () Unit!147131)

(assert (=> d!1583513 (= lt!2025003 (choose!36036 lt!2024324 lt!2024324))))

(assert (=> d!1583513 (= (lemmaIsPrefixRefl!3357 lt!2024324 lt!2024324) lt!2025003)))

(declare-fun bs!1179262 () Bool)

(assert (= bs!1179262 d!1583513))

(assert (=> bs!1179262 m!5937630))

(declare-fun m!5938400 () Bool)

(assert (=> bs!1179262 m!5938400))

(assert (=> bm!342899 d!1583513))

(declare-fun b!4922962 () Bool)

(declare-fun e!3076258 () List!56809)

(assert (=> b!4922962 (= e!3076258 (list!17950 (xs!18192 (c!837809 (_2!33888 lt!2024328)))))))

(declare-fun b!4922960 () Bool)

(declare-fun e!3076257 () List!56809)

(assert (=> b!4922960 (= e!3076257 Nil!56685)))

(declare-fun d!1583515 () Bool)

(declare-fun c!837984 () Bool)

(assert (=> d!1583515 (= c!837984 ((_ is Empty!14872) (c!837809 (_2!33888 lt!2024328))))))

(assert (=> d!1583515 (= (list!17949 (c!837809 (_2!33888 lt!2024328))) e!3076257)))

(declare-fun b!4922963 () Bool)

(assert (=> b!4922963 (= e!3076258 (++!12322 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328)))) (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328))))))))

(declare-fun b!4922961 () Bool)

(assert (=> b!4922961 (= e!3076257 e!3076258)))

(declare-fun c!837985 () Bool)

(assert (=> b!4922961 (= c!837985 ((_ is Leaf!24741) (c!837809 (_2!33888 lt!2024328))))))

(assert (= (and d!1583515 c!837984) b!4922960))

(assert (= (and d!1583515 (not c!837984)) b!4922961))

(assert (= (and b!4922961 c!837985) b!4922962))

(assert (= (and b!4922961 (not c!837985)) b!4922963))

(declare-fun m!5938402 () Bool)

(assert (=> b!4922962 m!5938402))

(declare-fun m!5938404 () Bool)

(assert (=> b!4922963 m!5938404))

(declare-fun m!5938406 () Bool)

(assert (=> b!4922963 m!5938406))

(assert (=> b!4922963 m!5938404))

(assert (=> b!4922963 m!5938406))

(declare-fun m!5938408 () Bool)

(assert (=> b!4922963 m!5938408))

(assert (=> d!1583375 d!1583515))

(declare-fun d!1583517 () Bool)

(assert (=> d!1583517 (= (list!17947 (ite c!837884 input!5492 (_1!33888 lt!2024748))) (list!17949 (c!837809 (ite c!837884 input!5492 (_1!33888 lt!2024748)))))))

(declare-fun bs!1179263 () Bool)

(assert (= bs!1179263 d!1583517))

(declare-fun m!5938410 () Bool)

(assert (=> bs!1179263 m!5938410))

(assert (=> bm!342983 d!1583517))

(declare-fun b!4922964 () Bool)

(declare-fun res!2101594 () Bool)

(declare-fun e!3076259 () Bool)

(assert (=> b!4922964 (=> (not res!2101594) (not e!3076259))))

(assert (=> b!4922964 (= res!2101594 (isBalanced!4085 (right!41660 (c!837809 (_2!33888 lt!2024758)))))))

(declare-fun b!4922965 () Bool)

(assert (=> b!4922965 (= e!3076259 (not (isEmpty!30568 (right!41660 (c!837809 (_2!33888 lt!2024758))))))))

(declare-fun d!1583519 () Bool)

(declare-fun res!2101593 () Bool)

(declare-fun e!3076260 () Bool)

(assert (=> d!1583519 (=> res!2101593 e!3076260)))

(assert (=> d!1583519 (= res!2101593 (not ((_ is Node!14872) (c!837809 (_2!33888 lt!2024758)))))))

(assert (=> d!1583519 (= (isBalanced!4085 (c!837809 (_2!33888 lt!2024758))) e!3076260)))

(declare-fun b!4922966 () Bool)

(declare-fun res!2101595 () Bool)

(assert (=> b!4922966 (=> (not res!2101595) (not e!3076259))))

(assert (=> b!4922966 (= res!2101595 (<= (- (height!1982 (left!41330 (c!837809 (_2!33888 lt!2024758)))) (height!1982 (right!41660 (c!837809 (_2!33888 lt!2024758))))) 1))))

(declare-fun b!4922967 () Bool)

(declare-fun res!2101596 () Bool)

(assert (=> b!4922967 (=> (not res!2101596) (not e!3076259))))

(assert (=> b!4922967 (= res!2101596 (not (isEmpty!30568 (left!41330 (c!837809 (_2!33888 lt!2024758))))))))

(declare-fun b!4922968 () Bool)

(declare-fun res!2101592 () Bool)

(assert (=> b!4922968 (=> (not res!2101592) (not e!3076259))))

(assert (=> b!4922968 (= res!2101592 (isBalanced!4085 (left!41330 (c!837809 (_2!33888 lt!2024758)))))))

(declare-fun b!4922969 () Bool)

(assert (=> b!4922969 (= e!3076260 e!3076259)))

(declare-fun res!2101591 () Bool)

(assert (=> b!4922969 (=> (not res!2101591) (not e!3076259))))

(assert (=> b!4922969 (= res!2101591 (<= (- 1) (- (height!1982 (left!41330 (c!837809 (_2!33888 lt!2024758)))) (height!1982 (right!41660 (c!837809 (_2!33888 lt!2024758)))))))))

(assert (= (and d!1583519 (not res!2101593)) b!4922969))

(assert (= (and b!4922969 res!2101591) b!4922966))

(assert (= (and b!4922966 res!2101595) b!4922968))

(assert (= (and b!4922968 res!2101592) b!4922964))

(assert (= (and b!4922964 res!2101594) b!4922967))

(assert (= (and b!4922967 res!2101596) b!4922965))

(declare-fun m!5938412 () Bool)

(assert (=> b!4922965 m!5938412))

(declare-fun m!5938414 () Bool)

(assert (=> b!4922969 m!5938414))

(declare-fun m!5938416 () Bool)

(assert (=> b!4922969 m!5938416))

(assert (=> b!4922966 m!5938414))

(assert (=> b!4922966 m!5938416))

(declare-fun m!5938418 () Bool)

(assert (=> b!4922967 m!5938418))

(declare-fun m!5938420 () Bool)

(assert (=> b!4922968 m!5938420))

(declare-fun m!5938422 () Bool)

(assert (=> b!4922964 m!5938422))

(assert (=> b!4922667 d!1583519))

(declare-fun d!1583521 () Bool)

(assert (=> d!1583521 (= (head!10520 lt!2024324) (h!63133 lt!2024324))))

(assert (=> bm!342898 d!1583521))

(declare-fun d!1583523 () Bool)

(assert (=> d!1583523 true))

(declare-fun lambda!245162 () Int)

(declare-fun flatMap!262 ((InoxSet Context!6030) Int) (InoxSet Context!6030))

(assert (=> d!1583523 (= (derivationStepZipper!588 z!3559 call!342905) (flatMap!262 z!3559 lambda!245162))))

(declare-fun bs!1179264 () Bool)

(assert (= bs!1179264 d!1583523))

(declare-fun m!5938432 () Bool)

(assert (=> bs!1179264 m!5938432))

(assert (=> bm!342896 d!1583523))

(declare-fun b!4922980 () Bool)

(declare-fun res!2101602 () Bool)

(declare-fun e!3076264 () Bool)

(assert (=> b!4922980 (=> (not res!2101602) (not e!3076264))))

(assert (=> b!4922980 (= res!2101602 (isBalanced!4085 (right!41660 (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4922981 () Bool)

(assert (=> b!4922981 (= e!3076264 (not (isEmpty!30568 (right!41660 (right!41660 (c!837809 input!5492))))))))

(declare-fun d!1583527 () Bool)

(declare-fun res!2101601 () Bool)

(declare-fun e!3076265 () Bool)

(assert (=> d!1583527 (=> res!2101601 e!3076265)))

(assert (=> d!1583527 (= res!2101601 (not ((_ is Node!14872) (right!41660 (c!837809 input!5492)))))))

(assert (=> d!1583527 (= (isBalanced!4085 (right!41660 (c!837809 input!5492))) e!3076265)))

(declare-fun b!4922982 () Bool)

(declare-fun res!2101603 () Bool)

(assert (=> b!4922982 (=> (not res!2101603) (not e!3076264))))

(assert (=> b!4922982 (= res!2101603 (<= (- (height!1982 (left!41330 (right!41660 (c!837809 input!5492)))) (height!1982 (right!41660 (right!41660 (c!837809 input!5492))))) 1))))

(declare-fun b!4922983 () Bool)

(declare-fun res!2101604 () Bool)

(assert (=> b!4922983 (=> (not res!2101604) (not e!3076264))))

(assert (=> b!4922983 (= res!2101604 (not (isEmpty!30568 (left!41330 (right!41660 (c!837809 input!5492))))))))

(declare-fun b!4922984 () Bool)

(declare-fun res!2101600 () Bool)

(assert (=> b!4922984 (=> (not res!2101600) (not e!3076264))))

(assert (=> b!4922984 (= res!2101600 (isBalanced!4085 (left!41330 (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4922985 () Bool)

(assert (=> b!4922985 (= e!3076265 e!3076264)))

(declare-fun res!2101599 () Bool)

(assert (=> b!4922985 (=> (not res!2101599) (not e!3076264))))

(assert (=> b!4922985 (= res!2101599 (<= (- 1) (- (height!1982 (left!41330 (right!41660 (c!837809 input!5492)))) (height!1982 (right!41660 (right!41660 (c!837809 input!5492)))))))))

(assert (= (and d!1583527 (not res!2101601)) b!4922985))

(assert (= (and b!4922985 res!2101599) b!4922982))

(assert (= (and b!4922982 res!2101603) b!4922984))

(assert (= (and b!4922984 res!2101600) b!4922980))

(assert (= (and b!4922980 res!2101602) b!4922983))

(assert (= (and b!4922983 res!2101604) b!4922981))

(declare-fun m!5938436 () Bool)

(assert (=> b!4922981 m!5938436))

(declare-fun m!5938438 () Bool)

(assert (=> b!4922985 m!5938438))

(declare-fun m!5938440 () Bool)

(assert (=> b!4922985 m!5938440))

(assert (=> b!4922982 m!5938438))

(assert (=> b!4922982 m!5938440))

(declare-fun m!5938442 () Bool)

(assert (=> b!4922983 m!5938442))

(declare-fun m!5938444 () Bool)

(assert (=> b!4922984 m!5938444))

(declare-fun m!5938446 () Bool)

(assert (=> b!4922980 m!5938446))

(assert (=> b!4922519 d!1583527))

(declare-fun b!4922988 () Bool)

(declare-fun e!3076267 () List!56809)

(assert (=> b!4922988 (= e!3076267 (list!17950 (xs!18192 (c!837809 input!5492))))))

(declare-fun b!4922986 () Bool)

(declare-fun e!3076266 () List!56809)

(assert (=> b!4922986 (= e!3076266 Nil!56685)))

(declare-fun d!1583531 () Bool)

(declare-fun c!837992 () Bool)

(assert (=> d!1583531 (= c!837992 ((_ is Empty!14872) (c!837809 input!5492)))))

(assert (=> d!1583531 (= (list!17949 (c!837809 input!5492)) e!3076266)))

(declare-fun b!4922989 () Bool)

(assert (=> b!4922989 (= e!3076267 (++!12322 (list!17949 (left!41330 (c!837809 input!5492))) (list!17949 (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4922987 () Bool)

(assert (=> b!4922987 (= e!3076266 e!3076267)))

(declare-fun c!837993 () Bool)

(assert (=> b!4922987 (= c!837993 ((_ is Leaf!24741) (c!837809 input!5492)))))

(assert (= (and d!1583531 c!837992) b!4922986))

(assert (= (and d!1583531 (not c!837992)) b!4922987))

(assert (= (and b!4922987 c!837993) b!4922988))

(assert (= (and b!4922987 (not c!837993)) b!4922989))

(declare-fun m!5938448 () Bool)

(assert (=> b!4922988 m!5938448))

(assert (=> b!4922989 m!5938300))

(assert (=> b!4922989 m!5937958))

(assert (=> b!4922989 m!5938300))

(assert (=> b!4922989 m!5937958))

(declare-fun m!5938450 () Bool)

(assert (=> b!4922989 m!5938450))

(assert (=> d!1583377 d!1583531))

(declare-fun d!1583533 () Bool)

(declare-fun res!2101623 () Bool)

(declare-fun e!3076282 () Bool)

(assert (=> d!1583533 (=> (not res!2101623) (not e!3076282))))

(assert (=> d!1583533 (= res!2101623 (= (csize!29974 (c!837809 input!5492)) (+ (size!37478 (left!41330 (c!837809 input!5492))) (size!37478 (right!41660 (c!837809 input!5492))))))))

(assert (=> d!1583533 (= (inv!73468 (c!837809 input!5492)) e!3076282)))

(declare-fun b!4923014 () Bool)

(declare-fun res!2101624 () Bool)

(assert (=> b!4923014 (=> (not res!2101624) (not e!3076282))))

(assert (=> b!4923014 (= res!2101624 (and (not (= (left!41330 (c!837809 input!5492)) Empty!14872)) (not (= (right!41660 (c!837809 input!5492)) Empty!14872))))))

(declare-fun b!4923015 () Bool)

(declare-fun res!2101625 () Bool)

(assert (=> b!4923015 (=> (not res!2101625) (not e!3076282))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4923015 (= res!2101625 (= (cheight!15083 (c!837809 input!5492)) (+ (max!0 (height!1982 (left!41330 (c!837809 input!5492))) (height!1982 (right!41660 (c!837809 input!5492)))) 1)))))

(declare-fun b!4923016 () Bool)

(assert (=> b!4923016 (= e!3076282 (<= 0 (cheight!15083 (c!837809 input!5492))))))

(assert (= (and d!1583533 res!2101623) b!4923014))

(assert (= (and b!4923014 res!2101624) b!4923015))

(assert (= (and b!4923015 res!2101625) b!4923016))

(assert (=> d!1583533 m!5938310))

(assert (=> d!1583533 m!5937962))

(assert (=> b!4923015 m!5937634))

(assert (=> b!4923015 m!5937636))

(assert (=> b!4923015 m!5937634))

(assert (=> b!4923015 m!5937636))

(declare-fun m!5938500 () Bool)

(assert (=> b!4923015 m!5938500))

(assert (=> b!4922696 d!1583533))

(declare-fun d!1583547 () Bool)

(declare-fun lt!2025011 () Int)

(assert (=> d!1583547 (>= lt!2025011 0)))

(declare-fun e!3076284 () Int)

(assert (=> d!1583547 (= lt!2025011 e!3076284)))

(declare-fun c!837998 () Bool)

(assert (=> d!1583547 (= c!837998 ((_ is Nil!56685) (list!17947 input!5492)))))

(assert (=> d!1583547 (= (size!37476 (list!17947 input!5492)) lt!2025011)))

(declare-fun b!4923019 () Bool)

(assert (=> b!4923019 (= e!3076284 0)))

(declare-fun b!4923020 () Bool)

(assert (=> b!4923020 (= e!3076284 (+ 1 (size!37476 (t!367249 (list!17947 input!5492)))))))

(assert (= (and d!1583547 c!837998) b!4923019))

(assert (= (and d!1583547 (not c!837998)) b!4923020))

(declare-fun m!5938506 () Bool)

(assert (=> b!4923020 m!5938506))

(assert (=> d!1583351 d!1583547))

(assert (=> d!1583351 d!1583377))

(declare-fun d!1583551 () Bool)

(declare-fun lt!2025014 () Int)

(assert (=> d!1583551 (= lt!2025014 (size!37476 (list!17949 (c!837809 input!5492))))))

(assert (=> d!1583551 (= lt!2025014 (ite ((_ is Empty!14872) (c!837809 input!5492)) 0 (ite ((_ is Leaf!24741) (c!837809 input!5492)) (csize!29975 (c!837809 input!5492)) (csize!29974 (c!837809 input!5492)))))))

(assert (=> d!1583551 (= (size!37478 (c!837809 input!5492)) lt!2025014)))

(declare-fun bs!1179267 () Bool)

(assert (= bs!1179267 d!1583551))

(assert (=> bs!1179267 m!5937864))

(assert (=> bs!1179267 m!5937864))

(declare-fun m!5938520 () Bool)

(assert (=> bs!1179267 m!5938520))

(assert (=> d!1583351 d!1583551))

(declare-fun d!1583555 () Bool)

(assert (=> d!1583555 (= (isEmpty!30566 (_1!33887 lt!2024404)) ((_ is Nil!56685) (_1!33887 lt!2024404)))))

(assert (=> b!4922499 d!1583555))

(assert (=> b!4922661 d!1583377))

(declare-fun d!1583557 () Bool)

(declare-fun c!837999 () Bool)

(assert (=> d!1583557 (= c!837999 ((_ is Node!14872) (left!41330 (c!837809 input!5492))))))

(declare-fun e!3076287 () Bool)

(assert (=> d!1583557 (= (inv!73464 (left!41330 (c!837809 input!5492))) e!3076287)))

(declare-fun b!4923027 () Bool)

(assert (=> b!4923027 (= e!3076287 (inv!73468 (left!41330 (c!837809 input!5492))))))

(declare-fun b!4923028 () Bool)

(declare-fun e!3076288 () Bool)

(assert (=> b!4923028 (= e!3076287 e!3076288)))

(declare-fun res!2101632 () Bool)

(assert (=> b!4923028 (= res!2101632 (not ((_ is Leaf!24741) (left!41330 (c!837809 input!5492)))))))

(assert (=> b!4923028 (=> res!2101632 e!3076288)))

(declare-fun b!4923029 () Bool)

(assert (=> b!4923029 (= e!3076288 (inv!73469 (left!41330 (c!837809 input!5492))))))

(assert (= (and d!1583557 c!837999) b!4923027))

(assert (= (and d!1583557 (not c!837999)) b!4923028))

(assert (= (and b!4923028 (not res!2101632)) b!4923029))

(declare-fun m!5938522 () Bool)

(assert (=> b!4923027 m!5938522))

(declare-fun m!5938524 () Bool)

(assert (=> b!4923029 m!5938524))

(assert (=> b!4922717 d!1583557))

(declare-fun d!1583559 () Bool)

(declare-fun c!838000 () Bool)

(assert (=> d!1583559 (= c!838000 ((_ is Node!14872) (right!41660 (c!837809 input!5492))))))

(declare-fun e!3076289 () Bool)

(assert (=> d!1583559 (= (inv!73464 (right!41660 (c!837809 input!5492))) e!3076289)))

(declare-fun b!4923030 () Bool)

(assert (=> b!4923030 (= e!3076289 (inv!73468 (right!41660 (c!837809 input!5492))))))

(declare-fun b!4923031 () Bool)

(declare-fun e!3076290 () Bool)

(assert (=> b!4923031 (= e!3076289 e!3076290)))

(declare-fun res!2101633 () Bool)

(assert (=> b!4923031 (= res!2101633 (not ((_ is Leaf!24741) (right!41660 (c!837809 input!5492)))))))

(assert (=> b!4923031 (=> res!2101633 e!3076290)))

(declare-fun b!4923032 () Bool)

(assert (=> b!4923032 (= e!3076290 (inv!73469 (right!41660 (c!837809 input!5492))))))

(assert (= (and d!1583559 c!838000) b!4923030))

(assert (= (and d!1583559 (not c!838000)) b!4923031))

(assert (= (and b!4923031 (not res!2101633)) b!4923032))

(declare-fun m!5938526 () Bool)

(assert (=> b!4923030 m!5938526))

(declare-fun m!5938528 () Bool)

(assert (=> b!4923032 m!5938528))

(assert (=> b!4922717 d!1583559))

(declare-fun b!4923033 () Bool)

(declare-fun res!2101637 () Bool)

(declare-fun e!3076291 () Bool)

(assert (=> b!4923033 (=> (not res!2101637) (not e!3076291))))

(assert (=> b!4923033 (= res!2101637 (isBalanced!4085 (right!41660 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923034 () Bool)

(assert (=> b!4923034 (= e!3076291 (not (isEmpty!30568 (right!41660 (left!41330 (c!837809 input!5492))))))))

(declare-fun d!1583561 () Bool)

(declare-fun res!2101636 () Bool)

(declare-fun e!3076292 () Bool)

(assert (=> d!1583561 (=> res!2101636 e!3076292)))

(assert (=> d!1583561 (= res!2101636 (not ((_ is Node!14872) (left!41330 (c!837809 input!5492)))))))

(assert (=> d!1583561 (= (isBalanced!4085 (left!41330 (c!837809 input!5492))) e!3076292)))

(declare-fun b!4923035 () Bool)

(declare-fun res!2101638 () Bool)

(assert (=> b!4923035 (=> (not res!2101638) (not e!3076291))))

(assert (=> b!4923035 (= res!2101638 (<= (- (height!1982 (left!41330 (left!41330 (c!837809 input!5492)))) (height!1982 (right!41660 (left!41330 (c!837809 input!5492))))) 1))))

(declare-fun b!4923036 () Bool)

(declare-fun res!2101639 () Bool)

(assert (=> b!4923036 (=> (not res!2101639) (not e!3076291))))

(assert (=> b!4923036 (= res!2101639 (not (isEmpty!30568 (left!41330 (left!41330 (c!837809 input!5492))))))))

(declare-fun b!4923037 () Bool)

(declare-fun res!2101635 () Bool)

(assert (=> b!4923037 (=> (not res!2101635) (not e!3076291))))

(assert (=> b!4923037 (= res!2101635 (isBalanced!4085 (left!41330 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923038 () Bool)

(assert (=> b!4923038 (= e!3076292 e!3076291)))

(declare-fun res!2101634 () Bool)

(assert (=> b!4923038 (=> (not res!2101634) (not e!3076291))))

(assert (=> b!4923038 (= res!2101634 (<= (- 1) (- (height!1982 (left!41330 (left!41330 (c!837809 input!5492)))) (height!1982 (right!41660 (left!41330 (c!837809 input!5492)))))))))

(assert (= (and d!1583561 (not res!2101636)) b!4923038))

(assert (= (and b!4923038 res!2101634) b!4923035))

(assert (= (and b!4923035 res!2101638) b!4923037))

(assert (= (and b!4923037 res!2101635) b!4923033))

(assert (= (and b!4923033 res!2101637) b!4923036))

(assert (= (and b!4923036 res!2101639) b!4923034))

(declare-fun m!5938530 () Bool)

(assert (=> b!4923034 m!5938530))

(declare-fun m!5938532 () Bool)

(assert (=> b!4923038 m!5938532))

(declare-fun m!5938534 () Bool)

(assert (=> b!4923038 m!5938534))

(assert (=> b!4923035 m!5938532))

(assert (=> b!4923035 m!5938534))

(declare-fun m!5938536 () Bool)

(assert (=> b!4923036 m!5938536))

(declare-fun m!5938538 () Bool)

(assert (=> b!4923037 m!5938538))

(declare-fun m!5938540 () Bool)

(assert (=> b!4923033 m!5938540))

(assert (=> b!4922523 d!1583561))

(declare-fun d!1583563 () Bool)

(declare-fun res!2101644 () Bool)

(declare-fun e!3076295 () Bool)

(assert (=> d!1583563 (=> (not res!2101644) (not e!3076295))))

(assert (=> d!1583563 (= res!2101644 (<= (size!37476 (list!17950 (xs!18192 (c!837809 input!5492)))) 512))))

(assert (=> d!1583563 (= (inv!73469 (c!837809 input!5492)) e!3076295)))

(declare-fun b!4923043 () Bool)

(declare-fun res!2101645 () Bool)

(assert (=> b!4923043 (=> (not res!2101645) (not e!3076295))))

(assert (=> b!4923043 (= res!2101645 (= (csize!29975 (c!837809 input!5492)) (size!37476 (list!17950 (xs!18192 (c!837809 input!5492))))))))

(declare-fun b!4923044 () Bool)

(assert (=> b!4923044 (= e!3076295 (and (> (csize!29975 (c!837809 input!5492)) 0) (<= (csize!29975 (c!837809 input!5492)) 512)))))

(assert (= (and d!1583563 res!2101644) b!4923043))

(assert (= (and b!4923043 res!2101645) b!4923044))

(assert (=> d!1583563 m!5938448))

(assert (=> d!1583563 m!5938448))

(declare-fun m!5938542 () Bool)

(assert (=> d!1583563 m!5938542))

(assert (=> b!4923043 m!5938448))

(assert (=> b!4923043 m!5938448))

(assert (=> b!4923043 m!5938542))

(assert (=> b!4922698 d!1583563))

(declare-fun bs!1179268 () Bool)

(declare-fun d!1583565 () Bool)

(assert (= bs!1179268 (and d!1583565 d!1583411)))

(declare-fun lambda!245166 () Int)

(assert (=> bs!1179268 (not (= lambda!245166 lambda!245141))))

(declare-fun bs!1179269 () Bool)

(assert (= bs!1179269 (and d!1583565 b!4922796)))

(assert (=> bs!1179269 (not (= lambda!245166 lambda!245144))))

(declare-fun bs!1179270 () Bool)

(assert (= bs!1179270 (and d!1583565 b!4922797)))

(assert (=> bs!1179270 (not (= lambda!245166 lambda!245145))))

(declare-fun exists!1245 ((InoxSet Context!6030) Int) Bool)

(assert (=> d!1583565 (= (nullableZipper!810 z!3559) (exists!1245 z!3559 lambda!245166))))

(declare-fun bs!1179271 () Bool)

(assert (= bs!1179271 d!1583565))

(declare-fun m!5938544 () Bool)

(assert (=> bs!1179271 m!5938544))

(assert (=> bm!342979 d!1583565))

(declare-fun d!1583567 () Bool)

(declare-fun lt!2025017 () C!26956)

(assert (=> d!1583567 (= lt!2025017 (apply!13656 (list!17947 input!5492) 0))))

(declare-fun apply!13657 (Conc!14872 Int) C!26956)

(assert (=> d!1583567 (= lt!2025017 (apply!13657 (c!837809 input!5492) 0))))

(declare-fun e!3076298 () Bool)

(assert (=> d!1583567 e!3076298))

(declare-fun res!2101648 () Bool)

(assert (=> d!1583567 (=> (not res!2101648) (not e!3076298))))

(assert (=> d!1583567 (= res!2101648 (<= 0 0))))

(assert (=> d!1583567 (= (apply!13655 input!5492 0) lt!2025017)))

(declare-fun b!4923047 () Bool)

(assert (=> b!4923047 (= e!3076298 (< 0 (size!37474 input!5492)))))

(assert (= (and d!1583567 res!2101648) b!4923047))

(assert (=> d!1583567 m!5937560))

(assert (=> d!1583567 m!5937560))

(declare-fun m!5938546 () Bool)

(assert (=> d!1583567 m!5938546))

(declare-fun m!5938548 () Bool)

(assert (=> d!1583567 m!5938548))

(assert (=> b!4923047 m!5937562))

(assert (=> bm!342977 d!1583567))

(assert (=> b!4922521 d!1583481))

(assert (=> b!4922521 d!1583483))

(declare-fun b!4923048 () Bool)

(declare-fun e!3076304 () Int)

(declare-fun e!3076299 () Int)

(assert (=> b!4923048 (= e!3076304 e!3076299)))

(declare-fun c!838007 () Bool)

(assert (=> b!4923048 (= c!838007 (= (+ 0 1) lt!2024326))))

(declare-fun bm!343032 () Bool)

(declare-fun c!838004 () Bool)

(assert (=> bm!343032 (= c!838004 c!838007)))

(declare-fun lt!2025045 () List!56809)

(declare-fun e!3076302 () List!56809)

(declare-fun call!343045 () Unit!147131)

(declare-fun lt!2025039 () List!56809)

(assert (=> bm!343032 (= call!343045 (lemmaIsPrefixSameLengthThenSameList!1119 (ite c!838007 lt!2025039 lt!2025045) call!342986 e!3076302))))

(declare-fun bm!343033 () Bool)

(declare-fun call!343041 () C!26956)

(assert (=> bm!343033 (= call!343041 (apply!13655 input!5492 (+ 0 1)))))

(declare-fun bm!343034 () Bool)

(declare-fun call!343042 () List!56809)

(assert (=> bm!343034 (= call!343042 (++!12322 call!342986 (Cons!56685 call!343041 Nil!56685)))))

(declare-fun bm!343035 () Bool)

(declare-fun call!343040 () Bool)

(assert (=> bm!343035 (= call!343040 (nullableZipper!810 call!342982))))

(declare-fun b!4923049 () Bool)

(declare-fun e!3076300 () Unit!147131)

(declare-fun Unit!147158 () Unit!147131)

(assert (=> b!4923049 (= e!3076300 Unit!147158)))

(declare-fun b!4923050 () Bool)

(declare-fun e!3076301 () Int)

(declare-fun call!343043 () Int)

(assert (=> b!4923050 (= e!3076301 call!343043)))

(declare-fun b!4923051 () Bool)

(declare-fun call!343039 () List!56809)

(assert (=> b!4923051 (= e!3076302 call!343039)))

(declare-fun b!4923052 () Bool)

(declare-fun Unit!147159 () Unit!147131)

(assert (=> b!4923052 (= e!3076300 Unit!147159)))

(declare-fun lt!2025020 () List!56809)

(assert (=> b!4923052 (= lt!2025020 (list!17947 input!5492))))

(declare-fun lt!2025057 () List!56809)

(assert (=> b!4923052 (= lt!2025057 (list!17947 input!5492))))

(declare-fun lt!2025018 () Unit!147131)

(declare-fun call!343044 () Unit!147131)

(assert (=> b!4923052 (= lt!2025018 call!343044)))

(declare-fun call!343037 () Bool)

(assert (=> b!4923052 call!343037))

(declare-fun lt!2025044 () Unit!147131)

(assert (=> b!4923052 (= lt!2025044 lt!2025018)))

(assert (=> b!4923052 (= lt!2025045 (list!17947 input!5492))))

(declare-fun lt!2025029 () Unit!147131)

(assert (=> b!4923052 (= lt!2025029 call!343045)))

(assert (=> b!4923052 (= lt!2025045 call!342986)))

(declare-fun lt!2025026 () Unit!147131)

(assert (=> b!4923052 (= lt!2025026 lt!2025029)))

(assert (=> b!4923052 false))

(declare-fun bm!343036 () Bool)

(declare-fun call!343046 () List!56809)

(assert (=> bm!343036 (= call!343046 (tail!9667 call!342990))))

(declare-fun d!1583569 () Bool)

(declare-fun lt!2025028 () Int)

(assert (=> d!1583569 (= (size!37476 (_1!33887 (findLongestMatchInnerZipper!58 call!342982 call!342986 (+ 0 1) call!342990 (list!17947 input!5492) lt!2024326))) lt!2025028)))

(assert (=> d!1583569 (= lt!2025028 e!3076304)))

(declare-fun c!838003 () Bool)

(assert (=> d!1583569 (= c!838003 (lostCauseZipper!691 call!342982))))

(declare-fun lt!2025059 () Unit!147131)

(declare-fun Unit!147161 () Unit!147131)

(assert (=> d!1583569 (= lt!2025059 Unit!147161)))

(assert (=> d!1583569 (= (getSuffix!2949 (list!17947 input!5492) call!342986) call!342990)))

(declare-fun lt!2025034 () Unit!147131)

(declare-fun lt!2025047 () Unit!147131)

(assert (=> d!1583569 (= lt!2025034 lt!2025047)))

(declare-fun lt!2025027 () List!56809)

(assert (=> d!1583569 (= call!342990 lt!2025027)))

(assert (=> d!1583569 (= lt!2025047 (lemmaSamePrefixThenSameSuffix!2365 call!342986 call!342990 call!342986 lt!2025027 (list!17947 input!5492)))))

(assert (=> d!1583569 (= lt!2025027 (getSuffix!2949 (list!17947 input!5492) call!342986))))

(declare-fun lt!2025035 () Unit!147131)

(declare-fun lt!2025022 () Unit!147131)

(assert (=> d!1583569 (= lt!2025035 lt!2025022)))

(assert (=> d!1583569 (isPrefix!4961 call!342986 (++!12322 call!342986 call!342990))))

(assert (=> d!1583569 (= lt!2025022 (lemmaConcatTwoListThenFirstIsPrefix!3185 call!342986 call!342990))))

(assert (=> d!1583569 (= (++!12322 call!342986 call!342990) (list!17947 input!5492))))

(assert (=> d!1583569 (= (findLongestMatchInnerZipperFast!85 call!342982 call!342986 (+ 0 1) call!342990 input!5492 lt!2024326) lt!2025028)))

(declare-fun b!4923053 () Bool)

(declare-fun lt!2025041 () Int)

(assert (=> b!4923053 (= e!3076301 (ite (= lt!2025041 0) (+ 0 1) lt!2025041))))

(assert (=> b!4923053 (= lt!2025041 call!343043)))

(declare-fun call!343038 () (InoxSet Context!6030))

(declare-fun bm!343037 () Bool)

(assert (=> bm!343037 (= call!343043 (findLongestMatchInnerZipperFast!85 call!343038 call!343042 (+ 0 1 1) call!343046 input!5492 lt!2024326))))

(declare-fun b!4923054 () Bool)

(declare-fun e!3076303 () Int)

(assert (=> b!4923054 (= e!3076303 (+ 0 1))))

(declare-fun bm!343038 () Bool)

(assert (=> bm!343038 (= call!343038 (derivationStepZipper!588 call!342982 call!343041))))

(declare-fun lt!2025055 () tuple2!61170)

(declare-fun bm!343039 () Bool)

(assert (=> bm!343039 (= call!343039 (list!17947 (ite c!838007 input!5492 (_1!33888 lt!2025055))))))

(declare-fun b!4923055 () Bool)

(assert (=> b!4923055 (= e!3076303 0)))

(declare-fun b!4923056 () Bool)

(declare-fun c!838008 () Bool)

(assert (=> b!4923056 (= c!838008 call!343040)))

(declare-fun lt!2025032 () Unit!147131)

(declare-fun lt!2025056 () Unit!147131)

(assert (=> b!4923056 (= lt!2025032 lt!2025056)))

(assert (=> b!4923056 (= lt!2025039 call!342986)))

(assert (=> b!4923056 (= lt!2025056 call!343045)))

(assert (=> b!4923056 (= lt!2025039 call!343039)))

(declare-fun lt!2025021 () Unit!147131)

(declare-fun lt!2025052 () Unit!147131)

(assert (=> b!4923056 (= lt!2025021 lt!2025052)))

(assert (=> b!4923056 call!343037))

(assert (=> b!4923056 (= lt!2025052 call!343044)))

(declare-fun lt!2025051 () List!56809)

(assert (=> b!4923056 (= lt!2025051 call!343039)))

(declare-fun lt!2025033 () List!56809)

(assert (=> b!4923056 (= lt!2025033 call!343039)))

(assert (=> b!4923056 (= e!3076299 e!3076303)))

(declare-fun b!4923057 () Bool)

(declare-fun c!838006 () Bool)

(assert (=> b!4923057 (= c!838006 call!343040)))

(declare-fun lt!2025049 () Unit!147131)

(declare-fun lt!2025042 () Unit!147131)

(assert (=> b!4923057 (= lt!2025049 lt!2025042)))

(declare-fun lt!2025050 () C!26956)

(declare-fun lt!2025048 () List!56809)

(declare-fun lt!2025040 () List!56809)

(assert (=> b!4923057 (= (++!12322 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685)) lt!2025048) lt!2025040)))

(assert (=> b!4923057 (= lt!2025042 (lemmaMoveElementToOtherListKeepsConcatEq!1391 call!342986 lt!2025050 lt!2025048 lt!2025040))))

(assert (=> b!4923057 (= lt!2025040 (list!17947 input!5492))))

(assert (=> b!4923057 (= lt!2025048 (tail!9667 call!342990))))

(assert (=> b!4923057 (= lt!2025050 (apply!13655 input!5492 (+ 0 1)))))

(declare-fun lt!2025037 () Unit!147131)

(declare-fun lt!2025053 () Unit!147131)

(assert (=> b!4923057 (= lt!2025037 lt!2025053)))

(declare-fun lt!2025043 () List!56809)

(assert (=> b!4923057 (isPrefix!4961 (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685)) lt!2025043)))

(assert (=> b!4923057 (= lt!2025053 (lemmaAddHeadSuffixToPrefixStillPrefix!773 call!342986 lt!2025043))))

(assert (=> b!4923057 (= lt!2025043 (list!17947 input!5492))))

(declare-fun lt!2025036 () Unit!147131)

(assert (=> b!4923057 (= lt!2025036 e!3076300)))

(declare-fun c!838005 () Bool)

(assert (=> b!4923057 (= c!838005 (= (size!37476 call!342986) (size!37474 input!5492)))))

(declare-fun lt!2025023 () Unit!147131)

(declare-fun lt!2025038 () Unit!147131)

(assert (=> b!4923057 (= lt!2025023 lt!2025038)))

(declare-fun lt!2025058 () List!56809)

(assert (=> b!4923057 (<= (size!37476 call!342986) (size!37476 lt!2025058))))

(assert (=> b!4923057 (= lt!2025038 (lemmaIsPrefixThenSmallerEqSize!685 call!342986 lt!2025058))))

(assert (=> b!4923057 (= lt!2025058 (list!17947 input!5492))))

(declare-fun lt!2025054 () Unit!147131)

(declare-fun lt!2025030 () Unit!147131)

(assert (=> b!4923057 (= lt!2025054 lt!2025030)))

(declare-fun lt!2025024 () List!56809)

(assert (=> b!4923057 (= (head!10520 (drop!2224 lt!2025024 (+ 0 1))) (apply!13656 lt!2025024 (+ 0 1)))))

(assert (=> b!4923057 (= lt!2025030 (lemmaDropApply!1282 lt!2025024 (+ 0 1)))))

(assert (=> b!4923057 (= lt!2025024 (list!17947 input!5492))))

(declare-fun lt!2025031 () Unit!147131)

(declare-fun lt!2025046 () Unit!147131)

(assert (=> b!4923057 (= lt!2025031 lt!2025046)))

(declare-fun lt!2025025 () List!56809)

(declare-fun lt!2025019 () List!56809)

(assert (=> b!4923057 (and (= lt!2025019 call!342986) (= lt!2025025 call!342990))))

(assert (=> b!4923057 (= lt!2025046 (lemmaConcatSameAndSameSizesThenSameLists!657 lt!2025019 lt!2025025 call!342986 call!342990))))

(assert (=> b!4923057 (= lt!2025025 (list!17947 (_2!33888 lt!2025055)))))

(assert (=> b!4923057 (= lt!2025019 call!343039)))

(assert (=> b!4923057 (= lt!2025055 (splitAt!269 input!5492 (+ 0 1)))))

(assert (=> b!4923057 (= e!3076299 e!3076301)))

(declare-fun bm!343040 () Bool)

(assert (=> bm!343040 (= call!343037 (isPrefix!4961 (ite c!838007 lt!2025033 lt!2025020) (ite c!838007 lt!2025051 lt!2025057)))))

(declare-fun b!4923058 () Bool)

(assert (=> b!4923058 (= e!3076302 (list!17947 input!5492))))

(declare-fun bm!343041 () Bool)

(assert (=> bm!343041 (= call!343044 (lemmaIsPrefixRefl!3357 (ite c!838007 lt!2025033 lt!2025020) (ite c!838007 lt!2025051 lt!2025057)))))

(declare-fun b!4923059 () Bool)

(assert (=> b!4923059 (= e!3076304 0)))

(assert (= (and d!1583569 c!838003) b!4923059))

(assert (= (and d!1583569 (not c!838003)) b!4923048))

(assert (= (and b!4923048 c!838007) b!4923056))

(assert (= (and b!4923048 (not c!838007)) b!4923057))

(assert (= (and b!4923056 c!838008) b!4923054))

(assert (= (and b!4923056 (not c!838008)) b!4923055))

(assert (= (and b!4923057 c!838005) b!4923052))

(assert (= (and b!4923057 (not c!838005)) b!4923049))

(assert (= (and b!4923057 c!838006) b!4923053))

(assert (= (and b!4923057 (not c!838006)) b!4923050))

(assert (= (or b!4923053 b!4923050) bm!343036))

(assert (= (or b!4923053 b!4923050) bm!343033))

(assert (= (or b!4923053 b!4923050) bm!343034))

(assert (= (or b!4923053 b!4923050) bm!343038))

(assert (= (or b!4923053 b!4923050) bm!343037))

(assert (= (or b!4923056 b!4923057) bm!343039))

(assert (= (or b!4923056 b!4923052) bm!343041))

(assert (= (or b!4923056 b!4923057) bm!343035))

(assert (= (or b!4923056 b!4923052) bm!343040))

(assert (= (or b!4923056 b!4923052) bm!343032))

(assert (= (and bm!343032 c!838004) b!4923051))

(assert (= (and bm!343032 (not c!838004)) b!4923058))

(assert (=> b!4923058 m!5937560))

(declare-fun m!5938550 () Bool)

(assert (=> b!4923057 m!5938550))

(declare-fun m!5938552 () Bool)

(assert (=> b!4923057 m!5938552))

(declare-fun m!5938554 () Bool)

(assert (=> b!4923057 m!5938554))

(declare-fun m!5938556 () Bool)

(assert (=> b!4923057 m!5938556))

(declare-fun m!5938558 () Bool)

(assert (=> b!4923057 m!5938558))

(declare-fun m!5938560 () Bool)

(assert (=> b!4923057 m!5938560))

(declare-fun m!5938562 () Bool)

(assert (=> b!4923057 m!5938562))

(declare-fun m!5938564 () Bool)

(assert (=> b!4923057 m!5938564))

(declare-fun m!5938566 () Bool)

(assert (=> b!4923057 m!5938566))

(assert (=> b!4923057 m!5938556))

(declare-fun m!5938568 () Bool)

(assert (=> b!4923057 m!5938568))

(declare-fun m!5938570 () Bool)

(assert (=> b!4923057 m!5938570))

(declare-fun m!5938572 () Bool)

(assert (=> b!4923057 m!5938572))

(declare-fun m!5938574 () Bool)

(assert (=> b!4923057 m!5938574))

(declare-fun m!5938576 () Bool)

(assert (=> b!4923057 m!5938576))

(declare-fun m!5938578 () Bool)

(assert (=> b!4923057 m!5938578))

(assert (=> b!4923057 m!5938572))

(declare-fun m!5938580 () Bool)

(assert (=> b!4923057 m!5938580))

(declare-fun m!5938582 () Bool)

(assert (=> b!4923057 m!5938582))

(assert (=> b!4923057 m!5938564))

(declare-fun m!5938584 () Bool)

(assert (=> b!4923057 m!5938584))

(assert (=> b!4923057 m!5937562))

(assert (=> b!4923057 m!5937560))

(assert (=> b!4923057 m!5938584))

(declare-fun m!5938586 () Bool)

(assert (=> b!4923057 m!5938586))

(declare-fun m!5938588 () Bool)

(assert (=> b!4923057 m!5938588))

(assert (=> bm!343033 m!5938570))

(declare-fun m!5938590 () Bool)

(assert (=> bm!343034 m!5938590))

(assert (=> b!4923052 m!5937560))

(declare-fun m!5938592 () Bool)

(assert (=> bm!343037 m!5938592))

(declare-fun m!5938594 () Bool)

(assert (=> bm!343039 m!5938594))

(declare-fun m!5938596 () Bool)

(assert (=> bm!343032 m!5938596))

(assert (=> bm!343036 m!5938550))

(declare-fun m!5938598 () Bool)

(assert (=> bm!343038 m!5938598))

(declare-fun m!5938600 () Bool)

(assert (=> bm!343040 m!5938600))

(declare-fun m!5938602 () Bool)

(assert (=> bm!343041 m!5938602))

(assert (=> d!1583569 m!5937560))

(declare-fun m!5938604 () Bool)

(assert (=> d!1583569 m!5938604))

(declare-fun m!5938606 () Bool)

(assert (=> d!1583569 m!5938606))

(assert (=> d!1583569 m!5938604))

(declare-fun m!5938608 () Bool)

(assert (=> d!1583569 m!5938608))

(declare-fun m!5938610 () Bool)

(assert (=> d!1583569 m!5938610))

(assert (=> d!1583569 m!5937560))

(declare-fun m!5938612 () Bool)

(assert (=> d!1583569 m!5938612))

(assert (=> d!1583569 m!5937560))

(declare-fun m!5938614 () Bool)

(assert (=> d!1583569 m!5938614))

(declare-fun m!5938616 () Bool)

(assert (=> d!1583569 m!5938616))

(assert (=> d!1583569 m!5937560))

(declare-fun m!5938618 () Bool)

(assert (=> d!1583569 m!5938618))

(declare-fun m!5938620 () Bool)

(assert (=> bm!343035 m!5938620))

(assert (=> bm!342981 d!1583569))

(declare-fun b!4923060 () Bool)

(declare-fun res!2101652 () Bool)

(declare-fun e!3076305 () Bool)

(assert (=> b!4923060 (=> (not res!2101652) (not e!3076305))))

(assert (=> b!4923060 (= res!2101652 (isBalanced!4085 (right!41660 (c!837809 (_1!33888 lt!2024758)))))))

(declare-fun b!4923061 () Bool)

(assert (=> b!4923061 (= e!3076305 (not (isEmpty!30568 (right!41660 (c!837809 (_1!33888 lt!2024758))))))))

(declare-fun d!1583571 () Bool)

(declare-fun res!2101651 () Bool)

(declare-fun e!3076306 () Bool)

(assert (=> d!1583571 (=> res!2101651 e!3076306)))

(assert (=> d!1583571 (= res!2101651 (not ((_ is Node!14872) (c!837809 (_1!33888 lt!2024758)))))))

(assert (=> d!1583571 (= (isBalanced!4085 (c!837809 (_1!33888 lt!2024758))) e!3076306)))

(declare-fun b!4923062 () Bool)

(declare-fun res!2101653 () Bool)

(assert (=> b!4923062 (=> (not res!2101653) (not e!3076305))))

(assert (=> b!4923062 (= res!2101653 (<= (- (height!1982 (left!41330 (c!837809 (_1!33888 lt!2024758)))) (height!1982 (right!41660 (c!837809 (_1!33888 lt!2024758))))) 1))))

(declare-fun b!4923063 () Bool)

(declare-fun res!2101654 () Bool)

(assert (=> b!4923063 (=> (not res!2101654) (not e!3076305))))

(assert (=> b!4923063 (= res!2101654 (not (isEmpty!30568 (left!41330 (c!837809 (_1!33888 lt!2024758))))))))

(declare-fun b!4923064 () Bool)

(declare-fun res!2101650 () Bool)

(assert (=> b!4923064 (=> (not res!2101650) (not e!3076305))))

(assert (=> b!4923064 (= res!2101650 (isBalanced!4085 (left!41330 (c!837809 (_1!33888 lt!2024758)))))))

(declare-fun b!4923065 () Bool)

(assert (=> b!4923065 (= e!3076306 e!3076305)))

(declare-fun res!2101649 () Bool)

(assert (=> b!4923065 (=> (not res!2101649) (not e!3076305))))

(assert (=> b!4923065 (= res!2101649 (<= (- 1) (- (height!1982 (left!41330 (c!837809 (_1!33888 lt!2024758)))) (height!1982 (right!41660 (c!837809 (_1!33888 lt!2024758)))))))))

(assert (= (and d!1583571 (not res!2101651)) b!4923065))

(assert (= (and b!4923065 res!2101649) b!4923062))

(assert (= (and b!4923062 res!2101653) b!4923064))

(assert (= (and b!4923064 res!2101650) b!4923060))

(assert (= (and b!4923060 res!2101652) b!4923063))

(assert (= (and b!4923063 res!2101654) b!4923061))

(declare-fun m!5938622 () Bool)

(assert (=> b!4923061 m!5938622))

(declare-fun m!5938624 () Bool)

(assert (=> b!4923065 m!5938624))

(declare-fun m!5938626 () Bool)

(assert (=> b!4923065 m!5938626))

(assert (=> b!4923062 m!5938624))

(assert (=> b!4923062 m!5938626))

(declare-fun m!5938628 () Bool)

(assert (=> b!4923063 m!5938628))

(declare-fun m!5938630 () Bool)

(assert (=> b!4923064 m!5938630))

(declare-fun m!5938632 () Bool)

(assert (=> b!4923060 m!5938632))

(assert (=> d!1583381 d!1583571))

(declare-fun b!4923210 () Bool)

(declare-fun e!3076386 () tuple2!61174)

(assert (=> b!4923210 (= e!3076386 (tuple2!61175 Empty!14872 (c!837809 input!5492)))))

(declare-fun b!4923211 () Bool)

(declare-fun e!3076382 () tuple2!61174)

(assert (=> b!4923211 (= e!3076382 (tuple2!61175 (c!837809 input!5492) (c!837809 input!5492)))))

(declare-fun b!4923212 () Bool)

(declare-fun e!3076381 () tuple2!61174)

(assert (=> b!4923212 (= e!3076381 (tuple2!61175 (c!837809 input!5492) Empty!14872))))

(declare-fun b!4923213 () Bool)

(declare-fun c!838078 () Bool)

(assert (=> b!4923213 (= c!838078 (= (size!37478 (left!41330 (c!837809 input!5492))) lt!2024322))))

(declare-fun lt!2025153 () Unit!147131)

(declare-fun lt!2025147 () Unit!147131)

(assert (=> b!4923213 (= lt!2025153 lt!2025147)))

(declare-fun lt!2025144 () List!56809)

(declare-fun lt!2025151 () List!56809)

(declare-fun e!3076380 () tuple2!61168)

(assert (=> b!4923213 (= (splitAtIndex!101 (++!12322 lt!2025151 lt!2025144) lt!2024322) e!3076380)))

(declare-fun c!838073 () Bool)

(declare-fun call!343077 () Int)

(assert (=> b!4923213 (= c!838073 (= call!343077 lt!2024322))))

(declare-fun splitAtLemma!25 (List!56809 List!56809 Int) Unit!147131)

(assert (=> b!4923213 (= lt!2025147 (splitAtLemma!25 lt!2025151 lt!2025144 lt!2024322))))

(assert (=> b!4923213 (= lt!2025144 (list!17949 (right!41660 (c!837809 input!5492))))))

(assert (=> b!4923213 (= lt!2025151 (list!17949 (left!41330 (c!837809 input!5492))))))

(declare-fun e!3076389 () tuple2!61174)

(declare-fun e!3076390 () tuple2!61174)

(assert (=> b!4923213 (= e!3076389 e!3076390)))

(declare-fun e!3076383 () Bool)

(declare-fun b!4923214 () Bool)

(declare-fun lt!2025152 () tuple2!61174)

(assert (=> b!4923214 (= e!3076383 (= (tuple2!61169 (list!17949 (_1!33890 lt!2025152)) (list!17949 (_2!33890 lt!2025152))) (splitAtIndex!101 (list!17949 (c!837809 input!5492)) lt!2024322)))))

(declare-fun b!4923215 () Bool)

(assert (=> b!4923215 (= e!3076382 e!3076389)))

(declare-fun c!838080 () Bool)

(assert (=> b!4923215 (= c!838080 ((_ is Leaf!24741) (c!837809 input!5492)))))

(declare-fun b!4923216 () Bool)

(assert (=> b!4923216 (= e!3076386 e!3076381)))

(declare-fun c!838075 () Bool)

(assert (=> b!4923216 (= c!838075 (= lt!2024322 (csize!29975 (c!837809 input!5492))))))

(declare-fun b!4923217 () Bool)

(declare-fun c!838077 () Bool)

(declare-fun e!3076384 () List!56809)

(assert (=> b!4923217 (= e!3076384 (ite c!838077 lt!2025151 lt!2025144))))

(declare-fun bm!343072 () Bool)

(declare-fun c!838070 () Bool)

(assert (=> bm!343072 (= c!838070 c!838080)))

(declare-fun e!3076385 () Int)

(declare-fun call!343081 () tuple2!61168)

(assert (=> bm!343072 (= call!343081 (splitAtIndex!101 e!3076384 (ite c!838080 lt!2024322 e!3076385)))))

(declare-fun b!4923218 () Bool)

(declare-fun e!3076391 () Int)

(assert (=> b!4923218 (= e!3076391 lt!2024322)))

(declare-fun b!4923219 () Bool)

(declare-fun lt!2025149 () tuple2!61174)

(declare-fun call!343080 () tuple2!61174)

(assert (=> b!4923219 (= lt!2025149 call!343080)))

(declare-fun e!3076387 () tuple2!61174)

(declare-fun call!343082 () Conc!14872)

(assert (=> b!4923219 (= e!3076387 (tuple2!61175 (_1!33890 lt!2025149) call!343082))))

(declare-fun bm!343073 () Bool)

(declare-fun c!838072 () Bool)

(declare-fun lt!2025145 () tuple2!61174)

(declare-fun ++!12323 (Conc!14872 Conc!14872) Conc!14872)

(assert (=> bm!343073 (= call!343082 (++!12323 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))) (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))

(declare-fun b!4923220 () Bool)

(declare-fun c!838079 () Bool)

(assert (=> b!4923220 (= c!838079 (<= lt!2024322 0))))

(assert (=> b!4923220 (= e!3076389 e!3076386)))

(declare-fun b!4923221 () Bool)

(assert (=> b!4923221 (= e!3076380 (tuple2!61169 lt!2025151 lt!2025144))))

(declare-fun b!4923222 () Bool)

(assert (=> b!4923222 (= e!3076385 lt!2024322)))

(declare-fun b!4923223 () Bool)

(assert (=> b!4923223 (= e!3076385 (- lt!2024322 call!343077))))

(declare-fun b!4923224 () Bool)

(assert (=> b!4923224 (= e!3076391 (- lt!2024322 (size!37478 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923225 () Bool)

(assert (=> b!4923225 (= e!3076390 (tuple2!61175 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))

(declare-fun bm!343074 () Bool)

(declare-fun lt!2025155 () List!56809)

(assert (=> bm!343074 (= call!343077 (size!37476 (ite c!838080 lt!2025155 lt!2025151)))))

(declare-fun b!4923226 () Bool)

(declare-fun res!2101677 () Bool)

(assert (=> b!4923226 (=> (not res!2101677) (not e!3076383))))

(assert (=> b!4923226 (= res!2101677 (isBalanced!4085 (_2!33890 lt!2025152)))))

(declare-fun b!4923227 () Bool)

(declare-fun lt!2025154 () tuple2!61168)

(declare-fun call!343078 () tuple2!61168)

(assert (=> b!4923227 (= lt!2025154 call!343078)))

(declare-fun e!3076388 () tuple2!61168)

(declare-fun call!343079 () List!56809)

(assert (=> b!4923227 (= e!3076388 (tuple2!61169 (_1!33887 lt!2025154) call!343079))))

(declare-fun bm!343075 () Bool)

(declare-fun c!838071 () Bool)

(assert (=> bm!343075 (= c!838071 c!838072)))

(assert (=> bm!343075 (= call!343080 (splitAt!271 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))) e!3076391))))

(declare-fun b!4923228 () Bool)

(assert (=> b!4923228 (= lt!2025145 call!343080)))

(assert (=> b!4923228 (= e!3076387 (tuple2!61175 call!343082 (_2!33890 lt!2025145)))))

(declare-fun bm!343076 () Bool)

(declare-fun lt!2025146 () tuple2!61168)

(assert (=> bm!343076 (= call!343079 (++!12322 (ite c!838077 (_2!33887 lt!2025154) lt!2025151) (ite c!838077 lt!2025144 (_1!33887 lt!2025146))))))

(declare-fun b!4923229 () Bool)

(assert (=> b!4923229 (= e!3076384 (list!17950 (xs!18192 (c!837809 input!5492))))))

(declare-fun b!4923230 () Bool)

(declare-fun lt!2025150 () Unit!147131)

(declare-fun lt!2025143 () Unit!147131)

(assert (=> b!4923230 (= lt!2025150 lt!2025143)))

(declare-fun slice!766 (List!56809 Int Int) List!56809)

(assert (=> b!4923230 (= (drop!2224 lt!2025155 lt!2024322) (slice!766 lt!2025155 lt!2024322 call!343077))))

(declare-fun dropLemma!25 (List!56809 Int) Unit!147131)

(assert (=> b!4923230 (= lt!2025143 (dropLemma!25 lt!2025155 lt!2024322))))

(assert (=> b!4923230 (= lt!2025155 (list!17950 (xs!18192 (c!837809 input!5492))))))

(declare-fun lt!2025148 () tuple2!61168)

(assert (=> b!4923230 (= lt!2025148 call!343081)))

(declare-fun slice!767 (IArray!29805 Int Int) IArray!29805)

(assert (=> b!4923230 (= e!3076381 (tuple2!61175 (Leaf!24741 (slice!767 (xs!18192 (c!837809 input!5492)) 0 lt!2024322) lt!2024322) (Leaf!24741 (slice!767 (xs!18192 (c!837809 input!5492)) lt!2024322 (csize!29975 (c!837809 input!5492))) (- (csize!29975 (c!837809 input!5492)) lt!2024322))))))

(declare-fun bm!343077 () Bool)

(declare-fun c!838074 () Bool)

(assert (=> bm!343077 (= c!838074 c!838077)))

(assert (=> bm!343077 (= call!343078 call!343081)))

(declare-fun b!4923231 () Bool)

(assert (=> b!4923231 (= e!3076390 e!3076387)))

(assert (=> b!4923231 (= c!838072 (< lt!2024322 (size!37478 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923232 () Bool)

(assert (=> b!4923232 (= lt!2025146 call!343078)))

(assert (=> b!4923232 (= e!3076388 (tuple2!61169 call!343079 (_2!33887 lt!2025146)))))

(declare-fun d!1583573 () Bool)

(assert (=> d!1583573 e!3076383))

(declare-fun res!2101678 () Bool)

(assert (=> d!1583573 (=> (not res!2101678) (not e!3076383))))

(assert (=> d!1583573 (= res!2101678 (isBalanced!4085 (_1!33890 lt!2025152)))))

(assert (=> d!1583573 (= lt!2025152 e!3076382)))

(declare-fun c!838076 () Bool)

(assert (=> d!1583573 (= c!838076 ((_ is Empty!14872) (c!837809 input!5492)))))

(assert (=> d!1583573 (isBalanced!4085 (c!837809 input!5492))))

(assert (=> d!1583573 (= (splitAt!271 (c!837809 input!5492) lt!2024322) lt!2025152)))

(declare-fun b!4923233 () Bool)

(assert (=> b!4923233 (= e!3076380 e!3076388)))

(assert (=> b!4923233 (= c!838077 (< lt!2024322 call!343077))))

(assert (= (and d!1583573 c!838076) b!4923211))

(assert (= (and d!1583573 (not c!838076)) b!4923215))

(assert (= (and b!4923215 c!838080) b!4923220))

(assert (= (and b!4923215 (not c!838080)) b!4923213))

(assert (= (and b!4923220 c!838079) b!4923210))

(assert (= (and b!4923220 (not c!838079)) b!4923216))

(assert (= (and b!4923216 c!838075) b!4923212))

(assert (= (and b!4923216 (not c!838075)) b!4923230))

(assert (= (and b!4923213 c!838073) b!4923221))

(assert (= (and b!4923213 (not c!838073)) b!4923233))

(assert (= (and b!4923233 c!838077) b!4923227))

(assert (= (and b!4923233 (not c!838077)) b!4923232))

(assert (= (or b!4923227 b!4923232) bm!343076))

(assert (= (or b!4923227 b!4923232) bm!343077))

(assert (= (and bm!343077 c!838074) b!4923222))

(assert (= (and bm!343077 (not c!838074)) b!4923223))

(assert (= (and b!4923213 c!838078) b!4923225))

(assert (= (and b!4923213 (not c!838078)) b!4923231))

(assert (= (and b!4923231 c!838072) b!4923219))

(assert (= (and b!4923231 (not c!838072)) b!4923228))

(assert (= (or b!4923219 b!4923228) bm!343073))

(assert (= (or b!4923219 b!4923228) bm!343075))

(assert (= (and bm!343075 c!838071) b!4923218))

(assert (= (and bm!343075 (not c!838071)) b!4923224))

(assert (= (or b!4923230 b!4923213 b!4923223 b!4923233) bm!343074))

(assert (= (or b!4923230 bm!343077) bm!343072))

(assert (= (and bm!343072 c!838070) b!4923229))

(assert (= (and bm!343072 (not c!838070)) b!4923217))

(assert (= (and d!1583573 res!2101678) b!4923226))

(assert (= (and b!4923226 res!2101677) b!4923214))

(declare-fun m!5938742 () Bool)

(assert (=> bm!343073 m!5938742))

(declare-fun m!5938744 () Bool)

(assert (=> bm!343075 m!5938744))

(declare-fun m!5938746 () Bool)

(assert (=> b!4923226 m!5938746))

(declare-fun m!5938748 () Bool)

(assert (=> d!1583573 m!5938748))

(assert (=> d!1583573 m!5937556))

(declare-fun m!5938750 () Bool)

(assert (=> b!4923214 m!5938750))

(declare-fun m!5938752 () Bool)

(assert (=> b!4923214 m!5938752))

(assert (=> b!4923214 m!5937864))

(assert (=> b!4923214 m!5937864))

(declare-fun m!5938754 () Bool)

(assert (=> b!4923214 m!5938754))

(assert (=> b!4923229 m!5938448))

(declare-fun m!5938756 () Bool)

(assert (=> bm!343076 m!5938756))

(assert (=> b!4923224 m!5938310))

(declare-fun m!5938760 () Bool)

(assert (=> b!4923213 m!5938760))

(declare-fun m!5938762 () Bool)

(assert (=> b!4923213 m!5938762))

(declare-fun m!5938764 () Bool)

(assert (=> b!4923213 m!5938764))

(assert (=> b!4923213 m!5938310))

(assert (=> b!4923213 m!5937958))

(assert (=> b!4923213 m!5938760))

(assert (=> b!4923213 m!5938300))

(assert (=> b!4923231 m!5938310))

(declare-fun m!5938766 () Bool)

(assert (=> bm!343074 m!5938766))

(declare-fun m!5938768 () Bool)

(assert (=> bm!343072 m!5938768))

(declare-fun m!5938770 () Bool)

(assert (=> b!4923230 m!5938770))

(assert (=> b!4923230 m!5938448))

(declare-fun m!5938772 () Bool)

(assert (=> b!4923230 m!5938772))

(declare-fun m!5938774 () Bool)

(assert (=> b!4923230 m!5938774))

(declare-fun m!5938776 () Bool)

(assert (=> b!4923230 m!5938776))

(declare-fun m!5938778 () Bool)

(assert (=> b!4923230 m!5938778))

(assert (=> d!1583381 d!1583573))

(assert (=> d!1583381 d!1583349))

(assert (=> b!4922493 d!1583487))

(declare-fun d!1583605 () Bool)

(assert (=> d!1583605 (= (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) (h!63133 (getSuffix!2949 lt!2024324 Nil!56685)))))

(assert (=> b!4922493 d!1583605))

(assert (=> b!4922493 d!1583419))

(declare-fun d!1583607 () Bool)

(assert (=> d!1583607 (<= (size!37476 Nil!56685) (size!37476 lt!2024324))))

(declare-fun lt!2025159 () Unit!147131)

(declare-fun choose!36040 (List!56809 List!56809) Unit!147131)

(assert (=> d!1583607 (= lt!2025159 (choose!36040 Nil!56685 lt!2024324))))

(assert (=> d!1583607 (isPrefix!4961 Nil!56685 lt!2024324)))

(assert (=> d!1583607 (= (lemmaIsPrefixThenSmallerEqSize!685 Nil!56685 lt!2024324) lt!2025159)))

(declare-fun bs!1179278 () Bool)

(assert (= bs!1179278 d!1583607))

(assert (=> bs!1179278 m!5937598))

(assert (=> bs!1179278 m!5937596))

(declare-fun m!5938780 () Bool)

(assert (=> bs!1179278 m!5938780))

(assert (=> bs!1179278 m!5938116))

(assert (=> b!4922493 d!1583607))

(assert (=> b!4922493 d!1583521))

(declare-fun d!1583609 () Bool)

(assert (=> d!1583609 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) lt!2024324)))

(declare-fun lt!2025165 () Unit!147131)

(declare-fun choose!36041 (List!56809 List!56809) Unit!147131)

(assert (=> d!1583609 (= lt!2025165 (choose!36041 Nil!56685 lt!2024324))))

(assert (=> d!1583609 (isPrefix!4961 Nil!56685 lt!2024324)))

(assert (=> d!1583609 (= (lemmaAddHeadSuffixToPrefixStillPrefix!773 Nil!56685 lt!2024324) lt!2025165)))

(declare-fun bs!1179279 () Bool)

(assert (= bs!1179279 d!1583609))

(assert (=> bs!1179279 m!5937586))

(assert (=> bs!1179279 m!5937606))

(declare-fun m!5938786 () Bool)

(assert (=> bs!1179279 m!5938786))

(assert (=> bs!1179279 m!5937582))

(assert (=> bs!1179279 m!5937582))

(assert (=> bs!1179279 m!5937584))

(assert (=> bs!1179279 m!5938116))

(assert (=> bs!1179279 m!5937586))

(assert (=> b!4922493 d!1583609))

(declare-fun d!1583613 () Bool)

(assert (=> d!1583613 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)) lt!2024403) lt!2024324)))

(declare-fun lt!2025168 () Unit!147131)

(declare-fun choose!36042 (List!56809 C!26956 List!56809 List!56809) Unit!147131)

(assert (=> d!1583613 (= lt!2025168 (choose!36042 Nil!56685 lt!2024400 lt!2024403 lt!2024324))))

(assert (=> d!1583613 (= (++!12322 Nil!56685 (Cons!56685 lt!2024400 lt!2024403)) lt!2024324)))

(assert (=> d!1583613 (= (lemmaMoveElementToOtherListKeepsConcatEq!1391 Nil!56685 lt!2024400 lt!2024403 lt!2024324) lt!2025168)))

(declare-fun bs!1179281 () Bool)

(assert (= bs!1179281 d!1583613))

(assert (=> bs!1179281 m!5937588))

(assert (=> bs!1179281 m!5937588))

(assert (=> bs!1179281 m!5937590))

(declare-fun m!5938792 () Bool)

(assert (=> bs!1179281 m!5938792))

(declare-fun m!5938796 () Bool)

(assert (=> bs!1179281 m!5938796))

(assert (=> b!4922493 d!1583613))

(declare-fun b!4923254 () Bool)

(declare-fun res!2101697 () Bool)

(declare-fun e!3076401 () Bool)

(assert (=> b!4923254 (=> (not res!2101697) (not e!3076401))))

(declare-fun lt!2025169 () List!56809)

(assert (=> b!4923254 (= res!2101697 (= (size!37476 lt!2025169) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 lt!2024400 Nil!56685)))))))

(declare-fun b!4923252 () Bool)

(declare-fun e!3076402 () List!56809)

(assert (=> b!4923252 (= e!3076402 (Cons!56685 lt!2024400 Nil!56685))))

(declare-fun b!4923253 () Bool)

(assert (=> b!4923253 (= e!3076402 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 lt!2024400 Nil!56685))))))

(declare-fun d!1583617 () Bool)

(assert (=> d!1583617 e!3076401))

(declare-fun res!2101698 () Bool)

(assert (=> d!1583617 (=> (not res!2101698) (not e!3076401))))

(assert (=> d!1583617 (= res!2101698 (= (content!10066 lt!2025169) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 lt!2024400 Nil!56685)))))))

(assert (=> d!1583617 (= lt!2025169 e!3076402)))

(declare-fun c!838081 () Bool)

(assert (=> d!1583617 (= c!838081 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583617 (= (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)) lt!2025169)))

(declare-fun b!4923255 () Bool)

(assert (=> b!4923255 (= e!3076401 (or (not (= (Cons!56685 lt!2024400 Nil!56685) Nil!56685)) (= lt!2025169 Nil!56685)))))

(assert (= (and d!1583617 c!838081) b!4923252))

(assert (= (and d!1583617 (not c!838081)) b!4923253))

(assert (= (and d!1583617 res!2101698) b!4923254))

(assert (= (and b!4923254 res!2101697) b!4923255))

(declare-fun m!5938798 () Bool)

(assert (=> b!4923254 m!5938798))

(assert (=> b!4923254 m!5937598))

(declare-fun m!5938800 () Bool)

(assert (=> b!4923254 m!5938800))

(declare-fun m!5938802 () Bool)

(assert (=> b!4923253 m!5938802))

(declare-fun m!5938804 () Bool)

(assert (=> d!1583617 m!5938804))

(assert (=> d!1583617 m!5938038))

(declare-fun m!5938806 () Bool)

(assert (=> d!1583617 m!5938806))

(assert (=> b!4922493 d!1583617))

(declare-fun d!1583621 () Bool)

(declare-fun lt!2025170 () Int)

(assert (=> d!1583621 (>= lt!2025170 0)))

(declare-fun e!3076403 () Int)

(assert (=> d!1583621 (= lt!2025170 e!3076403)))

(declare-fun c!838082 () Bool)

(assert (=> d!1583621 (= c!838082 ((_ is Nil!56685) lt!2024324))))

(assert (=> d!1583621 (= (size!37476 lt!2024324) lt!2025170)))

(declare-fun b!4923256 () Bool)

(assert (=> b!4923256 (= e!3076403 0)))

(declare-fun b!4923257 () Bool)

(assert (=> b!4923257 (= e!3076403 (+ 1 (size!37476 (t!367249 lt!2024324))))))

(assert (= (and d!1583621 c!838082) b!4923256))

(assert (= (and d!1583621 (not c!838082)) b!4923257))

(declare-fun m!5938810 () Bool)

(assert (=> b!4923257 m!5938810))

(assert (=> b!4922493 d!1583621))

(declare-fun d!1583625 () Bool)

(declare-fun e!3076404 () Bool)

(assert (=> d!1583625 e!3076404))

(declare-fun res!2101701 () Bool)

(assert (=> d!1583625 (=> res!2101701 e!3076404)))

(declare-fun lt!2025172 () Bool)

(assert (=> d!1583625 (= res!2101701 (not lt!2025172))))

(declare-fun e!3076405 () Bool)

(assert (=> d!1583625 (= lt!2025172 e!3076405)))

(declare-fun res!2101700 () Bool)

(assert (=> d!1583625 (=> res!2101700 e!3076405)))

(assert (=> d!1583625 (= res!2101700 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))))

(assert (=> d!1583625 (= (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) lt!2024324) lt!2025172)))

(declare-fun b!4923260 () Bool)

(declare-fun e!3076406 () Bool)

(assert (=> b!4923260 (= e!3076406 (isPrefix!4961 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))) (tail!9667 lt!2024324)))))

(declare-fun b!4923259 () Bool)

(declare-fun res!2101702 () Bool)

(assert (=> b!4923259 (=> (not res!2101702) (not e!3076406))))

(assert (=> b!4923259 (= res!2101702 (= (head!10520 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))) (head!10520 lt!2024324)))))

(declare-fun b!4923258 () Bool)

(assert (=> b!4923258 (= e!3076405 e!3076406)))

(declare-fun res!2101699 () Bool)

(assert (=> b!4923258 (=> (not res!2101699) (not e!3076406))))

(assert (=> b!4923258 (= res!2101699 (not ((_ is Nil!56685) lt!2024324)))))

(declare-fun b!4923261 () Bool)

(assert (=> b!4923261 (= e!3076404 (>= (size!37476 lt!2024324) (size!37476 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))))

(assert (= (and d!1583625 (not res!2101700)) b!4923258))

(assert (= (and b!4923258 res!2101699) b!4923259))

(assert (= (and b!4923259 res!2101702) b!4923260))

(assert (= (and d!1583625 (not res!2101701)) b!4923261))

(assert (=> b!4923260 m!5937586))

(declare-fun m!5938818 () Bool)

(assert (=> b!4923260 m!5938818))

(assert (=> b!4923260 m!5937580))

(assert (=> b!4923260 m!5938818))

(assert (=> b!4923260 m!5937580))

(declare-fun m!5938820 () Bool)

(assert (=> b!4923260 m!5938820))

(assert (=> b!4923259 m!5937586))

(declare-fun m!5938822 () Bool)

(assert (=> b!4923259 m!5938822))

(assert (=> b!4923259 m!5937604))

(assert (=> b!4923261 m!5937596))

(assert (=> b!4923261 m!5937586))

(declare-fun m!5938824 () Bool)

(assert (=> b!4923261 m!5938824))

(assert (=> b!4922493 d!1583625))

(declare-fun b!4923268 () Bool)

(declare-fun res!2101705 () Bool)

(declare-fun e!3076409 () Bool)

(assert (=> b!4923268 (=> (not res!2101705) (not e!3076409))))

(declare-fun lt!2025175 () List!56809)

(assert (=> b!4923268 (= res!2101705 (= (size!37476 lt!2025175) (+ (size!37476 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) (size!37476 lt!2024403))))))

(declare-fun b!4923266 () Bool)

(declare-fun e!3076410 () List!56809)

(assert (=> b!4923266 (= e!3076410 lt!2024403)))

(declare-fun b!4923267 () Bool)

(assert (=> b!4923267 (= e!3076410 (Cons!56685 (h!63133 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) (++!12322 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) lt!2024403)))))

(declare-fun d!1583631 () Bool)

(assert (=> d!1583631 e!3076409))

(declare-fun res!2101706 () Bool)

(assert (=> d!1583631 (=> (not res!2101706) (not e!3076409))))

(assert (=> d!1583631 (= res!2101706 (= (content!10066 lt!2025175) ((_ map or) (content!10066 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) (content!10066 lt!2024403))))))

(assert (=> d!1583631 (= lt!2025175 e!3076410)))

(declare-fun c!838084 () Bool)

(assert (=> d!1583631 (= c!838084 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))))))

(assert (=> d!1583631 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)) lt!2024403) lt!2025175)))

(declare-fun b!4923269 () Bool)

(assert (=> b!4923269 (= e!3076409 (or (not (= lt!2024403 Nil!56685)) (= lt!2025175 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)))))))

(assert (= (and d!1583631 c!838084) b!4923266))

(assert (= (and d!1583631 (not c!838084)) b!4923267))

(assert (= (and d!1583631 res!2101706) b!4923268))

(assert (= (and b!4923268 res!2101705) b!4923269))

(declare-fun m!5938840 () Bool)

(assert (=> b!4923268 m!5938840))

(assert (=> b!4923268 m!5937588))

(declare-fun m!5938842 () Bool)

(assert (=> b!4923268 m!5938842))

(declare-fun m!5938844 () Bool)

(assert (=> b!4923268 m!5938844))

(declare-fun m!5938846 () Bool)

(assert (=> b!4923267 m!5938846))

(declare-fun m!5938848 () Bool)

(assert (=> d!1583631 m!5938848))

(assert (=> d!1583631 m!5937588))

(declare-fun m!5938850 () Bool)

(assert (=> d!1583631 m!5938850))

(declare-fun m!5938852 () Bool)

(assert (=> d!1583631 m!5938852))

(assert (=> b!4922493 d!1583631))

(assert (=> b!4922493 d!1583495))

(declare-fun b!4923276 () Bool)

(declare-fun res!2101709 () Bool)

(declare-fun e!3076413 () Bool)

(assert (=> b!4923276 (=> (not res!2101709) (not e!3076413))))

(declare-fun lt!2025177 () List!56809)

(assert (=> b!4923276 (= res!2101709 (= (size!37476 lt!2025177) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))))

(declare-fun b!4923274 () Bool)

(declare-fun e!3076414 () List!56809)

(assert (=> b!4923274 (= e!3076414 (Cons!56685 (head!10520 lt!2024324) Nil!56685))))

(declare-fun b!4923275 () Bool)

(assert (=> b!4923275 (= e!3076414 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 (head!10520 lt!2024324) Nil!56685))))))

(declare-fun d!1583635 () Bool)

(assert (=> d!1583635 e!3076413))

(declare-fun res!2101710 () Bool)

(assert (=> d!1583635 (=> (not res!2101710) (not e!3076413))))

(assert (=> d!1583635 (= res!2101710 (= (content!10066 lt!2025177) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))))

(assert (=> d!1583635 (= lt!2025177 e!3076414)))

(declare-fun c!838086 () Bool)

(assert (=> d!1583635 (= c!838086 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583635 (= (++!12322 Nil!56685 (Cons!56685 (head!10520 lt!2024324) Nil!56685)) lt!2025177)))

(declare-fun b!4923277 () Bool)

(assert (=> b!4923277 (= e!3076413 (or (not (= (Cons!56685 (head!10520 lt!2024324) Nil!56685) Nil!56685)) (= lt!2025177 Nil!56685)))))

(assert (= (and d!1583635 c!838086) b!4923274))

(assert (= (and d!1583635 (not c!838086)) b!4923275))

(assert (= (and d!1583635 res!2101710) b!4923276))

(assert (= (and b!4923276 res!2101709) b!4923277))

(declare-fun m!5938866 () Bool)

(assert (=> b!4923276 m!5938866))

(assert (=> b!4923276 m!5937598))

(declare-fun m!5938868 () Bool)

(assert (=> b!4923276 m!5938868))

(declare-fun m!5938870 () Bool)

(assert (=> b!4923275 m!5938870))

(declare-fun m!5938872 () Bool)

(assert (=> d!1583635 m!5938872))

(assert (=> d!1583635 m!5938038))

(declare-fun m!5938874 () Bool)

(assert (=> d!1583635 m!5938874))

(assert (=> b!4922493 d!1583635))

(declare-fun b!4923280 () Bool)

(declare-fun res!2101711 () Bool)

(declare-fun e!3076415 () Bool)

(assert (=> b!4923280 (=> (not res!2101711) (not e!3076415))))

(declare-fun lt!2025179 () List!56809)

(assert (=> b!4923280 (= res!2101711 (= (size!37476 lt!2025179) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))))

(declare-fun b!4923278 () Bool)

(declare-fun e!3076416 () List!56809)

(assert (=> b!4923278 (= e!3076416 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))

(declare-fun b!4923279 () Bool)

(assert (=> b!4923279 (= e!3076416 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))))

(declare-fun d!1583641 () Bool)

(assert (=> d!1583641 e!3076415))

(declare-fun res!2101712 () Bool)

(assert (=> d!1583641 (=> (not res!2101712) (not e!3076415))))

(assert (=> d!1583641 (= res!2101712 (= (content!10066 lt!2025179) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))))

(assert (=> d!1583641 (= lt!2025179 e!3076416)))

(declare-fun c!838087 () Bool)

(assert (=> d!1583641 (= c!838087 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583641 (= (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) lt!2025179)))

(declare-fun b!4923281 () Bool)

(assert (=> b!4923281 (= e!3076415 (or (not (= (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685) Nil!56685)) (= lt!2025179 Nil!56685)))))

(assert (= (and d!1583641 c!838087) b!4923278))

(assert (= (and d!1583641 (not c!838087)) b!4923279))

(assert (= (and d!1583641 res!2101712) b!4923280))

(assert (= (and b!4923280 res!2101711) b!4923281))

(declare-fun m!5938880 () Bool)

(assert (=> b!4923280 m!5938880))

(assert (=> b!4923280 m!5937598))

(declare-fun m!5938882 () Bool)

(assert (=> b!4923280 m!5938882))

(declare-fun m!5938884 () Bool)

(assert (=> b!4923279 m!5938884))

(declare-fun m!5938886 () Bool)

(assert (=> d!1583641 m!5938886))

(assert (=> d!1583641 m!5938038))

(declare-fun m!5938888 () Bool)

(assert (=> d!1583641 m!5938888))

(assert (=> b!4922493 d!1583641))

(assert (=> bm!342980 d!1583495))

(assert (=> bm!342894 d!1583565))

(assert (=> b!4922660 d!1583495))

(assert (=> b!4922660 d!1583487))

(declare-fun b!4923309 () Bool)

(declare-fun e!3076434 () List!56809)

(assert (=> b!4923309 (= e!3076434 Nil!56685)))

(declare-fun b!4923310 () Bool)

(declare-fun e!3076436 () List!56809)

(assert (=> b!4923310 (= e!3076436 (drop!2224 (t!367249 lt!2024717) (- 0 1)))))

(declare-fun bm!343080 () Bool)

(declare-fun call!343085 () Int)

(assert (=> bm!343080 (= call!343085 (size!37476 lt!2024717))))

(declare-fun b!4923311 () Bool)

(declare-fun e!3076437 () Int)

(declare-fun e!3076435 () Int)

(assert (=> b!4923311 (= e!3076437 e!3076435)))

(declare-fun c!838100 () Bool)

(assert (=> b!4923311 (= c!838100 (>= 0 call!343085))))

(declare-fun b!4923312 () Bool)

(assert (=> b!4923312 (= e!3076437 call!343085)))

(declare-fun b!4923313 () Bool)

(assert (=> b!4923313 (= e!3076435 (- call!343085 0))))

(declare-fun b!4923314 () Bool)

(assert (=> b!4923314 (= e!3076435 0)))

(declare-fun b!4923315 () Bool)

(assert (=> b!4923315 (= e!3076434 e!3076436)))

(declare-fun c!838099 () Bool)

(assert (=> b!4923315 (= c!838099 (<= 0 0))))

(declare-fun b!4923316 () Bool)

(declare-fun e!3076433 () Bool)

(declare-fun lt!2025185 () List!56809)

(assert (=> b!4923316 (= e!3076433 (= (size!37476 lt!2025185) e!3076437))))

(declare-fun c!838102 () Bool)

(assert (=> b!4923316 (= c!838102 (<= 0 0))))

(declare-fun b!4923317 () Bool)

(assert (=> b!4923317 (= e!3076436 lt!2024717)))

(declare-fun d!1583645 () Bool)

(assert (=> d!1583645 e!3076433))

(declare-fun res!2101718 () Bool)

(assert (=> d!1583645 (=> (not res!2101718) (not e!3076433))))

(assert (=> d!1583645 (= res!2101718 (= ((_ map implies) (content!10066 lt!2025185) (content!10066 lt!2024717)) ((as const (InoxSet C!26956)) true)))))

(assert (=> d!1583645 (= lt!2025185 e!3076434)))

(declare-fun c!838101 () Bool)

(assert (=> d!1583645 (= c!838101 ((_ is Nil!56685) lt!2024717))))

(assert (=> d!1583645 (= (drop!2224 lt!2024717 0) lt!2025185)))

(assert (= (and d!1583645 c!838101) b!4923309))

(assert (= (and d!1583645 (not c!838101)) b!4923315))

(assert (= (and b!4923315 c!838099) b!4923317))

(assert (= (and b!4923315 (not c!838099)) b!4923310))

(assert (= (and d!1583645 res!2101718) b!4923316))

(assert (= (and b!4923316 c!838102) b!4923312))

(assert (= (and b!4923316 (not c!838102)) b!4923311))

(assert (= (and b!4923311 c!838100) b!4923314))

(assert (= (and b!4923311 (not c!838100)) b!4923313))

(assert (= (or b!4923312 b!4923311 b!4923313) bm!343080))

(declare-fun m!5938900 () Bool)

(assert (=> b!4923310 m!5938900))

(declare-fun m!5938902 () Bool)

(assert (=> bm!343080 m!5938902))

(declare-fun m!5938904 () Bool)

(assert (=> b!4923316 m!5938904))

(declare-fun m!5938906 () Bool)

(assert (=> d!1583645 m!5938906))

(declare-fun m!5938908 () Bool)

(assert (=> d!1583645 m!5938908))

(assert (=> b!4922660 d!1583645))

(declare-fun b!4923320 () Bool)

(declare-fun res!2101719 () Bool)

(declare-fun e!3076438 () Bool)

(assert (=> b!4923320 (=> (not res!2101719) (not e!3076438))))

(declare-fun lt!2025186 () List!56809)

(assert (=> b!4923320 (= res!2101719 (= (size!37476 lt!2025186) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))))

(declare-fun b!4923318 () Bool)

(declare-fun e!3076439 () List!56809)

(assert (=> b!4923318 (= e!3076439 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))

(declare-fun b!4923319 () Bool)

(assert (=> b!4923319 (= e!3076439 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))))

(declare-fun d!1583649 () Bool)

(assert (=> d!1583649 e!3076438))

(declare-fun res!2101720 () Bool)

(assert (=> d!1583649 (=> (not res!2101720) (not e!3076438))))

(assert (=> d!1583649 (= res!2101720 (= (content!10066 lt!2025186) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))))

(assert (=> d!1583649 (= lt!2025186 e!3076439)))

(declare-fun c!838103 () Bool)

(assert (=> d!1583649 (= c!838103 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583649 (= (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) lt!2025186)))

(declare-fun b!4923321 () Bool)

(assert (=> b!4923321 (= e!3076438 (or (not (= (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685) Nil!56685)) (= lt!2025186 Nil!56685)))))

(assert (= (and d!1583649 c!838103) b!4923318))

(assert (= (and d!1583649 (not c!838103)) b!4923319))

(assert (= (and d!1583649 res!2101720) b!4923320))

(assert (= (and b!4923320 res!2101719) b!4923321))

(declare-fun m!5938910 () Bool)

(assert (=> b!4923320 m!5938910))

(assert (=> b!4923320 m!5937598))

(declare-fun m!5938912 () Bool)

(assert (=> b!4923320 m!5938912))

(declare-fun m!5938914 () Bool)

(assert (=> b!4923319 m!5938914))

(declare-fun m!5938916 () Bool)

(assert (=> d!1583649 m!5938916))

(assert (=> d!1583649 m!5938038))

(declare-fun m!5938918 () Bool)

(assert (=> d!1583649 m!5938918))

(assert (=> b!4922660 d!1583649))

(declare-fun d!1583651 () Bool)

(assert (=> d!1583651 (<= (size!37476 Nil!56685) (size!37476 lt!2024751))))

(declare-fun lt!2025187 () Unit!147131)

(assert (=> d!1583651 (= lt!2025187 (choose!36040 Nil!56685 lt!2024751))))

(assert (=> d!1583651 (isPrefix!4961 Nil!56685 lt!2024751)))

(assert (=> d!1583651 (= (lemmaIsPrefixThenSmallerEqSize!685 Nil!56685 lt!2024751) lt!2025187)))

(declare-fun bs!1179288 () Bool)

(assert (= bs!1179288 d!1583651))

(assert (=> bs!1179288 m!5937598))

(assert (=> bs!1179288 m!5937812))

(declare-fun m!5938920 () Bool)

(assert (=> bs!1179288 m!5938920))

(declare-fun m!5938922 () Bool)

(assert (=> bs!1179288 m!5938922))

(assert (=> b!4922660 d!1583651))

(declare-fun d!1583653 () Bool)

(assert (=> d!1583653 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) lt!2024736)))

(declare-fun lt!2025188 () Unit!147131)

(assert (=> d!1583653 (= lt!2025188 (choose!36041 Nil!56685 lt!2024736))))

(assert (=> d!1583653 (isPrefix!4961 Nil!56685 lt!2024736)))

(assert (=> d!1583653 (= (lemmaAddHeadSuffixToPrefixStillPrefix!773 Nil!56685 lt!2024736) lt!2025188)))

(declare-fun bs!1179289 () Bool)

(assert (= bs!1179289 d!1583653))

(assert (=> bs!1179289 m!5937806))

(assert (=> bs!1179289 m!5937818))

(declare-fun m!5938924 () Bool)

(assert (=> bs!1179289 m!5938924))

(assert (=> bs!1179289 m!5937814))

(assert (=> bs!1179289 m!5937814))

(assert (=> bs!1179289 m!5937816))

(declare-fun m!5938926 () Bool)

(assert (=> bs!1179289 m!5938926))

(assert (=> bs!1179289 m!5937806))

(assert (=> b!4922660 d!1583653))

(declare-fun d!1583655 () Bool)

(assert (=> d!1583655 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)) lt!2024741) lt!2024733)))

(declare-fun lt!2025189 () Unit!147131)

(assert (=> d!1583655 (= lt!2025189 (choose!36042 Nil!56685 lt!2024743 lt!2024741 lt!2024733))))

(assert (=> d!1583655 (= (++!12322 Nil!56685 (Cons!56685 lt!2024743 lt!2024741)) lt!2024733)))

(assert (=> d!1583655 (= (lemmaMoveElementToOtherListKeepsConcatEq!1391 Nil!56685 lt!2024743 lt!2024741 lt!2024733) lt!2025189)))

(declare-fun bs!1179290 () Bool)

(assert (= bs!1179290 d!1583655))

(assert (=> bs!1179290 m!5937822))

(assert (=> bs!1179290 m!5937822))

(assert (=> bs!1179290 m!5937830))

(declare-fun m!5938928 () Bool)

(assert (=> bs!1179290 m!5938928))

(declare-fun m!5938930 () Bool)

(assert (=> bs!1179290 m!5938930))

(assert (=> b!4922660 d!1583655))

(assert (=> b!4922660 d!1583351))

(declare-fun d!1583657 () Bool)

(declare-fun e!3076440 () Bool)

(assert (=> d!1583657 e!3076440))

(declare-fun res!2101722 () Bool)

(assert (=> d!1583657 (=> (not res!2101722) (not e!3076440))))

(declare-fun lt!2025191 () tuple2!61170)

(assert (=> d!1583657 (= res!2101722 (isBalanced!4085 (c!837809 (_1!33888 lt!2025191))))))

(declare-fun lt!2025190 () tuple2!61174)

(assert (=> d!1583657 (= lt!2025191 (tuple2!61171 (BalanceConc!29175 (_1!33890 lt!2025190)) (BalanceConc!29175 (_2!33890 lt!2025190))))))

(assert (=> d!1583657 (= lt!2025190 (splitAt!271 (c!837809 input!5492) 0))))

(assert (=> d!1583657 (isBalanced!4085 (c!837809 input!5492))))

(assert (=> d!1583657 (= (splitAt!269 input!5492 0) lt!2025191)))

(declare-fun b!4923322 () Bool)

(declare-fun res!2101721 () Bool)

(assert (=> b!4923322 (=> (not res!2101721) (not e!3076440))))

(assert (=> b!4923322 (= res!2101721 (isBalanced!4085 (c!837809 (_2!33888 lt!2025191))))))

(declare-fun b!4923323 () Bool)

(assert (=> b!4923323 (= e!3076440 (= (tuple2!61169 (list!17947 (_1!33888 lt!2025191)) (list!17947 (_2!33888 lt!2025191))) (splitAtIndex!101 (list!17947 input!5492) 0)))))

(assert (= (and d!1583657 res!2101722) b!4923322))

(assert (= (and b!4923322 res!2101721) b!4923323))

(declare-fun m!5938932 () Bool)

(assert (=> d!1583657 m!5938932))

(declare-fun m!5938934 () Bool)

(assert (=> d!1583657 m!5938934))

(assert (=> d!1583657 m!5937556))

(declare-fun m!5938936 () Bool)

(assert (=> b!4923322 m!5938936))

(declare-fun m!5938938 () Bool)

(assert (=> b!4923323 m!5938938))

(declare-fun m!5938940 () Bool)

(assert (=> b!4923323 m!5938940))

(assert (=> b!4923323 m!5937560))

(assert (=> b!4923323 m!5937560))

(declare-fun m!5938942 () Bool)

(assert (=> b!4923323 m!5938942))

(assert (=> b!4922660 d!1583657))

(declare-fun b!4923326 () Bool)

(declare-fun res!2101723 () Bool)

(declare-fun e!3076441 () Bool)

(assert (=> b!4923326 (=> (not res!2101723) (not e!3076441))))

(declare-fun lt!2025192 () List!56809)

(assert (=> b!4923326 (= res!2101723 (= (size!37476 lt!2025192) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 lt!2024743 Nil!56685)))))))

(declare-fun b!4923324 () Bool)

(declare-fun e!3076442 () List!56809)

(assert (=> b!4923324 (= e!3076442 (Cons!56685 lt!2024743 Nil!56685))))

(declare-fun b!4923325 () Bool)

(assert (=> b!4923325 (= e!3076442 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 lt!2024743 Nil!56685))))))

(declare-fun d!1583659 () Bool)

(assert (=> d!1583659 e!3076441))

(declare-fun res!2101724 () Bool)

(assert (=> d!1583659 (=> (not res!2101724) (not e!3076441))))

(assert (=> d!1583659 (= res!2101724 (= (content!10066 lt!2025192) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 lt!2024743 Nil!56685)))))))

(assert (=> d!1583659 (= lt!2025192 e!3076442)))

(declare-fun c!838104 () Bool)

(assert (=> d!1583659 (= c!838104 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583659 (= (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)) lt!2025192)))

(declare-fun b!4923327 () Bool)

(assert (=> b!4923327 (= e!3076441 (or (not (= (Cons!56685 lt!2024743 Nil!56685) Nil!56685)) (= lt!2025192 Nil!56685)))))

(assert (= (and d!1583659 c!838104) b!4923324))

(assert (= (and d!1583659 (not c!838104)) b!4923325))

(assert (= (and d!1583659 res!2101724) b!4923326))

(assert (= (and b!4923326 res!2101723) b!4923327))

(declare-fun m!5938944 () Bool)

(assert (=> b!4923326 m!5938944))

(assert (=> b!4923326 m!5937598))

(declare-fun m!5938946 () Bool)

(assert (=> b!4923326 m!5938946))

(declare-fun m!5938948 () Bool)

(assert (=> b!4923325 m!5938948))

(declare-fun m!5938950 () Bool)

(assert (=> d!1583659 m!5938950))

(assert (=> d!1583659 m!5938038))

(declare-fun m!5938952 () Bool)

(assert (=> d!1583659 m!5938952))

(assert (=> b!4922660 d!1583659))

(declare-fun d!1583661 () Bool)

(assert (=> d!1583661 (and (= lt!2024712 Nil!56685) (= lt!2024718 lt!2024324))))

(declare-fun lt!2025195 () Unit!147131)

(assert (=> d!1583661 (= lt!2025195 (choose!36031 lt!2024712 lt!2024718 Nil!56685 lt!2024324))))

(assert (=> d!1583661 (= (++!12322 lt!2024712 lt!2024718) (++!12322 Nil!56685 lt!2024324))))

(assert (=> d!1583661 (= (lemmaConcatSameAndSameSizesThenSameLists!657 lt!2024712 lt!2024718 Nil!56685 lt!2024324) lt!2025195)))

(declare-fun bs!1179291 () Bool)

(assert (= bs!1179291 d!1583661))

(declare-fun m!5938954 () Bool)

(assert (=> bs!1179291 m!5938954))

(declare-fun m!5938956 () Bool)

(assert (=> bs!1179291 m!5938956))

(assert (=> bs!1179291 m!5937616))

(assert (=> b!4922660 d!1583661))

(assert (=> b!4922660 d!1583377))

(declare-fun d!1583663 () Bool)

(declare-fun e!3076447 () Bool)

(assert (=> d!1583663 e!3076447))

(declare-fun res!2101727 () Bool)

(assert (=> d!1583663 (=> res!2101727 e!3076447)))

(declare-fun lt!2025196 () Bool)

(assert (=> d!1583663 (= res!2101727 (not lt!2025196))))

(declare-fun e!3076448 () Bool)

(assert (=> d!1583663 (= lt!2025196 e!3076448)))

(declare-fun res!2101726 () Bool)

(assert (=> d!1583663 (=> res!2101726 e!3076448)))

(assert (=> d!1583663 (= res!2101726 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))))

(assert (=> d!1583663 (= (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) lt!2024736) lt!2025196)))

(declare-fun b!4923338 () Bool)

(declare-fun e!3076449 () Bool)

(assert (=> b!4923338 (= e!3076449 (isPrefix!4961 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))) (tail!9667 lt!2024736)))))

(declare-fun b!4923337 () Bool)

(declare-fun res!2101728 () Bool)

(assert (=> b!4923337 (=> (not res!2101728) (not e!3076449))))

(assert (=> b!4923337 (= res!2101728 (= (head!10520 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))) (head!10520 lt!2024736)))))

(declare-fun b!4923336 () Bool)

(assert (=> b!4923336 (= e!3076448 e!3076449)))

(declare-fun res!2101725 () Bool)

(assert (=> b!4923336 (=> (not res!2101725) (not e!3076449))))

(assert (=> b!4923336 (= res!2101725 (not ((_ is Nil!56685) lt!2024736)))))

(declare-fun b!4923339 () Bool)

(assert (=> b!4923339 (= e!3076447 (>= (size!37476 lt!2024736) (size!37476 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))))

(assert (= (and d!1583663 (not res!2101726)) b!4923336))

(assert (= (and b!4923336 res!2101725) b!4923337))

(assert (= (and b!4923337 res!2101728) b!4923338))

(assert (= (and d!1583663 (not res!2101727)) b!4923339))

(assert (=> b!4923338 m!5937806))

(declare-fun m!5938958 () Bool)

(assert (=> b!4923338 m!5938958))

(declare-fun m!5938960 () Bool)

(assert (=> b!4923338 m!5938960))

(assert (=> b!4923338 m!5938958))

(assert (=> b!4923338 m!5938960))

(declare-fun m!5938962 () Bool)

(assert (=> b!4923338 m!5938962))

(assert (=> b!4923337 m!5937806))

(declare-fun m!5938964 () Bool)

(assert (=> b!4923337 m!5938964))

(declare-fun m!5938966 () Bool)

(assert (=> b!4923337 m!5938966))

(declare-fun m!5938968 () Bool)

(assert (=> b!4923339 m!5938968))

(assert (=> b!4923339 m!5937806))

(declare-fun m!5938970 () Bool)

(assert (=> b!4923339 m!5938970))

(assert (=> b!4922660 d!1583663))

(declare-fun d!1583665 () Bool)

(declare-fun lt!2025197 () List!56809)

(assert (=> d!1583665 (= (++!12322 Nil!56685 lt!2025197) lt!2024736)))

(declare-fun e!3076450 () List!56809)

(assert (=> d!1583665 (= lt!2025197 e!3076450)))

(declare-fun c!838109 () Bool)

(assert (=> d!1583665 (= c!838109 ((_ is Cons!56685) Nil!56685))))

(assert (=> d!1583665 (>= (size!37476 lt!2024736) (size!37476 Nil!56685))))

(assert (=> d!1583665 (= (getSuffix!2949 lt!2024736 Nil!56685) lt!2025197)))

(declare-fun b!4923340 () Bool)

(assert (=> b!4923340 (= e!3076450 (getSuffix!2949 (tail!9667 lt!2024736) (t!367249 Nil!56685)))))

(declare-fun b!4923341 () Bool)

(assert (=> b!4923341 (= e!3076450 lt!2024736)))

(assert (= (and d!1583665 c!838109) b!4923340))

(assert (= (and d!1583665 (not c!838109)) b!4923341))

(declare-fun m!5938972 () Bool)

(assert (=> d!1583665 m!5938972))

(assert (=> d!1583665 m!5938968))

(assert (=> d!1583665 m!5937598))

(assert (=> b!4923340 m!5938960))

(assert (=> b!4923340 m!5938960))

(declare-fun m!5938974 () Bool)

(assert (=> b!4923340 m!5938974))

(assert (=> b!4922660 d!1583665))

(declare-fun d!1583667 () Bool)

(declare-fun lt!2025198 () Int)

(assert (=> d!1583667 (>= lt!2025198 0)))

(declare-fun e!3076451 () Int)

(assert (=> d!1583667 (= lt!2025198 e!3076451)))

(declare-fun c!838110 () Bool)

(assert (=> d!1583667 (= c!838110 ((_ is Nil!56685) lt!2024751))))

(assert (=> d!1583667 (= (size!37476 lt!2024751) lt!2025198)))

(declare-fun b!4923342 () Bool)

(assert (=> b!4923342 (= e!3076451 0)))

(declare-fun b!4923343 () Bool)

(assert (=> b!4923343 (= e!3076451 (+ 1 (size!37476 (t!367249 lt!2024751))))))

(assert (= (and d!1583667 c!838110) b!4923342))

(assert (= (and d!1583667 (not c!838110)) b!4923343))

(declare-fun m!5938976 () Bool)

(assert (=> b!4923343 m!5938976))

(assert (=> b!4922660 d!1583667))

(declare-fun b!4923348 () Bool)

(declare-fun res!2101731 () Bool)

(declare-fun e!3076454 () Bool)

(assert (=> b!4923348 (=> (not res!2101731) (not e!3076454))))

(declare-fun lt!2025199 () List!56809)

(assert (=> b!4923348 (= res!2101731 (= (size!37476 lt!2025199) (+ (size!37476 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) (size!37476 lt!2024741))))))

(declare-fun b!4923346 () Bool)

(declare-fun e!3076455 () List!56809)

(assert (=> b!4923346 (= e!3076455 lt!2024741)))

(declare-fun b!4923347 () Bool)

(assert (=> b!4923347 (= e!3076455 (Cons!56685 (h!63133 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) (++!12322 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) lt!2024741)))))

(declare-fun d!1583669 () Bool)

(assert (=> d!1583669 e!3076454))

(declare-fun res!2101732 () Bool)

(assert (=> d!1583669 (=> (not res!2101732) (not e!3076454))))

(assert (=> d!1583669 (= res!2101732 (= (content!10066 lt!2025199) ((_ map or) (content!10066 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) (content!10066 lt!2024741))))))

(assert (=> d!1583669 (= lt!2025199 e!3076455)))

(declare-fun c!838111 () Bool)

(assert (=> d!1583669 (= c!838111 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))))))

(assert (=> d!1583669 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)) lt!2024741) lt!2025199)))

(declare-fun b!4923349 () Bool)

(assert (=> b!4923349 (= e!3076454 (or (not (= lt!2024741 Nil!56685)) (= lt!2025199 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)))))))

(assert (= (and d!1583669 c!838111) b!4923346))

(assert (= (and d!1583669 (not c!838111)) b!4923347))

(assert (= (and d!1583669 res!2101732) b!4923348))

(assert (= (and b!4923348 res!2101731) b!4923349))

(declare-fun m!5938978 () Bool)

(assert (=> b!4923348 m!5938978))

(assert (=> b!4923348 m!5937822))

(declare-fun m!5938980 () Bool)

(assert (=> b!4923348 m!5938980))

(declare-fun m!5938982 () Bool)

(assert (=> b!4923348 m!5938982))

(declare-fun m!5938984 () Bool)

(assert (=> b!4923347 m!5938984))

(declare-fun m!5938986 () Bool)

(assert (=> d!1583669 m!5938986))

(assert (=> d!1583669 m!5937822))

(declare-fun m!5938988 () Bool)

(assert (=> d!1583669 m!5938988))

(declare-fun m!5938990 () Bool)

(assert (=> d!1583669 m!5938990))

(assert (=> b!4922660 d!1583669))

(assert (=> b!4922660 d!1583567))

(declare-fun d!1583671 () Bool)

(assert (=> d!1583671 (= (head!10520 (drop!2224 lt!2024717 0)) (h!63133 (drop!2224 lt!2024717 0)))))

(assert (=> b!4922660 d!1583671))

(declare-fun d!1583673 () Bool)

(assert (=> d!1583673 (= (list!17947 (_2!33888 lt!2024748)) (list!17949 (c!837809 (_2!33888 lt!2024748))))))

(declare-fun bs!1179292 () Bool)

(assert (= bs!1179292 d!1583673))

(declare-fun m!5938992 () Bool)

(assert (=> bs!1179292 m!5938992))

(assert (=> b!4922660 d!1583673))

(declare-fun d!1583675 () Bool)

(assert (=> d!1583675 (= (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) (h!63133 (getSuffix!2949 lt!2024736 Nil!56685)))))

(assert (=> b!4922660 d!1583675))

(declare-fun d!1583677 () Bool)

(assert (=> d!1583677 (= (head!10520 (drop!2224 lt!2024717 0)) (apply!13656 lt!2024717 0))))

(declare-fun lt!2025202 () Unit!147131)

(declare-fun choose!36045 (List!56809 Int) Unit!147131)

(assert (=> d!1583677 (= lt!2025202 (choose!36045 lt!2024717 0))))

(declare-fun e!3076462 () Bool)

(assert (=> d!1583677 e!3076462))

(declare-fun res!2101735 () Bool)

(assert (=> d!1583677 (=> (not res!2101735) (not e!3076462))))

(assert (=> d!1583677 (= res!2101735 (>= 0 0))))

(assert (=> d!1583677 (= (lemmaDropApply!1282 lt!2024717 0) lt!2025202)))

(declare-fun b!4923360 () Bool)

(assert (=> b!4923360 (= e!3076462 (< 0 (size!37476 lt!2024717)))))

(assert (= (and d!1583677 res!2101735) b!4923360))

(assert (=> d!1583677 m!5937834))

(assert (=> d!1583677 m!5937834))

(assert (=> d!1583677 m!5937836))

(assert (=> d!1583677 m!5937824))

(declare-fun m!5938994 () Bool)

(assert (=> d!1583677 m!5938994))

(assert (=> b!4923360 m!5938902))

(assert (=> b!4922660 d!1583677))

(declare-fun d!1583679 () Bool)

(declare-fun lt!2025210 () C!26956)

(declare-fun contains!19454 (List!56809 C!26956) Bool)

(assert (=> d!1583679 (contains!19454 lt!2024717 lt!2025210)))

(declare-fun e!3076476 () C!26956)

(assert (=> d!1583679 (= lt!2025210 e!3076476)))

(declare-fun c!838124 () Bool)

(assert (=> d!1583679 (= c!838124 (= 0 0))))

(declare-fun e!3076477 () Bool)

(assert (=> d!1583679 e!3076477))

(declare-fun res!2101743 () Bool)

(assert (=> d!1583679 (=> (not res!2101743) (not e!3076477))))

(assert (=> d!1583679 (= res!2101743 (<= 0 0))))

(assert (=> d!1583679 (= (apply!13656 lt!2024717 0) lt!2025210)))

(declare-fun b!4923384 () Bool)

(assert (=> b!4923384 (= e!3076477 (< 0 (size!37476 lt!2024717)))))

(declare-fun b!4923385 () Bool)

(assert (=> b!4923385 (= e!3076476 (head!10520 lt!2024717))))

(declare-fun b!4923386 () Bool)

(assert (=> b!4923386 (= e!3076476 (apply!13656 (tail!9667 lt!2024717) (- 0 1)))))

(assert (= (and d!1583679 res!2101743) b!4923384))

(assert (= (and d!1583679 c!838124) b!4923385))

(assert (= (and d!1583679 (not c!838124)) b!4923386))

(declare-fun m!5939034 () Bool)

(assert (=> d!1583679 m!5939034))

(assert (=> b!4923384 m!5938902))

(declare-fun m!5939036 () Bool)

(assert (=> b!4923385 m!5939036))

(declare-fun m!5939038 () Bool)

(assert (=> b!4923386 m!5939038))

(assert (=> b!4923386 m!5939038))

(declare-fun m!5939040 () Bool)

(assert (=> b!4923386 m!5939040))

(assert (=> b!4922660 d!1583679))

(declare-fun bs!1179293 () Bool)

(declare-fun d!1583691 () Bool)

(assert (= bs!1179293 (and d!1583691 d!1583385)))

(declare-fun lambda!245169 () Int)

(assert (=> bs!1179293 (= lambda!245169 lambda!245124)))

(assert (=> d!1583691 (= (inv!73463 setElem!27526) (forall!13131 (exprs!3515 setElem!27526) lambda!245169))))

(declare-fun bs!1179294 () Bool)

(assert (= bs!1179294 d!1583691))

(declare-fun m!5939048 () Bool)

(assert (=> bs!1179294 m!5939048))

(assert (=> setNonEmpty!27526 d!1583691))

(declare-fun d!1583693 () Bool)

(assert (=> d!1583693 (= (isEmpty!30566 (_1!33887 lt!2024389)) ((_ is Nil!56685) (_1!33887 lt!2024389)))))

(assert (=> b!4922496 d!1583693))

(declare-fun d!1583695 () Bool)

(assert (=> d!1583695 (= (list!17947 (_1!33888 lt!2024758)) (list!17949 (c!837809 (_1!33888 lt!2024758))))))

(declare-fun bs!1179295 () Bool)

(assert (= bs!1179295 d!1583695))

(declare-fun m!5939054 () Bool)

(assert (=> bs!1179295 m!5939054))

(assert (=> b!4922668 d!1583695))

(declare-fun d!1583699 () Bool)

(assert (=> d!1583699 (= (list!17947 (_2!33888 lt!2024758)) (list!17949 (c!837809 (_2!33888 lt!2024758))))))

(declare-fun bs!1179296 () Bool)

(assert (= bs!1179296 d!1583699))

(declare-fun m!5939056 () Bool)

(assert (=> bs!1179296 m!5939056))

(assert (=> b!4922668 d!1583699))

(declare-fun d!1583701 () Bool)

(declare-fun e!3076497 () Bool)

(assert (=> d!1583701 e!3076497))

(declare-fun res!2101757 () Bool)

(assert (=> d!1583701 (=> (not res!2101757) (not e!3076497))))

(declare-fun lt!2025225 () tuple2!61168)

(assert (=> d!1583701 (= res!2101757 (= (++!12322 (_1!33887 lt!2025225) (_2!33887 lt!2025225)) (list!17947 input!5492)))))

(declare-fun e!3076495 () tuple2!61168)

(assert (=> d!1583701 (= lt!2025225 e!3076495)))

(declare-fun c!838134 () Bool)

(assert (=> d!1583701 (= c!838134 ((_ is Nil!56685) (list!17947 input!5492)))))

(assert (=> d!1583701 (= (splitAtIndex!101 (list!17947 input!5492) lt!2024322) lt!2025225)))

(declare-fun b!4923416 () Bool)

(declare-fun res!2101758 () Bool)

(assert (=> b!4923416 (=> (not res!2101758) (not e!3076497))))

(declare-fun take!577 (List!56809 Int) List!56809)

(assert (=> b!4923416 (= res!2101758 (= (_1!33887 lt!2025225) (take!577 (list!17947 input!5492) lt!2024322)))))

(declare-fun b!4923417 () Bool)

(declare-fun lt!2025224 () tuple2!61168)

(assert (=> b!4923417 (= lt!2025224 (splitAtIndex!101 (t!367249 (list!17947 input!5492)) (- lt!2024322 1)))))

(declare-fun e!3076496 () tuple2!61168)

(assert (=> b!4923417 (= e!3076496 (tuple2!61169 (Cons!56685 (h!63133 (list!17947 input!5492)) (_1!33887 lt!2025224)) (_2!33887 lt!2025224)))))

(declare-fun b!4923418 () Bool)

(assert (=> b!4923418 (= e!3076497 (= (_2!33887 lt!2025225) (drop!2224 (list!17947 input!5492) lt!2024322)))))

(declare-fun b!4923419 () Bool)

(assert (=> b!4923419 (= e!3076496 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun b!4923420 () Bool)

(assert (=> b!4923420 (= e!3076495 e!3076496)))

(declare-fun c!838133 () Bool)

(assert (=> b!4923420 (= c!838133 (<= lt!2024322 0))))

(declare-fun b!4923421 () Bool)

(assert (=> b!4923421 (= e!3076495 (tuple2!61169 Nil!56685 Nil!56685))))

(assert (= (and d!1583701 c!838134) b!4923421))

(assert (= (and d!1583701 (not c!838134)) b!4923420))

(assert (= (and b!4923420 c!838133) b!4923419))

(assert (= (and b!4923420 (not c!838133)) b!4923417))

(assert (= (and d!1583701 res!2101757) b!4923416))

(assert (= (and b!4923416 res!2101758) b!4923418))

(declare-fun m!5939088 () Bool)

(assert (=> d!1583701 m!5939088))

(assert (=> b!4923416 m!5937560))

(declare-fun m!5939090 () Bool)

(assert (=> b!4923416 m!5939090))

(declare-fun m!5939092 () Bool)

(assert (=> b!4923417 m!5939092))

(assert (=> b!4923418 m!5937560))

(declare-fun m!5939094 () Bool)

(assert (=> b!4923418 m!5939094))

(assert (=> b!4922668 d!1583701))

(assert (=> b!4922668 d!1583377))

(assert (=> b!4922455 d!1583387))

(declare-fun bm!343085 () Bool)

(declare-fun call!343093 () Unit!147131)

(assert (=> bm!343085 (= call!343093 (lemmaIsPrefixSameLengthThenSameList!1119 lt!2024324 lt!2024382 lt!2024324))))

(declare-fun b!4923432 () Bool)

(declare-fun c!838138 () Bool)

(declare-fun call!343091 () Bool)

(assert (=> b!4923432 (= c!838138 call!343091)))

(declare-fun lt!2025234 () Unit!147131)

(declare-fun lt!2025253 () Unit!147131)

(assert (=> b!4923432 (= lt!2025234 lt!2025253)))

(declare-fun lt!2025249 () List!56809)

(declare-fun lt!2025246 () C!26956)

(assert (=> b!4923432 (= (++!12322 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685)) lt!2025249) lt!2024324)))

(assert (=> b!4923432 (= lt!2025253 (lemmaMoveElementToOtherListKeepsConcatEq!1391 lt!2024382 lt!2025246 lt!2025249 lt!2024324))))

(assert (=> b!4923432 (= lt!2025249 (tail!9667 call!342906))))

(assert (=> b!4923432 (= lt!2025246 (head!10520 call!342906))))

(declare-fun lt!2025238 () Unit!147131)

(declare-fun lt!2025240 () Unit!147131)

(assert (=> b!4923432 (= lt!2025238 lt!2025240)))

(assert (=> b!4923432 (isPrefix!4961 (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685)) lt!2024324)))

(assert (=> b!4923432 (= lt!2025240 (lemmaAddHeadSuffixToPrefixStillPrefix!773 lt!2024382 lt!2024324))))

(declare-fun lt!2025228 () List!56809)

(assert (=> b!4923432 (= lt!2025228 (++!12322 lt!2024382 (Cons!56685 (head!10520 call!342906) Nil!56685)))))

(declare-fun lt!2025241 () Unit!147131)

(declare-fun e!3076505 () Unit!147131)

(assert (=> b!4923432 (= lt!2025241 e!3076505)))

(declare-fun c!838136 () Bool)

(assert (=> b!4923432 (= c!838136 (= (size!37476 lt!2024382) (size!37476 lt!2024324)))))

(declare-fun lt!2025248 () Unit!147131)

(declare-fun lt!2025232 () Unit!147131)

(assert (=> b!4923432 (= lt!2025248 lt!2025232)))

(assert (=> b!4923432 (<= (size!37476 lt!2024382) (size!37476 lt!2024324))))

(assert (=> b!4923432 (= lt!2025232 (lemmaIsPrefixThenSmallerEqSize!685 lt!2024382 lt!2024324))))

(declare-fun e!3076504 () tuple2!61168)

(declare-fun e!3076508 () tuple2!61168)

(assert (=> b!4923432 (= e!3076504 e!3076508)))

(declare-fun b!4923433 () Bool)

(declare-fun e!3076507 () tuple2!61168)

(assert (=> b!4923433 (= e!3076507 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun b!4923434 () Bool)

(declare-fun e!3076510 () tuple2!61168)

(declare-fun lt!2025250 () tuple2!61168)

(assert (=> b!4923434 (= e!3076510 lt!2025250)))

(declare-fun bm!343086 () Bool)

(declare-fun call!343094 () (InoxSet Context!6030))

(declare-fun call!343095 () C!26956)

(assert (=> bm!343086 (= call!343094 (derivationStepZipper!588 call!342904 call!343095))))

(declare-fun bm!343087 () Bool)

(declare-fun call!343089 () tuple2!61168)

(declare-fun call!343096 () List!56809)

(assert (=> bm!343087 (= call!343089 (findLongestMatchInnerZipper!58 call!343094 lt!2025228 (+ 0 1 1) call!343096 lt!2024324 lt!2024326))))

(declare-fun bm!343088 () Bool)

(assert (=> bm!343088 (= call!343095 (head!10520 call!342906))))

(declare-fun b!4923435 () Bool)

(declare-fun e!3076509 () Bool)

(declare-fun e!3076506 () Bool)

(assert (=> b!4923435 (= e!3076509 e!3076506)))

(declare-fun res!2101770 () Bool)

(assert (=> b!4923435 (=> res!2101770 e!3076506)))

(declare-fun lt!2025235 () tuple2!61168)

(assert (=> b!4923435 (= res!2101770 (isEmpty!30566 (_1!33887 lt!2025235)))))

(declare-fun bm!343089 () Bool)

(declare-fun call!343092 () Unit!147131)

(assert (=> bm!343089 (= call!343092 (lemmaIsPrefixRefl!3357 lt!2024324 lt!2024324))))

(declare-fun b!4923436 () Bool)

(declare-fun Unit!147164 () Unit!147131)

(assert (=> b!4923436 (= e!3076505 Unit!147164)))

(declare-fun lt!2025230 () Unit!147131)

(assert (=> b!4923436 (= lt!2025230 call!343092)))

(declare-fun call!343090 () Bool)

(assert (=> b!4923436 call!343090))

(declare-fun lt!2025231 () Unit!147131)

(assert (=> b!4923436 (= lt!2025231 lt!2025230)))

(declare-fun lt!2025229 () Unit!147131)

(assert (=> b!4923436 (= lt!2025229 call!343093)))

(assert (=> b!4923436 (= lt!2024324 lt!2024382)))

(declare-fun lt!2025237 () Unit!147131)

(assert (=> b!4923436 (= lt!2025237 lt!2025229)))

(assert (=> b!4923436 false))

(declare-fun b!4923437 () Bool)

(assert (=> b!4923437 (= e!3076508 call!343089)))

(declare-fun b!4923438 () Bool)

(assert (=> b!4923438 (= e!3076508 e!3076510)))

(assert (=> b!4923438 (= lt!2025250 call!343089)))

(declare-fun c!838139 () Bool)

(assert (=> b!4923438 (= c!838139 (isEmpty!30566 (_1!33887 lt!2025250)))))

(declare-fun b!4923439 () Bool)

(declare-fun Unit!147165 () Unit!147131)

(assert (=> b!4923439 (= e!3076505 Unit!147165)))

(declare-fun b!4923440 () Bool)

(assert (=> b!4923440 (= e!3076507 e!3076504)))

(declare-fun c!838137 () Bool)

(assert (=> b!4923440 (= c!838137 (= (+ 0 1) lt!2024326))))

(declare-fun bm!343090 () Bool)

(assert (=> bm!343090 (= call!343090 (isPrefix!4961 lt!2024324 lt!2024324))))

(declare-fun b!4923441 () Bool)

(declare-fun e!3076503 () tuple2!61168)

(assert (=> b!4923441 (= e!3076503 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun bm!343091 () Bool)

(assert (=> bm!343091 (= call!343096 (tail!9667 call!342906))))

(declare-fun d!1583725 () Bool)

(assert (=> d!1583725 e!3076509))

(declare-fun res!2101769 () Bool)

(assert (=> d!1583725 (=> (not res!2101769) (not e!3076509))))

(assert (=> d!1583725 (= res!2101769 (= (++!12322 (_1!33887 lt!2025235) (_2!33887 lt!2025235)) lt!2024324))))

(assert (=> d!1583725 (= lt!2025235 e!3076507)))

(declare-fun c!838135 () Bool)

(assert (=> d!1583725 (= c!838135 (lostCauseZipper!691 call!342904))))

(declare-fun lt!2025236 () Unit!147131)

(declare-fun Unit!147166 () Unit!147131)

(assert (=> d!1583725 (= lt!2025236 Unit!147166)))

(assert (=> d!1583725 (= (getSuffix!2949 lt!2024324 lt!2024382) call!342906)))

(declare-fun lt!2025243 () Unit!147131)

(declare-fun lt!2025244 () Unit!147131)

(assert (=> d!1583725 (= lt!2025243 lt!2025244)))

(declare-fun lt!2025242 () List!56809)

(assert (=> d!1583725 (= call!342906 lt!2025242)))

(assert (=> d!1583725 (= lt!2025244 (lemmaSamePrefixThenSameSuffix!2365 lt!2024382 call!342906 lt!2024382 lt!2025242 lt!2024324))))

(assert (=> d!1583725 (= lt!2025242 (getSuffix!2949 lt!2024324 lt!2024382))))

(declare-fun lt!2025233 () Unit!147131)

(declare-fun lt!2025245 () Unit!147131)

(assert (=> d!1583725 (= lt!2025233 lt!2025245)))

(assert (=> d!1583725 (isPrefix!4961 lt!2024382 (++!12322 lt!2024382 call!342906))))

(assert (=> d!1583725 (= lt!2025245 (lemmaConcatTwoListThenFirstIsPrefix!3185 lt!2024382 call!342906))))

(assert (=> d!1583725 (= (++!12322 lt!2024382 call!342906) lt!2024324)))

(assert (=> d!1583725 (= (findLongestMatchInnerZipper!58 call!342904 lt!2024382 (+ 0 1) call!342906 lt!2024324 lt!2024326) lt!2025235)))

(declare-fun bm!343084 () Bool)

(assert (=> bm!343084 (= call!343091 (nullableZipper!810 call!342904))))

(declare-fun b!4923442 () Bool)

(assert (=> b!4923442 (= e!3076510 (tuple2!61169 lt!2024382 call!342906))))

(declare-fun b!4923443 () Bool)

(assert (=> b!4923443 (= e!3076506 (>= (size!37476 (_1!33887 lt!2025235)) (size!37476 lt!2024382)))))

(declare-fun b!4923444 () Bool)

(assert (=> b!4923444 (= e!3076503 (tuple2!61169 lt!2024382 Nil!56685))))

(declare-fun b!4923445 () Bool)

(declare-fun c!838140 () Bool)

(assert (=> b!4923445 (= c!838140 call!343091)))

(declare-fun lt!2025252 () Unit!147131)

(declare-fun lt!2025247 () Unit!147131)

(assert (=> b!4923445 (= lt!2025252 lt!2025247)))

(assert (=> b!4923445 (= lt!2024324 lt!2024382)))

(assert (=> b!4923445 (= lt!2025247 call!343093)))

(declare-fun lt!2025239 () Unit!147131)

(declare-fun lt!2025251 () Unit!147131)

(assert (=> b!4923445 (= lt!2025239 lt!2025251)))

(assert (=> b!4923445 call!343090))

(assert (=> b!4923445 (= lt!2025251 call!343092)))

(assert (=> b!4923445 (= e!3076504 e!3076503)))

(assert (= (and d!1583725 c!838135) b!4923433))

(assert (= (and d!1583725 (not c!838135)) b!4923440))

(assert (= (and b!4923440 c!838137) b!4923445))

(assert (= (and b!4923440 (not c!838137)) b!4923432))

(assert (= (and b!4923445 c!838140) b!4923444))

(assert (= (and b!4923445 (not c!838140)) b!4923441))

(assert (= (and b!4923432 c!838136) b!4923436))

(assert (= (and b!4923432 (not c!838136)) b!4923439))

(assert (= (and b!4923432 c!838138) b!4923438))

(assert (= (and b!4923432 (not c!838138)) b!4923437))

(assert (= (and b!4923438 c!838139) b!4923442))

(assert (= (and b!4923438 (not c!838139)) b!4923434))

(assert (= (or b!4923438 b!4923437) bm!343091))

(assert (= (or b!4923438 b!4923437) bm!343088))

(assert (= (or b!4923438 b!4923437) bm!343086))

(assert (= (or b!4923438 b!4923437) bm!343087))

(assert (= (or b!4923445 b!4923436) bm!343090))

(assert (= (or b!4923445 b!4923436) bm!343089))

(assert (= (or b!4923445 b!4923436) bm!343085))

(assert (= (or b!4923445 b!4923432) bm!343084))

(assert (= (and d!1583725 res!2101769) b!4923435))

(assert (= (and b!4923435 (not res!2101770)) b!4923443))

(declare-fun m!5939110 () Bool)

(assert (=> bm!343085 m!5939110))

(declare-fun m!5939112 () Bool)

(assert (=> b!4923438 m!5939112))

(declare-fun m!5939114 () Bool)

(assert (=> bm!343084 m!5939114))

(declare-fun m!5939116 () Bool)

(assert (=> bm!343091 m!5939116))

(declare-fun m!5939118 () Bool)

(assert (=> b!4923432 m!5939118))

(declare-fun m!5939120 () Bool)

(assert (=> b!4923432 m!5939120))

(declare-fun m!5939122 () Bool)

(assert (=> b!4923432 m!5939122))

(declare-fun m!5939124 () Bool)

(assert (=> b!4923432 m!5939124))

(declare-fun m!5939126 () Bool)

(assert (=> b!4923432 m!5939126))

(declare-fun m!5939128 () Bool)

(assert (=> b!4923432 m!5939128))

(declare-fun m!5939130 () Bool)

(assert (=> b!4923432 m!5939130))

(assert (=> b!4923432 m!5937596))

(declare-fun m!5939132 () Bool)

(assert (=> b!4923432 m!5939132))

(assert (=> b!4923432 m!5939118))

(declare-fun m!5939134 () Bool)

(assert (=> b!4923432 m!5939134))

(assert (=> b!4923432 m!5939116))

(declare-fun m!5939136 () Bool)

(assert (=> b!4923432 m!5939136))

(assert (=> b!4923432 m!5939124))

(declare-fun m!5939138 () Bool)

(assert (=> b!4923432 m!5939138))

(assert (=> b!4923432 m!5939122))

(declare-fun m!5939140 () Bool)

(assert (=> b!4923432 m!5939140))

(declare-fun m!5939142 () Bool)

(assert (=> d!1583725 m!5939142))

(declare-fun m!5939144 () Bool)

(assert (=> d!1583725 m!5939144))

(declare-fun m!5939146 () Bool)

(assert (=> d!1583725 m!5939146))

(declare-fun m!5939148 () Bool)

(assert (=> d!1583725 m!5939148))

(declare-fun m!5939150 () Bool)

(assert (=> d!1583725 m!5939150))

(assert (=> d!1583725 m!5939118))

(assert (=> d!1583725 m!5939150))

(declare-fun m!5939152 () Bool)

(assert (=> d!1583725 m!5939152))

(assert (=> bm!343088 m!5939138))

(declare-fun m!5939154 () Bool)

(assert (=> bm!343087 m!5939154))

(declare-fun m!5939156 () Bool)

(assert (=> b!4923443 m!5939156))

(assert (=> b!4923443 m!5939132))

(assert (=> bm!343089 m!5937624))

(declare-fun m!5939158 () Bool)

(assert (=> b!4923435 m!5939158))

(declare-fun m!5939160 () Bool)

(assert (=> bm!343086 m!5939160))

(assert (=> bm!343090 m!5937630))

(assert (=> bm!342897 d!1583725))

(declare-fun bs!1179301 () Bool)

(declare-fun d!1583727 () Bool)

(assert (= bs!1179301 (and d!1583727 d!1583523)))

(declare-fun lambda!245170 () Int)

(assert (=> bs!1179301 (= (= call!342985 call!342905) (= lambda!245170 lambda!245162))))

(assert (=> d!1583727 true))

(assert (=> d!1583727 (= (derivationStepZipper!588 z!3559 call!342985) (flatMap!262 z!3559 lambda!245170))))

(declare-fun bs!1179302 () Bool)

(assert (= bs!1179302 d!1583727))

(declare-fun m!5939174 () Bool)

(assert (=> bs!1179302 m!5939174))

(assert (=> bm!342982 d!1583727))

(declare-fun tp!1383310 () Bool)

(declare-fun e!3076525 () Bool)

(declare-fun tp!1383311 () Bool)

(declare-fun b!4923474 () Bool)

(assert (=> b!4923474 (= e!3076525 (and (inv!73464 (left!41330 (left!41330 (c!837809 input!5492)))) tp!1383310 (inv!73464 (right!41660 (left!41330 (c!837809 input!5492)))) tp!1383311))))

(declare-fun b!4923476 () Bool)

(declare-fun e!3076524 () Bool)

(declare-fun tp!1383312 () Bool)

(assert (=> b!4923476 (= e!3076524 tp!1383312)))

(declare-fun b!4923475 () Bool)

(assert (=> b!4923475 (= e!3076525 (and (inv!73470 (xs!18192 (left!41330 (c!837809 input!5492)))) e!3076524))))

(assert (=> b!4922717 (= tp!1383277 (and (inv!73464 (left!41330 (c!837809 input!5492))) e!3076525))))

(assert (= (and b!4922717 ((_ is Node!14872) (left!41330 (c!837809 input!5492)))) b!4923474))

(assert (= b!4923475 b!4923476))

(assert (= (and b!4922717 ((_ is Leaf!24741) (left!41330 (c!837809 input!5492)))) b!4923475))

(declare-fun m!5939180 () Bool)

(assert (=> b!4923474 m!5939180))

(declare-fun m!5939182 () Bool)

(assert (=> b!4923474 m!5939182))

(declare-fun m!5939184 () Bool)

(assert (=> b!4923475 m!5939184))

(assert (=> b!4922717 m!5937902))

(declare-fun tp!1383314 () Bool)

(declare-fun e!3076527 () Bool)

(declare-fun b!4923477 () Bool)

(declare-fun tp!1383313 () Bool)

(assert (=> b!4923477 (= e!3076527 (and (inv!73464 (left!41330 (right!41660 (c!837809 input!5492)))) tp!1383313 (inv!73464 (right!41660 (right!41660 (c!837809 input!5492)))) tp!1383314))))

(declare-fun b!4923479 () Bool)

(declare-fun e!3076526 () Bool)

(declare-fun tp!1383315 () Bool)

(assert (=> b!4923479 (= e!3076526 tp!1383315)))

(declare-fun b!4923478 () Bool)

(assert (=> b!4923478 (= e!3076527 (and (inv!73470 (xs!18192 (right!41660 (c!837809 input!5492)))) e!3076526))))

(assert (=> b!4922717 (= tp!1383278 (and (inv!73464 (right!41660 (c!837809 input!5492))) e!3076527))))

(assert (= (and b!4922717 ((_ is Node!14872) (right!41660 (c!837809 input!5492)))) b!4923477))

(assert (= b!4923478 b!4923479))

(assert (= (and b!4922717 ((_ is Leaf!24741) (right!41660 (c!837809 input!5492)))) b!4923478))

(declare-fun m!5939186 () Bool)

(assert (=> b!4923477 m!5939186))

(declare-fun m!5939188 () Bool)

(assert (=> b!4923477 m!5939188))

(declare-fun m!5939190 () Bool)

(assert (=> b!4923478 m!5939190))

(assert (=> b!4922717 m!5937904))

(declare-fun condSetEmpty!27528 () Bool)

(assert (=> setNonEmpty!27526 (= condSetEmpty!27528 (= setRest!27526 ((as const (Array Context!6030 Bool)) false)))))

(declare-fun setRes!27528 () Bool)

(assert (=> setNonEmpty!27526 (= tp!1383270 setRes!27528)))

(declare-fun setIsEmpty!27528 () Bool)

(assert (=> setIsEmpty!27528 setRes!27528))

(declare-fun tp!1383317 () Bool)

(declare-fun setElem!27528 () Context!6030)

(declare-fun setNonEmpty!27528 () Bool)

(declare-fun e!3076528 () Bool)

(assert (=> setNonEmpty!27528 (= setRes!27528 (and tp!1383317 (inv!73463 setElem!27528) e!3076528))))

(declare-fun setRest!27528 () (InoxSet Context!6030))

(assert (=> setNonEmpty!27528 (= setRest!27526 ((_ map or) (store ((as const (Array Context!6030 Bool)) false) setElem!27528 true) setRest!27528))))

(declare-fun b!4923480 () Bool)

(declare-fun tp!1383316 () Bool)

(assert (=> b!4923480 (= e!3076528 tp!1383316)))

(assert (= (and setNonEmpty!27526 condSetEmpty!27528) setIsEmpty!27528))

(assert (= (and setNonEmpty!27526 (not condSetEmpty!27528)) setNonEmpty!27528))

(assert (= setNonEmpty!27528 b!4923480))

(declare-fun m!5939192 () Bool)

(assert (=> setNonEmpty!27528 m!5939192))

(declare-fun b!4923492 () Bool)

(declare-fun e!3076531 () Bool)

(declare-fun tp!1383328 () Bool)

(declare-fun tp!1383332 () Bool)

(assert (=> b!4923492 (= e!3076531 (and tp!1383328 tp!1383332))))

(declare-fun b!4923493 () Bool)

(declare-fun tp!1383330 () Bool)

(assert (=> b!4923493 (= e!3076531 tp!1383330)))

(declare-fun b!4923494 () Bool)

(declare-fun tp!1383331 () Bool)

(declare-fun tp!1383329 () Bool)

(assert (=> b!4923494 (= e!3076531 (and tp!1383331 tp!1383329))))

(assert (=> b!4922703 (= tp!1383263 e!3076531)))

(declare-fun b!4923491 () Bool)

(declare-fun tp_is_empty!35907 () Bool)

(assert (=> b!4923491 (= e!3076531 tp_is_empty!35907)))

(assert (= (and b!4922703 ((_ is ElementMatch!13373) (h!63134 (exprs!3515 setElem!27520)))) b!4923491))

(assert (= (and b!4922703 ((_ is Concat!21946) (h!63134 (exprs!3515 setElem!27520)))) b!4923492))

(assert (= (and b!4922703 ((_ is Star!13373) (h!63134 (exprs!3515 setElem!27520)))) b!4923493))

(assert (= (and b!4922703 ((_ is Union!13373) (h!63134 (exprs!3515 setElem!27520)))) b!4923494))

(declare-fun b!4923495 () Bool)

(declare-fun e!3076532 () Bool)

(declare-fun tp!1383333 () Bool)

(declare-fun tp!1383334 () Bool)

(assert (=> b!4923495 (= e!3076532 (and tp!1383333 tp!1383334))))

(assert (=> b!4922703 (= tp!1383264 e!3076532)))

(assert (= (and b!4922703 ((_ is Cons!56686) (t!367250 (exprs!3515 setElem!27520)))) b!4923495))

(declare-fun b!4923496 () Bool)

(declare-fun e!3076533 () Bool)

(declare-fun tp!1383335 () Bool)

(declare-fun tp!1383336 () Bool)

(assert (=> b!4923496 (= e!3076533 (and tp!1383335 tp!1383336))))

(assert (=> b!4922708 (= tp!1383269 e!3076533)))

(assert (= (and b!4922708 ((_ is Cons!56686) (exprs!3515 setElem!27526))) b!4923496))

(declare-fun b!4923501 () Bool)

(declare-fun e!3076536 () Bool)

(declare-fun tp!1383339 () Bool)

(assert (=> b!4923501 (= e!3076536 (and tp_is_empty!35907 tp!1383339))))

(assert (=> b!4922719 (= tp!1383279 e!3076536)))

(assert (= (and b!4922719 ((_ is Cons!56685) (innerList!14960 (xs!18192 (c!837809 input!5492))))) b!4923501))

(declare-fun b_lambda!196271 () Bool)

(assert (= b_lambda!196265 (or d!1583385 b_lambda!196271)))

(declare-fun bs!1179304 () Bool)

(declare-fun d!1583731 () Bool)

(assert (= bs!1179304 (and d!1583731 d!1583385)))

(declare-fun validRegex!5941 (Regex!13373) Bool)

(assert (=> bs!1179304 (= (dynLambda!23005 lambda!245124 (h!63134 (exprs!3515 setElem!27520))) (validRegex!5941 (h!63134 (exprs!3515 setElem!27520))))))

(declare-fun m!5939194 () Bool)

(assert (=> bs!1179304 m!5939194))

(assert (=> b!4922914 d!1583731))

(check-sat (not b!4922829) (not b!4923037) (not b!4922915) (not d!1583449) (not b!4922984) (not b!4923052) (not b!4923418) (not d!1583435) tp_is_empty!35907 (not b!4922862) (not bm!343080) (not b!4923033) (not b!4923320) (not b!4923479) (not b!4923035) (not bm!343007) (not b!4923060) (not d!1583631) (not b!4922982) (not b!4922988) (not bm!342998) (not b!4923475) (not b!4922922) (not b!4922967) (not d!1583465) (not b!4922946) (not b!4923360) (not b!4923231) (not d!1583401) (not b!4922945) (not b!4923325) (not b!4922953) (not b!4923058) (not bm!343040) (not d!1583659) (not bm!343006) (not b!4923501) (not b!4923337) (not bm!343091) (not b!4923280) (not d!1583533) (not d!1583635) (not bm!343036) (not b!4923027) (not b!4922810) (not b!4923015) (not b!4922966) (not b!4923260) (not b!4923253) (not b!4922921) (not d!1583617) (not bm!343074) (not b!4923343) (not bm!343034) (not b!4922717) (not b!4922797) (not b!4923438) (not b!4923347) (not bm!343086) (not d!1583467) (not d!1583679) (not b!4923261) (not d!1583661) (not d!1583569) (not b!4923034) (not d!1583673) (not bm!343073) (not b!4923020) (not b!4923316) (not d!1583565) (not b!4923062) (not d!1583649) (not d!1583417) (not b!4923030) (not b!4923064) (not bm!343087) (not b!4922894) (not bm!343009) (not b!4923310) (not b!4923061) (not b!4923259) (not bm!343013) (not b!4923326) (not b!4923492) (not b!4923275) (not b!4923276) (not b!4922826) (not b!4923474) (not b!4922964) (not b!4922856) (not d!1583699) (not b!4923254) (not d!1583613) (not d!1583651) (not b!4923340) (not b!4923213) (not b!4922919) (not b!4923385) (not b!4923477) (not d!1583517) (not b!4922831) (not b!4923432) (not d!1583489) (not d!1583573) (not b!4923480) (not b!4922816) (not b!4923257) (not d!1583665) (not bm!343033) (not bm!343089) (not b!4922773) (not b!4923319) (not d!1583641) (not bm!343090) (not bm!343037) (not d!1583563) (not b!4923384) (not d!1583727) (not b!4923226) (not d!1583657) (not d!1583701) (not d!1583609) (not bm!343012) (not bm!343084) (not b!4922963) (not d!1583607) (not d!1583691) (not b!4923229) (not b!4922825) (not setNonEmpty!27528) (not b!4922855) (not bm!342999) (not b!4923417) (not d!1583411) (not d!1583455) (not b!4922965) (not b!4923493) (not b!4922980) (not b!4923230) (not d!1583419) (not d!1583509) (not b!4923339) (not d!1583669) (not b!4923323) (not b!4923224) (not b!4922830) (not d!1583677) (not b!4922774) (not b!4923478) (not b!4923063) (not bm!343085) (not d!1583471) (not b!4923065) (not b!4923435) (not b!4922985) (not d!1583567) (not b!4922867) (not b!4922962) (not b!4923322) (not bm!343032) (not d!1583491) (not b!4923214) (not b!4923496) (not b!4922890) (not b!4922809) (not d!1583513) (not b!4922938) (not bm!343011) (not b!4923348) (not d!1583645) (not d!1583523) (not b!4922983) (not b!4923268) (not bm!343075) (not b!4923057) (not d!1583439) (not bm!343010) (not b!4922939) (not b!4922893) (not b!4923416) (not b!4923338) (not d!1583505) (not b!4923047) (not bm!343035) (not d!1583551) (not b!4922968) (not b!4923476) (not bm!343072) (not d!1583397) (not b!4922954) (not bm!343038) (not b!4923043) (not b!4922796) (not bm!343008) (not bm!343041) (not b!4923494) (not b!4923032) (not b!4922969) (not b!4922981) (not d!1583655) (not d!1583653) (not b!4922917) (not b!4923038) (not b!4922989) (not b!4923279) (not b!4923495) (not b!4922775) (not bs!1179304) (not b!4923036) (not bm!343076) (not d!1583725) (not b!4922859) (not b!4922895) (not bm!343039) (not b!4923267) (not d!1583511) (not d!1583695) (not b!4923443) (not b!4923029) (not b!4923386) (not d!1583427) (not bm!343088) (not b_lambda!196271))
(check-sat)
(get-model)

(declare-fun d!1583733 () Bool)

(declare-fun res!2101771 () Bool)

(declare-fun e!3076537 () Bool)

(assert (=> d!1583733 (=> (not res!2101771) (not e!3076537))))

(assert (=> d!1583733 (= res!2101771 (= (csize!29974 (right!41660 (c!837809 input!5492))) (+ (size!37478 (left!41330 (right!41660 (c!837809 input!5492)))) (size!37478 (right!41660 (right!41660 (c!837809 input!5492)))))))))

(assert (=> d!1583733 (= (inv!73468 (right!41660 (c!837809 input!5492))) e!3076537)))

(declare-fun b!4923502 () Bool)

(declare-fun res!2101772 () Bool)

(assert (=> b!4923502 (=> (not res!2101772) (not e!3076537))))

(assert (=> b!4923502 (= res!2101772 (and (not (= (left!41330 (right!41660 (c!837809 input!5492))) Empty!14872)) (not (= (right!41660 (right!41660 (c!837809 input!5492))) Empty!14872))))))

(declare-fun b!4923503 () Bool)

(declare-fun res!2101773 () Bool)

(assert (=> b!4923503 (=> (not res!2101773) (not e!3076537))))

(assert (=> b!4923503 (= res!2101773 (= (cheight!15083 (right!41660 (c!837809 input!5492))) (+ (max!0 (height!1982 (left!41330 (right!41660 (c!837809 input!5492)))) (height!1982 (right!41660 (right!41660 (c!837809 input!5492))))) 1)))))

(declare-fun b!4923504 () Bool)

(assert (=> b!4923504 (= e!3076537 (<= 0 (cheight!15083 (right!41660 (c!837809 input!5492)))))))

(assert (= (and d!1583733 res!2101771) b!4923502))

(assert (= (and b!4923502 res!2101772) b!4923503))

(assert (= (and b!4923503 res!2101773) b!4923504))

(declare-fun m!5939196 () Bool)

(assert (=> d!1583733 m!5939196))

(declare-fun m!5939198 () Bool)

(assert (=> d!1583733 m!5939198))

(assert (=> b!4923503 m!5938438))

(assert (=> b!4923503 m!5938440))

(assert (=> b!4923503 m!5938438))

(assert (=> b!4923503 m!5938440))

(declare-fun m!5939200 () Bool)

(assert (=> b!4923503 m!5939200))

(assert (=> b!4923030 d!1583733))

(declare-fun d!1583735 () Bool)

(declare-fun lt!2025256 () Bool)

(assert (=> d!1583735 (= lt!2025256 (select (content!10066 lt!2024717) lt!2025210))))

(declare-fun e!3076542 () Bool)

(assert (=> d!1583735 (= lt!2025256 e!3076542)))

(declare-fun res!2101778 () Bool)

(assert (=> d!1583735 (=> (not res!2101778) (not e!3076542))))

(assert (=> d!1583735 (= res!2101778 ((_ is Cons!56685) lt!2024717))))

(assert (=> d!1583735 (= (contains!19454 lt!2024717 lt!2025210) lt!2025256)))

(declare-fun b!4923509 () Bool)

(declare-fun e!3076543 () Bool)

(assert (=> b!4923509 (= e!3076542 e!3076543)))

(declare-fun res!2101779 () Bool)

(assert (=> b!4923509 (=> res!2101779 e!3076543)))

(assert (=> b!4923509 (= res!2101779 (= (h!63133 lt!2024717) lt!2025210))))

(declare-fun b!4923510 () Bool)

(assert (=> b!4923510 (= e!3076543 (contains!19454 (t!367249 lt!2024717) lt!2025210))))

(assert (= (and d!1583735 res!2101778) b!4923509))

(assert (= (and b!4923509 (not res!2101779)) b!4923510))

(assert (=> d!1583735 m!5938908))

(declare-fun m!5939202 () Bool)

(assert (=> d!1583735 m!5939202))

(declare-fun m!5939204 () Bool)

(assert (=> b!4923510 m!5939204))

(assert (=> d!1583679 d!1583735))

(assert (=> b!4922773 d!1583521))

(declare-fun b!4923511 () Bool)

(declare-fun res!2101783 () Bool)

(declare-fun e!3076544 () Bool)

(assert (=> b!4923511 (=> (not res!2101783) (not e!3076544))))

(assert (=> b!4923511 (= res!2101783 (isBalanced!4085 (right!41660 (c!837809 (_2!33888 lt!2025191)))))))

(declare-fun b!4923512 () Bool)

(assert (=> b!4923512 (= e!3076544 (not (isEmpty!30568 (right!41660 (c!837809 (_2!33888 lt!2025191))))))))

(declare-fun d!1583737 () Bool)

(declare-fun res!2101782 () Bool)

(declare-fun e!3076545 () Bool)

(assert (=> d!1583737 (=> res!2101782 e!3076545)))

(assert (=> d!1583737 (= res!2101782 (not ((_ is Node!14872) (c!837809 (_2!33888 lt!2025191)))))))

(assert (=> d!1583737 (= (isBalanced!4085 (c!837809 (_2!33888 lt!2025191))) e!3076545)))

(declare-fun b!4923513 () Bool)

(declare-fun res!2101784 () Bool)

(assert (=> b!4923513 (=> (not res!2101784) (not e!3076544))))

(assert (=> b!4923513 (= res!2101784 (<= (- (height!1982 (left!41330 (c!837809 (_2!33888 lt!2025191)))) (height!1982 (right!41660 (c!837809 (_2!33888 lt!2025191))))) 1))))

(declare-fun b!4923514 () Bool)

(declare-fun res!2101785 () Bool)

(assert (=> b!4923514 (=> (not res!2101785) (not e!3076544))))

(assert (=> b!4923514 (= res!2101785 (not (isEmpty!30568 (left!41330 (c!837809 (_2!33888 lt!2025191))))))))

(declare-fun b!4923515 () Bool)

(declare-fun res!2101781 () Bool)

(assert (=> b!4923515 (=> (not res!2101781) (not e!3076544))))

(assert (=> b!4923515 (= res!2101781 (isBalanced!4085 (left!41330 (c!837809 (_2!33888 lt!2025191)))))))

(declare-fun b!4923516 () Bool)

(assert (=> b!4923516 (= e!3076545 e!3076544)))

(declare-fun res!2101780 () Bool)

(assert (=> b!4923516 (=> (not res!2101780) (not e!3076544))))

(assert (=> b!4923516 (= res!2101780 (<= (- 1) (- (height!1982 (left!41330 (c!837809 (_2!33888 lt!2025191)))) (height!1982 (right!41660 (c!837809 (_2!33888 lt!2025191)))))))))

(assert (= (and d!1583737 (not res!2101782)) b!4923516))

(assert (= (and b!4923516 res!2101780) b!4923513))

(assert (= (and b!4923513 res!2101784) b!4923515))

(assert (= (and b!4923515 res!2101781) b!4923511))

(assert (= (and b!4923511 res!2101783) b!4923514))

(assert (= (and b!4923514 res!2101785) b!4923512))

(declare-fun m!5939206 () Bool)

(assert (=> b!4923512 m!5939206))

(declare-fun m!5939208 () Bool)

(assert (=> b!4923516 m!5939208))

(declare-fun m!5939210 () Bool)

(assert (=> b!4923516 m!5939210))

(assert (=> b!4923513 m!5939208))

(assert (=> b!4923513 m!5939210))

(declare-fun m!5939212 () Bool)

(assert (=> b!4923514 m!5939212))

(declare-fun m!5939214 () Bool)

(assert (=> b!4923515 m!5939214))

(declare-fun m!5939216 () Bool)

(assert (=> b!4923511 m!5939216))

(assert (=> b!4923322 d!1583737))

(declare-fun d!1583739 () Bool)

(assert (not d!1583739))

(assert (=> b!4922816 d!1583739))

(assert (=> b!4922816 d!1583495))

(assert (=> bm!343090 d!1583405))

(declare-fun d!1583741 () Bool)

(assert (=> d!1583741 (= (max!0 (height!1982 (left!41330 (c!837809 input!5492))) (height!1982 (right!41660 (c!837809 input!5492)))) (ite (< (height!1982 (left!41330 (c!837809 input!5492))) (height!1982 (right!41660 (c!837809 input!5492)))) (height!1982 (right!41660 (c!837809 input!5492))) (height!1982 (left!41330 (c!837809 input!5492)))))))

(assert (=> b!4923015 d!1583741))

(assert (=> b!4923015 d!1583481))

(assert (=> b!4923015 d!1583483))

(assert (=> bm!343010 d!1583521))

(declare-fun d!1583743 () Bool)

(assert (=> d!1583743 (= (head!10520 (ite c!837884 lt!2024726 lt!2024713)) (h!63133 (ite c!837884 lt!2024726 lt!2024713)))))

(assert (=> b!4922893 d!1583743))

(declare-fun d!1583745 () Bool)

(assert (=> d!1583745 (= (head!10520 (ite c!837884 lt!2024744 lt!2024750)) (h!63133 (ite c!837884 lt!2024744 lt!2024750)))))

(assert (=> b!4922893 d!1583745))

(declare-fun b!4923517 () Bool)

(declare-fun e!3076547 () List!56809)

(assert (=> b!4923517 (= e!3076547 Nil!56685)))

(declare-fun b!4923518 () Bool)

(declare-fun e!3076549 () List!56809)

(assert (=> b!4923518 (= e!3076549 (drop!2224 (t!367249 (list!17947 input!5492)) (- lt!2024322 1)))))

(declare-fun bm!343092 () Bool)

(declare-fun call!343097 () Int)

(assert (=> bm!343092 (= call!343097 (size!37476 (list!17947 input!5492)))))

(declare-fun b!4923519 () Bool)

(declare-fun e!3076550 () Int)

(declare-fun e!3076548 () Int)

(assert (=> b!4923519 (= e!3076550 e!3076548)))

(declare-fun c!838142 () Bool)

(assert (=> b!4923519 (= c!838142 (>= lt!2024322 call!343097))))

(declare-fun b!4923520 () Bool)

(assert (=> b!4923520 (= e!3076550 call!343097)))

(declare-fun b!4923521 () Bool)

(assert (=> b!4923521 (= e!3076548 (- call!343097 lt!2024322))))

(declare-fun b!4923522 () Bool)

(assert (=> b!4923522 (= e!3076548 0)))

(declare-fun b!4923523 () Bool)

(assert (=> b!4923523 (= e!3076547 e!3076549)))

(declare-fun c!838141 () Bool)

(assert (=> b!4923523 (= c!838141 (<= lt!2024322 0))))

(declare-fun b!4923524 () Bool)

(declare-fun e!3076546 () Bool)

(declare-fun lt!2025257 () List!56809)

(assert (=> b!4923524 (= e!3076546 (= (size!37476 lt!2025257) e!3076550))))

(declare-fun c!838144 () Bool)

(assert (=> b!4923524 (= c!838144 (<= lt!2024322 0))))

(declare-fun b!4923525 () Bool)

(assert (=> b!4923525 (= e!3076549 (list!17947 input!5492))))

(declare-fun d!1583747 () Bool)

(assert (=> d!1583747 e!3076546))

(declare-fun res!2101786 () Bool)

(assert (=> d!1583747 (=> (not res!2101786) (not e!3076546))))

(assert (=> d!1583747 (= res!2101786 (= ((_ map implies) (content!10066 lt!2025257) (content!10066 (list!17947 input!5492))) ((as const (InoxSet C!26956)) true)))))

(assert (=> d!1583747 (= lt!2025257 e!3076547)))

(declare-fun c!838143 () Bool)

(assert (=> d!1583747 (= c!838143 ((_ is Nil!56685) (list!17947 input!5492)))))

(assert (=> d!1583747 (= (drop!2224 (list!17947 input!5492) lt!2024322) lt!2025257)))

(assert (= (and d!1583747 c!838143) b!4923517))

(assert (= (and d!1583747 (not c!838143)) b!4923523))

(assert (= (and b!4923523 c!838141) b!4923525))

(assert (= (and b!4923523 (not c!838141)) b!4923518))

(assert (= (and d!1583747 res!2101786) b!4923524))

(assert (= (and b!4923524 c!838144) b!4923520))

(assert (= (and b!4923524 (not c!838144)) b!4923519))

(assert (= (and b!4923519 c!838142) b!4923522))

(assert (= (and b!4923519 (not c!838142)) b!4923521))

(assert (= (or b!4923520 b!4923519 b!4923521) bm!343092))

(declare-fun m!5939218 () Bool)

(assert (=> b!4923518 m!5939218))

(assert (=> bm!343092 m!5937560))

(assert (=> bm!343092 m!5937644))

(declare-fun m!5939220 () Bool)

(assert (=> b!4923524 m!5939220))

(declare-fun m!5939222 () Bool)

(assert (=> d!1583747 m!5939222))

(assert (=> d!1583747 m!5937560))

(declare-fun m!5939224 () Bool)

(assert (=> d!1583747 m!5939224))

(assert (=> b!4923418 d!1583747))

(declare-fun d!1583749 () Bool)

(assert (=> d!1583749 (= lt!2024324 lt!2024396)))

(assert (=> d!1583749 true))

(declare-fun _$63!1176 () Unit!147131)

(assert (=> d!1583749 (= (choose!36035 Nil!56685 lt!2024324 Nil!56685 lt!2024396 lt!2024324) _$63!1176)))

(assert (=> d!1583439 d!1583749))

(declare-fun d!1583751 () Bool)

(declare-fun e!3076551 () Bool)

(assert (=> d!1583751 e!3076551))

(declare-fun res!2101789 () Bool)

(assert (=> d!1583751 (=> res!2101789 e!3076551)))

(declare-fun lt!2025258 () Bool)

(assert (=> d!1583751 (= res!2101789 (not lt!2025258))))

(declare-fun e!3076552 () Bool)

(assert (=> d!1583751 (= lt!2025258 e!3076552)))

(declare-fun res!2101788 () Bool)

(assert (=> d!1583751 (=> res!2101788 e!3076552)))

(assert (=> d!1583751 (= res!2101788 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583751 (= (isPrefix!4961 Nil!56685 lt!2024324) lt!2025258)))

(declare-fun b!4923528 () Bool)

(declare-fun e!3076553 () Bool)

(assert (=> b!4923528 (= e!3076553 (isPrefix!4961 (tail!9667 Nil!56685) (tail!9667 lt!2024324)))))

(declare-fun b!4923527 () Bool)

(declare-fun res!2101790 () Bool)

(assert (=> b!4923527 (=> (not res!2101790) (not e!3076553))))

(assert (=> b!4923527 (= res!2101790 (= (head!10520 Nil!56685) (head!10520 lt!2024324)))))

(declare-fun b!4923526 () Bool)

(assert (=> b!4923526 (= e!3076552 e!3076553)))

(declare-fun res!2101787 () Bool)

(assert (=> b!4923526 (=> (not res!2101787) (not e!3076553))))

(assert (=> b!4923526 (= res!2101787 (not ((_ is Nil!56685) lt!2024324)))))

(declare-fun b!4923529 () Bool)

(assert (=> b!4923529 (= e!3076551 (>= (size!37476 lt!2024324) (size!37476 Nil!56685)))))

(assert (= (and d!1583751 (not res!2101788)) b!4923526))

(assert (= (and b!4923526 res!2101787) b!4923527))

(assert (= (and b!4923527 res!2101790) b!4923528))

(assert (= (and d!1583751 (not res!2101789)) b!4923529))

(assert (=> b!4923528 m!5938074))

(assert (=> b!4923528 m!5937580))

(assert (=> b!4923528 m!5938074))

(assert (=> b!4923528 m!5937580))

(declare-fun m!5939226 () Bool)

(assert (=> b!4923528 m!5939226))

(assert (=> b!4923527 m!5938080))

(assert (=> b!4923527 m!5937604))

(assert (=> b!4923529 m!5937596))

(assert (=> b!4923529 m!5937598))

(assert (=> d!1583439 d!1583751))

(declare-fun d!1583753 () Bool)

(declare-fun e!3076554 () Bool)

(assert (=> d!1583753 e!3076554))

(declare-fun res!2101793 () Bool)

(assert (=> d!1583753 (=> res!2101793 e!3076554)))

(declare-fun lt!2025259 () Bool)

(assert (=> d!1583753 (= res!2101793 (not lt!2025259))))

(declare-fun e!3076555 () Bool)

(assert (=> d!1583753 (= lt!2025259 e!3076555)))

(declare-fun res!2101792 () Bool)

(assert (=> d!1583753 (=> res!2101792 e!3076555)))

(assert (=> d!1583753 (= res!2101792 ((_ is Nil!56685) (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))))

(assert (=> d!1583753 (= (isPrefix!4961 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))) (tail!9667 lt!2024324)) lt!2025259)))

(declare-fun b!4923532 () Bool)

(declare-fun e!3076556 () Bool)

(assert (=> b!4923532 (= e!3076556 (isPrefix!4961 (tail!9667 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))) (tail!9667 (tail!9667 lt!2024324))))))

(declare-fun b!4923531 () Bool)

(declare-fun res!2101794 () Bool)

(assert (=> b!4923531 (=> (not res!2101794) (not e!3076556))))

(assert (=> b!4923531 (= res!2101794 (= (head!10520 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))) (head!10520 (tail!9667 lt!2024324))))))

(declare-fun b!4923530 () Bool)

(assert (=> b!4923530 (= e!3076555 e!3076556)))

(declare-fun res!2101791 () Bool)

(assert (=> b!4923530 (=> (not res!2101791) (not e!3076556))))

(assert (=> b!4923530 (= res!2101791 (not ((_ is Nil!56685) (tail!9667 lt!2024324))))))

(declare-fun b!4923533 () Bool)

(assert (=> b!4923533 (= e!3076554 (>= (size!37476 (tail!9667 lt!2024324)) (size!37476 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))))))

(assert (= (and d!1583753 (not res!2101792)) b!4923530))

(assert (= (and b!4923530 res!2101791) b!4923531))

(assert (= (and b!4923531 res!2101794) b!4923532))

(assert (= (and d!1583753 (not res!2101793)) b!4923533))

(assert (=> b!4923532 m!5938818))

(declare-fun m!5939228 () Bool)

(assert (=> b!4923532 m!5939228))

(assert (=> b!4923532 m!5937580))

(declare-fun m!5939230 () Bool)

(assert (=> b!4923532 m!5939230))

(assert (=> b!4923532 m!5939228))

(assert (=> b!4923532 m!5939230))

(declare-fun m!5939232 () Bool)

(assert (=> b!4923532 m!5939232))

(assert (=> b!4923531 m!5938818))

(declare-fun m!5939234 () Bool)

(assert (=> b!4923531 m!5939234))

(assert (=> b!4923531 m!5937580))

(declare-fun m!5939236 () Bool)

(assert (=> b!4923531 m!5939236))

(assert (=> b!4923533 m!5937580))

(declare-fun m!5939238 () Bool)

(assert (=> b!4923533 m!5939238))

(assert (=> b!4923533 m!5938818))

(declare-fun m!5939240 () Bool)

(assert (=> b!4923533 m!5939240))

(assert (=> b!4923260 d!1583753))

(declare-fun d!1583755 () Bool)

(assert (=> d!1583755 (= (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))) (t!367249 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))))

(assert (=> b!4923260 d!1583755))

(assert (=> b!4923260 d!1583495))

(assert (=> d!1583455 d!1583411))

(declare-fun b!4923536 () Bool)

(declare-fun res!2101795 () Bool)

(declare-fun e!3076557 () Bool)

(assert (=> b!4923536 (=> (not res!2101795) (not e!3076557))))

(declare-fun lt!2025260 () List!56809)

(assert (=> b!4923536 (= res!2101795 (= (size!37476 lt!2025260) (+ (size!37476 (_1!33887 lt!2024900)) (size!37476 (_2!33887 lt!2024900)))))))

(declare-fun b!4923534 () Bool)

(declare-fun e!3076558 () List!56809)

(assert (=> b!4923534 (= e!3076558 (_2!33887 lt!2024900))))

(declare-fun b!4923535 () Bool)

(assert (=> b!4923535 (= e!3076558 (Cons!56685 (h!63133 (_1!33887 lt!2024900)) (++!12322 (t!367249 (_1!33887 lt!2024900)) (_2!33887 lt!2024900))))))

(declare-fun d!1583757 () Bool)

(assert (=> d!1583757 e!3076557))

(declare-fun res!2101796 () Bool)

(assert (=> d!1583757 (=> (not res!2101796) (not e!3076557))))

(assert (=> d!1583757 (= res!2101796 (= (content!10066 lt!2025260) ((_ map or) (content!10066 (_1!33887 lt!2024900)) (content!10066 (_2!33887 lt!2024900)))))))

(assert (=> d!1583757 (= lt!2025260 e!3076558)))

(declare-fun c!838145 () Bool)

(assert (=> d!1583757 (= c!838145 ((_ is Nil!56685) (_1!33887 lt!2024900)))))

(assert (=> d!1583757 (= (++!12322 (_1!33887 lt!2024900) (_2!33887 lt!2024900)) lt!2025260)))

(declare-fun b!4923537 () Bool)

(assert (=> b!4923537 (= e!3076557 (or (not (= (_2!33887 lt!2024900) Nil!56685)) (= lt!2025260 (_1!33887 lt!2024900))))))

(assert (= (and d!1583757 c!838145) b!4923534))

(assert (= (and d!1583757 (not c!838145)) b!4923535))

(assert (= (and d!1583757 res!2101796) b!4923536))

(assert (= (and b!4923536 res!2101795) b!4923537))

(declare-fun m!5939242 () Bool)

(assert (=> b!4923536 m!5939242))

(assert (=> b!4923536 m!5938166))

(declare-fun m!5939244 () Bool)

(assert (=> b!4923536 m!5939244))

(declare-fun m!5939246 () Bool)

(assert (=> b!4923535 m!5939246))

(declare-fun m!5939248 () Bool)

(assert (=> d!1583757 m!5939248))

(declare-fun m!5939250 () Bool)

(assert (=> d!1583757 m!5939250))

(declare-fun m!5939252 () Bool)

(assert (=> d!1583757 m!5939252))

(assert (=> d!1583455 d!1583757))

(assert (=> d!1583455 d!1583417))

(assert (=> d!1583455 d!1583465))

(assert (=> d!1583455 d!1583437))

(assert (=> d!1583455 d!1583427))

(declare-fun d!1583759 () Bool)

(assert (=> d!1583759 (= lt!2024324 lt!2024907)))

(declare-fun lt!2025261 () Unit!147131)

(assert (=> d!1583759 (= lt!2025261 (choose!36035 Nil!56685 lt!2024324 Nil!56685 lt!2024907 (list!17947 input!5492)))))

(assert (=> d!1583759 (isPrefix!4961 Nil!56685 (list!17947 input!5492))))

(assert (=> d!1583759 (= (lemmaSamePrefixThenSameSuffix!2365 Nil!56685 lt!2024324 Nil!56685 lt!2024907 (list!17947 input!5492)) lt!2025261)))

(declare-fun bs!1179305 () Bool)

(assert (= bs!1179305 d!1583759))

(assert (=> bs!1179305 m!5937560))

(declare-fun m!5939254 () Bool)

(assert (=> bs!1179305 m!5939254))

(assert (=> bs!1179305 m!5937560))

(assert (=> bs!1179305 m!5938184))

(assert (=> d!1583455 d!1583759))

(declare-fun d!1583761 () Bool)

(assert (=> d!1583761 (= (head!10520 call!342906) (h!63133 call!342906))))

(assert (=> bm!343088 d!1583761))

(declare-fun b!4923538 () Bool)

(declare-fun res!2101800 () Bool)

(declare-fun e!3076559 () Bool)

(assert (=> b!4923538 (=> (not res!2101800) (not e!3076559))))

(assert (=> b!4923538 (= res!2101800 (isBalanced!4085 (right!41660 (right!41660 (right!41660 (c!837809 input!5492))))))))

(declare-fun b!4923539 () Bool)

(assert (=> b!4923539 (= e!3076559 (not (isEmpty!30568 (right!41660 (right!41660 (right!41660 (c!837809 input!5492)))))))))

(declare-fun d!1583763 () Bool)

(declare-fun res!2101799 () Bool)

(declare-fun e!3076560 () Bool)

(assert (=> d!1583763 (=> res!2101799 e!3076560)))

(assert (=> d!1583763 (= res!2101799 (not ((_ is Node!14872) (right!41660 (right!41660 (c!837809 input!5492))))))))

(assert (=> d!1583763 (= (isBalanced!4085 (right!41660 (right!41660 (c!837809 input!5492)))) e!3076560)))

(declare-fun b!4923540 () Bool)

(declare-fun res!2101801 () Bool)

(assert (=> b!4923540 (=> (not res!2101801) (not e!3076559))))

(assert (=> b!4923540 (= res!2101801 (<= (- (height!1982 (left!41330 (right!41660 (right!41660 (c!837809 input!5492))))) (height!1982 (right!41660 (right!41660 (right!41660 (c!837809 input!5492)))))) 1))))

(declare-fun b!4923541 () Bool)

(declare-fun res!2101802 () Bool)

(assert (=> b!4923541 (=> (not res!2101802) (not e!3076559))))

(assert (=> b!4923541 (= res!2101802 (not (isEmpty!30568 (left!41330 (right!41660 (right!41660 (c!837809 input!5492)))))))))

(declare-fun b!4923542 () Bool)

(declare-fun res!2101798 () Bool)

(assert (=> b!4923542 (=> (not res!2101798) (not e!3076559))))

(assert (=> b!4923542 (= res!2101798 (isBalanced!4085 (left!41330 (right!41660 (right!41660 (c!837809 input!5492))))))))

(declare-fun b!4923543 () Bool)

(assert (=> b!4923543 (= e!3076560 e!3076559)))

(declare-fun res!2101797 () Bool)

(assert (=> b!4923543 (=> (not res!2101797) (not e!3076559))))

(assert (=> b!4923543 (= res!2101797 (<= (- 1) (- (height!1982 (left!41330 (right!41660 (right!41660 (c!837809 input!5492))))) (height!1982 (right!41660 (right!41660 (right!41660 (c!837809 input!5492))))))))))

(assert (= (and d!1583763 (not res!2101799)) b!4923543))

(assert (= (and b!4923543 res!2101797) b!4923540))

(assert (= (and b!4923540 res!2101801) b!4923542))

(assert (= (and b!4923542 res!2101798) b!4923538))

(assert (= (and b!4923538 res!2101800) b!4923541))

(assert (= (and b!4923541 res!2101802) b!4923539))

(declare-fun m!5939256 () Bool)

(assert (=> b!4923539 m!5939256))

(declare-fun m!5939258 () Bool)

(assert (=> b!4923543 m!5939258))

(declare-fun m!5939260 () Bool)

(assert (=> b!4923543 m!5939260))

(assert (=> b!4923540 m!5939258))

(assert (=> b!4923540 m!5939260))

(declare-fun m!5939262 () Bool)

(assert (=> b!4923541 m!5939262))

(declare-fun m!5939264 () Bool)

(assert (=> b!4923542 m!5939264))

(declare-fun m!5939266 () Bool)

(assert (=> b!4923538 m!5939266))

(assert (=> b!4922980 d!1583763))

(declare-fun d!1583765 () Bool)

(declare-fun c!838148 () Bool)

(assert (=> d!1583765 (= c!838148 ((_ is Nil!56685) lt!2025177))))

(declare-fun e!3076563 () (InoxSet C!26956))

(assert (=> d!1583765 (= (content!10066 lt!2025177) e!3076563)))

(declare-fun b!4923548 () Bool)

(assert (=> b!4923548 (= e!3076563 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923549 () Bool)

(assert (=> b!4923549 (= e!3076563 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025177) true) (content!10066 (t!367249 lt!2025177))))))

(assert (= (and d!1583765 c!838148) b!4923548))

(assert (= (and d!1583765 (not c!838148)) b!4923549))

(declare-fun m!5939268 () Bool)

(assert (=> b!4923549 m!5939268))

(declare-fun m!5939270 () Bool)

(assert (=> b!4923549 m!5939270))

(assert (=> d!1583635 d!1583765))

(declare-fun d!1583767 () Bool)

(assert (=> d!1583767 (= (content!10066 Nil!56685) ((as const (Array C!26956 Bool)) false))))

(assert (=> d!1583635 d!1583767))

(declare-fun d!1583769 () Bool)

(declare-fun c!838149 () Bool)

(assert (=> d!1583769 (= c!838149 ((_ is Nil!56685) (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))

(declare-fun e!3076564 () (InoxSet C!26956))

(assert (=> d!1583769 (= (content!10066 (Cons!56685 (head!10520 lt!2024324) Nil!56685)) e!3076564)))

(declare-fun b!4923550 () Bool)

(assert (=> b!4923550 (= e!3076564 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923551 () Bool)

(assert (=> b!4923551 (= e!3076564 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (Cons!56685 (head!10520 lt!2024324) Nil!56685)) true) (content!10066 (t!367249 (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))))

(assert (= (and d!1583769 c!838149) b!4923550))

(assert (= (and d!1583769 (not c!838149)) b!4923551))

(declare-fun m!5939272 () Bool)

(assert (=> b!4923551 m!5939272))

(declare-fun m!5939274 () Bool)

(assert (=> b!4923551 m!5939274))

(assert (=> d!1583635 d!1583769))

(declare-fun b!4923552 () Bool)

(declare-fun res!2101806 () Bool)

(declare-fun e!3076565 () Bool)

(assert (=> b!4923552 (=> (not res!2101806) (not e!3076565))))

(assert (=> b!4923552 (= res!2101806 (isBalanced!4085 (right!41660 (right!41660 (left!41330 (c!837809 input!5492))))))))

(declare-fun b!4923553 () Bool)

(assert (=> b!4923553 (= e!3076565 (not (isEmpty!30568 (right!41660 (right!41660 (left!41330 (c!837809 input!5492)))))))))

(declare-fun d!1583771 () Bool)

(declare-fun res!2101805 () Bool)

(declare-fun e!3076566 () Bool)

(assert (=> d!1583771 (=> res!2101805 e!3076566)))

(assert (=> d!1583771 (= res!2101805 (not ((_ is Node!14872) (right!41660 (left!41330 (c!837809 input!5492))))))))

(assert (=> d!1583771 (= (isBalanced!4085 (right!41660 (left!41330 (c!837809 input!5492)))) e!3076566)))

(declare-fun b!4923554 () Bool)

(declare-fun res!2101807 () Bool)

(assert (=> b!4923554 (=> (not res!2101807) (not e!3076565))))

(assert (=> b!4923554 (= res!2101807 (<= (- (height!1982 (left!41330 (right!41660 (left!41330 (c!837809 input!5492))))) (height!1982 (right!41660 (right!41660 (left!41330 (c!837809 input!5492)))))) 1))))

(declare-fun b!4923555 () Bool)

(declare-fun res!2101808 () Bool)

(assert (=> b!4923555 (=> (not res!2101808) (not e!3076565))))

(assert (=> b!4923555 (= res!2101808 (not (isEmpty!30568 (left!41330 (right!41660 (left!41330 (c!837809 input!5492)))))))))

(declare-fun b!4923556 () Bool)

(declare-fun res!2101804 () Bool)

(assert (=> b!4923556 (=> (not res!2101804) (not e!3076565))))

(assert (=> b!4923556 (= res!2101804 (isBalanced!4085 (left!41330 (right!41660 (left!41330 (c!837809 input!5492))))))))

(declare-fun b!4923557 () Bool)

(assert (=> b!4923557 (= e!3076566 e!3076565)))

(declare-fun res!2101803 () Bool)

(assert (=> b!4923557 (=> (not res!2101803) (not e!3076565))))

(assert (=> b!4923557 (= res!2101803 (<= (- 1) (- (height!1982 (left!41330 (right!41660 (left!41330 (c!837809 input!5492))))) (height!1982 (right!41660 (right!41660 (left!41330 (c!837809 input!5492))))))))))

(assert (= (and d!1583771 (not res!2101805)) b!4923557))

(assert (= (and b!4923557 res!2101803) b!4923554))

(assert (= (and b!4923554 res!2101807) b!4923556))

(assert (= (and b!4923556 res!2101804) b!4923552))

(assert (= (and b!4923552 res!2101806) b!4923555))

(assert (= (and b!4923555 res!2101808) b!4923553))

(declare-fun m!5939276 () Bool)

(assert (=> b!4923553 m!5939276))

(declare-fun m!5939278 () Bool)

(assert (=> b!4923557 m!5939278))

(declare-fun m!5939280 () Bool)

(assert (=> b!4923557 m!5939280))

(assert (=> b!4923554 m!5939278))

(assert (=> b!4923554 m!5939280))

(declare-fun m!5939282 () Bool)

(assert (=> b!4923555 m!5939282))

(declare-fun m!5939284 () Bool)

(assert (=> b!4923556 m!5939284))

(declare-fun m!5939286 () Bool)

(assert (=> b!4923552 m!5939286))

(assert (=> b!4923033 d!1583771))

(declare-fun d!1583773 () Bool)

(declare-fun lt!2025262 () Int)

(assert (=> d!1583773 (>= lt!2025262 0)))

(declare-fun e!3076567 () Int)

(assert (=> d!1583773 (= lt!2025262 e!3076567)))

(declare-fun c!838150 () Bool)

(assert (=> d!1583773 (= c!838150 ((_ is Nil!56685) lt!2025179))))

(assert (=> d!1583773 (= (size!37476 lt!2025179) lt!2025262)))

(declare-fun b!4923558 () Bool)

(assert (=> b!4923558 (= e!3076567 0)))

(declare-fun b!4923559 () Bool)

(assert (=> b!4923559 (= e!3076567 (+ 1 (size!37476 (t!367249 lt!2025179))))))

(assert (= (and d!1583773 c!838150) b!4923558))

(assert (= (and d!1583773 (not c!838150)) b!4923559))

(declare-fun m!5939288 () Bool)

(assert (=> b!4923559 m!5939288))

(assert (=> b!4923280 d!1583773))

(assert (=> b!4923280 d!1583487))

(declare-fun d!1583775 () Bool)

(declare-fun lt!2025263 () Int)

(assert (=> d!1583775 (>= lt!2025263 0)))

(declare-fun e!3076568 () Int)

(assert (=> d!1583775 (= lt!2025263 e!3076568)))

(declare-fun c!838151 () Bool)

(assert (=> d!1583775 (= c!838151 ((_ is Nil!56685) (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))

(assert (=> d!1583775 (= (size!37476 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) lt!2025263)))

(declare-fun b!4923560 () Bool)

(assert (=> b!4923560 (= e!3076568 0)))

(declare-fun b!4923561 () Bool)

(assert (=> b!4923561 (= e!3076568 (+ 1 (size!37476 (t!367249 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))))

(assert (= (and d!1583775 c!838151) b!4923560))

(assert (= (and d!1583775 (not c!838151)) b!4923561))

(declare-fun m!5939290 () Bool)

(assert (=> b!4923561 m!5939290))

(assert (=> b!4923280 d!1583775))

(declare-fun d!1583777 () Bool)

(assert (=> d!1583777 (= (inv!73470 (xs!18192 (left!41330 (c!837809 input!5492)))) (<= (size!37476 (innerList!14960 (xs!18192 (left!41330 (c!837809 input!5492))))) 2147483647))))

(declare-fun bs!1179306 () Bool)

(assert (= bs!1179306 d!1583777))

(declare-fun m!5939292 () Bool)

(assert (=> bs!1179306 m!5939292))

(assert (=> b!4923475 d!1583777))

(declare-fun d!1583779 () Bool)

(assert (=> d!1583779 (= (isEmpty!30566 (list!17949 (right!41660 (c!837809 input!5492)))) ((_ is Nil!56685) (list!17949 (right!41660 (c!837809 input!5492)))))))

(assert (=> d!1583397 d!1583779))

(declare-fun b!4923564 () Bool)

(declare-fun e!3076570 () List!56809)

(assert (=> b!4923564 (= e!3076570 (list!17950 (xs!18192 (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4923562 () Bool)

(declare-fun e!3076569 () List!56809)

(assert (=> b!4923562 (= e!3076569 Nil!56685)))

(declare-fun d!1583781 () Bool)

(declare-fun c!838152 () Bool)

(assert (=> d!1583781 (= c!838152 ((_ is Empty!14872) (right!41660 (c!837809 input!5492))))))

(assert (=> d!1583781 (= (list!17949 (right!41660 (c!837809 input!5492))) e!3076569)))

(declare-fun b!4923565 () Bool)

(assert (=> b!4923565 (= e!3076570 (++!12322 (list!17949 (left!41330 (right!41660 (c!837809 input!5492)))) (list!17949 (right!41660 (right!41660 (c!837809 input!5492))))))))

(declare-fun b!4923563 () Bool)

(assert (=> b!4923563 (= e!3076569 e!3076570)))

(declare-fun c!838153 () Bool)

(assert (=> b!4923563 (= c!838153 ((_ is Leaf!24741) (right!41660 (c!837809 input!5492))))))

(assert (= (and d!1583781 c!838152) b!4923562))

(assert (= (and d!1583781 (not c!838152)) b!4923563))

(assert (= (and b!4923563 c!838153) b!4923564))

(assert (= (and b!4923563 (not c!838153)) b!4923565))

(declare-fun m!5939294 () Bool)

(assert (=> b!4923564 m!5939294))

(declare-fun m!5939296 () Bool)

(assert (=> b!4923565 m!5939296))

(declare-fun m!5939298 () Bool)

(assert (=> b!4923565 m!5939298))

(assert (=> b!4923565 m!5939296))

(assert (=> b!4923565 m!5939298))

(declare-fun m!5939300 () Bool)

(assert (=> b!4923565 m!5939300))

(assert (=> d!1583397 d!1583781))

(declare-fun d!1583783 () Bool)

(declare-fun lt!2025264 () Int)

(assert (=> d!1583783 (= lt!2025264 (size!37476 (list!17949 (right!41660 (c!837809 input!5492)))))))

(assert (=> d!1583783 (= lt!2025264 (ite ((_ is Empty!14872) (right!41660 (c!837809 input!5492))) 0 (ite ((_ is Leaf!24741) (right!41660 (c!837809 input!5492))) (csize!29975 (right!41660 (c!837809 input!5492))) (csize!29974 (right!41660 (c!837809 input!5492))))))))

(assert (=> d!1583783 (= (size!37478 (right!41660 (c!837809 input!5492))) lt!2025264)))

(declare-fun bs!1179307 () Bool)

(assert (= bs!1179307 d!1583783))

(assert (=> bs!1179307 m!5937958))

(assert (=> bs!1179307 m!5937958))

(declare-fun m!5939302 () Bool)

(assert (=> bs!1179307 m!5939302))

(assert (=> d!1583397 d!1583783))

(declare-fun b!4923566 () Bool)

(declare-fun res!2101812 () Bool)

(declare-fun e!3076571 () Bool)

(assert (=> b!4923566 (=> (not res!2101812) (not e!3076571))))

(assert (=> b!4923566 (= res!2101812 (isBalanced!4085 (right!41660 (left!41330 (c!837809 (_1!33888 lt!2024758))))))))

(declare-fun b!4923567 () Bool)

(assert (=> b!4923567 (= e!3076571 (not (isEmpty!30568 (right!41660 (left!41330 (c!837809 (_1!33888 lt!2024758)))))))))

(declare-fun d!1583785 () Bool)

(declare-fun res!2101811 () Bool)

(declare-fun e!3076572 () Bool)

(assert (=> d!1583785 (=> res!2101811 e!3076572)))

(assert (=> d!1583785 (= res!2101811 (not ((_ is Node!14872) (left!41330 (c!837809 (_1!33888 lt!2024758))))))))

(assert (=> d!1583785 (= (isBalanced!4085 (left!41330 (c!837809 (_1!33888 lt!2024758)))) e!3076572)))

(declare-fun b!4923568 () Bool)

(declare-fun res!2101813 () Bool)

(assert (=> b!4923568 (=> (not res!2101813) (not e!3076571))))

(assert (=> b!4923568 (= res!2101813 (<= (- (height!1982 (left!41330 (left!41330 (c!837809 (_1!33888 lt!2024758))))) (height!1982 (right!41660 (left!41330 (c!837809 (_1!33888 lt!2024758)))))) 1))))

(declare-fun b!4923569 () Bool)

(declare-fun res!2101814 () Bool)

(assert (=> b!4923569 (=> (not res!2101814) (not e!3076571))))

(assert (=> b!4923569 (= res!2101814 (not (isEmpty!30568 (left!41330 (left!41330 (c!837809 (_1!33888 lt!2024758)))))))))

(declare-fun b!4923570 () Bool)

(declare-fun res!2101810 () Bool)

(assert (=> b!4923570 (=> (not res!2101810) (not e!3076571))))

(assert (=> b!4923570 (= res!2101810 (isBalanced!4085 (left!41330 (left!41330 (c!837809 (_1!33888 lt!2024758))))))))

(declare-fun b!4923571 () Bool)

(assert (=> b!4923571 (= e!3076572 e!3076571)))

(declare-fun res!2101809 () Bool)

(assert (=> b!4923571 (=> (not res!2101809) (not e!3076571))))

(assert (=> b!4923571 (= res!2101809 (<= (- 1) (- (height!1982 (left!41330 (left!41330 (c!837809 (_1!33888 lt!2024758))))) (height!1982 (right!41660 (left!41330 (c!837809 (_1!33888 lt!2024758))))))))))

(assert (= (and d!1583785 (not res!2101811)) b!4923571))

(assert (= (and b!4923571 res!2101809) b!4923568))

(assert (= (and b!4923568 res!2101813) b!4923570))

(assert (= (and b!4923570 res!2101810) b!4923566))

(assert (= (and b!4923566 res!2101812) b!4923569))

(assert (= (and b!4923569 res!2101814) b!4923567))

(declare-fun m!5939304 () Bool)

(assert (=> b!4923567 m!5939304))

(declare-fun m!5939306 () Bool)

(assert (=> b!4923571 m!5939306))

(declare-fun m!5939308 () Bool)

(assert (=> b!4923571 m!5939308))

(assert (=> b!4923568 m!5939306))

(assert (=> b!4923568 m!5939308))

(declare-fun m!5939310 () Bool)

(assert (=> b!4923569 m!5939310))

(declare-fun m!5939312 () Bool)

(assert (=> b!4923570 m!5939312))

(declare-fun m!5939314 () Bool)

(assert (=> b!4923566 m!5939314))

(assert (=> b!4923064 d!1583785))

(declare-fun d!1583787 () Bool)

(declare-fun lt!2025265 () Int)

(assert (=> d!1583787 (>= lt!2025265 0)))

(declare-fun e!3076573 () Int)

(assert (=> d!1583787 (= lt!2025265 e!3076573)))

(declare-fun c!838154 () Bool)

(assert (=> d!1583787 (= c!838154 ((_ is Nil!56685) lt!2025192))))

(assert (=> d!1583787 (= (size!37476 lt!2025192) lt!2025265)))

(declare-fun b!4923572 () Bool)

(assert (=> b!4923572 (= e!3076573 0)))

(declare-fun b!4923573 () Bool)

(assert (=> b!4923573 (= e!3076573 (+ 1 (size!37476 (t!367249 lt!2025192))))))

(assert (= (and d!1583787 c!838154) b!4923572))

(assert (= (and d!1583787 (not c!838154)) b!4923573))

(declare-fun m!5939316 () Bool)

(assert (=> b!4923573 m!5939316))

(assert (=> b!4923326 d!1583787))

(assert (=> b!4923326 d!1583487))

(declare-fun d!1583789 () Bool)

(declare-fun lt!2025266 () Int)

(assert (=> d!1583789 (>= lt!2025266 0)))

(declare-fun e!3076574 () Int)

(assert (=> d!1583789 (= lt!2025266 e!3076574)))

(declare-fun c!838155 () Bool)

(assert (=> d!1583789 (= c!838155 ((_ is Nil!56685) (Cons!56685 lt!2024743 Nil!56685)))))

(assert (=> d!1583789 (= (size!37476 (Cons!56685 lt!2024743 Nil!56685)) lt!2025266)))

(declare-fun b!4923574 () Bool)

(assert (=> b!4923574 (= e!3076574 0)))

(declare-fun b!4923575 () Bool)

(assert (=> b!4923575 (= e!3076574 (+ 1 (size!37476 (t!367249 (Cons!56685 lt!2024743 Nil!56685)))))))

(assert (= (and d!1583789 c!838155) b!4923574))

(assert (= (and d!1583789 (not c!838155)) b!4923575))

(declare-fun m!5939318 () Bool)

(assert (=> b!4923575 m!5939318))

(assert (=> b!4923326 d!1583789))

(declare-fun d!1583791 () Bool)

(declare-fun c!838156 () Bool)

(assert (=> d!1583791 (= c!838156 ((_ is Nil!56685) lt!2025175))))

(declare-fun e!3076575 () (InoxSet C!26956))

(assert (=> d!1583791 (= (content!10066 lt!2025175) e!3076575)))

(declare-fun b!4923576 () Bool)

(assert (=> b!4923576 (= e!3076575 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923577 () Bool)

(assert (=> b!4923577 (= e!3076575 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025175) true) (content!10066 (t!367249 lt!2025175))))))

(assert (= (and d!1583791 c!838156) b!4923576))

(assert (= (and d!1583791 (not c!838156)) b!4923577))

(declare-fun m!5939320 () Bool)

(assert (=> b!4923577 m!5939320))

(declare-fun m!5939322 () Bool)

(assert (=> b!4923577 m!5939322))

(assert (=> d!1583631 d!1583791))

(declare-fun d!1583793 () Bool)

(declare-fun c!838157 () Bool)

(assert (=> d!1583793 (= c!838157 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))))))

(declare-fun e!3076576 () (InoxSet C!26956))

(assert (=> d!1583793 (= (content!10066 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) e!3076576)))

(declare-fun b!4923578 () Bool)

(assert (=> b!4923578 (= e!3076576 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923579 () Bool)

(assert (=> b!4923579 (= e!3076576 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) true) (content!10066 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))))))))

(assert (= (and d!1583793 c!838157) b!4923578))

(assert (= (and d!1583793 (not c!838157)) b!4923579))

(declare-fun m!5939324 () Bool)

(assert (=> b!4923579 m!5939324))

(declare-fun m!5939326 () Bool)

(assert (=> b!4923579 m!5939326))

(assert (=> d!1583631 d!1583793))

(declare-fun d!1583795 () Bool)

(declare-fun c!838158 () Bool)

(assert (=> d!1583795 (= c!838158 ((_ is Nil!56685) lt!2024403))))

(declare-fun e!3076577 () (InoxSet C!26956))

(assert (=> d!1583795 (= (content!10066 lt!2024403) e!3076577)))

(declare-fun b!4923580 () Bool)

(assert (=> b!4923580 (= e!3076577 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923581 () Bool)

(assert (=> b!4923581 (= e!3076577 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024403) true) (content!10066 (t!367249 lt!2024403))))))

(assert (= (and d!1583795 c!838158) b!4923580))

(assert (= (and d!1583795 (not c!838158)) b!4923581))

(declare-fun m!5939328 () Bool)

(assert (=> b!4923581 m!5939328))

(declare-fun m!5939330 () Bool)

(assert (=> b!4923581 m!5939330))

(assert (=> d!1583631 d!1583795))

(declare-fun b!4923584 () Bool)

(declare-fun e!3076579 () List!56809)

(assert (=> b!4923584 (= e!3076579 (list!17950 (xs!18192 (_1!33890 lt!2025152))))))

(declare-fun b!4923582 () Bool)

(declare-fun e!3076578 () List!56809)

(assert (=> b!4923582 (= e!3076578 Nil!56685)))

(declare-fun d!1583797 () Bool)

(declare-fun c!838159 () Bool)

(assert (=> d!1583797 (= c!838159 ((_ is Empty!14872) (_1!33890 lt!2025152)))))

(assert (=> d!1583797 (= (list!17949 (_1!33890 lt!2025152)) e!3076578)))

(declare-fun b!4923585 () Bool)

(assert (=> b!4923585 (= e!3076579 (++!12322 (list!17949 (left!41330 (_1!33890 lt!2025152))) (list!17949 (right!41660 (_1!33890 lt!2025152)))))))

(declare-fun b!4923583 () Bool)

(assert (=> b!4923583 (= e!3076578 e!3076579)))

(declare-fun c!838160 () Bool)

(assert (=> b!4923583 (= c!838160 ((_ is Leaf!24741) (_1!33890 lt!2025152)))))

(assert (= (and d!1583797 c!838159) b!4923582))

(assert (= (and d!1583797 (not c!838159)) b!4923583))

(assert (= (and b!4923583 c!838160) b!4923584))

(assert (= (and b!4923583 (not c!838160)) b!4923585))

(declare-fun m!5939332 () Bool)

(assert (=> b!4923584 m!5939332))

(declare-fun m!5939334 () Bool)

(assert (=> b!4923585 m!5939334))

(declare-fun m!5939336 () Bool)

(assert (=> b!4923585 m!5939336))

(assert (=> b!4923585 m!5939334))

(assert (=> b!4923585 m!5939336))

(declare-fun m!5939338 () Bool)

(assert (=> b!4923585 m!5939338))

(assert (=> b!4923214 d!1583797))

(declare-fun b!4923588 () Bool)

(declare-fun e!3076581 () List!56809)

(assert (=> b!4923588 (= e!3076581 (list!17950 (xs!18192 (_2!33890 lt!2025152))))))

(declare-fun b!4923586 () Bool)

(declare-fun e!3076580 () List!56809)

(assert (=> b!4923586 (= e!3076580 Nil!56685)))

(declare-fun d!1583799 () Bool)

(declare-fun c!838161 () Bool)

(assert (=> d!1583799 (= c!838161 ((_ is Empty!14872) (_2!33890 lt!2025152)))))

(assert (=> d!1583799 (= (list!17949 (_2!33890 lt!2025152)) e!3076580)))

(declare-fun b!4923589 () Bool)

(assert (=> b!4923589 (= e!3076581 (++!12322 (list!17949 (left!41330 (_2!33890 lt!2025152))) (list!17949 (right!41660 (_2!33890 lt!2025152)))))))

(declare-fun b!4923587 () Bool)

(assert (=> b!4923587 (= e!3076580 e!3076581)))

(declare-fun c!838162 () Bool)

(assert (=> b!4923587 (= c!838162 ((_ is Leaf!24741) (_2!33890 lt!2025152)))))

(assert (= (and d!1583799 c!838161) b!4923586))

(assert (= (and d!1583799 (not c!838161)) b!4923587))

(assert (= (and b!4923587 c!838162) b!4923588))

(assert (= (and b!4923587 (not c!838162)) b!4923589))

(declare-fun m!5939340 () Bool)

(assert (=> b!4923588 m!5939340))

(declare-fun m!5939342 () Bool)

(assert (=> b!4923589 m!5939342))

(declare-fun m!5939344 () Bool)

(assert (=> b!4923589 m!5939344))

(assert (=> b!4923589 m!5939342))

(assert (=> b!4923589 m!5939344))

(declare-fun m!5939346 () Bool)

(assert (=> b!4923589 m!5939346))

(assert (=> b!4923214 d!1583799))

(declare-fun d!1583801 () Bool)

(declare-fun e!3076584 () Bool)

(assert (=> d!1583801 e!3076584))

(declare-fun res!2101815 () Bool)

(assert (=> d!1583801 (=> (not res!2101815) (not e!3076584))))

(declare-fun lt!2025268 () tuple2!61168)

(assert (=> d!1583801 (= res!2101815 (= (++!12322 (_1!33887 lt!2025268) (_2!33887 lt!2025268)) (list!17949 (c!837809 input!5492))))))

(declare-fun e!3076582 () tuple2!61168)

(assert (=> d!1583801 (= lt!2025268 e!3076582)))

(declare-fun c!838164 () Bool)

(assert (=> d!1583801 (= c!838164 ((_ is Nil!56685) (list!17949 (c!837809 input!5492))))))

(assert (=> d!1583801 (= (splitAtIndex!101 (list!17949 (c!837809 input!5492)) lt!2024322) lt!2025268)))

(declare-fun b!4923590 () Bool)

(declare-fun res!2101816 () Bool)

(assert (=> b!4923590 (=> (not res!2101816) (not e!3076584))))

(assert (=> b!4923590 (= res!2101816 (= (_1!33887 lt!2025268) (take!577 (list!17949 (c!837809 input!5492)) lt!2024322)))))

(declare-fun b!4923591 () Bool)

(declare-fun lt!2025267 () tuple2!61168)

(assert (=> b!4923591 (= lt!2025267 (splitAtIndex!101 (t!367249 (list!17949 (c!837809 input!5492))) (- lt!2024322 1)))))

(declare-fun e!3076583 () tuple2!61168)

(assert (=> b!4923591 (= e!3076583 (tuple2!61169 (Cons!56685 (h!63133 (list!17949 (c!837809 input!5492))) (_1!33887 lt!2025267)) (_2!33887 lt!2025267)))))

(declare-fun b!4923592 () Bool)

(assert (=> b!4923592 (= e!3076584 (= (_2!33887 lt!2025268) (drop!2224 (list!17949 (c!837809 input!5492)) lt!2024322)))))

(declare-fun b!4923593 () Bool)

(assert (=> b!4923593 (= e!3076583 (tuple2!61169 Nil!56685 (list!17949 (c!837809 input!5492))))))

(declare-fun b!4923594 () Bool)

(assert (=> b!4923594 (= e!3076582 e!3076583)))

(declare-fun c!838163 () Bool)

(assert (=> b!4923594 (= c!838163 (<= lt!2024322 0))))

(declare-fun b!4923595 () Bool)

(assert (=> b!4923595 (= e!3076582 (tuple2!61169 Nil!56685 Nil!56685))))

(assert (= (and d!1583801 c!838164) b!4923595))

(assert (= (and d!1583801 (not c!838164)) b!4923594))

(assert (= (and b!4923594 c!838163) b!4923593))

(assert (= (and b!4923594 (not c!838163)) b!4923591))

(assert (= (and d!1583801 res!2101815) b!4923590))

(assert (= (and b!4923590 res!2101816) b!4923592))

(declare-fun m!5939348 () Bool)

(assert (=> d!1583801 m!5939348))

(assert (=> b!4923590 m!5937864))

(declare-fun m!5939350 () Bool)

(assert (=> b!4923590 m!5939350))

(declare-fun m!5939352 () Bool)

(assert (=> b!4923591 m!5939352))

(assert (=> b!4923592 m!5937864))

(declare-fun m!5939354 () Bool)

(assert (=> b!4923592 m!5939354))

(assert (=> b!4923214 d!1583801))

(assert (=> b!4923214 d!1583531))

(declare-fun d!1583803 () Bool)

(declare-fun lt!2025269 () Int)

(assert (=> d!1583803 (>= lt!2025269 0)))

(declare-fun e!3076585 () Int)

(assert (=> d!1583803 (= lt!2025269 e!3076585)))

(declare-fun c!838165 () Bool)

(assert (=> d!1583803 (= c!838165 ((_ is Nil!56685) lt!2024717))))

(assert (=> d!1583803 (= (size!37476 lt!2024717) lt!2025269)))

(declare-fun b!4923596 () Bool)

(assert (=> b!4923596 (= e!3076585 0)))

(declare-fun b!4923597 () Bool)

(assert (=> b!4923597 (= e!3076585 (+ 1 (size!37476 (t!367249 lt!2024717))))))

(assert (= (and d!1583803 c!838165) b!4923596))

(assert (= (and d!1583803 (not c!838165)) b!4923597))

(declare-fun m!5939356 () Bool)

(assert (=> b!4923597 m!5939356))

(assert (=> b!4923360 d!1583803))

(declare-fun d!1583805 () Bool)

(declare-fun choose!36048 ((InoxSet Context!6030) Int) (InoxSet Context!6030))

(assert (=> d!1583805 (= (flatMap!262 z!3559 lambda!245162) (choose!36048 z!3559 lambda!245162))))

(declare-fun bs!1179308 () Bool)

(assert (= bs!1179308 d!1583805))

(declare-fun m!5939358 () Bool)

(assert (=> bs!1179308 m!5939358))

(assert (=> d!1583523 d!1583805))

(declare-fun d!1583807 () Bool)

(assert (=> d!1583807 (= (height!1982 (left!41330 (c!837809 (_2!33888 lt!2024758)))) (ite ((_ is Empty!14872) (left!41330 (c!837809 (_2!33888 lt!2024758)))) 0 (ite ((_ is Leaf!24741) (left!41330 (c!837809 (_2!33888 lt!2024758)))) 1 (cheight!15083 (left!41330 (c!837809 (_2!33888 lt!2024758)))))))))

(assert (=> b!4922969 d!1583807))

(declare-fun d!1583809 () Bool)

(assert (=> d!1583809 (= (height!1982 (right!41660 (c!837809 (_2!33888 lt!2024758)))) (ite ((_ is Empty!14872) (right!41660 (c!837809 (_2!33888 lt!2024758)))) 0 (ite ((_ is Leaf!24741) (right!41660 (c!837809 (_2!33888 lt!2024758)))) 1 (cheight!15083 (right!41660 (c!837809 (_2!33888 lt!2024758)))))))))

(assert (=> b!4922969 d!1583809))

(declare-fun d!1583811 () Bool)

(assert (=> d!1583811 (= (list!17947 (ite c!838007 input!5492 (_1!33888 lt!2025055))) (list!17949 (c!837809 (ite c!838007 input!5492 (_1!33888 lt!2025055)))))))

(declare-fun bs!1179309 () Bool)

(assert (= bs!1179309 d!1583811))

(declare-fun m!5939360 () Bool)

(assert (=> bs!1179309 m!5939360))

(assert (=> bm!343039 d!1583811))

(declare-fun bm!343094 () Bool)

(declare-fun call!343102 () Unit!147131)

(assert (=> bm!343094 (= call!343102 (lemmaIsPrefixSameLengthThenSameList!1119 (list!17947 input!5492) lt!2024893 (list!17947 input!5492)))))

(declare-fun b!4923598 () Bool)

(declare-fun c!838169 () Bool)

(declare-fun call!343100 () Bool)

(assert (=> b!4923598 (= c!838169 call!343100)))

(declare-fun lt!2025276 () Unit!147131)

(declare-fun lt!2025295 () Unit!147131)

(assert (=> b!4923598 (= lt!2025276 lt!2025295)))

(declare-fun lt!2025291 () List!56809)

(declare-fun lt!2025288 () C!26956)

(assert (=> b!4923598 (= (++!12322 (++!12322 lt!2024893 (Cons!56685 lt!2025288 Nil!56685)) lt!2025291) (list!17947 input!5492))))

(assert (=> b!4923598 (= lt!2025295 (lemmaMoveElementToOtherListKeepsConcatEq!1391 lt!2024893 lt!2025288 lt!2025291 (list!17947 input!5492)))))

(assert (=> b!4923598 (= lt!2025291 (tail!9667 call!343018))))

(assert (=> b!4923598 (= lt!2025288 (head!10520 call!343018))))

(declare-fun lt!2025280 () Unit!147131)

(declare-fun lt!2025282 () Unit!147131)

(assert (=> b!4923598 (= lt!2025280 lt!2025282)))

(assert (=> b!4923598 (isPrefix!4961 (++!12322 lt!2024893 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) lt!2024893)) Nil!56685)) (list!17947 input!5492))))

(assert (=> b!4923598 (= lt!2025282 (lemmaAddHeadSuffixToPrefixStillPrefix!773 lt!2024893 (list!17947 input!5492)))))

(declare-fun lt!2025270 () List!56809)

(assert (=> b!4923598 (= lt!2025270 (++!12322 lt!2024893 (Cons!56685 (head!10520 call!343018) Nil!56685)))))

(declare-fun lt!2025283 () Unit!147131)

(declare-fun e!3076588 () Unit!147131)

(assert (=> b!4923598 (= lt!2025283 e!3076588)))

(declare-fun c!838167 () Bool)

(assert (=> b!4923598 (= c!838167 (= (size!37476 lt!2024893) (size!37476 (list!17947 input!5492))))))

(declare-fun lt!2025290 () Unit!147131)

(declare-fun lt!2025274 () Unit!147131)

(assert (=> b!4923598 (= lt!2025290 lt!2025274)))

(assert (=> b!4923598 (<= (size!37476 lt!2024893) (size!37476 (list!17947 input!5492)))))

(assert (=> b!4923598 (= lt!2025274 (lemmaIsPrefixThenSmallerEqSize!685 lt!2024893 (list!17947 input!5492)))))

(declare-fun e!3076587 () tuple2!61168)

(declare-fun e!3076591 () tuple2!61168)

(assert (=> b!4923598 (= e!3076587 e!3076591)))

(declare-fun b!4923599 () Bool)

(declare-fun e!3076590 () tuple2!61168)

(assert (=> b!4923599 (= e!3076590 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun b!4923600 () Bool)

(declare-fun e!3076593 () tuple2!61168)

(declare-fun lt!2025292 () tuple2!61168)

(assert (=> b!4923600 (= e!3076593 lt!2025292)))

(declare-fun bm!343095 () Bool)

(declare-fun call!343103 () (InoxSet Context!6030))

(declare-fun call!343104 () C!26956)

(assert (=> bm!343095 (= call!343103 (derivationStepZipper!588 call!343016 call!343104))))

(declare-fun call!343105 () List!56809)

(declare-fun call!343098 () tuple2!61168)

(declare-fun bm!343096 () Bool)

(assert (=> bm!343096 (= call!343098 (findLongestMatchInnerZipper!58 call!343103 lt!2025270 (+ 0 1 1) call!343105 (list!17947 input!5492) lt!2024326))))

(declare-fun bm!343097 () Bool)

(assert (=> bm!343097 (= call!343104 (head!10520 call!343018))))

(declare-fun b!4923601 () Bool)

(declare-fun e!3076592 () Bool)

(declare-fun e!3076589 () Bool)

(assert (=> b!4923601 (= e!3076592 e!3076589)))

(declare-fun res!2101818 () Bool)

(assert (=> b!4923601 (=> res!2101818 e!3076589)))

(declare-fun lt!2025277 () tuple2!61168)

(assert (=> b!4923601 (= res!2101818 (isEmpty!30566 (_1!33887 lt!2025277)))))

(declare-fun bm!343098 () Bool)

(declare-fun call!343101 () Unit!147131)

(assert (=> bm!343098 (= call!343101 (lemmaIsPrefixRefl!3357 (list!17947 input!5492) (list!17947 input!5492)))))

(declare-fun b!4923602 () Bool)

(declare-fun Unit!147167 () Unit!147131)

(assert (=> b!4923602 (= e!3076588 Unit!147167)))

(declare-fun lt!2025272 () Unit!147131)

(assert (=> b!4923602 (= lt!2025272 call!343101)))

(declare-fun call!343099 () Bool)

(assert (=> b!4923602 call!343099))

(declare-fun lt!2025273 () Unit!147131)

(assert (=> b!4923602 (= lt!2025273 lt!2025272)))

(declare-fun lt!2025271 () Unit!147131)

(assert (=> b!4923602 (= lt!2025271 call!343102)))

(assert (=> b!4923602 (= (list!17947 input!5492) lt!2024893)))

(declare-fun lt!2025279 () Unit!147131)

(assert (=> b!4923602 (= lt!2025279 lt!2025271)))

(assert (=> b!4923602 false))

(declare-fun b!4923603 () Bool)

(assert (=> b!4923603 (= e!3076591 call!343098)))

(declare-fun b!4923604 () Bool)

(assert (=> b!4923604 (= e!3076591 e!3076593)))

(assert (=> b!4923604 (= lt!2025292 call!343098)))

(declare-fun c!838170 () Bool)

(assert (=> b!4923604 (= c!838170 (isEmpty!30566 (_1!33887 lt!2025292)))))

(declare-fun b!4923605 () Bool)

(declare-fun Unit!147168 () Unit!147131)

(assert (=> b!4923605 (= e!3076588 Unit!147168)))

(declare-fun b!4923606 () Bool)

(assert (=> b!4923606 (= e!3076590 e!3076587)))

(declare-fun c!838168 () Bool)

(assert (=> b!4923606 (= c!838168 (= (+ 0 1) lt!2024326))))

(declare-fun bm!343099 () Bool)

(assert (=> bm!343099 (= call!343099 (isPrefix!4961 (list!17947 input!5492) (list!17947 input!5492)))))

(declare-fun b!4923607 () Bool)

(declare-fun e!3076586 () tuple2!61168)

(assert (=> b!4923607 (= e!3076586 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun bm!343100 () Bool)

(assert (=> bm!343100 (= call!343105 (tail!9667 call!343018))))

(declare-fun d!1583813 () Bool)

(assert (=> d!1583813 e!3076592))

(declare-fun res!2101817 () Bool)

(assert (=> d!1583813 (=> (not res!2101817) (not e!3076592))))

(assert (=> d!1583813 (= res!2101817 (= (++!12322 (_1!33887 lt!2025277) (_2!33887 lt!2025277)) (list!17947 input!5492)))))

(assert (=> d!1583813 (= lt!2025277 e!3076590)))

(declare-fun c!838166 () Bool)

(assert (=> d!1583813 (= c!838166 (lostCauseZipper!691 call!343016))))

(declare-fun lt!2025278 () Unit!147131)

(declare-fun Unit!147169 () Unit!147131)

(assert (=> d!1583813 (= lt!2025278 Unit!147169)))

(assert (=> d!1583813 (= (getSuffix!2949 (list!17947 input!5492) lt!2024893) call!343018)))

(declare-fun lt!2025285 () Unit!147131)

(declare-fun lt!2025286 () Unit!147131)

(assert (=> d!1583813 (= lt!2025285 lt!2025286)))

(declare-fun lt!2025284 () List!56809)

(assert (=> d!1583813 (= call!343018 lt!2025284)))

(assert (=> d!1583813 (= lt!2025286 (lemmaSamePrefixThenSameSuffix!2365 lt!2024893 call!343018 lt!2024893 lt!2025284 (list!17947 input!5492)))))

(assert (=> d!1583813 (= lt!2025284 (getSuffix!2949 (list!17947 input!5492) lt!2024893))))

(declare-fun lt!2025275 () Unit!147131)

(declare-fun lt!2025287 () Unit!147131)

(assert (=> d!1583813 (= lt!2025275 lt!2025287)))

(assert (=> d!1583813 (isPrefix!4961 lt!2024893 (++!12322 lt!2024893 call!343018))))

(assert (=> d!1583813 (= lt!2025287 (lemmaConcatTwoListThenFirstIsPrefix!3185 lt!2024893 call!343018))))

(assert (=> d!1583813 (= (++!12322 lt!2024893 call!343018) (list!17947 input!5492))))

(assert (=> d!1583813 (= (findLongestMatchInnerZipper!58 call!343016 lt!2024893 (+ 0 1) call!343018 (list!17947 input!5492) lt!2024326) lt!2025277)))

(declare-fun bm!343093 () Bool)

(assert (=> bm!343093 (= call!343100 (nullableZipper!810 call!343016))))

(declare-fun b!4923608 () Bool)

(assert (=> b!4923608 (= e!3076593 (tuple2!61169 lt!2024893 call!343018))))

(declare-fun b!4923609 () Bool)

(assert (=> b!4923609 (= e!3076589 (>= (size!37476 (_1!33887 lt!2025277)) (size!37476 lt!2024893)))))

(declare-fun b!4923610 () Bool)

(assert (=> b!4923610 (= e!3076586 (tuple2!61169 lt!2024893 Nil!56685))))

(declare-fun b!4923611 () Bool)

(declare-fun c!838171 () Bool)

(assert (=> b!4923611 (= c!838171 call!343100)))

(declare-fun lt!2025294 () Unit!147131)

(declare-fun lt!2025289 () Unit!147131)

(assert (=> b!4923611 (= lt!2025294 lt!2025289)))

(assert (=> b!4923611 (= (list!17947 input!5492) lt!2024893)))

(assert (=> b!4923611 (= lt!2025289 call!343102)))

(declare-fun lt!2025281 () Unit!147131)

(declare-fun lt!2025293 () Unit!147131)

(assert (=> b!4923611 (= lt!2025281 lt!2025293)))

(assert (=> b!4923611 call!343099))

(assert (=> b!4923611 (= lt!2025293 call!343101)))

(assert (=> b!4923611 (= e!3076587 e!3076586)))

(assert (= (and d!1583813 c!838166) b!4923599))

(assert (= (and d!1583813 (not c!838166)) b!4923606))

(assert (= (and b!4923606 c!838168) b!4923611))

(assert (= (and b!4923606 (not c!838168)) b!4923598))

(assert (= (and b!4923611 c!838171) b!4923610))

(assert (= (and b!4923611 (not c!838171)) b!4923607))

(assert (= (and b!4923598 c!838167) b!4923602))

(assert (= (and b!4923598 (not c!838167)) b!4923605))

(assert (= (and b!4923598 c!838169) b!4923604))

(assert (= (and b!4923598 (not c!838169)) b!4923603))

(assert (= (and b!4923604 c!838170) b!4923608))

(assert (= (and b!4923604 (not c!838170)) b!4923600))

(assert (= (or b!4923604 b!4923603) bm!343100))

(assert (= (or b!4923604 b!4923603) bm!343097))

(assert (= (or b!4923604 b!4923603) bm!343095))

(assert (= (or b!4923604 b!4923603) bm!343096))

(assert (= (or b!4923611 b!4923602) bm!343099))

(assert (= (or b!4923611 b!4923602) bm!343098))

(assert (= (or b!4923611 b!4923602) bm!343094))

(assert (= (or b!4923611 b!4923598) bm!343093))

(assert (= (and d!1583813 res!2101817) b!4923601))

(assert (= (and b!4923601 (not res!2101818)) b!4923609))

(assert (=> bm!343094 m!5937560))

(assert (=> bm!343094 m!5937560))

(declare-fun m!5939362 () Bool)

(assert (=> bm!343094 m!5939362))

(declare-fun m!5939364 () Bool)

(assert (=> b!4923604 m!5939364))

(declare-fun m!5939366 () Bool)

(assert (=> bm!343093 m!5939366))

(declare-fun m!5939368 () Bool)

(assert (=> bm!343100 m!5939368))

(declare-fun m!5939370 () Bool)

(assert (=> b!4923598 m!5939370))

(declare-fun m!5939372 () Bool)

(assert (=> b!4923598 m!5939372))

(declare-fun m!5939374 () Bool)

(assert (=> b!4923598 m!5939374))

(declare-fun m!5939376 () Bool)

(assert (=> b!4923598 m!5939376))

(declare-fun m!5939378 () Bool)

(assert (=> b!4923598 m!5939378))

(assert (=> b!4923598 m!5937560))

(declare-fun m!5939380 () Bool)

(assert (=> b!4923598 m!5939380))

(declare-fun m!5939382 () Bool)

(assert (=> b!4923598 m!5939382))

(assert (=> b!4923598 m!5937560))

(assert (=> b!4923598 m!5937644))

(declare-fun m!5939384 () Bool)

(assert (=> b!4923598 m!5939384))

(assert (=> b!4923598 m!5937560))

(assert (=> b!4923598 m!5939370))

(assert (=> b!4923598 m!5937560))

(declare-fun m!5939386 () Bool)

(assert (=> b!4923598 m!5939386))

(assert (=> b!4923598 m!5939368))

(assert (=> b!4923598 m!5937560))

(declare-fun m!5939388 () Bool)

(assert (=> b!4923598 m!5939388))

(assert (=> b!4923598 m!5939376))

(declare-fun m!5939390 () Bool)

(assert (=> b!4923598 m!5939390))

(assert (=> b!4923598 m!5939374))

(assert (=> b!4923598 m!5937560))

(declare-fun m!5939392 () Bool)

(assert (=> b!4923598 m!5939392))

(declare-fun m!5939394 () Bool)

(assert (=> d!1583813 m!5939394))

(declare-fun m!5939396 () Bool)

(assert (=> d!1583813 m!5939396))

(declare-fun m!5939398 () Bool)

(assert (=> d!1583813 m!5939398))

(assert (=> d!1583813 m!5937560))

(declare-fun m!5939400 () Bool)

(assert (=> d!1583813 m!5939400))

(declare-fun m!5939402 () Bool)

(assert (=> d!1583813 m!5939402))

(assert (=> d!1583813 m!5937560))

(assert (=> d!1583813 m!5939370))

(assert (=> d!1583813 m!5939402))

(declare-fun m!5939404 () Bool)

(assert (=> d!1583813 m!5939404))

(assert (=> bm!343097 m!5939390))

(assert (=> bm!343096 m!5937560))

(declare-fun m!5939406 () Bool)

(assert (=> bm!343096 m!5939406))

(declare-fun m!5939408 () Bool)

(assert (=> b!4923609 m!5939408))

(assert (=> b!4923609 m!5939384))

(assert (=> bm!343098 m!5937560))

(assert (=> bm!343098 m!5937560))

(assert (=> bm!343098 m!5938168))

(declare-fun m!5939410 () Bool)

(assert (=> b!4923601 m!5939410))

(declare-fun m!5939412 () Bool)

(assert (=> bm!343095 m!5939412))

(assert (=> bm!343099 m!5937560))

(assert (=> bm!343099 m!5937560))

(assert (=> bm!343099 m!5938174))

(assert (=> bm!343009 d!1583813))

(declare-fun d!1583815 () Bool)

(assert (=> d!1583815 (= lt!2024324 lt!2024720)))

(assert (=> d!1583815 true))

(declare-fun _$63!1177 () Unit!147131)

(assert (=> d!1583815 (= (choose!36035 Nil!56685 lt!2024324 Nil!56685 lt!2024720 (list!17947 input!5492)) _$63!1177)))

(assert (=> d!1583467 d!1583815))

(declare-fun d!1583817 () Bool)

(declare-fun e!3076594 () Bool)

(assert (=> d!1583817 e!3076594))

(declare-fun res!2101821 () Bool)

(assert (=> d!1583817 (=> res!2101821 e!3076594)))

(declare-fun lt!2025296 () Bool)

(assert (=> d!1583817 (= res!2101821 (not lt!2025296))))

(declare-fun e!3076595 () Bool)

(assert (=> d!1583817 (= lt!2025296 e!3076595)))

(declare-fun res!2101820 () Bool)

(assert (=> d!1583817 (=> res!2101820 e!3076595)))

(assert (=> d!1583817 (= res!2101820 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1583817 (= (isPrefix!4961 Nil!56685 (list!17947 input!5492)) lt!2025296)))

(declare-fun b!4923614 () Bool)

(declare-fun e!3076596 () Bool)

(assert (=> b!4923614 (= e!3076596 (isPrefix!4961 (tail!9667 Nil!56685) (tail!9667 (list!17947 input!5492))))))

(declare-fun b!4923613 () Bool)

(declare-fun res!2101822 () Bool)

(assert (=> b!4923613 (=> (not res!2101822) (not e!3076596))))

(assert (=> b!4923613 (= res!2101822 (= (head!10520 Nil!56685) (head!10520 (list!17947 input!5492))))))

(declare-fun b!4923612 () Bool)

(assert (=> b!4923612 (= e!3076595 e!3076596)))

(declare-fun res!2101819 () Bool)

(assert (=> b!4923612 (=> (not res!2101819) (not e!3076596))))

(assert (=> b!4923612 (= res!2101819 (not ((_ is Nil!56685) (list!17947 input!5492))))))

(declare-fun b!4923615 () Bool)

(assert (=> b!4923615 (= e!3076594 (>= (size!37476 (list!17947 input!5492)) (size!37476 Nil!56685)))))

(assert (= (and d!1583817 (not res!2101820)) b!4923612))

(assert (= (and b!4923612 res!2101819) b!4923613))

(assert (= (and b!4923613 res!2101822) b!4923614))

(assert (= (and d!1583817 (not res!2101821)) b!4923615))

(assert (=> b!4923614 m!5938074))

(assert (=> b!4923614 m!5937560))

(assert (=> b!4923614 m!5938178))

(assert (=> b!4923614 m!5938074))

(assert (=> b!4923614 m!5938178))

(declare-fun m!5939414 () Bool)

(assert (=> b!4923614 m!5939414))

(assert (=> b!4923613 m!5938080))

(assert (=> b!4923613 m!5937560))

(declare-fun m!5939416 () Bool)

(assert (=> b!4923613 m!5939416))

(assert (=> b!4923615 m!5937560))

(assert (=> b!4923615 m!5937644))

(assert (=> b!4923615 m!5937598))

(assert (=> d!1583467 d!1583817))

(declare-fun b!4923616 () Bool)

(declare-fun res!2101826 () Bool)

(declare-fun e!3076597 () Bool)

(assert (=> b!4923616 (=> (not res!2101826) (not e!3076597))))

(assert (=> b!4923616 (= res!2101826 (isBalanced!4085 (right!41660 (_1!33890 lt!2025152))))))

(declare-fun b!4923617 () Bool)

(assert (=> b!4923617 (= e!3076597 (not (isEmpty!30568 (right!41660 (_1!33890 lt!2025152)))))))

(declare-fun d!1583819 () Bool)

(declare-fun res!2101825 () Bool)

(declare-fun e!3076598 () Bool)

(assert (=> d!1583819 (=> res!2101825 e!3076598)))

(assert (=> d!1583819 (= res!2101825 (not ((_ is Node!14872) (_1!33890 lt!2025152))))))

(assert (=> d!1583819 (= (isBalanced!4085 (_1!33890 lt!2025152)) e!3076598)))

(declare-fun b!4923618 () Bool)

(declare-fun res!2101827 () Bool)

(assert (=> b!4923618 (=> (not res!2101827) (not e!3076597))))

(assert (=> b!4923618 (= res!2101827 (<= (- (height!1982 (left!41330 (_1!33890 lt!2025152))) (height!1982 (right!41660 (_1!33890 lt!2025152)))) 1))))

(declare-fun b!4923619 () Bool)

(declare-fun res!2101828 () Bool)

(assert (=> b!4923619 (=> (not res!2101828) (not e!3076597))))

(assert (=> b!4923619 (= res!2101828 (not (isEmpty!30568 (left!41330 (_1!33890 lt!2025152)))))))

(declare-fun b!4923620 () Bool)

(declare-fun res!2101824 () Bool)

(assert (=> b!4923620 (=> (not res!2101824) (not e!3076597))))

(assert (=> b!4923620 (= res!2101824 (isBalanced!4085 (left!41330 (_1!33890 lt!2025152))))))

(declare-fun b!4923621 () Bool)

(assert (=> b!4923621 (= e!3076598 e!3076597)))

(declare-fun res!2101823 () Bool)

(assert (=> b!4923621 (=> (not res!2101823) (not e!3076597))))

(assert (=> b!4923621 (= res!2101823 (<= (- 1) (- (height!1982 (left!41330 (_1!33890 lt!2025152))) (height!1982 (right!41660 (_1!33890 lt!2025152))))))))

(assert (= (and d!1583819 (not res!2101825)) b!4923621))

(assert (= (and b!4923621 res!2101823) b!4923618))

(assert (= (and b!4923618 res!2101827) b!4923620))

(assert (= (and b!4923620 res!2101824) b!4923616))

(assert (= (and b!4923616 res!2101826) b!4923619))

(assert (= (and b!4923619 res!2101828) b!4923617))

(declare-fun m!5939418 () Bool)

(assert (=> b!4923617 m!5939418))

(declare-fun m!5939420 () Bool)

(assert (=> b!4923621 m!5939420))

(declare-fun m!5939422 () Bool)

(assert (=> b!4923621 m!5939422))

(assert (=> b!4923618 m!5939420))

(assert (=> b!4923618 m!5939422))

(declare-fun m!5939424 () Bool)

(assert (=> b!4923619 m!5939424))

(declare-fun m!5939426 () Bool)

(assert (=> b!4923620 m!5939426))

(declare-fun m!5939428 () Bool)

(assert (=> b!4923616 m!5939428))

(assert (=> d!1583573 d!1583819))

(assert (=> d!1583573 d!1583349))

(declare-fun d!1583821 () Bool)

(declare-fun c!838172 () Bool)

(assert (=> d!1583821 (= c!838172 ((_ is Nil!56685) lt!2025179))))

(declare-fun e!3076599 () (InoxSet C!26956))

(assert (=> d!1583821 (= (content!10066 lt!2025179) e!3076599)))

(declare-fun b!4923622 () Bool)

(assert (=> b!4923622 (= e!3076599 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923623 () Bool)

(assert (=> b!4923623 (= e!3076599 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025179) true) (content!10066 (t!367249 lt!2025179))))))

(assert (= (and d!1583821 c!838172) b!4923622))

(assert (= (and d!1583821 (not c!838172)) b!4923623))

(declare-fun m!5939430 () Bool)

(assert (=> b!4923623 m!5939430))

(declare-fun m!5939432 () Bool)

(assert (=> b!4923623 m!5939432))

(assert (=> d!1583641 d!1583821))

(assert (=> d!1583641 d!1583767))

(declare-fun d!1583823 () Bool)

(declare-fun c!838173 () Bool)

(assert (=> d!1583823 (= c!838173 ((_ is Nil!56685) (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))

(declare-fun e!3076600 () (InoxSet C!26956))

(assert (=> d!1583823 (= (content!10066 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) e!3076600)))

(declare-fun b!4923624 () Bool)

(assert (=> b!4923624 (= e!3076600 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923625 () Bool)

(assert (=> b!4923625 (= e!3076600 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) true) (content!10066 (t!367249 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)))))))

(assert (= (and d!1583823 c!838173) b!4923624))

(assert (= (and d!1583823 (not c!838173)) b!4923625))

(declare-fun m!5939434 () Bool)

(assert (=> b!4923625 m!5939434))

(declare-fun m!5939436 () Bool)

(assert (=> b!4923625 m!5939436))

(assert (=> d!1583641 d!1583823))

(declare-fun d!1583825 () Bool)

(declare-fun lt!2025297 () Int)

(assert (=> d!1583825 (>= lt!2025297 0)))

(declare-fun e!3076601 () Int)

(assert (=> d!1583825 (= lt!2025297 e!3076601)))

(declare-fun c!838174 () Bool)

(assert (=> d!1583825 (= c!838174 ((_ is Nil!56685) lt!2024995))))

(assert (=> d!1583825 (= (size!37476 lt!2024995) lt!2025297)))

(declare-fun b!4923626 () Bool)

(assert (=> b!4923626 (= e!3076601 0)))

(declare-fun b!4923627 () Bool)

(assert (=> b!4923627 (= e!3076601 (+ 1 (size!37476 (t!367249 lt!2024995))))))

(assert (= (and d!1583825 c!838174) b!4923626))

(assert (= (and d!1583825 (not c!838174)) b!4923627))

(declare-fun m!5939438 () Bool)

(assert (=> b!4923627 m!5939438))

(assert (=> b!4922922 d!1583825))

(assert (=> b!4922922 d!1583487))

(declare-fun d!1583827 () Bool)

(declare-fun lt!2025298 () Int)

(assert (=> d!1583827 (>= lt!2025298 0)))

(declare-fun e!3076602 () Int)

(assert (=> d!1583827 (= lt!2025298 e!3076602)))

(declare-fun c!838175 () Bool)

(assert (=> d!1583827 (= c!838175 ((_ is Nil!56685) (Cons!56685 call!342985 Nil!56685)))))

(assert (=> d!1583827 (= (size!37476 (Cons!56685 call!342985 Nil!56685)) lt!2025298)))

(declare-fun b!4923628 () Bool)

(assert (=> b!4923628 (= e!3076602 0)))

(declare-fun b!4923629 () Bool)

(assert (=> b!4923629 (= e!3076602 (+ 1 (size!37476 (t!367249 (Cons!56685 call!342985 Nil!56685)))))))

(assert (= (and d!1583827 c!838175) b!4923628))

(assert (= (and d!1583827 (not c!838175)) b!4923629))

(declare-fun m!5939440 () Bool)

(assert (=> b!4923629 m!5939440))

(assert (=> b!4922922 d!1583827))

(declare-fun bm!343102 () Bool)

(declare-fun call!343110 () Unit!147131)

(assert (=> bm!343102 (= call!343110 (lemmaIsPrefixSameLengthThenSameList!1119 lt!2024324 lt!2025228 lt!2024324))))

(declare-fun b!4923630 () Bool)

(declare-fun c!838179 () Bool)

(declare-fun call!343108 () Bool)

(assert (=> b!4923630 (= c!838179 call!343108)))

(declare-fun lt!2025305 () Unit!147131)

(declare-fun lt!2025324 () Unit!147131)

(assert (=> b!4923630 (= lt!2025305 lt!2025324)))

(declare-fun lt!2025317 () C!26956)

(declare-fun lt!2025320 () List!56809)

(assert (=> b!4923630 (= (++!12322 (++!12322 lt!2025228 (Cons!56685 lt!2025317 Nil!56685)) lt!2025320) lt!2024324)))

(assert (=> b!4923630 (= lt!2025324 (lemmaMoveElementToOtherListKeepsConcatEq!1391 lt!2025228 lt!2025317 lt!2025320 lt!2024324))))

(assert (=> b!4923630 (= lt!2025320 (tail!9667 call!343096))))

(assert (=> b!4923630 (= lt!2025317 (head!10520 call!343096))))

(declare-fun lt!2025309 () Unit!147131)

(declare-fun lt!2025311 () Unit!147131)

(assert (=> b!4923630 (= lt!2025309 lt!2025311)))

(assert (=> b!4923630 (isPrefix!4961 (++!12322 lt!2025228 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2025228)) Nil!56685)) lt!2024324)))

(assert (=> b!4923630 (= lt!2025311 (lemmaAddHeadSuffixToPrefixStillPrefix!773 lt!2025228 lt!2024324))))

(declare-fun lt!2025299 () List!56809)

(assert (=> b!4923630 (= lt!2025299 (++!12322 lt!2025228 (Cons!56685 (head!10520 call!343096) Nil!56685)))))

(declare-fun lt!2025312 () Unit!147131)

(declare-fun e!3076605 () Unit!147131)

(assert (=> b!4923630 (= lt!2025312 e!3076605)))

(declare-fun c!838177 () Bool)

(assert (=> b!4923630 (= c!838177 (= (size!37476 lt!2025228) (size!37476 lt!2024324)))))

(declare-fun lt!2025319 () Unit!147131)

(declare-fun lt!2025303 () Unit!147131)

(assert (=> b!4923630 (= lt!2025319 lt!2025303)))

(assert (=> b!4923630 (<= (size!37476 lt!2025228) (size!37476 lt!2024324))))

(assert (=> b!4923630 (= lt!2025303 (lemmaIsPrefixThenSmallerEqSize!685 lt!2025228 lt!2024324))))

(declare-fun e!3076604 () tuple2!61168)

(declare-fun e!3076608 () tuple2!61168)

(assert (=> b!4923630 (= e!3076604 e!3076608)))

(declare-fun b!4923631 () Bool)

(declare-fun e!3076607 () tuple2!61168)

(assert (=> b!4923631 (= e!3076607 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun b!4923632 () Bool)

(declare-fun e!3076610 () tuple2!61168)

(declare-fun lt!2025321 () tuple2!61168)

(assert (=> b!4923632 (= e!3076610 lt!2025321)))

(declare-fun bm!343103 () Bool)

(declare-fun call!343111 () (InoxSet Context!6030))

(declare-fun call!343112 () C!26956)

(assert (=> bm!343103 (= call!343111 (derivationStepZipper!588 call!343094 call!343112))))

(declare-fun call!343113 () List!56809)

(declare-fun bm!343104 () Bool)

(declare-fun call!343106 () tuple2!61168)

(assert (=> bm!343104 (= call!343106 (findLongestMatchInnerZipper!58 call!343111 lt!2025299 (+ 0 1 1 1) call!343113 lt!2024324 lt!2024326))))

(declare-fun bm!343105 () Bool)

(assert (=> bm!343105 (= call!343112 (head!10520 call!343096))))

(declare-fun b!4923633 () Bool)

(declare-fun e!3076609 () Bool)

(declare-fun e!3076606 () Bool)

(assert (=> b!4923633 (= e!3076609 e!3076606)))

(declare-fun res!2101830 () Bool)

(assert (=> b!4923633 (=> res!2101830 e!3076606)))

(declare-fun lt!2025306 () tuple2!61168)

(assert (=> b!4923633 (= res!2101830 (isEmpty!30566 (_1!33887 lt!2025306)))))

(declare-fun bm!343106 () Bool)

(declare-fun call!343109 () Unit!147131)

(assert (=> bm!343106 (= call!343109 (lemmaIsPrefixRefl!3357 lt!2024324 lt!2024324))))

(declare-fun b!4923634 () Bool)

(declare-fun Unit!147170 () Unit!147131)

(assert (=> b!4923634 (= e!3076605 Unit!147170)))

(declare-fun lt!2025301 () Unit!147131)

(assert (=> b!4923634 (= lt!2025301 call!343109)))

(declare-fun call!343107 () Bool)

(assert (=> b!4923634 call!343107))

(declare-fun lt!2025302 () Unit!147131)

(assert (=> b!4923634 (= lt!2025302 lt!2025301)))

(declare-fun lt!2025300 () Unit!147131)

(assert (=> b!4923634 (= lt!2025300 call!343110)))

(assert (=> b!4923634 (= lt!2024324 lt!2025228)))

(declare-fun lt!2025308 () Unit!147131)

(assert (=> b!4923634 (= lt!2025308 lt!2025300)))

(assert (=> b!4923634 false))

(declare-fun b!4923635 () Bool)

(assert (=> b!4923635 (= e!3076608 call!343106)))

(declare-fun b!4923636 () Bool)

(assert (=> b!4923636 (= e!3076608 e!3076610)))

(assert (=> b!4923636 (= lt!2025321 call!343106)))

(declare-fun c!838180 () Bool)

(assert (=> b!4923636 (= c!838180 (isEmpty!30566 (_1!33887 lt!2025321)))))

(declare-fun b!4923637 () Bool)

(declare-fun Unit!147171 () Unit!147131)

(assert (=> b!4923637 (= e!3076605 Unit!147171)))

(declare-fun b!4923638 () Bool)

(assert (=> b!4923638 (= e!3076607 e!3076604)))

(declare-fun c!838178 () Bool)

(assert (=> b!4923638 (= c!838178 (= (+ 0 1 1) lt!2024326))))

(declare-fun bm!343107 () Bool)

(assert (=> bm!343107 (= call!343107 (isPrefix!4961 lt!2024324 lt!2024324))))

(declare-fun b!4923639 () Bool)

(declare-fun e!3076603 () tuple2!61168)

(assert (=> b!4923639 (= e!3076603 (tuple2!61169 Nil!56685 lt!2024324))))

(declare-fun bm!343108 () Bool)

(assert (=> bm!343108 (= call!343113 (tail!9667 call!343096))))

(declare-fun d!1583829 () Bool)

(assert (=> d!1583829 e!3076609))

(declare-fun res!2101829 () Bool)

(assert (=> d!1583829 (=> (not res!2101829) (not e!3076609))))

(assert (=> d!1583829 (= res!2101829 (= (++!12322 (_1!33887 lt!2025306) (_2!33887 lt!2025306)) lt!2024324))))

(assert (=> d!1583829 (= lt!2025306 e!3076607)))

(declare-fun c!838176 () Bool)

(assert (=> d!1583829 (= c!838176 (lostCauseZipper!691 call!343094))))

(declare-fun lt!2025307 () Unit!147131)

(declare-fun Unit!147172 () Unit!147131)

(assert (=> d!1583829 (= lt!2025307 Unit!147172)))

(assert (=> d!1583829 (= (getSuffix!2949 lt!2024324 lt!2025228) call!343096)))

(declare-fun lt!2025314 () Unit!147131)

(declare-fun lt!2025315 () Unit!147131)

(assert (=> d!1583829 (= lt!2025314 lt!2025315)))

(declare-fun lt!2025313 () List!56809)

(assert (=> d!1583829 (= call!343096 lt!2025313)))

(assert (=> d!1583829 (= lt!2025315 (lemmaSamePrefixThenSameSuffix!2365 lt!2025228 call!343096 lt!2025228 lt!2025313 lt!2024324))))

(assert (=> d!1583829 (= lt!2025313 (getSuffix!2949 lt!2024324 lt!2025228))))

(declare-fun lt!2025304 () Unit!147131)

(declare-fun lt!2025316 () Unit!147131)

(assert (=> d!1583829 (= lt!2025304 lt!2025316)))

(assert (=> d!1583829 (isPrefix!4961 lt!2025228 (++!12322 lt!2025228 call!343096))))

(assert (=> d!1583829 (= lt!2025316 (lemmaConcatTwoListThenFirstIsPrefix!3185 lt!2025228 call!343096))))

(assert (=> d!1583829 (= (++!12322 lt!2025228 call!343096) lt!2024324)))

(assert (=> d!1583829 (= (findLongestMatchInnerZipper!58 call!343094 lt!2025228 (+ 0 1 1) call!343096 lt!2024324 lt!2024326) lt!2025306)))

(declare-fun bm!343101 () Bool)

(assert (=> bm!343101 (= call!343108 (nullableZipper!810 call!343094))))

(declare-fun b!4923640 () Bool)

(assert (=> b!4923640 (= e!3076610 (tuple2!61169 lt!2025228 call!343096))))

(declare-fun b!4923641 () Bool)

(assert (=> b!4923641 (= e!3076606 (>= (size!37476 (_1!33887 lt!2025306)) (size!37476 lt!2025228)))))

(declare-fun b!4923642 () Bool)

(assert (=> b!4923642 (= e!3076603 (tuple2!61169 lt!2025228 Nil!56685))))

(declare-fun b!4923643 () Bool)

(declare-fun c!838181 () Bool)

(assert (=> b!4923643 (= c!838181 call!343108)))

(declare-fun lt!2025323 () Unit!147131)

(declare-fun lt!2025318 () Unit!147131)

(assert (=> b!4923643 (= lt!2025323 lt!2025318)))

(assert (=> b!4923643 (= lt!2024324 lt!2025228)))

(assert (=> b!4923643 (= lt!2025318 call!343110)))

(declare-fun lt!2025310 () Unit!147131)

(declare-fun lt!2025322 () Unit!147131)

(assert (=> b!4923643 (= lt!2025310 lt!2025322)))

(assert (=> b!4923643 call!343107))

(assert (=> b!4923643 (= lt!2025322 call!343109)))

(assert (=> b!4923643 (= e!3076604 e!3076603)))

(assert (= (and d!1583829 c!838176) b!4923631))

(assert (= (and d!1583829 (not c!838176)) b!4923638))

(assert (= (and b!4923638 c!838178) b!4923643))

(assert (= (and b!4923638 (not c!838178)) b!4923630))

(assert (= (and b!4923643 c!838181) b!4923642))

(assert (= (and b!4923643 (not c!838181)) b!4923639))

(assert (= (and b!4923630 c!838177) b!4923634))

(assert (= (and b!4923630 (not c!838177)) b!4923637))

(assert (= (and b!4923630 c!838179) b!4923636))

(assert (= (and b!4923630 (not c!838179)) b!4923635))

(assert (= (and b!4923636 c!838180) b!4923640))

(assert (= (and b!4923636 (not c!838180)) b!4923632))

(assert (= (or b!4923636 b!4923635) bm!343108))

(assert (= (or b!4923636 b!4923635) bm!343105))

(assert (= (or b!4923636 b!4923635) bm!343103))

(assert (= (or b!4923636 b!4923635) bm!343104))

(assert (= (or b!4923643 b!4923634) bm!343107))

(assert (= (or b!4923643 b!4923634) bm!343106))

(assert (= (or b!4923643 b!4923634) bm!343102))

(assert (= (or b!4923643 b!4923630) bm!343101))

(assert (= (and d!1583829 res!2101829) b!4923633))

(assert (= (and b!4923633 (not res!2101830)) b!4923641))

(declare-fun m!5939442 () Bool)

(assert (=> bm!343102 m!5939442))

(declare-fun m!5939444 () Bool)

(assert (=> b!4923636 m!5939444))

(declare-fun m!5939446 () Bool)

(assert (=> bm!343101 m!5939446))

(declare-fun m!5939448 () Bool)

(assert (=> bm!343108 m!5939448))

(declare-fun m!5939450 () Bool)

(assert (=> b!4923630 m!5939450))

(declare-fun m!5939452 () Bool)

(assert (=> b!4923630 m!5939452))

(declare-fun m!5939454 () Bool)

(assert (=> b!4923630 m!5939454))

(declare-fun m!5939456 () Bool)

(assert (=> b!4923630 m!5939456))

(declare-fun m!5939458 () Bool)

(assert (=> b!4923630 m!5939458))

(declare-fun m!5939460 () Bool)

(assert (=> b!4923630 m!5939460))

(declare-fun m!5939462 () Bool)

(assert (=> b!4923630 m!5939462))

(assert (=> b!4923630 m!5937596))

(declare-fun m!5939464 () Bool)

(assert (=> b!4923630 m!5939464))

(assert (=> b!4923630 m!5939450))

(declare-fun m!5939466 () Bool)

(assert (=> b!4923630 m!5939466))

(assert (=> b!4923630 m!5939448))

(declare-fun m!5939468 () Bool)

(assert (=> b!4923630 m!5939468))

(assert (=> b!4923630 m!5939456))

(declare-fun m!5939470 () Bool)

(assert (=> b!4923630 m!5939470))

(assert (=> b!4923630 m!5939454))

(declare-fun m!5939472 () Bool)

(assert (=> b!4923630 m!5939472))

(declare-fun m!5939474 () Bool)

(assert (=> d!1583829 m!5939474))

(declare-fun m!5939476 () Bool)

(assert (=> d!1583829 m!5939476))

(declare-fun m!5939478 () Bool)

(assert (=> d!1583829 m!5939478))

(declare-fun m!5939480 () Bool)

(assert (=> d!1583829 m!5939480))

(declare-fun m!5939482 () Bool)

(assert (=> d!1583829 m!5939482))

(assert (=> d!1583829 m!5939450))

(assert (=> d!1583829 m!5939482))

(declare-fun m!5939484 () Bool)

(assert (=> d!1583829 m!5939484))

(assert (=> bm!343105 m!5939470))

(declare-fun m!5939486 () Bool)

(assert (=> bm!343104 m!5939486))

(declare-fun m!5939488 () Bool)

(assert (=> b!4923641 m!5939488))

(assert (=> b!4923641 m!5939464))

(assert (=> bm!343106 m!5937624))

(declare-fun m!5939490 () Bool)

(assert (=> b!4923633 m!5939490))

(declare-fun m!5939492 () Bool)

(assert (=> bm!343103 m!5939492))

(assert (=> bm!343107 m!5937630))

(assert (=> bm!343087 d!1583829))

(declare-fun d!1583831 () Bool)

(declare-fun lt!2025325 () Bool)

(assert (=> d!1583831 (= lt!2025325 (isEmpty!30566 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024758))))))))

(assert (=> d!1583831 (= lt!2025325 (= (size!37478 (left!41330 (c!837809 (_1!33888 lt!2024758)))) 0))))

(assert (=> d!1583831 (= (isEmpty!30568 (left!41330 (c!837809 (_1!33888 lt!2024758)))) lt!2025325)))

(declare-fun bs!1179310 () Bool)

(assert (= bs!1179310 d!1583831))

(declare-fun m!5939494 () Bool)

(assert (=> bs!1179310 m!5939494))

(assert (=> bs!1179310 m!5939494))

(declare-fun m!5939496 () Bool)

(assert (=> bs!1179310 m!5939496))

(declare-fun m!5939498 () Bool)

(assert (=> bs!1179310 m!5939498))

(assert (=> b!4923063 d!1583831))

(declare-fun d!1583833 () Bool)

(declare-fun res!2101831 () Bool)

(declare-fun e!3076611 () Bool)

(assert (=> d!1583833 (=> res!2101831 e!3076611)))

(assert (=> d!1583833 (= res!2101831 ((_ is Nil!56686) (t!367250 (exprs!3515 setElem!27520))))))

(assert (=> d!1583833 (= (forall!13131 (t!367250 (exprs!3515 setElem!27520)) lambda!245124) e!3076611)))

(declare-fun b!4923644 () Bool)

(declare-fun e!3076612 () Bool)

(assert (=> b!4923644 (= e!3076611 e!3076612)))

(declare-fun res!2101832 () Bool)

(assert (=> b!4923644 (=> (not res!2101832) (not e!3076612))))

(assert (=> b!4923644 (= res!2101832 (dynLambda!23005 lambda!245124 (h!63134 (t!367250 (exprs!3515 setElem!27520)))))))

(declare-fun b!4923645 () Bool)

(assert (=> b!4923645 (= e!3076612 (forall!13131 (t!367250 (t!367250 (exprs!3515 setElem!27520))) lambda!245124))))

(assert (= (and d!1583833 (not res!2101831)) b!4923644))

(assert (= (and b!4923644 res!2101832) b!4923645))

(declare-fun b_lambda!196273 () Bool)

(assert (=> (not b_lambda!196273) (not b!4923644)))

(declare-fun m!5939500 () Bool)

(assert (=> b!4923644 m!5939500))

(declare-fun m!5939502 () Bool)

(assert (=> b!4923645 m!5939502))

(assert (=> b!4922915 d!1583833))

(declare-fun d!1583835 () Bool)

(declare-fun c!838182 () Bool)

(assert (=> d!1583835 (= c!838182 ((_ is Node!14872) (left!41330 (left!41330 (c!837809 input!5492)))))))

(declare-fun e!3076613 () Bool)

(assert (=> d!1583835 (= (inv!73464 (left!41330 (left!41330 (c!837809 input!5492)))) e!3076613)))

(declare-fun b!4923646 () Bool)

(assert (=> b!4923646 (= e!3076613 (inv!73468 (left!41330 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923647 () Bool)

(declare-fun e!3076614 () Bool)

(assert (=> b!4923647 (= e!3076613 e!3076614)))

(declare-fun res!2101833 () Bool)

(assert (=> b!4923647 (= res!2101833 (not ((_ is Leaf!24741) (left!41330 (left!41330 (c!837809 input!5492))))))))

(assert (=> b!4923647 (=> res!2101833 e!3076614)))

(declare-fun b!4923648 () Bool)

(assert (=> b!4923648 (= e!3076614 (inv!73469 (left!41330 (left!41330 (c!837809 input!5492)))))))

(assert (= (and d!1583835 c!838182) b!4923646))

(assert (= (and d!1583835 (not c!838182)) b!4923647))

(assert (= (and b!4923647 (not res!2101833)) b!4923648))

(declare-fun m!5939504 () Bool)

(assert (=> b!4923646 m!5939504))

(declare-fun m!5939506 () Bool)

(assert (=> b!4923648 m!5939506))

(assert (=> b!4923474 d!1583835))

(declare-fun d!1583837 () Bool)

(declare-fun c!838183 () Bool)

(assert (=> d!1583837 (= c!838183 ((_ is Node!14872) (right!41660 (left!41330 (c!837809 input!5492)))))))

(declare-fun e!3076615 () Bool)

(assert (=> d!1583837 (= (inv!73464 (right!41660 (left!41330 (c!837809 input!5492)))) e!3076615)))

(declare-fun b!4923649 () Bool)

(assert (=> b!4923649 (= e!3076615 (inv!73468 (right!41660 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923650 () Bool)

(declare-fun e!3076616 () Bool)

(assert (=> b!4923650 (= e!3076615 e!3076616)))

(declare-fun res!2101834 () Bool)

(assert (=> b!4923650 (= res!2101834 (not ((_ is Leaf!24741) (right!41660 (left!41330 (c!837809 input!5492))))))))

(assert (=> b!4923650 (=> res!2101834 e!3076616)))

(declare-fun b!4923651 () Bool)

(assert (=> b!4923651 (= e!3076616 (inv!73469 (right!41660 (left!41330 (c!837809 input!5492)))))))

(assert (= (and d!1583837 c!838183) b!4923649))

(assert (= (and d!1583837 (not c!838183)) b!4923650))

(assert (= (and b!4923650 (not res!2101834)) b!4923651))

(declare-fun m!5939508 () Bool)

(assert (=> b!4923649 m!5939508))

(declare-fun m!5939510 () Bool)

(assert (=> b!4923651 m!5939510))

(assert (=> b!4923474 d!1583837))

(assert (=> d!1583449 d!1583469))

(declare-fun d!1583839 () Bool)

(assert (=> d!1583839 (isPrefix!4961 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750))))

(assert (=> d!1583839 true))

(declare-fun _$45!2214 () Unit!147131)

(assert (=> d!1583839 (= (choose!36036 (ite c!837884 lt!2024726 lt!2024713) (ite c!837884 lt!2024744 lt!2024750)) _$45!2214)))

(declare-fun bs!1179311 () Bool)

(assert (= bs!1179311 d!1583839))

(assert (=> bs!1179311 m!5937850))

(assert (=> d!1583449 d!1583839))

(assert (=> d!1583607 d!1583487))

(assert (=> d!1583607 d!1583621))

(declare-fun d!1583841 () Bool)

(assert (=> d!1583841 (<= (size!37476 Nil!56685) (size!37476 lt!2024324))))

(assert (=> d!1583841 true))

(declare-fun _$64!606 () Unit!147131)

(assert (=> d!1583841 (= (choose!36040 Nil!56685 lt!2024324) _$64!606)))

(declare-fun bs!1179312 () Bool)

(assert (= bs!1179312 d!1583841))

(assert (=> bs!1179312 m!5937598))

(assert (=> bs!1179312 m!5937596))

(assert (=> d!1583607 d!1583841))

(assert (=> d!1583607 d!1583751))

(declare-fun d!1583843 () Bool)

(declare-fun e!3076619 () Bool)

(assert (=> d!1583843 e!3076619))

(declare-fun res!2101835 () Bool)

(assert (=> d!1583843 (=> (not res!2101835) (not e!3076619))))

(declare-fun lt!2025327 () tuple2!61168)

(assert (=> d!1583843 (= res!2101835 (= (++!12322 (_1!33887 lt!2025327) (_2!33887 lt!2025327)) (t!367249 (list!17947 input!5492))))))

(declare-fun e!3076617 () tuple2!61168)

(assert (=> d!1583843 (= lt!2025327 e!3076617)))

(declare-fun c!838185 () Bool)

(assert (=> d!1583843 (= c!838185 ((_ is Nil!56685) (t!367249 (list!17947 input!5492))))))

(assert (=> d!1583843 (= (splitAtIndex!101 (t!367249 (list!17947 input!5492)) (- lt!2024322 1)) lt!2025327)))

(declare-fun b!4923652 () Bool)

(declare-fun res!2101836 () Bool)

(assert (=> b!4923652 (=> (not res!2101836) (not e!3076619))))

(assert (=> b!4923652 (= res!2101836 (= (_1!33887 lt!2025327) (take!577 (t!367249 (list!17947 input!5492)) (- lt!2024322 1))))))

(declare-fun b!4923653 () Bool)

(declare-fun lt!2025326 () tuple2!61168)

(assert (=> b!4923653 (= lt!2025326 (splitAtIndex!101 (t!367249 (t!367249 (list!17947 input!5492))) (- (- lt!2024322 1) 1)))))

(declare-fun e!3076618 () tuple2!61168)

(assert (=> b!4923653 (= e!3076618 (tuple2!61169 (Cons!56685 (h!63133 (t!367249 (list!17947 input!5492))) (_1!33887 lt!2025326)) (_2!33887 lt!2025326)))))

(declare-fun b!4923654 () Bool)

(assert (=> b!4923654 (= e!3076619 (= (_2!33887 lt!2025327) (drop!2224 (t!367249 (list!17947 input!5492)) (- lt!2024322 1))))))

(declare-fun b!4923655 () Bool)

(assert (=> b!4923655 (= e!3076618 (tuple2!61169 Nil!56685 (t!367249 (list!17947 input!5492))))))

(declare-fun b!4923656 () Bool)

(assert (=> b!4923656 (= e!3076617 e!3076618)))

(declare-fun c!838184 () Bool)

(assert (=> b!4923656 (= c!838184 (<= (- lt!2024322 1) 0))))

(declare-fun b!4923657 () Bool)

(assert (=> b!4923657 (= e!3076617 (tuple2!61169 Nil!56685 Nil!56685))))

(assert (= (and d!1583843 c!838185) b!4923657))

(assert (= (and d!1583843 (not c!838185)) b!4923656))

(assert (= (and b!4923656 c!838184) b!4923655))

(assert (= (and b!4923656 (not c!838184)) b!4923653))

(assert (= (and d!1583843 res!2101835) b!4923652))

(assert (= (and b!4923652 res!2101836) b!4923654))

(declare-fun m!5939512 () Bool)

(assert (=> d!1583843 m!5939512))

(declare-fun m!5939514 () Bool)

(assert (=> b!4923652 m!5939514))

(declare-fun m!5939516 () Bool)

(assert (=> b!4923653 m!5939516))

(assert (=> b!4923654 m!5939218))

(assert (=> b!4923417 d!1583843))

(declare-fun d!1583845 () Bool)

(declare-fun lt!2025328 () Int)

(assert (=> d!1583845 (>= lt!2025328 0)))

(declare-fun e!3076620 () Int)

(assert (=> d!1583845 (= lt!2025328 e!3076620)))

(declare-fun c!838186 () Bool)

(assert (=> d!1583845 (= c!838186 ((_ is Nil!56685) lt!2025175))))

(assert (=> d!1583845 (= (size!37476 lt!2025175) lt!2025328)))

(declare-fun b!4923658 () Bool)

(assert (=> b!4923658 (= e!3076620 0)))

(declare-fun b!4923659 () Bool)

(assert (=> b!4923659 (= e!3076620 (+ 1 (size!37476 (t!367249 lt!2025175))))))

(assert (= (and d!1583845 c!838186) b!4923658))

(assert (= (and d!1583845 (not c!838186)) b!4923659))

(declare-fun m!5939518 () Bool)

(assert (=> b!4923659 m!5939518))

(assert (=> b!4923268 d!1583845))

(declare-fun d!1583847 () Bool)

(declare-fun lt!2025329 () Int)

(assert (=> d!1583847 (>= lt!2025329 0)))

(declare-fun e!3076621 () Int)

(assert (=> d!1583847 (= lt!2025329 e!3076621)))

(declare-fun c!838187 () Bool)

(assert (=> d!1583847 (= c!838187 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))))))

(assert (=> d!1583847 (= (size!37476 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) lt!2025329)))

(declare-fun b!4923660 () Bool)

(assert (=> b!4923660 (= e!3076621 0)))

(declare-fun b!4923661 () Bool)

(assert (=> b!4923661 (= e!3076621 (+ 1 (size!37476 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))))))))

(assert (= (and d!1583847 c!838187) b!4923660))

(assert (= (and d!1583847 (not c!838187)) b!4923661))

(declare-fun m!5939520 () Bool)

(assert (=> b!4923661 m!5939520))

(assert (=> b!4923268 d!1583847))

(declare-fun d!1583849 () Bool)

(declare-fun lt!2025330 () Int)

(assert (=> d!1583849 (>= lt!2025330 0)))

(declare-fun e!3076622 () Int)

(assert (=> d!1583849 (= lt!2025330 e!3076622)))

(declare-fun c!838188 () Bool)

(assert (=> d!1583849 (= c!838188 ((_ is Nil!56685) lt!2024403))))

(assert (=> d!1583849 (= (size!37476 lt!2024403) lt!2025330)))

(declare-fun b!4923662 () Bool)

(assert (=> b!4923662 (= e!3076622 0)))

(declare-fun b!4923663 () Bool)

(assert (=> b!4923663 (= e!3076622 (+ 1 (size!37476 (t!367249 lt!2024403))))))

(assert (= (and d!1583849 c!838188) b!4923662))

(assert (= (and d!1583849 (not c!838188)) b!4923663))

(declare-fun m!5939522 () Bool)

(assert (=> b!4923663 m!5939522))

(assert (=> b!4923268 d!1583849))

(declare-fun d!1583851 () Bool)

(declare-fun lt!2025331 () Int)

(assert (=> d!1583851 (= lt!2025331 (size!37476 (list!17949 (left!41330 (c!837809 input!5492)))))))

(assert (=> d!1583851 (= lt!2025331 (ite ((_ is Empty!14872) (left!41330 (c!837809 input!5492))) 0 (ite ((_ is Leaf!24741) (left!41330 (c!837809 input!5492))) (csize!29975 (left!41330 (c!837809 input!5492))) (csize!29974 (left!41330 (c!837809 input!5492))))))))

(assert (=> d!1583851 (= (size!37478 (left!41330 (c!837809 input!5492))) lt!2025331)))

(declare-fun bs!1179313 () Bool)

(assert (= bs!1179313 d!1583851))

(assert (=> bs!1179313 m!5938300))

(assert (=> bs!1179313 m!5938300))

(declare-fun m!5939524 () Bool)

(assert (=> bs!1179313 m!5939524))

(assert (=> d!1583533 d!1583851))

(assert (=> d!1583533 d!1583783))

(declare-fun d!1583853 () Bool)

(assert (not d!1583853))

(assert (=> b!4923279 d!1583853))

(declare-fun d!1583855 () Bool)

(declare-fun lt!2025334 () Bool)

(assert (=> d!1583855 (= lt!2025334 (exists!1242 (toList!7941 z!3559) lambda!245166))))

(declare-fun choose!36049 ((InoxSet Context!6030) Int) Bool)

(assert (=> d!1583855 (= lt!2025334 (choose!36049 z!3559 lambda!245166))))

(assert (=> d!1583855 (= (exists!1245 z!3559 lambda!245166) lt!2025334)))

(declare-fun bs!1179314 () Bool)

(assert (= bs!1179314 d!1583855))

(assert (=> bs!1179314 m!5938014))

(assert (=> bs!1179314 m!5938014))

(declare-fun m!5939526 () Bool)

(assert (=> bs!1179314 m!5939526))

(declare-fun m!5939528 () Bool)

(assert (=> bs!1179314 m!5939528))

(assert (=> d!1583565 d!1583855))

(declare-fun b!4923664 () Bool)

(declare-fun e!3076629 () tuple2!61174)

(assert (=> b!4923664 (= e!3076629 (tuple2!61175 Empty!14872 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4923665 () Bool)

(declare-fun e!3076625 () tuple2!61174)

(assert (=> b!4923665 (= e!3076625 (tuple2!61175 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))) (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4923666 () Bool)

(declare-fun e!3076624 () tuple2!61174)

(assert (=> b!4923666 (= e!3076624 (tuple2!61175 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))) Empty!14872))))

(declare-fun c!838197 () Bool)

(declare-fun b!4923667 () Bool)

(assert (=> b!4923667 (= c!838197 (= (size!37478 (left!41330 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))) e!3076391))))

(declare-fun lt!2025345 () Unit!147131)

(declare-fun lt!2025339 () Unit!147131)

(assert (=> b!4923667 (= lt!2025345 lt!2025339)))

(declare-fun lt!2025336 () List!56809)

(declare-fun e!3076623 () tuple2!61168)

(declare-fun lt!2025343 () List!56809)

(assert (=> b!4923667 (= (splitAtIndex!101 (++!12322 lt!2025343 lt!2025336) e!3076391) e!3076623)))

(declare-fun c!838192 () Bool)

(declare-fun call!343114 () Int)

(assert (=> b!4923667 (= c!838192 (= call!343114 e!3076391))))

(assert (=> b!4923667 (= lt!2025339 (splitAtLemma!25 lt!2025343 lt!2025336 e!3076391))))

(assert (=> b!4923667 (= lt!2025336 (list!17949 (right!41660 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))))

(assert (=> b!4923667 (= lt!2025343 (list!17949 (left!41330 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))))

(declare-fun e!3076632 () tuple2!61174)

(declare-fun e!3076633 () tuple2!61174)

(assert (=> b!4923667 (= e!3076632 e!3076633)))

(declare-fun b!4923668 () Bool)

(declare-fun e!3076626 () Bool)

(declare-fun lt!2025344 () tuple2!61174)

(assert (=> b!4923668 (= e!3076626 (= (tuple2!61169 (list!17949 (_1!33890 lt!2025344)) (list!17949 (_2!33890 lt!2025344))) (splitAtIndex!101 (list!17949 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))) e!3076391)))))

(declare-fun b!4923669 () Bool)

(assert (=> b!4923669 (= e!3076625 e!3076632)))

(declare-fun c!838199 () Bool)

(assert (=> b!4923669 (= c!838199 ((_ is Leaf!24741) (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4923670 () Bool)

(assert (=> b!4923670 (= e!3076629 e!3076624)))

(declare-fun c!838194 () Bool)

(assert (=> b!4923670 (= c!838194 (= e!3076391 (csize!29975 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))))

(declare-fun e!3076627 () List!56809)

(declare-fun b!4923671 () Bool)

(declare-fun c!838196 () Bool)

(assert (=> b!4923671 (= e!3076627 (ite c!838196 lt!2025343 lt!2025336))))

(declare-fun bm!343109 () Bool)

(declare-fun c!838189 () Bool)

(assert (=> bm!343109 (= c!838189 c!838199)))

(declare-fun e!3076628 () Int)

(declare-fun call!343118 () tuple2!61168)

(assert (=> bm!343109 (= call!343118 (splitAtIndex!101 e!3076627 (ite c!838199 e!3076391 e!3076628)))))

(declare-fun b!4923672 () Bool)

(declare-fun e!3076634 () Int)

(assert (=> b!4923672 (= e!3076634 e!3076391)))

(declare-fun b!4923673 () Bool)

(declare-fun lt!2025341 () tuple2!61174)

(declare-fun call!343117 () tuple2!61174)

(assert (=> b!4923673 (= lt!2025341 call!343117)))

(declare-fun e!3076630 () tuple2!61174)

(declare-fun call!343119 () Conc!14872)

(assert (=> b!4923673 (= e!3076630 (tuple2!61175 (_1!33890 lt!2025341) call!343119))))

(declare-fun c!838191 () Bool)

(declare-fun lt!2025337 () tuple2!61174)

(declare-fun bm!343110 () Bool)

(assert (=> bm!343110 (= call!343119 (++!12323 (ite c!838191 (_2!33890 lt!2025341) (left!41330 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))) (ite c!838191 (right!41660 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))) (_1!33890 lt!2025337))))))

(declare-fun b!4923674 () Bool)

(declare-fun c!838198 () Bool)

(assert (=> b!4923674 (= c!838198 (<= e!3076391 0))))

(assert (=> b!4923674 (= e!3076632 e!3076629)))

(declare-fun b!4923675 () Bool)

(assert (=> b!4923675 (= e!3076623 (tuple2!61169 lt!2025343 lt!2025336))))

(declare-fun b!4923676 () Bool)

(assert (=> b!4923676 (= e!3076628 e!3076391)))

(declare-fun b!4923677 () Bool)

(assert (=> b!4923677 (= e!3076628 (- e!3076391 call!343114))))

(declare-fun b!4923678 () Bool)

(assert (=> b!4923678 (= e!3076634 (- e!3076391 (size!37478 (left!41330 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))))))))

(declare-fun b!4923679 () Bool)

(assert (=> b!4923679 (= e!3076633 (tuple2!61175 (left!41330 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))) (right!41660 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))))

(declare-fun bm!343111 () Bool)

(declare-fun lt!2025347 () List!56809)

(assert (=> bm!343111 (= call!343114 (size!37476 (ite c!838199 lt!2025347 lt!2025343)))))

(declare-fun b!4923680 () Bool)

(declare-fun res!2101837 () Bool)

(assert (=> b!4923680 (=> (not res!2101837) (not e!3076626))))

(assert (=> b!4923680 (= res!2101837 (isBalanced!4085 (_2!33890 lt!2025344)))))

(declare-fun b!4923681 () Bool)

(declare-fun lt!2025346 () tuple2!61168)

(declare-fun call!343115 () tuple2!61168)

(assert (=> b!4923681 (= lt!2025346 call!343115)))

(declare-fun e!3076631 () tuple2!61168)

(declare-fun call!343116 () List!56809)

(assert (=> b!4923681 (= e!3076631 (tuple2!61169 (_1!33887 lt!2025346) call!343116))))

(declare-fun bm!343112 () Bool)

(declare-fun c!838190 () Bool)

(assert (=> bm!343112 (= c!838190 c!838191)))

(assert (=> bm!343112 (= call!343117 (splitAt!271 (ite c!838191 (left!41330 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))) (right!41660 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))) e!3076634))))

(declare-fun b!4923682 () Bool)

(assert (=> b!4923682 (= lt!2025337 call!343117)))

(assert (=> b!4923682 (= e!3076630 (tuple2!61175 call!343119 (_2!33890 lt!2025337)))))

(declare-fun bm!343113 () Bool)

(declare-fun lt!2025338 () tuple2!61168)

(assert (=> bm!343113 (= call!343116 (++!12322 (ite c!838196 (_2!33887 lt!2025346) lt!2025343) (ite c!838196 lt!2025336 (_1!33887 lt!2025338))))))

(declare-fun b!4923683 () Bool)

(assert (=> b!4923683 (= e!3076627 (list!17950 (xs!18192 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))))

(declare-fun b!4923684 () Bool)

(declare-fun lt!2025342 () Unit!147131)

(declare-fun lt!2025335 () Unit!147131)

(assert (=> b!4923684 (= lt!2025342 lt!2025335)))

(assert (=> b!4923684 (= (drop!2224 lt!2025347 e!3076391) (slice!766 lt!2025347 e!3076391 call!343114))))

(assert (=> b!4923684 (= lt!2025335 (dropLemma!25 lt!2025347 e!3076391))))

(assert (=> b!4923684 (= lt!2025347 (list!17950 (xs!18192 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))))

(declare-fun lt!2025340 () tuple2!61168)

(assert (=> b!4923684 (= lt!2025340 call!343118)))

(assert (=> b!4923684 (= e!3076624 (tuple2!61175 (Leaf!24741 (slice!767 (xs!18192 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))) 0 e!3076391) e!3076391) (Leaf!24741 (slice!767 (xs!18192 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))) e!3076391 (csize!29975 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))) (- (csize!29975 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))) e!3076391))))))

(declare-fun bm!343114 () Bool)

(declare-fun c!838193 () Bool)

(assert (=> bm!343114 (= c!838193 c!838196)))

(assert (=> bm!343114 (= call!343115 call!343118)))

(declare-fun b!4923685 () Bool)

(assert (=> b!4923685 (= e!3076633 e!3076630)))

(assert (=> b!4923685 (= c!838191 (< e!3076391 (size!37478 (left!41330 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))))))))

(declare-fun b!4923686 () Bool)

(assert (=> b!4923686 (= lt!2025338 call!343115)))

(assert (=> b!4923686 (= e!3076631 (tuple2!61169 call!343116 (_2!33887 lt!2025338)))))

(declare-fun d!1583857 () Bool)

(assert (=> d!1583857 e!3076626))

(declare-fun res!2101838 () Bool)

(assert (=> d!1583857 (=> (not res!2101838) (not e!3076626))))

(assert (=> d!1583857 (= res!2101838 (isBalanced!4085 (_1!33890 lt!2025344)))))

(assert (=> d!1583857 (= lt!2025344 e!3076625)))

(declare-fun c!838195 () Bool)

(assert (=> d!1583857 (= c!838195 ((_ is Empty!14872) (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492)))))))

(assert (=> d!1583857 (isBalanced!4085 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))

(assert (=> d!1583857 (= (splitAt!271 (ite c!838072 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))) e!3076391) lt!2025344)))

(declare-fun b!4923687 () Bool)

(assert (=> b!4923687 (= e!3076623 e!3076631)))

(assert (=> b!4923687 (= c!838196 (< e!3076391 call!343114))))

(assert (= (and d!1583857 c!838195) b!4923665))

(assert (= (and d!1583857 (not c!838195)) b!4923669))

(assert (= (and b!4923669 c!838199) b!4923674))

(assert (= (and b!4923669 (not c!838199)) b!4923667))

(assert (= (and b!4923674 c!838198) b!4923664))

(assert (= (and b!4923674 (not c!838198)) b!4923670))

(assert (= (and b!4923670 c!838194) b!4923666))

(assert (= (and b!4923670 (not c!838194)) b!4923684))

(assert (= (and b!4923667 c!838192) b!4923675))

(assert (= (and b!4923667 (not c!838192)) b!4923687))

(assert (= (and b!4923687 c!838196) b!4923681))

(assert (= (and b!4923687 (not c!838196)) b!4923686))

(assert (= (or b!4923681 b!4923686) bm!343113))

(assert (= (or b!4923681 b!4923686) bm!343114))

(assert (= (and bm!343114 c!838193) b!4923676))

(assert (= (and bm!343114 (not c!838193)) b!4923677))

(assert (= (and b!4923667 c!838197) b!4923679))

(assert (= (and b!4923667 (not c!838197)) b!4923685))

(assert (= (and b!4923685 c!838191) b!4923673))

(assert (= (and b!4923685 (not c!838191)) b!4923682))

(assert (= (or b!4923673 b!4923682) bm!343110))

(assert (= (or b!4923673 b!4923682) bm!343112))

(assert (= (and bm!343112 c!838190) b!4923672))

(assert (= (and bm!343112 (not c!838190)) b!4923678))

(assert (= (or b!4923684 b!4923667 b!4923677 b!4923687) bm!343111))

(assert (= (or b!4923684 bm!343114) bm!343109))

(assert (= (and bm!343109 c!838189) b!4923683))

(assert (= (and bm!343109 (not c!838189)) b!4923671))

(assert (= (and d!1583857 res!2101838) b!4923680))

(assert (= (and b!4923680 res!2101837) b!4923668))

(declare-fun m!5939530 () Bool)

(assert (=> bm!343110 m!5939530))

(declare-fun m!5939532 () Bool)

(assert (=> bm!343112 m!5939532))

(declare-fun m!5939534 () Bool)

(assert (=> b!4923680 m!5939534))

(declare-fun m!5939536 () Bool)

(assert (=> d!1583857 m!5939536))

(declare-fun m!5939538 () Bool)

(assert (=> d!1583857 m!5939538))

(declare-fun m!5939540 () Bool)

(assert (=> b!4923668 m!5939540))

(declare-fun m!5939542 () Bool)

(assert (=> b!4923668 m!5939542))

(declare-fun m!5939544 () Bool)

(assert (=> b!4923668 m!5939544))

(assert (=> b!4923668 m!5939544))

(declare-fun m!5939546 () Bool)

(assert (=> b!4923668 m!5939546))

(declare-fun m!5939548 () Bool)

(assert (=> b!4923683 m!5939548))

(declare-fun m!5939550 () Bool)

(assert (=> bm!343113 m!5939550))

(declare-fun m!5939552 () Bool)

(assert (=> b!4923678 m!5939552))

(declare-fun m!5939554 () Bool)

(assert (=> b!4923667 m!5939554))

(declare-fun m!5939556 () Bool)

(assert (=> b!4923667 m!5939556))

(declare-fun m!5939558 () Bool)

(assert (=> b!4923667 m!5939558))

(assert (=> b!4923667 m!5939552))

(declare-fun m!5939560 () Bool)

(assert (=> b!4923667 m!5939560))

(assert (=> b!4923667 m!5939554))

(declare-fun m!5939562 () Bool)

(assert (=> b!4923667 m!5939562))

(assert (=> b!4923685 m!5939552))

(declare-fun m!5939564 () Bool)

(assert (=> bm!343111 m!5939564))

(declare-fun m!5939566 () Bool)

(assert (=> bm!343109 m!5939566))

(declare-fun m!5939568 () Bool)

(assert (=> b!4923684 m!5939568))

(assert (=> b!4923684 m!5939548))

(declare-fun m!5939570 () Bool)

(assert (=> b!4923684 m!5939570))

(declare-fun m!5939572 () Bool)

(assert (=> b!4923684 m!5939572))

(declare-fun m!5939574 () Bool)

(assert (=> b!4923684 m!5939574))

(declare-fun m!5939576 () Bool)

(assert (=> b!4923684 m!5939576))

(assert (=> bm!343075 d!1583857))

(declare-fun d!1583859 () Bool)

(declare-fun lt!2025348 () Int)

(assert (=> d!1583859 (>= lt!2025348 0)))

(declare-fun e!3076635 () Int)

(assert (=> d!1583859 (= lt!2025348 e!3076635)))

(declare-fun c!838200 () Bool)

(assert (=> d!1583859 (= c!838200 ((_ is Nil!56685) lt!2025186))))

(assert (=> d!1583859 (= (size!37476 lt!2025186) lt!2025348)))

(declare-fun b!4923688 () Bool)

(assert (=> b!4923688 (= e!3076635 0)))

(declare-fun b!4923689 () Bool)

(assert (=> b!4923689 (= e!3076635 (+ 1 (size!37476 (t!367249 lt!2025186))))))

(assert (= (and d!1583859 c!838200) b!4923688))

(assert (= (and d!1583859 (not c!838200)) b!4923689))

(declare-fun m!5939578 () Bool)

(assert (=> b!4923689 m!5939578))

(assert (=> b!4923320 d!1583859))

(assert (=> b!4923320 d!1583487))

(declare-fun d!1583861 () Bool)

(declare-fun lt!2025349 () Int)

(assert (=> d!1583861 (>= lt!2025349 0)))

(declare-fun e!3076636 () Int)

(assert (=> d!1583861 (= lt!2025349 e!3076636)))

(declare-fun c!838201 () Bool)

(assert (=> d!1583861 (= c!838201 ((_ is Nil!56685) (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))

(assert (=> d!1583861 (= (size!37476 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) lt!2025349)))

(declare-fun b!4923690 () Bool)

(assert (=> b!4923690 (= e!3076636 0)))

(declare-fun b!4923691 () Bool)

(assert (=> b!4923691 (= e!3076636 (+ 1 (size!37476 (t!367249 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))))

(assert (= (and d!1583861 c!838201) b!4923690))

(assert (= (and d!1583861 (not c!838201)) b!4923691))

(declare-fun m!5939580 () Bool)

(assert (=> b!4923691 m!5939580))

(assert (=> b!4923320 d!1583861))

(declare-fun d!1583863 () Bool)

(declare-fun e!3076637 () Bool)

(assert (=> d!1583863 e!3076637))

(declare-fun res!2101841 () Bool)

(assert (=> d!1583863 (=> res!2101841 e!3076637)))

(declare-fun lt!2025350 () Bool)

(assert (=> d!1583863 (= res!2101841 (not lt!2025350))))

(declare-fun e!3076638 () Bool)

(assert (=> d!1583863 (= lt!2025350 e!3076638)))

(declare-fun res!2101840 () Bool)

(assert (=> d!1583863 (=> res!2101840 e!3076638)))

(assert (=> d!1583863 (= res!2101840 ((_ is Nil!56685) (list!17947 input!5492)))))

(assert (=> d!1583863 (= (isPrefix!4961 (list!17947 input!5492) (list!17947 input!5492)) lt!2025350)))

(declare-fun b!4923694 () Bool)

(declare-fun e!3076639 () Bool)

(assert (=> b!4923694 (= e!3076639 (isPrefix!4961 (tail!9667 (list!17947 input!5492)) (tail!9667 (list!17947 input!5492))))))

(declare-fun b!4923693 () Bool)

(declare-fun res!2101842 () Bool)

(assert (=> b!4923693 (=> (not res!2101842) (not e!3076639))))

(assert (=> b!4923693 (= res!2101842 (= (head!10520 (list!17947 input!5492)) (head!10520 (list!17947 input!5492))))))

(declare-fun b!4923692 () Bool)

(assert (=> b!4923692 (= e!3076638 e!3076639)))

(declare-fun res!2101839 () Bool)

(assert (=> b!4923692 (=> (not res!2101839) (not e!3076639))))

(assert (=> b!4923692 (= res!2101839 (not ((_ is Nil!56685) (list!17947 input!5492))))))

(declare-fun b!4923695 () Bool)

(assert (=> b!4923695 (= e!3076637 (>= (size!37476 (list!17947 input!5492)) (size!37476 (list!17947 input!5492))))))

(assert (= (and d!1583863 (not res!2101840)) b!4923692))

(assert (= (and b!4923692 res!2101839) b!4923693))

(assert (= (and b!4923693 res!2101842) b!4923694))

(assert (= (and d!1583863 (not res!2101841)) b!4923695))

(assert (=> b!4923694 m!5937560))

(assert (=> b!4923694 m!5938178))

(assert (=> b!4923694 m!5937560))

(assert (=> b!4923694 m!5938178))

(assert (=> b!4923694 m!5938178))

(assert (=> b!4923694 m!5938178))

(declare-fun m!5939582 () Bool)

(assert (=> b!4923694 m!5939582))

(assert (=> b!4923693 m!5937560))

(assert (=> b!4923693 m!5939416))

(assert (=> b!4923693 m!5937560))

(assert (=> b!4923693 m!5939416))

(assert (=> b!4923695 m!5937560))

(assert (=> b!4923695 m!5937644))

(assert (=> b!4923695 m!5937560))

(assert (=> b!4923695 m!5937644))

(assert (=> bm!343012 d!1583863))

(declare-fun e!3076650 () tuple2!61168)

(declare-fun d!1583865 () Bool)

(assert (=> d!1583865 (= (splitAtIndex!101 (++!12322 lt!2025151 lt!2025144) lt!2024322) e!3076650)))

(declare-fun c!838209 () Bool)

(assert (=> d!1583865 (= c!838209 (= (size!37476 lt!2025151) lt!2024322))))

(declare-fun lt!2025357 () Unit!147131)

(declare-fun choose!36051 (List!56809 List!56809 Int) Unit!147131)

(assert (=> d!1583865 (= lt!2025357 (choose!36051 lt!2025151 lt!2025144 lt!2024322))))

(declare-fun e!3076651 () Bool)

(assert (=> d!1583865 e!3076651))

(declare-fun res!2101845 () Bool)

(assert (=> d!1583865 (=> (not res!2101845) (not e!3076651))))

(assert (=> d!1583865 (= res!2101845 (<= 0 lt!2024322))))

(assert (=> d!1583865 (= (splitAtLemma!25 lt!2025151 lt!2025144 lt!2024322) lt!2025357)))

(declare-fun b!4923710 () Bool)

(declare-fun e!3076649 () Int)

(assert (=> b!4923710 (= e!3076649 lt!2024322)))

(declare-fun b!4923711 () Bool)

(assert (=> b!4923711 (= e!3076649 (- lt!2024322 (size!37476 lt!2025151)))))

(declare-fun bm!343119 () Bool)

(declare-fun c!838210 () Bool)

(declare-fun c!838208 () Bool)

(assert (=> bm!343119 (= c!838210 c!838208)))

(declare-fun call!343124 () tuple2!61168)

(assert (=> bm!343119 (= call!343124 (splitAtIndex!101 (ite c!838208 lt!2025151 lt!2025144) e!3076649))))

(declare-fun b!4923712 () Bool)

(declare-fun lt!2025359 () tuple2!61168)

(assert (=> b!4923712 (= lt!2025359 call!343124)))

(declare-fun e!3076648 () tuple2!61168)

(declare-fun call!343125 () List!56809)

(assert (=> b!4923712 (= e!3076648 (tuple2!61169 call!343125 (_2!33887 lt!2025359)))))

(declare-fun bm!343120 () Bool)

(declare-fun lt!2025358 () tuple2!61168)

(assert (=> bm!343120 (= call!343125 (++!12322 (ite c!838208 (_2!33887 lt!2025358) lt!2025151) (ite c!838208 lt!2025144 (_1!33887 lt!2025359))))))

(declare-fun b!4923713 () Bool)

(assert (=> b!4923713 (= e!3076650 (tuple2!61169 lt!2025151 lt!2025144))))

(declare-fun b!4923714 () Bool)

(assert (=> b!4923714 (= e!3076650 e!3076648)))

(assert (=> b!4923714 (= c!838208 (< lt!2024322 (size!37476 lt!2025151)))))

(declare-fun b!4923715 () Bool)

(assert (=> b!4923715 (= lt!2025358 call!343124)))

(assert (=> b!4923715 (= e!3076648 (tuple2!61169 (_1!33887 lt!2025358) call!343125))))

(declare-fun b!4923716 () Bool)

(assert (=> b!4923716 (= e!3076651 (<= lt!2024322 (+ (size!37476 lt!2025151) (size!37476 lt!2025144))))))

(assert (= (and d!1583865 res!2101845) b!4923716))

(assert (= (and d!1583865 c!838209) b!4923713))

(assert (= (and d!1583865 (not c!838209)) b!4923714))

(assert (= (and b!4923714 c!838208) b!4923715))

(assert (= (and b!4923714 (not c!838208)) b!4923712))

(assert (= (or b!4923715 b!4923712) bm!343120))

(assert (= (or b!4923715 b!4923712) bm!343119))

(assert (= (and bm!343119 c!838210) b!4923710))

(assert (= (and bm!343119 (not c!838210)) b!4923711))

(declare-fun m!5939584 () Bool)

(assert (=> b!4923716 m!5939584))

(declare-fun m!5939586 () Bool)

(assert (=> b!4923716 m!5939586))

(assert (=> d!1583865 m!5938760))

(assert (=> d!1583865 m!5938760))

(assert (=> d!1583865 m!5938762))

(assert (=> d!1583865 m!5939584))

(declare-fun m!5939588 () Bool)

(assert (=> d!1583865 m!5939588))

(declare-fun m!5939590 () Bool)

(assert (=> bm!343120 m!5939590))

(assert (=> b!4923711 m!5939584))

(assert (=> b!4923714 m!5939584))

(declare-fun m!5939592 () Bool)

(assert (=> bm!343119 m!5939592))

(assert (=> b!4923213 d!1583865))

(declare-fun b!4923719 () Bool)

(declare-fun res!2101846 () Bool)

(declare-fun e!3076652 () Bool)

(assert (=> b!4923719 (=> (not res!2101846) (not e!3076652))))

(declare-fun lt!2025360 () List!56809)

(assert (=> b!4923719 (= res!2101846 (= (size!37476 lt!2025360) (+ (size!37476 lt!2025151) (size!37476 lt!2025144))))))

(declare-fun b!4923717 () Bool)

(declare-fun e!3076653 () List!56809)

(assert (=> b!4923717 (= e!3076653 lt!2025144)))

(declare-fun b!4923718 () Bool)

(assert (=> b!4923718 (= e!3076653 (Cons!56685 (h!63133 lt!2025151) (++!12322 (t!367249 lt!2025151) lt!2025144)))))

(declare-fun d!1583867 () Bool)

(assert (=> d!1583867 e!3076652))

(declare-fun res!2101847 () Bool)

(assert (=> d!1583867 (=> (not res!2101847) (not e!3076652))))

(assert (=> d!1583867 (= res!2101847 (= (content!10066 lt!2025360) ((_ map or) (content!10066 lt!2025151) (content!10066 lt!2025144))))))

(assert (=> d!1583867 (= lt!2025360 e!3076653)))

(declare-fun c!838211 () Bool)

(assert (=> d!1583867 (= c!838211 ((_ is Nil!56685) lt!2025151))))

(assert (=> d!1583867 (= (++!12322 lt!2025151 lt!2025144) lt!2025360)))

(declare-fun b!4923720 () Bool)

(assert (=> b!4923720 (= e!3076652 (or (not (= lt!2025144 Nil!56685)) (= lt!2025360 lt!2025151)))))

(assert (= (and d!1583867 c!838211) b!4923717))

(assert (= (and d!1583867 (not c!838211)) b!4923718))

(assert (= (and d!1583867 res!2101847) b!4923719))

(assert (= (and b!4923719 res!2101846) b!4923720))

(declare-fun m!5939594 () Bool)

(assert (=> b!4923719 m!5939594))

(assert (=> b!4923719 m!5939584))

(assert (=> b!4923719 m!5939586))

(declare-fun m!5939596 () Bool)

(assert (=> b!4923718 m!5939596))

(declare-fun m!5939598 () Bool)

(assert (=> d!1583867 m!5939598))

(declare-fun m!5939600 () Bool)

(assert (=> d!1583867 m!5939600))

(declare-fun m!5939602 () Bool)

(assert (=> d!1583867 m!5939602))

(assert (=> b!4923213 d!1583867))

(declare-fun b!4923723 () Bool)

(declare-fun e!3076655 () List!56809)

(assert (=> b!4923723 (= e!3076655 (list!17950 (xs!18192 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923721 () Bool)

(declare-fun e!3076654 () List!56809)

(assert (=> b!4923721 (= e!3076654 Nil!56685)))

(declare-fun d!1583869 () Bool)

(declare-fun c!838212 () Bool)

(assert (=> d!1583869 (= c!838212 ((_ is Empty!14872) (left!41330 (c!837809 input!5492))))))

(assert (=> d!1583869 (= (list!17949 (left!41330 (c!837809 input!5492))) e!3076654)))

(declare-fun b!4923724 () Bool)

(assert (=> b!4923724 (= e!3076655 (++!12322 (list!17949 (left!41330 (left!41330 (c!837809 input!5492)))) (list!17949 (right!41660 (left!41330 (c!837809 input!5492))))))))

(declare-fun b!4923722 () Bool)

(assert (=> b!4923722 (= e!3076654 e!3076655)))

(declare-fun c!838213 () Bool)

(assert (=> b!4923722 (= c!838213 ((_ is Leaf!24741) (left!41330 (c!837809 input!5492))))))

(assert (= (and d!1583869 c!838212) b!4923721))

(assert (= (and d!1583869 (not c!838212)) b!4923722))

(assert (= (and b!4923722 c!838213) b!4923723))

(assert (= (and b!4923722 (not c!838213)) b!4923724))

(declare-fun m!5939604 () Bool)

(assert (=> b!4923723 m!5939604))

(declare-fun m!5939606 () Bool)

(assert (=> b!4923724 m!5939606))

(declare-fun m!5939608 () Bool)

(assert (=> b!4923724 m!5939608))

(assert (=> b!4923724 m!5939606))

(assert (=> b!4923724 m!5939608))

(declare-fun m!5939610 () Bool)

(assert (=> b!4923724 m!5939610))

(assert (=> b!4923213 d!1583869))

(assert (=> b!4923213 d!1583851))

(declare-fun d!1583871 () Bool)

(declare-fun e!3076658 () Bool)

(assert (=> d!1583871 e!3076658))

(declare-fun res!2101848 () Bool)

(assert (=> d!1583871 (=> (not res!2101848) (not e!3076658))))

(declare-fun lt!2025362 () tuple2!61168)

(assert (=> d!1583871 (= res!2101848 (= (++!12322 (_1!33887 lt!2025362) (_2!33887 lt!2025362)) (++!12322 lt!2025151 lt!2025144)))))

(declare-fun e!3076656 () tuple2!61168)

(assert (=> d!1583871 (= lt!2025362 e!3076656)))

(declare-fun c!838215 () Bool)

(assert (=> d!1583871 (= c!838215 ((_ is Nil!56685) (++!12322 lt!2025151 lt!2025144)))))

(assert (=> d!1583871 (= (splitAtIndex!101 (++!12322 lt!2025151 lt!2025144) lt!2024322) lt!2025362)))

(declare-fun b!4923725 () Bool)

(declare-fun res!2101849 () Bool)

(assert (=> b!4923725 (=> (not res!2101849) (not e!3076658))))

(assert (=> b!4923725 (= res!2101849 (= (_1!33887 lt!2025362) (take!577 (++!12322 lt!2025151 lt!2025144) lt!2024322)))))

(declare-fun b!4923726 () Bool)

(declare-fun lt!2025361 () tuple2!61168)

(assert (=> b!4923726 (= lt!2025361 (splitAtIndex!101 (t!367249 (++!12322 lt!2025151 lt!2025144)) (- lt!2024322 1)))))

(declare-fun e!3076657 () tuple2!61168)

(assert (=> b!4923726 (= e!3076657 (tuple2!61169 (Cons!56685 (h!63133 (++!12322 lt!2025151 lt!2025144)) (_1!33887 lt!2025361)) (_2!33887 lt!2025361)))))

(declare-fun b!4923727 () Bool)

(assert (=> b!4923727 (= e!3076658 (= (_2!33887 lt!2025362) (drop!2224 (++!12322 lt!2025151 lt!2025144) lt!2024322)))))

(declare-fun b!4923728 () Bool)

(assert (=> b!4923728 (= e!3076657 (tuple2!61169 Nil!56685 (++!12322 lt!2025151 lt!2025144)))))

(declare-fun b!4923729 () Bool)

(assert (=> b!4923729 (= e!3076656 e!3076657)))

(declare-fun c!838214 () Bool)

(assert (=> b!4923729 (= c!838214 (<= lt!2024322 0))))

(declare-fun b!4923730 () Bool)

(assert (=> b!4923730 (= e!3076656 (tuple2!61169 Nil!56685 Nil!56685))))

(assert (= (and d!1583871 c!838215) b!4923730))

(assert (= (and d!1583871 (not c!838215)) b!4923729))

(assert (= (and b!4923729 c!838214) b!4923728))

(assert (= (and b!4923729 (not c!838214)) b!4923726))

(assert (= (and d!1583871 res!2101848) b!4923725))

(assert (= (and b!4923725 res!2101849) b!4923727))

(declare-fun m!5939612 () Bool)

(assert (=> d!1583871 m!5939612))

(assert (=> b!4923725 m!5938760))

(declare-fun m!5939614 () Bool)

(assert (=> b!4923725 m!5939614))

(declare-fun m!5939616 () Bool)

(assert (=> b!4923726 m!5939616))

(assert (=> b!4923727 m!5938760))

(declare-fun m!5939618 () Bool)

(assert (=> b!4923727 m!5939618))

(assert (=> b!4923213 d!1583871))

(assert (=> b!4923213 d!1583781))

(declare-fun d!1583873 () Bool)

(assert (not d!1583873))

(assert (=> b!4922890 d!1583873))

(declare-fun d!1583875 () Bool)

(assert (=> d!1583875 (= (tail!9667 (list!17947 input!5492)) (t!367249 (list!17947 input!5492)))))

(assert (=> b!4922890 d!1583875))

(declare-fun d!1583877 () Bool)

(assert (not d!1583877))

(assert (=> b!4923325 d!1583877))

(assert (=> d!1583513 d!1583405))

(declare-fun d!1583879 () Bool)

(assert (=> d!1583879 (isPrefix!4961 lt!2024324 lt!2024324)))

(assert (=> d!1583879 true))

(declare-fun _$45!2215 () Unit!147131)

(assert (=> d!1583879 (= (choose!36036 lt!2024324 lt!2024324) _$45!2215)))

(declare-fun bs!1179315 () Bool)

(assert (= bs!1179315 d!1583879))

(assert (=> bs!1179315 m!5937630))

(assert (=> d!1583513 d!1583879))

(assert (=> b!4923047 d!1583351))

(declare-fun bs!1179316 () Bool)

(declare-fun d!1583881 () Bool)

(assert (= bs!1179316 (and d!1583881 d!1583523)))

(declare-fun lambda!245171 () Int)

(assert (=> bs!1179316 (= (= call!343041 call!342905) (= lambda!245171 lambda!245162))))

(declare-fun bs!1179317 () Bool)

(assert (= bs!1179317 (and d!1583881 d!1583727)))

(assert (=> bs!1179317 (= (= call!343041 call!342985) (= lambda!245171 lambda!245170))))

(assert (=> d!1583881 true))

(assert (=> d!1583881 (= (derivationStepZipper!588 call!342982 call!343041) (flatMap!262 call!342982 lambda!245171))))

(declare-fun bs!1179318 () Bool)

(assert (= bs!1179318 d!1583881))

(declare-fun m!5939620 () Bool)

(assert (=> bs!1179318 m!5939620))

(assert (=> bm!343038 d!1583881))

(declare-fun bs!1179319 () Bool)

(declare-fun d!1583883 () Bool)

(assert (= bs!1179319 (and d!1583883 d!1583523)))

(declare-fun lambda!245172 () Int)

(assert (=> bs!1179319 (= (= call!343017 call!342905) (= lambda!245172 lambda!245162))))

(declare-fun bs!1179320 () Bool)

(assert (= bs!1179320 (and d!1583883 d!1583727)))

(assert (=> bs!1179320 (= (= call!343017 call!342985) (= lambda!245172 lambda!245170))))

(declare-fun bs!1179321 () Bool)

(assert (= bs!1179321 (and d!1583883 d!1583881)))

(assert (=> bs!1179321 (= (= call!343017 call!343041) (= lambda!245172 lambda!245171))))

(assert (=> d!1583883 true))

(assert (=> d!1583883 (= (derivationStepZipper!588 z!3559 call!343017) (flatMap!262 z!3559 lambda!245172))))

(declare-fun bs!1179322 () Bool)

(assert (= bs!1179322 d!1583883))

(declare-fun m!5939622 () Bool)

(assert (=> bs!1179322 m!5939622))

(assert (=> bm!343008 d!1583883))

(declare-fun b!4923731 () Bool)

(declare-fun res!2101853 () Bool)

(declare-fun e!3076659 () Bool)

(assert (=> b!4923731 (=> (not res!2101853) (not e!3076659))))

(assert (=> b!4923731 (= res!2101853 (isBalanced!4085 (right!41660 (left!41330 (c!837809 (_2!33888 lt!2024758))))))))

(declare-fun b!4923732 () Bool)

(assert (=> b!4923732 (= e!3076659 (not (isEmpty!30568 (right!41660 (left!41330 (c!837809 (_2!33888 lt!2024758)))))))))

(declare-fun d!1583885 () Bool)

(declare-fun res!2101852 () Bool)

(declare-fun e!3076660 () Bool)

(assert (=> d!1583885 (=> res!2101852 e!3076660)))

(assert (=> d!1583885 (= res!2101852 (not ((_ is Node!14872) (left!41330 (c!837809 (_2!33888 lt!2024758))))))))

(assert (=> d!1583885 (= (isBalanced!4085 (left!41330 (c!837809 (_2!33888 lt!2024758)))) e!3076660)))

(declare-fun b!4923733 () Bool)

(declare-fun res!2101854 () Bool)

(assert (=> b!4923733 (=> (not res!2101854) (not e!3076659))))

(assert (=> b!4923733 (= res!2101854 (<= (- (height!1982 (left!41330 (left!41330 (c!837809 (_2!33888 lt!2024758))))) (height!1982 (right!41660 (left!41330 (c!837809 (_2!33888 lt!2024758)))))) 1))))

(declare-fun b!4923734 () Bool)

(declare-fun res!2101855 () Bool)

(assert (=> b!4923734 (=> (not res!2101855) (not e!3076659))))

(assert (=> b!4923734 (= res!2101855 (not (isEmpty!30568 (left!41330 (left!41330 (c!837809 (_2!33888 lt!2024758)))))))))

(declare-fun b!4923735 () Bool)

(declare-fun res!2101851 () Bool)

(assert (=> b!4923735 (=> (not res!2101851) (not e!3076659))))

(assert (=> b!4923735 (= res!2101851 (isBalanced!4085 (left!41330 (left!41330 (c!837809 (_2!33888 lt!2024758))))))))

(declare-fun b!4923736 () Bool)

(assert (=> b!4923736 (= e!3076660 e!3076659)))

(declare-fun res!2101850 () Bool)

(assert (=> b!4923736 (=> (not res!2101850) (not e!3076659))))

(assert (=> b!4923736 (= res!2101850 (<= (- 1) (- (height!1982 (left!41330 (left!41330 (c!837809 (_2!33888 lt!2024758))))) (height!1982 (right!41660 (left!41330 (c!837809 (_2!33888 lt!2024758))))))))))

(assert (= (and d!1583885 (not res!2101852)) b!4923736))

(assert (= (and b!4923736 res!2101850) b!4923733))

(assert (= (and b!4923733 res!2101854) b!4923735))

(assert (= (and b!4923735 res!2101851) b!4923731))

(assert (= (and b!4923731 res!2101853) b!4923734))

(assert (= (and b!4923734 res!2101855) b!4923732))

(declare-fun m!5939624 () Bool)

(assert (=> b!4923732 m!5939624))

(declare-fun m!5939626 () Bool)

(assert (=> b!4923736 m!5939626))

(declare-fun m!5939628 () Bool)

(assert (=> b!4923736 m!5939628))

(assert (=> b!4923733 m!5939626))

(assert (=> b!4923733 m!5939628))

(declare-fun m!5939630 () Bool)

(assert (=> b!4923734 m!5939630))

(declare-fun m!5939632 () Bool)

(assert (=> b!4923735 m!5939632))

(declare-fun m!5939634 () Bool)

(assert (=> b!4923731 m!5939634))

(assert (=> b!4922968 d!1583885))

(declare-fun d!1583887 () Bool)

(assert (not d!1583887))

(assert (=> b!4923340 d!1583887))

(declare-fun d!1583889 () Bool)

(assert (=> d!1583889 (= (tail!9667 lt!2024736) (t!367249 lt!2024736))))

(assert (=> b!4923340 d!1583889))

(declare-fun bs!1179323 () Bool)

(declare-fun d!1583891 () Bool)

(assert (= bs!1179323 (and d!1583891 d!1583523)))

(declare-fun lambda!245173 () Int)

(assert (=> bs!1179323 (= (= call!343095 call!342905) (= lambda!245173 lambda!245162))))

(declare-fun bs!1179324 () Bool)

(assert (= bs!1179324 (and d!1583891 d!1583727)))

(assert (=> bs!1179324 (= (= call!343095 call!342985) (= lambda!245173 lambda!245170))))

(declare-fun bs!1179325 () Bool)

(assert (= bs!1179325 (and d!1583891 d!1583881)))

(assert (=> bs!1179325 (= (= call!343095 call!343041) (= lambda!245173 lambda!245171))))

(declare-fun bs!1179326 () Bool)

(assert (= bs!1179326 (and d!1583891 d!1583883)))

(assert (=> bs!1179326 (= (= call!343095 call!343017) (= lambda!245173 lambda!245172))))

(assert (=> d!1583891 true))

(assert (=> d!1583891 (= (derivationStepZipper!588 call!342904 call!343095) (flatMap!262 call!342904 lambda!245173))))

(declare-fun bs!1179327 () Bool)

(assert (= bs!1179327 d!1583891))

(declare-fun m!5939636 () Bool)

(assert (=> bs!1179327 m!5939636))

(assert (=> bm!343086 d!1583891))

(declare-fun d!1583893 () Bool)

(declare-fun lt!2025363 () C!26956)

(assert (=> d!1583893 (contains!19454 (list!17947 input!5492) lt!2025363)))

(declare-fun e!3076661 () C!26956)

(assert (=> d!1583893 (= lt!2025363 e!3076661)))

(declare-fun c!838216 () Bool)

(assert (=> d!1583893 (= c!838216 (= 0 0))))

(declare-fun e!3076662 () Bool)

(assert (=> d!1583893 e!3076662))

(declare-fun res!2101856 () Bool)

(assert (=> d!1583893 (=> (not res!2101856) (not e!3076662))))

(assert (=> d!1583893 (= res!2101856 (<= 0 0))))

(assert (=> d!1583893 (= (apply!13656 (list!17947 input!5492) 0) lt!2025363)))

(declare-fun b!4923737 () Bool)

(assert (=> b!4923737 (= e!3076662 (< 0 (size!37476 (list!17947 input!5492))))))

(declare-fun b!4923738 () Bool)

(assert (=> b!4923738 (= e!3076661 (head!10520 (list!17947 input!5492)))))

(declare-fun b!4923739 () Bool)

(assert (=> b!4923739 (= e!3076661 (apply!13656 (tail!9667 (list!17947 input!5492)) (- 0 1)))))

(assert (= (and d!1583893 res!2101856) b!4923737))

(assert (= (and d!1583893 c!838216) b!4923738))

(assert (= (and d!1583893 (not c!838216)) b!4923739))

(assert (=> d!1583893 m!5937560))

(declare-fun m!5939638 () Bool)

(assert (=> d!1583893 m!5939638))

(assert (=> b!4923737 m!5937560))

(assert (=> b!4923737 m!5937644))

(assert (=> b!4923738 m!5937560))

(assert (=> b!4923738 m!5939416))

(assert (=> b!4923739 m!5937560))

(assert (=> b!4923739 m!5938178))

(assert (=> b!4923739 m!5938178))

(declare-fun m!5939640 () Bool)

(assert (=> b!4923739 m!5939640))

(assert (=> d!1583567 d!1583893))

(assert (=> d!1583567 d!1583377))

(declare-fun b!4923754 () Bool)

(declare-fun e!3076671 () C!26956)

(declare-fun e!3076673 () C!26956)

(assert (=> b!4923754 (= e!3076671 e!3076673)))

(declare-fun lt!2025368 () Bool)

(declare-fun appendIndex!376 (List!56809 List!56809 Int) Bool)

(assert (=> b!4923754 (= lt!2025368 (appendIndex!376 (list!17949 (left!41330 (c!837809 input!5492))) (list!17949 (right!41660 (c!837809 input!5492))) 0))))

(declare-fun c!838225 () Bool)

(assert (=> b!4923754 (= c!838225 (< 0 (size!37478 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4923755 () Bool)

(declare-fun call!343128 () C!26956)

(assert (=> b!4923755 (= e!3076673 call!343128)))

(declare-fun b!4923756 () Bool)

(declare-fun e!3076672 () Int)

(assert (=> b!4923756 (= e!3076672 (- 0 (size!37478 (left!41330 (c!837809 input!5492)))))))

(declare-fun d!1583895 () Bool)

(declare-fun lt!2025369 () C!26956)

(assert (=> d!1583895 (= lt!2025369 (apply!13656 (list!17949 (c!837809 input!5492)) 0))))

(assert (=> d!1583895 (= lt!2025369 e!3076671)))

(declare-fun c!838223 () Bool)

(assert (=> d!1583895 (= c!838223 ((_ is Leaf!24741) (c!837809 input!5492)))))

(declare-fun e!3076674 () Bool)

(assert (=> d!1583895 e!3076674))

(declare-fun res!2101859 () Bool)

(assert (=> d!1583895 (=> (not res!2101859) (not e!3076674))))

(assert (=> d!1583895 (= res!2101859 (<= 0 0))))

(assert (=> d!1583895 (= (apply!13657 (c!837809 input!5492) 0) lt!2025369)))

(declare-fun bm!343123 () Bool)

(declare-fun c!838224 () Bool)

(assert (=> bm!343123 (= c!838224 c!838225)))

(assert (=> bm!343123 (= call!343128 (apply!13657 (ite c!838225 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))) e!3076672))))

(declare-fun b!4923757 () Bool)

(assert (=> b!4923757 (= e!3076674 (< 0 (size!37478 (c!837809 input!5492))))))

(declare-fun b!4923758 () Bool)

(declare-fun apply!13659 (IArray!29805 Int) C!26956)

(assert (=> b!4923758 (= e!3076671 (apply!13659 (xs!18192 (c!837809 input!5492)) 0))))

(declare-fun b!4923759 () Bool)

(assert (=> b!4923759 (= e!3076673 call!343128)))

(declare-fun b!4923760 () Bool)

(assert (=> b!4923760 (= e!3076672 0)))

(assert (= (and d!1583895 res!2101859) b!4923757))

(assert (= (and d!1583895 c!838223) b!4923758))

(assert (= (and d!1583895 (not c!838223)) b!4923754))

(assert (= (and b!4923754 c!838225) b!4923759))

(assert (= (and b!4923754 (not c!838225)) b!4923755))

(assert (= (or b!4923759 b!4923755) bm!343123))

(assert (= (and bm!343123 c!838224) b!4923760))

(assert (= (and bm!343123 (not c!838224)) b!4923756))

(assert (=> b!4923757 m!5937646))

(assert (=> b!4923756 m!5938310))

(assert (=> d!1583895 m!5937864))

(assert (=> d!1583895 m!5937864))

(declare-fun m!5939642 () Bool)

(assert (=> d!1583895 m!5939642))

(declare-fun m!5939644 () Bool)

(assert (=> b!4923758 m!5939644))

(declare-fun m!5939646 () Bool)

(assert (=> bm!343123 m!5939646))

(assert (=> b!4923754 m!5938300))

(assert (=> b!4923754 m!5937958))

(assert (=> b!4923754 m!5938300))

(assert (=> b!4923754 m!5937958))

(declare-fun m!5939648 () Bool)

(assert (=> b!4923754 m!5939648))

(assert (=> b!4923754 m!5938310))

(assert (=> d!1583567 d!1583895))

(declare-fun d!1583897 () Bool)

(assert (=> d!1583897 (= (height!1982 (left!41330 (c!837809 (_1!33888 lt!2024758)))) (ite ((_ is Empty!14872) (left!41330 (c!837809 (_1!33888 lt!2024758)))) 0 (ite ((_ is Leaf!24741) (left!41330 (c!837809 (_1!33888 lt!2024758)))) 1 (cheight!15083 (left!41330 (c!837809 (_1!33888 lt!2024758)))))))))

(assert (=> b!4923062 d!1583897))

(declare-fun d!1583899 () Bool)

(assert (=> d!1583899 (= (height!1982 (right!41660 (c!837809 (_1!33888 lt!2024758)))) (ite ((_ is Empty!14872) (right!41660 (c!837809 (_1!33888 lt!2024758)))) 0 (ite ((_ is Leaf!24741) (right!41660 (c!837809 (_1!33888 lt!2024758)))) 1 (cheight!15083 (right!41660 (c!837809 (_1!33888 lt!2024758)))))))))

(assert (=> b!4923062 d!1583899))

(declare-fun d!1583901 () Bool)

(declare-fun c!838226 () Bool)

(assert (=> d!1583901 (= c!838226 ((_ is Nil!56685) lt!2025192))))

(declare-fun e!3076675 () (InoxSet C!26956))

(assert (=> d!1583901 (= (content!10066 lt!2025192) e!3076675)))

(declare-fun b!4923761 () Bool)

(assert (=> b!4923761 (= e!3076675 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923762 () Bool)

(assert (=> b!4923762 (= e!3076675 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025192) true) (content!10066 (t!367249 lt!2025192))))))

(assert (= (and d!1583901 c!838226) b!4923761))

(assert (= (and d!1583901 (not c!838226)) b!4923762))

(declare-fun m!5939650 () Bool)

(assert (=> b!4923762 m!5939650))

(declare-fun m!5939652 () Bool)

(assert (=> b!4923762 m!5939652))

(assert (=> d!1583659 d!1583901))

(assert (=> d!1583659 d!1583767))

(declare-fun d!1583903 () Bool)

(declare-fun c!838227 () Bool)

(assert (=> d!1583903 (= c!838227 ((_ is Nil!56685) (Cons!56685 lt!2024743 Nil!56685)))))

(declare-fun e!3076676 () (InoxSet C!26956))

(assert (=> d!1583903 (= (content!10066 (Cons!56685 lt!2024743 Nil!56685)) e!3076676)))

(declare-fun b!4923763 () Bool)

(assert (=> b!4923763 (= e!3076676 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923764 () Bool)

(assert (=> b!4923764 (= e!3076676 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (Cons!56685 lt!2024743 Nil!56685)) true) (content!10066 (t!367249 (Cons!56685 lt!2024743 Nil!56685)))))))

(assert (= (and d!1583903 c!838227) b!4923763))

(assert (= (and d!1583903 (not c!838227)) b!4923764))

(declare-fun m!5939654 () Bool)

(assert (=> b!4923764 m!5939654))

(declare-fun m!5939656 () Bool)

(assert (=> b!4923764 m!5939656))

(assert (=> d!1583659 d!1583903))

(declare-fun d!1583905 () Bool)

(assert (=> d!1583905 (= (flatMap!262 z!3559 lambda!245170) (choose!36048 z!3559 lambda!245170))))

(declare-fun bs!1179328 () Bool)

(assert (= bs!1179328 d!1583905))

(declare-fun m!5939658 () Bool)

(assert (=> bs!1179328 m!5939658))

(assert (=> d!1583727 d!1583905))

(declare-fun b!4923779 () Bool)

(declare-fun e!3076687 () List!56809)

(assert (=> b!4923779 (= e!3076687 (Cons!56685 (h!63133 (list!17947 input!5492)) (take!577 (t!367249 (list!17947 input!5492)) (- lt!2024322 1))))))

(declare-fun b!4923780 () Bool)

(declare-fun e!3076685 () Int)

(assert (=> b!4923780 (= e!3076685 0)))

(declare-fun b!4923781 () Bool)

(declare-fun e!3076688 () Bool)

(declare-fun lt!2025372 () List!56809)

(assert (=> b!4923781 (= e!3076688 (= (size!37476 lt!2025372) e!3076685))))

(declare-fun c!838236 () Bool)

(assert (=> b!4923781 (= c!838236 (<= lt!2024322 0))))

(declare-fun d!1583907 () Bool)

(assert (=> d!1583907 e!3076688))

(declare-fun res!2101862 () Bool)

(assert (=> d!1583907 (=> (not res!2101862) (not e!3076688))))

(assert (=> d!1583907 (= res!2101862 (= ((_ map implies) (content!10066 lt!2025372) (content!10066 (list!17947 input!5492))) ((as const (InoxSet C!26956)) true)))))

(assert (=> d!1583907 (= lt!2025372 e!3076687)))

(declare-fun c!838234 () Bool)

(assert (=> d!1583907 (= c!838234 (or ((_ is Nil!56685) (list!17947 input!5492)) (<= lt!2024322 0)))))

(assert (=> d!1583907 (= (take!577 (list!17947 input!5492) lt!2024322) lt!2025372)))

(declare-fun b!4923782 () Bool)

(assert (=> b!4923782 (= e!3076687 Nil!56685)))

(declare-fun b!4923783 () Bool)

(declare-fun e!3076686 () Int)

(assert (=> b!4923783 (= e!3076686 lt!2024322)))

(declare-fun b!4923784 () Bool)

(assert (=> b!4923784 (= e!3076686 (size!37476 (list!17947 input!5492)))))

(declare-fun b!4923785 () Bool)

(assert (=> b!4923785 (= e!3076685 e!3076686)))

(declare-fun c!838235 () Bool)

(assert (=> b!4923785 (= c!838235 (>= lt!2024322 (size!37476 (list!17947 input!5492))))))

(assert (= (and d!1583907 c!838234) b!4923782))

(assert (= (and d!1583907 (not c!838234)) b!4923779))

(assert (= (and d!1583907 res!2101862) b!4923781))

(assert (= (and b!4923781 c!838236) b!4923780))

(assert (= (and b!4923781 (not c!838236)) b!4923785))

(assert (= (and b!4923785 c!838235) b!4923784))

(assert (= (and b!4923785 (not c!838235)) b!4923783))

(declare-fun m!5939660 () Bool)

(assert (=> d!1583907 m!5939660))

(assert (=> d!1583907 m!5937560))

(assert (=> d!1583907 m!5939224))

(assert (=> b!4923785 m!5937560))

(assert (=> b!4923785 m!5937644))

(assert (=> b!4923779 m!5939514))

(declare-fun m!5939662 () Bool)

(assert (=> b!4923781 m!5939662))

(assert (=> b!4923784 m!5937560))

(assert (=> b!4923784 m!5937644))

(assert (=> b!4923416 d!1583907))

(declare-fun b!4923788 () Bool)

(declare-fun res!2101863 () Bool)

(declare-fun e!3076689 () Bool)

(assert (=> b!4923788 (=> (not res!2101863) (not e!3076689))))

(declare-fun lt!2025373 () List!56809)

(assert (=> b!4923788 (= res!2101863 (= (size!37476 lt!2025373) (+ (size!37476 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)))) (size!37476 lt!2024403))))))

(declare-fun b!4923786 () Bool)

(declare-fun e!3076690 () List!56809)

(assert (=> b!4923786 (= e!3076690 lt!2024403)))

(declare-fun b!4923787 () Bool)

(assert (=> b!4923787 (= e!3076690 (Cons!56685 (h!63133 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)))) (++!12322 (t!367249 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)))) lt!2024403)))))

(declare-fun d!1583909 () Bool)

(assert (=> d!1583909 e!3076689))

(declare-fun res!2101864 () Bool)

(assert (=> d!1583909 (=> (not res!2101864) (not e!3076689))))

(assert (=> d!1583909 (= res!2101864 (= (content!10066 lt!2025373) ((_ map or) (content!10066 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)))) (content!10066 lt!2024403))))))

(assert (=> d!1583909 (= lt!2025373 e!3076690)))

(declare-fun c!838237 () Bool)

(assert (=> d!1583909 (= c!838237 ((_ is Nil!56685) (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)))))))

(assert (=> d!1583909 (= (++!12322 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))) lt!2024403) lt!2025373)))

(declare-fun b!4923789 () Bool)

(assert (=> b!4923789 (= e!3076689 (or (not (= lt!2024403 Nil!56685)) (= lt!2025373 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685))))))))

(assert (= (and d!1583909 c!838237) b!4923786))

(assert (= (and d!1583909 (not c!838237)) b!4923787))

(assert (= (and d!1583909 res!2101864) b!4923788))

(assert (= (and b!4923788 res!2101863) b!4923789))

(declare-fun m!5939664 () Bool)

(assert (=> b!4923788 m!5939664))

(assert (=> b!4923788 m!5939520))

(assert (=> b!4923788 m!5938844))

(declare-fun m!5939666 () Bool)

(assert (=> b!4923787 m!5939666))

(declare-fun m!5939668 () Bool)

(assert (=> d!1583909 m!5939668))

(assert (=> d!1583909 m!5939326))

(assert (=> d!1583909 m!5938852))

(assert (=> b!4923267 d!1583909))

(declare-fun d!1583911 () Bool)

(assert (not d!1583911))

(assert (=> b!4922921 d!1583911))

(declare-fun d!1583913 () Bool)

(declare-fun c!838238 () Bool)

(assert (=> d!1583913 (= c!838238 ((_ is Nil!56685) lt!2025186))))

(declare-fun e!3076691 () (InoxSet C!26956))

(assert (=> d!1583913 (= (content!10066 lt!2025186) e!3076691)))

(declare-fun b!4923790 () Bool)

(assert (=> b!4923790 (= e!3076691 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923791 () Bool)

(assert (=> b!4923791 (= e!3076691 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025186) true) (content!10066 (t!367249 lt!2025186))))))

(assert (= (and d!1583913 c!838238) b!4923790))

(assert (= (and d!1583913 (not c!838238)) b!4923791))

(declare-fun m!5939670 () Bool)

(assert (=> b!4923791 m!5939670))

(declare-fun m!5939672 () Bool)

(assert (=> b!4923791 m!5939672))

(assert (=> d!1583649 d!1583913))

(assert (=> d!1583649 d!1583767))

(declare-fun d!1583915 () Bool)

(declare-fun c!838239 () Bool)

(assert (=> d!1583915 (= c!838239 ((_ is Nil!56685) (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))

(declare-fun e!3076692 () (InoxSet C!26956))

(assert (=> d!1583915 (= (content!10066 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) e!3076692)))

(declare-fun b!4923792 () Bool)

(assert (=> b!4923792 (= e!3076692 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4923793 () Bool)

(assert (=> b!4923793 (= e!3076692 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) true) (content!10066 (t!367249 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))))

(assert (= (and d!1583915 c!838239) b!4923792))

(assert (= (and d!1583915 (not c!838239)) b!4923793))

(declare-fun m!5939674 () Bool)

(assert (=> b!4923793 m!5939674))

(declare-fun m!5939676 () Bool)

(assert (=> b!4923793 m!5939676))

(assert (=> d!1583649 d!1583915))

(declare-fun d!1583917 () Bool)

(declare-fun lt!2025374 () Int)

(assert (=> d!1583917 (>= lt!2025374 0)))

(declare-fun e!3076693 () Int)

(assert (=> d!1583917 (= lt!2025374 e!3076693)))

(declare-fun c!838240 () Bool)

(assert (=> d!1583917 (= c!838240 ((_ is Nil!56685) lt!2025169))))

(assert (=> d!1583917 (= (size!37476 lt!2025169) lt!2025374)))

(declare-fun b!4923794 () Bool)

(assert (=> b!4923794 (= e!3076693 0)))

(declare-fun b!4923795 () Bool)

(assert (=> b!4923795 (= e!3076693 (+ 1 (size!37476 (t!367249 lt!2025169))))))

(assert (= (and d!1583917 c!838240) b!4923794))

(assert (= (and d!1583917 (not c!838240)) b!4923795))

(declare-fun m!5939678 () Bool)

(assert (=> b!4923795 m!5939678))

(assert (=> b!4923254 d!1583917))

(assert (=> b!4923254 d!1583487))

(declare-fun d!1583919 () Bool)

(declare-fun lt!2025375 () Int)

(assert (=> d!1583919 (>= lt!2025375 0)))

(declare-fun e!3076694 () Int)

(assert (=> d!1583919 (= lt!2025375 e!3076694)))

(declare-fun c!838241 () Bool)

(assert (=> d!1583919 (= c!838241 ((_ is Nil!56685) (Cons!56685 lt!2024400 Nil!56685)))))

(assert (=> d!1583919 (= (size!37476 (Cons!56685 lt!2024400 Nil!56685)) lt!2025375)))

(declare-fun b!4923796 () Bool)

(assert (=> b!4923796 (= e!3076694 0)))

(declare-fun b!4923797 () Bool)

(assert (=> b!4923797 (= e!3076694 (+ 1 (size!37476 (t!367249 (Cons!56685 lt!2024400 Nil!56685)))))))

(assert (= (and d!1583919 c!838241) b!4923796))

(assert (= (and d!1583919 (not c!838241)) b!4923797))

(declare-fun m!5939680 () Bool)

(assert (=> b!4923797 m!5939680))

(assert (=> b!4923254 d!1583919))

(declare-fun d!1583921 () Bool)

(assert (=> d!1583921 (= (isEmpty!30570 (getLanguageWitness!613 z!3559)) (not ((_ is Some!14158) (getLanguageWitness!613 z!3559))))))

(assert (=> d!1583411 d!1583921))

(declare-fun bs!1179329 () Bool)

(declare-fun d!1583923 () Bool)

(assert (= bs!1179329 (and d!1583923 d!1583411)))

(declare-fun lambda!245180 () Int)

(assert (=> bs!1179329 (not (= lambda!245180 lambda!245141))))

(declare-fun bs!1179330 () Bool)

(assert (= bs!1179330 (and d!1583923 b!4922796)))

(assert (=> bs!1179330 (= lambda!245180 lambda!245144)))

(declare-fun bs!1179331 () Bool)

(assert (= bs!1179331 (and d!1583923 b!4922797)))

(assert (=> bs!1179331 (= lambda!245180 lambda!245145)))

(declare-fun bs!1179332 () Bool)

(assert (= bs!1179332 (and d!1583923 d!1583565)))

(assert (=> bs!1179332 (not (= lambda!245180 lambda!245166))))

(declare-fun lt!2025378 () Option!14159)

(declare-fun isDefined!11166 (Option!14159) Bool)

(assert (=> d!1583923 (= (isDefined!11166 lt!2025378) (exists!1245 z!3559 lambda!245180))))

(declare-fun e!3076697 () Option!14159)

(assert (=> d!1583923 (= lt!2025378 e!3076697)))

(declare-fun c!838250 () Bool)

(assert (=> d!1583923 (= c!838250 (exists!1245 z!3559 lambda!245180))))

(assert (=> d!1583923 (= (getLanguageWitness!613 z!3559) lt!2025378)))

(declare-fun b!4923802 () Bool)

(declare-fun getLanguageWitness!615 (Context!6030) Option!14159)

(declare-fun getWitness!631 ((InoxSet Context!6030) Int) Context!6030)

(assert (=> b!4923802 (= e!3076697 (getLanguageWitness!615 (getWitness!631 z!3559 lambda!245180)))))

(declare-fun b!4923803 () Bool)

(assert (=> b!4923803 (= e!3076697 None!14158)))

(assert (= (and d!1583923 c!838250) b!4923802))

(assert (= (and d!1583923 (not c!838250)) b!4923803))

(declare-fun m!5939682 () Bool)

(assert (=> d!1583923 m!5939682))

(declare-fun m!5939684 () Bool)

(assert (=> d!1583923 m!5939684))

(assert (=> d!1583923 m!5939684))

(declare-fun m!5939686 () Bool)

(assert (=> b!4923802 m!5939686))

(assert (=> b!4923802 m!5939686))

(declare-fun m!5939688 () Bool)

(assert (=> b!4923802 m!5939688))

(assert (=> d!1583411 d!1583923))

(declare-fun d!1583925 () Bool)

(declare-fun lt!2025381 () Bool)

(declare-fun forall!13134 (List!56811 Int) Bool)

(assert (=> d!1583925 (= lt!2025381 (forall!13134 (toList!7941 z!3559) lambda!245141))))

(declare-fun choose!36052 ((InoxSet Context!6030) Int) Bool)

(assert (=> d!1583925 (= lt!2025381 (choose!36052 z!3559 lambda!245141))))

(assert (=> d!1583925 (= (forall!13132 z!3559 lambda!245141) lt!2025381)))

(declare-fun bs!1179333 () Bool)

(assert (= bs!1179333 d!1583925))

(assert (=> bs!1179333 m!5938014))

(assert (=> bs!1179333 m!5938014))

(declare-fun m!5939690 () Bool)

(assert (=> bs!1179333 m!5939690))

(declare-fun m!5939692 () Bool)

(assert (=> bs!1179333 m!5939692))

(assert (=> d!1583411 d!1583925))

(declare-fun d!1583927 () Bool)

(assert (not d!1583927))

(assert (=> b!4923319 d!1583927))

(declare-fun d!1583929 () Bool)

(assert (=> d!1583929 (= (height!1982 (left!41330 (left!41330 (c!837809 input!5492)))) (ite ((_ is Empty!14872) (left!41330 (left!41330 (c!837809 input!5492)))) 0 (ite ((_ is Leaf!24741) (left!41330 (left!41330 (c!837809 input!5492)))) 1 (cheight!15083 (left!41330 (left!41330 (c!837809 input!5492)))))))))

(assert (=> b!4923038 d!1583929))

(declare-fun d!1583931 () Bool)

(assert (=> d!1583931 (= (height!1982 (right!41660 (left!41330 (c!837809 input!5492)))) (ite ((_ is Empty!14872) (right!41660 (left!41330 (c!837809 input!5492)))) 0 (ite ((_ is Leaf!24741) (right!41660 (left!41330 (c!837809 input!5492)))) 1 (cheight!15083 (right!41660 (left!41330 (c!837809 input!5492)))))))))

(assert (=> b!4923038 d!1583931))

(assert (=> b!4923231 d!1583851))

(declare-fun d!1583933 () Bool)

(declare-fun lt!2025382 () Bool)

(assert (=> d!1583933 (= lt!2025382 (isEmpty!30566 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024758))))))))

(assert (=> d!1583933 (= lt!2025382 (= (size!37478 (left!41330 (c!837809 (_2!33888 lt!2024758)))) 0))))

(assert (=> d!1583933 (= (isEmpty!30568 (left!41330 (c!837809 (_2!33888 lt!2024758)))) lt!2025382)))

(declare-fun bs!1179334 () Bool)

(assert (= bs!1179334 d!1583933))

(declare-fun m!5939694 () Bool)

(assert (=> bs!1179334 m!5939694))

(assert (=> bs!1179334 m!5939694))

(declare-fun m!5939696 () Bool)

(assert (=> bs!1179334 m!5939696))

(declare-fun m!5939698 () Bool)

(assert (=> bs!1179334 m!5939698))

(assert (=> b!4922967 d!1583933))

(declare-fun d!1583935 () Bool)

(declare-fun res!2101865 () Bool)

(declare-fun e!3076698 () Bool)

(assert (=> d!1583935 (=> (not res!2101865) (not e!3076698))))

(assert (=> d!1583935 (= res!2101865 (<= (size!37476 (list!17950 (xs!18192 (left!41330 (c!837809 input!5492))))) 512))))

(assert (=> d!1583935 (= (inv!73469 (left!41330 (c!837809 input!5492))) e!3076698)))

(declare-fun b!4923804 () Bool)

(declare-fun res!2101866 () Bool)

(assert (=> b!4923804 (=> (not res!2101866) (not e!3076698))))

(assert (=> b!4923804 (= res!2101866 (= (csize!29975 (left!41330 (c!837809 input!5492))) (size!37476 (list!17950 (xs!18192 (left!41330 (c!837809 input!5492)))))))))

(declare-fun b!4923805 () Bool)

(assert (=> b!4923805 (= e!3076698 (and (> (csize!29975 (left!41330 (c!837809 input!5492))) 0) (<= (csize!29975 (left!41330 (c!837809 input!5492))) 512)))))

(assert (= (and d!1583935 res!2101865) b!4923804))

(assert (= (and b!4923804 res!2101866) b!4923805))

(assert (=> d!1583935 m!5939604))

(assert (=> d!1583935 m!5939604))

(declare-fun m!5939700 () Bool)

(assert (=> d!1583935 m!5939700))

(assert (=> b!4923804 m!5939604))

(assert (=> b!4923804 m!5939604))

(assert (=> b!4923804 m!5939700))

(assert (=> b!4923029 d!1583935))

(declare-fun d!1583937 () Bool)

(declare-fun lt!2025383 () Bool)

(assert (=> d!1583937 (= lt!2025383 (isEmpty!30566 (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024758))))))))

(assert (=> d!1583937 (= lt!2025383 (= (size!37478 (right!41660 (c!837809 (_1!33888 lt!2024758)))) 0))))

(assert (=> d!1583937 (= (isEmpty!30568 (right!41660 (c!837809 (_1!33888 lt!2024758)))) lt!2025383)))

(declare-fun bs!1179335 () Bool)

(assert (= bs!1179335 d!1583937))

(declare-fun m!5939702 () Bool)

(assert (=> bs!1179335 m!5939702))

(assert (=> bs!1179335 m!5939702))

(declare-fun m!5939704 () Bool)

(assert (=> bs!1179335 m!5939704))

(declare-fun m!5939706 () Bool)

(assert (=> bs!1179335 m!5939706))

(assert (=> b!4923061 d!1583937))

(declare-fun b!4923808 () Bool)

(declare-fun e!3076700 () List!56809)

(assert (=> b!4923808 (= e!3076700 (list!17950 (xs!18192 (c!837809 (_2!33888 lt!2024748)))))))

(declare-fun b!4923806 () Bool)

(declare-fun e!3076699 () List!56809)

(assert (=> b!4923806 (= e!3076699 Nil!56685)))

(declare-fun d!1583939 () Bool)

(declare-fun c!838251 () Bool)

(assert (=> d!1583939 (= c!838251 ((_ is Empty!14872) (c!837809 (_2!33888 lt!2024748))))))

(assert (=> d!1583939 (= (list!17949 (c!837809 (_2!33888 lt!2024748))) e!3076699)))

(declare-fun b!4923809 () Bool)

(assert (=> b!4923809 (= e!3076700 (++!12322 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024748)))) (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024748))))))))

(declare-fun b!4923807 () Bool)

(assert (=> b!4923807 (= e!3076699 e!3076700)))

(declare-fun c!838252 () Bool)

(assert (=> b!4923807 (= c!838252 ((_ is Leaf!24741) (c!837809 (_2!33888 lt!2024748))))))

(assert (= (and d!1583939 c!838251) b!4923806))

(assert (= (and d!1583939 (not c!838251)) b!4923807))

(assert (= (and b!4923807 c!838252) b!4923808))

(assert (= (and b!4923807 (not c!838252)) b!4923809))

(declare-fun m!5939708 () Bool)

(assert (=> b!4923808 m!5939708))

(declare-fun m!5939710 () Bool)

(assert (=> b!4923809 m!5939710))

(declare-fun m!5939712 () Bool)

(assert (=> b!4923809 m!5939712))

(assert (=> b!4923809 m!5939710))

(assert (=> b!4923809 m!5939712))

(declare-fun m!5939714 () Bool)

(assert (=> b!4923809 m!5939714))

(assert (=> d!1583673 d!1583939))

(declare-fun b!4923880 () Bool)

(declare-fun e!3076733 () Conc!14872)

(assert (=> b!4923880 (= e!3076733 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)))))

(declare-fun d!1583941 () Bool)

(declare-fun e!3076732 () Bool)

(assert (=> d!1583941 e!3076732))

(declare-fun res!2101890 () Bool)

(assert (=> d!1583941 (=> (not res!2101890) (not e!3076732))))

(declare-fun appendAssocInst!890 (Conc!14872 Conc!14872) Bool)

(assert (=> d!1583941 (= res!2101890 (appendAssocInst!890 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))) (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))

(declare-fun lt!2025395 () Conc!14872)

(assert (=> d!1583941 (= lt!2025395 e!3076733)))

(declare-fun c!838279 () Bool)

(assert (=> d!1583941 (= c!838279 (= (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))) Empty!14872))))

(declare-fun e!3076735 () Bool)

(assert (=> d!1583941 e!3076735))

(declare-fun res!2101888 () Bool)

(assert (=> d!1583941 (=> (not res!2101888) (not e!3076735))))

(assert (=> d!1583941 (= res!2101888 (isBalanced!4085 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))))))

(assert (=> d!1583941 (= (++!12323 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))) (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))) lt!2025395)))

(declare-fun bm!343156 () Bool)

(declare-fun call!343164 () Conc!14872)

(declare-fun call!343171 () Conc!14872)

(assert (=> bm!343156 (= call!343164 call!343171)))

(declare-fun b!4923881 () Bool)

(declare-fun c!838278 () Bool)

(declare-fun call!343170 () Int)

(declare-fun call!343175 () Int)

(assert (=> b!4923881 (= c!838278 (>= call!343170 call!343175))))

(declare-fun e!3076742 () Conc!14872)

(declare-fun e!3076737 () Conc!14872)

(assert (=> b!4923881 (= e!3076742 e!3076737)))

(declare-fun lt!2025399 () Conc!14872)

(declare-fun c!838277 () Bool)

(declare-fun lt!2025398 () Conc!14872)

(declare-fun c!838280 () Bool)

(declare-fun call!343168 () Conc!14872)

(declare-fun bm!343157 () Bool)

(declare-fun c!838281 () Bool)

(declare-fun c!838284 () Bool)

(declare-fun call!343166 () Conc!14872)

(declare-fun <>!380 (Conc!14872 Conc!14872) Conc!14872)

(assert (=> bm!343157 (= call!343171 (<>!380 (ite c!838284 (ite c!838277 (left!41330 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (ite c!838280 (left!41330 (right!41660 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))))) (left!41330 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))))) (ite c!838281 call!343166 lt!2025398)) (ite c!838284 (ite c!838277 call!343168 (ite c!838280 lt!2025399 (left!41330 (right!41660 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))))))) (ite c!838281 (right!41660 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))) call!343166))))))

(declare-fun b!4923882 () Bool)

(declare-fun e!3076741 () Conc!14872)

(assert (=> b!4923882 (= e!3076741 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))))))

(declare-fun bm!343158 () Bool)

(declare-fun call!343172 () Conc!14872)

(assert (=> bm!343158 (= call!343168 call!343172)))

(declare-fun b!4923883 () Bool)

(declare-fun e!3076744 () Conc!14872)

(assert (=> b!4923883 (= e!3076744 call!343164)))

(declare-fun b!4923884 () Bool)

(declare-fun res!2101886 () Bool)

(assert (=> b!4923884 (=> (not res!2101886) (not e!3076732))))

(assert (=> b!4923884 (= res!2101886 (isBalanced!4085 lt!2025395))))

(declare-fun bm!343159 () Bool)

(assert (=> bm!343159 (= call!343172 (++!12323 (ite c!838284 (ite c!838277 (right!41660 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (right!41660 (right!41660 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))))) (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (ite c!838284 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)) (ite c!838278 (left!41330 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))) (left!41330 (left!41330 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))))))

(declare-fun b!4923885 () Bool)

(assert (=> b!4923885 (= e!3076733 e!3076741)))

(declare-fun c!838283 () Bool)

(assert (=> b!4923885 (= c!838283 (= (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)) Empty!14872))))

(declare-fun b!4923886 () Bool)

(declare-fun call!343163 () Conc!14872)

(assert (=> b!4923886 (= e!3076737 call!343163)))

(declare-fun b!4923887 () Bool)

(declare-fun res!2101885 () Bool)

(assert (=> b!4923887 (=> (not res!2101885) (not e!3076732))))

(assert (=> b!4923887 (= res!2101885 (>= (height!1982 lt!2025395) (max!0 (height!1982 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (height!1982 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))))

(declare-fun c!838282 () Bool)

(declare-fun call!343162 () Conc!14872)

(declare-fun bm!343160 () Bool)

(declare-fun call!343173 () Conc!14872)

(declare-fun call!343169 () Conc!14872)

(assert (=> bm!343160 (= call!343173 (<>!380 (ite c!838282 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))) (ite c!838284 (ite c!838280 (left!41330 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) call!343169) (ite c!838278 call!343162 (ite c!838281 lt!2025398 (right!41660 (left!41330 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)))))))) (ite c!838282 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)) (ite c!838284 (ite c!838280 call!343169 lt!2025399) (ite c!838278 (right!41660 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))) (ite c!838281 (right!41660 (left!41330 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)))) (right!41660 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)))))))))))

(declare-fun b!4923888 () Bool)

(declare-fun e!3076736 () Conc!14872)

(declare-fun call!343167 () Conc!14872)

(assert (=> b!4923888 (= e!3076736 call!343167)))

(declare-fun call!343165 () Int)

(declare-fun bm!343161 () Bool)

(assert (=> bm!343161 (= call!343165 (height!1982 (ite c!838284 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))) lt!2025398)))))

(declare-fun bm!343162 () Bool)

(declare-fun call!343174 () Conc!14872)

(assert (=> bm!343162 (= call!343174 call!343171)))

(declare-fun b!4923889 () Bool)

(declare-fun e!3076743 () Conc!14872)

(assert (=> b!4923889 (= e!3076743 e!3076742)))

(declare-fun lt!2025396 () Int)

(assert (=> b!4923889 (= c!838284 (< lt!2025396 (- 1)))))

(declare-fun bm!343163 () Bool)

(assert (=> bm!343163 (= call!343162 call!343172)))

(declare-fun b!4923890 () Bool)

(assert (=> b!4923890 (= e!3076743 call!343173)))

(declare-fun b!4923891 () Bool)

(assert (=> b!4923891 (= c!838277 (>= call!343170 call!343175))))

(declare-fun e!3076734 () Conc!14872)

(assert (=> b!4923891 (= e!3076742 e!3076734)))

(declare-fun bm!343164 () Bool)

(declare-fun call!343161 () Conc!14872)

(assert (=> bm!343164 (= call!343161 call!343173)))

(declare-fun b!4923892 () Bool)

(assert (=> b!4923892 (= c!838282 (and (<= (- 1) lt!2025396) (<= lt!2025396 1)))))

(assert (=> b!4923892 (= lt!2025396 (- (height!1982 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))) (height!1982 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492))))))))

(assert (=> b!4923892 (= e!3076741 e!3076743)))

(declare-fun call!343176 () Int)

(declare-fun bm!343165 () Bool)

(assert (=> bm!343165 (= call!343176 (height!1982 (ite c!838284 lt!2025399 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)))))))

(declare-fun b!4923893 () Bool)

(assert (=> b!4923893 (= e!3076734 call!343174)))

(declare-fun b!4923894 () Bool)

(assert (=> b!4923894 (= e!3076736 call!343167)))

(declare-fun b!4923895 () Bool)

(assert (=> b!4923895 (= e!3076732 (= (list!17949 lt!2025395) (++!12322 (list!17949 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (list!17949 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))))

(declare-fun b!4923896 () Bool)

(assert (=> b!4923896 (= e!3076737 e!3076744)))

(assert (=> b!4923896 (= lt!2025398 call!343162)))

(assert (=> b!4923896 (= c!838281 (= call!343165 (- call!343176 3)))))

(declare-fun b!4923897 () Bool)

(assert (=> b!4923897 (= e!3076734 e!3076736)))

(assert (=> b!4923897 (= lt!2025399 call!343168)))

(assert (=> b!4923897 (= c!838280 (= call!343176 (- call!343165 3)))))

(declare-fun bm!343166 () Bool)

(assert (=> bm!343166 (= call!343169 call!343174)))

(declare-fun bm!343167 () Bool)

(assert (=> bm!343167 (= call!343170 (height!1982 (ite c!838284 (left!41330 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (right!41660 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))))

(declare-fun bm!343168 () Bool)

(assert (=> bm!343168 (= call!343166 call!343163)))

(declare-fun bm!343169 () Bool)

(assert (=> bm!343169 (= call!343175 (height!1982 (ite c!838284 (right!41660 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (left!41330 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))))

(declare-fun b!4923898 () Bool)

(assert (=> b!4923898 (= e!3076744 call!343164)))

(declare-fun b!4923899 () Bool)

(declare-fun res!2101887 () Bool)

(assert (=> b!4923899 (=> (not res!2101887) (not e!3076732))))

(assert (=> b!4923899 (= res!2101887 (<= (height!1982 lt!2025395) (+ (max!0 (height!1982 (ite c!838072 (_2!33890 lt!2025149) (left!41330 (c!837809 input!5492)))) (height!1982 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145)))) 1)))))

(declare-fun bm!343170 () Bool)

(assert (=> bm!343170 (= call!343163 call!343161)))

(declare-fun bm!343171 () Bool)

(assert (=> bm!343171 (= call!343167 call!343161)))

(declare-fun b!4923900 () Bool)

(assert (=> b!4923900 (= e!3076735 (isBalanced!4085 (ite c!838072 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025145))))))

(assert (= (and d!1583941 res!2101888) b!4923900))

(assert (= (and d!1583941 c!838279) b!4923880))

(assert (= (and d!1583941 (not c!838279)) b!4923885))

(assert (= (and b!4923885 c!838283) b!4923882))

(assert (= (and b!4923885 (not c!838283)) b!4923892))

(assert (= (and b!4923892 c!838282) b!4923890))

(assert (= (and b!4923892 (not c!838282)) b!4923889))

(assert (= (and b!4923889 c!838284) b!4923891))

(assert (= (and b!4923889 (not c!838284)) b!4923881))

(assert (= (and b!4923891 c!838277) b!4923893))

(assert (= (and b!4923891 (not c!838277)) b!4923897))

(assert (= (and b!4923897 c!838280) b!4923894))

(assert (= (and b!4923897 (not c!838280)) b!4923888))

(assert (= (or b!4923894 b!4923888) bm!343166))

(assert (= (or b!4923894 b!4923888) bm!343171))

(assert (= (or b!4923893 b!4923897) bm!343158))

(assert (= (or b!4923893 bm!343166) bm!343162))

(assert (= (and b!4923881 c!838278) b!4923886))

(assert (= (and b!4923881 (not c!838278)) b!4923896))

(assert (= (and b!4923896 c!838281) b!4923883))

(assert (= (and b!4923896 (not c!838281)) b!4923898))

(assert (= (or b!4923883 b!4923898) bm!343168))

(assert (= (or b!4923883 b!4923898) bm!343156))

(assert (= (or b!4923886 b!4923896) bm!343163))

(assert (= (or b!4923886 bm!343168) bm!343170))

(assert (= (or b!4923891 b!4923881) bm!343167))

(assert (= (or b!4923897 b!4923896) bm!343165))

(assert (= (or bm!343171 bm!343170) bm!343164))

(assert (= (or bm!343158 bm!343163) bm!343159))

(assert (= (or bm!343162 bm!343156) bm!343157))

(assert (= (or b!4923891 b!4923881) bm!343169))

(assert (= (or b!4923897 b!4923896) bm!343161))

(assert (= (or b!4923890 bm!343164) bm!343160))

(assert (= (and d!1583941 res!2101890) b!4923884))

(assert (= (and b!4923884 res!2101886) b!4923899))

(assert (= (and b!4923899 res!2101887) b!4923887))

(assert (= (and b!4923887 res!2101885) b!4923895))

(declare-fun m!5939796 () Bool)

(assert (=> bm!343160 m!5939796))

(declare-fun m!5939798 () Bool)

(assert (=> bm!343165 m!5939798))

(declare-fun m!5939800 () Bool)

(assert (=> bm!343167 m!5939800))

(declare-fun m!5939802 () Bool)

(assert (=> b!4923899 m!5939802))

(declare-fun m!5939804 () Bool)

(assert (=> b!4923899 m!5939804))

(declare-fun m!5939806 () Bool)

(assert (=> b!4923899 m!5939806))

(assert (=> b!4923899 m!5939804))

(assert (=> b!4923899 m!5939806))

(declare-fun m!5939810 () Bool)

(assert (=> b!4923899 m!5939810))

(declare-fun m!5939818 () Bool)

(assert (=> bm!343159 m!5939818))

(declare-fun m!5939820 () Bool)

(assert (=> d!1583941 m!5939820))

(declare-fun m!5939822 () Bool)

(assert (=> d!1583941 m!5939822))

(declare-fun m!5939824 () Bool)

(assert (=> b!4923895 m!5939824))

(declare-fun m!5939826 () Bool)

(assert (=> b!4923895 m!5939826))

(declare-fun m!5939828 () Bool)

(assert (=> b!4923895 m!5939828))

(assert (=> b!4923895 m!5939826))

(assert (=> b!4923895 m!5939828))

(declare-fun m!5939830 () Bool)

(assert (=> b!4923895 m!5939830))

(declare-fun m!5939832 () Bool)

(assert (=> bm!343161 m!5939832))

(assert (=> b!4923892 m!5939806))

(assert (=> b!4923892 m!5939804))

(declare-fun m!5939834 () Bool)

(assert (=> bm!343169 m!5939834))

(declare-fun m!5939836 () Bool)

(assert (=> b!4923900 m!5939836))

(assert (=> b!4923887 m!5939802))

(assert (=> b!4923887 m!5939804))

(assert (=> b!4923887 m!5939806))

(assert (=> b!4923887 m!5939804))

(assert (=> b!4923887 m!5939806))

(assert (=> b!4923887 m!5939810))

(declare-fun m!5939842 () Bool)

(assert (=> bm!343157 m!5939842))

(declare-fun m!5939844 () Bool)

(assert (=> b!4923884 m!5939844))

(assert (=> bm!343073 d!1583941))

(declare-fun d!1583983 () Bool)

(assert (=> d!1583983 (= (head!10520 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))) (h!63133 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))))

(assert (=> b!4923259 d!1583983))

(assert (=> b!4923259 d!1583521))

(declare-fun d!1583987 () Bool)

(assert (not d!1583987))

(assert (=> b!4923253 d!1583987))

(declare-fun b!4923925 () Bool)

(declare-fun res!2101903 () Bool)

(declare-fun e!3076758 () Bool)

(assert (=> b!4923925 (=> (not res!2101903) (not e!3076758))))

(assert (=> b!4923925 (= res!2101903 (isBalanced!4085 (right!41660 (_2!33890 lt!2025152))))))

(declare-fun b!4923926 () Bool)

(assert (=> b!4923926 (= e!3076758 (not (isEmpty!30568 (right!41660 (_2!33890 lt!2025152)))))))

(declare-fun d!1583991 () Bool)

(declare-fun res!2101902 () Bool)

(declare-fun e!3076759 () Bool)

(assert (=> d!1583991 (=> res!2101902 e!3076759)))

(assert (=> d!1583991 (= res!2101902 (not ((_ is Node!14872) (_2!33890 lt!2025152))))))

(assert (=> d!1583991 (= (isBalanced!4085 (_2!33890 lt!2025152)) e!3076759)))

(declare-fun b!4923927 () Bool)

(declare-fun res!2101904 () Bool)

(assert (=> b!4923927 (=> (not res!2101904) (not e!3076758))))

(assert (=> b!4923927 (= res!2101904 (<= (- (height!1982 (left!41330 (_2!33890 lt!2025152))) (height!1982 (right!41660 (_2!33890 lt!2025152)))) 1))))

(declare-fun b!4923928 () Bool)

(declare-fun res!2101905 () Bool)

(assert (=> b!4923928 (=> (not res!2101905) (not e!3076758))))

(assert (=> b!4923928 (= res!2101905 (not (isEmpty!30568 (left!41330 (_2!33890 lt!2025152)))))))

(declare-fun b!4923929 () Bool)

(declare-fun res!2101901 () Bool)

(assert (=> b!4923929 (=> (not res!2101901) (not e!3076758))))

(assert (=> b!4923929 (= res!2101901 (isBalanced!4085 (left!41330 (_2!33890 lt!2025152))))))

(declare-fun b!4923930 () Bool)

(assert (=> b!4923930 (= e!3076759 e!3076758)))

(declare-fun res!2101900 () Bool)

(assert (=> b!4923930 (=> (not res!2101900) (not e!3076758))))

(assert (=> b!4923930 (= res!2101900 (<= (- 1) (- (height!1982 (left!41330 (_2!33890 lt!2025152))) (height!1982 (right!41660 (_2!33890 lt!2025152))))))))

(assert (= (and d!1583991 (not res!2101902)) b!4923930))

(assert (= (and b!4923930 res!2101900) b!4923927))

(assert (= (and b!4923927 res!2101904) b!4923929))

(assert (= (and b!4923929 res!2101901) b!4923925))

(assert (= (and b!4923925 res!2101903) b!4923928))

(assert (= (and b!4923928 res!2101905) b!4923926))

(declare-fun m!5939856 () Bool)

(assert (=> b!4923926 m!5939856))

(declare-fun m!5939858 () Bool)

(assert (=> b!4923930 m!5939858))

(declare-fun m!5939860 () Bool)

(assert (=> b!4923930 m!5939860))

(assert (=> b!4923927 m!5939858))

(assert (=> b!4923927 m!5939860))

(declare-fun m!5939862 () Bool)

(assert (=> b!4923928 m!5939862))

(declare-fun m!5939866 () Bool)

(assert (=> b!4923929 m!5939866))

(declare-fun m!5939868 () Bool)

(assert (=> b!4923925 m!5939868))

(assert (=> b!4923226 d!1583991))

(declare-fun bs!1179339 () Bool)

(declare-fun d!1583997 () Bool)

(assert (= bs!1179339 (and d!1583997 d!1583923)))

(declare-fun lambda!245181 () Int)

(assert (=> bs!1179339 (not (= lambda!245181 lambda!245180))))

(declare-fun bs!1179340 () Bool)

(assert (= bs!1179340 (and d!1583997 b!4922797)))

(assert (=> bs!1179340 (not (= lambda!245181 lambda!245145))))

(declare-fun bs!1179341 () Bool)

(assert (= bs!1179341 (and d!1583997 d!1583411)))

(assert (=> bs!1179341 (not (= lambda!245181 lambda!245141))))

(declare-fun bs!1179342 () Bool)

(assert (= bs!1179342 (and d!1583997 b!4922796)))

(assert (=> bs!1179342 (not (= lambda!245181 lambda!245144))))

(declare-fun bs!1179343 () Bool)

(assert (= bs!1179343 (and d!1583997 d!1583565)))

(assert (=> bs!1179343 (= lambda!245181 lambda!245166)))

(assert (=> d!1583997 (= (nullableZipper!810 call!342982) (exists!1245 call!342982 lambda!245181))))

(declare-fun bs!1179345 () Bool)

(assert (= bs!1179345 d!1583997))

(declare-fun m!5939882 () Bool)

(assert (=> bs!1179345 m!5939882))

(assert (=> bm!343035 d!1583997))

(declare-fun d!1584005 () Bool)

(assert (=> d!1584005 (= (isEmpty!30566 (_1!33887 lt!2025250)) ((_ is Nil!56685) (_1!33887 lt!2025250)))))

(assert (=> b!4923438 d!1584005))

(declare-fun d!1584007 () Bool)

(declare-fun res!2101935 () Bool)

(declare-fun e!3076799 () Bool)

(assert (=> d!1584007 (=> res!2101935 e!3076799)))

(assert (=> d!1584007 (= res!2101935 ((_ is ElementMatch!13373) (h!63134 (exprs!3515 setElem!27520))))))

(assert (=> d!1584007 (= (validRegex!5941 (h!63134 (exprs!3515 setElem!27520))) e!3076799)))

(declare-fun b!4923989 () Bool)

(declare-fun e!3076798 () Bool)

(declare-fun call!343183 () Bool)

(assert (=> b!4923989 (= e!3076798 call!343183)))

(declare-fun b!4923990 () Bool)

(declare-fun e!3076801 () Bool)

(assert (=> b!4923990 (= e!3076801 e!3076798)))

(declare-fun res!2101938 () Bool)

(declare-fun nullable!4608 (Regex!13373) Bool)

(assert (=> b!4923990 (= res!2101938 (not (nullable!4608 (reg!13702 (h!63134 (exprs!3515 setElem!27520))))))))

(assert (=> b!4923990 (=> (not res!2101938) (not e!3076798))))

(declare-fun b!4923991 () Bool)

(declare-fun e!3076802 () Bool)

(declare-fun call!343185 () Bool)

(assert (=> b!4923991 (= e!3076802 call!343185)))

(declare-fun bm!343178 () Bool)

(assert (=> bm!343178 (= call!343185 call!343183)))

(declare-fun b!4923992 () Bool)

(assert (=> b!4923992 (= e!3076799 e!3076801)))

(declare-fun c!838310 () Bool)

(assert (=> b!4923992 (= c!838310 ((_ is Star!13373) (h!63134 (exprs!3515 setElem!27520))))))

(declare-fun c!838309 () Bool)

(declare-fun bm!343179 () Bool)

(assert (=> bm!343179 (= call!343183 (validRegex!5941 (ite c!838310 (reg!13702 (h!63134 (exprs!3515 setElem!27520))) (ite c!838309 (regTwo!27259 (h!63134 (exprs!3515 setElem!27520))) (regTwo!27258 (h!63134 (exprs!3515 setElem!27520)))))))))

(declare-fun b!4923993 () Bool)

(declare-fun e!3076800 () Bool)

(declare-fun e!3076797 () Bool)

(assert (=> b!4923993 (= e!3076800 e!3076797)))

(declare-fun res!2101934 () Bool)

(assert (=> b!4923993 (=> (not res!2101934) (not e!3076797))))

(declare-fun call!343184 () Bool)

(assert (=> b!4923993 (= res!2101934 call!343184)))

(declare-fun b!4923994 () Bool)

(assert (=> b!4923994 (= e!3076797 call!343185)))

(declare-fun b!4923995 () Bool)

(declare-fun res!2101937 () Bool)

(assert (=> b!4923995 (=> res!2101937 e!3076800)))

(assert (=> b!4923995 (= res!2101937 (not ((_ is Concat!21946) (h!63134 (exprs!3515 setElem!27520)))))))

(declare-fun e!3076796 () Bool)

(assert (=> b!4923995 (= e!3076796 e!3076800)))

(declare-fun b!4923996 () Bool)

(assert (=> b!4923996 (= e!3076801 e!3076796)))

(assert (=> b!4923996 (= c!838309 ((_ is Union!13373) (h!63134 (exprs!3515 setElem!27520))))))

(declare-fun b!4923997 () Bool)

(declare-fun res!2101936 () Bool)

(assert (=> b!4923997 (=> (not res!2101936) (not e!3076802))))

(assert (=> b!4923997 (= res!2101936 call!343184)))

(assert (=> b!4923997 (= e!3076796 e!3076802)))

(declare-fun bm!343180 () Bool)

(assert (=> bm!343180 (= call!343184 (validRegex!5941 (ite c!838309 (regOne!27259 (h!63134 (exprs!3515 setElem!27520))) (regOne!27258 (h!63134 (exprs!3515 setElem!27520))))))))

(assert (= (and d!1584007 (not res!2101935)) b!4923992))

(assert (= (and b!4923992 c!838310) b!4923990))

(assert (= (and b!4923992 (not c!838310)) b!4923996))

(assert (= (and b!4923990 res!2101938) b!4923989))

(assert (= (and b!4923996 c!838309) b!4923997))

(assert (= (and b!4923996 (not c!838309)) b!4923995))

(assert (= (and b!4923997 res!2101936) b!4923991))

(assert (= (and b!4923995 (not res!2101937)) b!4923993))

(assert (= (and b!4923993 res!2101934) b!4923994))

(assert (= (or b!4923991 b!4923994) bm!343178))

(assert (= (or b!4923997 b!4923993) bm!343180))

(assert (= (or b!4923989 bm!343178) bm!343179))

(declare-fun m!5939988 () Bool)

(assert (=> b!4923990 m!5939988))

(declare-fun m!5939990 () Bool)

(assert (=> bm!343179 m!5939990))

(declare-fun m!5939994 () Bool)

(assert (=> bm!343180 m!5939994))

(assert (=> bs!1179304 d!1584007))

(declare-fun d!1584047 () Bool)

(assert (=> d!1584047 (= (height!1982 (left!41330 (right!41660 (c!837809 input!5492)))) (ite ((_ is Empty!14872) (left!41330 (right!41660 (c!837809 input!5492)))) 0 (ite ((_ is Leaf!24741) (left!41330 (right!41660 (c!837809 input!5492)))) 1 (cheight!15083 (left!41330 (right!41660 (c!837809 input!5492)))))))))

(assert (=> b!4922985 d!1584047))

(declare-fun d!1584049 () Bool)

(assert (=> d!1584049 (= (height!1982 (right!41660 (right!41660 (c!837809 input!5492)))) (ite ((_ is Empty!14872) (right!41660 (right!41660 (c!837809 input!5492)))) 0 (ite ((_ is Leaf!24741) (right!41660 (right!41660 (c!837809 input!5492)))) 1 (cheight!15083 (right!41660 (right!41660 (c!837809 input!5492)))))))))

(assert (=> b!4922985 d!1584049))

(declare-fun b!4924005 () Bool)

(declare-fun res!2101945 () Bool)

(declare-fun e!3076806 () Bool)

(assert (=> b!4924005 (=> (not res!2101945) (not e!3076806))))

(assert (=> b!4924005 (= res!2101945 (isBalanced!4085 (right!41660 (left!41330 (left!41330 (c!837809 input!5492))))))))

(declare-fun b!4924006 () Bool)

(assert (=> b!4924006 (= e!3076806 (not (isEmpty!30568 (right!41660 (left!41330 (left!41330 (c!837809 input!5492)))))))))

(declare-fun d!1584053 () Bool)

(declare-fun res!2101944 () Bool)

(declare-fun e!3076807 () Bool)

(assert (=> d!1584053 (=> res!2101944 e!3076807)))

(assert (=> d!1584053 (= res!2101944 (not ((_ is Node!14872) (left!41330 (left!41330 (c!837809 input!5492))))))))

(assert (=> d!1584053 (= (isBalanced!4085 (left!41330 (left!41330 (c!837809 input!5492)))) e!3076807)))

(declare-fun b!4924007 () Bool)

(declare-fun res!2101946 () Bool)

(assert (=> b!4924007 (=> (not res!2101946) (not e!3076806))))

(assert (=> b!4924007 (= res!2101946 (<= (- (height!1982 (left!41330 (left!41330 (left!41330 (c!837809 input!5492))))) (height!1982 (right!41660 (left!41330 (left!41330 (c!837809 input!5492)))))) 1))))

(declare-fun b!4924008 () Bool)

(declare-fun res!2101947 () Bool)

(assert (=> b!4924008 (=> (not res!2101947) (not e!3076806))))

(assert (=> b!4924008 (= res!2101947 (not (isEmpty!30568 (left!41330 (left!41330 (left!41330 (c!837809 input!5492)))))))))

(declare-fun b!4924009 () Bool)

(declare-fun res!2101943 () Bool)

(assert (=> b!4924009 (=> (not res!2101943) (not e!3076806))))

(assert (=> b!4924009 (= res!2101943 (isBalanced!4085 (left!41330 (left!41330 (left!41330 (c!837809 input!5492))))))))

(declare-fun b!4924010 () Bool)

(assert (=> b!4924010 (= e!3076807 e!3076806)))

(declare-fun res!2101942 () Bool)

(assert (=> b!4924010 (=> (not res!2101942) (not e!3076806))))

(assert (=> b!4924010 (= res!2101942 (<= (- 1) (- (height!1982 (left!41330 (left!41330 (left!41330 (c!837809 input!5492))))) (height!1982 (right!41660 (left!41330 (left!41330 (c!837809 input!5492))))))))))

(assert (= (and d!1584053 (not res!2101944)) b!4924010))

(assert (= (and b!4924010 res!2101942) b!4924007))

(assert (= (and b!4924007 res!2101946) b!4924009))

(assert (= (and b!4924009 res!2101943) b!4924005))

(assert (= (and b!4924005 res!2101945) b!4924008))

(assert (= (and b!4924008 res!2101947) b!4924006))

(declare-fun m!5940006 () Bool)

(assert (=> b!4924006 m!5940006))

(declare-fun m!5940008 () Bool)

(assert (=> b!4924010 m!5940008))

(declare-fun m!5940010 () Bool)

(assert (=> b!4924010 m!5940010))

(assert (=> b!4924007 m!5940008))

(assert (=> b!4924007 m!5940010))

(declare-fun m!5940014 () Bool)

(assert (=> b!4924008 m!5940014))

(declare-fun m!5940016 () Bool)

(assert (=> b!4924009 m!5940016))

(declare-fun m!5940018 () Bool)

(assert (=> b!4924005 m!5940018))

(assert (=> b!4923037 d!1584053))

(declare-fun d!1584061 () Bool)

(declare-fun lt!2025417 () Int)

(assert (=> d!1584061 (>= lt!2025417 0)))

(declare-fun e!3076811 () Int)

(assert (=> d!1584061 (= lt!2025417 e!3076811)))

(declare-fun c!838316 () Bool)

(assert (=> d!1584061 (= c!838316 ((_ is Nil!56685) lt!2025002))))

(assert (=> d!1584061 (= (size!37476 lt!2025002) lt!2025417)))

(declare-fun b!4924017 () Bool)

(assert (=> b!4924017 (= e!3076811 0)))

(declare-fun b!4924018 () Bool)

(assert (=> b!4924018 (= e!3076811 (+ 1 (size!37476 (t!367249 lt!2025002))))))

(assert (= (and d!1584061 c!838316) b!4924017))

(assert (= (and d!1584061 (not c!838316)) b!4924018))

(declare-fun m!5940020 () Bool)

(assert (=> b!4924018 m!5940020))

(assert (=> b!4922954 d!1584061))

(declare-fun d!1584065 () Bool)

(declare-fun lt!2025419 () Int)

(assert (=> d!1584065 (>= lt!2025419 0)))

(declare-fun e!3076813 () Int)

(assert (=> d!1584065 (= lt!2025419 e!3076813)))

(declare-fun c!838318 () Bool)

(assert (=> d!1584065 (= c!838318 ((_ is Nil!56685) (_1!33887 lt!2024327)))))

(assert (=> d!1584065 (= (size!37476 (_1!33887 lt!2024327)) lt!2025419)))

(declare-fun b!4924021 () Bool)

(assert (=> b!4924021 (= e!3076813 0)))

(declare-fun b!4924022 () Bool)

(assert (=> b!4924022 (= e!3076813 (+ 1 (size!37476 (t!367249 (_1!33887 lt!2024327)))))))

(assert (= (and d!1584065 c!838318) b!4924021))

(assert (= (and d!1584065 (not c!838318)) b!4924022))

(declare-fun m!5940024 () Bool)

(assert (=> b!4924022 m!5940024))

(assert (=> b!4922954 d!1584065))

(declare-fun d!1584069 () Bool)

(declare-fun lt!2025421 () Int)

(assert (=> d!1584069 (>= lt!2025421 0)))

(declare-fun e!3076815 () Int)

(assert (=> d!1584069 (= lt!2025421 e!3076815)))

(declare-fun c!838320 () Bool)

(assert (=> d!1584069 (= c!838320 ((_ is Nil!56685) (_2!33887 lt!2024327)))))

(assert (=> d!1584069 (= (size!37476 (_2!33887 lt!2024327)) lt!2025421)))

(declare-fun b!4924025 () Bool)

(assert (=> b!4924025 (= e!3076815 0)))

(declare-fun b!4924028 () Bool)

(assert (=> b!4924028 (= e!3076815 (+ 1 (size!37476 (t!367249 (_2!33887 lt!2024327)))))))

(assert (= (and d!1584069 c!838320) b!4924025))

(assert (= (and d!1584069 (not c!838320)) b!4924028))

(declare-fun m!5940030 () Bool)

(assert (=> b!4924028 m!5940030))

(assert (=> b!4922954 d!1584069))

(declare-fun b!4924035 () Bool)

(declare-fun e!3076824 () Int)

(declare-fun e!3076819 () Int)

(assert (=> b!4924035 (= e!3076824 e!3076819)))

(declare-fun c!838326 () Bool)

(assert (=> b!4924035 (= c!838326 (= (+ 0 1 1) lt!2024326))))

(declare-fun bm!343181 () Bool)

(declare-fun c!838323 () Bool)

(assert (=> bm!343181 (= c!838323 c!838326)))

(declare-fun e!3076822 () List!56809)

(declare-fun lt!2025444 () List!56809)

(declare-fun lt!2025450 () List!56809)

(declare-fun call!343194 () Unit!147131)

(assert (=> bm!343181 (= call!343194 (lemmaIsPrefixSameLengthThenSameList!1119 (ite c!838326 lt!2025444 lt!2025450) call!343042 e!3076822))))

(declare-fun bm!343182 () Bool)

(declare-fun call!343190 () C!26956)

(assert (=> bm!343182 (= call!343190 (apply!13655 input!5492 (+ 0 1 1)))))

(declare-fun bm!343183 () Bool)

(declare-fun call!343191 () List!56809)

(assert (=> bm!343183 (= call!343191 (++!12322 call!343042 (Cons!56685 call!343190 Nil!56685)))))

(declare-fun bm!343184 () Bool)

(declare-fun call!343189 () Bool)

(assert (=> bm!343184 (= call!343189 (nullableZipper!810 call!343038))))

(declare-fun b!4924036 () Bool)

(declare-fun e!3076820 () Unit!147131)

(declare-fun Unit!147176 () Unit!147131)

(assert (=> b!4924036 (= e!3076820 Unit!147176)))

(declare-fun b!4924037 () Bool)

(declare-fun e!3076821 () Int)

(declare-fun call!343192 () Int)

(assert (=> b!4924037 (= e!3076821 call!343192)))

(declare-fun b!4924038 () Bool)

(declare-fun call!343188 () List!56809)

(assert (=> b!4924038 (= e!3076822 call!343188)))

(declare-fun b!4924039 () Bool)

(declare-fun Unit!147177 () Unit!147131)

(assert (=> b!4924039 (= e!3076820 Unit!147177)))

(declare-fun lt!2025425 () List!56809)

(assert (=> b!4924039 (= lt!2025425 (list!17947 input!5492))))

(declare-fun lt!2025462 () List!56809)

(assert (=> b!4924039 (= lt!2025462 (list!17947 input!5492))))

(declare-fun lt!2025423 () Unit!147131)

(declare-fun call!343193 () Unit!147131)

(assert (=> b!4924039 (= lt!2025423 call!343193)))

(declare-fun call!343186 () Bool)

(assert (=> b!4924039 call!343186))

(declare-fun lt!2025449 () Unit!147131)

(assert (=> b!4924039 (= lt!2025449 lt!2025423)))

(assert (=> b!4924039 (= lt!2025450 (list!17947 input!5492))))

(declare-fun lt!2025434 () Unit!147131)

(assert (=> b!4924039 (= lt!2025434 call!343194)))

(assert (=> b!4924039 (= lt!2025450 call!343042)))

(declare-fun lt!2025431 () Unit!147131)

(assert (=> b!4924039 (= lt!2025431 lt!2025434)))

(assert (=> b!4924039 false))

(declare-fun bm!343185 () Bool)

(declare-fun call!343195 () List!56809)

(assert (=> bm!343185 (= call!343195 (tail!9667 call!343046))))

(declare-fun lt!2025433 () Int)

(declare-fun d!1584075 () Bool)

(assert (=> d!1584075 (= (size!37476 (_1!33887 (findLongestMatchInnerZipper!58 call!343038 call!343042 (+ 0 1 1) call!343046 (list!17947 input!5492) lt!2024326))) lt!2025433)))

(assert (=> d!1584075 (= lt!2025433 e!3076824)))

(declare-fun c!838322 () Bool)

(assert (=> d!1584075 (= c!838322 (lostCauseZipper!691 call!343038))))

(declare-fun lt!2025464 () Unit!147131)

(declare-fun Unit!147178 () Unit!147131)

(assert (=> d!1584075 (= lt!2025464 Unit!147178)))

(assert (=> d!1584075 (= (getSuffix!2949 (list!17947 input!5492) call!343042) call!343046)))

(declare-fun lt!2025439 () Unit!147131)

(declare-fun lt!2025452 () Unit!147131)

(assert (=> d!1584075 (= lt!2025439 lt!2025452)))

(declare-fun lt!2025432 () List!56809)

(assert (=> d!1584075 (= call!343046 lt!2025432)))

(assert (=> d!1584075 (= lt!2025452 (lemmaSamePrefixThenSameSuffix!2365 call!343042 call!343046 call!343042 lt!2025432 (list!17947 input!5492)))))

(assert (=> d!1584075 (= lt!2025432 (getSuffix!2949 (list!17947 input!5492) call!343042))))

(declare-fun lt!2025440 () Unit!147131)

(declare-fun lt!2025427 () Unit!147131)

(assert (=> d!1584075 (= lt!2025440 lt!2025427)))

(assert (=> d!1584075 (isPrefix!4961 call!343042 (++!12322 call!343042 call!343046))))

(assert (=> d!1584075 (= lt!2025427 (lemmaConcatTwoListThenFirstIsPrefix!3185 call!343042 call!343046))))

(assert (=> d!1584075 (= (++!12322 call!343042 call!343046) (list!17947 input!5492))))

(assert (=> d!1584075 (= (findLongestMatchInnerZipperFast!85 call!343038 call!343042 (+ 0 1 1) call!343046 input!5492 lt!2024326) lt!2025433)))

(declare-fun b!4924040 () Bool)

(declare-fun lt!2025446 () Int)

(assert (=> b!4924040 (= e!3076821 (ite (= lt!2025446 0) (+ 0 1 1) lt!2025446))))

(assert (=> b!4924040 (= lt!2025446 call!343192)))

(declare-fun call!343187 () (InoxSet Context!6030))

(declare-fun bm!343186 () Bool)

(assert (=> bm!343186 (= call!343192 (findLongestMatchInnerZipperFast!85 call!343187 call!343191 (+ 0 1 1 1) call!343195 input!5492 lt!2024326))))

(declare-fun b!4924041 () Bool)

(declare-fun e!3076823 () Int)

(assert (=> b!4924041 (= e!3076823 (+ 0 1 1))))

(declare-fun bm!343187 () Bool)

(assert (=> bm!343187 (= call!343187 (derivationStepZipper!588 call!343038 call!343190))))

(declare-fun lt!2025460 () tuple2!61170)

(declare-fun bm!343188 () Bool)

(assert (=> bm!343188 (= call!343188 (list!17947 (ite c!838326 input!5492 (_1!33888 lt!2025460))))))

(declare-fun b!4924042 () Bool)

(assert (=> b!4924042 (= e!3076823 0)))

(declare-fun b!4924043 () Bool)

(declare-fun c!838327 () Bool)

(assert (=> b!4924043 (= c!838327 call!343189)))

(declare-fun lt!2025437 () Unit!147131)

(declare-fun lt!2025461 () Unit!147131)

(assert (=> b!4924043 (= lt!2025437 lt!2025461)))

(assert (=> b!4924043 (= lt!2025444 call!343042)))

(assert (=> b!4924043 (= lt!2025461 call!343194)))

(assert (=> b!4924043 (= lt!2025444 call!343188)))

(declare-fun lt!2025426 () Unit!147131)

(declare-fun lt!2025457 () Unit!147131)

(assert (=> b!4924043 (= lt!2025426 lt!2025457)))

(assert (=> b!4924043 call!343186))

(assert (=> b!4924043 (= lt!2025457 call!343193)))

(declare-fun lt!2025456 () List!56809)

(assert (=> b!4924043 (= lt!2025456 call!343188)))

(declare-fun lt!2025438 () List!56809)

(assert (=> b!4924043 (= lt!2025438 call!343188)))

(assert (=> b!4924043 (= e!3076819 e!3076823)))

(declare-fun b!4924044 () Bool)

(declare-fun c!838325 () Bool)

(assert (=> b!4924044 (= c!838325 call!343189)))

(declare-fun lt!2025454 () Unit!147131)

(declare-fun lt!2025447 () Unit!147131)

(assert (=> b!4924044 (= lt!2025454 lt!2025447)))

(declare-fun lt!2025453 () List!56809)

(declare-fun lt!2025445 () List!56809)

(declare-fun lt!2025455 () C!26956)

(assert (=> b!4924044 (= (++!12322 (++!12322 call!343042 (Cons!56685 lt!2025455 Nil!56685)) lt!2025453) lt!2025445)))

(assert (=> b!4924044 (= lt!2025447 (lemmaMoveElementToOtherListKeepsConcatEq!1391 call!343042 lt!2025455 lt!2025453 lt!2025445))))

(assert (=> b!4924044 (= lt!2025445 (list!17947 input!5492))))

(assert (=> b!4924044 (= lt!2025453 (tail!9667 call!343046))))

(assert (=> b!4924044 (= lt!2025455 (apply!13655 input!5492 (+ 0 1 1)))))

(declare-fun lt!2025442 () Unit!147131)

(declare-fun lt!2025458 () Unit!147131)

(assert (=> b!4924044 (= lt!2025442 lt!2025458)))

(declare-fun lt!2025448 () List!56809)

(assert (=> b!4924044 (isPrefix!4961 (++!12322 call!343042 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025448 call!343042)) Nil!56685)) lt!2025448)))

(assert (=> b!4924044 (= lt!2025458 (lemmaAddHeadSuffixToPrefixStillPrefix!773 call!343042 lt!2025448))))

(assert (=> b!4924044 (= lt!2025448 (list!17947 input!5492))))

(declare-fun lt!2025441 () Unit!147131)

(assert (=> b!4924044 (= lt!2025441 e!3076820)))

(declare-fun c!838324 () Bool)

(assert (=> b!4924044 (= c!838324 (= (size!37476 call!343042) (size!37474 input!5492)))))

(declare-fun lt!2025428 () Unit!147131)

(declare-fun lt!2025443 () Unit!147131)

(assert (=> b!4924044 (= lt!2025428 lt!2025443)))

(declare-fun lt!2025463 () List!56809)

(assert (=> b!4924044 (<= (size!37476 call!343042) (size!37476 lt!2025463))))

(assert (=> b!4924044 (= lt!2025443 (lemmaIsPrefixThenSmallerEqSize!685 call!343042 lt!2025463))))

(assert (=> b!4924044 (= lt!2025463 (list!17947 input!5492))))

(declare-fun lt!2025459 () Unit!147131)

(declare-fun lt!2025435 () Unit!147131)

(assert (=> b!4924044 (= lt!2025459 lt!2025435)))

(declare-fun lt!2025429 () List!56809)

(assert (=> b!4924044 (= (head!10520 (drop!2224 lt!2025429 (+ 0 1 1))) (apply!13656 lt!2025429 (+ 0 1 1)))))

(assert (=> b!4924044 (= lt!2025435 (lemmaDropApply!1282 lt!2025429 (+ 0 1 1)))))

(assert (=> b!4924044 (= lt!2025429 (list!17947 input!5492))))

(declare-fun lt!2025436 () Unit!147131)

(declare-fun lt!2025451 () Unit!147131)

(assert (=> b!4924044 (= lt!2025436 lt!2025451)))

(declare-fun lt!2025430 () List!56809)

(declare-fun lt!2025424 () List!56809)

(assert (=> b!4924044 (and (= lt!2025424 call!343042) (= lt!2025430 call!343046))))

(assert (=> b!4924044 (= lt!2025451 (lemmaConcatSameAndSameSizesThenSameLists!657 lt!2025424 lt!2025430 call!343042 call!343046))))

(assert (=> b!4924044 (= lt!2025430 (list!17947 (_2!33888 lt!2025460)))))

(assert (=> b!4924044 (= lt!2025424 call!343188)))

(assert (=> b!4924044 (= lt!2025460 (splitAt!269 input!5492 (+ 0 1 1)))))

(assert (=> b!4924044 (= e!3076819 e!3076821)))

(declare-fun bm!343189 () Bool)

(assert (=> bm!343189 (= call!343186 (isPrefix!4961 (ite c!838326 lt!2025438 lt!2025425) (ite c!838326 lt!2025456 lt!2025462)))))

(declare-fun b!4924045 () Bool)

(assert (=> b!4924045 (= e!3076822 (list!17947 input!5492))))

(declare-fun bm!343190 () Bool)

(assert (=> bm!343190 (= call!343193 (lemmaIsPrefixRefl!3357 (ite c!838326 lt!2025438 lt!2025425) (ite c!838326 lt!2025456 lt!2025462)))))

(declare-fun b!4924046 () Bool)

(assert (=> b!4924046 (= e!3076824 0)))

(assert (= (and d!1584075 c!838322) b!4924046))

(assert (= (and d!1584075 (not c!838322)) b!4924035))

(assert (= (and b!4924035 c!838326) b!4924043))

(assert (= (and b!4924035 (not c!838326)) b!4924044))

(assert (= (and b!4924043 c!838327) b!4924041))

(assert (= (and b!4924043 (not c!838327)) b!4924042))

(assert (= (and b!4924044 c!838324) b!4924039))

(assert (= (and b!4924044 (not c!838324)) b!4924036))

(assert (= (and b!4924044 c!838325) b!4924040))

(assert (= (and b!4924044 (not c!838325)) b!4924037))

(assert (= (or b!4924040 b!4924037) bm!343185))

(assert (= (or b!4924040 b!4924037) bm!343182))

(assert (= (or b!4924040 b!4924037) bm!343183))

(assert (= (or b!4924040 b!4924037) bm!343187))

(assert (= (or b!4924040 b!4924037) bm!343186))

(assert (= (or b!4924043 b!4924044) bm!343188))

(assert (= (or b!4924043 b!4924039) bm!343190))

(assert (= (or b!4924043 b!4924044) bm!343184))

(assert (= (or b!4924043 b!4924039) bm!343189))

(assert (= (or b!4924043 b!4924039) bm!343181))

(assert (= (and bm!343181 c!838323) b!4924038))

(assert (= (and bm!343181 (not c!838323)) b!4924045))

(assert (=> b!4924045 m!5937560))

(declare-fun m!5940074 () Bool)

(assert (=> b!4924044 m!5940074))

(declare-fun m!5940076 () Bool)

(assert (=> b!4924044 m!5940076))

(declare-fun m!5940078 () Bool)

(assert (=> b!4924044 m!5940078))

(declare-fun m!5940080 () Bool)

(assert (=> b!4924044 m!5940080))

(declare-fun m!5940082 () Bool)

(assert (=> b!4924044 m!5940082))

(declare-fun m!5940084 () Bool)

(assert (=> b!4924044 m!5940084))

(declare-fun m!5940086 () Bool)

(assert (=> b!4924044 m!5940086))

(declare-fun m!5940088 () Bool)

(assert (=> b!4924044 m!5940088))

(declare-fun m!5940090 () Bool)

(assert (=> b!4924044 m!5940090))

(assert (=> b!4924044 m!5940080))

(declare-fun m!5940092 () Bool)

(assert (=> b!4924044 m!5940092))

(declare-fun m!5940094 () Bool)

(assert (=> b!4924044 m!5940094))

(declare-fun m!5940096 () Bool)

(assert (=> b!4924044 m!5940096))

(declare-fun m!5940098 () Bool)

(assert (=> b!4924044 m!5940098))

(declare-fun m!5940100 () Bool)

(assert (=> b!4924044 m!5940100))

(declare-fun m!5940102 () Bool)

(assert (=> b!4924044 m!5940102))

(assert (=> b!4924044 m!5940096))

(declare-fun m!5940104 () Bool)

(assert (=> b!4924044 m!5940104))

(declare-fun m!5940106 () Bool)

(assert (=> b!4924044 m!5940106))

(assert (=> b!4924044 m!5940088))

(declare-fun m!5940108 () Bool)

(assert (=> b!4924044 m!5940108))

(assert (=> b!4924044 m!5937562))

(assert (=> b!4924044 m!5937560))

(assert (=> b!4924044 m!5940108))

(declare-fun m!5940110 () Bool)

(assert (=> b!4924044 m!5940110))

(declare-fun m!5940112 () Bool)

(assert (=> b!4924044 m!5940112))

(assert (=> bm!343182 m!5940094))

(declare-fun m!5940114 () Bool)

(assert (=> bm!343183 m!5940114))

(assert (=> b!4924039 m!5937560))

(declare-fun m!5940116 () Bool)

(assert (=> bm!343186 m!5940116))

(declare-fun m!5940118 () Bool)

(assert (=> bm!343188 m!5940118))

(declare-fun m!5940120 () Bool)

(assert (=> bm!343181 m!5940120))

(assert (=> bm!343185 m!5940074))

(declare-fun m!5940122 () Bool)

(assert (=> bm!343187 m!5940122))

(declare-fun m!5940124 () Bool)

(assert (=> bm!343189 m!5940124))

(declare-fun m!5940126 () Bool)

(assert (=> bm!343190 m!5940126))

(assert (=> d!1584075 m!5937560))

(declare-fun m!5940128 () Bool)

(assert (=> d!1584075 m!5940128))

(declare-fun m!5940130 () Bool)

(assert (=> d!1584075 m!5940130))

(assert (=> d!1584075 m!5940128))

(declare-fun m!5940132 () Bool)

(assert (=> d!1584075 m!5940132))

(declare-fun m!5940134 () Bool)

(assert (=> d!1584075 m!5940134))

(assert (=> d!1584075 m!5937560))

(declare-fun m!5940136 () Bool)

(assert (=> d!1584075 m!5940136))

(assert (=> d!1584075 m!5937560))

(declare-fun m!5940138 () Bool)

(assert (=> d!1584075 m!5940138))

(declare-fun m!5940140 () Bool)

(assert (=> d!1584075 m!5940140))

(assert (=> d!1584075 m!5937560))

(declare-fun m!5940142 () Bool)

(assert (=> d!1584075 m!5940142))

(declare-fun m!5940144 () Bool)

(assert (=> bm!343184 m!5940144))

(assert (=> bm!343037 d!1584075))

(declare-fun d!1584085 () Bool)

(declare-fun e!3076834 () Bool)

(assert (=> d!1584085 e!3076834))

(declare-fun res!2101960 () Bool)

(assert (=> d!1584085 (=> (not res!2101960) (not e!3076834))))

(declare-fun lt!2025470 () List!56811)

(declare-fun noDuplicate!988 (List!56811) Bool)

(assert (=> d!1584085 (= res!2101960 (noDuplicate!988 lt!2025470))))

(declare-fun choose!36054 ((InoxSet Context!6030)) List!56811)

(assert (=> d!1584085 (= lt!2025470 (choose!36054 z!3559))))

(assert (=> d!1584085 (= (toList!7941 z!3559) lt!2025470)))

(declare-fun b!4924063 () Bool)

(declare-fun content!10068 (List!56811) (InoxSet Context!6030))

(assert (=> b!4924063 (= e!3076834 (= (content!10068 lt!2025470) z!3559))))

(assert (= (and d!1584085 res!2101960) b!4924063))

(declare-fun m!5940146 () Bool)

(assert (=> d!1584085 m!5940146))

(declare-fun m!5940148 () Bool)

(assert (=> d!1584085 m!5940148))

(declare-fun m!5940150 () Bool)

(assert (=> b!4924063 m!5940150))

(assert (=> bm!342999 d!1584085))

(assert (=> d!1583677 d!1583671))

(assert (=> d!1583677 d!1583645))

(assert (=> d!1583677 d!1583679))

(declare-fun d!1584087 () Bool)

(assert (=> d!1584087 (= (head!10520 (drop!2224 lt!2024717 0)) (apply!13656 lt!2024717 0))))

(assert (=> d!1584087 true))

(declare-fun _$27!1654 () Unit!147131)

(assert (=> d!1584087 (= (choose!36045 lt!2024717 0) _$27!1654)))

(declare-fun bs!1179348 () Bool)

(assert (= bs!1179348 d!1584087))

(assert (=> bs!1179348 m!5937834))

(assert (=> bs!1179348 m!5937834))

(assert (=> bs!1179348 m!5937836))

(assert (=> bs!1179348 m!5937824))

(assert (=> d!1583677 d!1584087))

(declare-fun d!1584089 () Bool)

(declare-fun lt!2025471 () Int)

(assert (=> d!1584089 (>= lt!2025471 0)))

(declare-fun e!3076835 () Int)

(assert (=> d!1584089 (= lt!2025471 e!3076835)))

(declare-fun c!838333 () Bool)

(assert (=> d!1584089 (= c!838333 ((_ is Nil!56685) lt!2025199))))

(assert (=> d!1584089 (= (size!37476 lt!2025199) lt!2025471)))

(declare-fun b!4924064 () Bool)

(assert (=> b!4924064 (= e!3076835 0)))

(declare-fun b!4924065 () Bool)

(assert (=> b!4924065 (= e!3076835 (+ 1 (size!37476 (t!367249 lt!2025199))))))

(assert (= (and d!1584089 c!838333) b!4924064))

(assert (= (and d!1584089 (not c!838333)) b!4924065))

(declare-fun m!5940152 () Bool)

(assert (=> b!4924065 m!5940152))

(assert (=> b!4923348 d!1584089))

(declare-fun d!1584091 () Bool)

(declare-fun lt!2025472 () Int)

(assert (=> d!1584091 (>= lt!2025472 0)))

(declare-fun e!3076836 () Int)

(assert (=> d!1584091 (= lt!2025472 e!3076836)))

(declare-fun c!838334 () Bool)

(assert (=> d!1584091 (= c!838334 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))))))

(assert (=> d!1584091 (= (size!37476 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) lt!2025472)))

(declare-fun b!4924066 () Bool)

(assert (=> b!4924066 (= e!3076836 0)))

(declare-fun b!4924067 () Bool)

(assert (=> b!4924067 (= e!3076836 (+ 1 (size!37476 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))))))))

(assert (= (and d!1584091 c!838334) b!4924066))

(assert (= (and d!1584091 (not c!838334)) b!4924067))

(declare-fun m!5940154 () Bool)

(assert (=> b!4924067 m!5940154))

(assert (=> b!4923348 d!1584091))

(declare-fun d!1584093 () Bool)

(declare-fun lt!2025473 () Int)

(assert (=> d!1584093 (>= lt!2025473 0)))

(declare-fun e!3076837 () Int)

(assert (=> d!1584093 (= lt!2025473 e!3076837)))

(declare-fun c!838335 () Bool)

(assert (=> d!1584093 (= c!838335 ((_ is Nil!56685) lt!2024741))))

(assert (=> d!1584093 (= (size!37476 lt!2024741) lt!2025473)))

(declare-fun b!4924068 () Bool)

(assert (=> b!4924068 (= e!3076837 0)))

(declare-fun b!4924069 () Bool)

(assert (=> b!4924069 (= e!3076837 (+ 1 (size!37476 (t!367249 lt!2024741))))))

(assert (= (and d!1584093 c!838335) b!4924068))

(assert (= (and d!1584093 (not c!838335)) b!4924069))

(declare-fun m!5940156 () Bool)

(assert (=> b!4924069 m!5940156))

(assert (=> b!4923348 d!1584093))

(declare-fun d!1584095 () Bool)

(declare-fun c!838336 () Bool)

(assert (=> d!1584095 (= c!838336 ((_ is Nil!56685) lt!2025169))))

(declare-fun e!3076838 () (InoxSet C!26956))

(assert (=> d!1584095 (= (content!10066 lt!2025169) e!3076838)))

(declare-fun b!4924070 () Bool)

(assert (=> b!4924070 (= e!3076838 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924071 () Bool)

(assert (=> b!4924071 (= e!3076838 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025169) true) (content!10066 (t!367249 lt!2025169))))))

(assert (= (and d!1584095 c!838336) b!4924070))

(assert (= (and d!1584095 (not c!838336)) b!4924071))

(declare-fun m!5940158 () Bool)

(assert (=> b!4924071 m!5940158))

(declare-fun m!5940160 () Bool)

(assert (=> b!4924071 m!5940160))

(assert (=> d!1583617 d!1584095))

(assert (=> d!1583617 d!1583767))

(declare-fun d!1584097 () Bool)

(declare-fun c!838337 () Bool)

(assert (=> d!1584097 (= c!838337 ((_ is Nil!56685) (Cons!56685 lt!2024400 Nil!56685)))))

(declare-fun e!3076839 () (InoxSet C!26956))

(assert (=> d!1584097 (= (content!10066 (Cons!56685 lt!2024400 Nil!56685)) e!3076839)))

(declare-fun b!4924072 () Bool)

(assert (=> b!4924072 (= e!3076839 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924073 () Bool)

(assert (=> b!4924073 (= e!3076839 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (Cons!56685 lt!2024400 Nil!56685)) true) (content!10066 (t!367249 (Cons!56685 lt!2024400 Nil!56685)))))))

(assert (= (and d!1584097 c!838337) b!4924072))

(assert (= (and d!1584097 (not c!838337)) b!4924073))

(declare-fun m!5940162 () Bool)

(assert (=> b!4924073 m!5940162))

(declare-fun m!5940164 () Bool)

(assert (=> b!4924073 m!5940164))

(assert (=> d!1583617 d!1584097))

(assert (=> b!4922966 d!1583807))

(assert (=> b!4922966 d!1583809))

(declare-fun d!1584099 () Bool)

(declare-fun lt!2025474 () Int)

(assert (=> d!1584099 (>= lt!2025474 0)))

(declare-fun e!3076840 () Int)

(assert (=> d!1584099 (= lt!2025474 e!3076840)))

(declare-fun c!838338 () Bool)

(assert (=> d!1584099 (= c!838338 ((_ is Nil!56685) (_1!33887 lt!2025235)))))

(assert (=> d!1584099 (= (size!37476 (_1!33887 lt!2025235)) lt!2025474)))

(declare-fun b!4924074 () Bool)

(assert (=> b!4924074 (= e!3076840 0)))

(declare-fun b!4924075 () Bool)

(assert (=> b!4924075 (= e!3076840 (+ 1 (size!37476 (t!367249 (_1!33887 lt!2025235)))))))

(assert (= (and d!1584099 c!838338) b!4924074))

(assert (= (and d!1584099 (not c!838338)) b!4924075))

(declare-fun m!5940166 () Bool)

(assert (=> b!4924075 m!5940166))

(assert (=> b!4923443 d!1584099))

(declare-fun d!1584101 () Bool)

(declare-fun lt!2025475 () Int)

(assert (=> d!1584101 (>= lt!2025475 0)))

(declare-fun e!3076841 () Int)

(assert (=> d!1584101 (= lt!2025475 e!3076841)))

(declare-fun c!838339 () Bool)

(assert (=> d!1584101 (= c!838339 ((_ is Nil!56685) lt!2024382))))

(assert (=> d!1584101 (= (size!37476 lt!2024382) lt!2025475)))

(declare-fun b!4924076 () Bool)

(assert (=> b!4924076 (= e!3076841 0)))

(declare-fun b!4924077 () Bool)

(assert (=> b!4924077 (= e!3076841 (+ 1 (size!37476 (t!367249 lt!2024382))))))

(assert (= (and d!1584101 c!838339) b!4924076))

(assert (= (and d!1584101 (not c!838339)) b!4924077))

(declare-fun m!5940168 () Bool)

(assert (=> b!4924077 m!5940168))

(assert (=> b!4923443 d!1584101))

(declare-fun b!4924080 () Bool)

(declare-fun res!2101961 () Bool)

(declare-fun e!3076842 () Bool)

(assert (=> b!4924080 (=> (not res!2101961) (not e!3076842))))

(declare-fun lt!2025476 () List!56809)

(assert (=> b!4924080 (= res!2101961 (= (size!37476 lt!2025476) (+ (size!37476 Nil!56685) (size!37476 lt!2024871))))))

(declare-fun b!4924078 () Bool)

(declare-fun e!3076843 () List!56809)

(assert (=> b!4924078 (= e!3076843 lt!2024871)))

(declare-fun b!4924079 () Bool)

(assert (=> b!4924079 (= e!3076843 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) lt!2024871)))))

(declare-fun d!1584103 () Bool)

(assert (=> d!1584103 e!3076842))

(declare-fun res!2101962 () Bool)

(assert (=> d!1584103 (=> (not res!2101962) (not e!3076842))))

(assert (=> d!1584103 (= res!2101962 (= (content!10066 lt!2025476) ((_ map or) (content!10066 Nil!56685) (content!10066 lt!2024871))))))

(assert (=> d!1584103 (= lt!2025476 e!3076843)))

(declare-fun c!838340 () Bool)

(assert (=> d!1584103 (= c!838340 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584103 (= (++!12322 Nil!56685 lt!2024871) lt!2025476)))

(declare-fun b!4924081 () Bool)

(assert (=> b!4924081 (= e!3076842 (or (not (= lt!2024871 Nil!56685)) (= lt!2025476 Nil!56685)))))

(assert (= (and d!1584103 c!838340) b!4924078))

(assert (= (and d!1584103 (not c!838340)) b!4924079))

(assert (= (and d!1584103 res!2101962) b!4924080))

(assert (= (and b!4924080 res!2101961) b!4924081))

(declare-fun m!5940170 () Bool)

(assert (=> b!4924080 m!5940170))

(assert (=> b!4924080 m!5937598))

(declare-fun m!5940172 () Bool)

(assert (=> b!4924080 m!5940172))

(declare-fun m!5940174 () Bool)

(assert (=> b!4924079 m!5940174))

(declare-fun m!5940176 () Bool)

(assert (=> d!1584103 m!5940176))

(assert (=> d!1584103 m!5938038))

(declare-fun m!5940178 () Bool)

(assert (=> d!1584103 m!5940178))

(assert (=> d!1583419 d!1584103))

(assert (=> d!1583419 d!1583621))

(assert (=> d!1583419 d!1583487))

(declare-fun b!4924094 () Bool)

(declare-fun res!2101965 () Bool)

(declare-fun e!3076849 () Bool)

(assert (=> b!4924094 (=> (not res!2101965) (not e!3076849))))

(declare-fun lt!2025479 () List!56809)

(assert (=> b!4924094 (= res!2101965 (= (size!37476 lt!2025479) (+ (size!37476 (_1!33887 lt!2025235)) (size!37476 (_2!33887 lt!2025235)))))))

(declare-fun b!4924092 () Bool)

(declare-fun e!3076850 () List!56809)

(assert (=> b!4924092 (= e!3076850 (_2!33887 lt!2025235))))

(declare-fun b!4924093 () Bool)

(assert (=> b!4924093 (= e!3076850 (Cons!56685 (h!63133 (_1!33887 lt!2025235)) (++!12322 (t!367249 (_1!33887 lt!2025235)) (_2!33887 lt!2025235))))))

(declare-fun d!1584105 () Bool)

(assert (=> d!1584105 e!3076849))

(declare-fun res!2101966 () Bool)

(assert (=> d!1584105 (=> (not res!2101966) (not e!3076849))))

(assert (=> d!1584105 (= res!2101966 (= (content!10066 lt!2025479) ((_ map or) (content!10066 (_1!33887 lt!2025235)) (content!10066 (_2!33887 lt!2025235)))))))

(assert (=> d!1584105 (= lt!2025479 e!3076850)))

(declare-fun c!838343 () Bool)

(assert (=> d!1584105 (= c!838343 ((_ is Nil!56685) (_1!33887 lt!2025235)))))

(assert (=> d!1584105 (= (++!12322 (_1!33887 lt!2025235) (_2!33887 lt!2025235)) lt!2025479)))

(declare-fun b!4924095 () Bool)

(assert (=> b!4924095 (= e!3076849 (or (not (= (_2!33887 lt!2025235) Nil!56685)) (= lt!2025479 (_1!33887 lt!2025235))))))

(assert (= (and d!1584105 c!838343) b!4924092))

(assert (= (and d!1584105 (not c!838343)) b!4924093))

(assert (= (and d!1584105 res!2101966) b!4924094))

(assert (= (and b!4924094 res!2101965) b!4924095))

(declare-fun m!5940180 () Bool)

(assert (=> b!4924094 m!5940180))

(assert (=> b!4924094 m!5939156))

(declare-fun m!5940182 () Bool)

(assert (=> b!4924094 m!5940182))

(declare-fun m!5940184 () Bool)

(assert (=> b!4924093 m!5940184))

(declare-fun m!5940186 () Bool)

(assert (=> d!1584105 m!5940186))

(declare-fun m!5940188 () Bool)

(assert (=> d!1584105 m!5940188))

(declare-fun m!5940190 () Bool)

(assert (=> d!1584105 m!5940190))

(assert (=> d!1583725 d!1584105))

(declare-fun d!1584107 () Bool)

(declare-fun e!3076852 () Bool)

(assert (=> d!1584107 e!3076852))

(declare-fun res!2101969 () Bool)

(assert (=> d!1584107 (=> res!2101969 e!3076852)))

(declare-fun lt!2025484 () Bool)

(assert (=> d!1584107 (= res!2101969 (not lt!2025484))))

(declare-fun e!3076853 () Bool)

(assert (=> d!1584107 (= lt!2025484 e!3076853)))

(declare-fun res!2101968 () Bool)

(assert (=> d!1584107 (=> res!2101968 e!3076853)))

(assert (=> d!1584107 (= res!2101968 ((_ is Nil!56685) lt!2024382))))

(assert (=> d!1584107 (= (isPrefix!4961 lt!2024382 (++!12322 lt!2024382 call!342906)) lt!2025484)))

(declare-fun b!4924098 () Bool)

(declare-fun e!3076854 () Bool)

(assert (=> b!4924098 (= e!3076854 (isPrefix!4961 (tail!9667 lt!2024382) (tail!9667 (++!12322 lt!2024382 call!342906))))))

(declare-fun b!4924097 () Bool)

(declare-fun res!2101970 () Bool)

(assert (=> b!4924097 (=> (not res!2101970) (not e!3076854))))

(assert (=> b!4924097 (= res!2101970 (= (head!10520 lt!2024382) (head!10520 (++!12322 lt!2024382 call!342906))))))

(declare-fun b!4924096 () Bool)

(assert (=> b!4924096 (= e!3076853 e!3076854)))

(declare-fun res!2101967 () Bool)

(assert (=> b!4924096 (=> (not res!2101967) (not e!3076854))))

(assert (=> b!4924096 (= res!2101967 (not ((_ is Nil!56685) (++!12322 lt!2024382 call!342906))))))

(declare-fun b!4924099 () Bool)

(assert (=> b!4924099 (= e!3076852 (>= (size!37476 (++!12322 lt!2024382 call!342906)) (size!37476 lt!2024382)))))

(assert (= (and d!1584107 (not res!2101968)) b!4924096))

(assert (= (and b!4924096 res!2101967) b!4924097))

(assert (= (and b!4924097 res!2101970) b!4924098))

(assert (= (and d!1584107 (not res!2101969)) b!4924099))

(declare-fun m!5940192 () Bool)

(assert (=> b!4924098 m!5940192))

(assert (=> b!4924098 m!5939150))

(declare-fun m!5940194 () Bool)

(assert (=> b!4924098 m!5940194))

(assert (=> b!4924098 m!5940192))

(assert (=> b!4924098 m!5940194))

(declare-fun m!5940196 () Bool)

(assert (=> b!4924098 m!5940196))

(declare-fun m!5940198 () Bool)

(assert (=> b!4924097 m!5940198))

(assert (=> b!4924097 m!5939150))

(declare-fun m!5940200 () Bool)

(assert (=> b!4924097 m!5940200))

(assert (=> b!4924099 m!5939150))

(declare-fun m!5940202 () Bool)

(assert (=> b!4924099 m!5940202))

(assert (=> b!4924099 m!5939132))

(assert (=> d!1583725 d!1584107))

(declare-fun bs!1179349 () Bool)

(declare-fun d!1584109 () Bool)

(assert (= bs!1179349 (and d!1584109 d!1583923)))

(declare-fun lambda!245182 () Int)

(assert (=> bs!1179349 (not (= lambda!245182 lambda!245180))))

(declare-fun bs!1179350 () Bool)

(assert (= bs!1179350 (and d!1584109 d!1583411)))

(assert (=> bs!1179350 (= lambda!245182 lambda!245141)))

(declare-fun bs!1179351 () Bool)

(assert (= bs!1179351 (and d!1584109 b!4922796)))

(assert (=> bs!1179351 (not (= lambda!245182 lambda!245144))))

(declare-fun bs!1179352 () Bool)

(assert (= bs!1179352 (and d!1584109 d!1583565)))

(assert (=> bs!1179352 (not (= lambda!245182 lambda!245166))))

(declare-fun bs!1179353 () Bool)

(assert (= bs!1179353 (and d!1584109 d!1583997)))

(assert (=> bs!1179353 (not (= lambda!245182 lambda!245181))))

(declare-fun bs!1179354 () Bool)

(assert (= bs!1179354 (and d!1584109 b!4922797)))

(assert (=> bs!1179354 (not (= lambda!245182 lambda!245145))))

(declare-fun bs!1179355 () Bool)

(declare-fun b!4924104 () Bool)

(assert (= bs!1179355 (and b!4924104 d!1583923)))

(declare-fun lambda!245183 () Int)

(assert (=> bs!1179355 (= lambda!245183 lambda!245180)))

(declare-fun bs!1179356 () Bool)

(assert (= bs!1179356 (and b!4924104 d!1583411)))

(assert (=> bs!1179356 (not (= lambda!245183 lambda!245141))))

(declare-fun bs!1179357 () Bool)

(assert (= bs!1179357 (and b!4924104 b!4922796)))

(assert (=> bs!1179357 (= lambda!245183 lambda!245144)))

(declare-fun bs!1179358 () Bool)

(assert (= bs!1179358 (and b!4924104 d!1584109)))

(assert (=> bs!1179358 (not (= lambda!245183 lambda!245182))))

(declare-fun bs!1179359 () Bool)

(assert (= bs!1179359 (and b!4924104 d!1583565)))

(assert (=> bs!1179359 (not (= lambda!245183 lambda!245166))))

(declare-fun bs!1179360 () Bool)

(assert (= bs!1179360 (and b!4924104 d!1583997)))

(assert (=> bs!1179360 (not (= lambda!245183 lambda!245181))))

(declare-fun bs!1179361 () Bool)

(assert (= bs!1179361 (and b!4924104 b!4922797)))

(assert (=> bs!1179361 (= lambda!245183 lambda!245145)))

(declare-fun bs!1179362 () Bool)

(declare-fun b!4924105 () Bool)

(assert (= bs!1179362 (and b!4924105 d!1583923)))

(declare-fun lambda!245184 () Int)

(assert (=> bs!1179362 (= lambda!245184 lambda!245180)))

(declare-fun bs!1179363 () Bool)

(assert (= bs!1179363 (and b!4924105 d!1583411)))

(assert (=> bs!1179363 (not (= lambda!245184 lambda!245141))))

(declare-fun bs!1179364 () Bool)

(assert (= bs!1179364 (and b!4924105 b!4924104)))

(assert (=> bs!1179364 (= lambda!245184 lambda!245183)))

(declare-fun bs!1179365 () Bool)

(assert (= bs!1179365 (and b!4924105 b!4922796)))

(assert (=> bs!1179365 (= lambda!245184 lambda!245144)))

(declare-fun bs!1179366 () Bool)

(assert (= bs!1179366 (and b!4924105 d!1584109)))

(assert (=> bs!1179366 (not (= lambda!245184 lambda!245182))))

(declare-fun bs!1179367 () Bool)

(assert (= bs!1179367 (and b!4924105 d!1583565)))

(assert (=> bs!1179367 (not (= lambda!245184 lambda!245166))))

(declare-fun bs!1179368 () Bool)

(assert (= bs!1179368 (and b!4924105 d!1583997)))

(assert (=> bs!1179368 (not (= lambda!245184 lambda!245181))))

(declare-fun bs!1179369 () Bool)

(assert (= bs!1179369 (and b!4924105 b!4922797)))

(assert (=> bs!1179369 (= lambda!245184 lambda!245145)))

(declare-fun call!343201 () Bool)

(declare-fun bm!343195 () Bool)

(declare-fun lt!2025485 () List!56811)

(declare-fun c!838348 () Bool)

(declare-fun lt!2025491 () List!56811)

(assert (=> bm!343195 (= call!343201 (exists!1242 (ite c!838348 lt!2025491 lt!2025485) (ite c!838348 lambda!245183 lambda!245184)))))

(declare-fun e!3076857 () Unit!147131)

(declare-fun Unit!147181 () Unit!147131)

(assert (=> b!4924104 (= e!3076857 Unit!147181)))

(declare-fun call!343200 () List!56811)

(assert (=> b!4924104 (= lt!2025491 call!343200)))

(declare-fun lt!2025490 () Unit!147131)

(assert (=> b!4924104 (= lt!2025490 (lemmaNotForallThenExists!179 lt!2025491 lambda!245182))))

(assert (=> b!4924104 call!343201))

(declare-fun lt!2025489 () Unit!147131)

(assert (=> b!4924104 (= lt!2025489 lt!2025490)))

(declare-fun lt!2025488 () Bool)

(assert (=> d!1584109 (= lt!2025488 (isEmpty!30570 (getLanguageWitness!613 call!342904)))))

(assert (=> d!1584109 (= lt!2025488 (forall!13132 call!342904 lambda!245182))))

(declare-fun lt!2025486 () Unit!147131)

(assert (=> d!1584109 (= lt!2025486 e!3076857)))

(assert (=> d!1584109 (= c!838348 (not (forall!13132 call!342904 lambda!245182)))))

(assert (=> d!1584109 (= (lostCauseZipper!691 call!342904) lt!2025488)))

(declare-fun bm!343196 () Bool)

(assert (=> bm!343196 (= call!343200 (toList!7941 call!342904))))

(declare-fun Unit!147182 () Unit!147131)

(assert (=> b!4924105 (= e!3076857 Unit!147182)))

(assert (=> b!4924105 (= lt!2025485 call!343200)))

(declare-fun lt!2025492 () Unit!147131)

(assert (=> b!4924105 (= lt!2025492 (lemmaForallThenNotExists!162 lt!2025485 lambda!245182))))

(assert (=> b!4924105 (not call!343201)))

(declare-fun lt!2025487 () Unit!147131)

(assert (=> b!4924105 (= lt!2025487 lt!2025492)))

(assert (= (and d!1584109 c!838348) b!4924104))

(assert (= (and d!1584109 (not c!838348)) b!4924105))

(assert (= (or b!4924104 b!4924105) bm!343195))

(assert (= (or b!4924104 b!4924105) bm!343196))

(declare-fun m!5940204 () Bool)

(assert (=> b!4924104 m!5940204))

(declare-fun m!5940206 () Bool)

(assert (=> bm!343195 m!5940206))

(declare-fun m!5940208 () Bool)

(assert (=> d!1584109 m!5940208))

(assert (=> d!1584109 m!5940208))

(declare-fun m!5940210 () Bool)

(assert (=> d!1584109 m!5940210))

(declare-fun m!5940212 () Bool)

(assert (=> d!1584109 m!5940212))

(assert (=> d!1584109 m!5940212))

(declare-fun m!5940214 () Bool)

(assert (=> bm!343196 m!5940214))

(declare-fun m!5940216 () Bool)

(assert (=> b!4924105 m!5940216))

(assert (=> d!1583725 d!1584109))

(declare-fun d!1584111 () Bool)

(assert (=> d!1584111 (= call!342906 lt!2025242)))

(declare-fun lt!2025496 () Unit!147131)

(assert (=> d!1584111 (= lt!2025496 (choose!36035 lt!2024382 call!342906 lt!2024382 lt!2025242 lt!2024324))))

(assert (=> d!1584111 (isPrefix!4961 lt!2024382 lt!2024324)))

(assert (=> d!1584111 (= (lemmaSamePrefixThenSameSuffix!2365 lt!2024382 call!342906 lt!2024382 lt!2025242 lt!2024324) lt!2025496)))

(declare-fun bs!1179370 () Bool)

(assert (= bs!1179370 d!1584111))

(declare-fun m!5940218 () Bool)

(assert (=> bs!1179370 m!5940218))

(declare-fun m!5940220 () Bool)

(assert (=> bs!1179370 m!5940220))

(assert (=> d!1583725 d!1584111))

(declare-fun b!4924115 () Bool)

(declare-fun res!2101972 () Bool)

(declare-fun e!3076862 () Bool)

(assert (=> b!4924115 (=> (not res!2101972) (not e!3076862))))

(declare-fun lt!2025497 () List!56809)

(assert (=> b!4924115 (= res!2101972 (= (size!37476 lt!2025497) (+ (size!37476 lt!2024382) (size!37476 call!342906))))))

(declare-fun b!4924113 () Bool)

(declare-fun e!3076863 () List!56809)

(assert (=> b!4924113 (= e!3076863 call!342906)))

(declare-fun b!4924114 () Bool)

(assert (=> b!4924114 (= e!3076863 (Cons!56685 (h!63133 lt!2024382) (++!12322 (t!367249 lt!2024382) call!342906)))))

(declare-fun d!1584113 () Bool)

(assert (=> d!1584113 e!3076862))

(declare-fun res!2101973 () Bool)

(assert (=> d!1584113 (=> (not res!2101973) (not e!3076862))))

(assert (=> d!1584113 (= res!2101973 (= (content!10066 lt!2025497) ((_ map or) (content!10066 lt!2024382) (content!10066 call!342906))))))

(assert (=> d!1584113 (= lt!2025497 e!3076863)))

(declare-fun c!838352 () Bool)

(assert (=> d!1584113 (= c!838352 ((_ is Nil!56685) lt!2024382))))

(assert (=> d!1584113 (= (++!12322 lt!2024382 call!342906) lt!2025497)))

(declare-fun b!4924116 () Bool)

(assert (=> b!4924116 (= e!3076862 (or (not (= call!342906 Nil!56685)) (= lt!2025497 lt!2024382)))))

(assert (= (and d!1584113 c!838352) b!4924113))

(assert (= (and d!1584113 (not c!838352)) b!4924114))

(assert (= (and d!1584113 res!2101973) b!4924115))

(assert (= (and b!4924115 res!2101972) b!4924116))

(declare-fun m!5940228 () Bool)

(assert (=> b!4924115 m!5940228))

(assert (=> b!4924115 m!5939132))

(declare-fun m!5940230 () Bool)

(assert (=> b!4924115 m!5940230))

(declare-fun m!5940232 () Bool)

(assert (=> b!4924114 m!5940232))

(declare-fun m!5940234 () Bool)

(assert (=> d!1584113 m!5940234))

(declare-fun m!5940236 () Bool)

(assert (=> d!1584113 m!5940236))

(declare-fun m!5940238 () Bool)

(assert (=> d!1584113 m!5940238))

(assert (=> d!1583725 d!1584113))

(declare-fun d!1584117 () Bool)

(declare-fun lt!2025498 () List!56809)

(assert (=> d!1584117 (= (++!12322 lt!2024382 lt!2025498) lt!2024324)))

(declare-fun e!3076864 () List!56809)

(assert (=> d!1584117 (= lt!2025498 e!3076864)))

(declare-fun c!838353 () Bool)

(assert (=> d!1584117 (= c!838353 ((_ is Cons!56685) lt!2024382))))

(assert (=> d!1584117 (>= (size!37476 lt!2024324) (size!37476 lt!2024382))))

(assert (=> d!1584117 (= (getSuffix!2949 lt!2024324 lt!2024382) lt!2025498)))

(declare-fun b!4924117 () Bool)

(assert (=> b!4924117 (= e!3076864 (getSuffix!2949 (tail!9667 lt!2024324) (t!367249 lt!2024382)))))

(declare-fun b!4924118 () Bool)

(assert (=> b!4924118 (= e!3076864 lt!2024324)))

(assert (= (and d!1584117 c!838353) b!4924117))

(assert (= (and d!1584117 (not c!838353)) b!4924118))

(declare-fun m!5940244 () Bool)

(assert (=> d!1584117 m!5940244))

(assert (=> d!1584117 m!5937596))

(assert (=> d!1584117 m!5939132))

(assert (=> b!4924117 m!5937580))

(assert (=> b!4924117 m!5937580))

(declare-fun m!5940246 () Bool)

(assert (=> b!4924117 m!5940246))

(assert (=> d!1583725 d!1584117))

(declare-fun d!1584123 () Bool)

(assert (=> d!1584123 (isPrefix!4961 lt!2024382 (++!12322 lt!2024382 call!342906))))

(declare-fun lt!2025501 () Unit!147131)

(assert (=> d!1584123 (= lt!2025501 (choose!36034 lt!2024382 call!342906))))

(assert (=> d!1584123 (= (lemmaConcatTwoListThenFirstIsPrefix!3185 lt!2024382 call!342906) lt!2025501)))

(declare-fun bs!1179373 () Bool)

(assert (= bs!1179373 d!1584123))

(assert (=> bs!1179373 m!5939150))

(assert (=> bs!1179373 m!5939150))

(assert (=> bs!1179373 m!5939152))

(declare-fun m!5940248 () Bool)

(assert (=> bs!1179373 m!5940248))

(assert (=> d!1583725 d!1584123))

(declare-fun d!1584125 () Bool)

(assert (=> d!1584125 (= (isEmpty!30566 (_1!33887 lt!2024915)) ((_ is Nil!56685) (_1!33887 lt!2024915)))))

(assert (=> b!4922862 d!1584125))

(declare-fun d!1584127 () Bool)

(declare-fun lt!2025502 () Int)

(assert (=> d!1584127 (>= lt!2025502 0)))

(declare-fun e!3076868 () Int)

(assert (=> d!1584127 (= lt!2025502 e!3076868)))

(declare-fun c!838356 () Bool)

(assert (=> d!1584127 (= c!838356 ((_ is Nil!56685) (++!12322 Nil!56685 lt!2024324)))))

(assert (=> d!1584127 (= (size!37476 (++!12322 Nil!56685 lt!2024324)) lt!2025502)))

(declare-fun b!4924125 () Bool)

(assert (=> b!4924125 (= e!3076868 0)))

(declare-fun b!4924126 () Bool)

(assert (=> b!4924126 (= e!3076868 (+ 1 (size!37476 (t!367249 (++!12322 Nil!56685 lt!2024324)))))))

(assert (= (and d!1584127 c!838356) b!4924125))

(assert (= (and d!1584127 (not c!838356)) b!4924126))

(declare-fun m!5940252 () Bool)

(assert (=> b!4924126 m!5940252))

(assert (=> b!4922831 d!1584127))

(assert (=> b!4922831 d!1583487))

(declare-fun d!1584129 () Bool)

(assert (=> d!1584129 (isPrefix!4961 (ite c!838007 lt!2025033 lt!2025020) (ite c!838007 lt!2025051 lt!2025057))))

(declare-fun lt!2025503 () Unit!147131)

(assert (=> d!1584129 (= lt!2025503 (choose!36036 (ite c!838007 lt!2025033 lt!2025020) (ite c!838007 lt!2025051 lt!2025057)))))

(assert (=> d!1584129 (= (lemmaIsPrefixRefl!3357 (ite c!838007 lt!2025033 lt!2025020) (ite c!838007 lt!2025051 lt!2025057)) lt!2025503)))

(declare-fun bs!1179374 () Bool)

(assert (= bs!1179374 d!1584129))

(assert (=> bs!1179374 m!5938600))

(declare-fun m!5940260 () Bool)

(assert (=> bs!1179374 m!5940260))

(assert (=> bm!343041 d!1584129))

(assert (=> bm!343080 d!1583803))

(declare-fun d!1584133 () Bool)

(assert (=> d!1584133 (= (isEmpty!30566 (list!17949 (left!41330 (c!837809 input!5492)))) ((_ is Nil!56685) (list!17949 (left!41330 (c!837809 input!5492)))))))

(assert (=> d!1583489 d!1584133))

(assert (=> d!1583489 d!1583869))

(assert (=> d!1583489 d!1583851))

(declare-fun d!1584135 () Bool)

(declare-fun lt!2025506 () Int)

(assert (=> d!1584135 (>= lt!2025506 0)))

(declare-fun e!3076871 () Int)

(assert (=> d!1584135 (= lt!2025506 e!3076871)))

(declare-fun c!838359 () Bool)

(assert (=> d!1584135 (= c!838359 ((_ is Nil!56685) (t!367249 (_1!33887 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326)))))))

(assert (=> d!1584135 (= (size!37476 (t!367249 (_1!33887 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326)))) lt!2025506)))

(declare-fun b!4924131 () Bool)

(assert (=> b!4924131 (= e!3076871 0)))

(declare-fun b!4924132 () Bool)

(assert (=> b!4924132 (= e!3076871 (+ 1 (size!37476 (t!367249 (t!367249 (_1!33887 (findLongestMatchInnerZipper!58 z!3559 Nil!56685 0 lt!2024324 (list!17947 input!5492) lt!2024326)))))))))

(assert (= (and d!1584135 c!838359) b!4924131))

(assert (= (and d!1584135 (not c!838359)) b!4924132))

(declare-fun m!5940266 () Bool)

(assert (=> b!4924132 m!5940266))

(assert (=> b!4922855 d!1584135))

(declare-fun e!3076873 () List!56809)

(declare-fun b!4924135 () Bool)

(assert (=> b!4924135 (= e!3076873 (list!17950 (xs!18192 (c!837809 (ite c!837884 input!5492 (_1!33888 lt!2024748))))))))

(declare-fun b!4924133 () Bool)

(declare-fun e!3076872 () List!56809)

(assert (=> b!4924133 (= e!3076872 Nil!56685)))

(declare-fun d!1584141 () Bool)

(declare-fun c!838360 () Bool)

(assert (=> d!1584141 (= c!838360 ((_ is Empty!14872) (c!837809 (ite c!837884 input!5492 (_1!33888 lt!2024748)))))))

(assert (=> d!1584141 (= (list!17949 (c!837809 (ite c!837884 input!5492 (_1!33888 lt!2024748)))) e!3076872)))

(declare-fun b!4924136 () Bool)

(assert (=> b!4924136 (= e!3076873 (++!12322 (list!17949 (left!41330 (c!837809 (ite c!837884 input!5492 (_1!33888 lt!2024748))))) (list!17949 (right!41660 (c!837809 (ite c!837884 input!5492 (_1!33888 lt!2024748)))))))))

(declare-fun b!4924134 () Bool)

(assert (=> b!4924134 (= e!3076872 e!3076873)))

(declare-fun c!838361 () Bool)

(assert (=> b!4924134 (= c!838361 ((_ is Leaf!24741) (c!837809 (ite c!837884 input!5492 (_1!33888 lt!2024748)))))))

(assert (= (and d!1584141 c!838360) b!4924133))

(assert (= (and d!1584141 (not c!838360)) b!4924134))

(assert (= (and b!4924134 c!838361) b!4924135))

(assert (= (and b!4924134 (not c!838361)) b!4924136))

(declare-fun m!5940268 () Bool)

(assert (=> b!4924135 m!5940268))

(declare-fun m!5940270 () Bool)

(assert (=> b!4924136 m!5940270))

(declare-fun m!5940272 () Bool)

(assert (=> b!4924136 m!5940272))

(assert (=> b!4924136 m!5940270))

(assert (=> b!4924136 m!5940272))

(declare-fun m!5940274 () Bool)

(assert (=> b!4924136 m!5940274))

(assert (=> d!1583517 d!1584141))

(declare-fun b!4924141 () Bool)

(declare-fun res!2101981 () Bool)

(declare-fun e!3076876 () Bool)

(assert (=> b!4924141 (=> (not res!2101981) (not e!3076876))))

(assert (=> b!4924141 (= res!2101981 (isBalanced!4085 (right!41660 (right!41660 (c!837809 (_1!33888 lt!2024758))))))))

(declare-fun b!4924142 () Bool)

(assert (=> b!4924142 (= e!3076876 (not (isEmpty!30568 (right!41660 (right!41660 (c!837809 (_1!33888 lt!2024758)))))))))

(declare-fun d!1584143 () Bool)

(declare-fun res!2101980 () Bool)

(declare-fun e!3076877 () Bool)

(assert (=> d!1584143 (=> res!2101980 e!3076877)))

(assert (=> d!1584143 (= res!2101980 (not ((_ is Node!14872) (right!41660 (c!837809 (_1!33888 lt!2024758))))))))

(assert (=> d!1584143 (= (isBalanced!4085 (right!41660 (c!837809 (_1!33888 lt!2024758)))) e!3076877)))

(declare-fun b!4924143 () Bool)

(declare-fun res!2101982 () Bool)

(assert (=> b!4924143 (=> (not res!2101982) (not e!3076876))))

(assert (=> b!4924143 (= res!2101982 (<= (- (height!1982 (left!41330 (right!41660 (c!837809 (_1!33888 lt!2024758))))) (height!1982 (right!41660 (right!41660 (c!837809 (_1!33888 lt!2024758)))))) 1))))

(declare-fun b!4924144 () Bool)

(declare-fun res!2101983 () Bool)

(assert (=> b!4924144 (=> (not res!2101983) (not e!3076876))))

(assert (=> b!4924144 (= res!2101983 (not (isEmpty!30568 (left!41330 (right!41660 (c!837809 (_1!33888 lt!2024758)))))))))

(declare-fun b!4924145 () Bool)

(declare-fun res!2101979 () Bool)

(assert (=> b!4924145 (=> (not res!2101979) (not e!3076876))))

(assert (=> b!4924145 (= res!2101979 (isBalanced!4085 (left!41330 (right!41660 (c!837809 (_1!33888 lt!2024758))))))))

(declare-fun b!4924146 () Bool)

(assert (=> b!4924146 (= e!3076877 e!3076876)))

(declare-fun res!2101978 () Bool)

(assert (=> b!4924146 (=> (not res!2101978) (not e!3076876))))

(assert (=> b!4924146 (= res!2101978 (<= (- 1) (- (height!1982 (left!41330 (right!41660 (c!837809 (_1!33888 lt!2024758))))) (height!1982 (right!41660 (right!41660 (c!837809 (_1!33888 lt!2024758))))))))))

(assert (= (and d!1584143 (not res!2101980)) b!4924146))

(assert (= (and b!4924146 res!2101978) b!4924143))

(assert (= (and b!4924143 res!2101982) b!4924145))

(assert (= (and b!4924145 res!2101979) b!4924141))

(assert (= (and b!4924141 res!2101981) b!4924144))

(assert (= (and b!4924144 res!2101983) b!4924142))

(declare-fun m!5940288 () Bool)

(assert (=> b!4924142 m!5940288))

(declare-fun m!5940292 () Bool)

(assert (=> b!4924146 m!5940292))

(declare-fun m!5940296 () Bool)

(assert (=> b!4924146 m!5940296))

(assert (=> b!4924143 m!5940292))

(assert (=> b!4924143 m!5940296))

(declare-fun m!5940302 () Bool)

(assert (=> b!4924144 m!5940302))

(declare-fun m!5940304 () Bool)

(assert (=> b!4924145 m!5940304))

(declare-fun m!5940306 () Bool)

(assert (=> b!4924141 m!5940306))

(assert (=> b!4923060 d!1584143))

(declare-fun d!1584147 () Bool)

(assert (=> d!1584147 (= (inv!73470 (xs!18192 (right!41660 (c!837809 input!5492)))) (<= (size!37476 (innerList!14960 (xs!18192 (right!41660 (c!837809 input!5492))))) 2147483647))))

(declare-fun bs!1179375 () Bool)

(assert (= bs!1179375 d!1584147))

(declare-fun m!5940312 () Bool)

(assert (=> bs!1179375 m!5940312))

(assert (=> b!4923478 d!1584147))

(declare-fun b!4924151 () Bool)

(declare-fun res!2101989 () Bool)

(declare-fun e!3076880 () Bool)

(assert (=> b!4924151 (=> (not res!2101989) (not e!3076880))))

(assert (=> b!4924151 (= res!2101989 (isBalanced!4085 (right!41660 (left!41330 (right!41660 (c!837809 input!5492))))))))

(declare-fun b!4924152 () Bool)

(assert (=> b!4924152 (= e!3076880 (not (isEmpty!30568 (right!41660 (left!41330 (right!41660 (c!837809 input!5492)))))))))

(declare-fun d!1584151 () Bool)

(declare-fun res!2101988 () Bool)

(declare-fun e!3076881 () Bool)

(assert (=> d!1584151 (=> res!2101988 e!3076881)))

(assert (=> d!1584151 (= res!2101988 (not ((_ is Node!14872) (left!41330 (right!41660 (c!837809 input!5492))))))))

(assert (=> d!1584151 (= (isBalanced!4085 (left!41330 (right!41660 (c!837809 input!5492)))) e!3076881)))

(declare-fun b!4924153 () Bool)

(declare-fun res!2101990 () Bool)

(assert (=> b!4924153 (=> (not res!2101990) (not e!3076880))))

(assert (=> b!4924153 (= res!2101990 (<= (- (height!1982 (left!41330 (left!41330 (right!41660 (c!837809 input!5492))))) (height!1982 (right!41660 (left!41330 (right!41660 (c!837809 input!5492)))))) 1))))

(declare-fun b!4924154 () Bool)

(declare-fun res!2101991 () Bool)

(assert (=> b!4924154 (=> (not res!2101991) (not e!3076880))))

(assert (=> b!4924154 (= res!2101991 (not (isEmpty!30568 (left!41330 (left!41330 (right!41660 (c!837809 input!5492)))))))))

(declare-fun b!4924155 () Bool)

(declare-fun res!2101987 () Bool)

(assert (=> b!4924155 (=> (not res!2101987) (not e!3076880))))

(assert (=> b!4924155 (= res!2101987 (isBalanced!4085 (left!41330 (left!41330 (right!41660 (c!837809 input!5492))))))))

(declare-fun b!4924156 () Bool)

(assert (=> b!4924156 (= e!3076881 e!3076880)))

(declare-fun res!2101986 () Bool)

(assert (=> b!4924156 (=> (not res!2101986) (not e!3076880))))

(assert (=> b!4924156 (= res!2101986 (<= (- 1) (- (height!1982 (left!41330 (left!41330 (right!41660 (c!837809 input!5492))))) (height!1982 (right!41660 (left!41330 (right!41660 (c!837809 input!5492))))))))))

(assert (= (and d!1584151 (not res!2101988)) b!4924156))

(assert (= (and b!4924156 res!2101986) b!4924153))

(assert (= (and b!4924153 res!2101990) b!4924155))

(assert (= (and b!4924155 res!2101987) b!4924151))

(assert (= (and b!4924151 res!2101989) b!4924154))

(assert (= (and b!4924154 res!2101991) b!4924152))

(declare-fun m!5940322 () Bool)

(assert (=> b!4924152 m!5940322))

(declare-fun m!5940324 () Bool)

(assert (=> b!4924156 m!5940324))

(declare-fun m!5940326 () Bool)

(assert (=> b!4924156 m!5940326))

(assert (=> b!4924153 m!5940324))

(assert (=> b!4924153 m!5940326))

(declare-fun m!5940328 () Bool)

(assert (=> b!4924154 m!5940328))

(declare-fun m!5940330 () Bool)

(assert (=> b!4924155 m!5940330))

(declare-fun m!5940332 () Bool)

(assert (=> b!4924151 m!5940332))

(assert (=> b!4922984 d!1584151))

(declare-fun b!4924163 () Bool)

(declare-fun res!2101992 () Bool)

(declare-fun e!3076884 () Bool)

(assert (=> b!4924163 (=> (not res!2101992) (not e!3076884))))

(declare-fun lt!2025512 () List!56809)

(assert (=> b!4924163 (= res!2101992 (= (size!37476 lt!2025512) (+ (size!37476 call!342986) (size!37476 (Cons!56685 call!343041 Nil!56685)))))))

(declare-fun b!4924161 () Bool)

(declare-fun e!3076885 () List!56809)

(assert (=> b!4924161 (= e!3076885 (Cons!56685 call!343041 Nil!56685))))

(declare-fun b!4924162 () Bool)

(assert (=> b!4924162 (= e!3076885 (Cons!56685 (h!63133 call!342986) (++!12322 (t!367249 call!342986) (Cons!56685 call!343041 Nil!56685))))))

(declare-fun d!1584157 () Bool)

(assert (=> d!1584157 e!3076884))

(declare-fun res!2101993 () Bool)

(assert (=> d!1584157 (=> (not res!2101993) (not e!3076884))))

(assert (=> d!1584157 (= res!2101993 (= (content!10066 lt!2025512) ((_ map or) (content!10066 call!342986) (content!10066 (Cons!56685 call!343041 Nil!56685)))))))

(assert (=> d!1584157 (= lt!2025512 e!3076885)))

(declare-fun c!838366 () Bool)

(assert (=> d!1584157 (= c!838366 ((_ is Nil!56685) call!342986))))

(assert (=> d!1584157 (= (++!12322 call!342986 (Cons!56685 call!343041 Nil!56685)) lt!2025512)))

(declare-fun b!4924164 () Bool)

(assert (=> b!4924164 (= e!3076884 (or (not (= (Cons!56685 call!343041 Nil!56685) Nil!56685)) (= lt!2025512 call!342986)))))

(assert (= (and d!1584157 c!838366) b!4924161))

(assert (= (and d!1584157 (not c!838366)) b!4924162))

(assert (= (and d!1584157 res!2101993) b!4924163))

(assert (= (and b!4924163 res!2101992) b!4924164))

(declare-fun m!5940338 () Bool)

(assert (=> b!4924163 m!5940338))

(assert (=> b!4924163 m!5938554))

(declare-fun m!5940340 () Bool)

(assert (=> b!4924163 m!5940340))

(declare-fun m!5940342 () Bool)

(assert (=> b!4924162 m!5940342))

(declare-fun m!5940344 () Bool)

(assert (=> d!1584157 m!5940344))

(declare-fun m!5940346 () Bool)

(assert (=> d!1584157 m!5940346))

(declare-fun m!5940348 () Bool)

(assert (=> d!1584157 m!5940348))

(assert (=> bm!343034 d!1584157))

(declare-fun d!1584163 () Bool)

(declare-fun lt!2025513 () Int)

(assert (=> d!1584163 (>= lt!2025513 0)))

(declare-fun e!3076887 () Int)

(assert (=> d!1584163 (= lt!2025513 e!3076887)))

(declare-fun c!838367 () Bool)

(assert (=> d!1584163 (= c!838367 ((_ is Nil!56685) (ite c!838080 lt!2025155 lt!2025151)))))

(assert (=> d!1584163 (= (size!37476 (ite c!838080 lt!2025155 lt!2025151)) lt!2025513)))

(declare-fun b!4924167 () Bool)

(assert (=> b!4924167 (= e!3076887 0)))

(declare-fun b!4924168 () Bool)

(assert (=> b!4924168 (= e!3076887 (+ 1 (size!37476 (t!367249 (ite c!838080 lt!2025155 lt!2025151)))))))

(assert (= (and d!1584163 c!838367) b!4924167))

(assert (= (and d!1584163 (not c!838367)) b!4924168))

(declare-fun m!5940350 () Bool)

(assert (=> b!4924168 m!5940350))

(assert (=> bm!343074 d!1584163))

(declare-fun d!1584165 () Bool)

(declare-fun lt!2025514 () Int)

(assert (=> d!1584165 (>= lt!2025514 0)))

(declare-fun e!3076888 () Int)

(assert (=> d!1584165 (= lt!2025514 e!3076888)))

(declare-fun c!838368 () Bool)

(assert (=> d!1584165 (= c!838368 ((_ is Nil!56685) lt!2025177))))

(assert (=> d!1584165 (= (size!37476 lt!2025177) lt!2025514)))

(declare-fun b!4924169 () Bool)

(assert (=> b!4924169 (= e!3076888 0)))

(declare-fun b!4924170 () Bool)

(assert (=> b!4924170 (= e!3076888 (+ 1 (size!37476 (t!367249 lt!2025177))))))

(assert (= (and d!1584165 c!838368) b!4924169))

(assert (= (and d!1584165 (not c!838368)) b!4924170))

(declare-fun m!5940354 () Bool)

(assert (=> b!4924170 m!5940354))

(assert (=> b!4923276 d!1584165))

(assert (=> b!4923276 d!1583487))

(declare-fun d!1584169 () Bool)

(declare-fun lt!2025515 () Int)

(assert (=> d!1584169 (>= lt!2025515 0)))

(declare-fun e!3076889 () Int)

(assert (=> d!1584169 (= lt!2025515 e!3076889)))

(declare-fun c!838369 () Bool)

(assert (=> d!1584169 (= c!838369 ((_ is Nil!56685) (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))

(assert (=> d!1584169 (= (size!37476 (Cons!56685 (head!10520 lt!2024324) Nil!56685)) lt!2025515)))

(declare-fun b!4924171 () Bool)

(assert (=> b!4924171 (= e!3076889 0)))

(declare-fun b!4924172 () Bool)

(assert (=> b!4924172 (= e!3076889 (+ 1 (size!37476 (t!367249 (Cons!56685 (head!10520 lt!2024324) Nil!56685)))))))

(assert (= (and d!1584169 c!838369) b!4924171))

(assert (= (and d!1584169 (not c!838369)) b!4924172))

(declare-fun m!5940356 () Bool)

(assert (=> b!4924172 m!5940356))

(assert (=> b!4923276 d!1584169))

(declare-fun b!4924173 () Bool)

(declare-fun e!3076891 () List!56809)

(assert (=> b!4924173 (= e!3076891 Nil!56685)))

(declare-fun b!4924174 () Bool)

(declare-fun e!3076893 () List!56809)

(assert (=> b!4924174 (= e!3076893 (drop!2224 (t!367249 lt!2025155) (- lt!2024322 1)))))

(declare-fun bm!343199 () Bool)

(declare-fun call!343204 () Int)

(assert (=> bm!343199 (= call!343204 (size!37476 lt!2025155))))

(declare-fun b!4924175 () Bool)

(declare-fun e!3076894 () Int)

(declare-fun e!3076892 () Int)

(assert (=> b!4924175 (= e!3076894 e!3076892)))

(declare-fun c!838371 () Bool)

(assert (=> b!4924175 (= c!838371 (>= lt!2024322 call!343204))))

(declare-fun b!4924176 () Bool)

(assert (=> b!4924176 (= e!3076894 call!343204)))

(declare-fun b!4924177 () Bool)

(assert (=> b!4924177 (= e!3076892 (- call!343204 lt!2024322))))

(declare-fun b!4924178 () Bool)

(assert (=> b!4924178 (= e!3076892 0)))

(declare-fun b!4924179 () Bool)

(assert (=> b!4924179 (= e!3076891 e!3076893)))

(declare-fun c!838370 () Bool)

(assert (=> b!4924179 (= c!838370 (<= lt!2024322 0))))

(declare-fun b!4924180 () Bool)

(declare-fun e!3076890 () Bool)

(declare-fun lt!2025516 () List!56809)

(assert (=> b!4924180 (= e!3076890 (= (size!37476 lt!2025516) e!3076894))))

(declare-fun c!838373 () Bool)

(assert (=> b!4924180 (= c!838373 (<= lt!2024322 0))))

(declare-fun b!4924181 () Bool)

(assert (=> b!4924181 (= e!3076893 lt!2025155)))

(declare-fun d!1584171 () Bool)

(assert (=> d!1584171 e!3076890))

(declare-fun res!2101996 () Bool)

(assert (=> d!1584171 (=> (not res!2101996) (not e!3076890))))

(assert (=> d!1584171 (= res!2101996 (= ((_ map implies) (content!10066 lt!2025516) (content!10066 lt!2025155)) ((as const (InoxSet C!26956)) true)))))

(assert (=> d!1584171 (= lt!2025516 e!3076891)))

(declare-fun c!838372 () Bool)

(assert (=> d!1584171 (= c!838372 ((_ is Nil!56685) lt!2025155))))

(assert (=> d!1584171 (= (drop!2224 lt!2025155 lt!2024322) lt!2025516)))

(assert (= (and d!1584171 c!838372) b!4924173))

(assert (= (and d!1584171 (not c!838372)) b!4924179))

(assert (= (and b!4924179 c!838370) b!4924181))

(assert (= (and b!4924179 (not c!838370)) b!4924174))

(assert (= (and d!1584171 res!2101996) b!4924180))

(assert (= (and b!4924180 c!838373) b!4924176))

(assert (= (and b!4924180 (not c!838373)) b!4924175))

(assert (= (and b!4924175 c!838371) b!4924178))

(assert (= (and b!4924175 (not c!838371)) b!4924177))

(assert (= (or b!4924176 b!4924175 b!4924177) bm!343199))

(declare-fun m!5940358 () Bool)

(assert (=> b!4924174 m!5940358))

(declare-fun m!5940360 () Bool)

(assert (=> bm!343199 m!5940360))

(declare-fun m!5940362 () Bool)

(assert (=> b!4924180 m!5940362))

(declare-fun m!5940364 () Bool)

(assert (=> d!1584171 m!5940364))

(declare-fun m!5940366 () Bool)

(assert (=> d!1584171 m!5940366))

(assert (=> b!4923230 d!1584171))

(declare-fun d!1584173 () Bool)

(assert (=> d!1584173 (= (drop!2224 lt!2025155 lt!2024322) (slice!766 lt!2025155 lt!2024322 (size!37476 lt!2025155)))))

(declare-fun lt!2025522 () Unit!147131)

(declare-fun choose!36055 (List!56809 Int) Unit!147131)

(assert (=> d!1584173 (= lt!2025522 (choose!36055 lt!2025155 lt!2024322))))

(declare-fun e!3076901 () Bool)

(assert (=> d!1584173 e!3076901))

(declare-fun res!2102003 () Bool)

(assert (=> d!1584173 (=> (not res!2102003) (not e!3076901))))

(assert (=> d!1584173 (= res!2102003 (<= 0 lt!2024322))))

(assert (=> d!1584173 (= (dropLemma!25 lt!2025155 lt!2024322) lt!2025522)))

(declare-fun b!4924190 () Bool)

(assert (=> b!4924190 (= e!3076901 (<= lt!2024322 (size!37476 lt!2025155)))))

(assert (= (and d!1584173 res!2102003) b!4924190))

(assert (=> d!1584173 m!5938774))

(assert (=> d!1584173 m!5940360))

(assert (=> d!1584173 m!5940360))

(declare-fun m!5940378 () Bool)

(assert (=> d!1584173 m!5940378))

(declare-fun m!5940380 () Bool)

(assert (=> d!1584173 m!5940380))

(assert (=> b!4924190 m!5940360))

(assert (=> b!4923230 d!1584173))

(declare-fun d!1584179 () Bool)

(assert (=> d!1584179 (= (slice!766 lt!2025155 lt!2024322 call!343077) (take!577 (drop!2224 lt!2025155 lt!2024322) (- call!343077 lt!2024322)))))

(declare-fun bs!1179381 () Bool)

(assert (= bs!1179381 d!1584179))

(assert (=> bs!1179381 m!5938774))

(assert (=> bs!1179381 m!5938774))

(declare-fun m!5940386 () Bool)

(assert (=> bs!1179381 m!5940386))

(assert (=> b!4923230 d!1584179))

(declare-fun d!1584183 () Bool)

(declare-fun lt!2025528 () IArray!29805)

(assert (=> d!1584183 (= lt!2025528 (IArray!29806 (slice!766 (list!17950 (xs!18192 (c!837809 input!5492))) lt!2024322 (csize!29975 (c!837809 input!5492)))))))

(declare-fun choose!36056 (IArray!29805 Int Int) IArray!29805)

(assert (=> d!1584183 (= lt!2025528 (choose!36056 (xs!18192 (c!837809 input!5492)) lt!2024322 (csize!29975 (c!837809 input!5492))))))

(declare-fun e!3076921 () Bool)

(assert (=> d!1584183 e!3076921))

(declare-fun res!2102018 () Bool)

(assert (=> d!1584183 (=> (not res!2102018) (not e!3076921))))

(assert (=> d!1584183 (= res!2102018 (and (<= 0 lt!2024322) (<= lt!2024322 (csize!29975 (c!837809 input!5492)))))))

(assert (=> d!1584183 (= (slice!767 (xs!18192 (c!837809 input!5492)) lt!2024322 (csize!29975 (c!837809 input!5492))) lt!2025528)))

(declare-fun b!4924225 () Bool)

(declare-fun size!37479 (IArray!29805) Int)

(assert (=> b!4924225 (= e!3076921 (<= (csize!29975 (c!837809 input!5492)) (size!37479 (xs!18192 (c!837809 input!5492)))))))

(assert (= (and d!1584183 res!2102018) b!4924225))

(assert (=> d!1584183 m!5938448))

(assert (=> d!1584183 m!5938448))

(declare-fun m!5940438 () Bool)

(assert (=> d!1584183 m!5940438))

(declare-fun m!5940440 () Bool)

(assert (=> d!1584183 m!5940440))

(declare-fun m!5940442 () Bool)

(assert (=> b!4924225 m!5940442))

(assert (=> b!4923230 d!1584183))

(declare-fun d!1584201 () Bool)

(assert (=> d!1584201 (= (list!17950 (xs!18192 (c!837809 input!5492))) (innerList!14960 (xs!18192 (c!837809 input!5492))))))

(assert (=> b!4923230 d!1584201))

(declare-fun d!1584205 () Bool)

(declare-fun lt!2025529 () IArray!29805)

(assert (=> d!1584205 (= lt!2025529 (IArray!29806 (slice!766 (list!17950 (xs!18192 (c!837809 input!5492))) 0 lt!2024322)))))

(assert (=> d!1584205 (= lt!2025529 (choose!36056 (xs!18192 (c!837809 input!5492)) 0 lt!2024322))))

(declare-fun e!3076924 () Bool)

(assert (=> d!1584205 e!3076924))

(declare-fun res!2102025 () Bool)

(assert (=> d!1584205 (=> (not res!2102025) (not e!3076924))))

(assert (=> d!1584205 (= res!2102025 (and (<= 0 0) (<= 0 lt!2024322)))))

(assert (=> d!1584205 (= (slice!767 (xs!18192 (c!837809 input!5492)) 0 lt!2024322) lt!2025529)))

(declare-fun b!4924232 () Bool)

(assert (=> b!4924232 (= e!3076924 (<= lt!2024322 (size!37479 (xs!18192 (c!837809 input!5492)))))))

(assert (= (and d!1584205 res!2102025) b!4924232))

(assert (=> d!1584205 m!5938448))

(assert (=> d!1584205 m!5938448))

(declare-fun m!5940456 () Bool)

(assert (=> d!1584205 m!5940456))

(declare-fun m!5940458 () Bool)

(assert (=> d!1584205 m!5940458))

(assert (=> b!4924232 m!5940442))

(assert (=> b!4923230 d!1584205))

(declare-fun d!1584209 () Bool)

(declare-fun lt!2025532 () Bool)

(assert (=> d!1584209 (= lt!2025532 (isEmpty!30566 (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024758))))))))

(assert (=> d!1584209 (= lt!2025532 (= (size!37478 (right!41660 (c!837809 (_2!33888 lt!2024758)))) 0))))

(assert (=> d!1584209 (= (isEmpty!30568 (right!41660 (c!837809 (_2!33888 lt!2024758)))) lt!2025532)))

(declare-fun bs!1179382 () Bool)

(assert (= bs!1179382 d!1584209))

(declare-fun m!5940460 () Bool)

(assert (=> bs!1179382 m!5940460))

(assert (=> bs!1179382 m!5940460))

(declare-fun m!5940462 () Bool)

(assert (=> bs!1179382 m!5940462))

(declare-fun m!5940464 () Bool)

(assert (=> bs!1179382 m!5940464))

(assert (=> b!4922965 d!1584209))

(assert (=> b!4922856 d!1583495))

(assert (=> b!4922856 d!1583487))

(declare-fun d!1584211 () Bool)

(assert (=> d!1584211 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685)) (list!17947 input!5492))))

(declare-fun lt!2025557 () Unit!147131)

(assert (=> d!1584211 (= lt!2025557 (choose!36041 Nil!56685 (list!17947 input!5492)))))

(assert (=> d!1584211 (isPrefix!4961 Nil!56685 (list!17947 input!5492))))

(assert (=> d!1584211 (= (lemmaAddHeadSuffixToPrefixStillPrefix!773 Nil!56685 (list!17947 input!5492)) lt!2025557)))

(declare-fun bs!1179383 () Bool)

(assert (= bs!1179383 d!1584211))

(assert (=> bs!1179383 m!5938146))

(assert (=> bs!1179383 m!5937560))

(assert (=> bs!1179383 m!5938158))

(assert (=> bs!1179383 m!5937560))

(declare-fun m!5940466 () Bool)

(assert (=> bs!1179383 m!5940466))

(assert (=> bs!1179383 m!5937560))

(assert (=> bs!1179383 m!5937858))

(assert (=> bs!1179383 m!5937858))

(assert (=> bs!1179383 m!5938144))

(assert (=> bs!1179383 m!5937560))

(assert (=> bs!1179383 m!5938184))

(assert (=> bs!1179383 m!5938146))

(assert (=> b!4922856 d!1584211))

(assert (=> b!4922856 d!1583635))

(assert (=> b!4922856 d!1583465))

(assert (=> b!4922856 d!1583521))

(declare-fun b!4924249 () Bool)

(declare-fun res!2102028 () Bool)

(declare-fun e!3076933 () Bool)

(assert (=> b!4924249 (=> (not res!2102028) (not e!3076933))))

(declare-fun lt!2025558 () List!56809)

(assert (=> b!4924249 (= res!2102028 (= (size!37476 lt!2025558) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 lt!2024911 Nil!56685)))))))

(declare-fun b!4924247 () Bool)

(declare-fun e!3076934 () List!56809)

(assert (=> b!4924247 (= e!3076934 (Cons!56685 lt!2024911 Nil!56685))))

(declare-fun b!4924248 () Bool)

(assert (=> b!4924248 (= e!3076934 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 lt!2024911 Nil!56685))))))

(declare-fun d!1584213 () Bool)

(assert (=> d!1584213 e!3076933))

(declare-fun res!2102029 () Bool)

(assert (=> d!1584213 (=> (not res!2102029) (not e!3076933))))

(assert (=> d!1584213 (= res!2102029 (= (content!10066 lt!2025558) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 lt!2024911 Nil!56685)))))))

(assert (=> d!1584213 (= lt!2025558 e!3076934)))

(declare-fun c!838391 () Bool)

(assert (=> d!1584213 (= c!838391 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584213 (= (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685)) lt!2025558)))

(declare-fun b!4924250 () Bool)

(assert (=> b!4924250 (= e!3076933 (or (not (= (Cons!56685 lt!2024911 Nil!56685) Nil!56685)) (= lt!2025558 Nil!56685)))))

(assert (= (and d!1584213 c!838391) b!4924247))

(assert (= (and d!1584213 (not c!838391)) b!4924248))

(assert (= (and d!1584213 res!2102029) b!4924249))

(assert (= (and b!4924249 res!2102028) b!4924250))

(declare-fun m!5940468 () Bool)

(assert (=> b!4924249 m!5940468))

(assert (=> b!4924249 m!5937598))

(declare-fun m!5940470 () Bool)

(assert (=> b!4924249 m!5940470))

(declare-fun m!5940472 () Bool)

(assert (=> b!4924248 m!5940472))

(declare-fun m!5940474 () Bool)

(assert (=> d!1584213 m!5940474))

(assert (=> d!1584213 m!5938038))

(declare-fun m!5940476 () Bool)

(assert (=> d!1584213 m!5940476))

(assert (=> b!4922856 d!1584213))

(declare-fun d!1584215 () Bool)

(assert (=> d!1584215 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685)) lt!2024914) (list!17947 input!5492))))

(declare-fun lt!2025559 () Unit!147131)

(assert (=> d!1584215 (= lt!2025559 (choose!36042 Nil!56685 lt!2024911 lt!2024914 (list!17947 input!5492)))))

(assert (=> d!1584215 (= (++!12322 Nil!56685 (Cons!56685 lt!2024911 lt!2024914)) (list!17947 input!5492))))

(assert (=> d!1584215 (= (lemmaMoveElementToOtherListKeepsConcatEq!1391 Nil!56685 lt!2024911 lt!2024914 (list!17947 input!5492)) lt!2025559)))

(declare-fun bs!1179384 () Bool)

(assert (= bs!1179384 d!1584215))

(assert (=> bs!1179384 m!5938148))

(assert (=> bs!1179384 m!5938148))

(assert (=> bs!1179384 m!5938150))

(assert (=> bs!1179384 m!5937560))

(declare-fun m!5940478 () Bool)

(assert (=> bs!1179384 m!5940478))

(declare-fun m!5940480 () Bool)

(assert (=> bs!1179384 m!5940480))

(assert (=> b!4922856 d!1584215))

(declare-fun d!1584217 () Bool)

(assert (=> d!1584217 (<= (size!37476 Nil!56685) (size!37476 (list!17947 input!5492)))))

(declare-fun lt!2025560 () Unit!147131)

(assert (=> d!1584217 (= lt!2025560 (choose!36040 Nil!56685 (list!17947 input!5492)))))

(assert (=> d!1584217 (isPrefix!4961 Nil!56685 (list!17947 input!5492))))

(assert (=> d!1584217 (= (lemmaIsPrefixThenSmallerEqSize!685 Nil!56685 (list!17947 input!5492)) lt!2025560)))

(declare-fun bs!1179385 () Bool)

(assert (= bs!1179385 d!1584217))

(assert (=> bs!1179385 m!5937598))

(assert (=> bs!1179385 m!5937560))

(assert (=> bs!1179385 m!5937644))

(assert (=> bs!1179385 m!5937560))

(declare-fun m!5940482 () Bool)

(assert (=> bs!1179385 m!5940482))

(assert (=> bs!1179385 m!5937560))

(assert (=> bs!1179385 m!5938184))

(assert (=> b!4922856 d!1584217))

(assert (=> b!4922856 d!1583547))

(declare-fun d!1584219 () Bool)

(declare-fun e!3076935 () Bool)

(assert (=> d!1584219 e!3076935))

(declare-fun res!2102032 () Bool)

(assert (=> d!1584219 (=> res!2102032 e!3076935)))

(declare-fun lt!2025561 () Bool)

(assert (=> d!1584219 (= res!2102032 (not lt!2025561))))

(declare-fun e!3076936 () Bool)

(assert (=> d!1584219 (= lt!2025561 e!3076936)))

(declare-fun res!2102031 () Bool)

(assert (=> d!1584219 (=> res!2102031 e!3076936)))

(assert (=> d!1584219 (= res!2102031 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685))))))

(assert (=> d!1584219 (= (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685)) (list!17947 input!5492)) lt!2025561)))

(declare-fun b!4924253 () Bool)

(declare-fun e!3076937 () Bool)

(assert (=> b!4924253 (= e!3076937 (isPrefix!4961 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685))) (tail!9667 (list!17947 input!5492))))))

(declare-fun b!4924252 () Bool)

(declare-fun res!2102033 () Bool)

(assert (=> b!4924252 (=> (not res!2102033) (not e!3076937))))

(assert (=> b!4924252 (= res!2102033 (= (head!10520 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685))) (head!10520 (list!17947 input!5492))))))

(declare-fun b!4924251 () Bool)

(assert (=> b!4924251 (= e!3076936 e!3076937)))

(declare-fun res!2102030 () Bool)

(assert (=> b!4924251 (=> (not res!2102030) (not e!3076937))))

(assert (=> b!4924251 (= res!2102030 (not ((_ is Nil!56685) (list!17947 input!5492))))))

(declare-fun b!4924254 () Bool)

(assert (=> b!4924254 (= e!3076935 (>= (size!37476 (list!17947 input!5492)) (size!37476 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685)))))))

(assert (= (and d!1584219 (not res!2102031)) b!4924251))

(assert (= (and b!4924251 res!2102030) b!4924252))

(assert (= (and b!4924252 res!2102033) b!4924253))

(assert (= (and d!1584219 (not res!2102032)) b!4924254))

(assert (=> b!4924253 m!5938146))

(declare-fun m!5940516 () Bool)

(assert (=> b!4924253 m!5940516))

(assert (=> b!4924253 m!5937560))

(assert (=> b!4924253 m!5938178))

(assert (=> b!4924253 m!5940516))

(assert (=> b!4924253 m!5938178))

(declare-fun m!5940524 () Bool)

(assert (=> b!4924253 m!5940524))

(assert (=> b!4924252 m!5938146))

(declare-fun m!5940526 () Bool)

(assert (=> b!4924252 m!5940526))

(assert (=> b!4924252 m!5937560))

(assert (=> b!4924252 m!5939416))

(assert (=> b!4924254 m!5937560))

(assert (=> b!4924254 m!5937644))

(assert (=> b!4924254 m!5938146))

(declare-fun m!5940534 () Bool)

(assert (=> b!4924254 m!5940534))

(assert (=> b!4922856 d!1584219))

(declare-fun d!1584221 () Bool)

(assert (=> d!1584221 (= (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) (h!63133 (getSuffix!2949 (list!17947 input!5492) Nil!56685)))))

(assert (=> b!4922856 d!1584221))

(declare-fun b!4924257 () Bool)

(declare-fun res!2102034 () Bool)

(declare-fun e!3076938 () Bool)

(assert (=> b!4924257 (=> (not res!2102034) (not e!3076938))))

(declare-fun lt!2025562 () List!56809)

(assert (=> b!4924257 (= res!2102034 (= (size!37476 lt!2025562) (+ (size!37476 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685))) (size!37476 lt!2024914))))))

(declare-fun b!4924255 () Bool)

(declare-fun e!3076939 () List!56809)

(assert (=> b!4924255 (= e!3076939 lt!2024914)))

(declare-fun b!4924256 () Bool)

(assert (=> b!4924256 (= e!3076939 (Cons!56685 (h!63133 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685))) (++!12322 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685))) lt!2024914)))))

(declare-fun d!1584223 () Bool)

(assert (=> d!1584223 e!3076938))

(declare-fun res!2102035 () Bool)

(assert (=> d!1584223 (=> (not res!2102035) (not e!3076938))))

(assert (=> d!1584223 (= res!2102035 (= (content!10066 lt!2025562) ((_ map or) (content!10066 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685))) (content!10066 lt!2024914))))))

(assert (=> d!1584223 (= lt!2025562 e!3076939)))

(declare-fun c!838392 () Bool)

(assert (=> d!1584223 (= c!838392 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685))))))

(assert (=> d!1584223 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685)) lt!2024914) lt!2025562)))

(declare-fun b!4924258 () Bool)

(assert (=> b!4924258 (= e!3076938 (or (not (= lt!2024914 Nil!56685)) (= lt!2025562 (++!12322 Nil!56685 (Cons!56685 lt!2024911 Nil!56685)))))))

(assert (= (and d!1584223 c!838392) b!4924255))

(assert (= (and d!1584223 (not c!838392)) b!4924256))

(assert (= (and d!1584223 res!2102035) b!4924257))

(assert (= (and b!4924257 res!2102034) b!4924258))

(declare-fun m!5940548 () Bool)

(assert (=> b!4924257 m!5940548))

(assert (=> b!4924257 m!5938148))

(declare-fun m!5940550 () Bool)

(assert (=> b!4924257 m!5940550))

(declare-fun m!5940552 () Bool)

(assert (=> b!4924257 m!5940552))

(declare-fun m!5940554 () Bool)

(assert (=> b!4924256 m!5940554))

(declare-fun m!5940556 () Bool)

(assert (=> d!1584223 m!5940556))

(assert (=> d!1584223 m!5938148))

(declare-fun m!5940558 () Bool)

(assert (=> d!1584223 m!5940558))

(declare-fun m!5940560 () Bool)

(assert (=> d!1584223 m!5940560))

(assert (=> b!4922856 d!1584223))

(declare-fun b!4924265 () Bool)

(declare-fun res!2102040 () Bool)

(declare-fun e!3076943 () Bool)

(assert (=> b!4924265 (=> (not res!2102040) (not e!3076943))))

(declare-fun lt!2025565 () List!56809)

(assert (=> b!4924265 (= res!2102040 (= (size!37476 lt!2025565) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685)))))))

(declare-fun b!4924263 () Bool)

(declare-fun e!3076944 () List!56809)

(assert (=> b!4924263 (= e!3076944 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685))))

(declare-fun b!4924264 () Bool)

(assert (=> b!4924264 (= e!3076944 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685))))))

(declare-fun d!1584229 () Bool)

(assert (=> d!1584229 e!3076943))

(declare-fun res!2102041 () Bool)

(assert (=> d!1584229 (=> (not res!2102041) (not e!3076943))))

(assert (=> d!1584229 (= res!2102041 (= (content!10066 lt!2025565) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685)))))))

(assert (=> d!1584229 (= lt!2025565 e!3076944)))

(declare-fun c!838393 () Bool)

(assert (=> d!1584229 (= c!838393 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584229 (= (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685)) lt!2025565)))

(declare-fun b!4924266 () Bool)

(assert (=> b!4924266 (= e!3076943 (or (not (= (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) Nil!56685)) Nil!56685) Nil!56685)) (= lt!2025565 Nil!56685)))))

(assert (= (and d!1584229 c!838393) b!4924263))

(assert (= (and d!1584229 (not c!838393)) b!4924264))

(assert (= (and d!1584229 res!2102041) b!4924265))

(assert (= (and b!4924265 res!2102040) b!4924266))

(declare-fun m!5940566 () Bool)

(assert (=> b!4924265 m!5940566))

(assert (=> b!4924265 m!5937598))

(declare-fun m!5940568 () Bool)

(assert (=> b!4924265 m!5940568))

(declare-fun m!5940570 () Bool)

(assert (=> b!4924264 m!5940570))

(declare-fun m!5940572 () Bool)

(assert (=> d!1584229 m!5940572))

(assert (=> d!1584229 m!5938038))

(declare-fun m!5940574 () Bool)

(assert (=> d!1584229 m!5940574))

(assert (=> b!4922856 d!1584229))

(declare-fun d!1584233 () Bool)

(declare-fun c!838394 () Bool)

(assert (=> d!1584233 (= c!838394 ((_ is Nil!56685) lt!2024995))))

(declare-fun e!3076948 () (InoxSet C!26956))

(assert (=> d!1584233 (= (content!10066 lt!2024995) e!3076948)))

(declare-fun b!4924271 () Bool)

(assert (=> b!4924271 (= e!3076948 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924272 () Bool)

(assert (=> b!4924272 (= e!3076948 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024995) true) (content!10066 (t!367249 lt!2024995))))))

(assert (= (and d!1584233 c!838394) b!4924271))

(assert (= (and d!1584233 (not c!838394)) b!4924272))

(declare-fun m!5940576 () Bool)

(assert (=> b!4924272 m!5940576))

(declare-fun m!5940578 () Bool)

(assert (=> b!4924272 m!5940578))

(assert (=> d!1583491 d!1584233))

(assert (=> d!1583491 d!1583767))

(declare-fun d!1584235 () Bool)

(declare-fun c!838395 () Bool)

(assert (=> d!1584235 (= c!838395 ((_ is Nil!56685) (Cons!56685 call!342985 Nil!56685)))))

(declare-fun e!3076949 () (InoxSet C!26956))

(assert (=> d!1584235 (= (content!10066 (Cons!56685 call!342985 Nil!56685)) e!3076949)))

(declare-fun b!4924273 () Bool)

(assert (=> b!4924273 (= e!3076949 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924274 () Bool)

(assert (=> b!4924274 (= e!3076949 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (Cons!56685 call!342985 Nil!56685)) true) (content!10066 (t!367249 (Cons!56685 call!342985 Nil!56685)))))))

(assert (= (and d!1584235 c!838395) b!4924273))

(assert (= (and d!1584235 (not c!838395)) b!4924274))

(declare-fun m!5940592 () Bool)

(assert (=> b!4924274 m!5940592))

(declare-fun m!5940596 () Bool)

(assert (=> b!4924274 m!5940596))

(assert (=> d!1583491 d!1584235))

(declare-fun b!4924277 () Bool)

(declare-fun res!2102046 () Bool)

(declare-fun e!3076950 () Bool)

(assert (=> b!4924277 (=> (not res!2102046) (not e!3076950))))

(declare-fun lt!2025567 () List!56809)

(assert (=> b!4924277 (= res!2102046 (= (size!37476 lt!2025567) (+ (size!37476 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328))))) (size!37476 (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328))))))))))

(declare-fun b!4924275 () Bool)

(declare-fun e!3076951 () List!56809)

(assert (=> b!4924275 (= e!3076951 (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328)))))))

(declare-fun b!4924276 () Bool)

(assert (=> b!4924276 (= e!3076951 (Cons!56685 (h!63133 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328))))) (++!12322 (t!367249 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328))))) (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328)))))))))

(declare-fun d!1584239 () Bool)

(assert (=> d!1584239 e!3076950))

(declare-fun res!2102047 () Bool)

(assert (=> d!1584239 (=> (not res!2102047) (not e!3076950))))

(assert (=> d!1584239 (= res!2102047 (= (content!10066 lt!2025567) ((_ map or) (content!10066 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328))))) (content!10066 (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328))))))))))

(assert (=> d!1584239 (= lt!2025567 e!3076951)))

(declare-fun c!838396 () Bool)

(assert (=> d!1584239 (= c!838396 ((_ is Nil!56685) (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328))))))))

(assert (=> d!1584239 (= (++!12322 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328)))) (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328))))) lt!2025567)))

(declare-fun b!4924278 () Bool)

(assert (=> b!4924278 (= e!3076950 (or (not (= (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328)))) Nil!56685)) (= lt!2025567 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328)))))))))

(assert (= (and d!1584239 c!838396) b!4924275))

(assert (= (and d!1584239 (not c!838396)) b!4924276))

(assert (= (and d!1584239 res!2102047) b!4924277))

(assert (= (and b!4924277 res!2102046) b!4924278))

(declare-fun m!5940600 () Bool)

(assert (=> b!4924277 m!5940600))

(assert (=> b!4924277 m!5938404))

(declare-fun m!5940602 () Bool)

(assert (=> b!4924277 m!5940602))

(assert (=> b!4924277 m!5938406))

(declare-fun m!5940604 () Bool)

(assert (=> b!4924277 m!5940604))

(assert (=> b!4924276 m!5938406))

(declare-fun m!5940608 () Bool)

(assert (=> b!4924276 m!5940608))

(declare-fun m!5940610 () Bool)

(assert (=> d!1584239 m!5940610))

(assert (=> d!1584239 m!5938404))

(declare-fun m!5940612 () Bool)

(assert (=> d!1584239 m!5940612))

(assert (=> d!1584239 m!5938406))

(declare-fun m!5940614 () Bool)

(assert (=> d!1584239 m!5940614))

(assert (=> b!4922963 d!1584239))

(declare-fun b!4924285 () Bool)

(declare-fun e!3076955 () List!56809)

(assert (=> b!4924285 (= e!3076955 (list!17950 (xs!18192 (left!41330 (c!837809 (_2!33888 lt!2024328))))))))

(declare-fun b!4924283 () Bool)

(declare-fun e!3076954 () List!56809)

(assert (=> b!4924283 (= e!3076954 Nil!56685)))

(declare-fun d!1584249 () Bool)

(declare-fun c!838399 () Bool)

(assert (=> d!1584249 (= c!838399 ((_ is Empty!14872) (left!41330 (c!837809 (_2!33888 lt!2024328)))))))

(assert (=> d!1584249 (= (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024328)))) e!3076954)))

(declare-fun b!4924286 () Bool)

(assert (=> b!4924286 (= e!3076955 (++!12322 (list!17949 (left!41330 (left!41330 (c!837809 (_2!33888 lt!2024328))))) (list!17949 (right!41660 (left!41330 (c!837809 (_2!33888 lt!2024328)))))))))

(declare-fun b!4924284 () Bool)

(assert (=> b!4924284 (= e!3076954 e!3076955)))

(declare-fun c!838400 () Bool)

(assert (=> b!4924284 (= c!838400 ((_ is Leaf!24741) (left!41330 (c!837809 (_2!33888 lt!2024328)))))))

(assert (= (and d!1584249 c!838399) b!4924283))

(assert (= (and d!1584249 (not c!838399)) b!4924284))

(assert (= (and b!4924284 c!838400) b!4924285))

(assert (= (and b!4924284 (not c!838400)) b!4924286))

(declare-fun m!5940620 () Bool)

(assert (=> b!4924285 m!5940620))

(declare-fun m!5940622 () Bool)

(assert (=> b!4924286 m!5940622))

(declare-fun m!5940624 () Bool)

(assert (=> b!4924286 m!5940624))

(assert (=> b!4924286 m!5940622))

(assert (=> b!4924286 m!5940624))

(declare-fun m!5940626 () Bool)

(assert (=> b!4924286 m!5940626))

(assert (=> b!4922963 d!1584249))

(declare-fun b!4924289 () Bool)

(declare-fun e!3076957 () List!56809)

(assert (=> b!4924289 (= e!3076957 (list!17950 (xs!18192 (right!41660 (c!837809 (_2!33888 lt!2024328))))))))

(declare-fun b!4924287 () Bool)

(declare-fun e!3076956 () List!56809)

(assert (=> b!4924287 (= e!3076956 Nil!56685)))

(declare-fun d!1584253 () Bool)

(declare-fun c!838401 () Bool)

(assert (=> d!1584253 (= c!838401 ((_ is Empty!14872) (right!41660 (c!837809 (_2!33888 lt!2024328)))))))

(assert (=> d!1584253 (= (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024328)))) e!3076956)))

(declare-fun b!4924290 () Bool)

(assert (=> b!4924290 (= e!3076957 (++!12322 (list!17949 (left!41330 (right!41660 (c!837809 (_2!33888 lt!2024328))))) (list!17949 (right!41660 (right!41660 (c!837809 (_2!33888 lt!2024328)))))))))

(declare-fun b!4924288 () Bool)

(assert (=> b!4924288 (= e!3076956 e!3076957)))

(declare-fun c!838402 () Bool)

(assert (=> b!4924288 (= c!838402 ((_ is Leaf!24741) (right!41660 (c!837809 (_2!33888 lt!2024328)))))))

(assert (= (and d!1584253 c!838401) b!4924287))

(assert (= (and d!1584253 (not c!838401)) b!4924288))

(assert (= (and b!4924288 c!838402) b!4924289))

(assert (= (and b!4924288 (not c!838402)) b!4924290))

(declare-fun m!5940628 () Bool)

(assert (=> b!4924289 m!5940628))

(declare-fun m!5940630 () Bool)

(assert (=> b!4924290 m!5940630))

(declare-fun m!5940632 () Bool)

(assert (=> b!4924290 m!5940632))

(assert (=> b!4924290 m!5940630))

(assert (=> b!4924290 m!5940632))

(declare-fun m!5940634 () Bool)

(assert (=> b!4924290 m!5940634))

(assert (=> b!4922963 d!1584253))

(declare-fun bs!1179388 () Bool)

(declare-fun d!1584257 () Bool)

(assert (= bs!1179388 (and d!1584257 d!1583923)))

(declare-fun lambda!245188 () Int)

(assert (=> bs!1179388 (not (= lambda!245188 lambda!245180))))

(declare-fun bs!1179389 () Bool)

(assert (= bs!1179389 (and d!1584257 d!1583411)))

(assert (=> bs!1179389 (not (= lambda!245188 lambda!245141))))

(declare-fun bs!1179390 () Bool)

(assert (= bs!1179390 (and d!1584257 b!4924104)))

(assert (=> bs!1179390 (not (= lambda!245188 lambda!245183))))

(declare-fun bs!1179391 () Bool)

(assert (= bs!1179391 (and d!1584257 b!4922796)))

(assert (=> bs!1179391 (not (= lambda!245188 lambda!245144))))

(declare-fun bs!1179392 () Bool)

(assert (= bs!1179392 (and d!1584257 d!1584109)))

(assert (=> bs!1179392 (not (= lambda!245188 lambda!245182))))

(declare-fun bs!1179393 () Bool)

(assert (= bs!1179393 (and d!1584257 d!1583565)))

(assert (=> bs!1179393 (not (= lambda!245188 lambda!245166))))

(declare-fun bs!1179394 () Bool)

(assert (= bs!1179394 (and d!1584257 b!4924105)))

(assert (=> bs!1179394 (not (= lambda!245188 lambda!245184))))

(declare-fun bs!1179395 () Bool)

(assert (= bs!1179395 (and d!1584257 d!1583997)))

(assert (=> bs!1179395 (not (= lambda!245188 lambda!245181))))

(declare-fun bs!1179396 () Bool)

(assert (= bs!1179396 (and d!1584257 b!4922797)))

(assert (=> bs!1179396 (not (= lambda!245188 lambda!245145))))

(assert (=> d!1584257 true))

(declare-fun order!25975 () Int)

(declare-fun dynLambda!23007 (Int Int) Int)

(assert (=> d!1584257 (< (dynLambda!23007 order!25975 (ite c!837920 lambda!245144 lambda!245145)) (dynLambda!23007 order!25975 lambda!245188))))

(assert (=> d!1584257 (= (exists!1242 (ite c!837920 lt!2024847 lt!2024841) (ite c!837920 lambda!245144 lambda!245145)) (not (forall!13134 (ite c!837920 lt!2024847 lt!2024841) lambda!245188)))))

(declare-fun bs!1179397 () Bool)

(assert (= bs!1179397 d!1584257))

(declare-fun m!5940672 () Bool)

(assert (=> bs!1179397 m!5940672))

(assert (=> bm!342998 d!1584257))

(declare-fun d!1584269 () Bool)

(declare-fun lt!2025573 () Int)

(assert (=> d!1584269 (>= lt!2025573 0)))

(declare-fun e!3076965 () Int)

(assert (=> d!1584269 (= lt!2025573 e!3076965)))

(declare-fun c!838404 () Bool)

(assert (=> d!1584269 (= c!838404 ((_ is Nil!56685) (_1!33887 lt!2024900)))))

(assert (=> d!1584269 (= (size!37476 (_1!33887 lt!2024900)) lt!2025573)))

(declare-fun b!4924307 () Bool)

(assert (=> b!4924307 (= e!3076965 0)))

(declare-fun b!4924308 () Bool)

(assert (=> b!4924308 (= e!3076965 (+ 1 (size!37476 (t!367249 (_1!33887 lt!2024900)))))))

(assert (= (and d!1584269 c!838404) b!4924307))

(assert (= (and d!1584269 (not c!838404)) b!4924308))

(declare-fun m!5940674 () Bool)

(assert (=> b!4924308 m!5940674))

(assert (=> b!4922867 d!1584269))

(assert (=> b!4922867 d!1583487))

(declare-fun b!4924311 () Bool)

(declare-fun res!2102060 () Bool)

(declare-fun e!3076966 () Bool)

(assert (=> b!4924311 (=> (not res!2102060) (not e!3076966))))

(declare-fun lt!2025574 () List!56809)

(assert (=> b!4924311 (= res!2102060 (= (size!37476 lt!2025574) (+ (size!37476 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)))) (size!37476 lt!2024741))))))

(declare-fun b!4924309 () Bool)

(declare-fun e!3076967 () List!56809)

(assert (=> b!4924309 (= e!3076967 lt!2024741)))

(declare-fun b!4924310 () Bool)

(assert (=> b!4924310 (= e!3076967 (Cons!56685 (h!63133 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)))) (++!12322 (t!367249 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)))) lt!2024741)))))

(declare-fun d!1584271 () Bool)

(assert (=> d!1584271 e!3076966))

(declare-fun res!2102061 () Bool)

(assert (=> d!1584271 (=> (not res!2102061) (not e!3076966))))

(assert (=> d!1584271 (= res!2102061 (= (content!10066 lt!2025574) ((_ map or) (content!10066 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)))) (content!10066 lt!2024741))))))

(assert (=> d!1584271 (= lt!2025574 e!3076967)))

(declare-fun c!838405 () Bool)

(assert (=> d!1584271 (= c!838405 ((_ is Nil!56685) (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)))))))

(assert (=> d!1584271 (= (++!12322 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) lt!2024741) lt!2025574)))

(declare-fun b!4924312 () Bool)

(assert (=> b!4924312 (= e!3076966 (or (not (= lt!2024741 Nil!56685)) (= lt!2025574 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))))))))

(assert (= (and d!1584271 c!838405) b!4924309))

(assert (= (and d!1584271 (not c!838405)) b!4924310))

(assert (= (and d!1584271 res!2102061) b!4924311))

(assert (= (and b!4924311 res!2102060) b!4924312))

(declare-fun m!5940676 () Bool)

(assert (=> b!4924311 m!5940676))

(assert (=> b!4924311 m!5940154))

(assert (=> b!4924311 m!5938982))

(declare-fun m!5940678 () Bool)

(assert (=> b!4924310 m!5940678))

(declare-fun m!5940680 () Bool)

(assert (=> d!1584271 m!5940680))

(declare-fun m!5940682 () Bool)

(assert (=> d!1584271 m!5940682))

(assert (=> d!1584271 m!5938990))

(assert (=> b!4923347 d!1584271))

(declare-fun b!4924315 () Bool)

(declare-fun e!3076969 () List!56809)

(assert (=> b!4924315 (= e!3076969 (list!17950 (xs!18192 (c!837809 (_2!33888 lt!2024758)))))))

(declare-fun b!4924313 () Bool)

(declare-fun e!3076968 () List!56809)

(assert (=> b!4924313 (= e!3076968 Nil!56685)))

(declare-fun d!1584273 () Bool)

(declare-fun c!838406 () Bool)

(assert (=> d!1584273 (= c!838406 ((_ is Empty!14872) (c!837809 (_2!33888 lt!2024758))))))

(assert (=> d!1584273 (= (list!17949 (c!837809 (_2!33888 lt!2024758))) e!3076968)))

(declare-fun b!4924316 () Bool)

(assert (=> b!4924316 (= e!3076969 (++!12322 (list!17949 (left!41330 (c!837809 (_2!33888 lt!2024758)))) (list!17949 (right!41660 (c!837809 (_2!33888 lt!2024758))))))))

(declare-fun b!4924314 () Bool)

(assert (=> b!4924314 (= e!3076968 e!3076969)))

(declare-fun c!838407 () Bool)

(assert (=> b!4924314 (= c!838407 ((_ is Leaf!24741) (c!837809 (_2!33888 lt!2024758))))))

(assert (= (and d!1584273 c!838406) b!4924313))

(assert (= (and d!1584273 (not c!838406)) b!4924314))

(assert (= (and b!4924314 c!838407) b!4924315))

(assert (= (and b!4924314 (not c!838407)) b!4924316))

(declare-fun m!5940684 () Bool)

(assert (=> b!4924315 m!5940684))

(assert (=> b!4924316 m!5939694))

(assert (=> b!4924316 m!5940460))

(assert (=> b!4924316 m!5939694))

(assert (=> b!4924316 m!5940460))

(declare-fun m!5940686 () Bool)

(assert (=> b!4924316 m!5940686))

(assert (=> d!1583699 d!1584273))

(declare-fun d!1584275 () Bool)

(declare-fun lt!2025575 () Bool)

(assert (=> d!1584275 (= lt!2025575 (isEmpty!30566 (list!17949 (left!41330 (left!41330 (c!837809 input!5492))))))))

(assert (=> d!1584275 (= lt!2025575 (= (size!37478 (left!41330 (left!41330 (c!837809 input!5492)))) 0))))

(assert (=> d!1584275 (= (isEmpty!30568 (left!41330 (left!41330 (c!837809 input!5492)))) lt!2025575)))

(declare-fun bs!1179398 () Bool)

(assert (= bs!1179398 d!1584275))

(assert (=> bs!1179398 m!5939606))

(assert (=> bs!1179398 m!5939606))

(declare-fun m!5940688 () Bool)

(assert (=> bs!1179398 m!5940688))

(declare-fun m!5940690 () Bool)

(assert (=> bs!1179398 m!5940690))

(assert (=> b!4923036 d!1584275))

(declare-fun d!1584277 () Bool)

(assert (not d!1584277))

(assert (=> b!4922919 d!1584277))

(assert (=> d!1583609 d!1583625))

(declare-fun d!1584279 () Bool)

(assert (=> d!1584279 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685)) lt!2024324)))

(assert (=> d!1584279 true))

(declare-fun _$65!1693 () Unit!147131)

(assert (=> d!1584279 (= (choose!36041 Nil!56685 lt!2024324) _$65!1693)))

(declare-fun bs!1179399 () Bool)

(assert (= bs!1179399 d!1584279))

(assert (=> bs!1179399 m!5937582))

(assert (=> bs!1179399 m!5937582))

(assert (=> bs!1179399 m!5937584))

(assert (=> bs!1179399 m!5937586))

(assert (=> bs!1179399 m!5937586))

(assert (=> bs!1179399 m!5937606))

(assert (=> d!1583609 d!1584279))

(assert (=> d!1583609 d!1583751))

(assert (=> d!1583609 d!1583605))

(assert (=> d!1583609 d!1583419))

(assert (=> d!1583609 d!1583641))

(declare-fun b!4924337 () Bool)

(declare-fun res!2102072 () Bool)

(declare-fun e!3076984 () Bool)

(assert (=> b!4924337 (=> (not res!2102072) (not e!3076984))))

(declare-fun lt!2025576 () List!56809)

(assert (=> b!4924337 (= res!2102072 (= (size!37476 lt!2025576) (+ (size!37476 (t!367249 (_1!33887 lt!2024327))) (size!37476 (_2!33887 lt!2024327)))))))

(declare-fun b!4924335 () Bool)

(declare-fun e!3076985 () List!56809)

(assert (=> b!4924335 (= e!3076985 (_2!33887 lt!2024327))))

(declare-fun b!4924336 () Bool)

(assert (=> b!4924336 (= e!3076985 (Cons!56685 (h!63133 (t!367249 (_1!33887 lt!2024327))) (++!12322 (t!367249 (t!367249 (_1!33887 lt!2024327))) (_2!33887 lt!2024327))))))

(declare-fun d!1584281 () Bool)

(assert (=> d!1584281 e!3076984))

(declare-fun res!2102073 () Bool)

(assert (=> d!1584281 (=> (not res!2102073) (not e!3076984))))

(assert (=> d!1584281 (= res!2102073 (= (content!10066 lt!2025576) ((_ map or) (content!10066 (t!367249 (_1!33887 lt!2024327))) (content!10066 (_2!33887 lt!2024327)))))))

(assert (=> d!1584281 (= lt!2025576 e!3076985)))

(declare-fun c!838412 () Bool)

(assert (=> d!1584281 (= c!838412 ((_ is Nil!56685) (t!367249 (_1!33887 lt!2024327))))))

(assert (=> d!1584281 (= (++!12322 (t!367249 (_1!33887 lt!2024327)) (_2!33887 lt!2024327)) lt!2025576)))

(declare-fun b!4924338 () Bool)

(assert (=> b!4924338 (= e!3076984 (or (not (= (_2!33887 lt!2024327) Nil!56685)) (= lt!2025576 (t!367249 (_1!33887 lt!2024327)))))))

(assert (= (and d!1584281 c!838412) b!4924335))

(assert (= (and d!1584281 (not c!838412)) b!4924336))

(assert (= (and d!1584281 res!2102073) b!4924337))

(assert (= (and b!4924337 res!2102072) b!4924338))

(declare-fun m!5940692 () Bool)

(assert (=> b!4924337 m!5940692))

(assert (=> b!4924337 m!5940024))

(assert (=> b!4924337 m!5938390))

(declare-fun m!5940694 () Bool)

(assert (=> b!4924336 m!5940694))

(declare-fun m!5940696 () Bool)

(assert (=> d!1584281 m!5940696))

(declare-fun m!5940698 () Bool)

(assert (=> d!1584281 m!5940698))

(assert (=> d!1584281 m!5938398))

(assert (=> b!4922953 d!1584281))

(assert (=> b!4922717 d!1583557))

(assert (=> b!4922717 d!1583559))

(declare-fun d!1584283 () Bool)

(declare-fun e!3076988 () Bool)

(assert (=> d!1584283 e!3076988))

(declare-fun res!2102074 () Bool)

(assert (=> d!1584283 (=> (not res!2102074) (not e!3076988))))

(declare-fun lt!2025578 () tuple2!61168)

(assert (=> d!1584283 (= res!2102074 (= (++!12322 (_1!33887 lt!2025578) (_2!33887 lt!2025578)) e!3076384))))

(declare-fun e!3076986 () tuple2!61168)

(assert (=> d!1584283 (= lt!2025578 e!3076986)))

(declare-fun c!838414 () Bool)

(assert (=> d!1584283 (= c!838414 ((_ is Nil!56685) e!3076384))))

(assert (=> d!1584283 (= (splitAtIndex!101 e!3076384 (ite c!838080 lt!2024322 e!3076385)) lt!2025578)))

(declare-fun b!4924339 () Bool)

(declare-fun res!2102075 () Bool)

(assert (=> b!4924339 (=> (not res!2102075) (not e!3076988))))

(assert (=> b!4924339 (= res!2102075 (= (_1!33887 lt!2025578) (take!577 e!3076384 (ite c!838080 lt!2024322 e!3076385))))))

(declare-fun lt!2025577 () tuple2!61168)

(declare-fun b!4924340 () Bool)

(assert (=> b!4924340 (= lt!2025577 (splitAtIndex!101 (t!367249 e!3076384) (- (ite c!838080 lt!2024322 e!3076385) 1)))))

(declare-fun e!3076987 () tuple2!61168)

(assert (=> b!4924340 (= e!3076987 (tuple2!61169 (Cons!56685 (h!63133 e!3076384) (_1!33887 lt!2025577)) (_2!33887 lt!2025577)))))

(declare-fun b!4924341 () Bool)

(assert (=> b!4924341 (= e!3076988 (= (_2!33887 lt!2025578) (drop!2224 e!3076384 (ite c!838080 lt!2024322 e!3076385))))))

(declare-fun b!4924342 () Bool)

(assert (=> b!4924342 (= e!3076987 (tuple2!61169 Nil!56685 e!3076384))))

(declare-fun b!4924343 () Bool)

(assert (=> b!4924343 (= e!3076986 e!3076987)))

(declare-fun c!838413 () Bool)

(assert (=> b!4924343 (= c!838413 (<= (ite c!838080 lt!2024322 e!3076385) 0))))

(declare-fun b!4924344 () Bool)

(assert (=> b!4924344 (= e!3076986 (tuple2!61169 Nil!56685 Nil!56685))))

(assert (= (and d!1584283 c!838414) b!4924344))

(assert (= (and d!1584283 (not c!838414)) b!4924343))

(assert (= (and b!4924343 c!838413) b!4924342))

(assert (= (and b!4924343 (not c!838413)) b!4924340))

(assert (= (and d!1584283 res!2102074) b!4924339))

(assert (= (and b!4924339 res!2102075) b!4924341))

(declare-fun m!5940700 () Bool)

(assert (=> d!1584283 m!5940700))

(declare-fun m!5940702 () Bool)

(assert (=> b!4924339 m!5940702))

(declare-fun m!5940704 () Bool)

(assert (=> b!4924340 m!5940704))

(declare-fun m!5940706 () Bool)

(assert (=> b!4924341 m!5940706))

(assert (=> bm!343072 d!1584283))

(declare-fun d!1584285 () Bool)

(declare-fun lt!2025579 () Int)

(assert (=> d!1584285 (>= lt!2025579 0)))

(declare-fun e!3076989 () Int)

(assert (=> d!1584285 (= lt!2025579 e!3076989)))

(declare-fun c!838415 () Bool)

(assert (=> d!1584285 (= c!838415 ((_ is Nil!56685) lt!2024875))))

(assert (=> d!1584285 (= (size!37476 lt!2024875) lt!2025579)))

(declare-fun b!4924345 () Bool)

(assert (=> b!4924345 (= e!3076989 0)))

(declare-fun b!4924346 () Bool)

(assert (=> b!4924346 (= e!3076989 (+ 1 (size!37476 (t!367249 lt!2024875))))))

(assert (= (and d!1584285 c!838415) b!4924345))

(assert (= (and d!1584285 (not c!838415)) b!4924346))

(declare-fun m!5940708 () Bool)

(assert (=> b!4924346 m!5940708))

(assert (=> b!4922826 d!1584285))

(assert (=> b!4922826 d!1583485))

(declare-fun d!1584287 () Bool)

(declare-fun lt!2025580 () Int)

(assert (=> d!1584287 (>= lt!2025580 0)))

(declare-fun e!3076990 () Int)

(assert (=> d!1584287 (= lt!2025580 e!3076990)))

(declare-fun c!838416 () Bool)

(assert (=> d!1584287 (= c!838416 ((_ is Nil!56685) (_2!33887 lt!2024389)))))

(assert (=> d!1584287 (= (size!37476 (_2!33887 lt!2024389)) lt!2025580)))

(declare-fun b!4924347 () Bool)

(assert (=> b!4924347 (= e!3076990 0)))

(declare-fun b!4924348 () Bool)

(assert (=> b!4924348 (= e!3076990 (+ 1 (size!37476 (t!367249 (_2!33887 lt!2024389)))))))

(assert (= (and d!1584287 c!838416) b!4924347))

(assert (= (and d!1584287 (not c!838416)) b!4924348))

(declare-fun m!5940710 () Bool)

(assert (=> b!4924348 m!5940710))

(assert (=> b!4922826 d!1584287))

(declare-fun b!4924351 () Bool)

(declare-fun res!2102076 () Bool)

(declare-fun e!3076991 () Bool)

(assert (=> b!4924351 (=> (not res!2102076) (not e!3076991))))

(declare-fun lt!2025581 () List!56809)

(assert (=> b!4924351 (= res!2102076 (= (size!37476 lt!2025581) (+ (size!37476 Nil!56685) (size!37476 lt!2025197))))))

(declare-fun b!4924349 () Bool)

(declare-fun e!3076992 () List!56809)

(assert (=> b!4924349 (= e!3076992 lt!2025197)))

(declare-fun b!4924350 () Bool)

(assert (=> b!4924350 (= e!3076992 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) lt!2025197)))))

(declare-fun d!1584289 () Bool)

(assert (=> d!1584289 e!3076991))

(declare-fun res!2102078 () Bool)

(assert (=> d!1584289 (=> (not res!2102078) (not e!3076991))))

(assert (=> d!1584289 (= res!2102078 (= (content!10066 lt!2025581) ((_ map or) (content!10066 Nil!56685) (content!10066 lt!2025197))))))

(assert (=> d!1584289 (= lt!2025581 e!3076992)))

(declare-fun c!838417 () Bool)

(assert (=> d!1584289 (= c!838417 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584289 (= (++!12322 Nil!56685 lt!2025197) lt!2025581)))

(declare-fun b!4924352 () Bool)

(assert (=> b!4924352 (= e!3076991 (or (not (= lt!2025197 Nil!56685)) (= lt!2025581 Nil!56685)))))

(assert (= (and d!1584289 c!838417) b!4924349))

(assert (= (and d!1584289 (not c!838417)) b!4924350))

(assert (= (and d!1584289 res!2102078) b!4924351))

(assert (= (and b!4924351 res!2102076) b!4924352))

(declare-fun m!5940712 () Bool)

(assert (=> b!4924351 m!5940712))

(assert (=> b!4924351 m!5937598))

(declare-fun m!5940714 () Bool)

(assert (=> b!4924351 m!5940714))

(declare-fun m!5940716 () Bool)

(assert (=> b!4924350 m!5940716))

(declare-fun m!5940718 () Bool)

(assert (=> d!1584289 m!5940718))

(assert (=> d!1584289 m!5938038))

(declare-fun m!5940720 () Bool)

(assert (=> d!1584289 m!5940720))

(assert (=> d!1583665 d!1584289))

(declare-fun d!1584291 () Bool)

(declare-fun lt!2025582 () Int)

(assert (=> d!1584291 (>= lt!2025582 0)))

(declare-fun e!3077000 () Int)

(assert (=> d!1584291 (= lt!2025582 e!3077000)))

(declare-fun c!838420 () Bool)

(assert (=> d!1584291 (= c!838420 ((_ is Nil!56685) lt!2024736))))

(assert (=> d!1584291 (= (size!37476 lt!2024736) lt!2025582)))

(declare-fun b!4924362 () Bool)

(assert (=> b!4924362 (= e!3077000 0)))

(declare-fun b!4924363 () Bool)

(assert (=> b!4924363 (= e!3077000 (+ 1 (size!37476 (t!367249 lt!2024736))))))

(assert (= (and d!1584291 c!838420) b!4924362))

(assert (= (and d!1584291 (not c!838420)) b!4924363))

(declare-fun m!5940722 () Bool)

(assert (=> b!4924363 m!5940722))

(assert (=> d!1583665 d!1584291))

(assert (=> d!1583665 d!1583487))

(declare-fun d!1584293 () Bool)

(assert (=> d!1584293 (= lt!2024324 lt!2024382)))

(declare-fun lt!2025583 () Unit!147131)

(assert (=> d!1584293 (= lt!2025583 (choose!36032 lt!2024324 lt!2024382 lt!2024324))))

(assert (=> d!1584293 (isPrefix!4961 lt!2024324 lt!2024324)))

(assert (=> d!1584293 (= (lemmaIsPrefixSameLengthThenSameList!1119 lt!2024324 lt!2024382 lt!2024324) lt!2025583)))

(declare-fun bs!1179400 () Bool)

(assert (= bs!1179400 d!1584293))

(declare-fun m!5940730 () Bool)

(assert (=> bs!1179400 m!5940730))

(assert (=> bs!1179400 m!5937630))

(assert (=> bm!343085 d!1584293))

(declare-fun d!1584297 () Bool)

(assert (=> d!1584297 (= (ite c!837884 lt!2024732 lt!2024738) Nil!56685)))

(assert (=> d!1584297 true))

(declare-fun _$60!871 () Unit!147131)

(assert (=> d!1584297 (= (choose!36032 (ite c!837884 lt!2024732 lt!2024738) Nil!56685 e!3076079) _$60!871)))

(assert (=> d!1583401 d!1584297))

(declare-fun d!1584303 () Bool)

(declare-fun e!3077004 () Bool)

(assert (=> d!1584303 e!3077004))

(declare-fun res!2102085 () Bool)

(assert (=> d!1584303 (=> res!2102085 e!3077004)))

(declare-fun lt!2025585 () Bool)

(assert (=> d!1584303 (= res!2102085 (not lt!2025585))))

(declare-fun e!3077005 () Bool)

(assert (=> d!1584303 (= lt!2025585 e!3077005)))

(declare-fun res!2102084 () Bool)

(assert (=> d!1584303 (=> res!2102084 e!3077005)))

(assert (=> d!1584303 (= res!2102084 ((_ is Nil!56685) (ite c!837884 lt!2024732 lt!2024738)))))

(assert (=> d!1584303 (= (isPrefix!4961 (ite c!837884 lt!2024732 lt!2024738) e!3076079) lt!2025585)))

(declare-fun b!4924372 () Bool)

(declare-fun e!3077006 () Bool)

(assert (=> b!4924372 (= e!3077006 (isPrefix!4961 (tail!9667 (ite c!837884 lt!2024732 lt!2024738)) (tail!9667 e!3076079)))))

(declare-fun b!4924371 () Bool)

(declare-fun res!2102086 () Bool)

(assert (=> b!4924371 (=> (not res!2102086) (not e!3077006))))

(assert (=> b!4924371 (= res!2102086 (= (head!10520 (ite c!837884 lt!2024732 lt!2024738)) (head!10520 e!3076079)))))

(declare-fun b!4924370 () Bool)

(assert (=> b!4924370 (= e!3077005 e!3077006)))

(declare-fun res!2102083 () Bool)

(assert (=> b!4924370 (=> (not res!2102083) (not e!3077006))))

(assert (=> b!4924370 (= res!2102083 (not ((_ is Nil!56685) e!3076079)))))

(declare-fun b!4924373 () Bool)

(assert (=> b!4924373 (= e!3077004 (>= (size!37476 e!3076079) (size!37476 (ite c!837884 lt!2024732 lt!2024738))))))

(assert (= (and d!1584303 (not res!2102084)) b!4924370))

(assert (= (and b!4924370 res!2102083) b!4924371))

(assert (= (and b!4924371 res!2102086) b!4924372))

(assert (= (and d!1584303 (not res!2102085)) b!4924373))

(declare-fun m!5940742 () Bool)

(assert (=> b!4924372 m!5940742))

(declare-fun m!5940744 () Bool)

(assert (=> b!4924372 m!5940744))

(assert (=> b!4924372 m!5940742))

(assert (=> b!4924372 m!5940744))

(declare-fun m!5940746 () Bool)

(assert (=> b!4924372 m!5940746))

(declare-fun m!5940748 () Bool)

(assert (=> b!4924371 m!5940748))

(declare-fun m!5940750 () Bool)

(assert (=> b!4924371 m!5940750))

(declare-fun m!5940752 () Bool)

(assert (=> b!4924373 m!5940752))

(declare-fun m!5940754 () Bool)

(assert (=> b!4924373 m!5940754))

(assert (=> d!1583401 d!1584303))

(assert (=> d!1583655 d!1583669))

(assert (=> d!1583655 d!1583659))

(declare-fun d!1584309 () Bool)

(assert (=> d!1584309 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685)) lt!2024741) lt!2024733)))

(assert (=> d!1584309 true))

(declare-fun _$68!803 () Unit!147131)

(assert (=> d!1584309 (= (choose!36042 Nil!56685 lt!2024743 lt!2024741 lt!2024733) _$68!803)))

(declare-fun bs!1179401 () Bool)

(assert (= bs!1179401 d!1584309))

(assert (=> bs!1179401 m!5937822))

(assert (=> bs!1179401 m!5937822))

(assert (=> bs!1179401 m!5937830))

(assert (=> d!1583655 d!1584309))

(declare-fun b!4924382 () Bool)

(declare-fun res!2102087 () Bool)

(declare-fun e!3077010 () Bool)

(assert (=> b!4924382 (=> (not res!2102087) (not e!3077010))))

(declare-fun lt!2025589 () List!56809)

(assert (=> b!4924382 (= res!2102087 (= (size!37476 lt!2025589) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 lt!2024743 lt!2024741)))))))

(declare-fun b!4924380 () Bool)

(declare-fun e!3077011 () List!56809)

(assert (=> b!4924380 (= e!3077011 (Cons!56685 lt!2024743 lt!2024741))))

(declare-fun b!4924381 () Bool)

(assert (=> b!4924381 (= e!3077011 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 lt!2024743 lt!2024741))))))

(declare-fun d!1584319 () Bool)

(assert (=> d!1584319 e!3077010))

(declare-fun res!2102088 () Bool)

(assert (=> d!1584319 (=> (not res!2102088) (not e!3077010))))

(assert (=> d!1584319 (= res!2102088 (= (content!10066 lt!2025589) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 lt!2024743 lt!2024741)))))))

(assert (=> d!1584319 (= lt!2025589 e!3077011)))

(declare-fun c!838427 () Bool)

(assert (=> d!1584319 (= c!838427 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584319 (= (++!12322 Nil!56685 (Cons!56685 lt!2024743 lt!2024741)) lt!2025589)))

(declare-fun b!4924383 () Bool)

(assert (=> b!4924383 (= e!3077010 (or (not (= (Cons!56685 lt!2024743 lt!2024741) Nil!56685)) (= lt!2025589 Nil!56685)))))

(assert (= (and d!1584319 c!838427) b!4924380))

(assert (= (and d!1584319 (not c!838427)) b!4924381))

(assert (= (and d!1584319 res!2102088) b!4924382))

(assert (= (and b!4924382 res!2102087) b!4924383))

(declare-fun m!5940762 () Bool)

(assert (=> b!4924382 m!5940762))

(assert (=> b!4924382 m!5937598))

(declare-fun m!5940764 () Bool)

(assert (=> b!4924382 m!5940764))

(declare-fun m!5940766 () Bool)

(assert (=> b!4924381 m!5940766))

(declare-fun m!5940768 () Bool)

(assert (=> d!1584319 m!5940768))

(assert (=> d!1584319 m!5938038))

(declare-fun m!5940770 () Bool)

(assert (=> d!1584319 m!5940770))

(assert (=> d!1583655 d!1584319))

(assert (=> d!1583427 d!1583437))

(assert (=> d!1583427 d!1583417))

(declare-fun d!1584323 () Bool)

(assert (=> d!1584323 (isPrefix!4961 Nil!56685 (++!12322 Nil!56685 lt!2024324))))

(assert (=> d!1584323 true))

(declare-fun _$46!1879 () Unit!147131)

(assert (=> d!1584323 (= (choose!36034 Nil!56685 lt!2024324) _$46!1879)))

(declare-fun bs!1179403 () Bool)

(assert (= bs!1179403 d!1584323))

(assert (=> bs!1179403 m!5937616))

(assert (=> bs!1179403 m!5937616))

(assert (=> bs!1179403 m!5937618))

(assert (=> d!1583427 d!1584323))

(declare-fun b!4924390 () Bool)

(declare-fun e!3077017 () List!56809)

(assert (=> b!4924390 (= e!3077017 Nil!56685)))

(declare-fun b!4924391 () Bool)

(declare-fun e!3077019 () List!56809)

(assert (=> b!4924391 (= e!3077019 (drop!2224 (t!367249 (t!367249 lt!2024717)) (- (- 0 1) 1)))))

(declare-fun bm!343217 () Bool)

(declare-fun call!343222 () Int)

(assert (=> bm!343217 (= call!343222 (size!37476 (t!367249 lt!2024717)))))

(declare-fun b!4924394 () Bool)

(declare-fun e!3077020 () Int)

(declare-fun e!3077018 () Int)

(assert (=> b!4924394 (= e!3077020 e!3077018)))

(declare-fun c!838430 () Bool)

(assert (=> b!4924394 (= c!838430 (>= (- 0 1) call!343222))))

(declare-fun b!4924395 () Bool)

(assert (=> b!4924395 (= e!3077020 call!343222)))

(declare-fun b!4924397 () Bool)

(assert (=> b!4924397 (= e!3077018 (- call!343222 (- 0 1)))))

(declare-fun b!4924400 () Bool)

(assert (=> b!4924400 (= e!3077018 0)))

(declare-fun b!4924402 () Bool)

(assert (=> b!4924402 (= e!3077017 e!3077019)))

(declare-fun c!838429 () Bool)

(assert (=> b!4924402 (= c!838429 (<= (- 0 1) 0))))

(declare-fun b!4924403 () Bool)

(declare-fun e!3077016 () Bool)

(declare-fun lt!2025592 () List!56809)

(assert (=> b!4924403 (= e!3077016 (= (size!37476 lt!2025592) e!3077020))))

(declare-fun c!838432 () Bool)

(assert (=> b!4924403 (= c!838432 (<= (- 0 1) 0))))

(declare-fun b!4924404 () Bool)

(assert (=> b!4924404 (= e!3077019 (t!367249 lt!2024717))))

(declare-fun d!1584329 () Bool)

(assert (=> d!1584329 e!3077016))

(declare-fun res!2102093 () Bool)

(assert (=> d!1584329 (=> (not res!2102093) (not e!3077016))))

(assert (=> d!1584329 (= res!2102093 (= ((_ map implies) (content!10066 lt!2025592) (content!10066 (t!367249 lt!2024717))) ((as const (InoxSet C!26956)) true)))))

(assert (=> d!1584329 (= lt!2025592 e!3077017)))

(declare-fun c!838431 () Bool)

(assert (=> d!1584329 (= c!838431 ((_ is Nil!56685) (t!367249 lt!2024717)))))

(assert (=> d!1584329 (= (drop!2224 (t!367249 lt!2024717) (- 0 1)) lt!2025592)))

(assert (= (and d!1584329 c!838431) b!4924390))

(assert (= (and d!1584329 (not c!838431)) b!4924402))

(assert (= (and b!4924402 c!838429) b!4924404))

(assert (= (and b!4924402 (not c!838429)) b!4924391))

(assert (= (and d!1584329 res!2102093) b!4924403))

(assert (= (and b!4924403 c!838432) b!4924395))

(assert (= (and b!4924403 (not c!838432)) b!4924394))

(assert (= (and b!4924394 c!838430) b!4924400))

(assert (= (and b!4924394 (not c!838430)) b!4924397))

(assert (= (or b!4924395 b!4924394 b!4924397) bm!343217))

(declare-fun m!5940784 () Bool)

(assert (=> b!4924391 m!5940784))

(assert (=> bm!343217 m!5939356))

(declare-fun m!5940788 () Bool)

(assert (=> b!4924403 m!5940788))

(declare-fun m!5940790 () Bool)

(assert (=> d!1584329 m!5940790))

(declare-fun m!5940794 () Bool)

(assert (=> d!1584329 m!5940794))

(assert (=> b!4923310 d!1584329))

(declare-fun d!1584335 () Bool)

(declare-fun lt!2025593 () Int)

(assert (=> d!1584335 (>= lt!2025593 0)))

(declare-fun e!3077023 () Int)

(assert (=> d!1584335 (= lt!2025593 e!3077023)))

(declare-fun c!838433 () Bool)

(assert (=> d!1584335 (= c!838433 ((_ is Nil!56685) (_1!33887 (findLongestMatchInnerZipper!58 call!342982 call!342986 (+ 0 1) call!342990 (list!17947 input!5492) lt!2024326))))))

(assert (=> d!1584335 (= (size!37476 (_1!33887 (findLongestMatchInnerZipper!58 call!342982 call!342986 (+ 0 1) call!342990 (list!17947 input!5492) lt!2024326))) lt!2025593)))

(declare-fun b!4924405 () Bool)

(assert (=> b!4924405 (= e!3077023 0)))

(declare-fun b!4924406 () Bool)

(assert (=> b!4924406 (= e!3077023 (+ 1 (size!37476 (t!367249 (_1!33887 (findLongestMatchInnerZipper!58 call!342982 call!342986 (+ 0 1) call!342990 (list!17947 input!5492) lt!2024326))))))))

(assert (= (and d!1584335 c!838433) b!4924405))

(assert (= (and d!1584335 (not c!838433)) b!4924406))

(declare-fun m!5940796 () Bool)

(assert (=> b!4924406 m!5940796))

(assert (=> d!1583569 d!1584335))

(declare-fun d!1584341 () Bool)

(assert (=> d!1584341 (isPrefix!4961 call!342986 (++!12322 call!342986 call!342990))))

(declare-fun lt!2025595 () Unit!147131)

(assert (=> d!1584341 (= lt!2025595 (choose!36034 call!342986 call!342990))))

(assert (=> d!1584341 (= (lemmaConcatTwoListThenFirstIsPrefix!3185 call!342986 call!342990) lt!2025595)))

(declare-fun bs!1179404 () Bool)

(assert (= bs!1179404 d!1584341))

(assert (=> bs!1179404 m!5938604))

(assert (=> bs!1179404 m!5938604))

(assert (=> bs!1179404 m!5938608))

(declare-fun m!5940800 () Bool)

(assert (=> bs!1179404 m!5940800))

(assert (=> d!1583569 d!1584341))

(declare-fun bm!343219 () Bool)

(declare-fun call!343227 () Unit!147131)

(assert (=> bm!343219 (= call!343227 (lemmaIsPrefixSameLengthThenSameList!1119 (list!17947 input!5492) call!342986 (list!17947 input!5492)))))

(declare-fun b!4924413 () Bool)

(declare-fun c!838439 () Bool)

(declare-fun call!343225 () Bool)

(assert (=> b!4924413 (= c!838439 call!343225)))

(declare-fun lt!2025602 () Unit!147131)

(declare-fun lt!2025621 () Unit!147131)

(assert (=> b!4924413 (= lt!2025602 lt!2025621)))

(declare-fun lt!2025614 () C!26956)

(declare-fun lt!2025617 () List!56809)

(assert (=> b!4924413 (= (++!12322 (++!12322 call!342986 (Cons!56685 lt!2025614 Nil!56685)) lt!2025617) (list!17947 input!5492))))

(assert (=> b!4924413 (= lt!2025621 (lemmaMoveElementToOtherListKeepsConcatEq!1391 call!342986 lt!2025614 lt!2025617 (list!17947 input!5492)))))

(assert (=> b!4924413 (= lt!2025617 (tail!9667 call!342990))))

(assert (=> b!4924413 (= lt!2025614 (head!10520 call!342990))))

(declare-fun lt!2025606 () Unit!147131)

(declare-fun lt!2025608 () Unit!147131)

(assert (=> b!4924413 (= lt!2025606 lt!2025608)))

(assert (=> b!4924413 (isPrefix!4961 (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 (list!17947 input!5492) call!342986)) Nil!56685)) (list!17947 input!5492))))

(assert (=> b!4924413 (= lt!2025608 (lemmaAddHeadSuffixToPrefixStillPrefix!773 call!342986 (list!17947 input!5492)))))

(declare-fun lt!2025596 () List!56809)

(assert (=> b!4924413 (= lt!2025596 (++!12322 call!342986 (Cons!56685 (head!10520 call!342990) Nil!56685)))))

(declare-fun lt!2025609 () Unit!147131)

(declare-fun e!3077028 () Unit!147131)

(assert (=> b!4924413 (= lt!2025609 e!3077028)))

(declare-fun c!838437 () Bool)

(assert (=> b!4924413 (= c!838437 (= (size!37476 call!342986) (size!37476 (list!17947 input!5492))))))

(declare-fun lt!2025616 () Unit!147131)

(declare-fun lt!2025600 () Unit!147131)

(assert (=> b!4924413 (= lt!2025616 lt!2025600)))

(assert (=> b!4924413 (<= (size!37476 call!342986) (size!37476 (list!17947 input!5492)))))

(assert (=> b!4924413 (= lt!2025600 (lemmaIsPrefixThenSmallerEqSize!685 call!342986 (list!17947 input!5492)))))

(declare-fun e!3077027 () tuple2!61168)

(declare-fun e!3077031 () tuple2!61168)

(assert (=> b!4924413 (= e!3077027 e!3077031)))

(declare-fun b!4924414 () Bool)

(declare-fun e!3077030 () tuple2!61168)

(assert (=> b!4924414 (= e!3077030 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun b!4924415 () Bool)

(declare-fun e!3077034 () tuple2!61168)

(declare-fun lt!2025618 () tuple2!61168)

(assert (=> b!4924415 (= e!3077034 lt!2025618)))

(declare-fun bm!343220 () Bool)

(declare-fun call!343228 () (InoxSet Context!6030))

(declare-fun call!343229 () C!26956)

(assert (=> bm!343220 (= call!343228 (derivationStepZipper!588 call!342982 call!343229))))

(declare-fun call!343223 () tuple2!61168)

(declare-fun bm!343221 () Bool)

(declare-fun call!343230 () List!56809)

(assert (=> bm!343221 (= call!343223 (findLongestMatchInnerZipper!58 call!343228 lt!2025596 (+ 0 1 1) call!343230 (list!17947 input!5492) lt!2024326))))

(declare-fun bm!343222 () Bool)

(assert (=> bm!343222 (= call!343229 (head!10520 call!342990))))

(declare-fun b!4924416 () Bool)

(declare-fun e!3077032 () Bool)

(declare-fun e!3077029 () Bool)

(assert (=> b!4924416 (= e!3077032 e!3077029)))

(declare-fun res!2102101 () Bool)

(assert (=> b!4924416 (=> res!2102101 e!3077029)))

(declare-fun lt!2025603 () tuple2!61168)

(assert (=> b!4924416 (= res!2102101 (isEmpty!30566 (_1!33887 lt!2025603)))))

(declare-fun bm!343223 () Bool)

(declare-fun call!343226 () Unit!147131)

(assert (=> bm!343223 (= call!343226 (lemmaIsPrefixRefl!3357 (list!17947 input!5492) (list!17947 input!5492)))))

(declare-fun b!4924417 () Bool)

(declare-fun Unit!147191 () Unit!147131)

(assert (=> b!4924417 (= e!3077028 Unit!147191)))

(declare-fun lt!2025598 () Unit!147131)

(assert (=> b!4924417 (= lt!2025598 call!343226)))

(declare-fun call!343224 () Bool)

(assert (=> b!4924417 call!343224))

(declare-fun lt!2025599 () Unit!147131)

(assert (=> b!4924417 (= lt!2025599 lt!2025598)))

(declare-fun lt!2025597 () Unit!147131)

(assert (=> b!4924417 (= lt!2025597 call!343227)))

(assert (=> b!4924417 (= (list!17947 input!5492) call!342986)))

(declare-fun lt!2025605 () Unit!147131)

(assert (=> b!4924417 (= lt!2025605 lt!2025597)))

(assert (=> b!4924417 false))

(declare-fun b!4924418 () Bool)

(assert (=> b!4924418 (= e!3077031 call!343223)))

(declare-fun b!4924419 () Bool)

(assert (=> b!4924419 (= e!3077031 e!3077034)))

(assert (=> b!4924419 (= lt!2025618 call!343223)))

(declare-fun c!838440 () Bool)

(assert (=> b!4924419 (= c!838440 (isEmpty!30566 (_1!33887 lt!2025618)))))

(declare-fun b!4924420 () Bool)

(declare-fun Unit!147192 () Unit!147131)

(assert (=> b!4924420 (= e!3077028 Unit!147192)))

(declare-fun b!4924421 () Bool)

(assert (=> b!4924421 (= e!3077030 e!3077027)))

(declare-fun c!838438 () Bool)

(assert (=> b!4924421 (= c!838438 (= (+ 0 1) lt!2024326))))

(declare-fun bm!343224 () Bool)

(assert (=> bm!343224 (= call!343224 (isPrefix!4961 (list!17947 input!5492) (list!17947 input!5492)))))

(declare-fun b!4924422 () Bool)

(declare-fun e!3077026 () tuple2!61168)

(assert (=> b!4924422 (= e!3077026 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun bm!343225 () Bool)

(assert (=> bm!343225 (= call!343230 (tail!9667 call!342990))))

(declare-fun d!1584347 () Bool)

(assert (=> d!1584347 e!3077032))

(declare-fun res!2102100 () Bool)

(assert (=> d!1584347 (=> (not res!2102100) (not e!3077032))))

(assert (=> d!1584347 (= res!2102100 (= (++!12322 (_1!33887 lt!2025603) (_2!33887 lt!2025603)) (list!17947 input!5492)))))

(assert (=> d!1584347 (= lt!2025603 e!3077030)))

(declare-fun c!838436 () Bool)

(assert (=> d!1584347 (= c!838436 (lostCauseZipper!691 call!342982))))

(declare-fun lt!2025604 () Unit!147131)

(declare-fun Unit!147193 () Unit!147131)

(assert (=> d!1584347 (= lt!2025604 Unit!147193)))

(assert (=> d!1584347 (= (getSuffix!2949 (list!17947 input!5492) call!342986) call!342990)))

(declare-fun lt!2025611 () Unit!147131)

(declare-fun lt!2025612 () Unit!147131)

(assert (=> d!1584347 (= lt!2025611 lt!2025612)))

(declare-fun lt!2025610 () List!56809)

(assert (=> d!1584347 (= call!342990 lt!2025610)))

(assert (=> d!1584347 (= lt!2025612 (lemmaSamePrefixThenSameSuffix!2365 call!342986 call!342990 call!342986 lt!2025610 (list!17947 input!5492)))))

(assert (=> d!1584347 (= lt!2025610 (getSuffix!2949 (list!17947 input!5492) call!342986))))

(declare-fun lt!2025601 () Unit!147131)

(declare-fun lt!2025613 () Unit!147131)

(assert (=> d!1584347 (= lt!2025601 lt!2025613)))

(assert (=> d!1584347 (isPrefix!4961 call!342986 (++!12322 call!342986 call!342990))))

(assert (=> d!1584347 (= lt!2025613 (lemmaConcatTwoListThenFirstIsPrefix!3185 call!342986 call!342990))))

(assert (=> d!1584347 (= (++!12322 call!342986 call!342990) (list!17947 input!5492))))

(assert (=> d!1584347 (= (findLongestMatchInnerZipper!58 call!342982 call!342986 (+ 0 1) call!342990 (list!17947 input!5492) lt!2024326) lt!2025603)))

(declare-fun bm!343218 () Bool)

(assert (=> bm!343218 (= call!343225 (nullableZipper!810 call!342982))))

(declare-fun b!4924423 () Bool)

(assert (=> b!4924423 (= e!3077034 (tuple2!61169 call!342986 call!342990))))

(declare-fun b!4924424 () Bool)

(assert (=> b!4924424 (= e!3077029 (>= (size!37476 (_1!33887 lt!2025603)) (size!37476 call!342986)))))

(declare-fun b!4924425 () Bool)

(assert (=> b!4924425 (= e!3077026 (tuple2!61169 call!342986 Nil!56685))))

(declare-fun b!4924426 () Bool)

(declare-fun c!838441 () Bool)

(assert (=> b!4924426 (= c!838441 call!343225)))

(declare-fun lt!2025620 () Unit!147131)

(declare-fun lt!2025615 () Unit!147131)

(assert (=> b!4924426 (= lt!2025620 lt!2025615)))

(assert (=> b!4924426 (= (list!17947 input!5492) call!342986)))

(assert (=> b!4924426 (= lt!2025615 call!343227)))

(declare-fun lt!2025607 () Unit!147131)

(declare-fun lt!2025619 () Unit!147131)

(assert (=> b!4924426 (= lt!2025607 lt!2025619)))

(assert (=> b!4924426 call!343224))

(assert (=> b!4924426 (= lt!2025619 call!343226)))

(assert (=> b!4924426 (= e!3077027 e!3077026)))

(assert (= (and d!1584347 c!838436) b!4924414))

(assert (= (and d!1584347 (not c!838436)) b!4924421))

(assert (= (and b!4924421 c!838438) b!4924426))

(assert (= (and b!4924421 (not c!838438)) b!4924413))

(assert (= (and b!4924426 c!838441) b!4924425))

(assert (= (and b!4924426 (not c!838441)) b!4924422))

(assert (= (and b!4924413 c!838437) b!4924417))

(assert (= (and b!4924413 (not c!838437)) b!4924420))

(assert (= (and b!4924413 c!838439) b!4924419))

(assert (= (and b!4924413 (not c!838439)) b!4924418))

(assert (= (and b!4924419 c!838440) b!4924423))

(assert (= (and b!4924419 (not c!838440)) b!4924415))

(assert (= (or b!4924419 b!4924418) bm!343225))

(assert (= (or b!4924419 b!4924418) bm!343222))

(assert (= (or b!4924419 b!4924418) bm!343220))

(assert (= (or b!4924419 b!4924418) bm!343221))

(assert (= (or b!4924426 b!4924417) bm!343224))

(assert (= (or b!4924426 b!4924417) bm!343223))

(assert (= (or b!4924426 b!4924417) bm!343219))

(assert (= (or b!4924426 b!4924413) bm!343218))

(assert (= (and d!1584347 res!2102100) b!4924416))

(assert (= (and b!4924416 (not res!2102101)) b!4924424))

(assert (=> bm!343219 m!5937560))

(assert (=> bm!343219 m!5937560))

(declare-fun m!5940818 () Bool)

(assert (=> bm!343219 m!5940818))

(declare-fun m!5940820 () Bool)

(assert (=> b!4924419 m!5940820))

(assert (=> bm!343218 m!5938620))

(assert (=> bm!343225 m!5938550))

(assert (=> b!4924413 m!5938614))

(declare-fun m!5940822 () Bool)

(assert (=> b!4924413 m!5940822))

(declare-fun m!5940824 () Bool)

(assert (=> b!4924413 m!5940824))

(declare-fun m!5940826 () Bool)

(assert (=> b!4924413 m!5940826))

(declare-fun m!5940828 () Bool)

(assert (=> b!4924413 m!5940828))

(assert (=> b!4924413 m!5937560))

(declare-fun m!5940830 () Bool)

(assert (=> b!4924413 m!5940830))

(declare-fun m!5940832 () Bool)

(assert (=> b!4924413 m!5940832))

(assert (=> b!4924413 m!5937560))

(assert (=> b!4924413 m!5937644))

(assert (=> b!4924413 m!5938554))

(assert (=> b!4924413 m!5937560))

(assert (=> b!4924413 m!5938614))

(assert (=> b!4924413 m!5937560))

(declare-fun m!5940834 () Bool)

(assert (=> b!4924413 m!5940834))

(assert (=> b!4924413 m!5938550))

(assert (=> b!4924413 m!5937560))

(declare-fun m!5940836 () Bool)

(assert (=> b!4924413 m!5940836))

(assert (=> b!4924413 m!5940826))

(declare-fun m!5940838 () Bool)

(assert (=> b!4924413 m!5940838))

(assert (=> b!4924413 m!5940824))

(assert (=> b!4924413 m!5937560))

(declare-fun m!5940840 () Bool)

(assert (=> b!4924413 m!5940840))

(assert (=> d!1584347 m!5938606))

(declare-fun m!5940842 () Bool)

(assert (=> d!1584347 m!5940842))

(assert (=> d!1584347 m!5938616))

(assert (=> d!1584347 m!5937560))

(declare-fun m!5940844 () Bool)

(assert (=> d!1584347 m!5940844))

(assert (=> d!1584347 m!5938604))

(assert (=> d!1584347 m!5937560))

(assert (=> d!1584347 m!5938614))

(assert (=> d!1584347 m!5938604))

(assert (=> d!1584347 m!5938608))

(assert (=> bm!343222 m!5940838))

(assert (=> bm!343221 m!5937560))

(declare-fun m!5940846 () Bool)

(assert (=> bm!343221 m!5940846))

(declare-fun m!5940848 () Bool)

(assert (=> b!4924424 m!5940848))

(assert (=> b!4924424 m!5938554))

(assert (=> bm!343223 m!5937560))

(assert (=> bm!343223 m!5937560))

(assert (=> bm!343223 m!5938168))

(declare-fun m!5940850 () Bool)

(assert (=> b!4924416 m!5940850))

(declare-fun m!5940852 () Bool)

(assert (=> bm!343220 m!5940852))

(assert (=> bm!343224 m!5937560))

(assert (=> bm!343224 m!5937560))

(assert (=> bm!343224 m!5938174))

(assert (=> d!1583569 d!1584347))

(declare-fun d!1584363 () Bool)

(declare-fun lt!2025624 () List!56809)

(assert (=> d!1584363 (= (++!12322 call!342986 lt!2025624) (list!17947 input!5492))))

(declare-fun e!3077036 () List!56809)

(assert (=> d!1584363 (= lt!2025624 e!3077036)))

(declare-fun c!838444 () Bool)

(assert (=> d!1584363 (= c!838444 ((_ is Cons!56685) call!342986))))

(assert (=> d!1584363 (>= (size!37476 (list!17947 input!5492)) (size!37476 call!342986))))

(assert (=> d!1584363 (= (getSuffix!2949 (list!17947 input!5492) call!342986) lt!2025624)))

(declare-fun b!4924429 () Bool)

(assert (=> b!4924429 (= e!3077036 (getSuffix!2949 (tail!9667 (list!17947 input!5492)) (t!367249 call!342986)))))

(declare-fun b!4924430 () Bool)

(assert (=> b!4924430 (= e!3077036 (list!17947 input!5492))))

(assert (= (and d!1584363 c!838444) b!4924429))

(assert (= (and d!1584363 (not c!838444)) b!4924430))

(declare-fun m!5940854 () Bool)

(assert (=> d!1584363 m!5940854))

(assert (=> d!1584363 m!5937560))

(assert (=> d!1584363 m!5937644))

(assert (=> d!1584363 m!5938554))

(assert (=> b!4924429 m!5937560))

(assert (=> b!4924429 m!5938178))

(assert (=> b!4924429 m!5938178))

(declare-fun m!5940856 () Bool)

(assert (=> b!4924429 m!5940856))

(assert (=> d!1583569 d!1584363))

(declare-fun d!1584365 () Bool)

(assert (=> d!1584365 (= call!342990 lt!2025027)))

(declare-fun lt!2025625 () Unit!147131)

(assert (=> d!1584365 (= lt!2025625 (choose!36035 call!342986 call!342990 call!342986 lt!2025027 (list!17947 input!5492)))))

(assert (=> d!1584365 (isPrefix!4961 call!342986 (list!17947 input!5492))))

(assert (=> d!1584365 (= (lemmaSamePrefixThenSameSuffix!2365 call!342986 call!342990 call!342986 lt!2025027 (list!17947 input!5492)) lt!2025625)))

(declare-fun bs!1179407 () Bool)

(assert (= bs!1179407 d!1584365))

(assert (=> bs!1179407 m!5937560))

(declare-fun m!5940858 () Bool)

(assert (=> bs!1179407 m!5940858))

(assert (=> bs!1179407 m!5937560))

(declare-fun m!5940860 () Bool)

(assert (=> bs!1179407 m!5940860))

(assert (=> d!1583569 d!1584365))

(declare-fun d!1584367 () Bool)

(declare-fun e!3077037 () Bool)

(assert (=> d!1584367 e!3077037))

(declare-fun res!2102104 () Bool)

(assert (=> d!1584367 (=> res!2102104 e!3077037)))

(declare-fun lt!2025626 () Bool)

(assert (=> d!1584367 (= res!2102104 (not lt!2025626))))

(declare-fun e!3077038 () Bool)

(assert (=> d!1584367 (= lt!2025626 e!3077038)))

(declare-fun res!2102103 () Bool)

(assert (=> d!1584367 (=> res!2102103 e!3077038)))

(assert (=> d!1584367 (= res!2102103 ((_ is Nil!56685) call!342986))))

(assert (=> d!1584367 (= (isPrefix!4961 call!342986 (++!12322 call!342986 call!342990)) lt!2025626)))

(declare-fun b!4924433 () Bool)

(declare-fun e!3077039 () Bool)

(assert (=> b!4924433 (= e!3077039 (isPrefix!4961 (tail!9667 call!342986) (tail!9667 (++!12322 call!342986 call!342990))))))

(declare-fun b!4924432 () Bool)

(declare-fun res!2102105 () Bool)

(assert (=> b!4924432 (=> (not res!2102105) (not e!3077039))))

(assert (=> b!4924432 (= res!2102105 (= (head!10520 call!342986) (head!10520 (++!12322 call!342986 call!342990))))))

(declare-fun b!4924431 () Bool)

(assert (=> b!4924431 (= e!3077038 e!3077039)))

(declare-fun res!2102102 () Bool)

(assert (=> b!4924431 (=> (not res!2102102) (not e!3077039))))

(assert (=> b!4924431 (= res!2102102 (not ((_ is Nil!56685) (++!12322 call!342986 call!342990))))))

(declare-fun b!4924434 () Bool)

(assert (=> b!4924434 (= e!3077037 (>= (size!37476 (++!12322 call!342986 call!342990)) (size!37476 call!342986)))))

(assert (= (and d!1584367 (not res!2102103)) b!4924431))

(assert (= (and b!4924431 res!2102102) b!4924432))

(assert (= (and b!4924432 res!2102105) b!4924433))

(assert (= (and d!1584367 (not res!2102104)) b!4924434))

(declare-fun m!5940862 () Bool)

(assert (=> b!4924433 m!5940862))

(assert (=> b!4924433 m!5938604))

(declare-fun m!5940864 () Bool)

(assert (=> b!4924433 m!5940864))

(assert (=> b!4924433 m!5940862))

(assert (=> b!4924433 m!5940864))

(declare-fun m!5940866 () Bool)

(assert (=> b!4924433 m!5940866))

(declare-fun m!5940868 () Bool)

(assert (=> b!4924432 m!5940868))

(assert (=> b!4924432 m!5938604))

(declare-fun m!5940870 () Bool)

(assert (=> b!4924432 m!5940870))

(assert (=> b!4924434 m!5938604))

(declare-fun m!5940872 () Bool)

(assert (=> b!4924434 m!5940872))

(assert (=> b!4924434 m!5938554))

(assert (=> d!1583569 d!1584367))

(declare-fun bs!1179408 () Bool)

(declare-fun d!1584369 () Bool)

(assert (= bs!1179408 (and d!1584369 d!1583411)))

(declare-fun lambda!245189 () Int)

(assert (=> bs!1179408 (= lambda!245189 lambda!245141)))

(declare-fun bs!1179409 () Bool)

(assert (= bs!1179409 (and d!1584369 b!4924104)))

(assert (=> bs!1179409 (not (= lambda!245189 lambda!245183))))

(declare-fun bs!1179410 () Bool)

(assert (= bs!1179410 (and d!1584369 b!4922796)))

(assert (=> bs!1179410 (not (= lambda!245189 lambda!245144))))

(declare-fun bs!1179411 () Bool)

(assert (= bs!1179411 (and d!1584369 d!1584109)))

(assert (=> bs!1179411 (= lambda!245189 lambda!245182)))

(declare-fun bs!1179412 () Bool)

(assert (= bs!1179412 (and d!1584369 d!1583565)))

(assert (=> bs!1179412 (not (= lambda!245189 lambda!245166))))

(declare-fun bs!1179413 () Bool)

(assert (= bs!1179413 (and d!1584369 b!4924105)))

(assert (=> bs!1179413 (not (= lambda!245189 lambda!245184))))

(declare-fun bs!1179414 () Bool)

(assert (= bs!1179414 (and d!1584369 d!1584257)))

(assert (=> bs!1179414 (not (= lambda!245189 lambda!245188))))

(declare-fun bs!1179415 () Bool)

(assert (= bs!1179415 (and d!1584369 d!1583923)))

(assert (=> bs!1179415 (not (= lambda!245189 lambda!245180))))

(declare-fun bs!1179416 () Bool)

(assert (= bs!1179416 (and d!1584369 d!1583997)))

(assert (=> bs!1179416 (not (= lambda!245189 lambda!245181))))

(declare-fun bs!1179417 () Bool)

(assert (= bs!1179417 (and d!1584369 b!4922797)))

(assert (=> bs!1179417 (not (= lambda!245189 lambda!245145))))

(declare-fun bs!1179418 () Bool)

(declare-fun b!4924435 () Bool)

(assert (= bs!1179418 (and b!4924435 d!1584369)))

(declare-fun lambda!245190 () Int)

(assert (=> bs!1179418 (not (= lambda!245190 lambda!245189))))

(declare-fun bs!1179419 () Bool)

(assert (= bs!1179419 (and b!4924435 d!1583411)))

(assert (=> bs!1179419 (not (= lambda!245190 lambda!245141))))

(declare-fun bs!1179420 () Bool)

(assert (= bs!1179420 (and b!4924435 b!4924104)))

(assert (=> bs!1179420 (= lambda!245190 lambda!245183)))

(declare-fun bs!1179421 () Bool)

(assert (= bs!1179421 (and b!4924435 b!4922796)))

(assert (=> bs!1179421 (= lambda!245190 lambda!245144)))

(declare-fun bs!1179422 () Bool)

(assert (= bs!1179422 (and b!4924435 d!1584109)))

(assert (=> bs!1179422 (not (= lambda!245190 lambda!245182))))

(declare-fun bs!1179423 () Bool)

(assert (= bs!1179423 (and b!4924435 d!1583565)))

(assert (=> bs!1179423 (not (= lambda!245190 lambda!245166))))

(declare-fun bs!1179424 () Bool)

(assert (= bs!1179424 (and b!4924435 b!4924105)))

(assert (=> bs!1179424 (= lambda!245190 lambda!245184)))

(declare-fun bs!1179425 () Bool)

(assert (= bs!1179425 (and b!4924435 d!1584257)))

(assert (=> bs!1179425 (not (= lambda!245190 lambda!245188))))

(declare-fun bs!1179426 () Bool)

(assert (= bs!1179426 (and b!4924435 d!1583923)))

(assert (=> bs!1179426 (= lambda!245190 lambda!245180)))

(declare-fun bs!1179427 () Bool)

(assert (= bs!1179427 (and b!4924435 d!1583997)))

(assert (=> bs!1179427 (not (= lambda!245190 lambda!245181))))

(declare-fun bs!1179428 () Bool)

(assert (= bs!1179428 (and b!4924435 b!4922797)))

(assert (=> bs!1179428 (= lambda!245190 lambda!245145)))

(declare-fun bs!1179429 () Bool)

(declare-fun b!4924436 () Bool)

(assert (= bs!1179429 (and b!4924436 d!1584369)))

(declare-fun lambda!245191 () Int)

(assert (=> bs!1179429 (not (= lambda!245191 lambda!245189))))

(declare-fun bs!1179430 () Bool)

(assert (= bs!1179430 (and b!4924436 b!4924435)))

(assert (=> bs!1179430 (= lambda!245191 lambda!245190)))

(declare-fun bs!1179431 () Bool)

(assert (= bs!1179431 (and b!4924436 d!1583411)))

(assert (=> bs!1179431 (not (= lambda!245191 lambda!245141))))

(declare-fun bs!1179432 () Bool)

(assert (= bs!1179432 (and b!4924436 b!4924104)))

(assert (=> bs!1179432 (= lambda!245191 lambda!245183)))

(declare-fun bs!1179433 () Bool)

(assert (= bs!1179433 (and b!4924436 b!4922796)))

(assert (=> bs!1179433 (= lambda!245191 lambda!245144)))

(declare-fun bs!1179434 () Bool)

(assert (= bs!1179434 (and b!4924436 d!1584109)))

(assert (=> bs!1179434 (not (= lambda!245191 lambda!245182))))

(declare-fun bs!1179435 () Bool)

(assert (= bs!1179435 (and b!4924436 d!1583565)))

(assert (=> bs!1179435 (not (= lambda!245191 lambda!245166))))

(declare-fun bs!1179436 () Bool)

(assert (= bs!1179436 (and b!4924436 b!4924105)))

(assert (=> bs!1179436 (= lambda!245191 lambda!245184)))

(declare-fun bs!1179437 () Bool)

(assert (= bs!1179437 (and b!4924436 d!1584257)))

(assert (=> bs!1179437 (not (= lambda!245191 lambda!245188))))

(declare-fun bs!1179438 () Bool)

(assert (= bs!1179438 (and b!4924436 d!1583923)))

(assert (=> bs!1179438 (= lambda!245191 lambda!245180)))

(declare-fun bs!1179439 () Bool)

(assert (= bs!1179439 (and b!4924436 d!1583997)))

(assert (=> bs!1179439 (not (= lambda!245191 lambda!245181))))

(declare-fun bs!1179440 () Bool)

(assert (= bs!1179440 (and b!4924436 b!4922797)))

(assert (=> bs!1179440 (= lambda!245191 lambda!245145)))

(declare-fun bm!343226 () Bool)

(declare-fun lt!2025633 () List!56811)

(declare-fun c!838445 () Bool)

(declare-fun call!343232 () Bool)

(declare-fun lt!2025627 () List!56811)

(assert (=> bm!343226 (= call!343232 (exists!1242 (ite c!838445 lt!2025633 lt!2025627) (ite c!838445 lambda!245190 lambda!245191)))))

(declare-fun e!3077040 () Unit!147131)

(declare-fun Unit!147194 () Unit!147131)

(assert (=> b!4924435 (= e!3077040 Unit!147194)))

(declare-fun call!343231 () List!56811)

(assert (=> b!4924435 (= lt!2025633 call!343231)))

(declare-fun lt!2025632 () Unit!147131)

(assert (=> b!4924435 (= lt!2025632 (lemmaNotForallThenExists!179 lt!2025633 lambda!245189))))

(assert (=> b!4924435 call!343232))

(declare-fun lt!2025631 () Unit!147131)

(assert (=> b!4924435 (= lt!2025631 lt!2025632)))

(declare-fun lt!2025630 () Bool)

(assert (=> d!1584369 (= lt!2025630 (isEmpty!30570 (getLanguageWitness!613 call!342982)))))

(assert (=> d!1584369 (= lt!2025630 (forall!13132 call!342982 lambda!245189))))

(declare-fun lt!2025628 () Unit!147131)

(assert (=> d!1584369 (= lt!2025628 e!3077040)))

(assert (=> d!1584369 (= c!838445 (not (forall!13132 call!342982 lambda!245189)))))

(assert (=> d!1584369 (= (lostCauseZipper!691 call!342982) lt!2025630)))

(declare-fun bm!343227 () Bool)

(assert (=> bm!343227 (= call!343231 (toList!7941 call!342982))))

(declare-fun Unit!147195 () Unit!147131)

(assert (=> b!4924436 (= e!3077040 Unit!147195)))

(assert (=> b!4924436 (= lt!2025627 call!343231)))

(declare-fun lt!2025634 () Unit!147131)

(assert (=> b!4924436 (= lt!2025634 (lemmaForallThenNotExists!162 lt!2025627 lambda!245189))))

(assert (=> b!4924436 (not call!343232)))

(declare-fun lt!2025629 () Unit!147131)

(assert (=> b!4924436 (= lt!2025629 lt!2025634)))

(assert (= (and d!1584369 c!838445) b!4924435))

(assert (= (and d!1584369 (not c!838445)) b!4924436))

(assert (= (or b!4924435 b!4924436) bm!343226))

(assert (= (or b!4924435 b!4924436) bm!343227))

(declare-fun m!5940874 () Bool)

(assert (=> b!4924435 m!5940874))

(declare-fun m!5940876 () Bool)

(assert (=> bm!343226 m!5940876))

(declare-fun m!5940878 () Bool)

(assert (=> d!1584369 m!5940878))

(assert (=> d!1584369 m!5940878))

(declare-fun m!5940880 () Bool)

(assert (=> d!1584369 m!5940880))

(declare-fun m!5940882 () Bool)

(assert (=> d!1584369 m!5940882))

(assert (=> d!1584369 m!5940882))

(declare-fun m!5940884 () Bool)

(assert (=> bm!343227 m!5940884))

(declare-fun m!5940886 () Bool)

(assert (=> b!4924436 m!5940886))

(assert (=> d!1583569 d!1584369))

(declare-fun b!4924439 () Bool)

(declare-fun res!2102106 () Bool)

(declare-fun e!3077041 () Bool)

(assert (=> b!4924439 (=> (not res!2102106) (not e!3077041))))

(declare-fun lt!2025635 () List!56809)

(assert (=> b!4924439 (= res!2102106 (= (size!37476 lt!2025635) (+ (size!37476 call!342986) (size!37476 call!342990))))))

(declare-fun b!4924437 () Bool)

(declare-fun e!3077042 () List!56809)

(assert (=> b!4924437 (= e!3077042 call!342990)))

(declare-fun b!4924438 () Bool)

(assert (=> b!4924438 (= e!3077042 (Cons!56685 (h!63133 call!342986) (++!12322 (t!367249 call!342986) call!342990)))))

(declare-fun d!1584371 () Bool)

(assert (=> d!1584371 e!3077041))

(declare-fun res!2102107 () Bool)

(assert (=> d!1584371 (=> (not res!2102107) (not e!3077041))))

(assert (=> d!1584371 (= res!2102107 (= (content!10066 lt!2025635) ((_ map or) (content!10066 call!342986) (content!10066 call!342990))))))

(assert (=> d!1584371 (= lt!2025635 e!3077042)))

(declare-fun c!838446 () Bool)

(assert (=> d!1584371 (= c!838446 ((_ is Nil!56685) call!342986))))

(assert (=> d!1584371 (= (++!12322 call!342986 call!342990) lt!2025635)))

(declare-fun b!4924440 () Bool)

(assert (=> b!4924440 (= e!3077041 (or (not (= call!342990 Nil!56685)) (= lt!2025635 call!342986)))))

(assert (= (and d!1584371 c!838446) b!4924437))

(assert (= (and d!1584371 (not c!838446)) b!4924438))

(assert (= (and d!1584371 res!2102107) b!4924439))

(assert (= (and b!4924439 res!2102106) b!4924440))

(declare-fun m!5940888 () Bool)

(assert (=> b!4924439 m!5940888))

(assert (=> b!4924439 m!5938554))

(declare-fun m!5940890 () Bool)

(assert (=> b!4924439 m!5940890))

(declare-fun m!5940892 () Bool)

(assert (=> b!4924438 m!5940892))

(declare-fun m!5940894 () Bool)

(assert (=> d!1584371 m!5940894))

(assert (=> d!1584371 m!5940346))

(declare-fun m!5940896 () Bool)

(assert (=> d!1584371 m!5940896))

(assert (=> d!1583569 d!1584371))

(assert (=> d!1583569 d!1583377))

(declare-fun d!1584373 () Bool)

(declare-fun c!838447 () Bool)

(assert (=> d!1584373 (= c!838447 ((_ is Nil!56685) lt!2025199))))

(declare-fun e!3077043 () (InoxSet C!26956))

(assert (=> d!1584373 (= (content!10066 lt!2025199) e!3077043)))

(declare-fun b!4924441 () Bool)

(assert (=> b!4924441 (= e!3077043 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924442 () Bool)

(assert (=> b!4924442 (= e!3077043 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025199) true) (content!10066 (t!367249 lt!2025199))))))

(assert (= (and d!1584373 c!838447) b!4924441))

(assert (= (and d!1584373 (not c!838447)) b!4924442))

(declare-fun m!5940898 () Bool)

(assert (=> b!4924442 m!5940898))

(declare-fun m!5940900 () Bool)

(assert (=> b!4924442 m!5940900))

(assert (=> d!1583669 d!1584373))

(declare-fun d!1584375 () Bool)

(declare-fun c!838448 () Bool)

(assert (=> d!1584375 (= c!838448 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))))))

(declare-fun e!3077044 () (InoxSet C!26956))

(assert (=> d!1584375 (= (content!10066 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) e!3077044)))

(declare-fun b!4924443 () Bool)

(assert (=> b!4924443 (= e!3077044 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924444 () Bool)

(assert (=> b!4924444 (= e!3077044 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))) true) (content!10066 (t!367249 (++!12322 Nil!56685 (Cons!56685 lt!2024743 Nil!56685))))))))

(assert (= (and d!1584375 c!838448) b!4924443))

(assert (= (and d!1584375 (not c!838448)) b!4924444))

(declare-fun m!5940902 () Bool)

(assert (=> b!4924444 m!5940902))

(assert (=> b!4924444 m!5940682))

(assert (=> d!1583669 d!1584375))

(declare-fun d!1584377 () Bool)

(declare-fun c!838449 () Bool)

(assert (=> d!1584377 (= c!838449 ((_ is Nil!56685) lt!2024741))))

(declare-fun e!3077045 () (InoxSet C!26956))

(assert (=> d!1584377 (= (content!10066 lt!2024741) e!3077045)))

(declare-fun b!4924445 () Bool)

(assert (=> b!4924445 (= e!3077045 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924446 () Bool)

(assert (=> b!4924446 (= e!3077045 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024741) true) (content!10066 (t!367249 lt!2024741))))))

(assert (= (and d!1584377 c!838449) b!4924445))

(assert (= (and d!1584377 (not c!838449)) b!4924446))

(declare-fun m!5940904 () Bool)

(assert (=> b!4924446 m!5940904))

(declare-fun m!5940906 () Bool)

(assert (=> b!4924446 m!5940906))

(assert (=> d!1583669 d!1584377))

(assert (=> d!1583613 d!1583631))

(assert (=> d!1583613 d!1583617))

(declare-fun d!1584379 () Bool)

(assert (=> d!1584379 (= (++!12322 (++!12322 Nil!56685 (Cons!56685 lt!2024400 Nil!56685)) lt!2024403) lt!2024324)))

(assert (=> d!1584379 true))

(declare-fun _$68!804 () Unit!147131)

(assert (=> d!1584379 (= (choose!36042 Nil!56685 lt!2024400 lt!2024403 lt!2024324) _$68!804)))

(declare-fun bs!1179441 () Bool)

(assert (= bs!1179441 d!1584379))

(assert (=> bs!1179441 m!5937588))

(assert (=> bs!1179441 m!5937588))

(assert (=> bs!1179441 m!5937590))

(assert (=> d!1583613 d!1584379))

(declare-fun b!4924449 () Bool)

(declare-fun res!2102108 () Bool)

(declare-fun e!3077046 () Bool)

(assert (=> b!4924449 (=> (not res!2102108) (not e!3077046))))

(declare-fun lt!2025636 () List!56809)

(assert (=> b!4924449 (= res!2102108 (= (size!37476 lt!2025636) (+ (size!37476 Nil!56685) (size!37476 (Cons!56685 lt!2024400 lt!2024403)))))))

(declare-fun b!4924447 () Bool)

(declare-fun e!3077047 () List!56809)

(assert (=> b!4924447 (= e!3077047 (Cons!56685 lt!2024400 lt!2024403))))

(declare-fun b!4924448 () Bool)

(assert (=> b!4924448 (= e!3077047 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) (Cons!56685 lt!2024400 lt!2024403))))))

(declare-fun d!1584381 () Bool)

(assert (=> d!1584381 e!3077046))

(declare-fun res!2102109 () Bool)

(assert (=> d!1584381 (=> (not res!2102109) (not e!3077046))))

(assert (=> d!1584381 (= res!2102109 (= (content!10066 lt!2025636) ((_ map or) (content!10066 Nil!56685) (content!10066 (Cons!56685 lt!2024400 lt!2024403)))))))

(assert (=> d!1584381 (= lt!2025636 e!3077047)))

(declare-fun c!838450 () Bool)

(assert (=> d!1584381 (= c!838450 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584381 (= (++!12322 Nil!56685 (Cons!56685 lt!2024400 lt!2024403)) lt!2025636)))

(declare-fun b!4924450 () Bool)

(assert (=> b!4924450 (= e!3077046 (or (not (= (Cons!56685 lt!2024400 lt!2024403) Nil!56685)) (= lt!2025636 Nil!56685)))))

(assert (= (and d!1584381 c!838450) b!4924447))

(assert (= (and d!1584381 (not c!838450)) b!4924448))

(assert (= (and d!1584381 res!2102109) b!4924449))

(assert (= (and b!4924449 res!2102108) b!4924450))

(declare-fun m!5940908 () Bool)

(assert (=> b!4924449 m!5940908))

(assert (=> b!4924449 m!5937598))

(declare-fun m!5940910 () Bool)

(assert (=> b!4924449 m!5940910))

(declare-fun m!5940912 () Bool)

(assert (=> b!4924448 m!5940912))

(declare-fun m!5940914 () Bool)

(assert (=> d!1584381 m!5940914))

(assert (=> d!1584381 m!5938038))

(declare-fun m!5940916 () Bool)

(assert (=> d!1584381 m!5940916))

(assert (=> d!1583613 d!1584381))

(declare-fun d!1584383 () Bool)

(declare-fun c!838451 () Bool)

(assert (=> d!1584383 (= c!838451 ((_ is Nil!56685) lt!2024999))))

(declare-fun e!3077048 () (InoxSet C!26956))

(assert (=> d!1584383 (= (content!10066 lt!2024999) e!3077048)))

(declare-fun b!4924451 () Bool)

(assert (=> b!4924451 (= e!3077048 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924452 () Bool)

(assert (=> b!4924452 (= e!3077048 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024999) true) (content!10066 (t!367249 lt!2024999))))))

(assert (= (and d!1584383 c!838451) b!4924451))

(assert (= (and d!1584383 (not c!838451)) b!4924452))

(declare-fun m!5940918 () Bool)

(assert (=> b!4924452 m!5940918))

(declare-fun m!5940920 () Bool)

(assert (=> b!4924452 m!5940920))

(assert (=> d!1583509 d!1584383))

(declare-fun d!1584385 () Bool)

(declare-fun c!838452 () Bool)

(assert (=> d!1584385 (= c!838452 ((_ is Nil!56685) lt!2024329))))

(declare-fun e!3077049 () (InoxSet C!26956))

(assert (=> d!1584385 (= (content!10066 lt!2024329) e!3077049)))

(declare-fun b!4924453 () Bool)

(assert (=> b!4924453 (= e!3077049 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924454 () Bool)

(assert (=> b!4924454 (= e!3077049 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024329) true) (content!10066 (t!367249 lt!2024329))))))

(assert (= (and d!1584385 c!838452) b!4924453))

(assert (= (and d!1584385 (not c!838452)) b!4924454))

(declare-fun m!5940922 () Bool)

(assert (=> b!4924454 m!5940922))

(declare-fun m!5940924 () Bool)

(assert (=> b!4924454 m!5940924))

(assert (=> d!1583509 d!1584385))

(declare-fun d!1584387 () Bool)

(declare-fun c!838453 () Bool)

(assert (=> d!1584387 (= c!838453 ((_ is Nil!56685) lt!2024323))))

(declare-fun e!3077050 () (InoxSet C!26956))

(assert (=> d!1584387 (= (content!10066 lt!2024323) e!3077050)))

(declare-fun b!4924455 () Bool)

(assert (=> b!4924455 (= e!3077050 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924456 () Bool)

(assert (=> b!4924456 (= e!3077050 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024323) true) (content!10066 (t!367249 lt!2024323))))))

(assert (= (and d!1584387 c!838453) b!4924455))

(assert (= (and d!1584387 (not c!838453)) b!4924456))

(declare-fun m!5940926 () Bool)

(assert (=> b!4924456 m!5940926))

(declare-fun m!5940928 () Bool)

(assert (=> b!4924456 m!5940928))

(assert (=> d!1583509 d!1584387))

(assert (=> b!4923339 d!1584291))

(declare-fun d!1584389 () Bool)

(declare-fun lt!2025637 () Int)

(assert (=> d!1584389 (>= lt!2025637 0)))

(declare-fun e!3077051 () Int)

(assert (=> d!1584389 (= lt!2025637 e!3077051)))

(declare-fun c!838454 () Bool)

(assert (=> d!1584389 (= c!838454 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))))

(assert (=> d!1584389 (= (size!37476 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))) lt!2025637)))

(declare-fun b!4924457 () Bool)

(assert (=> b!4924457 (= e!3077051 0)))

(declare-fun b!4924458 () Bool)

(assert (=> b!4924458 (= e!3077051 (+ 1 (size!37476 (t!367249 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))))))

(assert (= (and d!1584389 c!838454) b!4924457))

(assert (= (and d!1584389 (not c!838454)) b!4924458))

(declare-fun m!5940930 () Bool)

(assert (=> b!4924458 m!5940930))

(assert (=> b!4923339 d!1584389))

(declare-fun d!1584391 () Bool)

(declare-fun lt!2025638 () C!26956)

(assert (=> d!1584391 (contains!19454 (tail!9667 lt!2024717) lt!2025638)))

(declare-fun e!3077052 () C!26956)

(assert (=> d!1584391 (= lt!2025638 e!3077052)))

(declare-fun c!838455 () Bool)

(assert (=> d!1584391 (= c!838455 (= (- 0 1) 0))))

(declare-fun e!3077053 () Bool)

(assert (=> d!1584391 e!3077053))

(declare-fun res!2102110 () Bool)

(assert (=> d!1584391 (=> (not res!2102110) (not e!3077053))))

(assert (=> d!1584391 (= res!2102110 (<= 0 (- 0 1)))))

(assert (=> d!1584391 (= (apply!13656 (tail!9667 lt!2024717) (- 0 1)) lt!2025638)))

(declare-fun b!4924459 () Bool)

(assert (=> b!4924459 (= e!3077053 (< (- 0 1) (size!37476 (tail!9667 lt!2024717))))))

(declare-fun b!4924460 () Bool)

(assert (=> b!4924460 (= e!3077052 (head!10520 (tail!9667 lt!2024717)))))

(declare-fun b!4924461 () Bool)

(assert (=> b!4924461 (= e!3077052 (apply!13656 (tail!9667 (tail!9667 lt!2024717)) (- (- 0 1) 1)))))

(assert (= (and d!1584391 res!2102110) b!4924459))

(assert (= (and d!1584391 c!838455) b!4924460))

(assert (= (and d!1584391 (not c!838455)) b!4924461))

(assert (=> d!1584391 m!5939038))

(declare-fun m!5940932 () Bool)

(assert (=> d!1584391 m!5940932))

(assert (=> b!4924459 m!5939038))

(declare-fun m!5940934 () Bool)

(assert (=> b!4924459 m!5940934))

(assert (=> b!4924460 m!5939038))

(declare-fun m!5940936 () Bool)

(assert (=> b!4924460 m!5940936))

(assert (=> b!4924461 m!5939038))

(declare-fun m!5940938 () Bool)

(assert (=> b!4924461 m!5940938))

(assert (=> b!4924461 m!5940938))

(declare-fun m!5940940 () Bool)

(assert (=> b!4924461 m!5940940))

(assert (=> b!4923386 d!1584391))

(declare-fun d!1584393 () Bool)

(assert (=> d!1584393 (= (tail!9667 lt!2024717) (t!367249 lt!2024717))))

(assert (=> b!4923386 d!1584393))

(declare-fun bs!1179442 () Bool)

(declare-fun d!1584395 () Bool)

(assert (= bs!1179442 (and d!1584395 d!1583385)))

(declare-fun lambda!245192 () Int)

(assert (=> bs!1179442 (= lambda!245192 lambda!245124)))

(declare-fun bs!1179443 () Bool)

(assert (= bs!1179443 (and d!1584395 d!1583691)))

(assert (=> bs!1179443 (= lambda!245192 lambda!245169)))

(assert (=> d!1584395 (= (inv!73463 setElem!27528) (forall!13131 (exprs!3515 setElem!27528) lambda!245192))))

(declare-fun bs!1179444 () Bool)

(assert (= bs!1179444 d!1584395))

(declare-fun m!5940942 () Bool)

(assert (=> bs!1179444 m!5940942))

(assert (=> setNonEmpty!27528 d!1584395))

(declare-fun d!1584397 () Bool)

(declare-fun c!838456 () Bool)

(assert (=> d!1584397 (= c!838456 ((_ is Nil!56685) lt!2025002))))

(declare-fun e!3077054 () (InoxSet C!26956))

(assert (=> d!1584397 (= (content!10066 lt!2025002) e!3077054)))

(declare-fun b!4924462 () Bool)

(assert (=> b!4924462 (= e!3077054 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924463 () Bool)

(assert (=> b!4924463 (= e!3077054 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025002) true) (content!10066 (t!367249 lt!2025002))))))

(assert (= (and d!1584397 c!838456) b!4924462))

(assert (= (and d!1584397 (not c!838456)) b!4924463))

(declare-fun m!5940944 () Bool)

(assert (=> b!4924463 m!5940944))

(declare-fun m!5940946 () Bool)

(assert (=> b!4924463 m!5940946))

(assert (=> d!1583511 d!1584397))

(declare-fun d!1584399 () Bool)

(declare-fun c!838457 () Bool)

(assert (=> d!1584399 (= c!838457 ((_ is Nil!56685) (_1!33887 lt!2024327)))))

(declare-fun e!3077055 () (InoxSet C!26956))

(assert (=> d!1584399 (= (content!10066 (_1!33887 lt!2024327)) e!3077055)))

(declare-fun b!4924464 () Bool)

(assert (=> b!4924464 (= e!3077055 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924465 () Bool)

(assert (=> b!4924465 (= e!3077055 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (_1!33887 lt!2024327)) true) (content!10066 (t!367249 (_1!33887 lt!2024327)))))))

(assert (= (and d!1584399 c!838457) b!4924464))

(assert (= (and d!1584399 (not c!838457)) b!4924465))

(declare-fun m!5940948 () Bool)

(assert (=> b!4924465 m!5940948))

(assert (=> b!4924465 m!5940698))

(assert (=> d!1583511 d!1584399))

(declare-fun d!1584401 () Bool)

(declare-fun c!838458 () Bool)

(assert (=> d!1584401 (= c!838458 ((_ is Nil!56685) (_2!33887 lt!2024327)))))

(declare-fun e!3077056 () (InoxSet C!26956))

(assert (=> d!1584401 (= (content!10066 (_2!33887 lt!2024327)) e!3077056)))

(declare-fun b!4924466 () Bool)

(assert (=> b!4924466 (= e!3077056 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924467 () Bool)

(assert (=> b!4924467 (= e!3077056 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (_2!33887 lt!2024327)) true) (content!10066 (t!367249 (_2!33887 lt!2024327)))))))

(assert (= (and d!1584401 c!838458) b!4924466))

(assert (= (and d!1584401 (not c!838458)) b!4924467))

(declare-fun m!5940950 () Bool)

(assert (=> b!4924467 m!5940950))

(declare-fun m!5940952 () Bool)

(assert (=> b!4924467 m!5940952))

(assert (=> d!1583511 d!1584401))

(assert (=> b!4923432 d!1584101))

(assert (=> b!4923432 d!1583761))

(declare-fun d!1584403 () Bool)

(assert (=> d!1584403 (isPrefix!4961 (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685)) lt!2024324)))

(declare-fun lt!2025639 () Unit!147131)

(assert (=> d!1584403 (= lt!2025639 (choose!36041 lt!2024382 lt!2024324))))

(assert (=> d!1584403 (isPrefix!4961 lt!2024382 lt!2024324)))

(assert (=> d!1584403 (= (lemmaAddHeadSuffixToPrefixStillPrefix!773 lt!2024382 lt!2024324) lt!2025639)))

(declare-fun bs!1179445 () Bool)

(assert (= bs!1179445 d!1584403))

(assert (=> bs!1179445 m!5939122))

(assert (=> bs!1179445 m!5939140))

(declare-fun m!5940954 () Bool)

(assert (=> bs!1179445 m!5940954))

(assert (=> bs!1179445 m!5939118))

(assert (=> bs!1179445 m!5939118))

(assert (=> bs!1179445 m!5939120))

(assert (=> bs!1179445 m!5940220))

(assert (=> bs!1179445 m!5939122))

(assert (=> b!4923432 d!1584403))

(declare-fun d!1584405 () Bool)

(assert (=> d!1584405 (<= (size!37476 lt!2024382) (size!37476 lt!2024324))))

(declare-fun lt!2025640 () Unit!147131)

(assert (=> d!1584405 (= lt!2025640 (choose!36040 lt!2024382 lt!2024324))))

(assert (=> d!1584405 (isPrefix!4961 lt!2024382 lt!2024324)))

(assert (=> d!1584405 (= (lemmaIsPrefixThenSmallerEqSize!685 lt!2024382 lt!2024324) lt!2025640)))

(declare-fun bs!1179446 () Bool)

(assert (= bs!1179446 d!1584405))

(assert (=> bs!1179446 m!5939132))

(assert (=> bs!1179446 m!5937596))

(declare-fun m!5940956 () Bool)

(assert (=> bs!1179446 m!5940956))

(assert (=> bs!1179446 m!5940220))

(assert (=> b!4923432 d!1584405))

(declare-fun d!1584407 () Bool)

(declare-fun e!3077057 () Bool)

(assert (=> d!1584407 e!3077057))

(declare-fun res!2102113 () Bool)

(assert (=> d!1584407 (=> res!2102113 e!3077057)))

(declare-fun lt!2025641 () Bool)

(assert (=> d!1584407 (= res!2102113 (not lt!2025641))))

(declare-fun e!3077058 () Bool)

(assert (=> d!1584407 (= lt!2025641 e!3077058)))

(declare-fun res!2102112 () Bool)

(assert (=> d!1584407 (=> res!2102112 e!3077058)))

(assert (=> d!1584407 (= res!2102112 ((_ is Nil!56685) (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685))))))

(assert (=> d!1584407 (= (isPrefix!4961 (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685)) lt!2024324) lt!2025641)))

(declare-fun b!4924470 () Bool)

(declare-fun e!3077059 () Bool)

(assert (=> b!4924470 (= e!3077059 (isPrefix!4961 (tail!9667 (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685))) (tail!9667 lt!2024324)))))

(declare-fun b!4924469 () Bool)

(declare-fun res!2102114 () Bool)

(assert (=> b!4924469 (=> (not res!2102114) (not e!3077059))))

(assert (=> b!4924469 (= res!2102114 (= (head!10520 (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685))) (head!10520 lt!2024324)))))

(declare-fun b!4924468 () Bool)

(assert (=> b!4924468 (= e!3077058 e!3077059)))

(declare-fun res!2102111 () Bool)

(assert (=> b!4924468 (=> (not res!2102111) (not e!3077059))))

(assert (=> b!4924468 (= res!2102111 (not ((_ is Nil!56685) lt!2024324)))))

(declare-fun b!4924471 () Bool)

(assert (=> b!4924471 (= e!3077057 (>= (size!37476 lt!2024324) (size!37476 (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685)))))))

(assert (= (and d!1584407 (not res!2102112)) b!4924468))

(assert (= (and b!4924468 res!2102111) b!4924469))

(assert (= (and b!4924469 res!2102114) b!4924470))

(assert (= (and d!1584407 (not res!2102113)) b!4924471))

(assert (=> b!4924470 m!5939122))

(declare-fun m!5940958 () Bool)

(assert (=> b!4924470 m!5940958))

(assert (=> b!4924470 m!5937580))

(assert (=> b!4924470 m!5940958))

(assert (=> b!4924470 m!5937580))

(declare-fun m!5940960 () Bool)

(assert (=> b!4924470 m!5940960))

(assert (=> b!4924469 m!5939122))

(declare-fun m!5940962 () Bool)

(assert (=> b!4924469 m!5940962))

(assert (=> b!4924469 m!5937604))

(assert (=> b!4924471 m!5937596))

(assert (=> b!4924471 m!5939122))

(declare-fun m!5940964 () Bool)

(assert (=> b!4924471 m!5940964))

(assert (=> b!4923432 d!1584407))

(declare-fun b!4924474 () Bool)

(declare-fun res!2102115 () Bool)

(declare-fun e!3077060 () Bool)

(assert (=> b!4924474 (=> (not res!2102115) (not e!3077060))))

(declare-fun lt!2025642 () List!56809)

(assert (=> b!4924474 (= res!2102115 (= (size!37476 lt!2025642) (+ (size!37476 lt!2024382) (size!37476 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685)))))))

(declare-fun b!4924472 () Bool)

(declare-fun e!3077061 () List!56809)

(assert (=> b!4924472 (= e!3077061 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685))))

(declare-fun b!4924473 () Bool)

(assert (=> b!4924473 (= e!3077061 (Cons!56685 (h!63133 lt!2024382) (++!12322 (t!367249 lt!2024382) (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685))))))

(declare-fun d!1584409 () Bool)

(assert (=> d!1584409 e!3077060))

(declare-fun res!2102116 () Bool)

(assert (=> d!1584409 (=> (not res!2102116) (not e!3077060))))

(assert (=> d!1584409 (= res!2102116 (= (content!10066 lt!2025642) ((_ map or) (content!10066 lt!2024382) (content!10066 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685)))))))

(assert (=> d!1584409 (= lt!2025642 e!3077061)))

(declare-fun c!838459 () Bool)

(assert (=> d!1584409 (= c!838459 ((_ is Nil!56685) lt!2024382))))

(assert (=> d!1584409 (= (++!12322 lt!2024382 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685)) lt!2025642)))

(declare-fun b!4924475 () Bool)

(assert (=> b!4924475 (= e!3077060 (or (not (= (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) Nil!56685) Nil!56685)) (= lt!2025642 lt!2024382)))))

(assert (= (and d!1584409 c!838459) b!4924472))

(assert (= (and d!1584409 (not c!838459)) b!4924473))

(assert (= (and d!1584409 res!2102116) b!4924474))

(assert (= (and b!4924474 res!2102115) b!4924475))

(declare-fun m!5940966 () Bool)

(assert (=> b!4924474 m!5940966))

(assert (=> b!4924474 m!5939132))

(declare-fun m!5940968 () Bool)

(assert (=> b!4924474 m!5940968))

(declare-fun m!5940970 () Bool)

(assert (=> b!4924473 m!5940970))

(declare-fun m!5940972 () Bool)

(assert (=> d!1584409 m!5940972))

(assert (=> d!1584409 m!5940236))

(declare-fun m!5940974 () Bool)

(assert (=> d!1584409 m!5940974))

(assert (=> b!4923432 d!1584409))

(declare-fun d!1584411 () Bool)

(assert (=> d!1584411 (= (++!12322 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685)) lt!2025249) lt!2024324)))

(declare-fun lt!2025643 () Unit!147131)

(assert (=> d!1584411 (= lt!2025643 (choose!36042 lt!2024382 lt!2025246 lt!2025249 lt!2024324))))

(assert (=> d!1584411 (= (++!12322 lt!2024382 (Cons!56685 lt!2025246 lt!2025249)) lt!2024324)))

(assert (=> d!1584411 (= (lemmaMoveElementToOtherListKeepsConcatEq!1391 lt!2024382 lt!2025246 lt!2025249 lt!2024324) lt!2025643)))

(declare-fun bs!1179447 () Bool)

(assert (= bs!1179447 d!1584411))

(assert (=> bs!1179447 m!5939124))

(assert (=> bs!1179447 m!5939124))

(assert (=> bs!1179447 m!5939126))

(declare-fun m!5940976 () Bool)

(assert (=> bs!1179447 m!5940976))

(declare-fun m!5940978 () Bool)

(assert (=> bs!1179447 m!5940978))

(assert (=> b!4923432 d!1584411))

(declare-fun b!4924478 () Bool)

(declare-fun res!2102117 () Bool)

(declare-fun e!3077062 () Bool)

(assert (=> b!4924478 (=> (not res!2102117) (not e!3077062))))

(declare-fun lt!2025644 () List!56809)

(assert (=> b!4924478 (= res!2102117 (= (size!37476 lt!2025644) (+ (size!37476 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685))) (size!37476 lt!2025249))))))

(declare-fun b!4924476 () Bool)

(declare-fun e!3077063 () List!56809)

(assert (=> b!4924476 (= e!3077063 lt!2025249)))

(declare-fun b!4924477 () Bool)

(assert (=> b!4924477 (= e!3077063 (Cons!56685 (h!63133 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685))) (++!12322 (t!367249 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685))) lt!2025249)))))

(declare-fun d!1584413 () Bool)

(assert (=> d!1584413 e!3077062))

(declare-fun res!2102118 () Bool)

(assert (=> d!1584413 (=> (not res!2102118) (not e!3077062))))

(assert (=> d!1584413 (= res!2102118 (= (content!10066 lt!2025644) ((_ map or) (content!10066 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685))) (content!10066 lt!2025249))))))

(assert (=> d!1584413 (= lt!2025644 e!3077063)))

(declare-fun c!838460 () Bool)

(assert (=> d!1584413 (= c!838460 ((_ is Nil!56685) (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685))))))

(assert (=> d!1584413 (= (++!12322 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685)) lt!2025249) lt!2025644)))

(declare-fun b!4924479 () Bool)

(assert (=> b!4924479 (= e!3077062 (or (not (= lt!2025249 Nil!56685)) (= lt!2025644 (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685)))))))

(assert (= (and d!1584413 c!838460) b!4924476))

(assert (= (and d!1584413 (not c!838460)) b!4924477))

(assert (= (and d!1584413 res!2102118) b!4924478))

(assert (= (and b!4924478 res!2102117) b!4924479))

(declare-fun m!5940980 () Bool)

(assert (=> b!4924478 m!5940980))

(assert (=> b!4924478 m!5939124))

(declare-fun m!5940982 () Bool)

(assert (=> b!4924478 m!5940982))

(declare-fun m!5940984 () Bool)

(assert (=> b!4924478 m!5940984))

(declare-fun m!5940986 () Bool)

(assert (=> b!4924477 m!5940986))

(declare-fun m!5940988 () Bool)

(assert (=> d!1584413 m!5940988))

(assert (=> d!1584413 m!5939124))

(declare-fun m!5940990 () Bool)

(assert (=> d!1584413 m!5940990))

(declare-fun m!5940992 () Bool)

(assert (=> d!1584413 m!5940992))

(assert (=> b!4923432 d!1584413))

(declare-fun d!1584415 () Bool)

(assert (=> d!1584415 (= (tail!9667 call!342906) (t!367249 call!342906))))

(assert (=> b!4923432 d!1584415))

(assert (=> b!4923432 d!1583621))

(declare-fun b!4924482 () Bool)

(declare-fun res!2102119 () Bool)

(declare-fun e!3077064 () Bool)

(assert (=> b!4924482 (=> (not res!2102119) (not e!3077064))))

(declare-fun lt!2025645 () List!56809)

(assert (=> b!4924482 (= res!2102119 (= (size!37476 lt!2025645) (+ (size!37476 lt!2024382) (size!37476 (Cons!56685 lt!2025246 Nil!56685)))))))

(declare-fun b!4924480 () Bool)

(declare-fun e!3077065 () List!56809)

(assert (=> b!4924480 (= e!3077065 (Cons!56685 lt!2025246 Nil!56685))))

(declare-fun b!4924481 () Bool)

(assert (=> b!4924481 (= e!3077065 (Cons!56685 (h!63133 lt!2024382) (++!12322 (t!367249 lt!2024382) (Cons!56685 lt!2025246 Nil!56685))))))

(declare-fun d!1584417 () Bool)

(assert (=> d!1584417 e!3077064))

(declare-fun res!2102120 () Bool)

(assert (=> d!1584417 (=> (not res!2102120) (not e!3077064))))

(assert (=> d!1584417 (= res!2102120 (= (content!10066 lt!2025645) ((_ map or) (content!10066 lt!2024382) (content!10066 (Cons!56685 lt!2025246 Nil!56685)))))))

(assert (=> d!1584417 (= lt!2025645 e!3077065)))

(declare-fun c!838461 () Bool)

(assert (=> d!1584417 (= c!838461 ((_ is Nil!56685) lt!2024382))))

(assert (=> d!1584417 (= (++!12322 lt!2024382 (Cons!56685 lt!2025246 Nil!56685)) lt!2025645)))

(declare-fun b!4924483 () Bool)

(assert (=> b!4924483 (= e!3077064 (or (not (= (Cons!56685 lt!2025246 Nil!56685) Nil!56685)) (= lt!2025645 lt!2024382)))))

(assert (= (and d!1584417 c!838461) b!4924480))

(assert (= (and d!1584417 (not c!838461)) b!4924481))

(assert (= (and d!1584417 res!2102120) b!4924482))

(assert (= (and b!4924482 res!2102119) b!4924483))

(declare-fun m!5940994 () Bool)

(assert (=> b!4924482 m!5940994))

(assert (=> b!4924482 m!5939132))

(declare-fun m!5940996 () Bool)

(assert (=> b!4924482 m!5940996))

(declare-fun m!5940998 () Bool)

(assert (=> b!4924481 m!5940998))

(declare-fun m!5941000 () Bool)

(assert (=> d!1584417 m!5941000))

(assert (=> d!1584417 m!5940236))

(declare-fun m!5941002 () Bool)

(assert (=> d!1584417 m!5941002))

(assert (=> b!4923432 d!1584417))

(declare-fun b!4924490 () Bool)

(declare-fun res!2102123 () Bool)

(declare-fun e!3077068 () Bool)

(assert (=> b!4924490 (=> (not res!2102123) (not e!3077068))))

(declare-fun lt!2025648 () List!56809)

(assert (=> b!4924490 (= res!2102123 (= (size!37476 lt!2025648) (+ (size!37476 lt!2024382) (size!37476 (Cons!56685 (head!10520 call!342906) Nil!56685)))))))

(declare-fun b!4924488 () Bool)

(declare-fun e!3077069 () List!56809)

(assert (=> b!4924488 (= e!3077069 (Cons!56685 (head!10520 call!342906) Nil!56685))))

(declare-fun b!4924489 () Bool)

(assert (=> b!4924489 (= e!3077069 (Cons!56685 (h!63133 lt!2024382) (++!12322 (t!367249 lt!2024382) (Cons!56685 (head!10520 call!342906) Nil!56685))))))

(declare-fun d!1584419 () Bool)

(assert (=> d!1584419 e!3077068))

(declare-fun res!2102124 () Bool)

(assert (=> d!1584419 (=> (not res!2102124) (not e!3077068))))

(assert (=> d!1584419 (= res!2102124 (= (content!10066 lt!2025648) ((_ map or) (content!10066 lt!2024382) (content!10066 (Cons!56685 (head!10520 call!342906) Nil!56685)))))))

(assert (=> d!1584419 (= lt!2025648 e!3077069)))

(declare-fun c!838462 () Bool)

(assert (=> d!1584419 (= c!838462 ((_ is Nil!56685) lt!2024382))))

(assert (=> d!1584419 (= (++!12322 lt!2024382 (Cons!56685 (head!10520 call!342906) Nil!56685)) lt!2025648)))

(declare-fun b!4924491 () Bool)

(assert (=> b!4924491 (= e!3077068 (or (not (= (Cons!56685 (head!10520 call!342906) Nil!56685) Nil!56685)) (= lt!2025648 lt!2024382)))))

(assert (= (and d!1584419 c!838462) b!4924488))

(assert (= (and d!1584419 (not c!838462)) b!4924489))

(assert (= (and d!1584419 res!2102124) b!4924490))

(assert (= (and b!4924490 res!2102123) b!4924491))

(declare-fun m!5941004 () Bool)

(assert (=> b!4924490 m!5941004))

(assert (=> b!4924490 m!5939132))

(declare-fun m!5941006 () Bool)

(assert (=> b!4924490 m!5941006))

(declare-fun m!5941008 () Bool)

(assert (=> b!4924489 m!5941008))

(declare-fun m!5941010 () Bool)

(assert (=> d!1584419 m!5941010))

(assert (=> d!1584419 m!5940236))

(declare-fun m!5941012 () Bool)

(assert (=> d!1584419 m!5941012))

(assert (=> b!4923432 d!1584419))

(assert (=> b!4923432 d!1584117))

(declare-fun d!1584421 () Bool)

(assert (=> d!1584421 (= (head!10520 (getSuffix!2949 lt!2024324 lt!2024382)) (h!63133 (getSuffix!2949 lt!2024324 lt!2024382)))))

(assert (=> b!4923432 d!1584421))

(declare-fun d!1584423 () Bool)

(declare-fun c!838467 () Bool)

(assert (=> d!1584423 (= c!838467 ((_ is Node!14872) (left!41330 (right!41660 (c!837809 input!5492)))))))

(declare-fun e!3077074 () Bool)

(assert (=> d!1584423 (= (inv!73464 (left!41330 (right!41660 (c!837809 input!5492)))) e!3077074)))

(declare-fun b!4924498 () Bool)

(assert (=> b!4924498 (= e!3077074 (inv!73468 (left!41330 (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4924499 () Bool)

(declare-fun e!3077075 () Bool)

(assert (=> b!4924499 (= e!3077074 e!3077075)))

(declare-fun res!2102125 () Bool)

(assert (=> b!4924499 (= res!2102125 (not ((_ is Leaf!24741) (left!41330 (right!41660 (c!837809 input!5492))))))))

(assert (=> b!4924499 (=> res!2102125 e!3077075)))

(declare-fun b!4924500 () Bool)

(assert (=> b!4924500 (= e!3077075 (inv!73469 (left!41330 (right!41660 (c!837809 input!5492)))))))

(assert (= (and d!1584423 c!838467) b!4924498))

(assert (= (and d!1584423 (not c!838467)) b!4924499))

(assert (= (and b!4924499 (not res!2102125)) b!4924500))

(declare-fun m!5941014 () Bool)

(assert (=> b!4924498 m!5941014))

(declare-fun m!5941016 () Bool)

(assert (=> b!4924500 m!5941016))

(assert (=> b!4923477 d!1584423))

(declare-fun d!1584425 () Bool)

(declare-fun c!838474 () Bool)

(assert (=> d!1584425 (= c!838474 ((_ is Node!14872) (right!41660 (right!41660 (c!837809 input!5492)))))))

(declare-fun e!3077082 () Bool)

(assert (=> d!1584425 (= (inv!73464 (right!41660 (right!41660 (c!837809 input!5492)))) e!3077082)))

(declare-fun b!4924513 () Bool)

(assert (=> b!4924513 (= e!3077082 (inv!73468 (right!41660 (right!41660 (c!837809 input!5492)))))))

(declare-fun b!4924514 () Bool)

(declare-fun e!3077083 () Bool)

(assert (=> b!4924514 (= e!3077082 e!3077083)))

(declare-fun res!2102126 () Bool)

(assert (=> b!4924514 (= res!2102126 (not ((_ is Leaf!24741) (right!41660 (right!41660 (c!837809 input!5492))))))))

(assert (=> b!4924514 (=> res!2102126 e!3077083)))

(declare-fun b!4924515 () Bool)

(assert (=> b!4924515 (= e!3077083 (inv!73469 (right!41660 (right!41660 (c!837809 input!5492)))))))

(assert (= (and d!1584425 c!838474) b!4924513))

(assert (= (and d!1584425 (not c!838474)) b!4924514))

(assert (= (and b!4924514 (not res!2102126)) b!4924515))

(declare-fun m!5941018 () Bool)

(assert (=> b!4924513 m!5941018))

(declare-fun m!5941020 () Bool)

(assert (=> b!4924515 m!5941020))

(assert (=> b!4923477 d!1584425))

(declare-fun d!1584427 () Bool)

(assert (not d!1584427))

(assert (=> b!4922830 d!1584427))

(declare-fun d!1584429 () Bool)

(assert (not d!1584429))

(assert (=> b!4922830 d!1584429))

(declare-fun d!1584431 () Bool)

(assert (=> d!1584431 (= (tail!9667 (++!12322 Nil!56685 lt!2024324)) (t!367249 (++!12322 Nil!56685 lt!2024324)))))

(assert (=> b!4922830 d!1584431))

(declare-fun d!1584433 () Bool)

(assert (=> d!1584433 (= lt!2024324 Nil!56685)))

(assert (=> d!1584433 true))

(declare-fun _$60!873 () Unit!147131)

(assert (=> d!1584433 (= (choose!36032 lt!2024324 Nil!56685 lt!2024324) _$60!873)))

(assert (=> d!1583505 d!1584433))

(assert (=> d!1583505 d!1583405))

(declare-fun d!1584435 () Bool)

(declare-fun res!2102127 () Bool)

(declare-fun e!3077086 () Bool)

(assert (=> d!1584435 (=> (not res!2102127) (not e!3077086))))

(assert (=> d!1584435 (= res!2102127 (= (csize!29974 (left!41330 (c!837809 input!5492))) (+ (size!37478 (left!41330 (left!41330 (c!837809 input!5492)))) (size!37478 (right!41660 (left!41330 (c!837809 input!5492)))))))))

(assert (=> d!1584435 (= (inv!73468 (left!41330 (c!837809 input!5492))) e!3077086)))

(declare-fun b!4924520 () Bool)

(declare-fun res!2102128 () Bool)

(assert (=> b!4924520 (=> (not res!2102128) (not e!3077086))))

(assert (=> b!4924520 (= res!2102128 (and (not (= (left!41330 (left!41330 (c!837809 input!5492))) Empty!14872)) (not (= (right!41660 (left!41330 (c!837809 input!5492))) Empty!14872))))))

(declare-fun b!4924521 () Bool)

(declare-fun res!2102129 () Bool)

(assert (=> b!4924521 (=> (not res!2102129) (not e!3077086))))

(assert (=> b!4924521 (= res!2102129 (= (cheight!15083 (left!41330 (c!837809 input!5492))) (+ (max!0 (height!1982 (left!41330 (left!41330 (c!837809 input!5492)))) (height!1982 (right!41660 (left!41330 (c!837809 input!5492))))) 1)))))

(declare-fun b!4924522 () Bool)

(assert (=> b!4924522 (= e!3077086 (<= 0 (cheight!15083 (left!41330 (c!837809 input!5492)))))))

(assert (= (and d!1584435 res!2102127) b!4924520))

(assert (= (and b!4924520 res!2102128) b!4924521))

(assert (= (and b!4924521 res!2102129) b!4924522))

(assert (=> d!1584435 m!5940690))

(declare-fun m!5941022 () Bool)

(assert (=> d!1584435 m!5941022))

(assert (=> b!4924521 m!5938532))

(assert (=> b!4924521 m!5938534))

(assert (=> b!4924521 m!5938532))

(assert (=> b!4924521 m!5938534))

(declare-fun m!5941024 () Bool)

(assert (=> b!4924521 m!5941024))

(assert (=> b!4923027 d!1584435))

(assert (=> b!4923058 d!1583377))

(assert (=> d!1583651 d!1583487))

(assert (=> d!1583651 d!1583667))

(declare-fun d!1584437 () Bool)

(assert (=> d!1584437 (<= (size!37476 Nil!56685) (size!37476 lt!2024751))))

(assert (=> d!1584437 true))

(declare-fun _$64!610 () Unit!147131)

(assert (=> d!1584437 (= (choose!36040 Nil!56685 lt!2024751) _$64!610)))

(declare-fun bs!1179448 () Bool)

(assert (= bs!1179448 d!1584437))

(assert (=> bs!1179448 m!5937598))

(assert (=> bs!1179448 m!5937812))

(assert (=> d!1583651 d!1584437))

(declare-fun d!1584439 () Bool)

(declare-fun e!3077089 () Bool)

(assert (=> d!1584439 e!3077089))

(declare-fun res!2102132 () Bool)

(assert (=> d!1584439 (=> res!2102132 e!3077089)))

(declare-fun lt!2025655 () Bool)

(assert (=> d!1584439 (= res!2102132 (not lt!2025655))))

(declare-fun e!3077090 () Bool)

(assert (=> d!1584439 (= lt!2025655 e!3077090)))

(declare-fun res!2102131 () Bool)

(assert (=> d!1584439 (=> res!2102131 e!3077090)))

(assert (=> d!1584439 (= res!2102131 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584439 (= (isPrefix!4961 Nil!56685 lt!2024751) lt!2025655)))

(declare-fun b!4924533 () Bool)

(declare-fun e!3077091 () Bool)

(assert (=> b!4924533 (= e!3077091 (isPrefix!4961 (tail!9667 Nil!56685) (tail!9667 lt!2024751)))))

(declare-fun b!4924532 () Bool)

(declare-fun res!2102133 () Bool)

(assert (=> b!4924532 (=> (not res!2102133) (not e!3077091))))

(assert (=> b!4924532 (= res!2102133 (= (head!10520 Nil!56685) (head!10520 lt!2024751)))))

(declare-fun b!4924531 () Bool)

(assert (=> b!4924531 (= e!3077090 e!3077091)))

(declare-fun res!2102130 () Bool)

(assert (=> b!4924531 (=> (not res!2102130) (not e!3077091))))

(assert (=> b!4924531 (= res!2102130 (not ((_ is Nil!56685) lt!2024751)))))

(declare-fun b!4924534 () Bool)

(assert (=> b!4924534 (= e!3077089 (>= (size!37476 lt!2024751) (size!37476 Nil!56685)))))

(assert (= (and d!1584439 (not res!2102131)) b!4924531))

(assert (= (and b!4924531 res!2102130) b!4924532))

(assert (= (and b!4924532 res!2102133) b!4924533))

(assert (= (and d!1584439 (not res!2102132)) b!4924534))

(assert (=> b!4924533 m!5938074))

(declare-fun m!5941026 () Bool)

(assert (=> b!4924533 m!5941026))

(assert (=> b!4924533 m!5938074))

(assert (=> b!4924533 m!5941026))

(declare-fun m!5941028 () Bool)

(assert (=> b!4924533 m!5941028))

(assert (=> b!4924532 m!5938080))

(declare-fun m!5941030 () Bool)

(assert (=> b!4924532 m!5941030))

(assert (=> b!4924534 m!5937812))

(assert (=> b!4924534 m!5937598))

(assert (=> d!1583651 d!1584439))

(assert (=> d!1583653 d!1583649))

(assert (=> d!1583653 d!1583675))

(declare-fun d!1584441 () Bool)

(declare-fun e!3077094 () Bool)

(assert (=> d!1584441 e!3077094))

(declare-fun res!2102136 () Bool)

(assert (=> d!1584441 (=> res!2102136 e!3077094)))

(declare-fun lt!2025656 () Bool)

(assert (=> d!1584441 (= res!2102136 (not lt!2025656))))

(declare-fun e!3077095 () Bool)

(assert (=> d!1584441 (= lt!2025656 e!3077095)))

(declare-fun res!2102135 () Bool)

(assert (=> d!1584441 (=> res!2102135 e!3077095)))

(assert (=> d!1584441 (= res!2102135 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584441 (= (isPrefix!4961 Nil!56685 lt!2024736) lt!2025656)))

(declare-fun b!4924537 () Bool)

(declare-fun e!3077096 () Bool)

(assert (=> b!4924537 (= e!3077096 (isPrefix!4961 (tail!9667 Nil!56685) (tail!9667 lt!2024736)))))

(declare-fun b!4924536 () Bool)

(declare-fun res!2102137 () Bool)

(assert (=> b!4924536 (=> (not res!2102137) (not e!3077096))))

(assert (=> b!4924536 (= res!2102137 (= (head!10520 Nil!56685) (head!10520 lt!2024736)))))

(declare-fun b!4924535 () Bool)

(assert (=> b!4924535 (= e!3077095 e!3077096)))

(declare-fun res!2102134 () Bool)

(assert (=> b!4924535 (=> (not res!2102134) (not e!3077096))))

(assert (=> b!4924535 (= res!2102134 (not ((_ is Nil!56685) lt!2024736)))))

(declare-fun b!4924538 () Bool)

(assert (=> b!4924538 (= e!3077094 (>= (size!37476 lt!2024736) (size!37476 Nil!56685)))))

(assert (= (and d!1584441 (not res!2102135)) b!4924535))

(assert (= (and b!4924535 res!2102134) b!4924536))

(assert (= (and b!4924536 res!2102137) b!4924537))

(assert (= (and d!1584441 (not res!2102136)) b!4924538))

(assert (=> b!4924537 m!5938074))

(assert (=> b!4924537 m!5938960))

(assert (=> b!4924537 m!5938074))

(assert (=> b!4924537 m!5938960))

(declare-fun m!5941032 () Bool)

(assert (=> b!4924537 m!5941032))

(assert (=> b!4924536 m!5938080))

(assert (=> b!4924536 m!5938966))

(assert (=> b!4924538 m!5938968))

(assert (=> b!4924538 m!5937598))

(assert (=> d!1583653 d!1584441))

(assert (=> d!1583653 d!1583663))

(assert (=> d!1583653 d!1583665))

(declare-fun d!1584443 () Bool)

(assert (=> d!1584443 (isPrefix!4961 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)) lt!2024736)))

(assert (=> d!1584443 true))

(declare-fun _$65!1694 () Unit!147131)

(assert (=> d!1584443 (= (choose!36041 Nil!56685 lt!2024736) _$65!1694)))

(declare-fun bs!1179449 () Bool)

(assert (= bs!1179449 d!1584443))

(assert (=> bs!1179449 m!5937814))

(assert (=> bs!1179449 m!5937814))

(assert (=> bs!1179449 m!5937816))

(assert (=> bs!1179449 m!5937806))

(assert (=> bs!1179449 m!5937806))

(assert (=> bs!1179449 m!5937818))

(assert (=> d!1583653 d!1584443))

(declare-fun d!1584445 () Bool)

(declare-fun lt!2025657 () Int)

(assert (=> d!1584445 (>= lt!2025657 0)))

(declare-fun e!3077097 () Int)

(assert (=> d!1584445 (= lt!2025657 e!3077097)))

(declare-fun c!838481 () Bool)

(assert (=> d!1584445 (= c!838481 ((_ is Nil!56685) (t!367249 (list!17947 input!5492))))))

(assert (=> d!1584445 (= (size!37476 (t!367249 (list!17947 input!5492))) lt!2025657)))

(declare-fun b!4924539 () Bool)

(assert (=> b!4924539 (= e!3077097 0)))

(declare-fun b!4924540 () Bool)

(assert (=> b!4924540 (= e!3077097 (+ 1 (size!37476 (t!367249 (t!367249 (list!17947 input!5492))))))))

(assert (= (and d!1584445 c!838481) b!4924539))

(assert (= (and d!1584445 (not c!838481)) b!4924540))

(declare-fun m!5941034 () Bool)

(assert (=> b!4924540 m!5941034))

(assert (=> b!4923020 d!1584445))

(declare-fun d!1584447 () Bool)

(declare-fun lt!2025658 () Bool)

(assert (=> d!1584447 (= lt!2025658 (isEmpty!30566 (list!17949 (left!41330 (right!41660 (c!837809 input!5492))))))))

(assert (=> d!1584447 (= lt!2025658 (= (size!37478 (left!41330 (right!41660 (c!837809 input!5492)))) 0))))

(assert (=> d!1584447 (= (isEmpty!30568 (left!41330 (right!41660 (c!837809 input!5492)))) lt!2025658)))

(declare-fun bs!1179450 () Bool)

(assert (= bs!1179450 d!1584447))

(assert (=> bs!1179450 m!5939296))

(assert (=> bs!1179450 m!5939296))

(declare-fun m!5941036 () Bool)

(assert (=> bs!1179450 m!5941036))

(assert (=> bs!1179450 m!5939196))

(assert (=> b!4922983 d!1584447))

(declare-fun d!1584449 () Bool)

(declare-fun lt!2025659 () C!26956)

(assert (=> d!1584449 (= lt!2025659 (apply!13656 (list!17947 input!5492) (+ 0 1)))))

(assert (=> d!1584449 (= lt!2025659 (apply!13657 (c!837809 input!5492) (+ 0 1)))))

(declare-fun e!3077098 () Bool)

(assert (=> d!1584449 e!3077098))

(declare-fun res!2102138 () Bool)

(assert (=> d!1584449 (=> (not res!2102138) (not e!3077098))))

(assert (=> d!1584449 (= res!2102138 (<= 0 (+ 0 1)))))

(assert (=> d!1584449 (= (apply!13655 input!5492 (+ 0 1)) lt!2025659)))

(declare-fun b!4924541 () Bool)

(assert (=> b!4924541 (= e!3077098 (< (+ 0 1) (size!37474 input!5492)))))

(assert (= (and d!1584449 res!2102138) b!4924541))

(assert (=> d!1584449 m!5937560))

(assert (=> d!1584449 m!5937560))

(declare-fun m!5941038 () Bool)

(assert (=> d!1584449 m!5941038))

(declare-fun m!5941040 () Bool)

(assert (=> d!1584449 m!5941040))

(assert (=> b!4924541 m!5937562))

(assert (=> bm!343033 d!1584449))

(declare-fun d!1584451 () Bool)

(assert (=> d!1584451 (= (tail!9667 call!342990) (t!367249 call!342990))))

(assert (=> bm!343036 d!1584451))

(declare-fun d!1584453 () Bool)

(assert (=> d!1584453 (= (list!17947 input!5492) Nil!56685)))

(declare-fun lt!2025660 () Unit!147131)

(assert (=> d!1584453 (= lt!2025660 (choose!36032 (list!17947 input!5492) Nil!56685 (list!17947 input!5492)))))

(assert (=> d!1584453 (isPrefix!4961 (list!17947 input!5492) (list!17947 input!5492))))

(assert (=> d!1584453 (= (lemmaIsPrefixSameLengthThenSameList!1119 (list!17947 input!5492) Nil!56685 (list!17947 input!5492)) lt!2025660)))

(declare-fun bs!1179451 () Bool)

(assert (= bs!1179451 d!1584453))

(assert (=> bs!1179451 m!5937560))

(assert (=> bs!1179451 m!5937560))

(declare-fun m!5941042 () Bool)

(assert (=> bs!1179451 m!5941042))

(assert (=> bs!1179451 m!5937560))

(assert (=> bs!1179451 m!5937560))

(assert (=> bs!1179451 m!5938174))

(assert (=> bm!343007 d!1584453))

(declare-fun b!4924542 () Bool)

(declare-fun res!2102142 () Bool)

(declare-fun e!3077099 () Bool)

(assert (=> b!4924542 (=> (not res!2102142) (not e!3077099))))

(assert (=> b!4924542 (= res!2102142 (isBalanced!4085 (right!41660 (right!41660 (c!837809 (_2!33888 lt!2024758))))))))

(declare-fun b!4924543 () Bool)

(assert (=> b!4924543 (= e!3077099 (not (isEmpty!30568 (right!41660 (right!41660 (c!837809 (_2!33888 lt!2024758)))))))))

(declare-fun d!1584455 () Bool)

(declare-fun res!2102141 () Bool)

(declare-fun e!3077100 () Bool)

(assert (=> d!1584455 (=> res!2102141 e!3077100)))

(assert (=> d!1584455 (= res!2102141 (not ((_ is Node!14872) (right!41660 (c!837809 (_2!33888 lt!2024758))))))))

(assert (=> d!1584455 (= (isBalanced!4085 (right!41660 (c!837809 (_2!33888 lt!2024758)))) e!3077100)))

(declare-fun b!4924544 () Bool)

(declare-fun res!2102143 () Bool)

(assert (=> b!4924544 (=> (not res!2102143) (not e!3077099))))

(assert (=> b!4924544 (= res!2102143 (<= (- (height!1982 (left!41330 (right!41660 (c!837809 (_2!33888 lt!2024758))))) (height!1982 (right!41660 (right!41660 (c!837809 (_2!33888 lt!2024758)))))) 1))))

(declare-fun b!4924545 () Bool)

(declare-fun res!2102144 () Bool)

(assert (=> b!4924545 (=> (not res!2102144) (not e!3077099))))

(assert (=> b!4924545 (= res!2102144 (not (isEmpty!30568 (left!41330 (right!41660 (c!837809 (_2!33888 lt!2024758)))))))))

(declare-fun b!4924546 () Bool)

(declare-fun res!2102140 () Bool)

(assert (=> b!4924546 (=> (not res!2102140) (not e!3077099))))

(assert (=> b!4924546 (= res!2102140 (isBalanced!4085 (left!41330 (right!41660 (c!837809 (_2!33888 lt!2024758))))))))

(declare-fun b!4924547 () Bool)

(assert (=> b!4924547 (= e!3077100 e!3077099)))

(declare-fun res!2102139 () Bool)

(assert (=> b!4924547 (=> (not res!2102139) (not e!3077099))))

(assert (=> b!4924547 (= res!2102139 (<= (- 1) (- (height!1982 (left!41330 (right!41660 (c!837809 (_2!33888 lt!2024758))))) (height!1982 (right!41660 (right!41660 (c!837809 (_2!33888 lt!2024758))))))))))

(assert (= (and d!1584455 (not res!2102141)) b!4924547))

(assert (= (and b!4924547 res!2102139) b!4924544))

(assert (= (and b!4924544 res!2102143) b!4924546))

(assert (= (and b!4924546 res!2102140) b!4924542))

(assert (= (and b!4924542 res!2102142) b!4924545))

(assert (= (and b!4924545 res!2102144) b!4924543))

(declare-fun m!5941044 () Bool)

(assert (=> b!4924543 m!5941044))

(declare-fun m!5941046 () Bool)

(assert (=> b!4924547 m!5941046))

(declare-fun m!5941048 () Bool)

(assert (=> b!4924547 m!5941048))

(assert (=> b!4924544 m!5941046))

(assert (=> b!4924544 m!5941048))

(declare-fun m!5941050 () Bool)

(assert (=> b!4924545 m!5941050))

(declare-fun m!5941052 () Bool)

(assert (=> b!4924546 m!5941052))

(declare-fun m!5941054 () Bool)

(assert (=> b!4924542 m!5941054))

(assert (=> b!4922964 d!1584455))

(assert (=> b!4923229 d!1584201))

(declare-fun d!1584457 () Bool)

(declare-fun lt!2025661 () Int)

(assert (=> d!1584457 (>= lt!2025661 0)))

(declare-fun e!3077101 () Int)

(assert (=> d!1584457 (= lt!2025661 e!3077101)))

(declare-fun c!838482 () Bool)

(assert (=> d!1584457 (= c!838482 ((_ is Nil!56685) (t!367249 lt!2024751)))))

(assert (=> d!1584457 (= (size!37476 (t!367249 lt!2024751)) lt!2025661)))

(declare-fun b!4924548 () Bool)

(assert (=> b!4924548 (= e!3077101 0)))

(declare-fun b!4924549 () Bool)

(assert (=> b!4924549 (= e!3077101 (+ 1 (size!37476 (t!367249 (t!367249 lt!2024751)))))))

(assert (= (and d!1584457 c!838482) b!4924548))

(assert (= (and d!1584457 (not c!838482)) b!4924549))

(declare-fun m!5941056 () Bool)

(assert (=> b!4924549 m!5941056))

(assert (=> b!4923343 d!1584457))

(assert (=> bm!343091 d!1584415))

(declare-fun d!1584459 () Bool)

(assert (=> d!1584459 (= (list!17950 (xs!18192 (c!837809 (_2!33888 lt!2024328)))) (innerList!14960 (xs!18192 (c!837809 (_2!33888 lt!2024328)))))))

(assert (=> b!4922962 d!1584459))

(declare-fun b!4924552 () Bool)

(declare-fun res!2102145 () Bool)

(declare-fun e!3077102 () Bool)

(assert (=> b!4924552 (=> (not res!2102145) (not e!3077102))))

(declare-fun lt!2025662 () List!56809)

(assert (=> b!4924552 (= res!2102145 (= (size!37476 lt!2025662) (+ (size!37476 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328))))) (size!37476 (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328))))))))))

(declare-fun b!4924550 () Bool)

(declare-fun e!3077103 () List!56809)

(assert (=> b!4924550 (= e!3077103 (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328)))))))

(declare-fun b!4924551 () Bool)

(assert (=> b!4924551 (= e!3077103 (Cons!56685 (h!63133 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328))))) (++!12322 (t!367249 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328))))) (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328)))))))))

(declare-fun d!1584461 () Bool)

(assert (=> d!1584461 e!3077102))

(declare-fun res!2102146 () Bool)

(assert (=> d!1584461 (=> (not res!2102146) (not e!3077102))))

(assert (=> d!1584461 (= res!2102146 (= (content!10066 lt!2025662) ((_ map or) (content!10066 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328))))) (content!10066 (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328))))))))))

(assert (=> d!1584461 (= lt!2025662 e!3077103)))

(declare-fun c!838483 () Bool)

(assert (=> d!1584461 (= c!838483 ((_ is Nil!56685) (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328))))))))

(assert (=> d!1584461 (= (++!12322 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328)))) (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328))))) lt!2025662)))

(declare-fun b!4924553 () Bool)

(assert (=> b!4924553 (= e!3077102 (or (not (= (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328)))) Nil!56685)) (= lt!2025662 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328)))))))))

(assert (= (and d!1584461 c!838483) b!4924550))

(assert (= (and d!1584461 (not c!838483)) b!4924551))

(assert (= (and d!1584461 res!2102146) b!4924552))

(assert (= (and b!4924552 res!2102145) b!4924553))

(declare-fun m!5941058 () Bool)

(assert (=> b!4924552 m!5941058))

(assert (=> b!4924552 m!5938364))

(declare-fun m!5941060 () Bool)

(assert (=> b!4924552 m!5941060))

(assert (=> b!4924552 m!5938366))

(declare-fun m!5941062 () Bool)

(assert (=> b!4924552 m!5941062))

(assert (=> b!4924551 m!5938366))

(declare-fun m!5941064 () Bool)

(assert (=> b!4924551 m!5941064))

(declare-fun m!5941066 () Bool)

(assert (=> d!1584461 m!5941066))

(assert (=> d!1584461 m!5938364))

(declare-fun m!5941068 () Bool)

(assert (=> d!1584461 m!5941068))

(assert (=> d!1584461 m!5938366))

(declare-fun m!5941070 () Bool)

(assert (=> d!1584461 m!5941070))

(assert (=> b!4922939 d!1584461))

(declare-fun b!4924556 () Bool)

(declare-fun e!3077105 () List!56809)

(assert (=> b!4924556 (= e!3077105 (list!17950 (xs!18192 (left!41330 (c!837809 (_1!33888 lt!2024328))))))))

(declare-fun b!4924554 () Bool)

(declare-fun e!3077104 () List!56809)

(assert (=> b!4924554 (= e!3077104 Nil!56685)))

(declare-fun d!1584463 () Bool)

(declare-fun c!838484 () Bool)

(assert (=> d!1584463 (= c!838484 ((_ is Empty!14872) (left!41330 (c!837809 (_1!33888 lt!2024328)))))))

(assert (=> d!1584463 (= (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024328)))) e!3077104)))

(declare-fun b!4924557 () Bool)

(assert (=> b!4924557 (= e!3077105 (++!12322 (list!17949 (left!41330 (left!41330 (c!837809 (_1!33888 lt!2024328))))) (list!17949 (right!41660 (left!41330 (c!837809 (_1!33888 lt!2024328)))))))))

(declare-fun b!4924555 () Bool)

(assert (=> b!4924555 (= e!3077104 e!3077105)))

(declare-fun c!838485 () Bool)

(assert (=> b!4924555 (= c!838485 ((_ is Leaf!24741) (left!41330 (c!837809 (_1!33888 lt!2024328)))))))

(assert (= (and d!1584463 c!838484) b!4924554))

(assert (= (and d!1584463 (not c!838484)) b!4924555))

(assert (= (and b!4924555 c!838485) b!4924556))

(assert (= (and b!4924555 (not c!838485)) b!4924557))

(declare-fun m!5941072 () Bool)

(assert (=> b!4924556 m!5941072))

(declare-fun m!5941074 () Bool)

(assert (=> b!4924557 m!5941074))

(declare-fun m!5941076 () Bool)

(assert (=> b!4924557 m!5941076))

(assert (=> b!4924557 m!5941074))

(assert (=> b!4924557 m!5941076))

(declare-fun m!5941078 () Bool)

(assert (=> b!4924557 m!5941078))

(assert (=> b!4922939 d!1584463))

(declare-fun b!4924560 () Bool)

(declare-fun e!3077107 () List!56809)

(assert (=> b!4924560 (= e!3077107 (list!17950 (xs!18192 (right!41660 (c!837809 (_1!33888 lt!2024328))))))))

(declare-fun b!4924558 () Bool)

(declare-fun e!3077106 () List!56809)

(assert (=> b!4924558 (= e!3077106 Nil!56685)))

(declare-fun d!1584465 () Bool)

(declare-fun c!838486 () Bool)

(assert (=> d!1584465 (= c!838486 ((_ is Empty!14872) (right!41660 (c!837809 (_1!33888 lt!2024328)))))))

(assert (=> d!1584465 (= (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024328)))) e!3077106)))

(declare-fun b!4924561 () Bool)

(assert (=> b!4924561 (= e!3077107 (++!12322 (list!17949 (left!41330 (right!41660 (c!837809 (_1!33888 lt!2024328))))) (list!17949 (right!41660 (right!41660 (c!837809 (_1!33888 lt!2024328)))))))))

(declare-fun b!4924559 () Bool)

(assert (=> b!4924559 (= e!3077106 e!3077107)))

(declare-fun c!838487 () Bool)

(assert (=> b!4924559 (= c!838487 ((_ is Leaf!24741) (right!41660 (c!837809 (_1!33888 lt!2024328)))))))

(assert (= (and d!1584465 c!838486) b!4924558))

(assert (= (and d!1584465 (not c!838486)) b!4924559))

(assert (= (and b!4924559 c!838487) b!4924560))

(assert (= (and b!4924559 (not c!838487)) b!4924561))

(declare-fun m!5941080 () Bool)

(assert (=> b!4924560 m!5941080))

(declare-fun m!5941082 () Bool)

(assert (=> b!4924561 m!5941082))

(declare-fun m!5941084 () Bool)

(assert (=> b!4924561 m!5941084))

(assert (=> b!4924561 m!5941082))

(assert (=> b!4924561 m!5941084))

(declare-fun m!5941086 () Bool)

(assert (=> b!4924561 m!5941086))

(assert (=> b!4922939 d!1584465))

(declare-fun d!1584467 () Bool)

(assert (not d!1584467))

(assert (=> b!4923275 d!1584467))

(assert (=> b!4923035 d!1583929))

(assert (=> b!4923035 d!1583931))

(declare-fun d!1584469 () Bool)

(declare-fun lt!2025663 () Int)

(assert (=> d!1584469 (>= lt!2025663 0)))

(declare-fun e!3077108 () Int)

(assert (=> d!1584469 (= lt!2025663 e!3077108)))

(declare-fun c!838488 () Bool)

(assert (=> d!1584469 (= c!838488 ((_ is Nil!56685) lt!2024865))))

(assert (=> d!1584469 (= (size!37476 lt!2024865) lt!2025663)))

(declare-fun b!4924562 () Bool)

(assert (=> b!4924562 (= e!3077108 0)))

(declare-fun b!4924563 () Bool)

(assert (=> b!4924563 (= e!3077108 (+ 1 (size!37476 (t!367249 lt!2024865))))))

(assert (= (and d!1584469 c!838488) b!4924562))

(assert (= (and d!1584469 (not c!838488)) b!4924563))

(declare-fun m!5941088 () Bool)

(assert (=> b!4924563 m!5941088))

(assert (=> b!4922810 d!1584469))

(assert (=> b!4922810 d!1583487))

(assert (=> b!4922810 d!1583621))

(declare-fun d!1584471 () Bool)

(declare-fun lt!2025664 () Int)

(assert (=> d!1584471 (>= lt!2025664 0)))

(declare-fun e!3077109 () Int)

(assert (=> d!1584471 (= lt!2025664 e!3077109)))

(declare-fun c!838489 () Bool)

(assert (=> d!1584471 (= c!838489 ((_ is Nil!56685) (ite c!837884 lt!2024744 lt!2024750)))))

(assert (=> d!1584471 (= (size!37476 (ite c!837884 lt!2024744 lt!2024750)) lt!2025664)))

(declare-fun b!4924564 () Bool)

(assert (=> b!4924564 (= e!3077109 0)))

(declare-fun b!4924565 () Bool)

(assert (=> b!4924565 (= e!3077109 (+ 1 (size!37476 (t!367249 (ite c!837884 lt!2024744 lt!2024750)))))))

(assert (= (and d!1584471 c!838489) b!4924564))

(assert (= (and d!1584471 (not c!838489)) b!4924565))

(declare-fun m!5941090 () Bool)

(assert (=> b!4924565 m!5941090))

(assert (=> b!4922895 d!1584471))

(declare-fun d!1584473 () Bool)

(declare-fun lt!2025665 () Int)

(assert (=> d!1584473 (>= lt!2025665 0)))

(declare-fun e!3077110 () Int)

(assert (=> d!1584473 (= lt!2025665 e!3077110)))

(declare-fun c!838490 () Bool)

(assert (=> d!1584473 (= c!838490 ((_ is Nil!56685) (ite c!837884 lt!2024726 lt!2024713)))))

(assert (=> d!1584473 (= (size!37476 (ite c!837884 lt!2024726 lt!2024713)) lt!2025665)))

(declare-fun b!4924566 () Bool)

(assert (=> b!4924566 (= e!3077110 0)))

(declare-fun b!4924567 () Bool)

(assert (=> b!4924567 (= e!3077110 (+ 1 (size!37476 (t!367249 (ite c!837884 lt!2024726 lt!2024713)))))))

(assert (= (and d!1584473 c!838490) b!4924566))

(assert (= (and d!1584473 (not c!838490)) b!4924567))

(declare-fun m!5941092 () Bool)

(assert (=> b!4924567 m!5941092))

(assert (=> b!4922895 d!1584473))

(declare-fun bs!1179452 () Bool)

(declare-fun d!1584475 () Bool)

(assert (= bs!1179452 (and d!1584475 d!1584369)))

(declare-fun lambda!245193 () Int)

(assert (=> bs!1179452 (not (= lambda!245193 lambda!245189))))

(declare-fun bs!1179453 () Bool)

(assert (= bs!1179453 (and d!1584475 b!4924435)))

(assert (=> bs!1179453 (not (= lambda!245193 lambda!245190))))

(declare-fun bs!1179454 () Bool)

(assert (= bs!1179454 (and d!1584475 d!1583411)))

(assert (=> bs!1179454 (not (= lambda!245193 lambda!245141))))

(declare-fun bs!1179455 () Bool)

(assert (= bs!1179455 (and d!1584475 b!4922796)))

(assert (=> bs!1179455 (not (= lambda!245193 lambda!245144))))

(declare-fun bs!1179456 () Bool)

(assert (= bs!1179456 (and d!1584475 d!1584109)))

(assert (=> bs!1179456 (not (= lambda!245193 lambda!245182))))

(declare-fun bs!1179457 () Bool)

(assert (= bs!1179457 (and d!1584475 d!1583565)))

(assert (=> bs!1179457 (= lambda!245193 lambda!245166)))

(declare-fun bs!1179458 () Bool)

(assert (= bs!1179458 (and d!1584475 b!4924105)))

(assert (=> bs!1179458 (not (= lambda!245193 lambda!245184))))

(declare-fun bs!1179459 () Bool)

(assert (= bs!1179459 (and d!1584475 d!1584257)))

(assert (=> bs!1179459 (not (= lambda!245193 lambda!245188))))

(declare-fun bs!1179460 () Bool)

(assert (= bs!1179460 (and d!1584475 d!1583923)))

(assert (=> bs!1179460 (not (= lambda!245193 lambda!245180))))

(declare-fun bs!1179461 () Bool)

(assert (= bs!1179461 (and d!1584475 d!1583997)))

(assert (=> bs!1179461 (= lambda!245193 lambda!245181)))

(declare-fun bs!1179462 () Bool)

(assert (= bs!1179462 (and d!1584475 b!4922797)))

(assert (=> bs!1179462 (not (= lambda!245193 lambda!245145))))

(declare-fun bs!1179463 () Bool)

(assert (= bs!1179463 (and d!1584475 b!4924436)))

(assert (=> bs!1179463 (not (= lambda!245193 lambda!245191))))

(declare-fun bs!1179464 () Bool)

(assert (= bs!1179464 (and d!1584475 b!4924104)))

(assert (=> bs!1179464 (not (= lambda!245193 lambda!245183))))

(assert (=> d!1584475 (= (nullableZipper!810 call!342904) (exists!1245 call!342904 lambda!245193))))

(declare-fun bs!1179465 () Bool)

(assert (= bs!1179465 d!1584475))

(declare-fun m!5941094 () Bool)

(assert (=> bs!1179465 m!5941094))

(assert (=> bm!343084 d!1584475))

(declare-fun d!1584477 () Bool)

(declare-fun lt!2025666 () Int)

(assert (=> d!1584477 (>= lt!2025666 0)))

(declare-fun e!3077111 () Int)

(assert (=> d!1584477 (= lt!2025666 e!3077111)))

(declare-fun c!838491 () Bool)

(assert (=> d!1584477 (= c!838491 ((_ is Nil!56685) lt!2024999))))

(assert (=> d!1584477 (= (size!37476 lt!2024999) lt!2025666)))

(declare-fun b!4924568 () Bool)

(assert (=> b!4924568 (= e!3077111 0)))

(declare-fun b!4924569 () Bool)

(assert (=> b!4924569 (= e!3077111 (+ 1 (size!37476 (t!367249 lt!2024999))))))

(assert (= (and d!1584477 c!838491) b!4924568))

(assert (= (and d!1584477 (not c!838491)) b!4924569))

(declare-fun m!5941096 () Bool)

(assert (=> b!4924569 m!5941096))

(assert (=> b!4922946 d!1584477))

(declare-fun d!1584479 () Bool)

(declare-fun lt!2025667 () Int)

(assert (=> d!1584479 (>= lt!2025667 0)))

(declare-fun e!3077112 () Int)

(assert (=> d!1584479 (= lt!2025667 e!3077112)))

(declare-fun c!838492 () Bool)

(assert (=> d!1584479 (= c!838492 ((_ is Nil!56685) lt!2024329))))

(assert (=> d!1584479 (= (size!37476 lt!2024329) lt!2025667)))

(declare-fun b!4924570 () Bool)

(assert (=> b!4924570 (= e!3077112 0)))

(declare-fun b!4924571 () Bool)

(assert (=> b!4924571 (= e!3077112 (+ 1 (size!37476 (t!367249 lt!2024329))))))

(assert (= (and d!1584479 c!838492) b!4924570))

(assert (= (and d!1584479 (not c!838492)) b!4924571))

(declare-fun m!5941098 () Bool)

(assert (=> b!4924571 m!5941098))

(assert (=> b!4922946 d!1584479))

(declare-fun d!1584481 () Bool)

(declare-fun lt!2025668 () Int)

(assert (=> d!1584481 (>= lt!2025668 0)))

(declare-fun e!3077113 () Int)

(assert (=> d!1584481 (= lt!2025668 e!3077113)))

(declare-fun c!838493 () Bool)

(assert (=> d!1584481 (= c!838493 ((_ is Nil!56685) lt!2024323))))

(assert (=> d!1584481 (= (size!37476 lt!2024323) lt!2025668)))

(declare-fun b!4924572 () Bool)

(assert (=> b!4924572 (= e!3077113 0)))

(declare-fun b!4924573 () Bool)

(assert (=> b!4924573 (= e!3077113 (+ 1 (size!37476 (t!367249 lt!2024323))))))

(assert (= (and d!1584481 c!838493) b!4924572))

(assert (= (and d!1584481 (not c!838493)) b!4924573))

(declare-fun m!5941100 () Bool)

(assert (=> b!4924573 m!5941100))

(assert (=> b!4922946 d!1584481))

(assert (=> b!4922775 d!1583621))

(declare-fun d!1584483 () Bool)

(declare-fun res!2102153 () Bool)

(declare-fun e!3077116 () Bool)

(assert (=> d!1584483 (=> (not res!2102153) (not e!3077116))))

(assert (=> d!1584483 (= res!2102153 (<= (size!37476 (list!17950 (xs!18192 (right!41660 (c!837809 input!5492))))) 512))))

(assert (=> d!1584483 (= (inv!73469 (right!41660 (c!837809 input!5492))) e!3077116)))

(declare-fun b!4924580 () Bool)

(declare-fun res!2102156 () Bool)

(assert (=> b!4924580 (=> (not res!2102156) (not e!3077116))))

(assert (=> b!4924580 (= res!2102156 (= (csize!29975 (right!41660 (c!837809 input!5492))) (size!37476 (list!17950 (xs!18192 (right!41660 (c!837809 input!5492)))))))))

(declare-fun b!4924581 () Bool)

(assert (=> b!4924581 (= e!3077116 (and (> (csize!29975 (right!41660 (c!837809 input!5492))) 0) (<= (csize!29975 (right!41660 (c!837809 input!5492))) 512)))))

(assert (= (and d!1584483 res!2102153) b!4924580))

(assert (= (and b!4924580 res!2102156) b!4924581))

(assert (=> d!1584483 m!5939294))

(assert (=> d!1584483 m!5939294))

(declare-fun m!5941102 () Bool)

(assert (=> d!1584483 m!5941102))

(assert (=> b!4924580 m!5939294))

(assert (=> b!4924580 m!5939294))

(assert (=> b!4924580 m!5941102))

(assert (=> b!4923032 d!1584483))

(declare-fun b!4924586 () Bool)

(declare-fun res!2102157 () Bool)

(declare-fun e!3077117 () Bool)

(assert (=> b!4924586 (=> (not res!2102157) (not e!3077117))))

(declare-fun lt!2025669 () List!56809)

(assert (=> b!4924586 (= res!2102157 (= (size!37476 lt!2025669) (+ (size!37476 (t!367249 (_1!33887 lt!2024389))) (size!37476 (_2!33887 lt!2024389)))))))

(declare-fun b!4924584 () Bool)

(declare-fun e!3077118 () List!56809)

(assert (=> b!4924584 (= e!3077118 (_2!33887 lt!2024389))))

(declare-fun b!4924585 () Bool)

(assert (=> b!4924585 (= e!3077118 (Cons!56685 (h!63133 (t!367249 (_1!33887 lt!2024389))) (++!12322 (t!367249 (t!367249 (_1!33887 lt!2024389))) (_2!33887 lt!2024389))))))

(declare-fun d!1584485 () Bool)

(assert (=> d!1584485 e!3077117))

(declare-fun res!2102158 () Bool)

(assert (=> d!1584485 (=> (not res!2102158) (not e!3077117))))

(assert (=> d!1584485 (= res!2102158 (= (content!10066 lt!2025669) ((_ map or) (content!10066 (t!367249 (_1!33887 lt!2024389))) (content!10066 (_2!33887 lt!2024389)))))))

(assert (=> d!1584485 (= lt!2025669 e!3077118)))

(declare-fun c!838494 () Bool)

(assert (=> d!1584485 (= c!838494 ((_ is Nil!56685) (t!367249 (_1!33887 lt!2024389))))))

(assert (=> d!1584485 (= (++!12322 (t!367249 (_1!33887 lt!2024389)) (_2!33887 lt!2024389)) lt!2025669)))

(declare-fun b!4924587 () Bool)

(assert (=> b!4924587 (= e!3077117 (or (not (= (_2!33887 lt!2024389) Nil!56685)) (= lt!2025669 (t!367249 (_1!33887 lt!2024389)))))))

(assert (= (and d!1584485 c!838494) b!4924584))

(assert (= (and d!1584485 (not c!838494)) b!4924585))

(assert (= (and d!1584485 res!2102158) b!4924586))

(assert (= (and b!4924586 res!2102157) b!4924587))

(declare-fun m!5941104 () Bool)

(assert (=> b!4924586 m!5941104))

(assert (=> b!4924586 m!5938278))

(assert (=> b!4924586 m!5938064))

(declare-fun m!5941106 () Bool)

(assert (=> b!4924585 m!5941106))

(declare-fun m!5941108 () Bool)

(assert (=> d!1584485 m!5941108))

(declare-fun m!5941110 () Bool)

(assert (=> d!1584485 m!5941110))

(assert (=> d!1584485 m!5938072))

(assert (=> b!4922825 d!1584485))

(declare-fun d!1584487 () Bool)

(declare-fun lt!2025670 () Int)

(assert (=> d!1584487 (>= lt!2025670 0)))

(declare-fun e!3077119 () Int)

(assert (=> d!1584487 (= lt!2025670 e!3077119)))

(declare-fun c!838495 () Bool)

(assert (=> d!1584487 (= c!838495 ((_ is Nil!56685) (list!17950 (xs!18192 (c!837809 input!5492)))))))

(assert (=> d!1584487 (= (size!37476 (list!17950 (xs!18192 (c!837809 input!5492)))) lt!2025670)))

(declare-fun b!4924588 () Bool)

(assert (=> b!4924588 (= e!3077119 0)))

(declare-fun b!4924589 () Bool)

(assert (=> b!4924589 (= e!3077119 (+ 1 (size!37476 (t!367249 (list!17950 (xs!18192 (c!837809 input!5492)))))))))

(assert (= (and d!1584487 c!838495) b!4924588))

(assert (= (and d!1584487 (not c!838495)) b!4924589))

(declare-fun m!5941112 () Bool)

(assert (=> b!4924589 m!5941112))

(assert (=> b!4923043 d!1584487))

(assert (=> b!4923043 d!1584201))

(declare-fun b!4924592 () Bool)

(declare-fun e!3077121 () List!56809)

(assert (=> b!4924592 (= e!3077121 (list!17950 (xs!18192 (c!837809 (_1!33888 lt!2024758)))))))

(declare-fun b!4924590 () Bool)

(declare-fun e!3077120 () List!56809)

(assert (=> b!4924590 (= e!3077120 Nil!56685)))

(declare-fun d!1584489 () Bool)

(declare-fun c!838496 () Bool)

(assert (=> d!1584489 (= c!838496 ((_ is Empty!14872) (c!837809 (_1!33888 lt!2024758))))))

(assert (=> d!1584489 (= (list!17949 (c!837809 (_1!33888 lt!2024758))) e!3077120)))

(declare-fun b!4924593 () Bool)

(assert (=> b!4924593 (= e!3077121 (++!12322 (list!17949 (left!41330 (c!837809 (_1!33888 lt!2024758)))) (list!17949 (right!41660 (c!837809 (_1!33888 lt!2024758))))))))

(declare-fun b!4924591 () Bool)

(assert (=> b!4924591 (= e!3077120 e!3077121)))

(declare-fun c!838497 () Bool)

(assert (=> b!4924591 (= c!838497 ((_ is Leaf!24741) (c!837809 (_1!33888 lt!2024758))))))

(assert (= (and d!1584489 c!838496) b!4924590))

(assert (= (and d!1584489 (not c!838496)) b!4924591))

(assert (= (and b!4924591 c!838497) b!4924592))

(assert (= (and b!4924591 (not c!838497)) b!4924593))

(declare-fun m!5941114 () Bool)

(assert (=> b!4924592 m!5941114))

(assert (=> b!4924593 m!5939494))

(assert (=> b!4924593 m!5939702))

(assert (=> b!4924593 m!5939494))

(assert (=> b!4924593 m!5939702))

(declare-fun m!5941116 () Bool)

(assert (=> b!4924593 m!5941116))

(assert (=> d!1583695 d!1584489))

(declare-fun d!1584491 () Bool)

(declare-fun e!3077122 () Bool)

(assert (=> d!1584491 e!3077122))

(declare-fun res!2102161 () Bool)

(assert (=> d!1584491 (=> res!2102161 e!3077122)))

(declare-fun lt!2025671 () Bool)

(assert (=> d!1584491 (= res!2102161 (not lt!2025671))))

(declare-fun e!3077123 () Bool)

(assert (=> d!1584491 (= lt!2025671 e!3077123)))

(declare-fun res!2102160 () Bool)

(assert (=> d!1584491 (=> res!2102160 e!3077123)))

(assert (=> d!1584491 (= res!2102160 ((_ is Nil!56685) (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))))))

(assert (=> d!1584491 (= (isPrefix!4961 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))) (tail!9667 lt!2024736)) lt!2025671)))

(declare-fun b!4924596 () Bool)

(declare-fun e!3077124 () Bool)

(assert (=> b!4924596 (= e!3077124 (isPrefix!4961 (tail!9667 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))) (tail!9667 (tail!9667 lt!2024736))))))

(declare-fun b!4924595 () Bool)

(declare-fun res!2102162 () Bool)

(assert (=> b!4924595 (=> (not res!2102162) (not e!3077124))))

(assert (=> b!4924595 (= res!2102162 (= (head!10520 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685)))) (head!10520 (tail!9667 lt!2024736))))))

(declare-fun b!4924594 () Bool)

(assert (=> b!4924594 (= e!3077123 e!3077124)))

(declare-fun res!2102159 () Bool)

(assert (=> b!4924594 (=> (not res!2102159) (not e!3077124))))

(assert (=> b!4924594 (= res!2102159 (not ((_ is Nil!56685) (tail!9667 lt!2024736))))))

(declare-fun b!4924597 () Bool)

(assert (=> b!4924597 (= e!3077122 (>= (size!37476 (tail!9667 lt!2024736)) (size!37476 (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))))))

(assert (= (and d!1584491 (not res!2102160)) b!4924594))

(assert (= (and b!4924594 res!2102159) b!4924595))

(assert (= (and b!4924595 res!2102162) b!4924596))

(assert (= (and d!1584491 (not res!2102161)) b!4924597))

(assert (=> b!4924596 m!5938958))

(declare-fun m!5941118 () Bool)

(assert (=> b!4924596 m!5941118))

(assert (=> b!4924596 m!5938960))

(declare-fun m!5941120 () Bool)

(assert (=> b!4924596 m!5941120))

(assert (=> b!4924596 m!5941118))

(assert (=> b!4924596 m!5941120))

(declare-fun m!5941122 () Bool)

(assert (=> b!4924596 m!5941122))

(assert (=> b!4924595 m!5938958))

(declare-fun m!5941124 () Bool)

(assert (=> b!4924595 m!5941124))

(assert (=> b!4924595 m!5938960))

(declare-fun m!5941126 () Bool)

(assert (=> b!4924595 m!5941126))

(assert (=> b!4924597 m!5938960))

(declare-fun m!5941128 () Bool)

(assert (=> b!4924597 m!5941128))

(assert (=> b!4924597 m!5938958))

(declare-fun m!5941130 () Bool)

(assert (=> b!4924597 m!5941130))

(assert (=> b!4923338 d!1584491))

(declare-fun d!1584493 () Bool)

(assert (=> d!1584493 (= (tail!9667 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))) (t!367249 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))))

(assert (=> b!4923338 d!1584493))

(assert (=> b!4923338 d!1583889))

(declare-fun d!1584495 () Bool)

(declare-fun lt!2025672 () Int)

(assert (=> d!1584495 (>= lt!2025672 0)))

(declare-fun e!3077125 () Int)

(assert (=> d!1584495 (= lt!2025672 e!3077125)))

(declare-fun c!838498 () Bool)

(assert (=> d!1584495 (= c!838498 ((_ is Nil!56685) (t!367249 (_1!33887 lt!2024389))))))

(assert (=> d!1584495 (= (size!37476 (t!367249 (_1!33887 lt!2024389))) lt!2025672)))

(declare-fun b!4924598 () Bool)

(assert (=> b!4924598 (= e!3077125 0)))

(declare-fun b!4924599 () Bool)

(assert (=> b!4924599 (= e!3077125 (+ 1 (size!37476 (t!367249 (t!367249 (_1!33887 lt!2024389))))))))

(assert (= (and d!1584495 c!838498) b!4924598))

(assert (= (and d!1584495 (not c!838498)) b!4924599))

(declare-fun m!5941132 () Bool)

(assert (=> b!4924599 m!5941132))

(assert (=> b!4922917 d!1584495))

(declare-fun d!1584497 () Bool)

(assert (=> d!1584497 (= (head!10520 lt!2024717) (h!63133 lt!2024717))))

(assert (=> b!4923385 d!1584497))

(declare-fun b!4924600 () Bool)

(declare-fun res!2102166 () Bool)

(declare-fun e!3077126 () Bool)

(assert (=> b!4924600 (=> (not res!2102166) (not e!3077126))))

(assert (=> b!4924600 (= res!2102166 (isBalanced!4085 (right!41660 (c!837809 (_1!33888 lt!2025191)))))))

(declare-fun b!4924601 () Bool)

(assert (=> b!4924601 (= e!3077126 (not (isEmpty!30568 (right!41660 (c!837809 (_1!33888 lt!2025191))))))))

(declare-fun d!1584499 () Bool)

(declare-fun res!2102165 () Bool)

(declare-fun e!3077127 () Bool)

(assert (=> d!1584499 (=> res!2102165 e!3077127)))

(assert (=> d!1584499 (= res!2102165 (not ((_ is Node!14872) (c!837809 (_1!33888 lt!2025191)))))))

(assert (=> d!1584499 (= (isBalanced!4085 (c!837809 (_1!33888 lt!2025191))) e!3077127)))

(declare-fun b!4924602 () Bool)

(declare-fun res!2102167 () Bool)

(assert (=> b!4924602 (=> (not res!2102167) (not e!3077126))))

(assert (=> b!4924602 (= res!2102167 (<= (- (height!1982 (left!41330 (c!837809 (_1!33888 lt!2025191)))) (height!1982 (right!41660 (c!837809 (_1!33888 lt!2025191))))) 1))))

(declare-fun b!4924603 () Bool)

(declare-fun res!2102168 () Bool)

(assert (=> b!4924603 (=> (not res!2102168) (not e!3077126))))

(assert (=> b!4924603 (= res!2102168 (not (isEmpty!30568 (left!41330 (c!837809 (_1!33888 lt!2025191))))))))

(declare-fun b!4924604 () Bool)

(declare-fun res!2102164 () Bool)

(assert (=> b!4924604 (=> (not res!2102164) (not e!3077126))))

(assert (=> b!4924604 (= res!2102164 (isBalanced!4085 (left!41330 (c!837809 (_1!33888 lt!2025191)))))))

(declare-fun b!4924605 () Bool)

(assert (=> b!4924605 (= e!3077127 e!3077126)))

(declare-fun res!2102163 () Bool)

(assert (=> b!4924605 (=> (not res!2102163) (not e!3077126))))

(assert (=> b!4924605 (= res!2102163 (<= (- 1) (- (height!1982 (left!41330 (c!837809 (_1!33888 lt!2025191)))) (height!1982 (right!41660 (c!837809 (_1!33888 lt!2025191)))))))))

(assert (= (and d!1584499 (not res!2102165)) b!4924605))

(assert (= (and b!4924605 res!2102163) b!4924602))

(assert (= (and b!4924602 res!2102167) b!4924604))

(assert (= (and b!4924604 res!2102164) b!4924600))

(assert (= (and b!4924600 res!2102166) b!4924603))

(assert (= (and b!4924603 res!2102168) b!4924601))

(declare-fun m!5941134 () Bool)

(assert (=> b!4924601 m!5941134))

(declare-fun m!5941136 () Bool)

(assert (=> b!4924605 m!5941136))

(declare-fun m!5941138 () Bool)

(assert (=> b!4924605 m!5941138))

(assert (=> b!4924602 m!5941136))

(assert (=> b!4924602 m!5941138))

(declare-fun m!5941140 () Bool)

(assert (=> b!4924603 m!5941140))

(declare-fun m!5941142 () Bool)

(assert (=> b!4924604 m!5941142))

(declare-fun m!5941144 () Bool)

(assert (=> b!4924600 m!5941144))

(assert (=> d!1583657 d!1584499))

(declare-fun b!4924606 () Bool)

(declare-fun e!3077134 () tuple2!61174)

(assert (=> b!4924606 (= e!3077134 (tuple2!61175 Empty!14872 (c!837809 input!5492)))))

(declare-fun b!4924607 () Bool)

(declare-fun e!3077130 () tuple2!61174)

(assert (=> b!4924607 (= e!3077130 (tuple2!61175 (c!837809 input!5492) (c!837809 input!5492)))))

(declare-fun b!4924608 () Bool)

(declare-fun e!3077129 () tuple2!61174)

(assert (=> b!4924608 (= e!3077129 (tuple2!61175 (c!837809 input!5492) Empty!14872))))

(declare-fun b!4924609 () Bool)

(declare-fun c!838507 () Bool)

(assert (=> b!4924609 (= c!838507 (= (size!37478 (left!41330 (c!837809 input!5492))) 0))))

(declare-fun lt!2025683 () Unit!147131)

(declare-fun lt!2025677 () Unit!147131)

(assert (=> b!4924609 (= lt!2025683 lt!2025677)))

(declare-fun lt!2025681 () List!56809)

(declare-fun lt!2025674 () List!56809)

(declare-fun e!3077128 () tuple2!61168)

(assert (=> b!4924609 (= (splitAtIndex!101 (++!12322 lt!2025681 lt!2025674) 0) e!3077128)))

(declare-fun c!838502 () Bool)

(declare-fun call!343265 () Int)

(assert (=> b!4924609 (= c!838502 (= call!343265 0))))

(assert (=> b!4924609 (= lt!2025677 (splitAtLemma!25 lt!2025681 lt!2025674 0))))

(assert (=> b!4924609 (= lt!2025674 (list!17949 (right!41660 (c!837809 input!5492))))))

(assert (=> b!4924609 (= lt!2025681 (list!17949 (left!41330 (c!837809 input!5492))))))

(declare-fun e!3077137 () tuple2!61174)

(declare-fun e!3077138 () tuple2!61174)

(assert (=> b!4924609 (= e!3077137 e!3077138)))

(declare-fun b!4924610 () Bool)

(declare-fun e!3077131 () Bool)

(declare-fun lt!2025682 () tuple2!61174)

(assert (=> b!4924610 (= e!3077131 (= (tuple2!61169 (list!17949 (_1!33890 lt!2025682)) (list!17949 (_2!33890 lt!2025682))) (splitAtIndex!101 (list!17949 (c!837809 input!5492)) 0)))))

(declare-fun b!4924611 () Bool)

(assert (=> b!4924611 (= e!3077130 e!3077137)))

(declare-fun c!838509 () Bool)

(assert (=> b!4924611 (= c!838509 ((_ is Leaf!24741) (c!837809 input!5492)))))

(declare-fun b!4924612 () Bool)

(assert (=> b!4924612 (= e!3077134 e!3077129)))

(declare-fun c!838504 () Bool)

(assert (=> b!4924612 (= c!838504 (= 0 (csize!29975 (c!837809 input!5492))))))

(declare-fun c!838506 () Bool)

(declare-fun b!4924613 () Bool)

(declare-fun e!3077132 () List!56809)

(assert (=> b!4924613 (= e!3077132 (ite c!838506 lt!2025681 lt!2025674))))

(declare-fun bm!343260 () Bool)

(declare-fun c!838499 () Bool)

(assert (=> bm!343260 (= c!838499 c!838509)))

(declare-fun e!3077133 () Int)

(declare-fun call!343269 () tuple2!61168)

(assert (=> bm!343260 (= call!343269 (splitAtIndex!101 e!3077132 (ite c!838509 0 e!3077133)))))

(declare-fun b!4924614 () Bool)

(declare-fun e!3077139 () Int)

(assert (=> b!4924614 (= e!3077139 0)))

(declare-fun b!4924615 () Bool)

(declare-fun lt!2025679 () tuple2!61174)

(declare-fun call!343268 () tuple2!61174)

(assert (=> b!4924615 (= lt!2025679 call!343268)))

(declare-fun e!3077135 () tuple2!61174)

(declare-fun call!343270 () Conc!14872)

(assert (=> b!4924615 (= e!3077135 (tuple2!61175 (_1!33890 lt!2025679) call!343270))))

(declare-fun c!838501 () Bool)

(declare-fun lt!2025675 () tuple2!61174)

(declare-fun bm!343261 () Bool)

(assert (=> bm!343261 (= call!343270 (++!12323 (ite c!838501 (_2!33890 lt!2025679) (left!41330 (c!837809 input!5492))) (ite c!838501 (right!41660 (c!837809 input!5492)) (_1!33890 lt!2025675))))))

(declare-fun b!4924616 () Bool)

(declare-fun c!838508 () Bool)

(assert (=> b!4924616 (= c!838508 (<= 0 0))))

(assert (=> b!4924616 (= e!3077137 e!3077134)))

(declare-fun b!4924617 () Bool)

(assert (=> b!4924617 (= e!3077128 (tuple2!61169 lt!2025681 lt!2025674))))

(declare-fun b!4924618 () Bool)

(assert (=> b!4924618 (= e!3077133 0)))

(declare-fun b!4924619 () Bool)

(assert (=> b!4924619 (= e!3077133 (- 0 call!343265))))

(declare-fun b!4924620 () Bool)

(assert (=> b!4924620 (= e!3077139 (- 0 (size!37478 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4924621 () Bool)

(assert (=> b!4924621 (= e!3077138 (tuple2!61175 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))))))

(declare-fun bm!343262 () Bool)

(declare-fun lt!2025685 () List!56809)

(assert (=> bm!343262 (= call!343265 (size!37476 (ite c!838509 lt!2025685 lt!2025681)))))

(declare-fun b!4924622 () Bool)

(declare-fun res!2102169 () Bool)

(assert (=> b!4924622 (=> (not res!2102169) (not e!3077131))))

(assert (=> b!4924622 (= res!2102169 (isBalanced!4085 (_2!33890 lt!2025682)))))

(declare-fun b!4924623 () Bool)

(declare-fun lt!2025684 () tuple2!61168)

(declare-fun call!343266 () tuple2!61168)

(assert (=> b!4924623 (= lt!2025684 call!343266)))

(declare-fun e!3077136 () tuple2!61168)

(declare-fun call!343267 () List!56809)

(assert (=> b!4924623 (= e!3077136 (tuple2!61169 (_1!33887 lt!2025684) call!343267))))

(declare-fun bm!343263 () Bool)

(declare-fun c!838500 () Bool)

(assert (=> bm!343263 (= c!838500 c!838501)))

(assert (=> bm!343263 (= call!343268 (splitAt!271 (ite c!838501 (left!41330 (c!837809 input!5492)) (right!41660 (c!837809 input!5492))) e!3077139))))

(declare-fun b!4924624 () Bool)

(assert (=> b!4924624 (= lt!2025675 call!343268)))

(assert (=> b!4924624 (= e!3077135 (tuple2!61175 call!343270 (_2!33890 lt!2025675)))))

(declare-fun lt!2025676 () tuple2!61168)

(declare-fun bm!343264 () Bool)

(assert (=> bm!343264 (= call!343267 (++!12322 (ite c!838506 (_2!33887 lt!2025684) lt!2025681) (ite c!838506 lt!2025674 (_1!33887 lt!2025676))))))

(declare-fun b!4924625 () Bool)

(assert (=> b!4924625 (= e!3077132 (list!17950 (xs!18192 (c!837809 input!5492))))))

(declare-fun b!4924626 () Bool)

(declare-fun lt!2025680 () Unit!147131)

(declare-fun lt!2025673 () Unit!147131)

(assert (=> b!4924626 (= lt!2025680 lt!2025673)))

(assert (=> b!4924626 (= (drop!2224 lt!2025685 0) (slice!766 lt!2025685 0 call!343265))))

(assert (=> b!4924626 (= lt!2025673 (dropLemma!25 lt!2025685 0))))

(assert (=> b!4924626 (= lt!2025685 (list!17950 (xs!18192 (c!837809 input!5492))))))

(declare-fun lt!2025678 () tuple2!61168)

(assert (=> b!4924626 (= lt!2025678 call!343269)))

(assert (=> b!4924626 (= e!3077129 (tuple2!61175 (Leaf!24741 (slice!767 (xs!18192 (c!837809 input!5492)) 0 0) 0) (Leaf!24741 (slice!767 (xs!18192 (c!837809 input!5492)) 0 (csize!29975 (c!837809 input!5492))) (- (csize!29975 (c!837809 input!5492)) 0))))))

(declare-fun bm!343265 () Bool)

(declare-fun c!838503 () Bool)

(assert (=> bm!343265 (= c!838503 c!838506)))

(assert (=> bm!343265 (= call!343266 call!343269)))

(declare-fun b!4924627 () Bool)

(assert (=> b!4924627 (= e!3077138 e!3077135)))

(assert (=> b!4924627 (= c!838501 (< 0 (size!37478 (left!41330 (c!837809 input!5492)))))))

(declare-fun b!4924628 () Bool)

(assert (=> b!4924628 (= lt!2025676 call!343266)))

(assert (=> b!4924628 (= e!3077136 (tuple2!61169 call!343267 (_2!33887 lt!2025676)))))

(declare-fun d!1584501 () Bool)

(assert (=> d!1584501 e!3077131))

(declare-fun res!2102170 () Bool)

(assert (=> d!1584501 (=> (not res!2102170) (not e!3077131))))

(assert (=> d!1584501 (= res!2102170 (isBalanced!4085 (_1!33890 lt!2025682)))))

(assert (=> d!1584501 (= lt!2025682 e!3077130)))

(declare-fun c!838505 () Bool)

(assert (=> d!1584501 (= c!838505 ((_ is Empty!14872) (c!837809 input!5492)))))

(assert (=> d!1584501 (isBalanced!4085 (c!837809 input!5492))))

(assert (=> d!1584501 (= (splitAt!271 (c!837809 input!5492) 0) lt!2025682)))

(declare-fun b!4924629 () Bool)

(assert (=> b!4924629 (= e!3077128 e!3077136)))

(assert (=> b!4924629 (= c!838506 (< 0 call!343265))))

(assert (= (and d!1584501 c!838505) b!4924607))

(assert (= (and d!1584501 (not c!838505)) b!4924611))

(assert (= (and b!4924611 c!838509) b!4924616))

(assert (= (and b!4924611 (not c!838509)) b!4924609))

(assert (= (and b!4924616 c!838508) b!4924606))

(assert (= (and b!4924616 (not c!838508)) b!4924612))

(assert (= (and b!4924612 c!838504) b!4924608))

(assert (= (and b!4924612 (not c!838504)) b!4924626))

(assert (= (and b!4924609 c!838502) b!4924617))

(assert (= (and b!4924609 (not c!838502)) b!4924629))

(assert (= (and b!4924629 c!838506) b!4924623))

(assert (= (and b!4924629 (not c!838506)) b!4924628))

(assert (= (or b!4924623 b!4924628) bm!343264))

(assert (= (or b!4924623 b!4924628) bm!343265))

(assert (= (and bm!343265 c!838503) b!4924618))

(assert (= (and bm!343265 (not c!838503)) b!4924619))

(assert (= (and b!4924609 c!838507) b!4924621))

(assert (= (and b!4924609 (not c!838507)) b!4924627))

(assert (= (and b!4924627 c!838501) b!4924615))

(assert (= (and b!4924627 (not c!838501)) b!4924624))

(assert (= (or b!4924615 b!4924624) bm!343261))

(assert (= (or b!4924615 b!4924624) bm!343263))

(assert (= (and bm!343263 c!838500) b!4924614))

(assert (= (and bm!343263 (not c!838500)) b!4924620))

(assert (= (or b!4924626 b!4924609 b!4924619 b!4924629) bm!343262))

(assert (= (or b!4924626 bm!343265) bm!343260))

(assert (= (and bm!343260 c!838499) b!4924625))

(assert (= (and bm!343260 (not c!838499)) b!4924613))

(assert (= (and d!1584501 res!2102170) b!4924622))

(assert (= (and b!4924622 res!2102169) b!4924610))

(declare-fun m!5941146 () Bool)

(assert (=> bm!343261 m!5941146))

(declare-fun m!5941148 () Bool)

(assert (=> bm!343263 m!5941148))

(declare-fun m!5941150 () Bool)

(assert (=> b!4924622 m!5941150))

(declare-fun m!5941152 () Bool)

(assert (=> d!1584501 m!5941152))

(assert (=> d!1584501 m!5937556))

(declare-fun m!5941154 () Bool)

(assert (=> b!4924610 m!5941154))

(declare-fun m!5941156 () Bool)

(assert (=> b!4924610 m!5941156))

(assert (=> b!4924610 m!5937864))

(assert (=> b!4924610 m!5937864))

(declare-fun m!5941158 () Bool)

(assert (=> b!4924610 m!5941158))

(assert (=> b!4924625 m!5938448))

(declare-fun m!5941160 () Bool)

(assert (=> bm!343264 m!5941160))

(assert (=> b!4924620 m!5938310))

(declare-fun m!5941162 () Bool)

(assert (=> b!4924609 m!5941162))

(declare-fun m!5941164 () Bool)

(assert (=> b!4924609 m!5941164))

(declare-fun m!5941166 () Bool)

(assert (=> b!4924609 m!5941166))

(assert (=> b!4924609 m!5938310))

(assert (=> b!4924609 m!5937958))

(assert (=> b!4924609 m!5941162))

(assert (=> b!4924609 m!5938300))

(assert (=> b!4924627 m!5938310))

(declare-fun m!5941168 () Bool)

(assert (=> bm!343262 m!5941168))

(declare-fun m!5941170 () Bool)

(assert (=> bm!343260 m!5941170))

(declare-fun m!5941172 () Bool)

(assert (=> b!4924626 m!5941172))

(assert (=> b!4924626 m!5938448))

(declare-fun m!5941174 () Bool)

(assert (=> b!4924626 m!5941174))

(declare-fun m!5941176 () Bool)

(assert (=> b!4924626 m!5941176))

(declare-fun m!5941178 () Bool)

(assert (=> b!4924626 m!5941178))

(declare-fun m!5941180 () Bool)

(assert (=> b!4924626 m!5941180))

(assert (=> d!1583657 d!1584501))

(assert (=> d!1583657 d!1583349))

(assert (=> b!4922982 d!1584047))

(assert (=> b!4922982 d!1584049))

(declare-fun d!1584503 () Bool)

(declare-fun e!3077140 () Bool)

(assert (=> d!1584503 e!3077140))

(declare-fun res!2102173 () Bool)

(assert (=> d!1584503 (=> res!2102173 e!3077140)))

(declare-fun lt!2025686 () Bool)

(assert (=> d!1584503 (= res!2102173 (not lt!2025686))))

(declare-fun e!3077141 () Bool)

(assert (=> d!1584503 (= lt!2025686 e!3077141)))

(declare-fun res!2102172 () Bool)

(assert (=> d!1584503 (=> res!2102172 e!3077141)))

(assert (=> d!1584503 (= res!2102172 ((_ is Nil!56685) (ite c!838007 lt!2025033 lt!2025020)))))

(assert (=> d!1584503 (= (isPrefix!4961 (ite c!838007 lt!2025033 lt!2025020) (ite c!838007 lt!2025051 lt!2025057)) lt!2025686)))

(declare-fun b!4924632 () Bool)

(declare-fun e!3077142 () Bool)

(assert (=> b!4924632 (= e!3077142 (isPrefix!4961 (tail!9667 (ite c!838007 lt!2025033 lt!2025020)) (tail!9667 (ite c!838007 lt!2025051 lt!2025057))))))

(declare-fun b!4924631 () Bool)

(declare-fun res!2102174 () Bool)

(assert (=> b!4924631 (=> (not res!2102174) (not e!3077142))))

(assert (=> b!4924631 (= res!2102174 (= (head!10520 (ite c!838007 lt!2025033 lt!2025020)) (head!10520 (ite c!838007 lt!2025051 lt!2025057))))))

(declare-fun b!4924630 () Bool)

(assert (=> b!4924630 (= e!3077141 e!3077142)))

(declare-fun res!2102171 () Bool)

(assert (=> b!4924630 (=> (not res!2102171) (not e!3077142))))

(assert (=> b!4924630 (= res!2102171 (not ((_ is Nil!56685) (ite c!838007 lt!2025051 lt!2025057))))))

(declare-fun b!4924633 () Bool)

(assert (=> b!4924633 (= e!3077140 (>= (size!37476 (ite c!838007 lt!2025051 lt!2025057)) (size!37476 (ite c!838007 lt!2025033 lt!2025020))))))

(assert (= (and d!1584503 (not res!2102172)) b!4924630))

(assert (= (and b!4924630 res!2102171) b!4924631))

(assert (= (and b!4924631 res!2102174) b!4924632))

(assert (= (and d!1584503 (not res!2102173)) b!4924633))

(declare-fun m!5941182 () Bool)

(assert (=> b!4924632 m!5941182))

(declare-fun m!5941184 () Bool)

(assert (=> b!4924632 m!5941184))

(assert (=> b!4924632 m!5941182))

(assert (=> b!4924632 m!5941184))

(declare-fun m!5941186 () Bool)

(assert (=> b!4924632 m!5941186))

(declare-fun m!5941188 () Bool)

(assert (=> b!4924631 m!5941188))

(declare-fun m!5941190 () Bool)

(assert (=> b!4924631 m!5941190))

(declare-fun m!5941192 () Bool)

(assert (=> b!4924633 m!5941192))

(declare-fun m!5941194 () Bool)

(assert (=> b!4924633 m!5941194))

(assert (=> bm!343040 d!1584503))

(declare-fun d!1584505 () Bool)

(assert (not d!1584505))

(assert (=> b!4922829 d!1584505))

(declare-fun d!1584507 () Bool)

(assert (=> d!1584507 (= (head!10520 (++!12322 Nil!56685 lt!2024324)) (h!63133 (++!12322 Nil!56685 lt!2024324)))))

(assert (=> b!4922829 d!1584507))

(declare-fun d!1584509 () Bool)

(declare-fun lt!2025691 () Int)

(assert (=> d!1584509 (>= lt!2025691 0)))

(declare-fun e!3077153 () Int)

(assert (=> d!1584509 (= lt!2025691 e!3077153)))

(declare-fun c!838518 () Bool)

(assert (=> d!1584509 (= c!838518 ((_ is Nil!56685) (t!367249 lt!2024324)))))

(assert (=> d!1584509 (= (size!37476 (t!367249 lt!2024324)) lt!2025691)))

(declare-fun b!4924635 () Bool)

(assert (=> b!4924635 (= e!3077153 0)))

(declare-fun b!4924636 () Bool)

(assert (=> b!4924636 (= e!3077153 (+ 1 (size!37476 (t!367249 (t!367249 lt!2024324)))))))

(assert (= (and d!1584509 c!838518) b!4924635))

(assert (= (and d!1584509 (not c!838518)) b!4924636))

(declare-fun m!5941196 () Bool)

(assert (=> b!4924636 m!5941196))

(assert (=> b!4923257 d!1584509))

(declare-fun d!1584511 () Bool)

(declare-fun c!838519 () Bool)

(assert (=> d!1584511 (= c!838519 ((_ is Nil!56685) lt!2024865))))

(declare-fun e!3077154 () (InoxSet C!26956))

(assert (=> d!1584511 (= (content!10066 lt!2024865) e!3077154)))

(declare-fun b!4924657 () Bool)

(assert (=> b!4924657 (= e!3077154 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924658 () Bool)

(assert (=> b!4924658 (= e!3077154 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024865) true) (content!10066 (t!367249 lt!2024865))))))

(assert (= (and d!1584511 c!838519) b!4924657))

(assert (= (and d!1584511 (not c!838519)) b!4924658))

(declare-fun m!5941198 () Bool)

(assert (=> b!4924658 m!5941198))

(declare-fun m!5941200 () Bool)

(assert (=> b!4924658 m!5941200))

(assert (=> d!1583417 d!1584511))

(assert (=> d!1583417 d!1583767))

(declare-fun d!1584513 () Bool)

(declare-fun c!838520 () Bool)

(assert (=> d!1584513 (= c!838520 ((_ is Nil!56685) lt!2024324))))

(declare-fun e!3077155 () (InoxSet C!26956))

(assert (=> d!1584513 (= (content!10066 lt!2024324) e!3077155)))

(declare-fun b!4924659 () Bool)

(assert (=> b!4924659 (= e!3077155 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924660 () Bool)

(assert (=> b!4924660 (= e!3077155 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024324) true) (content!10066 (t!367249 lt!2024324))))))

(assert (= (and d!1584513 c!838520) b!4924659))

(assert (= (and d!1584513 (not c!838520)) b!4924660))

(declare-fun m!5941202 () Bool)

(assert (=> b!4924660 m!5941202))

(declare-fun m!5941204 () Bool)

(assert (=> b!4924660 m!5941204))

(assert (=> d!1583417 d!1584513))

(declare-fun b!4924663 () Bool)

(declare-fun res!2102180 () Bool)

(declare-fun e!3077156 () Bool)

(assert (=> b!4924663 (=> (not res!2102180) (not e!3077156))))

(declare-fun lt!2025692 () List!56809)

(assert (=> b!4924663 (= res!2102180 (= (size!37476 lt!2025692) (+ (size!37476 (list!17949 (left!41330 (c!837809 input!5492)))) (size!37476 (list!17949 (right!41660 (c!837809 input!5492)))))))))

(declare-fun b!4924661 () Bool)

(declare-fun e!3077157 () List!56809)

(assert (=> b!4924661 (= e!3077157 (list!17949 (right!41660 (c!837809 input!5492))))))

(declare-fun b!4924662 () Bool)

(assert (=> b!4924662 (= e!3077157 (Cons!56685 (h!63133 (list!17949 (left!41330 (c!837809 input!5492)))) (++!12322 (t!367249 (list!17949 (left!41330 (c!837809 input!5492)))) (list!17949 (right!41660 (c!837809 input!5492))))))))

(declare-fun d!1584515 () Bool)

(assert (=> d!1584515 e!3077156))

(declare-fun res!2102181 () Bool)

(assert (=> d!1584515 (=> (not res!2102181) (not e!3077156))))

(assert (=> d!1584515 (= res!2102181 (= (content!10066 lt!2025692) ((_ map or) (content!10066 (list!17949 (left!41330 (c!837809 input!5492)))) (content!10066 (list!17949 (right!41660 (c!837809 input!5492)))))))))

(assert (=> d!1584515 (= lt!2025692 e!3077157)))

(declare-fun c!838521 () Bool)

(assert (=> d!1584515 (= c!838521 ((_ is Nil!56685) (list!17949 (left!41330 (c!837809 input!5492)))))))

(assert (=> d!1584515 (= (++!12322 (list!17949 (left!41330 (c!837809 input!5492))) (list!17949 (right!41660 (c!837809 input!5492)))) lt!2025692)))

(declare-fun b!4924664 () Bool)

(assert (=> b!4924664 (= e!3077156 (or (not (= (list!17949 (right!41660 (c!837809 input!5492))) Nil!56685)) (= lt!2025692 (list!17949 (left!41330 (c!837809 input!5492))))))))

(assert (= (and d!1584515 c!838521) b!4924661))

(assert (= (and d!1584515 (not c!838521)) b!4924662))

(assert (= (and d!1584515 res!2102181) b!4924663))

(assert (= (and b!4924663 res!2102180) b!4924664))

(declare-fun m!5941206 () Bool)

(assert (=> b!4924663 m!5941206))

(assert (=> b!4924663 m!5938300))

(assert (=> b!4924663 m!5939524))

(assert (=> b!4924663 m!5937958))

(assert (=> b!4924663 m!5939302))

(assert (=> b!4924662 m!5937958))

(declare-fun m!5941208 () Bool)

(assert (=> b!4924662 m!5941208))

(declare-fun m!5941210 () Bool)

(assert (=> d!1584515 m!5941210))

(assert (=> d!1584515 m!5938300))

(declare-fun m!5941212 () Bool)

(assert (=> d!1584515 m!5941212))

(assert (=> d!1584515 m!5937958))

(declare-fun m!5941214 () Bool)

(assert (=> d!1584515 m!5941214))

(assert (=> b!4922989 d!1584515))

(assert (=> b!4922989 d!1583869))

(assert (=> b!4922989 d!1583781))

(declare-fun d!1584517 () Bool)

(declare-fun c!838522 () Bool)

(assert (=> d!1584517 (= c!838522 ((_ is Nil!56685) lt!2024875))))

(declare-fun e!3077158 () (InoxSet C!26956))

(assert (=> d!1584517 (= (content!10066 lt!2024875) e!3077158)))

(declare-fun b!4924665 () Bool)

(assert (=> b!4924665 (= e!3077158 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924666 () Bool)

(assert (=> b!4924666 (= e!3077158 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024875) true) (content!10066 (t!367249 lt!2024875))))))

(assert (= (and d!1584517 c!838522) b!4924665))

(assert (= (and d!1584517 (not c!838522)) b!4924666))

(declare-fun m!5941216 () Bool)

(assert (=> b!4924666 m!5941216))

(declare-fun m!5941218 () Bool)

(assert (=> b!4924666 m!5941218))

(assert (=> d!1583435 d!1584517))

(declare-fun d!1584519 () Bool)

(declare-fun c!838523 () Bool)

(assert (=> d!1584519 (= c!838523 ((_ is Nil!56685) (_1!33887 lt!2024389)))))

(declare-fun e!3077159 () (InoxSet C!26956))

(assert (=> d!1584519 (= (content!10066 (_1!33887 lt!2024389)) e!3077159)))

(declare-fun b!4924667 () Bool)

(assert (=> b!4924667 (= e!3077159 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924668 () Bool)

(assert (=> b!4924668 (= e!3077159 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (_1!33887 lt!2024389)) true) (content!10066 (t!367249 (_1!33887 lt!2024389)))))))

(assert (= (and d!1584519 c!838523) b!4924667))

(assert (= (and d!1584519 (not c!838523)) b!4924668))

(declare-fun m!5941220 () Bool)

(assert (=> b!4924668 m!5941220))

(assert (=> b!4924668 m!5941110))

(assert (=> d!1583435 d!1584519))

(declare-fun d!1584521 () Bool)

(declare-fun c!838524 () Bool)

(assert (=> d!1584521 (= c!838524 ((_ is Nil!56685) (_2!33887 lt!2024389)))))

(declare-fun e!3077160 () (InoxSet C!26956))

(assert (=> d!1584521 (= (content!10066 (_2!33887 lt!2024389)) e!3077160)))

(declare-fun b!4924669 () Bool)

(assert (=> b!4924669 (= e!3077160 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924670 () Bool)

(assert (=> b!4924670 (= e!3077160 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 (_2!33887 lt!2024389)) true) (content!10066 (t!367249 (_2!33887 lt!2024389)))))))

(assert (= (and d!1584521 c!838524) b!4924669))

(assert (= (and d!1584521 (not c!838524)) b!4924670))

(declare-fun m!5941222 () Bool)

(assert (=> b!4924670 m!5941222))

(declare-fun m!5941224 () Bool)

(assert (=> b!4924670 m!5941224))

(assert (=> d!1583435 d!1584521))

(declare-fun d!1584523 () Bool)

(declare-fun lt!2025693 () Int)

(assert (=> d!1584523 (>= lt!2025693 0)))

(declare-fun e!3077161 () Int)

(assert (=> d!1584523 (= lt!2025693 e!3077161)))

(declare-fun c!838525 () Bool)

(assert (=> d!1584523 (= c!838525 ((_ is Nil!56685) lt!2025185))))

(assert (=> d!1584523 (= (size!37476 lt!2025185) lt!2025693)))

(declare-fun b!4924671 () Bool)

(assert (=> b!4924671 (= e!3077161 0)))

(declare-fun b!4924672 () Bool)

(assert (=> b!4924672 (= e!3077161 (+ 1 (size!37476 (t!367249 lt!2025185))))))

(assert (= (and d!1584523 c!838525) b!4924671))

(assert (= (and d!1584523 (not c!838525)) b!4924672))

(declare-fun m!5941226 () Bool)

(assert (=> b!4924672 m!5941226))

(assert (=> b!4923316 d!1584523))

(declare-fun bs!1179466 () Bool)

(declare-fun d!1584525 () Bool)

(assert (= bs!1179466 (and d!1584525 d!1584369)))

(declare-fun lambda!245196 () Int)

(assert (=> bs!1179466 (not (= lambda!245196 lambda!245189))))

(declare-fun bs!1179467 () Bool)

(assert (= bs!1179467 (and d!1584525 b!4924435)))

(assert (=> bs!1179467 (not (= lambda!245196 lambda!245190))))

(declare-fun bs!1179468 () Bool)

(assert (= bs!1179468 (and d!1584525 b!4922796)))

(assert (=> bs!1179468 (not (= lambda!245196 lambda!245144))))

(declare-fun bs!1179469 () Bool)

(assert (= bs!1179469 (and d!1584525 d!1584109)))

(assert (=> bs!1179469 (not (= lambda!245196 lambda!245182))))

(declare-fun bs!1179470 () Bool)

(assert (= bs!1179470 (and d!1584525 d!1583565)))

(assert (=> bs!1179470 (not (= lambda!245196 lambda!245166))))

(declare-fun bs!1179471 () Bool)

(assert (= bs!1179471 (and d!1584525 b!4924105)))

(assert (=> bs!1179471 (not (= lambda!245196 lambda!245184))))

(declare-fun bs!1179472 () Bool)

(assert (= bs!1179472 (and d!1584525 d!1584257)))

(assert (=> bs!1179472 (= (= lambda!245141 (ite c!837920 lambda!245144 lambda!245145)) (= lambda!245196 lambda!245188))))

(declare-fun bs!1179473 () Bool)

(assert (= bs!1179473 (and d!1584525 d!1583923)))

(assert (=> bs!1179473 (not (= lambda!245196 lambda!245180))))

(declare-fun bs!1179474 () Bool)

(assert (= bs!1179474 (and d!1584525 d!1583997)))

(assert (=> bs!1179474 (not (= lambda!245196 lambda!245181))))

(declare-fun bs!1179475 () Bool)

(assert (= bs!1179475 (and d!1584525 b!4922797)))

(assert (=> bs!1179475 (not (= lambda!245196 lambda!245145))))

(declare-fun bs!1179476 () Bool)

(assert (= bs!1179476 (and d!1584525 d!1584475)))

(assert (=> bs!1179476 (not (= lambda!245196 lambda!245193))))

(declare-fun bs!1179477 () Bool)

(assert (= bs!1179477 (and d!1584525 d!1583411)))

(assert (=> bs!1179477 (not (= lambda!245196 lambda!245141))))

(declare-fun bs!1179478 () Bool)

(assert (= bs!1179478 (and d!1584525 b!4924436)))

(assert (=> bs!1179478 (not (= lambda!245196 lambda!245191))))

(declare-fun bs!1179479 () Bool)

(assert (= bs!1179479 (and d!1584525 b!4924104)))

(assert (=> bs!1179479 (not (= lambda!245196 lambda!245183))))

(assert (=> d!1584525 true))

(assert (=> d!1584525 (< (dynLambda!23007 order!25975 lambda!245141) (dynLambda!23007 order!25975 lambda!245196))))

(assert (=> d!1584525 (not (exists!1242 lt!2024841 lambda!245196))))

(declare-fun lt!2025698 () Unit!147131)

(declare-fun choose!36064 (List!56811 Int) Unit!147131)

(assert (=> d!1584525 (= lt!2025698 (choose!36064 lt!2024841 lambda!245141))))

(assert (=> d!1584525 (forall!13134 lt!2024841 lambda!245141)))

(assert (=> d!1584525 (= (lemmaForallThenNotExists!162 lt!2024841 lambda!245141) lt!2025698)))

(declare-fun bs!1179480 () Bool)

(assert (= bs!1179480 d!1584525))

(declare-fun m!5941274 () Bool)

(assert (=> bs!1179480 m!5941274))

(declare-fun m!5941276 () Bool)

(assert (=> bs!1179480 m!5941276))

(declare-fun m!5941278 () Bool)

(assert (=> bs!1179480 m!5941278))

(assert (=> b!4922797 d!1584525))

(declare-fun d!1584541 () Bool)

(assert (=> d!1584541 (= (ite c!838007 lt!2025039 lt!2025045) call!342986)))

(declare-fun lt!2025701 () Unit!147131)

(assert (=> d!1584541 (= lt!2025701 (choose!36032 (ite c!838007 lt!2025039 lt!2025045) call!342986 e!3076302))))

(assert (=> d!1584541 (isPrefix!4961 (ite c!838007 lt!2025039 lt!2025045) e!3076302)))

(assert (=> d!1584541 (= (lemmaIsPrefixSameLengthThenSameList!1119 (ite c!838007 lt!2025039 lt!2025045) call!342986 e!3076302) lt!2025701)))

(declare-fun bs!1179482 () Bool)

(assert (= bs!1179482 d!1584541))

(declare-fun m!5941280 () Bool)

(assert (=> bs!1179482 m!5941280))

(declare-fun m!5941282 () Bool)

(assert (=> bs!1179482 m!5941282))

(assert (=> bm!343032 d!1584541))

(assert (=> b!4923224 d!1583851))

(assert (=> d!1583563 d!1584487))

(assert (=> d!1583563 d!1584201))

(assert (=> bm!343089 d!1583513))

(declare-fun b!4924687 () Bool)

(declare-fun res!2102184 () Bool)

(declare-fun e!3077170 () Bool)

(assert (=> b!4924687 (=> (not res!2102184) (not e!3077170))))

(declare-fun lt!2025703 () List!56809)

(assert (=> b!4924687 (= res!2102184 (= (size!37476 lt!2025703) (+ (size!37476 Nil!56685) (size!37476 lt!2024963))))))

(declare-fun b!4924685 () Bool)

(declare-fun e!3077171 () List!56809)

(assert (=> b!4924685 (= e!3077171 lt!2024963)))

(declare-fun b!4924686 () Bool)

(assert (=> b!4924686 (= e!3077171 (Cons!56685 (h!63133 Nil!56685) (++!12322 (t!367249 Nil!56685) lt!2024963)))))

(declare-fun d!1584549 () Bool)

(assert (=> d!1584549 e!3077170))

(declare-fun res!2102185 () Bool)

(assert (=> d!1584549 (=> (not res!2102185) (not e!3077170))))

(assert (=> d!1584549 (= res!2102185 (= (content!10066 lt!2025703) ((_ map or) (content!10066 Nil!56685) (content!10066 lt!2024963))))))

(assert (=> d!1584549 (= lt!2025703 e!3077171)))

(declare-fun c!838531 () Bool)

(assert (=> d!1584549 (= c!838531 ((_ is Nil!56685) Nil!56685))))

(assert (=> d!1584549 (= (++!12322 Nil!56685 lt!2024963) lt!2025703)))

(declare-fun b!4924688 () Bool)

(assert (=> b!4924688 (= e!3077170 (or (not (= lt!2024963 Nil!56685)) (= lt!2025703 Nil!56685)))))

(assert (= (and d!1584549 c!838531) b!4924685))

(assert (= (and d!1584549 (not c!838531)) b!4924686))

(assert (= (and d!1584549 res!2102185) b!4924687))

(assert (= (and b!4924687 res!2102184) b!4924688))

(declare-fun m!5941294 () Bool)

(assert (=> b!4924687 m!5941294))

(assert (=> b!4924687 m!5937598))

(declare-fun m!5941300 () Bool)

(assert (=> b!4924687 m!5941300))

(declare-fun m!5941302 () Bool)

(assert (=> b!4924686 m!5941302))

(declare-fun m!5941304 () Bool)

(assert (=> d!1584549 m!5941304))

(assert (=> d!1584549 m!5938038))

(declare-fun m!5941306 () Bool)

(assert (=> d!1584549 m!5941306))

(assert (=> d!1583465 d!1584549))

(assert (=> d!1583465 d!1583547))

(assert (=> d!1583465 d!1583487))

(declare-fun d!1584553 () Bool)

(declare-fun c!838533 () Bool)

(assert (=> d!1584553 (= c!838533 ((_ is Nil!56685) lt!2025185))))

(declare-fun e!3077173 () (InoxSet C!26956))

(assert (=> d!1584553 (= (content!10066 lt!2025185) e!3077173)))

(declare-fun b!4924691 () Bool)

(assert (=> b!4924691 (= e!3077173 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924692 () Bool)

(assert (=> b!4924692 (= e!3077173 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2025185) true) (content!10066 (t!367249 lt!2025185))))))

(assert (= (and d!1584553 c!838533) b!4924691))

(assert (= (and d!1584553 (not c!838533)) b!4924692))

(declare-fun m!5941310 () Bool)

(assert (=> b!4924692 m!5941310))

(declare-fun m!5941312 () Bool)

(assert (=> b!4924692 m!5941312))

(assert (=> d!1583645 d!1584553))

(declare-fun d!1584557 () Bool)

(declare-fun c!838535 () Bool)

(assert (=> d!1584557 (= c!838535 ((_ is Nil!56685) lt!2024717))))

(declare-fun e!3077175 () (InoxSet C!26956))

(assert (=> d!1584557 (= (content!10066 lt!2024717) e!3077175)))

(declare-fun b!4924695 () Bool)

(assert (=> b!4924695 (= e!3077175 ((as const (Array C!26956 Bool)) false))))

(declare-fun b!4924696 () Bool)

(assert (=> b!4924696 (= e!3077175 ((_ map or) (store ((as const (Array C!26956 Bool)) false) (h!63133 lt!2024717) true) (content!10066 (t!367249 lt!2024717))))))

(assert (= (and d!1584557 c!838535) b!4924695))

(assert (= (and d!1584557 (not c!838535)) b!4924696))

(declare-fun m!5941316 () Bool)

(assert (=> b!4924696 m!5941316))

(assert (=> b!4924696 m!5940794))

(assert (=> d!1583645 d!1584557))

(declare-fun d!1584561 () Bool)

(declare-fun res!2102186 () Bool)

(declare-fun e!3077177 () Bool)

(assert (=> d!1584561 (=> res!2102186 e!3077177)))

(assert (=> d!1584561 (= res!2102186 ((_ is Nil!56686) (exprs!3515 setElem!27526)))))

(assert (=> d!1584561 (= (forall!13131 (exprs!3515 setElem!27526) lambda!245169) e!3077177)))

(declare-fun b!4924699 () Bool)

(declare-fun e!3077178 () Bool)

(assert (=> b!4924699 (= e!3077177 e!3077178)))

(declare-fun res!2102187 () Bool)

(assert (=> b!4924699 (=> (not res!2102187) (not e!3077178))))

(assert (=> b!4924699 (= res!2102187 (dynLambda!23005 lambda!245169 (h!63134 (exprs!3515 setElem!27526))))))

(declare-fun b!4924700 () Bool)

(assert (=> b!4924700 (= e!3077178 (forall!13131 (t!367250 (exprs!3515 setElem!27526)) lambda!245169))))

(assert (= (and d!1584561 (not res!2102186)) b!4924699))

(assert (= (and b!4924699 res!2102187) b!4924700))

(declare-fun b_lambda!196277 () Bool)

(assert (=> (not b_lambda!196277) (not b!4924699)))

(declare-fun m!5941320 () Bool)

(assert (=> b!4924699 m!5941320))

(declare-fun m!5941322 () Bool)

(assert (=> b!4924700 m!5941322))

(assert (=> d!1583691 d!1584561))

(declare-fun d!1584565 () Bool)

(declare-fun lt!2025708 () Int)

(assert (=> d!1584565 (>= lt!2025708 0)))

(declare-fun e!3077181 () Int)

(assert (=> d!1584565 (= lt!2025708 e!3077181)))

(declare-fun c!838538 () Bool)

(assert (=> d!1584565 (= c!838538 ((_ is Nil!56685) (innerList!14960 (xs!18192 (c!837809 input!5492)))))))

(assert (=> d!1584565 (= (size!37476 (innerList!14960 (xs!18192 (c!837809 input!5492)))) lt!2025708)))

(declare-fun b!4924704 () Bool)

(assert (=> b!4924704 (= e!3077181 0)))

(declare-fun b!4924705 () Bool)

(assert (=> b!4924705 (= e!3077181 (+ 1 (size!37476 (t!367249 (innerList!14960 (xs!18192 (c!837809 input!5492)))))))))

(assert (= (and d!1584565 c!838538) b!4924704))

(assert (= (and d!1584565 (not c!838538)) b!4924705))

(declare-fun m!5941334 () Bool)

(assert (=> b!4924705 m!5941334))

(assert (=> d!1583471 d!1584565))

(declare-fun d!1584569 () Bool)

(declare-fun e!3077182 () Bool)

(assert (=> d!1584569 e!3077182))

(declare-fun res!2102191 () Bool)

(assert (=> d!1584569 (=> res!2102191 e!3077182)))

(declare-fun lt!2025709 () Bool)

(assert (=> d!1584569 (= res!2102191 (not lt!2025709))))

(declare-fun e!3077183 () Bool)

(assert (=> d!1584569 (= lt!2025709 e!3077183)))

(declare-fun res!2102190 () Bool)

(assert (=> d!1584569 (=> res!2102190 e!3077183)))

(assert (=> d!1584569 (= res!2102190 ((_ is Nil!56685) (tail!9667 lt!2024324)))))

(assert (=> d!1584569 (= (isPrefix!4961 (tail!9667 lt!2024324) (tail!9667 lt!2024324)) lt!2025709)))

(declare-fun b!4924708 () Bool)

(declare-fun e!3077184 () Bool)

(assert (=> b!4924708 (= e!3077184 (isPrefix!4961 (tail!9667 (tail!9667 lt!2024324)) (tail!9667 (tail!9667 lt!2024324))))))

(declare-fun b!4924707 () Bool)

(declare-fun res!2102192 () Bool)

(assert (=> b!4924707 (=> (not res!2102192) (not e!3077184))))

(assert (=> b!4924707 (= res!2102192 (= (head!10520 (tail!9667 lt!2024324)) (head!10520 (tail!9667 lt!2024324))))))

(declare-fun b!4924706 () Bool)

(assert (=> b!4924706 (= e!3077183 e!3077184)))

(declare-fun res!2102189 () Bool)

(assert (=> b!4924706 (=> (not res!2102189) (not e!3077184))))

(assert (=> b!4924706 (= res!2102189 (not ((_ is Nil!56685) (tail!9667 lt!2024324))))))

(declare-fun b!4924709 () Bool)

(assert (=> b!4924709 (= e!3077182 (>= (size!37476 (tail!9667 lt!2024324)) (size!37476 (tail!9667 lt!2024324))))))

(assert (= (and d!1584569 (not res!2102190)) b!4924706))

(assert (= (and b!4924706 res!2102189) b!4924707))

(assert (= (and b!4924707 res!2102192) b!4924708))

(assert (= (and d!1584569 (not res!2102191)) b!4924709))

(assert (=> b!4924708 m!5937580))

(assert (=> b!4924708 m!5939230))

(assert (=> b!4924708 m!5937580))

(assert (=> b!4924708 m!5939230))

(assert (=> b!4924708 m!5939230))

(assert (=> b!4924708 m!5939230))

(declare-fun m!5941340 () Bool)

(assert (=> b!4924708 m!5941340))

(assert (=> b!4924707 m!5937580))

(assert (=> b!4924707 m!5939236))

(assert (=> b!4924707 m!5937580))

(assert (=> b!4924707 m!5939236))

(assert (=> b!4924709 m!5937580))

(assert (=> b!4924709 m!5939238))

(assert (=> b!4924709 m!5937580))

(assert (=> b!4924709 m!5939238))

(assert (=> b!4922774 d!1584569))

(assert (=> b!4922774 d!1583495))

(declare-fun d!1584575 () Bool)

(assert (=> d!1584575 (= (list!17950 (xs!18192 (c!837809 (_1!33888 lt!2024328)))) (innerList!14960 (xs!18192 (c!837809 (_1!33888 lt!2024328)))))))

(assert (=> b!4922938 d!1584575))

(declare-fun d!1584577 () Bool)

(assert (not d!1584577))

(assert (=> b!4922809 d!1584577))

(declare-fun d!1584583 () Bool)

(declare-fun lt!2025713 () Bool)

(assert (=> d!1584583 (= lt!2025713 (isEmpty!30566 (list!17949 (right!41660 (left!41330 (c!837809 input!5492))))))))

(assert (=> d!1584583 (= lt!2025713 (= (size!37478 (right!41660 (left!41330 (c!837809 input!5492)))) 0))))

(assert (=> d!1584583 (= (isEmpty!30568 (right!41660 (left!41330 (c!837809 input!5492)))) lt!2025713)))

(declare-fun bs!1179486 () Bool)

(assert (= bs!1179486 d!1584583))

(assert (=> bs!1179486 m!5939608))

(assert (=> bs!1179486 m!5939608))

(declare-fun m!5941350 () Bool)

(assert (=> bs!1179486 m!5941350))

(assert (=> bs!1179486 m!5941022))

(assert (=> b!4923034 d!1584583))

(declare-fun d!1584587 () Bool)

(assert (=> d!1584587 (= (list!17947 (_1!33888 lt!2025191)) (list!17949 (c!837809 (_1!33888 lt!2025191))))))

(declare-fun bs!1179487 () Bool)

(assert (= bs!1179487 d!1584587))

(declare-fun m!5941352 () Bool)

(assert (=> bs!1179487 m!5941352))

(assert (=> b!4923323 d!1584587))

(declare-fun d!1584589 () Bool)

(assert (=> d!1584589 (= (list!17947 (_2!33888 lt!2025191)) (list!17949 (c!837809 (_2!33888 lt!2025191))))))

(declare-fun bs!1179488 () Bool)

(assert (= bs!1179488 d!1584589))

(declare-fun m!5941354 () Bool)

(assert (=> bs!1179488 m!5941354))

(assert (=> b!4923323 d!1584589))

(declare-fun d!1584591 () Bool)

(declare-fun e!3077192 () Bool)

(assert (=> d!1584591 e!3077192))

(declare-fun res!2102199 () Bool)

(assert (=> d!1584591 (=> (not res!2102199) (not e!3077192))))

(declare-fun lt!2025716 () tuple2!61168)

(assert (=> d!1584591 (= res!2102199 (= (++!12322 (_1!33887 lt!2025716) (_2!33887 lt!2025716)) (list!17947 input!5492)))))

(declare-fun e!3077190 () tuple2!61168)

(assert (=> d!1584591 (= lt!2025716 e!3077190)))

(declare-fun c!838540 () Bool)

(assert (=> d!1584591 (= c!838540 ((_ is Nil!56685) (list!17947 input!5492)))))

(assert (=> d!1584591 (= (splitAtIndex!101 (list!17947 input!5492) 0) lt!2025716)))

(declare-fun b!4924716 () Bool)

(declare-fun res!2102200 () Bool)

(assert (=> b!4924716 (=> (not res!2102200) (not e!3077192))))

(assert (=> b!4924716 (= res!2102200 (= (_1!33887 lt!2025716) (take!577 (list!17947 input!5492) 0)))))

(declare-fun b!4924717 () Bool)

(declare-fun lt!2025715 () tuple2!61168)

(assert (=> b!4924717 (= lt!2025715 (splitAtIndex!101 (t!367249 (list!17947 input!5492)) (- 0 1)))))

(declare-fun e!3077191 () tuple2!61168)

(assert (=> b!4924717 (= e!3077191 (tuple2!61169 (Cons!56685 (h!63133 (list!17947 input!5492)) (_1!33887 lt!2025715)) (_2!33887 lt!2025715)))))

(declare-fun b!4924718 () Bool)

(assert (=> b!4924718 (= e!3077192 (= (_2!33887 lt!2025716) (drop!2224 (list!17947 input!5492) 0)))))

(declare-fun b!4924719 () Bool)

(assert (=> b!4924719 (= e!3077191 (tuple2!61169 Nil!56685 (list!17947 input!5492)))))

(declare-fun b!4924720 () Bool)

(assert (=> b!4924720 (= e!3077190 e!3077191)))

(declare-fun c!838539 () Bool)

(assert (=> b!4924720 (= c!838539 (<= 0 0))))

(declare-fun b!4924721 () Bool)

(assert (=> b!4924721 (= e!3077190 (tuple2!61169 Nil!56685 Nil!56685))))

(assert (= (and d!1584591 c!838540) b!4924721))

(assert (= (and d!1584591 (not c!838540)) b!4924720))

(assert (= (and b!4924720 c!838539) b!4924719))

(assert (= (and b!4924720 (not c!838539)) b!4924717))

(assert (= (and d!1584591 res!2102199) b!4924716))

(assert (= (and b!4924716 res!2102200) b!4924718))

(declare-fun m!5941372 () Bool)

(assert (=> d!1584591 m!5941372))

(assert (=> b!4924716 m!5937560))

(declare-fun m!5941376 () Bool)

(assert (=> b!4924716 m!5941376))

(declare-fun m!5941378 () Bool)

(assert (=> b!4924717 m!5941378))

(assert (=> b!4924718 m!5937560))

(declare-fun m!5941380 () Bool)

(assert (=> b!4924718 m!5941380))

(assert (=> b!4923323 d!1584591))

(assert (=> b!4923323 d!1583377))

(assert (=> bm!343006 d!1583565))

(declare-fun b!4924728 () Bool)

(declare-fun res!2102203 () Bool)

(declare-fun e!3077195 () Bool)

(assert (=> b!4924728 (=> (not res!2102203) (not e!3077195))))

(declare-fun lt!2025718 () List!56809)

(assert (=> b!4924728 (= res!2102203 (= (size!37476 lt!2025718) (+ (size!37476 (ite c!838077 (_2!33887 lt!2025154) lt!2025151)) (size!37476 (ite c!838077 lt!2025144 (_1!33887 lt!2025146))))))))

(declare-fun e!3077196 () List!56809)

(declare-fun b!4924726 () Bool)

(assert (=> b!4924726 (= e!3077196 (ite c!838077 lt!2025144 (_1!33887 lt!2025146)))))

(declare-fun b!4924727 () Bool)

(assert (=> b!4924727 (= e!3077196 (Cons!56685 (h!63133 (ite c!838077 (_2!33887 lt!2025154) lt!2025151)) (++!12322 (t!367249 (ite c!838077 (_2!33887 lt!2025154) lt!2025151)) (ite c!838077 lt!2025144 (_1!33887 lt!2025146)))))))

(declare-fun d!1584595 () Bool)

(assert (=> d!1584595 e!3077195))

(declare-fun res!2102204 () Bool)

(assert (=> d!1584595 (=> (not res!2102204) (not e!3077195))))

(assert (=> d!1584595 (= res!2102204 (= (content!10066 lt!2025718) ((_ map or) (content!10066 (ite c!838077 (_2!33887 lt!2025154) lt!2025151)) (content!10066 (ite c!838077 lt!2025144 (_1!33887 lt!2025146))))))))

(assert (=> d!1584595 (= lt!2025718 e!3077196)))

(declare-fun c!838542 () Bool)

(assert (=> d!1584595 (= c!838542 ((_ is Nil!56685) (ite c!838077 (_2!33887 lt!2025154) lt!2025151)))))

(assert (=> d!1584595 (= (++!12322 (ite c!838077 (_2!33887 lt!2025154) lt!2025151) (ite c!838077 lt!2025144 (_1!33887 lt!2025146))) lt!2025718)))

(declare-fun b!4924729 () Bool)

(assert (=> b!4924729 (= e!3077195 (or (not (= (ite c!838077 lt!2025144 (_1!33887 lt!2025146)) Nil!56685)) (= lt!2025718 (ite c!838077 (_2!33887 lt!2025154) lt!2025151))))))

(assert (= (and d!1584595 c!838542) b!4924726))

(assert (= (and d!1584595 (not c!838542)) b!4924727))

(assert (= (and d!1584595 res!2102204) b!4924728))

(assert (= (and b!4924728 res!2102203) b!4924729))

(declare-fun m!5941386 () Bool)

(assert (=> b!4924728 m!5941386))

(declare-fun m!5941388 () Bool)

(assert (=> b!4924728 m!5941388))

(declare-fun m!5941390 () Bool)

(assert (=> b!4924728 m!5941390))

(declare-fun m!5941392 () Bool)

(assert (=> b!4924727 m!5941392))

(declare-fun m!5941394 () Bool)

(assert (=> d!1584595 m!5941394))

(declare-fun m!5941396 () Bool)

(assert (=> d!1584595 m!5941396))

(declare-fun m!5941398 () Bool)

(assert (=> d!1584595 m!5941398))

(assert (=> bm!343076 d!1584595))

(assert (=> b!4923052 d!1583377))

(declare-fun d!1584599 () Bool)

(assert (=> d!1584599 (and (= lt!2024712 Nil!56685) (= lt!2024718 lt!2024324))))

(assert (=> d!1584599 true))

(declare-fun _$50!404 () Unit!147131)

(assert (=> d!1584599 (= (choose!36031 lt!2024712 lt!2024718 Nil!56685 lt!2024324) _$50!404)))

(assert (=> d!1583661 d!1584599))

(declare-fun b!4924734 () Bool)

(declare-fun res!2102205 () Bool)

(declare-fun e!3077198 () Bool)

(assert (=> b!4924734 (=> (not res!2102205) (not e!3077198))))

(declare-fun lt!2025727 () List!56809)

(assert (=> b!4924734 (= res!2102205 (= (size!37476 lt!2025727) (+ (size!37476 lt!2024712) (size!37476 lt!2024718))))))

(declare-fun b!4924732 () Bool)

(declare-fun e!3077199 () List!56809)

(assert (=> b!4924732 (= e!3077199 lt!2024718)))

(declare-fun b!4924733 () Bool)

(assert (=> b!4924733 (= e!3077199 (Cons!56685 (h!63133 lt!2024712) (++!12322 (t!367249 lt!2024712) lt!2024718)))))

(declare-fun d!1584601 () Bool)

(assert (=> d!1584601 e!3077198))

(declare-fun res!2102206 () Bool)

(assert (=> d!1584601 (=> (not res!2102206) (not e!3077198))))

(assert (=> d!1584601 (= res!2102206 (= (content!10066 lt!2025727) ((_ map or) (content!10066 lt!2024712) (content!10066 lt!2024718))))))

(assert (=> d!1584601 (= lt!2025727 e!3077199)))

(declare-fun c!838544 () Bool)

(assert (=> d!1584601 (= c!838544 ((_ is Nil!56685) lt!2024712))))

(assert (=> d!1584601 (= (++!12322 lt!2024712 lt!2024718) lt!2025727)))

(declare-fun b!4924735 () Bool)

(assert (=> b!4924735 (= e!3077198 (or (not (= lt!2024718 Nil!56685)) (= lt!2025727 lt!2024712)))))

(assert (= (and d!1584601 c!838544) b!4924732))

(assert (= (and d!1584601 (not c!838544)) b!4924733))

(assert (= (and d!1584601 res!2102206) b!4924734))

(assert (= (and b!4924734 res!2102205) b!4924735))

(declare-fun m!5941400 () Bool)

(assert (=> b!4924734 m!5941400))

(declare-fun m!5941402 () Bool)

(assert (=> b!4924734 m!5941402))

(declare-fun m!5941404 () Bool)

(assert (=> b!4924734 m!5941404))

(declare-fun m!5941406 () Bool)

(assert (=> b!4924733 m!5941406))

(declare-fun m!5941408 () Bool)

(assert (=> d!1584601 m!5941408))

(declare-fun m!5941410 () Bool)

(assert (=> d!1584601 m!5941410))

(declare-fun m!5941412 () Bool)

(assert (=> d!1584601 m!5941412))

(assert (=> d!1583661 d!1584601))

(assert (=> d!1583661 d!1583417))

(declare-fun b!4924738 () Bool)

(declare-fun res!2102207 () Bool)

(declare-fun e!3077200 () Bool)

(assert (=> b!4924738 (=> (not res!2102207) (not e!3077200))))

(declare-fun lt!2025728 () List!56809)

(assert (=> b!4924738 (= res!2102207 (= (size!37476 lt!2025728) (+ (size!37476 (t!367249 lt!2024329)) (size!37476 lt!2024323))))))

(declare-fun b!4924736 () Bool)

(declare-fun e!3077201 () List!56809)

(assert (=> b!4924736 (= e!3077201 lt!2024323)))

(declare-fun b!4924737 () Bool)

(assert (=> b!4924737 (= e!3077201 (Cons!56685 (h!63133 (t!367249 lt!2024329)) (++!12322 (t!367249 (t!367249 lt!2024329)) lt!2024323)))))

(declare-fun d!1584603 () Bool)

(assert (=> d!1584603 e!3077200))

(declare-fun res!2102208 () Bool)

(assert (=> d!1584603 (=> (not res!2102208) (not e!3077200))))

(assert (=> d!1584603 (= res!2102208 (= (content!10066 lt!2025728) ((_ map or) (content!10066 (t!367249 lt!2024329)) (content!10066 lt!2024323))))))

(assert (=> d!1584603 (= lt!2025728 e!3077201)))

(declare-fun c!838545 () Bool)

(assert (=> d!1584603 (= c!838545 ((_ is Nil!56685) (t!367249 lt!2024329)))))

(assert (=> d!1584603 (= (++!12322 (t!367249 lt!2024329) lt!2024323) lt!2025728)))

(declare-fun b!4924739 () Bool)

(assert (=> b!4924739 (= e!3077200 (or (not (= lt!2024323 Nil!56685)) (= lt!2025728 (t!367249 lt!2024329))))))

(assert (= (and d!1584603 c!838545) b!4924736))

(assert (= (and d!1584603 (not c!838545)) b!4924737))

(assert (= (and d!1584603 res!2102208) b!4924738))

(assert (= (and b!4924738 res!2102207) b!4924739))

(declare-fun m!5941414 () Bool)

(assert (=> b!4924738 m!5941414))

(assert (=> b!4924738 m!5941098))

(assert (=> b!4924738 m!5938376))

(declare-fun m!5941416 () Bool)

(assert (=> b!4924737 m!5941416))

(declare-fun m!5941418 () Bool)

(assert (=> d!1584603 m!5941418))

(assert (=> d!1584603 m!5940924))

(assert (=> d!1584603 m!5938384))

(assert (=> b!4922945 d!1584603))

(declare-fun d!1584605 () Bool)

(assert (=> d!1584605 (= (isEmpty!30566 (_1!33887 lt!2024900)) ((_ is Nil!56685) (_1!33887 lt!2024900)))))

(assert (=> b!4922859 d!1584605))

(declare-fun b!4924742 () Bool)

(declare-fun res!2102209 () Bool)

(declare-fun e!3077202 () Bool)

(assert (=> b!4924742 (=> (not res!2102209) (not e!3077202))))

(declare-fun lt!2025729 () List!56809)

(assert (=> b!4924742 (= res!2102209 (= (size!37476 lt!2025729) (+ (size!37476 (_1!33887 lt!2025225)) (size!37476 (_2!33887 lt!2025225)))))))

(declare-fun b!4924740 () Bool)

(declare-fun e!3077203 () List!56809)

(assert (=> b!4924740 (= e!3077203 (_2!33887 lt!2025225))))

(declare-fun b!4924741 () Bool)

(assert (=> b!4924741 (= e!3077203 (Cons!56685 (h!63133 (_1!33887 lt!2025225)) (++!12322 (t!367249 (_1!33887 lt!2025225)) (_2!33887 lt!2025225))))))

(declare-fun d!1584607 () Bool)

(assert (=> d!1584607 e!3077202))

(declare-fun res!2102210 () Bool)

(assert (=> d!1584607 (=> (not res!2102210) (not e!3077202))))

(assert (=> d!1584607 (= res!2102210 (= (content!10066 lt!2025729) ((_ map or) (content!10066 (_1!33887 lt!2025225)) (content!10066 (_2!33887 lt!2025225)))))))

(assert (=> d!1584607 (= lt!2025729 e!3077203)))

(declare-fun c!838546 () Bool)

(assert (=> d!1584607 (= c!838546 ((_ is Nil!56685) (_1!33887 lt!2025225)))))

(assert (=> d!1584607 (= (++!12322 (_1!33887 lt!2025225) (_2!33887 lt!2025225)) lt!2025729)))

(declare-fun b!4924743 () Bool)

(assert (=> b!4924743 (= e!3077202 (or (not (= (_2!33887 lt!2025225) Nil!56685)) (= lt!2025729 (_1!33887 lt!2025225))))))

(assert (= (and d!1584607 c!838546) b!4924740))

(assert (= (and d!1584607 (not c!838546)) b!4924741))

(assert (= (and d!1584607 res!2102210) b!4924742))

(assert (= (and b!4924742 res!2102209) b!4924743))

(declare-fun m!5941420 () Bool)

(assert (=> b!4924742 m!5941420))

(declare-fun m!5941422 () Bool)

(assert (=> b!4924742 m!5941422))

(declare-fun m!5941424 () Bool)

(assert (=> b!4924742 m!5941424))

(declare-fun m!5941426 () Bool)

(assert (=> b!4924741 m!5941426))

(declare-fun m!5941428 () Bool)

(assert (=> d!1584607 m!5941428))

(declare-fun m!5941430 () Bool)

(assert (=> d!1584607 m!5941430))

(declare-fun m!5941432 () Bool)

(assert (=> d!1584607 m!5941432))

(assert (=> d!1583701 d!1584607))

(declare-fun d!1584609 () Bool)

(declare-fun e!3077204 () Bool)

(assert (=> d!1584609 e!3077204))

(declare-fun res!2102213 () Bool)

(assert (=> d!1584609 (=> res!2102213 e!3077204)))

(declare-fun lt!2025730 () Bool)

(assert (=> d!1584609 (= res!2102213 (not lt!2025730))))

(declare-fun e!3077205 () Bool)

(assert (=> d!1584609 (= lt!2025730 e!3077205)))

(declare-fun res!2102212 () Bool)

(assert (=> d!1584609 (=> res!2102212 e!3077205)))

(assert (=> d!1584609 (= res!2102212 ((_ is Nil!56685) (tail!9667 (ite c!837884 lt!2024726 lt!2024713))))))

(assert (=> d!1584609 (= (isPrefix!4961 (tail!9667 (ite c!837884 lt!2024726 lt!2024713)) (tail!9667 (ite c!837884 lt!2024744 lt!2024750))) lt!2025730)))

(declare-fun b!4924746 () Bool)

(declare-fun e!3077206 () Bool)

(assert (=> b!4924746 (= e!3077206 (isPrefix!4961 (tail!9667 (tail!9667 (ite c!837884 lt!2024726 lt!2024713))) (tail!9667 (tail!9667 (ite c!837884 lt!2024744 lt!2024750)))))))

(declare-fun b!4924745 () Bool)

(declare-fun res!2102214 () Bool)

(assert (=> b!4924745 (=> (not res!2102214) (not e!3077206))))

(assert (=> b!4924745 (= res!2102214 (= (head!10520 (tail!9667 (ite c!837884 lt!2024726 lt!2024713))) (head!10520 (tail!9667 (ite c!837884 lt!2024744 lt!2024750)))))))

(declare-fun b!4924744 () Bool)

(assert (=> b!4924744 (= e!3077205 e!3077206)))

(declare-fun res!2102211 () Bool)

(assert (=> b!4924744 (=> (not res!2102211) (not e!3077206))))

(assert (=> b!4924744 (= res!2102211 (not ((_ is Nil!56685) (tail!9667 (ite c!837884 lt!2024744 lt!2024750)))))))

(declare-fun b!4924747 () Bool)

(assert (=> b!4924747 (= e!3077204 (>= (size!37476 (tail!9667 (ite c!837884 lt!2024744 lt!2024750))) (size!37476 (tail!9667 (ite c!837884 lt!2024726 lt!2024713)))))))

(assert (= (and d!1584609 (not res!2102212)) b!4924744))

(assert (= (and b!4924744 res!2102211) b!4924745))

(assert (= (and b!4924745 res!2102214) b!4924746))

(assert (= (and d!1584609 (not res!2102213)) b!4924747))

(assert (=> b!4924746 m!5938186))

(declare-fun m!5941442 () Bool)

(assert (=> b!4924746 m!5941442))

(assert (=> b!4924746 m!5938188))

(declare-fun m!5941446 () Bool)

(assert (=> b!4924746 m!5941446))

(assert (=> b!4924746 m!5941442))

(assert (=> b!4924746 m!5941446))

(declare-fun m!5941452 () Bool)

(assert (=> b!4924746 m!5941452))

(assert (=> b!4924745 m!5938186))

(declare-fun m!5941454 () Bool)

(assert (=> b!4924745 m!5941454))

(assert (=> b!4924745 m!5938188))

(declare-fun m!5941456 () Bool)

(assert (=> b!4924745 m!5941456))

(assert (=> b!4924747 m!5938188))

(declare-fun m!5941458 () Bool)

(assert (=> b!4924747 m!5941458))

(assert (=> b!4924747 m!5938186))

(declare-fun m!5941460 () Bool)

(assert (=> b!4924747 m!5941460))

(assert (=> b!4922894 d!1584609))

(declare-fun d!1584613 () Bool)

(assert (=> d!1584613 (= (tail!9667 (ite c!837884 lt!2024726 lt!2024713)) (t!367249 (ite c!837884 lt!2024726 lt!2024713)))))

(assert (=> b!4922894 d!1584613))

(declare-fun d!1584615 () Bool)

(assert (=> d!1584615 (= (tail!9667 (ite c!837884 lt!2024744 lt!2024750)) (t!367249 (ite c!837884 lt!2024744 lt!2024750)))))

(assert (=> b!4922894 d!1584615))

(declare-fun d!1584617 () Bool)

(declare-fun lt!2025732 () Bool)

(assert (=> d!1584617 (= lt!2025732 (isEmpty!30566 (list!17949 (right!41660 (right!41660 (c!837809 input!5492))))))))

(assert (=> d!1584617 (= lt!2025732 (= (size!37478 (right!41660 (right!41660 (c!837809 input!5492)))) 0))))

(assert (=> d!1584617 (= (isEmpty!30568 (right!41660 (right!41660 (c!837809 input!5492)))) lt!2025732)))

(declare-fun bs!1179504 () Bool)

(assert (= bs!1179504 d!1584617))

(assert (=> bs!1179504 m!5939298))

(assert (=> bs!1179504 m!5939298))

(declare-fun m!5941464 () Bool)

(assert (=> bs!1179504 m!5941464))

(assert (=> bs!1179504 m!5939198))

(assert (=> b!4922981 d!1584617))

(assert (=> b!4923384 d!1583803))

(assert (=> b!4923261 d!1583621))

(declare-fun d!1584619 () Bool)

(declare-fun lt!2025733 () Int)

(assert (=> d!1584619 (>= lt!2025733 0)))

(declare-fun e!3077209 () Int)

(assert (=> d!1584619 (= lt!2025733 e!3077209)))

(declare-fun c!838548 () Bool)

(assert (=> d!1584619 (= c!838548 ((_ is Nil!56685) (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))))

(assert (=> d!1584619 (= (size!37476 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))) lt!2025733)))

(declare-fun b!4924752 () Bool)

(assert (=> b!4924752 (= e!3077209 0)))

(declare-fun b!4924753 () Bool)

(assert (=> b!4924753 (= e!3077209 (+ 1 (size!37476 (t!367249 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024324 Nil!56685)) Nil!56685))))))))

(assert (= (and d!1584619 c!838548) b!4924752))

(assert (= (and d!1584619 (not c!838548)) b!4924753))

(declare-fun m!5941478 () Bool)

(assert (=> b!4924753 m!5941478))

(assert (=> b!4923261 d!1584619))

(assert (=> b!4923057 d!1584451))

(declare-fun d!1584625 () Bool)

(declare-fun lt!2025735 () C!26956)

(assert (=> d!1584625 (contains!19454 lt!2025024 lt!2025735)))

(declare-fun e!3077211 () C!26956)

(assert (=> d!1584625 (= lt!2025735 e!3077211)))

(declare-fun c!838550 () Bool)

(assert (=> d!1584625 (= c!838550 (= (+ 0 1) 0))))

(declare-fun e!3077212 () Bool)

(assert (=> d!1584625 e!3077212))

(declare-fun res!2102217 () Bool)

(assert (=> d!1584625 (=> (not res!2102217) (not e!3077212))))

(assert (=> d!1584625 (= res!2102217 (<= 0 (+ 0 1)))))

(assert (=> d!1584625 (= (apply!13656 lt!2025024 (+ 0 1)) lt!2025735)))

(declare-fun b!4924756 () Bool)

(assert (=> b!4924756 (= e!3077212 (< (+ 0 1) (size!37476 lt!2025024)))))

(declare-fun b!4924757 () Bool)

(assert (=> b!4924757 (= e!3077211 (head!10520 lt!2025024))))

(declare-fun b!4924758 () Bool)

(assert (=> b!4924758 (= e!3077211 (apply!13656 (tail!9667 lt!2025024) (- (+ 0 1) 1)))))

(assert (= (and d!1584625 res!2102217) b!4924756))

(assert (= (and d!1584625 c!838550) b!4924757))

(assert (= (and d!1584625 (not c!838550)) b!4924758))

(declare-fun m!5941484 () Bool)

(assert (=> d!1584625 m!5941484))

(declare-fun m!5941486 () Bool)

(assert (=> b!4924756 m!5941486))

(declare-fun m!5941488 () Bool)

(assert (=> b!4924757 m!5941488))

(declare-fun m!5941490 () Bool)

(assert (=> b!4924758 m!5941490))

(assert (=> b!4924758 m!5941490))

(declare-fun m!5941492 () Bool)

(assert (=> b!4924758 m!5941492))

(assert (=> b!4923057 d!1584625))

(assert (=> b!4923057 d!1584449))

(declare-fun d!1584631 () Bool)

(assert (=> d!1584631 (= (head!10520 (drop!2224 lt!2025024 (+ 0 1))) (h!63133 (drop!2224 lt!2025024 (+ 0 1))))))

(assert (=> b!4923057 d!1584631))

(declare-fun d!1584633 () Bool)

(assert (=> d!1584633 (= (++!12322 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685)) lt!2025048) lt!2025040)))

(declare-fun lt!2025738 () Unit!147131)

(assert (=> d!1584633 (= lt!2025738 (choose!36042 call!342986 lt!2025050 lt!2025048 lt!2025040))))

(assert (=> d!1584633 (= (++!12322 call!342986 (Cons!56685 lt!2025050 lt!2025048)) lt!2025040)))

(assert (=> d!1584633 (= (lemmaMoveElementToOtherListKeepsConcatEq!1391 call!342986 lt!2025050 lt!2025048 lt!2025040) lt!2025738)))

(declare-fun bs!1179506 () Bool)

(assert (= bs!1179506 d!1584633))

(assert (=> bs!1179506 m!5938572))

(assert (=> bs!1179506 m!5938572))

(assert (=> bs!1179506 m!5938580))

(declare-fun m!5941496 () Bool)

(assert (=> bs!1179506 m!5941496))

(declare-fun m!5941498 () Bool)

(assert (=> bs!1179506 m!5941498))

(assert (=> b!4923057 d!1584633))

(declare-fun b!4924767 () Bool)

(declare-fun res!2102222 () Bool)

(declare-fun e!3077217 () Bool)

(assert (=> b!4924767 (=> (not res!2102222) (not e!3077217))))

(declare-fun lt!2025739 () List!56809)

(assert (=> b!4924767 (= res!2102222 (= (size!37476 lt!2025739) (+ (size!37476 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685))) (size!37476 lt!2025048))))))

(declare-fun b!4924765 () Bool)

(declare-fun e!3077218 () List!56809)

(assert (=> b!4924765 (= e!3077218 lt!2025048)))

(declare-fun b!4924766 () Bool)

(assert (=> b!4924766 (= e!3077218 (Cons!56685 (h!63133 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685))) (++!12322 (t!367249 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685))) lt!2025048)))))

(declare-fun d!1584637 () Bool)

(assert (=> d!1584637 e!3077217))

(declare-fun res!2102223 () Bool)

(assert (=> d!1584637 (=> (not res!2102223) (not e!3077217))))

(assert (=> d!1584637 (= res!2102223 (= (content!10066 lt!2025739) ((_ map or) (content!10066 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685))) (content!10066 lt!2025048))))))

(assert (=> d!1584637 (= lt!2025739 e!3077218)))

(declare-fun c!838552 () Bool)

(assert (=> d!1584637 (= c!838552 ((_ is Nil!56685) (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685))))))

(assert (=> d!1584637 (= (++!12322 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685)) lt!2025048) lt!2025739)))

(declare-fun b!4924768 () Bool)

(assert (=> b!4924768 (= e!3077217 (or (not (= lt!2025048 Nil!56685)) (= lt!2025739 (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685)))))))

(assert (= (and d!1584637 c!838552) b!4924765))

(assert (= (and d!1584637 (not c!838552)) b!4924766))

(assert (= (and d!1584637 res!2102223) b!4924767))

(assert (= (and b!4924767 res!2102222) b!4924768))

(declare-fun m!5941500 () Bool)

(assert (=> b!4924767 m!5941500))

(assert (=> b!4924767 m!5938572))

(declare-fun m!5941502 () Bool)

(assert (=> b!4924767 m!5941502))

(declare-fun m!5941504 () Bool)

(assert (=> b!4924767 m!5941504))

(declare-fun m!5941506 () Bool)

(assert (=> b!4924766 m!5941506))

(declare-fun m!5941508 () Bool)

(assert (=> d!1584637 m!5941508))

(assert (=> d!1584637 m!5938572))

(declare-fun m!5941510 () Bool)

(assert (=> d!1584637 m!5941510))

(declare-fun m!5941512 () Bool)

(assert (=> d!1584637 m!5941512))

(assert (=> b!4923057 d!1584637))

(declare-fun d!1584639 () Bool)

(assert (=> d!1584639 (<= (size!37476 call!342986) (size!37476 lt!2025058))))

(declare-fun lt!2025740 () Unit!147131)

(assert (=> d!1584639 (= lt!2025740 (choose!36040 call!342986 lt!2025058))))

(assert (=> d!1584639 (isPrefix!4961 call!342986 lt!2025058)))

(assert (=> d!1584639 (= (lemmaIsPrefixThenSmallerEqSize!685 call!342986 lt!2025058) lt!2025740)))

(declare-fun bs!1179507 () Bool)

(assert (= bs!1179507 d!1584639))

(assert (=> bs!1179507 m!5938554))

(assert (=> bs!1179507 m!5938562))

(declare-fun m!5941514 () Bool)

(assert (=> bs!1179507 m!5941514))

(declare-fun m!5941516 () Bool)

(assert (=> bs!1179507 m!5941516))

(assert (=> b!4923057 d!1584639))

(declare-fun d!1584641 () Bool)

(declare-fun e!3077219 () Bool)

(assert (=> d!1584641 e!3077219))

(declare-fun res!2102225 () Bool)

(assert (=> d!1584641 (=> (not res!2102225) (not e!3077219))))

(declare-fun lt!2025742 () tuple2!61170)

(assert (=> d!1584641 (= res!2102225 (isBalanced!4085 (c!837809 (_1!33888 lt!2025742))))))

(declare-fun lt!2025741 () tuple2!61174)

(assert (=> d!1584641 (= lt!2025742 (tuple2!61171 (BalanceConc!29175 (_1!33890 lt!2025741)) (BalanceConc!29175 (_2!33890 lt!2025741))))))

(assert (=> d!1584641 (= lt!2025741 (splitAt!271 (c!837809 input!5492) (+ 0 1)))))

(assert (=> d!1584641 (isBalanced!4085 (c!837809 input!5492))))

(assert (=> d!1584641 (= (splitAt!269 input!5492 (+ 0 1)) lt!2025742)))

(declare-fun b!4924769 () Bool)

(declare-fun res!2102224 () Bool)

(assert (=> b!4924769 (=> (not res!2102224) (not e!3077219))))

(assert (=> b!4924769 (= res!2102224 (isBalanced!4085 (c!837809 (_2!33888 lt!2025742))))))

(declare-fun b!4924770 () Bool)

(assert (=> b!4924770 (= e!3077219 (= (tuple2!61169 (list!17947 (_1!33888 lt!2025742)) (list!17947 (_2!33888 lt!2025742))) (splitAtIndex!101 (list!17947 input!5492) (+ 0 1))))))

(assert (= (and d!1584641 res!2102225) b!4924769))

(assert (= (and b!4924769 res!2102224) b!4924770))

(declare-fun m!5941518 () Bool)

(assert (=> d!1584641 m!5941518))

(declare-fun m!5941520 () Bool)

(assert (=> d!1584641 m!5941520))

(assert (=> d!1584641 m!5937556))

(declare-fun m!5941522 () Bool)

(assert (=> b!4924769 m!5941522))

(declare-fun m!5941524 () Bool)

(assert (=> b!4924770 m!5941524))

(declare-fun m!5941526 () Bool)

(assert (=> b!4924770 m!5941526))

(assert (=> b!4924770 m!5937560))

(assert (=> b!4924770 m!5937560))

(declare-fun m!5941528 () Bool)

(assert (=> b!4924770 m!5941528))

(assert (=> b!4923057 d!1584641))

(assert (=> b!4923057 d!1583351))

(declare-fun d!1584643 () Bool)

(declare-fun e!3077220 () Bool)

(assert (=> d!1584643 e!3077220))

(declare-fun res!2102228 () Bool)

(assert (=> d!1584643 (=> res!2102228 e!3077220)))

(declare-fun lt!2025743 () Bool)

(assert (=> d!1584643 (= res!2102228 (not lt!2025743))))

(declare-fun e!3077221 () Bool)

(assert (=> d!1584643 (= lt!2025743 e!3077221)))

(declare-fun res!2102227 () Bool)

(assert (=> d!1584643 (=> res!2102227 e!3077221)))

(assert (=> d!1584643 (= res!2102227 ((_ is Nil!56685) (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685))))))

(assert (=> d!1584643 (= (isPrefix!4961 (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685)) lt!2025043) lt!2025743)))

(declare-fun b!4924773 () Bool)

(declare-fun e!3077222 () Bool)

(assert (=> b!4924773 (= e!3077222 (isPrefix!4961 (tail!9667 (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685))) (tail!9667 lt!2025043)))))

(declare-fun b!4924772 () Bool)

(declare-fun res!2102229 () Bool)

(assert (=> b!4924772 (=> (not res!2102229) (not e!3077222))))

(assert (=> b!4924772 (= res!2102229 (= (head!10520 (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685))) (head!10520 lt!2025043)))))

(declare-fun b!4924771 () Bool)

(assert (=> b!4924771 (= e!3077221 e!3077222)))

(declare-fun res!2102226 () Bool)

(assert (=> b!4924771 (=> (not res!2102226) (not e!3077222))))

(assert (=> b!4924771 (= res!2102226 (not ((_ is Nil!56685) lt!2025043)))))

(declare-fun b!4924774 () Bool)

(assert (=> b!4924774 (= e!3077220 (>= (size!37476 lt!2025043) (size!37476 (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685)))))))

(assert (= (and d!1584643 (not res!2102227)) b!4924771))

(assert (= (and b!4924771 res!2102226) b!4924772))

(assert (= (and b!4924772 res!2102229) b!4924773))

(assert (= (and d!1584643 (not res!2102228)) b!4924774))

(assert (=> b!4924773 m!5938556))

(declare-fun m!5941530 () Bool)

(assert (=> b!4924773 m!5941530))

(declare-fun m!5941532 () Bool)

(assert (=> b!4924773 m!5941532))

(assert (=> b!4924773 m!5941530))

(assert (=> b!4924773 m!5941532))

(declare-fun m!5941534 () Bool)

(assert (=> b!4924773 m!5941534))

(assert (=> b!4924772 m!5938556))

(declare-fun m!5941536 () Bool)

(assert (=> b!4924772 m!5941536))

(declare-fun m!5941538 () Bool)

(assert (=> b!4924772 m!5941538))

(declare-fun m!5941540 () Bool)

(assert (=> b!4924774 m!5941540))

(assert (=> b!4924774 m!5938556))

(declare-fun m!5941542 () Bool)

(assert (=> b!4924774 m!5941542))

(assert (=> b!4923057 d!1584643))

(declare-fun b!4924781 () Bool)

(declare-fun res!2102232 () Bool)

(declare-fun e!3077225 () Bool)

(assert (=> b!4924781 (=> (not res!2102232) (not e!3077225))))

(declare-fun lt!2025745 () List!56809)

(assert (=> b!4924781 (= res!2102232 (= (size!37476 lt!2025745) (+ (size!37476 call!342986) (size!37476 (Cons!56685 lt!2025050 Nil!56685)))))))

(declare-fun b!4924779 () Bool)

(declare-fun e!3077226 () List!56809)

(assert (=> b!4924779 (= e!3077226 (Cons!56685 lt!2025050 Nil!56685))))

(declare-fun b!4924780 () Bool)

(assert (=> b!4924780 (= e!3077226 (Cons!56685 (h!63133 call!342986) (++!12322 (t!367249 call!342986) (Cons!56685 lt!2025050 Nil!56685))))))

(declare-fun d!1584647 () Bool)

(assert (=> d!1584647 e!3077225))

(declare-fun res!2102233 () Bool)

(assert (=> d!1584647 (=> (not res!2102233) (not e!3077225))))

(assert (=> d!1584647 (= res!2102233 (= (content!10066 lt!2025745) ((_ map or) (content!10066 call!342986) (content!10066 (Cons!56685 lt!2025050 Nil!56685)))))))

(assert (=> d!1584647 (= lt!2025745 e!3077226)))

(declare-fun c!838554 () Bool)

(assert (=> d!1584647 (= c!838554 ((_ is Nil!56685) call!342986))))

(assert (=> d!1584647 (= (++!12322 call!342986 (Cons!56685 lt!2025050 Nil!56685)) lt!2025745)))

(declare-fun b!4924782 () Bool)

(assert (=> b!4924782 (= e!3077225 (or (not (= (Cons!56685 lt!2025050 Nil!56685) Nil!56685)) (= lt!2025745 call!342986)))))

(assert (= (and d!1584647 c!838554) b!4924779))

(assert (= (and d!1584647 (not c!838554)) b!4924780))

(assert (= (and d!1584647 res!2102233) b!4924781))

(assert (= (and b!4924781 res!2102232) b!4924782))

(declare-fun m!5941552 () Bool)

(assert (=> b!4924781 m!5941552))

(assert (=> b!4924781 m!5938554))

(declare-fun m!5941556 () Bool)

(assert (=> b!4924781 m!5941556))

(declare-fun m!5941560 () Bool)

(assert (=> b!4924780 m!5941560))

(declare-fun m!5941564 () Bool)

(assert (=> d!1584647 m!5941564))

(assert (=> d!1584647 m!5940346))

(declare-fun m!5941566 () Bool)

(assert (=> d!1584647 m!5941566))

(assert (=> b!4923057 d!1584647))

(declare-fun d!1584651 () Bool)

(assert (=> d!1584651 (= (list!17947 (_2!33888 lt!2025055)) (list!17949 (c!837809 (_2!33888 lt!2025055))))))

(declare-fun bs!1179509 () Bool)

(assert (= bs!1179509 d!1584651))

(declare-fun m!5941568 () Bool)

(assert (=> bs!1179509 m!5941568))

(assert (=> b!4923057 d!1584651))

(declare-fun d!1584653 () Bool)

(assert (=> d!1584653 (= (head!10520 (getSuffix!2949 lt!2025043 call!342986)) (h!63133 (getSuffix!2949 lt!2025043 call!342986)))))

(assert (=> b!4923057 d!1584653))

(declare-fun d!1584655 () Bool)

(declare-fun lt!2025746 () Int)

(assert (=> d!1584655 (>= lt!2025746 0)))

(declare-fun e!3077229 () Int)

(assert (=> d!1584655 (= lt!2025746 e!3077229)))

(declare-fun c!838557 () Bool)

(assert (=> d!1584655 (= c!838557 ((_ is Nil!56685) call!342986))))

(assert (=> d!1584655 (= (size!37476 call!342986) lt!2025746)))

(declare-fun b!4924787 () Bool)

(assert (=> b!4924787 (= e!3077229 0)))

(declare-fun b!4924788 () Bool)

(assert (=> b!4924788 (= e!3077229 (+ 1 (size!37476 (t!367249 call!342986))))))

(assert (= (and d!1584655 c!838557) b!4924787))

(assert (= (and d!1584655 (not c!838557)) b!4924788))

(declare-fun m!5941578 () Bool)

(assert (=> b!4924788 m!5941578))

(assert (=> b!4923057 d!1584655))

(declare-fun d!1584659 () Bool)

(declare-fun lt!2025747 () List!56809)

(assert (=> d!1584659 (= (++!12322 call!342986 lt!2025747) lt!2025043)))

(declare-fun e!3077232 () List!56809)

(assert (=> d!1584659 (= lt!2025747 e!3077232)))

(declare-fun c!838560 () Bool)

(assert (=> d!1584659 (= c!838560 ((_ is Cons!56685) call!342986))))

(assert (=> d!1584659 (>= (size!37476 lt!2025043) (size!37476 call!342986))))

(assert (=> d!1584659 (= (getSuffix!2949 lt!2025043 call!342986) lt!2025747)))

(declare-fun b!4924793 () Bool)

(assert (=> b!4924793 (= e!3077232 (getSuffix!2949 (tail!9667 lt!2025043) (t!367249 call!342986)))))

(declare-fun b!4924794 () Bool)

(assert (=> b!4924794 (= e!3077232 lt!2025043)))

(assert (= (and d!1584659 c!838560) b!4924793))

(assert (= (and d!1584659 (not c!838560)) b!4924794))

(declare-fun m!5941584 () Bool)

(assert (=> d!1584659 m!5941584))

(assert (=> d!1584659 m!5941540))

(assert (=> d!1584659 m!5938554))

(assert (=> b!4924793 m!5941532))

(assert (=> b!4924793 m!5941532))

(declare-fun m!5941590 () Bool)

(assert (=> b!4924793 m!5941590))

(assert (=> b!4923057 d!1584659))

(declare-fun b!4924803 () Bool)

(declare-fun res!2102236 () Bool)

(declare-fun e!3077236 () Bool)

(assert (=> b!4924803 (=> (not res!2102236) (not e!3077236))))

(declare-fun lt!2025750 () List!56809)

(assert (=> b!4924803 (= res!2102236 (= (size!37476 lt!2025750) (+ (size!37476 call!342986) (size!37476 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685)))))))

(declare-fun b!4924801 () Bool)

(declare-fun e!3077237 () List!56809)

(assert (=> b!4924801 (= e!3077237 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685))))

(declare-fun b!4924802 () Bool)

(assert (=> b!4924802 (= e!3077237 (Cons!56685 (h!63133 call!342986) (++!12322 (t!367249 call!342986) (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685))))))

(declare-fun d!1584663 () Bool)

(assert (=> d!1584663 e!3077236))

(declare-fun res!2102237 () Bool)

(assert (=> d!1584663 (=> (not res!2102237) (not e!3077236))))

(assert (=> d!1584663 (= res!2102237 (= (content!10066 lt!2025750) ((_ map or) (content!10066 call!342986) (content!10066 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685)))))))

(assert (=> d!1584663 (= lt!2025750 e!3077237)))

(declare-fun c!838563 () Bool)

(assert (=> d!1584663 (= c!838563 ((_ is Nil!56685) call!342986))))

(assert (=> d!1584663 (= (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685)) lt!2025750)))

(declare-fun b!4924804 () Bool)

(assert (=> b!4924804 (= e!3077236 (or (not (= (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685) Nil!56685)) (= lt!2025750 call!342986)))))

(assert (= (and d!1584663 c!838563) b!4924801))

(assert (= (and d!1584663 (not c!838563)) b!4924802))

(assert (= (and d!1584663 res!2102237) b!4924803))

(assert (= (and b!4924803 res!2102236) b!4924804))

(declare-fun m!5941592 () Bool)

(assert (=> b!4924803 m!5941592))

(assert (=> b!4924803 m!5938554))

(declare-fun m!5941594 () Bool)

(assert (=> b!4924803 m!5941594))

(declare-fun m!5941596 () Bool)

(assert (=> b!4924802 m!5941596))

(declare-fun m!5941598 () Bool)

(assert (=> d!1584663 m!5941598))

(assert (=> d!1584663 m!5940346))

(declare-fun m!5941602 () Bool)

(assert (=> d!1584663 m!5941602))

(assert (=> b!4923057 d!1584663))

(declare-fun d!1584665 () Bool)

(assert (=> d!1584665 (and (= lt!2025019 call!342986) (= lt!2025025 call!342990))))

(declare-fun lt!2025751 () Unit!147131)

(assert (=> d!1584665 (= lt!2025751 (choose!36031 lt!2025019 lt!2025025 call!342986 call!342990))))

(assert (=> d!1584665 (= (++!12322 lt!2025019 lt!2025025) (++!12322 call!342986 call!342990))))

(assert (=> d!1584665 (= (lemmaConcatSameAndSameSizesThenSameLists!657 lt!2025019 lt!2025025 call!342986 call!342990) lt!2025751)))

(declare-fun bs!1179510 () Bool)

(assert (= bs!1179510 d!1584665))

(declare-fun m!5941610 () Bool)

(assert (=> bs!1179510 m!5941610))

(declare-fun m!5941612 () Bool)

(assert (=> bs!1179510 m!5941612))

(assert (=> bs!1179510 m!5938604))

(assert (=> b!4923057 d!1584665))

(declare-fun d!1584669 () Bool)

(declare-fun lt!2025752 () Int)

(assert (=> d!1584669 (>= lt!2025752 0)))

(declare-fun e!3077239 () Int)

(assert (=> d!1584669 (= lt!2025752 e!3077239)))

(declare-fun c!838564 () Bool)

(assert (=> d!1584669 (= c!838564 ((_ is Nil!56685) lt!2025058))))

(assert (=> d!1584669 (= (size!37476 lt!2025058) lt!2025752)))

(declare-fun b!4924808 () Bool)

(assert (=> b!4924808 (= e!3077239 0)))

(declare-fun b!4924809 () Bool)

(assert (=> b!4924809 (= e!3077239 (+ 1 (size!37476 (t!367249 lt!2025058))))))

(assert (= (and d!1584669 c!838564) b!4924808))

(assert (= (and d!1584669 (not c!838564)) b!4924809))

(declare-fun m!5941614 () Bool)

(assert (=> b!4924809 m!5941614))

(assert (=> b!4923057 d!1584669))

(declare-fun d!1584671 () Bool)

(assert (=> d!1584671 (isPrefix!4961 (++!12322 call!342986 (Cons!56685 (head!10520 (getSuffix!2949 lt!2025043 call!342986)) Nil!56685)) lt!2025043)))

(declare-fun lt!2025753 () Unit!147131)

(assert (=> d!1584671 (= lt!2025753 (choose!36041 call!342986 lt!2025043))))

(assert (=> d!1584671 (isPrefix!4961 call!342986 lt!2025043)))

(assert (=> d!1584671 (= (lemmaAddHeadSuffixToPrefixStillPrefix!773 call!342986 lt!2025043) lt!2025753)))

(declare-fun bs!1179512 () Bool)

(assert (= bs!1179512 d!1584671))

(assert (=> bs!1179512 m!5938556))

(assert (=> bs!1179512 m!5938568))

(declare-fun m!5941620 () Bool)

(assert (=> bs!1179512 m!5941620))

(assert (=> bs!1179512 m!5938564))

(assert (=> bs!1179512 m!5938564))

(assert (=> bs!1179512 m!5938566))

(declare-fun m!5941622 () Bool)

(assert (=> bs!1179512 m!5941622))

(assert (=> bs!1179512 m!5938556))

(assert (=> b!4923057 d!1584671))

(declare-fun d!1584677 () Bool)

(assert (=> d!1584677 (= (head!10520 (drop!2224 lt!2025024 (+ 0 1))) (apply!13656 lt!2025024 (+ 0 1)))))

(declare-fun lt!2025755 () Unit!147131)

(assert (=> d!1584677 (= lt!2025755 (choose!36045 lt!2025024 (+ 0 1)))))

(declare-fun e!3077242 () Bool)

(assert (=> d!1584677 e!3077242))

(declare-fun res!2102241 () Bool)

(assert (=> d!1584677 (=> (not res!2102241) (not e!3077242))))

(assert (=> d!1584677 (= res!2102241 (>= (+ 0 1) 0))))

(assert (=> d!1584677 (= (lemmaDropApply!1282 lt!2025024 (+ 0 1)) lt!2025755)))

(declare-fun b!4924814 () Bool)

(assert (=> b!4924814 (= e!3077242 (< (+ 0 1) (size!37476 lt!2025024)))))

(assert (= (and d!1584677 res!2102241) b!4924814))

(assert (=> d!1584677 m!5938584))

(assert (=> d!1584677 m!5938584))

(assert (=> d!1584677 m!5938586))

(assert (=> d!1584677 m!5938574))

(declare-fun m!5941632 () Bool)

(assert (=> d!1584677 m!5941632))

(assert (=> b!4924814 m!5941486))

(assert (=> b!4923057 d!1584677))

(declare-fun b!4924819 () Bool)

(declare-fun e!3077247 () List!56809)

(assert (=> b!4924819 (= e!3077247 Nil!56685)))

(declare-fun b!4924820 () Bool)

(declare-fun e!3077249 () List!56809)

(assert (=> b!4924820 (= e!3077249 (drop!2224 (t!367249 lt!2025024) (- (+ 0 1) 1)))))

(declare-fun bm!343284 () Bool)

(declare-fun call!343289 () Int)

(assert (=> bm!343284 (= call!343289 (size!37476 lt!2025024))))

(declare-fun b!4924821 () Bool)

(declare-fun e!3077250 () Int)

(declare-fun e!3077248 () Int)

(assert (=> b!4924821 (= e!3077250 e!3077248)))

(declare-fun c!838568 () Bool)

(assert (=> b!4924821 (= c!838568 (>= (+ 0 1) call!343289))))

(declare-fun b!4924822 () Bool)

(assert (=> b!4924822 (= e!3077250 call!343289)))

(declare-fun b!4924823 () Bool)

(assert (=> b!4924823 (= e!3077248 (- call!343289 (+ 0 1)))))

(declare-fun b!4924824 () Bool)

(assert (=> b!4924824 (= e!3077248 0)))

(declare-fun b!4924825 () Bool)

(assert (=> b!4924825 (= e!3077247 e!3077249)))

(declare-fun c!838567 () Bool)

(assert (=> b!4924825 (= c!838567 (<= (+ 0 1) 0))))

(declare-fun b!4924826 () Bool)

(declare-fun e!3077246 () Bool)

(declare-fun lt!2025757 () List!56809)

(assert (=> b!4924826 (= e!3077246 (= (size!37476 lt!2025757) e!3077250))))

(declare-fun c!838570 () Bool)

(assert (=> b!4924826 (= c!838570 (<= (+ 0 1) 0))))

(declare-fun b!4924827 () Bool)

(assert (=> b!4924827 (= e!3077249 lt!2025024)))

(declare-fun d!1584681 () Bool)

(assert (=> d!1584681 e!3077246))

(declare-fun res!2102246 () Bool)

(assert (=> d!1584681 (=> (not res!2102246) (not e!3077246))))

(assert (=> d!1584681 (= res!2102246 (= ((_ map implies) (content!10066 lt!2025757) (content!10066 lt!2025024)) ((as const (InoxSet C!26956)) true)))))

(assert (=> d!1584681 (= lt!2025757 e!3077247)))

(declare-fun c!838569 () Bool)

(assert (=> d!1584681 (= c!838569 ((_ is Nil!56685) lt!2025024))))

(assert (=> d!1584681 (= (drop!2224 lt!2025024 (+ 0 1)) lt!2025757)))

(assert (= (and d!1584681 c!838569) b!4924819))

(assert (= (and d!1584681 (not c!838569)) b!4924825))

(assert (= (and b!4924825 c!838567) b!4924827))

(assert (= (and b!4924825 (not c!838567)) b!4924820))

(assert (= (and d!1584681 res!2102246) b!4924826))

(assert (= (and b!4924826 c!838570) b!4924822))

(assert (= (and b!4924826 (not c!838570)) b!4924821))

(assert (= (and b!4924821 c!838568) b!4924824))

(assert (= (and b!4924821 (not c!838568)) b!4924823))

(assert (= (or b!4924822 b!4924821 b!4924823) bm!343284))

(declare-fun m!5941642 () Bool)

(assert (=> b!4924820 m!5941642))

(assert (=> bm!343284 m!5941486))

(declare-fun m!5941644 () Bool)

(assert (=> b!4924826 m!5941644))

(declare-fun m!5941646 () Bool)

(assert (=> d!1584681 m!5941646))

(declare-fun m!5941648 () Bool)

(assert (=> d!1584681 m!5941648))

(assert (=> b!4923057 d!1584681))

(assert (=> b!4923057 d!1583377))

(declare-fun d!1584685 () Bool)

(assert (=> d!1584685 (isPrefix!4961 (list!17947 input!5492) (list!17947 input!5492))))

(declare-fun lt!2025759 () Unit!147131)

(assert (=> d!1584685 (= lt!2025759 (choose!36036 (list!17947 input!5492) (list!17947 input!5492)))))

(assert (=> d!1584685 (= (lemmaIsPrefixRefl!3357 (list!17947 input!5492) (list!17947 input!5492)) lt!2025759)))

(declare-fun bs!1179514 () Bool)

(assert (= bs!1179514 d!1584685))

(assert (=> bs!1179514 m!5937560))

(assert (=> bs!1179514 m!5937560))

(assert (=> bs!1179514 m!5938174))

(assert (=> bs!1179514 m!5937560))

(assert (=> bs!1179514 m!5937560))

(declare-fun m!5941652 () Bool)

(assert (=> bs!1179514 m!5941652))

(assert (=> bm!343011 d!1584685))

(declare-fun d!1584689 () Bool)

(declare-fun lt!2025761 () Int)

(assert (=> d!1584689 (>= lt!2025761 0)))

(declare-fun e!3077253 () Int)

(assert (=> d!1584689 (= lt!2025761 e!3077253)))

(declare-fun c!838572 () Bool)

(assert (=> d!1584689 (= c!838572 ((_ is Nil!56685) (list!17949 (c!837809 input!5492))))))

(assert (=> d!1584689 (= (size!37476 (list!17949 (c!837809 input!5492))) lt!2025761)))

(declare-fun b!4924832 () Bool)

(assert (=> b!4924832 (= e!3077253 0)))

(declare-fun b!4924833 () Bool)

(assert (=> b!4924833 (= e!3077253 (+ 1 (size!37476 (t!367249 (list!17949 (c!837809 input!5492))))))))

(assert (= (and d!1584689 c!838572) b!4924832))

(assert (= (and d!1584689 (not c!838572)) b!4924833))

(declare-fun m!5941654 () Bool)

(assert (=> b!4924833 m!5941654))

(assert (=> d!1583551 d!1584689))

(assert (=> d!1583551 d!1583531))

(declare-fun d!1584691 () Bool)

(assert (=> d!1584691 (= (head!10520 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))) (h!63133 (++!12322 Nil!56685 (Cons!56685 (head!10520 (getSuffix!2949 lt!2024736 Nil!56685)) Nil!56685))))))

(assert (=> b!4923337 d!1584691))

(declare-fun d!1584693 () Bool)

(assert (=> d!1584693 (= (head!10520 lt!2024736) (h!63133 lt!2024736))))

(assert (=> b!4923337 d!1584693))

(declare-fun bs!1179524 () Bool)

(declare-fun d!1584695 () Bool)

(assert (= bs!1179524 (and d!1584695 d!1584369)))

(declare-fun lambda!245203 () Int)

(assert (=> bs!1179524 (not (= lambda!245203 lambda!245189))))

(declare-fun bs!1179525 () Bool)

(assert (= bs!1179525 (and d!1584695 b!4922796)))

(assert (=> bs!1179525 (not (= lambda!245203 lambda!245144))))

(declare-fun bs!1179526 () Bool)

(assert (= bs!1179526 (and d!1584695 d!1584109)))

(assert (=> bs!1179526 (not (= lambda!245203 lambda!245182))))

(declare-fun bs!1179527 () Bool)

(assert (= bs!1179527 (and d!1584695 d!1583565)))

(assert (=> bs!1179527 (not (= lambda!245203 lambda!245166))))

(declare-fun bs!1179528 () Bool)

(assert (= bs!1179528 (and d!1584695 b!4924105)))

(assert (=> bs!1179528 (not (= lambda!245203 lambda!245184))))

(declare-fun bs!1179529 () Bool)

(assert (= bs!1179529 (and d!1584695 d!1584525)))

(assert (=> bs!1179529 (= lambda!245203 lambda!245196)))

(declare-fun bs!1179530 () Bool)

(assert (= bs!1179530 (and d!1584695 b!4924435)))

(assert (=> bs!1179530 (not (= lambda!245203 lambda!245190))))

(declare-fun bs!1179531 () Bool)

(assert (= bs!1179531 (and d!1584695 d!1584257)))

(assert (=> bs!1179531 (= (= lambda!245141 (ite c!837920 lambda!245144 lambda!245145)) (= lambda!245203 lambda!245188))))

(declare-fun bs!1179532 () Bool)

(assert (= bs!1179532 (and d!1584695 d!1583923)))

(assert (=> bs!1179532 (not (= lambda!245203 lambda!245180))))

(declare-fun bs!1179533 () Bool)

(assert (= bs!1179533 (and d!1584695 d!1583997)))

(assert (=> bs!1179533 (not (= lambda!245203 lambda!245181))))

(declare-fun bs!1179534 () Bool)

(assert (= bs!1179534 (and d!1584695 b!4922797)))

(assert (=> bs!1179534 (not (= lambda!245203 lambda!245145))))

(declare-fun bs!1179535 () Bool)

(assert (= bs!1179535 (and d!1584695 d!1584475)))

(assert (=> bs!1179535 (not (= lambda!245203 lambda!245193))))

(declare-fun bs!1179536 () Bool)

(assert (= bs!1179536 (and d!1584695 d!1583411)))

(assert (=> bs!1179536 (not (= lambda!245203 lambda!245141))))

(declare-fun bs!1179537 () Bool)

(assert (= bs!1179537 (and d!1584695 b!4924436)))

(assert (=> bs!1179537 (not (= lambda!245203 lambda!245191))))

(declare-fun bs!1179538 () Bool)

(assert (= bs!1179538 (and d!1584695 b!4924104)))

(assert (=> bs!1179538 (not (= lambda!245203 lambda!245183))))

(assert (=> d!1584695 true))

(assert (=> d!1584695 (< (dynLambda!23007 order!25975 lambda!245141) (dynLambda!23007 order!25975 lambda!245203))))

(assert (=> d!1584695 (exists!1242 lt!2024847 lambda!245203)))

(declare-fun lt!2025766 () Unit!147131)

(declare-fun choose!36065 (List!56811 Int) Unit!147131)

(assert (=> d!1584695 (= lt!2025766 (choose!36065 lt!2024847 lambda!245141))))

(assert (=> d!1584695 (not (forall!13134 lt!2024847 lambda!245141))))

(assert (=> d!1584695 (= (lemmaNotForallThenExists!179 lt!2024847 lambda!245141) lt!2025766)))

(declare-fun bs!1179541 () Bool)

(assert (= bs!1179541 d!1584695))

(declare-fun m!5941700 () Bool)

(assert (=> bs!1179541 m!5941700))

(declare-fun m!5941702 () Bool)

(assert (=> bs!1179541 m!5941702))

(declare-fun m!5941704 () Bool)

(assert (=> bs!1179541 m!5941704))

(assert (=> b!4922796 d!1584695))

(assert (=> bm!343013 d!1583495))

(declare-fun d!1584723 () Bool)

(assert (=> d!1584723 (= (isEmpty!30566 (_1!33887 lt!2025235)) ((_ is Nil!56685) (_1!33887 lt!2025235)))))

(assert (=> b!4923435 d!1584723))

(assert (=> b!4923065 d!1583897))

(assert (=> b!4923065 d!1583899))

(assert (=> b!4922988 d!1584201))

(declare-fun b!4924856 () Bool)

(declare-fun e!3077268 () Bool)

(declare-fun tp!1383340 () Bool)

(declare-fun tp!1383341 () Bool)

(assert (=> b!4924856 (= e!3077268 (and tp!1383340 tp!1383341))))

(assert (=> b!4923480 (= tp!1383316 e!3077268)))

(assert (= (and b!4923480 ((_ is Cons!56686) (exprs!3515 setElem!27528))) b!4924856))

(declare-fun b!4924857 () Bool)

(declare-fun e!3077269 () Bool)

(declare-fun tp!1383342 () Bool)

(assert (=> b!4924857 (= e!3077269 (and tp_is_empty!35907 tp!1383342))))

(assert (=> b!4923501 (= tp!1383339 e!3077269)))

(assert (= (and b!4923501 ((_ is Cons!56685) (t!367249 (innerList!14960 (xs!18192 (c!837809 input!5492)))))) b!4924857))

(declare-fun condSetEmpty!27529 () Bool)

(assert (=> setNonEmpty!27528 (= condSetEmpty!27529 (= setRest!27528 ((as const (Array Context!6030 Bool)) false)))))

(declare-fun setRes!27529 () Bool)

(assert (=> setNonEmpty!27528 (= tp!1383317 setRes!27529)))

(declare-fun setIsEmpty!27529 () Bool)

(assert (=> setIsEmpty!27529 setRes!27529))

(declare-fun setNonEmpty!27529 () Bool)

(declare-fun e!3077275 () Bool)

(declare-fun tp!1383344 () Bool)

(declare-fun setElem!27529 () Context!6030)

(assert (=> setNonEmpty!27529 (= setRes!27529 (and tp!1383344 (inv!73463 setElem!27529) e!3077275))))

(declare-fun setRest!27529 () (InoxSet Context!6030))

(assert (=> setNonEmpty!27529 (= setRest!27528 ((_ map or) (store ((as const (Array Context!6030 Bool)) false) setElem!27529 true) setRest!27529))))

(declare-fun b!4924858 () Bool)

(declare-fun tp!1383343 () Bool)

(assert (=> b!4924858 (= e!3077275 tp!1383343)))

(assert (= (and setNonEmpty!27528 condSetEmpty!27529) setIsEmpty!27529))

(assert (= (and setNonEmpty!27528 (not condSetEmpty!27529)) setNonEmpty!27529))

(assert (= setNonEmpty!27529 b!4924858))

(declare-fun m!5941718 () Bool)

(assert (=> setNonEmpty!27529 m!5941718))

(declare-fun e!3077280 () Bool)

(declare-fun tp!1383345 () Bool)

(declare-fun b!4924873 () Bool)

(declare-fun tp!1383346 () Bool)

(assert (=> b!4924873 (= e!3077280 (and (inv!73464 (left!41330 (left!41330 (left!41330 (c!837809 input!5492))))) tp!1383345 (inv!73464 (right!41660 (left!41330 (left!41330 (c!837809 input!5492))))) tp!1383346))))

(declare-fun b!4924875 () Bool)

(declare-fun e!3077279 () Bool)

(declare-fun tp!1383347 () Bool)

(assert (=> b!4924875 (= e!3077279 tp!1383347)))

(declare-fun b!4924874 () Bool)

(assert (=> b!4924874 (= e!3077280 (and (inv!73470 (xs!18192 (left!41330 (left!41330 (c!837809 input!5492))))) e!3077279))))

(assert (=> b!4923474 (= tp!1383310 (and (inv!73464 (left!41330 (left!41330 (c!837809 input!5492)))) e!3077280))))

(assert (= (and b!4923474 ((_ is Node!14872) (left!41330 (left!41330 (c!837809 input!5492))))) b!4924873))

(assert (= b!4924874 b!4924875))

(assert (= (and b!4923474 ((_ is Leaf!24741) (left!41330 (left!41330 (c!837809 input!5492))))) b!4924874))

(declare-fun m!5941720 () Bool)

(assert (=> b!4924873 m!5941720))

(declare-fun m!5941722 () Bool)

(assert (=> b!4924873 m!5941722))

(declare-fun m!5941724 () Bool)

(assert (=> b!4924874 m!5941724))

(assert (=> b!4923474 m!5939180))

(declare-fun b!4924876 () Bool)

(declare-fun tp!1383349 () Bool)

(declare-fun tp!1383348 () Bool)

(declare-fun e!3077282 () Bool)

(assert (=> b!4924876 (= e!3077282 (and (inv!73464 (left!41330 (right!41660 (left!41330 (c!837809 input!5492))))) tp!1383348 (inv!73464 (right!41660 (right!41660 (left!41330 (c!837809 input!5492))))) tp!1383349))))

(declare-fun b!4924878 () Bool)

(declare-fun e!3077281 () Bool)

(declare-fun tp!1383350 () Bool)

(assert (=> b!4924878 (= e!3077281 tp!1383350)))

(declare-fun b!4924877 () Bool)

(assert (=> b!4924877 (= e!3077282 (and (inv!73470 (xs!18192 (right!41660 (left!41330 (c!837809 input!5492))))) e!3077281))))

(assert (=> b!4923474 (= tp!1383311 (and (inv!73464 (right!41660 (left!41330 (c!837809 input!5492)))) e!3077282))))

(assert (= (and b!4923474 ((_ is Node!14872) (right!41660 (left!41330 (c!837809 input!5492))))) b!4924876))

(assert (= b!4924877 b!4924878))

(assert (= (and b!4923474 ((_ is Leaf!24741) (right!41660 (left!41330 (c!837809 input!5492))))) b!4924877))

(declare-fun m!5941726 () Bool)

(assert (=> b!4924876 m!5941726))

(declare-fun m!5941728 () Bool)

(assert (=> b!4924876 m!5941728))

(declare-fun m!5941730 () Bool)

(assert (=> b!4924877 m!5941730))

(assert (=> b!4923474 m!5939182))

(declare-fun b!4924879 () Bool)

(declare-fun e!3077284 () Bool)

(declare-fun tp!1383351 () Bool)

(declare-fun tp!1383352 () Bool)

(assert (=> b!4924879 (= e!3077284 (and (inv!73464 (left!41330 (left!41330 (right!41660 (c!837809 input!5492))))) tp!1383351 (inv!73464 (right!41660 (left!41330 (right!41660 (c!837809 input!5492))))) tp!1383352))))

(declare-fun b!4924881 () Bool)

(declare-fun e!3077283 () Bool)

(declare-fun tp!1383353 () Bool)

(assert (=> b!4924881 (= e!3077283 tp!1383353)))

(declare-fun b!4924880 () Bool)

(assert (=> b!4924880 (= e!3077284 (and (inv!73470 (xs!18192 (left!41330 (right!41660 (c!837809 input!5492))))) e!3077283))))

(assert (=> b!4923477 (= tp!1383313 (and (inv!73464 (left!41330 (right!41660 (c!837809 input!5492)))) e!3077284))))

(assert (= (and b!4923477 ((_ is Node!14872) (left!41330 (right!41660 (c!837809 input!5492))))) b!4924879))

(assert (= b!4924880 b!4924881))

(assert (= (and b!4923477 ((_ is Leaf!24741) (left!41330 (right!41660 (c!837809 input!5492))))) b!4924880))

(declare-fun m!5941732 () Bool)

(assert (=> b!4924879 m!5941732))

(declare-fun m!5941734 () Bool)

(assert (=> b!4924879 m!5941734))

(declare-fun m!5941736 () Bool)

(assert (=> b!4924880 m!5941736))

(assert (=> b!4923477 m!5939186))

(declare-fun e!3077286 () Bool)

(declare-fun b!4924882 () Bool)

(declare-fun tp!1383355 () Bool)

(declare-fun tp!1383354 () Bool)

(assert (=> b!4924882 (= e!3077286 (and (inv!73464 (left!41330 (right!41660 (right!41660 (c!837809 input!5492))))) tp!1383354 (inv!73464 (right!41660 (right!41660 (right!41660 (c!837809 input!5492))))) tp!1383355))))

(declare-fun b!4924884 () Bool)

(declare-fun e!3077285 () Bool)

(declare-fun tp!1383356 () Bool)

(assert (=> b!4924884 (= e!3077285 tp!1383356)))

(declare-fun b!4924883 () Bool)

(assert (=> b!4924883 (= e!3077286 (and (inv!73470 (xs!18192 (right!41660 (right!41660 (c!837809 input!5492))))) e!3077285))))

(assert (=> b!4923477 (= tp!1383314 (and (inv!73464 (right!41660 (right!41660 (c!837809 input!5492)))) e!3077286))))

(assert (= (and b!4923477 ((_ is Node!14872) (right!41660 (right!41660 (c!837809 input!5492))))) b!4924882))

(assert (= b!4924883 b!4924884))

(assert (= (and b!4923477 ((_ is Leaf!24741) (right!41660 (right!41660 (c!837809 input!5492))))) b!4924883))

(declare-fun m!5941738 () Bool)

(assert (=> b!4924882 m!5941738))

(declare-fun m!5941740 () Bool)

(assert (=> b!4924882 m!5941740))

(declare-fun m!5941742 () Bool)

(assert (=> b!4924883 m!5941742))

(assert (=> b!4923477 m!5939188))

(declare-fun b!4924886 () Bool)

(declare-fun e!3077287 () Bool)

(declare-fun tp!1383357 () Bool)

(declare-fun tp!1383361 () Bool)

(assert (=> b!4924886 (= e!3077287 (and tp!1383357 tp!1383361))))

(declare-fun b!4924887 () Bool)

(declare-fun tp!1383359 () Bool)

(assert (=> b!4924887 (= e!3077287 tp!1383359)))

(declare-fun b!4924888 () Bool)

(declare-fun tp!1383360 () Bool)

(declare-fun tp!1383358 () Bool)

(assert (=> b!4924888 (= e!3077287 (and tp!1383360 tp!1383358))))

(assert (=> b!4923495 (= tp!1383333 e!3077287)))

(declare-fun b!4924885 () Bool)

(assert (=> b!4924885 (= e!3077287 tp_is_empty!35907)))

(assert (= (and b!4923495 ((_ is ElementMatch!13373) (h!63134 (t!367250 (exprs!3515 setElem!27520))))) b!4924885))

(assert (= (and b!4923495 ((_ is Concat!21946) (h!63134 (t!367250 (exprs!3515 setElem!27520))))) b!4924886))

(assert (= (and b!4923495 ((_ is Star!13373) (h!63134 (t!367250 (exprs!3515 setElem!27520))))) b!4924887))

(assert (= (and b!4923495 ((_ is Union!13373) (h!63134 (t!367250 (exprs!3515 setElem!27520))))) b!4924888))

(declare-fun b!4924889 () Bool)

(declare-fun e!3077288 () Bool)

(declare-fun tp!1383362 () Bool)

(declare-fun tp!1383363 () Bool)

(assert (=> b!4924889 (= e!3077288 (and tp!1383362 tp!1383363))))

(assert (=> b!4923495 (= tp!1383334 e!3077288)))

(assert (= (and b!4923495 ((_ is Cons!56686) (t!367250 (t!367250 (exprs!3515 setElem!27520))))) b!4924889))

(declare-fun b!4924891 () Bool)

(declare-fun e!3077289 () Bool)

(declare-fun tp!1383364 () Bool)

(declare-fun tp!1383368 () Bool)

(assert (=> b!4924891 (= e!3077289 (and tp!1383364 tp!1383368))))

(declare-fun b!4924892 () Bool)

(declare-fun tp!1383366 () Bool)

(assert (=> b!4924892 (= e!3077289 tp!1383366)))

(declare-fun b!4924893 () Bool)

(declare-fun tp!1383367 () Bool)

(declare-fun tp!1383365 () Bool)

(assert (=> b!4924893 (= e!3077289 (and tp!1383367 tp!1383365))))

(assert (=> b!4923492 (= tp!1383328 e!3077289)))

(declare-fun b!4924890 () Bool)

(assert (=> b!4924890 (= e!3077289 tp_is_empty!35907)))

(assert (= (and b!4923492 ((_ is ElementMatch!13373) (regOne!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924890))

(assert (= (and b!4923492 ((_ is Concat!21946) (regOne!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924891))

(assert (= (and b!4923492 ((_ is Star!13373) (regOne!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924892))

(assert (= (and b!4923492 ((_ is Union!13373) (regOne!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924893))

(declare-fun b!4924895 () Bool)

(declare-fun e!3077290 () Bool)

(declare-fun tp!1383369 () Bool)

(declare-fun tp!1383373 () Bool)

(assert (=> b!4924895 (= e!3077290 (and tp!1383369 tp!1383373))))

(declare-fun b!4924896 () Bool)

(declare-fun tp!1383371 () Bool)

(assert (=> b!4924896 (= e!3077290 tp!1383371)))

(declare-fun b!4924897 () Bool)

(declare-fun tp!1383372 () Bool)

(declare-fun tp!1383370 () Bool)

(assert (=> b!4924897 (= e!3077290 (and tp!1383372 tp!1383370))))

(assert (=> b!4923492 (= tp!1383332 e!3077290)))

(declare-fun b!4924894 () Bool)

(assert (=> b!4924894 (= e!3077290 tp_is_empty!35907)))

(assert (= (and b!4923492 ((_ is ElementMatch!13373) (regTwo!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924894))

(assert (= (and b!4923492 ((_ is Concat!21946) (regTwo!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924895))

(assert (= (and b!4923492 ((_ is Star!13373) (regTwo!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924896))

(assert (= (and b!4923492 ((_ is Union!13373) (regTwo!27258 (h!63134 (exprs!3515 setElem!27520))))) b!4924897))

(declare-fun b!4924898 () Bool)

(declare-fun e!3077291 () Bool)

(declare-fun tp!1383374 () Bool)

(assert (=> b!4924898 (= e!3077291 (and tp_is_empty!35907 tp!1383374))))

(assert (=> b!4923476 (= tp!1383312 e!3077291)))

(assert (= (and b!4923476 ((_ is Cons!56685) (innerList!14960 (xs!18192 (left!41330 (c!837809 input!5492)))))) b!4924898))

(declare-fun b!4924899 () Bool)

(declare-fun e!3077292 () Bool)

(declare-fun tp!1383375 () Bool)

(assert (=> b!4924899 (= e!3077292 (and tp_is_empty!35907 tp!1383375))))

(assert (=> b!4923479 (= tp!1383315 e!3077292)))

(assert (= (and b!4923479 ((_ is Cons!56685) (innerList!14960 (xs!18192 (right!41660 (c!837809 input!5492)))))) b!4924899))

(declare-fun b!4924901 () Bool)

(declare-fun e!3077293 () Bool)

(declare-fun tp!1383376 () Bool)

(declare-fun tp!1383380 () Bool)

(assert (=> b!4924901 (= e!3077293 (and tp!1383376 tp!1383380))))

(declare-fun b!4924902 () Bool)

(declare-fun tp!1383378 () Bool)

(assert (=> b!4924902 (= e!3077293 tp!1383378)))

(declare-fun b!4924903 () Bool)

(declare-fun tp!1383379 () Bool)

(declare-fun tp!1383377 () Bool)

(assert (=> b!4924903 (= e!3077293 (and tp!1383379 tp!1383377))))

(assert (=> b!4923496 (= tp!1383335 e!3077293)))

(declare-fun b!4924900 () Bool)

(assert (=> b!4924900 (= e!3077293 tp_is_empty!35907)))

(assert (= (and b!4923496 ((_ is ElementMatch!13373) (h!63134 (exprs!3515 setElem!27526)))) b!4924900))

(assert (= (and b!4923496 ((_ is Concat!21946) (h!63134 (exprs!3515 setElem!27526)))) b!4924901))

(assert (= (and b!4923496 ((_ is Star!13373) (h!63134 (exprs!3515 setElem!27526)))) b!4924902))

(assert (= (and b!4923496 ((_ is Union!13373) (h!63134 (exprs!3515 setElem!27526)))) b!4924903))

(declare-fun b!4924904 () Bool)

(declare-fun e!3077294 () Bool)

(declare-fun tp!1383381 () Bool)

(declare-fun tp!1383382 () Bool)

(assert (=> b!4924904 (= e!3077294 (and tp!1383381 tp!1383382))))

(assert (=> b!4923496 (= tp!1383336 e!3077294)))

(assert (= (and b!4923496 ((_ is Cons!56686) (t!367250 (exprs!3515 setElem!27526)))) b!4924904))

(declare-fun b!4924906 () Bool)

(declare-fun e!3077295 () Bool)

(declare-fun tp!1383383 () Bool)

(declare-fun tp!1383387 () Bool)

(assert (=> b!4924906 (= e!3077295 (and tp!1383383 tp!1383387))))

(declare-fun b!4924907 () Bool)

(declare-fun tp!1383385 () Bool)

(assert (=> b!4924907 (= e!3077295 tp!1383385)))

(declare-fun b!4924908 () Bool)

(declare-fun tp!1383386 () Bool)

(declare-fun tp!1383384 () Bool)

(assert (=> b!4924908 (= e!3077295 (and tp!1383386 tp!1383384))))

(assert (=> b!4923494 (= tp!1383331 e!3077295)))

(declare-fun b!4924905 () Bool)

(assert (=> b!4924905 (= e!3077295 tp_is_empty!35907)))

(assert (= (and b!4923494 ((_ is ElementMatch!13373) (regOne!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924905))

(assert (= (and b!4923494 ((_ is Concat!21946) (regOne!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924906))

(assert (= (and b!4923494 ((_ is Star!13373) (regOne!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924907))

(assert (= (and b!4923494 ((_ is Union!13373) (regOne!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924908))

(declare-fun b!4924910 () Bool)

(declare-fun e!3077296 () Bool)

(declare-fun tp!1383388 () Bool)

(declare-fun tp!1383392 () Bool)

(assert (=> b!4924910 (= e!3077296 (and tp!1383388 tp!1383392))))

(declare-fun b!4924911 () Bool)

(declare-fun tp!1383390 () Bool)

(assert (=> b!4924911 (= e!3077296 tp!1383390)))

(declare-fun b!4924912 () Bool)

(declare-fun tp!1383391 () Bool)

(declare-fun tp!1383389 () Bool)

(assert (=> b!4924912 (= e!3077296 (and tp!1383391 tp!1383389))))

(assert (=> b!4923494 (= tp!1383329 e!3077296)))

(declare-fun b!4924909 () Bool)

(assert (=> b!4924909 (= e!3077296 tp_is_empty!35907)))

(assert (= (and b!4923494 ((_ is ElementMatch!13373) (regTwo!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924909))

(assert (= (and b!4923494 ((_ is Concat!21946) (regTwo!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924910))

(assert (= (and b!4923494 ((_ is Star!13373) (regTwo!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924911))

(assert (= (and b!4923494 ((_ is Union!13373) (regTwo!27259 (h!63134 (exprs!3515 setElem!27520))))) b!4924912))

(declare-fun b!4924914 () Bool)

(declare-fun e!3077297 () Bool)

(declare-fun tp!1383393 () Bool)

(declare-fun tp!1383397 () Bool)

(assert (=> b!4924914 (= e!3077297 (and tp!1383393 tp!1383397))))

(declare-fun b!4924915 () Bool)

(declare-fun tp!1383395 () Bool)

(assert (=> b!4924915 (= e!3077297 tp!1383395)))

(declare-fun b!4924916 () Bool)

(declare-fun tp!1383396 () Bool)

(declare-fun tp!1383394 () Bool)

(assert (=> b!4924916 (= e!3077297 (and tp!1383396 tp!1383394))))

(assert (=> b!4923493 (= tp!1383330 e!3077297)))

(declare-fun b!4924913 () Bool)

(assert (=> b!4924913 (= e!3077297 tp_is_empty!35907)))

(assert (= (and b!4923493 ((_ is ElementMatch!13373) (reg!13702 (h!63134 (exprs!3515 setElem!27520))))) b!4924913))

(assert (= (and b!4923493 ((_ is Concat!21946) (reg!13702 (h!63134 (exprs!3515 setElem!27520))))) b!4924914))

(assert (= (and b!4923493 ((_ is Star!13373) (reg!13702 (h!63134 (exprs!3515 setElem!27520))))) b!4924915))

(assert (= (and b!4923493 ((_ is Union!13373) (reg!13702 (h!63134 (exprs!3515 setElem!27520))))) b!4924916))

(declare-fun b_lambda!196281 () Bool)

(assert (= b_lambda!196277 (or d!1583691 b_lambda!196281)))

(declare-fun bs!1179544 () Bool)

(declare-fun d!1584733 () Bool)

(assert (= bs!1179544 (and d!1584733 d!1583691)))

(assert (=> bs!1179544 (= (dynLambda!23005 lambda!245169 (h!63134 (exprs!3515 setElem!27526))) (validRegex!5941 (h!63134 (exprs!3515 setElem!27526))))))

(declare-fun m!5941798 () Bool)

(assert (=> bs!1179544 m!5941798))

(assert (=> b!4924699 d!1584733))

(declare-fun b_lambda!196283 () Bool)

(assert (= b_lambda!196273 (or d!1583385 b_lambda!196283)))

(declare-fun bs!1179545 () Bool)

(declare-fun d!1584737 () Bool)

(assert (= bs!1179545 (and d!1584737 d!1583385)))

(assert (=> bs!1179545 (= (dynLambda!23005 lambda!245124 (h!63134 (t!367250 (exprs!3515 setElem!27520)))) (validRegex!5941 (h!63134 (t!367250 (exprs!3515 setElem!27520)))))))

(declare-fun m!5941802 () Bool)

(assert (=> bs!1179545 m!5941802))

(assert (=> b!4923644 d!1584737))

(check-sat (not b!4924044) (not d!1584229) (not b!4924477) (not b!4924126) (not bm!343187) (not b!4924687) (not d!1583871) (not b!4923731) (not b!4923536) (not d!1584075) (not b!4923516) (not b!4924252) (not b!4924474) (not d!1583907) (not b!4923793) (not d!1584085) (not b!4924878) (not bm!343181) (not d!1584103) (not d!1583933) (not b!4923648) (not bm!343100) (not b!4924446) (not b!4924373) (not d!1584329) (not b!4924461) (not b!4923757) tp_is_empty!35907 (not b!4924467) (not d!1584341) (not b!4924136) (not d!1583829) (not b!4923515) (not b!4924893) (not b_lambda!196281) (not b!4924363) (not b!4923549) (not b!4923618) (not b!4924883) (not b!4924542) (not d!1583811) (not b!4923573) (not b!4924348) (not b!4923726) (not b!4924180) (not bm!343220) (not b!4924372) (not b!4924904) (not bm!343262) (not b!4923566) (not b!4924444) (not d!1584365) (not b!4923659) (not b!4923684) (not b!4924168) (not b!4924601) (not b!4924022) (not d!1583937) (not d!1584583) (not b!4923619) (not bm!343094) (not b!4924456) (not d!1584589) (not d!1584371) (not b!4923559) (not b!4924889) (not b!4923540) (not d!1584671) (not b!4923581) (not b!4924793) (not d!1584417) (not d!1584111) (not b!4924172) (not b!4924434) (not b!4923926) (not b!4923636) (not bm!343113) (not b!4924254) (not d!1583777) (not b!4923762) (not d!1583941) (not b!4924882) (not b!4923623) (not b!4924877) (not d!1584411) (not b!4924891) (not d!1583865) (not d!1584223) (not b!4923927) (not d!1583851) (not b!4924599) (not b!4923535) (not b!4924672) (not b!4924489) (not b!4924077) (not b!4924666) (not b!4924454) (not d!1583801) (not bm!343095) (not b!4923604) (not b!4924580) (not b!4924190) (not b!4924906) (not b!4924632) (not b!4924481) (not b!4924803) (not b!4924151) (not b!4924879) (not b!4924916) (not b!4923629) (not b!4924285) (not b!4924603) (not b!4924888) (not d!1583831) (not d!1583881) (not b!4923695) (not b!4924663) (not b!4924391) (not b!4924286) (not b!4924339) (not b!4924310) (not b!4923667) (not b!4924897) (not b!4923791) (not b!4924742) (not d!1584123) (not b!4924311) (not bm!343188) (not b!4923685) (not b!4924633) (not d!1584391) (not bm!343098) (not b!4924609) (not b!4924073) (not b!4924145) (not b!4924692) (not b!4923754) (not bm!343218) (not d!1584323) (not b!4924670) (not bm!343223) (not b!4923589) (not bm!343224) (not b!4923613) (not b!4924141) (not b!4924788) (not b!4924802) (not bm!343103) (not b!4924881) (not b!4924459) (not b!4924067) (not bm!343123) (not b!4924589) (not b!4924884) (not b!4924605) (not b!4923756) (not b!4923568) (not b!4924045) (not b!4924264) (not b!4923529) (not d!1584381) (not b!4924565) (not b!4923590) (not b!4924757) (not bm!343120) (not bm!343186) (not b!4924770) (not b!4924600) (not b!4924538) (not b!4924419) (not b!4924498) (not d!1584449) (not b!4923609) (not b!4923592) (not b!4924540) (not d!1584369) (not b!4923584) (not b!4924382) (not b!4924728) (not b!4924249) (not bm!343157) (not bm!343221) (not b!4924471) (not b!4923781) (not d!1583841) (not b!4924142) (not d!1584319) (not d!1584647) (not b!4923510) (not b!4923653) (not d!1583895) (not b!4923691) (not b!4924907) (not bm!343195) (not b!4924604) (not b!4923630) (not b!4923680) (not d!1583757) (not d!1583997) (not b!4924071) (not b!4923616) (not b!4924738) (not b!4924899) (not b!4924814) (not b!4924561) (not bm!343225) (not b!4923764) (not b!4924469) (not d!1584419) (not b!4923727) (not b!4924406) (not b!4924424) (not b!4924435) (not b!4924746) (not b!4923929) (not b!4923575) (not b!4923733) (not b!4924460) (not d!1584665) (not b!4924911) (not b!4923723) (not b!4923513) (not b!4923925) (not b!4924874) (not b!4924290) (not bm!343109) (not d!1584209) (not b!4924340) (not b!4924767) (not bm!343222) (not b!4923900) (not b!4924537) (not bm!343107) (not bs!1179545) (not b!4923654) (not b!4924308) (not b!4924717) (not d!1584409) (not b!4924274) (not b!4924452) (not b!4923736) (not d!1584659) (not d!1584603) (not d!1584087) (not d!1584515) (not d!1584179) (not bm!343180) (not b!4923570) (not b!4924857) (not b!4923474) (not b!4924910) (not b!4923564) (not bm!343097) (not b!4923990) (not b!4924563) (not b!4923569) (not b!4924636) (not d!1584117) (not b!4924097) (not bm!343160) (not b!4924371) (not b!4923620) (not b!4924458) (not b!4924875) (not d!1584147) (not b!4924413) (not b!4923652) (not d!1584483) (not b!4924705) (not d!1584685) (not b!4924626) (not b!4923518) (not b!4923557) (not b!4924442) (not b!4924153) (not b!4924080) (not bm!343119) (not b!4923617) (not b!4924152) (not b!4923588) (not b_lambda!196283) (not b!4923734) (not d!1584109) (not b!4924105) (not b!4924610) (not b!4924093) (not b!4924557) (not b!4923719) (not b!4924876) (not bm!343106) (not d!1584453) (not d!1584501) (not b!4923597) (not d!1583747) (not b!4924463) (not b!4924436) (not b!4923527) (not b!4924886) (not d!1584271) (not bm!343196) (not b!4924544) (not b!4924005) (not b!4924289) (not b!4923477) (not b!4923804) (not b!4923649) (not b!4924597) (not b!4924316) (not d!1584591) (not b!4924063) (not b!4923538) (not b!4924478) (not b!4924490) (not b!4924098) (not bm!343261) (not d!1584275) (not b!4924718) (not b!4924780) (not b!4924556) (not b!4924135) (not d!1583925) (not d!1584595) (not b!4923553) (not b!4924880) (not b!4924903) (not b!4924898) (not b!4924265) (not b!4923725) (not b!4923784) (not d!1583867) (not b!4924114) (not d!1584379) (not b!4923678) (not b!4923732) (not bm!343185) (not bm!343093) (not b!4924622) (not b!4924546) (not d!1584601) (not b!4924336) (not b!4924028) (not b!4923646) (not b!4924774) (not b!4924429) (not bm!343264) (not d!1583883) (not b!4923739) (not b!4924075) (not b!4924734) (not b!4923661) (not b!4923625) (not b!4924162) (not b!4924809) (not b!4924915) (not b!4924592) (not b!4923694) (not b!4923633) (not b!4923758) (not b!4924381) (not b!4923514) (not b!4924010) (not b!4923555) (not b!4924741) (not d!1583879) (not b!4924716) (not b!4924439) (not d!1584587) (not b!4924733) (not b!4923533) (not b!4924902) (not d!1584447) (not d!1584663) (not b!4923579) (not b!4923565) (not b!4924596) (not b!4924700) (not d!1583909) (not b!4923556) (not bm!343284) (not b!4924341) (not d!1583813) (not b!4923795) (not b!4924753) (not bm!343159) (not b!4924473) (not b!4924009) (not b!4923567) (not b!4923711) (not b!4924225) (not bm!343183) (not b!4924069) (not b!4924781) (not b!4924543) (not b!4924006) (not b!4924896) (not b!4923561) (not bm!343104) (not b!4924115) (not b!4923724) (not bm!343182) (not b!4924448) (not b!4924551) (not d!1584281) (not b!4924350) (not b!4923503) (not b!4923808) (not bm!343105) (not b!4924449) (not d!1583735) (not setNonEmpty!27529) (not b!4923641) (not d!1584211) (not b!4924432) (not b!4923591) (not b!4924315) (not d!1584363) (not b!4924769) (not b!4924065) (not bm!343165) (not b!4923735) (not b!4923577) (not b!4924826) (not b!4923930) (not b!4924532) (not b!4924154) (not b!4924631) (not d!1584217) (not b!4923651) (not bm!343101) (not b!4924277) (not b!4924586) (not bm!343184) (not b!4924708) (not d!1584639) (not bm!343167) (not b!4924156) (not b!4924416) (not b!4924552) (not d!1584485) (not b!4924895) (not b!4924662) (not b!4923693) (not b!4924892) (not b!4923928) (not b!4924533) (not d!1584215) (not b!4924482) (not d!1584129) (not b!4923785) (not b!4923614) (not d!1584113) (not d!1584695) (not b!4924756) (not d!1583759) (not b!4924658) (not d!1584641) (not b!4924595) (not b!4924079) (not bm!343161) (not b!4923884) (not b!4924094) (not bm!343099) (not b!4924470) (not d!1584213) (not b!4924709) (not b!4924433) (not b!4924745) (not b!4923645) (not b!4924513) (not bm!343227) (not b!4924104) (not b!4924773) (not b!4924257) (not b!4923683) (not b!4924174) (not b!4923543) (not b!4924018) (not d!1583923) (not b!4924541) (not b!4924170) (not d!1584105) (not d!1583857) (not b!4923668) (not b!4924337) (not d!1584157) (not b!4923621) (not d!1583843) (not b!4924346) (not b!4923895) (not b!4923718) (not b!4924737) (not b!4924668) (not bm!343096) (not b!4923532) (not d!1584461) (not bm!343092) (not b!4924585) (not d!1584475) (not d!1584633) (not d!1584607) (not d!1584257) (not b!4923541) (not d!1584183) (not b!4923531) (not b!4924620) (not b!4924163) (not b!4924545) (not d!1584681) (not b!4924253) (not b!4924569) (not b!4924155) (not b!4924144) (not bm!343190) (not b!4924248) (not b!4923601) (not d!1584205) (not b!4924772) (not b!4924276) (not b!4923689) (not b!4924873) (not b!4924117) (not b!4924521) (not bm!343260) (not b!4924627) (not b!4923787) (not d!1584549) (not b!4924536) (not b!4923788) (not b!4923887) (not d!1583733) (not b!4924500) (not b!4923737) (not b!4924707) (not d!1583783) (not d!1584289) (not b!4924438) (not d!1584171) (not b!4923627) (not bm!343217) (not b!4924820) (not b!4924660) (not b!4924766) (not b!4924908) (not d!1583855) (not b!4924403) (not d!1584677) (not d!1584347) (not d!1583905) (not d!1584437) (not d!1584435) (not b!4923571) (not b!4924833) (not d!1584309) (not b!4924007) (not b!4923551) (not b!4923899) (not b!4924132) (not b!4923809) (not bm!343108) (not b!4924571) (not b!4924549) (not d!1584525) (not d!1584283) (not bm!343111) (not b!4923585) (not b!4923554) (not b!4924747) (not b!4924039) (not b!4924625) (not b!4924901) (not bm!343226) (not b!4923528) (not b!4923615) (not bm!343179) (not bs!1179544) (not b!4924602) (not d!1583805) (not d!1584403) (not d!1584395) (not d!1584637) (not b!4923542) (not b!4923797) (not bm!343110) (not d!1584443) (not d!1584279) (not b!4923552) (not b!4924534) (not b!4924567) (not d!1584293) (not bm!343189) (not b!4924465) (not d!1583935) (not b!4923802) (not bm!343199) (not b!4924758) (not b!4923663) (not b!4923511) (not b!4924914) (not b!4923524) (not b!4923738) (not b!4924858) (not b!4923539) (not d!1584413) (not bm!343219) (not bm!343169) (not b!4924351) (not b!4924272) (not d!1584617) (not d!1584541) (not d!1583891) (not b!4924856) (not b!4924593) (not b!4924008) (not b!4924696) (not b!4924146) (not b!4924727) (not d!1584625) (not b!4923512) (not b!4924099) (not b!4924547) (not b!4924560) (not b!4923716) (not b!4924887) (not bm!343263) (not b!4924515) (not b!4924686) (not b!4923714) (not d!1584651) (not b!4924912) (not b!4923598) (not b!4924573) (not d!1584239) (not b!4924232) (not b!4923892) (not b_lambda!196271) (not b!4924143) (not bm!343112) (not d!1583839) (not d!1584405) (not b!4924256) (not d!1584173) (not d!1583893) (not b!4923779) (not bm!343102))
(check-sat)
