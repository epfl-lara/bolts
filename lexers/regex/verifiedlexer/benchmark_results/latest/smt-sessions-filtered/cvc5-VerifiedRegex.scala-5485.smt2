; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277648 () Bool)

(assert start!277648)

(declare-fun tp!915571 () Bool)

(declare-fun e!1806052 () Bool)

(declare-fun setNonEmpty!25075 () Bool)

(declare-fun setRes!25075 () Bool)

(declare-datatypes ((C!17230 0))(
  ( (C!17231 (val!10649 Int)) )
))
(declare-datatypes ((Regex!8524 0))(
  ( (ElementMatch!8524 (c!459715 C!17230)) (Concat!13845 (regOne!17560 Regex!8524) (regTwo!17560 Regex!8524)) (EmptyExpr!8524) (Star!8524 (reg!8853 Regex!8524)) (EmptyLang!8524) (Union!8524 (regOne!17561 Regex!8524) (regTwo!17561 Regex!8524)) )
))
(declare-datatypes ((List!34037 0))(
  ( (Nil!33913) (Cons!33913 (h!39333 Regex!8524) (t!233068 List!34037)) )
))
(declare-datatypes ((Context!5068 0))(
  ( (Context!5069 (exprs!3034 List!34037)) )
))
(declare-fun setElem!25075 () Context!5068)

(declare-fun inv!45948 (Context!5068) Bool)

(assert (=> setNonEmpty!25075 (= setRes!25075 (and tp!915571 (inv!45948 setElem!25075) e!1806052))))

(declare-fun z!809 () (Set Context!5068))

(declare-fun setRest!25075 () (Set Context!5068))

(assert (=> setNonEmpty!25075 (= z!809 (set.union (set.insert setElem!25075 (as set.empty (Set Context!5068))) setRest!25075))))

(declare-fun b!2850297 () Bool)

(declare-fun tp!915572 () Bool)

(assert (=> b!2850297 (= e!1806052 tp!915572)))

(declare-fun b!2850298 () Bool)

(declare-fun e!1806055 () Bool)

(declare-datatypes ((List!34038 0))(
  ( (Nil!33914) (Cons!33914 (h!39334 C!17230) (t!233069 List!34038)) )
))
(declare-fun prefix!862 () List!34038)

(declare-fun prefixMatchZipper!256 ((Set Context!5068) List!34038) Bool)

(assert (=> b!2850298 (= e!1806055 (not (prefixMatchZipper!256 z!809 prefix!862)))))

(declare-fun res!1184775 () Bool)

(declare-fun e!1806053 () Bool)

(assert (=> start!277648 (=> (not res!1184775) (not e!1806053))))

(declare-fun r!5723 () Regex!8524)

(declare-fun validRegex!3394 (Regex!8524) Bool)

(assert (=> start!277648 (= res!1184775 (validRegex!3394 r!5723))))

(assert (=> start!277648 e!1806053))

(declare-fun e!1806054 () Bool)

(assert (=> start!277648 e!1806054))

(declare-fun condSetEmpty!25075 () Bool)

(assert (=> start!277648 (= condSetEmpty!25075 (= z!809 (as set.empty (Set Context!5068))))))

(assert (=> start!277648 setRes!25075))

(declare-fun e!1806057 () Bool)

(assert (=> start!277648 e!1806057))

(declare-fun e!1806056 () Bool)

(assert (=> start!277648 e!1806056))

(declare-fun b!2850299 () Bool)

(declare-fun tp!915568 () Bool)

(declare-fun tp!915573 () Bool)

(assert (=> b!2850299 (= e!1806054 (and tp!915568 tp!915573))))

(declare-fun b!2850300 () Bool)

(declare-fun e!1806051 () Bool)

(declare-fun tp!915574 () Bool)

(assert (=> b!2850300 (= e!1806051 tp!915574)))

(declare-fun b!2850301 () Bool)

(declare-fun res!1184774 () Bool)

(assert (=> b!2850301 (=> (not res!1184774) (not e!1806053))))

(declare-datatypes ((List!34039 0))(
  ( (Nil!33915) (Cons!33915 (h!39335 Context!5068) (t!233070 List!34039)) )
))
(declare-fun zl!222 () List!34039)

(declare-fun unfocusZipper!196 (List!34039) Regex!8524)

