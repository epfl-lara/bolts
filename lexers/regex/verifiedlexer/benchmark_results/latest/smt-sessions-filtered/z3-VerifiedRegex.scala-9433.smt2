; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498926 () Bool)

(assert start!498926)

(declare-fun b!4818211 () Bool)

(declare-fun res!2049890 () Bool)

(declare-fun e!3010388 () Bool)

(assert (=> b!4818211 (=> (not res!2049890) (not e!3010388))))

(declare-datatypes ((K!16454 0))(
  ( (K!16455 (val!21469 Int)) )
))
(declare-fun key!5553 () K!16454)

(declare-datatypes ((Hashable!7186 0))(
  ( (HashableExt!7185 (__x!33461 Int)) )
))
(declare-fun hashF!1533 () Hashable!7186)

(declare-datatypes ((V!16700 0))(
  ( (V!16701 (val!21470 Int)) )
))
(declare-datatypes ((tuple2!57874 0))(
  ( (tuple2!57875 (_1!32231 K!16454) (_2!32231 V!16700)) )
))
(declare-datatypes ((List!54919 0))(
  ( (Nil!54795) (Cons!54795 (h!61229 tuple2!57874) (t!362415 List!54919)) )
))
(declare-datatypes ((tuple2!57876 0))(
  ( (tuple2!57877 (_1!32232 (_ BitVec 64)) (_2!32232 List!54919)) )
))
(declare-datatypes ((List!54920 0))(
  ( (Nil!54796) (Cons!54796 (h!61230 tuple2!57876) (t!362416 List!54920)) )
))
(declare-datatypes ((ListLongMap!5835 0))(
  ( (ListLongMap!5836 (toList!7355 List!54920)) )
))
(declare-fun lm!2315 () ListLongMap!5835)

(declare-fun contains!18629 (ListLongMap!5835 (_ BitVec 64)) Bool)

(declare-fun hash!5262 (Hashable!7186 K!16454) (_ BitVec 64))

(assert (=> b!4818211 (= res!2049890 (not (contains!18629 lm!2315 (hash!5262 hashF!1533 key!5553))))))

(declare-fun b!4818212 () Bool)

(declare-fun res!2049888 () Bool)

(assert (=> b!4818212 (=> (not res!2049888) (not e!3010388))))

(declare-datatypes ((ListMap!6769 0))(
  ( (ListMap!6770 (toList!7356 List!54919)) )
))
(declare-fun contains!18630 (ListMap!6769 K!16454) Bool)

(declare-fun extractMap!2636 (List!54920) ListMap!6769)

(assert (=> b!4818212 (= res!2049888 (contains!18630 (extractMap!2636 (toList!7355 lm!2315)) key!5553))))

(declare-fun b!4818213 () Bool)

(assert (=> b!4818213 (= e!3010388 false)))

(declare-fun b!4818214 () Bool)

(declare-fun e!3010389 () Bool)

(declare-fun tp!1362027 () Bool)

(assert (=> b!4818214 (= e!3010389 tp!1362027)))

(declare-fun b!4818215 () Bool)

(declare-fun res!2049889 () Bool)

(assert (=> b!4818215 (=> (not res!2049889) (not e!3010388))))

(declare-fun allKeysSameHashInMap!2502 (ListLongMap!5835 Hashable!7186) Bool)

(assert (=> b!4818215 (= res!2049889 (allKeysSameHashInMap!2502 lm!2315 hashF!1533))))

(declare-fun res!2049891 () Bool)

(assert (=> start!498926 (=> (not res!2049891) (not e!3010388))))

(declare-fun lambda!234986 () Int)

(declare-fun forall!12500 (List!54920 Int) Bool)

(assert (=> start!498926 (= res!2049891 (forall!12500 (toList!7355 lm!2315) lambda!234986))))

(assert (=> start!498926 e!3010388))

(declare-fun inv!70354 (ListLongMap!5835) Bool)

(assert (=> start!498926 (and (inv!70354 lm!2315) e!3010389)))

(assert (=> start!498926 true))

(declare-fun tp_is_empty!34253 () Bool)

(assert (=> start!498926 tp_is_empty!34253))

(assert (= (and start!498926 res!2049891) b!4818215))

(assert (= (and b!4818215 res!2049889) b!4818212))

(assert (= (and b!4818212 res!2049888) b!4818211))

(assert (= (and b!4818211 res!2049890) b!4818213))

(assert (= start!498926 b!4818214))

(declare-fun m!5805166 () Bool)

(assert (=> b!4818211 m!5805166))

(assert (=> b!4818211 m!5805166))

(declare-fun m!5805168 () Bool)

(assert (=> b!4818211 m!5805168))

(declare-fun m!5805170 () Bool)

(assert (=> b!4818212 m!5805170))

(assert (=> b!4818212 m!5805170))

(declare-fun m!5805172 () Bool)

(assert (=> b!4818212 m!5805172))

(declare-fun m!5805174 () Bool)

(assert (=> b!4818215 m!5805174))

(declare-fun m!5805176 () Bool)

(assert (=> start!498926 m!5805176))

(declare-fun m!5805178 () Bool)

(assert (=> start!498926 m!5805178))

(check-sat (not b!4818211) (not b!4818215) (not b!4818214) (not start!498926) (not b!4818212) tp_is_empty!34253)
(check-sat)
