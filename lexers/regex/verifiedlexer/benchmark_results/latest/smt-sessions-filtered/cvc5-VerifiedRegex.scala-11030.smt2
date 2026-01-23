; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!572152 () Bool)

(assert start!572152)

(declare-fun b!5464689 () Bool)

(assert (=> b!5464689 true))

(assert (=> b!5464689 true))

(declare-fun lambda!290245 () Int)

(declare-fun lambda!290244 () Int)

(assert (=> b!5464689 (not (= lambda!290245 lambda!290244))))

(assert (=> b!5464689 true))

(assert (=> b!5464689 true))

(declare-fun lambda!290246 () Int)

(assert (=> b!5464689 (not (= lambda!290246 lambda!290244))))

(assert (=> b!5464689 (not (= lambda!290246 lambda!290245))))

(assert (=> b!5464689 true))

(assert (=> b!5464689 true))

(declare-fun b!5464687 () Bool)

(declare-fun e!3383534 () Bool)

(declare-fun tp_is_empty!39865 () Bool)

(assert (=> b!5464687 (= e!3383534 tp_is_empty!39865)))

(declare-fun b!5464688 () Bool)

(declare-fun res!2328026 () Bool)

(declare-fun e!3383531 () Bool)

(assert (=> b!5464688 (=> res!2328026 e!3383531)))

(declare-datatypes ((C!30882 0))(
  ( (C!30883 (val!25143 Int)) )
))
(declare-datatypes ((Regex!15306 0))(
  ( (ElementMatch!15306 (c!954846 C!30882)) (Concat!24151 (regOne!31124 Regex!15306) (regTwo!31124 Regex!15306)) (EmptyExpr!15306) (Star!15306 (reg!15635 Regex!15306)) (EmptyLang!15306) (Union!15306 (regOne!31125 Regex!15306) (regTwo!31125 Regex!15306)) )
))
(declare-fun r!7292 () Regex!15306)

(declare-datatypes ((List!62217 0))(
  ( (Nil!62093) (Cons!62093 (h!68541 Regex!15306) (t!375446 List!62217)) )
))
(declare-datatypes ((Context!9380 0))(
  ( (Context!9381 (exprs!5190 List!62217)) )
))
(declare-datatypes ((List!62218 0))(
  ( (Nil!62094) (Cons!62094 (h!68542 Context!9380) (t!375447 List!62218)) )
))
(declare-fun zl!343 () List!62218)

(declare-fun generalisedUnion!1235 (List!62217) Regex!15306)

(declare-fun unfocusZipperList!748 (List!62218) List!62217)

(assert (=> b!5464688 (= res!2328026 (not (= r!7292 (generalisedUnion!1235 (unfocusZipperList!748 zl!343)))))))

(declare-fun tp!1503035 () Bool)

(declare-fun setRes!35794 () Bool)

(declare-fun setElem!35794 () Context!9380)

(declare-fun e!3383532 () Bool)

(declare-fun setNonEmpty!35794 () Bool)

(declare-fun inv!81513 (Context!9380) Bool)

(assert (=> setNonEmpty!35794 (= setRes!35794 (and tp!1503035 (inv!81513 setElem!35794) e!3383532))))

(declare-fun z!1189 () (Set Context!9380))

(declare-fun setRest!35794 () (Set Context!9380))

(assert (=> setNonEmpty!35794 (= z!1189 (set.union (set.insert setElem!35794 (as set.empty (Set Context!9380))) setRest!35794))))

(declare-fun e!3383535 () Bool)

(assert (=> b!5464689 (= e!3383531 e!3383535)))

(declare-fun res!2328020 () Bool)

(assert (=> b!5464689 (=> res!2328020 e!3383535)))

(declare-fun lt!2233039 () Bool)

(declare-fun e!3383533 () Bool)

(assert (=> b!5464689 (= res!2328020 (not (= lt!2233039 e!3383533)))))

(declare-fun res!2328017 () Bool)

(assert (=> b!5464689 (=> res!2328017 e!3383533)))

(declare-datatypes ((List!62219 0))(
  ( (Nil!62095) (Cons!62095 (h!68543 C!30882) (t!375448 List!62219)) )
))
(declare-fun s!2326 () List!62219)

(declare-fun isEmpty!34068 (List!62219) Bool)

(assert (=> b!5464689 (= res!2328017 (isEmpty!34068 s!2326))))

