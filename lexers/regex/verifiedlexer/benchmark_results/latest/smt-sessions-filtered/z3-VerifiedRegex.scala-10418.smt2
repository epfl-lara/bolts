; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538752 () Bool)

(assert start!538752)

(declare-datatypes ((C!28520 0))(
  ( (C!28521 (val!23912 Int)) )
))
(declare-datatypes ((List!59130 0))(
  ( (Nil!59006) (Cons!59006 (h!65454 C!28520) (t!372131 List!59130)) )
))
(declare-fun input!5745 () List!59130)

(declare-fun b!5109264 () Bool)

(declare-fun testedP!265 () List!59130)

(declare-fun lt!2103978 () List!59130)

(declare-fun e!3186644 () Bool)

(declare-fun ++!12956 (List!59130 List!59130) List!59130)

(assert (=> b!5109264 (= e!3186644 (= (++!12956 testedP!265 lt!2103978) input!5745))))

(declare-fun e!3186640 () Bool)

(declare-datatypes ((Regex!14127 0))(
  ( (ElementMatch!14127 (c!877717 C!28520)) (Concat!22972 (regOne!28766 Regex!14127) (regTwo!28766 Regex!14127)) (EmptyExpr!14127) (Star!14127 (reg!14456 Regex!14127)) (EmptyLang!14127) (Union!14127 (regOne!28767 Regex!14127) (regTwo!28767 Regex!14127)) )
))
(declare-datatypes ((List!59131 0))(
  ( (Nil!59007) (Cons!59007 (h!65455 Regex!14127) (t!372132 List!59131)) )
))
(declare-datatypes ((Context!7022 0))(
  ( (Context!7023 (exprs!4011 List!59131)) )
))
(declare-fun setElem!29614 () Context!7022)

(declare-fun setRes!29614 () Bool)

(declare-fun tp!1425408 () Bool)

(declare-fun setNonEmpty!29613 () Bool)

(declare-fun inv!78498 (Context!7022) Bool)

(assert (=> setNonEmpty!29613 (= setRes!29614 (and tp!1425408 (inv!78498 setElem!29614) e!3186640))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7022))

(declare-fun setRest!29613 () (InoxSet Context!7022))

(assert (=> setNonEmpty!29613 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7022 Bool)) false) setElem!29614 true) setRest!29613))))

(declare-fun b!5109265 () Bool)

(declare-fun res!2174726 () Bool)

(declare-fun e!3186645 () Bool)

(assert (=> b!5109265 (=> res!2174726 e!3186645)))

(declare-fun lt!2103979 () Int)

(declare-fun lt!2103974 () Int)

(assert (=> b!5109265 (= res!2174726 (not (= lt!2103979 lt!2103974)))))

(declare-fun b!5109266 () Bool)

(declare-fun tp!1425404 () Bool)

(assert (=> b!5109266 (= e!3186640 tp!1425404)))

(declare-fun b!5109267 () Bool)

(declare-fun e!3186643 () Bool)

(declare-fun tp_is_empty!37527 () Bool)

(declare-fun tp!1425403 () Bool)

(assert (=> b!5109267 (= e!3186643 (and tp_is_empty!37527 tp!1425403))))

(declare-fun b!5109268 () Bool)

(declare-fun e!3186639 () Bool)

(declare-fun tp!1425406 () Bool)

(assert (=> b!5109268 (= e!3186639 (and tp_is_empty!37527 tp!1425406))))

(declare-fun res!2174728 () Bool)

(declare-fun e!3186637 () Bool)

(assert (=> start!538752 (=> (not res!2174728) (not e!3186637))))

(declare-fun isPrefix!5532 (List!59130 List!59130) Bool)

(assert (=> start!538752 (= res!2174728 (isPrefix!5532 testedP!265 input!5745))))

(assert (=> start!538752 e!3186637))

(assert (=> start!538752 e!3186643))

(declare-fun condSetEmpty!29613 () Bool)

(declare-fun z!4463 () (InoxSet Context!7022))

(assert (=> start!538752 (= condSetEmpty!29613 (= z!4463 ((as const (Array Context!7022 Bool)) false)))))

(declare-fun setRes!29613 () Bool)

(assert (=> start!538752 setRes!29613))

(assert (=> start!538752 e!3186639))

(declare-fun condSetEmpty!29614 () Bool)

(assert (=> start!538752 (= condSetEmpty!29614 (= baseZ!46 ((as const (Array Context!7022 Bool)) false)))))

(assert (=> start!538752 setRes!29614))

(declare-fun e!3186638 () Bool)

(assert (=> start!538752 e!3186638))

(declare-fun b!5109269 () Bool)

(declare-fun res!2174731 () Bool)

(declare-fun e!3186641 () Bool)

(assert (=> b!5109269 (=> (not res!2174731) (not e!3186641))))

(declare-fun knownP!20 () List!59130)

(declare-fun matchZipper!795 ((InoxSet Context!7022) List!59130) Bool)

(assert (=> b!5109269 (= res!2174731 (matchZipper!795 baseZ!46 knownP!20))))

(declare-fun b!5109270 () Bool)

(assert (=> b!5109270 (= e!3186637 e!3186641)))

(declare-fun res!2174730 () Bool)

(assert (=> b!5109270 (=> (not res!2174730) (not e!3186641))))

(assert (=> b!5109270 (= res!2174730 (>= lt!2103974 lt!2103979))))

(declare-fun size!39433 (List!59130) Int)

(assert (=> b!5109270 (= lt!2103979 (size!39433 testedP!265))))

(assert (=> b!5109270 (= lt!2103974 (size!39433 knownP!20))))

(declare-fun b!5109271 () Bool)

(declare-fun res!2174724 () Bool)

(assert (=> b!5109271 (=> res!2174724 e!3186645)))

(declare-fun lostCauseZipper!1013 ((InoxSet Context!7022)) Bool)

(assert (=> b!5109271 (= res!2174724 (lostCauseZipper!1013 z!4463))))

(declare-fun b!5109272 () Bool)

(assert (=> b!5109272 (= e!3186645 e!3186644)))

(declare-fun res!2174729 () Bool)

(assert (=> b!5109272 (=> res!2174729 e!3186644)))

(declare-fun lt!2103975 () Int)

(assert (=> b!5109272 (= res!2174729 (< lt!2103975 lt!2103974))))

(assert (=> b!5109272 (>= lt!2103975 lt!2103979)))

(declare-datatypes ((tuple2!63612 0))(
  ( (tuple2!63613 (_1!35109 List!59130) (_2!35109 List!59130)) )
))
(declare-fun findLongestMatchInnerZipper!187 ((InoxSet Context!7022) List!59130 Int List!59130 List!59130 Int) tuple2!63612)

(assert (=> b!5109272 (= lt!2103975 (size!39433 (_1!35109 (findLongestMatchInnerZipper!187 z!4463 testedP!265 lt!2103979 lt!2103978 input!5745 (size!39433 input!5745)))))))

(declare-fun getSuffix!3206 (List!59130 List!59130) List!59130)

(assert (=> b!5109272 (= lt!2103978 (getSuffix!3206 input!5745 testedP!265))))

(declare-datatypes ((Unit!150097 0))(
  ( (Unit!150098) )
))
(declare-fun lt!2103976 () Unit!150097)

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!12 ((InoxSet Context!7022) (InoxSet Context!7022) List!59130 List!59130) Unit!150097)

(assert (=> b!5109272 (= lt!2103976 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!12 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> b!5109272 (= testedP!265 knownP!20)))

(declare-fun lt!2103980 () Unit!150097)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1340 (List!59130 List!59130 List!59130) Unit!150097)

(assert (=> b!5109272 (= lt!2103980 (lemmaIsPrefixSameLengthThenSameList!1340 testedP!265 knownP!20 input!5745))))

(declare-fun b!5109273 () Bool)

(declare-fun e!3186642 () Bool)

(declare-fun tp!1425407 () Bool)

(assert (=> b!5109273 (= e!3186642 tp!1425407)))

(declare-fun tp!1425405 () Bool)

(declare-fun setElem!29613 () Context!7022)

(declare-fun setNonEmpty!29614 () Bool)

(assert (=> setNonEmpty!29614 (= setRes!29613 (and tp!1425405 (inv!78498 setElem!29613) e!3186642))))

(declare-fun setRest!29614 () (InoxSet Context!7022))

(assert (=> setNonEmpty!29614 (= z!4463 ((_ map or) (store ((as const (Array Context!7022 Bool)) false) setElem!29613 true) setRest!29614))))

(declare-fun b!5109274 () Bool)

(declare-fun tp!1425409 () Bool)

(assert (=> b!5109274 (= e!3186638 (and tp_is_empty!37527 tp!1425409))))

