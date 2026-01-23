; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!675536 () Bool)

(assert start!675536)

(declare-fun b!7012673 () Bool)

(assert (=> b!7012673 true))

(declare-fun b!7012666 () Bool)

(assert (=> b!7012666 true))

(declare-fun b!7012665 () Bool)

(assert (=> b!7012665 true))

(declare-fun b!7012652 () Bool)

(declare-fun e!4215374 () Bool)

(declare-fun e!4215366 () Bool)

(assert (=> b!7012652 (= e!4215374 e!4215366)))

(declare-fun res!2861747 () Bool)

(assert (=> b!7012652 (=> res!2861747 e!4215366)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34928 0))(
  ( (C!34929 (val!27166 Int)) )
))
(declare-datatypes ((Regex!17329 0))(
  ( (ElementMatch!17329 (c!1302716 C!34928)) (Concat!26174 (regOne!35170 Regex!17329) (regTwo!35170 Regex!17329)) (EmptyExpr!17329) (Star!17329 (reg!17658 Regex!17329)) (EmptyLang!17329) (Union!17329 (regOne!35171 Regex!17329) (regTwo!35171 Regex!17329)) )
))
(declare-datatypes ((List!67532 0))(
  ( (Nil!67408) (Cons!67408 (h!73856 Regex!17329) (t!381287 List!67532)) )
))
(declare-datatypes ((Context!12650 0))(
  ( (Context!12651 (exprs!6825 List!67532)) )
))
(declare-fun lt!2505992 () (InoxSet Context!12650))

(declare-fun lt!2506011 () (InoxSet Context!12650))

(assert (=> b!7012652 (= res!2861747 (not (= lt!2505992 lt!2506011)))))

(declare-fun lambda!409086 () Int)

(declare-fun lt!2505973 () Context!12650)

(declare-fun lt!2505975 () (InoxSet Context!12650))

(declare-datatypes ((List!67533 0))(
  ( (Nil!67409) (Cons!67409 (h!73857 C!34928) (t!381288 List!67533)) )
))
(declare-fun s!7408 () List!67533)

(declare-fun flatMap!2315 ((InoxSet Context!12650) Int) (InoxSet Context!12650))

(declare-fun derivationStepZipperUp!1979 (Context!12650 C!34928) (InoxSet Context!12650))

(assert (=> b!7012652 (= (flatMap!2315 lt!2505975 lambda!409086) (derivationStepZipperUp!1979 lt!2505973 (h!73857 s!7408)))))

(declare-datatypes ((Unit!161336 0))(
  ( (Unit!161337) )
))
(declare-fun lt!2505970 () Unit!161336)

(declare-fun lemmaFlatMapOnSingletonSet!1830 ((InoxSet Context!12650) Context!12650 Int) Unit!161336)

(assert (=> b!7012652 (= lt!2505970 (lemmaFlatMapOnSingletonSet!1830 lt!2505975 lt!2505973 lambda!409086))))

(assert (=> b!7012652 (= lt!2506011 (derivationStepZipperUp!1979 lt!2505973 (h!73857 s!7408)))))

(declare-fun derivationStepZipper!2809 ((InoxSet Context!12650) C!34928) (InoxSet Context!12650))

(assert (=> b!7012652 (= lt!2505992 (derivationStepZipper!2809 lt!2505975 (h!73857 s!7408)))))

(assert (=> b!7012652 (= lt!2505975 (store ((as const (Array Context!12650 Bool)) false) lt!2505973 true))))

(declare-fun b!7012653 () Bool)

(declare-fun e!4215365 () Bool)

(declare-fun e!4215368 () Bool)

(assert (=> b!7012653 (= e!4215365 e!4215368)))

(declare-fun res!2861732 () Bool)

(assert (=> b!7012653 (=> res!2861732 e!4215368)))

(declare-fun nullable!7089 (Regex!17329) Bool)

(assert (=> b!7012653 (= res!2861732 (not (nullable!7089 (h!73856 (exprs!6825 lt!2505973)))))))

(declare-fun lt!2505999 () Context!12650)

(declare-fun lt!2506003 () List!67532)

(assert (=> b!7012653 (= lt!2505999 (Context!12651 lt!2506003))))

(declare-fun tail!13409 (List!67532) List!67532)

(assert (=> b!7012653 (= lt!2506003 (tail!13409 (exprs!6825 lt!2505973)))))

(declare-fun b!7012654 () Bool)

(declare-fun e!4215362 () Bool)

