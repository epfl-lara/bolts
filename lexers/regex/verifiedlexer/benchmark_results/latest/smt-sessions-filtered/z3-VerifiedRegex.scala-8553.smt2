; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!451216 () Bool)

(assert start!451216)

(declare-fun b!4543221 () Bool)

(declare-fun res!1893977 () Bool)

(declare-fun e!2831178 () Bool)

(assert (=> b!4543221 (=> res!1893977 e!2831178)))

(declare-datatypes ((K!12170 0))(
  ( (K!12171 (val!18007 Int)) )
))
(declare-datatypes ((V!12416 0))(
  ( (V!12417 (val!18008 Int)) )
))
(declare-datatypes ((tuple2!51282 0))(
  ( (tuple2!51283 (_1!28935 K!12170) (_2!28935 V!12416)) )
))
(declare-datatypes ((List!50910 0))(
  ( (Nil!50786) (Cons!50786 (h!56675 tuple2!51282) (t!357872 List!50910)) )
))
(declare-datatypes ((tuple2!51284 0))(
  ( (tuple2!51285 (_1!28936 (_ BitVec 64)) (_2!28936 List!50910)) )
))
(declare-datatypes ((List!50911 0))(
  ( (Nil!50787) (Cons!50787 (h!56676 tuple2!51284) (t!357873 List!50911)) )
))
(declare-datatypes ((ListLongMap!3063 0))(
  ( (ListLongMap!3064 (toList!4431 List!50911)) )
))
(declare-fun lm!1477 () ListLongMap!3063)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4543221 (= res!1893977 (or ((_ is Nil!50787) (toList!4431 lm!1477)) (not (= (_1!28936 (h!56676 (toList!4431 lm!1477))) hash!344))))))

(declare-fun b!4543222 () Bool)

(declare-fun res!1893978 () Bool)

(assert (=> b!4543222 (=> res!1893978 e!2831178)))

(declare-fun newBucket!178 () List!50910)

(declare-fun noDuplicateKeys!1212 (List!50910) Bool)

(assert (=> b!4543222 (= res!1893978 (not (noDuplicateKeys!1212 newBucket!178)))))

(declare-fun b!4543223 () Bool)

(declare-fun res!1893975 () Bool)

(declare-fun e!2831176 () Bool)

(assert (=> b!4543223 (=> (not res!1893975) (not e!2831176))))

(declare-datatypes ((Hashable!5607 0))(
  ( (HashableExt!5606 (__x!31310 Int)) )
))
(declare-fun hashF!1107 () Hashable!5607)

(declare-fun allKeysSameHash!1066 (List!50910 (_ BitVec 64) Hashable!5607) Bool)

