; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239264 () Bool)

(assert start!239264)

(declare-fun b!2450507 () Bool)

(declare-fun res!1039241 () Bool)

(declare-fun e!1555436 () Bool)

(assert (=> b!2450507 (=> (not res!1039241) (not e!1555436))))

(declare-datatypes ((C!14554 0))(
  ( (C!14555 (val!8519 Int)) )
))
(declare-datatypes ((Regex!7198 0))(
  ( (ElementMatch!7198 (c!391035 C!14554)) (Concat!11834 (regOne!14908 Regex!7198) (regTwo!14908 Regex!7198)) (EmptyExpr!7198) (Star!7198 (reg!7527 Regex!7198)) (EmptyLang!7198) (Union!7198 (regOne!14909 Regex!7198) (regTwo!14909 Regex!7198)) )
))
(declare-fun r!13927 () Regex!7198)

(declare-datatypes ((List!28632 0))(
  ( (Nil!28534) (Cons!28534 (h!33935 Regex!7198) (t!208609 List!28632)) )
))
(declare-fun l!9164 () List!28632)

(declare-fun generalisedConcat!299 (List!28632) Regex!7198)

(assert (=> b!2450507 (= res!1039241 (= r!13927 (generalisedConcat!299 l!9164)))))

(declare-fun b!2450508 () Bool)

(declare-fun e!1555434 () Bool)

(declare-fun tp_is_empty!11809 () Bool)

(assert (=> b!2450508 (= e!1555434 tp_is_empty!11809)))

(declare-fun b!2450509 () Bool)

(declare-fun e!1555431 () Bool)

(declare-fun lt!879689 () Bool)

(declare-datatypes ((List!28633 0))(
  ( (Nil!28535) (Cons!28535 (h!33936 C!14554) (t!208610 List!28633)) )
))
(declare-fun s!9460 () List!28633)

(declare-fun isEmpty!16574 (List!28633) Bool)

(assert (=> b!2450509 (= e!1555431 (not (= lt!879689 (isEmpty!16574 s!9460))))))

(declare-fun b!2450510 () Bool)

(declare-fun tp!779384 () Bool)

(declare-fun tp!779387 () Bool)

(assert (=> b!2450510 (= e!1555434 (and tp!779384 tp!779387))))

(declare-fun b!2450511 () Bool)

(declare-fun tp!779386 () Bool)

(declare-fun tp!779385 () Bool)

(assert (=> b!2450511 (= e!1555434 (and tp!779386 tp!779385))))

(declare-fun b!2450512 () Bool)

(declare-datatypes ((tuple2!28148 0))(
  ( (tuple2!28149 (_1!16615 List!28633) (_2!16615 List!28633)) )
))
(declare-datatypes ((Option!5685 0))(
  ( (None!5684) (Some!5684 (v!31092 tuple2!28148)) )
))
(declare-fun isDefined!4511 (Option!5685) Bool)

(declare-fun findConcatSeparation!793 (Regex!7198 Regex!7198 List!28633 List!28633 List!28633) Option!5685)

(assert (=> b!2450512 (= e!1555431 (not (= lt!879689 (isDefined!4511 (findConcatSeparation!793 (h!33935 l!9164) (generalisedConcat!299 (t!208609 l!9164)) Nil!28535 s!9460 s!9460)))))))

(declare-fun b!2450513 () Bool)

(declare-fun e!1555432 () Bool)

(declare-fun tp!779382 () Bool)

(assert (=> b!2450513 (= e!1555432 (and tp_is_empty!11809 tp!779382))))

(declare-fun res!1039242 () Bool)

(assert (=> start!239264 (=> (not res!1039242) (not e!1555436))))

(declare-fun lambda!92802 () Int)

(declare-fun forall!5832 (List!28632 Int) Bool)

(assert (=> start!239264 (= res!1039242 (forall!5832 l!9164 lambda!92802))))

(assert (=> start!239264 e!1555436))

(declare-fun e!1555435 () Bool)

(assert (=> start!239264 e!1555435))

(assert (=> start!239264 e!1555434))

(assert (=> start!239264 e!1555432))

