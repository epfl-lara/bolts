; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499026 () Bool)

(assert start!499026)

(declare-fun b!4818605 () Bool)

(declare-fun res!2050176 () Bool)

(declare-fun e!3010619 () Bool)

(assert (=> b!4818605 (=> (not res!2050176) (not e!3010619))))

(declare-datatypes ((V!16740 0))(
  ( (V!16741 (val!21501 Int)) )
))
(declare-datatypes ((K!16494 0))(
  ( (K!16495 (val!21502 Int)) )
))
(declare-datatypes ((tuple2!57938 0))(
  ( (tuple2!57939 (_1!32263 K!16494) (_2!32263 V!16740)) )
))
(declare-datatypes ((List!54951 0))(
  ( (Nil!54827) (Cons!54827 (h!61261 tuple2!57938) (t!362447 List!54951)) )
))
(declare-datatypes ((tuple2!57940 0))(
  ( (tuple2!57941 (_1!32264 (_ BitVec 64)) (_2!32264 List!54951)) )
))
(declare-datatypes ((List!54952 0))(
  ( (Nil!54828) (Cons!54828 (h!61262 tuple2!57940) (t!362448 List!54952)) )
))
(declare-datatypes ((ListLongMap!5867 0))(
  ( (ListLongMap!5868 (toList!7382 List!54952)) )
))
(declare-fun lt!1968323 () ListLongMap!5867)

(declare-datatypes ((Hashable!7202 0))(
  ( (HashableExt!7201 (__x!33477 Int)) )
))
(declare-fun hashF!1509 () Hashable!7202)

(declare-fun allKeysSameHashInMap!2518 (ListLongMap!5867 Hashable!7202) Bool)

(assert (=> b!4818605 (= res!2050176 (allKeysSameHashInMap!2518 lt!1968323 hashF!1509))))

(declare-fun b!4818606 () Bool)

(declare-fun e!3010618 () Bool)

(assert (=> b!4818606 (= e!3010618 e!3010619)))

(declare-fun res!2050172 () Bool)

(assert (=> b!4818606 (=> (not res!2050172) (not e!3010619))))

(declare-fun lambda!235056 () Int)

(declare-fun forall!12516 (List!54952 Int) Bool)

(assert (=> b!4818606 (= res!2050172 (forall!12516 (toList!7382 lt!1968323) lambda!235056))))

(declare-fun lm!2280 () ListLongMap!5867)

(declare-fun tail!9356 (ListLongMap!5867) ListLongMap!5867)

(assert (=> b!4818606 (= lt!1968323 (tail!9356 lm!2280))))

(declare-fun b!4818607 () Bool)

(declare-fun res!2050177 () Bool)

(assert (=> b!4818607 (=> (not res!2050177) (not e!3010618))))

(declare-fun key!5428 () K!16494)

(declare-fun lt!1968324 () (_ BitVec 64))

(declare-fun containsKey!4262 (List!54951 K!16494) Bool)

(declare-fun apply!13289 (ListLongMap!5867 (_ BitVec 64)) List!54951)

(assert (=> b!4818607 (= res!2050177 (not (containsKey!4262 (apply!13289 lm!2280 lt!1968324) key!5428)))))

(declare-fun b!4818608 () Bool)

(declare-fun e!3010617 () Bool)

(assert (=> b!4818608 (= e!3010617 e!3010618)))

(declare-fun res!2050178 () Bool)

(assert (=> b!4818608 (=> (not res!2050178) (not e!3010618))))

(declare-fun contains!18656 (ListLongMap!5867 (_ BitVec 64)) Bool)

(assert (=> b!4818608 (= res!2050178 (contains!18656 lm!2280 lt!1968324))))

(declare-fun hash!5280 (Hashable!7202 K!16494) (_ BitVec 64))

(assert (=> b!4818608 (= lt!1968324 (hash!5280 hashF!1509 key!5428))))

