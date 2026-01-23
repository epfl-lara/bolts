; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478700 () Bool)

(assert start!478700)

(declare-fun b!4711090 () Bool)

(declare-fun res!1991148 () Bool)

(declare-fun e!2938347 () Bool)

(assert (=> b!4711090 (=> (not res!1991148) (not e!2938347))))

(declare-datatypes ((K!14045 0))(
  ( (K!14046 (val!19507 Int)) )
))
(declare-datatypes ((V!14291 0))(
  ( (V!14292 (val!19508 Int)) )
))
(declare-datatypes ((tuple2!54226 0))(
  ( (tuple2!54227 (_1!30407 K!14045) (_2!30407 V!14291)) )
))
(declare-datatypes ((List!52807 0))(
  ( (Nil!52683) (Cons!52683 (h!58994 tuple2!54226) (t!360047 List!52807)) )
))
(declare-fun newBucket!218 () List!52807)

(declare-fun noDuplicateKeys!1958 (List!52807) Bool)

(assert (=> b!4711090 (= res!1991148 (noDuplicateKeys!1958 newBucket!218))))

(declare-fun b!4711091 () Bool)

(declare-fun e!2938344 () Bool)

(declare-fun e!2938352 () Bool)

(assert (=> b!4711091 (= e!2938344 e!2938352)))

(declare-fun res!1991149 () Bool)

(assert (=> b!4711091 (=> res!1991149 e!2938352)))

(declare-datatypes ((ListMap!5169 0))(
  ( (ListMap!5170 (toList!5805 List!52807)) )
))
(declare-fun lt!1875605 () ListMap!5169)

(declare-fun lt!1875591 () ListMap!5169)

(declare-fun eq!1095 (ListMap!5169 ListMap!5169) Bool)

(assert (=> b!4711091 (= res!1991149 (not (eq!1095 lt!1875605 lt!1875591)))))

(declare-datatypes ((tuple2!54228 0))(
  ( (tuple2!54229 (_1!30408 (_ BitVec 64)) (_2!30408 List!52807)) )
))
(declare-fun lt!1875606 () tuple2!54228)

(declare-datatypes ((List!52808 0))(
  ( (Nil!52684) (Cons!52684 (h!58995 tuple2!54228) (t!360048 List!52808)) )
))
(declare-datatypes ((ListLongMap!4335 0))(
  ( (ListLongMap!4336 (toList!5806 List!52808)) )
))
(declare-fun lm!2023 () ListLongMap!4335)

(declare-fun extractMap!1984 (List!52808) ListMap!5169)

(assert (=> b!4711091 (= lt!1875591 (extractMap!1984 (Cons!52684 lt!1875606 (t!360048 (toList!5806 lm!2023)))))))

(declare-fun b!4711092 () Bool)

(declare-fun e!2938350 () Bool)

(declare-fun e!2938346 () Bool)

(assert (=> b!4711092 (= e!2938350 e!2938346)))

(declare-fun res!1991147 () Bool)

(assert (=> b!4711092 (=> (not res!1991147) (not e!2938346))))

(declare-fun head!10155 (List!52808) tuple2!54228)

(assert (=> b!4711092 (= res!1991147 (= (head!10155 (toList!5806 lm!2023)) lt!1875606))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun oldBucket!34 () List!52807)

(assert (=> b!4711092 (= lt!1875606 (tuple2!54229 hash!405 oldBucket!34))))

(declare-fun b!4711093 () Bool)

(declare-fun lt!1875599 () ListMap!5169)

(declare-fun lt!1875595 () ListMap!5169)

(assert (=> b!4711093 (= e!2938352 (eq!1095 lt!1875599 lt!1875595))))

(declare-fun lt!1875593 () ListMap!5169)

(assert (=> b!4711093 (eq!1095 lt!1875593 lt!1875599)))

(declare-fun key!4653 () K!14045)

(declare-fun -!732 (ListMap!5169 K!14045) ListMap!5169)

(assert (=> b!4711093 (= lt!1875599 (-!732 lt!1875591 key!4653))))

(declare-datatypes ((Unit!128004 0))(
  ( (Unit!128005) )
))
(declare-fun lt!1875594 () Unit!128004)

(declare-fun lemmaRemovePreservesEq!110 (ListMap!5169 ListMap!5169 K!14045) Unit!128004)

(assert (=> b!4711093 (= lt!1875594 (lemmaRemovePreservesEq!110 lt!1875605 lt!1875591 key!4653))))

(declare-fun b!4711094 () Bool)

(declare-fun e!2938345 () Bool)

(assert (=> b!4711094 (= e!2938345 e!2938344)))

(declare-fun res!1991163 () Bool)

(assert (=> b!4711094 (=> res!1991163 e!2938344)))

(declare-fun lt!1875597 () ListMap!5169)

(assert (=> b!4711094 (= res!1991163 (not (= lt!1875593 lt!1875597)))))

(assert (=> b!4711094 (= lt!1875593 (-!732 lt!1875605 key!4653))))

(declare-fun +!2222 (ListMap!5169 tuple2!54226) ListMap!5169)

(assert (=> b!4711094 (= (-!732 (+!2222 lt!1875597 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))) key!4653) lt!1875597)))

(declare-fun lt!1875596 () Unit!128004)

(declare-fun addThenRemoveForNewKeyIsSame!63 (ListMap!5169 K!14045 V!14291) Unit!128004)

(assert (=> b!4711094 (= lt!1875596 (addThenRemoveForNewKeyIsSame!63 lt!1875597 key!4653 (_2!30407 (h!58994 oldBucket!34))))))

(declare-fun b!4711095 () Bool)

(declare-fun e!2938343 () Bool)

(declare-fun e!2938354 () Bool)

(assert (=> b!4711095 (= e!2938343 e!2938354)))

(declare-fun res!1991162 () Bool)

(assert (=> b!4711095 (=> res!1991162 e!2938354)))

(declare-fun lt!1875592 () ListMap!5169)

(declare-fun addToMapMapFromBucket!1388 (List!52807 ListMap!5169) ListMap!5169)

(assert (=> b!4711095 (= res!1991162 (not (= lt!1875597 (addToMapMapFromBucket!1388 newBucket!218 lt!1875592))))))

(declare-fun lt!1875603 () List!52807)

(assert (=> b!4711095 (= lt!1875597 (addToMapMapFromBucket!1388 lt!1875603 lt!1875592))))

(declare-fun b!4711096 () Bool)

(declare-fun res!1991152 () Bool)

(assert (=> b!4711096 (=> (not res!1991152) (not e!2938347))))

(declare-datatypes ((Hashable!6327 0))(
  ( (HashableExt!6326 (__x!32030 Int)) )
))
(declare-fun hashF!1323 () Hashable!6327)

(declare-fun allKeysSameHash!1784 (List!52807 (_ BitVec 64) Hashable!6327) Bool)

