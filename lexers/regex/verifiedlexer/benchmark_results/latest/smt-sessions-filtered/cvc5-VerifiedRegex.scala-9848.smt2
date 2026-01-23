; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515726 () Bool)

(assert start!515726)

(declare-fun b!4912738 () Bool)

(declare-fun e!3070677 () Bool)

(declare-fun tp!1381307 () Bool)

(assert (=> b!4912738 (= e!3070677 tp!1381307)))

(declare-fun res!2098603 () Bool)

(declare-fun e!3070679 () Bool)

(assert (=> start!515726 (=> (not res!2098603) (not e!3070679))))

(declare-datatypes ((C!26874 0))(
  ( (C!26875 (val!22771 Int)) )
))
(declare-datatypes ((Regex!13338 0))(
  ( (ElementMatch!13338 (c!835051 C!26874)) (Concat!21911 (regOne!27188 Regex!13338) (regTwo!27188 Regex!13338)) (EmptyExpr!13338) (Star!13338 (reg!13667 Regex!13338)) (EmptyLang!13338) (Union!13338 (regOne!27189 Regex!13338) (regTwo!27189 Regex!13338)) )
))
(declare-fun r!15208 () Regex!13338)

(declare-fun validRegex!5927 (Regex!13338) Bool)

(assert (=> start!515726 (= res!2098603 (validRegex!5927 r!15208))))

(assert (=> start!515726 e!3070679))

(assert (=> start!515726 e!3070677))

(declare-datatypes ((List!56724 0))(
  ( (Nil!56600) (Cons!56600 (h!63048 C!26874) (t!367130 List!56724)) )
))
(declare-datatypes ((IArray!29723 0))(
  ( (IArray!29724 (innerList!14919 List!56724)) )
))
(declare-datatypes ((Conc!14831 0))(
  ( (Node!14831 (left!41261 Conc!14831) (right!41591 Conc!14831) (csize!29892 Int) (cheight!15042 Int)) (Leaf!24680 (xs!18147 IArray!29723) (csize!29893 Int)) (Empty!14831) )
))
(declare-datatypes ((BalanceConc!29092 0))(
  ( (BalanceConc!29093 (c!835052 Conc!14831)) )
))
(declare-fun input!6475 () BalanceConc!29092)

(declare-fun e!3070678 () Bool)

(declare-fun inv!73220 (BalanceConc!29092) Bool)

(assert (=> start!515726 (and (inv!73220 input!6475) e!3070678)))

(declare-fun b!4912739 () Bool)

(assert (=> b!4912739 (= e!3070679 false)))

(declare-fun lt!2017061 () Regex!13338)

(declare-datatypes ((List!56725 0))(
  ( (Nil!56601) (Cons!56601 (h!63049 Regex!13338) (t!367131 List!56725)) )
))
(declare-datatypes ((Context!5960 0))(
  ( (Context!5961 (exprs!3480 List!56725)) )
))
(declare-fun lt!2017062 () (Set Context!5960))

(declare-datatypes ((List!56726 0))(
  ( (Nil!56602) (Cons!56602 (h!63050 Context!5960) (t!367132 List!56726)) )
))
(declare-fun unfocusZipper!246 (List!56726) Regex!13338)

(declare-fun toList!7932 ((Set Context!5960)) List!56726)

(assert (=> b!4912739 (= lt!2017061 (unfocusZipper!246 (toList!7932 lt!2017062)))))

(declare-fun lt!2017060 () List!56724)

(declare-fun list!17875 (BalanceConc!29092) List!56724)

(assert (=> b!4912739 (= lt!2017060 (list!17875 input!6475))))

(declare-fun focus!336 (Regex!13338) (Set Context!5960))

(assert (=> b!4912739 (= lt!2017062 (focus!336 r!15208))))

(declare-fun b!4912740 () Bool)

(declare-fun tp!1381310 () Bool)

(declare-fun inv!73221 (Conc!14831) Bool)

(assert (=> b!4912740 (= e!3070678 (and (inv!73221 (c!835052 input!6475)) tp!1381310))))

(declare-fun b!4912741 () Bool)

(declare-fun tp!1381309 () Bool)

(declare-fun tp!1381306 () Bool)

(assert (=> b!4912741 (= e!3070677 (and tp!1381309 tp!1381306))))

(declare-fun b!4912742 () Bool)

(declare-fun tp!1381311 () Bool)

(declare-fun tp!1381308 () Bool)

(assert (=> b!4912742 (= e!3070677 (and tp!1381311 tp!1381308))))

(declare-fun b!4912743 () Bool)

(declare-fun tp_is_empty!35877 () Bool)

(assert (=> b!4912743 (= e!3070677 tp_is_empty!35877)))

(assert (= (and start!515726 res!2098603) b!4912739))

(assert (= (and start!515726 (is-ElementMatch!13338 r!15208)) b!4912743))

(assert (= (and start!515726 (is-Concat!21911 r!15208)) b!4912742))

(assert (= (and start!515726 (is-Star!13338 r!15208)) b!4912738))

(assert (= (and start!515726 (is-Union!13338 r!15208)) b!4912741))

(assert (= start!515726 b!4912740))

(declare-fun m!5922634 () Bool)

(assert (=> start!515726 m!5922634))

(declare-fun m!5922636 () Bool)

(assert (=> start!515726 m!5922636))

(declare-fun m!5922638 () Bool)

(assert (=> b!4912739 m!5922638))

(assert (=> b!4912739 m!5922638))

(declare-fun m!5922640 () Bool)

(assert (=> b!4912739 m!5922640))

(declare-fun m!5922642 () Bool)

(assert (=> b!4912739 m!5922642))

(declare-fun m!5922644 () Bool)

(assert (=> b!4912739 m!5922644))

(declare-fun m!5922646 () Bool)

(assert (=> b!4912740 m!5922646))

(push 1)

(assert (not b!4912741))

(assert (not b!4912742))

(assert tp_is_empty!35877)

(assert (not start!515726))

(assert (not b!4912738))

(assert (not b!4912740))

(assert (not b!4912739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

