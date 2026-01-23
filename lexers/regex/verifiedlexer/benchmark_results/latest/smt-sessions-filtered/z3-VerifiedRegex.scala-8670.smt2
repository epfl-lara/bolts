; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461736 () Bool)

(assert start!461736)

(declare-fun res!1933779 () Bool)

(declare-fun e!2879028 () Bool)

(assert (=> start!461736 (=> (not res!1933779) (not e!2879028))))

(declare-datatypes ((K!12755 0))(
  ( (K!12756 (val!18475 Int)) )
))
(declare-datatypes ((V!13001 0))(
  ( (V!13002 (val!18476 Int)) )
))
(declare-datatypes ((tuple2!52214 0))(
  ( (tuple2!52215 (_1!29401 K!12755) (_2!29401 V!13001)) )
))
(declare-datatypes ((List!51493 0))(
  ( (Nil!51369) (Cons!51369 (h!57381 tuple2!52214) (t!358497 List!51493)) )
))
(declare-fun oldBucket!40 () List!51493)

(declare-fun noDuplicateKeys!1442 (List!51493) Bool)

(assert (=> start!461736 (= res!1933779 (noDuplicateKeys!1442 oldBucket!40))))

(assert (=> start!461736 e!2879028))

(assert (=> start!461736 true))

(declare-fun e!2879037 () Bool)

(assert (=> start!461736 e!2879037))

(declare-fun tp_is_empty!29061 () Bool)

(assert (=> start!461736 tp_is_empty!29061))

(declare-fun e!2879039 () Bool)

(assert (=> start!461736 e!2879039))

(declare-fun b!4615584 () Bool)

(declare-fun res!1933768 () Bool)

(assert (=> b!4615584 (=> (not res!1933768) (not e!2879028))))

(declare-datatypes ((Hashable!5839 0))(
  ( (HashableExt!5838 (__x!31542 Int)) )
))
(declare-fun hashF!1389 () Hashable!5839)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1296 (List!51493 (_ BitVec 64) Hashable!5839) Bool)

(assert (=> b!4615584 (= res!1933768 (allKeysSameHash!1296 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4615585 () Bool)

(declare-fun e!2879033 () Bool)

(assert (=> b!4615585 (= e!2879028 e!2879033)))

(declare-fun res!1933771 () Bool)

(assert (=> b!4615585 (=> (not res!1933771) (not e!2879033))))

(declare-datatypes ((ListMap!4153 0))(
  ( (ListMap!4154 (toList!4849 List!51493)) )
))
(declare-fun lt!1771012 () ListMap!4153)

(declare-fun key!4968 () K!12755)

(declare-fun contains!14332 (ListMap!4153 K!12755) Bool)

(assert (=> b!4615585 (= res!1933771 (contains!14332 lt!1771012 key!4968))))

(declare-datatypes ((tuple2!52216 0))(
  ( (tuple2!52217 (_1!29402 (_ BitVec 64)) (_2!29402 List!51493)) )
))
(declare-datatypes ((List!51494 0))(
  ( (Nil!51370) (Cons!51370 (h!57382 tuple2!52216) (t!358498 List!51494)) )
))
(declare-fun lt!1771010 () List!51494)

(declare-fun extractMap!1498 (List!51494) ListMap!4153)

(assert (=> b!4615585 (= lt!1771012 (extractMap!1498 lt!1771010))))

(assert (=> b!4615585 (= lt!1771010 (Cons!51370 (tuple2!52217 hash!414 oldBucket!40) Nil!51370))))

(declare-fun b!4615586 () Bool)

(declare-fun e!2879036 () Bool)

(declare-fun e!2879040 () Bool)

(assert (=> b!4615586 (= e!2879036 e!2879040)))

(declare-fun res!1933781 () Bool)

(assert (=> b!4615586 (=> res!1933781 e!2879040)))

(declare-fun lt!1771006 () ListMap!4153)

(declare-fun lt!1771016 () ListMap!4153)

(assert (=> b!4615586 (= res!1933781 (not (= lt!1771006 lt!1771016)))))

(declare-fun lt!1771015 () ListMap!4153)

(declare-fun eq!785 (ListMap!4153 ListMap!4153) Bool)

(declare-fun -!532 (ListMap!4153 K!12755) ListMap!4153)

(assert (=> b!4615586 (eq!785 lt!1771015 (-!532 lt!1771012 key!4968))))

(declare-datatypes ((Unit!110138 0))(
  ( (Unit!110139) )
))
(declare-fun lt!1771018 () Unit!110138)

(declare-fun lt!1771007 () ListMap!4153)

(declare-fun lemmaRemovePreservesEq!4 (ListMap!4153 ListMap!4153 K!12755) Unit!110138)

(assert (=> b!4615586 (= lt!1771018 (lemmaRemovePreservesEq!4 lt!1771007 lt!1771012 key!4968))))

(declare-fun b!4615587 () Bool)

(declare-fun tp!1341571 () Bool)

(declare-fun tp_is_empty!29063 () Bool)

(assert (=> b!4615587 (= e!2879039 (and tp_is_empty!29061 tp_is_empty!29063 tp!1341571))))

(declare-fun b!4615588 () Bool)

(declare-fun e!2879038 () Bool)

(declare-fun e!2879029 () Bool)

(assert (=> b!4615588 (= e!2879038 e!2879029)))

(declare-fun res!1933776 () Bool)

(assert (=> b!4615588 (=> res!1933776 e!2879029)))

(assert (=> b!4615588 (= res!1933776 (contains!14332 lt!1771016 key!4968))))

(declare-fun lt!1771004 () ListMap!4153)

(assert (=> b!4615588 (not (contains!14332 lt!1771004 key!4968))))

(declare-fun lt!1771008 () List!51494)

(declare-fun lt!1771009 () Unit!110138)

(declare-datatypes ((ListLongMap!3439 0))(
  ( (ListLongMap!3440 (toList!4850 List!51494)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!356 (ListLongMap!3439 K!12755 Hashable!5839) Unit!110138)

(assert (=> b!4615588 (= lt!1771009 (lemmaNotInItsHashBucketThenNotInMap!356 (ListLongMap!3440 lt!1771008) key!4968 hashF!1389))))

(declare-fun b!4615589 () Bool)

(declare-fun res!1933777 () Bool)

(assert (=> b!4615589 (=> (not res!1933777) (not e!2879028))))

(declare-fun newBucket!224 () List!51493)

(declare-fun removePairForKey!1065 (List!51493 K!12755) List!51493)

(assert (=> b!4615589 (= res!1933777 (= (removePairForKey!1065 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4615590 () Bool)

(declare-fun e!2879035 () Bool)

(declare-fun lt!1771017 () ListMap!4153)

(assert (=> b!4615590 (= e!2879035 (= lt!1771017 (ListMap!4154 Nil!51369)))))

(declare-fun b!4615591 () Bool)

(declare-fun e!2879034 () Bool)

(assert (=> b!4615591 (= e!2879034 e!2879038)))

(declare-fun res!1933767 () Bool)

(assert (=> b!4615591 (=> res!1933767 e!2879038)))

(declare-fun lt!1771005 () ListMap!4153)

(assert (=> b!4615591 (= res!1933767 (not (eq!785 lt!1771007 lt!1771005)))))

(declare-fun addToMapMapFromBucket!903 (List!51493 ListMap!4153) ListMap!4153)

(assert (=> b!4615591 (= lt!1771005 (addToMapMapFromBucket!903 oldBucket!40 (ListMap!4154 Nil!51369)))))

(declare-fun +!1827 (ListMap!4153 tuple2!52214) ListMap!4153)

(assert (=> b!4615591 (= lt!1771007 (+!1827 lt!1771016 (h!57381 oldBucket!40)))))

(declare-fun lt!1771014 () tuple2!52214)

(declare-fun lt!1771019 () List!51493)

(assert (=> b!4615591 (eq!785 (addToMapMapFromBucket!903 (Cons!51369 lt!1771014 lt!1771019) (ListMap!4154 Nil!51369)) (+!1827 lt!1771016 lt!1771014))))

(declare-fun lt!1771013 () Unit!110138)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!36 (tuple2!52214 List!51493 ListMap!4153) Unit!110138)

(assert (=> b!4615591 (= lt!1771013 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!36 lt!1771014 lt!1771019 (ListMap!4154 Nil!51369)))))

(declare-fun head!9602 (List!51493) tuple2!52214)

(assert (=> b!4615591 (= lt!1771014 (head!9602 oldBucket!40))))

(declare-fun b!4615592 () Bool)

(declare-fun res!1933774 () Bool)

(assert (=> b!4615592 (=> (not res!1933774) (not e!2879033))))

(assert (=> b!4615592 (= res!1933774 (allKeysSameHash!1296 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4615593 () Bool)

(declare-fun tp!1341570 () Bool)

(assert (=> b!4615593 (= e!2879037 (and tp_is_empty!29061 tp_is_empty!29063 tp!1341570))))

(declare-fun b!4615594 () Bool)

(assert (=> b!4615594 (= e!2879029 e!2879036)))

(declare-fun res!1933772 () Bool)

(assert (=> b!4615594 (=> res!1933772 e!2879036)))

(assert (=> b!4615594 (= res!1933772 (or (not (= lt!1771015 lt!1771016)) (not (= lt!1771012 lt!1771005))))))

(assert (=> b!4615594 (= lt!1771015 (-!532 lt!1771007 key!4968))))

(assert (=> b!4615594 (= (-!532 (+!1827 lt!1771016 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))) key!4968) lt!1771016)))

(declare-fun lt!1771011 () Unit!110138)

(declare-fun addThenRemoveForNewKeyIsSame!15 (ListMap!4153 K!12755 V!13001) Unit!110138)

(assert (=> b!4615594 (= lt!1771011 (addThenRemoveForNewKeyIsSame!15 lt!1771016 key!4968 (_2!29401 (h!57381 oldBucket!40))))))

(declare-fun b!4615595 () Bool)

(declare-fun e!2879032 () Bool)

(assert (=> b!4615595 (= e!2879032 e!2879034)))

(declare-fun res!1933780 () Bool)

(assert (=> b!4615595 (=> res!1933780 e!2879034)))

(assert (=> b!4615595 (= res!1933780 (not (= lt!1771016 (addToMapMapFromBucket!903 newBucket!224 (ListMap!4154 Nil!51369)))))))

(assert (=> b!4615595 (= lt!1771016 (addToMapMapFromBucket!903 lt!1771019 (ListMap!4154 Nil!51369)))))

(declare-fun b!4615596 () Bool)

(declare-fun lambda!189332 () Int)

(declare-fun forall!10740 (List!51494 Int) Bool)

(assert (=> b!4615596 (= e!2879040 (forall!10740 lt!1771010 lambda!189332))))

(declare-fun b!4615597 () Bool)

(declare-fun e!2879031 () Bool)

(assert (=> b!4615597 (= e!2879033 (not e!2879031))))

(declare-fun res!1933782 () Bool)

(assert (=> b!4615597 (=> res!1933782 e!2879031)))

(get-info :version)

(assert (=> b!4615597 (= res!1933782 (or (not ((_ is Cons!51369) oldBucket!40)) (not (= (_1!29401 (h!57381 oldBucket!40)) key!4968))))))

(assert (=> b!4615597 e!2879035))

(declare-fun res!1933773 () Bool)

(assert (=> b!4615597 (=> (not res!1933773) (not e!2879035))))

(assert (=> b!4615597 (= res!1933773 (= lt!1771012 (addToMapMapFromBucket!903 oldBucket!40 lt!1771017)))))

(assert (=> b!4615597 (= lt!1771017 (extractMap!1498 Nil!51370))))

(assert (=> b!4615597 true))

(declare-fun b!4615598 () Bool)

(declare-fun res!1933766 () Bool)

(assert (=> b!4615598 (=> (not res!1933766) (not e!2879028))))

(assert (=> b!4615598 (= res!1933766 (noDuplicateKeys!1442 newBucket!224))))

(declare-fun b!4615599 () Bool)

(declare-fun res!1933770 () Bool)

(assert (=> b!4615599 (=> (not res!1933770) (not e!2879033))))

(declare-fun hash!3395 (Hashable!5839 K!12755) (_ BitVec 64))

(assert (=> b!4615599 (= res!1933770 (= (hash!3395 hashF!1389 key!4968) hash!414))))

(declare-fun b!4615600 () Bool)

(declare-fun res!1933764 () Bool)

(assert (=> b!4615600 (=> res!1933764 e!2879036)))

(assert (=> b!4615600 (= res!1933764 (not (eq!785 lt!1771007 lt!1771012)))))

(declare-fun b!4615601 () Bool)

(declare-fun e!2879030 () Bool)

(assert (=> b!4615601 (= e!2879030 e!2879032)))

(declare-fun res!1933765 () Bool)

(assert (=> b!4615601 (=> res!1933765 e!2879032)))

(assert (=> b!4615601 (= res!1933765 (not (= lt!1771004 lt!1771006)))))

(assert (=> b!4615601 (= lt!1771006 (extractMap!1498 (Cons!51370 (tuple2!52217 hash!414 newBucket!224) Nil!51370)))))

(assert (=> b!4615601 (= lt!1771004 (extractMap!1498 lt!1771008))))

(assert (=> b!4615601 (= lt!1771008 (Cons!51370 (tuple2!52217 hash!414 lt!1771019) Nil!51370))))

(declare-fun b!4615602 () Bool)

(assert (=> b!4615602 (= e!2879031 e!2879030)))

(declare-fun res!1933775 () Bool)

(assert (=> b!4615602 (=> res!1933775 e!2879030)))

(assert (=> b!4615602 (= res!1933775 (not (= lt!1771019 newBucket!224)))))

(declare-fun tail!8089 (List!51493) List!51493)

(assert (=> b!4615602 (= lt!1771019 (tail!8089 oldBucket!40))))

(declare-fun b!4615603 () Bool)

(declare-fun res!1933769 () Bool)

(assert (=> b!4615603 (=> res!1933769 e!2879038)))

(declare-fun containsKey!2322 (List!51493 K!12755) Bool)

(assert (=> b!4615603 (= res!1933769 (containsKey!2322 lt!1771019 key!4968))))

(declare-fun b!4615604 () Bool)

(declare-fun res!1933778 () Bool)

(assert (=> b!4615604 (=> res!1933778 e!2879038)))

(assert (=> b!4615604 (= res!1933778 (not (= lt!1771016 lt!1771004)))))

(assert (= (and start!461736 res!1933779) b!4615598))

(assert (= (and b!4615598 res!1933766) b!4615589))

(assert (= (and b!4615589 res!1933777) b!4615584))

(assert (= (and b!4615584 res!1933768) b!4615585))

(assert (= (and b!4615585 res!1933771) b!4615599))

(assert (= (and b!4615599 res!1933770) b!4615592))

(assert (= (and b!4615592 res!1933774) b!4615597))

(assert (= (and b!4615597 res!1933773) b!4615590))

(assert (= (and b!4615597 (not res!1933782)) b!4615602))

(assert (= (and b!4615602 (not res!1933775)) b!4615601))

(assert (= (and b!4615601 (not res!1933765)) b!4615595))

(assert (= (and b!4615595 (not res!1933780)) b!4615591))

(assert (= (and b!4615591 (not res!1933767)) b!4615603))

(assert (= (and b!4615603 (not res!1933769)) b!4615604))

(assert (= (and b!4615604 (not res!1933778)) b!4615588))

(assert (= (and b!4615588 (not res!1933776)) b!4615594))

(assert (= (and b!4615594 (not res!1933772)) b!4615600))

(assert (= (and b!4615600 (not res!1933764)) b!4615586))

(assert (= (and b!4615586 (not res!1933781)) b!4615596))

(assert (= (and start!461736 ((_ is Cons!51369) oldBucket!40)) b!4615593))

(assert (= (and start!461736 ((_ is Cons!51369) newBucket!224)) b!4615587))

(declare-fun m!5448963 () Bool)

(assert (=> b!4615603 m!5448963))

(declare-fun m!5448965 () Bool)

(assert (=> b!4615584 m!5448965))

(declare-fun m!5448967 () Bool)

(assert (=> b!4615598 m!5448967))

(declare-fun m!5448969 () Bool)

(assert (=> b!4615601 m!5448969))

(declare-fun m!5448971 () Bool)

(assert (=> b!4615601 m!5448971))

(declare-fun m!5448973 () Bool)

(assert (=> b!4615588 m!5448973))

(declare-fun m!5448975 () Bool)

(assert (=> b!4615588 m!5448975))

(declare-fun m!5448977 () Bool)

(assert (=> b!4615588 m!5448977))

(declare-fun m!5448979 () Bool)

(assert (=> b!4615595 m!5448979))

(declare-fun m!5448981 () Bool)

(assert (=> b!4615595 m!5448981))

(declare-fun m!5448983 () Bool)

(assert (=> b!4615597 m!5448983))

(declare-fun m!5448985 () Bool)

(assert (=> b!4615597 m!5448985))

(declare-fun m!5448987 () Bool)

(assert (=> b!4615602 m!5448987))

(declare-fun m!5448989 () Bool)

(assert (=> b!4615585 m!5448989))

(declare-fun m!5448991 () Bool)

(assert (=> b!4615585 m!5448991))

(declare-fun m!5448993 () Bool)

(assert (=> start!461736 m!5448993))

(declare-fun m!5448995 () Bool)

(assert (=> b!4615586 m!5448995))

(assert (=> b!4615586 m!5448995))

(declare-fun m!5448997 () Bool)

(assert (=> b!4615586 m!5448997))

(declare-fun m!5448999 () Bool)

(assert (=> b!4615586 m!5448999))

(declare-fun m!5449001 () Bool)

(assert (=> b!4615600 m!5449001))

(declare-fun m!5449003 () Bool)

(assert (=> b!4615592 m!5449003))

(declare-fun m!5449005 () Bool)

(assert (=> b!4615596 m!5449005))

(declare-fun m!5449007 () Bool)

(assert (=> b!4615589 m!5449007))

(declare-fun m!5449009 () Bool)

(assert (=> b!4615591 m!5449009))

(declare-fun m!5449011 () Bool)

(assert (=> b!4615591 m!5449011))

(declare-fun m!5449013 () Bool)

(assert (=> b!4615591 m!5449013))

(declare-fun m!5449015 () Bool)

(assert (=> b!4615591 m!5449015))

(declare-fun m!5449017 () Bool)

(assert (=> b!4615591 m!5449017))

(declare-fun m!5449019 () Bool)

(assert (=> b!4615591 m!5449019))

(assert (=> b!4615591 m!5449009))

(declare-fun m!5449021 () Bool)

(assert (=> b!4615591 m!5449021))

(declare-fun m!5449023 () Bool)

(assert (=> b!4615591 m!5449023))

(assert (=> b!4615591 m!5449011))

(declare-fun m!5449025 () Bool)

(assert (=> b!4615599 m!5449025))

(declare-fun m!5449027 () Bool)

(assert (=> b!4615594 m!5449027))

(declare-fun m!5449029 () Bool)

(assert (=> b!4615594 m!5449029))

(assert (=> b!4615594 m!5449029))

(declare-fun m!5449031 () Bool)

(assert (=> b!4615594 m!5449031))

(declare-fun m!5449033 () Bool)

(assert (=> b!4615594 m!5449033))

(check-sat tp_is_empty!29061 (not b!4615599) (not b!4615597) tp_is_empty!29063 (not b!4615591) (not b!4615594) (not start!461736) (not b!4615592) (not b!4615603) (not b!4615584) (not b!4615589) (not b!4615602) (not b!4615596) (not b!4615586) (not b!4615587) (not b!4615588) (not b!4615593) (not b!4615598) (not b!4615595) (not b!4615585) (not b!4615601) (not b!4615600))
(check-sat)
(get-model)

(declare-fun d!1453835 () Bool)

(declare-fun e!2879043 () Bool)

(assert (=> d!1453835 e!2879043))

(declare-fun res!1933785 () Bool)

(assert (=> d!1453835 (=> (not res!1933785) (not e!2879043))))

(declare-fun lt!1771022 () ListMap!4153)

(assert (=> d!1453835 (= res!1933785 (not (contains!14332 lt!1771022 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!241 (List!51493 K!12755) List!51493)

(assert (=> d!1453835 (= lt!1771022 (ListMap!4154 (removePresrvNoDuplicatedKeys!241 (toList!4849 lt!1771007) key!4968)))))

(assert (=> d!1453835 (= (-!532 lt!1771007 key!4968) lt!1771022)))

(declare-fun b!4615607 () Bool)

(declare-datatypes ((List!51495 0))(
  ( (Nil!51371) (Cons!51371 (h!57385 K!12755) (t!358501 List!51495)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8726 (List!51495) (InoxSet K!12755))

(declare-fun keys!18052 (ListMap!4153) List!51495)

(assert (=> b!4615607 (= e!2879043 (= ((_ map and) (content!8726 (keys!18052 lt!1771007)) ((_ map not) (store ((as const (Array K!12755 Bool)) false) key!4968 true))) (content!8726 (keys!18052 lt!1771022))))))

(assert (= (and d!1453835 res!1933785) b!4615607))

(declare-fun m!5449035 () Bool)

(assert (=> d!1453835 m!5449035))

(declare-fun m!5449037 () Bool)

(assert (=> d!1453835 m!5449037))

(declare-fun m!5449039 () Bool)

(assert (=> b!4615607 m!5449039))

(declare-fun m!5449041 () Bool)

(assert (=> b!4615607 m!5449041))

(declare-fun m!5449043 () Bool)

(assert (=> b!4615607 m!5449043))

(declare-fun m!5449045 () Bool)

(assert (=> b!4615607 m!5449045))

(declare-fun m!5449047 () Bool)

(assert (=> b!4615607 m!5449047))

(assert (=> b!4615607 m!5449045))

(assert (=> b!4615607 m!5449039))

(assert (=> b!4615594 d!1453835))

(declare-fun d!1453839 () Bool)

(declare-fun e!2879044 () Bool)

(assert (=> d!1453839 e!2879044))

(declare-fun res!1933786 () Bool)

(assert (=> d!1453839 (=> (not res!1933786) (not e!2879044))))

(declare-fun lt!1771023 () ListMap!4153)

(assert (=> d!1453839 (= res!1933786 (not (contains!14332 lt!1771023 key!4968)))))

(assert (=> d!1453839 (= lt!1771023 (ListMap!4154 (removePresrvNoDuplicatedKeys!241 (toList!4849 (+!1827 lt!1771016 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40))))) key!4968)))))

(assert (=> d!1453839 (= (-!532 (+!1827 lt!1771016 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))) key!4968) lt!1771023)))

(declare-fun b!4615608 () Bool)

(assert (=> b!4615608 (= e!2879044 (= ((_ map and) (content!8726 (keys!18052 (+!1827 lt!1771016 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))))) ((_ map not) (store ((as const (Array K!12755 Bool)) false) key!4968 true))) (content!8726 (keys!18052 lt!1771023))))))

(assert (= (and d!1453839 res!1933786) b!4615608))

(declare-fun m!5449049 () Bool)

(assert (=> d!1453839 m!5449049))

(declare-fun m!5449051 () Bool)

(assert (=> d!1453839 m!5449051))

(declare-fun m!5449053 () Bool)

(assert (=> b!4615608 m!5449053))

(declare-fun m!5449055 () Bool)

(assert (=> b!4615608 m!5449055))

(assert (=> b!4615608 m!5449043))

(declare-fun m!5449057 () Bool)

(assert (=> b!4615608 m!5449057))

(declare-fun m!5449059 () Bool)

(assert (=> b!4615608 m!5449059))

(assert (=> b!4615608 m!5449029))

(assert (=> b!4615608 m!5449057))

(assert (=> b!4615608 m!5449053))

(assert (=> b!4615594 d!1453839))

(declare-fun d!1453841 () Bool)

(declare-fun e!2879059 () Bool)

(assert (=> d!1453841 e!2879059))

(declare-fun res!1933804 () Bool)

(assert (=> d!1453841 (=> (not res!1933804) (not e!2879059))))

(declare-fun lt!1771032 () ListMap!4153)

(assert (=> d!1453841 (= res!1933804 (contains!14332 lt!1771032 (_1!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40))))))))

(declare-fun lt!1771033 () List!51493)

(assert (=> d!1453841 (= lt!1771032 (ListMap!4154 lt!1771033))))

(declare-fun lt!1771035 () Unit!110138)

(declare-fun lt!1771034 () Unit!110138)

(assert (=> d!1453841 (= lt!1771035 lt!1771034)))

(declare-datatypes ((Option!11469 0))(
  ( (None!11468) (Some!11468 (v!45534 V!13001)) )
))
(declare-fun getValueByKey!1383 (List!51493 K!12755) Option!11469)

(assert (=> d!1453841 (= (getValueByKey!1383 lt!1771033 (_1!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40))))) (Some!11468 (_2!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!819 (List!51493 K!12755 V!13001) Unit!110138)

(assert (=> d!1453841 (= lt!1771034 (lemmaContainsTupThenGetReturnValue!819 lt!1771033 (_1!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))) (_2!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40))))))))

(declare-fun insertNoDuplicatedKeys!327 (List!51493 K!12755 V!13001) List!51493)

(assert (=> d!1453841 (= lt!1771033 (insertNoDuplicatedKeys!327 (toList!4849 lt!1771016) (_1!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))) (_2!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40))))))))

