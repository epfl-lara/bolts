; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277628 () Bool)

(assert start!277628)

(declare-fun b!2849778 () Bool)

(assert (=> b!2849778 true))

(declare-fun condSetEmpty!25018 () Bool)

(declare-datatypes ((C!17210 0))(
  ( (C!17211 (val!10639 Int)) )
))
(declare-datatypes ((Regex!8514 0))(
  ( (ElementMatch!8514 (c!459705 C!17210)) (Concat!13835 (regOne!17540 Regex!8514) (regTwo!17540 Regex!8514)) (EmptyExpr!8514) (Star!8514 (reg!8843 Regex!8514)) (EmptyLang!8514) (Union!8514 (regOne!17541 Regex!8514) (regTwo!17541 Regex!8514)) )
))
(declare-datatypes ((List!34007 0))(
  ( (Nil!33883) (Cons!33883 (h!39303 Regex!8514) (t!233038 List!34007)) )
))
(declare-datatypes ((Context!5048 0))(
  ( (Context!5049 (exprs!3024 List!34007)) )
))
(declare-fun z!809 () (Set Context!5048))

(assert (=> b!2849778 (= condSetEmpty!25018 (= z!809 (as set.empty (Set Context!5048))))))

(declare-fun setRes!25018 () Bool)

(assert (=> b!2849778 setRes!25018))

(declare-fun setIsEmpty!25018 () Bool)

(assert (=> setIsEmpty!25018 setRes!25018))

(declare-fun setNonEmpty!25018 () Bool)

(assert (=> setNonEmpty!25018 (= setRes!25018 true)))

(declare-fun setElem!25018 () Context!5048)

(declare-fun setRest!25018 () (Set Context!5048))

(assert (=> setNonEmpty!25018 (= z!809 (set.union (set.insert setElem!25018 (as set.empty (Set Context!5048))) setRest!25018))))

(assert (= (and b!2849778 condSetEmpty!25018) setIsEmpty!25018))

(assert (= (and b!2849778 (not condSetEmpty!25018)) setNonEmpty!25018))

(declare-fun b!2849769 () Bool)

(declare-fun e!1805774 () Bool)

(declare-fun tp!915265 () Bool)

(declare-fun tp!915271 () Bool)

(assert (=> b!2849769 (= e!1805774 (and tp!915265 tp!915271))))

(declare-fun b!2849770 () Bool)

(declare-fun e!1805773 () Bool)

(declare-fun tp!915266 () Bool)

(assert (=> b!2849770 (= e!1805773 tp!915266)))

(declare-fun b!2849771 () Bool)

(declare-fun res!1184528 () Bool)

(declare-fun e!1805771 () Bool)

(assert (=> b!2849771 (=> (not res!1184528) (not e!1805771))))

(declare-datatypes ((List!34008 0))(
  ( (Nil!33884) (Cons!33884 (h!39304 Context!5048) (t!233039 List!34008)) )
))
(declare-fun zl!222 () List!34008)

(declare-fun toList!1927 ((Set Context!5048)) List!34008)

(assert (=> b!2849771 (= res!1184528 (= (toList!1927 z!809) zl!222))))

(declare-fun b!2849772 () Bool)

(declare-fun tp!915272 () Bool)

(assert (=> b!2849772 (= e!1805774 tp!915272)))

(declare-fun b!2849773 () Bool)

(declare-fun e!1805772 () Bool)

(declare-fun tp_is_empty!14765 () Bool)

(declare-fun tp!915268 () Bool)

(assert (=> b!2849773 (= e!1805772 (and tp_is_empty!14765 tp!915268))))

(declare-fun tp!915270 () Bool)

(declare-fun e!1805775 () Bool)

(declare-fun e!1805769 () Bool)

(declare-fun b!2849774 () Bool)

(declare-fun inv!45923 (Context!5048) Bool)

(assert (=> b!2849774 (= e!1805769 (and (inv!45923 (h!39304 zl!222)) e!1805775 tp!915270))))

(declare-fun b!2849775 () Bool)

(declare-fun e!1805770 () Bool)

(declare-fun lambda!104702 () Int)

(declare-fun Exists!1246 (Int) Bool)

(assert (=> b!2849775 (= e!1805770 (Exists!1246 lambda!104702))))

(declare-fun b!2849776 () Bool)

(declare-fun res!1184527 () Bool)

(assert (=> b!2849776 (=> (not res!1184527) (not e!1805771))))

(declare-fun r!5723 () Regex!8514)

(declare-fun unfocusZipper!186 (List!34008) Regex!8514)

(assert (=> b!2849776 (= res!1184527 (= r!5723 (unfocusZipper!186 zl!222)))))

(declare-fun b!2849777 () Bool)

(declare-fun res!1184529 () Bool)

(assert (=> b!2849777 (=> (not res!1184529) (not e!1805771))))

(declare-datatypes ((List!34009 0))(
  ( (Nil!33885) (Cons!33885 (h!39305 C!17210) (t!233040 List!34009)) )
))
(declare-fun prefix!862 () List!34009)

(declare-fun prefixMatchZipper!246 ((Set Context!5048) List!34009) Bool)

(assert (=> b!2849777 (= res!1184529 (prefixMatchZipper!246 z!809 prefix!862))))

(assert (=> b!2849778 (= e!1805771 (not e!1805770))))

(declare-fun res!1184530 () Bool)

(assert (=> b!2849778 (=> res!1184530 e!1805770)))

