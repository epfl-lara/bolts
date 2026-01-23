; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461964 () Bool)

(assert start!461964)

(declare-fun tp_is_empty!29087 () Bool)

(declare-fun tp!1341631 () Bool)

(declare-fun e!2879854 () Bool)

(declare-fun b!4616879 () Bool)

(declare-fun tp_is_empty!29085 () Bool)

(assert (=> b!4616879 (= e!2879854 (and tp_is_empty!29085 tp_is_empty!29087 tp!1341631))))

(declare-fun b!4616880 () Bool)

(declare-fun e!2879844 () Bool)

(declare-datatypes ((K!12770 0))(
  ( (K!12771 (val!18487 Int)) )
))
(declare-datatypes ((V!13016 0))(
  ( (V!13017 (val!18488 Int)) )
))
(declare-datatypes ((tuple2!52238 0))(
  ( (tuple2!52239 (_1!29413 K!12770) (_2!29413 V!13016)) )
))
(declare-datatypes ((List!51511 0))(
  ( (Nil!51387) (Cons!51387 (h!57405 tuple2!52238) (t!358521 List!51511)) )
))
(declare-datatypes ((ListMap!4165 0))(
  ( (ListMap!4166 (toList!4861 List!51511)) )
))
(declare-fun lt!1772702 () ListMap!4165)

(assert (=> b!4616880 (= e!2879844 (= lt!1772702 (ListMap!4166 Nil!51387)))))

(declare-fun b!4616881 () Bool)

(declare-fun e!2879853 () Bool)

(declare-fun e!2879851 () Bool)

(assert (=> b!4616881 (= e!2879853 e!2879851)))

(declare-fun res!1934551 () Bool)

(assert (=> b!4616881 (=> res!1934551 e!2879851)))

(declare-fun lt!1772713 () ListMap!4165)

(declare-fun lt!1772710 () ListMap!4165)

(assert (=> b!4616881 (= res!1934551 (not (= lt!1772713 lt!1772710)))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51511)

(declare-datatypes ((tuple2!52240 0))(
  ( (tuple2!52241 (_1!29414 (_ BitVec 64)) (_2!29414 List!51511)) )
))
(declare-datatypes ((List!51512 0))(
  ( (Nil!51388) (Cons!51388 (h!57406 tuple2!52240) (t!358522 List!51512)) )
))
(declare-fun extractMap!1504 (List!51512) ListMap!4165)

(assert (=> b!4616881 (= lt!1772710 (extractMap!1504 (Cons!51388 (tuple2!52241 hash!414 newBucket!224) Nil!51388)))))

(declare-fun lt!1772709 () List!51512)

(assert (=> b!4616881 (= lt!1772713 (extractMap!1504 lt!1772709))))

(declare-fun lt!1772708 () List!51511)

(assert (=> b!4616881 (= lt!1772709 (Cons!51388 (tuple2!52241 hash!414 lt!1772708) Nil!51388))))

(declare-fun b!4616882 () Bool)

(declare-fun e!2879845 () Bool)

(assert (=> b!4616882 (= e!2879845 e!2879853)))

(declare-fun res!1934562 () Bool)

(assert (=> b!4616882 (=> res!1934562 e!2879853)))

(assert (=> b!4616882 (= res!1934562 (not (= lt!1772708 newBucket!224)))))

(declare-fun oldBucket!40 () List!51511)

(declare-fun tail!8095 (List!51511) List!51511)

(assert (=> b!4616882 (= lt!1772708 (tail!8095 oldBucket!40))))

(declare-fun b!4616883 () Bool)

(declare-fun e!2879850 () Bool)

(declare-fun e!2879849 () Bool)

(assert (=> b!4616883 (= e!2879850 e!2879849)))

(declare-fun res!1934561 () Bool)

(assert (=> b!4616883 (=> res!1934561 e!2879849)))

(declare-fun lt!1772705 () ListMap!4165)

(declare-fun lt!1772701 () ListMap!4165)

(declare-fun eq!791 (ListMap!4165 ListMap!4165) Bool)

(assert (=> b!4616883 (= res!1934561 (not (eq!791 lt!1772705 lt!1772701)))))

(declare-fun addToMapMapFromBucket!909 (List!51511 ListMap!4165) ListMap!4165)

(assert (=> b!4616883 (= lt!1772701 (addToMapMapFromBucket!909 oldBucket!40 (ListMap!4166 Nil!51387)))))

(declare-fun lt!1772714 () ListMap!4165)

(declare-fun +!1833 (ListMap!4165 tuple2!52238) ListMap!4165)

(assert (=> b!4616883 (= lt!1772705 (+!1833 lt!1772714 (h!57405 oldBucket!40)))))

(declare-fun lt!1772711 () tuple2!52238)

(assert (=> b!4616883 (eq!791 (addToMapMapFromBucket!909 (Cons!51387 lt!1772711 lt!1772708) (ListMap!4166 Nil!51387)) (+!1833 lt!1772714 lt!1772711))))

(declare-datatypes ((Unit!110516 0))(
  ( (Unit!110517) )
))
(declare-fun lt!1772704 () Unit!110516)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!42 (tuple2!52238 List!51511 ListMap!4165) Unit!110516)

(assert (=> b!4616883 (= lt!1772704 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!42 lt!1772711 lt!1772708 (ListMap!4166 Nil!51387)))))

(declare-fun head!9608 (List!51511) tuple2!52238)

(assert (=> b!4616883 (= lt!1772711 (head!9608 oldBucket!40))))

(declare-fun b!4616884 () Bool)

(declare-fun e!2879855 () Bool)

(declare-fun e!2879846 () Bool)

(assert (=> b!4616884 (= e!2879855 e!2879846)))

(declare-fun res!1934546 () Bool)

(assert (=> b!4616884 (=> res!1934546 e!2879846)))

(declare-fun lt!1772716 () ListMap!4165)

(declare-fun lt!1772715 () ListMap!4165)

(assert (=> b!4616884 (= res!1934546 (or (not (= lt!1772715 lt!1772714)) (not (= lt!1772716 lt!1772701))))))

(declare-fun key!4968 () K!12770)

(declare-fun -!538 (ListMap!4165 K!12770) ListMap!4165)

(assert (=> b!4616884 (= lt!1772715 (-!538 lt!1772705 key!4968))))

(assert (=> b!4616884 (= (-!538 (+!1833 lt!1772714 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))) key!4968) lt!1772714)))

(declare-fun lt!1772706 () Unit!110516)

(declare-fun addThenRemoveForNewKeyIsSame!21 (ListMap!4165 K!12770 V!13016) Unit!110516)

(assert (=> b!4616884 (= lt!1772706 (addThenRemoveForNewKeyIsSame!21 lt!1772714 key!4968 (_2!29413 (h!57405 oldBucket!40))))))

(declare-fun b!4616885 () Bool)

(assert (=> b!4616885 (= e!2879851 e!2879850)))

(declare-fun res!1934544 () Bool)

(assert (=> b!4616885 (=> res!1934544 e!2879850)))

(assert (=> b!4616885 (= res!1934544 (not (= lt!1772714 (addToMapMapFromBucket!909 newBucket!224 (ListMap!4166 Nil!51387)))))))

(assert (=> b!4616885 (= lt!1772714 (addToMapMapFromBucket!909 lt!1772708 (ListMap!4166 Nil!51387)))))

(declare-fun b!4616886 () Bool)

(declare-fun e!2879847 () Bool)

(assert (=> b!4616886 (= e!2879847 (not e!2879845))))

(declare-fun res!1934555 () Bool)

(assert (=> b!4616886 (=> res!1934555 e!2879845)))

(get-info :version)

(assert (=> b!4616886 (= res!1934555 (or (not ((_ is Cons!51387) oldBucket!40)) (not (= (_1!29413 (h!57405 oldBucket!40)) key!4968))))))

(assert (=> b!4616886 e!2879844))

(declare-fun res!1934560 () Bool)

(assert (=> b!4616886 (=> (not res!1934560) (not e!2879844))))

(assert (=> b!4616886 (= res!1934560 (= lt!1772716 (addToMapMapFromBucket!909 oldBucket!40 lt!1772702)))))

(assert (=> b!4616886 (= lt!1772702 (extractMap!1504 Nil!51388))))

(assert (=> b!4616886 true))

(declare-fun b!4616887 () Bool)

(assert (=> b!4616887 (= e!2879849 e!2879855)))

(declare-fun res!1934557 () Bool)

(assert (=> b!4616887 (=> res!1934557 e!2879855)))

(declare-fun contains!14350 (ListMap!4165 K!12770) Bool)

(assert (=> b!4616887 (= res!1934557 (contains!14350 lt!1772714 key!4968))))

(assert (=> b!4616887 (not (contains!14350 lt!1772713 key!4968))))

(declare-fun lt!1772707 () Unit!110516)

(declare-datatypes ((Hashable!5845 0))(
  ( (HashableExt!5844 (__x!31548 Int)) )
))
(declare-fun hashF!1389 () Hashable!5845)

