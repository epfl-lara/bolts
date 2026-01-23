; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573576 () Bool)

(assert start!573576)

(declare-fun b!5485121 () Bool)

(declare-fun e!3394335 () Bool)

(declare-fun tp!1507195 () Bool)

(assert (=> b!5485121 (= e!3394335 tp!1507195)))

(declare-fun b!5485122 () Bool)

(declare-fun e!3394337 () Bool)

(assert (=> b!5485122 (= e!3394337 true)))

(declare-datatypes ((C!31050 0))(
  ( (C!31051 (val!25227 Int)) )
))
(declare-datatypes ((Regex!15390 0))(
  ( (ElementMatch!15390 (c!958330 C!31050)) (Concat!24235 (regOne!31292 Regex!15390) (regTwo!31292 Regex!15390)) (EmptyExpr!15390) (Star!15390 (reg!15719 Regex!15390)) (EmptyLang!15390) (Union!15390 (regOne!31293 Regex!15390) (regTwo!31293 Regex!15390)) )
))
(declare-fun r!7292 () Regex!15390)

(declare-datatypes ((List!62469 0))(
  ( (Nil!62345) (Cons!62345 (h!68793 Regex!15390) (t!375700 List!62469)) )
))
(declare-datatypes ((Context!9548 0))(
  ( (Context!9549 (exprs!5274 List!62469)) )
))
(declare-fun z!1189 () (Set Context!9548))

(declare-fun nullable!5491 (Regex!15390) Bool)

(declare-fun nullableZipper!1512 ((Set Context!9548)) Bool)

(assert (=> b!5485122 (= (nullable!5491 r!7292) (nullableZipper!1512 z!1189))))

(declare-datatypes ((Unit!155234 0))(
  ( (Unit!155235) )
))
(declare-fun lt!2240734 () Unit!155234)

(declare-fun lemmaUnfocusPreservesNullability!13 (Regex!15390 (Set Context!9548)) Unit!155234)

(assert (=> b!5485122 (= lt!2240734 (lemmaUnfocusPreservesNullability!13 r!7292 z!1189))))

(declare-fun b!5485123 () Bool)

(declare-fun res!2339005 () Bool)

(assert (=> b!5485123 (=> res!2339005 e!3394337)))

(declare-datatypes ((List!62470 0))(
  ( (Nil!62346) (Cons!62346 (h!68794 Context!9548) (t!375701 List!62470)) )
))
(declare-fun zl!343 () List!62470)

(declare-datatypes ((List!62471 0))(
  ( (Nil!62347) (Cons!62347 (h!68795 C!31050) (t!375702 List!62471)) )
))
(declare-fun s!2326 () List!62471)

(assert (=> b!5485123 (= res!2339005 (or (not (is-Cons!62346 zl!343)) (not (is-Nil!62347 s!2326))))))

(declare-fun res!2339008 () Bool)

(declare-fun e!3394334 () Bool)

(assert (=> start!573576 (=> (not res!2339008) (not e!3394334))))

(declare-fun validRegex!7126 (Regex!15390) Bool)

(assert (=> start!573576 (= res!2339008 (validRegex!7126 r!7292))))

(assert (=> start!573576 e!3394334))

(declare-fun e!3394336 () Bool)

(assert (=> start!573576 e!3394336))

(declare-fun condSetEmpty!36126 () Bool)

(assert (=> start!573576 (= condSetEmpty!36126 (= z!1189 (as set.empty (Set Context!9548))))))

(declare-fun setRes!36126 () Bool)

(assert (=> start!573576 setRes!36126))

(declare-fun e!3394338 () Bool)

(assert (=> start!573576 e!3394338))

(declare-fun e!3394331 () Bool)

(assert (=> start!573576 e!3394331))

(declare-fun b!5485124 () Bool)

(declare-fun tp_is_empty!40033 () Bool)

(declare-fun tp!1507191 () Bool)

(assert (=> b!5485124 (= e!3394331 (and tp_is_empty!40033 tp!1507191))))

(declare-fun b!5485125 () Bool)

(declare-fun tp!1507188 () Bool)

(declare-fun inv!81723 (Context!9548) Bool)

(assert (=> b!5485125 (= e!3394338 (and (inv!81723 (h!68794 zl!343)) e!3394335 tp!1507188))))

(declare-fun setIsEmpty!36126 () Bool)

(assert (=> setIsEmpty!36126 setRes!36126))

(declare-fun b!5485126 () Bool)

(declare-fun tp!1507196 () Bool)

(assert (=> b!5485126 (= e!3394336 tp!1507196)))

(declare-fun b!5485127 () Bool)

(declare-fun tp!1507189 () Bool)

(declare-fun tp!1507197 () Bool)

(assert (=> b!5485127 (= e!3394336 (and tp!1507189 tp!1507197))))

(declare-fun b!5485128 () Bool)

(declare-fun e!3394333 () Bool)

(declare-fun tp!1507194 () Bool)

(assert (=> b!5485128 (= e!3394333 tp!1507194)))

(declare-fun b!5485129 () Bool)

(assert (=> b!5485129 (= e!3394334 (not e!3394337))))

(declare-fun res!2339007 () Bool)

(assert (=> b!5485129 (=> res!2339007 e!3394337)))

(declare-fun e!3394332 () Bool)

(assert (=> b!5485129 (= res!2339007 e!3394332)))

(declare-fun res!2339004 () Bool)

