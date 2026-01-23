; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461656 () Bool)

(assert start!461656)

(declare-fun b!4615037 () Bool)

(declare-fun res!1933412 () Bool)

(declare-fun e!2878692 () Bool)

(assert (=> b!4615037 (=> (not res!1933412) (not e!2878692))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12745 0))(
  ( (K!12746 (val!18467 Int)) )
))
(declare-fun key!4968 () K!12745)

(declare-datatypes ((Hashable!5835 0))(
  ( (HashableExt!5834 (__x!31538 Int)) )
))
(declare-fun hashF!1389 () Hashable!5835)

(declare-fun hash!3389 (Hashable!5835 K!12745) (_ BitVec 64))

(assert (=> b!4615037 (= res!1933412 (= (hash!3389 hashF!1389 key!4968) hash!414))))

(declare-fun b!4615038 () Bool)

(declare-fun e!2878693 () Bool)

(declare-fun e!2878694 () Bool)

(assert (=> b!4615038 (= e!2878693 e!2878694)))

(declare-fun res!1933401 () Bool)

(assert (=> b!4615038 (=> res!1933401 e!2878694)))

(declare-datatypes ((V!12991 0))(
  ( (V!12992 (val!18468 Int)) )
))
(declare-datatypes ((tuple2!52198 0))(
  ( (tuple2!52199 (_1!29393 K!12745) (_2!29393 V!12991)) )
))
(declare-datatypes ((List!51483 0))(
  ( (Nil!51359) (Cons!51359 (h!57369 tuple2!52198) (t!358485 List!51483)) )
))
(declare-datatypes ((ListMap!4145 0))(
  ( (ListMap!4146 (toList!4841 List!51483)) )
))
(declare-fun lt!1770362 () ListMap!4145)

(declare-fun contains!14324 (ListMap!4145 K!12745) Bool)

(assert (=> b!4615038 (= res!1933401 (contains!14324 lt!1770362 key!4968))))

(declare-fun lt!1770367 () ListMap!4145)

(assert (=> b!4615038 (not (contains!14324 lt!1770367 key!4968))))

(declare-datatypes ((Unit!110008 0))(
  ( (Unit!110009) )
))
(declare-fun lt!1770356 () Unit!110008)

(declare-datatypes ((tuple2!52200 0))(
  ( (tuple2!52201 (_1!29394 (_ BitVec 64)) (_2!29394 List!51483)) )
))
(declare-datatypes ((List!51484 0))(
  ( (Nil!51360) (Cons!51360 (h!57370 tuple2!52200) (t!358486 List!51484)) )
))
(declare-fun lt!1770359 () List!51484)

