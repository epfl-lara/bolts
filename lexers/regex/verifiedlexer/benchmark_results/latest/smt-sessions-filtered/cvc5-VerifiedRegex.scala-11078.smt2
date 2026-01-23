; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573600 () Bool)

(assert start!573600)

(declare-fun b!5485744 () Bool)

(assert (=> b!5485744 true))

(declare-fun setRes!36162 () Bool)

(declare-fun e!3394660 () Bool)

(declare-datatypes ((C!31074 0))(
  ( (C!31075 (val!25239 Int)) )
))
(declare-datatypes ((Regex!15402 0))(
  ( (ElementMatch!15402 (c!958342 C!31074)) (Concat!24247 (regOne!31316 Regex!15402) (regTwo!31316 Regex!15402)) (EmptyExpr!15402) (Star!15402 (reg!15731 Regex!15402)) (EmptyLang!15402) (Union!15402 (regOne!31317 Regex!15402) (regTwo!31317 Regex!15402)) )
))
(declare-datatypes ((List!62505 0))(
  ( (Nil!62381) (Cons!62381 (h!68829 Regex!15402) (t!375736 List!62505)) )
))
(declare-datatypes ((Context!9572 0))(
  ( (Context!9573 (exprs!5286 List!62505)) )
))
(declare-fun setElem!36162 () Context!9572)

(declare-fun setNonEmpty!36162 () Bool)

(declare-fun tp!1507592 () Bool)

(declare-fun inv!81753 (Context!9572) Bool)

(assert (=> setNonEmpty!36162 (= setRes!36162 (and tp!1507592 (inv!81753 setElem!36162) e!3394660))))

(declare-fun z!1189 () (Set Context!9572))

(declare-fun setRest!36162 () (Set Context!9572))

(assert (=> setNonEmpty!36162 (= z!1189 (set.union (set.insert setElem!36162 (as set.empty (Set Context!9572))) setRest!36162))))

(declare-fun b!5485731 () Bool)

(declare-fun e!3394658 () Bool)

(declare-fun tp!1507602 () Bool)

(declare-fun tp!1507591 () Bool)

(assert (=> b!5485731 (= e!3394658 (and tp!1507602 tp!1507591))))

(declare-fun b!5485732 () Bool)

(declare-fun tp!1507598 () Bool)

(declare-fun tp!1507593 () Bool)

(assert (=> b!5485732 (= e!3394658 (and tp!1507598 tp!1507593))))

(declare-fun b!5485733 () Bool)

(declare-fun tp!1507590 () Bool)

(assert (=> b!5485733 (= e!3394660 tp!1507590)))

(declare-fun b!5485735 () Bool)

(declare-fun res!2339289 () Bool)

(declare-fun e!3394662 () Bool)

(assert (=> b!5485735 (=> res!2339289 e!3394662)))

(declare-datatypes ((List!62506 0))(
  ( (Nil!62382) (Cons!62382 (h!68830 Context!9572) (t!375737 List!62506)) )
))
(declare-fun zl!343 () List!62506)

(declare-fun isEmpty!34288 (List!62506) Bool)

(assert (=> b!5485735 (= res!2339289 (isEmpty!34288 (t!375737 zl!343)))))

(declare-fun b!5485736 () Bool)

(declare-fun e!3394656 () Bool)

(declare-fun tp!1507601 () Bool)

(declare-fun tp!1507595 () Bool)

(assert (=> b!5485736 (= e!3394656 (and tp!1507601 tp!1507595))))

(declare-fun b!5485737 () Bool)

(declare-fun e!3394659 () Bool)

(assert (=> b!5485737 (= e!3394659 (isEmpty!34288 (t!375737 zl!343)))))

(declare-fun b!5485738 () Bool)

(declare-fun res!2339288 () Bool)

(declare-fun e!3394657 () Bool)

(assert (=> b!5485738 (=> (not res!2339288) (not e!3394657))))

(declare-fun toList!9186 ((Set Context!9572)) List!62506)

(assert (=> b!5485738 (= res!2339288 (= (toList!9186 z!1189) zl!343))))

(declare-fun b!5485739 () Bool)

(declare-fun tp_is_empty!40057 () Bool)

(assert (=> b!5485739 (= e!3394656 tp_is_empty!40057)))

(declare-fun b!5485740 () Bool)

(declare-fun e!3394661 () Bool)

(declare-fun tp!1507596 () Bool)

