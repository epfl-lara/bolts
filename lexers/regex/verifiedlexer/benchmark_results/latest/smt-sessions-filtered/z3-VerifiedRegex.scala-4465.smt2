; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!237392 () Bool)

(assert start!237392)

(declare-fun b!2423639 () Bool)

(declare-fun e!1541775 () Bool)

(declare-fun lt!875810 () Bool)

(declare-datatypes ((C!14404 0))(
  ( (C!14405 (val!8444 Int)) )
))
(declare-datatypes ((List!28484 0))(
  ( (Nil!28386) (Cons!28386 (h!33787 C!14404) (t!208461 List!28484)) )
))
(declare-fun s!9460 () List!28484)

(declare-fun isEmpty!16414 (List!28484) Bool)

(assert (=> b!2423639 (= e!1541775 (not (= lt!875810 (isEmpty!16414 s!9460))))))

(declare-fun res!1029348 () Bool)

(declare-fun e!1541783 () Bool)

(assert (=> start!237392 (=> (not res!1029348) (not e!1541783))))

(declare-datatypes ((Regex!7123 0))(
  ( (ElementMatch!7123 (c!386465 C!14404)) (Concat!11759 (regOne!14758 Regex!7123) (regTwo!14758 Regex!7123)) (EmptyExpr!7123) (Star!7123 (reg!7452 Regex!7123)) (EmptyLang!7123) (Union!7123 (regOne!14759 Regex!7123) (regTwo!14759 Regex!7123)) )
))
(declare-datatypes ((List!28485 0))(
  ( (Nil!28387) (Cons!28387 (h!33788 Regex!7123) (t!208462 List!28485)) )
))
(declare-fun l!9164 () List!28485)

(declare-fun lambda!91285 () Int)

(declare-fun forall!5757 (List!28485 Int) Bool)

(assert (=> start!237392 (= res!1029348 (forall!5757 l!9164 lambda!91285))))

(assert (=> start!237392 e!1541783))

(declare-fun e!1541779 () Bool)

(assert (=> start!237392 e!1541779))

(declare-fun e!1541782 () Bool)

(assert (=> start!237392 e!1541782))

(declare-fun e!1541786 () Bool)

(assert (=> start!237392 e!1541786))

(declare-fun b!2423640 () Bool)

(declare-fun tp!769924 () Bool)

(declare-fun tp!769921 () Bool)

(assert (=> b!2423640 (= e!1541782 (and tp!769924 tp!769921))))

(declare-fun b!2423641 () Bool)

(declare-fun tp_is_empty!11659 () Bool)

(declare-fun tp!769923 () Bool)

(assert (=> b!2423641 (= e!1541786 (and tp_is_empty!11659 tp!769923))))

(declare-fun b!2423642 () Bool)

(declare-fun tp!769927 () Bool)

(assert (=> b!2423642 (= e!1541782 tp!769927)))

(declare-fun lt!875822 () Regex!7123)

(declare-fun bm!148212 () Bool)

(declare-fun lt!875811 () Regex!7123)

(declare-datatypes ((tuple2!28026 0))(
  ( (tuple2!28027 (_1!16554 List!28484) (_2!16554 List!28484)) )
))
(declare-datatypes ((Option!5624 0))(
  ( (None!5623) (Some!5623 (v!31031 tuple2!28026)) )
))
(declare-fun call!148221 () Option!5624)

(declare-fun findConcatSeparation!732 (Regex!7123 Regex!7123 List!28484 List!28484 List!28484) Option!5624)

(assert (=> bm!148212 (= call!148221 (findConcatSeparation!732 lt!875822 lt!875811 Nil!28386 s!9460 s!9460))))

(declare-fun c!386463 () Bool)

(declare-fun call!148222 () List!28484)

(declare-fun lt!875816 () Regex!7123)

(declare-fun bm!148213 () Bool)

(declare-fun call!148218 () Bool)

(declare-fun matchR!3240 (Regex!7123 List!28484) Bool)

(assert (=> bm!148213 (= call!148218 (matchR!3240 (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123)) (ite c!386463 s!9460 call!148222)))))

(declare-fun b!2423643 () Bool)

(declare-fun e!1541774 () Bool)

(declare-fun e!1541785 () Bool)

(assert (=> b!2423643 (= e!1541774 e!1541785)))

(declare-fun res!1029355 () Bool)

(assert (=> b!2423643 (=> res!1029355 e!1541785)))

(assert (=> b!2423643 (= res!1029355 (not (= lt!875811 EmptyExpr!7123)))))

(declare-fun lt!875813 () List!28485)

(declare-fun generalisedConcat!224 (List!28485) Regex!7123)

(assert (=> b!2423643 (= lt!875811 (generalisedConcat!224 lt!875813))))

(declare-fun b!2423644 () Bool)

(declare-fun tp!769920 () Bool)

(declare-fun tp!769925 () Bool)

(assert (=> b!2423644 (= e!1541782 (and tp!769920 tp!769925))))

(declare-fun b!2423645 () Bool)

(declare-fun tp!769926 () Bool)

(declare-fun tp!769922 () Bool)

(assert (=> b!2423645 (= e!1541779 (and tp!769926 tp!769922))))

(declare-fun b!2423646 () Bool)

(declare-fun e!1541772 () Bool)

(assert (=> b!2423646 (= e!1541772 call!148218)))

(declare-fun call!148217 () Bool)

(declare-fun bm!148214 () Bool)

(declare-fun lt!875820 () Option!5624)

(declare-fun isDefined!4450 (Option!5624) Bool)

(assert (=> bm!148214 (= call!148217 (isDefined!4450 (ite c!386463 call!148221 lt!875820)))))

(declare-fun b!2423647 () Bool)

(declare-fun e!1541781 () Bool)

(assert (=> b!2423647 (= e!1541781 e!1541774)))

(declare-fun res!1029356 () Bool)

(assert (=> b!2423647 (=> res!1029356 e!1541774)))

(declare-fun isEmpty!16415 (List!28485) Bool)

(assert (=> b!2423647 (= res!1029356 (not (isEmpty!16415 lt!875813)))))

(declare-fun tail!3729 (List!28485) List!28485)

(assert (=> b!2423647 (= lt!875813 (tail!3729 l!9164))))

(declare-fun b!2423648 () Bool)

(declare-fun e!1541780 () Bool)

(declare-fun call!148220 () Bool)

(assert (=> b!2423648 (= e!1541780 (not call!148220))))

(declare-fun b!2423649 () Bool)

(assert (=> b!2423649 (= e!1541782 tp_is_empty!11659)))

(declare-fun b!2423650 () Bool)

(assert (=> b!2423650 (= e!1541783 (not e!1541781))))

(declare-fun res!1029354 () Bool)

(assert (=> b!2423650 (=> res!1029354 e!1541781)))

(declare-fun r!13927 () Regex!7123)

(get-info :version)

(assert (=> b!2423650 (= res!1029354 (or ((_ is Concat!11759) r!13927) ((_ is EmptyExpr!7123) r!13927)))))

(declare-fun matchRSpec!972 (Regex!7123 List!28484) Bool)

(assert (=> b!2423650 (= lt!875810 (matchRSpec!972 r!13927 s!9460))))

(assert (=> b!2423650 (= lt!875810 (matchR!3240 r!13927 s!9460))))

(declare-datatypes ((Unit!41597 0))(
  ( (Unit!41598) )
))
(declare-fun lt!875817 () Unit!41597)

(declare-fun mainMatchTheorem!972 (Regex!7123 List!28484) Unit!41597)

(assert (=> b!2423650 (= lt!875817 (mainMatchTheorem!972 r!13927 s!9460))))

(declare-fun b!2423651 () Bool)

(declare-fun e!1541777 () Bool)

(assert (=> b!2423651 e!1541777))

(declare-fun res!1029353 () Bool)

(assert (=> b!2423651 (=> (not res!1029353) (not e!1541777))))

(assert (=> b!2423651 (= res!1029353 call!148218)))

(declare-fun lt!875818 () Unit!41597)

(declare-fun lt!875819 () tuple2!28026)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!72 (Regex!7123 Regex!7123 List!28484 List!28484 List!28484) Unit!41597)

(assert (=> b!2423651 (= lt!875818 (lemmaFindSeparationIsDefinedThenConcatMatches!72 lt!875822 EmptyExpr!7123 (_1!16554 lt!875819) (_2!16554 lt!875819) s!9460))))

(declare-fun get!8737 (Option!5624) tuple2!28026)

(assert (=> b!2423651 (= lt!875819 (get!8737 lt!875820))))

(declare-fun e!1541776 () Unit!41597)

(declare-fun Unit!41599 () Unit!41597)

(assert (=> b!2423651 (= e!1541776 Unit!41599)))

(declare-fun b!2423652 () Bool)

(declare-fun e!1541778 () Bool)

(assert (=> b!2423652 (= e!1541778 call!148217)))

(declare-fun b!2423653 () Bool)

(declare-fun e!1541784 () Unit!41597)

(declare-fun Unit!41600 () Unit!41597)

(assert (=> b!2423653 (= e!1541784 Unit!41600)))

(declare-fun lt!875809 () Unit!41597)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!98 (Regex!7123 Regex!7123 List!28484 List!28484) Unit!41597)

(assert (=> b!2423653 (= lt!875809 (lemmaTwoRegexMatchThenConcatMatchesConcatString!98 lt!875822 EmptyExpr!7123 s!9460 Nil!28386))))

(assert (=> b!2423653 (= lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123))))

(declare-fun res!1029350 () Bool)

(assert (=> b!2423653 (= res!1029350 (matchR!3240 lt!875816 call!148222))))

(assert (=> b!2423653 (=> (not res!1029350) (not e!1541772))))

(assert (=> b!2423653 e!1541772))

(declare-fun lt!875812 () Unit!41597)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!72 (Regex!7123 Regex!7123 List!28484) Unit!41597)

(assert (=> b!2423653 (= lt!875812 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!72 lt!875822 EmptyExpr!7123 s!9460))))

(declare-fun res!1029349 () Bool)

(assert (=> b!2423653 (= res!1029349 call!148220)))

(assert (=> b!2423653 (=> (not res!1029349) (not e!1541778))))

(assert (=> b!2423653 e!1541778))

(declare-fun b!2423654 () Bool)

(declare-fun Unit!41601 () Unit!41597)

(assert (=> b!2423654 (= e!1541784 Unit!41601)))

(declare-fun call!148219 () Option!5624)

(assert (=> b!2423654 (= lt!875820 call!148219)))

(declare-fun lt!875815 () Bool)

(assert (=> b!2423654 (= lt!875815 call!148217)))

(declare-fun c!386464 () Bool)

(assert (=> b!2423654 (= c!386464 lt!875815)))

(declare-fun lt!875821 () Unit!41597)

(assert (=> b!2423654 (= lt!875821 e!1541776)))

(declare-fun res!1029345 () Bool)

(assert (=> b!2423654 (= res!1029345 (not lt!875815))))

(assert (=> b!2423654 (=> (not res!1029345) (not e!1541780))))

(assert (=> b!2423654 e!1541780))

(declare-fun bm!148215 () Bool)

(assert (=> bm!148215 (= call!148219 (findConcatSeparation!732 lt!875822 EmptyExpr!7123 Nil!28386 s!9460 s!9460))))

(declare-fun b!2423655 () Bool)

(declare-fun e!1541773 () Bool)

(assert (=> b!2423655 (= e!1541785 e!1541773)))

(declare-fun res!1029347 () Bool)

(assert (=> b!2423655 (=> res!1029347 e!1541773)))

(assert (=> b!2423655 (= res!1029347 e!1541775)))

(declare-fun c!386462 () Bool)

(assert (=> b!2423655 (= c!386462 ((_ is Cons!28387) l!9164))))

(declare-fun lt!875814 () Unit!41597)

(assert (=> b!2423655 (= lt!875814 e!1541784)))

(assert (=> b!2423655 (= c!386463 (matchR!3240 lt!875822 s!9460))))

(declare-fun head!5457 (List!28485) Regex!7123)

(assert (=> b!2423655 (= lt!875822 (head!5457 l!9164))))

(declare-fun b!2423656 () Bool)

(declare-fun res!1029352 () Bool)

(assert (=> b!2423656 (=> (not res!1029352) (not e!1541783))))

(assert (=> b!2423656 (= res!1029352 (= r!13927 (generalisedConcat!224 l!9164)))))

(declare-fun b!2423657 () Bool)

(assert (=> b!2423657 (= e!1541773 (forall!5757 (t!208462 l!9164) lambda!91285))))

(declare-fun b!2423658 () Bool)

(declare-fun Unit!41602 () Unit!41597)

(assert (=> b!2423658 (= e!1541776 Unit!41602)))

(declare-fun b!2423659 () Bool)

(declare-fun res!1029351 () Bool)

(assert (=> b!2423659 (=> res!1029351 e!1541773)))

(assert (=> b!2423659 (= res!1029351 (not ((_ is Cons!28387) l!9164)))))

(declare-fun bm!148216 () Bool)

(declare-fun ++!7044 (List!28484 List!28484) List!28484)

(assert (=> bm!148216 (= call!148222 (++!7044 (ite c!386463 s!9460 (_1!16554 lt!875819)) (ite c!386463 Nil!28386 (_2!16554 lt!875819))))))

(declare-fun b!2423660 () Bool)

(declare-fun res!1029346 () Bool)

(assert (=> b!2423660 (=> res!1029346 e!1541781)))

(assert (=> b!2423660 (= res!1029346 (isEmpty!16415 l!9164))))

(declare-fun b!2423661 () Bool)

(assert (=> b!2423661 (= e!1541775 (not (= lt!875810 (isDefined!4450 (findConcatSeparation!732 (h!33788 l!9164) (generalisedConcat!224 (t!208462 l!9164)) Nil!28386 s!9460 s!9460)))))))

