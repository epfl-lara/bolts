; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466300 () Bool)

(assert start!466300)

(declare-fun b!4639061 () Bool)

(declare-fun res!1948005 () Bool)

(declare-fun e!2893896 () Bool)

(assert (=> b!4639061 (=> res!1948005 e!2893896)))

(declare-datatypes ((K!13100 0))(
  ( (K!13101 (val!18751 Int)) )
))
(declare-datatypes ((V!13346 0))(
  ( (V!13347 (val!18752 Int)) )
))
(declare-datatypes ((tuple2!52766 0))(
  ( (tuple2!52767 (_1!29677 K!13100) (_2!29677 V!13346)) )
))
(declare-datatypes ((List!51856 0))(
  ( (Nil!51732) (Cons!51732 (h!57832 tuple2!52766) (t!358936 List!51856)) )
))
(declare-fun lt!1801714 () List!51856)

(declare-fun key!4968 () K!13100)

(declare-fun containsKey!2600 (List!51856 K!13100) Bool)

(assert (=> b!4639061 (= res!1948005 (containsKey!2600 lt!1801714 key!4968))))

(declare-fun b!4639062 () Bool)

(declare-fun e!2893901 () Bool)

(declare-fun e!2893906 () Bool)

(assert (=> b!4639062 (= e!2893901 (not e!2893906))))

(declare-fun res!1948022 () Bool)

(assert (=> b!4639062 (=> res!1948022 e!2893906)))

(declare-fun oldBucket!40 () List!51856)

(get-info :version)

(assert (=> b!4639062 (= res!1948022 (or (not ((_ is Cons!51732) oldBucket!40)) (not (= (_1!29677 (h!57832 oldBucket!40)) key!4968))))))

(declare-fun e!2893898 () Bool)

(assert (=> b!4639062 e!2893898))

(declare-fun res!1948009 () Bool)

(assert (=> b!4639062 (=> (not res!1948009) (not e!2893898))))

(declare-datatypes ((ListMap!4429 0))(
  ( (ListMap!4430 (toList!5105 List!51856)) )
))
(declare-fun lt!1801713 () ListMap!4429)

(declare-fun lt!1801716 () ListMap!4429)

(declare-fun addToMapMapFromBucket!1039 (List!51856 ListMap!4429) ListMap!4429)

(assert (=> b!4639062 (= res!1948009 (= lt!1801716 (addToMapMapFromBucket!1039 oldBucket!40 lt!1801713)))))

(declare-datatypes ((tuple2!52768 0))(
  ( (tuple2!52769 (_1!29678 (_ BitVec 64)) (_2!29678 List!51856)) )
))
(declare-datatypes ((List!51857 0))(
  ( (Nil!51733) (Cons!51733 (h!57833 tuple2!52768) (t!358937 List!51857)) )
))
(declare-fun extractMap!1636 (List!51857) ListMap!4429)

(assert (=> b!4639062 (= lt!1801713 (extractMap!1636 Nil!51733))))

(assert (=> b!4639062 true))

(declare-fun tp!1342750 () Bool)

(declare-fun tp_is_empty!29615 () Bool)

(declare-fun b!4639063 () Bool)

(declare-fun tp_is_empty!29613 () Bool)

(declare-fun e!2893904 () Bool)

(assert (=> b!4639063 (= e!2893904 (and tp_is_empty!29613 tp_is_empty!29615 tp!1342750))))

(declare-fun b!4639064 () Bool)

(declare-fun e!2893895 () Bool)

(assert (=> b!4639064 (= e!2893895 e!2893896)))

(declare-fun res!1948010 () Bool)

(assert (=> b!4639064 (=> res!1948010 e!2893896)))

(declare-fun lt!1801719 () ListMap!4429)

(declare-fun lt!1801727 () ListMap!4429)

(declare-fun eq!881 (ListMap!4429 ListMap!4429) Bool)

