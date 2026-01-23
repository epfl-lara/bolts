; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573596 () Bool)

(assert start!573596)

(declare-fun b!5485610 () Bool)

(assert (=> b!5485610 true))

(declare-fun b!5485609 () Bool)

(declare-fun e!3394602 () Bool)

(declare-fun tp_is_empty!40053 () Bool)

(assert (=> b!5485609 (= e!3394602 tp_is_empty!40053)))

(declare-fun e!3394604 () Bool)

(assert (=> b!5485610 (= e!3394604 true)))

(declare-fun lt!2240831 () Bool)

(declare-datatypes ((C!31070 0))(
  ( (C!31071 (val!25237 Int)) )
))
(declare-datatypes ((Regex!15400 0))(
  ( (ElementMatch!15400 (c!958340 C!31070)) (Concat!24245 (regOne!31312 Regex!15400) (regTwo!31312 Regex!15400)) (EmptyExpr!15400) (Star!15400 (reg!15729 Regex!15400)) (EmptyLang!15400) (Union!15400 (regOne!31313 Regex!15400) (regTwo!31313 Regex!15400)) )
))
(declare-datatypes ((List!62499 0))(
  ( (Nil!62375) (Cons!62375 (h!68823 Regex!15400) (t!375730 List!62499)) )
))
(declare-fun lt!2240829 () List!62499)

(declare-fun lambda!293228 () Int)

(declare-fun exists!2032 (List!62499 Int) Bool)

(assert (=> b!5485610 (= lt!2240831 (exists!2032 lt!2240829 lambda!293228))))

(declare-fun r!7292 () Regex!15400)

(declare-datatypes ((List!62500 0))(
  ( (Nil!62376) (Cons!62376 (h!68824 C!31070) (t!375731 List!62500)) )
))
(declare-fun s!2326 () List!62500)

(declare-datatypes ((Unit!155254 0))(
  ( (Unit!155255) )
))
(declare-fun lt!2240830 () Unit!155254)

(declare-fun matchRGenUnionSpec!233 (Regex!15400 List!62499 List!62500) Unit!155254)

(assert (=> b!5485610 (= lt!2240830 (matchRGenUnionSpec!233 r!7292 lt!2240829 s!2326))))

(declare-datatypes ((Context!9568 0))(
  ( (Context!9569 (exprs!5284 List!62499)) )
))
(declare-datatypes ((List!62501 0))(
  ( (Nil!62377) (Cons!62377 (h!68825 Context!9568) (t!375732 List!62501)) )
))
(declare-fun zl!343 () List!62501)

(declare-fun unfocusZipperList!832 (List!62501) List!62499)

(assert (=> b!5485610 (= lt!2240829 (unfocusZipperList!832 zl!343))))

(declare-fun b!5485611 () Bool)

(declare-fun res!2339244 () Bool)

(declare-fun e!3394598 () Bool)

(assert (=> b!5485611 (=> (not res!2339244) (not e!3394598))))

(declare-fun z!1189 () (Set Context!9568))

(declare-fun toList!9184 ((Set Context!9568)) List!62501)

(assert (=> b!5485611 (= res!2339244 (= (toList!9184 z!1189) zl!343))))

(declare-fun b!5485612 () Bool)

(declare-fun res!2339239 () Bool)

(assert (=> b!5485612 (=> (not res!2339239) (not e!3394598))))

(declare-fun unfocusZipper!1142 (List!62501) Regex!15400)

(assert (=> b!5485612 (= res!2339239 (= r!7292 (unfocusZipper!1142 zl!343)))))

(declare-fun b!5485613 () Bool)

(declare-fun res!2339243 () Bool)

(assert (=> b!5485613 (=> res!2339243 e!3394604)))

(assert (=> b!5485613 (= res!2339243 (or (not (is-Cons!62377 zl!343)) (is-Nil!62376 s!2326) (not (= zl!343 (Cons!62377 (h!68825 zl!343) (t!375732 zl!343))))))))

(declare-fun b!5485614 () Bool)

(declare-fun e!3394600 () Bool)

(assert (=> b!5485614 (= e!3394600 tp_is_empty!40053)))

(declare-fun setIsEmpty!36156 () Bool)

(declare-fun setRes!36156 () Bool)

(assert (=> setIsEmpty!36156 setRes!36156))

(declare-fun b!5485616 () Bool)