(assert (=> b!4711096 (= res!1991152 (allKeysSameHash!1784 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4711097 () Bool)

(declare-fun res!1991160 () Bool)

(assert (=> b!4711097 (=> (not res!1991160) (not e!2938350))))

(assert (=> b!4711097 (= res!1991160 (allKeysSameHash!1784 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1991161 () Bool)

(assert (=> start!478700 (=> (not res!1991161) (not e!2938347))))

(declare-fun lambda!212759 () Int)

(declare-fun forall!11491 (List!52808 Int) Bool)

(assert (=> start!478700 (= res!1991161 (forall!11491 (toList!5806 lm!2023) lambda!212759))))

(assert (=> start!478700 e!2938347))

(declare-fun e!2938353 () Bool)

(declare-fun inv!67919 (ListLongMap!4335) Bool)

(assert (=> start!478700 (and (inv!67919 lm!2023) e!2938353)))

(declare-fun tp_is_empty!31125 () Bool)

(assert (=> start!478700 tp_is_empty!31125))

(declare-fun e!2938355 () Bool)

(assert (=> start!478700 e!2938355))

(assert (=> start!478700 true))

(declare-fun e!2938356 () Bool)

(assert (=> start!478700 e!2938356))

(declare-fun b!4711098 () Bool)

(declare-fun res!1991165 () Bool)

(assert (=> b!4711098 (=> (not res!1991165) (not e!2938350))))

(declare-fun hash!4284 (Hashable!6327 K!14045) (_ BitVec 64))

(assert (=> b!4711098 (= res!1991165 (= (hash!4284 hashF!1323 key!4653) hash!405))))

(declare-fun b!4711099 () Bool)

(declare-fun e!2938348 () Bool)

(declare-fun e!2938349 () Bool)

(assert (=> b!4711099 (= e!2938348 e!2938349)))

(declare-fun res!1991157 () Bool)

(assert (=> b!4711099 (=> res!1991157 e!2938349)))

(assert (=> b!4711099 (= res!1991157 (not (= lt!1875603 newBucket!218)))))

(declare-fun tail!8861 (List!52807) List!52807)

(assert (=> b!4711099 (= lt!1875603 (tail!8861 oldBucket!34))))

(declare-fun b!4711100 () Bool)

(declare-fun tp!1347511 () Bool)

(assert (=> b!4711100 (= e!2938353 tp!1347511)))

(declare-fun b!4711101 () Bool)

(declare-fun e!2938351 () Bool)

(assert (=> b!4711101 (= e!2938351 e!2938345)))

(declare-fun res!1991145 () Bool)

(assert (=> b!4711101 (=> res!1991145 e!2938345)))

(declare-fun contains!15984 (ListMap!5169 K!14045) Bool)

(assert (=> b!4711101 (= res!1991145 (contains!15984 lt!1875597 key!4653))))

(assert (=> b!4711101 (not (contains!15984 lt!1875595 key!4653))))

(declare-fun lt!1875598 () List!52808)

(declare-fun lt!1875604 () Unit!128004)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!412 (ListLongMap!4335 K!14045 Hashable!6327) Unit!128004)

(assert (=> b!4711101 (= lt!1875604 (lemmaNotInItsHashBucketThenNotInMap!412 (ListLongMap!4336 lt!1875598) key!4653 hashF!1323))))

(declare-fun b!4711102 () Bool)

(declare-fun res!1991159 () Bool)

(assert (=> b!4711102 (=> (not res!1991159) (not e!2938347))))

(declare-fun removePairForKey!1553 (List!52807 K!14045) List!52807)

(assert (=> b!4711102 (= res!1991159 (= (removePairForKey!1553 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4711103 () Bool)

(declare-fun res!1991151 () Bool)

(assert (=> b!4711103 (=> (not res!1991151) (not e!2938347))))

(assert (=> b!4711103 (= res!1991151 (noDuplicateKeys!1958 oldBucket!34))))

(declare-fun tp_is_empty!31127 () Bool)

(declare-fun tp!1347512 () Bool)

(declare-fun b!4711104 () Bool)

(assert (=> b!4711104 (= e!2938355 (and tp_is_empty!31125 tp_is_empty!31127 tp!1347512))))

(declare-fun b!4711105 () Bool)

(declare-fun res!1991156 () Bool)

(assert (=> b!4711105 (=> (not res!1991156) (not e!2938350))))

(declare-fun allKeysSameHashInMap!1872 (ListLongMap!4335 Hashable!6327) Bool)

(assert (=> b!4711105 (= res!1991156 (allKeysSameHashInMap!1872 lm!2023 hashF!1323))))

(declare-fun b!4711106 () Bool)

(declare-fun res!1991154 () Bool)

(assert (=> b!4711106 (=> res!1991154 e!2938351)))

(declare-fun containsKey!3263 (List!52807 K!14045) Bool)

(assert (=> b!4711106 (= res!1991154 (containsKey!3263 lt!1875603 key!4653))))

(declare-fun b!4711107 () Bool)

(declare-fun res!1991146 () Bool)

(assert (=> b!4711107 (=> (not res!1991146) (not e!2938346))))

(get-info :version)

(assert (=> b!4711107 (= res!1991146 ((_ is Cons!52684) (toList!5806 lm!2023)))))

(declare-fun b!4711108 () Bool)

(assert (=> b!4711108 (= e!2938349 e!2938343)))

(declare-fun res!1991150 () Bool)

(assert (=> b!4711108 (=> res!1991150 e!2938343)))

(assert (=> b!4711108 (= res!1991150 (not (= lt!1875595 (extractMap!1984 (Cons!52684 (tuple2!54229 hash!405 newBucket!218) (t!360048 (toList!5806 lm!2023)))))))))

(assert (=> b!4711108 (= lt!1875595 (extractMap!1984 lt!1875598))))

(assert (=> b!4711108 (= lt!1875598 (Cons!52684 (tuple2!54229 hash!405 lt!1875603) (t!360048 (toList!5806 lm!2023))))))

(declare-fun b!4711109 () Bool)

(declare-fun res!1991155 () Bool)

(assert (=> b!4711109 (=> res!1991155 e!2938351)))

(assert (=> b!4711109 (= res!1991155 (not (= lt!1875597 lt!1875595)))))

(declare-fun b!4711110 () Bool)

(assert (=> b!4711110 (= e!2938346 (not e!2938348))))

(declare-fun res!1991153 () Bool)

(assert (=> b!4711110 (=> res!1991153 e!2938348)))

(assert (=> b!4711110 (= res!1991153 (or (not ((_ is Cons!52683) oldBucket!34)) (not (= (_1!30407 (h!58994 oldBucket!34)) key!4653))))))

(declare-fun lt!1875602 () ListMap!5169)

(assert (=> b!4711110 (= lt!1875602 (addToMapMapFromBucket!1388 (_2!30408 (h!58995 (toList!5806 lm!2023))) lt!1875592))))

(assert (=> b!4711110 (= lt!1875592 (extractMap!1984 (t!360048 (toList!5806 lm!2023))))))

(declare-fun tail!8862 (ListLongMap!4335) ListLongMap!4335)

(assert (=> b!4711110 (= (t!360048 (toList!5806 lm!2023)) (toList!5806 (tail!8862 lm!2023)))))

(declare-fun b!4711111 () Bool)

(assert (=> b!4711111 (= e!2938347 e!2938350)))

(declare-fun res!1991158 () Bool)

(assert (=> b!4711111 (=> (not res!1991158) (not e!2938350))))

(assert (=> b!4711111 (= res!1991158 (contains!15984 lt!1875602 key!4653))))

(assert (=> b!4711111 (= lt!1875602 (extractMap!1984 (toList!5806 lm!2023)))))

(declare-fun b!4711112 () Bool)

(assert (=> b!4711112 (= e!2938354 e!2938351)))

(declare-fun res!1991164 () Bool)

(assert (=> b!4711112 (=> res!1991164 e!2938351)))

(assert (=> b!4711112 (= res!1991164 (not (eq!1095 lt!1875605 (addToMapMapFromBucket!1388 oldBucket!34 lt!1875592))))))

(assert (=> b!4711112 (= lt!1875605 (+!2222 lt!1875597 (h!58994 oldBucket!34)))))

(declare-fun lt!1875601 () tuple2!54226)

(assert (=> b!4711112 (eq!1095 (addToMapMapFromBucket!1388 (Cons!52683 lt!1875601 lt!1875603) lt!1875592) (+!2222 lt!1875597 lt!1875601))))

(declare-fun lt!1875600 () Unit!128004)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!344 (tuple2!54226 List!52807 ListMap!5169) Unit!128004)

(assert (=> b!4711112 (= lt!1875600 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!344 lt!1875601 lt!1875603 lt!1875592))))

(declare-fun head!10156 (List!52807) tuple2!54226)

(assert (=> b!4711112 (= lt!1875601 (head!10156 oldBucket!34))))

(declare-fun b!4711113 () Bool)

(declare-fun tp!1347513 () Bool)

(assert (=> b!4711113 (= e!2938356 (and tp_is_empty!31125 tp_is_empty!31127 tp!1347513))))

(assert (= (and start!478700 res!1991161) b!4711103))

(assert (= (and b!4711103 res!1991151) b!4711090))

(assert (= (and b!4711090 res!1991148) b!4711102))

(assert (= (and b!4711102 res!1991159) b!4711096))

(assert (= (and b!4711096 res!1991152) b!4711111))

(assert (= (and b!4711111 res!1991158) b!4711098))

(assert (= (and b!4711098 res!1991165) b!4711097))

(assert (= (and b!4711097 res!1991160) b!4711105))

(assert (= (and b!4711105 res!1991156) b!4711092))

(assert (= (and b!4711092 res!1991147) b!4711107))

(assert (= (and b!4711107 res!1991146) b!4711110))

(assert (= (and b!4711110 (not res!1991153)) b!4711099))

(assert (= (and b!4711099 (not res!1991157)) b!4711108))

(assert (= (and b!4711108 (not res!1991150)) b!4711095))

(assert (= (and b!4711095 (not res!1991162)) b!4711112))

(assert (= (and b!4711112 (not res!1991164)) b!4711106))

(assert (= (and b!4711106 (not res!1991154)) b!4711109))

(assert (= (and b!4711109 (not res!1991155)) b!4711101))

(assert (= (and b!4711101 (not res!1991145)) b!4711094))

(assert (= (and b!4711094 (not res!1991163)) b!4711091))

(assert (= (and b!4711091 (not res!1991149)) b!4711093))

(assert (= start!478700 b!4711100))

(assert (= (and start!478700 ((_ is Cons!52683) oldBucket!34)) b!4711104))

(assert (= (and start!478700 ((_ is Cons!52683) newBucket!218)) b!4711113))

(declare-fun m!5636719 () Bool)

(assert (=> b!4711103 m!5636719))

(declare-fun m!5636721 () Bool)

(assert (=> b!4711096 m!5636721))

(declare-fun m!5636723 () Bool)

(assert (=> b!4711090 m!5636723))

(declare-fun m!5636725 () Bool)

(assert (=> b!4711108 m!5636725))

(declare-fun m!5636727 () Bool)

(assert (=> b!4711108 m!5636727))

(declare-fun m!5636729 () Bool)

(assert (=> b!4711101 m!5636729))

(declare-fun m!5636731 () Bool)

(assert (=> b!4711101 m!5636731))

(declare-fun m!5636733 () Bool)

(assert (=> b!4711101 m!5636733))

(declare-fun m!5636735 () Bool)

(assert (=> b!4711097 m!5636735))

(declare-fun m!5636737 () Bool)

(assert (=> b!4711098 m!5636737))

(declare-fun m!5636739 () Bool)

(assert (=> b!4711094 m!5636739))

(declare-fun m!5636741 () Bool)

(assert (=> b!4711094 m!5636741))

(assert (=> b!4711094 m!5636741))

(declare-fun m!5636743 () Bool)

(assert (=> b!4711094 m!5636743))

(declare-fun m!5636745 () Bool)

(assert (=> b!4711094 m!5636745))

(declare-fun m!5636747 () Bool)

(assert (=> b!4711099 m!5636747))

(declare-fun m!5636749 () Bool)

(assert (=> b!4711102 m!5636749))

(declare-fun m!5636751 () Bool)

(assert (=> b!4711110 m!5636751))

(declare-fun m!5636753 () Bool)

(assert (=> b!4711110 m!5636753))

(declare-fun m!5636755 () Bool)

(assert (=> b!4711110 m!5636755))

(declare-fun m!5636757 () Bool)

(assert (=> start!478700 m!5636757))

(declare-fun m!5636759 () Bool)

(assert (=> start!478700 m!5636759))

(declare-fun m!5636761 () Bool)

(assert (=> b!4711093 m!5636761))

(declare-fun m!5636763 () Bool)

(assert (=> b!4711093 m!5636763))

(declare-fun m!5636765 () Bool)

(assert (=> b!4711093 m!5636765))

(declare-fun m!5636767 () Bool)

(assert (=> b!4711093 m!5636767))

(declare-fun m!5636769 () Bool)

(assert (=> b!4711105 m!5636769))

(declare-fun m!5636771 () Bool)

(assert (=> b!4711111 m!5636771))

(declare-fun m!5636773 () Bool)

(assert (=> b!4711111 m!5636773))

(declare-fun m!5636775 () Bool)

(assert (=> b!4711112 m!5636775))

(declare-fun m!5636777 () Bool)

(assert (=> b!4711112 m!5636777))

(declare-fun m!5636779 () Bool)

(assert (=> b!4711112 m!5636779))

(declare-fun m!5636781 () Bool)

(assert (=> b!4711112 m!5636781))

(declare-fun m!5636783 () Bool)

(assert (=> b!4711112 m!5636783))

(declare-fun m!5636785 () Bool)

(assert (=> b!4711112 m!5636785))

(declare-fun m!5636787 () Bool)

(assert (=> b!4711112 m!5636787))

(assert (=> b!4711112 m!5636775))

(assert (=> b!4711112 m!5636777))

(declare-fun m!5636789 () Bool)

(assert (=> b!4711112 m!5636789))

(assert (=> b!4711112 m!5636785))

(declare-fun m!5636791 () Bool)

(assert (=> b!4711095 m!5636791))

(declare-fun m!5636793 () Bool)

(assert (=> b!4711095 m!5636793))

(declare-fun m!5636795 () Bool)

(assert (=> b!4711106 m!5636795))

(declare-fun m!5636797 () Bool)

(assert (=> b!4711092 m!5636797))

(declare-fun m!5636799 () Bool)

(assert (=> b!4711091 m!5636799))

(declare-fun m!5636801 () Bool)

(assert (=> b!4711091 m!5636801))

(check-sat (not b!4711095) (not b!4711105) (not b!4711106) (not b!4711113) (not b!4711104) (not b!4711099) (not b!4711097) tp_is_empty!31125 (not b!4711112) (not b!4711110) tp_is_empty!31127 (not b!4711096) (not b!4711090) (not b!4711101) (not b!4711111) (not b!4711093) (not b!4711094) (not b!4711098) (not b!4711103) (not b!4711100) (not b!4711092) (not b!4711091) (not start!478700) (not b!4711108) (not b!4711102))
(check-sat)
(get-model)

(declare-fun d!1499137 () Bool)

(assert (=> d!1499137 (= (head!10155 (toList!5806 lm!2023)) (h!58995 (toList!5806 lm!2023)))))

(assert (=> b!4711092 d!1499137))

(declare-fun d!1499139 () Bool)

(declare-fun res!1991190 () Bool)

(declare-fun e!2938398 () Bool)

(assert (=> d!1499139 (=> res!1991190 e!2938398)))

(assert (=> d!1499139 (= res!1991190 (not ((_ is Cons!52683) oldBucket!34)))))

(assert (=> d!1499139 (= (noDuplicateKeys!1958 oldBucket!34) e!2938398)))

(declare-fun b!4711176 () Bool)

(declare-fun e!2938399 () Bool)

(assert (=> b!4711176 (= e!2938398 e!2938399)))

(declare-fun res!1991191 () Bool)

(assert (=> b!4711176 (=> (not res!1991191) (not e!2938399))))

(assert (=> b!4711176 (= res!1991191 (not (containsKey!3263 (t!360047 oldBucket!34) (_1!30407 (h!58994 oldBucket!34)))))))

(declare-fun b!4711177 () Bool)

(assert (=> b!4711177 (= e!2938399 (noDuplicateKeys!1958 (t!360047 oldBucket!34)))))

(assert (= (and d!1499139 (not res!1991190)) b!4711176))

(assert (= (and b!4711176 res!1991191) b!4711177))

(declare-fun m!5636881 () Bool)

(assert (=> b!4711176 m!5636881))

(declare-fun m!5636883 () Bool)

(assert (=> b!4711177 m!5636883))

(assert (=> b!4711103 d!1499139))

(declare-fun b!4711187 () Bool)

(declare-fun e!2938405 () List!52807)

(declare-fun e!2938404 () List!52807)

(assert (=> b!4711187 (= e!2938405 e!2938404)))

(declare-fun c!804852 () Bool)

(assert (=> b!4711187 (= c!804852 ((_ is Cons!52683) oldBucket!34))))

(declare-fun b!4711189 () Bool)

(assert (=> b!4711189 (= e!2938404 Nil!52683)))

(declare-fun b!4711186 () Bool)

(assert (=> b!4711186 (= e!2938405 (t!360047 oldBucket!34))))

(declare-fun b!4711188 () Bool)

(assert (=> b!4711188 (= e!2938404 (Cons!52683 (h!58994 oldBucket!34) (removePairForKey!1553 (t!360047 oldBucket!34) key!4653)))))

(declare-fun d!1499145 () Bool)

(declare-fun lt!1875646 () List!52807)

(assert (=> d!1499145 (not (containsKey!3263 lt!1875646 key!4653))))

(assert (=> d!1499145 (= lt!1875646 e!2938405)))

(declare-fun c!804851 () Bool)

(assert (=> d!1499145 (= c!804851 (and ((_ is Cons!52683) oldBucket!34) (= (_1!30407 (h!58994 oldBucket!34)) key!4653)))))

(assert (=> d!1499145 (noDuplicateKeys!1958 oldBucket!34)))

(assert (=> d!1499145 (= (removePairForKey!1553 oldBucket!34 key!4653) lt!1875646)))

(assert (= (and d!1499145 c!804851) b!4711186))

(assert (= (and d!1499145 (not c!804851)) b!4711187))

(assert (= (and b!4711187 c!804852) b!4711188))

(assert (= (and b!4711187 (not c!804852)) b!4711189))

(declare-fun m!5636885 () Bool)

(assert (=> b!4711188 m!5636885))

(declare-fun m!5636887 () Bool)

(assert (=> d!1499145 m!5636887))

(assert (=> d!1499145 m!5636719))

(assert (=> b!4711102 d!1499145))

(declare-fun b!4711274 () Bool)

(assert (=> b!4711274 true))

(declare-fun bs!1102167 () Bool)

(declare-fun b!4711271 () Bool)

(assert (= bs!1102167 (and b!4711271 b!4711274)))

(declare-fun lambda!212845 () Int)

(declare-fun lambda!212844 () Int)

(assert (=> bs!1102167 (= lambda!212845 lambda!212844)))

(assert (=> b!4711271 true))

(declare-fun lambda!212846 () Int)

(declare-fun lt!1875842 () ListMap!5169)

(assert (=> bs!1102167 (= (= lt!1875842 lt!1875592) (= lambda!212846 lambda!212844))))

(assert (=> b!4711271 (= (= lt!1875842 lt!1875592) (= lambda!212846 lambda!212845))))

(assert (=> b!4711271 true))

(declare-fun bs!1102168 () Bool)

(declare-fun d!1499147 () Bool)

(assert (= bs!1102168 (and d!1499147 b!4711274)))

(declare-fun lambda!212847 () Int)

(declare-fun lt!1875836 () ListMap!5169)

(assert (=> bs!1102168 (= (= lt!1875836 lt!1875592) (= lambda!212847 lambda!212844))))

(declare-fun bs!1102169 () Bool)

(assert (= bs!1102169 (and d!1499147 b!4711271)))

(assert (=> bs!1102169 (= (= lt!1875836 lt!1875592) (= lambda!212847 lambda!212845))))

(assert (=> bs!1102169 (= (= lt!1875836 lt!1875842) (= lambda!212847 lambda!212846))))

(assert (=> d!1499147 true))

(declare-fun e!2938457 () ListMap!5169)

(assert (=> b!4711271 (= e!2938457 lt!1875842)))

(declare-fun lt!1875848 () ListMap!5169)

(assert (=> b!4711271 (= lt!1875848 (+!2222 lt!1875592 (h!58994 (Cons!52683 lt!1875601 lt!1875603))))))

(assert (=> b!4711271 (= lt!1875842 (addToMapMapFromBucket!1388 (t!360047 (Cons!52683 lt!1875601 lt!1875603)) (+!2222 lt!1875592 (h!58994 (Cons!52683 lt!1875601 lt!1875603)))))))

(declare-fun lt!1875847 () Unit!128004)

(declare-fun call!329405 () Unit!128004)

(assert (=> b!4711271 (= lt!1875847 call!329405)))

(declare-fun call!329404 () Bool)

(assert (=> b!4711271 call!329404))

(declare-fun lt!1875841 () Unit!128004)

(assert (=> b!4711271 (= lt!1875841 lt!1875847)))

(declare-fun forall!11493 (List!52807 Int) Bool)

(assert (=> b!4711271 (forall!11493 (toList!5805 lt!1875848) lambda!212846)))

(declare-fun lt!1875832 () Unit!128004)

(declare-fun Unit!128023 () Unit!128004)

(assert (=> b!4711271 (= lt!1875832 Unit!128023)))

(assert (=> b!4711271 (forall!11493 (t!360047 (Cons!52683 lt!1875601 lt!1875603)) lambda!212846)))

(declare-fun lt!1875850 () Unit!128004)

(declare-fun Unit!128024 () Unit!128004)

(assert (=> b!4711271 (= lt!1875850 Unit!128024)))

(declare-fun lt!1875846 () Unit!128004)

(declare-fun Unit!128025 () Unit!128004)

(assert (=> b!4711271 (= lt!1875846 Unit!128025)))

(declare-fun lt!1875843 () Unit!128004)

(declare-fun forallContained!3564 (List!52807 Int tuple2!54226) Unit!128004)

(assert (=> b!4711271 (= lt!1875843 (forallContained!3564 (toList!5805 lt!1875848) lambda!212846 (h!58994 (Cons!52683 lt!1875601 lt!1875603))))))

(assert (=> b!4711271 (contains!15984 lt!1875848 (_1!30407 (h!58994 (Cons!52683 lt!1875601 lt!1875603))))))

(declare-fun lt!1875849 () Unit!128004)

(declare-fun Unit!128026 () Unit!128004)

(assert (=> b!4711271 (= lt!1875849 Unit!128026)))

(assert (=> b!4711271 (contains!15984 lt!1875842 (_1!30407 (h!58994 (Cons!52683 lt!1875601 lt!1875603))))))

(declare-fun lt!1875830 () Unit!128004)

(declare-fun Unit!128027 () Unit!128004)

(assert (=> b!4711271 (= lt!1875830 Unit!128027)))

(assert (=> b!4711271 (forall!11493 (Cons!52683 lt!1875601 lt!1875603) lambda!212846)))

(declare-fun lt!1875840 () Unit!128004)

(declare-fun Unit!128028 () Unit!128004)

(assert (=> b!4711271 (= lt!1875840 Unit!128028)))

(assert (=> b!4711271 (forall!11493 (toList!5805 lt!1875848) lambda!212846)))

(declare-fun lt!1875833 () Unit!128004)

(declare-fun Unit!128029 () Unit!128004)

(assert (=> b!4711271 (= lt!1875833 Unit!128029)))

(declare-fun lt!1875844 () Unit!128004)

(declare-fun Unit!128030 () Unit!128004)

(assert (=> b!4711271 (= lt!1875844 Unit!128030)))

(declare-fun lt!1875838 () Unit!128004)

(declare-fun addForallContainsKeyThenBeforeAdding!763 (ListMap!5169 ListMap!5169 K!14045 V!14291) Unit!128004)

(assert (=> b!4711271 (= lt!1875838 (addForallContainsKeyThenBeforeAdding!763 lt!1875592 lt!1875842 (_1!30407 (h!58994 (Cons!52683 lt!1875601 lt!1875603))) (_2!30407 (h!58994 (Cons!52683 lt!1875601 lt!1875603)))))))

(assert (=> b!4711271 (forall!11493 (toList!5805 lt!1875592) lambda!212846)))

(declare-fun lt!1875835 () Unit!128004)

(assert (=> b!4711271 (= lt!1875835 lt!1875838)))

(assert (=> b!4711271 (forall!11493 (toList!5805 lt!1875592) lambda!212846)))

(declare-fun lt!1875839 () Unit!128004)

(declare-fun Unit!128031 () Unit!128004)

(assert (=> b!4711271 (= lt!1875839 Unit!128031)))

(declare-fun res!1991233 () Bool)

(assert (=> b!4711271 (= res!1991233 (forall!11493 (Cons!52683 lt!1875601 lt!1875603) lambda!212846))))

(declare-fun e!2938456 () Bool)

(assert (=> b!4711271 (=> (not res!1991233) (not e!2938456))))

(assert (=> b!4711271 e!2938456))

(declare-fun lt!1875845 () Unit!128004)

(declare-fun Unit!128032 () Unit!128004)

(assert (=> b!4711271 (= lt!1875845 Unit!128032)))

(declare-fun e!2938455 () Bool)

(assert (=> d!1499147 e!2938455))

(declare-fun res!1991235 () Bool)

(assert (=> d!1499147 (=> (not res!1991235) (not e!2938455))))

(assert (=> d!1499147 (= res!1991235 (forall!11493 (Cons!52683 lt!1875601 lt!1875603) lambda!212847))))

(assert (=> d!1499147 (= lt!1875836 e!2938457)))

(declare-fun c!804871 () Bool)

(assert (=> d!1499147 (= c!804871 ((_ is Nil!52683) (Cons!52683 lt!1875601 lt!1875603)))))

(assert (=> d!1499147 (noDuplicateKeys!1958 (Cons!52683 lt!1875601 lt!1875603))))

(assert (=> d!1499147 (= (addToMapMapFromBucket!1388 (Cons!52683 lt!1875601 lt!1875603) lt!1875592) lt!1875836)))

(declare-fun bm!329399 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!764 (ListMap!5169) Unit!128004)

(assert (=> bm!329399 (= call!329405 (lemmaContainsAllItsOwnKeys!764 lt!1875592))))

(declare-fun bm!329400 () Bool)

(declare-fun call!329406 () Bool)

(assert (=> bm!329400 (= call!329406 (forall!11493 (toList!5805 lt!1875592) (ite c!804871 lambda!212844 lambda!212846)))))

(declare-fun b!4711272 () Bool)

(declare-fun res!1991234 () Bool)

(assert (=> b!4711272 (=> (not res!1991234) (not e!2938455))))

(assert (=> b!4711272 (= res!1991234 (forall!11493 (toList!5805 lt!1875592) lambda!212847))))

(declare-fun b!4711273 () Bool)

(declare-fun invariantList!1476 (List!52807) Bool)

(assert (=> b!4711273 (= e!2938455 (invariantList!1476 (toList!5805 lt!1875836)))))

(assert (=> b!4711274 (= e!2938457 lt!1875592)))

(declare-fun lt!1875834 () Unit!128004)

(assert (=> b!4711274 (= lt!1875834 call!329405)))

(assert (=> b!4711274 call!329404))

(declare-fun lt!1875837 () Unit!128004)

(assert (=> b!4711274 (= lt!1875837 lt!1875834)))

(assert (=> b!4711274 call!329406))

(declare-fun lt!1875831 () Unit!128004)

(declare-fun Unit!128033 () Unit!128004)

(assert (=> b!4711274 (= lt!1875831 Unit!128033)))

(declare-fun bm!329401 () Bool)

(assert (=> bm!329401 (= call!329404 (forall!11493 (toList!5805 lt!1875592) (ite c!804871 lambda!212844 lambda!212845)))))

(declare-fun b!4711275 () Bool)

(assert (=> b!4711275 (= e!2938456 call!329406)))

(assert (= (and d!1499147 c!804871) b!4711274))

(assert (= (and d!1499147 (not c!804871)) b!4711271))

(assert (= (and b!4711271 res!1991233) b!4711275))

(assert (= (or b!4711274 b!4711271) bm!329399))

(assert (= (or b!4711274 b!4711275) bm!329400))

(assert (= (or b!4711274 b!4711271) bm!329401))

(assert (= (and d!1499147 res!1991235) b!4711272))

(assert (= (and b!4711272 res!1991234) b!4711273))

(declare-fun m!5637107 () Bool)

(assert (=> b!4711272 m!5637107))

(declare-fun m!5637109 () Bool)

(assert (=> bm!329400 m!5637109))

(declare-fun m!5637111 () Bool)

(assert (=> bm!329399 m!5637111))

(declare-fun m!5637113 () Bool)

(assert (=> bm!329401 m!5637113))

(declare-fun m!5637115 () Bool)

(assert (=> d!1499147 m!5637115))

(declare-fun m!5637117 () Bool)

(assert (=> d!1499147 m!5637117))

(declare-fun m!5637119 () Bool)

(assert (=> b!4711273 m!5637119))

(declare-fun m!5637121 () Bool)

(assert (=> b!4711271 m!5637121))

(declare-fun m!5637123 () Bool)

(assert (=> b!4711271 m!5637123))

(assert (=> b!4711271 m!5637123))

(declare-fun m!5637125 () Bool)

(assert (=> b!4711271 m!5637125))

(declare-fun m!5637127 () Bool)

(assert (=> b!4711271 m!5637127))

(assert (=> b!4711271 m!5637127))

(declare-fun m!5637129 () Bool)

(assert (=> b!4711271 m!5637129))

(declare-fun m!5637131 () Bool)

(assert (=> b!4711271 m!5637131))

(declare-fun m!5637133 () Bool)

(assert (=> b!4711271 m!5637133))

(assert (=> b!4711271 m!5637129))

(declare-fun m!5637135 () Bool)

(assert (=> b!4711271 m!5637135))

(assert (=> b!4711271 m!5637121))

(declare-fun m!5637137 () Bool)

(assert (=> b!4711271 m!5637137))

(declare-fun m!5637139 () Bool)

(assert (=> b!4711271 m!5637139))

(assert (=> b!4711112 d!1499147))

(declare-fun d!1499193 () Bool)

(declare-fun e!2938470 () Bool)

(assert (=> d!1499193 e!2938470))

(declare-fun res!1991251 () Bool)

(assert (=> d!1499193 (=> (not res!1991251) (not e!2938470))))

(declare-fun lt!1875887 () ListMap!5169)

(assert (=> d!1499193 (= res!1991251 (contains!15984 lt!1875887 (_1!30407 (h!58994 oldBucket!34))))))

(declare-fun lt!1875888 () List!52807)

(assert (=> d!1499193 (= lt!1875887 (ListMap!5170 lt!1875888))))

(declare-fun lt!1875890 () Unit!128004)

(declare-fun lt!1875889 () Unit!128004)

(assert (=> d!1499193 (= lt!1875890 lt!1875889)))

(declare-datatypes ((Option!12269 0))(
  ( (None!12268) (Some!12268 (v!46795 V!14291)) )
))
(declare-fun getValueByKey!1901 (List!52807 K!14045) Option!12269)

(assert (=> d!1499193 (= (getValueByKey!1901 lt!1875888 (_1!30407 (h!58994 oldBucket!34))) (Some!12268 (_2!30407 (h!58994 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1064 (List!52807 K!14045 V!14291) Unit!128004)

(assert (=> d!1499193 (= lt!1875889 (lemmaContainsTupThenGetReturnValue!1064 lt!1875888 (_1!30407 (h!58994 oldBucket!34)) (_2!30407 (h!58994 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!572 (List!52807 K!14045 V!14291) List!52807)

(assert (=> d!1499193 (= lt!1875888 (insertNoDuplicatedKeys!572 (toList!5805 lt!1875597) (_1!30407 (h!58994 oldBucket!34)) (_2!30407 (h!58994 oldBucket!34))))))

(assert (=> d!1499193 (= (+!2222 lt!1875597 (h!58994 oldBucket!34)) lt!1875887)))

(declare-fun b!4711295 () Bool)

(declare-fun res!1991252 () Bool)

(assert (=> b!4711295 (=> (not res!1991252) (not e!2938470))))

(assert (=> b!4711295 (= res!1991252 (= (getValueByKey!1901 (toList!5805 lt!1875887) (_1!30407 (h!58994 oldBucket!34))) (Some!12268 (_2!30407 (h!58994 oldBucket!34)))))))

(declare-fun b!4711296 () Bool)

(declare-fun contains!15987 (List!52807 tuple2!54226) Bool)

(assert (=> b!4711296 (= e!2938470 (contains!15987 (toList!5805 lt!1875887) (h!58994 oldBucket!34)))))

(assert (= (and d!1499193 res!1991251) b!4711295))

(assert (= (and b!4711295 res!1991252) b!4711296))

(declare-fun m!5637161 () Bool)

(assert (=> d!1499193 m!5637161))

(declare-fun m!5637163 () Bool)

(assert (=> d!1499193 m!5637163))

(declare-fun m!5637165 () Bool)

(assert (=> d!1499193 m!5637165))

(declare-fun m!5637167 () Bool)

(assert (=> d!1499193 m!5637167))

(declare-fun m!5637169 () Bool)

(assert (=> b!4711295 m!5637169))

(declare-fun m!5637171 () Bool)

(assert (=> b!4711296 m!5637171))

(assert (=> b!4711112 d!1499193))

(declare-fun d!1499205 () Bool)

(assert (=> d!1499205 (= (head!10156 oldBucket!34) (h!58994 oldBucket!34))))

(assert (=> b!4711112 d!1499205))

(declare-fun d!1499207 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9337 (List!52807) (InoxSet tuple2!54226))

(assert (=> d!1499207 (= (eq!1095 lt!1875605 (addToMapMapFromBucket!1388 oldBucket!34 lt!1875592)) (= (content!9337 (toList!5805 lt!1875605)) (content!9337 (toList!5805 (addToMapMapFromBucket!1388 oldBucket!34 lt!1875592)))))))

(declare-fun bs!1102205 () Bool)

(assert (= bs!1102205 d!1499207))

(declare-fun m!5637173 () Bool)

(assert (=> bs!1102205 m!5637173))

(declare-fun m!5637175 () Bool)

(assert (=> bs!1102205 m!5637175))

(assert (=> b!4711112 d!1499207))

(declare-fun d!1499209 () Bool)

(assert (=> d!1499209 (eq!1095 (addToMapMapFromBucket!1388 (Cons!52683 lt!1875601 lt!1875603) lt!1875592) (+!2222 (addToMapMapFromBucket!1388 lt!1875603 lt!1875592) lt!1875601))))

(declare-fun lt!1875918 () Unit!128004)

(declare-fun choose!33122 (tuple2!54226 List!52807 ListMap!5169) Unit!128004)

(assert (=> d!1499209 (= lt!1875918 (choose!33122 lt!1875601 lt!1875603 lt!1875592))))

(assert (=> d!1499209 (noDuplicateKeys!1958 lt!1875603)))

(assert (=> d!1499209 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!344 lt!1875601 lt!1875603 lt!1875592) lt!1875918)))

(declare-fun bs!1102248 () Bool)

(assert (= bs!1102248 d!1499209))

(declare-fun m!5637221 () Bool)

(assert (=> bs!1102248 m!5637221))

(assert (=> bs!1102248 m!5636793))

(assert (=> bs!1102248 m!5636775))

(assert (=> bs!1102248 m!5636793))

(declare-fun m!5637223 () Bool)

(assert (=> bs!1102248 m!5637223))

(assert (=> bs!1102248 m!5636775))

(assert (=> bs!1102248 m!5637223))

(declare-fun m!5637225 () Bool)

(assert (=> bs!1102248 m!5637225))

(declare-fun m!5637227 () Bool)

(assert (=> bs!1102248 m!5637227))

(assert (=> b!4711112 d!1499209))

(declare-fun d!1499215 () Bool)

(declare-fun e!2938475 () Bool)

(assert (=> d!1499215 e!2938475))

(declare-fun res!1991258 () Bool)

(assert (=> d!1499215 (=> (not res!1991258) (not e!2938475))))

(declare-fun lt!1875919 () ListMap!5169)

(assert (=> d!1499215 (= res!1991258 (contains!15984 lt!1875919 (_1!30407 lt!1875601)))))

(declare-fun lt!1875920 () List!52807)

(assert (=> d!1499215 (= lt!1875919 (ListMap!5170 lt!1875920))))

(declare-fun lt!1875922 () Unit!128004)

(declare-fun lt!1875921 () Unit!128004)

(assert (=> d!1499215 (= lt!1875922 lt!1875921)))

(assert (=> d!1499215 (= (getValueByKey!1901 lt!1875920 (_1!30407 lt!1875601)) (Some!12268 (_2!30407 lt!1875601)))))

(assert (=> d!1499215 (= lt!1875921 (lemmaContainsTupThenGetReturnValue!1064 lt!1875920 (_1!30407 lt!1875601) (_2!30407 lt!1875601)))))

(assert (=> d!1499215 (= lt!1875920 (insertNoDuplicatedKeys!572 (toList!5805 lt!1875597) (_1!30407 lt!1875601) (_2!30407 lt!1875601)))))

(assert (=> d!1499215 (= (+!2222 lt!1875597 lt!1875601) lt!1875919)))

(declare-fun b!4711304 () Bool)

(declare-fun res!1991259 () Bool)

(assert (=> b!4711304 (=> (not res!1991259) (not e!2938475))))

(assert (=> b!4711304 (= res!1991259 (= (getValueByKey!1901 (toList!5805 lt!1875919) (_1!30407 lt!1875601)) (Some!12268 (_2!30407 lt!1875601))))))

(declare-fun b!4711305 () Bool)

(assert (=> b!4711305 (= e!2938475 (contains!15987 (toList!5805 lt!1875919) lt!1875601))))

(assert (= (and d!1499215 res!1991258) b!4711304))

(assert (= (and b!4711304 res!1991259) b!4711305))

(declare-fun m!5637229 () Bool)

(assert (=> d!1499215 m!5637229))

(declare-fun m!5637231 () Bool)

(assert (=> d!1499215 m!5637231))

(declare-fun m!5637233 () Bool)

(assert (=> d!1499215 m!5637233))

(declare-fun m!5637235 () Bool)

(assert (=> d!1499215 m!5637235))

(declare-fun m!5637237 () Bool)

(assert (=> b!4711304 m!5637237))

(declare-fun m!5637241 () Bool)

(assert (=> b!4711305 m!5637241))

(assert (=> b!4711112 d!1499215))

(declare-fun d!1499217 () Bool)

(assert (=> d!1499217 (= (eq!1095 (addToMapMapFromBucket!1388 (Cons!52683 lt!1875601 lt!1875603) lt!1875592) (+!2222 lt!1875597 lt!1875601)) (= (content!9337 (toList!5805 (addToMapMapFromBucket!1388 (Cons!52683 lt!1875601 lt!1875603) lt!1875592))) (content!9337 (toList!5805 (+!2222 lt!1875597 lt!1875601)))))))

(declare-fun bs!1102249 () Bool)

(assert (= bs!1102249 d!1499217))

(declare-fun m!5637257 () Bool)

(assert (=> bs!1102249 m!5637257))

(declare-fun m!5637261 () Bool)

(assert (=> bs!1102249 m!5637261))

(assert (=> b!4711112 d!1499217))

(declare-fun bs!1102250 () Bool)

(declare-fun b!4711309 () Bool)

(assert (= bs!1102250 (and b!4711309 b!4711274)))

(declare-fun lambda!212856 () Int)

(assert (=> bs!1102250 (= lambda!212856 lambda!212844)))

(declare-fun bs!1102251 () Bool)

(assert (= bs!1102251 (and b!4711309 b!4711271)))

(assert (=> bs!1102251 (= lambda!212856 lambda!212845)))

(assert (=> bs!1102251 (= (= lt!1875592 lt!1875842) (= lambda!212856 lambda!212846))))

(declare-fun bs!1102252 () Bool)

(assert (= bs!1102252 (and b!4711309 d!1499147)))

(assert (=> bs!1102252 (= (= lt!1875592 lt!1875836) (= lambda!212856 lambda!212847))))

(assert (=> b!4711309 true))

(declare-fun bs!1102253 () Bool)

(declare-fun b!4711306 () Bool)

(assert (= bs!1102253 (and b!4711306 b!4711274)))

(declare-fun lambda!212857 () Int)

(assert (=> bs!1102253 (= lambda!212857 lambda!212844)))

(declare-fun bs!1102254 () Bool)

(assert (= bs!1102254 (and b!4711306 b!4711309)))

(assert (=> bs!1102254 (= lambda!212857 lambda!212856)))

(declare-fun bs!1102255 () Bool)

(assert (= bs!1102255 (and b!4711306 b!4711271)))

(assert (=> bs!1102255 (= (= lt!1875592 lt!1875842) (= lambda!212857 lambda!212846))))

(declare-fun bs!1102256 () Bool)

(assert (= bs!1102256 (and b!4711306 d!1499147)))

(assert (=> bs!1102256 (= (= lt!1875592 lt!1875836) (= lambda!212857 lambda!212847))))

(assert (=> bs!1102255 (= lambda!212857 lambda!212845)))

(assert (=> b!4711306 true))

(declare-fun lambda!212858 () Int)

(declare-fun lt!1875935 () ListMap!5169)

(assert (=> bs!1102253 (= (= lt!1875935 lt!1875592) (= lambda!212858 lambda!212844))))

(assert (=> bs!1102254 (= (= lt!1875935 lt!1875592) (= lambda!212858 lambda!212856))))

(assert (=> b!4711306 (= (= lt!1875935 lt!1875592) (= lambda!212858 lambda!212857))))

(assert (=> bs!1102255 (= (= lt!1875935 lt!1875842) (= lambda!212858 lambda!212846))))

(assert (=> bs!1102256 (= (= lt!1875935 lt!1875836) (= lambda!212858 lambda!212847))))

(assert (=> bs!1102255 (= (= lt!1875935 lt!1875592) (= lambda!212858 lambda!212845))))

(assert (=> b!4711306 true))

(declare-fun bs!1102257 () Bool)

(declare-fun d!1499219 () Bool)

(assert (= bs!1102257 (and d!1499219 b!4711274)))

(declare-fun lt!1875929 () ListMap!5169)

(declare-fun lambda!212859 () Int)

(assert (=> bs!1102257 (= (= lt!1875929 lt!1875592) (= lambda!212859 lambda!212844))))

(declare-fun bs!1102258 () Bool)

(assert (= bs!1102258 (and d!1499219 b!4711309)))

(assert (=> bs!1102258 (= (= lt!1875929 lt!1875592) (= lambda!212859 lambda!212856))))

(declare-fun bs!1102259 () Bool)

(assert (= bs!1102259 (and d!1499219 b!4711306)))

(assert (=> bs!1102259 (= (= lt!1875929 lt!1875592) (= lambda!212859 lambda!212857))))

(declare-fun bs!1102260 () Bool)

(assert (= bs!1102260 (and d!1499219 b!4711271)))

(assert (=> bs!1102260 (= (= lt!1875929 lt!1875842) (= lambda!212859 lambda!212846))))

(declare-fun bs!1102261 () Bool)

(assert (= bs!1102261 (and d!1499219 d!1499147)))

(assert (=> bs!1102261 (= (= lt!1875929 lt!1875836) (= lambda!212859 lambda!212847))))

(assert (=> bs!1102260 (= (= lt!1875929 lt!1875592) (= lambda!212859 lambda!212845))))

(assert (=> bs!1102259 (= (= lt!1875929 lt!1875935) (= lambda!212859 lambda!212858))))

(assert (=> d!1499219 true))

(declare-fun e!2938478 () ListMap!5169)

(assert (=> b!4711306 (= e!2938478 lt!1875935)))

(declare-fun lt!1875941 () ListMap!5169)

(assert (=> b!4711306 (= lt!1875941 (+!2222 lt!1875592 (h!58994 oldBucket!34)))))

(assert (=> b!4711306 (= lt!1875935 (addToMapMapFromBucket!1388 (t!360047 oldBucket!34) (+!2222 lt!1875592 (h!58994 oldBucket!34))))))

(declare-fun lt!1875940 () Unit!128004)

(declare-fun call!329414 () Unit!128004)

(assert (=> b!4711306 (= lt!1875940 call!329414)))

(declare-fun call!329413 () Bool)

(assert (=> b!4711306 call!329413))

(declare-fun lt!1875934 () Unit!128004)

(assert (=> b!4711306 (= lt!1875934 lt!1875940)))

(assert (=> b!4711306 (forall!11493 (toList!5805 lt!1875941) lambda!212858)))

(declare-fun lt!1875925 () Unit!128004)

(declare-fun Unit!128045 () Unit!128004)

(assert (=> b!4711306 (= lt!1875925 Unit!128045)))

(assert (=> b!4711306 (forall!11493 (t!360047 oldBucket!34) lambda!212858)))

(declare-fun lt!1875943 () Unit!128004)

(declare-fun Unit!128046 () Unit!128004)

(assert (=> b!4711306 (= lt!1875943 Unit!128046)))

(declare-fun lt!1875939 () Unit!128004)

(declare-fun Unit!128047 () Unit!128004)

(assert (=> b!4711306 (= lt!1875939 Unit!128047)))

(declare-fun lt!1875936 () Unit!128004)

(assert (=> b!4711306 (= lt!1875936 (forallContained!3564 (toList!5805 lt!1875941) lambda!212858 (h!58994 oldBucket!34)))))

(assert (=> b!4711306 (contains!15984 lt!1875941 (_1!30407 (h!58994 oldBucket!34)))))

(declare-fun lt!1875942 () Unit!128004)

(declare-fun Unit!128048 () Unit!128004)

(assert (=> b!4711306 (= lt!1875942 Unit!128048)))

(assert (=> b!4711306 (contains!15984 lt!1875935 (_1!30407 (h!58994 oldBucket!34)))))

(declare-fun lt!1875923 () Unit!128004)

(declare-fun Unit!128049 () Unit!128004)

(assert (=> b!4711306 (= lt!1875923 Unit!128049)))

(assert (=> b!4711306 (forall!11493 oldBucket!34 lambda!212858)))

(declare-fun lt!1875933 () Unit!128004)

(declare-fun Unit!128050 () Unit!128004)

(assert (=> b!4711306 (= lt!1875933 Unit!128050)))

(assert (=> b!4711306 (forall!11493 (toList!5805 lt!1875941) lambda!212858)))

(declare-fun lt!1875926 () Unit!128004)

(declare-fun Unit!128051 () Unit!128004)

(assert (=> b!4711306 (= lt!1875926 Unit!128051)))

(declare-fun lt!1875937 () Unit!128004)

(declare-fun Unit!128052 () Unit!128004)

(assert (=> b!4711306 (= lt!1875937 Unit!128052)))

(declare-fun lt!1875931 () Unit!128004)

(assert (=> b!4711306 (= lt!1875931 (addForallContainsKeyThenBeforeAdding!763 lt!1875592 lt!1875935 (_1!30407 (h!58994 oldBucket!34)) (_2!30407 (h!58994 oldBucket!34))))))

(assert (=> b!4711306 (forall!11493 (toList!5805 lt!1875592) lambda!212858)))

(declare-fun lt!1875928 () Unit!128004)

(assert (=> b!4711306 (= lt!1875928 lt!1875931)))

(assert (=> b!4711306 (forall!11493 (toList!5805 lt!1875592) lambda!212858)))

(declare-fun lt!1875932 () Unit!128004)

(declare-fun Unit!128053 () Unit!128004)

(assert (=> b!4711306 (= lt!1875932 Unit!128053)))

(declare-fun res!1991260 () Bool)

(assert (=> b!4711306 (= res!1991260 (forall!11493 oldBucket!34 lambda!212858))))

(declare-fun e!2938477 () Bool)

(assert (=> b!4711306 (=> (not res!1991260) (not e!2938477))))

(assert (=> b!4711306 e!2938477))

(declare-fun lt!1875938 () Unit!128004)

(declare-fun Unit!128054 () Unit!128004)

(assert (=> b!4711306 (= lt!1875938 Unit!128054)))

(declare-fun e!2938476 () Bool)

(assert (=> d!1499219 e!2938476))

(declare-fun res!1991262 () Bool)

(assert (=> d!1499219 (=> (not res!1991262) (not e!2938476))))

(assert (=> d!1499219 (= res!1991262 (forall!11493 oldBucket!34 lambda!212859))))

(assert (=> d!1499219 (= lt!1875929 e!2938478)))

(declare-fun c!804874 () Bool)

(assert (=> d!1499219 (= c!804874 ((_ is Nil!52683) oldBucket!34))))

(assert (=> d!1499219 (noDuplicateKeys!1958 oldBucket!34)))

(assert (=> d!1499219 (= (addToMapMapFromBucket!1388 oldBucket!34 lt!1875592) lt!1875929)))

(declare-fun bm!329408 () Bool)

(assert (=> bm!329408 (= call!329414 (lemmaContainsAllItsOwnKeys!764 lt!1875592))))

(declare-fun call!329415 () Bool)

(declare-fun bm!329409 () Bool)

(assert (=> bm!329409 (= call!329415 (forall!11493 (toList!5805 lt!1875592) (ite c!804874 lambda!212856 lambda!212858)))))

(declare-fun b!4711307 () Bool)

(declare-fun res!1991261 () Bool)

(assert (=> b!4711307 (=> (not res!1991261) (not e!2938476))))

(assert (=> b!4711307 (= res!1991261 (forall!11493 (toList!5805 lt!1875592) lambda!212859))))

(declare-fun b!4711308 () Bool)

(assert (=> b!4711308 (= e!2938476 (invariantList!1476 (toList!5805 lt!1875929)))))

(assert (=> b!4711309 (= e!2938478 lt!1875592)))

(declare-fun lt!1875927 () Unit!128004)

(assert (=> b!4711309 (= lt!1875927 call!329414)))

(assert (=> b!4711309 call!329413))

(declare-fun lt!1875930 () Unit!128004)

(assert (=> b!4711309 (= lt!1875930 lt!1875927)))

(assert (=> b!4711309 call!329415))

(declare-fun lt!1875924 () Unit!128004)

(declare-fun Unit!128055 () Unit!128004)

(assert (=> b!4711309 (= lt!1875924 Unit!128055)))

(declare-fun bm!329410 () Bool)

(assert (=> bm!329410 (= call!329413 (forall!11493 (toList!5805 lt!1875592) (ite c!804874 lambda!212856 lambda!212857)))))

(declare-fun b!4711310 () Bool)

(assert (=> b!4711310 (= e!2938477 call!329415)))

(assert (= (and d!1499219 c!804874) b!4711309))

(assert (= (and d!1499219 (not c!804874)) b!4711306))

(assert (= (and b!4711306 res!1991260) b!4711310))

(assert (= (or b!4711309 b!4711306) bm!329408))

(assert (= (or b!4711309 b!4711310) bm!329409))

(assert (= (or b!4711309 b!4711306) bm!329410))

(assert (= (and d!1499219 res!1991262) b!4711307))

(assert (= (and b!4711307 res!1991261) b!4711308))

(declare-fun m!5637279 () Bool)

(assert (=> b!4711307 m!5637279))

(declare-fun m!5637281 () Bool)

(assert (=> bm!329409 m!5637281))

(assert (=> bm!329408 m!5637111))

(declare-fun m!5637283 () Bool)

(assert (=> bm!329410 m!5637283))

(declare-fun m!5637285 () Bool)

(assert (=> d!1499219 m!5637285))

(assert (=> d!1499219 m!5636719))

(declare-fun m!5637287 () Bool)

(assert (=> b!4711308 m!5637287))

(declare-fun m!5637289 () Bool)

(assert (=> b!4711306 m!5637289))

(declare-fun m!5637291 () Bool)

(assert (=> b!4711306 m!5637291))

(assert (=> b!4711306 m!5637291))

(declare-fun m!5637293 () Bool)

(assert (=> b!4711306 m!5637293))

(declare-fun m!5637295 () Bool)

(assert (=> b!4711306 m!5637295))

(assert (=> b!4711306 m!5637295))

(declare-fun m!5637297 () Bool)

(assert (=> b!4711306 m!5637297))

(declare-fun m!5637299 () Bool)

(assert (=> b!4711306 m!5637299))

(declare-fun m!5637301 () Bool)

(assert (=> b!4711306 m!5637301))

(assert (=> b!4711306 m!5637297))

(declare-fun m!5637303 () Bool)

(assert (=> b!4711306 m!5637303))

(assert (=> b!4711306 m!5637289))

(declare-fun m!5637305 () Bool)

(assert (=> b!4711306 m!5637305))

(declare-fun m!5637307 () Bool)

(assert (=> b!4711306 m!5637307))

(assert (=> b!4711112 d!1499219))

(declare-fun d!1499223 () Bool)

(declare-fun res!1991267 () Bool)

(declare-fun e!2938483 () Bool)

(assert (=> d!1499223 (=> res!1991267 e!2938483)))

(assert (=> d!1499223 (= res!1991267 ((_ is Nil!52684) (toList!5806 lm!2023)))))

(assert (=> d!1499223 (= (forall!11491 (toList!5806 lm!2023) lambda!212759) e!2938483)))

(declare-fun b!4711315 () Bool)

(declare-fun e!2938484 () Bool)

(assert (=> b!4711315 (= e!2938483 e!2938484)))

(declare-fun res!1991268 () Bool)

(assert (=> b!4711315 (=> (not res!1991268) (not e!2938484))))

(declare-fun dynLambda!21779 (Int tuple2!54228) Bool)

(assert (=> b!4711315 (= res!1991268 (dynLambda!21779 lambda!212759 (h!58995 (toList!5806 lm!2023))))))

(declare-fun b!4711316 () Bool)

(assert (=> b!4711316 (= e!2938484 (forall!11491 (t!360048 (toList!5806 lm!2023)) lambda!212759))))

(assert (= (and d!1499223 (not res!1991267)) b!4711315))

(assert (= (and b!4711315 res!1991268) b!4711316))

(declare-fun b_lambda!177655 () Bool)

(assert (=> (not b_lambda!177655) (not b!4711315)))

(declare-fun m!5637309 () Bool)

(assert (=> b!4711315 m!5637309))

(declare-fun m!5637311 () Bool)

(assert (=> b!4711316 m!5637311))

(assert (=> start!478700 d!1499223))

(declare-fun d!1499225 () Bool)

(declare-fun isStrictlySorted!715 (List!52808) Bool)

(assert (=> d!1499225 (= (inv!67919 lm!2023) (isStrictlySorted!715 (toList!5806 lm!2023)))))

(declare-fun bs!1102262 () Bool)

(assert (= bs!1102262 d!1499225))

(declare-fun m!5637313 () Bool)

(assert (=> bs!1102262 m!5637313))

(assert (=> start!478700 d!1499225))

(declare-fun d!1499227 () Bool)

(assert (=> d!1499227 (= (eq!1095 lt!1875605 lt!1875591) (= (content!9337 (toList!5805 lt!1875605)) (content!9337 (toList!5805 lt!1875591))))))

(declare-fun bs!1102263 () Bool)

(assert (= bs!1102263 d!1499227))

(assert (=> bs!1102263 m!5637173))

(declare-fun m!5637315 () Bool)

(assert (=> bs!1102263 m!5637315))

(assert (=> b!4711091 d!1499227))

(declare-fun bs!1102284 () Bool)

(declare-fun d!1499229 () Bool)

(assert (= bs!1102284 (and d!1499229 start!478700)))

(declare-fun lambda!212863 () Int)

(assert (=> bs!1102284 (= lambda!212863 lambda!212759)))

(declare-fun lt!1875949 () ListMap!5169)

(assert (=> d!1499229 (invariantList!1476 (toList!5805 lt!1875949))))

(declare-fun e!2938494 () ListMap!5169)

(assert (=> d!1499229 (= lt!1875949 e!2938494)))

(declare-fun c!804877 () Bool)

(assert (=> d!1499229 (= c!804877 ((_ is Cons!52684) (Cons!52684 lt!1875606 (t!360048 (toList!5806 lm!2023)))))))

(assert (=> d!1499229 (forall!11491 (Cons!52684 lt!1875606 (t!360048 (toList!5806 lm!2023))) lambda!212863)))

(assert (=> d!1499229 (= (extractMap!1984 (Cons!52684 lt!1875606 (t!360048 (toList!5806 lm!2023)))) lt!1875949)))

(declare-fun b!4711332 () Bool)

(assert (=> b!4711332 (= e!2938494 (addToMapMapFromBucket!1388 (_2!30408 (h!58995 (Cons!52684 lt!1875606 (t!360048 (toList!5806 lm!2023))))) (extractMap!1984 (t!360048 (Cons!52684 lt!1875606 (t!360048 (toList!5806 lm!2023)))))))))

(declare-fun b!4711333 () Bool)

(assert (=> b!4711333 (= e!2938494 (ListMap!5170 Nil!52683))))

(assert (= (and d!1499229 c!804877) b!4711332))

(assert (= (and d!1499229 (not c!804877)) b!4711333))

(declare-fun m!5637329 () Bool)

(assert (=> d!1499229 m!5637329))

(declare-fun m!5637331 () Bool)

(assert (=> d!1499229 m!5637331))

(declare-fun m!5637333 () Bool)

(assert (=> b!4711332 m!5637333))

(assert (=> b!4711332 m!5637333))

(declare-fun m!5637335 () Bool)

(assert (=> b!4711332 m!5637335))

(assert (=> b!4711091 d!1499229))

(declare-fun d!1499237 () Bool)

(declare-fun res!1991269 () Bool)

(declare-fun e!2938495 () Bool)

(assert (=> d!1499237 (=> res!1991269 e!2938495)))

(assert (=> d!1499237 (= res!1991269 (not ((_ is Cons!52683) newBucket!218)))))

(assert (=> d!1499237 (= (noDuplicateKeys!1958 newBucket!218) e!2938495)))

(declare-fun b!4711334 () Bool)

(declare-fun e!2938496 () Bool)

(assert (=> b!4711334 (= e!2938495 e!2938496)))

(declare-fun res!1991270 () Bool)

(assert (=> b!4711334 (=> (not res!1991270) (not e!2938496))))

(assert (=> b!4711334 (= res!1991270 (not (containsKey!3263 (t!360047 newBucket!218) (_1!30407 (h!58994 newBucket!218)))))))

(declare-fun b!4711335 () Bool)

(assert (=> b!4711335 (= e!2938496 (noDuplicateKeys!1958 (t!360047 newBucket!218)))))

(assert (= (and d!1499237 (not res!1991269)) b!4711334))

(assert (= (and b!4711334 res!1991270) b!4711335))

(declare-fun m!5637337 () Bool)

(assert (=> b!4711334 m!5637337))

(declare-fun m!5637339 () Bool)

(assert (=> b!4711335 m!5637339))

(assert (=> b!4711090 d!1499237))

(declare-fun b!4711354 () Bool)

(declare-fun e!2938514 () Bool)

(declare-datatypes ((List!52810 0))(
  ( (Nil!52686) (Cons!52686 (h!58999 K!14045) (t!360052 List!52810)) )
))
(declare-fun contains!15988 (List!52810 K!14045) Bool)

(declare-fun keys!18883 (ListMap!5169) List!52810)

(assert (=> b!4711354 (= e!2938514 (contains!15988 (keys!18883 lt!1875597) key!4653))))

(declare-fun b!4711356 () Bool)

(declare-fun e!2938510 () List!52810)

(assert (=> b!4711356 (= e!2938510 (keys!18883 lt!1875597))))

(declare-fun b!4711357 () Bool)

(declare-fun e!2938509 () Unit!128004)

(declare-fun lt!1875967 () Unit!128004)

(assert (=> b!4711357 (= e!2938509 lt!1875967)))

(declare-fun lt!1875971 () Unit!128004)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1793 (List!52807 K!14045) Unit!128004)

(assert (=> b!4711357 (= lt!1875971 (lemmaContainsKeyImpliesGetValueByKeyDefined!1793 (toList!5805 lt!1875597) key!4653))))

(declare-fun isDefined!9524 (Option!12269) Bool)

(assert (=> b!4711357 (isDefined!9524 (getValueByKey!1901 (toList!5805 lt!1875597) key!4653))))

(declare-fun lt!1875969 () Unit!128004)

(assert (=> b!4711357 (= lt!1875969 lt!1875971)))

(declare-fun lemmaInListThenGetKeysListContains!911 (List!52807 K!14045) Unit!128004)

(assert (=> b!4711357 (= lt!1875967 (lemmaInListThenGetKeysListContains!911 (toList!5805 lt!1875597) key!4653))))

(declare-fun call!329418 () Bool)

(assert (=> b!4711357 call!329418))

(declare-fun b!4711358 () Bool)

(declare-fun e!2938513 () Unit!128004)

(assert (=> b!4711358 (= e!2938509 e!2938513)))

(declare-fun c!804884 () Bool)

(assert (=> b!4711358 (= c!804884 call!329418)))

(declare-fun bm!329413 () Bool)

(assert (=> bm!329413 (= call!329418 (contains!15988 e!2938510 key!4653))))

(declare-fun c!804885 () Bool)

(declare-fun c!804886 () Bool)

(assert (=> bm!329413 (= c!804885 c!804886)))

(declare-fun b!4711359 () Bool)

(declare-fun e!2938512 () Bool)

(assert (=> b!4711359 (= e!2938512 (not (contains!15988 (keys!18883 lt!1875597) key!4653)))))

(declare-fun b!4711360 () Bool)

(declare-fun getKeysList!916 (List!52807) List!52810)

(assert (=> b!4711360 (= e!2938510 (getKeysList!916 (toList!5805 lt!1875597)))))

(declare-fun b!4711361 () Bool)

(declare-fun e!2938511 () Bool)

(assert (=> b!4711361 (= e!2938511 e!2938514)))

(declare-fun res!1991278 () Bool)

(assert (=> b!4711361 (=> (not res!1991278) (not e!2938514))))

(assert (=> b!4711361 (= res!1991278 (isDefined!9524 (getValueByKey!1901 (toList!5805 lt!1875597) key!4653)))))

(declare-fun b!4711362 () Bool)

(declare-fun Unit!128067 () Unit!128004)

(assert (=> b!4711362 (= e!2938513 Unit!128067)))

(declare-fun b!4711355 () Bool)

(assert (=> b!4711355 false))

(declare-fun lt!1875972 () Unit!128004)

(declare-fun lt!1875966 () Unit!128004)

(assert (=> b!4711355 (= lt!1875972 lt!1875966)))

(declare-fun containsKey!3265 (List!52807 K!14045) Bool)

(assert (=> b!4711355 (containsKey!3265 (toList!5805 lt!1875597) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!915 (List!52807 K!14045) Unit!128004)

(assert (=> b!4711355 (= lt!1875966 (lemmaInGetKeysListThenContainsKey!915 (toList!5805 lt!1875597) key!4653))))

(declare-fun Unit!128068 () Unit!128004)

(assert (=> b!4711355 (= e!2938513 Unit!128068)))

(declare-fun d!1499239 () Bool)

(assert (=> d!1499239 e!2938511))

(declare-fun res!1991279 () Bool)

(assert (=> d!1499239 (=> res!1991279 e!2938511)))

(assert (=> d!1499239 (= res!1991279 e!2938512)))

(declare-fun res!1991277 () Bool)

(assert (=> d!1499239 (=> (not res!1991277) (not e!2938512))))

(declare-fun lt!1875970 () Bool)

(assert (=> d!1499239 (= res!1991277 (not lt!1875970))))

(declare-fun lt!1875968 () Bool)

(assert (=> d!1499239 (= lt!1875970 lt!1875968)))

(declare-fun lt!1875973 () Unit!128004)

(assert (=> d!1499239 (= lt!1875973 e!2938509)))

(assert (=> d!1499239 (= c!804886 lt!1875968)))

(assert (=> d!1499239 (= lt!1875968 (containsKey!3265 (toList!5805 lt!1875597) key!4653))))

(assert (=> d!1499239 (= (contains!15984 lt!1875597 key!4653) lt!1875970)))

(assert (= (and d!1499239 c!804886) b!4711357))

(assert (= (and d!1499239 (not c!804886)) b!4711358))

(assert (= (and b!4711358 c!804884) b!4711355))

(assert (= (and b!4711358 (not c!804884)) b!4711362))

(assert (= (or b!4711357 b!4711358) bm!329413))

(assert (= (and bm!329413 c!804885) b!4711360))

(assert (= (and bm!329413 (not c!804885)) b!4711356))

(assert (= (and d!1499239 res!1991277) b!4711359))

(assert (= (and d!1499239 (not res!1991279)) b!4711361))

(assert (= (and b!4711361 res!1991278) b!4711354))

(declare-fun m!5637341 () Bool)

(assert (=> b!4711357 m!5637341))

(declare-fun m!5637343 () Bool)

(assert (=> b!4711357 m!5637343))

(assert (=> b!4711357 m!5637343))

(declare-fun m!5637345 () Bool)

(assert (=> b!4711357 m!5637345))

(declare-fun m!5637347 () Bool)

(assert (=> b!4711357 m!5637347))

(assert (=> b!4711361 m!5637343))

(assert (=> b!4711361 m!5637343))

(assert (=> b!4711361 m!5637345))

(declare-fun m!5637349 () Bool)

(assert (=> bm!329413 m!5637349))

(declare-fun m!5637351 () Bool)

(assert (=> d!1499239 m!5637351))

(declare-fun m!5637353 () Bool)

(assert (=> b!4711354 m!5637353))

(assert (=> b!4711354 m!5637353))

(declare-fun m!5637355 () Bool)

(assert (=> b!4711354 m!5637355))

(declare-fun m!5637357 () Bool)

(assert (=> b!4711360 m!5637357))

(assert (=> b!4711359 m!5637353))

(assert (=> b!4711359 m!5637353))

(assert (=> b!4711359 m!5637355))

(assert (=> b!4711356 m!5637353))

(assert (=> b!4711355 m!5637351))

(declare-fun m!5637359 () Bool)

(assert (=> b!4711355 m!5637359))

(assert (=> b!4711101 d!1499239))

(declare-fun b!4711363 () Bool)

(declare-fun e!2938520 () Bool)

(assert (=> b!4711363 (= e!2938520 (contains!15988 (keys!18883 lt!1875595) key!4653))))

(declare-fun b!4711365 () Bool)

(declare-fun e!2938516 () List!52810)

(assert (=> b!4711365 (= e!2938516 (keys!18883 lt!1875595))))

(declare-fun b!4711366 () Bool)

(declare-fun e!2938515 () Unit!128004)

(declare-fun lt!1875975 () Unit!128004)

(assert (=> b!4711366 (= e!2938515 lt!1875975)))

(declare-fun lt!1875979 () Unit!128004)

(assert (=> b!4711366 (= lt!1875979 (lemmaContainsKeyImpliesGetValueByKeyDefined!1793 (toList!5805 lt!1875595) key!4653))))

(assert (=> b!4711366 (isDefined!9524 (getValueByKey!1901 (toList!5805 lt!1875595) key!4653))))

(declare-fun lt!1875977 () Unit!128004)

(assert (=> b!4711366 (= lt!1875977 lt!1875979)))

(assert (=> b!4711366 (= lt!1875975 (lemmaInListThenGetKeysListContains!911 (toList!5805 lt!1875595) key!4653))))

(declare-fun call!329419 () Bool)

(assert (=> b!4711366 call!329419))

(declare-fun b!4711367 () Bool)

(declare-fun e!2938519 () Unit!128004)

(assert (=> b!4711367 (= e!2938515 e!2938519)))

(declare-fun c!804887 () Bool)

(assert (=> b!4711367 (= c!804887 call!329419)))

(declare-fun bm!329414 () Bool)

(assert (=> bm!329414 (= call!329419 (contains!15988 e!2938516 key!4653))))

(declare-fun c!804888 () Bool)

(declare-fun c!804889 () Bool)

(assert (=> bm!329414 (= c!804888 c!804889)))

(declare-fun b!4711368 () Bool)

(declare-fun e!2938518 () Bool)

(assert (=> b!4711368 (= e!2938518 (not (contains!15988 (keys!18883 lt!1875595) key!4653)))))

(declare-fun b!4711369 () Bool)

(assert (=> b!4711369 (= e!2938516 (getKeysList!916 (toList!5805 lt!1875595)))))

(declare-fun b!4711370 () Bool)

(declare-fun e!2938517 () Bool)

(assert (=> b!4711370 (= e!2938517 e!2938520)))

(declare-fun res!1991281 () Bool)

(assert (=> b!4711370 (=> (not res!1991281) (not e!2938520))))

(assert (=> b!4711370 (= res!1991281 (isDefined!9524 (getValueByKey!1901 (toList!5805 lt!1875595) key!4653)))))

(declare-fun b!4711371 () Bool)

(declare-fun Unit!128069 () Unit!128004)

(assert (=> b!4711371 (= e!2938519 Unit!128069)))

(declare-fun b!4711364 () Bool)

(assert (=> b!4711364 false))

(declare-fun lt!1875980 () Unit!128004)

(declare-fun lt!1875974 () Unit!128004)

(assert (=> b!4711364 (= lt!1875980 lt!1875974)))

(assert (=> b!4711364 (containsKey!3265 (toList!5805 lt!1875595) key!4653)))

(assert (=> b!4711364 (= lt!1875974 (lemmaInGetKeysListThenContainsKey!915 (toList!5805 lt!1875595) key!4653))))

(declare-fun Unit!128070 () Unit!128004)

(assert (=> b!4711364 (= e!2938519 Unit!128070)))

(declare-fun d!1499241 () Bool)

(assert (=> d!1499241 e!2938517))

(declare-fun res!1991282 () Bool)

(assert (=> d!1499241 (=> res!1991282 e!2938517)))

(assert (=> d!1499241 (= res!1991282 e!2938518)))

(declare-fun res!1991280 () Bool)

(assert (=> d!1499241 (=> (not res!1991280) (not e!2938518))))

(declare-fun lt!1875978 () Bool)

(assert (=> d!1499241 (= res!1991280 (not lt!1875978))))

(declare-fun lt!1875976 () Bool)

(assert (=> d!1499241 (= lt!1875978 lt!1875976)))

(declare-fun lt!1875981 () Unit!128004)

(assert (=> d!1499241 (= lt!1875981 e!2938515)))

(assert (=> d!1499241 (= c!804889 lt!1875976)))

(assert (=> d!1499241 (= lt!1875976 (containsKey!3265 (toList!5805 lt!1875595) key!4653))))

(assert (=> d!1499241 (= (contains!15984 lt!1875595 key!4653) lt!1875978)))

(assert (= (and d!1499241 c!804889) b!4711366))

(assert (= (and d!1499241 (not c!804889)) b!4711367))

(assert (= (and b!4711367 c!804887) b!4711364))

(assert (= (and b!4711367 (not c!804887)) b!4711371))

(assert (= (or b!4711366 b!4711367) bm!329414))

(assert (= (and bm!329414 c!804888) b!4711369))

(assert (= (and bm!329414 (not c!804888)) b!4711365))

(assert (= (and d!1499241 res!1991280) b!4711368))

(assert (= (and d!1499241 (not res!1991282)) b!4711370))

(assert (= (and b!4711370 res!1991281) b!4711363))

(declare-fun m!5637361 () Bool)

(assert (=> b!4711366 m!5637361))

(declare-fun m!5637363 () Bool)

(assert (=> b!4711366 m!5637363))

(assert (=> b!4711366 m!5637363))

(declare-fun m!5637365 () Bool)

(assert (=> b!4711366 m!5637365))

(declare-fun m!5637367 () Bool)

(assert (=> b!4711366 m!5637367))

(assert (=> b!4711370 m!5637363))

(assert (=> b!4711370 m!5637363))

(assert (=> b!4711370 m!5637365))

(declare-fun m!5637369 () Bool)

(assert (=> bm!329414 m!5637369))

(declare-fun m!5637371 () Bool)

(assert (=> d!1499241 m!5637371))

(declare-fun m!5637373 () Bool)

(assert (=> b!4711363 m!5637373))

(assert (=> b!4711363 m!5637373))

(declare-fun m!5637375 () Bool)

(assert (=> b!4711363 m!5637375))

(declare-fun m!5637377 () Bool)

(assert (=> b!4711369 m!5637377))

(assert (=> b!4711368 m!5637373))

(assert (=> b!4711368 m!5637373))

(assert (=> b!4711368 m!5637375))

(assert (=> b!4711365 m!5637373))

(assert (=> b!4711364 m!5637371))

(declare-fun m!5637379 () Bool)

(assert (=> b!4711364 m!5637379))

(assert (=> b!4711101 d!1499241))

(declare-fun bs!1102285 () Bool)

(declare-fun d!1499243 () Bool)

(assert (= bs!1102285 (and d!1499243 start!478700)))

(declare-fun lambda!212866 () Int)

(assert (=> bs!1102285 (= lambda!212866 lambda!212759)))

(declare-fun bs!1102286 () Bool)

(assert (= bs!1102286 (and d!1499243 d!1499229)))

(assert (=> bs!1102286 (= lambda!212866 lambda!212863)))

(assert (=> d!1499243 (not (contains!15984 (extractMap!1984 (toList!5806 (ListLongMap!4336 lt!1875598))) key!4653))))

(declare-fun lt!1875984 () Unit!128004)

(declare-fun choose!33124 (ListLongMap!4335 K!14045 Hashable!6327) Unit!128004)

(assert (=> d!1499243 (= lt!1875984 (choose!33124 (ListLongMap!4336 lt!1875598) key!4653 hashF!1323))))

(assert (=> d!1499243 (forall!11491 (toList!5806 (ListLongMap!4336 lt!1875598)) lambda!212866)))

(assert (=> d!1499243 (= (lemmaNotInItsHashBucketThenNotInMap!412 (ListLongMap!4336 lt!1875598) key!4653 hashF!1323) lt!1875984)))

(declare-fun bs!1102287 () Bool)

(assert (= bs!1102287 d!1499243))

(declare-fun m!5637381 () Bool)

(assert (=> bs!1102287 m!5637381))

(assert (=> bs!1102287 m!5637381))

(declare-fun m!5637383 () Bool)

(assert (=> bs!1102287 m!5637383))

(declare-fun m!5637385 () Bool)

(assert (=> bs!1102287 m!5637385))

(declare-fun m!5637387 () Bool)

(assert (=> bs!1102287 m!5637387))

(assert (=> b!4711101 d!1499243))

(declare-fun b!4711372 () Bool)

(declare-fun e!2938526 () Bool)

(assert (=> b!4711372 (= e!2938526 (contains!15988 (keys!18883 lt!1875602) key!4653))))

(declare-fun b!4711374 () Bool)

(declare-fun e!2938522 () List!52810)

(assert (=> b!4711374 (= e!2938522 (keys!18883 lt!1875602))))

(declare-fun b!4711375 () Bool)

(declare-fun e!2938521 () Unit!128004)

(declare-fun lt!1875986 () Unit!128004)

(assert (=> b!4711375 (= e!2938521 lt!1875986)))

(declare-fun lt!1875990 () Unit!128004)

(assert (=> b!4711375 (= lt!1875990 (lemmaContainsKeyImpliesGetValueByKeyDefined!1793 (toList!5805 lt!1875602) key!4653))))

(assert (=> b!4711375 (isDefined!9524 (getValueByKey!1901 (toList!5805 lt!1875602) key!4653))))

(declare-fun lt!1875988 () Unit!128004)

(assert (=> b!4711375 (= lt!1875988 lt!1875990)))

(assert (=> b!4711375 (= lt!1875986 (lemmaInListThenGetKeysListContains!911 (toList!5805 lt!1875602) key!4653))))

(declare-fun call!329420 () Bool)

(assert (=> b!4711375 call!329420))

(declare-fun b!4711376 () Bool)

(declare-fun e!2938525 () Unit!128004)

(assert (=> b!4711376 (= e!2938521 e!2938525)))

(declare-fun c!804890 () Bool)

(assert (=> b!4711376 (= c!804890 call!329420)))

(declare-fun bm!329415 () Bool)

(assert (=> bm!329415 (= call!329420 (contains!15988 e!2938522 key!4653))))

(declare-fun c!804891 () Bool)

(declare-fun c!804892 () Bool)

(assert (=> bm!329415 (= c!804891 c!804892)))

(declare-fun b!4711377 () Bool)

(declare-fun e!2938524 () Bool)

(assert (=> b!4711377 (= e!2938524 (not (contains!15988 (keys!18883 lt!1875602) key!4653)))))

(declare-fun b!4711378 () Bool)

(assert (=> b!4711378 (= e!2938522 (getKeysList!916 (toList!5805 lt!1875602)))))

(declare-fun b!4711379 () Bool)

(declare-fun e!2938523 () Bool)

(assert (=> b!4711379 (= e!2938523 e!2938526)))

(declare-fun res!1991284 () Bool)

(assert (=> b!4711379 (=> (not res!1991284) (not e!2938526))))

(assert (=> b!4711379 (= res!1991284 (isDefined!9524 (getValueByKey!1901 (toList!5805 lt!1875602) key!4653)))))

(declare-fun b!4711380 () Bool)

(declare-fun Unit!128071 () Unit!128004)

(assert (=> b!4711380 (= e!2938525 Unit!128071)))

(declare-fun b!4711373 () Bool)

(assert (=> b!4711373 false))

(declare-fun lt!1875991 () Unit!128004)

(declare-fun lt!1875985 () Unit!128004)

(assert (=> b!4711373 (= lt!1875991 lt!1875985)))

(assert (=> b!4711373 (containsKey!3265 (toList!5805 lt!1875602) key!4653)))

(assert (=> b!4711373 (= lt!1875985 (lemmaInGetKeysListThenContainsKey!915 (toList!5805 lt!1875602) key!4653))))

(declare-fun Unit!128072 () Unit!128004)

(assert (=> b!4711373 (= e!2938525 Unit!128072)))

(declare-fun d!1499245 () Bool)

(assert (=> d!1499245 e!2938523))

(declare-fun res!1991285 () Bool)

(assert (=> d!1499245 (=> res!1991285 e!2938523)))

(assert (=> d!1499245 (= res!1991285 e!2938524)))

(declare-fun res!1991283 () Bool)

(assert (=> d!1499245 (=> (not res!1991283) (not e!2938524))))

(declare-fun lt!1875989 () Bool)

(assert (=> d!1499245 (= res!1991283 (not lt!1875989))))

(declare-fun lt!1875987 () Bool)

(assert (=> d!1499245 (= lt!1875989 lt!1875987)))

(declare-fun lt!1875992 () Unit!128004)

(assert (=> d!1499245 (= lt!1875992 e!2938521)))

(assert (=> d!1499245 (= c!804892 lt!1875987)))

(assert (=> d!1499245 (= lt!1875987 (containsKey!3265 (toList!5805 lt!1875602) key!4653))))

(assert (=> d!1499245 (= (contains!15984 lt!1875602 key!4653) lt!1875989)))

(assert (= (and d!1499245 c!804892) b!4711375))

(assert (= (and d!1499245 (not c!804892)) b!4711376))

(assert (= (and b!4711376 c!804890) b!4711373))

(assert (= (and b!4711376 (not c!804890)) b!4711380))

(assert (= (or b!4711375 b!4711376) bm!329415))

(assert (= (and bm!329415 c!804891) b!4711378))

(assert (= (and bm!329415 (not c!804891)) b!4711374))

(assert (= (and d!1499245 res!1991283) b!4711377))

(assert (= (and d!1499245 (not res!1991285)) b!4711379))

(assert (= (and b!4711379 res!1991284) b!4711372))

(declare-fun m!5637389 () Bool)

(assert (=> b!4711375 m!5637389))

(declare-fun m!5637391 () Bool)

(assert (=> b!4711375 m!5637391))

(assert (=> b!4711375 m!5637391))

(declare-fun m!5637393 () Bool)

(assert (=> b!4711375 m!5637393))

(declare-fun m!5637395 () Bool)

(assert (=> b!4711375 m!5637395))

(assert (=> b!4711379 m!5637391))

(assert (=> b!4711379 m!5637391))

(assert (=> b!4711379 m!5637393))

(declare-fun m!5637397 () Bool)

(assert (=> bm!329415 m!5637397))

(declare-fun m!5637399 () Bool)

(assert (=> d!1499245 m!5637399))

(declare-fun m!5637401 () Bool)

(assert (=> b!4711372 m!5637401))

(assert (=> b!4711372 m!5637401))

(declare-fun m!5637403 () Bool)

(assert (=> b!4711372 m!5637403))

(declare-fun m!5637405 () Bool)

(assert (=> b!4711378 m!5637405))

(assert (=> b!4711377 m!5637401))

(assert (=> b!4711377 m!5637401))

(assert (=> b!4711377 m!5637403))

(assert (=> b!4711374 m!5637401))

(assert (=> b!4711373 m!5637399))

(declare-fun m!5637407 () Bool)

(assert (=> b!4711373 m!5637407))

(assert (=> b!4711111 d!1499245))

(declare-fun bs!1102288 () Bool)

(declare-fun d!1499247 () Bool)

(assert (= bs!1102288 (and d!1499247 start!478700)))

(declare-fun lambda!212867 () Int)

(assert (=> bs!1102288 (= lambda!212867 lambda!212759)))

(declare-fun bs!1102289 () Bool)

(assert (= bs!1102289 (and d!1499247 d!1499229)))

(assert (=> bs!1102289 (= lambda!212867 lambda!212863)))

(declare-fun bs!1102290 () Bool)

(assert (= bs!1102290 (and d!1499247 d!1499243)))

(assert (=> bs!1102290 (= lambda!212867 lambda!212866)))

(declare-fun lt!1875993 () ListMap!5169)

(assert (=> d!1499247 (invariantList!1476 (toList!5805 lt!1875993))))

(declare-fun e!2938527 () ListMap!5169)

(assert (=> d!1499247 (= lt!1875993 e!2938527)))

(declare-fun c!804893 () Bool)

(assert (=> d!1499247 (= c!804893 ((_ is Cons!52684) (toList!5806 lm!2023)))))

(assert (=> d!1499247 (forall!11491 (toList!5806 lm!2023) lambda!212867)))

(assert (=> d!1499247 (= (extractMap!1984 (toList!5806 lm!2023)) lt!1875993)))

(declare-fun b!4711381 () Bool)

(assert (=> b!4711381 (= e!2938527 (addToMapMapFromBucket!1388 (_2!30408 (h!58995 (toList!5806 lm!2023))) (extractMap!1984 (t!360048 (toList!5806 lm!2023)))))))

(declare-fun b!4711382 () Bool)

(assert (=> b!4711382 (= e!2938527 (ListMap!5170 Nil!52683))))

(assert (= (and d!1499247 c!804893) b!4711381))

(assert (= (and d!1499247 (not c!804893)) b!4711382))

(declare-fun m!5637409 () Bool)

(assert (=> d!1499247 m!5637409))

(declare-fun m!5637411 () Bool)

(assert (=> d!1499247 m!5637411))

(assert (=> b!4711381 m!5636753))

(assert (=> b!4711381 m!5636753))

(declare-fun m!5637413 () Bool)

(assert (=> b!4711381 m!5637413))

(assert (=> b!4711111 d!1499247))

(declare-fun bs!1102291 () Bool)

(declare-fun b!4711386 () Bool)

(assert (= bs!1102291 (and b!4711386 b!4711274)))

(declare-fun lambda!212868 () Int)

(assert (=> bs!1102291 (= lambda!212868 lambda!212844)))

(declare-fun bs!1102292 () Bool)

(assert (= bs!1102292 (and b!4711386 b!4711309)))

(assert (=> bs!1102292 (= lambda!212868 lambda!212856)))

(declare-fun bs!1102293 () Bool)

(assert (= bs!1102293 (and b!4711386 b!4711306)))

(assert (=> bs!1102293 (= lambda!212868 lambda!212857)))

(declare-fun bs!1102294 () Bool)

(assert (= bs!1102294 (and b!4711386 b!4711271)))

(assert (=> bs!1102294 (= (= lt!1875592 lt!1875842) (= lambda!212868 lambda!212846))))

(declare-fun bs!1102295 () Bool)

(assert (= bs!1102295 (and b!4711386 d!1499147)))

(assert (=> bs!1102295 (= (= lt!1875592 lt!1875836) (= lambda!212868 lambda!212847))))

(assert (=> bs!1102294 (= lambda!212868 lambda!212845)))

(assert (=> bs!1102293 (= (= lt!1875592 lt!1875935) (= lambda!212868 lambda!212858))))

(declare-fun bs!1102296 () Bool)

(assert (= bs!1102296 (and b!4711386 d!1499219)))

(assert (=> bs!1102296 (= (= lt!1875592 lt!1875929) (= lambda!212868 lambda!212859))))

(assert (=> b!4711386 true))

(declare-fun bs!1102297 () Bool)

(declare-fun b!4711383 () Bool)

(assert (= bs!1102297 (and b!4711383 b!4711274)))

(declare-fun lambda!212869 () Int)

(assert (=> bs!1102297 (= lambda!212869 lambda!212844)))

(declare-fun bs!1102298 () Bool)

(assert (= bs!1102298 (and b!4711383 b!4711309)))

(assert (=> bs!1102298 (= lambda!212869 lambda!212856)))

(declare-fun bs!1102299 () Bool)

(assert (= bs!1102299 (and b!4711383 b!4711306)))

(assert (=> bs!1102299 (= lambda!212869 lambda!212857)))

(declare-fun bs!1102300 () Bool)

(assert (= bs!1102300 (and b!4711383 b!4711271)))

(assert (=> bs!1102300 (= (= lt!1875592 lt!1875842) (= lambda!212869 lambda!212846))))

(declare-fun bs!1102301 () Bool)

(assert (= bs!1102301 (and b!4711383 b!4711386)))

(assert (=> bs!1102301 (= lambda!212869 lambda!212868)))

(declare-fun bs!1102302 () Bool)

(assert (= bs!1102302 (and b!4711383 d!1499147)))

(assert (=> bs!1102302 (= (= lt!1875592 lt!1875836) (= lambda!212869 lambda!212847))))

(assert (=> bs!1102300 (= lambda!212869 lambda!212845)))

(assert (=> bs!1102299 (= (= lt!1875592 lt!1875935) (= lambda!212869 lambda!212858))))

(declare-fun bs!1102303 () Bool)

(assert (= bs!1102303 (and b!4711383 d!1499219)))

(assert (=> bs!1102303 (= (= lt!1875592 lt!1875929) (= lambda!212869 lambda!212859))))

(assert (=> b!4711383 true))

(declare-fun lt!1876006 () ListMap!5169)

(declare-fun lambda!212870 () Int)

(assert (=> bs!1102297 (= (= lt!1876006 lt!1875592) (= lambda!212870 lambda!212844))))

(assert (=> bs!1102298 (= (= lt!1876006 lt!1875592) (= lambda!212870 lambda!212856))))

(assert (=> bs!1102299 (= (= lt!1876006 lt!1875592) (= lambda!212870 lambda!212857))))

(assert (=> b!4711383 (= (= lt!1876006 lt!1875592) (= lambda!212870 lambda!212869))))

(assert (=> bs!1102300 (= (= lt!1876006 lt!1875842) (= lambda!212870 lambda!212846))))

(assert (=> bs!1102301 (= (= lt!1876006 lt!1875592) (= lambda!212870 lambda!212868))))

(assert (=> bs!1102302 (= (= lt!1876006 lt!1875836) (= lambda!212870 lambda!212847))))

(assert (=> bs!1102300 (= (= lt!1876006 lt!1875592) (= lambda!212870 lambda!212845))))

(assert (=> bs!1102299 (= (= lt!1876006 lt!1875935) (= lambda!212870 lambda!212858))))

(assert (=> bs!1102303 (= (= lt!1876006 lt!1875929) (= lambda!212870 lambda!212859))))

(assert (=> b!4711383 true))

(declare-fun bs!1102304 () Bool)

(declare-fun d!1499249 () Bool)

(assert (= bs!1102304 (and d!1499249 b!4711274)))

(declare-fun lt!1876000 () ListMap!5169)

(declare-fun lambda!212871 () Int)

(assert (=> bs!1102304 (= (= lt!1876000 lt!1875592) (= lambda!212871 lambda!212844))))

(declare-fun bs!1102305 () Bool)

(assert (= bs!1102305 (and d!1499249 b!4711309)))

(assert (=> bs!1102305 (= (= lt!1876000 lt!1875592) (= lambda!212871 lambda!212856))))

(declare-fun bs!1102306 () Bool)

(assert (= bs!1102306 (and d!1499249 b!4711306)))

(assert (=> bs!1102306 (= (= lt!1876000 lt!1875592) (= lambda!212871 lambda!212857))))

(declare-fun bs!1102307 () Bool)

(assert (= bs!1102307 (and d!1499249 b!4711383)))

(assert (=> bs!1102307 (= (= lt!1876000 lt!1875592) (= lambda!212871 lambda!212869))))

(declare-fun bs!1102308 () Bool)

(assert (= bs!1102308 (and d!1499249 b!4711271)))

(assert (=> bs!1102308 (= (= lt!1876000 lt!1875842) (= lambda!212871 lambda!212846))))

(declare-fun bs!1102309 () Bool)

(assert (= bs!1102309 (and d!1499249 b!4711386)))

(assert (=> bs!1102309 (= (= lt!1876000 lt!1875592) (= lambda!212871 lambda!212868))))

(declare-fun bs!1102310 () Bool)

(assert (= bs!1102310 (and d!1499249 d!1499147)))

(assert (=> bs!1102310 (= (= lt!1876000 lt!1875836) (= lambda!212871 lambda!212847))))

(assert (=> bs!1102307 (= (= lt!1876000 lt!1876006) (= lambda!212871 lambda!212870))))

(assert (=> bs!1102308 (= (= lt!1876000 lt!1875592) (= lambda!212871 lambda!212845))))

(assert (=> bs!1102306 (= (= lt!1876000 lt!1875935) (= lambda!212871 lambda!212858))))

(declare-fun bs!1102311 () Bool)

(assert (= bs!1102311 (and d!1499249 d!1499219)))

(assert (=> bs!1102311 (= (= lt!1876000 lt!1875929) (= lambda!212871 lambda!212859))))

(assert (=> d!1499249 true))

(declare-fun e!2938530 () ListMap!5169)

(assert (=> b!4711383 (= e!2938530 lt!1876006)))

(declare-fun lt!1876012 () ListMap!5169)

(assert (=> b!4711383 (= lt!1876012 (+!2222 lt!1875592 (h!58994 (_2!30408 (h!58995 (toList!5806 lm!2023))))))))

(assert (=> b!4711383 (= lt!1876006 (addToMapMapFromBucket!1388 (t!360047 (_2!30408 (h!58995 (toList!5806 lm!2023)))) (+!2222 lt!1875592 (h!58994 (_2!30408 (h!58995 (toList!5806 lm!2023)))))))))

(declare-fun lt!1876011 () Unit!128004)

(declare-fun call!329422 () Unit!128004)

(assert (=> b!4711383 (= lt!1876011 call!329422)))

(declare-fun call!329421 () Bool)

(assert (=> b!4711383 call!329421))

(declare-fun lt!1876005 () Unit!128004)

(assert (=> b!4711383 (= lt!1876005 lt!1876011)))

(assert (=> b!4711383 (forall!11493 (toList!5805 lt!1876012) lambda!212870)))

(declare-fun lt!1875996 () Unit!128004)

(declare-fun Unit!128084 () Unit!128004)

(assert (=> b!4711383 (= lt!1875996 Unit!128084)))

(assert (=> b!4711383 (forall!11493 (t!360047 (_2!30408 (h!58995 (toList!5806 lm!2023)))) lambda!212870)))

(declare-fun lt!1876014 () Unit!128004)

(declare-fun Unit!128085 () Unit!128004)

(assert (=> b!4711383 (= lt!1876014 Unit!128085)))

(declare-fun lt!1876010 () Unit!128004)

(declare-fun Unit!128086 () Unit!128004)

(assert (=> b!4711383 (= lt!1876010 Unit!128086)))

(declare-fun lt!1876007 () Unit!128004)

(assert (=> b!4711383 (= lt!1876007 (forallContained!3564 (toList!5805 lt!1876012) lambda!212870 (h!58994 (_2!30408 (h!58995 (toList!5806 lm!2023))))))))

(assert (=> b!4711383 (contains!15984 lt!1876012 (_1!30407 (h!58994 (_2!30408 (h!58995 (toList!5806 lm!2023))))))))

(declare-fun lt!1876013 () Unit!128004)

(declare-fun Unit!128087 () Unit!128004)

(assert (=> b!4711383 (= lt!1876013 Unit!128087)))

(assert (=> b!4711383 (contains!15984 lt!1876006 (_1!30407 (h!58994 (_2!30408 (h!58995 (toList!5806 lm!2023))))))))

(declare-fun lt!1875994 () Unit!128004)

(declare-fun Unit!128088 () Unit!128004)

(assert (=> b!4711383 (= lt!1875994 Unit!128088)))

(assert (=> b!4711383 (forall!11493 (_2!30408 (h!58995 (toList!5806 lm!2023))) lambda!212870)))

(declare-fun lt!1876004 () Unit!128004)

(declare-fun Unit!128089 () Unit!128004)

(assert (=> b!4711383 (= lt!1876004 Unit!128089)))

(assert (=> b!4711383 (forall!11493 (toList!5805 lt!1876012) lambda!212870)))

(declare-fun lt!1875997 () Unit!128004)

(declare-fun Unit!128090 () Unit!128004)

(assert (=> b!4711383 (= lt!1875997 Unit!128090)))

(declare-fun lt!1876008 () Unit!128004)

(declare-fun Unit!128091 () Unit!128004)

(assert (=> b!4711383 (= lt!1876008 Unit!128091)))

(declare-fun lt!1876002 () Unit!128004)

(assert (=> b!4711383 (= lt!1876002 (addForallContainsKeyThenBeforeAdding!763 lt!1875592 lt!1876006 (_1!30407 (h!58994 (_2!30408 (h!58995 (toList!5806 lm!2023))))) (_2!30407 (h!58994 (_2!30408 (h!58995 (toList!5806 lm!2023)))))))))

(assert (=> b!4711383 (forall!11493 (toList!5805 lt!1875592) lambda!212870)))

(declare-fun lt!1875999 () Unit!128004)

(assert (=> b!4711383 (= lt!1875999 lt!1876002)))

(assert (=> b!4711383 (forall!11493 (toList!5805 lt!1875592) lambda!212870)))

(declare-fun lt!1876003 () Unit!128004)

(declare-fun Unit!128092 () Unit!128004)

(assert (=> b!4711383 (= lt!1876003 Unit!128092)))

(declare-fun res!1991286 () Bool)

(assert (=> b!4711383 (= res!1991286 (forall!11493 (_2!30408 (h!58995 (toList!5806 lm!2023))) lambda!212870))))

(declare-fun e!2938529 () Bool)

(assert (=> b!4711383 (=> (not res!1991286) (not e!2938529))))

(assert (=> b!4711383 e!2938529))

(declare-fun lt!1876009 () Unit!128004)

(declare-fun Unit!128093 () Unit!128004)

(assert (=> b!4711383 (= lt!1876009 Unit!128093)))

(declare-fun e!2938528 () Bool)

(assert (=> d!1499249 e!2938528))

(declare-fun res!1991288 () Bool)

(assert (=> d!1499249 (=> (not res!1991288) (not e!2938528))))

(assert (=> d!1499249 (= res!1991288 (forall!11493 (_2!30408 (h!58995 (toList!5806 lm!2023))) lambda!212871))))

(assert (=> d!1499249 (= lt!1876000 e!2938530)))

(declare-fun c!804894 () Bool)

(assert (=> d!1499249 (= c!804894 ((_ is Nil!52683) (_2!30408 (h!58995 (toList!5806 lm!2023)))))))

(assert (=> d!1499249 (noDuplicateKeys!1958 (_2!30408 (h!58995 (toList!5806 lm!2023))))))

(assert (=> d!1499249 (= (addToMapMapFromBucket!1388 (_2!30408 (h!58995 (toList!5806 lm!2023))) lt!1875592) lt!1876000)))

(declare-fun bm!329416 () Bool)

(assert (=> bm!329416 (= call!329422 (lemmaContainsAllItsOwnKeys!764 lt!1875592))))

(declare-fun bm!329417 () Bool)

(declare-fun call!329423 () Bool)

(assert (=> bm!329417 (= call!329423 (forall!11493 (toList!5805 lt!1875592) (ite c!804894 lambda!212868 lambda!212870)))))

(declare-fun b!4711384 () Bool)

(declare-fun res!1991287 () Bool)

(assert (=> b!4711384 (=> (not res!1991287) (not e!2938528))))

(assert (=> b!4711384 (= res!1991287 (forall!11493 (toList!5805 lt!1875592) lambda!212871))))

(declare-fun b!4711385 () Bool)

(assert (=> b!4711385 (= e!2938528 (invariantList!1476 (toList!5805 lt!1876000)))))

(assert (=> b!4711386 (= e!2938530 lt!1875592)))

(declare-fun lt!1875998 () Unit!128004)

(assert (=> b!4711386 (= lt!1875998 call!329422)))

(assert (=> b!4711386 call!329421))

(declare-fun lt!1876001 () Unit!128004)

(assert (=> b!4711386 (= lt!1876001 lt!1875998)))

(assert (=> b!4711386 call!329423))

(declare-fun lt!1875995 () Unit!128004)

(declare-fun Unit!128094 () Unit!128004)

(assert (=> b!4711386 (= lt!1875995 Unit!128094)))

(declare-fun bm!329418 () Bool)

(assert (=> bm!329418 (= call!329421 (forall!11493 (toList!5805 lt!1875592) (ite c!804894 lambda!212868 lambda!212869)))))

(declare-fun b!4711387 () Bool)

(assert (=> b!4711387 (= e!2938529 call!329423)))

(assert (= (and d!1499249 c!804894) b!4711386))

(assert (= (and d!1499249 (not c!804894)) b!4711383))

(assert (= (and b!4711383 res!1991286) b!4711387))

(assert (= (or b!4711386 b!4711383) bm!329416))

(assert (= (or b!4711386 b!4711387) bm!329417))

(assert (= (or b!4711386 b!4711383) bm!329418))

(assert (= (and d!1499249 res!1991288) b!4711384))

(assert (= (and b!4711384 res!1991287) b!4711385))

(declare-fun m!5637415 () Bool)

(assert (=> b!4711384 m!5637415))

(declare-fun m!5637417 () Bool)

(assert (=> bm!329417 m!5637417))

(assert (=> bm!329416 m!5637111))

(declare-fun m!5637419 () Bool)

(assert (=> bm!329418 m!5637419))

(declare-fun m!5637421 () Bool)

(assert (=> d!1499249 m!5637421))

(declare-fun m!5637423 () Bool)

(assert (=> d!1499249 m!5637423))

(declare-fun m!5637425 () Bool)

(assert (=> b!4711385 m!5637425))

(declare-fun m!5637427 () Bool)

(assert (=> b!4711383 m!5637427))

(declare-fun m!5637429 () Bool)

(assert (=> b!4711383 m!5637429))

(assert (=> b!4711383 m!5637429))

(declare-fun m!5637431 () Bool)

(assert (=> b!4711383 m!5637431))

(declare-fun m!5637433 () Bool)

(assert (=> b!4711383 m!5637433))

(assert (=> b!4711383 m!5637433))

(declare-fun m!5637435 () Bool)

(assert (=> b!4711383 m!5637435))

(declare-fun m!5637437 () Bool)

(assert (=> b!4711383 m!5637437))

(declare-fun m!5637439 () Bool)

(assert (=> b!4711383 m!5637439))

(assert (=> b!4711383 m!5637435))

(declare-fun m!5637441 () Bool)

(assert (=> b!4711383 m!5637441))

(assert (=> b!4711383 m!5637427))

(declare-fun m!5637443 () Bool)

(assert (=> b!4711383 m!5637443))

(declare-fun m!5637445 () Bool)

(assert (=> b!4711383 m!5637445))

(assert (=> b!4711110 d!1499249))

(declare-fun bs!1102312 () Bool)

(declare-fun d!1499251 () Bool)

(assert (= bs!1102312 (and d!1499251 start!478700)))

(declare-fun lambda!212872 () Int)

(assert (=> bs!1102312 (= lambda!212872 lambda!212759)))

(declare-fun bs!1102313 () Bool)

(assert (= bs!1102313 (and d!1499251 d!1499229)))

(assert (=> bs!1102313 (= lambda!212872 lambda!212863)))

(declare-fun bs!1102314 () Bool)

(assert (= bs!1102314 (and d!1499251 d!1499243)))

(assert (=> bs!1102314 (= lambda!212872 lambda!212866)))

(declare-fun bs!1102315 () Bool)

(assert (= bs!1102315 (and d!1499251 d!1499247)))

(assert (=> bs!1102315 (= lambda!212872 lambda!212867)))

(declare-fun lt!1876015 () ListMap!5169)

(assert (=> d!1499251 (invariantList!1476 (toList!5805 lt!1876015))))

(declare-fun e!2938531 () ListMap!5169)

(assert (=> d!1499251 (= lt!1876015 e!2938531)))

(declare-fun c!804895 () Bool)

(assert (=> d!1499251 (= c!804895 ((_ is Cons!52684) (t!360048 (toList!5806 lm!2023))))))

(assert (=> d!1499251 (forall!11491 (t!360048 (toList!5806 lm!2023)) lambda!212872)))

(assert (=> d!1499251 (= (extractMap!1984 (t!360048 (toList!5806 lm!2023))) lt!1876015)))

(declare-fun b!4711388 () Bool)

(assert (=> b!4711388 (= e!2938531 (addToMapMapFromBucket!1388 (_2!30408 (h!58995 (t!360048 (toList!5806 lm!2023)))) (extractMap!1984 (t!360048 (t!360048 (toList!5806 lm!2023))))))))

(declare-fun b!4711389 () Bool)

(assert (=> b!4711389 (= e!2938531 (ListMap!5170 Nil!52683))))

(assert (= (and d!1499251 c!804895) b!4711388))

(assert (= (and d!1499251 (not c!804895)) b!4711389))

(declare-fun m!5637447 () Bool)

(assert (=> d!1499251 m!5637447))

(declare-fun m!5637449 () Bool)

(assert (=> d!1499251 m!5637449))

(declare-fun m!5637451 () Bool)

(assert (=> b!4711388 m!5637451))

(assert (=> b!4711388 m!5637451))

(declare-fun m!5637453 () Bool)

(assert (=> b!4711388 m!5637453))

(assert (=> b!4711110 d!1499251))

(declare-fun d!1499253 () Bool)

(declare-fun tail!8864 (List!52808) List!52808)

(assert (=> d!1499253 (= (tail!8862 lm!2023) (ListLongMap!4336 (tail!8864 (toList!5806 lm!2023))))))

(declare-fun bs!1102316 () Bool)

(assert (= bs!1102316 d!1499253))

(declare-fun m!5637455 () Bool)

(assert (=> bs!1102316 m!5637455))

(assert (=> b!4711110 d!1499253))

(declare-fun d!1499255 () Bool)

(assert (=> d!1499255 (= (tail!8861 oldBucket!34) (t!360047 oldBucket!34))))

(assert (=> b!4711099 d!1499255))

(declare-fun d!1499257 () Bool)

(declare-fun hash!4286 (Hashable!6327 K!14045) (_ BitVec 64))

(assert (=> d!1499257 (= (hash!4284 hashF!1323 key!4653) (hash!4286 hashF!1323 key!4653))))

(declare-fun bs!1102317 () Bool)

(assert (= bs!1102317 d!1499257))

(declare-fun m!5637457 () Bool)

(assert (=> bs!1102317 m!5637457))

(assert (=> b!4711098 d!1499257))

(declare-fun bs!1102318 () Bool)

(declare-fun d!1499259 () Bool)

(assert (= bs!1102318 (and d!1499259 d!1499247)))

(declare-fun lambda!212873 () Int)

(assert (=> bs!1102318 (= lambda!212873 lambda!212867)))

(declare-fun bs!1102319 () Bool)

(assert (= bs!1102319 (and d!1499259 d!1499243)))

(assert (=> bs!1102319 (= lambda!212873 lambda!212866)))

(declare-fun bs!1102320 () Bool)

(assert (= bs!1102320 (and d!1499259 start!478700)))

(assert (=> bs!1102320 (= lambda!212873 lambda!212759)))

(declare-fun bs!1102321 () Bool)

(assert (= bs!1102321 (and d!1499259 d!1499229)))

(assert (=> bs!1102321 (= lambda!212873 lambda!212863)))

(declare-fun bs!1102322 () Bool)

(assert (= bs!1102322 (and d!1499259 d!1499251)))

(assert (=> bs!1102322 (= lambda!212873 lambda!212872)))

(declare-fun lt!1876016 () ListMap!5169)

(assert (=> d!1499259 (invariantList!1476 (toList!5805 lt!1876016))))

(declare-fun e!2938532 () ListMap!5169)

(assert (=> d!1499259 (= lt!1876016 e!2938532)))

(declare-fun c!804896 () Bool)

(assert (=> d!1499259 (= c!804896 ((_ is Cons!52684) (Cons!52684 (tuple2!54229 hash!405 newBucket!218) (t!360048 (toList!5806 lm!2023)))))))

(assert (=> d!1499259 (forall!11491 (Cons!52684 (tuple2!54229 hash!405 newBucket!218) (t!360048 (toList!5806 lm!2023))) lambda!212873)))

(assert (=> d!1499259 (= (extractMap!1984 (Cons!52684 (tuple2!54229 hash!405 newBucket!218) (t!360048 (toList!5806 lm!2023)))) lt!1876016)))

(declare-fun b!4711390 () Bool)

(assert (=> b!4711390 (= e!2938532 (addToMapMapFromBucket!1388 (_2!30408 (h!58995 (Cons!52684 (tuple2!54229 hash!405 newBucket!218) (t!360048 (toList!5806 lm!2023))))) (extractMap!1984 (t!360048 (Cons!52684 (tuple2!54229 hash!405 newBucket!218) (t!360048 (toList!5806 lm!2023)))))))))

(declare-fun b!4711391 () Bool)

(assert (=> b!4711391 (= e!2938532 (ListMap!5170 Nil!52683))))

(assert (= (and d!1499259 c!804896) b!4711390))

(assert (= (and d!1499259 (not c!804896)) b!4711391))

(declare-fun m!5637459 () Bool)

(assert (=> d!1499259 m!5637459))

(declare-fun m!5637461 () Bool)

(assert (=> d!1499259 m!5637461))

(declare-fun m!5637463 () Bool)

(assert (=> b!4711390 m!5637463))

(assert (=> b!4711390 m!5637463))

(declare-fun m!5637465 () Bool)

(assert (=> b!4711390 m!5637465))

(assert (=> b!4711108 d!1499259))

(declare-fun bs!1102323 () Bool)

(declare-fun d!1499261 () Bool)

(assert (= bs!1102323 (and d!1499261 d!1499247)))

(declare-fun lambda!212874 () Int)

(assert (=> bs!1102323 (= lambda!212874 lambda!212867)))

(declare-fun bs!1102324 () Bool)

(assert (= bs!1102324 (and d!1499261 d!1499243)))

(assert (=> bs!1102324 (= lambda!212874 lambda!212866)))

(declare-fun bs!1102325 () Bool)

(assert (= bs!1102325 (and d!1499261 d!1499259)))

(assert (=> bs!1102325 (= lambda!212874 lambda!212873)))

(declare-fun bs!1102326 () Bool)

(assert (= bs!1102326 (and d!1499261 start!478700)))

(assert (=> bs!1102326 (= lambda!212874 lambda!212759)))

(declare-fun bs!1102327 () Bool)

(assert (= bs!1102327 (and d!1499261 d!1499229)))

(assert (=> bs!1102327 (= lambda!212874 lambda!212863)))

(declare-fun bs!1102328 () Bool)

(assert (= bs!1102328 (and d!1499261 d!1499251)))

(assert (=> bs!1102328 (= lambda!212874 lambda!212872)))

(declare-fun lt!1876017 () ListMap!5169)

(assert (=> d!1499261 (invariantList!1476 (toList!5805 lt!1876017))))

(declare-fun e!2938533 () ListMap!5169)

(assert (=> d!1499261 (= lt!1876017 e!2938533)))

(declare-fun c!804897 () Bool)

(assert (=> d!1499261 (= c!804897 ((_ is Cons!52684) lt!1875598))))

(assert (=> d!1499261 (forall!11491 lt!1875598 lambda!212874)))

(assert (=> d!1499261 (= (extractMap!1984 lt!1875598) lt!1876017)))

(declare-fun b!4711392 () Bool)

(assert (=> b!4711392 (= e!2938533 (addToMapMapFromBucket!1388 (_2!30408 (h!58995 lt!1875598)) (extractMap!1984 (t!360048 lt!1875598))))))

(declare-fun b!4711393 () Bool)

(assert (=> b!4711393 (= e!2938533 (ListMap!5170 Nil!52683))))

(assert (= (and d!1499261 c!804897) b!4711392))

(assert (= (and d!1499261 (not c!804897)) b!4711393))

(declare-fun m!5637467 () Bool)

(assert (=> d!1499261 m!5637467))

(declare-fun m!5637469 () Bool)

(assert (=> d!1499261 m!5637469))

(declare-fun m!5637471 () Bool)

(assert (=> b!4711392 m!5637471))

(assert (=> b!4711392 m!5637471))

(declare-fun m!5637473 () Bool)

(assert (=> b!4711392 m!5637473))

(assert (=> b!4711108 d!1499261))

(declare-fun bs!1102329 () Bool)

(declare-fun d!1499263 () Bool)

(assert (= bs!1102329 (and d!1499263 b!4711274)))

(declare-fun lambda!212877 () Int)

(assert (=> bs!1102329 (not (= lambda!212877 lambda!212844))))

(declare-fun bs!1102330 () Bool)

(assert (= bs!1102330 (and d!1499263 b!4711309)))

(assert (=> bs!1102330 (not (= lambda!212877 lambda!212856))))

(declare-fun bs!1102331 () Bool)

(assert (= bs!1102331 (and d!1499263 d!1499249)))

(assert (=> bs!1102331 (not (= lambda!212877 lambda!212871))))

(declare-fun bs!1102332 () Bool)

(assert (= bs!1102332 (and d!1499263 b!4711306)))

(assert (=> bs!1102332 (not (= lambda!212877 lambda!212857))))

(declare-fun bs!1102333 () Bool)

(assert (= bs!1102333 (and d!1499263 b!4711383)))

(assert (=> bs!1102333 (not (= lambda!212877 lambda!212869))))

(declare-fun bs!1102334 () Bool)

(assert (= bs!1102334 (and d!1499263 b!4711271)))

(assert (=> bs!1102334 (not (= lambda!212877 lambda!212846))))

(declare-fun bs!1102335 () Bool)

(assert (= bs!1102335 (and d!1499263 b!4711386)))

(assert (=> bs!1102335 (not (= lambda!212877 lambda!212868))))

(declare-fun bs!1102336 () Bool)

(assert (= bs!1102336 (and d!1499263 d!1499147)))

(assert (=> bs!1102336 (not (= lambda!212877 lambda!212847))))

(assert (=> bs!1102333 (not (= lambda!212877 lambda!212870))))

(assert (=> bs!1102334 (not (= lambda!212877 lambda!212845))))

(assert (=> bs!1102332 (not (= lambda!212877 lambda!212858))))

(declare-fun bs!1102337 () Bool)

(assert (= bs!1102337 (and d!1499263 d!1499219)))

(assert (=> bs!1102337 (not (= lambda!212877 lambda!212859))))

(assert (=> d!1499263 true))

(assert (=> d!1499263 true))

(assert (=> d!1499263 (= (allKeysSameHash!1784 newBucket!218 hash!405 hashF!1323) (forall!11493 newBucket!218 lambda!212877))))

(declare-fun bs!1102338 () Bool)

(assert (= bs!1102338 d!1499263))

(declare-fun m!5637475 () Bool)

(assert (=> bs!1102338 m!5637475))

(assert (=> b!4711097 d!1499263))

(declare-fun bs!1102339 () Bool)

(declare-fun d!1499265 () Bool)

(assert (= bs!1102339 (and d!1499265 b!4711274)))

(declare-fun lambda!212878 () Int)

(assert (=> bs!1102339 (not (= lambda!212878 lambda!212844))))

(declare-fun bs!1102340 () Bool)

(assert (= bs!1102340 (and d!1499265 b!4711309)))

(assert (=> bs!1102340 (not (= lambda!212878 lambda!212856))))

(declare-fun bs!1102341 () Bool)

(assert (= bs!1102341 (and d!1499265 d!1499249)))

(assert (=> bs!1102341 (not (= lambda!212878 lambda!212871))))

(declare-fun bs!1102342 () Bool)

(assert (= bs!1102342 (and d!1499265 b!4711383)))

(assert (=> bs!1102342 (not (= lambda!212878 lambda!212869))))

(declare-fun bs!1102343 () Bool)

(assert (= bs!1102343 (and d!1499265 b!4711271)))

(assert (=> bs!1102343 (not (= lambda!212878 lambda!212846))))

(declare-fun bs!1102344 () Bool)

(assert (= bs!1102344 (and d!1499265 b!4711386)))

(assert (=> bs!1102344 (not (= lambda!212878 lambda!212868))))

(declare-fun bs!1102345 () Bool)

(assert (= bs!1102345 (and d!1499265 d!1499147)))

(assert (=> bs!1102345 (not (= lambda!212878 lambda!212847))))

(assert (=> bs!1102342 (not (= lambda!212878 lambda!212870))))

(assert (=> bs!1102343 (not (= lambda!212878 lambda!212845))))

(declare-fun bs!1102346 () Bool)

(assert (= bs!1102346 (and d!1499265 b!4711306)))

(assert (=> bs!1102346 (not (= lambda!212878 lambda!212858))))

(declare-fun bs!1102347 () Bool)

(assert (= bs!1102347 (and d!1499265 d!1499219)))

(assert (=> bs!1102347 (not (= lambda!212878 lambda!212859))))

(declare-fun bs!1102348 () Bool)

(assert (= bs!1102348 (and d!1499265 d!1499263)))

(assert (=> bs!1102348 (= lambda!212878 lambda!212877)))

(assert (=> bs!1102346 (not (= lambda!212878 lambda!212857))))

(assert (=> d!1499265 true))

(assert (=> d!1499265 true))

(assert (=> d!1499265 (= (allKeysSameHash!1784 oldBucket!34 hash!405 hashF!1323) (forall!11493 oldBucket!34 lambda!212878))))

(declare-fun bs!1102349 () Bool)

(assert (= bs!1102349 d!1499265))

(declare-fun m!5637477 () Bool)

(assert (=> bs!1102349 m!5637477))

(assert (=> b!4711096 d!1499265))

(declare-fun d!1499267 () Bool)

(declare-fun res!1991293 () Bool)

(declare-fun e!2938538 () Bool)

(assert (=> d!1499267 (=> res!1991293 e!2938538)))

(assert (=> d!1499267 (= res!1991293 (and ((_ is Cons!52683) lt!1875603) (= (_1!30407 (h!58994 lt!1875603)) key!4653)))))

(assert (=> d!1499267 (= (containsKey!3263 lt!1875603 key!4653) e!2938538)))

(declare-fun b!4711402 () Bool)

(declare-fun e!2938539 () Bool)

(assert (=> b!4711402 (= e!2938538 e!2938539)))

(declare-fun res!1991294 () Bool)

(assert (=> b!4711402 (=> (not res!1991294) (not e!2938539))))

(assert (=> b!4711402 (= res!1991294 ((_ is Cons!52683) lt!1875603))))

(declare-fun b!4711403 () Bool)

(assert (=> b!4711403 (= e!2938539 (containsKey!3263 (t!360047 lt!1875603) key!4653))))

(assert (= (and d!1499267 (not res!1991293)) b!4711402))

(assert (= (and b!4711402 res!1991294) b!4711403))

(declare-fun m!5637479 () Bool)

(assert (=> b!4711403 m!5637479))

(assert (=> b!4711106 d!1499267))

(declare-fun bs!1102350 () Bool)

(declare-fun b!4711407 () Bool)

(assert (= bs!1102350 (and b!4711407 b!4711274)))

(declare-fun lambda!212879 () Int)

(assert (=> bs!1102350 (= lambda!212879 lambda!212844)))

(declare-fun bs!1102351 () Bool)

(assert (= bs!1102351 (and b!4711407 b!4711309)))

(assert (=> bs!1102351 (= lambda!212879 lambda!212856)))

(declare-fun bs!1102352 () Bool)

(assert (= bs!1102352 (and b!4711407 b!4711383)))

(assert (=> bs!1102352 (= lambda!212879 lambda!212869)))

(declare-fun bs!1102353 () Bool)

(assert (= bs!1102353 (and b!4711407 b!4711271)))

(assert (=> bs!1102353 (= (= lt!1875592 lt!1875842) (= lambda!212879 lambda!212846))))

(declare-fun bs!1102354 () Bool)

(assert (= bs!1102354 (and b!4711407 b!4711386)))

(assert (=> bs!1102354 (= lambda!212879 lambda!212868)))

(declare-fun bs!1102355 () Bool)

(assert (= bs!1102355 (and b!4711407 d!1499147)))

(assert (=> bs!1102355 (= (= lt!1875592 lt!1875836) (= lambda!212879 lambda!212847))))

(assert (=> bs!1102352 (= (= lt!1875592 lt!1876006) (= lambda!212879 lambda!212870))))

(assert (=> bs!1102353 (= lambda!212879 lambda!212845)))

(declare-fun bs!1102356 () Bool)

(assert (= bs!1102356 (and b!4711407 b!4711306)))

(assert (=> bs!1102356 (= (= lt!1875592 lt!1875935) (= lambda!212879 lambda!212858))))

(declare-fun bs!1102357 () Bool)

(assert (= bs!1102357 (and b!4711407 d!1499219)))

(assert (=> bs!1102357 (= (= lt!1875592 lt!1875929) (= lambda!212879 lambda!212859))))

(declare-fun bs!1102358 () Bool)

(assert (= bs!1102358 (and b!4711407 d!1499265)))

(assert (=> bs!1102358 (not (= lambda!212879 lambda!212878))))

(declare-fun bs!1102359 () Bool)

(assert (= bs!1102359 (and b!4711407 d!1499249)))

(assert (=> bs!1102359 (= (= lt!1875592 lt!1876000) (= lambda!212879 lambda!212871))))

(declare-fun bs!1102360 () Bool)

(assert (= bs!1102360 (and b!4711407 d!1499263)))

(assert (=> bs!1102360 (not (= lambda!212879 lambda!212877))))

(assert (=> bs!1102356 (= lambda!212879 lambda!212857)))

(assert (=> b!4711407 true))

(declare-fun bs!1102361 () Bool)

(declare-fun b!4711404 () Bool)

(assert (= bs!1102361 (and b!4711404 b!4711274)))

(declare-fun lambda!212880 () Int)

(assert (=> bs!1102361 (= lambda!212880 lambda!212844)))

(declare-fun bs!1102362 () Bool)

(assert (= bs!1102362 (and b!4711404 b!4711309)))

(assert (=> bs!1102362 (= lambda!212880 lambda!212856)))

(declare-fun bs!1102363 () Bool)

(assert (= bs!1102363 (and b!4711404 b!4711407)))

(assert (=> bs!1102363 (= lambda!212880 lambda!212879)))

(declare-fun bs!1102364 () Bool)

(assert (= bs!1102364 (and b!4711404 b!4711383)))

(assert (=> bs!1102364 (= lambda!212880 lambda!212869)))

(declare-fun bs!1102365 () Bool)

(assert (= bs!1102365 (and b!4711404 b!4711271)))

(assert (=> bs!1102365 (= (= lt!1875592 lt!1875842) (= lambda!212880 lambda!212846))))

(declare-fun bs!1102366 () Bool)

(assert (= bs!1102366 (and b!4711404 b!4711386)))

(assert (=> bs!1102366 (= lambda!212880 lambda!212868)))

(declare-fun bs!1102367 () Bool)

(assert (= bs!1102367 (and b!4711404 d!1499147)))

(assert (=> bs!1102367 (= (= lt!1875592 lt!1875836) (= lambda!212880 lambda!212847))))

(assert (=> bs!1102364 (= (= lt!1875592 lt!1876006) (= lambda!212880 lambda!212870))))

(assert (=> bs!1102365 (= lambda!212880 lambda!212845)))

(declare-fun bs!1102368 () Bool)

(assert (= bs!1102368 (and b!4711404 b!4711306)))

(assert (=> bs!1102368 (= (= lt!1875592 lt!1875935) (= lambda!212880 lambda!212858))))

(declare-fun bs!1102369 () Bool)

(assert (= bs!1102369 (and b!4711404 d!1499219)))

(assert (=> bs!1102369 (= (= lt!1875592 lt!1875929) (= lambda!212880 lambda!212859))))

(declare-fun bs!1102370 () Bool)

(assert (= bs!1102370 (and b!4711404 d!1499265)))

(assert (=> bs!1102370 (not (= lambda!212880 lambda!212878))))

(declare-fun bs!1102371 () Bool)

(assert (= bs!1102371 (and b!4711404 d!1499249)))

(assert (=> bs!1102371 (= (= lt!1875592 lt!1876000) (= lambda!212880 lambda!212871))))

(declare-fun bs!1102372 () Bool)

(assert (= bs!1102372 (and b!4711404 d!1499263)))

(assert (=> bs!1102372 (not (= lambda!212880 lambda!212877))))

(assert (=> bs!1102368 (= lambda!212880 lambda!212857)))

(assert (=> b!4711404 true))

(declare-fun lambda!212881 () Int)

(declare-fun lt!1876030 () ListMap!5169)

(assert (=> bs!1102361 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212844))))

(assert (=> bs!1102362 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212856))))

(assert (=> bs!1102363 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212879))))

(assert (=> bs!1102364 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212869))))

(assert (=> bs!1102365 (= (= lt!1876030 lt!1875842) (= lambda!212881 lambda!212846))))

(assert (=> bs!1102366 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212868))))

(assert (=> bs!1102367 (= (= lt!1876030 lt!1875836) (= lambda!212881 lambda!212847))))

(assert (=> bs!1102364 (= (= lt!1876030 lt!1876006) (= lambda!212881 lambda!212870))))

(assert (=> bs!1102365 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212845))))

(assert (=> bs!1102368 (= (= lt!1876030 lt!1875935) (= lambda!212881 lambda!212858))))

(assert (=> bs!1102369 (= (= lt!1876030 lt!1875929) (= lambda!212881 lambda!212859))))

(assert (=> bs!1102370 (not (= lambda!212881 lambda!212878))))

(assert (=> bs!1102371 (= (= lt!1876030 lt!1876000) (= lambda!212881 lambda!212871))))

(assert (=> bs!1102372 (not (= lambda!212881 lambda!212877))))

(assert (=> bs!1102368 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212857))))

(assert (=> b!4711404 (= (= lt!1876030 lt!1875592) (= lambda!212881 lambda!212880))))

(assert (=> b!4711404 true))

(declare-fun bs!1102373 () Bool)

(declare-fun d!1499269 () Bool)

(assert (= bs!1102373 (and d!1499269 b!4711274)))

(declare-fun lambda!212882 () Int)

(declare-fun lt!1876024 () ListMap!5169)

(assert (=> bs!1102373 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212844))))