(declare-datatypes ((ListLongMap!3451 0))(
  ( (ListLongMap!3452 (toList!4862 List!51512)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!362 (ListLongMap!3451 K!12770 Hashable!5845) Unit!110516)

(assert (=> b!4616887 (= lt!1772707 (lemmaNotInItsHashBucketThenNotInMap!362 (ListLongMap!3452 lt!1772709) key!4968 hashF!1389))))

(declare-fun b!4616888 () Bool)

(declare-fun res!1934552 () Bool)

(assert (=> b!4616888 (=> res!1934552 e!2879846)))

(assert (=> b!4616888 (= res!1934552 (not (eq!791 lt!1772705 lt!1772716)))))

(declare-fun b!4616889 () Bool)

(declare-fun res!1934543 () Bool)

(declare-fun e!2879856 () Bool)

(assert (=> b!4616889 (=> (not res!1934543) (not e!2879856))))

(declare-fun noDuplicateKeys!1448 (List!51511) Bool)

(assert (=> b!4616889 (= res!1934543 (noDuplicateKeys!1448 newBucket!224))))

(declare-fun b!4616890 () Bool)

(declare-fun res!1934550 () Bool)

(assert (=> b!4616890 (=> (not res!1934550) (not e!2879856))))

(declare-fun removePairForKey!1071 (List!51511 K!12770) List!51511)

(assert (=> b!4616890 (= res!1934550 (= (removePairForKey!1071 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4616891 () Bool)

(declare-fun e!2879848 () Bool)

(assert (=> b!4616891 (= e!2879846 e!2879848)))

(declare-fun res!1934549 () Bool)

(assert (=> b!4616891 (=> res!1934549 e!2879848)))

(assert (=> b!4616891 (= res!1934549 (not (= lt!1772710 lt!1772714)))))

(declare-fun lt!1772717 () ListMap!4165)

(assert (=> b!4616891 (eq!791 lt!1772715 lt!1772717)))

(assert (=> b!4616891 (= lt!1772717 (-!538 lt!1772716 key!4968))))

(declare-fun lt!1772712 () Unit!110516)

(declare-fun lemmaRemovePreservesEq!10 (ListMap!4165 ListMap!4165 K!12770) Unit!110516)

(assert (=> b!4616891 (= lt!1772712 (lemmaRemovePreservesEq!10 lt!1772705 lt!1772716 key!4968))))

(declare-fun b!4616892 () Bool)

(declare-fun res!1934545 () Bool)

(assert (=> b!4616892 (=> (not res!1934545) (not e!2879847))))

(declare-fun allKeysSameHash!1302 (List!51511 (_ BitVec 64) Hashable!5845) Bool)

(assert (=> b!4616892 (= res!1934545 (allKeysSameHash!1302 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4616893 () Bool)

(assert (=> b!4616893 (= e!2879856 e!2879847)))

(declare-fun res!1934553 () Bool)

(assert (=> b!4616893 (=> (not res!1934553) (not e!2879847))))

(assert (=> b!4616893 (= res!1934553 (contains!14350 lt!1772716 key!4968))))

(declare-fun lt!1772703 () List!51512)

(assert (=> b!4616893 (= lt!1772716 (extractMap!1504 lt!1772703))))

(assert (=> b!4616893 (= lt!1772703 (Cons!51388 (tuple2!52241 hash!414 oldBucket!40) Nil!51388))))

(declare-fun e!2879852 () Bool)

(declare-fun b!4616894 () Bool)

(declare-fun tp!1341630 () Bool)

(assert (=> b!4616894 (= e!2879852 (and tp_is_empty!29085 tp_is_empty!29087 tp!1341630))))

(declare-fun b!4616895 () Bool)

(declare-fun res!1934559 () Bool)

(assert (=> b!4616895 (=> res!1934559 e!2879848)))

(assert (=> b!4616895 (= res!1934559 (not (eq!791 lt!1772717 lt!1772710)))))

(declare-fun res!1934556 () Bool)

(assert (=> start!461964 (=> (not res!1934556) (not e!2879856))))

(assert (=> start!461964 (= res!1934556 (noDuplicateKeys!1448 oldBucket!40))))

(assert (=> start!461964 e!2879856))

(assert (=> start!461964 true))

(assert (=> start!461964 e!2879852))

(assert (=> start!461964 tp_is_empty!29085))

(assert (=> start!461964 e!2879854))

(declare-fun b!4616896 () Bool)

(declare-fun res!1934548 () Bool)

(assert (=> b!4616896 (=> res!1934548 e!2879849)))

(assert (=> b!4616896 (= res!1934548 (not (= lt!1772714 lt!1772713)))))

(declare-fun b!4616897 () Bool)

(declare-fun res!1934547 () Bool)

(assert (=> b!4616897 (=> res!1934547 e!2879849)))

(declare-fun containsKey!2334 (List!51511 K!12770) Bool)

(assert (=> b!4616897 (= res!1934547 (containsKey!2334 lt!1772708 key!4968))))

(declare-fun b!4616898 () Bool)

(declare-fun res!1934558 () Bool)

(assert (=> b!4616898 (=> (not res!1934558) (not e!2879847))))

(declare-fun hash!3407 (Hashable!5845 K!12770) (_ BitVec 64))

(assert (=> b!4616898 (= res!1934558 (= (hash!3407 hashF!1389 key!4968) hash!414))))

(declare-fun b!4616899 () Bool)

(declare-fun res!1934554 () Bool)

(assert (=> b!4616899 (=> (not res!1934554) (not e!2879856))))

(assert (=> b!4616899 (= res!1934554 (allKeysSameHash!1302 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4616900 () Bool)

(declare-fun lambda!189716 () Int)

(declare-fun forall!10752 (List!51512 Int) Bool)

(assert (=> b!4616900 (= e!2879848 (forall!10752 lt!1772703 lambda!189716))))

(assert (= (and start!461964 res!1934556) b!4616889))

(assert (= (and b!4616889 res!1934543) b!4616890))

(assert (= (and b!4616890 res!1934550) b!4616899))

(assert (= (and b!4616899 res!1934554) b!4616893))

(assert (= (and b!4616893 res!1934553) b!4616898))

(assert (= (and b!4616898 res!1934558) b!4616892))

(assert (= (and b!4616892 res!1934545) b!4616886))

(assert (= (and b!4616886 res!1934560) b!4616880))

(assert (= (and b!4616886 (not res!1934555)) b!4616882))

(assert (= (and b!4616882 (not res!1934562)) b!4616881))

(assert (= (and b!4616881 (not res!1934551)) b!4616885))

(assert (= (and b!4616885 (not res!1934544)) b!4616883))

(assert (= (and b!4616883 (not res!1934561)) b!4616897))

(assert (= (and b!4616897 (not res!1934547)) b!4616896))

(assert (= (and b!4616896 (not res!1934548)) b!4616887))

(assert (= (and b!4616887 (not res!1934557)) b!4616884))

(assert (= (and b!4616884 (not res!1934546)) b!4616888))

(assert (= (and b!4616888 (not res!1934552)) b!4616891))

(assert (= (and b!4616891 (not res!1934549)) b!4616895))

(assert (= (and b!4616895 (not res!1934559)) b!4616900))

(assert (= (and start!461964 ((_ is Cons!51387) oldBucket!40)) b!4616894))

(assert (= (and start!461964 ((_ is Cons!51387) newBucket!224)) b!4616879))

(declare-fun m!5451717 () Bool)

(assert (=> b!4616897 m!5451717))

(declare-fun m!5451719 () Bool)

(assert (=> b!4616892 m!5451719))

(declare-fun m!5451721 () Bool)

(assert (=> b!4616887 m!5451721))

(declare-fun m!5451723 () Bool)

(assert (=> b!4616887 m!5451723))

(declare-fun m!5451725 () Bool)

(assert (=> b!4616887 m!5451725))

(declare-fun m!5451727 () Bool)

(assert (=> b!4616893 m!5451727))

(declare-fun m!5451729 () Bool)

(assert (=> b!4616893 m!5451729))

(declare-fun m!5451731 () Bool)

(assert (=> b!4616886 m!5451731))

(declare-fun m!5451733 () Bool)

(assert (=> b!4616886 m!5451733))

(declare-fun m!5451735 () Bool)

(assert (=> b!4616891 m!5451735))

(declare-fun m!5451737 () Bool)

(assert (=> b!4616891 m!5451737))

(declare-fun m!5451739 () Bool)

(assert (=> b!4616891 m!5451739))

(declare-fun m!5451741 () Bool)

(assert (=> b!4616900 m!5451741))

(declare-fun m!5451743 () Bool)

(assert (=> start!461964 m!5451743))

(declare-fun m!5451745 () Bool)

(assert (=> b!4616883 m!5451745))

(declare-fun m!5451747 () Bool)

(assert (=> b!4616883 m!5451747))

(declare-fun m!5451749 () Bool)

(assert (=> b!4616883 m!5451749))

(declare-fun m!5451751 () Bool)

(assert (=> b!4616883 m!5451751))

(assert (=> b!4616883 m!5451751))

(declare-fun m!5451753 () Bool)

(assert (=> b!4616883 m!5451753))

(declare-fun m!5451755 () Bool)

(assert (=> b!4616883 m!5451755))

(assert (=> b!4616883 m!5451753))

(declare-fun m!5451757 () Bool)

(assert (=> b!4616883 m!5451757))

(declare-fun m!5451759 () Bool)

(assert (=> b!4616883 m!5451759))

(declare-fun m!5451761 () Bool)

(assert (=> b!4616881 m!5451761))

(declare-fun m!5451763 () Bool)

(assert (=> b!4616881 m!5451763))

(declare-fun m!5451765 () Bool)

(assert (=> b!4616895 m!5451765))

(declare-fun m!5451767 () Bool)

(assert (=> b!4616885 m!5451767))

(declare-fun m!5451769 () Bool)

(assert (=> b!4616885 m!5451769))

(declare-fun m!5451771 () Bool)

(assert (=> b!4616882 m!5451771))

(declare-fun m!5451773 () Bool)

(assert (=> b!4616899 m!5451773))

(declare-fun m!5451775 () Bool)

(assert (=> b!4616884 m!5451775))

(declare-fun m!5451777 () Bool)

(assert (=> b!4616884 m!5451777))

(assert (=> b!4616884 m!5451777))

(declare-fun m!5451779 () Bool)

(assert (=> b!4616884 m!5451779))

(declare-fun m!5451781 () Bool)

(assert (=> b!4616884 m!5451781))

(declare-fun m!5451783 () Bool)

(assert (=> b!4616888 m!5451783))

(declare-fun m!5451785 () Bool)

(assert (=> b!4616890 m!5451785))

(declare-fun m!5451787 () Bool)

(assert (=> b!4616889 m!5451787))

(declare-fun m!5451789 () Bool)

(assert (=> b!4616898 m!5451789))

(check-sat (not b!4616895) (not b!4616879) (not b!4616887) (not b!4616885) (not b!4616889) (not b!4616893) (not b!4616882) (not b!4616884) (not b!4616881) tp_is_empty!29087 (not b!4616886) (not start!461964) (not b!4616892) (not b!4616900) (not b!4616888) (not b!4616894) (not b!4616883) tp_is_empty!29085 (not b!4616891) (not b!4616899) (not b!4616890) (not b!4616897) (not b!4616898))
(check-sat)
(get-model)

(declare-fun d!1454304 () Bool)

(declare-fun res!1934570 () Bool)

(declare-fun e!2879864 () Bool)

(assert (=> d!1454304 (=> res!1934570 e!2879864)))

(assert (=> d!1454304 (= res!1934570 (and ((_ is Cons!51387) lt!1772708) (= (_1!29413 (h!57405 lt!1772708)) key!4968)))))

(assert (=> d!1454304 (= (containsKey!2334 lt!1772708 key!4968) e!2879864)))

(declare-fun b!4616912 () Bool)

(declare-fun e!2879865 () Bool)

(assert (=> b!4616912 (= e!2879864 e!2879865)))

(declare-fun res!1934571 () Bool)

(assert (=> b!4616912 (=> (not res!1934571) (not e!2879865))))

(assert (=> b!4616912 (= res!1934571 ((_ is Cons!51387) lt!1772708))))

(declare-fun b!4616913 () Bool)

(assert (=> b!4616913 (= e!2879865 (containsKey!2334 (t!358521 lt!1772708) key!4968))))

(assert (= (and d!1454304 (not res!1934570)) b!4616912))

(assert (= (and b!4616912 res!1934571) b!4616913))

(declare-fun m!5451831 () Bool)

(assert (=> b!4616913 m!5451831))

(assert (=> b!4616897 d!1454304))

(declare-fun b!4617043 () Bool)

(assert (=> b!4617043 true))

(declare-fun bs!1018893 () Bool)

(declare-fun b!4617040 () Bool)

(assert (= bs!1018893 (and b!4617040 b!4617043)))

(declare-fun lambda!189792 () Int)

(declare-fun lambda!189789 () Int)

(assert (=> bs!1018893 (= lambda!189792 lambda!189789)))

(assert (=> b!4617040 true))

(declare-fun lambda!189793 () Int)

(declare-fun lt!1772927 () ListMap!4165)

(assert (=> bs!1018893 (= (= lt!1772927 lt!1772702) (= lambda!189793 lambda!189789))))

(assert (=> b!4617040 (= (= lt!1772927 lt!1772702) (= lambda!189793 lambda!189792))))

(assert (=> b!4617040 true))

(declare-fun bs!1018897 () Bool)

(declare-fun d!1454306 () Bool)

(assert (= bs!1018897 (and d!1454306 b!4617043)))

(declare-fun lambda!189795 () Int)

(declare-fun lt!1772924 () ListMap!4165)

(assert (=> bs!1018897 (= (= lt!1772924 lt!1772702) (= lambda!189795 lambda!189789))))

(declare-fun bs!1018899 () Bool)

(assert (= bs!1018899 (and d!1454306 b!4617040)))

(assert (=> bs!1018899 (= (= lt!1772924 lt!1772702) (= lambda!189795 lambda!189792))))

(assert (=> bs!1018899 (= (= lt!1772924 lt!1772927) (= lambda!189795 lambda!189793))))

(assert (=> d!1454306 true))

(declare-fun b!4617039 () Bool)

(declare-fun e!2879949 () Bool)

(declare-fun invariantList!1173 (List!51511) Bool)

(assert (=> b!4617039 (= e!2879949 (invariantList!1173 (toList!4861 lt!1772924)))))

(assert (=> d!1454306 e!2879949))

(declare-fun res!1934633 () Bool)

(assert (=> d!1454306 (=> (not res!1934633) (not e!2879949))))

(declare-fun forall!10754 (List!51511 Int) Bool)

(assert (=> d!1454306 (= res!1934633 (forall!10754 oldBucket!40 lambda!189795))))

(declare-fun e!2879948 () ListMap!4165)

(assert (=> d!1454306 (= lt!1772924 e!2879948)))

(declare-fun c!790443 () Bool)

(assert (=> d!1454306 (= c!790443 ((_ is Nil!51387) oldBucket!40))))

(assert (=> d!1454306 (noDuplicateKeys!1448 oldBucket!40)))

(assert (=> d!1454306 (= (addToMapMapFromBucket!909 oldBucket!40 lt!1772702) lt!1772924)))

(assert (=> b!4617040 (= e!2879948 lt!1772927)))

(declare-fun lt!1772923 () ListMap!4165)

(assert (=> b!4617040 (= lt!1772923 (+!1833 lt!1772702 (h!57405 oldBucket!40)))))

(assert (=> b!4617040 (= lt!1772927 (addToMapMapFromBucket!909 (t!358521 oldBucket!40) (+!1833 lt!1772702 (h!57405 oldBucket!40))))))

(declare-fun lt!1772928 () Unit!110516)

(declare-fun call!321963 () Unit!110516)

(assert (=> b!4617040 (= lt!1772928 call!321963)))

(assert (=> b!4617040 (forall!10754 (toList!4861 lt!1772702) lambda!189792)))

(declare-fun lt!1772919 () Unit!110516)

(assert (=> b!4617040 (= lt!1772919 lt!1772928)))

(assert (=> b!4617040 (forall!10754 (toList!4861 lt!1772923) lambda!189793)))

(declare-fun lt!1772921 () Unit!110516)

(declare-fun Unit!110540 () Unit!110516)

(assert (=> b!4617040 (= lt!1772921 Unit!110540)))

(assert (=> b!4617040 (forall!10754 (t!358521 oldBucket!40) lambda!189793)))

(declare-fun lt!1772935 () Unit!110516)

(declare-fun Unit!110541 () Unit!110516)

(assert (=> b!4617040 (= lt!1772935 Unit!110541)))

(declare-fun lt!1772926 () Unit!110516)

(declare-fun Unit!110542 () Unit!110516)

(assert (=> b!4617040 (= lt!1772926 Unit!110542)))

(declare-fun lt!1772936 () Unit!110516)

(declare-fun forallContained!2967 (List!51511 Int tuple2!52238) Unit!110516)

(assert (=> b!4617040 (= lt!1772936 (forallContained!2967 (toList!4861 lt!1772923) lambda!189793 (h!57405 oldBucket!40)))))

(assert (=> b!4617040 (contains!14350 lt!1772923 (_1!29413 (h!57405 oldBucket!40)))))

(declare-fun lt!1772917 () Unit!110516)

(declare-fun Unit!110543 () Unit!110516)

(assert (=> b!4617040 (= lt!1772917 Unit!110543)))

(assert (=> b!4617040 (contains!14350 lt!1772927 (_1!29413 (h!57405 oldBucket!40)))))

(declare-fun lt!1772922 () Unit!110516)

(declare-fun Unit!110545 () Unit!110516)

(assert (=> b!4617040 (= lt!1772922 Unit!110545)))

(assert (=> b!4617040 (forall!10754 oldBucket!40 lambda!189793)))

(declare-fun lt!1772930 () Unit!110516)

(declare-fun Unit!110546 () Unit!110516)

(assert (=> b!4617040 (= lt!1772930 Unit!110546)))

(declare-fun call!321964 () Bool)

(assert (=> b!4617040 call!321964))

(declare-fun lt!1772920 () Unit!110516)

(declare-fun Unit!110547 () Unit!110516)

(assert (=> b!4617040 (= lt!1772920 Unit!110547)))

(declare-fun lt!1772925 () Unit!110516)

(declare-fun Unit!110548 () Unit!110516)

(assert (=> b!4617040 (= lt!1772925 Unit!110548)))

(declare-fun lt!1772932 () Unit!110516)

(declare-fun addForallContainsKeyThenBeforeAdding!474 (ListMap!4165 ListMap!4165 K!12770 V!13016) Unit!110516)

(assert (=> b!4617040 (= lt!1772932 (addForallContainsKeyThenBeforeAdding!474 lt!1772702 lt!1772927 (_1!29413 (h!57405 oldBucket!40)) (_2!29413 (h!57405 oldBucket!40))))))

(assert (=> b!4617040 (forall!10754 (toList!4861 lt!1772702) lambda!189793)))

(declare-fun lt!1772931 () Unit!110516)

(assert (=> b!4617040 (= lt!1772931 lt!1772932)))

(declare-fun call!321965 () Bool)

(assert (=> b!4617040 call!321965))

(declare-fun lt!1772933 () Unit!110516)

(declare-fun Unit!110549 () Unit!110516)

(assert (=> b!4617040 (= lt!1772933 Unit!110549)))

(declare-fun res!1934631 () Bool)

(assert (=> b!4617040 (= res!1934631 (forall!10754 oldBucket!40 lambda!189793))))

(declare-fun e!2879947 () Bool)

(assert (=> b!4617040 (=> (not res!1934631) (not e!2879947))))

(assert (=> b!4617040 e!2879947))

(declare-fun lt!1772934 () Unit!110516)

(declare-fun Unit!110551 () Unit!110516)

(assert (=> b!4617040 (= lt!1772934 Unit!110551)))

(declare-fun bm!321958 () Bool)

(assert (=> bm!321958 (= call!321964 (forall!10754 (ite c!790443 (toList!4861 lt!1772702) (toList!4861 lt!1772923)) (ite c!790443 lambda!189789 lambda!189793)))))

(declare-fun b!4617041 () Bool)

(assert (=> b!4617041 (= e!2879947 (forall!10754 (toList!4861 lt!1772702) lambda!189793))))

(declare-fun b!4617042 () Bool)

(declare-fun res!1934632 () Bool)

(assert (=> b!4617042 (=> (not res!1934632) (not e!2879949))))

(assert (=> b!4617042 (= res!1934632 (forall!10754 (toList!4861 lt!1772702) lambda!189795))))

(declare-fun bm!321959 () Bool)

(assert (=> bm!321959 (= call!321965 (forall!10754 (toList!4861 lt!1772702) (ite c!790443 lambda!189789 lambda!189793)))))

(declare-fun bm!321960 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!475 (ListMap!4165) Unit!110516)

(assert (=> bm!321960 (= call!321963 (lemmaContainsAllItsOwnKeys!475 lt!1772702))))

(assert (=> b!4617043 (= e!2879948 lt!1772702)))

(declare-fun lt!1772929 () Unit!110516)

(assert (=> b!4617043 (= lt!1772929 call!321963)))

(assert (=> b!4617043 call!321965))

(declare-fun lt!1772937 () Unit!110516)

(assert (=> b!4617043 (= lt!1772937 lt!1772929)))

(assert (=> b!4617043 call!321964))

(declare-fun lt!1772918 () Unit!110516)

(declare-fun Unit!110552 () Unit!110516)

(assert (=> b!4617043 (= lt!1772918 Unit!110552)))

(assert (= (and d!1454306 c!790443) b!4617043))

(assert (= (and d!1454306 (not c!790443)) b!4617040))

(assert (= (and b!4617040 res!1934631) b!4617041))

(assert (= (or b!4617043 b!4617040) bm!321960))

(assert (= (or b!4617043 b!4617040) bm!321959))

(assert (= (or b!4617043 b!4617040) bm!321958))

(assert (= (and d!1454306 res!1934633) b!4617042))

(assert (= (and b!4617042 res!1934632) b!4617039))

(declare-fun m!5452029 () Bool)

(assert (=> b!4617041 m!5452029))

(declare-fun m!5452031 () Bool)

(assert (=> bm!321960 m!5452031))

(declare-fun m!5452033 () Bool)

(assert (=> d!1454306 m!5452033))

(assert (=> d!1454306 m!5451743))

(declare-fun m!5452035 () Bool)

(assert (=> bm!321959 m!5452035))

(declare-fun m!5452037 () Bool)

(assert (=> b!4617040 m!5452037))

(declare-fun m!5452039 () Bool)

(assert (=> b!4617040 m!5452039))

(declare-fun m!5452041 () Bool)

(assert (=> b!4617040 m!5452041))

(declare-fun m!5452043 () Bool)

(assert (=> b!4617040 m!5452043))

(declare-fun m!5452045 () Bool)

(assert (=> b!4617040 m!5452045))

(declare-fun m!5452047 () Bool)

(assert (=> b!4617040 m!5452047))

(declare-fun m!5452049 () Bool)

(assert (=> b!4617040 m!5452049))

(assert (=> b!4617040 m!5452049))

(declare-fun m!5452051 () Bool)

(assert (=> b!4617040 m!5452051))

(declare-fun m!5452053 () Bool)

(assert (=> b!4617040 m!5452053))

(assert (=> b!4617040 m!5452039))

(declare-fun m!5452055 () Bool)

(assert (=> b!4617040 m!5452055))

(assert (=> b!4617040 m!5452029))

(declare-fun m!5452057 () Bool)

(assert (=> b!4617039 m!5452057))

(declare-fun m!5452059 () Bool)

(assert (=> bm!321958 m!5452059))

(declare-fun m!5452061 () Bool)

(assert (=> b!4617042 m!5452061))

(assert (=> b!4616886 d!1454306))

(declare-fun bs!1018930 () Bool)

(declare-fun d!1454340 () Bool)

(assert (= bs!1018930 (and d!1454340 b!4616900)))

(declare-fun lambda!189803 () Int)

(assert (=> bs!1018930 (= lambda!189803 lambda!189716)))

(declare-fun lt!1772971 () ListMap!4165)

(assert (=> d!1454340 (invariantList!1173 (toList!4861 lt!1772971))))

(declare-fun e!2879959 () ListMap!4165)

(assert (=> d!1454340 (= lt!1772971 e!2879959)))

(declare-fun c!790448 () Bool)

(assert (=> d!1454340 (= c!790448 ((_ is Cons!51388) Nil!51388))))

(assert (=> d!1454340 (forall!10752 Nil!51388 lambda!189803)))

(assert (=> d!1454340 (= (extractMap!1504 Nil!51388) lt!1772971)))

(declare-fun b!4617061 () Bool)

(assert (=> b!4617061 (= e!2879959 (addToMapMapFromBucket!909 (_2!29414 (h!57406 Nil!51388)) (extractMap!1504 (t!358522 Nil!51388))))))

(declare-fun b!4617062 () Bool)

(assert (=> b!4617062 (= e!2879959 (ListMap!4166 Nil!51387))))

(assert (= (and d!1454340 c!790448) b!4617061))

(assert (= (and d!1454340 (not c!790448)) b!4617062))

(declare-fun m!5452141 () Bool)

(assert (=> d!1454340 m!5452141))

(declare-fun m!5452143 () Bool)

(assert (=> d!1454340 m!5452143))

(declare-fun m!5452145 () Bool)

(assert (=> b!4617061 m!5452145))

(assert (=> b!4617061 m!5452145))

(declare-fun m!5452147 () Bool)

(assert (=> b!4617061 m!5452147))

(assert (=> b!4616886 d!1454340))

(declare-fun b!4617091 () Bool)

(declare-fun e!2879978 () Bool)

(declare-datatypes ((List!51514 0))(
  ( (Nil!51390) (Cons!51390 (h!57410 K!12770) (t!358526 List!51514)) )
))
(declare-fun contains!14353 (List!51514 K!12770) Bool)

(declare-fun keys!18065 (ListMap!4165) List!51514)

(assert (=> b!4617091 (= e!2879978 (contains!14353 (keys!18065 lt!1772714) key!4968))))

(declare-fun b!4617092 () Bool)

(declare-fun e!2879979 () Bool)

(assert (=> b!4617092 (= e!2879979 (not (contains!14353 (keys!18065 lt!1772714) key!4968)))))

(declare-fun b!4617093 () Bool)

(declare-fun e!2879981 () List!51514)

(assert (=> b!4617093 (= e!2879981 (keys!18065 lt!1772714))))

(declare-fun b!4617094 () Bool)

(assert (=> b!4617094 false))

(declare-fun lt!1773038 () Unit!110516)

(declare-fun lt!1773036 () Unit!110516)

(assert (=> b!4617094 (= lt!1773038 lt!1773036)))

(declare-fun containsKey!2336 (List!51511 K!12770) Bool)

(assert (=> b!4617094 (containsKey!2336 (toList!4861 lt!1772714) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!623 (List!51511 K!12770) Unit!110516)

(assert (=> b!4617094 (= lt!1773036 (lemmaInGetKeysListThenContainsKey!623 (toList!4861 lt!1772714) key!4968))))

(declare-fun e!2879982 () Unit!110516)

(declare-fun Unit!110553 () Unit!110516)

(assert (=> b!4617094 (= e!2879982 Unit!110553)))

(declare-fun b!4617095 () Bool)

(declare-fun e!2879980 () Unit!110516)

(assert (=> b!4617095 (= e!2879980 e!2879982)))

(declare-fun c!790459 () Bool)

(declare-fun call!321977 () Bool)

(assert (=> b!4617095 (= c!790459 call!321977)))

(declare-fun b!4617096 () Bool)

(declare-fun e!2879983 () Bool)

(assert (=> b!4617096 (= e!2879983 e!2879978)))

(declare-fun res!1934655 () Bool)

(assert (=> b!4617096 (=> (not res!1934655) (not e!2879978))))

(declare-datatypes ((Option!11476 0))(
  ( (None!11475) (Some!11475 (v!45541 V!13016)) )
))
(declare-fun isDefined!8741 (Option!11476) Bool)

(declare-fun getValueByKey!1390 (List!51511 K!12770) Option!11476)

(assert (=> b!4617096 (= res!1934655 (isDefined!8741 (getValueByKey!1390 (toList!4861 lt!1772714) key!4968)))))

(declare-fun b!4617097 () Bool)

(declare-fun getKeysList!624 (List!51511) List!51514)

(assert (=> b!4617097 (= e!2879981 (getKeysList!624 (toList!4861 lt!1772714)))))

(declare-fun d!1454352 () Bool)

(assert (=> d!1454352 e!2879983))

(declare-fun res!1934654 () Bool)

(assert (=> d!1454352 (=> res!1934654 e!2879983)))

(assert (=> d!1454352 (= res!1934654 e!2879979)))

(declare-fun res!1934653 () Bool)

(assert (=> d!1454352 (=> (not res!1934653) (not e!2879979))))

(declare-fun lt!1773039 () Bool)

(assert (=> d!1454352 (= res!1934653 (not lt!1773039))))

(declare-fun lt!1773037 () Bool)

(assert (=> d!1454352 (= lt!1773039 lt!1773037)))

(declare-fun lt!1773035 () Unit!110516)

(assert (=> d!1454352 (= lt!1773035 e!2879980)))

(declare-fun c!790457 () Bool)

(assert (=> d!1454352 (= c!790457 lt!1773037)))

(assert (=> d!1454352 (= lt!1773037 (containsKey!2336 (toList!4861 lt!1772714) key!4968))))

(assert (=> d!1454352 (= (contains!14350 lt!1772714 key!4968) lt!1773039)))

(declare-fun b!4617098 () Bool)

(declare-fun Unit!110556 () Unit!110516)

(assert (=> b!4617098 (= e!2879982 Unit!110556)))

(declare-fun b!4617099 () Bool)

(declare-fun lt!1773040 () Unit!110516)

(assert (=> b!4617099 (= e!2879980 lt!1773040)))

(declare-fun lt!1773034 () Unit!110516)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1292 (List!51511 K!12770) Unit!110516)

(assert (=> b!4617099 (= lt!1773034 (lemmaContainsKeyImpliesGetValueByKeyDefined!1292 (toList!4861 lt!1772714) key!4968))))

(assert (=> b!4617099 (isDefined!8741 (getValueByKey!1390 (toList!4861 lt!1772714) key!4968))))

(declare-fun lt!1773033 () Unit!110516)

(assert (=> b!4617099 (= lt!1773033 lt!1773034)))

(declare-fun lemmaInListThenGetKeysListContains!619 (List!51511 K!12770) Unit!110516)

(assert (=> b!4617099 (= lt!1773040 (lemmaInListThenGetKeysListContains!619 (toList!4861 lt!1772714) key!4968))))

(assert (=> b!4617099 call!321977))

(declare-fun bm!321972 () Bool)

(assert (=> bm!321972 (= call!321977 (contains!14353 e!2879981 key!4968))))

(declare-fun c!790458 () Bool)

(assert (=> bm!321972 (= c!790458 c!790457)))

(assert (= (and d!1454352 c!790457) b!4617099))

(assert (= (and d!1454352 (not c!790457)) b!4617095))

(assert (= (and b!4617095 c!790459) b!4617094))

(assert (= (and b!4617095 (not c!790459)) b!4617098))

(assert (= (or b!4617099 b!4617095) bm!321972))

(assert (= (and bm!321972 c!790458) b!4617097))

(assert (= (and bm!321972 (not c!790458)) b!4617093))

(assert (= (and d!1454352 res!1934653) b!4617092))

(assert (= (and d!1454352 (not res!1934654)) b!4617096))

(assert (= (and b!4617096 res!1934655) b!4617091))

(declare-fun m!5452183 () Bool)

(assert (=> b!4617091 m!5452183))

(assert (=> b!4617091 m!5452183))

(declare-fun m!5452185 () Bool)

(assert (=> b!4617091 m!5452185))

(declare-fun m!5452187 () Bool)

(assert (=> d!1454352 m!5452187))

(assert (=> b!4617094 m!5452187))

(declare-fun m!5452189 () Bool)

(assert (=> b!4617094 m!5452189))

(declare-fun m!5452191 () Bool)

(assert (=> bm!321972 m!5452191))

(declare-fun m!5452193 () Bool)

(assert (=> b!4617096 m!5452193))

(assert (=> b!4617096 m!5452193))

(declare-fun m!5452195 () Bool)

(assert (=> b!4617096 m!5452195))

(assert (=> b!4617093 m!5452183))

(declare-fun m!5452197 () Bool)

(assert (=> b!4617099 m!5452197))

(assert (=> b!4617099 m!5452193))

(assert (=> b!4617099 m!5452193))

(assert (=> b!4617099 m!5452195))

(declare-fun m!5452199 () Bool)

(assert (=> b!4617099 m!5452199))

(assert (=> b!4617092 m!5452183))

(assert (=> b!4617092 m!5452183))

(assert (=> b!4617092 m!5452185))

(declare-fun m!5452201 () Bool)

(assert (=> b!4617097 m!5452201))

(assert (=> b!4616887 d!1454352))

(declare-fun b!4617100 () Bool)

(declare-fun e!2879984 () Bool)

(assert (=> b!4617100 (= e!2879984 (contains!14353 (keys!18065 lt!1772713) key!4968))))

(declare-fun b!4617101 () Bool)

(declare-fun e!2879985 () Bool)

(assert (=> b!4617101 (= e!2879985 (not (contains!14353 (keys!18065 lt!1772713) key!4968)))))

(declare-fun b!4617102 () Bool)

(declare-fun e!2879987 () List!51514)

(assert (=> b!4617102 (= e!2879987 (keys!18065 lt!1772713))))

(declare-fun b!4617103 () Bool)

(assert (=> b!4617103 false))

(declare-fun lt!1773046 () Unit!110516)

(declare-fun lt!1773044 () Unit!110516)

(assert (=> b!4617103 (= lt!1773046 lt!1773044)))

(assert (=> b!4617103 (containsKey!2336 (toList!4861 lt!1772713) key!4968)))

(assert (=> b!4617103 (= lt!1773044 (lemmaInGetKeysListThenContainsKey!623 (toList!4861 lt!1772713) key!4968))))

(declare-fun e!2879988 () Unit!110516)

(declare-fun Unit!110558 () Unit!110516)

(assert (=> b!4617103 (= e!2879988 Unit!110558)))

(declare-fun b!4617104 () Bool)

(declare-fun e!2879986 () Unit!110516)

(assert (=> b!4617104 (= e!2879986 e!2879988)))

(declare-fun c!790462 () Bool)

(declare-fun call!321978 () Bool)

(assert (=> b!4617104 (= c!790462 call!321978)))

(declare-fun b!4617105 () Bool)

(declare-fun e!2879989 () Bool)

(assert (=> b!4617105 (= e!2879989 e!2879984)))

(declare-fun res!1934658 () Bool)

(assert (=> b!4617105 (=> (not res!1934658) (not e!2879984))))

(assert (=> b!4617105 (= res!1934658 (isDefined!8741 (getValueByKey!1390 (toList!4861 lt!1772713) key!4968)))))

(declare-fun b!4617106 () Bool)

(assert (=> b!4617106 (= e!2879987 (getKeysList!624 (toList!4861 lt!1772713)))))

(declare-fun d!1454358 () Bool)

(assert (=> d!1454358 e!2879989))

(declare-fun res!1934657 () Bool)

(assert (=> d!1454358 (=> res!1934657 e!2879989)))

(assert (=> d!1454358 (= res!1934657 e!2879985)))

(declare-fun res!1934656 () Bool)

(assert (=> d!1454358 (=> (not res!1934656) (not e!2879985))))

(declare-fun lt!1773047 () Bool)

(assert (=> d!1454358 (= res!1934656 (not lt!1773047))))

(declare-fun lt!1773045 () Bool)

(assert (=> d!1454358 (= lt!1773047 lt!1773045)))

(declare-fun lt!1773043 () Unit!110516)

(assert (=> d!1454358 (= lt!1773043 e!2879986)))

(declare-fun c!790460 () Bool)

(assert (=> d!1454358 (= c!790460 lt!1773045)))

(assert (=> d!1454358 (= lt!1773045 (containsKey!2336 (toList!4861 lt!1772713) key!4968))))

(assert (=> d!1454358 (= (contains!14350 lt!1772713 key!4968) lt!1773047)))

(declare-fun b!4617107 () Bool)

(declare-fun Unit!110560 () Unit!110516)

(assert (=> b!4617107 (= e!2879988 Unit!110560)))

(declare-fun b!4617108 () Bool)

(declare-fun lt!1773048 () Unit!110516)

(assert (=> b!4617108 (= e!2879986 lt!1773048)))

(declare-fun lt!1773042 () Unit!110516)

(assert (=> b!4617108 (= lt!1773042 (lemmaContainsKeyImpliesGetValueByKeyDefined!1292 (toList!4861 lt!1772713) key!4968))))

(assert (=> b!4617108 (isDefined!8741 (getValueByKey!1390 (toList!4861 lt!1772713) key!4968))))

(declare-fun lt!1773041 () Unit!110516)

(assert (=> b!4617108 (= lt!1773041 lt!1773042)))

(assert (=> b!4617108 (= lt!1773048 (lemmaInListThenGetKeysListContains!619 (toList!4861 lt!1772713) key!4968))))

(assert (=> b!4617108 call!321978))

(declare-fun bm!321973 () Bool)

(assert (=> bm!321973 (= call!321978 (contains!14353 e!2879987 key!4968))))

(declare-fun c!790461 () Bool)

(assert (=> bm!321973 (= c!790461 c!790460)))

(assert (= (and d!1454358 c!790460) b!4617108))

(assert (= (and d!1454358 (not c!790460)) b!4617104))

(assert (= (and b!4617104 c!790462) b!4617103))

(assert (= (and b!4617104 (not c!790462)) b!4617107))

(assert (= (or b!4617108 b!4617104) bm!321973))

(assert (= (and bm!321973 c!790461) b!4617106))

(assert (= (and bm!321973 (not c!790461)) b!4617102))

(assert (= (and d!1454358 res!1934656) b!4617101))

(assert (= (and d!1454358 (not res!1934657)) b!4617105))

(assert (= (and b!4617105 res!1934658) b!4617100))

(declare-fun m!5452203 () Bool)

(assert (=> b!4617100 m!5452203))

(assert (=> b!4617100 m!5452203))

(declare-fun m!5452205 () Bool)

(assert (=> b!4617100 m!5452205))

(declare-fun m!5452207 () Bool)

(assert (=> d!1454358 m!5452207))

(assert (=> b!4617103 m!5452207))

(declare-fun m!5452209 () Bool)

(assert (=> b!4617103 m!5452209))

(declare-fun m!5452211 () Bool)

(assert (=> bm!321973 m!5452211))

(declare-fun m!5452213 () Bool)

(assert (=> b!4617105 m!5452213))

(assert (=> b!4617105 m!5452213))

(declare-fun m!5452215 () Bool)

(assert (=> b!4617105 m!5452215))

(assert (=> b!4617102 m!5452203))

(declare-fun m!5452217 () Bool)

(assert (=> b!4617108 m!5452217))

(assert (=> b!4617108 m!5452213))

(assert (=> b!4617108 m!5452213))

(assert (=> b!4617108 m!5452215))

(declare-fun m!5452219 () Bool)

(assert (=> b!4617108 m!5452219))

(assert (=> b!4617101 m!5452203))

(assert (=> b!4617101 m!5452203))

(assert (=> b!4617101 m!5452205))

(declare-fun m!5452221 () Bool)

(assert (=> b!4617106 m!5452221))

(assert (=> b!4616887 d!1454358))

(declare-fun bs!1019028 () Bool)

(declare-fun d!1454360 () Bool)

(assert (= bs!1019028 (and d!1454360 b!4616900)))

(declare-fun lambda!189815 () Int)

(assert (=> bs!1019028 (= lambda!189815 lambda!189716)))

(declare-fun bs!1019029 () Bool)

(assert (= bs!1019029 (and d!1454360 d!1454340)))

(assert (=> bs!1019029 (= lambda!189815 lambda!189803)))

(assert (=> d!1454360 (not (contains!14350 (extractMap!1504 (toList!4862 (ListLongMap!3452 lt!1772709))) key!4968))))

(declare-fun lt!1773051 () Unit!110516)

(declare-fun choose!31103 (ListLongMap!3451 K!12770 Hashable!5845) Unit!110516)

(assert (=> d!1454360 (= lt!1773051 (choose!31103 (ListLongMap!3452 lt!1772709) key!4968 hashF!1389))))

(assert (=> d!1454360 (forall!10752 (toList!4862 (ListLongMap!3452 lt!1772709)) lambda!189815)))

(assert (=> d!1454360 (= (lemmaNotInItsHashBucketThenNotInMap!362 (ListLongMap!3452 lt!1772709) key!4968 hashF!1389) lt!1773051)))

(declare-fun bs!1019030 () Bool)

(assert (= bs!1019030 d!1454360))

(declare-fun m!5452269 () Bool)

(assert (=> bs!1019030 m!5452269))

(assert (=> bs!1019030 m!5452269))

(declare-fun m!5452271 () Bool)

(assert (=> bs!1019030 m!5452271))

(declare-fun m!5452273 () Bool)

(assert (=> bs!1019030 m!5452273))

(declare-fun m!5452275 () Bool)

(assert (=> bs!1019030 m!5452275))

(assert (=> b!4616887 d!1454360))

(declare-fun d!1454374 () Bool)

(declare-fun hash!3408 (Hashable!5845 K!12770) (_ BitVec 64))

(assert (=> d!1454374 (= (hash!3407 hashF!1389 key!4968) (hash!3408 hashF!1389 key!4968))))

(declare-fun bs!1019031 () Bool)

(assert (= bs!1019031 d!1454374))

(declare-fun m!5452277 () Bool)

(assert (=> bs!1019031 m!5452277))

(assert (=> b!4616898 d!1454374))

(declare-fun bs!1019032 () Bool)

(declare-fun d!1454376 () Bool)

(assert (= bs!1019032 (and d!1454376 b!4617043)))

(declare-fun lambda!189818 () Int)

(assert (=> bs!1019032 (not (= lambda!189818 lambda!189789))))

(declare-fun bs!1019033 () Bool)

(assert (= bs!1019033 (and d!1454376 b!4617040)))

(assert (=> bs!1019033 (not (= lambda!189818 lambda!189792))))

(assert (=> bs!1019033 (not (= lambda!189818 lambda!189793))))

(declare-fun bs!1019034 () Bool)

(assert (= bs!1019034 (and d!1454376 d!1454306)))

(assert (=> bs!1019034 (not (= lambda!189818 lambda!189795))))

(assert (=> d!1454376 true))

(assert (=> d!1454376 true))

(assert (=> d!1454376 (= (allKeysSameHash!1302 oldBucket!40 hash!414 hashF!1389) (forall!10754 oldBucket!40 lambda!189818))))

(declare-fun bs!1019035 () Bool)

(assert (= bs!1019035 d!1454376))

(declare-fun m!5452279 () Bool)

(assert (=> bs!1019035 m!5452279))

(assert (=> b!4616899 d!1454376))

(declare-fun d!1454378 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8740 (List!51511) (InoxSet tuple2!52238))

(assert (=> d!1454378 (= (eq!791 lt!1772705 lt!1772716) (= (content!8740 (toList!4861 lt!1772705)) (content!8740 (toList!4861 lt!1772716))))))

(declare-fun bs!1019036 () Bool)

(assert (= bs!1019036 d!1454378))

(declare-fun m!5452281 () Bool)

(assert (=> bs!1019036 m!5452281))

(declare-fun m!5452283 () Bool)

(assert (=> bs!1019036 m!5452283))

(assert (=> b!4616888 d!1454378))

(declare-fun d!1454380 () Bool)

(declare-fun res!1934665 () Bool)

(declare-fun e!2880000 () Bool)

(assert (=> d!1454380 (=> res!1934665 e!2880000)))

(assert (=> d!1454380 (= res!1934665 (not ((_ is Cons!51387) newBucket!224)))))

(assert (=> d!1454380 (= (noDuplicateKeys!1448 newBucket!224) e!2880000)))

(declare-fun b!4617125 () Bool)

(declare-fun e!2880001 () Bool)

(assert (=> b!4617125 (= e!2880000 e!2880001)))

(declare-fun res!1934666 () Bool)

(assert (=> b!4617125 (=> (not res!1934666) (not e!2880001))))

(assert (=> b!4617125 (= res!1934666 (not (containsKey!2334 (t!358521 newBucket!224) (_1!29413 (h!57405 newBucket!224)))))))

(declare-fun b!4617126 () Bool)

(assert (=> b!4617126 (= e!2880001 (noDuplicateKeys!1448 (t!358521 newBucket!224)))))

(assert (= (and d!1454380 (not res!1934665)) b!4617125))

(assert (= (and b!4617125 res!1934666) b!4617126))

(declare-fun m!5452285 () Bool)

(assert (=> b!4617125 m!5452285))

(declare-fun m!5452287 () Bool)

(assert (=> b!4617126 m!5452287))

(assert (=> b!4616889 d!1454380))

(declare-fun d!1454382 () Bool)

(declare-fun res!1934671 () Bool)

(declare-fun e!2880006 () Bool)

(assert (=> d!1454382 (=> res!1934671 e!2880006)))

(assert (=> d!1454382 (= res!1934671 ((_ is Nil!51388) lt!1772703))))

(assert (=> d!1454382 (= (forall!10752 lt!1772703 lambda!189716) e!2880006)))

(declare-fun b!4617131 () Bool)

(declare-fun e!2880007 () Bool)

(assert (=> b!4617131 (= e!2880006 e!2880007)))

(declare-fun res!1934672 () Bool)

(assert (=> b!4617131 (=> (not res!1934672) (not e!2880007))))

(declare-fun dynLambda!21467 (Int tuple2!52240) Bool)

(assert (=> b!4617131 (= res!1934672 (dynLambda!21467 lambda!189716 (h!57406 lt!1772703)))))

(declare-fun b!4617132 () Bool)

(assert (=> b!4617132 (= e!2880007 (forall!10752 (t!358522 lt!1772703) lambda!189716))))

(assert (= (and d!1454382 (not res!1934671)) b!4617131))

(assert (= (and b!4617131 res!1934672) b!4617132))

(declare-fun b_lambda!170553 () Bool)

(assert (=> (not b_lambda!170553) (not b!4617131)))

(declare-fun m!5452289 () Bool)

(assert (=> b!4617131 m!5452289))

(declare-fun m!5452291 () Bool)

(assert (=> b!4617132 m!5452291))

(assert (=> b!4616900 d!1454382))

(declare-fun b!4617142 () Bool)

(declare-fun e!2880013 () List!51511)

(declare-fun e!2880012 () List!51511)

(assert (=> b!4617142 (= e!2880013 e!2880012)))

(declare-fun c!790467 () Bool)

(assert (=> b!4617142 (= c!790467 ((_ is Cons!51387) oldBucket!40))))

(declare-fun b!4617143 () Bool)

(assert (=> b!4617143 (= e!2880012 (Cons!51387 (h!57405 oldBucket!40) (removePairForKey!1071 (t!358521 oldBucket!40) key!4968)))))

(declare-fun d!1454384 () Bool)

(declare-fun lt!1773054 () List!51511)

(assert (=> d!1454384 (not (containsKey!2334 lt!1773054 key!4968))))

(assert (=> d!1454384 (= lt!1773054 e!2880013)))

(declare-fun c!790468 () Bool)

(assert (=> d!1454384 (= c!790468 (and ((_ is Cons!51387) oldBucket!40) (= (_1!29413 (h!57405 oldBucket!40)) key!4968)))))

(assert (=> d!1454384 (noDuplicateKeys!1448 oldBucket!40)))

(assert (=> d!1454384 (= (removePairForKey!1071 oldBucket!40 key!4968) lt!1773054)))

(declare-fun b!4617141 () Bool)

(assert (=> b!4617141 (= e!2880013 (t!358521 oldBucket!40))))

(declare-fun b!4617144 () Bool)

(assert (=> b!4617144 (= e!2880012 Nil!51387)))

(assert (= (and d!1454384 c!790468) b!4617141))

(assert (= (and d!1454384 (not c!790468)) b!4617142))

(assert (= (and b!4617142 c!790467) b!4617143))

(assert (= (and b!4617142 (not c!790467)) b!4617144))

(declare-fun m!5452293 () Bool)

(assert (=> b!4617143 m!5452293))

(declare-fun m!5452295 () Bool)

(assert (=> d!1454384 m!5452295))

(assert (=> d!1454384 m!5451743))

(assert (=> b!4616890 d!1454384))

(declare-fun d!1454386 () Bool)

(assert (=> d!1454386 (= (eq!791 lt!1772715 lt!1772717) (= (content!8740 (toList!4861 lt!1772715)) (content!8740 (toList!4861 lt!1772717))))))

(declare-fun bs!1019037 () Bool)

(assert (= bs!1019037 d!1454386))

(declare-fun m!5452297 () Bool)

(assert (=> bs!1019037 m!5452297))

(declare-fun m!5452299 () Bool)

(assert (=> bs!1019037 m!5452299))

(assert (=> b!4616891 d!1454386))

(declare-fun d!1454388 () Bool)

(declare-fun e!2880016 () Bool)

(assert (=> d!1454388 e!2880016))

(declare-fun res!1934675 () Bool)

(assert (=> d!1454388 (=> (not res!1934675) (not e!2880016))))

(declare-fun lt!1773057 () ListMap!4165)

(assert (=> d!1454388 (= res!1934675 (not (contains!14350 lt!1773057 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!248 (List!51511 K!12770) List!51511)

(assert (=> d!1454388 (= lt!1773057 (ListMap!4166 (removePresrvNoDuplicatedKeys!248 (toList!4861 lt!1772716) key!4968)))))

(assert (=> d!1454388 (= (-!538 lt!1772716 key!4968) lt!1773057)))

(declare-fun b!4617147 () Bool)

(declare-fun content!8741 (List!51514) (InoxSet K!12770))

(assert (=> b!4617147 (= e!2880016 (= ((_ map and) (content!8741 (keys!18065 lt!1772716)) ((_ map not) (store ((as const (Array K!12770 Bool)) false) key!4968 true))) (content!8741 (keys!18065 lt!1773057))))))

(assert (= (and d!1454388 res!1934675) b!4617147))

(declare-fun m!5452301 () Bool)

(assert (=> d!1454388 m!5452301))

(declare-fun m!5452303 () Bool)

(assert (=> d!1454388 m!5452303))

(declare-fun m!5452305 () Bool)

(assert (=> b!4617147 m!5452305))

(declare-fun m!5452307 () Bool)

(assert (=> b!4617147 m!5452307))

(declare-fun m!5452309 () Bool)

(assert (=> b!4617147 m!5452309))

(assert (=> b!4617147 m!5452307))

(declare-fun m!5452311 () Bool)

(assert (=> b!4617147 m!5452311))

(assert (=> b!4617147 m!5452311))

(declare-fun m!5452313 () Bool)

(assert (=> b!4617147 m!5452313))

(assert (=> b!4616891 d!1454388))

(declare-fun d!1454390 () Bool)

(assert (=> d!1454390 (eq!791 (-!538 lt!1772705 key!4968) (-!538 lt!1772716 key!4968))))

(declare-fun lt!1773060 () Unit!110516)

(declare-fun choose!31105 (ListMap!4165 ListMap!4165 K!12770) Unit!110516)

(assert (=> d!1454390 (= lt!1773060 (choose!31105 lt!1772705 lt!1772716 key!4968))))

(assert (=> d!1454390 (eq!791 lt!1772705 lt!1772716)))

(assert (=> d!1454390 (= (lemmaRemovePreservesEq!10 lt!1772705 lt!1772716 key!4968) lt!1773060)))

(declare-fun bs!1019038 () Bool)

(assert (= bs!1019038 d!1454390))

(declare-fun m!5452315 () Bool)

(assert (=> bs!1019038 m!5452315))

(assert (=> bs!1019038 m!5451775))

(assert (=> bs!1019038 m!5451737))

(declare-fun m!5452317 () Bool)

(assert (=> bs!1019038 m!5452317))

(assert (=> bs!1019038 m!5451737))

(assert (=> bs!1019038 m!5451783))

(assert (=> bs!1019038 m!5451775))

(assert (=> b!4616891 d!1454390))

(declare-fun bs!1019039 () Bool)

(declare-fun d!1454392 () Bool)

(assert (= bs!1019039 (and d!1454392 b!4616900)))

(declare-fun lambda!189819 () Int)

(assert (=> bs!1019039 (= lambda!189819 lambda!189716)))

(declare-fun bs!1019040 () Bool)

(assert (= bs!1019040 (and d!1454392 d!1454340)))

(assert (=> bs!1019040 (= lambda!189819 lambda!189803)))

(declare-fun bs!1019041 () Bool)

(assert (= bs!1019041 (and d!1454392 d!1454360)))

(assert (=> bs!1019041 (= lambda!189819 lambda!189815)))

(declare-fun lt!1773061 () ListMap!4165)

(assert (=> d!1454392 (invariantList!1173 (toList!4861 lt!1773061))))

(declare-fun e!2880017 () ListMap!4165)

(assert (=> d!1454392 (= lt!1773061 e!2880017)))

(declare-fun c!790469 () Bool)

(assert (=> d!1454392 (= c!790469 ((_ is Cons!51388) (Cons!51388 (tuple2!52241 hash!414 newBucket!224) Nil!51388)))))

(assert (=> d!1454392 (forall!10752 (Cons!51388 (tuple2!52241 hash!414 newBucket!224) Nil!51388) lambda!189819)))

(assert (=> d!1454392 (= (extractMap!1504 (Cons!51388 (tuple2!52241 hash!414 newBucket!224) Nil!51388)) lt!1773061)))

(declare-fun b!4617148 () Bool)

(assert (=> b!4617148 (= e!2880017 (addToMapMapFromBucket!909 (_2!29414 (h!57406 (Cons!51388 (tuple2!52241 hash!414 newBucket!224) Nil!51388))) (extractMap!1504 (t!358522 (Cons!51388 (tuple2!52241 hash!414 newBucket!224) Nil!51388)))))))

(declare-fun b!4617149 () Bool)

(assert (=> b!4617149 (= e!2880017 (ListMap!4166 Nil!51387))))

(assert (= (and d!1454392 c!790469) b!4617148))

(assert (= (and d!1454392 (not c!790469)) b!4617149))

(declare-fun m!5452319 () Bool)

(assert (=> d!1454392 m!5452319))

(declare-fun m!5452321 () Bool)

(assert (=> d!1454392 m!5452321))

(declare-fun m!5452323 () Bool)

(assert (=> b!4617148 m!5452323))

(assert (=> b!4617148 m!5452323))

(declare-fun m!5452325 () Bool)

(assert (=> b!4617148 m!5452325))

(assert (=> b!4616881 d!1454392))

(declare-fun bs!1019042 () Bool)

(declare-fun d!1454394 () Bool)

(assert (= bs!1019042 (and d!1454394 b!4616900)))

(declare-fun lambda!189820 () Int)

(assert (=> bs!1019042 (= lambda!189820 lambda!189716)))

(declare-fun bs!1019043 () Bool)

(assert (= bs!1019043 (and d!1454394 d!1454340)))

(assert (=> bs!1019043 (= lambda!189820 lambda!189803)))

(declare-fun bs!1019044 () Bool)

(assert (= bs!1019044 (and d!1454394 d!1454360)))

(assert (=> bs!1019044 (= lambda!189820 lambda!189815)))

(declare-fun bs!1019045 () Bool)

(assert (= bs!1019045 (and d!1454394 d!1454392)))

(assert (=> bs!1019045 (= lambda!189820 lambda!189819)))

(declare-fun lt!1773062 () ListMap!4165)

(assert (=> d!1454394 (invariantList!1173 (toList!4861 lt!1773062))))

(declare-fun e!2880018 () ListMap!4165)

(assert (=> d!1454394 (= lt!1773062 e!2880018)))

(declare-fun c!790470 () Bool)

(assert (=> d!1454394 (= c!790470 ((_ is Cons!51388) lt!1772709))))

(assert (=> d!1454394 (forall!10752 lt!1772709 lambda!189820)))

(assert (=> d!1454394 (= (extractMap!1504 lt!1772709) lt!1773062)))

(declare-fun b!4617150 () Bool)

(assert (=> b!4617150 (= e!2880018 (addToMapMapFromBucket!909 (_2!29414 (h!57406 lt!1772709)) (extractMap!1504 (t!358522 lt!1772709))))))

(declare-fun b!4617151 () Bool)

(assert (=> b!4617151 (= e!2880018 (ListMap!4166 Nil!51387))))

(assert (= (and d!1454394 c!790470) b!4617150))

(assert (= (and d!1454394 (not c!790470)) b!4617151))

(declare-fun m!5452327 () Bool)

(assert (=> d!1454394 m!5452327))

(declare-fun m!5452329 () Bool)

(assert (=> d!1454394 m!5452329))

(declare-fun m!5452331 () Bool)

(assert (=> b!4617150 m!5452331))

(assert (=> b!4617150 m!5452331))

(declare-fun m!5452333 () Bool)

(assert (=> b!4617150 m!5452333))

(assert (=> b!4616881 d!1454394))

(declare-fun bs!1019046 () Bool)

(declare-fun d!1454396 () Bool)

(assert (= bs!1019046 (and d!1454396 b!4617040)))

(declare-fun lambda!189821 () Int)

(assert (=> bs!1019046 (not (= lambda!189821 lambda!189792))))

(assert (=> bs!1019046 (not (= lambda!189821 lambda!189793))))

(declare-fun bs!1019047 () Bool)

(assert (= bs!1019047 (and d!1454396 d!1454306)))

(assert (=> bs!1019047 (not (= lambda!189821 lambda!189795))))

(declare-fun bs!1019048 () Bool)

(assert (= bs!1019048 (and d!1454396 b!4617043)))

(assert (=> bs!1019048 (not (= lambda!189821 lambda!189789))))

(declare-fun bs!1019049 () Bool)

(assert (= bs!1019049 (and d!1454396 d!1454376)))

(assert (=> bs!1019049 (= lambda!189821 lambda!189818)))

(assert (=> d!1454396 true))

(assert (=> d!1454396 true))

(assert (=> d!1454396 (= (allKeysSameHash!1302 newBucket!224 hash!414 hashF!1389) (forall!10754 newBucket!224 lambda!189821))))

(declare-fun bs!1019050 () Bool)

(assert (= bs!1019050 d!1454396))

(declare-fun m!5452335 () Bool)

(assert (=> bs!1019050 m!5452335))

(assert (=> b!4616892 d!1454396))

(declare-fun b!4617152 () Bool)

(declare-fun e!2880019 () Bool)

(assert (=> b!4617152 (= e!2880019 (contains!14353 (keys!18065 lt!1772716) key!4968))))

(declare-fun b!4617153 () Bool)

(declare-fun e!2880020 () Bool)

(assert (=> b!4617153 (= e!2880020 (not (contains!14353 (keys!18065 lt!1772716) key!4968)))))

(declare-fun b!4617154 () Bool)

(declare-fun e!2880022 () List!51514)

(assert (=> b!4617154 (= e!2880022 (keys!18065 lt!1772716))))

(declare-fun b!4617155 () Bool)

(assert (=> b!4617155 false))

(declare-fun lt!1773068 () Unit!110516)

(declare-fun lt!1773066 () Unit!110516)

(assert (=> b!4617155 (= lt!1773068 lt!1773066)))

(assert (=> b!4617155 (containsKey!2336 (toList!4861 lt!1772716) key!4968)))

(assert (=> b!4617155 (= lt!1773066 (lemmaInGetKeysListThenContainsKey!623 (toList!4861 lt!1772716) key!4968))))

(declare-fun e!2880023 () Unit!110516)

(declare-fun Unit!110572 () Unit!110516)

(assert (=> b!4617155 (= e!2880023 Unit!110572)))

(declare-fun b!4617156 () Bool)

(declare-fun e!2880021 () Unit!110516)

(assert (=> b!4617156 (= e!2880021 e!2880023)))

(declare-fun c!790473 () Bool)

(declare-fun call!321979 () Bool)

(assert (=> b!4617156 (= c!790473 call!321979)))

(declare-fun b!4617157 () Bool)

(declare-fun e!2880024 () Bool)

(assert (=> b!4617157 (= e!2880024 e!2880019)))

(declare-fun res!1934678 () Bool)

(assert (=> b!4617157 (=> (not res!1934678) (not e!2880019))))

(assert (=> b!4617157 (= res!1934678 (isDefined!8741 (getValueByKey!1390 (toList!4861 lt!1772716) key!4968)))))

(declare-fun b!4617158 () Bool)

(assert (=> b!4617158 (= e!2880022 (getKeysList!624 (toList!4861 lt!1772716)))))

(declare-fun d!1454398 () Bool)

(assert (=> d!1454398 e!2880024))

(declare-fun res!1934677 () Bool)

(assert (=> d!1454398 (=> res!1934677 e!2880024)))

(assert (=> d!1454398 (= res!1934677 e!2880020)))

(declare-fun res!1934676 () Bool)

(assert (=> d!1454398 (=> (not res!1934676) (not e!2880020))))

(declare-fun lt!1773069 () Bool)

(assert (=> d!1454398 (= res!1934676 (not lt!1773069))))

(declare-fun lt!1773067 () Bool)

(assert (=> d!1454398 (= lt!1773069 lt!1773067)))

(declare-fun lt!1773065 () Unit!110516)

(assert (=> d!1454398 (= lt!1773065 e!2880021)))

(declare-fun c!790471 () Bool)

(assert (=> d!1454398 (= c!790471 lt!1773067)))

(assert (=> d!1454398 (= lt!1773067 (containsKey!2336 (toList!4861 lt!1772716) key!4968))))

(assert (=> d!1454398 (= (contains!14350 lt!1772716 key!4968) lt!1773069)))

(declare-fun b!4617159 () Bool)

(declare-fun Unit!110573 () Unit!110516)

(assert (=> b!4617159 (= e!2880023 Unit!110573)))

(declare-fun b!4617160 () Bool)

(declare-fun lt!1773070 () Unit!110516)

(assert (=> b!4617160 (= e!2880021 lt!1773070)))

(declare-fun lt!1773064 () Unit!110516)

(assert (=> b!4617160 (= lt!1773064 (lemmaContainsKeyImpliesGetValueByKeyDefined!1292 (toList!4861 lt!1772716) key!4968))))

(assert (=> b!4617160 (isDefined!8741 (getValueByKey!1390 (toList!4861 lt!1772716) key!4968))))

(declare-fun lt!1773063 () Unit!110516)

(assert (=> b!4617160 (= lt!1773063 lt!1773064)))

(assert (=> b!4617160 (= lt!1773070 (lemmaInListThenGetKeysListContains!619 (toList!4861 lt!1772716) key!4968))))

(assert (=> b!4617160 call!321979))

(declare-fun bm!321974 () Bool)

(assert (=> bm!321974 (= call!321979 (contains!14353 e!2880022 key!4968))))

(declare-fun c!790472 () Bool)

(assert (=> bm!321974 (= c!790472 c!790471)))

(assert (= (and d!1454398 c!790471) b!4617160))

(assert (= (and d!1454398 (not c!790471)) b!4617156))

(assert (= (and b!4617156 c!790473) b!4617155))

(assert (= (and b!4617156 (not c!790473)) b!4617159))

(assert (= (or b!4617160 b!4617156) bm!321974))

(assert (= (and bm!321974 c!790472) b!4617158))

(assert (= (and bm!321974 (not c!790472)) b!4617154))

(assert (= (and d!1454398 res!1934676) b!4617153))

(assert (= (and d!1454398 (not res!1934677)) b!4617157))

(assert (= (and b!4617157 res!1934678) b!4617152))

(assert (=> b!4617152 m!5452307))

(assert (=> b!4617152 m!5452307))

(declare-fun m!5452337 () Bool)

(assert (=> b!4617152 m!5452337))

(declare-fun m!5452339 () Bool)

(assert (=> d!1454398 m!5452339))

(assert (=> b!4617155 m!5452339))

(declare-fun m!5452341 () Bool)

(assert (=> b!4617155 m!5452341))

(declare-fun m!5452343 () Bool)

(assert (=> bm!321974 m!5452343))

(declare-fun m!5452345 () Bool)

(assert (=> b!4617157 m!5452345))

(assert (=> b!4617157 m!5452345))

(declare-fun m!5452347 () Bool)

(assert (=> b!4617157 m!5452347))

(assert (=> b!4617154 m!5452307))

(declare-fun m!5452349 () Bool)

(assert (=> b!4617160 m!5452349))

(assert (=> b!4617160 m!5452345))

(assert (=> b!4617160 m!5452345))

(assert (=> b!4617160 m!5452347))

(declare-fun m!5452351 () Bool)

(assert (=> b!4617160 m!5452351))

(assert (=> b!4617153 m!5452307))

(assert (=> b!4617153 m!5452307))

(assert (=> b!4617153 m!5452337))

(declare-fun m!5452353 () Bool)

(assert (=> b!4617158 m!5452353))

(assert (=> b!4616893 d!1454398))

(declare-fun bs!1019051 () Bool)

(declare-fun d!1454400 () Bool)

(assert (= bs!1019051 (and d!1454400 d!1454360)))

(declare-fun lambda!189822 () Int)

(assert (=> bs!1019051 (= lambda!189822 lambda!189815)))

(declare-fun bs!1019052 () Bool)

(assert (= bs!1019052 (and d!1454400 b!4616900)))

(assert (=> bs!1019052 (= lambda!189822 lambda!189716)))

(declare-fun bs!1019053 () Bool)

(assert (= bs!1019053 (and d!1454400 d!1454394)))

(assert (=> bs!1019053 (= lambda!189822 lambda!189820)))

(declare-fun bs!1019054 () Bool)

(assert (= bs!1019054 (and d!1454400 d!1454340)))

(assert (=> bs!1019054 (= lambda!189822 lambda!189803)))

(declare-fun bs!1019055 () Bool)

(assert (= bs!1019055 (and d!1454400 d!1454392)))

(assert (=> bs!1019055 (= lambda!189822 lambda!189819)))

(declare-fun lt!1773071 () ListMap!4165)

(assert (=> d!1454400 (invariantList!1173 (toList!4861 lt!1773071))))

(declare-fun e!2880025 () ListMap!4165)

(assert (=> d!1454400 (= lt!1773071 e!2880025)))

(declare-fun c!790474 () Bool)

(assert (=> d!1454400 (= c!790474 ((_ is Cons!51388) lt!1772703))))

(assert (=> d!1454400 (forall!10752 lt!1772703 lambda!189822)))

(assert (=> d!1454400 (= (extractMap!1504 lt!1772703) lt!1773071)))

(declare-fun b!4617161 () Bool)

(assert (=> b!4617161 (= e!2880025 (addToMapMapFromBucket!909 (_2!29414 (h!57406 lt!1772703)) (extractMap!1504 (t!358522 lt!1772703))))))

(declare-fun b!4617162 () Bool)

(assert (=> b!4617162 (= e!2880025 (ListMap!4166 Nil!51387))))

(assert (= (and d!1454400 c!790474) b!4617161))

(assert (= (and d!1454400 (not c!790474)) b!4617162))

(declare-fun m!5452355 () Bool)

(assert (=> d!1454400 m!5452355))

(declare-fun m!5452357 () Bool)

(assert (=> d!1454400 m!5452357))

(declare-fun m!5452359 () Bool)

(assert (=> b!4617161 m!5452359))

(assert (=> b!4617161 m!5452359))

(declare-fun m!5452361 () Bool)

(assert (=> b!4617161 m!5452361))

(assert (=> b!4616893 d!1454400))

(declare-fun d!1454402 () Bool)

(assert (=> d!1454402 (= (tail!8095 oldBucket!40) (t!358521 oldBucket!40))))

(assert (=> b!4616882 d!1454402))

(declare-fun d!1454404 () Bool)

(declare-fun e!2880028 () Bool)

(assert (=> d!1454404 e!2880028))

(declare-fun res!1934684 () Bool)

(assert (=> d!1454404 (=> (not res!1934684) (not e!2880028))))

(declare-fun lt!1773080 () ListMap!4165)

(assert (=> d!1454404 (= res!1934684 (contains!14350 lt!1773080 (_1!29413 (h!57405 oldBucket!40))))))

(declare-fun lt!1773081 () List!51511)

(assert (=> d!1454404 (= lt!1773080 (ListMap!4166 lt!1773081))))

(declare-fun lt!1773082 () Unit!110516)

(declare-fun lt!1773083 () Unit!110516)

(assert (=> d!1454404 (= lt!1773082 lt!1773083)))

(assert (=> d!1454404 (= (getValueByKey!1390 lt!1773081 (_1!29413 (h!57405 oldBucket!40))) (Some!11475 (_2!29413 (h!57405 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!826 (List!51511 K!12770 V!13016) Unit!110516)

(assert (=> d!1454404 (= lt!1773083 (lemmaContainsTupThenGetReturnValue!826 lt!1773081 (_1!29413 (h!57405 oldBucket!40)) (_2!29413 (h!57405 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!334 (List!51511 K!12770 V!13016) List!51511)

(assert (=> d!1454404 (= lt!1773081 (insertNoDuplicatedKeys!334 (toList!4861 lt!1772714) (_1!29413 (h!57405 oldBucket!40)) (_2!29413 (h!57405 oldBucket!40))))))

(assert (=> d!1454404 (= (+!1833 lt!1772714 (h!57405 oldBucket!40)) lt!1773080)))

(declare-fun b!4617167 () Bool)

(declare-fun res!1934683 () Bool)

(assert (=> b!4617167 (=> (not res!1934683) (not e!2880028))))

(assert (=> b!4617167 (= res!1934683 (= (getValueByKey!1390 (toList!4861 lt!1773080) (_1!29413 (h!57405 oldBucket!40))) (Some!11475 (_2!29413 (h!57405 oldBucket!40)))))))

(declare-fun b!4617168 () Bool)

(declare-fun contains!14354 (List!51511 tuple2!52238) Bool)

(assert (=> b!4617168 (= e!2880028 (contains!14354 (toList!4861 lt!1773080) (h!57405 oldBucket!40)))))

(assert (= (and d!1454404 res!1934684) b!4617167))

(assert (= (and b!4617167 res!1934683) b!4617168))

(declare-fun m!5452363 () Bool)

(assert (=> d!1454404 m!5452363))

(declare-fun m!5452365 () Bool)

(assert (=> d!1454404 m!5452365))

(declare-fun m!5452367 () Bool)

(assert (=> d!1454404 m!5452367))

(declare-fun m!5452369 () Bool)

(assert (=> d!1454404 m!5452369))

(declare-fun m!5452371 () Bool)

(assert (=> b!4617167 m!5452371))

(declare-fun m!5452373 () Bool)

(assert (=> b!4617168 m!5452373))

(assert (=> b!4616883 d!1454404))

(declare-fun d!1454406 () Bool)

(assert (=> d!1454406 (= (eq!791 lt!1772705 lt!1772701) (= (content!8740 (toList!4861 lt!1772705)) (content!8740 (toList!4861 lt!1772701))))))

(declare-fun bs!1019056 () Bool)

(assert (= bs!1019056 d!1454406))

(assert (=> bs!1019056 m!5452281))

(declare-fun m!5452375 () Bool)

(assert (=> bs!1019056 m!5452375))

(assert (=> b!4616883 d!1454406))

(declare-fun bs!1019057 () Bool)

(declare-fun b!4617173 () Bool)

(assert (= bs!1019057 (and b!4617173 b!4617040)))

(declare-fun lambda!189823 () Int)

(assert (=> bs!1019057 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189823 lambda!189792))))

(assert (=> bs!1019057 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189823 lambda!189793))))

(declare-fun bs!1019058 () Bool)

(assert (= bs!1019058 (and b!4617173 d!1454396)))

(assert (=> bs!1019058 (not (= lambda!189823 lambda!189821))))

(declare-fun bs!1019059 () Bool)

(assert (= bs!1019059 (and b!4617173 d!1454306)))

(assert (=> bs!1019059 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189823 lambda!189795))))

(declare-fun bs!1019060 () Bool)

(assert (= bs!1019060 (and b!4617173 b!4617043)))

(assert (=> bs!1019060 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189823 lambda!189789))))

(declare-fun bs!1019061 () Bool)

(assert (= bs!1019061 (and b!4617173 d!1454376)))

(assert (=> bs!1019061 (not (= lambda!189823 lambda!189818))))

(assert (=> b!4617173 true))

(declare-fun bs!1019062 () Bool)

(declare-fun b!4617170 () Bool)

(assert (= bs!1019062 (and b!4617170 b!4617173)))

(declare-fun lambda!189824 () Int)

(assert (=> bs!1019062 (= lambda!189824 lambda!189823)))

(declare-fun bs!1019063 () Bool)

(assert (= bs!1019063 (and b!4617170 b!4617040)))

(assert (=> bs!1019063 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189824 lambda!189792))))

(assert (=> bs!1019063 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189824 lambda!189793))))

(declare-fun bs!1019064 () Bool)

(assert (= bs!1019064 (and b!4617170 d!1454396)))

(assert (=> bs!1019064 (not (= lambda!189824 lambda!189821))))

(declare-fun bs!1019065 () Bool)

(assert (= bs!1019065 (and b!4617170 d!1454306)))

(assert (=> bs!1019065 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189824 lambda!189795))))

(declare-fun bs!1019066 () Bool)

(assert (= bs!1019066 (and b!4617170 b!4617043)))

(assert (=> bs!1019066 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189824 lambda!189789))))

(declare-fun bs!1019067 () Bool)

(assert (= bs!1019067 (and b!4617170 d!1454376)))

(assert (=> bs!1019067 (not (= lambda!189824 lambda!189818))))

(assert (=> b!4617170 true))

(declare-fun lt!1773094 () ListMap!4165)

(declare-fun lambda!189825 () Int)

(assert (=> bs!1019062 (= (= lt!1773094 (ListMap!4166 Nil!51387)) (= lambda!189825 lambda!189823))))

(assert (=> bs!1019063 (= (= lt!1773094 lt!1772702) (= lambda!189825 lambda!189792))))

(assert (=> bs!1019063 (= (= lt!1773094 lt!1772927) (= lambda!189825 lambda!189793))))

(assert (=> b!4617170 (= (= lt!1773094 (ListMap!4166 Nil!51387)) (= lambda!189825 lambda!189824))))

(assert (=> bs!1019064 (not (= lambda!189825 lambda!189821))))

(assert (=> bs!1019065 (= (= lt!1773094 lt!1772924) (= lambda!189825 lambda!189795))))

(assert (=> bs!1019066 (= (= lt!1773094 lt!1772702) (= lambda!189825 lambda!189789))))

(assert (=> bs!1019067 (not (= lambda!189825 lambda!189818))))

(assert (=> b!4617170 true))

(declare-fun bs!1019068 () Bool)

(declare-fun d!1454408 () Bool)

(assert (= bs!1019068 (and d!1454408 b!4617173)))

(declare-fun lt!1773091 () ListMap!4165)

(declare-fun lambda!189826 () Int)

(assert (=> bs!1019068 (= (= lt!1773091 (ListMap!4166 Nil!51387)) (= lambda!189826 lambda!189823))))

(declare-fun bs!1019069 () Bool)

(assert (= bs!1019069 (and d!1454408 b!4617040)))

(assert (=> bs!1019069 (= (= lt!1773091 lt!1772702) (= lambda!189826 lambda!189792))))

(assert (=> bs!1019069 (= (= lt!1773091 lt!1772927) (= lambda!189826 lambda!189793))))

(declare-fun bs!1019070 () Bool)

(assert (= bs!1019070 (and d!1454408 b!4617170)))

(assert (=> bs!1019070 (= (= lt!1773091 lt!1773094) (= lambda!189826 lambda!189825))))

(assert (=> bs!1019070 (= (= lt!1773091 (ListMap!4166 Nil!51387)) (= lambda!189826 lambda!189824))))

(declare-fun bs!1019071 () Bool)

(assert (= bs!1019071 (and d!1454408 d!1454396)))

(assert (=> bs!1019071 (not (= lambda!189826 lambda!189821))))

(declare-fun bs!1019072 () Bool)

(assert (= bs!1019072 (and d!1454408 d!1454306)))

(assert (=> bs!1019072 (= (= lt!1773091 lt!1772924) (= lambda!189826 lambda!189795))))

(declare-fun bs!1019073 () Bool)

(assert (= bs!1019073 (and d!1454408 b!4617043)))

(assert (=> bs!1019073 (= (= lt!1773091 lt!1772702) (= lambda!189826 lambda!189789))))

(declare-fun bs!1019074 () Bool)

(assert (= bs!1019074 (and d!1454408 d!1454376)))

(assert (=> bs!1019074 (not (= lambda!189826 lambda!189818))))

(assert (=> d!1454408 true))

(declare-fun b!4617169 () Bool)

(declare-fun e!2880031 () Bool)

(assert (=> b!4617169 (= e!2880031 (invariantList!1173 (toList!4861 lt!1773091)))))

(assert (=> d!1454408 e!2880031))

(declare-fun res!1934687 () Bool)

(assert (=> d!1454408 (=> (not res!1934687) (not e!2880031))))

(assert (=> d!1454408 (= res!1934687 (forall!10754 (Cons!51387 lt!1772711 lt!1772708) lambda!189826))))

(declare-fun e!2880030 () ListMap!4165)

(assert (=> d!1454408 (= lt!1773091 e!2880030)))

(declare-fun c!790475 () Bool)

(assert (=> d!1454408 (= c!790475 ((_ is Nil!51387) (Cons!51387 lt!1772711 lt!1772708)))))

(assert (=> d!1454408 (noDuplicateKeys!1448 (Cons!51387 lt!1772711 lt!1772708))))

(assert (=> d!1454408 (= (addToMapMapFromBucket!909 (Cons!51387 lt!1772711 lt!1772708) (ListMap!4166 Nil!51387)) lt!1773091)))

(assert (=> b!4617170 (= e!2880030 lt!1773094)))

(declare-fun lt!1773090 () ListMap!4165)

(assert (=> b!4617170 (= lt!1773090 (+!1833 (ListMap!4166 Nil!51387) (h!57405 (Cons!51387 lt!1772711 lt!1772708))))))

(assert (=> b!4617170 (= lt!1773094 (addToMapMapFromBucket!909 (t!358521 (Cons!51387 lt!1772711 lt!1772708)) (+!1833 (ListMap!4166 Nil!51387) (h!57405 (Cons!51387 lt!1772711 lt!1772708)))))))

(declare-fun lt!1773095 () Unit!110516)

(declare-fun call!321980 () Unit!110516)

(assert (=> b!4617170 (= lt!1773095 call!321980)))

(assert (=> b!4617170 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189824)))

(declare-fun lt!1773086 () Unit!110516)

(assert (=> b!4617170 (= lt!1773086 lt!1773095)))

(assert (=> b!4617170 (forall!10754 (toList!4861 lt!1773090) lambda!189825)))

(declare-fun lt!1773088 () Unit!110516)

(declare-fun Unit!110574 () Unit!110516)

(assert (=> b!4617170 (= lt!1773088 Unit!110574)))

(assert (=> b!4617170 (forall!10754 (t!358521 (Cons!51387 lt!1772711 lt!1772708)) lambda!189825)))

(declare-fun lt!1773102 () Unit!110516)

(declare-fun Unit!110575 () Unit!110516)

(assert (=> b!4617170 (= lt!1773102 Unit!110575)))

(declare-fun lt!1773093 () Unit!110516)

(declare-fun Unit!110576 () Unit!110516)

(assert (=> b!4617170 (= lt!1773093 Unit!110576)))

(declare-fun lt!1773103 () Unit!110516)

(assert (=> b!4617170 (= lt!1773103 (forallContained!2967 (toList!4861 lt!1773090) lambda!189825 (h!57405 (Cons!51387 lt!1772711 lt!1772708))))))

(assert (=> b!4617170 (contains!14350 lt!1773090 (_1!29413 (h!57405 (Cons!51387 lt!1772711 lt!1772708))))))

(declare-fun lt!1773084 () Unit!110516)

(declare-fun Unit!110577 () Unit!110516)

(assert (=> b!4617170 (= lt!1773084 Unit!110577)))

(assert (=> b!4617170 (contains!14350 lt!1773094 (_1!29413 (h!57405 (Cons!51387 lt!1772711 lt!1772708))))))

(declare-fun lt!1773089 () Unit!110516)

(declare-fun Unit!110578 () Unit!110516)

(assert (=> b!4617170 (= lt!1773089 Unit!110578)))

(assert (=> b!4617170 (forall!10754 (Cons!51387 lt!1772711 lt!1772708) lambda!189825)))

(declare-fun lt!1773097 () Unit!110516)

(declare-fun Unit!110579 () Unit!110516)

(assert (=> b!4617170 (= lt!1773097 Unit!110579)))

(declare-fun call!321981 () Bool)

(assert (=> b!4617170 call!321981))

(declare-fun lt!1773087 () Unit!110516)

(declare-fun Unit!110580 () Unit!110516)

(assert (=> b!4617170 (= lt!1773087 Unit!110580)))

(declare-fun lt!1773092 () Unit!110516)

(declare-fun Unit!110581 () Unit!110516)

(assert (=> b!4617170 (= lt!1773092 Unit!110581)))

(declare-fun lt!1773099 () Unit!110516)

(assert (=> b!4617170 (= lt!1773099 (addForallContainsKeyThenBeforeAdding!474 (ListMap!4166 Nil!51387) lt!1773094 (_1!29413 (h!57405 (Cons!51387 lt!1772711 lt!1772708))) (_2!29413 (h!57405 (Cons!51387 lt!1772711 lt!1772708)))))))

(assert (=> b!4617170 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189825)))

(declare-fun lt!1773098 () Unit!110516)

(assert (=> b!4617170 (= lt!1773098 lt!1773099)))

(declare-fun call!321982 () Bool)

(assert (=> b!4617170 call!321982))

(declare-fun lt!1773100 () Unit!110516)

(declare-fun Unit!110582 () Unit!110516)

(assert (=> b!4617170 (= lt!1773100 Unit!110582)))

(declare-fun res!1934685 () Bool)

(assert (=> b!4617170 (= res!1934685 (forall!10754 (Cons!51387 lt!1772711 lt!1772708) lambda!189825))))

(declare-fun e!2880029 () Bool)

(assert (=> b!4617170 (=> (not res!1934685) (not e!2880029))))

(assert (=> b!4617170 e!2880029))

(declare-fun lt!1773101 () Unit!110516)

(declare-fun Unit!110583 () Unit!110516)

(assert (=> b!4617170 (= lt!1773101 Unit!110583)))

(declare-fun bm!321975 () Bool)

(assert (=> bm!321975 (= call!321981 (forall!10754 (ite c!790475 (toList!4861 (ListMap!4166 Nil!51387)) (toList!4861 lt!1773090)) (ite c!790475 lambda!189823 lambda!189825)))))

(declare-fun b!4617171 () Bool)

(assert (=> b!4617171 (= e!2880029 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189825))))

(declare-fun b!4617172 () Bool)

(declare-fun res!1934686 () Bool)

(assert (=> b!4617172 (=> (not res!1934686) (not e!2880031))))

(assert (=> b!4617172 (= res!1934686 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189826))))

(declare-fun bm!321976 () Bool)

(assert (=> bm!321976 (= call!321982 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) (ite c!790475 lambda!189823 lambda!189825)))))

(declare-fun bm!321977 () Bool)

(assert (=> bm!321977 (= call!321980 (lemmaContainsAllItsOwnKeys!475 (ListMap!4166 Nil!51387)))))

(assert (=> b!4617173 (= e!2880030 (ListMap!4166 Nil!51387))))

(declare-fun lt!1773096 () Unit!110516)

(assert (=> b!4617173 (= lt!1773096 call!321980)))

(assert (=> b!4617173 call!321982))

(declare-fun lt!1773104 () Unit!110516)

(assert (=> b!4617173 (= lt!1773104 lt!1773096)))

(assert (=> b!4617173 call!321981))

(declare-fun lt!1773085 () Unit!110516)

(declare-fun Unit!110584 () Unit!110516)

(assert (=> b!4617173 (= lt!1773085 Unit!110584)))

(assert (= (and d!1454408 c!790475) b!4617173))

(assert (= (and d!1454408 (not c!790475)) b!4617170))

(assert (= (and b!4617170 res!1934685) b!4617171))

(assert (= (or b!4617173 b!4617170) bm!321977))

(assert (= (or b!4617173 b!4617170) bm!321976))

(assert (= (or b!4617173 b!4617170) bm!321975))

(assert (= (and d!1454408 res!1934687) b!4617172))

(assert (= (and b!4617172 res!1934686) b!4617169))

(declare-fun m!5452377 () Bool)

(assert (=> b!4617171 m!5452377))

(declare-fun m!5452379 () Bool)

(assert (=> bm!321977 m!5452379))

(declare-fun m!5452381 () Bool)

(assert (=> d!1454408 m!5452381))

(declare-fun m!5452383 () Bool)

(assert (=> d!1454408 m!5452383))

(declare-fun m!5452385 () Bool)

(assert (=> bm!321976 m!5452385))

(declare-fun m!5452387 () Bool)

(assert (=> b!4617170 m!5452387))

(declare-fun m!5452389 () Bool)

(assert (=> b!4617170 m!5452389))

(declare-fun m!5452391 () Bool)

(assert (=> b!4617170 m!5452391))

(declare-fun m!5452393 () Bool)

(assert (=> b!4617170 m!5452393))

(declare-fun m!5452395 () Bool)

(assert (=> b!4617170 m!5452395))

(declare-fun m!5452397 () Bool)

(assert (=> b!4617170 m!5452397))

(declare-fun m!5452399 () Bool)

(assert (=> b!4617170 m!5452399))

(assert (=> b!4617170 m!5452399))

(declare-fun m!5452401 () Bool)

(assert (=> b!4617170 m!5452401))

(declare-fun m!5452403 () Bool)

(assert (=> b!4617170 m!5452403))

(assert (=> b!4617170 m!5452389))

(declare-fun m!5452405 () Bool)

(assert (=> b!4617170 m!5452405))

(assert (=> b!4617170 m!5452377))

(declare-fun m!5452407 () Bool)

(assert (=> b!4617169 m!5452407))

(declare-fun m!5452409 () Bool)

(assert (=> bm!321975 m!5452409))

(declare-fun m!5452411 () Bool)

(assert (=> b!4617172 m!5452411))

(assert (=> b!4616883 d!1454408))

(declare-fun d!1454410 () Bool)

(assert (=> d!1454410 (= (head!9608 oldBucket!40) (h!57405 oldBucket!40))))

(assert (=> b!4616883 d!1454410))

(declare-fun bs!1019075 () Bool)

(declare-fun b!4617178 () Bool)

(assert (= bs!1019075 (and b!4617178 b!4617173)))

(declare-fun lambda!189827 () Int)

(assert (=> bs!1019075 (= lambda!189827 lambda!189823)))

(declare-fun bs!1019076 () Bool)

(assert (= bs!1019076 (and b!4617178 b!4617040)))

(assert (=> bs!1019076 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189827 lambda!189792))))

(assert (=> bs!1019076 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189827 lambda!189793))))

(declare-fun bs!1019077 () Bool)

(assert (= bs!1019077 (and b!4617178 b!4617170)))

(assert (=> bs!1019077 (= lambda!189827 lambda!189824)))

(declare-fun bs!1019078 () Bool)

(assert (= bs!1019078 (and b!4617178 d!1454396)))

(assert (=> bs!1019078 (not (= lambda!189827 lambda!189821))))

(declare-fun bs!1019079 () Bool)

(assert (= bs!1019079 (and b!4617178 d!1454306)))

(assert (=> bs!1019079 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189827 lambda!189795))))