(assert (=> d!1453841 (= (+!1827 lt!1771016 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))) lt!1771032)))

(declare-fun b!4615629 () Bool)

(declare-fun res!1933803 () Bool)

(assert (=> b!4615629 (=> (not res!1933803) (not e!2879059))))

(assert (=> b!4615629 (= res!1933803 (= (getValueByKey!1383 (toList!4849 lt!1771032) (_1!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40))))) (Some!11468 (_2!29401 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))))))))

(declare-fun b!4615630 () Bool)

(declare-fun contains!14333 (List!51493 tuple2!52214) Bool)

(assert (=> b!4615630 (= e!2879059 (contains!14333 (toList!4849 lt!1771032) (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))))))

(assert (= (and d!1453841 res!1933804) b!4615629))

(assert (= (and b!4615629 res!1933803) b!4615630))

(declare-fun m!5449069 () Bool)

(assert (=> d!1453841 m!5449069))

(declare-fun m!5449071 () Bool)

(assert (=> d!1453841 m!5449071))

(declare-fun m!5449073 () Bool)

(assert (=> d!1453841 m!5449073))

(declare-fun m!5449075 () Bool)

(assert (=> d!1453841 m!5449075))

(declare-fun m!5449077 () Bool)

(assert (=> b!4615629 m!5449077))

(declare-fun m!5449079 () Bool)

(assert (=> b!4615630 m!5449079))

(assert (=> b!4615594 d!1453841))

(declare-fun d!1453849 () Bool)

(assert (=> d!1453849 (= (-!532 (+!1827 lt!1771016 (tuple2!52215 key!4968 (_2!29401 (h!57381 oldBucket!40)))) key!4968) lt!1771016)))

(declare-fun lt!1771040 () Unit!110138)

(declare-fun choose!31077 (ListMap!4153 K!12755 V!13001) Unit!110138)

(assert (=> d!1453849 (= lt!1771040 (choose!31077 lt!1771016 key!4968 (_2!29401 (h!57381 oldBucket!40))))))

(assert (=> d!1453849 (not (contains!14332 lt!1771016 key!4968))))

(assert (=> d!1453849 (= (addThenRemoveForNewKeyIsSame!15 lt!1771016 key!4968 (_2!29401 (h!57381 oldBucket!40))) lt!1771040)))

(declare-fun bs!1017875 () Bool)

(assert (= bs!1017875 d!1453849))

(assert (=> bs!1017875 m!5449029))

(assert (=> bs!1017875 m!5449029))

(assert (=> bs!1017875 m!5449031))

(declare-fun m!5449081 () Bool)

(assert (=> bs!1017875 m!5449081))

(assert (=> bs!1017875 m!5448973))

(assert (=> b!4615594 d!1453849))

(declare-fun d!1453851 () Bool)

(assert (=> d!1453851 true))

(assert (=> d!1453851 true))

(declare-fun lambda!189342 () Int)

(declare-fun forall!10742 (List!51493 Int) Bool)

(assert (=> d!1453851 (= (allKeysSameHash!1296 newBucket!224 hash!414 hashF!1389) (forall!10742 newBucket!224 lambda!189342))))

(declare-fun bs!1017879 () Bool)

(assert (= bs!1017879 d!1453851))

(declare-fun m!5449099 () Bool)

(assert (=> bs!1017879 m!5449099))

(assert (=> b!4615592 d!1453851))

(declare-fun d!1453857 () Bool)

(declare-fun res!1933809 () Bool)

(declare-fun e!2879068 () Bool)

(assert (=> d!1453857 (=> res!1933809 e!2879068)))

(assert (=> d!1453857 (= res!1933809 (and ((_ is Cons!51369) lt!1771019) (= (_1!29401 (h!57381 lt!1771019)) key!4968)))))

(assert (=> d!1453857 (= (containsKey!2322 lt!1771019 key!4968) e!2879068)))

(declare-fun b!4615647 () Bool)

(declare-fun e!2879069 () Bool)

(assert (=> b!4615647 (= e!2879068 e!2879069)))

(declare-fun res!1933810 () Bool)

(assert (=> b!4615647 (=> (not res!1933810) (not e!2879069))))

(assert (=> b!4615647 (= res!1933810 ((_ is Cons!51369) lt!1771019))))

(declare-fun b!4615648 () Bool)

(assert (=> b!4615648 (= e!2879069 (containsKey!2322 (t!358497 lt!1771019) key!4968))))

(assert (= (and d!1453857 (not res!1933809)) b!4615647))

(assert (= (and b!4615647 res!1933810) b!4615648))

(declare-fun m!5449101 () Bool)

(assert (=> b!4615648 m!5449101))

(assert (=> b!4615603 d!1453857))

(declare-fun d!1453859 () Bool)

(assert (=> d!1453859 (= (head!9602 oldBucket!40) (h!57381 oldBucket!40))))

(assert (=> b!4615591 d!1453859))

(declare-fun bs!1017884 () Bool)

(declare-fun b!4615696 () Bool)

(assert (= bs!1017884 (and b!4615696 d!1453851)))

(declare-fun lambda!189374 () Int)

(assert (=> bs!1017884 (not (= lambda!189374 lambda!189342))))

(assert (=> b!4615696 true))

(declare-fun bs!1017885 () Bool)

(declare-fun b!4615695 () Bool)

(assert (= bs!1017885 (and b!4615695 d!1453851)))

(declare-fun lambda!189375 () Int)

(assert (=> bs!1017885 (not (= lambda!189375 lambda!189342))))

(declare-fun bs!1017886 () Bool)

(assert (= bs!1017886 (and b!4615695 b!4615696)))

(assert (=> bs!1017886 (= lambda!189375 lambda!189374)))

(assert (=> b!4615695 true))

(declare-fun lambda!189376 () Int)

(assert (=> bs!1017885 (not (= lambda!189376 lambda!189342))))

(declare-fun lt!1771121 () ListMap!4153)

(assert (=> bs!1017886 (= (= lt!1771121 (ListMap!4154 Nil!51369)) (= lambda!189376 lambda!189374))))

(assert (=> b!4615695 (= (= lt!1771121 (ListMap!4154 Nil!51369)) (= lambda!189376 lambda!189375))))

(assert (=> b!4615695 true))

(declare-fun bs!1017887 () Bool)

(declare-fun d!1453861 () Bool)

(assert (= bs!1017887 (and d!1453861 d!1453851)))

(declare-fun lambda!189377 () Int)

(assert (=> bs!1017887 (not (= lambda!189377 lambda!189342))))

(declare-fun bs!1017888 () Bool)

(assert (= bs!1017888 (and d!1453861 b!4615696)))

(declare-fun lt!1771130 () ListMap!4153)

(assert (=> bs!1017888 (= (= lt!1771130 (ListMap!4154 Nil!51369)) (= lambda!189377 lambda!189374))))

(declare-fun bs!1017889 () Bool)

(assert (= bs!1017889 (and d!1453861 b!4615695)))

(assert (=> bs!1017889 (= (= lt!1771130 (ListMap!4154 Nil!51369)) (= lambda!189377 lambda!189375))))

(assert (=> bs!1017889 (= (= lt!1771130 lt!1771121) (= lambda!189377 lambda!189376))))

(assert (=> d!1453861 true))

(declare-fun bm!321789 () Bool)

(declare-fun call!321796 () Unit!110138)

(declare-fun lemmaContainsAllItsOwnKeys!468 (ListMap!4153) Unit!110138)

(assert (=> bm!321789 (= call!321796 (lemmaContainsAllItsOwnKeys!468 (ListMap!4154 Nil!51369)))))

(declare-fun e!2879100 () ListMap!4153)

(assert (=> b!4615695 (= e!2879100 lt!1771121)))

(declare-fun lt!1771136 () ListMap!4153)

(assert (=> b!4615695 (= lt!1771136 (+!1827 (ListMap!4154 Nil!51369) (h!57381 oldBucket!40)))))

(assert (=> b!4615695 (= lt!1771121 (addToMapMapFromBucket!903 (t!358497 oldBucket!40) (+!1827 (ListMap!4154 Nil!51369) (h!57381 oldBucket!40))))))

(declare-fun lt!1771133 () Unit!110138)

(assert (=> b!4615695 (= lt!1771133 call!321796)))

(assert (=> b!4615695 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189375)))

(declare-fun lt!1771120 () Unit!110138)

(assert (=> b!4615695 (= lt!1771120 lt!1771133)))

(assert (=> b!4615695 (forall!10742 (toList!4849 lt!1771136) lambda!189376)))

(declare-fun lt!1771122 () Unit!110138)

(declare-fun Unit!110141 () Unit!110138)

(assert (=> b!4615695 (= lt!1771122 Unit!110141)))

(declare-fun call!321794 () Bool)

(assert (=> b!4615695 call!321794))

(declare-fun lt!1771127 () Unit!110138)

(declare-fun Unit!110142 () Unit!110138)

(assert (=> b!4615695 (= lt!1771127 Unit!110142)))

(declare-fun lt!1771138 () Unit!110138)

(declare-fun Unit!110143 () Unit!110138)

(assert (=> b!4615695 (= lt!1771138 Unit!110143)))

(declare-fun lt!1771134 () Unit!110138)

(declare-fun forallContained!2960 (List!51493 Int tuple2!52214) Unit!110138)

(assert (=> b!4615695 (= lt!1771134 (forallContained!2960 (toList!4849 lt!1771136) lambda!189376 (h!57381 oldBucket!40)))))

(assert (=> b!4615695 (contains!14332 lt!1771136 (_1!29401 (h!57381 oldBucket!40)))))

(declare-fun lt!1771131 () Unit!110138)

(declare-fun Unit!110144 () Unit!110138)

(assert (=> b!4615695 (= lt!1771131 Unit!110144)))

(assert (=> b!4615695 (contains!14332 lt!1771121 (_1!29401 (h!57381 oldBucket!40)))))

(declare-fun lt!1771126 () Unit!110138)

(declare-fun Unit!110145 () Unit!110138)

(assert (=> b!4615695 (= lt!1771126 Unit!110145)))

(assert (=> b!4615695 (forall!10742 oldBucket!40 lambda!189376)))

(declare-fun lt!1771135 () Unit!110138)

(declare-fun Unit!110146 () Unit!110138)

(assert (=> b!4615695 (= lt!1771135 Unit!110146)))

(assert (=> b!4615695 (forall!10742 (toList!4849 lt!1771136) lambda!189376)))

(declare-fun lt!1771139 () Unit!110138)

(declare-fun Unit!110147 () Unit!110138)

(assert (=> b!4615695 (= lt!1771139 Unit!110147)))

(declare-fun lt!1771128 () Unit!110138)

(declare-fun Unit!110148 () Unit!110138)

(assert (=> b!4615695 (= lt!1771128 Unit!110148)))

(declare-fun lt!1771140 () Unit!110138)

(declare-fun addForallContainsKeyThenBeforeAdding!467 (ListMap!4153 ListMap!4153 K!12755 V!13001) Unit!110138)

(assert (=> b!4615695 (= lt!1771140 (addForallContainsKeyThenBeforeAdding!467 (ListMap!4154 Nil!51369) lt!1771121 (_1!29401 (h!57381 oldBucket!40)) (_2!29401 (h!57381 oldBucket!40))))))

(assert (=> b!4615695 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189376)))

(declare-fun lt!1771132 () Unit!110138)

(assert (=> b!4615695 (= lt!1771132 lt!1771140)))

(assert (=> b!4615695 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189376)))

(declare-fun lt!1771123 () Unit!110138)

(declare-fun Unit!110149 () Unit!110138)

(assert (=> b!4615695 (= lt!1771123 Unit!110149)))

(declare-fun res!1933829 () Bool)

(assert (=> b!4615695 (= res!1933829 (forall!10742 oldBucket!40 lambda!189376))))

(declare-fun e!2879102 () Bool)

(assert (=> b!4615695 (=> (not res!1933829) (not e!2879102))))

(assert (=> b!4615695 e!2879102))

(declare-fun lt!1771124 () Unit!110138)

(declare-fun Unit!110151 () Unit!110138)

(assert (=> b!4615695 (= lt!1771124 Unit!110151)))

(declare-fun e!2879101 () Bool)

(assert (=> d!1453861 e!2879101))

(declare-fun res!1933830 () Bool)

(assert (=> d!1453861 (=> (not res!1933830) (not e!2879101))))

(assert (=> d!1453861 (= res!1933830 (forall!10742 oldBucket!40 lambda!189377))))

(assert (=> d!1453861 (= lt!1771130 e!2879100)))

(declare-fun c!790225 () Bool)

(assert (=> d!1453861 (= c!790225 ((_ is Nil!51369) oldBucket!40))))

(assert (=> d!1453861 (noDuplicateKeys!1442 oldBucket!40)))

(assert (=> d!1453861 (= (addToMapMapFromBucket!903 oldBucket!40 (ListMap!4154 Nil!51369)) lt!1771130)))

(declare-fun bm!321790 () Bool)

(assert (=> bm!321790 (= call!321794 (forall!10742 (ite c!790225 (toList!4849 (ListMap!4154 Nil!51369)) (t!358497 oldBucket!40)) (ite c!790225 lambda!189374 lambda!189376)))))

(assert (=> b!4615696 (= e!2879100 (ListMap!4154 Nil!51369))))

(declare-fun lt!1771137 () Unit!110138)

(assert (=> b!4615696 (= lt!1771137 call!321796)))

(assert (=> b!4615696 call!321794))

(declare-fun lt!1771129 () Unit!110138)

(assert (=> b!4615696 (= lt!1771129 lt!1771137)))

(declare-fun call!321795 () Bool)

(assert (=> b!4615696 call!321795))

(declare-fun lt!1771125 () Unit!110138)

(declare-fun Unit!110152 () Unit!110138)

(assert (=> b!4615696 (= lt!1771125 Unit!110152)))

(declare-fun b!4615697 () Bool)

(assert (=> b!4615697 (= e!2879102 call!321795)))

(declare-fun bm!321791 () Bool)

(assert (=> bm!321791 (= call!321795 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) (ite c!790225 lambda!189374 lambda!189376)))))

(declare-fun b!4615698 () Bool)

(declare-fun invariantList!1167 (List!51493) Bool)

(assert (=> b!4615698 (= e!2879101 (invariantList!1167 (toList!4849 lt!1771130)))))

(declare-fun b!4615699 () Bool)

(declare-fun res!1933831 () Bool)

(assert (=> b!4615699 (=> (not res!1933831) (not e!2879101))))

(assert (=> b!4615699 (= res!1933831 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189377))))

(assert (= (and d!1453861 c!790225) b!4615696))

(assert (= (and d!1453861 (not c!790225)) b!4615695))

(assert (= (and b!4615695 res!1933829) b!4615697))

(assert (= (or b!4615696 b!4615695) bm!321789))

(assert (= (or b!4615696 b!4615695) bm!321790))

(assert (= (or b!4615696 b!4615697) bm!321791))

(assert (= (and d!1453861 res!1933830) b!4615699))

(assert (= (and b!4615699 res!1933831) b!4615698))

(declare-fun m!5449151 () Bool)

(assert (=> b!4615698 m!5449151))

(declare-fun m!5449153 () Bool)

(assert (=> b!4615699 m!5449153))

(declare-fun m!5449155 () Bool)

(assert (=> b!4615695 m!5449155))

(declare-fun m!5449157 () Bool)

(assert (=> b!4615695 m!5449157))

(declare-fun m!5449159 () Bool)

(assert (=> b!4615695 m!5449159))

(declare-fun m!5449161 () Bool)

(assert (=> b!4615695 m!5449161))

(declare-fun m!5449163 () Bool)

(assert (=> b!4615695 m!5449163))

(declare-fun m!5449165 () Bool)

(assert (=> b!4615695 m!5449165))

(assert (=> b!4615695 m!5449159))

(declare-fun m!5449167 () Bool)

(assert (=> b!4615695 m!5449167))

(declare-fun m!5449169 () Bool)

(assert (=> b!4615695 m!5449169))

(declare-fun m!5449171 () Bool)

(assert (=> b!4615695 m!5449171))

(declare-fun m!5449173 () Bool)

(assert (=> b!4615695 m!5449173))

(assert (=> b!4615695 m!5449167))

(assert (=> b!4615695 m!5449173))

(assert (=> b!4615695 m!5449155))

(declare-fun m!5449175 () Bool)

(assert (=> bm!321791 m!5449175))

(declare-fun m!5449177 () Bool)

(assert (=> bm!321790 m!5449177))

(declare-fun m!5449179 () Bool)

(assert (=> d!1453861 m!5449179))

(assert (=> d!1453861 m!5448993))

(declare-fun m!5449181 () Bool)

(assert (=> bm!321789 m!5449181))

(assert (=> b!4615591 d!1453861))

(declare-fun d!1453869 () Bool)

(declare-fun content!8727 (List!51493) (InoxSet tuple2!52214))

(assert (=> d!1453869 (= (eq!785 (addToMapMapFromBucket!903 (Cons!51369 lt!1771014 lt!1771019) (ListMap!4154 Nil!51369)) (+!1827 lt!1771016 lt!1771014)) (= (content!8727 (toList!4849 (addToMapMapFromBucket!903 (Cons!51369 lt!1771014 lt!1771019) (ListMap!4154 Nil!51369)))) (content!8727 (toList!4849 (+!1827 lt!1771016 lt!1771014)))))))

(declare-fun bs!1017890 () Bool)

(assert (= bs!1017890 d!1453869))

(declare-fun m!5449183 () Bool)

(assert (=> bs!1017890 m!5449183))

(declare-fun m!5449185 () Bool)

(assert (=> bs!1017890 m!5449185))

(assert (=> b!4615591 d!1453869))

(declare-fun d!1453871 () Bool)

(declare-fun e!2879103 () Bool)

(assert (=> d!1453871 e!2879103))

(declare-fun res!1933833 () Bool)

(assert (=> d!1453871 (=> (not res!1933833) (not e!2879103))))

(declare-fun lt!1771141 () ListMap!4153)

(assert (=> d!1453871 (= res!1933833 (contains!14332 lt!1771141 (_1!29401 lt!1771014)))))

(declare-fun lt!1771142 () List!51493)

(assert (=> d!1453871 (= lt!1771141 (ListMap!4154 lt!1771142))))

(declare-fun lt!1771144 () Unit!110138)

(declare-fun lt!1771143 () Unit!110138)

(assert (=> d!1453871 (= lt!1771144 lt!1771143)))

(assert (=> d!1453871 (= (getValueByKey!1383 lt!1771142 (_1!29401 lt!1771014)) (Some!11468 (_2!29401 lt!1771014)))))

