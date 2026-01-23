; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498210 () Bool)

(assert start!498210)

(declare-fun b!4815456 () Bool)

(declare-datatypes ((Unit!141889 0))(
  ( (Unit!141890) )
))
(declare-fun e!3008586 () Unit!141889)

(declare-fun Unit!141891 () Unit!141889)

(assert (=> b!4815456 (= e!3008586 Unit!141891)))

(declare-fun lt!1966280 () Unit!141889)

(declare-datatypes ((K!16369 0))(
  ( (K!16370 (val!21401 Int)) )
))
(declare-datatypes ((V!16615 0))(
  ( (V!16616 (val!21402 Int)) )
))
(declare-datatypes ((tuple2!57738 0))(
  ( (tuple2!57739 (_1!32163 K!16369) (_2!32163 V!16615)) )
))
(declare-datatypes ((List!54843 0))(
  ( (Nil!54719) (Cons!54719 (h!61151 tuple2!57738) (t!362339 List!54843)) )
))
(declare-datatypes ((tuple2!57740 0))(
  ( (tuple2!57741 (_1!32164 (_ BitVec 64)) (_2!32164 List!54843)) )
))
(declare-datatypes ((List!54844 0))(
  ( (Nil!54720) (Cons!54720 (h!61152 tuple2!57740) (t!362340 List!54844)) )
))
(declare-datatypes ((ListLongMap!5767 0))(
  ( (ListLongMap!5768 (toList!7287 List!54844)) )
))
(declare-fun lm!2251 () ListLongMap!5767)

(declare-datatypes ((Hashable!7152 0))(
  ( (HashableExt!7151 (__x!33427 Int)) )
))
(declare-fun hashF!1486 () Hashable!7152)

(declare-fun key!5322 () K!16369)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!424 (ListLongMap!5767 K!16369 Hashable!7152) Unit!141889)

