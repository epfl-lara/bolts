; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734354 () Bool)

(assert start!734354)

(declare-fun b!7625204 () Bool)

(declare-fun e!4533670 () Bool)

(declare-fun tp_is_empty!51047 () Bool)

(assert (=> b!7625204 (= e!4533670 tp_is_empty!51047)))

(declare-fun b!7625205 () Bool)

(declare-fun tp!2226280 () Bool)

(declare-fun tp!2226282 () Bool)

(assert (=> b!7625205 (= e!4533670 (and tp!2226280 tp!2226282))))

(declare-fun b!7625207 () Bool)

(declare-fun tp!2226279 () Bool)

(declare-fun tp!2226281 () Bool)

(assert (=> b!7625207 (= e!4533670 (and tp!2226279 tp!2226281))))

(declare-fun b!7625206 () Bool)

(declare-fun tp!2226278 () Bool)

(assert (=> b!7625206 (= e!4533670 tp!2226278)))

(assert (=> start!734354 false))

(assert (=> start!734354 e!4533670))

(declare-datatypes ((C!41018 0))(
  ( (C!41019 (val!30949 Int)) )
))
(declare-datatypes ((Regex!20346 0))(
  ( (ElementMatch!20346 (c!1405067 C!41018)) (Concat!29191 (regOne!41204 Regex!20346) (regTwo!41204 Regex!20346)) (EmptyExpr!20346) (Star!20346 (reg!20675 Regex!20346)) (EmptyLang!20346) (Union!20346 (regOne!41205 Regex!20346) (regTwo!41205 Regex!20346)) )
))
(declare-fun r!14126 () Regex!20346)

(assert (= (and start!734354 (is-ElementMatch!20346 r!14126)) b!7625204))

(assert (= (and start!734354 (is-Concat!29191 r!14126)) b!7625205))

(assert (= (and start!734354 (is-Star!20346 r!14126)) b!7625206))

(assert (= (and start!734354 (is-Union!20346 r!14126)) b!7625207))

(push 1)

(assert (not b!7625206))

(assert (not b!7625205))

(assert (not b!7625207))

(assert tp_is_empty!51047)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

