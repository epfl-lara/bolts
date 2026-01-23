; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!498930 () Bool)

(assert start!498930)

(declare-fun b!4818241 () Bool)

(declare-fun res!2049915 () Bool)

(declare-fun e!3010400 () Bool)

(assert (=> b!4818241 (=> (not res!2049915) (not e!3010400))))

(declare-datatypes ((K!16459 0))(
  ( (K!16460 (val!21473 Int)) )
))
(declare-fun key!5553 () K!16459)

(declare-datatypes ((Hashable!7188 0))(
  ( (HashableExt!7187 (__x!33463 Int)) )
))
(declare-fun hashF!1533 () Hashable!7188)

(declare-datatypes ((V!16705 0))(
  ( (V!16706 (val!21474 Int)) )
))
(declare-datatypes ((tuple2!57882 0))(
  ( (tuple2!57883 (_1!32235 K!16459) (_2!32235 V!16705)) )
))
(declare-datatypes ((List!54923 0))(
  ( (Nil!54799) (Cons!54799 (h!61233 tuple2!57882) (t!362419 List!54923)) )
))
(declare-datatypes ((tuple2!57884 0))(
  ( (tuple2!57885 (_1!32236 (_ BitVec 64)) (_2!32236 List!54923)) )
))
(declare-datatypes ((List!54924 0))(
  ( (Nil!54800) (Cons!54800 (h!61234 tuple2!57884) (t!362420 List!54924)) )
))
(declare-datatypes ((ListLongMap!5839 0))(
  ( (ListLongMap!5840 (toList!7359 List!54924)) )
))
(declare-fun lm!2315 () ListLongMap!5839)

(declare-fun contains!18633 (ListLongMap!5839 (_ BitVec 64)) Bool)

(declare-fun hash!5264 (Hashable!7188 K!16459) (_ BitVec 64))

(assert (=> b!4818241 (= res!2049915 (not (contains!18633 lm!2315 (hash!5264 hashF!1533 key!5553))))))

(declare-fun b!4818242 () Bool)

(declare-fun res!2049913 () Bool)

(assert (=> b!4818242 (=> (not res!2049913) (not e!3010400))))

(declare-datatypes ((ListMap!6773 0))(
  ( (ListMap!6774 (toList!7360 List!54923)) )
))
(declare-fun contains!18634 (ListMap!6773 K!16459) Bool)

(declare-fun extractMap!2638 (List!54924) ListMap!6773)

(assert (=> b!4818242 (= res!2049913 (contains!18634 (extractMap!2638 (toList!7359 lm!2315)) key!5553))))

(declare-fun b!4818243 () Bool)

(declare-fun e!3010401 () Bool)

(declare-fun tp!1362033 () Bool)

(assert (=> b!4818243 (= e!3010401 tp!1362033)))

(declare-fun res!2049914 () Bool)

(assert (=> start!498930 (=> (not res!2049914) (not e!3010400))))

(declare-fun lambda!234996 () Int)

(declare-fun forall!12502 (List!54924 Int) Bool)

(assert (=> start!498930 (= res!2049914 (forall!12502 (toList!7359 lm!2315) lambda!234996))))

(assert (=> start!498930 e!3010400))

(declare-fun inv!70359 (ListLongMap!5839) Bool)

(assert (=> start!498930 (and (inv!70359 lm!2315) e!3010401)))

(assert (=> start!498930 true))

(declare-fun tp_is_empty!34257 () Bool)

(assert (=> start!498930 tp_is_empty!34257))

(declare-fun b!4818244 () Bool)

(declare-fun res!2049912 () Bool)

(assert (=> b!4818244 (=> (not res!2049912) (not e!3010400))))

(declare-fun allKeysSameHashInMap!2504 (ListLongMap!5839 Hashable!7188) Bool)

(assert (=> b!4818244 (= res!2049912 (allKeysSameHashInMap!2504 lm!2315 hashF!1533))))

(declare-fun b!4818245 () Bool)

(assert (=> b!4818245 (= e!3010400 (not (forall!12502 (toList!7359 lm!2315) lambda!234996)))))

(assert (=> b!4818245 false))

(declare-datatypes ((Unit!142140 0))(
  ( (Unit!142141) )
))
(declare-fun lt!1968258 () Unit!142140)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!76 (ListLongMap!5839 K!16459 Hashable!7188) Unit!142140)

(assert (=> b!4818245 (= lt!1968258 (lemmaHashNotInLongMapThenNotInGenerated!76 lm!2315 key!5553 hashF!1533))))

(assert (= (and start!498930 res!2049914) b!4818244))

(assert (= (and b!4818244 res!2049912) b!4818242))

(assert (= (and b!4818242 res!2049913) b!4818241))

(assert (= (and b!4818241 res!2049915) b!4818245))

(assert (= start!498930 b!4818243))

(declare-fun m!5805196 () Bool)

(assert (=> b!4818244 m!5805196))

(declare-fun m!5805198 () Bool)

(assert (=> b!4818241 m!5805198))

(assert (=> b!4818241 m!5805198))

(declare-fun m!5805200 () Bool)

(assert (=> b!4818241 m!5805200))

(declare-fun m!5805202 () Bool)

(assert (=> start!498930 m!5805202))

(declare-fun m!5805204 () Bool)

(assert (=> start!498930 m!5805204))

(assert (=> b!4818245 m!5805202))

(declare-fun m!5805206 () Bool)

(assert (=> b!4818245 m!5805206))

(declare-fun m!5805208 () Bool)

(assert (=> b!4818242 m!5805208))

(assert (=> b!4818242 m!5805208))

(declare-fun m!5805210 () Bool)

(assert (=> b!4818242 m!5805210))

(check-sat (not b!4818245) (not start!498930) (not b!4818242) (not b!4818241) tp_is_empty!34257 (not b!4818243) (not b!4818244))
(check-sat)