(assert (=> b!2849778 (= res!1184530 (not (Exists!1246 lambda!104702)))))

(assert (=> b!2849778 (Exists!1246 lambda!104702)))

(declare-datatypes ((Unit!47611 0))(
  ( (Unit!47612) )
))
(declare-fun lt!1013260 () Unit!47611)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!294 ((Set Context!5048) List!34009) Unit!47611)

(assert (=> b!2849778 (= lt!1013260 (lemmaPrefixMatchThenExistsStringThatMatches!294 z!809 prefix!862))))

(declare-fun b!2849779 () Bool)

(assert (=> b!2849779 (= e!1805774 tp_is_empty!14765)))

(declare-fun setNonEmpty!25015 () Bool)

(declare-fun setRes!25015 () Bool)

(declare-fun setElem!25015 () Context!5048)

(declare-fun tp!915273 () Bool)

(assert (=> setNonEmpty!25015 (= setRes!25015 (and tp!915273 (inv!45923 setElem!25015) e!1805773))))

(declare-fun setRest!25015 () (Set Context!5048))

(assert (=> setNonEmpty!25015 (= z!809 (set.union (set.insert setElem!25015 (as set.empty (Set Context!5048))) setRest!25015))))

(declare-fun res!1184525 () Bool)

(assert (=> start!277628 (=> (not res!1184525) (not e!1805771))))

(declare-fun validRegex!3384 (Regex!8514) Bool)

(assert (=> start!277628 (= res!1184525 (validRegex!3384 r!5723))))

(assert (=> start!277628 e!1805771))

(assert (=> start!277628 e!1805774))

(declare-fun condSetEmpty!25015 () Bool)

(assert (=> start!277628 (= condSetEmpty!25015 (= z!809 (as set.empty (Set Context!5048))))))

(assert (=> start!277628 setRes!25015))

(assert (=> start!277628 e!1805769))

(assert (=> start!277628 e!1805772))

(declare-fun setIsEmpty!25015 () Bool)

(assert (=> setIsEmpty!25015 setRes!25015))

(declare-fun b!2849780 () Bool)

(declare-fun res!1184526 () Bool)

(assert (=> b!2849780 (=> (not res!1184526) (not e!1805771))))

(declare-fun prefixMatch!822 (Regex!8514 List!34009) Bool)

(assert (=> b!2849780 (= res!1184526 (not (prefixMatch!822 r!5723 prefix!862)))))

(declare-fun b!2849781 () Bool)

(declare-fun tp!915267 () Bool)

(assert (=> b!2849781 (= e!1805775 tp!915267)))

(declare-fun b!2849782 () Bool)

(declare-fun tp!915269 () Bool)

(declare-fun tp!915274 () Bool)

(assert (=> b!2849782 (= e!1805774 (and tp!915269 tp!915274))))

(assert (= (and start!277628 res!1184525) b!2849771))

(assert (= (and b!2849771 res!1184528) b!2849776))

(assert (= (and b!2849776 res!1184527) b!2849780))

(assert (= (and b!2849780 res!1184526) b!2849777))

(assert (= (and b!2849777 res!1184529) b!2849778))

(assert (= (and b!2849778 (not res!1184530)) b!2849775))

(assert (= (and start!277628 (is-ElementMatch!8514 r!5723)) b!2849779))

(assert (= (and start!277628 (is-Concat!13835 r!5723)) b!2849769))

(assert (= (and start!277628 (is-Star!8514 r!5723)) b!2849772))

(assert (= (and start!277628 (is-Union!8514 r!5723)) b!2849782))

(assert (= (and start!277628 condSetEmpty!25015) setIsEmpty!25015))

(assert (= (and start!277628 (not condSetEmpty!25015)) setNonEmpty!25015))

(assert (= setNonEmpty!25015 b!2849770))

(assert (= b!2849774 b!2849781))

(assert (= (and start!277628 (is-Cons!33884 zl!222)) b!2849774))

(assert (= (and start!277628 (is-Cons!33885 prefix!862)) b!2849773))

(declare-fun m!3276365 () Bool)

(assert (=> start!277628 m!3276365))

(declare-fun m!3276367 () Bool)

(assert (=> setNonEmpty!25015 m!3276367))

(declare-fun m!3276369 () Bool)

(assert (=> b!2849776 m!3276369))

(declare-fun m!3276371 () Bool)

(assert (=> b!2849771 m!3276371))

(declare-fun m!3276373 () Bool)

(assert (=> b!2849778 m!3276373))

(assert (=> b!2849778 m!3276373))

(declare-fun m!3276375 () Bool)

(assert (=> b!2849778 m!3276375))

(declare-fun m!3276377 () Bool)

(assert (=> b!2849780 m!3276377))

(assert (=> b!2849775 m!3276373))

(declare-fun m!3276379 () Bool)

(assert (=> b!2849777 m!3276379))

(declare-fun m!3276381 () Bool)

(assert (=> b!2849774 m!3276381))

(push 1)

(assert (not b!2849775))

(assert (not b!2849777))

(assert (not setNonEmpty!25015))

(assert (not b!2849781))

(assert (not b!2849769))

(assert (not b!2849776))

(assert (not b!2849778))

(assert (not b!2849773))

(assert (not b!2849772))

(assert (not b!2849770))

(assert (not start!277628))

(assert (not b!2849780))

(assert (not setNonEmpty!25018))

(assert (not b!2849774))

(assert (not b!2849782))

(assert tp_is_empty!14765)

(assert (not b!2849771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