(declare-fun bs!1019080 () Bool)

(assert (= bs!1019080 (and b!4617178 b!4617043)))

(assert (=> bs!1019080 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189827 lambda!189789))))

(declare-fun bs!1019081 () Bool)

(assert (= bs!1019081 (and b!4617178 d!1454376)))

(assert (=> bs!1019081 (not (= lambda!189827 lambda!189818))))

(assert (=> bs!1019077 (= (= (ListMap!4166 Nil!51387) lt!1773094) (= lambda!189827 lambda!189825))))

(declare-fun bs!1019082 () Bool)

(assert (= bs!1019082 (and b!4617178 d!1454408)))

(assert (=> bs!1019082 (= (= (ListMap!4166 Nil!51387) lt!1773091) (= lambda!189827 lambda!189826))))

(assert (=> b!4617178 true))

(declare-fun bs!1019083 () Bool)

(declare-fun b!4617175 () Bool)

(assert (= bs!1019083 (and b!4617175 b!4617173)))

(declare-fun lambda!189828 () Int)

(assert (=> bs!1019083 (= lambda!189828 lambda!189823)))

(declare-fun bs!1019084 () Bool)

(assert (= bs!1019084 (and b!4617175 b!4617040)))

(assert (=> bs!1019084 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189828 lambda!189792))))

