; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!659864 () Bool)

(assert start!659864)

(declare-fun b!6823718 () Bool)

(assert (=> b!6823718 true))

(assert (=> b!6823718 true))

(declare-fun lambda!385415 () Int)

(declare-fun lambda!385414 () Int)

(assert (=> b!6823718 (not (= lambda!385415 lambda!385414))))

(assert (=> b!6823718 true))

(assert (=> b!6823718 true))

(declare-fun lambda!385416 () Int)

(assert (=> b!6823718 (not (= lambda!385416 lambda!385414))))

(assert (=> b!6823718 (not (= lambda!385416 lambda!385415))))

(assert (=> b!6823718 true))

(assert (=> b!6823718 true))

(declare-fun b!6823703 () Bool)

(assert (=> b!6823703 true))

(declare-fun b!6823716 () Bool)

(assert (=> b!6823716 true))

(declare-fun b!6823697 () Bool)

(declare-fun e!4116644 () Bool)

(declare-fun e!4116643 () Bool)

(assert (=> b!6823697 (= e!4116644 e!4116643)))

(declare-fun res!2787065 () Bool)

(assert (=> b!6823697 (=> res!2787065 e!4116643)))

(declare-datatypes ((C!33544 0))(
  ( (C!33545 (val!26474 Int)) )
))
(declare-datatypes ((Regex!16637 0))(
  ( (ElementMatch!16637 (c!1270031 C!33544)) (Concat!25482 (regOne!33786 Regex!16637) (regTwo!33786 Regex!16637)) (EmptyExpr!16637) (Star!16637 (reg!16966 Regex!16637)) (EmptyLang!16637) (Union!16637 (regOne!33787 Regex!16637) (regTwo!33787 Regex!16637)) )
))
(declare-datatypes ((List!66210 0))(
  ( (Nil!66086) (Cons!66086 (h!72534 Regex!16637) (t!379949 List!66210)) )
))
(declare-datatypes ((Context!12042 0))(
  ( (Context!12043 (exprs!6521 List!66210)) )
))
(declare-fun lt!2451848 () Context!12042)

(declare-fun lt!2451846 () Regex!16637)

(declare-datatypes ((List!66211 0))(
  ( (Nil!66087) (Cons!66087 (h!72535 Context!12042) (t!379950 List!66211)) )
))
(declare-fun unfocusZipper!2379 (List!66211) Regex!16637)

(assert (=> b!6823697 (= res!2787065 (not (= (unfocusZipper!2379 (Cons!66087 lt!2451848 Nil!66087)) lt!2451846)))))

(declare-fun r!7292 () Regex!16637)

(assert (=> b!6823697 (= lt!2451846 (Concat!25482 (reg!16966 r!7292) r!7292))))

(declare-fun b!6823698 () Bool)

(declare-fun e!4116660 () Bool)

(declare-fun e!4116646 () Bool)

(assert (=> b!6823698 (= e!4116660 e!4116646)))

(declare-fun res!2787077 () Bool)

