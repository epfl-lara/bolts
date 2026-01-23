; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498942 () Bool)

(assert start!498942)

(declare-fun b!4818331 () Bool)

(declare-fun res!2049986 () Bool)

(declare-fun e!3010437 () Bool)

(assert (=> b!4818331 (=> (not res!2049986) (not e!3010437))))

(declare-datatypes ((K!16474 0))(
  ( (K!16475 (val!21485 Int)) )
))
(declare-fun key!5553 () K!16474)

(declare-datatypes ((Hashable!7194 0))(
  ( (HashableExt!7193 (__x!33469 Int)) )
))
(declare-fun hashF!1533 () Hashable!7194)

(declare-datatypes ((V!16720 0))(
  ( (V!16721 (val!21486 Int)) )
))
(declare-datatypes ((tuple2!57906 0))(
  ( (tuple2!57907 (_1!32247 K!16474) (_2!32247 V!16720)) )
))
(declare-datatypes ((List!54935 0))(
  ( (Nil!54811) (Cons!54811 (h!61245 tuple2!57906) (t!362431 List!54935)) )
))
(declare-datatypes ((tuple2!57908 0))(
  ( (tuple2!57909 (_1!32248 (_ BitVec 64)) (_2!32248 List!54935)) )
))
(declare-datatypes ((List!54936 0))(
  ( (Nil!54812) (Cons!54812 (h!61246 tuple2!57908) (t!362432 List!54936)) )
))
(declare-datatypes ((ListLongMap!5851 0))(
  ( (ListLongMap!5852 (toList!7371 List!54936)) )
))
(declare-fun lm!2315 () ListLongMap!5851)

(declare-fun contains!18645 (ListLongMap!5851 (_ BitVec 64)) Bool)

(declare-fun hash!5270 (Hashable!7194 K!16474) (_ BitVec 64))

(assert (=> b!4818331 (= res!2049986 (not (contains!18645 lm!2315 (hash!5270 hashF!1533 key!5553))))))

(declare-fun b!4818332 () Bool)

(declare-fun res!2049984 () Bool)

(assert (=> b!4818332 (=> (not res!2049984) (not e!3010437))))

(declare-fun allKeysSameHashInMap!2510 (ListLongMap!5851 Hashable!7194) Bool)

(assert (=> b!4818332 (= res!2049984 (allKeysSameHashInMap!2510 lm!2315 hashF!1533))))

(declare-fun b!4818333 () Bool)

(assert (=> b!4818333 (= e!3010437 (not true))))

(assert (=> b!4818333 false))

(declare-datatypes ((Unit!142144 0))(
  ( (Unit!142145) )
))
(declare-fun lt!1968264 () Unit!142144)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!78 (ListLongMap!5851 K!16474 Hashable!7194) Unit!142144)

(assert (=> b!4818333 (= lt!1968264 (lemmaHashNotInLongMapThenNotInGenerated!78 lm!2315 key!5553 hashF!1533))))

(declare-fun res!2049985 () Bool)

(assert (=> start!498942 (=> (not res!2049985) (not e!3010437))))

(declare-fun lambda!235018 () Int)

(declare-fun forall!12508 (List!54936 Int) Bool)

(assert (=> start!498942 (= res!2049985 (forall!12508 (toList!7371 lm!2315) lambda!235018))))

(assert (=> start!498942 e!3010437))

(declare-fun e!3010436 () Bool)

(declare-fun inv!70374 (ListLongMap!5851) Bool)

(assert (=> start!498942 (and (inv!70374 lm!2315) e!3010436)))

(assert (=> start!498942 true))

(declare-fun tp_is_empty!34269 () Bool)

(assert (=> start!498942 tp_is_empty!34269))

(declare-fun b!4818334 () Bool)

(declare-fun tp!1362051 () Bool)

(assert (=> b!4818334 (= e!3010436 tp!1362051)))

(declare-fun b!4818335 () Bool)

(declare-fun res!2049987 () Bool)

(assert (=> b!4818335 (=> (not res!2049987) (not e!3010437))))

(declare-datatypes ((ListMap!6785 0))(
  ( (ListMap!6786 (toList!7372 List!54935)) )
))
(declare-fun contains!18646 (ListMap!6785 K!16474) Bool)

(declare-fun extractMap!2644 (List!54936) ListMap!6785)

(assert (=> b!4818335 (= res!2049987 (contains!18646 (extractMap!2644 (toList!7371 lm!2315)) key!5553))))

(assert (= (and start!498942 res!2049985) b!4818332))

(assert (= (and b!4818332 res!2049984) b!4818335))

(assert (= (and b!4818335 res!2049987) b!4818331))

(assert (= (and b!4818331 res!2049986) b!4818333))

(assert (= start!498942 b!4818334))

(declare-fun m!5805284 () Bool)

(assert (=> b!4818335 m!5805284))

(assert (=> b!4818335 m!5805284))

(declare-fun m!5805286 () Bool)

(assert (=> b!4818335 m!5805286))

(declare-fun m!5805288 () Bool)

(assert (=> b!4818333 m!5805288))

(declare-fun m!5805290 () Bool)

(assert (=> start!498942 m!5805290))

(declare-fun m!5805292 () Bool)

(assert (=> start!498942 m!5805292))

(declare-fun m!5805294 () Bool)

(assert (=> b!4818331 m!5805294))

(assert (=> b!4818331 m!5805294))

(declare-fun m!5805296 () Bool)

(assert (=> b!4818331 m!5805296))

(declare-fun m!5805298 () Bool)

(assert (=> b!4818332 m!5805298))

(check-sat (not start!498942) (not b!4818331) (not b!4818334) (not b!4818333) (not b!4818335) (not b!4818332) tp_is_empty!34269)
(check-sat)
