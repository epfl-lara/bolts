; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520384 () Bool)

(assert start!520384)

(declare-fun b!4944470 () Bool)

(declare-fun res!2109849 () Bool)

(declare-fun e!3089253 () Bool)

(assert (=> b!4944470 (=> res!2109849 e!3089253)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4944470 (= res!2109849 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun res!2109851 () Bool)

(declare-fun e!3089259 () Bool)

(assert (=> start!520384 (=> (not res!2109851) (not e!3089259))))

(declare-datatypes ((C!27184 0))(
  ( (C!27185 (val!22926 Int)) )
))
(declare-datatypes ((List!57063 0))(
  ( (Nil!56939) (Cons!56939 (h!63387 C!27184) (t!367599 List!57063)) )
))
(declare-fun lt!2038310 () List!57063)

(declare-fun lt!2038314 () List!57063)

(assert (=> start!520384 (= res!2109851 (= lt!2038310 lt!2038314))))

(declare-datatypes ((IArray!30033 0))(
  ( (IArray!30034 (innerList!15074 List!57063)) )
))
(declare-datatypes ((Conc!14986 0))(
  ( (Node!14986 (left!41545 Conc!14986) (right!41875 Conc!14986) (csize!30202 Int) (cheight!15197 Int)) (Leaf!24912 (xs!18312 IArray!30033) (csize!30203 Int)) (Empty!14986) )
))
(declare-datatypes ((BalanceConc!29402 0))(
  ( (BalanceConc!29403 (c!843616 Conc!14986)) )
))
(declare-fun totalInput!685 () BalanceConc!29402)

(declare-fun list!18135 (BalanceConc!29402) List!57063)

(assert (=> start!520384 (= lt!2038314 (list!18135 totalInput!685))))

(declare-fun testedP!110 () List!57063)

(declare-fun testedSuffix!70 () List!57063)

(declare-fun ++!12452 (List!57063 List!57063) List!57063)

(assert (=> start!520384 (= lt!2038310 (++!12452 testedP!110 testedSuffix!70))))

(assert (=> start!520384 e!3089259))

(declare-fun e!3089255 () Bool)

(assert (=> start!520384 e!3089255))

(declare-fun condSetEmpty!27974 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13467 0))(
  ( (ElementMatch!13467 (c!843617 C!27184)) (Concat!22040 (regOne!27446 Regex!13467) (regTwo!27446 Regex!13467)) (EmptyExpr!13467) (Star!13467 (reg!13796 Regex!13467)) (EmptyLang!13467) (Union!13467 (regOne!27447 Regex!13467) (regTwo!27447 Regex!13467)) )
))
(declare-datatypes ((List!57064 0))(
  ( (Nil!56940) (Cons!56940 (h!63388 Regex!13467) (t!367600 List!57064)) )
))
(declare-datatypes ((Context!6218 0))(
  ( (Context!6219 (exprs!3609 List!57064)) )
))
(declare-fun z!3568 () (InoxSet Context!6218))

(assert (=> start!520384 (= condSetEmpty!27974 (= z!3568 ((as const (Array Context!6218 Bool)) false)))))

(declare-fun setRes!27974 () Bool)

(assert (=> start!520384 setRes!27974))

(assert (=> start!520384 true))

(declare-fun e!3089256 () Bool)

(declare-fun inv!74122 (BalanceConc!29402) Bool)

(assert (=> start!520384 (and (inv!74122 totalInput!685) e!3089256)))

(declare-fun e!3089257 () Bool)

(assert (=> start!520384 e!3089257))

(declare-fun b!4944471 () Bool)

(declare-fun lt!2038312 () Int)

(declare-fun size!37765 (List!57063) Int)

(assert (=> b!4944471 (= e!3089253 (= (size!37765 lt!2038314) lt!2038312))))

(declare-fun isPrefix!5073 (List!57063 List!57063) Bool)

(assert (=> b!4944471 (isPrefix!5073 lt!2038314 lt!2038314)))

(declare-datatypes ((Unit!147711 0))(
  ( (Unit!147712) )
))
(declare-fun lt!2038309 () Unit!147711)

(declare-fun lemmaIsPrefixRefl!3419 (List!57063 List!57063) Unit!147711)

(assert (=> b!4944471 (= lt!2038309 (lemmaIsPrefixRefl!3419 lt!2038314 lt!2038314))))

(declare-fun b!4944472 () Bool)

(declare-fun e!3089254 () Bool)

(assert (=> b!4944472 (= e!3089259 e!3089254)))

(declare-fun res!2109852 () Bool)

(assert (=> b!4944472 (=> (not res!2109852) (not e!3089254))))

(assert (=> b!4944472 (= res!2109852 (= testedPSize!70 lt!2038312))))

(assert (=> b!4944472 (= lt!2038312 (size!37765 testedP!110))))

(declare-fun b!4944473 () Bool)

(declare-fun res!2109854 () Bool)

(assert (=> b!4944473 (=> (not res!2109854) (not e!3089254))))

(declare-fun size!37766 (BalanceConc!29402) Int)

(assert (=> b!4944473 (= res!2109854 (= totalInputSize!132 (size!37766 totalInput!685)))))

(declare-fun b!4944474 () Bool)

(declare-fun tp_is_empty!36131 () Bool)

(declare-fun tp!1386975 () Bool)

(assert (=> b!4944474 (= e!3089255 (and tp_is_empty!36131 tp!1386975))))

(declare-fun b!4944475 () Bool)

(declare-fun tp!1386973 () Bool)