(declare-fun b!2423662 () Bool)

(assert (=> b!2423662 (= e!1541777 false)))

(declare-fun bm!148217 () Bool)

(assert (=> bm!148217 (= call!148220 (isDefined!4450 (ite c!386463 call!148219 call!148221)))))

(assert (= (and start!237392 res!1029348) b!2423656))

(assert (= (and b!2423656 res!1029352) b!2423650))

(assert (= (and b!2423650 (not res!1029354)) b!2423660))

(assert (= (and b!2423660 (not res!1029346)) b!2423647))

(assert (= (and b!2423647 (not res!1029356)) b!2423643))

(assert (= (and b!2423643 (not res!1029355)) b!2423655))

(assert (= (and b!2423655 c!386463) b!2423653))

(assert (= (and b!2423655 (not c!386463)) b!2423654))

(assert (= (and b!2423653 res!1029350) b!2423646))

(assert (= (and b!2423653 res!1029349) b!2423652))

(assert (= (and b!2423654 c!386464) b!2423651))

(assert (= (and b!2423654 (not c!386464)) b!2423658))

(assert (= (and b!2423651 res!1029353) b!2423662))

(assert (= (and b!2423654 res!1029345) b!2423648))

(assert (= (or b!2423652 b!2423648) bm!148212))

(assert (= (or b!2423653 b!2423651) bm!148216))

(assert (= (or b!2423653 b!2423654) bm!148215))

(assert (= (or b!2423652 b!2423654) bm!148214))

(assert (= (or b!2423646 b!2423651) bm!148213))

(assert (= (or b!2423653 b!2423648) bm!148217))

(assert (= (and b!2423655 c!386462) b!2423661))

(assert (= (and b!2423655 (not c!386462)) b!2423639))

(assert (= (and b!2423655 (not res!1029347)) b!2423659))

(assert (= (and b!2423659 (not res!1029351)) b!2423657))

(assert (= (and start!237392 ((_ is Cons!28387) l!9164)) b!2423645))

(assert (= (and start!237392 ((_ is ElementMatch!7123) r!13927)) b!2423649))

(assert (= (and start!237392 ((_ is Concat!11759) r!13927)) b!2423644))

(assert (= (and start!237392 ((_ is Star!7123) r!13927)) b!2423642))

(assert (= (and start!237392 ((_ is Union!7123) r!13927)) b!2423640))

(assert (= (and start!237392 ((_ is Cons!28386) s!9460)) b!2423641))

(declare-fun m!2809481 () Bool)

(assert (=> bm!148217 m!2809481))

(declare-fun m!2809483 () Bool)

(assert (=> bm!148216 m!2809483))

(declare-fun m!2809485 () Bool)

(assert (=> b!2423660 m!2809485))

(declare-fun m!2809487 () Bool)

(assert (=> b!2423639 m!2809487))

(declare-fun m!2809489 () Bool)

(assert (=> b!2423653 m!2809489))

(declare-fun m!2809491 () Bool)

(assert (=> b!2423653 m!2809491))

(declare-fun m!2809493 () Bool)

(assert (=> b!2423653 m!2809493))

(declare-fun m!2809495 () Bool)

(assert (=> b!2423647 m!2809495))

(declare-fun m!2809497 () Bool)

(assert (=> b!2423647 m!2809497))

(declare-fun m!2809499 () Bool)

(assert (=> bm!148214 m!2809499))

(declare-fun m!2809501 () Bool)

(assert (=> b!2423643 m!2809501))

(declare-fun m!2809503 () Bool)

(assert (=> b!2423657 m!2809503))

(declare-fun m!2809505 () Bool)

(assert (=> b!2423661 m!2809505))

(assert (=> b!2423661 m!2809505))

(declare-fun m!2809507 () Bool)

(assert (=> b!2423661 m!2809507))

(assert (=> b!2423661 m!2809507))

(declare-fun m!2809509 () Bool)

(assert (=> b!2423661 m!2809509))

(declare-fun m!2809511 () Bool)

(assert (=> bm!148215 m!2809511))

(declare-fun m!2809513 () Bool)

(assert (=> b!2423650 m!2809513))

(declare-fun m!2809515 () Bool)

(assert (=> b!2423650 m!2809515))

(declare-fun m!2809517 () Bool)

(assert (=> b!2423650 m!2809517))

(declare-fun m!2809519 () Bool)

(assert (=> bm!148212 m!2809519))

(declare-fun m!2809521 () Bool)

(assert (=> b!2423656 m!2809521))

(declare-fun m!2809523 () Bool)

(assert (=> b!2423655 m!2809523))

(declare-fun m!2809525 () Bool)

(assert (=> b!2423655 m!2809525))

(declare-fun m!2809527 () Bool)

(assert (=> start!237392 m!2809527))

(declare-fun m!2809529 () Bool)

(assert (=> b!2423651 m!2809529))

(declare-fun m!2809531 () Bool)

(assert (=> b!2423651 m!2809531))

(declare-fun m!2809533 () Bool)

(assert (=> bm!148213 m!2809533))

(check-sat (not bm!148212) (not b!2423655) (not b!2423643) (not b!2423641) tp_is_empty!11659 (not b!2423644) (not b!2423645) (not b!2423642) (not b!2423660) (not b!2423661) (not bm!148217) (not b!2423651) (not b!2423650) (not b!2423640) (not bm!148215) (not b!2423656) (not bm!148216) (not b!2423647) (not bm!148214) (not start!237392) (not bm!148213) (not b!2423653) (not b!2423639) (not b!2423657))
(check-sat)
(get-model)

(declare-fun bs!463821 () Bool)

(declare-fun d!702206 () Bool)

(assert (= bs!463821 (and d!702206 start!237392)))

(declare-fun lambda!91288 () Int)

(assert (=> bs!463821 (= lambda!91288 lambda!91285)))

(declare-fun b!2423683 () Bool)

(declare-fun e!1541799 () Bool)

(declare-fun lt!875825 () Regex!7123)

(declare-fun isEmptyExpr!177 (Regex!7123) Bool)

(assert (=> b!2423683 (= e!1541799 (isEmptyExpr!177 lt!875825))))

(declare-fun b!2423684 () Bool)

(declare-fun e!1541800 () Bool)

(assert (=> b!2423684 (= e!1541800 (isEmpty!16415 (t!208462 l!9164)))))

(declare-fun b!2423685 () Bool)

(declare-fun e!1541803 () Bool)

(assert (=> b!2423685 (= e!1541803 (= lt!875825 (head!5457 l!9164)))))

(declare-fun b!2423686 () Bool)

(assert (=> b!2423686 (= e!1541799 e!1541803)))

(declare-fun c!386474 () Bool)

(assert (=> b!2423686 (= c!386474 (isEmpty!16415 (tail!3729 l!9164)))))

(declare-fun b!2423687 () Bool)

(declare-fun e!1541801 () Regex!7123)

(assert (=> b!2423687 (= e!1541801 (h!33788 l!9164))))

(declare-fun e!1541802 () Bool)

(assert (=> d!702206 e!1541802))

(declare-fun res!1029362 () Bool)

(assert (=> d!702206 (=> (not res!1029362) (not e!1541802))))

(declare-fun validRegex!2842 (Regex!7123) Bool)

(assert (=> d!702206 (= res!1029362 (validRegex!2842 lt!875825))))

(assert (=> d!702206 (= lt!875825 e!1541801)))

(declare-fun c!386477 () Bool)

(assert (=> d!702206 (= c!386477 e!1541800)))

(declare-fun res!1029361 () Bool)

(assert (=> d!702206 (=> (not res!1029361) (not e!1541800))))

(assert (=> d!702206 (= res!1029361 ((_ is Cons!28387) l!9164))))

(assert (=> d!702206 (forall!5757 l!9164 lambda!91288)))

(assert (=> d!702206 (= (generalisedConcat!224 l!9164) lt!875825)))

(declare-fun b!2423688 () Bool)

(declare-fun e!1541804 () Regex!7123)

(assert (=> b!2423688 (= e!1541804 EmptyExpr!7123)))

(declare-fun b!2423689 () Bool)

(declare-fun isConcat!177 (Regex!7123) Bool)

(assert (=> b!2423689 (= e!1541803 (isConcat!177 lt!875825))))

(declare-fun b!2423690 () Bool)

(assert (=> b!2423690 (= e!1541801 e!1541804)))

(declare-fun c!386475 () Bool)

(assert (=> b!2423690 (= c!386475 ((_ is Cons!28387) l!9164))))

(declare-fun b!2423691 () Bool)

(assert (=> b!2423691 (= e!1541804 (Concat!11759 (h!33788 l!9164) (generalisedConcat!224 (t!208462 l!9164))))))

(declare-fun b!2423692 () Bool)

(assert (=> b!2423692 (= e!1541802 e!1541799)))

(declare-fun c!386476 () Bool)

(assert (=> b!2423692 (= c!386476 (isEmpty!16415 l!9164))))

(assert (= (and d!702206 res!1029361) b!2423684))

(assert (= (and d!702206 c!386477) b!2423687))

(assert (= (and d!702206 (not c!386477)) b!2423690))

(assert (= (and b!2423690 c!386475) b!2423691))

(assert (= (and b!2423690 (not c!386475)) b!2423688))

(assert (= (and d!702206 res!1029362) b!2423692))

(assert (= (and b!2423692 c!386476) b!2423683))

(assert (= (and b!2423692 (not c!386476)) b!2423686))

(assert (= (and b!2423686 c!386474) b!2423685))

(assert (= (and b!2423686 (not c!386474)) b!2423689))

(assert (=> b!2423685 m!2809525))

(assert (=> b!2423692 m!2809485))

(declare-fun m!2809535 () Bool)

(assert (=> d!702206 m!2809535))

(declare-fun m!2809537 () Bool)

(assert (=> d!702206 m!2809537))

(declare-fun m!2809539 () Bool)

(assert (=> b!2423683 m!2809539))

(declare-fun m!2809541 () Bool)

(assert (=> b!2423684 m!2809541))

(declare-fun m!2809543 () Bool)

(assert (=> b!2423689 m!2809543))

(assert (=> b!2423691 m!2809505))

(assert (=> b!2423686 m!2809497))

(assert (=> b!2423686 m!2809497))

(declare-fun m!2809545 () Bool)

(assert (=> b!2423686 m!2809545))

(assert (=> b!2423656 d!702206))

(declare-fun d!702208 () Bool)

(assert (=> d!702208 (= (isEmpty!16414 s!9460) ((_ is Nil!28386) s!9460))))

(assert (=> b!2423639 d!702208))

(declare-fun d!702210 () Bool)

(declare-fun isEmpty!16416 (Option!5624) Bool)

(assert (=> d!702210 (= (isDefined!4450 (ite c!386463 call!148221 lt!875820)) (not (isEmpty!16416 (ite c!386463 call!148221 lt!875820))))))

(declare-fun bs!463822 () Bool)

(assert (= bs!463822 d!702210))

(declare-fun m!2809547 () Bool)

(assert (=> bs!463822 m!2809547))

(assert (=> bm!148214 d!702210))

(declare-fun d!702212 () Bool)

(assert (=> d!702212 (= (isEmpty!16415 lt!875813) ((_ is Nil!28387) lt!875813))))

(assert (=> b!2423647 d!702212))

(declare-fun d!702214 () Bool)

(assert (=> d!702214 (= (tail!3729 l!9164) (t!208462 l!9164))))

(assert (=> b!2423647 d!702214))

(declare-fun d!702216 () Bool)

(declare-fun res!1029367 () Bool)

(declare-fun e!1541809 () Bool)

(assert (=> d!702216 (=> res!1029367 e!1541809)))

(assert (=> d!702216 (= res!1029367 ((_ is Nil!28387) (t!208462 l!9164)))))

(assert (=> d!702216 (= (forall!5757 (t!208462 l!9164) lambda!91285) e!1541809)))

(declare-fun b!2423697 () Bool)

(declare-fun e!1541810 () Bool)

(assert (=> b!2423697 (= e!1541809 e!1541810)))

(declare-fun res!1029368 () Bool)

(assert (=> b!2423697 (=> (not res!1029368) (not e!1541810))))

(declare-fun dynLambda!12216 (Int Regex!7123) Bool)

(assert (=> b!2423697 (= res!1029368 (dynLambda!12216 lambda!91285 (h!33788 (t!208462 l!9164))))))

(declare-fun b!2423698 () Bool)

(assert (=> b!2423698 (= e!1541810 (forall!5757 (t!208462 (t!208462 l!9164)) lambda!91285))))

(assert (= (and d!702216 (not res!1029367)) b!2423697))

(assert (= (and b!2423697 res!1029368) b!2423698))

(declare-fun b_lambda!74667 () Bool)

(assert (=> (not b_lambda!74667) (not b!2423697)))

(declare-fun m!2809549 () Bool)

(assert (=> b!2423697 m!2809549))

(declare-fun m!2809551 () Bool)

(assert (=> b!2423698 m!2809551))

(assert (=> b!2423657 d!702216))

(declare-fun d!702218 () Bool)

(assert (=> d!702218 (= (isDefined!4450 (ite c!386463 call!148219 call!148221)) (not (isEmpty!16416 (ite c!386463 call!148219 call!148221))))))

(declare-fun bs!463823 () Bool)

(assert (= bs!463823 d!702218))

(declare-fun m!2809553 () Bool)

(assert (=> bs!463823 m!2809553))

(assert (=> bm!148217 d!702218))

(declare-fun d!702220 () Bool)

(declare-fun res!1029369 () Bool)

(declare-fun e!1541811 () Bool)

(assert (=> d!702220 (=> res!1029369 e!1541811)))

(assert (=> d!702220 (= res!1029369 ((_ is Nil!28387) l!9164))))

(assert (=> d!702220 (= (forall!5757 l!9164 lambda!91285) e!1541811)))

(declare-fun b!2423699 () Bool)