(assert (=> b!6823698 (=> res!2787077 e!4116646)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2451827 () (InoxSet Context!12042))

(declare-fun lt!2451823 () (InoxSet Context!12042))

(assert (=> b!6823698 (= res!2787077 (not (= lt!2451827 lt!2451823)))))

(declare-datatypes ((List!66212 0))(
  ( (Nil!66088) (Cons!66088 (h!72536 C!33544) (t!379951 List!66212)) )
))
(declare-fun s!2326 () List!66212)

(declare-fun derivationStepZipperDown!1865 (Regex!16637 Context!12042 C!33544) (InoxSet Context!12042))

(assert (=> b!6823698 (= lt!2451823 (derivationStepZipperDown!1865 r!7292 (Context!12043 Nil!66086) (h!72536 s!2326)))))

(declare-fun derivationStepZipperUp!1791 (Context!12042 C!33544) (InoxSet Context!12042))

(assert (=> b!6823698 (= lt!2451827 (derivationStepZipperUp!1791 (Context!12043 (Cons!66086 r!7292 Nil!66086)) (h!72536 s!2326)))))

(declare-fun lt!2451840 () (InoxSet Context!12042))

(declare-fun z!1189 () (InoxSet Context!12042))

(declare-fun derivationStepZipper!2581 ((InoxSet Context!12042) C!33544) (InoxSet Context!12042))

(assert (=> b!6823698 (= lt!2451840 (derivationStepZipper!2581 z!1189 (h!72536 s!2326)))))

(declare-fun b!6823699 () Bool)

(declare-fun res!2787069 () Bool)

(declare-fun e!4116658 () Bool)

(assert (=> b!6823699 (=> (not res!2787069) (not e!4116658))))

(declare-fun zl!343 () List!66211)

(declare-fun toList!10421 ((InoxSet Context!12042)) List!66211)

(assert (=> b!6823699 (= res!2787069 (= (toList!10421 z!1189) zl!343))))

(declare-fun b!6823700 () Bool)

(declare-fun res!2787072 () Bool)

(declare-fun e!4116659 () Bool)

(assert (=> b!6823700 (=> res!2787072 e!4116659)))

(get-info :version)

(assert (=> b!6823700 (= res!2787072 (not ((_ is Cons!66086) (exprs!6521 (h!72535 zl!343)))))))

(declare-fun b!6823701 () Bool)

(declare-fun e!4116655 () Bool)

(declare-fun tp_is_empty!42527 () Bool)

(declare-fun tp!1867781 () Bool)

(assert (=> b!6823701 (= e!4116655 (and tp_is_empty!42527 tp!1867781))))

(declare-fun b!6823702 () Bool)

(declare-fun e!4116648 () Bool)

(assert (=> b!6823702 (= e!4116648 e!4116644)))

(declare-fun res!2787081 () Bool)

(assert (=> b!6823702 (=> res!2787081 e!4116644)))

(declare-fun lt!2451834 () Context!12042)

(assert (=> b!6823702 (= res!2787081 (not (= lt!2451840 (derivationStepZipperDown!1865 (reg!16966 r!7292) lt!2451834 (h!72536 s!2326)))))))

(declare-fun lt!2451841 () List!66210)

(assert (=> b!6823702 (= lt!2451834 (Context!12043 lt!2451841))))

(declare-fun lambda!385417 () Int)

(declare-fun lt!2451830 () (InoxSet Context!12042))

(declare-fun flatMap!2118 ((InoxSet Context!12042) Int) (InoxSet Context!12042))

(assert (=> b!6823702 (= (flatMap!2118 lt!2451830 lambda!385417) (derivationStepZipperUp!1791 lt!2451848 (h!72536 s!2326)))))

(declare-datatypes ((Unit!159965 0))(
  ( (Unit!159966) )
))
(declare-fun lt!2451819 () Unit!159965)

(declare-fun lemmaFlatMapOnSingletonSet!1644 ((InoxSet Context!12042) Context!12042 Int) Unit!159965)

(assert (=> b!6823702 (= lt!2451819 (lemmaFlatMapOnSingletonSet!1644 lt!2451830 lt!2451848 lambda!385417))))

(declare-fun lt!2451828 () (InoxSet Context!12042))

(assert (=> b!6823702 (= lt!2451828 (derivationStepZipperUp!1791 lt!2451848 (h!72536 s!2326)))))

(assert (=> b!6823702 (= lt!2451830 (store ((as const (Array Context!12042 Bool)) false) lt!2451848 true))))

(assert (=> b!6823702 (= lt!2451848 (Context!12043 (Cons!66086 (reg!16966 r!7292) lt!2451841)))))

(assert (=> b!6823702 (= lt!2451841 (Cons!66086 r!7292 Nil!66086))))

(assert (=> b!6823703 (= e!4116646 e!4116648)))

(declare-fun res!2787064 () Bool)

(assert (=> b!6823703 (=> res!2787064 e!4116648)))

(assert (=> b!6823703 (= res!2787064 (not (= lt!2451840 lt!2451823)))))

(assert (=> b!6823703 (= (flatMap!2118 z!1189 lambda!385417) (derivationStepZipperUp!1791 (h!72535 zl!343) (h!72536 s!2326)))))

(declare-fun lt!2451844 () Unit!159965)

(assert (=> b!6823703 (= lt!2451844 (lemmaFlatMapOnSingletonSet!1644 z!1189 (h!72535 zl!343) lambda!385417))))

(declare-fun b!6823704 () Bool)

(declare-fun e!4116657 () Bool)

(declare-fun tp!1867778 () Bool)

(assert (=> b!6823704 (= e!4116657 tp!1867778)))

(declare-fun b!6823705 () Bool)

(declare-fun res!2787061 () Bool)

(declare-fun e!4116651 () Bool)

(assert (=> b!6823705 (=> res!2787061 e!4116651)))

(declare-fun matchZipper!2623 ((InoxSet Context!12042) List!66212) Bool)

(assert (=> b!6823705 (= res!2787061 (not (matchZipper!2623 z!1189 s!2326)))))

(declare-fun b!6823706 () Bool)

(declare-fun res!2787082 () Bool)

(declare-fun e!4116656 () Bool)

(assert (=> b!6823706 (=> res!2787082 e!4116656)))

(assert (=> b!6823706 (= res!2787082 (not (= (unfocusZipper!2379 (Cons!66087 lt!2451834 Nil!66087)) r!7292)))))

(declare-fun res!2787080 () Bool)

(assert (=> start!659864 (=> (not res!2787080) (not e!4116658))))

(declare-fun validRegex!8373 (Regex!16637) Bool)

(assert (=> start!659864 (= res!2787080 (validRegex!8373 r!7292))))

(assert (=> start!659864 e!4116658))

(assert (=> start!659864 e!4116657))

(declare-fun condSetEmpty!46831 () Bool)

(assert (=> start!659864 (= condSetEmpty!46831 (= z!1189 ((as const (Array Context!12042 Bool)) false)))))

(declare-fun setRes!46831 () Bool)

(assert (=> start!659864 setRes!46831))

(declare-fun e!4116654 () Bool)

(assert (=> start!659864 e!4116654))

(assert (=> start!659864 e!4116655))

(declare-fun b!6823707 () Bool)

(assert (=> b!6823707 (= e!4116657 tp_is_empty!42527)))

(declare-fun b!6823708 () Bool)

(declare-fun res!2787070 () Bool)

(assert (=> b!6823708 (=> res!2787070 e!4116660)))

(assert (=> b!6823708 (= res!2787070 ((_ is Nil!66088) s!2326))))

(declare-fun b!6823709 () Bool)

(declare-fun res!2787059 () Bool)

(assert (=> b!6823709 (=> res!2787059 e!4116659)))

(declare-fun isEmpty!38477 (List!66211) Bool)

(assert (=> b!6823709 (= res!2787059 (not (isEmpty!38477 (t!379950 zl!343))))))

(declare-fun b!6823710 () Bool)

(assert (=> b!6823710 (= e!4116656 e!4116651)))

(declare-fun res!2787063 () Bool)

(assert (=> b!6823710 (=> res!2787063 e!4116651)))

(declare-fun lt!2451838 () Bool)

(assert (=> b!6823710 (= res!2787063 lt!2451838)))

(declare-fun matchRSpec!3738 (Regex!16637 List!66212) Bool)

(assert (=> b!6823710 (= lt!2451838 (matchRSpec!3738 lt!2451846 s!2326))))

(declare-fun matchR!8820 (Regex!16637 List!66212) Bool)

(assert (=> b!6823710 (= lt!2451838 (matchR!8820 lt!2451846 s!2326))))

(declare-fun lt!2451849 () Unit!159965)

(declare-fun mainMatchTheorem!3738 (Regex!16637 List!66212) Unit!159965)

(assert (=> b!6823710 (= lt!2451849 (mainMatchTheorem!3738 lt!2451846 s!2326))))

(declare-fun tp!1867774 () Bool)

(declare-fun b!6823711 () Bool)

(declare-fun e!4116642 () Bool)

(declare-fun inv!84839 (Context!12042) Bool)

(assert (=> b!6823711 (= e!4116654 (and (inv!84839 (h!72535 zl!343)) e!4116642 tp!1867774))))

(declare-fun b!6823712 () Bool)

(declare-fun e!4116650 () Bool)

(assert (=> b!6823712 (= e!4116643 e!4116650)))

(declare-fun res!2787057 () Bool)

(assert (=> b!6823712 (=> res!2787057 e!4116650)))

(declare-fun lt!2451850 () (InoxSet Context!12042))

(assert (=> b!6823712 (= res!2787057 (not (= lt!2451840 (derivationStepZipper!2581 lt!2451850 (h!72536 s!2326)))))))

(assert (=> b!6823712 (= (flatMap!2118 lt!2451850 lambda!385417) (derivationStepZipperUp!1791 lt!2451834 (h!72536 s!2326)))))

(declare-fun lt!2451826 () Unit!159965)

(assert (=> b!6823712 (= lt!2451826 (lemmaFlatMapOnSingletonSet!1644 lt!2451850 lt!2451834 lambda!385417))))

(declare-fun lt!2451842 () Context!12042)

(declare-fun lt!2451820 () (InoxSet Context!12042))

(assert (=> b!6823712 (= (flatMap!2118 lt!2451820 lambda!385417) (derivationStepZipperUp!1791 lt!2451842 (h!72536 s!2326)))))

(declare-fun lt!2451845 () Unit!159965)

(assert (=> b!6823712 (= lt!2451845 (lemmaFlatMapOnSingletonSet!1644 lt!2451820 lt!2451842 lambda!385417))))

(declare-fun lt!2451851 () (InoxSet Context!12042))

(assert (=> b!6823712 (= lt!2451851 (derivationStepZipperUp!1791 lt!2451834 (h!72536 s!2326)))))

(declare-fun lt!2451852 () (InoxSet Context!12042))

(assert (=> b!6823712 (= lt!2451852 (derivationStepZipperUp!1791 lt!2451842 (h!72536 s!2326)))))

(assert (=> b!6823712 (= lt!2451850 (store ((as const (Array Context!12042 Bool)) false) lt!2451834 true))))

(assert (=> b!6823712 (= lt!2451820 (store ((as const (Array Context!12042 Bool)) false) lt!2451842 true))))

(declare-fun lt!2451833 () List!66210)

(assert (=> b!6823712 (= lt!2451842 (Context!12043 lt!2451833))))

(assert (=> b!6823712 (= lt!2451833 (Cons!66086 (reg!16966 r!7292) Nil!66086))))

(declare-fun b!6823713 () Bool)

(assert (=> b!6823713 (= e!4116650 e!4116656)))

(declare-fun res!2787074 () Bool)

(assert (=> b!6823713 (=> res!2787074 e!4116656)))

(declare-fun lt!2451856 () List!66211)

(assert (=> b!6823713 (= res!2787074 (not (= (unfocusZipper!2379 lt!2451856) (reg!16966 r!7292))))))

(assert (=> b!6823713 (= lt!2451856 (Cons!66087 lt!2451842 Nil!66087))))

(declare-fun b!6823714 () Bool)

(declare-fun res!2787067 () Bool)

(assert (=> b!6823714 (=> res!2787067 e!4116659)))

(declare-fun generalisedUnion!2481 (List!66210) Regex!16637)

(declare-fun unfocusZipperList!2058 (List!66211) List!66210)

(assert (=> b!6823714 (= res!2787067 (not (= r!7292 (generalisedUnion!2481 (unfocusZipperList!2058 zl!343)))))))

(declare-fun b!6823715 () Bool)

(declare-fun e!4116652 () Bool)

(assert (=> b!6823715 (= e!4116652 (validRegex!8373 r!7292))))

(declare-datatypes ((tuple2!67224 0))(
  ( (tuple2!67225 (_1!36915 List!66212) (_2!36915 List!66212)) )
))
(declare-fun lt!2451853 () tuple2!67224)

(assert (=> b!6823715 (matchR!8820 (reg!16966 r!7292) (_1!36915 lt!2451853))))

(declare-fun lt!2451835 () Unit!159965)

(declare-fun theoremZipperRegexEquiv!939 ((InoxSet Context!12042) List!66211 Regex!16637 List!66212) Unit!159965)

(assert (=> b!6823715 (= lt!2451835 (theoremZipperRegexEquiv!939 lt!2451820 lt!2451856 (reg!16966 r!7292) (_1!36915 lt!2451853)))))

(declare-fun lt!2451855 () List!66212)

(declare-fun ++!14820 (List!66210 List!66210) List!66210)

(assert (=> b!6823715 (matchZipper!2623 (store ((as const (Array Context!12042 Bool)) false) (Context!12043 (++!14820 lt!2451833 lt!2451841)) true) lt!2451855)))

(declare-fun lt!2451829 () Unit!159965)

(declare-fun lambda!385419 () Int)

(declare-fun lemmaConcatPreservesForall!466 (List!66210 List!66210 Int) Unit!159965)

(assert (=> b!6823715 (= lt!2451829 (lemmaConcatPreservesForall!466 lt!2451833 lt!2451841 lambda!385419))))

(declare-fun lt!2451822 () Unit!159965)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!260 (Context!12042 Context!12042 List!66212 List!66212) Unit!159965)

