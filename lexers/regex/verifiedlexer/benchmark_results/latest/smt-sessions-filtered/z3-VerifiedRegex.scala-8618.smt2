; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459676 () Bool)

(assert start!459676)

(declare-fun b!4603306 () Bool)

(declare-fun e!2871359 () Bool)

(declare-fun e!2871360 () Bool)

(assert (=> b!4603306 (= e!2871359 e!2871360)))

(declare-fun res!1925937 () Bool)

(assert (=> b!4603306 (=> (not res!1925937) (not e!2871360))))

(declare-fun lt!1761908 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4603306 (= res!1925937 (= lt!1761908 hash!344))))

(declare-datatypes ((Hashable!5737 0))(
  ( (HashableExt!5736 (__x!31440 Int)) )
))
(declare-fun hashF!1107 () Hashable!5737)

(declare-datatypes ((K!12495 0))(
  ( (K!12496 (val!18267 Int)) )
))
(declare-fun key!3287 () K!12495)

(declare-fun hash!3259 (Hashable!5737 K!12495) (_ BitVec 64))

(assert (=> b!4603306 (= lt!1761908 (hash!3259 hashF!1107 key!3287))))

(declare-fun b!4603307 () Bool)

(declare-fun res!1925943 () Bool)

(assert (=> b!4603307 (=> (not res!1925943) (not e!2871359))))

(declare-datatypes ((V!12741 0))(
  ( (V!12742 (val!18268 Int)) )
))
(declare-datatypes ((tuple2!51802 0))(
  ( (tuple2!51803 (_1!29195 K!12495) (_2!29195 V!12741)) )
))
(declare-datatypes ((List!51252 0))(
  ( (Nil!51128) (Cons!51128 (h!57102 tuple2!51802) (t!358246 List!51252)) )
))
(declare-datatypes ((tuple2!51804 0))(
  ( (tuple2!51805 (_1!29196 (_ BitVec 64)) (_2!29196 List!51252)) )
))
(declare-datatypes ((List!51253 0))(
  ( (Nil!51129) (Cons!51129 (h!57103 tuple2!51804) (t!358247 List!51253)) )
))
(declare-datatypes ((ListLongMap!3323 0))(
  ( (ListLongMap!3324 (toList!4691 List!51253)) )
))
(declare-fun lm!1477 () ListLongMap!3323)

(declare-datatypes ((ListMap!3953 0))(
  ( (ListMap!3954 (toList!4692 List!51252)) )
))
(declare-fun contains!14101 (ListMap!3953 K!12495) Bool)

(declare-fun extractMap!1398 (List!51253) ListMap!3953)

(assert (=> b!4603307 (= res!1925943 (contains!14101 (extractMap!1398 (toList!4691 lm!1477)) key!3287))))

(declare-fun b!4603308 () Bool)

(declare-fun res!1925938 () Bool)

(declare-fun e!2871362 () Bool)

(assert (=> b!4603308 (=> res!1925938 e!2871362)))

(declare-fun newBucket!178 () List!51252)

(declare-fun noDuplicateKeys!1338 (List!51252) Bool)

(assert (=> b!4603308 (= res!1925938 (not (noDuplicateKeys!1338 newBucket!178)))))

(declare-fun b!4603309 () Bool)

(declare-fun res!1925940 () Bool)

(declare-fun e!2871357 () Bool)

(assert (=> b!4603309 (=> res!1925940 e!2871357)))

(declare-fun lt!1761909 () List!51252)

(declare-fun containsKey!2194 (List!51252 K!12495) Bool)

(assert (=> b!4603309 (= res!1925940 (containsKey!2194 lt!1761909 key!3287))))

(declare-fun b!4603310 () Bool)

(declare-fun e!2871361 () Bool)

(declare-fun tp!1340651 () Bool)

(assert (=> b!4603310 (= e!2871361 tp!1340651)))

(declare-fun b!4603311 () Bool)

(declare-fun res!1925948 () Bool)

(assert (=> b!4603311 (=> res!1925948 e!2871357)))

(declare-fun lt!1761907 () tuple2!51804)

(declare-fun contains!14102 (List!51253 tuple2!51804) Bool)

(assert (=> b!4603311 (= res!1925948 (not (contains!14102 (t!358247 (toList!4691 lm!1477)) lt!1761907)))))