(declare-fun Exists!2485 (Int) Bool)

(assert (=> b!5464689 (= (Exists!2485 lambda!290244) (Exists!2485 lambda!290246))))

(declare-datatypes ((Unit!155062 0))(
  ( (Unit!155063) )
))
(declare-fun lt!2233041 () Unit!155062)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1135 (Regex!15306 Regex!15306 List!62219) Unit!155062)

(assert (=> b!5464689 (= lt!2233041 (lemmaExistCutMatchRandMatchRSpecEquivalent!1135 (reg!15635 r!7292) r!7292 s!2326))))

(assert (=> b!5464689 (= (Exists!2485 lambda!290244) (Exists!2485 lambda!290245))))

(declare-fun lt!2233036 () Unit!155062)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!459 (Regex!15306 List!62219) Unit!155062)

(assert (=> b!5464689 (= lt!2233036 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!459 (reg!15635 r!7292) s!2326))))

(declare-fun lt!2233042 () Bool)

(assert (=> b!5464689 (= lt!2233042 (Exists!2485 lambda!290244))))

(declare-datatypes ((tuple2!65006 0))(
  ( (tuple2!65007 (_1!35806 List!62219) (_2!35806 List!62219)) )
))
(declare-datatypes ((Option!15415 0))(
  ( (None!15414) (Some!15414 (v!51443 tuple2!65006)) )
))
(declare-fun isDefined!12118 (Option!15415) Bool)

(declare-fun findConcatSeparation!1829 (Regex!15306 Regex!15306 List!62219 List!62219 List!62219) Option!15415)

(assert (=> b!5464689 (= lt!2233042 (isDefined!12118 (findConcatSeparation!1829 (reg!15635 r!7292) r!7292 Nil!62095 s!2326 s!2326)))))

(declare-fun lt!2233043 () Unit!155062)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1593 (Regex!15306 Regex!15306 List!62219) Unit!155062)

(assert (=> b!5464689 (= lt!2233043 (lemmaFindConcatSeparationEquivalentToExists!1593 (reg!15635 r!7292) r!7292 s!2326))))

(declare-fun b!5464690 () Bool)

(declare-fun e!3383536 () Bool)

(declare-fun tp!1503029 () Bool)

(assert (=> b!5464690 (= e!3383536 (and tp_is_empty!39865 tp!1503029))))

(declare-fun b!5464691 () Bool)

(declare-fun tp!1503027 () Bool)

(declare-fun tp!1503033 () Bool)

(assert (=> b!5464691 (= e!3383534 (and tp!1503027 tp!1503033))))

(declare-fun setIsEmpty!35794 () Bool)

(assert (=> setIsEmpty!35794 setRes!35794))

(declare-fun b!5464692 () Bool)

(declare-fun res!2328023 () Bool)

(assert (=> b!5464692 (=> res!2328023 e!3383531)))

(assert (=> b!5464692 (= res!2328023 (not (is-Cons!62093 (exprs!5190 (h!68542 zl!343)))))))

(declare-fun b!5464693 () Bool)

(declare-fun tp!1503034 () Bool)

(declare-fun tp!1503026 () Bool)

(assert (=> b!5464693 (= e!3383534 (and tp!1503034 tp!1503026))))

(declare-fun b!5464694 () Bool)

(declare-fun e!3383538 () Bool)

(assert (=> b!5464694 (= e!3383538 (not e!3383531))))

(declare-fun res!2328015 () Bool)

(assert (=> b!5464694 (=> res!2328015 e!3383531)))

(assert (=> b!5464694 (= res!2328015 (not (is-Cons!62094 zl!343)))))

(declare-fun matchRSpec!2409 (Regex!15306 List!62219) Bool)

(assert (=> b!5464694 (= lt!2233039 (matchRSpec!2409 r!7292 s!2326))))

(declare-fun matchR!7491 (Regex!15306 List!62219) Bool)

(assert (=> b!5464694 (= lt!2233039 (matchR!7491 r!7292 s!2326))))

(declare-fun lt!2233038 () Unit!155062)

(declare-fun mainMatchTheorem!2409 (Regex!15306 List!62219) Unit!155062)

(assert (=> b!5464694 (= lt!2233038 (mainMatchTheorem!2409 r!7292 s!2326))))

(declare-fun b!5464695 () Bool)