(assert (=> b!4944475 (= e!3089257 (and tp_is_empty!36131 tp!1386973))))

(declare-fun b!4944476 () Bool)

(declare-fun e!3089252 () Bool)

(assert (=> b!4944476 (= e!3089252 e!3089253)))

(declare-fun res!2109853 () Bool)

(assert (=> b!4944476 (=> res!2109853 e!3089253)))

(declare-fun lostCauseZipper!785 ((InoxSet Context!6218)) Bool)

(assert (=> b!4944476 (= res!2109853 (lostCauseZipper!785 z!3568))))

(declare-fun lt!2038315 () List!57063)

(assert (=> b!4944476 (and (= testedSuffix!70 lt!2038315) (= lt!2038315 testedSuffix!70))))

(declare-fun lt!2038311 () Unit!147711)

(declare-fun lemmaSamePrefixThenSameSuffix!2465 (List!57063 List!57063 List!57063 List!57063 List!57063) Unit!147711)

(assert (=> b!4944476 (= lt!2038311 (lemmaSamePrefixThenSameSuffix!2465 testedP!110 testedSuffix!70 testedP!110 lt!2038315 lt!2038314))))

(declare-fun getSuffix!3055 (List!57063 List!57063) List!57063)

(assert (=> b!4944476 (= lt!2038315 (getSuffix!3055 lt!2038314 testedP!110))))

(declare-fun b!4944477 () Bool)

(declare-fun e!3089258 () Bool)

(declare-fun tp!1386974 () Bool)

(assert (=> b!4944477 (= e!3089258 tp!1386974)))

(declare-fun setIsEmpty!27974 () Bool)

(assert (=> setIsEmpty!27974 setRes!27974))

(declare-fun setElem!27974 () Context!6218)

(declare-fun tp!1386972 () Bool)

(declare-fun setNonEmpty!27974 () Bool)

(declare-fun inv!74123 (Context!6218) Bool)

(assert (=> setNonEmpty!27974 (= setRes!27974 (and tp!1386972 (inv!74123 setElem!27974) e!3089258))))

(declare-fun setRest!27974 () (InoxSet Context!6218))

(assert (=> setNonEmpty!27974 (= z!3568 ((_ map or) (store ((as const (Array Context!6218 Bool)) false) setElem!27974 true) setRest!27974))))

(declare-fun b!4944478 () Bool)

(assert (=> b!4944478 (= e!3089254 (not e!3089252))))

(declare-fun res!2109850 () Bool)

(assert (=> b!4944478 (=> res!2109850 e!3089252)))

(assert (=> b!4944478 (= res!2109850 (not (isPrefix!5073 testedP!110 lt!2038314)))))

(assert (=> b!4944478 (isPrefix!5073 testedP!110 lt!2038310)))

(declare-fun lt!2038313 () Unit!147711)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3297 (List!57063 List!57063) Unit!147711)

(assert (=> b!4944478 (= lt!2038313 (lemmaConcatTwoListThenFirstIsPrefix!3297 testedP!110 testedSuffix!70))))

(declare-fun b!4944479 () Bool)

(declare-fun tp!1386971 () Bool)

(declare-fun inv!74124 (Conc!14986) Bool)

(assert (=> b!4944479 (= e!3089256 (and (inv!74124 (c!843616 totalInput!685)) tp!1386971))))

(assert (= (and start!520384 res!2109851) b!4944472))

(assert (= (and b!4944472 res!2109852) b!4944473))

(assert (= (and b!4944473 res!2109854) b!4944478))

(assert (= (and b!4944478 (not res!2109850)) b!4944476))

(assert (= (and b!4944476 (not res!2109853)) b!4944470))

(assert (= (and b!4944470 (not res!2109849)) b!4944471))

(get-info :version)

(assert (= (and start!520384 ((_ is Cons!56939) testedP!110)) b!4944474))

(assert (= (and start!520384 condSetEmpty!27974) setIsEmpty!27974))

(assert (= (and start!520384 (not condSetEmpty!27974)) setNonEmpty!27974))

(assert (= setNonEmpty!27974 b!4944477))

(assert (= start!520384 b!4944479))

(assert (= (and start!520384 ((_ is Cons!56939) testedSuffix!70)) b!4944475))

(declare-fun m!5967500 () Bool)

(assert (=> b!4944472 m!5967500))

(declare-fun m!5967502 () Bool)

(assert (=> setNonEmpty!27974 m!5967502))

(declare-fun m!5967504 () Bool)

(assert (=> start!520384 m!5967504))

(declare-fun m!5967506 () Bool)

(assert (=> start!520384 m!5967506))

(declare-fun m!5967508 () Bool)

(assert (=> start!520384 m!5967508))

(declare-fun m!5967510 () Bool)

(assert (=> b!4944471 m!5967510))

(declare-fun m!5967512 () Bool)

(assert (=> b!4944471 m!5967512))

(declare-fun m!5967514 () Bool)

(assert (=> b!4944471 m!5967514))

(declare-fun m!5967516 () Bool)

(assert (=> b!4944476 m!5967516))

(declare-fun m!5967518 () Bool)

(assert (=> b!4944476 m!5967518))

(declare-fun m!5967520 () Bool)

(assert (=> b!4944476 m!5967520))

(declare-fun m!5967522 () Bool)

(assert (=> b!4944479 m!5967522))

(declare-fun m!5967524 () Bool)

(assert (=> b!4944473 m!5967524))

(declare-fun m!5967526 () Bool)