(declare-fun b!4603312 () Bool)

(declare-fun res!1925946 () Bool)

(assert (=> b!4603312 (=> (not res!1925946) (not e!2871360))))

(declare-fun allKeysSameHash!1194 (List!51252 (_ BitVec 64) Hashable!5737) Bool)

(assert (=> b!4603312 (= res!1925946 (allKeysSameHash!1194 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4603313 () Bool)

(declare-fun res!1925942 () Bool)

(assert (=> b!4603313 (=> res!1925942 e!2871357)))

(declare-fun lt!1761913 () ListLongMap!3323)

(declare-fun apply!12075 (ListLongMap!3323 (_ BitVec 64)) List!51252)

(assert (=> b!4603313 (= res!1925942 (not (= (apply!12075 lt!1761913 hash!344) lt!1761909)))))

(declare-fun b!4603314 () Bool)

(declare-fun res!1925939 () Bool)

(assert (=> b!4603314 (=> (not res!1925939) (not e!2871359))))

(declare-fun allKeysSameHashInMap!1449 (ListLongMap!3323 Hashable!5737) Bool)

(assert (=> b!4603314 (= res!1925939 (allKeysSameHashInMap!1449 lm!1477 hashF!1107))))

(declare-fun b!4603305 () Bool)

(assert (=> b!4603305 (= e!2871360 (not e!2871362))))

(declare-fun res!1925947 () Bool)

(assert (=> b!4603305 (=> res!1925947 e!2871362)))

(declare-fun removePairForKey!963 (List!51252 K!12495) List!51252)

(assert (=> b!4603305 (= res!1925947 (not (= newBucket!178 (removePairForKey!963 lt!1761909 key!3287))))))

(declare-datatypes ((Unit!108811 0))(
  ( (Unit!108812) )
))
(declare-fun lt!1761911 () Unit!108811)

(declare-fun lambda!187016 () Int)

(declare-fun forallContained!2883 (List!51253 Int tuple2!51804) Unit!108811)

(assert (=> b!4603305 (= lt!1761911 (forallContained!2883 (toList!4691 lm!1477) lambda!187016 lt!1761907))))

(assert (=> b!4603305 (contains!14102 (toList!4691 lm!1477) lt!1761907)))

(assert (=> b!4603305 (= lt!1761907 (tuple2!51805 hash!344 lt!1761909))))

(declare-fun lt!1761912 () Unit!108811)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!848 (List!51253 (_ BitVec 64) List!51252) Unit!108811)

(assert (=> b!4603305 (= lt!1761912 (lemmaGetValueByKeyImpliesContainsTuple!848 (toList!4691 lm!1477) hash!344 lt!1761909))))

(assert (=> b!4603305 (= lt!1761909 (apply!12075 lm!1477 hash!344))))

(declare-fun contains!14103 (ListLongMap!3323 (_ BitVec 64)) Bool)

(assert (=> b!4603305 (contains!14103 lm!1477 lt!1761908)))

(declare-fun lt!1761910 () Unit!108811)

(declare-fun lemmaInGenMapThenLongMapContainsHash!412 (ListLongMap!3323 K!12495 Hashable!5737) Unit!108811)

(assert (=> b!4603305 (= lt!1761910 (lemmaInGenMapThenLongMapContainsHash!412 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1925941 () Bool)

(assert (=> start!459676 (=> (not res!1925941) (not e!2871359))))

(declare-fun forall!10634 (List!51253 Int) Bool)

(assert (=> start!459676 (= res!1925941 (forall!10634 (toList!4691 lm!1477) lambda!187016))))

(assert (=> start!459676 e!2871359))

(assert (=> start!459676 true))

(declare-fun inv!66679 (ListLongMap!3323) Bool)

(assert (=> start!459676 (and (inv!66679 lm!1477) e!2871361)))

(declare-fun tp_is_empty!28645 () Bool)

(assert (=> start!459676 tp_is_empty!28645))

(declare-fun e!2871358 () Bool)

(assert (=> start!459676 e!2871358))

(declare-fun b!4603315 () Bool)

(assert (=> b!4603315 (= e!2871357 true)))

(declare-fun b!4603316 () Bool)

(assert (=> b!4603316 (= e!2871362 e!2871357)))

(declare-fun res!1925944 () Bool)

(assert (=> b!4603316 (=> res!1925944 e!2871357)))

(assert (=> b!4603316 (= res!1925944 (not (contains!14103 lt!1761913 hash!344)))))

(declare-fun tail!7981 (ListLongMap!3323) ListLongMap!3323)

(assert (=> b!4603316 (= lt!1761913 (tail!7981 lm!1477))))

(declare-fun tp_is_empty!28647 () Bool)

(declare-fun tp!1340650 () Bool)

(declare-fun b!4603317 () Bool)

(assert (=> b!4603317 (= e!2871358 (and tp_is_empty!28645 tp_is_empty!28647 tp!1340650))))

(declare-fun b!4603318 () Bool)

(declare-fun res!1925945 () Bool)

(assert (=> b!4603318 (=> res!1925945 e!2871362)))

(get-info :version)

(assert (=> b!4603318 (= res!1925945 (or ((_ is Nil!51129) (toList!4691 lm!1477)) (= (_1!29196 (h!57103 (toList!4691 lm!1477))) hash!344)))))

(assert (= (and start!459676 res!1925941) b!4603314))

(assert (= (and b!4603314 res!1925939) b!4603307))

(assert (= (and b!4603307 res!1925943) b!4603306))

(assert (= (and b!4603306 res!1925937) b!4603312))

(assert (= (and b!4603312 res!1925946) b!4603305))

(assert (= (and b!4603305 (not res!1925947)) b!4603308))

(assert (= (and b!4603308 (not res!1925938)) b!4603318))

(assert (= (and b!4603318 (not res!1925945)) b!4603316))

(assert (= (and b!4603316 (not res!1925944)) b!4603313))

(assert (= (and b!4603313 (not res!1925942)) b!4603311))

(assert (= (and b!4603311 (not res!1925948)) b!4603309))

(assert (= (and b!4603309 (not res!1925940)) b!4603315))

(assert (= start!459676 b!4603310))

(assert (= (and start!459676 ((_ is Cons!51128) newBucket!178)) b!4603317))

(declare-fun m!5432417 () Bool)

(assert (=> b!4603305 m!5432417))

(declare-fun m!5432419 () Bool)

(assert (=> b!4603305 m!5432419))

(declare-fun m!5432421 () Bool)

(assert (=> b!4603305 m!5432421))

(declare-fun m!5432423 () Bool)

(assert (=> b!4603305 m!5432423))

(declare-fun m!5432425 () Bool)

(assert (=> b!4603305 m!5432425))

(declare-fun m!5432427 () Bool)

(assert (=> b!4603305 m!5432427))

(declare-fun m!5432429 () Bool)

(assert (=> b!4603305 m!5432429))

(declare-fun m!5432431 () Bool)

(assert (=> b!4603308 m!5432431))

(declare-fun m!5432433 () Bool)

(assert (=> b!4603307 m!5432433))

(assert (=> b!4603307 m!5432433))

(declare-fun m!5432435 () Bool)

(assert (=> b!4603307 m!5432435))

(declare-fun m!5432437 () Bool)

(assert (=> b!4603306 m!5432437))

(declare-fun m!5432439 () Bool)

(assert (=> b!4603313 m!5432439))

(declare-fun m!5432441 () Bool)

(assert (=> b!4603309 m!5432441))

(declare-fun m!5432443 () Bool)

(assert (=> b!4603312 m!5432443))

(declare-fun m!5432445 () Bool)

(assert (=> b!4603311 m!5432445))

(declare-fun m!5432447 () Bool)

(assert (=> b!4603314 m!5432447))

(declare-fun m!5432449 () Bool)

(assert (=> b!4603316 m!5432449))

(declare-fun m!5432451 () Bool)

(assert (=> b!4603316 m!5432451))

(declare-fun m!5432453 () Bool)

(assert (=> start!459676 m!5432453))

(declare-fun m!5432455 () Bool)

(assert (=> start!459676 m!5432455))

(check-sat (not b!4603314) (not b!4603308) (not start!459676) (not b!4603310) tp_is_empty!28647 (not b!4603311) (not b!4603317) (not b!4603306) (not b!4603312) (not b!4603316) (not b!4603307) tp_is_empty!28645 (not b!4603313) (not b!4603309) (not b!4603305))
(check-sat)
