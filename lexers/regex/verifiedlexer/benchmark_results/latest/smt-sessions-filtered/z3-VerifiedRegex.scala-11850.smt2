; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666122 () Bool)

(assert start!666122)

(declare-fun b!6931606 () Bool)

(assert (=> b!6931606 true))

(assert (=> b!6931606 true))

(assert (=> b!6931606 true))

(declare-fun lambda!394456 () Int)

(declare-fun lambda!394455 () Int)

(assert (=> b!6931606 (not (= lambda!394456 lambda!394455))))

(assert (=> b!6931606 true))

(assert (=> b!6931606 true))

(assert (=> b!6931606 true))

(declare-fun bs!1850473 () Bool)

(declare-fun b!6931605 () Bool)

(assert (= bs!1850473 (and b!6931605 b!6931606)))

(declare-datatypes ((C!34164 0))(
  ( (C!34165 (val!26784 Int)) )
))
(declare-datatypes ((Regex!16947 0))(
  ( (ElementMatch!16947 (c!1286433 C!34164)) (Concat!25792 (regOne!34406 Regex!16947) (regTwo!34406 Regex!16947)) (EmptyExpr!16947) (Star!16947 (reg!17276 Regex!16947)) (EmptyLang!16947) (Union!16947 (regOne!34407 Regex!16947) (regTwo!34407 Regex!16947)) )
))
(declare-fun r1!6342 () Regex!16947)

(declare-fun lambda!394457 () Int)

(declare-fun r3!135 () Regex!16947)

(declare-fun lt!2473239 () Regex!16947)

(declare-datatypes ((List!66700 0))(
  ( (Nil!66576) (Cons!66576 (h!73024 C!34164) (t!380443 List!66700)) )
))
(declare-fun s!14361 () List!66700)

(declare-fun r2!6280 () Regex!16947)

(declare-datatypes ((tuple2!67608 0))(
  ( (tuple2!67609 (_1!37107 List!66700) (_2!37107 List!66700)) )
))
(declare-fun lt!2473249 () tuple2!67608)

(assert (=> bs!1850473 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394457 lambda!394455))))

(assert (=> bs!1850473 (not (= lambda!394457 lambda!394456))))

(assert (=> b!6931605 true))

(assert (=> b!6931605 true))

(assert (=> b!6931605 true))

(declare-fun lambda!394458 () Int)

(assert (=> bs!1850473 (not (= lambda!394458 lambda!394455))))

(assert (=> bs!1850473 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394458 lambda!394456))))

(assert (=> b!6931605 (not (= lambda!394458 lambda!394457))))

(assert (=> b!6931605 true))

(assert (=> b!6931605 true))

(assert (=> b!6931605 true))

(declare-fun b!6931585 () Bool)

(declare-fun e!4170757 () Bool)

(declare-fun tp!1910911 () Bool)

(assert (=> b!6931585 (= e!4170757 tp!1910911)))

(declare-fun b!6931586 () Bool)

(declare-fun e!4170758 () Bool)

(declare-fun e!4170760 () Bool)

(assert (=> b!6931586 (= e!4170758 e!4170760)))

(declare-fun res!2826931 () Bool)

(assert (=> b!6931586 (=> res!2826931 e!4170760)))

(declare-datatypes ((Option!16716 0))(
  ( (None!16715) (Some!16715 (v!52987 tuple2!67608)) )
))
(declare-fun lt!2473248 () Option!16716)

(declare-fun isDefined!13417 (Option!16716) Bool)

(assert (=> b!6931586 (= res!2826931 (not (isDefined!13417 lt!2473248)))))

(declare-fun findConcatSeparation!3130 (Regex!16947 Regex!16947 List!66700 List!66700 List!66700) Option!16716)

(assert (=> b!6931586 (= lt!2473248 (findConcatSeparation!3130 r1!6342 lt!2473239 Nil!66576 s!14361 s!14361))))

(declare-fun b!6931587 () Bool)

(declare-fun e!4170755 () Bool)

(declare-fun tp!1910903 () Bool)

(assert (=> b!6931587 (= e!4170755 tp!1910903)))

(declare-fun b!6931588 () Bool)

(declare-fun res!2826933 () Bool)

(declare-fun e!4170754 () Bool)

(assert (=> b!6931588 (=> res!2826933 e!4170754)))

(declare-fun lt!2473241 () tuple2!67608)

(declare-fun matchR!9086 (Regex!16947 List!66700) Bool)

(assert (=> b!6931588 (= res!2826933 (not (matchR!9086 r3!135 (_2!37107 lt!2473241))))))

(declare-fun b!6931590 () Bool)

(declare-fun tp!1910913 () Bool)

(declare-fun tp!1910901 () Bool)

(assert (=> b!6931590 (= e!4170757 (and tp!1910913 tp!1910901))))

(declare-fun b!6931591 () Bool)

(declare-fun e!4170761 () Bool)

(declare-fun lt!2473237 () Regex!16947)

(declare-fun validRegex!8653 (Regex!16947) Bool)

(assert (=> b!6931591 (= e!4170761 (validRegex!8653 lt!2473237))))

(declare-fun lt!2473233 () List!66700)

(declare-fun ++!14986 (List!66700 List!66700) List!66700)

(assert (=> b!6931591 (= (++!14986 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241)) (_2!37107 lt!2473241)) lt!2473233)))

(declare-datatypes ((Unit!160618 0))(
  ( (Unit!160619) )
))
(declare-fun lt!2473232 () Unit!160618)

(declare-fun lemmaConcatAssociativity!3028 (List!66700 List!66700 List!66700) Unit!160618)

(assert (=> b!6931591 (= lt!2473232 (lemmaConcatAssociativity!3028 (_1!37107 lt!2473249) (_1!37107 lt!2473241) (_2!37107 lt!2473241)))))

(declare-fun b!6931592 () Bool)

(declare-fun tp!1910904 () Bool)

(declare-fun tp!1910910 () Bool)

(assert (=> b!6931592 (= e!4170757 (and tp!1910904 tp!1910910))))

(declare-fun b!6931593 () Bool)

(declare-fun e!4170756 () Bool)

(declare-fun tp_is_empty!43119 () Bool)

(declare-fun tp!1910908 () Bool)

(assert (=> b!6931593 (= e!4170756 (and tp_is_empty!43119 tp!1910908))))

(declare-fun b!6931594 () Bool)

(declare-fun res!2826939 () Bool)

(declare-fun e!4170762 () Bool)

(assert (=> b!6931594 (=> res!2826939 e!4170762)))

(assert (=> b!6931594 (= res!2826939 (not (matchR!9086 lt!2473239 (_2!37107 lt!2473249))))))

(declare-fun b!6931595 () Bool)

(declare-fun e!4170753 () Bool)

(assert (=> b!6931595 (= e!4170753 tp_is_empty!43119)))

(declare-fun b!6931596 () Bool)

(assert (=> b!6931596 (= e!4170757 tp_is_empty!43119)))

(declare-fun b!6931597 () Bool)

(declare-fun tp!1910909 () Bool)

(declare-fun tp!1910914 () Bool)

(assert (=> b!6931597 (= e!4170755 (and tp!1910909 tp!1910914))))

(declare-fun b!6931598 () Bool)

(declare-fun tp!1910902 () Bool)

(assert (=> b!6931598 (= e!4170753 tp!1910902)))

(declare-fun b!6931599 () Bool)

(declare-fun tp!1910907 () Bool)

(declare-fun tp!1910900 () Bool)

(assert (=> b!6931599 (= e!4170755 (and tp!1910907 tp!1910900))))

(declare-fun b!6931600 () Bool)

(assert (=> b!6931600 (= e!4170754 e!4170761)))

(declare-fun res!2826936 () Bool)

(assert (=> b!6931600 (=> res!2826936 e!4170761)))

(assert (=> b!6931600 (= res!2826936 (not (= lt!2473233 s!14361)))))

(assert (=> b!6931600 (= lt!2473233 (++!14986 (_1!37107 lt!2473249) (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241))))))

(declare-fun matchRSpec!4004 (Regex!16947 List!66700) Bool)

(assert (=> b!6931600 (matchRSpec!4004 r3!135 (_2!37107 lt!2473241))))

(declare-fun lt!2473240 () Unit!160618)

(declare-fun mainMatchTheorem!4004 (Regex!16947 List!66700) Unit!160618)

(assert (=> b!6931600 (= lt!2473240 (mainMatchTheorem!4004 r3!135 (_2!37107 lt!2473241)))))

(assert (=> b!6931600 (matchRSpec!4004 r2!6280 (_1!37107 lt!2473241))))

(declare-fun lt!2473246 () Unit!160618)

(assert (=> b!6931600 (= lt!2473246 (mainMatchTheorem!4004 r2!6280 (_1!37107 lt!2473241)))))

(declare-fun b!6931601 () Bool)

(declare-fun res!2826938 () Bool)

(declare-fun e!4170759 () Bool)

(assert (=> b!6931601 (=> (not res!2826938) (not e!4170759))))

(assert (=> b!6931601 (= res!2826938 (validRegex!8653 r3!135))))

(declare-fun b!6931602 () Bool)

(assert (=> b!6931602 (= e!4170755 tp_is_empty!43119)))

(declare-fun b!6931603 () Bool)

(declare-fun tp!1910915 () Bool)

(declare-fun tp!1910906 () Bool)

(assert (=> b!6931603 (= e!4170753 (and tp!1910915 tp!1910906))))

(declare-fun b!6931589 () Bool)

(assert (=> b!6931589 (= e!4170759 (not e!4170758))))

(declare-fun res!2826937 () Bool)

(assert (=> b!6931589 (=> res!2826937 e!4170758)))

(declare-fun lt!2473251 () Bool)

(assert (=> b!6931589 (= res!2826937 lt!2473251)))

(declare-fun lt!2473234 () Regex!16947)

(assert (=> b!6931589 (= (matchR!9086 lt!2473234 s!14361) (matchRSpec!4004 lt!2473234 s!14361))))

(declare-fun lt!2473247 () Unit!160618)

(assert (=> b!6931589 (= lt!2473247 (mainMatchTheorem!4004 lt!2473234 s!14361))))

(declare-fun lt!2473236 () Regex!16947)

(assert (=> b!6931589 (= lt!2473251 (matchRSpec!4004 lt!2473236 s!14361))))

(assert (=> b!6931589 (= lt!2473251 (matchR!9086 lt!2473236 s!14361))))

(declare-fun lt!2473244 () Unit!160618)

(assert (=> b!6931589 (= lt!2473244 (mainMatchTheorem!4004 lt!2473236 s!14361))))

(assert (=> b!6931589 (= lt!2473234 (Concat!25792 r1!6342 lt!2473239))))

(assert (=> b!6931589 (= lt!2473239 (Concat!25792 r2!6280 r3!135))))

(assert (=> b!6931589 (= lt!2473236 (Concat!25792 lt!2473237 r3!135))))

(assert (=> b!6931589 (= lt!2473237 (Concat!25792 r1!6342 r2!6280))))

(declare-fun res!2826934 () Bool)

(assert (=> start!666122 (=> (not res!2826934) (not e!4170759))))

(assert (=> start!666122 (= res!2826934 (validRegex!8653 r1!6342))))

(assert (=> start!666122 e!4170759))

(assert (=> start!666122 e!4170755))

(assert (=> start!666122 e!4170757))

(assert (=> start!666122 e!4170753))

(assert (=> start!666122 e!4170756))

(declare-fun b!6931604 () Bool)

(declare-fun res!2826940 () Bool)

(assert (=> b!6931604 (=> (not res!2826940) (not e!4170759))))

(assert (=> b!6931604 (= res!2826940 (validRegex!8653 r2!6280))))

(assert (=> b!6931605 (= e!4170762 e!4170754)))

(declare-fun res!2826932 () Bool)

(assert (=> b!6931605 (=> res!2826932 e!4170754)))

(assert (=> b!6931605 (= res!2826932 (not (matchR!9086 r2!6280 (_1!37107 lt!2473241))))))

(declare-fun lt!2473245 () Option!16716)

(declare-fun get!23357 (Option!16716) tuple2!67608)

(assert (=> b!6931605 (= lt!2473241 (get!23357 lt!2473245))))

(declare-fun Exists!3947 (Int) Bool)

(assert (=> b!6931605 (= (Exists!3947 lambda!394457) (Exists!3947 lambda!394458))))

(declare-fun lt!2473242 () Unit!160618)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2408 (Regex!16947 Regex!16947 List!66700) Unit!160618)

(assert (=> b!6931605 (= lt!2473242 (lemmaExistCutMatchRandMatchRSpecEquivalent!2408 r2!6280 r3!135 (_2!37107 lt!2473249)))))

(assert (=> b!6931605 (= (isDefined!13417 lt!2473245) (Exists!3947 lambda!394457))))

(assert (=> b!6931605 (= lt!2473245 (findConcatSeparation!3130 r2!6280 r3!135 Nil!66576 (_2!37107 lt!2473249) (_2!37107 lt!2473249)))))

(declare-fun lt!2473253 () Unit!160618)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2888 (Regex!16947 Regex!16947 List!66700) Unit!160618)

(assert (=> b!6931605 (= lt!2473253 (lemmaFindConcatSeparationEquivalentToExists!2888 r2!6280 r3!135 (_2!37107 lt!2473249)))))

(assert (=> b!6931605 (matchRSpec!4004 lt!2473239 (_2!37107 lt!2473249))))

(declare-fun lt!2473235 () Unit!160618)

(assert (=> b!6931605 (= lt!2473235 (mainMatchTheorem!4004 lt!2473239 (_2!37107 lt!2473249)))))

(assert (=> b!6931606 (= e!4170760 e!4170762)))

(declare-fun res!2826935 () Bool)

(assert (=> b!6931606 (=> res!2826935 e!4170762)))

(declare-fun lt!2473238 () Bool)

(assert (=> b!6931606 (= res!2826935 (not lt!2473238))))

(assert (=> b!6931606 (= lt!2473238 (matchRSpec!4004 r1!6342 (_1!37107 lt!2473249)))))

(assert (=> b!6931606 (= lt!2473238 (matchR!9086 r1!6342 (_1!37107 lt!2473249)))))

(declare-fun lt!2473243 () Unit!160618)

(assert (=> b!6931606 (= lt!2473243 (mainMatchTheorem!4004 r1!6342 (_1!37107 lt!2473249)))))

(assert (=> b!6931606 (= lt!2473249 (get!23357 lt!2473248))))

(assert (=> b!6931606 (= (Exists!3947 lambda!394455) (Exists!3947 lambda!394456))))

(declare-fun lt!2473250 () Unit!160618)

(assert (=> b!6931606 (= lt!2473250 (lemmaExistCutMatchRandMatchRSpecEquivalent!2408 r1!6342 lt!2473239 s!14361))))

(assert (=> b!6931606 (Exists!3947 lambda!394455)))

(declare-fun lt!2473252 () Unit!160618)

(assert (=> b!6931606 (= lt!2473252 (lemmaFindConcatSeparationEquivalentToExists!2888 r1!6342 lt!2473239 s!14361))))

(declare-fun b!6931607 () Bool)

(declare-fun tp!1910912 () Bool)

(declare-fun tp!1910905 () Bool)

(assert (=> b!6931607 (= e!4170753 (and tp!1910912 tp!1910905))))

(assert (= (and start!666122 res!2826934) b!6931604))

(assert (= (and b!6931604 res!2826940) b!6931601))

(assert (= (and b!6931601 res!2826938) b!6931589))

(assert (= (and b!6931589 (not res!2826937)) b!6931586))

(assert (= (and b!6931586 (not res!2826931)) b!6931606))

(assert (= (and b!6931606 (not res!2826935)) b!6931594))

(assert (= (and b!6931594 (not res!2826939)) b!6931605))

(assert (= (and b!6931605 (not res!2826932)) b!6931588))

(assert (= (and b!6931588 (not res!2826933)) b!6931600))

(assert (= (and b!6931600 (not res!2826936)) b!6931591))

(get-info :version)

(assert (= (and start!666122 ((_ is ElementMatch!16947) r1!6342)) b!6931602))

(assert (= (and start!666122 ((_ is Concat!25792) r1!6342)) b!6931599))

(assert (= (and start!666122 ((_ is Star!16947) r1!6342)) b!6931587))

(assert (= (and start!666122 ((_ is Union!16947) r1!6342)) b!6931597))

(assert (= (and start!666122 ((_ is ElementMatch!16947) r2!6280)) b!6931596))

(assert (= (and start!666122 ((_ is Concat!25792) r2!6280)) b!6931592))

(assert (= (and start!666122 ((_ is Star!16947) r2!6280)) b!6931585))

(assert (= (and start!666122 ((_ is Union!16947) r2!6280)) b!6931590))

(assert (= (and start!666122 ((_ is ElementMatch!16947) r3!135)) b!6931595))

(assert (= (and start!666122 ((_ is Concat!25792) r3!135)) b!6931603))

(assert (= (and start!666122 ((_ is Star!16947) r3!135)) b!6931598))

(assert (= (and start!666122 ((_ is Union!16947) r3!135)) b!6931607))

(assert (= (and start!666122 ((_ is Cons!66576) s!14361)) b!6931593))

(declare-fun m!7638446 () Bool)

(assert (=> b!6931591 m!7638446))

(declare-fun m!7638448 () Bool)

(assert (=> b!6931591 m!7638448))

(assert (=> b!6931591 m!7638448))

(declare-fun m!7638450 () Bool)

(assert (=> b!6931591 m!7638450))

(declare-fun m!7638452 () Bool)

(assert (=> b!6931591 m!7638452))

(declare-fun m!7638454 () Bool)

(assert (=> b!6931588 m!7638454))

(declare-fun m!7638456 () Bool)

(assert (=> start!666122 m!7638456))

(declare-fun m!7638458 () Bool)

(assert (=> b!6931594 m!7638458))

(declare-fun m!7638460 () Bool)

(assert (=> b!6931589 m!7638460))

(declare-fun m!7638462 () Bool)

(assert (=> b!6931589 m!7638462))

(declare-fun m!7638464 () Bool)

(assert (=> b!6931589 m!7638464))

(declare-fun m!7638466 () Bool)

(assert (=> b!6931589 m!7638466))

(declare-fun m!7638468 () Bool)

(assert (=> b!6931589 m!7638468))

(declare-fun m!7638470 () Bool)

(assert (=> b!6931589 m!7638470))

(declare-fun m!7638472 () Bool)

(assert (=> b!6931601 m!7638472))

(declare-fun m!7638474 () Bool)

(assert (=> b!6931606 m!7638474))

(declare-fun m!7638476 () Bool)

(assert (=> b!6931606 m!7638476))

(declare-fun m!7638478 () Bool)

(assert (=> b!6931606 m!7638478))

(declare-fun m!7638480 () Bool)

(assert (=> b!6931606 m!7638480))

(declare-fun m!7638482 () Bool)

(assert (=> b!6931606 m!7638482))

(assert (=> b!6931606 m!7638482))

(declare-fun m!7638484 () Bool)

(assert (=> b!6931606 m!7638484))

(declare-fun m!7638486 () Bool)

(assert (=> b!6931606 m!7638486))

(declare-fun m!7638488 () Bool)

(assert (=> b!6931606 m!7638488))

(declare-fun m!7638490 () Bool)

(assert (=> b!6931600 m!7638490))

(assert (=> b!6931600 m!7638490))

(declare-fun m!7638492 () Bool)

(assert (=> b!6931600 m!7638492))

(declare-fun m!7638494 () Bool)

(assert (=> b!6931600 m!7638494))

(declare-fun m!7638496 () Bool)

(assert (=> b!6931600 m!7638496))

(declare-fun m!7638498 () Bool)

(assert (=> b!6931600 m!7638498))

(declare-fun m!7638500 () Bool)

(assert (=> b!6931600 m!7638500))

(declare-fun m!7638502 () Bool)

(assert (=> b!6931604 m!7638502))

(declare-fun m!7638504 () Bool)

(assert (=> b!6931586 m!7638504))

(declare-fun m!7638506 () Bool)

(assert (=> b!6931586 m!7638506))

(declare-fun m!7638508 () Bool)

(assert (=> b!6931605 m!7638508))

(declare-fun m!7638510 () Bool)

(assert (=> b!6931605 m!7638510))

(declare-fun m!7638512 () Bool)

(assert (=> b!6931605 m!7638512))

(declare-fun m!7638514 () Bool)

(assert (=> b!6931605 m!7638514))

(declare-fun m!7638516 () Bool)

(assert (=> b!6931605 m!7638516))

(declare-fun m!7638518 () Bool)

(assert (=> b!6931605 m!7638518))

(declare-fun m!7638520 () Bool)

(assert (=> b!6931605 m!7638520))

(declare-fun m!7638522 () Bool)

(assert (=> b!6931605 m!7638522))

(declare-fun m!7638524 () Bool)

(assert (=> b!6931605 m!7638524))

(assert (=> b!6931605 m!7638516))

(declare-fun m!7638526 () Bool)

(assert (=> b!6931605 m!7638526))

(check-sat (not b!6931606) (not b!6931594) (not b!6931599) (not b!6931600) (not b!6931590) (not b!6931604) (not b!6931593) (not b!6931586) (not b!6931588) (not b!6931598) (not b!6931603) (not b!6931591) (not b!6931589) (not b!6931607) (not start!666122) (not b!6931587) tp_is_empty!43119 (not b!6931592) (not b!6931601) (not b!6931605) (not b!6931585) (not b!6931597))
(check-sat)
(get-model)

(declare-fun b!6931675 () Bool)

(declare-fun e!4170803 () Bool)

(declare-fun call!629882 () Bool)

(assert (=> b!6931675 (= e!4170803 call!629882)))

(declare-fun b!6931676 () Bool)

(declare-fun e!4170805 () Bool)

(declare-fun e!4170804 () Bool)

(assert (=> b!6931676 (= e!4170805 e!4170804)))

(declare-fun c!1286451 () Bool)

(assert (=> b!6931676 (= c!1286451 ((_ is Star!16947) lt!2473237))))

(declare-fun d!2166097 () Bool)

(declare-fun res!2826972 () Bool)

(assert (=> d!2166097 (=> res!2826972 e!4170805)))

(assert (=> d!2166097 (= res!2826972 ((_ is ElementMatch!16947) lt!2473237))))

(assert (=> d!2166097 (= (validRegex!8653 lt!2473237) e!4170805)))

(declare-fun b!6931677 () Bool)

(declare-fun e!4170807 () Bool)

(assert (=> b!6931677 (= e!4170804 e!4170807)))

(declare-fun res!2826973 () Bool)

(declare-fun nullable!6768 (Regex!16947) Bool)

(assert (=> b!6931677 (= res!2826973 (not (nullable!6768 (reg!17276 lt!2473237))))))

(assert (=> b!6931677 (=> (not res!2826973) (not e!4170807))))

(declare-fun b!6931678 () Bool)

(declare-fun e!4170806 () Bool)

(declare-fun e!4170808 () Bool)

(assert (=> b!6931678 (= e!4170806 e!4170808)))

(declare-fun res!2826970 () Bool)

(assert (=> b!6931678 (=> (not res!2826970) (not e!4170808))))

(assert (=> b!6931678 (= res!2826970 call!629882)))

(declare-fun c!1286450 () Bool)

(declare-fun call!629883 () Bool)

(declare-fun bm!629877 () Bool)

(assert (=> bm!629877 (= call!629883 (validRegex!8653 (ite c!1286451 (reg!17276 lt!2473237) (ite c!1286450 (regTwo!34407 lt!2473237) (regOne!34406 lt!2473237)))))))

(declare-fun b!6931679 () Bool)

(assert (=> b!6931679 (= e!4170807 call!629883)))

(declare-fun bm!629878 () Bool)

(assert (=> bm!629878 (= call!629882 call!629883)))

(declare-fun bm!629879 () Bool)

(declare-fun call!629884 () Bool)

(assert (=> bm!629879 (= call!629884 (validRegex!8653 (ite c!1286450 (regOne!34407 lt!2473237) (regTwo!34406 lt!2473237))))))

(declare-fun b!6931680 () Bool)

(declare-fun e!4170802 () Bool)

(assert (=> b!6931680 (= e!4170804 e!4170802)))

(assert (=> b!6931680 (= c!1286450 ((_ is Union!16947) lt!2473237))))

(declare-fun b!6931681 () Bool)

(declare-fun res!2826974 () Bool)

(assert (=> b!6931681 (=> res!2826974 e!4170806)))

(assert (=> b!6931681 (= res!2826974 (not ((_ is Concat!25792) lt!2473237)))))

(assert (=> b!6931681 (= e!4170802 e!4170806)))

(declare-fun b!6931682 () Bool)

(assert (=> b!6931682 (= e!4170808 call!629884)))

(declare-fun b!6931683 () Bool)

(declare-fun res!2826971 () Bool)

(assert (=> b!6931683 (=> (not res!2826971) (not e!4170803))))

(assert (=> b!6931683 (= res!2826971 call!629884)))

(assert (=> b!6931683 (= e!4170802 e!4170803)))

(assert (= (and d!2166097 (not res!2826972)) b!6931676))

(assert (= (and b!6931676 c!1286451) b!6931677))

(assert (= (and b!6931676 (not c!1286451)) b!6931680))

(assert (= (and b!6931677 res!2826973) b!6931679))

(assert (= (and b!6931680 c!1286450) b!6931683))

(assert (= (and b!6931680 (not c!1286450)) b!6931681))

(assert (= (and b!6931683 res!2826971) b!6931675))

(assert (= (and b!6931681 (not res!2826974)) b!6931678))

(assert (= (and b!6931678 res!2826970) b!6931682))

(assert (= (or b!6931683 b!6931682) bm!629879))

(assert (= (or b!6931675 b!6931678) bm!629878))

(assert (= (or b!6931679 bm!629878) bm!629877))

(declare-fun m!7638540 () Bool)

(assert (=> b!6931677 m!7638540))

(declare-fun m!7638542 () Bool)

(assert (=> bm!629877 m!7638542))

(declare-fun m!7638544 () Bool)

(assert (=> bm!629879 m!7638544))

(assert (=> b!6931591 d!2166097))

(declare-fun b!6931732 () Bool)

(declare-fun e!4170834 () List!66700)

(assert (=> b!6931732 (= e!4170834 (Cons!66576 (h!73024 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241))) (++!14986 (t!380443 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241))) (_2!37107 lt!2473241))))))

(declare-fun d!2166103 () Bool)

(declare-fun e!4170837 () Bool)

(assert (=> d!2166103 e!4170837))

(declare-fun res!2826995 () Bool)

(assert (=> d!2166103 (=> (not res!2826995) (not e!4170837))))

(declare-fun lt!2473264 () List!66700)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13090 (List!66700) (InoxSet C!34164))

(assert (=> d!2166103 (= res!2826995 (= (content!13090 lt!2473264) ((_ map or) (content!13090 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241))) (content!13090 (_2!37107 lt!2473241)))))))

(assert (=> d!2166103 (= lt!2473264 e!4170834)))

(declare-fun c!1286465 () Bool)

(assert (=> d!2166103 (= c!1286465 ((_ is Nil!66576) (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241))))))

(assert (=> d!2166103 (= (++!14986 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241)) (_2!37107 lt!2473241)) lt!2473264)))

(declare-fun b!6931736 () Bool)

(assert (=> b!6931736 (= e!4170837 (or (not (= (_2!37107 lt!2473241) Nil!66576)) (= lt!2473264 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241)))))))