(assert (=> b!4944478 m!5967526))

(declare-fun m!5967528 () Bool)

(assert (=> b!4944478 m!5967528))

(declare-fun m!5967530 () Bool)

(assert (=> b!4944478 m!5967530))

(check-sat (not start!520384) (not b!4944478) (not b!4944479) (not b!4944473) (not b!4944476) (not b!4944472) (not b!4944471) (not setNonEmpty!27974) (not b!4944477) (not b!4944474) (not b!4944475) tp_is_empty!36131)
(check-sat)
(get-model)

(declare-fun bs!1181552 () Bool)

(declare-fun b!4944519 () Bool)

(declare-fun d!1592046 () Bool)

(assert (= bs!1181552 (and b!4944519 d!1592046)))

(declare-fun lambda!246428 () Int)

(declare-fun lambda!246427 () Int)

(assert (=> bs!1181552 (not (= lambda!246428 lambda!246427))))

(declare-fun bs!1181553 () Bool)

(declare-fun b!4944520 () Bool)

(assert (= bs!1181553 (and b!4944520 d!1592046)))

(declare-fun lambda!246429 () Int)

(assert (=> bs!1181553 (not (= lambda!246429 lambda!246427))))

(declare-fun bs!1181554 () Bool)

(assert (= bs!1181554 (and b!4944520 b!4944519)))

(assert (=> bs!1181554 (= lambda!246429 lambda!246428)))

(declare-fun bm!345033 () Bool)

(declare-datatypes ((List!57065 0))(
  ( (Nil!56941) (Cons!56941 (h!63389 Context!6218) (t!367601 List!57065)) )
))
(declare-fun call!345038 () List!57065)

(declare-fun toList!7987 ((InoxSet Context!6218)) List!57065)

(assert (=> bm!345033 (= call!345038 (toList!7987 z!3568))))

(declare-fun e!3089290 () Unit!147711)

(declare-fun Unit!147713 () Unit!147711)

(assert (=> b!4944520 (= e!3089290 Unit!147713)))

(declare-fun lt!2038351 () List!57065)

(assert (=> b!4944520 (= lt!2038351 call!345038)))

(declare-fun lt!2038352 () Unit!147711)

(declare-fun lemmaForallThenNotExists!208 (List!57065 Int) Unit!147711)

(assert (=> b!4944520 (= lt!2038352 (lemmaForallThenNotExists!208 lt!2038351 lambda!246427))))

(declare-fun call!345037 () Bool)

(assert (=> b!4944520 (not call!345037)))

(declare-fun lt!2038350 () Unit!147711)

(assert (=> b!4944520 (= lt!2038350 lt!2038352)))

(declare-fun Unit!147714 () Unit!147711)

(assert (=> b!4944519 (= e!3089290 Unit!147714)))

(declare-fun lt!2038355 () List!57065)

(assert (=> b!4944519 (= lt!2038355 call!345038)))

(declare-fun lt!2038353 () Unit!147711)

(declare-fun lemmaNotForallThenExists!225 (List!57065 Int) Unit!147711)

(assert (=> b!4944519 (= lt!2038353 (lemmaNotForallThenExists!225 lt!2038355 lambda!246427))))

(assert (=> b!4944519 call!345037))

(declare-fun lt!2038354 () Unit!147711)

(assert (=> b!4944519 (= lt!2038354 lt!2038353)))

(declare-fun c!843634 () Bool)

(declare-fun bm!345032 () Bool)

(declare-fun exists!1319 (List!57065 Int) Bool)

(assert (=> bm!345032 (= call!345037 (exists!1319 (ite c!843634 lt!2038355 lt!2038351) (ite c!843634 lambda!246428 lambda!246429)))))

(declare-fun lt!2038356 () Bool)

(declare-datatypes ((Option!14205 0))(
  ( (None!14204) (Some!14204 (v!50180 List!57063)) )
))
(declare-fun isEmpty!30646 (Option!14205) Bool)

(declare-fun getLanguageWitness!674 ((InoxSet Context!6218)) Option!14205)

(assert (=> d!1592046 (= lt!2038356 (isEmpty!30646 (getLanguageWitness!674 z!3568)))))

(declare-fun forall!13239 ((InoxSet Context!6218) Int) Bool)

(assert (=> d!1592046 (= lt!2038356 (forall!13239 z!3568 lambda!246427))))

(declare-fun lt!2038349 () Unit!147711)

(assert (=> d!1592046 (= lt!2038349 e!3089290)))

(assert (=> d!1592046 (= c!843634 (not (forall!13239 z!3568 lambda!246427)))))

(assert (=> d!1592046 (= (lostCauseZipper!785 z!3568) lt!2038356)))

(assert (= (and d!1592046 c!843634) b!4944519))

(assert (= (and d!1592046 (not c!843634)) b!4944520))

(assert (= (or b!4944519 b!4944520) bm!345032))

(assert (= (or b!4944519 b!4944520) bm!345033))

(declare-fun m!5967568 () Bool)

(assert (=> bm!345032 m!5967568))

(declare-fun m!5967570 () Bool)

(assert (=> b!4944519 m!5967570))

(declare-fun m!5967572 () Bool)

(assert (=> b!4944520 m!5967572))

(declare-fun m!5967574 () Bool)

(assert (=> bm!345033 m!5967574))

(declare-fun m!5967576 () Bool)

(assert (=> d!1592046 m!5967576))

(assert (=> d!1592046 m!5967576))

(declare-fun m!5967578 () Bool)

