; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277784 () Bool)

(assert start!277784)

(declare-fun b!2852267 () Bool)

(declare-fun e!1807152 () Bool)

(declare-fun tp!916646 () Bool)

(assert (=> b!2852267 (= e!1807152 tp!916646)))

(declare-fun setNonEmpty!25187 () Bool)

(declare-fun setRes!25187 () Bool)

(declare-fun tp!916643 () Bool)

(declare-datatypes ((C!17286 0))(
  ( (C!17287 (val!10677 Int)) )
))
(declare-datatypes ((Regex!8552 0))(
  ( (ElementMatch!8552 (c!459815 C!17286)) (Concat!13873 (regOne!17616 Regex!8552) (regTwo!17616 Regex!8552)) (EmptyExpr!8552) (Star!8552 (reg!8881 Regex!8552)) (EmptyLang!8552) (Union!8552 (regOne!17617 Regex!8552) (regTwo!17617 Regex!8552)) )
))
(declare-datatypes ((List!34121 0))(
  ( (Nil!33997) (Cons!33997 (h!39417 Regex!8552) (t!233152 List!34121)) )
))
(declare-datatypes ((Context!5124 0))(
  ( (Context!5125 (exprs!3062 List!34121)) )
))
(declare-fun setElem!25187 () Context!5124)

(declare-fun inv!46018 (Context!5124) Bool)

(assert (=> setNonEmpty!25187 (= setRes!25187 (and tp!916643 (inv!46018 setElem!25187) e!1807152))))

(declare-fun z!809 () (Set Context!5124))

(declare-fun setRest!25187 () (Set Context!5124))

(assert (=> setNonEmpty!25187 (= z!809 (set.union (set.insert setElem!25187 (as set.empty (Set Context!5124))) setRest!25187))))

(declare-fun b!2852268 () Bool)

(declare-fun e!1807151 () Bool)

(declare-fun tp!916642 () Bool)

(declare-fun tp!916645 () Bool)

(assert (=> b!2852268 (= e!1807151 (and tp!916642 tp!916645))))

(declare-fun b!2852269 () Bool)

(declare-fun res!1185625 () Bool)

(declare-fun e!1807154 () Bool)

(assert (=> b!2852269 (=> (not res!1185625) (not e!1807154))))

(declare-datatypes ((List!34122 0))(
  ( (Nil!33998) (Cons!33998 (h!39418 Context!5124) (t!233153 List!34122)) )
))
(declare-fun zl!222 () List!34122)

(declare-fun toList!1965 ((Set Context!5124)) List!34122)

(assert (=> b!2852269 (= res!1185625 (= (toList!1965 z!809) zl!222))))

(declare-fun setIsEmpty!25187 () Bool)

(assert (=> setIsEmpty!25187 setRes!25187))

(declare-fun tp!916640 () Bool)

(declare-fun e!1807153 () Bool)

(declare-fun e!1807156 () Bool)

(declare-fun b!2852270 () Bool)

(assert (=> b!2852270 (= e!1807156 (and (inv!46018 (h!39418 zl!222)) e!1807153 tp!916640))))

(declare-fun b!2852271 () Bool)

(declare-fun tp_is_empty!14841 () Bool)

(assert (=> b!2852271 (= e!1807151 tp_is_empty!14841)))

(declare-fun res!1185623 () Bool)

(assert (=> start!277784 (=> (not res!1185623) (not e!1807154))))

(declare-fun r!5723 () Regex!8552)

(declare-fun validRegex!3422 (Regex!8552) Bool)

(assert (=> start!277784 (= res!1185623 (validRegex!3422 r!5723))))

(assert (=> start!277784 e!1807154))

(assert (=> start!277784 e!1807151))

(declare-fun condSetEmpty!25187 () Bool)

(assert (=> start!277784 (= condSetEmpty!25187 (= z!809 (as set.empty (Set Context!5124))))))

(assert (=> start!277784 setRes!25187))

(assert (=> start!277784 e!1807156))

(declare-fun e!1807155 () Bool)

(assert (=> start!277784 e!1807155))

(declare-fun b!2852272 () Bool)

(declare-fun tp!916639 () Bool)

(assert (=> b!2852272 (= e!1807153 tp!916639)))

(declare-fun b!2852273 () Bool)