(assert (=> b!7012654 (= e!4215366 e!4215362)))

(declare-fun res!2861731 () Bool)

(assert (=> b!7012654 (=> res!2861731 e!4215362)))

(declare-fun lt!2505979 () (InoxSet Context!12650))

(assert (=> b!7012654 (= res!2861731 (not (= lt!2505992 lt!2505979)))))

(declare-fun lt!2506002 () (InoxSet Context!12650))

(declare-fun lt!2506005 () (InoxSet Context!12650))

(assert (=> b!7012654 (= lt!2505979 ((_ map or) lt!2506002 lt!2506005))))

(assert (=> b!7012654 (= lt!2506005 (derivationStepZipperUp!1979 lt!2505999 (h!73857 s!7408)))))

(declare-fun b!7012655 () Bool)

(declare-fun res!2861735 () Bool)

(assert (=> b!7012655 (=> res!2861735 e!4215365)))

(declare-fun isEmpty!39371 (List!67532) Bool)

(assert (=> b!7012655 (= res!2861735 (isEmpty!39371 (exprs!6825 lt!2505973)))))

(declare-fun res!2861746 () Bool)

(declare-fun e!4215369 () Bool)

(assert (=> start!675536 (=> (not res!2861746) (not e!4215369))))

(declare-fun lt!2506009 () (InoxSet Context!12650))

(declare-fun matchZipper!2869 ((InoxSet Context!12650) List!67533) Bool)

