; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675366 () Bool)

(assert start!675366)

(declare-fun b!7011413 () Bool)

(assert (=> b!7011413 true))

(declare-fun b!7011417 () Bool)

(assert (=> b!7011417 true))

(declare-fun b!7011406 () Bool)

(assert (=> b!7011406 true))

(declare-fun b!7011396 () Bool)

(declare-fun e!4214585 () Bool)

(declare-fun e!4214587 () Bool)

(assert (=> b!7011396 (= e!4214585 e!4214587)))

(declare-fun res!2861028 () Bool)

(assert (=> b!7011396 (=> res!2861028 e!4214587)))

(declare-datatypes ((C!34914 0))(
  ( (C!34915 (val!27159 Int)) )
))
(declare-datatypes ((Regex!17322 0))(
  ( (ElementMatch!17322 (c!1302428 C!34914)) (Concat!26167 (regOne!35156 Regex!17322) (regTwo!35156 Regex!17322)) (EmptyExpr!17322) (Star!17322 (reg!17651 Regex!17322)) (EmptyLang!17322) (Union!17322 (regOne!35157 Regex!17322) (regTwo!35157 Regex!17322)) )
))
(declare-datatypes ((List!67511 0))(
  ( (Nil!67387) (Cons!67387 (h!73835 Regex!17322) (t!381266 List!67511)) )
))
(declare-datatypes ((Context!12636 0))(
  ( (Context!12637 (exprs!6818 List!67511)) )
))
(declare-fun lt!2504797 () (Set Context!12636))

(declare-fun lt!2504760 () (Set Context!12636))

(assert (=> b!7011396 (= res!2861028 (not (= lt!2504797 lt!2504760)))))

(declare-fun lt!2504772 () (Set Context!12636))

(declare-fun lt!2504792 () (Set Context!12636))

(assert (=> b!7011396 (= lt!2504760 (set.union lt!2504772 lt!2504792))))

(declare-fun lt!2504780 () Context!12636)

(declare-datatypes ((List!67512 0))(
  ( (Nil!67388) (Cons!67388 (h!73836 C!34914) (t!381267 List!67512)) )
))
(declare-fun s!7408 () List!67512)

(declare-fun derivationStepZipperUp!1972 (Context!12636 C!34914) (Set Context!12636))

(assert (=> b!7011396 (= lt!2504792 (derivationStepZipperUp!1972 lt!2504780 (h!73836 s!7408)))))

(declare-fun lt!2504803 () Context!12636)

(declare-fun derivationStepZipperDown!2040 (Regex!17322 Context!12636 C!34914) (Set Context!12636))

(assert (=> b!7011396 (= lt!2504772 (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504803)) lt!2504780 (h!73836 s!7408)))))

(declare-fun lt!2504788 () List!67511)

(declare-fun ct2!306 () Context!12636)

(declare-fun ++!15323 (List!67511 List!67511) List!67511)

(assert (=> b!7011396 (= lt!2504780 (Context!12637 (++!15323 lt!2504788 (exprs!6818 ct2!306))))))

(declare-datatypes ((Unit!161322 0))(
  ( (Unit!161323) )
))
(declare-fun lt!2504789 () Unit!161322)

(declare-fun lambda!408692 () Int)

(declare-fun lemmaConcatPreservesForall!658 (List!67511 List!67511 Int) Unit!161322)