(assert (=> b!4815456 (= lt!1966280 (lemmaNotInItsHashBucketThenNotInMap!424 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4815456 false))

(declare-fun b!4815457 () Bool)

(declare-fun e!3008585 () Bool)

(declare-fun tp!1361825 () Bool)

(assert (=> b!4815457 (= e!3008585 tp!1361825)))

(declare-fun res!2048397 () Bool)

(declare-fun e!3008587 () Bool)

(assert (=> start!498210 (=> (not res!2048397) (not e!3008587))))

(declare-fun lambda!234408 () Int)

(declare-fun forall!12458 (List!54844 Int) Bool)

(assert (=> start!498210 (= res!2048397 (forall!12458 (toList!7287 lm!2251) lambda!234408))))

(assert (=> start!498210 e!3008587))

(declare-fun inv!70269 (ListLongMap!5767) Bool)

(assert (=> start!498210 (and (inv!70269 lm!2251) e!3008585)))

(assert (=> start!498210 true))

(declare-fun tp_is_empty!34177 () Bool)

(assert (=> start!498210 tp_is_empty!34177))

(declare-fun b!4815458 () Bool)

(declare-fun res!2048398 () Bool)

(assert (=> b!4815458 (=> (not res!2048398) (not e!3008587))))

(declare-datatypes ((ListMap!6701 0))(
  ( (ListMap!6702 (toList!7288 List!54843)) )
))
(declare-fun contains!18519 (ListMap!6701 K!16369) Bool)

(declare-fun extractMap!2602 (List!54844) ListMap!6701)

(assert (=> b!4815458 (= res!2048398 (contains!18519 (extractMap!2602 (toList!7287 lm!2251)) key!5322))))

(declare-fun b!4815459 () Bool)

(declare-fun Unit!141892 () Unit!141889)

(assert (=> b!4815459 (= e!3008586 Unit!141892)))

(declare-fun b!4815460 () Bool)

(declare-fun res!2048399 () Bool)

(assert (=> b!4815460 (=> (not res!2048399) (not e!3008587))))

(declare-fun allKeysSameHashInMap!2468 (ListLongMap!5767 Hashable!7152) Bool)

(assert (=> b!4815460 (= res!2048399 (allKeysSameHashInMap!2468 lm!2251 hashF!1486))))

(declare-fun b!4815461 () Bool)

(assert (=> b!4815461 (= e!3008587 (not true))))

(declare-fun lt!1966279 () Unit!141889)

(assert (=> b!4815461 (= lt!1966279 e!3008586)))

(declare-fun c!820714 () Bool)

(declare-fun lt!1966273 () List!54843)

(declare-datatypes ((Option!13402 0))(
  ( (None!13401) (Some!13401 (v!49050 tuple2!57738)) )
))
(declare-fun isEmpty!29574 (Option!13402) Bool)

(declare-fun getPair!992 (List!54843 K!16369) Option!13402)

(assert (=> b!4815461 (= c!820714 (isEmpty!29574 (getPair!992 lt!1966273 key!5322)))))

(declare-fun lt!1966278 () Unit!141889)

(declare-fun lt!1966274 () tuple2!57740)

(declare-fun forallContained!4320 (List!54844 Int tuple2!57740) Unit!141889)

(assert (=> b!4815461 (= lt!1966278 (forallContained!4320 (toList!7287 lm!2251) lambda!234408 lt!1966274))))

(declare-fun contains!18520 (List!54844 tuple2!57740) Bool)

(assert (=> b!4815461 (contains!18520 (toList!7287 lm!2251) lt!1966274)))

(declare-fun lt!1966276 () (_ BitVec 64))

(assert (=> b!4815461 (= lt!1966274 (tuple2!57741 lt!1966276 lt!1966273))))

(declare-fun lt!1966277 () Unit!141889)

(declare-fun lemmaGetValueImpliesTupleContained!663 (ListLongMap!5767 (_ BitVec 64) List!54843) Unit!141889)

(assert (=> b!4815461 (= lt!1966277 (lemmaGetValueImpliesTupleContained!663 lm!2251 lt!1966276 lt!1966273))))

(declare-fun apply!13257 (ListLongMap!5767 (_ BitVec 64)) List!54843)

(assert (=> b!4815461 (= lt!1966273 (apply!13257 lm!2251 lt!1966276))))

(declare-fun contains!18521 (ListLongMap!5767 (_ BitVec 64)) Bool)

(assert (=> b!4815461 (contains!18521 lm!2251 lt!1966276)))

(declare-fun hash!5222 (Hashable!7152 K!16369) (_ BitVec 64))

(assert (=> b!4815461 (= lt!1966276 (hash!5222 hashF!1486 key!5322))))

(declare-fun lt!1966275 () Unit!141889)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1090 (ListLongMap!5767 K!16369 Hashable!7152) Unit!141889)

(assert (=> b!4815461 (= lt!1966275 (lemmaInGenMapThenLongMapContainsHash!1090 lm!2251 key!5322 hashF!1486))))

(assert (= (and start!498210 res!2048397) b!4815460))

(assert (= (and b!4815460 res!2048399) b!4815458))

(assert (= (and b!4815458 res!2048398) b!4815461))

(assert (= (and b!4815461 c!820714) b!4815456))

(assert (= (and b!4815461 (not c!820714)) b!4815459))

(assert (= start!498210 b!4815457))

(declare-fun m!5801584 () Bool)

(assert (=> b!4815460 m!5801584))

(declare-fun m!5801586 () Bool)

(assert (=> start!498210 m!5801586))

(declare-fun m!5801588 () Bool)

(assert (=> start!498210 m!5801588))

(declare-fun m!5801590 () Bool)

(assert (=> b!4815456 m!5801590))

(declare-fun m!5801592 () Bool)

(assert (=> b!4815458 m!5801592))

(assert (=> b!4815458 m!5801592))

(declare-fun m!5801594 () Bool)

(assert (=> b!4815458 m!5801594))

(declare-fun m!5801596 () Bool)

(assert (=> b!4815461 m!5801596))

(declare-fun m!5801598 () Bool)

(assert (=> b!4815461 m!5801598))

(declare-fun m!5801600 () Bool)

(assert (=> b!4815461 m!5801600))

(declare-fun m!5801602 () Bool)

(assert (=> b!4815461 m!5801602))

(declare-fun m!5801604 () Bool)

(assert (=> b!4815461 m!5801604))

(declare-fun m!5801606 () Bool)

(assert (=> b!4815461 m!5801606))

(assert (=> b!4815461 m!5801598))

(declare-fun m!5801608 () Bool)

(assert (=> b!4815461 m!5801608))

(declare-fun m!5801610 () Bool)

(assert (=> b!4815461 m!5801610))

(declare-fun m!5801612 () Bool)

(assert (=> b!4815461 m!5801612))

(check-sat (not b!4815458) tp_is_empty!34177 (not b!4815460) (not b!4815461) (not start!498210) (not b!4815456) (not b!4815457))
(check-sat)