(declare-fun b!5109275 () Bool)

(assert (=> b!5109275 (= e!3186641 (not e!3186645))))

(declare-fun res!2174732 () Bool)

(assert (=> b!5109275 (=> res!2174732 e!3186645)))

(assert (=> b!5109275 (= res!2174732 (not (matchZipper!795 z!4463 (getSuffix!3206 knownP!20 testedP!265))))))

(assert (=> b!5109275 (isPrefix!5532 testedP!265 knownP!20)))

(declare-fun lt!2103977 () Unit!150097)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!669 (List!59130 List!59130 List!59130) Unit!150097)

(assert (=> b!5109275 (= lt!2103977 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!669 knownP!20 testedP!265 input!5745))))

(declare-fun setIsEmpty!29613 () Bool)

(assert (=> setIsEmpty!29613 setRes!29613))

(declare-fun setIsEmpty!29614 () Bool)

(assert (=> setIsEmpty!29614 setRes!29614))

(declare-fun b!5109276 () Bool)

(declare-fun res!2174727 () Bool)

(assert (=> b!5109276 (=> (not res!2174727) (not e!3186637))))

(assert (=> b!5109276 (= res!2174727 (isPrefix!5532 knownP!20 input!5745))))

(declare-fun b!5109277 () Bool)

(declare-fun res!2174725 () Bool)

(assert (=> b!5109277 (=> res!2174725 e!3186645)))

(declare-fun derivationZipper!26 ((InoxSet Context!7022) List!59130) (InoxSet Context!7022))

(assert (=> b!5109277 (= res!2174725 (not (= (derivationZipper!26 baseZ!46 testedP!265) z!4463)))))

(assert (= (and start!538752 res!2174728) b!5109276))

(assert (= (and b!5109276 res!2174727) b!5109270))

(assert (= (and b!5109270 res!2174730) b!5109269))

(assert (= (and b!5109269 res!2174731) b!5109275))

(assert (= (and b!5109275 (not res!2174732)) b!5109277))

(assert (= (and b!5109277 (not res!2174725)) b!5109271))

(assert (= (and b!5109271 (not res!2174724)) b!5109265))

(assert (= (and b!5109265 (not res!2174726)) b!5109272))

(assert (= (and b!5109272 (not res!2174729)) b!5109264))

(get-info :version)

(assert (= (and start!538752 ((_ is Cons!59006) input!5745)) b!5109267))

(assert (= (and start!538752 condSetEmpty!29613) setIsEmpty!29613))

(assert (= (and start!538752 (not condSetEmpty!29613)) setNonEmpty!29614))

(assert (= setNonEmpty!29614 b!5109273))

(assert (= (and start!538752 ((_ is Cons!59006) testedP!265)) b!5109268))

(assert (= (and start!538752 condSetEmpty!29614) setIsEmpty!29614))

(assert (= (and start!538752 (not condSetEmpty!29614)) setNonEmpty!29613))

(assert (= setNonEmpty!29613 b!5109266))

(assert (= (and start!538752 ((_ is Cons!59006) knownP!20)) b!5109274))

(declare-fun m!6166450 () Bool)

(assert (=> setNonEmpty!29614 m!6166450))

(declare-fun m!6166452 () Bool)

(assert (=> b!5109275 m!6166452))

(assert (=> b!5109275 m!6166452))

(declare-fun m!6166454 () Bool)

(assert (=> b!5109275 m!6166454))

(declare-fun m!6166456 () Bool)

(assert (=> b!5109275 m!6166456))

(declare-fun m!6166458 () Bool)

(assert (=> b!5109275 m!6166458))

(declare-fun m!6166460 () Bool)

(assert (=> setNonEmpty!29613 m!6166460))

(declare-fun m!6166462 () Bool)

(assert (=> b!5109272 m!6166462))

(declare-fun m!6166464 () Bool)

(assert (=> b!5109272 m!6166464))

(declare-fun m!6166466 () Bool)

(assert (=> b!5109272 m!6166466))

(assert (=> b!5109272 m!6166464))

(declare-fun m!6166468 () Bool)

(assert (=> b!5109272 m!6166468))

(declare-fun m!6166470 () Bool)

(assert (=> b!5109272 m!6166470))

(declare-fun m!6166472 () Bool)

(assert (=> b!5109272 m!6166472))

(declare-fun m!6166474 () Bool)

(assert (=> start!538752 m!6166474))

(declare-fun m!6166476 () Bool)

(assert (=> b!5109277 m!6166476))

(declare-fun m!6166478 () Bool)

(assert (=> b!5109269 m!6166478))

(declare-fun m!6166480 () Bool)

(assert (=> b!5109270 m!6166480))

(declare-fun m!6166482 () Bool)

(assert (=> b!5109270 m!6166482))

(declare-fun m!6166484 () Bool)

(assert (=> b!5109264 m!6166484))

(declare-fun m!6166486 () Bool)

(assert (=> b!5109271 m!6166486))

(declare-fun m!6166488 () Bool)

(assert (=> b!5109276 m!6166488))

(check-sat (not b!5109272) (not b!5109269) (not start!538752) (not b!5109270) (not setNonEmpty!29613) tp_is_empty!37527 (not b!5109275) (not b!5109264) (not b!5109277) (not b!5109276) (not b!5109274) (not b!5109266) (not b!5109268) (not b!5109267) (not setNonEmpty!29614) (not b!5109273) (not b!5109271))
(check-sat)
(get-model)

(declare-fun d!1651189 () Bool)

(declare-fun lt!2103983 () Int)

(assert (=> d!1651189 (>= lt!2103983 0)))

(declare-fun e!3186648 () Int)

(assert (=> d!1651189 (= lt!2103983 e!3186648)))

(declare-fun c!877720 () Bool)

(assert (=> d!1651189 (= c!877720 ((_ is Nil!59006) testedP!265))))

(assert (=> d!1651189 (= (size!39433 testedP!265) lt!2103983)))

(declare-fun b!5109282 () Bool)

(assert (=> b!5109282 (= e!3186648 0)))

(declare-fun b!5109283 () Bool)

(assert (=> b!5109283 (= e!3186648 (+ 1 (size!39433 (t!372131 testedP!265))))))

(assert (= (and d!1651189 c!877720) b!5109282))

(assert (= (and d!1651189 (not c!877720)) b!5109283))

(declare-fun m!6166490 () Bool)

(assert (=> b!5109283 m!6166490))

(assert (=> b!5109270 d!1651189))

(declare-fun d!1651191 () Bool)

(declare-fun lt!2103984 () Int)

(assert (=> d!1651191 (>= lt!2103984 0)))

(declare-fun e!3186649 () Int)

(assert (=> d!1651191 (= lt!2103984 e!3186649)))

(declare-fun c!877721 () Bool)

(assert (=> d!1651191 (= c!877721 ((_ is Nil!59006) knownP!20))))

(assert (=> d!1651191 (= (size!39433 knownP!20) lt!2103984)))

(declare-fun b!5109284 () Bool)

(assert (=> b!5109284 (= e!3186649 0)))

(declare-fun b!5109285 () Bool)

(assert (=> b!5109285 (= e!3186649 (+ 1 (size!39433 (t!372131 knownP!20))))))

(assert (= (and d!1651191 c!877721) b!5109284))

(assert (= (and d!1651191 (not c!877721)) b!5109285))

(declare-fun m!6166492 () Bool)

(assert (=> b!5109285 m!6166492))

(assert (=> b!5109270 d!1651191))

(declare-fun b!5109295 () Bool)

(declare-fun res!2174741 () Bool)

(declare-fun e!3186658 () Bool)

(assert (=> b!5109295 (=> (not res!2174741) (not e!3186658))))

(declare-fun head!10861 (List!59130) C!28520)

(assert (=> b!5109295 (= res!2174741 (= (head!10861 testedP!265) (head!10861 input!5745)))))

(declare-fun b!5109294 () Bool)

(declare-fun e!3186656 () Bool)

(assert (=> b!5109294 (= e!3186656 e!3186658)))

(declare-fun res!2174743 () Bool)

(assert (=> b!5109294 (=> (not res!2174743) (not e!3186658))))

(assert (=> b!5109294 (= res!2174743 (not ((_ is Nil!59006) input!5745)))))

(declare-fun b!5109297 () Bool)

(declare-fun e!3186657 () Bool)

(assert (=> b!5109297 (= e!3186657 (>= (size!39433 input!5745) (size!39433 testedP!265)))))

(declare-fun b!5109296 () Bool)

(declare-fun tail!10016 (List!59130) List!59130)

(assert (=> b!5109296 (= e!3186658 (isPrefix!5532 (tail!10016 testedP!265) (tail!10016 input!5745)))))