(assert (=> b!5464695 (= e!3383533 lt!2233042)))

(declare-fun res!2328021 () Bool)

(declare-fun e!3383530 () Bool)

(assert (=> start!572152 (=> (not res!2328021) (not e!3383530))))

(declare-fun validRegex!7042 (Regex!15306) Bool)

(assert (=> start!572152 (= res!2328021 (validRegex!7042 r!7292))))

(assert (=> start!572152 e!3383530))

(assert (=> start!572152 e!3383534))

(assert (=> start!572152 e!3383536))

(declare-fun condSetEmpty!35794 () Bool)

(assert (=> start!572152 (= condSetEmpty!35794 (= z!1189 (as set.empty (Set Context!9380))))))

(assert (=> start!572152 setRes!35794))

(declare-fun e!3383529 () Bool)

(assert (=> start!572152 e!3383529))

(declare-fun b!5464696 () Bool)

(declare-fun tp!1503032 () Bool)

(assert (=> b!5464696 (= e!3383532 tp!1503032)))

(declare-fun b!5464697 () Bool)

(declare-fun res!2328019 () Bool)

(assert (=> b!5464697 (=> res!2328019 e!3383531)))

(declare-fun generalisedConcat!975 (List!62217) Regex!15306)

(assert (=> b!5464697 (= res!2328019 (not (= r!7292 (generalisedConcat!975 (exprs!5190 (h!68542 zl!343))))))))

(declare-fun b!5464698 () Bool)

(declare-fun e!3383537 () Bool)

(declare-fun tp!1503031 () Bool)

(assert (=> b!5464698 (= e!3383537 tp!1503031)))

(declare-fun b!5464699 () Bool)

(declare-fun res!2328016 () Bool)

(assert (=> b!5464699 (=> res!2328016 e!3383535)))

(assert (=> b!5464699 (= res!2328016 (not (is-Nil!62095 s!2326)))))

(declare-fun b!5464700 () Bool)

(assert (=> b!5464700 (= e!3383530 e!3383538)))

(declare-fun res!2328022 () Bool)

(assert (=> b!5464700 (=> (not res!2328022) (not e!3383538))))

(declare-fun lt!2233037 () List!62218)

(assert (=> b!5464700 (= res!2328022 (= lt!2233037 zl!343))))

(declare-fun toList!9090 ((Set Context!9380)) List!62218)

(assert (=> b!5464700 (= lt!2233037 (toList!9090 z!1189))))

(declare-fun b!5464701 () Bool)

(declare-fun res!2328018 () Bool)

(assert (=> b!5464701 (=> (not res!2328018) (not e!3383538))))

(declare-fun unfocusZipper!1048 (List!62218) Regex!15306)

(assert (=> b!5464701 (= res!2328018 (= r!7292 (unfocusZipper!1048 zl!343)))))

(declare-fun b!5464702 () Bool)

(declare-fun res!2328024 () Bool)

(assert (=> b!5464702 (=> res!2328024 e!3383531)))

(assert (=> b!5464702 (= res!2328024 (or (is-EmptyExpr!15306 r!7292) (is-EmptyLang!15306 r!7292) (is-ElementMatch!15306 r!7292) (is-Union!15306 r!7292) (is-Concat!24151 r!7292)))))

(declare-fun tp!1503028 () Bool)

(declare-fun b!5464703 () Bool)

(assert (=> b!5464703 (= e!3383529 (and (inv!81513 (h!68542 zl!343)) e!3383537 tp!1503028))))

(declare-fun b!5464704 () Bool)

(declare-fun res!2328025 () Bool)

(assert (=> b!5464704 (=> res!2328025 e!3383531)))

(declare-fun isEmpty!34069 (List!62218) Bool)

(assert (=> b!5464704 (= res!2328025 (not (isEmpty!34069 (t!375447 zl!343))))))

(declare-fun b!5464705 () Bool)

(declare-fun tp!1503030 () Bool)

(assert (=> b!5464705 (= e!3383534 tp!1503030)))

(declare-fun b!5464706 () Bool)

(assert (=> b!5464706 (= e!3383535 true)))

(declare-fun lt!2233040 () Regex!15306)

(assert (=> b!5464706 (= lt!2233040 (unfocusZipper!1048 lt!2233037))))

(assert (= (and start!572152 res!2328021) b!5464700))

(assert (= (and b!5464700 res!2328022) b!5464701))

