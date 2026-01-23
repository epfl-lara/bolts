; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519560 () Bool)

(assert start!519560)

(declare-fun b!4939232 () Bool)

(declare-fun e!3086162 () Bool)

(declare-datatypes ((C!27124 0))(
  ( (C!27125 (val!22896 Int)) )
))
(declare-datatypes ((List!57002 0))(
  ( (Nil!56878) (Cons!56878 (h!63326 C!27124) (t!367502 List!57002)) )
))
(declare-datatypes ((IArray!29973 0))(
  ( (IArray!29974 (innerList!15044 List!57002)) )
))
(declare-datatypes ((Conc!14956 0))(
  ( (Node!14956 (left!41488 Conc!14956) (right!41818 Conc!14956) (csize!30142 Int) (cheight!15167 Int)) (Leaf!24867 (xs!18280 IArray!29973) (csize!30143 Int)) (Empty!14956) )
))
(declare-datatypes ((BalanceConc!29342 0))(
  ( (BalanceConc!29343 (c!842291 Conc!14956)) )
))
(declare-fun totalInput!685 () BalanceConc!29342)

(declare-fun tp!1385939 () Bool)

(declare-fun inv!73955 (Conc!14956) Bool)

(assert (=> b!4939232 (= e!3086162 (and (inv!73955 (c!842291 totalInput!685)) tp!1385939))))

(declare-fun res!2107882 () Bool)

(declare-fun e!3086161 () Bool)

(assert (=> start!519560 (=> (not res!2107882) (not e!3086161))))

(declare-fun lt!2036113 () List!57002)

(declare-fun lt!2036115 () List!57002)

(assert (=> start!519560 (= res!2107882 (= lt!2036113 lt!2036115))))

(declare-fun list!18083 (BalanceConc!29342) List!57002)

(assert (=> start!519560 (= lt!2036115 (list!18083 totalInput!685))))

(declare-fun testedP!110 () List!57002)

(declare-fun testedSuffix!70 () List!57002)

(declare-fun ++!12416 (List!57002 List!57002) List!57002)

(assert (=> start!519560 (= lt!2036113 (++!12416 testedP!110 testedSuffix!70))))

(assert (=> start!519560 e!3086161))

(declare-fun e!3086160 () Bool)

(assert (=> start!519560 e!3086160))

(assert (=> start!519560 true))

(declare-fun inv!73956 (BalanceConc!29342) Bool)

(assert (=> start!519560 (and (inv!73956 totalInput!685) e!3086162)))

(declare-fun e!3086163 () Bool)

(assert (=> start!519560 e!3086163))

(declare-fun b!4939233 () Bool)

(declare-fun tp_is_empty!36071 () Bool)

(declare-fun tp!1385941 () Bool)

(assert (=> b!4939233 (= e!3086160 (and tp_is_empty!36071 tp!1385941))))

(declare-fun b!4939234 () Bool)

(declare-fun res!2107881 () Bool)

(assert (=> b!4939234 (=> (not res!2107881) (not e!3086161))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37689 (List!57002) Int)

(assert (=> b!4939234 (= res!2107881 (= testedPSize!70 (size!37689 testedP!110)))))

(declare-fun b!4939235 () Bool)

(declare-fun isPrefix!5045 (List!57002 List!57002) Bool)

(assert (=> b!4939235 (= e!3086161 (not (isPrefix!5045 testedP!110 lt!2036115)))))

(assert (=> b!4939235 (isPrefix!5045 testedP!110 lt!2036113)))

(declare-datatypes ((Unit!147625 0))(
  ( (Unit!147626) )
))
(declare-fun lt!2036114 () Unit!147625)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3269 (List!57002 List!57002) Unit!147625)

(assert (=> b!4939235 (= lt!2036114 (lemmaConcatTwoListThenFirstIsPrefix!3269 testedP!110 testedSuffix!70))))

(declare-fun b!4939236 () Bool)

(declare-fun tp!1385940 () Bool)

(assert (=> b!4939236 (= e!3086163 (and tp_is_empty!36071 tp!1385940))))

(declare-fun b!4939237 () Bool)

(declare-fun res!2107880 () Bool)

(assert (=> b!4939237 (=> (not res!2107880) (not e!3086161))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37690 (BalanceConc!29342) Int)

(assert (=> b!4939237 (= res!2107880 (= totalInputSize!132 (size!37690 totalInput!685)))))

(assert (= (and start!519560 res!2107882) b!4939234))

(assert (= (and b!4939234 res!2107881) b!4939237))

(assert (= (and b!4939237 res!2107880) b!4939235))

(get-info :version)

(assert (= (and start!519560 ((_ is Cons!56878) testedP!110)) b!4939233))

(assert (= start!519560 b!4939232))

(assert (= (and start!519560 ((_ is Cons!56878) testedSuffix!70)) b!4939236))

(declare-fun m!5961678 () Bool)

(assert (=> b!4939234 m!5961678))

(declare-fun m!5961680 () Bool)

(assert (=> start!519560 m!5961680))

(declare-fun m!5961682 () Bool)

(assert (=> start!519560 m!5961682))

(declare-fun m!5961684 () Bool)

(assert (=> start!519560 m!5961684))

(declare-fun m!5961686 () Bool)

(assert (=> b!4939237 m!5961686))

(declare-fun m!5961688 () Bool)

(assert (=> b!4939235 m!5961688))

(declare-fun m!5961690 () Bool)

(assert (=> b!4939235 m!5961690))

(declare-fun m!5961692 () Bool)

(assert (=> b!4939235 m!5961692))

(declare-fun m!5961694 () Bool)

(assert (=> b!4939232 m!5961694))

(check-sat (not b!4939232) tp_is_empty!36071 (not b!4939236) (not start!519560) (not b!4939233) (not b!4939235) (not b!4939237) (not b!4939234))
(check-sat)