(assert (=> b!2850301 (= res!1184774 (= r!5723 (unfocusZipper!196 zl!222)))))

(declare-fun b!2850302 () Bool)

(declare-fun res!1184773 () Bool)

(assert (=> b!2850302 (=> (not res!1184773) (not e!1806053))))

(declare-fun toList!1937 ((Set Context!5068)) List!34039)

(assert (=> b!2850302 (= res!1184773 (= (toList!1937 z!809) zl!222))))

(declare-fun b!2850303 () Bool)

(declare-fun tp_is_empty!14785 () Bool)

(assert (=> b!2850303 (= e!1806054 tp_is_empty!14785)))

(declare-fun tp!915567 () Bool)

(declare-fun b!2850304 () Bool)

(assert (=> b!2850304 (= e!1806057 (and (inv!45948 (h!39335 zl!222)) e!1806051 tp!915567))))

(declare-fun b!2850305 () Bool)

(declare-fun tp!915565 () Bool)

(declare-fun tp!915569 () Bool)

(assert (=> b!2850305 (= e!1806054 (and tp!915565 tp!915569))))

(declare-fun setIsEmpty!25075 () Bool)

(assert (=> setIsEmpty!25075 setRes!25075))

(declare-fun b!2850306 () Bool)

(declare-fun tp!915570 () Bool)

(assert (=> b!2850306 (= e!1806054 tp!915570)))

(declare-fun b!2850307 () Bool)

(assert (=> b!2850307 (= e!1806053 false)))

(declare-fun lt!1013344 () Bool)

(assert (=> b!2850307 (= lt!1013344 e!1806055)))

(declare-fun res!1184776 () Bool)

(assert (=> b!2850307 (=> res!1184776 e!1806055)))

(declare-fun prefixMatch!832 (Regex!8524 List!34038) Bool)

(assert (=> b!2850307 (= res!1184776 (prefixMatch!832 r!5723 prefix!862))))

(declare-fun b!2850308 () Bool)

(declare-fun tp!915566 () Bool)

(assert (=> b!2850308 (= e!1806056 (and tp_is_empty!14785 tp!915566))))

(assert (= (and start!277648 res!1184775) b!2850302))

(assert (= (and b!2850302 res!1184773) b!2850301))

(assert (= (and b!2850301 res!1184774) b!2850307))

(assert (= (and b!2850307 (not res!1184776)) b!2850298))

(assert (= (and start!277648 (is-ElementMatch!8524 r!5723)) b!2850303))

(assert (= (and start!277648 (is-Concat!13845 r!5723)) b!2850299))

(assert (= (and start!277648 (is-Star!8524 r!5723)) b!2850306))

(assert (= (and start!277648 (is-Union!8524 r!5723)) b!2850305))

(assert (= (and start!277648 condSetEmpty!25075) setIsEmpty!25075))

(assert (= (and start!277648 (not condSetEmpty!25075)) setNonEmpty!25075))

(assert (= setNonEmpty!25075 b!2850297))

(assert (= b!2850304 b!2850300))

(assert (= (and start!277648 (is-Cons!33915 zl!222)) b!2850304))

(assert (= (and start!277648 (is-Cons!33914 prefix!862)) b!2850308))

(declare-fun m!3276609 () Bool)

(assert (=> b!2850301 m!3276609))

(declare-fun m!3276611 () Bool)

(assert (=> b!2850302 m!3276611))

(declare-fun m!3276613 () Bool)

(assert (=> setNonEmpty!25075 m!3276613))

(declare-fun m!3276615 () Bool)

(assert (=> b!2850298 m!3276615))

(declare-fun m!3276617 () Bool)

(assert (=> start!277648 m!3276617))

(declare-fun m!3276619 () Bool)

(assert (=> b!2850304 m!3276619))

(declare-fun m!3276621 () Bool)

(assert (=> b!2850307 m!3276621))

(push 1)

(assert (not b!2850304))

(assert (not setNonEmpty!25075))

(assert (not b!2850307))

(assert (not b!2850301))

(assert (not b!2850300))

(assert (not start!277648))

(assert tp_is_empty!14785)

(assert (not b!2850306))

(assert (not b!2850302))

(assert (not b!2850308))

(assert (not b!2850299))

(assert (not b!2850298))

(assert (not b!2850297))

(assert (not b!2850305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