(declare-fun b!6931731 () Bool)

(assert (=> b!6931731 (= e!4170834 (_2!37107 lt!2473241))))

(declare-fun b!6931735 () Bool)

(declare-fun res!2826994 () Bool)

(assert (=> b!6931735 (=> (not res!2826994) (not e!4170837))))

(declare-fun size!40787 (List!66700) Int)

(assert (=> b!6931735 (= res!2826994 (= (size!40787 lt!2473264) (+ (size!40787 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241))) (size!40787 (_2!37107 lt!2473241)))))))

(assert (= (and d!2166103 c!1286465) b!6931731))

(assert (= (and d!2166103 (not c!1286465)) b!6931732))

(assert (= (and d!2166103 res!2826995) b!6931735))

(assert (= (and b!6931735 res!2826994) b!6931736))

(declare-fun m!7638582 () Bool)

(assert (=> b!6931732 m!7638582))

(declare-fun m!7638584 () Bool)

(assert (=> d!2166103 m!7638584))

(assert (=> d!2166103 m!7638448))

(declare-fun m!7638586 () Bool)

(assert (=> d!2166103 m!7638586))

(declare-fun m!7638588 () Bool)

(assert (=> d!2166103 m!7638588))

(declare-fun m!7638590 () Bool)

(assert (=> b!6931735 m!7638590))

(assert (=> b!6931735 m!7638448))

(declare-fun m!7638592 () Bool)

(assert (=> b!6931735 m!7638592))

(declare-fun m!7638594 () Bool)

(assert (=> b!6931735 m!7638594))

(assert (=> b!6931591 d!2166103))

(declare-fun b!6931742 () Bool)

(declare-fun e!4170844 () List!66700)

(assert (=> b!6931742 (= e!4170844 (Cons!66576 (h!73024 (_1!37107 lt!2473249)) (++!14986 (t!380443 (_1!37107 lt!2473249)) (_1!37107 lt!2473241))))))

(declare-fun d!2166111 () Bool)

(declare-fun e!4170845 () Bool)

(assert (=> d!2166111 e!4170845))

(declare-fun res!2827003 () Bool)

(assert (=> d!2166111 (=> (not res!2827003) (not e!4170845))))

(declare-fun lt!2473265 () List!66700)

(assert (=> d!2166111 (= res!2827003 (= (content!13090 lt!2473265) ((_ map or) (content!13090 (_1!37107 lt!2473249)) (content!13090 (_1!37107 lt!2473241)))))))

(assert (=> d!2166111 (= lt!2473265 e!4170844)))

(declare-fun c!1286467 () Bool)

(assert (=> d!2166111 (= c!1286467 ((_ is Nil!66576) (_1!37107 lt!2473249)))))

(assert (=> d!2166111 (= (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241)) lt!2473265)))

(declare-fun b!6931744 () Bool)

(assert (=> b!6931744 (= e!4170845 (or (not (= (_1!37107 lt!2473241) Nil!66576)) (= lt!2473265 (_1!37107 lt!2473249))))))

(declare-fun b!6931741 () Bool)

(assert (=> b!6931741 (= e!4170844 (_1!37107 lt!2473241))))

(declare-fun b!6931743 () Bool)

(declare-fun res!2827002 () Bool)

(assert (=> b!6931743 (=> (not res!2827002) (not e!4170845))))

(assert (=> b!6931743 (= res!2827002 (= (size!40787 lt!2473265) (+ (size!40787 (_1!37107 lt!2473249)) (size!40787 (_1!37107 lt!2473241)))))))

(assert (= (and d!2166111 c!1286467) b!6931741))

(assert (= (and d!2166111 (not c!1286467)) b!6931742))

(assert (= (and d!2166111 res!2827003) b!6931743))

(assert (= (and b!6931743 res!2827002) b!6931744))

(declare-fun m!7638596 () Bool)

(assert (=> b!6931742 m!7638596))

(declare-fun m!7638598 () Bool)

(assert (=> d!2166111 m!7638598))

(declare-fun m!7638600 () Bool)

(assert (=> d!2166111 m!7638600))

(declare-fun m!7638602 () Bool)

(assert (=> d!2166111 m!7638602))

(declare-fun m!7638604 () Bool)

(assert (=> b!6931743 m!7638604))

(declare-fun m!7638606 () Bool)

(assert (=> b!6931743 m!7638606))

(declare-fun m!7638608 () Bool)

(assert (=> b!6931743 m!7638608))

(assert (=> b!6931591 d!2166111))

(declare-fun d!2166113 () Bool)

(assert (=> d!2166113 (= (++!14986 (++!14986 (_1!37107 lt!2473249) (_1!37107 lt!2473241)) (_2!37107 lt!2473241)) (++!14986 (_1!37107 lt!2473249) (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241))))))

(declare-fun lt!2473272 () Unit!160618)

(declare-fun choose!51627 (List!66700 List!66700 List!66700) Unit!160618)

(assert (=> d!2166113 (= lt!2473272 (choose!51627 (_1!37107 lt!2473249) (_1!37107 lt!2473241) (_2!37107 lt!2473241)))))

(assert (=> d!2166113 (= (lemmaConcatAssociativity!3028 (_1!37107 lt!2473249) (_1!37107 lt!2473241) (_2!37107 lt!2473241)) lt!2473272)))

(declare-fun bs!1850490 () Bool)

(assert (= bs!1850490 d!2166113))

(declare-fun m!7638632 () Bool)

(assert (=> bs!1850490 m!7638632))

(assert (=> bs!1850490 m!7638448))

(assert (=> bs!1850490 m!7638450))

(assert (=> bs!1850490 m!7638448))

(assert (=> bs!1850490 m!7638490))

(assert (=> bs!1850490 m!7638490))

(assert (=> bs!1850490 m!7638492))

(assert (=> b!6931591 d!2166113))

(declare-fun d!2166123 () Bool)

(declare-fun isEmpty!38838 (Option!16716) Bool)

(assert (=> d!2166123 (= (isDefined!13417 lt!2473248) (not (isEmpty!38838 lt!2473248)))))

(declare-fun bs!1850493 () Bool)

(assert (= bs!1850493 d!2166123))

(declare-fun m!7638638 () Bool)

(assert (=> bs!1850493 m!7638638))

(assert (=> b!6931586 d!2166123))

(declare-fun b!6931849 () Bool)

(declare-fun lt!2473295 () Unit!160618)

(declare-fun lt!2473296 () Unit!160618)

(assert (=> b!6931849 (= lt!2473295 lt!2473296)))

