; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502770 () Bool)

(assert start!502770)

(declare-fun b!4835703 () Bool)

(declare-fun e!3022076 () Bool)

(declare-fun tp!1363383 () Bool)

(assert (=> b!4835703 (= e!3022076 tp!1363383)))

(declare-fun b!4835704 () Bool)

(declare-fun e!3022077 () Bool)

(declare-datatypes ((K!16927 0))(
  ( (K!16928 (val!21847 Int)) )
))
(declare-datatypes ((V!17173 0))(
  ( (V!17174 (val!21848 Int)) )
))
(declare-datatypes ((tuple2!58566 0))(
  ( (tuple2!58567 (_1!32577 K!16927) (_2!32577 V!17173)) )
))
(declare-datatypes ((List!55316 0))(
  ( (Nil!55192) (Cons!55192 (h!61627 tuple2!58566) (t!362812 List!55316)) )
))
(declare-datatypes ((tuple2!58568 0))(
  ( (tuple2!58569 (_1!32578 (_ BitVec 64)) (_2!32578 List!55316)) )
))
(declare-datatypes ((List!55317 0))(
  ( (Nil!55193) (Cons!55193 (h!61628 tuple2!58568) (t!362813 List!55317)) )
))
(declare-datatypes ((ListLongMap!6149 0))(
  ( (ListLongMap!6150 (toList!7629 List!55317)) )
))
(declare-fun lm!1282 () ListLongMap!6149)

(declare-fun lambda!239366 () Int)

(declare-fun forall!12743 (List!55317 Int) Bool)

(assert (=> b!4835704 (= e!3022077 (forall!12743 (toList!7629 lm!1282) lambda!239366))))

(declare-fun key!2791 () K!16927)

(declare-fun containsKeyBiggerList!627 (List!55317 K!16927) Bool)

(assert (=> b!4835704 (containsKeyBiggerList!627 (toList!7629 lm!1282) key!2791)))

(declare-datatypes ((Hashable!7343 0))(
  ( (HashableExt!7342 (__x!33618 Int)) )
))
(declare-fun hashF!961 () Hashable!7343)

(declare-datatypes ((Unit!144576 0))(
  ( (Unit!144577) )
))
(declare-fun lt!1981513 () Unit!144576)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!367 (ListLongMap!6149 K!16927 Hashable!7343) Unit!144576)

(assert (=> b!4835704 (= lt!1981513 (lemmaInLongMapThenContainsKeyBiggerList!367 lm!1282 key!2791 hashF!961))))

(declare-fun b!4835705 () Bool)

(declare-fun e!3022078 () Bool)

(declare-fun e!3022075 () Bool)

(assert (=> b!4835705 (= e!3022078 e!3022075)))

(declare-fun res!2060334 () Bool)

(assert (=> b!4835705 (=> (not res!2060334) (not e!3022075))))

(declare-fun lt!1981512 () (_ BitVec 64))

(declare-fun contains!19014 (ListLongMap!6149 (_ BitVec 64)) Bool)

(assert (=> b!4835705 (= res!2060334 (contains!19014 lm!1282 lt!1981512))))

(declare-fun hash!5531 (Hashable!7343 K!16927) (_ BitVec 64))

(assert (=> b!4835705 (= lt!1981512 (hash!5531 hashF!961 key!2791))))

(declare-fun res!2060336 () Bool)

(assert (=> start!502770 (=> (not res!2060336) (not e!3022078))))

(assert (=> start!502770 (= res!2060336 (forall!12743 (toList!7629 lm!1282) lambda!239366))))

(assert (=> start!502770 e!3022078))

(declare-fun inv!70828 (ListLongMap!6149) Bool)

(assert (=> start!502770 (and (inv!70828 lm!1282) e!3022076)))

(assert (=> start!502770 true))

(declare-fun tp_is_empty!34785 () Bool)

(assert (=> start!502770 tp_is_empty!34785))

(declare-fun b!4835706 () Bool)

(declare-fun res!2060335 () Bool)

(assert (=> b!4835706 (=> (not res!2060335) (not e!3022078))))

