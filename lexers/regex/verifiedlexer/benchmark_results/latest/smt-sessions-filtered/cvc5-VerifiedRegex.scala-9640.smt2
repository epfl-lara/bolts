; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506474 () Bool)

(assert start!506474)

(declare-fun bs!1173051 () Bool)

(declare-fun b!4852375 () Bool)

(assert (= bs!1173051 (and b!4852375 start!506474)))

(declare-fun lambda!242830 () Int)

(declare-fun lambda!242829 () Int)

(assert (=> bs!1173051 (not (= lambda!242830 lambda!242829))))

(assert (=> b!4852375 true))

(declare-fun b!4852372 () Bool)

(declare-fun res!2071348 () Bool)

(declare-fun e!3033437 () Bool)

(assert (=> b!4852372 (=> (not res!2071348) (not e!3033437))))

(declare-datatypes ((V!17733 0))(
  ( (V!17734 (val!22295 Int)) )
))
(declare-datatypes ((K!17487 0))(
  ( (K!17488 (val!22296 Int)) )
))
(declare-datatypes ((tuple2!59426 0))(
  ( (tuple2!59427 (_1!33007 K!17487) (_2!33007 V!17733)) )
))
(declare-datatypes ((List!55770 0))(
  ( (Nil!55646) (Cons!55646 (h!62083 tuple2!59426) (t!363266 List!55770)) )
))
(declare-datatypes ((tuple2!59428 0))(
  ( (tuple2!59429 (_1!33008 (_ BitVec 64)) (_2!33008 List!55770)) )
))
(declare-datatypes ((List!55771 0))(
  ( (Nil!55647) (Cons!55647 (h!62084 tuple2!59428) (t!363267 List!55771)) )
))
(declare-datatypes ((ListLongMap!6521 0))(
  ( (ListLongMap!6522 (toList!7889 List!55771)) )
))
(declare-fun lm!2840 () ListLongMap!6521)

(declare-datatypes ((Hashable!7531 0))(
  ( (HashableExt!7530 (__x!33806 Int)) )
))
(declare-fun hashF!1802 () Hashable!7531)

(declare-fun allKeysSameHashInMap!2845 (ListLongMap!6521 Hashable!7531) Bool)

(assert (=> b!4852372 (= res!2071348 (allKeysSameHashInMap!2845 lm!2840 hashF!1802))))

(declare-fun b!4852373 () Bool)

(declare-fun e!3033436 () Bool)

(declare-fun forall!12982 (List!55771 Int) Bool)

(assert (=> b!4852373 (= e!3033436 (forall!12982 (toList!7889 lm!2840) lambda!242829))))

(declare-fun res!2071349 () Bool)

(assert (=> start!506474 (=> (not res!2071349) (not e!3033437))))

(assert (=> start!506474 (= res!2071349 (forall!12982 (toList!7889 lm!2840) lambda!242829))))

(assert (=> start!506474 e!3033437))

(declare-fun e!3033435 () Bool)

(declare-fun inv!71350 (ListLongMap!6521) Bool)

(assert (=> start!506474 (and (inv!71350 lm!2840) e!3033435)))

(assert (=> start!506474 true))

(declare-fun tp_is_empty!35361 () Bool)

(assert (=> start!506474 tp_is_empty!35361))

(declare-fun b!4852374 () Bool)

(declare-fun res!2071347 () Bool)

(assert (=> b!4852374 (=> res!2071347 e!3033436)))

(declare-fun lt!1990219 () List!55770)

(declare-fun key!6955 () K!17487)

(declare-fun containsKey!4737 (List!55770 K!17487) Bool)

(assert (=> b!4852374 (= res!2071347 (not (containsKey!4737 lt!1990219 key!6955)))))

(assert (=> b!4852375 (= e!3033437 (not e!3033436))))

(declare-fun res!2071344 () Bool)

(assert (=> b!4852375 (=> res!2071344 e!3033436)))

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun allKeysSameHash!2041 (List!55770 (_ BitVec 64) Hashable!7531) Bool)

(assert (=> b!4852375 (= res!2071344 (not (allKeysSameHash!2041 lt!1990219 hash!467 hashF!1802)))))