(assert (=> b!4639064 (= res!1948010 (not (eq!881 lt!1801719 lt!1801727)))))

(assert (=> b!4639064 (= lt!1801727 (addToMapMapFromBucket!1039 oldBucket!40 (ListMap!4430 Nil!51732)))))

(declare-fun lt!1801721 () ListMap!4429)

(declare-fun +!1934 (ListMap!4429 tuple2!52766) ListMap!4429)

(assert (=> b!4639064 (= lt!1801719 (+!1934 lt!1801721 (h!57832 oldBucket!40)))))

(declare-fun lt!1801718 () tuple2!52766)

(assert (=> b!4639064 (eq!881 (addToMapMapFromBucket!1039 (Cons!51732 lt!1801718 lt!1801714) (ListMap!4430 Nil!51732)) (+!1934 lt!1801721 lt!1801718))))

(declare-datatypes ((Unit!115023 0))(
  ( (Unit!115024) )
))
(declare-fun lt!1801722 () Unit!115023)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!132 (tuple2!52766 List!51856 ListMap!4429) Unit!115023)

(assert (=> b!4639064 (= lt!1801722 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!132 lt!1801718 lt!1801714 (ListMap!4430 Nil!51732)))))

(declare-fun head!9700 (List!51856) tuple2!52766)

(assert (=> b!4639064 (= lt!1801718 (head!9700 oldBucket!40))))

(declare-fun b!4639065 () Bool)

(declare-fun e!2893905 () Bool)

(declare-fun e!2893902 () Bool)

(assert (=> b!4639065 (= e!2893905 e!2893902)))

(declare-fun res!1948012 () Bool)

(assert (=> b!4639065 (=> res!1948012 e!2893902)))

(declare-fun lt!1801723 () ListMap!4429)

(assert (=> b!4639065 (= res!1948012 (or (not (= lt!1801723 lt!1801721)) (not (= lt!1801716 lt!1801727))))))

(declare-fun -!598 (ListMap!4429 K!13100) ListMap!4429)

(assert (=> b!4639065 (= lt!1801723 (-!598 lt!1801719 key!4968))))

(assert (=> b!4639065 (= (-!598 (+!1934 lt!1801721 (tuple2!52767 key!4968 (_2!29677 (h!57832 oldBucket!40)))) key!4968) lt!1801721)))

(declare-fun lt!1801726 () Unit!115023)

(declare-fun addThenRemoveForNewKeyIsSame!29 (ListMap!4429 K!13100 V!13346) Unit!115023)

(assert (=> b!4639065 (= lt!1801726 (addThenRemoveForNewKeyIsSame!29 lt!1801721 key!4968 (_2!29677 (h!57832 oldBucket!40))))))

(declare-fun b!4639066 () Bool)

(declare-fun res!1948020 () Bool)

(declare-fun e!2893897 () Bool)

(assert (=> b!4639066 (=> (not res!1948020) (not e!2893897))))

(declare-datatypes ((Hashable!5977 0))(
  ( (HashableExt!5976 (__x!31680 Int)) )
))
(declare-fun hashF!1389 () Hashable!5977)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1434 (List!51856 (_ BitVec 64) Hashable!5977) Bool)

