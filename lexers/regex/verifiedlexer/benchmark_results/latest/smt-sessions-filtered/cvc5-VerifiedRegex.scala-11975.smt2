; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670918 () Bool)

(assert start!670918)

(declare-fun b!6985762 () Bool)

(assert (=> b!6985762 true))

(declare-fun b!6985765 () Bool)

(assert (=> b!6985765 true))

(declare-fun b!6985766 () Bool)

(assert (=> b!6985766 true))

(declare-fun b!6985757 () Bool)

(declare-fun e!4198683 () Bool)

(declare-datatypes ((C!34662 0))(
  ( (C!34663 (val!27033 Int)) )
))
(declare-datatypes ((Regex!17196 0))(
  ( (ElementMatch!17196 (c!1295394 C!34662)) (Concat!26041 (regOne!34904 Regex!17196) (regTwo!34904 Regex!17196)) (EmptyExpr!17196) (Star!17196 (reg!17525 Regex!17196)) (EmptyLang!17196) (Union!17196 (regOne!34905 Regex!17196) (regTwo!34905 Regex!17196)) )
))
(declare-datatypes ((List!67133 0))(
  ( (Nil!67009) (Cons!67009 (h!73457 Regex!17196) (t!380880 List!67133)) )
))
(declare-datatypes ((Context!12384 0))(
  ( (Context!12385 (exprs!6692 List!67133)) )
))
(declare-fun lt!2484001 () (Set Context!12384))

(declare-datatypes ((List!67134 0))(
  ( (Nil!67010) (Cons!67010 (h!73458 C!34662) (t!380881 List!67134)) )
))
(declare-fun s!7408 () List!67134)

(declare-fun matchZipper!2736 ((Set Context!12384) List!67134) Bool)

(assert (=> b!6985757 (= e!4198683 (matchZipper!2736 lt!2484001 (t!380881 s!7408)))))

(declare-fun b!6985758 () Bool)

(declare-fun e!4198677 () Bool)

(declare-fun e!4198676 () Bool)

(assert (=> b!6985758 (= e!4198677 e!4198676)))

(declare-fun res!2848667 () Bool)

(assert (=> b!6985758 (=> res!2848667 e!4198676)))

(declare-fun lt!2484016 () (Set Context!12384))

(declare-fun lt!2484003 () (Set Context!12384))

(assert (=> b!6985758 (= res!2848667 (not (= lt!2484016 lt!2484003)))))

(declare-fun lt!2484018 () Context!12384)

(assert (=> b!6985758 (= lt!2484016 (set.insert lt!2484018 (as set.empty (Set Context!12384))))))

(declare-datatypes ((Unit!161047 0))(
  ( (Unit!161048) )
))
(declare-fun lt!2484004 () Unit!161047)

(declare-fun lambda!400274 () Int)

(declare-fun lt!2484020 () Context!12384)

(declare-fun ct2!306 () Context!12384)

(declare-fun lemmaConcatPreservesForall!532 (List!67133 List!67133 Int) Unit!161047)

(assert (=> b!6985758 (= lt!2484004 (lemmaConcatPreservesForall!532 (exprs!6692 lt!2484020) (exprs!6692 ct2!306) lambda!400274))))

(declare-fun b!6985759 () Bool)

(declare-fun e!4198672 () Bool)

(declare-fun tp!1929074 () Bool)

(assert (=> b!6985759 (= e!4198672 tp!1929074)))

(declare-fun b!6985760 () Bool)

(declare-fun e!4198681 () Bool)

(declare-fun e!4198684 () Bool)

(assert (=> b!6985760 (= e!4198681 e!4198684)))

(declare-fun res!2848660 () Bool)

(assert (=> b!6985760 (=> res!2848660 e!4198684)))

(assert (=> b!6985760 (= res!2848660 (not (matchZipper!2736 lt!2484001 (t!380881 s!7408))))))

(declare-fun lt!2483998 () Unit!161047)

(declare-fun lt!2483995 () List!67133)

