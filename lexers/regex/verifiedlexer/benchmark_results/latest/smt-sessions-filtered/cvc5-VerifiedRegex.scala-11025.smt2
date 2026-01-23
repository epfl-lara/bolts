; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!571984 () Bool)

(assert start!571984)

(declare-fun b!5462688 () Bool)

(assert (=> b!5462688 true))

(assert (=> b!5462688 true))

(declare-fun lambda!289985 () Int)

(declare-fun lambda!289984 () Int)

(assert (=> b!5462688 (not (= lambda!289985 lambda!289984))))

(assert (=> b!5462688 true))

(assert (=> b!5462688 true))

(declare-fun b!5462687 () Bool)

(declare-fun e!3382533 () Bool)

(declare-fun tp!1502501 () Bool)

(declare-fun tp!1502497 () Bool)

(assert (=> b!5462687 (= e!3382533 (and tp!1502501 tp!1502497))))

(declare-fun e!3382536 () Bool)

(assert (=> b!5462688 (= e!3382536 true)))

(declare-fun Exists!2475 (Int) Bool)

(assert (=> b!5462688 (= (Exists!2475 lambda!289984) (Exists!2475 lambda!289985))))

(declare-datatypes ((Unit!155042 0))(
  ( (Unit!155043) )
))
(declare-fun lt!2232751 () Unit!155042)

(declare-datatypes ((C!30862 0))(
  ( (C!30863 (val!25133 Int)) )
))
(declare-datatypes ((Regex!15296 0))(
  ( (ElementMatch!15296 (c!954582 C!30862)) (Concat!24141 (regOne!31104 Regex!15296) (regTwo!31104 Regex!15296)) (EmptyExpr!15296) (Star!15296 (reg!15625 Regex!15296)) (EmptyLang!15296) (Union!15296 (regOne!31105 Regex!15296) (regTwo!31105 Regex!15296)) )
))
(declare-fun r!7292 () Regex!15296)

(declare-datatypes ((List!62187 0))(
  ( (Nil!62063) (Cons!62063 (h!68511 C!30862) (t!375416 List!62187)) )
))
(declare-fun s!2326 () List!62187)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!449 (Regex!15296 List!62187) Unit!155042)

(assert (=> b!5462688 (= lt!2232751 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!449 (reg!15625 r!7292) s!2326))))

(declare-datatypes ((tuple2!64986 0))(
  ( (tuple2!64987 (_1!35796 List!62187) (_2!35796 List!62187)) )
))
(declare-datatypes ((Option!15405 0))(
  ( (None!15404) (Some!15404 (v!51433 tuple2!64986)) )
))
(declare-fun isDefined!12108 (Option!15405) Bool)

(declare-fun findConcatSeparation!1819 (Regex!15296 Regex!15296 List!62187 List!62187 List!62187) Option!15405)

(assert (=> b!5462688 (= (isDefined!12108 (findConcatSeparation!1819 (reg!15625 r!7292) r!7292 Nil!62063 s!2326 s!2326)) (Exists!2475 lambda!289984))))

(declare-fun lt!2232750 () Unit!155042)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1583 (Regex!15296 Regex!15296 List!62187) Unit!155042)

(assert (=> b!5462688 (= lt!2232750 (lemmaFindConcatSeparationEquivalentToExists!1583 (reg!15625 r!7292) r!7292 s!2326))))

(declare-fun b!5462689 () Bool)

(declare-fun e!3382531 () Bool)

(declare-fun tp!1502498 () Bool)

(assert (=> b!5462689 (= e!3382531 tp!1502498)))

(declare-fun b!5462690 () Bool)

(declare-fun res!2327021 () Bool)

(assert (=> b!5462690 (=> res!2327021 e!3382536)))

(declare-datatypes ((List!62188 0))(
  ( (Nil!62064) (Cons!62064 (h!68512 Regex!15296) (t!375417 List!62188)) )
))
(declare-datatypes ((Context!9360 0))(
  ( (Context!9361 (exprs!5180 List!62188)) )
))
(declare-datatypes ((List!62189 0))(
  ( (Nil!62065) (Cons!62065 (h!68513 Context!9360) (t!375418 List!62189)) )
))
(declare-fun zl!343 () List!62189)

(declare-fun generalisedConcat!965 (List!62188) Regex!15296)

(assert (=> b!5462690 (= res!2327021 (not (= r!7292 (generalisedConcat!965 (exprs!5180 (h!68513 zl!343))))))))

(declare-fun tp!1502496 () Bool)

(declare-fun e!3382532 () Bool)

(declare-fun b!5462692 () Bool)

(declare-fun inv!81488 (Context!9360) Bool)

(assert (=> b!5462692 (= e!3382532 (and (inv!81488 (h!68513 zl!343)) e!3382531 tp!1502496))))

