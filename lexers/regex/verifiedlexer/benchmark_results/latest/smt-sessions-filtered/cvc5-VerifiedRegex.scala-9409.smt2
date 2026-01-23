; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498128 () Bool)

(assert start!498128)

(declare-fun b!4815068 () Bool)

(declare-fun res!2048161 () Bool)

(declare-fun e!3008367 () Bool)

(assert (=> b!4815068 (=> (not res!2048161) (not e!3008367))))

(declare-datatypes ((K!16332 0))(
  ( (K!16333 (val!21371 Int)) )
))
(declare-datatypes ((V!16578 0))(
  ( (V!16579 (val!21372 Int)) )
))
(declare-datatypes ((tuple2!57678 0))(
  ( (tuple2!57679 (_1!32133 K!16332) (_2!32133 V!16578)) )
))
(declare-datatypes ((List!54811 0))(
  ( (Nil!54687) (Cons!54687 (h!61119 tuple2!57678) (t!362307 List!54811)) )
))
(declare-datatypes ((tuple2!57680 0))(
  ( (tuple2!57681 (_1!32134 (_ BitVec 64)) (_2!32134 List!54811)) )
))
(declare-datatypes ((List!54812 0))(
  ( (Nil!54688) (Cons!54688 (h!61120 tuple2!57680) (t!362308 List!54812)) )
))
(declare-datatypes ((ListLongMap!5737 0))(
  ( (ListLongMap!5738 (toList!7257 List!54812)) )
))
(declare-fun lm!1254 () ListLongMap!5737)

(declare-fun key!2670 () K!16332)

(declare-datatypes ((ListMap!6671 0))(
  ( (ListMap!6672 (toList!7258 List!54811)) )
))
(declare-fun contains!18472 (ListMap!6671 K!16332) Bool)

(declare-fun extractMap!2587 (List!54812) ListMap!6671)

(assert (=> b!4815068 (= res!2048161 (contains!18472 (extractMap!2587 (toList!7257 lm!1254)) key!2670))))

(declare-fun b!4815069 () Bool)

(declare-fun lambda!234295 () Int)

(declare-fun forall!12443 (List!54812 Int) Bool)

(assert (=> b!4815069 (= e!3008367 (not (forall!12443 (toList!7257 lm!1254) lambda!234295)))))

(declare-datatypes ((Unit!141844 0))(
  ( (Unit!141845) )
))
(declare-fun lt!1965847 () Unit!141844)

(declare-fun lt!1965853 () tuple2!57680)

(declare-fun forallContained!4305 (List!54812 Int tuple2!57680) Unit!141844)

(assert (=> b!4815069 (= lt!1965847 (forallContained!4305 (toList!7257 lm!1254) lambda!234295 lt!1965853))))

(declare-fun lt!1965851 () Unit!141844)

(assert (=> b!4815069 (= lt!1965851 (forallContained!4305 (toList!7257 lm!1254) lambda!234295 lt!1965853))))

(declare-fun lt!1965848 () Unit!141844)

(declare-fun e!3008368 () Unit!141844)

(assert (=> b!4815069 (= lt!1965848 e!3008368)))

(declare-fun c!820669 () Bool)

(declare-fun contains!18473 (List!54812 tuple2!57680) Bool)

(assert (=> b!4815069 (= c!820669 (not (contains!18473 (toList!7257 lm!1254) lt!1965853)))))

(declare-fun lt!1965845 () (_ BitVec 64))

(declare-fun lt!1965849 () List!54811)

(assert (=> b!4815069 (= lt!1965853 (tuple2!57681 lt!1965845 lt!1965849))))

(declare-fun apply!13242 (ListLongMap!5737 (_ BitVec 64)) List!54811)

(assert (=> b!4815069 (= lt!1965849 (apply!13242 lm!1254 lt!1965845))))

(declare-fun contains!18474 (ListLongMap!5737 (_ BitVec 64)) Bool)

(assert (=> b!4815069 (contains!18474 lm!1254 lt!1965845)))

(declare-datatypes ((Hashable!7137 0))(
  ( (HashableExt!7136 (__x!33412 Int)) )
))
(declare-fun hashF!938 () Hashable!7137)

(declare-fun hash!5206 (Hashable!7137 K!16332) (_ BitVec 64))

(assert (=> b!4815069 (= lt!1965845 (hash!5206 hashF!938 key!2670))))

(declare-fun lt!1965852 () Unit!141844)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1075 (ListLongMap!5737 K!16332 Hashable!7137) Unit!141844)

(assert (=> b!4815069 (= lt!1965852 (lemmaInGenMapThenLongMapContainsHash!1075 lm!1254 key!2670 hashF!938))))

(declare-fun b!4815070 () Bool)

(declare-fun res!2048162 () Bool)

(assert (=> b!4815070 (=> (not res!2048162) (not e!3008367))))

(declare-fun allKeysSameHashInMap!2453 (ListLongMap!5737 Hashable!7137) Bool)

(assert (=> b!4815070 (= res!2048162 (allKeysSameHashInMap!2453 lm!1254 hashF!938))))