(assert (=> d!1592046 m!5967578))

(declare-fun m!5967580 () Bool)

(assert (=> d!1592046 m!5967580))

(assert (=> d!1592046 m!5967580))

(assert (=> b!4944476 d!1592046))

(declare-fun d!1592066 () Bool)

(assert (=> d!1592066 (= testedSuffix!70 lt!2038315)))

(declare-fun lt!2038359 () Unit!147711)

(declare-fun choose!36428 (List!57063 List!57063 List!57063 List!57063 List!57063) Unit!147711)

(assert (=> d!1592066 (= lt!2038359 (choose!36428 testedP!110 testedSuffix!70 testedP!110 lt!2038315 lt!2038314))))

(assert (=> d!1592066 (isPrefix!5073 testedP!110 lt!2038314)))

(assert (=> d!1592066 (= (lemmaSamePrefixThenSameSuffix!2465 testedP!110 testedSuffix!70 testedP!110 lt!2038315 lt!2038314) lt!2038359)))

(declare-fun bs!1181555 () Bool)

(assert (= bs!1181555 d!1592066))

(declare-fun m!5967582 () Bool)

(assert (=> bs!1181555 m!5967582))

(assert (=> bs!1181555 m!5967526))

(assert (=> b!4944476 d!1592066))

(declare-fun d!1592068 () Bool)

(declare-fun lt!2038362 () List!57063)

(assert (=> d!1592068 (= (++!12452 testedP!110 lt!2038362) lt!2038314)))

(declare-fun e!3089293 () List!57063)

(assert (=> d!1592068 (= lt!2038362 e!3089293)))

(declare-fun c!843637 () Bool)

(assert (=> d!1592068 (= c!843637 ((_ is Cons!56939) testedP!110))))

(assert (=> d!1592068 (>= (size!37765 lt!2038314) (size!37765 testedP!110))))

(assert (=> d!1592068 (= (getSuffix!3055 lt!2038314 testedP!110) lt!2038362)))

(declare-fun b!4944525 () Bool)

(declare-fun tail!9734 (List!57063) List!57063)

(assert (=> b!4944525 (= e!3089293 (getSuffix!3055 (tail!9734 lt!2038314) (t!367599 testedP!110)))))

(declare-fun b!4944526 () Bool)

(assert (=> b!4944526 (= e!3089293 lt!2038314)))

(assert (= (and d!1592068 c!843637) b!4944525))

(assert (= (and d!1592068 (not c!843637)) b!4944526))

(declare-fun m!5967584 () Bool)

(assert (=> d!1592068 m!5967584))

(assert (=> d!1592068 m!5967510))

(assert (=> d!1592068 m!5967500))

(declare-fun m!5967586 () Bool)

(assert (=> b!4944525 m!5967586))

(assert (=> b!4944525 m!5967586))

(declare-fun m!5967588 () Bool)

(assert (=> b!4944525 m!5967588))

(assert (=> b!4944476 d!1592068))

(declare-fun d!1592070 () Bool)

(declare-fun lt!2038365 () Int)

(assert (=> d!1592070 (>= lt!2038365 0)))

(declare-fun e!3089296 () Int)

(assert (=> d!1592070 (= lt!2038365 e!3089296)))

(declare-fun c!843640 () Bool)

(assert (=> d!1592070 (= c!843640 ((_ is Nil!56939) lt!2038314))))

(assert (=> d!1592070 (= (size!37765 lt!2038314) lt!2038365)))

(declare-fun b!4944531 () Bool)

(assert (=> b!4944531 (= e!3089296 0)))

(declare-fun b!4944532 () Bool)

(assert (=> b!4944532 (= e!3089296 (+ 1 (size!37765 (t!367599 lt!2038314))))))

(assert (= (and d!1592070 c!843640) b!4944531))

(assert (= (and d!1592070 (not c!843640)) b!4944532))

(declare-fun m!5967590 () Bool)

(assert (=> b!4944532 m!5967590))

(assert (=> b!4944471 d!1592070))

(declare-fun b!4944543 () Bool)

(declare-fun e!3089305 () Bool)

(assert (=> b!4944543 (= e!3089305 (isPrefix!5073 (tail!9734 lt!2038314) (tail!9734 lt!2038314)))))

(declare-fun d!1592072 () Bool)

(declare-fun e!3089304 () Bool)

(assert (=> d!1592072 e!3089304))

(declare-fun res!2109886 () Bool)

(assert (=> d!1592072 (=> res!2109886 e!3089304)))

(declare-fun lt!2038368 () Bool)

(assert (=> d!1592072 (= res!2109886 (not lt!2038368))))

(declare-fun e!3089303 () Bool)

(assert (=> d!1592072 (= lt!2038368 e!3089303)))

(declare-fun res!2109887 () Bool)

(assert (=> d!1592072 (=> res!2109887 e!3089303)))

(assert (=> d!1592072 (= res!2109887 ((_ is Nil!56939) lt!2038314))))

(assert (=> d!1592072 (= (isPrefix!5073 lt!2038314 lt!2038314) lt!2038368)))

(declare-fun b!4944541 () Bool)

(assert (=> b!4944541 (= e!3089303 e!3089305)))

(declare-fun res!2109888 () Bool)

(assert (=> b!4944541 (=> (not res!2109888) (not e!3089305))))

(assert (=> b!4944541 (= res!2109888 (not ((_ is Nil!56939) lt!2038314)))))

(declare-fun b!4944544 () Bool)