(declare-fun res!2050175 () Bool)

(assert (=> start!499026 (=> (not res!2050175) (not e!3010617))))

(assert (=> start!499026 (= res!2050175 (forall!12516 (toList!7382 lm!2280) lambda!235056))))

(assert (=> start!499026 e!3010617))

(declare-fun e!3010616 () Bool)

(declare-fun inv!70394 (ListLongMap!5867) Bool)

(assert (=> start!499026 (and (inv!70394 lm!2280) e!3010616)))

(assert (=> start!499026 true))

(declare-fun tp_is_empty!34289 () Bool)

(assert (=> start!499026 tp_is_empty!34289))

(declare-fun b!4818609 () Bool)

(declare-fun res!2050174 () Bool)

(assert (=> b!4818609 (=> (not res!2050174) (not e!3010618))))

(get-info :version)

(assert (=> b!4818609 (= res!2050174 (and ((_ is Cons!54828) (toList!7382 lm!2280)) (= (_1!32264 (h!61262 (toList!7382 lm!2280))) lt!1968324)))))

(declare-fun b!4818610 () Bool)

(assert (=> b!4818610 (= e!3010619 (not (forall!12516 (toList!7382 lt!1968323) lambda!235056)))))

(declare-fun b!4818611 () Bool)

(declare-fun res!2050179 () Bool)

(assert (=> b!4818611 (=> (not res!2050179) (not e!3010619))))

(assert (=> b!4818611 (= res!2050179 (not (contains!18656 lt!1968323 lt!1968324)))))

(declare-fun b!4818612 () Bool)

(declare-fun tp!1362097 () Bool)

(assert (=> b!4818612 (= e!3010616 tp!1362097)))

(declare-fun b!4818613 () Bool)

(declare-fun res!2050173 () Bool)

(assert (=> b!4818613 (=> (not res!2050173) (not e!3010617))))

(assert (=> b!4818613 (= res!2050173 (allKeysSameHashInMap!2518 lm!2280 hashF!1509))))

(assert (= (and start!499026 res!2050175) b!4818613))

(assert (= (and b!4818613 res!2050173) b!4818608))

(assert (= (and b!4818608 res!2050178) b!4818607))

(assert (= (and b!4818607 res!2050177) b!4818609))

(assert (= (and b!4818609 res!2050174) b!4818606))

(assert (= (and b!4818606 res!2050172) b!4818605))

(assert (= (and b!4818605 res!2050176) b!4818611))

(assert (= (and b!4818611 res!2050179) b!4818610))

(assert (= start!499026 b!4818612))

(declare-fun m!5805514 () Bool)

(assert (=> b!4818606 m!5805514))

(declare-fun m!5805516 () Bool)

(assert (=> b!4818606 m!5805516))

(declare-fun m!5805518 () Bool)

(assert (=> start!499026 m!5805518))

(declare-fun m!5805520 () Bool)

(assert (=> start!499026 m!5805520))

(assert (=> b!4818610 m!5805514))

(declare-fun m!5805522 () Bool)

(assert (=> b!4818607 m!5805522))

(assert (=> b!4818607 m!5805522))

(declare-fun m!5805524 () Bool)

(assert (=> b!4818607 m!5805524))

(declare-fun m!5805526 () Bool)

(assert (=> b!4818605 m!5805526))

(declare-fun m!5805528 () Bool)

(assert (=> b!4818613 m!5805528))

(declare-fun m!5805530 () Bool)

(assert (=> b!4818611 m!5805530))

(declare-fun m!5805532 () Bool)

(assert (=> b!4818608 m!5805532))

(declare-fun m!5805534 () Bool)

(assert (=> b!4818608 m!5805534))

(check-sat (not b!4818613) (not b!4818606) (not b!4818610) (not b!4818608) (not start!499026) (not b!4818612) tp_is_empty!34289 (not b!4818611) (not b!4818605) (not b!4818607))
(check-sat)
