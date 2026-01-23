; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73600 () Bool)

(assert start!73600)

(declare-fun b!822368 () Bool)

(declare-fun e!543320 () Bool)

(declare-fun tp!256929 () Bool)

(declare-fun tp!256927 () Bool)

(assert (=> b!822368 (= e!543320 (and tp!256929 tp!256927))))

(declare-fun res!379452 () Bool)

(declare-fun e!543321 () Bool)

(assert (=> start!73600 (=> (not res!379452) (not e!543321))))

(declare-datatypes ((C!4638 0))(
  ( (C!4639 (val!2567 Int)) )
))
(declare-datatypes ((Regex!2034 0))(
  ( (ElementMatch!2034 (c!133311 C!4638)) (Concat!3765 (regOne!4580 Regex!2034) (regTwo!4580 Regex!2034)) (EmptyExpr!2034) (Star!2034 (reg!2363 Regex!2034)) (EmptyLang!2034) (Union!2034 (regOne!4581 Regex!2034) (regTwo!4581 Regex!2034)) )
))
(declare-fun r!27177 () Regex!2034)

(declare-fun validRegex!587 (Regex!2034) Bool)

(assert (=> start!73600 (= res!379452 (validRegex!587 r!27177))))

(assert (=> start!73600 e!543321))

(assert (=> start!73600 e!543320))

(declare-fun tp_is_empty!3791 () Bool)

(assert (=> start!73600 tp_is_empty!3791))

(declare-fun b!822369 () Bool)

(declare-fun res!379451 () Bool)

(assert (=> b!822369 (=> (not res!379451) (not e!543321))))

(assert (=> b!822369 (= res!379451 (validRegex!587 (regTwo!4581 r!27177)))))

(declare-fun b!822370 () Bool)

(declare-fun res!379450 () Bool)

(assert (=> b!822370 (=> (not res!379450) (not e!543321))))

(declare-fun c!13916 () C!4638)

(declare-datatypes ((List!8860 0))(
  ( (Nil!8844) (Cons!8844 (h!14245 C!4638) (t!93152 List!8860)) )
))
(declare-fun contains!1625 (List!8860 C!4638) Bool)

(declare-fun firstChars!5 (Regex!2034) List!8860)

(assert (=> b!822370 (= res!379450 (contains!1625 (firstChars!5 r!27177) c!13916))))

(declare-fun b!822371 () Bool)

(declare-fun res!379448 () Bool)

(assert (=> b!822371 (=> (not res!379448) (not e!543321))))

(assert (=> b!822371 (= res!379448 (not (contains!1625 (firstChars!5 (regOne!4581 r!27177)) c!13916)))))

(declare-fun b!822372 () Bool)

(declare-fun tp!256928 () Bool)

(assert (=> b!822372 (= e!543320 tp!256928)))

(declare-fun b!822373 () Bool)

(assert (=> b!822373 (= e!543321 false)))

(declare-fun lt!317360 () Bool)

(assert (=> b!822373 (= lt!317360 (contains!1625 (firstChars!5 (regTwo!4581 r!27177)) c!13916))))

(declare-fun b!822374 () Bool)

(assert (=> b!822374 (= e!543320 tp_is_empty!3791)))

(declare-fun b!822375 () Bool)

(declare-fun tp!256926 () Bool)

(declare-fun tp!256925 () Bool)

(assert (=> b!822375 (= e!543320 (and tp!256926 tp!256925))))

(declare-fun b!822376 () Bool)

(declare-fun res!379449 () Bool)

(assert (=> b!822376 (=> (not res!379449) (not e!543321))))

(assert (=> b!822376 (= res!379449 (and (not (is-EmptyExpr!2034 r!27177)) (not (is-EmptyLang!2034 r!27177)) (not (is-ElementMatch!2034 r!27177)) (not (is-Star!2034 r!27177)) (is-Union!2034 r!27177)))))

(assert (= (and start!73600 res!379452) b!822370))

(assert (= (and b!822370 res!379450) b!822376))

(assert (= (and b!822376 res!379449) b!822371))

(assert (= (and b!822371 res!379448) b!822369))

(assert (= (and b!822369 res!379451) b!822373))

(assert (= (and start!73600 (is-ElementMatch!2034 r!27177)) b!822374))

(assert (= (and start!73600 (is-Concat!3765 r!27177)) b!822375))

(assert (= (and start!73600 (is-Star!2034 r!27177)) b!822372))

(assert (= (and start!73600 (is-Union!2034 r!27177)) b!822368))

(declare-fun m!1063573 () Bool)

(assert (=> b!822371 m!1063573))

(assert (=> b!822371 m!1063573))

(declare-fun m!1063575 () Bool)

(assert (=> b!822371 m!1063575))

(declare-fun m!1063577 () Bool)

(assert (=> b!822370 m!1063577))

(assert (=> b!822370 m!1063577))

(declare-fun m!1063579 () Bool)

(assert (=> b!822370 m!1063579))

(declare-fun m!1063581 () Bool)

(assert (=> b!822369 m!1063581))

(declare-fun m!1063583 () Bool)

(assert (=> start!73600 m!1063583))

(declare-fun m!1063585 () Bool)

(assert (=> b!822373 m!1063585))

(assert (=> b!822373 m!1063585))

(declare-fun m!1063587 () Bool)

(assert (=> b!822373 m!1063587))

(push 1)

(assert (not b!822368))

(assert (not b!822370))

(assert (not start!73600))

(assert (not b!822372))

(assert tp_is_empty!3791)

(assert (not b!822375))

(assert (not b!822373))

(assert (not b!822371))

(assert (not b!822369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

