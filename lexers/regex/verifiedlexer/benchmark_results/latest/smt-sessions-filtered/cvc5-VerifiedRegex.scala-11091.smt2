; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573780 () Bool)

(assert start!573780)

(declare-fun b!5488569 () Bool)

(assert (=> b!5488569 true))

(declare-fun e!3396225 () Bool)

(assert (=> b!5488569 (= e!3396225 true)))

(declare-fun lt!2241655 () Bool)

(declare-datatypes ((C!31126 0))(
  ( (C!31127 (val!25265 Int)) )
))
(declare-datatypes ((Regex!15428 0))(
  ( (ElementMatch!15428 (c!958596 C!31126)) (Concat!24273 (regOne!31368 Regex!15428) (regTwo!31368 Regex!15428)) (EmptyExpr!15428) (Star!15428 (reg!15757 Regex!15428)) (EmptyLang!15428) (Union!15428 (regOne!31369 Regex!15428) (regTwo!31369 Regex!15428)) )
))
(declare-datatypes ((List!62583 0))(
  ( (Nil!62459) (Cons!62459 (h!68907 Regex!15428) (t!375814 List!62583)) )
))
(declare-fun lt!2241657 () List!62583)

(declare-fun lambda!293676 () Int)

(declare-fun exists!2084 (List!62583 Int) Bool)

(assert (=> b!5488569 (= lt!2241655 (exists!2084 lt!2241657 lambda!293676))))

(declare-fun r!7292 () Regex!15428)

(declare-datatypes ((List!62584 0))(
  ( (Nil!62460) (Cons!62460 (h!68908 C!31126) (t!375815 List!62584)) )
))
(declare-fun s!2326 () List!62584)

(declare-datatypes ((Unit!155312 0))(
  ( (Unit!155313) )
))
(declare-fun lt!2241654 () Unit!155312)

(declare-fun matchRGenUnionSpec!261 (Regex!15428 List!62583 List!62584) Unit!155312)

(assert (=> b!5488569 (= lt!2241654 (matchRGenUnionSpec!261 r!7292 lt!2241657 s!2326))))

(declare-datatypes ((Context!9624 0))(
  ( (Context!9625 (exprs!5312 List!62583)) )
))
(declare-datatypes ((List!62585 0))(
  ( (Nil!62461) (Cons!62461 (h!68909 Context!9624) (t!375816 List!62585)) )
))
(declare-fun zl!343 () List!62585)

(declare-fun unfocusZipperList!860 (List!62585) List!62583)

(assert (=> b!5488569 (= lt!2241657 (unfocusZipperList!860 zl!343))))

(declare-fun b!5488570 () Bool)

(declare-fun res!2340783 () Bool)

(assert (=> b!5488570 (=> res!2340783 e!3396225)))

(assert (=> b!5488570 (= res!2340783 (or (not (is-Cons!62461 zl!343)) (is-Nil!62460 s!2326) (not (= zl!343 (Cons!62461 (h!68909 zl!343) (t!375816 zl!343))))))))

(declare-fun setIsEmpty!36252 () Bool)

(declare-fun setRes!36252 () Bool)

(assert (=> setIsEmpty!36252 setRes!36252))

(declare-fun b!5488571 () Bool)

(declare-fun res!2340789 () Bool)

(assert (=> b!5488571 (=> res!2340789 e!3396225)))

(declare-fun isEmpty!34318 (List!62585) Bool)

(assert (=> b!5488571 (= res!2340789 (isEmpty!34318 (t!375816 zl!343)))))

(declare-fun b!5488572 () Bool)

(declare-fun e!3396222 () Bool)

(declare-fun tp_is_empty!40109 () Bool)

(declare-fun tp!1508651 () Bool)

(assert (=> b!5488572 (= e!3396222 (and tp_is_empty!40109 tp!1508651))))

(declare-fun b!5488573 () Bool)

(declare-fun e!3396223 () Bool)

(declare-fun tp!1508660 () Bool)

(declare-fun tp!1508663 () Bool)

(assert (=> b!5488573 (= e!3396223 (and tp!1508660 tp!1508663))))

(declare-fun b!5488574 () Bool)

(declare-fun res!2340784 () Bool)

(declare-fun e!3396218 () Bool)

(assert (=> b!5488574 (=> (not res!2340784) (not e!3396218))))

(declare-fun unfocusZipper!1170 (List!62585) Regex!15428)