(assert (=> b!6931849 (= (++!14986 (++!14986 Nil!66576 (Cons!66576 (h!73024 s!14361) Nil!66576)) (t!380443 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2847 (List!66700 C!34164 List!66700 List!66700) Unit!160618)

(assert (=> b!6931849 (= lt!2473296 (lemmaMoveElementToOtherListKeepsConcatEq!2847 Nil!66576 (h!73024 s!14361) (t!380443 s!14361) s!14361))))

(declare-fun e!4170904 () Option!16716)

(assert (=> b!6931849 (= e!4170904 (findConcatSeparation!3130 r1!6342 lt!2473239 (++!14986 Nil!66576 (Cons!66576 (h!73024 s!14361) Nil!66576)) (t!380443 s!14361) s!14361))))

(declare-fun b!6931850 () Bool)

(assert (=> b!6931850 (= e!4170904 None!16715)))

(declare-fun b!6931852 () Bool)

(declare-fun e!4170906 () Bool)

(declare-fun lt!2473294 () Option!16716)

(assert (=> b!6931852 (= e!4170906 (not (isDefined!13417 lt!2473294)))))

(declare-fun b!6931853 () Bool)

(declare-fun e!4170905 () Bool)

(assert (=> b!6931853 (= e!4170905 (= (++!14986 (_1!37107 (get!23357 lt!2473294)) (_2!37107 (get!23357 lt!2473294))) s!14361))))

(declare-fun b!6931854 () Bool)

(declare-fun e!4170903 () Option!16716)

(assert (=> b!6931854 (= e!4170903 e!4170904)))

(declare-fun c!1286491 () Bool)

(assert (=> b!6931854 (= c!1286491 ((_ is Nil!66576) s!14361))))

(declare-fun b!6931855 () Bool)

(declare-fun res!2827066 () Bool)

(assert (=> b!6931855 (=> (not res!2827066) (not e!4170905))))

(assert (=> b!6931855 (= res!2827066 (matchR!9086 r1!6342 (_1!37107 (get!23357 lt!2473294))))))

(declare-fun d!2166127 () Bool)

(assert (=> d!2166127 e!4170906))

(declare-fun res!2827063 () Bool)

(assert (=> d!2166127 (=> res!2827063 e!4170906)))

(assert (=> d!2166127 (= res!2827063 e!4170905)))

(declare-fun res!2827065 () Bool)

(assert (=> d!2166127 (=> (not res!2827065) (not e!4170905))))

(assert (=> d!2166127 (= res!2827065 (isDefined!13417 lt!2473294))))

(assert (=> d!2166127 (= lt!2473294 e!4170903)))

(declare-fun c!1286492 () Bool)

(declare-fun e!4170907 () Bool)

(assert (=> d!2166127 (= c!1286492 e!4170907)))

(declare-fun res!2827062 () Bool)

(assert (=> d!2166127 (=> (not res!2827062) (not e!4170907))))

(assert (=> d!2166127 (= res!2827062 (matchR!9086 r1!6342 Nil!66576))))

(assert (=> d!2166127 (validRegex!8653 r1!6342)))

(assert (=> d!2166127 (= (findConcatSeparation!3130 r1!6342 lt!2473239 Nil!66576 s!14361 s!14361) lt!2473294)))

(declare-fun b!6931851 () Bool)

(assert (=> b!6931851 (= e!4170907 (matchR!9086 lt!2473239 s!14361))))

(declare-fun b!6931856 () Bool)

(assert (=> b!6931856 (= e!4170903 (Some!16715 (tuple2!67609 Nil!66576 s!14361)))))

(declare-fun b!6931857 () Bool)

(declare-fun res!2827064 () Bool)

(assert (=> b!6931857 (=> (not res!2827064) (not e!4170905))))

(assert (=> b!6931857 (= res!2827064 (matchR!9086 lt!2473239 (_2!37107 (get!23357 lt!2473294))))))

(assert (= (and d!2166127 res!2827062) b!6931851))

(assert (= (and d!2166127 c!1286492) b!6931856))

(assert (= (and d!2166127 (not c!1286492)) b!6931854))

(assert (= (and b!6931854 c!1286491) b!6931850))

(assert (= (and b!6931854 (not c!1286491)) b!6931849))

(assert (= (and d!2166127 res!2827065) b!6931855))

(assert (= (and b!6931855 res!2827066) b!6931857))

(assert (= (and b!6931857 res!2827064) b!6931853))

(assert (= (and d!2166127 (not res!2827063)) b!6931852))

(declare-fun m!7638676 () Bool)

(assert (=> b!6931849 m!7638676))

(assert (=> b!6931849 m!7638676))

(declare-fun m!7638678 () Bool)

(assert (=> b!6931849 m!7638678))

(declare-fun m!7638680 () Bool)

(assert (=> b!6931849 m!7638680))

(assert (=> b!6931849 m!7638676))

(declare-fun m!7638682 () Bool)

(assert (=> b!6931849 m!7638682))

(declare-fun m!7638684 () Bool)

(assert (=> b!6931855 m!7638684))

(declare-fun m!7638686 () Bool)

(assert (=> b!6931855 m!7638686))

(declare-fun m!7638688 () Bool)

(assert (=> b!6931852 m!7638688))

(assert (=> b!6931853 m!7638684))

(declare-fun m!7638690 () Bool)

(assert (=> b!6931853 m!7638690))

(assert (=> d!2166127 m!7638688))

(declare-fun m!7638692 () Bool)

(assert (=> d!2166127 m!7638692))

(assert (=> d!2166127 m!7638456))

(assert (=> b!6931857 m!7638684))

(declare-fun m!7638694 () Bool)

(assert (=> b!6931857 m!7638694))

(declare-fun m!7638696 () Bool)

(assert (=> b!6931851 m!7638696))

(assert (=> b!6931586 d!2166127))

(declare-fun b!6931862 () Bool)

(declare-fun e!4170911 () Bool)

(declare-fun call!629899 () Bool)

(assert (=> b!6931862 (= e!4170911 call!629899)))

(declare-fun b!6931863 () Bool)

(declare-fun e!4170913 () Bool)

(declare-fun e!4170912 () Bool)

(assert (=> b!6931863 (= e!4170913 e!4170912)))

(declare-fun c!1286494 () Bool)

(assert (=> b!6931863 (= c!1286494 ((_ is Star!16947) r3!135))))

(declare-fun d!2166135 () Bool)

(declare-fun res!2827073 () Bool)

(assert (=> d!2166135 (=> res!2827073 e!4170913)))

(assert (=> d!2166135 (= res!2827073 ((_ is ElementMatch!16947) r3!135))))

(assert (=> d!2166135 (= (validRegex!8653 r3!135) e!4170913)))

(declare-fun b!6931864 () Bool)

(declare-fun e!4170915 () Bool)

(assert (=> b!6931864 (= e!4170912 e!4170915)))

(declare-fun res!2827074 () Bool)

(assert (=> b!6931864 (= res!2827074 (not (nullable!6768 (reg!17276 r3!135))))))

(assert (=> b!6931864 (=> (not res!2827074) (not e!4170915))))

(declare-fun b!6931865 () Bool)

(declare-fun e!4170914 () Bool)

(declare-fun e!4170916 () Bool)

(assert (=> b!6931865 (= e!4170914 e!4170916)))

(declare-fun res!2827071 () Bool)

(assert (=> b!6931865 (=> (not res!2827071) (not e!4170916))))

(assert (=> b!6931865 (= res!2827071 call!629899)))

(declare-fun call!629900 () Bool)

(declare-fun bm!629894 () Bool)

(declare-fun c!1286493 () Bool)

(assert (=> bm!629894 (= call!629900 (validRegex!8653 (ite c!1286494 (reg!17276 r3!135) (ite c!1286493 (regTwo!34407 r3!135) (regOne!34406 r3!135)))))))

(declare-fun b!6931866 () Bool)

(assert (=> b!6931866 (= e!4170915 call!629900)))

(declare-fun bm!629895 () Bool)

(assert (=> bm!629895 (= call!629899 call!629900)))

(declare-fun bm!629896 () Bool)

(declare-fun call!629901 () Bool)

(assert (=> bm!629896 (= call!629901 (validRegex!8653 (ite c!1286493 (regOne!34407 r3!135) (regTwo!34406 r3!135))))))

(declare-fun b!6931867 () Bool)

(declare-fun e!4170910 () Bool)

(assert (=> b!6931867 (= e!4170912 e!4170910)))

(assert (=> b!6931867 (= c!1286493 ((_ is Union!16947) r3!135))))

(declare-fun b!6931868 () Bool)

(declare-fun res!2827075 () Bool)

(assert (=> b!6931868 (=> res!2827075 e!4170914)))

(assert (=> b!6931868 (= res!2827075 (not ((_ is Concat!25792) r3!135)))))

(assert (=> b!6931868 (= e!4170910 e!4170914)))

(declare-fun b!6931869 () Bool)

(assert (=> b!6931869 (= e!4170916 call!629901)))

(declare-fun b!6931870 () Bool)

(declare-fun res!2827072 () Bool)

(assert (=> b!6931870 (=> (not res!2827072) (not e!4170911))))

(assert (=> b!6931870 (= res!2827072 call!629901)))

(assert (=> b!6931870 (= e!4170910 e!4170911)))

(assert (= (and d!2166135 (not res!2827073)) b!6931863))

(assert (= (and b!6931863 c!1286494) b!6931864))

(assert (= (and b!6931863 (not c!1286494)) b!6931867))

(assert (= (and b!6931864 res!2827074) b!6931866))

(assert (= (and b!6931867 c!1286493) b!6931870))

(assert (= (and b!6931867 (not c!1286493)) b!6931868))

(assert (= (and b!6931870 res!2827072) b!6931862))

(assert (= (and b!6931868 (not res!2827075)) b!6931865))

(assert (= (and b!6931865 res!2827071) b!6931869))

(assert (= (or b!6931870 b!6931869) bm!629896))

(assert (= (or b!6931862 b!6931865) bm!629895))

(assert (= (or b!6931866 bm!629895) bm!629894))

(declare-fun m!7638708 () Bool)

(assert (=> b!6931864 m!7638708))

(declare-fun m!7638710 () Bool)

(assert (=> bm!629894 m!7638710))

(declare-fun m!7638712 () Bool)

(assert (=> bm!629896 m!7638712))

(assert (=> b!6931601 d!2166135))

(declare-fun d!2166143 () Bool)

(declare-fun choose!51628 (Int) Bool)

(assert (=> d!2166143 (= (Exists!3947 lambda!394455) (choose!51628 lambda!394455))))

(declare-fun bs!1850503 () Bool)

(assert (= bs!1850503 d!2166143))

(declare-fun m!7638714 () Bool)

(assert (=> bs!1850503 m!7638714))

(assert (=> b!6931606 d!2166143))

(declare-fun bs!1850553 () Bool)

(declare-fun d!2166145 () Bool)

(assert (= bs!1850553 (and d!2166145 b!6931606)))

(declare-fun lambda!394484 () Int)

(assert (=> bs!1850553 (= lambda!394484 lambda!394455)))

(assert (=> bs!1850553 (not (= lambda!394484 lambda!394456))))

(declare-fun bs!1850554 () Bool)

(assert (= bs!1850554 (and d!2166145 b!6931605)))

(assert (=> bs!1850554 (= (and (= s!14361 (_2!37107 lt!2473249)) (= r1!6342 r2!6280) (= lt!2473239 r3!135)) (= lambda!394484 lambda!394457))))

(assert (=> bs!1850554 (not (= lambda!394484 lambda!394458))))

(assert (=> d!2166145 true))

(assert (=> d!2166145 true))

(assert (=> d!2166145 true))

(declare-fun lambda!394486 () Int)

(assert (=> bs!1850553 (= lambda!394486 lambda!394456)))

(assert (=> bs!1850554 (= (and (= s!14361 (_2!37107 lt!2473249)) (= r1!6342 r2!6280) (= lt!2473239 r3!135)) (= lambda!394486 lambda!394458))))

(assert (=> bs!1850554 (not (= lambda!394486 lambda!394457))))

(assert (=> bs!1850553 (not (= lambda!394486 lambda!394455))))

(declare-fun bs!1850567 () Bool)

(assert (= bs!1850567 d!2166145))

(assert (=> bs!1850567 (not (= lambda!394486 lambda!394484))))

(assert (=> d!2166145 true))

(assert (=> d!2166145 true))

(assert (=> d!2166145 true))

(assert (=> d!2166145 (= (Exists!3947 lambda!394484) (Exists!3947 lambda!394486))))

(declare-fun lt!2473306 () Unit!160618)

(declare-fun choose!51629 (Regex!16947 Regex!16947 List!66700) Unit!160618)

(assert (=> d!2166145 (= lt!2473306 (choose!51629 r1!6342 lt!2473239 s!14361))))

(assert (=> d!2166145 (validRegex!8653 r1!6342)))

(assert (=> d!2166145 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2408 r1!6342 lt!2473239 s!14361) lt!2473306)))

(declare-fun m!7638770 () Bool)

(assert (=> bs!1850567 m!7638770))

(declare-fun m!7638772 () Bool)

(assert (=> bs!1850567 m!7638772))

(declare-fun m!7638774 () Bool)

(assert (=> bs!1850567 m!7638774))

(assert (=> bs!1850567 m!7638456))

(assert (=> b!6931606 d!2166145))

(declare-fun bs!1850631 () Bool)

(declare-fun d!2166165 () Bool)

(assert (= bs!1850631 (and d!2166165 b!6931606)))

(declare-fun lambda!394493 () Int)

(assert (=> bs!1850631 (not (= lambda!394493 lambda!394456))))

(declare-fun bs!1850632 () Bool)

(assert (= bs!1850632 (and d!2166165 d!2166145)))

(assert (=> bs!1850632 (not (= lambda!394493 lambda!394486))))

(declare-fun bs!1850633 () Bool)

(assert (= bs!1850633 (and d!2166165 b!6931605)))

(assert (=> bs!1850633 (not (= lambda!394493 lambda!394458))))

(assert (=> bs!1850633 (= (and (= s!14361 (_2!37107 lt!2473249)) (= r1!6342 r2!6280) (= lt!2473239 r3!135)) (= lambda!394493 lambda!394457))))

(assert (=> bs!1850631 (= lambda!394493 lambda!394455)))

(assert (=> bs!1850632 (= lambda!394493 lambda!394484)))

(assert (=> d!2166165 true))

(assert (=> d!2166165 true))

(assert (=> d!2166165 true))

(assert (=> d!2166165 (= (isDefined!13417 (findConcatSeparation!3130 r1!6342 lt!2473239 Nil!66576 s!14361 s!14361)) (Exists!3947 lambda!394493))))

(declare-fun lt!2473315 () Unit!160618)

(declare-fun choose!51630 (Regex!16947 Regex!16947 List!66700) Unit!160618)

(assert (=> d!2166165 (= lt!2473315 (choose!51630 r1!6342 lt!2473239 s!14361))))

(assert (=> d!2166165 (validRegex!8653 r1!6342)))

(assert (=> d!2166165 (= (lemmaFindConcatSeparationEquivalentToExists!2888 r1!6342 lt!2473239 s!14361) lt!2473315)))

(declare-fun bs!1850634 () Bool)

(assert (= bs!1850634 d!2166165))

(assert (=> bs!1850634 m!7638506))

(assert (=> bs!1850634 m!7638506))

(declare-fun m!7638854 () Bool)

(assert (=> bs!1850634 m!7638854))

(declare-fun m!7638860 () Bool)

(assert (=> bs!1850634 m!7638860))

(declare-fun m!7638864 () Bool)

(assert (=> bs!1850634 m!7638864))

(assert (=> bs!1850634 m!7638456))

(assert (=> b!6931606 d!2166165))

(declare-fun d!2166191 () Bool)

(assert (=> d!2166191 (= (Exists!3947 lambda!394456) (choose!51628 lambda!394456))))

(declare-fun bs!1850635 () Bool)

(assert (= bs!1850635 d!2166191))

(declare-fun m!7638876 () Bool)

(assert (=> bs!1850635 m!7638876))

(assert (=> b!6931606 d!2166191))

(declare-fun bs!1850654 () Bool)

(declare-fun b!6932158 () Bool)

(assert (= bs!1850654 (and b!6932158 b!6931606)))

(declare-fun lambda!394500 () Int)

(assert (=> bs!1850654 (not (= lambda!394500 lambda!394456))))

(declare-fun bs!1850655 () Bool)

(assert (= bs!1850655 (and b!6932158 d!2166145)))

(assert (=> bs!1850655 (not (= lambda!394500 lambda!394486))))

(declare-fun bs!1850656 () Bool)

(assert (= bs!1850656 (and b!6932158 d!2166165)))

(assert (=> bs!1850656 (not (= lambda!394500 lambda!394493))))

(declare-fun bs!1850657 () Bool)

(assert (= bs!1850657 (and b!6932158 b!6931605)))

(assert (=> bs!1850657 (not (= lambda!394500 lambda!394458))))

(assert (=> bs!1850657 (not (= lambda!394500 lambda!394457))))

(assert (=> bs!1850654 (not (= lambda!394500 lambda!394455))))

(assert (=> bs!1850655 (not (= lambda!394500 lambda!394484))))

(assert (=> b!6932158 true))

(assert (=> b!6932158 true))

(declare-fun bs!1850658 () Bool)

(declare-fun b!6932149 () Bool)

(assert (= bs!1850658 (and b!6932149 b!6931606)))

(declare-fun lambda!394501 () Int)

(assert (=> bs!1850658 (= (and (= (_1!37107 lt!2473249) s!14361) (= (regOne!34406 r1!6342) r1!6342) (= (regTwo!34406 r1!6342) lt!2473239)) (= lambda!394501 lambda!394456))))

(declare-fun bs!1850659 () Bool)

(assert (= bs!1850659 (and b!6932149 d!2166165)))

(assert (=> bs!1850659 (not (= lambda!394501 lambda!394493))))

(declare-fun bs!1850660 () Bool)

(assert (= bs!1850660 (and b!6932149 b!6931605)))

(assert (=> bs!1850660 (= (and (= (_1!37107 lt!2473249) (_2!37107 lt!2473249)) (= (regOne!34406 r1!6342) r2!6280) (= (regTwo!34406 r1!6342) r3!135)) (= lambda!394501 lambda!394458))))

(assert (=> bs!1850660 (not (= lambda!394501 lambda!394457))))

(declare-fun bs!1850661 () Bool)

(assert (= bs!1850661 (and b!6932149 b!6932158)))

(assert (=> bs!1850661 (not (= lambda!394501 lambda!394500))))

(declare-fun bs!1850662 () Bool)

(assert (= bs!1850662 (and b!6932149 d!2166145)))

(assert (=> bs!1850662 (= (and (= (_1!37107 lt!2473249) s!14361) (= (regOne!34406 r1!6342) r1!6342) (= (regTwo!34406 r1!6342) lt!2473239)) (= lambda!394501 lambda!394486))))

(assert (=> bs!1850658 (not (= lambda!394501 lambda!394455))))

(assert (=> bs!1850662 (not (= lambda!394501 lambda!394484))))

(assert (=> b!6932149 true))

(assert (=> b!6932149 true))

(declare-fun b!6932148 () Bool)

(declare-fun c!1286544 () Bool)

(assert (=> b!6932148 (= c!1286544 ((_ is ElementMatch!16947) r1!6342))))

(declare-fun e!4171054 () Bool)

(declare-fun e!4171055 () Bool)

(assert (=> b!6932148 (= e!4171054 e!4171055)))

(declare-fun e!4171060 () Bool)

(declare-fun call!629928 () Bool)

(assert (=> b!6932149 (= e!4171060 call!629928)))

(declare-fun b!6932150 () Bool)

(declare-fun c!1286545 () Bool)

(assert (=> b!6932150 (= c!1286545 ((_ is Union!16947) r1!6342))))

(declare-fun e!4171059 () Bool)

(assert (=> b!6932150 (= e!4171055 e!4171059)))

(declare-fun bm!629923 () Bool)

(declare-fun c!1286542 () Bool)

(assert (=> bm!629923 (= call!629928 (Exists!3947 (ite c!1286542 lambda!394500 lambda!394501)))))

(declare-fun bm!629924 () Bool)

(declare-fun call!629929 () Bool)

(declare-fun isEmpty!38839 (List!66700) Bool)

(assert (=> bm!629924 (= call!629929 (isEmpty!38839 (_1!37107 lt!2473249)))))

(declare-fun b!6932151 () Bool)

(assert (=> b!6932151 (= e!4171055 (= (_1!37107 lt!2473249) (Cons!66576 (c!1286433 r1!6342) Nil!66576)))))

(declare-fun b!6932152 () Bool)

(assert (=> b!6932152 (= e!4171059 e!4171060)))

(assert (=> b!6932152 (= c!1286542 ((_ is Star!16947) r1!6342))))

(declare-fun b!6932153 () Bool)

(declare-fun e!4171057 () Bool)

(assert (=> b!6932153 (= e!4171057 (matchRSpec!4004 (regTwo!34407 r1!6342) (_1!37107 lt!2473249)))))

(declare-fun d!2166193 () Bool)

(declare-fun c!1286543 () Bool)

(assert (=> d!2166193 (= c!1286543 ((_ is EmptyExpr!16947) r1!6342))))

(declare-fun e!4171058 () Bool)

(assert (=> d!2166193 (= (matchRSpec!4004 r1!6342 (_1!37107 lt!2473249)) e!4171058)))

(declare-fun b!6932154 () Bool)

(assert (=> b!6932154 (= e!4171058 call!629929)))

(declare-fun b!6932155 () Bool)

(declare-fun res!2827186 () Bool)

(declare-fun e!4171056 () Bool)

(assert (=> b!6932155 (=> res!2827186 e!4171056)))

(assert (=> b!6932155 (= res!2827186 call!629929)))

(assert (=> b!6932155 (= e!4171060 e!4171056)))

(declare-fun b!6932156 () Bool)

(assert (=> b!6932156 (= e!4171059 e!4171057)))

(declare-fun res!2827185 () Bool)

(assert (=> b!6932156 (= res!2827185 (matchRSpec!4004 (regOne!34407 r1!6342) (_1!37107 lt!2473249)))))

(assert (=> b!6932156 (=> res!2827185 e!4171057)))

(declare-fun b!6932157 () Bool)

(assert (=> b!6932157 (= e!4171058 e!4171054)))

(declare-fun res!2827184 () Bool)

(assert (=> b!6932157 (= res!2827184 (not ((_ is EmptyLang!16947) r1!6342)))))

(assert (=> b!6932157 (=> (not res!2827184) (not e!4171054))))

(assert (=> b!6932158 (= e!4171056 call!629928)))

(assert (= (and d!2166193 c!1286543) b!6932154))

(assert (= (and d!2166193 (not c!1286543)) b!6932157))

(assert (= (and b!6932157 res!2827184) b!6932148))

(assert (= (and b!6932148 c!1286544) b!6932151))

(assert (= (and b!6932148 (not c!1286544)) b!6932150))

(assert (= (and b!6932150 c!1286545) b!6932156))

(assert (= (and b!6932150 (not c!1286545)) b!6932152))

(assert (= (and b!6932156 (not res!2827185)) b!6932153))

(assert (= (and b!6932152 c!1286542) b!6932155))

(assert (= (and b!6932152 (not c!1286542)) b!6932149))

(assert (= (and b!6932155 (not res!2827186)) b!6932158))

(assert (= (or b!6932158 b!6932149) bm!629923))

(assert (= (or b!6932154 b!6932155) bm!629924))

(declare-fun m!7638890 () Bool)

(assert (=> bm!629923 m!7638890))

(declare-fun m!7638892 () Bool)

(assert (=> bm!629924 m!7638892))

(declare-fun m!7638894 () Bool)

(assert (=> b!6932153 m!7638894))

(declare-fun m!7638896 () Bool)

(assert (=> b!6932156 m!7638896))

(assert (=> b!6931606 d!2166193))

(declare-fun b!6932187 () Bool)

(declare-fun e!4171078 () Bool)

(declare-fun derivativeStep!5443 (Regex!16947 C!34164) Regex!16947)

(declare-fun head!13896 (List!66700) C!34164)

(declare-fun tail!12948 (List!66700) List!66700)

(assert (=> b!6932187 (= e!4171078 (matchR!9086 (derivativeStep!5443 r1!6342 (head!13896 (_1!37107 lt!2473249))) (tail!12948 (_1!37107 lt!2473249))))))

(declare-fun b!6932188 () Bool)

(declare-fun e!4171079 () Bool)

(declare-fun lt!2473323 () Bool)

(assert (=> b!6932188 (= e!4171079 (not lt!2473323))))

(declare-fun b!6932189 () Bool)

(declare-fun e!4171075 () Bool)

(assert (=> b!6932189 (= e!4171075 e!4171079)))

(declare-fun c!1286553 () Bool)

(assert (=> b!6932189 (= c!1286553 ((_ is EmptyLang!16947) r1!6342))))

(declare-fun d!2166199 () Bool)

(assert (=> d!2166199 e!4171075))

(declare-fun c!1286552 () Bool)

(assert (=> d!2166199 (= c!1286552 ((_ is EmptyExpr!16947) r1!6342))))

(assert (=> d!2166199 (= lt!2473323 e!4171078)))

(declare-fun c!1286554 () Bool)

(assert (=> d!2166199 (= c!1286554 (isEmpty!38839 (_1!37107 lt!2473249)))))

(assert (=> d!2166199 (validRegex!8653 r1!6342)))

(assert (=> d!2166199 (= (matchR!9086 r1!6342 (_1!37107 lt!2473249)) lt!2473323)))

(declare-fun b!6932190 () Bool)

(declare-fun e!4171076 () Bool)

(assert (=> b!6932190 (= e!4171076 (= (head!13896 (_1!37107 lt!2473249)) (c!1286433 r1!6342)))))

(declare-fun b!6932191 () Bool)

(declare-fun res!2827203 () Bool)

(assert (=> b!6932191 (=> (not res!2827203) (not e!4171076))))

(declare-fun call!629932 () Bool)

(assert (=> b!6932191 (= res!2827203 (not call!629932))))

(declare-fun b!6932192 () Bool)

(assert (=> b!6932192 (= e!4171075 (= lt!2473323 call!629932))))

(declare-fun b!6932193 () Bool)

(declare-fun e!4171077 () Bool)

(declare-fun e!4171081 () Bool)

(assert (=> b!6932193 (= e!4171077 e!4171081)))

(declare-fun res!2827205 () Bool)

(assert (=> b!6932193 (=> (not res!2827205) (not e!4171081))))

(assert (=> b!6932193 (= res!2827205 (not lt!2473323))))

(declare-fun b!6932194 () Bool)

(declare-fun res!2827204 () Bool)

(assert (=> b!6932194 (=> res!2827204 e!4171077)))

(assert (=> b!6932194 (= res!2827204 (not ((_ is ElementMatch!16947) r1!6342)))))

(assert (=> b!6932194 (= e!4171079 e!4171077)))

(declare-fun bm!629927 () Bool)

(assert (=> bm!629927 (= call!629932 (isEmpty!38839 (_1!37107 lt!2473249)))))

(declare-fun b!6932195 () Bool)

(declare-fun res!2827210 () Bool)

(assert (=> b!6932195 (=> res!2827210 e!4171077)))

(assert (=> b!6932195 (= res!2827210 e!4171076)))

(declare-fun res!2827206 () Bool)

(assert (=> b!6932195 (=> (not res!2827206) (not e!4171076))))

(assert (=> b!6932195 (= res!2827206 lt!2473323)))

(declare-fun b!6932196 () Bool)

(declare-fun res!2827207 () Bool)

(assert (=> b!6932196 (=> (not res!2827207) (not e!4171076))))

(assert (=> b!6932196 (= res!2827207 (isEmpty!38839 (tail!12948 (_1!37107 lt!2473249))))))

(declare-fun b!6932197 () Bool)

(declare-fun e!4171080 () Bool)

(assert (=> b!6932197 (= e!4171081 e!4171080)))

(declare-fun res!2827209 () Bool)

(assert (=> b!6932197 (=> res!2827209 e!4171080)))

(assert (=> b!6932197 (= res!2827209 call!629932)))

(declare-fun b!6932198 () Bool)

(assert (=> b!6932198 (= e!4171078 (nullable!6768 r1!6342))))

(declare-fun b!6932199 () Bool)

(assert (=> b!6932199 (= e!4171080 (not (= (head!13896 (_1!37107 lt!2473249)) (c!1286433 r1!6342))))))

(declare-fun b!6932200 () Bool)

(declare-fun res!2827208 () Bool)

(assert (=> b!6932200 (=> res!2827208 e!4171080)))

(assert (=> b!6932200 (= res!2827208 (not (isEmpty!38839 (tail!12948 (_1!37107 lt!2473249)))))))

(assert (= (and d!2166199 c!1286554) b!6932198))

(assert (= (and d!2166199 (not c!1286554)) b!6932187))

(assert (= (and d!2166199 c!1286552) b!6932192))

(assert (= (and d!2166199 (not c!1286552)) b!6932189))

(assert (= (and b!6932189 c!1286553) b!6932188))

(assert (= (and b!6932189 (not c!1286553)) b!6932194))

(assert (= (and b!6932194 (not res!2827204)) b!6932195))

(assert (= (and b!6932195 res!2827206) b!6932191))

(assert (= (and b!6932191 res!2827203) b!6932196))

(assert (= (and b!6932196 res!2827207) b!6932190))

(assert (= (and b!6932195 (not res!2827210)) b!6932193))

(assert (= (and b!6932193 res!2827205) b!6932197))

(assert (= (and b!6932197 (not res!2827209)) b!6932200))

(assert (= (and b!6932200 (not res!2827208)) b!6932199))

(assert (= (or b!6932192 b!6932197 b!6932191) bm!629927))

(assert (=> bm!629927 m!7638892))

(declare-fun m!7638898 () Bool)

(assert (=> b!6932200 m!7638898))

(assert (=> b!6932200 m!7638898))

(declare-fun m!7638900 () Bool)

(assert (=> b!6932200 m!7638900))

(declare-fun m!7638902 () Bool)

(assert (=> b!6932199 m!7638902))

(assert (=> d!2166199 m!7638892))

(assert (=> d!2166199 m!7638456))

(assert (=> b!6932196 m!7638898))

(assert (=> b!6932196 m!7638898))

(assert (=> b!6932196 m!7638900))

(assert (=> b!6932190 m!7638902))

(assert (=> b!6932187 m!7638902))

(assert (=> b!6932187 m!7638902))

(declare-fun m!7638904 () Bool)

(assert (=> b!6932187 m!7638904))

(assert (=> b!6932187 m!7638898))

(assert (=> b!6932187 m!7638904))

(assert (=> b!6932187 m!7638898))

(declare-fun m!7638906 () Bool)

(assert (=> b!6932187 m!7638906))

(declare-fun m!7638908 () Bool)

(assert (=> b!6932198 m!7638908))

(assert (=> b!6931606 d!2166199))

(declare-fun d!2166201 () Bool)

(assert (=> d!2166201 (= (matchR!9086 r1!6342 (_1!37107 lt!2473249)) (matchRSpec!4004 r1!6342 (_1!37107 lt!2473249)))))

(declare-fun lt!2473326 () Unit!160618)

(declare-fun choose!51631 (Regex!16947 List!66700) Unit!160618)

(assert (=> d!2166201 (= lt!2473326 (choose!51631 r1!6342 (_1!37107 lt!2473249)))))

(assert (=> d!2166201 (validRegex!8653 r1!6342)))

(assert (=> d!2166201 (= (mainMatchTheorem!4004 r1!6342 (_1!37107 lt!2473249)) lt!2473326)))

(declare-fun bs!1850663 () Bool)

(assert (= bs!1850663 d!2166201))

(assert (=> bs!1850663 m!7638480))

(assert (=> bs!1850663 m!7638488))

(declare-fun m!7638910 () Bool)

(assert (=> bs!1850663 m!7638910))

(assert (=> bs!1850663 m!7638456))

(assert (=> b!6931606 d!2166201))

(declare-fun d!2166203 () Bool)

(assert (=> d!2166203 (= (get!23357 lt!2473248) (v!52987 lt!2473248))))

(assert (=> b!6931606 d!2166203))

(declare-fun d!2166205 () Bool)

(assert (=> d!2166205 (= (matchR!9086 lt!2473234 s!14361) (matchRSpec!4004 lt!2473234 s!14361))))

(declare-fun lt!2473327 () Unit!160618)

(assert (=> d!2166205 (= lt!2473327 (choose!51631 lt!2473234 s!14361))))

(assert (=> d!2166205 (validRegex!8653 lt!2473234)))

(assert (=> d!2166205 (= (mainMatchTheorem!4004 lt!2473234 s!14361) lt!2473327)))

(declare-fun bs!1850664 () Bool)

(assert (= bs!1850664 d!2166205))

(assert (=> bs!1850664 m!7638468))

(assert (=> bs!1850664 m!7638466))

(declare-fun m!7638912 () Bool)

(assert (=> bs!1850664 m!7638912))

(declare-fun m!7638914 () Bool)

(assert (=> bs!1850664 m!7638914))

(assert (=> b!6931589 d!2166205))

(declare-fun d!2166207 () Bool)

(assert (=> d!2166207 (= (matchR!9086 lt!2473236 s!14361) (matchRSpec!4004 lt!2473236 s!14361))))

(declare-fun lt!2473328 () Unit!160618)

(assert (=> d!2166207 (= lt!2473328 (choose!51631 lt!2473236 s!14361))))

(assert (=> d!2166207 (validRegex!8653 lt!2473236)))

(assert (=> d!2166207 (= (mainMatchTheorem!4004 lt!2473236 s!14361) lt!2473328)))

(declare-fun bs!1850665 () Bool)

(assert (= bs!1850665 d!2166207))

(assert (=> bs!1850665 m!7638460))

(assert (=> bs!1850665 m!7638470))

(declare-fun m!7638916 () Bool)

(assert (=> bs!1850665 m!7638916))

(declare-fun m!7638918 () Bool)

(assert (=> bs!1850665 m!7638918))

(assert (=> b!6931589 d!2166207))

(declare-fun bs!1850666 () Bool)

(declare-fun b!6932211 () Bool)

(assert (= bs!1850666 (and b!6932211 b!6931606)))

(declare-fun lambda!394502 () Int)

(assert (=> bs!1850666 (not (= lambda!394502 lambda!394456))))

(declare-fun bs!1850667 () Bool)

(assert (= bs!1850667 (and b!6932211 b!6932149)))

(assert (=> bs!1850667 (not (= lambda!394502 lambda!394501))))

(declare-fun bs!1850668 () Bool)

(assert (= bs!1850668 (and b!6932211 d!2166165)))

(assert (=> bs!1850668 (not (= lambda!394502 lambda!394493))))

(declare-fun bs!1850669 () Bool)

(assert (= bs!1850669 (and b!6932211 b!6931605)))

(assert (=> bs!1850669 (not (= lambda!394502 lambda!394458))))

(assert (=> bs!1850669 (not (= lambda!394502 lambda!394457))))

(declare-fun bs!1850670 () Bool)

(assert (= bs!1850670 (and b!6932211 b!6932158)))

(assert (=> bs!1850670 (= (and (= s!14361 (_1!37107 lt!2473249)) (= (reg!17276 lt!2473234) (reg!17276 r1!6342)) (= lt!2473234 r1!6342)) (= lambda!394502 lambda!394500))))

(declare-fun bs!1850671 () Bool)

(assert (= bs!1850671 (and b!6932211 d!2166145)))

(assert (=> bs!1850671 (not (= lambda!394502 lambda!394486))))

(assert (=> bs!1850666 (not (= lambda!394502 lambda!394455))))

(assert (=> bs!1850671 (not (= lambda!394502 lambda!394484))))

(assert (=> b!6932211 true))

(assert (=> b!6932211 true))

(declare-fun bs!1850672 () Bool)

(declare-fun b!6932202 () Bool)

(assert (= bs!1850672 (and b!6932202 b!6931606)))

(declare-fun lambda!394503 () Int)

(assert (=> bs!1850672 (= (and (= (regOne!34406 lt!2473234) r1!6342) (= (regTwo!34406 lt!2473234) lt!2473239)) (= lambda!394503 lambda!394456))))

(declare-fun bs!1850673 () Bool)

(assert (= bs!1850673 (and b!6932202 b!6932149)))

(assert (=> bs!1850673 (= (and (= s!14361 (_1!37107 lt!2473249)) (= (regOne!34406 lt!2473234) (regOne!34406 r1!6342)) (= (regTwo!34406 lt!2473234) (regTwo!34406 r1!6342))) (= lambda!394503 lambda!394501))))

(declare-fun bs!1850674 () Bool)

(assert (= bs!1850674 (and b!6932202 d!2166165)))

(assert (=> bs!1850674 (not (= lambda!394503 lambda!394493))))

(declare-fun bs!1850675 () Bool)

(assert (= bs!1850675 (and b!6932202 b!6932211)))

(assert (=> bs!1850675 (not (= lambda!394503 lambda!394502))))

(declare-fun bs!1850676 () Bool)

(assert (= bs!1850676 (and b!6932202 b!6931605)))

(assert (=> bs!1850676 (= (and (= s!14361 (_2!37107 lt!2473249)) (= (regOne!34406 lt!2473234) r2!6280) (= (regTwo!34406 lt!2473234) r3!135)) (= lambda!394503 lambda!394458))))

(assert (=> bs!1850676 (not (= lambda!394503 lambda!394457))))

(declare-fun bs!1850677 () Bool)

(assert (= bs!1850677 (and b!6932202 b!6932158)))

(assert (=> bs!1850677 (not (= lambda!394503 lambda!394500))))

(declare-fun bs!1850678 () Bool)

(assert (= bs!1850678 (and b!6932202 d!2166145)))

(assert (=> bs!1850678 (= (and (= (regOne!34406 lt!2473234) r1!6342) (= (regTwo!34406 lt!2473234) lt!2473239)) (= lambda!394503 lambda!394486))))

(assert (=> bs!1850672 (not (= lambda!394503 lambda!394455))))

(assert (=> bs!1850678 (not (= lambda!394503 lambda!394484))))

(assert (=> b!6932202 true))

(assert (=> b!6932202 true))

(declare-fun b!6932201 () Bool)

(declare-fun c!1286557 () Bool)

(assert (=> b!6932201 (= c!1286557 ((_ is ElementMatch!16947) lt!2473234))))

(declare-fun e!4171082 () Bool)

(declare-fun e!4171083 () Bool)

(assert (=> b!6932201 (= e!4171082 e!4171083)))

(declare-fun e!4171088 () Bool)

(declare-fun call!629933 () Bool)

(assert (=> b!6932202 (= e!4171088 call!629933)))

(declare-fun b!6932203 () Bool)

(declare-fun c!1286558 () Bool)

(assert (=> b!6932203 (= c!1286558 ((_ is Union!16947) lt!2473234))))

(declare-fun e!4171087 () Bool)

(assert (=> b!6932203 (= e!4171083 e!4171087)))

(declare-fun c!1286555 () Bool)

(declare-fun bm!629928 () Bool)

(assert (=> bm!629928 (= call!629933 (Exists!3947 (ite c!1286555 lambda!394502 lambda!394503)))))

(declare-fun bm!629929 () Bool)

(declare-fun call!629934 () Bool)

(assert (=> bm!629929 (= call!629934 (isEmpty!38839 s!14361))))

(declare-fun b!6932204 () Bool)

(assert (=> b!6932204 (= e!4171083 (= s!14361 (Cons!66576 (c!1286433 lt!2473234) Nil!66576)))))

(declare-fun b!6932205 () Bool)

(assert (=> b!6932205 (= e!4171087 e!4171088)))

(assert (=> b!6932205 (= c!1286555 ((_ is Star!16947) lt!2473234))))

(declare-fun b!6932206 () Bool)

(declare-fun e!4171085 () Bool)

(assert (=> b!6932206 (= e!4171085 (matchRSpec!4004 (regTwo!34407 lt!2473234) s!14361))))

(declare-fun d!2166209 () Bool)

(declare-fun c!1286556 () Bool)

(assert (=> d!2166209 (= c!1286556 ((_ is EmptyExpr!16947) lt!2473234))))

(declare-fun e!4171086 () Bool)

(assert (=> d!2166209 (= (matchRSpec!4004 lt!2473234 s!14361) e!4171086)))

(declare-fun b!6932207 () Bool)

(assert (=> b!6932207 (= e!4171086 call!629934)))

(declare-fun b!6932208 () Bool)

(declare-fun res!2827213 () Bool)

(declare-fun e!4171084 () Bool)

(assert (=> b!6932208 (=> res!2827213 e!4171084)))

(assert (=> b!6932208 (= res!2827213 call!629934)))

(assert (=> b!6932208 (= e!4171088 e!4171084)))

(declare-fun b!6932209 () Bool)

(assert (=> b!6932209 (= e!4171087 e!4171085)))

(declare-fun res!2827212 () Bool)

(assert (=> b!6932209 (= res!2827212 (matchRSpec!4004 (regOne!34407 lt!2473234) s!14361))))

(assert (=> b!6932209 (=> res!2827212 e!4171085)))

(declare-fun b!6932210 () Bool)

(assert (=> b!6932210 (= e!4171086 e!4171082)))

(declare-fun res!2827211 () Bool)

(assert (=> b!6932210 (= res!2827211 (not ((_ is EmptyLang!16947) lt!2473234)))))

(assert (=> b!6932210 (=> (not res!2827211) (not e!4171082))))

(assert (=> b!6932211 (= e!4171084 call!629933)))

(assert (= (and d!2166209 c!1286556) b!6932207))

(assert (= (and d!2166209 (not c!1286556)) b!6932210))

(assert (= (and b!6932210 res!2827211) b!6932201))

(assert (= (and b!6932201 c!1286557) b!6932204))

(assert (= (and b!6932201 (not c!1286557)) b!6932203))

(assert (= (and b!6932203 c!1286558) b!6932209))

(assert (= (and b!6932203 (not c!1286558)) b!6932205))

(assert (= (and b!6932209 (not res!2827212)) b!6932206))

(assert (= (and b!6932205 c!1286555) b!6932208))

(assert (= (and b!6932205 (not c!1286555)) b!6932202))

(assert (= (and b!6932208 (not res!2827213)) b!6932211))

(assert (= (or b!6932211 b!6932202) bm!629928))

(assert (= (or b!6932207 b!6932208) bm!629929))

(declare-fun m!7638920 () Bool)

(assert (=> bm!629928 m!7638920))

(declare-fun m!7638922 () Bool)

(assert (=> bm!629929 m!7638922))

(declare-fun m!7638924 () Bool)

(assert (=> b!6932206 m!7638924))

(declare-fun m!7638926 () Bool)

(assert (=> b!6932209 m!7638926))

(assert (=> b!6931589 d!2166209))

(declare-fun b!6932212 () Bool)

(declare-fun e!4171092 () Bool)

(assert (=> b!6932212 (= e!4171092 (matchR!9086 (derivativeStep!5443 lt!2473234 (head!13896 s!14361)) (tail!12948 s!14361)))))

(declare-fun b!6932213 () Bool)

(declare-fun e!4171093 () Bool)

(declare-fun lt!2473329 () Bool)

(assert (=> b!6932213 (= e!4171093 (not lt!2473329))))

(declare-fun b!6932214 () Bool)

(declare-fun e!4171089 () Bool)

(assert (=> b!6932214 (= e!4171089 e!4171093)))

(declare-fun c!1286560 () Bool)

(assert (=> b!6932214 (= c!1286560 ((_ is EmptyLang!16947) lt!2473234))))

(declare-fun d!2166211 () Bool)

(assert (=> d!2166211 e!4171089))

(declare-fun c!1286559 () Bool)

(assert (=> d!2166211 (= c!1286559 ((_ is EmptyExpr!16947) lt!2473234))))

(assert (=> d!2166211 (= lt!2473329 e!4171092)))

(declare-fun c!1286561 () Bool)

(assert (=> d!2166211 (= c!1286561 (isEmpty!38839 s!14361))))

(assert (=> d!2166211 (validRegex!8653 lt!2473234)))

(assert (=> d!2166211 (= (matchR!9086 lt!2473234 s!14361) lt!2473329)))

(declare-fun b!6932215 () Bool)

(declare-fun e!4171090 () Bool)

(assert (=> b!6932215 (= e!4171090 (= (head!13896 s!14361) (c!1286433 lt!2473234)))))

(declare-fun b!6932216 () Bool)

(declare-fun res!2827214 () Bool)

(assert (=> b!6932216 (=> (not res!2827214) (not e!4171090))))

(declare-fun call!629935 () Bool)

(assert (=> b!6932216 (= res!2827214 (not call!629935))))

(declare-fun b!6932217 () Bool)

(assert (=> b!6932217 (= e!4171089 (= lt!2473329 call!629935))))

(declare-fun b!6932218 () Bool)

(declare-fun e!4171091 () Bool)

(declare-fun e!4171095 () Bool)

(assert (=> b!6932218 (= e!4171091 e!4171095)))

(declare-fun res!2827216 () Bool)

(assert (=> b!6932218 (=> (not res!2827216) (not e!4171095))))

(assert (=> b!6932218 (= res!2827216 (not lt!2473329))))

(declare-fun b!6932219 () Bool)

(declare-fun res!2827215 () Bool)

(assert (=> b!6932219 (=> res!2827215 e!4171091)))

(assert (=> b!6932219 (= res!2827215 (not ((_ is ElementMatch!16947) lt!2473234)))))

(assert (=> b!6932219 (= e!4171093 e!4171091)))

(declare-fun bm!629930 () Bool)

(assert (=> bm!629930 (= call!629935 (isEmpty!38839 s!14361))))

(declare-fun b!6932220 () Bool)

(declare-fun res!2827221 () Bool)

(assert (=> b!6932220 (=> res!2827221 e!4171091)))

(assert (=> b!6932220 (= res!2827221 e!4171090)))

(declare-fun res!2827217 () Bool)

(assert (=> b!6932220 (=> (not res!2827217) (not e!4171090))))

(assert (=> b!6932220 (= res!2827217 lt!2473329)))

(declare-fun b!6932221 () Bool)

(declare-fun res!2827218 () Bool)

(assert (=> b!6932221 (=> (not res!2827218) (not e!4171090))))

(assert (=> b!6932221 (= res!2827218 (isEmpty!38839 (tail!12948 s!14361)))))

(declare-fun b!6932222 () Bool)

(declare-fun e!4171094 () Bool)

(assert (=> b!6932222 (= e!4171095 e!4171094)))

(declare-fun res!2827220 () Bool)

(assert (=> b!6932222 (=> res!2827220 e!4171094)))

(assert (=> b!6932222 (= res!2827220 call!629935)))

(declare-fun b!6932223 () Bool)

(assert (=> b!6932223 (= e!4171092 (nullable!6768 lt!2473234))))

(declare-fun b!6932224 () Bool)

(assert (=> b!6932224 (= e!4171094 (not (= (head!13896 s!14361) (c!1286433 lt!2473234))))))

(declare-fun b!6932225 () Bool)

(declare-fun res!2827219 () Bool)

(assert (=> b!6932225 (=> res!2827219 e!4171094)))

(assert (=> b!6932225 (= res!2827219 (not (isEmpty!38839 (tail!12948 s!14361))))))

(assert (= (and d!2166211 c!1286561) b!6932223))

(assert (= (and d!2166211 (not c!1286561)) b!6932212))

(assert (= (and d!2166211 c!1286559) b!6932217))

(assert (= (and d!2166211 (not c!1286559)) b!6932214))

(assert (= (and b!6932214 c!1286560) b!6932213))

(assert (= (and b!6932214 (not c!1286560)) b!6932219))

(assert (= (and b!6932219 (not res!2827215)) b!6932220))

(assert (= (and b!6932220 res!2827217) b!6932216))

(assert (= (and b!6932216 res!2827214) b!6932221))

(assert (= (and b!6932221 res!2827218) b!6932215))

(assert (= (and b!6932220 (not res!2827221)) b!6932218))

(assert (= (and b!6932218 res!2827216) b!6932222))

(assert (= (and b!6932222 (not res!2827220)) b!6932225))

(assert (= (and b!6932225 (not res!2827219)) b!6932224))

(assert (= (or b!6932217 b!6932222 b!6932216) bm!629930))

(assert (=> bm!629930 m!7638922))

(declare-fun m!7638928 () Bool)

(assert (=> b!6932225 m!7638928))

(assert (=> b!6932225 m!7638928))

(declare-fun m!7638930 () Bool)

(assert (=> b!6932225 m!7638930))

(declare-fun m!7638932 () Bool)

(assert (=> b!6932224 m!7638932))

(assert (=> d!2166211 m!7638922))

(assert (=> d!2166211 m!7638914))

(assert (=> b!6932221 m!7638928))

(assert (=> b!6932221 m!7638928))

(assert (=> b!6932221 m!7638930))

(assert (=> b!6932215 m!7638932))

(assert (=> b!6932212 m!7638932))

(assert (=> b!6932212 m!7638932))

(declare-fun m!7638934 () Bool)

(assert (=> b!6932212 m!7638934))

(assert (=> b!6932212 m!7638928))

(assert (=> b!6932212 m!7638934))

(assert (=> b!6932212 m!7638928))

(declare-fun m!7638936 () Bool)

(assert (=> b!6932212 m!7638936))

(declare-fun m!7638938 () Bool)

(assert (=> b!6932223 m!7638938))

(assert (=> b!6931589 d!2166211))

(declare-fun bs!1850679 () Bool)

(declare-fun b!6932236 () Bool)

(assert (= bs!1850679 (and b!6932236 b!6931606)))

(declare-fun lambda!394504 () Int)

(assert (=> bs!1850679 (not (= lambda!394504 lambda!394456))))

(declare-fun bs!1850680 () Bool)

(assert (= bs!1850680 (and b!6932236 b!6932149)))

(assert (=> bs!1850680 (not (= lambda!394504 lambda!394501))))

(declare-fun bs!1850681 () Bool)

(assert (= bs!1850681 (and b!6932236 b!6932202)))

(assert (=> bs!1850681 (not (= lambda!394504 lambda!394503))))

(declare-fun bs!1850682 () Bool)

(assert (= bs!1850682 (and b!6932236 d!2166165)))

(assert (=> bs!1850682 (not (= lambda!394504 lambda!394493))))

(declare-fun bs!1850683 () Bool)

(assert (= bs!1850683 (and b!6932236 b!6932211)))

(assert (=> bs!1850683 (= (and (= (reg!17276 lt!2473236) (reg!17276 lt!2473234)) (= lt!2473236 lt!2473234)) (= lambda!394504 lambda!394502))))

(declare-fun bs!1850684 () Bool)

(assert (= bs!1850684 (and b!6932236 b!6931605)))

(assert (=> bs!1850684 (not (= lambda!394504 lambda!394458))))

(assert (=> bs!1850684 (not (= lambda!394504 lambda!394457))))

(declare-fun bs!1850685 () Bool)

(assert (= bs!1850685 (and b!6932236 b!6932158)))

(assert (=> bs!1850685 (= (and (= s!14361 (_1!37107 lt!2473249)) (= (reg!17276 lt!2473236) (reg!17276 r1!6342)) (= lt!2473236 r1!6342)) (= lambda!394504 lambda!394500))))

(declare-fun bs!1850686 () Bool)

(assert (= bs!1850686 (and b!6932236 d!2166145)))

(assert (=> bs!1850686 (not (= lambda!394504 lambda!394486))))

(assert (=> bs!1850679 (not (= lambda!394504 lambda!394455))))

(assert (=> bs!1850686 (not (= lambda!394504 lambda!394484))))

(assert (=> b!6932236 true))

(assert (=> b!6932236 true))

(declare-fun bs!1850687 () Bool)

(declare-fun b!6932227 () Bool)

(assert (= bs!1850687 (and b!6932227 b!6931606)))

(declare-fun lambda!394505 () Int)

(assert (=> bs!1850687 (= (and (= (regOne!34406 lt!2473236) r1!6342) (= (regTwo!34406 lt!2473236) lt!2473239)) (= lambda!394505 lambda!394456))))

(declare-fun bs!1850688 () Bool)

(assert (= bs!1850688 (and b!6932227 b!6932149)))

(assert (=> bs!1850688 (= (and (= s!14361 (_1!37107 lt!2473249)) (= (regOne!34406 lt!2473236) (regOne!34406 r1!6342)) (= (regTwo!34406 lt!2473236) (regTwo!34406 r1!6342))) (= lambda!394505 lambda!394501))))

(declare-fun bs!1850689 () Bool)

(assert (= bs!1850689 (and b!6932227 b!6932202)))

(assert (=> bs!1850689 (= (and (= (regOne!34406 lt!2473236) (regOne!34406 lt!2473234)) (= (regTwo!34406 lt!2473236) (regTwo!34406 lt!2473234))) (= lambda!394505 lambda!394503))))

(declare-fun bs!1850690 () Bool)

(assert (= bs!1850690 (and b!6932227 d!2166165)))

(assert (=> bs!1850690 (not (= lambda!394505 lambda!394493))))

(declare-fun bs!1850691 () Bool)

(assert (= bs!1850691 (and b!6932227 b!6932211)))

(assert (=> bs!1850691 (not (= lambda!394505 lambda!394502))))

(declare-fun bs!1850692 () Bool)

(assert (= bs!1850692 (and b!6932227 b!6932236)))

(assert (=> bs!1850692 (not (= lambda!394505 lambda!394504))))

(declare-fun bs!1850693 () Bool)

(assert (= bs!1850693 (and b!6932227 b!6931605)))

(assert (=> bs!1850693 (= (and (= s!14361 (_2!37107 lt!2473249)) (= (regOne!34406 lt!2473236) r2!6280) (= (regTwo!34406 lt!2473236) r3!135)) (= lambda!394505 lambda!394458))))

(assert (=> bs!1850693 (not (= lambda!394505 lambda!394457))))

(declare-fun bs!1850694 () Bool)

(assert (= bs!1850694 (and b!6932227 b!6932158)))

(assert (=> bs!1850694 (not (= lambda!394505 lambda!394500))))

(declare-fun bs!1850695 () Bool)

(assert (= bs!1850695 (and b!6932227 d!2166145)))

(assert (=> bs!1850695 (= (and (= (regOne!34406 lt!2473236) r1!6342) (= (regTwo!34406 lt!2473236) lt!2473239)) (= lambda!394505 lambda!394486))))

(assert (=> bs!1850687 (not (= lambda!394505 lambda!394455))))

(assert (=> bs!1850695 (not (= lambda!394505 lambda!394484))))

(assert (=> b!6932227 true))

(assert (=> b!6932227 true))

(declare-fun b!6932226 () Bool)

(declare-fun c!1286564 () Bool)

(assert (=> b!6932226 (= c!1286564 ((_ is ElementMatch!16947) lt!2473236))))

(declare-fun e!4171096 () Bool)

(declare-fun e!4171097 () Bool)

(assert (=> b!6932226 (= e!4171096 e!4171097)))

(declare-fun e!4171102 () Bool)

(declare-fun call!629936 () Bool)

(assert (=> b!6932227 (= e!4171102 call!629936)))

(declare-fun b!6932228 () Bool)

(declare-fun c!1286565 () Bool)

(assert (=> b!6932228 (= c!1286565 ((_ is Union!16947) lt!2473236))))

(declare-fun e!4171101 () Bool)

(assert (=> b!6932228 (= e!4171097 e!4171101)))

(declare-fun bm!629931 () Bool)

(declare-fun c!1286562 () Bool)

(assert (=> bm!629931 (= call!629936 (Exists!3947 (ite c!1286562 lambda!394504 lambda!394505)))))

(declare-fun bm!629932 () Bool)

(declare-fun call!629937 () Bool)

(assert (=> bm!629932 (= call!629937 (isEmpty!38839 s!14361))))

(declare-fun b!6932229 () Bool)

(assert (=> b!6932229 (= e!4171097 (= s!14361 (Cons!66576 (c!1286433 lt!2473236) Nil!66576)))))

(declare-fun b!6932230 () Bool)

(assert (=> b!6932230 (= e!4171101 e!4171102)))

(assert (=> b!6932230 (= c!1286562 ((_ is Star!16947) lt!2473236))))

(declare-fun b!6932231 () Bool)

(declare-fun e!4171099 () Bool)

(assert (=> b!6932231 (= e!4171099 (matchRSpec!4004 (regTwo!34407 lt!2473236) s!14361))))

(declare-fun d!2166213 () Bool)

(declare-fun c!1286563 () Bool)

(assert (=> d!2166213 (= c!1286563 ((_ is EmptyExpr!16947) lt!2473236))))

(declare-fun e!4171100 () Bool)

(assert (=> d!2166213 (= (matchRSpec!4004 lt!2473236 s!14361) e!4171100)))

(declare-fun b!6932232 () Bool)

(assert (=> b!6932232 (= e!4171100 call!629937)))

(declare-fun b!6932233 () Bool)

(declare-fun res!2827224 () Bool)

(declare-fun e!4171098 () Bool)

(assert (=> b!6932233 (=> res!2827224 e!4171098)))

(assert (=> b!6932233 (= res!2827224 call!629937)))

(assert (=> b!6932233 (= e!4171102 e!4171098)))

(declare-fun b!6932234 () Bool)

(assert (=> b!6932234 (= e!4171101 e!4171099)))

(declare-fun res!2827223 () Bool)

(assert (=> b!6932234 (= res!2827223 (matchRSpec!4004 (regOne!34407 lt!2473236) s!14361))))

(assert (=> b!6932234 (=> res!2827223 e!4171099)))

(declare-fun b!6932235 () Bool)

(assert (=> b!6932235 (= e!4171100 e!4171096)))

(declare-fun res!2827222 () Bool)

(assert (=> b!6932235 (= res!2827222 (not ((_ is EmptyLang!16947) lt!2473236)))))

(assert (=> b!6932235 (=> (not res!2827222) (not e!4171096))))

(assert (=> b!6932236 (= e!4171098 call!629936)))

(assert (= (and d!2166213 c!1286563) b!6932232))

(assert (= (and d!2166213 (not c!1286563)) b!6932235))

(assert (= (and b!6932235 res!2827222) b!6932226))

(assert (= (and b!6932226 c!1286564) b!6932229))

(assert (= (and b!6932226 (not c!1286564)) b!6932228))

(assert (= (and b!6932228 c!1286565) b!6932234))

(assert (= (and b!6932228 (not c!1286565)) b!6932230))

(assert (= (and b!6932234 (not res!2827223)) b!6932231))

(assert (= (and b!6932230 c!1286562) b!6932233))

(assert (= (and b!6932230 (not c!1286562)) b!6932227))

(assert (= (and b!6932233 (not res!2827224)) b!6932236))

(assert (= (or b!6932236 b!6932227) bm!629931))

(assert (= (or b!6932232 b!6932233) bm!629932))

(declare-fun m!7638940 () Bool)

(assert (=> bm!629931 m!7638940))

(assert (=> bm!629932 m!7638922))

(declare-fun m!7638942 () Bool)

(assert (=> b!6932231 m!7638942))

(declare-fun m!7638944 () Bool)

(assert (=> b!6932234 m!7638944))

(assert (=> b!6931589 d!2166213))

(declare-fun b!6932237 () Bool)

(declare-fun e!4171106 () Bool)

(assert (=> b!6932237 (= e!4171106 (matchR!9086 (derivativeStep!5443 lt!2473236 (head!13896 s!14361)) (tail!12948 s!14361)))))

(declare-fun b!6932238 () Bool)

(declare-fun e!4171107 () Bool)

(declare-fun lt!2473330 () Bool)

(assert (=> b!6932238 (= e!4171107 (not lt!2473330))))

(declare-fun b!6932239 () Bool)

(declare-fun e!4171103 () Bool)

(assert (=> b!6932239 (= e!4171103 e!4171107)))

(declare-fun c!1286567 () Bool)

(assert (=> b!6932239 (= c!1286567 ((_ is EmptyLang!16947) lt!2473236))))

(declare-fun d!2166215 () Bool)

(assert (=> d!2166215 e!4171103))

(declare-fun c!1286566 () Bool)

(assert (=> d!2166215 (= c!1286566 ((_ is EmptyExpr!16947) lt!2473236))))

(assert (=> d!2166215 (= lt!2473330 e!4171106)))

(declare-fun c!1286568 () Bool)

(assert (=> d!2166215 (= c!1286568 (isEmpty!38839 s!14361))))

(assert (=> d!2166215 (validRegex!8653 lt!2473236)))

(assert (=> d!2166215 (= (matchR!9086 lt!2473236 s!14361) lt!2473330)))

(declare-fun b!6932240 () Bool)

(declare-fun e!4171104 () Bool)

(assert (=> b!6932240 (= e!4171104 (= (head!13896 s!14361) (c!1286433 lt!2473236)))))

(declare-fun b!6932241 () Bool)

(declare-fun res!2827225 () Bool)

(assert (=> b!6932241 (=> (not res!2827225) (not e!4171104))))

(declare-fun call!629938 () Bool)

(assert (=> b!6932241 (= res!2827225 (not call!629938))))

(declare-fun b!6932242 () Bool)

(assert (=> b!6932242 (= e!4171103 (= lt!2473330 call!629938))))

(declare-fun b!6932243 () Bool)

(declare-fun e!4171105 () Bool)

(declare-fun e!4171109 () Bool)

(assert (=> b!6932243 (= e!4171105 e!4171109)))

(declare-fun res!2827227 () Bool)

(assert (=> b!6932243 (=> (not res!2827227) (not e!4171109))))

(assert (=> b!6932243 (= res!2827227 (not lt!2473330))))

(declare-fun b!6932244 () Bool)

(declare-fun res!2827226 () Bool)

(assert (=> b!6932244 (=> res!2827226 e!4171105)))

(assert (=> b!6932244 (= res!2827226 (not ((_ is ElementMatch!16947) lt!2473236)))))

(assert (=> b!6932244 (= e!4171107 e!4171105)))

(declare-fun bm!629933 () Bool)

(assert (=> bm!629933 (= call!629938 (isEmpty!38839 s!14361))))

(declare-fun b!6932245 () Bool)

(declare-fun res!2827232 () Bool)

(assert (=> b!6932245 (=> res!2827232 e!4171105)))

(assert (=> b!6932245 (= res!2827232 e!4171104)))

(declare-fun res!2827228 () Bool)

(assert (=> b!6932245 (=> (not res!2827228) (not e!4171104))))

(assert (=> b!6932245 (= res!2827228 lt!2473330)))

(declare-fun b!6932246 () Bool)

(declare-fun res!2827229 () Bool)

(assert (=> b!6932246 (=> (not res!2827229) (not e!4171104))))

(assert (=> b!6932246 (= res!2827229 (isEmpty!38839 (tail!12948 s!14361)))))

(declare-fun b!6932247 () Bool)

(declare-fun e!4171108 () Bool)

(assert (=> b!6932247 (= e!4171109 e!4171108)))

(declare-fun res!2827231 () Bool)

(assert (=> b!6932247 (=> res!2827231 e!4171108)))

(assert (=> b!6932247 (= res!2827231 call!629938)))

(declare-fun b!6932248 () Bool)

(assert (=> b!6932248 (= e!4171106 (nullable!6768 lt!2473236))))

(declare-fun b!6932249 () Bool)

(assert (=> b!6932249 (= e!4171108 (not (= (head!13896 s!14361) (c!1286433 lt!2473236))))))

(declare-fun b!6932250 () Bool)

(declare-fun res!2827230 () Bool)

(assert (=> b!6932250 (=> res!2827230 e!4171108)))

(assert (=> b!6932250 (= res!2827230 (not (isEmpty!38839 (tail!12948 s!14361))))))

(assert (= (and d!2166215 c!1286568) b!6932248))

(assert (= (and d!2166215 (not c!1286568)) b!6932237))

(assert (= (and d!2166215 c!1286566) b!6932242))

(assert (= (and d!2166215 (not c!1286566)) b!6932239))

(assert (= (and b!6932239 c!1286567) b!6932238))

(assert (= (and b!6932239 (not c!1286567)) b!6932244))

(assert (= (and b!6932244 (not res!2827226)) b!6932245))

(assert (= (and b!6932245 res!2827228) b!6932241))

(assert (= (and b!6932241 res!2827225) b!6932246))

(assert (= (and b!6932246 res!2827229) b!6932240))

(assert (= (and b!6932245 (not res!2827232)) b!6932243))

(assert (= (and b!6932243 res!2827227) b!6932247))

(assert (= (and b!6932247 (not res!2827231)) b!6932250))

(assert (= (and b!6932250 (not res!2827230)) b!6932249))

(assert (= (or b!6932242 b!6932247 b!6932241) bm!629933))

(assert (=> bm!629933 m!7638922))

(assert (=> b!6932250 m!7638928))

(assert (=> b!6932250 m!7638928))

(assert (=> b!6932250 m!7638930))

(assert (=> b!6932249 m!7638932))

(assert (=> d!2166215 m!7638922))

(assert (=> d!2166215 m!7638918))

(assert (=> b!6932246 m!7638928))

(assert (=> b!6932246 m!7638928))

(assert (=> b!6932246 m!7638930))

(assert (=> b!6932240 m!7638932))

(assert (=> b!6932237 m!7638932))

(assert (=> b!6932237 m!7638932))

(declare-fun m!7638946 () Bool)

(assert (=> b!6932237 m!7638946))

(assert (=> b!6932237 m!7638928))

(assert (=> b!6932237 m!7638946))

(assert (=> b!6932237 m!7638928))

(declare-fun m!7638948 () Bool)

(assert (=> b!6932237 m!7638948))

(declare-fun m!7638950 () Bool)

(assert (=> b!6932248 m!7638950))

(assert (=> b!6931589 d!2166215))

(declare-fun b!6932251 () Bool)

(declare-fun e!4171113 () Bool)

(assert (=> b!6932251 (= e!4171113 (matchR!9086 (derivativeStep!5443 r2!6280 (head!13896 (_1!37107 lt!2473241))) (tail!12948 (_1!37107 lt!2473241))))))

(declare-fun b!6932252 () Bool)

(declare-fun e!4171114 () Bool)

(declare-fun lt!2473331 () Bool)

(assert (=> b!6932252 (= e!4171114 (not lt!2473331))))

(declare-fun b!6932253 () Bool)

(declare-fun e!4171110 () Bool)

(assert (=> b!6932253 (= e!4171110 e!4171114)))

(declare-fun c!1286570 () Bool)

(assert (=> b!6932253 (= c!1286570 ((_ is EmptyLang!16947) r2!6280))))

(declare-fun d!2166217 () Bool)

(assert (=> d!2166217 e!4171110))

(declare-fun c!1286569 () Bool)

(assert (=> d!2166217 (= c!1286569 ((_ is EmptyExpr!16947) r2!6280))))

(assert (=> d!2166217 (= lt!2473331 e!4171113)))

(declare-fun c!1286571 () Bool)

(assert (=> d!2166217 (= c!1286571 (isEmpty!38839 (_1!37107 lt!2473241)))))

(assert (=> d!2166217 (validRegex!8653 r2!6280)))

(assert (=> d!2166217 (= (matchR!9086 r2!6280 (_1!37107 lt!2473241)) lt!2473331)))

(declare-fun b!6932254 () Bool)

(declare-fun e!4171111 () Bool)

(assert (=> b!6932254 (= e!4171111 (= (head!13896 (_1!37107 lt!2473241)) (c!1286433 r2!6280)))))

(declare-fun b!6932255 () Bool)

(declare-fun res!2827233 () Bool)

(assert (=> b!6932255 (=> (not res!2827233) (not e!4171111))))

(declare-fun call!629939 () Bool)

(assert (=> b!6932255 (= res!2827233 (not call!629939))))

(declare-fun b!6932256 () Bool)

(assert (=> b!6932256 (= e!4171110 (= lt!2473331 call!629939))))

(declare-fun b!6932257 () Bool)

(declare-fun e!4171112 () Bool)

(declare-fun e!4171116 () Bool)

(assert (=> b!6932257 (= e!4171112 e!4171116)))

(declare-fun res!2827235 () Bool)

(assert (=> b!6932257 (=> (not res!2827235) (not e!4171116))))

(assert (=> b!6932257 (= res!2827235 (not lt!2473331))))

(declare-fun b!6932258 () Bool)

(declare-fun res!2827234 () Bool)

(assert (=> b!6932258 (=> res!2827234 e!4171112)))

(assert (=> b!6932258 (= res!2827234 (not ((_ is ElementMatch!16947) r2!6280)))))

(assert (=> b!6932258 (= e!4171114 e!4171112)))

(declare-fun bm!629934 () Bool)

(assert (=> bm!629934 (= call!629939 (isEmpty!38839 (_1!37107 lt!2473241)))))

(declare-fun b!6932259 () Bool)

(declare-fun res!2827240 () Bool)

(assert (=> b!6932259 (=> res!2827240 e!4171112)))

(assert (=> b!6932259 (= res!2827240 e!4171111)))

(declare-fun res!2827236 () Bool)

(assert (=> b!6932259 (=> (not res!2827236) (not e!4171111))))

(assert (=> b!6932259 (= res!2827236 lt!2473331)))

(declare-fun b!6932260 () Bool)

(declare-fun res!2827237 () Bool)

(assert (=> b!6932260 (=> (not res!2827237) (not e!4171111))))

(assert (=> b!6932260 (= res!2827237 (isEmpty!38839 (tail!12948 (_1!37107 lt!2473241))))))

(declare-fun b!6932261 () Bool)

(declare-fun e!4171115 () Bool)

(assert (=> b!6932261 (= e!4171116 e!4171115)))

(declare-fun res!2827239 () Bool)

(assert (=> b!6932261 (=> res!2827239 e!4171115)))

(assert (=> b!6932261 (= res!2827239 call!629939)))

(declare-fun b!6932262 () Bool)

(assert (=> b!6932262 (= e!4171113 (nullable!6768 r2!6280))))

(declare-fun b!6932263 () Bool)

(assert (=> b!6932263 (= e!4171115 (not (= (head!13896 (_1!37107 lt!2473241)) (c!1286433 r2!6280))))))

(declare-fun b!6932264 () Bool)

(declare-fun res!2827238 () Bool)

(assert (=> b!6932264 (=> res!2827238 e!4171115)))

(assert (=> b!6932264 (= res!2827238 (not (isEmpty!38839 (tail!12948 (_1!37107 lt!2473241)))))))

(assert (= (and d!2166217 c!1286571) b!6932262))

(assert (= (and d!2166217 (not c!1286571)) b!6932251))

(assert (= (and d!2166217 c!1286569) b!6932256))

(assert (= (and d!2166217 (not c!1286569)) b!6932253))

(assert (= (and b!6932253 c!1286570) b!6932252))

(assert (= (and b!6932253 (not c!1286570)) b!6932258))

(assert (= (and b!6932258 (not res!2827234)) b!6932259))

(assert (= (and b!6932259 res!2827236) b!6932255))

(assert (= (and b!6932255 res!2827233) b!6932260))

(assert (= (and b!6932260 res!2827237) b!6932254))

(assert (= (and b!6932259 (not res!2827240)) b!6932257))

(assert (= (and b!6932257 res!2827235) b!6932261))

(assert (= (and b!6932261 (not res!2827239)) b!6932264))

(assert (= (and b!6932264 (not res!2827238)) b!6932263))

(assert (= (or b!6932256 b!6932261 b!6932255) bm!629934))

(declare-fun m!7638952 () Bool)

(assert (=> bm!629934 m!7638952))

(declare-fun m!7638954 () Bool)

(assert (=> b!6932264 m!7638954))

(assert (=> b!6932264 m!7638954))

(declare-fun m!7638956 () Bool)

(assert (=> b!6932264 m!7638956))

(declare-fun m!7638958 () Bool)

(assert (=> b!6932263 m!7638958))

(assert (=> d!2166217 m!7638952))

(assert (=> d!2166217 m!7638502))

(assert (=> b!6932260 m!7638954))

(assert (=> b!6932260 m!7638954))

(assert (=> b!6932260 m!7638956))

(assert (=> b!6932254 m!7638958))

(assert (=> b!6932251 m!7638958))

(assert (=> b!6932251 m!7638958))

(declare-fun m!7638960 () Bool)

(assert (=> b!6932251 m!7638960))

(assert (=> b!6932251 m!7638954))

(assert (=> b!6932251 m!7638960))

(assert (=> b!6932251 m!7638954))

(declare-fun m!7638962 () Bool)

(assert (=> b!6932251 m!7638962))

(declare-fun m!7638964 () Bool)

(assert (=> b!6932262 m!7638964))

(assert (=> b!6931605 d!2166217))

(declare-fun bs!1850696 () Bool)

(declare-fun b!6932275 () Bool)

(assert (= bs!1850696 (and b!6932275 b!6931606)))

(declare-fun lambda!394506 () Int)

(assert (=> bs!1850696 (not (= lambda!394506 lambda!394456))))

(declare-fun bs!1850697 () Bool)

(assert (= bs!1850697 (and b!6932275 b!6932149)))

(assert (=> bs!1850697 (not (= lambda!394506 lambda!394501))))

(declare-fun bs!1850698 () Bool)

(assert (= bs!1850698 (and b!6932275 b!6932202)))

(assert (=> bs!1850698 (not (= lambda!394506 lambda!394503))))

(declare-fun bs!1850699 () Bool)

(assert (= bs!1850699 (and b!6932275 b!6932227)))

(assert (=> bs!1850699 (not (= lambda!394506 lambda!394505))))

(declare-fun bs!1850700 () Bool)

(assert (= bs!1850700 (and b!6932275 d!2166165)))

(assert (=> bs!1850700 (not (= lambda!394506 lambda!394493))))

(declare-fun bs!1850701 () Bool)

(assert (= bs!1850701 (and b!6932275 b!6932211)))

(assert (=> bs!1850701 (= (and (= (_2!37107 lt!2473249) s!14361) (= (reg!17276 lt!2473239) (reg!17276 lt!2473234)) (= lt!2473239 lt!2473234)) (= lambda!394506 lambda!394502))))

(declare-fun bs!1850702 () Bool)

(assert (= bs!1850702 (and b!6932275 b!6932236)))

(assert (=> bs!1850702 (= (and (= (_2!37107 lt!2473249) s!14361) (= (reg!17276 lt!2473239) (reg!17276 lt!2473236)) (= lt!2473239 lt!2473236)) (= lambda!394506 lambda!394504))))

(declare-fun bs!1850703 () Bool)

(assert (= bs!1850703 (and b!6932275 b!6931605)))

(assert (=> bs!1850703 (not (= lambda!394506 lambda!394458))))

(assert (=> bs!1850703 (not (= lambda!394506 lambda!394457))))

(declare-fun bs!1850704 () Bool)

(assert (= bs!1850704 (and b!6932275 b!6932158)))

(assert (=> bs!1850704 (= (and (= (_2!37107 lt!2473249) (_1!37107 lt!2473249)) (= (reg!17276 lt!2473239) (reg!17276 r1!6342)) (= lt!2473239 r1!6342)) (= lambda!394506 lambda!394500))))

(declare-fun bs!1850705 () Bool)

(assert (= bs!1850705 (and b!6932275 d!2166145)))

(assert (=> bs!1850705 (not (= lambda!394506 lambda!394486))))

(assert (=> bs!1850696 (not (= lambda!394506 lambda!394455))))

(assert (=> bs!1850705 (not (= lambda!394506 lambda!394484))))

(assert (=> b!6932275 true))

(assert (=> b!6932275 true))

(declare-fun bs!1850706 () Bool)

(declare-fun b!6932266 () Bool)

(assert (= bs!1850706 (and b!6932266 b!6931606)))

(declare-fun lambda!394507 () Int)

(assert (=> bs!1850706 (= (and (= (_2!37107 lt!2473249) s!14361) (= (regOne!34406 lt!2473239) r1!6342) (= (regTwo!34406 lt!2473239) lt!2473239)) (= lambda!394507 lambda!394456))))

(declare-fun bs!1850707 () Bool)

(assert (= bs!1850707 (and b!6932266 b!6932149)))

(assert (=> bs!1850707 (= (and (= (_2!37107 lt!2473249) (_1!37107 lt!2473249)) (= (regOne!34406 lt!2473239) (regOne!34406 r1!6342)) (= (regTwo!34406 lt!2473239) (regTwo!34406 r1!6342))) (= lambda!394507 lambda!394501))))

(declare-fun bs!1850708 () Bool)

(assert (= bs!1850708 (and b!6932266 b!6932202)))

(assert (=> bs!1850708 (= (and (= (_2!37107 lt!2473249) s!14361) (= (regOne!34406 lt!2473239) (regOne!34406 lt!2473234)) (= (regTwo!34406 lt!2473239) (regTwo!34406 lt!2473234))) (= lambda!394507 lambda!394503))))

(declare-fun bs!1850709 () Bool)

(assert (= bs!1850709 (and b!6932266 b!6932227)))

(assert (=> bs!1850709 (= (and (= (_2!37107 lt!2473249) s!14361) (= (regOne!34406 lt!2473239) (regOne!34406 lt!2473236)) (= (regTwo!34406 lt!2473239) (regTwo!34406 lt!2473236))) (= lambda!394507 lambda!394505))))

(declare-fun bs!1850710 () Bool)

(assert (= bs!1850710 (and b!6932266 d!2166165)))

(assert (=> bs!1850710 (not (= lambda!394507 lambda!394493))))

(declare-fun bs!1850711 () Bool)

(assert (= bs!1850711 (and b!6932266 b!6932211)))

(assert (=> bs!1850711 (not (= lambda!394507 lambda!394502))))

(declare-fun bs!1850712 () Bool)

(assert (= bs!1850712 (and b!6932266 b!6932275)))

(assert (=> bs!1850712 (not (= lambda!394507 lambda!394506))))

(declare-fun bs!1850713 () Bool)

(assert (= bs!1850713 (and b!6932266 b!6932236)))

(assert (=> bs!1850713 (not (= lambda!394507 lambda!394504))))

(declare-fun bs!1850714 () Bool)

(assert (= bs!1850714 (and b!6932266 b!6931605)))

(assert (=> bs!1850714 (= (and (= (regOne!34406 lt!2473239) r2!6280) (= (regTwo!34406 lt!2473239) r3!135)) (= lambda!394507 lambda!394458))))

(assert (=> bs!1850714 (not (= lambda!394507 lambda!394457))))

(declare-fun bs!1850715 () Bool)

(assert (= bs!1850715 (and b!6932266 b!6932158)))

(assert (=> bs!1850715 (not (= lambda!394507 lambda!394500))))

(declare-fun bs!1850716 () Bool)

(assert (= bs!1850716 (and b!6932266 d!2166145)))

(assert (=> bs!1850716 (= (and (= (_2!37107 lt!2473249) s!14361) (= (regOne!34406 lt!2473239) r1!6342) (= (regTwo!34406 lt!2473239) lt!2473239)) (= lambda!394507 lambda!394486))))

(assert (=> bs!1850706 (not (= lambda!394507 lambda!394455))))

(assert (=> bs!1850716 (not (= lambda!394507 lambda!394484))))

(assert (=> b!6932266 true))

(assert (=> b!6932266 true))

(declare-fun b!6932265 () Bool)

(declare-fun c!1286574 () Bool)

(assert (=> b!6932265 (= c!1286574 ((_ is ElementMatch!16947) lt!2473239))))

(declare-fun e!4171117 () Bool)

(declare-fun e!4171118 () Bool)

(assert (=> b!6932265 (= e!4171117 e!4171118)))

(declare-fun e!4171123 () Bool)

(declare-fun call!629940 () Bool)

(assert (=> b!6932266 (= e!4171123 call!629940)))

(declare-fun b!6932267 () Bool)

(declare-fun c!1286575 () Bool)

(assert (=> b!6932267 (= c!1286575 ((_ is Union!16947) lt!2473239))))

(declare-fun e!4171122 () Bool)

(assert (=> b!6932267 (= e!4171118 e!4171122)))

(declare-fun c!1286572 () Bool)

(declare-fun bm!629935 () Bool)

(assert (=> bm!629935 (= call!629940 (Exists!3947 (ite c!1286572 lambda!394506 lambda!394507)))))

(declare-fun bm!629936 () Bool)

(declare-fun call!629941 () Bool)

(assert (=> bm!629936 (= call!629941 (isEmpty!38839 (_2!37107 lt!2473249)))))

(declare-fun b!6932268 () Bool)

(assert (=> b!6932268 (= e!4171118 (= (_2!37107 lt!2473249) (Cons!66576 (c!1286433 lt!2473239) Nil!66576)))))

(declare-fun b!6932269 () Bool)

(assert (=> b!6932269 (= e!4171122 e!4171123)))

(assert (=> b!6932269 (= c!1286572 ((_ is Star!16947) lt!2473239))))

(declare-fun b!6932270 () Bool)

(declare-fun e!4171120 () Bool)

(assert (=> b!6932270 (= e!4171120 (matchRSpec!4004 (regTwo!34407 lt!2473239) (_2!37107 lt!2473249)))))

(declare-fun d!2166219 () Bool)

(declare-fun c!1286573 () Bool)

(assert (=> d!2166219 (= c!1286573 ((_ is EmptyExpr!16947) lt!2473239))))

(declare-fun e!4171121 () Bool)

(assert (=> d!2166219 (= (matchRSpec!4004 lt!2473239 (_2!37107 lt!2473249)) e!4171121)))

(declare-fun b!6932271 () Bool)

(assert (=> b!6932271 (= e!4171121 call!629941)))

(declare-fun b!6932272 () Bool)

(declare-fun res!2827243 () Bool)

(declare-fun e!4171119 () Bool)

(assert (=> b!6932272 (=> res!2827243 e!4171119)))

(assert (=> b!6932272 (= res!2827243 call!629941)))

(assert (=> b!6932272 (= e!4171123 e!4171119)))

(declare-fun b!6932273 () Bool)

(assert (=> b!6932273 (= e!4171122 e!4171120)))

(declare-fun res!2827242 () Bool)

(assert (=> b!6932273 (= res!2827242 (matchRSpec!4004 (regOne!34407 lt!2473239) (_2!37107 lt!2473249)))))

(assert (=> b!6932273 (=> res!2827242 e!4171120)))

(declare-fun b!6932274 () Bool)

(assert (=> b!6932274 (= e!4171121 e!4171117)))

(declare-fun res!2827241 () Bool)

(assert (=> b!6932274 (= res!2827241 (not ((_ is EmptyLang!16947) lt!2473239)))))

(assert (=> b!6932274 (=> (not res!2827241) (not e!4171117))))

(assert (=> b!6932275 (= e!4171119 call!629940)))

(assert (= (and d!2166219 c!1286573) b!6932271))

(assert (= (and d!2166219 (not c!1286573)) b!6932274))

(assert (= (and b!6932274 res!2827241) b!6932265))

(assert (= (and b!6932265 c!1286574) b!6932268))

(assert (= (and b!6932265 (not c!1286574)) b!6932267))

(assert (= (and b!6932267 c!1286575) b!6932273))

(assert (= (and b!6932267 (not c!1286575)) b!6932269))

(assert (= (and b!6932273 (not res!2827242)) b!6932270))

(assert (= (and b!6932269 c!1286572) b!6932272))

(assert (= (and b!6932269 (not c!1286572)) b!6932266))

(assert (= (and b!6932272 (not res!2827243)) b!6932275))

(assert (= (or b!6932275 b!6932266) bm!629935))

(assert (= (or b!6932271 b!6932272) bm!629936))

(declare-fun m!7638966 () Bool)

(assert (=> bm!629935 m!7638966))

(declare-fun m!7638968 () Bool)

(assert (=> bm!629936 m!7638968))

(declare-fun m!7638970 () Bool)

(assert (=> b!6932270 m!7638970))

(declare-fun m!7638972 () Bool)

(assert (=> b!6932273 m!7638972))

(assert (=> b!6931605 d!2166219))

(declare-fun bs!1850717 () Bool)

(declare-fun d!2166221 () Bool)

(assert (= bs!1850717 (and d!2166221 b!6931606)))

(declare-fun lambda!394508 () Int)

(assert (=> bs!1850717 (not (= lambda!394508 lambda!394456))))

(declare-fun bs!1850718 () Bool)

(assert (= bs!1850718 (and d!2166221 b!6932149)))

(assert (=> bs!1850718 (not (= lambda!394508 lambda!394501))))

(declare-fun bs!1850719 () Bool)

(assert (= bs!1850719 (and d!2166221 b!6932202)))

(assert (=> bs!1850719 (not (= lambda!394508 lambda!394503))))

(declare-fun bs!1850720 () Bool)

(assert (= bs!1850720 (and d!2166221 d!2166165)))

(assert (=> bs!1850720 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394508 lambda!394493))))

