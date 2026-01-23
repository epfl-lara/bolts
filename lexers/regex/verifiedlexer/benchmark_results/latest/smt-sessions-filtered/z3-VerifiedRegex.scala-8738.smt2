; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466296 () Bool)

(assert start!466296)

(declare-fun b!4638942 () Bool)

(declare-fun e!2893823 () Bool)

(declare-fun e!2893831 () Bool)

(assert (=> b!4638942 (= e!2893823 e!2893831)))

(declare-fun res!1947905 () Bool)

(assert (=> b!4638942 (=> res!1947905 e!2893831)))

(declare-datatypes ((K!13095 0))(
  ( (K!13096 (val!18747 Int)) )
))
(declare-datatypes ((V!13341 0))(
  ( (V!13342 (val!18748 Int)) )
))
(declare-datatypes ((tuple2!52758 0))(
  ( (tuple2!52759 (_1!29673 K!13095) (_2!29673 V!13341)) )
))
(declare-datatypes ((List!51852 0))(
  ( (Nil!51728) (Cons!51728 (h!57828 tuple2!52758) (t!358932 List!51852)) )
))
(declare-datatypes ((ListMap!4425 0))(
  ( (ListMap!4426 (toList!5101 List!51852)) )
))
(declare-fun lt!1801628 () ListMap!4425)

(declare-fun key!4968 () K!13095)

(declare-fun lt!1801629 () ListMap!4425)

(declare-fun -!596 (ListMap!4425 K!13095) ListMap!4425)

(assert (=> b!4638942 (= res!1947905 (not (= (-!596 lt!1801628 key!4968) lt!1801629)))))

(declare-fun oldBucket!40 () List!51852)

(declare-fun +!1932 (ListMap!4425 tuple2!52758) ListMap!4425)

(assert (=> b!4638942 (= (-!596 (+!1932 lt!1801629 (tuple2!52759 key!4968 (_2!29673 (h!57828 oldBucket!40)))) key!4968) lt!1801629)))

(declare-datatypes ((Unit!115019 0))(
  ( (Unit!115020) )
))
(declare-fun lt!1801633 () Unit!115019)

(declare-fun addThenRemoveForNewKeyIsSame!27 (ListMap!4425 K!13095 V!13341) Unit!115019)

(assert (=> b!4638942 (= lt!1801633 (addThenRemoveForNewKeyIsSame!27 lt!1801629 key!4968 (_2!29673 (h!57828 oldBucket!40))))))

(declare-fun b!4638943 () Bool)

(declare-fun res!1947914 () Bool)

(declare-fun e!2893824 () Bool)

(assert (=> b!4638943 (=> (not res!1947914) (not e!2893824))))

(declare-datatypes ((Hashable!5975 0))(
  ( (HashableExt!5974 (__x!31678 Int)) )
))
(declare-fun hashF!1389 () Hashable!5975)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun hash!3662 (Hashable!5975 K!13095) (_ BitVec 64))

(assert (=> b!4638943 (= res!1947914 (= (hash!3662 hashF!1389 key!4968) hash!414))))

(declare-fun b!4638944 () Bool)

(declare-fun e!2893832 () Bool)

(declare-fun lt!1801636 () ListMap!4425)

(assert (=> b!4638944 (= e!2893832 (= lt!1801636 (ListMap!4426 Nil!51728)))))

(declare-fun b!4638945 () Bool)

(declare-fun e!2893828 () Bool)

(declare-fun e!2893827 () Bool)

(assert (=> b!4638945 (= e!2893828 e!2893827)))

(declare-fun res!1947909 () Bool)

(assert (=> b!4638945 (=> res!1947909 e!2893827)))

(declare-fun newBucket!224 () List!51852)

(declare-fun addToMapMapFromBucket!1037 (List!51852 ListMap!4425) ListMap!4425)

(assert (=> b!4638945 (= res!1947909 (not (= lt!1801629 (addToMapMapFromBucket!1037 newBucket!224 (ListMap!4426 Nil!51728)))))))

(declare-fun lt!1801632 () List!51852)

(assert (=> b!4638945 (= lt!1801629 (addToMapMapFromBucket!1037 lt!1801632 (ListMap!4426 Nil!51728)))))

(declare-fun b!4638946 () Bool)

(declare-fun tp_is_empty!29605 () Bool)

(declare-fun tp_is_empty!29607 () Bool)

(declare-fun tp!1342738 () Bool)

(declare-fun e!2893833 () Bool)

(assert (=> b!4638946 (= e!2893833 (and tp_is_empty!29605 tp_is_empty!29607 tp!1342738))))

(declare-fun b!4638947 () Bool)