(assert (=> d!1453871 (= lt!1771143 (lemmaContainsTupThenGetReturnValue!819 lt!1771142 (_1!29401 lt!1771014) (_2!29401 lt!1771014)))))

(assert (=> d!1453871 (= lt!1771142 (insertNoDuplicatedKeys!327 (toList!4849 lt!1771016) (_1!29401 lt!1771014) (_2!29401 lt!1771014)))))

(assert (=> d!1453871 (= (+!1827 lt!1771016 lt!1771014) lt!1771141)))

(declare-fun b!4615702 () Bool)

(declare-fun res!1933832 () Bool)

(assert (=> b!4615702 (=> (not res!1933832) (not e!2879103))))

(assert (=> b!4615702 (= res!1933832 (= (getValueByKey!1383 (toList!4849 lt!1771141) (_1!29401 lt!1771014)) (Some!11468 (_2!29401 lt!1771014))))))

(declare-fun b!4615703 () Bool)

(assert (=> b!4615703 (= e!2879103 (contains!14333 (toList!4849 lt!1771141) lt!1771014))))

(assert (= (and d!1453871 res!1933833) b!4615702))

(assert (= (and b!4615702 res!1933832) b!4615703))

(declare-fun m!5449187 () Bool)

(assert (=> d!1453871 m!5449187))

(declare-fun m!5449189 () Bool)

(assert (=> d!1453871 m!5449189))

(declare-fun m!5449191 () Bool)

(assert (=> d!1453871 m!5449191))

(declare-fun m!5449193 () Bool)

(assert (=> d!1453871 m!5449193))

(declare-fun m!5449195 () Bool)

(assert (=> b!4615702 m!5449195))

(declare-fun m!5449197 () Bool)

(assert (=> b!4615703 m!5449197))

(assert (=> b!4615591 d!1453871))

(declare-fun d!1453873 () Bool)

(declare-fun e!2879104 () Bool)

(assert (=> d!1453873 e!2879104))

(declare-fun res!1933835 () Bool)

(assert (=> d!1453873 (=> (not res!1933835) (not e!2879104))))

(declare-fun lt!1771145 () ListMap!4153)

(assert (=> d!1453873 (= res!1933835 (contains!14332 lt!1771145 (_1!29401 (h!57381 oldBucket!40))))))

(declare-fun lt!1771146 () List!51493)

(assert (=> d!1453873 (= lt!1771145 (ListMap!4154 lt!1771146))))

(declare-fun lt!1771148 () Unit!110138)

(declare-fun lt!1771147 () Unit!110138)

(assert (=> d!1453873 (= lt!1771148 lt!1771147)))

(assert (=> d!1453873 (= (getValueByKey!1383 lt!1771146 (_1!29401 (h!57381 oldBucket!40))) (Some!11468 (_2!29401 (h!57381 oldBucket!40))))))

(assert (=> d!1453873 (= lt!1771147 (lemmaContainsTupThenGetReturnValue!819 lt!1771146 (_1!29401 (h!57381 oldBucket!40)) (_2!29401 (h!57381 oldBucket!40))))))

(assert (=> d!1453873 (= lt!1771146 (insertNoDuplicatedKeys!327 (toList!4849 lt!1771016) (_1!29401 (h!57381 oldBucket!40)) (_2!29401 (h!57381 oldBucket!40))))))

(assert (=> d!1453873 (= (+!1827 lt!1771016 (h!57381 oldBucket!40)) lt!1771145)))

(declare-fun b!4615704 () Bool)

(declare-fun res!1933834 () Bool)

(assert (=> b!4615704 (=> (not res!1933834) (not e!2879104))))

(assert (=> b!4615704 (= res!1933834 (= (getValueByKey!1383 (toList!4849 lt!1771145) (_1!29401 (h!57381 oldBucket!40))) (Some!11468 (_2!29401 (h!57381 oldBucket!40)))))))

(declare-fun b!4615705 () Bool)

(assert (=> b!4615705 (= e!2879104 (contains!14333 (toList!4849 lt!1771145) (h!57381 oldBucket!40)))))

(assert (= (and d!1453873 res!1933835) b!4615704))

(assert (= (and b!4615704 res!1933834) b!4615705))

(declare-fun m!5449199 () Bool)

(assert (=> d!1453873 m!5449199))

(declare-fun m!5449201 () Bool)

(assert (=> d!1453873 m!5449201))

(declare-fun m!5449203 () Bool)

(assert (=> d!1453873 m!5449203))

(declare-fun m!5449205 () Bool)

(assert (=> d!1453873 m!5449205))

(declare-fun m!5449207 () Bool)

(assert (=> b!4615704 m!5449207))

(declare-fun m!5449209 () Bool)

(assert (=> b!4615705 m!5449209))

(assert (=> b!4615591 d!1453873))

(declare-fun d!1453875 () Bool)

(assert (=> d!1453875 (= (eq!785 lt!1771007 lt!1771005) (= (content!8727 (toList!4849 lt!1771007)) (content!8727 (toList!4849 lt!1771005))))))

(declare-fun bs!1017891 () Bool)

(assert (= bs!1017891 d!1453875))

(declare-fun m!5449211 () Bool)

(assert (=> bs!1017891 m!5449211))

(declare-fun m!5449213 () Bool)

(assert (=> bs!1017891 m!5449213))

(assert (=> b!4615591 d!1453875))

(declare-fun d!1453877 () Bool)

(assert (=> d!1453877 (eq!785 (addToMapMapFromBucket!903 (Cons!51369 lt!1771014 lt!1771019) (ListMap!4154 Nil!51369)) (+!1827 (addToMapMapFromBucket!903 lt!1771019 (ListMap!4154 Nil!51369)) lt!1771014))))

(declare-fun lt!1771191 () Unit!110138)

(declare-fun choose!31079 (tuple2!52214 List!51493 ListMap!4153) Unit!110138)

(assert (=> d!1453877 (= lt!1771191 (choose!31079 lt!1771014 lt!1771019 (ListMap!4154 Nil!51369)))))

(assert (=> d!1453877 (noDuplicateKeys!1442 lt!1771019)))

(assert (=> d!1453877 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!36 lt!1771014 lt!1771019 (ListMap!4154 Nil!51369)) lt!1771191)))

(declare-fun bs!1017892 () Bool)

(assert (= bs!1017892 d!1453877))

(assert (=> bs!1017892 m!5448981))

(assert (=> bs!1017892 m!5448981))

(declare-fun m!5449215 () Bool)

(assert (=> bs!1017892 m!5449215))

(declare-fun m!5449217 () Bool)

(assert (=> bs!1017892 m!5449217))

(declare-fun m!5449219 () Bool)

(assert (=> bs!1017892 m!5449219))

(assert (=> bs!1017892 m!5449009))

(assert (=> bs!1017892 m!5449215))

(declare-fun m!5449221 () Bool)

(assert (=> bs!1017892 m!5449221))

(assert (=> bs!1017892 m!5449009))

(assert (=> b!4615591 d!1453877))

(declare-fun bs!1017893 () Bool)

(declare-fun b!4615711 () Bool)

(assert (= bs!1017893 (and b!4615711 b!4615695)))

(declare-fun lambda!189400 () Int)

(assert (=> bs!1017893 (= lambda!189400 lambda!189375)))

(declare-fun bs!1017894 () Bool)

(assert (= bs!1017894 (and b!4615711 d!1453851)))

(assert (=> bs!1017894 (not (= lambda!189400 lambda!189342))))

(declare-fun bs!1017895 () Bool)

(assert (= bs!1017895 (and b!4615711 d!1453861)))

(assert (=> bs!1017895 (= (= (ListMap!4154 Nil!51369) lt!1771130) (= lambda!189400 lambda!189377))))

(assert (=> bs!1017893 (= (= (ListMap!4154 Nil!51369) lt!1771121) (= lambda!189400 lambda!189376))))

(declare-fun bs!1017896 () Bool)

(assert (= bs!1017896 (and b!4615711 b!4615696)))

(assert (=> bs!1017896 (= lambda!189400 lambda!189374)))

(assert (=> b!4615711 true))

(declare-fun bs!1017897 () Bool)

(declare-fun b!4615710 () Bool)

(assert (= bs!1017897 (and b!4615710 b!4615695)))

(declare-fun lambda!189403 () Int)

(assert (=> bs!1017897 (= lambda!189403 lambda!189375)))

(declare-fun bs!1017898 () Bool)

(assert (= bs!1017898 (and b!4615710 d!1453851)))

(assert (=> bs!1017898 (not (= lambda!189403 lambda!189342))))

(declare-fun bs!1017899 () Bool)

(assert (= bs!1017899 (and b!4615710 b!4615711)))

(assert (=> bs!1017899 (= lambda!189403 lambda!189400)))

(declare-fun bs!1017900 () Bool)

(assert (= bs!1017900 (and b!4615710 d!1453861)))

(assert (=> bs!1017900 (= (= (ListMap!4154 Nil!51369) lt!1771130) (= lambda!189403 lambda!189377))))

(assert (=> bs!1017897 (= (= (ListMap!4154 Nil!51369) lt!1771121) (= lambda!189403 lambda!189376))))

(declare-fun bs!1017901 () Bool)

(assert (= bs!1017901 (and b!4615710 b!4615696)))

(assert (=> bs!1017901 (= lambda!189403 lambda!189374)))

(assert (=> b!4615710 true))

(declare-fun lt!1771195 () ListMap!4153)

(declare-fun lambda!189404 () Int)

(assert (=> bs!1017897 (= (= lt!1771195 (ListMap!4154 Nil!51369)) (= lambda!189404 lambda!189375))))

(assert (=> bs!1017898 (not (= lambda!189404 lambda!189342))))

(assert (=> bs!1017900 (= (= lt!1771195 lt!1771130) (= lambda!189404 lambda!189377))))

(assert (=> bs!1017897 (= (= lt!1771195 lt!1771121) (= lambda!189404 lambda!189376))))

(assert (=> bs!1017901 (= (= lt!1771195 (ListMap!4154 Nil!51369)) (= lambda!189404 lambda!189374))))

(assert (=> b!4615710 (= (= lt!1771195 (ListMap!4154 Nil!51369)) (= lambda!189404 lambda!189403))))

(assert (=> bs!1017899 (= (= lt!1771195 (ListMap!4154 Nil!51369)) (= lambda!189404 lambda!189400))))

(assert (=> b!4615710 true))

(declare-fun bs!1017902 () Bool)

(declare-fun d!1453879 () Bool)

(assert (= bs!1017902 (and d!1453879 b!4615695)))

(declare-fun lt!1771204 () ListMap!4153)

(declare-fun lambda!189405 () Int)

(assert (=> bs!1017902 (= (= lt!1771204 (ListMap!4154 Nil!51369)) (= lambda!189405 lambda!189375))))

(declare-fun bs!1017903 () Bool)

(assert (= bs!1017903 (and d!1453879 b!4615710)))

(assert (=> bs!1017903 (= (= lt!1771204 lt!1771195) (= lambda!189405 lambda!189404))))

(declare-fun bs!1017904 () Bool)

(assert (= bs!1017904 (and d!1453879 d!1453851)))

(assert (=> bs!1017904 (not (= lambda!189405 lambda!189342))))

(declare-fun bs!1017905 () Bool)

(assert (= bs!1017905 (and d!1453879 d!1453861)))

(assert (=> bs!1017905 (= (= lt!1771204 lt!1771130) (= lambda!189405 lambda!189377))))

(assert (=> bs!1017902 (= (= lt!1771204 lt!1771121) (= lambda!189405 lambda!189376))))

(declare-fun bs!1017906 () Bool)

(assert (= bs!1017906 (and d!1453879 b!4615696)))

(assert (=> bs!1017906 (= (= lt!1771204 (ListMap!4154 Nil!51369)) (= lambda!189405 lambda!189374))))

(assert (=> bs!1017903 (= (= lt!1771204 (ListMap!4154 Nil!51369)) (= lambda!189405 lambda!189403))))

(declare-fun bs!1017907 () Bool)

(assert (= bs!1017907 (and d!1453879 b!4615711)))

(assert (=> bs!1017907 (= (= lt!1771204 (ListMap!4154 Nil!51369)) (= lambda!189405 lambda!189400))))

(assert (=> d!1453879 true))

(declare-fun bm!321792 () Bool)

(declare-fun call!321799 () Unit!110138)

(assert (=> bm!321792 (= call!321799 (lemmaContainsAllItsOwnKeys!468 (ListMap!4154 Nil!51369)))))

(declare-fun e!2879109 () ListMap!4153)

(assert (=> b!4615710 (= e!2879109 lt!1771195)))

(declare-fun lt!1771210 () ListMap!4153)

(assert (=> b!4615710 (= lt!1771210 (+!1827 (ListMap!4154 Nil!51369) (h!57381 (Cons!51369 lt!1771014 lt!1771019))))))

(assert (=> b!4615710 (= lt!1771195 (addToMapMapFromBucket!903 (t!358497 (Cons!51369 lt!1771014 lt!1771019)) (+!1827 (ListMap!4154 Nil!51369) (h!57381 (Cons!51369 lt!1771014 lt!1771019)))))))

(declare-fun lt!1771207 () Unit!110138)

(assert (=> b!4615710 (= lt!1771207 call!321799)))

(assert (=> b!4615710 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189403)))

(declare-fun lt!1771194 () Unit!110138)

(assert (=> b!4615710 (= lt!1771194 lt!1771207)))

(assert (=> b!4615710 (forall!10742 (toList!4849 lt!1771210) lambda!189404)))

(declare-fun lt!1771196 () Unit!110138)

(declare-fun Unit!110164 () Unit!110138)

(assert (=> b!4615710 (= lt!1771196 Unit!110164)))

(declare-fun call!321797 () Bool)

(assert (=> b!4615710 call!321797))

(declare-fun lt!1771201 () Unit!110138)

(declare-fun Unit!110165 () Unit!110138)

(assert (=> b!4615710 (= lt!1771201 Unit!110165)))

(declare-fun lt!1771212 () Unit!110138)

(declare-fun Unit!110166 () Unit!110138)

(assert (=> b!4615710 (= lt!1771212 Unit!110166)))

(declare-fun lt!1771208 () Unit!110138)

(assert (=> b!4615710 (= lt!1771208 (forallContained!2960 (toList!4849 lt!1771210) lambda!189404 (h!57381 (Cons!51369 lt!1771014 lt!1771019))))))

(assert (=> b!4615710 (contains!14332 lt!1771210 (_1!29401 (h!57381 (Cons!51369 lt!1771014 lt!1771019))))))

(declare-fun lt!1771205 () Unit!110138)

(declare-fun Unit!110168 () Unit!110138)

(assert (=> b!4615710 (= lt!1771205 Unit!110168)))

(assert (=> b!4615710 (contains!14332 lt!1771195 (_1!29401 (h!57381 (Cons!51369 lt!1771014 lt!1771019))))))

(declare-fun lt!1771200 () Unit!110138)

(declare-fun Unit!110170 () Unit!110138)

(assert (=> b!4615710 (= lt!1771200 Unit!110170)))

(assert (=> b!4615710 (forall!10742 (Cons!51369 lt!1771014 lt!1771019) lambda!189404)))

(declare-fun lt!1771209 () Unit!110138)

(declare-fun Unit!110171 () Unit!110138)

(assert (=> b!4615710 (= lt!1771209 Unit!110171)))

(assert (=> b!4615710 (forall!10742 (toList!4849 lt!1771210) lambda!189404)))

(declare-fun lt!1771213 () Unit!110138)

(declare-fun Unit!110172 () Unit!110138)

(assert (=> b!4615710 (= lt!1771213 Unit!110172)))

(declare-fun lt!1771202 () Unit!110138)

(declare-fun Unit!110173 () Unit!110138)

(assert (=> b!4615710 (= lt!1771202 Unit!110173)))

(declare-fun lt!1771214 () Unit!110138)

(assert (=> b!4615710 (= lt!1771214 (addForallContainsKeyThenBeforeAdding!467 (ListMap!4154 Nil!51369) lt!1771195 (_1!29401 (h!57381 (Cons!51369 lt!1771014 lt!1771019))) (_2!29401 (h!57381 (Cons!51369 lt!1771014 lt!1771019)))))))

(assert (=> b!4615710 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189404)))

(declare-fun lt!1771206 () Unit!110138)

(assert (=> b!4615710 (= lt!1771206 lt!1771214)))

(assert (=> b!4615710 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189404)))

(declare-fun lt!1771197 () Unit!110138)

(declare-fun Unit!110174 () Unit!110138)

(assert (=> b!4615710 (= lt!1771197 Unit!110174)))

(declare-fun res!1933838 () Bool)

(assert (=> b!4615710 (= res!1933838 (forall!10742 (Cons!51369 lt!1771014 lt!1771019) lambda!189404))))

(declare-fun e!2879111 () Bool)

(assert (=> b!4615710 (=> (not res!1933838) (not e!2879111))))

(assert (=> b!4615710 e!2879111))

(declare-fun lt!1771198 () Unit!110138)

(declare-fun Unit!110175 () Unit!110138)

(assert (=> b!4615710 (= lt!1771198 Unit!110175)))

(declare-fun e!2879110 () Bool)

(assert (=> d!1453879 e!2879110))

(declare-fun res!1933839 () Bool)

(assert (=> d!1453879 (=> (not res!1933839) (not e!2879110))))

(assert (=> d!1453879 (= res!1933839 (forall!10742 (Cons!51369 lt!1771014 lt!1771019) lambda!189405))))

(assert (=> d!1453879 (= lt!1771204 e!2879109)))

(declare-fun c!790228 () Bool)

(assert (=> d!1453879 (= c!790228 ((_ is Nil!51369) (Cons!51369 lt!1771014 lt!1771019)))))

(assert (=> d!1453879 (noDuplicateKeys!1442 (Cons!51369 lt!1771014 lt!1771019))))

(assert (=> d!1453879 (= (addToMapMapFromBucket!903 (Cons!51369 lt!1771014 lt!1771019) (ListMap!4154 Nil!51369)) lt!1771204)))

(declare-fun bm!321793 () Bool)

(assert (=> bm!321793 (= call!321797 (forall!10742 (ite c!790228 (toList!4849 (ListMap!4154 Nil!51369)) (t!358497 (Cons!51369 lt!1771014 lt!1771019))) (ite c!790228 lambda!189400 lambda!189404)))))

(assert (=> b!4615711 (= e!2879109 (ListMap!4154 Nil!51369))))

(declare-fun lt!1771211 () Unit!110138)

(assert (=> b!4615711 (= lt!1771211 call!321799)))

(assert (=> b!4615711 call!321797))

(declare-fun lt!1771203 () Unit!110138)

(assert (=> b!4615711 (= lt!1771203 lt!1771211)))

(declare-fun call!321798 () Bool)

(assert (=> b!4615711 call!321798))

(declare-fun lt!1771199 () Unit!110138)

(declare-fun Unit!110176 () Unit!110138)

(assert (=> b!4615711 (= lt!1771199 Unit!110176)))

(declare-fun b!4615712 () Bool)

(assert (=> b!4615712 (= e!2879111 call!321798)))

(declare-fun bm!321794 () Bool)

(assert (=> bm!321794 (= call!321798 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) (ite c!790228 lambda!189400 lambda!189404)))))

(declare-fun b!4615713 () Bool)

(assert (=> b!4615713 (= e!2879110 (invariantList!1167 (toList!4849 lt!1771204)))))

(declare-fun b!4615714 () Bool)

(declare-fun res!1933840 () Bool)

(assert (=> b!4615714 (=> (not res!1933840) (not e!2879110))))

(assert (=> b!4615714 (= res!1933840 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189405))))

(assert (= (and d!1453879 c!790228) b!4615711))

(assert (= (and d!1453879 (not c!790228)) b!4615710))

(assert (= (and b!4615710 res!1933838) b!4615712))

(assert (= (or b!4615711 b!4615710) bm!321792))

(assert (= (or b!4615711 b!4615710) bm!321793))

(assert (= (or b!4615711 b!4615712) bm!321794))

(assert (= (and d!1453879 res!1933839) b!4615714))

(assert (= (and b!4615714 res!1933840) b!4615713))

(declare-fun m!5449223 () Bool)

(assert (=> b!4615713 m!5449223))

(declare-fun m!5449225 () Bool)

(assert (=> b!4615714 m!5449225))

(declare-fun m!5449227 () Bool)

(assert (=> b!4615710 m!5449227))

(declare-fun m!5449229 () Bool)

(assert (=> b!4615710 m!5449229))

(declare-fun m!5449231 () Bool)

(assert (=> b!4615710 m!5449231))

(declare-fun m!5449233 () Bool)

(assert (=> b!4615710 m!5449233))

(declare-fun m!5449235 () Bool)

(assert (=> b!4615710 m!5449235))

(declare-fun m!5449237 () Bool)

(assert (=> b!4615710 m!5449237))

(assert (=> b!4615710 m!5449231))

(declare-fun m!5449239 () Bool)

(assert (=> b!4615710 m!5449239))

(declare-fun m!5449241 () Bool)

(assert (=> b!4615710 m!5449241))

(declare-fun m!5449243 () Bool)

(assert (=> b!4615710 m!5449243))

(declare-fun m!5449245 () Bool)

(assert (=> b!4615710 m!5449245))

(assert (=> b!4615710 m!5449239))

(assert (=> b!4615710 m!5449245))

(assert (=> b!4615710 m!5449227))

(declare-fun m!5449247 () Bool)

(assert (=> bm!321794 m!5449247))

(declare-fun m!5449249 () Bool)

(assert (=> bm!321793 m!5449249))

(declare-fun m!5449251 () Bool)

(assert (=> d!1453879 m!5449251))

(declare-fun m!5449253 () Bool)

(assert (=> d!1453879 m!5449253))

(assert (=> bm!321792 m!5449181))

(assert (=> b!4615591 d!1453879))

(declare-fun d!1453881 () Bool)

