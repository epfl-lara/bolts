; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506654 () Bool)

(assert start!506654)

(declare-fun bs!1173143 () Bool)

(declare-fun b!4852992 () Bool)

(assert (= bs!1173143 (and b!4852992 start!506654)))

(declare-fun lambda!242956 () Int)

(declare-fun lambda!242955 () Int)

(assert (=> bs!1173143 (not (= lambda!242956 lambda!242955))))

(assert (=> b!4852992 true))

(declare-fun res!2071764 () Bool)

(declare-fun e!3033814 () Bool)

(assert (=> start!506654 (=> (not res!2071764) (not e!3033814))))

(declare-datatypes ((V!17758 0))(
  ( (V!17759 (val!22315 Int)) )
))
(declare-datatypes ((K!17512 0))(
  ( (K!17513 (val!22316 Int)) )
))
(declare-datatypes ((tuple2!59466 0))(
  ( (tuple2!59467 (_1!33027 K!17512) (_2!33027 V!17758)) )
))
(declare-datatypes ((List!55790 0))(
  ( (Nil!55666) (Cons!55666 (h!62109 tuple2!59466) (t!363286 List!55790)) )
))
(declare-datatypes ((tuple2!59468 0))(
  ( (tuple2!59469 (_1!33028 (_ BitVec 64)) (_2!33028 List!55790)) )
))
(declare-datatypes ((List!55791 0))(
  ( (Nil!55667) (Cons!55667 (h!62110 tuple2!59468) (t!363287 List!55791)) )
))
(declare-datatypes ((ListLongMap!6541 0))(
  ( (ListLongMap!6542 (toList!7899 List!55791)) )
))
(declare-fun lm!2840 () ListLongMap!6541)

(declare-fun forall!12997 (List!55791 Int) Bool)

(assert (=> start!506654 (= res!2071764 (forall!12997 (toList!7899 lm!2840) lambda!242955))))

(assert (=> start!506654 e!3033814))

(declare-fun e!3033815 () Bool)

(declare-fun inv!71375 (ListLongMap!6541) Bool)

(assert (=> start!506654 (and (inv!71375 lm!2840) e!3033815)))

(assert (=> start!506654 true))

(declare-fun tp_is_empty!35381 () Bool)

(assert (=> start!506654 tp_is_empty!35381))

(declare-fun e!3033813 () Bool)

(assert (=> b!4852992 (= e!3033814 (not e!3033813))))

(declare-fun res!2071762 () Bool)

(assert (=> b!4852992 (=> res!2071762 e!3033813)))

(declare-datatypes ((Hashable!7541 0))(
  ( (HashableExt!7540 (__x!33816 Int)) )
))
(declare-fun hashF!1802 () Hashable!7541)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun lt!1990525 () List!55790)

(declare-fun allKeysSameHash!2051 (List!55790 (_ BitVec 64) Hashable!7541) Bool)

(assert (=> b!4852992 (= res!2071762 (not (allKeysSameHash!2051 lt!1990525 hash!467 hashF!1802)))))

(declare-fun lt!1990526 () tuple2!59468)

(declare-datatypes ((Unit!145795 0))(
  ( (Unit!145796) )
))
(declare-fun lt!1990527 () Unit!145795)

(declare-fun forallContained!4576 (List!55791 Int tuple2!59468) Unit!145795)

(assert (=> b!4852992 (= lt!1990527 (forallContained!4576 (toList!7899 lm!2840) lambda!242956 lt!1990526))))

(declare-fun contains!19320 (List!55791 tuple2!59468) Bool)

(assert (=> b!4852992 (contains!19320 (toList!7899 lm!2840) lt!1990526)))

(assert (=> b!4852992 (= lt!1990526 (tuple2!59469 hash!467 lt!1990525))))

(declare-fun lt!1990528 () Unit!145795)

(declare-fun lemmaGetValueImpliesTupleContained!802 (ListLongMap!6541 (_ BitVec 64) List!55790) Unit!145795)

(assert (=> b!4852992 (= lt!1990528 (lemmaGetValueImpliesTupleContained!802 lm!2840 hash!467 lt!1990525))))

(declare-fun apply!13480 (ListLongMap!6541 (_ BitVec 64)) List!55790)

(assert (=> b!4852992 (= lt!1990525 (apply!13480 lm!2840 hash!467))))

(declare-fun b!4852993 () Bool)

(declare-fun tp!1365147 () Bool)

(assert (=> b!4852993 (= e!3033815 tp!1365147)))

(declare-fun b!4852994 () Bool)

(declare-fun res!2071765 () Bool)

(assert (=> b!4852994 (=> (not res!2071765) (not e!3033814))))

(declare-fun allKeysSameHashInMap!2855 (ListLongMap!6541 Hashable!7541) Bool)

(assert (=> b!4852994 (= res!2071765 (allKeysSameHashInMap!2855 lm!2840 hashF!1802))))

(declare-fun b!4852995 () Bool)

(declare-fun res!2071763 () Bool)

(assert (=> b!4852995 (=> (not res!2071763) (not e!3033814))))

(declare-fun contains!19321 (ListLongMap!6541 (_ BitVec 64)) Bool)

(assert (=> b!4852995 (= res!2071763 (contains!19321 lm!2840 hash!467))))

(declare-fun b!4852996 () Bool)

(assert (=> b!4852996 (= e!3033813 true)))

(declare-fun lt!1990529 () Bool)

(declare-fun key!6955 () K!17512)

(declare-fun containsKey!4751 (List!55790 K!17512) Bool)

(assert (=> b!4852996 (= lt!1990529 (containsKey!4751 lt!1990525 key!6955))))

(declare-fun b!4852997 () Bool)

(declare-fun res!2071766 () Bool)

(assert (=> b!4852997 (=> (not res!2071766) (not e!3033814))))

(declare-fun hash!5671 (Hashable!7541 K!17512) (_ BitVec 64))

(assert (=> b!4852997 (= res!2071766 (not (= hash!467 (hash!5671 hashF!1802 key!6955))))))

(assert (= (and start!506654 res!2071764) b!4852994))

(assert (= (and b!4852994 res!2071765) b!4852995))

(assert (= (and b!4852995 res!2071763) b!4852997))

(assert (= (and b!4852997 res!2071766) b!4852992))

(assert (= (and b!4852992 (not res!2071762)) b!4852996))

(assert (= start!506654 b!4852993))

(declare-fun m!5851248 () Bool)

(assert (=> b!4852997 m!5851248))

(declare-fun m!5851250 () Bool)

(assert (=> b!4852992 m!5851250))

(declare-fun m!5851252 () Bool)

(assert (=> b!4852992 m!5851252))

(declare-fun m!5851254 () Bool)

(assert (=> b!4852992 m!5851254))

(declare-fun m!5851256 () Bool)

(assert (=> b!4852992 m!5851256))

(declare-fun m!5851258 () Bool)

(assert (=> b!4852992 m!5851258))

(declare-fun m!5851260 () Bool)

(assert (=> start!506654 m!5851260))

(declare-fun m!5851262 () Bool)

(assert (=> start!506654 m!5851262))

(declare-fun m!5851264 () Bool)

(assert (=> b!4852994 m!5851264))

(declare-fun m!5851266 () Bool)

(assert (=> b!4852995 m!5851266))

(declare-fun m!5851268 () Bool)

(assert (=> b!4852996 m!5851268))

(push 1)

(assert (not b!4852996))

(assert (not b!4852995))

(assert (not b!4852992))

(assert (not b!4852994))

(assert tp_is_empty!35381)

(assert (not b!4852997))

(assert (not b!4852993))

(assert (not start!506654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