(declare-fun res!1947913 () Bool)

(declare-fun e!2893830 () Bool)

(assert (=> b!4638947 (=> res!1947913 e!2893830)))

(declare-fun containsKey!2598 (List!51852 K!13095) Bool)

(assert (=> b!4638947 (= res!1947913 (containsKey!2598 lt!1801632 key!4968))))

(declare-fun b!4638948 () Bool)

(declare-fun e!2893834 () Bool)

(assert (=> b!4638948 (= e!2893834 e!2893828)))

(declare-fun res!1947906 () Bool)

(assert (=> b!4638948 (=> res!1947906 e!2893828)))

(declare-fun lt!1801637 () ListMap!4425)

(declare-datatypes ((tuple2!52760 0))(
  ( (tuple2!52761 (_1!29674 (_ BitVec 64)) (_2!29674 List!51852)) )
))
(declare-datatypes ((List!51853 0))(
  ( (Nil!51729) (Cons!51729 (h!57829 tuple2!52760) (t!358933 List!51853)) )
))
(declare-fun extractMap!1634 (List!51853) ListMap!4425)

(assert (=> b!4638948 (= res!1947906 (not (= lt!1801637 (extractMap!1634 (Cons!51729 (tuple2!52761 hash!414 newBucket!224) Nil!51729)))))))

(declare-fun lt!1801626 () List!51853)

(assert (=> b!4638948 (= lt!1801637 (extractMap!1634 lt!1801626))))

(assert (=> b!4638948 (= lt!1801626 (Cons!51729 (tuple2!52761 hash!414 lt!1801632) Nil!51729))))

(declare-fun b!4638949 () Bool)

(declare-fun e!2893829 () Bool)

(assert (=> b!4638949 (= e!2893829 e!2893834)))

(declare-fun res!1947904 () Bool)

(assert (=> b!4638949 (=> res!1947904 e!2893834)))

(assert (=> b!4638949 (= res!1947904 (not (= lt!1801632 newBucket!224)))))

(declare-fun tail!8205 (List!51852) List!51852)

(assert (=> b!4638949 (= lt!1801632 (tail!8205 oldBucket!40))))

(declare-fun b!4638950 () Bool)

(declare-fun res!1947899 () Bool)

(declare-fun e!2893825 () Bool)

(assert (=> b!4638950 (=> (not res!1947899) (not e!2893825))))

(declare-fun removePairForKey!1201 (List!51852 K!13095) List!51852)

