; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493306 () Bool)

(assert start!493306)

(declare-fun b!4791519 () Bool)

(declare-fun res!2036398 () Bool)

(declare-fun e!2991719 () Bool)

(assert (=> b!4791519 (=> res!2036398 e!2991719)))

(declare-datatypes ((K!15754 0))(
  ( (K!15755 (val!20909 Int)) )
))
(declare-datatypes ((V!16000 0))(
  ( (V!16001 (val!20910 Int)) )
))
(declare-datatypes ((tuple2!56792 0))(
  ( (tuple2!56793 (_1!31690 K!15754) (_2!31690 V!16000)) )
))
(declare-datatypes ((List!54307 0))(
  ( (Nil!54183) (Cons!54183 (h!60607 tuple2!56792) (t!361757 List!54307)) )
))
(declare-datatypes ((ListMap!6363 0))(
  ( (ListMap!6364 (toList!6891 List!54307)) )
))
(declare-fun lt!1950690 () ListMap!6363)

(declare-fun value!3111 () V!16000)

(declare-fun key!5896 () K!15754)

(declare-fun apply!12972 (ListMap!6363 K!15754) V!16000)

(assert (=> b!4791519 (= res!2036398 (not (= (apply!12972 lt!1950690 key!5896) value!3111)))))

(declare-fun b!4791520 () Bool)

(declare-fun res!2036389 () Bool)

(declare-fun e!2991721 () Bool)

(assert (=> b!4791520 (=> res!2036389 e!2991721)))

(declare-datatypes ((tuple2!56794 0))(
  ( (tuple2!56795 (_1!31691 (_ BitVec 64)) (_2!31691 List!54307)) )
))
(declare-datatypes ((List!54308 0))(
  ( (Nil!54184) (Cons!54184 (h!60608 tuple2!56794) (t!361758 List!54308)) )
))
(declare-datatypes ((ListLongMap!5313 0))(
  ( (ListLongMap!5314 (toList!6892 List!54308)) )
))
(declare-fun lm!2473 () ListLongMap!5313)

(get-info :version)

(assert (=> b!4791520 (= res!2036389 (not ((_ is Cons!54184) (toList!6892 lm!2473))))))

(declare-fun b!4791521 () Bool)

(declare-fun res!2036397 () Bool)

(declare-fun e!2991720 () Bool)

(assert (=> b!4791521 (=> (not res!2036397) (not e!2991720))))

(declare-fun contains!17790 (ListMap!6363 K!15754) Bool)

(declare-fun extractMap!2433 (List!54308) ListMap!6363)

(assert (=> b!4791521 (= res!2036397 (contains!17790 (extractMap!2433 (toList!6892 lm!2473)) key!5896))))

(declare-fun res!2036391 () Bool)

(assert (=> start!493306 (=> (not res!2036391) (not e!2991720))))

(declare-fun lambda!230379 () Int)

(declare-fun forall!12231 (List!54308 Int) Bool)

(assert (=> start!493306 (= res!2036391 (forall!12231 (toList!6892 lm!2473) lambda!230379))))

(assert (=> start!493306 e!2991720))

(declare-fun e!2991716 () Bool)

(declare-fun inv!69780 (ListLongMap!5313) Bool)

(assert (=> start!493306 (and (inv!69780 lm!2473) e!2991716)))

(assert (=> start!493306 true))

(declare-fun tp_is_empty!33505 () Bool)

(assert (=> start!493306 tp_is_empty!33505))

(declare-fun tp_is_empty!33507 () Bool)

(assert (=> start!493306 tp_is_empty!33507))

(declare-fun b!4791522 () Bool)

(declare-fun e!2991718 () Bool)

(assert (=> b!4791522 (= e!2991721 e!2991718)))

(declare-fun res!2036390 () Bool)

(assert (=> b!4791522 (=> res!2036390 e!2991718)))

(declare-fun noDuplicateKeys!2331 (List!54307) Bool)

(assert (=> b!4791522 (= res!2036390 (not (noDuplicateKeys!2331 (_2!31691 (h!60608 (toList!6892 lm!2473))))))))