(assert (=> b!4639066 (= res!1948020 (allKeysSameHash!1434 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4639067 () Bool)

(declare-fun res!1948008 () Bool)

(assert (=> b!4639067 (=> (not res!1948008) (not e!2893901))))

(declare-fun hash!3664 (Hashable!5977 K!13100) (_ BitVec 64))

(assert (=> b!4639067 (= res!1948008 (= (hash!3664 hashF!1389 key!4968) hash!414))))

(declare-fun res!1948011 () Bool)

(assert (=> start!466300 (=> (not res!1948011) (not e!2893897))))

(declare-fun noDuplicateKeys!1580 (List!51856) Bool)

(assert (=> start!466300 (= res!1948011 (noDuplicateKeys!1580 oldBucket!40))))

(assert (=> start!466300 e!2893897))

(assert (=> start!466300 true))

(declare-fun e!2893900 () Bool)

(assert (=> start!466300 e!2893900))

(assert (=> start!466300 tp_is_empty!29613))

(assert (=> start!466300 e!2893904))

(declare-fun b!4639068 () Bool)

(assert (=> b!4639068 (= e!2893897 e!2893901)))

(declare-fun res!1948021 () Bool)

(assert (=> b!4639068 (=> (not res!1948021) (not e!2893901))))

(declare-fun contains!14839 (ListMap!4429 K!13100) Bool)

(assert (=> b!4639068 (= res!1948021 (contains!14839 lt!1801716 key!4968))))

(assert (=> b!4639068 (= lt!1801716 (extractMap!1636 (Cons!51733 (tuple2!52769 hash!414 oldBucket!40) Nil!51733)))))

(declare-fun b!4639069 () Bool)

(declare-fun res!1948007 () Bool)

(assert (=> b!4639069 (=> (not res!1948007) (not e!2893897))))

(declare-fun newBucket!224 () List!51856)

(assert (=> b!4639069 (= res!1948007 (noDuplicateKeys!1580 newBucket!224))))

(declare-fun b!4639070 () Bool)

(declare-fun res!1948015 () Bool)

(assert (=> b!4639070 (=> (not res!1948015) (not e!2893897))))

(declare-fun removePairForKey!1203 (List!51856 K!13100) List!51856)

(assert (=> b!4639070 (= res!1948015 (= (removePairForKey!1203 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4639071 () Bool)

(declare-fun e!2893903 () Bool)

(declare-fun e!2893899 () Bool)

(assert (=> b!4639071 (= e!2893903 e!2893899)))

(declare-fun res!1948019 () Bool)

(assert (=> b!4639071 (=> res!1948019 e!2893899)))

(declare-fun lt!1801717 () ListMap!4429)

(declare-fun lt!1801720 () ListMap!4429)

(assert (=> b!4639071 (= res!1948019 (not (= lt!1801717 lt!1801720)))))

(assert (=> b!4639071 (= lt!1801720 (extractMap!1636 (Cons!51733 (tuple2!52769 hash!414 newBucket!224) Nil!51733)))))

(declare-fun lt!1801725 () List!51857)

(assert (=> b!4639071 (= lt!1801717 (extractMap!1636 lt!1801725))))

(assert (=> b!4639071 (= lt!1801725 (Cons!51733 (tuple2!52769 hash!414 lt!1801714) Nil!51733))))

(declare-fun b!4639072 () Bool)

(declare-fun res!1948016 () Bool)

(assert (=> b!4639072 (=> res!1948016 e!2893896)))

(assert (=> b!4639072 (= res!1948016 (not (= lt!1801721 lt!1801717)))))

(declare-fun b!4639073 () Bool)

(declare-fun res!1948014 () Bool)

(assert (=> b!4639073 (=> (not res!1948014) (not e!2893901))))

(assert (=> b!4639073 (= res!1948014 (allKeysSameHash!1434 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4639074 () Bool)

(declare-fun tp!1342751 () Bool)

(assert (=> b!4639074 (= e!2893900 (and tp_is_empty!29613 tp_is_empty!29615 tp!1342751))))

(declare-fun b!4639075 () Bool)

(assert (=> b!4639075 (= e!2893902 (= lt!1801720 lt!1801721))))

(assert (=> b!4639075 (eq!881 lt!1801723 (-!598 lt!1801716 key!4968))))

(declare-fun lt!1801715 () Unit!115023)

(declare-fun lemmaRemovePreservesEq!48 (ListMap!4429 ListMap!4429 K!13100) Unit!115023)

(assert (=> b!4639075 (= lt!1801715 (lemmaRemovePreservesEq!48 lt!1801719 lt!1801716 key!4968))))

(declare-fun b!4639076 () Bool)

(assert (=> b!4639076 (= e!2893906 e!2893903)))

(declare-fun res!1948013 () Bool)

(assert (=> b!4639076 (=> res!1948013 e!2893903)))

(assert (=> b!4639076 (= res!1948013 (not (= lt!1801714 newBucket!224)))))

(declare-fun tail!8207 (List!51856) List!51856)

(assert (=> b!4639076 (= lt!1801714 (tail!8207 oldBucket!40))))

(declare-fun b!4639077 () Bool)

(assert (=> b!4639077 (= e!2893899 e!2893895)))

(declare-fun res!1948018 () Bool)

(assert (=> b!4639077 (=> res!1948018 e!2893895)))

(assert (=> b!4639077 (= res!1948018 (not (= lt!1801721 (addToMapMapFromBucket!1039 newBucket!224 (ListMap!4430 Nil!51732)))))))

(assert (=> b!4639077 (= lt!1801721 (addToMapMapFromBucket!1039 lt!1801714 (ListMap!4430 Nil!51732)))))

(declare-fun b!4639078 () Bool)

(assert (=> b!4639078 (= e!2893898 (= lt!1801713 (ListMap!4430 Nil!51732)))))

(declare-fun b!4639079 () Bool)

(declare-fun res!1948006 () Bool)

(assert (=> b!4639079 (=> res!1948006 e!2893902)))

(assert (=> b!4639079 (= res!1948006 (not (eq!881 lt!1801719 lt!1801716)))))

(declare-fun b!4639080 () Bool)

(assert (=> b!4639080 (= e!2893896 e!2893905)))

(declare-fun res!1948017 () Bool)

(assert (=> b!4639080 (=> res!1948017 e!2893905)))

(assert (=> b!4639080 (= res!1948017 (contains!14839 lt!1801721 key!4968))))

(assert (=> b!4639080 (not (contains!14839 lt!1801717 key!4968))))

(declare-fun lt!1801724 () Unit!115023)

(declare-datatypes ((ListLongMap!3675 0))(
  ( (ListLongMap!3676 (toList!5106 List!51857)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!372 (ListLongMap!3675 K!13100 Hashable!5977) Unit!115023)

(assert (=> b!4639080 (= lt!1801724 (lemmaNotInItsHashBucketThenNotInMap!372 (ListLongMap!3676 lt!1801725) key!4968 hashF!1389))))

(assert (= (and start!466300 res!1948011) b!4639069))

(assert (= (and b!4639069 res!1948007) b!4639070))

(assert (= (and b!4639070 res!1948015) b!4639066))

(assert (= (and b!4639066 res!1948020) b!4639068))

(assert (= (and b!4639068 res!1948021) b!4639067))

(assert (= (and b!4639067 res!1948008) b!4639073))

(assert (= (and b!4639073 res!1948014) b!4639062))

(assert (= (and b!4639062 res!1948009) b!4639078))

(assert (= (and b!4639062 (not res!1948022)) b!4639076))

(assert (= (and b!4639076 (not res!1948013)) b!4639071))

(assert (= (and b!4639071 (not res!1948019)) b!4639077))

(assert (= (and b!4639077 (not res!1948018)) b!4639064))

(assert (= (and b!4639064 (not res!1948010)) b!4639061))

(assert (= (and b!4639061 (not res!1948005)) b!4639072))

(assert (= (and b!4639072 (not res!1948016)) b!4639080))

(assert (= (and b!4639080 (not res!1948017)) b!4639065))

(assert (= (and b!4639065 (not res!1948012)) b!4639079))

(assert (= (and b!4639079 (not res!1948006)) b!4639075))

(assert (= (and start!466300 ((_ is Cons!51732) oldBucket!40)) b!4639074))

(assert (= (and start!466300 ((_ is Cons!51732) newBucket!224)) b!4639063))

(declare-fun m!5497931 () Bool)

(assert (=> start!466300 m!5497931))

(declare-fun m!5497933 () Bool)

(assert (=> b!4639071 m!5497933))

(declare-fun m!5497935 () Bool)

(assert (=> b!4639071 m!5497935))

(declare-fun m!5497937 () Bool)

(assert (=> b!4639076 m!5497937))

(declare-fun m!5497939 () Bool)

(assert (=> b!4639069 m!5497939))

(declare-fun m!5497941 () Bool)

(assert (=> b!4639073 m!5497941))

(declare-fun m!5497943 () Bool)

(assert (=> b!4639064 m!5497943))

(declare-fun m!5497945 () Bool)

(assert (=> b!4639064 m!5497945))

(declare-fun m!5497947 () Bool)

(assert (=> b!4639064 m!5497947))

(declare-fun m!5497949 () Bool)

(assert (=> b!4639064 m!5497949))

(assert (=> b!4639064 m!5497945))

(declare-fun m!5497951 () Bool)

(assert (=> b!4639064 m!5497951))

(declare-fun m!5497953 () Bool)

(assert (=> b!4639064 m!5497953))

(assert (=> b!4639064 m!5497951))

(declare-fun m!5497955 () Bool)

(assert (=> b!4639064 m!5497955))

(declare-fun m!5497957 () Bool)

(assert (=> b!4639064 m!5497957))

(declare-fun m!5497959 () Bool)

(assert (=> b!4639065 m!5497959))

(declare-fun m!5497961 () Bool)

(assert (=> b!4639065 m!5497961))

(assert (=> b!4639065 m!5497961))

(declare-fun m!5497963 () Bool)

(assert (=> b!4639065 m!5497963))

(declare-fun m!5497965 () Bool)

(assert (=> b!4639065 m!5497965))

(declare-fun m!5497967 () Bool)

(assert (=> b!4639061 m!5497967))

(declare-fun m!5497969 () Bool)

(assert (=> b!4639080 m!5497969))

(declare-fun m!5497971 () Bool)

(assert (=> b!4639080 m!5497971))

(declare-fun m!5497973 () Bool)

(assert (=> b!4639080 m!5497973))

(declare-fun m!5497975 () Bool)

(assert (=> b!4639079 m!5497975))

(declare-fun m!5497977 () Bool)

(assert (=> b!4639075 m!5497977))

(assert (=> b!4639075 m!5497977))

(declare-fun m!5497979 () Bool)

(assert (=> b!4639075 m!5497979))

(declare-fun m!5497981 () Bool)

(assert (=> b!4639075 m!5497981))

(declare-fun m!5497983 () Bool)

(assert (=> b!4639066 m!5497983))

(declare-fun m!5497985 () Bool)

(assert (=> b!4639077 m!5497985))

(declare-fun m!5497987 () Bool)

(assert (=> b!4639077 m!5497987))

(declare-fun m!5497989 () Bool)

(assert (=> b!4639062 m!5497989))

(declare-fun m!5497991 () Bool)

(assert (=> b!4639062 m!5497991))

(declare-fun m!5497993 () Bool)

(assert (=> b!4639067 m!5497993))

(declare-fun m!5497995 () Bool)

(assert (=> b!4639070 m!5497995))

(declare-fun m!5497997 () Bool)

(assert (=> b!4639068 m!5497997))

(declare-fun m!5497999 () Bool)

(assert (=> b!4639068 m!5497999))

(check-sat (not b!4639071) tp_is_empty!29615 (not b!4639064) (not b!4639069) (not b!4639066) (not b!4639079) (not b!4639068) (not b!4639065) (not b!4639063) (not b!4639075) (not start!466300) (not b!4639077) (not b!4639080) (not b!4639070) tp_is_empty!29613 (not b!4639067) (not b!4639074) (not b!4639073) (not b!4639061) (not b!4639076) (not b!4639062))
(check-sat)