(declare-fun bs!1102374 () Bool)

(assert (= bs!1102374 (and d!1499269 b!4711309)))

(assert (=> bs!1102374 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212856))))

(declare-fun bs!1102375 () Bool)

(assert (= bs!1102375 (and d!1499269 b!4711407)))

(assert (=> bs!1102375 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212879))))

(declare-fun bs!1102376 () Bool)

(assert (= bs!1102376 (and d!1499269 b!4711383)))

(assert (=> bs!1102376 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212869))))

(declare-fun bs!1102377 () Bool)

(assert (= bs!1102377 (and d!1499269 b!4711271)))

(assert (=> bs!1102377 (= (= lt!1876024 lt!1875842) (= lambda!212882 lambda!212846))))

(declare-fun bs!1102378 () Bool)

(assert (= bs!1102378 (and d!1499269 d!1499147)))

(assert (=> bs!1102378 (= (= lt!1876024 lt!1875836) (= lambda!212882 lambda!212847))))

(assert (=> bs!1102376 (= (= lt!1876024 lt!1876006) (= lambda!212882 lambda!212870))))

(assert (=> bs!1102377 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212845))))

(declare-fun bs!1102379 () Bool)

(assert (= bs!1102379 (and d!1499269 b!4711306)))

(assert (=> bs!1102379 (= (= lt!1876024 lt!1875935) (= lambda!212882 lambda!212858))))

