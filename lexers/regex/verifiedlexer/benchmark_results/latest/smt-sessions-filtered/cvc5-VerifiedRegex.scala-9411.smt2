; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498136 () Bool)

(assert start!498136)

(declare-fun res!2048196 () Bool)

(declare-fun e!3008401 () Bool)

(assert (=> start!498136 (=> (not res!2048196) (not e!3008401))))

(declare-datatypes ((K!16342 0))(
  ( (K!16343 (val!21379 Int)) )
))
(declare-datatypes ((V!16588 0))(
  ( (V!16589 (val!21380 Int)) )
))
(declare-datatypes ((tuple2!57694 0))(
  ( (tuple2!57695 (_1!32141 K!16342) (_2!32141 V!16588)) )
))
(declare-datatypes ((List!54819 0))(
  ( (Nil!54695) (Cons!54695 (h!61127 tuple2!57694) (t!362315 List!54819)) )
))
(declare-datatypes ((tuple2!57696 0))(
  ( (tuple2!57697 (_1!32142 (_ BitVec 64)) (_2!32142 List!54819)) )
))
(declare-datatypes ((List!54820 0))(
  ( (Nil!54696) (Cons!54696 (h!61128 tuple2!57696) (t!362316 List!54820)) )
))
(declare-datatypes ((ListLongMap!5745 0))(
  ( (ListLongMap!5746 (toList!7265 List!54820)) )
))
(declare-fun lm!2251 () ListLongMap!5745)

(declare-fun lambda!234323 () Int)

(declare-fun forall!12447 (List!54820 Int) Bool)

(assert (=> start!498136 (= res!2048196 (forall!12447 (toList!7265 lm!2251) lambda!234323))))

(assert (=> start!498136 e!3008401))

(declare-fun e!3008400 () Bool)

(declare-fun inv!70243 (ListLongMap!5745) Bool)

(assert (=> start!498136 (and (inv!70243 lm!2251) e!3008400)))

(assert (=> start!498136 true))

(declare-fun tp_is_empty!34155 () Bool)

(assert (=> start!498136 tp_is_empty!34155))

(declare-fun b!4815136 () Bool)

(declare-fun res!2048197 () Bool)

(assert (=> b!4815136 (=> (not res!2048197) (not e!3008401))))

(declare-datatypes ((Hashable!7141 0))(
  ( (HashableExt!7140 (__x!33416 Int)) )
))
(declare-fun hashF!1486 () Hashable!7141)

(declare-fun allKeysSameHashInMap!2457 (ListLongMap!5745 Hashable!7141) Bool)

(assert (=> b!4815136 (= res!2048197 (allKeysSameHashInMap!2457 lm!2251 hashF!1486))))

(declare-fun b!4815137 () Bool)

(declare-fun res!2048198 () Bool)

(assert (=> b!4815137 (=> (not res!2048198) (not e!3008401))))

(declare-fun key!5322 () K!16342)

(declare-datatypes ((ListMap!6679 0))(
  ( (ListMap!6680 (toList!7266 List!54819)) )
))
(declare-fun contains!18484 (ListMap!6679 K!16342) Bool)

(declare-fun extractMap!2591 (List!54820) ListMap!6679)

(assert (=> b!4815137 (= res!2048198 (contains!18484 (extractMap!2591 (toList!7265 lm!2251)) key!5322))))

(declare-fun b!4815138 () Bool)

(assert (=> b!4815138 (= e!3008401 (not true))))

(declare-datatypes ((Unit!141860 0))(
  ( (Unit!141861) )
))
(declare-fun lt!1965957 () Unit!141860)

(declare-fun lt!1965958 () tuple2!57696)

(declare-fun forallContained!4309 (List!54820 Int tuple2!57696) Unit!141860)

(assert (=> b!4815138 (= lt!1965957 (forallContained!4309 (toList!7265 lm!2251) lambda!234323 lt!1965958))))

(declare-fun contains!18485 (List!54820 tuple2!57696) Bool)

(assert (=> b!4815138 (contains!18485 (toList!7265 lm!2251) lt!1965958)))

(declare-fun lt!1965961 () (_ BitVec 64))

(declare-fun lt!1965962 () List!54819)

(assert (=> b!4815138 (= lt!1965958 (tuple2!57697 lt!1965961 lt!1965962))))

(declare-fun lt!1965959 () Unit!141860)

(declare-fun lemmaGetValueImpliesTupleContained!652 (ListLongMap!5745 (_ BitVec 64) List!54819) Unit!141860)

(assert (=> b!4815138 (= lt!1965959 (lemmaGetValueImpliesTupleContained!652 lm!2251 lt!1965961 lt!1965962))))

(declare-fun apply!13246 (ListLongMap!5745 (_ BitVec 64)) List!54819)

(assert (=> b!4815138 (= lt!1965962 (apply!13246 lm!2251 lt!1965961))))

(declare-fun contains!18486 (ListLongMap!5745 (_ BitVec 64)) Bool)

(assert (=> b!4815138 (contains!18486 lm!2251 lt!1965961)))

(declare-fun hash!5210 (Hashable!7141 K!16342) (_ BitVec 64))

(assert (=> b!4815138 (= lt!1965961 (hash!5210 hashF!1486 key!5322))))

(declare-fun lt!1965960 () Unit!141860)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1079 (ListLongMap!5745 K!16342 Hashable!7141) Unit!141860)

(assert (=> b!4815138 (= lt!1965960 (lemmaInGenMapThenLongMapContainsHash!1079 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815139 () Bool)

(declare-fun tp!1361780 () Bool)

(assert (=> b!4815139 (= e!3008400 tp!1361780)))

(assert (= (and start!498136 res!2048196) b!4815136))

(assert (= (and b!4815136 res!2048197) b!4815137))

(assert (= (and b!4815137 res!2048198) b!4815138))

(assert (= start!498136 b!4815139))

(declare-fun m!5801130 () Bool)

(assert (=> start!498136 m!5801130))

(declare-fun m!5801132 () Bool)

(assert (=> start!498136 m!5801132))

(declare-fun m!5801134 () Bool)

(assert (=> b!4815136 m!5801134))

(declare-fun m!5801136 () Bool)

(assert (=> b!4815137 m!5801136))

(assert (=> b!4815137 m!5801136))

(declare-fun m!5801138 () Bool)

(assert (=> b!4815137 m!5801138))

(declare-fun m!5801140 () Bool)

(assert (=> b!4815138 m!5801140))

(declare-fun m!5801142 () Bool)

(assert (=> b!4815138 m!5801142))

(declare-fun m!5801144 () Bool)

(assert (=> b!4815138 m!5801144))

(declare-fun m!5801146 () Bool)

(assert (=> b!4815138 m!5801146))

(declare-fun m!5801148 () Bool)

(assert (=> b!4815138 m!5801148))

(declare-fun m!5801150 () Bool)

(assert (=> b!4815138 m!5801150))

(declare-fun m!5801152 () Bool)

(assert (=> b!4815138 m!5801152))

(push 1)

(assert (not b!4815139))

(assert (not b!4815138))

(assert (not b!4815137))

(assert (not b!4815136))

(assert (not start!498136))

(assert tp_is_empty!34155)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