(assert (=> b!4944544 (= e!3089304 (>= (size!37765 lt!2038314) (size!37765 lt!2038314)))))

(declare-fun b!4944542 () Bool)

(declare-fun res!2109889 () Bool)

(assert (=> b!4944542 (=> (not res!2109889) (not e!3089305))))

(declare-fun head!10595 (List!57063) C!27184)

(assert (=> b!4944542 (= res!2109889 (= (head!10595 lt!2038314) (head!10595 lt!2038314)))))

(assert (= (and d!1592072 (not res!2109887)) b!4944541))

(assert (= (and b!4944541 res!2109888) b!4944542))

(assert (= (and b!4944542 res!2109889) b!4944543))

(assert (= (and d!1592072 (not res!2109886)) b!4944544))

(assert (=> b!4944543 m!5967586))

(assert (=> b!4944543 m!5967586))

(assert (=> b!4944543 m!5967586))

(assert (=> b!4944543 m!5967586))

(declare-fun m!5967592 () Bool)

(assert (=> b!4944543 m!5967592))

(assert (=> b!4944544 m!5967510))

(assert (=> b!4944544 m!5967510))

(declare-fun m!5967594 () Bool)

(assert (=> b!4944542 m!5967594))

(assert (=> b!4944542 m!5967594))

(assert (=> b!4944471 d!1592072))

(declare-fun d!1592074 () Bool)

(assert (=> d!1592074 (isPrefix!5073 lt!2038314 lt!2038314)))

(declare-fun lt!2038371 () Unit!147711)

(declare-fun choose!36429 (List!57063 List!57063) Unit!147711)

(assert (=> d!1592074 (= lt!2038371 (choose!36429 lt!2038314 lt!2038314))))

(assert (=> d!1592074 (= (lemmaIsPrefixRefl!3419 lt!2038314 lt!2038314) lt!2038371)))

(declare-fun bs!1181556 () Bool)

(assert (= bs!1181556 d!1592074))

(assert (=> bs!1181556 m!5967512))

(declare-fun m!5967596 () Bool)

(assert (=> bs!1181556 m!5967596))

(assert (=> b!4944471 d!1592074))

(declare-fun d!1592076 () Bool)

(declare-fun lt!2038374 () Int)

(assert (=> d!1592076 (= lt!2038374 (size!37765 (list!18135 totalInput!685)))))

(declare-fun size!37767 (Conc!14986) Int)

(assert (=> d!1592076 (= lt!2038374 (size!37767 (c!843616 totalInput!685)))))

(assert (=> d!1592076 (= (size!37766 totalInput!685) lt!2038374)))

(declare-fun bs!1181557 () Bool)

(assert (= bs!1181557 d!1592076))

(assert (=> bs!1181557 m!5967504))

(assert (=> bs!1181557 m!5967504))

(declare-fun m!5967598 () Bool)

(assert (=> bs!1181557 m!5967598))

(declare-fun m!5967600 () Bool)

(assert (=> bs!1181557 m!5967600))

(assert (=> b!4944473 d!1592076))

(declare-fun d!1592078 () Bool)

(declare-fun lt!2038375 () Int)

(assert (=> d!1592078 (>= lt!2038375 0)))

(declare-fun e!3089306 () Int)

(assert (=> d!1592078 (= lt!2038375 e!3089306)))

(declare-fun c!843641 () Bool)

(assert (=> d!1592078 (= c!843641 ((_ is Nil!56939) testedP!110))))

(assert (=> d!1592078 (= (size!37765 testedP!110) lt!2038375)))

(declare-fun b!4944545 () Bool)

(assert (=> b!4944545 (= e!3089306 0)))

(declare-fun b!4944546 () Bool)

(assert (=> b!4944546 (= e!3089306 (+ 1 (size!37765 (t!367599 testedP!110))))))

(assert (= (and d!1592078 c!843641) b!4944545))

(assert (= (and d!1592078 (not c!843641)) b!4944546))

(declare-fun m!5967602 () Bool)

(assert (=> b!4944546 m!5967602))

(assert (=> b!4944472 d!1592078))

(declare-fun d!1592080 () Bool)

(declare-fun lambda!246432 () Int)

(declare-fun forall!13240 (List!57064 Int) Bool)

(assert (=> d!1592080 (= (inv!74123 setElem!27974) (forall!13240 (exprs!3609 setElem!27974) lambda!246432))))

(declare-fun bs!1181558 () Bool)

(assert (= bs!1181558 d!1592080))

(declare-fun m!5967604 () Bool)

(assert (=> bs!1181558 m!5967604))

(assert (=> setNonEmpty!27974 d!1592080))

(declare-fun d!1592082 () Bool)

(declare-fun c!843644 () Bool)

(assert (=> d!1592082 (= c!843644 ((_ is Node!14986) (c!843616 totalInput!685)))))

(declare-fun e!3089311 () Bool)

(assert (=> d!1592082 (= (inv!74124 (c!843616 totalInput!685)) e!3089311)))

(declare-fun b!4944553 () Bool)

(declare-fun inv!74125 (Conc!14986) Bool)

(assert (=> b!4944553 (= e!3089311 (inv!74125 (c!843616 totalInput!685)))))

(declare-fun b!4944554 () Bool)

(declare-fun e!3089312 () Bool)

(assert (=> b!4944554 (= e!3089311 e!3089312)))

(declare-fun res!2109892 () Bool)

(assert (=> b!4944554 (= res!2109892 (not ((_ is Leaf!24912) (c!843616 totalInput!685))))))

