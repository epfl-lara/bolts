; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277620 () Bool)

(assert start!277620)

(declare-fun b!2849621 () Bool)

(declare-fun res!1184469 () Bool)

(declare-fun e!1805696 () Bool)

(assert (=> b!2849621 (=> (not res!1184469) (not e!1805696))))

(declare-datatypes ((C!17202 0))(
  ( (C!17203 (val!10635 Int)) )
))
(declare-datatypes ((Regex!8510 0))(
  ( (ElementMatch!8510 (c!459701 C!17202)) (Concat!13831 (regOne!17532 Regex!8510) (regTwo!17532 Regex!8510)) (EmptyExpr!8510) (Star!8510 (reg!8839 Regex!8510)) (EmptyLang!8510) (Union!8510 (regOne!17533 Regex!8510) (regTwo!17533 Regex!8510)) )
))
(declare-datatypes ((List!33997 0))(
  ( (Nil!33873) (Cons!33873 (h!39293 Regex!8510) (t!233028 List!33997)) )
))
(declare-datatypes ((Context!5040 0))(
  ( (Context!5041 (exprs!3020 List!33997)) )
))
(declare-fun z!809 () (Set Context!5040))

(declare-datatypes ((List!33998 0))(
  ( (Nil!33874) (Cons!33874 (h!39294 Context!5040) (t!233029 List!33998)) )
))
(declare-fun zl!222 () List!33998)

(declare-fun toList!1923 ((Set Context!5040)) List!33998)

(assert (=> b!2849621 (= res!1184469 (= (toList!1923 z!809) zl!222))))

(declare-fun b!2849622 () Bool)

(declare-fun e!1805697 () Bool)

(declare-fun tp!915154 () Bool)

(assert (=> b!2849622 (= e!1805697 tp!915154)))

(declare-fun b!2849623 () Bool)

(declare-fun tp!915156 () Bool)

(declare-fun tp!915152 () Bool)

(assert (=> b!2849623 (= e!1805697 (and tp!915156 tp!915152))))

(declare-fun b!2849624 () Bool)

(declare-fun tp!915149 () Bool)

(declare-fun tp!915157 () Bool)

(assert (=> b!2849624 (= e!1805697 (and tp!915149 tp!915157))))

(declare-fun b!2849625 () Bool)

(declare-fun tp_is_empty!14757 () Bool)

(assert (=> b!2849625 (= e!1805697 tp_is_empty!14757)))

(declare-fun setIsEmpty!25003 () Bool)

(declare-fun setRes!25003 () Bool)

(assert (=> setIsEmpty!25003 setRes!25003))

(declare-fun b!2849626 () Bool)

(declare-fun e!1805694 () Bool)

(declare-fun tp!915150 () Bool)

(assert (=> b!2849626 (= e!1805694 tp!915150)))

(declare-fun b!2849627 () Bool)

(declare-fun e!1805695 () Bool)

(declare-fun tp!915151 () Bool)

(assert (=> b!2849627 (= e!1805695 tp!915151)))

(declare-fun setNonEmpty!25003 () Bool)

(declare-fun tp!915153 () Bool)

(declare-fun setElem!25003 () Context!5040)

(declare-fun inv!45913 (Context!5040) Bool)

(assert (=> setNonEmpty!25003 (= setRes!25003 (and tp!915153 (inv!45913 setElem!25003) e!1805695))))

(declare-fun setRest!25003 () (Set Context!5040))

(assert (=> setNonEmpty!25003 (= z!809 (set.union (set.insert setElem!25003 (as set.empty (Set Context!5040))) setRest!25003))))

(declare-fun res!1184470 () Bool)

(assert (=> start!277620 (=> (not res!1184470) (not e!1805696))))

(declare-fun r!5723 () Regex!8510)

(declare-fun validRegex!3380 (Regex!8510) Bool)

(assert (=> start!277620 (= res!1184470 (validRegex!3380 r!5723))))

(assert (=> start!277620 e!1805696))

(assert (=> start!277620 e!1805697))

(declare-fun condSetEmpty!25003 () Bool)

(assert (=> start!277620 (= condSetEmpty!25003 (= z!809 (as set.empty (Set Context!5040))))))

(assert (=> start!277620 setRes!25003))

(declare-fun e!1805693 () Bool)

(assert (=> start!277620 e!1805693))

(declare-fun tp!915155 () Bool)

(declare-fun b!2849628 () Bool)

(assert (=> b!2849628 (= e!1805693 (and (inv!45913 (h!39294 zl!222)) e!1805694 tp!915155))))

(declare-fun b!2849629 () Bool)

(assert (=> b!2849629 (= e!1805696 false)))

(declare-fun lt!1013254 () Regex!8510)

(declare-fun unfocusZipper!182 (List!33998) Regex!8510)

(assert (=> b!2849629 (= lt!1013254 (unfocusZipper!182 zl!222))))

(assert (= (and start!277620 res!1184470) b!2849621))

(assert (= (and b!2849621 res!1184469) b!2849629))

(assert (= (and start!277620 (is-ElementMatch!8510 r!5723)) b!2849625))

(assert (= (and start!277620 (is-Concat!13831 r!5723)) b!2849624))

(assert (= (and start!277620 (is-Star!8510 r!5723)) b!2849622))

(assert (= (and start!277620 (is-Union!8510 r!5723)) b!2849623))

(assert (= (and start!277620 condSetEmpty!25003) setIsEmpty!25003))

(assert (= (and start!277620 (not condSetEmpty!25003)) setNonEmpty!25003))

(assert (= setNonEmpty!25003 b!2849627))

(assert (= b!2849628 b!2849626))

(assert (= (and start!277620 (is-Cons!33874 zl!222)) b!2849628))

(declare-fun m!3276317 () Bool)

(assert (=> b!2849621 m!3276317))

(declare-fun m!3276319 () Bool)

(assert (=> start!277620 m!3276319))

(declare-fun m!3276321 () Bool)

(assert (=> setNonEmpty!25003 m!3276321))

(declare-fun m!3276323 () Bool)

(assert (=> b!2849629 m!3276323))

(declare-fun m!3276325 () Bool)

(assert (=> b!2849628 m!3276325))

(push 1)

(assert (not b!2849629))

(assert (not start!277620))

(assert (not b!2849621))

(assert (not b!2849624))

(assert (not b!2849623))

(assert (not b!2849628))

(assert (not b!2849627))

(assert (not b!2849626))

(assert (not setNonEmpty!25003))

(assert tp_is_empty!14757)

(assert (not b!2849622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

