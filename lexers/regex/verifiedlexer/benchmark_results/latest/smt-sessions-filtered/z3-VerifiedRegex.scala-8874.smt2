; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474296 () Bool)

(assert start!474296)

(declare-fun b!4689237 () Bool)

(declare-fun e!2925452 () Bool)

(declare-fun e!2925450 () Bool)

(assert (=> b!4689237 (= e!2925452 e!2925450)))

(declare-fun res!1977721 () Bool)

(assert (=> b!4689237 (=> (not res!1977721) (not e!2925450))))

(declare-fun lt!1848888 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4689237 (= res!1977721 (= lt!1848888 hash!405))))

(declare-datatypes ((Hashable!6219 0))(
  ( (HashableExt!6218 (__x!31922 Int)) )
))
(declare-fun hashF!1323 () Hashable!6219)

(declare-datatypes ((K!13775 0))(
  ( (K!13776 (val!19291 Int)) )
))
(declare-fun key!4653 () K!13775)

(declare-fun hash!4059 (Hashable!6219 K!13775) (_ BitVec 64))

(assert (=> b!4689237 (= lt!1848888 (hash!4059 hashF!1323 key!4653))))

(declare-fun b!4689238 () Bool)

(declare-fun res!1977720 () Bool)

(declare-fun e!2925444 () Bool)

(assert (=> b!4689238 (=> (not res!1977720) (not e!2925444))))

(declare-datatypes ((V!14021 0))(
  ( (V!14022 (val!19292 Int)) )
))
(declare-datatypes ((tuple2!53794 0))(
  ( (tuple2!53795 (_1!30191 K!13775) (_2!30191 V!14021)) )
))
(declare-datatypes ((List!52523 0))(
  ( (Nil!52399) (Cons!52399 (h!58642 tuple2!53794) (t!359697 List!52523)) )
))
(declare-fun oldBucket!34 () List!52523)

(declare-fun noDuplicateKeys!1850 (List!52523) Bool)

(assert (=> b!4689238 (= res!1977720 (noDuplicateKeys!1850 oldBucket!34))))

(declare-fun b!4689239 () Bool)

(declare-fun res!1977715 () Bool)

(assert (=> b!4689239 (=> (not res!1977715) (not e!2925444))))

(declare-fun newBucket!218 () List!52523)

(assert (=> b!4689239 (= res!1977715 (noDuplicateKeys!1850 newBucket!218))))

(declare-fun b!4689240 () Bool)

(assert (=> b!4689240 (= e!2925444 e!2925452)))

(declare-fun res!1977714 () Bool)

(assert (=> b!4689240 (=> (not res!1977714) (not e!2925452))))

(declare-datatypes ((ListMap!4953 0))(
  ( (ListMap!4954 (toList!5589 List!52523)) )
))
(declare-fun lt!1848887 () ListMap!4953)

(declare-fun contains!15592 (ListMap!4953 K!13775) Bool)

(assert (=> b!4689240 (= res!1977714 (contains!15592 lt!1848887 key!4653))))

(declare-datatypes ((tuple2!53796 0))(
  ( (tuple2!53797 (_1!30192 (_ BitVec 64)) (_2!30192 List!52523)) )
))
(declare-datatypes ((List!52524 0))(
  ( (Nil!52400) (Cons!52400 (h!58643 tuple2!53796) (t!359698 List!52524)) )
))
(declare-datatypes ((ListLongMap!4119 0))(
  ( (ListLongMap!4120 (toList!5590 List!52524)) )
))
(declare-fun lm!2023 () ListLongMap!4119)

(declare-fun extractMap!1876 (List!52524) ListMap!4953)

(assert (=> b!4689240 (= lt!1848887 (extractMap!1876 (toList!5590 lm!2023)))))

(declare-fun b!4689241 () Bool)

(declare-fun res!1977722 () Bool)

(assert (=> b!4689241 (=> (not res!1977722) (not e!2925444))))

