; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498578 () Bool)

(assert start!498578)

(declare-fun b!4816895 () Bool)

(declare-fun res!2049156 () Bool)

(declare-fun e!3009502 () Bool)

(assert (=> b!4816895 (=> (not res!2049156) (not e!3009502))))

(declare-datatypes ((K!16429 0))(
  ( (K!16430 (val!21449 Int)) )
))
(declare-datatypes ((V!16675 0))(
  ( (V!16676 (val!21450 Int)) )
))
(declare-datatypes ((tuple2!57834 0))(
  ( (tuple2!57835 (_1!32211 K!16429) (_2!32211 V!16675)) )
))
(declare-datatypes ((List!54896 0))(
  ( (Nil!54772) (Cons!54772 (h!61204 tuple2!57834) (t!362392 List!54896)) )
))
(declare-datatypes ((tuple2!57836 0))(
  ( (tuple2!57837 (_1!32212 (_ BitVec 64)) (_2!32212 List!54896)) )
))
(declare-datatypes ((List!54897 0))(
  ( (Nil!54773) (Cons!54773 (h!61205 tuple2!57836) (t!362393 List!54897)) )
))
(declare-datatypes ((ListLongMap!5815 0))(
  ( (ListLongMap!5816 (toList!7335 List!54897)) )
))
(declare-fun lm!2251 () ListLongMap!5815)

(declare-fun key!5322 () K!16429)

(declare-datatypes ((ListMap!6749 0))(
  ( (ListMap!6750 (toList!7336 List!54896)) )
))
(declare-fun contains!18596 (ListMap!6749 K!16429) Bool)

(declare-fun extractMap!2626 (List!54897) ListMap!6749)

(assert (=> b!4816895 (= res!2049156 (contains!18596 (extractMap!2626 (toList!7335 lm!2251)) key!5322))))

(declare-fun b!4816896 () Bool)

(declare-fun e!3009503 () Bool)

(declare-fun tp!1361955 () Bool)

(assert (=> b!4816896 (= e!3009503 tp!1361955)))

(declare-fun b!4816897 () Bool)

(declare-fun e!3009501 () Bool)

(assert (=> b!4816897 (= e!3009502 (not e!3009501))))

(declare-fun res!2049154 () Bool)

(assert (=> b!4816897 (=> res!2049154 e!3009501)))

(declare-fun lt!1967424 () List!54896)

(declare-datatypes ((Option!13433 0))(
  ( (None!13432) (Some!13432 (v!49091 tuple2!57834)) )
))
(declare-fun isEmpty!29600 (Option!13433) Bool)

(declare-fun getPair!1014 (List!54896 K!16429) Option!13433)

(assert (=> b!4816897 (= res!2049154 (not (isEmpty!29600 (getPair!1014 lt!1967424 key!5322))))))

(declare-fun lambda!234732 () Int)

(declare-datatypes ((Unit!142011 0))(
  ( (Unit!142012) )
))
(declare-fun lt!1967422 () Unit!142011)

(declare-fun lt!1967421 () tuple2!57836)

(declare-fun forallContained!4346 (List!54897 Int tuple2!57836) Unit!142011)

(assert (=> b!4816897 (= lt!1967422 (forallContained!4346 (toList!7335 lm!2251) lambda!234732 lt!1967421))))

(declare-fun contains!18597 (List!54897 tuple2!57836) Bool)

(assert (=> b!4816897 (contains!18597 (toList!7335 lm!2251) lt!1967421)))

(declare-fun lt!1967426 () (_ BitVec 64))

(assert (=> b!4816897 (= lt!1967421 (tuple2!57837 lt!1967426 lt!1967424))))

(declare-fun lt!1967420 () Unit!142011)

(declare-fun lemmaGetValueImpliesTupleContained!685 (ListLongMap!5815 (_ BitVec 64) List!54896) Unit!142011)

(assert (=> b!4816897 (= lt!1967420 (lemmaGetValueImpliesTupleContained!685 lm!2251 lt!1967426 lt!1967424))))

(declare-fun apply!13279 (ListLongMap!5815 (_ BitVec 64)) List!54896)

(assert (=> b!4816897 (= lt!1967424 (apply!13279 lm!2251 lt!1967426))))

(declare-fun contains!18598 (ListLongMap!5815 (_ BitVec 64)) Bool)

