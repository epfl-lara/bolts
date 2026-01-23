; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461356 () Bool)

(assert start!461356)

(declare-fun b!4612755 () Bool)

(declare-fun tp_is_empty!28965 () Bool)

(declare-fun tp!1341386 () Bool)

(declare-fun tp_is_empty!28967 () Bool)

(declare-fun e!2877281 () Bool)

(assert (=> b!4612755 (= e!2877281 (and tp_is_empty!28965 tp_is_empty!28967 tp!1341386))))

(declare-fun b!4612756 () Bool)

(declare-fun res!1931856 () Bool)

(declare-fun e!2877276 () Bool)

(assert (=> b!4612756 (=> res!1931856 e!2877276)))

(declare-datatypes ((K!12695 0))(
  ( (K!12696 (val!18427 Int)) )
))
(declare-datatypes ((V!12941 0))(
  ( (V!12942 (val!18428 Int)) )
))
(declare-datatypes ((tuple2!52118 0))(
  ( (tuple2!52119 (_1!29353 K!12695) (_2!29353 V!12941)) )
))
(declare-datatypes ((List!51435 0))(
  ( (Nil!51311) (Cons!51311 (h!57313 tuple2!52118) (t!358429 List!51435)) )
))
(declare-fun lt!1767948 () List!51435)

(declare-fun key!4968 () K!12695)

(declare-fun containsKey!2288 (List!51435 K!12695) Bool)

(assert (=> b!4612756 (= res!1931856 (containsKey!2288 lt!1767948 key!4968))))

(declare-fun b!4612757 () Bool)

(declare-fun res!1931868 () Bool)

(declare-fun e!2877279 () Bool)

(assert (=> b!4612757 (=> res!1931868 e!2877279)))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51435)

(declare-datatypes ((tuple2!52120 0))(
  ( (tuple2!52121 (_1!29354 (_ BitVec 64)) (_2!29354 List!51435)) )
))
(declare-datatypes ((List!51436 0))(
  ( (Nil!51312) (Cons!51312 (h!57314 tuple2!52120) (t!358430 List!51436)) )
))
(declare-datatypes ((ListMap!4105 0))(
  ( (ListMap!4106 (toList!4806 List!51435)) )
))
(declare-fun extractMap!1474 (List!51436) ListMap!4105)

(assert (=> b!4612757 (= res!1931868 (not (= (extractMap!1474 (Cons!51312 (tuple2!52121 hash!414 lt!1767948) Nil!51312)) (extractMap!1474 (Cons!51312 (tuple2!52121 hash!414 newBucket!224) Nil!51312)))))))

(declare-fun res!1931858 () Bool)

(declare-fun e!2877282 () Bool)

(assert (=> start!461356 (=> (not res!1931858) (not e!2877282))))

(declare-fun oldBucket!40 () List!51435)

(declare-fun noDuplicateKeys!1418 (List!51435) Bool)

(assert (=> start!461356 (= res!1931858 (noDuplicateKeys!1418 oldBucket!40))))

(assert (=> start!461356 e!2877282))

(assert (=> start!461356 true))

(assert (=> start!461356 e!2877281))

(assert (=> start!461356 tp_is_empty!28965))

(declare-fun e!2877284 () Bool)

(assert (=> start!461356 e!2877284))

(declare-fun b!4612758 () Bool)

(declare-fun e!2877278 () Bool)

(declare-fun e!2877277 () Bool)

(assert (=> b!4612758 (= e!2877278 (not e!2877277))))

(declare-fun res!1931862 () Bool)

(assert (=> b!4612758 (=> res!1931862 e!2877277)))

(get-info :version)

(assert (=> b!4612758 (= res!1931862 (or (not ((_ is Cons!51311) oldBucket!40)) (not (= (_1!29353 (h!57313 oldBucket!40)) key!4968))))))

(declare-fun e!2877280 () Bool)

(assert (=> b!4612758 e!2877280))

(declare-fun res!1931866 () Bool)

(assert (=> b!4612758 (=> (not res!1931866) (not e!2877280))))

(declare-fun lt!1767949 () ListMap!4105)

(declare-fun lt!1767953 () ListMap!4105)

(declare-fun addToMapMapFromBucket!879 (List!51435 ListMap!4105) ListMap!4105)

(assert (=> b!4612758 (= res!1931866 (= lt!1767949 (addToMapMapFromBucket!879 oldBucket!40 lt!1767953)))))

(assert (=> b!4612758 (= lt!1767953 (extractMap!1474 Nil!51312))))

(assert (=> b!4612758 true))

(declare-fun b!4612759 () Bool)

(declare-fun res!1931855 () Bool)

(assert (=> b!4612759 (=> (not res!1931855) (not e!2877278))))

