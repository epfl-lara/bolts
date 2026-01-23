; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573592 () Bool)

(assert start!573592)

(declare-fun b!5485512 () Bool)

(assert (=> b!5485512 true))

(declare-fun b!5485503 () Bool)

(declare-fun res!2339197 () Bool)

(declare-fun e!3394547 () Bool)

(assert (=> b!5485503 (=> (not res!2339197) (not e!3394547))))

(declare-datatypes ((C!31066 0))(
  ( (C!31067 (val!25235 Int)) )
))
(declare-datatypes ((Regex!15398 0))(
  ( (ElementMatch!15398 (c!958338 C!31066)) (Concat!24243 (regOne!31308 Regex!15398) (regTwo!31308 Regex!15398)) (EmptyExpr!15398) (Star!15398 (reg!15727 Regex!15398)) (EmptyLang!15398) (Union!15398 (regOne!31309 Regex!15398) (regTwo!31309 Regex!15398)) )
))
(declare-datatypes ((List!62493 0))(
  ( (Nil!62369) (Cons!62369 (h!68817 Regex!15398) (t!375724 List!62493)) )
))
(declare-datatypes ((Context!9564 0))(
  ( (Context!9565 (exprs!5282 List!62493)) )
))
(declare-fun z!1189 () (Set Context!9564))

(declare-datatypes ((List!62494 0))(
  ( (Nil!62370) (Cons!62370 (h!68818 Context!9564) (t!375725 List!62494)) )
))
(declare-fun zl!343 () List!62494)

(declare-fun toList!9182 ((Set Context!9564)) List!62494)

(assert (=> b!5485503 (= res!2339197 (= (toList!9182 z!1189) zl!343))))

(declare-fun res!2339199 () Bool)

(assert (=> start!573592 (=> (not res!2339199) (not e!3394547))))

(declare-fun r!7292 () Regex!15398)

(declare-fun validRegex!7134 (Regex!15398) Bool)

(assert (=> start!573592 (= res!2339199 (validRegex!7134 r!7292))))

(assert (=> start!573592 e!3394547))

(declare-fun e!3394548 () Bool)

(assert (=> start!573592 e!3394548))

(declare-fun condSetEmpty!36150 () Bool)

(assert (=> start!573592 (= condSetEmpty!36150 (= z!1189 (as set.empty (Set Context!9564))))))

(declare-fun setRes!36150 () Bool)

(assert (=> start!573592 setRes!36150))

(declare-fun e!3394549 () Bool)

(assert (=> start!573592 e!3394549))

(declare-fun e!3394544 () Bool)

(assert (=> start!573592 e!3394544))

(declare-fun setIsEmpty!36150 () Bool)

(assert (=> setIsEmpty!36150 setRes!36150))

(declare-fun b!5485504 () Bool)

(declare-fun e!3394550 () Bool)

(declare-fun tp!1507436 () Bool)

(assert (=> b!5485504 (= e!3394550 tp!1507436)))

(declare-fun b!5485505 () Bool)

(declare-fun e!3394543 () Bool)

(declare-fun tp!1507428 () Bool)

(assert (=> b!5485505 (= e!3394543 tp!1507428)))

(declare-fun b!5485506 () Bool)

(declare-fun tp_is_empty!40049 () Bool)

(assert (=> b!5485506 (= e!3394548 tp_is_empty!40049)))

(declare-fun b!5485507 () Bool)

(declare-fun tp!1507431 () Bool)

(assert (=> b!5485507 (= e!3394544 (and tp_is_empty!40049 tp!1507431))))

(declare-fun b!5485508 () Bool)

(declare-fun tp!1507434 () Bool)

(assert (=> b!5485508 (= e!3394548 tp!1507434)))

(declare-fun b!5485509 () Bool)

(declare-fun res!2339195 () Bool)

(declare-fun e!3394545 () Bool)

(assert (=> b!5485509 (=> res!2339195 e!3394545)))

