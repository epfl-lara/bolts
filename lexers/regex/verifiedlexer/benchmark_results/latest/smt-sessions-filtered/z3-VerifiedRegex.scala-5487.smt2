; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277658 () Bool)

(assert start!277658)

(declare-fun b!2850513 () Bool)

(assert (=> b!2850513 true))

(assert (=> b!2850513 true))

(declare-fun b!2850512 () Bool)

(declare-fun e!1806172 () Bool)

(declare-fun tp!915716 () Bool)

(declare-fun tp!915723 () Bool)

(assert (=> b!2850512 (= e!1806172 (and tp!915716 tp!915723))))

(declare-fun e!1806177 () Bool)

(assert (=> b!2850513 (= e!1806177 (not true))))

(declare-fun lambda!104771 () Int)

(declare-fun Exists!1257 (Int) Bool)

(assert (=> b!2850513 (Exists!1257 lambda!104771)))

(declare-datatypes ((Unit!47633 0))(
  ( (Unit!47634) )
))
(declare-fun lt!1013371 () Unit!47633)

(declare-datatypes ((C!17240 0))(
  ( (C!17241 (val!10654 Int)) )
))
(declare-datatypes ((Regex!8529 0))(
  ( (ElementMatch!8529 (c!459720 C!17240)) (Concat!13850 (regOne!17570 Regex!8529) (regTwo!17570 Regex!8529)) (EmptyExpr!8529) (Star!8529 (reg!8858 Regex!8529)) (EmptyLang!8529) (Union!8529 (regOne!17571 Regex!8529) (regTwo!17571 Regex!8529)) )
))
(declare-fun r!5723 () Regex!8529)

(declare-datatypes ((List!34052 0))(
  ( (Nil!33928) (Cons!33928 (h!39348 C!17240) (t!233083 List!34052)) )
))
(declare-fun prefix!862 () List!34052)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!305 (Regex!8529 List!34052) Unit!47633)

(assert (=> b!2850513 (= lt!1013371 (lemmaPrefixMatchThenExistsStringThatMatches!305 r!5723 prefix!862))))

(declare-fun b!2850514 () Bool)

(declare-fun res!1184865 () Bool)

(assert (=> b!2850514 (=> (not res!1184865) (not e!1806177))))

(declare-fun lt!1013370 () Bool)

(assert (=> b!2850514 (= res!1184865 lt!1013370)))

(declare-fun b!2850515 () Bool)

(declare-fun e!1806175 () Bool)

(assert (=> b!2850515 (= e!1806175 e!1806177)))

(declare-fun res!1184867 () Bool)

(assert (=> b!2850515 (=> (not res!1184867) (not e!1806177))))

(declare-fun e!1806178 () Bool)

(assert (=> b!2850515 (= res!1184867 e!1806178)))

(declare-fun res!1184869 () Bool)

(assert (=> b!2850515 (=> res!1184869 e!1806178)))

(assert (=> b!2850515 (= res!1184869 lt!1013370)))

(declare-fun prefixMatch!837 (Regex!8529 List!34052) Bool)

(assert (=> b!2850515 (= lt!1013370 (prefixMatch!837 r!5723 prefix!862))))

(declare-fun b!2850516 () Bool)

(declare-fun tp_is_empty!14795 () Bool)

(assert (=> b!2850516 (= e!1806172 tp_is_empty!14795)))

(declare-fun b!2850517 () Bool)

(declare-fun tp!915721 () Bool)

(declare-fun tp!915717 () Bool)

(assert (=> b!2850517 (= e!1806172 (and tp!915721 tp!915717))))

(declare-fun setIsEmpty!25090 () Bool)

(declare-fun setRes!25090 () Bool)

(assert (=> setIsEmpty!25090 setRes!25090))

(declare-fun b!2850518 () Bool)

(declare-fun e!1806173 () Bool)

(declare-fun tp!915722 () Bool)

(assert (=> b!2850518 (= e!1806173 (and tp_is_empty!14795 tp!915722))))

(declare-fun e!1806176 () Bool)

(declare-fun setNonEmpty!25090 () Bool)

(declare-fun tp!915718 () Bool)

(declare-datatypes ((List!34053 0))(
  ( (Nil!33929) (Cons!33929 (h!39349 Regex!8529) (t!233084 List!34053)) )
))
(declare-datatypes ((Context!5078 0))(
  ( (Context!5079 (exprs!3039 List!34053)) )
))
(declare-fun setElem!25090 () Context!5078)

(declare-fun inv!45959 (Context!5078) Bool)