(declare-fun e!1541812 () Bool)

(assert (=> b!2423699 (= e!1541811 e!1541812)))

(declare-fun res!1029370 () Bool)

(assert (=> b!2423699 (=> (not res!1029370) (not e!1541812))))

(assert (=> b!2423699 (= res!1029370 (dynLambda!12216 lambda!91285 (h!33788 l!9164)))))

(declare-fun b!2423700 () Bool)

(assert (=> b!2423700 (= e!1541812 (forall!5757 (t!208462 l!9164) lambda!91285))))

(assert (= (and d!702220 (not res!1029369)) b!2423699))

(assert (= (and b!2423699 res!1029370) b!2423700))

(declare-fun b_lambda!74669 () Bool)

(assert (=> (not b_lambda!74669) (not b!2423699)))

(declare-fun m!2809555 () Bool)

(assert (=> b!2423699 m!2809555))

(assert (=> b!2423700 m!2809503))

(assert (=> start!237392 d!702220))

(declare-fun b!2423729 () Bool)

(declare-fun e!1541831 () Bool)

(declare-fun e!1541832 () Bool)

(assert (=> b!2423729 (= e!1541831 e!1541832)))

(declare-fun c!386486 () Bool)

(assert (=> b!2423729 (= c!386486 ((_ is EmptyLang!7123) lt!875822))))

(declare-fun b!2423730 () Bool)

(declare-fun res!1029393 () Bool)

(declare-fun e!1541833 () Bool)

(assert (=> b!2423730 (=> res!1029393 e!1541833)))

(declare-fun e!1541829 () Bool)

(assert (=> b!2423730 (= res!1029393 e!1541829)))

(declare-fun res!1029390 () Bool)

(assert (=> b!2423730 (=> (not res!1029390) (not e!1541829))))

(declare-fun lt!875828 () Bool)

(assert (=> b!2423730 (= res!1029390 lt!875828)))

(declare-fun b!2423732 () Bool)

(declare-fun e!1541827 () Bool)

(declare-fun head!5458 (List!28484) C!14404)

(assert (=> b!2423732 (= e!1541827 (not (= (head!5458 s!9460) (c!386465 lt!875822))))))

(declare-fun b!2423733 () Bool)

(assert (=> b!2423733 (= e!1541832 (not lt!875828))))

(declare-fun b!2423734 () Bool)

(declare-fun res!1029388 () Bool)

(assert (=> b!2423734 (=> res!1029388 e!1541833)))

(assert (=> b!2423734 (= res!1029388 (not ((_ is ElementMatch!7123) lt!875822)))))

(assert (=> b!2423734 (= e!1541832 e!1541833)))

(declare-fun b!2423735 () Bool)

(declare-fun call!148225 () Bool)

(assert (=> b!2423735 (= e!1541831 (= lt!875828 call!148225))))

(declare-fun b!2423736 () Bool)

(assert (=> b!2423736 (= e!1541829 (= (head!5458 s!9460) (c!386465 lt!875822)))))

(declare-fun d!702222 () Bool)

(assert (=> d!702222 e!1541831))

(declare-fun c!386485 () Bool)

(assert (=> d!702222 (= c!386485 ((_ is EmptyExpr!7123) lt!875822))))

(declare-fun e!1541830 () Bool)

(assert (=> d!702222 (= lt!875828 e!1541830)))

(declare-fun c!386484 () Bool)

(assert (=> d!702222 (= c!386484 (isEmpty!16414 s!9460))))

(assert (=> d!702222 (validRegex!2842 lt!875822)))

(assert (=> d!702222 (= (matchR!3240 lt!875822 s!9460) lt!875828)))

(declare-fun b!2423731 () Bool)

(declare-fun res!1029387 () Bool)

(assert (=> b!2423731 (=> (not res!1029387) (not e!1541829))))

(declare-fun tail!3730 (List!28484) List!28484)

(assert (=> b!2423731 (= res!1029387 (isEmpty!16414 (tail!3730 s!9460)))))

(declare-fun b!2423737 () Bool)

(declare-fun e!1541828 () Bool)

(assert (=> b!2423737 (= e!1541828 e!1541827)))

(declare-fun res!1029394 () Bool)

(assert (=> b!2423737 (=> res!1029394 e!1541827)))

(assert (=> b!2423737 (= res!1029394 call!148225)))

(declare-fun b!2423738 () Bool)

(declare-fun res!1029389 () Bool)

(assert (=> b!2423738 (=> res!1029389 e!1541827)))

(assert (=> b!2423738 (= res!1029389 (not (isEmpty!16414 (tail!3730 s!9460))))))

(declare-fun b!2423739 () Bool)

(declare-fun nullable!2157 (Regex!7123) Bool)

(assert (=> b!2423739 (= e!1541830 (nullable!2157 lt!875822))))

(declare-fun b!2423740 () Bool)

(declare-fun res!1029391 () Bool)

(assert (=> b!2423740 (=> (not res!1029391) (not e!1541829))))

(assert (=> b!2423740 (= res!1029391 (not call!148225))))

(declare-fun b!2423741 () Bool)

(assert (=> b!2423741 (= e!1541833 e!1541828)))

(declare-fun res!1029392 () Bool)

(assert (=> b!2423741 (=> (not res!1029392) (not e!1541828))))

(assert (=> b!2423741 (= res!1029392 (not lt!875828))))

(declare-fun b!2423742 () Bool)

(declare-fun derivativeStep!1814 (Regex!7123 C!14404) Regex!7123)

(assert (=> b!2423742 (= e!1541830 (matchR!3240 (derivativeStep!1814 lt!875822 (head!5458 s!9460)) (tail!3730 s!9460)))))

(declare-fun bm!148220 () Bool)

(assert (=> bm!148220 (= call!148225 (isEmpty!16414 s!9460))))

(assert (= (and d!702222 c!386484) b!2423739))

(assert (= (and d!702222 (not c!386484)) b!2423742))

(assert (= (and d!702222 c!386485) b!2423735))

(assert (= (and d!702222 (not c!386485)) b!2423729))

(assert (= (and b!2423729 c!386486) b!2423733))

(assert (= (and b!2423729 (not c!386486)) b!2423734))

(assert (= (and b!2423734 (not res!1029388)) b!2423730))

(assert (= (and b!2423730 res!1029390) b!2423740))

(assert (= (and b!2423740 res!1029391) b!2423731))

(assert (= (and b!2423731 res!1029387) b!2423736))

(assert (= (and b!2423730 (not res!1029393)) b!2423741))

(assert (= (and b!2423741 res!1029392) b!2423737))

(assert (= (and b!2423737 (not res!1029394)) b!2423738))

(assert (= (and b!2423738 (not res!1029389)) b!2423732))

(assert (= (or b!2423735 b!2423737 b!2423740) bm!148220))

(declare-fun m!2809557 () Bool)

(assert (=> b!2423742 m!2809557))

(assert (=> b!2423742 m!2809557))

(declare-fun m!2809559 () Bool)

(assert (=> b!2423742 m!2809559))

(declare-fun m!2809561 () Bool)

(assert (=> b!2423742 m!2809561))

(assert (=> b!2423742 m!2809559))

(assert (=> b!2423742 m!2809561))

(declare-fun m!2809563 () Bool)

(assert (=> b!2423742 m!2809563))

(assert (=> b!2423731 m!2809561))

(assert (=> b!2423731 m!2809561))

(declare-fun m!2809565 () Bool)

(assert (=> b!2423731 m!2809565))

(declare-fun m!2809567 () Bool)

(assert (=> b!2423739 m!2809567))

(assert (=> b!2423736 m!2809557))

(assert (=> b!2423738 m!2809561))

(assert (=> b!2423738 m!2809561))

(assert (=> b!2423738 m!2809565))

(assert (=> bm!148220 m!2809487))

(assert (=> d!702222 m!2809487))

(declare-fun m!2809569 () Bool)

(assert (=> d!702222 m!2809569))

(assert (=> b!2423732 m!2809557))

(assert (=> b!2423655 d!702222))

(declare-fun d!702224 () Bool)

(assert (=> d!702224 (= (head!5457 l!9164) (h!33788 l!9164))))

(assert (=> b!2423655 d!702224))

(declare-fun b!2423769 () Bool)

(declare-fun e!1541854 () Option!5624)

(assert (=> b!2423769 (= e!1541854 (Some!5623 (tuple2!28027 Nil!28386 s!9460)))))

(declare-fun b!2423770 () Bool)

(declare-fun e!1541852 () Bool)

(declare-fun lt!875835 () Option!5624)

(assert (=> b!2423770 (= e!1541852 (not (isDefined!4450 lt!875835)))))

(declare-fun b!2423771 () Bool)

(declare-fun lt!875837 () Unit!41597)

(declare-fun lt!875836 () Unit!41597)

(assert (=> b!2423771 (= lt!875837 lt!875836)))

(assert (=> b!2423771 (= (++!7044 (++!7044 Nil!28386 (Cons!28386 (h!33787 s!9460) Nil!28386)) (t!208461 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!669 (List!28484 C!14404 List!28484 List!28484) Unit!41597)

(assert (=> b!2423771 (= lt!875836 (lemmaMoveElementToOtherListKeepsConcatEq!669 Nil!28386 (h!33787 s!9460) (t!208461 s!9460) s!9460))))

(declare-fun e!1541853 () Option!5624)

(assert (=> b!2423771 (= e!1541853 (findConcatSeparation!732 lt!875822 EmptyExpr!7123 (++!7044 Nil!28386 (Cons!28386 (h!33787 s!9460) Nil!28386)) (t!208461 s!9460) s!9460))))

(declare-fun b!2423772 () Bool)

(assert (=> b!2423772 (= e!1541854 e!1541853)))

(declare-fun c!386491 () Bool)

(assert (=> b!2423772 (= c!386491 ((_ is Nil!28386) s!9460))))

(declare-fun b!2423773 () Bool)

(declare-fun e!1541855 () Bool)

(assert (=> b!2423773 (= e!1541855 (= (++!7044 (_1!16554 (get!8737 lt!875835)) (_2!16554 (get!8737 lt!875835))) s!9460))))

(declare-fun d!702226 () Bool)

(assert (=> d!702226 e!1541852))

(declare-fun res!1029414 () Bool)

(assert (=> d!702226 (=> res!1029414 e!1541852)))

(assert (=> d!702226 (= res!1029414 e!1541855)))

(declare-fun res!1029417 () Bool)

(assert (=> d!702226 (=> (not res!1029417) (not e!1541855))))

(assert (=> d!702226 (= res!1029417 (isDefined!4450 lt!875835))))

(assert (=> d!702226 (= lt!875835 e!1541854)))

(declare-fun c!386492 () Bool)

(declare-fun e!1541856 () Bool)

(assert (=> d!702226 (= c!386492 e!1541856)))

(declare-fun res!1029416 () Bool)

(assert (=> d!702226 (=> (not res!1029416) (not e!1541856))))

(assert (=> d!702226 (= res!1029416 (matchR!3240 lt!875822 Nil!28386))))

(assert (=> d!702226 (validRegex!2842 lt!875822)))

(assert (=> d!702226 (= (findConcatSeparation!732 lt!875822 EmptyExpr!7123 Nil!28386 s!9460 s!9460) lt!875835)))

(declare-fun b!2423774 () Bool)

(assert (=> b!2423774 (= e!1541856 (matchR!3240 EmptyExpr!7123 s!9460))))

(declare-fun b!2423775 () Bool)

(declare-fun res!1029415 () Bool)

(assert (=> b!2423775 (=> (not res!1029415) (not e!1541855))))

(assert (=> b!2423775 (= res!1029415 (matchR!3240 EmptyExpr!7123 (_2!16554 (get!8737 lt!875835))))))

(declare-fun b!2423776 () Bool)

(assert (=> b!2423776 (= e!1541853 None!5623)))

(declare-fun b!2423777 () Bool)

(declare-fun res!1029413 () Bool)

(assert (=> b!2423777 (=> (not res!1029413) (not e!1541855))))

(assert (=> b!2423777 (= res!1029413 (matchR!3240 lt!875822 (_1!16554 (get!8737 lt!875835))))))

(assert (= (and d!702226 res!1029416) b!2423774))

(assert (= (and d!702226 c!386492) b!2423769))

(assert (= (and d!702226 (not c!386492)) b!2423772))

(assert (= (and b!2423772 c!386491) b!2423776))

(assert (= (and b!2423772 (not c!386491)) b!2423771))

(assert (= (and d!702226 res!1029417) b!2423777))

(assert (= (and b!2423777 res!1029413) b!2423775))

(assert (= (and b!2423775 res!1029415) b!2423773))

(assert (= (and d!702226 (not res!1029414)) b!2423770))

(declare-fun m!2809577 () Bool)

(assert (=> b!2423773 m!2809577))

(declare-fun m!2809579 () Bool)

(assert (=> b!2423773 m!2809579))

(assert (=> b!2423777 m!2809577))

(declare-fun m!2809581 () Bool)

(assert (=> b!2423777 m!2809581))

(assert (=> b!2423775 m!2809577))

(declare-fun m!2809583 () Bool)

(assert (=> b!2423775 m!2809583))

(declare-fun m!2809585 () Bool)

(assert (=> b!2423770 m!2809585))

(declare-fun m!2809587 () Bool)

(assert (=> b!2423771 m!2809587))

(assert (=> b!2423771 m!2809587))

(declare-fun m!2809589 () Bool)

(assert (=> b!2423771 m!2809589))

(declare-fun m!2809591 () Bool)

(assert (=> b!2423771 m!2809591))

(assert (=> b!2423771 m!2809587))

(declare-fun m!2809593 () Bool)

(assert (=> b!2423771 m!2809593))

(declare-fun m!2809595 () Bool)

(assert (=> b!2423774 m!2809595))

(assert (=> d!702226 m!2809585))

(declare-fun m!2809597 () Bool)

(assert (=> d!702226 m!2809597))

(assert (=> d!702226 m!2809569))

(assert (=> bm!148215 d!702226))

(declare-fun b!2423778 () Bool)

(declare-fun e!1541861 () Bool)

(declare-fun e!1541862 () Bool)

(assert (=> b!2423778 (= e!1541861 e!1541862)))

(declare-fun c!386495 () Bool)

(assert (=> b!2423778 (= c!386495 ((_ is EmptyLang!7123) (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123))))))

(declare-fun b!2423779 () Bool)

(declare-fun res!1029424 () Bool)

(declare-fun e!1541863 () Bool)

(assert (=> b!2423779 (=> res!1029424 e!1541863)))

(declare-fun e!1541859 () Bool)

(assert (=> b!2423779 (= res!1029424 e!1541859)))

(declare-fun res!1029421 () Bool)

(assert (=> b!2423779 (=> (not res!1029421) (not e!1541859))))

(declare-fun lt!875838 () Bool)

(assert (=> b!2423779 (= res!1029421 lt!875838)))

(declare-fun e!1541857 () Bool)

(declare-fun b!2423781 () Bool)

(assert (=> b!2423781 (= e!1541857 (not (= (head!5458 (ite c!386463 s!9460 call!148222)) (c!386465 (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123))))))))

(declare-fun b!2423782 () Bool)

(assert (=> b!2423782 (= e!1541862 (not lt!875838))))

(declare-fun b!2423783 () Bool)

(declare-fun res!1029419 () Bool)

(assert (=> b!2423783 (=> res!1029419 e!1541863)))

(assert (=> b!2423783 (= res!1029419 (not ((_ is ElementMatch!7123) (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123)))))))

(assert (=> b!2423783 (= e!1541862 e!1541863)))

(declare-fun b!2423784 () Bool)

(declare-fun call!148226 () Bool)

(assert (=> b!2423784 (= e!1541861 (= lt!875838 call!148226))))

(declare-fun b!2423785 () Bool)

(assert (=> b!2423785 (= e!1541859 (= (head!5458 (ite c!386463 s!9460 call!148222)) (c!386465 (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123)))))))

