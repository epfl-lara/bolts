; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436250 () Bool)

(assert start!436250)

(declare-fun b!4453776 () Bool)

(declare-fun res!1845926 () Bool)

(declare-fun e!2773396 () Bool)

(assert (=> b!4453776 (=> (not res!1845926) (not e!2773396))))

(declare-datatypes ((V!11544 0))(
  ( (V!11545 (val!17309 Int)) )
))
(declare-datatypes ((K!11298 0))(
  ( (K!11299 (val!17310 Int)) )
))
(declare-datatypes ((tuple2!49938 0))(
  ( (tuple2!49939 (_1!28263 K!11298) (_2!28263 V!11544)) )
))
(declare-datatypes ((List!50047 0))(
  ( (Nil!49923) (Cons!49923 (h!55668 tuple2!49938) (t!356997 List!50047)) )
))
(declare-datatypes ((tuple2!49940 0))(
  ( (tuple2!49941 (_1!28264 (_ BitVec 64)) (_2!28264 List!50047)) )
))
(declare-datatypes ((List!50048 0))(
  ( (Nil!49924) (Cons!49924 (h!55669 tuple2!49940) (t!356998 List!50048)) )
))
(declare-datatypes ((ListLongMap!2417 0))(
  ( (ListLongMap!2418 (toList!3763 List!50048)) )
))
(declare-fun lm!1837 () ListLongMap!2417)

(declare-datatypes ((Hashable!5284 0))(
  ( (HashableExt!5283 (__x!30987 Int)) )
))
(declare-fun hashF!1304 () Hashable!5284)

(declare-fun allKeysSameHashInMap!996 (ListLongMap!2417 Hashable!5284) Bool)

(assert (=> b!4453776 (= res!1845926 (allKeysSameHashInMap!996 lm!1837 hashF!1304))))

(declare-fun b!4453777 () Bool)

(declare-fun lambda!159550 () Int)

(declare-fun forall!9786 (List!50048 Int) Bool)

(assert (=> b!4453777 (= e!2773396 (not (forall!9786 (toList!3763 lm!1837) lambda!159550)))))

(declare-fun b!4453778 () Bool)

(declare-fun e!2773395 () Bool)

(declare-fun tp!1334738 () Bool)

(assert (=> b!4453778 (= e!2773395 tp!1334738)))

(declare-fun res!1845924 () Bool)

(assert (=> start!436250 (=> (not res!1845924) (not e!2773396))))

(assert (=> start!436250 (= res!1845924 (forall!9786 (toList!3763 lm!1837) lambda!159550))))

(assert (=> start!436250 e!2773396))

(declare-fun inv!65485 (ListLongMap!2417) Bool)

(assert (=> start!436250 (and (inv!65485 lm!1837) e!2773395)))

(assert (=> start!436250 true))

(declare-fun tp_is_empty!26761 () Bool)

(assert (=> start!436250 tp_is_empty!26761))

(declare-fun b!4453779 () Bool)

(declare-fun res!1845923 () Bool)

(assert (=> b!4453779 (=> (not res!1845923) (not e!2773396))))

(declare-fun isEmpty!28434 (List!50048) Bool)

(assert (=> b!4453779 (= res!1845923 (not (isEmpty!28434 (toList!3763 lm!1837))))))

(declare-fun b!4453780 () Bool)

(declare-fun res!1845925 () Bool)

(assert (=> b!4453780 (=> (not res!1845925) (not e!2773396))))

(declare-fun key!4369 () K!11298)

(declare-datatypes ((ListMap!3003 0))(
  ( (ListMap!3004 (toList!3764 List!50047)) )
))
(declare-fun contains!12497 (ListMap!3003 K!11298) Bool)

(declare-fun extractMap!947 (List!50048) ListMap!3003)

(declare-fun tail!7452 (ListLongMap!2417) ListLongMap!2417)

(assert (=> b!4453780 (= res!1845925 (contains!12497 (extractMap!947 (toList!3763 (tail!7452 lm!1837))) key!4369))))

(declare-fun b!4453781 () Bool)

(declare-fun res!1845922 () Bool)

(assert (=> b!4453781 (=> (not res!1845922) (not e!2773396))))

(assert (=> b!4453781 (= res!1845922 (not (is-Cons!49924 (toList!3763 lm!1837))))))

(assert (= (and start!436250 res!1845924) b!4453776))

(assert (= (and b!4453776 res!1845926) b!4453779))

(assert (= (and b!4453779 res!1845923) b!4453780))

(assert (= (and b!4453780 res!1845925) b!4453781))

(assert (= (and b!4453781 res!1845922) b!4453777))

(assert (= start!436250 b!4453778))

(declare-fun m!5154527 () Bool)

(assert (=> b!4453777 m!5154527))

(declare-fun m!5154529 () Bool)

(assert (=> b!4453776 m!5154529))

(declare-fun m!5154531 () Bool)

(assert (=> b!4453780 m!5154531))

(declare-fun m!5154533 () Bool)

(assert (=> b!4453780 m!5154533))

(assert (=> b!4453780 m!5154533))

(declare-fun m!5154535 () Bool)

(assert (=> b!4453780 m!5154535))

(assert (=> start!436250 m!5154527))

(declare-fun m!5154537 () Bool)

(assert (=> start!436250 m!5154537))

(declare-fun m!5154539 () Bool)

(assert (=> b!4453779 m!5154539))

(push 1)

(assert (not b!4453780))

(assert (not b!4453778))

(assert (not start!436250))

(assert tp_is_empty!26761)

(assert (not b!4453779))

(assert (not b!4453777))

(assert (not b!4453776))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

