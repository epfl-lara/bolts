; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498404 () Bool)

(assert start!498404)

(declare-fun b!4816292 () Bool)

(declare-fun e!3009105 () Bool)

(declare-fun e!3009104 () Bool)

(assert (=> b!4816292 (= e!3009105 (not e!3009104))))

(declare-fun res!2048818 () Bool)

(assert (=> b!4816292 (=> res!2048818 e!3009104)))

(declare-datatypes ((K!16417 0))(
  ( (K!16418 (val!21439 Int)) )
))
(declare-datatypes ((V!16663 0))(
  ( (V!16664 (val!21440 Int)) )
))
(declare-datatypes ((tuple2!57814 0))(
  ( (tuple2!57815 (_1!32201 K!16417) (_2!32201 V!16663)) )
))
(declare-datatypes ((List!54884 0))(
  ( (Nil!54760) (Cons!54760 (h!61192 tuple2!57814) (t!362380 List!54884)) )
))
(declare-fun lt!1966990 () List!54884)

(declare-fun key!5322 () K!16417)

(declare-datatypes ((Option!13424 0))(
  ( (None!13423) (Some!13423 (v!49076 tuple2!57814)) )
))
(declare-fun isEmpty!29591 (Option!13424) Bool)

(declare-fun getPair!1009 (List!54884 K!16417) Option!13424)

(assert (=> b!4816292 (= res!2048818 (not (isEmpty!29591 (getPair!1009 lt!1966990 key!5322))))))

(declare-datatypes ((tuple2!57816 0))(
  ( (tuple2!57817 (_1!32202 (_ BitVec 64)) (_2!32202 List!54884)) )
))
(declare-fun lt!1966994 () tuple2!57816)

(declare-datatypes ((List!54885 0))(
  ( (Nil!54761) (Cons!54761 (h!61193 tuple2!57816) (t!362381 List!54885)) )
))
(declare-datatypes ((ListLongMap!5805 0))(
  ( (ListLongMap!5806 (toList!7325 List!54885)) )
))
(declare-fun lm!2251 () ListLongMap!5805)

(declare-fun lambda!234583 () Int)

(declare-datatypes ((Unit!141963 0))(
  ( (Unit!141964) )
))
(declare-fun lt!1966991 () Unit!141963)

(declare-fun forallContained!4337 (List!54885 Int tuple2!57816) Unit!141963)

(assert (=> b!4816292 (= lt!1966991 (forallContained!4337 (toList!7325 lm!2251) lambda!234583 lt!1966994))))

(declare-fun contains!18577 (List!54885 tuple2!57816) Bool)

(assert (=> b!4816292 (contains!18577 (toList!7325 lm!2251) lt!1966994)))

(declare-fun lt!1966993 () (_ BitVec 64))

(assert (=> b!4816292 (= lt!1966994 (tuple2!57817 lt!1966993 lt!1966990))))

(declare-fun lt!1966992 () Unit!141963)

(declare-fun lemmaGetValueImpliesTupleContained!680 (ListLongMap!5805 (_ BitVec 64) List!54884) Unit!141963)

(assert (=> b!4816292 (= lt!1966992 (lemmaGetValueImpliesTupleContained!680 lm!2251 lt!1966993 lt!1966990))))

(declare-fun apply!13274 (ListLongMap!5805 (_ BitVec 64)) List!54884)

(assert (=> b!4816292 (= lt!1966990 (apply!13274 lm!2251 lt!1966993))))

(declare-fun contains!18578 (ListLongMap!5805 (_ BitVec 64)) Bool)

(assert (=> b!4816292 (contains!18578 lm!2251 lt!1966993)))

(declare-datatypes ((Hashable!7171 0))(
  ( (HashableExt!7170 (__x!33446 Int)) )
))
(declare-fun hashF!1486 () Hashable!7171)

(declare-fun hash!5242 (Hashable!7171 K!16417) (_ BitVec 64))

(assert (=> b!4816292 (= lt!1966993 (hash!5242 hashF!1486 key!5322))))