(assert (=> b!4944554 (=> res!2109892 e!3089312)))

(declare-fun b!4944555 () Bool)

(declare-fun inv!74126 (Conc!14986) Bool)

(assert (=> b!4944555 (= e!3089312 (inv!74126 (c!843616 totalInput!685)))))

(assert (= (and d!1592082 c!843644) b!4944553))

(assert (= (and d!1592082 (not c!843644)) b!4944554))

(assert (= (and b!4944554 (not res!2109892)) b!4944555))

(declare-fun m!5967606 () Bool)

(assert (=> b!4944553 m!5967606))

(declare-fun m!5967608 () Bool)

(assert (=> b!4944555 m!5967608))

(assert (=> b!4944479 d!1592082))

(declare-fun d!1592084 () Bool)

(declare-fun list!18136 (Conc!14986) List!57063)

(assert (=> d!1592084 (= (list!18135 totalInput!685) (list!18136 (c!843616 totalInput!685)))))

(declare-fun bs!1181559 () Bool)

(assert (= bs!1181559 d!1592084))

(declare-fun m!5967610 () Bool)

(assert (=> bs!1181559 m!5967610))

(assert (=> start!520384 d!1592084))

(declare-fun b!4944566 () Bool)

(declare-fun res!2109898 () Bool)

(declare-fun e!3089318 () Bool)

(assert (=> b!4944566 (=> (not res!2109898) (not e!3089318))))

(declare-fun lt!2038378 () List!57063)

(assert (=> b!4944566 (= res!2109898 (= (size!37765 lt!2038378) (+ (size!37765 testedP!110) (size!37765 testedSuffix!70))))))

(declare-fun b!4944565 () Bool)

(declare-fun e!3089317 () List!57063)

(assert (=> b!4944565 (= e!3089317 (Cons!56939 (h!63387 testedP!110) (++!12452 (t!367599 testedP!110) testedSuffix!70)))))

(declare-fun b!4944564 () Bool)

(assert (=> b!4944564 (= e!3089317 testedSuffix!70)))

(declare-fun b!4944567 () Bool)

(assert (=> b!4944567 (= e!3089318 (or (not (= testedSuffix!70 Nil!56939)) (= lt!2038378 testedP!110)))))

(declare-fun d!1592086 () Bool)

(assert (=> d!1592086 e!3089318))

(declare-fun res!2109897 () Bool)

(assert (=> d!1592086 (=> (not res!2109897) (not e!3089318))))

(declare-fun content!10136 (List!57063) (InoxSet C!27184))

(assert (=> d!1592086 (= res!2109897 (= (content!10136 lt!2038378) ((_ map or) (content!10136 testedP!110) (content!10136 testedSuffix!70))))))

(assert (=> d!1592086 (= lt!2038378 e!3089317)))

(declare-fun c!843647 () Bool)

(assert (=> d!1592086 (= c!843647 ((_ is Nil!56939) testedP!110))))

(assert (=> d!1592086 (= (++!12452 testedP!110 testedSuffix!70) lt!2038378)))

(assert (= (and d!1592086 c!843647) b!4944564))

(assert (= (and d!1592086 (not c!843647)) b!4944565))

(assert (= (and d!1592086 res!2109897) b!4944566))

(assert (= (and b!4944566 res!2109898) b!4944567))

(declare-fun m!5967612 () Bool)

(assert (=> b!4944566 m!5967612))

(assert (=> b!4944566 m!5967500))

(declare-fun m!5967614 () Bool)

(assert (=> b!4944566 m!5967614))

(declare-fun m!5967616 () Bool)

(assert (=> b!4944565 m!5967616))

(declare-fun m!5967618 () Bool)

(assert (=> d!1592086 m!5967618))

(declare-fun m!5967620 () Bool)

(assert (=> d!1592086 m!5967620))

(declare-fun m!5967622 () Bool)

(assert (=> d!1592086 m!5967622))

(assert (=> start!520384 d!1592086))

(declare-fun d!1592088 () Bool)

(declare-fun isBalanced!4141 (Conc!14986) Bool)

(assert (=> d!1592088 (= (inv!74122 totalInput!685) (isBalanced!4141 (c!843616 totalInput!685)))))

(declare-fun bs!1181560 () Bool)

(assert (= bs!1181560 d!1592088))

(declare-fun m!5967624 () Bool)

(assert (=> bs!1181560 m!5967624))

(assert (=> start!520384 d!1592088))

(declare-fun b!4944570 () Bool)

(declare-fun e!3089321 () Bool)

(assert (=> b!4944570 (= e!3089321 (isPrefix!5073 (tail!9734 testedP!110) (tail!9734 lt!2038314)))))

(declare-fun d!1592090 () Bool)

(declare-fun e!3089320 () Bool)

(assert (=> d!1592090 e!3089320))

(declare-fun res!2109899 () Bool)

(assert (=> d!1592090 (=> res!2109899 e!3089320)))

(declare-fun lt!2038379 () Bool)

(assert (=> d!1592090 (= res!2109899 (not lt!2038379))))

(declare-fun e!3089319 () Bool)

(assert (=> d!1592090 (= lt!2038379 e!3089319)))

(declare-fun res!2109900 () Bool)

(assert (=> d!1592090 (=> res!2109900 e!3089319)))

(assert (=> d!1592090 (= res!2109900 ((_ is Nil!56939) testedP!110))))

(assert (=> d!1592090 (= (isPrefix!5073 testedP!110 lt!2038314) lt!2038379)))