(declare-fun bs!1850721 () Bool)

(assert (= bs!1850721 (and d!2166221 b!6932211)))

(assert (=> bs!1850721 (not (= lambda!394508 lambda!394502))))

(declare-fun bs!1850722 () Bool)

(assert (= bs!1850722 (and d!2166221 b!6932275)))

(assert (=> bs!1850722 (not (= lambda!394508 lambda!394506))))

(declare-fun bs!1850723 () Bool)

(assert (= bs!1850723 (and d!2166221 b!6932236)))

(assert (=> bs!1850723 (not (= lambda!394508 lambda!394504))))

(declare-fun bs!1850724 () Bool)

(assert (= bs!1850724 (and d!2166221 b!6931605)))

(assert (=> bs!1850724 (not (= lambda!394508 lambda!394458))))

(assert (=> bs!1850724 (= lambda!394508 lambda!394457)))

(declare-fun bs!1850725 () Bool)

(assert (= bs!1850725 (and d!2166221 b!6932158)))

(assert (=> bs!1850725 (not (= lambda!394508 lambda!394500))))

(declare-fun bs!1850726 () Bool)

(assert (= bs!1850726 (and d!2166221 d!2166145)))

(assert (=> bs!1850726 (not (= lambda!394508 lambda!394486))))

(declare-fun bs!1850727 () Bool)

