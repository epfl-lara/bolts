; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485810 () Bool)

(assert start!485810)

(declare-fun res!2016376 () Bool)

(declare-fun e!2965566 () Bool)

(assert (=> start!485810 (=> (not res!2016376) (not e!2965566))))

(declare-datatypes ((K!14583 0))(
  ( (K!14584 (val!19937 Int)) )
))
(declare-datatypes ((V!14829 0))(
  ( (V!14830 (val!19938 Int)) )
))
(declare-datatypes ((tuple2!54906 0))(
  ( (tuple2!54907 (_1!30747 K!14583) (_2!30747 V!14829)) )
))
(declare-datatypes ((List!53237 0))(
  ( (Nil!53113) (Cons!53113 (h!59510 tuple2!54906) (t!360581 List!53237)) )
))
(declare-fun l!13029 () List!53237)

(declare-fun key!4572 () K!14583)

(declare-fun containsKey!3579 (List!53237 K!14583) Bool)

(assert (=> start!485810 (= res!2016376 (not (containsKey!3579 l!13029 key!4572)))))

(assert (=> start!485810 e!2965566))

(declare-fun e!2965567 () Bool)

(assert (=> start!485810 e!2965567))

(declare-fun tp_is_empty!31985 () Bool)

(assert (=> start!485810 tp_is_empty!31985))

(declare-datatypes ((ListMap!5591 0))(
  ( (ListMap!5592 (toList!6141 List!53237)) )
))
(declare-fun lhm!63 () ListMap!5591)

(declare-fun e!2965565 () Bool)

(declare-fun inv!68454 (ListMap!5591) Bool)

(assert (=> start!485810 (and (inv!68454 lhm!63) e!2965565)))

(declare-fun tp_is_empty!31987 () Bool)

(assert (=> start!485810 tp_is_empty!31987))

(declare-fun b!4753858 () Bool)

(declare-fun tp!1350394 () Bool)

(assert (=> b!4753858 (= e!2965565 tp!1350394)))

(declare-fun b!4753859 () Bool)

(assert (=> b!4753859 (= e!2965566 false)))

(declare-fun value!2966 () V!14829)

(declare-fun lt!1919958 () ListMap!5591)

(declare-fun +!2407 (ListMap!5591 tuple2!54906) ListMap!5591)

(assert (=> b!4753859 (= lt!1919958 (+!2407 lhm!63 (tuple2!54907 key!4572 value!2966)))))

(declare-fun b!4753860 () Bool)

(declare-fun res!2016377 () Bool)

(assert (=> b!4753860 (=> (not res!2016377) (not e!2965566))))

(assert (=> b!4753860 (= res!2016377 (not (is-Cons!53113 l!13029)))))

(declare-fun b!4753861 () Bool)

(declare-fun tp!1350395 () Bool)

(assert (=> b!4753861 (= e!2965567 (and tp_is_empty!31985 tp_is_empty!31987 tp!1350395))))

(declare-fun b!4753862 () Bool)

(declare-fun res!2016378 () Bool)

(assert (=> b!4753862 (=> (not res!2016378) (not e!2965566))))

(declare-fun noDuplicateKeys!2173 (List!53237) Bool)

(assert (=> b!4753862 (= res!2016378 (noDuplicateKeys!2173 l!13029))))

(assert (= (and start!485810 res!2016376) b!4753862))

(assert (= (and b!4753862 res!2016378) b!4753860))

(assert (= (and b!4753860 res!2016377) b!4753859))

(assert (= (and start!485810 (is-Cons!53113 l!13029)) b!4753861))

(assert (= start!485810 b!4753858))

(declare-fun m!5721683 () Bool)

(assert (=> start!485810 m!5721683))

(declare-fun m!5721685 () Bool)

(assert (=> start!485810 m!5721685))

(declare-fun m!5721687 () Bool)

(assert (=> b!4753859 m!5721687))

(declare-fun m!5721689 () Bool)

(assert (=> b!4753862 m!5721689))

(push 1)

(assert (not b!4753862))

(assert (not b!4753859))

(assert (not b!4753858))

(assert (not start!485810))

(assert (not b!4753861))

(assert tp_is_empty!31987)

(assert tp_is_empty!31985)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