(declare-fun tp!1507509 () Bool)

(declare-fun tp!1507498 () Bool)

(assert (=> b!5485616 (= e!3394602 (and tp!1507509 tp!1507498))))

(declare-fun b!5485617 () Bool)

(declare-fun tp!1507510 () Bool)

(declare-fun tp!1507511 () Bool)

(assert (=> b!5485617 (= e!3394600 (and tp!1507510 tp!1507511))))

(declare-fun setNonEmpty!36156 () Bool)

(declare-fun setElem!36156 () Context!9568)

(declare-fun tp!1507506 () Bool)

(declare-fun e!3394603 () Bool)

(declare-fun inv!81748 (Context!9568) Bool)

(assert (=> setNonEmpty!36156 (= setRes!36156 (and tp!1507506 (inv!81748 setElem!36156) e!3394603))))

(declare-fun setRest!36156 () (Set Context!9568))

(assert (=> setNonEmpty!36156 (= z!1189 (set.union (set.insert setElem!36156 (as set.empty (Set Context!9568))) setRest!36156))))

(declare-fun b!5485618 () Bool)

(declare-fun tp!1507507 () Bool)

(assert (=> b!5485618 (= e!3394602 tp!1507507)))

(declare-fun b!5485619 () Bool)

(assert (=> b!5485619 (= e!3394598 (not e!3394604))))

(declare-fun res!2339242 () Bool)

(assert (=> b!5485619 (=> res!2339242 e!3394604)))

(declare-fun e!3394597 () Bool)

(assert (=> b!5485619 (= res!2339242 e!3394597)))

(declare-fun res!2339245 () Bool)

(assert (=> b!5485619 (=> (not res!2339245) (not e!3394597))))

(assert (=> b!5485619 (= res!2339245 (is-Cons!62377 zl!343))))

(declare-fun matchRSpec!2503 (Regex!15400 List!62500) Bool)

(assert (=> b!5485619 (= lt!2240831 (matchRSpec!2503 r!7292 s!2326))))

(declare-fun matchR!7585 (Regex!15400 List!62500) Bool)

(assert (=> b!5485619 (= lt!2240831 (matchR!7585 r!7292 s!2326))))

(declare-fun lt!2240828 () Unit!155254)

(declare-fun mainMatchTheorem!2503 (Regex!15400 List!62500) Unit!155254)

(assert (=> b!5485619 (= lt!2240828 (mainMatchTheorem!2503 r!7292 s!2326))))

(declare-fun b!5485620 () Bool)

(declare-fun tp!1507501 () Bool)

(declare-fun tp!1507512 () Bool)

(assert (=> b!5485620 (= e!3394602 (and tp!1507501 tp!1507512))))

(declare-fun b!5485621 () Bool)

(declare-fun tp!1507502 () Bool)

(declare-fun tp!1507503 () Bool)

(assert (=> b!5485621 (= e!3394600 (and tp!1507502 tp!1507503))))

(declare-fun b!5485622 () Bool)

(declare-fun e!3394601 () Bool)

(declare-fun tp!1507499 () Bool)

(assert (=> b!5485622 (= e!3394601 tp!1507499)))

(declare-fun b!5485623 () Bool)

(declare-fun res!2339241 () Bool)

(assert (=> b!5485623 (=> res!2339241 e!3394604)))

(declare-fun isEmpty!34286 (List!62501) Bool)

(assert (=> b!5485623 (= res!2339241 (isEmpty!34286 (t!375732 zl!343)))))

(declare-fun b!5485624 () Bool)

(assert (=> b!5485624 (= e!3394597 (isEmpty!34286 (t!375732 zl!343)))))

(declare-fun b!5485625 () Bool)

(declare-fun e!3394599 () Bool)

(declare-fun tp!1507504 () Bool)

(assert (=> b!5485625 (= e!3394599 (and tp_is_empty!40053 tp!1507504))))

(declare-fun b!5485626 () Bool)

(declare-fun tp!1507500 () Bool)

(assert (=> b!5485626 (= e!3394603 tp!1507500)))

(declare-fun b!5485627 () Bool)

(declare-fun e!3394605 () Bool)

(declare-fun tp!1507505 () Bool)

(assert (=> b!5485627 (= e!3394605 (and (inv!81748 (h!68825 zl!343)) e!3394601 tp!1507505))))

(declare-fun res!2339240 () Bool)