(declare-fun bs!1102380 () Bool)

(assert (= bs!1102380 (and d!1499269 d!1499219)))

(assert (=> bs!1102380 (= (= lt!1876024 lt!1875929) (= lambda!212882 lambda!212859))))

(declare-fun bs!1102381 () Bool)

(assert (= bs!1102381 (and d!1499269 d!1499265)))

(assert (=> bs!1102381 (not (= lambda!212882 lambda!212878))))

(declare-fun bs!1102382 () Bool)

(assert (= bs!1102382 (and d!1499269 d!1499249)))

(assert (=> bs!1102382 (= (= lt!1876024 lt!1876000) (= lambda!212882 lambda!212871))))

(declare-fun bs!1102383 () Bool)

(assert (= bs!1102383 (and d!1499269 d!1499263)))

(assert (=> bs!1102383 (not (= lambda!212882 lambda!212877))))

(assert (=> bs!1102379 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212857))))

(declare-fun bs!1102384 () Bool)

(assert (= bs!1102384 (and d!1499269 b!4711404)))

(assert (=> bs!1102384 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212880))))

(assert (=> bs!1102384 (= (= lt!1876024 lt!1876030) (= lambda!212882 lambda!212881))))

(declare-fun bs!1102385 () Bool)

(assert (= bs!1102385 (and d!1499269 b!4711386)))