(assert (=> b!4543223 (= res!1893975 (allKeysSameHash!1066 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1893981 () Bool)

(declare-fun e!2831177 () Bool)

(assert (=> start!451216 (=> (not res!1893981) (not e!2831177))))

(declare-fun lambda!176847 () Int)

(declare-fun forall!10367 (List!50911 Int) Bool)

(assert (=> start!451216 (= res!1893981 (forall!10367 (toList!4431 lm!1477) lambda!176847))))

(assert (=> start!451216 e!2831177))

(assert (=> start!451216 true))

(declare-fun e!2831179 () Bool)

(declare-fun inv!66354 (ListLongMap!3063) Bool)

(assert (=> start!451216 (and (inv!66354 lm!1477) e!2831179)))

(declare-fun tp_is_empty!28125 () Bool)

(assert (=> start!451216 tp_is_empty!28125))

(declare-fun e!2831175 () Bool)

(assert (=> start!451216 e!2831175))

(declare-fun b!4543224 () Bool)

(declare-datatypes ((Unit!99014 0))(
  ( (Unit!99015) )
))
(declare-fun e!2831174 () Unit!99014)

(declare-fun Unit!99016 () Unit!99014)

(assert (=> b!4543224 (= e!2831174 Unit!99016)))

(declare-fun key!3287 () K!12170)

(declare-fun lt!1717970 () Unit!99014)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!200 (ListLongMap!3063 K!12170 Hashable!5607) Unit!99014)

(assert (=> b!4543224 (= lt!1717970 (lemmaNotInItsHashBucketThenNotInMap!200 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4543224 false))

(declare-fun b!4543225 () Bool)

(declare-fun res!1893982 () Bool)

(assert (=> b!4543225 (=> (not res!1893982) (not e!2831177))))

(declare-datatypes ((ListMap!3693 0))(
  ( (ListMap!3694 (toList!4432 List!50910)) )
))
(declare-fun contains!13599 (ListMap!3693 K!12170) Bool)

(declare-fun extractMap!1268 (List!50911) ListMap!3693)

(assert (=> b!4543225 (= res!1893982 (contains!13599 (extractMap!1268 (toList!4431 lm!1477)) key!3287))))

(declare-fun b!4543226 () Bool)

(declare-fun lt!1717966 () Bool)

(assert (=> b!4543226 (= e!2831178 lt!1717966)))

(declare-fun lt!1717968 () Unit!99014)

(assert (=> b!4543226 (= lt!1717968 e!2831174)))

(declare-fun c!775953 () Bool)

(assert (=> b!4543226 (= c!775953 (not lt!1717966))))

(declare-fun containsKey!1904 (List!50910 K!12170) Bool)

(assert (=> b!4543226 (= lt!1717966 (containsKey!1904 (_2!28936 (h!56676 (toList!4431 lm!1477))) key!3287))))

(declare-fun tp!1338781 () Bool)

(declare-fun tp_is_empty!28127 () Bool)

(declare-fun b!4543227 () Bool)

(assert (=> b!4543227 (= e!2831175 (and tp_is_empty!28125 tp_is_empty!28127 tp!1338781))))

(declare-fun b!4543228 () Bool)

(assert (=> b!4543228 (= e!2831177 e!2831176)))

(declare-fun res!1893979 () Bool)

(assert (=> b!4543228 (=> (not res!1893979) (not e!2831176))))

(declare-fun lt!1717974 () (_ BitVec 64))

(assert (=> b!4543228 (= res!1893979 (= lt!1717974 hash!344))))

(declare-fun hash!2947 (Hashable!5607 K!12170) (_ BitVec 64))

(assert (=> b!4543228 (= lt!1717974 (hash!2947 hashF!1107 key!3287))))

(declare-fun b!4543229 () Bool)

(declare-fun tp!1338780 () Bool)

(assert (=> b!4543229 (= e!2831179 tp!1338780)))

(declare-fun b!4543230 () Bool)

(declare-fun Unit!99017 () Unit!99014)

(assert (=> b!4543230 (= e!2831174 Unit!99017)))

(declare-fun b!4543231 () Bool)

(assert (=> b!4543231 (= e!2831176 (not e!2831178))))

(declare-fun res!1893976 () Bool)

(assert (=> b!4543231 (=> res!1893976 e!2831178)))

(declare-fun lt!1717967 () List!50910)

(declare-fun removePairForKey!839 (List!50910 K!12170) List!50910)

(assert (=> b!4543231 (= res!1893976 (not (= newBucket!178 (removePairForKey!839 lt!1717967 key!3287))))))

(declare-fun lt!1717971 () Unit!99014)

(declare-fun lt!1717973 () tuple2!51284)

(declare-fun forallContained!2633 (List!50911 Int tuple2!51284) Unit!99014)

(assert (=> b!4543231 (= lt!1717971 (forallContained!2633 (toList!4431 lm!1477) lambda!176847 lt!1717973))))

(declare-fun contains!13600 (List!50911 tuple2!51284) Bool)

(assert (=> b!4543231 (contains!13600 (toList!4431 lm!1477) lt!1717973)))

(assert (=> b!4543231 (= lt!1717973 (tuple2!51285 hash!344 lt!1717967))))

(declare-fun lt!1717972 () Unit!99014)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!724 (List!50911 (_ BitVec 64) List!50910) Unit!99014)

(assert (=> b!4543231 (= lt!1717972 (lemmaGetValueByKeyImpliesContainsTuple!724 (toList!4431 lm!1477) hash!344 lt!1717967))))

(declare-fun apply!11949 (ListLongMap!3063 (_ BitVec 64)) List!50910)

(assert (=> b!4543231 (= lt!1717967 (apply!11949 lm!1477 hash!344))))

(declare-fun contains!13601 (ListLongMap!3063 (_ BitVec 64)) Bool)

(assert (=> b!4543231 (contains!13601 lm!1477 lt!1717974)))

(declare-fun lt!1717969 () Unit!99014)

(declare-fun lemmaInGenMapThenLongMapContainsHash!286 (ListLongMap!3063 K!12170 Hashable!5607) Unit!99014)

(assert (=> b!4543231 (= lt!1717969 (lemmaInGenMapThenLongMapContainsHash!286 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4543232 () Bool)

(declare-fun res!1893980 () Bool)

(assert (=> b!4543232 (=> (not res!1893980) (not e!2831177))))

(declare-fun allKeysSameHashInMap!1319 (ListLongMap!3063 Hashable!5607) Bool)

(assert (=> b!4543232 (= res!1893980 (allKeysSameHashInMap!1319 lm!1477 hashF!1107))))

(assert (= (and start!451216 res!1893981) b!4543232))

(assert (= (and b!4543232 res!1893980) b!4543225))

(assert (= (and b!4543225 res!1893982) b!4543228))

(assert (= (and b!4543228 res!1893979) b!4543223))

(assert (= (and b!4543223 res!1893975) b!4543231))

(assert (= (and b!4543231 (not res!1893976)) b!4543222))

(assert (= (and b!4543222 (not res!1893978)) b!4543221))

(assert (= (and b!4543221 (not res!1893977)) b!4543226))

(assert (= (and b!4543226 c!775953) b!4543224))

(assert (= (and b!4543226 (not c!775953)) b!4543230))

(assert (= start!451216 b!4543229))

(assert (= (and start!451216 ((_ is Cons!50786) newBucket!178)) b!4543227))

(declare-fun m!5312257 () Bool)

(assert (=> b!4543228 m!5312257))

(declare-fun m!5312259 () Bool)

(assert (=> b!4543222 m!5312259))

(declare-fun m!5312261 () Bool)

(assert (=> b!4543223 m!5312261))

(declare-fun m!5312263 () Bool)

(assert (=> b!4543226 m!5312263))

(declare-fun m!5312265 () Bool)

(assert (=> b!4543225 m!5312265))

(assert (=> b!4543225 m!5312265))

(declare-fun m!5312267 () Bool)

(assert (=> b!4543225 m!5312267))

(declare-fun m!5312269 () Bool)

(assert (=> b!4543231 m!5312269))

(declare-fun m!5312271 () Bool)

(assert (=> b!4543231 m!5312271))

(declare-fun m!5312273 () Bool)

(assert (=> b!4543231 m!5312273))

(declare-fun m!5312275 () Bool)

(assert (=> b!4543231 m!5312275))

(declare-fun m!5312277 () Bool)

(assert (=> b!4543231 m!5312277))

(declare-fun m!5312279 () Bool)

(assert (=> b!4543231 m!5312279))

(declare-fun m!5312281 () Bool)

(assert (=> b!4543231 m!5312281))

(declare-fun m!5312283 () Bool)

(assert (=> b!4543232 m!5312283))

(declare-fun m!5312285 () Bool)

(assert (=> start!451216 m!5312285))

(declare-fun m!5312287 () Bool)

(assert (=> start!451216 m!5312287))

(declare-fun m!5312289 () Bool)

(assert (=> b!4543224 m!5312289))

(check-sat (not start!451216) (not b!4543222) (not b!4543227) (not b!4543232) (not b!4543226) tp_is_empty!28127 (not b!4543224) tp_is_empty!28125 (not b!4543229) (not b!4543228) (not b!4543231) (not b!4543225) (not b!4543223))
(check-sat)