(assert (=> bs!1019084 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189828 lambda!189793))))

(declare-fun bs!1019085 () Bool)

(assert (= bs!1019085 (and b!4617175 b!4617170)))

(assert (=> bs!1019085 (= lambda!189828 lambda!189824)))

(declare-fun bs!1019086 () Bool)

(assert (= bs!1019086 (and b!4617175 d!1454306)))

(assert (=> bs!1019086 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189828 lambda!189795))))

(declare-fun bs!1019087 () Bool)

(assert (= bs!1019087 (and b!4617175 b!4617043)))

(assert (=> bs!1019087 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189828 lambda!189789))))

(declare-fun bs!1019088 () Bool)

(assert (= bs!1019088 (and b!4617175 d!1454376)))

(assert (=> bs!1019088 (not (= lambda!189828 lambda!189818))))

(assert (=> bs!1019085 (= (= (ListMap!4166 Nil!51387) lt!1773094) (= lambda!189828 lambda!189825))))

(declare-fun bs!1019089 () Bool)

(assert (= bs!1019089 (and b!4617175 d!1454408)))

(assert (=> bs!1019089 (= (= (ListMap!4166 Nil!51387) lt!1773091) (= lambda!189828 lambda!189826))))

(declare-fun bs!1019090 () Bool)