(assert (=> b!4791522 (= lt!1950690 (extractMap!2433 (t!361758 (toList!6892 lm!2473))))))

(declare-fun lt!1950689 () ListMap!6363)

(assert (=> b!4791522 (= (apply!12972 lt!1950689 key!5896) value!3111)))

(declare-datatypes ((Unit!139887 0))(
  ( (Unit!139888) )
))
(declare-fun lt!1950693 () Unit!139887)

(declare-datatypes ((Hashable!6906 0))(
  ( (HashableExt!6905 (__x!32929 Int)) )
))
(declare-fun hashF!1559 () Hashable!6906)

(declare-fun lt!1950692 () ListLongMap!5313)

(declare-fun lemmaExtractMapPreservesMapping!38 (ListLongMap!5313 K!15754 V!16000 Hashable!6906) Unit!139887)

(assert (=> b!4791522 (= lt!1950693 (lemmaExtractMapPreservesMapping!38 lt!1950692 key!5896 value!3111 hashF!1559))))

(assert (=> b!4791522 (contains!17790 lt!1950689 key!5896)))

(assert (=> b!4791522 (= lt!1950689 (extractMap!2433 (toList!6892 lt!1950692)))))

(declare-fun lt!1950687 () Unit!139887)

(declare-fun lemmaListContainsThenExtractedMapContains!706 (ListLongMap!5313 K!15754 Hashable!6906) Unit!139887)

(assert (=> b!4791522 (= lt!1950687 (lemmaListContainsThenExtractedMapContains!706 lt!1950692 key!5896 hashF!1559))))

(declare-fun lt!1950697 () Unit!139887)

(declare-fun e!2991722 () Unit!139887)

(assert (=> b!4791522 (= lt!1950697 e!2991722)))

(declare-fun c!816685 () Bool)

(declare-fun lt!1950691 () (_ BitVec 64))

(declare-fun contains!17791 (ListLongMap!5313 (_ BitVec 64)) Bool)

(assert (=> b!4791522 (= c!816685 (not (contains!17791 lt!1950692 lt!1950691)))))

(declare-fun tail!9261 (ListLongMap!5313) ListLongMap!5313)

(assert (=> b!4791522 (= lt!1950692 (tail!9261 lm!2473))))

(declare-fun b!4791523 () Bool)

(declare-fun res!2036392 () Bool)

(assert (=> b!4791523 (=> (not res!2036392) (not e!2991720))))

(declare-fun allKeysSameHashInMap!2311 (ListLongMap!5313 Hashable!6906) Bool)

(assert (=> b!4791523 (= res!2036392 (allKeysSameHashInMap!2311 lm!2473 hashF!1559))))

(declare-fun b!4791524 () Bool)

(assert (=> b!4791524 (= e!2991719 (forall!12231 (toList!6892 lm!2473) lambda!230379))))

(declare-fun lt!1950696 () ListMap!6363)

(assert (=> b!4791524 (= (apply!12972 lt!1950696 key!5896) value!3111)))

(declare-fun lt!1950688 () Unit!139887)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!6 (List!54307 ListMap!6363 K!15754 V!16000) Unit!139887)

(assert (=> b!4791524 (= lt!1950688 (lemmaAddToMapFromBucketMaintainsMapping!6 (_2!31691 (h!60608 (toList!6892 lm!2473))) lt!1950690 key!5896 value!3111))))

(declare-fun b!4791525 () Bool)

(declare-fun res!2036393 () Bool)

(assert (=> b!4791525 (=> res!2036393 e!2991719)))

(assert (=> b!4791525 (= res!2036393 (not (contains!17790 lt!1950690 key!5896)))))

(declare-fun b!4791526 () Bool)

(declare-fun res!2036395 () Bool)

(assert (=> b!4791526 (=> res!2036395 e!2991721)))

(declare-fun containsKey!3936 (List!54307 K!15754) Bool)

(assert (=> b!4791526 (= res!2036395 (containsKey!3936 (_2!31691 (h!60608 (toList!6892 lm!2473))) key!5896))))

(declare-fun b!4791527 () Bool)

(declare-fun tp!1357948 () Bool)

