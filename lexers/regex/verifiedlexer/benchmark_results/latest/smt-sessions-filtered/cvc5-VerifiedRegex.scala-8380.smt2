; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436254 () Bool)

(assert start!436254)

(declare-fun b!4453810 () Bool)

(declare-fun e!2773408 () Bool)

(assert (=> b!4453810 (= e!2773408 false)))

(declare-fun lt!1645502 () Bool)

(declare-datatypes ((V!11549 0))(
  ( (V!11550 (val!17313 Int)) )
))
(declare-datatypes ((K!11303 0))(
  ( (K!11304 (val!17314 Int)) )
))
(declare-datatypes ((tuple2!49946 0))(
  ( (tuple2!49947 (_1!28267 K!11303) (_2!28267 V!11549)) )
))
(declare-datatypes ((List!50051 0))(
  ( (Nil!49927) (Cons!49927 (h!55672 tuple2!49946) (t!357001 List!50051)) )
))
(declare-datatypes ((tuple2!49948 0))(
  ( (tuple2!49949 (_1!28268 (_ BitVec 64)) (_2!28268 List!50051)) )
))
(declare-datatypes ((List!50052 0))(
  ( (Nil!49928) (Cons!49928 (h!55673 tuple2!49948) (t!357002 List!50052)) )
))
(declare-datatypes ((ListLongMap!2421 0))(
  ( (ListLongMap!2422 (toList!3767 List!50052)) )
))
(declare-fun lm!1837 () ListLongMap!2421)

(declare-fun key!4369 () K!11303)

(declare-datatypes ((ListMap!3007 0))(
  ( (ListMap!3008 (toList!3768 List!50051)) )
))
(declare-fun contains!12499 (ListMap!3007 K!11303) Bool)

(declare-fun extractMap!949 (List!50052) ListMap!3007)

(declare-fun tail!7454 (ListLongMap!2421) ListLongMap!2421)

(assert (=> b!4453810 (= lt!1645502 (contains!12499 (extractMap!949 (toList!3767 (tail!7454 lm!1837))) key!4369))))

(declare-fun b!4453808 () Bool)

(declare-fun res!1845950 () Bool)

(assert (=> b!4453808 (=> (not res!1845950) (not e!2773408))))

(declare-datatypes ((Hashable!5286 0))(
  ( (HashableExt!5285 (__x!30989 Int)) )
))
(declare-fun hashF!1304 () Hashable!5286)

(declare-fun allKeysSameHashInMap!998 (ListLongMap!2421 Hashable!5286) Bool)

(assert (=> b!4453808 (= res!1845950 (allKeysSameHashInMap!998 lm!1837 hashF!1304))))

(declare-fun b!4453809 () Bool)

(declare-fun res!1845948 () Bool)

(assert (=> b!4453809 (=> (not res!1845948) (not e!2773408))))

(declare-fun isEmpty!28436 (List!50052) Bool)

(assert (=> b!4453809 (= res!1845948 (not (isEmpty!28436 (toList!3767 lm!1837))))))

(declare-fun b!4453811 () Bool)

(declare-fun e!2773407 () Bool)

(declare-fun tp!1334744 () Bool)

(assert (=> b!4453811 (= e!2773407 tp!1334744)))

(declare-fun res!1845949 () Bool)

(assert (=> start!436254 (=> (not res!1845949) (not e!2773408))))

(declare-fun lambda!159558 () Int)

(declare-fun forall!9788 (List!50052 Int) Bool)

(assert (=> start!436254 (= res!1845949 (forall!9788 (toList!3767 lm!1837) lambda!159558))))

(assert (=> start!436254 e!2773408))

(declare-fun inv!65490 (ListLongMap!2421) Bool)

(assert (=> start!436254 (and (inv!65490 lm!1837) e!2773407)))

(assert (=> start!436254 true))

(declare-fun tp_is_empty!26765 () Bool)

(assert (=> start!436254 tp_is_empty!26765))

(assert (= (and start!436254 res!1845949) b!4453808))

(assert (= (and b!4453808 res!1845950) b!4453809))

(assert (= (and b!4453809 res!1845948) b!4453810))

(assert (= start!436254 b!4453811))

(declare-fun m!5154555 () Bool)

(assert (=> b!4453810 m!5154555))

(declare-fun m!5154557 () Bool)

(assert (=> b!4453810 m!5154557))

(assert (=> b!4453810 m!5154557))

(declare-fun m!5154559 () Bool)

(assert (=> b!4453810 m!5154559))

(declare-fun m!5154561 () Bool)

(assert (=> b!4453808 m!5154561))

(declare-fun m!5154563 () Bool)

(assert (=> b!4453809 m!5154563))

(declare-fun m!5154565 () Bool)

(assert (=> start!436254 m!5154565))

(declare-fun m!5154567 () Bool)

(assert (=> start!436254 m!5154567))

(push 1)

(assert (not b!4453809))

(assert (not b!4453810))

(assert (not b!4453811))

(assert tp_is_empty!26765)

(assert (not start!436254))

(assert (not b!4453808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

