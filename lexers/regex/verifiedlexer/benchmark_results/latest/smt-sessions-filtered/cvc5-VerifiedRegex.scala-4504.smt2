; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239268 () Bool)

(assert start!239268)

(declare-fun b!2450579 () Bool)

(declare-fun e!1555471 () Bool)

(declare-fun lt!879706 () Bool)

(declare-datatypes ((C!14558 0))(
  ( (C!14559 (val!8521 Int)) )
))
(declare-datatypes ((List!28636 0))(
  ( (Nil!28538) (Cons!28538 (h!33939 C!14558) (t!208613 List!28636)) )
))
(declare-fun s!9460 () List!28636)

(declare-fun isEmpty!16576 (List!28636) Bool)

(assert (=> b!2450579 (= e!1555471 (not (= lt!879706 (isEmpty!16576 s!9460))))))

(declare-fun b!2450580 () Bool)

(declare-fun e!1555474 () Bool)

(declare-fun tp!779432 () Bool)

(declare-fun tp!779433 () Bool)

(assert (=> b!2450580 (= e!1555474 (and tp!779432 tp!779433))))

(declare-fun b!2450581 () Bool)

(declare-fun tp!779431 () Bool)

(assert (=> b!2450581 (= e!1555474 tp!779431)))

(declare-fun b!2450582 () Bool)

(declare-fun res!1039261 () Bool)

(declare-fun e!1555469 () Bool)

(assert (=> b!2450582 (=> res!1039261 e!1555469)))

(assert (=> b!2450582 (= res!1039261 e!1555471)))

(declare-fun c!391045 () Bool)

(declare-datatypes ((Regex!7200 0))(
  ( (ElementMatch!7200 (c!391046 C!14558)) (Concat!11836 (regOne!14912 Regex!7200) (regTwo!14912 Regex!7200)) (EmptyExpr!7200) (Star!7200 (reg!7529 Regex!7200)) (EmptyLang!7200) (Union!7200 (regOne!14913 Regex!7200) (regTwo!14913 Regex!7200)) )
))
(declare-datatypes ((List!28637 0))(
  ( (Nil!28539) (Cons!28539 (h!33940 Regex!7200) (t!208614 List!28637)) )
))
(declare-fun l!9164 () List!28637)

(assert (=> b!2450582 (= c!391045 (is-Cons!28539 l!9164))))

(declare-fun b!2450583 () Bool)

(declare-fun e!1555473 () Bool)

(declare-fun tp!779437 () Bool)

(declare-fun tp!779435 () Bool)

(assert (=> b!2450583 (= e!1555473 (and tp!779437 tp!779435))))

(declare-fun b!2450584 () Bool)

(declare-fun e!1555472 () Bool)

(assert (=> b!2450584 (= e!1555469 e!1555472)))

(declare-fun c!391044 () Bool)

(assert (=> b!2450584 (= c!391044 (is-Cons!28539 l!9164))))

(declare-fun b!2450585 () Bool)

(declare-fun e!1555470 () Bool)

(assert (=> b!2450585 (= e!1555470 (not e!1555469))))

(declare-fun res!1039263 () Bool)

(assert (=> b!2450585 (=> res!1039263 e!1555469)))

(declare-fun r!13927 () Regex!7200)

(assert (=> b!2450585 (= res!1039263 (or (is-Concat!11836 r!13927) (not (is-EmptyExpr!7200 r!13927))))))

(declare-fun matchRSpec!1047 (Regex!7200 List!28636) Bool)

(assert (=> b!2450585 (= lt!879706 (matchRSpec!1047 r!13927 s!9460))))

(declare-fun matchR!3315 (Regex!7200 List!28636) Bool)

(assert (=> b!2450585 (= lt!879706 (matchR!3315 r!13927 s!9460))))

(declare-datatypes ((Unit!41855 0))(
  ( (Unit!41856) )
))
(declare-fun lt!879705 () Unit!41855)

(declare-fun mainMatchTheorem!1047 (Regex!7200 List!28636) Unit!41855)

(assert (=> b!2450585 (= lt!879705 (mainMatchTheorem!1047 r!13927 s!9460))))

(declare-fun b!2450586 () Bool)

(declare-fun res!1039262 () Bool)

(assert (=> b!2450586 (=> (not res!1039262) (not e!1555470))))

(declare-fun generalisedConcat!301 (List!28637) Regex!7200)

(assert (=> b!2450586 (= res!1039262 (= r!13927 (generalisedConcat!301 l!9164)))))

(declare-fun b!2450587 () Bool)

(declare-fun tp!779436 () Bool)

(declare-fun tp!779434 () Bool)

(assert (=> b!2450587 (= e!1555474 (and tp!779436 tp!779434))))

(declare-fun b!2450588 () Bool)

