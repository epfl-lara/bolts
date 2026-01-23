; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110524 () Bool)

(assert start!110524)

(assert (=> start!110524 false))

(declare-fun e!798875 () Bool)

(assert (=> start!110524 e!798875))

(declare-fun b!1255339 () Bool)

(declare-fun tp!370214 () Bool)

(declare-fun tp!370210 () Bool)

(assert (=> b!1255339 (= e!798875 (and tp!370214 tp!370210))))

(declare-fun b!1255337 () Bool)

(declare-fun tp!370211 () Bool)

(declare-fun tp!370213 () Bool)

(assert (=> b!1255337 (= e!798875 (and tp!370211 tp!370213))))

(declare-fun b!1255336 () Bool)

(declare-fun tp_is_empty!6465 () Bool)

(assert (=> b!1255336 (= e!798875 tp_is_empty!6465)))

(declare-fun b!1255338 () Bool)

(declare-fun tp!370212 () Bool)

(assert (=> b!1255338 (= e!798875 tp!370212)))

(declare-datatypes ((C!7262 0))(
  ( (C!7263 (val!4161 Int)) )
))
(declare-datatypes ((Regex!3472 0))(
  ( (ElementMatch!3472 (c!208397 C!7262)) (Concat!5702 (regOne!7456 Regex!3472) (regTwo!7456 Regex!3472)) (EmptyExpr!3472) (Star!3472 (reg!3801 Regex!3472)) (EmptyLang!3472) (Union!3472 (regOne!7457 Regex!3472) (regTwo!7457 Regex!3472)) )
))
(declare-fun r!15719 () Regex!3472)

(assert (= (and start!110524 (is-ElementMatch!3472 r!15719)) b!1255336))

(assert (= (and start!110524 (is-Concat!5702 r!15719)) b!1255337))

(assert (= (and start!110524 (is-Star!3472 r!15719)) b!1255338))

(assert (= (and start!110524 (is-Union!3472 r!15719)) b!1255339))

(push 1)

(assert (not b!1255337))

(assert (not b!1255339))

(assert (not b!1255338))

(assert tp_is_empty!6465)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

