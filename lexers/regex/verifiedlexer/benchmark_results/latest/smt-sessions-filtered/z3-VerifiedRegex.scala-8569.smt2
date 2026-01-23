; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!453520 () Bool)

(assert start!453520)

(declare-fun b!4560919 () Bool)

(declare-fun res!1903197 () Bool)

(declare-fun e!2843071 () Bool)

(assert (=> b!4560919 (=> res!1903197 e!2843071)))

(declare-datatypes ((K!12250 0))(
  ( (K!12251 (val!18071 Int)) )
))
(declare-datatypes ((V!12496 0))(
  ( (V!12497 (val!18072 Int)) )
))
(declare-datatypes ((tuple2!51410 0))(
  ( (tuple2!51411 (_1!28999 K!12250) (_2!28999 V!12496)) )
))
(declare-datatypes ((List!50996 0))(
  ( (Nil!50872) (Cons!50872 (h!56785 tuple2!51410) (t!357970 List!50996)) )
))
(declare-fun lt!1731713 () List!50996)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((tuple2!51412 0))(
  ( (tuple2!51413 (_1!29000 (_ BitVec 64)) (_2!29000 List!50996)) )
))
(declare-datatypes ((List!50997 0))(
  ( (Nil!50873) (Cons!50873 (h!56786 tuple2!51412) (t!357971 List!50997)) )
))
(declare-datatypes ((ListLongMap!3127 0))(
  ( (ListLongMap!3128 (toList!4495 List!50997)) )
))
(declare-fun lt!1731720 () ListLongMap!3127)

(declare-fun apply!11981 (ListLongMap!3127 (_ BitVec 64)) List!50996)

(assert (=> b!4560919 (= res!1903197 (not (= (apply!11981 lt!1731720 hash!344) lt!1731713)))))

(declare-fun b!4560920 () Bool)

(declare-datatypes ((Unit!102501 0))(
  ( (Unit!102502) )
))
(declare-fun e!2843069 () Unit!102501)

(declare-fun Unit!102503 () Unit!102501)

(assert (=> b!4560920 (= e!2843069 Unit!102503)))

(declare-datatypes ((Hashable!5639 0))(
  ( (HashableExt!5638 (__x!31342 Int)) )
))
(declare-fun hashF!1107 () Hashable!5639)

(declare-fun lm!1477 () ListLongMap!3127)

(declare-fun key!3287 () K!12250)

(declare-fun lt!1731718 () Unit!102501)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!226 (ListLongMap!3127 K!12250 Hashable!5639) Unit!102501)