(declare-datatypes ((tuple2!28152 0))(
  ( (tuple2!28153 (_1!16617 List!28636) (_2!16617 List!28636)) )
))
(declare-datatypes ((Option!5687 0))(
  ( (None!5686) (Some!5686 (v!31094 tuple2!28152)) )
))
(declare-fun isDefined!4513 (Option!5687) Bool)

(declare-fun findConcatSeparation!795 (Regex!7200 Regex!7200 List!28636 List!28636 List!28636) Option!5687)

(assert (=> b!2450588 (= e!1555471 (not (= lt!879706 (isDefined!4513 (findConcatSeparation!795 (h!33940 l!9164) (generalisedConcat!301 (t!208614 l!9164)) Nil!28538 s!9460 s!9460)))))))

(declare-fun b!2450589 () Bool)

(declare-fun e!1555475 () Bool)

(declare-fun tp_is_empty!11813 () Bool)

(declare-fun tp!779430 () Bool)

(assert (=> b!2450589 (= e!1555475 (and tp_is_empty!11813 tp!779430))))

(declare-fun res!1039264 () Bool)

(assert (=> start!239268 (=> (not res!1039264) (not e!1555470))))

(declare-fun lambda!92808 () Int)

(declare-fun forall!5834 (List!28637 Int) Bool)

(assert (=> start!239268 (= res!1039264 (forall!5834 l!9164 lambda!92808))))

(assert (=> start!239268 e!1555470))

(assert (=> start!239268 e!1555473))

(assert (=> start!239268 e!1555474))

(assert (=> start!239268 e!1555475))

(declare-fun b!2450590 () Bool)

(assert (=> b!2450590 (= e!1555474 tp_is_empty!11813)))

(declare-fun b!2450591 () Bool)

(assert (=> b!2450591 (= e!1555472 (= lt!879706 (isEmpty!16576 s!9460)))))

(declare-fun b!2450592 () Bool)

(assert (=> b!2450592 (= e!1555472 (= lt!879706 (isDefined!4513 (findConcatSeparation!795 (h!33940 l!9164) (generalisedConcat!301 (t!208614 l!9164)) Nil!28538 s!9460 s!9460))))))

(assert (= (and start!239268 res!1039264) b!2450586))

(assert (= (and b!2450586 res!1039262) b!2450585))

(assert (= (and b!2450585 (not res!1039263)) b!2450582))

(assert (= (and b!2450582 c!391045) b!2450588))

(assert (= (and b!2450582 (not c!391045)) b!2450579))

(assert (= (and b!2450582 (not res!1039261)) b!2450584))

(assert (= (and b!2450584 c!391044) b!2450592))

(assert (= (and b!2450584 (not c!391044)) b!2450591))

(assert (= (and start!239268 (is-Cons!28539 l!9164)) b!2450583))

(assert (= (and start!239268 (is-ElementMatch!7200 r!13927)) b!2450590))

(assert (= (and start!239268 (is-Concat!11836 r!13927)) b!2450580))

(assert (= (and start!239268 (is-Star!7200 r!13927)) b!2450581))

(assert (= (and start!239268 (is-Union!7200 r!13927)) b!2450587))

(assert (= (and start!239268 (is-Cons!28538 s!9460)) b!2450589))

(declare-fun m!2824517 () Bool)

(assert (=> start!239268 m!2824517))

(declare-fun m!2824519 () Bool)

(assert (=> b!2450585 m!2824519))

(declare-fun m!2824521 () Bool)

(assert (=> b!2450585 m!2824521))

(declare-fun m!2824523 () Bool)

(assert (=> b!2450585 m!2824523))

(declare-fun m!2824525 () Bool)

(assert (=> b!2450586 m!2824525))

(declare-fun m!2824527 () Bool)

(assert (=> b!2450579 m!2824527))

(declare-fun m!2824529 () Bool)

(assert (=> b!2450588 m!2824529))

(assert (=> b!2450588 m!2824529))

(declare-fun m!2824531 () Bool)

(assert (=> b!2450588 m!2824531))

(assert (=> b!2450588 m!2824531))

(declare-fun m!2824533 () Bool)

(assert (=> b!2450588 m!2824533))

(assert (=> b!2450591 m!2824527))

(assert (=> b!2450592 m!2824529))

(assert (=> b!2450592 m!2824529))

(assert (=> b!2450592 m!2824531))

(assert (=> b!2450592 m!2824531))

(assert (=> b!2450592 m!2824533))

(push 1)

(assert (not b!2450592))

(assert (not b!2450581))

(assert tp_is_empty!11813)

(assert (not b!2450579))

(assert (not b!2450585))

(assert (not b!2450589))

(assert (not b!2450583))

(assert (not b!2450586))

(assert (not b!2450580))

(assert (not start!239268))

(assert (not b!2450588))

(assert (not b!2450587))

(assert (not b!2450591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