(assert (=> b!5485129 (=> (not res!2339004) (not e!3394332))))

(assert (=> b!5485129 (= res!2339004 (is-Cons!62346 zl!343))))

(declare-fun matchR!7575 (Regex!15390 List!62471) Bool)

(declare-fun matchRSpec!2493 (Regex!15390 List!62471) Bool)

(assert (=> b!5485129 (= (matchR!7575 r!7292 s!2326) (matchRSpec!2493 r!7292 s!2326))))

(declare-fun lt!2240735 () Unit!155234)

(declare-fun mainMatchTheorem!2493 (Regex!15390 List!62471) Unit!155234)

(assert (=> b!5485129 (= lt!2240735 (mainMatchTheorem!2493 r!7292 s!2326))))

(declare-fun b!5485130 () Bool)

(assert (=> b!5485130 (= e!3394336 tp_is_empty!40033)))

(declare-fun b!5485131 () Bool)

(declare-fun isEmpty!34276 (List!62470) Bool)

(assert (=> b!5485131 (= e!3394332 (isEmpty!34276 (t!375701 zl!343)))))

(declare-fun b!5485132 () Bool)

(declare-fun tp!1507193 () Bool)

(declare-fun tp!1507190 () Bool)

(assert (=> b!5485132 (= e!3394336 (and tp!1507193 tp!1507190))))

(declare-fun tp!1507192 () Bool)

(declare-fun setElem!36126 () Context!9548)

(declare-fun setNonEmpty!36126 () Bool)

(assert (=> setNonEmpty!36126 (= setRes!36126 (and tp!1507192 (inv!81723 setElem!36126) e!3394333))))

(declare-fun setRest!36126 () (Set Context!9548))

(assert (=> setNonEmpty!36126 (= z!1189 (set.union (set.insert setElem!36126 (as set.empty (Set Context!9548))) setRest!36126))))

(declare-fun b!5485133 () Bool)

(declare-fun res!2339006 () Bool)

(assert (=> b!5485133 (=> (not res!2339006) (not e!3394334))))

(declare-fun unfocusZipper!1132 (List!62470) Regex!15390)

(assert (=> b!5485133 (= res!2339006 (= r!7292 (unfocusZipper!1132 zl!343)))))

(declare-fun b!5485134 () Bool)

(declare-fun res!2339003 () Bool)

(assert (=> b!5485134 (=> (not res!2339003) (not e!3394334))))

(declare-fun toList!9174 ((Set Context!9548)) List!62470)

(assert (=> b!5485134 (= res!2339003 (= (toList!9174 z!1189) zl!343))))

(assert (= (and start!573576 res!2339008) b!5485134))

(assert (= (and b!5485134 res!2339003) b!5485133))

(assert (= (and b!5485133 res!2339006) b!5485129))

(assert (= (and b!5485129 res!2339004) b!5485131))

(assert (= (and b!5485129 (not res!2339007)) b!5485123))

(assert (= (and b!5485123 (not res!2339005)) b!5485122))

(assert (= (and start!573576 (is-ElementMatch!15390 r!7292)) b!5485130))

(assert (= (and start!573576 (is-Concat!24235 r!7292)) b!5485132))

(assert (= (and start!573576 (is-Star!15390 r!7292)) b!5485126))

(assert (= (and start!573576 (is-Union!15390 r!7292)) b!5485127))

(assert (= (and start!573576 condSetEmpty!36126) setIsEmpty!36126))

(assert (= (and start!573576 (not condSetEmpty!36126)) setNonEmpty!36126))

(assert (= setNonEmpty!36126 b!5485128))

(assert (= b!5485125 b!5485121))

(assert (= (and start!573576 (is-Cons!62346 zl!343)) b!5485125))

(assert (= (and start!573576 (is-Cons!62347 s!2326)) b!5485124))

(declare-fun m!6500580 () Bool)

(assert (=> b!5485125 m!6500580))

(declare-fun m!6500582 () Bool)

(assert (=> b!5485129 m!6500582))

(declare-fun m!6500584 () Bool)

(assert (=> b!5485129 m!6500584))

(declare-fun m!6500586 () Bool)

(assert (=> b!5485129 m!6500586))

(declare-fun m!6500588 () Bool)

(assert (=> b!5485131 m!6500588))

(declare-fun m!6500590 () Bool)

(assert (=> b!5485134 m!6500590))

(declare-fun m!6500592 () Bool)

(assert (=> b!5485122 m!6500592))

(declare-fun m!6500594 () Bool)

(assert (=> b!5485122 m!6500594))

(declare-fun m!6500596 () Bool)

(assert (=> b!5485122 m!6500596))

(declare-fun m!6500598 () Bool)

(assert (=> setNonEmpty!36126 m!6500598))

(declare-fun m!6500600 () Bool)

(assert (=> start!573576 m!6500600))

(declare-fun m!6500602 () Bool)

(assert (=> b!5485133 m!6500602))

(push 1)

(assert (not b!5485129))

(assert (not start!573576))

(assert (not b!5485127))

(assert (not b!5485126))

(assert (not b!5485132))

(assert (not b!5485128))

(assert (not b!5485125))

(assert (not b!5485133))

(assert tp_is_empty!40033)

(assert (not b!5485134))

(assert (not setNonEmpty!36126))

(assert (not b!5485124))

(assert (not b!5485122))

(assert (not b!5485121))

(assert (not b!5485131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