(declare-fun b!4944568 () Bool)

(assert (=> b!4944568 (= e!3089319 e!3089321)))

(declare-fun res!2109901 () Bool)

(assert (=> b!4944568 (=> (not res!2109901) (not e!3089321))))

(assert (=> b!4944568 (= res!2109901 (not ((_ is Nil!56939) lt!2038314)))))

(declare-fun b!4944571 () Bool)

(assert (=> b!4944571 (= e!3089320 (>= (size!37765 lt!2038314) (size!37765 testedP!110)))))

(declare-fun b!4944569 () Bool)

(declare-fun res!2109902 () Bool)

(assert (=> b!4944569 (=> (not res!2109902) (not e!3089321))))

(assert (=> b!4944569 (= res!2109902 (= (head!10595 testedP!110) (head!10595 lt!2038314)))))

(assert (= (and d!1592090 (not res!2109900)) b!4944568))

(assert (= (and b!4944568 res!2109901) b!4944569))

(assert (= (and b!4944569 res!2109902) b!4944570))

(assert (= (and d!1592090 (not res!2109899)) b!4944571))

(declare-fun m!5967626 () Bool)

(assert (=> b!4944570 m!5967626))

(assert (=> b!4944570 m!5967586))

(assert (=> b!4944570 m!5967626))

(assert (=> b!4944570 m!5967586))

(declare-fun m!5967628 () Bool)

(assert (=> b!4944570 m!5967628))

(assert (=> b!4944571 m!5967510))

(assert (=> b!4944571 m!5967500))

(declare-fun m!5967630 () Bool)

(assert (=> b!4944569 m!5967630))

(assert (=> b!4944569 m!5967594))

(assert (=> b!4944478 d!1592090))

(declare-fun b!4944574 () Bool)

(declare-fun e!3089324 () Bool)

(assert (=> b!4944574 (= e!3089324 (isPrefix!5073 (tail!9734 testedP!110) (tail!9734 lt!2038310)))))

(declare-fun d!1592092 () Bool)

(declare-fun e!3089323 () Bool)

(assert (=> d!1592092 e!3089323))

(declare-fun res!2109903 () Bool)

(assert (=> d!1592092 (=> res!2109903 e!3089323)))

(declare-fun lt!2038380 () Bool)

(assert (=> d!1592092 (= res!2109903 (not lt!2038380))))

(declare-fun e!3089322 () Bool)

(assert (=> d!1592092 (= lt!2038380 e!3089322)))

(declare-fun res!2109904 () Bool)

(assert (=> d!1592092 (=> res!2109904 e!3089322)))

(assert (=> d!1592092 (= res!2109904 ((_ is Nil!56939) testedP!110))))

(assert (=> d!1592092 (= (isPrefix!5073 testedP!110 lt!2038310) lt!2038380)))

(declare-fun b!4944572 () Bool)

(assert (=> b!4944572 (= e!3089322 e!3089324)))

(declare-fun res!2109905 () Bool)

(assert (=> b!4944572 (=> (not res!2109905) (not e!3089324))))

(assert (=> b!4944572 (= res!2109905 (not ((_ is Nil!56939) lt!2038310)))))

(declare-fun b!4944575 () Bool)

(assert (=> b!4944575 (= e!3089323 (>= (size!37765 lt!2038310) (size!37765 testedP!110)))))

(declare-fun b!4944573 () Bool)

(declare-fun res!2109906 () Bool)

(assert (=> b!4944573 (=> (not res!2109906) (not e!3089324))))

(assert (=> b!4944573 (= res!2109906 (= (head!10595 testedP!110) (head!10595 lt!2038310)))))

(assert (= (and d!1592092 (not res!2109904)) b!4944572))

(assert (= (and b!4944572 res!2109905) b!4944573))

(assert (= (and b!4944573 res!2109906) b!4944574))

(assert (= (and d!1592092 (not res!2109903)) b!4944575))

(assert (=> b!4944574 m!5967626))

(declare-fun m!5967632 () Bool)

(assert (=> b!4944574 m!5967632))

(assert (=> b!4944574 m!5967626))

(assert (=> b!4944574 m!5967632))

(declare-fun m!5967634 () Bool)

(assert (=> b!4944574 m!5967634))

(declare-fun m!5967636 () Bool)

(assert (=> b!4944575 m!5967636))

(assert (=> b!4944575 m!5967500))

(assert (=> b!4944573 m!5967630))

(declare-fun m!5967638 () Bool)

(assert (=> b!4944573 m!5967638))

(assert (=> b!4944478 d!1592092))

(declare-fun d!1592094 () Bool)

(assert (=> d!1592094 (isPrefix!5073 testedP!110 (++!12452 testedP!110 testedSuffix!70))))

(declare-fun lt!2038383 () Unit!147711)

(declare-fun choose!36430 (List!57063 List!57063) Unit!147711)

(assert (=> d!1592094 (= lt!2038383 (choose!36430 testedP!110 testedSuffix!70))))

(assert (=> d!1592094 (= (lemmaConcatTwoListThenFirstIsPrefix!3297 testedP!110 testedSuffix!70) lt!2038383)))

(declare-fun bs!1181561 () Bool)

(assert (= bs!1181561 d!1592094))

(assert (=> bs!1181561 m!5967506))

(assert (=> bs!1181561 m!5967506))

(declare-fun m!5967640 () Bool)

(assert (=> bs!1181561 m!5967640))

(declare-fun m!5967642 () Bool)