(assert (= bs!1850727 (and d!2166221 b!6932266)))

(assert (=> bs!1850727 (not (= lambda!394508 lambda!394507))))

(declare-fun bs!1850728 () Bool)

(assert (= bs!1850728 (and d!2166221 b!6932227)))

(assert (=> bs!1850728 (not (= lambda!394508 lambda!394505))))

(assert (=> bs!1850717 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394508 lambda!394455))))

(assert (=> bs!1850726 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394508 lambda!394484))))

(assert (=> d!2166221 true))

(assert (=> d!2166221 true))

(assert (=> d!2166221 true))

(assert (=> d!2166221 (= (isDefined!13417 (findConcatSeparation!3130 r2!6280 r3!135 Nil!66576 (_2!37107 lt!2473249) (_2!37107 lt!2473249))) (Exists!3947 lambda!394508))))

(declare-fun lt!2473332 () Unit!160618)

(assert (=> d!2166221 (= lt!2473332 (choose!51630 r2!6280 r3!135 (_2!37107 lt!2473249)))))

(assert (=> d!2166221 (validRegex!8653 r2!6280)))

(assert (=> d!2166221 (= (lemmaFindConcatSeparationEquivalentToExists!2888 r2!6280 r3!135 (_2!37107 lt!2473249)) lt!2473332)))

(declare-fun bs!1850729 () Bool)

(assert (= bs!1850729 d!2166221))

(assert (=> bs!1850729 m!7638522))

(assert (=> bs!1850729 m!7638522))

(declare-fun m!7638974 () Bool)

(assert (=> bs!1850729 m!7638974))

(declare-fun m!7638976 () Bool)

(assert (=> bs!1850729 m!7638976))

(declare-fun m!7638978 () Bool)

(assert (=> bs!1850729 m!7638978))

(assert (=> bs!1850729 m!7638502))

(assert (=> b!6931605 d!2166221))

(declare-fun b!6932276 () Bool)

(declare-fun lt!2473334 () Unit!160618)

(declare-fun lt!2473335 () Unit!160618)

(assert (=> b!6932276 (= lt!2473334 lt!2473335)))

(assert (=> b!6932276 (= (++!14986 (++!14986 Nil!66576 (Cons!66576 (h!73024 (_2!37107 lt!2473249)) Nil!66576)) (t!380443 (_2!37107 lt!2473249))) (_2!37107 lt!2473249))))

(assert (=> b!6932276 (= lt!2473335 (lemmaMoveElementToOtherListKeepsConcatEq!2847 Nil!66576 (h!73024 (_2!37107 lt!2473249)) (t!380443 (_2!37107 lt!2473249)) (_2!37107 lt!2473249)))))

(declare-fun e!4171125 () Option!16716)

(assert (=> b!6932276 (= e!4171125 (findConcatSeparation!3130 r2!6280 r3!135 (++!14986 Nil!66576 (Cons!66576 (h!73024 (_2!37107 lt!2473249)) Nil!66576)) (t!380443 (_2!37107 lt!2473249)) (_2!37107 lt!2473249)))))

(declare-fun b!6932277 () Bool)

(assert (=> b!6932277 (= e!4171125 None!16715)))

(declare-fun b!6932279 () Bool)

(declare-fun e!4171127 () Bool)

(declare-fun lt!2473333 () Option!16716)

(assert (=> b!6932279 (= e!4171127 (not (isDefined!13417 lt!2473333)))))

(declare-fun b!6932280 () Bool)

(declare-fun e!4171126 () Bool)

(assert (=> b!6932280 (= e!4171126 (= (++!14986 (_1!37107 (get!23357 lt!2473333)) (_2!37107 (get!23357 lt!2473333))) (_2!37107 lt!2473249)))))

(declare-fun b!6932281 () Bool)

(declare-fun e!4171124 () Option!16716)

(assert (=> b!6932281 (= e!4171124 e!4171125)))

(declare-fun c!1286576 () Bool)

(assert (=> b!6932281 (= c!1286576 ((_ is Nil!66576) (_2!37107 lt!2473249)))))

(declare-fun b!6932282 () Bool)

(declare-fun res!2827248 () Bool)

(assert (=> b!6932282 (=> (not res!2827248) (not e!4171126))))

(assert (=> b!6932282 (= res!2827248 (matchR!9086 r2!6280 (_1!37107 (get!23357 lt!2473333))))))

(declare-fun d!2166223 () Bool)

(assert (=> d!2166223 e!4171127))

(declare-fun res!2827245 () Bool)

(assert (=> d!2166223 (=> res!2827245 e!4171127)))

(assert (=> d!2166223 (= res!2827245 e!4171126)))

(declare-fun res!2827247 () Bool)

(assert (=> d!2166223 (=> (not res!2827247) (not e!4171126))))

(assert (=> d!2166223 (= res!2827247 (isDefined!13417 lt!2473333))))

(assert (=> d!2166223 (= lt!2473333 e!4171124)))

(declare-fun c!1286577 () Bool)

(declare-fun e!4171128 () Bool)

(assert (=> d!2166223 (= c!1286577 e!4171128)))

(declare-fun res!2827244 () Bool)

(assert (=> d!2166223 (=> (not res!2827244) (not e!4171128))))

(assert (=> d!2166223 (= res!2827244 (matchR!9086 r2!6280 Nil!66576))))

(assert (=> d!2166223 (validRegex!8653 r2!6280)))

(assert (=> d!2166223 (= (findConcatSeparation!3130 r2!6280 r3!135 Nil!66576 (_2!37107 lt!2473249) (_2!37107 lt!2473249)) lt!2473333)))

(declare-fun b!6932278 () Bool)

(assert (=> b!6932278 (= e!4171128 (matchR!9086 r3!135 (_2!37107 lt!2473249)))))

(declare-fun b!6932283 () Bool)

(assert (=> b!6932283 (= e!4171124 (Some!16715 (tuple2!67609 Nil!66576 (_2!37107 lt!2473249))))))

(declare-fun b!6932284 () Bool)

(declare-fun res!2827246 () Bool)

(assert (=> b!6932284 (=> (not res!2827246) (not e!4171126))))

(assert (=> b!6932284 (= res!2827246 (matchR!9086 r3!135 (_2!37107 (get!23357 lt!2473333))))))

(assert (= (and d!2166223 res!2827244) b!6932278))

(assert (= (and d!2166223 c!1286577) b!6932283))

(assert (= (and d!2166223 (not c!1286577)) b!6932281))

(assert (= (and b!6932281 c!1286576) b!6932277))

(assert (= (and b!6932281 (not c!1286576)) b!6932276))

(assert (= (and d!2166223 res!2827247) b!6932282))

(assert (= (and b!6932282 res!2827248) b!6932284))

(assert (= (and b!6932284 res!2827246) b!6932280))

(assert (= (and d!2166223 (not res!2827245)) b!6932279))

(declare-fun m!7638980 () Bool)

(assert (=> b!6932276 m!7638980))

(assert (=> b!6932276 m!7638980))

(declare-fun m!7638982 () Bool)

(assert (=> b!6932276 m!7638982))

(declare-fun m!7638984 () Bool)

(assert (=> b!6932276 m!7638984))

(assert (=> b!6932276 m!7638980))

(declare-fun m!7638986 () Bool)

(assert (=> b!6932276 m!7638986))

(declare-fun m!7638988 () Bool)

(assert (=> b!6932282 m!7638988))

(declare-fun m!7638990 () Bool)

(assert (=> b!6932282 m!7638990))

(declare-fun m!7638992 () Bool)

(assert (=> b!6932279 m!7638992))

(assert (=> b!6932280 m!7638988))

(declare-fun m!7638994 () Bool)

(assert (=> b!6932280 m!7638994))

(assert (=> d!2166223 m!7638992))

(declare-fun m!7638996 () Bool)

(assert (=> d!2166223 m!7638996))

(assert (=> d!2166223 m!7638502))

(assert (=> b!6932284 m!7638988))

(declare-fun m!7638998 () Bool)

(assert (=> b!6932284 m!7638998))

(declare-fun m!7639000 () Bool)

(assert (=> b!6932278 m!7639000))

(assert (=> b!6931605 d!2166223))

(declare-fun d!2166225 () Bool)

(assert (=> d!2166225 (= (Exists!3947 lambda!394458) (choose!51628 lambda!394458))))

(declare-fun bs!1850730 () Bool)

(assert (= bs!1850730 d!2166225))

(declare-fun m!7639002 () Bool)

(assert (=> bs!1850730 m!7639002))

(assert (=> b!6931605 d!2166225))

(declare-fun d!2166227 () Bool)

(assert (=> d!2166227 (= (isDefined!13417 lt!2473245) (not (isEmpty!38838 lt!2473245)))))

(declare-fun bs!1850731 () Bool)

(assert (= bs!1850731 d!2166227))

(declare-fun m!7639004 () Bool)

(assert (=> bs!1850731 m!7639004))

(assert (=> b!6931605 d!2166227))

(declare-fun d!2166229 () Bool)

(assert (=> d!2166229 (= (matchR!9086 lt!2473239 (_2!37107 lt!2473249)) (matchRSpec!4004 lt!2473239 (_2!37107 lt!2473249)))))

(declare-fun lt!2473336 () Unit!160618)

(assert (=> d!2166229 (= lt!2473336 (choose!51631 lt!2473239 (_2!37107 lt!2473249)))))

(assert (=> d!2166229 (validRegex!8653 lt!2473239)))

(assert (=> d!2166229 (= (mainMatchTheorem!4004 lt!2473239 (_2!37107 lt!2473249)) lt!2473336)))

(declare-fun bs!1850732 () Bool)

(assert (= bs!1850732 d!2166229))

(assert (=> bs!1850732 m!7638458))

(assert (=> bs!1850732 m!7638514))

(declare-fun m!7639006 () Bool)

(assert (=> bs!1850732 m!7639006))

(declare-fun m!7639008 () Bool)

(assert (=> bs!1850732 m!7639008))

(assert (=> b!6931605 d!2166229))

(declare-fun d!2166231 () Bool)

(assert (=> d!2166231 (= (get!23357 lt!2473245) (v!52987 lt!2473245))))

(assert (=> b!6931605 d!2166231))

(declare-fun bs!1850733 () Bool)

(declare-fun d!2166233 () Bool)

(assert (= bs!1850733 (and d!2166233 d!2166221)))

(declare-fun lambda!394509 () Int)

(assert (=> bs!1850733 (= lambda!394509 lambda!394508)))

(declare-fun bs!1850734 () Bool)

(assert (= bs!1850734 (and d!2166233 b!6931606)))

(assert (=> bs!1850734 (not (= lambda!394509 lambda!394456))))

(declare-fun bs!1850735 () Bool)

(assert (= bs!1850735 (and d!2166233 b!6932149)))

(assert (=> bs!1850735 (not (= lambda!394509 lambda!394501))))

(declare-fun bs!1850736 () Bool)

(assert (= bs!1850736 (and d!2166233 b!6932202)))

(assert (=> bs!1850736 (not (= lambda!394509 lambda!394503))))

(declare-fun bs!1850737 () Bool)

(assert (= bs!1850737 (and d!2166233 d!2166165)))

(assert (=> bs!1850737 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394509 lambda!394493))))

(declare-fun bs!1850738 () Bool)

(assert (= bs!1850738 (and d!2166233 b!6932211)))

(assert (=> bs!1850738 (not (= lambda!394509 lambda!394502))))

(declare-fun bs!1850739 () Bool)

(assert (= bs!1850739 (and d!2166233 b!6932275)))

(assert (=> bs!1850739 (not (= lambda!394509 lambda!394506))))

(declare-fun bs!1850740 () Bool)

(assert (= bs!1850740 (and d!2166233 b!6932236)))

(assert (=> bs!1850740 (not (= lambda!394509 lambda!394504))))

(declare-fun bs!1850741 () Bool)

(assert (= bs!1850741 (and d!2166233 b!6931605)))

(assert (=> bs!1850741 (not (= lambda!394509 lambda!394458))))

(assert (=> bs!1850741 (= lambda!394509 lambda!394457)))

(declare-fun bs!1850742 () Bool)

(assert (= bs!1850742 (and d!2166233 b!6932158)))

(assert (=> bs!1850742 (not (= lambda!394509 lambda!394500))))

(declare-fun bs!1850743 () Bool)

(assert (= bs!1850743 (and d!2166233 d!2166145)))

(assert (=> bs!1850743 (not (= lambda!394509 lambda!394486))))

(declare-fun bs!1850744 () Bool)

(assert (= bs!1850744 (and d!2166233 b!6932266)))

(assert (=> bs!1850744 (not (= lambda!394509 lambda!394507))))

(declare-fun bs!1850745 () Bool)

(assert (= bs!1850745 (and d!2166233 b!6932227)))

(assert (=> bs!1850745 (not (= lambda!394509 lambda!394505))))

(assert (=> bs!1850734 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394509 lambda!394455))))

(assert (=> bs!1850743 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394509 lambda!394484))))

(assert (=> d!2166233 true))

(assert (=> d!2166233 true))

(assert (=> d!2166233 true))

(declare-fun lambda!394510 () Int)

(assert (=> bs!1850733 (not (= lambda!394510 lambda!394508))))

(declare-fun bs!1850746 () Bool)

(assert (= bs!1850746 d!2166233))

(assert (=> bs!1850746 (not (= lambda!394510 lambda!394509))))

(assert (=> bs!1850734 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394510 lambda!394456))))

(assert (=> bs!1850735 (= (and (= (_2!37107 lt!2473249) (_1!37107 lt!2473249)) (= r2!6280 (regOne!34406 r1!6342)) (= r3!135 (regTwo!34406 r1!6342))) (= lambda!394510 lambda!394501))))

(assert (=> bs!1850736 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 (regOne!34406 lt!2473234)) (= r3!135 (regTwo!34406 lt!2473234))) (= lambda!394510 lambda!394503))))

(assert (=> bs!1850737 (not (= lambda!394510 lambda!394493))))

(assert (=> bs!1850738 (not (= lambda!394510 lambda!394502))))

(assert (=> bs!1850739 (not (= lambda!394510 lambda!394506))))

(assert (=> bs!1850740 (not (= lambda!394510 lambda!394504))))

(assert (=> bs!1850741 (= lambda!394510 lambda!394458)))

(assert (=> bs!1850741 (not (= lambda!394510 lambda!394457))))

(assert (=> bs!1850742 (not (= lambda!394510 lambda!394500))))

(assert (=> bs!1850743 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473239)) (= lambda!394510 lambda!394486))))

(assert (=> bs!1850744 (= (and (= r2!6280 (regOne!34406 lt!2473239)) (= r3!135 (regTwo!34406 lt!2473239))) (= lambda!394510 lambda!394507))))

(assert (=> bs!1850745 (= (and (= (_2!37107 lt!2473249) s!14361) (= r2!6280 (regOne!34406 lt!2473236)) (= r3!135 (regTwo!34406 lt!2473236))) (= lambda!394510 lambda!394505))))

(assert (=> bs!1850734 (not (= lambda!394510 lambda!394455))))

(assert (=> bs!1850743 (not (= lambda!394510 lambda!394484))))

(assert (=> d!2166233 true))

(assert (=> d!2166233 true))

(assert (=> d!2166233 true))

(assert (=> d!2166233 (= (Exists!3947 lambda!394509) (Exists!3947 lambda!394510))))

(declare-fun lt!2473337 () Unit!160618)

(assert (=> d!2166233 (= lt!2473337 (choose!51629 r2!6280 r3!135 (_2!37107 lt!2473249)))))

(assert (=> d!2166233 (validRegex!8653 r2!6280)))

(assert (=> d!2166233 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2408 r2!6280 r3!135 (_2!37107 lt!2473249)) lt!2473337)))

(declare-fun m!7639010 () Bool)

(assert (=> bs!1850746 m!7639010))

(declare-fun m!7639012 () Bool)

(assert (=> bs!1850746 m!7639012))

(declare-fun m!7639014 () Bool)

(assert (=> bs!1850746 m!7639014))

(assert (=> bs!1850746 m!7638502))

(assert (=> b!6931605 d!2166233))

(declare-fun d!2166235 () Bool)

(assert (=> d!2166235 (= (Exists!3947 lambda!394457) (choose!51628 lambda!394457))))

(declare-fun bs!1850747 () Bool)

(assert (= bs!1850747 d!2166235))

(declare-fun m!7639016 () Bool)

(assert (=> bs!1850747 m!7639016))

(assert (=> b!6931605 d!2166235))

(declare-fun bs!1850748 () Bool)

(declare-fun b!6932295 () Bool)

(assert (= bs!1850748 (and b!6932295 d!2166221)))

(declare-fun lambda!394511 () Int)

(assert (=> bs!1850748 (not (= lambda!394511 lambda!394508))))