(assert (= bs!1019090 (and b!4617175 d!1454396)))

(assert (=> bs!1019090 (not (= lambda!189828 lambda!189821))))

(declare-fun bs!1019091 () Bool)

(assert (= bs!1019091 (and b!4617175 b!4617178)))

(assert (=> bs!1019091 (= lambda!189828 lambda!189827)))

(assert (=> b!4617175 true))

(declare-fun lt!1773115 () ListMap!4165)

(declare-fun lambda!189829 () Int)

(assert (=> bs!1019083 (= (= lt!1773115 (ListMap!4166 Nil!51387)) (= lambda!189829 lambda!189823))))

(assert (=> bs!1019084 (= (= lt!1773115 lt!1772702) (= lambda!189829 lambda!189792))))

(assert (=> bs!1019084 (= (= lt!1773115 lt!1772927) (= lambda!189829 lambda!189793))))

(assert (=> bs!1019085 (= (= lt!1773115 (ListMap!4166 Nil!51387)) (= lambda!189829 lambda!189824))))

(assert (=> bs!1019086 (= (= lt!1773115 lt!1772924) (= lambda!189829 lambda!189795))))

(assert (=> bs!1019087 (= (= lt!1773115 lt!1772702) (= lambda!189829 lambda!189789))))

(assert (=> bs!1019088 (not (= lambda!189829 lambda!189818))))

(assert (=> b!4617175 (= (= lt!1773115 (ListMap!4166 Nil!51387)) (= lambda!189829 lambda!189828))))

(assert (=> bs!1019085 (= (= lt!1773115 lt!1773094) (= lambda!189829 lambda!189825))))

(assert (=> bs!1019089 (= (= lt!1773115 lt!1773091) (= lambda!189829 lambda!189826))))

(assert (=> bs!1019090 (not (= lambda!189829 lambda!189821))))

(assert (=> bs!1019091 (= (= lt!1773115 (ListMap!4166 Nil!51387)) (= lambda!189829 lambda!189827))))

(assert (=> b!4617175 true))

(declare-fun bs!1019092 () Bool)

(declare-fun d!1454412 () Bool)

(assert (= bs!1019092 (and d!1454412 b!4617173)))

(declare-fun lt!1773112 () ListMap!4165)

(declare-fun lambda!189830 () Int)

(assert (=> bs!1019092 (= (= lt!1773112 (ListMap!4166 Nil!51387)) (= lambda!189830 lambda!189823))))

(declare-fun bs!1019093 () Bool)

(assert (= bs!1019093 (and d!1454412 b!4617040)))

(assert (=> bs!1019093 (= (= lt!1773112 lt!1772702) (= lambda!189830 lambda!189792))))

(assert (=> bs!1019093 (= (= lt!1773112 lt!1772927) (= lambda!189830 lambda!189793))))

(declare-fun bs!1019094 () Bool)

(assert (= bs!1019094 (and d!1454412 b!4617170)))

(assert (=> bs!1019094 (= (= lt!1773112 (ListMap!4166 Nil!51387)) (= lambda!189830 lambda!189824))))

(declare-fun bs!1019095 () Bool)

(assert (= bs!1019095 (and d!1454412 d!1454306)))

(assert (=> bs!1019095 (= (= lt!1773112 lt!1772924) (= lambda!189830 lambda!189795))))

(declare-fun bs!1019096 () Bool)

(assert (= bs!1019096 (and d!1454412 b!4617043)))

(assert (=> bs!1019096 (= (= lt!1773112 lt!1772702) (= lambda!189830 lambda!189789))))

(declare-fun bs!1019097 () Bool)

(assert (= bs!1019097 (and d!1454412 d!1454376)))

(assert (=> bs!1019097 (not (= lambda!189830 lambda!189818))))

(assert (=> bs!1019094 (= (= lt!1773112 lt!1773094) (= lambda!189830 lambda!189825))))

(declare-fun bs!1019098 () Bool)

(assert (= bs!1019098 (and d!1454412 d!1454408)))

(assert (=> bs!1019098 (= (= lt!1773112 lt!1773091) (= lambda!189830 lambda!189826))))

(declare-fun bs!1019099 () Bool)

(assert (= bs!1019099 (and d!1454412 d!1454396)))

(assert (=> bs!1019099 (not (= lambda!189830 lambda!189821))))

(declare-fun bs!1019100 () Bool)

(assert (= bs!1019100 (and d!1454412 b!4617178)))

(assert (=> bs!1019100 (= (= lt!1773112 (ListMap!4166 Nil!51387)) (= lambda!189830 lambda!189827))))

(declare-fun bs!1019101 () Bool)

(assert (= bs!1019101 (and d!1454412 b!4617175)))

(assert (=> bs!1019101 (= (= lt!1773112 lt!1773115) (= lambda!189830 lambda!189829))))

(assert (=> bs!1019101 (= (= lt!1773112 (ListMap!4166 Nil!51387)) (= lambda!189830 lambda!189828))))

(assert (=> d!1454412 true))

(declare-fun b!4617174 () Bool)

(declare-fun e!2880034 () Bool)

(assert (=> b!4617174 (= e!2880034 (invariantList!1173 (toList!4861 lt!1773112)))))

(assert (=> d!1454412 e!2880034))

(declare-fun res!1934690 () Bool)

(assert (=> d!1454412 (=> (not res!1934690) (not e!2880034))))

(assert (=> d!1454412 (= res!1934690 (forall!10754 oldBucket!40 lambda!189830))))

(declare-fun e!2880033 () ListMap!4165)

(assert (=> d!1454412 (= lt!1773112 e!2880033)))

(declare-fun c!790476 () Bool)

(assert (=> d!1454412 (= c!790476 ((_ is Nil!51387) oldBucket!40))))

(assert (=> d!1454412 (noDuplicateKeys!1448 oldBucket!40)))

(assert (=> d!1454412 (= (addToMapMapFromBucket!909 oldBucket!40 (ListMap!4166 Nil!51387)) lt!1773112)))

(assert (=> b!4617175 (= e!2880033 lt!1773115)))

(declare-fun lt!1773111 () ListMap!4165)

(assert (=> b!4617175 (= lt!1773111 (+!1833 (ListMap!4166 Nil!51387) (h!57405 oldBucket!40)))))

(assert (=> b!4617175 (= lt!1773115 (addToMapMapFromBucket!909 (t!358521 oldBucket!40) (+!1833 (ListMap!4166 Nil!51387) (h!57405 oldBucket!40))))))

(declare-fun lt!1773116 () Unit!110516)

(declare-fun call!321983 () Unit!110516)

(assert (=> b!4617175 (= lt!1773116 call!321983)))

(assert (=> b!4617175 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189828)))

(declare-fun lt!1773107 () Unit!110516)

(assert (=> b!4617175 (= lt!1773107 lt!1773116)))

(assert (=> b!4617175 (forall!10754 (toList!4861 lt!1773111) lambda!189829)))

(declare-fun lt!1773109 () Unit!110516)

(declare-fun Unit!110596 () Unit!110516)

(assert (=> b!4617175 (= lt!1773109 Unit!110596)))

(assert (=> b!4617175 (forall!10754 (t!358521 oldBucket!40) lambda!189829)))

(declare-fun lt!1773123 () Unit!110516)

(declare-fun Unit!110597 () Unit!110516)

(assert (=> b!4617175 (= lt!1773123 Unit!110597)))

(declare-fun lt!1773114 () Unit!110516)

(declare-fun Unit!110598 () Unit!110516)

(assert (=> b!4617175 (= lt!1773114 Unit!110598)))

(declare-fun lt!1773124 () Unit!110516)

(assert (=> b!4617175 (= lt!1773124 (forallContained!2967 (toList!4861 lt!1773111) lambda!189829 (h!57405 oldBucket!40)))))

(assert (=> b!4617175 (contains!14350 lt!1773111 (_1!29413 (h!57405 oldBucket!40)))))

(declare-fun lt!1773105 () Unit!110516)

(declare-fun Unit!110599 () Unit!110516)

(assert (=> b!4617175 (= lt!1773105 Unit!110599)))

(assert (=> b!4617175 (contains!14350 lt!1773115 (_1!29413 (h!57405 oldBucket!40)))))

(declare-fun lt!1773110 () Unit!110516)

(declare-fun Unit!110600 () Unit!110516)

(assert (=> b!4617175 (= lt!1773110 Unit!110600)))

(assert (=> b!4617175 (forall!10754 oldBucket!40 lambda!189829)))

(declare-fun lt!1773118 () Unit!110516)

(declare-fun Unit!110601 () Unit!110516)

(assert (=> b!4617175 (= lt!1773118 Unit!110601)))

(declare-fun call!321984 () Bool)

(assert (=> b!4617175 call!321984))

(declare-fun lt!1773108 () Unit!110516)

(declare-fun Unit!110602 () Unit!110516)

(assert (=> b!4617175 (= lt!1773108 Unit!110602)))

(declare-fun lt!1773113 () Unit!110516)

(declare-fun Unit!110603 () Unit!110516)

(assert (=> b!4617175 (= lt!1773113 Unit!110603)))

(declare-fun lt!1773120 () Unit!110516)

(assert (=> b!4617175 (= lt!1773120 (addForallContainsKeyThenBeforeAdding!474 (ListMap!4166 Nil!51387) lt!1773115 (_1!29413 (h!57405 oldBucket!40)) (_2!29413 (h!57405 oldBucket!40))))))

(assert (=> b!4617175 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189829)))

(declare-fun lt!1773119 () Unit!110516)

(assert (=> b!4617175 (= lt!1773119 lt!1773120)))

(declare-fun call!321985 () Bool)

(assert (=> b!4617175 call!321985))

(declare-fun lt!1773121 () Unit!110516)

(declare-fun Unit!110604 () Unit!110516)

(assert (=> b!4617175 (= lt!1773121 Unit!110604)))

