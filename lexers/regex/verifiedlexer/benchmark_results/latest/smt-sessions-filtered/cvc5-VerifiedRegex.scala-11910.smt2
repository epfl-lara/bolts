; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667692 () Bool)

(assert start!667692)

(declare-fun b!6958290 () Bool)

(declare-fun e!4183939 () Bool)

(declare-fun tp!1918173 () Bool)

(assert (=> b!6958290 (= e!4183939 tp!1918173)))

(declare-fun b!6958291 () Bool)

(declare-fun tp!1918168 () Bool)

(declare-fun tp!1918170 () Bool)

(assert (=> b!6958291 (= e!4183939 (and tp!1918168 tp!1918170))))

(declare-fun b!6958292 () Bool)

(declare-fun tp_is_empty!43357 () Bool)

(assert (=> b!6958292 (= e!4183939 tp_is_empty!43357)))

(declare-fun b!6958293 () Bool)

(declare-fun res!2839351 () Bool)

(declare-fun e!4183938 () Bool)

(assert (=> b!6958293 (=> (not res!2839351) (not e!4183938))))

(declare-datatypes ((C!34402 0))(
  ( (C!34403 (val!26903 Int)) )
))
(declare-datatypes ((Regex!17066 0))(
  ( (ElementMatch!17066 (c!1290298 C!34402)) (Concat!25911 (regOne!34644 Regex!17066) (regTwo!34644 Regex!17066)) (EmptyExpr!17066) (Star!17066 (reg!17395 Regex!17066)) (EmptyLang!17066) (Union!17066 (regOne!34645 Regex!17066) (regTwo!34645 Regex!17066)) )
))
(declare-fun r!13765 () Regex!17066)

(declare-datatypes ((List!66819 0))(
  ( (Nil!66695) (Cons!66695 (h!73143 Regex!17066) (t!380562 List!66819)) )
))
(declare-fun l!9142 () List!66819)

(declare-fun generalisedUnion!2541 (List!66819) Regex!17066)

(assert (=> b!6958293 (= res!2839351 (= r!13765 (generalisedUnion!2541 l!9142)))))

(declare-fun b!6958294 () Bool)

(assert (=> b!6958294 (= e!4183938 false)))

(declare-fun b!6958295 () Bool)

(declare-fun e!4183937 () Bool)

(declare-fun tp!1918171 () Bool)

(declare-fun tp!1918174 () Bool)

(assert (=> b!6958295 (= e!4183937 (and tp!1918171 tp!1918174))))

(declare-fun b!6958296 () Bool)

(declare-fun tp!1918169 () Bool)

(declare-fun tp!1918172 () Bool)

(assert (=> b!6958296 (= e!4183939 (and tp!1918169 tp!1918172))))

(declare-fun res!2839352 () Bool)

(assert (=> start!667692 (=> (not res!2839352) (not e!4183938))))

(declare-fun lambda!396985 () Int)

(declare-fun forall!15937 (List!66819 Int) Bool)

(assert (=> start!667692 (= res!2839352 (forall!15937 l!9142 lambda!396985))))

(assert (=> start!667692 e!4183938))

(assert (=> start!667692 e!4183937))

(assert (=> start!667692 e!4183939))

(assert (= (and start!667692 res!2839352) b!6958293))

(assert (= (and b!6958293 res!2839351) b!6958294))

(assert (= (and start!667692 (is-Cons!66695 l!9142)) b!6958295))

(assert (= (and start!667692 (is-ElementMatch!17066 r!13765)) b!6958292))

(assert (= (and start!667692 (is-Concat!25911 r!13765)) b!6958296))

(assert (= (and start!667692 (is-Star!17066 r!13765)) b!6958290))

(assert (= (and start!667692 (is-Union!17066 r!13765)) b!6958291))

(declare-fun m!7655228 () Bool)

(assert (=> b!6958293 m!7655228))

(declare-fun m!7655230 () Bool)

(assert (=> start!667692 m!7655230))

(push 1)

(assert (not b!6958296))

(assert (not b!6958293))

(assert (not b!6958295))

(assert (not start!667692))

(assert (not b!6958291))

(assert (not b!6958290))

(assert tp_is_empty!43357)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