(assert (=> b!6823715 (= lt!2451822 (lemmaConcatenateContextMatchesConcatOfStrings!260 lt!2451842 lt!2451834 (_1!36915 lt!2451853) (_2!36915 lt!2451853)))))

(declare-fun e!4116649 () Bool)

(assert (=> b!6823716 (= e!4116651 e!4116649)))

(declare-fun res!2787060 () Bool)

(assert (=> b!6823716 (=> res!2787060 e!4116649)))

(declare-fun appendTo!242 ((InoxSet Context!12042) Context!12042) (InoxSet Context!12042))

(assert (=> b!6823716 (= res!2787060 (not (= (appendTo!242 lt!2451820 lt!2451834) lt!2451830)))))

(declare-fun lambda!385418 () Int)

(declare-fun map!15116 ((InoxSet Context!12042) Int) (InoxSet Context!12042))

(assert (=> b!6823716 (= (map!15116 lt!2451820 lambda!385418) (store ((as const (Array Context!12042 Bool)) false) (Context!12043 (++!14820 lt!2451833 lt!2451841)) true))))

(declare-fun lt!2451843 () Unit!159965)

(assert (=> b!6823716 (= lt!2451843 (lemmaConcatPreservesForall!466 lt!2451833 lt!2451841 lambda!385419))))