(assert (=> b!4638950 (= res!1947899 (= (removePairForKey!1201 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4638951 () Bool)

(assert (=> b!4638951 (= e!2893830 e!2893823)))

(declare-fun res!1947907 () Bool)

(assert (=> b!4638951 (=> res!1947907 e!2893823)))

(declare-fun contains!14837 (ListMap!4425 K!13095) Bool)

(assert (=> b!4638951 (= res!1947907 (contains!14837 lt!1801629 key!4968))))

(assert (=> b!4638951 (not (contains!14837 lt!1801637 key!4968))))

(declare-fun lt!1801627 () Unit!115019)

(declare-datatypes ((ListLongMap!3671 0))(
  ( (ListLongMap!3672 (toList!5102 List!51853)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!370 (ListLongMap!3671 K!13095 Hashable!5975) Unit!115019)

(assert (=> b!4638951 (= lt!1801627 (lemmaNotInItsHashBucketThenNotInMap!370 (ListLongMap!3672 lt!1801626) key!4968 hashF!1389))))

(declare-fun b!4638952 () Bool)

(declare-fun res!1947898 () Bool)

(assert (=> b!4638952 (=> res!1947898 e!2893831)))

(declare-fun lt!1801631 () ListMap!4425)

(declare-fun lt!1801635 () ListMap!4425)

(assert (=> b!4638952 (= res!1947898 (not (= lt!1801631 lt!1801635)))))

(declare-fun b!4638953 () Bool)

(declare-fun res!1947908 () Bool)

(assert (=> b!4638953 (=> (not res!1947908) (not e!2893825))))

(declare-fun noDuplicateKeys!1578 (List!51852) Bool)

(assert (=> b!4638953 (= res!1947908 (noDuplicateKeys!1578 newBucket!224))))

(declare-fun b!4638941 () Bool)

(assert (=> b!4638941 (= e!2893824 (not e!2893829))))

(declare-fun res!1947902 () Bool)

(assert (=> b!4638941 (=> res!1947902 e!2893829)))

(get-info :version)

(assert (=> b!4638941 (= res!1947902 (or (not ((_ is Cons!51728) oldBucket!40)) (not (= (_1!29673 (h!57828 oldBucket!40)) key!4968))))))

(assert (=> b!4638941 e!2893832))

(declare-fun res!1947911 () Bool)

(assert (=> b!4638941 (=> (not res!1947911) (not e!2893832))))

(assert (=> b!4638941 (= res!1947911 (= lt!1801631 (addToMapMapFromBucket!1037 oldBucket!40 lt!1801636)))))

(assert (=> b!4638941 (= lt!1801636 (extractMap!1634 Nil!51729))))

(assert (=> b!4638941 true))

(declare-fun res!1947897 () Bool)

(assert (=> start!466296 (=> (not res!1947897) (not e!2893825))))

(assert (=> start!466296 (= res!1947897 (noDuplicateKeys!1578 oldBucket!40))))

(assert (=> start!466296 e!2893825))

(assert (=> start!466296 true))

(assert (=> start!466296 e!2893833))

(assert (=> start!466296 tp_is_empty!29605))

(declare-fun e!2893826 () Bool)

(assert (=> start!466296 e!2893826))

(declare-fun b!4638954 () Bool)

(declare-fun res!1947910 () Bool)

(assert (=> b!4638954 (=> (not res!1947910) (not e!2893825))))

(declare-fun allKeysSameHash!1432 (List!51852 (_ BitVec 64) Hashable!5975) Bool)

(assert (=> b!4638954 (= res!1947910 (allKeysSameHash!1432 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1342739 () Bool)

(declare-fun b!4638955 () Bool)

(assert (=> b!4638955 (= e!2893826 (and tp_is_empty!29605 tp_is_empty!29607 tp!1342739))))

(declare-fun b!4638956 () Bool)

(declare-fun res!1947901 () Bool)

(assert (=> b!4638956 (=> res!1947901 e!2893830)))

(assert (=> b!4638956 (= res!1947901 (not (= lt!1801629 lt!1801637)))))

(declare-fun b!4638957 () Bool)

(declare-fun res!1947903 () Bool)

(assert (=> b!4638957 (=> (not res!1947903) (not e!2893824))))

(assert (=> b!4638957 (= res!1947903 (allKeysSameHash!1432 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4638958 () Bool)

(assert (=> b!4638958 (= e!2893825 e!2893824)))

(declare-fun res!1947900 () Bool)

(assert (=> b!4638958 (=> (not res!1947900) (not e!2893824))))

(assert (=> b!4638958 (= res!1947900 (contains!14837 lt!1801631 key!4968))))

(assert (=> b!4638958 (= lt!1801631 (extractMap!1634 (Cons!51729 (tuple2!52761 hash!414 oldBucket!40) Nil!51729)))))

(declare-fun b!4638959 () Bool)

(assert (=> b!4638959 (= e!2893827 e!2893830)))

(declare-fun res!1947912 () Bool)

(assert (=> b!4638959 (=> res!1947912 e!2893830)))

(declare-fun eq!879 (ListMap!4425 ListMap!4425) Bool)

(assert (=> b!4638959 (= res!1947912 (not (eq!879 lt!1801628 lt!1801635)))))

(assert (=> b!4638959 (= lt!1801635 (addToMapMapFromBucket!1037 oldBucket!40 (ListMap!4426 Nil!51728)))))

(assert (=> b!4638959 (= lt!1801628 (+!1932 lt!1801629 (h!57828 oldBucket!40)))))

(declare-fun lt!1801630 () tuple2!52758)

(assert (=> b!4638959 (eq!879 (addToMapMapFromBucket!1037 (Cons!51728 lt!1801630 lt!1801632) (ListMap!4426 Nil!51728)) (+!1932 lt!1801629 lt!1801630))))

(declare-fun lt!1801634 () Unit!115019)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!130 (tuple2!52758 List!51852 ListMap!4425) Unit!115019)

(assert (=> b!4638959 (= lt!1801634 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!130 lt!1801630 lt!1801632 (ListMap!4426 Nil!51728)))))

(declare-fun head!9698 (List!51852) tuple2!52758)

(assert (=> b!4638959 (= lt!1801630 (head!9698 oldBucket!40))))

(declare-fun b!4638960 () Bool)

(assert (=> b!4638960 (= e!2893831 (eq!879 lt!1801628 lt!1801631))))

(assert (= (and start!466296 res!1947897) b!4638953))

(assert (= (and b!4638953 res!1947908) b!4638950))

(assert (= (and b!4638950 res!1947899) b!4638954))

(assert (= (and b!4638954 res!1947910) b!4638958))

(assert (= (and b!4638958 res!1947900) b!4638943))

(assert (= (and b!4638943 res!1947914) b!4638957))

(assert (= (and b!4638957 res!1947903) b!4638941))

(assert (= (and b!4638941 res!1947911) b!4638944))

(assert (= (and b!4638941 (not res!1947902)) b!4638949))

(assert (= (and b!4638949 (not res!1947904)) b!4638948))

(assert (= (and b!4638948 (not res!1947906)) b!4638945))

(assert (= (and b!4638945 (not res!1947909)) b!4638959))

(assert (= (and b!4638959 (not res!1947912)) b!4638947))

(assert (= (and b!4638947 (not res!1947913)) b!4638956))

(assert (= (and b!4638956 (not res!1947901)) b!4638951))

(assert (= (and b!4638951 (not res!1947907)) b!4638942))

(assert (= (and b!4638942 (not res!1947905)) b!4638952))

(assert (= (and b!4638952 (not res!1947898)) b!4638960))

(assert (= (and start!466296 ((_ is Cons!51728) oldBucket!40)) b!4638946))

(assert (= (and start!466296 ((_ is Cons!51728) newBucket!224)) b!4638955))

(declare-fun m!5497797 () Bool)

(assert (=> b!4638950 m!5497797))

(declare-fun m!5497799 () Bool)

(assert (=> b!4638959 m!5497799))

(declare-fun m!5497801 () Bool)

(assert (=> b!4638959 m!5497801))

(declare-fun m!5497803 () Bool)

(assert (=> b!4638959 m!5497803))

(declare-fun m!5497805 () Bool)

(assert (=> b!4638959 m!5497805))

(declare-fun m!5497807 () Bool)

(assert (=> b!4638959 m!5497807))

(declare-fun m!5497809 () Bool)

(assert (=> b!4638959 m!5497809))

(declare-fun m!5497811 () Bool)

(assert (=> b!4638959 m!5497811))

(assert (=> b!4638959 m!5497809))

(assert (=> b!4638959 m!5497801))

(declare-fun m!5497813 () Bool)

(assert (=> b!4638959 m!5497813))

(declare-fun m!5497815 () Bool)

(assert (=> b!4638951 m!5497815))

(declare-fun m!5497817 () Bool)

(assert (=> b!4638951 m!5497817))

(declare-fun m!5497819 () Bool)

(assert (=> b!4638951 m!5497819))

(declare-fun m!5497821 () Bool)

(assert (=> b!4638947 m!5497821))

(declare-fun m!5497823 () Bool)

(assert (=> b!4638957 m!5497823))

(declare-fun m!5497825 () Bool)

(assert (=> b!4638958 m!5497825))

(declare-fun m!5497827 () Bool)

(assert (=> b!4638958 m!5497827))

(declare-fun m!5497829 () Bool)

(assert (=> b!4638953 m!5497829))

(declare-fun m!5497831 () Bool)

(assert (=> b!4638960 m!5497831))

(declare-fun m!5497833 () Bool)

(assert (=> start!466296 m!5497833))

(declare-fun m!5497835 () Bool)

(assert (=> b!4638942 m!5497835))

(declare-fun m!5497837 () Bool)

(assert (=> b!4638942 m!5497837))

(assert (=> b!4638942 m!5497837))

(declare-fun m!5497839 () Bool)

(assert (=> b!4638942 m!5497839))

(declare-fun m!5497841 () Bool)

(assert (=> b!4638942 m!5497841))

(declare-fun m!5497843 () Bool)

(assert (=> b!4638948 m!5497843))

(declare-fun m!5497845 () Bool)

(assert (=> b!4638948 m!5497845))

(declare-fun m!5497847 () Bool)

(assert (=> b!4638943 m!5497847))

(declare-fun m!5497849 () Bool)

(assert (=> b!4638949 m!5497849))

(declare-fun m!5497851 () Bool)

(assert (=> b!4638945 m!5497851))

(declare-fun m!5497853 () Bool)

(assert (=> b!4638945 m!5497853))

(declare-fun m!5497855 () Bool)

(assert (=> b!4638941 m!5497855))

(declare-fun m!5497857 () Bool)

(assert (=> b!4638941 m!5497857))

(declare-fun m!5497859 () Bool)

(assert (=> b!4638954 m!5497859))

(check-sat (not b!4638943) (not b!4638951) (not b!4638955) (not b!4638954) tp_is_empty!29605 (not b!4638947) (not b!4638945) tp_is_empty!29607 (not b!4638958) (not b!4638957) (not b!4638953) (not b!4638960) (not start!466296) (not b!4638959) (not b!4638946) (not b!4638950) (not b!4638949) (not b!4638941) (not b!4638942) (not b!4638948))
(check-sat)
