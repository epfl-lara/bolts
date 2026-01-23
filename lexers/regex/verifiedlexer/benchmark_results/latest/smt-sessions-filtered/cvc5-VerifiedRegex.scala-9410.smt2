; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498132 () Bool)

(assert start!498132)

(declare-fun b!4815104 () Bool)

(declare-fun e!3008384 () Bool)

(assert (=> b!4815104 (= e!3008384 (not true))))

(declare-datatypes ((Unit!141852 0))(
  ( (Unit!141853) )
))
(declare-fun lt!1965913 () Unit!141852)

(declare-fun lambda!234311 () Int)

(declare-datatypes ((K!16337 0))(
  ( (K!16338 (val!21375 Int)) )
))
(declare-datatypes ((V!16583 0))(
  ( (V!16584 (val!21376 Int)) )
))
(declare-datatypes ((tuple2!57686 0))(
  ( (tuple2!57687 (_1!32137 K!16337) (_2!32137 V!16583)) )
))
(declare-datatypes ((List!54815 0))(
  ( (Nil!54691) (Cons!54691 (h!61123 tuple2!57686) (t!362311 List!54815)) )
))
(declare-datatypes ((tuple2!57688 0))(
  ( (tuple2!57689 (_1!32138 (_ BitVec 64)) (_2!32138 List!54815)) )
))
(declare-datatypes ((List!54816 0))(
  ( (Nil!54692) (Cons!54692 (h!61124 tuple2!57688) (t!362312 List!54816)) )
))
(declare-datatypes ((ListLongMap!5741 0))(
  ( (ListLongMap!5742 (toList!7261 List!54816)) )
))
(declare-fun lm!1254 () ListLongMap!5741)

(declare-fun lt!1965909 () tuple2!57688)

(declare-fun forallContained!4307 (List!54816 Int tuple2!57688) Unit!141852)

(assert (=> b!4815104 (= lt!1965913 (forallContained!4307 (toList!7261 lm!1254) lambda!234311 lt!1965909))))

(declare-fun lt!1965910 () Unit!141852)

(assert (=> b!4815104 (= lt!1965910 (forallContained!4307 (toList!7261 lm!1254) lambda!234311 lt!1965909))))

(declare-fun lt!1965907 () Unit!141852)

(declare-fun e!3008386 () Unit!141852)

(assert (=> b!4815104 (= lt!1965907 e!3008386)))

(declare-fun c!820675 () Bool)

(declare-fun contains!18478 (List!54816 tuple2!57688) Bool)

(assert (=> b!4815104 (= c!820675 (not (contains!18478 (toList!7261 lm!1254) lt!1965909)))))

(declare-fun lt!1965912 () (_ BitVec 64))

(declare-fun lt!1965914 () List!54815)

(assert (=> b!4815104 (= lt!1965909 (tuple2!57689 lt!1965912 lt!1965914))))

(declare-fun apply!13244 (ListLongMap!5741 (_ BitVec 64)) List!54815)

(assert (=> b!4815104 (= lt!1965914 (apply!13244 lm!1254 lt!1965912))))

(declare-fun contains!18479 (ListLongMap!5741 (_ BitVec 64)) Bool)

(assert (=> b!4815104 (contains!18479 lm!1254 lt!1965912)))

(declare-datatypes ((Hashable!7139 0))(
  ( (HashableExt!7138 (__x!33414 Int)) )
))
(declare-fun hashF!938 () Hashable!7139)

(declare-fun key!2670 () K!16337)

(declare-fun hash!5208 (Hashable!7139 K!16337) (_ BitVec 64))

(assert (=> b!4815104 (= lt!1965912 (hash!5208 hashF!938 key!2670))))

(declare-fun lt!1965906 () Unit!141852)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1077 (ListLongMap!5741 K!16337 Hashable!7139) Unit!141852)

(assert (=> b!4815104 (= lt!1965906 (lemmaInGenMapThenLongMapContainsHash!1077 lm!1254 key!2670 hashF!938))))

(declare-fun res!2048180 () Bool)

(assert (=> start!498132 (=> (not res!2048180) (not e!3008384))))

(declare-fun forall!12445 (List!54816 Int) Bool)

(assert (=> start!498132 (= res!2048180 (forall!12445 (toList!7261 lm!1254) lambda!234311))))

(assert (=> start!498132 e!3008384))

(declare-fun e!3008385 () Bool)

(declare-fun inv!70238 (ListLongMap!5741) Bool)

(assert (=> start!498132 (and (inv!70238 lm!1254) e!3008385)))

(assert (=> start!498132 true))

(declare-fun tp_is_empty!34151 () Bool)

(assert (=> start!498132 tp_is_empty!34151))

(declare-fun b!4815105 () Bool)

(declare-fun Unit!141854 () Unit!141852)

(assert (=> b!4815105 (= e!3008386 Unit!141854)))

(declare-fun lt!1965905 () Unit!141852)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!328 (List!54816 (_ BitVec 64)) Unit!141852)