(assert (= (and b!5464701 res!2328018) b!5464694))

(assert (= (and b!5464694 (not res!2328015)) b!5464704))

(assert (= (and b!5464704 (not res!2328025)) b!5464697))

(assert (= (and b!5464697 (not res!2328019)) b!5464692))

(assert (= (and b!5464692 (not res!2328023)) b!5464688))

(assert (= (and b!5464688 (not res!2328026)) b!5464702))

(assert (= (and b!5464702 (not res!2328024)) b!5464689))

(assert (= (and b!5464689 (not res!2328017)) b!5464695))

(assert (= (and b!5464689 (not res!2328020)) b!5464699))

(assert (= (and b!5464699 (not res!2328016)) b!5464706))

(assert (= (and start!572152 (is-ElementMatch!15306 r!7292)) b!5464687))

(assert (= (and start!572152 (is-Concat!24151 r!7292)) b!5464693))

(assert (= (and start!572152 (is-Star!15306 r!7292)) b!5464705))

(assert (= (and start!572152 (is-Union!15306 r!7292)) b!5464691))

(assert (= (and start!572152 (is-Cons!62095 s!2326)) b!5464690))

(assert (= (and start!572152 condSetEmpty!35794) setIsEmpty!35794))

(assert (= (and start!572152 (not condSetEmpty!35794)) setNonEmpty!35794))

(assert (= setNonEmpty!35794 b!5464696))

(assert (= b!5464703 b!5464698))

(assert (= (and start!572152 (is-Cons!62094 zl!343)) b!5464703))

(declare-fun m!6484880 () Bool)

(assert (=> b!5464689 m!6484880))

(declare-fun m!6484882 () Bool)

(assert (=> b!5464689 m!6484882))

(declare-fun m!6484884 () Bool)

(assert (=> b!5464689 m!6484884))

(assert (=> b!5464689 m!6484880))

(declare-fun m!6484886 () Bool)

(assert (=> b!5464689 m!6484886))

(declare-fun m!6484888 () Bool)

(assert (=> b!5464689 m!6484888))

(declare-fun m!6484890 () Bool)

(assert (=> b!5464689 m!6484890))

(assert (=> b!5464689 m!6484888))

(declare-fun m!6484892 () Bool)

(assert (=> b!5464689 m!6484892))

(declare-fun m!6484894 () Bool)

(assert (=> b!5464689 m!6484894))

(declare-fun m!6484896 () Bool)

(assert (=> b!5464689 m!6484896))

(assert (=> b!5464689 m!6484880))

(declare-fun m!6484898 () Bool)

(assert (=> b!5464700 m!6484898))

(declare-fun m!6484900 () Bool)

(assert (=> setNonEmpty!35794 m!6484900))

(declare-fun m!6484902 () Bool)

(assert (=> b!5464694 m!6484902))

(declare-fun m!6484904 () Bool)

(assert (=> b!5464694 m!6484904))

(declare-fun m!6484906 () Bool)

(assert (=> b!5464694 m!6484906))

(declare-fun m!6484908 () Bool)

(assert (=> b!5464701 m!6484908))

(declare-fun m!6484910 () Bool)

(assert (=> b!5464697 m!6484910))

(declare-fun m!6484912 () Bool)

(assert (=> b!5464688 m!6484912))

(assert (=> b!5464688 m!6484912))

(declare-fun m!6484914 () Bool)

(assert (=> b!5464688 m!6484914))

(declare-fun m!6484916 () Bool)

(assert (=> b!5464703 m!6484916))

(declare-fun m!6484918 () Bool)

(assert (=> b!5464704 m!6484918))

(declare-fun m!6484920 () Bool)

(assert (=> start!572152 m!6484920))

(declare-fun m!6484922 () Bool)

(assert (=> b!5464706 m!6484922))

(push 1)

(assert (not b!5464706))

(assert (not b!5464705))

(assert (not b!5464697))

(assert (not setNonEmpty!35794))

(assert (not b!5464701))

(assert (not b!5464704))

(assert (not b!5464690))

(assert (not b!5464703))

(assert (not b!5464691))

(assert (not b!5464700))

(assert (not b!5464698))

(assert (not b!5464694))

(assert (not b!5464696))

(assert (not b!5464688))

(assert (not start!572152))

(assert (not b!5464693))

(assert tp_is_empty!39865)

(assert (not b!5464689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