(declare-fun d!702234 () Bool)

(assert (=> d!702234 e!1541861))

(declare-fun c!386494 () Bool)

(assert (=> d!702234 (= c!386494 ((_ is EmptyExpr!7123) (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123))))))

(declare-fun e!1541860 () Bool)

(assert (=> d!702234 (= lt!875838 e!1541860)))

(declare-fun c!386493 () Bool)

(assert (=> d!702234 (= c!386493 (isEmpty!16414 (ite c!386463 s!9460 call!148222)))))

(assert (=> d!702234 (validRegex!2842 (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123)))))

(assert (=> d!702234 (= (matchR!3240 (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123)) (ite c!386463 s!9460 call!148222)) lt!875838)))

(declare-fun b!2423780 () Bool)

(declare-fun res!1029418 () Bool)

(assert (=> b!2423780 (=> (not res!1029418) (not e!1541859))))

(assert (=> b!2423780 (= res!1029418 (isEmpty!16414 (tail!3730 (ite c!386463 s!9460 call!148222))))))

(declare-fun b!2423786 () Bool)

(declare-fun e!1541858 () Bool)

(assert (=> b!2423786 (= e!1541858 e!1541857)))

(declare-fun res!1029425 () Bool)

(assert (=> b!2423786 (=> res!1029425 e!1541857)))

(assert (=> b!2423786 (= res!1029425 call!148226)))

(declare-fun b!2423787 () Bool)

(declare-fun res!1029420 () Bool)

(assert (=> b!2423787 (=> res!1029420 e!1541857)))

(assert (=> b!2423787 (= res!1029420 (not (isEmpty!16414 (tail!3730 (ite c!386463 s!9460 call!148222)))))))

(declare-fun b!2423788 () Bool)

(assert (=> b!2423788 (= e!1541860 (nullable!2157 (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123))))))

(declare-fun b!2423789 () Bool)

(declare-fun res!1029422 () Bool)

(assert (=> b!2423789 (=> (not res!1029422) (not e!1541859))))

(assert (=> b!2423789 (= res!1029422 (not call!148226))))

(declare-fun b!2423790 () Bool)

(assert (=> b!2423790 (= e!1541863 e!1541858)))

(declare-fun res!1029423 () Bool)

(assert (=> b!2423790 (=> (not res!1029423) (not e!1541858))))

(assert (=> b!2423790 (= res!1029423 (not lt!875838))))

(declare-fun b!2423791 () Bool)

(assert (=> b!2423791 (= e!1541860 (matchR!3240 (derivativeStep!1814 (ite c!386463 lt!875816 (Concat!11759 lt!875822 EmptyExpr!7123)) (head!5458 (ite c!386463 s!9460 call!148222))) (tail!3730 (ite c!386463 s!9460 call!148222))))))

(declare-fun bm!148221 () Bool)

(assert (=> bm!148221 (= call!148226 (isEmpty!16414 (ite c!386463 s!9460 call!148222)))))

(assert (= (and d!702234 c!386493) b!2423788))

(assert (= (and d!702234 (not c!386493)) b!2423791))

(assert (= (and d!702234 c!386494) b!2423784))

(assert (= (and d!702234 (not c!386494)) b!2423778))

(assert (= (and b!2423778 c!386495) b!2423782))

(assert (= (and b!2423778 (not c!386495)) b!2423783))

(assert (= (and b!2423783 (not res!1029419)) b!2423779))

(assert (= (and b!2423779 res!1029421) b!2423789))

(assert (= (and b!2423789 res!1029422) b!2423780))

(assert (= (and b!2423780 res!1029418) b!2423785))

(assert (= (and b!2423779 (not res!1029424)) b!2423790))

(assert (= (and b!2423790 res!1029423) b!2423786))

(assert (= (and b!2423786 (not res!1029425)) b!2423787))

(assert (= (and b!2423787 (not res!1029420)) b!2423781))

(assert (= (or b!2423784 b!2423786 b!2423789) bm!148221))

(declare-fun m!2809599 () Bool)

(assert (=> b!2423791 m!2809599))

(assert (=> b!2423791 m!2809599))

(declare-fun m!2809601 () Bool)

(assert (=> b!2423791 m!2809601))

(declare-fun m!2809603 () Bool)

(assert (=> b!2423791 m!2809603))

(assert (=> b!2423791 m!2809601))

(assert (=> b!2423791 m!2809603))

(declare-fun m!2809605 () Bool)

(assert (=> b!2423791 m!2809605))

(assert (=> b!2423780 m!2809603))

(assert (=> b!2423780 m!2809603))

(declare-fun m!2809607 () Bool)

(assert (=> b!2423780 m!2809607))

(declare-fun m!2809609 () Bool)

(assert (=> b!2423788 m!2809609))

(assert (=> b!2423785 m!2809599))

(assert (=> b!2423787 m!2809603))

(assert (=> b!2423787 m!2809603))

(assert (=> b!2423787 m!2809607))

(declare-fun m!2809611 () Bool)

(assert (=> bm!148221 m!2809611))

(assert (=> d!702234 m!2809611))

(declare-fun m!2809613 () Bool)

(assert (=> d!702234 m!2809613))

(assert (=> b!2423781 m!2809599))

(assert (=> bm!148213 d!702234))

(declare-fun d!702236 () Bool)

(assert (=> d!702236 (matchR!3240 (Concat!11759 lt!875822 EmptyExpr!7123) (++!7044 (_1!16554 lt!875819) (_2!16554 lt!875819)))))

(declare-fun lt!875843 () Unit!41597)

(declare-fun choose!14351 (Regex!7123 Regex!7123 List!28484 List!28484 List!28484) Unit!41597)

(assert (=> d!702236 (= lt!875843 (choose!14351 lt!875822 EmptyExpr!7123 (_1!16554 lt!875819) (_2!16554 lt!875819) s!9460))))

(assert (=> d!702236 (validRegex!2842 lt!875822)))

(assert (=> d!702236 (= (lemmaFindSeparationIsDefinedThenConcatMatches!72 lt!875822 EmptyExpr!7123 (_1!16554 lt!875819) (_2!16554 lt!875819) s!9460) lt!875843)))

(declare-fun bs!463824 () Bool)

(assert (= bs!463824 d!702236))

(declare-fun m!2809615 () Bool)

(assert (=> bs!463824 m!2809615))

(assert (=> bs!463824 m!2809615))

(declare-fun m!2809617 () Bool)

(assert (=> bs!463824 m!2809617))

(declare-fun m!2809619 () Bool)

(assert (=> bs!463824 m!2809619))

(assert (=> bs!463824 m!2809569))

(assert (=> b!2423651 d!702236))

(declare-fun d!702238 () Bool)

(assert (=> d!702238 (= (get!8737 lt!875820) (v!31031 lt!875820))))

(assert (=> b!2423651 d!702238))

(declare-fun d!702240 () Bool)

(assert (=> d!702240 (= (isEmpty!16415 l!9164) ((_ is Nil!28387) l!9164))))

(assert (=> b!2423660 d!702240))

(declare-fun d!702242 () Bool)

(assert (=> d!702242 (matchR!3240 (Concat!11759 lt!875822 EmptyExpr!7123) (++!7044 s!9460 Nil!28386))))

(declare-fun lt!875847 () Unit!41597)

(declare-fun choose!14352 (Regex!7123 Regex!7123 List!28484 List!28484) Unit!41597)

(assert (=> d!702242 (= lt!875847 (choose!14352 lt!875822 EmptyExpr!7123 s!9460 Nil!28386))))

(declare-fun e!1541887 () Bool)

(assert (=> d!702242 e!1541887))

(declare-fun res!1029452 () Bool)

(assert (=> d!702242 (=> (not res!1029452) (not e!1541887))))

(assert (=> d!702242 (= res!1029452 (validRegex!2842 lt!875822))))

(assert (=> d!702242 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!98 lt!875822 EmptyExpr!7123 s!9460 Nil!28386) lt!875847)))

(declare-fun b!2423836 () Bool)

(assert (=> b!2423836 (= e!1541887 (validRegex!2842 EmptyExpr!7123))))

(assert (= (and d!702242 res!1029452) b!2423836))

(declare-fun m!2809635 () Bool)

(assert (=> d!702242 m!2809635))

(assert (=> d!702242 m!2809635))

(declare-fun m!2809637 () Bool)

(assert (=> d!702242 m!2809637))

(declare-fun m!2809639 () Bool)

(assert (=> d!702242 m!2809639))

(assert (=> d!702242 m!2809569))

(declare-fun m!2809641 () Bool)

(assert (=> b!2423836 m!2809641))

(assert (=> b!2423653 d!702242))

(declare-fun b!2423837 () Bool)

(declare-fun e!1541892 () Bool)

(declare-fun e!1541893 () Bool)

(assert (=> b!2423837 (= e!1541892 e!1541893)))

(declare-fun c!386507 () Bool)

(assert (=> b!2423837 (= c!386507 ((_ is EmptyLang!7123) lt!875816))))

(declare-fun b!2423838 () Bool)

(declare-fun res!1029459 () Bool)

(declare-fun e!1541894 () Bool)

(assert (=> b!2423838 (=> res!1029459 e!1541894)))

(declare-fun e!1541890 () Bool)

(assert (=> b!2423838 (= res!1029459 e!1541890)))

(declare-fun res!1029456 () Bool)

(assert (=> b!2423838 (=> (not res!1029456) (not e!1541890))))

(declare-fun lt!875848 () Bool)

(assert (=> b!2423838 (= res!1029456 lt!875848)))

(declare-fun b!2423840 () Bool)

(declare-fun e!1541888 () Bool)

(assert (=> b!2423840 (= e!1541888 (not (= (head!5458 call!148222) (c!386465 lt!875816))))))

(declare-fun b!2423841 () Bool)

(assert (=> b!2423841 (= e!1541893 (not lt!875848))))

(declare-fun b!2423842 () Bool)

(declare-fun res!1029454 () Bool)

(assert (=> b!2423842 (=> res!1029454 e!1541894)))

(assert (=> b!2423842 (= res!1029454 (not ((_ is ElementMatch!7123) lt!875816)))))

(assert (=> b!2423842 (= e!1541893 e!1541894)))

(declare-fun b!2423843 () Bool)

(declare-fun call!148230 () Bool)

(assert (=> b!2423843 (= e!1541892 (= lt!875848 call!148230))))

(declare-fun b!2423844 () Bool)

(assert (=> b!2423844 (= e!1541890 (= (head!5458 call!148222) (c!386465 lt!875816)))))

(declare-fun d!702248 () Bool)

(assert (=> d!702248 e!1541892))

(declare-fun c!386506 () Bool)

(assert (=> d!702248 (= c!386506 ((_ is EmptyExpr!7123) lt!875816))))

(declare-fun e!1541891 () Bool)

(assert (=> d!702248 (= lt!875848 e!1541891)))

(declare-fun c!386505 () Bool)

(assert (=> d!702248 (= c!386505 (isEmpty!16414 call!148222))))

(assert (=> d!702248 (validRegex!2842 lt!875816)))

(assert (=> d!702248 (= (matchR!3240 lt!875816 call!148222) lt!875848)))

(declare-fun b!2423839 () Bool)

(declare-fun res!1029453 () Bool)

(assert (=> b!2423839 (=> (not res!1029453) (not e!1541890))))

(assert (=> b!2423839 (= res!1029453 (isEmpty!16414 (tail!3730 call!148222)))))

(declare-fun b!2423845 () Bool)

(declare-fun e!1541889 () Bool)

(assert (=> b!2423845 (= e!1541889 e!1541888)))

(declare-fun res!1029460 () Bool)

(assert (=> b!2423845 (=> res!1029460 e!1541888)))

(assert (=> b!2423845 (= res!1029460 call!148230)))