(assert (=> b!4815105 (= lt!1965905 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!328 (toList!7261 lm!1254) lt!1965912))))

(declare-fun containsKey!4224 (List!54816 (_ BitVec 64)) Bool)

(assert (=> b!4815105 (containsKey!4224 (toList!7261 lm!1254) lt!1965912)))

(declare-fun lt!1965911 () Unit!141852)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2339 (List!54816 (_ BitVec 64)) Unit!141852)

(assert (=> b!4815105 (= lt!1965911 (lemmaContainsKeyImpliesGetValueByKeyDefined!2339 (toList!7261 lm!1254) lt!1965912))))

(declare-datatypes ((Option!13390 0))(
  ( (None!13389) (Some!13389 (v!49036 List!54815)) )
))
(declare-fun isDefined!10527 (Option!13390) Bool)

(declare-fun getValueByKey!2553 (List!54816 (_ BitVec 64)) Option!13390)

(assert (=> b!4815105 (isDefined!10527 (getValueByKey!2553 (toList!7261 lm!1254) lt!1965912))))

(declare-fun lt!1965908 () Unit!141852)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1041 (List!54816 (_ BitVec 64) List!54815) Unit!141852)

(assert (=> b!4815105 (= lt!1965908 (lemmaGetValueByKeyImpliesContainsTuple!1041 (toList!7261 lm!1254) lt!1965912 lt!1965914))))

(assert (=> b!4815105 false))

(declare-fun b!4815106 () Bool)

(declare-fun tp!1361774 () Bool)

(assert (=> b!4815106 (= e!3008385 tp!1361774)))

(declare-fun b!4815107 () Bool)

(declare-fun res!2048178 () Bool)

(assert (=> b!4815107 (=> (not res!2048178) (not e!3008384))))

(declare-datatypes ((ListMap!6675 0))(
  ( (ListMap!6676 (toList!7262 List!54815)) )
))
(declare-fun contains!18480 (ListMap!6675 K!16337) Bool)

(declare-fun extractMap!2589 (List!54816) ListMap!6675)

(assert (=> b!4815107 (= res!2048178 (contains!18480 (extractMap!2589 (toList!7261 lm!1254)) key!2670))))

(declare-fun b!4815108 () Bool)

(declare-fun Unit!141855 () Unit!141852)

(assert (=> b!4815108 (= e!3008386 Unit!141855)))

(declare-fun b!4815109 () Bool)

(declare-fun res!2048179 () Bool)

(assert (=> b!4815109 (=> (not res!2048179) (not e!3008384))))

(declare-fun allKeysSameHashInMap!2455 (ListLongMap!5741 Hashable!7139) Bool)

(assert (=> b!4815109 (= res!2048179 (allKeysSameHashInMap!2455 lm!1254 hashF!938))))

(assert (= (and start!498132 res!2048180) b!4815109))

(assert (= (and b!4815109 res!2048179) b!4815107))

(assert (= (and b!4815107 res!2048178) b!4815104))

(assert (= (and b!4815104 c!820675) b!4815105))

(assert (= (and b!4815104 (not c!820675)) b!4815108))

(assert (= start!498132 b!4815106))

(declare-fun m!5801062 () Bool)

(assert (=> b!4815104 m!5801062))

(declare-fun m!5801064 () Bool)

(assert (=> b!4815104 m!5801064))

(declare-fun m!5801066 () Bool)

(assert (=> b!4815104 m!5801066))

(declare-fun m!5801068 () Bool)

(assert (=> b!4815104 m!5801068))

(declare-fun m!5801070 () Bool)

(assert (=> b!4815104 m!5801070))

(declare-fun m!5801072 () Bool)

(assert (=> b!4815104 m!5801072))

(assert (=> b!4815104 m!5801070))

(declare-fun m!5801074 () Bool)

(assert (=> b!4815107 m!5801074))

(assert (=> b!4815107 m!5801074))

(declare-fun m!5801076 () Bool)

(assert (=> b!4815107 m!5801076))

(declare-fun m!5801078 () Bool)

(assert (=> b!4815105 m!5801078))

(declare-fun m!5801080 () Bool)

(assert (=> b!4815105 m!5801080))

(declare-fun m!5801082 () Bool)

(assert (=> b!4815105 m!5801082))

(declare-fun m!5801084 () Bool)

(assert (=> b!4815105 m!5801084))

(declare-fun m!5801086 () Bool)

(assert (=> b!4815105 m!5801086))

(declare-fun m!5801088 () Bool)

(assert (=> b!4815105 m!5801088))

(assert (=> b!4815105 m!5801080))

(declare-fun m!5801090 () Bool)

(assert (=> b!4815109 m!5801090))

(declare-fun m!5801092 () Bool)

(assert (=> start!498132 m!5801092))

(declare-fun m!5801094 () Bool)

(assert (=> start!498132 m!5801094))

(push 1)

(assert (not b!4815109))

(assert (not b!4815104))

(assert (not b!4815105))

(assert tp_is_empty!34151)

(assert (not b!4815106))

(assert (not start!498132))

(assert (not b!4815107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