(assert (=> b!4816897 (contains!18598 lm!2251 lt!1967426)))

(declare-datatypes ((Hashable!7176 0))(
  ( (HashableExt!7175 (__x!33451 Int)) )
))
(declare-fun hashF!1486 () Hashable!7176)

(declare-fun hash!5249 (Hashable!7176 K!16429) (_ BitVec 64))

(assert (=> b!4816897 (= lt!1967426 (hash!5249 hashF!1486 key!5322))))

(declare-fun lt!1967423 () Unit!142011)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1112 (ListLongMap!5815 K!16429 Hashable!7176) Unit!142011)

(assert (=> b!4816897 (= lt!1967423 (lemmaInGenMapThenLongMapContainsHash!1112 lm!2251 key!5322 hashF!1486))))

(declare-fun res!2049155 () Bool)

(assert (=> start!498578 (=> (not res!2049155) (not e!3009502))))

(declare-fun forall!12486 (List!54897 Int) Bool)

(assert (=> start!498578 (= res!2049155 (forall!12486 (toList!7335 lm!2251) lambda!234732))))

(assert (=> start!498578 e!3009502))

(declare-fun inv!70329 (ListLongMap!5815) Bool)

(assert (=> start!498578 (and (inv!70329 lm!2251) e!3009503)))

(assert (=> start!498578 true))

(declare-fun tp_is_empty!34229 () Bool)

(assert (=> start!498578 tp_is_empty!34229))

(declare-fun b!4816898 () Bool)

(declare-fun res!2049157 () Bool)

(assert (=> b!4816898 (=> (not res!2049157) (not e!3009502))))

(declare-fun allKeysSameHashInMap!2492 (ListLongMap!5815 Hashable!7176) Bool)

(assert (=> b!4816898 (= res!2049157 (allKeysSameHashInMap!2492 lm!2251 hashF!1486))))

(declare-fun b!4816899 () Bool)

(assert (=> b!4816899 (= e!3009501 true)))

(assert (=> b!4816899 false))

(declare-fun lt!1967425 () Unit!142011)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!440 (ListLongMap!5815 K!16429 Hashable!7176) Unit!142011)

(assert (=> b!4816899 (= lt!1967425 (lemmaNotInItsHashBucketThenNotInMap!440 lm!2251 key!5322 hashF!1486))))

(assert (= (and start!498578 res!2049155) b!4816898))

(assert (= (and b!4816898 res!2049157) b!4816895))

(assert (= (and b!4816895 res!2049156) b!4816897))

(assert (= (and b!4816897 (not res!2049154)) b!4816899))

(assert (= start!498578 b!4816896))

(declare-fun m!5803284 () Bool)

(assert (=> b!4816897 m!5803284))

(declare-fun m!5803286 () Bool)

(assert (=> b!4816897 m!5803286))

(declare-fun m!5803288 () Bool)

(assert (=> b!4816897 m!5803288))

(declare-fun m!5803290 () Bool)

(assert (=> b!4816897 m!5803290))

(declare-fun m!5803292 () Bool)

(assert (=> b!4816897 m!5803292))

(declare-fun m!5803294 () Bool)

(assert (=> b!4816897 m!5803294))

(declare-fun m!5803296 () Bool)

(assert (=> b!4816897 m!5803296))

(assert (=> b!4816897 m!5803290))

(declare-fun m!5803298 () Bool)

(assert (=> b!4816897 m!5803298))

(declare-fun m!5803300 () Bool)

(assert (=> b!4816897 m!5803300))

(declare-fun m!5803302 () Bool)

(assert (=> b!4816898 m!5803302))

(declare-fun m!5803304 () Bool)

(assert (=> b!4816899 m!5803304))

(declare-fun m!5803306 () Bool)

(assert (=> start!498578 m!5803306))

(declare-fun m!5803308 () Bool)

(assert (=> start!498578 m!5803308))

(declare-fun m!5803310 () Bool)

(assert (=> b!4816895 m!5803310))

(assert (=> b!4816895 m!5803310))

(declare-fun m!5803312 () Bool)

(assert (=> b!4816895 m!5803312))

(check-sat (not b!4816896) (not b!4816899) (not start!498578) (not b!4816898) tp_is_empty!34229 (not b!4816897) (not b!4816895))
(check-sat)