(declare-fun lt!2451837 () Unit!159965)

(declare-fun lemmaMapOnSingletonSet!272 ((InoxSet Context!12042) Context!12042 Int) Unit!159965)

(assert (=> b!6823716 (= lt!2451837 (lemmaMapOnSingletonSet!272 lt!2451820 lt!2451842 lambda!385418))))

(declare-fun b!6823717 () Bool)

(declare-fun e!4116645 () Bool)

(declare-fun lt!2451832 () Bool)

(assert (=> b!6823717 (= e!4116645 lt!2451832)))

(assert (=> b!6823718 (= e!4116659 e!4116660)))

(declare-fun res!2787073 () Bool)

(assert (=> b!6823718 (=> res!2787073 e!4116660)))

(declare-fun lt!2451831 () Bool)

(assert (=> b!6823718 (= res!2787073 (not (= lt!2451831 e!4116645)))))

(declare-fun res!2787078 () Bool)

(assert (=> b!6823718 (=> res!2787078 e!4116645)))

(declare-fun isEmpty!38478 (List!66212) Bool)

(assert (=> b!6823718 (= res!2787078 (isEmpty!38478 s!2326))))

(declare-fun Exists!3705 (Int) Bool)

(assert (=> b!6823718 (= (Exists!3705 lambda!385414) (Exists!3705 lambda!385416))))