(declare-fun b!2450514 () Bool)

(declare-fun e!1555433 () Bool)

(assert (=> b!2450514 (= e!1555436 (not e!1555433))))

(declare-fun res!1039243 () Bool)

(assert (=> b!2450514 (=> res!1039243 e!1555433)))

(assert (=> b!2450514 (= res!1039243 (or (is-Concat!11834 r!13927) (not (is-EmptyExpr!7198 r!13927))))))

(declare-fun matchRSpec!1045 (Regex!7198 List!28633) Bool)

(assert (=> b!2450514 (= lt!879689 (matchRSpec!1045 r!13927 s!9460))))

(declare-fun matchR!3313 (Regex!7198 List!28633) Bool)

(assert (=> b!2450514 (= lt!879689 (matchR!3313 r!13927 s!9460))))

(declare-datatypes ((Unit!41851 0))(
  ( (Unit!41852) )
))
(declare-fun lt!879691 () Unit!41851)

(declare-fun mainMatchTheorem!1045 (Regex!7198 List!28633) Unit!41851)

(assert (=> b!2450514 (= lt!879691 (mainMatchTheorem!1045 r!13927 s!9460))))

(declare-fun b!2450515 () Bool)

(declare-fun tp!779388 () Bool)

(declare-fun tp!779383 () Bool)

(assert (=> b!2450515 (= e!1555435 (and tp!779388 tp!779383))))

(declare-fun b!2450516 () Bool)

(assert (=> b!2450516 (= e!1555433 true)))

(declare-fun lt!879690 () Bool)

(assert (=> b!2450516 (= lt!879690 e!1555431)))

(declare-fun c!391034 () Bool)

(assert (=> b!2450516 (= c!391034 (is-Cons!28534 l!9164))))

(declare-fun b!2450517 () Bool)

(declare-fun tp!779389 () Bool)

(assert (=> b!2450517 (= e!1555434 tp!779389)))

(assert (= (and start!239264 res!1039242) b!2450507))

(assert (= (and b!2450507 res!1039241) b!2450514))

(assert (= (and b!2450514 (not res!1039243)) b!2450516))

(assert (= (and b!2450516 c!391034) b!2450512))

(assert (= (and b!2450516 (not c!391034)) b!2450509))

(assert (= (and start!239264 (is-Cons!28534 l!9164)) b!2450515))

(assert (= (and start!239264 (is-ElementMatch!7198 r!13927)) b!2450508))

(assert (= (and start!239264 (is-Concat!11834 r!13927)) b!2450511))

(assert (= (and start!239264 (is-Star!7198 r!13927)) b!2450517))

(assert (= (and start!239264 (is-Union!7198 r!13927)) b!2450510))

(assert (= (and start!239264 (is-Cons!28535 s!9460)) b!2450513))

(declare-fun m!2824481 () Bool)

(assert (=> start!239264 m!2824481))

(declare-fun m!2824483 () Bool)

(assert (=> b!2450507 m!2824483))

(declare-fun m!2824485 () Bool)

(assert (=> b!2450512 m!2824485))

(assert (=> b!2450512 m!2824485))

(declare-fun m!2824487 () Bool)

(assert (=> b!2450512 m!2824487))

(assert (=> b!2450512 m!2824487))

(declare-fun m!2824489 () Bool)

(assert (=> b!2450512 m!2824489))

(declare-fun m!2824491 () Bool)

(assert (=> b!2450514 m!2824491))

(declare-fun m!2824493 () Bool)

(assert (=> b!2450514 m!2824493))

(declare-fun m!2824495 () Bool)

(assert (=> b!2450514 m!2824495))

(declare-fun m!2824497 () Bool)

(assert (=> b!2450509 m!2824497))

(push 1)

(assert (not start!239264))

(assert (not b!2450514))

(assert tp_is_empty!11809)

(assert (not b!2450512))

(assert (not b!2450513))

(assert (not b!2450507))

(assert (not b!2450509))

(assert (not b!2450511))

(assert (not b!2450517))

(assert (not b!2450510))

(assert (not b!2450515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