(declare-fun bs!1850749 () Bool)

(assert (= bs!1850749 (and b!6932295 d!2166233)))

(assert (=> bs!1850749 (not (= lambda!394511 lambda!394510))))

(assert (=> bs!1850749 (not (= lambda!394511 lambda!394509))))

(declare-fun bs!1850750 () Bool)

(assert (= bs!1850750 (and b!6932295 b!6931606)))

(assert (=> bs!1850750 (not (= lambda!394511 lambda!394456))))

(declare-fun bs!1850751 () Bool)

(assert (= bs!1850751 (and b!6932295 b!6932149)))

(assert (=> bs!1850751 (not (= lambda!394511 lambda!394501))))

(declare-fun bs!1850752 () Bool)

(assert (= bs!1850752 (and b!6932295 b!6932202)))

(assert (=> bs!1850752 (not (= lambda!394511 lambda!394503))))

(declare-fun bs!1850753 () Bool)

(assert (= bs!1850753 (and b!6932295 d!2166165)))

(assert (=> bs!1850753 (not (= lambda!394511 lambda!394493))))

(declare-fun bs!1850754 () Bool)

(assert (= bs!1850754 (and b!6932295 b!6932211)))

(assert (=> bs!1850754 (= (and (= (_1!37107 lt!2473241) s!14361) (= (reg!17276 r2!6280) (reg!17276 lt!2473234)) (= r2!6280 lt!2473234)) (= lambda!394511 lambda!394502))))

(declare-fun bs!1850755 () Bool)

(assert (= bs!1850755 (and b!6932295 b!6932275)))

(assert (=> bs!1850755 (= (and (= (_1!37107 lt!2473241) (_2!37107 lt!2473249)) (= (reg!17276 r2!6280) (reg!17276 lt!2473239)) (= r2!6280 lt!2473239)) (= lambda!394511 lambda!394506))))

(declare-fun bs!1850756 () Bool)

(assert (= bs!1850756 (and b!6932295 b!6932236)))

(assert (=> bs!1850756 (= (and (= (_1!37107 lt!2473241) s!14361) (= (reg!17276 r2!6280) (reg!17276 lt!2473236)) (= r2!6280 lt!2473236)) (= lambda!394511 lambda!394504))))

(declare-fun bs!1850757 () Bool)

(assert (= bs!1850757 (and b!6932295 b!6931605)))

(assert (=> bs!1850757 (not (= lambda!394511 lambda!394458))))

(assert (=> bs!1850757 (not (= lambda!394511 lambda!394457))))

(declare-fun bs!1850758 () Bool)

(assert (= bs!1850758 (and b!6932295 b!6932158)))

(assert (=> bs!1850758 (= (and (= (_1!37107 lt!2473241) (_1!37107 lt!2473249)) (= (reg!17276 r2!6280) (reg!17276 r1!6342)) (= r2!6280 r1!6342)) (= lambda!394511 lambda!394500))))

(declare-fun bs!1850759 () Bool)

(assert (= bs!1850759 (and b!6932295 d!2166145)))

(assert (=> bs!1850759 (not (= lambda!394511 lambda!394486))))

(declare-fun bs!1850760 () Bool)

(assert (= bs!1850760 (and b!6932295 b!6932266)))

(assert (=> bs!1850760 (not (= lambda!394511 lambda!394507))))

(declare-fun bs!1850761 () Bool)

(assert (= bs!1850761 (and b!6932295 b!6932227)))

(assert (=> bs!1850761 (not (= lambda!394511 lambda!394505))))

(assert (=> bs!1850750 (not (= lambda!394511 lambda!394455))))

(assert (=> bs!1850759 (not (= lambda!394511 lambda!394484))))

(assert (=> b!6932295 true))

(assert (=> b!6932295 true))

(declare-fun bs!1850762 () Bool)

(declare-fun b!6932286 () Bool)

(assert (= bs!1850762 (and b!6932286 d!2166221)))

(declare-fun lambda!394512 () Int)

(assert (=> bs!1850762 (not (= lambda!394512 lambda!394508))))

(declare-fun bs!1850763 () Bool)

(assert (= bs!1850763 (and b!6932286 d!2166233)))

(assert (=> bs!1850763 (= (and (= (_1!37107 lt!2473241) (_2!37107 lt!2473249)) (= (regOne!34406 r2!6280) r2!6280) (= (regTwo!34406 r2!6280) r3!135)) (= lambda!394512 lambda!394510))))

(assert (=> bs!1850763 (not (= lambda!394512 lambda!394509))))

(declare-fun bs!1850764 () Bool)

(assert (= bs!1850764 (and b!6932286 b!6931606)))

(assert (=> bs!1850764 (= (and (= (_1!37107 lt!2473241) s!14361) (= (regOne!34406 r2!6280) r1!6342) (= (regTwo!34406 r2!6280) lt!2473239)) (= lambda!394512 lambda!394456))))

(declare-fun bs!1850765 () Bool)

(assert (= bs!1850765 (and b!6932286 b!6932149)))

(assert (=> bs!1850765 (= (and (= (_1!37107 lt!2473241) (_1!37107 lt!2473249)) (= (regOne!34406 r2!6280) (regOne!34406 r1!6342)) (= (regTwo!34406 r2!6280) (regTwo!34406 r1!6342))) (= lambda!394512 lambda!394501))))

(declare-fun bs!1850766 () Bool)

(assert (= bs!1850766 (and b!6932286 b!6932202)))

(assert (=> bs!1850766 (= (and (= (_1!37107 lt!2473241) s!14361) (= (regOne!34406 r2!6280) (regOne!34406 lt!2473234)) (= (regTwo!34406 r2!6280) (regTwo!34406 lt!2473234))) (= lambda!394512 lambda!394503))))

(declare-fun bs!1850767 () Bool)

(assert (= bs!1850767 (and b!6932286 d!2166165)))

(assert (=> bs!1850767 (not (= lambda!394512 lambda!394493))))

(declare-fun bs!1850768 () Bool)

(assert (= bs!1850768 (and b!6932286 b!6932211)))

(assert (=> bs!1850768 (not (= lambda!394512 lambda!394502))))

(declare-fun bs!1850769 () Bool)

(assert (= bs!1850769 (and b!6932286 b!6932275)))

(assert (=> bs!1850769 (not (= lambda!394512 lambda!394506))))

(declare-fun bs!1850770 () Bool)

(assert (= bs!1850770 (and b!6932286 b!6932236)))

(assert (=> bs!1850770 (not (= lambda!394512 lambda!394504))))

(declare-fun bs!1850771 () Bool)

(assert (= bs!1850771 (and b!6932286 b!6931605)))

(assert (=> bs!1850771 (= (and (= (_1!37107 lt!2473241) (_2!37107 lt!2473249)) (= (regOne!34406 r2!6280) r2!6280) (= (regTwo!34406 r2!6280) r3!135)) (= lambda!394512 lambda!394458))))

(assert (=> bs!1850771 (not (= lambda!394512 lambda!394457))))

(declare-fun bs!1850772 () Bool)

(assert (= bs!1850772 (and b!6932286 b!6932158)))

(assert (=> bs!1850772 (not (= lambda!394512 lambda!394500))))

(declare-fun bs!1850773 () Bool)

(assert (= bs!1850773 (and b!6932286 d!2166145)))

(assert (=> bs!1850773 (= (and (= (_1!37107 lt!2473241) s!14361) (= (regOne!34406 r2!6280) r1!6342) (= (regTwo!34406 r2!6280) lt!2473239)) (= lambda!394512 lambda!394486))))

(declare-fun bs!1850774 () Bool)

(assert (= bs!1850774 (and b!6932286 b!6932266)))

(assert (=> bs!1850774 (= (and (= (_1!37107 lt!2473241) (_2!37107 lt!2473249)) (= (regOne!34406 r2!6280) (regOne!34406 lt!2473239)) (= (regTwo!34406 r2!6280) (regTwo!34406 lt!2473239))) (= lambda!394512 lambda!394507))))

(declare-fun bs!1850775 () Bool)

(assert (= bs!1850775 (and b!6932286 b!6932295)))

(assert (=> bs!1850775 (not (= lambda!394512 lambda!394511))))

(declare-fun bs!1850776 () Bool)

(assert (= bs!1850776 (and b!6932286 b!6932227)))

(assert (=> bs!1850776 (= (and (= (_1!37107 lt!2473241) s!14361) (= (regOne!34406 r2!6280) (regOne!34406 lt!2473236)) (= (regTwo!34406 r2!6280) (regTwo!34406 lt!2473236))) (= lambda!394512 lambda!394505))))

(assert (=> bs!1850764 (not (= lambda!394512 lambda!394455))))

(assert (=> bs!1850773 (not (= lambda!394512 lambda!394484))))

(assert (=> b!6932286 true))

(assert (=> b!6932286 true))

(declare-fun b!6932285 () Bool)

(declare-fun c!1286580 () Bool)

(assert (=> b!6932285 (= c!1286580 ((_ is ElementMatch!16947) r2!6280))))

(declare-fun e!4171129 () Bool)

(declare-fun e!4171130 () Bool)

(assert (=> b!6932285 (= e!4171129 e!4171130)))

(declare-fun e!4171135 () Bool)

(declare-fun call!629942 () Bool)

(assert (=> b!6932286 (= e!4171135 call!629942)))

(declare-fun b!6932287 () Bool)

(declare-fun c!1286581 () Bool)

(assert (=> b!6932287 (= c!1286581 ((_ is Union!16947) r2!6280))))

(declare-fun e!4171134 () Bool)

(assert (=> b!6932287 (= e!4171130 e!4171134)))

(declare-fun c!1286578 () Bool)

(declare-fun bm!629937 () Bool)

(assert (=> bm!629937 (= call!629942 (Exists!3947 (ite c!1286578 lambda!394511 lambda!394512)))))

(declare-fun bm!629938 () Bool)

(declare-fun call!629943 () Bool)

(assert (=> bm!629938 (= call!629943 (isEmpty!38839 (_1!37107 lt!2473241)))))

(declare-fun b!6932288 () Bool)

(assert (=> b!6932288 (= e!4171130 (= (_1!37107 lt!2473241) (Cons!66576 (c!1286433 r2!6280) Nil!66576)))))

(declare-fun b!6932289 () Bool)

(assert (=> b!6932289 (= e!4171134 e!4171135)))

(assert (=> b!6932289 (= c!1286578 ((_ is Star!16947) r2!6280))))

(declare-fun b!6932290 () Bool)

(declare-fun e!4171132 () Bool)

(assert (=> b!6932290 (= e!4171132 (matchRSpec!4004 (regTwo!34407 r2!6280) (_1!37107 lt!2473241)))))

(declare-fun d!2166237 () Bool)

(declare-fun c!1286579 () Bool)

(assert (=> d!2166237 (= c!1286579 ((_ is EmptyExpr!16947) r2!6280))))

(declare-fun e!4171133 () Bool)

(assert (=> d!2166237 (= (matchRSpec!4004 r2!6280 (_1!37107 lt!2473241)) e!4171133)))

(declare-fun b!6932291 () Bool)

(assert (=> b!6932291 (= e!4171133 call!629943)))

(declare-fun b!6932292 () Bool)

(declare-fun res!2827251 () Bool)

(declare-fun e!4171131 () Bool)

(assert (=> b!6932292 (=> res!2827251 e!4171131)))

(assert (=> b!6932292 (= res!2827251 call!629943)))

(assert (=> b!6932292 (= e!4171135 e!4171131)))

(declare-fun b!6932293 () Bool)

(assert (=> b!6932293 (= e!4171134 e!4171132)))

(declare-fun res!2827250 () Bool)

(assert (=> b!6932293 (= res!2827250 (matchRSpec!4004 (regOne!34407 r2!6280) (_1!37107 lt!2473241)))))

(assert (=> b!6932293 (=> res!2827250 e!4171132)))

(declare-fun b!6932294 () Bool)

(assert (=> b!6932294 (= e!4171133 e!4171129)))

(declare-fun res!2827249 () Bool)

(assert (=> b!6932294 (= res!2827249 (not ((_ is EmptyLang!16947) r2!6280)))))

(assert (=> b!6932294 (=> (not res!2827249) (not e!4171129))))

(assert (=> b!6932295 (= e!4171131 call!629942)))

(assert (= (and d!2166237 c!1286579) b!6932291))

(assert (= (and d!2166237 (not c!1286579)) b!6932294))

(assert (= (and b!6932294 res!2827249) b!6932285))

(assert (= (and b!6932285 c!1286580) b!6932288))

(assert (= (and b!6932285 (not c!1286580)) b!6932287))

(assert (= (and b!6932287 c!1286581) b!6932293))

(assert (= (and b!6932287 (not c!1286581)) b!6932289))

(assert (= (and b!6932293 (not res!2827250)) b!6932290))

(assert (= (and b!6932289 c!1286578) b!6932292))

(assert (= (and b!6932289 (not c!1286578)) b!6932286))

(assert (= (and b!6932292 (not res!2827251)) b!6932295))

(assert (= (or b!6932295 b!6932286) bm!629937))

(assert (= (or b!6932291 b!6932292) bm!629938))

(declare-fun m!7639018 () Bool)

(assert (=> bm!629937 m!7639018))

(assert (=> bm!629938 m!7638952))

(declare-fun m!7639020 () Bool)

(assert (=> b!6932290 m!7639020))

(declare-fun m!7639022 () Bool)

(assert (=> b!6932293 m!7639022))

(assert (=> b!6931600 d!2166237))

(declare-fun d!2166239 () Bool)

(assert (=> d!2166239 (= (matchR!9086 r2!6280 (_1!37107 lt!2473241)) (matchRSpec!4004 r2!6280 (_1!37107 lt!2473241)))))

(declare-fun lt!2473338 () Unit!160618)

(assert (=> d!2166239 (= lt!2473338 (choose!51631 r2!6280 (_1!37107 lt!2473241)))))

(assert (=> d!2166239 (validRegex!8653 r2!6280)))

(assert (=> d!2166239 (= (mainMatchTheorem!4004 r2!6280 (_1!37107 lt!2473241)) lt!2473338)))

(declare-fun bs!1850777 () Bool)

(assert (= bs!1850777 d!2166239))

(assert (=> bs!1850777 m!7638518))

(assert (=> bs!1850777 m!7638498))

(declare-fun m!7639024 () Bool)

(assert (=> bs!1850777 m!7639024))

(assert (=> bs!1850777 m!7638502))

(assert (=> b!6931600 d!2166239))

(declare-fun b!6932297 () Bool)

(declare-fun e!4171136 () List!66700)

(assert (=> b!6932297 (= e!4171136 (Cons!66576 (h!73024 (_1!37107 lt!2473249)) (++!14986 (t!380443 (_1!37107 lt!2473249)) (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241)))))))

(declare-fun d!2166241 () Bool)

(declare-fun e!4171137 () Bool)

(assert (=> d!2166241 e!4171137))

(declare-fun res!2827253 () Bool)

(assert (=> d!2166241 (=> (not res!2827253) (not e!4171137))))

(declare-fun lt!2473339 () List!66700)

(assert (=> d!2166241 (= res!2827253 (= (content!13090 lt!2473339) ((_ map or) (content!13090 (_1!37107 lt!2473249)) (content!13090 (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241))))))))

(assert (=> d!2166241 (= lt!2473339 e!4171136)))

(declare-fun c!1286582 () Bool)

(assert (=> d!2166241 (= c!1286582 ((_ is Nil!66576) (_1!37107 lt!2473249)))))

(assert (=> d!2166241 (= (++!14986 (_1!37107 lt!2473249) (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241))) lt!2473339)))

(declare-fun b!6932299 () Bool)

(assert (=> b!6932299 (= e!4171137 (or (not (= (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241)) Nil!66576)) (= lt!2473339 (_1!37107 lt!2473249))))))

(declare-fun b!6932296 () Bool)

(assert (=> b!6932296 (= e!4171136 (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241)))))

(declare-fun b!6932298 () Bool)

(declare-fun res!2827252 () Bool)

(assert (=> b!6932298 (=> (not res!2827252) (not e!4171137))))

(assert (=> b!6932298 (= res!2827252 (= (size!40787 lt!2473339) (+ (size!40787 (_1!37107 lt!2473249)) (size!40787 (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241))))))))

(assert (= (and d!2166241 c!1286582) b!6932296))

(assert (= (and d!2166241 (not c!1286582)) b!6932297))

(assert (= (and d!2166241 res!2827253) b!6932298))

(assert (= (and b!6932298 res!2827252) b!6932299))

(assert (=> b!6932297 m!7638490))

(declare-fun m!7639026 () Bool)

(assert (=> b!6932297 m!7639026))

(declare-fun m!7639028 () Bool)

(assert (=> d!2166241 m!7639028))

(assert (=> d!2166241 m!7638600))

(assert (=> d!2166241 m!7638490))

(declare-fun m!7639030 () Bool)

(assert (=> d!2166241 m!7639030))

(declare-fun m!7639032 () Bool)

(assert (=> b!6932298 m!7639032))

(assert (=> b!6932298 m!7638606))

(assert (=> b!6932298 m!7638490))

(declare-fun m!7639034 () Bool)

(assert (=> b!6932298 m!7639034))

(assert (=> b!6931600 d!2166241))

(declare-fun bs!1850778 () Bool)

(declare-fun b!6932310 () Bool)

(assert (= bs!1850778 (and b!6932310 d!2166221)))

(declare-fun lambda!394513 () Int)

(assert (=> bs!1850778 (not (= lambda!394513 lambda!394508))))

(declare-fun bs!1850779 () Bool)

(assert (= bs!1850779 (and b!6932310 d!2166233)))

(assert (=> bs!1850779 (not (= lambda!394513 lambda!394510))))

(declare-fun bs!1850780 () Bool)

(assert (= bs!1850780 (and b!6932310 b!6932286)))

(assert (=> bs!1850780 (not (= lambda!394513 lambda!394512))))

(assert (=> bs!1850779 (not (= lambda!394513 lambda!394509))))

(declare-fun bs!1850781 () Bool)

(assert (= bs!1850781 (and b!6932310 b!6931606)))

(assert (=> bs!1850781 (not (= lambda!394513 lambda!394456))))

(declare-fun bs!1850782 () Bool)

(assert (= bs!1850782 (and b!6932310 b!6932149)))

(assert (=> bs!1850782 (not (= lambda!394513 lambda!394501))))

(declare-fun bs!1850783 () Bool)

(assert (= bs!1850783 (and b!6932310 b!6932202)))

(assert (=> bs!1850783 (not (= lambda!394513 lambda!394503))))

(declare-fun bs!1850784 () Bool)

(assert (= bs!1850784 (and b!6932310 d!2166165)))

(assert (=> bs!1850784 (not (= lambda!394513 lambda!394493))))

(declare-fun bs!1850785 () Bool)

(assert (= bs!1850785 (and b!6932310 b!6932211)))

(assert (=> bs!1850785 (= (and (= (_2!37107 lt!2473241) s!14361) (= (reg!17276 r3!135) (reg!17276 lt!2473234)) (= r3!135 lt!2473234)) (= lambda!394513 lambda!394502))))

(declare-fun bs!1850786 () Bool)

(assert (= bs!1850786 (and b!6932310 b!6932275)))

(assert (=> bs!1850786 (= (and (= (_2!37107 lt!2473241) (_2!37107 lt!2473249)) (= (reg!17276 r3!135) (reg!17276 lt!2473239)) (= r3!135 lt!2473239)) (= lambda!394513 lambda!394506))))

(declare-fun bs!1850787 () Bool)

(assert (= bs!1850787 (and b!6932310 b!6932236)))

(assert (=> bs!1850787 (= (and (= (_2!37107 lt!2473241) s!14361) (= (reg!17276 r3!135) (reg!17276 lt!2473236)) (= r3!135 lt!2473236)) (= lambda!394513 lambda!394504))))

(declare-fun bs!1850788 () Bool)

(assert (= bs!1850788 (and b!6932310 b!6931605)))

(assert (=> bs!1850788 (not (= lambda!394513 lambda!394458))))

(assert (=> bs!1850788 (not (= lambda!394513 lambda!394457))))

(declare-fun bs!1850789 () Bool)

(assert (= bs!1850789 (and b!6932310 b!6932158)))

(assert (=> bs!1850789 (= (and (= (_2!37107 lt!2473241) (_1!37107 lt!2473249)) (= (reg!17276 r3!135) (reg!17276 r1!6342)) (= r3!135 r1!6342)) (= lambda!394513 lambda!394500))))

(declare-fun bs!1850790 () Bool)

(assert (= bs!1850790 (and b!6932310 d!2166145)))

(assert (=> bs!1850790 (not (= lambda!394513 lambda!394486))))

(declare-fun bs!1850791 () Bool)

(assert (= bs!1850791 (and b!6932310 b!6932266)))

(assert (=> bs!1850791 (not (= lambda!394513 lambda!394507))))

(declare-fun bs!1850792 () Bool)

(assert (= bs!1850792 (and b!6932310 b!6932295)))

(assert (=> bs!1850792 (= (and (= (_2!37107 lt!2473241) (_1!37107 lt!2473241)) (= (reg!17276 r3!135) (reg!17276 r2!6280)) (= r3!135 r2!6280)) (= lambda!394513 lambda!394511))))

(declare-fun bs!1850793 () Bool)

(assert (= bs!1850793 (and b!6932310 b!6932227)))

(assert (=> bs!1850793 (not (= lambda!394513 lambda!394505))))

(assert (=> bs!1850781 (not (= lambda!394513 lambda!394455))))

(assert (=> bs!1850790 (not (= lambda!394513 lambda!394484))))

(assert (=> b!6932310 true))

(assert (=> b!6932310 true))

(declare-fun bs!1850794 () Bool)

(declare-fun b!6932301 () Bool)

(assert (= bs!1850794 (and b!6932301 b!6932310)))

(declare-fun lambda!394514 () Int)

(assert (=> bs!1850794 (not (= lambda!394514 lambda!394513))))

(declare-fun bs!1850795 () Bool)

(assert (= bs!1850795 (and b!6932301 d!2166221)))

(assert (=> bs!1850795 (not (= lambda!394514 lambda!394508))))

(declare-fun bs!1850796 () Bool)

(assert (= bs!1850796 (and b!6932301 d!2166233)))

(assert (=> bs!1850796 (= (and (= (_2!37107 lt!2473241) (_2!37107 lt!2473249)) (= (regOne!34406 r3!135) r2!6280) (= (regTwo!34406 r3!135) r3!135)) (= lambda!394514 lambda!394510))))

(declare-fun bs!1850797 () Bool)

(assert (= bs!1850797 (and b!6932301 b!6932286)))

(assert (=> bs!1850797 (= (and (= (_2!37107 lt!2473241) (_1!37107 lt!2473241)) (= (regOne!34406 r3!135) (regOne!34406 r2!6280)) (= (regTwo!34406 r3!135) (regTwo!34406 r2!6280))) (= lambda!394514 lambda!394512))))

(assert (=> bs!1850796 (not (= lambda!394514 lambda!394509))))

(declare-fun bs!1850798 () Bool)

(assert (= bs!1850798 (and b!6932301 b!6931606)))

(assert (=> bs!1850798 (= (and (= (_2!37107 lt!2473241) s!14361) (= (regOne!34406 r3!135) r1!6342) (= (regTwo!34406 r3!135) lt!2473239)) (= lambda!394514 lambda!394456))))

(declare-fun bs!1850799 () Bool)

(assert (= bs!1850799 (and b!6932301 b!6932149)))

(assert (=> bs!1850799 (= (and (= (_2!37107 lt!2473241) (_1!37107 lt!2473249)) (= (regOne!34406 r3!135) (regOne!34406 r1!6342)) (= (regTwo!34406 r3!135) (regTwo!34406 r1!6342))) (= lambda!394514 lambda!394501))))

(declare-fun bs!1850800 () Bool)

(assert (= bs!1850800 (and b!6932301 b!6932202)))

(assert (=> bs!1850800 (= (and (= (_2!37107 lt!2473241) s!14361) (= (regOne!34406 r3!135) (regOne!34406 lt!2473234)) (= (regTwo!34406 r3!135) (regTwo!34406 lt!2473234))) (= lambda!394514 lambda!394503))))

(declare-fun bs!1850801 () Bool)

(assert (= bs!1850801 (and b!6932301 d!2166165)))

(assert (=> bs!1850801 (not (= lambda!394514 lambda!394493))))

(declare-fun bs!1850802 () Bool)

(assert (= bs!1850802 (and b!6932301 b!6932211)))

(assert (=> bs!1850802 (not (= lambda!394514 lambda!394502))))

(declare-fun bs!1850803 () Bool)

(assert (= bs!1850803 (and b!6932301 b!6932275)))

(assert (=> bs!1850803 (not (= lambda!394514 lambda!394506))))

(declare-fun bs!1850804 () Bool)

(assert (= bs!1850804 (and b!6932301 b!6932236)))

(assert (=> bs!1850804 (not (= lambda!394514 lambda!394504))))

(declare-fun bs!1850805 () Bool)

(assert (= bs!1850805 (and b!6932301 b!6931605)))

(assert (=> bs!1850805 (= (and (= (_2!37107 lt!2473241) (_2!37107 lt!2473249)) (= (regOne!34406 r3!135) r2!6280) (= (regTwo!34406 r3!135) r3!135)) (= lambda!394514 lambda!394458))))

(assert (=> bs!1850805 (not (= lambda!394514 lambda!394457))))

(declare-fun bs!1850806 () Bool)

(assert (= bs!1850806 (and b!6932301 b!6932158)))

(assert (=> bs!1850806 (not (= lambda!394514 lambda!394500))))

(declare-fun bs!1850807 () Bool)

(assert (= bs!1850807 (and b!6932301 d!2166145)))

(assert (=> bs!1850807 (= (and (= (_2!37107 lt!2473241) s!14361) (= (regOne!34406 r3!135) r1!6342) (= (regTwo!34406 r3!135) lt!2473239)) (= lambda!394514 lambda!394486))))

(declare-fun bs!1850808 () Bool)

(assert (= bs!1850808 (and b!6932301 b!6932266)))

(assert (=> bs!1850808 (= (and (= (_2!37107 lt!2473241) (_2!37107 lt!2473249)) (= (regOne!34406 r3!135) (regOne!34406 lt!2473239)) (= (regTwo!34406 r3!135) (regTwo!34406 lt!2473239))) (= lambda!394514 lambda!394507))))

(declare-fun bs!1850809 () Bool)

(assert (= bs!1850809 (and b!6932301 b!6932295)))

(assert (=> bs!1850809 (not (= lambda!394514 lambda!394511))))

(declare-fun bs!1850810 () Bool)

(assert (= bs!1850810 (and b!6932301 b!6932227)))

(assert (=> bs!1850810 (= (and (= (_2!37107 lt!2473241) s!14361) (= (regOne!34406 r3!135) (regOne!34406 lt!2473236)) (= (regTwo!34406 r3!135) (regTwo!34406 lt!2473236))) (= lambda!394514 lambda!394505))))

(assert (=> bs!1850798 (not (= lambda!394514 lambda!394455))))

(assert (=> bs!1850807 (not (= lambda!394514 lambda!394484))))

(assert (=> b!6932301 true))

(assert (=> b!6932301 true))

(declare-fun b!6932300 () Bool)

(declare-fun c!1286585 () Bool)