(declare-fun res!1934688 () Bool)

(assert (=> b!4617175 (= res!1934688 (forall!10754 oldBucket!40 lambda!189829))))

(declare-fun e!2880032 () Bool)

(assert (=> b!4617175 (=> (not res!1934688) (not e!2880032))))

(assert (=> b!4617175 e!2880032))

(declare-fun lt!1773122 () Unit!110516)

(declare-fun Unit!110605 () Unit!110516)

(assert (=> b!4617175 (= lt!1773122 Unit!110605)))

(declare-fun bm!321978 () Bool)

(assert (=> bm!321978 (= call!321984 (forall!10754 (ite c!790476 (toList!4861 (ListMap!4166 Nil!51387)) (toList!4861 lt!1773111)) (ite c!790476 lambda!189827 lambda!189829)))))

(declare-fun b!4617176 () Bool)

(assert (=> b!4617176 (= e!2880032 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189829))))

(declare-fun b!4617177 () Bool)

(declare-fun res!1934689 () Bool)

(assert (=> b!4617177 (=> (not res!1934689) (not e!2880034))))

(assert (=> b!4617177 (= res!1934689 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189830))))

(declare-fun bm!321979 () Bool)

(assert (=> bm!321979 (= call!321985 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) (ite c!790476 lambda!189827 lambda!189829)))))

(declare-fun bm!321980 () Bool)

(assert (=> bm!321980 (= call!321983 (lemmaContainsAllItsOwnKeys!475 (ListMap!4166 Nil!51387)))))

(assert (=> b!4617178 (= e!2880033 (ListMap!4166 Nil!51387))))

(declare-fun lt!1773117 () Unit!110516)

(assert (=> b!4617178 (= lt!1773117 call!321983)))

(assert (=> b!4617178 call!321985))

(declare-fun lt!1773125 () Unit!110516)

(assert (=> b!4617178 (= lt!1773125 lt!1773117)))

(assert (=> b!4617178 call!321984))

(declare-fun lt!1773106 () Unit!110516)

(declare-fun Unit!110606 () Unit!110516)

(assert (=> b!4617178 (= lt!1773106 Unit!110606)))

(assert (= (and d!1454412 c!790476) b!4617178))

(assert (= (and d!1454412 (not c!790476)) b!4617175))

(assert (= (and b!4617175 res!1934688) b!4617176))

(assert (= (or b!4617178 b!4617175) bm!321980))

(assert (= (or b!4617178 b!4617175) bm!321979))

(assert (= (or b!4617178 b!4617175) bm!321978))

(assert (= (and d!1454412 res!1934690) b!4617177))

(assert (= (and b!4617177 res!1934689) b!4617174))

(declare-fun m!5452413 () Bool)

(assert (=> b!4617176 m!5452413))

(assert (=> bm!321980 m!5452379))

(declare-fun m!5452415 () Bool)

(assert (=> d!1454412 m!5452415))

(assert (=> d!1454412 m!5451743))

(declare-fun m!5452417 () Bool)

(assert (=> bm!321979 m!5452417))

(declare-fun m!5452419 () Bool)

(assert (=> b!4617175 m!5452419))

(declare-fun m!5452421 () Bool)

(assert (=> b!4617175 m!5452421))

(declare-fun m!5452423 () Bool)

(assert (=> b!4617175 m!5452423))

(declare-fun m!5452425 () Bool)

(assert (=> b!4617175 m!5452425))

(declare-fun m!5452427 () Bool)

(assert (=> b!4617175 m!5452427))

(declare-fun m!5452429 () Bool)

(assert (=> b!4617175 m!5452429))

(declare-fun m!5452431 () Bool)

(assert (=> b!4617175 m!5452431))

(assert (=> b!4617175 m!5452431))

(declare-fun m!5452433 () Bool)

(assert (=> b!4617175 m!5452433))

(declare-fun m!5452435 () Bool)

(assert (=> b!4617175 m!5452435))

(assert (=> b!4617175 m!5452421))

(declare-fun m!5452437 () Bool)

(assert (=> b!4617175 m!5452437))

(assert (=> b!4617175 m!5452413))

(declare-fun m!5452439 () Bool)

(assert (=> b!4617174 m!5452439))

(declare-fun m!5452441 () Bool)

(assert (=> bm!321978 m!5452441))

(declare-fun m!5452443 () Bool)

(assert (=> b!4617177 m!5452443))

(assert (=> b!4616883 d!1454412))

(declare-fun d!1454414 () Bool)

(assert (=> d!1454414 (eq!791 (addToMapMapFromBucket!909 (Cons!51387 lt!1772711 lt!1772708) (ListMap!4166 Nil!51387)) (+!1833 (addToMapMapFromBucket!909 lt!1772708 (ListMap!4166 Nil!51387)) lt!1772711))))

(declare-fun lt!1773128 () Unit!110516)

(declare-fun choose!31107 (tuple2!52238 List!51511 ListMap!4165) Unit!110516)

(assert (=> d!1454414 (= lt!1773128 (choose!31107 lt!1772711 lt!1772708 (ListMap!4166 Nil!51387)))))

(assert (=> d!1454414 (noDuplicateKeys!1448 lt!1772708)))

(assert (=> d!1454414 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!42 lt!1772711 lt!1772708 (ListMap!4166 Nil!51387)) lt!1773128)))

(declare-fun bs!1019102 () Bool)

(assert (= bs!1019102 d!1454414))

(assert (=> bs!1019102 m!5451769))

(declare-fun m!5452445 () Bool)

(assert (=> bs!1019102 m!5452445))

(declare-fun m!5452447 () Bool)

(assert (=> bs!1019102 m!5452447))

(assert (=> bs!1019102 m!5451751))

(declare-fun m!5452449 () Bool)

(assert (=> bs!1019102 m!5452449))

(declare-fun m!5452451 () Bool)

(assert (=> bs!1019102 m!5452451))

(assert (=> bs!1019102 m!5451769))

(assert (=> bs!1019102 m!5452449))

(assert (=> bs!1019102 m!5451751))

(assert (=> b!4616883 d!1454414))

(declare-fun d!1454416 () Bool)

(declare-fun e!2880035 () Bool)

(assert (=> d!1454416 e!2880035))

(declare-fun res!1934692 () Bool)

(assert (=> d!1454416 (=> (not res!1934692) (not e!2880035))))

(declare-fun lt!1773129 () ListMap!4165)

(assert (=> d!1454416 (= res!1934692 (contains!14350 lt!1773129 (_1!29413 lt!1772711)))))

(declare-fun lt!1773130 () List!51511)

(assert (=> d!1454416 (= lt!1773129 (ListMap!4166 lt!1773130))))

(declare-fun lt!1773131 () Unit!110516)

(declare-fun lt!1773132 () Unit!110516)

(assert (=> d!1454416 (= lt!1773131 lt!1773132)))

(assert (=> d!1454416 (= (getValueByKey!1390 lt!1773130 (_1!29413 lt!1772711)) (Some!11475 (_2!29413 lt!1772711)))))

(assert (=> d!1454416 (= lt!1773132 (lemmaContainsTupThenGetReturnValue!826 lt!1773130 (_1!29413 lt!1772711) (_2!29413 lt!1772711)))))

(assert (=> d!1454416 (= lt!1773130 (insertNoDuplicatedKeys!334 (toList!4861 lt!1772714) (_1!29413 lt!1772711) (_2!29413 lt!1772711)))))

(assert (=> d!1454416 (= (+!1833 lt!1772714 lt!1772711) lt!1773129)))

(declare-fun b!4617179 () Bool)

(declare-fun res!1934691 () Bool)

(assert (=> b!4617179 (=> (not res!1934691) (not e!2880035))))

(assert (=> b!4617179 (= res!1934691 (= (getValueByKey!1390 (toList!4861 lt!1773129) (_1!29413 lt!1772711)) (Some!11475 (_2!29413 lt!1772711))))))

(declare-fun b!4617180 () Bool)

(assert (=> b!4617180 (= e!2880035 (contains!14354 (toList!4861 lt!1773129) lt!1772711))))

(assert (= (and d!1454416 res!1934692) b!4617179))

(assert (= (and b!4617179 res!1934691) b!4617180))

(declare-fun m!5452453 () Bool)

(assert (=> d!1454416 m!5452453))

(declare-fun m!5452455 () Bool)

(assert (=> d!1454416 m!5452455))

(declare-fun m!5452457 () Bool)

(assert (=> d!1454416 m!5452457))

(declare-fun m!5452459 () Bool)

(assert (=> d!1454416 m!5452459))

(declare-fun m!5452461 () Bool)

(assert (=> b!4617179 m!5452461))

(declare-fun m!5452463 () Bool)

(assert (=> b!4617180 m!5452463))

(assert (=> b!4616883 d!1454416))

(declare-fun d!1454418 () Bool)

(assert (=> d!1454418 (= (eq!791 (addToMapMapFromBucket!909 (Cons!51387 lt!1772711 lt!1772708) (ListMap!4166 Nil!51387)) (+!1833 lt!1772714 lt!1772711)) (= (content!8740 (toList!4861 (addToMapMapFromBucket!909 (Cons!51387 lt!1772711 lt!1772708) (ListMap!4166 Nil!51387)))) (content!8740 (toList!4861 (+!1833 lt!1772714 lt!1772711)))))))

(declare-fun bs!1019103 () Bool)

(assert (= bs!1019103 d!1454418))

(declare-fun m!5452465 () Bool)

(assert (=> bs!1019103 m!5452465))

(declare-fun m!5452467 () Bool)

(assert (=> bs!1019103 m!5452467))

(assert (=> b!4616883 d!1454418))

(declare-fun d!1454420 () Bool)

(assert (=> d!1454420 (= (eq!791 lt!1772717 lt!1772710) (= (content!8740 (toList!4861 lt!1772717)) (content!8740 (toList!4861 lt!1772710))))))

(declare-fun bs!1019104 () Bool)

(assert (= bs!1019104 d!1454420))

(assert (=> bs!1019104 m!5452299))

(declare-fun m!5452469 () Bool)

(assert (=> bs!1019104 m!5452469))

(assert (=> b!4616895 d!1454420))

(declare-fun d!1454422 () Bool)

(declare-fun res!1934693 () Bool)

(declare-fun e!2880036 () Bool)

(assert (=> d!1454422 (=> res!1934693 e!2880036)))

(assert (=> d!1454422 (= res!1934693 (not ((_ is Cons!51387) oldBucket!40)))))

(assert (=> d!1454422 (= (noDuplicateKeys!1448 oldBucket!40) e!2880036)))

(declare-fun b!4617181 () Bool)

(declare-fun e!2880037 () Bool)

(assert (=> b!4617181 (= e!2880036 e!2880037)))

(declare-fun res!1934694 () Bool)

(assert (=> b!4617181 (=> (not res!1934694) (not e!2880037))))

(assert (=> b!4617181 (= res!1934694 (not (containsKey!2334 (t!358521 oldBucket!40) (_1!29413 (h!57405 oldBucket!40)))))))

(declare-fun b!4617182 () Bool)

(assert (=> b!4617182 (= e!2880037 (noDuplicateKeys!1448 (t!358521 oldBucket!40)))))

(assert (= (and d!1454422 (not res!1934693)) b!4617181))

(assert (= (and b!4617181 res!1934694) b!4617182))

(declare-fun m!5452471 () Bool)

(assert (=> b!4617181 m!5452471))

(declare-fun m!5452473 () Bool)

(assert (=> b!4617182 m!5452473))

(assert (=> start!461964 d!1454422))

(declare-fun d!1454424 () Bool)

(declare-fun e!2880038 () Bool)

(assert (=> d!1454424 e!2880038))

(declare-fun res!1934695 () Bool)

(assert (=> d!1454424 (=> (not res!1934695) (not e!2880038))))

(declare-fun lt!1773133 () ListMap!4165)

(assert (=> d!1454424 (= res!1934695 (not (contains!14350 lt!1773133 key!4968)))))

(assert (=> d!1454424 (= lt!1773133 (ListMap!4166 (removePresrvNoDuplicatedKeys!248 (toList!4861 lt!1772705) key!4968)))))

(assert (=> d!1454424 (= (-!538 lt!1772705 key!4968) lt!1773133)))

(declare-fun b!4617183 () Bool)

(assert (=> b!4617183 (= e!2880038 (= ((_ map and) (content!8741 (keys!18065 lt!1772705)) ((_ map not) (store ((as const (Array K!12770 Bool)) false) key!4968 true))) (content!8741 (keys!18065 lt!1773133))))))

(assert (= (and d!1454424 res!1934695) b!4617183))

(declare-fun m!5452475 () Bool)

(assert (=> d!1454424 m!5452475))

(declare-fun m!5452477 () Bool)

(assert (=> d!1454424 m!5452477))

(assert (=> b!4617183 m!5452305))

(declare-fun m!5452479 () Bool)

(assert (=> b!4617183 m!5452479))

(declare-fun m!5452481 () Bool)

(assert (=> b!4617183 m!5452481))

(assert (=> b!4617183 m!5452479))

(declare-fun m!5452483 () Bool)

(assert (=> b!4617183 m!5452483))

(assert (=> b!4617183 m!5452483))

(declare-fun m!5452485 () Bool)

(assert (=> b!4617183 m!5452485))

(assert (=> b!4616884 d!1454424))

(declare-fun d!1454426 () Bool)

(declare-fun e!2880039 () Bool)

(assert (=> d!1454426 e!2880039))

(declare-fun res!1934696 () Bool)

(assert (=> d!1454426 (=> (not res!1934696) (not e!2880039))))

(declare-fun lt!1773134 () ListMap!4165)

(assert (=> d!1454426 (= res!1934696 (not (contains!14350 lt!1773134 key!4968)))))

(assert (=> d!1454426 (= lt!1773134 (ListMap!4166 (removePresrvNoDuplicatedKeys!248 (toList!4861 (+!1833 lt!1772714 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40))))) key!4968)))))

(assert (=> d!1454426 (= (-!538 (+!1833 lt!1772714 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))) key!4968) lt!1773134)))

(declare-fun b!4617184 () Bool)

(assert (=> b!4617184 (= e!2880039 (= ((_ map and) (content!8741 (keys!18065 (+!1833 lt!1772714 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))))) ((_ map not) (store ((as const (Array K!12770 Bool)) false) key!4968 true))) (content!8741 (keys!18065 lt!1773134))))))

(assert (= (and d!1454426 res!1934696) b!4617184))

(declare-fun m!5452487 () Bool)

(assert (=> d!1454426 m!5452487))

(declare-fun m!5452489 () Bool)

(assert (=> d!1454426 m!5452489))

(assert (=> b!4617184 m!5452305))

(declare-fun m!5452491 () Bool)

(assert (=> b!4617184 m!5452491))

(declare-fun m!5452493 () Bool)

(assert (=> b!4617184 m!5452493))

(assert (=> b!4617184 m!5451777))

(assert (=> b!4617184 m!5452491))

(declare-fun m!5452495 () Bool)

(assert (=> b!4617184 m!5452495))

(assert (=> b!4617184 m!5452495))

(declare-fun m!5452497 () Bool)

(assert (=> b!4617184 m!5452497))

(assert (=> b!4616884 d!1454426))

(declare-fun d!1454428 () Bool)

(declare-fun e!2880040 () Bool)

(assert (=> d!1454428 e!2880040))

(declare-fun res!1934698 () Bool)

(assert (=> d!1454428 (=> (not res!1934698) (not e!2880040))))

(declare-fun lt!1773135 () ListMap!4165)

(assert (=> d!1454428 (= res!1934698 (contains!14350 lt!1773135 (_1!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40))))))))

(declare-fun lt!1773136 () List!51511)

(assert (=> d!1454428 (= lt!1773135 (ListMap!4166 lt!1773136))))

(declare-fun lt!1773137 () Unit!110516)

(declare-fun lt!1773138 () Unit!110516)

(assert (=> d!1454428 (= lt!1773137 lt!1773138)))

(assert (=> d!1454428 (= (getValueByKey!1390 lt!1773136 (_1!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40))))) (Some!11475 (_2!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40))))))))

(assert (=> d!1454428 (= lt!1773138 (lemmaContainsTupThenGetReturnValue!826 lt!1773136 (_1!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))) (_2!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40))))))))

(assert (=> d!1454428 (= lt!1773136 (insertNoDuplicatedKeys!334 (toList!4861 lt!1772714) (_1!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))) (_2!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40))))))))

(assert (=> d!1454428 (= (+!1833 lt!1772714 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))) lt!1773135)))

(declare-fun b!4617185 () Bool)

(declare-fun res!1934697 () Bool)

(assert (=> b!4617185 (=> (not res!1934697) (not e!2880040))))

(assert (=> b!4617185 (= res!1934697 (= (getValueByKey!1390 (toList!4861 lt!1773135) (_1!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40))))) (Some!11475 (_2!29413 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))))))))

(declare-fun b!4617186 () Bool)

(assert (=> b!4617186 (= e!2880040 (contains!14354 (toList!4861 lt!1773135) (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))))))

(assert (= (and d!1454428 res!1934698) b!4617185))

(assert (= (and b!4617185 res!1934697) b!4617186))

(declare-fun m!5452499 () Bool)

(assert (=> d!1454428 m!5452499))

(declare-fun m!5452501 () Bool)

(assert (=> d!1454428 m!5452501))

(declare-fun m!5452503 () Bool)

(assert (=> d!1454428 m!5452503))

(declare-fun m!5452505 () Bool)

(assert (=> d!1454428 m!5452505))

(declare-fun m!5452507 () Bool)

(assert (=> b!4617185 m!5452507))

(declare-fun m!5452509 () Bool)

(assert (=> b!4617186 m!5452509))

(assert (=> b!4616884 d!1454428))

(declare-fun d!1454430 () Bool)

(assert (=> d!1454430 (= (-!538 (+!1833 lt!1772714 (tuple2!52239 key!4968 (_2!29413 (h!57405 oldBucket!40)))) key!4968) lt!1772714)))

(declare-fun lt!1773141 () Unit!110516)

(declare-fun choose!31108 (ListMap!4165 K!12770 V!13016) Unit!110516)

(assert (=> d!1454430 (= lt!1773141 (choose!31108 lt!1772714 key!4968 (_2!29413 (h!57405 oldBucket!40))))))

(assert (=> d!1454430 (not (contains!14350 lt!1772714 key!4968))))

(assert (=> d!1454430 (= (addThenRemoveForNewKeyIsSame!21 lt!1772714 key!4968 (_2!29413 (h!57405 oldBucket!40))) lt!1773141)))

(declare-fun bs!1019105 () Bool)

(assert (= bs!1019105 d!1454430))

(assert (=> bs!1019105 m!5451777))

(assert (=> bs!1019105 m!5451777))

(assert (=> bs!1019105 m!5451779))

(declare-fun m!5452511 () Bool)

(assert (=> bs!1019105 m!5452511))

(assert (=> bs!1019105 m!5451721))

(assert (=> b!4616884 d!1454430))

(declare-fun bs!1019106 () Bool)

(declare-fun b!4617191 () Bool)

(assert (= bs!1019106 (and b!4617191 b!4617173)))

(declare-fun lambda!189831 () Int)

(assert (=> bs!1019106 (= lambda!189831 lambda!189823)))

(declare-fun bs!1019107 () Bool)

(assert (= bs!1019107 (and b!4617191 b!4617040)))

(assert (=> bs!1019107 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189831 lambda!189792))))

(assert (=> bs!1019107 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189831 lambda!189793))))

(declare-fun bs!1019108 () Bool)

(assert (= bs!1019108 (and b!4617191 b!4617170)))

(assert (=> bs!1019108 (= lambda!189831 lambda!189824)))

(declare-fun bs!1019109 () Bool)

(assert (= bs!1019109 (and b!4617191 d!1454306)))

(assert (=> bs!1019109 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189831 lambda!189795))))

(declare-fun bs!1019110 () Bool)

(assert (= bs!1019110 (and b!4617191 b!4617043)))

(assert (=> bs!1019110 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189831 lambda!189789))))

(declare-fun bs!1019111 () Bool)

(assert (= bs!1019111 (and b!4617191 d!1454376)))

(assert (=> bs!1019111 (not (= lambda!189831 lambda!189818))))

(assert (=> bs!1019108 (= (= (ListMap!4166 Nil!51387) lt!1773094) (= lambda!189831 lambda!189825))))

(declare-fun bs!1019112 () Bool)

(assert (= bs!1019112 (and b!4617191 d!1454408)))

(assert (=> bs!1019112 (= (= (ListMap!4166 Nil!51387) lt!1773091) (= lambda!189831 lambda!189826))))

(declare-fun bs!1019113 () Bool)

(assert (= bs!1019113 (and b!4617191 d!1454396)))

(assert (=> bs!1019113 (not (= lambda!189831 lambda!189821))))

(declare-fun bs!1019114 () Bool)

(assert (= bs!1019114 (and b!4617191 b!4617178)))

(assert (=> bs!1019114 (= lambda!189831 lambda!189827)))

(declare-fun bs!1019115 () Bool)

(assert (= bs!1019115 (and b!4617191 b!4617175)))

(assert (=> bs!1019115 (= (= (ListMap!4166 Nil!51387) lt!1773115) (= lambda!189831 lambda!189829))))

(assert (=> bs!1019115 (= lambda!189831 lambda!189828)))

(declare-fun bs!1019116 () Bool)

(assert (= bs!1019116 (and b!4617191 d!1454412)))

(assert (=> bs!1019116 (= (= (ListMap!4166 Nil!51387) lt!1773112) (= lambda!189831 lambda!189830))))

(assert (=> b!4617191 true))

(declare-fun bs!1019117 () Bool)

(declare-fun b!4617188 () Bool)

(assert (= bs!1019117 (and b!4617188 b!4617173)))

(declare-fun lambda!189832 () Int)

(assert (=> bs!1019117 (= lambda!189832 lambda!189823)))

(declare-fun bs!1019118 () Bool)