(assert (=> b!5485740 (= e!3394661 tp!1507596)))

(declare-fun b!5485741 () Bool)

(declare-fun tp!1507600 () Bool)

(declare-fun tp!1507597 () Bool)

(assert (=> b!5485741 (= e!3394656 (and tp!1507600 tp!1507597))))

(declare-fun b!5485742 () Bool)

(assert (=> b!5485742 (= e!3394658 tp_is_empty!40057)))

(declare-fun b!5485743 () Bool)

(declare-fun res!2339286 () Bool)

(assert (=> b!5485743 (=> (not res!2339286) (not e!3394657))))

(declare-fun r!7292 () Regex!15402)

(declare-fun unfocusZipper!1144 (List!62506) Regex!15402)

(assert (=> b!5485743 (= res!2339286 (= r!7292 (unfocusZipper!1144 zl!343)))))

(assert (=> b!5485744 (= e!3394662 true)))

(declare-fun lt!2240855 () Bool)

(declare-fun lt!2240852 () List!62505)

(declare-fun lambda!293234 () Int)

(declare-fun exists!2034 (List!62505 Int) Bool)

(assert (=> b!5485744 (= lt!2240855 (exists!2034 lt!2240852 lambda!293234))))

(declare-datatypes ((List!62507 0))(
  ( (Nil!62383) (Cons!62383 (h!68831 C!31074) (t!375738 List!62507)) )
))
(declare-fun s!2326 () List!62507)

(declare-datatypes ((Unit!155258 0))(
  ( (Unit!155259) )
))
(declare-fun lt!2240853 () Unit!155258)

(declare-fun matchRGenUnionSpec!235 (Regex!15402 List!62505 List!62507) Unit!155258)

(assert (=> b!5485744 (= lt!2240853 (matchRGenUnionSpec!235 r!7292 lt!2240852 s!2326))))

(declare-fun unfocusZipperList!834 (List!62506) List!62505)

(assert (=> b!5485744 (= lt!2240852 (unfocusZipperList!834 zl!343))))

(declare-fun b!5485734 () Bool)

(declare-fun tp!1507588 () Bool)

(assert (=> b!5485734 (= e!3394658 tp!1507588)))

(declare-fun res!2339285 () Bool)

(assert (=> start!573600 (=> (not res!2339285) (not e!3394657))))

(declare-fun validRegex!7138 (Regex!15402) Bool)

(assert (=> start!573600 (= res!2339285 (validRegex!7138 r!7292))))

(assert (=> start!573600 e!3394657))

(assert (=> start!573600 e!3394656))

(declare-fun e!3394655 () Bool)

(assert (=> start!573600 e!3394655))

(declare-fun condSetEmpty!36162 () Bool)

(assert (=> start!573600 (= condSetEmpty!36162 (= z!1189 (as set.empty (Set Context!9572))))))

(assert (=> start!573600 setRes!36162))

(assert (=> start!573600 e!3394658))

(declare-fun e!3394663 () Bool)

(assert (=> start!573600 e!3394663))

(declare-fun b!5485745 () Bool)

(declare-fun tp!1507589 () Bool)

(assert (=> b!5485745 (= e!3394655 (and tp_is_empty!40057 tp!1507589))))

(declare-fun b!5485746 () Bool)

(declare-fun tp!1507599 () Bool)

(assert (=> b!5485746 (= e!3394663 (and (inv!81753 (h!68830 zl!343)) e!3394661 tp!1507599))))

(declare-fun setIsEmpty!36162 () Bool)

(assert (=> setIsEmpty!36162 setRes!36162))

(declare-fun b!5485747 () Bool)

(declare-fun res!2339287 () Bool)

(assert (=> b!5485747 (=> res!2339287 e!3394662)))

(assert (=> b!5485747 (= res!2339287 (or (not (is-Cons!62382 zl!343)) (is-Nil!62383 s!2326) (not (= zl!343 (Cons!62382 (h!68830 zl!343) (t!375737 zl!343))))))))

(declare-fun b!5485748 () Bool)

(assert (=> b!5485748 (= e!3394657 (not e!3394662))))

(declare-fun res!2339290 () Bool)

(assert (=> b!5485748 (=> res!2339290 e!3394662)))

(assert (=> b!5485748 (= res!2339290 e!3394659)))

(declare-fun res!2339291 () Bool)

(assert (=> b!5485748 (=> (not res!2339291) (not e!3394659))))

