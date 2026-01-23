; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83456 () Bool)

(assert start!83456)

(declare-fun b!933428 () Bool)

(assert (=> b!933428 true))

(assert (=> b!933428 true))

(assert (=> b!933428 true))

(declare-fun b!933422 () Bool)

(declare-fun e!606453 () Bool)

(declare-fun tp_is_empty!4739 () Bool)

(declare-fun tp!289694 () Bool)

(assert (=> b!933422 (= e!606453 (and tp_is_empty!4739 tp!289694))))

(declare-fun b!933423 () Bool)

(declare-fun e!606454 () Bool)

(declare-fun tp!289695 () Bool)

(declare-fun tp!289696 () Bool)

(assert (=> b!933423 (= e!606454 (and tp!289695 tp!289696))))

(declare-fun b!933424 () Bool)

(declare-fun tp!289693 () Bool)

(assert (=> b!933424 (= e!606454 tp!289693)))

(declare-fun b!933425 () Bool)

(assert (=> b!933425 (= e!606454 tp_is_empty!4739)))

(declare-fun res!423852 () Bool)

(declare-fun e!606455 () Bool)

(assert (=> start!83456 (=> (not res!423852) (not e!606455))))

(declare-datatypes ((C!5666 0))(
  ( (C!5667 (val!3081 Int)) )
))
(declare-datatypes ((Regex!2548 0))(
  ( (ElementMatch!2548 (c!151797 C!5666)) (Concat!4381 (regOne!5608 Regex!2548) (regTwo!5608 Regex!2548)) (EmptyExpr!2548) (Star!2548 (reg!2877 Regex!2548)) (EmptyLang!2548) (Union!2548 (regOne!5609 Regex!2548) (regTwo!5609 Regex!2548)) )
))
(declare-fun r!15766 () Regex!2548)

(declare-fun validRegex!1017 (Regex!2548) Bool)

(assert (=> start!83456 (= res!423852 (validRegex!1017 r!15766))))

(assert (=> start!83456 e!606455))

(assert (=> start!83456 e!606454))

(assert (=> start!83456 e!606453))

(declare-fun b!933426 () Bool)

(declare-fun tp!289697 () Bool)

(declare-fun tp!289698 () Bool)

(assert (=> b!933426 (= e!606454 (and tp!289697 tp!289698))))

(declare-fun b!933427 () Bool)

(declare-fun e!606452 () Bool)

(assert (=> b!933427 (= e!606455 (not e!606452))))

(declare-fun res!423851 () Bool)

(assert (=> b!933427 (=> res!423851 e!606452)))

(declare-fun lt!340829 () Bool)

(assert (=> b!933427 (= res!423851 (or lt!340829 (and (is-Concat!4381 r!15766) (is-EmptyExpr!2548 (regOne!5608 r!15766))) (and (is-Concat!4381 r!15766) (is-EmptyExpr!2548 (regTwo!5608 r!15766))) (is-Concat!4381 r!15766) (is-Union!2548 r!15766) (not (is-Star!2548 r!15766))))))

(declare-datatypes ((List!9778 0))(
  ( (Nil!9762) (Cons!9762 (h!15163 C!5666) (t!100824 List!9778)) )
))
(declare-fun s!10566 () List!9778)

(declare-fun matchRSpec!349 (Regex!2548 List!9778) Bool)

(assert (=> b!933427 (= lt!340829 (matchRSpec!349 r!15766 s!10566))))

(declare-fun matchR!1086 (Regex!2548 List!9778) Bool)

(assert (=> b!933427 (= lt!340829 (matchR!1086 r!15766 s!10566))))

(declare-datatypes ((Unit!14715 0))(
  ( (Unit!14716) )
))
(declare-fun lt!340827 () Unit!14715)

(declare-fun mainMatchTheorem!349 (Regex!2548 List!9778) Unit!14715)

(assert (=> b!933427 (= lt!340827 (mainMatchTheorem!349 r!15766 s!10566))))

(assert (=> b!933428 (= e!606452 true)))

(declare-fun lt!340828 () Regex!2548)

(declare-fun lambda!30851 () Int)

(declare-datatypes ((tuple2!10994 0))(
  ( (tuple2!10995 (_1!6323 List!9778) (_2!6323 List!9778)) )
))
(declare-datatypes ((Option!2139 0))(
  ( (None!2138) (Some!2138 (v!19555 tuple2!10994)) )
))
(declare-fun isDefined!1781 (Option!2139) Bool)

(declare-fun findConcatSeparation!245 (Regex!2548 Regex!2548 List!9778 List!9778 List!9778) Option!2139)

(declare-fun Exists!299 (Int) Bool)

(assert (=> b!933428 (= (isDefined!1781 (findConcatSeparation!245 (reg!2877 r!15766) lt!340828 Nil!9762 s!10566 s!10566)) (Exists!299 lambda!30851))))

(declare-fun lt!340826 () Unit!14715)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!245 (Regex!2548 Regex!2548 List!9778) Unit!14715)

(assert (=> b!933428 (= lt!340826 (lemmaFindConcatSeparationEquivalentToExists!245 (reg!2877 r!15766) lt!340828 s!10566))))

(assert (=> b!933428 (= lt!340828 (Star!2548 (reg!2877 r!15766)))))

(assert (= (and start!83456 res!423852) b!933427))

(assert (= (and b!933427 (not res!423851)) b!933428))

(assert (= (and start!83456 (is-ElementMatch!2548 r!15766)) b!933425))

(assert (= (and start!83456 (is-Concat!4381 r!15766)) b!933426))

(assert (= (and start!83456 (is-Star!2548 r!15766)) b!933424))

(assert (= (and start!83456 (is-Union!2548 r!15766)) b!933423))

(assert (= (and start!83456 (is-Cons!9762 s!10566)) b!933422))

(declare-fun m!1154357 () Bool)

(assert (=> start!83456 m!1154357))

(declare-fun m!1154359 () Bool)

(assert (=> b!933427 m!1154359))

(declare-fun m!1154361 () Bool)

(assert (=> b!933427 m!1154361))

(declare-fun m!1154363 () Bool)

(assert (=> b!933427 m!1154363))

(declare-fun m!1154365 () Bool)

(assert (=> b!933428 m!1154365))

(assert (=> b!933428 m!1154365))

(declare-fun m!1154367 () Bool)

(assert (=> b!933428 m!1154367))

(declare-fun m!1154369 () Bool)

(assert (=> b!933428 m!1154369))

(declare-fun m!1154371 () Bool)

(assert (=> b!933428 m!1154371))

(push 1)

(assert (not b!933423))

(assert (not b!933426))

(assert (not b!933427))

(assert (not start!83456))

(assert (not b!933422))

(assert (not b!933424))

(assert tp_is_empty!4739)

(assert (not b!933428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