(declare-fun b!2423846 () Bool)

(declare-fun res!1029455 () Bool)

(assert (=> b!2423846 (=> res!1029455 e!1541888)))

(assert (=> b!2423846 (= res!1029455 (not (isEmpty!16414 (tail!3730 call!148222))))))

(declare-fun b!2423847 () Bool)

(assert (=> b!2423847 (= e!1541891 (nullable!2157 lt!875816))))

(declare-fun b!2423848 () Bool)

(declare-fun res!1029457 () Bool)

(assert (=> b!2423848 (=> (not res!1029457) (not e!1541890))))

(assert (=> b!2423848 (= res!1029457 (not call!148230))))

(declare-fun b!2423849 () Bool)

(assert (=> b!2423849 (= e!1541894 e!1541889)))

(declare-fun res!1029458 () Bool)

(assert (=> b!2423849 (=> (not res!1029458) (not e!1541889))))

(assert (=> b!2423849 (= res!1029458 (not lt!875848))))

(declare-fun b!2423850 () Bool)

(assert (=> b!2423850 (= e!1541891 (matchR!3240 (derivativeStep!1814 lt!875816 (head!5458 call!148222)) (tail!3730 call!148222)))))

(declare-fun bm!148225 () Bool)

(assert (=> bm!148225 (= call!148230 (isEmpty!16414 call!148222))))

(assert (= (and d!702248 c!386505) b!2423847))

(assert (= (and d!702248 (not c!386505)) b!2423850))

(assert (= (and d!702248 c!386506) b!2423843))

(assert (= (and d!702248 (not c!386506)) b!2423837))

(assert (= (and b!2423837 c!386507) b!2423841))

(assert (= (and b!2423837 (not c!386507)) b!2423842))

(assert (= (and b!2423842 (not res!1029454)) b!2423838))

(assert (= (and b!2423838 res!1029456) b!2423848))

(assert (= (and b!2423848 res!1029457) b!2423839))

(assert (= (and b!2423839 res!1029453) b!2423844))

(assert (= (and b!2423838 (not res!1029459)) b!2423849))

(assert (= (and b!2423849 res!1029458) b!2423845))

(assert (= (and b!2423845 (not res!1029460)) b!2423846))

(assert (= (and b!2423846 (not res!1029455)) b!2423840))

(assert (= (or b!2423843 b!2423845 b!2423848) bm!148225))

(declare-fun m!2809643 () Bool)

(assert (=> b!2423850 m!2809643))

(assert (=> b!2423850 m!2809643))

(declare-fun m!2809645 () Bool)

(assert (=> b!2423850 m!2809645))

(declare-fun m!2809647 () Bool)

(assert (=> b!2423850 m!2809647))

(assert (=> b!2423850 m!2809645))

(assert (=> b!2423850 m!2809647))

(declare-fun m!2809649 () Bool)

(assert (=> b!2423850 m!2809649))

(assert (=> b!2423839 m!2809647))

(assert (=> b!2423839 m!2809647))

(declare-fun m!2809651 () Bool)

(assert (=> b!2423839 m!2809651))

(declare-fun m!2809653 () Bool)

(assert (=> b!2423847 m!2809653))

(assert (=> b!2423844 m!2809643))

(assert (=> b!2423846 m!2809647))

(assert (=> b!2423846 m!2809647))

(assert (=> b!2423846 m!2809651))

(declare-fun m!2809655 () Bool)

(assert (=> bm!148225 m!2809655))

(assert (=> d!702248 m!2809655))

(declare-fun m!2809657 () Bool)

(assert (=> d!702248 m!2809657))

(assert (=> b!2423840 m!2809643))

(assert (=> b!2423653 d!702248))

(declare-fun d!702250 () Bool)

(assert (=> d!702250 (isDefined!4450 (findConcatSeparation!732 lt!875822 EmptyExpr!7123 Nil!28386 s!9460 s!9460))))

(declare-fun lt!875854 () Unit!41597)

(declare-fun choose!14353 (Regex!7123 Regex!7123 List!28484) Unit!41597)

(assert (=> d!702250 (= lt!875854 (choose!14353 lt!875822 EmptyExpr!7123 s!9460))))

(assert (=> d!702250 (validRegex!2842 lt!875822)))

(assert (=> d!702250 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!72 lt!875822 EmptyExpr!7123 s!9460) lt!875854)))

(declare-fun bs!463826 () Bool)

(assert (= bs!463826 d!702250))

(assert (=> bs!463826 m!2809511))

(assert (=> bs!463826 m!2809511))

(declare-fun m!2809675 () Bool)

(assert (=> bs!463826 m!2809675))

(declare-fun m!2809677 () Bool)

(assert (=> bs!463826 m!2809677))

(assert (=> bs!463826 m!2809569))

(assert (=> b!2423653 d!702250))

(declare-fun d!702256 () Bool)

(assert (=> d!702256 (= (isDefined!4450 (findConcatSeparation!732 (h!33788 l!9164) (generalisedConcat!224 (t!208462 l!9164)) Nil!28386 s!9460 s!9460)) (not (isEmpty!16416 (findConcatSeparation!732 (h!33788 l!9164) (generalisedConcat!224 (t!208462 l!9164)) Nil!28386 s!9460 s!9460))))))

(declare-fun bs!463827 () Bool)

(assert (= bs!463827 d!702256))

(assert (=> bs!463827 m!2809507))

(declare-fun m!2809679 () Bool)

(assert (=> bs!463827 m!2809679))

(assert (=> b!2423661 d!702256))

(declare-fun b!2423863 () Bool)

(declare-fun e!1541903 () Option!5624)

(assert (=> b!2423863 (= e!1541903 (Some!5623 (tuple2!28027 Nil!28386 s!9460)))))

(declare-fun b!2423864 () Bool)

(declare-fun e!1541901 () Bool)

(declare-fun lt!875855 () Option!5624)

(assert (=> b!2423864 (= e!1541901 (not (isDefined!4450 lt!875855)))))

(declare-fun b!2423865 () Bool)

(declare-fun lt!875857 () Unit!41597)

(declare-fun lt!875856 () Unit!41597)

(assert (=> b!2423865 (= lt!875857 lt!875856)))

(assert (=> b!2423865 (= (++!7044 (++!7044 Nil!28386 (Cons!28386 (h!33787 s!9460) Nil!28386)) (t!208461 s!9460)) s!9460)))

(assert (=> b!2423865 (= lt!875856 (lemmaMoveElementToOtherListKeepsConcatEq!669 Nil!28386 (h!33787 s!9460) (t!208461 s!9460) s!9460))))

(declare-fun e!1541902 () Option!5624)

(assert (=> b!2423865 (= e!1541902 (findConcatSeparation!732 (h!33788 l!9164) (generalisedConcat!224 (t!208462 l!9164)) (++!7044 Nil!28386 (Cons!28386 (h!33787 s!9460) Nil!28386)) (t!208461 s!9460) s!9460))))

(declare-fun b!2423866 () Bool)

(assert (=> b!2423866 (= e!1541903 e!1541902)))

(declare-fun c!386511 () Bool)

(assert (=> b!2423866 (= c!386511 ((_ is Nil!28386) s!9460))))

(declare-fun b!2423867 () Bool)

(declare-fun e!1541904 () Bool)

(assert (=> b!2423867 (= e!1541904 (= (++!7044 (_1!16554 (get!8737 lt!875855)) (_2!16554 (get!8737 lt!875855))) s!9460))))

(declare-fun d!702258 () Bool)

(assert (=> d!702258 e!1541901))

(declare-fun res!1029468 () Bool)

(assert (=> d!702258 (=> res!1029468 e!1541901)))

(assert (=> d!702258 (= res!1029468 e!1541904)))

(declare-fun res!1029471 () Bool)

(assert (=> d!702258 (=> (not res!1029471) (not e!1541904))))

(assert (=> d!702258 (= res!1029471 (isDefined!4450 lt!875855))))

(assert (=> d!702258 (= lt!875855 e!1541903)))

(declare-fun c!386512 () Bool)

(declare-fun e!1541905 () Bool)

(assert (=> d!702258 (= c!386512 e!1541905)))

(declare-fun res!1029470 () Bool)

(assert (=> d!702258 (=> (not res!1029470) (not e!1541905))))

(assert (=> d!702258 (= res!1029470 (matchR!3240 (h!33788 l!9164) Nil!28386))))

(assert (=> d!702258 (validRegex!2842 (h!33788 l!9164))))

(assert (=> d!702258 (= (findConcatSeparation!732 (h!33788 l!9164) (generalisedConcat!224 (t!208462 l!9164)) Nil!28386 s!9460 s!9460) lt!875855)))

(declare-fun b!2423868 () Bool)

(assert (=> b!2423868 (= e!1541905 (matchR!3240 (generalisedConcat!224 (t!208462 l!9164)) s!9460))))

(declare-fun b!2423869 () Bool)

(declare-fun res!1029469 () Bool)

(assert (=> b!2423869 (=> (not res!1029469) (not e!1541904))))

(assert (=> b!2423869 (= res!1029469 (matchR!3240 (generalisedConcat!224 (t!208462 l!9164)) (_2!16554 (get!8737 lt!875855))))))

(declare-fun b!2423870 () Bool)

(assert (=> b!2423870 (= e!1541902 None!5623)))

(declare-fun b!2423871 () Bool)

(declare-fun res!1029467 () Bool)

(assert (=> b!2423871 (=> (not res!1029467) (not e!1541904))))

(assert (=> b!2423871 (= res!1029467 (matchR!3240 (h!33788 l!9164) (_1!16554 (get!8737 lt!875855))))))

(assert (= (and d!702258 res!1029470) b!2423868))

(assert (= (and d!702258 c!386512) b!2423863))

(assert (= (and d!702258 (not c!386512)) b!2423866))

(assert (= (and b!2423866 c!386511) b!2423870))

(assert (= (and b!2423866 (not c!386511)) b!2423865))

(assert (= (and d!702258 res!1029471) b!2423871))

(assert (= (and b!2423871 res!1029467) b!2423869))

(assert (= (and b!2423869 res!1029469) b!2423867))

(assert (= (and d!702258 (not res!1029468)) b!2423864))

(declare-fun m!2809681 () Bool)

(assert (=> b!2423867 m!2809681))

(declare-fun m!2809683 () Bool)

(assert (=> b!2423867 m!2809683))

(assert (=> b!2423871 m!2809681))

(declare-fun m!2809685 () Bool)

(assert (=> b!2423871 m!2809685))

(assert (=> b!2423869 m!2809681))

(assert (=> b!2423869 m!2809505))

(declare-fun m!2809687 () Bool)

(assert (=> b!2423869 m!2809687))

(declare-fun m!2809689 () Bool)

(assert (=> b!2423864 m!2809689))

(assert (=> b!2423865 m!2809587))

(assert (=> b!2423865 m!2809587))

(assert (=> b!2423865 m!2809589))

(assert (=> b!2423865 m!2809591))

(assert (=> b!2423865 m!2809505))

(assert (=> b!2423865 m!2809587))

(declare-fun m!2809691 () Bool)

(assert (=> b!2423865 m!2809691))

(assert (=> b!2423868 m!2809505))

(declare-fun m!2809693 () Bool)

(assert (=> b!2423868 m!2809693))

(assert (=> d!702258 m!2809689))

(declare-fun m!2809695 () Bool)

(assert (=> d!702258 m!2809695))

(declare-fun m!2809697 () Bool)

(assert (=> d!702258 m!2809697))

(assert (=> b!2423661 d!702258))

(declare-fun bs!463828 () Bool)

(declare-fun d!702260 () Bool)

(assert (= bs!463828 (and d!702260 start!237392)))

(declare-fun lambda!91289 () Int)

(assert (=> bs!463828 (= lambda!91289 lambda!91285)))

(declare-fun bs!463829 () Bool)

(assert (= bs!463829 (and d!702260 d!702206)))

(assert (=> bs!463829 (= lambda!91289 lambda!91288)))

(declare-fun b!2423872 () Bool)

(declare-fun e!1541906 () Bool)

(declare-fun lt!875858 () Regex!7123)

(assert (=> b!2423872 (= e!1541906 (isEmptyExpr!177 lt!875858))))

(declare-fun b!2423873 () Bool)

(declare-fun e!1541907 () Bool)

(assert (=> b!2423873 (= e!1541907 (isEmpty!16415 (t!208462 (t!208462 l!9164))))))

(declare-fun b!2423874 () Bool)

(declare-fun e!1541910 () Bool)

(assert (=> b!2423874 (= e!1541910 (= lt!875858 (head!5457 (t!208462 l!9164))))))

(declare-fun b!2423875 () Bool)

(assert (=> b!2423875 (= e!1541906 e!1541910)))

(declare-fun c!386513 () Bool)

(assert (=> b!2423875 (= c!386513 (isEmpty!16415 (tail!3729 (t!208462 l!9164))))))

(declare-fun b!2423876 () Bool)

(declare-fun e!1541908 () Regex!7123)

(assert (=> b!2423876 (= e!1541908 (h!33788 (t!208462 l!9164)))))

(declare-fun e!1541909 () Bool)

(assert (=> d!702260 e!1541909))

(declare-fun res!1029473 () Bool)

(assert (=> d!702260 (=> (not res!1029473) (not e!1541909))))

(assert (=> d!702260 (= res!1029473 (validRegex!2842 lt!875858))))

(assert (=> d!702260 (= lt!875858 e!1541908)))

(declare-fun c!386516 () Bool)

(assert (=> d!702260 (= c!386516 e!1541907)))

(declare-fun res!1029472 () Bool)

(assert (=> d!702260 (=> (not res!1029472) (not e!1541907))))

(assert (=> d!702260 (= res!1029472 ((_ is Cons!28387) (t!208462 l!9164)))))

(assert (=> d!702260 (forall!5757 (t!208462 l!9164) lambda!91289)))