(assert (=> b!4560920 (= lt!1731718 (lemmaNotInItsHashBucketThenNotInMap!226 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4560920 false))

(declare-fun b!4560921 () Bool)

(declare-fun lt!1731719 () Bool)

(assert (=> b!4560921 (= e!2843071 lt!1731719)))

(declare-fun lt!1731722 () Unit!102501)

(assert (=> b!4560921 (= lt!1731722 e!2843069)))

(declare-fun c!779826 () Bool)

(assert (=> b!4560921 (= c!779826 (not lt!1731719))))

(declare-fun containsKey!1982 (List!50996 K!12250) Bool)

(assert (=> b!4560921 (= lt!1731719 (containsKey!1982 lt!1731713 key!3287))))

(declare-fun b!4560922 () Bool)

(declare-fun Unit!102504 () Unit!102501)

(assert (=> b!4560922 (= e!2843069 Unit!102504)))

(declare-fun b!4560923 () Bool)

(declare-fun e!2843068 () Bool)

(declare-fun e!2843072 () Bool)

(assert (=> b!4560923 (= e!2843068 e!2843072)))

(declare-fun res!1903195 () Bool)

(assert (=> b!4560923 (=> (not res!1903195) (not e!2843072))))

(declare-fun lt!1731716 () (_ BitVec 64))

(assert (=> b!4560923 (= res!1903195 (= lt!1731716 hash!344))))

(declare-fun hash!3041 (Hashable!5639 K!12250) (_ BitVec 64))

(assert (=> b!4560923 (= lt!1731716 (hash!3041 hashF!1107 key!3287))))

(declare-fun tp!1339274 () Bool)

(declare-fun e!2843073 () Bool)

(declare-fun tp_is_empty!28255 () Bool)

(declare-fun b!4560924 () Bool)

(declare-fun tp_is_empty!28253 () Bool)

(assert (=> b!4560924 (= e!2843073 (and tp_is_empty!28253 tp_is_empty!28255 tp!1339274))))

(declare-fun b!4560925 () Bool)

(declare-fun res!1903189 () Bool)

(assert (=> b!4560925 (=> (not res!1903189) (not e!2843068))))

(declare-datatypes ((ListMap!3757 0))(
  ( (ListMap!3758 (toList!4496 List!50996)) )
))
(declare-fun contains!13727 (ListMap!3757 K!12250) Bool)

(declare-fun extractMap!1300 (List!50997) ListMap!3757)

(assert (=> b!4560925 (= res!1903189 (contains!13727 (extractMap!1300 (toList!4495 lm!1477)) key!3287))))

(declare-fun b!4560926 () Bool)

(declare-fun res!1903194 () Bool)

(declare-fun e!2843070 () Bool)

(assert (=> b!4560926 (=> res!1903194 e!2843070)))

(declare-fun newBucket!178 () List!50996)

(declare-fun noDuplicateKeys!1244 (List!50996) Bool)

(assert (=> b!4560926 (= res!1903194 (not (noDuplicateKeys!1244 newBucket!178)))))

(declare-fun res!1903192 () Bool)

(assert (=> start!453520 (=> (not res!1903192) (not e!2843068))))

(declare-fun lambda!180011 () Int)

(declare-fun forall!10436 (List!50997 Int) Bool)

(assert (=> start!453520 (= res!1903192 (forall!10436 (toList!4495 lm!1477) lambda!180011))))

(assert (=> start!453520 e!2843068))

(assert (=> start!453520 true))

(declare-fun e!2843067 () Bool)

(declare-fun inv!66434 (ListLongMap!3127) Bool)

(assert (=> start!453520 (and (inv!66434 lm!1477) e!2843067)))

(assert (=> start!453520 tp_is_empty!28253))

(assert (=> start!453520 e!2843073))

(declare-fun b!4560927 () Bool)

(declare-fun res!1903187 () Bool)

(assert (=> b!4560927 (=> (not res!1903187) (not e!2843072))))

(declare-fun allKeysSameHash!1098 (List!50996 (_ BitVec 64) Hashable!5639) Bool)

(assert (=> b!4560927 (= res!1903187 (allKeysSameHash!1098 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4560928 () Bool)

(declare-fun res!1903193 () Bool)

(assert (=> b!4560928 (=> res!1903193 e!2843070)))

(get-info :version)

(assert (=> b!4560928 (= res!1903193 (or ((_ is Nil!50873) (toList!4495 lm!1477)) (= (_1!29000 (h!56786 (toList!4495 lm!1477))) hash!344)))))

(declare-fun b!4560929 () Bool)

(assert (=> b!4560929 (= e!2843070 e!2843071)))

(declare-fun res!1903196 () Bool)

(assert (=> b!4560929 (=> res!1903196 e!2843071)))

(declare-fun contains!13728 (ListLongMap!3127 (_ BitVec 64)) Bool)

(assert (=> b!4560929 (= res!1903196 (not (contains!13728 lt!1731720 hash!344)))))

(declare-fun tail!7867 (ListLongMap!3127) ListLongMap!3127)

(assert (=> b!4560929 (= lt!1731720 (tail!7867 lm!1477))))

(declare-fun b!4560930 () Bool)

(declare-fun tp!1339275 () Bool)

(assert (=> b!4560930 (= e!2843067 tp!1339275)))

(declare-fun b!4560931 () Bool)

(assert (=> b!4560931 (= e!2843072 (not e!2843070))))

(declare-fun res!1903190 () Bool)

(assert (=> b!4560931 (=> res!1903190 e!2843070)))

(declare-fun removePairForKey!871 (List!50996 K!12250) List!50996)

(assert (=> b!4560931 (= res!1903190 (not (= newBucket!178 (removePairForKey!871 lt!1731713 key!3287))))))

(declare-fun lt!1731721 () Unit!102501)

(declare-fun lt!1731714 () tuple2!51412)

(declare-fun forallContained!2699 (List!50997 Int tuple2!51412) Unit!102501)

(assert (=> b!4560931 (= lt!1731721 (forallContained!2699 (toList!4495 lm!1477) lambda!180011 lt!1731714))))

(declare-fun contains!13729 (List!50997 tuple2!51412) Bool)

(assert (=> b!4560931 (contains!13729 (toList!4495 lm!1477) lt!1731714)))

(assert (=> b!4560931 (= lt!1731714 (tuple2!51413 hash!344 lt!1731713))))

(declare-fun lt!1731717 () Unit!102501)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!756 (List!50997 (_ BitVec 64) List!50996) Unit!102501)

(assert (=> b!4560931 (= lt!1731717 (lemmaGetValueByKeyImpliesContainsTuple!756 (toList!4495 lm!1477) hash!344 lt!1731713))))

(assert (=> b!4560931 (= lt!1731713 (apply!11981 lm!1477 hash!344))))

(assert (=> b!4560931 (contains!13728 lm!1477 lt!1731716)))

(declare-fun lt!1731715 () Unit!102501)

(declare-fun lemmaInGenMapThenLongMapContainsHash!318 (ListLongMap!3127 K!12250 Hashable!5639) Unit!102501)

(assert (=> b!4560931 (= lt!1731715 (lemmaInGenMapThenLongMapContainsHash!318 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4560932 () Bool)

(declare-fun res!1903188 () Bool)

(assert (=> b!4560932 (=> (not res!1903188) (not e!2843068))))

(declare-fun allKeysSameHashInMap!1351 (ListLongMap!3127 Hashable!5639) Bool)

(assert (=> b!4560932 (= res!1903188 (allKeysSameHashInMap!1351 lm!1477 hashF!1107))))

(declare-fun b!4560933 () Bool)

(declare-fun res!1903191 () Bool)

(assert (=> b!4560933 (=> res!1903191 e!2843071)))

(assert (=> b!4560933 (= res!1903191 (not (contains!13729 (t!357971 (toList!4495 lm!1477)) lt!1731714)))))

(assert (= (and start!453520 res!1903192) b!4560932))

(assert (= (and b!4560932 res!1903188) b!4560925))

(assert (= (and b!4560925 res!1903189) b!4560923))

(assert (= (and b!4560923 res!1903195) b!4560927))

(assert (= (and b!4560927 res!1903187) b!4560931))

(assert (= (and b!4560931 (not res!1903190)) b!4560926))

(assert (= (and b!4560926 (not res!1903194)) b!4560928))

(assert (= (and b!4560928 (not res!1903193)) b!4560929))

(assert (= (and b!4560929 (not res!1903196)) b!4560919))

(assert (= (and b!4560919 (not res!1903197)) b!4560933))

(assert (= (and b!4560933 (not res!1903191)) b!4560921))

(assert (= (and b!4560921 c!779826) b!4560920))

(assert (= (and b!4560921 (not c!779826)) b!4560922))

(assert (= start!453520 b!4560930))

(assert (= (and start!453520 ((_ is Cons!50872) newBucket!178)) b!4560924))

(declare-fun m!5351323 () Bool)

(assert (=> b!4560932 m!5351323))

(declare-fun m!5351325 () Bool)

(assert (=> b!4560919 m!5351325))

(declare-fun m!5351327 () Bool)

(assert (=> b!4560926 m!5351327))

(declare-fun m!5351329 () Bool)

(assert (=> b!4560933 m!5351329))

(declare-fun m!5351331 () Bool)

(assert (=> start!453520 m!5351331))

(declare-fun m!5351333 () Bool)

(assert (=> start!453520 m!5351333))

(declare-fun m!5351335 () Bool)

(assert (=> b!4560921 m!5351335))

(declare-fun m!5351337 () Bool)

(assert (=> b!4560925 m!5351337))

(assert (=> b!4560925 m!5351337))

(declare-fun m!5351339 () Bool)

(assert (=> b!4560925 m!5351339))

(declare-fun m!5351341 () Bool)

(assert (=> b!4560931 m!5351341))

(declare-fun m!5351343 () Bool)

(assert (=> b!4560931 m!5351343))

(declare-fun m!5351345 () Bool)

(assert (=> b!4560931 m!5351345))

(declare-fun m!5351347 () Bool)

(assert (=> b!4560931 m!5351347))

(declare-fun m!5351349 () Bool)

(assert (=> b!4560931 m!5351349))

(declare-fun m!5351351 () Bool)

(assert (=> b!4560931 m!5351351))

(declare-fun m!5351353 () Bool)

(assert (=> b!4560931 m!5351353))

(declare-fun m!5351355 () Bool)

(assert (=> b!4560927 m!5351355))

(declare-fun m!5351357 () Bool)

(assert (=> b!4560929 m!5351357))

(declare-fun m!5351359 () Bool)

(assert (=> b!4560929 m!5351359))

(declare-fun m!5351361 () Bool)

(assert (=> b!4560923 m!5351361))

(declare-fun m!5351363 () Bool)

(assert (=> b!4560920 m!5351363))

(check-sat (not b!4560926) (not b!4560929) (not b!4560921) (not start!453520) (not b!4560920) (not b!4560933) (not b!4560931) tp_is_empty!28253 (not b!4560923) (not b!4560932) (not b!4560927) tp_is_empty!28255 (not b!4560930) (not b!4560919) (not b!4560925) (not b!4560924))
(check-sat)
