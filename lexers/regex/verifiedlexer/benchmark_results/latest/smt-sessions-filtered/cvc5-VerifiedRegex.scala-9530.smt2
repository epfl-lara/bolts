; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502778 () Bool)

(assert start!502778)

(declare-fun b!4835765 () Bool)

(declare-fun e!3022126 () Bool)

(declare-fun e!3022127 () Bool)

(assert (=> b!4835765 (= e!3022126 (not e!3022127))))

(declare-fun res!2060383 () Bool)

(assert (=> b!4835765 (=> res!2060383 e!3022127)))

(declare-datatypes ((K!16937 0))(
  ( (K!16938 (val!21855 Int)) )
))
(declare-datatypes ((V!17183 0))(
  ( (V!17184 (val!21856 Int)) )
))
(declare-datatypes ((tuple2!58582 0))(
  ( (tuple2!58583 (_1!32585 K!16937) (_2!32585 V!17183)) )
))
(declare-datatypes ((List!55324 0))(
  ( (Nil!55200) (Cons!55200 (h!61635 tuple2!58582) (t!362820 List!55324)) )
))
(declare-fun lt!1981584 () List!55324)

(declare-fun key!2791 () K!16937)

(declare-datatypes ((Option!13581 0))(
  ( (None!13580) (Some!13580 (v!49283 tuple2!58582)) )
))
(declare-fun isDefined!10691 (Option!13581) Bool)

(declare-fun getPair!1043 (List!55324 K!16937) Option!13581)

(assert (=> b!4835765 (= res!2060383 (not (isDefined!10691 (getPair!1043 lt!1981584 key!2791))))))

(declare-datatypes ((tuple2!58584 0))(
  ( (tuple2!58585 (_1!32586 (_ BitVec 64)) (_2!32586 List!55324)) )
))
(declare-datatypes ((List!55325 0))(
  ( (Nil!55201) (Cons!55201 (h!61636 tuple2!58584) (t!362821 List!55325)) )
))
(declare-datatypes ((ListLongMap!6157 0))(
  ( (ListLongMap!6158 (toList!7633 List!55325)) )
))
(declare-fun lm!1282 () ListLongMap!6157)

(declare-fun lt!1981587 () tuple2!58584)

(declare-datatypes ((Unit!144584 0))(
  ( (Unit!144585) )
))
(declare-fun lt!1981586 () Unit!144584)

(declare-fun lambda!239390 () Int)

(declare-fun forallContained!4466 (List!55325 Int tuple2!58584) Unit!144584)

(assert (=> b!4835765 (= lt!1981586 (forallContained!4466 (toList!7633 lm!1282) lambda!239390 lt!1981587))))

(declare-fun contains!19022 (List!55325 tuple2!58584) Bool)

(assert (=> b!4835765 (contains!19022 (toList!7633 lm!1282) lt!1981587)))

(declare-fun lt!1981588 () (_ BitVec 64))

(assert (=> b!4835765 (= lt!1981587 (tuple2!58585 lt!1981588 lt!1981584))))

(declare-fun lt!1981583 () Unit!144584)

(declare-fun lemmaGetValueImpliesTupleContained!722 (ListLongMap!6157 (_ BitVec 64) List!55324) Unit!144584)

(assert (=> b!4835765 (= lt!1981583 (lemmaGetValueImpliesTupleContained!722 lm!1282 lt!1981588 lt!1981584))))

(declare-fun apply!13410 (ListLongMap!6157 (_ BitVec 64)) List!55324)

(assert (=> b!4835765 (= lt!1981584 (apply!13410 lm!1282 lt!1981588))))

(declare-fun b!4835766 () Bool)

(declare-fun e!3022128 () Bool)

(assert (=> b!4835766 (= e!3022128 true)))

(declare-datatypes ((ListMap!7003 0))(
  ( (ListMap!7004 (toList!7634 List!55324)) )
))
(declare-fun contains!19023 (ListMap!7003 K!16937) Bool)

(declare-fun extractMap!2721 (List!55325) ListMap!7003)

(assert (=> b!4835766 (contains!19023 (extractMap!2721 (toList!7633 lm!1282)) key!2791)))

(declare-datatypes ((Hashable!7347 0))(
  ( (HashableExt!7346 (__x!33622 Int)) )
))
(declare-fun hashF!961 () Hashable!7347)

(declare-fun lt!1981585 () Unit!144584)

(declare-fun lemmaListContainsThenExtractedMapContains!729 (ListLongMap!6157 K!16937 Hashable!7347) Unit!144584)

(assert (=> b!4835766 (= lt!1981585 (lemmaListContainsThenExtractedMapContains!729 lm!1282 key!2791 hashF!961))))

(declare-fun b!4835767 () Bool)

(declare-fun e!3022125 () Bool)

(declare-fun tp!1363395 () Bool)

(assert (=> b!4835767 (= e!3022125 tp!1363395)))

