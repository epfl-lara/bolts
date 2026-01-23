; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573828 () Bool)

(assert start!573828)

(declare-fun b!5490217 () Bool)

(declare-fun res!2341716 () Bool)

(declare-fun e!3397099 () Bool)

(assert (=> b!5490217 (=> (not res!2341716) (not e!3397099))))

(declare-datatypes ((C!31174 0))(
  ( (C!31175 (val!25289 Int)) )
))
(declare-datatypes ((Regex!15452 0))(
  ( (ElementMatch!15452 (c!958666 C!31174)) (Concat!24297 (regOne!31416 Regex!15452) (regTwo!31416 Regex!15452)) (EmptyExpr!15452) (Star!15452 (reg!15781 Regex!15452)) (EmptyLang!15452) (Union!15452 (regOne!31417 Regex!15452) (regTwo!31417 Regex!15452)) )
))
(declare-fun r!7292 () Regex!15452)

(declare-datatypes ((List!62655 0))(
  ( (Nil!62531) (Cons!62531 (h!68979 Regex!15452) (t!375886 List!62655)) )
))
(declare-datatypes ((Context!9672 0))(
  ( (Context!9673 (exprs!5336 List!62655)) )
))
(declare-datatypes ((List!62656 0))(
  ( (Nil!62532) (Cons!62532 (h!68980 Context!9672) (t!375887 List!62656)) )
))
(declare-fun zl!343 () List!62656)

(declare-fun unfocusZipper!1194 (List!62656) Regex!15452)

(assert (=> b!5490217 (= res!2341716 (= r!7292 (unfocusZipper!1194 zl!343)))))

(declare-fun b!5490218 () Bool)

(declare-fun e!3397097 () Bool)

(declare-fun tp!1509422 () Bool)

(assert (=> b!5490218 (= e!3397097 tp!1509422)))

(declare-fun b!5490219 () Bool)

(declare-fun e!3397101 () Bool)

(declare-fun tp!1509429 () Bool)

(assert (=> b!5490219 (= e!3397101 tp!1509429)))

(declare-fun e!3397098 () Bool)

(declare-fun e!3397100 () Bool)

(declare-fun tp!1509425 () Bool)

(declare-fun b!5490220 () Bool)

(declare-fun inv!81878 (Context!9672) Bool)

(assert (=> b!5490220 (= e!3397100 (and (inv!81878 (h!68980 zl!343)) e!3397098 tp!1509425))))

(declare-fun res!2341715 () Bool)

(assert (=> start!573828 (=> (not res!2341715) (not e!3397099))))

(declare-fun validRegex!7188 (Regex!15452) Bool)

(assert (=> start!573828 (= res!2341715 (validRegex!7188 r!7292))))

(assert (=> start!573828 e!3397099))

(assert (=> start!573828 e!3397097))

(declare-fun condSetEmpty!36324 () Bool)

(declare-fun z!1189 () (Set Context!9672))

(assert (=> start!573828 (= condSetEmpty!36324 (= z!1189 (as set.empty (Set Context!9672))))))

(declare-fun setRes!36324 () Bool)

(assert (=> start!573828 setRes!36324))

(assert (=> start!573828 e!3397100))

(declare-fun e!3397102 () Bool)

(assert (=> start!573828 e!3397102))

(declare-fun b!5490221 () Bool)

(declare-fun tp_is_empty!40157 () Bool)

(declare-fun tp!1509426 () Bool)

(assert (=> b!5490221 (= e!3397102 (and tp_is_empty!40157 tp!1509426))))

(declare-fun b!5490222 () Bool)

(declare-fun tp!1509427 () Bool)

(declare-fun tp!1509424 () Bool)

(assert (=> b!5490222 (= e!3397097 (and tp!1509427 tp!1509424))))

(declare-fun tp!1509420 () Bool)

(declare-fun setElem!36324 () Context!9672)

(declare-fun setNonEmpty!36324 () Bool)

(assert (=> setNonEmpty!36324 (= setRes!36324 (and tp!1509420 (inv!81878 setElem!36324) e!3397101))))

(declare-fun setRest!36324 () (Set Context!9672))

(assert (=> setNonEmpty!36324 (= z!1189 (set.union (set.insert setElem!36324 (as set.empty (Set Context!9672))) setRest!36324))))

