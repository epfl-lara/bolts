; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515734 () Bool)

(assert start!515734)

(declare-fun b!4912810 () Bool)

(declare-fun e!3070715 () Bool)

(declare-fun tp!1381380 () Bool)

(assert (=> b!4912810 (= e!3070715 tp!1381380)))

(declare-fun res!2098615 () Bool)

(declare-fun e!3070714 () Bool)

(assert (=> start!515734 (=> (not res!2098615) (not e!3070714))))

(declare-datatypes ((C!26882 0))(
  ( (C!26883 (val!22775 Int)) )
))
(declare-datatypes ((Regex!13342 0))(
  ( (ElementMatch!13342 (c!835059 C!26882)) (Concat!21915 (regOne!27196 Regex!13342) (regTwo!27196 Regex!13342)) (EmptyExpr!13342) (Star!13342 (reg!13671 Regex!13342)) (EmptyLang!13342) (Union!13342 (regOne!27197 Regex!13342) (regTwo!27197 Regex!13342)) )
))
(declare-fun r!15208 () Regex!13342)

(declare-fun validRegex!5931 (Regex!13342) Bool)

(assert (=> start!515734 (= res!2098615 (validRegex!5931 r!15208))))

(assert (=> start!515734 e!3070714))

(assert (=> start!515734 e!3070715))

(declare-datatypes ((List!56734 0))(
  ( (Nil!56610) (Cons!56610 (h!63058 C!26882) (t!367140 List!56734)) )
))
(declare-datatypes ((IArray!29731 0))(
  ( (IArray!29732 (innerList!14923 List!56734)) )
))
(declare-datatypes ((Conc!14835 0))(
  ( (Node!14835 (left!41267 Conc!14835) (right!41597 Conc!14835) (csize!29900 Int) (cheight!15046 Int)) (Leaf!24686 (xs!18151 IArray!29731) (csize!29901 Int)) (Empty!14835) )
))
(declare-datatypes ((BalanceConc!29100 0))(
  ( (BalanceConc!29101 (c!835060 Conc!14835)) )
))
(declare-fun input!6475 () BalanceConc!29100)

(declare-fun e!3070713 () Bool)

(declare-fun inv!73234 (BalanceConc!29100) Bool)

(assert (=> start!515734 (and (inv!73234 input!6475) e!3070713)))

(declare-fun b!4912811 () Bool)

(declare-fun tp!1381383 () Bool)

(declare-fun inv!73235 (Conc!14835) Bool)

(assert (=> b!4912811 (= e!3070713 (and (inv!73235 (c!835060 input!6475)) tp!1381383))))

(declare-fun b!4912812 () Bool)

(declare-fun tp!1381378 () Bool)

(declare-fun tp!1381382 () Bool)

(assert (=> b!4912812 (= e!3070715 (and tp!1381378 tp!1381382))))

(declare-fun b!4912813 () Bool)

(declare-fun tp_is_empty!35885 () Bool)

(assert (=> b!4912813 (= e!3070715 tp_is_empty!35885)))

(declare-fun b!4912814 () Bool)

(declare-fun tp!1381381 () Bool)

(declare-fun tp!1381379 () Bool)

(assert (=> b!4912814 (= e!3070715 (and tp!1381381 tp!1381379))))

(declare-fun b!4912815 () Bool)

(assert (=> b!4912815 (= e!3070714 false)))

(declare-fun lt!2017106 () List!56734)

(declare-fun list!17879 (BalanceConc!29100) List!56734)

(assert (=> b!4912815 (= lt!2017106 (list!17879 input!6475))))

(declare-datatypes ((List!56735 0))(
  ( (Nil!56611) (Cons!56611 (h!63059 Regex!13342) (t!367141 List!56735)) )
))
(declare-datatypes ((Context!5968 0))(
  ( (Context!5969 (exprs!3484 List!56735)) )
))
(declare-fun lt!2017107 () (Set Context!5968))

(declare-fun focus!340 (Regex!13342) (Set Context!5968))

(assert (=> b!4912815 (= lt!2017107 (focus!340 r!15208))))

(assert (= (and start!515734 res!2098615) b!4912815))

(assert (= (and start!515734 (is-ElementMatch!13342 r!15208)) b!4912813))

(assert (= (and start!515734 (is-Concat!21915 r!15208)) b!4912812))

(assert (= (and start!515734 (is-Star!13342 r!15208)) b!4912810))

(assert (= (and start!515734 (is-Union!13342 r!15208)) b!4912814))

(assert (= start!515734 b!4912811))

(declare-fun m!5922710 () Bool)

(assert (=> start!515734 m!5922710))

(declare-fun m!5922712 () Bool)

(assert (=> start!515734 m!5922712))

(declare-fun m!5922714 () Bool)

(assert (=> b!4912811 m!5922714))

(declare-fun m!5922716 () Bool)

(assert (=> b!4912815 m!5922716))

(declare-fun m!5922718 () Bool)

(assert (=> b!4912815 m!5922718))

(push 1)

(assert (not b!4912812))

(assert tp_is_empty!35885)

(assert (not b!4912814))

(assert (not start!515734))

(assert (not b!4912810))

(assert (not b!4912815))

(assert (not b!4912811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

