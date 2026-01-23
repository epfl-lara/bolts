; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742820 () Bool)

(assert start!742820)

(declare-fun b!7843113 () Bool)

(declare-fun e!4637243 () Bool)

(assert (=> b!7843113 (= e!4637243 false)))

(declare-datatypes ((C!42386 0))(
  ( (C!42387 (val!31655 Int)) )
))
(declare-datatypes ((Regex!21030 0))(
  ( (ElementMatch!21030 (c!1441774 C!42386)) (Concat!29875 (regOne!42572 Regex!21030) (regTwo!42572 Regex!21030)) (EmptyExpr!21030) (Star!21030 (reg!21359 Regex!21030)) (EmptyLang!21030) (Union!21030 (regOne!42573 Regex!21030) (regTwo!42573 Regex!21030)) )
))
(declare-fun lt!2678870 () Regex!21030)

(declare-fun r!27161 () Regex!21030)

(declare-datatypes ((List!73889 0))(
  ( (Nil!73765) (Cons!73765 (h!80213 C!42386) (t!388624 List!73889)) )
))
(declare-fun s!15118 () List!73889)

(declare-fun derivativeStep!6275 (Regex!21030 C!42386) Regex!21030)

(assert (=> b!7843113 (= lt!2678870 (derivativeStep!6275 r!27161 (h!80213 s!15118)))))

(declare-fun res!3119585 () Bool)

(assert (=> start!742820 (=> (not res!3119585) (not e!4637243))))

(assert (=> start!742820 (= res!3119585 (and (= r!27161 EmptyLang!21030) (is-Cons!73765 s!15118)))))

(assert (=> start!742820 e!4637243))

(declare-fun e!4637242 () Bool)

(assert (=> start!742820 e!4637242))

(declare-fun e!4637244 () Bool)

(assert (=> start!742820 e!4637244))

(declare-fun b!7843114 () Bool)

(declare-fun tp!2321373 () Bool)

(declare-fun tp!2321376 () Bool)

(assert (=> b!7843114 (= e!4637242 (and tp!2321373 tp!2321376))))

(declare-fun b!7843115 () Bool)

(declare-fun tp_is_empty!52459 () Bool)

(assert (=> b!7843115 (= e!4637242 tp_is_empty!52459)))

(declare-fun b!7843116 () Bool)

(declare-fun tp!2321371 () Bool)

(assert (=> b!7843116 (= e!4637244 (and tp_is_empty!52459 tp!2321371))))

(declare-fun b!7843117 () Bool)

(declare-fun tp!2321375 () Bool)

(assert (=> b!7843117 (= e!4637242 tp!2321375)))

(declare-fun b!7843118 () Bool)

(declare-fun tp!2321372 () Bool)

(declare-fun tp!2321374 () Bool)

(assert (=> b!7843118 (= e!4637242 (and tp!2321372 tp!2321374))))

(assert (= (and start!742820 res!3119585) b!7843113))

(assert (= (and start!742820 (is-ElementMatch!21030 r!27161)) b!7843115))

(assert (= (and start!742820 (is-Concat!29875 r!27161)) b!7843114))

(assert (= (and start!742820 (is-Star!21030 r!27161)) b!7843117))

(assert (= (and start!742820 (is-Union!21030 r!27161)) b!7843118))

(assert (= (and start!742820 (is-Cons!73765 s!15118)) b!7843116))

(declare-fun m!8255056 () Bool)

(assert (=> b!7843113 m!8255056))

(push 1)

(assert tp_is_empty!52459)

(assert (not b!7843113))

(assert (not b!7843116))

(assert (not b!7843117))

(assert (not b!7843114))

(assert (not b!7843118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