(declare-datatypes ((Hashable!5815 0))(
  ( (HashableExt!5814 (__x!31518 Int)) )
))
(declare-fun hashF!1389 () Hashable!5815)

(declare-fun hash!3361 (Hashable!5815 K!12695) (_ BitVec 64))

(assert (=> b!4612759 (= res!1931855 (= (hash!3361 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612760 () Bool)

(declare-fun res!1931859 () Bool)

(assert (=> b!4612760 (=> (not res!1931859) (not e!2877278))))

(declare-fun allKeysSameHash!1272 (List!51435 (_ BitVec 64) Hashable!5815) Bool)

(assert (=> b!4612760 (= res!1931859 (allKeysSameHash!1272 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4612761 () Bool)

(declare-fun tp!1341387 () Bool)

(assert (=> b!4612761 (= e!2877284 (and tp_is_empty!28965 tp_is_empty!28967 tp!1341387))))

(declare-fun b!4612762 () Bool)

(declare-fun e!2877283 () Bool)

(assert (=> b!4612762 (= e!2877279 e!2877283)))

(declare-fun res!1931867 () Bool)

(assert (=> b!4612762 (=> res!1931867 e!2877283)))

(declare-fun lt!1767950 () ListMap!4105)

(assert (=> b!4612762 (= res!1931867 (not (= lt!1767950 (addToMapMapFromBucket!879 newBucket!224 (ListMap!4106 Nil!51311)))))))

(assert (=> b!4612762 (= lt!1767950 (addToMapMapFromBucket!879 lt!1767948 (ListMap!4106 Nil!51311)))))

(declare-fun b!4612763 () Bool)

(declare-fun res!1931865 () Bool)

(assert (=> b!4612763 (=> (not res!1931865) (not e!2877282))))

(assert (=> b!4612763 (= res!1931865 (noDuplicateKeys!1418 newBucket!224))))

(declare-fun b!4612764 () Bool)

(assert (=> b!4612764 (= e!2877282 e!2877278)))

(declare-fun res!1931864 () Bool)

(assert (=> b!4612764 (=> (not res!1931864) (not e!2877278))))

(declare-fun contains!14284 (ListMap!4105 K!12695) Bool)

(assert (=> b!4612764 (= res!1931864 (contains!14284 lt!1767949 key!4968))))

(assert (=> b!4612764 (= lt!1767949 (extractMap!1474 (Cons!51312 (tuple2!52121 hash!414 oldBucket!40) Nil!51312)))))

(declare-fun b!4612765 () Bool)

(assert (=> b!4612765 (= e!2877277 e!2877279)))

(declare-fun res!1931857 () Bool)

(assert (=> b!4612765 (=> res!1931857 e!2877279)))

(assert (=> b!4612765 (= res!1931857 (not (= lt!1767948 newBucket!224)))))

(declare-fun tail!8065 (List!51435) List!51435)

(assert (=> b!4612765 (= lt!1767948 (tail!8065 oldBucket!40))))

(declare-fun b!4612766 () Bool)

(declare-fun res!1931861 () Bool)

(assert (=> b!4612766 (=> (not res!1931861) (not e!2877282))))

(assert (=> b!4612766 (= res!1931861 (allKeysSameHash!1272 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612767 () Bool)

(assert (=> b!4612767 (= e!2877276 (noDuplicateKeys!1418 lt!1767948))))

(declare-fun b!4612768 () Bool)

(assert (=> b!4612768 (= e!2877283 e!2877276)))

(declare-fun res!1931860 () Bool)

(assert (=> b!4612768 (=> res!1931860 e!2877276)))

(declare-fun eq!761 (ListMap!4105 ListMap!4105) Bool)

(declare-fun +!1803 (ListMap!4105 tuple2!52118) ListMap!4105)

(assert (=> b!4612768 (= res!1931860 (not (eq!761 (+!1803 lt!1767950 (h!57313 oldBucket!40)) (addToMapMapFromBucket!879 oldBucket!40 (ListMap!4106 Nil!51311)))))))

(declare-fun lt!1767951 () tuple2!52118)

(assert (=> b!4612768 (eq!761 (addToMapMapFromBucket!879 (Cons!51311 lt!1767951 lt!1767948) (ListMap!4106 Nil!51311)) (+!1803 lt!1767950 lt!1767951))))

(declare-datatypes ((Unit!109492 0))(
  ( (Unit!109493) )
))
(declare-fun lt!1767952 () Unit!109492)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!12 (tuple2!52118 List!51435 ListMap!4105) Unit!109492)

(assert (=> b!4612768 (= lt!1767952 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!12 lt!1767951 lt!1767948 (ListMap!4106 Nil!51311)))))

(declare-fun head!9578 (List!51435) tuple2!52118)

(assert (=> b!4612768 (= lt!1767951 (head!9578 oldBucket!40))))

(declare-fun b!4612769 () Bool)

(declare-fun res!1931863 () Bool)

(assert (=> b!4612769 (=> (not res!1931863) (not e!2877282))))

(declare-fun removePairForKey!1041 (List!51435 K!12695) List!51435)

(assert (=> b!4612769 (= res!1931863 (= (removePairForKey!1041 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4612770 () Bool)

(assert (=> b!4612770 (= e!2877280 (= lt!1767953 (ListMap!4106 Nil!51311)))))

(assert (= (and start!461356 res!1931858) b!4612763))

(assert (= (and b!4612763 res!1931865) b!4612769))

(assert (= (and b!4612769 res!1931863) b!4612766))

(assert (= (and b!4612766 res!1931861) b!4612764))

(assert (= (and b!4612764 res!1931864) b!4612759))

(assert (= (and b!4612759 res!1931855) b!4612760))

(assert (= (and b!4612760 res!1931859) b!4612758))

(assert (= (and b!4612758 res!1931866) b!4612770))

(assert (= (and b!4612758 (not res!1931862)) b!4612765))

(assert (= (and b!4612765 (not res!1931857)) b!4612757))

(assert (= (and b!4612757 (not res!1931868)) b!4612762))

(assert (= (and b!4612762 (not res!1931867)) b!4612768))

(assert (= (and b!4612768 (not res!1931860)) b!4612756))

(assert (= (and b!4612756 (not res!1931856)) b!4612767))

(assert (= (and start!461356 ((_ is Cons!51311) oldBucket!40)) b!4612755))

(assert (= (and start!461356 ((_ is Cons!51311) newBucket!224)) b!4612761))

(declare-fun m!5444043 () Bool)

(assert (=> b!4612762 m!5444043))

(declare-fun m!5444045 () Bool)

(assert (=> b!4612762 m!5444045))

(declare-fun m!5444047 () Bool)

(assert (=> b!4612764 m!5444047))

(declare-fun m!5444049 () Bool)

(assert (=> b!4612764 m!5444049))

(declare-fun m!5444051 () Bool)

(assert (=> b!4612769 m!5444051))

(declare-fun m!5444053 () Bool)

(assert (=> b!4612757 m!5444053))

(declare-fun m!5444055 () Bool)

(assert (=> b!4612757 m!5444055))

(declare-fun m!5444057 () Bool)

(assert (=> b!4612765 m!5444057))

(declare-fun m!5444059 () Bool)

(assert (=> b!4612763 m!5444059))

(declare-fun m!5444061 () Bool)

(assert (=> b!4612758 m!5444061))

(declare-fun m!5444063 () Bool)

(assert (=> b!4612758 m!5444063))

(declare-fun m!5444065 () Bool)

(assert (=> b!4612760 m!5444065))

(declare-fun m!5444067 () Bool)

(assert (=> start!461356 m!5444067))

(declare-fun m!5444069 () Bool)

(assert (=> b!4612766 m!5444069))

(declare-fun m!5444071 () Bool)

(assert (=> b!4612759 m!5444071))

(declare-fun m!5444073 () Bool)

(assert (=> b!4612756 m!5444073))

(declare-fun m!5444075 () Bool)

(assert (=> b!4612768 m!5444075))

(declare-fun m!5444077 () Bool)

(assert (=> b!4612768 m!5444077))

(declare-fun m!5444079 () Bool)

(assert (=> b!4612768 m!5444079))

(declare-fun m!5444081 () Bool)

(assert (=> b!4612768 m!5444081))

(declare-fun m!5444083 () Bool)

(assert (=> b!4612768 m!5444083))

(assert (=> b!4612768 m!5444075))

(assert (=> b!4612768 m!5444077))

(declare-fun m!5444085 () Bool)

(assert (=> b!4612768 m!5444085))

(assert (=> b!4612768 m!5444079))

(assert (=> b!4612768 m!5444083))

(declare-fun m!5444087 () Bool)

(assert (=> b!4612768 m!5444087))

(declare-fun m!5444089 () Bool)

(assert (=> b!4612768 m!5444089))

(declare-fun m!5444091 () Bool)

(assert (=> b!4612767 m!5444091))

(check-sat (not b!4612760) (not b!4612757) (not b!4612758) (not b!4612768) tp_is_empty!28965 (not b!4612759) (not start!461356) (not b!4612765) (not b!4612767) (not b!4612763) (not b!4612755) (not b!4612764) (not b!4612761) (not b!4612769) (not b!4612762) tp_is_empty!28967 (not b!4612756) (not b!4612766))
(check-sat)