(declare-fun d!1651193 () Bool)

(assert (=> d!1651193 e!3186657))

(declare-fun res!2174742 () Bool)

(assert (=> d!1651193 (=> res!2174742 e!3186657)))

(declare-fun lt!2103987 () Bool)

(assert (=> d!1651193 (= res!2174742 (not lt!2103987))))

(assert (=> d!1651193 (= lt!2103987 e!3186656)))

(declare-fun res!2174744 () Bool)

(assert (=> d!1651193 (=> res!2174744 e!3186656)))

(assert (=> d!1651193 (= res!2174744 ((_ is Nil!59006) testedP!265))))

(assert (=> d!1651193 (= (isPrefix!5532 testedP!265 input!5745) lt!2103987)))

(assert (= (and d!1651193 (not res!2174744)) b!5109294))

(assert (= (and b!5109294 res!2174743) b!5109295))

(assert (= (and b!5109295 res!2174741) b!5109296))

(assert (= (and d!1651193 (not res!2174742)) b!5109297))

(declare-fun m!6166494 () Bool)

(assert (=> b!5109295 m!6166494))

(declare-fun m!6166496 () Bool)

(assert (=> b!5109295 m!6166496))

(assert (=> b!5109297 m!6166464))

(assert (=> b!5109297 m!6166480))

(declare-fun m!6166498 () Bool)

(assert (=> b!5109296 m!6166498))

(declare-fun m!6166500 () Bool)

(assert (=> b!5109296 m!6166500))

(assert (=> b!5109296 m!6166498))

(assert (=> b!5109296 m!6166500))

(declare-fun m!6166502 () Bool)

(assert (=> b!5109296 m!6166502))

(assert (=> start!538752 d!1651193))

(declare-fun d!1651195 () Bool)

(declare-fun c!877724 () Bool)

(declare-fun isEmpty!31848 (List!59130) Bool)

(assert (=> d!1651195 (= c!877724 (isEmpty!31848 knownP!20))))

(declare-fun e!3186661 () Bool)

(assert (=> d!1651195 (= (matchZipper!795 baseZ!46 knownP!20) e!3186661)))

(declare-fun b!5109302 () Bool)

(declare-fun nullableZipper!984 ((InoxSet Context!7022)) Bool)

(assert (=> b!5109302 (= e!3186661 (nullableZipper!984 baseZ!46))))

(declare-fun b!5109303 () Bool)

(declare-fun derivationStepZipper!772 ((InoxSet Context!7022) C!28520) (InoxSet Context!7022))

(assert (=> b!5109303 (= e!3186661 (matchZipper!795 (derivationStepZipper!772 baseZ!46 (head!10861 knownP!20)) (tail!10016 knownP!20)))))

(assert (= (and d!1651195 c!877724) b!5109302))

(assert (= (and d!1651195 (not c!877724)) b!5109303))

(declare-fun m!6166504 () Bool)

(assert (=> d!1651195 m!6166504))

(declare-fun m!6166506 () Bool)

(assert (=> b!5109302 m!6166506))

(declare-fun m!6166508 () Bool)

(assert (=> b!5109303 m!6166508))

(assert (=> b!5109303 m!6166508))

(declare-fun m!6166510 () Bool)

(assert (=> b!5109303 m!6166510))

(declare-fun m!6166512 () Bool)

(assert (=> b!5109303 m!6166512))

(assert (=> b!5109303 m!6166510))

(assert (=> b!5109303 m!6166512))

(declare-fun m!6166514 () Bool)

(assert (=> b!5109303 m!6166514))

(assert (=> b!5109269 d!1651195))

(declare-fun d!1651197 () Bool)

(declare-fun c!877727 () Bool)

(assert (=> d!1651197 (= c!877727 ((_ is Cons!59006) testedP!265))))

(declare-fun e!3186664 () (InoxSet Context!7022))

(assert (=> d!1651197 (= (derivationZipper!26 baseZ!46 testedP!265) e!3186664)))

(declare-fun b!5109308 () Bool)

(assert (=> b!5109308 (= e!3186664 (derivationZipper!26 (derivationStepZipper!772 baseZ!46 (h!65454 testedP!265)) (t!372131 testedP!265)))))

(declare-fun b!5109309 () Bool)

(assert (=> b!5109309 (= e!3186664 baseZ!46)))

(assert (= (and d!1651197 c!877727) b!5109308))

(assert (= (and d!1651197 (not c!877727)) b!5109309))

(declare-fun m!6166516 () Bool)

(assert (=> b!5109308 m!6166516))

(assert (=> b!5109308 m!6166516))

(declare-fun m!6166518 () Bool)

(assert (=> b!5109308 m!6166518))

(assert (=> b!5109277 d!1651197))

(declare-fun d!1651199 () Bool)

(declare-fun lambda!250134 () Int)

(declare-fun forall!13519 (List!59131 Int) Bool)

(assert (=> d!1651199 (= (inv!78498 setElem!29614) (forall!13519 (exprs!4011 setElem!29614) lambda!250134))))

(declare-fun bs!1191756 () Bool)

(assert (= bs!1191756 d!1651199))

(declare-fun m!6166576 () Bool)

(assert (=> bs!1191756 m!6166576))

(assert (=> setNonEmpty!29613 d!1651199))

(declare-fun b!5109351 () Bool)

(declare-fun res!2174763 () Bool)

(declare-fun e!3186690 () Bool)

(assert (=> b!5109351 (=> (not res!2174763) (not e!3186690))))

(assert (=> b!5109351 (= res!2174763 (= (head!10861 knownP!20) (head!10861 input!5745)))))

(declare-fun b!5109350 () Bool)

(declare-fun e!3186688 () Bool)

(assert (=> b!5109350 (= e!3186688 e!3186690)))

(declare-fun res!2174765 () Bool)

(assert (=> b!5109350 (=> (not res!2174765) (not e!3186690))))

(assert (=> b!5109350 (= res!2174765 (not ((_ is Nil!59006) input!5745)))))

(declare-fun b!5109353 () Bool)

(declare-fun e!3186689 () Bool)

(assert (=> b!5109353 (= e!3186689 (>= (size!39433 input!5745) (size!39433 knownP!20)))))

(declare-fun b!5109352 () Bool)

(assert (=> b!5109352 (= e!3186690 (isPrefix!5532 (tail!10016 knownP!20) (tail!10016 input!5745)))))

(declare-fun d!1651217 () Bool)

(assert (=> d!1651217 e!3186689))

(declare-fun res!2174764 () Bool)

(assert (=> d!1651217 (=> res!2174764 e!3186689)))

(declare-fun lt!2104001 () Bool)

(assert (=> d!1651217 (= res!2174764 (not lt!2104001))))

(assert (=> d!1651217 (= lt!2104001 e!3186688)))

(declare-fun res!2174766 () Bool)

(assert (=> d!1651217 (=> res!2174766 e!3186688)))

(assert (=> d!1651217 (= res!2174766 ((_ is Nil!59006) knownP!20))))

(assert (=> d!1651217 (= (isPrefix!5532 knownP!20 input!5745) lt!2104001)))

(assert (= (and d!1651217 (not res!2174766)) b!5109350))

(assert (= (and b!5109350 res!2174765) b!5109351))

(assert (= (and b!5109351 res!2174763) b!5109352))

(assert (= (and d!1651217 (not res!2174764)) b!5109353))

(assert (=> b!5109351 m!6166508))

(assert (=> b!5109351 m!6166496))

(assert (=> b!5109353 m!6166464))

(assert (=> b!5109353 m!6166482))

(assert (=> b!5109352 m!6166512))

(assert (=> b!5109352 m!6166500))

(assert (=> b!5109352 m!6166512))

(assert (=> b!5109352 m!6166500))

(declare-fun m!6166578 () Bool)

(assert (=> b!5109352 m!6166578))

(assert (=> b!5109276 d!1651217))

(declare-fun lt!2104007 () List!59130)

(declare-fun e!3186695 () Bool)

(declare-fun b!5109365 () Bool)

(assert (=> b!5109365 (= e!3186695 (or (not (= lt!2103978 Nil!59006)) (= lt!2104007 testedP!265)))))

(declare-fun b!5109362 () Bool)

(declare-fun e!3186696 () List!59130)

(assert (=> b!5109362 (= e!3186696 lt!2103978)))

(declare-fun b!5109363 () Bool)

(assert (=> b!5109363 (= e!3186696 (Cons!59006 (h!65454 testedP!265) (++!12956 (t!372131 testedP!265) lt!2103978)))))

(declare-fun b!5109364 () Bool)

(declare-fun res!2174771 () Bool)