(assert (=> b!5485748 (= res!2339291 (is-Cons!62382 zl!343))))

(declare-fun matchRSpec!2505 (Regex!15402 List!62507) Bool)

(assert (=> b!5485748 (= lt!2240855 (matchRSpec!2505 r!7292 s!2326))))

(declare-fun matchR!7587 (Regex!15402 List!62507) Bool)

(assert (=> b!5485748 (= lt!2240855 (matchR!7587 r!7292 s!2326))))

(declare-fun lt!2240854 () Unit!155258)

(declare-fun mainMatchTheorem!2505 (Regex!15402 List!62507) Unit!155258)

(assert (=> b!5485748 (= lt!2240854 (mainMatchTheorem!2505 r!7292 s!2326))))

(declare-fun b!5485749 () Bool)

(declare-fun tp!1507594 () Bool)

(assert (=> b!5485749 (= e!3394656 tp!1507594)))

(assert (= (and start!573600 res!2339285) b!5485738))

(assert (= (and b!5485738 res!2339288) b!5485743))

(assert (= (and b!5485743 res!2339286) b!5485748))

(assert (= (and b!5485748 res!2339291) b!5485737))

(assert (= (and b!5485748 (not res!2339290)) b!5485747))

(assert (= (and b!5485747 (not res!2339287)) b!5485735))

(assert (= (and b!5485735 (not res!2339289)) b!5485744))

(assert (= (and start!573600 (is-ElementMatch!15402 r!7292)) b!5485739))

(assert (= (and start!573600 (is-Concat!24247 r!7292)) b!5485741))

(assert (= (and start!573600 (is-Star!15402 r!7292)) b!5485749))

(assert (= (and start!573600 (is-Union!15402 r!7292)) b!5485736))

(assert (= (and start!573600 (is-Cons!62383 s!2326)) b!5485745))

(assert (= (and start!573600 condSetEmpty!36162) setIsEmpty!36162))

(assert (= (and start!573600 (not condSetEmpty!36162)) setNonEmpty!36162))

(assert (= setNonEmpty!36162 b!5485733))

(declare-fun rr!3 () Regex!15402)

(assert (= (and start!573600 (is-ElementMatch!15402 rr!3)) b!5485742))

(assert (= (and start!573600 (is-Concat!24247 rr!3)) b!5485731))

(assert (= (and start!573600 (is-Star!15402 rr!3)) b!5485734))

(assert (= (and start!573600 (is-Union!15402 rr!3)) b!5485732))

(assert (= b!5485746 b!5485740))

(assert (= (and start!573600 (is-Cons!62382 zl!343)) b!5485746))

(declare-fun m!6500872 () Bool)

(assert (=> b!5485748 m!6500872))

(declare-fun m!6500874 () Bool)

(assert (=> b!5485748 m!6500874))

(declare-fun m!6500876 () Bool)

(assert (=> b!5485748 m!6500876))

(declare-fun m!6500878 () Bool)

(assert (=> b!5485735 m!6500878))

(assert (=> b!5485737 m!6500878))

(declare-fun m!6500880 () Bool)

(assert (=> start!573600 m!6500880))

(declare-fun m!6500882 () Bool)

(assert (=> b!5485744 m!6500882))

(declare-fun m!6500884 () Bool)

(assert (=> b!5485744 m!6500884))

(declare-fun m!6500886 () Bool)

(assert (=> b!5485744 m!6500886))

(declare-fun m!6500888 () Bool)

(assert (=> b!5485738 m!6500888))

(declare-fun m!6500890 () Bool)

(assert (=> b!5485743 m!6500890))

(declare-fun m!6500892 () Bool)

(assert (=> setNonEmpty!36162 m!6500892))

(declare-fun m!6500894 () Bool)

(assert (=> b!5485746 m!6500894))

(push 1)

(assert tp_is_empty!40057)

(assert (not setNonEmpty!36162))

(assert (not b!5485745))

(assert (not b!5485734))

(assert (not b!5485746))

(assert (not b!5485749))

(assert (not b!5485733))

(assert (not start!573600))

(assert (not b!5485737))

(assert (not b!5485740))

(assert (not b!5485735))

(assert (not b!5485748))

(assert (not b!5485738))

(assert (not b!5485731))

(assert (not b!5485743))

(assert (not b!5485732))

(assert (not b!5485741))

(assert (not b!5485744))

(assert (not b!5485736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