(declare-fun allKeysSameHash!1676 (List!52523 (_ BitVec 64) Hashable!6219) Bool)

(assert (=> b!4689241 (= res!1977722 (allKeysSameHash!1676 oldBucket!34 hash!405 hashF!1323))))

(declare-fun e!2925446 () Bool)

(declare-fun tp_is_empty!30695 () Bool)

(declare-fun tp_is_empty!30693 () Bool)

(declare-fun b!4689242 () Bool)

(declare-fun tp!1345860 () Bool)

(assert (=> b!4689242 (= e!2925446 (and tp_is_empty!30693 tp_is_empty!30695 tp!1345860))))

(declare-fun b!4689243 () Bool)

(declare-fun e!2925447 () Bool)

(declare-fun e!2925448 () Bool)

(assert (=> b!4689243 (= e!2925447 e!2925448)))

(declare-fun res!1977712 () Bool)

(assert (=> b!4689243 (=> res!1977712 e!2925448)))

(declare-fun lt!1848893 () List!52523)

(declare-fun lt!1848882 () List!52523)

(declare-fun removePairForKey!1445 (List!52523 K!13775) List!52523)

(assert (=> b!4689243 (= res!1977712 (not (= (removePairForKey!1445 lt!1848882 key!4653) lt!1848893)))))

(declare-fun tail!8580 (List!52523) List!52523)

(assert (=> b!4689243 (= lt!1848893 (tail!8580 newBucket!218))))

(assert (=> b!4689243 (= lt!1848882 (tail!8580 oldBucket!34))))

(declare-fun b!4689244 () Bool)

(declare-fun e!2925443 () Bool)

(assert (=> b!4689244 (= e!2925448 e!2925443)))

(declare-fun res!1977724 () Bool)

(assert (=> b!4689244 (=> res!1977724 e!2925443)))

(declare-fun lt!1848885 () tuple2!53796)

(declare-fun eq!1009 (ListMap!4953 ListMap!4953) Bool)

(declare-fun +!2134 (ListMap!4953 tuple2!53794) ListMap!4953)

(assert (=> b!4689244 (= res!1977724 (not (eq!1009 (extractMap!1876 (Cons!52400 lt!1848885 (t!359698 (toList!5590 lm!2023)))) (+!2134 (extractMap!1876 (Cons!52400 (tuple2!53797 hash!405 lt!1848882) (t!359698 (toList!5590 lm!2023)))) (h!58642 oldBucket!34)))))))

(declare-fun lt!1848899 () tuple2!53794)

(declare-fun lt!1848889 () ListMap!4953)

(declare-fun addToMapMapFromBucket!1282 (List!52523 ListMap!4953) ListMap!4953)

(assert (=> b!4689244 (eq!1009 (addToMapMapFromBucket!1282 (Cons!52399 lt!1848899 lt!1848893) lt!1848889) (+!2134 (addToMapMapFromBucket!1282 lt!1848893 lt!1848889) lt!1848899))))

(declare-datatypes ((Unit!123897 0))(
  ( (Unit!123898) )
))
(declare-fun lt!1848897 () Unit!123897)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!258 (tuple2!53794 List!52523 ListMap!4953) Unit!123897)

(assert (=> b!4689244 (= lt!1848897 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!258 lt!1848899 lt!1848893 lt!1848889))))

(declare-fun head!9963 (List!52523) tuple2!53794)

(assert (=> b!4689244 (= lt!1848899 (head!9963 newBucket!218))))

(declare-fun lt!1848884 () tuple2!53794)

(assert (=> b!4689244 (eq!1009 (addToMapMapFromBucket!1282 (Cons!52399 lt!1848884 lt!1848882) lt!1848889) (+!2134 (addToMapMapFromBucket!1282 lt!1848882 lt!1848889) lt!1848884))))

(declare-fun lt!1848894 () Unit!123897)

(assert (=> b!4689244 (= lt!1848894 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!258 lt!1848884 lt!1848882 lt!1848889))))