(assert (=> b!5109364 (=> (not res!2174771) (not e!3186695))))

(assert (=> b!5109364 (= res!2174771 (= (size!39433 lt!2104007) (+ (size!39433 testedP!265) (size!39433 lt!2103978))))))

(declare-fun d!1651219 () Bool)

(assert (=> d!1651219 e!3186695))

(declare-fun res!2174772 () Bool)

(assert (=> d!1651219 (=> (not res!2174772) (not e!3186695))))

(declare-fun content!10483 (List!59130) (InoxSet C!28520))

(assert (=> d!1651219 (= res!2174772 (= (content!10483 lt!2104007) ((_ map or) (content!10483 testedP!265) (content!10483 lt!2103978))))))

(assert (=> d!1651219 (= lt!2104007 e!3186696)))

(declare-fun c!877741 () Bool)

(assert (=> d!1651219 (= c!877741 ((_ is Nil!59006) testedP!265))))

(assert (=> d!1651219 (= (++!12956 testedP!265 lt!2103978) lt!2104007)))

(assert (= (and d!1651219 c!877741) b!5109362))

(assert (= (and d!1651219 (not c!877741)) b!5109363))

(assert (= (and d!1651219 res!2174772) b!5109364))

(assert (= (and b!5109364 res!2174771) b!5109365))

(declare-fun m!6166586 () Bool)

(assert (=> b!5109363 m!6166586))

(declare-fun m!6166588 () Bool)

(assert (=> b!5109364 m!6166588))

(assert (=> b!5109364 m!6166480))

(declare-fun m!6166590 () Bool)

(assert (=> b!5109364 m!6166590))

(declare-fun m!6166592 () Bool)

(assert (=> d!1651219 m!6166592))

(declare-fun m!6166594 () Bool)

(assert (=> d!1651219 m!6166594))

(declare-fun m!6166596 () Bool)

(assert (=> d!1651219 m!6166596))

(assert (=> b!5109264 d!1651219))

(declare-fun bs!1191758 () Bool)

(declare-fun d!1651223 () Bool)

(assert (= bs!1191758 (and d!1651223 d!1651199)))

(declare-fun lambda!250135 () Int)

(assert (=> bs!1191758 (= lambda!250135 lambda!250134)))

(assert (=> d!1651223 (= (inv!78498 setElem!29613) (forall!13519 (exprs!4011 setElem!29613) lambda!250135))))

(declare-fun bs!1191759 () Bool)

(assert (= bs!1191759 d!1651223))

(declare-fun m!6166598 () Bool)

(assert (=> bs!1191759 m!6166598))

(assert (=> setNonEmpty!29614 d!1651223))

(declare-fun d!1651225 () Bool)

(declare-fun lt!2104010 () List!59130)

(assert (=> d!1651225 (= (++!12956 testedP!265 lt!2104010) input!5745)))

(declare-fun e!3186699 () List!59130)

(assert (=> d!1651225 (= lt!2104010 e!3186699)))

(declare-fun c!877744 () Bool)

(assert (=> d!1651225 (= c!877744 ((_ is Cons!59006) testedP!265))))

(assert (=> d!1651225 (>= (size!39433 input!5745) (size!39433 testedP!265))))

(assert (=> d!1651225 (= (getSuffix!3206 input!5745 testedP!265) lt!2104010)))

(declare-fun b!5109370 () Bool)

(assert (=> b!5109370 (= e!3186699 (getSuffix!3206 (tail!10016 input!5745) (t!372131 testedP!265)))))

(declare-fun b!5109371 () Bool)

(assert (=> b!5109371 (= e!3186699 input!5745)))

(assert (= (and d!1651225 c!877744) b!5109370))

(assert (= (and d!1651225 (not c!877744)) b!5109371))

(declare-fun m!6166600 () Bool)

(assert (=> d!1651225 m!6166600))

(assert (=> d!1651225 m!6166464))

(assert (=> d!1651225 m!6166480))

(assert (=> b!5109370 m!6166500))

(assert (=> b!5109370 m!6166500))

(declare-fun m!6166602 () Bool)

(assert (=> b!5109370 m!6166602))

(assert (=> b!5109272 d!1651225))

(declare-fun d!1651227 () Bool)

(assert (=> d!1651227 (>= (size!39433 (_1!35109 (findLongestMatchInnerZipper!187 z!4463 testedP!265 (size!39433 testedP!265) (getSuffix!3206 input!5745 testedP!265) input!5745 (size!39433 input!5745)))) (size!39433 testedP!265))))

(declare-fun lt!2104013 () Unit!150097)

(declare-fun choose!37439 ((InoxSet Context!7022) (InoxSet Context!7022) List!59130 List!59130) Unit!150097)

