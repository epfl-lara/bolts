; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497770 () Bool)

(assert start!497770)

(declare-fun b!4813689 () Bool)

(declare-datatypes ((Unit!141741 0))(
  ( (Unit!141742) )
))
(declare-fun e!3007470 () Unit!141741)

(declare-fun Unit!141743 () Unit!141741)

(assert (=> b!4813689 (= e!3007470 Unit!141743)))

(declare-fun b!4813690 () Bool)

(declare-fun e!3007471 () Bool)

(declare-fun tp!1361644 () Bool)

(assert (=> b!4813690 (= e!3007471 tp!1361644)))

(declare-fun b!4813691 () Bool)

(declare-fun res!2047437 () Bool)

(declare-fun e!3007469 () Bool)

(assert (=> b!4813691 (=> (not res!2047437) (not e!3007469))))

(declare-datatypes ((K!16277 0))(
  ( (K!16278 (val!21327 Int)) )
))
(declare-datatypes ((V!16523 0))(
  ( (V!16524 (val!21328 Int)) )
))
(declare-datatypes ((tuple2!57590 0))(
  ( (tuple2!57591 (_1!32089 K!16277) (_2!32089 V!16523)) )
))
(declare-datatypes ((List!54762 0))(
  ( (Nil!54638) (Cons!54638 (h!61070 tuple2!57590) (t!362258 List!54762)) )
))
(declare-datatypes ((tuple2!57592 0))(
  ( (tuple2!57593 (_1!32090 (_ BitVec 64)) (_2!32090 List!54762)) )
))
(declare-datatypes ((List!54763 0))(
  ( (Nil!54639) (Cons!54639 (h!61071 tuple2!57592) (t!362259 List!54763)) )
))
(declare-datatypes ((ListLongMap!5693 0))(
  ( (ListLongMap!5694 (toList!7213 List!54763)) )
))
(declare-fun lm!1254 () ListLongMap!5693)

(declare-datatypes ((Hashable!7115 0))(
  ( (HashableExt!7114 (__x!33390 Int)) )
))
(declare-fun hashF!938 () Hashable!7115)

(declare-fun allKeysSameHashInMap!2431 (ListLongMap!5693 Hashable!7115) Bool)

(assert (=> b!4813691 (= res!2047437 (allKeysSameHashInMap!2431 lm!1254 hashF!938))))

(declare-fun b!4813692 () Bool)

(declare-fun e!3007472 () Bool)

(declare-fun lt!1964618 () Bool)

(assert (=> b!4813692 (= e!3007472 (not lt!1964618))))

(declare-fun b!4813693 () Bool)

(declare-fun res!2047436 () Bool)

(assert (=> b!4813693 (=> (not res!2047436) (not e!3007469))))

(declare-fun key!2670 () K!16277)

(declare-datatypes ((ListMap!6627 0))(
  ( (ListMap!6628 (toList!7214 List!54762)) )
))
(declare-fun contains!18399 (ListMap!6627 K!16277) Bool)

(declare-fun extractMap!2565 (List!54763) ListMap!6627)

(assert (=> b!4813693 (= res!2047436 (contains!18399 (extractMap!2565 (toList!7213 lm!1254)) key!2670))))

(declare-fun b!4813694 () Bool)

(declare-fun Unit!141744 () Unit!141741)

(assert (=> b!4813694 (= e!3007470 Unit!141744)))

(declare-fun lt!1964621 () Unit!141741)

(declare-fun lt!1964623 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!306 (List!54763 (_ BitVec 64)) Unit!141741)

(assert (=> b!4813694 (= lt!1964621 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!306 (toList!7213 lm!1254) lt!1964623))))

(declare-fun containsKey!4194 (List!54763 (_ BitVec 64)) Bool)

(assert (=> b!4813694 (containsKey!4194 (toList!7213 lm!1254) lt!1964623)))

(declare-fun lt!1964619 () Unit!141741)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2312 (List!54763 (_ BitVec 64)) Unit!141741)

(assert (=> b!4813694 (= lt!1964619 (lemmaContainsKeyImpliesGetValueByKeyDefined!2312 (toList!7213 lm!1254) lt!1964623))))

(declare-datatypes ((Option!13358 0))(
  ( (None!13357) (Some!13357 (v!48990 List!54762)) )
))
(declare-fun isDefined!10495 (Option!13358) Bool)

(declare-fun getValueByKey!2525 (List!54763 (_ BitVec 64)) Option!13358)

(assert (=> b!4813694 (isDefined!10495 (getValueByKey!2525 (toList!7213 lm!1254) lt!1964623))))

(declare-fun lt!1964622 () Unit!141741)

(declare-fun lt!1964625 () List!54762)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1023 (List!54763 (_ BitVec 64) List!54762) Unit!141741)

(assert (=> b!4813694 (= lt!1964622 (lemmaGetValueByKeyImpliesContainsTuple!1023 (toList!7213 lm!1254) lt!1964623 lt!1964625))))