(declare-fun lt!2451847 () Unit!159965)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2232 (Regex!16637 Regex!16637 List!66212) Unit!159965)

(assert (=> b!6823718 (= lt!2451847 (lemmaExistCutMatchRandMatchRSpecEquivalent!2232 (reg!16966 r!7292) r!7292 s!2326))))

(assert (=> b!6823718 (= (Exists!3705 lambda!385414) (Exists!3705 lambda!385415))))

(declare-fun lt!2451836 () Unit!159965)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!796 (Regex!16637 List!66212) Unit!159965)

(assert (=> b!6823718 (= lt!2451836 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!796 (reg!16966 r!7292) s!2326))))

(assert (=> b!6823718 (= lt!2451832 (Exists!3705 lambda!385414))))

(declare-datatypes ((Option!16524 0))(
  ( (None!16523) (Some!16523 (v!52733 tuple2!67224)) )
))
(declare-fun isDefined!13227 (Option!16524) Bool)

(declare-fun findConcatSeparation!2938 (Regex!16637 Regex!16637 List!66212 List!66212 List!66212) Option!16524)

(assert (=> b!6823718 (= lt!2451832 (isDefined!13227 (findConcatSeparation!2938 (reg!16966 r!7292) r!7292 Nil!66088 s!2326 s!2326)))))

(declare-fun lt!2451824 () Unit!159965)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2702 (Regex!16637 Regex!16637 List!66212) Unit!159965)

(assert (=> b!6823718 (= lt!2451824 (lemmaFindConcatSeparationEquivalentToExists!2702 (reg!16966 r!7292) r!7292 s!2326))))

(declare-fun b!6823719 () Bool)

(declare-fun res!2787079 () Bool)

(assert (=> b!6823719 (=> res!2787079 e!4116644)))

(assert (=> b!6823719 (= res!2787079 (not (= (matchZipper!2623 lt!2451830 s!2326) (matchZipper!2623 (derivationStepZipper!2581 lt!2451830 (h!72536 s!2326)) (t!379951 s!2326)))))))

(declare-fun b!6823720 () Bool)

(declare-fun res!2787062 () Bool)

(assert (=> b!6823720 (=> res!2787062 e!4116659)))

(declare-fun generalisedConcat!2234 (List!66210) Regex!16637)

(assert (=> b!6823720 (= res!2787062 (not (= r!7292 (generalisedConcat!2234 (exprs!6521 (h!72535 zl!343))))))))

(declare-fun b!6823721 () Bool)

(declare-fun res!2787075 () Bool)

(assert (=> b!6823721 (=> res!2787075 e!4116659)))

(assert (=> b!6823721 (= res!2787075 (or ((_ is EmptyExpr!16637) r!7292) ((_ is EmptyLang!16637) r!7292) ((_ is ElementMatch!16637) r!7292) ((_ is Union!16637) r!7292) ((_ is Concat!25482) r!7292)))))

(declare-fun b!6823722 () Bool)

(assert (=> b!6823722 (= e!4116649 e!4116652)))

(declare-fun res!2787066 () Bool)

(assert (=> b!6823722 (=> res!2787066 e!4116652)))

(assert (=> b!6823722 (= res!2787066 (not (= s!2326 lt!2451855)))))

(declare-fun ++!14821 (List!66212 List!66212) List!66212)

(assert (=> b!6823722 (= lt!2451855 (++!14821 (_1!36915 lt!2451853) (_2!36915 lt!2451853)))))

(declare-fun lt!2451825 () Option!16524)

(declare-fun get!23025 (Option!16524) tuple2!67224)

(assert (=> b!6823722 (= lt!2451853 (get!23025 lt!2451825))))

(assert (=> b!6823722 (isDefined!13227 lt!2451825)))

(declare-fun findConcatSeparationZippers!246 ((InoxSet Context!12042) (InoxSet Context!12042) List!66212 List!66212 List!66212) Option!16524)

