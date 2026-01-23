; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498936 () Bool)

(assert start!498936)

(declare-fun b!4818286 () Bool)

(declare-fun e!3010419 () Bool)

(declare-fun tp!1362042 () Bool)

(assert (=> b!4818286 (= e!3010419 tp!1362042)))

(declare-fun b!4818287 () Bool)

(declare-fun res!2049949 () Bool)

(declare-fun e!3010418 () Bool)

(assert (=> b!4818287 (=> (not res!2049949) (not e!3010418))))

(declare-datatypes ((K!16467 0))(
  ( (K!16468 (val!21479 Int)) )
))
(declare-datatypes ((V!16713 0))(
  ( (V!16714 (val!21480 Int)) )
))
(declare-datatypes ((tuple2!57894 0))(
  ( (tuple2!57895 (_1!32241 K!16467) (_2!32241 V!16713)) )
))
(declare-datatypes ((List!54929 0))(
  ( (Nil!54805) (Cons!54805 (h!61239 tuple2!57894) (t!362425 List!54929)) )
))
(declare-datatypes ((tuple2!57896 0))(
  ( (tuple2!57897 (_1!32242 (_ BitVec 64)) (_2!32242 List!54929)) )
))
(declare-datatypes ((List!54930 0))(
  ( (Nil!54806) (Cons!54806 (h!61240 tuple2!57896) (t!362426 List!54930)) )
))
(declare-datatypes ((ListLongMap!5845 0))(
  ( (ListLongMap!5846 (toList!7365 List!54930)) )
))
(declare-fun lm!2315 () ListLongMap!5845)

(declare-fun key!5553 () K!16467)

(declare-datatypes ((ListMap!6779 0))(
  ( (ListMap!6780 (toList!7366 List!54929)) )
))
(declare-fun contains!18639 (ListMap!6779 K!16467) Bool)

(declare-fun extractMap!2641 (List!54930) ListMap!6779)

(assert (=> b!4818287 (= res!2049949 (contains!18639 (extractMap!2641 (toList!7365 lm!2315)) key!5553))))

(declare-fun b!4818288 () Bool)

(declare-fun res!2049950 () Bool)

(assert (=> b!4818288 (=> (not res!2049950) (not e!3010418))))

(declare-datatypes ((Hashable!7191 0))(
  ( (HashableExt!7190 (__x!33466 Int)) )
))
(declare-fun hashF!1533 () Hashable!7191)

(declare-fun contains!18640 (ListLongMap!5845 (_ BitVec 64)) Bool)

(declare-fun hash!5267 (Hashable!7191 K!16467) (_ BitVec 64))

(assert (=> b!4818288 (= res!2049950 (not (contains!18640 lm!2315 (hash!5267 hashF!1533 key!5553))))))

(declare-fun b!4818289 () Bool)

(assert (=> b!4818289 (= e!3010418 false)))

(declare-fun b!4818290 () Bool)

(declare-fun res!2049951 () Bool)

(assert (=> b!4818290 (=> (not res!2049951) (not e!3010418))))

(declare-fun allKeysSameHashInMap!2507 (ListLongMap!5845 Hashable!7191) Bool)

(assert (=> b!4818290 (= res!2049951 (allKeysSameHashInMap!2507 lm!2315 hashF!1533))))

(declare-fun res!2049948 () Bool)

(assert (=> start!498936 (=> (not res!2049948) (not e!3010418))))

(declare-fun lambda!235009 () Int)

(declare-fun forall!12505 (List!54930 Int) Bool)

(assert (=> start!498936 (= res!2049948 (forall!12505 (toList!7365 lm!2315) lambda!235009))))

(assert (=> start!498936 e!3010418))

(declare-fun inv!70368 (ListLongMap!5845) Bool)

(assert (=> start!498936 (and (inv!70368 lm!2315) e!3010419)))

(assert (=> start!498936 true))

(declare-fun tp_is_empty!34263 () Bool)

(assert (=> start!498936 tp_is_empty!34263))

(assert (= (and start!498936 res!2049948) b!4818290))

(assert (= (and b!4818290 res!2049951) b!4818287))

(assert (= (and b!4818287 res!2049949) b!4818288))

(assert (= (and b!4818288 res!2049950) b!4818289))

(assert (= start!498936 b!4818286))

(declare-fun m!5805240 () Bool)

(assert (=> b!4818287 m!5805240))

(assert (=> b!4818287 m!5805240))

(declare-fun m!5805242 () Bool)

(assert (=> b!4818287 m!5805242))

(declare-fun m!5805244 () Bool)

(assert (=> b!4818288 m!5805244))

(assert (=> b!4818288 m!5805244))

(declare-fun m!5805246 () Bool)

(assert (=> b!4818288 m!5805246))

(declare-fun m!5805248 () Bool)

(assert (=> b!4818290 m!5805248))

(declare-fun m!5805250 () Bool)

(assert (=> start!498936 m!5805250))

(declare-fun m!5805252 () Bool)

(assert (=> start!498936 m!5805252))

(push 1)

(assert (not b!4818290))

(assert tp_is_empty!34263)

(assert (not b!4818288))

(assert (not b!4818287))

(assert (not start!498936))

(assert (not b!4818286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

