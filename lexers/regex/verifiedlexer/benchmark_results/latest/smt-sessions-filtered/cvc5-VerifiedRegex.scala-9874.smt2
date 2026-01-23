; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!517702 () Bool)

(assert start!517702)

(declare-fun b!4929880 () Bool)

(declare-fun e!3080027 () Bool)

(declare-fun tp_is_empty!35925 () Bool)

(declare-fun tp!1383942 () Bool)

(assert (=> b!4929880 (= e!3080027 (and tp_is_empty!35925 tp!1383942))))

(declare-fun b!4929881 () Bool)

(declare-fun e!3080029 () Bool)

(declare-fun e!3080030 () Bool)

(assert (=> b!4929881 (= e!3080029 (not e!3080030))))

(declare-fun res!2103757 () Bool)

(assert (=> b!4929881 (=> res!2103757 e!3080030)))

(declare-datatypes ((C!26978 0))(
  ( (C!26979 (val!22823 Int)) )
))
(declare-datatypes ((List!56833 0))(
  ( (Nil!56709) (Cons!56709 (h!63157 C!26978) (t!367309 List!56833)) )
))
(declare-fun testedP!110 () List!56833)

(declare-fun lt!2029276 () List!56833)

(declare-fun isPrefix!4972 (List!56833 List!56833) Bool)

(assert (=> b!4929881 (= res!2103757 (not (isPrefix!4972 testedP!110 lt!2029276)))))

(declare-fun lt!2029277 () List!56833)

(assert (=> b!4929881 (isPrefix!4972 testedP!110 lt!2029277)))

(declare-datatypes ((Unit!147331 0))(
  ( (Unit!147332) )
))
(declare-fun lt!2029279 () Unit!147331)

(declare-fun testedSuffix!70 () List!56833)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3196 (List!56833 List!56833) Unit!147331)

(assert (=> b!4929881 (= lt!2029279 (lemmaConcatTwoListThenFirstIsPrefix!3196 testedP!110 testedSuffix!70))))

(declare-fun b!4929882 () Bool)

(declare-fun e!3080031 () Bool)

(declare-fun tp!1383940 () Bool)

(assert (=> b!4929882 (= e!3080031 (and tp_is_empty!35925 tp!1383940))))

(declare-fun res!2103756 () Bool)

(assert (=> start!517702 (=> (not res!2103756) (not e!3080029))))

(assert (=> start!517702 (= res!2103756 (= lt!2029277 lt!2029276))))

(declare-datatypes ((IArray!29827 0))(
  ( (IArray!29828 (innerList!14971 List!56833)) )
))
(declare-datatypes ((Conc!14883 0))(
  ( (Node!14883 (left!41359 Conc!14883) (right!41689 Conc!14883) (csize!29996 Int) (cheight!15094 Int)) (Leaf!24758 (xs!18207 IArray!29827) (csize!29997 Int)) (Empty!14883) )
))
(declare-datatypes ((BalanceConc!29196 0))(
  ( (BalanceConc!29197 (c!840149 Conc!14883)) )
))
(declare-fun totalInput!685 () BalanceConc!29196)

(declare-fun list!17974 (BalanceConc!29196) List!56833)

(assert (=> start!517702 (= lt!2029276 (list!17974 totalInput!685))))

(declare-fun ++!12339 (List!56833 List!56833) List!56833)

(assert (=> start!517702 (= lt!2029277 (++!12339 testedP!110 testedSuffix!70))))

(assert (=> start!517702 e!3080029))

(assert (=> start!517702 e!3080031))

(assert (=> start!517702 true))

(declare-fun e!3080028 () Bool)

(declare-fun inv!73539 (BalanceConc!29196) Bool)

(assert (=> start!517702 (and (inv!73539 totalInput!685) e!3080028)))

(assert (=> start!517702 e!3080027))

(declare-fun b!4929883 () Bool)

(declare-fun res!2103758 () Bool)

(assert (=> b!4929883 (=> (not res!2103758) (not e!3080029))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37511 (List!56833) Int)

(assert (=> b!4929883 (= res!2103758 (= testedPSize!70 (size!37511 testedP!110)))))

(declare-fun b!4929884 () Bool)

(declare-fun tp!1383941 () Bool)

(declare-fun inv!73540 (Conc!14883) Bool)

(assert (=> b!4929884 (= e!3080028 (and (inv!73540 (c!840149 totalInput!685)) tp!1383941))))

(declare-fun b!4929885 () Bool)

(declare-fun res!2103755 () Bool)

(assert (=> b!4929885 (=> (not res!2103755) (not e!3080029))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37512 (BalanceConc!29196) Int)

(assert (=> b!4929885 (= res!2103755 (= totalInputSize!132 (size!37512 totalInput!685)))))

(declare-fun b!4929886 () Bool)

(assert (=> b!4929886 (= e!3080030 true)))

(declare-fun lt!2029278 () List!56833)

(declare-fun getSuffix!2956 (List!56833 List!56833) List!56833)

(assert (=> b!4929886 (= lt!2029278 (++!12339 testedP!110 (getSuffix!2956 lt!2029276 testedP!110)))))

(assert (= (and start!517702 res!2103756) b!4929883))

(assert (= (and b!4929883 res!2103758) b!4929885))

(assert (= (and b!4929885 res!2103755) b!4929881))

(assert (= (and b!4929881 (not res!2103757)) b!4929886))

(assert (= (and start!517702 (is-Cons!56709 testedP!110)) b!4929882))

(assert (= start!517702 b!4929884))

(assert (= (and start!517702 (is-Cons!56709 testedSuffix!70)) b!4929880))

(declare-fun m!5949996 () Bool)

(assert (=> b!4929883 m!5949996))

(declare-fun m!5949998 () Bool)

(assert (=> b!4929885 m!5949998))

(declare-fun m!5950000 () Bool)

(assert (=> b!4929881 m!5950000))

(declare-fun m!5950002 () Bool)

(assert (=> b!4929881 m!5950002))

(declare-fun m!5950004 () Bool)

(assert (=> b!4929881 m!5950004))

(declare-fun m!5950006 () Bool)

(assert (=> start!517702 m!5950006))

(declare-fun m!5950008 () Bool)

(assert (=> start!517702 m!5950008))

(declare-fun m!5950010 () Bool)

(assert (=> start!517702 m!5950010))

(declare-fun m!5950012 () Bool)

(assert (=> b!4929884 m!5950012))

(declare-fun m!5950014 () Bool)

(assert (=> b!4929886 m!5950014))

(assert (=> b!4929886 m!5950014))

(declare-fun m!5950016 () Bool)

(assert (=> b!4929886 m!5950016))

(push 1)

(assert (not b!4929884))

(assert (not start!517702))

(assert (not b!4929881))

(assert (not b!4929883))

(assert tp_is_empty!35925)

(assert (not b!4929882))

(assert (not b!4929886))

(assert (not b!4929885))

(assert (not b!4929880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