(assert (=> b!6823722 (= lt!2451825 (findConcatSeparationZippers!246 lt!2451820 lt!2451850 Nil!66088 s!2326 s!2326))))

(declare-fun lt!2451854 () Unit!159965)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!246 ((InoxSet Context!12042) Context!12042 List!66212) Unit!159965)

(assert (=> b!6823722 (= lt!2451854 (lemmaConcatZipperMatchesStringThenFindConcatDefined!246 lt!2451820 lt!2451834 s!2326))))

(declare-fun b!6823723 () Bool)

(declare-fun res!2787068 () Bool)

(assert (=> b!6823723 (=> res!2787068 e!4116652)))

(assert (=> b!6823723 (= res!2787068 (not (matchZipper!2623 lt!2451850 (_2!36915 lt!2451853))))))

(declare-fun b!6823724 () Bool)

(declare-fun tp!1867782 () Bool)

(declare-fun tp!1867777 () Bool)

(assert (=> b!6823724 (= e!4116657 (and tp!1867782 tp!1867777))))

(declare-fun b!6823725 () Bool)

(declare-fun res!2787056 () Bool)

(assert (=> b!6823725 (=> res!2787056 e!4116644)))

(declare-fun lt!2451821 () Regex!16637)

(assert (=> b!6823725 (= res!2787056 (or (not (= lt!2451821 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun setNonEmpty!46831 () Bool)

(declare-fun e!4116647 () Bool)

(declare-fun setElem!46831 () Context!12042)

(declare-fun tp!1867776 () Bool)

(assert (=> setNonEmpty!46831 (= setRes!46831 (and tp!1867776 (inv!84839 setElem!46831) e!4116647))))

(declare-fun setRest!46831 () (InoxSet Context!12042))

(assert (=> setNonEmpty!46831 (= z!1189 ((_ map or) (store ((as const (Array Context!12042 Bool)) false) setElem!46831 true) setRest!46831))))

(declare-fun setIsEmpty!46831 () Bool)

(assert (=> setIsEmpty!46831 setRes!46831))

(declare-fun b!6823726 () Bool)

(declare-fun tp!1867780 () Bool)

(assert (=> b!6823726 (= e!4116642 tp!1867780)))

(declare-fun b!6823727 () Bool)

(declare-fun tp!1867775 () Bool)

(declare-fun tp!1867779 () Bool)

(assert (=> b!6823727 (= e!4116657 (and tp!1867775 tp!1867779))))

(declare-fun b!6823728 () Bool)

(declare-fun e!4116653 () Bool)

(assert (=> b!6823728 (= e!4116658 e!4116653)))

(declare-fun res!2787076 () Bool)

(assert (=> b!6823728 (=> (not res!2787076) (not e!4116653))))

(assert (=> b!6823728 (= res!2787076 (= r!7292 lt!2451821))))

(assert (=> b!6823728 (= lt!2451821 (unfocusZipper!2379 zl!343))))

(declare-fun b!6823729 () Bool)

(declare-fun res!2787071 () Bool)

(assert (=> b!6823729 (=> res!2787071 e!4116652)))

(assert (=> b!6823729 (= res!2787071 (not (matchZipper!2623 lt!2451820 (_1!36915 lt!2451853))))))

(declare-fun b!6823730 () Bool)

(declare-fun tp!1867783 () Bool)

(assert (=> b!6823730 (= e!4116647 tp!1867783)))

(declare-fun b!6823731 () Bool)

(assert (=> b!6823731 (= e!4116653 (not e!4116659))))

(declare-fun res!2787058 () Bool)

(assert (=> b!6823731 (=> res!2787058 e!4116659)))

(assert (=> b!6823731 (= res!2787058 (not ((_ is Cons!66087) zl!343)))))

(assert (=> b!6823731 (= lt!2451831 (matchRSpec!3738 r!7292 s!2326))))

(assert (=> b!6823731 (= lt!2451831 (matchR!8820 r!7292 s!2326))))

(declare-fun lt!2451839 () Unit!159965)

(assert (=> b!6823731 (= lt!2451839 (mainMatchTheorem!3738 r!7292 s!2326))))

(assert (= (and start!659864 res!2787080) b!6823699))

(assert (= (and b!6823699 res!2787069) b!6823728))

(assert (= (and b!6823728 res!2787076) b!6823731))

(assert (= (and b!6823731 (not res!2787058)) b!6823709))

(assert (= (and b!6823709 (not res!2787059)) b!6823720))

(assert (= (and b!6823720 (not res!2787062)) b!6823700))

(assert (= (and b!6823700 (not res!2787072)) b!6823714))

(assert (= (and b!6823714 (not res!2787067)) b!6823721))

(assert (= (and b!6823721 (not res!2787075)) b!6823718))

(assert (= (and b!6823718 (not res!2787078)) b!6823717))

(assert (= (and b!6823718 (not res!2787073)) b!6823708))

(assert (= (and b!6823708 (not res!2787070)) b!6823698))

(assert (= (and b!6823698 (not res!2787077)) b!6823703))

(assert (= (and b!6823703 (not res!2787064)) b!6823702))

(assert (= (and b!6823702 (not res!2787081)) b!6823719))

(assert (= (and b!6823719 (not res!2787079)) b!6823725))

(assert (= (and b!6823725 (not res!2787056)) b!6823697))

(assert (= (and b!6823697 (not res!2787065)) b!6823712))

(assert (= (and b!6823712 (not res!2787057)) b!6823713))

(assert (= (and b!6823713 (not res!2787074)) b!6823706))

(assert (= (and b!6823706 (not res!2787082)) b!6823710))

(assert (= (and b!6823710 (not res!2787063)) b!6823705))

(assert (= (and b!6823705 (not res!2787061)) b!6823716))

(assert (= (and b!6823716 (not res!2787060)) b!6823722))

(assert (= (and b!6823722 (not res!2787066)) b!6823729))

(assert (= (and b!6823729 (not res!2787071)) b!6823723))

(assert (= (and b!6823723 (not res!2787068)) b!6823715))

(assert (= (and start!659864 ((_ is ElementMatch!16637) r!7292)) b!6823707))

(assert (= (and start!659864 ((_ is Concat!25482) r!7292)) b!6823727))

(assert (= (and start!659864 ((_ is Star!16637) r!7292)) b!6823704))

(assert (= (and start!659864 ((_ is Union!16637) r!7292)) b!6823724))

(assert (= (and start!659864 condSetEmpty!46831) setIsEmpty!46831))

(assert (= (and start!659864 (not condSetEmpty!46831)) setNonEmpty!46831))

(assert (= setNonEmpty!46831 b!6823730))

(assert (= b!6823711 b!6823726))

(assert (= (and start!659864 ((_ is Cons!66087) zl!343)) b!6823711))

(assert (= (and start!659864 ((_ is Cons!66088) s!2326)) b!6823701))

(declare-fun m!7569328 () Bool)

(assert (=> b!6823719 m!7569328))

(declare-fun m!7569330 () Bool)

(assert (=> b!6823719 m!7569330))

(assert (=> b!6823719 m!7569330))

(declare-fun m!7569332 () Bool)

(assert (=> b!6823719 m!7569332))

(declare-fun m!7569334 () Bool)

(assert (=> b!6823710 m!7569334))

(declare-fun m!7569336 () Bool)

(assert (=> b!6823710 m!7569336))

(declare-fun m!7569338 () Bool)

(assert (=> b!6823710 m!7569338))

(declare-fun m!7569340 () Bool)

(assert (=> b!6823706 m!7569340))

(declare-fun m!7569342 () Bool)

(assert (=> b!6823703 m!7569342))

(declare-fun m!7569344 () Bool)

(assert (=> b!6823703 m!7569344))

(declare-fun m!7569346 () Bool)

(assert (=> b!6823703 m!7569346))

(declare-fun m!7569348 () Bool)

(assert (=> b!6823722 m!7569348))

(declare-fun m!7569350 () Bool)

(assert (=> b!6823722 m!7569350))

(declare-fun m!7569352 () Bool)

(assert (=> b!6823722 m!7569352))

(declare-fun m!7569354 () Bool)

(assert (=> b!6823722 m!7569354))

(declare-fun m!7569356 () Bool)

(assert (=> b!6823722 m!7569356))

(declare-fun m!7569358 () Bool)

(assert (=> b!6823698 m!7569358))

(declare-fun m!7569360 () Bool)

(assert (=> b!6823698 m!7569360))

(declare-fun m!7569362 () Bool)

(assert (=> b!6823698 m!7569362))

(declare-fun m!7569364 () Bool)

(assert (=> b!6823697 m!7569364))

(declare-fun m!7569366 () Bool)

(assert (=> b!6823705 m!7569366))

(declare-fun m!7569368 () Bool)

(assert (=> b!6823731 m!7569368))

(declare-fun m!7569370 () Bool)

(assert (=> b!6823731 m!7569370))

(declare-fun m!7569372 () Bool)

(assert (=> b!6823731 m!7569372))

(declare-fun m!7569374 () Bool)

(assert (=> b!6823712 m!7569374))

(declare-fun m!7569376 () Bool)

(assert (=> b!6823712 m!7569376))

(declare-fun m!7569378 () Bool)

(assert (=> b!6823712 m!7569378))

(declare-fun m!7569380 () Bool)

(assert (=> b!6823712 m!7569380))

(declare-fun m!7569382 () Bool)

(assert (=> b!6823712 m!7569382))

(declare-fun m!7569384 () Bool)

(assert (=> b!6823712 m!7569384))

(declare-fun m!7569386 () Bool)

(assert (=> b!6823712 m!7569386))

(declare-fun m!7569388 () Bool)

(assert (=> b!6823712 m!7569388))

(declare-fun m!7569390 () Bool)

(assert (=> b!6823712 m!7569390))

(declare-fun m!7569392 () Bool)

(assert (=> b!6823715 m!7569392))

(declare-fun m!7569394 () Bool)

(assert (=> b!6823715 m!7569394))

(declare-fun m!7569396 () Bool)

(assert (=> b!6823715 m!7569396))

(declare-fun m!7569398 () Bool)

(assert (=> b!6823715 m!7569398))

(declare-fun m!7569400 () Bool)

(assert (=> b!6823715 m!7569400))

(declare-fun m!7569402 () Bool)

(assert (=> b!6823715 m!7569402))

(assert (=> b!6823715 m!7569398))

(declare-fun m!7569404 () Bool)

(assert (=> b!6823715 m!7569404))

(declare-fun m!7569406 () Bool)

(assert (=> b!6823715 m!7569406))

(declare-fun m!7569408 () Bool)

(assert (=> b!6823702 m!7569408))

(declare-fun m!7569410 () Bool)

(assert (=> b!6823702 m!7569410))

(declare-fun m!7569412 () Bool)

(assert (=> b!6823702 m!7569412))

(declare-fun m!7569414 () Bool)

(assert (=> b!6823702 m!7569414))

(declare-fun m!7569416 () Bool)

(assert (=> b!6823702 m!7569416))

(declare-fun m!7569418 () Bool)

(assert (=> b!6823720 m!7569418))

(assert (=> b!6823716 m!7569404))

(declare-fun m!7569420 () Bool)

(assert (=> b!6823716 m!7569420))

(assert (=> b!6823716 m!7569402))

(assert (=> b!6823716 m!7569398))

(declare-fun m!7569422 () Bool)

(assert (=> b!6823716 m!7569422))

(declare-fun m!7569424 () Bool)

(assert (=> b!6823716 m!7569424))

(assert (=> start!659864 m!7569396))

(declare-fun m!7569426 () Bool)

(assert (=> b!6823699 m!7569426))

(declare-fun m!7569428 () Bool)

(assert (=> b!6823723 m!7569428))

(declare-fun m!7569430 () Bool)

(assert (=> setNonEmpty!46831 m!7569430))

(declare-fun m!7569432 () Bool)

(assert (=> b!6823728 m!7569432))

(declare-fun m!7569434 () Bool)

(assert (=> b!6823713 m!7569434))

(declare-fun m!7569436 () Bool)

(assert (=> b!6823714 m!7569436))

(assert (=> b!6823714 m!7569436))

(declare-fun m!7569438 () Bool)

(assert (=> b!6823714 m!7569438))

(declare-fun m!7569440 () Bool)

(assert (=> b!6823709 m!7569440))

(declare-fun m!7569442 () Bool)

(assert (=> b!6823718 m!7569442))

(declare-fun m!7569444 () Bool)

(assert (=> b!6823718 m!7569444))

(declare-fun m!7569446 () Bool)

(assert (=> b!6823718 m!7569446))

(declare-fun m!7569448 () Bool)

(assert (=> b!6823718 m!7569448))

(declare-fun m!7569450 () Bool)

(assert (=> b!6823718 m!7569450))

(declare-fun m!7569452 () Bool)

(assert (=> b!6823718 m!7569452))

(assert (=> b!6823718 m!7569448))

(assert (=> b!6823718 m!7569452))

(declare-fun m!7569454 () Bool)

(assert (=> b!6823718 m!7569454))

(declare-fun m!7569456 () Bool)

(assert (=> b!6823718 m!7569456))

(assert (=> b!6823718 m!7569448))

(declare-fun m!7569458 () Bool)

(assert (=> b!6823718 m!7569458))

(declare-fun m!7569460 () Bool)

(assert (=> b!6823711 m!7569460))

(declare-fun m!7569462 () Bool)

(assert (=> b!6823729 m!7569462))

(check-sat (not b!6823704) (not b!6823718) (not b!6823713) (not b!6823720) (not b!6823723) (not b!6823712) (not b!6823703) (not b!6823715) (not b!6823705) (not b!6823706) (not b!6823729) (not b!6823730) (not b!6823714) (not b!6823719) (not b!6823699) (not setNonEmpty!46831) (not start!659864) (not b!6823698) (not b!6823702) (not b!6823716) (not b!6823701) (not b!6823711) (not b!6823724) (not b!6823731) (not b!6823728) tp_is_empty!42527 (not b!6823726) (not b!6823709) (not b!6823710) (not b!6823722) (not b!6823697) (not b!6823727))
(check-sat)