(assert (=> bs!1181561 m!5967642))

(assert (=> b!4944478 d!1592094))

(declare-fun b!4944580 () Bool)

(declare-fun e!3089327 () Bool)

(declare-fun tp!1386980 () Bool)

(declare-fun tp!1386981 () Bool)

(assert (=> b!4944580 (= e!3089327 (and tp!1386980 tp!1386981))))

(assert (=> b!4944477 (= tp!1386974 e!3089327)))

(assert (= (and b!4944477 ((_ is Cons!56940) (exprs!3609 setElem!27974))) b!4944580))

(declare-fun b!4944585 () Bool)

(declare-fun e!3089330 () Bool)

(declare-fun tp!1386984 () Bool)

(assert (=> b!4944585 (= e!3089330 (and tp_is_empty!36131 tp!1386984))))

(assert (=> b!4944474 (= tp!1386975 e!3089330)))

(assert (= (and b!4944474 ((_ is Cons!56939) (t!367599 testedP!110))) b!4944585))

(declare-fun condSetEmpty!27977 () Bool)

(assert (=> setNonEmpty!27974 (= condSetEmpty!27977 (= setRest!27974 ((as const (Array Context!6218 Bool)) false)))))

(declare-fun setRes!27977 () Bool)

(assert (=> setNonEmpty!27974 (= tp!1386972 setRes!27977)))

(declare-fun setIsEmpty!27977 () Bool)

(assert (=> setIsEmpty!27977 setRes!27977))

(declare-fun setElem!27977 () Context!6218)

(declare-fun tp!1386990 () Bool)

(declare-fun e!3089333 () Bool)

(declare-fun setNonEmpty!27977 () Bool)

(assert (=> setNonEmpty!27977 (= setRes!27977 (and tp!1386990 (inv!74123 setElem!27977) e!3089333))))

(declare-fun setRest!27977 () (InoxSet Context!6218))

(assert (=> setNonEmpty!27977 (= setRest!27974 ((_ map or) (store ((as const (Array Context!6218 Bool)) false) setElem!27977 true) setRest!27977))))

(declare-fun b!4944590 () Bool)

(declare-fun tp!1386989 () Bool)

(assert (=> b!4944590 (= e!3089333 tp!1386989)))

(assert (= (and setNonEmpty!27974 condSetEmpty!27977) setIsEmpty!27977))

(assert (= (and setNonEmpty!27974 (not condSetEmpty!27977)) setNonEmpty!27977))

(assert (= setNonEmpty!27977 b!4944590))

(declare-fun m!5967644 () Bool)

(assert (=> setNonEmpty!27977 m!5967644))

(declare-fun tp!1386999 () Bool)

(declare-fun b!4944599 () Bool)

(declare-fun tp!1386997 () Bool)

(declare-fun e!3089338 () Bool)

(assert (=> b!4944599 (= e!3089338 (and (inv!74124 (left!41545 (c!843616 totalInput!685))) tp!1386999 (inv!74124 (right!41875 (c!843616 totalInput!685))) tp!1386997))))

(declare-fun b!4944601 () Bool)

(declare-fun e!3089339 () Bool)

(declare-fun tp!1386998 () Bool)

(assert (=> b!4944601 (= e!3089339 tp!1386998)))

(declare-fun b!4944600 () Bool)

(declare-fun inv!74127 (IArray!30033) Bool)

(assert (=> b!4944600 (= e!3089338 (and (inv!74127 (xs!18312 (c!843616 totalInput!685))) e!3089339))))

(assert (=> b!4944479 (= tp!1386971 (and (inv!74124 (c!843616 totalInput!685)) e!3089338))))

(assert (= (and b!4944479 ((_ is Node!14986) (c!843616 totalInput!685))) b!4944599))

(assert (= b!4944600 b!4944601))

(assert (= (and b!4944479 ((_ is Leaf!24912) (c!843616 totalInput!685))) b!4944600))

(declare-fun m!5967646 () Bool)

(assert (=> b!4944599 m!5967646))

(declare-fun m!5967648 () Bool)

(assert (=> b!4944599 m!5967648))

(declare-fun m!5967650 () Bool)

(assert (=> b!4944600 m!5967650))

(assert (=> b!4944479 m!5967522))

(declare-fun b!4944602 () Bool)

(declare-fun e!3089340 () Bool)

(declare-fun tp!1387000 () Bool)

(assert (=> b!4944602 (= e!3089340 (and tp_is_empty!36131 tp!1387000))))

(assert (=> b!4944475 (= tp!1386973 e!3089340)))

(assert (= (and b!4944475 ((_ is Cons!56939) (t!367599 testedSuffix!70))) b!4944602))

(check-sat (not b!4944590) (not b!4944573) (not b!4944555) (not b!4944520) (not b!4944574) (not b!4944542) (not d!1592068) (not b!4944519) (not b!4944546) (not d!1592084) (not b!4944599) (not d!1592076) (not b!4944532) (not b!4944553) (not b!4944585) (not bm!345032) (not d!1592080) (not b!4944600) (not d!1592066) (not d!1592086) (not b!4944479) (not setNonEmpty!27977) (not b!4944543) (not b!4944566) (not d!1592094) (not b!4944525) (not b!4944565) (not b!4944580) (not d!1592088) (not b!4944575) (not b!4944602) (not d!1592074) (not b!4944601) (not b!4944570) (not bm!345033) (not d!1592046) (not b!4944571) (not b!4944569) tp_is_empty!36131 (not b!4944544))
(check-sat)