(assert (=> b!6985760 (= lt!2483998 (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(declare-fun res!2848662 () Bool)

(declare-fun e!4198678 () Bool)

(assert (=> start!670918 (=> (not res!2848662) (not e!4198678))))

(declare-fun lt!2484007 () (Set Context!12384))

(assert (=> start!670918 (= res!2848662 (matchZipper!2736 lt!2484007 s!7408))))

(declare-fun z1!570 () (Set Context!12384))

(declare-fun appendTo!317 ((Set Context!12384) Context!12384) (Set Context!12384))

(assert (=> start!670918 (= lt!2484007 (appendTo!317 z1!570 ct2!306))))

(assert (=> start!670918 e!4198678))

(declare-fun condSetEmpty!47682 () Bool)

(assert (=> start!670918 (= condSetEmpty!47682 (= z1!570 (as set.empty (Set Context!12384))))))

(declare-fun setRes!47682 () Bool)

(assert (=> start!670918 setRes!47682))

(declare-fun e!4198682 () Bool)

(declare-fun inv!85850 (Context!12384) Bool)

(assert (=> start!670918 (and (inv!85850 ct2!306) e!4198682)))

(declare-fun e!4198679 () Bool)

(assert (=> start!670918 e!4198679))

(declare-fun b!6985761 () Bool)

(declare-fun res!2848664 () Bool)

(declare-fun e!4198673 () Bool)

(assert (=> b!6985761 (=> res!2848664 e!4198673)))

(declare-fun isEmpty!39115 (List!67133) Bool)

(assert (=> b!6985761 (= res!2848664 (isEmpty!39115 (exprs!6692 lt!2484020)))))

(declare-fun e!4198671 () Bool)

(assert (=> b!6985762 (= e!4198678 (not e!4198671))))

(declare-fun res!2848665 () Bool)

(assert (=> b!6985762 (=> res!2848665 e!4198671)))

(assert (=> b!6985762 (= res!2848665 (not (matchZipper!2736 lt!2484003 s!7408)))))

(declare-fun lt!2483999 () Context!12384)

(assert (=> b!6985762 (= lt!2484003 (set.insert lt!2483999 (as set.empty (Set Context!12384))))))

(declare-fun lambda!400272 () Int)

(declare-fun getWitness!1082 ((Set Context!12384) Int) Context!12384)

(assert (=> b!6985762 (= lt!2483999 (getWitness!1082 lt!2484007 lambda!400272))))

(declare-datatypes ((List!67135 0))(
  ( (Nil!67011) (Cons!67011 (h!73459 Context!12384) (t!380882 List!67135)) )
))
(declare-fun lt!2484021 () List!67135)

(declare-fun exists!2971 (List!67135 Int) Bool)

(assert (=> b!6985762 (exists!2971 lt!2484021 lambda!400272)))

(declare-fun lt!2484008 () Unit!161047)

(declare-fun lemmaZipperMatchesExistsMatchingContext!165 (List!67135 List!67134) Unit!161047)

(assert (=> b!6985762 (= lt!2484008 (lemmaZipperMatchesExistsMatchingContext!165 lt!2484021 s!7408))))

(declare-fun toList!10556 ((Set Context!12384)) List!67135)

(assert (=> b!6985762 (= lt!2484021 (toList!10556 lt!2484007))))

(declare-fun b!6985763 () Bool)

(declare-fun e!4198674 () Bool)

(assert (=> b!6985763 (= e!4198674 (not (matchZipper!2736 lt!2484001 (t!380881 s!7408))))))

(declare-fun lt!2483996 () Unit!161047)

(assert (=> b!6985763 (= lt!2483996 (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(declare-fun b!6985764 () Bool)

(declare-fun res!2848666 () Bool)

(assert (=> b!6985764 (=> res!2848666 e!4198673)))

(assert (=> b!6985764 (= res!2848666 (not (is-Cons!67009 (exprs!6692 lt!2484020))))))

(assert (=> b!6985765 (= e!4198671 e!4198677)))

(declare-fun res!2848663 () Bool)

(assert (=> b!6985765 (=> res!2848663 e!4198677)))

(assert (=> b!6985765 (= res!2848663 (or (not (= lt!2484018 lt!2483999)) (not (set.member lt!2484020 z1!570))))))

(declare-fun ++!15141 (List!67133 List!67133) List!67133)

(assert (=> b!6985765 (= lt!2484018 (Context!12385 (++!15141 (exprs!6692 lt!2484020) (exprs!6692 ct2!306))))))

(declare-fun lt!2484013 () Unit!161047)

(assert (=> b!6985765 (= lt!2484013 (lemmaConcatPreservesForall!532 (exprs!6692 lt!2484020) (exprs!6692 ct2!306) lambda!400274))))

(declare-fun lambda!400273 () Int)

(declare-fun mapPost2!51 ((Set Context!12384) Int Context!12384) Context!12384)

(assert (=> b!6985765 (= lt!2484020 (mapPost2!51 z1!570 lambda!400273 lt!2483999))))

(assert (=> b!6985766 (= e!4198676 e!4198673)))

(declare-fun res!2848659 () Bool)

(assert (=> b!6985766 (=> res!2848659 e!4198673)))

(declare-fun lt!2484012 () (Set Context!12384))

(declare-fun derivationStepZipper!2676 ((Set Context!12384) C!34662) (Set Context!12384))

(assert (=> b!6985766 (= res!2848659 (not (= (derivationStepZipper!2676 lt!2484016 (h!73458 s!7408)) lt!2484012)))))

(declare-fun lambda!400275 () Int)

(declare-fun flatMap!2182 ((Set Context!12384) Int) (Set Context!12384))

(declare-fun derivationStepZipperUp!1846 (Context!12384 C!34662) (Set Context!12384))

(assert (=> b!6985766 (= (flatMap!2182 lt!2484016 lambda!400275) (derivationStepZipperUp!1846 lt!2484018 (h!73458 s!7408)))))

(declare-fun lt!2484002 () Unit!161047)

(declare-fun lemmaFlatMapOnSingletonSet!1697 ((Set Context!12384) Context!12384 Int) Unit!161047)

(assert (=> b!6985766 (= lt!2484002 (lemmaFlatMapOnSingletonSet!1697 lt!2484016 lt!2484018 lambda!400275))))

(assert (=> b!6985766 (= lt!2484012 (derivationStepZipperUp!1846 lt!2484018 (h!73458 s!7408)))))

(declare-fun lt!2484014 () Unit!161047)

(assert (=> b!6985766 (= lt!2484014 (lemmaConcatPreservesForall!532 (exprs!6692 lt!2484020) (exprs!6692 ct2!306) lambda!400274))))

(declare-fun b!6985767 () Bool)

(declare-fun res!2848670 () Bool)

(assert (=> b!6985767 (=> res!2848670 e!4198681)))

(declare-fun lt!2484000 () Bool)

(assert (=> b!6985767 (= res!2848670 (not lt!2484000))))

(declare-fun b!6985768 () Bool)

(declare-fun tp!1929076 () Bool)

(assert (=> b!6985768 (= e!4198682 tp!1929076)))

(declare-fun setIsEmpty!47682 () Bool)

(assert (=> setIsEmpty!47682 setRes!47682))

(declare-fun b!6985769 () Bool)

(declare-fun res!2848655 () Bool)

(assert (=> b!6985769 (=> res!2848655 e!4198671)))

(assert (=> b!6985769 (= res!2848655 (not (set.member lt!2483999 lt!2484007)))))

(declare-fun setElem!47682 () Context!12384)

(declare-fun tp!1929073 () Bool)

(declare-fun setNonEmpty!47682 () Bool)

(assert (=> setNonEmpty!47682 (= setRes!47682 (and tp!1929073 (inv!85850 setElem!47682) e!4198672))))

(declare-fun setRest!47682 () (Set Context!12384))

(assert (=> setNonEmpty!47682 (= z1!570 (set.union (set.insert setElem!47682 (as set.empty (Set Context!12384))) setRest!47682))))

(declare-fun b!6985770 () Bool)

(declare-fun res!2848657 () Bool)

(assert (=> b!6985770 (=> (not res!2848657) (not e!4198678))))

(assert (=> b!6985770 (= res!2848657 (is-Cons!67010 s!7408))))

(declare-fun b!6985771 () Bool)

(declare-fun e!4198675 () Bool)

(assert (=> b!6985771 (= e!4198673 e!4198675)))

(declare-fun res!2848668 () Bool)

(assert (=> b!6985771 (=> res!2848668 e!4198675)))

(declare-fun nullable!6956 (Regex!17196) Bool)

(assert (=> b!6985771 (= res!2848668 (not (nullable!6956 (h!73457 (exprs!6692 lt!2484020)))))))

(declare-fun tail!13191 (List!67133) List!67133)

(assert (=> b!6985771 (= lt!2483995 (tail!13191 (exprs!6692 lt!2484020)))))

(declare-fun b!6985772 () Bool)

(declare-fun e!4198680 () Bool)

(assert (=> b!6985772 (= e!4198675 e!4198680)))

(declare-fun res!2848661 () Bool)

(assert (=> b!6985772 (=> res!2848661 e!4198680)))

(declare-fun lt!2483997 () (Set Context!12384))

(assert (=> b!6985772 (= res!2848661 (not (= lt!2484012 lt!2483997)))))

(declare-fun lt!2484015 () (Set Context!12384))

(assert (=> b!6985772 (= lt!2483997 (set.union lt!2484015 lt!2484001))))

(declare-fun lt!2484019 () Context!12384)

(assert (=> b!6985772 (= lt!2484001 (derivationStepZipperUp!1846 lt!2484019 (h!73458 s!7408)))))

(declare-fun derivationStepZipperDown!1914 (Regex!17196 Context!12384 C!34662) (Set Context!12384))

(assert (=> b!6985772 (= lt!2484015 (derivationStepZipperDown!1914 (h!73457 (exprs!6692 lt!2484020)) lt!2484019 (h!73458 s!7408)))))

(assert (=> b!6985772 (= lt!2484019 (Context!12385 (++!15141 lt!2483995 (exprs!6692 ct2!306))))))

(declare-fun lt!2484009 () Unit!161047)

(assert (=> b!6985772 (= lt!2484009 (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(declare-fun lt!2484022 () Unit!161047)

(assert (=> b!6985772 (= lt!2484022 (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(declare-fun b!6985773 () Bool)

(assert (=> b!6985773 (= e!4198680 e!4198681)))

(declare-fun res!2848658 () Bool)

(assert (=> b!6985773 (=> res!2848658 e!4198681)))

(assert (=> b!6985773 (= res!2848658 e!4198674)))

(declare-fun res!2848669 () Bool)

(assert (=> b!6985773 (=> (not res!2848669) (not e!4198674))))

(declare-fun lt!2484006 () Bool)

(assert (=> b!6985773 (= res!2848669 (not (= lt!2484000 lt!2484006)))))

(assert (=> b!6985773 (= lt!2484000 (matchZipper!2736 lt!2484012 (t!380881 s!7408)))))

(declare-fun lt!2484017 () Unit!161047)

(assert (=> b!6985773 (= lt!2484017 (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(assert (=> b!6985773 (= (matchZipper!2736 lt!2483997 (t!380881 s!7408)) e!4198683)))

(declare-fun res!2848656 () Bool)

(assert (=> b!6985773 (=> res!2848656 e!4198683)))

(assert (=> b!6985773 (= res!2848656 lt!2484006)))

(assert (=> b!6985773 (= lt!2484006 (matchZipper!2736 lt!2484015 (t!380881 s!7408)))))

(declare-fun lt!2484010 () Unit!161047)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1369 ((Set Context!12384) (Set Context!12384) List!67134) Unit!161047)

(assert (=> b!6985773 (= lt!2484010 (lemmaZipperConcatMatchesSameAsBothZippers!1369 lt!2484015 lt!2484001 (t!380881 s!7408)))))

(declare-fun lt!2484011 () Unit!161047)

(assert (=> b!6985773 (= lt!2484011 (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(declare-fun lt!2484005 () Unit!161047)

(assert (=> b!6985773 (= lt!2484005 (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(declare-fun b!6985774 () Bool)

(declare-fun tp_is_empty!43617 () Bool)

(declare-fun tp!1929075 () Bool)

(assert (=> b!6985774 (= e!4198679 (and tp_is_empty!43617 tp!1929075))))

(declare-fun b!6985775 () Bool)

(declare-fun forall!16101 (List!67133 Int) Bool)

(assert (=> b!6985775 (= e!4198684 (forall!16101 lt!2483995 lambda!400274))))

(assert (= (and start!670918 res!2848662) b!6985770))

(assert (= (and b!6985770 res!2848657) b!6985762))

(assert (= (and b!6985762 (not res!2848665)) b!6985769))

(assert (= (and b!6985769 (not res!2848655)) b!6985765))

(assert (= (and b!6985765 (not res!2848663)) b!6985758))

(assert (= (and b!6985758 (not res!2848667)) b!6985766))

(assert (= (and b!6985766 (not res!2848659)) b!6985764))

(assert (= (and b!6985764 (not res!2848666)) b!6985761))

(assert (= (and b!6985761 (not res!2848664)) b!6985771))

(assert (= (and b!6985771 (not res!2848668)) b!6985772))

(assert (= (and b!6985772 (not res!2848661)) b!6985773))

(assert (= (and b!6985773 (not res!2848656)) b!6985757))

(assert (= (and b!6985773 res!2848669) b!6985763))

(assert (= (and b!6985773 (not res!2848658)) b!6985767))

(assert (= (and b!6985767 (not res!2848670)) b!6985760))

(assert (= (and b!6985760 (not res!2848660)) b!6985775))

(assert (= (and start!670918 condSetEmpty!47682) setIsEmpty!47682))

(assert (= (and start!670918 (not condSetEmpty!47682)) setNonEmpty!47682))

(assert (= setNonEmpty!47682 b!6985759))

(assert (= start!670918 b!6985768))

(assert (= (and start!670918 (is-Cons!67010 s!7408)) b!6985774))

(declare-fun m!7673380 () Bool)

(assert (=> b!6985775 m!7673380))

(declare-fun m!7673382 () Bool)

(assert (=> b!6985772 m!7673382))

(declare-fun m!7673384 () Bool)

(assert (=> b!6985772 m!7673384))

(assert (=> b!6985772 m!7673384))

(declare-fun m!7673386 () Bool)

(assert (=> b!6985772 m!7673386))

(declare-fun m!7673388 () Bool)

(assert (=> b!6985772 m!7673388))

(declare-fun m!7673390 () Bool)

(assert (=> b!6985760 m!7673390))

(assert (=> b!6985760 m!7673384))

(declare-fun m!7673392 () Bool)

(assert (=> b!6985758 m!7673392))

(declare-fun m!7673394 () Bool)

(assert (=> b!6985758 m!7673394))

(assert (=> b!6985763 m!7673390))

(assert (=> b!6985763 m!7673384))

(declare-fun m!7673396 () Bool)

(assert (=> b!6985771 m!7673396))

(declare-fun m!7673398 () Bool)

(assert (=> b!6985771 m!7673398))

(declare-fun m!7673400 () Bool)

(assert (=> b!6985761 m!7673400))

(declare-fun m!7673402 () Bool)

(assert (=> b!6985762 m!7673402))

(declare-fun m!7673404 () Bool)

(assert (=> b!6985762 m!7673404))

(declare-fun m!7673406 () Bool)

(assert (=> b!6985762 m!7673406))

(declare-fun m!7673408 () Bool)

(assert (=> b!6985762 m!7673408))

(declare-fun m!7673410 () Bool)

(assert (=> b!6985762 m!7673410))

(declare-fun m!7673412 () Bool)

(assert (=> b!6985762 m!7673412))

(declare-fun m!7673414 () Bool)

(assert (=> start!670918 m!7673414))

(declare-fun m!7673416 () Bool)

(assert (=> start!670918 m!7673416))

(declare-fun m!7673418 () Bool)

(assert (=> start!670918 m!7673418))

(declare-fun m!7673420 () Bool)

(assert (=> b!6985765 m!7673420))

(declare-fun m!7673422 () Bool)

(assert (=> b!6985765 m!7673422))

(assert (=> b!6985765 m!7673394))

(declare-fun m!7673424 () Bool)

(assert (=> b!6985765 m!7673424))

(declare-fun m!7673426 () Bool)

(assert (=> b!6985766 m!7673426))

(assert (=> b!6985766 m!7673394))

(declare-fun m!7673428 () Bool)

(assert (=> b!6985766 m!7673428))

(declare-fun m!7673430 () Bool)

(assert (=> b!6985766 m!7673430))

(declare-fun m!7673432 () Bool)

(assert (=> b!6985766 m!7673432))

(assert (=> b!6985773 m!7673384))

(declare-fun m!7673434 () Bool)

(assert (=> b!6985773 m!7673434))

(assert (=> b!6985773 m!7673384))

(declare-fun m!7673436 () Bool)

(assert (=> b!6985773 m!7673436))

(declare-fun m!7673438 () Bool)

(assert (=> b!6985773 m!7673438))

(declare-fun m!7673440 () Bool)

(assert (=> b!6985773 m!7673440))

(assert (=> b!6985773 m!7673384))

(declare-fun m!7673442 () Bool)

(assert (=> b!6985769 m!7673442))

(declare-fun m!7673444 () Bool)

(assert (=> setNonEmpty!47682 m!7673444))

(assert (=> b!6985757 m!7673390))

(push 1)

(assert (not b!6985762))

(assert (not setNonEmpty!47682))

(assert (not b!6985765))

(assert (not b!6985757))

(assert (not b!6985760))

(assert (not b!6985768))

(assert (not b!6985763))

(assert (not b!6985775))

(assert (not b!6985774))

(assert (not b!6985758))

(assert (not b!6985766))

(assert (not b!6985759))

(assert tp_is_empty!43617)

(assert (not b!6985773))

(assert (not b!6985761))

(assert (not b!6985772))

(assert (not start!670918))

(assert (not b!6985771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2175938 () Bool)

(declare-fun res!2848724 () Bool)

(declare-fun e!4198731 () Bool)

(assert (=> d!2175938 (=> res!2848724 e!4198731)))

(assert (=> d!2175938 (= res!2848724 (is-Nil!67009 lt!2483995))))

(assert (=> d!2175938 (= (forall!16101 lt!2483995 lambda!400274) e!4198731)))

(declare-fun b!6985849 () Bool)

(declare-fun e!4198732 () Bool)

(assert (=> b!6985849 (= e!4198731 e!4198732)))

(declare-fun res!2848725 () Bool)

(assert (=> b!6985849 (=> (not res!2848725) (not e!4198732))))

(declare-fun dynLambda!26836 (Int Regex!17196) Bool)

(assert (=> b!6985849 (= res!2848725 (dynLambda!26836 lambda!400274 (h!73457 lt!2483995)))))

(declare-fun b!6985850 () Bool)

(assert (=> b!6985850 (= e!4198732 (forall!16101 (t!380880 lt!2483995) lambda!400274))))

(assert (= (and d!2175938 (not res!2848724)) b!6985849))

(assert (= (and b!6985849 res!2848725) b!6985850))

(declare-fun b_lambda!262199 () Bool)

(assert (=> (not b_lambda!262199) (not b!6985849)))

(declare-fun m!7673512 () Bool)

(assert (=> b!6985849 m!7673512))

(declare-fun m!7673514 () Bool)

(assert (=> b!6985850 m!7673514))

(assert (=> b!6985775 d!2175938))

(declare-fun bs!1861673 () Bool)

(declare-fun d!2175940 () Bool)

(assert (= bs!1861673 (and d!2175940 b!6985766)))

(declare-fun lambda!400314 () Int)

(assert (=> bs!1861673 (= lambda!400314 lambda!400275)))

(assert (=> d!2175940 true))

(assert (=> d!2175940 (= (derivationStepZipper!2676 lt!2484016 (h!73458 s!7408)) (flatMap!2182 lt!2484016 lambda!400314))))

(declare-fun bs!1861674 () Bool)

(assert (= bs!1861674 d!2175940))

(declare-fun m!7673516 () Bool)

(assert (=> bs!1861674 m!7673516))

(assert (=> b!6985766 d!2175940))

(declare-fun d!2175942 () Bool)

(assert (=> d!2175942 (forall!16101 (++!15141 (exprs!6692 lt!2484020) (exprs!6692 ct2!306)) lambda!400274)))

(declare-fun lt!2484111 () Unit!161047)

(declare-fun choose!52162 (List!67133 List!67133 Int) Unit!161047)

(assert (=> d!2175942 (= lt!2484111 (choose!52162 (exprs!6692 lt!2484020) (exprs!6692 ct2!306) lambda!400274))))

(assert (=> d!2175942 (forall!16101 (exprs!6692 lt!2484020) lambda!400274)))

(assert (=> d!2175942 (= (lemmaConcatPreservesForall!532 (exprs!6692 lt!2484020) (exprs!6692 ct2!306) lambda!400274) lt!2484111)))

(declare-fun bs!1861675 () Bool)

(assert (= bs!1861675 d!2175942))

(assert (=> bs!1861675 m!7673422))

(assert (=> bs!1861675 m!7673422))

(declare-fun m!7673518 () Bool)

(assert (=> bs!1861675 m!7673518))

(declare-fun m!7673520 () Bool)

(assert (=> bs!1861675 m!7673520))

(declare-fun m!7673522 () Bool)

(assert (=> bs!1861675 m!7673522))

(assert (=> b!6985766 d!2175942))

(declare-fun b!6985863 () Bool)

(declare-fun e!4198739 () (Set Context!12384))

(declare-fun e!4198741 () (Set Context!12384))

(assert (=> b!6985863 (= e!4198739 e!4198741)))

(declare-fun c!1295411 () Bool)

(assert (=> b!6985863 (= c!1295411 (is-Cons!67009 (exprs!6692 lt!2484018)))))

(declare-fun b!6985864 () Bool)

(assert (=> b!6985864 (= e!4198741 (as set.empty (Set Context!12384)))))

(declare-fun b!6985865 () Bool)

(declare-fun e!4198740 () Bool)

(assert (=> b!6985865 (= e!4198740 (nullable!6956 (h!73457 (exprs!6692 lt!2484018))))))

(declare-fun b!6985866 () Bool)

(declare-fun call!634118 () (Set Context!12384))

(assert (=> b!6985866 (= e!4198739 (set.union call!634118 (derivationStepZipperUp!1846 (Context!12385 (t!380880 (exprs!6692 lt!2484018))) (h!73458 s!7408))))))

(declare-fun d!2175944 () Bool)

(declare-fun c!1295410 () Bool)

(assert (=> d!2175944 (= c!1295410 e!4198740)))

(declare-fun res!2848728 () Bool)

(assert (=> d!2175944 (=> (not res!2848728) (not e!4198740))))

(assert (=> d!2175944 (= res!2848728 (is-Cons!67009 (exprs!6692 lt!2484018)))))

(assert (=> d!2175944 (= (derivationStepZipperUp!1846 lt!2484018 (h!73458 s!7408)) e!4198739)))

(declare-fun b!6985867 () Bool)

(assert (=> b!6985867 (= e!4198741 call!634118)))

(declare-fun bm!634113 () Bool)

(assert (=> bm!634113 (= call!634118 (derivationStepZipperDown!1914 (h!73457 (exprs!6692 lt!2484018)) (Context!12385 (t!380880 (exprs!6692 lt!2484018))) (h!73458 s!7408)))))

(assert (= (and d!2175944 res!2848728) b!6985865))

(assert (= (and d!2175944 c!1295410) b!6985866))

(assert (= (and d!2175944 (not c!1295410)) b!6985863))

(assert (= (and b!6985863 c!1295411) b!6985867))

(assert (= (and b!6985863 (not c!1295411)) b!6985864))

(assert (= (or b!6985866 b!6985867) bm!634113))

(declare-fun m!7673524 () Bool)

(assert (=> b!6985865 m!7673524))

(declare-fun m!7673526 () Bool)

(assert (=> b!6985866 m!7673526))

(declare-fun m!7673528 () Bool)

(assert (=> bm!634113 m!7673528))

(assert (=> b!6985766 d!2175944))

(declare-fun d!2175946 () Bool)

(declare-fun dynLambda!26837 (Int Context!12384) (Set Context!12384))

(assert (=> d!2175946 (= (flatMap!2182 lt!2484016 lambda!400275) (dynLambda!26837 lambda!400275 lt!2484018))))

(declare-fun lt!2484114 () Unit!161047)

(declare-fun choose!52163 ((Set Context!12384) Context!12384 Int) Unit!161047)

(assert (=> d!2175946 (= lt!2484114 (choose!52163 lt!2484016 lt!2484018 lambda!400275))))

(assert (=> d!2175946 (= lt!2484016 (set.insert lt!2484018 (as set.empty (Set Context!12384))))))

(assert (=> d!2175946 (= (lemmaFlatMapOnSingletonSet!1697 lt!2484016 lt!2484018 lambda!400275) lt!2484114)))

(declare-fun b_lambda!262201 () Bool)

(assert (=> (not b_lambda!262201) (not d!2175946)))

(declare-fun bs!1861676 () Bool)

(assert (= bs!1861676 d!2175946))

(assert (=> bs!1861676 m!7673430))

(declare-fun m!7673530 () Bool)

(assert (=> bs!1861676 m!7673530))

(declare-fun m!7673532 () Bool)

(assert (=> bs!1861676 m!7673532))

(assert (=> bs!1861676 m!7673392))

(assert (=> b!6985766 d!2175946))

(declare-fun d!2175948 () Bool)

(declare-fun choose!52164 ((Set Context!12384) Int) (Set Context!12384))

(assert (=> d!2175948 (= (flatMap!2182 lt!2484016 lambda!400275) (choose!52164 lt!2484016 lambda!400275))))

(declare-fun bs!1861677 () Bool)

(assert (= bs!1861677 d!2175948))

(declare-fun m!7673534 () Bool)

(assert (=> bs!1861677 m!7673534))

(assert (=> b!6985766 d!2175948))

(declare-fun d!2175950 () Bool)

(declare-fun e!4198746 () Bool)

(assert (=> d!2175950 e!4198746))

(declare-fun res!2848734 () Bool)

(assert (=> d!2175950 (=> (not res!2848734) (not e!4198746))))

(declare-fun lt!2484117 () List!67133)

(declare-fun content!13234 (List!67133) (Set Regex!17196))

(assert (=> d!2175950 (= res!2848734 (= (content!13234 lt!2484117) (set.union (content!13234 (exprs!6692 lt!2484020)) (content!13234 (exprs!6692 ct2!306)))))))

(declare-fun e!4198747 () List!67133)

(assert (=> d!2175950 (= lt!2484117 e!4198747)))

(declare-fun c!1295414 () Bool)

(assert (=> d!2175950 (= c!1295414 (is-Nil!67009 (exprs!6692 lt!2484020)))))

(assert (=> d!2175950 (= (++!15141 (exprs!6692 lt!2484020) (exprs!6692 ct2!306)) lt!2484117)))

(declare-fun b!6985876 () Bool)

(assert (=> b!6985876 (= e!4198747 (exprs!6692 ct2!306))))

(declare-fun b!6985879 () Bool)

(assert (=> b!6985879 (= e!4198746 (or (not (= (exprs!6692 ct2!306) Nil!67009)) (= lt!2484117 (exprs!6692 lt!2484020))))))

(declare-fun b!6985877 () Bool)

(assert (=> b!6985877 (= e!4198747 (Cons!67009 (h!73457 (exprs!6692 lt!2484020)) (++!15141 (t!380880 (exprs!6692 lt!2484020)) (exprs!6692 ct2!306))))))

(declare-fun b!6985878 () Bool)

(declare-fun res!2848733 () Bool)

(assert (=> b!6985878 (=> (not res!2848733) (not e!4198746))))

(declare-fun size!40893 (List!67133) Int)

(assert (=> b!6985878 (= res!2848733 (= (size!40893 lt!2484117) (+ (size!40893 (exprs!6692 lt!2484020)) (size!40893 (exprs!6692 ct2!306)))))))

(assert (= (and d!2175950 c!1295414) b!6985876))

(assert (= (and d!2175950 (not c!1295414)) b!6985877))

(assert (= (and d!2175950 res!2848734) b!6985878))

(assert (= (and b!6985878 res!2848733) b!6985879))

(declare-fun m!7673536 () Bool)

(assert (=> d!2175950 m!7673536))

(declare-fun m!7673538 () Bool)

(assert (=> d!2175950 m!7673538))

(declare-fun m!7673540 () Bool)

(assert (=> d!2175950 m!7673540))

(declare-fun m!7673542 () Bool)

(assert (=> b!6985877 m!7673542))

(declare-fun m!7673544 () Bool)

(assert (=> b!6985878 m!7673544))

(declare-fun m!7673546 () Bool)

(assert (=> b!6985878 m!7673546))

(declare-fun m!7673548 () Bool)

(assert (=> b!6985878 m!7673548))

(assert (=> b!6985765 d!2175950))

(assert (=> b!6985765 d!2175942))

(declare-fun d!2175952 () Bool)

(declare-fun e!4198750 () Bool)

(assert (=> d!2175952 e!4198750))

(declare-fun res!2848737 () Bool)

(assert (=> d!2175952 (=> (not res!2848737) (not e!4198750))))

(declare-fun lt!2484120 () Context!12384)

(declare-fun dynLambda!26838 (Int Context!12384) Context!12384)

(assert (=> d!2175952 (= res!2848737 (= lt!2483999 (dynLambda!26838 lambda!400273 lt!2484120)))))

(declare-fun choose!52165 ((Set Context!12384) Int Context!12384) Context!12384)

(assert (=> d!2175952 (= lt!2484120 (choose!52165 z1!570 lambda!400273 lt!2483999))))

(declare-fun map!15454 ((Set Context!12384) Int) (Set Context!12384))

(assert (=> d!2175952 (set.member lt!2483999 (map!15454 z1!570 lambda!400273))))

(assert (=> d!2175952 (= (mapPost2!51 z1!570 lambda!400273 lt!2483999) lt!2484120)))

(declare-fun b!6985883 () Bool)

(assert (=> b!6985883 (= e!4198750 (set.member lt!2484120 z1!570))))

(assert (= (and d!2175952 res!2848737) b!6985883))

(declare-fun b_lambda!262203 () Bool)

(assert (=> (not b_lambda!262203) (not d!2175952)))

(declare-fun m!7673550 () Bool)

(assert (=> d!2175952 m!7673550))

(declare-fun m!7673552 () Bool)

(assert (=> d!2175952 m!7673552))

(declare-fun m!7673554 () Bool)

(assert (=> d!2175952 m!7673554))

(declare-fun m!7673556 () Bool)

(assert (=> d!2175952 m!7673556))

(declare-fun m!7673558 () Bool)

(assert (=> b!6985883 m!7673558))

(assert (=> b!6985765 d!2175952))

(declare-fun d!2175954 () Bool)

(declare-fun c!1295417 () Bool)

(declare-fun isEmpty!39117 (List!67134) Bool)

(assert (=> d!2175954 (= c!1295417 (isEmpty!39117 (t!380881 s!7408)))))

(declare-fun e!4198753 () Bool)

(assert (=> d!2175954 (= (matchZipper!2736 lt!2484012 (t!380881 s!7408)) e!4198753)))

(declare-fun b!6985888 () Bool)

(declare-fun nullableZipper!2422 ((Set Context!12384)) Bool)

(assert (=> b!6985888 (= e!4198753 (nullableZipper!2422 lt!2484012))))

(declare-fun b!6985889 () Bool)

(declare-fun head!14097 (List!67134) C!34662)

(declare-fun tail!13193 (List!67134) List!67134)

(assert (=> b!6985889 (= e!4198753 (matchZipper!2736 (derivationStepZipper!2676 lt!2484012 (head!14097 (t!380881 s!7408))) (tail!13193 (t!380881 s!7408))))))

(assert (= (and d!2175954 c!1295417) b!6985888))

(assert (= (and d!2175954 (not c!1295417)) b!6985889))

(declare-fun m!7673560 () Bool)

(assert (=> d!2175954 m!7673560))

(declare-fun m!7673562 () Bool)

(assert (=> b!6985888 m!7673562))

(declare-fun m!7673564 () Bool)

(assert (=> b!6985889 m!7673564))

(assert (=> b!6985889 m!7673564))

(declare-fun m!7673566 () Bool)

(assert (=> b!6985889 m!7673566))

(declare-fun m!7673568 () Bool)

(assert (=> b!6985889 m!7673568))

(assert (=> b!6985889 m!7673566))

(assert (=> b!6985889 m!7673568))

(declare-fun m!7673570 () Bool)

(assert (=> b!6985889 m!7673570))

(assert (=> b!6985773 d!2175954))

(declare-fun d!2175956 () Bool)

(declare-fun c!1295418 () Bool)

(assert (=> d!2175956 (= c!1295418 (isEmpty!39117 (t!380881 s!7408)))))

(declare-fun e!4198754 () Bool)

(assert (=> d!2175956 (= (matchZipper!2736 lt!2483997 (t!380881 s!7408)) e!4198754)))

(declare-fun b!6985890 () Bool)

(assert (=> b!6985890 (= e!4198754 (nullableZipper!2422 lt!2483997))))

(declare-fun b!6985891 () Bool)

(assert (=> b!6985891 (= e!4198754 (matchZipper!2736 (derivationStepZipper!2676 lt!2483997 (head!14097 (t!380881 s!7408))) (tail!13193 (t!380881 s!7408))))))

(assert (= (and d!2175956 c!1295418) b!6985890))

(assert (= (and d!2175956 (not c!1295418)) b!6985891))

(assert (=> d!2175956 m!7673560))

(declare-fun m!7673572 () Bool)

(assert (=> b!6985890 m!7673572))

(assert (=> b!6985891 m!7673564))

(assert (=> b!6985891 m!7673564))

(declare-fun m!7673574 () Bool)

(assert (=> b!6985891 m!7673574))

(assert (=> b!6985891 m!7673568))

(assert (=> b!6985891 m!7673574))

(assert (=> b!6985891 m!7673568))

(declare-fun m!7673576 () Bool)

(assert (=> b!6985891 m!7673576))

(assert (=> b!6985773 d!2175956))

(declare-fun d!2175958 () Bool)

(assert (=> d!2175958 (forall!16101 (++!15141 lt!2483995 (exprs!6692 ct2!306)) lambda!400274)))

(declare-fun lt!2484121 () Unit!161047)

(assert (=> d!2175958 (= lt!2484121 (choose!52162 lt!2483995 (exprs!6692 ct2!306) lambda!400274))))

(assert (=> d!2175958 (forall!16101 lt!2483995 lambda!400274)))

(assert (=> d!2175958 (= (lemmaConcatPreservesForall!532 lt!2483995 (exprs!6692 ct2!306) lambda!400274) lt!2484121)))

(declare-fun bs!1861678 () Bool)

(assert (= bs!1861678 d!2175958))

(assert (=> bs!1861678 m!7673388))

(assert (=> bs!1861678 m!7673388))

(declare-fun m!7673578 () Bool)

(assert (=> bs!1861678 m!7673578))

(declare-fun m!7673580 () Bool)

(assert (=> bs!1861678 m!7673580))

(assert (=> bs!1861678 m!7673380))

(assert (=> b!6985773 d!2175958))

(declare-fun e!4198757 () Bool)

(declare-fun d!2175960 () Bool)

(assert (=> d!2175960 (= (matchZipper!2736 (set.union lt!2484015 lt!2484001) (t!380881 s!7408)) e!4198757)))

(declare-fun res!2848740 () Bool)

(assert (=> d!2175960 (=> res!2848740 e!4198757)))

(assert (=> d!2175960 (= res!2848740 (matchZipper!2736 lt!2484015 (t!380881 s!7408)))))

(declare-fun lt!2484124 () Unit!161047)

(declare-fun choose!52166 ((Set Context!12384) (Set Context!12384) List!67134) Unit!161047)

(assert (=> d!2175960 (= lt!2484124 (choose!52166 lt!2484015 lt!2484001 (t!380881 s!7408)))))

(assert (=> d!2175960 (= (lemmaZipperConcatMatchesSameAsBothZippers!1369 lt!2484015 lt!2484001 (t!380881 s!7408)) lt!2484124)))

(declare-fun b!6985894 () Bool)

(assert (=> b!6985894 (= e!4198757 (matchZipper!2736 lt!2484001 (t!380881 s!7408)))))

(assert (= (and d!2175960 (not res!2848740)) b!6985894))

(declare-fun m!7673582 () Bool)

(assert (=> d!2175960 m!7673582))

(assert (=> d!2175960 m!7673436))

(declare-fun m!7673584 () Bool)

(assert (=> d!2175960 m!7673584))

(assert (=> b!6985894 m!7673390))

(assert (=> b!6985773 d!2175960))

(declare-fun d!2175962 () Bool)

(declare-fun c!1295419 () Bool)

(assert (=> d!2175962 (= c!1295419 (isEmpty!39117 (t!380881 s!7408)))))

(declare-fun e!4198758 () Bool)

(assert (=> d!2175962 (= (matchZipper!2736 lt!2484015 (t!380881 s!7408)) e!4198758)))

(declare-fun b!6985895 () Bool)

(assert (=> b!6985895 (= e!4198758 (nullableZipper!2422 lt!2484015))))

(declare-fun b!6985896 () Bool)

(assert (=> b!6985896 (= e!4198758 (matchZipper!2736 (derivationStepZipper!2676 lt!2484015 (head!14097 (t!380881 s!7408))) (tail!13193 (t!380881 s!7408))))))

(assert (= (and d!2175962 c!1295419) b!6985895))

(assert (= (and d!2175962 (not c!1295419)) b!6985896))

(assert (=> d!2175962 m!7673560))

(declare-fun m!7673586 () Bool)

(assert (=> b!6985895 m!7673586))

(assert (=> b!6985896 m!7673564))

(assert (=> b!6985896 m!7673564))

(declare-fun m!7673588 () Bool)

(assert (=> b!6985896 m!7673588))

(assert (=> b!6985896 m!7673568))

(assert (=> b!6985896 m!7673588))

(assert (=> b!6985896 m!7673568))

(declare-fun m!7673590 () Bool)

(assert (=> b!6985896 m!7673590))

(assert (=> b!6985773 d!2175962))

(assert (=> b!6985772 d!2175958))

(declare-fun b!6985919 () Bool)

(declare-fun e!4198772 () (Set Context!12384))

(assert (=> b!6985919 (= e!4198772 (as set.empty (Set Context!12384)))))

(declare-fun b!6985920 () Bool)

(declare-fun e!4198775 () Bool)

(assert (=> b!6985920 (= e!4198775 (nullable!6956 (regOne!34904 (h!73457 (exprs!6692 lt!2484020)))))))

(declare-fun call!634136 () List!67133)

(declare-fun c!1295434 () Bool)

(declare-fun c!1295431 () Bool)

(declare-fun c!1295432 () Bool)

(declare-fun call!634131 () (Set Context!12384))

(declare-fun bm!634127 () Bool)

(assert (=> bm!634127 (= call!634131 (derivationStepZipperDown!1914 (ite c!1295431 (regTwo!34905 (h!73457 (exprs!6692 lt!2484020))) (ite c!1295434 (regTwo!34904 (h!73457 (exprs!6692 lt!2484020))) (ite c!1295432 (regOne!34904 (h!73457 (exprs!6692 lt!2484020))) (reg!17525 (h!73457 (exprs!6692 lt!2484020)))))) (ite (or c!1295431 c!1295434) lt!2484019 (Context!12385 call!634136)) (h!73458 s!7408)))))

(declare-fun b!6985921 () Bool)

(declare-fun e!4198776 () (Set Context!12384))

(declare-fun call!634134 () (Set Context!12384))

(declare-fun call!634133 () (Set Context!12384))

(assert (=> b!6985921 (= e!4198776 (set.union call!634134 call!634133))))

(declare-fun b!6985922 () Bool)

(declare-fun e!4198774 () (Set Context!12384))

(assert (=> b!6985922 (= e!4198774 (set.union call!634134 call!634131))))

(declare-fun b!6985923 () Bool)

(declare-fun c!1295433 () Bool)

(assert (=> b!6985923 (= c!1295433 (is-Star!17196 (h!73457 (exprs!6692 lt!2484020))))))

(declare-fun e!4198773 () (Set Context!12384))

(assert (=> b!6985923 (= e!4198773 e!4198772)))

(declare-fun bm!634128 () Bool)

(assert (=> bm!634128 (= call!634133 call!634131)))

(declare-fun bm!634129 () Bool)

(declare-fun call!634135 () (Set Context!12384))

(assert (=> bm!634129 (= call!634135 call!634133)))

(declare-fun b!6985924 () Bool)

(assert (=> b!6985924 (= e!4198773 call!634135)))

(declare-fun b!6985925 () Bool)

(declare-fun e!4198771 () (Set Context!12384))

(assert (=> b!6985925 (= e!4198771 e!4198774)))

(assert (=> b!6985925 (= c!1295431 (is-Union!17196 (h!73457 (exprs!6692 lt!2484020))))))

(declare-fun bm!634130 () Bool)

(declare-fun call!634132 () List!67133)

(declare-fun $colon$colon!2472 (List!67133 Regex!17196) List!67133)

(assert (=> bm!634130 (= call!634132 ($colon$colon!2472 (exprs!6692 lt!2484019) (ite (or c!1295434 c!1295432) (regTwo!34904 (h!73457 (exprs!6692 lt!2484020))) (h!73457 (exprs!6692 lt!2484020)))))))

(declare-fun bm!634131 () Bool)

(assert (=> bm!634131 (= call!634134 (derivationStepZipperDown!1914 (ite c!1295431 (regOne!34905 (h!73457 (exprs!6692 lt!2484020))) (regOne!34904 (h!73457 (exprs!6692 lt!2484020)))) (ite c!1295431 lt!2484019 (Context!12385 call!634132)) (h!73458 s!7408)))))

(declare-fun b!6985926 () Bool)

(assert (=> b!6985926 (= e!4198776 e!4198773)))

(assert (=> b!6985926 (= c!1295432 (is-Concat!26041 (h!73457 (exprs!6692 lt!2484020))))))

(declare-fun b!6985927 () Bool)

(assert (=> b!6985927 (= e!4198771 (set.insert lt!2484019 (as set.empty (Set Context!12384))))))

(declare-fun d!2175964 () Bool)

(declare-fun c!1295430 () Bool)

(assert (=> d!2175964 (= c!1295430 (and (is-ElementMatch!17196 (h!73457 (exprs!6692 lt!2484020))) (= (c!1295394 (h!73457 (exprs!6692 lt!2484020))) (h!73458 s!7408))))))

(assert (=> d!2175964 (= (derivationStepZipperDown!1914 (h!73457 (exprs!6692 lt!2484020)) lt!2484019 (h!73458 s!7408)) e!4198771)))

(declare-fun bm!634126 () Bool)

(assert (=> bm!634126 (= call!634136 call!634132)))

(declare-fun b!6985928 () Bool)

(assert (=> b!6985928 (= e!4198772 call!634135)))

(declare-fun b!6985929 () Bool)

(assert (=> b!6985929 (= c!1295434 e!4198775)))

(declare-fun res!2848744 () Bool)

(assert (=> b!6985929 (=> (not res!2848744) (not e!4198775))))

(assert (=> b!6985929 (= res!2848744 (is-Concat!26041 (h!73457 (exprs!6692 lt!2484020))))))

(assert (=> b!6985929 (= e!4198774 e!4198776)))

(assert (= (and d!2175964 c!1295430) b!6985927))

(assert (= (and d!2175964 (not c!1295430)) b!6985925))

(assert (= (and b!6985925 c!1295431) b!6985922))

(assert (= (and b!6985925 (not c!1295431)) b!6985929))

(assert (= (and b!6985929 res!2848744) b!6985920))

(assert (= (and b!6985929 c!1295434) b!6985921))

(assert (= (and b!6985929 (not c!1295434)) b!6985926))

(assert (= (and b!6985926 c!1295432) b!6985924))

(assert (= (and b!6985926 (not c!1295432)) b!6985923))

(assert (= (and b!6985923 c!1295433) b!6985928))

(assert (= (and b!6985923 (not c!1295433)) b!6985919))

(assert (= (or b!6985924 b!6985928) bm!634126))

(assert (= (or b!6985924 b!6985928) bm!634129))

(assert (= (or b!6985921 bm!634129) bm!634128))

(assert (= (or b!6985921 bm!634126) bm!634130))

(assert (= (or b!6985922 b!6985921) bm!634131))

(assert (= (or b!6985922 bm!634128) bm!634127))

(declare-fun m!7673592 () Bool)

(assert (=> bm!634127 m!7673592))

(declare-fun m!7673594 () Bool)

(assert (=> b!6985920 m!7673594))

(declare-fun m!7673596 () Bool)

(assert (=> bm!634130 m!7673596))

(declare-fun m!7673598 () Bool)

(assert (=> b!6985927 m!7673598))

(declare-fun m!7673600 () Bool)

(assert (=> bm!634131 m!7673600))

(assert (=> b!6985772 d!2175964))

(declare-fun d!2175966 () Bool)

(declare-fun e!4198777 () Bool)

(assert (=> d!2175966 e!4198777))

(declare-fun res!2848746 () Bool)

(assert (=> d!2175966 (=> (not res!2848746) (not e!4198777))))

(declare-fun lt!2484125 () List!67133)

(assert (=> d!2175966 (= res!2848746 (= (content!13234 lt!2484125) (set.union (content!13234 lt!2483995) (content!13234 (exprs!6692 ct2!306)))))))

(declare-fun e!4198778 () List!67133)

(assert (=> d!2175966 (= lt!2484125 e!4198778)))

(declare-fun c!1295435 () Bool)

(assert (=> d!2175966 (= c!1295435 (is-Nil!67009 lt!2483995))))

(assert (=> d!2175966 (= (++!15141 lt!2483995 (exprs!6692 ct2!306)) lt!2484125)))

(declare-fun b!6985930 () Bool)

(assert (=> b!6985930 (= e!4198778 (exprs!6692 ct2!306))))

(declare-fun b!6985933 () Bool)

(assert (=> b!6985933 (= e!4198777 (or (not (= (exprs!6692 ct2!306) Nil!67009)) (= lt!2484125 lt!2483995)))))

(declare-fun b!6985931 () Bool)

(assert (=> b!6985931 (= e!4198778 (Cons!67009 (h!73457 lt!2483995) (++!15141 (t!380880 lt!2483995) (exprs!6692 ct2!306))))))

(declare-fun b!6985932 () Bool)

(declare-fun res!2848745 () Bool)

(assert (=> b!6985932 (=> (not res!2848745) (not e!4198777))))

(assert (=> b!6985932 (= res!2848745 (= (size!40893 lt!2484125) (+ (size!40893 lt!2483995) (size!40893 (exprs!6692 ct2!306)))))))

(assert (= (and d!2175966 c!1295435) b!6985930))

(assert (= (and d!2175966 (not c!1295435)) b!6985931))

(assert (= (and d!2175966 res!2848746) b!6985932))

(assert (= (and b!6985932 res!2848745) b!6985933))

(declare-fun m!7673602 () Bool)

(assert (=> d!2175966 m!7673602))

(declare-fun m!7673604 () Bool)

(assert (=> d!2175966 m!7673604))

(assert (=> d!2175966 m!7673540))

(declare-fun m!7673606 () Bool)

(assert (=> b!6985931 m!7673606))

(declare-fun m!7673608 () Bool)

(assert (=> b!6985932 m!7673608))

(declare-fun m!7673610 () Bool)

(assert (=> b!6985932 m!7673610))

(assert (=> b!6985932 m!7673548))

(assert (=> b!6985772 d!2175966))

(declare-fun b!6985934 () Bool)

(declare-fun e!4198779 () (Set Context!12384))

(declare-fun e!4198781 () (Set Context!12384))

(assert (=> b!6985934 (= e!4198779 e!4198781)))

(declare-fun c!1295437 () Bool)

(assert (=> b!6985934 (= c!1295437 (is-Cons!67009 (exprs!6692 lt!2484019)))))

(declare-fun b!6985935 () Bool)

(assert (=> b!6985935 (= e!4198781 (as set.empty (Set Context!12384)))))

(declare-fun b!6985936 () Bool)

(declare-fun e!4198780 () Bool)

(assert (=> b!6985936 (= e!4198780 (nullable!6956 (h!73457 (exprs!6692 lt!2484019))))))

(declare-fun call!634137 () (Set Context!12384))

(declare-fun b!6985937 () Bool)

(assert (=> b!6985937 (= e!4198779 (set.union call!634137 (derivationStepZipperUp!1846 (Context!12385 (t!380880 (exprs!6692 lt!2484019))) (h!73458 s!7408))))))

(declare-fun d!2175968 () Bool)

(declare-fun c!1295436 () Bool)

(assert (=> d!2175968 (= c!1295436 e!4198780)))

(declare-fun res!2848747 () Bool)

(assert (=> d!2175968 (=> (not res!2848747) (not e!4198780))))

(assert (=> d!2175968 (= res!2848747 (is-Cons!67009 (exprs!6692 lt!2484019)))))

(assert (=> d!2175968 (= (derivationStepZipperUp!1846 lt!2484019 (h!73458 s!7408)) e!4198779)))

(declare-fun b!6985938 () Bool)

(assert (=> b!6985938 (= e!4198781 call!634137)))

(declare-fun bm!634132 () Bool)

(assert (=> bm!634132 (= call!634137 (derivationStepZipperDown!1914 (h!73457 (exprs!6692 lt!2484019)) (Context!12385 (t!380880 (exprs!6692 lt!2484019))) (h!73458 s!7408)))))

(assert (= (and d!2175968 res!2848747) b!6985936))

(assert (= (and d!2175968 c!1295436) b!6985937))

(assert (= (and d!2175968 (not c!1295436)) b!6985934))

(assert (= (and b!6985934 c!1295437) b!6985938))

(assert (= (and b!6985934 (not c!1295437)) b!6985935))

(assert (= (or b!6985937 b!6985938) bm!634132))

(declare-fun m!7673612 () Bool)

(assert (=> b!6985936 m!7673612))

(declare-fun m!7673614 () Bool)

(assert (=> b!6985937 m!7673614))

(declare-fun m!7673616 () Bool)

(assert (=> bm!634132 m!7673616))

(assert (=> b!6985772 d!2175968))

(declare-fun d!2175970 () Bool)

(declare-fun c!1295438 () Bool)

(assert (=> d!2175970 (= c!1295438 (isEmpty!39117 (t!380881 s!7408)))))

(declare-fun e!4198782 () Bool)

(assert (=> d!2175970 (= (matchZipper!2736 lt!2484001 (t!380881 s!7408)) e!4198782)))

(declare-fun b!6985939 () Bool)

(assert (=> b!6985939 (= e!4198782 (nullableZipper!2422 lt!2484001))))

(declare-fun b!6985940 () Bool)

(assert (=> b!6985940 (= e!4198782 (matchZipper!2736 (derivationStepZipper!2676 lt!2484001 (head!14097 (t!380881 s!7408))) (tail!13193 (t!380881 s!7408))))))

(assert (= (and d!2175970 c!1295438) b!6985939))

(assert (= (and d!2175970 (not c!1295438)) b!6985940))

(assert (=> d!2175970 m!7673560))

(declare-fun m!7673618 () Bool)

(assert (=> b!6985939 m!7673618))

(assert (=> b!6985940 m!7673564))

(assert (=> b!6985940 m!7673564))

(declare-fun m!7673620 () Bool)

(assert (=> b!6985940 m!7673620))

(assert (=> b!6985940 m!7673568))

(assert (=> b!6985940 m!7673620))

(assert (=> b!6985940 m!7673568))

(declare-fun m!7673622 () Bool)

(assert (=> b!6985940 m!7673622))

(assert (=> b!6985763 d!2175970))

(assert (=> b!6985763 d!2175958))

(declare-fun d!2175972 () Bool)

(declare-fun nullableFct!2623 (Regex!17196) Bool)

(assert (=> d!2175972 (= (nullable!6956 (h!73457 (exprs!6692 lt!2484020))) (nullableFct!2623 (h!73457 (exprs!6692 lt!2484020))))))

(declare-fun bs!1861679 () Bool)

(assert (= bs!1861679 d!2175972))

(declare-fun m!7673624 () Bool)

(assert (=> bs!1861679 m!7673624))

(assert (=> b!6985771 d!2175972))

(declare-fun d!2175974 () Bool)

(assert (=> d!2175974 (= (tail!13191 (exprs!6692 lt!2484020)) (t!380880 (exprs!6692 lt!2484020)))))

(assert (=> b!6985771 d!2175974))

(declare-fun d!2175976 () Bool)

(declare-fun c!1295439 () Bool)

(assert (=> d!2175976 (= c!1295439 (isEmpty!39117 s!7408))))

(declare-fun e!4198783 () Bool)

(assert (=> d!2175976 (= (matchZipper!2736 lt!2484003 s!7408) e!4198783)))

(declare-fun b!6985941 () Bool)

(assert (=> b!6985941 (= e!4198783 (nullableZipper!2422 lt!2484003))))

(declare-fun b!6985942 () Bool)

(assert (=> b!6985942 (= e!4198783 (matchZipper!2736 (derivationStepZipper!2676 lt!2484003 (head!14097 s!7408)) (tail!13193 s!7408)))))

(assert (= (and d!2175976 c!1295439) b!6985941))

(assert (= (and d!2175976 (not c!1295439)) b!6985942))

(declare-fun m!7673626 () Bool)

(assert (=> d!2175976 m!7673626))

(declare-fun m!7673628 () Bool)

(assert (=> b!6985941 m!7673628))

(declare-fun m!7673630 () Bool)

(assert (=> b!6985942 m!7673630))

(assert (=> b!6985942 m!7673630))

(declare-fun m!7673632 () Bool)

(assert (=> b!6985942 m!7673632))

(declare-fun m!7673634 () Bool)

(assert (=> b!6985942 m!7673634))

(assert (=> b!6985942 m!7673632))

(assert (=> b!6985942 m!7673634))

(declare-fun m!7673636 () Bool)

(assert (=> b!6985942 m!7673636))

(assert (=> b!6985762 d!2175976))

(declare-fun bs!1861680 () Bool)

(declare-fun d!2175978 () Bool)

(assert (= bs!1861680 (and d!2175978 b!6985762)))

(declare-fun lambda!400317 () Int)

(assert (=> bs!1861680 (= lambda!400317 lambda!400272)))

(assert (=> d!2175978 true))

(assert (=> d!2175978 (exists!2971 lt!2484021 lambda!400317)))

(declare-fun lt!2484128 () Unit!161047)

(declare-fun choose!52167 (List!67135 List!67134) Unit!161047)

(assert (=> d!2175978 (= lt!2484128 (choose!52167 lt!2484021 s!7408))))

(declare-fun content!13235 (List!67135) (Set Context!12384))

(assert (=> d!2175978 (matchZipper!2736 (content!13235 lt!2484021) s!7408)))

(assert (=> d!2175978 (= (lemmaZipperMatchesExistsMatchingContext!165 lt!2484021 s!7408) lt!2484128)))

(declare-fun bs!1861681 () Bool)

(assert (= bs!1861681 d!2175978))

(declare-fun m!7673638 () Bool)

(assert (=> bs!1861681 m!7673638))

(declare-fun m!7673640 () Bool)

(assert (=> bs!1861681 m!7673640))

(declare-fun m!7673642 () Bool)

(assert (=> bs!1861681 m!7673642))

(assert (=> bs!1861681 m!7673642))

(declare-fun m!7673644 () Bool)

(assert (=> bs!1861681 m!7673644))

(assert (=> b!6985762 d!2175978))

(declare-fun d!2175980 () Bool)

(declare-fun e!4198786 () Bool)

(assert (=> d!2175980 e!4198786))

(declare-fun res!2848750 () Bool)

(assert (=> d!2175980 (=> (not res!2848750) (not e!4198786))))

(declare-fun lt!2484131 () List!67135)

(declare-fun noDuplicate!2510 (List!67135) Bool)

(assert (=> d!2175980 (= res!2848750 (noDuplicate!2510 lt!2484131))))

(declare-fun choose!52168 ((Set Context!12384)) List!67135)

(assert (=> d!2175980 (= lt!2484131 (choose!52168 lt!2484007))))

(assert (=> d!2175980 (= (toList!10556 lt!2484007) lt!2484131)))

(declare-fun b!6985945 () Bool)

(assert (=> b!6985945 (= e!4198786 (= (content!13235 lt!2484131) lt!2484007))))

(assert (= (and d!2175980 res!2848750) b!6985945))

(declare-fun m!7673646 () Bool)

(assert (=> d!2175980 m!7673646))

(declare-fun m!7673648 () Bool)

(assert (=> d!2175980 m!7673648))

(declare-fun m!7673650 () Bool)

(assert (=> b!6985945 m!7673650))

(assert (=> b!6985762 d!2175980))

(declare-fun d!2175982 () Bool)

(declare-fun e!4198789 () Bool)

(assert (=> d!2175982 e!4198789))

(declare-fun res!2848753 () Bool)

(assert (=> d!2175982 (=> (not res!2848753) (not e!4198789))))

(declare-fun lt!2484134 () Context!12384)

(declare-fun dynLambda!26839 (Int Context!12384) Bool)

(assert (=> d!2175982 (= res!2848753 (dynLambda!26839 lambda!400272 lt!2484134))))

(declare-fun getWitness!1084 (List!67135 Int) Context!12384)

(assert (=> d!2175982 (= lt!2484134 (getWitness!1084 (toList!10556 lt!2484007) lambda!400272))))

(declare-fun exists!2973 ((Set Context!12384) Int) Bool)

(assert (=> d!2175982 (exists!2973 lt!2484007 lambda!400272)))

(assert (=> d!2175982 (= (getWitness!1082 lt!2484007 lambda!400272) lt!2484134)))

(declare-fun b!6985948 () Bool)

(assert (=> b!6985948 (= e!4198789 (set.member lt!2484134 lt!2484007))))

(assert (= (and d!2175982 res!2848753) b!6985948))

(declare-fun b_lambda!262205 () Bool)

(assert (=> (not b_lambda!262205) (not d!2175982)))

(declare-fun m!7673652 () Bool)

(assert (=> d!2175982 m!7673652))

(assert (=> d!2175982 m!7673408))

(assert (=> d!2175982 m!7673408))

(declare-fun m!7673654 () Bool)

(assert (=> d!2175982 m!7673654))

(declare-fun m!7673656 () Bool)

(assert (=> d!2175982 m!7673656))

(declare-fun m!7673658 () Bool)

(assert (=> b!6985948 m!7673658))

(assert (=> b!6985762 d!2175982))

(declare-fun bs!1861682 () Bool)

(declare-fun d!2175984 () Bool)

(assert (= bs!1861682 (and d!2175984 b!6985762)))

(declare-fun lambda!400320 () Int)

(assert (=> bs!1861682 (not (= lambda!400320 lambda!400272))))

(declare-fun bs!1861683 () Bool)

(assert (= bs!1861683 (and d!2175984 d!2175978)))

(assert (=> bs!1861683 (not (= lambda!400320 lambda!400317))))

(assert (=> d!2175984 true))

(declare-fun order!27887 () Int)

(declare-fun dynLambda!26840 (Int Int) Int)

(assert (=> d!2175984 (< (dynLambda!26840 order!27887 lambda!400272) (dynLambda!26840 order!27887 lambda!400320))))

(declare-fun forall!16103 (List!67135 Int) Bool)

(assert (=> d!2175984 (= (exists!2971 lt!2484021 lambda!400272) (not (forall!16103 lt!2484021 lambda!400320)))))

(declare-fun bs!1861684 () Bool)

(assert (= bs!1861684 d!2175984))

(declare-fun m!7673660 () Bool)

(assert (=> bs!1861684 m!7673660))

(assert (=> b!6985762 d!2175984))

(declare-fun d!2175986 () Bool)

(assert (=> d!2175986 (= (isEmpty!39115 (exprs!6692 lt!2484020)) (is-Nil!67009 (exprs!6692 lt!2484020)))))

(assert (=> b!6985761 d!2175986))

(declare-fun bs!1861685 () Bool)

(declare-fun d!2175988 () Bool)

(assert (= bs!1861685 (and d!2175988 b!6985765)))

(declare-fun lambda!400323 () Int)

(assert (=> bs!1861685 (= lambda!400323 lambda!400274)))

(assert (=> d!2175988 (= (inv!85850 setElem!47682) (forall!16101 (exprs!6692 setElem!47682) lambda!400323))))

(declare-fun bs!1861686 () Bool)

(assert (= bs!1861686 d!2175988))

(declare-fun m!7673662 () Bool)

(assert (=> bs!1861686 m!7673662))

(assert (=> setNonEmpty!47682 d!2175988))

(assert (=> b!6985760 d!2175970))

(assert (=> b!6985760 d!2175958))

(declare-fun d!2175990 () Bool)

(declare-fun c!1295442 () Bool)

(assert (=> d!2175990 (= c!1295442 (isEmpty!39117 s!7408))))

(declare-fun e!4198790 () Bool)

(assert (=> d!2175990 (= (matchZipper!2736 lt!2484007 s!7408) e!4198790)))

(declare-fun b!6985951 () Bool)

(assert (=> b!6985951 (= e!4198790 (nullableZipper!2422 lt!2484007))))

(declare-fun b!6985952 () Bool)

(assert (=> b!6985952 (= e!4198790 (matchZipper!2736 (derivationStepZipper!2676 lt!2484007 (head!14097 s!7408)) (tail!13193 s!7408)))))

(assert (= (and d!2175990 c!1295442) b!6985951))

(assert (= (and d!2175990 (not c!1295442)) b!6985952))

(assert (=> d!2175990 m!7673626))

(declare-fun m!7673664 () Bool)

(assert (=> b!6985951 m!7673664))

(assert (=> b!6985952 m!7673630))

(assert (=> b!6985952 m!7673630))

(declare-fun m!7673666 () Bool)

(assert (=> b!6985952 m!7673666))

(assert (=> b!6985952 m!7673634))

(assert (=> b!6985952 m!7673666))

(assert (=> b!6985952 m!7673634))

(declare-fun m!7673668 () Bool)

(assert (=> b!6985952 m!7673668))

(assert (=> start!670918 d!2175990))

(declare-fun bs!1861687 () Bool)

(declare-fun d!2175992 () Bool)

(assert (= bs!1861687 (and d!2175992 b!6985765)))

(declare-fun lambda!400328 () Int)

(assert (=> bs!1861687 (= lambda!400328 lambda!400273)))

(assert (=> d!2175992 true))

(assert (=> d!2175992 (= (appendTo!317 z1!570 ct2!306) (map!15454 z1!570 lambda!400328))))

(declare-fun bs!1861688 () Bool)

(assert (= bs!1861688 d!2175992))

(declare-fun m!7673670 () Bool)

(assert (=> bs!1861688 m!7673670))

(assert (=> start!670918 d!2175992))

(declare-fun bs!1861689 () Bool)

(declare-fun d!2175994 () Bool)

(assert (= bs!1861689 (and d!2175994 b!6985765)))

(declare-fun lambda!400329 () Int)

(assert (=> bs!1861689 (= lambda!400329 lambda!400274)))

(declare-fun bs!1861690 () Bool)

(assert (= bs!1861690 (and d!2175994 d!2175988)))

(assert (=> bs!1861690 (= lambda!400329 lambda!400323)))

(assert (=> d!2175994 (= (inv!85850 ct2!306) (forall!16101 (exprs!6692 ct2!306) lambda!400329))))

(declare-fun bs!1861691 () Bool)

(assert (= bs!1861691 d!2175994))

(declare-fun m!7673672 () Bool)

(assert (=> bs!1861691 m!7673672))

(assert (=> start!670918 d!2175994))

(assert (=> b!6985758 d!2175942))

(assert (=> b!6985757 d!2175970))

(declare-fun condSetEmpty!47688 () Bool)

(assert (=> setNonEmpty!47682 (= condSetEmpty!47688 (= setRest!47682 (as set.empty (Set Context!12384))))))

(declare-fun setRes!47688 () Bool)

(assert (=> setNonEmpty!47682 (= tp!1929073 setRes!47688)))

(declare-fun setIsEmpty!47688 () Bool)

(assert (=> setIsEmpty!47688 setRes!47688))

(declare-fun setNonEmpty!47688 () Bool)

(declare-fun setElem!47688 () Context!12384)

(declare-fun e!4198793 () Bool)

(declare-fun tp!1929093 () Bool)

(assert (=> setNonEmpty!47688 (= setRes!47688 (and tp!1929093 (inv!85850 setElem!47688) e!4198793))))

(declare-fun setRest!47688 () (Set Context!12384))

(assert (=> setNonEmpty!47688 (= setRest!47682 (set.union (set.insert setElem!47688 (as set.empty (Set Context!12384))) setRest!47688))))

(declare-fun b!6985957 () Bool)

(declare-fun tp!1929094 () Bool)

(assert (=> b!6985957 (= e!4198793 tp!1929094)))

(assert (= (and setNonEmpty!47682 condSetEmpty!47688) setIsEmpty!47688))

(assert (= (and setNonEmpty!47682 (not condSetEmpty!47688)) setNonEmpty!47688))

(assert (= setNonEmpty!47688 b!6985957))

(declare-fun m!7673674 () Bool)

(assert (=> setNonEmpty!47688 m!7673674))

(declare-fun b!6985962 () Bool)

(declare-fun e!4198796 () Bool)

(declare-fun tp!1929097 () Bool)

(assert (=> b!6985962 (= e!4198796 (and tp_is_empty!43617 tp!1929097))))

(assert (=> b!6985774 (= tp!1929075 e!4198796)))

(assert (= (and b!6985774 (is-Cons!67010 (t!380881 s!7408))) b!6985962))

(declare-fun b!6985967 () Bool)

(declare-fun e!4198799 () Bool)

(declare-fun tp!1929102 () Bool)

(declare-fun tp!1929103 () Bool)

(assert (=> b!6985967 (= e!4198799 (and tp!1929102 tp!1929103))))

(assert (=> b!6985759 (= tp!1929074 e!4198799)))

(assert (= (and b!6985759 (is-Cons!67009 (exprs!6692 setElem!47682))) b!6985967))

(declare-fun b!6985968 () Bool)

(declare-fun e!4198800 () Bool)

(declare-fun tp!1929104 () Bool)

(declare-fun tp!1929105 () Bool)

(assert (=> b!6985968 (= e!4198800 (and tp!1929104 tp!1929105))))

(assert (=> b!6985768 (= tp!1929076 e!4198800)))

(assert (= (and b!6985768 (is-Cons!67009 (exprs!6692 ct2!306))) b!6985968))

(declare-fun b_lambda!262207 () Bool)

(assert (= b_lambda!262205 (or b!6985762 b_lambda!262207)))

(declare-fun bs!1861692 () Bool)

(declare-fun d!2175996 () Bool)

(assert (= bs!1861692 (and d!2175996 b!6985762)))

(assert (=> bs!1861692 (= (dynLambda!26839 lambda!400272 lt!2484134) (matchZipper!2736 (set.insert lt!2484134 (as set.empty (Set Context!12384))) s!7408))))

(declare-fun m!7673676 () Bool)

(assert (=> bs!1861692 m!7673676))

(assert (=> bs!1861692 m!7673676))

(declare-fun m!7673678 () Bool)

(assert (=> bs!1861692 m!7673678))

(assert (=> d!2175982 d!2175996))

(declare-fun b_lambda!262209 () Bool)

(assert (= b_lambda!262201 (or b!6985766 b_lambda!262209)))

(declare-fun bs!1861693 () Bool)

(declare-fun d!2175998 () Bool)

(assert (= bs!1861693 (and d!2175998 b!6985766)))

(assert (=> bs!1861693 (= (dynLambda!26837 lambda!400275 lt!2484018) (derivationStepZipperUp!1846 lt!2484018 (h!73458 s!7408)))))

(assert (=> bs!1861693 m!7673432))

(assert (=> d!2175946 d!2175998))

(declare-fun b_lambda!262211 () Bool)

(assert (= b_lambda!262203 (or b!6985765 b_lambda!262211)))

(declare-fun bs!1861694 () Bool)

(declare-fun d!2176000 () Bool)

(assert (= bs!1861694 (and d!2176000 b!6985765)))

(declare-fun lt!2484137 () Unit!161047)

(assert (=> bs!1861694 (= lt!2484137 (lemmaConcatPreservesForall!532 (exprs!6692 lt!2484120) (exprs!6692 ct2!306) lambda!400274))))

(assert (=> bs!1861694 (= (dynLambda!26838 lambda!400273 lt!2484120) (Context!12385 (++!15141 (exprs!6692 lt!2484120) (exprs!6692 ct2!306))))))

(declare-fun m!7673680 () Bool)

(assert (=> bs!1861694 m!7673680))

(declare-fun m!7673682 () Bool)

(assert (=> bs!1861694 m!7673682))

(assert (=> d!2175952 d!2176000))

(declare-fun b_lambda!262213 () Bool)

(assert (= b_lambda!262199 (or b!6985765 b_lambda!262213)))

(declare-fun bs!1861695 () Bool)

(declare-fun d!2176002 () Bool)

(assert (= bs!1861695 (and d!2176002 b!6985765)))

(declare-fun validRegex!8850 (Regex!17196) Bool)

(assert (=> bs!1861695 (= (dynLambda!26836 lambda!400274 (h!73457 lt!2483995)) (validRegex!8850 (h!73457 lt!2483995)))))

(declare-fun m!7673684 () Bool)

(assert (=> bs!1861695 m!7673684))

(assert (=> b!6985849 d!2176002))

(push 1)

(assert (not d!2175976))

(assert (not d!2175984))

(assert (not bs!1861692))

(assert (not bm!634132))

(assert (not b!6985878))

(assert (not d!2175952))

(assert (not b!6985940))

(assert (not b!6985894))

(assert (not bm!634131))

(assert (not b!6985967))

(assert (not d!2175942))

(assert (not d!2175950))

(assert (not d!2175960))

(assert (not bm!634113))

(assert (not d!2175962))

(assert (not b!6985889))

(assert (not d!2175946))

(assert (not d!2175940))

(assert (not bs!1861694))

(assert (not d!2175948))

(assert (not b!6985932))

(assert (not b!6985877))

(assert (not b!6985952))

(assert (not b!6985968))

(assert (not b!6985920))

(assert (not b!6985891))

(assert (not d!2175994))

(assert (not b!6985937))

(assert (not d!2175990))

(assert (not b!6985890))

(assert (not b!6985939))

(assert (not b!6985951))

(assert (not d!2175972))

(assert tp_is_empty!43617)

(assert (not b!6985945))

(assert (not b!6985957))

(assert (not d!2175988))

(assert (not b!6985896))

(assert (not b!6985850))

(assert (not d!2175956))

(assert (not d!2175966))

(assert (not d!2175970))

(assert (not bs!1861693))

(assert (not b!6985931))

(assert (not d!2175954))

(assert (not d!2175980))

(assert (not d!2175958))

(assert (not b!6985941))

(assert (not setNonEmpty!47688))

(assert (not d!2175992))

(assert (not b!6985936))

(assert (not bs!1861695))

(assert (not b!6985962))

(assert (not b_lambda!262211))

(assert (not b!6985942))

(assert (not b!6985865))

(assert (not d!2175978))

(assert (not b!6985888))

(assert (not bm!634127))

(assert (not b_lambda!262213))

(assert (not d!2175982))

(assert (not b_lambda!262207))

(assert (not b_lambda!262209))

(assert (not b!6985895))

(assert (not bm!634130))

(assert (not b!6985866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