(declare-fun b!5490223 () Bool)

(declare-fun tp!1509423 () Bool)

(declare-fun tp!1509428 () Bool)

(assert (=> b!5490223 (= e!3397097 (and tp!1509423 tp!1509428))))

(declare-fun b!5490224 () Bool)

(assert (=> b!5490224 (= e!3397099 (not true))))

(declare-datatypes ((List!62657 0))(
  ( (Nil!62533) (Cons!62533 (h!68981 C!31174) (t!375888 List!62657)) )
))
(declare-fun s!2326 () List!62657)

(declare-fun matchR!7637 (Regex!15452 List!62657) Bool)

(declare-fun matchRSpec!2555 (Regex!15452 List!62657) Bool)

(assert (=> b!5490224 (= (matchR!7637 r!7292 s!2326) (matchRSpec!2555 r!7292 s!2326))))

(declare-datatypes ((Unit!155364 0))(
  ( (Unit!155365) )
))
(declare-fun lt!2242398 () Unit!155364)

(declare-fun mainMatchTheorem!2555 (Regex!15452 List!62657) Unit!155364)

(assert (=> b!5490224 (= lt!2242398 (mainMatchTheorem!2555 r!7292 s!2326))))

(declare-fun b!5490225 () Bool)

(declare-fun res!2341717 () Bool)

(assert (=> b!5490225 (=> (not res!2341717) (not e!3397099))))

(declare-fun toList!9236 ((Set Context!9672)) List!62656)

(assert (=> b!5490225 (= res!2341717 (= (toList!9236 z!1189) zl!343))))

(declare-fun b!5490226 () Bool)

(assert (=> b!5490226 (= e!3397097 tp_is_empty!40157)))

(declare-fun b!5490227 () Bool)

(declare-fun tp!1509421 () Bool)

(assert (=> b!5490227 (= e!3397098 tp!1509421)))

(declare-fun setIsEmpty!36324 () Bool)

(assert (=> setIsEmpty!36324 setRes!36324))

(assert (= (and start!573828 res!2341715) b!5490225))

(assert (= (and b!5490225 res!2341717) b!5490217))

(assert (= (and b!5490217 res!2341716) b!5490224))

(assert (= (and start!573828 (is-ElementMatch!15452 r!7292)) b!5490226))

(assert (= (and start!573828 (is-Concat!24297 r!7292)) b!5490223))

(assert (= (and start!573828 (is-Star!15452 r!7292)) b!5490218))

(assert (= (and start!573828 (is-Union!15452 r!7292)) b!5490222))

(assert (= (and start!573828 condSetEmpty!36324) setIsEmpty!36324))

(assert (= (and start!573828 (not condSetEmpty!36324)) setNonEmpty!36324))

(assert (= setNonEmpty!36324 b!5490219))

(assert (= b!5490220 b!5490227))

(assert (= (and start!573828 (is-Cons!62532 zl!343)) b!5490220))

(assert (= (and start!573828 (is-Cons!62533 s!2326)) b!5490221))

(declare-fun m!6503512 () Bool)

(assert (=> b!5490225 m!6503512))

(declare-fun m!6503514 () Bool)

(assert (=> b!5490220 m!6503514))

(declare-fun m!6503516 () Bool)

(assert (=> setNonEmpty!36324 m!6503516))

(declare-fun m!6503518 () Bool)

(assert (=> b!5490224 m!6503518))

(declare-fun m!6503520 () Bool)

(assert (=> b!5490224 m!6503520))

(declare-fun m!6503522 () Bool)

(assert (=> b!5490224 m!6503522))

(declare-fun m!6503524 () Bool)

(assert (=> start!573828 m!6503524))

(declare-fun m!6503526 () Bool)

(assert (=> b!5490217 m!6503526))

(push 1)

(assert (not b!5490222))

(assert (not b!5490219))

(assert (not start!573828))

(assert (not b!5490217))

(assert (not b!5490220))

(assert (not b!5490218))

(assert (not b!5490224))

(assert (not b!5490223))

(assert (not b!5490221))

(assert tp_is_empty!40157)

(assert (not b!5490227))

(assert (not b!5490225))

(assert (not setNonEmpty!36324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