(assert (=> b!5488574 (= res!2340784 (= r!7292 (unfocusZipper!1170 zl!343)))))

(declare-fun b!5488575 () Bool)

(declare-fun tp!1508654 () Bool)

(declare-fun tp!1508652 () Bool)

(assert (=> b!5488575 (= e!3396223 (and tp!1508654 tp!1508652))))

(declare-fun b!5488576 () Bool)

(declare-fun e!3396224 () Bool)

(declare-fun tp!1508657 () Bool)

(declare-fun tp!1508662 () Bool)

(assert (=> b!5488576 (= e!3396224 (and tp!1508657 tp!1508662))))

(declare-fun b!5488577 () Bool)

(declare-fun e!3396219 () Bool)

(declare-fun tp!1508650 () Bool)

(assert (=> b!5488577 (= e!3396219 tp!1508650)))

(declare-fun b!5488578 () Bool)

(declare-fun tp!1508655 () Bool)

(assert (=> b!5488578 (= e!3396224 tp!1508655)))

(declare-fun b!5488579 () Bool)

(assert (=> b!5488579 (= e!3396223 tp_is_empty!40109)))

(declare-fun b!5488580 () Bool)

(declare-fun res!2340785 () Bool)

(assert (=> b!5488580 (=> (not res!2340785) (not e!3396218))))

(declare-fun z!1189 () (Set Context!9624))

(declare-fun toList!9212 ((Set Context!9624)) List!62585)

(assert (=> b!5488580 (= res!2340785 (= (toList!9212 z!1189) zl!343))))

(declare-fun b!5488581 () Bool)

(assert (=> b!5488581 (= e!3396224 tp_is_empty!40109)))

(declare-fun b!5488582 () Bool)

(declare-fun tp!1508664 () Bool)

(assert (=> b!5488582 (= e!3396223 tp!1508664)))

(declare-fun res!2340787 () Bool)

(assert (=> start!573780 (=> (not res!2340787) (not e!3396218))))

(declare-fun validRegex!7164 (Regex!15428) Bool)

(assert (=> start!573780 (= res!2340787 (validRegex!7164 r!7292))))

(assert (=> start!573780 e!3396218))

(assert (=> start!573780 e!3396223))

(assert (=> start!573780 e!3396222))

(declare-fun condSetEmpty!36252 () Bool)

(assert (=> start!573780 (= condSetEmpty!36252 (= z!1189 (as set.empty (Set Context!9624))))))

(assert (=> start!573780 setRes!36252))

(declare-fun e!3396220 () Bool)

(assert (=> start!573780 e!3396220))

(assert (=> start!573780 e!3396224))

(declare-fun b!5488583 () Bool)

(assert (=> b!5488583 (= e!3396218 (not e!3396225))))

(declare-fun res!2340788 () Bool)

(assert (=> b!5488583 (=> res!2340788 e!3396225)))

(declare-fun e!3396221 () Bool)

(assert (=> b!5488583 (= res!2340788 e!3396221)))

(declare-fun res!2340786 () Bool)

(assert (=> b!5488583 (=> (not res!2340786) (not e!3396221))))

(assert (=> b!5488583 (= res!2340786 (is-Cons!62461 zl!343))))

(declare-fun matchRSpec!2531 (Regex!15428 List!62584) Bool)

(assert (=> b!5488583 (= lt!2241655 (matchRSpec!2531 r!7292 s!2326))))

(declare-fun matchR!7613 (Regex!15428 List!62584) Bool)

(assert (=> b!5488583 (= lt!2241655 (matchR!7613 r!7292 s!2326))))

(declare-fun lt!2241656 () Unit!155312)

(declare-fun mainMatchTheorem!2531 (Regex!15428 List!62584) Unit!155312)

(assert (=> b!5488583 (= lt!2241656 (mainMatchTheorem!2531 r!7292 s!2326))))

(declare-fun b!5488584 () Bool)

(declare-fun e!3396217 () Bool)

(declare-fun tp!1508659 () Bool)

(assert (=> b!5488584 (= e!3396217 tp!1508659)))

(declare-fun tp!1508656 () Bool)

(declare-fun setElem!36252 () Context!9624)

(declare-fun setNonEmpty!36252 () Bool)

(declare-fun inv!81818 (Context!9624) Bool)

(assert (=> setNonEmpty!36252 (= setRes!36252 (and tp!1508656 (inv!81818 setElem!36252) e!3396217))))