(assert (=> setNonEmpty!25090 (= setRes!25090 (and tp!915718 (inv!45959 setElem!25090) e!1806176))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!809 () (InoxSet Context!5078))

(declare-fun setRest!25090 () (InoxSet Context!5078))

(assert (=> setNonEmpty!25090 (= z!809 ((_ map or) (store ((as const (Array Context!5078 Bool)) false) setElem!25090 true) setRest!25090))))

(declare-fun res!1184868 () Bool)

(assert (=> start!277658 (=> (not res!1184868) (not e!1806175))))

(declare-fun validRegex!3399 (Regex!8529) Bool)

(assert (=> start!277658 (= res!1184868 (validRegex!3399 r!5723))))

(assert (=> start!277658 e!1806175))

(assert (=> start!277658 e!1806172))

(declare-fun condSetEmpty!25090 () Bool)

(assert (=> start!277658 (= condSetEmpty!25090 (= z!809 ((as const (Array Context!5078 Bool)) false)))))

(assert (=> start!277658 setRes!25090))

(declare-fun e!1806171 () Bool)

(assert (=> start!277658 e!1806171))

(assert (=> start!277658 e!1806173))

(declare-fun b!2850519 () Bool)

(declare-fun tp!915719 () Bool)

(assert (=> b!2850519 (= e!1806172 tp!915719)))

(declare-fun b!2850520 () Bool)

(declare-fun res!1184864 () Bool)

(assert (=> b!2850520 (=> (not res!1184864) (not e!1806175))))

(declare-datatypes ((List!34054 0))(
  ( (Nil!33930) (Cons!33930 (h!39350 Context!5078) (t!233085 List!34054)) )
))
(declare-fun zl!222 () List!34054)

(declare-fun toList!1942 ((InoxSet Context!5078)) List!34054)

(assert (=> b!2850520 (= res!1184864 (= (toList!1942 z!809) zl!222))))

(declare-fun tp!915724 () Bool)

(declare-fun b!2850521 () Bool)

(declare-fun e!1806174 () Bool)

(assert (=> b!2850521 (= e!1806171 (and (inv!45959 (h!39350 zl!222)) e!1806174 tp!915724))))

(declare-fun b!2850522 () Bool)

(declare-fun prefixMatchZipper!261 ((InoxSet Context!5078) List!34052) Bool)

(assert (=> b!2850522 (= e!1806178 (not (prefixMatchZipper!261 z!809 prefix!862)))))

(declare-fun b!2850523 () Bool)

(declare-fun res!1184866 () Bool)

(assert (=> b!2850523 (=> (not res!1184866) (not e!1806175))))

(declare-fun unfocusZipper!201 (List!34054) Regex!8529)

(assert (=> b!2850523 (= res!1184866 (= r!5723 (unfocusZipper!201 zl!222)))))

(declare-fun b!2850524 () Bool)

(declare-fun tp!915720 () Bool)

(assert (=> b!2850524 (= e!1806174 tp!915720)))

(declare-fun b!2850525 () Bool)

(declare-fun tp!915715 () Bool)

(assert (=> b!2850525 (= e!1806176 tp!915715)))

(declare-fun b!2850526 () Bool)

(declare-fun res!1184870 () Bool)

(assert (=> b!2850526 (=> (not res!1184870) (not e!1806177))))

(assert (=> b!2850526 (= res!1184870 (not (prefixMatchZipper!261 z!809 prefix!862)))))

(assert (= (and start!277658 res!1184868) b!2850520))

(assert (= (and b!2850520 res!1184864) b!2850523))

(assert (= (and b!2850523 res!1184866) b!2850515))

(assert (= (and b!2850515 (not res!1184869)) b!2850522))

(assert (= (and b!2850515 res!1184867) b!2850514))

(assert (= (and b!2850514 res!1184865) b!2850526))

(assert (= (and b!2850526 res!1184870) b!2850513))

(get-info :version)

(assert (= (and start!277658 ((_ is ElementMatch!8529) r!5723)) b!2850516))

(assert (= (and start!277658 ((_ is Concat!13850) r!5723)) b!2850512))

(assert (= (and start!277658 ((_ is Star!8529) r!5723)) b!2850519))

(assert (= (and start!277658 ((_ is Union!8529) r!5723)) b!2850517))

(assert (= (and start!277658 condSetEmpty!25090) setIsEmpty!25090))

(assert (= (and start!277658 (not condSetEmpty!25090)) setNonEmpty!25090))

(assert (= setNonEmpty!25090 b!2850525))

(assert (= b!2850521 b!2850524))

(assert (= (and start!277658 ((_ is Cons!33930) zl!222)) b!2850521))

(assert (= (and start!277658 ((_ is Cons!33928) prefix!862)) b!2850518))

(declare-fun m!3276683 () Bool)

(assert (=> b!2850526 m!3276683))

(declare-fun m!3276685 () Bool)

(assert (=> b!2850515 m!3276685))

(declare-fun m!3276687 () Bool)

(assert (=> b!2850520 m!3276687))

(declare-fun m!3276689 () Bool)

(assert (=> b!2850521 m!3276689))

(assert (=> b!2850522 m!3276683))

(declare-fun m!3276691 () Bool)

(assert (=> b!2850523 m!3276691))

(declare-fun m!3276693 () Bool)

(assert (=> setNonEmpty!25090 m!3276693))

(declare-fun m!3276695 () Bool)

(assert (=> start!277658 m!3276695))

(declare-fun m!3276697 () Bool)

(assert (=> b!2850513 m!3276697))

(declare-fun m!3276699 () Bool)

(assert (=> b!2850513 m!3276699))

(check-sat tp_is_empty!14795 (not b!2850524) (not setNonEmpty!25090) (not b!2850525) (not b!2850520) (not b!2850512) (not b!2850526) (not b!2850518) (not b!2850513) (not b!2850519) (not b!2850515) (not b!2850522) (not b!2850523) (not b!2850517) (not start!277658) (not b!2850521))
(check-sat)