(declare-fun lt!1990218 () tuple2!59428)

(declare-datatypes ((Unit!145771 0))(
  ( (Unit!145772) )
))
(declare-fun lt!1990217 () Unit!145771)

(declare-fun forallContained!4564 (List!55771 Int tuple2!59428) Unit!145771)

(assert (=> b!4852375 (= lt!1990217 (forallContained!4564 (toList!7889 lm!2840) lambda!242830 lt!1990218))))

(declare-fun contains!19296 (List!55771 tuple2!59428) Bool)

(assert (=> b!4852375 (contains!19296 (toList!7889 lm!2840) lt!1990218)))

(assert (=> b!4852375 (= lt!1990218 (tuple2!59429 hash!467 lt!1990219))))

(declare-fun lt!1990220 () Unit!145771)

(declare-fun lemmaGetValueImpliesTupleContained!792 (ListLongMap!6521 (_ BitVec 64) List!55770) Unit!145771)

(assert (=> b!4852375 (= lt!1990220 (lemmaGetValueImpliesTupleContained!792 lm!2840 hash!467 lt!1990219))))

(declare-fun apply!13470 (ListLongMap!6521 (_ BitVec 64)) List!55770)

(assert (=> b!4852375 (= lt!1990219 (apply!13470 lm!2840 hash!467))))

(declare-fun b!4852376 () Bool)

(declare-fun tp!1365081 () Bool)

(assert (=> b!4852376 (= e!3033435 tp!1365081)))

(declare-fun b!4852377 () Bool)

(declare-fun res!2071345 () Bool)

(assert (=> b!4852377 (=> (not res!2071345) (not e!3033437))))

(declare-fun contains!19297 (ListLongMap!6521 (_ BitVec 64)) Bool)

(assert (=> b!4852377 (= res!2071345 (contains!19297 lm!2840 hash!467))))

(declare-fun b!4852378 () Bool)

(declare-fun res!2071346 () Bool)

(assert (=> b!4852378 (=> (not res!2071346) (not e!3033437))))

(declare-fun hash!5656 (Hashable!7531 K!17487) (_ BitVec 64))

(assert (=> b!4852378 (= res!2071346 (not (= hash!467 (hash!5656 hashF!1802 key!6955))))))

(assert (= (and start!506474 res!2071349) b!4852372))

(assert (= (and b!4852372 res!2071348) b!4852377))

(assert (= (and b!4852377 res!2071345) b!4852378))

(assert (= (and b!4852378 res!2071346) b!4852375))

(assert (= (and b!4852375 (not res!2071344)) b!4852374))

(assert (= (and b!4852374 (not res!2071347)) b!4852373))

(assert (= start!506474 b!4852376))

(declare-fun m!5850588 () Bool)

(assert (=> b!4852375 m!5850588))

(declare-fun m!5850590 () Bool)

(assert (=> b!4852375 m!5850590))

(declare-fun m!5850592 () Bool)

(assert (=> b!4852375 m!5850592))

(declare-fun m!5850594 () Bool)

(assert (=> b!4852375 m!5850594))

(declare-fun m!5850596 () Bool)

(assert (=> b!4852375 m!5850596))

(declare-fun m!5850598 () Bool)

(assert (=> start!506474 m!5850598))

(declare-fun m!5850600 () Bool)

(assert (=> start!506474 m!5850600))

(declare-fun m!5850602 () Bool)

(assert (=> b!4852374 m!5850602))

(declare-fun m!5850604 () Bool)

(assert (=> b!4852377 m!5850604))

(declare-fun m!5850606 () Bool)

(assert (=> b!4852372 m!5850606))

(assert (=> b!4852373 m!5850598))

(declare-fun m!5850608 () Bool)

(assert (=> b!4852378 m!5850608))

(push 1)

(assert (not b!4852378))

(assert (not b!4852376))

(assert (not b!4852377))

(assert tp_is_empty!35361)

(assert (not b!4852373))

(assert (not b!4852372))

(assert (not b!4852374))

(assert (not start!506474))

(assert (not b!4852375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