(assert (=> d!702260 (= (generalisedConcat!224 (t!208462 l!9164)) lt!875858)))

(declare-fun b!2423877 () Bool)

(declare-fun e!1541911 () Regex!7123)

(assert (=> b!2423877 (= e!1541911 EmptyExpr!7123)))

(declare-fun b!2423878 () Bool)

(assert (=> b!2423878 (= e!1541910 (isConcat!177 lt!875858))))

(declare-fun b!2423879 () Bool)

(assert (=> b!2423879 (= e!1541908 e!1541911)))

(declare-fun c!386514 () Bool)

(assert (=> b!2423879 (= c!386514 ((_ is Cons!28387) (t!208462 l!9164)))))

(declare-fun b!2423880 () Bool)

(assert (=> b!2423880 (= e!1541911 (Concat!11759 (h!33788 (t!208462 l!9164)) (generalisedConcat!224 (t!208462 (t!208462 l!9164)))))))

(declare-fun b!2423881 () Bool)

(assert (=> b!2423881 (= e!1541909 e!1541906)))

(declare-fun c!386515 () Bool)

(assert (=> b!2423881 (= c!386515 (isEmpty!16415 (t!208462 l!9164)))))

(assert (= (and d!702260 res!1029472) b!2423873))

(assert (= (and d!702260 c!386516) b!2423876))

(assert (= (and d!702260 (not c!386516)) b!2423879))

(assert (= (and b!2423879 c!386514) b!2423880))

(assert (= (and b!2423879 (not c!386514)) b!2423877))

(assert (= (and d!702260 res!1029473) b!2423881))

(assert (= (and b!2423881 c!386515) b!2423872))

(assert (= (and b!2423881 (not c!386515)) b!2423875))

(assert (= (and b!2423875 c!386513) b!2423874))

(assert (= (and b!2423875 (not c!386513)) b!2423878))

(declare-fun m!2809699 () Bool)

(assert (=> b!2423874 m!2809699))

(assert (=> b!2423881 m!2809541))

(declare-fun m!2809701 () Bool)

(assert (=> d!702260 m!2809701))

(declare-fun m!2809703 () Bool)

(assert (=> d!702260 m!2809703))

(declare-fun m!2809705 () Bool)

(assert (=> b!2423872 m!2809705))

(declare-fun m!2809707 () Bool)

(assert (=> b!2423873 m!2809707))

(declare-fun m!2809709 () Bool)

(assert (=> b!2423878 m!2809709))

(declare-fun m!2809711 () Bool)

(assert (=> b!2423880 m!2809711))

(declare-fun m!2809713 () Bool)

(assert (=> b!2423875 m!2809713))

(assert (=> b!2423875 m!2809713))

(declare-fun m!2809715 () Bool)

(assert (=> b!2423875 m!2809715))

(assert (=> b!2423661 d!702260))

(declare-fun bs!463830 () Bool)

(declare-fun d!702262 () Bool)

(assert (= bs!463830 (and d!702262 start!237392)))

(declare-fun lambda!91290 () Int)

(assert (=> bs!463830 (= lambda!91290 lambda!91285)))

(declare-fun bs!463831 () Bool)

(assert (= bs!463831 (and d!702262 d!702206)))

(assert (=> bs!463831 (= lambda!91290 lambda!91288)))

(declare-fun bs!463832 () Bool)

(assert (= bs!463832 (and d!702262 d!702260)))

(assert (=> bs!463832 (= lambda!91290 lambda!91289)))

(declare-fun b!2423882 () Bool)

(declare-fun e!1541912 () Bool)

(declare-fun lt!875859 () Regex!7123)

(assert (=> b!2423882 (= e!1541912 (isEmptyExpr!177 lt!875859))))

(declare-fun b!2423883 () Bool)

(declare-fun e!1541913 () Bool)

(assert (=> b!2423883 (= e!1541913 (isEmpty!16415 (t!208462 lt!875813)))))

(declare-fun b!2423884 () Bool)

(declare-fun e!1541916 () Bool)

(assert (=> b!2423884 (= e!1541916 (= lt!875859 (head!5457 lt!875813)))))

(declare-fun b!2423885 () Bool)

(assert (=> b!2423885 (= e!1541912 e!1541916)))

(declare-fun c!386517 () Bool)

(assert (=> b!2423885 (= c!386517 (isEmpty!16415 (tail!3729 lt!875813)))))

(declare-fun b!2423886 () Bool)

(declare-fun e!1541914 () Regex!7123)

(assert (=> b!2423886 (= e!1541914 (h!33788 lt!875813))))

(declare-fun e!1541915 () Bool)

(assert (=> d!702262 e!1541915))

(declare-fun res!1029475 () Bool)

(assert (=> d!702262 (=> (not res!1029475) (not e!1541915))))

(assert (=> d!702262 (= res!1029475 (validRegex!2842 lt!875859))))

(assert (=> d!702262 (= lt!875859 e!1541914)))

(declare-fun c!386520 () Bool)

(assert (=> d!702262 (= c!386520 e!1541913)))

(declare-fun res!1029474 () Bool)

(assert (=> d!702262 (=> (not res!1029474) (not e!1541913))))

(assert (=> d!702262 (= res!1029474 ((_ is Cons!28387) lt!875813))))

(assert (=> d!702262 (forall!5757 lt!875813 lambda!91290)))

(assert (=> d!702262 (= (generalisedConcat!224 lt!875813) lt!875859)))

(declare-fun b!2423887 () Bool)

(declare-fun e!1541917 () Regex!7123)

(assert (=> b!2423887 (= e!1541917 EmptyExpr!7123)))

(declare-fun b!2423888 () Bool)

(assert (=> b!2423888 (= e!1541916 (isConcat!177 lt!875859))))

(declare-fun b!2423889 () Bool)

(assert (=> b!2423889 (= e!1541914 e!1541917)))

(declare-fun c!386518 () Bool)

(assert (=> b!2423889 (= c!386518 ((_ is Cons!28387) lt!875813))))

(declare-fun b!2423890 () Bool)

(assert (=> b!2423890 (= e!1541917 (Concat!11759 (h!33788 lt!875813) (generalisedConcat!224 (t!208462 lt!875813))))))

(declare-fun b!2423891 () Bool)

(assert (=> b!2423891 (= e!1541915 e!1541912)))

(declare-fun c!386519 () Bool)

(assert (=> b!2423891 (= c!386519 (isEmpty!16415 lt!875813))))

(assert (= (and d!702262 res!1029474) b!2423883))

(assert (= (and d!702262 c!386520) b!2423886))

(assert (= (and d!702262 (not c!386520)) b!2423889))

(assert (= (and b!2423889 c!386518) b!2423890))

(assert (= (and b!2423889 (not c!386518)) b!2423887))

(assert (= (and d!702262 res!1029475) b!2423891))

(assert (= (and b!2423891 c!386519) b!2423882))

(assert (= (and b!2423891 (not c!386519)) b!2423885))

(assert (= (and b!2423885 c!386517) b!2423884))

(assert (= (and b!2423885 (not c!386517)) b!2423888))

(declare-fun m!2809717 () Bool)

(assert (=> b!2423884 m!2809717))

(assert (=> b!2423891 m!2809495))

(declare-fun m!2809719 () Bool)

(assert (=> d!702262 m!2809719))

(declare-fun m!2809721 () Bool)

(assert (=> d!702262 m!2809721))

(declare-fun m!2809723 () Bool)

(assert (=> b!2423882 m!2809723))

(declare-fun m!2809725 () Bool)

(assert (=> b!2423883 m!2809725))

(declare-fun m!2809727 () Bool)

(assert (=> b!2423888 m!2809727))

(declare-fun m!2809729 () Bool)

(assert (=> b!2423890 m!2809729))

(declare-fun m!2809731 () Bool)

(assert (=> b!2423885 m!2809731))

(assert (=> b!2423885 m!2809731))

(declare-fun m!2809733 () Bool)

(assert (=> b!2423885 m!2809733))

(assert (=> b!2423643 d!702262))

(declare-fun e!1541928 () Bool)

(declare-fun lt!875868 () List!28484)

(declare-fun b!2423913 () Bool)

(assert (=> b!2423913 (= e!1541928 (or (not (= (ite c!386463 Nil!28386 (_2!16554 lt!875819)) Nil!28386)) (= lt!875868 (ite c!386463 s!9460 (_1!16554 lt!875819)))))))

(declare-fun b!2423912 () Bool)

(declare-fun res!1029482 () Bool)

(assert (=> b!2423912 (=> (not res!1029482) (not e!1541928))))

(declare-fun size!22246 (List!28484) Int)

(assert (=> b!2423912 (= res!1029482 (= (size!22246 lt!875868) (+ (size!22246 (ite c!386463 s!9460 (_1!16554 lt!875819))) (size!22246 (ite c!386463 Nil!28386 (_2!16554 lt!875819))))))))

(declare-fun d!702264 () Bool)

(assert (=> d!702264 e!1541928))

(declare-fun res!1029483 () Bool)

