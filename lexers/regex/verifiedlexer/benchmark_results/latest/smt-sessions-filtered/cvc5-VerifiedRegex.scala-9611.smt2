; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505306 () Bool)

(assert start!505306)

(declare-fun b!4848074 () Bool)

(declare-fun res!2068601 () Bool)

(declare-fun e!3030330 () Bool)

(assert (=> b!4848074 (=> res!2068601 e!3030330)))

(declare-datatypes ((K!17342 0))(
  ( (K!17343 (val!22179 Int)) )
))
(declare-datatypes ((V!17588 0))(
  ( (V!17589 (val!22180 Int)) )
))
(declare-datatypes ((tuple2!59230 0))(
  ( (tuple2!59231 (_1!32909 K!17342) (_2!32909 V!17588)) )
))
(declare-datatypes ((List!55672 0))(
  ( (Nil!55548) (Cons!55548 (h!61985 tuple2!59230) (t!363168 List!55672)) )
))
(declare-datatypes ((tuple2!59232 0))(
  ( (tuple2!59233 (_1!32910 (_ BitVec 64)) (_2!32910 List!55672)) )
))
(declare-datatypes ((List!55673 0))(
  ( (Nil!55549) (Cons!55549 (h!61986 tuple2!59232) (t!363169 List!55673)) )
))
(declare-datatypes ((ListLongMap!6453 0))(
  ( (ListLongMap!6454 (toList!7855 List!55673)) )
))
(declare-fun lm!2646 () ListLongMap!6453)

(declare-fun lt!1988836 () (_ BitVec 64))

(assert (=> b!4848074 (= res!2068601 (or (and (is-Cons!55549 (toList!7855 lm!2646)) (= (_1!32910 (h!61986 (toList!7855 lm!2646))) lt!1988836)) (not (is-Cons!55549 (toList!7855 lm!2646))) (= lt!1988836 (_1!32910 (h!61986 (toList!7855 lm!2646))))))))

(declare-fun b!4848075 () Bool)

(declare-fun lambda!242521 () Int)

(declare-fun forall!12948 (List!55673 Int) Bool)

(assert (=> b!4848075 (= e!3030330 (forall!12948 (toList!7855 lm!2646) lambda!242521))))

(declare-fun b!4848076 () Bool)

(declare-fun res!2068599 () Bool)

(declare-fun e!3030327 () Bool)

(assert (=> b!4848076 (=> (not res!2068599) (not e!3030327))))

(declare-datatypes ((Hashable!7495 0))(
  ( (HashableExt!7494 (__x!33770 Int)) )
))
(declare-fun hashF!1641 () Hashable!7495)

(declare-fun allKeysSameHashInMap!2811 (ListLongMap!6453 Hashable!7495) Bool)

(assert (=> b!4848076 (= res!2068599 (allKeysSameHashInMap!2811 lm!2646 hashF!1641))))

(declare-fun b!4848077 () Bool)

(declare-fun e!3030328 () Bool)

(declare-fun tp!1364631 () Bool)

(assert (=> b!4848077 (= e!3030328 tp!1364631)))

(declare-fun res!2068598 () Bool)

(assert (=> start!505306 (=> (not res!2068598) (not e!3030327))))

(assert (=> start!505306 (= res!2068598 (forall!12948 (toList!7855 lm!2646) lambda!242521))))

(assert (=> start!505306 e!3030327))

(declare-fun inv!71229 (ListLongMap!6453) Bool)

(assert (=> start!505306 (and (inv!71229 lm!2646) e!3030328)))

(assert (=> start!505306 true))

(declare-fun tp_is_empty!35177 () Bool)

(assert (=> start!505306 tp_is_empty!35177))

(declare-fun b!4848078 () Bool)

(declare-fun e!3030329 () Bool)

(assert (=> b!4848078 (= e!3030329 (not e!3030330))))

(declare-fun res!2068602 () Bool)

(assert (=> b!4848078 (=> res!2068602 e!3030330)))

(declare-fun lt!1988837 () List!55672)

(declare-fun key!6445 () K!17342)