(declare-fun b!5462693 () Bool)

(declare-fun res!2327024 () Bool)

(declare-fun e!3382537 () Bool)

(assert (=> b!5462693 (=> (not res!2327024) (not e!3382537))))

(declare-fun z!1189 () (Set Context!9360))

(declare-fun toList!9080 ((Set Context!9360)) List!62189)

(assert (=> b!5462693 (= res!2327024 (= (toList!9080 z!1189) zl!343))))

(declare-fun b!5462694 () Bool)

(declare-fun tp!1502494 () Bool)

(declare-fun tp!1502495 () Bool)

(assert (=> b!5462694 (= e!3382533 (and tp!1502494 tp!1502495))))

(declare-fun e!3382535 () Bool)

(declare-fun setElem!35752 () Context!9360)

(declare-fun setRes!35752 () Bool)

(declare-fun setNonEmpty!35752 () Bool)

(declare-fun tp!1502499 () Bool)

(assert (=> setNonEmpty!35752 (= setRes!35752 (and tp!1502499 (inv!81488 setElem!35752) e!3382535))))

(declare-fun setRest!35752 () (Set Context!9360))

(assert (=> setNonEmpty!35752 (= z!1189 (set.union (set.insert setElem!35752 (as set.empty (Set Context!9360))) setRest!35752))))

(declare-fun b!5462695 () Bool)

(declare-fun e!3382534 () Bool)

(declare-fun tp_is_empty!39845 () Bool)

(declare-fun tp!1502502 () Bool)

(assert (=> b!5462695 (= e!3382534 (and tp_is_empty!39845 tp!1502502))))

(declare-fun setIsEmpty!35752 () Bool)

(assert (=> setIsEmpty!35752 setRes!35752))

(declare-fun b!5462696 () Bool)

(declare-fun res!2327019 () Bool)

(assert (=> b!5462696 (=> res!2327019 e!3382536)))

(assert (=> b!5462696 (= res!2327019 (not (is-Cons!62064 (exprs!5180 (h!68513 zl!343)))))))

(declare-fun b!5462697 () Bool)

(declare-fun res!2327025 () Bool)

(assert (=> b!5462697 (=> res!2327025 e!3382536)))

(declare-fun isEmpty!34044 (List!62189) Bool)

(assert (=> b!5462697 (= res!2327025 (not (isEmpty!34044 (t!375418 zl!343))))))

(declare-fun b!5462698 () Bool)

(declare-fun res!2327020 () Bool)

(assert (=> b!5462698 (=> (not res!2327020) (not e!3382537))))

(declare-fun unfocusZipper!1038 (List!62189) Regex!15296)

(assert (=> b!5462698 (= res!2327020 (= r!7292 (unfocusZipper!1038 zl!343)))))

(declare-fun b!5462691 () Bool)

(declare-fun tp!1502503 () Bool)

(assert (=> b!5462691 (= e!3382533 tp!1502503)))

(declare-fun res!2327023 () Bool)

(assert (=> start!571984 (=> (not res!2327023) (not e!3382537))))

(declare-fun validRegex!7032 (Regex!15296) Bool)

(assert (=> start!571984 (= res!2327023 (validRegex!7032 r!7292))))

(assert (=> start!571984 e!3382537))

(assert (=> start!571984 e!3382533))

(declare-fun condSetEmpty!35752 () Bool)

(assert (=> start!571984 (= condSetEmpty!35752 (= z!1189 (as set.empty (Set Context!9360))))))

(assert (=> start!571984 setRes!35752))

(assert (=> start!571984 e!3382532))

(assert (=> start!571984 e!3382534))

(declare-fun b!5462699 () Bool)

(assert (=> b!5462699 (= e!3382533 tp_is_empty!39845)))

(declare-fun b!5462700 () Bool)

(declare-fun res!2327027 () Bool)

(assert (=> b!5462700 (=> res!2327027 e!3382536)))

(declare-fun generalisedUnion!1225 (List!62188) Regex!15296)

(declare-fun unfocusZipperList!738 (List!62189) List!62188)

(assert (=> b!5462700 (= res!2327027 (not (= r!7292 (generalisedUnion!1225 (unfocusZipperList!738 zl!343)))))))

(declare-fun b!5462701 () Bool)

(assert (=> b!5462701 (= e!3382537 (not e!3382536))))

(declare-fun res!2327026 () Bool)

(assert (=> b!5462701 (=> res!2327026 e!3382536)))

(assert (=> b!5462701 (= res!2327026 (not (is-Cons!62065 zl!343)))))

(declare-fun matchR!7481 (Regex!15296 List!62187) Bool)

(declare-fun matchRSpec!2399 (Regex!15296 List!62187) Bool)