(assert (=> bs!1102385 (= (= lt!1876024 lt!1875592) (= lambda!212882 lambda!212868))))

(assert (=> d!1499269 true))

(declare-fun e!2938542 () ListMap!5169)

(assert (=> b!4711404 (= e!2938542 lt!1876030)))

(declare-fun lt!1876036 () ListMap!5169)

(assert (=> b!4711404 (= lt!1876036 (+!2222 lt!1875592 (h!58994 newBucket!218)))))

(assert (=> b!4711404 (= lt!1876030 (addToMapMapFromBucket!1388 (t!360047 newBucket!218) (+!2222 lt!1875592 (h!58994 newBucket!218))))))

(declare-fun lt!1876035 () Unit!128004)

(declare-fun call!329425 () Unit!128004)

(assert (=> b!4711404 (= lt!1876035 call!329425)))

(declare-fun call!329424 () Bool)

(assert (=> b!4711404 call!329424))

(declare-fun lt!1876029 () Unit!128004)

(assert (=> b!4711404 (= lt!1876029 lt!1876035)))

(assert (=> b!4711404 (forall!11493 (toList!5805 lt!1876036) lambda!212881)))

(declare-fun lt!1876020 () Unit!128004)

(declare-fun Unit!128106 () Unit!128004)

(assert (=> b!4711404 (= lt!1876020 Unit!128106)))

