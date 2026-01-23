; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499094 () Bool)

(assert start!499094)

(declare-fun b!4819002 () Bool)

(declare-fun e!3010832 () Bool)

(assert (=> b!4819002 (= e!3010832 false)))

(declare-fun b!4819004 () Bool)

(declare-fun res!2050463 () Bool)

(assert (=> b!4819004 (=> (not res!2050463) (not e!3010832))))

(declare-datatypes ((V!16770 0))(
  ( (V!16771 (val!21525 Int)) )
))
(declare-datatypes ((K!16524 0))(
  ( (K!16525 (val!21526 Int)) )
))
(declare-datatypes ((tuple2!57986 0))(
  ( (tuple2!57987 (_1!32287 K!16524) (_2!32287 V!16770)) )
))
(declare-datatypes ((List!54976 0))(
  ( (Nil!54852) (Cons!54852 (h!61286 tuple2!57986) (t!362472 List!54976)) )
))
(declare-datatypes ((tuple2!57988 0))(
  ( (tuple2!57989 (_1!32288 (_ BitVec 64)) (_2!32288 List!54976)) )
))
(declare-datatypes ((List!54977 0))(
  ( (Nil!54853) (Cons!54853 (h!61287 tuple2!57988) (t!362473 List!54977)) )
))
(declare-datatypes ((ListLongMap!5891 0))(
  ( (ListLongMap!5892 (toList!7400 List!54977)) )
))
(declare-fun lm!2280 () ListLongMap!5891)

(declare-fun contains!18675 (ListLongMap!5891 (_ BitVec 64)) Bool)

(assert (=> b!4819004 (= res!2050463 (contains!18675 lm!2280 (_1!32288 (h!61287 (toList!7400 lm!2280)))))))

(declare-fun b!4819005 () Bool)

(declare-fun e!3010833 () Bool)

(assert (=> b!4819005 (= e!3010833 e!3010832)))

(declare-fun res!2050465 () Bool)

(assert (=> b!4819005 (=> (not res!2050465) (not e!3010832))))

(declare-fun lt!1968510 () (_ BitVec 64))

(assert (=> b!4819005 (= res!2050465 (contains!18675 lm!2280 lt!1968510))))

(declare-datatypes ((Hashable!7214 0))(
  ( (HashableExt!7213 (__x!33489 Int)) )
))
(declare-fun hashF!1509 () Hashable!7214)

(declare-fun key!5428 () K!16524)

(declare-fun hash!5293 (Hashable!7214 K!16524) (_ BitVec 64))

(assert (=> b!4819005 (= lt!1968510 (hash!5293 hashF!1509 key!5428))))

(declare-fun b!4819006 () Bool)

(declare-fun res!2050459 () Bool)

(assert (=> b!4819006 (=> (not res!2050459) (not e!3010832))))

(declare-fun containsKey!4276 (List!54976 K!16524) Bool)

(declare-fun apply!13301 (ListLongMap!5891 (_ BitVec 64)) List!54976)

(assert (=> b!4819006 (= res!2050459 (not (containsKey!4276 (apply!13301 lm!2280 lt!1968510) key!5428)))))

(declare-fun b!4819007 () Bool)

(declare-fun res!2050462 () Bool)

(assert (=> b!4819007 (=> (not res!2050462) (not e!3010833))))

(declare-fun allKeysSameHashInMap!2530 (ListLongMap!5891 Hashable!7214) Bool)

(assert (=> b!4819007 (= res!2050462 (allKeysSameHashInMap!2530 lm!2280 hashF!1509))))

(declare-fun res!2050461 () Bool)

(assert (=> start!499094 (=> (not res!2050461) (not e!3010833))))

(declare-fun lambda!235134 () Int)

(declare-fun forall!12528 (List!54977 Int) Bool)

(assert (=> start!499094 (= res!2050461 (forall!12528 (toList!7400 lm!2280) lambda!235134))))

(assert (=> start!499094 e!3010833))

(declare-fun e!3010831 () Bool)

(declare-fun inv!70424 (ListLongMap!5891) Bool)

(assert (=> start!499094 (and (inv!70424 lm!2280) e!3010831)))

(assert (=> start!499094 true))

(declare-fun tp_is_empty!34313 () Bool)

(assert (=> start!499094 tp_is_empty!34313))

(declare-fun b!4819003 () Bool)

(declare-fun res!2050464 () Bool)

(assert (=> b!4819003 (=> (not res!2050464) (not e!3010832))))

(get-info :version)

(assert (=> b!4819003 (= res!2050464 (and (or (not ((_ is Cons!54853) (toList!7400 lm!2280))) (not (= (_1!32288 (h!61287 (toList!7400 lm!2280))) lt!1968510))) ((_ is Cons!54853) (toList!7400 lm!2280)) (not (= (_1!32288 (h!61287 (toList!7400 lm!2280))) lt!1968510))))))

(declare-fun b!4819008 () Bool)

(declare-fun res!2050460 () Bool)

(assert (=> b!4819008 (=> (not res!2050460) (not e!3010832))))

(assert (=> b!4819008 (= res!2050460 (forall!12528 (toList!7400 lm!2280) lambda!235134))))

(declare-fun b!4819009 () Bool)

(declare-fun tp!1362145 () Bool)

(assert (=> b!4819009 (= e!3010831 tp!1362145)))

(assert (= (and start!499094 res!2050461) b!4819007))

(assert (= (and b!4819007 res!2050462) b!4819005))

(assert (= (and b!4819005 res!2050465) b!4819006))

(assert (= (and b!4819006 res!2050459) b!4819003))

(assert (= (and b!4819003 res!2050464) b!4819008))

(assert (= (and b!4819008 res!2050460) b!4819004))

(assert (= (and b!4819004 res!2050463) b!4819002))

(assert (= start!499094 b!4819009))

(declare-fun m!5805924 () Bool)

(assert (=> b!4819006 m!5805924))

(assert (=> b!4819006 m!5805924))

(declare-fun m!5805926 () Bool)

(assert (=> b!4819006 m!5805926))

(declare-fun m!5805928 () Bool)

(assert (=> b!4819005 m!5805928))

(declare-fun m!5805930 () Bool)

(assert (=> b!4819005 m!5805930))

(declare-fun m!5805932 () Bool)

(assert (=> b!4819008 m!5805932))

(assert (=> start!499094 m!5805932))

(declare-fun m!5805934 () Bool)

(assert (=> start!499094 m!5805934))

(declare-fun m!5805936 () Bool)

(assert (=> b!4819007 m!5805936))

(declare-fun m!5805938 () Bool)

(assert (=> b!4819004 m!5805938))

(check-sat tp_is_empty!34313 (not b!4819005) (not b!4819008) (not b!4819009) (not b!4819007) (not b!4819006) (not start!499094) (not b!4819004))
(check-sat)
