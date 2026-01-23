; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498946 () Bool)

(assert start!498946)

(declare-fun b!4818358 () Bool)

(declare-fun e!3010448 () Bool)

(assert (=> b!4818358 (= e!3010448 false)))

(declare-datatypes ((K!16479 0))(
  ( (K!16480 (val!21489 Int)) )
))
(declare-fun key!5553 () K!16479)

(declare-datatypes ((Hashable!7196 0))(
  ( (HashableExt!7195 (__x!33471 Int)) )
))
(declare-fun hashF!1533 () Hashable!7196)

(declare-datatypes ((V!16725 0))(
  ( (V!16726 (val!21490 Int)) )
))
(declare-datatypes ((tuple2!57914 0))(
  ( (tuple2!57915 (_1!32251 K!16479) (_2!32251 V!16725)) )
))
(declare-datatypes ((List!54939 0))(
  ( (Nil!54815) (Cons!54815 (h!61249 tuple2!57914) (t!362435 List!54939)) )
))
(declare-datatypes ((tuple2!57916 0))(
  ( (tuple2!57917 (_1!32252 (_ BitVec 64)) (_2!32252 List!54939)) )
))
(declare-datatypes ((List!54940 0))(
  ( (Nil!54816) (Cons!54816 (h!61250 tuple2!57916) (t!362436 List!54940)) )
))
(declare-datatypes ((ListLongMap!5855 0))(
  ( (ListLongMap!5856 (toList!7375 List!54940)) )
))
(declare-fun lm!2315 () ListLongMap!5855)

(declare-fun lt!1968270 () Bool)

(declare-fun contains!18649 (ListLongMap!5855 (_ BitVec 64)) Bool)

(declare-fun hash!5272 (Hashable!7196 K!16479) (_ BitVec 64))

(assert (=> b!4818358 (= lt!1968270 (contains!18649 lm!2315 (hash!5272 hashF!1533 key!5553)))))

(declare-fun b!4818359 () Bool)

(declare-fun e!3010449 () Bool)

(declare-fun tp!1362057 () Bool)

(assert (=> b!4818359 (= e!3010449 tp!1362057)))

(declare-fun b!4818356 () Bool)

(declare-fun res!2050004 () Bool)

(assert (=> b!4818356 (=> (not res!2050004) (not e!3010448))))

(declare-fun allKeysSameHashInMap!2512 (ListLongMap!5855 Hashable!7196) Bool)

(assert (=> b!4818356 (= res!2050004 (allKeysSameHashInMap!2512 lm!2315 hashF!1533))))

(declare-fun b!4818357 () Bool)

(declare-fun res!2050005 () Bool)

(assert (=> b!4818357 (=> (not res!2050005) (not e!3010448))))

(declare-datatypes ((ListMap!6789 0))(
  ( (ListMap!6790 (toList!7376 List!54939)) )
))
(declare-fun contains!18650 (ListMap!6789 K!16479) Bool)

(declare-fun extractMap!2646 (List!54940) ListMap!6789)

(assert (=> b!4818357 (= res!2050005 (contains!18650 (extractMap!2646 (toList!7375 lm!2315)) key!5553))))

(declare-fun res!2050003 () Bool)

(assert (=> start!498946 (=> (not res!2050003) (not e!3010448))))

(declare-fun lambda!235024 () Int)

(declare-fun forall!12510 (List!54940 Int) Bool)

(assert (=> start!498946 (= res!2050003 (forall!12510 (toList!7375 lm!2315) lambda!235024))))

(assert (=> start!498946 e!3010448))

(declare-fun inv!70379 (ListLongMap!5855) Bool)

(assert (=> start!498946 (and (inv!70379 lm!2315) e!3010449)))

(assert (=> start!498946 true))

(declare-fun tp_is_empty!34273 () Bool)

(assert (=> start!498946 tp_is_empty!34273))

(assert (= (and start!498946 res!2050003) b!4818356))

(assert (= (and b!4818356 res!2050004) b!4818357))

(assert (= (and b!4818357 res!2050005) b!4818358))

(assert (= start!498946 b!4818359))

(declare-fun m!5805314 () Bool)

(assert (=> b!4818358 m!5805314))

(assert (=> b!4818358 m!5805314))

(declare-fun m!5805316 () Bool)

(assert (=> b!4818358 m!5805316))

(declare-fun m!5805318 () Bool)

(assert (=> b!4818356 m!5805318))

(declare-fun m!5805320 () Bool)

(assert (=> b!4818357 m!5805320))

(assert (=> b!4818357 m!5805320))

(declare-fun m!5805322 () Bool)

(assert (=> b!4818357 m!5805322))

(declare-fun m!5805324 () Bool)

(assert (=> start!498946 m!5805324))

(declare-fun m!5805326 () Bool)

(assert (=> start!498946 m!5805326))

(check-sat (not b!4818359) (not b!4818358) (not b!4818356) (not b!4818357) (not start!498946) tp_is_empty!34273)
(check-sat)
