; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506702 () Bool)

(assert start!506702)

(declare-fun b!4853132 () Bool)

(declare-fun res!2071852 () Bool)

(declare-fun e!3033889 () Bool)

(assert (=> b!4853132 (=> (not res!2071852) (not e!3033889))))

(declare-datatypes ((V!17768 0))(
  ( (V!17769 (val!22323 Int)) )
))
(declare-datatypes ((K!17522 0))(
  ( (K!17523 (val!22324 Int)) )
))
(declare-datatypes ((tuple2!59482 0))(
  ( (tuple2!59483 (_1!33035 K!17522) (_2!33035 V!17768)) )
))
(declare-datatypes ((List!55798 0))(
  ( (Nil!55674) (Cons!55674 (h!62119 tuple2!59482) (t!363294 List!55798)) )
))
(declare-datatypes ((tuple2!59484 0))(
  ( (tuple2!59485 (_1!33036 (_ BitVec 64)) (_2!33036 List!55798)) )
))
(declare-datatypes ((List!55799 0))(
  ( (Nil!55675) (Cons!55675 (h!62120 tuple2!59484) (t!363295 List!55799)) )
))
(declare-datatypes ((ListLongMap!6549 0))(
  ( (ListLongMap!6550 (toList!7903 List!55799)) )
))
(declare-fun lm!2840 () ListLongMap!6549)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun contains!19328 (ListLongMap!6549 (_ BitVec 64)) Bool)

(assert (=> b!4853132 (= res!2071852 (contains!19328 lm!2840 hash!467))))

(declare-fun res!2071851 () Bool)

(assert (=> start!506702 (=> (not res!2071851) (not e!3033889))))

(declare-fun lambda!242989 () Int)

(declare-fun forall!13002 (List!55799 Int) Bool)

(assert (=> start!506702 (= res!2071851 (forall!13002 (toList!7903 lm!2840) lambda!242989))))

(assert (=> start!506702 e!3033889))

(declare-fun e!3033890 () Bool)

(declare-fun inv!71385 (ListLongMap!6549) Bool)

(assert (=> start!506702 (and (inv!71385 lm!2840) e!3033890)))

(assert (=> start!506702 true))

(declare-fun tp_is_empty!35389 () Bool)

(assert (=> start!506702 tp_is_empty!35389))

(declare-fun b!4853133 () Bool)

(declare-fun tp!1365171 () Bool)

(assert (=> b!4853133 (= e!3033890 tp!1365171)))

(declare-fun b!4853134 () Bool)

(assert (=> b!4853134 (= e!3033889 false)))

(declare-fun lt!1990613 () List!55798)

(declare-fun apply!13484 (ListLongMap!6549 (_ BitVec 64)) List!55798)

(assert (=> b!4853134 (= lt!1990613 (apply!13484 lm!2840 hash!467))))

(declare-fun b!4853135 () Bool)

(declare-fun res!2071850 () Bool)

(assert (=> b!4853135 (=> (not res!2071850) (not e!3033889))))

(declare-datatypes ((Hashable!7545 0))(
  ( (HashableExt!7544 (__x!33820 Int)) )
))
(declare-fun hashF!1802 () Hashable!7545)

(declare-fun allKeysSameHashInMap!2859 (ListLongMap!6549 Hashable!7545) Bool)

(assert (=> b!4853135 (= res!2071850 (allKeysSameHashInMap!2859 lm!2840 hashF!1802))))

(declare-fun b!4853136 () Bool)

(declare-fun res!2071853 () Bool)

(assert (=> b!4853136 (=> (not res!2071853) (not e!3033889))))

(declare-fun key!6955 () K!17522)

(declare-fun hash!5676 (Hashable!7545 K!17522) (_ BitVec 64))

(assert (=> b!4853136 (= res!2071853 (not (= hash!467 (hash!5676 hashF!1802 key!6955))))))

(assert (= (and start!506702 res!2071851) b!4853135))

(assert (= (and b!4853135 res!2071850) b!4853132))

(assert (= (and b!4853132 res!2071852) b!4853136))

(assert (= (and b!4853136 res!2071853) b!4853134))

(assert (= start!506702 b!4853133))

(declare-fun m!5851406 () Bool)

(assert (=> b!4853132 m!5851406))

(declare-fun m!5851408 () Bool)

(assert (=> start!506702 m!5851408))

(declare-fun m!5851410 () Bool)

(assert (=> start!506702 m!5851410))

(declare-fun m!5851412 () Bool)

(assert (=> b!4853136 m!5851412))

(declare-fun m!5851414 () Bool)

(assert (=> b!4853134 m!5851414))

(declare-fun m!5851416 () Bool)

(assert (=> b!4853135 m!5851416))

(push 1)

(assert (not b!4853135))

(assert tp_is_empty!35389)

(assert (not b!4853132))

(assert (not start!506702))

(assert (not b!4853134))

(assert (not b!4853136))

(assert (not b!4853133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