(declare-datatypes ((List!62495 0))(
  ( (Nil!62371) (Cons!62371 (h!68819 C!31066) (t!375726 List!62495)) )
))
(declare-fun s!2326 () List!62495)

(assert (=> b!5485509 (= res!2339195 (or (not (is-Cons!62370 zl!343)) (is-Nil!62371 s!2326) (not (= zl!343 (Cons!62370 (h!68818 zl!343) (t!375725 zl!343))))))))

(declare-fun setElem!36150 () Context!9564)

(declare-fun tp!1507429 () Bool)

(declare-fun setNonEmpty!36150 () Bool)

(declare-fun inv!81743 (Context!9564) Bool)

(assert (=> setNonEmpty!36150 (= setRes!36150 (and tp!1507429 (inv!81743 setElem!36150) e!3394543))))

(declare-fun setRest!36150 () (Set Context!9564))

(assert (=> setNonEmpty!36150 (= z!1189 (set.union (set.insert setElem!36150 (as set.empty (Set Context!9564))) setRest!36150))))

(declare-fun b!5485510 () Bool)

(assert (=> b!5485510 (= e!3394547 (not e!3394545))))

(declare-fun res!2339198 () Bool)

(assert (=> b!5485510 (=> res!2339198 e!3394545)))

(declare-fun e!3394546 () Bool)

(assert (=> b!5485510 (= res!2339198 e!3394546)))

(declare-fun res!2339194 () Bool)

(assert (=> b!5485510 (=> (not res!2339194) (not e!3394546))))

(assert (=> b!5485510 (= res!2339194 (is-Cons!62370 zl!343))))

(declare-fun lt!2240806 () Bool)

(declare-fun matchRSpec!2501 (Regex!15398 List!62495) Bool)

(assert (=> b!5485510 (= lt!2240806 (matchRSpec!2501 r!7292 s!2326))))

(declare-fun matchR!7583 (Regex!15398 List!62495) Bool)

(assert (=> b!5485510 (= lt!2240806 (matchR!7583 r!7292 s!2326))))

(declare-datatypes ((Unit!155250 0))(
  ( (Unit!155251) )
))
(declare-fun lt!2240805 () Unit!155250)

(declare-fun mainMatchTheorem!2501 (Regex!15398 List!62495) Unit!155250)

(assert (=> b!5485510 (= lt!2240805 (mainMatchTheorem!2501 r!7292 s!2326))))

(declare-fun b!5485511 () Bool)

(declare-fun tp!1507430 () Bool)

(declare-fun tp!1507437 () Bool)

(assert (=> b!5485511 (= e!3394548 (and tp!1507430 tp!1507437))))

(assert (=> b!5485512 (= e!3394545 true)))

(declare-fun lt!2240807 () List!62493)

(declare-fun lambda!293222 () Int)

(declare-fun exists!2030 (List!62493 Int) Bool)

(assert (=> b!5485512 (= lt!2240806 (exists!2030 lt!2240807 lambda!293222))))

(declare-fun lt!2240804 () Unit!155250)

(declare-fun matchRGenUnionSpec!231 (Regex!15398 List!62493 List!62495) Unit!155250)

(assert (=> b!5485512 (= lt!2240804 (matchRGenUnionSpec!231 r!7292 lt!2240807 s!2326))))

(declare-fun unfocusZipperList!830 (List!62494) List!62493)

(assert (=> b!5485512 (= lt!2240807 (unfocusZipperList!830 zl!343))))

(declare-fun b!5485513 () Bool)

(declare-fun isEmpty!34284 (List!62494) Bool)

(assert (=> b!5485513 (= e!3394546 (isEmpty!34284 (t!375725 zl!343)))))

(declare-fun b!5485514 () Bool)

(declare-fun res!2339196 () Bool)

(assert (=> b!5485514 (=> (not res!2339196) (not e!3394547))))