(declare-fun b!4835768 () Bool)

(declare-fun res!2060386 () Bool)

(declare-fun e!3022129 () Bool)

(assert (=> b!4835768 (=> (not res!2060386) (not e!3022129))))

(declare-fun allKeysSameHashInMap!2663 (ListLongMap!6157 Hashable!7347) Bool)

(assert (=> b!4835768 (= res!2060386 (allKeysSameHashInMap!2663 lm!1282 hashF!961))))

(declare-fun res!2060387 () Bool)

(assert (=> start!502778 (=> (not res!2060387) (not e!3022129))))

(declare-fun forall!12747 (List!55325 Int) Bool)

(assert (=> start!502778 (= res!2060387 (forall!12747 (toList!7633 lm!1282) lambda!239390))))

(assert (=> start!502778 e!3022129))

(declare-fun inv!70838 (ListLongMap!6157) Bool)

(assert (=> start!502778 (and (inv!70838 lm!1282) e!3022125)))

(assert (=> start!502778 true))

(declare-fun tp_is_empty!34793 () Bool)

(assert (=> start!502778 tp_is_empty!34793))

(declare-fun b!4835769 () Bool)

(assert (=> b!4835769 (= e!3022129 e!3022126)))

(declare-fun res!2060385 () Bool)

(assert (=> b!4835769 (=> (not res!2060385) (not e!3022126))))

(declare-fun contains!19024 (ListLongMap!6157 (_ BitVec 64)) Bool)

(assert (=> b!4835769 (= res!2060385 (contains!19024 lm!1282 lt!1981588))))

(declare-fun hash!5535 (Hashable!7347 K!16937) (_ BitVec 64))

(assert (=> b!4835769 (= lt!1981588 (hash!5535 hashF!961 key!2791))))

(declare-fun b!4835770 () Bool)

(assert (=> b!4835770 (= e!3022127 e!3022128)))

(declare-fun res!2060384 () Bool)

(assert (=> b!4835770 (=> res!2060384 e!3022128)))

(assert (=> b!4835770 (= res!2060384 (not (forall!12747 (toList!7633 lm!1282) lambda!239390)))))

(declare-fun containsKeyBiggerList!631 (List!55325 K!16937) Bool)

(assert (=> b!4835770 (containsKeyBiggerList!631 (toList!7633 lm!1282) key!2791)))

(declare-fun lt!1981582 () Unit!144584)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!371 (ListLongMap!6157 K!16937 Hashable!7347) Unit!144584)

(assert (=> b!4835770 (= lt!1981582 (lemmaInLongMapThenContainsKeyBiggerList!371 lm!1282 key!2791 hashF!961))))

(assert (= (and start!502778 res!2060387) b!4835768))

(assert (= (and b!4835768 res!2060386) b!4835769))

(assert (= (and b!4835769 res!2060385) b!4835765))

(assert (= (and b!4835765 (not res!2060383)) b!4835770))

(assert (= (and b!4835770 (not res!2060384)) b!4835766))

(assert (= start!502778 b!4835767))

(declare-fun m!5831046 () Bool)

(assert (=> b!4835765 m!5831046))

(declare-fun m!5831048 () Bool)

(assert (=> b!4835765 m!5831048))

(assert (=> b!4835765 m!5831048))

(declare-fun m!5831050 () Bool)

(assert (=> b!4835765 m!5831050))

(declare-fun m!5831052 () Bool)

(assert (=> b!4835765 m!5831052))

(declare-fun m!5831054 () Bool)

(assert (=> b!4835765 m!5831054))

(declare-fun m!5831056 () Bool)

(assert (=> b!4835765 m!5831056))

(declare-fun m!5831058 () Bool)

(assert (=> b!4835770 m!5831058))

(declare-fun m!5831060 () Bool)

(assert (=> b!4835770 m!5831060))

(declare-fun m!5831062 () Bool)

(assert (=> b!4835770 m!5831062))

(declare-fun m!5831064 () Bool)

(assert (=> b!4835769 m!5831064))

(declare-fun m!5831066 () Bool)

(assert (=> b!4835769 m!5831066))

(assert (=> start!502778 m!5831058))

(declare-fun m!5831068 () Bool)

(assert (=> start!502778 m!5831068))

(declare-fun m!5831070 () Bool)

(assert (=> b!4835766 m!5831070))

(assert (=> b!4835766 m!5831070))

(declare-fun m!5831072 () Bool)

(assert (=> b!4835766 m!5831072))

(declare-fun m!5831074 () Bool)

(assert (=> b!4835766 m!5831074))

(declare-fun m!5831076 () Bool)

(assert (=> b!4835768 m!5831076))

(push 1)

(assert (not b!4835770))

(assert (not b!4835767))

(assert (not b!4835766))

(assert (not start!502778))

(assert (not b!4835769))

(assert tp_is_empty!34793)

(assert (not b!4835768))

(assert (not b!4835765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