(declare-fun lt!1966989 () Unit!141963)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1107 (ListLongMap!5805 K!16417 Hashable!7171) Unit!141963)

(assert (=> b!4816292 (= lt!1966989 (lemmaInGenMapThenLongMapContainsHash!1107 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4816293 () Bool)

(declare-fun res!2048816 () Bool)

(assert (=> b!4816293 (=> (not res!2048816) (not e!3009105))))

(declare-datatypes ((ListMap!6739 0))(
  ( (ListMap!6740 (toList!7326 List!54884)) )
))
(declare-fun contains!18579 (ListMap!6739 K!16417) Bool)

(declare-fun extractMap!2621 (List!54885) ListMap!6739)

(assert (=> b!4816293 (= res!2048816 (contains!18579 (extractMap!2621 (toList!7325 lm!2251)) key!5322))))

(declare-fun b!4816294 () Bool)

(declare-fun res!2048817 () Bool)

(assert (=> b!4816294 (=> (not res!2048817) (not e!3009105))))

(declare-fun allKeysSameHashInMap!2487 (ListLongMap!5805 Hashable!7171) Bool)

(assert (=> b!4816294 (= res!2048817 (allKeysSameHashInMap!2487 lm!2251 hashF!1486))))

(declare-fun res!2048819 () Bool)

(assert (=> start!498404 (=> (not res!2048819) (not e!3009105))))

(declare-fun forall!12477 (List!54885 Int) Bool)

(assert (=> start!498404 (= res!2048819 (forall!12477 (toList!7325 lm!2251) lambda!234583))))

(assert (=> start!498404 e!3009105))

(declare-fun e!3009106 () Bool)

(declare-fun inv!70318 (ListLongMap!5805) Bool)

(assert (=> start!498404 (and (inv!70318 lm!2251) e!3009106)))

(assert (=> start!498404 true))

(declare-fun tp_is_empty!34215 () Bool)

(assert (=> start!498404 tp_is_empty!34215))

(declare-fun b!4816295 () Bool)

(declare-fun tp!1361918 () Bool)

(assert (=> b!4816295 (= e!3009106 tp!1361918)))

(declare-fun b!4816296 () Bool)

(assert (=> b!4816296 (= e!3009104 true)))

(assert (= (and start!498404 res!2048819) b!4816294))

(assert (= (and b!4816294 res!2048817) b!4816293))

(assert (= (and b!4816293 res!2048816) b!4816292))

(assert (= (and b!4816292 (not res!2048818)) b!4816296))

(assert (= start!498404 b!4816295))

(declare-fun m!5802582 () Bool)

(assert (=> b!4816292 m!5802582))

(declare-fun m!5802584 () Bool)

(assert (=> b!4816292 m!5802584))

(declare-fun m!5802586 () Bool)

(assert (=> b!4816292 m!5802586))

(declare-fun m!5802588 () Bool)

(assert (=> b!4816292 m!5802588))

(declare-fun m!5802590 () Bool)

(assert (=> b!4816292 m!5802590))

(declare-fun m!5802592 () Bool)

(assert (=> b!4816292 m!5802592))

(declare-fun m!5802594 () Bool)

(assert (=> b!4816292 m!5802594))

(declare-fun m!5802596 () Bool)

(assert (=> b!4816292 m!5802596))

(declare-fun m!5802598 () Bool)

(assert (=> b!4816292 m!5802598))

(assert (=> b!4816292 m!5802584))

(declare-fun m!5802600 () Bool)

(assert (=> b!4816293 m!5802600))

(assert (=> b!4816293 m!5802600))

(declare-fun m!5802602 () Bool)

(assert (=> b!4816293 m!5802602))

(declare-fun m!5802604 () Bool)

(assert (=> b!4816294 m!5802604))

(declare-fun m!5802606 () Bool)

(assert (=> start!498404 m!5802606))

(declare-fun m!5802608 () Bool)

(assert (=> start!498404 m!5802608))

(push 1)

(assert (not b!4816292))

(assert (not b!4816293))

(assert tp_is_empty!34215)

(assert (not b!4816294))

(assert (not start!498404))

(assert (not b!4816295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