(assert (=> b!4689244 (= lt!1848884 (head!9963 oldBucket!34))))

(declare-fun lt!1848886 () List!52524)

(assert (=> b!4689244 (contains!15592 (extractMap!1876 lt!1848886) key!4653)))

(declare-fun lt!1848890 () Unit!123897)

(declare-fun lemmaListContainsThenExtractedMapContains!442 (ListLongMap!4119 K!13775 Hashable!6219) Unit!123897)

(assert (=> b!4689244 (= lt!1848890 (lemmaListContainsThenExtractedMapContains!442 (ListLongMap!4120 lt!1848886) key!4653 hashF!1323))))

(assert (=> b!4689244 (= lt!1848886 (Cons!52400 (tuple2!53797 hash!405 (t!359697 oldBucket!34)) (t!359698 (toList!5590 lm!2023))))))

(declare-fun e!2925451 () Bool)

(declare-fun b!4689246 () Bool)

(declare-fun tp!1345859 () Bool)

(assert (=> b!4689246 (= e!2925451 (and tp_is_empty!30693 tp_is_empty!30695 tp!1345859))))

(declare-fun b!4689247 () Bool)

(assert (=> b!4689247 (= e!2925443 (or (not (= (h!58642 oldBucket!34) lt!1848899)) (not (= oldBucket!34 Nil!52399))))))

(declare-fun b!4689248 () Bool)

(declare-fun res!1977718 () Bool)

(declare-fun e!2925449 () Bool)

(assert (=> b!4689248 (=> (not res!1977718) (not e!2925449))))

(get-info :version)

(assert (=> b!4689248 (= res!1977718 ((_ is Cons!52400) (toList!5590 lm!2023)))))

(declare-fun b!4689249 () Bool)

(declare-fun e!2925445 () Bool)

(declare-fun tp!1345861 () Bool)

(assert (=> b!4689249 (= e!2925445 tp!1345861)))

(declare-fun b!4689250 () Bool)

(declare-fun res!1977723 () Bool)

(assert (=> b!4689250 (=> res!1977723 e!2925448)))

(assert (=> b!4689250 (= res!1977723 (not (= (removePairForKey!1445 (t!359697 oldBucket!34) key!4653) lt!1848893)))))

(declare-fun b!4689251 () Bool)

(declare-fun res!1977725 () Bool)

(assert (=> b!4689251 (=> (not res!1977725) (not e!2925450))))

(declare-fun allKeysSameHashInMap!1764 (ListLongMap!4119 Hashable!6219) Bool)

(assert (=> b!4689251 (= res!1977725 (allKeysSameHashInMap!1764 lm!2023 hashF!1323))))

(declare-fun b!4689252 () Bool)

(assert (=> b!4689252 (= e!2925450 e!2925449)))

(declare-fun res!1977711 () Bool)

(assert (=> b!4689252 (=> (not res!1977711) (not e!2925449))))

(declare-fun head!9964 (List!52524) tuple2!53796)

(assert (=> b!4689252 (= res!1977711 (= (head!9964 (toList!5590 lm!2023)) lt!1848885))))

(assert (=> b!4689252 (= lt!1848885 (tuple2!53797 hash!405 oldBucket!34))))

(declare-fun b!4689253 () Bool)

(declare-fun e!2925442 () Bool)

(assert (=> b!4689253 (= e!2925449 (not e!2925442))))

(declare-fun res!1977717 () Bool)

(assert (=> b!4689253 (=> res!1977717 e!2925442)))

(assert (=> b!4689253 (= res!1977717 (or (and ((_ is Cons!52399) oldBucket!34) (= (_1!30191 (h!58642 oldBucket!34)) key!4653)) (not ((_ is Cons!52399) oldBucket!34)) (= (_1!30191 (h!58642 oldBucket!34)) key!4653)))))

(assert (=> b!4689253 (= lt!1848887 (addToMapMapFromBucket!1282 (_2!30192 (h!58643 (toList!5590 lm!2023))) lt!1848889))))