(assert (=> start!573596 (=> (not res!2339240) (not e!3394598))))

(declare-fun validRegex!7136 (Regex!15400) Bool)

(assert (=> start!573596 (= res!2339240 (validRegex!7136 r!7292))))

(assert (=> start!573596 e!3394598))

(assert (=> start!573596 e!3394602))

(assert (=> start!573596 e!3394599))

(declare-fun condSetEmpty!36156 () Bool)

(assert (=> start!573596 (= condSetEmpty!36156 (= z!1189 (as set.empty (Set Context!9568))))))

(assert (=> start!573596 setRes!36156))

(assert (=> start!573596 e!3394605))

(assert (=> start!573596 e!3394600))

(declare-fun b!5485615 () Bool)

(declare-fun tp!1507508 () Bool)

(assert (=> b!5485615 (= e!3394600 tp!1507508)))

(assert (= (and start!573596 res!2339240) b!5485611))

(assert (= (and b!5485611 res!2339244) b!5485612))

(assert (= (and b!5485612 res!2339239) b!5485619))

(assert (= (and b!5485619 res!2339245) b!5485624))

(assert (= (and b!5485619 (not res!2339242)) b!5485613))

(assert (= (and b!5485613 (not res!2339243)) b!5485623))

(assert (= (and b!5485623 (not res!2339241)) b!5485610))

(assert (= (and start!573596 (is-ElementMatch!15400 r!7292)) b!5485609))

(assert (= (and start!573596 (is-Concat!24245 r!7292)) b!5485616))

(assert (= (and start!573596 (is-Star!15400 r!7292)) b!5485618))

(assert (= (and start!573596 (is-Union!15400 r!7292)) b!5485620))

(assert (= (and start!573596 (is-Cons!62376 s!2326)) b!5485625))

(assert (= (and start!573596 condSetEmpty!36156) setIsEmpty!36156))

(assert (= (and start!573596 (not condSetEmpty!36156)) setNonEmpty!36156))

(assert (= setNonEmpty!36156 b!5485626))

(assert (= b!5485627 b!5485622))

(assert (= (and start!573596 (is-Cons!62377 zl!343)) b!5485627))

(declare-fun rr!2 () Regex!15400)

(assert (= (and start!573596 (is-ElementMatch!15400 rr!2)) b!5485614))

(assert (= (and start!573596 (is-Concat!24245 rr!2)) b!5485621))

(assert (= (and start!573596 (is-Star!15400 rr!2)) b!5485615))

(assert (= (and start!573596 (is-Union!15400 rr!2)) b!5485617))

(declare-fun m!6500824 () Bool)

(assert (=> b!5485610 m!6500824))

(declare-fun m!6500826 () Bool)

(assert (=> b!5485610 m!6500826))

(declare-fun m!6500828 () Bool)

(assert (=> b!5485610 m!6500828))

(declare-fun m!6500830 () Bool)

(assert (=> start!573596 m!6500830))

(declare-fun m!6500832 () Bool)

(assert (=> b!5485619 m!6500832))

(declare-fun m!6500834 () Bool)

(assert (=> b!5485619 m!6500834))

(declare-fun m!6500836 () Bool)

(assert (=> b!5485619 m!6500836))

(declare-fun m!6500838 () Bool)

(assert (=> b!5485612 m!6500838))

(declare-fun m!6500840 () Bool)

(assert (=> b!5485623 m!6500840))

(declare-fun m!6500842 () Bool)

(assert (=> setNonEmpty!36156 m!6500842))

(declare-fun m!6500844 () Bool)

(assert (=> b!5485611 m!6500844))

(assert (=> b!5485624 m!6500840))

(declare-fun m!6500846 () Bool)

(assert (=> b!5485627 m!6500846))

(push 1)

(assert (not b!5485625))

(assert (not b!5485611))

(assert (not b!5485621))

(assert (not b!5485616))

(assert (not start!573596))

(assert (not b!5485610))

(assert (not b!5485619))

(assert (not b!5485626))

(assert (not b!5485620))

(assert (not b!5485622))

(assert (not b!5485615))

(assert (not b!5485627))

(assert (not b!5485612))

(assert (not setNonEmpty!36156))

(assert (not b!5485623))

(assert tp_is_empty!40053)

(assert (not b!5485618))

(assert (not b!5485624))

(assert (not b!5485617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