(assert (=> d!1453881 (= (tail!8089 oldBucket!40) (t!358497 oldBucket!40))))

(assert (=> b!4615602 d!1453881))

(declare-fun d!1453883 () Bool)

(assert (=> d!1453883 (= (eq!785 lt!1771007 lt!1771012) (= (content!8727 (toList!4849 lt!1771007)) (content!8727 (toList!4849 lt!1771012))))))

(declare-fun bs!1017908 () Bool)

(assert (= bs!1017908 d!1453883))

(assert (=> bs!1017908 m!5449211))

(declare-fun m!5449255 () Bool)

(assert (=> bs!1017908 m!5449255))

(assert (=> b!4615600 d!1453883))

(declare-fun bs!1017924 () Bool)

(declare-fun d!1453885 () Bool)

(assert (= bs!1017924 (and d!1453885 b!4615596)))

(declare-fun lambda!189419 () Int)

(assert (=> bs!1017924 (= lambda!189419 lambda!189332)))

(declare-fun lt!1771259 () ListMap!4153)

(assert (=> d!1453885 (invariantList!1167 (toList!4849 lt!1771259))))

(declare-fun e!2879122 () ListMap!4153)

(assert (=> d!1453885 (= lt!1771259 e!2879122)))

(declare-fun c!790233 () Bool)

(assert (=> d!1453885 (= c!790233 ((_ is Cons!51370) (Cons!51370 (tuple2!52217 hash!414 newBucket!224) Nil!51370)))))

(assert (=> d!1453885 (forall!10740 (Cons!51370 (tuple2!52217 hash!414 newBucket!224) Nil!51370) lambda!189419)))

(assert (=> d!1453885 (= (extractMap!1498 (Cons!51370 (tuple2!52217 hash!414 newBucket!224) Nil!51370)) lt!1771259)))

(declare-fun b!4615737 () Bool)

(assert (=> b!4615737 (= e!2879122 (addToMapMapFromBucket!903 (_2!29402 (h!57382 (Cons!51370 (tuple2!52217 hash!414 newBucket!224) Nil!51370))) (extractMap!1498 (t!358498 (Cons!51370 (tuple2!52217 hash!414 newBucket!224) Nil!51370)))))))

(declare-fun b!4615738 () Bool)

(assert (=> b!4615738 (= e!2879122 (ListMap!4154 Nil!51369))))

(assert (= (and d!1453885 c!790233) b!4615737))

(assert (= (and d!1453885 (not c!790233)) b!4615738))

(declare-fun m!5449289 () Bool)

(assert (=> d!1453885 m!5449289))

(declare-fun m!5449291 () Bool)

(assert (=> d!1453885 m!5449291))

(declare-fun m!5449293 () Bool)

(assert (=> b!4615737 m!5449293))

(assert (=> b!4615737 m!5449293))

(declare-fun m!5449295 () Bool)

(assert (=> b!4615737 m!5449295))

(assert (=> b!4615601 d!1453885))

(declare-fun bs!1017925 () Bool)

(declare-fun d!1453889 () Bool)

(assert (= bs!1017925 (and d!1453889 b!4615596)))

(declare-fun lambda!189420 () Int)

(assert (=> bs!1017925 (= lambda!189420 lambda!189332)))

(declare-fun bs!1017927 () Bool)

(assert (= bs!1017927 (and d!1453889 d!1453885)))

(assert (=> bs!1017927 (= lambda!189420 lambda!189419)))

(declare-fun lt!1771260 () ListMap!4153)

(assert (=> d!1453889 (invariantList!1167 (toList!4849 lt!1771260))))

(declare-fun e!2879123 () ListMap!4153)

(assert (=> d!1453889 (= lt!1771260 e!2879123)))

(declare-fun c!790234 () Bool)

(assert (=> d!1453889 (= c!790234 ((_ is Cons!51370) lt!1771008))))

(assert (=> d!1453889 (forall!10740 lt!1771008 lambda!189420)))

(assert (=> d!1453889 (= (extractMap!1498 lt!1771008) lt!1771260)))

(declare-fun b!4615739 () Bool)

(assert (=> b!4615739 (= e!2879123 (addToMapMapFromBucket!903 (_2!29402 (h!57382 lt!1771008)) (extractMap!1498 (t!358498 lt!1771008))))))

(declare-fun b!4615740 () Bool)

(assert (=> b!4615740 (= e!2879123 (ListMap!4154 Nil!51369))))

(assert (= (and d!1453889 c!790234) b!4615739))

(assert (= (and d!1453889 (not c!790234)) b!4615740))

(declare-fun m!5449297 () Bool)

(assert (=> d!1453889 m!5449297))

(declare-fun m!5449299 () Bool)

(assert (=> d!1453889 m!5449299))

(declare-fun m!5449301 () Bool)

(assert (=> b!4615739 m!5449301))

(assert (=> b!4615739 m!5449301))

(declare-fun m!5449303 () Bool)

(assert (=> b!4615739 m!5449303))

(assert (=> b!4615601 d!1453889))

(declare-fun b!4615775 () Bool)

(declare-fun e!2879152 () Bool)

(declare-fun e!2879153 () Bool)

(assert (=> b!4615775 (= e!2879152 e!2879153)))

(declare-fun res!1933871 () Bool)

(assert (=> b!4615775 (=> (not res!1933871) (not e!2879153))))

(declare-fun isDefined!8735 (Option!11469) Bool)

(assert (=> b!4615775 (= res!1933871 (isDefined!8735 (getValueByKey!1383 (toList!4849 lt!1771016) key!4968)))))

(declare-fun b!4615776 () Bool)

(assert (=> b!4615776 false))

(declare-fun lt!1771322 () Unit!110138)

(declare-fun lt!1771326 () Unit!110138)

(assert (=> b!4615776 (= lt!1771322 lt!1771326)))

(declare-fun containsKey!2324 (List!51493 K!12755) Bool)

(assert (=> b!4615776 (containsKey!2324 (toList!4849 lt!1771016) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!617 (List!51493 K!12755) Unit!110138)

(assert (=> b!4615776 (= lt!1771326 (lemmaInGetKeysListThenContainsKey!617 (toList!4849 lt!1771016) key!4968))))

(declare-fun e!2879148 () Unit!110138)

(declare-fun Unit!110181 () Unit!110138)

(assert (=> b!4615776 (= e!2879148 Unit!110181)))

(declare-fun b!4615777 () Bool)

(declare-fun e!2879151 () List!51495)

(declare-fun getKeysList!618 (List!51493) List!51495)

(assert (=> b!4615777 (= e!2879151 (getKeysList!618 (toList!4849 lt!1771016)))))

(declare-fun b!4615778 () Bool)

(declare-fun e!2879150 () Bool)

(declare-fun contains!14335 (List!51495 K!12755) Bool)

(assert (=> b!4615778 (= e!2879150 (not (contains!14335 (keys!18052 lt!1771016) key!4968)))))

(declare-fun b!4615779 () Bool)

(declare-fun e!2879149 () Unit!110138)

(declare-fun lt!1771325 () Unit!110138)

(assert (=> b!4615779 (= e!2879149 lt!1771325)))

(declare-fun lt!1771321 () Unit!110138)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1286 (List!51493 K!12755) Unit!110138)

(assert (=> b!4615779 (= lt!1771321 (lemmaContainsKeyImpliesGetValueByKeyDefined!1286 (toList!4849 lt!1771016) key!4968))))

(assert (=> b!4615779 (isDefined!8735 (getValueByKey!1383 (toList!4849 lt!1771016) key!4968))))

(declare-fun lt!1771323 () Unit!110138)

(assert (=> b!4615779 (= lt!1771323 lt!1771321)))

(declare-fun lemmaInListThenGetKeysListContains!613 (List!51493 K!12755) Unit!110138)

(assert (=> b!4615779 (= lt!1771325 (lemmaInListThenGetKeysListContains!613 (toList!4849 lt!1771016) key!4968))))

(declare-fun call!321820 () Bool)

(assert (=> b!4615779 call!321820))

(declare-fun bm!321815 () Bool)

(assert (=> bm!321815 (= call!321820 (contains!14335 e!2879151 key!4968))))

(declare-fun c!790244 () Bool)

(declare-fun c!790243 () Bool)

(assert (=> bm!321815 (= c!790244 c!790243)))

(declare-fun b!4615780 () Bool)

(assert (=> b!4615780 (= e!2879153 (contains!14335 (keys!18052 lt!1771016) key!4968))))

(declare-fun d!1453891 () Bool)

(assert (=> d!1453891 e!2879152))

(declare-fun res!1933869 () Bool)

(assert (=> d!1453891 (=> res!1933869 e!2879152)))

(assert (=> d!1453891 (= res!1933869 e!2879150)))

(declare-fun res!1933870 () Bool)

(assert (=> d!1453891 (=> (not res!1933870) (not e!2879150))))

(declare-fun lt!1771324 () Bool)

(assert (=> d!1453891 (= res!1933870 (not lt!1771324))))

(declare-fun lt!1771320 () Bool)

(assert (=> d!1453891 (= lt!1771324 lt!1771320)))

(declare-fun lt!1771319 () Unit!110138)

(assert (=> d!1453891 (= lt!1771319 e!2879149)))

(assert (=> d!1453891 (= c!790243 lt!1771320)))

(assert (=> d!1453891 (= lt!1771320 (containsKey!2324 (toList!4849 lt!1771016) key!4968))))

(assert (=> d!1453891 (= (contains!14332 lt!1771016 key!4968) lt!1771324)))

(declare-fun b!4615781 () Bool)

(assert (=> b!4615781 (= e!2879149 e!2879148)))

(declare-fun c!790245 () Bool)

(assert (=> b!4615781 (= c!790245 call!321820)))

(declare-fun b!4615782 () Bool)

(declare-fun Unit!110189 () Unit!110138)

(assert (=> b!4615782 (= e!2879148 Unit!110189)))

(declare-fun b!4615783 () Bool)

(assert (=> b!4615783 (= e!2879151 (keys!18052 lt!1771016))))

(assert (= (and d!1453891 c!790243) b!4615779))

(assert (= (and d!1453891 (not c!790243)) b!4615781))

(assert (= (and b!4615781 c!790245) b!4615776))

(assert (= (and b!4615781 (not c!790245)) b!4615782))

(assert (= (or b!4615779 b!4615781) bm!321815))

(assert (= (and bm!321815 c!790244) b!4615777))

(assert (= (and bm!321815 (not c!790244)) b!4615783))

(assert (= (and d!1453891 res!1933870) b!4615778))

(assert (= (and d!1453891 (not res!1933869)) b!4615775))

(assert (= (and b!4615775 res!1933871) b!4615780))

(declare-fun m!5449373 () Bool)

(assert (=> b!4615778 m!5449373))

(assert (=> b!4615778 m!5449373))

(declare-fun m!5449375 () Bool)

(assert (=> b!4615778 m!5449375))

(declare-fun m!5449377 () Bool)

(assert (=> d!1453891 m!5449377))

(declare-fun m!5449379 () Bool)

(assert (=> b!4615777 m!5449379))

(declare-fun m!5449381 () Bool)

(assert (=> b!4615779 m!5449381))

(declare-fun m!5449383 () Bool)

(assert (=> b!4615779 m!5449383))

(assert (=> b!4615779 m!5449383))

(declare-fun m!5449385 () Bool)

(assert (=> b!4615779 m!5449385))

(declare-fun m!5449387 () Bool)

(assert (=> b!4615779 m!5449387))

(assert (=> b!4615783 m!5449373))

(assert (=> b!4615775 m!5449383))

(assert (=> b!4615775 m!5449383))

(assert (=> b!4615775 m!5449385))

(assert (=> b!4615780 m!5449373))

(assert (=> b!4615780 m!5449373))

(assert (=> b!4615780 m!5449375))

(declare-fun m!5449389 () Bool)

(assert (=> bm!321815 m!5449389))

(assert (=> b!4615776 m!5449377))

(declare-fun m!5449391 () Bool)

(assert (=> b!4615776 m!5449391))

(assert (=> b!4615588 d!1453891))

(declare-fun b!4615784 () Bool)

(declare-fun e!2879158 () Bool)

(declare-fun e!2879159 () Bool)

(assert (=> b!4615784 (= e!2879158 e!2879159)))

(declare-fun res!1933874 () Bool)

(assert (=> b!4615784 (=> (not res!1933874) (not e!2879159))))

(assert (=> b!4615784 (= res!1933874 (isDefined!8735 (getValueByKey!1383 (toList!4849 lt!1771004) key!4968)))))

(declare-fun b!4615785 () Bool)

(assert (=> b!4615785 false))

(declare-fun lt!1771330 () Unit!110138)

(declare-fun lt!1771334 () Unit!110138)

(assert (=> b!4615785 (= lt!1771330 lt!1771334)))

(assert (=> b!4615785 (containsKey!2324 (toList!4849 lt!1771004) key!4968)))

(assert (=> b!4615785 (= lt!1771334 (lemmaInGetKeysListThenContainsKey!617 (toList!4849 lt!1771004) key!4968))))

(declare-fun e!2879154 () Unit!110138)

(declare-fun Unit!110190 () Unit!110138)

(assert (=> b!4615785 (= e!2879154 Unit!110190)))

(declare-fun b!4615786 () Bool)

(declare-fun e!2879157 () List!51495)

(assert (=> b!4615786 (= e!2879157 (getKeysList!618 (toList!4849 lt!1771004)))))

(declare-fun b!4615787 () Bool)

(declare-fun e!2879156 () Bool)

(assert (=> b!4615787 (= e!2879156 (not (contains!14335 (keys!18052 lt!1771004) key!4968)))))

(declare-fun b!4615788 () Bool)

(declare-fun e!2879155 () Unit!110138)

(declare-fun lt!1771333 () Unit!110138)

(assert (=> b!4615788 (= e!2879155 lt!1771333)))

(declare-fun lt!1771329 () Unit!110138)

(assert (=> b!4615788 (= lt!1771329 (lemmaContainsKeyImpliesGetValueByKeyDefined!1286 (toList!4849 lt!1771004) key!4968))))

(assert (=> b!4615788 (isDefined!8735 (getValueByKey!1383 (toList!4849 lt!1771004) key!4968))))

(declare-fun lt!1771331 () Unit!110138)

(assert (=> b!4615788 (= lt!1771331 lt!1771329)))

(assert (=> b!4615788 (= lt!1771333 (lemmaInListThenGetKeysListContains!613 (toList!4849 lt!1771004) key!4968))))

(declare-fun call!321821 () Bool)

(assert (=> b!4615788 call!321821))

(declare-fun bm!321816 () Bool)

(assert (=> bm!321816 (= call!321821 (contains!14335 e!2879157 key!4968))))

(declare-fun c!790247 () Bool)

(declare-fun c!790246 () Bool)

(assert (=> bm!321816 (= c!790247 c!790246)))

(declare-fun b!4615789 () Bool)

(assert (=> b!4615789 (= e!2879159 (contains!14335 (keys!18052 lt!1771004) key!4968))))

(declare-fun d!1453903 () Bool)

(assert (=> d!1453903 e!2879158))

(declare-fun res!1933872 () Bool)

(assert (=> d!1453903 (=> res!1933872 e!2879158)))

(assert (=> d!1453903 (= res!1933872 e!2879156)))

(declare-fun res!1933873 () Bool)

(assert (=> d!1453903 (=> (not res!1933873) (not e!2879156))))

(declare-fun lt!1771332 () Bool)

(assert (=> d!1453903 (= res!1933873 (not lt!1771332))))

(declare-fun lt!1771328 () Bool)

(assert (=> d!1453903 (= lt!1771332 lt!1771328)))

(declare-fun lt!1771327 () Unit!110138)

(assert (=> d!1453903 (= lt!1771327 e!2879155)))

(assert (=> d!1453903 (= c!790246 lt!1771328)))

(assert (=> d!1453903 (= lt!1771328 (containsKey!2324 (toList!4849 lt!1771004) key!4968))))

(assert (=> d!1453903 (= (contains!14332 lt!1771004 key!4968) lt!1771332)))

(declare-fun b!4615790 () Bool)

(assert (=> b!4615790 (= e!2879155 e!2879154)))

(declare-fun c!790248 () Bool)

(assert (=> b!4615790 (= c!790248 call!321821)))

(declare-fun b!4615791 () Bool)

(declare-fun Unit!110191 () Unit!110138)

(assert (=> b!4615791 (= e!2879154 Unit!110191)))

(declare-fun b!4615792 () Bool)

(assert (=> b!4615792 (= e!2879157 (keys!18052 lt!1771004))))

(assert (= (and d!1453903 c!790246) b!4615788))

(assert (= (and d!1453903 (not c!790246)) b!4615790))

(assert (= (and b!4615790 c!790248) b!4615785))

(assert (= (and b!4615790 (not c!790248)) b!4615791))

(assert (= (or b!4615788 b!4615790) bm!321816))

(assert (= (and bm!321816 c!790247) b!4615786))

(assert (= (and bm!321816 (not c!790247)) b!4615792))

(assert (= (and d!1453903 res!1933873) b!4615787))

(assert (= (and d!1453903 (not res!1933872)) b!4615784))

(assert (= (and b!4615784 res!1933874) b!4615789))

(declare-fun m!5449393 () Bool)

(assert (=> b!4615787 m!5449393))

(assert (=> b!4615787 m!5449393))

(declare-fun m!5449395 () Bool)

(assert (=> b!4615787 m!5449395))

(declare-fun m!5449397 () Bool)

(assert (=> d!1453903 m!5449397))

(declare-fun m!5449399 () Bool)

(assert (=> b!4615786 m!5449399))

(declare-fun m!5449401 () Bool)

(assert (=> b!4615788 m!5449401))

(declare-fun m!5449403 () Bool)

(assert (=> b!4615788 m!5449403))

(assert (=> b!4615788 m!5449403))

(declare-fun m!5449405 () Bool)

(assert (=> b!4615788 m!5449405))

(declare-fun m!5449407 () Bool)

(assert (=> b!4615788 m!5449407))

(assert (=> b!4615792 m!5449393))

(assert (=> b!4615784 m!5449403))

(assert (=> b!4615784 m!5449403))

(assert (=> b!4615784 m!5449405))

(assert (=> b!4615789 m!5449393))

(assert (=> b!4615789 m!5449393))

(assert (=> b!4615789 m!5449395))

(declare-fun m!5449409 () Bool)

(assert (=> bm!321816 m!5449409))

(assert (=> b!4615785 m!5449397))

(declare-fun m!5449411 () Bool)

(assert (=> b!4615785 m!5449411))

(assert (=> b!4615588 d!1453903))

(declare-fun bs!1018006 () Bool)

(declare-fun d!1453905 () Bool)

(assert (= bs!1018006 (and d!1453905 b!4615596)))

(declare-fun lambda!189433 () Int)

(assert (=> bs!1018006 (= lambda!189433 lambda!189332)))

(declare-fun bs!1018007 () Bool)

(assert (= bs!1018007 (and d!1453905 d!1453885)))

(assert (=> bs!1018007 (= lambda!189433 lambda!189419)))

(declare-fun bs!1018008 () Bool)

(assert (= bs!1018008 (and d!1453905 d!1453889)))

(assert (=> bs!1018008 (= lambda!189433 lambda!189420)))

(assert (=> d!1453905 (not (contains!14332 (extractMap!1498 (toList!4850 (ListLongMap!3440 lt!1771008))) key!4968))))

(declare-fun lt!1771337 () Unit!110138)

(declare-fun choose!31080 (ListLongMap!3439 K!12755 Hashable!5839) Unit!110138)

(assert (=> d!1453905 (= lt!1771337 (choose!31080 (ListLongMap!3440 lt!1771008) key!4968 hashF!1389))))

(assert (=> d!1453905 (forall!10740 (toList!4850 (ListLongMap!3440 lt!1771008)) lambda!189433)))

(assert (=> d!1453905 (= (lemmaNotInItsHashBucketThenNotInMap!356 (ListLongMap!3440 lt!1771008) key!4968 hashF!1389) lt!1771337)))

(declare-fun bs!1018009 () Bool)

(assert (= bs!1018009 d!1453905))

(declare-fun m!5449453 () Bool)

(assert (=> bs!1018009 m!5449453))

(assert (=> bs!1018009 m!5449453))

(declare-fun m!5449455 () Bool)

(assert (=> bs!1018009 m!5449455))

(declare-fun m!5449457 () Bool)

(assert (=> bs!1018009 m!5449457))

(declare-fun m!5449459 () Bool)

(assert (=> bs!1018009 m!5449459))

(assert (=> b!4615588 d!1453905))

(declare-fun d!1453913 () Bool)

(declare-fun hash!3396 (Hashable!5839 K!12755) (_ BitVec 64))

(assert (=> d!1453913 (= (hash!3395 hashF!1389 key!4968) (hash!3396 hashF!1389 key!4968))))

(declare-fun bs!1018010 () Bool)

(assert (= bs!1018010 d!1453913))

(declare-fun m!5449461 () Bool)

(assert (=> bs!1018010 m!5449461))

(assert (=> b!4615599 d!1453913))

(declare-fun b!4615804 () Bool)

(declare-fun e!2879165 () List!51493)

(assert (=> b!4615804 (= e!2879165 Nil!51369)))

(declare-fun b!4615801 () Bool)

(declare-fun e!2879164 () List!51493)

(assert (=> b!4615801 (= e!2879164 (t!358497 oldBucket!40))))

(declare-fun b!4615803 () Bool)

(assert (=> b!4615803 (= e!2879165 (Cons!51369 (h!57381 oldBucket!40) (removePairForKey!1065 (t!358497 oldBucket!40) key!4968)))))

(declare-fun b!4615802 () Bool)

(assert (=> b!4615802 (= e!2879164 e!2879165)))

(declare-fun c!790254 () Bool)

(assert (=> b!4615802 (= c!790254 ((_ is Cons!51369) oldBucket!40))))

(declare-fun d!1453915 () Bool)

(declare-fun lt!1771343 () List!51493)

(assert (=> d!1453915 (not (containsKey!2322 lt!1771343 key!4968))))

(assert (=> d!1453915 (= lt!1771343 e!2879164)))

(declare-fun c!790253 () Bool)

(assert (=> d!1453915 (= c!790253 (and ((_ is Cons!51369) oldBucket!40) (= (_1!29401 (h!57381 oldBucket!40)) key!4968)))))

(assert (=> d!1453915 (noDuplicateKeys!1442 oldBucket!40)))

(assert (=> d!1453915 (= (removePairForKey!1065 oldBucket!40 key!4968) lt!1771343)))

(assert (= (and d!1453915 c!790253) b!4615801))

(assert (= (and d!1453915 (not c!790253)) b!4615802))

(assert (= (and b!4615802 c!790254) b!4615803))

(assert (= (and b!4615802 (not c!790254)) b!4615804))

(declare-fun m!5449469 () Bool)

(assert (=> b!4615803 m!5449469))

(declare-fun m!5449471 () Bool)

(assert (=> d!1453915 m!5449471))

(assert (=> d!1453915 m!5448993))

(assert (=> b!4615589 d!1453915))

(declare-fun d!1453919 () Bool)

(declare-fun res!1933879 () Bool)

(declare-fun e!2879170 () Bool)

(assert (=> d!1453919 (=> res!1933879 e!2879170)))

(assert (=> d!1453919 (= res!1933879 (not ((_ is Cons!51369) newBucket!224)))))

(assert (=> d!1453919 (= (noDuplicateKeys!1442 newBucket!224) e!2879170)))

(declare-fun b!4615809 () Bool)

(declare-fun e!2879171 () Bool)

(assert (=> b!4615809 (= e!2879170 e!2879171)))

(declare-fun res!1933880 () Bool)

(assert (=> b!4615809 (=> (not res!1933880) (not e!2879171))))

(assert (=> b!4615809 (= res!1933880 (not (containsKey!2322 (t!358497 newBucket!224) (_1!29401 (h!57381 newBucket!224)))))))

(declare-fun b!4615810 () Bool)

(assert (=> b!4615810 (= e!2879171 (noDuplicateKeys!1442 (t!358497 newBucket!224)))))

(assert (= (and d!1453919 (not res!1933879)) b!4615809))

(assert (= (and b!4615809 res!1933880) b!4615810))

(declare-fun m!5449473 () Bool)

(assert (=> b!4615809 m!5449473))

(declare-fun m!5449475 () Bool)

(assert (=> b!4615810 m!5449475))

(assert (=> b!4615598 d!1453919))

(declare-fun d!1453921 () Bool)

(declare-fun res!1933885 () Bool)

(declare-fun e!2879176 () Bool)

(assert (=> d!1453921 (=> res!1933885 e!2879176)))

(assert (=> d!1453921 (= res!1933885 ((_ is Nil!51370) lt!1771010))))

(assert (=> d!1453921 (= (forall!10740 lt!1771010 lambda!189332) e!2879176)))

(declare-fun b!4615815 () Bool)

(declare-fun e!2879177 () Bool)

(assert (=> b!4615815 (= e!2879176 e!2879177)))

(declare-fun res!1933886 () Bool)

(assert (=> b!4615815 (=> (not res!1933886) (not e!2879177))))

(declare-fun dynLambda!21461 (Int tuple2!52216) Bool)

(assert (=> b!4615815 (= res!1933886 (dynLambda!21461 lambda!189332 (h!57382 lt!1771010)))))

(declare-fun b!4615816 () Bool)

(assert (=> b!4615816 (= e!2879177 (forall!10740 (t!358498 lt!1771010) lambda!189332))))

(assert (= (and d!1453921 (not res!1933885)) b!4615815))

(assert (= (and b!4615815 res!1933886) b!4615816))

(declare-fun b_lambda!170527 () Bool)

(assert (=> (not b_lambda!170527) (not b!4615815)))

(declare-fun m!5449477 () Bool)

(assert (=> b!4615815 m!5449477))

(declare-fun m!5449479 () Bool)

(assert (=> b!4615816 m!5449479))

(assert (=> b!4615596 d!1453921))

(declare-fun d!1453923 () Bool)

(assert (=> d!1453923 (= (eq!785 lt!1771015 (-!532 lt!1771012 key!4968)) (= (content!8727 (toList!4849 lt!1771015)) (content!8727 (toList!4849 (-!532 lt!1771012 key!4968)))))))

(declare-fun bs!1018012 () Bool)

(assert (= bs!1018012 d!1453923))

(declare-fun m!5449481 () Bool)

(assert (=> bs!1018012 m!5449481))

(declare-fun m!5449483 () Bool)

(assert (=> bs!1018012 m!5449483))

(assert (=> b!4615586 d!1453923))

(declare-fun d!1453925 () Bool)

(declare-fun e!2879178 () Bool)

(assert (=> d!1453925 e!2879178))

(declare-fun res!1933887 () Bool)

(assert (=> d!1453925 (=> (not res!1933887) (not e!2879178))))

(declare-fun lt!1771352 () ListMap!4153)

(assert (=> d!1453925 (= res!1933887 (not (contains!14332 lt!1771352 key!4968)))))

(assert (=> d!1453925 (= lt!1771352 (ListMap!4154 (removePresrvNoDuplicatedKeys!241 (toList!4849 lt!1771012) key!4968)))))

(assert (=> d!1453925 (= (-!532 lt!1771012 key!4968) lt!1771352)))

(declare-fun b!4615817 () Bool)

(assert (=> b!4615817 (= e!2879178 (= ((_ map and) (content!8726 (keys!18052 lt!1771012)) ((_ map not) (store ((as const (Array K!12755 Bool)) false) key!4968 true))) (content!8726 (keys!18052 lt!1771352))))))

(assert (= (and d!1453925 res!1933887) b!4615817))

(declare-fun m!5449485 () Bool)

(assert (=> d!1453925 m!5449485))

(declare-fun m!5449487 () Bool)

(assert (=> d!1453925 m!5449487))

(declare-fun m!5449489 () Bool)

(assert (=> b!4615817 m!5449489))

(declare-fun m!5449491 () Bool)

(assert (=> b!4615817 m!5449491))

(assert (=> b!4615817 m!5449043))

(declare-fun m!5449493 () Bool)

(assert (=> b!4615817 m!5449493))

(declare-fun m!5449495 () Bool)

(assert (=> b!4615817 m!5449495))

(assert (=> b!4615817 m!5449493))

(assert (=> b!4615817 m!5449489))

(assert (=> b!4615586 d!1453925))

(declare-fun d!1453927 () Bool)

(assert (=> d!1453927 (eq!785 (-!532 lt!1771007 key!4968) (-!532 lt!1771012 key!4968))))

(declare-fun lt!1771363 () Unit!110138)

(declare-fun choose!31081 (ListMap!4153 ListMap!4153 K!12755) Unit!110138)

(assert (=> d!1453927 (= lt!1771363 (choose!31081 lt!1771007 lt!1771012 key!4968))))

(assert (=> d!1453927 (eq!785 lt!1771007 lt!1771012)))

(assert (=> d!1453927 (= (lemmaRemovePreservesEq!4 lt!1771007 lt!1771012 key!4968) lt!1771363)))

(declare-fun bs!1018013 () Bool)

(assert (= bs!1018013 d!1453927))

(assert (=> bs!1018013 m!5449027))

(assert (=> bs!1018013 m!5448995))

(declare-fun m!5449525 () Bool)

(assert (=> bs!1018013 m!5449525))

(assert (=> bs!1018013 m!5448995))

(assert (=> bs!1018013 m!5449001))

(assert (=> bs!1018013 m!5449027))

(declare-fun m!5449527 () Bool)

(assert (=> bs!1018013 m!5449527))

(assert (=> b!4615586 d!1453927))

(declare-fun d!1453935 () Bool)

(declare-fun res!1933898 () Bool)

(declare-fun e!2879185 () Bool)

(assert (=> d!1453935 (=> res!1933898 e!2879185)))

(assert (=> d!1453935 (= res!1933898 (not ((_ is Cons!51369) oldBucket!40)))))

(assert (=> d!1453935 (= (noDuplicateKeys!1442 oldBucket!40) e!2879185)))

(declare-fun b!4615828 () Bool)

(declare-fun e!2879186 () Bool)

(assert (=> b!4615828 (= e!2879185 e!2879186)))

(declare-fun res!1933899 () Bool)

(assert (=> b!4615828 (=> (not res!1933899) (not e!2879186))))

(assert (=> b!4615828 (= res!1933899 (not (containsKey!2322 (t!358497 oldBucket!40) (_1!29401 (h!57381 oldBucket!40)))))))

(declare-fun b!4615829 () Bool)

(assert (=> b!4615829 (= e!2879186 (noDuplicateKeys!1442 (t!358497 oldBucket!40)))))

(assert (= (and d!1453935 (not res!1933898)) b!4615828))

(assert (= (and b!4615828 res!1933899) b!4615829))

(declare-fun m!5449529 () Bool)

(assert (=> b!4615828 m!5449529))

(declare-fun m!5449531 () Bool)

(assert (=> b!4615829 m!5449531))

(assert (=> start!461736 d!1453935))

(declare-fun bs!1018014 () Bool)

(declare-fun b!4615831 () Bool)

(assert (= bs!1018014 (and b!4615831 b!4615695)))

(declare-fun lambda!189434 () Int)

(assert (=> bs!1018014 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189434 lambda!189375))))