(assert (=> b!6932300 (= c!1286585 ((_ is ElementMatch!16947) r3!135))))

(declare-fun e!4171138 () Bool)

(declare-fun e!4171139 () Bool)

(assert (=> b!6932300 (= e!4171138 e!4171139)))

(declare-fun e!4171144 () Bool)

(declare-fun call!629944 () Bool)

(assert (=> b!6932301 (= e!4171144 call!629944)))

(declare-fun b!6932302 () Bool)

(declare-fun c!1286586 () Bool)

(assert (=> b!6932302 (= c!1286586 ((_ is Union!16947) r3!135))))

(declare-fun e!4171143 () Bool)

(assert (=> b!6932302 (= e!4171139 e!4171143)))

(declare-fun bm!629939 () Bool)

(declare-fun c!1286583 () Bool)

(assert (=> bm!629939 (= call!629944 (Exists!3947 (ite c!1286583 lambda!394513 lambda!394514)))))

(declare-fun bm!629940 () Bool)

(declare-fun call!629945 () Bool)

(assert (=> bm!629940 (= call!629945 (isEmpty!38839 (_2!37107 lt!2473241)))))

(declare-fun b!6932303 () Bool)

(assert (=> b!6932303 (= e!4171139 (= (_2!37107 lt!2473241) (Cons!66576 (c!1286433 r3!135) Nil!66576)))))

(declare-fun b!6932304 () Bool)

(assert (=> b!6932304 (= e!4171143 e!4171144)))

(assert (=> b!6932304 (= c!1286583 ((_ is Star!16947) r3!135))))

(declare-fun b!6932305 () Bool)

(declare-fun e!4171141 () Bool)

(assert (=> b!6932305 (= e!4171141 (matchRSpec!4004 (regTwo!34407 r3!135) (_2!37107 lt!2473241)))))

(declare-fun d!2166243 () Bool)

(declare-fun c!1286584 () Bool)

(assert (=> d!2166243 (= c!1286584 ((_ is EmptyExpr!16947) r3!135))))

(declare-fun e!4171142 () Bool)

(assert (=> d!2166243 (= (matchRSpec!4004 r3!135 (_2!37107 lt!2473241)) e!4171142)))

(declare-fun b!6932306 () Bool)

(assert (=> b!6932306 (= e!4171142 call!629945)))

(declare-fun b!6932307 () Bool)

(declare-fun res!2827256 () Bool)

(declare-fun e!4171140 () Bool)

(assert (=> b!6932307 (=> res!2827256 e!4171140)))

(assert (=> b!6932307 (= res!2827256 call!629945)))

(assert (=> b!6932307 (= e!4171144 e!4171140)))

(declare-fun b!6932308 () Bool)

(assert (=> b!6932308 (= e!4171143 e!4171141)))

(declare-fun res!2827255 () Bool)

(assert (=> b!6932308 (= res!2827255 (matchRSpec!4004 (regOne!34407 r3!135) (_2!37107 lt!2473241)))))

(assert (=> b!6932308 (=> res!2827255 e!4171141)))

(declare-fun b!6932309 () Bool)

(assert (=> b!6932309 (= e!4171142 e!4171138)))

(declare-fun res!2827254 () Bool)

(assert (=> b!6932309 (= res!2827254 (not ((_ is EmptyLang!16947) r3!135)))))

(assert (=> b!6932309 (=> (not res!2827254) (not e!4171138))))

(assert (=> b!6932310 (= e!4171140 call!629944)))

(assert (= (and d!2166243 c!1286584) b!6932306))

(assert (= (and d!2166243 (not c!1286584)) b!6932309))

(assert (= (and b!6932309 res!2827254) b!6932300))

(assert (= (and b!6932300 c!1286585) b!6932303))

(assert (= (and b!6932300 (not c!1286585)) b!6932302))

(assert (= (and b!6932302 c!1286586) b!6932308))

(assert (= (and b!6932302 (not c!1286586)) b!6932304))

(assert (= (and b!6932308 (not res!2827255)) b!6932305))

(assert (= (and b!6932304 c!1286583) b!6932307))

(assert (= (and b!6932304 (not c!1286583)) b!6932301))

(assert (= (and b!6932307 (not res!2827256)) b!6932310))

(assert (= (or b!6932310 b!6932301) bm!629939))

(assert (= (or b!6932306 b!6932307) bm!629940))

(declare-fun m!7639036 () Bool)

(assert (=> bm!629939 m!7639036))

(declare-fun m!7639038 () Bool)

(assert (=> bm!629940 m!7639038))

(declare-fun m!7639040 () Bool)

(assert (=> b!6932305 m!7639040))

(declare-fun m!7639042 () Bool)

(assert (=> b!6932308 m!7639042))

(assert (=> b!6931600 d!2166243))

(declare-fun b!6932312 () Bool)

(declare-fun e!4171145 () List!66700)

(assert (=> b!6932312 (= e!4171145 (Cons!66576 (h!73024 (_1!37107 lt!2473241)) (++!14986 (t!380443 (_1!37107 lt!2473241)) (_2!37107 lt!2473241))))))

(declare-fun d!2166245 () Bool)

(declare-fun e!4171146 () Bool)

(assert (=> d!2166245 e!4171146))

(declare-fun res!2827258 () Bool)

(assert (=> d!2166245 (=> (not res!2827258) (not e!4171146))))

(declare-fun lt!2473340 () List!66700)

(assert (=> d!2166245 (= res!2827258 (= (content!13090 lt!2473340) ((_ map or) (content!13090 (_1!37107 lt!2473241)) (content!13090 (_2!37107 lt!2473241)))))))

(assert (=> d!2166245 (= lt!2473340 e!4171145)))

(declare-fun c!1286587 () Bool)

(assert (=> d!2166245 (= c!1286587 ((_ is Nil!66576) (_1!37107 lt!2473241)))))

(assert (=> d!2166245 (= (++!14986 (_1!37107 lt!2473241) (_2!37107 lt!2473241)) lt!2473340)))

(declare-fun b!6932314 () Bool)

(assert (=> b!6932314 (= e!4171146 (or (not (= (_2!37107 lt!2473241) Nil!66576)) (= lt!2473340 (_1!37107 lt!2473241))))))

(declare-fun b!6932311 () Bool)

(assert (=> b!6932311 (= e!4171145 (_2!37107 lt!2473241))))

(declare-fun b!6932313 () Bool)

(declare-fun res!2827257 () Bool)

(assert (=> b!6932313 (=> (not res!2827257) (not e!4171146))))

(assert (=> b!6932313 (= res!2827257 (= (size!40787 lt!2473340) (+ (size!40787 (_1!37107 lt!2473241)) (size!40787 (_2!37107 lt!2473241)))))))

(assert (= (and d!2166245 c!1286587) b!6932311))

(assert (= (and d!2166245 (not c!1286587)) b!6932312))

(assert (= (and d!2166245 res!2827258) b!6932313))

(assert (= (and b!6932313 res!2827257) b!6932314))

(declare-fun m!7639044 () Bool)

(assert (=> b!6932312 m!7639044))

(declare-fun m!7639046 () Bool)

(assert (=> d!2166245 m!7639046))

(assert (=> d!2166245 m!7638602))

(assert (=> d!2166245 m!7638588))

(declare-fun m!7639048 () Bool)

(assert (=> b!6932313 m!7639048))

(assert (=> b!6932313 m!7638608))

(assert (=> b!6932313 m!7638594))

(assert (=> b!6931600 d!2166245))

(declare-fun d!2166247 () Bool)

(assert (=> d!2166247 (= (matchR!9086 r3!135 (_2!37107 lt!2473241)) (matchRSpec!4004 r3!135 (_2!37107 lt!2473241)))))

(declare-fun lt!2473341 () Unit!160618)

(assert (=> d!2166247 (= lt!2473341 (choose!51631 r3!135 (_2!37107 lt!2473241)))))

(assert (=> d!2166247 (validRegex!8653 r3!135)))

(assert (=> d!2166247 (= (mainMatchTheorem!4004 r3!135 (_2!37107 lt!2473241)) lt!2473341)))

(declare-fun bs!1850811 () Bool)

(assert (= bs!1850811 d!2166247))

(assert (=> bs!1850811 m!7638454))

(assert (=> bs!1850811 m!7638494))

(declare-fun m!7639050 () Bool)

(assert (=> bs!1850811 m!7639050))

(assert (=> bs!1850811 m!7638472))

(assert (=> b!6931600 d!2166247))

(declare-fun b!6932315 () Bool)

(declare-fun e!4171150 () Bool)

(assert (=> b!6932315 (= e!4171150 (matchR!9086 (derivativeStep!5443 lt!2473239 (head!13896 (_2!37107 lt!2473249))) (tail!12948 (_2!37107 lt!2473249))))))

(declare-fun b!6932316 () Bool)

(declare-fun e!4171151 () Bool)

(declare-fun lt!2473342 () Bool)

(assert (=> b!6932316 (= e!4171151 (not lt!2473342))))

(declare-fun b!6932317 () Bool)

(declare-fun e!4171147 () Bool)

(assert (=> b!6932317 (= e!4171147 e!4171151)))

(declare-fun c!1286589 () Bool)

(assert (=> b!6932317 (= c!1286589 ((_ is EmptyLang!16947) lt!2473239))))

(declare-fun d!2166249 () Bool)

(assert (=> d!2166249 e!4171147))

(declare-fun c!1286588 () Bool)

(assert (=> d!2166249 (= c!1286588 ((_ is EmptyExpr!16947) lt!2473239))))

(assert (=> d!2166249 (= lt!2473342 e!4171150)))

(declare-fun c!1286590 () Bool)

(assert (=> d!2166249 (= c!1286590 (isEmpty!38839 (_2!37107 lt!2473249)))))

(assert (=> d!2166249 (validRegex!8653 lt!2473239)))

(assert (=> d!2166249 (= (matchR!9086 lt!2473239 (_2!37107 lt!2473249)) lt!2473342)))

(declare-fun b!6932318 () Bool)

(declare-fun e!4171148 () Bool)

(assert (=> b!6932318 (= e!4171148 (= (head!13896 (_2!37107 lt!2473249)) (c!1286433 lt!2473239)))))

(declare-fun b!6932319 () Bool)

(declare-fun res!2827259 () Bool)

(assert (=> b!6932319 (=> (not res!2827259) (not e!4171148))))

(declare-fun call!629946 () Bool)

(assert (=> b!6932319 (= res!2827259 (not call!629946))))

(declare-fun b!6932320 () Bool)

(assert (=> b!6932320 (= e!4171147 (= lt!2473342 call!629946))))

(declare-fun b!6932321 () Bool)

(declare-fun e!4171149 () Bool)

(declare-fun e!4171153 () Bool)

(assert (=> b!6932321 (= e!4171149 e!4171153)))

(declare-fun res!2827261 () Bool)

(assert (=> b!6932321 (=> (not res!2827261) (not e!4171153))))

(assert (=> b!6932321 (= res!2827261 (not lt!2473342))))

(declare-fun b!6932322 () Bool)

(declare-fun res!2827260 () Bool)

(assert (=> b!6932322 (=> res!2827260 e!4171149)))

(assert (=> b!6932322 (= res!2827260 (not ((_ is ElementMatch!16947) lt!2473239)))))

(assert (=> b!6932322 (= e!4171151 e!4171149)))

(declare-fun bm!629941 () Bool)

(assert (=> bm!629941 (= call!629946 (isEmpty!38839 (_2!37107 lt!2473249)))))

(declare-fun b!6932323 () Bool)

(declare-fun res!2827266 () Bool)

(assert (=> b!6932323 (=> res!2827266 e!4171149)))

(assert (=> b!6932323 (= res!2827266 e!4171148)))

(declare-fun res!2827262 () Bool)

(assert (=> b!6932323 (=> (not res!2827262) (not e!4171148))))

(assert (=> b!6932323 (= res!2827262 lt!2473342)))

(declare-fun b!6932324 () Bool)

(declare-fun res!2827263 () Bool)

(assert (=> b!6932324 (=> (not res!2827263) (not e!4171148))))

(assert (=> b!6932324 (= res!2827263 (isEmpty!38839 (tail!12948 (_2!37107 lt!2473249))))))

(declare-fun b!6932325 () Bool)

(declare-fun e!4171152 () Bool)

(assert (=> b!6932325 (= e!4171153 e!4171152)))

(declare-fun res!2827265 () Bool)

(assert (=> b!6932325 (=> res!2827265 e!4171152)))

(assert (=> b!6932325 (= res!2827265 call!629946)))

(declare-fun b!6932326 () Bool)

(assert (=> b!6932326 (= e!4171150 (nullable!6768 lt!2473239))))

(declare-fun b!6932327 () Bool)

(assert (=> b!6932327 (= e!4171152 (not (= (head!13896 (_2!37107 lt!2473249)) (c!1286433 lt!2473239))))))

(declare-fun b!6932328 () Bool)

(declare-fun res!2827264 () Bool)

(assert (=> b!6932328 (=> res!2827264 e!4171152)))

(assert (=> b!6932328 (= res!2827264 (not (isEmpty!38839 (tail!12948 (_2!37107 lt!2473249)))))))

(assert (= (and d!2166249 c!1286590) b!6932326))

(assert (= (and d!2166249 (not c!1286590)) b!6932315))

(assert (= (and d!2166249 c!1286588) b!6932320))

(assert (= (and d!2166249 (not c!1286588)) b!6932317))

(assert (= (and b!6932317 c!1286589) b!6932316))

(assert (= (and b!6932317 (not c!1286589)) b!6932322))

(assert (= (and b!6932322 (not res!2827260)) b!6932323))

(assert (= (and b!6932323 res!2827262) b!6932319))

(assert (= (and b!6932319 res!2827259) b!6932324))

(assert (= (and b!6932324 res!2827263) b!6932318))

(assert (= (and b!6932323 (not res!2827266)) b!6932321))

(assert (= (and b!6932321 res!2827261) b!6932325))

(assert (= (and b!6932325 (not res!2827265)) b!6932328))

(assert (= (and b!6932328 (not res!2827264)) b!6932327))

(assert (= (or b!6932320 b!6932325 b!6932319) bm!629941))

(assert (=> bm!629941 m!7638968))

(declare-fun m!7639052 () Bool)

(assert (=> b!6932328 m!7639052))

(assert (=> b!6932328 m!7639052))

(declare-fun m!7639054 () Bool)

(assert (=> b!6932328 m!7639054))

(declare-fun m!7639056 () Bool)

(assert (=> b!6932327 m!7639056))

(assert (=> d!2166249 m!7638968))

(assert (=> d!2166249 m!7639008))

(assert (=> b!6932324 m!7639052))

(assert (=> b!6932324 m!7639052))

(assert (=> b!6932324 m!7639054))

(assert (=> b!6932318 m!7639056))

(assert (=> b!6932315 m!7639056))

(assert (=> b!6932315 m!7639056))

(declare-fun m!7639058 () Bool)

(assert (=> b!6932315 m!7639058))

(assert (=> b!6932315 m!7639052))

(assert (=> b!6932315 m!7639058))

(assert (=> b!6932315 m!7639052))

(declare-fun m!7639060 () Bool)

(assert (=> b!6932315 m!7639060))

(declare-fun m!7639062 () Bool)

(assert (=> b!6932326 m!7639062))

(assert (=> b!6931594 d!2166249))

(declare-fun b!6932329 () Bool)

(declare-fun e!4171157 () Bool)

(assert (=> b!6932329 (= e!4171157 (matchR!9086 (derivativeStep!5443 r3!135 (head!13896 (_2!37107 lt!2473241))) (tail!12948 (_2!37107 lt!2473241))))))

(declare-fun b!6932330 () Bool)

(declare-fun e!4171158 () Bool)

(declare-fun lt!2473343 () Bool)

(assert (=> b!6932330 (= e!4171158 (not lt!2473343))))

(declare-fun b!6932331 () Bool)

(declare-fun e!4171154 () Bool)

(assert (=> b!6932331 (= e!4171154 e!4171158)))

(declare-fun c!1286592 () Bool)

(assert (=> b!6932331 (= c!1286592 ((_ is EmptyLang!16947) r3!135))))

(declare-fun d!2166251 () Bool)

(assert (=> d!2166251 e!4171154))

(declare-fun c!1286591 () Bool)

(assert (=> d!2166251 (= c!1286591 ((_ is EmptyExpr!16947) r3!135))))

(assert (=> d!2166251 (= lt!2473343 e!4171157)))

(declare-fun c!1286593 () Bool)

(assert (=> d!2166251 (= c!1286593 (isEmpty!38839 (_2!37107 lt!2473241)))))

(assert (=> d!2166251 (validRegex!8653 r3!135)))

(assert (=> d!2166251 (= (matchR!9086 r3!135 (_2!37107 lt!2473241)) lt!2473343)))

(declare-fun b!6932332 () Bool)

(declare-fun e!4171155 () Bool)

(assert (=> b!6932332 (= e!4171155 (= (head!13896 (_2!37107 lt!2473241)) (c!1286433 r3!135)))))

(declare-fun b!6932333 () Bool)

(declare-fun res!2827267 () Bool)

(assert (=> b!6932333 (=> (not res!2827267) (not e!4171155))))

(declare-fun call!629947 () Bool)

(assert (=> b!6932333 (= res!2827267 (not call!629947))))

(declare-fun b!6932334 () Bool)

(assert (=> b!6932334 (= e!4171154 (= lt!2473343 call!629947))))

(declare-fun b!6932335 () Bool)

(declare-fun e!4171156 () Bool)

(declare-fun e!4171160 () Bool)

(assert (=> b!6932335 (= e!4171156 e!4171160)))

(declare-fun res!2827269 () Bool)

(assert (=> b!6932335 (=> (not res!2827269) (not e!4171160))))

(assert (=> b!6932335 (= res!2827269 (not lt!2473343))))

(declare-fun b!6932336 () Bool)

(declare-fun res!2827268 () Bool)

(assert (=> b!6932336 (=> res!2827268 e!4171156)))

(assert (=> b!6932336 (= res!2827268 (not ((_ is ElementMatch!16947) r3!135)))))

(assert (=> b!6932336 (= e!4171158 e!4171156)))

(declare-fun bm!629942 () Bool)

(assert (=> bm!629942 (= call!629947 (isEmpty!38839 (_2!37107 lt!2473241)))))

(declare-fun b!6932337 () Bool)

(declare-fun res!2827274 () Bool)

(assert (=> b!6932337 (=> res!2827274 e!4171156)))

(assert (=> b!6932337 (= res!2827274 e!4171155)))

(declare-fun res!2827270 () Bool)

(assert (=> b!6932337 (=> (not res!2827270) (not e!4171155))))

(assert (=> b!6932337 (= res!2827270 lt!2473343)))

(declare-fun b!6932338 () Bool)

(declare-fun res!2827271 () Bool)

(assert (=> b!6932338 (=> (not res!2827271) (not e!4171155))))

(assert (=> b!6932338 (= res!2827271 (isEmpty!38839 (tail!12948 (_2!37107 lt!2473241))))))

(declare-fun b!6932339 () Bool)

(declare-fun e!4171159 () Bool)

(assert (=> b!6932339 (= e!4171160 e!4171159)))

(declare-fun res!2827273 () Bool)

(assert (=> b!6932339 (=> res!2827273 e!4171159)))

(assert (=> b!6932339 (= res!2827273 call!629947)))

(declare-fun b!6932340 () Bool)

(assert (=> b!6932340 (= e!4171157 (nullable!6768 r3!135))))

(declare-fun b!6932341 () Bool)

(assert (=> b!6932341 (= e!4171159 (not (= (head!13896 (_2!37107 lt!2473241)) (c!1286433 r3!135))))))

(declare-fun b!6932342 () Bool)

(declare-fun res!2827272 () Bool)

(assert (=> b!6932342 (=> res!2827272 e!4171159)))

(assert (=> b!6932342 (= res!2827272 (not (isEmpty!38839 (tail!12948 (_2!37107 lt!2473241)))))))

(assert (= (and d!2166251 c!1286593) b!6932340))

(assert (= (and d!2166251 (not c!1286593)) b!6932329))

(assert (= (and d!2166251 c!1286591) b!6932334))

(assert (= (and d!2166251 (not c!1286591)) b!6932331))

(assert (= (and b!6932331 c!1286592) b!6932330))

(assert (= (and b!6932331 (not c!1286592)) b!6932336))

(assert (= (and b!6932336 (not res!2827268)) b!6932337))

(assert (= (and b!6932337 res!2827270) b!6932333))

(assert (= (and b!6932333 res!2827267) b!6932338))

(assert (= (and b!6932338 res!2827271) b!6932332))

(assert (= (and b!6932337 (not res!2827274)) b!6932335))

(assert (= (and b!6932335 res!2827269) b!6932339))

(assert (= (and b!6932339 (not res!2827273)) b!6932342))

(assert (= (and b!6932342 (not res!2827272)) b!6932341))

(assert (= (or b!6932334 b!6932339 b!6932333) bm!629942))

(assert (=> bm!629942 m!7639038))

(declare-fun m!7639064 () Bool)

(assert (=> b!6932342 m!7639064))

(assert (=> b!6932342 m!7639064))

(declare-fun m!7639066 () Bool)

(assert (=> b!6932342 m!7639066))

(declare-fun m!7639068 () Bool)

(assert (=> b!6932341 m!7639068))

(assert (=> d!2166251 m!7639038))

(assert (=> d!2166251 m!7638472))

(assert (=> b!6932338 m!7639064))

(assert (=> b!6932338 m!7639064))

(assert (=> b!6932338 m!7639066))

(assert (=> b!6932332 m!7639068))

(assert (=> b!6932329 m!7639068))

(assert (=> b!6932329 m!7639068))

(declare-fun m!7639070 () Bool)

(assert (=> b!6932329 m!7639070))

(assert (=> b!6932329 m!7639064))

(assert (=> b!6932329 m!7639070))

(assert (=> b!6932329 m!7639064))

(declare-fun m!7639072 () Bool)

(assert (=> b!6932329 m!7639072))

(declare-fun m!7639074 () Bool)

(assert (=> b!6932340 m!7639074))

(assert (=> b!6931588 d!2166251))

(declare-fun b!6932343 () Bool)

(declare-fun e!4171162 () Bool)

(declare-fun call!629948 () Bool)

(assert (=> b!6932343 (= e!4171162 call!629948)))

(declare-fun b!6932344 () Bool)

(declare-fun e!4171164 () Bool)

(declare-fun e!4171163 () Bool)

(assert (=> b!6932344 (= e!4171164 e!4171163)))

(declare-fun c!1286595 () Bool)

(assert (=> b!6932344 (= c!1286595 ((_ is Star!16947) r2!6280))))

(declare-fun d!2166253 () Bool)

(declare-fun res!2827277 () Bool)

(assert (=> d!2166253 (=> res!2827277 e!4171164)))

(assert (=> d!2166253 (= res!2827277 ((_ is ElementMatch!16947) r2!6280))))

(assert (=> d!2166253 (= (validRegex!8653 r2!6280) e!4171164)))

(declare-fun b!6932345 () Bool)

(declare-fun e!4171166 () Bool)

(assert (=> b!6932345 (= e!4171163 e!4171166)))

(declare-fun res!2827278 () Bool)

(assert (=> b!6932345 (= res!2827278 (not (nullable!6768 (reg!17276 r2!6280))))))

(assert (=> b!6932345 (=> (not res!2827278) (not e!4171166))))

(declare-fun b!6932346 () Bool)

(declare-fun e!4171165 () Bool)

(declare-fun e!4171167 () Bool)

(assert (=> b!6932346 (= e!4171165 e!4171167)))

(declare-fun res!2827275 () Bool)

(assert (=> b!6932346 (=> (not res!2827275) (not e!4171167))))

(assert (=> b!6932346 (= res!2827275 call!629948)))

(declare-fun call!629949 () Bool)

(declare-fun bm!629943 () Bool)

(declare-fun c!1286594 () Bool)

(assert (=> bm!629943 (= call!629949 (validRegex!8653 (ite c!1286595 (reg!17276 r2!6280) (ite c!1286594 (regTwo!34407 r2!6280) (regOne!34406 r2!6280)))))))

(declare-fun b!6932347 () Bool)

(assert (=> b!6932347 (= e!4171166 call!629949)))

(declare-fun bm!629944 () Bool)

(assert (=> bm!629944 (= call!629948 call!629949)))

(declare-fun bm!629945 () Bool)

(declare-fun call!629950 () Bool)

(assert (=> bm!629945 (= call!629950 (validRegex!8653 (ite c!1286594 (regOne!34407 r2!6280) (regTwo!34406 r2!6280))))))

(declare-fun b!6932348 () Bool)

(declare-fun e!4171161 () Bool)

(assert (=> b!6932348 (= e!4171163 e!4171161)))

(assert (=> b!6932348 (= c!1286594 ((_ is Union!16947) r2!6280))))

(declare-fun b!6932349 () Bool)

(declare-fun res!2827279 () Bool)

(assert (=> b!6932349 (=> res!2827279 e!4171165)))

(assert (=> b!6932349 (= res!2827279 (not ((_ is Concat!25792) r2!6280)))))

(assert (=> b!6932349 (= e!4171161 e!4171165)))

(declare-fun b!6932350 () Bool)

(assert (=> b!6932350 (= e!4171167 call!629950)))

(declare-fun b!6932351 () Bool)

(declare-fun res!2827276 () Bool)

(assert (=> b!6932351 (=> (not res!2827276) (not e!4171162))))

(assert (=> b!6932351 (= res!2827276 call!629950)))

(assert (=> b!6932351 (= e!4171161 e!4171162)))

(assert (= (and d!2166253 (not res!2827277)) b!6932344))

(assert (= (and b!6932344 c!1286595) b!6932345))

(assert (= (and b!6932344 (not c!1286595)) b!6932348))

(assert (= (and b!6932345 res!2827278) b!6932347))

(assert (= (and b!6932348 c!1286594) b!6932351))

(assert (= (and b!6932348 (not c!1286594)) b!6932349))

(assert (= (and b!6932351 res!2827276) b!6932343))

(assert (= (and b!6932349 (not res!2827279)) b!6932346))

(assert (= (and b!6932346 res!2827275) b!6932350))

(assert (= (or b!6932351 b!6932350) bm!629945))

(assert (= (or b!6932343 b!6932346) bm!629944))

(assert (= (or b!6932347 bm!629944) bm!629943))

(declare-fun m!7639076 () Bool)

(assert (=> b!6932345 m!7639076))

(declare-fun m!7639078 () Bool)

(assert (=> bm!629943 m!7639078))

(declare-fun m!7639080 () Bool)

(assert (=> bm!629945 m!7639080))

(assert (=> b!6931604 d!2166253))

(declare-fun b!6932352 () Bool)

(declare-fun e!4171169 () Bool)

(declare-fun call!629951 () Bool)

(assert (=> b!6932352 (= e!4171169 call!629951)))

(declare-fun b!6932353 () Bool)

(declare-fun e!4171171 () Bool)

(declare-fun e!4171170 () Bool)

(assert (=> b!6932353 (= e!4171171 e!4171170)))

(declare-fun c!1286597 () Bool)

(assert (=> b!6932353 (= c!1286597 ((_ is Star!16947) r1!6342))))

(declare-fun d!2166255 () Bool)

(declare-fun res!2827282 () Bool)

(assert (=> d!2166255 (=> res!2827282 e!4171171)))

(assert (=> d!2166255 (= res!2827282 ((_ is ElementMatch!16947) r1!6342))))