(assert (=> b!4711404 (forall!11493 (t!360047 newBucket!218) lambda!212881)))

(declare-fun lt!1876038 () Unit!128004)

(declare-fun Unit!128107 () Unit!128004)

(assert (=> b!4711404 (= lt!1876038 Unit!128107)))

(declare-fun lt!1876034 () Unit!128004)

(declare-fun Unit!128108 () Unit!128004)

(assert (=> b!4711404 (= lt!1876034 Unit!128108)))

(declare-fun lt!1876031 () Unit!128004)

(assert (=> b!4711404 (= lt!1876031 (forallContained!3564 (toList!5805 lt!1876036) lambda!212881 (h!58994 newBucket!218)))))

(assert (=> b!4711404 (contains!15984 lt!1876036 (_1!30407 (h!58994 newBucket!218)))))

(declare-fun lt!1876037 () Unit!128004)

(declare-fun Unit!128109 () Unit!128004)

(assert (=> b!4711404 (= lt!1876037 Unit!128109)))

(assert (=> b!4711404 (contains!15984 lt!1876030 (_1!30407 (h!58994 newBucket!218)))))

(declare-fun lt!1876018 () Unit!128004)

(declare-fun Unit!128110 () Unit!128004)

(assert (=> b!4711404 (= lt!1876018 Unit!128110)))

(assert (=> b!4711404 (forall!11493 newBucket!218 lambda!212881)))

(declare-fun lt!1876028 () Unit!128004)

(declare-fun Unit!128111 () Unit!128004)

(assert (=> b!4711404 (= lt!1876028 Unit!128111)))

(assert (=> b!4711404 (forall!11493 (toList!5805 lt!1876036) lambda!212881)))

(declare-fun lt!1876021 () Unit!128004)

(declare-fun Unit!128112 () Unit!128004)

(assert (=> b!4711404 (= lt!1876021 Unit!128112)))

(declare-fun lt!1876032 () Unit!128004)

(declare-fun Unit!128113 () Unit!128004)