(declare-fun bs!1018015 () Bool)

(assert (= bs!1018015 (and b!4615831 d!1453879)))

(assert (=> bs!1018015 (= (= lt!1771017 lt!1771204) (= lambda!189434 lambda!189405))))

(declare-fun bs!1018016 () Bool)

(assert (= bs!1018016 (and b!4615831 b!4615710)))

(assert (=> bs!1018016 (= (= lt!1771017 lt!1771195) (= lambda!189434 lambda!189404))))

(declare-fun bs!1018017 () Bool)

(assert (= bs!1018017 (and b!4615831 d!1453851)))

(assert (=> bs!1018017 (not (= lambda!189434 lambda!189342))))

(declare-fun bs!1018018 () Bool)

(assert (= bs!1018018 (and b!4615831 d!1453861)))

(assert (=> bs!1018018 (= (= lt!1771017 lt!1771130) (= lambda!189434 lambda!189377))))

(assert (=> bs!1018014 (= (= lt!1771017 lt!1771121) (= lambda!189434 lambda!189376))))

(declare-fun bs!1018019 () Bool)

(assert (= bs!1018019 (and b!4615831 b!4615696)))

(assert (=> bs!1018019 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189434 lambda!189374))))

(assert (=> bs!1018016 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189434 lambda!189403))))

(declare-fun bs!1018020 () Bool)

(assert (= bs!1018020 (and b!4615831 b!4615711)))

(assert (=> bs!1018020 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189434 lambda!189400))))

(assert (=> b!4615831 true))

(declare-fun bs!1018021 () Bool)

(declare-fun b!4615830 () Bool)

(assert (= bs!1018021 (and b!4615830 b!4615695)))

(declare-fun lambda!189435 () Int)

(assert (=> bs!1018021 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189435 lambda!189375))))

(declare-fun bs!1018022 () Bool)

(assert (= bs!1018022 (and b!4615830 d!1453879)))

(assert (=> bs!1018022 (= (= lt!1771017 lt!1771204) (= lambda!189435 lambda!189405))))

(declare-fun bs!1018023 () Bool)

(assert (= bs!1018023 (and b!4615830 b!4615710)))

(assert (=> bs!1018023 (= (= lt!1771017 lt!1771195) (= lambda!189435 lambda!189404))))

(declare-fun bs!1018024 () Bool)

(assert (= bs!1018024 (and b!4615830 d!1453851)))

(assert (=> bs!1018024 (not (= lambda!189435 lambda!189342))))

(declare-fun bs!1018025 () Bool)

(assert (= bs!1018025 (and b!4615830 b!4615831)))

(assert (=> bs!1018025 (= lambda!189435 lambda!189434)))

(declare-fun bs!1018026 () Bool)

(assert (= bs!1018026 (and b!4615830 d!1453861)))

(assert (=> bs!1018026 (= (= lt!1771017 lt!1771130) (= lambda!189435 lambda!189377))))

(assert (=> bs!1018021 (= (= lt!1771017 lt!1771121) (= lambda!189435 lambda!189376))))

(declare-fun bs!1018027 () Bool)

(assert (= bs!1018027 (and b!4615830 b!4615696)))

(assert (=> bs!1018027 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189435 lambda!189374))))

(assert (=> bs!1018023 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189435 lambda!189403))))

(declare-fun bs!1018028 () Bool)

(assert (= bs!1018028 (and b!4615830 b!4615711)))

(assert (=> bs!1018028 (= (= lt!1771017 (ListMap!4154 Nil!51369)) (= lambda!189435 lambda!189400))))

(assert (=> b!4615830 true))

(declare-fun lt!1771365 () ListMap!4153)

(declare-fun lambda!189436 () Int)

(assert (=> bs!1018021 (= (= lt!1771365 (ListMap!4154 Nil!51369)) (= lambda!189436 lambda!189375))))

(assert (=> b!4615830 (= (= lt!1771365 lt!1771017) (= lambda!189436 lambda!189435))))

(assert (=> bs!1018022 (= (= lt!1771365 lt!1771204) (= lambda!189436 lambda!189405))))

(assert (=> bs!1018023 (= (= lt!1771365 lt!1771195) (= lambda!189436 lambda!189404))))

(assert (=> bs!1018024 (not (= lambda!189436 lambda!189342))))

(assert (=> bs!1018025 (= (= lt!1771365 lt!1771017) (= lambda!189436 lambda!189434))))

(assert (=> bs!1018026 (= (= lt!1771365 lt!1771130) (= lambda!189436 lambda!189377))))

(assert (=> bs!1018021 (= (= lt!1771365 lt!1771121) (= lambda!189436 lambda!189376))))

(assert (=> bs!1018027 (= (= lt!1771365 (ListMap!4154 Nil!51369)) (= lambda!189436 lambda!189374))))

(assert (=> bs!1018023 (= (= lt!1771365 (ListMap!4154 Nil!51369)) (= lambda!189436 lambda!189403))))

(assert (=> bs!1018028 (= (= lt!1771365 (ListMap!4154 Nil!51369)) (= lambda!189436 lambda!189400))))

(assert (=> b!4615830 true))

(declare-fun bs!1018029 () Bool)

(declare-fun d!1453937 () Bool)

(assert (= bs!1018029 (and d!1453937 b!4615695)))

(declare-fun lt!1771374 () ListMap!4153)

(declare-fun lambda!189437 () Int)

(assert (=> bs!1018029 (= (= lt!1771374 (ListMap!4154 Nil!51369)) (= lambda!189437 lambda!189375))))

(declare-fun bs!1018030 () Bool)

(assert (= bs!1018030 (and d!1453937 b!4615830)))

(assert (=> bs!1018030 (= (= lt!1771374 lt!1771017) (= lambda!189437 lambda!189435))))

(declare-fun bs!1018031 () Bool)

(assert (= bs!1018031 (and d!1453937 b!4615710)))

(assert (=> bs!1018031 (= (= lt!1771374 lt!1771195) (= lambda!189437 lambda!189404))))

(declare-fun bs!1018032 () Bool)

(assert (= bs!1018032 (and d!1453937 d!1453851)))

(assert (=> bs!1018032 (not (= lambda!189437 lambda!189342))))

(declare-fun bs!1018033 () Bool)

(assert (= bs!1018033 (and d!1453937 b!4615831)))

(assert (=> bs!1018033 (= (= lt!1771374 lt!1771017) (= lambda!189437 lambda!189434))))

(declare-fun bs!1018034 () Bool)

(assert (= bs!1018034 (and d!1453937 d!1453861)))

(assert (=> bs!1018034 (= (= lt!1771374 lt!1771130) (= lambda!189437 lambda!189377))))

(assert (=> bs!1018030 (= (= lt!1771374 lt!1771365) (= lambda!189437 lambda!189436))))

(declare-fun bs!1018035 () Bool)

(assert (= bs!1018035 (and d!1453937 d!1453879)))

(assert (=> bs!1018035 (= (= lt!1771374 lt!1771204) (= lambda!189437 lambda!189405))))

(assert (=> bs!1018029 (= (= lt!1771374 lt!1771121) (= lambda!189437 lambda!189376))))

(declare-fun bs!1018036 () Bool)

(assert (= bs!1018036 (and d!1453937 b!4615696)))

(assert (=> bs!1018036 (= (= lt!1771374 (ListMap!4154 Nil!51369)) (= lambda!189437 lambda!189374))))

(assert (=> bs!1018031 (= (= lt!1771374 (ListMap!4154 Nil!51369)) (= lambda!189437 lambda!189403))))

(declare-fun bs!1018037 () Bool)

(assert (= bs!1018037 (and d!1453937 b!4615711)))

(assert (=> bs!1018037 (= (= lt!1771374 (ListMap!4154 Nil!51369)) (= lambda!189437 lambda!189400))))

(assert (=> d!1453937 true))

(declare-fun bm!321817 () Bool)

(declare-fun call!321824 () Unit!110138)

(assert (=> bm!321817 (= call!321824 (lemmaContainsAllItsOwnKeys!468 lt!1771017))))

(declare-fun e!2879187 () ListMap!4153)

(assert (=> b!4615830 (= e!2879187 lt!1771365)))

(declare-fun lt!1771380 () ListMap!4153)

(assert (=> b!4615830 (= lt!1771380 (+!1827 lt!1771017 (h!57381 oldBucket!40)))))

(assert (=> b!4615830 (= lt!1771365 (addToMapMapFromBucket!903 (t!358497 oldBucket!40) (+!1827 lt!1771017 (h!57381 oldBucket!40))))))

(declare-fun lt!1771377 () Unit!110138)

(assert (=> b!4615830 (= lt!1771377 call!321824)))

(assert (=> b!4615830 (forall!10742 (toList!4849 lt!1771017) lambda!189435)))

(declare-fun lt!1771364 () Unit!110138)

(assert (=> b!4615830 (= lt!1771364 lt!1771377)))

(assert (=> b!4615830 (forall!10742 (toList!4849 lt!1771380) lambda!189436)))

(declare-fun lt!1771366 () Unit!110138)

(declare-fun Unit!110203 () Unit!110138)

(assert (=> b!4615830 (= lt!1771366 Unit!110203)))

(declare-fun call!321822 () Bool)

(assert (=> b!4615830 call!321822))

(declare-fun lt!1771371 () Unit!110138)

(declare-fun Unit!110204 () Unit!110138)

(assert (=> b!4615830 (= lt!1771371 Unit!110204)))

(declare-fun lt!1771382 () Unit!110138)

(declare-fun Unit!110205 () Unit!110138)

(assert (=> b!4615830 (= lt!1771382 Unit!110205)))

(declare-fun lt!1771378 () Unit!110138)

(assert (=> b!4615830 (= lt!1771378 (forallContained!2960 (toList!4849 lt!1771380) lambda!189436 (h!57381 oldBucket!40)))))

(assert (=> b!4615830 (contains!14332 lt!1771380 (_1!29401 (h!57381 oldBucket!40)))))

(declare-fun lt!1771375 () Unit!110138)

(declare-fun Unit!110206 () Unit!110138)

(assert (=> b!4615830 (= lt!1771375 Unit!110206)))

(assert (=> b!4615830 (contains!14332 lt!1771365 (_1!29401 (h!57381 oldBucket!40)))))

(declare-fun lt!1771370 () Unit!110138)

(declare-fun Unit!110207 () Unit!110138)

(assert (=> b!4615830 (= lt!1771370 Unit!110207)))

(assert (=> b!4615830 (forall!10742 oldBucket!40 lambda!189436)))

(declare-fun lt!1771379 () Unit!110138)

(declare-fun Unit!110208 () Unit!110138)

(assert (=> b!4615830 (= lt!1771379 Unit!110208)))

(assert (=> b!4615830 (forall!10742 (toList!4849 lt!1771380) lambda!189436)))

(declare-fun lt!1771383 () Unit!110138)

(declare-fun Unit!110209 () Unit!110138)

(assert (=> b!4615830 (= lt!1771383 Unit!110209)))

(declare-fun lt!1771372 () Unit!110138)

(declare-fun Unit!110210 () Unit!110138)

(assert (=> b!4615830 (= lt!1771372 Unit!110210)))

(declare-fun lt!1771384 () Unit!110138)

(assert (=> b!4615830 (= lt!1771384 (addForallContainsKeyThenBeforeAdding!467 lt!1771017 lt!1771365 (_1!29401 (h!57381 oldBucket!40)) (_2!29401 (h!57381 oldBucket!40))))))

(assert (=> b!4615830 (forall!10742 (toList!4849 lt!1771017) lambda!189436)))

(declare-fun lt!1771376 () Unit!110138)

(assert (=> b!4615830 (= lt!1771376 lt!1771384)))

(assert (=> b!4615830 (forall!10742 (toList!4849 lt!1771017) lambda!189436)))

(declare-fun lt!1771367 () Unit!110138)

(declare-fun Unit!110211 () Unit!110138)

(assert (=> b!4615830 (= lt!1771367 Unit!110211)))

(declare-fun res!1933900 () Bool)

(assert (=> b!4615830 (= res!1933900 (forall!10742 oldBucket!40 lambda!189436))))

(declare-fun e!2879189 () Bool)

(assert (=> b!4615830 (=> (not res!1933900) (not e!2879189))))

(assert (=> b!4615830 e!2879189))

(declare-fun lt!1771368 () Unit!110138)

(declare-fun Unit!110212 () Unit!110138)

(assert (=> b!4615830 (= lt!1771368 Unit!110212)))

(declare-fun e!2879188 () Bool)

(assert (=> d!1453937 e!2879188))

(declare-fun res!1933901 () Bool)

(assert (=> d!1453937 (=> (not res!1933901) (not e!2879188))))