(declare-datatypes ((Option!13666 0))(
  ( (None!13665) (Some!13665 (v!49429 tuple2!59230)) )
))
(declare-fun isDefined!10758 (Option!13666) Bool)

(declare-fun getPair!1085 (List!55672 K!17342) Option!13666)

(assert (=> b!4848078 (= res!2068602 (not (isDefined!10758 (getPair!1085 lt!1988837 key!6445))))))

(declare-fun lt!1988835 () tuple2!59232)

(declare-datatypes ((Unit!145682 0))(
  ( (Unit!145683) )
))
(declare-fun lt!1988833 () Unit!145682)

(declare-fun forallContained!4536 (List!55673 Int tuple2!59232) Unit!145682)

(assert (=> b!4848078 (= lt!1988833 (forallContained!4536 (toList!7855 lm!2646) lambda!242521 lt!1988835))))

(declare-fun contains!19203 (List!55673 tuple2!59232) Bool)

(assert (=> b!4848078 (contains!19203 (toList!7855 lm!2646) lt!1988835)))

(assert (=> b!4848078 (= lt!1988835 (tuple2!59233 lt!1988836 lt!1988837))))

(declare-fun lt!1988834 () Unit!145682)

(declare-fun lemmaGetValueImpliesTupleContained!762 (ListLongMap!6453 (_ BitVec 64) List!55672) Unit!145682)

(assert (=> b!4848078 (= lt!1988834 (lemmaGetValueImpliesTupleContained!762 lm!2646 lt!1988836 lt!1988837))))

(declare-fun apply!13438 (ListLongMap!6453 (_ BitVec 64)) List!55672)

(assert (=> b!4848078 (= lt!1988837 (apply!13438 lm!2646 lt!1988836))))

(declare-fun b!4848079 () Bool)

(assert (=> b!4848079 (= e!3030327 e!3030329)))

(declare-fun res!2068600 () Bool)

(assert (=> b!4848079 (=> (not res!2068600) (not e!3030329))))

(declare-fun contains!19204 (ListLongMap!6453 (_ BitVec 64)) Bool)

(assert (=> b!4848079 (= res!2068600 (contains!19204 lm!2646 lt!1988836))))

(declare-fun hash!5583 (Hashable!7495 K!17342) (_ BitVec 64))

(assert (=> b!4848079 (= lt!1988836 (hash!5583 hashF!1641 key!6445))))

(assert (= (and start!505306 res!2068598) b!4848076))

(assert (= (and b!4848076 res!2068599) b!4848079))

(assert (= (and b!4848079 res!2068600) b!4848078))

(assert (= (and b!4848078 (not res!2068602)) b!4848074))

(assert (= (and b!4848074 (not res!2068601)) b!4848075))

(assert (= start!505306 b!4848077))

(declare-fun m!5846128 () Bool)

(assert (=> b!4848076 m!5846128))

(declare-fun m!5846130 () Bool)

(assert (=> b!4848078 m!5846130))

(declare-fun m!5846132 () Bool)

(assert (=> b!4848078 m!5846132))

(declare-fun m!5846134 () Bool)

(assert (=> b!4848078 m!5846134))

(declare-fun m!5846136 () Bool)

(assert (=> b!4848078 m!5846136))

(assert (=> b!4848078 m!5846132))

(declare-fun m!5846138 () Bool)

(assert (=> b!4848078 m!5846138))

(declare-fun m!5846140 () Bool)

(assert (=> b!4848078 m!5846140))

(declare-fun m!5846142 () Bool)

(assert (=> start!505306 m!5846142))

(declare-fun m!5846144 () Bool)

(assert (=> start!505306 m!5846144))

(declare-fun m!5846146 () Bool)

(assert (=> b!4848079 m!5846146))

(declare-fun m!5846148 () Bool)

(assert (=> b!4848079 m!5846148))

(assert (=> b!4848075 m!5846142))

(push 1)

(assert (not b!4848076))

(assert (not b!4848079))

(assert (not b!4848077))

(assert (not start!505306))

(assert (not b!4848075))

(assert (not b!4848078))

(assert tp_is_empty!35177)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