(assert (=> b!4813694 false))

(declare-fun res!2047435 () Bool)

(assert (=> start!497770 (=> (not res!2047435) (not e!3007469))))

(declare-fun lambda!233976 () Int)

(declare-fun forall!12419 (List!54763 Int) Bool)

(assert (=> start!497770 (= res!2047435 (forall!12419 (toList!7213 lm!1254) lambda!233976))))

(assert (=> start!497770 e!3007469))

(declare-fun inv!70178 (ListLongMap!5693) Bool)

(assert (=> start!497770 (and (inv!70178 lm!1254) e!3007471)))

(assert (=> start!497770 true))

(declare-fun tp_is_empty!34099 () Bool)

(assert (=> start!497770 tp_is_empty!34099))

(declare-fun b!4813695 () Bool)

(assert (=> b!4813695 (= e!3007469 (not e!3007472))))

(declare-fun res!2047438 () Bool)

(assert (=> b!4813695 (=> (not res!2047438) (not e!3007472))))

(assert (=> b!4813695 (= res!2047438 (forall!12419 (toList!7213 lm!1254) lambda!233976))))

(declare-fun lt!1964620 () Unit!141741)

(assert (=> b!4813695 (= lt!1964620 e!3007470)))

(declare-fun c!820415 () Bool)

(assert (=> b!4813695 (= c!820415 lt!1964618)))

(declare-fun contains!18400 (List!54763 tuple2!57592) Bool)

(assert (=> b!4813695 (= lt!1964618 (not (contains!18400 (toList!7213 lm!1254) (tuple2!57593 lt!1964623 lt!1964625))))))

(declare-fun apply!13220 (ListLongMap!5693 (_ BitVec 64)) List!54762)

(assert (=> b!4813695 (= lt!1964625 (apply!13220 lm!1254 lt!1964623))))

(declare-fun contains!18401 (ListLongMap!5693 (_ BitVec 64)) Bool)

(assert (=> b!4813695 (contains!18401 lm!1254 lt!1964623)))

(declare-fun hash!5178 (Hashable!7115 K!16277) (_ BitVec 64))

(assert (=> b!4813695 (= lt!1964623 (hash!5178 hashF!938 key!2670))))

(declare-fun lt!1964624 () Unit!141741)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1053 (ListLongMap!5693 K!16277 Hashable!7115) Unit!141741)

(assert (=> b!4813695 (= lt!1964624 (lemmaInGenMapThenLongMapContainsHash!1053 lm!1254 key!2670 hashF!938))))

(assert (= (and start!497770 res!2047435) b!4813691))

(assert (= (and b!4813691 res!2047437) b!4813693))

(assert (= (and b!4813693 res!2047436) b!4813695))

(assert (= (and b!4813695 c!820415) b!4813694))

(assert (= (and b!4813695 (not c!820415)) b!4813689))

(assert (= (and b!4813695 res!2047438) b!4813692))

(assert (= start!497770 b!4813690))

(declare-fun m!5799378 () Bool)

(assert (=> b!4813691 m!5799378))

(declare-fun m!5799380 () Bool)

(assert (=> start!497770 m!5799380))

(declare-fun m!5799382 () Bool)

(assert (=> start!497770 m!5799382))

(declare-fun m!5799384 () Bool)

(assert (=> b!4813695 m!5799384))

(declare-fun m!5799386 () Bool)

(assert (=> b!4813695 m!5799386))

(assert (=> b!4813695 m!5799380))

(declare-fun m!5799388 () Bool)

(assert (=> b!4813695 m!5799388))

(declare-fun m!5799390 () Bool)

(assert (=> b!4813695 m!5799390))

(declare-fun m!5799392 () Bool)

(assert (=> b!4813695 m!5799392))

(declare-fun m!5799394 () Bool)

(assert (=> b!4813693 m!5799394))

(assert (=> b!4813693 m!5799394))

(declare-fun m!5799396 () Bool)

(assert (=> b!4813693 m!5799396))

(declare-fun m!5799398 () Bool)

(assert (=> b!4813694 m!5799398))

(declare-fun m!5799400 () Bool)

(assert (=> b!4813694 m!5799400))

(declare-fun m!5799402 () Bool)

(assert (=> b!4813694 m!5799402))

(declare-fun m!5799404 () Bool)

(assert (=> b!4813694 m!5799404))

(declare-fun m!5799406 () Bool)

(assert (=> b!4813694 m!5799406))

(assert (=> b!4813694 m!5799398))

(declare-fun m!5799408 () Bool)

(assert (=> b!4813694 m!5799408))

(push 1)

(assert (not b!4813694))

(assert tp_is_empty!34099)

(assert (not b!4813695))

(assert (not b!4813691))

(assert (not b!4813693))

(assert (not b!4813690))

(assert (not start!497770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