(assert (=> b!7011396 (= lt!2504789 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun lt!2504790 () Unit!161322)

(assert (=> b!7011396 (= lt!2504790 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun b!7011397 () Bool)

(declare-fun e!4214592 () Bool)

(declare-fun matchZipper!2862 ((Set Context!12636) List!67512) Bool)

(assert (=> b!7011397 (= e!4214592 (not (matchZipper!2862 lt!2504792 (t!381267 s!7408))))))

(declare-fun lt!2504778 () Unit!161322)

(assert (=> b!7011397 (= lt!2504778 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun b!7011398 () Bool)

(declare-fun res!2861017 () Bool)

(declare-fun e!4214598 () Bool)

(assert (=> b!7011398 (=> (not res!2861017) (not e!4214598))))

(assert (=> b!7011398 (= res!2861017 (is-Cons!67388 s!7408))))

(declare-fun b!7011399 () Bool)

(declare-fun res!2861011 () Bool)

(declare-fun e!4214591 () Bool)

(assert (=> b!7011399 (=> res!2861011 e!4214591)))

(declare-fun lt!2504767 () Bool)

(assert (=> b!7011399 (= res!2861011 (not lt!2504767))))

(declare-fun e!4214594 () Bool)

(declare-fun setElem!48380 () Context!12636)

(declare-fun setRes!48380 () Bool)

(declare-fun setNonEmpty!48380 () Bool)

(declare-fun tp!1932471 () Bool)

(declare-fun inv!86165 (Context!12636) Bool)

(assert (=> setNonEmpty!48380 (= setRes!48380 (and tp!1932471 (inv!86165 setElem!48380) e!4214594))))

(declare-fun z1!570 () (Set Context!12636))

(declare-fun setRest!48380 () (Set Context!12636))

(assert (=> setNonEmpty!48380 (= z1!570 (set.union (set.insert setElem!48380 (as set.empty (Set Context!12636))) setRest!48380))))

(declare-fun setIsEmpty!48380 () Bool)

(assert (=> setIsEmpty!48380 setRes!48380))

(declare-fun b!7011401 () Bool)

(declare-fun e!4214588 () Bool)

(assert (=> b!7011401 (= e!4214588 (matchZipper!2862 lt!2504792 (t!381267 s!7408)))))

(declare-fun b!7011402 () Bool)

(declare-fun res!2861023 () Bool)

(declare-fun e!4214599 () Bool)

(assert (=> b!7011402 (=> res!2861023 e!4214599)))

(declare-fun isEmpty!39358 (List!67511) Bool)

(assert (=> b!7011402 (= res!2861023 (isEmpty!39358 (exprs!6818 lt!2504803)))))

(declare-fun b!7011403 () Bool)

(assert (=> b!7011403 (= e!4214599 e!4214585)))

(declare-fun res!2861014 () Bool)

(assert (=> b!7011403 (=> res!2861014 e!4214585)))

(declare-fun nullable!7082 (Regex!17322) Bool)

(assert (=> b!7011403 (= res!2861014 (not (nullable!7082 (h!73835 (exprs!6818 lt!2504803)))))))

(declare-fun lt!2504769 () Context!12636)

(assert (=> b!7011403 (= lt!2504769 (Context!12637 lt!2504788))))

(declare-fun tail!13399 (List!67511) List!67511)

(assert (=> b!7011403 (= lt!2504788 (tail!13399 (exprs!6818 lt!2504803)))))

(declare-fun b!7011404 () Bool)

(declare-fun res!2861009 () Bool)

(declare-fun e!4214601 () Bool)

(assert (=> b!7011404 (=> res!2861009 e!4214601)))

(declare-datatypes ((tuple2!67950 0))(
  ( (tuple2!67951 (_1!37278 List!67512) (_2!37278 List!67512)) )
))
(declare-fun lt!2504795 () tuple2!67950)

(declare-fun ++!15324 (List!67512 List!67512) List!67512)

(assert (=> b!7011404 (= res!2861009 (not (= (++!15324 (_1!37278 lt!2504795) (_2!37278 lt!2504795)) (t!381267 s!7408))))))

(declare-fun b!7011405 () Bool)

(declare-fun e!4214595 () Bool)

(declare-fun e!4214597 () Bool)

(assert (=> b!7011405 (= e!4214595 e!4214597)))

(declare-fun res!2861021 () Bool)

(assert (=> b!7011405 (=> res!2861021 e!4214597)))

(declare-fun lt!2504765 () (Set Context!12636))

(declare-fun lt!2504784 () (Set Context!12636))

(assert (=> b!7011405 (= res!2861021 (not (= lt!2504765 lt!2504784)))))

(declare-fun lt!2504764 () Context!12636)

(assert (=> b!7011405 (= lt!2504765 (set.insert lt!2504764 (as set.empty (Set Context!12636))))))

(declare-fun lt!2504770 () Unit!161322)

(assert (=> b!7011405 (= lt!2504770 (lemmaConcatPreservesForall!658 (exprs!6818 lt!2504803) (exprs!6818 ct2!306) lambda!408692))))

(assert (=> b!7011406 (= e!4214597 e!4214599)))

(declare-fun res!2861026 () Bool)

(assert (=> b!7011406 (=> res!2861026 e!4214599)))

(declare-fun derivationStepZipper!2802 ((Set Context!12636) C!34914) (Set Context!12636))

(assert (=> b!7011406 (= res!2861026 (not (= (derivationStepZipper!2802 lt!2504765 (h!73836 s!7408)) lt!2504797)))))

(declare-fun lambda!408693 () Int)

(declare-fun flatMap!2308 ((Set Context!12636) Int) (Set Context!12636))

(assert (=> b!7011406 (= (flatMap!2308 lt!2504765 lambda!408693) (derivationStepZipperUp!1972 lt!2504764 (h!73836 s!7408)))))

(declare-fun lt!2504791 () Unit!161322)

(declare-fun lemmaFlatMapOnSingletonSet!1823 ((Set Context!12636) Context!12636 Int) Unit!161322)

(assert (=> b!7011406 (= lt!2504791 (lemmaFlatMapOnSingletonSet!1823 lt!2504765 lt!2504764 lambda!408693))))

(assert (=> b!7011406 (= lt!2504797 (derivationStepZipperUp!1972 lt!2504764 (h!73836 s!7408)))))

(declare-fun lt!2504800 () Unit!161322)

(assert (=> b!7011406 (= lt!2504800 (lemmaConcatPreservesForall!658 (exprs!6818 lt!2504803) (exprs!6818 ct2!306) lambda!408692))))

(declare-fun b!7011407 () Bool)

(declare-fun tp!1932469 () Bool)

(assert (=> b!7011407 (= e!4214594 tp!1932469)))

(declare-fun b!7011408 () Bool)

(declare-fun e!4214590 () Bool)

(declare-fun e!4214584 () Bool)

(assert (=> b!7011408 (= e!4214590 e!4214584)))

(declare-fun res!2861012 () Bool)

(assert (=> b!7011408 (=> res!2861012 e!4214584)))

(declare-fun lt!2504775 () Bool)

(assert (=> b!7011408 (= res!2861012 (not lt!2504775))))

(declare-fun lt!2504776 () Unit!161322)

(assert (=> b!7011408 (= lt!2504776 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun lt!2504774 () Unit!161322)

(assert (=> b!7011408 (= lt!2504774 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun b!7011409 () Bool)

(declare-fun res!2861015 () Bool)

(assert (=> b!7011409 (=> res!2861015 e!4214599)))

(assert (=> b!7011409 (= res!2861015 (not (is-Cons!67387 (exprs!6818 lt!2504803))))))

(declare-fun b!7011410 () Bool)

(declare-fun res!2861029 () Bool)

(declare-fun e!4214600 () Bool)

(assert (=> b!7011410 (=> res!2861029 e!4214600)))

(declare-fun lt!2504793 () Context!12636)

(declare-fun lt!2504799 () (Set Context!12636))

(assert (=> b!7011410 (= res!2861029 (not (set.member lt!2504793 lt!2504799)))))

(declare-fun b!7011411 () Bool)

(assert (=> b!7011411 (= e!4214584 e!4214601)))

(declare-fun res!2861016 () Bool)

(assert (=> b!7011411 (=> res!2861016 e!4214601)))

(declare-fun lt!2504781 () (Set Context!12636))

(assert (=> b!7011411 (= res!2861016 (not (matchZipper!2862 lt!2504781 (_1!37278 lt!2504795))))))

(declare-datatypes ((Option!16807 0))(
  ( (None!16806) (Some!16806 (v!53084 tuple2!67950)) )
))
(declare-fun lt!2504801 () Option!16807)

(declare-fun get!23630 (Option!16807) tuple2!67950)

(assert (=> b!7011411 (= lt!2504795 (get!23630 lt!2504801))))

(declare-fun isDefined!13508 (Option!16807) Bool)

(assert (=> b!7011411 (isDefined!13508 lt!2504801)))

(declare-fun lt!2504761 () (Set Context!12636))

(declare-fun findConcatSeparationZippers!323 ((Set Context!12636) (Set Context!12636) List!67512 List!67512 List!67512) Option!16807)

(assert (=> b!7011411 (= lt!2504801 (findConcatSeparationZippers!323 lt!2504781 lt!2504761 Nil!67388 (t!381267 s!7408) (t!381267 s!7408)))))

(assert (=> b!7011411 (= lt!2504761 (set.insert ct2!306 (as set.empty (Set Context!12636))))))

(declare-fun lt!2504766 () Unit!161322)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!323 ((Set Context!12636) Context!12636 List!67512) Unit!161322)

(assert (=> b!7011411 (= lt!2504766 (lemmaConcatZipperMatchesStringThenFindConcatDefined!323 lt!2504781 ct2!306 (t!381267 s!7408)))))

(declare-fun lt!2504771 () Unit!161322)

(assert (=> b!7011411 (= lt!2504771 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun appendTo!443 ((Set Context!12636) Context!12636) (Set Context!12636))

(assert (=> b!7011411 (= lt!2504772 (appendTo!443 lt!2504781 ct2!306))))

(assert (=> b!7011411 (= lt!2504781 (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504803)) lt!2504769 (h!73836 s!7408)))))

(declare-fun lt!2504783 () Unit!161322)

(assert (=> b!7011411 (= lt!2504783 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun lt!2504787 () Unit!161322)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!21 (Context!12636 Regex!17322 C!34914 Context!12636) Unit!161322)

(assert (=> b!7011411 (= lt!2504787 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!21 lt!2504769 (h!73835 (exprs!6818 lt!2504803)) (h!73836 s!7408) ct2!306))))

(declare-fun b!7011412 () Bool)

(assert (=> b!7011412 (= e!4214587 e!4214591)))

(declare-fun res!2861020 () Bool)

(assert (=> b!7011412 (=> res!2861020 e!4214591)))

(assert (=> b!7011412 (= res!2861020 e!4214592)))

(declare-fun res!2861019 () Bool)

(assert (=> b!7011412 (=> (not res!2861019) (not e!4214592))))

(assert (=> b!7011412 (= res!2861019 (not (= lt!2504767 lt!2504775)))))

(assert (=> b!7011412 (= lt!2504767 (matchZipper!2862 lt!2504797 (t!381267 s!7408)))))

(declare-fun lt!2504773 () Unit!161322)

(assert (=> b!7011412 (= lt!2504773 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(assert (=> b!7011412 (= (matchZipper!2862 lt!2504760 (t!381267 s!7408)) e!4214588)))

(declare-fun res!2861018 () Bool)

(assert (=> b!7011412 (=> res!2861018 e!4214588)))

(assert (=> b!7011412 (= res!2861018 lt!2504775)))

(assert (=> b!7011412 (= lt!2504775 (matchZipper!2862 lt!2504772 (t!381267 s!7408)))))

(declare-fun lt!2504785 () Unit!161322)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1495 ((Set Context!12636) (Set Context!12636) List!67512) Unit!161322)

(assert (=> b!7011412 (= lt!2504785 (lemmaZipperConcatMatchesSameAsBothZippers!1495 lt!2504772 lt!2504792 (t!381267 s!7408)))))

(declare-fun lt!2504786 () Unit!161322)

(assert (=> b!7011412 (= lt!2504786 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(declare-fun lt!2504763 () Unit!161322)

(assert (=> b!7011412 (= lt!2504763 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(assert (=> b!7011413 (= e!4214598 (not e!4214600))))

(declare-fun res!2861010 () Bool)

(assert (=> b!7011413 (=> res!2861010 e!4214600)))

(assert (=> b!7011413 (= res!2861010 (not (matchZipper!2862 lt!2504784 s!7408)))))

(assert (=> b!7011413 (= lt!2504784 (set.insert lt!2504793 (as set.empty (Set Context!12636))))))

(declare-fun lambda!408690 () Int)

(declare-fun getWitness!1266 ((Set Context!12636) Int) Context!12636)

(assert (=> b!7011413 (= lt!2504793 (getWitness!1266 lt!2504799 lambda!408690))))

(declare-datatypes ((List!67513 0))(
  ( (Nil!67389) (Cons!67389 (h!73837 Context!12636) (t!381268 List!67513)) )
))
(declare-fun lt!2504782 () List!67513)

(declare-fun exists!3168 (List!67513 Int) Bool)

(assert (=> b!7011413 (exists!3168 lt!2504782 lambda!408690)))

(declare-fun lt!2504805 () Unit!161322)

(declare-fun lemmaZipperMatchesExistsMatchingContext!291 (List!67513 List!67512) Unit!161322)

(assert (=> b!7011413 (= lt!2504805 (lemmaZipperMatchesExistsMatchingContext!291 lt!2504782 s!7408))))

(declare-fun toList!10682 ((Set Context!12636)) List!67513)

(assert (=> b!7011413 (= lt!2504782 (toList!10682 lt!2504799))))

(declare-fun b!7011414 () Bool)

(declare-fun e!4214589 () Bool)

(declare-fun tp!1932472 () Bool)

(assert (=> b!7011414 (= e!4214589 tp!1932472)))

(declare-fun res!2861022 () Bool)

(assert (=> start!675366 (=> (not res!2861022) (not e!4214598))))

(assert (=> start!675366 (= res!2861022 (matchZipper!2862 lt!2504799 s!7408))))

(assert (=> start!675366 (= lt!2504799 (appendTo!443 z1!570 ct2!306))))

(assert (=> start!675366 e!4214598))

(declare-fun condSetEmpty!48380 () Bool)

(assert (=> start!675366 (= condSetEmpty!48380 (= z1!570 (as set.empty (Set Context!12636))))))

(assert (=> start!675366 setRes!48380))

(assert (=> start!675366 (and (inv!86165 ct2!306) e!4214589)))

(declare-fun e!4214586 () Bool)

(assert (=> start!675366 e!4214586))

(declare-fun b!7011400 () Bool)

(declare-fun tp_is_empty!43869 () Bool)

(declare-fun tp!1932470 () Bool)

(assert (=> b!7011400 (= e!4214586 (and tp_is_empty!43869 tp!1932470))))

(declare-fun b!7011415 () Bool)

(declare-fun e!4214596 () Bool)

(assert (=> b!7011415 (= e!4214601 e!4214596)))

(declare-fun res!2861024 () Bool)

(assert (=> b!7011415 (=> res!2861024 e!4214596)))

(declare-fun lt!2504777 () (Set Context!12636))

(declare-fun lt!2504796 () (Set Context!12636))

(assert (=> b!7011415 (= res!2861024 (not (= lt!2504777 lt!2504796)))))

(declare-fun lt!2504802 () (Set Context!12636))

(assert (=> b!7011415 (= (flatMap!2308 lt!2504802 lambda!408693) (derivationStepZipperUp!1972 lt!2504803 (h!73836 s!7408)))))

(declare-fun lt!2504779 () Unit!161322)

(assert (=> b!7011415 (= lt!2504779 (lemmaFlatMapOnSingletonSet!1823 lt!2504802 lt!2504803 lambda!408693))))

(assert (=> b!7011415 (= lt!2504796 (derivationStepZipperUp!1972 lt!2504803 (h!73836 s!7408)))))

(assert (=> b!7011415 (= lt!2504777 (derivationStepZipper!2802 lt!2504802 (h!73836 s!7408)))))

(assert (=> b!7011415 (= lt!2504802 (set.insert lt!2504803 (as set.empty (Set Context!12636))))))

(declare-fun b!7011416 () Bool)

(declare-fun e!4214593 () Bool)

(assert (=> b!7011416 (= e!4214596 e!4214593)))

(declare-fun res!2861027 () Bool)

(assert (=> b!7011416 (=> res!2861027 e!4214593)))

(declare-fun lt!2504804 () (Set Context!12636))

(assert (=> b!7011416 (= res!2861027 (not (= lt!2504777 lt!2504804)))))

(declare-fun lt!2504768 () (Set Context!12636))

(assert (=> b!7011416 (= lt!2504804 (set.union lt!2504781 lt!2504768))))

(assert (=> b!7011416 (= lt!2504768 (derivationStepZipperUp!1972 lt!2504769 (h!73836 s!7408)))))

(assert (=> b!7011417 (= e!4214600 e!4214595)))

(declare-fun res!2861025 () Bool)

(assert (=> b!7011417 (=> res!2861025 e!4214595)))

(assert (=> b!7011417 (= res!2861025 (or (not (= lt!2504764 lt!2504793)) (not (set.member lt!2504803 z1!570))))))

(assert (=> b!7011417 (= lt!2504764 (Context!12637 (++!15323 (exprs!6818 lt!2504803) (exprs!6818 ct2!306))))))

(declare-fun lt!2504762 () Unit!161322)

(assert (=> b!7011417 (= lt!2504762 (lemmaConcatPreservesForall!658 (exprs!6818 lt!2504803) (exprs!6818 ct2!306) lambda!408692))))

(declare-fun lambda!408691 () Int)

(declare-fun mapPost2!177 ((Set Context!12636) Int Context!12636) Context!12636)

(assert (=> b!7011417 (= lt!2504803 (mapPost2!177 z1!570 lambda!408691 lt!2504793))))

(declare-fun b!7011418 () Bool)

(declare-fun res!2861030 () Bool)

(assert (=> b!7011418 (=> res!2861030 e!4214601)))

(assert (=> b!7011418 (= res!2861030 (not (matchZipper!2862 lt!2504761 (_2!37278 lt!2504795))))))

(declare-fun b!7011419 () Bool)

(declare-fun validRegex!8892 (Regex!17322) Bool)

(assert (=> b!7011419 (= e!4214593 (validRegex!8892 (h!73835 (exprs!6818 lt!2504803))))))

(assert (=> b!7011419 (matchZipper!2862 lt!2504804 (_1!37278 lt!2504795))))

(declare-fun lt!2504794 () Unit!161322)

(assert (=> b!7011419 (= lt!2504794 (lemmaZipperConcatMatchesSameAsBothZippers!1495 lt!2504781 lt!2504768 (_1!37278 lt!2504795)))))

(declare-fun b!7011420 () Bool)

(assert (=> b!7011420 (= e!4214591 e!4214590)))

(declare-fun res!2861013 () Bool)

(assert (=> b!7011420 (=> res!2861013 e!4214590)))

(assert (=> b!7011420 (= res!2861013 (matchZipper!2862 lt!2504792 (t!381267 s!7408)))))

(declare-fun lt!2504798 () Unit!161322)

(assert (=> b!7011420 (= lt!2504798 (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(assert (= (and start!675366 res!2861022) b!7011398))

(assert (= (and b!7011398 res!2861017) b!7011413))

(assert (= (and b!7011413 (not res!2861010)) b!7011410))

(assert (= (and b!7011410 (not res!2861029)) b!7011417))

(assert (= (and b!7011417 (not res!2861025)) b!7011405))

(assert (= (and b!7011405 (not res!2861021)) b!7011406))

(assert (= (and b!7011406 (not res!2861026)) b!7011409))

(assert (= (and b!7011409 (not res!2861015)) b!7011402))

(assert (= (and b!7011402 (not res!2861023)) b!7011403))

(assert (= (and b!7011403 (not res!2861014)) b!7011396))

(assert (= (and b!7011396 (not res!2861028)) b!7011412))

(assert (= (and b!7011412 (not res!2861018)) b!7011401))

(assert (= (and b!7011412 res!2861019) b!7011397))

(assert (= (and b!7011412 (not res!2861020)) b!7011399))

(assert (= (and b!7011399 (not res!2861011)) b!7011420))

(assert (= (and b!7011420 (not res!2861013)) b!7011408))

(assert (= (and b!7011408 (not res!2861012)) b!7011411))

(assert (= (and b!7011411 (not res!2861016)) b!7011418))

(assert (= (and b!7011418 (not res!2861030)) b!7011404))

(assert (= (and b!7011404 (not res!2861009)) b!7011415))

(assert (= (and b!7011415 (not res!2861024)) b!7011416))

(assert (= (and b!7011416 (not res!2861027)) b!7011419))

(assert (= (and start!675366 condSetEmpty!48380) setIsEmpty!48380))

(assert (= (and start!675366 (not condSetEmpty!48380)) setNonEmpty!48380))

(assert (= setNonEmpty!48380 b!7011407))

(assert (= start!675366 b!7011414))

(assert (= (and start!675366 (is-Cons!67388 s!7408)) b!7011400))

(declare-fun m!7709578 () Bool)

(assert (=> b!7011417 m!7709578))

(declare-fun m!7709580 () Bool)

(assert (=> b!7011417 m!7709580))

(declare-fun m!7709582 () Bool)

(assert (=> b!7011417 m!7709582))

(declare-fun m!7709584 () Bool)

(assert (=> b!7011417 m!7709584))

(declare-fun m!7709586 () Bool)

(assert (=> b!7011410 m!7709586))

(declare-fun m!7709588 () Bool)

(assert (=> b!7011411 m!7709588))

(declare-fun m!7709590 () Bool)

(assert (=> b!7011411 m!7709590))

(declare-fun m!7709592 () Bool)

(assert (=> b!7011411 m!7709592))

(declare-fun m!7709594 () Bool)

(assert (=> b!7011411 m!7709594))

(declare-fun m!7709596 () Bool)

(assert (=> b!7011411 m!7709596))

(declare-fun m!7709598 () Bool)

(assert (=> b!7011411 m!7709598))

(declare-fun m!7709600 () Bool)

(assert (=> b!7011411 m!7709600))

(declare-fun m!7709602 () Bool)

(assert (=> b!7011411 m!7709602))

(declare-fun m!7709604 () Bool)

(assert (=> b!7011411 m!7709604))

(declare-fun m!7709606 () Bool)

(assert (=> b!7011411 m!7709606))

(assert (=> b!7011411 m!7709604))

(declare-fun m!7709608 () Bool)

(assert (=> b!7011418 m!7709608))

(declare-fun m!7709610 () Bool)

(assert (=> b!7011404 m!7709610))

(declare-fun m!7709612 () Bool)

(assert (=> b!7011419 m!7709612))

(declare-fun m!7709614 () Bool)

(assert (=> b!7011419 m!7709614))

(declare-fun m!7709616 () Bool)

(assert (=> b!7011419 m!7709616))

(declare-fun m!7709618 () Bool)

(assert (=> b!7011420 m!7709618))

(assert (=> b!7011420 m!7709604))

(assert (=> b!7011401 m!7709618))

(assert (=> b!7011406 m!7709582))

(declare-fun m!7709620 () Bool)

(assert (=> b!7011406 m!7709620))

(declare-fun m!7709622 () Bool)

(assert (=> b!7011406 m!7709622))

(declare-fun m!7709624 () Bool)

(assert (=> b!7011406 m!7709624))

(declare-fun m!7709626 () Bool)

(assert (=> b!7011406 m!7709626))

(assert (=> b!7011412 m!7709604))

(assert (=> b!7011412 m!7709604))

(declare-fun m!7709628 () Bool)

(assert (=> b!7011412 m!7709628))

(declare-fun m!7709630 () Bool)

(assert (=> b!7011412 m!7709630))

(assert (=> b!7011412 m!7709604))

(declare-fun m!7709632 () Bool)

(assert (=> b!7011412 m!7709632))

(declare-fun m!7709634 () Bool)

(assert (=> b!7011412 m!7709634))

(declare-fun m!7709636 () Bool)

(assert (=> b!7011413 m!7709636))

(declare-fun m!7709638 () Bool)

(assert (=> b!7011413 m!7709638))

(declare-fun m!7709640 () Bool)

(assert (=> b!7011413 m!7709640))

(declare-fun m!7709642 () Bool)

(assert (=> b!7011413 m!7709642))

(declare-fun m!7709644 () Bool)

(assert (=> b!7011413 m!7709644))

(declare-fun m!7709646 () Bool)

(assert (=> b!7011413 m!7709646))

(declare-fun m!7709648 () Bool)

(assert (=> b!7011405 m!7709648))

(assert (=> b!7011405 m!7709582))

(assert (=> b!7011408 m!7709604))

(assert (=> b!7011408 m!7709604))

(declare-fun m!7709650 () Bool)

(assert (=> b!7011402 m!7709650))

(declare-fun m!7709652 () Bool)

(assert (=> start!675366 m!7709652))

(declare-fun m!7709654 () Bool)

(assert (=> start!675366 m!7709654))

(declare-fun m!7709656 () Bool)

(assert (=> start!675366 m!7709656))

(assert (=> b!7011396 m!7709604))

(declare-fun m!7709658 () Bool)

(assert (=> b!7011396 m!7709658))

(declare-fun m!7709660 () Bool)

(assert (=> b!7011396 m!7709660))

(assert (=> b!7011396 m!7709604))

(declare-fun m!7709662 () Bool)

(assert (=> b!7011396 m!7709662))

(declare-fun m!7709664 () Bool)

(assert (=> b!7011403 m!7709664))

(declare-fun m!7709666 () Bool)

(assert (=> b!7011403 m!7709666))

(declare-fun m!7709668 () Bool)

(assert (=> b!7011416 m!7709668))

(declare-fun m!7709670 () Bool)

(assert (=> setNonEmpty!48380 m!7709670))

(declare-fun m!7709672 () Bool)

(assert (=> b!7011415 m!7709672))

(declare-fun m!7709674 () Bool)

(assert (=> b!7011415 m!7709674))

(declare-fun m!7709676 () Bool)

(assert (=> b!7011415 m!7709676))

(declare-fun m!7709678 () Bool)

(assert (=> b!7011415 m!7709678))

(declare-fun m!7709680 () Bool)

(assert (=> b!7011415 m!7709680))

(assert (=> b!7011397 m!7709618))

(assert (=> b!7011397 m!7709604))

(push 1)

(assert (not b!7011416))

(assert (not start!675366))

(assert (not b!7011411))

(assert (not b!7011418))

(assert (not b!7011408))

(assert (not b!7011403))

(assert (not b!7011397))

(assert (not b!7011400))

(assert (not b!7011414))

(assert (not b!7011405))

(assert tp_is_empty!43869)

(assert (not b!7011419))

(assert (not b!7011402))

(assert (not b!7011404))

(assert (not b!7011420))

(assert (not b!7011406))

(assert (not b!7011413))

(assert (not b!7011407))

(assert (not b!7011417))

(assert (not b!7011401))

(assert (not b!7011412))

(assert (not setNonEmpty!48380))

(assert (not b!7011396))

(assert (not b!7011415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1866223 () Bool)

(declare-fun d!2185617 () Bool)

(assert (= bs!1866223 (and d!2185617 b!7011417)))

(declare-fun lambda!408742 () Int)

(assert (=> bs!1866223 (= lambda!408742 lambda!408691)))

(assert (=> d!2185617 true))

(declare-fun map!15615 ((Set Context!12636) Int) (Set Context!12636))

(assert (=> d!2185617 (= (appendTo!443 lt!2504781 ct2!306) (map!15615 lt!2504781 lambda!408742))))

(declare-fun bs!1866224 () Bool)

(assert (= bs!1866224 d!2185617))

(declare-fun m!7709786 () Bool)

(assert (=> bs!1866224 m!7709786))

(assert (=> b!7011411 d!2185617))

(declare-fun d!2185619 () Bool)

(assert (=> d!2185619 (isDefined!13508 (findConcatSeparationZippers!323 lt!2504781 (set.insert ct2!306 (as set.empty (Set Context!12636))) Nil!67388 (t!381267 s!7408) (t!381267 s!7408)))))

(declare-fun lt!2504950 () Unit!161322)

(declare-fun choose!52720 ((Set Context!12636) Context!12636 List!67512) Unit!161322)

(assert (=> d!2185619 (= lt!2504950 (choose!52720 lt!2504781 ct2!306 (t!381267 s!7408)))))

(assert (=> d!2185619 (matchZipper!2862 (appendTo!443 lt!2504781 ct2!306) (t!381267 s!7408))))

(assert (=> d!2185619 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!323 lt!2504781 ct2!306 (t!381267 s!7408)) lt!2504950)))

(declare-fun bs!1866225 () Bool)

(assert (= bs!1866225 d!2185619))

(assert (=> bs!1866225 m!7709606))

(assert (=> bs!1866225 m!7709594))

(assert (=> bs!1866225 m!7709606))

(declare-fun m!7709788 () Bool)

(assert (=> bs!1866225 m!7709788))

(assert (=> bs!1866225 m!7709594))

(declare-fun m!7709790 () Bool)

(assert (=> bs!1866225 m!7709790))

(assert (=> bs!1866225 m!7709790))

(declare-fun m!7709792 () Bool)

(assert (=> bs!1866225 m!7709792))

(declare-fun m!7709794 () Bool)

(assert (=> bs!1866225 m!7709794))

(assert (=> b!7011411 d!2185619))

(declare-fun b!7011526 () Bool)

(declare-fun e!4214667 () Bool)

(assert (=> b!7011526 (= e!4214667 (matchZipper!2862 lt!2504761 (t!381267 s!7408)))))

(declare-fun b!7011527 () Bool)

(declare-fun e!4214666 () Bool)

(declare-fun lt!2504959 () Option!16807)

(assert (=> b!7011527 (= e!4214666 (not (isDefined!13508 lt!2504959)))))

(declare-fun b!7011528 () Bool)

(declare-fun e!4214668 () Option!16807)

(assert (=> b!7011528 (= e!4214668 (Some!16806 (tuple2!67951 Nil!67388 (t!381267 s!7408))))))

(declare-fun b!7011529 () Bool)

(declare-fun res!2861113 () Bool)

(declare-fun e!4214670 () Bool)

(assert (=> b!7011529 (=> (not res!2861113) (not e!4214670))))

(assert (=> b!7011529 (= res!2861113 (matchZipper!2862 lt!2504761 (_2!37278 (get!23630 lt!2504959))))))

(declare-fun b!7011530 () Bool)

(declare-fun lt!2504958 () Unit!161322)

(declare-fun lt!2504957 () Unit!161322)

(assert (=> b!7011530 (= lt!2504958 lt!2504957)))

(assert (=> b!7011530 (= (++!15324 (++!15324 Nil!67388 (Cons!67388 (h!73836 (t!381267 s!7408)) Nil!67388)) (t!381267 (t!381267 s!7408))) (t!381267 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2896 (List!67512 C!34914 List!67512 List!67512) Unit!161322)

(assert (=> b!7011530 (= lt!2504957 (lemmaMoveElementToOtherListKeepsConcatEq!2896 Nil!67388 (h!73836 (t!381267 s!7408)) (t!381267 (t!381267 s!7408)) (t!381267 s!7408)))))

(declare-fun e!4214669 () Option!16807)

(assert (=> b!7011530 (= e!4214669 (findConcatSeparationZippers!323 lt!2504781 lt!2504761 (++!15324 Nil!67388 (Cons!67388 (h!73836 (t!381267 s!7408)) Nil!67388)) (t!381267 (t!381267 s!7408)) (t!381267 s!7408)))))

(declare-fun b!7011531 () Bool)

(assert (=> b!7011531 (= e!4214670 (= (++!15324 (_1!37278 (get!23630 lt!2504959)) (_2!37278 (get!23630 lt!2504959))) (t!381267 s!7408)))))

(declare-fun d!2185621 () Bool)

(assert (=> d!2185621 e!4214666))

(declare-fun res!2861112 () Bool)

(assert (=> d!2185621 (=> res!2861112 e!4214666)))

(assert (=> d!2185621 (= res!2861112 e!4214670)))

(declare-fun res!2861109 () Bool)

(assert (=> d!2185621 (=> (not res!2861109) (not e!4214670))))

(assert (=> d!2185621 (= res!2861109 (isDefined!13508 lt!2504959))))

(assert (=> d!2185621 (= lt!2504959 e!4214668)))

(declare-fun c!1302445 () Bool)

(assert (=> d!2185621 (= c!1302445 e!4214667)))

(declare-fun res!2861111 () Bool)

(assert (=> d!2185621 (=> (not res!2861111) (not e!4214667))))

(assert (=> d!2185621 (= res!2861111 (matchZipper!2862 lt!2504781 Nil!67388))))

(assert (=> d!2185621 (= (++!15324 Nil!67388 (t!381267 s!7408)) (t!381267 s!7408))))

(assert (=> d!2185621 (= (findConcatSeparationZippers!323 lt!2504781 lt!2504761 Nil!67388 (t!381267 s!7408) (t!381267 s!7408)) lt!2504959)))

(declare-fun b!7011532 () Bool)

(assert (=> b!7011532 (= e!4214669 None!16806)))

(declare-fun b!7011533 () Bool)

(declare-fun res!2861110 () Bool)

(assert (=> b!7011533 (=> (not res!2861110) (not e!4214670))))

(assert (=> b!7011533 (= res!2861110 (matchZipper!2862 lt!2504781 (_1!37278 (get!23630 lt!2504959))))))

(declare-fun b!7011534 () Bool)

(assert (=> b!7011534 (= e!4214668 e!4214669)))

(declare-fun c!1302446 () Bool)

(assert (=> b!7011534 (= c!1302446 (is-Nil!67388 (t!381267 s!7408)))))

(assert (= (and d!2185621 res!2861111) b!7011526))

(assert (= (and d!2185621 c!1302445) b!7011528))

(assert (= (and d!2185621 (not c!1302445)) b!7011534))

(assert (= (and b!7011534 c!1302446) b!7011532))

(assert (= (and b!7011534 (not c!1302446)) b!7011530))

(assert (= (and d!2185621 res!2861109) b!7011533))

(assert (= (and b!7011533 res!2861110) b!7011529))

(assert (= (and b!7011529 res!2861113) b!7011531))

(assert (= (and d!2185621 (not res!2861112)) b!7011527))

(declare-fun m!7709796 () Bool)

(assert (=> b!7011526 m!7709796))

(declare-fun m!7709798 () Bool)

(assert (=> b!7011530 m!7709798))

(assert (=> b!7011530 m!7709798))

(declare-fun m!7709800 () Bool)

(assert (=> b!7011530 m!7709800))

(declare-fun m!7709802 () Bool)

(assert (=> b!7011530 m!7709802))

(assert (=> b!7011530 m!7709798))

(declare-fun m!7709804 () Bool)

(assert (=> b!7011530 m!7709804))

(declare-fun m!7709806 () Bool)

(assert (=> b!7011527 m!7709806))

(declare-fun m!7709808 () Bool)

(assert (=> b!7011533 m!7709808))

(declare-fun m!7709810 () Bool)

(assert (=> b!7011533 m!7709810))

(assert (=> b!7011531 m!7709808))

(declare-fun m!7709812 () Bool)

(assert (=> b!7011531 m!7709812))

(assert (=> b!7011529 m!7709808))

(declare-fun m!7709814 () Bool)

(assert (=> b!7011529 m!7709814))

(assert (=> d!2185621 m!7709806))

(declare-fun m!7709816 () Bool)

(assert (=> d!2185621 m!7709816))

(declare-fun m!7709818 () Bool)

(assert (=> d!2185621 m!7709818))

(assert (=> b!7011411 d!2185621))

(declare-fun d!2185623 () Bool)

(declare-fun forall!16239 (List!67511 Int) Bool)

(assert (=> d!2185623 (forall!16239 (++!15323 lt!2504788 (exprs!6818 ct2!306)) lambda!408692)))

(declare-fun lt!2504962 () Unit!161322)

(declare-fun choose!52721 (List!67511 List!67511 Int) Unit!161322)

(assert (=> d!2185623 (= lt!2504962 (choose!52721 lt!2504788 (exprs!6818 ct2!306) lambda!408692))))

(assert (=> d!2185623 (forall!16239 lt!2504788 lambda!408692)))

(assert (=> d!2185623 (= (lemmaConcatPreservesForall!658 lt!2504788 (exprs!6818 ct2!306) lambda!408692) lt!2504962)))

(declare-fun bs!1866226 () Bool)

(assert (= bs!1866226 d!2185623))

(assert (=> bs!1866226 m!7709662))

(assert (=> bs!1866226 m!7709662))

(declare-fun m!7709820 () Bool)

(assert (=> bs!1866226 m!7709820))

(declare-fun m!7709822 () Bool)

(assert (=> bs!1866226 m!7709822))

(declare-fun m!7709824 () Bool)

(assert (=> bs!1866226 m!7709824))

(assert (=> b!7011411 d!2185623))

(declare-fun d!2185625 () Bool)

(declare-fun c!1302449 () Bool)

(declare-fun isEmpty!39360 (List!67512) Bool)

(assert (=> d!2185625 (= c!1302449 (isEmpty!39360 (_1!37278 lt!2504795)))))

(declare-fun e!4214673 () Bool)

(assert (=> d!2185625 (= (matchZipper!2862 lt!2504781 (_1!37278 lt!2504795)) e!4214673)))

(declare-fun b!7011539 () Bool)

(declare-fun nullableZipper!2490 ((Set Context!12636)) Bool)

(assert (=> b!7011539 (= e!4214673 (nullableZipper!2490 lt!2504781))))

(declare-fun b!7011540 () Bool)

(declare-fun head!14176 (List!67512) C!34914)

(declare-fun tail!13401 (List!67512) List!67512)

(assert (=> b!7011540 (= e!4214673 (matchZipper!2862 (derivationStepZipper!2802 lt!2504781 (head!14176 (_1!37278 lt!2504795))) (tail!13401 (_1!37278 lt!2504795))))))

(assert (= (and d!2185625 c!1302449) b!7011539))

(assert (= (and d!2185625 (not c!1302449)) b!7011540))

(declare-fun m!7709826 () Bool)

(assert (=> d!2185625 m!7709826))

(declare-fun m!7709828 () Bool)

(assert (=> b!7011539 m!7709828))

(declare-fun m!7709830 () Bool)

(assert (=> b!7011540 m!7709830))

(assert (=> b!7011540 m!7709830))

(declare-fun m!7709832 () Bool)

(assert (=> b!7011540 m!7709832))

(declare-fun m!7709834 () Bool)

(assert (=> b!7011540 m!7709834))

(assert (=> b!7011540 m!7709832))

(assert (=> b!7011540 m!7709834))

(declare-fun m!7709836 () Bool)

(assert (=> b!7011540 m!7709836))

(assert (=> b!7011411 d!2185625))

(declare-fun b!7011563 () Bool)

(declare-fun c!1302464 () Bool)

(declare-fun e!4214690 () Bool)

(assert (=> b!7011563 (= c!1302464 e!4214690)))

(declare-fun res!2861116 () Bool)

(assert (=> b!7011563 (=> (not res!2861116) (not e!4214690))))

(assert (=> b!7011563 (= res!2861116 (is-Concat!26167 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun e!4214686 () (Set Context!12636))

(declare-fun e!4214687 () (Set Context!12636))

(assert (=> b!7011563 (= e!4214686 e!4214687)))

(declare-fun b!7011565 () Bool)

(declare-fun e!4214689 () (Set Context!12636))

(assert (=> b!7011565 (= e!4214689 (as set.empty (Set Context!12636)))))

(declare-fun b!7011566 () Bool)

(declare-fun call!636852 () (Set Context!12636))

(declare-fun call!636854 () (Set Context!12636))

(assert (=> b!7011566 (= e!4214686 (set.union call!636852 call!636854))))

(declare-fun c!1302460 () Bool)

(declare-fun call!636851 () List!67511)

(declare-fun bm!636844 () Bool)

(declare-fun $colon$colon!2531 (List!67511 Regex!17322) List!67511)

(assert (=> bm!636844 (= call!636851 ($colon$colon!2531 (exprs!6818 lt!2504769) (ite (or c!1302464 c!1302460) (regTwo!35156 (h!73835 (exprs!6818 lt!2504803))) (h!73835 (exprs!6818 lt!2504803)))))))

(declare-fun b!7011567 () Bool)

(declare-fun e!4214691 () (Set Context!12636))

(declare-fun call!636849 () (Set Context!12636))

(assert (=> b!7011567 (= e!4214691 call!636849)))

(declare-fun b!7011568 () Bool)

(declare-fun call!636853 () (Set Context!12636))

(assert (=> b!7011568 (= e!4214687 (set.union call!636854 call!636853))))

(declare-fun b!7011569 () Bool)

(assert (=> b!7011569 (= e!4214687 e!4214691)))

(assert (=> b!7011569 (= c!1302460 (is-Concat!26167 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun c!1302461 () Bool)

(declare-fun call!636850 () List!67511)

(declare-fun bm!636845 () Bool)

(assert (=> bm!636845 (= call!636852 (derivationStepZipperDown!2040 (ite c!1302461 (regOne!35157 (h!73835 (exprs!6818 lt!2504803))) (ite c!1302464 (regTwo!35156 (h!73835 (exprs!6818 lt!2504803))) (ite c!1302460 (regOne!35156 (h!73835 (exprs!6818 lt!2504803))) (reg!17651 (h!73835 (exprs!6818 lt!2504803)))))) (ite (or c!1302461 c!1302464) lt!2504769 (Context!12637 call!636850)) (h!73836 s!7408)))))

(declare-fun b!7011570 () Bool)

(declare-fun e!4214688 () (Set Context!12636))

(assert (=> b!7011570 (= e!4214688 e!4214686)))

(assert (=> b!7011570 (= c!1302461 (is-Union!17322 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun bm!636846 () Bool)

(assert (=> bm!636846 (= call!636849 call!636853)))

(declare-fun b!7011571 () Bool)

(assert (=> b!7011571 (= e!4214688 (set.insert lt!2504769 (as set.empty (Set Context!12636))))))

(declare-fun bm!636847 () Bool)

(assert (=> bm!636847 (= call!636850 call!636851)))

(declare-fun bm!636848 () Bool)

(assert (=> bm!636848 (= call!636853 call!636852)))

(declare-fun b!7011572 () Bool)

(assert (=> b!7011572 (= e!4214690 (nullable!7082 (regOne!35156 (h!73835 (exprs!6818 lt!2504803)))))))

(declare-fun b!7011573 () Bool)

(declare-fun c!1302463 () Bool)

(assert (=> b!7011573 (= c!1302463 (is-Star!17322 (h!73835 (exprs!6818 lt!2504803))))))

(assert (=> b!7011573 (= e!4214691 e!4214689)))

(declare-fun bm!636849 () Bool)

(assert (=> bm!636849 (= call!636854 (derivationStepZipperDown!2040 (ite c!1302461 (regTwo!35157 (h!73835 (exprs!6818 lt!2504803))) (regOne!35156 (h!73835 (exprs!6818 lt!2504803)))) (ite c!1302461 lt!2504769 (Context!12637 call!636851)) (h!73836 s!7408)))))

(declare-fun d!2185627 () Bool)

(declare-fun c!1302462 () Bool)

(assert (=> d!2185627 (= c!1302462 (and (is-ElementMatch!17322 (h!73835 (exprs!6818 lt!2504803))) (= (c!1302428 (h!73835 (exprs!6818 lt!2504803))) (h!73836 s!7408))))))

(assert (=> d!2185627 (= (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504803)) lt!2504769 (h!73836 s!7408)) e!4214688)))

(declare-fun b!7011564 () Bool)

(assert (=> b!7011564 (= e!4214689 call!636849)))

(assert (= (and d!2185627 c!1302462) b!7011571))

(assert (= (and d!2185627 (not c!1302462)) b!7011570))

(assert (= (and b!7011570 c!1302461) b!7011566))

(assert (= (and b!7011570 (not c!1302461)) b!7011563))

(assert (= (and b!7011563 res!2861116) b!7011572))

(assert (= (and b!7011563 c!1302464) b!7011568))

(assert (= (and b!7011563 (not c!1302464)) b!7011569))

(assert (= (and b!7011569 c!1302460) b!7011567))

(assert (= (and b!7011569 (not c!1302460)) b!7011573))

(assert (= (and b!7011573 c!1302463) b!7011564))

(assert (= (and b!7011573 (not c!1302463)) b!7011565))

(assert (= (or b!7011567 b!7011564) bm!636847))

(assert (= (or b!7011567 b!7011564) bm!636846))

(assert (= (or b!7011568 bm!636846) bm!636848))

(assert (= (or b!7011568 bm!636847) bm!636844))

(assert (= (or b!7011566 bm!636848) bm!636845))

(assert (= (or b!7011566 b!7011568) bm!636849))

(declare-fun m!7709838 () Bool)

(assert (=> bm!636849 m!7709838))

(declare-fun m!7709840 () Bool)

(assert (=> bm!636845 m!7709840))

(declare-fun m!7709842 () Bool)

(assert (=> b!7011572 m!7709842))

(declare-fun m!7709844 () Bool)

(assert (=> b!7011571 m!7709844))

(declare-fun m!7709846 () Bool)

(assert (=> bm!636844 m!7709846))

(assert (=> b!7011411 d!2185627))

(declare-fun d!2185629 () Bool)

(assert (=> d!2185629 (= (get!23630 lt!2504801) (v!53084 lt!2504801))))

(assert (=> b!7011411 d!2185629))

(declare-fun d!2185631 () Bool)

(declare-fun isEmpty!39361 (Option!16807) Bool)

(assert (=> d!2185631 (= (isDefined!13508 lt!2504801) (not (isEmpty!39361 lt!2504801)))))

(declare-fun bs!1866227 () Bool)

(assert (= bs!1866227 d!2185631))

(declare-fun m!7709848 () Bool)

(assert (=> bs!1866227 m!7709848))

(assert (=> b!7011411 d!2185631))

(declare-fun bs!1866228 () Bool)

(declare-fun d!2185633 () Bool)

(assert (= bs!1866228 (and d!2185633 b!7011417)))

(declare-fun lambda!408745 () Int)

(assert (=> bs!1866228 (= lambda!408745 lambda!408692)))

(assert (=> d!2185633 (= (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504803)) (Context!12637 (++!15323 (exprs!6818 lt!2504769) (exprs!6818 ct2!306))) (h!73836 s!7408)) (appendTo!443 (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504803)) lt!2504769 (h!73836 s!7408)) ct2!306))))

(declare-fun lt!2504968 () Unit!161322)

(assert (=> d!2185633 (= lt!2504968 (lemmaConcatPreservesForall!658 (exprs!6818 lt!2504769) (exprs!6818 ct2!306) lambda!408745))))

(declare-fun lt!2504967 () Unit!161322)

(declare-fun choose!52722 (Context!12636 Regex!17322 C!34914 Context!12636) Unit!161322)

(assert (=> d!2185633 (= lt!2504967 (choose!52722 lt!2504769 (h!73835 (exprs!6818 lt!2504803)) (h!73836 s!7408) ct2!306))))

(assert (=> d!2185633 (validRegex!8892 (h!73835 (exprs!6818 lt!2504803)))))

(assert (=> d!2185633 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!21 lt!2504769 (h!73835 (exprs!6818 lt!2504803)) (h!73836 s!7408) ct2!306) lt!2504967)))

(declare-fun bs!1866229 () Bool)

(assert (= bs!1866229 d!2185633))

(declare-fun m!7709850 () Bool)

(assert (=> bs!1866229 m!7709850))

(assert (=> bs!1866229 m!7709612))

(assert (=> bs!1866229 m!7709602))

(declare-fun m!7709852 () Bool)

(assert (=> bs!1866229 m!7709852))

(declare-fun m!7709854 () Bool)

(assert (=> bs!1866229 m!7709854))

(assert (=> bs!1866229 m!7709602))

(declare-fun m!7709856 () Bool)

(assert (=> bs!1866229 m!7709856))

(declare-fun m!7709858 () Bool)

(assert (=> bs!1866229 m!7709858))

(assert (=> b!7011411 d!2185633))

(declare-fun bs!1866230 () Bool)

(declare-fun d!2185635 () Bool)

(assert (= bs!1866230 (and d!2185635 b!7011417)))

(declare-fun lambda!408748 () Int)

(assert (=> bs!1866230 (= lambda!408748 lambda!408692)))

(declare-fun bs!1866231 () Bool)

(assert (= bs!1866231 (and d!2185635 d!2185633)))

(assert (=> bs!1866231 (= lambda!408748 lambda!408745)))

(assert (=> d!2185635 (= (inv!86165 setElem!48380) (forall!16239 (exprs!6818 setElem!48380) lambda!408748))))

(declare-fun bs!1866232 () Bool)

(assert (= bs!1866232 d!2185635))

(declare-fun m!7709860 () Bool)

(assert (=> bs!1866232 m!7709860))

(assert (=> setNonEmpty!48380 d!2185635))

(declare-fun d!2185637 () Bool)

(declare-fun c!1302466 () Bool)

(assert (=> d!2185637 (= c!1302466 (isEmpty!39360 (t!381267 s!7408)))))

(declare-fun e!4214692 () Bool)

(assert (=> d!2185637 (= (matchZipper!2862 lt!2504792 (t!381267 s!7408)) e!4214692)))

(declare-fun b!7011574 () Bool)

(assert (=> b!7011574 (= e!4214692 (nullableZipper!2490 lt!2504792))))

(declare-fun b!7011575 () Bool)

(assert (=> b!7011575 (= e!4214692 (matchZipper!2862 (derivationStepZipper!2802 lt!2504792 (head!14176 (t!381267 s!7408))) (tail!13401 (t!381267 s!7408))))))

(assert (= (and d!2185637 c!1302466) b!7011574))

(assert (= (and d!2185637 (not c!1302466)) b!7011575))

(declare-fun m!7709862 () Bool)

(assert (=> d!2185637 m!7709862))

(declare-fun m!7709864 () Bool)

(assert (=> b!7011574 m!7709864))

(declare-fun m!7709866 () Bool)

(assert (=> b!7011575 m!7709866))

(assert (=> b!7011575 m!7709866))

(declare-fun m!7709868 () Bool)

(assert (=> b!7011575 m!7709868))

(declare-fun m!7709870 () Bool)

(assert (=> b!7011575 m!7709870))

(assert (=> b!7011575 m!7709868))

(assert (=> b!7011575 m!7709870))

(declare-fun m!7709872 () Bool)

(assert (=> b!7011575 m!7709872))

(assert (=> b!7011420 d!2185637))

(assert (=> b!7011420 d!2185623))

(declare-fun d!2185639 () Bool)

(declare-fun e!4214695 () Bool)

(assert (=> d!2185639 e!4214695))

(declare-fun res!2861119 () Bool)

(assert (=> d!2185639 (=> (not res!2861119) (not e!4214695))))

(declare-fun lt!2504971 () List!67513)

(declare-fun noDuplicate!2568 (List!67513) Bool)

(assert (=> d!2185639 (= res!2861119 (noDuplicate!2568 lt!2504971))))

(declare-fun choose!52723 ((Set Context!12636)) List!67513)

(assert (=> d!2185639 (= lt!2504971 (choose!52723 lt!2504799))))

(assert (=> d!2185639 (= (toList!10682 lt!2504799) lt!2504971)))

(declare-fun b!7011578 () Bool)

(declare-fun content!13379 (List!67513) (Set Context!12636))

(assert (=> b!7011578 (= e!4214695 (= (content!13379 lt!2504971) lt!2504799))))

(assert (= (and d!2185639 res!2861119) b!7011578))

(declare-fun m!7709874 () Bool)

(assert (=> d!2185639 m!7709874))

(declare-fun m!7709876 () Bool)

(assert (=> d!2185639 m!7709876))

(declare-fun m!7709878 () Bool)

(assert (=> b!7011578 m!7709878))

(assert (=> b!7011413 d!2185639))

(declare-fun bs!1866233 () Bool)

(declare-fun d!2185641 () Bool)

(assert (= bs!1866233 (and d!2185641 b!7011413)))

(declare-fun lambda!408751 () Int)

(assert (=> bs!1866233 (not (= lambda!408751 lambda!408690))))

(assert (=> d!2185641 true))

(declare-fun order!28037 () Int)

(declare-fun dynLambda!27110 (Int Int) Int)

(assert (=> d!2185641 (< (dynLambda!27110 order!28037 lambda!408690) (dynLambda!27110 order!28037 lambda!408751))))

(declare-fun forall!16240 (List!67513 Int) Bool)

(assert (=> d!2185641 (= (exists!3168 lt!2504782 lambda!408690) (not (forall!16240 lt!2504782 lambda!408751)))))

(declare-fun bs!1866234 () Bool)

(assert (= bs!1866234 d!2185641))

(declare-fun m!7709880 () Bool)

(assert (=> bs!1866234 m!7709880))

(assert (=> b!7011413 d!2185641))

(declare-fun d!2185643 () Bool)

(declare-fun c!1302467 () Bool)

(assert (=> d!2185643 (= c!1302467 (isEmpty!39360 s!7408))))

(declare-fun e!4214696 () Bool)

(assert (=> d!2185643 (= (matchZipper!2862 lt!2504784 s!7408) e!4214696)))

(declare-fun b!7011581 () Bool)

(assert (=> b!7011581 (= e!4214696 (nullableZipper!2490 lt!2504784))))

(declare-fun b!7011582 () Bool)

(assert (=> b!7011582 (= e!4214696 (matchZipper!2862 (derivationStepZipper!2802 lt!2504784 (head!14176 s!7408)) (tail!13401 s!7408)))))

(assert (= (and d!2185643 c!1302467) b!7011581))

(assert (= (and d!2185643 (not c!1302467)) b!7011582))

(declare-fun m!7709882 () Bool)

(assert (=> d!2185643 m!7709882))

(declare-fun m!7709884 () Bool)

(assert (=> b!7011581 m!7709884))

(declare-fun m!7709886 () Bool)

(assert (=> b!7011582 m!7709886))

(assert (=> b!7011582 m!7709886))

(declare-fun m!7709888 () Bool)

(assert (=> b!7011582 m!7709888))

(declare-fun m!7709890 () Bool)

(assert (=> b!7011582 m!7709890))

(assert (=> b!7011582 m!7709888))

(assert (=> b!7011582 m!7709890))

(declare-fun m!7709892 () Bool)

(assert (=> b!7011582 m!7709892))

(assert (=> b!7011413 d!2185643))

(declare-fun bs!1866235 () Bool)

(declare-fun d!2185645 () Bool)

(assert (= bs!1866235 (and d!2185645 b!7011413)))

(declare-fun lambda!408754 () Int)

(assert (=> bs!1866235 (= lambda!408754 lambda!408690)))

(declare-fun bs!1866236 () Bool)

(assert (= bs!1866236 (and d!2185645 d!2185641)))

(assert (=> bs!1866236 (not (= lambda!408754 lambda!408751))))

(assert (=> d!2185645 true))

(assert (=> d!2185645 (exists!3168 lt!2504782 lambda!408754)))

(declare-fun lt!2504974 () Unit!161322)

(declare-fun choose!52724 (List!67513 List!67512) Unit!161322)

(assert (=> d!2185645 (= lt!2504974 (choose!52724 lt!2504782 s!7408))))

(assert (=> d!2185645 (matchZipper!2862 (content!13379 lt!2504782) s!7408)))

(assert (=> d!2185645 (= (lemmaZipperMatchesExistsMatchingContext!291 lt!2504782 s!7408) lt!2504974)))

(declare-fun bs!1866237 () Bool)

(assert (= bs!1866237 d!2185645))

(declare-fun m!7709894 () Bool)

(assert (=> bs!1866237 m!7709894))

(declare-fun m!7709896 () Bool)

(assert (=> bs!1866237 m!7709896))

(declare-fun m!7709898 () Bool)

(assert (=> bs!1866237 m!7709898))

(assert (=> bs!1866237 m!7709898))

(declare-fun m!7709900 () Bool)

(assert (=> bs!1866237 m!7709900))

(assert (=> b!7011413 d!2185645))

(declare-fun d!2185647 () Bool)

(declare-fun e!4214699 () Bool)

(assert (=> d!2185647 e!4214699))

(declare-fun res!2861122 () Bool)

(assert (=> d!2185647 (=> (not res!2861122) (not e!4214699))))

(declare-fun lt!2504977 () Context!12636)

(declare-fun dynLambda!27111 (Int Context!12636) Bool)

(assert (=> d!2185647 (= res!2861122 (dynLambda!27111 lambda!408690 lt!2504977))))

(declare-fun getWitness!1268 (List!67513 Int) Context!12636)

(assert (=> d!2185647 (= lt!2504977 (getWitness!1268 (toList!10682 lt!2504799) lambda!408690))))

(declare-fun exists!3170 ((Set Context!12636) Int) Bool)

(assert (=> d!2185647 (exists!3170 lt!2504799 lambda!408690)))

(assert (=> d!2185647 (= (getWitness!1266 lt!2504799 lambda!408690) lt!2504977)))

(declare-fun b!7011585 () Bool)

(assert (=> b!7011585 (= e!4214699 (set.member lt!2504977 lt!2504799))))

(assert (= (and d!2185647 res!2861122) b!7011585))

(declare-fun b_lambda!264407 () Bool)

(assert (=> (not b_lambda!264407) (not d!2185647)))

(declare-fun m!7709902 () Bool)

(assert (=> d!2185647 m!7709902))

(assert (=> d!2185647 m!7709640))

(assert (=> d!2185647 m!7709640))

(declare-fun m!7709904 () Bool)

(assert (=> d!2185647 m!7709904))

(declare-fun m!7709906 () Bool)

(assert (=> d!2185647 m!7709906))

(declare-fun m!7709908 () Bool)

(assert (=> b!7011585 m!7709908))

(assert (=> b!7011413 d!2185647))

(declare-fun d!2185649 () Bool)

(assert (=> d!2185649 (= (isEmpty!39358 (exprs!6818 lt!2504803)) (is-Nil!67387 (exprs!6818 lt!2504803)))))

(assert (=> b!7011402 d!2185649))

(declare-fun d!2185651 () Bool)

(declare-fun nullableFct!2684 (Regex!17322) Bool)

(assert (=> d!2185651 (= (nullable!7082 (h!73835 (exprs!6818 lt!2504803))) (nullableFct!2684 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun bs!1866238 () Bool)

(assert (= bs!1866238 d!2185651))

(declare-fun m!7709910 () Bool)

(assert (=> bs!1866238 m!7709910))

(assert (=> b!7011403 d!2185651))

(declare-fun d!2185653 () Bool)

(assert (=> d!2185653 (= (tail!13399 (exprs!6818 lt!2504803)) (t!381266 (exprs!6818 lt!2504803)))))

(assert (=> b!7011403 d!2185653))

(assert (=> b!7011401 d!2185637))

(assert (=> b!7011412 d!2185623))

(declare-fun e!4214702 () Bool)

(declare-fun d!2185655 () Bool)

(assert (=> d!2185655 (= (matchZipper!2862 (set.union lt!2504772 lt!2504792) (t!381267 s!7408)) e!4214702)))

(declare-fun res!2861125 () Bool)

(assert (=> d!2185655 (=> res!2861125 e!4214702)))

(assert (=> d!2185655 (= res!2861125 (matchZipper!2862 lt!2504772 (t!381267 s!7408)))))

(declare-fun lt!2504980 () Unit!161322)

(declare-fun choose!52725 ((Set Context!12636) (Set Context!12636) List!67512) Unit!161322)

(assert (=> d!2185655 (= lt!2504980 (choose!52725 lt!2504772 lt!2504792 (t!381267 s!7408)))))

(assert (=> d!2185655 (= (lemmaZipperConcatMatchesSameAsBothZippers!1495 lt!2504772 lt!2504792 (t!381267 s!7408)) lt!2504980)))

(declare-fun b!7011588 () Bool)

(assert (=> b!7011588 (= e!4214702 (matchZipper!2862 lt!2504792 (t!381267 s!7408)))))

(assert (= (and d!2185655 (not res!2861125)) b!7011588))

(declare-fun m!7709912 () Bool)

(assert (=> d!2185655 m!7709912))

(assert (=> d!2185655 m!7709634))

(declare-fun m!7709914 () Bool)

(assert (=> d!2185655 m!7709914))

(assert (=> b!7011588 m!7709618))

(assert (=> b!7011412 d!2185655))

(declare-fun d!2185657 () Bool)

(declare-fun c!1302470 () Bool)

(assert (=> d!2185657 (= c!1302470 (isEmpty!39360 (t!381267 s!7408)))))

(declare-fun e!4214703 () Bool)

(assert (=> d!2185657 (= (matchZipper!2862 lt!2504772 (t!381267 s!7408)) e!4214703)))

(declare-fun b!7011589 () Bool)

(assert (=> b!7011589 (= e!4214703 (nullableZipper!2490 lt!2504772))))

(declare-fun b!7011590 () Bool)

(assert (=> b!7011590 (= e!4214703 (matchZipper!2862 (derivationStepZipper!2802 lt!2504772 (head!14176 (t!381267 s!7408))) (tail!13401 (t!381267 s!7408))))))

(assert (= (and d!2185657 c!1302470) b!7011589))

(assert (= (and d!2185657 (not c!1302470)) b!7011590))

(assert (=> d!2185657 m!7709862))

(declare-fun m!7709916 () Bool)

(assert (=> b!7011589 m!7709916))

(assert (=> b!7011590 m!7709866))

(assert (=> b!7011590 m!7709866))

(declare-fun m!7709918 () Bool)

(assert (=> b!7011590 m!7709918))

(assert (=> b!7011590 m!7709870))

(assert (=> b!7011590 m!7709918))

(assert (=> b!7011590 m!7709870))

(declare-fun m!7709920 () Bool)

(assert (=> b!7011590 m!7709920))

(assert (=> b!7011412 d!2185657))

(declare-fun d!2185659 () Bool)

(declare-fun c!1302471 () Bool)

(assert (=> d!2185659 (= c!1302471 (isEmpty!39360 (t!381267 s!7408)))))

(declare-fun e!4214704 () Bool)

(assert (=> d!2185659 (= (matchZipper!2862 lt!2504797 (t!381267 s!7408)) e!4214704)))

(declare-fun b!7011591 () Bool)

(assert (=> b!7011591 (= e!4214704 (nullableZipper!2490 lt!2504797))))

(declare-fun b!7011592 () Bool)

(assert (=> b!7011592 (= e!4214704 (matchZipper!2862 (derivationStepZipper!2802 lt!2504797 (head!14176 (t!381267 s!7408))) (tail!13401 (t!381267 s!7408))))))

(assert (= (and d!2185659 c!1302471) b!7011591))

(assert (= (and d!2185659 (not c!1302471)) b!7011592))

(assert (=> d!2185659 m!7709862))

(declare-fun m!7709922 () Bool)

(assert (=> b!7011591 m!7709922))

(assert (=> b!7011592 m!7709866))

(assert (=> b!7011592 m!7709866))

(declare-fun m!7709924 () Bool)

(assert (=> b!7011592 m!7709924))

(assert (=> b!7011592 m!7709870))

(assert (=> b!7011592 m!7709924))

(assert (=> b!7011592 m!7709870))

(declare-fun m!7709926 () Bool)

(assert (=> b!7011592 m!7709926))

(assert (=> b!7011412 d!2185659))

(declare-fun d!2185661 () Bool)

(declare-fun c!1302472 () Bool)

(assert (=> d!2185661 (= c!1302472 (isEmpty!39360 (t!381267 s!7408)))))

(declare-fun e!4214705 () Bool)

(assert (=> d!2185661 (= (matchZipper!2862 lt!2504760 (t!381267 s!7408)) e!4214705)))

(declare-fun b!7011593 () Bool)

(assert (=> b!7011593 (= e!4214705 (nullableZipper!2490 lt!2504760))))

(declare-fun b!7011594 () Bool)

(assert (=> b!7011594 (= e!4214705 (matchZipper!2862 (derivationStepZipper!2802 lt!2504760 (head!14176 (t!381267 s!7408))) (tail!13401 (t!381267 s!7408))))))

(assert (= (and d!2185661 c!1302472) b!7011593))

(assert (= (and d!2185661 (not c!1302472)) b!7011594))

(assert (=> d!2185661 m!7709862))

(declare-fun m!7709928 () Bool)

(assert (=> b!7011593 m!7709928))

(assert (=> b!7011594 m!7709866))

(assert (=> b!7011594 m!7709866))

(declare-fun m!7709930 () Bool)

(assert (=> b!7011594 m!7709930))

(assert (=> b!7011594 m!7709870))

(assert (=> b!7011594 m!7709930))

(assert (=> b!7011594 m!7709870))

(declare-fun m!7709932 () Bool)

(assert (=> b!7011594 m!7709932))

(assert (=> b!7011412 d!2185661))

(declare-fun d!2185663 () Bool)

(assert (=> d!2185663 (forall!16239 (++!15323 (exprs!6818 lt!2504803) (exprs!6818 ct2!306)) lambda!408692)))

(declare-fun lt!2504981 () Unit!161322)

(assert (=> d!2185663 (= lt!2504981 (choose!52721 (exprs!6818 lt!2504803) (exprs!6818 ct2!306) lambda!408692))))

(assert (=> d!2185663 (forall!16239 (exprs!6818 lt!2504803) lambda!408692)))

(assert (=> d!2185663 (= (lemmaConcatPreservesForall!658 (exprs!6818 lt!2504803) (exprs!6818 ct2!306) lambda!408692) lt!2504981)))

(declare-fun bs!1866239 () Bool)

(assert (= bs!1866239 d!2185663))

(assert (=> bs!1866239 m!7709580))

(assert (=> bs!1866239 m!7709580))

(declare-fun m!7709934 () Bool)

(assert (=> bs!1866239 m!7709934))

(declare-fun m!7709936 () Bool)

(assert (=> bs!1866239 m!7709936))

(declare-fun m!7709938 () Bool)

(assert (=> bs!1866239 m!7709938))

(assert (=> b!7011405 d!2185663))

(declare-fun d!2185665 () Bool)

(declare-fun c!1302473 () Bool)

(assert (=> d!2185665 (= c!1302473 (isEmpty!39360 s!7408))))

(declare-fun e!4214706 () Bool)

(assert (=> d!2185665 (= (matchZipper!2862 lt!2504799 s!7408) e!4214706)))

(declare-fun b!7011595 () Bool)

(assert (=> b!7011595 (= e!4214706 (nullableZipper!2490 lt!2504799))))

(declare-fun b!7011596 () Bool)

(assert (=> b!7011596 (= e!4214706 (matchZipper!2862 (derivationStepZipper!2802 lt!2504799 (head!14176 s!7408)) (tail!13401 s!7408)))))

(assert (= (and d!2185665 c!1302473) b!7011595))

(assert (= (and d!2185665 (not c!1302473)) b!7011596))

(assert (=> d!2185665 m!7709882))

(declare-fun m!7709940 () Bool)

(assert (=> b!7011595 m!7709940))

(assert (=> b!7011596 m!7709886))

(assert (=> b!7011596 m!7709886))

(declare-fun m!7709942 () Bool)

(assert (=> b!7011596 m!7709942))

(assert (=> b!7011596 m!7709890))

(assert (=> b!7011596 m!7709942))

(assert (=> b!7011596 m!7709890))

(declare-fun m!7709944 () Bool)

(assert (=> b!7011596 m!7709944))

(assert (=> start!675366 d!2185665))

(declare-fun bs!1866240 () Bool)

(declare-fun d!2185667 () Bool)

(assert (= bs!1866240 (and d!2185667 b!7011417)))

(declare-fun lambda!408755 () Int)

(assert (=> bs!1866240 (= lambda!408755 lambda!408691)))

(declare-fun bs!1866241 () Bool)

(assert (= bs!1866241 (and d!2185667 d!2185617)))

(assert (=> bs!1866241 (= lambda!408755 lambda!408742)))

(assert (=> d!2185667 true))

(assert (=> d!2185667 (= (appendTo!443 z1!570 ct2!306) (map!15615 z1!570 lambda!408755))))

(declare-fun bs!1866242 () Bool)

(assert (= bs!1866242 d!2185667))

(declare-fun m!7709946 () Bool)

(assert (=> bs!1866242 m!7709946))

(assert (=> start!675366 d!2185667))

(declare-fun bs!1866243 () Bool)

(declare-fun d!2185669 () Bool)

(assert (= bs!1866243 (and d!2185669 b!7011417)))

(declare-fun lambda!408756 () Int)

(assert (=> bs!1866243 (= lambda!408756 lambda!408692)))

(declare-fun bs!1866244 () Bool)

(assert (= bs!1866244 (and d!2185669 d!2185633)))

(assert (=> bs!1866244 (= lambda!408756 lambda!408745)))

(declare-fun bs!1866245 () Bool)

(assert (= bs!1866245 (and d!2185669 d!2185635)))

(assert (=> bs!1866245 (= lambda!408756 lambda!408748)))

(assert (=> d!2185669 (= (inv!86165 ct2!306) (forall!16239 (exprs!6818 ct2!306) lambda!408756))))

(declare-fun bs!1866246 () Bool)

(assert (= bs!1866246 d!2185669))

(declare-fun m!7709948 () Bool)

(assert (=> bs!1866246 m!7709948))

(assert (=> start!675366 d!2185669))

(declare-fun call!636857 () (Set Context!12636))

(declare-fun b!7011607 () Bool)

(declare-fun e!4214713 () (Set Context!12636))

(assert (=> b!7011607 (= e!4214713 (set.union call!636857 (derivationStepZipperUp!1972 (Context!12637 (t!381266 (exprs!6818 lt!2504780))) (h!73836 s!7408))))))

(declare-fun b!7011608 () Bool)

(declare-fun e!4214714 () (Set Context!12636))

(assert (=> b!7011608 (= e!4214714 call!636857)))

(declare-fun d!2185671 () Bool)

(declare-fun c!1302479 () Bool)

(declare-fun e!4214715 () Bool)

(assert (=> d!2185671 (= c!1302479 e!4214715)))

(declare-fun res!2861128 () Bool)

(assert (=> d!2185671 (=> (not res!2861128) (not e!4214715))))

(assert (=> d!2185671 (= res!2861128 (is-Cons!67387 (exprs!6818 lt!2504780)))))

(assert (=> d!2185671 (= (derivationStepZipperUp!1972 lt!2504780 (h!73836 s!7408)) e!4214713)))

(declare-fun bm!636852 () Bool)

(assert (=> bm!636852 (= call!636857 (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504780)) (Context!12637 (t!381266 (exprs!6818 lt!2504780))) (h!73836 s!7408)))))

(declare-fun b!7011609 () Bool)

(assert (=> b!7011609 (= e!4214713 e!4214714)))

(declare-fun c!1302478 () Bool)

(assert (=> b!7011609 (= c!1302478 (is-Cons!67387 (exprs!6818 lt!2504780)))))

(declare-fun b!7011610 () Bool)

(assert (=> b!7011610 (= e!4214715 (nullable!7082 (h!73835 (exprs!6818 lt!2504780))))))

(declare-fun b!7011611 () Bool)

(assert (=> b!7011611 (= e!4214714 (as set.empty (Set Context!12636)))))

(assert (= (and d!2185671 res!2861128) b!7011610))

(assert (= (and d!2185671 c!1302479) b!7011607))

(assert (= (and d!2185671 (not c!1302479)) b!7011609))

(assert (= (and b!7011609 c!1302478) b!7011608))

(assert (= (and b!7011609 (not c!1302478)) b!7011611))

(assert (= (or b!7011607 b!7011608) bm!636852))

(declare-fun m!7709950 () Bool)

(assert (=> b!7011607 m!7709950))

(declare-fun m!7709952 () Bool)

(assert (=> bm!636852 m!7709952))

(declare-fun m!7709954 () Bool)

(assert (=> b!7011610 m!7709954))

(assert (=> b!7011396 d!2185671))

(assert (=> b!7011396 d!2185623))

(declare-fun b!7011612 () Bool)

(declare-fun c!1302484 () Bool)

(declare-fun e!4214720 () Bool)

(assert (=> b!7011612 (= c!1302484 e!4214720)))

(declare-fun res!2861129 () Bool)

(assert (=> b!7011612 (=> (not res!2861129) (not e!4214720))))

(assert (=> b!7011612 (= res!2861129 (is-Concat!26167 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun e!4214716 () (Set Context!12636))

(declare-fun e!4214717 () (Set Context!12636))

(assert (=> b!7011612 (= e!4214716 e!4214717)))

(declare-fun b!7011614 () Bool)

(declare-fun e!4214719 () (Set Context!12636))

(assert (=> b!7011614 (= e!4214719 (as set.empty (Set Context!12636)))))

(declare-fun b!7011615 () Bool)

(declare-fun call!636861 () (Set Context!12636))

(declare-fun call!636863 () (Set Context!12636))

(assert (=> b!7011615 (= e!4214716 (set.union call!636861 call!636863))))

(declare-fun c!1302480 () Bool)

(declare-fun call!636860 () List!67511)

(declare-fun bm!636853 () Bool)

(assert (=> bm!636853 (= call!636860 ($colon$colon!2531 (exprs!6818 lt!2504780) (ite (or c!1302484 c!1302480) (regTwo!35156 (h!73835 (exprs!6818 lt!2504803))) (h!73835 (exprs!6818 lt!2504803)))))))

(declare-fun b!7011616 () Bool)

(declare-fun e!4214721 () (Set Context!12636))

(declare-fun call!636858 () (Set Context!12636))

(assert (=> b!7011616 (= e!4214721 call!636858)))

(declare-fun b!7011617 () Bool)

(declare-fun call!636862 () (Set Context!12636))

(assert (=> b!7011617 (= e!4214717 (set.union call!636863 call!636862))))

(declare-fun b!7011618 () Bool)

(assert (=> b!7011618 (= e!4214717 e!4214721)))

(assert (=> b!7011618 (= c!1302480 (is-Concat!26167 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun bm!636854 () Bool)

(declare-fun call!636859 () List!67511)

(declare-fun c!1302481 () Bool)

(assert (=> bm!636854 (= call!636861 (derivationStepZipperDown!2040 (ite c!1302481 (regOne!35157 (h!73835 (exprs!6818 lt!2504803))) (ite c!1302484 (regTwo!35156 (h!73835 (exprs!6818 lt!2504803))) (ite c!1302480 (regOne!35156 (h!73835 (exprs!6818 lt!2504803))) (reg!17651 (h!73835 (exprs!6818 lt!2504803)))))) (ite (or c!1302481 c!1302484) lt!2504780 (Context!12637 call!636859)) (h!73836 s!7408)))))

(declare-fun b!7011619 () Bool)

(declare-fun e!4214718 () (Set Context!12636))

(assert (=> b!7011619 (= e!4214718 e!4214716)))

(assert (=> b!7011619 (= c!1302481 (is-Union!17322 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun bm!636855 () Bool)

(assert (=> bm!636855 (= call!636858 call!636862)))

(declare-fun b!7011620 () Bool)

(assert (=> b!7011620 (= e!4214718 (set.insert lt!2504780 (as set.empty (Set Context!12636))))))

(declare-fun bm!636856 () Bool)

(assert (=> bm!636856 (= call!636859 call!636860)))

(declare-fun bm!636857 () Bool)

(assert (=> bm!636857 (= call!636862 call!636861)))

(declare-fun b!7011621 () Bool)

(assert (=> b!7011621 (= e!4214720 (nullable!7082 (regOne!35156 (h!73835 (exprs!6818 lt!2504803)))))))

(declare-fun b!7011622 () Bool)

(declare-fun c!1302483 () Bool)

(assert (=> b!7011622 (= c!1302483 (is-Star!17322 (h!73835 (exprs!6818 lt!2504803))))))

(assert (=> b!7011622 (= e!4214721 e!4214719)))

(declare-fun bm!636858 () Bool)

(assert (=> bm!636858 (= call!636863 (derivationStepZipperDown!2040 (ite c!1302481 (regTwo!35157 (h!73835 (exprs!6818 lt!2504803))) (regOne!35156 (h!73835 (exprs!6818 lt!2504803)))) (ite c!1302481 lt!2504780 (Context!12637 call!636860)) (h!73836 s!7408)))))

(declare-fun d!2185673 () Bool)

(declare-fun c!1302482 () Bool)

(assert (=> d!2185673 (= c!1302482 (and (is-ElementMatch!17322 (h!73835 (exprs!6818 lt!2504803))) (= (c!1302428 (h!73835 (exprs!6818 lt!2504803))) (h!73836 s!7408))))))

(assert (=> d!2185673 (= (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504803)) lt!2504780 (h!73836 s!7408)) e!4214718)))

(declare-fun b!7011613 () Bool)

(assert (=> b!7011613 (= e!4214719 call!636858)))

(assert (= (and d!2185673 c!1302482) b!7011620))

(assert (= (and d!2185673 (not c!1302482)) b!7011619))

(assert (= (and b!7011619 c!1302481) b!7011615))

(assert (= (and b!7011619 (not c!1302481)) b!7011612))

(assert (= (and b!7011612 res!2861129) b!7011621))

(assert (= (and b!7011612 c!1302484) b!7011617))

(assert (= (and b!7011612 (not c!1302484)) b!7011618))

(assert (= (and b!7011618 c!1302480) b!7011616))

(assert (= (and b!7011618 (not c!1302480)) b!7011622))

(assert (= (and b!7011622 c!1302483) b!7011613))

(assert (= (and b!7011622 (not c!1302483)) b!7011614))

(assert (= (or b!7011616 b!7011613) bm!636856))

(assert (= (or b!7011616 b!7011613) bm!636855))

(assert (= (or b!7011617 bm!636855) bm!636857))

(assert (= (or b!7011617 bm!636856) bm!636853))

(assert (= (or b!7011615 bm!636857) bm!636854))

(assert (= (or b!7011615 b!7011617) bm!636858))

(declare-fun m!7709956 () Bool)

(assert (=> bm!636858 m!7709956))

(declare-fun m!7709958 () Bool)

(assert (=> bm!636854 m!7709958))

(assert (=> b!7011621 m!7709842))

(declare-fun m!7709960 () Bool)

(assert (=> b!7011620 m!7709960))

(declare-fun m!7709962 () Bool)

(assert (=> bm!636853 m!7709962))

(assert (=> b!7011396 d!2185673))

(declare-fun d!2185675 () Bool)

(declare-fun e!4214727 () Bool)

(assert (=> d!2185675 e!4214727))

(declare-fun res!2861135 () Bool)

(assert (=> d!2185675 (=> (not res!2861135) (not e!4214727))))

(declare-fun lt!2504984 () List!67511)

(declare-fun content!13380 (List!67511) (Set Regex!17322))

(assert (=> d!2185675 (= res!2861135 (= (content!13380 lt!2504984) (set.union (content!13380 lt!2504788) (content!13380 (exprs!6818 ct2!306)))))))

(declare-fun e!4214726 () List!67511)

(assert (=> d!2185675 (= lt!2504984 e!4214726)))

(declare-fun c!1302487 () Bool)

(assert (=> d!2185675 (= c!1302487 (is-Nil!67387 lt!2504788))))

(assert (=> d!2185675 (= (++!15323 lt!2504788 (exprs!6818 ct2!306)) lt!2504984)))

(declare-fun b!7011634 () Bool)

(assert (=> b!7011634 (= e!4214727 (or (not (= (exprs!6818 ct2!306) Nil!67387)) (= lt!2504984 lt!2504788)))))

(declare-fun b!7011633 () Bool)

(declare-fun res!2861134 () Bool)

(assert (=> b!7011633 (=> (not res!2861134) (not e!4214727))))

(declare-fun size!40977 (List!67511) Int)

(assert (=> b!7011633 (= res!2861134 (= (size!40977 lt!2504984) (+ (size!40977 lt!2504788) (size!40977 (exprs!6818 ct2!306)))))))

(declare-fun b!7011631 () Bool)

(assert (=> b!7011631 (= e!4214726 (exprs!6818 ct2!306))))

(declare-fun b!7011632 () Bool)

(assert (=> b!7011632 (= e!4214726 (Cons!67387 (h!73835 lt!2504788) (++!15323 (t!381266 lt!2504788) (exprs!6818 ct2!306))))))

(assert (= (and d!2185675 c!1302487) b!7011631))

(assert (= (and d!2185675 (not c!1302487)) b!7011632))

(assert (= (and d!2185675 res!2861135) b!7011633))

(assert (= (and b!7011633 res!2861134) b!7011634))

(declare-fun m!7709964 () Bool)

(assert (=> d!2185675 m!7709964))

(declare-fun m!7709966 () Bool)

(assert (=> d!2185675 m!7709966))

(declare-fun m!7709968 () Bool)

(assert (=> d!2185675 m!7709968))

(declare-fun m!7709970 () Bool)

(assert (=> b!7011633 m!7709970))

(declare-fun m!7709972 () Bool)

(assert (=> b!7011633 m!7709972))

(declare-fun m!7709974 () Bool)

(assert (=> b!7011633 m!7709974))

(declare-fun m!7709976 () Bool)

(assert (=> b!7011632 m!7709976))

(assert (=> b!7011396 d!2185675))

(assert (=> b!7011397 d!2185637))

(assert (=> b!7011397 d!2185623))

(declare-fun e!4214728 () (Set Context!12636))

(declare-fun call!636864 () (Set Context!12636))

(declare-fun b!7011635 () Bool)

(assert (=> b!7011635 (= e!4214728 (set.union call!636864 (derivationStepZipperUp!1972 (Context!12637 (t!381266 (exprs!6818 lt!2504769))) (h!73836 s!7408))))))

(declare-fun b!7011636 () Bool)

(declare-fun e!4214729 () (Set Context!12636))

(assert (=> b!7011636 (= e!4214729 call!636864)))

(declare-fun d!2185677 () Bool)

(declare-fun c!1302489 () Bool)

(declare-fun e!4214730 () Bool)

(assert (=> d!2185677 (= c!1302489 e!4214730)))

(declare-fun res!2861136 () Bool)

(assert (=> d!2185677 (=> (not res!2861136) (not e!4214730))))

(assert (=> d!2185677 (= res!2861136 (is-Cons!67387 (exprs!6818 lt!2504769)))))

(assert (=> d!2185677 (= (derivationStepZipperUp!1972 lt!2504769 (h!73836 s!7408)) e!4214728)))

(declare-fun bm!636859 () Bool)

(assert (=> bm!636859 (= call!636864 (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504769)) (Context!12637 (t!381266 (exprs!6818 lt!2504769))) (h!73836 s!7408)))))

(declare-fun b!7011637 () Bool)

(assert (=> b!7011637 (= e!4214728 e!4214729)))

(declare-fun c!1302488 () Bool)

(assert (=> b!7011637 (= c!1302488 (is-Cons!67387 (exprs!6818 lt!2504769)))))

(declare-fun b!7011638 () Bool)

(assert (=> b!7011638 (= e!4214730 (nullable!7082 (h!73835 (exprs!6818 lt!2504769))))))

(declare-fun b!7011639 () Bool)

(assert (=> b!7011639 (= e!4214729 (as set.empty (Set Context!12636)))))

(assert (= (and d!2185677 res!2861136) b!7011638))

(assert (= (and d!2185677 c!1302489) b!7011635))

(assert (= (and d!2185677 (not c!1302489)) b!7011637))

(assert (= (and b!7011637 c!1302488) b!7011636))

(assert (= (and b!7011637 (not c!1302488)) b!7011639))

(assert (= (or b!7011635 b!7011636) bm!636859))

(declare-fun m!7709978 () Bool)

(assert (=> b!7011635 m!7709978))

(declare-fun m!7709980 () Bool)

(assert (=> bm!636859 m!7709980))

(declare-fun m!7709982 () Bool)

(assert (=> b!7011638 m!7709982))

(assert (=> b!7011416 d!2185677))

(declare-fun d!2185679 () Bool)

(declare-fun choose!52726 ((Set Context!12636) Int) (Set Context!12636))

(assert (=> d!2185679 (= (flatMap!2308 lt!2504802 lambda!408693) (choose!52726 lt!2504802 lambda!408693))))

(declare-fun bs!1866247 () Bool)

(assert (= bs!1866247 d!2185679))

(declare-fun m!7709984 () Bool)

(assert (=> bs!1866247 m!7709984))

(assert (=> b!7011415 d!2185679))

(declare-fun b!7011640 () Bool)

(declare-fun e!4214731 () (Set Context!12636))

(declare-fun call!636865 () (Set Context!12636))

(assert (=> b!7011640 (= e!4214731 (set.union call!636865 (derivationStepZipperUp!1972 (Context!12637 (t!381266 (exprs!6818 lt!2504803))) (h!73836 s!7408))))))

(declare-fun b!7011641 () Bool)

(declare-fun e!4214732 () (Set Context!12636))

(assert (=> b!7011641 (= e!4214732 call!636865)))

(declare-fun d!2185681 () Bool)

(declare-fun c!1302491 () Bool)

(declare-fun e!4214733 () Bool)

(assert (=> d!2185681 (= c!1302491 e!4214733)))

(declare-fun res!2861137 () Bool)

(assert (=> d!2185681 (=> (not res!2861137) (not e!4214733))))

(assert (=> d!2185681 (= res!2861137 (is-Cons!67387 (exprs!6818 lt!2504803)))))

(assert (=> d!2185681 (= (derivationStepZipperUp!1972 lt!2504803 (h!73836 s!7408)) e!4214731)))

(declare-fun bm!636860 () Bool)

(assert (=> bm!636860 (= call!636865 (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504803)) (Context!12637 (t!381266 (exprs!6818 lt!2504803))) (h!73836 s!7408)))))

(declare-fun b!7011642 () Bool)

(assert (=> b!7011642 (= e!4214731 e!4214732)))

(declare-fun c!1302490 () Bool)

(assert (=> b!7011642 (= c!1302490 (is-Cons!67387 (exprs!6818 lt!2504803)))))

(declare-fun b!7011643 () Bool)

(assert (=> b!7011643 (= e!4214733 (nullable!7082 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun b!7011644 () Bool)

(assert (=> b!7011644 (= e!4214732 (as set.empty (Set Context!12636)))))

(assert (= (and d!2185681 res!2861137) b!7011643))

(assert (= (and d!2185681 c!1302491) b!7011640))

(assert (= (and d!2185681 (not c!1302491)) b!7011642))

(assert (= (and b!7011642 c!1302490) b!7011641))

(assert (= (and b!7011642 (not c!1302490)) b!7011644))

(assert (= (or b!7011640 b!7011641) bm!636860))

(declare-fun m!7709986 () Bool)

(assert (=> b!7011640 m!7709986))

(declare-fun m!7709988 () Bool)

(assert (=> bm!636860 m!7709988))

(assert (=> b!7011643 m!7709664))

(assert (=> b!7011415 d!2185681))

(declare-fun d!2185683 () Bool)

(declare-fun dynLambda!27112 (Int Context!12636) (Set Context!12636))

(assert (=> d!2185683 (= (flatMap!2308 lt!2504802 lambda!408693) (dynLambda!27112 lambda!408693 lt!2504803))))

(declare-fun lt!2504987 () Unit!161322)

(declare-fun choose!52727 ((Set Context!12636) Context!12636 Int) Unit!161322)

(assert (=> d!2185683 (= lt!2504987 (choose!52727 lt!2504802 lt!2504803 lambda!408693))))

(assert (=> d!2185683 (= lt!2504802 (set.insert lt!2504803 (as set.empty (Set Context!12636))))))

(assert (=> d!2185683 (= (lemmaFlatMapOnSingletonSet!1823 lt!2504802 lt!2504803 lambda!408693) lt!2504987)))

(declare-fun b_lambda!264409 () Bool)

(assert (=> (not b_lambda!264409) (not d!2185683)))

(declare-fun bs!1866248 () Bool)

(assert (= bs!1866248 d!2185683))

(assert (=> bs!1866248 m!7709678))

(declare-fun m!7709990 () Bool)

(assert (=> bs!1866248 m!7709990))

(declare-fun m!7709992 () Bool)

(assert (=> bs!1866248 m!7709992))

(assert (=> bs!1866248 m!7709672))

(assert (=> b!7011415 d!2185683))

(declare-fun bs!1866249 () Bool)

(declare-fun d!2185685 () Bool)

(assert (= bs!1866249 (and d!2185685 b!7011406)))

(declare-fun lambda!408759 () Int)

(assert (=> bs!1866249 (= lambda!408759 lambda!408693)))

(assert (=> d!2185685 true))

(assert (=> d!2185685 (= (derivationStepZipper!2802 lt!2504802 (h!73836 s!7408)) (flatMap!2308 lt!2504802 lambda!408759))))

(declare-fun bs!1866250 () Bool)

(assert (= bs!1866250 d!2185685))

(declare-fun m!7709994 () Bool)

(assert (=> bs!1866250 m!7709994))

(assert (=> b!7011415 d!2185685))

(declare-fun b!7011658 () Bool)

(declare-fun e!4214738 () Bool)

(declare-fun lt!2504990 () List!67512)

(assert (=> b!7011658 (= e!4214738 (or (not (= (_2!37278 lt!2504795) Nil!67388)) (= lt!2504990 (_1!37278 lt!2504795))))))

(declare-fun d!2185687 () Bool)

(assert (=> d!2185687 e!4214738))

(declare-fun res!2861143 () Bool)

(assert (=> d!2185687 (=> (not res!2861143) (not e!4214738))))

(declare-fun content!13381 (List!67512) (Set C!34914))

(assert (=> d!2185687 (= res!2861143 (= (content!13381 lt!2504990) (set.union (content!13381 (_1!37278 lt!2504795)) (content!13381 (_2!37278 lt!2504795)))))))

(declare-fun e!4214739 () List!67512)

(assert (=> d!2185687 (= lt!2504990 e!4214739)))

(declare-fun c!1302496 () Bool)

(assert (=> d!2185687 (= c!1302496 (is-Nil!67388 (_1!37278 lt!2504795)))))

(assert (=> d!2185687 (= (++!15324 (_1!37278 lt!2504795) (_2!37278 lt!2504795)) lt!2504990)))

(declare-fun b!7011656 () Bool)

(assert (=> b!7011656 (= e!4214739 (Cons!67388 (h!73836 (_1!37278 lt!2504795)) (++!15324 (t!381267 (_1!37278 lt!2504795)) (_2!37278 lt!2504795))))))

(declare-fun b!7011655 () Bool)

(assert (=> b!7011655 (= e!4214739 (_2!37278 lt!2504795))))

(declare-fun b!7011657 () Bool)

(declare-fun res!2861142 () Bool)

(assert (=> b!7011657 (=> (not res!2861142) (not e!4214738))))

(declare-fun size!40978 (List!67512) Int)

(assert (=> b!7011657 (= res!2861142 (= (size!40978 lt!2504990) (+ (size!40978 (_1!37278 lt!2504795)) (size!40978 (_2!37278 lt!2504795)))))))

(assert (= (and d!2185687 c!1302496) b!7011655))

(assert (= (and d!2185687 (not c!1302496)) b!7011656))

(assert (= (and d!2185687 res!2861143) b!7011657))

(assert (= (and b!7011657 res!2861142) b!7011658))

(declare-fun m!7709996 () Bool)

(assert (=> d!2185687 m!7709996))

(declare-fun m!7709998 () Bool)

(assert (=> d!2185687 m!7709998))

(declare-fun m!7710000 () Bool)

(assert (=> d!2185687 m!7710000))

(declare-fun m!7710002 () Bool)

(assert (=> b!7011656 m!7710002))

(declare-fun m!7710004 () Bool)

(assert (=> b!7011657 m!7710004))

(declare-fun m!7710006 () Bool)

(assert (=> b!7011657 m!7710006))

(declare-fun m!7710008 () Bool)

(assert (=> b!7011657 m!7710008))

(assert (=> b!7011404 d!2185687))

(declare-fun d!2185689 () Bool)

(declare-fun c!1302497 () Bool)

(assert (=> d!2185689 (= c!1302497 (isEmpty!39360 (_2!37278 lt!2504795)))))

(declare-fun e!4214740 () Bool)

(assert (=> d!2185689 (= (matchZipper!2862 lt!2504761 (_2!37278 lt!2504795)) e!4214740)))

(declare-fun b!7011659 () Bool)

(assert (=> b!7011659 (= e!4214740 (nullableZipper!2490 lt!2504761))))

(declare-fun b!7011660 () Bool)

(assert (=> b!7011660 (= e!4214740 (matchZipper!2862 (derivationStepZipper!2802 lt!2504761 (head!14176 (_2!37278 lt!2504795))) (tail!13401 (_2!37278 lt!2504795))))))

(assert (= (and d!2185689 c!1302497) b!7011659))

(assert (= (and d!2185689 (not c!1302497)) b!7011660))

(declare-fun m!7710010 () Bool)

(assert (=> d!2185689 m!7710010))

(declare-fun m!7710012 () Bool)

(assert (=> b!7011659 m!7710012))

(declare-fun m!7710014 () Bool)

(assert (=> b!7011660 m!7710014))

(assert (=> b!7011660 m!7710014))

(declare-fun m!7710016 () Bool)

(assert (=> b!7011660 m!7710016))

(declare-fun m!7710018 () Bool)

(assert (=> b!7011660 m!7710018))

(assert (=> b!7011660 m!7710016))

(assert (=> b!7011660 m!7710018))

(declare-fun m!7710020 () Bool)

(assert (=> b!7011660 m!7710020))

(assert (=> b!7011418 d!2185689))

(declare-fun b!7011679 () Bool)

(declare-fun e!4214759 () Bool)

(declare-fun e!4214756 () Bool)

(assert (=> b!7011679 (= e!4214759 e!4214756)))

(declare-fun res!2861156 () Bool)

(assert (=> b!7011679 (= res!2861156 (not (nullable!7082 (reg!17651 (h!73835 (exprs!6818 lt!2504803))))))))

(assert (=> b!7011679 (=> (not res!2861156) (not e!4214756))))

(declare-fun b!7011680 () Bool)

(declare-fun res!2861155 () Bool)

(declare-fun e!4214755 () Bool)

(assert (=> b!7011680 (=> (not res!2861155) (not e!4214755))))

(declare-fun call!636874 () Bool)

(assert (=> b!7011680 (= res!2861155 call!636874)))

(declare-fun e!4214761 () Bool)

(assert (=> b!7011680 (= e!4214761 e!4214755)))

(declare-fun d!2185691 () Bool)

(declare-fun res!2861158 () Bool)

(declare-fun e!4214758 () Bool)

(assert (=> d!2185691 (=> res!2861158 e!4214758)))

(assert (=> d!2185691 (= res!2861158 (is-ElementMatch!17322 (h!73835 (exprs!6818 lt!2504803))))))

(assert (=> d!2185691 (= (validRegex!8892 (h!73835 (exprs!6818 lt!2504803))) e!4214758)))

(declare-fun c!1302502 () Bool)

(declare-fun bm!636867 () Bool)

(declare-fun c!1302503 () Bool)

(declare-fun call!636872 () Bool)

(assert (=> bm!636867 (= call!636872 (validRegex!8892 (ite c!1302502 (reg!17651 (h!73835 (exprs!6818 lt!2504803))) (ite c!1302503 (regTwo!35157 (h!73835 (exprs!6818 lt!2504803))) (regTwo!35156 (h!73835 (exprs!6818 lt!2504803)))))))))

(declare-fun b!7011681 () Bool)

(assert (=> b!7011681 (= e!4214759 e!4214761)))

(assert (=> b!7011681 (= c!1302503 (is-Union!17322 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun b!7011682 () Bool)

(assert (=> b!7011682 (= e!4214758 e!4214759)))

(assert (=> b!7011682 (= c!1302502 (is-Star!17322 (h!73835 (exprs!6818 lt!2504803))))))

(declare-fun b!7011683 () Bool)

(declare-fun call!636873 () Bool)

(assert (=> b!7011683 (= e!4214755 call!636873)))

(declare-fun b!7011684 () Bool)

(declare-fun e!4214760 () Bool)

(assert (=> b!7011684 (= e!4214760 call!636873)))

(declare-fun bm!636868 () Bool)

(assert (=> bm!636868 (= call!636873 call!636872)))

(declare-fun b!7011685 () Bool)

(assert (=> b!7011685 (= e!4214756 call!636872)))

(declare-fun b!7011686 () Bool)

(declare-fun e!4214757 () Bool)

(assert (=> b!7011686 (= e!4214757 e!4214760)))

(declare-fun res!2861154 () Bool)

(assert (=> b!7011686 (=> (not res!2861154) (not e!4214760))))

(assert (=> b!7011686 (= res!2861154 call!636874)))

(declare-fun b!7011687 () Bool)

(declare-fun res!2861157 () Bool)

(assert (=> b!7011687 (=> res!2861157 e!4214757)))

(assert (=> b!7011687 (= res!2861157 (not (is-Concat!26167 (h!73835 (exprs!6818 lt!2504803)))))))

(assert (=> b!7011687 (= e!4214761 e!4214757)))

(declare-fun bm!636869 () Bool)

(assert (=> bm!636869 (= call!636874 (validRegex!8892 (ite c!1302503 (regOne!35157 (h!73835 (exprs!6818 lt!2504803))) (regOne!35156 (h!73835 (exprs!6818 lt!2504803))))))))

(assert (= (and d!2185691 (not res!2861158)) b!7011682))

(assert (= (and b!7011682 c!1302502) b!7011679))

(assert (= (and b!7011682 (not c!1302502)) b!7011681))

(assert (= (and b!7011679 res!2861156) b!7011685))

(assert (= (and b!7011681 c!1302503) b!7011680))

(assert (= (and b!7011681 (not c!1302503)) b!7011687))

(assert (= (and b!7011680 res!2861155) b!7011683))

(assert (= (and b!7011687 (not res!2861157)) b!7011686))

(assert (= (and b!7011686 res!2861154) b!7011684))

(assert (= (or b!7011683 b!7011684) bm!636868))

(assert (= (or b!7011680 b!7011686) bm!636869))

(assert (= (or b!7011685 bm!636868) bm!636867))

(declare-fun m!7710022 () Bool)

(assert (=> b!7011679 m!7710022))

(declare-fun m!7710024 () Bool)

(assert (=> bm!636867 m!7710024))

(declare-fun m!7710026 () Bool)

(assert (=> bm!636869 m!7710026))

(assert (=> b!7011419 d!2185691))

(declare-fun d!2185693 () Bool)

(declare-fun c!1302504 () Bool)

(assert (=> d!2185693 (= c!1302504 (isEmpty!39360 (_1!37278 lt!2504795)))))

(declare-fun e!4214762 () Bool)

(assert (=> d!2185693 (= (matchZipper!2862 lt!2504804 (_1!37278 lt!2504795)) e!4214762)))

(declare-fun b!7011688 () Bool)

(assert (=> b!7011688 (= e!4214762 (nullableZipper!2490 lt!2504804))))

(declare-fun b!7011689 () Bool)

(assert (=> b!7011689 (= e!4214762 (matchZipper!2862 (derivationStepZipper!2802 lt!2504804 (head!14176 (_1!37278 lt!2504795))) (tail!13401 (_1!37278 lt!2504795))))))

(assert (= (and d!2185693 c!1302504) b!7011688))

(assert (= (and d!2185693 (not c!1302504)) b!7011689))

(assert (=> d!2185693 m!7709826))

(declare-fun m!7710028 () Bool)

(assert (=> b!7011688 m!7710028))

(assert (=> b!7011689 m!7709830))

(assert (=> b!7011689 m!7709830))

(declare-fun m!7710030 () Bool)

(assert (=> b!7011689 m!7710030))

(assert (=> b!7011689 m!7709834))

(assert (=> b!7011689 m!7710030))

(assert (=> b!7011689 m!7709834))

(declare-fun m!7710032 () Bool)

(assert (=> b!7011689 m!7710032))

(assert (=> b!7011419 d!2185693))

(declare-fun d!2185695 () Bool)

(declare-fun e!4214763 () Bool)

(assert (=> d!2185695 (= (matchZipper!2862 (set.union lt!2504781 lt!2504768) (_1!37278 lt!2504795)) e!4214763)))

(declare-fun res!2861159 () Bool)

(assert (=> d!2185695 (=> res!2861159 e!4214763)))

(assert (=> d!2185695 (= res!2861159 (matchZipper!2862 lt!2504781 (_1!37278 lt!2504795)))))

(declare-fun lt!2504991 () Unit!161322)

(assert (=> d!2185695 (= lt!2504991 (choose!52725 lt!2504781 lt!2504768 (_1!37278 lt!2504795)))))

(assert (=> d!2185695 (= (lemmaZipperConcatMatchesSameAsBothZippers!1495 lt!2504781 lt!2504768 (_1!37278 lt!2504795)) lt!2504991)))

(declare-fun b!7011690 () Bool)

(assert (=> b!7011690 (= e!4214763 (matchZipper!2862 lt!2504768 (_1!37278 lt!2504795)))))

(assert (= (and d!2185695 (not res!2861159)) b!7011690))

(declare-fun m!7710034 () Bool)

(assert (=> d!2185695 m!7710034))

(assert (=> d!2185695 m!7709588))

(declare-fun m!7710036 () Bool)

(assert (=> d!2185695 m!7710036))

(declare-fun m!7710038 () Bool)

(assert (=> b!7011690 m!7710038))

(assert (=> b!7011419 d!2185695))

(assert (=> b!7011408 d!2185623))

(declare-fun d!2185697 () Bool)

(declare-fun e!4214765 () Bool)

(assert (=> d!2185697 e!4214765))

(declare-fun res!2861161 () Bool)

(assert (=> d!2185697 (=> (not res!2861161) (not e!4214765))))

(declare-fun lt!2504992 () List!67511)

(assert (=> d!2185697 (= res!2861161 (= (content!13380 lt!2504992) (set.union (content!13380 (exprs!6818 lt!2504803)) (content!13380 (exprs!6818 ct2!306)))))))

(declare-fun e!4214764 () List!67511)

(assert (=> d!2185697 (= lt!2504992 e!4214764)))

(declare-fun c!1302505 () Bool)

(assert (=> d!2185697 (= c!1302505 (is-Nil!67387 (exprs!6818 lt!2504803)))))

(assert (=> d!2185697 (= (++!15323 (exprs!6818 lt!2504803) (exprs!6818 ct2!306)) lt!2504992)))

(declare-fun b!7011694 () Bool)

(assert (=> b!7011694 (= e!4214765 (or (not (= (exprs!6818 ct2!306) Nil!67387)) (= lt!2504992 (exprs!6818 lt!2504803))))))

(declare-fun b!7011693 () Bool)

(declare-fun res!2861160 () Bool)

(assert (=> b!7011693 (=> (not res!2861160) (not e!4214765))))

(assert (=> b!7011693 (= res!2861160 (= (size!40977 lt!2504992) (+ (size!40977 (exprs!6818 lt!2504803)) (size!40977 (exprs!6818 ct2!306)))))))

(declare-fun b!7011691 () Bool)

(assert (=> b!7011691 (= e!4214764 (exprs!6818 ct2!306))))

(declare-fun b!7011692 () Bool)

(assert (=> b!7011692 (= e!4214764 (Cons!67387 (h!73835 (exprs!6818 lt!2504803)) (++!15323 (t!381266 (exprs!6818 lt!2504803)) (exprs!6818 ct2!306))))))

(assert (= (and d!2185697 c!1302505) b!7011691))

(assert (= (and d!2185697 (not c!1302505)) b!7011692))

(assert (= (and d!2185697 res!2861161) b!7011693))

(assert (= (and b!7011693 res!2861160) b!7011694))

(declare-fun m!7710040 () Bool)

(assert (=> d!2185697 m!7710040))

(declare-fun m!7710042 () Bool)

(assert (=> d!2185697 m!7710042))

(assert (=> d!2185697 m!7709968))

(declare-fun m!7710044 () Bool)

(assert (=> b!7011693 m!7710044))

(declare-fun m!7710046 () Bool)

(assert (=> b!7011693 m!7710046))

(assert (=> b!7011693 m!7709974))

(declare-fun m!7710048 () Bool)

(assert (=> b!7011692 m!7710048))

(assert (=> b!7011417 d!2185697))

(assert (=> b!7011417 d!2185663))

(declare-fun d!2185699 () Bool)

(declare-fun e!4214768 () Bool)

(assert (=> d!2185699 e!4214768))

(declare-fun res!2861164 () Bool)

(assert (=> d!2185699 (=> (not res!2861164) (not e!4214768))))

(declare-fun lt!2504995 () Context!12636)

(declare-fun dynLambda!27113 (Int Context!12636) Context!12636)

(assert (=> d!2185699 (= res!2861164 (= lt!2504793 (dynLambda!27113 lambda!408691 lt!2504995)))))

(declare-fun choose!52728 ((Set Context!12636) Int Context!12636) Context!12636)

(assert (=> d!2185699 (= lt!2504995 (choose!52728 z1!570 lambda!408691 lt!2504793))))

(assert (=> d!2185699 (set.member lt!2504793 (map!15615 z1!570 lambda!408691))))

(assert (=> d!2185699 (= (mapPost2!177 z1!570 lambda!408691 lt!2504793) lt!2504995)))

(declare-fun b!7011698 () Bool)

(assert (=> b!7011698 (= e!4214768 (set.member lt!2504995 z1!570))))

(assert (= (and d!2185699 res!2861164) b!7011698))

(declare-fun b_lambda!264411 () Bool)

(assert (=> (not b_lambda!264411) (not d!2185699)))

(declare-fun m!7710050 () Bool)

(assert (=> d!2185699 m!7710050))

(declare-fun m!7710052 () Bool)

(assert (=> d!2185699 m!7710052))

(declare-fun m!7710054 () Bool)

(assert (=> d!2185699 m!7710054))

(declare-fun m!7710056 () Bool)

(assert (=> d!2185699 m!7710056))

(declare-fun m!7710058 () Bool)

(assert (=> b!7011698 m!7710058))

(assert (=> b!7011417 d!2185699))

(declare-fun d!2185701 () Bool)

(assert (=> d!2185701 (= (flatMap!2308 lt!2504765 lambda!408693) (choose!52726 lt!2504765 lambda!408693))))

(declare-fun bs!1866251 () Bool)

(assert (= bs!1866251 d!2185701))

(declare-fun m!7710060 () Bool)

(assert (=> bs!1866251 m!7710060))

(assert (=> b!7011406 d!2185701))

(declare-fun d!2185703 () Bool)

(assert (=> d!2185703 (= (flatMap!2308 lt!2504765 lambda!408693) (dynLambda!27112 lambda!408693 lt!2504764))))

(declare-fun lt!2504996 () Unit!161322)

(assert (=> d!2185703 (= lt!2504996 (choose!52727 lt!2504765 lt!2504764 lambda!408693))))

(assert (=> d!2185703 (= lt!2504765 (set.insert lt!2504764 (as set.empty (Set Context!12636))))))

(assert (=> d!2185703 (= (lemmaFlatMapOnSingletonSet!1823 lt!2504765 lt!2504764 lambda!408693) lt!2504996)))

(declare-fun b_lambda!264413 () Bool)

(assert (=> (not b_lambda!264413) (not d!2185703)))

(declare-fun bs!1866252 () Bool)

(assert (= bs!1866252 d!2185703))

(assert (=> bs!1866252 m!7709622))

(declare-fun m!7710062 () Bool)

(assert (=> bs!1866252 m!7710062))

(declare-fun m!7710064 () Bool)

(assert (=> bs!1866252 m!7710064))

(assert (=> bs!1866252 m!7709648))

(assert (=> b!7011406 d!2185703))

(declare-fun bs!1866253 () Bool)

(declare-fun d!2185705 () Bool)

(assert (= bs!1866253 (and d!2185705 b!7011406)))

(declare-fun lambda!408760 () Int)

(assert (=> bs!1866253 (= lambda!408760 lambda!408693)))

(declare-fun bs!1866254 () Bool)

(assert (= bs!1866254 (and d!2185705 d!2185685)))

(assert (=> bs!1866254 (= lambda!408760 lambda!408759)))

(assert (=> d!2185705 true))

(assert (=> d!2185705 (= (derivationStepZipper!2802 lt!2504765 (h!73836 s!7408)) (flatMap!2308 lt!2504765 lambda!408760))))

(declare-fun bs!1866255 () Bool)

(assert (= bs!1866255 d!2185705))

(declare-fun m!7710066 () Bool)

(assert (=> bs!1866255 m!7710066))

(assert (=> b!7011406 d!2185705))

(assert (=> b!7011406 d!2185663))

(declare-fun b!7011699 () Bool)

(declare-fun e!4214769 () (Set Context!12636))

(declare-fun call!636875 () (Set Context!12636))

(assert (=> b!7011699 (= e!4214769 (set.union call!636875 (derivationStepZipperUp!1972 (Context!12637 (t!381266 (exprs!6818 lt!2504764))) (h!73836 s!7408))))))

(declare-fun b!7011700 () Bool)

(declare-fun e!4214770 () (Set Context!12636))

(assert (=> b!7011700 (= e!4214770 call!636875)))

(declare-fun d!2185707 () Bool)

(declare-fun c!1302507 () Bool)

(declare-fun e!4214771 () Bool)

(assert (=> d!2185707 (= c!1302507 e!4214771)))

(declare-fun res!2861165 () Bool)

(assert (=> d!2185707 (=> (not res!2861165) (not e!4214771))))

(assert (=> d!2185707 (= res!2861165 (is-Cons!67387 (exprs!6818 lt!2504764)))))

(assert (=> d!2185707 (= (derivationStepZipperUp!1972 lt!2504764 (h!73836 s!7408)) e!4214769)))

(declare-fun bm!636870 () Bool)

(assert (=> bm!636870 (= call!636875 (derivationStepZipperDown!2040 (h!73835 (exprs!6818 lt!2504764)) (Context!12637 (t!381266 (exprs!6818 lt!2504764))) (h!73836 s!7408)))))

(declare-fun b!7011701 () Bool)

(assert (=> b!7011701 (= e!4214769 e!4214770)))

(declare-fun c!1302506 () Bool)

(assert (=> b!7011701 (= c!1302506 (is-Cons!67387 (exprs!6818 lt!2504764)))))

(declare-fun b!7011702 () Bool)

(assert (=> b!7011702 (= e!4214771 (nullable!7082 (h!73835 (exprs!6818 lt!2504764))))))

(declare-fun b!7011703 () Bool)

(assert (=> b!7011703 (= e!4214770 (as set.empty (Set Context!12636)))))

(assert (= (and d!2185707 res!2861165) b!7011702))

(assert (= (and d!2185707 c!1302507) b!7011699))

(assert (= (and d!2185707 (not c!1302507)) b!7011701))

(assert (= (and b!7011701 c!1302506) b!7011700))

(assert (= (and b!7011701 (not c!1302506)) b!7011703))

(assert (= (or b!7011699 b!7011700) bm!636870))

(declare-fun m!7710068 () Bool)

(assert (=> b!7011699 m!7710068))

(declare-fun m!7710070 () Bool)

(assert (=> bm!636870 m!7710070))

(declare-fun m!7710072 () Bool)

(assert (=> b!7011702 m!7710072))

(assert (=> b!7011406 d!2185707))

(declare-fun b!7011708 () Bool)

(declare-fun e!4214774 () Bool)

(declare-fun tp!1932487 () Bool)

(assert (=> b!7011708 (= e!4214774 (and tp_is_empty!43869 tp!1932487))))

(assert (=> b!7011400 (= tp!1932470 e!4214774)))

(assert (= (and b!7011400 (is-Cons!67388 (t!381267 s!7408))) b!7011708))

(declare-fun b!7011713 () Bool)

(declare-fun e!4214777 () Bool)

(declare-fun tp!1932492 () Bool)

(declare-fun tp!1932493 () Bool)

(assert (=> b!7011713 (= e!4214777 (and tp!1932492 tp!1932493))))

(assert (=> b!7011414 (= tp!1932472 e!4214777)))

(assert (= (and b!7011414 (is-Cons!67387 (exprs!6818 ct2!306))) b!7011713))

(declare-fun condSetEmpty!48386 () Bool)

(assert (=> setNonEmpty!48380 (= condSetEmpty!48386 (= setRest!48380 (as set.empty (Set Context!12636))))))

(declare-fun setRes!48386 () Bool)

(assert (=> setNonEmpty!48380 (= tp!1932471 setRes!48386)))

(declare-fun setIsEmpty!48386 () Bool)

(assert (=> setIsEmpty!48386 setRes!48386))

(declare-fun setNonEmpty!48386 () Bool)

(declare-fun tp!1932499 () Bool)

(declare-fun e!4214780 () Bool)

(declare-fun setElem!48386 () Context!12636)

(assert (=> setNonEmpty!48386 (= setRes!48386 (and tp!1932499 (inv!86165 setElem!48386) e!4214780))))

(declare-fun setRest!48386 () (Set Context!12636))

(assert (=> setNonEmpty!48386 (= setRest!48380 (set.union (set.insert setElem!48386 (as set.empty (Set Context!12636))) setRest!48386))))

(declare-fun b!7011718 () Bool)

(declare-fun tp!1932498 () Bool)

(assert (=> b!7011718 (= e!4214780 tp!1932498)))

(assert (= (and setNonEmpty!48380 condSetEmpty!48386) setIsEmpty!48386))

(assert (= (and setNonEmpty!48380 (not condSetEmpty!48386)) setNonEmpty!48386))

(assert (= setNonEmpty!48386 b!7011718))

(declare-fun m!7710074 () Bool)

(assert (=> setNonEmpty!48386 m!7710074))

(declare-fun b!7011719 () Bool)

(declare-fun e!4214781 () Bool)

(declare-fun tp!1932500 () Bool)

(declare-fun tp!1932501 () Bool)

(assert (=> b!7011719 (= e!4214781 (and tp!1932500 tp!1932501))))

(assert (=> b!7011407 (= tp!1932469 e!4214781)))

(assert (= (and b!7011407 (is-Cons!67387 (exprs!6818 setElem!48380))) b!7011719))

(declare-fun b_lambda!264415 () Bool)

(assert (= b_lambda!264409 (or b!7011406 b_lambda!264415)))

(declare-fun bs!1866256 () Bool)

(declare-fun d!2185709 () Bool)

(assert (= bs!1866256 (and d!2185709 b!7011406)))

(assert (=> bs!1866256 (= (dynLambda!27112 lambda!408693 lt!2504803) (derivationStepZipperUp!1972 lt!2504803 (h!73836 s!7408)))))

(assert (=> bs!1866256 m!7709680))

(assert (=> d!2185683 d!2185709))

(declare-fun b_lambda!264417 () Bool)

(assert (= b_lambda!264407 (or b!7011413 b_lambda!264417)))

(declare-fun bs!1866257 () Bool)

(declare-fun d!2185711 () Bool)

(assert (= bs!1866257 (and d!2185711 b!7011413)))

(assert (=> bs!1866257 (= (dynLambda!27111 lambda!408690 lt!2504977) (matchZipper!2862 (set.insert lt!2504977 (as set.empty (Set Context!12636))) s!7408))))

(declare-fun m!7710076 () Bool)

(assert (=> bs!1866257 m!7710076))

(assert (=> bs!1866257 m!7710076))

(declare-fun m!7710078 () Bool)

(assert (=> bs!1866257 m!7710078))

(assert (=> d!2185647 d!2185711))

(declare-fun b_lambda!264419 () Bool)

(assert (= b_lambda!264413 (or b!7011406 b_lambda!264419)))

(declare-fun bs!1866258 () Bool)

(declare-fun d!2185713 () Bool)

(assert (= bs!1866258 (and d!2185713 b!7011406)))

(assert (=> bs!1866258 (= (dynLambda!27112 lambda!408693 lt!2504764) (derivationStepZipperUp!1972 lt!2504764 (h!73836 s!7408)))))

(assert (=> bs!1866258 m!7709620))

(assert (=> d!2185703 d!2185713))

(declare-fun b_lambda!264421 () Bool)

(assert (= b_lambda!264411 (or b!7011417 b_lambda!264421)))

(declare-fun bs!1866259 () Bool)

(declare-fun d!2185715 () Bool)

(assert (= bs!1866259 (and d!2185715 b!7011417)))

(declare-fun lt!2504997 () Unit!161322)

(assert (=> bs!1866259 (= lt!2504997 (lemmaConcatPreservesForall!658 (exprs!6818 lt!2504995) (exprs!6818 ct2!306) lambda!408692))))

(assert (=> bs!1866259 (= (dynLambda!27113 lambda!408691 lt!2504995) (Context!12637 (++!15323 (exprs!6818 lt!2504995) (exprs!6818 ct2!306))))))

(declare-fun m!7710080 () Bool)

(assert (=> bs!1866259 m!7710080))

(declare-fun m!7710082 () Bool)

(assert (=> bs!1866259 m!7710082))

(assert (=> d!2185699 d!2185715))

(push 1)

(assert (not b!7011638))

(assert (not b_lambda!264415))

(assert (not setNonEmpty!48386))

(assert (not b!7011582))

(assert (not d!2185633))

(assert (not b!7011635))

(assert (not b!7011660))

(assert (not b!7011607))

(assert (not b!7011581))

(assert (not d!2185631))

(assert (not b!7011640))

(assert (not bm!636845))

(assert (not b!7011593))

(assert (not d!2185647))

(assert (not b!7011688))

(assert (not b!7011572))

(assert (not b!7011589))

(assert (not d!2185655))

(assert (not b!7011588))

(assert (not b!7011656))

(assert (not d!2185663))

(assert (not b!7011679))

(assert (not bm!636854))

(assert (not b!7011692))

(assert (not d!2185625))

(assert (not b!7011539))

(assert (not b!7011632))

(assert (not b!7011693))

(assert (not b!7011590))

(assert (not d!2185659))

(assert (not b!7011633))

(assert (not b_lambda!264421))

(assert (not d!2185685))

(assert (not d!2185641))

(assert (not b!7011526))

(assert (not d!2185661))

(assert (not b!7011718))

(assert (not b!7011578))

(assert (not b!7011719))

(assert (not d!2185667))

(assert (not d!2185637))

(assert (not bm!636870))

(assert (not bm!636858))

(assert (not d!2185695))

(assert (not bm!636869))

(assert (not d!2185643))

(assert (not d!2185699))

(assert (not bm!636859))

(assert (not d!2185675))

(assert (not b!7011708))

(assert (not b!7011699))

(assert (not b!7011689))

(assert (not bs!1866258))

(assert (not b!7011690))

(assert (not bs!1866256))

(assert (not b!7011533))

(assert (not d!2185693))

(assert (not b!7011643))

(assert (not b!7011594))

(assert (not d!2185665))

(assert (not bm!636853))

(assert (not b!7011596))

(assert (not b!7011621))

(assert (not d!2185651))

(assert (not bm!636844))

(assert (not d!2185657))

(assert (not b_lambda!264417))

(assert (not b!7011574))

(assert (not d!2185705))

(assert (not d!2185623))

(assert (not b!7011659))

(assert (not bm!636852))

(assert (not d!2185645))

(assert (not bm!636860))

(assert (not b!7011595))

(assert (not d!2185679))

(assert (not d!2185683))

(assert (not bs!1866257))

(assert (not b!7011530))

(assert (not b!7011575))

(assert (not d!2185617))

(assert (not b!7011591))

(assert (not b!7011657))

(assert (not d!2185703))

(assert (not d!2185669))

(assert tp_is_empty!43869)

(assert (not bs!1866259))

(assert (not b!7011527))

(assert (not b!7011610))

(assert (not b!7011702))

(assert (not bm!636867))

(assert (not d!2185635))

(assert (not d!2185619))

(assert (not b!7011529))

(assert (not d!2185621))

(assert (not d!2185701))

(assert (not bm!636849))

(assert (not b_lambda!264419))

(assert (not b!7011592))

(assert (not b!7011713))

(assert (not d!2185689))

(assert (not b!7011531))

(assert (not d!2185697))

(assert (not b!7011540))

(assert (not d!2185687))

(assert (not d!2185639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