(assert (=> d!1453937 (= res!1933901 (forall!10742 oldBucket!40 lambda!189437))))

(assert (=> d!1453937 (= lt!1771374 e!2879187)))

(declare-fun c!790255 () Bool)

(assert (=> d!1453937 (= c!790255 ((_ is Nil!51369) oldBucket!40))))

(assert (=> d!1453937 (noDuplicateKeys!1442 oldBucket!40)))

(assert (=> d!1453937 (= (addToMapMapFromBucket!903 oldBucket!40 lt!1771017) lt!1771374)))

(declare-fun bm!321818 () Bool)

(assert (=> bm!321818 (= call!321822 (forall!10742 (ite c!790255 (toList!4849 lt!1771017) (t!358497 oldBucket!40)) (ite c!790255 lambda!189434 lambda!189436)))))

(assert (=> b!4615831 (= e!2879187 lt!1771017)))

(declare-fun lt!1771381 () Unit!110138)

(assert (=> b!4615831 (= lt!1771381 call!321824)))

(assert (=> b!4615831 call!321822))

(declare-fun lt!1771373 () Unit!110138)

(assert (=> b!4615831 (= lt!1771373 lt!1771381)))

(declare-fun call!321823 () Bool)

(assert (=> b!4615831 call!321823))

(declare-fun lt!1771369 () Unit!110138)

(declare-fun Unit!110213 () Unit!110138)

(assert (=> b!4615831 (= lt!1771369 Unit!110213)))

(declare-fun b!4615832 () Bool)

(assert (=> b!4615832 (= e!2879189 call!321823)))

(declare-fun bm!321819 () Bool)

(assert (=> bm!321819 (= call!321823 (forall!10742 (toList!4849 lt!1771017) (ite c!790255 lambda!189434 lambda!189436)))))

(declare-fun b!4615833 () Bool)

(assert (=> b!4615833 (= e!2879188 (invariantList!1167 (toList!4849 lt!1771374)))))

(declare-fun b!4615834 () Bool)

(declare-fun res!1933902 () Bool)

(assert (=> b!4615834 (=> (not res!1933902) (not e!2879188))))

(assert (=> b!4615834 (= res!1933902 (forall!10742 (toList!4849 lt!1771017) lambda!189437))))

(assert (= (and d!1453937 c!790255) b!4615831))

(assert (= (and d!1453937 (not c!790255)) b!4615830))

(assert (= (and b!4615830 res!1933900) b!4615832))

(assert (= (or b!4615831 b!4615830) bm!321817))

(assert (= (or b!4615831 b!4615830) bm!321818))

(assert (= (or b!4615831 b!4615832) bm!321819))

(assert (= (and d!1453937 res!1933901) b!4615834))

(assert (= (and b!4615834 res!1933902) b!4615833))

(declare-fun m!5449571 () Bool)

(assert (=> b!4615833 m!5449571))

(declare-fun m!5449573 () Bool)

(assert (=> b!4615834 m!5449573))

(declare-fun m!5449575 () Bool)

(assert (=> b!4615830 m!5449575))

(declare-fun m!5449577 () Bool)

(assert (=> b!4615830 m!5449577))

(declare-fun m!5449579 () Bool)

(assert (=> b!4615830 m!5449579))

(declare-fun m!5449581 () Bool)

(assert (=> b!4615830 m!5449581))

(declare-fun m!5449583 () Bool)

(assert (=> b!4615830 m!5449583))

(declare-fun m!5449585 () Bool)

(assert (=> b!4615830 m!5449585))

(assert (=> b!4615830 m!5449579))

(declare-fun m!5449587 () Bool)

(assert (=> b!4615830 m!5449587))

(declare-fun m!5449589 () Bool)

(assert (=> b!4615830 m!5449589))

(declare-fun m!5449591 () Bool)

(assert (=> b!4615830 m!5449591))

(declare-fun m!5449593 () Bool)

(assert (=> b!4615830 m!5449593))

(assert (=> b!4615830 m!5449587))

(assert (=> b!4615830 m!5449593))

(assert (=> b!4615830 m!5449575))

(declare-fun m!5449595 () Bool)

(assert (=> bm!321819 m!5449595))

(declare-fun m!5449597 () Bool)

(assert (=> bm!321818 m!5449597))

(declare-fun m!5449599 () Bool)

(assert (=> d!1453937 m!5449599))

(assert (=> d!1453937 m!5448993))

(declare-fun m!5449601 () Bool)

(assert (=> bm!321817 m!5449601))

(assert (=> b!4615597 d!1453937))

(declare-fun bs!1018038 () Bool)

(declare-fun d!1453945 () Bool)

(assert (= bs!1018038 (and d!1453945 b!4615596)))

(declare-fun lambda!189438 () Int)

(assert (=> bs!1018038 (= lambda!189438 lambda!189332)))

(declare-fun bs!1018039 () Bool)

(assert (= bs!1018039 (and d!1453945 d!1453885)))

(assert (=> bs!1018039 (= lambda!189438 lambda!189419)))

(declare-fun bs!1018040 () Bool)

(assert (= bs!1018040 (and d!1453945 d!1453889)))

(assert (=> bs!1018040 (= lambda!189438 lambda!189420)))

(declare-fun bs!1018041 () Bool)

(assert (= bs!1018041 (and d!1453945 d!1453905)))

(assert (=> bs!1018041 (= lambda!189438 lambda!189433)))

(declare-fun lt!1771393 () ListMap!4153)

(assert (=> d!1453945 (invariantList!1167 (toList!4849 lt!1771393))))

(declare-fun e!2879195 () ListMap!4153)

(assert (=> d!1453945 (= lt!1771393 e!2879195)))

(declare-fun c!790256 () Bool)

(assert (=> d!1453945 (= c!790256 ((_ is Cons!51370) Nil!51370))))

(assert (=> d!1453945 (forall!10740 Nil!51370 lambda!189438)))

(assert (=> d!1453945 (= (extractMap!1498 Nil!51370) lt!1771393)))

(declare-fun b!4615841 () Bool)

(assert (=> b!4615841 (= e!2879195 (addToMapMapFromBucket!903 (_2!29402 (h!57382 Nil!51370)) (extractMap!1498 (t!358498 Nil!51370))))))

(declare-fun b!4615842 () Bool)

(assert (=> b!4615842 (= e!2879195 (ListMap!4154 Nil!51369))))

(assert (= (and d!1453945 c!790256) b!4615841))

(assert (= (and d!1453945 (not c!790256)) b!4615842))

(declare-fun m!5449603 () Bool)

(assert (=> d!1453945 m!5449603))

(declare-fun m!5449605 () Bool)

(assert (=> d!1453945 m!5449605))

(declare-fun m!5449607 () Bool)

(assert (=> b!4615841 m!5449607))

(assert (=> b!4615841 m!5449607))

(declare-fun m!5449609 () Bool)

(assert (=> b!4615841 m!5449609))

(assert (=> b!4615597 d!1453945))

(declare-fun bs!1018042 () Bool)

(declare-fun d!1453947 () Bool)

(assert (= bs!1018042 (and d!1453947 b!4615695)))

(declare-fun lambda!189439 () Int)

(assert (=> bs!1018042 (not (= lambda!189439 lambda!189375))))

(declare-fun bs!1018043 () Bool)

(assert (= bs!1018043 (and d!1453947 b!4615830)))

(assert (=> bs!1018043 (not (= lambda!189439 lambda!189435))))

(declare-fun bs!1018044 () Bool)

(assert (= bs!1018044 (and d!1453947 b!4615710)))

(assert (=> bs!1018044 (not (= lambda!189439 lambda!189404))))

(declare-fun bs!1018045 () Bool)

(assert (= bs!1018045 (and d!1453947 d!1453851)))

(assert (=> bs!1018045 (= lambda!189439 lambda!189342)))

(declare-fun bs!1018046 () Bool)

(assert (= bs!1018046 (and d!1453947 d!1453937)))

(assert (=> bs!1018046 (not (= lambda!189439 lambda!189437))))

(declare-fun bs!1018047 () Bool)

(assert (= bs!1018047 (and d!1453947 b!4615831)))

(assert (=> bs!1018047 (not (= lambda!189439 lambda!189434))))

(declare-fun bs!1018048 () Bool)

(assert (= bs!1018048 (and d!1453947 d!1453861)))

(assert (=> bs!1018048 (not (= lambda!189439 lambda!189377))))

(assert (=> bs!1018043 (not (= lambda!189439 lambda!189436))))

(declare-fun bs!1018049 () Bool)

(assert (= bs!1018049 (and d!1453947 d!1453879)))

(assert (=> bs!1018049 (not (= lambda!189439 lambda!189405))))

(assert (=> bs!1018042 (not (= lambda!189439 lambda!189376))))

(declare-fun bs!1018050 () Bool)

(assert (= bs!1018050 (and d!1453947 b!4615696)))

(assert (=> bs!1018050 (not (= lambda!189439 lambda!189374))))

(assert (=> bs!1018044 (not (= lambda!189439 lambda!189403))))

(declare-fun bs!1018051 () Bool)

(assert (= bs!1018051 (and d!1453947 b!4615711)))

(assert (=> bs!1018051 (not (= lambda!189439 lambda!189400))))

(assert (=> d!1453947 true))

(assert (=> d!1453947 true))

(assert (=> d!1453947 (= (allKeysSameHash!1296 oldBucket!40 hash!414 hashF!1389) (forall!10742 oldBucket!40 lambda!189439))))

(declare-fun bs!1018052 () Bool)

(assert (= bs!1018052 d!1453947))

(declare-fun m!5449611 () Bool)

(assert (=> bs!1018052 m!5449611))

(assert (=> b!4615584 d!1453947))

(declare-fun bs!1018053 () Bool)

(declare-fun b!4615844 () Bool)

(assert (= bs!1018053 (and b!4615844 b!4615695)))

(declare-fun lambda!189440 () Int)

(assert (=> bs!1018053 (= lambda!189440 lambda!189375)))

(declare-fun bs!1018054 () Bool)

(assert (= bs!1018054 (and b!4615844 d!1453947)))

(assert (=> bs!1018054 (not (= lambda!189440 lambda!189439))))

(declare-fun bs!1018055 () Bool)

(assert (= bs!1018055 (and b!4615844 b!4615830)))

(assert (=> bs!1018055 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189440 lambda!189435))))

(declare-fun bs!1018056 () Bool)

(assert (= bs!1018056 (and b!4615844 b!4615710)))

(assert (=> bs!1018056 (= (= (ListMap!4154 Nil!51369) lt!1771195) (= lambda!189440 lambda!189404))))

(declare-fun bs!1018057 () Bool)

(assert (= bs!1018057 (and b!4615844 d!1453851)))

(assert (=> bs!1018057 (not (= lambda!189440 lambda!189342))))

(declare-fun bs!1018058 () Bool)

(assert (= bs!1018058 (and b!4615844 d!1453937)))

(assert (=> bs!1018058 (= (= (ListMap!4154 Nil!51369) lt!1771374) (= lambda!189440 lambda!189437))))

(declare-fun bs!1018059 () Bool)

(assert (= bs!1018059 (and b!4615844 b!4615831)))

(assert (=> bs!1018059 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189440 lambda!189434))))

(declare-fun bs!1018060 () Bool)

(assert (= bs!1018060 (and b!4615844 d!1453861)))

(assert (=> bs!1018060 (= (= (ListMap!4154 Nil!51369) lt!1771130) (= lambda!189440 lambda!189377))))

(assert (=> bs!1018055 (= (= (ListMap!4154 Nil!51369) lt!1771365) (= lambda!189440 lambda!189436))))

(declare-fun bs!1018061 () Bool)

(assert (= bs!1018061 (and b!4615844 d!1453879)))

(assert (=> bs!1018061 (= (= (ListMap!4154 Nil!51369) lt!1771204) (= lambda!189440 lambda!189405))))

(assert (=> bs!1018053 (= (= (ListMap!4154 Nil!51369) lt!1771121) (= lambda!189440 lambda!189376))))

(declare-fun bs!1018062 () Bool)

(assert (= bs!1018062 (and b!4615844 b!4615696)))

(assert (=> bs!1018062 (= lambda!189440 lambda!189374)))

(assert (=> bs!1018056 (= lambda!189440 lambda!189403)))

(declare-fun bs!1018063 () Bool)

(assert (= bs!1018063 (and b!4615844 b!4615711)))

(assert (=> bs!1018063 (= lambda!189440 lambda!189400)))

(assert (=> b!4615844 true))

(declare-fun bs!1018064 () Bool)

(declare-fun b!4615843 () Bool)

(assert (= bs!1018064 (and b!4615843 b!4615695)))

(declare-fun lambda!189441 () Int)

(assert (=> bs!1018064 (= lambda!189441 lambda!189375)))

(declare-fun bs!1018066 () Bool)

(assert (= bs!1018066 (and b!4615843 d!1453947)))

(assert (=> bs!1018066 (not (= lambda!189441 lambda!189439))))

(declare-fun bs!1018067 () Bool)

(assert (= bs!1018067 (and b!4615843 b!4615830)))

(assert (=> bs!1018067 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189441 lambda!189435))))

(declare-fun bs!1018068 () Bool)

(assert (= bs!1018068 (and b!4615843 b!4615844)))

(assert (=> bs!1018068 (= lambda!189441 lambda!189440)))

(declare-fun bs!1018069 () Bool)

(assert (= bs!1018069 (and b!4615843 b!4615710)))

(assert (=> bs!1018069 (= (= (ListMap!4154 Nil!51369) lt!1771195) (= lambda!189441 lambda!189404))))

(declare-fun bs!1018070 () Bool)

(assert (= bs!1018070 (and b!4615843 d!1453851)))

(assert (=> bs!1018070 (not (= lambda!189441 lambda!189342))))

(declare-fun bs!1018071 () Bool)

(assert (= bs!1018071 (and b!4615843 d!1453937)))

(assert (=> bs!1018071 (= (= (ListMap!4154 Nil!51369) lt!1771374) (= lambda!189441 lambda!189437))))

(declare-fun bs!1018072 () Bool)

(assert (= bs!1018072 (and b!4615843 b!4615831)))

(assert (=> bs!1018072 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189441 lambda!189434))))

(declare-fun bs!1018073 () Bool)

(assert (= bs!1018073 (and b!4615843 d!1453861)))

(assert (=> bs!1018073 (= (= (ListMap!4154 Nil!51369) lt!1771130) (= lambda!189441 lambda!189377))))

(assert (=> bs!1018067 (= (= (ListMap!4154 Nil!51369) lt!1771365) (= lambda!189441 lambda!189436))))

(declare-fun bs!1018074 () Bool)

(assert (= bs!1018074 (and b!4615843 d!1453879)))

(assert (=> bs!1018074 (= (= (ListMap!4154 Nil!51369) lt!1771204) (= lambda!189441 lambda!189405))))

(assert (=> bs!1018064 (= (= (ListMap!4154 Nil!51369) lt!1771121) (= lambda!189441 lambda!189376))))

(declare-fun bs!1018076 () Bool)

(assert (= bs!1018076 (and b!4615843 b!4615696)))

(assert (=> bs!1018076 (= lambda!189441 lambda!189374)))

(assert (=> bs!1018069 (= lambda!189441 lambda!189403)))

(declare-fun bs!1018077 () Bool)

(assert (= bs!1018077 (and b!4615843 b!4615711)))

(assert (=> bs!1018077 (= lambda!189441 lambda!189400)))

(assert (=> b!4615843 true))

(declare-fun lt!1771395 () ListMap!4153)

(declare-fun lambda!189442 () Int)

(assert (=> bs!1018064 (= (= lt!1771395 (ListMap!4154 Nil!51369)) (= lambda!189442 lambda!189375))))

(assert (=> bs!1018066 (not (= lambda!189442 lambda!189439))))

(assert (=> bs!1018067 (= (= lt!1771395 lt!1771017) (= lambda!189442 lambda!189435))))

(assert (=> bs!1018068 (= (= lt!1771395 (ListMap!4154 Nil!51369)) (= lambda!189442 lambda!189440))))

(assert (=> bs!1018070 (not (= lambda!189442 lambda!189342))))

(assert (=> bs!1018071 (= (= lt!1771395 lt!1771374) (= lambda!189442 lambda!189437))))

(assert (=> bs!1018072 (= (= lt!1771395 lt!1771017) (= lambda!189442 lambda!189434))))

(assert (=> bs!1018073 (= (= lt!1771395 lt!1771130) (= lambda!189442 lambda!189377))))

(assert (=> bs!1018067 (= (= lt!1771395 lt!1771365) (= lambda!189442 lambda!189436))))

(assert (=> bs!1018074 (= (= lt!1771395 lt!1771204) (= lambda!189442 lambda!189405))))

(assert (=> bs!1018064 (= (= lt!1771395 lt!1771121) (= lambda!189442 lambda!189376))))

(assert (=> bs!1018076 (= (= lt!1771395 (ListMap!4154 Nil!51369)) (= lambda!189442 lambda!189374))))

(assert (=> bs!1018069 (= (= lt!1771395 lt!1771195) (= lambda!189442 lambda!189404))))

(assert (=> b!4615843 (= (= lt!1771395 (ListMap!4154 Nil!51369)) (= lambda!189442 lambda!189441))))

(assert (=> bs!1018069 (= (= lt!1771395 (ListMap!4154 Nil!51369)) (= lambda!189442 lambda!189403))))

(assert (=> bs!1018077 (= (= lt!1771395 (ListMap!4154 Nil!51369)) (= lambda!189442 lambda!189400))))

(assert (=> b!4615843 true))

(declare-fun bs!1018097 () Bool)

(declare-fun d!1453949 () Bool)

(assert (= bs!1018097 (and d!1453949 b!4615695)))

(declare-fun lt!1771404 () ListMap!4153)

(declare-fun lambda!189445 () Int)

(assert (=> bs!1018097 (= (= lt!1771404 (ListMap!4154 Nil!51369)) (= lambda!189445 lambda!189375))))

(declare-fun bs!1018099 () Bool)

(assert (= bs!1018099 (and d!1453949 b!4615843)))

(assert (=> bs!1018099 (= (= lt!1771404 lt!1771395) (= lambda!189445 lambda!189442))))

(declare-fun bs!1018101 () Bool)

(assert (= bs!1018101 (and d!1453949 d!1453947)))

(assert (=> bs!1018101 (not (= lambda!189445 lambda!189439))))

(declare-fun bs!1018103 () Bool)

(assert (= bs!1018103 (and d!1453949 b!4615830)))

(assert (=> bs!1018103 (= (= lt!1771404 lt!1771017) (= lambda!189445 lambda!189435))))

(declare-fun bs!1018105 () Bool)

(assert (= bs!1018105 (and d!1453949 b!4615844)))

(assert (=> bs!1018105 (= (= lt!1771404 (ListMap!4154 Nil!51369)) (= lambda!189445 lambda!189440))))

(declare-fun bs!1018107 () Bool)

(assert (= bs!1018107 (and d!1453949 d!1453851)))

(assert (=> bs!1018107 (not (= lambda!189445 lambda!189342))))

(declare-fun bs!1018109 () Bool)

(assert (= bs!1018109 (and d!1453949 d!1453937)))

(assert (=> bs!1018109 (= (= lt!1771404 lt!1771374) (= lambda!189445 lambda!189437))))

(declare-fun bs!1018111 () Bool)

(assert (= bs!1018111 (and d!1453949 b!4615831)))

(assert (=> bs!1018111 (= (= lt!1771404 lt!1771017) (= lambda!189445 lambda!189434))))

(declare-fun bs!1018113 () Bool)

(assert (= bs!1018113 (and d!1453949 d!1453861)))

(assert (=> bs!1018113 (= (= lt!1771404 lt!1771130) (= lambda!189445 lambda!189377))))

(assert (=> bs!1018103 (= (= lt!1771404 lt!1771365) (= lambda!189445 lambda!189436))))

(declare-fun bs!1018115 () Bool)

(assert (= bs!1018115 (and d!1453949 d!1453879)))

(assert (=> bs!1018115 (= (= lt!1771404 lt!1771204) (= lambda!189445 lambda!189405))))

(assert (=> bs!1018097 (= (= lt!1771404 lt!1771121) (= lambda!189445 lambda!189376))))

(declare-fun bs!1018117 () Bool)

(assert (= bs!1018117 (and d!1453949 b!4615696)))

(assert (=> bs!1018117 (= (= lt!1771404 (ListMap!4154 Nil!51369)) (= lambda!189445 lambda!189374))))

(declare-fun bs!1018118 () Bool)

(assert (= bs!1018118 (and d!1453949 b!4615710)))

(assert (=> bs!1018118 (= (= lt!1771404 lt!1771195) (= lambda!189445 lambda!189404))))

(assert (=> bs!1018099 (= (= lt!1771404 (ListMap!4154 Nil!51369)) (= lambda!189445 lambda!189441))))

(assert (=> bs!1018118 (= (= lt!1771404 (ListMap!4154 Nil!51369)) (= lambda!189445 lambda!189403))))

(declare-fun bs!1018119 () Bool)

(assert (= bs!1018119 (and d!1453949 b!4615711)))

(assert (=> bs!1018119 (= (= lt!1771404 (ListMap!4154 Nil!51369)) (= lambda!189445 lambda!189400))))

(assert (=> d!1453949 true))

(declare-fun bm!321820 () Bool)

(declare-fun call!321827 () Unit!110138)

(assert (=> bm!321820 (= call!321827 (lemmaContainsAllItsOwnKeys!468 (ListMap!4154 Nil!51369)))))

(declare-fun e!2879196 () ListMap!4153)

(assert (=> b!4615843 (= e!2879196 lt!1771395)))

(declare-fun lt!1771410 () ListMap!4153)

(assert (=> b!4615843 (= lt!1771410 (+!1827 (ListMap!4154 Nil!51369) (h!57381 newBucket!224)))))