(declare-fun unfocusZipper!1140 (List!62494) Regex!15398)

(assert (=> b!5485514 (= res!2339196 (= r!7292 (unfocusZipper!1140 zl!343)))))

(declare-fun b!5485515 () Bool)

(declare-fun tp!1507432 () Bool)

(declare-fun tp!1507433 () Bool)

(assert (=> b!5485515 (= e!3394548 (and tp!1507432 tp!1507433))))

(declare-fun tp!1507435 () Bool)

(declare-fun b!5485516 () Bool)

(assert (=> b!5485516 (= e!3394549 (and (inv!81743 (h!68818 zl!343)) e!3394550 tp!1507435))))

(declare-fun b!5485517 () Bool)

(declare-fun res!2339193 () Bool)

(assert (=> b!5485517 (=> res!2339193 e!3394545)))

(assert (=> b!5485517 (= res!2339193 (isEmpty!34284 (t!375725 zl!343)))))

(assert (= (and start!573592 res!2339199) b!5485503))

(assert (= (and b!5485503 res!2339197) b!5485514))

(assert (= (and b!5485514 res!2339196) b!5485510))

(assert (= (and b!5485510 res!2339194) b!5485513))

(assert (= (and b!5485510 (not res!2339198)) b!5485509))

(assert (= (and b!5485509 (not res!2339195)) b!5485517))

(assert (= (and b!5485517 (not res!2339193)) b!5485512))

(assert (= (and start!573592 (is-ElementMatch!15398 r!7292)) b!5485506))

(assert (= (and start!573592 (is-Concat!24243 r!7292)) b!5485515))

(assert (= (and start!573592 (is-Star!15398 r!7292)) b!5485508))

(assert (= (and start!573592 (is-Union!15398 r!7292)) b!5485511))

(assert (= (and start!573592 condSetEmpty!36150) setIsEmpty!36150))

(assert (= (and start!573592 (not condSetEmpty!36150)) setNonEmpty!36150))

(assert (= setNonEmpty!36150 b!5485505))

(assert (= b!5485516 b!5485504))

(assert (= (and start!573592 (is-Cons!62370 zl!343)) b!5485516))

(assert (= (and start!573592 (is-Cons!62371 s!2326)) b!5485507))

(declare-fun m!6500776 () Bool)

(assert (=> start!573592 m!6500776))

(declare-fun m!6500778 () Bool)

(assert (=> b!5485517 m!6500778))

(declare-fun m!6500780 () Bool)

(assert (=> b!5485503 m!6500780))

(declare-fun m!6500782 () Bool)

(assert (=> b!5485514 m!6500782))

(declare-fun m!6500784 () Bool)

(assert (=> setNonEmpty!36150 m!6500784))

(declare-fun m!6500786 () Bool)

(assert (=> b!5485516 m!6500786))

(assert (=> b!5485513 m!6500778))

(declare-fun m!6500788 () Bool)

(assert (=> b!5485510 m!6500788))

(declare-fun m!6500790 () Bool)

(assert (=> b!5485510 m!6500790))

(declare-fun m!6500792 () Bool)

(assert (=> b!5485510 m!6500792))

(declare-fun m!6500794 () Bool)

(assert (=> b!5485512 m!6500794))

(declare-fun m!6500796 () Bool)

(assert (=> b!5485512 m!6500796))

(declare-fun m!6500798 () Bool)

(assert (=> b!5485512 m!6500798))

(push 1)

(assert tp_is_empty!40049)

(assert (not b!5485517))

(assert (not b!5485511))

(assert (not b!5485515))

(assert (not b!5485504))

(assert (not setNonEmpty!36150))

(assert (not start!573592))

(assert (not b!5485510))

(assert (not b!5485505))

(assert (not b!5485507))

(assert (not b!5485512))

(assert (not b!5485516))

(assert (not b!5485513))

(assert (not b!5485514))

(assert (not b!5485503))

(assert (not b!5485508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