(assert (= bs!1019118 (and b!4617188 b!4617040)))

(assert (=> bs!1019118 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189832 lambda!189792))))

(assert (=> bs!1019118 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189832 lambda!189793))))

(declare-fun bs!1019119 () Bool)

(assert (= bs!1019119 (and b!4617188 b!4617170)))

(assert (=> bs!1019119 (= lambda!189832 lambda!189824)))

(declare-fun bs!1019120 () Bool)

(assert (= bs!1019120 (and b!4617188 d!1454306)))

(assert (=> bs!1019120 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189832 lambda!189795))))

(declare-fun bs!1019121 () Bool)

(assert (= bs!1019121 (and b!4617188 b!4617043)))

(assert (=> bs!1019121 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189832 lambda!189789))))

(declare-fun bs!1019122 () Bool)

(assert (= bs!1019122 (and b!4617188 d!1454376)))

(assert (=> bs!1019122 (not (= lambda!189832 lambda!189818))))

(declare-fun bs!1019123 () Bool)

(assert (= bs!1019123 (and b!4617188 b!4617191)))

(assert (=> bs!1019123 (= lambda!189832 lambda!189831)))

(assert (=> bs!1019119 (= (= (ListMap!4166 Nil!51387) lt!1773094) (= lambda!189832 lambda!189825))))

(declare-fun bs!1019124 () Bool)

(assert (= bs!1019124 (and b!4617188 d!1454408)))

(assert (=> bs!1019124 (= (= (ListMap!4166 Nil!51387) lt!1773091) (= lambda!189832 lambda!189826))))

(declare-fun bs!1019125 () Bool)

(assert (= bs!1019125 (and b!4617188 d!1454396)))

(assert (=> bs!1019125 (not (= lambda!189832 lambda!189821))))

(declare-fun bs!1019126 () Bool)

(assert (= bs!1019126 (and b!4617188 b!4617178)))

(assert (=> bs!1019126 (= lambda!189832 lambda!189827)))

(declare-fun bs!1019127 () Bool)

(assert (= bs!1019127 (and b!4617188 b!4617175)))

(assert (=> bs!1019127 (= (= (ListMap!4166 Nil!51387) lt!1773115) (= lambda!189832 lambda!189829))))

(assert (=> bs!1019127 (= lambda!189832 lambda!189828)))

(declare-fun bs!1019128 () Bool)

(assert (= bs!1019128 (and b!4617188 d!1454412)))

(assert (=> bs!1019128 (= (= (ListMap!4166 Nil!51387) lt!1773112) (= lambda!189832 lambda!189830))))

(assert (=> b!4617188 true))

(declare-fun lt!1773152 () ListMap!4165)

(declare-fun lambda!189833 () Int)

(assert (=> bs!1019117 (= (= lt!1773152 (ListMap!4166 Nil!51387)) (= lambda!189833 lambda!189823))))

(assert (=> bs!1019118 (= (= lt!1773152 lt!1772702) (= lambda!189833 lambda!189792))))

(assert (=> bs!1019118 (= (= lt!1773152 lt!1772927) (= lambda!189833 lambda!189793))))

(assert (=> bs!1019119 (= (= lt!1773152 (ListMap!4166 Nil!51387)) (= lambda!189833 lambda!189824))))

(assert (=> bs!1019120 (= (= lt!1773152 lt!1772924) (= lambda!189833 lambda!189795))))

(assert (=> bs!1019121 (= (= lt!1773152 lt!1772702) (= lambda!189833 lambda!189789))))

(assert (=> bs!1019123 (= (= lt!1773152 (ListMap!4166 Nil!51387)) (= lambda!189833 lambda!189831))))

(assert (=> bs!1019119 (= (= lt!1773152 lt!1773094) (= lambda!189833 lambda!189825))))

(assert (=> bs!1019124 (= (= lt!1773152 lt!1773091) (= lambda!189833 lambda!189826))))

(assert (=> bs!1019125 (not (= lambda!189833 lambda!189821))))

(assert (=> bs!1019126 (= (= lt!1773152 (ListMap!4166 Nil!51387)) (= lambda!189833 lambda!189827))))

(assert (=> bs!1019122 (not (= lambda!189833 lambda!189818))))

(assert (=> b!4617188 (= (= lt!1773152 (ListMap!4166 Nil!51387)) (= lambda!189833 lambda!189832))))

(assert (=> bs!1019127 (= (= lt!1773152 lt!1773115) (= lambda!189833 lambda!189829))))

(assert (=> bs!1019127 (= (= lt!1773152 (ListMap!4166 Nil!51387)) (= lambda!189833 lambda!189828))))

(assert (=> bs!1019128 (= (= lt!1773152 lt!1773112) (= lambda!189833 lambda!189830))))

(assert (=> b!4617188 true))

(declare-fun bs!1019129 () Bool)

(declare-fun d!1454432 () Bool)

(assert (= bs!1019129 (and d!1454432 b!4617173)))

(declare-fun lt!1773149 () ListMap!4165)

(declare-fun lambda!189834 () Int)

(assert (=> bs!1019129 (= (= lt!1773149 (ListMap!4166 Nil!51387)) (= lambda!189834 lambda!189823))))

(declare-fun bs!1019130 () Bool)

(assert (= bs!1019130 (and d!1454432 b!4617040)))

(assert (=> bs!1019130 (= (= lt!1773149 lt!1772702) (= lambda!189834 lambda!189792))))

(assert (=> bs!1019130 (= (= lt!1773149 lt!1772927) (= lambda!189834 lambda!189793))))

(declare-fun bs!1019131 () Bool)

(assert (= bs!1019131 (and d!1454432 d!1454306)))

(assert (=> bs!1019131 (= (= lt!1773149 lt!1772924) (= lambda!189834 lambda!189795))))

(declare-fun bs!1019132 () Bool)

(assert (= bs!1019132 (and d!1454432 b!4617043)))

(assert (=> bs!1019132 (= (= lt!1773149 lt!1772702) (= lambda!189834 lambda!189789))))

(declare-fun bs!1019133 () Bool)

(assert (= bs!1019133 (and d!1454432 b!4617191)))

(assert (=> bs!1019133 (= (= lt!1773149 (ListMap!4166 Nil!51387)) (= lambda!189834 lambda!189831))))

(declare-fun bs!1019134 () Bool)

(assert (= bs!1019134 (and d!1454432 b!4617170)))

(assert (=> bs!1019134 (= (= lt!1773149 lt!1773094) (= lambda!189834 lambda!189825))))

(declare-fun bs!1019135 () Bool)

(assert (= bs!1019135 (and d!1454432 d!1454408)))

(assert (=> bs!1019135 (= (= lt!1773149 lt!1773091) (= lambda!189834 lambda!189826))))

(declare-fun bs!1019136 () Bool)

(assert (= bs!1019136 (and d!1454432 b!4617188)))

(assert (=> bs!1019136 (= (= lt!1773149 lt!1773152) (= lambda!189834 lambda!189833))))

(assert (=> bs!1019134 (= (= lt!1773149 (ListMap!4166 Nil!51387)) (= lambda!189834 lambda!189824))))

(declare-fun bs!1019137 () Bool)

(assert (= bs!1019137 (and d!1454432 d!1454396)))

(assert (=> bs!1019137 (not (= lambda!189834 lambda!189821))))

(declare-fun bs!1019138 () Bool)

(assert (= bs!1019138 (and d!1454432 b!4617178)))

(assert (=> bs!1019138 (= (= lt!1773149 (ListMap!4166 Nil!51387)) (= lambda!189834 lambda!189827))))

(declare-fun bs!1019139 () Bool)

(assert (= bs!1019139 (and d!1454432 d!1454376)))

(assert (=> bs!1019139 (not (= lambda!189834 lambda!189818))))

(assert (=> bs!1019136 (= (= lt!1773149 (ListMap!4166 Nil!51387)) (= lambda!189834 lambda!189832))))

(declare-fun bs!1019140 () Bool)

(assert (= bs!1019140 (and d!1454432 b!4617175)))

(assert (=> bs!1019140 (= (= lt!1773149 lt!1773115) (= lambda!189834 lambda!189829))))

(assert (=> bs!1019140 (= (= lt!1773149 (ListMap!4166 Nil!51387)) (= lambda!189834 lambda!189828))))

(declare-fun bs!1019141 () Bool)

(assert (= bs!1019141 (and d!1454432 d!1454412)))

(assert (=> bs!1019141 (= (= lt!1773149 lt!1773112) (= lambda!189834 lambda!189830))))

(assert (=> d!1454432 true))

(declare-fun b!4617187 () Bool)

(declare-fun e!2880043 () Bool)

(assert (=> b!4617187 (= e!2880043 (invariantList!1173 (toList!4861 lt!1773149)))))

(assert (=> d!1454432 e!2880043))

(declare-fun res!1934701 () Bool)

(assert (=> d!1454432 (=> (not res!1934701) (not e!2880043))))

(assert (=> d!1454432 (= res!1934701 (forall!10754 newBucket!224 lambda!189834))))

(declare-fun e!2880042 () ListMap!4165)

(assert (=> d!1454432 (= lt!1773149 e!2880042)))

(declare-fun c!790477 () Bool)

(assert (=> d!1454432 (= c!790477 ((_ is Nil!51387) newBucket!224))))

(assert (=> d!1454432 (noDuplicateKeys!1448 newBucket!224)))

(assert (=> d!1454432 (= (addToMapMapFromBucket!909 newBucket!224 (ListMap!4166 Nil!51387)) lt!1773149)))

(assert (=> b!4617188 (= e!2880042 lt!1773152)))

(declare-fun lt!1773148 () ListMap!4165)

(assert (=> b!4617188 (= lt!1773148 (+!1833 (ListMap!4166 Nil!51387) (h!57405 newBucket!224)))))

(assert (=> b!4617188 (= lt!1773152 (addToMapMapFromBucket!909 (t!358521 newBucket!224) (+!1833 (ListMap!4166 Nil!51387) (h!57405 newBucket!224))))))

(declare-fun lt!1773153 () Unit!110516)

(declare-fun call!321986 () Unit!110516)

(assert (=> b!4617188 (= lt!1773153 call!321986)))

(assert (=> b!4617188 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189832)))

(declare-fun lt!1773144 () Unit!110516)

(assert (=> b!4617188 (= lt!1773144 lt!1773153)))

(assert (=> b!4617188 (forall!10754 (toList!4861 lt!1773148) lambda!189833)))

(declare-fun lt!1773146 () Unit!110516)

(declare-fun Unit!110618 () Unit!110516)

(assert (=> b!4617188 (= lt!1773146 Unit!110618)))

(assert (=> b!4617188 (forall!10754 (t!358521 newBucket!224) lambda!189833)))

(declare-fun lt!1773160 () Unit!110516)

(declare-fun Unit!110619 () Unit!110516)

(assert (=> b!4617188 (= lt!1773160 Unit!110619)))

(declare-fun lt!1773151 () Unit!110516)

(declare-fun Unit!110620 () Unit!110516)

(assert (=> b!4617188 (= lt!1773151 Unit!110620)))

(declare-fun lt!1773161 () Unit!110516)

(assert (=> b!4617188 (= lt!1773161 (forallContained!2967 (toList!4861 lt!1773148) lambda!189833 (h!57405 newBucket!224)))))

(assert (=> b!4617188 (contains!14350 lt!1773148 (_1!29413 (h!57405 newBucket!224)))))

(declare-fun lt!1773142 () Unit!110516)

(declare-fun Unit!110621 () Unit!110516)

(assert (=> b!4617188 (= lt!1773142 Unit!110621)))

(assert (=> b!4617188 (contains!14350 lt!1773152 (_1!29413 (h!57405 newBucket!224)))))

(declare-fun lt!1773147 () Unit!110516)

(declare-fun Unit!110622 () Unit!110516)

(assert (=> b!4617188 (= lt!1773147 Unit!110622)))

(assert (=> b!4617188 (forall!10754 newBucket!224 lambda!189833)))

(declare-fun lt!1773155 () Unit!110516)

(declare-fun Unit!110623 () Unit!110516)

(assert (=> b!4617188 (= lt!1773155 Unit!110623)))

(declare-fun call!321987 () Bool)

(assert (=> b!4617188 call!321987))

(declare-fun lt!1773145 () Unit!110516)

(declare-fun Unit!110624 () Unit!110516)

(assert (=> b!4617188 (= lt!1773145 Unit!110624)))

(declare-fun lt!1773150 () Unit!110516)

(declare-fun Unit!110625 () Unit!110516)

(assert (=> b!4617188 (= lt!1773150 Unit!110625)))

(declare-fun lt!1773157 () Unit!110516)

(assert (=> b!4617188 (= lt!1773157 (addForallContainsKeyThenBeforeAdding!474 (ListMap!4166 Nil!51387) lt!1773152 (_1!29413 (h!57405 newBucket!224)) (_2!29413 (h!57405 newBucket!224))))))

(assert (=> b!4617188 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189833)))

(declare-fun lt!1773156 () Unit!110516)

(assert (=> b!4617188 (= lt!1773156 lt!1773157)))

(declare-fun call!321988 () Bool)

(assert (=> b!4617188 call!321988))

(declare-fun lt!1773158 () Unit!110516)

(declare-fun Unit!110626 () Unit!110516)

(assert (=> b!4617188 (= lt!1773158 Unit!110626)))

(declare-fun res!1934699 () Bool)

(assert (=> b!4617188 (= res!1934699 (forall!10754 newBucket!224 lambda!189833))))

(declare-fun e!2880041 () Bool)

(assert (=> b!4617188 (=> (not res!1934699) (not e!2880041))))

(assert (=> b!4617188 e!2880041))

(declare-fun lt!1773159 () Unit!110516)

(declare-fun Unit!110627 () Unit!110516)

(assert (=> b!4617188 (= lt!1773159 Unit!110627)))

(declare-fun bm!321981 () Bool)

(assert (=> bm!321981 (= call!321987 (forall!10754 (ite c!790477 (toList!4861 (ListMap!4166 Nil!51387)) (toList!4861 lt!1773148)) (ite c!790477 lambda!189831 lambda!189833)))))

(declare-fun b!4617189 () Bool)

(assert (=> b!4617189 (= e!2880041 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189833))))

(declare-fun b!4617190 () Bool)

(declare-fun res!1934700 () Bool)

(assert (=> b!4617190 (=> (not res!1934700) (not e!2880043))))

(assert (=> b!4617190 (= res!1934700 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189834))))

(declare-fun bm!321982 () Bool)

(assert (=> bm!321982 (= call!321988 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) (ite c!790477 lambda!189831 lambda!189833)))))

(declare-fun bm!321983 () Bool)

(assert (=> bm!321983 (= call!321986 (lemmaContainsAllItsOwnKeys!475 (ListMap!4166 Nil!51387)))))

(assert (=> b!4617191 (= e!2880042 (ListMap!4166 Nil!51387))))

(declare-fun lt!1773154 () Unit!110516)

(assert (=> b!4617191 (= lt!1773154 call!321986)))

(assert (=> b!4617191 call!321988))

(declare-fun lt!1773162 () Unit!110516)

(assert (=> b!4617191 (= lt!1773162 lt!1773154)))

(assert (=> b!4617191 call!321987))

(declare-fun lt!1773143 () Unit!110516)

(declare-fun Unit!110628 () Unit!110516)

(assert (=> b!4617191 (= lt!1773143 Unit!110628)))

(assert (= (and d!1454432 c!790477) b!4617191))

(assert (= (and d!1454432 (not c!790477)) b!4617188))

(assert (= (and b!4617188 res!1934699) b!4617189))

(assert (= (or b!4617191 b!4617188) bm!321983))

(assert (= (or b!4617191 b!4617188) bm!321982))

(assert (= (or b!4617191 b!4617188) bm!321981))

(assert (= (and d!1454432 res!1934701) b!4617190))

(assert (= (and b!4617190 res!1934700) b!4617187))

(declare-fun m!5452513 () Bool)

(assert (=> b!4617189 m!5452513))

(assert (=> bm!321983 m!5452379))

(declare-fun m!5452515 () Bool)

(assert (=> d!1454432 m!5452515))

(assert (=> d!1454432 m!5451787))

(declare-fun m!5452517 () Bool)

(assert (=> bm!321982 m!5452517))

(declare-fun m!5452519 () Bool)

(assert (=> b!4617188 m!5452519))

(declare-fun m!5452521 () Bool)

(assert (=> b!4617188 m!5452521))

(declare-fun m!5452523 () Bool)

(assert (=> b!4617188 m!5452523))

(declare-fun m!5452525 () Bool)

(assert (=> b!4617188 m!5452525))

(declare-fun m!5452527 () Bool)

(assert (=> b!4617188 m!5452527))

(declare-fun m!5452529 () Bool)

(assert (=> b!4617188 m!5452529))

(declare-fun m!5452531 () Bool)

(assert (=> b!4617188 m!5452531))

(assert (=> b!4617188 m!5452531))

(declare-fun m!5452533 () Bool)

(assert (=> b!4617188 m!5452533))

(declare-fun m!5452535 () Bool)

(assert (=> b!4617188 m!5452535))

(assert (=> b!4617188 m!5452521))

(declare-fun m!5452537 () Bool)

(assert (=> b!4617188 m!5452537))

(assert (=> b!4617188 m!5452513))

(declare-fun m!5452539 () Bool)

(assert (=> b!4617187 m!5452539))

(declare-fun m!5452541 () Bool)

(assert (=> bm!321981 m!5452541))

(declare-fun m!5452543 () Bool)

(assert (=> b!4617190 m!5452543))

(assert (=> b!4616885 d!1454432))

(declare-fun bs!1019142 () Bool)

(declare-fun b!4617196 () Bool)

(assert (= bs!1019142 (and b!4617196 b!4617173)))

(declare-fun lambda!189835 () Int)

(assert (=> bs!1019142 (= lambda!189835 lambda!189823)))

(declare-fun bs!1019143 () Bool)

(assert (= bs!1019143 (and b!4617196 b!4617040)))

(assert (=> bs!1019143 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189835 lambda!189792))))

(assert (=> bs!1019143 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189835 lambda!189793))))

(declare-fun bs!1019144 () Bool)

(assert (= bs!1019144 (and b!4617196 d!1454306)))

(assert (=> bs!1019144 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189835 lambda!189795))))

(declare-fun bs!1019145 () Bool)

(assert (= bs!1019145 (and b!4617196 d!1454432)))

(assert (=> bs!1019145 (= (= (ListMap!4166 Nil!51387) lt!1773149) (= lambda!189835 lambda!189834))))

(declare-fun bs!1019146 () Bool)

(assert (= bs!1019146 (and b!4617196 b!4617043)))

(assert (=> bs!1019146 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189835 lambda!189789))))

(declare-fun bs!1019147 () Bool)

(assert (= bs!1019147 (and b!4617196 b!4617191)))

(assert (=> bs!1019147 (= lambda!189835 lambda!189831)))

(declare-fun bs!1019148 () Bool)

(assert (= bs!1019148 (and b!4617196 b!4617170)))

(assert (=> bs!1019148 (= (= (ListMap!4166 Nil!51387) lt!1773094) (= lambda!189835 lambda!189825))))

(declare-fun bs!1019149 () Bool)

(assert (= bs!1019149 (and b!4617196 d!1454408)))

(assert (=> bs!1019149 (= (= (ListMap!4166 Nil!51387) lt!1773091) (= lambda!189835 lambda!189826))))

(declare-fun bs!1019150 () Bool)

(assert (= bs!1019150 (and b!4617196 b!4617188)))

(assert (=> bs!1019150 (= (= (ListMap!4166 Nil!51387) lt!1773152) (= lambda!189835 lambda!189833))))

(assert (=> bs!1019148 (= lambda!189835 lambda!189824)))

(declare-fun bs!1019151 () Bool)

(assert (= bs!1019151 (and b!4617196 d!1454396)))

(assert (=> bs!1019151 (not (= lambda!189835 lambda!189821))))

(declare-fun bs!1019152 () Bool)

(assert (= bs!1019152 (and b!4617196 b!4617178)))

(assert (=> bs!1019152 (= lambda!189835 lambda!189827)))

(declare-fun bs!1019153 () Bool)

(assert (= bs!1019153 (and b!4617196 d!1454376)))

(assert (=> bs!1019153 (not (= lambda!189835 lambda!189818))))

(assert (=> bs!1019150 (= lambda!189835 lambda!189832)))

(declare-fun bs!1019154 () Bool)

(assert (= bs!1019154 (and b!4617196 b!4617175)))

(assert (=> bs!1019154 (= (= (ListMap!4166 Nil!51387) lt!1773115) (= lambda!189835 lambda!189829))))

(assert (=> bs!1019154 (= lambda!189835 lambda!189828)))

(declare-fun bs!1019155 () Bool)

(assert (= bs!1019155 (and b!4617196 d!1454412)))

(assert (=> bs!1019155 (= (= (ListMap!4166 Nil!51387) lt!1773112) (= lambda!189835 lambda!189830))))

(assert (=> b!4617196 true))

(declare-fun bs!1019156 () Bool)

(declare-fun b!4617193 () Bool)

(assert (= bs!1019156 (and b!4617193 b!4617173)))

(declare-fun lambda!189836 () Int)

(assert (=> bs!1019156 (= lambda!189836 lambda!189823)))

(declare-fun bs!1019157 () Bool)

(assert (= bs!1019157 (and b!4617193 b!4617040)))

(assert (=> bs!1019157 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189836 lambda!189792))))

(assert (=> bs!1019157 (= (= (ListMap!4166 Nil!51387) lt!1772927) (= lambda!189836 lambda!189793))))

(declare-fun bs!1019158 () Bool)

(assert (= bs!1019158 (and b!4617193 d!1454306)))

(assert (=> bs!1019158 (= (= (ListMap!4166 Nil!51387) lt!1772924) (= lambda!189836 lambda!189795))))

(declare-fun bs!1019159 () Bool)