(assert (=> b!5462701 (= (matchR!7481 r!7292 s!2326) (matchRSpec!2399 r!7292 s!2326))))

(declare-fun lt!2232752 () Unit!155042)

(declare-fun mainMatchTheorem!2399 (Regex!15296 List!62187) Unit!155042)

(assert (=> b!5462701 (= lt!2232752 (mainMatchTheorem!2399 r!7292 s!2326))))

(declare-fun b!5462702 () Bool)

(declare-fun res!2327022 () Bool)

(assert (=> b!5462702 (=> res!2327022 e!3382536)))

(assert (=> b!5462702 (= res!2327022 (or (is-EmptyExpr!15296 r!7292) (is-EmptyLang!15296 r!7292) (is-ElementMatch!15296 r!7292) (is-Union!15296 r!7292) (is-Concat!24141 r!7292)))))

(declare-fun b!5462703 () Bool)

(declare-fun tp!1502500 () Bool)

(assert (=> b!5462703 (= e!3382535 tp!1502500)))

(assert (= (and start!571984 res!2327023) b!5462693))

(assert (= (and b!5462693 res!2327024) b!5462698))

(assert (= (and b!5462698 res!2327020) b!5462701))

(assert (= (and b!5462701 (not res!2327026)) b!5462697))

(assert (= (and b!5462697 (not res!2327025)) b!5462690))

(assert (= (and b!5462690 (not res!2327021)) b!5462696))

(assert (= (and b!5462696 (not res!2327019)) b!5462700))

(assert (= (and b!5462700 (not res!2327027)) b!5462702))

(assert (= (and b!5462702 (not res!2327022)) b!5462688))

(assert (= (and start!571984 (is-ElementMatch!15296 r!7292)) b!5462699))

(assert (= (and start!571984 (is-Concat!24141 r!7292)) b!5462694))

(assert (= (and start!571984 (is-Star!15296 r!7292)) b!5462691))

(assert (= (and start!571984 (is-Union!15296 r!7292)) b!5462687))

(assert (= (and start!571984 condSetEmpty!35752) setIsEmpty!35752))

(assert (= (and start!571984 (not condSetEmpty!35752)) setNonEmpty!35752))

(assert (= setNonEmpty!35752 b!5462703))

(assert (= b!5462692 b!5462689))

(assert (= (and start!571984 (is-Cons!62065 zl!343)) b!5462692))

(assert (= (and start!571984 (is-Cons!62063 s!2326)) b!5462695))

(declare-fun m!6483888 () Bool)

(assert (=> setNonEmpty!35752 m!6483888))

(declare-fun m!6483890 () Bool)

(assert (=> b!5462697 m!6483890))

(declare-fun m!6483892 () Bool)

(assert (=> start!571984 m!6483892))

(declare-fun m!6483894 () Bool)

(assert (=> b!5462688 m!6483894))

(declare-fun m!6483896 () Bool)

(assert (=> b!5462688 m!6483896))

(assert (=> b!5462688 m!6483896))

(declare-fun m!6483898 () Bool)

(assert (=> b!5462688 m!6483898))

(declare-fun m!6483900 () Bool)

(assert (=> b!5462688 m!6483900))

(assert (=> b!5462688 m!6483900))

(declare-fun m!6483902 () Bool)

(assert (=> b!5462688 m!6483902))

(declare-fun m!6483904 () Bool)

(assert (=> b!5462688 m!6483904))

(declare-fun m!6483906 () Bool)

(assert (=> b!5462693 m!6483906))

(declare-fun m!6483908 () Bool)

(assert (=> b!5462690 m!6483908))

(declare-fun m!6483910 () Bool)

(assert (=> b!5462701 m!6483910))

(declare-fun m!6483912 () Bool)

(assert (=> b!5462701 m!6483912))

(declare-fun m!6483914 () Bool)

(assert (=> b!5462701 m!6483914))

(declare-fun m!6483916 () Bool)

(assert (=> b!5462700 m!6483916))

(assert (=> b!5462700 m!6483916))

(declare-fun m!6483918 () Bool)

(assert (=> b!5462700 m!6483918))

(declare-fun m!6483920 () Bool)

(assert (=> b!5462698 m!6483920))

(declare-fun m!6483922 () Bool)

(assert (=> b!5462692 m!6483922))

(push 1)

(assert (not b!5462701))

(assert (not b!5462698))

(assert (not start!571984))

(assert tp_is_empty!39845)

(assert (not b!5462697))

(assert (not b!5462688))

(assert (not b!5462695))

(assert (not setNonEmpty!35752))

(assert (not b!5462703))

(assert (not b!5462691))

(assert (not b!5462687))

(assert (not b!5462694))

(assert (not b!5462693))

(assert (not b!5462700))

(assert (not b!5462689))

(assert (not b!5462692))

(assert (not b!5462690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

