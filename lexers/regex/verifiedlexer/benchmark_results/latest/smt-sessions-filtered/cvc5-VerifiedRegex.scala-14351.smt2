; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749396 () Bool)

(assert start!749396)

(declare-fun b!7939840 () Bool)

(declare-fun e!4684918 () Bool)

(declare-fun e!4684919 () Bool)

(assert (=> b!7939840 (= e!4684918 (not e!4684919))))

(declare-fun res!3149824 () Bool)

(assert (=> b!7939840 (=> res!3149824 e!4684919)))

(declare-datatypes ((C!43110 0))(
  ( (C!43111 (val!32099 Int)) )
))
(declare-datatypes ((List!74611 0))(
  ( (Nil!74487) (Cons!74487 (h!80935 C!43110) (t!390354 List!74611)) )
))
(declare-fun input!6707 () List!74611)

(declare-fun ++!18288 (List!74611 List!74611) List!74611)

(assert (=> b!7939840 (= res!3149824 (not (= (++!18288 Nil!74487 input!6707) input!6707)))))

(declare-fun lt!2695823 () Int)

(assert (=> b!7939840 (= 0 lt!2695823)))

(declare-fun size!43321 (List!74611) Int)

(assert (=> b!7939840 (= lt!2695823 (size!43321 Nil!74487))))

(declare-datatypes ((Unit!169591 0))(
  ( (Unit!169592) )
))
(declare-fun lt!2695821 () Unit!169591)

(declare-fun lemmaSizeTrEqualsSize!477 (List!74611 Int) Unit!169591)

(assert (=> b!7939840 (= lt!2695821 (lemmaSizeTrEqualsSize!477 Nil!74487 0))))

(declare-fun sizeTr!478 (List!74611 Int) Int)

(assert (=> b!7939840 (= (sizeTr!478 input!6707 0) (size!43321 input!6707))))

(declare-fun lt!2695822 () Unit!169591)

(assert (=> b!7939840 (= lt!2695822 (lemmaSizeTrEqualsSize!477 input!6707 0))))

(declare-fun b!7939841 () Bool)

(declare-fun e!4684917 () Bool)

(declare-fun tp!2360666 () Bool)

(declare-fun tp!2360665 () Bool)

(assert (=> b!7939841 (= e!4684917 (and tp!2360666 tp!2360665))))

(declare-fun b!7939842 () Bool)

(assert (=> b!7939842 (= e!4684919 (= 0 lt!2695823))))

(declare-fun b!7939843 () Bool)

(declare-fun tp!2360667 () Bool)

(assert (=> b!7939843 (= e!4684917 tp!2360667)))

(declare-fun b!7939844 () Bool)

(declare-fun e!4684920 () Bool)

(declare-fun tp_is_empty!53307 () Bool)

(declare-fun tp!2360668 () Bool)

(assert (=> b!7939844 (= e!4684920 (and tp_is_empty!53307 tp!2360668))))

(declare-fun b!7939845 () Bool)

(assert (=> b!7939845 (= e!4684917 tp_is_empty!53307)))

(declare-fun res!3149823 () Bool)

(assert (=> start!749396 (=> (not res!3149823) (not e!4684918))))

(declare-datatypes ((Regex!21386 0))(
  ( (ElementMatch!21386 (c!1458725 C!43110)) (Concat!30385 (regOne!43284 Regex!21386) (regTwo!43284 Regex!21386)) (EmptyExpr!21386) (Star!21386 (reg!21715 Regex!21386)) (EmptyLang!21386) (Union!21386 (regOne!43285 Regex!21386) (regTwo!43285 Regex!21386)) )
))
(declare-fun r!15416 () Regex!21386)

(declare-fun validRegex!11690 (Regex!21386) Bool)

(assert (=> start!749396 (= res!3149823 (validRegex!11690 r!15416))))

(assert (=> start!749396 e!4684918))

(assert (=> start!749396 e!4684917))

(assert (=> start!749396 e!4684920))

(declare-fun b!7939839 () Bool)

(declare-fun tp!2360664 () Bool)

(declare-fun tp!2360663 () Bool)

(assert (=> b!7939839 (= e!4684917 (and tp!2360664 tp!2360663))))

(assert (= (and start!749396 res!3149823) b!7939840))

(assert (= (and b!7939840 (not res!3149824)) b!7939842))

(assert (= (and start!749396 (is-ElementMatch!21386 r!15416)) b!7939845))

(assert (= (and start!749396 (is-Concat!30385 r!15416)) b!7939839))

(assert (= (and start!749396 (is-Star!21386 r!15416)) b!7939843))

(assert (= (and start!749396 (is-Union!21386 r!15416)) b!7939841))

(assert (= (and start!749396 (is-Cons!74487 input!6707)) b!7939844))

(declare-fun m!8329260 () Bool)

(assert (=> b!7939840 m!8329260))

(declare-fun m!8329262 () Bool)

(assert (=> b!7939840 m!8329262))

(declare-fun m!8329264 () Bool)

(assert (=> b!7939840 m!8329264))

(declare-fun m!8329266 () Bool)

(assert (=> b!7939840 m!8329266))

(declare-fun m!8329268 () Bool)

(assert (=> b!7939840 m!8329268))

(declare-fun m!8329270 () Bool)

(assert (=> b!7939840 m!8329270))

(declare-fun m!8329272 () Bool)

(assert (=> start!749396 m!8329272))

(push 1)

(assert (not b!7939844))

(assert tp_is_empty!53307)

(assert (not b!7939841))

(assert (not b!7939840))

(assert (not start!749396))

(assert (not b!7939839))

(assert (not b!7939843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

