; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!573580 () Bool)

(assert start!573580)

(declare-fun b!5485207 () Bool)

(declare-fun res!2339043 () Bool)

(declare-fun e!3394389 () Bool)

(assert (=> b!5485207 (=> (not res!2339043) (not e!3394389))))

(declare-datatypes ((C!31054 0))(
  ( (C!31055 (val!25229 Int)) )
))
(declare-datatypes ((Regex!15392 0))(
  ( (ElementMatch!15392 (c!958332 C!31054)) (Concat!24237 (regOne!31296 Regex!15392) (regTwo!31296 Regex!15392)) (EmptyExpr!15392) (Star!15392 (reg!15721 Regex!15392)) (EmptyLang!15392) (Union!15392 (regOne!31297 Regex!15392) (regTwo!31297 Regex!15392)) )
))
(declare-datatypes ((List!62475 0))(
  ( (Nil!62351) (Cons!62351 (h!68799 Regex!15392) (t!375706 List!62475)) )
))
(declare-datatypes ((Context!9552 0))(
  ( (Context!9553 (exprs!5276 List!62475)) )
))
(declare-fun z!1189 () (Set Context!9552))

(declare-datatypes ((List!62476 0))(
  ( (Nil!62352) (Cons!62352 (h!68800 Context!9552) (t!375707 List!62476)) )
))
(declare-fun zl!343 () List!62476)

(declare-fun toList!9176 ((Set Context!9552)) List!62476)

(assert (=> b!5485207 (= res!2339043 (= (toList!9176 z!1189) zl!343))))

(declare-fun b!5485208 () Bool)

(declare-fun res!2339041 () Bool)

(assert (=> b!5485208 (=> (not res!2339041) (not e!3394389))))

(declare-fun r!7292 () Regex!15392)

(declare-fun unfocusZipper!1134 (List!62476) Regex!15392)

(assert (=> b!5485208 (= res!2339041 (= r!7292 (unfocusZipper!1134 zl!343)))))

(declare-fun b!5485209 () Bool)

(declare-fun e!3394381 () Bool)

(declare-fun tp_is_empty!40037 () Bool)

(assert (=> b!5485209 (= e!3394381 tp_is_empty!40037)))

(declare-fun setNonEmpty!36132 () Bool)

(declare-fun tp!1507249 () Bool)

(declare-fun e!3394385 () Bool)

(declare-fun setElem!36132 () Context!9552)

(declare-fun setRes!36132 () Bool)

(declare-fun inv!81728 (Context!9552) Bool)

(assert (=> setNonEmpty!36132 (= setRes!36132 (and tp!1507249 (inv!81728 setElem!36132) e!3394385))))

(declare-fun setRest!36132 () (Set Context!9552))

(assert (=> setNonEmpty!36132 (= z!1189 (set.union (set.insert setElem!36132 (as set.empty (Set Context!9552))) setRest!36132))))

(declare-fun b!5485210 () Bool)

(declare-fun e!3394386 () Bool)

(declare-fun tp!1507257 () Bool)

(assert (=> b!5485210 (= e!3394386 (and tp_is_empty!40037 tp!1507257))))

(declare-fun b!5485211 () Bool)

(declare-fun e!3394383 () Bool)

(declare-fun isEmpty!34278 (List!62476) Bool)

(assert (=> b!5485211 (= e!3394383 (isEmpty!34278 (t!375707 zl!343)))))

(declare-fun b!5485213 () Bool)

(declare-fun tp!1507248 () Bool)

(assert (=> b!5485213 (= e!3394381 tp!1507248)))

(declare-fun b!5485214 () Bool)

(declare-fun res!2339042 () Bool)

(declare-fun e!3394388 () Bool)

(assert (=> b!5485214 (=> res!2339042 e!3394388)))

(declare-datatypes ((List!62477 0))(
  ( (Nil!62353) (Cons!62353 (h!68801 C!31054) (t!375708 List!62477)) )
))
(declare-fun s!2326 () List!62477)