(assert (=> b!4615843 (= lt!1771395 (addToMapMapFromBucket!903 (t!358497 newBucket!224) (+!1827 (ListMap!4154 Nil!51369) (h!57381 newBucket!224))))))

(declare-fun lt!1771407 () Unit!110138)

(assert (=> b!4615843 (= lt!1771407 call!321827)))

(assert (=> b!4615843 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189441)))

(declare-fun lt!1771394 () Unit!110138)

(assert (=> b!4615843 (= lt!1771394 lt!1771407)))

(assert (=> b!4615843 (forall!10742 (toList!4849 lt!1771410) lambda!189442)))

(declare-fun lt!1771396 () Unit!110138)

(declare-fun Unit!110225 () Unit!110138)

(assert (=> b!4615843 (= lt!1771396 Unit!110225)))

(declare-fun call!321825 () Bool)

(assert (=> b!4615843 call!321825))

(declare-fun lt!1771401 () Unit!110138)

(declare-fun Unit!110226 () Unit!110138)

(assert (=> b!4615843 (= lt!1771401 Unit!110226)))

(declare-fun lt!1771412 () Unit!110138)

(declare-fun Unit!110227 () Unit!110138)

(assert (=> b!4615843 (= lt!1771412 Unit!110227)))

(declare-fun lt!1771408 () Unit!110138)

(assert (=> b!4615843 (= lt!1771408 (forallContained!2960 (toList!4849 lt!1771410) lambda!189442 (h!57381 newBucket!224)))))

(assert (=> b!4615843 (contains!14332 lt!1771410 (_1!29401 (h!57381 newBucket!224)))))

(declare-fun lt!1771405 () Unit!110138)

(declare-fun Unit!110228 () Unit!110138)

(assert (=> b!4615843 (= lt!1771405 Unit!110228)))

(assert (=> b!4615843 (contains!14332 lt!1771395 (_1!29401 (h!57381 newBucket!224)))))

(declare-fun lt!1771400 () Unit!110138)

(declare-fun Unit!110229 () Unit!110138)

(assert (=> b!4615843 (= lt!1771400 Unit!110229)))

(assert (=> b!4615843 (forall!10742 newBucket!224 lambda!189442)))

(declare-fun lt!1771409 () Unit!110138)

(declare-fun Unit!110230 () Unit!110138)

(assert (=> b!4615843 (= lt!1771409 Unit!110230)))

(assert (=> b!4615843 (forall!10742 (toList!4849 lt!1771410) lambda!189442)))

(declare-fun lt!1771413 () Unit!110138)

(declare-fun Unit!110231 () Unit!110138)

(assert (=> b!4615843 (= lt!1771413 Unit!110231)))

(declare-fun lt!1771402 () Unit!110138)

(declare-fun Unit!110232 () Unit!110138)

(assert (=> b!4615843 (= lt!1771402 Unit!110232)))

(declare-fun lt!1771414 () Unit!110138)

(assert (=> b!4615843 (= lt!1771414 (addForallContainsKeyThenBeforeAdding!467 (ListMap!4154 Nil!51369) lt!1771395 (_1!29401 (h!57381 newBucket!224)) (_2!29401 (h!57381 newBucket!224))))))

(assert (=> b!4615843 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189442)))

(declare-fun lt!1771406 () Unit!110138)

(assert (=> b!4615843 (= lt!1771406 lt!1771414)))

(assert (=> b!4615843 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189442)))

(declare-fun lt!1771397 () Unit!110138)

(declare-fun Unit!110233 () Unit!110138)

(assert (=> b!4615843 (= lt!1771397 Unit!110233)))

(declare-fun res!1933909 () Bool)

(assert (=> b!4615843 (= res!1933909 (forall!10742 newBucket!224 lambda!189442))))

(declare-fun e!2879198 () Bool)

(assert (=> b!4615843 (=> (not res!1933909) (not e!2879198))))

(assert (=> b!4615843 e!2879198))

(declare-fun lt!1771398 () Unit!110138)

(declare-fun Unit!110234 () Unit!110138)

(assert (=> b!4615843 (= lt!1771398 Unit!110234)))

(declare-fun e!2879197 () Bool)

(assert (=> d!1453949 e!2879197))

(declare-fun res!1933910 () Bool)

(assert (=> d!1453949 (=> (not res!1933910) (not e!2879197))))

(assert (=> d!1453949 (= res!1933910 (forall!10742 newBucket!224 lambda!189445))))

(assert (=> d!1453949 (= lt!1771404 e!2879196)))

(declare-fun c!790257 () Bool)

(assert (=> d!1453949 (= c!790257 ((_ is Nil!51369) newBucket!224))))

(assert (=> d!1453949 (noDuplicateKeys!1442 newBucket!224)))

(assert (=> d!1453949 (= (addToMapMapFromBucket!903 newBucket!224 (ListMap!4154 Nil!51369)) lt!1771404)))

(declare-fun bm!321821 () Bool)

(assert (=> bm!321821 (= call!321825 (forall!10742 (ite c!790257 (toList!4849 (ListMap!4154 Nil!51369)) (t!358497 newBucket!224)) (ite c!790257 lambda!189440 lambda!189442)))))

(assert (=> b!4615844 (= e!2879196 (ListMap!4154 Nil!51369))))

(declare-fun lt!1771411 () Unit!110138)

(assert (=> b!4615844 (= lt!1771411 call!321827)))

(assert (=> b!4615844 call!321825))

(declare-fun lt!1771403 () Unit!110138)

(assert (=> b!4615844 (= lt!1771403 lt!1771411)))

(declare-fun call!321826 () Bool)

(assert (=> b!4615844 call!321826))

(declare-fun lt!1771399 () Unit!110138)

(declare-fun Unit!110235 () Unit!110138)

(assert (=> b!4615844 (= lt!1771399 Unit!110235)))

(declare-fun b!4615845 () Bool)

(assert (=> b!4615845 (= e!2879198 call!321826)))

(declare-fun bm!321822 () Bool)

(assert (=> bm!321822 (= call!321826 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) (ite c!790257 lambda!189440 lambda!189442)))))

(declare-fun b!4615846 () Bool)

(assert (=> b!4615846 (= e!2879197 (invariantList!1167 (toList!4849 lt!1771404)))))

(declare-fun b!4615847 () Bool)

(declare-fun res!1933911 () Bool)

(assert (=> b!4615847 (=> (not res!1933911) (not e!2879197))))

(assert (=> b!4615847 (= res!1933911 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189445))))

(assert (= (and d!1453949 c!790257) b!4615844))

(assert (= (and d!1453949 (not c!790257)) b!4615843))

(assert (= (and b!4615843 res!1933909) b!4615845))

(assert (= (or b!4615844 b!4615843) bm!321820))

(assert (= (or b!4615844 b!4615843) bm!321821))

(assert (= (or b!4615844 b!4615845) bm!321822))

(assert (= (and d!1453949 res!1933910) b!4615847))

(assert (= (and b!4615847 res!1933911) b!4615846))

(declare-fun m!5449617 () Bool)

(assert (=> b!4615846 m!5449617))

(declare-fun m!5449619 () Bool)

(assert (=> b!4615847 m!5449619))

(declare-fun m!5449621 () Bool)

(assert (=> b!4615843 m!5449621))

(declare-fun m!5449623 () Bool)

(assert (=> b!4615843 m!5449623))

(declare-fun m!5449625 () Bool)

(assert (=> b!4615843 m!5449625))

(declare-fun m!5449627 () Bool)

(assert (=> b!4615843 m!5449627))

(declare-fun m!5449629 () Bool)

(assert (=> b!4615843 m!5449629))

(declare-fun m!5449631 () Bool)

(assert (=> b!4615843 m!5449631))

(assert (=> b!4615843 m!5449625))

(declare-fun m!5449633 () Bool)

(assert (=> b!4615843 m!5449633))

(declare-fun m!5449635 () Bool)

(assert (=> b!4615843 m!5449635))

(declare-fun m!5449637 () Bool)

(assert (=> b!4615843 m!5449637))

(declare-fun m!5449639 () Bool)

(assert (=> b!4615843 m!5449639))

(assert (=> b!4615843 m!5449633))

(assert (=> b!4615843 m!5449639))

(assert (=> b!4615843 m!5449621))

(declare-fun m!5449641 () Bool)

(assert (=> bm!321822 m!5449641))

(declare-fun m!5449643 () Bool)

(assert (=> bm!321821 m!5449643))

(declare-fun m!5449645 () Bool)

(assert (=> d!1453949 m!5449645))

(assert (=> d!1453949 m!5448967))

(assert (=> bm!321820 m!5449181))

(assert (=> b!4615595 d!1453949))

(declare-fun bs!1018120 () Bool)

(declare-fun b!4615854 () Bool)

(assert (= bs!1018120 (and b!4615854 b!4615695)))

(declare-fun lambda!189447 () Int)

(assert (=> bs!1018120 (= lambda!189447 lambda!189375)))

(declare-fun bs!1018123 () Bool)

(assert (= bs!1018123 (and b!4615854 b!4615843)))

(assert (=> bs!1018123 (= (= (ListMap!4154 Nil!51369) lt!1771395) (= lambda!189447 lambda!189442))))

(declare-fun bs!1018125 () Bool)

(assert (= bs!1018125 (and b!4615854 d!1453947)))

(assert (=> bs!1018125 (not (= lambda!189447 lambda!189439))))

(declare-fun bs!1018127 () Bool)

(assert (= bs!1018127 (and b!4615854 b!4615830)))

(assert (=> bs!1018127 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189447 lambda!189435))))

(declare-fun bs!1018129 () Bool)

(assert (= bs!1018129 (and b!4615854 b!4615844)))

(assert (=> bs!1018129 (= lambda!189447 lambda!189440)))

(declare-fun bs!1018131 () Bool)

(assert (= bs!1018131 (and b!4615854 d!1453949)))

(assert (=> bs!1018131 (= (= (ListMap!4154 Nil!51369) lt!1771404) (= lambda!189447 lambda!189445))))

(declare-fun bs!1018133 () Bool)

(assert (= bs!1018133 (and b!4615854 d!1453851)))

(assert (=> bs!1018133 (not (= lambda!189447 lambda!189342))))

(declare-fun bs!1018135 () Bool)

(assert (= bs!1018135 (and b!4615854 d!1453937)))

(assert (=> bs!1018135 (= (= (ListMap!4154 Nil!51369) lt!1771374) (= lambda!189447 lambda!189437))))

(declare-fun bs!1018137 () Bool)

(assert (= bs!1018137 (and b!4615854 b!4615831)))

(assert (=> bs!1018137 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189447 lambda!189434))))

(declare-fun bs!1018139 () Bool)

(assert (= bs!1018139 (and b!4615854 d!1453861)))

(assert (=> bs!1018139 (= (= (ListMap!4154 Nil!51369) lt!1771130) (= lambda!189447 lambda!189377))))

(assert (=> bs!1018127 (= (= (ListMap!4154 Nil!51369) lt!1771365) (= lambda!189447 lambda!189436))))

(declare-fun bs!1018142 () Bool)

(assert (= bs!1018142 (and b!4615854 d!1453879)))

(assert (=> bs!1018142 (= (= (ListMap!4154 Nil!51369) lt!1771204) (= lambda!189447 lambda!189405))))

(assert (=> bs!1018120 (= (= (ListMap!4154 Nil!51369) lt!1771121) (= lambda!189447 lambda!189376))))

(declare-fun bs!1018145 () Bool)

(assert (= bs!1018145 (and b!4615854 b!4615696)))

(assert (=> bs!1018145 (= lambda!189447 lambda!189374)))

(declare-fun bs!1018147 () Bool)

(assert (= bs!1018147 (and b!4615854 b!4615710)))

(assert (=> bs!1018147 (= (= (ListMap!4154 Nil!51369) lt!1771195) (= lambda!189447 lambda!189404))))

(assert (=> bs!1018123 (= lambda!189447 lambda!189441)))

(assert (=> bs!1018147 (= lambda!189447 lambda!189403)))

(declare-fun bs!1018149 () Bool)

(assert (= bs!1018149 (and b!4615854 b!4615711)))

(assert (=> bs!1018149 (= lambda!189447 lambda!189400)))

(assert (=> b!4615854 true))

(declare-fun bs!1018150 () Bool)

(declare-fun b!4615853 () Bool)

(assert (= bs!1018150 (and b!4615853 b!4615695)))

(declare-fun lambda!189449 () Int)

(assert (=> bs!1018150 (= lambda!189449 lambda!189375)))

(declare-fun bs!1018151 () Bool)

(assert (= bs!1018151 (and b!4615853 b!4615843)))

(assert (=> bs!1018151 (= (= (ListMap!4154 Nil!51369) lt!1771395) (= lambda!189449 lambda!189442))))

(declare-fun bs!1018152 () Bool)

(assert (= bs!1018152 (and b!4615853 d!1453947)))

(assert (=> bs!1018152 (not (= lambda!189449 lambda!189439))))

(declare-fun bs!1018153 () Bool)

(assert (= bs!1018153 (and b!4615853 b!4615830)))

(assert (=> bs!1018153 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189449 lambda!189435))))

(declare-fun bs!1018154 () Bool)

(assert (= bs!1018154 (and b!4615853 b!4615844)))

(assert (=> bs!1018154 (= lambda!189449 lambda!189440)))

(declare-fun bs!1018155 () Bool)

(assert (= bs!1018155 (and b!4615853 d!1453949)))

(assert (=> bs!1018155 (= (= (ListMap!4154 Nil!51369) lt!1771404) (= lambda!189449 lambda!189445))))

(declare-fun bs!1018156 () Bool)

(assert (= bs!1018156 (and b!4615853 d!1453937)))

(assert (=> bs!1018156 (= (= (ListMap!4154 Nil!51369) lt!1771374) (= lambda!189449 lambda!189437))))

(declare-fun bs!1018157 () Bool)

(assert (= bs!1018157 (and b!4615853 b!4615831)))

(assert (=> bs!1018157 (= (= (ListMap!4154 Nil!51369) lt!1771017) (= lambda!189449 lambda!189434))))

(declare-fun bs!1018158 () Bool)

(assert (= bs!1018158 (and b!4615853 d!1453861)))

(assert (=> bs!1018158 (= (= (ListMap!4154 Nil!51369) lt!1771130) (= lambda!189449 lambda!189377))))

(assert (=> bs!1018153 (= (= (ListMap!4154 Nil!51369) lt!1771365) (= lambda!189449 lambda!189436))))

(declare-fun bs!1018159 () Bool)

(assert (= bs!1018159 (and b!4615853 d!1453879)))

(assert (=> bs!1018159 (= (= (ListMap!4154 Nil!51369) lt!1771204) (= lambda!189449 lambda!189405))))

(assert (=> bs!1018150 (= (= (ListMap!4154 Nil!51369) lt!1771121) (= lambda!189449 lambda!189376))))

(declare-fun bs!1018160 () Bool)

(assert (= bs!1018160 (and b!4615853 b!4615696)))

(assert (=> bs!1018160 (= lambda!189449 lambda!189374)))

(declare-fun bs!1018161 () Bool)

(assert (= bs!1018161 (and b!4615853 b!4615710)))

(assert (=> bs!1018161 (= (= (ListMap!4154 Nil!51369) lt!1771195) (= lambda!189449 lambda!189404))))

(assert (=> bs!1018151 (= lambda!189449 lambda!189441)))

(declare-fun bs!1018162 () Bool)

(assert (= bs!1018162 (and b!4615853 d!1453851)))

(assert (=> bs!1018162 (not (= lambda!189449 lambda!189342))))

(declare-fun bs!1018163 () Bool)

(assert (= bs!1018163 (and b!4615853 b!4615854)))

(assert (=> bs!1018163 (= lambda!189449 lambda!189447)))

(assert (=> bs!1018161 (= lambda!189449 lambda!189403)))

(declare-fun bs!1018164 () Bool)

(assert (= bs!1018164 (and b!4615853 b!4615711)))

(assert (=> bs!1018164 (= lambda!189449 lambda!189400)))

(assert (=> b!4615853 true))

(declare-fun lt!1771440 () ListMap!4153)

(declare-fun lambda!189450 () Int)

(assert (=> b!4615853 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189449))))

(assert (=> bs!1018150 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189375))))

(assert (=> bs!1018151 (= (= lt!1771440 lt!1771395) (= lambda!189450 lambda!189442))))

(assert (=> bs!1018152 (not (= lambda!189450 lambda!189439))))

(assert (=> bs!1018153 (= (= lt!1771440 lt!1771017) (= lambda!189450 lambda!189435))))

(assert (=> bs!1018154 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189440))))

(assert (=> bs!1018155 (= (= lt!1771440 lt!1771404) (= lambda!189450 lambda!189445))))

(assert (=> bs!1018156 (= (= lt!1771440 lt!1771374) (= lambda!189450 lambda!189437))))

(assert (=> bs!1018157 (= (= lt!1771440 lt!1771017) (= lambda!189450 lambda!189434))))

(assert (=> bs!1018158 (= (= lt!1771440 lt!1771130) (= lambda!189450 lambda!189377))))

(assert (=> bs!1018153 (= (= lt!1771440 lt!1771365) (= lambda!189450 lambda!189436))))

(assert (=> bs!1018159 (= (= lt!1771440 lt!1771204) (= lambda!189450 lambda!189405))))

(assert (=> bs!1018150 (= (= lt!1771440 lt!1771121) (= lambda!189450 lambda!189376))))

(assert (=> bs!1018160 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189374))))

(assert (=> bs!1018161 (= (= lt!1771440 lt!1771195) (= lambda!189450 lambda!189404))))

(assert (=> bs!1018151 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189441))))

(assert (=> bs!1018162 (not (= lambda!189450 lambda!189342))))

(assert (=> bs!1018163 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189447))))

(assert (=> bs!1018161 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189403))))

(assert (=> bs!1018164 (= (= lt!1771440 (ListMap!4154 Nil!51369)) (= lambda!189450 lambda!189400))))

(assert (=> b!4615853 true))

(declare-fun bs!1018170 () Bool)

(declare-fun d!1453955 () Bool)

(assert (= bs!1018170 (and d!1453955 b!4615695)))

(declare-fun lt!1771449 () ListMap!4153)

(declare-fun lambda!189452 () Int)

(assert (=> bs!1018170 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189375))))

(declare-fun bs!1018171 () Bool)

(assert (= bs!1018171 (and d!1453955 b!4615843)))

(assert (=> bs!1018171 (= (= lt!1771449 lt!1771395) (= lambda!189452 lambda!189442))))

(declare-fun bs!1018172 () Bool)

(assert (= bs!1018172 (and d!1453955 d!1453947)))

(assert (=> bs!1018172 (not (= lambda!189452 lambda!189439))))

(declare-fun bs!1018173 () Bool)

(assert (= bs!1018173 (and d!1453955 b!4615830)))

(assert (=> bs!1018173 (= (= lt!1771449 lt!1771017) (= lambda!189452 lambda!189435))))

(declare-fun bs!1018174 () Bool)

(assert (= bs!1018174 (and d!1453955 b!4615844)))

(assert (=> bs!1018174 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189440))))

(declare-fun bs!1018175 () Bool)

(assert (= bs!1018175 (and d!1453955 d!1453949)))

(assert (=> bs!1018175 (= (= lt!1771449 lt!1771404) (= lambda!189452 lambda!189445))))

(declare-fun bs!1018176 () Bool)

(assert (= bs!1018176 (and d!1453955 d!1453937)))

(assert (=> bs!1018176 (= (= lt!1771449 lt!1771374) (= lambda!189452 lambda!189437))))

(declare-fun bs!1018177 () Bool)

(assert (= bs!1018177 (and d!1453955 b!4615831)))

(assert (=> bs!1018177 (= (= lt!1771449 lt!1771017) (= lambda!189452 lambda!189434))))

(declare-fun bs!1018178 () Bool)

(assert (= bs!1018178 (and d!1453955 d!1453861)))

(assert (=> bs!1018178 (= (= lt!1771449 lt!1771130) (= lambda!189452 lambda!189377))))

(declare-fun bs!1018179 () Bool)

(assert (= bs!1018179 (and d!1453955 b!4615853)))

(assert (=> bs!1018179 (= (= lt!1771449 lt!1771440) (= lambda!189452 lambda!189450))))

(assert (=> bs!1018179 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189449))))

(assert (=> bs!1018173 (= (= lt!1771449 lt!1771365) (= lambda!189452 lambda!189436))))

(declare-fun bs!1018180 () Bool)

(assert (= bs!1018180 (and d!1453955 d!1453879)))

(assert (=> bs!1018180 (= (= lt!1771449 lt!1771204) (= lambda!189452 lambda!189405))))

(assert (=> bs!1018170 (= (= lt!1771449 lt!1771121) (= lambda!189452 lambda!189376))))

(declare-fun bs!1018181 () Bool)

(assert (= bs!1018181 (and d!1453955 b!4615696)))

(assert (=> bs!1018181 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189374))))

(declare-fun bs!1018182 () Bool)

(assert (= bs!1018182 (and d!1453955 b!4615710)))

(assert (=> bs!1018182 (= (= lt!1771449 lt!1771195) (= lambda!189452 lambda!189404))))

(assert (=> bs!1018171 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189441))))

(declare-fun bs!1018183 () Bool)

(assert (= bs!1018183 (and d!1453955 d!1453851)))

(assert (=> bs!1018183 (not (= lambda!189452 lambda!189342))))

(declare-fun bs!1018184 () Bool)

(assert (= bs!1018184 (and d!1453955 b!4615854)))

(assert (=> bs!1018184 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189447))))

(assert (=> bs!1018182 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189403))))

(declare-fun bs!1018185 () Bool)

(assert (= bs!1018185 (and d!1453955 b!4615711)))

(assert (=> bs!1018185 (= (= lt!1771449 (ListMap!4154 Nil!51369)) (= lambda!189452 lambda!189400))))

(assert (=> d!1453955 true))

(declare-fun bm!321826 () Bool)

(declare-fun call!321833 () Unit!110138)

