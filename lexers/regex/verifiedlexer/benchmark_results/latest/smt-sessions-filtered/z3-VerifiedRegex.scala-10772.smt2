; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550418 () Bool)

(assert start!550418)

(declare-fun b!5203446 () Bool)

(assert (=> b!5203446 true))

(assert (=> b!5203446 true))

(declare-fun lambda!260782 () Int)

(declare-fun lambda!260781 () Int)

(assert (=> b!5203446 (not (= lambda!260782 lambda!260781))))

(assert (=> b!5203446 true))

(assert (=> b!5203446 true))

(declare-fun b!5203448 () Bool)

(assert (=> b!5203448 true))

(declare-fun e!3239944 () Bool)

(declare-datatypes ((C!29852 0))(
  ( (C!29853 (val!24628 Int)) )
))
(declare-datatypes ((Regex!14791 0))(
  ( (ElementMatch!14791 (c!896858 C!29852)) (Concat!23636 (regOne!30094 Regex!14791) (regTwo!30094 Regex!14791)) (EmptyExpr!14791) (Star!14791 (reg!15120 Regex!14791)) (EmptyLang!14791) (Union!14791 (regOne!30095 Regex!14791) (regTwo!30095 Regex!14791)) )
))
(declare-datatypes ((List!60672 0))(
  ( (Nil!60548) (Cons!60548 (h!66996 Regex!14791) (t!373827 List!60672)) )
))
(declare-datatypes ((Context!8350 0))(
  ( (Context!8351 (exprs!4675 List!60672)) )
))
(declare-datatypes ((List!60673 0))(
  ( (Nil!60549) (Cons!60549 (h!66997 Context!8350) (t!373828 List!60673)) )
))
(declare-fun zl!343 () List!60673)

(declare-fun b!5203439 () Bool)

(declare-fun e!3239946 () Bool)

(declare-fun tp!1459516 () Bool)

(declare-fun inv!80224 (Context!8350) Bool)

(assert (=> b!5203439 (= e!3239946 (and (inv!80224 (h!66997 zl!343)) e!3239944 tp!1459516))))

(declare-fun b!5203440 () Bool)

(declare-fun e!3239942 () Bool)

(declare-fun tp!1459519 () Bool)

(assert (=> b!5203440 (= e!3239942 tp!1459519)))

(declare-fun b!5203441 () Bool)

(declare-datatypes ((Unit!152430 0))(
  ( (Unit!152431) )
))
(declare-fun e!3239947 () Unit!152430)

(declare-fun Unit!152432 () Unit!152430)

(assert (=> b!5203441 (= e!3239947 Unit!152432)))

(declare-fun b!5203442 () Bool)

(declare-fun res!2210657 () Bool)

(declare-fun e!3239945 () Bool)

(assert (=> b!5203442 (=> res!2210657 e!3239945)))

(declare-fun isEmpty!32453 (List!60673) Bool)

(assert (=> b!5203442 (= res!2210657 (not (isEmpty!32453 (t!373828 zl!343))))))

(declare-fun res!2210653 () Bool)

(declare-fun e!3239941 () Bool)

(assert (=> start!550418 (=> (not res!2210653) (not e!3239941))))

(declare-fun r!7292 () Regex!14791)

(declare-fun validRegex!6527 (Regex!14791) Bool)

(assert (=> start!550418 (= res!2210653 (validRegex!6527 r!7292))))

(assert (=> start!550418 e!3239941))

(declare-fun e!3239949 () Bool)

(assert (=> start!550418 e!3239949))

(declare-fun condSetEmpty!33024 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8350))

(assert (=> start!550418 (= condSetEmpty!33024 (= z!1189 ((as const (Array Context!8350 Bool)) false)))))

(declare-fun setRes!33024 () Bool)

(assert (=> start!550418 setRes!33024))

(assert (=> start!550418 e!3239946))

(declare-fun e!3239948 () Bool)

(assert (=> start!550418 e!3239948))

(declare-fun b!5203443 () Bool)

(assert (=> b!5203443 (= e!3239941 (not e!3239945))))

(declare-fun res!2210658 () Bool)

(assert (=> b!5203443 (=> res!2210658 e!3239945)))

(get-info :version)

(assert (=> b!5203443 (= res!2210658 (not ((_ is Cons!60549) zl!343)))))

(declare-fun lt!2141343 () Bool)

(declare-datatypes ((List!60674 0))(
  ( (Nil!60550) (Cons!60550 (h!66998 C!29852) (t!373829 List!60674)) )
))
(declare-fun s!2326 () List!60674)

(declare-fun matchRSpec!1894 (Regex!14791 List!60674) Bool)

(assert (=> b!5203443 (= lt!2141343 (matchRSpec!1894 r!7292 s!2326))))

(declare-fun matchR!6976 (Regex!14791 List!60674) Bool)

(assert (=> b!5203443 (= lt!2141343 (matchR!6976 r!7292 s!2326))))

(declare-fun lt!2141339 () Unit!152430)

(declare-fun mainMatchTheorem!1894 (Regex!14791 List!60674) Unit!152430)

(assert (=> b!5203443 (= lt!2141339 (mainMatchTheorem!1894 r!7292 s!2326))))

(declare-fun b!5203444 () Bool)

(declare-fun res!2210650 () Bool)

(assert (=> b!5203444 (=> res!2210650 e!3239945)))

(assert (=> b!5203444 (= res!2210650 (not ((_ is Cons!60548) (exprs!4675 (h!66997 zl!343)))))))

(declare-fun setIsEmpty!33024 () Bool)

(assert (=> setIsEmpty!33024 setRes!33024))

(declare-fun b!5203445 () Bool)

(declare-fun tp!1459515 () Bool)

(declare-fun tp!1459514 () Bool)

(assert (=> b!5203445 (= e!3239949 (and tp!1459515 tp!1459514))))

(declare-fun e!3239939 () Bool)

(assert (=> b!5203446 (= e!3239945 e!3239939)))

(declare-fun res!2210652 () Bool)

(assert (=> b!5203446 (=> res!2210652 e!3239939)))

(declare-fun lt!2141337 () Bool)

(assert (=> b!5203446 (= res!2210652 (or (not (= lt!2141343 lt!2141337)) ((_ is Nil!60550) s!2326)))))

(declare-fun Exists!1972 (Int) Bool)

(assert (=> b!5203446 (= (Exists!1972 lambda!260781) (Exists!1972 lambda!260782))))

(declare-fun lt!2141338 () Unit!152430)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!626 (Regex!14791 Regex!14791 List!60674) Unit!152430)

(assert (=> b!5203446 (= lt!2141338 (lemmaExistCutMatchRandMatchRSpecEquivalent!626 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326))))

(assert (=> b!5203446 (= lt!2141337 (Exists!1972 lambda!260781))))

(declare-datatypes ((tuple2!63980 0))(
  ( (tuple2!63981 (_1!35293 List!60674) (_2!35293 List!60674)) )
))
(declare-datatypes ((Option!14902 0))(
  ( (None!14901) (Some!14901 (v!50930 tuple2!63980)) )
))
(declare-fun isDefined!11605 (Option!14902) Bool)

(declare-fun findConcatSeparation!1316 (Regex!14791 Regex!14791 List!60674 List!60674 List!60674) Option!14902)

(assert (=> b!5203446 (= lt!2141337 (isDefined!11605 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326)))))

(declare-fun lt!2141340 () Unit!152430)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1080 (Regex!14791 Regex!14791 List!60674) Unit!152430)

(assert (=> b!5203446 (= lt!2141340 (lemmaFindConcatSeparationEquivalentToExists!1080 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326))))

(declare-fun b!5203447 () Bool)

(declare-fun Unit!152433 () Unit!152430)

(assert (=> b!5203447 (= e!3239947 Unit!152433)))

(declare-fun lt!2141334 () (InoxSet Context!8350))

(declare-fun lt!2141341 () (InoxSet Context!8350))

(declare-fun lt!2141342 () Unit!152430)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!28 ((InoxSet Context!8350) (InoxSet Context!8350) List!60674) Unit!152430)

(assert (=> b!5203447 (= lt!2141342 (lemmaZipperConcatMatchesSameAsBothZippers!28 lt!2141334 lt!2141341 (t!373829 s!2326)))))

(declare-fun res!2210661 () Bool)

(declare-fun matchZipper!1035 ((InoxSet Context!8350) List!60674) Bool)

(assert (=> b!5203447 (= res!2210661 (matchZipper!1035 lt!2141334 (t!373829 s!2326)))))

(declare-fun e!3239940 () Bool)

(assert (=> b!5203447 (=> res!2210661 e!3239940)))

(assert (=> b!5203447 (= (matchZipper!1035 ((_ map or) lt!2141334 lt!2141341) (t!373829 s!2326)) e!3239940)))

(declare-fun e!3239943 () Bool)

(assert (=> b!5203448 (= e!3239939 e!3239943)))

(declare-fun res!2210662 () Bool)

(assert (=> b!5203448 (=> res!2210662 e!3239943)))

(assert (=> b!5203448 (= res!2210662 (or (and ((_ is ElementMatch!14791) (regOne!30094 r!7292)) (= (c!896858 (regOne!30094 r!7292)) (h!66998 s!2326))) (not ((_ is Union!14791) (regOne!30094 r!7292)))))))

(declare-fun lt!2141335 () Unit!152430)

(assert (=> b!5203448 (= lt!2141335 e!3239947)))

(declare-fun c!896857 () Bool)

(declare-fun nullable!4960 (Regex!14791) Bool)

(assert (=> b!5203448 (= c!896857 (nullable!4960 (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun lambda!260783 () Int)

(declare-fun flatMap!518 ((InoxSet Context!8350) Int) (InoxSet Context!8350))

(declare-fun derivationStepZipperUp!163 (Context!8350 C!29852) (InoxSet Context!8350))

(assert (=> b!5203448 (= (flatMap!518 z!1189 lambda!260783) (derivationStepZipperUp!163 (h!66997 zl!343) (h!66998 s!2326)))))

(declare-fun lt!2141336 () Unit!152430)

(declare-fun lemmaFlatMapOnSingletonSet!50 ((InoxSet Context!8350) Context!8350 Int) Unit!152430)

(assert (=> b!5203448 (= lt!2141336 (lemmaFlatMapOnSingletonSet!50 z!1189 (h!66997 zl!343) lambda!260783))))

(declare-fun lt!2141333 () Context!8350)

(assert (=> b!5203448 (= lt!2141341 (derivationStepZipperUp!163 lt!2141333 (h!66998 s!2326)))))

(declare-fun derivationStepZipperDown!239 (Regex!14791 Context!8350 C!29852) (InoxSet Context!8350))

(assert (=> b!5203448 (= lt!2141334 (derivationStepZipperDown!239 (h!66996 (exprs!4675 (h!66997 zl!343))) lt!2141333 (h!66998 s!2326)))))

(assert (=> b!5203448 (= lt!2141333 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun lt!2141332 () (InoxSet Context!8350))

(assert (=> b!5203448 (= lt!2141332 (derivationStepZipperUp!163 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))) (h!66998 s!2326)))))

(declare-fun b!5203449 () Bool)

(declare-fun res!2210651 () Bool)

(assert (=> b!5203449 (=> (not res!2210651) (not e!3239941))))

(declare-fun toList!8575 ((InoxSet Context!8350)) List!60673)

(assert (=> b!5203449 (= res!2210651 (= (toList!8575 z!1189) zl!343))))

(declare-fun tp!1459518 () Bool)

(declare-fun setNonEmpty!33024 () Bool)

(declare-fun setElem!33024 () Context!8350)

(assert (=> setNonEmpty!33024 (= setRes!33024 (and tp!1459518 (inv!80224 setElem!33024) e!3239942))))

(declare-fun setRest!33024 () (InoxSet Context!8350))

(assert (=> setNonEmpty!33024 (= z!1189 ((_ map or) (store ((as const (Array Context!8350 Bool)) false) setElem!33024 true) setRest!33024))))

(declare-fun b!5203450 () Bool)

(declare-fun res!2210659 () Bool)

(assert (=> b!5203450 (=> res!2210659 e!3239945)))

(assert (=> b!5203450 (= res!2210659 (or ((_ is EmptyExpr!14791) r!7292) ((_ is EmptyLang!14791) r!7292) ((_ is ElementMatch!14791) r!7292) ((_ is Union!14791) r!7292) (not ((_ is Concat!23636) r!7292))))))

(declare-fun b!5203451 () Bool)

(assert (=> b!5203451 (= e!3239940 (matchZipper!1035 lt!2141341 (t!373829 s!2326)))))

(declare-fun b!5203452 () Bool)

(declare-fun tp!1459517 () Bool)

(assert (=> b!5203452 (= e!3239949 tp!1459517)))

(declare-fun b!5203453 () Bool)

(declare-fun res!2210655 () Bool)

(assert (=> b!5203453 (=> res!2210655 e!3239945)))

(declare-fun generalisedConcat!460 (List!60672) Regex!14791)

(assert (=> b!5203453 (= res!2210655 (not (= r!7292 (generalisedConcat!460 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5203454 () Bool)

(declare-fun tp!1459512 () Bool)

(declare-fun tp!1459521 () Bool)

(assert (=> b!5203454 (= e!3239949 (and tp!1459512 tp!1459521))))

(declare-fun b!5203455 () Bool)

(declare-fun tp_is_empty!38835 () Bool)

(assert (=> b!5203455 (= e!3239949 tp_is_empty!38835)))

(declare-fun b!5203456 () Bool)

(declare-fun res!2210654 () Bool)

(assert (=> b!5203456 (=> res!2210654 e!3239939)))

(declare-fun isEmpty!32454 (List!60672) Bool)

(assert (=> b!5203456 (= res!2210654 (isEmpty!32454 (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5203457 () Bool)

(declare-fun tp!1459513 () Bool)

(assert (=> b!5203457 (= e!3239944 tp!1459513)))

(declare-fun b!5203458 () Bool)

(declare-fun res!2210660 () Bool)

(assert (=> b!5203458 (=> res!2210660 e!3239945)))

(declare-fun generalisedUnion!720 (List!60672) Regex!14791)

(declare-fun unfocusZipperList!233 (List!60673) List!60672)

(assert (=> b!5203458 (= res!2210660 (not (= r!7292 (generalisedUnion!720 (unfocusZipperList!233 zl!343)))))))

(declare-fun b!5203459 () Bool)

(declare-fun tp!1459520 () Bool)

(assert (=> b!5203459 (= e!3239948 (and tp_is_empty!38835 tp!1459520))))

(declare-fun b!5203460 () Bool)

(declare-fun res!2210656 () Bool)

(assert (=> b!5203460 (=> (not res!2210656) (not e!3239941))))

(declare-fun unfocusZipper!533 (List!60673) Regex!14791)

(assert (=> b!5203460 (= res!2210656 (= r!7292 (unfocusZipper!533 zl!343)))))

(declare-fun b!5203461 () Bool)

(assert (=> b!5203461 (= e!3239943 (validRegex!6527 (regOne!30095 (regOne!30094 r!7292))))))

(assert (= (and start!550418 res!2210653) b!5203449))

(assert (= (and b!5203449 res!2210651) b!5203460))

(assert (= (and b!5203460 res!2210656) b!5203443))

(assert (= (and b!5203443 (not res!2210658)) b!5203442))

(assert (= (and b!5203442 (not res!2210657)) b!5203453))

(assert (= (and b!5203453 (not res!2210655)) b!5203444))

(assert (= (and b!5203444 (not res!2210650)) b!5203458))

(assert (= (and b!5203458 (not res!2210660)) b!5203450))

(assert (= (and b!5203450 (not res!2210659)) b!5203446))

(assert (= (and b!5203446 (not res!2210652)) b!5203456))

(assert (= (and b!5203456 (not res!2210654)) b!5203448))

(assert (= (and b!5203448 c!896857) b!5203447))

(assert (= (and b!5203448 (not c!896857)) b!5203441))

(assert (= (and b!5203447 (not res!2210661)) b!5203451))

(assert (= (and b!5203448 (not res!2210662)) b!5203461))

(assert (= (and start!550418 ((_ is ElementMatch!14791) r!7292)) b!5203455))

(assert (= (and start!550418 ((_ is Concat!23636) r!7292)) b!5203454))

(assert (= (and start!550418 ((_ is Star!14791) r!7292)) b!5203452))

(assert (= (and start!550418 ((_ is Union!14791) r!7292)) b!5203445))

(assert (= (and start!550418 condSetEmpty!33024) setIsEmpty!33024))

(assert (= (and start!550418 (not condSetEmpty!33024)) setNonEmpty!33024))

(assert (= setNonEmpty!33024 b!5203440))

(assert (= b!5203439 b!5203457))

(assert (= (and start!550418 ((_ is Cons!60549) zl!343)) b!5203439))

(assert (= (and start!550418 ((_ is Cons!60550) s!2326)) b!5203459))

(declare-fun m!6255248 () Bool)

(assert (=> b!5203446 m!6255248))

(declare-fun m!6255250 () Bool)

(assert (=> b!5203446 m!6255250))

(declare-fun m!6255252 () Bool)

(assert (=> b!5203446 m!6255252))

(assert (=> b!5203446 m!6255248))

(declare-fun m!6255254 () Bool)

(assert (=> b!5203446 m!6255254))

(declare-fun m!6255256 () Bool)

(assert (=> b!5203446 m!6255256))

(assert (=> b!5203446 m!6255250))

(declare-fun m!6255258 () Bool)

(assert (=> b!5203446 m!6255258))

(declare-fun m!6255260 () Bool)

(assert (=> b!5203442 m!6255260))

(declare-fun m!6255262 () Bool)

(assert (=> b!5203461 m!6255262))

(declare-fun m!6255264 () Bool)

(assert (=> b!5203453 m!6255264))

(declare-fun m!6255266 () Bool)

(assert (=> start!550418 m!6255266))

(declare-fun m!6255268 () Bool)

(assert (=> b!5203449 m!6255268))

(declare-fun m!6255270 () Bool)

(assert (=> b!5203460 m!6255270))

(declare-fun m!6255272 () Bool)

(assert (=> b!5203439 m!6255272))

(declare-fun m!6255274 () Bool)

(assert (=> b!5203458 m!6255274))

(assert (=> b!5203458 m!6255274))

(declare-fun m!6255276 () Bool)

(assert (=> b!5203458 m!6255276))

(declare-fun m!6255278 () Bool)

(assert (=> b!5203443 m!6255278))

(declare-fun m!6255280 () Bool)

(assert (=> b!5203443 m!6255280))

(declare-fun m!6255282 () Bool)

(assert (=> b!5203443 m!6255282))

(declare-fun m!6255284 () Bool)

(assert (=> b!5203456 m!6255284))

(declare-fun m!6255286 () Bool)

(assert (=> b!5203448 m!6255286))

(declare-fun m!6255288 () Bool)

(assert (=> b!5203448 m!6255288))

(declare-fun m!6255290 () Bool)

(assert (=> b!5203448 m!6255290))

(declare-fun m!6255292 () Bool)

(assert (=> b!5203448 m!6255292))

(declare-fun m!6255294 () Bool)

(assert (=> b!5203448 m!6255294))

(declare-fun m!6255296 () Bool)

(assert (=> b!5203448 m!6255296))

(declare-fun m!6255298 () Bool)

(assert (=> b!5203448 m!6255298))

(declare-fun m!6255300 () Bool)

(assert (=> b!5203451 m!6255300))

(declare-fun m!6255302 () Bool)

(assert (=> setNonEmpty!33024 m!6255302))

(declare-fun m!6255304 () Bool)

(assert (=> b!5203447 m!6255304))

(declare-fun m!6255306 () Bool)

(assert (=> b!5203447 m!6255306))

(declare-fun m!6255308 () Bool)

(assert (=> b!5203447 m!6255308))

(check-sat tp_is_empty!38835 (not start!550418) (not b!5203457) (not b!5203460) (not b!5203452) (not b!5203459) (not b!5203458) (not b!5203461) (not b!5203454) (not b!5203446) (not setNonEmpty!33024) (not b!5203445) (not b!5203449) (not b!5203451) (not b!5203453) (not b!5203443) (not b!5203440) (not b!5203447) (not b!5203456) (not b!5203442) (not b!5203439) (not b!5203448))
(check-sat)
(get-model)

(declare-fun d!1678273 () Bool)

(declare-fun e!3240047 () Bool)

(assert (=> d!1678273 (= (matchZipper!1035 ((_ map or) lt!2141334 lt!2141341) (t!373829 s!2326)) e!3240047)))

(declare-fun res!2210727 () Bool)

(assert (=> d!1678273 (=> res!2210727 e!3240047)))

(assert (=> d!1678273 (= res!2210727 (matchZipper!1035 lt!2141334 (t!373829 s!2326)))))

(declare-fun lt!2141376 () Unit!152430)

(declare-fun choose!38677 ((InoxSet Context!8350) (InoxSet Context!8350) List!60674) Unit!152430)

(assert (=> d!1678273 (= lt!2141376 (choose!38677 lt!2141334 lt!2141341 (t!373829 s!2326)))))

(assert (=> d!1678273 (= (lemmaZipperConcatMatchesSameAsBothZippers!28 lt!2141334 lt!2141341 (t!373829 s!2326)) lt!2141376)))

(declare-fun b!5203622 () Bool)

(assert (=> b!5203622 (= e!3240047 (matchZipper!1035 lt!2141341 (t!373829 s!2326)))))

(assert (= (and d!1678273 (not res!2210727)) b!5203622))

(assert (=> d!1678273 m!6255308))

(assert (=> d!1678273 m!6255306))

(declare-fun m!6255428 () Bool)

(assert (=> d!1678273 m!6255428))

(assert (=> b!5203622 m!6255300))

(assert (=> b!5203447 d!1678273))

(declare-fun d!1678279 () Bool)

(declare-fun c!896924 () Bool)

(declare-fun isEmpty!32457 (List!60674) Bool)

(assert (=> d!1678279 (= c!896924 (isEmpty!32457 (t!373829 s!2326)))))

(declare-fun e!3240074 () Bool)

(assert (=> d!1678279 (= (matchZipper!1035 lt!2141334 (t!373829 s!2326)) e!3240074)))

(declare-fun b!5203669 () Bool)

(declare-fun nullableZipper!1219 ((InoxSet Context!8350)) Bool)

(assert (=> b!5203669 (= e!3240074 (nullableZipper!1219 lt!2141334))))

(declare-fun b!5203670 () Bool)

(declare-fun derivationStepZipper!1063 ((InoxSet Context!8350) C!29852) (InoxSet Context!8350))

(declare-fun head!11157 (List!60674) C!29852)

(declare-fun tail!10254 (List!60674) List!60674)

(assert (=> b!5203670 (= e!3240074 (matchZipper!1035 (derivationStepZipper!1063 lt!2141334 (head!11157 (t!373829 s!2326))) (tail!10254 (t!373829 s!2326))))))

(assert (= (and d!1678279 c!896924) b!5203669))

(assert (= (and d!1678279 (not c!896924)) b!5203670))

(declare-fun m!6255444 () Bool)

(assert (=> d!1678279 m!6255444))

(declare-fun m!6255446 () Bool)

(assert (=> b!5203669 m!6255446))

(declare-fun m!6255448 () Bool)

(assert (=> b!5203670 m!6255448))

(assert (=> b!5203670 m!6255448))

(declare-fun m!6255450 () Bool)

(assert (=> b!5203670 m!6255450))

(declare-fun m!6255452 () Bool)

(assert (=> b!5203670 m!6255452))

(assert (=> b!5203670 m!6255450))

(assert (=> b!5203670 m!6255452))

(declare-fun m!6255454 () Bool)

(assert (=> b!5203670 m!6255454))

(assert (=> b!5203447 d!1678279))

(declare-fun d!1678287 () Bool)

(declare-fun c!896925 () Bool)

(assert (=> d!1678287 (= c!896925 (isEmpty!32457 (t!373829 s!2326)))))

(declare-fun e!3240075 () Bool)

(assert (=> d!1678287 (= (matchZipper!1035 ((_ map or) lt!2141334 lt!2141341) (t!373829 s!2326)) e!3240075)))

(declare-fun b!5203671 () Bool)

(assert (=> b!5203671 (= e!3240075 (nullableZipper!1219 ((_ map or) lt!2141334 lt!2141341)))))

(declare-fun b!5203672 () Bool)

(assert (=> b!5203672 (= e!3240075 (matchZipper!1035 (derivationStepZipper!1063 ((_ map or) lt!2141334 lt!2141341) (head!11157 (t!373829 s!2326))) (tail!10254 (t!373829 s!2326))))))

(assert (= (and d!1678287 c!896925) b!5203671))

(assert (= (and d!1678287 (not c!896925)) b!5203672))

(assert (=> d!1678287 m!6255444))

(declare-fun m!6255456 () Bool)

(assert (=> b!5203671 m!6255456))

(assert (=> b!5203672 m!6255448))

(assert (=> b!5203672 m!6255448))

(declare-fun m!6255458 () Bool)

(assert (=> b!5203672 m!6255458))

(assert (=> b!5203672 m!6255452))

(assert (=> b!5203672 m!6255458))

(assert (=> b!5203672 m!6255452))

(declare-fun m!6255460 () Bool)

(assert (=> b!5203672 m!6255460))

(assert (=> b!5203447 d!1678287))

(declare-fun d!1678289 () Bool)

(assert (=> d!1678289 (= (isEmpty!32454 (t!373827 (exprs!4675 (h!66997 zl!343)))) ((_ is Nil!60548) (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(assert (=> b!5203456 d!1678289))

(declare-fun b!5203746 () Bool)

(declare-fun e!3240122 () Regex!14791)

(declare-fun e!3240119 () Regex!14791)

(assert (=> b!5203746 (= e!3240122 e!3240119)))

(declare-fun c!896952 () Bool)

(assert (=> b!5203746 (= c!896952 ((_ is Cons!60548) (unfocusZipperList!233 zl!343)))))

(declare-fun b!5203747 () Bool)

(declare-fun e!3240121 () Bool)

(declare-fun e!3240123 () Bool)

(assert (=> b!5203747 (= e!3240121 e!3240123)))

(declare-fun c!896953 () Bool)

(declare-fun tail!10255 (List!60672) List!60672)

(assert (=> b!5203747 (= c!896953 (isEmpty!32454 (tail!10255 (unfocusZipperList!233 zl!343))))))

(declare-fun b!5203748 () Bool)

(declare-fun e!3240120 () Bool)

(assert (=> b!5203748 (= e!3240120 e!3240121)))

(declare-fun c!896951 () Bool)

(assert (=> b!5203748 (= c!896951 (isEmpty!32454 (unfocusZipperList!233 zl!343)))))

(declare-fun b!5203749 () Bool)

(declare-fun e!3240124 () Bool)

(assert (=> b!5203749 (= e!3240124 (isEmpty!32454 (t!373827 (unfocusZipperList!233 zl!343))))))

(declare-fun b!5203750 () Bool)

(declare-fun lt!2141385 () Regex!14791)

(declare-fun isEmptyLang!764 (Regex!14791) Bool)

(assert (=> b!5203750 (= e!3240121 (isEmptyLang!764 lt!2141385))))

(declare-fun b!5203751 () Bool)

(assert (=> b!5203751 (= e!3240122 (h!66996 (unfocusZipperList!233 zl!343)))))

(declare-fun b!5203752 () Bool)

(declare-fun isUnion!196 (Regex!14791) Bool)

(assert (=> b!5203752 (= e!3240123 (isUnion!196 lt!2141385))))

(declare-fun b!5203754 () Bool)

(declare-fun head!11158 (List!60672) Regex!14791)

(assert (=> b!5203754 (= e!3240123 (= lt!2141385 (head!11158 (unfocusZipperList!233 zl!343))))))

(declare-fun b!5203755 () Bool)

(assert (=> b!5203755 (= e!3240119 (Union!14791 (h!66996 (unfocusZipperList!233 zl!343)) (generalisedUnion!720 (t!373827 (unfocusZipperList!233 zl!343)))))))

(declare-fun b!5203753 () Bool)

(assert (=> b!5203753 (= e!3240119 EmptyLang!14791)))

(declare-fun d!1678291 () Bool)

(assert (=> d!1678291 e!3240120))

(declare-fun res!2210760 () Bool)

(assert (=> d!1678291 (=> (not res!2210760) (not e!3240120))))

(assert (=> d!1678291 (= res!2210760 (validRegex!6527 lt!2141385))))

(assert (=> d!1678291 (= lt!2141385 e!3240122)))

(declare-fun c!896950 () Bool)

(assert (=> d!1678291 (= c!896950 e!3240124)))

(declare-fun res!2210759 () Bool)

(assert (=> d!1678291 (=> (not res!2210759) (not e!3240124))))

(assert (=> d!1678291 (= res!2210759 ((_ is Cons!60548) (unfocusZipperList!233 zl!343)))))

(declare-fun lambda!260811 () Int)

(declare-fun forall!14227 (List!60672 Int) Bool)

(assert (=> d!1678291 (forall!14227 (unfocusZipperList!233 zl!343) lambda!260811)))

(assert (=> d!1678291 (= (generalisedUnion!720 (unfocusZipperList!233 zl!343)) lt!2141385)))

(assert (= (and d!1678291 res!2210759) b!5203749))

(assert (= (and d!1678291 c!896950) b!5203751))

(assert (= (and d!1678291 (not c!896950)) b!5203746))

(assert (= (and b!5203746 c!896952) b!5203755))

(assert (= (and b!5203746 (not c!896952)) b!5203753))

(assert (= (and d!1678291 res!2210760) b!5203748))

(assert (= (and b!5203748 c!896951) b!5203750))

(assert (= (and b!5203748 (not c!896951)) b!5203747))

(assert (= (and b!5203747 c!896953) b!5203754))

(assert (= (and b!5203747 (not c!896953)) b!5203752))

(declare-fun m!6255496 () Bool)

(assert (=> d!1678291 m!6255496))

(assert (=> d!1678291 m!6255274))

(declare-fun m!6255498 () Bool)

(assert (=> d!1678291 m!6255498))

(declare-fun m!6255500 () Bool)

(assert (=> b!5203755 m!6255500))

(declare-fun m!6255502 () Bool)

(assert (=> b!5203752 m!6255502))

(declare-fun m!6255504 () Bool)

(assert (=> b!5203750 m!6255504))

(assert (=> b!5203747 m!6255274))

(declare-fun m!6255506 () Bool)

(assert (=> b!5203747 m!6255506))

(assert (=> b!5203747 m!6255506))

(declare-fun m!6255508 () Bool)

(assert (=> b!5203747 m!6255508))

(assert (=> b!5203748 m!6255274))

(declare-fun m!6255510 () Bool)

(assert (=> b!5203748 m!6255510))

(declare-fun m!6255512 () Bool)

(assert (=> b!5203749 m!6255512))

(assert (=> b!5203754 m!6255274))

(declare-fun m!6255514 () Bool)

(assert (=> b!5203754 m!6255514))

(assert (=> b!5203458 d!1678291))

(declare-fun bs!1209614 () Bool)

(declare-fun d!1678309 () Bool)

(assert (= bs!1209614 (and d!1678309 d!1678291)))

(declare-fun lambda!260816 () Int)

(assert (=> bs!1209614 (= lambda!260816 lambda!260811)))

(declare-fun lt!2141388 () List!60672)

(assert (=> d!1678309 (forall!14227 lt!2141388 lambda!260816)))

(declare-fun e!3240134 () List!60672)

(assert (=> d!1678309 (= lt!2141388 e!3240134)))

(declare-fun c!896960 () Bool)

(assert (=> d!1678309 (= c!896960 ((_ is Cons!60549) zl!343))))

(assert (=> d!1678309 (= (unfocusZipperList!233 zl!343) lt!2141388)))

(declare-fun b!5203771 () Bool)

(assert (=> b!5203771 (= e!3240134 (Cons!60548 (generalisedConcat!460 (exprs!4675 (h!66997 zl!343))) (unfocusZipperList!233 (t!373828 zl!343))))))

(declare-fun b!5203772 () Bool)

(assert (=> b!5203772 (= e!3240134 Nil!60548)))

(assert (= (and d!1678309 c!896960) b!5203771))

(assert (= (and d!1678309 (not c!896960)) b!5203772))

(declare-fun m!6255524 () Bool)

(assert (=> d!1678309 m!6255524))

(assert (=> b!5203771 m!6255264))

(declare-fun m!6255526 () Bool)

(assert (=> b!5203771 m!6255526))

(assert (=> b!5203458 d!1678309))

(declare-fun bs!1209615 () Bool)

(declare-fun d!1678313 () Bool)

(assert (= bs!1209615 (and d!1678313 d!1678291)))

(declare-fun lambda!260819 () Int)

(assert (=> bs!1209615 (= lambda!260819 lambda!260811)))

(declare-fun bs!1209616 () Bool)

(assert (= bs!1209616 (and d!1678313 d!1678309)))

(assert (=> bs!1209616 (= lambda!260819 lambda!260816)))

(assert (=> d!1678313 (= (inv!80224 (h!66997 zl!343)) (forall!14227 (exprs!4675 (h!66997 zl!343)) lambda!260819))))

(declare-fun bs!1209617 () Bool)

(assert (= bs!1209617 d!1678313))

(declare-fun m!6255528 () Bool)

(assert (=> bs!1209617 m!6255528))

(assert (=> b!5203439 d!1678313))

(declare-fun d!1678315 () Bool)

(declare-fun nullableFct!1371 (Regex!14791) Bool)

(assert (=> d!1678315 (= (nullable!4960 (h!66996 (exprs!4675 (h!66997 zl!343)))) (nullableFct!1371 (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun bs!1209618 () Bool)

(assert (= bs!1209618 d!1678315))

(declare-fun m!6255542 () Bool)

(assert (=> bs!1209618 m!6255542))

(assert (=> b!5203448 d!1678315))

(declare-fun d!1678319 () Bool)

(declare-fun choose!38678 ((InoxSet Context!8350) Int) (InoxSet Context!8350))

(assert (=> d!1678319 (= (flatMap!518 z!1189 lambda!260783) (choose!38678 z!1189 lambda!260783))))

(declare-fun bs!1209619 () Bool)

(assert (= bs!1209619 d!1678319))

(declare-fun m!6255544 () Bool)

(assert (=> bs!1209619 m!6255544))

(assert (=> b!5203448 d!1678319))

(declare-fun d!1678321 () Bool)

(declare-fun dynLambda!23915 (Int Context!8350) (InoxSet Context!8350))

(assert (=> d!1678321 (= (flatMap!518 z!1189 lambda!260783) (dynLambda!23915 lambda!260783 (h!66997 zl!343)))))

(declare-fun lt!2141397 () Unit!152430)

(declare-fun choose!38679 ((InoxSet Context!8350) Context!8350 Int) Unit!152430)

(assert (=> d!1678321 (= lt!2141397 (choose!38679 z!1189 (h!66997 zl!343) lambda!260783))))

(assert (=> d!1678321 (= z!1189 (store ((as const (Array Context!8350 Bool)) false) (h!66997 zl!343) true))))

(assert (=> d!1678321 (= (lemmaFlatMapOnSingletonSet!50 z!1189 (h!66997 zl!343) lambda!260783) lt!2141397)))

(declare-fun b_lambda!201359 () Bool)

(assert (=> (not b_lambda!201359) (not d!1678321)))

(declare-fun bs!1209626 () Bool)

(assert (= bs!1209626 d!1678321))

(assert (=> bs!1209626 m!6255286))

(declare-fun m!6255552 () Bool)

(assert (=> bs!1209626 m!6255552))

(declare-fun m!6255554 () Bool)

(assert (=> bs!1209626 m!6255554))

(declare-fun m!6255556 () Bool)

(assert (=> bs!1209626 m!6255556))

(assert (=> b!5203448 d!1678321))

(declare-fun bm!365871 () Bool)

(declare-fun call!365876 () (InoxSet Context!8350))

(assert (=> bm!365871 (= call!365876 (derivationStepZipperDown!239 (h!66996 (exprs!4675 lt!2141333)) (Context!8351 (t!373827 (exprs!4675 lt!2141333))) (h!66998 s!2326)))))

(declare-fun b!5203879 () Bool)

(declare-fun e!3240187 () (InoxSet Context!8350))

(assert (=> b!5203879 (= e!3240187 ((_ map or) call!365876 (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 lt!2141333))) (h!66998 s!2326))))))

(declare-fun b!5203880 () Bool)

(declare-fun e!3240186 () (InoxSet Context!8350))

(assert (=> b!5203880 (= e!3240187 e!3240186)))

(declare-fun c!896975 () Bool)

(assert (=> b!5203880 (= c!896975 ((_ is Cons!60548) (exprs!4675 lt!2141333)))))

(declare-fun d!1678325 () Bool)

(declare-fun c!896974 () Bool)

(declare-fun e!3240185 () Bool)

(assert (=> d!1678325 (= c!896974 e!3240185)))

(declare-fun res!2210790 () Bool)

(assert (=> d!1678325 (=> (not res!2210790) (not e!3240185))))

(assert (=> d!1678325 (= res!2210790 ((_ is Cons!60548) (exprs!4675 lt!2141333)))))

(assert (=> d!1678325 (= (derivationStepZipperUp!163 lt!2141333 (h!66998 s!2326)) e!3240187)))

(declare-fun b!5203881 () Bool)

(assert (=> b!5203881 (= e!3240186 call!365876)))

(declare-fun b!5203882 () Bool)

(assert (=> b!5203882 (= e!3240185 (nullable!4960 (h!66996 (exprs!4675 lt!2141333))))))

(declare-fun b!5203883 () Bool)

(assert (=> b!5203883 (= e!3240186 ((as const (Array Context!8350 Bool)) false))))

(assert (= (and d!1678325 res!2210790) b!5203882))

(assert (= (and d!1678325 c!896974) b!5203879))

(assert (= (and d!1678325 (not c!896974)) b!5203880))

(assert (= (and b!5203880 c!896975) b!5203881))

(assert (= (and b!5203880 (not c!896975)) b!5203883))

(assert (= (or b!5203879 b!5203881) bm!365871))

(declare-fun m!6255560 () Bool)

(assert (=> bm!365871 m!6255560))

(declare-fun m!6255562 () Bool)

(assert (=> b!5203879 m!6255562))

(declare-fun m!6255564 () Bool)

(assert (=> b!5203882 m!6255564))

(assert (=> b!5203448 d!1678325))

(declare-fun bm!365872 () Bool)

(declare-fun call!365877 () (InoxSet Context!8350))

(assert (=> bm!365872 (= call!365877 (derivationStepZipperDown!239 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))) (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (h!66998 s!2326)))))

(declare-fun e!3240190 () (InoxSet Context!8350))

(declare-fun b!5203884 () Bool)

(assert (=> b!5203884 (= e!3240190 ((_ map or) call!365877 (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (h!66998 s!2326))))))

(declare-fun b!5203885 () Bool)

(declare-fun e!3240189 () (InoxSet Context!8350))

(assert (=> b!5203885 (= e!3240190 e!3240189)))

(declare-fun c!896977 () Bool)

(assert (=> b!5203885 (= c!896977 ((_ is Cons!60548) (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))

(declare-fun d!1678329 () Bool)

(declare-fun c!896976 () Bool)

(declare-fun e!3240188 () Bool)

(assert (=> d!1678329 (= c!896976 e!3240188)))

(declare-fun res!2210791 () Bool)

(assert (=> d!1678329 (=> (not res!2210791) (not e!3240188))))

(assert (=> d!1678329 (= res!2210791 ((_ is Cons!60548) (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))

(assert (=> d!1678329 (= (derivationStepZipperUp!163 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))) (h!66998 s!2326)) e!3240190)))

(declare-fun b!5203886 () Bool)

(assert (=> b!5203886 (= e!3240189 call!365877)))

(declare-fun b!5203887 () Bool)

(assert (=> b!5203887 (= e!3240188 (nullable!4960 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun b!5203888 () Bool)

(assert (=> b!5203888 (= e!3240189 ((as const (Array Context!8350 Bool)) false))))

(assert (= (and d!1678329 res!2210791) b!5203887))

(assert (= (and d!1678329 c!896976) b!5203884))

(assert (= (and d!1678329 (not c!896976)) b!5203885))

(assert (= (and b!5203885 c!896977) b!5203886))

(assert (= (and b!5203885 (not c!896977)) b!5203888))

(assert (= (or b!5203884 b!5203886) bm!365872))

(declare-fun m!6255566 () Bool)

(assert (=> bm!365872 m!6255566))

(declare-fun m!6255568 () Bool)

(assert (=> b!5203884 m!6255568))

(declare-fun m!6255570 () Bool)

(assert (=> b!5203887 m!6255570))

(assert (=> b!5203448 d!1678329))

(declare-fun c!896992 () Bool)

(declare-fun bm!365885 () Bool)

(declare-fun call!365894 () List!60672)

(declare-fun call!365892 () (InoxSet Context!8350))

(assert (=> bm!365885 (= call!365892 (derivationStepZipperDown!239 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))) (ite c!896992 lt!2141333 (Context!8351 call!365894)) (h!66998 s!2326)))))

(declare-fun b!5203911 () Bool)

(declare-fun e!3240208 () (InoxSet Context!8350))

(declare-fun call!365893 () (InoxSet Context!8350))

(assert (=> b!5203911 (= e!3240208 call!365893)))

(declare-fun b!5203912 () Bool)

(declare-fun e!3240203 () (InoxSet Context!8350))

(declare-fun call!365890 () (InoxSet Context!8350))

(assert (=> b!5203912 (= e!3240203 ((_ map or) call!365892 call!365890))))

(declare-fun c!896990 () Bool)

(declare-fun bm!365886 () Bool)

(declare-fun call!365895 () List!60672)

(declare-fun call!365891 () (InoxSet Context!8350))

(declare-fun c!896991 () Bool)

(assert (=> bm!365886 (= call!365891 (derivationStepZipperDown!239 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343))))))) (ite (or c!896992 c!896991) lt!2141333 (Context!8351 call!365895)) (h!66998 s!2326)))))

(declare-fun b!5203913 () Bool)

(declare-fun e!3240204 () (InoxSet Context!8350))

(assert (=> b!5203913 (= e!3240204 call!365893)))

(declare-fun b!5203914 () Bool)

(assert (=> b!5203914 (= e!3240204 ((as const (Array Context!8350 Bool)) false))))

(declare-fun b!5203915 () Bool)

(declare-fun e!3240207 () Bool)

(assert (=> b!5203915 (= c!896991 e!3240207)))

(declare-fun res!2210794 () Bool)

(assert (=> b!5203915 (=> (not res!2210794) (not e!3240207))))

(assert (=> b!5203915 (= res!2210794 ((_ is Concat!23636) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun e!3240206 () (InoxSet Context!8350))

(assert (=> b!5203915 (= e!3240206 e!3240203)))

(declare-fun b!5203916 () Bool)

(declare-fun c!896989 () Bool)

(assert (=> b!5203916 (= c!896989 ((_ is Star!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(assert (=> b!5203916 (= e!3240208 e!3240204)))

(declare-fun d!1678331 () Bool)

(declare-fun c!896988 () Bool)

(assert (=> d!1678331 (= c!896988 (and ((_ is ElementMatch!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))) (= (c!896858 (h!66996 (exprs!4675 (h!66997 zl!343)))) (h!66998 s!2326))))))

(declare-fun e!3240205 () (InoxSet Context!8350))

(assert (=> d!1678331 (= (derivationStepZipperDown!239 (h!66996 (exprs!4675 (h!66997 zl!343))) lt!2141333 (h!66998 s!2326)) e!3240205)))

(declare-fun bm!365887 () Bool)

(declare-fun $colon$colon!1269 (List!60672 Regex!14791) List!60672)

(assert (=> bm!365887 (= call!365894 ($colon$colon!1269 (exprs!4675 lt!2141333) (ite (or c!896991 c!896990) (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (h!66996 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5203917 () Bool)

(assert (=> b!5203917 (= e!3240207 (nullable!4960 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5203918 () Bool)

(assert (=> b!5203918 (= e!3240203 e!3240208)))

(assert (=> b!5203918 (= c!896990 ((_ is Concat!23636) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5203919 () Bool)

(assert (=> b!5203919 (= e!3240205 (store ((as const (Array Context!8350 Bool)) false) lt!2141333 true))))

(declare-fun b!5203920 () Bool)

(assert (=> b!5203920 (= e!3240205 e!3240206)))

(assert (=> b!5203920 (= c!896992 ((_ is Union!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun bm!365888 () Bool)

(assert (=> bm!365888 (= call!365893 call!365890)))

(declare-fun b!5203921 () Bool)

(assert (=> b!5203921 (= e!3240206 ((_ map or) call!365891 call!365892))))

(declare-fun bm!365889 () Bool)

(assert (=> bm!365889 (= call!365895 call!365894)))

(declare-fun bm!365890 () Bool)

(assert (=> bm!365890 (= call!365890 call!365891)))

(assert (= (and d!1678331 c!896988) b!5203919))

(assert (= (and d!1678331 (not c!896988)) b!5203920))

(assert (= (and b!5203920 c!896992) b!5203921))

(assert (= (and b!5203920 (not c!896992)) b!5203915))

(assert (= (and b!5203915 res!2210794) b!5203917))

(assert (= (and b!5203915 c!896991) b!5203912))

(assert (= (and b!5203915 (not c!896991)) b!5203918))

(assert (= (and b!5203918 c!896990) b!5203911))

(assert (= (and b!5203918 (not c!896990)) b!5203916))

(assert (= (and b!5203916 c!896989) b!5203913))

(assert (= (and b!5203916 (not c!896989)) b!5203914))

(assert (= (or b!5203911 b!5203913) bm!365889))

(assert (= (or b!5203911 b!5203913) bm!365888))

(assert (= (or b!5203912 bm!365889) bm!365887))

(assert (= (or b!5203912 bm!365888) bm!365890))

(assert (= (or b!5203921 b!5203912) bm!365885))

(assert (= (or b!5203921 bm!365890) bm!365886))

(declare-fun m!6255572 () Bool)

(assert (=> bm!365886 m!6255572))

(declare-fun m!6255574 () Bool)

(assert (=> b!5203917 m!6255574))

(declare-fun m!6255576 () Bool)

(assert (=> bm!365885 m!6255576))

(declare-fun m!6255578 () Bool)

(assert (=> bm!365887 m!6255578))

(declare-fun m!6255580 () Bool)

(assert (=> b!5203919 m!6255580))

(assert (=> b!5203448 d!1678331))

(declare-fun bm!365891 () Bool)

(declare-fun call!365896 () (InoxSet Context!8350))

(assert (=> bm!365891 (= call!365896 (derivationStepZipperDown!239 (h!66996 (exprs!4675 (h!66997 zl!343))) (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))) (h!66998 s!2326)))))

(declare-fun e!3240211 () (InoxSet Context!8350))

(declare-fun b!5203922 () Bool)

(assert (=> b!5203922 (= e!3240211 ((_ map or) call!365896 (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))) (h!66998 s!2326))))))

(declare-fun b!5203923 () Bool)

(declare-fun e!3240210 () (InoxSet Context!8350))

(assert (=> b!5203923 (= e!3240211 e!3240210)))

(declare-fun c!896994 () Bool)

(assert (=> b!5203923 (= c!896994 ((_ is Cons!60548) (exprs!4675 (h!66997 zl!343))))))

(declare-fun d!1678333 () Bool)

(declare-fun c!896993 () Bool)

(declare-fun e!3240209 () Bool)

(assert (=> d!1678333 (= c!896993 e!3240209)))

(declare-fun res!2210795 () Bool)

(assert (=> d!1678333 (=> (not res!2210795) (not e!3240209))))

(assert (=> d!1678333 (= res!2210795 ((_ is Cons!60548) (exprs!4675 (h!66997 zl!343))))))

(assert (=> d!1678333 (= (derivationStepZipperUp!163 (h!66997 zl!343) (h!66998 s!2326)) e!3240211)))

(declare-fun b!5203924 () Bool)

(assert (=> b!5203924 (= e!3240210 call!365896)))

(declare-fun b!5203925 () Bool)

(assert (=> b!5203925 (= e!3240209 (nullable!4960 (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5203926 () Bool)

(assert (=> b!5203926 (= e!3240210 ((as const (Array Context!8350 Bool)) false))))

(assert (= (and d!1678333 res!2210795) b!5203925))

(assert (= (and d!1678333 c!896993) b!5203922))

(assert (= (and d!1678333 (not c!896993)) b!5203923))

(assert (= (and b!5203923 c!896994) b!5203924))

(assert (= (and b!5203923 (not c!896994)) b!5203926))

(assert (= (or b!5203922 b!5203924) bm!365891))

(declare-fun m!6255582 () Bool)

(assert (=> bm!365891 m!6255582))

(declare-fun m!6255584 () Bool)

(assert (=> b!5203922 m!6255584))

(assert (=> b!5203925 m!6255292))

(assert (=> b!5203448 d!1678333))

(declare-fun bs!1209628 () Bool)

(declare-fun d!1678335 () Bool)

(assert (= bs!1209628 (and d!1678335 d!1678291)))

(declare-fun lambda!260821 () Int)

(assert (=> bs!1209628 (= lambda!260821 lambda!260811)))

(declare-fun bs!1209629 () Bool)

(assert (= bs!1209629 (and d!1678335 d!1678309)))

(assert (=> bs!1209629 (= lambda!260821 lambda!260816)))

(declare-fun bs!1209630 () Bool)

(assert (= bs!1209630 (and d!1678335 d!1678313)))

(assert (=> bs!1209630 (= lambda!260821 lambda!260819)))

(assert (=> d!1678335 (= (inv!80224 setElem!33024) (forall!14227 (exprs!4675 setElem!33024) lambda!260821))))

(declare-fun bs!1209631 () Bool)

(assert (= bs!1209631 d!1678335))

(declare-fun m!6255586 () Bool)

(assert (=> bs!1209631 m!6255586))

(assert (=> setNonEmpty!33024 d!1678335))

(declare-fun d!1678337 () Bool)

(declare-fun e!3240214 () Bool)

(assert (=> d!1678337 e!3240214))

(declare-fun res!2210798 () Bool)

(assert (=> d!1678337 (=> (not res!2210798) (not e!3240214))))

(declare-fun lt!2141400 () List!60673)

(declare-fun noDuplicate!1175 (List!60673) Bool)

(assert (=> d!1678337 (= res!2210798 (noDuplicate!1175 lt!2141400))))

(declare-fun choose!38680 ((InoxSet Context!8350)) List!60673)

(assert (=> d!1678337 (= lt!2141400 (choose!38680 z!1189))))

(assert (=> d!1678337 (= (toList!8575 z!1189) lt!2141400)))

(declare-fun b!5203929 () Bool)

(declare-fun content!10715 (List!60673) (InoxSet Context!8350))

(assert (=> b!5203929 (= e!3240214 (= (content!10715 lt!2141400) z!1189))))

(assert (= (and d!1678337 res!2210798) b!5203929))

(declare-fun m!6255588 () Bool)

(assert (=> d!1678337 m!6255588))

(declare-fun m!6255590 () Bool)

(assert (=> d!1678337 m!6255590))

(declare-fun m!6255592 () Bool)

(assert (=> b!5203929 m!6255592))

(assert (=> b!5203449 d!1678337))

(declare-fun b!5203948 () Bool)

(declare-fun e!3240229 () Bool)

(declare-fun e!3240235 () Bool)

(assert (=> b!5203948 (= e!3240229 e!3240235)))

(declare-fun res!2210812 () Bool)

(assert (=> b!5203948 (= res!2210812 (not (nullable!4960 (reg!15120 (regOne!30095 (regOne!30094 r!7292))))))))

(assert (=> b!5203948 (=> (not res!2210812) (not e!3240235))))

(declare-fun d!1678339 () Bool)

(declare-fun res!2210811 () Bool)

(declare-fun e!3240231 () Bool)

(assert (=> d!1678339 (=> res!2210811 e!3240231)))

(assert (=> d!1678339 (= res!2210811 ((_ is ElementMatch!14791) (regOne!30095 (regOne!30094 r!7292))))))

(assert (=> d!1678339 (= (validRegex!6527 (regOne!30095 (regOne!30094 r!7292))) e!3240231)))

(declare-fun c!897000 () Bool)

(declare-fun bm!365898 () Bool)

(declare-fun c!896999 () Bool)

(declare-fun call!365904 () Bool)

(assert (=> bm!365898 (= call!365904 (validRegex!6527 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))))))

(declare-fun b!5203949 () Bool)

(declare-fun e!3240232 () Bool)

(assert (=> b!5203949 (= e!3240229 e!3240232)))

(assert (=> b!5203949 (= c!897000 ((_ is Union!14791) (regOne!30095 (regOne!30094 r!7292))))))

(declare-fun b!5203950 () Bool)

(declare-fun e!3240230 () Bool)

(declare-fun call!365903 () Bool)

(assert (=> b!5203950 (= e!3240230 call!365903)))

(declare-fun b!5203951 () Bool)

(declare-fun res!2210813 () Bool)

(assert (=> b!5203951 (=> (not res!2210813) (not e!3240230))))

(declare-fun call!365905 () Bool)

(assert (=> b!5203951 (= res!2210813 call!365905)))

(assert (=> b!5203951 (= e!3240232 e!3240230)))

(declare-fun bm!365899 () Bool)

(assert (=> bm!365899 (= call!365905 (validRegex!6527 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))))))

(declare-fun b!5203952 () Bool)

(assert (=> b!5203952 (= e!3240231 e!3240229)))

(assert (=> b!5203952 (= c!896999 ((_ is Star!14791) (regOne!30095 (regOne!30094 r!7292))))))

(declare-fun b!5203953 () Bool)

(declare-fun e!3240234 () Bool)

(declare-fun e!3240233 () Bool)

(assert (=> b!5203953 (= e!3240234 e!3240233)))

(declare-fun res!2210810 () Bool)

(assert (=> b!5203953 (=> (not res!2210810) (not e!3240233))))

(assert (=> b!5203953 (= res!2210810 call!365905)))

(declare-fun b!5203954 () Bool)

(declare-fun res!2210809 () Bool)

(assert (=> b!5203954 (=> res!2210809 e!3240234)))

(assert (=> b!5203954 (= res!2210809 (not ((_ is Concat!23636) (regOne!30095 (regOne!30094 r!7292)))))))

(assert (=> b!5203954 (= e!3240232 e!3240234)))

(declare-fun b!5203955 () Bool)

(assert (=> b!5203955 (= e!3240235 call!365904)))

(declare-fun bm!365900 () Bool)

(assert (=> bm!365900 (= call!365903 call!365904)))

(declare-fun b!5203956 () Bool)

(assert (=> b!5203956 (= e!3240233 call!365903)))

(assert (= (and d!1678339 (not res!2210811)) b!5203952))

(assert (= (and b!5203952 c!896999) b!5203948))

(assert (= (and b!5203952 (not c!896999)) b!5203949))

(assert (= (and b!5203948 res!2210812) b!5203955))

(assert (= (and b!5203949 c!897000) b!5203951))

(assert (= (and b!5203949 (not c!897000)) b!5203954))

(assert (= (and b!5203951 res!2210813) b!5203950))

(assert (= (and b!5203954 (not res!2210809)) b!5203953))

(assert (= (and b!5203953 res!2210810) b!5203956))

(assert (= (or b!5203950 b!5203956) bm!365900))

(assert (= (or b!5203951 b!5203953) bm!365899))

(assert (= (or b!5203955 bm!365900) bm!365898))

(declare-fun m!6255594 () Bool)

(assert (=> b!5203948 m!6255594))

(declare-fun m!6255596 () Bool)

(assert (=> bm!365898 m!6255596))

(declare-fun m!6255598 () Bool)

(assert (=> bm!365899 m!6255598))

(assert (=> b!5203461 d!1678339))

(declare-fun d!1678341 () Bool)

(declare-fun lt!2141403 () Regex!14791)

(assert (=> d!1678341 (validRegex!6527 lt!2141403)))

(assert (=> d!1678341 (= lt!2141403 (generalisedUnion!720 (unfocusZipperList!233 zl!343)))))

(assert (=> d!1678341 (= (unfocusZipper!533 zl!343) lt!2141403)))

(declare-fun bs!1209632 () Bool)

(assert (= bs!1209632 d!1678341))

(declare-fun m!6255600 () Bool)

(assert (=> bs!1209632 m!6255600))

(assert (=> bs!1209632 m!6255274))

(assert (=> bs!1209632 m!6255274))

(assert (=> bs!1209632 m!6255276))

(assert (=> b!5203460 d!1678341))

(declare-fun bs!1209633 () Bool)

(declare-fun b!5203997 () Bool)

(assert (= bs!1209633 (and b!5203997 b!5203446)))

(declare-fun lambda!260826 () Int)

(assert (=> bs!1209633 (not (= lambda!260826 lambda!260781))))

(assert (=> bs!1209633 (not (= lambda!260826 lambda!260782))))

(assert (=> b!5203997 true))

(assert (=> b!5203997 true))

(declare-fun bs!1209634 () Bool)

(declare-fun b!5203992 () Bool)

(assert (= bs!1209634 (and b!5203992 b!5203446)))

(declare-fun lambda!260827 () Int)

(assert (=> bs!1209634 (not (= lambda!260827 lambda!260781))))

(assert (=> bs!1209634 (= lambda!260827 lambda!260782)))

(declare-fun bs!1209635 () Bool)

(assert (= bs!1209635 (and b!5203992 b!5203997)))

(assert (=> bs!1209635 (not (= lambda!260827 lambda!260826))))

(assert (=> b!5203992 true))

(assert (=> b!5203992 true))

(declare-fun b!5203989 () Bool)

(declare-fun c!897012 () Bool)

(assert (=> b!5203989 (= c!897012 ((_ is Union!14791) r!7292))))

(declare-fun e!3240256 () Bool)

(declare-fun e!3240254 () Bool)

(assert (=> b!5203989 (= e!3240256 e!3240254)))

(declare-fun d!1678343 () Bool)

(declare-fun c!897010 () Bool)

(assert (=> d!1678343 (= c!897010 ((_ is EmptyExpr!14791) r!7292))))

(declare-fun e!3240260 () Bool)

(assert (=> d!1678343 (= (matchRSpec!1894 r!7292 s!2326) e!3240260)))

(declare-fun bm!365905 () Bool)

(declare-fun call!365911 () Bool)

(assert (=> bm!365905 (= call!365911 (isEmpty!32457 s!2326))))

(declare-fun b!5203990 () Bool)

(declare-fun e!3240258 () Bool)

(assert (=> b!5203990 (= e!3240260 e!3240258)))

(declare-fun res!2210832 () Bool)

(assert (=> b!5203990 (= res!2210832 (not ((_ is EmptyLang!14791) r!7292)))))

(assert (=> b!5203990 (=> (not res!2210832) (not e!3240258))))

(declare-fun b!5203991 () Bool)

(declare-fun e!3240259 () Bool)

(assert (=> b!5203991 (= e!3240259 (matchRSpec!1894 (regTwo!30095 r!7292) s!2326))))

(declare-fun e!3240257 () Bool)

(declare-fun call!365910 () Bool)

(assert (=> b!5203992 (= e!3240257 call!365910)))

(declare-fun b!5203993 () Bool)

(assert (=> b!5203993 (= e!3240254 e!3240257)))

(declare-fun c!897009 () Bool)

(assert (=> b!5203993 (= c!897009 ((_ is Star!14791) r!7292))))

(declare-fun b!5203994 () Bool)

(assert (=> b!5203994 (= e!3240260 call!365911)))

(declare-fun bm!365906 () Bool)

(assert (=> bm!365906 (= call!365910 (Exists!1972 (ite c!897009 lambda!260826 lambda!260827)))))

(declare-fun b!5203995 () Bool)

(declare-fun c!897011 () Bool)

(assert (=> b!5203995 (= c!897011 ((_ is ElementMatch!14791) r!7292))))

(assert (=> b!5203995 (= e!3240258 e!3240256)))

(declare-fun b!5203996 () Bool)

(declare-fun res!2210831 () Bool)

(declare-fun e!3240255 () Bool)

(assert (=> b!5203996 (=> res!2210831 e!3240255)))

(assert (=> b!5203996 (= res!2210831 call!365911)))

(assert (=> b!5203996 (= e!3240257 e!3240255)))

(assert (=> b!5203997 (= e!3240255 call!365910)))

(declare-fun b!5203998 () Bool)

(assert (=> b!5203998 (= e!3240256 (= s!2326 (Cons!60550 (c!896858 r!7292) Nil!60550)))))

(declare-fun b!5203999 () Bool)

(assert (=> b!5203999 (= e!3240254 e!3240259)))

(declare-fun res!2210830 () Bool)

(assert (=> b!5203999 (= res!2210830 (matchRSpec!1894 (regOne!30095 r!7292) s!2326))))

(assert (=> b!5203999 (=> res!2210830 e!3240259)))

(assert (= (and d!1678343 c!897010) b!5203994))

(assert (= (and d!1678343 (not c!897010)) b!5203990))

(assert (= (and b!5203990 res!2210832) b!5203995))

(assert (= (and b!5203995 c!897011) b!5203998))

(assert (= (and b!5203995 (not c!897011)) b!5203989))

(assert (= (and b!5203989 c!897012) b!5203999))

(assert (= (and b!5203989 (not c!897012)) b!5203993))

(assert (= (and b!5203999 (not res!2210830)) b!5203991))

(assert (= (and b!5203993 c!897009) b!5203996))

(assert (= (and b!5203993 (not c!897009)) b!5203992))

(assert (= (and b!5203996 (not res!2210831)) b!5203997))

(assert (= (or b!5203997 b!5203992) bm!365906))

(assert (= (or b!5203994 b!5203996) bm!365905))

(declare-fun m!6255602 () Bool)

(assert (=> bm!365905 m!6255602))

(declare-fun m!6255604 () Bool)

(assert (=> b!5203991 m!6255604))

(declare-fun m!6255606 () Bool)

(assert (=> bm!365906 m!6255606))

(declare-fun m!6255608 () Bool)

(assert (=> b!5203999 m!6255608))

(assert (=> b!5203443 d!1678343))

(declare-fun b!5204028 () Bool)

(declare-fun res!2210852 () Bool)

(declare-fun e!3240278 () Bool)

(assert (=> b!5204028 (=> res!2210852 e!3240278)))

(assert (=> b!5204028 (= res!2210852 (not (isEmpty!32457 (tail!10254 s!2326))))))

(declare-fun b!5204029 () Bool)

(declare-fun e!3240281 () Bool)

(assert (=> b!5204029 (= e!3240281 (nullable!4960 r!7292))))

(declare-fun b!5204030 () Bool)

(declare-fun e!3240279 () Bool)

(assert (=> b!5204030 (= e!3240279 e!3240278)))

(declare-fun res!2210854 () Bool)

(assert (=> b!5204030 (=> res!2210854 e!3240278)))

(declare-fun call!365914 () Bool)

(assert (=> b!5204030 (= res!2210854 call!365914)))

(declare-fun b!5204031 () Bool)

(declare-fun e!3240275 () Bool)

(declare-fun lt!2141406 () Bool)

(assert (=> b!5204031 (= e!3240275 (= lt!2141406 call!365914))))

(declare-fun d!1678345 () Bool)

(assert (=> d!1678345 e!3240275))

(declare-fun c!897021 () Bool)

(assert (=> d!1678345 (= c!897021 ((_ is EmptyExpr!14791) r!7292))))

(assert (=> d!1678345 (= lt!2141406 e!3240281)))

(declare-fun c!897019 () Bool)

(assert (=> d!1678345 (= c!897019 (isEmpty!32457 s!2326))))

(assert (=> d!1678345 (validRegex!6527 r!7292)))

(assert (=> d!1678345 (= (matchR!6976 r!7292 s!2326) lt!2141406)))

(declare-fun b!5204032 () Bool)

(declare-fun derivativeStep!4041 (Regex!14791 C!29852) Regex!14791)

(assert (=> b!5204032 (= e!3240281 (matchR!6976 (derivativeStep!4041 r!7292 (head!11157 s!2326)) (tail!10254 s!2326)))))

(declare-fun b!5204033 () Bool)

(declare-fun res!2210851 () Bool)

(declare-fun e!3240280 () Bool)

(assert (=> b!5204033 (=> res!2210851 e!3240280)))

(assert (=> b!5204033 (= res!2210851 (not ((_ is ElementMatch!14791) r!7292)))))

(declare-fun e!3240276 () Bool)

(assert (=> b!5204033 (= e!3240276 e!3240280)))

(declare-fun b!5204034 () Bool)

(assert (=> b!5204034 (= e!3240275 e!3240276)))

(declare-fun c!897020 () Bool)

(assert (=> b!5204034 (= c!897020 ((_ is EmptyLang!14791) r!7292))))

(declare-fun b!5204035 () Bool)

(declare-fun res!2210849 () Bool)

(declare-fun e!3240277 () Bool)

(assert (=> b!5204035 (=> (not res!2210849) (not e!3240277))))

(assert (=> b!5204035 (= res!2210849 (not call!365914))))

(declare-fun bm!365909 () Bool)

(assert (=> bm!365909 (= call!365914 (isEmpty!32457 s!2326))))

(declare-fun b!5204036 () Bool)

(declare-fun res!2210855 () Bool)

(assert (=> b!5204036 (=> (not res!2210855) (not e!3240277))))

(assert (=> b!5204036 (= res!2210855 (isEmpty!32457 (tail!10254 s!2326)))))

(declare-fun b!5204037 () Bool)

(assert (=> b!5204037 (= e!3240278 (not (= (head!11157 s!2326) (c!896858 r!7292))))))

(declare-fun b!5204038 () Bool)

(assert (=> b!5204038 (= e!3240276 (not lt!2141406))))

(declare-fun b!5204039 () Bool)

(declare-fun res!2210850 () Bool)

(assert (=> b!5204039 (=> res!2210850 e!3240280)))

(assert (=> b!5204039 (= res!2210850 e!3240277)))

(declare-fun res!2210856 () Bool)

(assert (=> b!5204039 (=> (not res!2210856) (not e!3240277))))

(assert (=> b!5204039 (= res!2210856 lt!2141406)))

(declare-fun b!5204040 () Bool)

(assert (=> b!5204040 (= e!3240280 e!3240279)))

(declare-fun res!2210853 () Bool)

(assert (=> b!5204040 (=> (not res!2210853) (not e!3240279))))

(assert (=> b!5204040 (= res!2210853 (not lt!2141406))))

(declare-fun b!5204041 () Bool)

(assert (=> b!5204041 (= e!3240277 (= (head!11157 s!2326) (c!896858 r!7292)))))

(assert (= (and d!1678345 c!897019) b!5204029))

(assert (= (and d!1678345 (not c!897019)) b!5204032))

(assert (= (and d!1678345 c!897021) b!5204031))

(assert (= (and d!1678345 (not c!897021)) b!5204034))

(assert (= (and b!5204034 c!897020) b!5204038))

(assert (= (and b!5204034 (not c!897020)) b!5204033))

(assert (= (and b!5204033 (not res!2210851)) b!5204039))

(assert (= (and b!5204039 res!2210856) b!5204035))

(assert (= (and b!5204035 res!2210849) b!5204036))

(assert (= (and b!5204036 res!2210855) b!5204041))

(assert (= (and b!5204039 (not res!2210850)) b!5204040))

(assert (= (and b!5204040 res!2210853) b!5204030))

(assert (= (and b!5204030 (not res!2210854)) b!5204028))

(assert (= (and b!5204028 (not res!2210852)) b!5204037))

(assert (= (or b!5204031 b!5204030 b!5204035) bm!365909))

(declare-fun m!6255610 () Bool)

(assert (=> b!5204032 m!6255610))

(assert (=> b!5204032 m!6255610))

(declare-fun m!6255612 () Bool)

(assert (=> b!5204032 m!6255612))

(declare-fun m!6255614 () Bool)

(assert (=> b!5204032 m!6255614))

(assert (=> b!5204032 m!6255612))

(assert (=> b!5204032 m!6255614))

(declare-fun m!6255616 () Bool)

(assert (=> b!5204032 m!6255616))

(assert (=> b!5204028 m!6255614))

(assert (=> b!5204028 m!6255614))

(declare-fun m!6255618 () Bool)

(assert (=> b!5204028 m!6255618))

(assert (=> b!5204041 m!6255610))

(declare-fun m!6255620 () Bool)

(assert (=> b!5204029 m!6255620))

(assert (=> d!1678345 m!6255602))

(assert (=> d!1678345 m!6255266))

(assert (=> b!5204037 m!6255610))

(assert (=> bm!365909 m!6255602))

(assert (=> b!5204036 m!6255614))

(assert (=> b!5204036 m!6255614))

(assert (=> b!5204036 m!6255618))

(assert (=> b!5203443 d!1678345))

(declare-fun d!1678347 () Bool)

(assert (=> d!1678347 (= (matchR!6976 r!7292 s!2326) (matchRSpec!1894 r!7292 s!2326))))

(declare-fun lt!2141409 () Unit!152430)

(declare-fun choose!38681 (Regex!14791 List!60674) Unit!152430)

(assert (=> d!1678347 (= lt!2141409 (choose!38681 r!7292 s!2326))))

(assert (=> d!1678347 (validRegex!6527 r!7292)))

(assert (=> d!1678347 (= (mainMatchTheorem!1894 r!7292 s!2326) lt!2141409)))

(declare-fun bs!1209636 () Bool)

(assert (= bs!1209636 d!1678347))

(assert (=> bs!1209636 m!6255280))

(assert (=> bs!1209636 m!6255278))

(declare-fun m!6255622 () Bool)

(assert (=> bs!1209636 m!6255622))

(assert (=> bs!1209636 m!6255266))

(assert (=> b!5203443 d!1678347))

(declare-fun d!1678349 () Bool)

(assert (=> d!1678349 (= (isEmpty!32453 (t!373828 zl!343)) ((_ is Nil!60549) (t!373828 zl!343)))))

(assert (=> b!5203442 d!1678349))

(declare-fun d!1678351 () Bool)

(declare-fun c!897022 () Bool)

(assert (=> d!1678351 (= c!897022 (isEmpty!32457 (t!373829 s!2326)))))

(declare-fun e!3240282 () Bool)

(assert (=> d!1678351 (= (matchZipper!1035 lt!2141341 (t!373829 s!2326)) e!3240282)))

(declare-fun b!5204042 () Bool)

(assert (=> b!5204042 (= e!3240282 (nullableZipper!1219 lt!2141341))))

(declare-fun b!5204043 () Bool)

(assert (=> b!5204043 (= e!3240282 (matchZipper!1035 (derivationStepZipper!1063 lt!2141341 (head!11157 (t!373829 s!2326))) (tail!10254 (t!373829 s!2326))))))

(assert (= (and d!1678351 c!897022) b!5204042))

(assert (= (and d!1678351 (not c!897022)) b!5204043))

(assert (=> d!1678351 m!6255444))

(declare-fun m!6255624 () Bool)

(assert (=> b!5204042 m!6255624))

(assert (=> b!5204043 m!6255448))

(assert (=> b!5204043 m!6255448))

(declare-fun m!6255626 () Bool)

(assert (=> b!5204043 m!6255626))

(assert (=> b!5204043 m!6255452))

(assert (=> b!5204043 m!6255626))

(assert (=> b!5204043 m!6255452))

(declare-fun m!6255628 () Bool)

(assert (=> b!5204043 m!6255628))

(assert (=> b!5203451 d!1678351))

(declare-fun bs!1209637 () Bool)

(declare-fun d!1678353 () Bool)

(assert (= bs!1209637 (and d!1678353 d!1678291)))

(declare-fun lambda!260830 () Int)

(assert (=> bs!1209637 (= lambda!260830 lambda!260811)))

(declare-fun bs!1209638 () Bool)

(assert (= bs!1209638 (and d!1678353 d!1678309)))

(assert (=> bs!1209638 (= lambda!260830 lambda!260816)))

(declare-fun bs!1209639 () Bool)

(assert (= bs!1209639 (and d!1678353 d!1678313)))

(assert (=> bs!1209639 (= lambda!260830 lambda!260819)))

(declare-fun bs!1209640 () Bool)

(assert (= bs!1209640 (and d!1678353 d!1678335)))

(assert (=> bs!1209640 (= lambda!260830 lambda!260821)))

(declare-fun e!3240298 () Bool)

(assert (=> d!1678353 e!3240298))

(declare-fun res!2210861 () Bool)

(assert (=> d!1678353 (=> (not res!2210861) (not e!3240298))))

(declare-fun lt!2141412 () Regex!14791)

(assert (=> d!1678353 (= res!2210861 (validRegex!6527 lt!2141412))))

(declare-fun e!3240300 () Regex!14791)

(assert (=> d!1678353 (= lt!2141412 e!3240300)))

(declare-fun c!897033 () Bool)

(declare-fun e!3240299 () Bool)

(assert (=> d!1678353 (= c!897033 e!3240299)))

(declare-fun res!2210862 () Bool)

(assert (=> d!1678353 (=> (not res!2210862) (not e!3240299))))

(assert (=> d!1678353 (= res!2210862 ((_ is Cons!60548) (exprs!4675 (h!66997 zl!343))))))

(assert (=> d!1678353 (forall!14227 (exprs!4675 (h!66997 zl!343)) lambda!260830)))

(assert (=> d!1678353 (= (generalisedConcat!460 (exprs!4675 (h!66997 zl!343))) lt!2141412)))

(declare-fun b!5204064 () Bool)

(declare-fun e!3240297 () Regex!14791)

(assert (=> b!5204064 (= e!3240297 (Concat!23636 (h!66996 (exprs!4675 (h!66997 zl!343))) (generalisedConcat!460 (t!373827 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5204065 () Bool)

(assert (=> b!5204065 (= e!3240300 (h!66996 (exprs!4675 (h!66997 zl!343))))))

(declare-fun b!5204066 () Bool)

(declare-fun e!3240296 () Bool)

(declare-fun e!3240295 () Bool)

(assert (=> b!5204066 (= e!3240296 e!3240295)))

(declare-fun c!897031 () Bool)

(assert (=> b!5204066 (= c!897031 (isEmpty!32454 (tail!10255 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204067 () Bool)

(assert (=> b!5204067 (= e!3240295 (= lt!2141412 (head!11158 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204068 () Bool)

(assert (=> b!5204068 (= e!3240300 e!3240297)))

(declare-fun c!897034 () Bool)

(assert (=> b!5204068 (= c!897034 ((_ is Cons!60548) (exprs!4675 (h!66997 zl!343))))))

(declare-fun b!5204069 () Bool)

(assert (=> b!5204069 (= e!3240297 EmptyExpr!14791)))

(declare-fun b!5204070 () Bool)

(declare-fun isEmptyExpr!755 (Regex!14791) Bool)

(assert (=> b!5204070 (= e!3240296 (isEmptyExpr!755 lt!2141412))))

(declare-fun b!5204071 () Bool)

(declare-fun isConcat!278 (Regex!14791) Bool)

(assert (=> b!5204071 (= e!3240295 (isConcat!278 lt!2141412))))

(declare-fun b!5204072 () Bool)

(assert (=> b!5204072 (= e!3240298 e!3240296)))

(declare-fun c!897032 () Bool)

(assert (=> b!5204072 (= c!897032 (isEmpty!32454 (exprs!4675 (h!66997 zl!343))))))

(declare-fun b!5204073 () Bool)

(assert (=> b!5204073 (= e!3240299 (isEmpty!32454 (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(assert (= (and d!1678353 res!2210862) b!5204073))

(assert (= (and d!1678353 c!897033) b!5204065))

(assert (= (and d!1678353 (not c!897033)) b!5204068))

(assert (= (and b!5204068 c!897034) b!5204064))

(assert (= (and b!5204068 (not c!897034)) b!5204069))

(assert (= (and d!1678353 res!2210861) b!5204072))

(assert (= (and b!5204072 c!897032) b!5204070))

(assert (= (and b!5204072 (not c!897032)) b!5204066))

(assert (= (and b!5204066 c!897031) b!5204067))

(assert (= (and b!5204066 (not c!897031)) b!5204071))

(declare-fun m!6255630 () Bool)

(assert (=> b!5204070 m!6255630))

(assert (=> b!5204073 m!6255284))

(declare-fun m!6255632 () Bool)

(assert (=> b!5204066 m!6255632))

(assert (=> b!5204066 m!6255632))

(declare-fun m!6255634 () Bool)

(assert (=> b!5204066 m!6255634))

(declare-fun m!6255636 () Bool)

(assert (=> b!5204071 m!6255636))

(declare-fun m!6255638 () Bool)

(assert (=> b!5204067 m!6255638))

(declare-fun m!6255640 () Bool)

(assert (=> b!5204072 m!6255640))

(declare-fun m!6255642 () Bool)

(assert (=> d!1678353 m!6255642))

(declare-fun m!6255644 () Bool)

(assert (=> d!1678353 m!6255644))

(declare-fun m!6255646 () Bool)

(assert (=> b!5204064 m!6255646))

(assert (=> b!5203453 d!1678353))

(declare-fun b!5204074 () Bool)

(declare-fun e!3240301 () Bool)

(declare-fun e!3240307 () Bool)

(assert (=> b!5204074 (= e!3240301 e!3240307)))

(declare-fun res!2210866 () Bool)

(assert (=> b!5204074 (= res!2210866 (not (nullable!4960 (reg!15120 r!7292))))))

(assert (=> b!5204074 (=> (not res!2210866) (not e!3240307))))

(declare-fun d!1678355 () Bool)

(declare-fun res!2210865 () Bool)

(declare-fun e!3240303 () Bool)

(assert (=> d!1678355 (=> res!2210865 e!3240303)))

(assert (=> d!1678355 (= res!2210865 ((_ is ElementMatch!14791) r!7292))))

(assert (=> d!1678355 (= (validRegex!6527 r!7292) e!3240303)))

(declare-fun call!365916 () Bool)

(declare-fun c!897036 () Bool)

(declare-fun c!897035 () Bool)

(declare-fun bm!365910 () Bool)

(assert (=> bm!365910 (= call!365916 (validRegex!6527 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))))))

(declare-fun b!5204075 () Bool)

(declare-fun e!3240304 () Bool)

(assert (=> b!5204075 (= e!3240301 e!3240304)))

(assert (=> b!5204075 (= c!897036 ((_ is Union!14791) r!7292))))

(declare-fun b!5204076 () Bool)

(declare-fun e!3240302 () Bool)

(declare-fun call!365915 () Bool)

(assert (=> b!5204076 (= e!3240302 call!365915)))

(declare-fun b!5204077 () Bool)

(declare-fun res!2210867 () Bool)

(assert (=> b!5204077 (=> (not res!2210867) (not e!3240302))))

(declare-fun call!365917 () Bool)

(assert (=> b!5204077 (= res!2210867 call!365917)))

(assert (=> b!5204077 (= e!3240304 e!3240302)))

(declare-fun bm!365911 () Bool)

(assert (=> bm!365911 (= call!365917 (validRegex!6527 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))))))

(declare-fun b!5204078 () Bool)

(assert (=> b!5204078 (= e!3240303 e!3240301)))

(assert (=> b!5204078 (= c!897035 ((_ is Star!14791) r!7292))))

(declare-fun b!5204079 () Bool)

(declare-fun e!3240306 () Bool)

(declare-fun e!3240305 () Bool)

(assert (=> b!5204079 (= e!3240306 e!3240305)))

(declare-fun res!2210864 () Bool)

(assert (=> b!5204079 (=> (not res!2210864) (not e!3240305))))

(assert (=> b!5204079 (= res!2210864 call!365917)))

(declare-fun b!5204080 () Bool)

(declare-fun res!2210863 () Bool)

(assert (=> b!5204080 (=> res!2210863 e!3240306)))

(assert (=> b!5204080 (= res!2210863 (not ((_ is Concat!23636) r!7292)))))

(assert (=> b!5204080 (= e!3240304 e!3240306)))

(declare-fun b!5204081 () Bool)

(assert (=> b!5204081 (= e!3240307 call!365916)))

(declare-fun bm!365912 () Bool)

(assert (=> bm!365912 (= call!365915 call!365916)))

(declare-fun b!5204082 () Bool)

(assert (=> b!5204082 (= e!3240305 call!365915)))

(assert (= (and d!1678355 (not res!2210865)) b!5204078))

(assert (= (and b!5204078 c!897035) b!5204074))

(assert (= (and b!5204078 (not c!897035)) b!5204075))

(assert (= (and b!5204074 res!2210866) b!5204081))

(assert (= (and b!5204075 c!897036) b!5204077))

(assert (= (and b!5204075 (not c!897036)) b!5204080))

(assert (= (and b!5204077 res!2210867) b!5204076))

(assert (= (and b!5204080 (not res!2210863)) b!5204079))

(assert (= (and b!5204079 res!2210864) b!5204082))

(assert (= (or b!5204076 b!5204082) bm!365912))

(assert (= (or b!5204077 b!5204079) bm!365911))

(assert (= (or b!5204081 bm!365912) bm!365910))

(declare-fun m!6255648 () Bool)

(assert (=> b!5204074 m!6255648))

(declare-fun m!6255650 () Bool)

(assert (=> bm!365910 m!6255650))

(declare-fun m!6255652 () Bool)

(assert (=> bm!365911 m!6255652))

(assert (=> start!550418 d!1678355))

(declare-fun d!1678357 () Bool)

(declare-fun choose!38682 (Int) Bool)

(assert (=> d!1678357 (= (Exists!1972 lambda!260781) (choose!38682 lambda!260781))))

(declare-fun bs!1209641 () Bool)

(assert (= bs!1209641 d!1678357))

(declare-fun m!6255654 () Bool)

(assert (=> bs!1209641 m!6255654))

(assert (=> b!5203446 d!1678357))

(declare-fun b!5204101 () Bool)

(declare-fun e!3240322 () Option!14902)

(declare-fun e!3240320 () Option!14902)

(assert (=> b!5204101 (= e!3240322 e!3240320)))

(declare-fun c!897041 () Bool)

(assert (=> b!5204101 (= c!897041 ((_ is Nil!60550) s!2326))))

(declare-fun b!5204102 () Bool)

(assert (=> b!5204102 (= e!3240320 None!14901)))

(declare-fun b!5204103 () Bool)

(declare-fun res!2210880 () Bool)

(declare-fun e!3240321 () Bool)

(assert (=> b!5204103 (=> (not res!2210880) (not e!3240321))))

(declare-fun lt!2141419 () Option!14902)

(declare-fun get!20800 (Option!14902) tuple2!63980)

(assert (=> b!5204103 (= res!2210880 (matchR!6976 (regTwo!30094 r!7292) (_2!35293 (get!20800 lt!2141419))))))

(declare-fun b!5204104 () Bool)

(assert (=> b!5204104 (= e!3240322 (Some!14901 (tuple2!63981 Nil!60550 s!2326)))))

(declare-fun b!5204105 () Bool)

(declare-fun e!3240319 () Bool)

(assert (=> b!5204105 (= e!3240319 (matchR!6976 (regTwo!30094 r!7292) s!2326))))

(declare-fun d!1678359 () Bool)

(declare-fun e!3240318 () Bool)

(assert (=> d!1678359 e!3240318))

(declare-fun res!2210878 () Bool)

(assert (=> d!1678359 (=> res!2210878 e!3240318)))

(assert (=> d!1678359 (= res!2210878 e!3240321)))

(declare-fun res!2210882 () Bool)

(assert (=> d!1678359 (=> (not res!2210882) (not e!3240321))))

(assert (=> d!1678359 (= res!2210882 (isDefined!11605 lt!2141419))))

(assert (=> d!1678359 (= lt!2141419 e!3240322)))

(declare-fun c!897042 () Bool)

(assert (=> d!1678359 (= c!897042 e!3240319)))

(declare-fun res!2210881 () Bool)

(assert (=> d!1678359 (=> (not res!2210881) (not e!3240319))))

(assert (=> d!1678359 (= res!2210881 (matchR!6976 (regOne!30094 r!7292) Nil!60550))))

(assert (=> d!1678359 (validRegex!6527 (regOne!30094 r!7292))))

(assert (=> d!1678359 (= (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326) lt!2141419)))

(declare-fun b!5204106 () Bool)

(assert (=> b!5204106 (= e!3240318 (not (isDefined!11605 lt!2141419)))))

(declare-fun b!5204107 () Bool)

(declare-fun ++!13199 (List!60674 List!60674) List!60674)

(assert (=> b!5204107 (= e!3240321 (= (++!13199 (_1!35293 (get!20800 lt!2141419)) (_2!35293 (get!20800 lt!2141419))) s!2326))))

(declare-fun b!5204108 () Bool)

(declare-fun lt!2141421 () Unit!152430)

(declare-fun lt!2141420 () Unit!152430)

(assert (=> b!5204108 (= lt!2141421 lt!2141420)))

(assert (=> b!5204108 (= (++!13199 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (t!373829 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1614 (List!60674 C!29852 List!60674 List!60674) Unit!152430)

(assert (=> b!5204108 (= lt!2141420 (lemmaMoveElementToOtherListKeepsConcatEq!1614 Nil!60550 (h!66998 s!2326) (t!373829 s!2326) s!2326))))

(assert (=> b!5204108 (= e!3240320 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (t!373829 s!2326) s!2326))))

(declare-fun b!5204109 () Bool)

(declare-fun res!2210879 () Bool)

(assert (=> b!5204109 (=> (not res!2210879) (not e!3240321))))

(assert (=> b!5204109 (= res!2210879 (matchR!6976 (regOne!30094 r!7292) (_1!35293 (get!20800 lt!2141419))))))

(assert (= (and d!1678359 res!2210881) b!5204105))

(assert (= (and d!1678359 c!897042) b!5204104))

(assert (= (and d!1678359 (not c!897042)) b!5204101))

(assert (= (and b!5204101 c!897041) b!5204102))

(assert (= (and b!5204101 (not c!897041)) b!5204108))

(assert (= (and d!1678359 res!2210882) b!5204109))

(assert (= (and b!5204109 res!2210879) b!5204103))

(assert (= (and b!5204103 res!2210880) b!5204107))

(assert (= (and d!1678359 (not res!2210878)) b!5204106))

(declare-fun m!6255656 () Bool)

(assert (=> b!5204106 m!6255656))

(assert (=> d!1678359 m!6255656))

(declare-fun m!6255658 () Bool)

(assert (=> d!1678359 m!6255658))

(declare-fun m!6255660 () Bool)

(assert (=> d!1678359 m!6255660))

(declare-fun m!6255662 () Bool)

(assert (=> b!5204109 m!6255662))

(declare-fun m!6255664 () Bool)

(assert (=> b!5204109 m!6255664))

(assert (=> b!5204103 m!6255662))

(declare-fun m!6255666 () Bool)

(assert (=> b!5204103 m!6255666))

(declare-fun m!6255668 () Bool)

(assert (=> b!5204108 m!6255668))

(assert (=> b!5204108 m!6255668))

(declare-fun m!6255670 () Bool)

(assert (=> b!5204108 m!6255670))

(declare-fun m!6255672 () Bool)

(assert (=> b!5204108 m!6255672))

(assert (=> b!5204108 m!6255668))

(declare-fun m!6255674 () Bool)

(assert (=> b!5204108 m!6255674))

(assert (=> b!5204107 m!6255662))

(declare-fun m!6255676 () Bool)

(assert (=> b!5204107 m!6255676))

(declare-fun m!6255678 () Bool)

(assert (=> b!5204105 m!6255678))

(assert (=> b!5203446 d!1678359))

(declare-fun d!1678361 () Bool)

(assert (=> d!1678361 (= (Exists!1972 lambda!260782) (choose!38682 lambda!260782))))

(declare-fun bs!1209642 () Bool)

(assert (= bs!1209642 d!1678361))

(declare-fun m!6255680 () Bool)

(assert (=> bs!1209642 m!6255680))

(assert (=> b!5203446 d!1678361))

(declare-fun bs!1209643 () Bool)

(declare-fun d!1678363 () Bool)

(assert (= bs!1209643 (and d!1678363 b!5203446)))

(declare-fun lambda!260833 () Int)

(assert (=> bs!1209643 (= lambda!260833 lambda!260781)))

(assert (=> bs!1209643 (not (= lambda!260833 lambda!260782))))

(declare-fun bs!1209644 () Bool)

(assert (= bs!1209644 (and d!1678363 b!5203997)))

(assert (=> bs!1209644 (not (= lambda!260833 lambda!260826))))

(declare-fun bs!1209645 () Bool)

(assert (= bs!1209645 (and d!1678363 b!5203992)))

(assert (=> bs!1209645 (not (= lambda!260833 lambda!260827))))

(assert (=> d!1678363 true))

(assert (=> d!1678363 true))

(assert (=> d!1678363 true))

(assert (=> d!1678363 (= (isDefined!11605 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326)) (Exists!1972 lambda!260833))))

(declare-fun lt!2141424 () Unit!152430)

(declare-fun choose!38683 (Regex!14791 Regex!14791 List!60674) Unit!152430)

(assert (=> d!1678363 (= lt!2141424 (choose!38683 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326))))

(assert (=> d!1678363 (validRegex!6527 (regOne!30094 r!7292))))

(assert (=> d!1678363 (= (lemmaFindConcatSeparationEquivalentToExists!1080 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326) lt!2141424)))

(declare-fun bs!1209646 () Bool)

(assert (= bs!1209646 d!1678363))

(assert (=> bs!1209646 m!6255250))

(declare-fun m!6255682 () Bool)

(assert (=> bs!1209646 m!6255682))

(assert (=> bs!1209646 m!6255660))

(declare-fun m!6255684 () Bool)

(assert (=> bs!1209646 m!6255684))

(assert (=> bs!1209646 m!6255250))

(assert (=> bs!1209646 m!6255252))

(assert (=> b!5203446 d!1678363))

(declare-fun bs!1209647 () Bool)

(declare-fun d!1678365 () Bool)

(assert (= bs!1209647 (and d!1678365 b!5203992)))

(declare-fun lambda!260838 () Int)

(assert (=> bs!1209647 (not (= lambda!260838 lambda!260827))))

(declare-fun bs!1209648 () Bool)

(assert (= bs!1209648 (and d!1678365 b!5203446)))

(assert (=> bs!1209648 (= lambda!260838 lambda!260781)))

(assert (=> bs!1209648 (not (= lambda!260838 lambda!260782))))

(declare-fun bs!1209649 () Bool)

(assert (= bs!1209649 (and d!1678365 d!1678363)))

(assert (=> bs!1209649 (= lambda!260838 lambda!260833)))

(declare-fun bs!1209650 () Bool)

(assert (= bs!1209650 (and d!1678365 b!5203997)))

(assert (=> bs!1209650 (not (= lambda!260838 lambda!260826))))

(assert (=> d!1678365 true))

(assert (=> d!1678365 true))

(assert (=> d!1678365 true))

(declare-fun lambda!260839 () Int)

(assert (=> bs!1209648 (not (= lambda!260839 lambda!260781))))

(assert (=> bs!1209648 (= lambda!260839 lambda!260782)))

(assert (=> bs!1209649 (not (= lambda!260839 lambda!260833))))

(assert (=> bs!1209650 (not (= lambda!260839 lambda!260826))))

(assert (=> bs!1209647 (= lambda!260839 lambda!260827)))

(declare-fun bs!1209651 () Bool)

(assert (= bs!1209651 d!1678365))

(assert (=> bs!1209651 (not (= lambda!260839 lambda!260838))))

(assert (=> d!1678365 true))

(assert (=> d!1678365 true))

(assert (=> d!1678365 true))

(assert (=> d!1678365 (= (Exists!1972 lambda!260838) (Exists!1972 lambda!260839))))

(declare-fun lt!2141427 () Unit!152430)

(declare-fun choose!38684 (Regex!14791 Regex!14791 List!60674) Unit!152430)

(assert (=> d!1678365 (= lt!2141427 (choose!38684 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326))))

(assert (=> d!1678365 (validRegex!6527 (regOne!30094 r!7292))))

(assert (=> d!1678365 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!626 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326) lt!2141427)))

(declare-fun m!6255686 () Bool)

(assert (=> bs!1209651 m!6255686))

(declare-fun m!6255688 () Bool)

(assert (=> bs!1209651 m!6255688))

(declare-fun m!6255690 () Bool)

(assert (=> bs!1209651 m!6255690))

(assert (=> bs!1209651 m!6255660))

(assert (=> b!5203446 d!1678365))

(declare-fun d!1678367 () Bool)

(declare-fun isEmpty!32458 (Option!14902) Bool)

(assert (=> d!1678367 (= (isDefined!11605 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326)) (not (isEmpty!32458 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326))))))

(declare-fun bs!1209652 () Bool)

(assert (= bs!1209652 d!1678367))

(assert (=> bs!1209652 m!6255250))

(declare-fun m!6255692 () Bool)

(assert (=> bs!1209652 m!6255692))

(assert (=> b!5203446 d!1678367))

(declare-fun b!5204126 () Bool)

(declare-fun e!3240331 () Bool)

(declare-fun tp!1459584 () Bool)

(declare-fun tp!1459585 () Bool)

(assert (=> b!5204126 (= e!3240331 (and tp!1459584 tp!1459585))))

(assert (=> b!5203457 (= tp!1459513 e!3240331)))

(assert (= (and b!5203457 ((_ is Cons!60548) (exprs!4675 (h!66997 zl!343)))) b!5204126))

(declare-fun b!5204134 () Bool)

(declare-fun e!3240337 () Bool)

(declare-fun tp!1459590 () Bool)

(assert (=> b!5204134 (= e!3240337 tp!1459590)))

(declare-fun b!5204133 () Bool)

(declare-fun e!3240336 () Bool)

(declare-fun tp!1459591 () Bool)

(assert (=> b!5204133 (= e!3240336 (and (inv!80224 (h!66997 (t!373828 zl!343))) e!3240337 tp!1459591))))

(assert (=> b!5203439 (= tp!1459516 e!3240336)))

(assert (= b!5204133 b!5204134))

(assert (= (and b!5203439 ((_ is Cons!60549) (t!373828 zl!343))) b!5204133))

(declare-fun m!6255694 () Bool)

(assert (=> b!5204133 m!6255694))

(declare-fun b!5204145 () Bool)

(declare-fun e!3240340 () Bool)

(assert (=> b!5204145 (= e!3240340 tp_is_empty!38835)))

(assert (=> b!5203452 (= tp!1459517 e!3240340)))

(declare-fun b!5204147 () Bool)

(declare-fun tp!1459603 () Bool)

(assert (=> b!5204147 (= e!3240340 tp!1459603)))

(declare-fun b!5204148 () Bool)

(declare-fun tp!1459602 () Bool)

(declare-fun tp!1459604 () Bool)

(assert (=> b!5204148 (= e!3240340 (and tp!1459602 tp!1459604))))

(declare-fun b!5204146 () Bool)

(declare-fun tp!1459606 () Bool)

(declare-fun tp!1459605 () Bool)

(assert (=> b!5204146 (= e!3240340 (and tp!1459606 tp!1459605))))

(assert (= (and b!5203452 ((_ is ElementMatch!14791) (reg!15120 r!7292))) b!5204145))

(assert (= (and b!5203452 ((_ is Concat!23636) (reg!15120 r!7292))) b!5204146))

(assert (= (and b!5203452 ((_ is Star!14791) (reg!15120 r!7292))) b!5204147))

(assert (= (and b!5203452 ((_ is Union!14791) (reg!15120 r!7292))) b!5204148))

(declare-fun b!5204149 () Bool)

(declare-fun e!3240341 () Bool)

(assert (=> b!5204149 (= e!3240341 tp_is_empty!38835)))

(assert (=> b!5203454 (= tp!1459512 e!3240341)))

(declare-fun b!5204151 () Bool)

(declare-fun tp!1459608 () Bool)

(assert (=> b!5204151 (= e!3240341 tp!1459608)))

(declare-fun b!5204152 () Bool)

(declare-fun tp!1459607 () Bool)

(declare-fun tp!1459609 () Bool)

(assert (=> b!5204152 (= e!3240341 (and tp!1459607 tp!1459609))))

(declare-fun b!5204150 () Bool)

(declare-fun tp!1459611 () Bool)

(declare-fun tp!1459610 () Bool)

(assert (=> b!5204150 (= e!3240341 (and tp!1459611 tp!1459610))))

(assert (= (and b!5203454 ((_ is ElementMatch!14791) (regOne!30094 r!7292))) b!5204149))

(assert (= (and b!5203454 ((_ is Concat!23636) (regOne!30094 r!7292))) b!5204150))

(assert (= (and b!5203454 ((_ is Star!14791) (regOne!30094 r!7292))) b!5204151))

(assert (= (and b!5203454 ((_ is Union!14791) (regOne!30094 r!7292))) b!5204152))

(declare-fun b!5204153 () Bool)

(declare-fun e!3240342 () Bool)

(assert (=> b!5204153 (= e!3240342 tp_is_empty!38835)))

(assert (=> b!5203454 (= tp!1459521 e!3240342)))

(declare-fun b!5204155 () Bool)

(declare-fun tp!1459613 () Bool)

(assert (=> b!5204155 (= e!3240342 tp!1459613)))

(declare-fun b!5204156 () Bool)

(declare-fun tp!1459612 () Bool)

(declare-fun tp!1459614 () Bool)

(assert (=> b!5204156 (= e!3240342 (and tp!1459612 tp!1459614))))

(declare-fun b!5204154 () Bool)

(declare-fun tp!1459616 () Bool)

(declare-fun tp!1459615 () Bool)

(assert (=> b!5204154 (= e!3240342 (and tp!1459616 tp!1459615))))

(assert (= (and b!5203454 ((_ is ElementMatch!14791) (regTwo!30094 r!7292))) b!5204153))

(assert (= (and b!5203454 ((_ is Concat!23636) (regTwo!30094 r!7292))) b!5204154))

(assert (= (and b!5203454 ((_ is Star!14791) (regTwo!30094 r!7292))) b!5204155))

(assert (= (and b!5203454 ((_ is Union!14791) (regTwo!30094 r!7292))) b!5204156))

(declare-fun b!5204157 () Bool)

(declare-fun e!3240343 () Bool)

(declare-fun tp!1459617 () Bool)

(declare-fun tp!1459618 () Bool)

(assert (=> b!5204157 (= e!3240343 (and tp!1459617 tp!1459618))))

(assert (=> b!5203440 (= tp!1459519 e!3240343)))

(assert (= (and b!5203440 ((_ is Cons!60548) (exprs!4675 setElem!33024))) b!5204157))

(declare-fun condSetEmpty!33030 () Bool)

(assert (=> setNonEmpty!33024 (= condSetEmpty!33030 (= setRest!33024 ((as const (Array Context!8350 Bool)) false)))))

(declare-fun setRes!33030 () Bool)

(assert (=> setNonEmpty!33024 (= tp!1459518 setRes!33030)))

(declare-fun setIsEmpty!33030 () Bool)

(assert (=> setIsEmpty!33030 setRes!33030))

(declare-fun tp!1459623 () Bool)

(declare-fun setNonEmpty!33030 () Bool)

(declare-fun e!3240346 () Bool)

(declare-fun setElem!33030 () Context!8350)

(assert (=> setNonEmpty!33030 (= setRes!33030 (and tp!1459623 (inv!80224 setElem!33030) e!3240346))))

(declare-fun setRest!33030 () (InoxSet Context!8350))

(assert (=> setNonEmpty!33030 (= setRest!33024 ((_ map or) (store ((as const (Array Context!8350 Bool)) false) setElem!33030 true) setRest!33030))))

(declare-fun b!5204162 () Bool)

(declare-fun tp!1459624 () Bool)

(assert (=> b!5204162 (= e!3240346 tp!1459624)))

(assert (= (and setNonEmpty!33024 condSetEmpty!33030) setIsEmpty!33030))

(assert (= (and setNonEmpty!33024 (not condSetEmpty!33030)) setNonEmpty!33030))

(assert (= setNonEmpty!33030 b!5204162))

(declare-fun m!6255696 () Bool)

(assert (=> setNonEmpty!33030 m!6255696))

(declare-fun b!5204167 () Bool)

(declare-fun e!3240349 () Bool)

(declare-fun tp!1459627 () Bool)

(assert (=> b!5204167 (= e!3240349 (and tp_is_empty!38835 tp!1459627))))

(assert (=> b!5203459 (= tp!1459520 e!3240349)))

(assert (= (and b!5203459 ((_ is Cons!60550) (t!373829 s!2326))) b!5204167))

(declare-fun b!5204168 () Bool)

(declare-fun e!3240350 () Bool)

(assert (=> b!5204168 (= e!3240350 tp_is_empty!38835)))

(assert (=> b!5203445 (= tp!1459515 e!3240350)))

(declare-fun b!5204170 () Bool)

(declare-fun tp!1459629 () Bool)

(assert (=> b!5204170 (= e!3240350 tp!1459629)))

(declare-fun b!5204171 () Bool)

(declare-fun tp!1459628 () Bool)

(declare-fun tp!1459630 () Bool)

(assert (=> b!5204171 (= e!3240350 (and tp!1459628 tp!1459630))))

(declare-fun b!5204169 () Bool)

(declare-fun tp!1459632 () Bool)

(declare-fun tp!1459631 () Bool)

(assert (=> b!5204169 (= e!3240350 (and tp!1459632 tp!1459631))))

(assert (= (and b!5203445 ((_ is ElementMatch!14791) (regOne!30095 r!7292))) b!5204168))

(assert (= (and b!5203445 ((_ is Concat!23636) (regOne!30095 r!7292))) b!5204169))

(assert (= (and b!5203445 ((_ is Star!14791) (regOne!30095 r!7292))) b!5204170))

(assert (= (and b!5203445 ((_ is Union!14791) (regOne!30095 r!7292))) b!5204171))

(declare-fun b!5204172 () Bool)

(declare-fun e!3240351 () Bool)

(assert (=> b!5204172 (= e!3240351 tp_is_empty!38835)))

(assert (=> b!5203445 (= tp!1459514 e!3240351)))

(declare-fun b!5204174 () Bool)

(declare-fun tp!1459634 () Bool)

(assert (=> b!5204174 (= e!3240351 tp!1459634)))

(declare-fun b!5204175 () Bool)

(declare-fun tp!1459633 () Bool)

(declare-fun tp!1459635 () Bool)

(assert (=> b!5204175 (= e!3240351 (and tp!1459633 tp!1459635))))

(declare-fun b!5204173 () Bool)

(declare-fun tp!1459637 () Bool)

(declare-fun tp!1459636 () Bool)

(assert (=> b!5204173 (= e!3240351 (and tp!1459637 tp!1459636))))

(assert (= (and b!5203445 ((_ is ElementMatch!14791) (regTwo!30095 r!7292))) b!5204172))

(assert (= (and b!5203445 ((_ is Concat!23636) (regTwo!30095 r!7292))) b!5204173))

(assert (= (and b!5203445 ((_ is Star!14791) (regTwo!30095 r!7292))) b!5204174))

(assert (= (and b!5203445 ((_ is Union!14791) (regTwo!30095 r!7292))) b!5204175))

(declare-fun b_lambda!201363 () Bool)

(assert (= b_lambda!201359 (or b!5203448 b_lambda!201363)))

(declare-fun bs!1209653 () Bool)

(declare-fun d!1678369 () Bool)

(assert (= bs!1209653 (and d!1678369 b!5203448)))

(assert (=> bs!1209653 (= (dynLambda!23915 lambda!260783 (h!66997 zl!343)) (derivationStepZipperUp!163 (h!66997 zl!343) (h!66998 s!2326)))))

(assert (=> bs!1209653 m!6255288))

(assert (=> d!1678321 d!1678369))

(check-sat (not b!5203879) (not d!1678365) (not b!5204072) (not b!5204028) (not b!5203752) (not b!5204073) (not d!1678291) tp_is_empty!38835 (not b!5203755) (not b!5203672) (not b!5204108) (not bm!365872) (not bm!365887) (not d!1678341) (not b!5203750) (not b!5203754) (not b!5204171) (not bm!365891) (not b!5204154) (not b!5203887) (not b!5204074) (not b!5203748) (not d!1678321) (not b!5204157) (not b!5204133) (not d!1678357) (not b!5203925) (not d!1678273) (not b!5204169) (not b!5203917) (not d!1678319) (not b!5204066) (not b!5204067) (not b!5203670) (not bm!365871) (not bm!365909) (not b!5204109) (not b!5203882) (not b!5204126) (not b!5203771) (not d!1678347) (not bm!365898) (not b_lambda!201363) (not b!5204107) (not setNonEmpty!33030) (not d!1678315) (not b!5204151) (not b!5204175) (not b!5203622) (not b!5204043) (not b!5203884) (not b!5203922) (not b!5204148) (not bm!365885) (not d!1678313) (not b!5204071) (not d!1678363) (not b!5203671) (not b!5204106) (not bm!365899) (not b!5203929) (not b!5204064) (not d!1678337) (not bm!365911) (not d!1678353) (not d!1678309) (not b!5204152) (not d!1678335) (not bm!365906) (not b!5204070) (not b!5204032) (not b!5203991) (not b!5204042) (not b!5204162) (not bm!365910) (not d!1678367) (not b!5204037) (not b!5204134) (not b!5204150) (not d!1678279) (not b!5203999) (not d!1678359) (not b!5204156) (not b!5204103) (not b!5204147) (not bs!1209653) (not d!1678361) (not b!5204036) (not b!5204041) (not b!5204173) (not bm!365886) (not d!1678287) (not d!1678351) (not b!5203749) (not b!5204155) (not b!5204174) (not b!5203669) (not b!5204167) (not b!5203747) (not d!1678345) (not b!5204029) (not b!5204105) (not b!5204170) (not b!5204146) (not bm!365905) (not b!5203948))
(check-sat)
(get-model)

(assert (=> d!1678273 d!1678287))

(assert (=> d!1678273 d!1678279))

(declare-fun d!1678545 () Bool)

(declare-fun e!3240587 () Bool)

(assert (=> d!1678545 (= (matchZipper!1035 ((_ map or) lt!2141334 lt!2141341) (t!373829 s!2326)) e!3240587)))

(declare-fun res!2211062 () Bool)

(assert (=> d!1678545 (=> res!2211062 e!3240587)))

(assert (=> d!1678545 (= res!2211062 (matchZipper!1035 lt!2141334 (t!373829 s!2326)))))

(assert (=> d!1678545 true))

(declare-fun _$48!778 () Unit!152430)

(assert (=> d!1678545 (= (choose!38677 lt!2141334 lt!2141341 (t!373829 s!2326)) _$48!778)))

(declare-fun b!5204551 () Bool)

(assert (=> b!5204551 (= e!3240587 (matchZipper!1035 lt!2141341 (t!373829 s!2326)))))

(assert (= (and d!1678545 (not res!2211062)) b!5204551))

(assert (=> d!1678545 m!6255308))

(assert (=> d!1678545 m!6255306))

(assert (=> b!5204551 m!6255300))

(assert (=> d!1678273 d!1678545))

(declare-fun b!5204585 () Bool)

(declare-fun e!3240611 () List!60674)

(assert (=> b!5204585 (= e!3240611 (Cons!60550 (h!66998 (_1!35293 (get!20800 lt!2141419))) (++!13199 (t!373829 (_1!35293 (get!20800 lt!2141419))) (_2!35293 (get!20800 lt!2141419)))))))

(declare-fun b!5204584 () Bool)

(assert (=> b!5204584 (= e!3240611 (_2!35293 (get!20800 lt!2141419)))))

(declare-fun d!1678549 () Bool)

(declare-fun e!3240612 () Bool)

(assert (=> d!1678549 e!3240612))

(declare-fun res!2211079 () Bool)

(assert (=> d!1678549 (=> (not res!2211079) (not e!3240612))))

(declare-fun lt!2141452 () List!60674)

(declare-fun content!10716 (List!60674) (InoxSet C!29852))

(assert (=> d!1678549 (= res!2211079 (= (content!10716 lt!2141452) ((_ map or) (content!10716 (_1!35293 (get!20800 lt!2141419))) (content!10716 (_2!35293 (get!20800 lt!2141419))))))))

(assert (=> d!1678549 (= lt!2141452 e!3240611)))

(declare-fun c!897159 () Bool)

(assert (=> d!1678549 (= c!897159 ((_ is Nil!60550) (_1!35293 (get!20800 lt!2141419))))))

(assert (=> d!1678549 (= (++!13199 (_1!35293 (get!20800 lt!2141419)) (_2!35293 (get!20800 lt!2141419))) lt!2141452)))

(declare-fun b!5204587 () Bool)

(assert (=> b!5204587 (= e!3240612 (or (not (= (_2!35293 (get!20800 lt!2141419)) Nil!60550)) (= lt!2141452 (_1!35293 (get!20800 lt!2141419)))))))

(declare-fun b!5204586 () Bool)

(declare-fun res!2211078 () Bool)

(assert (=> b!5204586 (=> (not res!2211078) (not e!3240612))))

(declare-fun size!39710 (List!60674) Int)

(assert (=> b!5204586 (= res!2211078 (= (size!39710 lt!2141452) (+ (size!39710 (_1!35293 (get!20800 lt!2141419))) (size!39710 (_2!35293 (get!20800 lt!2141419))))))))

(assert (= (and d!1678549 c!897159) b!5204584))

(assert (= (and d!1678549 (not c!897159)) b!5204585))

(assert (= (and d!1678549 res!2211079) b!5204586))

(assert (= (and b!5204586 res!2211078) b!5204587))

(declare-fun m!6256108 () Bool)

(assert (=> b!5204585 m!6256108))

(declare-fun m!6256110 () Bool)

(assert (=> d!1678549 m!6256110))

(declare-fun m!6256112 () Bool)

(assert (=> d!1678549 m!6256112))

(declare-fun m!6256114 () Bool)

(assert (=> d!1678549 m!6256114))

(declare-fun m!6256116 () Bool)

(assert (=> b!5204586 m!6256116))

(declare-fun m!6256118 () Bool)

(assert (=> b!5204586 m!6256118))

(declare-fun m!6256120 () Bool)

(assert (=> b!5204586 m!6256120))

(assert (=> b!5204107 d!1678549))

(declare-fun d!1678563 () Bool)

(assert (=> d!1678563 (= (get!20800 lt!2141419) (v!50930 lt!2141419))))

(assert (=> b!5204107 d!1678563))

(declare-fun d!1678565 () Bool)

(assert (=> d!1678565 (= (isUnion!196 lt!2141385) ((_ is Union!14791) lt!2141385))))

(assert (=> b!5203752 d!1678565))

(declare-fun bm!365997 () Bool)

(declare-fun call!366006 () List!60672)

(declare-fun call!366004 () (InoxSet Context!8350))

(declare-fun c!897164 () Bool)

(assert (=> bm!365997 (= call!366004 (derivationStepZipperDown!239 (ite c!897164 (regTwo!30095 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))) (regOne!30094 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))))) (ite c!897164 (ite c!896992 lt!2141333 (Context!8351 call!365894)) (Context!8351 call!366006)) (h!66998 s!2326)))))

(declare-fun b!5204616 () Bool)

(declare-fun e!3240625 () (InoxSet Context!8350))

(declare-fun call!366005 () (InoxSet Context!8350))

(assert (=> b!5204616 (= e!3240625 call!366005)))

(declare-fun b!5204617 () Bool)

(declare-fun e!3240620 () (InoxSet Context!8350))

(declare-fun call!366002 () (InoxSet Context!8350))

(assert (=> b!5204617 (= e!3240620 ((_ map or) call!366004 call!366002))))

(declare-fun bm!365998 () Bool)

(declare-fun call!366003 () (InoxSet Context!8350))

(declare-fun call!366007 () List!60672)

(declare-fun c!897162 () Bool)

(declare-fun c!897163 () Bool)

(assert (=> bm!365998 (= call!366003 (derivationStepZipperDown!239 (ite c!897164 (regOne!30095 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))) (ite c!897163 (regTwo!30094 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))) (ite c!897162 (regOne!30094 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))) (reg!15120 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))))))) (ite (or c!897164 c!897163) (ite c!896992 lt!2141333 (Context!8351 call!365894)) (Context!8351 call!366007)) (h!66998 s!2326)))))

(declare-fun b!5204618 () Bool)

(declare-fun e!3240621 () (InoxSet Context!8350))

(assert (=> b!5204618 (= e!3240621 call!366005)))

(declare-fun b!5204619 () Bool)

(assert (=> b!5204619 (= e!3240621 ((as const (Array Context!8350 Bool)) false))))

(declare-fun b!5204620 () Bool)

(declare-fun e!3240624 () Bool)

(assert (=> b!5204620 (= c!897163 e!3240624)))

(declare-fun res!2211080 () Bool)

(assert (=> b!5204620 (=> (not res!2211080) (not e!3240624))))

(assert (=> b!5204620 (= res!2211080 ((_ is Concat!23636) (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun e!3240623 () (InoxSet Context!8350))

(assert (=> b!5204620 (= e!3240623 e!3240620)))

(declare-fun b!5204621 () Bool)

(declare-fun c!897161 () Bool)

(assert (=> b!5204621 (= c!897161 ((_ is Star!14791) (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))

(assert (=> b!5204621 (= e!3240625 e!3240621)))

(declare-fun d!1678567 () Bool)

(declare-fun c!897160 () Bool)

(assert (=> d!1678567 (= c!897160 (and ((_ is ElementMatch!14791) (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))) (= (c!896858 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))) (h!66998 s!2326))))))

(declare-fun e!3240622 () (InoxSet Context!8350))

(assert (=> d!1678567 (= (derivationStepZipperDown!239 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))) (ite c!896992 lt!2141333 (Context!8351 call!365894)) (h!66998 s!2326)) e!3240622)))

(declare-fun bm!365999 () Bool)

(assert (=> bm!365999 (= call!366006 ($colon$colon!1269 (exprs!4675 (ite c!896992 lt!2141333 (Context!8351 call!365894))) (ite (or c!897163 c!897162) (regTwo!30094 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))) (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))))))))

(declare-fun b!5204622 () Bool)

(assert (=> b!5204622 (= e!3240624 (nullable!4960 (regOne!30094 (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))))))))

(declare-fun b!5204623 () Bool)

(assert (=> b!5204623 (= e!3240620 e!3240625)))

(assert (=> b!5204623 (= c!897162 ((_ is Concat!23636) (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun b!5204624 () Bool)

(assert (=> b!5204624 (= e!3240622 (store ((as const (Array Context!8350 Bool)) false) (ite c!896992 lt!2141333 (Context!8351 call!365894)) true))))

(declare-fun b!5204625 () Bool)

(assert (=> b!5204625 (= e!3240622 e!3240623)))

(assert (=> b!5204625 (= c!897164 ((_ is Union!14791) (ite c!896992 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun bm!366000 () Bool)

(assert (=> bm!366000 (= call!366005 call!366002)))

(declare-fun b!5204626 () Bool)

(assert (=> b!5204626 (= e!3240623 ((_ map or) call!366003 call!366004))))

(declare-fun bm!366001 () Bool)

(assert (=> bm!366001 (= call!366007 call!366006)))

(declare-fun bm!366002 () Bool)

(assert (=> bm!366002 (= call!366002 call!366003)))

(assert (= (and d!1678567 c!897160) b!5204624))

(assert (= (and d!1678567 (not c!897160)) b!5204625))

(assert (= (and b!5204625 c!897164) b!5204626))

(assert (= (and b!5204625 (not c!897164)) b!5204620))

(assert (= (and b!5204620 res!2211080) b!5204622))

(assert (= (and b!5204620 c!897163) b!5204617))

(assert (= (and b!5204620 (not c!897163)) b!5204623))

(assert (= (and b!5204623 c!897162) b!5204616))

(assert (= (and b!5204623 (not c!897162)) b!5204621))

(assert (= (and b!5204621 c!897161) b!5204618))

(assert (= (and b!5204621 (not c!897161)) b!5204619))

(assert (= (or b!5204616 b!5204618) bm!366001))

(assert (= (or b!5204616 b!5204618) bm!366000))

(assert (= (or b!5204617 bm!366001) bm!365999))

(assert (= (or b!5204617 bm!366000) bm!366002))

(assert (= (or b!5204626 b!5204617) bm!365997))

(assert (= (or b!5204626 bm!366002) bm!365998))

(declare-fun m!6256122 () Bool)

(assert (=> bm!365998 m!6256122))

(declare-fun m!6256124 () Bool)

(assert (=> b!5204622 m!6256124))

(declare-fun m!6256126 () Bool)

(assert (=> bm!365997 m!6256126))

(declare-fun m!6256128 () Bool)

(assert (=> bm!365999 m!6256128))

(declare-fun m!6256130 () Bool)

(assert (=> b!5204624 m!6256130))

(assert (=> bm!365885 d!1678567))

(declare-fun b!5204660 () Bool)

(declare-fun e!3240635 () Bool)

(declare-fun e!3240641 () Bool)

(assert (=> b!5204660 (= e!3240635 e!3240641)))

(declare-fun res!2211084 () Bool)

(assert (=> b!5204660 (= res!2211084 (not (nullable!4960 (reg!15120 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))))))))

(assert (=> b!5204660 (=> (not res!2211084) (not e!3240641))))

(declare-fun d!1678569 () Bool)

(declare-fun res!2211083 () Bool)

(declare-fun e!3240637 () Bool)

(assert (=> d!1678569 (=> res!2211083 e!3240637)))

(assert (=> d!1678569 (= res!2211083 ((_ is ElementMatch!14791) (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))))))

(assert (=> d!1678569 (= (validRegex!6527 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))) e!3240637)))

(declare-fun bm!366003 () Bool)

(declare-fun c!897166 () Bool)

(declare-fun call!366009 () Bool)

(declare-fun c!897165 () Bool)

(assert (=> bm!366003 (= call!366009 (validRegex!6527 (ite c!897165 (reg!15120 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))) (ite c!897166 (regTwo!30095 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))) (regTwo!30094 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292)))))))))

(declare-fun b!5204661 () Bool)

(declare-fun e!3240638 () Bool)

(assert (=> b!5204661 (= e!3240635 e!3240638)))

(assert (=> b!5204661 (= c!897166 ((_ is Union!14791) (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))))))

(declare-fun b!5204662 () Bool)

(declare-fun e!3240636 () Bool)

(declare-fun call!366008 () Bool)

(assert (=> b!5204662 (= e!3240636 call!366008)))

(declare-fun b!5204663 () Bool)

(declare-fun res!2211085 () Bool)

(assert (=> b!5204663 (=> (not res!2211085) (not e!3240636))))

(declare-fun call!366010 () Bool)

(assert (=> b!5204663 (= res!2211085 call!366010)))

(assert (=> b!5204663 (= e!3240638 e!3240636)))

(declare-fun bm!366004 () Bool)

(assert (=> bm!366004 (= call!366010 (validRegex!6527 (ite c!897166 (regOne!30095 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))) (regOne!30094 (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))))))))

(declare-fun b!5204664 () Bool)

(assert (=> b!5204664 (= e!3240637 e!3240635)))

(assert (=> b!5204664 (= c!897165 ((_ is Star!14791) (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292))))))

(declare-fun b!5204666 () Bool)

(declare-fun e!3240640 () Bool)

(declare-fun e!3240639 () Bool)

(assert (=> b!5204666 (= e!3240640 e!3240639)))

(declare-fun res!2211082 () Bool)

(assert (=> b!5204666 (=> (not res!2211082) (not e!3240639))))

(assert (=> b!5204666 (= res!2211082 call!366010)))

(declare-fun b!5204668 () Bool)

(declare-fun res!2211081 () Bool)

(assert (=> b!5204668 (=> res!2211081 e!3240640)))

(assert (=> b!5204668 (= res!2211081 (not ((_ is Concat!23636) (ite c!897036 (regOne!30095 r!7292) (regOne!30094 r!7292)))))))

(assert (=> b!5204668 (= e!3240638 e!3240640)))

(declare-fun b!5204670 () Bool)

(assert (=> b!5204670 (= e!3240641 call!366009)))

(declare-fun bm!366005 () Bool)

(assert (=> bm!366005 (= call!366008 call!366009)))

(declare-fun b!5204672 () Bool)

(assert (=> b!5204672 (= e!3240639 call!366008)))

(assert (= (and d!1678569 (not res!2211083)) b!5204664))

(assert (= (and b!5204664 c!897165) b!5204660))

(assert (= (and b!5204664 (not c!897165)) b!5204661))

(assert (= (and b!5204660 res!2211084) b!5204670))

(assert (= (and b!5204661 c!897166) b!5204663))

(assert (= (and b!5204661 (not c!897166)) b!5204668))

(assert (= (and b!5204663 res!2211085) b!5204662))

(assert (= (and b!5204668 (not res!2211081)) b!5204666))

(assert (= (and b!5204666 res!2211082) b!5204672))

(assert (= (or b!5204662 b!5204672) bm!366005))

(assert (= (or b!5204663 b!5204666) bm!366004))

(assert (= (or b!5204670 bm!366005) bm!366003))

(declare-fun m!6256134 () Bool)

(assert (=> b!5204660 m!6256134))

(declare-fun m!6256136 () Bool)

(assert (=> bm!366003 m!6256136))

(declare-fun m!6256140 () Bool)

(assert (=> bm!366004 m!6256140))

(assert (=> bm!365911 d!1678569))

(declare-fun b!5204679 () Bool)

(declare-fun res!2211089 () Bool)

(declare-fun e!3240652 () Bool)

(assert (=> b!5204679 (=> res!2211089 e!3240652)))

(assert (=> b!5204679 (= res!2211089 (not (isEmpty!32457 (tail!10254 s!2326))))))

(declare-fun b!5204680 () Bool)

(declare-fun e!3240655 () Bool)

(assert (=> b!5204680 (= e!3240655 (nullable!4960 (regTwo!30094 r!7292)))))

(declare-fun b!5204681 () Bool)

(declare-fun e!3240653 () Bool)

(assert (=> b!5204681 (= e!3240653 e!3240652)))

(declare-fun res!2211091 () Bool)

(assert (=> b!5204681 (=> res!2211091 e!3240652)))

(declare-fun call!366011 () Bool)

(assert (=> b!5204681 (= res!2211091 call!366011)))

(declare-fun b!5204682 () Bool)

(declare-fun e!3240648 () Bool)

(declare-fun lt!2141453 () Bool)

(assert (=> b!5204682 (= e!3240648 (= lt!2141453 call!366011))))

(declare-fun d!1678571 () Bool)

(assert (=> d!1678571 e!3240648))

(declare-fun c!897169 () Bool)

(assert (=> d!1678571 (= c!897169 ((_ is EmptyExpr!14791) (regTwo!30094 r!7292)))))

(assert (=> d!1678571 (= lt!2141453 e!3240655)))

(declare-fun c!897167 () Bool)

(assert (=> d!1678571 (= c!897167 (isEmpty!32457 s!2326))))

(assert (=> d!1678571 (validRegex!6527 (regTwo!30094 r!7292))))

(assert (=> d!1678571 (= (matchR!6976 (regTwo!30094 r!7292) s!2326) lt!2141453)))

(declare-fun b!5204683 () Bool)

(assert (=> b!5204683 (= e!3240655 (matchR!6976 (derivativeStep!4041 (regTwo!30094 r!7292) (head!11157 s!2326)) (tail!10254 s!2326)))))

(declare-fun b!5204684 () Bool)

(declare-fun res!2211088 () Bool)

(declare-fun e!3240654 () Bool)

(assert (=> b!5204684 (=> res!2211088 e!3240654)))

(assert (=> b!5204684 (= res!2211088 (not ((_ is ElementMatch!14791) (regTwo!30094 r!7292))))))

(declare-fun e!3240650 () Bool)

(assert (=> b!5204684 (= e!3240650 e!3240654)))

(declare-fun b!5204685 () Bool)

(assert (=> b!5204685 (= e!3240648 e!3240650)))

(declare-fun c!897168 () Bool)

(assert (=> b!5204685 (= c!897168 ((_ is EmptyLang!14791) (regTwo!30094 r!7292)))))

(declare-fun b!5204686 () Bool)

(declare-fun res!2211086 () Bool)

(declare-fun e!3240651 () Bool)

(assert (=> b!5204686 (=> (not res!2211086) (not e!3240651))))

(assert (=> b!5204686 (= res!2211086 (not call!366011))))

(declare-fun bm!366006 () Bool)

(assert (=> bm!366006 (= call!366011 (isEmpty!32457 s!2326))))

(declare-fun b!5204687 () Bool)

(declare-fun res!2211092 () Bool)

(assert (=> b!5204687 (=> (not res!2211092) (not e!3240651))))

(assert (=> b!5204687 (= res!2211092 (isEmpty!32457 (tail!10254 s!2326)))))

(declare-fun b!5204688 () Bool)

(assert (=> b!5204688 (= e!3240652 (not (= (head!11157 s!2326) (c!896858 (regTwo!30094 r!7292)))))))

(declare-fun b!5204689 () Bool)

(assert (=> b!5204689 (= e!3240650 (not lt!2141453))))

(declare-fun b!5204690 () Bool)

(declare-fun res!2211087 () Bool)

(assert (=> b!5204690 (=> res!2211087 e!3240654)))

(assert (=> b!5204690 (= res!2211087 e!3240651)))

(declare-fun res!2211093 () Bool)

(assert (=> b!5204690 (=> (not res!2211093) (not e!3240651))))

(assert (=> b!5204690 (= res!2211093 lt!2141453)))

(declare-fun b!5204691 () Bool)

(assert (=> b!5204691 (= e!3240654 e!3240653)))

(declare-fun res!2211090 () Bool)

(assert (=> b!5204691 (=> (not res!2211090) (not e!3240653))))

(assert (=> b!5204691 (= res!2211090 (not lt!2141453))))

(declare-fun b!5204692 () Bool)

(assert (=> b!5204692 (= e!3240651 (= (head!11157 s!2326) (c!896858 (regTwo!30094 r!7292))))))

(assert (= (and d!1678571 c!897167) b!5204680))

(assert (= (and d!1678571 (not c!897167)) b!5204683))

(assert (= (and d!1678571 c!897169) b!5204682))

(assert (= (and d!1678571 (not c!897169)) b!5204685))

(assert (= (and b!5204685 c!897168) b!5204689))

(assert (= (and b!5204685 (not c!897168)) b!5204684))

(assert (= (and b!5204684 (not res!2211088)) b!5204690))

(assert (= (and b!5204690 res!2211093) b!5204686))

(assert (= (and b!5204686 res!2211086) b!5204687))

(assert (= (and b!5204687 res!2211092) b!5204692))

(assert (= (and b!5204690 (not res!2211087)) b!5204691))

(assert (= (and b!5204691 res!2211090) b!5204681))

(assert (= (and b!5204681 (not res!2211091)) b!5204679))

(assert (= (and b!5204679 (not res!2211089)) b!5204688))

(assert (= (or b!5204682 b!5204681 b!5204686) bm!366006))

(assert (=> b!5204683 m!6255610))

(assert (=> b!5204683 m!6255610))

(declare-fun m!6256142 () Bool)

(assert (=> b!5204683 m!6256142))

(assert (=> b!5204683 m!6255614))

(assert (=> b!5204683 m!6256142))

(assert (=> b!5204683 m!6255614))

(declare-fun m!6256144 () Bool)

(assert (=> b!5204683 m!6256144))

(assert (=> b!5204679 m!6255614))

(assert (=> b!5204679 m!6255614))

(assert (=> b!5204679 m!6255618))

(assert (=> b!5204692 m!6255610))

(declare-fun m!6256146 () Bool)

(assert (=> b!5204680 m!6256146))

(assert (=> d!1678571 m!6255602))

(declare-fun m!6256148 () Bool)

(assert (=> d!1678571 m!6256148))

(assert (=> b!5204688 m!6255610))

(assert (=> bm!366006 m!6255602))

(assert (=> b!5204687 m!6255614))

(assert (=> b!5204687 m!6255614))

(assert (=> b!5204687 m!6255618))

(assert (=> b!5204105 d!1678571))

(declare-fun d!1678573 () Bool)

(assert (=> d!1678573 (= (head!11158 (unfocusZipperList!233 zl!343)) (h!66996 (unfocusZipperList!233 zl!343)))))

(assert (=> b!5203754 d!1678573))

(declare-fun d!1678575 () Bool)

(assert (=> d!1678575 (= (head!11157 s!2326) (h!66998 s!2326))))

(assert (=> b!5204041 d!1678575))

(declare-fun b!5204738 () Bool)

(declare-fun res!2211097 () Bool)

(declare-fun e!3240671 () Bool)

(assert (=> b!5204738 (=> res!2211097 e!3240671)))

(assert (=> b!5204738 (= res!2211097 (not (isEmpty!32457 (tail!10254 (_2!35293 (get!20800 lt!2141419))))))))

(declare-fun b!5204739 () Bool)

(declare-fun e!3240674 () Bool)

(assert (=> b!5204739 (= e!3240674 (nullable!4960 (regTwo!30094 r!7292)))))

(declare-fun b!5204740 () Bool)

(declare-fun e!3240672 () Bool)

(assert (=> b!5204740 (= e!3240672 e!3240671)))

(declare-fun res!2211099 () Bool)

(assert (=> b!5204740 (=> res!2211099 e!3240671)))

(declare-fun call!366012 () Bool)

(assert (=> b!5204740 (= res!2211099 call!366012)))

(declare-fun b!5204741 () Bool)

(declare-fun e!3240668 () Bool)

(declare-fun lt!2141454 () Bool)

(assert (=> b!5204741 (= e!3240668 (= lt!2141454 call!366012))))

(declare-fun d!1678577 () Bool)

(assert (=> d!1678577 e!3240668))

(declare-fun c!897172 () Bool)

(assert (=> d!1678577 (= c!897172 ((_ is EmptyExpr!14791) (regTwo!30094 r!7292)))))

(assert (=> d!1678577 (= lt!2141454 e!3240674)))

(declare-fun c!897170 () Bool)

(assert (=> d!1678577 (= c!897170 (isEmpty!32457 (_2!35293 (get!20800 lt!2141419))))))

(assert (=> d!1678577 (validRegex!6527 (regTwo!30094 r!7292))))

(assert (=> d!1678577 (= (matchR!6976 (regTwo!30094 r!7292) (_2!35293 (get!20800 lt!2141419))) lt!2141454)))

(declare-fun b!5204742 () Bool)

(assert (=> b!5204742 (= e!3240674 (matchR!6976 (derivativeStep!4041 (regTwo!30094 r!7292) (head!11157 (_2!35293 (get!20800 lt!2141419)))) (tail!10254 (_2!35293 (get!20800 lt!2141419)))))))

(declare-fun b!5204743 () Bool)

(declare-fun res!2211096 () Bool)

(declare-fun e!3240673 () Bool)

(assert (=> b!5204743 (=> res!2211096 e!3240673)))

(assert (=> b!5204743 (= res!2211096 (not ((_ is ElementMatch!14791) (regTwo!30094 r!7292))))))

(declare-fun e!3240669 () Bool)

(assert (=> b!5204743 (= e!3240669 e!3240673)))

(declare-fun b!5204744 () Bool)

(assert (=> b!5204744 (= e!3240668 e!3240669)))

(declare-fun c!897171 () Bool)

(assert (=> b!5204744 (= c!897171 ((_ is EmptyLang!14791) (regTwo!30094 r!7292)))))

(declare-fun b!5204745 () Bool)

(declare-fun res!2211094 () Bool)

(declare-fun e!3240670 () Bool)

(assert (=> b!5204745 (=> (not res!2211094) (not e!3240670))))

(assert (=> b!5204745 (= res!2211094 (not call!366012))))

(declare-fun bm!366007 () Bool)

(assert (=> bm!366007 (= call!366012 (isEmpty!32457 (_2!35293 (get!20800 lt!2141419))))))

(declare-fun b!5204746 () Bool)

(declare-fun res!2211100 () Bool)

(assert (=> b!5204746 (=> (not res!2211100) (not e!3240670))))

(assert (=> b!5204746 (= res!2211100 (isEmpty!32457 (tail!10254 (_2!35293 (get!20800 lt!2141419)))))))

(declare-fun b!5204747 () Bool)

(assert (=> b!5204747 (= e!3240671 (not (= (head!11157 (_2!35293 (get!20800 lt!2141419))) (c!896858 (regTwo!30094 r!7292)))))))

(declare-fun b!5204748 () Bool)

(assert (=> b!5204748 (= e!3240669 (not lt!2141454))))

(declare-fun b!5204749 () Bool)

(declare-fun res!2211095 () Bool)

(assert (=> b!5204749 (=> res!2211095 e!3240673)))

(assert (=> b!5204749 (= res!2211095 e!3240670)))

(declare-fun res!2211101 () Bool)

(assert (=> b!5204749 (=> (not res!2211101) (not e!3240670))))

(assert (=> b!5204749 (= res!2211101 lt!2141454)))

(declare-fun b!5204750 () Bool)

(assert (=> b!5204750 (= e!3240673 e!3240672)))

(declare-fun res!2211098 () Bool)

(assert (=> b!5204750 (=> (not res!2211098) (not e!3240672))))

(assert (=> b!5204750 (= res!2211098 (not lt!2141454))))

(declare-fun b!5204751 () Bool)

(assert (=> b!5204751 (= e!3240670 (= (head!11157 (_2!35293 (get!20800 lt!2141419))) (c!896858 (regTwo!30094 r!7292))))))

(assert (= (and d!1678577 c!897170) b!5204739))

(assert (= (and d!1678577 (not c!897170)) b!5204742))

(assert (= (and d!1678577 c!897172) b!5204741))

(assert (= (and d!1678577 (not c!897172)) b!5204744))

(assert (= (and b!5204744 c!897171) b!5204748))

(assert (= (and b!5204744 (not c!897171)) b!5204743))

(assert (= (and b!5204743 (not res!2211096)) b!5204749))

(assert (= (and b!5204749 res!2211101) b!5204745))

(assert (= (and b!5204745 res!2211094) b!5204746))

(assert (= (and b!5204746 res!2211100) b!5204751))

(assert (= (and b!5204749 (not res!2211095)) b!5204750))

(assert (= (and b!5204750 res!2211098) b!5204740))

(assert (= (and b!5204740 (not res!2211099)) b!5204738))

(assert (= (and b!5204738 (not res!2211097)) b!5204747))

(assert (= (or b!5204741 b!5204740 b!5204745) bm!366007))

(declare-fun m!6256158 () Bool)

(assert (=> b!5204742 m!6256158))

(assert (=> b!5204742 m!6256158))

(declare-fun m!6256160 () Bool)

(assert (=> b!5204742 m!6256160))

(declare-fun m!6256162 () Bool)

(assert (=> b!5204742 m!6256162))

(assert (=> b!5204742 m!6256160))

(assert (=> b!5204742 m!6256162))

(declare-fun m!6256164 () Bool)

(assert (=> b!5204742 m!6256164))

(assert (=> b!5204738 m!6256162))

(assert (=> b!5204738 m!6256162))

(declare-fun m!6256166 () Bool)

(assert (=> b!5204738 m!6256166))

(assert (=> b!5204751 m!6256158))

(assert (=> b!5204739 m!6256146))

(declare-fun m!6256168 () Bool)

(assert (=> d!1678577 m!6256168))

(assert (=> d!1678577 m!6256148))

(assert (=> b!5204747 m!6256158))

(assert (=> bm!366007 m!6256168))

(assert (=> b!5204746 m!6256162))

(assert (=> b!5204746 m!6256162))

(assert (=> b!5204746 m!6256166))

(assert (=> b!5204103 d!1678577))

(assert (=> b!5204103 d!1678563))

(declare-fun bs!1209772 () Bool)

(declare-fun d!1678589 () Bool)

(assert (= bs!1209772 (and d!1678589 d!1678309)))

(declare-fun lambda!260868 () Int)

(assert (=> bs!1209772 (= lambda!260868 lambda!260816)))

(declare-fun bs!1209773 () Bool)

(assert (= bs!1209773 (and d!1678589 d!1678353)))

(assert (=> bs!1209773 (= lambda!260868 lambda!260830)))

(declare-fun bs!1209774 () Bool)

(assert (= bs!1209774 (and d!1678589 d!1678313)))

(assert (=> bs!1209774 (= lambda!260868 lambda!260819)))

(declare-fun bs!1209775 () Bool)

(assert (= bs!1209775 (and d!1678589 d!1678291)))

(assert (=> bs!1209775 (= lambda!260868 lambda!260811)))

(declare-fun bs!1209776 () Bool)

(assert (= bs!1209776 (and d!1678589 d!1678335)))

(assert (=> bs!1209776 (= lambda!260868 lambda!260821)))

(assert (=> d!1678589 (= (inv!80224 setElem!33030) (forall!14227 (exprs!4675 setElem!33030) lambda!260868))))

(declare-fun bs!1209777 () Bool)

(assert (= bs!1209777 d!1678589))

(declare-fun m!6256170 () Bool)

(assert (=> bs!1209777 m!6256170))

(assert (=> setNonEmpty!33030 d!1678589))

(declare-fun b!5204752 () Bool)

(declare-fun e!3240675 () Bool)

(declare-fun e!3240681 () Bool)

(assert (=> b!5204752 (= e!3240675 e!3240681)))

(declare-fun res!2211105 () Bool)

(assert (=> b!5204752 (= res!2211105 (not (nullable!4960 (reg!15120 lt!2141412))))))

(assert (=> b!5204752 (=> (not res!2211105) (not e!3240681))))

(declare-fun d!1678591 () Bool)

(declare-fun res!2211104 () Bool)

(declare-fun e!3240677 () Bool)

(assert (=> d!1678591 (=> res!2211104 e!3240677)))

(assert (=> d!1678591 (= res!2211104 ((_ is ElementMatch!14791) lt!2141412))))

(assert (=> d!1678591 (= (validRegex!6527 lt!2141412) e!3240677)))

(declare-fun c!897174 () Bool)

(declare-fun c!897173 () Bool)

(declare-fun bm!366008 () Bool)

(declare-fun call!366014 () Bool)

(assert (=> bm!366008 (= call!366014 (validRegex!6527 (ite c!897173 (reg!15120 lt!2141412) (ite c!897174 (regTwo!30095 lt!2141412) (regTwo!30094 lt!2141412)))))))

(declare-fun b!5204753 () Bool)

(declare-fun e!3240678 () Bool)

(assert (=> b!5204753 (= e!3240675 e!3240678)))

(assert (=> b!5204753 (= c!897174 ((_ is Union!14791) lt!2141412))))

(declare-fun b!5204754 () Bool)

(declare-fun e!3240676 () Bool)

(declare-fun call!366013 () Bool)

(assert (=> b!5204754 (= e!3240676 call!366013)))

(declare-fun b!5204755 () Bool)

(declare-fun res!2211106 () Bool)

(assert (=> b!5204755 (=> (not res!2211106) (not e!3240676))))

(declare-fun call!366015 () Bool)

(assert (=> b!5204755 (= res!2211106 call!366015)))

(assert (=> b!5204755 (= e!3240678 e!3240676)))

(declare-fun bm!366009 () Bool)

(assert (=> bm!366009 (= call!366015 (validRegex!6527 (ite c!897174 (regOne!30095 lt!2141412) (regOne!30094 lt!2141412))))))

(declare-fun b!5204756 () Bool)

(assert (=> b!5204756 (= e!3240677 e!3240675)))

(assert (=> b!5204756 (= c!897173 ((_ is Star!14791) lt!2141412))))

(declare-fun b!5204757 () Bool)

(declare-fun e!3240680 () Bool)

(declare-fun e!3240679 () Bool)

(assert (=> b!5204757 (= e!3240680 e!3240679)))

(declare-fun res!2211103 () Bool)

(assert (=> b!5204757 (=> (not res!2211103) (not e!3240679))))

(assert (=> b!5204757 (= res!2211103 call!366015)))

(declare-fun b!5204758 () Bool)

(declare-fun res!2211102 () Bool)

(assert (=> b!5204758 (=> res!2211102 e!3240680)))

(assert (=> b!5204758 (= res!2211102 (not ((_ is Concat!23636) lt!2141412)))))

(assert (=> b!5204758 (= e!3240678 e!3240680)))

(declare-fun b!5204759 () Bool)

(assert (=> b!5204759 (= e!3240681 call!366014)))

(declare-fun bm!366010 () Bool)

(assert (=> bm!366010 (= call!366013 call!366014)))

(declare-fun b!5204760 () Bool)

(assert (=> b!5204760 (= e!3240679 call!366013)))

(assert (= (and d!1678591 (not res!2211104)) b!5204756))

(assert (= (and b!5204756 c!897173) b!5204752))

(assert (= (and b!5204756 (not c!897173)) b!5204753))

(assert (= (and b!5204752 res!2211105) b!5204759))

(assert (= (and b!5204753 c!897174) b!5204755))

(assert (= (and b!5204753 (not c!897174)) b!5204758))

(assert (= (and b!5204755 res!2211106) b!5204754))

(assert (= (and b!5204758 (not res!2211102)) b!5204757))

(assert (= (and b!5204757 res!2211103) b!5204760))

(assert (= (or b!5204754 b!5204760) bm!366010))

(assert (= (or b!5204755 b!5204757) bm!366009))

(assert (= (or b!5204759 bm!366010) bm!366008))

(declare-fun m!6256172 () Bool)

(assert (=> b!5204752 m!6256172))

(declare-fun m!6256174 () Bool)

(assert (=> bm!366008 m!6256174))

(declare-fun m!6256176 () Bool)

(assert (=> bm!366009 m!6256176))

(assert (=> d!1678353 d!1678591))

(declare-fun d!1678593 () Bool)

(declare-fun res!2211111 () Bool)

(declare-fun e!3240686 () Bool)

(assert (=> d!1678593 (=> res!2211111 e!3240686)))

(assert (=> d!1678593 (= res!2211111 ((_ is Nil!60548) (exprs!4675 (h!66997 zl!343))))))

(assert (=> d!1678593 (= (forall!14227 (exprs!4675 (h!66997 zl!343)) lambda!260830) e!3240686)))

(declare-fun b!5204765 () Bool)

(declare-fun e!3240687 () Bool)

(assert (=> b!5204765 (= e!3240686 e!3240687)))

(declare-fun res!2211112 () Bool)

(assert (=> b!5204765 (=> (not res!2211112) (not e!3240687))))

(declare-fun dynLambda!23917 (Int Regex!14791) Bool)

(assert (=> b!5204765 (= res!2211112 (dynLambda!23917 lambda!260830 (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204766 () Bool)

(assert (=> b!5204766 (= e!3240687 (forall!14227 (t!373827 (exprs!4675 (h!66997 zl!343))) lambda!260830))))

(assert (= (and d!1678593 (not res!2211111)) b!5204765))

(assert (= (and b!5204765 res!2211112) b!5204766))

(declare-fun b_lambda!201389 () Bool)

(assert (=> (not b_lambda!201389) (not b!5204765)))

(declare-fun m!6256178 () Bool)

(assert (=> b!5204765 m!6256178))

(declare-fun m!6256180 () Bool)

(assert (=> b!5204766 m!6256180))

(assert (=> d!1678353 d!1678593))

(declare-fun bs!1209778 () Bool)

(declare-fun b!5204775 () Bool)

(assert (= bs!1209778 (and b!5204775 d!1678365)))

(declare-fun lambda!260869 () Int)

(assert (=> bs!1209778 (not (= lambda!260869 lambda!260839))))

(declare-fun bs!1209779 () Bool)

(assert (= bs!1209779 (and b!5204775 b!5203446)))

(assert (=> bs!1209779 (not (= lambda!260869 lambda!260781))))

(assert (=> bs!1209779 (not (= lambda!260869 lambda!260782))))

(declare-fun bs!1209780 () Bool)

(assert (= bs!1209780 (and b!5204775 d!1678363)))

(assert (=> bs!1209780 (not (= lambda!260869 lambda!260833))))

(declare-fun bs!1209781 () Bool)

(assert (= bs!1209781 (and b!5204775 b!5203997)))

(assert (=> bs!1209781 (= (and (= (reg!15120 (regOne!30095 r!7292)) (reg!15120 r!7292)) (= (regOne!30095 r!7292) r!7292)) (= lambda!260869 lambda!260826))))

(declare-fun bs!1209782 () Bool)

(assert (= bs!1209782 (and b!5204775 b!5203992)))

(assert (=> bs!1209782 (not (= lambda!260869 lambda!260827))))

(assert (=> bs!1209778 (not (= lambda!260869 lambda!260838))))

(assert (=> b!5204775 true))

(assert (=> b!5204775 true))

(declare-fun bs!1209783 () Bool)

(declare-fun b!5204770 () Bool)

(assert (= bs!1209783 (and b!5204770 d!1678365)))

(declare-fun lambda!260870 () Int)

(assert (=> bs!1209783 (= (and (= (regOne!30094 (regOne!30095 r!7292)) (regOne!30094 r!7292)) (= (regTwo!30094 (regOne!30095 r!7292)) (regTwo!30094 r!7292))) (= lambda!260870 lambda!260839))))

(declare-fun bs!1209784 () Bool)

(assert (= bs!1209784 (and b!5204770 b!5204775)))

(assert (=> bs!1209784 (not (= lambda!260870 lambda!260869))))

(declare-fun bs!1209785 () Bool)

(assert (= bs!1209785 (and b!5204770 b!5203446)))

(assert (=> bs!1209785 (not (= lambda!260870 lambda!260781))))

(assert (=> bs!1209785 (= (and (= (regOne!30094 (regOne!30095 r!7292)) (regOne!30094 r!7292)) (= (regTwo!30094 (regOne!30095 r!7292)) (regTwo!30094 r!7292))) (= lambda!260870 lambda!260782))))

(declare-fun bs!1209786 () Bool)

(assert (= bs!1209786 (and b!5204770 d!1678363)))

(assert (=> bs!1209786 (not (= lambda!260870 lambda!260833))))

(declare-fun bs!1209787 () Bool)

(assert (= bs!1209787 (and b!5204770 b!5203997)))

(assert (=> bs!1209787 (not (= lambda!260870 lambda!260826))))

(declare-fun bs!1209788 () Bool)

(assert (= bs!1209788 (and b!5204770 b!5203992)))

(assert (=> bs!1209788 (= (and (= (regOne!30094 (regOne!30095 r!7292)) (regOne!30094 r!7292)) (= (regTwo!30094 (regOne!30095 r!7292)) (regTwo!30094 r!7292))) (= lambda!260870 lambda!260827))))

(assert (=> bs!1209783 (not (= lambda!260870 lambda!260838))))

(assert (=> b!5204770 true))

(assert (=> b!5204770 true))

(declare-fun b!5204767 () Bool)

(declare-fun c!897178 () Bool)

(assert (=> b!5204767 (= c!897178 ((_ is Union!14791) (regOne!30095 r!7292)))))

(declare-fun e!3240690 () Bool)

(declare-fun e!3240688 () Bool)

(assert (=> b!5204767 (= e!3240690 e!3240688)))

(declare-fun d!1678595 () Bool)

(declare-fun c!897176 () Bool)

(assert (=> d!1678595 (= c!897176 ((_ is EmptyExpr!14791) (regOne!30095 r!7292)))))

(declare-fun e!3240694 () Bool)

(assert (=> d!1678595 (= (matchRSpec!1894 (regOne!30095 r!7292) s!2326) e!3240694)))

(declare-fun bm!366011 () Bool)

(declare-fun call!366017 () Bool)

(assert (=> bm!366011 (= call!366017 (isEmpty!32457 s!2326))))

(declare-fun b!5204768 () Bool)

(declare-fun e!3240692 () Bool)

(assert (=> b!5204768 (= e!3240694 e!3240692)))

(declare-fun res!2211115 () Bool)

(assert (=> b!5204768 (= res!2211115 (not ((_ is EmptyLang!14791) (regOne!30095 r!7292))))))

(assert (=> b!5204768 (=> (not res!2211115) (not e!3240692))))

(declare-fun b!5204769 () Bool)

(declare-fun e!3240693 () Bool)

(assert (=> b!5204769 (= e!3240693 (matchRSpec!1894 (regTwo!30095 (regOne!30095 r!7292)) s!2326))))

(declare-fun e!3240691 () Bool)

(declare-fun call!366016 () Bool)

(assert (=> b!5204770 (= e!3240691 call!366016)))

(declare-fun b!5204771 () Bool)

(assert (=> b!5204771 (= e!3240688 e!3240691)))

(declare-fun c!897175 () Bool)

(assert (=> b!5204771 (= c!897175 ((_ is Star!14791) (regOne!30095 r!7292)))))

(declare-fun b!5204772 () Bool)

(assert (=> b!5204772 (= e!3240694 call!366017)))

(declare-fun bm!366012 () Bool)

(assert (=> bm!366012 (= call!366016 (Exists!1972 (ite c!897175 lambda!260869 lambda!260870)))))

(declare-fun b!5204773 () Bool)

(declare-fun c!897177 () Bool)

(assert (=> b!5204773 (= c!897177 ((_ is ElementMatch!14791) (regOne!30095 r!7292)))))

(assert (=> b!5204773 (= e!3240692 e!3240690)))

(declare-fun b!5204774 () Bool)

(declare-fun res!2211114 () Bool)

(declare-fun e!3240689 () Bool)

(assert (=> b!5204774 (=> res!2211114 e!3240689)))

(assert (=> b!5204774 (= res!2211114 call!366017)))

(assert (=> b!5204774 (= e!3240691 e!3240689)))

(assert (=> b!5204775 (= e!3240689 call!366016)))

(declare-fun b!5204776 () Bool)

(assert (=> b!5204776 (= e!3240690 (= s!2326 (Cons!60550 (c!896858 (regOne!30095 r!7292)) Nil!60550)))))

(declare-fun b!5204777 () Bool)

(assert (=> b!5204777 (= e!3240688 e!3240693)))

(declare-fun res!2211113 () Bool)

(assert (=> b!5204777 (= res!2211113 (matchRSpec!1894 (regOne!30095 (regOne!30095 r!7292)) s!2326))))

(assert (=> b!5204777 (=> res!2211113 e!3240693)))

(assert (= (and d!1678595 c!897176) b!5204772))

(assert (= (and d!1678595 (not c!897176)) b!5204768))

(assert (= (and b!5204768 res!2211115) b!5204773))

(assert (= (and b!5204773 c!897177) b!5204776))

(assert (= (and b!5204773 (not c!897177)) b!5204767))

(assert (= (and b!5204767 c!897178) b!5204777))

(assert (= (and b!5204767 (not c!897178)) b!5204771))

(assert (= (and b!5204777 (not res!2211113)) b!5204769))

(assert (= (and b!5204771 c!897175) b!5204774))

(assert (= (and b!5204771 (not c!897175)) b!5204770))

(assert (= (and b!5204774 (not res!2211114)) b!5204775))

(assert (= (or b!5204775 b!5204770) bm!366012))

(assert (= (or b!5204772 b!5204774) bm!366011))

(assert (=> bm!366011 m!6255602))

(declare-fun m!6256182 () Bool)

(assert (=> b!5204769 m!6256182))

(declare-fun m!6256184 () Bool)

(assert (=> bm!366012 m!6256184))

(declare-fun m!6256186 () Bool)

(assert (=> b!5204777 m!6256186))

(assert (=> b!5203999 d!1678595))

(declare-fun d!1678597 () Bool)

(declare-fun c!897179 () Bool)

(assert (=> d!1678597 (= c!897179 (isEmpty!32457 (tail!10254 (t!373829 s!2326))))))

(declare-fun e!3240695 () Bool)

(assert (=> d!1678597 (= (matchZipper!1035 (derivationStepZipper!1063 lt!2141334 (head!11157 (t!373829 s!2326))) (tail!10254 (t!373829 s!2326))) e!3240695)))

(declare-fun b!5204778 () Bool)

(assert (=> b!5204778 (= e!3240695 (nullableZipper!1219 (derivationStepZipper!1063 lt!2141334 (head!11157 (t!373829 s!2326)))))))

(declare-fun b!5204779 () Bool)

(assert (=> b!5204779 (= e!3240695 (matchZipper!1035 (derivationStepZipper!1063 (derivationStepZipper!1063 lt!2141334 (head!11157 (t!373829 s!2326))) (head!11157 (tail!10254 (t!373829 s!2326)))) (tail!10254 (tail!10254 (t!373829 s!2326)))))))

(assert (= (and d!1678597 c!897179) b!5204778))

(assert (= (and d!1678597 (not c!897179)) b!5204779))

(assert (=> d!1678597 m!6255452))

(declare-fun m!6256188 () Bool)

(assert (=> d!1678597 m!6256188))

(assert (=> b!5204778 m!6255450))

(declare-fun m!6256190 () Bool)

(assert (=> b!5204778 m!6256190))

(assert (=> b!5204779 m!6255452))

(declare-fun m!6256192 () Bool)

(assert (=> b!5204779 m!6256192))

(assert (=> b!5204779 m!6255450))

(assert (=> b!5204779 m!6256192))

(declare-fun m!6256194 () Bool)

(assert (=> b!5204779 m!6256194))

(assert (=> b!5204779 m!6255452))

(declare-fun m!6256196 () Bool)

(assert (=> b!5204779 m!6256196))

(assert (=> b!5204779 m!6256194))

(assert (=> b!5204779 m!6256196))

(declare-fun m!6256198 () Bool)

(assert (=> b!5204779 m!6256198))

(assert (=> b!5203670 d!1678597))

(declare-fun bs!1209789 () Bool)

(declare-fun d!1678599 () Bool)

(assert (= bs!1209789 (and d!1678599 b!5203448)))

(declare-fun lambda!260873 () Int)

(assert (=> bs!1209789 (= (= (head!11157 (t!373829 s!2326)) (h!66998 s!2326)) (= lambda!260873 lambda!260783))))

(assert (=> d!1678599 true))

(assert (=> d!1678599 (= (derivationStepZipper!1063 lt!2141334 (head!11157 (t!373829 s!2326))) (flatMap!518 lt!2141334 lambda!260873))))

(declare-fun bs!1209790 () Bool)

(assert (= bs!1209790 d!1678599))

(declare-fun m!6256200 () Bool)

(assert (=> bs!1209790 m!6256200))

(assert (=> b!5203670 d!1678599))

(declare-fun d!1678601 () Bool)

(assert (=> d!1678601 (= (head!11157 (t!373829 s!2326)) (h!66998 (t!373829 s!2326)))))

(assert (=> b!5203670 d!1678601))

(declare-fun d!1678603 () Bool)

(assert (=> d!1678603 (= (tail!10254 (t!373829 s!2326)) (t!373829 (t!373829 s!2326)))))

(assert (=> b!5203670 d!1678603))

(declare-fun d!1678605 () Bool)

(declare-fun c!897184 () Bool)

(assert (=> d!1678605 (= c!897184 ((_ is Nil!60549) lt!2141400))))

(declare-fun e!3240698 () (InoxSet Context!8350))

(assert (=> d!1678605 (= (content!10715 lt!2141400) e!3240698)))

(declare-fun b!5204786 () Bool)

(assert (=> b!5204786 (= e!3240698 ((as const (Array Context!8350 Bool)) false))))

(declare-fun b!5204787 () Bool)

(assert (=> b!5204787 (= e!3240698 ((_ map or) (store ((as const (Array Context!8350 Bool)) false) (h!66997 lt!2141400) true) (content!10715 (t!373828 lt!2141400))))))

(assert (= (and d!1678605 c!897184) b!5204786))

(assert (= (and d!1678605 (not c!897184)) b!5204787))

(declare-fun m!6256202 () Bool)

(assert (=> b!5204787 m!6256202))

(declare-fun m!6256204 () Bool)

(assert (=> b!5204787 m!6256204))

(assert (=> b!5203929 d!1678605))

(declare-fun d!1678607 () Bool)

(declare-fun res!2211116 () Bool)

(declare-fun e!3240699 () Bool)

(assert (=> d!1678607 (=> res!2211116 e!3240699)))

(assert (=> d!1678607 (= res!2211116 ((_ is Nil!60548) (exprs!4675 (h!66997 zl!343))))))

(assert (=> d!1678607 (= (forall!14227 (exprs!4675 (h!66997 zl!343)) lambda!260819) e!3240699)))

(declare-fun b!5204788 () Bool)

(declare-fun e!3240700 () Bool)

(assert (=> b!5204788 (= e!3240699 e!3240700)))

(declare-fun res!2211117 () Bool)

(assert (=> b!5204788 (=> (not res!2211117) (not e!3240700))))

(assert (=> b!5204788 (= res!2211117 (dynLambda!23917 lambda!260819 (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204789 () Bool)

(assert (=> b!5204789 (= e!3240700 (forall!14227 (t!373827 (exprs!4675 (h!66997 zl!343))) lambda!260819))))

(assert (= (and d!1678607 (not res!2211116)) b!5204788))

(assert (= (and b!5204788 res!2211117) b!5204789))

(declare-fun b_lambda!201391 () Bool)

(assert (=> (not b_lambda!201391) (not b!5204788)))

(declare-fun m!6256206 () Bool)

(assert (=> b!5204788 m!6256206))

(declare-fun m!6256208 () Bool)

(assert (=> b!5204789 m!6256208))

(assert (=> d!1678313 d!1678607))

(declare-fun bs!1209791 () Bool)

(declare-fun d!1678609 () Bool)

(assert (= bs!1209791 (and d!1678609 d!1678309)))

(declare-fun lambda!260874 () Int)

(assert (=> bs!1209791 (= lambda!260874 lambda!260816)))

(declare-fun bs!1209792 () Bool)

(assert (= bs!1209792 (and d!1678609 d!1678353)))

(assert (=> bs!1209792 (= lambda!260874 lambda!260830)))

(declare-fun bs!1209793 () Bool)

(assert (= bs!1209793 (and d!1678609 d!1678313)))

(assert (=> bs!1209793 (= lambda!260874 lambda!260819)))

(declare-fun bs!1209794 () Bool)

(assert (= bs!1209794 (and d!1678609 d!1678589)))

(assert (=> bs!1209794 (= lambda!260874 lambda!260868)))

(declare-fun bs!1209795 () Bool)

(assert (= bs!1209795 (and d!1678609 d!1678291)))

(assert (=> bs!1209795 (= lambda!260874 lambda!260811)))

(declare-fun bs!1209796 () Bool)

(assert (= bs!1209796 (and d!1678609 d!1678335)))

(assert (=> bs!1209796 (= lambda!260874 lambda!260821)))

(declare-fun e!3240704 () Bool)

(assert (=> d!1678609 e!3240704))

(declare-fun res!2211118 () Bool)

(assert (=> d!1678609 (=> (not res!2211118) (not e!3240704))))

(declare-fun lt!2141455 () Regex!14791)

(assert (=> d!1678609 (= res!2211118 (validRegex!6527 lt!2141455))))

(declare-fun e!3240706 () Regex!14791)

(assert (=> d!1678609 (= lt!2141455 e!3240706)))

(declare-fun c!897187 () Bool)

(declare-fun e!3240705 () Bool)

(assert (=> d!1678609 (= c!897187 e!3240705)))

(declare-fun res!2211119 () Bool)

(assert (=> d!1678609 (=> (not res!2211119) (not e!3240705))))

(assert (=> d!1678609 (= res!2211119 ((_ is Cons!60548) (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(assert (=> d!1678609 (forall!14227 (t!373827 (exprs!4675 (h!66997 zl!343))) lambda!260874)))

(assert (=> d!1678609 (= (generalisedConcat!460 (t!373827 (exprs!4675 (h!66997 zl!343)))) lt!2141455)))

(declare-fun b!5204790 () Bool)

(declare-fun e!3240703 () Regex!14791)

(assert (=> b!5204790 (= e!3240703 (Concat!23636 (h!66996 (t!373827 (exprs!4675 (h!66997 zl!343)))) (generalisedConcat!460 (t!373827 (t!373827 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun b!5204791 () Bool)

(assert (=> b!5204791 (= e!3240706 (h!66996 (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204792 () Bool)

(declare-fun e!3240702 () Bool)

(declare-fun e!3240701 () Bool)

(assert (=> b!5204792 (= e!3240702 e!3240701)))

(declare-fun c!897185 () Bool)

(assert (=> b!5204792 (= c!897185 (isEmpty!32454 (tail!10255 (t!373827 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5204793 () Bool)

(assert (=> b!5204793 (= e!3240701 (= lt!2141455 (head!11158 (t!373827 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5204794 () Bool)

(assert (=> b!5204794 (= e!3240706 e!3240703)))

(declare-fun c!897188 () Bool)

(assert (=> b!5204794 (= c!897188 ((_ is Cons!60548) (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204795 () Bool)

(assert (=> b!5204795 (= e!3240703 EmptyExpr!14791)))

(declare-fun b!5204796 () Bool)

(assert (=> b!5204796 (= e!3240702 (isEmptyExpr!755 lt!2141455))))

(declare-fun b!5204797 () Bool)

(assert (=> b!5204797 (= e!3240701 (isConcat!278 lt!2141455))))

(declare-fun b!5204798 () Bool)

(assert (=> b!5204798 (= e!3240704 e!3240702)))

(declare-fun c!897186 () Bool)

(assert (=> b!5204798 (= c!897186 (isEmpty!32454 (t!373827 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204799 () Bool)

(assert (=> b!5204799 (= e!3240705 (isEmpty!32454 (t!373827 (t!373827 (exprs!4675 (h!66997 zl!343))))))))

(assert (= (and d!1678609 res!2211119) b!5204799))

(assert (= (and d!1678609 c!897187) b!5204791))

(assert (= (and d!1678609 (not c!897187)) b!5204794))

(assert (= (and b!5204794 c!897188) b!5204790))

(assert (= (and b!5204794 (not c!897188)) b!5204795))

(assert (= (and d!1678609 res!2211118) b!5204798))

(assert (= (and b!5204798 c!897186) b!5204796))

(assert (= (and b!5204798 (not c!897186)) b!5204792))

(assert (= (and b!5204792 c!897185) b!5204793))

(assert (= (and b!5204792 (not c!897185)) b!5204797))

(declare-fun m!6256210 () Bool)

(assert (=> b!5204796 m!6256210))

(declare-fun m!6256212 () Bool)

(assert (=> b!5204799 m!6256212))

(declare-fun m!6256214 () Bool)

(assert (=> b!5204792 m!6256214))

(assert (=> b!5204792 m!6256214))

(declare-fun m!6256216 () Bool)

(assert (=> b!5204792 m!6256216))

(declare-fun m!6256218 () Bool)

(assert (=> b!5204797 m!6256218))

(declare-fun m!6256220 () Bool)

(assert (=> b!5204793 m!6256220))

(assert (=> b!5204798 m!6255284))

(declare-fun m!6256222 () Bool)

(assert (=> d!1678609 m!6256222))

(declare-fun m!6256224 () Bool)

(assert (=> d!1678609 m!6256224))

(declare-fun m!6256226 () Bool)

(assert (=> b!5204790 m!6256226))

(assert (=> b!5204064 d!1678609))

(declare-fun b!5204800 () Bool)

(declare-fun e!3240707 () Bool)

(declare-fun e!3240713 () Bool)

(assert (=> b!5204800 (= e!3240707 e!3240713)))

(declare-fun res!2211123 () Bool)

(assert (=> b!5204800 (= res!2211123 (not (nullable!4960 (reg!15120 lt!2141403))))))

(assert (=> b!5204800 (=> (not res!2211123) (not e!3240713))))

(declare-fun d!1678611 () Bool)

(declare-fun res!2211122 () Bool)

(declare-fun e!3240709 () Bool)

(assert (=> d!1678611 (=> res!2211122 e!3240709)))

(assert (=> d!1678611 (= res!2211122 ((_ is ElementMatch!14791) lt!2141403))))

(assert (=> d!1678611 (= (validRegex!6527 lt!2141403) e!3240709)))

(declare-fun c!897189 () Bool)

(declare-fun c!897190 () Bool)

(declare-fun call!366019 () Bool)

(declare-fun bm!366013 () Bool)

(assert (=> bm!366013 (= call!366019 (validRegex!6527 (ite c!897189 (reg!15120 lt!2141403) (ite c!897190 (regTwo!30095 lt!2141403) (regTwo!30094 lt!2141403)))))))

(declare-fun b!5204801 () Bool)

(declare-fun e!3240710 () Bool)

(assert (=> b!5204801 (= e!3240707 e!3240710)))

(assert (=> b!5204801 (= c!897190 ((_ is Union!14791) lt!2141403))))

(declare-fun b!5204802 () Bool)

(declare-fun e!3240708 () Bool)

(declare-fun call!366018 () Bool)

(assert (=> b!5204802 (= e!3240708 call!366018)))

(declare-fun b!5204803 () Bool)

(declare-fun res!2211124 () Bool)

(assert (=> b!5204803 (=> (not res!2211124) (not e!3240708))))

(declare-fun call!366020 () Bool)

(assert (=> b!5204803 (= res!2211124 call!366020)))

(assert (=> b!5204803 (= e!3240710 e!3240708)))

(declare-fun bm!366014 () Bool)

(assert (=> bm!366014 (= call!366020 (validRegex!6527 (ite c!897190 (regOne!30095 lt!2141403) (regOne!30094 lt!2141403))))))

(declare-fun b!5204804 () Bool)

(assert (=> b!5204804 (= e!3240709 e!3240707)))

(assert (=> b!5204804 (= c!897189 ((_ is Star!14791) lt!2141403))))

(declare-fun b!5204805 () Bool)

(declare-fun e!3240712 () Bool)

(declare-fun e!3240711 () Bool)

(assert (=> b!5204805 (= e!3240712 e!3240711)))

(declare-fun res!2211121 () Bool)

(assert (=> b!5204805 (=> (not res!2211121) (not e!3240711))))

(assert (=> b!5204805 (= res!2211121 call!366020)))

(declare-fun b!5204806 () Bool)

(declare-fun res!2211120 () Bool)

(assert (=> b!5204806 (=> res!2211120 e!3240712)))

(assert (=> b!5204806 (= res!2211120 (not ((_ is Concat!23636) lt!2141403)))))

(assert (=> b!5204806 (= e!3240710 e!3240712)))

(declare-fun b!5204807 () Bool)

(assert (=> b!5204807 (= e!3240713 call!366019)))

(declare-fun bm!366015 () Bool)

(assert (=> bm!366015 (= call!366018 call!366019)))

(declare-fun b!5204808 () Bool)

(assert (=> b!5204808 (= e!3240711 call!366018)))

(assert (= (and d!1678611 (not res!2211122)) b!5204804))

(assert (= (and b!5204804 c!897189) b!5204800))

(assert (= (and b!5204804 (not c!897189)) b!5204801))

(assert (= (and b!5204800 res!2211123) b!5204807))

(assert (= (and b!5204801 c!897190) b!5204803))

(assert (= (and b!5204801 (not c!897190)) b!5204806))

(assert (= (and b!5204803 res!2211124) b!5204802))

(assert (= (and b!5204806 (not res!2211120)) b!5204805))

(assert (= (and b!5204805 res!2211121) b!5204808))

(assert (= (or b!5204802 b!5204808) bm!366015))

(assert (= (or b!5204803 b!5204805) bm!366014))

(assert (= (or b!5204807 bm!366015) bm!366013))

(declare-fun m!6256228 () Bool)

(assert (=> b!5204800 m!6256228))

(declare-fun m!6256230 () Bool)

(assert (=> bm!366013 m!6256230))

(declare-fun m!6256232 () Bool)

(assert (=> bm!366014 m!6256232))

(assert (=> d!1678341 d!1678611))

(assert (=> d!1678341 d!1678291))

(assert (=> d!1678341 d!1678309))

(declare-fun d!1678613 () Bool)

(assert (=> d!1678613 (= ($colon$colon!1269 (exprs!4675 lt!2141333) (ite (or c!896991 c!896990) (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (h!66996 (exprs!4675 (h!66997 zl!343))))) (Cons!60548 (ite (or c!896991 c!896990) (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (h!66996 (exprs!4675 (h!66997 zl!343)))) (exprs!4675 lt!2141333)))))

(assert (=> bm!365887 d!1678613))

(declare-fun d!1678615 () Bool)

(assert (=> d!1678615 (= (isEmpty!32454 (tail!10255 (exprs!4675 (h!66997 zl!343)))) ((_ is Nil!60548) (tail!10255 (exprs!4675 (h!66997 zl!343)))))))

(assert (=> b!5204066 d!1678615))

(declare-fun d!1678617 () Bool)

(assert (=> d!1678617 (= (tail!10255 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))

(assert (=> b!5204066 d!1678617))

(declare-fun d!1678619 () Bool)

(assert (=> d!1678619 (= (nullable!4960 (reg!15120 (regOne!30095 (regOne!30094 r!7292)))) (nullableFct!1371 (reg!15120 (regOne!30095 (regOne!30094 r!7292)))))))

(declare-fun bs!1209797 () Bool)

(assert (= bs!1209797 d!1678619))

(declare-fun m!6256234 () Bool)

(assert (=> bs!1209797 m!6256234))

(assert (=> b!5203948 d!1678619))

(declare-fun d!1678621 () Bool)

(declare-fun lambda!260877 () Int)

(declare-fun exists!1956 ((InoxSet Context!8350) Int) Bool)

(assert (=> d!1678621 (= (nullableZipper!1219 ((_ map or) lt!2141334 lt!2141341)) (exists!1956 ((_ map or) lt!2141334 lt!2141341) lambda!260877))))

(declare-fun bs!1209798 () Bool)

(assert (= bs!1209798 d!1678621))

(declare-fun m!6256236 () Bool)

(assert (=> bs!1209798 m!6256236))

(assert (=> b!5203671 d!1678621))

(declare-fun d!1678623 () Bool)

(assert (=> d!1678623 (= (nullable!4960 r!7292) (nullableFct!1371 r!7292))))

(declare-fun bs!1209799 () Bool)

(assert (= bs!1209799 d!1678623))

(declare-fun m!6256238 () Bool)

(assert (=> bs!1209799 m!6256238))

(assert (=> b!5204029 d!1678623))

(declare-fun d!1678625 () Bool)

(declare-fun res!2211129 () Bool)

(declare-fun e!3240718 () Bool)

(assert (=> d!1678625 (=> res!2211129 e!3240718)))

(assert (=> d!1678625 (= res!2211129 ((_ is Nil!60549) lt!2141400))))

(assert (=> d!1678625 (= (noDuplicate!1175 lt!2141400) e!3240718)))

(declare-fun b!5204813 () Bool)

(declare-fun e!3240719 () Bool)

(assert (=> b!5204813 (= e!3240718 e!3240719)))

(declare-fun res!2211130 () Bool)

(assert (=> b!5204813 (=> (not res!2211130) (not e!3240719))))

(declare-fun contains!19657 (List!60673 Context!8350) Bool)

(assert (=> b!5204813 (= res!2211130 (not (contains!19657 (t!373828 lt!2141400) (h!66997 lt!2141400))))))

(declare-fun b!5204814 () Bool)

(assert (=> b!5204814 (= e!3240719 (noDuplicate!1175 (t!373828 lt!2141400)))))

(assert (= (and d!1678625 (not res!2211129)) b!5204813))

(assert (= (and b!5204813 res!2211130) b!5204814))

(declare-fun m!6256240 () Bool)

(assert (=> b!5204813 m!6256240))

(declare-fun m!6256242 () Bool)

(assert (=> b!5204814 m!6256242))

(assert (=> d!1678337 d!1678625))

(declare-fun d!1678627 () Bool)

(declare-fun e!3240726 () Bool)

(assert (=> d!1678627 e!3240726))

(declare-fun res!2211135 () Bool)

(assert (=> d!1678627 (=> (not res!2211135) (not e!3240726))))

(declare-fun res!2211136 () List!60673)

(assert (=> d!1678627 (= res!2211135 (noDuplicate!1175 res!2211136))))

(declare-fun e!3240727 () Bool)

(assert (=> d!1678627 e!3240727))

(assert (=> d!1678627 (= (choose!38680 z!1189) res!2211136)))

(declare-fun b!5204822 () Bool)

(declare-fun e!3240728 () Bool)

(declare-fun tp!1459803 () Bool)

(assert (=> b!5204822 (= e!3240728 tp!1459803)))

(declare-fun tp!1459802 () Bool)

(declare-fun b!5204821 () Bool)

(assert (=> b!5204821 (= e!3240727 (and (inv!80224 (h!66997 res!2211136)) e!3240728 tp!1459802))))

(declare-fun b!5204823 () Bool)

(assert (=> b!5204823 (= e!3240726 (= (content!10715 res!2211136) z!1189))))

(assert (= b!5204821 b!5204822))

(assert (= (and d!1678627 ((_ is Cons!60549) res!2211136)) b!5204821))

(assert (= (and d!1678627 res!2211135) b!5204823))

(declare-fun m!6256244 () Bool)

(assert (=> d!1678627 m!6256244))

(declare-fun m!6256246 () Bool)

(assert (=> b!5204821 m!6256246))

(declare-fun m!6256248 () Bool)

(assert (=> b!5204823 m!6256248))

(assert (=> d!1678337 d!1678627))

(declare-fun d!1678629 () Bool)

(assert (=> d!1678629 (= (isEmptyExpr!755 lt!2141412) ((_ is EmptyExpr!14791) lt!2141412))))

(assert (=> b!5204070 d!1678629))

(declare-fun d!1678631 () Bool)

(assert (=> d!1678631 true))

(assert (=> d!1678631 true))

(declare-fun res!2211139 () Bool)

(assert (=> d!1678631 (= (choose!38682 lambda!260781) res!2211139)))

(assert (=> d!1678357 d!1678631))

(declare-fun d!1678633 () Bool)

(assert (=> d!1678633 true))

(assert (=> d!1678633 true))

(declare-fun res!2211140 () Bool)

(assert (=> d!1678633 (= (choose!38682 lambda!260782) res!2211140)))

(assert (=> d!1678361 d!1678633))

(declare-fun d!1678635 () Bool)

(assert (=> d!1678635 (= (isEmpty!32454 (exprs!4675 (h!66997 zl!343))) ((_ is Nil!60548) (exprs!4675 (h!66997 zl!343))))))

(assert (=> b!5204072 d!1678635))

(declare-fun d!1678637 () Bool)

(assert (=> d!1678637 (= (isEmpty!32457 s!2326) ((_ is Nil!60550) s!2326))))

(assert (=> bm!365905 d!1678637))

(declare-fun bm!366016 () Bool)

(declare-fun call!366021 () (InoxSet Context!8350))

(assert (=> bm!366016 (= call!366021 (derivationStepZipperDown!239 (h!66996 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))))) (Context!8351 (t!373827 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343))))))) (h!66998 s!2326)))))

(declare-fun e!3240731 () (InoxSet Context!8350))

(declare-fun b!5204824 () Bool)

(assert (=> b!5204824 (= e!3240731 ((_ map or) call!366021 (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343))))))) (h!66998 s!2326))))))

(declare-fun b!5204825 () Bool)

(declare-fun e!3240730 () (InoxSet Context!8350))

(assert (=> b!5204825 (= e!3240731 e!3240730)))

(declare-fun c!897194 () Bool)

(assert (=> b!5204825 (= c!897194 ((_ is Cons!60548) (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun d!1678639 () Bool)

(declare-fun c!897193 () Bool)

(declare-fun e!3240729 () Bool)

(assert (=> d!1678639 (= c!897193 e!3240729)))

(declare-fun res!2211141 () Bool)

(assert (=> d!1678639 (=> (not res!2211141) (not e!3240729))))

(assert (=> d!1678639 (= res!2211141 ((_ is Cons!60548) (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))))))))

(assert (=> d!1678639 (= (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))) (h!66998 s!2326)) e!3240731)))

(declare-fun b!5204826 () Bool)

(assert (=> b!5204826 (= e!3240730 call!366021)))

(declare-fun b!5204827 () Bool)

(assert (=> b!5204827 (= e!3240729 (nullable!4960 (h!66996 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343))))))))))

(declare-fun b!5204828 () Bool)

(assert (=> b!5204828 (= e!3240730 ((as const (Array Context!8350 Bool)) false))))

(assert (= (and d!1678639 res!2211141) b!5204827))

(assert (= (and d!1678639 c!897193) b!5204824))

(assert (= (and d!1678639 (not c!897193)) b!5204825))

(assert (= (and b!5204825 c!897194) b!5204826))

(assert (= (and b!5204825 (not c!897194)) b!5204828))

(assert (= (or b!5204824 b!5204826) bm!366016))

(declare-fun m!6256250 () Bool)

(assert (=> bm!366016 m!6256250))

(declare-fun m!6256252 () Bool)

(assert (=> b!5204824 m!6256252))

(declare-fun m!6256254 () Bool)

(assert (=> b!5204827 m!6256254))

(assert (=> b!5203922 d!1678639))

(declare-fun bm!366017 () Bool)

(declare-fun call!366022 () (InoxSet Context!8350))

(assert (=> bm!366017 (= call!366022 (derivationStepZipperDown!239 (h!66996 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))) (Context!8351 (t!373827 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))) (h!66998 s!2326)))))

(declare-fun e!3240734 () (InoxSet Context!8350))

(declare-fun b!5204829 () Bool)

(assert (=> b!5204829 (= e!3240734 ((_ map or) call!366022 (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))) (h!66998 s!2326))))))

(declare-fun b!5204830 () Bool)

(declare-fun e!3240733 () (InoxSet Context!8350))

(assert (=> b!5204830 (= e!3240734 e!3240733)))

(declare-fun c!897196 () Bool)

(assert (=> b!5204830 (= c!897196 ((_ is Cons!60548) (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))))

(declare-fun d!1678641 () Bool)

(declare-fun c!897195 () Bool)

(declare-fun e!3240732 () Bool)

(assert (=> d!1678641 (= c!897195 e!3240732)))

(declare-fun res!2211142 () Bool)

(assert (=> d!1678641 (=> (not res!2211142) (not e!3240732))))

(assert (=> d!1678641 (= res!2211142 ((_ is Cons!60548) (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))))

(assert (=> d!1678641 (= (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (h!66998 s!2326)) e!3240734)))

(declare-fun b!5204831 () Bool)

(assert (=> b!5204831 (= e!3240733 call!366022)))

(declare-fun b!5204832 () Bool)

(assert (=> b!5204832 (= e!3240732 (nullable!4960 (h!66996 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))))))

(declare-fun b!5204833 () Bool)

(assert (=> b!5204833 (= e!3240733 ((as const (Array Context!8350 Bool)) false))))

(assert (= (and d!1678641 res!2211142) b!5204832))

(assert (= (and d!1678641 c!897195) b!5204829))

(assert (= (and d!1678641 (not c!897195)) b!5204830))

(assert (= (and b!5204830 c!897196) b!5204831))

(assert (= (and b!5204830 (not c!897196)) b!5204833))

(assert (= (or b!5204829 b!5204831) bm!366017))

(declare-fun m!6256256 () Bool)

(assert (=> bm!366017 m!6256256))

(declare-fun m!6256258 () Bool)

(assert (=> b!5204829 m!6256258))

(declare-fun m!6256260 () Bool)

(assert (=> b!5204832 m!6256260))

(assert (=> b!5203884 d!1678641))

(declare-fun bm!366018 () Bool)

(declare-fun call!366023 () (InoxSet Context!8350))

(assert (=> bm!366018 (= call!366023 (derivationStepZipperDown!239 (h!66996 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 lt!2141333))))) (Context!8351 (t!373827 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 lt!2141333)))))) (h!66998 s!2326)))))

(declare-fun b!5204834 () Bool)

(declare-fun e!3240737 () (InoxSet Context!8350))

(assert (=> b!5204834 (= e!3240737 ((_ map or) call!366023 (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 lt!2141333)))))) (h!66998 s!2326))))))

(declare-fun b!5204835 () Bool)

(declare-fun e!3240736 () (InoxSet Context!8350))

(assert (=> b!5204835 (= e!3240737 e!3240736)))

(declare-fun c!897198 () Bool)

(assert (=> b!5204835 (= c!897198 ((_ is Cons!60548) (exprs!4675 (Context!8351 (t!373827 (exprs!4675 lt!2141333))))))))

(declare-fun d!1678643 () Bool)

(declare-fun c!897197 () Bool)

(declare-fun e!3240735 () Bool)

(assert (=> d!1678643 (= c!897197 e!3240735)))

(declare-fun res!2211143 () Bool)

(assert (=> d!1678643 (=> (not res!2211143) (not e!3240735))))

(assert (=> d!1678643 (= res!2211143 ((_ is Cons!60548) (exprs!4675 (Context!8351 (t!373827 (exprs!4675 lt!2141333))))))))

(assert (=> d!1678643 (= (derivationStepZipperUp!163 (Context!8351 (t!373827 (exprs!4675 lt!2141333))) (h!66998 s!2326)) e!3240737)))

(declare-fun b!5204836 () Bool)

(assert (=> b!5204836 (= e!3240736 call!366023)))

(declare-fun b!5204837 () Bool)

(assert (=> b!5204837 (= e!3240735 (nullable!4960 (h!66996 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 lt!2141333)))))))))

(declare-fun b!5204838 () Bool)

(assert (=> b!5204838 (= e!3240736 ((as const (Array Context!8350 Bool)) false))))

(assert (= (and d!1678643 res!2211143) b!5204837))

(assert (= (and d!1678643 c!897197) b!5204834))

(assert (= (and d!1678643 (not c!897197)) b!5204835))

(assert (= (and b!5204835 c!897198) b!5204836))

(assert (= (and b!5204835 (not c!897198)) b!5204838))

(assert (= (or b!5204834 b!5204836) bm!366018))

(declare-fun m!6256262 () Bool)

(assert (=> bm!366018 m!6256262))

(declare-fun m!6256264 () Bool)

(assert (=> b!5204834 m!6256264))

(declare-fun m!6256266 () Bool)

(assert (=> b!5204837 m!6256266))

(assert (=> b!5203879 d!1678643))

(declare-fun d!1678645 () Bool)

(assert (=> d!1678645 (= (nullable!4960 (reg!15120 r!7292)) (nullableFct!1371 (reg!15120 r!7292)))))

(declare-fun bs!1209800 () Bool)

(assert (= bs!1209800 d!1678645))

(declare-fun m!6256268 () Bool)

(assert (=> bs!1209800 m!6256268))

(assert (=> b!5204074 d!1678645))

(declare-fun bs!1209801 () Bool)

(declare-fun d!1678647 () Bool)

(assert (= bs!1209801 (and d!1678647 d!1678621)))

(declare-fun lambda!260878 () Int)

(assert (=> bs!1209801 (= lambda!260878 lambda!260877)))

(assert (=> d!1678647 (= (nullableZipper!1219 lt!2141341) (exists!1956 lt!2141341 lambda!260878))))

(declare-fun bs!1209802 () Bool)

(assert (= bs!1209802 d!1678647))

(declare-fun m!6256270 () Bool)

(assert (=> bs!1209802 m!6256270))

(assert (=> b!5204042 d!1678647))

(declare-fun d!1678649 () Bool)

(assert (=> d!1678649 (= (isEmpty!32454 (tail!10255 (unfocusZipperList!233 zl!343))) ((_ is Nil!60548) (tail!10255 (unfocusZipperList!233 zl!343))))))

(assert (=> b!5203747 d!1678649))

(declare-fun d!1678651 () Bool)

(assert (=> d!1678651 (= (tail!10255 (unfocusZipperList!233 zl!343)) (t!373827 (unfocusZipperList!233 zl!343)))))

(assert (=> b!5203747 d!1678651))

(assert (=> d!1678347 d!1678345))

(assert (=> d!1678347 d!1678343))

(declare-fun d!1678653 () Bool)

(assert (=> d!1678653 (= (matchR!6976 r!7292 s!2326) (matchRSpec!1894 r!7292 s!2326))))

(assert (=> d!1678653 true))

(declare-fun _$88!3444 () Unit!152430)

(assert (=> d!1678653 (= (choose!38681 r!7292 s!2326) _$88!3444)))

(declare-fun bs!1209803 () Bool)

(assert (= bs!1209803 d!1678653))

(assert (=> bs!1209803 m!6255280))

(assert (=> bs!1209803 m!6255278))

(assert (=> d!1678347 d!1678653))

(assert (=> d!1678347 d!1678355))

(declare-fun bs!1209804 () Bool)

(declare-fun b!5204847 () Bool)

(assert (= bs!1209804 (and b!5204847 d!1678365)))

(declare-fun lambda!260879 () Int)

(assert (=> bs!1209804 (not (= lambda!260879 lambda!260839))))

(declare-fun bs!1209805 () Bool)

(assert (= bs!1209805 (and b!5204847 b!5204775)))

(assert (=> bs!1209805 (= (and (= (reg!15120 (regTwo!30095 r!7292)) (reg!15120 (regOne!30095 r!7292))) (= (regTwo!30095 r!7292) (regOne!30095 r!7292))) (= lambda!260879 lambda!260869))))

(declare-fun bs!1209806 () Bool)

(assert (= bs!1209806 (and b!5204847 b!5203446)))

(assert (=> bs!1209806 (not (= lambda!260879 lambda!260781))))

(assert (=> bs!1209806 (not (= lambda!260879 lambda!260782))))

(declare-fun bs!1209807 () Bool)

(assert (= bs!1209807 (and b!5204847 d!1678363)))

(assert (=> bs!1209807 (not (= lambda!260879 lambda!260833))))

(declare-fun bs!1209808 () Bool)

(assert (= bs!1209808 (and b!5204847 b!5204770)))

(assert (=> bs!1209808 (not (= lambda!260879 lambda!260870))))

(declare-fun bs!1209809 () Bool)

(assert (= bs!1209809 (and b!5204847 b!5203997)))

(assert (=> bs!1209809 (= (and (= (reg!15120 (regTwo!30095 r!7292)) (reg!15120 r!7292)) (= (regTwo!30095 r!7292) r!7292)) (= lambda!260879 lambda!260826))))

(declare-fun bs!1209810 () Bool)

(assert (= bs!1209810 (and b!5204847 b!5203992)))

(assert (=> bs!1209810 (not (= lambda!260879 lambda!260827))))

(assert (=> bs!1209804 (not (= lambda!260879 lambda!260838))))

(assert (=> b!5204847 true))

(assert (=> b!5204847 true))

(declare-fun bs!1209811 () Bool)

(declare-fun b!5204842 () Bool)

(assert (= bs!1209811 (and b!5204842 d!1678365)))

(declare-fun lambda!260880 () Int)

(assert (=> bs!1209811 (= (and (= (regOne!30094 (regTwo!30095 r!7292)) (regOne!30094 r!7292)) (= (regTwo!30094 (regTwo!30095 r!7292)) (regTwo!30094 r!7292))) (= lambda!260880 lambda!260839))))

(declare-fun bs!1209812 () Bool)

(assert (= bs!1209812 (and b!5204842 b!5204775)))

(assert (=> bs!1209812 (not (= lambda!260880 lambda!260869))))

(declare-fun bs!1209813 () Bool)

(assert (= bs!1209813 (and b!5204842 b!5203446)))

(assert (=> bs!1209813 (not (= lambda!260880 lambda!260781))))

(assert (=> bs!1209813 (= (and (= (regOne!30094 (regTwo!30095 r!7292)) (regOne!30094 r!7292)) (= (regTwo!30094 (regTwo!30095 r!7292)) (regTwo!30094 r!7292))) (= lambda!260880 lambda!260782))))

(declare-fun bs!1209814 () Bool)

(assert (= bs!1209814 (and b!5204842 d!1678363)))

(assert (=> bs!1209814 (not (= lambda!260880 lambda!260833))))

(declare-fun bs!1209815 () Bool)

(assert (= bs!1209815 (and b!5204842 b!5204770)))

(assert (=> bs!1209815 (= (and (= (regOne!30094 (regTwo!30095 r!7292)) (regOne!30094 (regOne!30095 r!7292))) (= (regTwo!30094 (regTwo!30095 r!7292)) (regTwo!30094 (regOne!30095 r!7292)))) (= lambda!260880 lambda!260870))))

(declare-fun bs!1209816 () Bool)

(assert (= bs!1209816 (and b!5204842 b!5203992)))

(assert (=> bs!1209816 (= (and (= (regOne!30094 (regTwo!30095 r!7292)) (regOne!30094 r!7292)) (= (regTwo!30094 (regTwo!30095 r!7292)) (regTwo!30094 r!7292))) (= lambda!260880 lambda!260827))))

(assert (=> bs!1209811 (not (= lambda!260880 lambda!260838))))

(declare-fun bs!1209817 () Bool)

(assert (= bs!1209817 (and b!5204842 b!5203997)))

(assert (=> bs!1209817 (not (= lambda!260880 lambda!260826))))

(declare-fun bs!1209818 () Bool)

(assert (= bs!1209818 (and b!5204842 b!5204847)))

(assert (=> bs!1209818 (not (= lambda!260880 lambda!260879))))

(assert (=> b!5204842 true))

(assert (=> b!5204842 true))

(declare-fun b!5204839 () Bool)

(declare-fun c!897202 () Bool)

(assert (=> b!5204839 (= c!897202 ((_ is Union!14791) (regTwo!30095 r!7292)))))

(declare-fun e!3240740 () Bool)

(declare-fun e!3240738 () Bool)

(assert (=> b!5204839 (= e!3240740 e!3240738)))

(declare-fun d!1678655 () Bool)

(declare-fun c!897200 () Bool)

(assert (=> d!1678655 (= c!897200 ((_ is EmptyExpr!14791) (regTwo!30095 r!7292)))))

(declare-fun e!3240744 () Bool)

(assert (=> d!1678655 (= (matchRSpec!1894 (regTwo!30095 r!7292) s!2326) e!3240744)))

(declare-fun bm!366019 () Bool)

(declare-fun call!366025 () Bool)

(assert (=> bm!366019 (= call!366025 (isEmpty!32457 s!2326))))

(declare-fun b!5204840 () Bool)

(declare-fun e!3240742 () Bool)

(assert (=> b!5204840 (= e!3240744 e!3240742)))

(declare-fun res!2211146 () Bool)

(assert (=> b!5204840 (= res!2211146 (not ((_ is EmptyLang!14791) (regTwo!30095 r!7292))))))

(assert (=> b!5204840 (=> (not res!2211146) (not e!3240742))))

(declare-fun b!5204841 () Bool)

(declare-fun e!3240743 () Bool)

(assert (=> b!5204841 (= e!3240743 (matchRSpec!1894 (regTwo!30095 (regTwo!30095 r!7292)) s!2326))))

(declare-fun e!3240741 () Bool)

(declare-fun call!366024 () Bool)

(assert (=> b!5204842 (= e!3240741 call!366024)))

(declare-fun b!5204843 () Bool)

(assert (=> b!5204843 (= e!3240738 e!3240741)))

(declare-fun c!897199 () Bool)

(assert (=> b!5204843 (= c!897199 ((_ is Star!14791) (regTwo!30095 r!7292)))))

(declare-fun b!5204844 () Bool)

(assert (=> b!5204844 (= e!3240744 call!366025)))

(declare-fun bm!366020 () Bool)

(assert (=> bm!366020 (= call!366024 (Exists!1972 (ite c!897199 lambda!260879 lambda!260880)))))

(declare-fun b!5204845 () Bool)

(declare-fun c!897201 () Bool)

(assert (=> b!5204845 (= c!897201 ((_ is ElementMatch!14791) (regTwo!30095 r!7292)))))

(assert (=> b!5204845 (= e!3240742 e!3240740)))

(declare-fun b!5204846 () Bool)

(declare-fun res!2211145 () Bool)

(declare-fun e!3240739 () Bool)

(assert (=> b!5204846 (=> res!2211145 e!3240739)))

(assert (=> b!5204846 (= res!2211145 call!366025)))

(assert (=> b!5204846 (= e!3240741 e!3240739)))

(assert (=> b!5204847 (= e!3240739 call!366024)))

(declare-fun b!5204848 () Bool)

(assert (=> b!5204848 (= e!3240740 (= s!2326 (Cons!60550 (c!896858 (regTwo!30095 r!7292)) Nil!60550)))))

(declare-fun b!5204849 () Bool)

(assert (=> b!5204849 (= e!3240738 e!3240743)))

(declare-fun res!2211144 () Bool)

(assert (=> b!5204849 (= res!2211144 (matchRSpec!1894 (regOne!30095 (regTwo!30095 r!7292)) s!2326))))

(assert (=> b!5204849 (=> res!2211144 e!3240743)))

(assert (= (and d!1678655 c!897200) b!5204844))

(assert (= (and d!1678655 (not c!897200)) b!5204840))

(assert (= (and b!5204840 res!2211146) b!5204845))

(assert (= (and b!5204845 c!897201) b!5204848))

(assert (= (and b!5204845 (not c!897201)) b!5204839))

(assert (= (and b!5204839 c!897202) b!5204849))

(assert (= (and b!5204839 (not c!897202)) b!5204843))

(assert (= (and b!5204849 (not res!2211144)) b!5204841))

(assert (= (and b!5204843 c!897199) b!5204846))

(assert (= (and b!5204843 (not c!897199)) b!5204842))

(assert (= (and b!5204846 (not res!2211145)) b!5204847))

(assert (= (or b!5204847 b!5204842) bm!366020))

(assert (= (or b!5204844 b!5204846) bm!366019))

(assert (=> bm!366019 m!6255602))

(declare-fun m!6256272 () Bool)

(assert (=> b!5204841 m!6256272))

(declare-fun m!6256274 () Bool)

(assert (=> bm!366020 m!6256274))

(declare-fun m!6256276 () Bool)

(assert (=> b!5204849 m!6256276))

(assert (=> b!5203991 d!1678655))

(declare-fun b!5204864 () Bool)

(declare-fun e!3240759 () Bool)

(declare-fun e!3240758 () Bool)

(assert (=> b!5204864 (= e!3240759 e!3240758)))

(declare-fun res!2211158 () Bool)

(assert (=> b!5204864 (=> (not res!2211158) (not e!3240758))))

(assert (=> b!5204864 (= res!2211158 (and (not ((_ is EmptyLang!14791) (h!66996 (exprs!4675 (h!66997 zl!343))))) (not ((_ is ElementMatch!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun bm!366025 () Bool)

(declare-fun call!366030 () Bool)

(declare-fun c!897205 () Bool)

(assert (=> bm!366025 (= call!366030 (nullable!4960 (ite c!897205 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun b!5204865 () Bool)

(declare-fun e!3240762 () Bool)

(declare-fun call!366031 () Bool)

(assert (=> b!5204865 (= e!3240762 call!366031)))

(declare-fun b!5204866 () Bool)

(declare-fun e!3240757 () Bool)

(assert (=> b!5204866 (= e!3240758 e!3240757)))

(declare-fun res!2211160 () Bool)

(assert (=> b!5204866 (=> res!2211160 e!3240757)))

(assert (=> b!5204866 (= res!2211160 ((_ is Star!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5204867 () Bool)

(declare-fun e!3240760 () Bool)

(assert (=> b!5204867 (= e!3240760 call!366031)))

(declare-fun bm!366026 () Bool)

(assert (=> bm!366026 (= call!366031 (nullable!4960 (ite c!897205 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))

(declare-fun d!1678657 () Bool)

(declare-fun res!2211161 () Bool)

(assert (=> d!1678657 (=> res!2211161 e!3240759)))

(assert (=> d!1678657 (= res!2211161 ((_ is EmptyExpr!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(assert (=> d!1678657 (= (nullableFct!1371 (h!66996 (exprs!4675 (h!66997 zl!343)))) e!3240759)))

(declare-fun b!5204868 () Bool)

(declare-fun e!3240761 () Bool)

(assert (=> b!5204868 (= e!3240761 e!3240762)))

(declare-fun res!2211157 () Bool)

(assert (=> b!5204868 (= res!2211157 call!366030)))

(assert (=> b!5204868 (=> res!2211157 e!3240762)))

(declare-fun b!5204869 () Bool)

(assert (=> b!5204869 (= e!3240761 e!3240760)))

(declare-fun res!2211159 () Bool)

(assert (=> b!5204869 (= res!2211159 call!366030)))

(assert (=> b!5204869 (=> (not res!2211159) (not e!3240760))))

(declare-fun b!5204870 () Bool)

(assert (=> b!5204870 (= e!3240757 e!3240761)))

(assert (=> b!5204870 (= c!897205 ((_ is Union!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(assert (= (and d!1678657 (not res!2211161)) b!5204864))

(assert (= (and b!5204864 res!2211158) b!5204866))

(assert (= (and b!5204866 (not res!2211160)) b!5204870))

(assert (= (and b!5204870 c!897205) b!5204868))

(assert (= (and b!5204870 (not c!897205)) b!5204869))

(assert (= (and b!5204868 (not res!2211157)) b!5204865))

(assert (= (and b!5204869 res!2211159) b!5204867))

(assert (= (or b!5204865 b!5204867) bm!366026))

(assert (= (or b!5204868 b!5204869) bm!366025))

(declare-fun m!6256278 () Bool)

(assert (=> bm!366025 m!6256278))

(declare-fun m!6256280 () Bool)

(assert (=> bm!366026 m!6256280))

(assert (=> d!1678315 d!1678657))

(declare-fun d!1678659 () Bool)

(assert (=> d!1678659 (= (isEmpty!32454 (t!373827 (unfocusZipperList!233 zl!343))) ((_ is Nil!60548) (t!373827 (unfocusZipperList!233 zl!343))))))

(assert (=> b!5203749 d!1678659))

(declare-fun d!1678661 () Bool)

(assert (=> d!1678661 (= (isEmpty!32457 (tail!10254 s!2326)) ((_ is Nil!60550) (tail!10254 s!2326)))))

(assert (=> b!5204036 d!1678661))

(declare-fun d!1678663 () Bool)

(assert (=> d!1678663 (= (tail!10254 s!2326) (t!373829 s!2326))))

(assert (=> b!5204036 d!1678663))

(declare-fun b!5204872 () Bool)

(declare-fun e!3240763 () List!60674)

(assert (=> b!5204872 (= e!3240763 (Cons!60550 (h!66998 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550))) (++!13199 (t!373829 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550))) (t!373829 s!2326))))))

(declare-fun b!5204871 () Bool)

(assert (=> b!5204871 (= e!3240763 (t!373829 s!2326))))

(declare-fun d!1678665 () Bool)

(declare-fun e!3240764 () Bool)

(assert (=> d!1678665 e!3240764))

(declare-fun res!2211163 () Bool)

(assert (=> d!1678665 (=> (not res!2211163) (not e!3240764))))

(declare-fun lt!2141456 () List!60674)

(assert (=> d!1678665 (= res!2211163 (= (content!10716 lt!2141456) ((_ map or) (content!10716 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550))) (content!10716 (t!373829 s!2326)))))))

(assert (=> d!1678665 (= lt!2141456 e!3240763)))

(declare-fun c!897206 () Bool)

(assert (=> d!1678665 (= c!897206 ((_ is Nil!60550) (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550))))))

(assert (=> d!1678665 (= (++!13199 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (t!373829 s!2326)) lt!2141456)))

(declare-fun b!5204874 () Bool)

(assert (=> b!5204874 (= e!3240764 (or (not (= (t!373829 s!2326) Nil!60550)) (= lt!2141456 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)))))))

(declare-fun b!5204873 () Bool)

(declare-fun res!2211162 () Bool)

(assert (=> b!5204873 (=> (not res!2211162) (not e!3240764))))

(assert (=> b!5204873 (= res!2211162 (= (size!39710 lt!2141456) (+ (size!39710 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550))) (size!39710 (t!373829 s!2326)))))))

(assert (= (and d!1678665 c!897206) b!5204871))

(assert (= (and d!1678665 (not c!897206)) b!5204872))

(assert (= (and d!1678665 res!2211163) b!5204873))

(assert (= (and b!5204873 res!2211162) b!5204874))

(declare-fun m!6256282 () Bool)

(assert (=> b!5204872 m!6256282))

(declare-fun m!6256284 () Bool)

(assert (=> d!1678665 m!6256284))

(assert (=> d!1678665 m!6255668))

(declare-fun m!6256286 () Bool)

(assert (=> d!1678665 m!6256286))

(declare-fun m!6256288 () Bool)

(assert (=> d!1678665 m!6256288))

(declare-fun m!6256290 () Bool)

(assert (=> b!5204873 m!6256290))

(assert (=> b!5204873 m!6255668))

(declare-fun m!6256292 () Bool)

(assert (=> b!5204873 m!6256292))

(declare-fun m!6256294 () Bool)

(assert (=> b!5204873 m!6256294))

(assert (=> b!5204108 d!1678665))

(declare-fun b!5204876 () Bool)

(declare-fun e!3240765 () List!60674)

(assert (=> b!5204876 (= e!3240765 (Cons!60550 (h!66998 Nil!60550) (++!13199 (t!373829 Nil!60550) (Cons!60550 (h!66998 s!2326) Nil!60550))))))

(declare-fun b!5204875 () Bool)

(assert (=> b!5204875 (= e!3240765 (Cons!60550 (h!66998 s!2326) Nil!60550))))

(declare-fun d!1678667 () Bool)

(declare-fun e!3240766 () Bool)

(assert (=> d!1678667 e!3240766))

(declare-fun res!2211165 () Bool)

(assert (=> d!1678667 (=> (not res!2211165) (not e!3240766))))

(declare-fun lt!2141457 () List!60674)

(assert (=> d!1678667 (= res!2211165 (= (content!10716 lt!2141457) ((_ map or) (content!10716 Nil!60550) (content!10716 (Cons!60550 (h!66998 s!2326) Nil!60550)))))))

(assert (=> d!1678667 (= lt!2141457 e!3240765)))

(declare-fun c!897207 () Bool)

(assert (=> d!1678667 (= c!897207 ((_ is Nil!60550) Nil!60550))))

(assert (=> d!1678667 (= (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) lt!2141457)))

(declare-fun b!5204878 () Bool)

(assert (=> b!5204878 (= e!3240766 (or (not (= (Cons!60550 (h!66998 s!2326) Nil!60550) Nil!60550)) (= lt!2141457 Nil!60550)))))

(declare-fun b!5204877 () Bool)

(declare-fun res!2211164 () Bool)

(assert (=> b!5204877 (=> (not res!2211164) (not e!3240766))))

(assert (=> b!5204877 (= res!2211164 (= (size!39710 lt!2141457) (+ (size!39710 Nil!60550) (size!39710 (Cons!60550 (h!66998 s!2326) Nil!60550)))))))

(assert (= (and d!1678667 c!897207) b!5204875))

(assert (= (and d!1678667 (not c!897207)) b!5204876))

(assert (= (and d!1678667 res!2211165) b!5204877))

(assert (= (and b!5204877 res!2211164) b!5204878))

(declare-fun m!6256296 () Bool)

(assert (=> b!5204876 m!6256296))

(declare-fun m!6256298 () Bool)

(assert (=> d!1678667 m!6256298))

(declare-fun m!6256300 () Bool)

(assert (=> d!1678667 m!6256300))

(declare-fun m!6256302 () Bool)

(assert (=> d!1678667 m!6256302))

(declare-fun m!6256304 () Bool)

(assert (=> b!5204877 m!6256304))

(declare-fun m!6256306 () Bool)

(assert (=> b!5204877 m!6256306))

(declare-fun m!6256308 () Bool)

(assert (=> b!5204877 m!6256308))

(assert (=> b!5204108 d!1678667))

(declare-fun d!1678669 () Bool)

(assert (=> d!1678669 (= (++!13199 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (t!373829 s!2326)) s!2326)))

(declare-fun lt!2141460 () Unit!152430)

(declare-fun choose!38686 (List!60674 C!29852 List!60674 List!60674) Unit!152430)

(assert (=> d!1678669 (= lt!2141460 (choose!38686 Nil!60550 (h!66998 s!2326) (t!373829 s!2326) s!2326))))

(assert (=> d!1678669 (= (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) (t!373829 s!2326))) s!2326)))

(assert (=> d!1678669 (= (lemmaMoveElementToOtherListKeepsConcatEq!1614 Nil!60550 (h!66998 s!2326) (t!373829 s!2326) s!2326) lt!2141460)))

(declare-fun bs!1209819 () Bool)

(assert (= bs!1209819 d!1678669))

(assert (=> bs!1209819 m!6255668))

(assert (=> bs!1209819 m!6255668))

(assert (=> bs!1209819 m!6255670))

(declare-fun m!6256310 () Bool)

(assert (=> bs!1209819 m!6256310))

(declare-fun m!6256312 () Bool)

(assert (=> bs!1209819 m!6256312))

(assert (=> b!5204108 d!1678669))

(declare-fun b!5204879 () Bool)

(declare-fun e!3240771 () Option!14902)

(declare-fun e!3240769 () Option!14902)

(assert (=> b!5204879 (= e!3240771 e!3240769)))

(declare-fun c!897208 () Bool)

(assert (=> b!5204879 (= c!897208 ((_ is Nil!60550) (t!373829 s!2326)))))

(declare-fun b!5204880 () Bool)

(assert (=> b!5204880 (= e!3240769 None!14901)))

(declare-fun b!5204881 () Bool)

(declare-fun res!2211168 () Bool)

(declare-fun e!3240770 () Bool)

(assert (=> b!5204881 (=> (not res!2211168) (not e!3240770))))

(declare-fun lt!2141461 () Option!14902)

(assert (=> b!5204881 (= res!2211168 (matchR!6976 (regTwo!30094 r!7292) (_2!35293 (get!20800 lt!2141461))))))

(declare-fun b!5204882 () Bool)

(assert (=> b!5204882 (= e!3240771 (Some!14901 (tuple2!63981 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (t!373829 s!2326))))))

(declare-fun b!5204883 () Bool)

(declare-fun e!3240768 () Bool)

(assert (=> b!5204883 (= e!3240768 (matchR!6976 (regTwo!30094 r!7292) (t!373829 s!2326)))))

(declare-fun d!1678671 () Bool)

(declare-fun e!3240767 () Bool)

(assert (=> d!1678671 e!3240767))

(declare-fun res!2211166 () Bool)

(assert (=> d!1678671 (=> res!2211166 e!3240767)))

(assert (=> d!1678671 (= res!2211166 e!3240770)))

(declare-fun res!2211170 () Bool)

(assert (=> d!1678671 (=> (not res!2211170) (not e!3240770))))

(assert (=> d!1678671 (= res!2211170 (isDefined!11605 lt!2141461))))

(assert (=> d!1678671 (= lt!2141461 e!3240771)))

(declare-fun c!897209 () Bool)

(assert (=> d!1678671 (= c!897209 e!3240768)))

(declare-fun res!2211169 () Bool)

(assert (=> d!1678671 (=> (not res!2211169) (not e!3240768))))

(assert (=> d!1678671 (= res!2211169 (matchR!6976 (regOne!30094 r!7292) (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550))))))

(assert (=> d!1678671 (validRegex!6527 (regOne!30094 r!7292))))

(assert (=> d!1678671 (= (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (t!373829 s!2326) s!2326) lt!2141461)))

(declare-fun b!5204884 () Bool)

(assert (=> b!5204884 (= e!3240767 (not (isDefined!11605 lt!2141461)))))

(declare-fun b!5204885 () Bool)

(assert (=> b!5204885 (= e!3240770 (= (++!13199 (_1!35293 (get!20800 lt!2141461)) (_2!35293 (get!20800 lt!2141461))) s!2326))))

(declare-fun b!5204886 () Bool)

(declare-fun lt!2141463 () Unit!152430)

(declare-fun lt!2141462 () Unit!152430)

(assert (=> b!5204886 (= lt!2141463 lt!2141462)))

(assert (=> b!5204886 (= (++!13199 (++!13199 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (Cons!60550 (h!66998 (t!373829 s!2326)) Nil!60550)) (t!373829 (t!373829 s!2326))) s!2326)))

(assert (=> b!5204886 (= lt!2141462 (lemmaMoveElementToOtherListKeepsConcatEq!1614 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (h!66998 (t!373829 s!2326)) (t!373829 (t!373829 s!2326)) s!2326))))

(assert (=> b!5204886 (= e!3240769 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) (++!13199 (++!13199 Nil!60550 (Cons!60550 (h!66998 s!2326) Nil!60550)) (Cons!60550 (h!66998 (t!373829 s!2326)) Nil!60550)) (t!373829 (t!373829 s!2326)) s!2326))))

(declare-fun b!5204887 () Bool)

(declare-fun res!2211167 () Bool)

(assert (=> b!5204887 (=> (not res!2211167) (not e!3240770))))

(assert (=> b!5204887 (= res!2211167 (matchR!6976 (regOne!30094 r!7292) (_1!35293 (get!20800 lt!2141461))))))

(assert (= (and d!1678671 res!2211169) b!5204883))

(assert (= (and d!1678671 c!897209) b!5204882))

(assert (= (and d!1678671 (not c!897209)) b!5204879))

(assert (= (and b!5204879 c!897208) b!5204880))

(assert (= (and b!5204879 (not c!897208)) b!5204886))

(assert (= (and d!1678671 res!2211170) b!5204887))

(assert (= (and b!5204887 res!2211167) b!5204881))

(assert (= (and b!5204881 res!2211168) b!5204885))

(assert (= (and d!1678671 (not res!2211166)) b!5204884))

(declare-fun m!6256314 () Bool)

(assert (=> b!5204884 m!6256314))

(assert (=> d!1678671 m!6256314))

(assert (=> d!1678671 m!6255668))

(declare-fun m!6256316 () Bool)

(assert (=> d!1678671 m!6256316))

(assert (=> d!1678671 m!6255660))

(declare-fun m!6256318 () Bool)

(assert (=> b!5204887 m!6256318))

(declare-fun m!6256320 () Bool)

(assert (=> b!5204887 m!6256320))

(assert (=> b!5204881 m!6256318))

(declare-fun m!6256322 () Bool)

(assert (=> b!5204881 m!6256322))

(assert (=> b!5204886 m!6255668))

(declare-fun m!6256324 () Bool)

(assert (=> b!5204886 m!6256324))

(assert (=> b!5204886 m!6256324))

(declare-fun m!6256326 () Bool)

(assert (=> b!5204886 m!6256326))

(assert (=> b!5204886 m!6255668))

(declare-fun m!6256328 () Bool)

(assert (=> b!5204886 m!6256328))

(assert (=> b!5204886 m!6256324))

(declare-fun m!6256330 () Bool)

(assert (=> b!5204886 m!6256330))

(assert (=> b!5204885 m!6256318))

(declare-fun m!6256332 () Bool)

(assert (=> b!5204885 m!6256332))

(declare-fun m!6256334 () Bool)

(assert (=> b!5204883 m!6256334))

(assert (=> b!5204108 d!1678671))

(assert (=> d!1678345 d!1678637))

(assert (=> d!1678345 d!1678355))

(declare-fun d!1678673 () Bool)

(assert (=> d!1678673 (= (Exists!1972 (ite c!897009 lambda!260826 lambda!260827)) (choose!38682 (ite c!897009 lambda!260826 lambda!260827)))))

(declare-fun bs!1209820 () Bool)

(assert (= bs!1209820 d!1678673))

(declare-fun m!6256336 () Bool)

(assert (=> bs!1209820 m!6256336))

(assert (=> bm!365906 d!1678673))

(declare-fun d!1678675 () Bool)

(assert (=> d!1678675 (= (isEmpty!32458 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326)) (not ((_ is Some!14901) (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326))))))

(assert (=> d!1678367 d!1678675))

(declare-fun d!1678677 () Bool)

(assert (=> d!1678677 (= (isDefined!11605 lt!2141419) (not (isEmpty!32458 lt!2141419)))))

(declare-fun bs!1209821 () Bool)

(assert (= bs!1209821 d!1678677))

(declare-fun m!6256338 () Bool)

(assert (=> bs!1209821 m!6256338))

(assert (=> b!5204106 d!1678677))

(assert (=> d!1678359 d!1678677))

(declare-fun b!5204888 () Bool)

(declare-fun res!2211174 () Bool)

(declare-fun e!3240775 () Bool)

(assert (=> b!5204888 (=> res!2211174 e!3240775)))

(assert (=> b!5204888 (= res!2211174 (not (isEmpty!32457 (tail!10254 Nil!60550))))))

(declare-fun b!5204889 () Bool)

(declare-fun e!3240778 () Bool)

(assert (=> b!5204889 (= e!3240778 (nullable!4960 (regOne!30094 r!7292)))))

(declare-fun b!5204890 () Bool)

(declare-fun e!3240776 () Bool)

(assert (=> b!5204890 (= e!3240776 e!3240775)))

(declare-fun res!2211176 () Bool)

(assert (=> b!5204890 (=> res!2211176 e!3240775)))

(declare-fun call!366032 () Bool)

(assert (=> b!5204890 (= res!2211176 call!366032)))

(declare-fun b!5204891 () Bool)

(declare-fun e!3240772 () Bool)

(declare-fun lt!2141464 () Bool)

(assert (=> b!5204891 (= e!3240772 (= lt!2141464 call!366032))))

(declare-fun d!1678679 () Bool)

(assert (=> d!1678679 e!3240772))

(declare-fun c!897212 () Bool)

(assert (=> d!1678679 (= c!897212 ((_ is EmptyExpr!14791) (regOne!30094 r!7292)))))

(assert (=> d!1678679 (= lt!2141464 e!3240778)))

(declare-fun c!897210 () Bool)

(assert (=> d!1678679 (= c!897210 (isEmpty!32457 Nil!60550))))

(assert (=> d!1678679 (validRegex!6527 (regOne!30094 r!7292))))

(assert (=> d!1678679 (= (matchR!6976 (regOne!30094 r!7292) Nil!60550) lt!2141464)))

(declare-fun b!5204892 () Bool)

(assert (=> b!5204892 (= e!3240778 (matchR!6976 (derivativeStep!4041 (regOne!30094 r!7292) (head!11157 Nil!60550)) (tail!10254 Nil!60550)))))

(declare-fun b!5204893 () Bool)

(declare-fun res!2211173 () Bool)

(declare-fun e!3240777 () Bool)

(assert (=> b!5204893 (=> res!2211173 e!3240777)))

(assert (=> b!5204893 (= res!2211173 (not ((_ is ElementMatch!14791) (regOne!30094 r!7292))))))

(declare-fun e!3240773 () Bool)

(assert (=> b!5204893 (= e!3240773 e!3240777)))

(declare-fun b!5204894 () Bool)

(assert (=> b!5204894 (= e!3240772 e!3240773)))

(declare-fun c!897211 () Bool)

(assert (=> b!5204894 (= c!897211 ((_ is EmptyLang!14791) (regOne!30094 r!7292)))))

(declare-fun b!5204895 () Bool)

(declare-fun res!2211171 () Bool)

(declare-fun e!3240774 () Bool)

(assert (=> b!5204895 (=> (not res!2211171) (not e!3240774))))

(assert (=> b!5204895 (= res!2211171 (not call!366032))))

(declare-fun bm!366027 () Bool)

(assert (=> bm!366027 (= call!366032 (isEmpty!32457 Nil!60550))))

(declare-fun b!5204896 () Bool)

(declare-fun res!2211177 () Bool)

(assert (=> b!5204896 (=> (not res!2211177) (not e!3240774))))

(assert (=> b!5204896 (= res!2211177 (isEmpty!32457 (tail!10254 Nil!60550)))))

(declare-fun b!5204897 () Bool)

(assert (=> b!5204897 (= e!3240775 (not (= (head!11157 Nil!60550) (c!896858 (regOne!30094 r!7292)))))))

(declare-fun b!5204898 () Bool)

(assert (=> b!5204898 (= e!3240773 (not lt!2141464))))

(declare-fun b!5204899 () Bool)

(declare-fun res!2211172 () Bool)

(assert (=> b!5204899 (=> res!2211172 e!3240777)))

(assert (=> b!5204899 (= res!2211172 e!3240774)))

(declare-fun res!2211178 () Bool)

(assert (=> b!5204899 (=> (not res!2211178) (not e!3240774))))

(assert (=> b!5204899 (= res!2211178 lt!2141464)))

(declare-fun b!5204900 () Bool)

(assert (=> b!5204900 (= e!3240777 e!3240776)))

(declare-fun res!2211175 () Bool)

(assert (=> b!5204900 (=> (not res!2211175) (not e!3240776))))

(assert (=> b!5204900 (= res!2211175 (not lt!2141464))))

(declare-fun b!5204901 () Bool)

(assert (=> b!5204901 (= e!3240774 (= (head!11157 Nil!60550) (c!896858 (regOne!30094 r!7292))))))

(assert (= (and d!1678679 c!897210) b!5204889))

(assert (= (and d!1678679 (not c!897210)) b!5204892))

(assert (= (and d!1678679 c!897212) b!5204891))

(assert (= (and d!1678679 (not c!897212)) b!5204894))

(assert (= (and b!5204894 c!897211) b!5204898))

(assert (= (and b!5204894 (not c!897211)) b!5204893))

(assert (= (and b!5204893 (not res!2211173)) b!5204899))

(assert (= (and b!5204899 res!2211178) b!5204895))

(assert (= (and b!5204895 res!2211171) b!5204896))

(assert (= (and b!5204896 res!2211177) b!5204901))

(assert (= (and b!5204899 (not res!2211172)) b!5204900))

(assert (= (and b!5204900 res!2211175) b!5204890))

(assert (= (and b!5204890 (not res!2211176)) b!5204888))

(assert (= (and b!5204888 (not res!2211174)) b!5204897))

(assert (= (or b!5204891 b!5204890 b!5204895) bm!366027))

(declare-fun m!6256340 () Bool)

(assert (=> b!5204892 m!6256340))

(assert (=> b!5204892 m!6256340))

(declare-fun m!6256342 () Bool)

(assert (=> b!5204892 m!6256342))

(declare-fun m!6256344 () Bool)

(assert (=> b!5204892 m!6256344))

(assert (=> b!5204892 m!6256342))

(assert (=> b!5204892 m!6256344))

(declare-fun m!6256346 () Bool)

(assert (=> b!5204892 m!6256346))

(assert (=> b!5204888 m!6256344))

(assert (=> b!5204888 m!6256344))

(declare-fun m!6256348 () Bool)

(assert (=> b!5204888 m!6256348))

(assert (=> b!5204901 m!6256340))

(declare-fun m!6256350 () Bool)

(assert (=> b!5204889 m!6256350))

(declare-fun m!6256352 () Bool)

(assert (=> d!1678679 m!6256352))

(assert (=> d!1678679 m!6255660))

(assert (=> b!5204897 m!6256340))

(assert (=> bm!366027 m!6256352))

(assert (=> b!5204896 m!6256344))

(assert (=> b!5204896 m!6256344))

(assert (=> b!5204896 m!6256348))

(assert (=> d!1678359 d!1678679))

(declare-fun b!5204902 () Bool)

(declare-fun e!3240779 () Bool)

(declare-fun e!3240785 () Bool)

(assert (=> b!5204902 (= e!3240779 e!3240785)))

(declare-fun res!2211182 () Bool)

(assert (=> b!5204902 (= res!2211182 (not (nullable!4960 (reg!15120 (regOne!30094 r!7292)))))))

(assert (=> b!5204902 (=> (not res!2211182) (not e!3240785))))

(declare-fun d!1678681 () Bool)

(declare-fun res!2211181 () Bool)

(declare-fun e!3240781 () Bool)

(assert (=> d!1678681 (=> res!2211181 e!3240781)))

(assert (=> d!1678681 (= res!2211181 ((_ is ElementMatch!14791) (regOne!30094 r!7292)))))

(assert (=> d!1678681 (= (validRegex!6527 (regOne!30094 r!7292)) e!3240781)))

(declare-fun c!897214 () Bool)

(declare-fun call!366034 () Bool)

(declare-fun c!897213 () Bool)

(declare-fun bm!366028 () Bool)

(assert (=> bm!366028 (= call!366034 (validRegex!6527 (ite c!897213 (reg!15120 (regOne!30094 r!7292)) (ite c!897214 (regTwo!30095 (regOne!30094 r!7292)) (regTwo!30094 (regOne!30094 r!7292))))))))

(declare-fun b!5204903 () Bool)

(declare-fun e!3240782 () Bool)

(assert (=> b!5204903 (= e!3240779 e!3240782)))

(assert (=> b!5204903 (= c!897214 ((_ is Union!14791) (regOne!30094 r!7292)))))

(declare-fun b!5204904 () Bool)

(declare-fun e!3240780 () Bool)

(declare-fun call!366033 () Bool)

(assert (=> b!5204904 (= e!3240780 call!366033)))

(declare-fun b!5204905 () Bool)

(declare-fun res!2211183 () Bool)

(assert (=> b!5204905 (=> (not res!2211183) (not e!3240780))))

(declare-fun call!366035 () Bool)

(assert (=> b!5204905 (= res!2211183 call!366035)))

(assert (=> b!5204905 (= e!3240782 e!3240780)))

(declare-fun bm!366029 () Bool)

(assert (=> bm!366029 (= call!366035 (validRegex!6527 (ite c!897214 (regOne!30095 (regOne!30094 r!7292)) (regOne!30094 (regOne!30094 r!7292)))))))

(declare-fun b!5204906 () Bool)

(assert (=> b!5204906 (= e!3240781 e!3240779)))

(assert (=> b!5204906 (= c!897213 ((_ is Star!14791) (regOne!30094 r!7292)))))

(declare-fun b!5204907 () Bool)

(declare-fun e!3240784 () Bool)

(declare-fun e!3240783 () Bool)

(assert (=> b!5204907 (= e!3240784 e!3240783)))

(declare-fun res!2211180 () Bool)

(assert (=> b!5204907 (=> (not res!2211180) (not e!3240783))))

(assert (=> b!5204907 (= res!2211180 call!366035)))

(declare-fun b!5204908 () Bool)

(declare-fun res!2211179 () Bool)

(assert (=> b!5204908 (=> res!2211179 e!3240784)))

(assert (=> b!5204908 (= res!2211179 (not ((_ is Concat!23636) (regOne!30094 r!7292))))))

(assert (=> b!5204908 (= e!3240782 e!3240784)))

(declare-fun b!5204909 () Bool)

(assert (=> b!5204909 (= e!3240785 call!366034)))

(declare-fun bm!366030 () Bool)

(assert (=> bm!366030 (= call!366033 call!366034)))

(declare-fun b!5204910 () Bool)

(assert (=> b!5204910 (= e!3240783 call!366033)))

(assert (= (and d!1678681 (not res!2211181)) b!5204906))

(assert (= (and b!5204906 c!897213) b!5204902))

(assert (= (and b!5204906 (not c!897213)) b!5204903))

(assert (= (and b!5204902 res!2211182) b!5204909))

(assert (= (and b!5204903 c!897214) b!5204905))

(assert (= (and b!5204903 (not c!897214)) b!5204908))

(assert (= (and b!5204905 res!2211183) b!5204904))

(assert (= (and b!5204908 (not res!2211179)) b!5204907))

(assert (= (and b!5204907 res!2211180) b!5204910))

(assert (= (or b!5204904 b!5204910) bm!366030))

(assert (= (or b!5204905 b!5204907) bm!366029))

(assert (= (or b!5204909 bm!366030) bm!366028))

(declare-fun m!6256354 () Bool)

(assert (=> b!5204902 m!6256354))

(declare-fun m!6256356 () Bool)

(assert (=> bm!366028 m!6256356))

(declare-fun m!6256358 () Bool)

(assert (=> bm!366029 m!6256358))

(assert (=> d!1678359 d!1678681))

(declare-fun bm!366031 () Bool)

(declare-fun c!897219 () Bool)

(declare-fun call!366040 () List!60672)

(declare-fun call!366038 () (InoxSet Context!8350))

(assert (=> bm!366031 (= call!366038 (derivationStepZipperDown!239 (ite c!897219 (regTwo!30095 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))) (regOne!30094 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343))))))))) (ite c!897219 (ite (or c!896992 c!896991) lt!2141333 (Context!8351 call!365895)) (Context!8351 call!366040)) (h!66998 s!2326)))))

(declare-fun b!5204911 () Bool)

(declare-fun e!3240791 () (InoxSet Context!8350))

(declare-fun call!366039 () (InoxSet Context!8350))

(assert (=> b!5204911 (= e!3240791 call!366039)))

(declare-fun b!5204912 () Bool)

(declare-fun e!3240786 () (InoxSet Context!8350))

(declare-fun call!366036 () (InoxSet Context!8350))

(assert (=> b!5204912 (= e!3240786 ((_ map or) call!366038 call!366036))))

(declare-fun c!897218 () Bool)

(declare-fun bm!366032 () Bool)

(declare-fun c!897217 () Bool)

(declare-fun call!366041 () List!60672)

(declare-fun call!366037 () (InoxSet Context!8350))

(assert (=> bm!366032 (= call!366037 (derivationStepZipperDown!239 (ite c!897219 (regOne!30095 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))) (ite c!897218 (regTwo!30094 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))) (ite c!897217 (regOne!30094 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))) (reg!15120 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343))))))))))) (ite (or c!897219 c!897218) (ite (or c!896992 c!896991) lt!2141333 (Context!8351 call!365895)) (Context!8351 call!366041)) (h!66998 s!2326)))))

(declare-fun b!5204913 () Bool)

(declare-fun e!3240787 () (InoxSet Context!8350))

(assert (=> b!5204913 (= e!3240787 call!366039)))

(declare-fun b!5204914 () Bool)

(assert (=> b!5204914 (= e!3240787 ((as const (Array Context!8350 Bool)) false))))

(declare-fun b!5204915 () Bool)

(declare-fun e!3240790 () Bool)

(assert (=> b!5204915 (= c!897218 e!3240790)))

(declare-fun res!2211184 () Bool)

(assert (=> b!5204915 (=> (not res!2211184) (not e!3240790))))

(assert (=> b!5204915 (= res!2211184 ((_ is Concat!23636) (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun e!3240789 () (InoxSet Context!8350))

(assert (=> b!5204915 (= e!3240789 e!3240786)))

(declare-fun b!5204916 () Bool)

(declare-fun c!897216 () Bool)

(assert (=> b!5204916 (= c!897216 ((_ is Star!14791) (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))))

(assert (=> b!5204916 (= e!3240791 e!3240787)))

(declare-fun d!1678683 () Bool)

(declare-fun c!897215 () Bool)

(assert (=> d!1678683 (= c!897215 (and ((_ is ElementMatch!14791) (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))) (= (c!896858 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))) (h!66998 s!2326))))))

(declare-fun e!3240788 () (InoxSet Context!8350))

(assert (=> d!1678683 (= (derivationStepZipperDown!239 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343))))))) (ite (or c!896992 c!896991) lt!2141333 (Context!8351 call!365895)) (h!66998 s!2326)) e!3240788)))

(declare-fun bm!366033 () Bool)

(assert (=> bm!366033 (= call!366040 ($colon$colon!1269 (exprs!4675 (ite (or c!896992 c!896991) lt!2141333 (Context!8351 call!365895))) (ite (or c!897218 c!897217) (regTwo!30094 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))) (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343))))))))))))

(declare-fun b!5204917 () Bool)

(assert (=> b!5204917 (= e!3240790 (nullable!4960 (regOne!30094 (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343))))))))))))

(declare-fun b!5204918 () Bool)

(assert (=> b!5204918 (= e!3240786 e!3240791)))

(assert (=> b!5204918 (= c!897217 ((_ is Concat!23636) (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun b!5204919 () Bool)

(assert (=> b!5204919 (= e!3240788 (store ((as const (Array Context!8350 Bool)) false) (ite (or c!896992 c!896991) lt!2141333 (Context!8351 call!365895)) true))))

(declare-fun b!5204920 () Bool)

(assert (=> b!5204920 (= e!3240788 e!3240789)))

(assert (=> b!5204920 (= c!897219 ((_ is Union!14791) (ite c!896992 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896991 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!896990 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun bm!366034 () Bool)

(assert (=> bm!366034 (= call!366039 call!366036)))

(declare-fun b!5204921 () Bool)

(assert (=> b!5204921 (= e!3240789 ((_ map or) call!366037 call!366038))))

(declare-fun bm!366035 () Bool)

(assert (=> bm!366035 (= call!366041 call!366040)))

(declare-fun bm!366036 () Bool)

(assert (=> bm!366036 (= call!366036 call!366037)))

(assert (= (and d!1678683 c!897215) b!5204919))

(assert (= (and d!1678683 (not c!897215)) b!5204920))

(assert (= (and b!5204920 c!897219) b!5204921))

(assert (= (and b!5204920 (not c!897219)) b!5204915))

(assert (= (and b!5204915 res!2211184) b!5204917))

(assert (= (and b!5204915 c!897218) b!5204912))

(assert (= (and b!5204915 (not c!897218)) b!5204918))

(assert (= (and b!5204918 c!897217) b!5204911))

(assert (= (and b!5204918 (not c!897217)) b!5204916))

(assert (= (and b!5204916 c!897216) b!5204913))

(assert (= (and b!5204916 (not c!897216)) b!5204914))

(assert (= (or b!5204911 b!5204913) bm!366035))

(assert (= (or b!5204911 b!5204913) bm!366034))

(assert (= (or b!5204912 bm!366035) bm!366033))

(assert (= (or b!5204912 bm!366034) bm!366036))

(assert (= (or b!5204921 b!5204912) bm!366031))

(assert (= (or b!5204921 bm!366036) bm!366032))

(declare-fun m!6256360 () Bool)

(assert (=> bm!366032 m!6256360))

(declare-fun m!6256362 () Bool)

(assert (=> b!5204917 m!6256362))

(declare-fun m!6256364 () Bool)

(assert (=> bm!366031 m!6256364))

(declare-fun m!6256366 () Bool)

(assert (=> bm!366033 m!6256366))

(declare-fun m!6256368 () Bool)

(assert (=> b!5204919 m!6256368))

(assert (=> bm!365886 d!1678683))

(declare-fun bs!1209822 () Bool)

(declare-fun d!1678685 () Bool)

(assert (= bs!1209822 (and d!1678685 d!1678309)))

(declare-fun lambda!260881 () Int)

(assert (=> bs!1209822 (= lambda!260881 lambda!260816)))

(declare-fun bs!1209823 () Bool)

(assert (= bs!1209823 (and d!1678685 d!1678353)))

(assert (=> bs!1209823 (= lambda!260881 lambda!260830)))

(declare-fun bs!1209824 () Bool)

(assert (= bs!1209824 (and d!1678685 d!1678313)))

(assert (=> bs!1209824 (= lambda!260881 lambda!260819)))

(declare-fun bs!1209825 () Bool)

(assert (= bs!1209825 (and d!1678685 d!1678609)))

(assert (=> bs!1209825 (= lambda!260881 lambda!260874)))

(declare-fun bs!1209826 () Bool)

(assert (= bs!1209826 (and d!1678685 d!1678589)))

(assert (=> bs!1209826 (= lambda!260881 lambda!260868)))

(declare-fun bs!1209827 () Bool)

(assert (= bs!1209827 (and d!1678685 d!1678291)))

(assert (=> bs!1209827 (= lambda!260881 lambda!260811)))

(declare-fun bs!1209828 () Bool)

(assert (= bs!1209828 (and d!1678685 d!1678335)))

(assert (=> bs!1209828 (= lambda!260881 lambda!260821)))

(declare-fun b!5204922 () Bool)

(declare-fun e!3240795 () Regex!14791)

(declare-fun e!3240792 () Regex!14791)

(assert (=> b!5204922 (= e!3240795 e!3240792)))

(declare-fun c!897222 () Bool)

(assert (=> b!5204922 (= c!897222 ((_ is Cons!60548) (t!373827 (unfocusZipperList!233 zl!343))))))

(declare-fun b!5204923 () Bool)

(declare-fun e!3240794 () Bool)

(declare-fun e!3240796 () Bool)

(assert (=> b!5204923 (= e!3240794 e!3240796)))

(declare-fun c!897223 () Bool)

(assert (=> b!5204923 (= c!897223 (isEmpty!32454 (tail!10255 (t!373827 (unfocusZipperList!233 zl!343)))))))

(declare-fun b!5204924 () Bool)

(declare-fun e!3240793 () Bool)

(assert (=> b!5204924 (= e!3240793 e!3240794)))

(declare-fun c!897221 () Bool)

(assert (=> b!5204924 (= c!897221 (isEmpty!32454 (t!373827 (unfocusZipperList!233 zl!343))))))

(declare-fun b!5204925 () Bool)

(declare-fun e!3240797 () Bool)

(assert (=> b!5204925 (= e!3240797 (isEmpty!32454 (t!373827 (t!373827 (unfocusZipperList!233 zl!343)))))))

(declare-fun b!5204926 () Bool)

(declare-fun lt!2141465 () Regex!14791)

(assert (=> b!5204926 (= e!3240794 (isEmptyLang!764 lt!2141465))))

(declare-fun b!5204927 () Bool)

(assert (=> b!5204927 (= e!3240795 (h!66996 (t!373827 (unfocusZipperList!233 zl!343))))))

(declare-fun b!5204928 () Bool)

(assert (=> b!5204928 (= e!3240796 (isUnion!196 lt!2141465))))

(declare-fun b!5204930 () Bool)

(assert (=> b!5204930 (= e!3240796 (= lt!2141465 (head!11158 (t!373827 (unfocusZipperList!233 zl!343)))))))

(declare-fun b!5204931 () Bool)

(assert (=> b!5204931 (= e!3240792 (Union!14791 (h!66996 (t!373827 (unfocusZipperList!233 zl!343))) (generalisedUnion!720 (t!373827 (t!373827 (unfocusZipperList!233 zl!343))))))))

(declare-fun b!5204929 () Bool)

(assert (=> b!5204929 (= e!3240792 EmptyLang!14791)))

(assert (=> d!1678685 e!3240793))

(declare-fun res!2211186 () Bool)

(assert (=> d!1678685 (=> (not res!2211186) (not e!3240793))))

(assert (=> d!1678685 (= res!2211186 (validRegex!6527 lt!2141465))))

(assert (=> d!1678685 (= lt!2141465 e!3240795)))

(declare-fun c!897220 () Bool)

(assert (=> d!1678685 (= c!897220 e!3240797)))

(declare-fun res!2211185 () Bool)

(assert (=> d!1678685 (=> (not res!2211185) (not e!3240797))))

(assert (=> d!1678685 (= res!2211185 ((_ is Cons!60548) (t!373827 (unfocusZipperList!233 zl!343))))))

(assert (=> d!1678685 (forall!14227 (t!373827 (unfocusZipperList!233 zl!343)) lambda!260881)))

(assert (=> d!1678685 (= (generalisedUnion!720 (t!373827 (unfocusZipperList!233 zl!343))) lt!2141465)))

(assert (= (and d!1678685 res!2211185) b!5204925))

(assert (= (and d!1678685 c!897220) b!5204927))

(assert (= (and d!1678685 (not c!897220)) b!5204922))

(assert (= (and b!5204922 c!897222) b!5204931))

(assert (= (and b!5204922 (not c!897222)) b!5204929))

(assert (= (and d!1678685 res!2211186) b!5204924))

(assert (= (and b!5204924 c!897221) b!5204926))

(assert (= (and b!5204924 (not c!897221)) b!5204923))

(assert (= (and b!5204923 c!897223) b!5204930))

(assert (= (and b!5204923 (not c!897223)) b!5204928))

(declare-fun m!6256370 () Bool)

(assert (=> d!1678685 m!6256370))

(declare-fun m!6256372 () Bool)

(assert (=> d!1678685 m!6256372))

(declare-fun m!6256374 () Bool)

(assert (=> b!5204931 m!6256374))

(declare-fun m!6256376 () Bool)

(assert (=> b!5204928 m!6256376))

(declare-fun m!6256378 () Bool)

(assert (=> b!5204926 m!6256378))

(declare-fun m!6256380 () Bool)

(assert (=> b!5204923 m!6256380))

(assert (=> b!5204923 m!6256380))

(declare-fun m!6256382 () Bool)

(assert (=> b!5204923 m!6256382))

(assert (=> b!5204924 m!6255512))

(declare-fun m!6256384 () Bool)

(assert (=> b!5204925 m!6256384))

(declare-fun m!6256386 () Bool)

(assert (=> b!5204930 m!6256386))

(assert (=> b!5203755 d!1678685))

(assert (=> bs!1209653 d!1678333))

(declare-fun d!1678687 () Bool)

(declare-fun res!2211187 () Bool)

(declare-fun e!3240798 () Bool)

(assert (=> d!1678687 (=> res!2211187 e!3240798)))

(assert (=> d!1678687 (= res!2211187 ((_ is Nil!60548) (exprs!4675 setElem!33024)))))

(assert (=> d!1678687 (= (forall!14227 (exprs!4675 setElem!33024) lambda!260821) e!3240798)))

(declare-fun b!5204932 () Bool)

(declare-fun e!3240799 () Bool)

(assert (=> b!5204932 (= e!3240798 e!3240799)))

(declare-fun res!2211188 () Bool)

(assert (=> b!5204932 (=> (not res!2211188) (not e!3240799))))

(assert (=> b!5204932 (= res!2211188 (dynLambda!23917 lambda!260821 (h!66996 (exprs!4675 setElem!33024))))))

(declare-fun b!5204933 () Bool)

(assert (=> b!5204933 (= e!3240799 (forall!14227 (t!373827 (exprs!4675 setElem!33024)) lambda!260821))))

(assert (= (and d!1678687 (not res!2211187)) b!5204932))

(assert (= (and b!5204932 res!2211188) b!5204933))

(declare-fun b_lambda!201393 () Bool)

(assert (=> (not b_lambda!201393) (not b!5204932)))

(declare-fun m!6256388 () Bool)

(assert (=> b!5204932 m!6256388))

(declare-fun m!6256390 () Bool)

(assert (=> b!5204933 m!6256390))

(assert (=> d!1678335 d!1678687))

(declare-fun bs!1209829 () Bool)

(declare-fun d!1678689 () Bool)

(assert (= bs!1209829 (and d!1678689 d!1678621)))

(declare-fun lambda!260882 () Int)

(assert (=> bs!1209829 (= lambda!260882 lambda!260877)))

(declare-fun bs!1209830 () Bool)

(assert (= bs!1209830 (and d!1678689 d!1678647)))

(assert (=> bs!1209830 (= lambda!260882 lambda!260878)))

(assert (=> d!1678689 (= (nullableZipper!1219 lt!2141334) (exists!1956 lt!2141334 lambda!260882))))

(declare-fun bs!1209831 () Bool)

(assert (= bs!1209831 d!1678689))

(declare-fun m!6256392 () Bool)

(assert (=> bs!1209831 m!6256392))

(assert (=> b!5203669 d!1678689))

(declare-fun d!1678691 () Bool)

(assert (=> d!1678691 (= (isEmpty!32457 (t!373829 s!2326)) ((_ is Nil!60550) (t!373829 s!2326)))))

(assert (=> d!1678279 d!1678691))

(assert (=> d!1678287 d!1678691))

(assert (=> d!1678321 d!1678319))

(declare-fun d!1678693 () Bool)

(assert (=> d!1678693 (= (flatMap!518 z!1189 lambda!260783) (dynLambda!23915 lambda!260783 (h!66997 zl!343)))))

(assert (=> d!1678693 true))

(declare-fun _$13!1669 () Unit!152430)

(assert (=> d!1678693 (= (choose!38679 z!1189 (h!66997 zl!343) lambda!260783) _$13!1669)))

(declare-fun b_lambda!201395 () Bool)

(assert (=> (not b_lambda!201395) (not d!1678693)))

(declare-fun bs!1209832 () Bool)

(assert (= bs!1209832 d!1678693))

(assert (=> bs!1209832 m!6255286))

(assert (=> bs!1209832 m!6255552))

(assert (=> d!1678321 d!1678693))

(declare-fun b!5204934 () Bool)

(declare-fun e!3240800 () Bool)

(declare-fun e!3240806 () Bool)

(assert (=> b!5204934 (= e!3240800 e!3240806)))

(declare-fun res!2211192 () Bool)

(assert (=> b!5204934 (= res!2211192 (not (nullable!4960 (reg!15120 lt!2141385))))))

(assert (=> b!5204934 (=> (not res!2211192) (not e!3240806))))

(declare-fun d!1678695 () Bool)

(declare-fun res!2211191 () Bool)

(declare-fun e!3240802 () Bool)

(assert (=> d!1678695 (=> res!2211191 e!3240802)))

(assert (=> d!1678695 (= res!2211191 ((_ is ElementMatch!14791) lt!2141385))))

(assert (=> d!1678695 (= (validRegex!6527 lt!2141385) e!3240802)))

(declare-fun c!897225 () Bool)

(declare-fun bm!366037 () Bool)

(declare-fun c!897224 () Bool)

(declare-fun call!366043 () Bool)

(assert (=> bm!366037 (= call!366043 (validRegex!6527 (ite c!897224 (reg!15120 lt!2141385) (ite c!897225 (regTwo!30095 lt!2141385) (regTwo!30094 lt!2141385)))))))

(declare-fun b!5204935 () Bool)

(declare-fun e!3240803 () Bool)

(assert (=> b!5204935 (= e!3240800 e!3240803)))

(assert (=> b!5204935 (= c!897225 ((_ is Union!14791) lt!2141385))))

(declare-fun b!5204936 () Bool)

(declare-fun e!3240801 () Bool)

(declare-fun call!366042 () Bool)

(assert (=> b!5204936 (= e!3240801 call!366042)))

(declare-fun b!5204937 () Bool)

(declare-fun res!2211193 () Bool)

(assert (=> b!5204937 (=> (not res!2211193) (not e!3240801))))

(declare-fun call!366044 () Bool)

(assert (=> b!5204937 (= res!2211193 call!366044)))

(assert (=> b!5204937 (= e!3240803 e!3240801)))

(declare-fun bm!366038 () Bool)

(assert (=> bm!366038 (= call!366044 (validRegex!6527 (ite c!897225 (regOne!30095 lt!2141385) (regOne!30094 lt!2141385))))))

(declare-fun b!5204938 () Bool)

(assert (=> b!5204938 (= e!3240802 e!3240800)))

(assert (=> b!5204938 (= c!897224 ((_ is Star!14791) lt!2141385))))

(declare-fun b!5204939 () Bool)

(declare-fun e!3240805 () Bool)

(declare-fun e!3240804 () Bool)

(assert (=> b!5204939 (= e!3240805 e!3240804)))

(declare-fun res!2211190 () Bool)

(assert (=> b!5204939 (=> (not res!2211190) (not e!3240804))))

(assert (=> b!5204939 (= res!2211190 call!366044)))

(declare-fun b!5204940 () Bool)

(declare-fun res!2211189 () Bool)

(assert (=> b!5204940 (=> res!2211189 e!3240805)))

(assert (=> b!5204940 (= res!2211189 (not ((_ is Concat!23636) lt!2141385)))))

(assert (=> b!5204940 (= e!3240803 e!3240805)))

(declare-fun b!5204941 () Bool)

(assert (=> b!5204941 (= e!3240806 call!366043)))

(declare-fun bm!366039 () Bool)

(assert (=> bm!366039 (= call!366042 call!366043)))

(declare-fun b!5204942 () Bool)

(assert (=> b!5204942 (= e!3240804 call!366042)))

(assert (= (and d!1678695 (not res!2211191)) b!5204938))

(assert (= (and b!5204938 c!897224) b!5204934))

(assert (= (and b!5204938 (not c!897224)) b!5204935))

(assert (= (and b!5204934 res!2211192) b!5204941))

(assert (= (and b!5204935 c!897225) b!5204937))

(assert (= (and b!5204935 (not c!897225)) b!5204940))

(assert (= (and b!5204937 res!2211193) b!5204936))

(assert (= (and b!5204940 (not res!2211189)) b!5204939))

(assert (= (and b!5204939 res!2211190) b!5204942))

(assert (= (or b!5204936 b!5204942) bm!366039))

(assert (= (or b!5204937 b!5204939) bm!366038))

(assert (= (or b!5204941 bm!366039) bm!366037))

(declare-fun m!6256394 () Bool)

(assert (=> b!5204934 m!6256394))

(declare-fun m!6256396 () Bool)

(assert (=> bm!366037 m!6256396))

(declare-fun m!6256398 () Bool)

(assert (=> bm!366038 m!6256398))

(assert (=> d!1678291 d!1678695))

(declare-fun d!1678697 () Bool)

(declare-fun res!2211194 () Bool)

(declare-fun e!3240807 () Bool)

(assert (=> d!1678697 (=> res!2211194 e!3240807)))

(assert (=> d!1678697 (= res!2211194 ((_ is Nil!60548) (unfocusZipperList!233 zl!343)))))

(assert (=> d!1678697 (= (forall!14227 (unfocusZipperList!233 zl!343) lambda!260811) e!3240807)))

(declare-fun b!5204943 () Bool)

(declare-fun e!3240808 () Bool)

(assert (=> b!5204943 (= e!3240807 e!3240808)))

(declare-fun res!2211195 () Bool)

(assert (=> b!5204943 (=> (not res!2211195) (not e!3240808))))

(assert (=> b!5204943 (= res!2211195 (dynLambda!23917 lambda!260811 (h!66996 (unfocusZipperList!233 zl!343))))))

(declare-fun b!5204944 () Bool)

(assert (=> b!5204944 (= e!3240808 (forall!14227 (t!373827 (unfocusZipperList!233 zl!343)) lambda!260811))))

(assert (= (and d!1678697 (not res!2211194)) b!5204943))

(assert (= (and b!5204943 res!2211195) b!5204944))

(declare-fun b_lambda!201397 () Bool)

(assert (=> (not b_lambda!201397) (not b!5204943)))

(declare-fun m!6256400 () Bool)

(assert (=> b!5204943 m!6256400))

(declare-fun m!6256402 () Bool)

(assert (=> b!5204944 m!6256402))

(assert (=> d!1678291 d!1678697))

(declare-fun d!1678699 () Bool)

(declare-fun res!2211196 () Bool)

(declare-fun e!3240809 () Bool)

(assert (=> d!1678699 (=> res!2211196 e!3240809)))

(assert (=> d!1678699 (= res!2211196 ((_ is Nil!60548) lt!2141388))))

(assert (=> d!1678699 (= (forall!14227 lt!2141388 lambda!260816) e!3240809)))

(declare-fun b!5204945 () Bool)

(declare-fun e!3240810 () Bool)

(assert (=> b!5204945 (= e!3240809 e!3240810)))

(declare-fun res!2211197 () Bool)

(assert (=> b!5204945 (=> (not res!2211197) (not e!3240810))))

(assert (=> b!5204945 (= res!2211197 (dynLambda!23917 lambda!260816 (h!66996 lt!2141388)))))

(declare-fun b!5204946 () Bool)

(assert (=> b!5204946 (= e!3240810 (forall!14227 (t!373827 lt!2141388) lambda!260816))))

(assert (= (and d!1678699 (not res!2211196)) b!5204945))

(assert (= (and b!5204945 res!2211197) b!5204946))

(declare-fun b_lambda!201399 () Bool)

(assert (=> (not b_lambda!201399) (not b!5204945)))

(declare-fun m!6256404 () Bool)

(assert (=> b!5204945 m!6256404))

(declare-fun m!6256406 () Bool)

(assert (=> b!5204946 m!6256406))

(assert (=> d!1678309 d!1678699))

(declare-fun d!1678701 () Bool)

(assert (=> d!1678701 (= (nullable!4960 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))) (nullableFct!1371 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun bs!1209833 () Bool)

(assert (= bs!1209833 d!1678701))

(declare-fun m!6256408 () Bool)

(assert (=> bs!1209833 m!6256408))

(assert (=> b!5203917 d!1678701))

(assert (=> d!1678363 d!1678681))

(assert (=> d!1678363 d!1678367))

(declare-fun bs!1209834 () Bool)

(declare-fun d!1678703 () Bool)

(assert (= bs!1209834 (and d!1678703 d!1678365)))

(declare-fun lambda!260885 () Int)

(assert (=> bs!1209834 (not (= lambda!260885 lambda!260839))))

(declare-fun bs!1209835 () Bool)

(assert (= bs!1209835 (and d!1678703 b!5203446)))

(assert (=> bs!1209835 (= lambda!260885 lambda!260781)))

(assert (=> bs!1209835 (not (= lambda!260885 lambda!260782))))

(declare-fun bs!1209836 () Bool)

(assert (= bs!1209836 (and d!1678703 d!1678363)))

(assert (=> bs!1209836 (= lambda!260885 lambda!260833)))

(declare-fun bs!1209837 () Bool)

(assert (= bs!1209837 (and d!1678703 b!5204770)))

(assert (=> bs!1209837 (not (= lambda!260885 lambda!260870))))

(declare-fun bs!1209838 () Bool)

(assert (= bs!1209838 (and d!1678703 b!5203992)))

(assert (=> bs!1209838 (not (= lambda!260885 lambda!260827))))

(assert (=> bs!1209834 (= lambda!260885 lambda!260838)))

(declare-fun bs!1209839 () Bool)

(assert (= bs!1209839 (and d!1678703 b!5204842)))

(assert (=> bs!1209839 (not (= lambda!260885 lambda!260880))))

(declare-fun bs!1209840 () Bool)

(assert (= bs!1209840 (and d!1678703 b!5204775)))

(assert (=> bs!1209840 (not (= lambda!260885 lambda!260869))))

(declare-fun bs!1209841 () Bool)

(assert (= bs!1209841 (and d!1678703 b!5203997)))

(assert (=> bs!1209841 (not (= lambda!260885 lambda!260826))))

(declare-fun bs!1209842 () Bool)

(assert (= bs!1209842 (and d!1678703 b!5204847)))

(assert (=> bs!1209842 (not (= lambda!260885 lambda!260879))))

(assert (=> d!1678703 true))

(assert (=> d!1678703 true))

(assert (=> d!1678703 true))

(assert (=> d!1678703 (= (isDefined!11605 (findConcatSeparation!1316 (regOne!30094 r!7292) (regTwo!30094 r!7292) Nil!60550 s!2326 s!2326)) (Exists!1972 lambda!260885))))

(assert (=> d!1678703 true))

(declare-fun _$89!1352 () Unit!152430)

(assert (=> d!1678703 (= (choose!38683 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326) _$89!1352)))

(declare-fun bs!1209843 () Bool)

(assert (= bs!1209843 d!1678703))

(assert (=> bs!1209843 m!6255250))

(assert (=> bs!1209843 m!6255250))

(assert (=> bs!1209843 m!6255252))

(declare-fun m!6256410 () Bool)

(assert (=> bs!1209843 m!6256410))

(assert (=> d!1678363 d!1678703))

(assert (=> d!1678363 d!1678359))

(declare-fun d!1678705 () Bool)

(assert (=> d!1678705 (= (Exists!1972 lambda!260833) (choose!38682 lambda!260833))))

(declare-fun bs!1209844 () Bool)

(assert (= bs!1209844 d!1678705))

(declare-fun m!6256412 () Bool)

(assert (=> bs!1209844 m!6256412))

(assert (=> d!1678363 d!1678705))

(declare-fun d!1678707 () Bool)

(assert (=> d!1678707 (= (head!11158 (exprs!4675 (h!66997 zl!343))) (h!66996 (exprs!4675 (h!66997 zl!343))))))

(assert (=> b!5204067 d!1678707))

(assert (=> b!5204028 d!1678661))

(assert (=> b!5204028 d!1678663))

(declare-fun b!5204951 () Bool)

(declare-fun e!3240813 () Bool)

(declare-fun e!3240819 () Bool)

(assert (=> b!5204951 (= e!3240813 e!3240819)))

(declare-fun res!2211205 () Bool)

(assert (=> b!5204951 (= res!2211205 (not (nullable!4960 (reg!15120 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))))))))

(assert (=> b!5204951 (=> (not res!2211205) (not e!3240819))))

(declare-fun d!1678709 () Bool)

(declare-fun res!2211204 () Bool)

(declare-fun e!3240815 () Bool)

(assert (=> d!1678709 (=> res!2211204 e!3240815)))

(assert (=> d!1678709 (= res!2211204 ((_ is ElementMatch!14791) (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))))))

(assert (=> d!1678709 (= (validRegex!6527 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))) e!3240815)))

(declare-fun c!897227 () Bool)

(declare-fun bm!366040 () Bool)

(declare-fun c!897226 () Bool)

(declare-fun call!366046 () Bool)

(assert (=> bm!366040 (= call!366046 (validRegex!6527 (ite c!897226 (reg!15120 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))) (ite c!897227 (regTwo!30095 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))) (regTwo!30094 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292))))))))))))

(declare-fun b!5204952 () Bool)

(declare-fun e!3240816 () Bool)

(assert (=> b!5204952 (= e!3240813 e!3240816)))

(assert (=> b!5204952 (= c!897227 ((_ is Union!14791) (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))))))

(declare-fun b!5204953 () Bool)

(declare-fun e!3240814 () Bool)

(declare-fun call!366045 () Bool)

(assert (=> b!5204953 (= e!3240814 call!366045)))

(declare-fun b!5204954 () Bool)

(declare-fun res!2211206 () Bool)

(assert (=> b!5204954 (=> (not res!2211206) (not e!3240814))))

(declare-fun call!366047 () Bool)

(assert (=> b!5204954 (= res!2211206 call!366047)))

(assert (=> b!5204954 (= e!3240816 e!3240814)))

(declare-fun bm!366041 () Bool)

(assert (=> bm!366041 (= call!366047 (validRegex!6527 (ite c!897227 (regOne!30095 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))) (regOne!30094 (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))))))))

(declare-fun b!5204955 () Bool)

(assert (=> b!5204955 (= e!3240815 e!3240813)))

(assert (=> b!5204955 (= c!897226 ((_ is Star!14791) (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292)))))))))

(declare-fun b!5204956 () Bool)

(declare-fun e!3240818 () Bool)

(declare-fun e!3240817 () Bool)

(assert (=> b!5204956 (= e!3240818 e!3240817)))

(declare-fun res!2211203 () Bool)

(assert (=> b!5204956 (=> (not res!2211203) (not e!3240817))))

(assert (=> b!5204956 (= res!2211203 call!366047)))

(declare-fun b!5204957 () Bool)

(declare-fun res!2211202 () Bool)

(assert (=> b!5204957 (=> res!2211202 e!3240818)))

(assert (=> b!5204957 (= res!2211202 (not ((_ is Concat!23636) (ite c!896999 (reg!15120 (regOne!30095 (regOne!30094 r!7292))) (ite c!897000 (regTwo!30095 (regOne!30095 (regOne!30094 r!7292))) (regTwo!30094 (regOne!30095 (regOne!30094 r!7292))))))))))

(assert (=> b!5204957 (= e!3240816 e!3240818)))

(declare-fun b!5204958 () Bool)

(assert (=> b!5204958 (= e!3240819 call!366046)))

(declare-fun bm!366042 () Bool)

(assert (=> bm!366042 (= call!366045 call!366046)))

(declare-fun b!5204959 () Bool)

(assert (=> b!5204959 (= e!3240817 call!366045)))

(assert (= (and d!1678709 (not res!2211204)) b!5204955))

(assert (= (and b!5204955 c!897226) b!5204951))

(assert (= (and b!5204955 (not c!897226)) b!5204952))

(assert (= (and b!5204951 res!2211205) b!5204958))

(assert (= (and b!5204952 c!897227) b!5204954))

(assert (= (and b!5204952 (not c!897227)) b!5204957))

(assert (= (and b!5204954 res!2211206) b!5204953))

(assert (= (and b!5204957 (not res!2211202)) b!5204956))

(assert (= (and b!5204956 res!2211203) b!5204959))

(assert (= (or b!5204953 b!5204959) bm!366042))

(assert (= (or b!5204954 b!5204956) bm!366041))

(assert (= (or b!5204958 bm!366042) bm!366040))

(declare-fun m!6256414 () Bool)

(assert (=> b!5204951 m!6256414))

(declare-fun m!6256416 () Bool)

(assert (=> bm!366040 m!6256416))

(declare-fun m!6256418 () Bool)

(assert (=> bm!366041 m!6256418))

(assert (=> bm!365898 d!1678709))

(declare-fun d!1678711 () Bool)

(declare-fun c!897228 () Bool)

(assert (=> d!1678711 (= c!897228 (isEmpty!32457 (tail!10254 (t!373829 s!2326))))))

(declare-fun e!3240820 () Bool)

(assert (=> d!1678711 (= (matchZipper!1035 (derivationStepZipper!1063 ((_ map or) lt!2141334 lt!2141341) (head!11157 (t!373829 s!2326))) (tail!10254 (t!373829 s!2326))) e!3240820)))

(declare-fun b!5204960 () Bool)

(assert (=> b!5204960 (= e!3240820 (nullableZipper!1219 (derivationStepZipper!1063 ((_ map or) lt!2141334 lt!2141341) (head!11157 (t!373829 s!2326)))))))

(declare-fun b!5204961 () Bool)

(assert (=> b!5204961 (= e!3240820 (matchZipper!1035 (derivationStepZipper!1063 (derivationStepZipper!1063 ((_ map or) lt!2141334 lt!2141341) (head!11157 (t!373829 s!2326))) (head!11157 (tail!10254 (t!373829 s!2326)))) (tail!10254 (tail!10254 (t!373829 s!2326)))))))

(assert (= (and d!1678711 c!897228) b!5204960))

(assert (= (and d!1678711 (not c!897228)) b!5204961))

(assert (=> d!1678711 m!6255452))

(assert (=> d!1678711 m!6256188))

(assert (=> b!5204960 m!6255458))

(declare-fun m!6256420 () Bool)

(assert (=> b!5204960 m!6256420))

(assert (=> b!5204961 m!6255452))

(assert (=> b!5204961 m!6256192))

(assert (=> b!5204961 m!6255458))

(assert (=> b!5204961 m!6256192))

(declare-fun m!6256422 () Bool)

(assert (=> b!5204961 m!6256422))

(assert (=> b!5204961 m!6255452))

(assert (=> b!5204961 m!6256196))

(assert (=> b!5204961 m!6256422))

(assert (=> b!5204961 m!6256196))

(declare-fun m!6256424 () Bool)

(assert (=> b!5204961 m!6256424))

(assert (=> b!5203672 d!1678711))

(declare-fun bs!1209845 () Bool)

(declare-fun d!1678713 () Bool)

(assert (= bs!1209845 (and d!1678713 b!5203448)))

(declare-fun lambda!260886 () Int)

(assert (=> bs!1209845 (= (= (head!11157 (t!373829 s!2326)) (h!66998 s!2326)) (= lambda!260886 lambda!260783))))

(declare-fun bs!1209846 () Bool)

(assert (= bs!1209846 (and d!1678713 d!1678599)))

(assert (=> bs!1209846 (= lambda!260886 lambda!260873)))

(assert (=> d!1678713 true))

(assert (=> d!1678713 (= (derivationStepZipper!1063 ((_ map or) lt!2141334 lt!2141341) (head!11157 (t!373829 s!2326))) (flatMap!518 ((_ map or) lt!2141334 lt!2141341) lambda!260886))))

(declare-fun bs!1209847 () Bool)

(assert (= bs!1209847 d!1678713))

(declare-fun m!6256426 () Bool)

(assert (=> bs!1209847 m!6256426))

(assert (=> b!5203672 d!1678713))

(assert (=> b!5203672 d!1678601))

(assert (=> b!5203672 d!1678603))

(assert (=> d!1678351 d!1678691))

(assert (=> b!5203771 d!1678353))

(declare-fun bs!1209848 () Bool)

(declare-fun d!1678715 () Bool)

(assert (= bs!1209848 (and d!1678715 d!1678309)))

(declare-fun lambda!260887 () Int)

(assert (=> bs!1209848 (= lambda!260887 lambda!260816)))

(declare-fun bs!1209849 () Bool)

(assert (= bs!1209849 (and d!1678715 d!1678353)))

(assert (=> bs!1209849 (= lambda!260887 lambda!260830)))

(declare-fun bs!1209850 () Bool)

(assert (= bs!1209850 (and d!1678715 d!1678313)))

(assert (=> bs!1209850 (= lambda!260887 lambda!260819)))

(declare-fun bs!1209851 () Bool)

(assert (= bs!1209851 (and d!1678715 d!1678609)))

(assert (=> bs!1209851 (= lambda!260887 lambda!260874)))

(declare-fun bs!1209852 () Bool)

(assert (= bs!1209852 (and d!1678715 d!1678685)))

(assert (=> bs!1209852 (= lambda!260887 lambda!260881)))

(declare-fun bs!1209853 () Bool)

(assert (= bs!1209853 (and d!1678715 d!1678589)))

(assert (=> bs!1209853 (= lambda!260887 lambda!260868)))

(declare-fun bs!1209854 () Bool)

(assert (= bs!1209854 (and d!1678715 d!1678291)))

(assert (=> bs!1209854 (= lambda!260887 lambda!260811)))

(declare-fun bs!1209855 () Bool)

(assert (= bs!1209855 (and d!1678715 d!1678335)))

(assert (=> bs!1209855 (= lambda!260887 lambda!260821)))

(declare-fun lt!2141466 () List!60672)

(assert (=> d!1678715 (forall!14227 lt!2141466 lambda!260887)))

(declare-fun e!3240821 () List!60672)

(assert (=> d!1678715 (= lt!2141466 e!3240821)))

(declare-fun c!897229 () Bool)

(assert (=> d!1678715 (= c!897229 ((_ is Cons!60549) (t!373828 zl!343)))))

(assert (=> d!1678715 (= (unfocusZipperList!233 (t!373828 zl!343)) lt!2141466)))

(declare-fun b!5204962 () Bool)

(assert (=> b!5204962 (= e!3240821 (Cons!60548 (generalisedConcat!460 (exprs!4675 (h!66997 (t!373828 zl!343)))) (unfocusZipperList!233 (t!373828 (t!373828 zl!343)))))))

(declare-fun b!5204963 () Bool)

(assert (=> b!5204963 (= e!3240821 Nil!60548)))

(assert (= (and d!1678715 c!897229) b!5204962))

(assert (= (and d!1678715 (not c!897229)) b!5204963))

(declare-fun m!6256428 () Bool)

(assert (=> d!1678715 m!6256428))

(declare-fun m!6256430 () Bool)

(assert (=> b!5204962 m!6256430))

(declare-fun m!6256432 () Bool)

(assert (=> b!5204962 m!6256432))

(assert (=> b!5203771 d!1678715))

(declare-fun d!1678717 () Bool)

(assert (=> d!1678717 (= (isConcat!278 lt!2141412) ((_ is Concat!23636) lt!2141412))))

(assert (=> b!5204071 d!1678717))

(declare-fun b!5204964 () Bool)

(declare-fun res!2211210 () Bool)

(declare-fun e!3240825 () Bool)

(assert (=> b!5204964 (=> res!2211210 e!3240825)))

(assert (=> b!5204964 (= res!2211210 (not (isEmpty!32457 (tail!10254 (tail!10254 s!2326)))))))

(declare-fun b!5204965 () Bool)

(declare-fun e!3240828 () Bool)

(assert (=> b!5204965 (= e!3240828 (nullable!4960 (derivativeStep!4041 r!7292 (head!11157 s!2326))))))

(declare-fun b!5204966 () Bool)

(declare-fun e!3240826 () Bool)

(assert (=> b!5204966 (= e!3240826 e!3240825)))

(declare-fun res!2211212 () Bool)

(assert (=> b!5204966 (=> res!2211212 e!3240825)))

(declare-fun call!366048 () Bool)

(assert (=> b!5204966 (= res!2211212 call!366048)))

(declare-fun b!5204967 () Bool)

(declare-fun e!3240822 () Bool)

(declare-fun lt!2141467 () Bool)

(assert (=> b!5204967 (= e!3240822 (= lt!2141467 call!366048))))

(declare-fun d!1678719 () Bool)

(assert (=> d!1678719 e!3240822))

(declare-fun c!897232 () Bool)

(assert (=> d!1678719 (= c!897232 ((_ is EmptyExpr!14791) (derivativeStep!4041 r!7292 (head!11157 s!2326))))))

(assert (=> d!1678719 (= lt!2141467 e!3240828)))

(declare-fun c!897230 () Bool)

(assert (=> d!1678719 (= c!897230 (isEmpty!32457 (tail!10254 s!2326)))))

(assert (=> d!1678719 (validRegex!6527 (derivativeStep!4041 r!7292 (head!11157 s!2326)))))

(assert (=> d!1678719 (= (matchR!6976 (derivativeStep!4041 r!7292 (head!11157 s!2326)) (tail!10254 s!2326)) lt!2141467)))

(declare-fun b!5204968 () Bool)

(assert (=> b!5204968 (= e!3240828 (matchR!6976 (derivativeStep!4041 (derivativeStep!4041 r!7292 (head!11157 s!2326)) (head!11157 (tail!10254 s!2326))) (tail!10254 (tail!10254 s!2326))))))

(declare-fun b!5204969 () Bool)

(declare-fun res!2211209 () Bool)

(declare-fun e!3240827 () Bool)

(assert (=> b!5204969 (=> res!2211209 e!3240827)))

(assert (=> b!5204969 (= res!2211209 (not ((_ is ElementMatch!14791) (derivativeStep!4041 r!7292 (head!11157 s!2326)))))))

(declare-fun e!3240823 () Bool)

(assert (=> b!5204969 (= e!3240823 e!3240827)))

(declare-fun b!5204970 () Bool)

(assert (=> b!5204970 (= e!3240822 e!3240823)))

(declare-fun c!897231 () Bool)

(assert (=> b!5204970 (= c!897231 ((_ is EmptyLang!14791) (derivativeStep!4041 r!7292 (head!11157 s!2326))))))

(declare-fun b!5204971 () Bool)

(declare-fun res!2211207 () Bool)

(declare-fun e!3240824 () Bool)

(assert (=> b!5204971 (=> (not res!2211207) (not e!3240824))))

(assert (=> b!5204971 (= res!2211207 (not call!366048))))

(declare-fun bm!366043 () Bool)

(assert (=> bm!366043 (= call!366048 (isEmpty!32457 (tail!10254 s!2326)))))

(declare-fun b!5204972 () Bool)

(declare-fun res!2211213 () Bool)

(assert (=> b!5204972 (=> (not res!2211213) (not e!3240824))))

(assert (=> b!5204972 (= res!2211213 (isEmpty!32457 (tail!10254 (tail!10254 s!2326))))))

(declare-fun b!5204973 () Bool)

(assert (=> b!5204973 (= e!3240825 (not (= (head!11157 (tail!10254 s!2326)) (c!896858 (derivativeStep!4041 r!7292 (head!11157 s!2326))))))))

(declare-fun b!5204974 () Bool)

(assert (=> b!5204974 (= e!3240823 (not lt!2141467))))

(declare-fun b!5204975 () Bool)

(declare-fun res!2211208 () Bool)

(assert (=> b!5204975 (=> res!2211208 e!3240827)))

(assert (=> b!5204975 (= res!2211208 e!3240824)))

(declare-fun res!2211214 () Bool)

(assert (=> b!5204975 (=> (not res!2211214) (not e!3240824))))

(assert (=> b!5204975 (= res!2211214 lt!2141467)))

(declare-fun b!5204976 () Bool)

(assert (=> b!5204976 (= e!3240827 e!3240826)))

(declare-fun res!2211211 () Bool)

(assert (=> b!5204976 (=> (not res!2211211) (not e!3240826))))

(assert (=> b!5204976 (= res!2211211 (not lt!2141467))))

(declare-fun b!5204977 () Bool)

(assert (=> b!5204977 (= e!3240824 (= (head!11157 (tail!10254 s!2326)) (c!896858 (derivativeStep!4041 r!7292 (head!11157 s!2326)))))))

(assert (= (and d!1678719 c!897230) b!5204965))

(assert (= (and d!1678719 (not c!897230)) b!5204968))

(assert (= (and d!1678719 c!897232) b!5204967))

(assert (= (and d!1678719 (not c!897232)) b!5204970))

(assert (= (and b!5204970 c!897231) b!5204974))

(assert (= (and b!5204970 (not c!897231)) b!5204969))

(assert (= (and b!5204969 (not res!2211209)) b!5204975))

(assert (= (and b!5204975 res!2211214) b!5204971))

(assert (= (and b!5204971 res!2211207) b!5204972))

(assert (= (and b!5204972 res!2211213) b!5204977))

(assert (= (and b!5204975 (not res!2211208)) b!5204976))

(assert (= (and b!5204976 res!2211211) b!5204966))

(assert (= (and b!5204966 (not res!2211212)) b!5204964))

(assert (= (and b!5204964 (not res!2211210)) b!5204973))

(assert (= (or b!5204967 b!5204966 b!5204971) bm!366043))

(assert (=> b!5204968 m!6255614))

(declare-fun m!6256434 () Bool)

(assert (=> b!5204968 m!6256434))

(assert (=> b!5204968 m!6255612))

(assert (=> b!5204968 m!6256434))

(declare-fun m!6256436 () Bool)

(assert (=> b!5204968 m!6256436))

(assert (=> b!5204968 m!6255614))

(declare-fun m!6256438 () Bool)

(assert (=> b!5204968 m!6256438))

(assert (=> b!5204968 m!6256436))

(assert (=> b!5204968 m!6256438))

(declare-fun m!6256440 () Bool)

(assert (=> b!5204968 m!6256440))

(assert (=> b!5204964 m!6255614))

(assert (=> b!5204964 m!6256438))

(assert (=> b!5204964 m!6256438))

(declare-fun m!6256442 () Bool)

(assert (=> b!5204964 m!6256442))

(assert (=> b!5204977 m!6255614))

(assert (=> b!5204977 m!6256434))

(assert (=> b!5204965 m!6255612))

(declare-fun m!6256444 () Bool)

(assert (=> b!5204965 m!6256444))

(assert (=> d!1678719 m!6255614))

(assert (=> d!1678719 m!6255618))

(assert (=> d!1678719 m!6255612))

(declare-fun m!6256446 () Bool)

(assert (=> d!1678719 m!6256446))

(assert (=> b!5204973 m!6255614))

(assert (=> b!5204973 m!6256434))

(assert (=> bm!366043 m!6255614))

(assert (=> bm!366043 m!6255618))

(assert (=> b!5204972 m!6255614))

(assert (=> b!5204972 m!6256438))

(assert (=> b!5204972 m!6256438))

(assert (=> b!5204972 m!6256442))

(assert (=> b!5204032 d!1678719))

(declare-fun b!5204998 () Bool)

(declare-fun e!3240843 () Regex!14791)

(declare-fun call!366057 () Regex!14791)

(assert (=> b!5204998 (= e!3240843 (Union!14791 (Concat!23636 call!366057 (regTwo!30094 r!7292)) EmptyLang!14791))))

(declare-fun call!366059 () Regex!14791)

(declare-fun bm!366052 () Bool)

(declare-fun c!897247 () Bool)

(declare-fun c!897245 () Bool)

(declare-fun c!897243 () Bool)

(assert (=> bm!366052 (= call!366059 (derivativeStep!4041 (ite c!897247 (regOne!30095 r!7292) (ite c!897245 (reg!15120 r!7292) (ite c!897243 (regTwo!30094 r!7292) (regOne!30094 r!7292)))) (head!11157 s!2326)))))

(declare-fun call!366058 () Regex!14791)

(declare-fun b!5204999 () Bool)

(assert (=> b!5204999 (= e!3240843 (Union!14791 (Concat!23636 call!366058 (regTwo!30094 r!7292)) call!366057))))

(declare-fun b!5205000 () Bool)

(assert (=> b!5205000 (= c!897243 (nullable!4960 (regOne!30094 r!7292)))))

(declare-fun e!3240839 () Regex!14791)

(assert (=> b!5205000 (= e!3240839 e!3240843)))

(declare-fun b!5205001 () Bool)

(declare-fun e!3240842 () Regex!14791)

(declare-fun e!3240841 () Regex!14791)

(assert (=> b!5205001 (= e!3240842 e!3240841)))

(declare-fun c!897246 () Bool)

(assert (=> b!5205001 (= c!897246 ((_ is ElementMatch!14791) r!7292))))

(declare-fun bm!366053 () Bool)

(declare-fun call!366060 () Regex!14791)

(assert (=> bm!366053 (= call!366057 call!366060)))

(declare-fun b!5205002 () Bool)

(declare-fun e!3240840 () Regex!14791)

(assert (=> b!5205002 (= e!3240840 (Union!14791 call!366059 call!366058))))

(declare-fun b!5205003 () Bool)

(assert (=> b!5205003 (= e!3240842 EmptyLang!14791)))

(declare-fun bm!366054 () Bool)

(assert (=> bm!366054 (= call!366060 call!366059)))

(declare-fun b!5205004 () Bool)

(assert (=> b!5205004 (= e!3240841 (ite (= (head!11157 s!2326) (c!896858 r!7292)) EmptyExpr!14791 EmptyLang!14791))))

(declare-fun b!5205005 () Bool)

(assert (=> b!5205005 (= c!897247 ((_ is Union!14791) r!7292))))

(assert (=> b!5205005 (= e!3240841 e!3240840)))

(declare-fun b!5205006 () Bool)

(assert (=> b!5205006 (= e!3240840 e!3240839)))

(assert (=> b!5205006 (= c!897245 ((_ is Star!14791) r!7292))))

(declare-fun b!5205007 () Bool)

(assert (=> b!5205007 (= e!3240839 (Concat!23636 call!366060 r!7292))))

(declare-fun d!1678721 () Bool)

(declare-fun lt!2141470 () Regex!14791)

(assert (=> d!1678721 (validRegex!6527 lt!2141470)))

(assert (=> d!1678721 (= lt!2141470 e!3240842)))

(declare-fun c!897244 () Bool)

(assert (=> d!1678721 (= c!897244 (or ((_ is EmptyExpr!14791) r!7292) ((_ is EmptyLang!14791) r!7292)))))

(assert (=> d!1678721 (validRegex!6527 r!7292)))

(assert (=> d!1678721 (= (derivativeStep!4041 r!7292 (head!11157 s!2326)) lt!2141470)))

(declare-fun bm!366055 () Bool)

(assert (=> bm!366055 (= call!366058 (derivativeStep!4041 (ite c!897247 (regTwo!30095 r!7292) (regOne!30094 r!7292)) (head!11157 s!2326)))))

(assert (= (and d!1678721 c!897244) b!5205003))

(assert (= (and d!1678721 (not c!897244)) b!5205001))

(assert (= (and b!5205001 c!897246) b!5205004))

(assert (= (and b!5205001 (not c!897246)) b!5205005))

(assert (= (and b!5205005 c!897247) b!5205002))

(assert (= (and b!5205005 (not c!897247)) b!5205006))

(assert (= (and b!5205006 c!897245) b!5205007))

(assert (= (and b!5205006 (not c!897245)) b!5205000))

(assert (= (and b!5205000 c!897243) b!5204999))

(assert (= (and b!5205000 (not c!897243)) b!5204998))

(assert (= (or b!5204999 b!5204998) bm!366053))

(assert (= (or b!5205007 bm!366053) bm!366054))

(assert (= (or b!5205002 b!5204999) bm!366055))

(assert (= (or b!5205002 bm!366054) bm!366052))

(assert (=> bm!366052 m!6255610))

(declare-fun m!6256448 () Bool)

(assert (=> bm!366052 m!6256448))

(assert (=> b!5205000 m!6256350))

(declare-fun m!6256450 () Bool)

(assert (=> d!1678721 m!6256450))

(assert (=> d!1678721 m!6255266))

(assert (=> bm!366055 m!6255610))

(declare-fun m!6256452 () Bool)

(assert (=> bm!366055 m!6256452))

(assert (=> b!5204032 d!1678721))

(assert (=> b!5204032 d!1678575))

(assert (=> b!5204032 d!1678663))

(declare-fun call!366065 () List!60672)

(declare-fun call!366063 () (InoxSet Context!8350))

(declare-fun bm!366056 () Bool)

(declare-fun c!897252 () Bool)

(assert (=> bm!366056 (= call!366063 (derivationStepZipperDown!239 (ite c!897252 (regTwo!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))) (ite c!897252 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))) (Context!8351 call!366065)) (h!66998 s!2326)))))

(declare-fun b!5205008 () Bool)

(declare-fun e!3240849 () (InoxSet Context!8350))

(declare-fun call!366064 () (InoxSet Context!8350))

(assert (=> b!5205008 (= e!3240849 call!366064)))

(declare-fun b!5205009 () Bool)

(declare-fun e!3240844 () (InoxSet Context!8350))

(declare-fun call!366061 () (InoxSet Context!8350))

(assert (=> b!5205009 (= e!3240844 ((_ map or) call!366063 call!366061))))

(declare-fun c!897250 () Bool)

(declare-fun call!366062 () (InoxSet Context!8350))

(declare-fun bm!366057 () Bool)

(declare-fun call!366066 () List!60672)

(declare-fun c!897251 () Bool)

(assert (=> bm!366057 (= call!366062 (derivationStepZipperDown!239 (ite c!897252 (regOne!30095 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!897251 (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (ite c!897250 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (reg!15120 (h!66996 (exprs!4675 (h!66997 zl!343))))))) (ite (or c!897252 c!897251) (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))) (Context!8351 call!366066)) (h!66998 s!2326)))))

(declare-fun b!5205010 () Bool)

(declare-fun e!3240845 () (InoxSet Context!8350))

(assert (=> b!5205010 (= e!3240845 call!366064)))

(declare-fun b!5205011 () Bool)

(assert (=> b!5205011 (= e!3240845 ((as const (Array Context!8350 Bool)) false))))

(declare-fun b!5205012 () Bool)

(declare-fun e!3240848 () Bool)

(assert (=> b!5205012 (= c!897251 e!3240848)))

(declare-fun res!2211215 () Bool)

(assert (=> b!5205012 (=> (not res!2211215) (not e!3240848))))

(assert (=> b!5205012 (= res!2211215 ((_ is Concat!23636) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun e!3240847 () (InoxSet Context!8350))

(assert (=> b!5205012 (= e!3240847 e!3240844)))

(declare-fun b!5205013 () Bool)

(declare-fun c!897249 () Bool)

(assert (=> b!5205013 (= c!897249 ((_ is Star!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(assert (=> b!5205013 (= e!3240849 e!3240845)))

(declare-fun d!1678723 () Bool)

(declare-fun c!897248 () Bool)

(assert (=> d!1678723 (= c!897248 (and ((_ is ElementMatch!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))) (= (c!896858 (h!66996 (exprs!4675 (h!66997 zl!343)))) (h!66998 s!2326))))))

(declare-fun e!3240846 () (InoxSet Context!8350))

(assert (=> d!1678723 (= (derivationStepZipperDown!239 (h!66996 (exprs!4675 (h!66997 zl!343))) (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))) (h!66998 s!2326)) e!3240846)))

(declare-fun bm!366058 () Bool)

(assert (=> bm!366058 (= call!366065 ($colon$colon!1269 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343))))) (ite (or c!897251 c!897250) (regTwo!30094 (h!66996 (exprs!4675 (h!66997 zl!343)))) (h!66996 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5205014 () Bool)

(assert (=> b!5205014 (= e!3240848 (nullable!4960 (regOne!30094 (h!66996 (exprs!4675 (h!66997 zl!343))))))))

(declare-fun b!5205015 () Bool)

(assert (=> b!5205015 (= e!3240844 e!3240849)))

(assert (=> b!5205015 (= c!897250 ((_ is Concat!23636) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun b!5205016 () Bool)

(assert (=> b!5205016 (= e!3240846 (store ((as const (Array Context!8350 Bool)) false) (Context!8351 (t!373827 (exprs!4675 (h!66997 zl!343)))) true))))

(declare-fun b!5205017 () Bool)

(assert (=> b!5205017 (= e!3240846 e!3240847)))

(assert (=> b!5205017 (= c!897252 ((_ is Union!14791) (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun bm!366059 () Bool)

(assert (=> bm!366059 (= call!366064 call!366061)))

(declare-fun b!5205018 () Bool)

(assert (=> b!5205018 (= e!3240847 ((_ map or) call!366062 call!366063))))

(declare-fun bm!366060 () Bool)

(assert (=> bm!366060 (= call!366066 call!366065)))

(declare-fun bm!366061 () Bool)

(assert (=> bm!366061 (= call!366061 call!366062)))

(assert (= (and d!1678723 c!897248) b!5205016))

(assert (= (and d!1678723 (not c!897248)) b!5205017))

(assert (= (and b!5205017 c!897252) b!5205018))

(assert (= (and b!5205017 (not c!897252)) b!5205012))

(assert (= (and b!5205012 res!2211215) b!5205014))

(assert (= (and b!5205012 c!897251) b!5205009))

(assert (= (and b!5205012 (not c!897251)) b!5205015))

(assert (= (and b!5205015 c!897250) b!5205008))

(assert (= (and b!5205015 (not c!897250)) b!5205013))

(assert (= (and b!5205013 c!897249) b!5205010))

(assert (= (and b!5205013 (not c!897249)) b!5205011))

(assert (= (or b!5205008 b!5205010) bm!366060))

(assert (= (or b!5205008 b!5205010) bm!366059))

(assert (= (or b!5205009 bm!366060) bm!366058))

(assert (= (or b!5205009 bm!366059) bm!366061))

(assert (= (or b!5205018 b!5205009) bm!366056))

(assert (= (or b!5205018 bm!366061) bm!366057))

(declare-fun m!6256454 () Bool)

(assert (=> bm!366057 m!6256454))

(assert (=> b!5205014 m!6255574))

(declare-fun m!6256456 () Bool)

(assert (=> bm!366056 m!6256456))

(declare-fun m!6256458 () Bool)

(assert (=> bm!366058 m!6256458))

(declare-fun m!6256460 () Bool)

(assert (=> b!5205016 m!6256460))

(assert (=> bm!365891 d!1678723))

(declare-fun b!5205019 () Bool)

(declare-fun e!3240850 () Bool)

(declare-fun e!3240856 () Bool)

(assert (=> b!5205019 (= e!3240850 e!3240856)))

(declare-fun res!2211219 () Bool)

(assert (=> b!5205019 (= res!2211219 (not (nullable!4960 (reg!15120 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))))))))

(assert (=> b!5205019 (=> (not res!2211219) (not e!3240856))))

(declare-fun d!1678725 () Bool)

(declare-fun res!2211218 () Bool)

(declare-fun e!3240852 () Bool)

(assert (=> d!1678725 (=> res!2211218 e!3240852)))

(assert (=> d!1678725 (= res!2211218 ((_ is ElementMatch!14791) (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))))))

(assert (=> d!1678725 (= (validRegex!6527 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))) e!3240852)))

(declare-fun bm!366062 () Bool)

(declare-fun call!366068 () Bool)

(declare-fun c!897253 () Bool)

(declare-fun c!897254 () Bool)

(assert (=> bm!366062 (= call!366068 (validRegex!6527 (ite c!897253 (reg!15120 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))) (ite c!897254 (regTwo!30095 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))) (regTwo!30094 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292)))))))))))

(declare-fun b!5205020 () Bool)

(declare-fun e!3240853 () Bool)

(assert (=> b!5205020 (= e!3240850 e!3240853)))

(assert (=> b!5205020 (= c!897254 ((_ is Union!14791) (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))))))

(declare-fun b!5205021 () Bool)

(declare-fun e!3240851 () Bool)

(declare-fun call!366067 () Bool)

(assert (=> b!5205021 (= e!3240851 call!366067)))

(declare-fun b!5205022 () Bool)

(declare-fun res!2211220 () Bool)

(assert (=> b!5205022 (=> (not res!2211220) (not e!3240851))))

(declare-fun call!366069 () Bool)

(assert (=> b!5205022 (= res!2211220 call!366069)))

(assert (=> b!5205022 (= e!3240853 e!3240851)))

(declare-fun bm!366063 () Bool)

(assert (=> bm!366063 (= call!366069 (validRegex!6527 (ite c!897254 (regOne!30095 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))) (regOne!30094 (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))))))))

(declare-fun b!5205023 () Bool)

(assert (=> b!5205023 (= e!3240852 e!3240850)))

(assert (=> b!5205023 (= c!897253 ((_ is Star!14791) (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292))))))))

(declare-fun b!5205024 () Bool)

(declare-fun e!3240855 () Bool)

(declare-fun e!3240854 () Bool)

(assert (=> b!5205024 (= e!3240855 e!3240854)))

(declare-fun res!2211217 () Bool)

(assert (=> b!5205024 (=> (not res!2211217) (not e!3240854))))

(assert (=> b!5205024 (= res!2211217 call!366069)))

(declare-fun b!5205025 () Bool)

(declare-fun res!2211216 () Bool)

(assert (=> b!5205025 (=> res!2211216 e!3240855)))

(assert (=> b!5205025 (= res!2211216 (not ((_ is Concat!23636) (ite c!897000 (regOne!30095 (regOne!30095 (regOne!30094 r!7292))) (regOne!30094 (regOne!30095 (regOne!30094 r!7292)))))))))

(assert (=> b!5205025 (= e!3240853 e!3240855)))

(declare-fun b!5205026 () Bool)

(assert (=> b!5205026 (= e!3240856 call!366068)))

(declare-fun bm!366064 () Bool)

(assert (=> bm!366064 (= call!366067 call!366068)))

(declare-fun b!5205027 () Bool)

(assert (=> b!5205027 (= e!3240854 call!366067)))

(assert (= (and d!1678725 (not res!2211218)) b!5205023))

(assert (= (and b!5205023 c!897253) b!5205019))

(assert (= (and b!5205023 (not c!897253)) b!5205020))

(assert (= (and b!5205019 res!2211219) b!5205026))

(assert (= (and b!5205020 c!897254) b!5205022))

(assert (= (and b!5205020 (not c!897254)) b!5205025))

(assert (= (and b!5205022 res!2211220) b!5205021))

(assert (= (and b!5205025 (not res!2211216)) b!5205024))

(assert (= (and b!5205024 res!2211217) b!5205027))

(assert (= (or b!5205021 b!5205027) bm!366064))

(assert (= (or b!5205022 b!5205024) bm!366063))

(assert (= (or b!5205026 bm!366064) bm!366062))

(declare-fun m!6256462 () Bool)

(assert (=> b!5205019 m!6256462))

(declare-fun m!6256464 () Bool)

(assert (=> bm!366062 m!6256464))

(declare-fun m!6256466 () Bool)

(assert (=> bm!366063 m!6256466))

(assert (=> bm!365899 d!1678725))

(declare-fun call!366074 () List!60672)

(declare-fun call!366072 () (InoxSet Context!8350))

(declare-fun bm!366065 () Bool)

(declare-fun c!897259 () Bool)

(assert (=> bm!366065 (= call!366072 (derivationStepZipperDown!239 (ite c!897259 (regTwo!30095 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (regOne!30094 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))) (ite c!897259 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (Context!8351 call!366074)) (h!66998 s!2326)))))

(declare-fun b!5205028 () Bool)

(declare-fun e!3240862 () (InoxSet Context!8350))

(declare-fun call!366073 () (InoxSet Context!8350))

(assert (=> b!5205028 (= e!3240862 call!366073)))

(declare-fun b!5205029 () Bool)

(declare-fun e!3240857 () (InoxSet Context!8350))

(declare-fun call!366070 () (InoxSet Context!8350))

(assert (=> b!5205029 (= e!3240857 ((_ map or) call!366072 call!366070))))

(declare-fun call!366075 () List!60672)

(declare-fun call!366071 () (InoxSet Context!8350))

(declare-fun c!897258 () Bool)

(declare-fun c!897257 () Bool)

(declare-fun bm!366066 () Bool)

(assert (=> bm!366066 (= call!366071 (derivationStepZipperDown!239 (ite c!897259 (regOne!30095 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (ite c!897258 (regTwo!30094 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (ite c!897257 (regOne!30094 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (reg!15120 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))) (ite (or c!897259 c!897258) (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (Context!8351 call!366075)) (h!66998 s!2326)))))

(declare-fun b!5205030 () Bool)

(declare-fun e!3240858 () (InoxSet Context!8350))

(assert (=> b!5205030 (= e!3240858 call!366073)))

(declare-fun b!5205031 () Bool)

(assert (=> b!5205031 (= e!3240858 ((as const (Array Context!8350 Bool)) false))))

(declare-fun b!5205032 () Bool)

(declare-fun e!3240861 () Bool)

(assert (=> b!5205032 (= c!897258 e!3240861)))

(declare-fun res!2211221 () Bool)

(assert (=> b!5205032 (=> (not res!2211221) (not e!3240861))))

(assert (=> b!5205032 (= res!2211221 ((_ is Concat!23636) (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun e!3240860 () (InoxSet Context!8350))

(assert (=> b!5205032 (= e!3240860 e!3240857)))

(declare-fun b!5205033 () Bool)

(declare-fun c!897256 () Bool)

(assert (=> b!5205033 (= c!897256 ((_ is Star!14791) (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))

(assert (=> b!5205033 (= e!3240862 e!3240858)))

(declare-fun d!1678727 () Bool)

(declare-fun c!897255 () Bool)

(assert (=> d!1678727 (= c!897255 (and ((_ is ElementMatch!14791) (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (= (c!896858 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (h!66998 s!2326))))))

(declare-fun e!3240859 () (InoxSet Context!8350))

(assert (=> d!1678727 (= (derivationStepZipperDown!239 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))) (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (h!66998 s!2326)) e!3240859)))

(declare-fun bm!366067 () Bool)

(assert (=> bm!366067 (= call!366074 ($colon$colon!1269 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))) (ite (or c!897258 c!897257) (regTwo!30094 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))))

(declare-fun b!5205034 () Bool)

(assert (=> b!5205034 (= e!3240861 (nullable!4960 (regOne!30094 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343))))))))))))

(declare-fun b!5205035 () Bool)

(assert (=> b!5205035 (= e!3240857 e!3240862)))

(assert (=> b!5205035 (= c!897257 ((_ is Concat!23636) (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun b!5205036 () Bool)

(assert (=> b!5205036 (= e!3240859 (store ((as const (Array Context!8350 Bool)) false) (Context!8351 (t!373827 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) true))))

(declare-fun b!5205037 () Bool)

(assert (=> b!5205037 (= e!3240859 e!3240860)))

(assert (=> b!5205037 (= c!897259 ((_ is Union!14791) (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun bm!366068 () Bool)

(assert (=> bm!366068 (= call!366073 call!366070)))

(declare-fun b!5205038 () Bool)

(assert (=> b!5205038 (= e!3240860 ((_ map or) call!366071 call!366072))))

(declare-fun bm!366069 () Bool)

(assert (=> bm!366069 (= call!366075 call!366074)))

(declare-fun bm!366070 () Bool)

(assert (=> bm!366070 (= call!366070 call!366071)))

(assert (= (and d!1678727 c!897255) b!5205036))

(assert (= (and d!1678727 (not c!897255)) b!5205037))

(assert (= (and b!5205037 c!897259) b!5205038))

(assert (= (and b!5205037 (not c!897259)) b!5205032))

(assert (= (and b!5205032 res!2211221) b!5205034))

(assert (= (and b!5205032 c!897258) b!5205029))

(assert (= (and b!5205032 (not c!897258)) b!5205035))

(assert (= (and b!5205035 c!897257) b!5205028))

(assert (= (and b!5205035 (not c!897257)) b!5205033))

(assert (= (and b!5205033 c!897256) b!5205030))

(assert (= (and b!5205033 (not c!897256)) b!5205031))

(assert (= (or b!5205028 b!5205030) bm!366069))

(assert (= (or b!5205028 b!5205030) bm!366068))

(assert (= (or b!5205029 bm!366069) bm!366067))

(assert (= (or b!5205029 bm!366068) bm!366070))

(assert (= (or b!5205038 b!5205029) bm!366065))

(assert (= (or b!5205038 bm!366070) bm!366066))

(declare-fun m!6256468 () Bool)

(assert (=> bm!366066 m!6256468))

(declare-fun m!6256470 () Bool)

(assert (=> b!5205034 m!6256470))

(declare-fun m!6256472 () Bool)

(assert (=> bm!366065 m!6256472))

(declare-fun m!6256474 () Bool)

(assert (=> bm!366067 m!6256474))

(declare-fun m!6256476 () Bool)

(assert (=> b!5205036 m!6256476))

(assert (=> bm!365872 d!1678727))

(assert (=> b!5203622 d!1678351))

(declare-fun call!366080 () List!60672)

(declare-fun call!366078 () (InoxSet Context!8350))

(declare-fun c!897264 () Bool)

(declare-fun bm!366071 () Bool)

(assert (=> bm!366071 (= call!366078 (derivationStepZipperDown!239 (ite c!897264 (regTwo!30095 (h!66996 (exprs!4675 lt!2141333))) (regOne!30094 (h!66996 (exprs!4675 lt!2141333)))) (ite c!897264 (Context!8351 (t!373827 (exprs!4675 lt!2141333))) (Context!8351 call!366080)) (h!66998 s!2326)))))

(declare-fun b!5205039 () Bool)

(declare-fun e!3240868 () (InoxSet Context!8350))

(declare-fun call!366079 () (InoxSet Context!8350))

(assert (=> b!5205039 (= e!3240868 call!366079)))

(declare-fun b!5205040 () Bool)

(declare-fun e!3240863 () (InoxSet Context!8350))

(declare-fun call!366076 () (InoxSet Context!8350))

(assert (=> b!5205040 (= e!3240863 ((_ map or) call!366078 call!366076))))

(declare-fun c!897262 () Bool)

(declare-fun call!366081 () List!60672)

(declare-fun call!366077 () (InoxSet Context!8350))

(declare-fun bm!366072 () Bool)

(declare-fun c!897263 () Bool)

(assert (=> bm!366072 (= call!366077 (derivationStepZipperDown!239 (ite c!897264 (regOne!30095 (h!66996 (exprs!4675 lt!2141333))) (ite c!897263 (regTwo!30094 (h!66996 (exprs!4675 lt!2141333))) (ite c!897262 (regOne!30094 (h!66996 (exprs!4675 lt!2141333))) (reg!15120 (h!66996 (exprs!4675 lt!2141333)))))) (ite (or c!897264 c!897263) (Context!8351 (t!373827 (exprs!4675 lt!2141333))) (Context!8351 call!366081)) (h!66998 s!2326)))))

(declare-fun b!5205041 () Bool)

(declare-fun e!3240864 () (InoxSet Context!8350))

(assert (=> b!5205041 (= e!3240864 call!366079)))

(declare-fun b!5205042 () Bool)

(assert (=> b!5205042 (= e!3240864 ((as const (Array Context!8350 Bool)) false))))

(declare-fun b!5205043 () Bool)

(declare-fun e!3240867 () Bool)

(assert (=> b!5205043 (= c!897263 e!3240867)))

(declare-fun res!2211222 () Bool)

(assert (=> b!5205043 (=> (not res!2211222) (not e!3240867))))

(assert (=> b!5205043 (= res!2211222 ((_ is Concat!23636) (h!66996 (exprs!4675 lt!2141333))))))

(declare-fun e!3240866 () (InoxSet Context!8350))

(assert (=> b!5205043 (= e!3240866 e!3240863)))

(declare-fun b!5205044 () Bool)

(declare-fun c!897261 () Bool)

(assert (=> b!5205044 (= c!897261 ((_ is Star!14791) (h!66996 (exprs!4675 lt!2141333))))))

(assert (=> b!5205044 (= e!3240868 e!3240864)))

(declare-fun d!1678729 () Bool)

(declare-fun c!897260 () Bool)

(assert (=> d!1678729 (= c!897260 (and ((_ is ElementMatch!14791) (h!66996 (exprs!4675 lt!2141333))) (= (c!896858 (h!66996 (exprs!4675 lt!2141333))) (h!66998 s!2326))))))

(declare-fun e!3240865 () (InoxSet Context!8350))

(assert (=> d!1678729 (= (derivationStepZipperDown!239 (h!66996 (exprs!4675 lt!2141333)) (Context!8351 (t!373827 (exprs!4675 lt!2141333))) (h!66998 s!2326)) e!3240865)))

(declare-fun bm!366073 () Bool)

(assert (=> bm!366073 (= call!366080 ($colon$colon!1269 (exprs!4675 (Context!8351 (t!373827 (exprs!4675 lt!2141333)))) (ite (or c!897263 c!897262) (regTwo!30094 (h!66996 (exprs!4675 lt!2141333))) (h!66996 (exprs!4675 lt!2141333)))))))

(declare-fun b!5205045 () Bool)

(assert (=> b!5205045 (= e!3240867 (nullable!4960 (regOne!30094 (h!66996 (exprs!4675 lt!2141333)))))))

(declare-fun b!5205046 () Bool)

(assert (=> b!5205046 (= e!3240863 e!3240868)))

(assert (=> b!5205046 (= c!897262 ((_ is Concat!23636) (h!66996 (exprs!4675 lt!2141333))))))

(declare-fun b!5205047 () Bool)

(assert (=> b!5205047 (= e!3240865 (store ((as const (Array Context!8350 Bool)) false) (Context!8351 (t!373827 (exprs!4675 lt!2141333))) true))))

(declare-fun b!5205048 () Bool)

(assert (=> b!5205048 (= e!3240865 e!3240866)))

(assert (=> b!5205048 (= c!897264 ((_ is Union!14791) (h!66996 (exprs!4675 lt!2141333))))))

(declare-fun bm!366074 () Bool)

(assert (=> bm!366074 (= call!366079 call!366076)))

(declare-fun b!5205049 () Bool)

(assert (=> b!5205049 (= e!3240866 ((_ map or) call!366077 call!366078))))

(declare-fun bm!366075 () Bool)

(assert (=> bm!366075 (= call!366081 call!366080)))

(declare-fun bm!366076 () Bool)

(assert (=> bm!366076 (= call!366076 call!366077)))

(assert (= (and d!1678729 c!897260) b!5205047))

(assert (= (and d!1678729 (not c!897260)) b!5205048))

(assert (= (and b!5205048 c!897264) b!5205049))

(assert (= (and b!5205048 (not c!897264)) b!5205043))

(assert (= (and b!5205043 res!2211222) b!5205045))

(assert (= (and b!5205043 c!897263) b!5205040))

(assert (= (and b!5205043 (not c!897263)) b!5205046))

(assert (= (and b!5205046 c!897262) b!5205039))

(assert (= (and b!5205046 (not c!897262)) b!5205044))

(assert (= (and b!5205044 c!897261) b!5205041))

(assert (= (and b!5205044 (not c!897261)) b!5205042))

(assert (= (or b!5205039 b!5205041) bm!366075))

(assert (= (or b!5205039 b!5205041) bm!366074))

(assert (= (or b!5205040 bm!366075) bm!366073))

(assert (= (or b!5205040 bm!366074) bm!366076))

(assert (= (or b!5205049 b!5205040) bm!366071))

(assert (= (or b!5205049 bm!366076) bm!366072))

(declare-fun m!6256478 () Bool)

(assert (=> bm!366072 m!6256478))

(declare-fun m!6256480 () Bool)

(assert (=> b!5205045 m!6256480))

(declare-fun m!6256482 () Bool)

(assert (=> bm!366071 m!6256482))

(declare-fun m!6256484 () Bool)

(assert (=> bm!366073 m!6256484))

(declare-fun m!6256486 () Bool)

(assert (=> b!5205047 m!6256486))

(assert (=> bm!365871 d!1678729))

(declare-fun d!1678731 () Bool)

(assert (=> d!1678731 (= (Exists!1972 lambda!260838) (choose!38682 lambda!260838))))

(declare-fun bs!1209856 () Bool)

(assert (= bs!1209856 d!1678731))

(declare-fun m!6256488 () Bool)

(assert (=> bs!1209856 m!6256488))

(assert (=> d!1678365 d!1678731))

(declare-fun d!1678733 () Bool)

(assert (=> d!1678733 (= (Exists!1972 lambda!260839) (choose!38682 lambda!260839))))

(declare-fun bs!1209857 () Bool)

(assert (= bs!1209857 d!1678733))

(declare-fun m!6256490 () Bool)

(assert (=> bs!1209857 m!6256490))

(assert (=> d!1678365 d!1678733))

(declare-fun bs!1209858 () Bool)

(declare-fun d!1678735 () Bool)

(assert (= bs!1209858 (and d!1678735 d!1678365)))

(declare-fun lambda!260892 () Int)

(assert (=> bs!1209858 (not (= lambda!260892 lambda!260839))))

(declare-fun bs!1209859 () Bool)

(assert (= bs!1209859 (and d!1678735 b!5203446)))

(assert (=> bs!1209859 (= lambda!260892 lambda!260781)))

(assert (=> bs!1209859 (not (= lambda!260892 lambda!260782))))

(declare-fun bs!1209860 () Bool)

(assert (= bs!1209860 (and d!1678735 d!1678363)))

(assert (=> bs!1209860 (= lambda!260892 lambda!260833)))

(declare-fun bs!1209861 () Bool)

(assert (= bs!1209861 (and d!1678735 b!5204770)))

(assert (=> bs!1209861 (not (= lambda!260892 lambda!260870))))

(declare-fun bs!1209862 () Bool)

(assert (= bs!1209862 (and d!1678735 b!5203992)))

(assert (=> bs!1209862 (not (= lambda!260892 lambda!260827))))

(assert (=> bs!1209858 (= lambda!260892 lambda!260838)))

(declare-fun bs!1209863 () Bool)

(assert (= bs!1209863 (and d!1678735 b!5204842)))

(assert (=> bs!1209863 (not (= lambda!260892 lambda!260880))))

(declare-fun bs!1209864 () Bool)

(assert (= bs!1209864 (and d!1678735 b!5204775)))

(assert (=> bs!1209864 (not (= lambda!260892 lambda!260869))))

(declare-fun bs!1209865 () Bool)

(assert (= bs!1209865 (and d!1678735 b!5203997)))

(assert (=> bs!1209865 (not (= lambda!260892 lambda!260826))))

(declare-fun bs!1209866 () Bool)

(assert (= bs!1209866 (and d!1678735 d!1678703)))

(assert (=> bs!1209866 (= lambda!260892 lambda!260885)))

(declare-fun bs!1209867 () Bool)

(assert (= bs!1209867 (and d!1678735 b!5204847)))

(assert (=> bs!1209867 (not (= lambda!260892 lambda!260879))))

(assert (=> d!1678735 true))

(assert (=> d!1678735 true))

(assert (=> d!1678735 true))

(declare-fun lambda!260893 () Int)

(assert (=> bs!1209858 (= lambda!260893 lambda!260839)))

(declare-fun bs!1209868 () Bool)

(assert (= bs!1209868 d!1678735))

(assert (=> bs!1209868 (not (= lambda!260893 lambda!260892))))

(assert (=> bs!1209859 (not (= lambda!260893 lambda!260781))))

(assert (=> bs!1209859 (= lambda!260893 lambda!260782)))

(assert (=> bs!1209860 (not (= lambda!260893 lambda!260833))))

(assert (=> bs!1209861 (= (and (= (regOne!30094 r!7292) (regOne!30094 (regOne!30095 r!7292))) (= (regTwo!30094 r!7292) (regTwo!30094 (regOne!30095 r!7292)))) (= lambda!260893 lambda!260870))))

(assert (=> bs!1209862 (= lambda!260893 lambda!260827)))

(assert (=> bs!1209858 (not (= lambda!260893 lambda!260838))))

(assert (=> bs!1209863 (= (and (= (regOne!30094 r!7292) (regOne!30094 (regTwo!30095 r!7292))) (= (regTwo!30094 r!7292) (regTwo!30094 (regTwo!30095 r!7292)))) (= lambda!260893 lambda!260880))))

(assert (=> bs!1209864 (not (= lambda!260893 lambda!260869))))

(assert (=> bs!1209865 (not (= lambda!260893 lambda!260826))))

(assert (=> bs!1209866 (not (= lambda!260893 lambda!260885))))

(assert (=> bs!1209867 (not (= lambda!260893 lambda!260879))))

(assert (=> d!1678735 true))

(assert (=> d!1678735 true))

(assert (=> d!1678735 true))

(assert (=> d!1678735 (= (Exists!1972 lambda!260892) (Exists!1972 lambda!260893))))

(assert (=> d!1678735 true))

(declare-fun _$90!976 () Unit!152430)

(assert (=> d!1678735 (= (choose!38684 (regOne!30094 r!7292) (regTwo!30094 r!7292) s!2326) _$90!976)))

(declare-fun m!6256492 () Bool)

(assert (=> bs!1209868 m!6256492))

(declare-fun m!6256494 () Bool)

(assert (=> bs!1209868 m!6256494))

(assert (=> d!1678365 d!1678735))

(assert (=> d!1678365 d!1678681))

(assert (=> b!5204073 d!1678289))

(declare-fun d!1678737 () Bool)

(assert (=> d!1678737 (= (isEmpty!32454 (unfocusZipperList!233 zl!343)) ((_ is Nil!60548) (unfocusZipperList!233 zl!343)))))

(assert (=> b!5203748 d!1678737))

(declare-fun b!5205058 () Bool)

(declare-fun e!3240873 () Bool)

(declare-fun e!3240879 () Bool)

(assert (=> b!5205058 (= e!3240873 e!3240879)))

(declare-fun res!2211234 () Bool)

(assert (=> b!5205058 (= res!2211234 (not (nullable!4960 (reg!15120 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))))))))

(assert (=> b!5205058 (=> (not res!2211234) (not e!3240879))))

(declare-fun d!1678739 () Bool)

(declare-fun res!2211233 () Bool)

(declare-fun e!3240875 () Bool)

(assert (=> d!1678739 (=> res!2211233 e!3240875)))

(assert (=> d!1678739 (= res!2211233 ((_ is ElementMatch!14791) (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))))))

(assert (=> d!1678739 (= (validRegex!6527 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))) e!3240875)))

(declare-fun c!897265 () Bool)

(declare-fun call!366083 () Bool)

(declare-fun bm!366077 () Bool)

(declare-fun c!897266 () Bool)

(assert (=> bm!366077 (= call!366083 (validRegex!6527 (ite c!897265 (reg!15120 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))) (ite c!897266 (regTwo!30095 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))) (regTwo!30094 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292))))))))))

(declare-fun b!5205059 () Bool)

(declare-fun e!3240876 () Bool)

(assert (=> b!5205059 (= e!3240873 e!3240876)))

(assert (=> b!5205059 (= c!897266 ((_ is Union!14791) (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))))))

(declare-fun b!5205060 () Bool)

(declare-fun e!3240874 () Bool)

(declare-fun call!366082 () Bool)

(assert (=> b!5205060 (= e!3240874 call!366082)))

(declare-fun b!5205061 () Bool)

(declare-fun res!2211235 () Bool)

(assert (=> b!5205061 (=> (not res!2211235) (not e!3240874))))

(declare-fun call!366084 () Bool)

(assert (=> b!5205061 (= res!2211235 call!366084)))

(assert (=> b!5205061 (= e!3240876 e!3240874)))

(declare-fun bm!366078 () Bool)

(assert (=> bm!366078 (= call!366084 (validRegex!6527 (ite c!897266 (regOne!30095 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))) (regOne!30094 (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))))))))

(declare-fun b!5205062 () Bool)

(assert (=> b!5205062 (= e!3240875 e!3240873)))

(assert (=> b!5205062 (= c!897265 ((_ is Star!14791) (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292)))))))

(declare-fun b!5205063 () Bool)

(declare-fun e!3240878 () Bool)

(declare-fun e!3240877 () Bool)

(assert (=> b!5205063 (= e!3240878 e!3240877)))

(declare-fun res!2211232 () Bool)

(assert (=> b!5205063 (=> (not res!2211232) (not e!3240877))))

(assert (=> b!5205063 (= res!2211232 call!366084)))

(declare-fun b!5205064 () Bool)

(declare-fun res!2211231 () Bool)

(assert (=> b!5205064 (=> res!2211231 e!3240878)))

(assert (=> b!5205064 (= res!2211231 (not ((_ is Concat!23636) (ite c!897035 (reg!15120 r!7292) (ite c!897036 (regTwo!30095 r!7292) (regTwo!30094 r!7292))))))))

(assert (=> b!5205064 (= e!3240876 e!3240878)))

(declare-fun b!5205065 () Bool)

(assert (=> b!5205065 (= e!3240879 call!366083)))

(declare-fun bm!366079 () Bool)

(assert (=> bm!366079 (= call!366082 call!366083)))

(declare-fun b!5205066 () Bool)

(assert (=> b!5205066 (= e!3240877 call!366082)))

(assert (= (and d!1678739 (not res!2211233)) b!5205062))

(assert (= (and b!5205062 c!897265) b!5205058))

(assert (= (and b!5205062 (not c!897265)) b!5205059))

(assert (= (and b!5205058 res!2211234) b!5205065))

(assert (= (and b!5205059 c!897266) b!5205061))

(assert (= (and b!5205059 (not c!897266)) b!5205064))

(assert (= (and b!5205061 res!2211235) b!5205060))

(assert (= (and b!5205064 (not res!2211231)) b!5205063))

(assert (= (and b!5205063 res!2211232) b!5205066))

(assert (= (or b!5205060 b!5205066) bm!366079))

(assert (= (or b!5205061 b!5205063) bm!366078))

(assert (= (or b!5205065 bm!366079) bm!366077))

(declare-fun m!6256496 () Bool)

(assert (=> b!5205058 m!6256496))

(declare-fun m!6256498 () Bool)

(assert (=> bm!366077 m!6256498))

(declare-fun m!6256500 () Bool)

(assert (=> bm!366078 m!6256500))

(assert (=> bm!365910 d!1678739))

(declare-fun d!1678741 () Bool)

(declare-fun c!897267 () Bool)

(assert (=> d!1678741 (= c!897267 (isEmpty!32457 (tail!10254 (t!373829 s!2326))))))

(declare-fun e!3240880 () Bool)

(assert (=> d!1678741 (= (matchZipper!1035 (derivationStepZipper!1063 lt!2141341 (head!11157 (t!373829 s!2326))) (tail!10254 (t!373829 s!2326))) e!3240880)))

(declare-fun b!5205067 () Bool)

(assert (=> b!5205067 (= e!3240880 (nullableZipper!1219 (derivationStepZipper!1063 lt!2141341 (head!11157 (t!373829 s!2326)))))))

(declare-fun b!5205068 () Bool)

(assert (=> b!5205068 (= e!3240880 (matchZipper!1035 (derivationStepZipper!1063 (derivationStepZipper!1063 lt!2141341 (head!11157 (t!373829 s!2326))) (head!11157 (tail!10254 (t!373829 s!2326)))) (tail!10254 (tail!10254 (t!373829 s!2326)))))))

(assert (= (and d!1678741 c!897267) b!5205067))

(assert (= (and d!1678741 (not c!897267)) b!5205068))

(assert (=> d!1678741 m!6255452))

(assert (=> d!1678741 m!6256188))

(assert (=> b!5205067 m!6255626))

(declare-fun m!6256502 () Bool)

(assert (=> b!5205067 m!6256502))

(assert (=> b!5205068 m!6255452))

(assert (=> b!5205068 m!6256192))

(assert (=> b!5205068 m!6255626))

(assert (=> b!5205068 m!6256192))

(declare-fun m!6256504 () Bool)

(assert (=> b!5205068 m!6256504))

(assert (=> b!5205068 m!6255452))

(assert (=> b!5205068 m!6256196))

(assert (=> b!5205068 m!6256504))

(assert (=> b!5205068 m!6256196))

(declare-fun m!6256506 () Bool)

(assert (=> b!5205068 m!6256506))

(assert (=> b!5204043 d!1678741))

(declare-fun bs!1209869 () Bool)

(declare-fun d!1678743 () Bool)

(assert (= bs!1209869 (and d!1678743 b!5203448)))

(declare-fun lambda!260894 () Int)

(assert (=> bs!1209869 (= (= (head!11157 (t!373829 s!2326)) (h!66998 s!2326)) (= lambda!260894 lambda!260783))))

(declare-fun bs!1209870 () Bool)

(assert (= bs!1209870 (and d!1678743 d!1678599)))

(assert (=> bs!1209870 (= lambda!260894 lambda!260873)))

(declare-fun bs!1209871 () Bool)

(assert (= bs!1209871 (and d!1678743 d!1678713)))

(assert (=> bs!1209871 (= lambda!260894 lambda!260886)))

(assert (=> d!1678743 true))

(assert (=> d!1678743 (= (derivationStepZipper!1063 lt!2141341 (head!11157 (t!373829 s!2326))) (flatMap!518 lt!2141341 lambda!260894))))

(declare-fun bs!1209872 () Bool)

(assert (= bs!1209872 d!1678743))

(declare-fun m!6256508 () Bool)

(assert (=> bs!1209872 m!6256508))

(assert (=> b!5204043 d!1678743))

(assert (=> b!5204043 d!1678601))

(assert (=> b!5204043 d!1678603))

(declare-fun bs!1209873 () Bool)

(declare-fun d!1678745 () Bool)

(assert (= bs!1209873 (and d!1678745 d!1678309)))

(declare-fun lambda!260895 () Int)

(assert (=> bs!1209873 (= lambda!260895 lambda!260816)))

(declare-fun bs!1209874 () Bool)

(assert (= bs!1209874 (and d!1678745 d!1678353)))

(assert (=> bs!1209874 (= lambda!260895 lambda!260830)))

(declare-fun bs!1209875 () Bool)

(assert (= bs!1209875 (and d!1678745 d!1678715)))

(assert (=> bs!1209875 (= lambda!260895 lambda!260887)))

(declare-fun bs!1209876 () Bool)

(assert (= bs!1209876 (and d!1678745 d!1678313)))

(assert (=> bs!1209876 (= lambda!260895 lambda!260819)))

(declare-fun bs!1209877 () Bool)

(assert (= bs!1209877 (and d!1678745 d!1678609)))

(assert (=> bs!1209877 (= lambda!260895 lambda!260874)))

(declare-fun bs!1209878 () Bool)

(assert (= bs!1209878 (and d!1678745 d!1678685)))

(assert (=> bs!1209878 (= lambda!260895 lambda!260881)))

(declare-fun bs!1209879 () Bool)

(assert (= bs!1209879 (and d!1678745 d!1678589)))

(assert (=> bs!1209879 (= lambda!260895 lambda!260868)))

(declare-fun bs!1209880 () Bool)

(assert (= bs!1209880 (and d!1678745 d!1678291)))

(assert (=> bs!1209880 (= lambda!260895 lambda!260811)))

(declare-fun bs!1209881 () Bool)

(assert (= bs!1209881 (and d!1678745 d!1678335)))

(assert (=> bs!1209881 (= lambda!260895 lambda!260821)))

(assert (=> d!1678745 (= (inv!80224 (h!66997 (t!373828 zl!343))) (forall!14227 (exprs!4675 (h!66997 (t!373828 zl!343))) lambda!260895))))

(declare-fun bs!1209882 () Bool)

(assert (= bs!1209882 d!1678745))

(declare-fun m!6256510 () Bool)

(assert (=> bs!1209882 m!6256510))

(assert (=> b!5204133 d!1678745))

(assert (=> bm!365909 d!1678637))

(assert (=> b!5203925 d!1678315))

(declare-fun d!1678747 () Bool)

(assert (=> d!1678747 (= (nullable!4960 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))) (nullableFct!1371 (h!66996 (exprs!4675 (Context!8351 (Cons!60548 (h!66996 (exprs!4675 (h!66997 zl!343))) (t!373827 (exprs!4675 (h!66997 zl!343)))))))))))

(declare-fun bs!1209883 () Bool)

(assert (= bs!1209883 d!1678747))

(declare-fun m!6256512 () Bool)

(assert (=> bs!1209883 m!6256512))

(assert (=> b!5203887 d!1678747))

(declare-fun b!5205069 () Bool)

(declare-fun res!2211239 () Bool)

(declare-fun e!3240884 () Bool)

(assert (=> b!5205069 (=> res!2211239 e!3240884)))

(assert (=> b!5205069 (= res!2211239 (not (isEmpty!32457 (tail!10254 (_1!35293 (get!20800 lt!2141419))))))))

(declare-fun b!5205070 () Bool)

(declare-fun e!3240887 () Bool)

(assert (=> b!5205070 (= e!3240887 (nullable!4960 (regOne!30094 r!7292)))))

(declare-fun b!5205071 () Bool)

(declare-fun e!3240885 () Bool)

(assert (=> b!5205071 (= e!3240885 e!3240884)))

(declare-fun res!2211241 () Bool)

(assert (=> b!5205071 (=> res!2211241 e!3240884)))

(declare-fun call!366085 () Bool)

(assert (=> b!5205071 (= res!2211241 call!366085)))

(declare-fun b!5205072 () Bool)

(declare-fun e!3240881 () Bool)

(declare-fun lt!2141471 () Bool)

(assert (=> b!5205072 (= e!3240881 (= lt!2141471 call!366085))))

(declare-fun d!1678749 () Bool)

(assert (=> d!1678749 e!3240881))

(declare-fun c!897270 () Bool)

(assert (=> d!1678749 (= c!897270 ((_ is EmptyExpr!14791) (regOne!30094 r!7292)))))

(assert (=> d!1678749 (= lt!2141471 e!3240887)))

(declare-fun c!897268 () Bool)

(assert (=> d!1678749 (= c!897268 (isEmpty!32457 (_1!35293 (get!20800 lt!2141419))))))

(assert (=> d!1678749 (validRegex!6527 (regOne!30094 r!7292))))

(assert (=> d!1678749 (= (matchR!6976 (regOne!30094 r!7292) (_1!35293 (get!20800 lt!2141419))) lt!2141471)))

(declare-fun b!5205073 () Bool)

(assert (=> b!5205073 (= e!3240887 (matchR!6976 (derivativeStep!4041 (regOne!30094 r!7292) (head!11157 (_1!35293 (get!20800 lt!2141419)))) (tail!10254 (_1!35293 (get!20800 lt!2141419)))))))

(declare-fun b!5205074 () Bool)

(declare-fun res!2211238 () Bool)

(declare-fun e!3240886 () Bool)

(assert (=> b!5205074 (=> res!2211238 e!3240886)))

(assert (=> b!5205074 (= res!2211238 (not ((_ is ElementMatch!14791) (regOne!30094 r!7292))))))

(declare-fun e!3240882 () Bool)

(assert (=> b!5205074 (= e!3240882 e!3240886)))

(declare-fun b!5205075 () Bool)

(assert (=> b!5205075 (= e!3240881 e!3240882)))

(declare-fun c!897269 () Bool)

(assert (=> b!5205075 (= c!897269 ((_ is EmptyLang!14791) (regOne!30094 r!7292)))))

(declare-fun b!5205076 () Bool)

(declare-fun res!2211236 () Bool)

(declare-fun e!3240883 () Bool)

(assert (=> b!5205076 (=> (not res!2211236) (not e!3240883))))

(assert (=> b!5205076 (= res!2211236 (not call!366085))))

(declare-fun bm!366080 () Bool)

(assert (=> bm!366080 (= call!366085 (isEmpty!32457 (_1!35293 (get!20800 lt!2141419))))))

(declare-fun b!5205077 () Bool)

(declare-fun res!2211242 () Bool)

(assert (=> b!5205077 (=> (not res!2211242) (not e!3240883))))

(assert (=> b!5205077 (= res!2211242 (isEmpty!32457 (tail!10254 (_1!35293 (get!20800 lt!2141419)))))))

(declare-fun b!5205078 () Bool)

(assert (=> b!5205078 (= e!3240884 (not (= (head!11157 (_1!35293 (get!20800 lt!2141419))) (c!896858 (regOne!30094 r!7292)))))))

(declare-fun b!5205079 () Bool)

(assert (=> b!5205079 (= e!3240882 (not lt!2141471))))

(declare-fun b!5205080 () Bool)

(declare-fun res!2211237 () Bool)

(assert (=> b!5205080 (=> res!2211237 e!3240886)))

(assert (=> b!5205080 (= res!2211237 e!3240883)))

(declare-fun res!2211243 () Bool)

(assert (=> b!5205080 (=> (not res!2211243) (not e!3240883))))

(assert (=> b!5205080 (= res!2211243 lt!2141471)))

(declare-fun b!5205081 () Bool)

(assert (=> b!5205081 (= e!3240886 e!3240885)))

(declare-fun res!2211240 () Bool)

(assert (=> b!5205081 (=> (not res!2211240) (not e!3240885))))

(assert (=> b!5205081 (= res!2211240 (not lt!2141471))))

(declare-fun b!5205082 () Bool)

(assert (=> b!5205082 (= e!3240883 (= (head!11157 (_1!35293 (get!20800 lt!2141419))) (c!896858 (regOne!30094 r!7292))))))

(assert (= (and d!1678749 c!897268) b!5205070))

(assert (= (and d!1678749 (not c!897268)) b!5205073))

(assert (= (and d!1678749 c!897270) b!5205072))

(assert (= (and d!1678749 (not c!897270)) b!5205075))

(assert (= (and b!5205075 c!897269) b!5205079))

(assert (= (and b!5205075 (not c!897269)) b!5205074))

(assert (= (and b!5205074 (not res!2211238)) b!5205080))

(assert (= (and b!5205080 res!2211243) b!5205076))

(assert (= (and b!5205076 res!2211236) b!5205077))

(assert (= (and b!5205077 res!2211242) b!5205082))

(assert (= (and b!5205080 (not res!2211237)) b!5205081))

(assert (= (and b!5205081 res!2211240) b!5205071))

(assert (= (and b!5205071 (not res!2211241)) b!5205069))

(assert (= (and b!5205069 (not res!2211239)) b!5205078))

(assert (= (or b!5205072 b!5205071 b!5205076) bm!366080))

(declare-fun m!6256514 () Bool)

(assert (=> b!5205073 m!6256514))

(assert (=> b!5205073 m!6256514))

(declare-fun m!6256516 () Bool)

(assert (=> b!5205073 m!6256516))

(declare-fun m!6256518 () Bool)

(assert (=> b!5205073 m!6256518))

(assert (=> b!5205073 m!6256516))

(assert (=> b!5205073 m!6256518))

(declare-fun m!6256520 () Bool)

(assert (=> b!5205073 m!6256520))

(assert (=> b!5205069 m!6256518))

(assert (=> b!5205069 m!6256518))

(declare-fun m!6256522 () Bool)

(assert (=> b!5205069 m!6256522))

(assert (=> b!5205082 m!6256514))

(assert (=> b!5205070 m!6256350))

(declare-fun m!6256524 () Bool)

(assert (=> d!1678749 m!6256524))

(assert (=> d!1678749 m!6255660))

(assert (=> b!5205078 m!6256514))

(assert (=> bm!366080 m!6256524))

(assert (=> b!5205077 m!6256518))

(assert (=> b!5205077 m!6256518))

(assert (=> b!5205077 m!6256522))

(assert (=> b!5204109 d!1678749))

(assert (=> b!5204109 d!1678563))

(declare-fun d!1678751 () Bool)

(assert (=> d!1678751 (= (isEmptyLang!764 lt!2141385) ((_ is EmptyLang!14791) lt!2141385))))

(assert (=> b!5203750 d!1678751))

(declare-fun d!1678753 () Bool)

(assert (=> d!1678753 (= (nullable!4960 (h!66996 (exprs!4675 lt!2141333))) (nullableFct!1371 (h!66996 (exprs!4675 lt!2141333))))))

(declare-fun bs!1209884 () Bool)

(assert (= bs!1209884 d!1678753))

(declare-fun m!6256526 () Bool)

(assert (=> bs!1209884 m!6256526))

(assert (=> b!5203882 d!1678753))

(declare-fun d!1678755 () Bool)

(assert (=> d!1678755 true))

(declare-fun setRes!33037 () Bool)

(assert (=> d!1678755 setRes!33037))

(declare-fun condSetEmpty!33037 () Bool)

(declare-fun res!2211246 () (InoxSet Context!8350))

(assert (=> d!1678755 (= condSetEmpty!33037 (= res!2211246 ((as const (Array Context!8350 Bool)) false)))))

(assert (=> d!1678755 (= (choose!38678 z!1189 lambda!260783) res!2211246)))

(declare-fun setIsEmpty!33037 () Bool)

(assert (=> setIsEmpty!33037 setRes!33037))

(declare-fun setNonEmpty!33037 () Bool)

(declare-fun e!3240890 () Bool)

(declare-fun setElem!33037 () Context!8350)

(declare-fun tp!1459809 () Bool)

(assert (=> setNonEmpty!33037 (= setRes!33037 (and tp!1459809 (inv!80224 setElem!33037) e!3240890))))

(declare-fun setRest!33037 () (InoxSet Context!8350))

(assert (=> setNonEmpty!33037 (= res!2211246 ((_ map or) (store ((as const (Array Context!8350 Bool)) false) setElem!33037 true) setRest!33037))))

(declare-fun b!5205085 () Bool)

(declare-fun tp!1459808 () Bool)

(assert (=> b!5205085 (= e!3240890 tp!1459808)))

(assert (= (and d!1678755 condSetEmpty!33037) setIsEmpty!33037))

(assert (= (and d!1678755 (not condSetEmpty!33037)) setNonEmpty!33037))

(assert (= setNonEmpty!33037 b!5205085))

(declare-fun m!6256528 () Bool)

(assert (=> setNonEmpty!33037 m!6256528))

(assert (=> d!1678319 d!1678755))

(assert (=> b!5204037 d!1678575))

(declare-fun b!5205086 () Bool)

(declare-fun e!3240891 () Bool)

(assert (=> b!5205086 (= e!3240891 tp_is_empty!38835)))

(assert (=> b!5204169 (= tp!1459632 e!3240891)))

(declare-fun b!5205088 () Bool)

(declare-fun tp!1459811 () Bool)

(assert (=> b!5205088 (= e!3240891 tp!1459811)))

(declare-fun b!5205089 () Bool)

(declare-fun tp!1459810 () Bool)

(declare-fun tp!1459812 () Bool)

(assert (=> b!5205089 (= e!3240891 (and tp!1459810 tp!1459812))))

(declare-fun b!5205087 () Bool)

(declare-fun tp!1459814 () Bool)

(declare-fun tp!1459813 () Bool)

(assert (=> b!5205087 (= e!3240891 (and tp!1459814 tp!1459813))))

(assert (= (and b!5204169 ((_ is ElementMatch!14791) (regOne!30094 (regOne!30095 r!7292)))) b!5205086))

(assert (= (and b!5204169 ((_ is Concat!23636) (regOne!30094 (regOne!30095 r!7292)))) b!5205087))

(assert (= (and b!5204169 ((_ is Star!14791) (regOne!30094 (regOne!30095 r!7292)))) b!5205088))

(assert (= (and b!5204169 ((_ is Union!14791) (regOne!30094 (regOne!30095 r!7292)))) b!5205089))

(declare-fun b!5205090 () Bool)

(declare-fun e!3240892 () Bool)

(assert (=> b!5205090 (= e!3240892 tp_is_empty!38835)))

(assert (=> b!5204169 (= tp!1459631 e!3240892)))

(declare-fun b!5205092 () Bool)

(declare-fun tp!1459816 () Bool)

(assert (=> b!5205092 (= e!3240892 tp!1459816)))

(declare-fun b!5205093 () Bool)

(declare-fun tp!1459815 () Bool)

(declare-fun tp!1459817 () Bool)

(assert (=> b!5205093 (= e!3240892 (and tp!1459815 tp!1459817))))

(declare-fun b!5205091 () Bool)

(declare-fun tp!1459819 () Bool)

(declare-fun tp!1459818 () Bool)

(assert (=> b!5205091 (= e!3240892 (and tp!1459819 tp!1459818))))

(assert (= (and b!5204169 ((_ is ElementMatch!14791) (regTwo!30094 (regOne!30095 r!7292)))) b!5205090))

(assert (= (and b!5204169 ((_ is Concat!23636) (regTwo!30094 (regOne!30095 r!7292)))) b!5205091))

(assert (= (and b!5204169 ((_ is Star!14791) (regTwo!30094 (regOne!30095 r!7292)))) b!5205092))

(assert (= (and b!5204169 ((_ is Union!14791) (regTwo!30094 (regOne!30095 r!7292)))) b!5205093))

(declare-fun b!5205094 () Bool)

(declare-fun e!3240893 () Bool)

(assert (=> b!5205094 (= e!3240893 tp_is_empty!38835)))

(assert (=> b!5204148 (= tp!1459602 e!3240893)))

(declare-fun b!5205096 () Bool)

(declare-fun tp!1459821 () Bool)

(assert (=> b!5205096 (= e!3240893 tp!1459821)))

(declare-fun b!5205097 () Bool)

(declare-fun tp!1459820 () Bool)

(declare-fun tp!1459822 () Bool)

(assert (=> b!5205097 (= e!3240893 (and tp!1459820 tp!1459822))))

(declare-fun b!5205095 () Bool)

(declare-fun tp!1459824 () Bool)

(declare-fun tp!1459823 () Bool)

(assert (=> b!5205095 (= e!3240893 (and tp!1459824 tp!1459823))))

(assert (= (and b!5204148 ((_ is ElementMatch!14791) (regOne!30095 (reg!15120 r!7292)))) b!5205094))

(assert (= (and b!5204148 ((_ is Concat!23636) (regOne!30095 (reg!15120 r!7292)))) b!5205095))

(assert (= (and b!5204148 ((_ is Star!14791) (regOne!30095 (reg!15120 r!7292)))) b!5205096))

(assert (= (and b!5204148 ((_ is Union!14791) (regOne!30095 (reg!15120 r!7292)))) b!5205097))

(declare-fun b!5205098 () Bool)

(declare-fun e!3240894 () Bool)

(assert (=> b!5205098 (= e!3240894 tp_is_empty!38835)))

(assert (=> b!5204148 (= tp!1459604 e!3240894)))

(declare-fun b!5205100 () Bool)

(declare-fun tp!1459826 () Bool)

(assert (=> b!5205100 (= e!3240894 tp!1459826)))

(declare-fun b!5205101 () Bool)

(declare-fun tp!1459825 () Bool)

(declare-fun tp!1459827 () Bool)

(assert (=> b!5205101 (= e!3240894 (and tp!1459825 tp!1459827))))

(declare-fun b!5205099 () Bool)

(declare-fun tp!1459829 () Bool)

(declare-fun tp!1459828 () Bool)

(assert (=> b!5205099 (= e!3240894 (and tp!1459829 tp!1459828))))

(assert (= (and b!5204148 ((_ is ElementMatch!14791) (regTwo!30095 (reg!15120 r!7292)))) b!5205098))

(assert (= (and b!5204148 ((_ is Concat!23636) (regTwo!30095 (reg!15120 r!7292)))) b!5205099))

(assert (= (and b!5204148 ((_ is Star!14791) (regTwo!30095 (reg!15120 r!7292)))) b!5205100))

(assert (= (and b!5204148 ((_ is Union!14791) (regTwo!30095 (reg!15120 r!7292)))) b!5205101))

(declare-fun b!5205102 () Bool)

(declare-fun e!3240895 () Bool)

(assert (=> b!5205102 (= e!3240895 tp_is_empty!38835)))

(assert (=> b!5204147 (= tp!1459603 e!3240895)))

(declare-fun b!5205104 () Bool)

(declare-fun tp!1459831 () Bool)

(assert (=> b!5205104 (= e!3240895 tp!1459831)))

(declare-fun b!5205105 () Bool)

(declare-fun tp!1459830 () Bool)

(declare-fun tp!1459832 () Bool)

(assert (=> b!5205105 (= e!3240895 (and tp!1459830 tp!1459832))))

(declare-fun b!5205103 () Bool)

(declare-fun tp!1459834 () Bool)

(declare-fun tp!1459833 () Bool)

(assert (=> b!5205103 (= e!3240895 (and tp!1459834 tp!1459833))))

(assert (= (and b!5204147 ((_ is ElementMatch!14791) (reg!15120 (reg!15120 r!7292)))) b!5205102))

(assert (= (and b!5204147 ((_ is Concat!23636) (reg!15120 (reg!15120 r!7292)))) b!5205103))

(assert (= (and b!5204147 ((_ is Star!14791) (reg!15120 (reg!15120 r!7292)))) b!5205104))

(assert (= (and b!5204147 ((_ is Union!14791) (reg!15120 (reg!15120 r!7292)))) b!5205105))

(declare-fun b!5205106 () Bool)

(declare-fun e!3240896 () Bool)

(assert (=> b!5205106 (= e!3240896 tp_is_empty!38835)))

(assert (=> b!5204156 (= tp!1459612 e!3240896)))

(declare-fun b!5205108 () Bool)

(declare-fun tp!1459836 () Bool)

(assert (=> b!5205108 (= e!3240896 tp!1459836)))

(declare-fun b!5205109 () Bool)

(declare-fun tp!1459835 () Bool)

(declare-fun tp!1459837 () Bool)

(assert (=> b!5205109 (= e!3240896 (and tp!1459835 tp!1459837))))

(declare-fun b!5205107 () Bool)

(declare-fun tp!1459839 () Bool)

(declare-fun tp!1459838 () Bool)

(assert (=> b!5205107 (= e!3240896 (and tp!1459839 tp!1459838))))

(assert (= (and b!5204156 ((_ is ElementMatch!14791) (regOne!30095 (regTwo!30094 r!7292)))) b!5205106))

(assert (= (and b!5204156 ((_ is Concat!23636) (regOne!30095 (regTwo!30094 r!7292)))) b!5205107))

(assert (= (and b!5204156 ((_ is Star!14791) (regOne!30095 (regTwo!30094 r!7292)))) b!5205108))

(assert (= (and b!5204156 ((_ is Union!14791) (regOne!30095 (regTwo!30094 r!7292)))) b!5205109))

(declare-fun b!5205110 () Bool)

(declare-fun e!3240897 () Bool)

(assert (=> b!5205110 (= e!3240897 tp_is_empty!38835)))

(assert (=> b!5204156 (= tp!1459614 e!3240897)))

(declare-fun b!5205112 () Bool)

(declare-fun tp!1459841 () Bool)

(assert (=> b!5205112 (= e!3240897 tp!1459841)))

(declare-fun b!5205113 () Bool)

(declare-fun tp!1459840 () Bool)

(declare-fun tp!1459842 () Bool)

(assert (=> b!5205113 (= e!3240897 (and tp!1459840 tp!1459842))))

(declare-fun b!5205111 () Bool)

(declare-fun tp!1459844 () Bool)

(declare-fun tp!1459843 () Bool)

(assert (=> b!5205111 (= e!3240897 (and tp!1459844 tp!1459843))))

(assert (= (and b!5204156 ((_ is ElementMatch!14791) (regTwo!30095 (regTwo!30094 r!7292)))) b!5205110))

(assert (= (and b!5204156 ((_ is Concat!23636) (regTwo!30095 (regTwo!30094 r!7292)))) b!5205111))

(assert (= (and b!5204156 ((_ is Star!14791) (regTwo!30095 (regTwo!30094 r!7292)))) b!5205112))

(assert (= (and b!5204156 ((_ is Union!14791) (regTwo!30095 (regTwo!30094 r!7292)))) b!5205113))

(declare-fun b!5205114 () Bool)

(declare-fun e!3240898 () Bool)

(assert (=> b!5205114 (= e!3240898 tp_is_empty!38835)))

(assert (=> b!5204146 (= tp!1459606 e!3240898)))

(declare-fun b!5205116 () Bool)

(declare-fun tp!1459846 () Bool)

(assert (=> b!5205116 (= e!3240898 tp!1459846)))

(declare-fun b!5205117 () Bool)

(declare-fun tp!1459845 () Bool)

(declare-fun tp!1459847 () Bool)

(assert (=> b!5205117 (= e!3240898 (and tp!1459845 tp!1459847))))

(declare-fun b!5205115 () Bool)

(declare-fun tp!1459849 () Bool)

(declare-fun tp!1459848 () Bool)

(assert (=> b!5205115 (= e!3240898 (and tp!1459849 tp!1459848))))

(assert (= (and b!5204146 ((_ is ElementMatch!14791) (regOne!30094 (reg!15120 r!7292)))) b!5205114))

(assert (= (and b!5204146 ((_ is Concat!23636) (regOne!30094 (reg!15120 r!7292)))) b!5205115))

(assert (= (and b!5204146 ((_ is Star!14791) (regOne!30094 (reg!15120 r!7292)))) b!5205116))

(assert (= (and b!5204146 ((_ is Union!14791) (regOne!30094 (reg!15120 r!7292)))) b!5205117))

(declare-fun b!5205118 () Bool)

(declare-fun e!3240899 () Bool)

(assert (=> b!5205118 (= e!3240899 tp_is_empty!38835)))

(assert (=> b!5204146 (= tp!1459605 e!3240899)))

(declare-fun b!5205120 () Bool)

(declare-fun tp!1459851 () Bool)

(assert (=> b!5205120 (= e!3240899 tp!1459851)))

(declare-fun b!5205121 () Bool)

(declare-fun tp!1459850 () Bool)

(declare-fun tp!1459852 () Bool)

(assert (=> b!5205121 (= e!3240899 (and tp!1459850 tp!1459852))))

(declare-fun b!5205119 () Bool)

(declare-fun tp!1459854 () Bool)

(declare-fun tp!1459853 () Bool)

(assert (=> b!5205119 (= e!3240899 (and tp!1459854 tp!1459853))))

(assert (= (and b!5204146 ((_ is ElementMatch!14791) (regTwo!30094 (reg!15120 r!7292)))) b!5205118))

(assert (= (and b!5204146 ((_ is Concat!23636) (regTwo!30094 (reg!15120 r!7292)))) b!5205119))

(assert (= (and b!5204146 ((_ is Star!14791) (regTwo!30094 (reg!15120 r!7292)))) b!5205120))

(assert (= (and b!5204146 ((_ is Union!14791) (regTwo!30094 (reg!15120 r!7292)))) b!5205121))

(declare-fun b!5205122 () Bool)

(declare-fun e!3240900 () Bool)

(assert (=> b!5205122 (= e!3240900 tp_is_empty!38835)))

(assert (=> b!5204155 (= tp!1459613 e!3240900)))

(declare-fun b!5205124 () Bool)

(declare-fun tp!1459856 () Bool)

(assert (=> b!5205124 (= e!3240900 tp!1459856)))

(declare-fun b!5205125 () Bool)

(declare-fun tp!1459855 () Bool)

(declare-fun tp!1459857 () Bool)

(assert (=> b!5205125 (= e!3240900 (and tp!1459855 tp!1459857))))

(declare-fun b!5205123 () Bool)

(declare-fun tp!1459859 () Bool)

(declare-fun tp!1459858 () Bool)

(assert (=> b!5205123 (= e!3240900 (and tp!1459859 tp!1459858))))

(assert (= (and b!5204155 ((_ is ElementMatch!14791) (reg!15120 (regTwo!30094 r!7292)))) b!5205122))

(assert (= (and b!5204155 ((_ is Concat!23636) (reg!15120 (regTwo!30094 r!7292)))) b!5205123))

(assert (= (and b!5204155 ((_ is Star!14791) (reg!15120 (regTwo!30094 r!7292)))) b!5205124))

(assert (= (and b!5204155 ((_ is Union!14791) (reg!15120 (regTwo!30094 r!7292)))) b!5205125))

(declare-fun b!5205126 () Bool)

(declare-fun e!3240901 () Bool)

(declare-fun tp!1459860 () Bool)

(declare-fun tp!1459861 () Bool)

(assert (=> b!5205126 (= e!3240901 (and tp!1459860 tp!1459861))))

(assert (=> b!5204162 (= tp!1459624 e!3240901)))

(assert (= (and b!5204162 ((_ is Cons!60548) (exprs!4675 setElem!33030))) b!5205126))

(declare-fun b!5205127 () Bool)

(declare-fun e!3240902 () Bool)

(assert (=> b!5205127 (= e!3240902 tp_is_empty!38835)))

(assert (=> b!5204154 (= tp!1459616 e!3240902)))

(declare-fun b!5205129 () Bool)

(declare-fun tp!1459863 () Bool)

(assert (=> b!5205129 (= e!3240902 tp!1459863)))

(declare-fun b!5205130 () Bool)

(declare-fun tp!1459862 () Bool)

(declare-fun tp!1459864 () Bool)

(assert (=> b!5205130 (= e!3240902 (and tp!1459862 tp!1459864))))

(declare-fun b!5205128 () Bool)

(declare-fun tp!1459866 () Bool)

(declare-fun tp!1459865 () Bool)

(assert (=> b!5205128 (= e!3240902 (and tp!1459866 tp!1459865))))

(assert (= (and b!5204154 ((_ is ElementMatch!14791) (regOne!30094 (regTwo!30094 r!7292)))) b!5205127))

(assert (= (and b!5204154 ((_ is Concat!23636) (regOne!30094 (regTwo!30094 r!7292)))) b!5205128))

(assert (= (and b!5204154 ((_ is Star!14791) (regOne!30094 (regTwo!30094 r!7292)))) b!5205129))

(assert (= (and b!5204154 ((_ is Union!14791) (regOne!30094 (regTwo!30094 r!7292)))) b!5205130))

(declare-fun b!5205131 () Bool)

(declare-fun e!3240903 () Bool)

(assert (=> b!5205131 (= e!3240903 tp_is_empty!38835)))

(assert (=> b!5204154 (= tp!1459615 e!3240903)))

(declare-fun b!5205133 () Bool)

(declare-fun tp!1459868 () Bool)

(assert (=> b!5205133 (= e!3240903 tp!1459868)))

(declare-fun b!5205134 () Bool)

(declare-fun tp!1459867 () Bool)

(declare-fun tp!1459869 () Bool)

(assert (=> b!5205134 (= e!3240903 (and tp!1459867 tp!1459869))))

(declare-fun b!5205132 () Bool)

(declare-fun tp!1459871 () Bool)

(declare-fun tp!1459870 () Bool)

(assert (=> b!5205132 (= e!3240903 (and tp!1459871 tp!1459870))))

(assert (= (and b!5204154 ((_ is ElementMatch!14791) (regTwo!30094 (regTwo!30094 r!7292)))) b!5205131))

(assert (= (and b!5204154 ((_ is Concat!23636) (regTwo!30094 (regTwo!30094 r!7292)))) b!5205132))

(assert (= (and b!5204154 ((_ is Star!14791) (regTwo!30094 (regTwo!30094 r!7292)))) b!5205133))

(assert (= (and b!5204154 ((_ is Union!14791) (regTwo!30094 (regTwo!30094 r!7292)))) b!5205134))

(declare-fun condSetEmpty!33038 () Bool)

(assert (=> setNonEmpty!33030 (= condSetEmpty!33038 (= setRest!33030 ((as const (Array Context!8350 Bool)) false)))))

(declare-fun setRes!33038 () Bool)

(assert (=> setNonEmpty!33030 (= tp!1459623 setRes!33038)))

(declare-fun setIsEmpty!33038 () Bool)

(assert (=> setIsEmpty!33038 setRes!33038))

(declare-fun setNonEmpty!33038 () Bool)

(declare-fun e!3240904 () Bool)

(declare-fun setElem!33038 () Context!8350)

(declare-fun tp!1459872 () Bool)

(assert (=> setNonEmpty!33038 (= setRes!33038 (and tp!1459872 (inv!80224 setElem!33038) e!3240904))))

(declare-fun setRest!33038 () (InoxSet Context!8350))

(assert (=> setNonEmpty!33038 (= setRest!33030 ((_ map or) (store ((as const (Array Context!8350 Bool)) false) setElem!33038 true) setRest!33038))))

(declare-fun b!5205135 () Bool)

(declare-fun tp!1459873 () Bool)

(assert (=> b!5205135 (= e!3240904 tp!1459873)))

(assert (= (and setNonEmpty!33030 condSetEmpty!33038) setIsEmpty!33038))

(assert (= (and setNonEmpty!33030 (not condSetEmpty!33038)) setNonEmpty!33038))

(assert (= setNonEmpty!33038 b!5205135))

(declare-fun m!6256530 () Bool)

(assert (=> setNonEmpty!33038 m!6256530))

(declare-fun b!5205136 () Bool)

(declare-fun e!3240905 () Bool)

(declare-fun tp!1459874 () Bool)

(assert (=> b!5205136 (= e!3240905 (and tp_is_empty!38835 tp!1459874))))

(assert (=> b!5204167 (= tp!1459627 e!3240905)))

(assert (= (and b!5204167 ((_ is Cons!60550) (t!373829 (t!373829 s!2326)))) b!5205136))

(declare-fun b!5205137 () Bool)

(declare-fun e!3240906 () Bool)

(assert (=> b!5205137 (= e!3240906 tp_is_empty!38835)))

(assert (=> b!5204175 (= tp!1459633 e!3240906)))

(declare-fun b!5205139 () Bool)

(declare-fun tp!1459876 () Bool)

(assert (=> b!5205139 (= e!3240906 tp!1459876)))

(declare-fun b!5205140 () Bool)

(declare-fun tp!1459875 () Bool)

(declare-fun tp!1459877 () Bool)

(assert (=> b!5205140 (= e!3240906 (and tp!1459875 tp!1459877))))

(declare-fun b!5205138 () Bool)

(declare-fun tp!1459879 () Bool)

(declare-fun tp!1459878 () Bool)

(assert (=> b!5205138 (= e!3240906 (and tp!1459879 tp!1459878))))

(assert (= (and b!5204175 ((_ is ElementMatch!14791) (regOne!30095 (regTwo!30095 r!7292)))) b!5205137))

(assert (= (and b!5204175 ((_ is Concat!23636) (regOne!30095 (regTwo!30095 r!7292)))) b!5205138))

(assert (= (and b!5204175 ((_ is Star!14791) (regOne!30095 (regTwo!30095 r!7292)))) b!5205139))

(assert (= (and b!5204175 ((_ is Union!14791) (regOne!30095 (regTwo!30095 r!7292)))) b!5205140))

(declare-fun b!5205141 () Bool)

(declare-fun e!3240907 () Bool)

(assert (=> b!5205141 (= e!3240907 tp_is_empty!38835)))

(assert (=> b!5204175 (= tp!1459635 e!3240907)))

(declare-fun b!5205143 () Bool)

(declare-fun tp!1459881 () Bool)

(assert (=> b!5205143 (= e!3240907 tp!1459881)))

(declare-fun b!5205144 () Bool)

(declare-fun tp!1459880 () Bool)

(declare-fun tp!1459882 () Bool)

(assert (=> b!5205144 (= e!3240907 (and tp!1459880 tp!1459882))))

(declare-fun b!5205142 () Bool)

(declare-fun tp!1459884 () Bool)

(declare-fun tp!1459883 () Bool)

(assert (=> b!5205142 (= e!3240907 (and tp!1459884 tp!1459883))))

(assert (= (and b!5204175 ((_ is ElementMatch!14791) (regTwo!30095 (regTwo!30095 r!7292)))) b!5205141))

(assert (= (and b!5204175 ((_ is Concat!23636) (regTwo!30095 (regTwo!30095 r!7292)))) b!5205142))

(assert (= (and b!5204175 ((_ is Star!14791) (regTwo!30095 (regTwo!30095 r!7292)))) b!5205143))

(assert (= (and b!5204175 ((_ is Union!14791) (regTwo!30095 (regTwo!30095 r!7292)))) b!5205144))

(declare-fun b!5205145 () Bool)

(declare-fun e!3240908 () Bool)

(assert (=> b!5205145 (= e!3240908 tp_is_empty!38835)))

(assert (=> b!5204174 (= tp!1459634 e!3240908)))

(declare-fun b!5205147 () Bool)

(declare-fun tp!1459886 () Bool)

(assert (=> b!5205147 (= e!3240908 tp!1459886)))

(declare-fun b!5205148 () Bool)

(declare-fun tp!1459885 () Bool)

(declare-fun tp!1459887 () Bool)

(assert (=> b!5205148 (= e!3240908 (and tp!1459885 tp!1459887))))

(declare-fun b!5205146 () Bool)

(declare-fun tp!1459889 () Bool)

(declare-fun tp!1459888 () Bool)

(assert (=> b!5205146 (= e!3240908 (and tp!1459889 tp!1459888))))

(assert (= (and b!5204174 ((_ is ElementMatch!14791) (reg!15120 (regTwo!30095 r!7292)))) b!5205145))

(assert (= (and b!5204174 ((_ is Concat!23636) (reg!15120 (regTwo!30095 r!7292)))) b!5205146))

(assert (= (and b!5204174 ((_ is Star!14791) (reg!15120 (regTwo!30095 r!7292)))) b!5205147))

(assert (= (and b!5204174 ((_ is Union!14791) (reg!15120 (regTwo!30095 r!7292)))) b!5205148))

(declare-fun b!5205149 () Bool)

(declare-fun e!3240909 () Bool)

(assert (=> b!5205149 (= e!3240909 tp_is_empty!38835)))

(assert (=> b!5204173 (= tp!1459637 e!3240909)))

(declare-fun b!5205151 () Bool)

(declare-fun tp!1459891 () Bool)

(assert (=> b!5205151 (= e!3240909 tp!1459891)))

(declare-fun b!5205152 () Bool)

(declare-fun tp!1459890 () Bool)

(declare-fun tp!1459892 () Bool)

(assert (=> b!5205152 (= e!3240909 (and tp!1459890 tp!1459892))))

(declare-fun b!5205150 () Bool)

(declare-fun tp!1459894 () Bool)

(declare-fun tp!1459893 () Bool)

(assert (=> b!5205150 (= e!3240909 (and tp!1459894 tp!1459893))))

(assert (= (and b!5204173 ((_ is ElementMatch!14791) (regOne!30094 (regTwo!30095 r!7292)))) b!5205149))

(assert (= (and b!5204173 ((_ is Concat!23636) (regOne!30094 (regTwo!30095 r!7292)))) b!5205150))

(assert (= (and b!5204173 ((_ is Star!14791) (regOne!30094 (regTwo!30095 r!7292)))) b!5205151))

(assert (= (and b!5204173 ((_ is Union!14791) (regOne!30094 (regTwo!30095 r!7292)))) b!5205152))

(declare-fun b!5205153 () Bool)

(declare-fun e!3240910 () Bool)

(assert (=> b!5205153 (= e!3240910 tp_is_empty!38835)))

(assert (=> b!5204173 (= tp!1459636 e!3240910)))

(declare-fun b!5205155 () Bool)

(declare-fun tp!1459896 () Bool)

(assert (=> b!5205155 (= e!3240910 tp!1459896)))

(declare-fun b!5205156 () Bool)

(declare-fun tp!1459895 () Bool)

(declare-fun tp!1459897 () Bool)

(assert (=> b!5205156 (= e!3240910 (and tp!1459895 tp!1459897))))

(declare-fun b!5205154 () Bool)

(declare-fun tp!1459899 () Bool)

(declare-fun tp!1459898 () Bool)

(assert (=> b!5205154 (= e!3240910 (and tp!1459899 tp!1459898))))

(assert (= (and b!5204173 ((_ is ElementMatch!14791) (regTwo!30094 (regTwo!30095 r!7292)))) b!5205153))

(assert (= (and b!5204173 ((_ is Concat!23636) (regTwo!30094 (regTwo!30095 r!7292)))) b!5205154))

(assert (= (and b!5204173 ((_ is Star!14791) (regTwo!30094 (regTwo!30095 r!7292)))) b!5205155))

(assert (= (and b!5204173 ((_ is Union!14791) (regTwo!30094 (regTwo!30095 r!7292)))) b!5205156))

(declare-fun b!5205157 () Bool)

(declare-fun e!3240911 () Bool)

(assert (=> b!5205157 (= e!3240911 tp_is_empty!38835)))

(assert (=> b!5204152 (= tp!1459607 e!3240911)))

(declare-fun b!5205159 () Bool)

(declare-fun tp!1459901 () Bool)

(assert (=> b!5205159 (= e!3240911 tp!1459901)))

(declare-fun b!5205160 () Bool)

(declare-fun tp!1459900 () Bool)

(declare-fun tp!1459902 () Bool)

(assert (=> b!5205160 (= e!3240911 (and tp!1459900 tp!1459902))))

(declare-fun b!5205158 () Bool)

(declare-fun tp!1459904 () Bool)

(declare-fun tp!1459903 () Bool)

(assert (=> b!5205158 (= e!3240911 (and tp!1459904 tp!1459903))))

(assert (= (and b!5204152 ((_ is ElementMatch!14791) (regOne!30095 (regOne!30094 r!7292)))) b!5205157))

(assert (= (and b!5204152 ((_ is Concat!23636) (regOne!30095 (regOne!30094 r!7292)))) b!5205158))

(assert (= (and b!5204152 ((_ is Star!14791) (regOne!30095 (regOne!30094 r!7292)))) b!5205159))

(assert (= (and b!5204152 ((_ is Union!14791) (regOne!30095 (regOne!30094 r!7292)))) b!5205160))

(declare-fun b!5205161 () Bool)

(declare-fun e!3240912 () Bool)

(assert (=> b!5205161 (= e!3240912 tp_is_empty!38835)))

(assert (=> b!5204152 (= tp!1459609 e!3240912)))

(declare-fun b!5205163 () Bool)

(declare-fun tp!1459906 () Bool)

(assert (=> b!5205163 (= e!3240912 tp!1459906)))

(declare-fun b!5205164 () Bool)

(declare-fun tp!1459905 () Bool)

(declare-fun tp!1459907 () Bool)

(assert (=> b!5205164 (= e!3240912 (and tp!1459905 tp!1459907))))

(declare-fun b!5205162 () Bool)

(declare-fun tp!1459909 () Bool)

(declare-fun tp!1459908 () Bool)

(assert (=> b!5205162 (= e!3240912 (and tp!1459909 tp!1459908))))

(assert (= (and b!5204152 ((_ is ElementMatch!14791) (regTwo!30095 (regOne!30094 r!7292)))) b!5205161))

(assert (= (and b!5204152 ((_ is Concat!23636) (regTwo!30095 (regOne!30094 r!7292)))) b!5205162))

(assert (= (and b!5204152 ((_ is Star!14791) (regTwo!30095 (regOne!30094 r!7292)))) b!5205163))

(assert (= (and b!5204152 ((_ is Union!14791) (regTwo!30095 (regOne!30094 r!7292)))) b!5205164))

(declare-fun b!5205165 () Bool)

(declare-fun e!3240913 () Bool)

(assert (=> b!5205165 (= e!3240913 tp_is_empty!38835)))

(assert (=> b!5204151 (= tp!1459608 e!3240913)))

(declare-fun b!5205167 () Bool)

(declare-fun tp!1459911 () Bool)

(assert (=> b!5205167 (= e!3240913 tp!1459911)))

(declare-fun b!5205168 () Bool)

(declare-fun tp!1459910 () Bool)

(declare-fun tp!1459912 () Bool)

(assert (=> b!5205168 (= e!3240913 (and tp!1459910 tp!1459912))))

(declare-fun b!5205166 () Bool)

(declare-fun tp!1459914 () Bool)

(declare-fun tp!1459913 () Bool)

(assert (=> b!5205166 (= e!3240913 (and tp!1459914 tp!1459913))))

(assert (= (and b!5204151 ((_ is ElementMatch!14791) (reg!15120 (regOne!30094 r!7292)))) b!5205165))

(assert (= (and b!5204151 ((_ is Concat!23636) (reg!15120 (regOne!30094 r!7292)))) b!5205166))

(assert (= (and b!5204151 ((_ is Star!14791) (reg!15120 (regOne!30094 r!7292)))) b!5205167))

(assert (= (and b!5204151 ((_ is Union!14791) (reg!15120 (regOne!30094 r!7292)))) b!5205168))

(declare-fun b!5205169 () Bool)

(declare-fun e!3240914 () Bool)

(assert (=> b!5205169 (= e!3240914 tp_is_empty!38835)))

(assert (=> b!5204150 (= tp!1459611 e!3240914)))

(declare-fun b!5205171 () Bool)

(declare-fun tp!1459916 () Bool)

(assert (=> b!5205171 (= e!3240914 tp!1459916)))

(declare-fun b!5205172 () Bool)

(declare-fun tp!1459915 () Bool)

(declare-fun tp!1459917 () Bool)

(assert (=> b!5205172 (= e!3240914 (and tp!1459915 tp!1459917))))

(declare-fun b!5205170 () Bool)

(declare-fun tp!1459919 () Bool)

(declare-fun tp!1459918 () Bool)

(assert (=> b!5205170 (= e!3240914 (and tp!1459919 tp!1459918))))

(assert (= (and b!5204150 ((_ is ElementMatch!14791) (regOne!30094 (regOne!30094 r!7292)))) b!5205169))

(assert (= (and b!5204150 ((_ is Concat!23636) (regOne!30094 (regOne!30094 r!7292)))) b!5205170))

(assert (= (and b!5204150 ((_ is Star!14791) (regOne!30094 (regOne!30094 r!7292)))) b!5205171))

(assert (= (and b!5204150 ((_ is Union!14791) (regOne!30094 (regOne!30094 r!7292)))) b!5205172))

(declare-fun b!5205173 () Bool)

(declare-fun e!3240915 () Bool)

(assert (=> b!5205173 (= e!3240915 tp_is_empty!38835)))

(assert (=> b!5204150 (= tp!1459610 e!3240915)))

(declare-fun b!5205175 () Bool)

(declare-fun tp!1459921 () Bool)

(assert (=> b!5205175 (= e!3240915 tp!1459921)))

(declare-fun b!5205176 () Bool)

(declare-fun tp!1459920 () Bool)

(declare-fun tp!1459922 () Bool)

(assert (=> b!5205176 (= e!3240915 (and tp!1459920 tp!1459922))))

(declare-fun b!5205174 () Bool)

(declare-fun tp!1459924 () Bool)

(declare-fun tp!1459923 () Bool)

(assert (=> b!5205174 (= e!3240915 (and tp!1459924 tp!1459923))))

(assert (= (and b!5204150 ((_ is ElementMatch!14791) (regTwo!30094 (regOne!30094 r!7292)))) b!5205173))

(assert (= (and b!5204150 ((_ is Concat!23636) (regTwo!30094 (regOne!30094 r!7292)))) b!5205174))

(assert (= (and b!5204150 ((_ is Star!14791) (regTwo!30094 (regOne!30094 r!7292)))) b!5205175))

(assert (= (and b!5204150 ((_ is Union!14791) (regTwo!30094 (regOne!30094 r!7292)))) b!5205176))

(declare-fun b!5205177 () Bool)

(declare-fun e!3240916 () Bool)

(declare-fun tp!1459925 () Bool)

(declare-fun tp!1459926 () Bool)

(assert (=> b!5205177 (= e!3240916 (and tp!1459925 tp!1459926))))

(assert (=> b!5204134 (= tp!1459590 e!3240916)))

(assert (= (and b!5204134 ((_ is Cons!60548) (exprs!4675 (h!66997 (t!373828 zl!343))))) b!5205177))

(declare-fun b!5205179 () Bool)

(declare-fun e!3240918 () Bool)

(declare-fun tp!1459927 () Bool)

(assert (=> b!5205179 (= e!3240918 tp!1459927)))

(declare-fun e!3240917 () Bool)

(declare-fun b!5205178 () Bool)

(declare-fun tp!1459928 () Bool)

(assert (=> b!5205178 (= e!3240917 (and (inv!80224 (h!66997 (t!373828 (t!373828 zl!343)))) e!3240918 tp!1459928))))

(assert (=> b!5204133 (= tp!1459591 e!3240917)))

(assert (= b!5205178 b!5205179))

(assert (= (and b!5204133 ((_ is Cons!60549) (t!373828 (t!373828 zl!343)))) b!5205178))

(declare-fun m!6256532 () Bool)

(assert (=> b!5205178 m!6256532))

(declare-fun b!5205180 () Bool)

(declare-fun e!3240919 () Bool)

(assert (=> b!5205180 (= e!3240919 tp_is_empty!38835)))

(assert (=> b!5204157 (= tp!1459617 e!3240919)))

(declare-fun b!5205182 () Bool)

(declare-fun tp!1459930 () Bool)

(assert (=> b!5205182 (= e!3240919 tp!1459930)))

(declare-fun b!5205183 () Bool)

(declare-fun tp!1459929 () Bool)

(declare-fun tp!1459931 () Bool)

(assert (=> b!5205183 (= e!3240919 (and tp!1459929 tp!1459931))))

(declare-fun b!5205181 () Bool)

(declare-fun tp!1459933 () Bool)

(declare-fun tp!1459932 () Bool)

(assert (=> b!5205181 (= e!3240919 (and tp!1459933 tp!1459932))))

(assert (= (and b!5204157 ((_ is ElementMatch!14791) (h!66996 (exprs!4675 setElem!33024)))) b!5205180))

(assert (= (and b!5204157 ((_ is Concat!23636) (h!66996 (exprs!4675 setElem!33024)))) b!5205181))

(assert (= (and b!5204157 ((_ is Star!14791) (h!66996 (exprs!4675 setElem!33024)))) b!5205182))

(assert (= (and b!5204157 ((_ is Union!14791) (h!66996 (exprs!4675 setElem!33024)))) b!5205183))

(declare-fun b!5205184 () Bool)

(declare-fun e!3240920 () Bool)

(declare-fun tp!1459934 () Bool)

(declare-fun tp!1459935 () Bool)

(assert (=> b!5205184 (= e!3240920 (and tp!1459934 tp!1459935))))

(assert (=> b!5204157 (= tp!1459618 e!3240920)))

(assert (= (and b!5204157 ((_ is Cons!60548) (t!373827 (exprs!4675 setElem!33024)))) b!5205184))

(declare-fun b!5205185 () Bool)

(declare-fun e!3240921 () Bool)

(assert (=> b!5205185 (= e!3240921 tp_is_empty!38835)))

(assert (=> b!5204171 (= tp!1459628 e!3240921)))

(declare-fun b!5205187 () Bool)

(declare-fun tp!1459937 () Bool)

(assert (=> b!5205187 (= e!3240921 tp!1459937)))

(declare-fun b!5205188 () Bool)

(declare-fun tp!1459936 () Bool)

(declare-fun tp!1459938 () Bool)

(assert (=> b!5205188 (= e!3240921 (and tp!1459936 tp!1459938))))

(declare-fun b!5205186 () Bool)

(declare-fun tp!1459940 () Bool)

(declare-fun tp!1459939 () Bool)

(assert (=> b!5205186 (= e!3240921 (and tp!1459940 tp!1459939))))

(assert (= (and b!5204171 ((_ is ElementMatch!14791) (regOne!30095 (regOne!30095 r!7292)))) b!5205185))

(assert (= (and b!5204171 ((_ is Concat!23636) (regOne!30095 (regOne!30095 r!7292)))) b!5205186))

(assert (= (and b!5204171 ((_ is Star!14791) (regOne!30095 (regOne!30095 r!7292)))) b!5205187))

(assert (= (and b!5204171 ((_ is Union!14791) (regOne!30095 (regOne!30095 r!7292)))) b!5205188))

(declare-fun b!5205189 () Bool)

(declare-fun e!3240922 () Bool)

(assert (=> b!5205189 (= e!3240922 tp_is_empty!38835)))

(assert (=> b!5204171 (= tp!1459630 e!3240922)))

(declare-fun b!5205191 () Bool)

(declare-fun tp!1459942 () Bool)

(assert (=> b!5205191 (= e!3240922 tp!1459942)))

(declare-fun b!5205192 () Bool)

(declare-fun tp!1459941 () Bool)

(declare-fun tp!1459943 () Bool)

(assert (=> b!5205192 (= e!3240922 (and tp!1459941 tp!1459943))))

(declare-fun b!5205190 () Bool)

(declare-fun tp!1459945 () Bool)

(declare-fun tp!1459944 () Bool)

(assert (=> b!5205190 (= e!3240922 (and tp!1459945 tp!1459944))))

(assert (= (and b!5204171 ((_ is ElementMatch!14791) (regTwo!30095 (regOne!30095 r!7292)))) b!5205189))

(assert (= (and b!5204171 ((_ is Concat!23636) (regTwo!30095 (regOne!30095 r!7292)))) b!5205190))

(assert (= (and b!5204171 ((_ is Star!14791) (regTwo!30095 (regOne!30095 r!7292)))) b!5205191))

(assert (= (and b!5204171 ((_ is Union!14791) (regTwo!30095 (regOne!30095 r!7292)))) b!5205192))

(declare-fun b!5205193 () Bool)

(declare-fun e!3240923 () Bool)

(assert (=> b!5205193 (= e!3240923 tp_is_empty!38835)))

(assert (=> b!5204126 (= tp!1459584 e!3240923)))

(declare-fun b!5205195 () Bool)

(declare-fun tp!1459947 () Bool)

(assert (=> b!5205195 (= e!3240923 tp!1459947)))

(declare-fun b!5205196 () Bool)

(declare-fun tp!1459946 () Bool)

(declare-fun tp!1459948 () Bool)

(assert (=> b!5205196 (= e!3240923 (and tp!1459946 tp!1459948))))

(declare-fun b!5205194 () Bool)

(declare-fun tp!1459950 () Bool)

(declare-fun tp!1459949 () Bool)

(assert (=> b!5205194 (= e!3240923 (and tp!1459950 tp!1459949))))

(assert (= (and b!5204126 ((_ is ElementMatch!14791) (h!66996 (exprs!4675 (h!66997 zl!343))))) b!5205193))

(assert (= (and b!5204126 ((_ is Concat!23636) (h!66996 (exprs!4675 (h!66997 zl!343))))) b!5205194))

(assert (= (and b!5204126 ((_ is Star!14791) (h!66996 (exprs!4675 (h!66997 zl!343))))) b!5205195))

(assert (= (and b!5204126 ((_ is Union!14791) (h!66996 (exprs!4675 (h!66997 zl!343))))) b!5205196))

(declare-fun b!5205197 () Bool)

(declare-fun e!3240924 () Bool)

(declare-fun tp!1459951 () Bool)

(declare-fun tp!1459952 () Bool)

(assert (=> b!5205197 (= e!3240924 (and tp!1459951 tp!1459952))))

(assert (=> b!5204126 (= tp!1459585 e!3240924)))

(assert (= (and b!5204126 ((_ is Cons!60548) (t!373827 (exprs!4675 (h!66997 zl!343))))) b!5205197))

(declare-fun b!5205198 () Bool)

(declare-fun e!3240925 () Bool)

(assert (=> b!5205198 (= e!3240925 tp_is_empty!38835)))

(assert (=> b!5204170 (= tp!1459629 e!3240925)))

(declare-fun b!5205200 () Bool)

(declare-fun tp!1459954 () Bool)

(assert (=> b!5205200 (= e!3240925 tp!1459954)))

(declare-fun b!5205201 () Bool)

(declare-fun tp!1459953 () Bool)

(declare-fun tp!1459955 () Bool)

(assert (=> b!5205201 (= e!3240925 (and tp!1459953 tp!1459955))))

(declare-fun b!5205199 () Bool)

(declare-fun tp!1459957 () Bool)

(declare-fun tp!1459956 () Bool)

(assert (=> b!5205199 (= e!3240925 (and tp!1459957 tp!1459956))))

(assert (= (and b!5204170 ((_ is ElementMatch!14791) (reg!15120 (regOne!30095 r!7292)))) b!5205198))

(assert (= (and b!5204170 ((_ is Concat!23636) (reg!15120 (regOne!30095 r!7292)))) b!5205199))

(assert (= (and b!5204170 ((_ is Star!14791) (reg!15120 (regOne!30095 r!7292)))) b!5205200))

(assert (= (and b!5204170 ((_ is Union!14791) (reg!15120 (regOne!30095 r!7292)))) b!5205201))

(declare-fun b_lambda!201401 () Bool)

(assert (= b_lambda!201391 (or d!1678313 b_lambda!201401)))

(declare-fun bs!1209885 () Bool)

(declare-fun d!1678757 () Bool)

(assert (= bs!1209885 (and d!1678757 d!1678313)))

(assert (=> bs!1209885 (= (dynLambda!23917 lambda!260819 (h!66996 (exprs!4675 (h!66997 zl!343)))) (validRegex!6527 (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(declare-fun m!6256534 () Bool)

(assert (=> bs!1209885 m!6256534))

(assert (=> b!5204788 d!1678757))

(declare-fun b_lambda!201403 () Bool)

(assert (= b_lambda!201397 (or d!1678291 b_lambda!201403)))

(declare-fun bs!1209886 () Bool)

(declare-fun d!1678759 () Bool)

(assert (= bs!1209886 (and d!1678759 d!1678291)))

(assert (=> bs!1209886 (= (dynLambda!23917 lambda!260811 (h!66996 (unfocusZipperList!233 zl!343))) (validRegex!6527 (h!66996 (unfocusZipperList!233 zl!343))))))

(declare-fun m!6256536 () Bool)

(assert (=> bs!1209886 m!6256536))

(assert (=> b!5204943 d!1678759))

(declare-fun b_lambda!201405 () Bool)

(assert (= b_lambda!201399 (or d!1678309 b_lambda!201405)))

(declare-fun bs!1209887 () Bool)

(declare-fun d!1678761 () Bool)

(assert (= bs!1209887 (and d!1678761 d!1678309)))

(assert (=> bs!1209887 (= (dynLambda!23917 lambda!260816 (h!66996 lt!2141388)) (validRegex!6527 (h!66996 lt!2141388)))))

(declare-fun m!6256538 () Bool)

(assert (=> bs!1209887 m!6256538))

(assert (=> b!5204945 d!1678761))

(declare-fun b_lambda!201407 () Bool)

(assert (= b_lambda!201389 (or d!1678353 b_lambda!201407)))

(declare-fun bs!1209888 () Bool)

(declare-fun d!1678763 () Bool)

(assert (= bs!1209888 (and d!1678763 d!1678353)))

(assert (=> bs!1209888 (= (dynLambda!23917 lambda!260830 (h!66996 (exprs!4675 (h!66997 zl!343)))) (validRegex!6527 (h!66996 (exprs!4675 (h!66997 zl!343)))))))

(assert (=> bs!1209888 m!6256534))

(assert (=> b!5204765 d!1678763))

(declare-fun b_lambda!201409 () Bool)

(assert (= b_lambda!201395 (or b!5203448 b_lambda!201409)))

(assert (=> d!1678693 d!1678369))

(declare-fun b_lambda!201411 () Bool)

(assert (= b_lambda!201393 (or d!1678335 b_lambda!201411)))

(declare-fun bs!1209889 () Bool)

(declare-fun d!1678765 () Bool)

(assert (= bs!1209889 (and d!1678765 d!1678335)))

(assert (=> bs!1209889 (= (dynLambda!23917 lambda!260821 (h!66996 (exprs!4675 setElem!33024))) (validRegex!6527 (h!66996 (exprs!4675 setElem!33024))))))

(declare-fun m!6256540 () Bool)

(assert (=> bs!1209889 m!6256540))

(assert (=> b!5204932 d!1678765))

(check-sat (not b!5205088) (not d!1678597) (not b!5204961) (not b!5205192) (not b!5205135) (not b!5204790) (not bm!366032) (not bm!366027) (not b!5205146) (not b!5205130) (not b!5204923) (not b!5204930) (not b!5204824) tp_is_empty!38835 (not b!5204881) (not d!1678715) (not bm!366043) (not b!5205200) (not b!5204799) (not d!1678753) (not d!1678721) (not b!5204777) (not d!1678621) (not b!5204876) (not bm!366020) (not bm!365999) (not b!5205164) (not b!5205129) (not bm!366065) (not d!1678677) (not b!5205096) (not b!5205019) (not bs!1209886) (not b!5205187) (not b!5205104) (not bm!366033) (not bm!366066) (not b!5205014) (not b!5205194) (not b!5204683) (not b!5205143) (not b!5204752) (not b!5205196) (not b!5205087) (not b!5205067) (not b!5204679) (not b!5205138) (not bm!366031) (not b!5204892) (not d!1678669) (not d!1678673) (not b!5204873) (not b!5204872) (not b!5205128) (not b!5205101) (not b!5205112) (not bm!366071) (not b_lambda!201401) (not b!5205163) (not b!5204747) (not b!5204962) (not b!5204551) (not b!5204787) (not b!5204934) (not bm!366077) (not b!5205133) (not b!5205155) (not b!5205177) (not b!5204586) (not b!5205034) (not b!5204832) (not b!5205172) (not d!1678667) (not bm!366006) (not b!5205142) (not b!5205120) (not bm!366040) (not d!1678745) (not bm!366003) (not bm!366011) (not b!5204931) (not bm!366037) (not bm!366014) (not b!5204964) (not b!5204885) (not b!5204933) (not b!5205132) (not b!5204829) (not b!5205170) (not bs!1209885) (not b!5205144) (not b!5205073) (not d!1678733) (not b!5205095) (not b!5205078) (not b!5204977) (not b!5204821) (not b!5204827) (not b!5205070) (not bm!366013) (not d!1678685) (not d!1678719) (not d!1678623) (not b!5205152) (not b!5205068) (not b!5204917) (not d!1678711) (not d!1678545) (not b!5205188) (not d!1678571) (not b!5205117) (not b!5205166) (not b!5205105) (not b!5204886) (not b!5205103) (not b!5204897) (not b_lambda!201411) (not b!5205134) (not b!5205168) (not b!5204888) (not d!1678679) (not b!5205099) (not b!5204789) (not b!5204800) (not b!5205119) (not b!5205159) (not bm!366012) (not b!5204688) (not b!5205136) (not b!5204834) (not bm!366004) (not bm!366016) (not b!5205125) (not b!5205089) (not b!5204944) (not b!5204822) (not bm!366007) (not b!5205184) (not b_lambda!201363) (not b!5204585) (not b!5204926) (not b!5205147) (not b!5204972) (not b!5205000) (not d!1678645) (not b!5205126) (not b!5204680) (not d!1678609) (not d!1678747) (not bm!366078) (not b!5204746) (not b!5205093) (not d!1678619) (not d!1678599) (not b!5204793) (not b!5204751) (not b!5204823) (not b!5204798) (not b!5205100) (not b!5205181) (not b!5205179) (not b!5204813) (not d!1678743) (not b!5204738) (not b!5205151) (not bm!366038) (not b!5205160) (not b!5204792) (not b!5204742) (not b_lambda!201405) (not d!1678713) (not bm!366062) (not bm!366052) (not b!5204896) (not b!5205140) (not b_lambda!201407) (not b!5205111) (not b!5205171) (not bm!366017) (not d!1678671) (not b!5205158) (not bm!366028) (not b!5204692) (not b!5205174) (not d!1678703) (not bm!366057) (not b!5205123) (not d!1678693) (not d!1678705) (not bm!366025) (not bs!1209887) (not b!5204965) (not b!5205156) (not b!5204884) (not b!5205201) (not d!1678689) (not setNonEmpty!33038) (not b!5205058) (not bs!1209888) (not d!1678701) (not bm!365997) (not b!5204814) (not b!5205077) (not b!5204889) (not b!5204739) (not b!5205109) (not d!1678647) (not bm!366009) (not b!5205108) (not b!5205150) (not b!5204883) (not b!5204769) (not b!5205182) (not b_lambda!201403) (not b!5204779) (not b!5205116) (not b!5204928) (not b!5205176) (not b!5205190) (not b!5204901) (not d!1678731) (not b!5204924) (not b!5204960) (not b!5205124) (not setNonEmpty!33037) (not b!5205191) (not b!5205092) (not b!5205148) (not d!1678665) (not b_lambda!201409) (not bm!365998) (not b!5204841) (not b!5205115) (not bm!366018) (not b!5205069) (not b!5205154) (not b!5204902) (not bm!366008) (not b!5205183) (not b!5204796) (not d!1678735) (not b!5205199) (not bm!366058) (not d!1678741) (not b!5205097) (not bm!366029) (not b!5204660) (not bm!366067) (not b!5205195) (not bm!366026) (not b!5204968) (not b!5204778) (not bm!366063) (not d!1678589) (not b!5204687) (not b!5204797) (not b!5204766) (not b!5204849) (not b!5205085) (not b!5204887) (not bm!366080) (not b!5205197) (not b!5204925) (not bm!366072) (not b!5204946) (not b!5204951) (not b!5204837) (not b!5205091) (not bm!366073) (not b!5205186) (not b!5205107) (not b!5205082) (not d!1678549) (not bm!366019) (not b!5205162) (not b!5204877) (not b!5205139) (not b!5204973) (not d!1678577) (not d!1678653) (not d!1678749) (not d!1678627) (not bm!366056) (not b!5205178) (not b!5204622) (not b!5205045) (not b!5205113) (not bs!1209889) (not b!5205175) (not b!5205167) (not bm!366041) (not bm!366055) (not b!5205121))
(check-sat)