(assert (=> b!4689253 (= lt!1848889 (extractMap!1876 (t!359698 (toList!5590 lm!2023))))))

(declare-fun tail!8581 (ListLongMap!4119) ListLongMap!4119)

(assert (=> b!4689253 (= (t!359698 (toList!5590 lm!2023)) (toList!5590 (tail!8581 lm!2023)))))

(declare-fun b!4689254 () Bool)

(declare-fun res!1977719 () Bool)

(assert (=> b!4689254 (=> (not res!1977719) (not e!2925450))))

(assert (=> b!4689254 (= res!1977719 (allKeysSameHash!1676 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4689255 () Bool)

(declare-fun res!1977710 () Bool)

(assert (=> b!4689255 (=> (not res!1977710) (not e!2925444))))

(assert (=> b!4689255 (= res!1977710 (= (removePairForKey!1445 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4689245 () Bool)

(assert (=> b!4689245 (= e!2925442 e!2925447)))

(declare-fun res!1977713 () Bool)

(assert (=> b!4689245 (=> res!1977713 e!2925447)))

(declare-fun containsKey!3045 (List!52523 K!13775) Bool)

(assert (=> b!4689245 (= res!1977713 (not (containsKey!3045 (t!359697 oldBucket!34) key!4653)))))

(assert (=> b!4689245 (containsKey!3045 oldBucket!34 key!4653)))

(declare-fun lt!1848895 () Unit!123897)

(declare-fun lemmaGetPairDefinedThenContainsKey!202 (List!52523 K!13775 Hashable!6219) Unit!123897)

(assert (=> b!4689245 (= lt!1848895 (lemmaGetPairDefinedThenContainsKey!202 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1848883 () List!52523)

(declare-datatypes ((Option!12069 0))(
  ( (None!12068) (Some!12068 (v!46479 tuple2!53794)) )
))
(declare-fun isDefined!9324 (Option!12069) Bool)

(declare-fun getPair!454 (List!52523 K!13775) Option!12069)

(assert (=> b!4689245 (isDefined!9324 (getPair!454 lt!1848883 key!4653))))

(declare-fun lt!1848900 () tuple2!53796)

(declare-fun lt!1848892 () Unit!123897)

(declare-fun lambda!206929 () Int)

(declare-fun forallContained!3422 (List!52524 Int tuple2!53796) Unit!123897)

(assert (=> b!4689245 (= lt!1848892 (forallContained!3422 (toList!5590 lm!2023) lambda!206929 lt!1848900))))

(declare-fun contains!15593 (List!52524 tuple2!53796) Bool)

(assert (=> b!4689245 (contains!15593 (toList!5590 lm!2023) lt!1848900)))

(assert (=> b!4689245 (= lt!1848900 (tuple2!53797 lt!1848888 lt!1848883))))

(declare-fun lt!1848896 () Unit!123897)

(declare-fun lemmaGetValueImpliesTupleContained!259 (ListLongMap!4119 (_ BitVec 64) List!52523) Unit!123897)

(assert (=> b!4689245 (= lt!1848896 (lemmaGetValueImpliesTupleContained!259 lm!2023 lt!1848888 lt!1848883))))

(declare-fun apply!12333 (ListLongMap!4119 (_ BitVec 64)) List!52523)

(assert (=> b!4689245 (= lt!1848883 (apply!12333 lm!2023 lt!1848888))))

(declare-fun contains!15594 (ListLongMap!4119 (_ BitVec 64)) Bool)

(assert (=> b!4689245 (contains!15594 lm!2023 lt!1848888)))

(declare-fun lt!1848891 () Unit!123897)

(declare-fun lemmaInGenMapThenLongMapContainsHash!660 (ListLongMap!4119 K!13775 Hashable!6219) Unit!123897)

(assert (=> b!4689245 (= lt!1848891 (lemmaInGenMapThenLongMapContainsHash!660 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1848898 () Unit!123897)

(declare-fun lemmaInGenMapThenGetPairDefined!250 (ListLongMap!4119 K!13775 Hashable!6219) Unit!123897)

(assert (=> b!4689245 (= lt!1848898 (lemmaInGenMapThenGetPairDefined!250 lm!2023 key!4653 hashF!1323))))

(declare-fun res!1977716 () Bool)

(assert (=> start!474296 (=> (not res!1977716) (not e!2925444))))

(declare-fun forall!11315 (List!52524 Int) Bool)

(assert (=> start!474296 (= res!1977716 (forall!11315 (toList!5590 lm!2023) lambda!206929))))

(assert (=> start!474296 e!2925444))

(declare-fun inv!67649 (ListLongMap!4119) Bool)

(assert (=> start!474296 (and (inv!67649 lm!2023) e!2925445)))

(assert (=> start!474296 tp_is_empty!30693))

(assert (=> start!474296 e!2925451))

(assert (=> start!474296 true))

(assert (=> start!474296 e!2925446))

(assert (= (and start!474296 res!1977716) b!4689238))

(assert (= (and b!4689238 res!1977720) b!4689239))

(assert (= (and b!4689239 res!1977715) b!4689255))

(assert (= (and b!4689255 res!1977710) b!4689241))

(assert (= (and b!4689241 res!1977722) b!4689240))

(assert (= (and b!4689240 res!1977714) b!4689237))

(assert (= (and b!4689237 res!1977721) b!4689254))

(assert (= (and b!4689254 res!1977719) b!4689251))

(assert (= (and b!4689251 res!1977725) b!4689252))

(assert (= (and b!4689252 res!1977711) b!4689248))

(assert (= (and b!4689248 res!1977718) b!4689253))

(assert (= (and b!4689253 (not res!1977717)) b!4689245))

(assert (= (and b!4689245 (not res!1977713)) b!4689243))

(assert (= (and b!4689243 (not res!1977712)) b!4689250))

(assert (= (and b!4689250 (not res!1977723)) b!4689244))

(assert (= (and b!4689244 (not res!1977724)) b!4689247))

(assert (= start!474296 b!4689249))

(assert (= (and start!474296 ((_ is Cons!52399) oldBucket!34)) b!4689246))

(assert (= (and start!474296 ((_ is Cons!52399) newBucket!218)) b!4689242))

(declare-fun m!5590649 () Bool)

(assert (=> b!4689237 m!5590649))

(declare-fun m!5590651 () Bool)

(assert (=> b!4689238 m!5590651))

(declare-fun m!5590653 () Bool)

(assert (=> b!4689253 m!5590653))

(declare-fun m!5590655 () Bool)

(assert (=> b!4689253 m!5590655))

(declare-fun m!5590657 () Bool)

(assert (=> b!4689253 m!5590657))

(declare-fun m!5590659 () Bool)

(assert (=> b!4689254 m!5590659))

(declare-fun m!5590661 () Bool)

(assert (=> start!474296 m!5590661))

(declare-fun m!5590663 () Bool)

(assert (=> start!474296 m!5590663))

(declare-fun m!5590665 () Bool)

(assert (=> b!4689243 m!5590665))

(declare-fun m!5590667 () Bool)

(assert (=> b!4689243 m!5590667))

(declare-fun m!5590669 () Bool)

(assert (=> b!4689243 m!5590669))

(declare-fun m!5590671 () Bool)

(assert (=> b!4689245 m!5590671))

(declare-fun m!5590673 () Bool)

(assert (=> b!4689245 m!5590673))

(assert (=> b!4689245 m!5590673))

(declare-fun m!5590675 () Bool)

(assert (=> b!4689245 m!5590675))

(declare-fun m!5590677 () Bool)

(assert (=> b!4689245 m!5590677))

(declare-fun m!5590679 () Bool)

(assert (=> b!4689245 m!5590679))

(declare-fun m!5590681 () Bool)

(assert (=> b!4689245 m!5590681))

(declare-fun m!5590683 () Bool)

(assert (=> b!4689245 m!5590683))

(declare-fun m!5590685 () Bool)

(assert (=> b!4689245 m!5590685))

(declare-fun m!5590687 () Bool)

(assert (=> b!4689245 m!5590687))

(declare-fun m!5590689 () Bool)

(assert (=> b!4689245 m!5590689))

(declare-fun m!5590691 () Bool)

(assert (=> b!4689245 m!5590691))

(declare-fun m!5590693 () Bool)

(assert (=> b!4689245 m!5590693))

(declare-fun m!5590695 () Bool)

(assert (=> b!4689240 m!5590695))

(declare-fun m!5590697 () Bool)

(assert (=> b!4689240 m!5590697))

(declare-fun m!5590699 () Bool)

(assert (=> b!4689255 m!5590699))

(declare-fun m!5590701 () Bool)

(assert (=> b!4689250 m!5590701))

(declare-fun m!5590703 () Bool)

(assert (=> b!4689244 m!5590703))

(declare-fun m!5590705 () Bool)

(assert (=> b!4689244 m!5590705))

(declare-fun m!5590707 () Bool)

(assert (=> b!4689244 m!5590707))

(declare-fun m!5590709 () Bool)

(assert (=> b!4689244 m!5590709))

(declare-fun m!5590711 () Bool)

(assert (=> b!4689244 m!5590711))

(declare-fun m!5590713 () Bool)

(assert (=> b!4689244 m!5590713))

(assert (=> b!4689244 m!5590709))

(declare-fun m!5590715 () Bool)

(assert (=> b!4689244 m!5590715))

(declare-fun m!5590717 () Bool)

(assert (=> b!4689244 m!5590717))

(assert (=> b!4689244 m!5590715))

(declare-fun m!5590719 () Bool)

(assert (=> b!4689244 m!5590719))

(assert (=> b!4689244 m!5590717))

(declare-fun m!5590721 () Bool)

(assert (=> b!4689244 m!5590721))

(assert (=> b!4689244 m!5590713))

(declare-fun m!5590723 () Bool)

(assert (=> b!4689244 m!5590723))

(declare-fun m!5590725 () Bool)

(assert (=> b!4689244 m!5590725))

(declare-fun m!5590727 () Bool)

(assert (=> b!4689244 m!5590727))

(assert (=> b!4689244 m!5590711))

(declare-fun m!5590729 () Bool)

(assert (=> b!4689244 m!5590729))

(assert (=> b!4689244 m!5590705))

(assert (=> b!4689244 m!5590729))

(declare-fun m!5590731 () Bool)

(assert (=> b!4689244 m!5590731))

(declare-fun m!5590733 () Bool)

(assert (=> b!4689244 m!5590733))

(declare-fun m!5590735 () Bool)

(assert (=> b!4689244 m!5590735))

(assert (=> b!4689244 m!5590707))

(assert (=> b!4689244 m!5590723))

(declare-fun m!5590737 () Bool)

(assert (=> b!4689244 m!5590737))

(assert (=> b!4689244 m!5590735))

(declare-fun m!5590739 () Bool)

(assert (=> b!4689244 m!5590739))

(declare-fun m!5590741 () Bool)

(assert (=> b!4689241 m!5590741))

(declare-fun m!5590743 () Bool)

(assert (=> b!4689252 m!5590743))

(declare-fun m!5590745 () Bool)

(assert (=> b!4689251 m!5590745))

(declare-fun m!5590747 () Bool)

(assert (=> b!4689239 m!5590747))

(check-sat (not b!4689249) (not b!4689244) (not b!4689255) (not start!474296) (not b!4689241) (not b!4689242) (not b!4689252) (not b!4689239) (not b!4689245) (not b!4689254) tp_is_empty!30693 (not b!4689237) (not b!4689251) (not b!4689253) (not b!4689240) tp_is_empty!30695 (not b!4689238) (not b!4689246) (not b!4689243) (not b!4689250))
(check-sat)