(declare-fun setRest!36252 () (Set Context!9624))

(assert (=> setNonEmpty!36252 (= z!1189 (set.union (set.insert setElem!36252 (as set.empty (Set Context!9624))) setRest!36252))))

(declare-fun tp!1508653 () Bool)

(declare-fun b!5488585 () Bool)

(assert (=> b!5488585 (= e!3396220 (and (inv!81818 (h!68909 zl!343)) e!3396219 tp!1508653))))

(declare-fun b!5488586 () Bool)

(assert (=> b!5488586 (= e!3396221 (isEmpty!34318 (t!375816 zl!343)))))

(declare-fun b!5488587 () Bool)

(declare-fun tp!1508658 () Bool)

(declare-fun tp!1508661 () Bool)

(assert (=> b!5488587 (= e!3396224 (and tp!1508658 tp!1508661))))

(assert (= (and start!573780 res!2340787) b!5488580))

(assert (= (and b!5488580 res!2340785) b!5488574))

(assert (= (and b!5488574 res!2340784) b!5488583))

(assert (= (and b!5488583 res!2340786) b!5488586))

(assert (= (and b!5488583 (not res!2340788)) b!5488570))

(assert (= (and b!5488570 (not res!2340783)) b!5488571))

(assert (= (and b!5488571 (not res!2340789)) b!5488569))

(assert (= (and start!573780 (is-ElementMatch!15428 r!7292)) b!5488579))

(assert (= (and start!573780 (is-Concat!24273 r!7292)) b!5488575))

(assert (= (and start!573780 (is-Star!15428 r!7292)) b!5488582))

(assert (= (and start!573780 (is-Union!15428 r!7292)) b!5488573))

(assert (= (and start!573780 (is-Cons!62460 s!2326)) b!5488572))

(assert (= (and start!573780 condSetEmpty!36252) setIsEmpty!36252))

(assert (= (and start!573780 (not condSetEmpty!36252)) setNonEmpty!36252))

(assert (= setNonEmpty!36252 b!5488584))

(assert (= b!5488585 b!5488577))

(assert (= (and start!573780 (is-Cons!62461 zl!343)) b!5488585))

(declare-fun rr!4 () Regex!15428)

(assert (= (and start!573780 (is-ElementMatch!15428 rr!4)) b!5488581))

(assert (= (and start!573780 (is-Concat!24273 rr!4)) b!5488576))

(assert (= (and start!573780 (is-Star!15428 rr!4)) b!5488578))

(assert (= (and start!573780 (is-Union!15428 rr!4)) b!5488587))

(declare-fun m!6502428 () Bool)

(assert (=> start!573780 m!6502428))

(declare-fun m!6502430 () Bool)

(assert (=> b!5488586 m!6502430))

(declare-fun m!6502432 () Bool)

(assert (=> b!5488569 m!6502432))

(declare-fun m!6502434 () Bool)

(assert (=> b!5488569 m!6502434))

(declare-fun m!6502436 () Bool)

(assert (=> b!5488569 m!6502436))

(declare-fun m!6502438 () Bool)

(assert (=> b!5488583 m!6502438))

(declare-fun m!6502440 () Bool)

(assert (=> b!5488583 m!6502440))

(declare-fun m!6502442 () Bool)

(assert (=> b!5488583 m!6502442))

(assert (=> b!5488571 m!6502430))

(declare-fun m!6502444 () Bool)

(assert (=> setNonEmpty!36252 m!6502444))

(declare-fun m!6502446 () Bool)

(assert (=> b!5488580 m!6502446))

(declare-fun m!6502448 () Bool)

(assert (=> b!5488585 m!6502448))

(declare-fun m!6502450 () Bool)

(assert (=> b!5488574 m!6502450))

(push 1)

(assert (not b!5488580))

(assert (not b!5488587))

(assert tp_is_empty!40109)

(assert (not b!5488583))

(assert (not b!5488576))

(assert (not b!5488571))

(assert (not b!5488578))

(assert (not b!5488573))

(assert (not b!5488582))

(assert (not b!5488569))

(assert (not b!5488586))

(assert (not b!5488575))

(assert (not b!5488577))

(assert (not setNonEmpty!36252))

(assert (not b!5488574))

(assert (not b!5488572))

(assert (not b!5488584))

(assert (not start!573780))

(assert (not b!5488585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