(assert (= bs!1019159 (and b!4617193 d!1454432)))

(assert (=> bs!1019159 (= (= (ListMap!4166 Nil!51387) lt!1773149) (= lambda!189836 lambda!189834))))

(declare-fun bs!1019160 () Bool)

(assert (= bs!1019160 (and b!4617193 b!4617043)))

(assert (=> bs!1019160 (= (= (ListMap!4166 Nil!51387) lt!1772702) (= lambda!189836 lambda!189789))))

(declare-fun bs!1019161 () Bool)

(assert (= bs!1019161 (and b!4617193 b!4617191)))

(assert (=> bs!1019161 (= lambda!189836 lambda!189831)))

(declare-fun bs!1019162 () Bool)

(assert (= bs!1019162 (and b!4617193 b!4617196)))

(assert (=> bs!1019162 (= lambda!189836 lambda!189835)))

(declare-fun bs!1019163 () Bool)

(assert (= bs!1019163 (and b!4617193 b!4617170)))

(assert (=> bs!1019163 (= (= (ListMap!4166 Nil!51387) lt!1773094) (= lambda!189836 lambda!189825))))

(declare-fun bs!1019164 () Bool)

(assert (= bs!1019164 (and b!4617193 d!1454408)))

(assert (=> bs!1019164 (= (= (ListMap!4166 Nil!51387) lt!1773091) (= lambda!189836 lambda!189826))))

(declare-fun bs!1019165 () Bool)

(assert (= bs!1019165 (and b!4617193 b!4617188)))

(assert (=> bs!1019165 (= (= (ListMap!4166 Nil!51387) lt!1773152) (= lambda!189836 lambda!189833))))

(assert (=> bs!1019163 (= lambda!189836 lambda!189824)))

(declare-fun bs!1019166 () Bool)

(assert (= bs!1019166 (and b!4617193 d!1454396)))

(assert (=> bs!1019166 (not (= lambda!189836 lambda!189821))))

(declare-fun bs!1019167 () Bool)

(assert (= bs!1019167 (and b!4617193 b!4617178)))

(assert (=> bs!1019167 (= lambda!189836 lambda!189827)))

(declare-fun bs!1019168 () Bool)

(assert (= bs!1019168 (and b!4617193 d!1454376)))

(assert (=> bs!1019168 (not (= lambda!189836 lambda!189818))))

(assert (=> bs!1019165 (= lambda!189836 lambda!189832)))

(declare-fun bs!1019169 () Bool)

(assert (= bs!1019169 (and b!4617193 b!4617175)))

(assert (=> bs!1019169 (= (= (ListMap!4166 Nil!51387) lt!1773115) (= lambda!189836 lambda!189829))))

(assert (=> bs!1019169 (= lambda!189836 lambda!189828)))

(declare-fun bs!1019170 () Bool)

(assert (= bs!1019170 (and b!4617193 d!1454412)))

(assert (=> bs!1019170 (= (= (ListMap!4166 Nil!51387) lt!1773112) (= lambda!189836 lambda!189830))))

(assert (=> b!4617193 true))

(declare-fun lambda!189837 () Int)

(declare-fun lt!1773173 () ListMap!4165)

(assert (=> bs!1019157 (= (= lt!1773173 lt!1772702) (= lambda!189837 lambda!189792))))

(assert (=> bs!1019157 (= (= lt!1773173 lt!1772927) (= lambda!189837 lambda!189793))))

(assert (=> bs!1019158 (= (= lt!1773173 lt!1772924) (= lambda!189837 lambda!189795))))

(assert (=> bs!1019159 (= (= lt!1773173 lt!1773149) (= lambda!189837 lambda!189834))))

(assert (=> bs!1019160 (= (= lt!1773173 lt!1772702) (= lambda!189837 lambda!189789))))

(assert (=> bs!1019161 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189831))))

(assert (=> bs!1019162 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189835))))

(assert (=> bs!1019156 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189823))))

(assert (=> b!4617193 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189836))))

(assert (=> bs!1019163 (= (= lt!1773173 lt!1773094) (= lambda!189837 lambda!189825))))

(assert (=> bs!1019164 (= (= lt!1773173 lt!1773091) (= lambda!189837 lambda!189826))))

(assert (=> bs!1019165 (= (= lt!1773173 lt!1773152) (= lambda!189837 lambda!189833))))

(assert (=> bs!1019163 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189824))))

(assert (=> bs!1019166 (not (= lambda!189837 lambda!189821))))

(assert (=> bs!1019167 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189827))))

(assert (=> bs!1019168 (not (= lambda!189837 lambda!189818))))

(assert (=> bs!1019165 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189832))))

(assert (=> bs!1019169 (= (= lt!1773173 lt!1773115) (= lambda!189837 lambda!189829))))

(assert (=> bs!1019169 (= (= lt!1773173 (ListMap!4166 Nil!51387)) (= lambda!189837 lambda!189828))))

(assert (=> bs!1019170 (= (= lt!1773173 lt!1773112) (= lambda!189837 lambda!189830))))

(assert (=> b!4617193 true))

(declare-fun bs!1019171 () Bool)

(declare-fun d!1454434 () Bool)

(assert (= bs!1019171 (and d!1454434 b!4617040)))

(declare-fun lt!1773170 () ListMap!4165)

(declare-fun lambda!189838 () Int)

(assert (=> bs!1019171 (= (= lt!1773170 lt!1772702) (= lambda!189838 lambda!189792))))

(assert (=> bs!1019171 (= (= lt!1773170 lt!1772927) (= lambda!189838 lambda!189793))))

(declare-fun bs!1019172 () Bool)

(assert (= bs!1019172 (and d!1454434 d!1454306)))

(assert (=> bs!1019172 (= (= lt!1773170 lt!1772924) (= lambda!189838 lambda!189795))))

(declare-fun bs!1019173 () Bool)

(assert (= bs!1019173 (and d!1454434 d!1454432)))

(assert (=> bs!1019173 (= (= lt!1773170 lt!1773149) (= lambda!189838 lambda!189834))))

(declare-fun bs!1019174 () Bool)

(assert (= bs!1019174 (and d!1454434 b!4617043)))

(assert (=> bs!1019174 (= (= lt!1773170 lt!1772702) (= lambda!189838 lambda!189789))))

(declare-fun bs!1019175 () Bool)

(assert (= bs!1019175 (and d!1454434 b!4617191)))

(assert (=> bs!1019175 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189831))))

(declare-fun bs!1019176 () Bool)

(assert (= bs!1019176 (and d!1454434 b!4617196)))

(assert (=> bs!1019176 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189835))))

(declare-fun bs!1019177 () Bool)

(assert (= bs!1019177 (and d!1454434 b!4617193)))

(assert (=> bs!1019177 (= (= lt!1773170 lt!1773173) (= lambda!189838 lambda!189837))))

(declare-fun bs!1019178 () Bool)

(assert (= bs!1019178 (and d!1454434 b!4617173)))

(assert (=> bs!1019178 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189823))))

(assert (=> bs!1019177 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189836))))

(declare-fun bs!1019179 () Bool)

(assert (= bs!1019179 (and d!1454434 b!4617170)))

(assert (=> bs!1019179 (= (= lt!1773170 lt!1773094) (= lambda!189838 lambda!189825))))

(declare-fun bs!1019180 () Bool)

(assert (= bs!1019180 (and d!1454434 d!1454408)))

(assert (=> bs!1019180 (= (= lt!1773170 lt!1773091) (= lambda!189838 lambda!189826))))

(declare-fun bs!1019181 () Bool)

(assert (= bs!1019181 (and d!1454434 b!4617188)))

(assert (=> bs!1019181 (= (= lt!1773170 lt!1773152) (= lambda!189838 lambda!189833))))

(assert (=> bs!1019179 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189824))))

(declare-fun bs!1019182 () Bool)

(assert (= bs!1019182 (and d!1454434 d!1454396)))

(assert (=> bs!1019182 (not (= lambda!189838 lambda!189821))))

(declare-fun bs!1019183 () Bool)

(assert (= bs!1019183 (and d!1454434 b!4617178)))

(assert (=> bs!1019183 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189827))))

(declare-fun bs!1019184 () Bool)

(assert (= bs!1019184 (and d!1454434 d!1454376)))

(assert (=> bs!1019184 (not (= lambda!189838 lambda!189818))))

(assert (=> bs!1019181 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189832))))

(declare-fun bs!1019185 () Bool)

(assert (= bs!1019185 (and d!1454434 b!4617175)))

(assert (=> bs!1019185 (= (= lt!1773170 lt!1773115) (= lambda!189838 lambda!189829))))

(assert (=> bs!1019185 (= (= lt!1773170 (ListMap!4166 Nil!51387)) (= lambda!189838 lambda!189828))))

(declare-fun bs!1019186 () Bool)

(assert (= bs!1019186 (and d!1454434 d!1454412)))

(assert (=> bs!1019186 (= (= lt!1773170 lt!1773112) (= lambda!189838 lambda!189830))))

(assert (=> d!1454434 true))

(declare-fun b!4617192 () Bool)

(declare-fun e!2880046 () Bool)

(assert (=> b!4617192 (= e!2880046 (invariantList!1173 (toList!4861 lt!1773170)))))

(assert (=> d!1454434 e!2880046))

(declare-fun res!1934704 () Bool)

(assert (=> d!1454434 (=> (not res!1934704) (not e!2880046))))

(assert (=> d!1454434 (= res!1934704 (forall!10754 lt!1772708 lambda!189838))))

(declare-fun e!2880045 () ListMap!4165)

(assert (=> d!1454434 (= lt!1773170 e!2880045)))

(declare-fun c!790478 () Bool)

(assert (=> d!1454434 (= c!790478 ((_ is Nil!51387) lt!1772708))))

(assert (=> d!1454434 (noDuplicateKeys!1448 lt!1772708)))

(assert (=> d!1454434 (= (addToMapMapFromBucket!909 lt!1772708 (ListMap!4166 Nil!51387)) lt!1773170)))

(assert (=> b!4617193 (= e!2880045 lt!1773173)))

(declare-fun lt!1773169 () ListMap!4165)

(assert (=> b!4617193 (= lt!1773169 (+!1833 (ListMap!4166 Nil!51387) (h!57405 lt!1772708)))))

(assert (=> b!4617193 (= lt!1773173 (addToMapMapFromBucket!909 (t!358521 lt!1772708) (+!1833 (ListMap!4166 Nil!51387) (h!57405 lt!1772708))))))

(declare-fun lt!1773174 () Unit!110516)

(declare-fun call!321989 () Unit!110516)

(assert (=> b!4617193 (= lt!1773174 call!321989)))

(assert (=> b!4617193 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189836)))

(declare-fun lt!1773165 () Unit!110516)

(assert (=> b!4617193 (= lt!1773165 lt!1773174)))

(assert (=> b!4617193 (forall!10754 (toList!4861 lt!1773169) lambda!189837)))

(declare-fun lt!1773167 () Unit!110516)

(declare-fun Unit!110629 () Unit!110516)

(assert (=> b!4617193 (= lt!1773167 Unit!110629)))

(assert (=> b!4617193 (forall!10754 (t!358521 lt!1772708) lambda!189837)))

(declare-fun lt!1773181 () Unit!110516)

(declare-fun Unit!110630 () Unit!110516)

(assert (=> b!4617193 (= lt!1773181 Unit!110630)))

(declare-fun lt!1773172 () Unit!110516)

(declare-fun Unit!110631 () Unit!110516)

(assert (=> b!4617193 (= lt!1773172 Unit!110631)))

(declare-fun lt!1773182 () Unit!110516)

(assert (=> b!4617193 (= lt!1773182 (forallContained!2967 (toList!4861 lt!1773169) lambda!189837 (h!57405 lt!1772708)))))

(assert (=> b!4617193 (contains!14350 lt!1773169 (_1!29413 (h!57405 lt!1772708)))))

(declare-fun lt!1773163 () Unit!110516)

(declare-fun Unit!110632 () Unit!110516)

(assert (=> b!4617193 (= lt!1773163 Unit!110632)))

(assert (=> b!4617193 (contains!14350 lt!1773173 (_1!29413 (h!57405 lt!1772708)))))

(declare-fun lt!1773168 () Unit!110516)

(declare-fun Unit!110633 () Unit!110516)

(assert (=> b!4617193 (= lt!1773168 Unit!110633)))

(assert (=> b!4617193 (forall!10754 lt!1772708 lambda!189837)))

(declare-fun lt!1773176 () Unit!110516)

(declare-fun Unit!110634 () Unit!110516)

(assert (=> b!4617193 (= lt!1773176 Unit!110634)))

(declare-fun call!321990 () Bool)

(assert (=> b!4617193 call!321990))

(declare-fun lt!1773166 () Unit!110516)

(declare-fun Unit!110635 () Unit!110516)

(assert (=> b!4617193 (= lt!1773166 Unit!110635)))

(declare-fun lt!1773171 () Unit!110516)

(declare-fun Unit!110636 () Unit!110516)

(assert (=> b!4617193 (= lt!1773171 Unit!110636)))

(declare-fun lt!1773178 () Unit!110516)

(assert (=> b!4617193 (= lt!1773178 (addForallContainsKeyThenBeforeAdding!474 (ListMap!4166 Nil!51387) lt!1773173 (_1!29413 (h!57405 lt!1772708)) (_2!29413 (h!57405 lt!1772708))))))

(assert (=> b!4617193 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189837)))

(declare-fun lt!1773177 () Unit!110516)

(assert (=> b!4617193 (= lt!1773177 lt!1773178)))

(declare-fun call!321991 () Bool)

(assert (=> b!4617193 call!321991))

(declare-fun lt!1773179 () Unit!110516)

(declare-fun Unit!110637 () Unit!110516)

(assert (=> b!4617193 (= lt!1773179 Unit!110637)))

(declare-fun res!1934702 () Bool)

(assert (=> b!4617193 (= res!1934702 (forall!10754 lt!1772708 lambda!189837))))

(declare-fun e!2880044 () Bool)

(assert (=> b!4617193 (=> (not res!1934702) (not e!2880044))))

(assert (=> b!4617193 e!2880044))

(declare-fun lt!1773180 () Unit!110516)

(declare-fun Unit!110638 () Unit!110516)

(assert (=> b!4617193 (= lt!1773180 Unit!110638)))

(declare-fun bm!321984 () Bool)

(assert (=> bm!321984 (= call!321990 (forall!10754 (ite c!790478 (toList!4861 (ListMap!4166 Nil!51387)) (toList!4861 lt!1773169)) (ite c!790478 lambda!189835 lambda!189837)))))

(declare-fun b!4617194 () Bool)

(assert (=> b!4617194 (= e!2880044 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189837))))

(declare-fun b!4617195 () Bool)

(declare-fun res!1934703 () Bool)

(assert (=> b!4617195 (=> (not res!1934703) (not e!2880046))))

(assert (=> b!4617195 (= res!1934703 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) lambda!189838))))

(declare-fun bm!321985 () Bool)

(assert (=> bm!321985 (= call!321991 (forall!10754 (toList!4861 (ListMap!4166 Nil!51387)) (ite c!790478 lambda!189835 lambda!189837)))))

(declare-fun bm!321986 () Bool)

(assert (=> bm!321986 (= call!321989 (lemmaContainsAllItsOwnKeys!475 (ListMap!4166 Nil!51387)))))

(assert (=> b!4617196 (= e!2880045 (ListMap!4166 Nil!51387))))

(declare-fun lt!1773175 () Unit!110516)

(assert (=> b!4617196 (= lt!1773175 call!321989)))

(assert (=> b!4617196 call!321991))

(declare-fun lt!1773183 () Unit!110516)

(assert (=> b!4617196 (= lt!1773183 lt!1773175)))

(assert (=> b!4617196 call!321990))

(declare-fun lt!1773164 () Unit!110516)

(declare-fun Unit!110639 () Unit!110516)

(assert (=> b!4617196 (= lt!1773164 Unit!110639)))

(assert (= (and d!1454434 c!790478) b!4617196))

(assert (= (and d!1454434 (not c!790478)) b!4617193))

(assert (= (and b!4617193 res!1934702) b!4617194))

(assert (= (or b!4617196 b!4617193) bm!321986))

(assert (= (or b!4617196 b!4617193) bm!321985))

(assert (= (or b!4617196 b!4617193) bm!321984))

(assert (= (and d!1454434 res!1934704) b!4617195))

(assert (= (and b!4617195 res!1934703) b!4617192))

(declare-fun m!5452545 () Bool)

(assert (=> b!4617194 m!5452545))

(assert (=> bm!321986 m!5452379))

(declare-fun m!5452547 () Bool)

(assert (=> d!1454434 m!5452547))

(assert (=> d!1454434 m!5452445))

(declare-fun m!5452549 () Bool)

(assert (=> bm!321985 m!5452549))

(declare-fun m!5452551 () Bool)

(assert (=> b!4617193 m!5452551))

(declare-fun m!5452553 () Bool)

(assert (=> b!4617193 m!5452553))

(declare-fun m!5452555 () Bool)

(assert (=> b!4617193 m!5452555))

(declare-fun m!5452557 () Bool)

(assert (=> b!4617193 m!5452557))

(declare-fun m!5452559 () Bool)

(assert (=> b!4617193 m!5452559))

(declare-fun m!5452561 () Bool)

(assert (=> b!4617193 m!5452561))

(declare-fun m!5452563 () Bool)

(assert (=> b!4617193 m!5452563))

(assert (=> b!4617193 m!5452563))

(declare-fun m!5452565 () Bool)

(assert (=> b!4617193 m!5452565))

(declare-fun m!5452567 () Bool)

(assert (=> b!4617193 m!5452567))

(assert (=> b!4617193 m!5452553))

(declare-fun m!5452569 () Bool)

(assert (=> b!4617193 m!5452569))

(assert (=> b!4617193 m!5452545))

(declare-fun m!5452571 () Bool)

(assert (=> b!4617192 m!5452571))

(declare-fun m!5452573 () Bool)

(assert (=> bm!321984 m!5452573))

(declare-fun m!5452575 () Bool)

(assert (=> b!4617195 m!5452575))

(assert (=> b!4616885 d!1454434))

(declare-fun tp!1341638 () Bool)

(declare-fun b!4617201 () Bool)

(declare-fun e!2880049 () Bool)

(assert (=> b!4617201 (= e!2880049 (and tp_is_empty!29085 tp_is_empty!29087 tp!1341638))))

(assert (=> b!4616894 (= tp!1341630 e!2880049)))

(assert (= (and b!4616894 ((_ is Cons!51387) (t!358521 oldBucket!40))) b!4617201))

(declare-fun e!2880050 () Bool)

(declare-fun b!4617202 () Bool)

(declare-fun tp!1341639 () Bool)

(assert (=> b!4617202 (= e!2880050 (and tp_is_empty!29085 tp_is_empty!29087 tp!1341639))))

(assert (=> b!4616879 (= tp!1341631 e!2880050)))

(assert (= (and b!4616879 ((_ is Cons!51387) (t!358521 newBucket!224))) b!4617202))

(declare-fun b_lambda!170555 () Bool)

(assert (= b_lambda!170553 (or b!4616900 b_lambda!170555)))

(declare-fun bs!1019187 () Bool)

(declare-fun d!1454436 () Bool)

(assert (= bs!1019187 (and d!1454436 b!4616900)))

(assert (=> bs!1019187 (= (dynLambda!21467 lambda!189716 (h!57406 lt!1772703)) (noDuplicateKeys!1448 (_2!29414 (h!57406 lt!1772703))))))

(declare-fun m!5452577 () Bool)

(assert (=> bs!1019187 m!5452577))

(assert (=> b!4617131 d!1454436))

(check-sat (not d!1454386) (not b!4617167) (not d!1454434) (not bm!321973) (not d!1454360) (not b!4617187) (not b!4617105) (not d!1454388) tp_is_empty!29087 (not bm!321977) (not d!1454426) (not d!1454374) (not bm!321974) (not b!4617180) (not d!1454432) (not b!4617132) (not b!4617154) (not b!4617042) (not b!4617174) (not bm!321975) (not d!1454390) (not b!4617176) (not b_lambda!170555) (not bm!321958) (not b!4617096) (not b!4617094) (not b!4617101) (not b!4617106) (not b!4617097) (not b!4617190) (not b!4617161) (not bm!321981) (not b!4617172) (not d!1454428) (not b!4617201) (not bm!321984) (not b!4617188) (not d!1454376) (not d!1454340) (not b!4617168) (not b!4617108) (not b!4617182) (not bs!1019187) (not d!1454420) (not b!4617170) (not b!4617153) (not bm!321986) (not d!1454306) (not b!4617192) (not bm!321976) (not b!4617091) (not b!4617193) (not d!1454378) (not d!1454424) (not d!1454394) (not d!1454404) (not d!1454408) (not b!4617175) (not b!4617202) (not d!1454358) (not b!4617155) (not d!1454396) (not b!4617102) (not b!4617185) (not bm!321978) (not bm!321985) (not b!4617158) (not bm!321980) (not b!4617184) (not b!4617103) (not b!4617100) (not bm!321983) (not d!1454384) (not b!4616913) (not d!1454418) (not b!4617160) (not b!4617061) tp_is_empty!29085 (not b!4617150) (not b!4617169) (not b!4617125) (not b!4617147) (not d!1454392) (not b!4617181) (not bm!321959) (not b!4617148) (not b!4617186) (not b!4617152) (not b!4617194) (not bm!321960) (not b!4617041) (not b!4617126) (not b!4617093) (not d!1454398) (not b!4617092) (not d!1454406) (not b!4617157) (not b!4617179) (not b!4617183) (not bm!321979) (not d!1454400) (not b!4617195) (not b!4617177) (not b!4617039) (not d!1454414) (not b!4617040) (not b!4617171) (not d!1454352) (not b!4617099) (not bm!321972) (not bm!321982) (not d!1454430) (not d!1454416) (not b!4617189) (not d!1454412) (not b!4617143))
(check-sat)