(declare-fun res!2048160 () Bool)

(assert (=> start!498128 (=> (not res!2048160) (not e!3008367))))

(assert (=> start!498128 (= res!2048160 (forall!12443 (toList!7257 lm!1254) lambda!234295))))

(assert (=> start!498128 e!3008367))

(declare-fun e!3008366 () Bool)

(declare-fun inv!70233 (ListLongMap!5737) Bool)

(assert (=> start!498128 (and (inv!70233 lm!1254) e!3008366)))

(assert (=> start!498128 true))

(declare-fun tp_is_empty!34147 () Bool)

(assert (=> start!498128 tp_is_empty!34147))

(declare-fun b!4815071 () Bool)

(declare-fun tp!1361768 () Bool)

(assert (=> b!4815071 (= e!3008366 tp!1361768)))

(declare-fun b!4815072 () Bool)

(declare-fun Unit!141846 () Unit!141844)

(assert (=> b!4815072 (= e!3008368 Unit!141846)))

(declare-fun b!4815073 () Bool)

(declare-fun Unit!141847 () Unit!141844)

(assert (=> b!4815073 (= e!3008368 Unit!141847)))

(declare-fun lt!1965850 () Unit!141844)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!326 (List!54812 (_ BitVec 64)) Unit!141844)

(assert (=> b!4815073 (= lt!1965850 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!326 (toList!7257 lm!1254) lt!1965845))))

(declare-fun containsKey!4222 (List!54812 (_ BitVec 64)) Bool)

(assert (=> b!4815073 (containsKey!4222 (toList!7257 lm!1254) lt!1965845)))

(declare-fun lt!1965846 () Unit!141844)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2337 (List!54812 (_ BitVec 64)) Unit!141844)

(assert (=> b!4815073 (= lt!1965846 (lemmaContainsKeyImpliesGetValueByKeyDefined!2337 (toList!7257 lm!1254) lt!1965845))))

(declare-datatypes ((Option!13388 0))(
  ( (None!13387) (Some!13387 (v!49034 List!54811)) )
))
(declare-fun isDefined!10525 (Option!13388) Bool)

(declare-fun getValueByKey!2551 (List!54812 (_ BitVec 64)) Option!13388)

(assert (=> b!4815073 (isDefined!10525 (getValueByKey!2551 (toList!7257 lm!1254) lt!1965845))))

(declare-fun lt!1965854 () Unit!141844)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1039 (List!54812 (_ BitVec 64) List!54811) Unit!141844)

(assert (=> b!4815073 (= lt!1965854 (lemmaGetValueByKeyImpliesContainsTuple!1039 (toList!7257 lm!1254) lt!1965845 lt!1965849))))

(assert (=> b!4815073 false))

(assert (= (and start!498128 res!2048160) b!4815070))

(assert (= (and b!4815070 res!2048162) b!4815068))

(assert (= (and b!4815068 res!2048161) b!4815069))

(assert (= (and b!4815069 c!820669) b!4815073))

(assert (= (and b!4815069 (not c!820669)) b!4815072))

(assert (= start!498128 b!4815071))

(declare-fun m!5800994 () Bool)

(assert (=> b!4815069 m!5800994))

(declare-fun m!5800996 () Bool)

(assert (=> b!4815069 m!5800996))

(declare-fun m!5800998 () Bool)

(assert (=> b!4815069 m!5800998))

(declare-fun m!5801000 () Bool)

(assert (=> b!4815069 m!5801000))

(declare-fun m!5801002 () Bool)

(assert (=> b!4815069 m!5801002))

(declare-fun m!5801004 () Bool)

(assert (=> b!4815069 m!5801004))

(declare-fun m!5801006 () Bool)

(assert (=> b!4815069 m!5801006))

(assert (=> b!4815069 m!5801000))

(declare-fun m!5801008 () Bool)

(assert (=> b!4815073 m!5801008))

(declare-fun m!5801010 () Bool)

(assert (=> b!4815073 m!5801010))

(assert (=> b!4815073 m!5801008))

(declare-fun m!5801012 () Bool)

(assert (=> b!4815073 m!5801012))

(declare-fun m!5801014 () Bool)

(assert (=> b!4815073 m!5801014))

(declare-fun m!5801016 () Bool)

(assert (=> b!4815073 m!5801016))

(declare-fun m!5801018 () Bool)

(assert (=> b!4815073 m!5801018))

(assert (=> start!498128 m!5801004))

(declare-fun m!5801020 () Bool)

(assert (=> start!498128 m!5801020))

(declare-fun m!5801022 () Bool)

(assert (=> b!4815068 m!5801022))

(assert (=> b!4815068 m!5801022))

(declare-fun m!5801024 () Bool)

(assert (=> b!4815068 m!5801024))

(declare-fun m!5801026 () Bool)

(assert (=> b!4815070 m!5801026))

(push 1)

(assert tp_is_empty!34147)

(assert (not b!4815071))

(assert (not b!4815069))

(assert (not b!4815073))

(assert (not b!4815068))

(assert (not start!498128))

(assert (not b!4815070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

