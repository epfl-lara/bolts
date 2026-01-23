; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499308 () Bool)

(assert start!499308)

(declare-fun b!4820002 () Bool)

(declare-fun e!3011455 () Bool)

(declare-datatypes ((V!16803 0))(
  ( (V!16804 (val!21551 Int)) )
))
(declare-datatypes ((K!16557 0))(
  ( (K!16558 (val!21552 Int)) )
))
(declare-datatypes ((tuple2!58038 0))(
  ( (tuple2!58039 (_1!32313 K!16557) (_2!32313 V!16803)) )
))
(declare-datatypes ((List!55004 0))(
  ( (Nil!54880) (Cons!54880 (h!61314 tuple2!58038) (t!362500 List!55004)) )
))
(declare-datatypes ((tuple2!58040 0))(
  ( (tuple2!58041 (_1!32314 (_ BitVec 64)) (_2!32314 List!55004)) )
))
(declare-datatypes ((List!55005 0))(
  ( (Nil!54881) (Cons!54881 (h!61315 tuple2!58040) (t!362501 List!55005)) )
))
(declare-datatypes ((ListLongMap!5917 0))(
  ( (ListLongMap!5918 (toList!7423 List!55005)) )
))
(declare-fun lm!2280 () ListLongMap!5917)

(declare-fun lambda!235375 () Int)

(declare-fun forall!12545 (List!55005 Int) Bool)

(assert (=> b!4820002 (= e!3011455 (not (forall!12545 (toList!7423 lm!2280) lambda!235375)))))

(declare-fun b!4820003 () Bool)

(declare-fun e!3011456 () Bool)

(assert (=> b!4820003 (= e!3011456 e!3011455)))

(declare-fun res!2051124 () Bool)

(assert (=> b!4820003 (=> (not res!2051124) (not e!3011455))))

(declare-fun lt!1969197 () (_ BitVec 64))

(declare-fun contains!18700 (ListLongMap!5917 (_ BitVec 64)) Bool)

(assert (=> b!4820003 (= res!2051124 (contains!18700 lm!2280 lt!1969197))))

(declare-datatypes ((Hashable!7227 0))(
  ( (HashableExt!7226 (__x!33502 Int)) )
))
(declare-fun hashF!1509 () Hashable!7227)

(declare-fun key!5428 () K!16557)

(declare-fun hash!5316 (Hashable!7227 K!16557) (_ BitVec 64))

(assert (=> b!4820003 (= lt!1969197 (hash!5316 hashF!1509 key!5428))))

(declare-fun b!4820004 () Bool)

(declare-fun e!3011454 () Bool)

(declare-fun tp!1362218 () Bool)

(assert (=> b!4820004 (= e!3011454 tp!1362218)))

(declare-fun b!4820005 () Bool)

(declare-fun res!2051123 () Bool)

(assert (=> b!4820005 (=> (not res!2051123) (not e!3011455))))

(assert (=> b!4820005 (= res!2051123 (and (or (not (is-Cons!54881 (toList!7423 lm!2280))) (not (= (_1!32314 (h!61315 (toList!7423 lm!2280))) lt!1969197))) (not (is-Cons!54881 (toList!7423 lm!2280)))))))

(declare-fun b!4820006 () Bool)

(declare-fun res!2051126 () Bool)

(assert (=> b!4820006 (=> (not res!2051126) (not e!3011456))))

(declare-fun allKeysSameHashInMap!2543 (ListLongMap!5917 Hashable!7227) Bool)

(assert (=> b!4820006 (= res!2051126 (allKeysSameHashInMap!2543 lm!2280 hashF!1509))))

(declare-fun b!4820007 () Bool)

(declare-fun res!2051125 () Bool)

(assert (=> b!4820007 (=> (not res!2051125) (not e!3011455))))

(declare-fun containsKey!4295 (List!55004 K!16557) Bool)

(declare-fun apply!13314 (ListLongMap!5917 (_ BitVec 64)) List!55004)

(assert (=> b!4820007 (= res!2051125 (not (containsKey!4295 (apply!13314 lm!2280 lt!1969197) key!5428)))))

(declare-fun res!2051122 () Bool)

(assert (=> start!499308 (=> (not res!2051122) (not e!3011456))))

(assert (=> start!499308 (= res!2051122 (forall!12545 (toList!7423 lm!2280) lambda!235375))))

(assert (=> start!499308 e!3011456))

(declare-fun inv!70458 (ListLongMap!5917) Bool)

(assert (=> start!499308 (and (inv!70458 lm!2280) e!3011454)))

(assert (=> start!499308 true))

(declare-fun tp_is_empty!34343 () Bool)

(assert (=> start!499308 tp_is_empty!34343))

(assert (= (and start!499308 res!2051122) b!4820006))

(assert (= (and b!4820006 res!2051126) b!4820003))

(assert (= (and b!4820003 res!2051124) b!4820007))

(assert (= (and b!4820007 res!2051125) b!4820005))

(assert (= (and b!4820005 res!2051123) b!4820002))

(assert (= start!499308 b!4820004))

(declare-fun m!5807420 () Bool)

(assert (=> b!4820003 m!5807420))

(declare-fun m!5807422 () Bool)

(assert (=> b!4820003 m!5807422))

(declare-fun m!5807424 () Bool)

(assert (=> b!4820006 m!5807424))

(declare-fun m!5807426 () Bool)

(assert (=> b!4820007 m!5807426))

(assert (=> b!4820007 m!5807426))

(declare-fun m!5807428 () Bool)

(assert (=> b!4820007 m!5807428))

(declare-fun m!5807430 () Bool)

(assert (=> b!4820002 m!5807430))

(assert (=> start!499308 m!5807430))

(declare-fun m!5807432 () Bool)

(assert (=> start!499308 m!5807432))

(push 1)

(assert (not start!499308))

(assert (not b!4820004))

(assert (not b!4820007))

(assert (not b!4820006))

(assert (not b!4820002))

(assert (not b!4820003))

(assert tp_is_empty!34343)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