(assert (=> start!675536 (= res!2861746 (matchZipper!2869 lt!2506009 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12650))

(declare-fun ct2!306 () Context!12650)

(declare-fun appendTo!450 ((InoxSet Context!12650) Context!12650) (InoxSet Context!12650))

(assert (=> start!675536 (= lt!2506009 (appendTo!450 z1!570 ct2!306))))

(assert (=> start!675536 e!4215369))

(declare-fun condSetEmpty!48410 () Bool)

(assert (=> start!675536 (= condSetEmpty!48410 (= z1!570 ((as const (Array Context!12650 Bool)) false)))))

(declare-fun setRes!48410 () Bool)

(assert (=> start!675536 setRes!48410))

(declare-fun e!4215371 () Bool)

(declare-fun inv!86181 (Context!12650) Bool)

(assert (=> start!675536 (and (inv!86181 ct2!306) e!4215371)))

(declare-fun e!4215370 () Bool)

(assert (=> start!675536 e!4215370))

(declare-fun b!7012656 () Bool)

(declare-fun tp_is_empty!43883 () Bool)

(declare-fun tp!1932604 () Bool)

(assert (=> b!7012656 (= e!4215370 (and tp_is_empty!43883 tp!1932604))))

(declare-fun b!7012657 () Bool)

(declare-fun res!2861737 () Bool)

(assert (=> b!7012657 (=> res!2861737 e!4215374)))

(declare-fun lt!2505985 () (InoxSet Context!12650))

(declare-datatypes ((tuple2!67964 0))(
  ( (tuple2!67965 (_1!37285 List!67533) (_2!37285 List!67533)) )
))
(declare-fun lt!2505986 () tuple2!67964)

(assert (=> b!7012657 (= res!2861737 (not (matchZipper!2869 lt!2505985 (_2!37285 lt!2505986))))))

(declare-fun setIsEmpty!48410 () Bool)

(assert (=> setIsEmpty!48410 setRes!48410))

(declare-fun b!7012658 () Bool)

(declare-fun res!2861751 () Bool)

(declare-fun e!4215376 () Bool)

(assert (=> b!7012658 (=> res!2861751 e!4215376)))

(declare-fun lt!2505989 () Bool)

(assert (=> b!7012658 (= res!2861751 (not lt!2505989))))

(declare-fun b!7012659 () Bool)

(declare-fun e!4215380 () Bool)

(declare-fun e!4215379 () Bool)

(assert (=> b!7012659 (= e!4215380 e!4215379)))

(declare-fun res!2861754 () Bool)

(assert (=> b!7012659 (=> res!2861754 e!4215379)))

(declare-fun lt!2506006 () (InoxSet Context!12650))

(assert (=> b!7012659 (= res!2861754 (matchZipper!2869 lt!2506006 (t!381288 s!7408)))))

(declare-fun lt!2506008 () Unit!161336)

(declare-fun lambda!409085 () Int)

(declare-fun lemmaConcatPreservesForall!665 (List!67532 List!67532 Int) Unit!161336)

(assert (=> b!7012659 (= lt!2506008 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun b!7012660 () Bool)

(assert (=> b!7012660 (= e!4215362 e!4215376)))

(declare-fun res!2861752 () Bool)

(assert (=> b!7012660 (=> res!2861752 e!4215376)))

(declare-fun e!4215372 () Bool)

(assert (=> b!7012660 (= res!2861752 e!4215372)))

(declare-fun res!2861739 () Bool)

(assert (=> b!7012660 (=> (not res!2861739) (not e!4215372))))

(assert (=> b!7012660 (= res!2861739 (not lt!2505989))))

(declare-fun lt!2505982 () List!67533)

(assert (=> b!7012660 (= lt!2505989 (matchZipper!2869 lt!2505975 lt!2505982))))

(assert (=> b!7012660 (= lt!2505982 (Cons!67409 (h!73857 s!7408) (_1!37285 lt!2505986)))))

(assert (=> b!7012660 (matchZipper!2869 lt!2505979 (_1!37285 lt!2505986))))

(declare-fun lt!2505987 () Unit!161336)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1502 ((InoxSet Context!12650) (InoxSet Context!12650) List!67533) Unit!161336)

(assert (=> b!7012660 (= lt!2505987 (lemmaZipperConcatMatchesSameAsBothZippers!1502 lt!2506002 lt!2506005 (_1!37285 lt!2505986)))))

(declare-fun b!7012661 () Bool)

(declare-fun e!4215377 () Bool)

(assert (=> b!7012661 (= e!4215377 (not (matchZipper!2869 lt!2506006 (t!381288 s!7408))))))

(declare-fun lt!2505996 () Unit!161336)

(assert (=> b!7012661 (= lt!2505996 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun b!7012662 () Bool)

(declare-fun e!4215364 () Bool)

(assert (=> b!7012662 (= e!4215379 e!4215364)))

(declare-fun res!2861738 () Bool)

(assert (=> b!7012662 (=> res!2861738 e!4215364)))

(declare-fun lt!2505969 () Bool)

(assert (=> b!7012662 (= res!2861738 (not lt!2505969))))

(declare-fun lt!2505983 () Unit!161336)

(assert (=> b!7012662 (= lt!2505983 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun lt!2506012 () Unit!161336)

(assert (=> b!7012662 (= lt!2506012 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun b!7012663 () Bool)

(declare-fun e!4215381 () Bool)

(declare-fun tp!1932605 () Bool)

(assert (=> b!7012663 (= e!4215381 tp!1932605)))

(declare-fun b!7012664 () Bool)

(assert (=> b!7012664 (= e!4215364 e!4215374)))

(declare-fun res!2861753 () Bool)

(assert (=> b!7012664 (=> res!2861753 e!4215374)))

(assert (=> b!7012664 (= res!2861753 (not (matchZipper!2869 lt!2506002 (_1!37285 lt!2505986))))))

(declare-datatypes ((Option!16814 0))(
  ( (None!16813) (Some!16813 (v!53091 tuple2!67964)) )
))
(declare-fun lt!2506000 () Option!16814)

(declare-fun get!23640 (Option!16814) tuple2!67964)

(assert (=> b!7012664 (= lt!2505986 (get!23640 lt!2506000))))

(declare-fun isDefined!13515 (Option!16814) Bool)

(assert (=> b!7012664 (isDefined!13515 lt!2506000)))

(declare-fun findConcatSeparationZippers!330 ((InoxSet Context!12650) (InoxSet Context!12650) List!67533 List!67533 List!67533) Option!16814)

(assert (=> b!7012664 (= lt!2506000 (findConcatSeparationZippers!330 lt!2506002 lt!2505985 Nil!67409 (t!381288 s!7408) (t!381288 s!7408)))))

(assert (=> b!7012664 (= lt!2505985 (store ((as const (Array Context!12650 Bool)) false) ct2!306 true))))

(declare-fun lt!2505968 () Unit!161336)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!330 ((InoxSet Context!12650) Context!12650 List!67533) Unit!161336)

(assert (=> b!7012664 (= lt!2505968 (lemmaConcatZipperMatchesStringThenFindConcatDefined!330 lt!2506002 ct2!306 (t!381288 s!7408)))))

(declare-fun lt!2505974 () Unit!161336)

(assert (=> b!7012664 (= lt!2505974 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun lt!2505967 () (InoxSet Context!12650))

(assert (=> b!7012664 (= lt!2505967 (appendTo!450 lt!2506002 ct2!306))))

(declare-fun derivationStepZipperDown!2047 (Regex!17329 Context!12650 C!34928) (InoxSet Context!12650))

(assert (=> b!7012664 (= lt!2506002 (derivationStepZipperDown!2047 (h!73856 (exprs!6825 lt!2505973)) lt!2505999 (h!73857 s!7408)))))

(declare-fun lt!2506001 () Unit!161336)

(assert (=> b!7012664 (= lt!2506001 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun lt!2505994 () Unit!161336)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!28 (Context!12650 Regex!17329 C!34928 Context!12650) Unit!161336)

(assert (=> b!7012664 (= lt!2505994 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!28 lt!2505999 (h!73856 (exprs!6825 lt!2505973)) (h!73857 s!7408) ct2!306))))

(declare-fun e!4215378 () Bool)

(assert (=> b!7012665 (= e!4215378 e!4215365)))

(declare-fun res!2861748 () Bool)

(assert (=> b!7012665 (=> res!2861748 e!4215365)))

(declare-fun lt!2506004 () (InoxSet Context!12650))

(declare-fun lt!2506007 () (InoxSet Context!12650))

(assert (=> b!7012665 (= res!2861748 (not (= (derivationStepZipper!2809 lt!2506004 (h!73857 s!7408)) lt!2506007)))))

(declare-fun lt!2505993 () Context!12650)

(assert (=> b!7012665 (= (flatMap!2315 lt!2506004 lambda!409086) (derivationStepZipperUp!1979 lt!2505993 (h!73857 s!7408)))))

(declare-fun lt!2506010 () Unit!161336)

(assert (=> b!7012665 (= lt!2506010 (lemmaFlatMapOnSingletonSet!1830 lt!2506004 lt!2505993 lambda!409086))))

(assert (=> b!7012665 (= lt!2506007 (derivationStepZipperUp!1979 lt!2505993 (h!73857 s!7408)))))

(declare-fun lt!2505984 () Unit!161336)

(assert (=> b!7012665 (= lt!2505984 (lemmaConcatPreservesForall!665 (exprs!6825 lt!2505973) (exprs!6825 ct2!306) lambda!409085))))

(declare-fun e!4215375 () Bool)

(declare-fun e!4215373 () Bool)

(assert (=> b!7012666 (= e!4215375 e!4215373)))

(declare-fun res!2861742 () Bool)

(assert (=> b!7012666 (=> res!2861742 e!4215373)))

(declare-fun lt!2505971 () Context!12650)

(assert (=> b!7012666 (= res!2861742 (or (not (= lt!2505993 lt!2505971)) (not (select z1!570 lt!2505973))))))

(declare-fun ++!15337 (List!67532 List!67532) List!67532)

(assert (=> b!7012666 (= lt!2505993 (Context!12651 (++!15337 (exprs!6825 lt!2505973) (exprs!6825 ct2!306))))))

(declare-fun lt!2506013 () Unit!161336)

(assert (=> b!7012666 (= lt!2506013 (lemmaConcatPreservesForall!665 (exprs!6825 lt!2505973) (exprs!6825 ct2!306) lambda!409085))))

(declare-fun lambda!409084 () Int)

(declare-fun mapPost2!184 ((InoxSet Context!12650) Int Context!12650) Context!12650)

(assert (=> b!7012666 (= lt!2505973 (mapPost2!184 z1!570 lambda!409084 lt!2505971))))

(declare-fun b!7012667 () Bool)

(declare-fun res!2861736 () Bool)

(assert (=> b!7012667 (=> res!2861736 e!4215380)))

(declare-fun lt!2505997 () Bool)

(assert (=> b!7012667 (= res!2861736 (not lt!2505997))))

(declare-fun b!7012668 () Bool)

(assert (=> b!7012668 (= e!4215373 e!4215378)))

(declare-fun res!2861750 () Bool)

(assert (=> b!7012668 (=> res!2861750 e!4215378)))

(declare-fun lt!2506015 () (InoxSet Context!12650))

(assert (=> b!7012668 (= res!2861750 (not (= lt!2506004 lt!2506015)))))

(assert (=> b!7012668 (= lt!2506004 (store ((as const (Array Context!12650 Bool)) false) lt!2505993 true))))

(declare-fun lt!2505977 () Unit!161336)

(assert (=> b!7012668 (= lt!2505977 (lemmaConcatPreservesForall!665 (exprs!6825 lt!2505973) (exprs!6825 ct2!306) lambda!409085))))

(declare-fun b!7012669 () Bool)

(declare-fun res!2861734 () Bool)

(assert (=> b!7012669 (=> res!2861734 e!4215375)))

(assert (=> b!7012669 (= res!2861734 (not (select lt!2506009 lt!2505971)))))

(declare-fun b!7012670 () Bool)

(declare-fun res!2861749 () Bool)

(assert (=> b!7012670 (=> (not res!2861749) (not e!4215369))))

(get-info :version)

(assert (=> b!7012670 (= res!2861749 ((_ is Cons!67409) s!7408))))

(declare-fun b!7012671 () Bool)

(declare-fun e!4215363 () Bool)

(assert (=> b!7012671 (= e!4215363 e!4215380)))

(declare-fun res!2861743 () Bool)

(assert (=> b!7012671 (=> res!2861743 e!4215380)))

(assert (=> b!7012671 (= res!2861743 e!4215377)))

(declare-fun res!2861740 () Bool)

(assert (=> b!7012671 (=> (not res!2861740) (not e!4215377))))

(assert (=> b!7012671 (= res!2861740 (not (= lt!2505997 lt!2505969)))))

(assert (=> b!7012671 (= lt!2505997 (matchZipper!2869 lt!2506007 (t!381288 s!7408)))))

(declare-fun lt!2505980 () Unit!161336)

(assert (=> b!7012671 (= lt!2505980 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun lt!2505988 () (InoxSet Context!12650))

(declare-fun e!4215367 () Bool)

(assert (=> b!7012671 (= (matchZipper!2869 lt!2505988 (t!381288 s!7408)) e!4215367)))

(declare-fun res!2861733 () Bool)

(assert (=> b!7012671 (=> res!2861733 e!4215367)))

(assert (=> b!7012671 (= res!2861733 lt!2505969)))

(assert (=> b!7012671 (= lt!2505969 (matchZipper!2869 lt!2505967 (t!381288 s!7408)))))

(declare-fun lt!2505981 () Unit!161336)

(assert (=> b!7012671 (= lt!2505981 (lemmaZipperConcatMatchesSameAsBothZippers!1502 lt!2505967 lt!2506006 (t!381288 s!7408)))))

(declare-fun lt!2505998 () Unit!161336)

(assert (=> b!7012671 (= lt!2505998 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun lt!2505976 () Unit!161336)

(assert (=> b!7012671 (= lt!2505976 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun b!7012672 () Bool)

(assert (=> b!7012672 (= e!4215367 (matchZipper!2869 lt!2506006 (t!381288 s!7408)))))

(assert (=> b!7012673 (= e!4215369 (not e!4215375))))

(declare-fun res!2861741 () Bool)

(assert (=> b!7012673 (=> res!2861741 e!4215375)))

(assert (=> b!7012673 (= res!2861741 (not (matchZipper!2869 lt!2506015 s!7408)))))

(assert (=> b!7012673 (= lt!2506015 (store ((as const (Array Context!12650 Bool)) false) lt!2505971 true))))

(declare-fun lambda!409083 () Int)

(declare-fun getWitness!1276 ((InoxSet Context!12650) Int) Context!12650)

(assert (=> b!7012673 (= lt!2505971 (getWitness!1276 lt!2506009 lambda!409083))))

(declare-datatypes ((List!67534 0))(
  ( (Nil!67410) (Cons!67410 (h!73858 Context!12650) (t!381289 List!67534)) )
))
(declare-fun lt!2505991 () List!67534)

(declare-fun exists!3178 (List!67534 Int) Bool)

(assert (=> b!7012673 (exists!3178 lt!2505991 lambda!409083)))

(declare-fun lt!2505972 () Unit!161336)

(declare-fun lemmaZipperMatchesExistsMatchingContext!298 (List!67534 List!67533) Unit!161336)

(assert (=> b!7012673 (= lt!2505972 (lemmaZipperMatchesExistsMatchingContext!298 lt!2505991 s!7408))))

(declare-fun toList!10689 ((InoxSet Context!12650)) List!67534)

(assert (=> b!7012673 (= lt!2505991 (toList!10689 lt!2506009))))

(declare-fun b!7012674 () Bool)

(declare-fun tp!1932607 () Bool)

(assert (=> b!7012674 (= e!4215371 tp!1932607)))

(declare-fun b!7012675 () Bool)

(assert (=> b!7012675 (= e!4215376 true)))

(declare-fun lt!2505978 () Bool)

(assert (=> b!7012675 (= lt!2505978 (matchZipper!2869 lt!2505975 (Cons!67409 (h!73857 s!7408) (_1!37285 (get!23640 (findConcatSeparationZippers!330 (derivationStepZipperDown!2047 (h!73856 (exprs!6825 (mapPost2!184 z1!570 lambda!409084 lt!2505971))) (Context!12651 (tail!13409 (exprs!6825 (mapPost2!184 z1!570 lambda!409084 lt!2505971)))) (h!73857 s!7408)) lt!2505985 Nil!67409 (t!381288 s!7408) (t!381288 s!7408)))))))))

(assert (=> b!7012675 (isDefined!13515 (findConcatSeparationZippers!330 lt!2505975 lt!2505985 Nil!67409 s!7408 s!7408))))

(declare-fun lt!2506016 () Unit!161336)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!16 ((InoxSet Context!12650) (InoxSet Context!12650) List!67533 List!67533 List!67533 List!67533 List!67533) Unit!161336)

(assert (=> b!7012675 (= lt!2506016 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!16 lt!2505975 lt!2505985 lt!2505982 (_2!37285 lt!2505986) s!7408 Nil!67409 s!7408))))

(declare-fun b!7012676 () Bool)

(assert (=> b!7012676 (= e!4215368 e!4215363)))

(declare-fun res!2861745 () Bool)

(assert (=> b!7012676 (=> res!2861745 e!4215363)))

(assert (=> b!7012676 (= res!2861745 (not (= lt!2506007 lt!2505988)))))

(assert (=> b!7012676 (= lt!2505988 ((_ map or) lt!2505967 lt!2506006))))

(declare-fun lt!2506014 () Context!12650)

(assert (=> b!7012676 (= lt!2506006 (derivationStepZipperUp!1979 lt!2506014 (h!73857 s!7408)))))

(assert (=> b!7012676 (= lt!2505967 (derivationStepZipperDown!2047 (h!73856 (exprs!6825 lt!2505973)) lt!2506014 (h!73857 s!7408)))))

(assert (=> b!7012676 (= lt!2506014 (Context!12651 (++!15337 lt!2506003 (exprs!6825 ct2!306))))))

(declare-fun lt!2505995 () Unit!161336)

(assert (=> b!7012676 (= lt!2505995 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun lt!2505990 () Unit!161336)

(assert (=> b!7012676 (= lt!2505990 (lemmaConcatPreservesForall!665 lt!2506003 (exprs!6825 ct2!306) lambda!409085))))

(declare-fun b!7012677 () Bool)

(declare-fun res!2861744 () Bool)

(assert (=> b!7012677 (=> res!2861744 e!4215365)))

(assert (=> b!7012677 (= res!2861744 (not ((_ is Cons!67408) (exprs!6825 lt!2505973))))))

(declare-fun setNonEmpty!48410 () Bool)

(declare-fun setElem!48410 () Context!12650)

(declare-fun tp!1932606 () Bool)

(assert (=> setNonEmpty!48410 (= setRes!48410 (and tp!1932606 (inv!86181 setElem!48410) e!4215381))))

(declare-fun setRest!48410 () (InoxSet Context!12650))

(assert (=> setNonEmpty!48410 (= z1!570 ((_ map or) (store ((as const (Array Context!12650 Bool)) false) setElem!48410 true) setRest!48410))))

(declare-fun b!7012678 () Bool)

(declare-fun res!2861755 () Bool)

(assert (=> b!7012678 (=> res!2861755 e!4215374)))

(declare-fun ++!15338 (List!67533 List!67533) List!67533)

(assert (=> b!7012678 (= res!2861755 (not (= (++!15338 (_1!37285 lt!2505986) (_2!37285 lt!2505986)) (t!381288 s!7408))))))

(declare-fun b!7012679 () Bool)

(assert (=> b!7012679 (= e!4215372 (not (matchZipper!2869 lt!2506005 (_1!37285 lt!2505986))))))

(assert (= (and start!675536 res!2861746) b!7012670))

(assert (= (and b!7012670 res!2861749) b!7012673))

(assert (= (and b!7012673 (not res!2861741)) b!7012669))

(assert (= (and b!7012669 (not res!2861734)) b!7012666))

(assert (= (and b!7012666 (not res!2861742)) b!7012668))

(assert (= (and b!7012668 (not res!2861750)) b!7012665))

(assert (= (and b!7012665 (not res!2861748)) b!7012677))

(assert (= (and b!7012677 (not res!2861744)) b!7012655))

(assert (= (and b!7012655 (not res!2861735)) b!7012653))

(assert (= (and b!7012653 (not res!2861732)) b!7012676))

(assert (= (and b!7012676 (not res!2861745)) b!7012671))

(assert (= (and b!7012671 (not res!2861733)) b!7012672))

(assert (= (and b!7012671 res!2861740) b!7012661))

(assert (= (and b!7012671 (not res!2861743)) b!7012667))

(assert (= (and b!7012667 (not res!2861736)) b!7012659))

(assert (= (and b!7012659 (not res!2861754)) b!7012662))

(assert (= (and b!7012662 (not res!2861738)) b!7012664))

(assert (= (and b!7012664 (not res!2861753)) b!7012657))

(assert (= (and b!7012657 (not res!2861737)) b!7012678))

(assert (= (and b!7012678 (not res!2861755)) b!7012652))

(assert (= (and b!7012652 (not res!2861747)) b!7012654))

(assert (= (and b!7012654 (not res!2861731)) b!7012660))

(assert (= (and b!7012660 res!2861739) b!7012679))

(assert (= (and b!7012660 (not res!2861752)) b!7012658))

(assert (= (and b!7012658 (not res!2861751)) b!7012675))

(assert (= (and start!675536 condSetEmpty!48410) setIsEmpty!48410))

(assert (= (and start!675536 (not condSetEmpty!48410)) setNonEmpty!48410))

(assert (= setNonEmpty!48410 b!7012663))

(assert (= start!675536 b!7012674))

(assert (= (and start!675536 ((_ is Cons!67409) s!7408)) b!7012656))

(declare-fun m!7711306 () Bool)

(assert (=> b!7012666 m!7711306))

(declare-fun m!7711308 () Bool)

(assert (=> b!7012666 m!7711308))

(declare-fun m!7711310 () Bool)

(assert (=> b!7012666 m!7711310))

(declare-fun m!7711312 () Bool)

(assert (=> b!7012666 m!7711312))

(declare-fun m!7711314 () Bool)

(assert (=> b!7012671 m!7711314))

(assert (=> b!7012671 m!7711314))

(declare-fun m!7711316 () Bool)

(assert (=> b!7012671 m!7711316))

(declare-fun m!7711318 () Bool)

(assert (=> b!7012671 m!7711318))

(assert (=> b!7012671 m!7711314))

(declare-fun m!7711320 () Bool)

(assert (=> b!7012671 m!7711320))

(declare-fun m!7711322 () Bool)

(assert (=> b!7012671 m!7711322))

(declare-fun m!7711324 () Bool)

(assert (=> b!7012653 m!7711324))

(declare-fun m!7711326 () Bool)

(assert (=> b!7012653 m!7711326))

(declare-fun m!7711328 () Bool)

(assert (=> b!7012664 m!7711328))

(declare-fun m!7711330 () Bool)

(assert (=> b!7012664 m!7711330))

(declare-fun m!7711332 () Bool)

(assert (=> b!7012664 m!7711332))

(assert (=> b!7012664 m!7711314))

(declare-fun m!7711334 () Bool)

(assert (=> b!7012664 m!7711334))

(declare-fun m!7711336 () Bool)

(assert (=> b!7012664 m!7711336))

(declare-fun m!7711338 () Bool)

(assert (=> b!7012664 m!7711338))

(declare-fun m!7711340 () Bool)

(assert (=> b!7012664 m!7711340))

(assert (=> b!7012664 m!7711314))

(declare-fun m!7711342 () Bool)

(assert (=> b!7012664 m!7711342))

(declare-fun m!7711344 () Bool)

(assert (=> b!7012664 m!7711344))

(declare-fun m!7711346 () Bool)

(assert (=> b!7012657 m!7711346))

(declare-fun m!7711348 () Bool)

(assert (=> b!7012654 m!7711348))

(declare-fun m!7711350 () Bool)

(assert (=> b!7012659 m!7711350))

(assert (=> b!7012659 m!7711314))

(declare-fun m!7711352 () Bool)

(assert (=> b!7012652 m!7711352))

(declare-fun m!7711354 () Bool)

(assert (=> b!7012652 m!7711354))

(declare-fun m!7711356 () Bool)

(assert (=> b!7012652 m!7711356))

(declare-fun m!7711358 () Bool)

(assert (=> b!7012652 m!7711358))

(declare-fun m!7711360 () Bool)

(assert (=> b!7012652 m!7711360))

(declare-fun m!7711362 () Bool)

(assert (=> b!7012679 m!7711362))

(declare-fun m!7711364 () Bool)

(assert (=> b!7012678 m!7711364))

(assert (=> b!7012662 m!7711314))

(assert (=> b!7012662 m!7711314))

(declare-fun m!7711366 () Bool)

(assert (=> setNonEmpty!48410 m!7711366))

(declare-fun m!7711368 () Bool)

(assert (=> b!7012665 m!7711368))

(declare-fun m!7711370 () Bool)

(assert (=> b!7012665 m!7711370))

(declare-fun m!7711372 () Bool)

(assert (=> b!7012665 m!7711372))

(declare-fun m!7711374 () Bool)

(assert (=> b!7012665 m!7711374))

(assert (=> b!7012665 m!7711310))

(declare-fun m!7711376 () Bool)

(assert (=> b!7012668 m!7711376))

(assert (=> b!7012668 m!7711310))

(declare-fun m!7711378 () Bool)

(assert (=> b!7012669 m!7711378))

(declare-fun m!7711380 () Bool)

(assert (=> b!7012660 m!7711380))

(declare-fun m!7711382 () Bool)

(assert (=> b!7012660 m!7711382))

(declare-fun m!7711384 () Bool)

(assert (=> b!7012660 m!7711384))

(declare-fun m!7711386 () Bool)

(assert (=> b!7012673 m!7711386))

(declare-fun m!7711388 () Bool)

(assert (=> b!7012673 m!7711388))

(declare-fun m!7711390 () Bool)

(assert (=> b!7012673 m!7711390))

(declare-fun m!7711392 () Bool)

(assert (=> b!7012673 m!7711392))

(declare-fun m!7711394 () Bool)

(assert (=> b!7012673 m!7711394))

(declare-fun m!7711396 () Bool)

(assert (=> b!7012673 m!7711396))

(declare-fun m!7711398 () Bool)

(assert (=> start!675536 m!7711398))

(declare-fun m!7711400 () Bool)

(assert (=> start!675536 m!7711400))

(declare-fun m!7711402 () Bool)

(assert (=> start!675536 m!7711402))

(declare-fun m!7711404 () Bool)

(assert (=> b!7012655 m!7711404))

(declare-fun m!7711406 () Bool)

(assert (=> b!7012676 m!7711406))

(declare-fun m!7711408 () Bool)

(assert (=> b!7012676 m!7711408))

(declare-fun m!7711410 () Bool)

(assert (=> b!7012676 m!7711410))

(assert (=> b!7012676 m!7711314))

(assert (=> b!7012676 m!7711314))

(assert (=> b!7012661 m!7711350))

(assert (=> b!7012661 m!7711314))

(assert (=> b!7012672 m!7711350))

(declare-fun m!7711412 () Bool)

(assert (=> b!7012675 m!7711412))

(declare-fun m!7711414 () Bool)

(assert (=> b!7012675 m!7711414))

(declare-fun m!7711416 () Bool)

(assert (=> b!7012675 m!7711416))

(assert (=> b!7012675 m!7711412))

(declare-fun m!7711418 () Bool)

(assert (=> b!7012675 m!7711418))

(assert (=> b!7012675 m!7711414))

(declare-fun m!7711420 () Bool)

(assert (=> b!7012675 m!7711420))

(declare-fun m!7711422 () Bool)

(assert (=> b!7012675 m!7711422))

(declare-fun m!7711424 () Bool)

(assert (=> b!7012675 m!7711424))

(declare-fun m!7711426 () Bool)

(assert (=> b!7012675 m!7711426))

(assert (=> b!7012675 m!7711424))

(assert (=> b!7012675 m!7711312))

(assert (=> b!7012675 m!7711312))

(check-sat (not b!7012678) (not b!7012671) (not b!7012657) (not b!7012662) (not b!7012652) (not setNonEmpty!48410) tp_is_empty!43883 (not b!7012665) (not b!7012666) (not b!7012656) (not b!7012673) (not b!7012675) (not b!7012654) (not b!7012676) (not b!7012679) (not b!7012653) (not b!7012672) (not b!7012659) (not b!7012664) (not start!675536) (not b!7012668) (not b!7012660) (not b!7012661) (not b!7012663) (not b!7012655) (not b!7012674))
(check-sat)