(assert (=> b!5485214 (= res!2339042 (or (not (is-Cons!62352 zl!343)) (not (is-Nil!62353 s!2326))))))

(declare-fun b!5485215 () Bool)

(declare-fun tp!1507256 () Bool)

(assert (=> b!5485215 (= e!3394385 tp!1507256)))

(declare-fun b!5485216 () Bool)

(assert (=> b!5485216 (= e!3394389 (not e!3394388))))

(declare-fun res!2339045 () Bool)

(assert (=> b!5485216 (=> res!2339045 e!3394388)))

(assert (=> b!5485216 (= res!2339045 e!3394383)))

(declare-fun res!2339044 () Bool)

(assert (=> b!5485216 (=> (not res!2339044) (not e!3394383))))

(assert (=> b!5485216 (= res!2339044 (is-Cons!62352 zl!343))))

(declare-fun matchR!7577 (Regex!15392 List!62477) Bool)

(declare-fun matchRSpec!2495 (Regex!15392 List!62477) Bool)

(assert (=> b!5485216 (= (matchR!7577 r!7292 s!2326) (matchRSpec!2495 r!7292 s!2326))))

(declare-datatypes ((Unit!155238 0))(
  ( (Unit!155239) )
))
(declare-fun lt!2240752 () Unit!155238)

(declare-fun mainMatchTheorem!2495 (Regex!15392 List!62477) Unit!155238)

(assert (=> b!5485216 (= lt!2240752 (mainMatchTheorem!2495 r!7292 s!2326))))

(declare-fun b!5485217 () Bool)

(declare-fun e!3394384 () Bool)

(assert (=> b!5485217 (= e!3394384 true)))

(declare-fun lt!2240753 () Bool)

(declare-fun matchZipper!1604 ((Set Context!9552) List!62477) Bool)

(assert (=> b!5485217 (= lt!2240753 (matchZipper!1604 z!1189 s!2326))))

(declare-fun b!5485218 () Bool)

(declare-fun e!3394387 () Bool)

(declare-fun tp!1507252 () Bool)

(declare-fun e!3394382 () Bool)

(assert (=> b!5485218 (= e!3394387 (and (inv!81728 (h!68800 zl!343)) e!3394382 tp!1507252))))

(declare-fun b!5485219 () Bool)

(declare-fun tp!1507255 () Bool)

(declare-fun tp!1507254 () Bool)

(assert (=> b!5485219 (= e!3394381 (and tp!1507255 tp!1507254))))

(declare-fun setIsEmpty!36132 () Bool)

(assert (=> setIsEmpty!36132 setRes!36132))

(declare-fun b!5485220 () Bool)

(assert (=> b!5485220 (= e!3394388 e!3394384)))

(declare-fun res!2339046 () Bool)

(assert (=> b!5485220 (=> res!2339046 e!3394384)))

(declare-fun lt!2240756 () Bool)

(declare-fun lt!2240754 () Bool)

(assert (=> b!5485220 (= res!2339046 (not (= lt!2240756 lt!2240754)))))

(assert (=> b!5485220 (= lt!2240754 lt!2240756)))

(declare-fun nullableZipper!1514 ((Set Context!9552)) Bool)

(assert (=> b!5485220 (= lt!2240756 (nullableZipper!1514 z!1189))))

(declare-fun nullable!5493 (Regex!15392) Bool)

(assert (=> b!5485220 (= lt!2240754 (nullable!5493 r!7292))))

(declare-fun lt!2240755 () Unit!155238)

(declare-fun lemmaUnfocusPreservesNullability!15 (Regex!15392 (Set Context!9552)) Unit!155238)

(assert (=> b!5485220 (= lt!2240755 (lemmaUnfocusPreservesNullability!15 r!7292 z!1189))))

(declare-fun b!5485221 () Bool)

(declare-fun tp!1507253 () Bool)

(declare-fun tp!1507250 () Bool)

