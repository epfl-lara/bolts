; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2648 () Bool)

(assert start!2648)

(declare-fun b_free!545 () Bool)

(declare-fun b_next!545 () Bool)

(assert (=> start!2648 (= b_free!545 (not b_next!545))))

(declare-fun tp!2762 () Bool)

(declare-fun b_and!1039 () Bool)

(assert (=> start!2648 (= tp!2762 b_and!1039)))

(declare-fun res!11887 () Bool)

(declare-fun e!9681 () Bool)

(assert (=> start!2648 (=> (not res!11887) (not e!9681))))

(declare-datatypes ((B!666 0))(
  ( (B!667 (val!431 Int)) )
))
(declare-datatypes ((tuple2!644 0))(
  ( (tuple2!645 (_1!322 (_ BitVec 64)) (_2!322 B!666)) )
))
(declare-datatypes ((List!511 0))(
  ( (Nil!508) (Cons!507 (h!1073 tuple2!644) (t!2997 List!511)) )
))
(declare-datatypes ((ListLongMap!475 0))(
  ( (ListLongMap!476 (toList!253 List!511)) )
))
(declare-fun lm!221 () ListLongMap!475)

(declare-fun p!191 () Int)

(declare-fun forall!133 (List!511 Int) Bool)

(assert (=> start!2648 (= res!11887 (forall!133 (toList!253 lm!221) p!191))))

(assert (=> start!2648 e!9681))

(declare-fun e!9682 () Bool)

(declare-fun inv!858 (ListLongMap!475) Bool)

(assert (=> start!2648 (and (inv!858 lm!221) e!9682)))

(assert (=> start!2648 tp!2762))

(declare-fun b!15849 () Bool)

(declare-fun res!11886 () Bool)

(assert (=> b!15849 (=> (not res!11886) (not e!9681))))

(declare-fun isEmpty!143 (ListLongMap!475) Bool)

(assert (=> b!15849 (= res!11886 (not (isEmpty!143 lm!221)))))

(declare-fun b!15850 () Bool)

(assert (=> b!15850 (= e!9681 false)))

(declare-fun lt!3924 () Bool)

(declare-fun tail!67 (ListLongMap!475) ListLongMap!475)

(assert (=> b!15850 (= lt!3924 (forall!133 (toList!253 (tail!67 lm!221)) p!191))))

(declare-fun b!15851 () Bool)

(declare-fun tp!2761 () Bool)

(assert (=> b!15851 (= e!9682 tp!2761)))

(assert (= (and start!2648 res!11887) b!15849))

(assert (= (and b!15849 res!11886) b!15850))

(assert (= start!2648 b!15851))

(declare-fun m!10875 () Bool)

(assert (=> start!2648 m!10875))

(declare-fun m!10877 () Bool)

(assert (=> start!2648 m!10877))

(declare-fun m!10879 () Bool)

(assert (=> b!15849 m!10879))

(declare-fun m!10881 () Bool)

(assert (=> b!15850 m!10881))

(declare-fun m!10883 () Bool)

(assert (=> b!15850 m!10883))

(push 1)

(assert (not b!15850))

(assert (not b_next!545))

(assert (not b!15851))

(assert (not b!15849))

(assert b_and!1039)

(assert (not start!2648))

(check-sat)