(assert (=> d!1651227 (= lt!2104013 (choose!37439 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> d!1651227 (isPrefix!5532 testedP!265 input!5745)))

(assert (=> d!1651227 (= (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!12 baseZ!46 z!4463 input!5745 testedP!265) lt!2104013)))

(declare-fun bs!1191760 () Bool)

(assert (= bs!1191760 d!1651227))

(assert (=> bs!1191760 m!6166464))

(declare-fun m!6166604 () Bool)

(assert (=> bs!1191760 m!6166604))

(assert (=> bs!1191760 m!6166480))

(assert (=> bs!1191760 m!6166462))

(assert (=> bs!1191760 m!6166464))

(declare-fun m!6166606 () Bool)

(assert (=> bs!1191760 m!6166606))

(assert (=> bs!1191760 m!6166462))

(declare-fun m!6166608 () Bool)

(assert (=> bs!1191760 m!6166608))

(assert (=> bs!1191760 m!6166480))

(assert (=> bs!1191760 m!6166474))

(assert (=> b!5109272 d!1651227))

(declare-fun d!1651229 () Bool)

(assert (=> d!1651229 (= testedP!265 knownP!20)))

(declare-fun lt!2104016 () Unit!150097)

(declare-fun choose!37440 (List!59130 List!59130 List!59130) Unit!150097)

(assert (=> d!1651229 (= lt!2104016 (choose!37440 testedP!265 knownP!20 input!5745))))

(assert (=> d!1651229 (isPrefix!5532 testedP!265 input!5745)))

(assert (=> d!1651229 (= (lemmaIsPrefixSameLengthThenSameList!1340 testedP!265 knownP!20 input!5745) lt!2104016)))

(declare-fun bs!1191761 () Bool)

(assert (= bs!1191761 d!1651229))

(declare-fun m!6166610 () Bool)

(assert (=> bs!1191761 m!6166610))

(assert (=> bs!1191761 m!6166474))

(assert (=> b!5109272 d!1651229))

(declare-fun d!1651231 () Bool)

(declare-fun lt!2104017 () Int)

(assert (=> d!1651231 (>= lt!2104017 0)))

(declare-fun e!3186700 () Int)

(assert (=> d!1651231 (= lt!2104017 e!3186700)))

(declare-fun c!877745 () Bool)

(assert (=> d!1651231 (= c!877745 ((_ is Nil!59006) input!5745))))

(assert (=> d!1651231 (= (size!39433 input!5745) lt!2104017)))

(declare-fun b!5109372 () Bool)

(assert (=> b!5109372 (= e!3186700 0)))

(declare-fun b!5109373 () Bool)

(assert (=> b!5109373 (= e!3186700 (+ 1 (size!39433 (t!372131 input!5745))))))

(assert (= (and d!1651231 c!877745) b!5109372))

(assert (= (and d!1651231 (not c!877745)) b!5109373))

(declare-fun m!6166612 () Bool)

(assert (=> b!5109373 m!6166612))

(assert (=> b!5109272 d!1651231))

(declare-fun bm!356329 () Bool)

(declare-fun call!356340 () Unit!150097)

(assert (=> bm!356329 (= call!356340 (lemmaIsPrefixSameLengthThenSameList!1340 input!5745 testedP!265 input!5745))))

(declare-fun b!5109474 () Bool)

(declare-fun e!3186762 () Bool)

(declare-fun lt!2104193 () tuple2!63612)

(assert (=> b!5109474 (= e!3186762 (>= (size!39433 (_1!35109 lt!2104193)) (size!39433 testedP!265)))))

(declare-fun b!5109475 () Bool)

(declare-fun e!3186764 () tuple2!63612)

(declare-fun lt!2104186 () tuple2!63612)

(assert (=> b!5109475 (= e!3186764 lt!2104186)))

(declare-fun b!5109476 () Bool)

(declare-fun e!3186766 () tuple2!63612)

(assert (=> b!5109476 (= e!3186766 (tuple2!63613 Nil!59006 input!5745))))

(declare-fun b!5109477 () Bool)

(declare-fun e!3186761 () Unit!150097)

(declare-fun Unit!150102 () Unit!150097)

(assert (=> b!5109477 (= e!3186761 Unit!150102)))

(declare-fun bm!356330 () Bool)

(declare-fun call!356335 () List!59130)

(assert (=> bm!356330 (= call!356335 (tail!10016 lt!2103978))))

(declare-fun b!5109478 () Bool)

(declare-fun c!877792 () Bool)

(declare-fun call!356339 () Bool)

(assert (=> b!5109478 (= c!877792 call!356339)))

(declare-fun lt!2104179 () Unit!150097)

(declare-fun lt!2104173 () Unit!150097)

(assert (=> b!5109478 (= lt!2104179 lt!2104173)))

(assert (=> b!5109478 (= input!5745 testedP!265)))

(assert (=> b!5109478 (= lt!2104173 call!356340)))

(declare-fun lt!2104187 () Unit!150097)

(declare-fun lt!2104180 () Unit!150097)

(assert (=> b!5109478 (= lt!2104187 lt!2104180)))

(declare-fun call!356336 () Bool)

(assert (=> b!5109478 call!356336))

(declare-fun call!356334 () Unit!150097)

(assert (=> b!5109478 (= lt!2104180 call!356334)))

(declare-fun e!3186765 () tuple2!63612)

(assert (=> b!5109478 (= e!3186765 e!3186766)))

(declare-fun bm!356331 () Bool)

(declare-fun lemmaIsPrefixRefl!3704 (List!59130 List!59130) Unit!150097)

(assert (=> bm!356331 (= call!356334 (lemmaIsPrefixRefl!3704 input!5745 input!5745))))

(declare-fun b!5109480 () Bool)

(declare-fun Unit!150103 () Unit!150097)

(assert (=> b!5109480 (= e!3186761 Unit!150103)))

(declare-fun lt!2104190 () Unit!150097)

(assert (=> b!5109480 (= lt!2104190 call!356334)))

(assert (=> b!5109480 call!356336))

(declare-fun lt!2104170 () Unit!150097)

(assert (=> b!5109480 (= lt!2104170 lt!2104190)))

(declare-fun lt!2104191 () Unit!150097)

(assert (=> b!5109480 (= lt!2104191 call!356340)))

(assert (=> b!5109480 (= input!5745 testedP!265)))

(declare-fun lt!2104176 () Unit!150097)

(assert (=> b!5109480 (= lt!2104176 lt!2104191)))

(assert (=> b!5109480 false))

(declare-fun b!5109481 () Bool)

(declare-fun c!877794 () Bool)

(assert (=> b!5109481 (= c!877794 call!356339)))

(declare-fun lt!2104178 () Unit!150097)

(declare-fun lt!2104171 () Unit!150097)

(assert (=> b!5109481 (= lt!2104178 lt!2104171)))

(declare-fun lt!2104189 () List!59130)

(declare-fun lt!2104183 () C!28520)

(assert (=> b!5109481 (= (++!12956 (++!12956 testedP!265 (Cons!59006 lt!2104183 Nil!59006)) lt!2104189) input!5745)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1543 (List!59130 C!28520 List!59130 List!59130) Unit!150097)

(assert (=> b!5109481 (= lt!2104171 (lemmaMoveElementToOtherListKeepsConcatEq!1543 testedP!265 lt!2104183 lt!2104189 input!5745))))

(assert (=> b!5109481 (= lt!2104189 (tail!10016 lt!2103978))))

(assert (=> b!5109481 (= lt!2104183 (head!10861 lt!2103978))))

(declare-fun lt!2104182 () Unit!150097)

(declare-fun lt!2104188 () Unit!150097)

(assert (=> b!5109481 (= lt!2104182 lt!2104188)))

(assert (=> b!5109481 (isPrefix!5532 (++!12956 testedP!265 (Cons!59006 (head!10861 (getSuffix!3206 input!5745 testedP!265)) Nil!59006)) input!5745)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!932 (List!59130 List!59130) Unit!150097)

(assert (=> b!5109481 (= lt!2104188 (lemmaAddHeadSuffixToPrefixStillPrefix!932 testedP!265 input!5745))))

(declare-fun lt!2104175 () List!59130)

(assert (=> b!5109481 (= lt!2104175 (++!12956 testedP!265 (Cons!59006 (head!10861 lt!2103978) Nil!59006)))))

(declare-fun lt!2104181 () Unit!150097)

(assert (=> b!5109481 (= lt!2104181 e!3186761)))

(declare-fun c!877793 () Bool)

(assert (=> b!5109481 (= c!877793 (= (size!39433 testedP!265) (size!39433 input!5745)))))

(declare-fun lt!2104169 () Unit!150097)

(declare-fun lt!2104185 () Unit!150097)

(assert (=> b!5109481 (= lt!2104169 lt!2104185)))

(assert (=> b!5109481 (<= (size!39433 testedP!265) (size!39433 input!5745))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!858 (List!59130 List!59130) Unit!150097)

(assert (=> b!5109481 (= lt!2104185 (lemmaIsPrefixThenSmallerEqSize!858 testedP!265 input!5745))))

(declare-fun e!3186763 () tuple2!63612)

(assert (=> b!5109481 (= e!3186765 e!3186763)))

(declare-fun bm!356332 () Bool)

(declare-fun call!356338 () (InoxSet Context!7022))

(declare-fun call!356341 () C!28520)

(assert (=> bm!356332 (= call!356338 (derivationStepZipper!772 z!4463 call!356341))))

(declare-fun b!5109482 () Bool)

(assert (=> b!5109482 (= e!3186766 (tuple2!63613 testedP!265 Nil!59006))))

(declare-fun bm!356333 () Bool)

(assert (=> bm!356333 (= call!356341 (head!10861 lt!2103978))))

(declare-fun bm!356334 () Bool)

(assert (=> bm!356334 (= call!356339 (nullableZipper!984 z!4463))))

(declare-fun bm!356335 () Bool)

(assert (=> bm!356335 (= call!356336 (isPrefix!5532 input!5745 input!5745))))

(declare-fun b!5109483 () Bool)

(assert (=> b!5109483 (= e!3186764 (tuple2!63613 testedP!265 lt!2103978))))

(declare-fun b!5109484 () Bool)

(declare-fun e!3186760 () tuple2!63612)

(assert (=> b!5109484 (= e!3186760 e!3186765)))

(declare-fun c!877795 () Bool)

(assert (=> b!5109484 (= c!877795 (= lt!2103979 (size!39433 input!5745)))))

(declare-fun d!1651233 () Bool)

(declare-fun e!3186767 () Bool)

(assert (=> d!1651233 e!3186767))

(declare-fun res!2174792 () Bool)

(assert (=> d!1651233 (=> (not res!2174792) (not e!3186767))))

(assert (=> d!1651233 (= res!2174792 (= (++!12956 (_1!35109 lt!2104193) (_2!35109 lt!2104193)) input!5745))))

(assert (=> d!1651233 (= lt!2104193 e!3186760)))

(declare-fun c!877791 () Bool)

(assert (=> d!1651233 (= c!877791 (lostCauseZipper!1013 z!4463))))

(declare-fun lt!2104174 () Unit!150097)

(declare-fun Unit!150104 () Unit!150097)

(assert (=> d!1651233 (= lt!2104174 Unit!150104)))

(assert (=> d!1651233 (= (getSuffix!3206 input!5745 testedP!265) lt!2103978)))

(declare-fun lt!2104172 () Unit!150097)

(declare-fun lt!2104184 () Unit!150097)

(assert (=> d!1651233 (= lt!2104172 lt!2104184)))

(declare-fun lt!2104194 () List!59130)

(assert (=> d!1651233 (= lt!2103978 lt!2104194)))

(declare-fun lemmaSamePrefixThenSameSuffix!2606 (List!59130 List!59130 List!59130 List!59130 List!59130) Unit!150097)

(assert (=> d!1651233 (= lt!2104184 (lemmaSamePrefixThenSameSuffix!2606 testedP!265 lt!2103978 testedP!265 lt!2104194 input!5745))))

(assert (=> d!1651233 (= lt!2104194 (getSuffix!3206 input!5745 testedP!265))))

(declare-fun lt!2104177 () Unit!150097)

(declare-fun lt!2104192 () Unit!150097)

(assert (=> d!1651233 (= lt!2104177 lt!2104192)))

(assert (=> d!1651233 (isPrefix!5532 testedP!265 (++!12956 testedP!265 lt!2103978))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3556 (List!59130 List!59130) Unit!150097)

(assert (=> d!1651233 (= lt!2104192 (lemmaConcatTwoListThenFirstIsPrefix!3556 testedP!265 lt!2103978))))

(assert (=> d!1651233 (= (++!12956 testedP!265 lt!2103978) input!5745)))

(assert (=> d!1651233 (= (findLongestMatchInnerZipper!187 z!4463 testedP!265 lt!2103979 lt!2103978 input!5745 (size!39433 input!5745)) lt!2104193)))

(declare-fun b!5109479 () Bool)

(assert (=> b!5109479 (= e!3186760 (tuple2!63613 Nil!59006 input!5745))))

(declare-fun bm!356336 () Bool)

(declare-fun call!356337 () tuple2!63612)

(assert (=> bm!356336 (= call!356337 (findLongestMatchInnerZipper!187 call!356338 lt!2104175 (+ lt!2103979 1) call!356335 input!5745 (size!39433 input!5745)))))

(declare-fun b!5109485 () Bool)

(assert (=> b!5109485 (= e!3186763 call!356337)))

(declare-fun b!5109486 () Bool)

(assert (=> b!5109486 (= e!3186763 e!3186764)))

(assert (=> b!5109486 (= lt!2104186 call!356337)))

(declare-fun c!877796 () Bool)

(assert (=> b!5109486 (= c!877796 (isEmpty!31848 (_1!35109 lt!2104186)))))

(declare-fun b!5109487 () Bool)

(assert (=> b!5109487 (= e!3186767 e!3186762)))

(declare-fun res!2174791 () Bool)

(assert (=> b!5109487 (=> res!2174791 e!3186762)))

(assert (=> b!5109487 (= res!2174791 (isEmpty!31848 (_1!35109 lt!2104193)))))

(assert (= (and d!1651233 c!877791) b!5109479))

(assert (= (and d!1651233 (not c!877791)) b!5109484))

(assert (= (and b!5109484 c!877795) b!5109478))

(assert (= (and b!5109484 (not c!877795)) b!5109481))

(assert (= (and b!5109478 c!877792) b!5109482))

(assert (= (and b!5109478 (not c!877792)) b!5109476))

(assert (= (and b!5109481 c!877793) b!5109480))

(assert (= (and b!5109481 (not c!877793)) b!5109477))

(assert (= (and b!5109481 c!877794) b!5109486))

(assert (= (and b!5109481 (not c!877794)) b!5109485))

(assert (= (and b!5109486 c!877796) b!5109483))

(assert (= (and b!5109486 (not c!877796)) b!5109475))

(assert (= (or b!5109486 b!5109485) bm!356330))

(assert (= (or b!5109486 b!5109485) bm!356333))

(assert (= (or b!5109486 b!5109485) bm!356332))

(assert (= (or b!5109486 b!5109485) bm!356336))

(assert (= (or b!5109478 b!5109480) bm!356335))

(assert (= (or b!5109478 b!5109480) bm!356331))

(assert (= (or b!5109478 b!5109481) bm!356334))

(assert (= (or b!5109478 b!5109480) bm!356329))

(assert (= (and d!1651233 res!2174792) b!5109487))

(assert (= (and b!5109487 (not res!2174791)) b!5109474))

(declare-fun m!6166682 () Bool)

(assert (=> b!5109474 m!6166682))

(assert (=> b!5109474 m!6166480))

(declare-fun m!6166684 () Bool)

(assert (=> bm!356334 m!6166684))

(assert (=> b!5109481 m!6166462))

(declare-fun m!6166686 () Bool)

(assert (=> b!5109481 m!6166686))

(declare-fun m!6166688 () Bool)

(assert (=> b!5109481 m!6166688))

(declare-fun m!6166690 () Bool)

(assert (=> b!5109481 m!6166690))

(declare-fun m!6166692 () Bool)

(assert (=> b!5109481 m!6166692))

(declare-fun m!6166694 () Bool)

(assert (=> b!5109481 m!6166694))

(assert (=> b!5109481 m!6166464))

(declare-fun m!6166696 () Bool)

(assert (=> b!5109481 m!6166696))

(declare-fun m!6166698 () Bool)

(assert (=> b!5109481 m!6166698))

(assert (=> b!5109481 m!6166462))

(declare-fun m!6166700 () Bool)

(assert (=> b!5109481 m!6166700))

(assert (=> b!5109481 m!6166700))

(declare-fun m!6166702 () Bool)

(assert (=> b!5109481 m!6166702))

(declare-fun m!6166704 () Bool)

(assert (=> b!5109481 m!6166704))

(assert (=> b!5109481 m!6166692))

(assert (=> b!5109481 m!6166480))

(declare-fun m!6166706 () Bool)

(assert (=> b!5109481 m!6166706))

(assert (=> d!1651233 m!6166486))

(assert (=> d!1651233 m!6166484))

(declare-fun m!6166708 () Bool)

(assert (=> d!1651233 m!6166708))

(declare-fun m!6166710 () Bool)

(assert (=> d!1651233 m!6166710))

(assert (=> d!1651233 m!6166484))

(declare-fun m!6166712 () Bool)

(assert (=> d!1651233 m!6166712))

(declare-fun m!6166714 () Bool)

(assert (=> d!1651233 m!6166714))

(assert (=> d!1651233 m!6166462))

(declare-fun m!6166716 () Bool)

(assert (=> bm!356335 m!6166716))

(declare-fun m!6166718 () Bool)

(assert (=> b!5109486 m!6166718))

(assert (=> bm!356333 m!6166698))

(assert (=> bm!356336 m!6166464))

(declare-fun m!6166720 () Bool)

(assert (=> bm!356336 m!6166720))

(declare-fun m!6166722 () Bool)

(assert (=> bm!356331 m!6166722))

(declare-fun m!6166724 () Bool)

(assert (=> bm!356332 m!6166724))

(declare-fun m!6166726 () Bool)

(assert (=> b!5109487 m!6166726))

(declare-fun m!6166728 () Bool)

(assert (=> bm!356329 m!6166728))

(assert (=> bm!356330 m!6166688))

(assert (=> b!5109272 d!1651233))

(declare-fun d!1651255 () Bool)

(declare-fun lt!2104201 () Int)

(assert (=> d!1651255 (>= lt!2104201 0)))

(declare-fun e!3186770 () Int)

(assert (=> d!1651255 (= lt!2104201 e!3186770)))

(declare-fun c!877801 () Bool)

(assert (=> d!1651255 (= c!877801 ((_ is Nil!59006) (_1!35109 (findLongestMatchInnerZipper!187 z!4463 testedP!265 lt!2103979 lt!2103978 input!5745 (size!39433 input!5745)))))))

(assert (=> d!1651255 (= (size!39433 (_1!35109 (findLongestMatchInnerZipper!187 z!4463 testedP!265 lt!2103979 lt!2103978 input!5745 (size!39433 input!5745)))) lt!2104201)))

(declare-fun b!5109488 () Bool)

(assert (=> b!5109488 (= e!3186770 0)))

(declare-fun b!5109489 () Bool)

(assert (=> b!5109489 (= e!3186770 (+ 1 (size!39433 (t!372131 (_1!35109 (findLongestMatchInnerZipper!187 z!4463 testedP!265 lt!2103979 lt!2103978 input!5745 (size!39433 input!5745)))))))))

(assert (= (and d!1651255 c!877801) b!5109488))

(assert (= (and d!1651255 (not c!877801)) b!5109489))

(declare-fun m!6166730 () Bool)

(assert (=> b!5109489 m!6166730))

(assert (=> b!5109272 d!1651255))

(declare-fun bs!1191768 () Bool)

(declare-fun b!5109515 () Bool)

(declare-fun d!1651257 () Bool)

(assert (= bs!1191768 (and b!5109515 d!1651257)))

(declare-fun lambda!250165 () Int)

(declare-fun lambda!250164 () Int)

(assert (=> bs!1191768 (not (= lambda!250165 lambda!250164))))

(declare-fun bs!1191769 () Bool)

(declare-fun b!5109516 () Bool)

(assert (= bs!1191769 (and b!5109516 d!1651257)))

(declare-fun lambda!250166 () Int)

(assert (=> bs!1191769 (not (= lambda!250166 lambda!250164))))

(declare-fun bs!1191770 () Bool)

(assert (= bs!1191770 (and b!5109516 b!5109515)))

(assert (=> bs!1191770 (= lambda!250166 lambda!250165)))

(declare-fun lt!2104226 () Bool)

(declare-datatypes ((Option!14654 0))(
  ( (None!14653) (Some!14653 (v!50666 List!59130)) )
))
(declare-fun isEmpty!31849 (Option!14654) Bool)

(declare-fun getLanguageWitness!767 ((InoxSet Context!7022)) Option!14654)

(assert (=> d!1651257 (= lt!2104226 (isEmpty!31849 (getLanguageWitness!767 z!4463)))))

(declare-fun forall!13520 ((InoxSet Context!7022) Int) Bool)

(assert (=> d!1651257 (= lt!2104226 (forall!13520 z!4463 lambda!250164))))

(declare-fun lt!2104233 () Unit!150097)

(declare-fun e!3186791 () Unit!150097)

(assert (=> d!1651257 (= lt!2104233 e!3186791)))

(declare-fun c!877813 () Bool)

(assert (=> d!1651257 (= c!877813 (not (forall!13520 z!4463 lambda!250164)))))

(assert (=> d!1651257 (= (lostCauseZipper!1013 z!4463) lt!2104226)))

(declare-fun Unit!150105 () Unit!150097)

(assert (=> b!5109516 (= e!3186791 Unit!150105)))

(declare-datatypes ((List!59132 0))(
  ( (Nil!59008) (Cons!59008 (h!65456 Context!7022) (t!372133 List!59132)) )
))
(declare-fun lt!2104228 () List!59132)

(declare-fun call!356352 () List!59132)

(assert (=> b!5109516 (= lt!2104228 call!356352)))

(declare-fun lt!2104230 () Unit!150097)

(declare-fun lemmaForallThenNotExists!277 (List!59132 Int) Unit!150097)

(assert (=> b!5109516 (= lt!2104230 (lemmaForallThenNotExists!277 lt!2104228 lambda!250164))))

(declare-fun call!356353 () Bool)

(assert (=> b!5109516 (not call!356353)))

(declare-fun lt!2104232 () Unit!150097)

(assert (=> b!5109516 (= lt!2104232 lt!2104230)))

(declare-fun bm!356347 () Bool)

(declare-fun toList!8220 ((InoxSet Context!7022)) List!59132)

(assert (=> bm!356347 (= call!356352 (toList!8220 z!4463))))

(declare-fun Unit!150106 () Unit!150097)

(assert (=> b!5109515 (= e!3186791 Unit!150106)))

(declare-fun lt!2104229 () List!59132)

(assert (=> b!5109515 (= lt!2104229 call!356352)))

(declare-fun lt!2104227 () Unit!150097)

(declare-fun lemmaNotForallThenExists!294 (List!59132 Int) Unit!150097)

(assert (=> b!5109515 (= lt!2104227 (lemmaNotForallThenExists!294 lt!2104229 lambda!250164))))

(assert (=> b!5109515 call!356353))

(declare-fun lt!2104231 () Unit!150097)

(assert (=> b!5109515 (= lt!2104231 lt!2104227)))

(declare-fun bm!356348 () Bool)

(declare-fun exists!1427 (List!59132 Int) Bool)

(assert (=> bm!356348 (= call!356353 (exists!1427 (ite c!877813 lt!2104229 lt!2104228) (ite c!877813 lambda!250165 lambda!250166)))))

(assert (= (and d!1651257 c!877813) b!5109515))

(assert (= (and d!1651257 (not c!877813)) b!5109516))

(assert (= (or b!5109515 b!5109516) bm!356347))

(assert (= (or b!5109515 b!5109516) bm!356348))

(declare-fun m!6166750 () Bool)

(assert (=> d!1651257 m!6166750))

(assert (=> d!1651257 m!6166750))

(declare-fun m!6166752 () Bool)

(assert (=> d!1651257 m!6166752))

(declare-fun m!6166754 () Bool)

(assert (=> d!1651257 m!6166754))

(assert (=> d!1651257 m!6166754))

(declare-fun m!6166756 () Bool)

(assert (=> b!5109515 m!6166756))

(declare-fun m!6166758 () Bool)

(assert (=> bm!356348 m!6166758))

(declare-fun m!6166760 () Bool)

(assert (=> b!5109516 m!6166760))

(declare-fun m!6166762 () Bool)

(assert (=> bm!356347 m!6166762))

(assert (=> b!5109271 d!1651257))

(declare-fun d!1651259 () Bool)

(declare-fun c!877814 () Bool)

(assert (=> d!1651259 (= c!877814 (isEmpty!31848 (getSuffix!3206 knownP!20 testedP!265)))))

(declare-fun e!3186792 () Bool)

(assert (=> d!1651259 (= (matchZipper!795 z!4463 (getSuffix!3206 knownP!20 testedP!265)) e!3186792)))

(declare-fun b!5109517 () Bool)

(assert (=> b!5109517 (= e!3186792 (nullableZipper!984 z!4463))))

(declare-fun b!5109518 () Bool)

(assert (=> b!5109518 (= e!3186792 (matchZipper!795 (derivationStepZipper!772 z!4463 (head!10861 (getSuffix!3206 knownP!20 testedP!265))) (tail!10016 (getSuffix!3206 knownP!20 testedP!265))))))

(assert (= (and d!1651259 c!877814) b!5109517))

(assert (= (and d!1651259 (not c!877814)) b!5109518))

(assert (=> d!1651259 m!6166452))

(declare-fun m!6166764 () Bool)

(assert (=> d!1651259 m!6166764))

(assert (=> b!5109517 m!6166684))

(assert (=> b!5109518 m!6166452))

(declare-fun m!6166766 () Bool)

(assert (=> b!5109518 m!6166766))

(assert (=> b!5109518 m!6166766))

(declare-fun m!6166768 () Bool)

(assert (=> b!5109518 m!6166768))

(assert (=> b!5109518 m!6166452))

(declare-fun m!6166770 () Bool)

(assert (=> b!5109518 m!6166770))

(assert (=> b!5109518 m!6166768))

(assert (=> b!5109518 m!6166770))

(declare-fun m!6166772 () Bool)

(assert (=> b!5109518 m!6166772))

(assert (=> b!5109275 d!1651259))

(declare-fun d!1651261 () Bool)

(declare-fun lt!2104234 () List!59130)

(assert (=> d!1651261 (= (++!12956 testedP!265 lt!2104234) knownP!20)))

(declare-fun e!3186793 () List!59130)

(assert (=> d!1651261 (= lt!2104234 e!3186793)))

(declare-fun c!877815 () Bool)

(assert (=> d!1651261 (= c!877815 ((_ is Cons!59006) testedP!265))))

(assert (=> d!1651261 (>= (size!39433 knownP!20) (size!39433 testedP!265))))

(assert (=> d!1651261 (= (getSuffix!3206 knownP!20 testedP!265) lt!2104234)))

(declare-fun b!5109519 () Bool)

(assert (=> b!5109519 (= e!3186793 (getSuffix!3206 (tail!10016 knownP!20) (t!372131 testedP!265)))))

(declare-fun b!5109520 () Bool)

(assert (=> b!5109520 (= e!3186793 knownP!20)))

(assert (= (and d!1651261 c!877815) b!5109519))

(assert (= (and d!1651261 (not c!877815)) b!5109520))

(declare-fun m!6166774 () Bool)

(assert (=> d!1651261 m!6166774))

(assert (=> d!1651261 m!6166482))

(assert (=> d!1651261 m!6166480))

(assert (=> b!5109519 m!6166512))

(assert (=> b!5109519 m!6166512))

(declare-fun m!6166776 () Bool)

(assert (=> b!5109519 m!6166776))

(assert (=> b!5109275 d!1651261))

(declare-fun b!5109522 () Bool)

(declare-fun res!2174793 () Bool)

(declare-fun e!3186796 () Bool)

(assert (=> b!5109522 (=> (not res!2174793) (not e!3186796))))

(assert (=> b!5109522 (= res!2174793 (= (head!10861 testedP!265) (head!10861 knownP!20)))))

(declare-fun b!5109521 () Bool)

(declare-fun e!3186794 () Bool)

(assert (=> b!5109521 (= e!3186794 e!3186796)))

(declare-fun res!2174795 () Bool)

(assert (=> b!5109521 (=> (not res!2174795) (not e!3186796))))

(assert (=> b!5109521 (= res!2174795 (not ((_ is Nil!59006) knownP!20)))))

(declare-fun b!5109524 () Bool)

(declare-fun e!3186795 () Bool)

(assert (=> b!5109524 (= e!3186795 (>= (size!39433 knownP!20) (size!39433 testedP!265)))))

(declare-fun b!5109523 () Bool)

(assert (=> b!5109523 (= e!3186796 (isPrefix!5532 (tail!10016 testedP!265) (tail!10016 knownP!20)))))

(declare-fun d!1651263 () Bool)

(assert (=> d!1651263 e!3186795))

(declare-fun res!2174794 () Bool)

(assert (=> d!1651263 (=> res!2174794 e!3186795)))

(declare-fun lt!2104235 () Bool)

(assert (=> d!1651263 (= res!2174794 (not lt!2104235))))

(assert (=> d!1651263 (= lt!2104235 e!3186794)))

(declare-fun res!2174796 () Bool)

(assert (=> d!1651263 (=> res!2174796 e!3186794)))

(assert (=> d!1651263 (= res!2174796 ((_ is Nil!59006) testedP!265))))

(assert (=> d!1651263 (= (isPrefix!5532 testedP!265 knownP!20) lt!2104235)))

(assert (= (and d!1651263 (not res!2174796)) b!5109521))

(assert (= (and b!5109521 res!2174795) b!5109522))

(assert (= (and b!5109522 res!2174793) b!5109523))

(assert (= (and d!1651263 (not res!2174794)) b!5109524))

(assert (=> b!5109522 m!6166494))

(assert (=> b!5109522 m!6166508))

(assert (=> b!5109524 m!6166482))

(assert (=> b!5109524 m!6166480))

(assert (=> b!5109523 m!6166498))

(assert (=> b!5109523 m!6166512))

(assert (=> b!5109523 m!6166498))

(assert (=> b!5109523 m!6166512))

(declare-fun m!6166778 () Bool)

(assert (=> b!5109523 m!6166778))

(assert (=> b!5109275 d!1651263))

(declare-fun d!1651265 () Bool)

(assert (=> d!1651265 (isPrefix!5532 testedP!265 knownP!20)))

(declare-fun lt!2104238 () Unit!150097)

(declare-fun choose!37442 (List!59130 List!59130 List!59130) Unit!150097)

(assert (=> d!1651265 (= lt!2104238 (choose!37442 knownP!20 testedP!265 input!5745))))

(assert (=> d!1651265 (isPrefix!5532 knownP!20 input!5745)))

(assert (=> d!1651265 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!669 knownP!20 testedP!265 input!5745) lt!2104238)))

(declare-fun bs!1191771 () Bool)

(assert (= bs!1191771 d!1651265))

(assert (=> bs!1191771 m!6166456))

(declare-fun m!6166780 () Bool)

(assert (=> bs!1191771 m!6166780))

(assert (=> bs!1191771 m!6166488))

(assert (=> b!5109275 d!1651265))

(declare-fun b!5109529 () Bool)

(declare-fun e!3186799 () Bool)

(declare-fun tp!1425433 () Bool)

(assert (=> b!5109529 (= e!3186799 (and tp_is_empty!37527 tp!1425433))))

(assert (=> b!5109274 (= tp!1425409 e!3186799)))

(assert (= (and b!5109274 ((_ is Cons!59006) (t!372131 knownP!20))) b!5109529))

(declare-fun condSetEmpty!29621 () Bool)

(assert (=> setNonEmpty!29613 (= condSetEmpty!29621 (= setRest!29613 ((as const (Array Context!7022 Bool)) false)))))

(declare-fun setRes!29621 () Bool)

(assert (=> setNonEmpty!29613 (= tp!1425408 setRes!29621)))

(declare-fun setIsEmpty!29621 () Bool)

(assert (=> setIsEmpty!29621 setRes!29621))

(declare-fun tp!1425439 () Bool)

(declare-fun setElem!29621 () Context!7022)

(declare-fun setNonEmpty!29621 () Bool)

(declare-fun e!3186802 () Bool)

(assert (=> setNonEmpty!29621 (= setRes!29621 (and tp!1425439 (inv!78498 setElem!29621) e!3186802))))

(declare-fun setRest!29621 () (InoxSet Context!7022))

(assert (=> setNonEmpty!29621 (= setRest!29613 ((_ map or) (store ((as const (Array Context!7022 Bool)) false) setElem!29621 true) setRest!29621))))

(declare-fun b!5109534 () Bool)

(declare-fun tp!1425438 () Bool)

(assert (=> b!5109534 (= e!3186802 tp!1425438)))

(assert (= (and setNonEmpty!29613 condSetEmpty!29621) setIsEmpty!29621))

(assert (= (and setNonEmpty!29613 (not condSetEmpty!29621)) setNonEmpty!29621))

(assert (= setNonEmpty!29621 b!5109534))

(declare-fun m!6166782 () Bool)

(assert (=> setNonEmpty!29621 m!6166782))

(declare-fun condSetEmpty!29622 () Bool)

(assert (=> setNonEmpty!29614 (= condSetEmpty!29622 (= setRest!29614 ((as const (Array Context!7022 Bool)) false)))))

(declare-fun setRes!29622 () Bool)

(assert (=> setNonEmpty!29614 (= tp!1425405 setRes!29622)))

(declare-fun setIsEmpty!29622 () Bool)

(assert (=> setIsEmpty!29622 setRes!29622))

(declare-fun setNonEmpty!29622 () Bool)

(declare-fun tp!1425441 () Bool)

(declare-fun setElem!29622 () Context!7022)

(declare-fun e!3186803 () Bool)

(assert (=> setNonEmpty!29622 (= setRes!29622 (and tp!1425441 (inv!78498 setElem!29622) e!3186803))))

(declare-fun setRest!29622 () (InoxSet Context!7022))

(assert (=> setNonEmpty!29622 (= setRest!29614 ((_ map or) (store ((as const (Array Context!7022 Bool)) false) setElem!29622 true) setRest!29622))))

(declare-fun b!5109535 () Bool)

(declare-fun tp!1425440 () Bool)

(assert (=> b!5109535 (= e!3186803 tp!1425440)))

(assert (= (and setNonEmpty!29614 condSetEmpty!29622) setIsEmpty!29622))

(assert (= (and setNonEmpty!29614 (not condSetEmpty!29622)) setNonEmpty!29622))

(assert (= setNonEmpty!29622 b!5109535))

(declare-fun m!6166784 () Bool)

(assert (=> setNonEmpty!29622 m!6166784))

(declare-fun b!5109540 () Bool)

(declare-fun e!3186806 () Bool)

(declare-fun tp!1425446 () Bool)

(declare-fun tp!1425447 () Bool)

(assert (=> b!5109540 (= e!3186806 (and tp!1425446 tp!1425447))))

(assert (=> b!5109273 (= tp!1425407 e!3186806)))

(assert (= (and b!5109273 ((_ is Cons!59007) (exprs!4011 setElem!29613))) b!5109540))

(declare-fun b!5109541 () Bool)

(declare-fun e!3186807 () Bool)

(declare-fun tp!1425448 () Bool)

(assert (=> b!5109541 (= e!3186807 (and tp_is_empty!37527 tp!1425448))))

(assert (=> b!5109268 (= tp!1425406 e!3186807)))

(assert (= (and b!5109268 ((_ is Cons!59006) (t!372131 testedP!265))) b!5109541))

(declare-fun b!5109542 () Bool)

(declare-fun e!3186808 () Bool)

(declare-fun tp!1425449 () Bool)

(assert (=> b!5109542 (= e!3186808 (and tp_is_empty!37527 tp!1425449))))

(assert (=> b!5109267 (= tp!1425403 e!3186808)))

(assert (= (and b!5109267 ((_ is Cons!59006) (t!372131 input!5745))) b!5109542))

(declare-fun b!5109543 () Bool)

(declare-fun e!3186809 () Bool)

(declare-fun tp!1425450 () Bool)

(declare-fun tp!1425451 () Bool)

(assert (=> b!5109543 (= e!3186809 (and tp!1425450 tp!1425451))))

(assert (=> b!5109266 (= tp!1425404 e!3186809)))

(assert (= (and b!5109266 ((_ is Cons!59007) (exprs!4011 setElem!29614))) b!5109543))

(check-sat (not bm!356332) (not b!5109535) (not b!5109373) (not b!5109303) (not bm!356336) (not bm!356347) (not b!5109364) (not b!5109522) (not bm!356334) (not b!5109302) (not b!5109523) (not b!5109283) (not d!1651259) (not b!5109297) (not b!5109489) (not b!5109540) (not d!1651261) (not bm!356330) (not d!1651225) (not b!5109524) (not d!1651223) (not b!5109352) (not b!5109517) (not b!5109474) (not b!5109519) (not b!5109534) (not b!5109529) (not b!5109487) tp_is_empty!37527 (not setNonEmpty!29621) (not bm!356331) (not d!1651195) (not b!5109486) (not d!1651227) (not d!1651257) (not b!5109518) (not b!5109543) (not b!5109541) (not b!5109515) (not d!1651229) (not b!5109516) (not b!5109481) (not bm!356335) (not b!5109351) (not bm!356333) (not b!5109353) (not d!1651219) (not b!5109542) (not bm!356348) (not b!5109295) (not d!1651233) (not b!5109296) (not b!5109308) (not b!5109363) (not b!5109285) (not d!1651265) (not setNonEmpty!29622) (not d!1651199) (not b!5109370) (not bm!356329))
(check-sat)