(declare-fun allKeysSameHashInMap!2659 (ListLongMap!6149 Hashable!7343) Bool)

(assert (=> b!4835706 (= res!2060335 (allKeysSameHashInMap!2659 lm!1282 hashF!961))))

(declare-fun b!4835707 () Bool)

(assert (=> b!4835707 (= e!3022075 (not e!3022077))))

(declare-fun res!2060333 () Bool)

(assert (=> b!4835707 (=> res!2060333 e!3022077)))

(declare-fun lt!1981508 () List!55316)

(declare-datatypes ((Option!13577 0))(
  ( (None!13576) (Some!13576 (v!49279 tuple2!58566)) )
))
(declare-fun isDefined!10687 (Option!13577) Bool)

(declare-fun getPair!1039 (List!55316 K!16927) Option!13577)

(assert (=> b!4835707 (= res!2060333 (not (isDefined!10687 (getPair!1039 lt!1981508 key!2791))))))

(declare-fun lt!1981509 () Unit!144576)

(declare-fun lt!1981511 () tuple2!58568)

(declare-fun forallContained!4462 (List!55317 Int tuple2!58568) Unit!144576)

(assert (=> b!4835707 (= lt!1981509 (forallContained!4462 (toList!7629 lm!1282) lambda!239366 lt!1981511))))

(declare-fun contains!19015 (List!55317 tuple2!58568) Bool)

(assert (=> b!4835707 (contains!19015 (toList!7629 lm!1282) lt!1981511)))

(assert (=> b!4835707 (= lt!1981511 (tuple2!58569 lt!1981512 lt!1981508))))

(declare-fun lt!1981510 () Unit!144576)

(declare-fun lemmaGetValueImpliesTupleContained!718 (ListLongMap!6149 (_ BitVec 64) List!55316) Unit!144576)

(assert (=> b!4835707 (= lt!1981510 (lemmaGetValueImpliesTupleContained!718 lm!1282 lt!1981512 lt!1981508))))

(declare-fun apply!13406 (ListLongMap!6149 (_ BitVec 64)) List!55316)

(assert (=> b!4835707 (= lt!1981508 (apply!13406 lm!1282 lt!1981512))))

(assert (= (and start!502770 res!2060336) b!4835706))

(assert (= (and b!4835706 res!2060335) b!4835705))

(assert (= (and b!4835705 res!2060334) b!4835707))

(assert (= (and b!4835707 (not res!2060333)) b!4835704))

(assert (= start!502770 b!4835703))

(declare-fun m!5830942 () Bool)

(assert (=> start!502770 m!5830942))

(declare-fun m!5830944 () Bool)

(assert (=> start!502770 m!5830944))

(declare-fun m!5830946 () Bool)

(assert (=> b!4835706 m!5830946))

(declare-fun m!5830948 () Bool)

(assert (=> b!4835705 m!5830948))

(declare-fun m!5830950 () Bool)

(assert (=> b!4835705 m!5830950))

(assert (=> b!4835704 m!5830942))

(declare-fun m!5830952 () Bool)

(assert (=> b!4835704 m!5830952))

(declare-fun m!5830954 () Bool)

(assert (=> b!4835704 m!5830954))

(declare-fun m!5830956 () Bool)

(assert (=> b!4835707 m!5830956))

(declare-fun m!5830958 () Bool)

(assert (=> b!4835707 m!5830958))

(declare-fun m!5830960 () Bool)

(assert (=> b!4835707 m!5830960))

(declare-fun m!5830962 () Bool)

(assert (=> b!4835707 m!5830962))

(assert (=> b!4835707 m!5830956))

(declare-fun m!5830964 () Bool)

(assert (=> b!4835707 m!5830964))

(declare-fun m!5830966 () Bool)

(assert (=> b!4835707 m!5830966))

(push 1)

(assert (not b!4835703))

(assert (not b!4835705))

(assert (not b!4835706))

(assert (not b!4835704))

(assert (not start!502770))

(assert (not b!4835707))

(assert tp_is_empty!34785)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