(assert (=> d!2166255 (= (validRegex!8653 r1!6342) e!4171171)))

(declare-fun b!6932354 () Bool)

(declare-fun e!4171173 () Bool)

(assert (=> b!6932354 (= e!4171170 e!4171173)))

(declare-fun res!2827283 () Bool)

(assert (=> b!6932354 (= res!2827283 (not (nullable!6768 (reg!17276 r1!6342))))))

(assert (=> b!6932354 (=> (not res!2827283) (not e!4171173))))

(declare-fun b!6932355 () Bool)

(declare-fun e!4171172 () Bool)

(declare-fun e!4171174 () Bool)

(assert (=> b!6932355 (= e!4171172 e!4171174)))

(declare-fun res!2827280 () Bool)

(assert (=> b!6932355 (=> (not res!2827280) (not e!4171174))))

(assert (=> b!6932355 (= res!2827280 call!629951)))

(declare-fun call!629952 () Bool)

(declare-fun bm!629946 () Bool)

(declare-fun c!1286596 () Bool)

(assert (=> bm!629946 (= call!629952 (validRegex!8653 (ite c!1286597 (reg!17276 r1!6342) (ite c!1286596 (regTwo!34407 r1!6342) (regOne!34406 r1!6342)))))))

(declare-fun b!6932356 () Bool)

(assert (=> b!6932356 (= e!4171173 call!629952)))

(declare-fun bm!629947 () Bool)

(assert (=> bm!629947 (= call!629951 call!629952)))

(declare-fun bm!629948 () Bool)

(declare-fun call!629953 () Bool)

(assert (=> bm!629948 (= call!629953 (validRegex!8653 (ite c!1286596 (regOne!34407 r1!6342) (regTwo!34406 r1!6342))))))

(declare-fun b!6932357 () Bool)

(declare-fun e!4171168 () Bool)

(assert (=> b!6932357 (= e!4171170 e!4171168)))

(assert (=> b!6932357 (= c!1286596 ((_ is Union!16947) r1!6342))))

(declare-fun b!6932358 () Bool)

(declare-fun res!2827284 () Bool)

(assert (=> b!6932358 (=> res!2827284 e!4171172)))

(assert (=> b!6932358 (= res!2827284 (not ((_ is Concat!25792) r1!6342)))))

(assert (=> b!6932358 (= e!4171168 e!4171172)))

(declare-fun b!6932359 () Bool)

(assert (=> b!6932359 (= e!4171174 call!629953)))

(declare-fun b!6932360 () Bool)

(declare-fun res!2827281 () Bool)

(assert (=> b!6932360 (=> (not res!2827281) (not e!4171169))))

(assert (=> b!6932360 (= res!2827281 call!629953)))

(assert (=> b!6932360 (= e!4171168 e!4171169)))

(assert (= (and d!2166255 (not res!2827282)) b!6932353))

(assert (= (and b!6932353 c!1286597) b!6932354))

(assert (= (and b!6932353 (not c!1286597)) b!6932357))

(assert (= (and b!6932354 res!2827283) b!6932356))

(assert (= (and b!6932357 c!1286596) b!6932360))

(assert (= (and b!6932357 (not c!1286596)) b!6932358))

(assert (= (and b!6932360 res!2827281) b!6932352))

(assert (= (and b!6932358 (not res!2827284)) b!6932355))

(assert (= (and b!6932355 res!2827280) b!6932359))

(assert (= (or b!6932360 b!6932359) bm!629948))

(assert (= (or b!6932352 b!6932355) bm!629947))

(assert (= (or b!6932356 bm!629947) bm!629946))

(declare-fun m!7639082 () Bool)

(assert (=> b!6932354 m!7639082))

(declare-fun m!7639084 () Bool)

(assert (=> bm!629946 m!7639084))

(declare-fun m!7639086 () Bool)

(assert (=> bm!629948 m!7639086))

(assert (=> start!666122 d!2166255))

(declare-fun b!6932372 () Bool)

(declare-fun e!4171177 () Bool)

(declare-fun tp!1911017 () Bool)

(declare-fun tp!1911018 () Bool)

(assert (=> b!6932372 (= e!4171177 (and tp!1911017 tp!1911018))))

(declare-fun b!6932373 () Bool)

(declare-fun tp!1911016 () Bool)

(assert (=> b!6932373 (= e!4171177 tp!1911016)))

(assert (=> b!6931607 (= tp!1910912 e!4171177)))

(declare-fun b!6932374 () Bool)

(declare-fun tp!1911014 () Bool)

(declare-fun tp!1911015 () Bool)

(assert (=> b!6932374 (= e!4171177 (and tp!1911014 tp!1911015))))

(declare-fun b!6932371 () Bool)

(assert (=> b!6932371 (= e!4171177 tp_is_empty!43119)))

(assert (= (and b!6931607 ((_ is ElementMatch!16947) (regOne!34407 r3!135))) b!6932371))

(assert (= (and b!6931607 ((_ is Concat!25792) (regOne!34407 r3!135))) b!6932372))

(assert (= (and b!6931607 ((_ is Star!16947) (regOne!34407 r3!135))) b!6932373))

(assert (= (and b!6931607 ((_ is Union!16947) (regOne!34407 r3!135))) b!6932374))

(declare-fun b!6932376 () Bool)

(declare-fun e!4171178 () Bool)

(declare-fun tp!1911022 () Bool)

(declare-fun tp!1911023 () Bool)

(assert (=> b!6932376 (= e!4171178 (and tp!1911022 tp!1911023))))

(declare-fun b!6932377 () Bool)

(declare-fun tp!1911021 () Bool)

(assert (=> b!6932377 (= e!4171178 tp!1911021)))

(assert (=> b!6931607 (= tp!1910905 e!4171178)))

(declare-fun b!6932378 () Bool)

(declare-fun tp!1911019 () Bool)

(declare-fun tp!1911020 () Bool)

(assert (=> b!6932378 (= e!4171178 (and tp!1911019 tp!1911020))))

(declare-fun b!6932375 () Bool)

(assert (=> b!6932375 (= e!4171178 tp_is_empty!43119)))

(assert (= (and b!6931607 ((_ is ElementMatch!16947) (regTwo!34407 r3!135))) b!6932375))

(assert (= (and b!6931607 ((_ is Concat!25792) (regTwo!34407 r3!135))) b!6932376))

(assert (= (and b!6931607 ((_ is Star!16947) (regTwo!34407 r3!135))) b!6932377))

(assert (= (and b!6931607 ((_ is Union!16947) (regTwo!34407 r3!135))) b!6932378))

(declare-fun b!6932380 () Bool)

(declare-fun e!4171179 () Bool)

(declare-fun tp!1911027 () Bool)

(declare-fun tp!1911028 () Bool)

(assert (=> b!6932380 (= e!4171179 (and tp!1911027 tp!1911028))))

(declare-fun b!6932381 () Bool)

(declare-fun tp!1911026 () Bool)

(assert (=> b!6932381 (= e!4171179 tp!1911026)))

(assert (=> b!6931585 (= tp!1910911 e!4171179)))

(declare-fun b!6932382 () Bool)

(declare-fun tp!1911024 () Bool)

(declare-fun tp!1911025 () Bool)

(assert (=> b!6932382 (= e!4171179 (and tp!1911024 tp!1911025))))

(declare-fun b!6932379 () Bool)

(assert (=> b!6932379 (= e!4171179 tp_is_empty!43119)))

(assert (= (and b!6931585 ((_ is ElementMatch!16947) (reg!17276 r2!6280))) b!6932379))

(assert (= (and b!6931585 ((_ is Concat!25792) (reg!17276 r2!6280))) b!6932380))

(assert (= (and b!6931585 ((_ is Star!16947) (reg!17276 r2!6280))) b!6932381))

(assert (= (and b!6931585 ((_ is Union!16947) (reg!17276 r2!6280))) b!6932382))

(declare-fun b!6932384 () Bool)

(declare-fun e!4171180 () Bool)

(declare-fun tp!1911032 () Bool)

(declare-fun tp!1911033 () Bool)

(assert (=> b!6932384 (= e!4171180 (and tp!1911032 tp!1911033))))

(declare-fun b!6932385 () Bool)

(declare-fun tp!1911031 () Bool)

(assert (=> b!6932385 (= e!4171180 tp!1911031)))

(assert (=> b!6931590 (= tp!1910913 e!4171180)))

(declare-fun b!6932386 () Bool)

(declare-fun tp!1911029 () Bool)

(declare-fun tp!1911030 () Bool)

(assert (=> b!6932386 (= e!4171180 (and tp!1911029 tp!1911030))))

(declare-fun b!6932383 () Bool)

(assert (=> b!6932383 (= e!4171180 tp_is_empty!43119)))

(assert (= (and b!6931590 ((_ is ElementMatch!16947) (regOne!34407 r2!6280))) b!6932383))

(assert (= (and b!6931590 ((_ is Concat!25792) (regOne!34407 r2!6280))) b!6932384))

(assert (= (and b!6931590 ((_ is Star!16947) (regOne!34407 r2!6280))) b!6932385))

(assert (= (and b!6931590 ((_ is Union!16947) (regOne!34407 r2!6280))) b!6932386))

(declare-fun b!6932388 () Bool)

(declare-fun e!4171181 () Bool)

(declare-fun tp!1911037 () Bool)

(declare-fun tp!1911038 () Bool)

(assert (=> b!6932388 (= e!4171181 (and tp!1911037 tp!1911038))))

(declare-fun b!6932389 () Bool)

(declare-fun tp!1911036 () Bool)

(assert (=> b!6932389 (= e!4171181 tp!1911036)))

(assert (=> b!6931590 (= tp!1910901 e!4171181)))

(declare-fun b!6932390 () Bool)

(declare-fun tp!1911034 () Bool)

(declare-fun tp!1911035 () Bool)

(assert (=> b!6932390 (= e!4171181 (and tp!1911034 tp!1911035))))

(declare-fun b!6932387 () Bool)

(assert (=> b!6932387 (= e!4171181 tp_is_empty!43119)))

(assert (= (and b!6931590 ((_ is ElementMatch!16947) (regTwo!34407 r2!6280))) b!6932387))

(assert (= (and b!6931590 ((_ is Concat!25792) (regTwo!34407 r2!6280))) b!6932388))

(assert (= (and b!6931590 ((_ is Star!16947) (regTwo!34407 r2!6280))) b!6932389))

(assert (= (and b!6931590 ((_ is Union!16947) (regTwo!34407 r2!6280))) b!6932390))

(declare-fun b!6932392 () Bool)

(declare-fun e!4171182 () Bool)

(declare-fun tp!1911042 () Bool)

(declare-fun tp!1911043 () Bool)

(assert (=> b!6932392 (= e!4171182 (and tp!1911042 tp!1911043))))

(declare-fun b!6932393 () Bool)

(declare-fun tp!1911041 () Bool)

(assert (=> b!6932393 (= e!4171182 tp!1911041)))

(assert (=> b!6931599 (= tp!1910907 e!4171182)))

(declare-fun b!6932394 () Bool)

(declare-fun tp!1911039 () Bool)

(declare-fun tp!1911040 () Bool)

(assert (=> b!6932394 (= e!4171182 (and tp!1911039 tp!1911040))))

(declare-fun b!6932391 () Bool)

(assert (=> b!6932391 (= e!4171182 tp_is_empty!43119)))

(assert (= (and b!6931599 ((_ is ElementMatch!16947) (regOne!34406 r1!6342))) b!6932391))

(assert (= (and b!6931599 ((_ is Concat!25792) (regOne!34406 r1!6342))) b!6932392))

(assert (= (and b!6931599 ((_ is Star!16947) (regOne!34406 r1!6342))) b!6932393))

(assert (= (and b!6931599 ((_ is Union!16947) (regOne!34406 r1!6342))) b!6932394))

(declare-fun b!6932396 () Bool)

(declare-fun e!4171183 () Bool)

(declare-fun tp!1911047 () Bool)

(declare-fun tp!1911048 () Bool)

(assert (=> b!6932396 (= e!4171183 (and tp!1911047 tp!1911048))))

(declare-fun b!6932397 () Bool)

(declare-fun tp!1911046 () Bool)

(assert (=> b!6932397 (= e!4171183 tp!1911046)))

(assert (=> b!6931599 (= tp!1910900 e!4171183)))

(declare-fun b!6932398 () Bool)

(declare-fun tp!1911044 () Bool)

(declare-fun tp!1911045 () Bool)

(assert (=> b!6932398 (= e!4171183 (and tp!1911044 tp!1911045))))

(declare-fun b!6932395 () Bool)

(assert (=> b!6932395 (= e!4171183 tp_is_empty!43119)))

(assert (= (and b!6931599 ((_ is ElementMatch!16947) (regTwo!34406 r1!6342))) b!6932395))

(assert (= (and b!6931599 ((_ is Concat!25792) (regTwo!34406 r1!6342))) b!6932396))

(assert (= (and b!6931599 ((_ is Star!16947) (regTwo!34406 r1!6342))) b!6932397))

(assert (= (and b!6931599 ((_ is Union!16947) (regTwo!34406 r1!6342))) b!6932398))

(declare-fun b!6932403 () Bool)

(declare-fun e!4171186 () Bool)

(declare-fun tp!1911051 () Bool)

(assert (=> b!6932403 (= e!4171186 (and tp_is_empty!43119 tp!1911051))))

(assert (=> b!6931593 (= tp!1910908 e!4171186)))

(assert (= (and b!6931593 ((_ is Cons!66576) (t!380443 s!14361))) b!6932403))

(declare-fun b!6932405 () Bool)

(declare-fun e!4171187 () Bool)

(declare-fun tp!1911055 () Bool)

(declare-fun tp!1911056 () Bool)

(assert (=> b!6932405 (= e!4171187 (and tp!1911055 tp!1911056))))

(declare-fun b!6932406 () Bool)

(declare-fun tp!1911054 () Bool)

(assert (=> b!6932406 (= e!4171187 tp!1911054)))

(assert (=> b!6931587 (= tp!1910903 e!4171187)))

(declare-fun b!6932407 () Bool)

(declare-fun tp!1911052 () Bool)

(declare-fun tp!1911053 () Bool)

(assert (=> b!6932407 (= e!4171187 (and tp!1911052 tp!1911053))))

(declare-fun b!6932404 () Bool)

(assert (=> b!6932404 (= e!4171187 tp_is_empty!43119)))

(assert (= (and b!6931587 ((_ is ElementMatch!16947) (reg!17276 r1!6342))) b!6932404))

(assert (= (and b!6931587 ((_ is Concat!25792) (reg!17276 r1!6342))) b!6932405))

(assert (= (and b!6931587 ((_ is Star!16947) (reg!17276 r1!6342))) b!6932406))

(assert (= (and b!6931587 ((_ is Union!16947) (reg!17276 r1!6342))) b!6932407))

(declare-fun b!6932409 () Bool)

(declare-fun e!4171188 () Bool)

(declare-fun tp!1911060 () Bool)

(declare-fun tp!1911061 () Bool)

(assert (=> b!6932409 (= e!4171188 (and tp!1911060 tp!1911061))))

(declare-fun b!6932410 () Bool)

(declare-fun tp!1911059 () Bool)

(assert (=> b!6932410 (= e!4171188 tp!1911059)))

(assert (=> b!6931603 (= tp!1910915 e!4171188)))

(declare-fun b!6932411 () Bool)

(declare-fun tp!1911057 () Bool)

(declare-fun tp!1911058 () Bool)

(assert (=> b!6932411 (= e!4171188 (and tp!1911057 tp!1911058))))

(declare-fun b!6932408 () Bool)

(assert (=> b!6932408 (= e!4171188 tp_is_empty!43119)))

(assert (= (and b!6931603 ((_ is ElementMatch!16947) (regOne!34406 r3!135))) b!6932408))

(assert (= (and b!6931603 ((_ is Concat!25792) (regOne!34406 r3!135))) b!6932409))

(assert (= (and b!6931603 ((_ is Star!16947) (regOne!34406 r3!135))) b!6932410))

(assert (= (and b!6931603 ((_ is Union!16947) (regOne!34406 r3!135))) b!6932411))

(declare-fun b!6932413 () Bool)

(declare-fun e!4171189 () Bool)

(declare-fun tp!1911065 () Bool)

(declare-fun tp!1911066 () Bool)

(assert (=> b!6932413 (= e!4171189 (and tp!1911065 tp!1911066))))

(declare-fun b!6932414 () Bool)

(declare-fun tp!1911064 () Bool)

(assert (=> b!6932414 (= e!4171189 tp!1911064)))

(assert (=> b!6931603 (= tp!1910906 e!4171189)))

(declare-fun b!6932415 () Bool)

(declare-fun tp!1911062 () Bool)

(declare-fun tp!1911063 () Bool)

(assert (=> b!6932415 (= e!4171189 (and tp!1911062 tp!1911063))))

(declare-fun b!6932412 () Bool)

(assert (=> b!6932412 (= e!4171189 tp_is_empty!43119)))

(assert (= (and b!6931603 ((_ is ElementMatch!16947) (regTwo!34406 r3!135))) b!6932412))

(assert (= (and b!6931603 ((_ is Concat!25792) (regTwo!34406 r3!135))) b!6932413))

(assert (= (and b!6931603 ((_ is Star!16947) (regTwo!34406 r3!135))) b!6932414))

(assert (= (and b!6931603 ((_ is Union!16947) (regTwo!34406 r3!135))) b!6932415))

(declare-fun b!6932417 () Bool)

(declare-fun e!4171190 () Bool)

(declare-fun tp!1911070 () Bool)

(declare-fun tp!1911071 () Bool)

(assert (=> b!6932417 (= e!4171190 (and tp!1911070 tp!1911071))))

(declare-fun b!6932418 () Bool)

(declare-fun tp!1911069 () Bool)

(assert (=> b!6932418 (= e!4171190 tp!1911069)))

(assert (=> b!6931598 (= tp!1910902 e!4171190)))

(declare-fun b!6932419 () Bool)

(declare-fun tp!1911067 () Bool)

(declare-fun tp!1911068 () Bool)

(assert (=> b!6932419 (= e!4171190 (and tp!1911067 tp!1911068))))

(declare-fun b!6932416 () Bool)

(assert (=> b!6932416 (= e!4171190 tp_is_empty!43119)))

(assert (= (and b!6931598 ((_ is ElementMatch!16947) (reg!17276 r3!135))) b!6932416))

(assert (= (and b!6931598 ((_ is Concat!25792) (reg!17276 r3!135))) b!6932417))

(assert (= (and b!6931598 ((_ is Star!16947) (reg!17276 r3!135))) b!6932418))

(assert (= (and b!6931598 ((_ is Union!16947) (reg!17276 r3!135))) b!6932419))

(declare-fun b!6932421 () Bool)

(declare-fun e!4171191 () Bool)

(declare-fun tp!1911075 () Bool)

(declare-fun tp!1911076 () Bool)

(assert (=> b!6932421 (= e!4171191 (and tp!1911075 tp!1911076))))

(declare-fun b!6932422 () Bool)

(declare-fun tp!1911074 () Bool)

(assert (=> b!6932422 (= e!4171191 tp!1911074)))

(assert (=> b!6931597 (= tp!1910909 e!4171191)))

(declare-fun b!6932423 () Bool)

(declare-fun tp!1911072 () Bool)

(declare-fun tp!1911073 () Bool)

(assert (=> b!6932423 (= e!4171191 (and tp!1911072 tp!1911073))))

(declare-fun b!6932420 () Bool)

(assert (=> b!6932420 (= e!4171191 tp_is_empty!43119)))

(assert (= (and b!6931597 ((_ is ElementMatch!16947) (regOne!34407 r1!6342))) b!6932420))

(assert (= (and b!6931597 ((_ is Concat!25792) (regOne!34407 r1!6342))) b!6932421))

(assert (= (and b!6931597 ((_ is Star!16947) (regOne!34407 r1!6342))) b!6932422))

(assert (= (and b!6931597 ((_ is Union!16947) (regOne!34407 r1!6342))) b!6932423))

(declare-fun b!6932425 () Bool)

(declare-fun e!4171192 () Bool)

(declare-fun tp!1911080 () Bool)

(declare-fun tp!1911081 () Bool)

(assert (=> b!6932425 (= e!4171192 (and tp!1911080 tp!1911081))))

(declare-fun b!6932426 () Bool)

(declare-fun tp!1911079 () Bool)

(assert (=> b!6932426 (= e!4171192 tp!1911079)))

(assert (=> b!6931597 (= tp!1910914 e!4171192)))

(declare-fun b!6932427 () Bool)

(declare-fun tp!1911077 () Bool)

(declare-fun tp!1911078 () Bool)

(assert (=> b!6932427 (= e!4171192 (and tp!1911077 tp!1911078))))

(declare-fun b!6932424 () Bool)

(assert (=> b!6932424 (= e!4171192 tp_is_empty!43119)))

(assert (= (and b!6931597 ((_ is ElementMatch!16947) (regTwo!34407 r1!6342))) b!6932424))

(assert (= (and b!6931597 ((_ is Concat!25792) (regTwo!34407 r1!6342))) b!6932425))

(assert (= (and b!6931597 ((_ is Star!16947) (regTwo!34407 r1!6342))) b!6932426))

(assert (= (and b!6931597 ((_ is Union!16947) (regTwo!34407 r1!6342))) b!6932427))

(declare-fun b!6932429 () Bool)

(declare-fun e!4171193 () Bool)

(declare-fun tp!1911085 () Bool)

(declare-fun tp!1911086 () Bool)

(assert (=> b!6932429 (= e!4171193 (and tp!1911085 tp!1911086))))

(declare-fun b!6932430 () Bool)

(declare-fun tp!1911084 () Bool)

(assert (=> b!6932430 (= e!4171193 tp!1911084)))

(assert (=> b!6931592 (= tp!1910904 e!4171193)))

(declare-fun b!6932431 () Bool)

(declare-fun tp!1911082 () Bool)

(declare-fun tp!1911083 () Bool)

(assert (=> b!6932431 (= e!4171193 (and tp!1911082 tp!1911083))))

(declare-fun b!6932428 () Bool)

(assert (=> b!6932428 (= e!4171193 tp_is_empty!43119)))

(assert (= (and b!6931592 ((_ is ElementMatch!16947) (regOne!34406 r2!6280))) b!6932428))

(assert (= (and b!6931592 ((_ is Concat!25792) (regOne!34406 r2!6280))) b!6932429))

(assert (= (and b!6931592 ((_ is Star!16947) (regOne!34406 r2!6280))) b!6932430))

(assert (= (and b!6931592 ((_ is Union!16947) (regOne!34406 r2!6280))) b!6932431))

(declare-fun b!6932433 () Bool)

(declare-fun e!4171194 () Bool)

(declare-fun tp!1911090 () Bool)

(declare-fun tp!1911091 () Bool)

(assert (=> b!6932433 (= e!4171194 (and tp!1911090 tp!1911091))))

(declare-fun b!6932434 () Bool)

(declare-fun tp!1911089 () Bool)

(assert (=> b!6932434 (= e!4171194 tp!1911089)))

(assert (=> b!6931592 (= tp!1910910 e!4171194)))

(declare-fun b!6932435 () Bool)

(declare-fun tp!1911087 () Bool)

(declare-fun tp!1911088 () Bool)

(assert (=> b!6932435 (= e!4171194 (and tp!1911087 tp!1911088))))

(declare-fun b!6932432 () Bool)

(assert (=> b!6932432 (= e!4171194 tp_is_empty!43119)))

(assert (= (and b!6931592 ((_ is ElementMatch!16947) (regTwo!34406 r2!6280))) b!6932432))

(assert (= (and b!6931592 ((_ is Concat!25792) (regTwo!34406 r2!6280))) b!6932433))

(assert (= (and b!6931592 ((_ is Star!16947) (regTwo!34406 r2!6280))) b!6932434))

(assert (= (and b!6931592 ((_ is Union!16947) (regTwo!34406 r2!6280))) b!6932435))

(check-sat (not bm!629941) (not d!2166143) (not b!6932426) (not bm!629943) (not b!6932342) (not bm!629928) (not b!6932392) (not b!6932198) (not b!6931853) (not b!6932224) (not b!6932327) (not b!6932425) (not b!6932411) (not b!6932212) (not bm!629894) (not b!6932434) (not d!2166229) (not b!6932260) (not b!6932250) (not b!6932221) (not b!6932305) (not d!2166211) (not d!2166199) (not b!6931677) (not d!2166249) (not b!6932215) (not bm!629931) (not b!6932406) (not bm!629923) (not b!6932278) (not b!6932345) (not b!6932414) (not b!6932279) (not b!6932298) (not b!6932435) (not b!6932190) (not b!6932273) (not b!6932225) (not b!6932418) (not b!6931742) (not d!2166127) (not b!6932341) (not d!2166215) (not bm!629933) (not b!6932409) (not b!6932354) (not b!6932403) (not b!6931857) (not b!6932431) (not b!6932398) (not b!6932248) (not d!2166205) (not bm!629936) (not d!2166247) (not b!6932397) (not bm!629938) (not b!6932385) (not b!6932405) (not d!2166239) (not bm!629945) (not b!6932382) (not b!6932223) (not b!6932200) (not b!6931851) (not b!6932429) (not d!2166223) (not bm!629896) (not b!6932376) (not bm!629924) (not b!6932308) (not bm!629946) (not b!6932328) (not b!6931852) (not b!6932199) (not d!2166145) (not b!6932234) (not d!2166233) (not bm!629929) (not b!6932329) (not b!6932187) (not b!6932340) (not b!6932419) (not b!6932231) (not b!6932326) (not b!6932293) (not b!6932396) (not d!2166241) (not b!6932156) (not b!6932237) (not bm!629939) (not b!6931743) (not b!6932262) (not b!6932373) (not b!6932410) (not d!2166225) (not bm!629879) (not d!2166245) (not b!6932422) (not b!6932433) (not b!6932389) (not b!6932415) (not b!6932251) (not b!6932297) (not b!6932332) (not d!2166221) (not b!6932386) (not b!6932284) (not d!2166191) (not b!6932263) (not bm!629948) (not bm!629934) (not bm!629937) (not b!6932249) (not b!6932206) (not b!6932380) (not b!6932393) (not bm!629927) (not bm!629940) tp_is_empty!43119 (not b!6932384) (not bm!629877) (not b!6932394) (not bm!629935) (not b!6931732) (not b!6932209) (not b!6932388) (not b!6932374) (not b!6932313) (not d!2166235) (not bm!629930) (not b!6931855) (not b!6932427) (not b!6932196) (not b!6932423) (not b!6932324) (not d!2166251) (not b!6932372) (not b!6932280) (not b!6932270) (not b!6932290) (not b!6932413) (not b!6932381) (not d!2166227) (not d!2166217) (not d!2166207) (not b!6932390) (not b!6932282) (not b!6932421) (not d!2166103) (not b!6932378) (not b!6932430) (not b!6932315) (not d!2166201) (not bm!629942) (not b!6931864) (not b!6932240) (not d!2166113) (not b!6932417) (not b!6932153) (not d!2166165) (not b!6931735) (not b!6932377) (not b!6932254) (not b!6931849) (not b!6932246) (not b!6932407) (not b!6932264) (not b!6932312) (not b!6932338) (not b!6932318) (not d!2166111) (not d!2166123) (not b!6932276) (not bm!629932))
(check-sat)