(assert (=> b!4711404 (= lt!1876032 Unit!128113)))

(declare-fun lt!1876026 () Unit!128004)

(assert (=> b!4711404 (= lt!1876026 (addForallContainsKeyThenBeforeAdding!763 lt!1875592 lt!1876030 (_1!30407 (h!58994 newBucket!218)) (_2!30407 (h!58994 newBucket!218))))))

(assert (=> b!4711404 (forall!11493 (toList!5805 lt!1875592) lambda!212881)))

(declare-fun lt!1876023 () Unit!128004)

(assert (=> b!4711404 (= lt!1876023 lt!1876026)))

(assert (=> b!4711404 (forall!11493 (toList!5805 lt!1875592) lambda!212881)))

(declare-fun lt!1876027 () Unit!128004)

(declare-fun Unit!128114 () Unit!128004)

(assert (=> b!4711404 (= lt!1876027 Unit!128114)))

(declare-fun res!1991295 () Bool)

(assert (=> b!4711404 (= res!1991295 (forall!11493 newBucket!218 lambda!212881))))

(declare-fun e!2938541 () Bool)

(assert (=> b!4711404 (=> (not res!1991295) (not e!2938541))))

(assert (=> b!4711404 e!2938541))

(declare-fun lt!1876033 () Unit!128004)

(declare-fun Unit!128115 () Unit!128004)

(assert (=> b!4711404 (= lt!1876033 Unit!128115)))

(declare-fun e!2938540 () Bool)

(assert (=> d!1499269 e!2938540))

(declare-fun res!1991297 () Bool)

(assert (=> d!1499269 (=> (not res!1991297) (not e!2938540))))

(assert (=> d!1499269 (= res!1991297 (forall!11493 newBucket!218 lambda!212882))))

(assert (=> d!1499269 (= lt!1876024 e!2938542)))

(declare-fun c!804898 () Bool)

(assert (=> d!1499269 (= c!804898 ((_ is Nil!52683) newBucket!218))))

(assert (=> d!1499269 (noDuplicateKeys!1958 newBucket!218)))

(assert (=> d!1499269 (= (addToMapMapFromBucket!1388 newBucket!218 lt!1875592) lt!1876024)))

(declare-fun bm!329419 () Bool)

(assert (=> bm!329419 (= call!329425 (lemmaContainsAllItsOwnKeys!764 lt!1875592))))

(declare-fun call!329426 () Bool)

(declare-fun bm!329420 () Bool)

(assert (=> bm!329420 (= call!329426 (forall!11493 (toList!5805 lt!1875592) (ite c!804898 lambda!212879 lambda!212881)))))

(declare-fun b!4711405 () Bool)

(declare-fun res!1991296 () Bool)

(assert (=> b!4711405 (=> (not res!1991296) (not e!2938540))))

(assert (=> b!4711405 (= res!1991296 (forall!11493 (toList!5805 lt!1875592) lambda!212882))))

(declare-fun b!4711406 () Bool)

(assert (=> b!4711406 (= e!2938540 (invariantList!1476 (toList!5805 lt!1876024)))))

(assert (=> b!4711407 (= e!2938542 lt!1875592)))

(declare-fun lt!1876022 () Unit!128004)

(assert (=> b!4711407 (= lt!1876022 call!329425)))

(assert (=> b!4711407 call!329424))

(declare-fun lt!1876025 () Unit!128004)

(assert (=> b!4711407 (= lt!1876025 lt!1876022)))

(assert (=> b!4711407 call!329426))

(declare-fun lt!1876019 () Unit!128004)

(declare-fun Unit!128116 () Unit!128004)

(assert (=> b!4711407 (= lt!1876019 Unit!128116)))

(declare-fun bm!329421 () Bool)

(assert (=> bm!329421 (= call!329424 (forall!11493 (toList!5805 lt!1875592) (ite c!804898 lambda!212879 lambda!212880)))))

(declare-fun b!4711408 () Bool)

(assert (=> b!4711408 (= e!2938541 call!329426)))

(assert (= (and d!1499269 c!804898) b!4711407))

(assert (= (and d!1499269 (not c!804898)) b!4711404))

(assert (= (and b!4711404 res!1991295) b!4711408))

(assert (= (or b!4711407 b!4711404) bm!329419))

(assert (= (or b!4711407 b!4711408) bm!329420))

(assert (= (or b!4711407 b!4711404) bm!329421))

(assert (= (and d!1499269 res!1991297) b!4711405))

(assert (= (and b!4711405 res!1991296) b!4711406))

(declare-fun m!5637481 () Bool)

(assert (=> b!4711405 m!5637481))

(declare-fun m!5637483 () Bool)

(assert (=> bm!329420 m!5637483))

(assert (=> bm!329419 m!5637111))

(declare-fun m!5637485 () Bool)

(assert (=> bm!329421 m!5637485))

(declare-fun m!5637487 () Bool)

(assert (=> d!1499269 m!5637487))

(assert (=> d!1499269 m!5636723))

(declare-fun m!5637489 () Bool)

(assert (=> b!4711406 m!5637489))

(declare-fun m!5637491 () Bool)

(assert (=> b!4711404 m!5637491))

(declare-fun m!5637493 () Bool)

(assert (=> b!4711404 m!5637493))

(assert (=> b!4711404 m!5637493))

(declare-fun m!5637495 () Bool)

(assert (=> b!4711404 m!5637495))

(declare-fun m!5637497 () Bool)

(assert (=> b!4711404 m!5637497))

(assert (=> b!4711404 m!5637497))

(declare-fun m!5637499 () Bool)

(assert (=> b!4711404 m!5637499))

(declare-fun m!5637501 () Bool)

(assert (=> b!4711404 m!5637501))

(declare-fun m!5637503 () Bool)

(assert (=> b!4711404 m!5637503))

(assert (=> b!4711404 m!5637499))

(declare-fun m!5637505 () Bool)

(assert (=> b!4711404 m!5637505))

(assert (=> b!4711404 m!5637491))

(declare-fun m!5637507 () Bool)

(assert (=> b!4711404 m!5637507))

(declare-fun m!5637509 () Bool)

(assert (=> b!4711404 m!5637509))

(assert (=> b!4711095 d!1499269))

(declare-fun bs!1102386 () Bool)

(declare-fun b!4711412 () Bool)

(assert (= bs!1102386 (and b!4711412 b!4711274)))

(declare-fun lambda!212883 () Int)

(assert (=> bs!1102386 (= lambda!212883 lambda!212844)))

(declare-fun bs!1102387 () Bool)

(assert (= bs!1102387 (and b!4711412 b!4711309)))

(assert (=> bs!1102387 (= lambda!212883 lambda!212856)))

(declare-fun bs!1102388 () Bool)

(assert (= bs!1102388 (and b!4711412 b!4711407)))

(assert (=> bs!1102388 (= lambda!212883 lambda!212879)))

(declare-fun bs!1102389 () Bool)

(assert (= bs!1102389 (and b!4711412 b!4711383)))

(assert (=> bs!1102389 (= lambda!212883 lambda!212869)))

(declare-fun bs!1102390 () Bool)

(assert (= bs!1102390 (and b!4711412 d!1499269)))

(assert (=> bs!1102390 (= (= lt!1875592 lt!1876024) (= lambda!212883 lambda!212882))))

(declare-fun bs!1102391 () Bool)

(assert (= bs!1102391 (and b!4711412 b!4711271)))

(assert (=> bs!1102391 (= (= lt!1875592 lt!1875842) (= lambda!212883 lambda!212846))))

(declare-fun bs!1102392 () Bool)

(assert (= bs!1102392 (and b!4711412 d!1499147)))

(assert (=> bs!1102392 (= (= lt!1875592 lt!1875836) (= lambda!212883 lambda!212847))))

(assert (=> bs!1102389 (= (= lt!1875592 lt!1876006) (= lambda!212883 lambda!212870))))

(assert (=> bs!1102391 (= lambda!212883 lambda!212845)))

(declare-fun bs!1102393 () Bool)

(assert (= bs!1102393 (and b!4711412 b!4711306)))

(assert (=> bs!1102393 (= (= lt!1875592 lt!1875935) (= lambda!212883 lambda!212858))))

(declare-fun bs!1102394 () Bool)

(assert (= bs!1102394 (and b!4711412 d!1499219)))

(assert (=> bs!1102394 (= (= lt!1875592 lt!1875929) (= lambda!212883 lambda!212859))))

(declare-fun bs!1102395 () Bool)

(assert (= bs!1102395 (and b!4711412 d!1499265)))

(assert (=> bs!1102395 (not (= lambda!212883 lambda!212878))))

(declare-fun bs!1102396 () Bool)

(assert (= bs!1102396 (and b!4711412 d!1499249)))

(assert (=> bs!1102396 (= (= lt!1875592 lt!1876000) (= lambda!212883 lambda!212871))))

(declare-fun bs!1102397 () Bool)

(assert (= bs!1102397 (and b!4711412 d!1499263)))

(assert (=> bs!1102397 (not (= lambda!212883 lambda!212877))))

(assert (=> bs!1102393 (= lambda!212883 lambda!212857)))

(declare-fun bs!1102398 () Bool)

(assert (= bs!1102398 (and b!4711412 b!4711404)))

(assert (=> bs!1102398 (= lambda!212883 lambda!212880)))

(assert (=> bs!1102398 (= (= lt!1875592 lt!1876030) (= lambda!212883 lambda!212881))))

(declare-fun bs!1102399 () Bool)

(assert (= bs!1102399 (and b!4711412 b!4711386)))

(assert (=> bs!1102399 (= lambda!212883 lambda!212868)))

(assert (=> b!4711412 true))

(declare-fun bs!1102400 () Bool)

(declare-fun b!4711409 () Bool)

(assert (= bs!1102400 (and b!4711409 b!4711274)))

(declare-fun lambda!212884 () Int)

(assert (=> bs!1102400 (= lambda!212884 lambda!212844)))

(declare-fun bs!1102401 () Bool)

(assert (= bs!1102401 (and b!4711409 b!4711309)))

(assert (=> bs!1102401 (= lambda!212884 lambda!212856)))

(declare-fun bs!1102402 () Bool)

(assert (= bs!1102402 (and b!4711409 b!4711407)))

(assert (=> bs!1102402 (= lambda!212884 lambda!212879)))

(declare-fun bs!1102403 () Bool)

(assert (= bs!1102403 (and b!4711409 b!4711383)))

(assert (=> bs!1102403 (= lambda!212884 lambda!212869)))

(declare-fun bs!1102404 () Bool)

(assert (= bs!1102404 (and b!4711409 d!1499269)))

(assert (=> bs!1102404 (= (= lt!1875592 lt!1876024) (= lambda!212884 lambda!212882))))

(declare-fun bs!1102405 () Bool)

(assert (= bs!1102405 (and b!4711409 b!4711271)))

(assert (=> bs!1102405 (= (= lt!1875592 lt!1875842) (= lambda!212884 lambda!212846))))

(declare-fun bs!1102406 () Bool)

(assert (= bs!1102406 (and b!4711409 d!1499147)))

(assert (=> bs!1102406 (= (= lt!1875592 lt!1875836) (= lambda!212884 lambda!212847))))

(assert (=> bs!1102405 (= lambda!212884 lambda!212845)))

(declare-fun bs!1102407 () Bool)

(assert (= bs!1102407 (and b!4711409 b!4711306)))

(assert (=> bs!1102407 (= (= lt!1875592 lt!1875935) (= lambda!212884 lambda!212858))))

(declare-fun bs!1102408 () Bool)

(assert (= bs!1102408 (and b!4711409 d!1499219)))

(assert (=> bs!1102408 (= (= lt!1875592 lt!1875929) (= lambda!212884 lambda!212859))))

(declare-fun bs!1102409 () Bool)

(assert (= bs!1102409 (and b!4711409 d!1499265)))

(assert (=> bs!1102409 (not (= lambda!212884 lambda!212878))))

(declare-fun bs!1102410 () Bool)

(assert (= bs!1102410 (and b!4711409 d!1499249)))

(assert (=> bs!1102410 (= (= lt!1875592 lt!1876000) (= lambda!212884 lambda!212871))))

(declare-fun bs!1102411 () Bool)

(assert (= bs!1102411 (and b!4711409 d!1499263)))

(assert (=> bs!1102411 (not (= lambda!212884 lambda!212877))))

(assert (=> bs!1102407 (= lambda!212884 lambda!212857)))

(declare-fun bs!1102412 () Bool)

(assert (= bs!1102412 (and b!4711409 b!4711404)))

(assert (=> bs!1102412 (= lambda!212884 lambda!212880)))

(assert (=> bs!1102412 (= (= lt!1875592 lt!1876030) (= lambda!212884 lambda!212881))))

(declare-fun bs!1102413 () Bool)

(assert (= bs!1102413 (and b!4711409 b!4711386)))

(assert (=> bs!1102413 (= lambda!212884 lambda!212868)))

(declare-fun bs!1102414 () Bool)

(assert (= bs!1102414 (and b!4711409 b!4711412)))

(assert (=> bs!1102414 (= lambda!212884 lambda!212883)))

(assert (=> bs!1102403 (= (= lt!1875592 lt!1876006) (= lambda!212884 lambda!212870))))

(assert (=> b!4711409 true))

(declare-fun lt!1876051 () ListMap!5169)

(declare-fun lambda!212885 () Int)

(assert (=> bs!1102400 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212844))))

(assert (=> bs!1102401 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212856))))

(assert (=> bs!1102402 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212879))))

(assert (=> bs!1102403 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212869))))

(assert (=> bs!1102404 (= (= lt!1876051 lt!1876024) (= lambda!212885 lambda!212882))))

(assert (=> bs!1102405 (= (= lt!1876051 lt!1875842) (= lambda!212885 lambda!212846))))

(assert (=> bs!1102406 (= (= lt!1876051 lt!1875836) (= lambda!212885 lambda!212847))))

(assert (=> b!4711409 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212884))))

(assert (=> bs!1102405 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212845))))

(assert (=> bs!1102407 (= (= lt!1876051 lt!1875935) (= lambda!212885 lambda!212858))))

(assert (=> bs!1102408 (= (= lt!1876051 lt!1875929) (= lambda!212885 lambda!212859))))

(assert (=> bs!1102409 (not (= lambda!212885 lambda!212878))))

(assert (=> bs!1102410 (= (= lt!1876051 lt!1876000) (= lambda!212885 lambda!212871))))

(assert (=> bs!1102411 (not (= lambda!212885 lambda!212877))))

(assert (=> bs!1102407 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212857))))

(assert (=> bs!1102412 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212880))))

(assert (=> bs!1102412 (= (= lt!1876051 lt!1876030) (= lambda!212885 lambda!212881))))

(assert (=> bs!1102413 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212868))))

(assert (=> bs!1102414 (= (= lt!1876051 lt!1875592) (= lambda!212885 lambda!212883))))

(assert (=> bs!1102403 (= (= lt!1876051 lt!1876006) (= lambda!212885 lambda!212870))))

(assert (=> b!4711409 true))

(declare-fun bs!1102415 () Bool)

(declare-fun d!1499271 () Bool)

(assert (= bs!1102415 (and d!1499271 b!4711274)))

(declare-fun lt!1876045 () ListMap!5169)

(declare-fun lambda!212886 () Int)

(assert (=> bs!1102415 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212844))))

(declare-fun bs!1102416 () Bool)

(assert (= bs!1102416 (and d!1499271 b!4711309)))

(assert (=> bs!1102416 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212856))))

(declare-fun bs!1102417 () Bool)

(assert (= bs!1102417 (and d!1499271 b!4711407)))

(assert (=> bs!1102417 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212879))))

(declare-fun bs!1102418 () Bool)

(assert (= bs!1102418 (and d!1499271 b!4711383)))

(assert (=> bs!1102418 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212869))))

(declare-fun bs!1102419 () Bool)

(assert (= bs!1102419 (and d!1499271 d!1499269)))

(assert (=> bs!1102419 (= (= lt!1876045 lt!1876024) (= lambda!212886 lambda!212882))))

(declare-fun bs!1102420 () Bool)

(assert (= bs!1102420 (and d!1499271 b!4711409)))

(assert (=> bs!1102420 (= (= lt!1876045 lt!1876051) (= lambda!212886 lambda!212885))))

(declare-fun bs!1102421 () Bool)

(assert (= bs!1102421 (and d!1499271 b!4711271)))

(assert (=> bs!1102421 (= (= lt!1876045 lt!1875842) (= lambda!212886 lambda!212846))))

(declare-fun bs!1102422 () Bool)

(assert (= bs!1102422 (and d!1499271 d!1499147)))

(assert (=> bs!1102422 (= (= lt!1876045 lt!1875836) (= lambda!212886 lambda!212847))))

(assert (=> bs!1102420 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212884))))

(assert (=> bs!1102421 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212845))))

(declare-fun bs!1102423 () Bool)

(assert (= bs!1102423 (and d!1499271 b!4711306)))

(assert (=> bs!1102423 (= (= lt!1876045 lt!1875935) (= lambda!212886 lambda!212858))))

(declare-fun bs!1102424 () Bool)

(assert (= bs!1102424 (and d!1499271 d!1499219)))

(assert (=> bs!1102424 (= (= lt!1876045 lt!1875929) (= lambda!212886 lambda!212859))))

(declare-fun bs!1102425 () Bool)

(assert (= bs!1102425 (and d!1499271 d!1499265)))

(assert (=> bs!1102425 (not (= lambda!212886 lambda!212878))))

(declare-fun bs!1102426 () Bool)

(assert (= bs!1102426 (and d!1499271 d!1499249)))

(assert (=> bs!1102426 (= (= lt!1876045 lt!1876000) (= lambda!212886 lambda!212871))))

(declare-fun bs!1102427 () Bool)

(assert (= bs!1102427 (and d!1499271 d!1499263)))

(assert (=> bs!1102427 (not (= lambda!212886 lambda!212877))))

(assert (=> bs!1102423 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212857))))

(declare-fun bs!1102428 () Bool)

(assert (= bs!1102428 (and d!1499271 b!4711404)))

(assert (=> bs!1102428 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212880))))

(assert (=> bs!1102428 (= (= lt!1876045 lt!1876030) (= lambda!212886 lambda!212881))))

(declare-fun bs!1102429 () Bool)

(assert (= bs!1102429 (and d!1499271 b!4711386)))

(assert (=> bs!1102429 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212868))))

(declare-fun bs!1102430 () Bool)

(assert (= bs!1102430 (and d!1499271 b!4711412)))

(assert (=> bs!1102430 (= (= lt!1876045 lt!1875592) (= lambda!212886 lambda!212883))))

(assert (=> bs!1102418 (= (= lt!1876045 lt!1876006) (= lambda!212886 lambda!212870))))

(assert (=> d!1499271 true))

(declare-fun e!2938545 () ListMap!5169)

(assert (=> b!4711409 (= e!2938545 lt!1876051)))

(declare-fun lt!1876057 () ListMap!5169)

(assert (=> b!4711409 (= lt!1876057 (+!2222 lt!1875592 (h!58994 lt!1875603)))))

(assert (=> b!4711409 (= lt!1876051 (addToMapMapFromBucket!1388 (t!360047 lt!1875603) (+!2222 lt!1875592 (h!58994 lt!1875603))))))

(declare-fun lt!1876056 () Unit!128004)

(declare-fun call!329428 () Unit!128004)

(assert (=> b!4711409 (= lt!1876056 call!329428)))

(declare-fun call!329427 () Bool)

(assert (=> b!4711409 call!329427))

(declare-fun lt!1876050 () Unit!128004)

(assert (=> b!4711409 (= lt!1876050 lt!1876056)))

(assert (=> b!4711409 (forall!11493 (toList!5805 lt!1876057) lambda!212885)))

(declare-fun lt!1876041 () Unit!128004)

(declare-fun Unit!128117 () Unit!128004)

(assert (=> b!4711409 (= lt!1876041 Unit!128117)))

(assert (=> b!4711409 (forall!11493 (t!360047 lt!1875603) lambda!212885)))

(declare-fun lt!1876059 () Unit!128004)

(declare-fun Unit!128118 () Unit!128004)

(assert (=> b!4711409 (= lt!1876059 Unit!128118)))

(declare-fun lt!1876055 () Unit!128004)

(declare-fun Unit!128119 () Unit!128004)

(assert (=> b!4711409 (= lt!1876055 Unit!128119)))

(declare-fun lt!1876052 () Unit!128004)

(assert (=> b!4711409 (= lt!1876052 (forallContained!3564 (toList!5805 lt!1876057) lambda!212885 (h!58994 lt!1875603)))))

(assert (=> b!4711409 (contains!15984 lt!1876057 (_1!30407 (h!58994 lt!1875603)))))

(declare-fun lt!1876058 () Unit!128004)

(declare-fun Unit!128120 () Unit!128004)

(assert (=> b!4711409 (= lt!1876058 Unit!128120)))

(assert (=> b!4711409 (contains!15984 lt!1876051 (_1!30407 (h!58994 lt!1875603)))))

(declare-fun lt!1876039 () Unit!128004)

(declare-fun Unit!128121 () Unit!128004)

(assert (=> b!4711409 (= lt!1876039 Unit!128121)))

(assert (=> b!4711409 (forall!11493 lt!1875603 lambda!212885)))

(declare-fun lt!1876049 () Unit!128004)

(declare-fun Unit!128122 () Unit!128004)

(assert (=> b!4711409 (= lt!1876049 Unit!128122)))

(assert (=> b!4711409 (forall!11493 (toList!5805 lt!1876057) lambda!212885)))

(declare-fun lt!1876042 () Unit!128004)

(declare-fun Unit!128123 () Unit!128004)

(assert (=> b!4711409 (= lt!1876042 Unit!128123)))

(declare-fun lt!1876053 () Unit!128004)

(declare-fun Unit!128124 () Unit!128004)

(assert (=> b!4711409 (= lt!1876053 Unit!128124)))

(declare-fun lt!1876047 () Unit!128004)

(assert (=> b!4711409 (= lt!1876047 (addForallContainsKeyThenBeforeAdding!763 lt!1875592 lt!1876051 (_1!30407 (h!58994 lt!1875603)) (_2!30407 (h!58994 lt!1875603))))))

(assert (=> b!4711409 (forall!11493 (toList!5805 lt!1875592) lambda!212885)))

(declare-fun lt!1876044 () Unit!128004)

(assert (=> b!4711409 (= lt!1876044 lt!1876047)))

(assert (=> b!4711409 (forall!11493 (toList!5805 lt!1875592) lambda!212885)))

(declare-fun lt!1876048 () Unit!128004)

(declare-fun Unit!128125 () Unit!128004)

(assert (=> b!4711409 (= lt!1876048 Unit!128125)))

(declare-fun res!1991298 () Bool)

(assert (=> b!4711409 (= res!1991298 (forall!11493 lt!1875603 lambda!212885))))

(declare-fun e!2938544 () Bool)