(assert (=> bm!321826 (= call!321833 (lemmaContainsAllItsOwnKeys!468 (ListMap!4154 Nil!51369)))))

(declare-fun e!2879202 () ListMap!4153)

(assert (=> b!4615853 (= e!2879202 lt!1771440)))

(declare-fun lt!1771455 () ListMap!4153)

(assert (=> b!4615853 (= lt!1771455 (+!1827 (ListMap!4154 Nil!51369) (h!57381 lt!1771019)))))

(assert (=> b!4615853 (= lt!1771440 (addToMapMapFromBucket!903 (t!358497 lt!1771019) (+!1827 (ListMap!4154 Nil!51369) (h!57381 lt!1771019))))))

(declare-fun lt!1771452 () Unit!110138)

(assert (=> b!4615853 (= lt!1771452 call!321833)))

(assert (=> b!4615853 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189449)))

(declare-fun lt!1771439 () Unit!110138)

(assert (=> b!4615853 (= lt!1771439 lt!1771452)))

(assert (=> b!4615853 (forall!10742 (toList!4849 lt!1771455) lambda!189450)))

(declare-fun lt!1771441 () Unit!110138)

(declare-fun Unit!110236 () Unit!110138)

(assert (=> b!4615853 (= lt!1771441 Unit!110236)))

(declare-fun call!321831 () Bool)

(assert (=> b!4615853 call!321831))

(declare-fun lt!1771446 () Unit!110138)

(declare-fun Unit!110237 () Unit!110138)

(assert (=> b!4615853 (= lt!1771446 Unit!110237)))

(declare-fun lt!1771457 () Unit!110138)

(declare-fun Unit!110238 () Unit!110138)

(assert (=> b!4615853 (= lt!1771457 Unit!110238)))

(declare-fun lt!1771453 () Unit!110138)

(assert (=> b!4615853 (= lt!1771453 (forallContained!2960 (toList!4849 lt!1771455) lambda!189450 (h!57381 lt!1771019)))))

(assert (=> b!4615853 (contains!14332 lt!1771455 (_1!29401 (h!57381 lt!1771019)))))

(declare-fun lt!1771450 () Unit!110138)

(declare-fun Unit!110239 () Unit!110138)

(assert (=> b!4615853 (= lt!1771450 Unit!110239)))

(assert (=> b!4615853 (contains!14332 lt!1771440 (_1!29401 (h!57381 lt!1771019)))))

(declare-fun lt!1771445 () Unit!110138)

(declare-fun Unit!110240 () Unit!110138)

(assert (=> b!4615853 (= lt!1771445 Unit!110240)))

(assert (=> b!4615853 (forall!10742 lt!1771019 lambda!189450)))

(declare-fun lt!1771454 () Unit!110138)

(declare-fun Unit!110241 () Unit!110138)

(assert (=> b!4615853 (= lt!1771454 Unit!110241)))

(assert (=> b!4615853 (forall!10742 (toList!4849 lt!1771455) lambda!189450)))

(declare-fun lt!1771458 () Unit!110138)

(declare-fun Unit!110242 () Unit!110138)

(assert (=> b!4615853 (= lt!1771458 Unit!110242)))

(declare-fun lt!1771447 () Unit!110138)

(declare-fun Unit!110243 () Unit!110138)

(assert (=> b!4615853 (= lt!1771447 Unit!110243)))

(declare-fun lt!1771459 () Unit!110138)

(assert (=> b!4615853 (= lt!1771459 (addForallContainsKeyThenBeforeAdding!467 (ListMap!4154 Nil!51369) lt!1771440 (_1!29401 (h!57381 lt!1771019)) (_2!29401 (h!57381 lt!1771019))))))

(assert (=> b!4615853 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189450)))

(declare-fun lt!1771451 () Unit!110138)

(assert (=> b!4615853 (= lt!1771451 lt!1771459)))

(assert (=> b!4615853 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189450)))

(declare-fun lt!1771442 () Unit!110138)

(declare-fun Unit!110244 () Unit!110138)

(assert (=> b!4615853 (= lt!1771442 Unit!110244)))

(declare-fun res!1933915 () Bool)

(assert (=> b!4615853 (= res!1933915 (forall!10742 lt!1771019 lambda!189450))))

(declare-fun e!2879204 () Bool)

(assert (=> b!4615853 (=> (not res!1933915) (not e!2879204))))

(assert (=> b!4615853 e!2879204))

(declare-fun lt!1771443 () Unit!110138)

(declare-fun Unit!110245 () Unit!110138)

(assert (=> b!4615853 (= lt!1771443 Unit!110245)))

(declare-fun e!2879203 () Bool)

(assert (=> d!1453955 e!2879203))

(declare-fun res!1933916 () Bool)

(assert (=> d!1453955 (=> (not res!1933916) (not e!2879203))))

(assert (=> d!1453955 (= res!1933916 (forall!10742 lt!1771019 lambda!189452))))

(assert (=> d!1453955 (= lt!1771449 e!2879202)))

(declare-fun c!790259 () Bool)

(assert (=> d!1453955 (= c!790259 ((_ is Nil!51369) lt!1771019))))

(assert (=> d!1453955 (noDuplicateKeys!1442 lt!1771019)))

(assert (=> d!1453955 (= (addToMapMapFromBucket!903 lt!1771019 (ListMap!4154 Nil!51369)) lt!1771449)))

(declare-fun bm!321827 () Bool)

(assert (=> bm!321827 (= call!321831 (forall!10742 (ite c!790259 (toList!4849 (ListMap!4154 Nil!51369)) (t!358497 lt!1771019)) (ite c!790259 lambda!189447 lambda!189450)))))

(assert (=> b!4615854 (= e!2879202 (ListMap!4154 Nil!51369))))

(declare-fun lt!1771456 () Unit!110138)

(assert (=> b!4615854 (= lt!1771456 call!321833)))

(assert (=> b!4615854 call!321831))

(declare-fun lt!1771448 () Unit!110138)

(assert (=> b!4615854 (= lt!1771448 lt!1771456)))

(declare-fun call!321832 () Bool)

(assert (=> b!4615854 call!321832))

(declare-fun lt!1771444 () Unit!110138)

(declare-fun Unit!110246 () Unit!110138)

(assert (=> b!4615854 (= lt!1771444 Unit!110246)))

(declare-fun b!4615855 () Bool)

(assert (=> b!4615855 (= e!2879204 call!321832)))

(declare-fun bm!321828 () Bool)

(assert (=> bm!321828 (= call!321832 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) (ite c!790259 lambda!189447 lambda!189450)))))

(declare-fun b!4615856 () Bool)

(assert (=> b!4615856 (= e!2879203 (invariantList!1167 (toList!4849 lt!1771449)))))

(declare-fun b!4615857 () Bool)

(declare-fun res!1933917 () Bool)

(assert (=> b!4615857 (=> (not res!1933917) (not e!2879203))))

(assert (=> b!4615857 (= res!1933917 (forall!10742 (toList!4849 (ListMap!4154 Nil!51369)) lambda!189452))))

(assert (= (and d!1453955 c!790259) b!4615854))

(assert (= (and d!1453955 (not c!790259)) b!4615853))

(assert (= (and b!4615853 res!1933915) b!4615855))

(assert (= (or b!4615854 b!4615853) bm!321826))

(assert (= (or b!4615854 b!4615853) bm!321827))

(assert (= (or b!4615854 b!4615855) bm!321828))

(assert (= (and d!1453955 res!1933916) b!4615857))

(assert (= (and b!4615857 res!1933917) b!4615856))

(declare-fun m!5449703 () Bool)

(assert (=> b!4615856 m!5449703))

(declare-fun m!5449705 () Bool)

(assert (=> b!4615857 m!5449705))

(declare-fun m!5449707 () Bool)

(assert (=> b!4615853 m!5449707))

(declare-fun m!5449709 () Bool)

(assert (=> b!4615853 m!5449709))

(declare-fun m!5449711 () Bool)

(assert (=> b!4615853 m!5449711))

(declare-fun m!5449713 () Bool)

(assert (=> b!4615853 m!5449713))

(declare-fun m!5449715 () Bool)

(assert (=> b!4615853 m!5449715))

(declare-fun m!5449717 () Bool)

(assert (=> b!4615853 m!5449717))

(assert (=> b!4615853 m!5449711))

(declare-fun m!5449719 () Bool)

(assert (=> b!4615853 m!5449719))

(declare-fun m!5449721 () Bool)

(assert (=> b!4615853 m!5449721))

(declare-fun m!5449723 () Bool)

(assert (=> b!4615853 m!5449723))

(declare-fun m!5449725 () Bool)

(assert (=> b!4615853 m!5449725))

(assert (=> b!4615853 m!5449719))

(assert (=> b!4615853 m!5449725))

(assert (=> b!4615853 m!5449707))

(declare-fun m!5449727 () Bool)

(assert (=> bm!321828 m!5449727))

(declare-fun m!5449729 () Bool)

(assert (=> bm!321827 m!5449729))

(declare-fun m!5449731 () Bool)

(assert (=> d!1453955 m!5449731))

(assert (=> d!1453955 m!5449217))

(assert (=> bm!321826 m!5449181))

(assert (=> b!4615595 d!1453955))

(declare-fun b!4615861 () Bool)

(declare-fun e!2879211 () Bool)

(declare-fun e!2879212 () Bool)

(assert (=> b!4615861 (= e!2879211 e!2879212)))

(declare-fun res!1933921 () Bool)

(assert (=> b!4615861 (=> (not res!1933921) (not e!2879212))))

(assert (=> b!4615861 (= res!1933921 (isDefined!8735 (getValueByKey!1383 (toList!4849 lt!1771012) key!4968)))))

(declare-fun b!4615862 () Bool)

(assert (=> b!4615862 false))

(declare-fun lt!1771465 () Unit!110138)

(declare-fun lt!1771469 () Unit!110138)

(assert (=> b!4615862 (= lt!1771465 lt!1771469)))

(assert (=> b!4615862 (containsKey!2324 (toList!4849 lt!1771012) key!4968)))

(assert (=> b!4615862 (= lt!1771469 (lemmaInGetKeysListThenContainsKey!617 (toList!4849 lt!1771012) key!4968))))

(declare-fun e!2879207 () Unit!110138)

(declare-fun Unit!110256 () Unit!110138)

(assert (=> b!4615862 (= e!2879207 Unit!110256)))

(declare-fun b!4615863 () Bool)

(declare-fun e!2879210 () List!51495)

(assert (=> b!4615863 (= e!2879210 (getKeysList!618 (toList!4849 lt!1771012)))))

(declare-fun b!4615864 () Bool)

(declare-fun e!2879209 () Bool)

(assert (=> b!4615864 (= e!2879209 (not (contains!14335 (keys!18052 lt!1771012) key!4968)))))

(declare-fun b!4615865 () Bool)

(declare-fun e!2879208 () Unit!110138)

(declare-fun lt!1771468 () Unit!110138)

(assert (=> b!4615865 (= e!2879208 lt!1771468)))

(declare-fun lt!1771464 () Unit!110138)

(assert (=> b!4615865 (= lt!1771464 (lemmaContainsKeyImpliesGetValueByKeyDefined!1286 (toList!4849 lt!1771012) key!4968))))

(assert (=> b!4615865 (isDefined!8735 (getValueByKey!1383 (toList!4849 lt!1771012) key!4968))))

(declare-fun lt!1771466 () Unit!110138)

(assert (=> b!4615865 (= lt!1771466 lt!1771464)))

(assert (=> b!4615865 (= lt!1771468 (lemmaInListThenGetKeysListContains!613 (toList!4849 lt!1771012) key!4968))))

(declare-fun call!321834 () Bool)

(assert (=> b!4615865 call!321834))

(declare-fun bm!321829 () Bool)

(assert (=> bm!321829 (= call!321834 (contains!14335 e!2879210 key!4968))))

(declare-fun c!790262 () Bool)

(declare-fun c!790261 () Bool)

(assert (=> bm!321829 (= c!790262 c!790261)))

(declare-fun b!4615866 () Bool)

(assert (=> b!4615866 (= e!2879212 (contains!14335 (keys!18052 lt!1771012) key!4968))))

(declare-fun d!1453965 () Bool)

(assert (=> d!1453965 e!2879211))

(declare-fun res!1933919 () Bool)

(assert (=> d!1453965 (=> res!1933919 e!2879211)))

(assert (=> d!1453965 (= res!1933919 e!2879209)))

(declare-fun res!1933920 () Bool)

(assert (=> d!1453965 (=> (not res!1933920) (not e!2879209))))

(declare-fun lt!1771467 () Bool)

(assert (=> d!1453965 (= res!1933920 (not lt!1771467))))

(declare-fun lt!1771463 () Bool)

(assert (=> d!1453965 (= lt!1771467 lt!1771463)))

(declare-fun lt!1771462 () Unit!110138)

(assert (=> d!1453965 (= lt!1771462 e!2879208)))

(assert (=> d!1453965 (= c!790261 lt!1771463)))

(assert (=> d!1453965 (= lt!1771463 (containsKey!2324 (toList!4849 lt!1771012) key!4968))))

(assert (=> d!1453965 (= (contains!14332 lt!1771012 key!4968) lt!1771467)))

(declare-fun b!4615867 () Bool)

(assert (=> b!4615867 (= e!2879208 e!2879207)))

(declare-fun c!790263 () Bool)

(assert (=> b!4615867 (= c!790263 call!321834)))

(declare-fun b!4615868 () Bool)

(declare-fun Unit!110259 () Unit!110138)

(assert (=> b!4615868 (= e!2879207 Unit!110259)))

(declare-fun b!4615869 () Bool)

(assert (=> b!4615869 (= e!2879210 (keys!18052 lt!1771012))))

(assert (= (and d!1453965 c!790261) b!4615865))

(assert (= (and d!1453965 (not c!790261)) b!4615867))

(assert (= (and b!4615867 c!790263) b!4615862))

(assert (= (and b!4615867 (not c!790263)) b!4615868))

(assert (= (or b!4615865 b!4615867) bm!321829))

(assert (= (and bm!321829 c!790262) b!4615863))

(assert (= (and bm!321829 (not c!790262)) b!4615869))

(assert (= (and d!1453965 res!1933920) b!4615864))

(assert (= (and d!1453965 (not res!1933919)) b!4615861))

(assert (= (and b!4615861 res!1933921) b!4615866))

(assert (=> b!4615864 m!5449493))

(assert (=> b!4615864 m!5449493))

(declare-fun m!5449733 () Bool)

(assert (=> b!4615864 m!5449733))

(declare-fun m!5449735 () Bool)

(assert (=> d!1453965 m!5449735))

(declare-fun m!5449737 () Bool)

(assert (=> b!4615863 m!5449737))

(declare-fun m!5449739 () Bool)

(assert (=> b!4615865 m!5449739))

(declare-fun m!5449741 () Bool)

(assert (=> b!4615865 m!5449741))

(assert (=> b!4615865 m!5449741))

(declare-fun m!5449743 () Bool)

(assert (=> b!4615865 m!5449743))

(declare-fun m!5449745 () Bool)

(assert (=> b!4615865 m!5449745))

(assert (=> b!4615869 m!5449493))

(assert (=> b!4615861 m!5449741))

(assert (=> b!4615861 m!5449741))

(assert (=> b!4615861 m!5449743))

(assert (=> b!4615866 m!5449493))

(assert (=> b!4615866 m!5449493))

(assert (=> b!4615866 m!5449733))

(declare-fun m!5449747 () Bool)

(assert (=> bm!321829 m!5449747))

(assert (=> b!4615862 m!5449735))

(declare-fun m!5449749 () Bool)

(assert (=> b!4615862 m!5449749))

(assert (=> b!4615585 d!1453965))

(declare-fun bs!1018186 () Bool)

(declare-fun d!1453967 () Bool)

(assert (= bs!1018186 (and d!1453967 d!1453905)))

(declare-fun lambda!189453 () Int)

(assert (=> bs!1018186 (= lambda!189453 lambda!189433)))

(declare-fun bs!1018187 () Bool)

(assert (= bs!1018187 (and d!1453967 d!1453885)))

(assert (=> bs!1018187 (= lambda!189453 lambda!189419)))

(declare-fun bs!1018188 () Bool)

(assert (= bs!1018188 (and d!1453967 d!1453945)))

(assert (=> bs!1018188 (= lambda!189453 lambda!189438)))

(declare-fun bs!1018189 () Bool)

(assert (= bs!1018189 (and d!1453967 b!4615596)))

(assert (=> bs!1018189 (= lambda!189453 lambda!189332)))

(declare-fun bs!1018190 () Bool)

(assert (= bs!1018190 (and d!1453967 d!1453889)))

(assert (=> bs!1018190 (= lambda!189453 lambda!189420)))

(declare-fun lt!1771470 () ListMap!4153)

(assert (=> d!1453967 (invariantList!1167 (toList!4849 lt!1771470))))

(declare-fun e!2879213 () ListMap!4153)

(assert (=> d!1453967 (= lt!1771470 e!2879213)))

(declare-fun c!790264 () Bool)

(assert (=> d!1453967 (= c!790264 ((_ is Cons!51370) lt!1771010))))

(assert (=> d!1453967 (forall!10740 lt!1771010 lambda!189453)))

(assert (=> d!1453967 (= (extractMap!1498 lt!1771010) lt!1771470)))

(declare-fun b!4615870 () Bool)

(assert (=> b!4615870 (= e!2879213 (addToMapMapFromBucket!903 (_2!29402 (h!57382 lt!1771010)) (extractMap!1498 (t!358498 lt!1771010))))))

(declare-fun b!4615871 () Bool)

(assert (=> b!4615871 (= e!2879213 (ListMap!4154 Nil!51369))))

(assert (= (and d!1453967 c!790264) b!4615870))

(assert (= (and d!1453967 (not c!790264)) b!4615871))

(declare-fun m!5449751 () Bool)

(assert (=> d!1453967 m!5449751))

(declare-fun m!5449753 () Bool)

(assert (=> d!1453967 m!5449753))

(declare-fun m!5449755 () Bool)

(assert (=> b!4615870 m!5449755))

(assert (=> b!4615870 m!5449755))

(declare-fun m!5449757 () Bool)

(assert (=> b!4615870 m!5449757))

(assert (=> b!4615585 d!1453967))

(declare-fun e!2879216 () Bool)

(declare-fun b!4615876 () Bool)

(declare-fun tp!1341574 () Bool)

(assert (=> b!4615876 (= e!2879216 (and tp_is_empty!29061 tp_is_empty!29063 tp!1341574))))

(assert (=> b!4615587 (= tp!1341571 e!2879216)))

(assert (= (and b!4615587 ((_ is Cons!51369) (t!358497 newBucket!224))) b!4615876))

(declare-fun e!2879217 () Bool)

(declare-fun tp!1341575 () Bool)

(declare-fun b!4615877 () Bool)

(assert (=> b!4615877 (= e!2879217 (and tp_is_empty!29061 tp_is_empty!29063 tp!1341575))))

(assert (=> b!4615593 (= tp!1341570 e!2879217)))

(assert (= (and b!4615593 ((_ is Cons!51369) (t!358497 oldBucket!40))) b!4615877))

(declare-fun b_lambda!170529 () Bool)

(assert (= b_lambda!170527 (or b!4615596 b_lambda!170529)))

(declare-fun bs!1018193 () Bool)

(declare-fun d!1453973 () Bool)

(assert (= bs!1018193 (and d!1453973 b!4615596)))

(assert (=> bs!1018193 (= (dynLambda!21461 lambda!189332 (h!57382 lt!1771010)) (noDuplicateKeys!1442 (_2!29402 (h!57382 lt!1771010))))))

(declare-fun m!5449765 () Bool)

(assert (=> bs!1018193 m!5449765))

(assert (=> b!4615815 d!1453973))

(check-sat (not b!4615869) (not b!4615864) (not b!4615863) (not d!1453965) (not b!4615710) (not d!1453841) (not d!1453945) (not d!1453891) (not b!4615630) (not b_lambda!170529) (not bm!321790) (not b!4615816) (not bm!321821) (not b!4615809) (not bm!321817) (not b!4615843) tp_is_empty!29061 (not b!4615856) (not b!4615787) (not b!4615783) (not d!1453905) (not bm!321816) (not b!4615828) (not bm!321794) (not bm!321792) (not b!4615866) (not bm!321827) (not d!1453923) (not d!1453869) (not b!4615704) (not b!4615847) (not bm!321826) (not b!4615776) (not b!4615865) (not b!4615695) (not b!4615792) (not b!4615785) (not bm!321819) (not bm!321815) (not b!4615862) (not b!4615857) (not b!4615810) (not d!1453889) (not d!1453915) (not d!1453839) (not b!4615846) (not d!1453949) (not d!1453835) (not b!4615699) (not bm!321791) (not bm!321822) (not d!1453873) (not b!4615703) (not d!1453927) (not d!1453871) (not b!4615861) (not d!1453849) (not b!4615786) (not b!4615777) (not b!4615788) (not b!4615870) (not b!4615780) (not bm!321793) (not bs!1018193) (not d!1453967) (not b!4615834) (not b!4615775) (not d!1453883) (not bm!321829) tp_is_empty!29063 (not b!4615713) (not d!1453913) (not b!4615779) (not b!4615629) (not b!4615829) (not b!4615737) (not d!1453903) (not d!1453877) (not b!4615739) (not b!4615833) (not b!4615702) (not b!4615607) (not b!4615608) (not b!4615876) (not b!4615841) (not b!4615778) (not b!4615714) (not d!1453861) (not b!4615803) (not bm!321820) (not bm!321818) (not b!4615648) (not d!1453925) (not b!4615817) (not b!4615705) (not d!1453879) (not d!1453875) (not b!4615877) (not b!4615830) (not b!4615698) (not bm!321828) (not b!4615784) (not b!4615853) (not d!1453955) (not d!1453885) (not d!1453851) (not b!4615789) (not d!1453947) (not bm!321789) (not d!1453937))
(check-sat)
