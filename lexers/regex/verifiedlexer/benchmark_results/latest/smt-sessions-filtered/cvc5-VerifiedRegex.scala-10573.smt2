; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544126 () Bool)

(assert start!544126)

(declare-fun b!5138757 () Bool)

(declare-fun e!3205206 () Bool)

(declare-fun tp!1433258 () Bool)

(assert (=> b!5138757 (= e!3205206 tp!1433258)))

(declare-fun b!5138758 () Bool)

(declare-fun e!3205207 () Bool)

(declare-fun tp!1433260 () Bool)

(assert (=> b!5138758 (= e!3205207 tp!1433260)))

(declare-fun b!5138759 () Bool)

(declare-fun tp_is_empty!38021 () Bool)

(assert (=> b!5138759 (= e!3205206 tp_is_empty!38021)))

(declare-fun res!2188589 () Bool)

(declare-fun e!3205209 () Bool)

(assert (=> start!544126 (=> (not res!2188589) (not e!3205209))))

(declare-datatypes ((C!29138 0))(
  ( (C!29139 (val!24221 Int)) )
))
(declare-datatypes ((Regex!14436 0))(
  ( (ElementMatch!14436 (c!884874 C!29138)) (Concat!23281 (regOne!29384 Regex!14436) (regTwo!29384 Regex!14436)) (EmptyExpr!14436) (Star!14436 (reg!14765 Regex!14436)) (EmptyLang!14436) (Union!14436 (regOne!29385 Regex!14436) (regTwo!29385 Regex!14436)) )
))
(declare-fun expr!117 () Regex!14436)

(declare-fun validRegex!6291 (Regex!14436) Bool)

(assert (=> start!544126 (= res!2188589 (validRegex!6291 expr!117))))

(assert (=> start!544126 e!3205209))

(assert (=> start!544126 e!3205206))

(declare-datatypes ((List!59806 0))(
  ( (Nil!59682) (Cons!59682 (h!66130 Regex!14436) (t!372837 List!59806)) )
))
(declare-datatypes ((Context!7640 0))(
  ( (Context!7641 (exprs!4320 List!59806)) )
))
(declare-fun ctx!100 () Context!7640)

(declare-fun inv!79272 (Context!7640) Bool)

(assert (=> start!544126 (and (inv!79272 ctx!100) e!3205207)))

(assert (=> start!544126 tp_is_empty!38021))

(declare-fun b!5138756 () Bool)

(assert (=> b!5138756 (= e!3205209 false)))

(declare-fun b!5138760 () Bool)

(declare-fun res!2188590 () Bool)

(assert (=> b!5138760 (=> (not res!2188590) (not e!3205209))))

(declare-fun e!3205208 () Bool)

(assert (=> b!5138760 (= res!2188590 e!3205208)))

(declare-fun res!2188591 () Bool)

(assert (=> b!5138760 (=> res!2188591 e!3205208)))

(declare-fun lostCause!1424 (Regex!14436) Bool)

(assert (=> b!5138760 (= res!2188591 (lostCause!1424 expr!117))))

(declare-fun b!5138761 () Bool)

(declare-fun tp!1433259 () Bool)

(declare-fun tp!1433257 () Bool)

(assert (=> b!5138761 (= e!3205206 (and tp!1433259 tp!1433257))))

(declare-fun b!5138762 () Bool)

(declare-fun lostCause!1425 (Context!7640) Bool)

(assert (=> b!5138762 (= e!3205208 (lostCause!1425 ctx!100))))

(declare-fun b!5138763 () Bool)

(declare-fun tp!1433256 () Bool)

(declare-fun tp!1433261 () Bool)

(assert (=> b!5138763 (= e!3205206 (and tp!1433256 tp!1433261))))

(assert (= (and start!544126 res!2188589) b!5138760))

(assert (= (and b!5138760 (not res!2188591)) b!5138762))

(assert (= (and b!5138760 res!2188590) b!5138756))

(assert (= (and start!544126 (is-ElementMatch!14436 expr!117)) b!5138759))

(assert (= (and start!544126 (is-Concat!23281 expr!117)) b!5138761))

(assert (= (and start!544126 (is-Star!14436 expr!117)) b!5138757))

(assert (= (and start!544126 (is-Union!14436 expr!117)) b!5138763))

(assert (= start!544126 b!5138758))

(declare-fun m!6203500 () Bool)

(assert (=> start!544126 m!6203500))

(declare-fun m!6203502 () Bool)

(assert (=> start!544126 m!6203502))

(declare-fun m!6203504 () Bool)

(assert (=> b!5138760 m!6203504))

(declare-fun m!6203506 () Bool)

(assert (=> b!5138762 m!6203506))

(push 1)

(assert (not start!544126))

(assert (not b!5138763))

(assert (not b!5138757))

(assert (not b!5138762))

(assert (not b!5138758))

(assert (not b!5138761))

(assert (not b!5138760))

(assert tp_is_empty!38021)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