(assert (=> b!4711409 (=> (not res!1991298) (not e!2938544))))

(assert (=> b!4711409 e!2938544))

(declare-fun lt!1876054 () Unit!128004)

(declare-fun Unit!128126 () Unit!128004)

(assert (=> b!4711409 (= lt!1876054 Unit!128126)))

(declare-fun e!2938543 () Bool)

(assert (=> d!1499271 e!2938543))

(declare-fun res!1991300 () Bool)

(assert (=> d!1499271 (=> (not res!1991300) (not e!2938543))))

(assert (=> d!1499271 (= res!1991300 (forall!11493 lt!1875603 lambda!212886))))

(assert (=> d!1499271 (= lt!1876045 e!2938545)))

(declare-fun c!804899 () Bool)

(assert (=> d!1499271 (= c!804899 ((_ is Nil!52683) lt!1875603))))

(assert (=> d!1499271 (noDuplicateKeys!1958 lt!1875603)))

(assert (=> d!1499271 (= (addToMapMapFromBucket!1388 lt!1875603 lt!1875592) lt!1876045)))

(declare-fun bm!329422 () Bool)

(assert (=> bm!329422 (= call!329428 (lemmaContainsAllItsOwnKeys!764 lt!1875592))))

(declare-fun bm!329423 () Bool)

(declare-fun call!329429 () Bool)

(assert (=> bm!329423 (= call!329429 (forall!11493 (toList!5805 lt!1875592) (ite c!804899 lambda!212883 lambda!212885)))))

(declare-fun b!4711410 () Bool)

(declare-fun res!1991299 () Bool)

(assert (=> b!4711410 (=> (not res!1991299) (not e!2938543))))

(assert (=> b!4711410 (= res!1991299 (forall!11493 (toList!5805 lt!1875592) lambda!212886))))

(declare-fun b!4711411 () Bool)

(assert (=> b!4711411 (= e!2938543 (invariantList!1476 (toList!5805 lt!1876045)))))

(assert (=> b!4711412 (= e!2938545 lt!1875592)))

(declare-fun lt!1876043 () Unit!128004)

(assert (=> b!4711412 (= lt!1876043 call!329428)))

(assert (=> b!4711412 call!329427))

(declare-fun lt!1876046 () Unit!128004)

(assert (=> b!4711412 (= lt!1876046 lt!1876043)))

(assert (=> b!4711412 call!329429))

(declare-fun lt!1876040 () Unit!128004)

(declare-fun Unit!128127 () Unit!128004)

(assert (=> b!4711412 (= lt!1876040 Unit!128127)))

(declare-fun bm!329424 () Bool)

(assert (=> bm!329424 (= call!329427 (forall!11493 (toList!5805 lt!1875592) (ite c!804899 lambda!212883 lambda!212884)))))

(declare-fun b!4711413 () Bool)

(assert (=> b!4711413 (= e!2938544 call!329429)))

(assert (= (and d!1499271 c!804899) b!4711412))

(assert (= (and d!1499271 (not c!804899)) b!4711409))

(assert (= (and b!4711409 res!1991298) b!4711413))

(assert (= (or b!4711412 b!4711409) bm!329422))

(assert (= (or b!4711412 b!4711413) bm!329423))

(assert (= (or b!4711412 b!4711409) bm!329424))

(assert (= (and d!1499271 res!1991300) b!4711410))

(assert (= (and b!4711410 res!1991299) b!4711411))

(declare-fun m!5637511 () Bool)

(assert (=> b!4711410 m!5637511))

(declare-fun m!5637513 () Bool)

(assert (=> bm!329423 m!5637513))

(assert (=> bm!329422 m!5637111))

(declare-fun m!5637515 () Bool)

(assert (=> bm!329424 m!5637515))

(declare-fun m!5637517 () Bool)

(assert (=> d!1499271 m!5637517))

(assert (=> d!1499271 m!5637221))

(declare-fun m!5637519 () Bool)

(assert (=> b!4711411 m!5637519))

(declare-fun m!5637521 () Bool)

(assert (=> b!4711409 m!5637521))

(declare-fun m!5637523 () Bool)

(assert (=> b!4711409 m!5637523))

(assert (=> b!4711409 m!5637523))

(declare-fun m!5637525 () Bool)

(assert (=> b!4711409 m!5637525))

(declare-fun m!5637527 () Bool)

(assert (=> b!4711409 m!5637527))

(assert (=> b!4711409 m!5637527))

(declare-fun m!5637529 () Bool)

(assert (=> b!4711409 m!5637529))

(declare-fun m!5637531 () Bool)

(assert (=> b!4711409 m!5637531))

(declare-fun m!5637533 () Bool)

(assert (=> b!4711409 m!5637533))

(assert (=> b!4711409 m!5637529))

(declare-fun m!5637535 () Bool)

(assert (=> b!4711409 m!5637535))

(assert (=> b!4711409 m!5637521))

(declare-fun m!5637537 () Bool)

(assert (=> b!4711409 m!5637537))

(declare-fun m!5637539 () Bool)

(assert (=> b!4711409 m!5637539))

(assert (=> b!4711095 d!1499271))

(declare-fun d!1499273 () Bool)

(declare-fun e!2938548 () Bool)

(assert (=> d!1499273 e!2938548))

(declare-fun res!1991303 () Bool)

(assert (=> d!1499273 (=> (not res!1991303) (not e!2938548))))

(declare-fun lt!1876062 () ListMap!5169)

(assert (=> d!1499273 (= res!1991303 (not (contains!15984 lt!1876062 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!389 (List!52807 K!14045) List!52807)

(assert (=> d!1499273 (= lt!1876062 (ListMap!5170 (removePresrvNoDuplicatedKeys!389 (toList!5805 lt!1875605) key!4653)))))

(assert (=> d!1499273 (= (-!732 lt!1875605 key!4653) lt!1876062)))

(declare-fun b!4711416 () Bool)

(declare-fun content!9338 (List!52810) (InoxSet K!14045))

(assert (=> b!4711416 (= e!2938548 (= ((_ map and) (content!9338 (keys!18883 lt!1875605)) ((_ map not) (store ((as const (Array K!14045 Bool)) false) key!4653 true))) (content!9338 (keys!18883 lt!1876062))))))

(assert (= (and d!1499273 res!1991303) b!4711416))

(declare-fun m!5637541 () Bool)

(assert (=> d!1499273 m!5637541))

(declare-fun m!5637543 () Bool)

(assert (=> d!1499273 m!5637543))

(declare-fun m!5637545 () Bool)

(assert (=> b!4711416 m!5637545))

(declare-fun m!5637547 () Bool)

(assert (=> b!4711416 m!5637547))

(declare-fun m!5637549 () Bool)

(assert (=> b!4711416 m!5637549))

(assert (=> b!4711416 m!5637547))

(declare-fun m!5637551 () Bool)

(assert (=> b!4711416 m!5637551))

(declare-fun m!5637553 () Bool)

(assert (=> b!4711416 m!5637553))

(assert (=> b!4711416 m!5637551))

(assert (=> b!4711094 d!1499273))

(declare-fun d!1499275 () Bool)

(declare-fun e!2938549 () Bool)

(assert (=> d!1499275 e!2938549))

(declare-fun res!1991304 () Bool)

(assert (=> d!1499275 (=> (not res!1991304) (not e!2938549))))

(declare-fun lt!1876063 () ListMap!5169)

(assert (=> d!1499275 (= res!1991304 (not (contains!15984 lt!1876063 key!4653)))))

(assert (=> d!1499275 (= lt!1876063 (ListMap!5170 (removePresrvNoDuplicatedKeys!389 (toList!5805 (+!2222 lt!1875597 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34))))) key!4653)))))

(assert (=> d!1499275 (= (-!732 (+!2222 lt!1875597 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))) key!4653) lt!1876063)))

(declare-fun b!4711417 () Bool)

(assert (=> b!4711417 (= e!2938549 (= ((_ map and) (content!9338 (keys!18883 (+!2222 lt!1875597 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!14045 Bool)) false) key!4653 true))) (content!9338 (keys!18883 lt!1876063))))))

(assert (= (and d!1499275 res!1991304) b!4711417))

(declare-fun m!5637555 () Bool)

(assert (=> d!1499275 m!5637555))

(declare-fun m!5637557 () Bool)

(assert (=> d!1499275 m!5637557))

(assert (=> b!4711417 m!5637545))

(declare-fun m!5637559 () Bool)

(assert (=> b!4711417 m!5637559))

(declare-fun m!5637561 () Bool)

(assert (=> b!4711417 m!5637561))

(assert (=> b!4711417 m!5637559))

(declare-fun m!5637563 () Bool)

(assert (=> b!4711417 m!5637563))

(declare-fun m!5637565 () Bool)

(assert (=> b!4711417 m!5637565))

(assert (=> b!4711417 m!5636741))

(assert (=> b!4711417 m!5637563))

(assert (=> b!4711094 d!1499275))

(declare-fun d!1499277 () Bool)

(declare-fun e!2938550 () Bool)

(assert (=> d!1499277 e!2938550))

(declare-fun res!1991305 () Bool)

(assert (=> d!1499277 (=> (not res!1991305) (not e!2938550))))

(declare-fun lt!1876064 () ListMap!5169)

(assert (=> d!1499277 (= res!1991305 (contains!15984 lt!1876064 (_1!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34))))))))

(declare-fun lt!1876065 () List!52807)

(assert (=> d!1499277 (= lt!1876064 (ListMap!5170 lt!1876065))))

(declare-fun lt!1876067 () Unit!128004)

(declare-fun lt!1876066 () Unit!128004)

(assert (=> d!1499277 (= lt!1876067 lt!1876066)))

(assert (=> d!1499277 (= (getValueByKey!1901 lt!1876065 (_1!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34))))) (Some!12268 (_2!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34))))))))

(assert (=> d!1499277 (= lt!1876066 (lemmaContainsTupThenGetReturnValue!1064 lt!1876065 (_1!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))) (_2!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34))))))))

(assert (=> d!1499277 (= lt!1876065 (insertNoDuplicatedKeys!572 (toList!5805 lt!1875597) (_1!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))) (_2!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34))))))))

(assert (=> d!1499277 (= (+!2222 lt!1875597 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))) lt!1876064)))

(declare-fun b!4711418 () Bool)

(declare-fun res!1991306 () Bool)

(assert (=> b!4711418 (=> (not res!1991306) (not e!2938550))))

(assert (=> b!4711418 (= res!1991306 (= (getValueByKey!1901 (toList!5805 lt!1876064) (_1!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34))))) (Some!12268 (_2!30407 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))))))))

(declare-fun b!4711419 () Bool)

(assert (=> b!4711419 (= e!2938550 (contains!15987 (toList!5805 lt!1876064) (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))))))

(assert (= (and d!1499277 res!1991305) b!4711418))

(assert (= (and b!4711418 res!1991306) b!4711419))

(declare-fun m!5637567 () Bool)

(assert (=> d!1499277 m!5637567))

(declare-fun m!5637569 () Bool)

(assert (=> d!1499277 m!5637569))

(declare-fun m!5637571 () Bool)

(assert (=> d!1499277 m!5637571))

(declare-fun m!5637573 () Bool)

(assert (=> d!1499277 m!5637573))

(declare-fun m!5637575 () Bool)

(assert (=> b!4711418 m!5637575))

(declare-fun m!5637577 () Bool)

(assert (=> b!4711419 m!5637577))

(assert (=> b!4711094 d!1499277))

(declare-fun d!1499279 () Bool)

(assert (=> d!1499279 (= (-!732 (+!2222 lt!1875597 (tuple2!54227 key!4653 (_2!30407 (h!58994 oldBucket!34)))) key!4653) lt!1875597)))

(declare-fun lt!1876070 () Unit!128004)

(declare-fun choose!33126 (ListMap!5169 K!14045 V!14291) Unit!128004)

(assert (=> d!1499279 (= lt!1876070 (choose!33126 lt!1875597 key!4653 (_2!30407 (h!58994 oldBucket!34))))))

(assert (=> d!1499279 (not (contains!15984 lt!1875597 key!4653))))

(assert (=> d!1499279 (= (addThenRemoveForNewKeyIsSame!63 lt!1875597 key!4653 (_2!30407 (h!58994 oldBucket!34))) lt!1876070)))

(declare-fun bs!1102431 () Bool)

(assert (= bs!1102431 d!1499279))

(assert (=> bs!1102431 m!5636741))

(assert (=> bs!1102431 m!5636741))

(assert (=> bs!1102431 m!5636743))

(declare-fun m!5637579 () Bool)

(assert (=> bs!1102431 m!5637579))

(assert (=> bs!1102431 m!5636729))

(assert (=> b!4711094 d!1499279))

(declare-fun bs!1102432 () Bool)

(declare-fun d!1499281 () Bool)

(assert (= bs!1102432 (and d!1499281 d!1499247)))

(declare-fun lambda!212889 () Int)

(assert (=> bs!1102432 (not (= lambda!212889 lambda!212867))))

(declare-fun bs!1102433 () Bool)

(assert (= bs!1102433 (and d!1499281 d!1499243)))

(assert (=> bs!1102433 (not (= lambda!212889 lambda!212866))))

(declare-fun bs!1102434 () Bool)

(assert (= bs!1102434 (and d!1499281 d!1499261)))

(assert (=> bs!1102434 (not (= lambda!212889 lambda!212874))))

(declare-fun bs!1102435 () Bool)

(assert (= bs!1102435 (and d!1499281 d!1499259)))

(assert (=> bs!1102435 (not (= lambda!212889 lambda!212873))))

(declare-fun bs!1102436 () Bool)

(assert (= bs!1102436 (and d!1499281 start!478700)))

(assert (=> bs!1102436 (not (= lambda!212889 lambda!212759))))

(declare-fun bs!1102437 () Bool)

(assert (= bs!1102437 (and d!1499281 d!1499229)))

(assert (=> bs!1102437 (not (= lambda!212889 lambda!212863))))

(declare-fun bs!1102438 () Bool)

(assert (= bs!1102438 (and d!1499281 d!1499251)))

(assert (=> bs!1102438 (not (= lambda!212889 lambda!212872))))

(assert (=> d!1499281 true))

(assert (=> d!1499281 (= (allKeysSameHashInMap!1872 lm!2023 hashF!1323) (forall!11491 (toList!5806 lm!2023) lambda!212889))))

(declare-fun bs!1102439 () Bool)

(assert (= bs!1102439 d!1499281))

(declare-fun m!5637581 () Bool)

(assert (=> bs!1102439 m!5637581))

(assert (=> b!4711105 d!1499281))

(declare-fun d!1499283 () Bool)

(assert (=> d!1499283 (= (eq!1095 lt!1875599 lt!1875595) (= (content!9337 (toList!5805 lt!1875599)) (content!9337 (toList!5805 lt!1875595))))))

(declare-fun bs!1102440 () Bool)

(assert (= bs!1102440 d!1499283))

(declare-fun m!5637583 () Bool)

(assert (=> bs!1102440 m!5637583))

(declare-fun m!5637585 () Bool)

(assert (=> bs!1102440 m!5637585))

(assert (=> b!4711093 d!1499283))

(declare-fun d!1499285 () Bool)

(assert (=> d!1499285 (= (eq!1095 lt!1875593 lt!1875599) (= (content!9337 (toList!5805 lt!1875593)) (content!9337 (toList!5805 lt!1875599))))))

(declare-fun bs!1102441 () Bool)

(assert (= bs!1102441 d!1499285))

(declare-fun m!5637587 () Bool)

(assert (=> bs!1102441 m!5637587))

(assert (=> bs!1102441 m!5637583))

(assert (=> b!4711093 d!1499285))

(declare-fun d!1499287 () Bool)

(declare-fun e!2938551 () Bool)

(assert (=> d!1499287 e!2938551))

(declare-fun res!1991307 () Bool)

(assert (=> d!1499287 (=> (not res!1991307) (not e!2938551))))

(declare-fun lt!1876071 () ListMap!5169)

(assert (=> d!1499287 (= res!1991307 (not (contains!15984 lt!1876071 key!4653)))))

(assert (=> d!1499287 (= lt!1876071 (ListMap!5170 (removePresrvNoDuplicatedKeys!389 (toList!5805 lt!1875591) key!4653)))))

(assert (=> d!1499287 (= (-!732 lt!1875591 key!4653) lt!1876071)))

(declare-fun b!4711422 () Bool)

(assert (=> b!4711422 (= e!2938551 (= ((_ map and) (content!9338 (keys!18883 lt!1875591)) ((_ map not) (store ((as const (Array K!14045 Bool)) false) key!4653 true))) (content!9338 (keys!18883 lt!1876071))))))

(assert (= (and d!1499287 res!1991307) b!4711422))

(declare-fun m!5637589 () Bool)

(assert (=> d!1499287 m!5637589))

(declare-fun m!5637591 () Bool)

(assert (=> d!1499287 m!5637591))

(assert (=> b!4711422 m!5637545))

(declare-fun m!5637593 () Bool)

(assert (=> b!4711422 m!5637593))

(declare-fun m!5637595 () Bool)

(assert (=> b!4711422 m!5637595))

(assert (=> b!4711422 m!5637593))

(declare-fun m!5637597 () Bool)

(assert (=> b!4711422 m!5637597))

(declare-fun m!5637599 () Bool)

(assert (=> b!4711422 m!5637599))

(assert (=> b!4711422 m!5637597))

(assert (=> b!4711093 d!1499287))

(declare-fun d!1499289 () Bool)

(assert (=> d!1499289 (eq!1095 (-!732 lt!1875605 key!4653) (-!732 lt!1875591 key!4653))))

(declare-fun lt!1876074 () Unit!128004)

(declare-fun choose!33127 (ListMap!5169 ListMap!5169 K!14045) Unit!128004)

(assert (=> d!1499289 (= lt!1876074 (choose!33127 lt!1875605 lt!1875591 key!4653))))

(assert (=> d!1499289 (eq!1095 lt!1875605 lt!1875591)))

(assert (=> d!1499289 (= (lemmaRemovePreservesEq!110 lt!1875605 lt!1875591 key!4653) lt!1876074)))

(declare-fun bs!1102442 () Bool)

(assert (= bs!1102442 d!1499289))

(assert (=> bs!1102442 m!5636765))

(assert (=> bs!1102442 m!5636739))

(assert (=> bs!1102442 m!5636739))

(assert (=> bs!1102442 m!5636765))

(declare-fun m!5637601 () Bool)

(assert (=> bs!1102442 m!5637601))

(declare-fun m!5637603 () Bool)

(assert (=> bs!1102442 m!5637603))

(assert (=> bs!1102442 m!5636799))

(assert (=> b!4711093 d!1499289))

(declare-fun b!4711427 () Bool)

(declare-fun e!2938554 () Bool)

(declare-fun tp!1347526 () Bool)

(assert (=> b!4711427 (= e!2938554 (and tp_is_empty!31125 tp_is_empty!31127 tp!1347526))))

(assert (=> b!4711113 (= tp!1347513 e!2938554)))

(assert (= (and b!4711113 ((_ is Cons!52683) (t!360047 newBucket!218))) b!4711427))

(declare-fun b!4711432 () Bool)

(declare-fun e!2938557 () Bool)

(declare-fun tp!1347531 () Bool)

(declare-fun tp!1347532 () Bool)

(assert (=> b!4711432 (= e!2938557 (and tp!1347531 tp!1347532))))

(assert (=> b!4711100 (= tp!1347511 e!2938557)))

(assert (= (and b!4711100 ((_ is Cons!52684) (toList!5806 lm!2023))) b!4711432))

(declare-fun e!2938558 () Bool)

(declare-fun tp!1347533 () Bool)

(declare-fun b!4711433 () Bool)

(assert (=> b!4711433 (= e!2938558 (and tp_is_empty!31125 tp_is_empty!31127 tp!1347533))))

(assert (=> b!4711104 (= tp!1347512 e!2938558)))

(assert (= (and b!4711104 ((_ is Cons!52683) (t!360047 oldBucket!34))) b!4711433))

(declare-fun b_lambda!177659 () Bool)

(assert (= b_lambda!177655 (or start!478700 b_lambda!177659)))

(declare-fun bs!1102443 () Bool)

(declare-fun d!1499291 () Bool)

(assert (= bs!1102443 (and d!1499291 start!478700)))

(assert (=> bs!1102443 (= (dynLambda!21779 lambda!212759 (h!58995 (toList!5806 lm!2023))) (noDuplicateKeys!1958 (_2!30408 (h!58995 (toList!5806 lm!2023)))))))

(assert (=> bs!1102443 m!5637423))

(assert (=> b!4711315 d!1499291))

(check-sat (not b!4711410) (not b!4711373) (not bm!329419) (not b!4711335) (not b!4711273) (not d!1499281) (not b!4711370) (not d!1499279) (not d!1499273) (not bm!329422) (not bm!329415) (not b!4711390) (not b!4711403) (not b!4711307) (not d!1499217) (not d!1499287) (not b!4711374) (not b!4711432) (not b!4711427) (not d!1499263) (not d!1499275) (not b!4711366) (not b!4711369) (not b!4711305) (not b!4711378) (not d!1499253) (not bm!329399) (not b!4711360) (not d!1499259) (not b!4711359) (not d!1499225) (not bm!329416) (not b!4711404) (not b!4711334) (not d!1499247) (not d!1499243) (not b!4711379) (not b!4711304) (not b!4711356) (not bm!329408) (not bm!329401) (not bm!329420) (not b!4711188) (not d!1499257) (not bm!329413) (not bs!1102443) (not d!1499245) (not d!1499251) (not d!1499227) (not b!4711364) (not d!1499207) (not b!4711368) tp_is_empty!31125 (not bm!329400) (not d!1499269) (not b!4711433) (not b!4711388) (not b!4711363) (not b!4711381) (not d!1499271) (not b!4711271) (not bm!329421) (not d!1499277) (not d!1499193) (not d!1499145) (not b!4711272) (not b!4711384) (not b!4711419) (not b!4711422) (not d!1499241) (not bm!329414) (not d!1499265) (not bm!329423) (not d!1499249) (not d!1499289) (not b!4711411) (not bm!329418) (not b!4711306) (not b!4711177) (not b!4711405) (not b!4711392) tp_is_empty!31127 (not b!4711308) (not b!4711361) (not b!4711365) (not d!1499215) (not b!4711409) (not b!4711416) (not d!1499261) (not d!1499283) (not bm!329417) (not b!4711377) (not b!4711355) (not d!1499219) (not b!4711418) (not d!1499229) (not b!4711375) (not bm!329409) (not d!1499209) (not b!4711296) (not bm!329424) (not b!4711372) (not b_lambda!177659) (not b!4711417) (not b!4711357) (not b!4711406) (not d!1499147) (not d!1499285) (not d!1499239) (not b!4711385) (not b!4711383) (not b!4711316) (not b!4711354) (not b!4711176) (not b!4711295) (not b!4711332) (not bm!329410))
(check-sat)