(declare-fun tp!916644 () Bool)

(declare-fun tp!916638 () Bool)

(assert (=> b!2852273 (= e!1807151 (and tp!916644 tp!916638))))

(declare-fun b!2852274 () Bool)

(declare-fun res!1185627 () Bool)

(assert (=> b!2852274 (=> (not res!1185627) (not e!1807154))))

(declare-fun unfocusZipper!224 (List!34122) Regex!8552)

(assert (=> b!2852274 (= res!1185627 (= r!5723 (unfocusZipper!224 zl!222)))))

(declare-fun b!2852275 () Bool)

(declare-fun res!1185626 () Bool)

(assert (=> b!2852275 (=> (not res!1185626) (not e!1807154))))

(declare-datatypes ((List!34123 0))(
  ( (Nil!33999) (Cons!33999 (h!39419 C!17286) (t!233154 List!34123)) )
))
(declare-fun prefix!862 () List!34123)

(declare-fun prefixMatchZipper!284 ((Set Context!5124) List!34123) Bool)

(assert (=> b!2852275 (= res!1185626 (prefixMatchZipper!284 z!809 prefix!862))))

(declare-fun b!2852276 () Bool)

(assert (=> b!2852276 (= e!1807154 false)))

(declare-fun b!2852277 () Bool)

(declare-fun tp!916637 () Bool)

(assert (=> b!2852277 (= e!1807155 (and tp_is_empty!14841 tp!916637))))

(declare-fun b!2852278 () Bool)

(declare-fun tp!916641 () Bool)

(assert (=> b!2852278 (= e!1807151 tp!916641)))

(declare-fun b!2852279 () Bool)

(declare-fun res!1185624 () Bool)

(assert (=> b!2852279 (=> (not res!1185624) (not e!1807154))))

(declare-fun prefixMatch!860 (Regex!8552 List!34123) Bool)

(assert (=> b!2852279 (= res!1185624 (not (prefixMatch!860 r!5723 prefix!862)))))

(assert (= (and start!277784 res!1185623) b!2852269))

(assert (= (and b!2852269 res!1185625) b!2852274))

(assert (= (and b!2852274 res!1185627) b!2852279))

(assert (= (and b!2852279 res!1185624) b!2852275))

(assert (= (and b!2852275 res!1185626) b!2852276))

(assert (= (and start!277784 (is-ElementMatch!8552 r!5723)) b!2852271))

(assert (= (and start!277784 (is-Concat!13873 r!5723)) b!2852268))

(assert (= (and start!277784 (is-Star!8552 r!5723)) b!2852278))

(assert (= (and start!277784 (is-Union!8552 r!5723)) b!2852273))

(assert (= (and start!277784 condSetEmpty!25187) setIsEmpty!25187))

(assert (= (and start!277784 (not condSetEmpty!25187)) setNonEmpty!25187))

(assert (= setNonEmpty!25187 b!2852267))

(assert (= b!2852270 b!2852272))

(assert (= (and start!277784 (is-Cons!33998 zl!222)) b!2852270))

(assert (= (and start!277784 (is-Cons!33999 prefix!862)) b!2852277))

(declare-fun m!3277457 () Bool)

(assert (=> b!2852279 m!3277457))

(declare-fun m!3277459 () Bool)

(assert (=> b!2852274 m!3277459))

(declare-fun m!3277461 () Bool)

(assert (=> b!2852270 m!3277461))

(declare-fun m!3277463 () Bool)

(assert (=> b!2852275 m!3277463))

(declare-fun m!3277465 () Bool)

(assert (=> b!2852269 m!3277465))

(declare-fun m!3277467 () Bool)

(assert (=> start!277784 m!3277467))

(declare-fun m!3277469 () Bool)

(assert (=> setNonEmpty!25187 m!3277469))

(push 1)

(assert (not b!2852279))

(assert tp_is_empty!14841)

(assert (not b!2852275))

(assert (not setNonEmpty!25187))

(assert (not b!2852269))

(assert (not b!2852278))

(assert (not start!277784))

(assert (not b!2852267))

(assert (not b!2852273))

(assert (not b!2852270))

(assert (not b!2852277))

(assert (not b!2852274))

(assert (not b!2852268))

(assert (not b!2852272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