(assert (=> d!702264 (=> (not res!1029483) (not e!1541928))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3908 (List!28484) (InoxSet C!14404))

(assert (=> d!702264 (= res!1029483 (= (content!3908 lt!875868) ((_ map or) (content!3908 (ite c!386463 s!9460 (_1!16554 lt!875819))) (content!3908 (ite c!386463 Nil!28386 (_2!16554 lt!875819))))))))

(declare-fun e!1541929 () List!28484)

(assert (=> d!702264 (= lt!875868 e!1541929)))

(declare-fun c!386527 () Bool)

(assert (=> d!702264 (= c!386527 ((_ is Nil!28386) (ite c!386463 s!9460 (_1!16554 lt!875819))))))

(assert (=> d!702264 (= (++!7044 (ite c!386463 s!9460 (_1!16554 lt!875819)) (ite c!386463 Nil!28386 (_2!16554 lt!875819))) lt!875868)))

(declare-fun b!2423911 () Bool)

(assert (=> b!2423911 (= e!1541929 (Cons!28386 (h!33787 (ite c!386463 s!9460 (_1!16554 lt!875819))) (++!7044 (t!208461 (ite c!386463 s!9460 (_1!16554 lt!875819))) (ite c!386463 Nil!28386 (_2!16554 lt!875819)))))))

(declare-fun b!2423910 () Bool)

(assert (=> b!2423910 (= e!1541929 (ite c!386463 Nil!28386 (_2!16554 lt!875819)))))

(assert (= (and d!702264 c!386527) b!2423910))

(assert (= (and d!702264 (not c!386527)) b!2423911))

(assert (= (and d!702264 res!1029483) b!2423912))

(assert (= (and b!2423912 res!1029482) b!2423913))

(declare-fun m!2809735 () Bool)

(assert (=> b!2423912 m!2809735))

(declare-fun m!2809737 () Bool)

(assert (=> b!2423912 m!2809737))

(declare-fun m!2809739 () Bool)

(assert (=> b!2423912 m!2809739))

(declare-fun m!2809741 () Bool)

(assert (=> d!702264 m!2809741))

(declare-fun m!2809743 () Bool)

(assert (=> d!702264 m!2809743))

(declare-fun m!2809745 () Bool)

(assert (=> d!702264 m!2809745))

(declare-fun m!2809747 () Bool)

(assert (=> b!2423911 m!2809747))

(assert (=> bm!148216 d!702264))

(declare-fun b!2423920 () Bool)

(declare-fun e!1541936 () Option!5624)

(assert (=> b!2423920 (= e!1541936 (Some!5623 (tuple2!28027 Nil!28386 s!9460)))))

(declare-fun b!2423921 () Bool)

(declare-fun e!1541934 () Bool)

(declare-fun lt!875869 () Option!5624)

(assert (=> b!2423921 (= e!1541934 (not (isDefined!4450 lt!875869)))))

(declare-fun b!2423922 () Bool)

(declare-fun lt!875871 () Unit!41597)

(declare-fun lt!875870 () Unit!41597)

(assert (=> b!2423922 (= lt!875871 lt!875870)))

(assert (=> b!2423922 (= (++!7044 (++!7044 Nil!28386 (Cons!28386 (h!33787 s!9460) Nil!28386)) (t!208461 s!9460)) s!9460)))

(assert (=> b!2423922 (= lt!875870 (lemmaMoveElementToOtherListKeepsConcatEq!669 Nil!28386 (h!33787 s!9460) (t!208461 s!9460) s!9460))))

(declare-fun e!1541935 () Option!5624)

(assert (=> b!2423922 (= e!1541935 (findConcatSeparation!732 lt!875822 lt!875811 (++!7044 Nil!28386 (Cons!28386 (h!33787 s!9460) Nil!28386)) (t!208461 s!9460) s!9460))))

(declare-fun b!2423923 () Bool)

(assert (=> b!2423923 (= e!1541936 e!1541935)))

(declare-fun c!386528 () Bool)

(assert (=> b!2423923 (= c!386528 ((_ is Nil!28386) s!9460))))

(declare-fun b!2423924 () Bool)

(declare-fun e!1541937 () Bool)

(assert (=> b!2423924 (= e!1541937 (= (++!7044 (_1!16554 (get!8737 lt!875869)) (_2!16554 (get!8737 lt!875869))) s!9460))))

(declare-fun d!702266 () Bool)

(assert (=> d!702266 e!1541934))

(declare-fun res!1029493 () Bool)

(assert (=> d!702266 (=> res!1029493 e!1541934)))

(assert (=> d!702266 (= res!1029493 e!1541937)))

(declare-fun res!1029496 () Bool)

(assert (=> d!702266 (=> (not res!1029496) (not e!1541937))))

(assert (=> d!702266 (= res!1029496 (isDefined!4450 lt!875869))))

(assert (=> d!702266 (= lt!875869 e!1541936)))

(declare-fun c!386529 () Bool)

(declare-fun e!1541938 () Bool)

(assert (=> d!702266 (= c!386529 e!1541938)))

(declare-fun res!1029495 () Bool)

(assert (=> d!702266 (=> (not res!1029495) (not e!1541938))))

(assert (=> d!702266 (= res!1029495 (matchR!3240 lt!875822 Nil!28386))))

(assert (=> d!702266 (validRegex!2842 lt!875822)))

(assert (=> d!702266 (= (findConcatSeparation!732 lt!875822 lt!875811 Nil!28386 s!9460 s!9460) lt!875869)))

(declare-fun b!2423925 () Bool)

(assert (=> b!2423925 (= e!1541938 (matchR!3240 lt!875811 s!9460))))

(declare-fun b!2423926 () Bool)

(declare-fun res!1029494 () Bool)

(assert (=> b!2423926 (=> (not res!1029494) (not e!1541937))))

(assert (=> b!2423926 (= res!1029494 (matchR!3240 lt!875811 (_2!16554 (get!8737 lt!875869))))))

(declare-fun b!2423927 () Bool)

(assert (=> b!2423927 (= e!1541935 None!5623)))

(declare-fun b!2423928 () Bool)

(declare-fun res!1029492 () Bool)

(assert (=> b!2423928 (=> (not res!1029492) (not e!1541937))))

(assert (=> b!2423928 (= res!1029492 (matchR!3240 lt!875822 (_1!16554 (get!8737 lt!875869))))))

(assert (= (and d!702266 res!1029495) b!2423925))

(assert (= (and d!702266 c!386529) b!2423920))

(assert (= (and d!702266 (not c!386529)) b!2423923))

(assert (= (and b!2423923 c!386528) b!2423927))

(assert (= (and b!2423923 (not c!386528)) b!2423922))

(assert (= (and d!702266 res!1029496) b!2423928))

(assert (= (and b!2423928 res!1029492) b!2423926))

(assert (= (and b!2423926 res!1029494) b!2423924))

(assert (= (and d!702266 (not res!1029493)) b!2423921))

(declare-fun m!2809749 () Bool)

(assert (=> b!2423924 m!2809749))

(declare-fun m!2809751 () Bool)

(assert (=> b!2423924 m!2809751))

(assert (=> b!2423928 m!2809749))

(declare-fun m!2809753 () Bool)

(assert (=> b!2423928 m!2809753))

(assert (=> b!2423926 m!2809749))

(declare-fun m!2809755 () Bool)

(assert (=> b!2423926 m!2809755))

(declare-fun m!2809757 () Bool)

(assert (=> b!2423921 m!2809757))

(assert (=> b!2423922 m!2809587))

(assert (=> b!2423922 m!2809587))

(assert (=> b!2423922 m!2809589))

(assert (=> b!2423922 m!2809591))

(assert (=> b!2423922 m!2809587))

(declare-fun m!2809759 () Bool)

(assert (=> b!2423922 m!2809759))

(declare-fun m!2809761 () Bool)

(assert (=> b!2423925 m!2809761))

(assert (=> d!702266 m!2809757))

(assert (=> d!702266 m!2809597))

(assert (=> d!702266 m!2809569))

(assert (=> bm!148212 d!702266))

(declare-fun b!2424016 () Bool)

(assert (=> b!2424016 true))

(assert (=> b!2424016 true))

(declare-fun bs!463836 () Bool)

(declare-fun b!2424015 () Bool)

(assert (= bs!463836 (and b!2424015 b!2424016)))

(declare-fun lambda!91300 () Int)

(declare-fun lambda!91299 () Int)

(assert (=> bs!463836 (not (= lambda!91300 lambda!91299))))

(assert (=> b!2424015 true))

(assert (=> b!2424015 true))

(declare-fun b!2424011 () Bool)

(declare-fun e!1541988 () Bool)

(assert (=> b!2424011 (= e!1541988 (= s!9460 (Cons!28386 (c!386465 r!13927) Nil!28386)))))

(declare-fun b!2424012 () Bool)

(declare-fun res!1029530 () Bool)

(declare-fun e!1541987 () Bool)

(assert (=> b!2424012 (=> res!1029530 e!1541987)))

(declare-fun call!148236 () Bool)

(assert (=> b!2424012 (= res!1029530 call!148236)))

(declare-fun e!1541986 () Bool)

(assert (=> b!2424012 (= e!1541986 e!1541987)))

(declare-fun b!2424013 () Bool)

(declare-fun e!1541989 () Bool)

(assert (=> b!2424013 (= e!1541989 call!148236)))

(declare-fun bm!148230 () Bool)

(declare-fun c!386554 () Bool)

(declare-fun call!148235 () Bool)

(declare-fun Exists!1162 (Int) Bool)

(assert (=> bm!148230 (= call!148235 (Exists!1162 (ite c!386554 lambda!91299 lambda!91300)))))

(declare-fun b!2424014 () Bool)

(declare-fun e!1541991 () Bool)

(assert (=> b!2424014 (= e!1541989 e!1541991)))

(declare-fun res!1029531 () Bool)

(assert (=> b!2424014 (= res!1029531 (not ((_ is EmptyLang!7123) r!13927)))))

(assert (=> b!2424014 (=> (not res!1029531) (not e!1541991))))

(assert (=> b!2424015 (= e!1541986 call!148235)))

(assert (=> b!2424016 (= e!1541987 call!148235)))

(declare-fun b!2424017 () Bool)

(declare-fun e!1541985 () Bool)

(assert (=> b!2424017 (= e!1541985 e!1541986)))

(assert (=> b!2424017 (= c!386554 ((_ is Star!7123) r!13927))))

(declare-fun bm!148231 () Bool)

(assert (=> bm!148231 (= call!148236 (isEmpty!16414 s!9460))))

(declare-fun b!2424018 () Bool)

(declare-fun c!386555 () Bool)

(assert (=> b!2424018 (= c!386555 ((_ is Union!7123) r!13927))))

(assert (=> b!2424018 (= e!1541988 e!1541985)))

(declare-fun b!2424019 () Bool)

(declare-fun e!1541990 () Bool)

(assert (=> b!2424019 (= e!1541985 e!1541990)))

(declare-fun res!1029529 () Bool)

(assert (=> b!2424019 (= res!1029529 (matchRSpec!972 (regOne!14759 r!13927) s!9460))))

(assert (=> b!2424019 (=> res!1029529 e!1541990)))

(declare-fun d!702268 () Bool)

(declare-fun c!386556 () Bool)

(assert (=> d!702268 (= c!386556 ((_ is EmptyExpr!7123) r!13927))))

(assert (=> d!702268 (= (matchRSpec!972 r!13927 s!9460) e!1541989)))

(declare-fun b!2424020 () Bool)

(declare-fun c!386557 () Bool)

(assert (=> b!2424020 (= c!386557 ((_ is ElementMatch!7123) r!13927))))

(assert (=> b!2424020 (= e!1541991 e!1541988)))

(declare-fun b!2424021 () Bool)

(assert (=> b!2424021 (= e!1541990 (matchRSpec!972 (regTwo!14759 r!13927) s!9460))))

(assert (= (and d!702268 c!386556) b!2424013))

(assert (= (and d!702268 (not c!386556)) b!2424014))

(assert (= (and b!2424014 res!1029531) b!2424020))

(assert (= (and b!2424020 c!386557) b!2424011))

(assert (= (and b!2424020 (not c!386557)) b!2424018))

(assert (= (and b!2424018 c!386555) b!2424019))

(assert (= (and b!2424018 (not c!386555)) b!2424017))

(assert (= (and b!2424019 (not res!1029529)) b!2424021))

(assert (= (and b!2424017 c!386554) b!2424012))

(assert (= (and b!2424017 (not c!386554)) b!2424015))

(assert (= (and b!2424012 (not res!1029530)) b!2424016))

(assert (= (or b!2424016 b!2424015) bm!148230))

(assert (= (or b!2424013 b!2424012) bm!148231))

(declare-fun m!2809841 () Bool)

(assert (=> bm!148230 m!2809841))

(assert (=> bm!148231 m!2809487))

(declare-fun m!2809843 () Bool)

(assert (=> b!2424019 m!2809843))

(declare-fun m!2809845 () Bool)

(assert (=> b!2424021 m!2809845))

(assert (=> b!2423650 d!702268))

(declare-fun b!2424046 () Bool)

(declare-fun e!1542008 () Bool)

(declare-fun e!1542009 () Bool)

(assert (=> b!2424046 (= e!1542008 e!1542009)))

(declare-fun c!386568 () Bool)

(assert (=> b!2424046 (= c!386568 ((_ is EmptyLang!7123) r!13927))))

(declare-fun b!2424047 () Bool)

(declare-fun res!1029542 () Bool)

(declare-fun e!1542010 () Bool)

(assert (=> b!2424047 (=> res!1029542 e!1542010)))

(declare-fun e!1542006 () Bool)

(assert (=> b!2424047 (= res!1029542 e!1542006)))

(declare-fun res!1029539 () Bool)

(assert (=> b!2424047 (=> (not res!1029539) (not e!1542006))))

(declare-fun lt!875883 () Bool)

(assert (=> b!2424047 (= res!1029539 lt!875883)))

(declare-fun b!2424049 () Bool)

(declare-fun e!1542004 () Bool)

(assert (=> b!2424049 (= e!1542004 (not (= (head!5458 s!9460) (c!386465 r!13927))))))

(declare-fun b!2424050 () Bool)

(assert (=> b!2424050 (= e!1542009 (not lt!875883))))

(declare-fun b!2424051 () Bool)

(declare-fun res!1029537 () Bool)

(assert (=> b!2424051 (=> res!1029537 e!1542010)))

(assert (=> b!2424051 (= res!1029537 (not ((_ is ElementMatch!7123) r!13927)))))

(assert (=> b!2424051 (= e!1542009 e!1542010)))

(declare-fun b!2424052 () Bool)

(declare-fun call!148237 () Bool)

(assert (=> b!2424052 (= e!1542008 (= lt!875883 call!148237))))

(declare-fun b!2424053 () Bool)

(assert (=> b!2424053 (= e!1542006 (= (head!5458 s!9460) (c!386465 r!13927)))))

(declare-fun d!702282 () Bool)

(assert (=> d!702282 e!1542008))

(declare-fun c!386567 () Bool)

(assert (=> d!702282 (= c!386567 ((_ is EmptyExpr!7123) r!13927))))

(declare-fun e!1542007 () Bool)

(assert (=> d!702282 (= lt!875883 e!1542007)))

(declare-fun c!386566 () Bool)

(assert (=> d!702282 (= c!386566 (isEmpty!16414 s!9460))))

(assert (=> d!702282 (validRegex!2842 r!13927)))

(assert (=> d!702282 (= (matchR!3240 r!13927 s!9460) lt!875883)))

(declare-fun b!2424048 () Bool)

(declare-fun res!1029536 () Bool)

(assert (=> b!2424048 (=> (not res!1029536) (not e!1542006))))

(assert (=> b!2424048 (= res!1029536 (isEmpty!16414 (tail!3730 s!9460)))))

(declare-fun b!2424054 () Bool)

(declare-fun e!1542005 () Bool)

(assert (=> b!2424054 (= e!1542005 e!1542004)))

(declare-fun res!1029543 () Bool)

(assert (=> b!2424054 (=> res!1029543 e!1542004)))

(assert (=> b!2424054 (= res!1029543 call!148237)))

(declare-fun b!2424055 () Bool)

(declare-fun res!1029538 () Bool)

(assert (=> b!2424055 (=> res!1029538 e!1542004)))

(assert (=> b!2424055 (= res!1029538 (not (isEmpty!16414 (tail!3730 s!9460))))))

(declare-fun b!2424056 () Bool)

(assert (=> b!2424056 (= e!1542007 (nullable!2157 r!13927))))

(declare-fun b!2424057 () Bool)

(declare-fun res!1029540 () Bool)

(assert (=> b!2424057 (=> (not res!1029540) (not e!1542006))))

(assert (=> b!2424057 (= res!1029540 (not call!148237))))

(declare-fun b!2424058 () Bool)

(assert (=> b!2424058 (= e!1542010 e!1542005)))

(declare-fun res!1029541 () Bool)

(assert (=> b!2424058 (=> (not res!1029541) (not e!1542005))))

(assert (=> b!2424058 (= res!1029541 (not lt!875883))))

(declare-fun b!2424059 () Bool)

(assert (=> b!2424059 (= e!1542007 (matchR!3240 (derivativeStep!1814 r!13927 (head!5458 s!9460)) (tail!3730 s!9460)))))

(declare-fun bm!148232 () Bool)

(assert (=> bm!148232 (= call!148237 (isEmpty!16414 s!9460))))

(assert (= (and d!702282 c!386566) b!2424056))

(assert (= (and d!702282 (not c!386566)) b!2424059))

(assert (= (and d!702282 c!386567) b!2424052))

(assert (= (and d!702282 (not c!386567)) b!2424046))

(assert (= (and b!2424046 c!386568) b!2424050))

(assert (= (and b!2424046 (not c!386568)) b!2424051))

(assert (= (and b!2424051 (not res!1029537)) b!2424047))

(assert (= (and b!2424047 res!1029539) b!2424057))

(assert (= (and b!2424057 res!1029540) b!2424048))

(assert (= (and b!2424048 res!1029536) b!2424053))

(assert (= (and b!2424047 (not res!1029542)) b!2424058))

(assert (= (and b!2424058 res!1029541) b!2424054))

(assert (= (and b!2424054 (not res!1029543)) b!2424055))

(assert (= (and b!2424055 (not res!1029538)) b!2424049))

(assert (= (or b!2424052 b!2424054 b!2424057) bm!148232))

(assert (=> b!2424059 m!2809557))

(assert (=> b!2424059 m!2809557))

(declare-fun m!2809857 () Bool)

(assert (=> b!2424059 m!2809857))

(assert (=> b!2424059 m!2809561))

(assert (=> b!2424059 m!2809857))

(assert (=> b!2424059 m!2809561))

(declare-fun m!2809859 () Bool)

(assert (=> b!2424059 m!2809859))

(assert (=> b!2424048 m!2809561))

(assert (=> b!2424048 m!2809561))

(assert (=> b!2424048 m!2809565))

(declare-fun m!2809861 () Bool)

(assert (=> b!2424056 m!2809861))

(assert (=> b!2424053 m!2809557))

(assert (=> b!2424055 m!2809561))

(assert (=> b!2424055 m!2809561))

(assert (=> b!2424055 m!2809565))

(assert (=> bm!148232 m!2809487))

(assert (=> d!702282 m!2809487))

(declare-fun m!2809863 () Bool)

(assert (=> d!702282 m!2809863))

(assert (=> b!2424049 m!2809557))

(assert (=> b!2423650 d!702282))

(declare-fun d!702286 () Bool)

(assert (=> d!702286 (= (matchR!3240 r!13927 s!9460) (matchRSpec!972 r!13927 s!9460))))

(declare-fun lt!875888 () Unit!41597)

(declare-fun choose!14354 (Regex!7123 List!28484) Unit!41597)

(assert (=> d!702286 (= lt!875888 (choose!14354 r!13927 s!9460))))

(assert (=> d!702286 (validRegex!2842 r!13927)))

(assert (=> d!702286 (= (mainMatchTheorem!972 r!13927 s!9460) lt!875888)))

(declare-fun bs!463840 () Bool)

(assert (= bs!463840 d!702286))

(assert (=> bs!463840 m!2809515))

(assert (=> bs!463840 m!2809513))

(declare-fun m!2809865 () Bool)

(assert (=> bs!463840 m!2809865))

(assert (=> bs!463840 m!2809863))

(assert (=> b!2423650 d!702286))

(declare-fun b!2424088 () Bool)

(declare-fun e!1542023 () Bool)

(declare-fun tp!769941 () Bool)

(declare-fun tp!769942 () Bool)

(assert (=> b!2424088 (= e!1542023 (and tp!769941 tp!769942))))

(assert (=> b!2423640 (= tp!769924 e!1542023)))

(declare-fun b!2424090 () Bool)

(declare-fun tp!769939 () Bool)

(declare-fun tp!769938 () Bool)

(assert (=> b!2424090 (= e!1542023 (and tp!769939 tp!769938))))

(declare-fun b!2424089 () Bool)

(declare-fun tp!769940 () Bool)

(assert (=> b!2424089 (= e!1542023 tp!769940)))

(declare-fun b!2424087 () Bool)

(assert (=> b!2424087 (= e!1542023 tp_is_empty!11659)))

(assert (= (and b!2423640 ((_ is ElementMatch!7123) (regOne!14759 r!13927))) b!2424087))

(assert (= (and b!2423640 ((_ is Concat!11759) (regOne!14759 r!13927))) b!2424088))

(assert (= (and b!2423640 ((_ is Star!7123) (regOne!14759 r!13927))) b!2424089))

(assert (= (and b!2423640 ((_ is Union!7123) (regOne!14759 r!13927))) b!2424090))

(declare-fun b!2424092 () Bool)

(declare-fun e!1542024 () Bool)

(declare-fun tp!769946 () Bool)

(declare-fun tp!769947 () Bool)

(assert (=> b!2424092 (= e!1542024 (and tp!769946 tp!769947))))

(assert (=> b!2423640 (= tp!769921 e!1542024)))

(declare-fun b!2424094 () Bool)

(declare-fun tp!769944 () Bool)

(declare-fun tp!769943 () Bool)

(assert (=> b!2424094 (= e!1542024 (and tp!769944 tp!769943))))

(declare-fun b!2424093 () Bool)

(declare-fun tp!769945 () Bool)

(assert (=> b!2424093 (= e!1542024 tp!769945)))

(declare-fun b!2424091 () Bool)

(assert (=> b!2424091 (= e!1542024 tp_is_empty!11659)))

(assert (= (and b!2423640 ((_ is ElementMatch!7123) (regTwo!14759 r!13927))) b!2424091))

(assert (= (and b!2423640 ((_ is Concat!11759) (regTwo!14759 r!13927))) b!2424092))

(assert (= (and b!2423640 ((_ is Star!7123) (regTwo!14759 r!13927))) b!2424093))

(assert (= (and b!2423640 ((_ is Union!7123) (regTwo!14759 r!13927))) b!2424094))

(declare-fun b!2424096 () Bool)

(declare-fun e!1542025 () Bool)

(declare-fun tp!769951 () Bool)

(declare-fun tp!769952 () Bool)

(assert (=> b!2424096 (= e!1542025 (and tp!769951 tp!769952))))

(assert (=> b!2423645 (= tp!769926 e!1542025)))

(declare-fun b!2424098 () Bool)

(declare-fun tp!769949 () Bool)

(declare-fun tp!769948 () Bool)

(assert (=> b!2424098 (= e!1542025 (and tp!769949 tp!769948))))

(declare-fun b!2424097 () Bool)

(declare-fun tp!769950 () Bool)

(assert (=> b!2424097 (= e!1542025 tp!769950)))

(declare-fun b!2424095 () Bool)

(assert (=> b!2424095 (= e!1542025 tp_is_empty!11659)))

(assert (= (and b!2423645 ((_ is ElementMatch!7123) (h!33788 l!9164))) b!2424095))

(assert (= (and b!2423645 ((_ is Concat!11759) (h!33788 l!9164))) b!2424096))

(assert (= (and b!2423645 ((_ is Star!7123) (h!33788 l!9164))) b!2424097))

(assert (= (and b!2423645 ((_ is Union!7123) (h!33788 l!9164))) b!2424098))

(declare-fun b!2424103 () Bool)

(declare-fun e!1542028 () Bool)

(declare-fun tp!769957 () Bool)

(declare-fun tp!769958 () Bool)

(assert (=> b!2424103 (= e!1542028 (and tp!769957 tp!769958))))

(assert (=> b!2423645 (= tp!769922 e!1542028)))

(assert (= (and b!2423645 ((_ is Cons!28387) (t!208462 l!9164))) b!2424103))

(declare-fun b!2424105 () Bool)

(declare-fun e!1542029 () Bool)

(declare-fun tp!769962 () Bool)

(declare-fun tp!769963 () Bool)

(assert (=> b!2424105 (= e!1542029 (and tp!769962 tp!769963))))

(assert (=> b!2423644 (= tp!769920 e!1542029)))

(declare-fun b!2424107 () Bool)

(declare-fun tp!769960 () Bool)

(declare-fun tp!769959 () Bool)

(assert (=> b!2424107 (= e!1542029 (and tp!769960 tp!769959))))

(declare-fun b!2424106 () Bool)

(declare-fun tp!769961 () Bool)

(assert (=> b!2424106 (= e!1542029 tp!769961)))

(declare-fun b!2424104 () Bool)

(assert (=> b!2424104 (= e!1542029 tp_is_empty!11659)))

(assert (= (and b!2423644 ((_ is ElementMatch!7123) (regOne!14758 r!13927))) b!2424104))

(assert (= (and b!2423644 ((_ is Concat!11759) (regOne!14758 r!13927))) b!2424105))

(assert (= (and b!2423644 ((_ is Star!7123) (regOne!14758 r!13927))) b!2424106))

(assert (= (and b!2423644 ((_ is Union!7123) (regOne!14758 r!13927))) b!2424107))

(declare-fun b!2424109 () Bool)

(declare-fun e!1542030 () Bool)

(declare-fun tp!769967 () Bool)

(declare-fun tp!769968 () Bool)

(assert (=> b!2424109 (= e!1542030 (and tp!769967 tp!769968))))

(assert (=> b!2423644 (= tp!769925 e!1542030)))

(declare-fun b!2424111 () Bool)

(declare-fun tp!769965 () Bool)

(declare-fun tp!769964 () Bool)

(assert (=> b!2424111 (= e!1542030 (and tp!769965 tp!769964))))

(declare-fun b!2424110 () Bool)

(declare-fun tp!769966 () Bool)

(assert (=> b!2424110 (= e!1542030 tp!769966)))

(declare-fun b!2424108 () Bool)

(assert (=> b!2424108 (= e!1542030 tp_is_empty!11659)))

(assert (= (and b!2423644 ((_ is ElementMatch!7123) (regTwo!14758 r!13927))) b!2424108))

(assert (= (and b!2423644 ((_ is Concat!11759) (regTwo!14758 r!13927))) b!2424109))

(assert (= (and b!2423644 ((_ is Star!7123) (regTwo!14758 r!13927))) b!2424110))

(assert (= (and b!2423644 ((_ is Union!7123) (regTwo!14758 r!13927))) b!2424111))

(declare-fun b!2424116 () Bool)

(declare-fun e!1542033 () Bool)

(declare-fun tp!769971 () Bool)

(assert (=> b!2424116 (= e!1542033 (and tp_is_empty!11659 tp!769971))))

(assert (=> b!2423641 (= tp!769923 e!1542033)))

(assert (= (and b!2423641 ((_ is Cons!28386) (t!208461 s!9460))) b!2424116))

(declare-fun b!2424118 () Bool)

(declare-fun e!1542034 () Bool)

(declare-fun tp!769975 () Bool)

(declare-fun tp!769976 () Bool)

(assert (=> b!2424118 (= e!1542034 (and tp!769975 tp!769976))))

(assert (=> b!2423642 (= tp!769927 e!1542034)))

(declare-fun b!2424120 () Bool)

(declare-fun tp!769973 () Bool)

(declare-fun tp!769972 () Bool)

(assert (=> b!2424120 (= e!1542034 (and tp!769973 tp!769972))))

(declare-fun b!2424119 () Bool)

(declare-fun tp!769974 () Bool)

(assert (=> b!2424119 (= e!1542034 tp!769974)))

(declare-fun b!2424117 () Bool)

(assert (=> b!2424117 (= e!1542034 tp_is_empty!11659)))

(assert (= (and b!2423642 ((_ is ElementMatch!7123) (reg!7452 r!13927))) b!2424117))

(assert (= (and b!2423642 ((_ is Concat!11759) (reg!7452 r!13927))) b!2424118))

(assert (= (and b!2423642 ((_ is Star!7123) (reg!7452 r!13927))) b!2424119))

(assert (= (and b!2423642 ((_ is Union!7123) (reg!7452 r!13927))) b!2424120))

(declare-fun b_lambda!74675 () Bool)

(assert (= b_lambda!74669 (or start!237392 b_lambda!74675)))

(declare-fun bs!463841 () Bool)

(declare-fun d!702296 () Bool)

(assert (= bs!463841 (and d!702296 start!237392)))

(assert (=> bs!463841 (= (dynLambda!12216 lambda!91285 (h!33788 l!9164)) (validRegex!2842 (h!33788 l!9164)))))

(assert (=> bs!463841 m!2809697))

(assert (=> b!2423699 d!702296))

(declare-fun b_lambda!74677 () Bool)

(assert (= b_lambda!74667 (or start!237392 b_lambda!74677)))

(declare-fun bs!463842 () Bool)

(declare-fun d!702298 () Bool)

(assert (= bs!463842 (and d!702298 start!237392)))

(assert (=> bs!463842 (= (dynLambda!12216 lambda!91285 (h!33788 (t!208462 l!9164))) (validRegex!2842 (h!33788 (t!208462 l!9164))))))

(declare-fun m!2809891 () Bool)

(assert (=> bs!463842 m!2809891))

(assert (=> b!2423697 d!702298))

(check-sat (not b!2424053) (not b!2424105) (not b!2423871) (not b!2423839) (not b!2423736) (not b!2423922) (not b!2424120) (not d!702250) (not b!2424092) (not b!2423738) (not d!702286) (not b!2424021) (not b!2423880) (not bs!463841) (not b!2423771) (not b!2423777) (not b!2423882) (not b!2423872) (not b!2424048) (not b!2423691) (not b!2423875) (not bm!148230) (not b!2423911) (not b!2423685) (not d!702222) (not bm!148225) (not b!2423890) (not b!2423731) (not d!702226) (not b!2423912) (not bs!463842) (not b!2424109) (not b!2423846) (not b!2423865) (not d!702234) (not b!2423928) (not b!2424110) (not b!2424098) (not b!2424107) (not b!2423926) (not bm!148232) (not b!2423883) (not d!702218) (not b!2423850) (not b!2423868) tp_is_empty!11659 (not bm!148220) (not d!702206) (not b!2423873) (not b!2423874) (not b!2424118) (not b!2423864) (not b!2423775) (not d!702266) (not b!2424116) (not b!2423836) (not d!702248) (not b!2424097) (not b!2424049) (not bm!148221) (not d!702242) (not b!2423844) (not b!2423884) (not b!2423847) (not b_lambda!74675) (not b!2423888) (not b!2423840) (not b!2424055) (not b!2424119) (not b!2423684) (not d!702260) (not b!2423742) (not b!2423891) (not b!2423788) (not b!2424090) (not d!702282) (not b!2423686) (not b!2423924) (not b!2423878) (not b!2423791) (not b!2424106) (not b_lambda!74677) (not b!2423698) (not b!2423885) (not d!702264) (not b!2423774) (not b!2423869) (not b!2423689) (not b!2423785) (not b!2423881) (not b!2423787) (not b!2424094) (not d!702256) (not b!2424019) (not b!2424056) (not b!2423780) (not d!702210) (not b!2423700) (not b!2423773) (not b!2423921) (not b!2423867) (not b!2424059) (not b!2423925) (not b!2424088) (not b!2423770) (not b!2424111) (not b!2423739) (not b!2424103) (not b!2424089) (not b!2423692) (not d!702258) (not d!702262) (not b!2424096) (not b!2423732) (not b!2424093) (not d!702236) (not bm!148231) (not b!2423781) (not b!2423683))
(check-sat)