(declare-datatypes ((ListLongMap!3431 0))(
  ( (ListLongMap!3432 (toList!4842 List!51484)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!352 (ListLongMap!3431 K!12745 Hashable!5835) Unit!110008)

(assert (=> b!4615038 (= lt!1770356 (lemmaNotInItsHashBucketThenNotInMap!352 (ListLongMap!3432 lt!1770359) key!4968 hashF!1389))))

(declare-fun res!1933408 () Bool)

(declare-fun e!2878689 () Bool)

(assert (=> start!461656 (=> (not res!1933408) (not e!2878689))))

(declare-fun oldBucket!40 () List!51483)

(declare-fun noDuplicateKeys!1438 (List!51483) Bool)

(assert (=> start!461656 (= res!1933408 (noDuplicateKeys!1438 oldBucket!40))))

(assert (=> start!461656 e!2878689))

(assert (=> start!461656 true))

(declare-fun e!2878688 () Bool)

(assert (=> start!461656 e!2878688))

(declare-fun tp_is_empty!29045 () Bool)

(assert (=> start!461656 tp_is_empty!29045))

(declare-fun e!2878696 () Bool)

(assert (=> start!461656 e!2878696))

(declare-fun b!4615039 () Bool)

(assert (=> b!4615039 (= e!2878689 e!2878692)))

(declare-fun res!1933402 () Bool)

(assert (=> b!4615039 (=> (not res!1933402) (not e!2878692))))

(declare-fun lt!1770361 () ListMap!4145)

(assert (=> b!4615039 (= res!1933402 (contains!14324 lt!1770361 key!4968))))

(declare-fun extractMap!1494 (List!51484) ListMap!4145)

(assert (=> b!4615039 (= lt!1770361 (extractMap!1494 (Cons!51360 (tuple2!52201 hash!414 oldBucket!40) Nil!51360)))))

(declare-fun b!4615040 () Bool)

(declare-fun e!2878690 () Bool)

(assert (=> b!4615040 (= e!2878692 (not e!2878690))))

(declare-fun res!1933418 () Bool)

(assert (=> b!4615040 (=> res!1933418 e!2878690)))

(get-info :version)

(assert (=> b!4615040 (= res!1933418 (or (not ((_ is Cons!51359) oldBucket!40)) (not (= (_1!29393 (h!57369 oldBucket!40)) key!4968))))))

(declare-fun e!2878686 () Bool)

(assert (=> b!4615040 e!2878686))

(declare-fun res!1933417 () Bool)

(assert (=> b!4615040 (=> (not res!1933417) (not e!2878686))))

(declare-fun lt!1770365 () ListMap!4145)

(declare-fun addToMapMapFromBucket!899 (List!51483 ListMap!4145) ListMap!4145)

(assert (=> b!4615040 (= res!1933417 (= lt!1770361 (addToMapMapFromBucket!899 oldBucket!40 lt!1770365)))))

(assert (=> b!4615040 (= lt!1770365 (extractMap!1494 Nil!51360))))

(assert (=> b!4615040 true))

(declare-fun b!4615041 () Bool)

(declare-fun e!2878685 () Bool)

(assert (=> b!4615041 (= e!2878685 true)))

(declare-fun lt!1770363 () Bool)

(declare-fun lt!1770364 () ListMap!4145)

(declare-fun eq!781 (ListMap!4145 ListMap!4145) Bool)

(assert (=> b!4615041 (= lt!1770363 (eq!781 lt!1770364 lt!1770361))))

(declare-fun b!4615042 () Bool)

(assert (=> b!4615042 (= e!2878686 (= lt!1770365 (ListMap!4146 Nil!51359)))))

(declare-fun b!4615043 () Bool)

(declare-fun e!2878691 () Bool)

(declare-fun e!2878687 () Bool)

(assert (=> b!4615043 (= e!2878691 e!2878687)))

(declare-fun res!1933406 () Bool)

(assert (=> b!4615043 (=> res!1933406 e!2878687)))

(declare-fun newBucket!224 () List!51483)

(assert (=> b!4615043 (= res!1933406 (not (= lt!1770362 (addToMapMapFromBucket!899 newBucket!224 (ListMap!4146 Nil!51359)))))))

(declare-fun lt!1770357 () List!51483)

(assert (=> b!4615043 (= lt!1770362 (addToMapMapFromBucket!899 lt!1770357 (ListMap!4146 Nil!51359)))))

(declare-fun b!4615044 () Bool)

(declare-fun res!1933416 () Bool)

(assert (=> b!4615044 (=> res!1933416 e!2878693)))

(assert (=> b!4615044 (= res!1933416 (not (= lt!1770362 lt!1770367)))))

(declare-fun b!4615045 () Bool)

(declare-fun res!1933405 () Bool)

(assert (=> b!4615045 (=> (not res!1933405) (not e!2878689))))

(declare-fun allKeysSameHash!1292 (List!51483 (_ BitVec 64) Hashable!5835) Bool)

(assert (=> b!4615045 (= res!1933405 (allKeysSameHash!1292 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4615046 () Bool)

(assert (=> b!4615046 (= e!2878687 e!2878693)))

(declare-fun res!1933414 () Bool)

(assert (=> b!4615046 (=> res!1933414 e!2878693)))

(declare-fun lt!1770366 () ListMap!4145)

(assert (=> b!4615046 (= res!1933414 (not (eq!781 lt!1770364 lt!1770366)))))

(assert (=> b!4615046 (= lt!1770366 (addToMapMapFromBucket!899 oldBucket!40 (ListMap!4146 Nil!51359)))))

(declare-fun +!1823 (ListMap!4145 tuple2!52198) ListMap!4145)

(assert (=> b!4615046 (= lt!1770364 (+!1823 lt!1770362 (h!57369 oldBucket!40)))))

(declare-fun lt!1770355 () tuple2!52198)

(assert (=> b!4615046 (eq!781 (addToMapMapFromBucket!899 (Cons!51359 lt!1770355 lt!1770357) (ListMap!4146 Nil!51359)) (+!1823 lt!1770362 lt!1770355))))

(declare-fun lt!1770358 () Unit!110008)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!32 (tuple2!52198 List!51483 ListMap!4145) Unit!110008)

(assert (=> b!4615046 (= lt!1770358 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!32 lt!1770355 lt!1770357 (ListMap!4146 Nil!51359)))))

(declare-fun head!9598 (List!51483) tuple2!52198)

(assert (=> b!4615046 (= lt!1770355 (head!9598 oldBucket!40))))

(declare-fun b!4615047 () Bool)

(declare-fun res!1933415 () Bool)

(assert (=> b!4615047 (=> (not res!1933415) (not e!2878692))))

(assert (=> b!4615047 (= res!1933415 (allKeysSameHash!1292 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4615048 () Bool)

(declare-fun res!1933410 () Bool)

(assert (=> b!4615048 (=> (not res!1933410) (not e!2878689))))

(assert (=> b!4615048 (= res!1933410 (noDuplicateKeys!1438 newBucket!224))))

(declare-fun b!4615049 () Bool)

(declare-fun res!1933403 () Bool)

(assert (=> b!4615049 (=> (not res!1933403) (not e!2878689))))

(declare-fun removePairForKey!1061 (List!51483 K!12745) List!51483)

(assert (=> b!4615049 (= res!1933403 (= (removePairForKey!1061 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4615050 () Bool)

(declare-fun res!1933404 () Bool)

(assert (=> b!4615050 (=> res!1933404 e!2878693)))

(declare-fun containsKey!2316 (List!51483 K!12745) Bool)

(assert (=> b!4615050 (= res!1933404 (containsKey!2316 lt!1770357 key!4968))))

(declare-fun b!4615051 () Bool)

(declare-fun tp!1341538 () Bool)

(declare-fun tp_is_empty!29047 () Bool)

(assert (=> b!4615051 (= e!2878696 (and tp_is_empty!29045 tp_is_empty!29047 tp!1341538))))

(declare-fun b!4615052 () Bool)

(declare-fun e!2878695 () Bool)

(assert (=> b!4615052 (= e!2878695 e!2878691)))

(declare-fun res!1933407 () Bool)

(assert (=> b!4615052 (=> res!1933407 e!2878691)))

(assert (=> b!4615052 (= res!1933407 (not (= lt!1770367 (extractMap!1494 (Cons!51360 (tuple2!52201 hash!414 newBucket!224) Nil!51360)))))))

(assert (=> b!4615052 (= lt!1770367 (extractMap!1494 lt!1770359))))

(assert (=> b!4615052 (= lt!1770359 (Cons!51360 (tuple2!52201 hash!414 lt!1770357) Nil!51360))))

(declare-fun b!4615053 () Bool)

(assert (=> b!4615053 (= e!2878690 e!2878695)))

(declare-fun res!1933411 () Bool)

(assert (=> b!4615053 (=> res!1933411 e!2878695)))

(assert (=> b!4615053 (= res!1933411 (not (= lt!1770357 newBucket!224)))))

(declare-fun tail!8085 (List!51483) List!51483)

(assert (=> b!4615053 (= lt!1770357 (tail!8085 oldBucket!40))))

(declare-fun tp!1341539 () Bool)

(declare-fun b!4615054 () Bool)

(assert (=> b!4615054 (= e!2878688 (and tp_is_empty!29045 tp_is_empty!29047 tp!1341539))))

(declare-fun b!4615055 () Bool)

(assert (=> b!4615055 (= e!2878694 e!2878685)))

(declare-fun res!1933409 () Bool)

(assert (=> b!4615055 (=> res!1933409 e!2878685)))

(declare-fun -!528 (ListMap!4145 K!12745) ListMap!4145)

(assert (=> b!4615055 (= res!1933409 (not (= (-!528 lt!1770364 key!4968) lt!1770362)))))

(assert (=> b!4615055 (= (-!528 (+!1823 lt!1770362 (tuple2!52199 key!4968 (_2!29393 (h!57369 oldBucket!40)))) key!4968) lt!1770362)))

(declare-fun lt!1770360 () Unit!110008)

(declare-fun addThenRemoveForNewKeyIsSame!11 (ListMap!4145 K!12745 V!12991) Unit!110008)

(assert (=> b!4615055 (= lt!1770360 (addThenRemoveForNewKeyIsSame!11 lt!1770362 key!4968 (_2!29393 (h!57369 oldBucket!40))))))

(declare-fun b!4615056 () Bool)

(declare-fun res!1933413 () Bool)

(assert (=> b!4615056 (=> res!1933413 e!2878685)))

(assert (=> b!4615056 (= res!1933413 (not (= lt!1770361 lt!1770366)))))

(assert (= (and start!461656 res!1933408) b!4615048))

(assert (= (and b!4615048 res!1933410) b!4615049))

(assert (= (and b!4615049 res!1933403) b!4615045))

(assert (= (and b!4615045 res!1933405) b!4615039))

(assert (= (and b!4615039 res!1933402) b!4615037))

(assert (= (and b!4615037 res!1933412) b!4615047))

(assert (= (and b!4615047 res!1933415) b!4615040))

(assert (= (and b!4615040 res!1933417) b!4615042))

(assert (= (and b!4615040 (not res!1933418)) b!4615053))

(assert (= (and b!4615053 (not res!1933411)) b!4615052))

(assert (= (and b!4615052 (not res!1933407)) b!4615043))

(assert (= (and b!4615043 (not res!1933406)) b!4615046))

(assert (= (and b!4615046 (not res!1933414)) b!4615050))

(assert (= (and b!4615050 (not res!1933404)) b!4615044))

(assert (= (and b!4615044 (not res!1933416)) b!4615038))

(assert (= (and b!4615038 (not res!1933401)) b!4615055))

(assert (= (and b!4615055 (not res!1933409)) b!4615056))

(assert (= (and b!4615056 (not res!1933413)) b!4615041))

(assert (= (and start!461656 ((_ is Cons!51359) oldBucket!40)) b!4615054))

(assert (= (and start!461656 ((_ is Cons!51359) newBucket!224)) b!4615051))

(declare-fun m!5447919 () Bool)

(assert (=> b!4615045 m!5447919))

(declare-fun m!5447921 () Bool)

(assert (=> b!4615041 m!5447921))

(declare-fun m!5447923 () Bool)

(assert (=> b!4615040 m!5447923))

(declare-fun m!5447925 () Bool)

(assert (=> b!4615040 m!5447925))

(declare-fun m!5447927 () Bool)

(assert (=> b!4615043 m!5447927))

(declare-fun m!5447929 () Bool)

(assert (=> b!4615043 m!5447929))

(declare-fun m!5447931 () Bool)

(assert (=> b!4615053 m!5447931))

(declare-fun m!5447933 () Bool)

(assert (=> b!4615037 m!5447933))

(declare-fun m!5447935 () Bool)

(assert (=> b!4615052 m!5447935))

(declare-fun m!5447937 () Bool)

(assert (=> b!4615052 m!5447937))

(declare-fun m!5447939 () Bool)

(assert (=> start!461656 m!5447939))

(declare-fun m!5447941 () Bool)

(assert (=> b!4615046 m!5447941))

(declare-fun m!5447943 () Bool)

(assert (=> b!4615046 m!5447943))

(declare-fun m!5447945 () Bool)

(assert (=> b!4615046 m!5447945))

(declare-fun m!5447947 () Bool)

(assert (=> b!4615046 m!5447947))

(declare-fun m!5447949 () Bool)

(assert (=> b!4615046 m!5447949))

(declare-fun m!5447951 () Bool)

(assert (=> b!4615046 m!5447951))

(assert (=> b!4615046 m!5447947))

(assert (=> b!4615046 m!5447945))

(declare-fun m!5447953 () Bool)

(assert (=> b!4615046 m!5447953))

(declare-fun m!5447955 () Bool)

(assert (=> b!4615046 m!5447955))

(declare-fun m!5447957 () Bool)

(assert (=> b!4615055 m!5447957))

(declare-fun m!5447959 () Bool)

(assert (=> b!4615055 m!5447959))

(assert (=> b!4615055 m!5447959))

(declare-fun m!5447961 () Bool)

(assert (=> b!4615055 m!5447961))

(declare-fun m!5447963 () Bool)

(assert (=> b!4615055 m!5447963))

(declare-fun m!5447965 () Bool)

(assert (=> b!4615038 m!5447965))

(declare-fun m!5447967 () Bool)

(assert (=> b!4615038 m!5447967))

(declare-fun m!5447969 () Bool)

(assert (=> b!4615038 m!5447969))

(declare-fun m!5447971 () Bool)

(assert (=> b!4615039 m!5447971))

(declare-fun m!5447973 () Bool)

(assert (=> b!4615039 m!5447973))

(declare-fun m!5447975 () Bool)

(assert (=> b!4615047 m!5447975))

(declare-fun m!5447977 () Bool)

(assert (=> b!4615049 m!5447977))

(declare-fun m!5447979 () Bool)

(assert (=> b!4615048 m!5447979))

(declare-fun m!5447981 () Bool)

(assert (=> b!4615050 m!5447981))

(check-sat (not b!4615055) (not b!4615040) (not b!4615051) (not b!4615037) tp_is_empty!29047 (not start!461656) (not b!4615041) (not b!4615039) (not b!4615047) (not b!4615054) (not b!4615043) (not b!4615045) tp_is_empty!29045 (not b!4615046) (not b!4615038) (not b!4615049) (not b!4615052) (not b!4615053) (not b!4615050) (not b!4615048))
(check-sat)