(assert (=> b!5485221 (= e!3394381 (and tp!1507253 tp!1507250))))

(declare-fun b!5485212 () Bool)

(declare-fun tp!1507251 () Bool)

(assert (=> b!5485212 (= e!3394382 tp!1507251)))

(declare-fun res!2339047 () Bool)

(assert (=> start!573580 (=> (not res!2339047) (not e!3394389))))

(declare-fun validRegex!7128 (Regex!15392) Bool)

(assert (=> start!573580 (= res!2339047 (validRegex!7128 r!7292))))

(assert (=> start!573580 e!3394389))

(assert (=> start!573580 e!3394381))

(declare-fun condSetEmpty!36132 () Bool)

(assert (=> start!573580 (= condSetEmpty!36132 (= z!1189 (as set.empty (Set Context!9552))))))

(assert (=> start!573580 setRes!36132))

(assert (=> start!573580 e!3394387))

(assert (=> start!573580 e!3394386))

(assert (= (and start!573580 res!2339047) b!5485207))

(assert (= (and b!5485207 res!2339043) b!5485208))

(assert (= (and b!5485208 res!2339041) b!5485216))

(assert (= (and b!5485216 res!2339044) b!5485211))

(assert (= (and b!5485216 (not res!2339045)) b!5485214))

(assert (= (and b!5485214 (not res!2339042)) b!5485220))

(assert (= (and b!5485220 (not res!2339046)) b!5485217))

(assert (= (and start!573580 (is-ElementMatch!15392 r!7292)) b!5485209))

(assert (= (and start!573580 (is-Concat!24237 r!7292)) b!5485221))

(assert (= (and start!573580 (is-Star!15392 r!7292)) b!5485213))

(assert (= (and start!573580 (is-Union!15392 r!7292)) b!5485219))

(assert (= (and start!573580 condSetEmpty!36132) setIsEmpty!36132))

(assert (= (and start!573580 (not condSetEmpty!36132)) setNonEmpty!36132))

(assert (= setNonEmpty!36132 b!5485215))

(assert (= b!5485218 b!5485212))

(assert (= (and start!573580 (is-Cons!62352 zl!343)) b!5485218))

(assert (= (and start!573580 (is-Cons!62353 s!2326)) b!5485210))

(declare-fun m!6500628 () Bool)

(assert (=> setNonEmpty!36132 m!6500628))

(declare-fun m!6500630 () Bool)

(assert (=> b!5485217 m!6500630))

(declare-fun m!6500632 () Bool)

(assert (=> b!5485218 m!6500632))

(declare-fun m!6500634 () Bool)

(assert (=> b!5485216 m!6500634))

(declare-fun m!6500636 () Bool)

(assert (=> b!5485216 m!6500636))

(declare-fun m!6500638 () Bool)

(assert (=> b!5485216 m!6500638))

(declare-fun m!6500640 () Bool)

(assert (=> b!5485220 m!6500640))

(declare-fun m!6500642 () Bool)

(assert (=> b!5485220 m!6500642))

(declare-fun m!6500644 () Bool)

(assert (=> b!5485220 m!6500644))

(declare-fun m!6500646 () Bool)

(assert (=> start!573580 m!6500646))

(declare-fun m!6500648 () Bool)

(assert (=> b!5485207 m!6500648))

(declare-fun m!6500650 () Bool)

(assert (=> b!5485211 m!6500650))

(declare-fun m!6500652 () Bool)

(assert (=> b!5485208 m!6500652))

(push 1)

(assert (not b!5485215))

(assert (not b!5485217))

(assert (not b!5485220))

(assert (not b!5485216))

(assert (not b!5485211))

(assert (not b!5485208))

(assert (not b!5485207))

(assert (not setNonEmpty!36132))

(assert (not b!5485213))

(assert (not b!5485221))

(assert (not b!5485212))

(assert (not b!5485210))

(assert (not start!573580))

(assert (not b!5485218))

(assert tp_is_empty!40037)

(assert (not b!5485219))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

