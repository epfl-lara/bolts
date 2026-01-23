; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532636 () Bool)

(assert start!532636)

(declare-fun b!5034701 () Bool)

(declare-fun res!2145389 () Bool)

(declare-fun e!3144881 () Bool)

(assert (=> b!5034701 (=> (not res!2145389) (not e!3144881))))

(declare-fun i!618 () Int)

(declare-datatypes ((T!103968 0))(
  ( (T!103969 (val!23483 Int)) )
))
(declare-datatypes ((List!58393 0))(
  ( (Nil!58269) (Cons!58269 (h!64717 T!103968) (t!370854 List!58393)) )
))
(declare-datatypes ((IArray!31023 0))(
  ( (IArray!31024 (innerList!15569 List!58393)) )
))
(declare-datatypes ((Conc!15481 0))(
  ( (Node!15481 (left!42651 Conc!15481) (right!42981 Conc!15481) (csize!31192 Int) (cheight!15692 Int)) (Leaf!25686 (xs!18807 IArray!31023) (csize!31193 Int)) (Empty!15481) )
))
(declare-fun t!4198 () Conc!15481)

(declare-fun size!38836 (Conc!15481) Int)

(assert (=> b!5034701 (= res!2145389 (<= i!618 (size!38836 t!4198)))))

(declare-fun b!5034702 () Bool)

(declare-fun e!3144883 () Bool)

(declare-fun e!3144882 () Bool)

(declare-fun inv!76993 (IArray!31023) Bool)

(assert (=> b!5034702 (= e!3144883 (and (inv!76993 (xs!18807 t!4198)) e!3144882))))

(declare-fun res!2145387 () Bool)

(assert (=> start!532636 (=> (not res!2145387) (not e!3144881))))

(declare-fun isBalanced!4343 (Conc!15481) Bool)

(assert (=> start!532636 (= res!2145387 (isBalanced!4343 t!4198))))

(assert (=> start!532636 e!3144881))

(declare-fun inv!76994 (Conc!15481) Bool)

(assert (=> start!532636 (and (inv!76994 t!4198) e!3144883)))

(assert (=> start!532636 true))

(declare-fun tp!1410119 () Bool)

(declare-fun b!5034703 () Bool)

(declare-fun tp!1410117 () Bool)

(assert (=> b!5034703 (= e!3144883 (and (inv!76994 (left!42651 t!4198)) tp!1410119 (inv!76994 (right!42981 t!4198)) tp!1410117))))

(declare-fun b!5034704 () Bool)

(declare-fun tp!1410118 () Bool)

(assert (=> b!5034704 (= e!3144882 tp!1410118)))

(declare-fun b!5034705 () Bool)

(declare-fun res!2145386 () Bool)

(assert (=> b!5034705 (=> (not res!2145386) (not e!3144881))))

(assert (=> b!5034705 (= res!2145386 (and (not (is-Empty!15481 t!4198)) (not (is-Leaf!25686 t!4198))))))

(declare-fun b!5034706 () Bool)

(declare-fun res!2145388 () Bool)

(assert (=> b!5034706 (=> (not res!2145388) (not e!3144881))))

(assert (=> b!5034706 (= res!2145388 (<= 0 i!618))))

(declare-fun b!5034707 () Bool)

(assert (=> b!5034707 (= e!3144881 false)))

(declare-fun lt!2083027 () Int)

(declare-fun lt!2083030 () List!58393)

(declare-fun size!38837 (List!58393) Int)

(assert (=> b!5034707 (= lt!2083027 (size!38837 lt!2083030))))

(declare-fun lt!2083028 () Int)

(declare-fun lt!2083029 () List!58393)

(assert (=> b!5034707 (= lt!2083028 (size!38837 lt!2083029))))

(declare-fun list!18858 (Conc!15481) List!58393)

(assert (=> b!5034707 (= lt!2083030 (list!18858 (right!42981 t!4198)))))

(assert (=> b!5034707 (= lt!2083029 (list!18858 (left!42651 t!4198)))))

(assert (= (and start!532636 res!2145387) b!5034706))

(assert (= (and b!5034706 res!2145388) b!5034701))

(assert (= (and b!5034701 res!2145389) b!5034705))

(assert (= (and b!5034705 res!2145386) b!5034707))

(assert (= (and start!532636 (is-Node!15481 t!4198)) b!5034703))

(assert (= b!5034702 b!5034704))

(assert (= (and start!532636 (is-Leaf!25686 t!4198)) b!5034702))

(declare-fun m!6069172 () Bool)

(assert (=> b!5034707 m!6069172))

(declare-fun m!6069174 () Bool)

(assert (=> b!5034707 m!6069174))

(declare-fun m!6069176 () Bool)

(assert (=> b!5034707 m!6069176))

(declare-fun m!6069178 () Bool)

(assert (=> b!5034707 m!6069178))

(declare-fun m!6069180 () Bool)

(assert (=> b!5034701 m!6069180))

(declare-fun m!6069182 () Bool)

(assert (=> start!532636 m!6069182))

(declare-fun m!6069184 () Bool)

(assert (=> start!532636 m!6069184))

(declare-fun m!6069186 () Bool)

(assert (=> b!5034703 m!6069186))

(declare-fun m!6069188 () Bool)

(assert (=> b!5034703 m!6069188))

(declare-fun m!6069190 () Bool)

(assert (=> b!5034702 m!6069190))

(push 1)

(assert (not b!5034702))

(assert (not b!5034701))

(assert (not start!532636))

(assert (not b!5034707))

(assert (not b!5034703))

(assert (not b!5034704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