(assert (=> b!4791527 (= e!2991716 tp!1357948)))

(declare-fun b!4791528 () Bool)

(declare-fun lt!1950686 () Unit!139887)

(assert (=> b!4791528 (= e!2991722 lt!1950686)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!32 (ListLongMap!5313 K!15754 Hashable!6906) Unit!139887)

(assert (=> b!4791528 (= lt!1950686 (lemmaHashNotInLongMapThenNotInGenerated!32 lt!1950692 key!5896 hashF!1559))))

(assert (=> b!4791528 (not (contains!17790 (extractMap!2433 (toList!6892 lt!1950692)) key!5896))))

(declare-fun b!4791529 () Bool)

(declare-fun Unit!139889 () Unit!139887)

(assert (=> b!4791529 (= e!2991722 Unit!139889)))

(declare-fun b!4791530 () Bool)

(assert (=> b!4791530 (= e!2991718 e!2991719)))

(declare-fun res!2036388 () Bool)

(assert (=> b!4791530 (=> res!2036388 e!2991719)))

(assert (=> b!4791530 (= res!2036388 (not (contains!17790 lt!1950696 key!5896)))))

(declare-fun addToMapMapFromBucket!1700 (List!54307 ListMap!6363) ListMap!6363)

(assert (=> b!4791530 (= lt!1950696 (addToMapMapFromBucket!1700 (_2!31691 (h!60608 (toList!6892 lm!2473))) lt!1950690))))

(declare-fun b!4791531 () Bool)

(assert (=> b!4791531 (= e!2991720 (not e!2991721))))

(declare-fun res!2036396 () Bool)

(assert (=> b!4791531 (=> res!2036396 e!2991721)))

(declare-fun getValue!102 (List!54308 K!15754) V!16000)

(assert (=> b!4791531 (= res!2036396 (not (= (getValue!102 (toList!6892 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!556 (List!54308 K!15754) Bool)

(assert (=> b!4791531 (containsKeyBiggerList!556 (toList!6892 lm!2473) key!5896)))

(declare-fun lt!1950695 () Unit!139887)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!296 (ListLongMap!5313 K!15754 Hashable!6906) Unit!139887)

(assert (=> b!4791531 (= lt!1950695 (lemmaInLongMapThenContainsKeyBiggerList!296 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2991717 () Bool)

(assert (=> b!4791531 e!2991717))

(declare-fun res!2036394 () Bool)

(assert (=> b!4791531 (=> (not res!2036394) (not e!2991717))))

(assert (=> b!4791531 (= res!2036394 (contains!17791 lm!2473 lt!1950691))))

(declare-fun hash!4938 (Hashable!6906 K!15754) (_ BitVec 64))

(assert (=> b!4791531 (= lt!1950691 (hash!4938 hashF!1559 key!5896))))

(declare-fun lt!1950694 () Unit!139887)

(declare-fun lemmaInGenericMapThenInLongMap!310 (ListLongMap!5313 K!15754 Hashable!6906) Unit!139887)

(assert (=> b!4791531 (= lt!1950694 (lemmaInGenericMapThenInLongMap!310 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791532 () Bool)

(declare-datatypes ((Option!13073 0))(
  ( (None!13072) (Some!13072 (v!48351 tuple2!56792)) )
))
(declare-fun isDefined!10215 (Option!13073) Bool)

(declare-fun getPair!878 (List!54307 K!15754) Option!13073)

(declare-fun apply!12973 (ListLongMap!5313 (_ BitVec 64)) List!54307)

(assert (=> b!4791532 (= e!2991717 (isDefined!10215 (getPair!878 (apply!12973 lm!2473 lt!1950691) key!5896)))))

(assert (= (and start!493306 res!2036391) b!4791523))

(assert (= (and b!4791523 res!2036392) b!4791521))

(assert (= (and b!4791521 res!2036397) b!4791531))

(assert (= (and b!4791531 res!2036394) b!4791532))

(assert (= (and b!4791531 (not res!2036396)) b!4791520))

(assert (= (and b!4791520 (not res!2036389)) b!4791526))

(assert (= (and b!4791526 (not res!2036395)) b!4791522))

(assert (= (and b!4791522 c!816685) b!4791528))

(assert (= (and b!4791522 (not c!816685)) b!4791529))

(assert (= (and b!4791522 (not res!2036390)) b!4791530))

(assert (= (and b!4791530 (not res!2036388)) b!4791525))

(assert (= (and b!4791525 (not res!2036393)) b!4791519))

(assert (= (and b!4791519 (not res!2036398)) b!4791524))

(assert (= start!493306 b!4791527))

(declare-fun m!5772014 () Bool)

(assert (=> b!4791525 m!5772014))

(declare-fun m!5772016 () Bool)

(assert (=> b!4791519 m!5772016))

(declare-fun m!5772018 () Bool)

(assert (=> start!493306 m!5772018))

(declare-fun m!5772020 () Bool)

(assert (=> start!493306 m!5772020))

(declare-fun m!5772022 () Bool)

(assert (=> b!4791532 m!5772022))

(assert (=> b!4791532 m!5772022))

(declare-fun m!5772024 () Bool)

(assert (=> b!4791532 m!5772024))

(assert (=> b!4791532 m!5772024))

(declare-fun m!5772026 () Bool)

(assert (=> b!4791532 m!5772026))

(declare-fun m!5772028 () Bool)

(assert (=> b!4791521 m!5772028))

(assert (=> b!4791521 m!5772028))

(declare-fun m!5772030 () Bool)

(assert (=> b!4791521 m!5772030))

(declare-fun m!5772032 () Bool)

(assert (=> b!4791530 m!5772032))

(declare-fun m!5772034 () Bool)

(assert (=> b!4791530 m!5772034))

(declare-fun m!5772036 () Bool)

(assert (=> b!4791526 m!5772036))

(assert (=> b!4791524 m!5772018))

(declare-fun m!5772038 () Bool)

(assert (=> b!4791524 m!5772038))

(declare-fun m!5772040 () Bool)

(assert (=> b!4791524 m!5772040))

(declare-fun m!5772042 () Bool)

(assert (=> b!4791528 m!5772042))

(declare-fun m!5772044 () Bool)

(assert (=> b!4791528 m!5772044))

(assert (=> b!4791528 m!5772044))

(declare-fun m!5772046 () Bool)

(assert (=> b!4791528 m!5772046))

(declare-fun m!5772048 () Bool)

(assert (=> b!4791522 m!5772048))

(declare-fun m!5772050 () Bool)

(assert (=> b!4791522 m!5772050))

(declare-fun m!5772052 () Bool)

(assert (=> b!4791522 m!5772052))

(declare-fun m!5772054 () Bool)

(assert (=> b!4791522 m!5772054))

(declare-fun m!5772056 () Bool)

(assert (=> b!4791522 m!5772056))

(declare-fun m!5772058 () Bool)

(assert (=> b!4791522 m!5772058))

(assert (=> b!4791522 m!5772044))

(declare-fun m!5772060 () Bool)

(assert (=> b!4791522 m!5772060))

(declare-fun m!5772062 () Bool)

(assert (=> b!4791522 m!5772062))

(declare-fun m!5772064 () Bool)

(assert (=> b!4791523 m!5772064))

(declare-fun m!5772066 () Bool)

(assert (=> b!4791531 m!5772066))

(declare-fun m!5772068 () Bool)

(assert (=> b!4791531 m!5772068))

(declare-fun m!5772070 () Bool)

(assert (=> b!4791531 m!5772070))

(declare-fun m!5772072 () Bool)

(assert (=> b!4791531 m!5772072))

(declare-fun m!5772074 () Bool)

(assert (=> b!4791531 m!5772074))

(declare-fun m!5772076 () Bool)

(assert (=> b!4791531 m!5772076))

(check-sat (not b!4791526) (not b!4791530) (not b!4791519) (not b!4791532) (not b!4791527) (not start!493306) tp_is_empty!33507 (not b!4791531) tp_is_empty!33505 (not b!4791525) (not b!4791522) (not b!4791528) (not b!4791523) (not b!4791524) (not b!4791521))
(check-sat)
